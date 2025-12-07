uint64_t DPFUSessionGetTypeID()
{
  result = __kDPFUSessionTypeID;
  if (!__kDPFUSessionTypeID)
  {
    pthread_once(&__DPFUSessionTypeInit, __DPFUSessionRegister);
    return __kDPFUSessionTypeID;
  }

  return result;
}

uint64_t __DPFUSessionRegister()
{
  result = _CFRuntimeRegisterClass();
  __kDPFUSessionTypeID = result;
  return result;
}

uint64_t DPFUSessionCreate(uint64_t a1, const void *a2, unsigned int a3)
{
  v3 = 0;
  if (a2 && a3 <= 2)
  {
    if (!__kDPFUSessionTypeID)
    {
      pthread_once(&__DPFUSessionTypeInit, __DPFUSessionRegister);
    }

    Instance = _CFRuntimeCreateInstance();
    v3 = Instance;
    if (Instance)
    {
      *(Instance + 48) = 0;
      *(Instance + 16) = 0u;
      *(Instance + 32) = 0u;
      *(Instance + 16) = a2;
      *(Instance + 24) = &__DPFUProtocolInfo + 24 * a3;
      *(Instance + 48) = 5;
      *(Instance + 53) = 1;
      CFRetain(a2);
    }
  }

  return v3;
}

uint64_t DPFUSessionSetProgressCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 32) = a2;
  *(result + 40) = a3;
  return result;
}

uint64_t __DPFUSessionWrite(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  if (!a4)
  {
    return 0;
  }

  for (i = 0; i < a4; i += v8)
  {
    if (a4 - i >= 0x1000)
    {
      v8 = 4096;
    }

    else
    {
      v8 = a4 - i;
    }

    v9 = IODPDeviceWriteDPCD();
    v10 = v9;
    if (v9 && (*(a1 + 48) & 0x80000000) == 0)
    {
      v11 = mach_error_string(v9);
      __DPFULog(0, "Error writing to device address 0x%08x offset 0x%08x: %s (0x%08x)", a2, i, v11, v10);
    }
  }

  return v10;
}

void __DPFULog(int a1, const char *a2, ...)
{
  va_start(va, a2);
  if (isatty(2))
  {
    fputs("dpfu: ", __stderrp);
    vfprintf(__stderrp, a2, va);
    fputc(10, __stderrp);
  }

  else
  {
    vsyslog(a1, a2, va);
  }
}

const char *DPFUGetDeviceModeString(int a1)
{
  if (a1 > 119)
  {
    if (a1 != 120)
    {
      if (a1 == 127)
      {
        return "32-KByte Update Mode";
      }

      return "Unknown Mode";
    }

    return "Eight-Byte Update Mode";
  }

  else
  {
    if (a1)
    {
      if (a1 == 113)
      {
        return "Single-Byte Update Mode";
      }

      return "Unknown Mode";
    }

    return "Normal Mode";
  }
}

uint64_t DPFUSessionLeaveUpdateMode(uint64_t a1)
{
  if (*(a1 + 54))
  {
    return 0;
  }

  else
  {
    return __DPFUDeviceSetProperty(*(a1 + 16));
  }
}

uint64_t dpfuUpdateDeviceWithContentsOfFile(const char *a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v12 = IODPDeviceCreate();
  v13 = DPFUSessionCreate(kCFAllocatorDefault, v12, a2);
  CFRelease(v12);
  if (v13)
  {
    *(v13 + 32) = a5;
    *(v13 + 40) = a6;
    updated = DPFUSessionEnterUpdateMode(v13);
    if (updated)
    {
      v15 = updated;
    }

    else
    {
      v15 = DPFUSessionInstallFilePayload(v13, a1, a3);
      if (a4 && (*(v13 + 54) & 1) == 0)
      {
        dpfuUpdateDeviceWithContentsOfFile_cold_1(v13);
      }
    }

    CFRelease(v13);
  }

  else
  {
    v15 = 3758097136;
    __DPFULog(0, "Can't create device update session");
  }

  return v15;
}

void __DPFUSessionUpdateProgress(uint64_t a1, uint64_t a2, int a3)
{
  if ((a2 & 0x3FF) == 0 || a3)
  {
    if (*(a1 + 48) >= 5)
    {
      __DPFULog(5, "  %u bytes written", a2);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(a1 + 40);

      v5(a2, v6);
    }
  }
}

uint64_t __DPFUSessionRequestMode(uint64_t a1, int a2)
{
  v5 = a2 | 0x80;
  if (*(a1 + 48) >= 7)
  {
    if (a2 > 119)
    {
      if (a2 == 120)
      {
        v3 = "Eight-Byte Update Mode";
        goto LABEL_12;
      }

      if (a2 == 127)
      {
        v3 = "32-KByte Update Mode";
        goto LABEL_12;
      }
    }

    else
    {
      if (!a2)
      {
        v3 = "Normal Mode";
        goto LABEL_12;
      }

      if (a2 == 113)
      {
        v3 = "Single-Byte Update Mode";
LABEL_12:
        __DPFULog(7, "Requesting Device Mode: %s (0x%02x)", v3, a2 | 0x80);
        return __DPFUSessionWrite(a1, 1293, &v5, 1u);
      }
    }

    v3 = "Unknown Mode";
    goto LABEL_12;
  }

  return __DPFUSessionWrite(a1, 1293, &v5, 1u);
}

const char *DPFUGetDeviceStatusString(int a1)
{
  if (a1 > 3)
  {
    if (a1 > 126)
    {
      if (a1 == 127)
      {
        return "Error";
      }

      if (a1 == 255)
      {
        return "None";
      }
    }

    else
    {
      if (a1 == 4)
      {
        return "Validated";
      }

      if (a1 == 5)
      {
        return "Installed";
      }
    }

    return "Unknown";
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return "Idle";
    }

    if (a1 == 1)
    {
      return "Busy";
    }

    return "Unknown";
  }

  if (a1 == 2)
  {
    return "Ready";
  }

  else
  {
    return "Data End";
  }
}

void __DPFUSessionFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t __DPFUSessionRead(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DPCD = IODPDeviceReadDPCD();
  v5 = DPCD;
  if (DPCD && (*(a1 + 48) & 0x80000000) == 0)
  {
    v6 = mach_error_string(DPCD);
    __DPFULog(0, "Error reading from device: %s (0x%08x)", v6, v5);
  }

  return v5;
}

uint64_t __DPFUSessionSendHostCommand(uint64_t a1, int a2)
{
  v5 = a2 | 0x80;
  if (*(a1 + 48) >= 7)
  {
    if ((a2 - 1) > 5)
    {
      v3 = "Unknown";
    }

    else
    {
      v3 = off_4070[a2 - 1];
    }

    __DPFULog(7, "Sending Host Command: %s (0x%02x)", v3, a2 | 0x80);
  }

  return __DPFUSessionWrite(a1, 1294, &v5, 1u);
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{

  return __DPFUSessionPollStatus(v15, &a15, 0x3E8u, 0x3E8u);
}

double DPFUSessionGetDeviceInfo(uint64_t a1, uint64_t a2)
{
  if (!IODPDeviceReadDPCD())
  {
    result = v4;
    *a2 = v4;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t DPFUSessionEnterUpdateMode(uint64_t a1)
{
  result = __DPFUDeviceSetProperty(*(a1 + 16));
  if (!result)
  {
    result = __DPFUDeviceSetProperty(*(a1 + 16));
    if (!result)
    {
      result = __DPFUSessionWrite(a1, 768, &kAppleOUI, 3u);
      if (!result)
      {
        result = __DPFUSessionGetMode(a1, (a1 + 52));
        if (!result)
        {
          OUTLINED_FUNCTION_3();
          if (v3 == v4)
          {
            v5 = *(a1 + 52);
            if (*(a1 + 52))
            {
              switch(v5)
              {
                case '\x7F':
                  v6 = "32-KByte Update Mode";
                  break;
                case 'x':
                  v6 = "Eight-Byte Update Mode";
                  break;
                case 'q':
                  v6 = "Single-Byte Update Mode";
                  break;
                default:
                  v6 = "Unknown Mode";
                  break;
              }
            }

            else
            {
              v6 = "Normal Mode";
            }

            __DPFULog(6, "Initial Device Mode: %s (0x%02x)", v6, v5);
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t __DPFUDeviceSetProperty(uint64_t a1)
{
  v1 = 3758097088;
  if (!a1)
  {
    return 3758097101;
  }

  if (!IODPDeviceGetAVDevice())
  {
    return v1;
  }

  return _IOAVDeviceSetProperty();
}

uint64_t __DPFUSessionGetMode(uint64_t a1, unsigned __int8 *a2)
{
  v8 = 0;
  if (!a2)
  {
    return 3758097090;
  }

  result = __DPFUSessionRead(a1, 1293, &v8);
  if (!result)
  {
    if (*(a1 + 48) >= 7)
    {
      v5 = "Requesting ";
      if ((v8 & 0x80u) == 0)
      {
        v5 = "";
      }

      v6 = v8 & 0x7F;
      if ((v8 & 0x7F) != 0)
      {
        switch(v6)
        {
          case '\x7F':
            v7 = "32-KByte Update Mode";
            break;
          case 'x':
            v7 = "Eight-Byte Update Mode";
            break;
          case 'q':
            v7 = "Single-Byte Update Mode";
            break;
          default:
            v7 = "Unknown Mode";
            break;
        }
      }

      else
      {
        v7 = "Normal Mode";
      }

      __DPFULog(7, "Current Device Mode: %s%s (0x%02x)", v5, v7, v8);
    }

    result = 0;
    *a2 = v8;
  }

  return result;
}

uint64_t DPFUSessionInstallFilePayload(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 24);
  if ((*(a1 + 48) & 0x80000000) == 0)
  {
    __DPFULog(0, "DPFUSessionInstallFilePayload( %s)", a2);
  }

  v7 = 3758097136;
  v8 = malloc_type_calloc(1uLL, *(v6 + 8), 0xD951F906uLL);
  if (!v8)
  {
    return 3758097085;
  }

  v9 = v8;
  OUTLINED_FUNCTION_2();
  if (v10 == v11)
  {
    __DPFULog(5, "Opening package file: %s", a2);
  }

  v12 = fopen(a2, "rb");
  v13 = *(a1 + 48);
  if (!v12)
  {
    if (v13 >= 5)
    {
      __DPFULog(5, "  Error opening file: %s", a2);
    }

    goto LABEL_27;
  }

  v14 = v12;
  if (v13 >= 5)
  {
    __DPFULog(5, "  Successfully opened %s", a2);
  }

  v15 = __DPFUSessionPrepareForDownload(a1);
  if (v15)
  {
LABEL_31:
    v7 = v15;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_2();
  if (v10 == v11)
  {
    __DPFULog(5, "Writing Data from File...");
  }

  v16 = 0;
  if (feof(v14))
  {
LABEL_22:
    v15 = __DPFUSessionFinishDownload(a1, v16);
    if (!v15)
    {
      v15 = __DPFUSessionInstallUpdate(a1);
      if (!v15)
      {
        v7 = __DPFUSessionFinishUpdate(a1, v3);
        if (v7)
        {
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    goto LABEL_31;
  }

  while (1)
  {
    v17 = fread(v9, 1uLL, *(v6 + 8), v14);
    if (v17 != *(v6 + 8) && !feof(v14) && *(a1 + 48) >= 7)
    {
      __DPFULog(7, "Warning: attempted to read %u bytes, fread returned %lu", *(v6 + 8), v17);
    }

    if (!v17)
    {
      goto LABEL_18;
    }

    v18 = __DPFUSessionDownloadData(a1, v9, v17);
    if (v18)
    {
      break;
    }

    v16 = (v16 + v17);
    __DPFUSessionUpdateProgress(a1, v16, 0);
LABEL_18:
    if (feof(v14))
    {
      goto LABEL_22;
    }
  }

  v7 = v18;
  OUTLINED_FUNCTION_2();
  if (v10 == v11)
  {
    __DPFULog(5, "  Error writing data after %u successful bytes", v16);
  }

LABEL_25:
  __DPFUSessionRequestMode(a1, 0);
LABEL_26:
  fclose(v14);
LABEL_27:
  free(v9);
  return v7;
}

uint64_t __DPFUSessionPrepareForDownload(uint64_t a1)
{
  v2 = *(a1 + 24);
  v48 = 0;
  Status = __DPFUSessionGetStatus(a1, &v48);
  if (Status)
  {
    return Status;
  }

  v10 = v48;
  if (*(a1 + 48) >= 6)
  {
    v11 = DPFUGetDeviceStatusString(v48);
    __DPFULog(6, "Initial Device Status: %s (0x%02x)", v11, v10);
  }

  v12 = *(a1 + 52);
  v13 = *v2;
  if (v12 != v13 || v10 != 2)
  {
    v47 = 0;
    OUTLINED_FUNCTION_0();
    if (v16 == v17)
    {
      if (v15)
      {
        switch(v15)
        {
          case '\x7F':
            v18 = "32-KByte Update Mode";
            break;
          case 'x':
            v18 = "Eight-Byte Update Mode";
            break;
          case 'q':
            v18 = "Single-Byte Update Mode";
            break;
          default:
            v18 = "Unknown Mode";
            break;
        }
      }

      else
      {
        v18 = "Normal Mode";
      }

      __DPFULog(5, "Requesting %s...", v18);
      v15 = *v2;
    }

    Status = __DPFUSessionRequestMode(a1, v15);
    if (!Status)
    {
      while (1)
      {
        Status = __DPFUSessionGetMode(a1, &v47);
        if (Status)
        {
          break;
        }

        usleep(0x3E8u);
        if ((v47 & 0x80) == 0)
        {
          OUTLINED_FUNCTION_3();
          if (v16 == v17)
          {
            if (v19)
            {
              switch(v19)
              {
                case '\x7F':
                  v20 = "32-KByte Update Mode";
                  break;
                case 'x':
                  v20 = "Eight-Byte Update Mode";
                  break;
                case 'q':
                  v20 = "Single-Byte Update Mode";
                  break;
                default:
                  v20 = "Unknown Mode";
                  break;
              }
            }

            else
            {
              v20 = "Normal Mode";
            }

            __DPFULog(6, "  New Mode: %s (0x%02x)", v20, v19);
            v19 = v47;
          }

          v21 = v19;
          if (!v19)
          {
            OUTLINED_FUNCTION_0();
            if (v16 == v17)
            {
              v22 = *v2;
              if (*v2)
              {
                switch(v22)
                {
                  case '\x7F':
                    v23 = "32-KByte Update Mode";
                    break;
                  case 'x':
                    v23 = "Eight-Byte Update Mode";
                    break;
                  case 'q':
                    v23 = "Single-Byte Update Mode";
                    break;
                  default:
                    v23 = "Unknown Mode";
                    break;
                }
              }

              else
              {
                v23 = "Normal Mode";
              }

              __DPFULog(5, "Requesting %s Again...", v23);
            }

            Status = __DPFUSessionRequestMode(a1, *v2);
            if (!Status)
            {
              while (1)
              {
                Status = __DPFUSessionGetMode(a1, &v47);
                if (Status)
                {
                  break;
                }

                Status = usleep(0x3E8u);
                v21 = v47;
                if ((v47 & 0x80) == 0)
                {
                  if (*(a1 + 48) >= 6)
                  {
                    if (v47)
                    {
                      switch(v47)
                      {
                        case '\x7F':
                          v25 = "32-KByte Update Mode";
                          break;
                        case 'x':
                          v25 = "Eight-Byte Update Mode";
                          break;
                        case 'q':
                          v25 = "Single-Byte Update Mode";
                          break;
                        default:
                          v25 = "Unknown Mode";
                          break;
                      }
                    }

                    else
                    {
                      v25 = "Normal Mode";
                    }

                    __DPFULog(6, "  New Mode: %s (0x%02x)", v25, v47);
                    v21 = v47;
                  }

                  goto LABEL_65;
                }
              }
            }

            return Status;
          }

LABEL_65:
          if (v21 == *v2)
          {
            goto LABEL_66;
          }

          v28 = 3758097112;
          OUTLINED_FUNCTION_0();
          if (v16 == v17)
          {
            if (v37)
            {
              switch(v37)
              {
                case '\x7F':
                  v38 = "32-KByte Update Mode";
                  break;
                case 'x':
                  v38 = "Eight-Byte Update Mode";
                  break;
                case 'q':
                  v38 = "Single-Byte Update Mode";
                  break;
                default:
                  v38 = "Unknown Mode";
                  break;
              }
            }

            else
            {
              v38 = "Normal Mode";
            }

            __DPFULog(5, "Unable to Enter %s...", v38);
          }

          return v28;
        }
      }
    }

    return Status;
  }

  if (*(a1 + 48) >= 6)
  {
    if (*(a1 + 52))
    {
      switch(v12)
      {
        case '\x7F':
          v24 = "32-KByte Update Mode";
          break;
        case 'x':
          v24 = "Eight-Byte Update Mode";
          break;
        case 'q':
          v24 = "Single-Byte Update Mode";
          break;
        default:
          v24 = "Unknown Mode";
          break;
      }
    }

    else
    {
      v24 = "Normal Mode";
    }

    __DPFULog(6, "Device already in %s", v24);
  }

LABEL_66:
  Status = OUTLINED_FUNCTION_4(Status, v13, v4, v5, v6, v7, v8, v9, v39, v41, v43, *v45, *&v45[4], v47, v48);
  if (Status)
  {
    return Status;
  }

  OUTLINED_FUNCTION_3();
  if (v16 == v17)
  {
    v26 = v48;
    v27 = DPFUGetDeviceStatusString(v48);
    __DPFULog(6, "  Current Status in this Mode: %s (0x%02x)", v27, v26);
  }

  v28 = 3758097112;
  if (v48 == 2)
  {
    OUTLINED_FUNCTION_0();
    if (v16 == v17)
    {
      __DPFULog(5, "Commanding Download...");
    }

    Status = __DPFUSessionSendHostCommand(a1, 1);
    if (!Status)
    {
      Status = OUTLINED_FUNCTION_4(Status, v29, v30, v31, v32, v33, v34, v35, v40, v42, v44, *v46, *&v46[4], v47, v48);
      if (!Status)
      {
        if (v48 == 2)
        {
          OUTLINED_FUNCTION_0();
          if (v16 == v17)
          {
            __DPFULog(5, "  Download Ready");
          }

          return 0;
        }

        return v28;
      }
    }

    return Status;
  }

  return v28;
}

uint64_t __DPFUSessionDownloadData(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    return 3758097090;
  }

  result = __DPFUSessionWrite(a1, *(*(a1 + 24) + 4), a2, a3);
  if (!result)
  {
    result = __DPFUSessionSendHostCommand(a1, 2);
    if (!result)
    {
      v5 = OUTLINED_FUNCTION_1();
      result = __DPFUSessionPollStatus(v5, v6, v7, 0xAu);
      if (!result)
      {
        return 3758097084;
      }
    }
  }

  return result;
}

uint64_t __DPFUSessionFinishDownload(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v9 = 0;
  __DPFUSessionUpdateProgress(a1, a2, 1);
  result = __DPFUSessionGetStatus(a1, &v9);
  if (!result)
  {
    v5 = v9;
    if (*(a1 + 48) >= 6)
    {
      v6 = DPFUGetDeviceStatusString(v9);
      __DPFULog(6, "Final Status: %s (0x%02x)", v6, v5);
    }

    if (v5 == 3)
    {
      OUTLINED_FUNCTION_2();
      if (v7 == v8)
      {
        __DPFULog(5, "Successfully wrote %u total bytes", v2);
      }

      return 0;
    }

    else
    {
      return 3758097098;
    }
  }

  return result;
}

uint64_t __DPFUSessionInstallUpdate(uint64_t a1)
{
  if (*(a1 + 48) >= 5)
  {
    __DPFULog(5, "Commanding Validate...");
  }

  v2 = __DPFUSessionSendHostCommand(a1, 4);
  if (v2)
  {
    return v2;
  }

  v3 = OUTLINED_FUNCTION_1();
  v2 = __DPFUSessionPollStatus(v3, v4, v5, 0x186A0u);
  if (v2)
  {
    return v2;
  }

  else
  {
    return 3758097105;
  }
}

uint64_t __DPFUSessionFinishUpdate(uint64_t a1, int a2)
{
  v10 = 0;
  if (*(a1 + 53) != 1)
  {
    return __DPFUDeviceSetProperty(*(a1 + 16));
  }

  OUTLINED_FUNCTION_0();
  if (v7 == v8)
  {
    __DPFULog(5, "Commanding Restart...");
  }

  result = __DPFUSessionSendHostCommand(a1, 6);
  if (!result)
  {
    if (*(a1 + 54))
    {
      return 0;
    }

    else
    {
      while (1)
      {
        result = __DPFUSessionGetMode(a1, &v10);
        if (result)
        {
          break;
        }

        OUTLINED_FUNCTION_3();
        if (v7 == v8)
        {
          if (v10)
          {
            if (v10 == 113)
            {
              v5 = "Single-Byte Update Mode";
            }

            else
            {
              v5 = "Unknown Mode";
            }

            if (v10 == 120)
            {
              v5 = "Eight-Byte Update Mode";
            }

            if (v10 == 127)
            {
              v5 = "32-KByte Update Mode";
            }
          }

          else
          {
            v5 = "Normal Mode";
          }

          __DPFULog(6, "Device Mode: %s (0x%02x)", v5, v10);
        }

        v6 = v10;
        if (v10)
        {
          usleep(0x3E8u);
          v6 = v10;
        }

        if (v6 == a2)
        {
          OUTLINED_FUNCTION_0();
          if (v7 == v8)
          {
            if (a2)
            {
              switch(a2)
              {
                case '\x7F':
                  v9 = "32-KByte Update Mode";
                  break;
                case 'x':
                  v9 = "Eight-Byte Update Mode";
                  break;
                case 'q':
                  v9 = "Single-Byte Update Mode";
                  break;
                default:
                  v9 = "Unknown Mode";
                  break;
              }
            }

            else
            {
              v9 = "Normal Mode";
            }

            __DPFULog(5, "  Restarted in mode: %s (0x%02x)", v9, a2);
          }

          return __DPFUDeviceSetProperty(*(a1 + 16));
        }
      }
    }
  }

  return result;
}

uint64_t DPFUSessionInstallMemoryPayload(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v8 = *(a1 + 24);
  v9 = __DPFUSessionPrepareForDownload(a1);
  if (v9)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_0();
  if (v10 == v11)
  {
    __DPFULog(5, "Writing Data from Memory...");
  }

  if (a3)
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = a3 - v12 >= *(v8 + 8) ? *(v8 + 8) : a3 - v12;
      v15 = __DPFUSessionDownloadData(a1, a2 + v12, v14);
      if (v15)
      {
        break;
      }

      __DPFUSessionUpdateProgress(a1, v14 + v13, 0);
      v13 += v14;
      v12 = v13;
      if (v13 >= a3)
      {
        goto LABEL_11;
      }
    }

    v16 = v15;
    OUTLINED_FUNCTION_0();
    if (v10 == v11)
    {
      __DPFULog(5, "  Error writing data after %u successful bytes", v13);
    }

    goto LABEL_14;
  }

  v12 = 0;
LABEL_11:
  v9 = __DPFUSessionFinishDownload(a1, v12);
  if (v9 || (v9 = __DPFUSessionInstallUpdate(a1), v9))
  {
LABEL_19:
    v16 = v9;
    goto LABEL_14;
  }

  v16 = __DPFUSessionFinishUpdate(a1, a4);
  if (v16)
  {
LABEL_14:
    __DPFUSessionRequestMode(a1, 0);
  }

  return v16;
}

uint64_t __DPFUSessionGetStatus(uint64_t a1, char *a2)
{
  deadline = 0;
  v8 = 0;
  result = __DPFUClockIntervalToDeadline(&deadline);
  if (!result)
  {
    result = __DPFUSessionRead(a1, 1294, &v8);
    if (!result)
    {
      v5 = v8;
      while (1)
      {
        v6 = v5;
        mach_wait_until(deadline);
        result = __DPFUClockIntervalToDeadline(&deadline);
        if (result)
        {
          break;
        }

        result = __DPFUSessionRead(a1, 1294, &v8);
        if (result)
        {
          break;
        }

        v5 = v8;
        if (v8 == v6)
        {
          result = 0;
          v7 = v6;
          if (v6 < 0)
          {
            v7 = -1;
          }

          *a2 = v7;
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t __DPFUSessionPollStatus(uint64_t a1, _BYTE *a2, useconds_t a3, useconds_t a4)
{
  if (!a2)
  {
    return 3758097090;
  }

  v12 = 0;
  for (result = __DPFUSessionGetStatus(a1, &v12); !result; result = __DPFUSessionGetStatus(a1, &v12))
  {
    v9 = v12;
    if (*(a1 + 48) >= 6)
    {
      v10 = DPFUGetDeviceStatusString(v12);
      __DPFULog(6, "  Device Status: %s (0x%02x)", v10, v9);
    }

    v11 = a4;
    if (v9 == 1 || a3 && (v11 = a3, v9 == 255))
    {
      usleep(v11);
    }

    else if (v9 != 255)
    {
      result = 0;
      *a2 = v9;
      return result;
    }
  }

  return result;
}

uint64_t __DPFUClockIntervalToDeadline(void *a1)
{
  info = 0;
  v2 = mach_timebase_info(&info);
  if (!v2)
  {
    v3 = 100000 * info.denom / info.numer;
    *a1 = mach_absolute_time() + v3;
  }

  return v2;
}