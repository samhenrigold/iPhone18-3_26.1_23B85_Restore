BOOL sub_100717D04()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  v3 = v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) != 0;
  CFRelease(v1);
  return v3;
}

void sub_100717D78(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFBooleanGetTypeID() && CFBooleanGetValue(v2))
    {
      v4 = 4;
    }

    else
    {
      v4 = sub_100714F54();
    }

    dword_1026592D0 = v4;

    CFRelease(v2);
  }

  else
  {
    dword_1026592D0 = sub_100714F54();
  }
}

void sub_100717E0C(id a1)
{
  v1 = _CFCopyServerVersionDictionary();
  if (v1 || (v1 = _CFCopySystemVersionDictionary()) != 0)
  {
    v2 = v1;
    sub_100005548(v19, v1);
    CFRelease(v2);
    memset(&v18, 0, sizeof(v18));
    memset(&v17, 0, sizeof(v17));
    memset(&__p, 0, sizeof(__p));
    if (!sub_100005050(v19, _kCFSystemVersionProductNameKey, &v17))
    {
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        v17.__r_.__value_.__l.__size_ = 6;
        v3 = v17.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v17.__r_.__value_.__s + 23) = 6;
        v3 = &v17;
      }

      strcpy(v3, "<name>");
    }

    if (!sub_100005050(v19, _kCFSystemVersionProductVersionKey, &v18))
    {
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        v18.__r_.__value_.__l.__size_ = 9;
        v4 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v18.__r_.__value_.__s + 23) = 9;
        v4 = &v18;
      }

      strcpy(v4, "<version>");
    }

    if (!sub_100005050(v19, _kCFSystemVersionBuildVersionKey, &__p))
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        __p.__r_.__value_.__l.__size_ = 7;
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&__p.__r_.__value_.__s + 23) = 7;
        p_p = &__p;
      }

      strcpy(p_p, "<build>");
    }

    sub_1003CCADC(&v17.__r_.__value_.__l.__data_, &v18.__r_.__value_.__l.__data_, &v14);
    v6 = std::string::append(&v14, "/", 1uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &__p;
    }

    else
    {
      v8 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v15, v8, size);
    v11 = v10->__r_.__value_.__r.__words[0];
    v20[0] = v10->__r_.__value_.__l.__size_;
    *(v20 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
    v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (byte_10265933F < 0)
    {
      operator delete(xmmword_102659328);
    }

    *&xmmword_102659328 = v11;
    *(&xmmword_102659328 + 1) = v20[0];
    *(&xmmword_102659328 + 15) = *(v20 + 7);
    byte_10265933F = v12;
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    sub_100005DA4();
  }

  else
  {
    if (byte_10265933F < 0)
    {
      *(&xmmword_102659328 + 1) = 6;
      v13 = xmmword_102659328;
    }

    else
    {
      v13 = &xmmword_102659328;
      byte_10265933F = 6;
    }

    strcpy(v13, "<null>");
  }
}

void sub_100718118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (*(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  sub_100005DA4();
  _Unwind_Resume(a1);
}

double sub_1007181A0(int a1)
{
  sub_1007181FC(&v2, "hw.model");
  if (byte_102659357 < 0)
  {
    operator delete(xmmword_102659340);
  }

  result = *&v2;
  xmmword_102659340 = v2;
  unk_102659350 = v3;
  return result;
}

uint64_t *sub_1007181FC@<X0>(uint64_t *__return_ptr a1@<X8>, char *a2@<X1>)
{
  v5 = 128;
  if (sysctlbyname(a2, v6, &v5, 0, 0))
  {
    v3 = "";
  }

  else
  {
    v3 = v6;
  }

  return sub_10000EC00(a1, v3);
}

void sub_10071828C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(byte_1026592F0, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    sub_10191BD38();
    a1 = v3;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10071837C;
  block[3] = &unk_102449A78;
  block[4] = a1;
  if (qword_102659100 != -1)
  {
    dispatch_once(&qword_102659100, block);
  }

  if (byte_10265936F < 0)
  {
    sub_100007244(a2, xmmword_102659358, *(&xmmword_102659358 + 1));
  }

  else
  {
    *a2 = xmmword_102659358;
    *(a2 + 16) = unk_102659368;
  }
}

double sub_10071837C()
{
  sub_1007181FC(&v1, "hw.machine");
  if (byte_10265936F < 0)
  {
    operator delete(xmmword_102659358);
  }

  result = *&v1;
  xmmword_102659358 = v1;
  unk_102659368 = v2;
  return result;
}

uint64_t sub_1007183D8(uint64_t a1, uint64_t a2)
{
  if (qword_102659108 != -1)
  {
    sub_10191BD9C();
  }

  return dword_1025D80B4;
}

void sub_100718410(id a1)
{
  v1 = MGCopyAnswer();
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  if (v3 == CFStringGetTypeID())
  {
    if (CFStringCompare(v2, @"Beta", 0) == kCFCompareEqualTo)
    {
      v4 = 0;
      goto LABEL_18;
    }

    if (CFStringCompare(v2, @"Carrier", 0) == kCFCompareEqualTo)
    {
      v4 = 1;
      goto LABEL_18;
    }

    if (CFStringCompare(v2, @"Internal", 0) == kCFCompareEqualTo)
    {
      v4 = 2;
      goto LABEL_18;
    }

    if (CFStringCompare(v2, @"Desense", 0) == kCFCompareEqualTo)
    {
      v4 = 3;
      goto LABEL_18;
    }

    if (CFStringCompare(v2, @"Lite Internal", 0) == kCFCompareEqualTo)
    {
      v4 = 4;
      goto LABEL_18;
    }

    if (CFStringCompare(v2, @"Vendor", 0) == kCFCompareEqualTo)
    {
      v4 = 5;
      goto LABEL_18;
    }

    if (CFStringCompare(v2, @"NonUI", 0) == kCFCompareEqualTo)
    {
      v4 = 6;
LABEL_18:
      dword_1025D80B4 = v4;
    }
  }

  CFRelease(v2);
}

void sub_10071855C(id a1)
{
  sub_1005658E8(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v2 = sub_100053C00(p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v2)
  {
    v3 = CFGetTypeID(v2);
    if (v3 == CFStringGetTypeID())
    {
      v4 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v2, kCFURLPOSIXPathStyle, 0);
      if (v4)
      {
        v5 = v4;
        v6 = CFBundleCreate(kCFAllocatorDefault, v4);
        if (v6)
        {
          v7 = v6;
          ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v6, kCFBundleVersionKey);
          if (ValueForInfoDictionaryKey)
          {
            v9 = ValueForInfoDictionaryKey;
            v10 = CFGetTypeID(ValueForInfoDictionaryKey);
            if (v10 == CFStringGetTypeID())
            {
              sub_1000238CC(v9, &__p);
              if (byte_102659370[23] < 0)
              {
                operator delete(*byte_102659370);
              }

              *byte_102659370 = __p;
            }
          }

          CFRelease(v2);
          v2 = v5;
        }

        else
        {
          v7 = v5;
        }

        CFRelease(v2);
        v2 = v7;
      }
    }

    CFRelease(v2);
  }
}

void sub_1007186AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007186C8(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(byte_102659308, memory_order_acquire) & 1) == 0)
  {
    sub_10191BE28();
  }

  if (qword_102659118 != -1)
  {
    sub_10191BE8C();
  }

  if (byte_1026593B7 < 0)
  {
    v2 = xmmword_1026593A0;

    sub_100007244(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1026593A0;
    *(a1 + 16) = unk_1026593B0;
  }
}

void sub_100718768(id a1)
{
  v1 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IOPlatformSerialNumber", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v5 = CFProperty;
      sub_1000238CC(CFProperty, &v6);
      if (byte_1026593B7 < 0)
      {
        operator delete(xmmword_1026593A0);
      }

      xmmword_1026593A0 = v6;
      unk_1026593B0 = v7;
      CFRelease(v5);
    }

    IOObjectRelease(v3);
  }
}

void sub_100718824(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(byte_102659120, memory_order_acquire) & 1) == 0)
  {
    sub_10191BEA0();
  }

  if (qword_102659128 != -1)
  {
    sub_10191BEFC();
  }

  if (byte_1025D80CF < 0)
  {
    v2 = *aNotavailable;
    v3 = *&aNotavailable[8];

    sub_100007244(a1, v2, v3);
  }

  else
  {
    *a1 = *aNotavailable;
    *(a1 + 16) = unk_1025D80C8;
  }
}

void sub_1007188C4(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFStringGetTypeID())
    {
      CFStringGetCString(v2, buffer, 1024, 0x8000100u);
      sub_10000EC00(&v4, buffer);
      if (byte_1025D80CF < 0)
      {
        operator delete(*aNotavailable);
      }

      *aNotavailable = v4;
      unk_1025D80C8 = v5;
    }

    CFRelease(v2);
  }
}

void sub_1007189A4(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(byte_102659310, memory_order_acquire) & 1) == 0)
  {
    sub_10191BF10();
  }

  if (qword_102659130 != -1)
  {
    sub_10191BF74();
  }

  if (byte_1026593CF < 0)
  {
    v2 = xmmword_1026593B8;

    sub_100007244(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1026593B8;
    *(a1 + 16) = unk_1026593C8;
  }
}

void sub_100718A44(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFStringGetTypeID())
    {
      sub_1000238CC(v2, &v4);
      if (byte_1026593CF < 0)
      {
        operator delete(xmmword_1026593B8);
      }

      xmmword_1026593B8 = v4;
      unk_1026593C8 = v5;
    }

    CFRelease(v2);
  }
}

void sub_100718AD8(id a1)
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  v1 = 7381266;
  switch(dword_1026592D0)
  {
    case 1:
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
      v1 = 33562886;
      break;
    case 2:
    case 5:
    case 19:
    case 20:
    case 52:
    case 53:
    case 60:
    case 61:
    case 158:
    case 159:
    case 160:
    case 162:
    case 163:
    case 164:
    case 165:
    case 192:
    case 202:
    case 203:
    case 204:
      v1 = 532482;
      break;
    case 3:
    case 43:
    case 148:
      break;
    case 4:
      v1 = 8454;
      break;
    case 6:
    case 166:
    case 167:
      goto LABEL_32;
    case 7:
    case 10:
    case 13:
    case 14:
    case 29:
    case 31:
    case 33:
    case 35:
    case 44:
    case 46:
    case 48:
    case 62:
    case 64:
    case 76:
    case 134:
    case 136:
    case 144:
    case 146:
    case 154:
    case 156:
    case 193:
    case 195:
    case 205:
    case 207:
    case 209:
    case 211:
    case 213:
    case 215:
    case 217:
    case 219:
    case 220:
    case 221:
    case 223:
    case 225:
    case 227:
    case 229:
    case 231:
    case 241:
    case 242:
    case 244:
    case 246:
    case 248:
    case 250:
    case 252:
    case 254:
    case 257:
      v1 = 7905558;
      break;
    case 8:
    case 11:
    case 12:
    case 15:
    case 16:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 54:
    case 55:
    case 56:
      v1 = 8236319;
      break;
    case 9:
    case 17:
    case 18:
      v1 = 16624927;
      break;
    case 21:
      v1 = 4202498;
      break;
    case 30:
    case 32:
    case 34:
    case 36:
    case 45:
    case 47:
    case 49:
    case 63:
    case 65:
    case 77:
    case 135:
    case 137:
    case 145:
    case 155:
    case 157:
    case 194:
    case 196:
    case 197:
    case 210:
    case 212:
    case 214:
    case 216:
    case 218:
    case 222:
    case 224:
    case 226:
    case 228:
    case 230:
    case 232:
    case 255:
    case 256:
    case 258:
      v1 = 16624923;
      break;
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
      v1 = 37789954;
      break;
    case 50:
    case 51:
    case 74:
    case 75:
    case 81:
    case 82:
    case 83:
    case 84:
    case 89:
    case 90:
    case 95:
    case 96:
      v1 = 37789962;
      break;
    case 57:
    case 58:
    case 59:
      v1 = 8234271;
      break;
    case 66:
    case 67:
    case 85:
    case 86:
    case 87:
    case 88:
    case 91:
    case 92:
    case 93:
    case 94:
    case 97:
    case 98:
      v1 = 38120715;
      break;
    case 68:
    case 69:
    case 70:
    case 78:
    case 79:
    case 80:
    case 139:
    case 141:
    case 142:
    case 143:
      v1 = 41788703;
      break;
    case 71:
    case 72:
    case 73:
      v1 = 41790751;
      break;
    case 99:
    case 100:
    case 103:
    case 104:
    case 107:
    case 108:
    case 111:
    case 112:
    case 116:
    case 117:
    case 120:
    case 121:
    case 126:
    case 127:
    case 130:
    case 131:
      v1 = 38314250;
      break;
    case 101:
    case 102:
    case 105:
    case 106:
    case 109:
    case 110:
    case 113:
    case 114:
    case 115:
    case 118:
    case 119:
    case 122:
    case 123:
    case 124:
    case 125:
    case 128:
    case 129:
    case 132:
    case 133:
    case 280:
      v1 = 38645003;
      break;
    case 149:
      v1 = 4235530;
      break;
    case 150:
    case 151:
    case 152:
    case 153:
      v1 = 41226;
      break;
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
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
    case 233:
    case 234:
    case 235:
    case 236:
    case 237:
    case 238:
    case 239:
    case 240:
      v1 = 108899615;
      break;
    case 206:
    case 208:
    case 243:
    case 245:
    case 247:
    case 249:
    case 251:
    case 253:
      v1 = 83733787;
      break;
    default:
      if (qword_1025D4870 != -1)
      {
        sub_10191BF9C();
      }

      v2 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
      {
        if (qword_1026592D8 != -1)
        {
          sub_10191B9BC();
        }

        v4[0] = 67174657;
        v4[1] = dword_1026592D0;
        _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_FAULT, "unknown hardware type %{private}d", v4, 8u);
      }

      v3 = sub_10000A100(121, 0);
      v1 = 0;
      if (v3)
      {
        sub_10191BFB0();
LABEL_32:
        v1 = 0;
      }

      break;
  }

  dword_102659138 = v1;
}

uint64_t sub_100718D20(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000733FC(a1, a2);
  if (v2)
  {
    return 1;
  }

  return sub_1000734AC(v2, v3);
}

BOOL sub_100718D58(uint64_t a1)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return dword_1026592D0 == 187;
}

BOOL sub_100718DAC(uint64_t a1, uint64_t a2)
{
  result = sub_10006FE64(a1, a2);
  if (result)
  {
    return !sub_10006FF1C(result, v3);
  }

  return result;
}

BOOL sub_100718DD0(uint64_t a1, uint64_t a2)
{
  v2 = sub_10006FE30(a1, a2);
  if (!v2)
  {
    goto LABEL_6;
  }

  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168)
  {
    v3 = 1;
  }

  else
  {
LABEL_6:
    v3 = sub_100718E94(v2);
  }

  sub_10001CAF4(&v8);
  v10 = 0;
  v4 = sub_10001CB4C(v8, "supportsTimeFreqFromDiscreteGnss", &v10, 0xFFFFFFFFLL);
  v5 = v10;
  if (v9)
  {
    sub_100008080(v9);
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

void sub_100718E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100718E94(uint64_t a1)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  if ((dword_1026592D0 - 125) > 8 || ((1 << (dword_1026592D0 - 125)) & 0x199) == 0)
  {
    return dword_1026592D0 == 280;
  }

  return result;
}

BOOL sub_100718F08(uint64_t a1, uint64_t a2)
{
  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168 != 1)
  {
    return 0;
  }

  v2 = sub_1000733FC(a1, a2);
  if (v2)
  {
    return 1;
  }

  v4 = sub_1000734AC(v2, v3);
  if (v4)
  {
    return 1;
  }

  return sub_100718F78(v4);
}

BOOL sub_100718F78(uint64_t a1)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  if ((dword_1026592D0 - 174) > 0x3A || ((1 << (dword_1026592D0 + 82)) & 0x44400000001D003) == 0)
  {
    return dword_1026592D0 == 251 || dword_1026592D0 == 253;
  }

  return result;
}

BOOL sub_100719004(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000734AC(a1, a2);
  if (v2)
  {
    return 1;
  }

  v4 = sub_1000733FC(v2, v3);
  if (v4)
  {
    return 1;
  }

  v5 = sub_100265CB8(v4);
  if (v5)
  {
    return 1;
  }

  v6 = sub_100718F78(v5);
  if (v6)
  {
    return 1;
  }

  return sub_100718E94(v6);
}

BOOL sub_100719054(uint64_t a1)
{
  v1 = sub_1002658E0(a1);
  if (v1)
  {
    return 1;
  }

  v3 = sub_1000733FC(v1, v2);
  if (v3)
  {
    return 1;
  }

  v5 = sub_1000734AC(v3, v4);
  if (v5)
  {
    return 1;
  }

  v6 = sub_100265CB8(v5);
  if (v6)
  {
    return 1;
  }

  v7 = sub_100718F78(v6);
  if (v7)
  {
    return 1;
  }

  return sub_100718E94(v7);
}

uint64_t sub_1007190AC(uint64_t a1, uint64_t a2)
{
  result = sub_10006FDD0(a1, a2);
  if (result)
  {
    v4 = sub_10006FDD0(result, v3);
    if (v4)
    {

      return sub_10006FEAC(v4, v5);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_1007190EC(uint64_t a1)
{
  v1 = sub_100265838(a1);
  if (v1)
  {
    return 1;
  }

  v2 = sub_100718F78(v1);
  if (v2)
  {
    return 1;
  }

  v4 = sub_1007190AC(v2, v3);
  if (v4)
  {
    return 1;
  }

  return sub_100718E94(v4);
}

uint64_t sub_100719138(uint64_t a1, uint64_t a2)
{
  v2 = sub_10006FDD0(a1, a2);
  if (v2)
  {
    return 1;
  }

  v4 = sub_1000733FC(v2, v3);
  if (v4)
  {
    return 1;
  }

  return sub_1000734AC(v4, v5);
}

uint64_t sub_10071917C(uint64_t a1, uint64_t a2)
{
  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  v2 = byte_102659168;
  if ((byte_102659168 & 1) == 0)
  {
    sub_100714E94();
  }

  return v2;
}

uint64_t sub_1007191C4(uint64_t a1)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 182) < 0x3A) & (0x300000000000003uLL >> (dword_1026592D0 + 74));
}

BOOL sub_100719250(uint64_t a1)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return dword_1026592D0 == 174;
}

uint64_t sub_1007192A4(uint64_t a1, uint64_t a2)
{
  result = sub_1001B9C14(a1, a2);
  if (result)
  {
    v4 = sub_10006FCD4(result, v3);
    if (v4)
    {
      return 0;
    }

    v6 = sub_10006FD4C(v4, v5);
    if (v6)
    {
      return 0;
    }

    else
    {
      return sub_1007191C4(v6) ^ 1;
    }
  }

  return result;
}

void sub_1007192E0(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    if (CFEqual(v1, @"iPad"))
    {
      byte_102659148 = 1;
    }

    CFRelease(v2);
  }
}

void sub_100719378(id a1)
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  v1 = 1;
  if ((dword_1026592D0 - 259) >= 0x15)
  {
    v1 = (dword_1026592D0 - 198) < 4 || dword_1026592D0 == 1;
  }

  byte_102659158 = v1;
}

void sub_1007193D8(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    if (CFEqual(v1, @"iPhone"))
    {
      byte_102659168 = 1;
    }

    CFRelease(v2);
  }
}

uint64_t sub_100719448(uint64_t a1, uint64_t a2)
{
  if (qword_102659180 != -1)
  {
    sub_10191C120();
  }

  return byte_102659178;
}

void sub_100719480(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    if (CFEqual(v1, @"iPod"))
    {
      byte_102659178 = 1;
    }

    CFRelease(v2);
  }
}

uint64_t sub_1007194F0(uint64_t a1, uint64_t a2)
{
  if (qword_102659190 != -1)
  {
    sub_10191C134();
  }

  return byte_102659188;
}

void sub_100719528(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    if (CFEqual(v1, @"AppleTV"))
    {
      byte_102659188 = 1;
    }

    CFRelease(v2);
  }
}

BOOL sub_100719598(uint64_t a1)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return (dword_1026592D0 & 0xFFFFFFFE) == 166;
}

uint64_t sub_1007195F0(uint64_t a1, uint64_t a2)
{
  if (qword_1026591A0 != -1)
  {
    sub_10191C148();
  }

  return byte_102659198;
}

void sub_100719628(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    if (CFEqual(v1, @"AudioAccessory"))
    {
      byte_102659198 = 1;
    }

    CFRelease(v2);
  }
}

BOOL sub_100719698(uint64_t a1, uint64_t a2)
{
  if (qword_102659190 != -1)
  {
    sub_10191C134();
  }

  if (byte_102659188)
  {
    return 1;
  }

  if (qword_1026591A0 != -1)
  {
    sub_10191C148();
  }

  if (byte_102659198)
  {
    return 1;
  }

  return sub_100719598(a1);
}

BOOL sub_100719710(uint64_t a1, std::string *a2)
{
  sub_1007186C8(&__str);
  v3 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::operator=(a2, &__str);
    v3 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  if (v3 < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return size != 0;
}

void sub_10071977C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100719798()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 == CFBooleanGetTypeID())
  {
    Value = CFBooleanGetValue(v1);
    v4 = Value != 0;
    if (qword_1025D4870 != -1)
    {
      sub_10191BF9C();
    }

    v5 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      v7[0] = 67109120;
      v7[1] = Value != 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "isDisableTilesWhileLocked = %d", v7, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191C15C((Value != 0));
    }
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v1);
  return v4;
}

uint64_t sub_1007198D4(uint64_t a1)
{
  sub_100241350(a1, __p);
  if (qword_1026592D8 != -1)
  {
    sub_10191C250();
  }

  v1 = dword_1026592D0;
  if (qword_102659150 != -1)
  {
    sub_10191C278();
  }

  if (byte_102659148 != 1 || ((v2 = 1, (v1 - 8) > 0x39) || ((1 << (v1 - 8)) & 0x28000A01140079BLL) == 0) && v1 != 77)
  {
    v2 = 0;
  }

  if (qword_1025D4870 != -1)
  {
    sub_10191B9F8();
  }

  v3 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    v4 = __p;
    if (v12 < 0)
    {
      v4 = __p[0];
    }

    *buf = 67109634;
    v19 = v1;
    v20 = 2080;
    v21 = v4;
    v22 = 1024;
    v23 = v2;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "CAMP: device id [%d] [%s], camping support [%d]", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191C2A0(buf);
    v6 = __p;
    if (v12 < 0)
    {
      v6 = __p[0];
    }

    v13[0] = 67109634;
    v13[1] = v1;
    v14 = 2080;
    v15 = v6;
    v16 = 1024;
    v17 = v2;
    LODWORD(v9) = 24;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 2, "CAMP: device id [%d] [%s], camping support [%d]", v13, v9, v10);
    v8 = v7;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPlatformInfo::supportsCampOnly()", "%s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_100719B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100719B64(uint64_t a1)
{
  v1 = __CFADD__(qword_1026592D8, 1);
  v2 = qword_1026592D8 == -1;
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  if (v2 || !v1)
  {
    switch(dword_1026592D0)
    {
      case 8:
      case 9:
      case 11:
      case 12:
      case 15:
      case 16:
      case 17:
      case 18:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 30:
      case 32:
      case 36:
      case 45:
      case 47:
      case 54:
      case 55:
      case 56:
      case 63:
      case 65:
      case 71:
      case 72:
      case 73:
      case 77:
      case 78:
      case 79:
      case 80:
        return result;
      case 10:
      case 13:
      case 14:
      case 19:
      case 20:
      case 21:
      case 29:
      case 31:
      case 33:
      case 34:
      case 35:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 46:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 64:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 74:
      case 75:
      case 76:
        return 0;
      default:
        JUMPOUT(0);
    }
  }

  v4 = (dword_1026592D0 - 139) > 0x34 || ((1 << (dword_1026592D0 + 117)) & 0x1FFFFFE000001DLL) == 0;
  if (v4 && (dword_1026592D0 - 233) >= 8)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100719C04(uint64_t a1)
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  switch(dword_1026592D0)
  {
    case 8:
    case 9:
    case 11:
    case 12:
    case 15:
    case 16:
    case 17:
    case 18:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 30:
    case 32:
    case 36:
    case 44:
    case 45:
    case 47:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 63:
    case 65:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 77:
    case 78:
    case 79:
    case 80:
      return result;
    case 10:
    case 13:
    case 14:
    case 19:
    case 20:
    case 21:
    case 29:
    case 31:
    case 33:
    case 34:
    case 35:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 46:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 60:
    case 61:
    case 62:
    case 64:
    case 66:
    case 67:
    case 74:
    case 75:
    case 76:
      goto LABEL_11;
    default:
      v2 = (dword_1026592D0 - 139) > 0x34 || ((1 << (dword_1026592D0 + 117)) & 0x1FFFFFE000001DLL) == 0;
      if (v2 && (dword_1026592D0 - 233) >= 8)
      {
LABEL_11:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_100719CA4(uint64_t a1, uint64_t a2)
{
  v2 = sub_10006FDD0(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v4 = sub_10006FEAC(v2, v3);
  if (v4)
  {
    return 0;
  }

  return sub_10006FDD0(v4, v5);
}

BOOL sub_100719CE4(uint64_t a1, uint64_t a2)
{
  if (qword_1026591B0 != -1)
  {
    sub_10191C2E4();
  }

  result = (byte_1026591A8 & 1) != 0 || sub_1001B589C(a1, a2);
  byte_1026591A8 = result;
  return result;
}

void sub_100719D34(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    byte_1026591A8 = 1;

    CFRelease(v1);
  }
}

uint64_t sub_100719D80(uint64_t a1, uint64_t a2)
{
  if (sub_100719DCC(a1, a2))
  {
    if (qword_102659150 != -1)
    {
      sub_10191C0F8();
    }

    v2 = byte_102659148 ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

BOOL sub_100719DCC(uint64_t a1, uint64_t a2)
{
  result = sub_1001AE054(a1, a2);
  if (result)
  {
    v4 = sub_1000733FC(result, v3);
    if (v4 & 1) != 0 || (v4 = sub_1000734AC(v4, v5), (v4) || (v4 = sub_10006FE30(v4, v5), v4))
    {
      if (qword_102659170 != -1)
      {
        sub_10191C0D0();
      }

      if (byte_102659168)
      {
        return 1;
      }
    }

    v6 = sub_10006FDD0(v4, v5);
    if (v6 && (v6 = sub_10006FEAC(v6, v7), !v6))
    {
      return 1;
    }

    else
    {

      return sub_100718F78(v6);
    }
  }

  return result;
}

uint64_t sub_100719E50(uint64_t a1, uint64_t a2)
{
  if (qword_1026591C0 != -1)
  {
    sub_10191C2F8();
  }

  return byte_1026591B8;
}

void sub_100719E88(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    byte_1026591B8 = CFEqual(v1, @"NonUI") != 0;

    CFRelease(v2);
  }
}

void sub_100719EF8(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFBooleanGetTypeID() && CFBooleanGetValue(v2) == 1)
    {
      byte_1026591C8 = 1;
    }

    CFRelease(v2);
  }
}

uint64_t sub_100719F7C()
{
  v7 = 0;
  sub_10001CAF4(buf);
  v0 = sub_10001CB4C(*buf, "GpsForceSuplSupportIgnoringHw", &v7, 0xFFFFFFFFLL);
  v2 = (v0 & v7);
  v3 = v9;
  if (v9)
  {
    sub_100008080(v9);
  }

  if (v2)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10191B9F8();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Warning SUPL: ignoring hw. forceSuplSupport,%d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191C320(&v7);
    }

    v5 = v7;
  }

  else if (sub_10006FDD0(v3, v1))
  {
    if (qword_102659150 != -1)
    {
      sub_10191C278();
    }

    v5 = byte_102659148 ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_10071A0CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071A0EC()
{
  v6 = 0;
  sub_10001CAF4(buf);
  v0 = sub_10001CB4C(*buf, "GpsForceLppSupport", &v6, 0xFFFFFFFFLL);
  v2 = v0 & v6;
  v3 = v8;
  if (v8)
  {
    sub_100008080(v8);
  }

  if (!v2)
  {
    return sub_10006FDD0(v3, v1);
  }

  if (qword_1025D4870 != -1)
  {
    sub_10191B9F8();
  }

  v4 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Warning LPP: ignoring hw. forceLppSupport,%d\n", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191C41C(&v6);
  }

  return 1;
}

void sub_10071A208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071A228()
{
  v7 = 0;
  sub_10001CAF4(buf);
  v0 = sub_10001CB4C(*buf, "GpsForceLPPOverNRSupport", &v7, 0xFFFFFFFFLL);
  v2 = v0 & v7;
  v3 = v9;
  if (v9)
  {
    sub_100008080(v9);
  }

  if (v2)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10191C518();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Test mode, forceLPPOverNRSupport,%d\n", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191C540(&v7);
    }

    return 1;
  }

  else
  {
    result = sub_10006FDD0(v3, v1);
    if (result)
    {
      return sub_10006FC6C(result, v6) ^ 1;
    }
  }

  return result;
}

void sub_10071A350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071A370(uint64_t a1)
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  v1 = -7;
  switch(dword_1026592D0)
  {
    case 7:
    case 8:
    case 9:
    case 13:
    case 14:
    case 15:
    case 16:
    case 23:
    case 31:
      v1 = -6;
      break;
    case 17:
    case 18:
    case 32:
      return v1;
    case 22:
      v1 = -4;
      break;
    case 24:
    case 25:
    case 29:
    case 30:
      v1 = -5;
      break;
    case 27:
    case 28:
    case 43:
    case 62:
    case 63:
      v1 = -3;
      break;
    case 64:
    case 65:
      v1 = -2;
      break;
    default:
      v1 = 0;
      break;
  }

  return v1;
}

BOOL sub_10071A418()
{
  v0 = MGCopyAnswer();
  v1 = MGCopyAnswer();
  if (v0)
  {
    CFRelease(v0);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  if (v0)
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

uint64_t sub_10071A480(uint64_t a1, uint64_t a2)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168)
  {
    return 1;
  }

  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_102659150 != -1)
  {
    sub_10191C0F8();
  }

  if (byte_102659148)
  {
    return 1;
  }

  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1025D4630 != -1)
  {
    sub_10191C63C();
  }

  v3 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    sub_1001AF89C(__p);
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136446210;
    v8 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "@WsbReg, not supported, %{public}s", buf, 0xCu);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10191C650();
    return 0;
  }

  return result;
}

uint64_t sub_10071A610(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10071A6A0;
  block[3] = &unk_102449A78;
  block[4] = a1;
  if (qword_1026591E0 != -1)
  {
    dispatch_once(&qword_1026591E0, block);
  }

  return byte_1026591D8;
}

void sub_10071A6A0(uint64_t result, uint64_t a2)
{
  if (qword_102659140 != -1)
  {
    sub_10191BF88();
  }

  if ((dword_102659138 & 0x8000) != 0)
  {
    if (qword_1026592D8 != -1)
    {
      sub_10191B9BC();
    }

    v2 = 1;
    switch(dword_1026592D0)
    {
      case 134:
      case 135:
      case 136:
      case 137:
      case 139:
      case 141:
      case 142:
      case 143:
      case 146:
      case 154:
      case 155:
      case 156:
      case 157:
      case 168:
      case 169:
      case 170:
      case 171:
      case 172:
      case 173:
      case 176:
      case 177:
      case 178:
      case 179:
      case 193:
      case 194:
      case 195:
      case 196:
      case 205:
      case 206:
      case 207:
      case 208:
      case 214:
      case 216:
      case 217:
      case 218:
      case 233:
      case 234:
      case 235:
      case 241:
      case 242:
      case 243:
      case 244:
      case 245:
      case 246:
      case 247:
      case 248:
      case 249:
        break;
      case 138:
      case 140:
      case 144:
      case 145:
      case 147:
      case 148:
      case 149:
      case 150:
      case 151:
      case 152:
      case 153:
      case 158:
      case 159:
      case 160:
      case 161:
      case 162:
      case 163:
      case 164:
      case 165:
      case 166:
      case 167:
      case 174:
      case 175:
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
      case 192:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 204:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 215:
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
      case 236:
      case 237:
      case 238:
      case 239:
      case 240:
        goto LABEL_11;
      default:
        if ((dword_1026592D0 - 33) > 0x2E || ((1 << (dword_1026592D0 - 33)) & 0x600000018003) == 0)
        {
LABEL_11:
          v2 = 0;
        }

        break;
    }

    byte_1026591D8 = v2;
  }
}

uint64_t sub_10071A760(uint64_t a1, uint64_t a2)
{
  if (qword_102659160 != -1)
  {
    sub_10191C10C();
  }

  if (byte_102659158)
  {
    return 0;
  }

  if (sub_10071A610(a1))
  {
    return 360;
  }

  return 180;
}

uint64_t sub_10071A7C4(uint64_t a1, uint64_t a2)
{
  if (qword_102659160 != -1)
  {
    sub_10191C10C();
  }

  if (byte_102659158)
  {
    return 0;
  }

  if (sub_10071A610(a1))
  {
    return 320;
  }

  return 140;
}

uint64_t sub_10071A828(uint64_t a1, uint64_t a2)
{
  if (qword_1026591F0 != -1)
  {
    sub_10191C780();
  }

  return byte_1026591E8;
}

void sub_10071A860(id a1)
{
  v1 = MGCopyAnswer();
  v2 = v1;
  if (v1)
  {
    v3 = CFGetTypeID(v1);
    if (v3 == CFBooleanGetTypeID())
    {
      byte_1026591E8 = CFBooleanGetValue(v2) != 0;
LABEL_11:
      CFRelease(v2);
      goto LABEL_12;
    }
  }

  if (qword_1025D4870 != -1)
  {
    sub_10191BF9C();
  }

  v4 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "unexpected MGCopyAnswer answer", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_10191C794();
  }

  if (v2)
  {
    goto LABEL_11;
  }

LABEL_12:
  v7 = 0;
  sub_10001CAF4(buf);
  v5 = sub_10001CB4C(*buf, "ForceSupportBarometer", &v7, 0xFFFFFFFFLL);
  if (v9)
  {
    sub_100008080(v9);
  }

  if (v5)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10191B9F8();
    }

    v6 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning ForceSupportBarometer,%d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191C880(&v7);
    }

    byte_1026591E8 = v7;
  }
}

void sub_10071AA40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_10071AA60(uint64_t a1, uint64_t a2)
{
  if (!sub_10006FF1C(a1, a2))
  {
    return 0;
  }

  sub_10001CAF4(&v5);
  v7 = 0;
  v2 = sub_10005BBE4(v5, "RavenDailyBudget", &v7);
  v3 = v7;
  if (v6)
  {
    sub_100008080(v6);
  }

  if (v2)
  {
    return v3 | dword_100000000;
  }

  else
  {
    return 0x100000E10;
  }
}

void sub_10071AAE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071AAF8(uint64_t a1, uint64_t a2)
{
  if (qword_102659150 != -1)
  {
    sub_10191C0F8();
  }

  if (byte_102659148)
  {
    return 1;
  }

  if (qword_102659290 != -1)
  {
    sub_10191C97C();
  }

  return BYTE3(qword_102659298) & 1;
}

BOOL sub_10071AB5C()
{
  v8 = 0;
  sub_10001CAF4(buf);
  v0 = sub_10001CB4C(*buf, "EEDRequestForceHWSupport", &v8, 0xFFFFFFFFLL);
  v2 = v0 & v8;
  v3 = v10;
  if (v10)
  {
    sub_100008080(v10);
  }

  if (v2)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10191B9F8();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Warning #EED,ignoring hw,forceHWSupport,%d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191C9B8(&v8);
    }

    return v8;
  }

  else
  {
    if (qword_102659170 != -1)
    {
      sub_10191C990();
    }

    if (byte_102659168 == 1)
    {
      v6 = sub_10006FB70(v3, v1);
      return (v6 & 1) != 0 || sub_100718F78(v6);
    }

    else
    {
      return 0;
    }
  }
}

void sub_10071ACBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071ACDC(uint64_t a1, uint64_t a2)
{
  result = sub_100719DCC(a1, a2);
  if (result)
  {
    result = sub_10006FDD0(result, v3);
    if (result)
    {
      return !sub_10006FEAC(result, v4);
    }
  }

  return result;
}

uint64_t sub_10071AD08()
{
  v11 = 0;
  sub_10001CAF4(&v9);
  v1 = sub_10001CB4C(v9, "GnssForceSupportsInsAiding", &v11, 0xFFFFFFFFLL);
  v2 = v10;
  if (v10)
  {
    sub_100008080(v10);
  }

  if (v1)
  {
    v3 = v11;
  }

  else
  {
    v4 = sub_10006FE64(v2, v0);
    if (v4 || (v6 = sub_1000733FC(v4, v5), (v6 & 1) != 0))
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_1000734AC(v6, v7);
    }
  }

  return v3 & 1;
}

void sub_10071AD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071ADA4(uint64_t a1, uint64_t a2)
{
  result = sub_10006FE30(a1, a2);
  if (result)
  {
    if (qword_102659170 != -1)
    {
      sub_10191C0D0();
    }

    return byte_102659168;
  }

  return result;
}

uint64_t sub_10071ADE0(uint64_t a1, uint64_t a2)
{
  result = sub_1000733FC(a1, a2);
  if ((result & 1) != 0 || (result = sub_1000734AC(result, v3), result))
  {
    result = sub_100718F78(result);
    if (result)
    {
      return sub_1000733FC(result, v4) ^ 1;
    }
  }

  return result;
}

uint64_t sub_10071AE18(uint64_t a1)
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 0;
  if (dword_1026592D0 > 176)
  {
    switch(dword_1026592D0)
    {
      case 206:
        v9 = xmmword_101C8A490;
        goto LABEL_35;
      case 207:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 215:
      case 217:
      case 219:
      case 220:
      case 221:
      case 223:
      case 224:
      case 225:
      case 227:
      case 228:
      case 229:
      case 231:
      case 232:
      case 241:
      case 242:
      case 244:
      case 246:
      case 248:
      case 250:
      case 251:
      case 252:
      case 253:
      case 254:
      case 257:
        return result;
      case 208:
        v9 = xmmword_101C8A480;
LABEL_35:
        *a1 = v9;
        v3 = 1082340147;
        goto LABEL_48;
      case 214:
      case 216:
        v5 = xmmword_101C8A3D0;
        goto LABEL_39;
      case 218:
        v8 = xmmword_101C8A420;
        goto LABEL_37;
      case 222:
      case 255:
        *(a1 + 16) = 1080872141;
        v6 = xmmword_101C8A3A0;
        goto LABEL_46;
      case 226:
      case 256:
        *(a1 + 16) = 1080872141;
        v6 = xmmword_101C8A390;
        goto LABEL_46;
      case 230:
      case 247:
      case 249:
        *a1 = xmmword_101C8A350;
        v3 = 1080872141;
        goto LABEL_48;
      case 233:
        *a1 = xmmword_101C8A410;
        v3 = 1082969293;
        goto LABEL_48;
      case 234:
        v8 = xmmword_101C8A400;
        goto LABEL_37;
      case 235:
        v8 = xmmword_101C8A3F0;
LABEL_37:
        *a1 = v8;
        v3 = 1077516698;
        goto LABEL_48;
      case 236:
      case 237:
        *a1 = xmmword_101C8A3E0;
        v3 = 1082759578;
        goto LABEL_48;
      case 238:
        v10 = xmmword_101C8A370;
        goto LABEL_44;
      case 239:
        v10 = xmmword_101C8A360;
LABEL_44:
        *a1 = v10;
        v3 = 1081711002;
        goto LABEL_48;
      case 240:
        v5 = xmmword_101C8A340;
LABEL_39:
        *a1 = v5;
        v3 = 1082549862;
        goto LABEL_48;
      case 243:
        *(a1 + 16) = 1082549862;
        v6 = xmmword_101C8A3C0;
        goto LABEL_46;
      case 245:
        *(a1 + 16) = 1082549862;
        v6 = xmmword_101C8A3B0;
        goto LABEL_46;
      case 258:
        *(a1 + 16) = 1080872141;
        v6 = xmmword_101C8A380;
LABEL_46:
        *a1 = v6;
        return 1;
      default:
        if (dword_1026592D0 == 177)
        {
          *a1 = xmmword_101C8A440;
          v3 = 1080033280;
          goto LABEL_48;
        }

        if (dword_1026592D0 != 196)
        {
          return result;
        }

        v4 = xmmword_101C8A430;
        break;
    }

    goto LABEL_26;
  }

  if (dword_1026592D0 <= 170)
  {
    if (dword_1026592D0 == 168)
    {
      *a1 = xmmword_101C8A4D0;
      v3 = 1083598438;
      goto LABEL_48;
    }

    if (dword_1026592D0 != 169)
    {
      if (dword_1026592D0 != 170)
      {
        return result;
      }

      *a1 = xmmword_101C8A4A0;
      v3 = 1085485875;
      goto LABEL_48;
    }

    v7 = xmmword_101C8A4C0;
    goto LABEL_29;
  }

  if (dword_1026592D0 <= 172)
  {
    if (dword_1026592D0 != 171)
    {
      *a1 = xmmword_101C8A470;
      v3 = 1083388723;
      goto LABEL_48;
    }

    v7 = xmmword_101C8A4B0;
LABEL_29:
    *a1 = v7;
    v3 = 1085276160;
    goto LABEL_48;
  }

  if (dword_1026592D0 == 173)
  {
    v4 = xmmword_101C8A460;
LABEL_26:
    *a1 = v4;
    v3 = 1080452710;
    goto LABEL_48;
  }

  if (dword_1026592D0 != 176)
  {
    return result;
  }

  *a1 = xmmword_101C8A450;
  v3 = 1079613850;
LABEL_48:
  *(a1 + 16) = v3;
  return 1;
}

BOOL sub_10071B104(uint64_t a1, uint64_t a2)
{
  v2 = sub_10006FE64(a1, a2);
  if (!v2)
  {
    return 1;
  }

  return sub_10006FE30(v2, v3);
}

void sub_10071B13C(id a1)
{
  sub_10001CAF4(&v4);
  v1 = qword_102659318;
  v6 = 0;
  v2 = sub_1000B9370(v4, "GnssMinimumDebounceInterval", &v6);
  v3 = v6;
  if (!v2)
  {
    v3 = v1;
  }

  qword_102659318 = v3;
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_10071B1B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10071B1C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_10006FE30(a1, a2);
  if (v2)
  {
    return 1;
  }

  return sub_100718F78(v2);
}

void sub_10071B200(id a1)
{
  v1 = CFPreferencesCopyValue(@"StoreDemoMode", @"com.apple.demo-settings", @"mobile", kCFPreferencesAnyHost);
  if (v1)
  {
    v2 = v1;
    byte_102659200 = CFBooleanGetValue(v1) != 0;

    CFRelease(v2);
  }
}

uint64_t sub_10071B280(uint64_t a1, uint64_t a2)
{
  if (qword_102659218 != -1)
  {
    sub_10191CB3C();
  }

  return byte_102659210;
}

void sub_10071B2B8(id a1)
{
  v6 = 0;
  sub_10001CAF4(buf);
  v1 = sub_10001CB4C(*buf, "ForceMultiUser", &v6, 0xFFFFFFFFLL);
  v2 = v1 & v6;
  if (v8)
  {
    sub_100008080(v8);
  }

  if (v2)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10191B9F8();
    }

    v3 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#Warning force multi user", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191CB50();
    }

    byte_102659210 = 1;
  }

  else
  {
    v4 = MKBUserTypeDeviceMode();
    if (v4)
    {
      v5 = [v4 objectForKey:kMKBDeviceModeKey];
      if ([v5 isEqualToString:kMKBDeviceModeMultiUser])
      {
        byte_102659210 = 1;
      }
    }
  }
}

void sub_10071B5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10071B62C(id a1)
{
  sub_10001CAF4(&v6);
  v1 = v6;
  v3 = sub_100718F78(v2);
  v8 = 0;
  v4 = sub_10001CB4C(v1, "GpsdEnableRof", &v8, 0xFFFFFFFFLL);
  v5 = v8;
  if (!v4)
  {
    v5 = v3;
  }

  byte_102659220 = v5;
  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_10071B6A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10071B6BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_100719DCC(a1, a2);
  sub_10001CAF4(&v7);
  v9 = 0;
  v3 = sub_10001CB4C(v7, "EnableRof", &v9, 0xFFFFFFFFLL);
  v4 = v9;
  if (v8)
  {
    sub_100008080(v8);
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

void sub_10071B734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10071B74C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000734AC(a1, a2);
  if (v2)
  {
    return 1;
  }

  v5 = sub_10006FE64(v2, v3);
  if (v5)
  {
    v5 = sub_10006FF1C(v5, v6);
    if (!v5)
    {
      return 1;
    }
  }

  v7 = sub_10006FDD0(v5, v6);
  if (v7)
  {
    v7 = sub_10006FEAC(v7, v8);
    if (!v7)
    {
      return 1;
    }
  }

  return sub_100718F78(v7);
}

uint64_t sub_10071B7A4()
{
  sub_10001CAF4(&v12);
  v14 = 0;
  v1 = sub_10001CB4C(v12, "GnssPlatformEnableNavic", &v14, 0xFFFFFFFFLL);
  v2 = v14;
  v3 = v13;
  if (v13)
  {
    sub_100008080(v13);
  }

  if (qword_102659170 != -1)
  {
    sub_10191C990();
  }

  if (byte_102659168 == 1)
  {
    v4 = sub_10006FB70(v3, v0);
    if (v4 && (v4 = sub_10006FCD4(v4, v5), !v4) || (v4 = sub_100718F78(v4), v4))
    {
      v7 = sub_10006FE30(v4, v6);
      if (v7 || (v8 = sub_100718F78(v7)))
      {
        v10 = 1;
        LODWORD(v4) = 1;
      }

      else
      {
        v10 = 1;
        LODWORD(v4) = sub_1007192A4(v8, v9);
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    LODWORD(v4) = 0;
  }

  return (v4 | v1 & v2 & v10) & 1;
}

void sub_10071B890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071B8A8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10071B938;
  block[3] = &unk_102449A78;
  block[4] = a1;
  if (qword_102659248 != -1)
  {
    dispatch_once(&qword_102659248, block);
  }

  return byte_102659240;
}

void sub_10071B938(uint64_t result, uint64_t a2)
{
  if (qword_102659160 != -1)
  {
    sub_10191C10C();
  }

  v2 = byte_102659158;
  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168)
  {
    goto LABEL_12;
  }

  if (qword_102659150 != -1)
  {
    sub_10191C0F8();
  }

  if (byte_102659148)
  {
    goto LABEL_12;
  }

  if (qword_102659180 != -1)
  {
    sub_10191C120();
  }

  if ((byte_102659178 | v2))
  {
LABEL_12:
    if (v2)
    {
      v3 = 1;
    }

    else
    {
      if (qword_102659290 != -1)
      {
        sub_10191C97C();
      }

      v3 = qword_102659298 & 1 | ((qword_102659298 & 2) != 0);
    }

    byte_102659240 = v3;
  }
}

uint64_t sub_10071BA24(uint64_t a1)
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return 1;
}

uint64_t sub_10071BA58(uint64_t a1)
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  v2 = (dword_1026592D0 - 78) > 0x25 || ((1 << (dword_1026592D0 - 78)) & 0x3FFFFE7D53) == 0;
  if (v2 && ((dword_1026592D0 - 134) > 0x2D || ((1 << (dword_1026592D0 + 122)) & 0x3CFC00F003FFLL) == 0) && ((dword_1026592D0 - 205) > 0x30 || ((1 << (dword_1026592D0 + 51)) & 0x1FFF00000000FLL) == 0))
  {
    return 0;
  }

  return result;
}

uint64_t sub_10071BB0C(uint64_t a1, uint64_t a2)
{
  if (qword_102659258 != -1)
  {
    sub_10191CC78();
  }

  return byte_102659250;
}

void sub_10071BB44(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    if (CFStringCompare(v1, @"KH", 0) == kCFCompareEqualTo)
    {
      byte_102659250 = 1;
      if (qword_1025D4870 != -1)
      {
        sub_10191BF9C();
      }

      v3 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        *v4 = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "isKoreaSKU: true", v4, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191CC8C();
      }
    }

    CFRelease(v2);
  }
}

void sub_10071BC18(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    if (CFStringCompare(v1, @"CH", 0) == kCFCompareEqualTo)
    {
      byte_102659260 = 1;
      if (qword_1025D4870 != -1)
      {
        sub_10191BF9C();
      }

      v3 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        *v4 = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "isChinaSKU: true", v4, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191CD70();
      }
    }

    CFRelease(v2);
  }
}

uint64_t sub_10071BCEC(uint64_t a1, uint64_t a2)
{
  if (qword_102659278 != -1)
  {
    sub_10191CE54();
  }

  return byte_102659270;
}

void sub_10071BD64(id a1)
{
  v4 = @"IOPropertyMatch";
  v5 = &off_102553B48;
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1]);
  if (MatchingService)
  {
    byte_102659288 = 1;
    IOObjectRelease(MatchingService);
  }

  else
  {
    if (qword_1025D42D0 != -1)
    {
      sub_10191D06C();
    }

    v2 = qword_1025D42D8;
    if (os_log_type_enabled(qword_1025D42D8, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Compass service missing", v3, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191D094();
    }
  }
}

void sub_10071BE84(id a1)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  qword_102659298 = sub_10071BEBC(a1);
}

unint64_t sub_10071BEBC(uint64_t a1)
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  v1 = 0;
  v2 = dword_1026592D0;
  switch(dword_1026592D0)
  {
    case 0:
    case 281:
      if (qword_1025D4870 != -1)
      {
        sub_10191BF9C();
      }

      v18 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        *buf = 67174657;
        v23 = v2;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "Unsupported HW type %{private}d; file a radar to CoreMotion Factory | 1.0", buf, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10191D178(v2);
      }

      goto LABEL_10;
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
      if (qword_1025D4870 != -1)
      {
        sub_10191BF9C();
      }

      v3 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        v23 = v2;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "Old hardware,%d is not supported", buf, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10191D270(v2);
      }

LABEL_10:
      v1 = 0;
      break;
    case 24:
    case 25:
    case 27:
    case 28:
      v14 = 1586033086;
      goto LABEL_50;
    case 26:
      v8 = 0x134E88F1BELL;
      goto LABEL_76;
    case 29:
      v1 = 1115734017;
      break;
    case 30:
    case 31:
    case 32:
      v17 = 1115734017;
      goto LABEL_53;
    case 33:
    case 217:
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
    case 246:
    case 247:
    case 248:
    case 249:
    case 250:
    case 251:
    case 252:
    case 253:
    case 255:
    case 256:
      v4 = 1530;
      goto LABEL_14;
    case 34:
    case 195:
    case 196:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 218:
    case 229:
    case 230:
    case 231:
    case 232:
    case 241:
    case 242:
    case 243:
    case 244:
    case 245:
    case 257:
    case 258:
      v4 = 13818;
LABEL_14:
      v5 = v4 & 0xFFFFFFFF0000FFFFLL | 0x628C0000;
      goto LABEL_15;
    case 35:
    case 36:
    case 64:
    case 65:
      v15 = -3702;
      goto LABEL_70;
    case 39:
    case 42:
      v1 = 0x50022CA9C00ELL;
      break;
    case 44:
      v15 = -15942;
LABEL_70:
      v1 = v15 | 0x42880000u;
      break;
    case 45:
      v1 = 1116271034;
      break;
    case 46:
    case 62:
    case 161:
      v1 = 1653129658;
      break;
    case 47:
    case 63:
      v17 = 1653129658;
LABEL_53:
      v1 = v17 | 0x3000;
      break;
    case 48:
    case 193:
      v6 = 1088;
      v7 = 0x26289C1BALL;
      goto LABEL_18;
    case 49:
    case 194:
    case 197:
    case 210:
      v11 = 62970;
      goto LABEL_44;
    case 50:
    case 51:
      v8 = 0x5002ACA9C00ELL;
      goto LABEL_76;
    case 54:
    case 55:
      v14 = 2127327678;
LABEL_50:
      v1 = v14 | 0x202005300000000;
      break;
    case 56:
    case 57:
    case 58:
    case 59:
      v1 = 0x20300537E8C71BELL;
      break;
    case 60:
    case 61:
    case 204:
      v1 = 0x400000000;
      break;
    case 66:
    case 67:
    case 74:
    case 75:
      v8 = 0x486ABCA9C00ELL;
      goto LABEL_76;
    case 68:
    case 69:
    case 71:
    case 72:
      v13 = 0x24300537E8C35BELL;
      goto LABEL_64;
    case 70:
    case 73:
      v10 = 0x80537E8C31BELL;
      goto LABEL_66;
    case 76:
    case 146:
    case 147:
      v11 = 49594;
LABEL_44:
      v5 = v11 & 0xFFFFFFFF0000FFFFLL | 0x62890000;
LABEL_15:
      v1 = v5 & 0xFFFF0000FFFFFFFFLL | 0x200000000;
      break;
    case 77:
    case 145:
      v13 = 0x26289F5FALL;
LABEL_64:
      v1 = v13 - 1024;
      break;
    case 78:
    case 79:
    case 80:
    case 142:
      v10 = 0x537E8C35BELL;
LABEL_66:
      v1 = v10 & 0xFFFFFFFFFFFFLL | 0x243000000000000;
      break;
    case 82:
    case 84:
      v8 = 0x4F6ABCA9C00ELL;
      goto LABEL_76;
    case 86:
    case 88:
      v1 = 0x2496ABCA9C00ELL;
      break;
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
      v8 = 0x496ABCA9C01ELL;
      goto LABEL_76;
    case 95:
    case 96:
    case 97:
    case 98:
      v1 = 0x612496ABCA9C01ELL;
      break;
    case 99:
    case 100:
    case 101:
    case 102:
      v1 = 0xE12696ABCA9C05ELL;
      break;
    case 103:
    case 104:
    case 105:
    case 106:
      v1 = 0xE12696ABCAA005ELL;
      break;
    case 107:
    case 108:
    case 109:
    case 110:
      v9 = 0x496ABCA9C05ELL;
      goto LABEL_27;
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 280:
      v9 = 0x696ABCAA005ELL;
LABEL_27:
      v1 = v9 & 0xFFFFFFFFFFFFLL | 0xE16000000000000;
      break;
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
      v1 = 0x2E16696ABCAA005ELL;
      break;
    case 134:
    case 135:
    case 136:
    case 137:
      v12 = 1653208570;
      goto LABEL_41;
    case 138:
    case 139:
    case 140:
    case 141:
    case 143:
      v1 = 0x24B00537E8C35BELL;
      break;
    case 144:
    case 254:
      v1 = 0x2628C31BALL;
      break;
    case 148:
      v1 = 0x136E8C408ELL;
      break;
    case 149:
      v8 = 0x122C8C010ELL;
      goto LABEL_76;
    case 150:
    case 151:
    case 152:
    case 153:
      v8 = 0x406ABCA9C00ELL;
LABEL_76:
      v1 = v8 & 0xFFFFFFFFFFFFLL | 0x2000000000000;
      break;
    case 154:
    case 155:
    case 156:
    case 157:
      v12 = 1653356026;
LABEL_41:
      v1 = (v12 & 0xFFFF0000FFFFFFFFLL | 0x200000000) - 64;
      break;
    case 168:
    case 169:
    case 170:
    case 171:
      v1 = 0x27B00537E8C35BELL;
      break;
    case 172:
    case 173:
    case 176:
    case 177:
      v16 = 0x27B00537E8C35BELL;
      goto LABEL_68;
    case 174:
    case 175:
    case 234:
    case 235:
    case 236:
    case 237:
      v1 = 0x27700537E8C35FELL;
      break;
    case 178:
    case 179:
    case 180:
    case 181:
      v1 = 0x27700537E8C37FELL;
      break;
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
    case 238:
    case 239:
    case 240:
      v6 = 2560;
      v7 = 0x27700537E8C35FELL;
LABEL_18:
      v1 = v7 | v6;
      break;
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
      v1 = 554434570;
      break;
    case 233:
      v16 = 0x24B00537E8C35BELL;
LABEL_68:
      v1 = v16 | 0x40;
      break;
    default:
      break;
  }

  v21 = (v1 & 0x200) != 0;
  sub_100126E84(buf, "OverrideMotionCapEclipseService", &v21, 0);
  v19 = 512;
  if (!buf[1])
  {
    v19 = 0;
  }

  return v19 | v1 & 0x2E7FFF7FFFEFFDFFLL;
}

uint64_t sub_10071C3C8(uint64_t a1)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  v2 = (dword_1026592D0 - 205) > 0x35 || ((1 << (dword_1026592D0 + 51)) & 0x3FFFF00F3FFFEFLL) == 0;
  if (v2 && ((dword_1026592D0 - 134) > 0x3F || ((1 << (dword_1026592D0 + 122)) & 0xF800000000F0080FLL) == 0) && (dword_1026592D0 > 0x3F || ((1 << dword_1026592D0) & 0xC003F00000000000) == 0))
  {
    return 0;
  }

  return result;
}

BOOL sub_10071C490(uint64_t a1)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  if ((dword_1026592D0 - 195) > 0x3F || ((1 << (dword_1026592D0 + 61)) & 0xC000018000000003) == 0)
  {
    return (dword_1026592D0 - 33) < 2;
  }

  return result;
}

uint64_t sub_10071C510(uint64_t a1)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 195) < 0x40) & (0xF0000003FFC00003 >> (dword_1026592D0 + 61));
}

uint64_t sub_10071C578(uint64_t a1)
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 213) < 0x2A) & (0x200000F000FuLL >> (dword_1026592D0 + 43));
}

uint64_t sub_10071C5D0(uint64_t a1)
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  if (dword_1026592D0 <= 137)
  {
    v3 = (dword_1026592D0 - 78) > 0x37 || ((1 << (dword_1026592D0 - 78)) & 0xFFFFFE1E000007) == 0;
    if (v3 && (dword_1026592D0 - 68) >= 6)
    {
      return 0;
    }
  }

  else
  {
    v2 = (dword_1026592D0 - 138) > 0x35 || ((1 << (dword_1026592D0 + 118)) & 0x3FFFFFC000003FLL) == 0;
    if (v2 && ((dword_1026592D0 - 233) > 0x2F || ((1 << (dword_1026592D0 + 23)) & 0x8000000000FFLL) == 0))
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_10071C698(uint64_t a1)
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  v1 = dword_1026592D0 == 280;
  if ((dword_1026592D0 - 89) < 4)
  {
    v1 = 1;
  }

  return (dword_1026592D0 - 95) < 0x27 || v1;
}

BOOL sub_10071C6F4(uint64_t a1)
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  v1 = dword_1026592D0 == 280;
  if ((dword_1026592D0 - 99) < 8)
  {
    v1 = 1;
  }

  return (dword_1026592D0 - 111) < 0x17 || v1;
}

uint64_t sub_10071C750(uint64_t a1)
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 172) < 0x40) & (0xC0000000000000F3 >> (dword_1026592D0 + 84));
}

uint64_t sub_10071C7A4(uint64_t a1)
{
  v3 = 0;
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  if (dword_1026592D0 == 233)
  {
    v3 = 1;
  }

  sub_100126E84(v2, off_1025D6528[0], &v3, 0);
  return v2[1];
}

BOOL sub_10071C814(uint64_t a1)
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return (dword_1026592D0 - 107) < 4;
}

BOOL sub_10071C858(uint64_t a1, uint64_t a2)
{
  if (qword_102659290 != -1)
  {
    sub_10191C97C();
  }

  return (qword_102659298 & 0x4000) != 0 && (qword_102659298 & 0x10000) == 0;
}

uint64_t sub_10071C8A8(uint64_t a1)
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 115) < 0x13) & (0x787E1u >> (dword_1026592D0 - 115));
}

uint64_t sub_10071C8FC(uint64_t a1, uint64_t a2)
{
  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168)
  {
    return 1;
  }

  if (qword_102659150 != -1)
  {
    sub_10191C0F8();
  }

  return byte_102659148;
}

uint64_t sub_10071C978(uint64_t a1, uint64_t a2)
{
  if (qword_1026592A8 != -1)
  {
    sub_10191D368();
  }

  return byte_1026592A0;
}

void sub_10071C9B0(id a1)
{
  v1 = MGGetBoolAnswer();
  byte_1026592A0 = v1;
  if (v1)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10191BF9C();
    }

    v2 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Booted in to diagnostics mode", v3, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191D37C();
    }
  }
}

uint64_t sub_10071CA5C(uint64_t a1, uint64_t a2)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168)
  {
    return 1;
  }

  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_102659180 != -1)
  {
    sub_10191C120();
  }

  if (byte_102659178)
  {
    return 1;
  }

  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_102659150 != -1)
  {
    sub_10191C0F8();
  }

  return byte_102659148;
}

BOOL sub_10071CB28(uint64_t a1)
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return (dword_1026592D0 - 168) < 0x18 || (dword_1026592D0 - 234) < 7;
}

BOOL sub_10071CB80(uint64_t a1)
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  if ((dword_1026592D0 - 184) > 0x38 || ((1 << (dword_1026592D0 + 72)) & 0x10000000000003FLL) == 0)
  {
    return (dword_1026592D0 - 174) < 2;
  }

  return result;
}

uint64_t sub_10071CBEC(uint64_t a1)
{
  result = sub_1001C0C18(a1);
  if (result)
  {
    if (qword_102659170 != -1)
    {
      sub_10191C0D0();
    }

    return byte_102659168;
  }

  return result;
}

BOOL sub_10071CC28(uint64_t a1, uint64_t a2)
{
  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168)
  {
    return 1;
  }

  return sub_10071CC78(a1);
}

BOOL sub_10071CC78(uint64_t a1)
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return dword_1026592D0 == 70 || dword_1026592D0 == 73;
}

BOOL sub_10071CCC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_10006FF1C(a1, a2);
  if (v2 || (result = sub_10006FF98(v2, v3)))
  {

    return sub_100714E94();
  }

  return result;
}

BOOL sub_10071CCFC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001B9C14(a1, a2);
  if ((v2 & 1) == 0)
  {
    v2 = sub_10006FE30(v2, v3);
    if ((v2 & 1) == 0)
    {
      v2 = sub_100718F78(v2);
      if (!v2)
      {
        goto LABEL_8;
      }
    }
  }

  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168)
  {
    v4 = 1;
  }

  else
  {
LABEL_8:
    v4 = sub_100718E94(v2);
  }

  sub_10001CAF4(&v9);
  v11 = 0;
  v5 = sub_10001CB4C(v9, "supportsBBTimeFreqTransfer", &v11, 0xFFFFFFFFLL);
  v6 = v11;
  if (v10)
  {
    sub_100008080(v10);
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

void sub_10071CDB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10071CDD0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001B9BE0(a1, a2);
  if ((v2 & 1) == 0)
  {
    v2 = sub_10006FE30(v2, v3);
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168)
  {
    v4 = 1;
  }

  else
  {
LABEL_7:
    v4 = sub_100718E94(v2);
  }

  sub_10001CAF4(&v9);
  v11 = 0;
  v5 = sub_10001CB4C(v9, "supportsGnssDisablementAssertion", &v11, 0xFFFFFFFFLL);
  v6 = v11;
  if (v10)
  {
    sub_100008080(v10);
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

void sub_10071CE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071CE9C()
{
  sub_10001CAF4(&v11);
  v0 = v11;
  v3 = sub_1001B9BE0(v1, v2);
  if ((v3 & 1) != 0 || (v5 = sub_10006FE30(v3, v4)) || sub_100718F78(v5))
  {
    if (qword_102659170 != -1)
    {
      sub_10191C990();
    }

    v6 = byte_102659168;
  }

  else
  {
    v6 = 0;
  }

  v13 = 0;
  v7 = sub_10001CB4C(v0, "supportsGnssStatusQueryAssertion", &v13, 0xFFFFFFFFLL);
  v8 = v13;
  if (v12)
  {
    sub_100008080(v12);
  }

  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  return v9 & 1;
}

void sub_10071CF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071CF68(uint64_t a1, uint64_t a2)
{
  if (!sub_1001B9BE0(a1, a2))
  {
    goto LABEL_8;
  }

  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168 == 1)
  {
    sub_10001CAF4(&v6);
    v8 = 0;
    v2 = sub_10001CB4C(v6, "enableWwanAntTuneGnssL5Blanking", &v8, 0xFFFFFFFFLL);
    v3 = v2 & v8;
    if (v7)
    {
      sub_100008080(v7);
    }

    v4 = 1;
  }

  else
  {
LABEL_8:
    v3 = 0;
    v4 = 0;
  }

  return v3 | (v4 << 8);
}

void sub_10071D008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071D020()
{
  sub_10001CAF4(&v3);
  v5 = 0;
  v0 = sub_1004FB7DC(v3, "ProactiveGnssModePowerBudget", &v5, 0xFFFFFFFFLL);
  v1 = v5;
  if (v4)
  {
    sub_100008080(v4);
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void sub_10071D084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071D09C()
{
  sub_10001CAF4(&v3);
  v5 = 0;
  v0 = sub_10001CB4C(v3, "ProactiveGnssModeSupported", &v5, 0xFFFFFFFFLL);
  v1 = v5;
  if (v4)
  {
    sub_100008080(v4);
  }

  return v0 & v1;
}

void sub_10071D0FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071D114()
{
  sub_10001CAF4(&v3);
  v5 = 0;
  v0 = sub_10001CB4C(v3, "SetLocationStreamingDisabled", &v5, 0xFFFFFFFFLL);
  v1 = v5;
  if (v4)
  {
    sub_100008080(v4);
  }

  return v0 & v1;
}

void sub_10071D174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071D18C()
{
  sub_10001CAF4(&v3);
  v5 = 0;
  v0 = sub_10001CB4C(v3, "externalLocationDisablementAllowed", &v5, 0xFFFFFFFFLL);
  v1 = v5;
  if (v4)
  {
    sub_100008080(v4);
  }

  return v1 | ((v0 & 1) == 0);
}

void sub_10071D1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071D208(uint64_t a1, uint64_t a2)
{
  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168 == 1 && (v2 = sub_1000733FC(a1, a2), (v2 & 1) == 0))
  {
    return sub_1000734AC(v2, v3) ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10071D25C(uint64_t a1)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 115) < 0xB) & (0x601u >> (dword_1026592D0 - 115));
}

uint64_t sub_10071D2C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001B9C14(a1, a2);
  if ((v2 & 1) != 0 || (v4 = sub_10006FE30(v2, v3)) || sub_100718F78(v4))
  {
    if (qword_102659170 != -1)
    {
      sub_10191C0D0();
    }

    v5 = byte_102659168;
  }

  else
  {
    v5 = 0;
  }

  sub_10001CAF4(&v10);
  v12 = 0;
  v6 = sub_10001CB4C(v10, "SupportPeriodicRefPosMaintenance", &v12, 0xFFFFFFFFLL);
  v7 = v12;
  if (v11)
  {
    sub_100008080(v11);
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  return v8 & 1;
}

void sub_10071D370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10071D38C(id a1)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168 == 1)
  {
    v2 = sub_10006FB70(a1, v1);
    v7 = (v2 & 1) != 0 || (v4 = sub_1000733FC(v2, v3), (v4 & 1) != 0) || (v6 = sub_1000734AC(v4, v5), (v6 & 1) != 0) || sub_100718F78(v6);
  }

  else
  {
    v7 = 0;
  }

  byte_1026592B0 = v7;
}

uint64_t sub_10071D414()
{
  sub_10001CAF4(&v3);
  v5 = 0;
  v0 = sub_10001CB4C(v3, "RayTracingTileManagerSupport", &v5, 0xFFFFFFFFLL);
  v1 = v5;
  if (v4)
  {
    sub_100008080(v4);
  }

  return v0 & v1;
}

void sub_10071D474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10071D48C(uint64_t a1)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  if ((dword_1026592D0 - 180) > 0x3C || ((1 << (dword_1026592D0 + 76)) & 0x1F00000000000FFFLL) == 0)
  {
    return (dword_1026592D0 - 174) < 2;
  }

  return result;
}

uint64_t sub_10071D50C()
{
  sub_10001CAF4(&v3);
  v5 = 0;
  v0 = sub_10001CB4C(v3, "GNSSSupportsDynamicL1TuningDesireValue", &v5, 0xFFFFFFFFLL);
  v1 = v5;
  if (v4)
  {
    sub_100008080(v4);
  }

  return v0 & v1;
}

void sub_10071D56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071D584()
{
  sub_10001CAF4(&v6);
  v0 = v6;
  if (qword_102659170 != -1)
  {
    sub_10191C990();
  }

  v1 = byte_102659168;
  v8 = 0;
  v2 = sub_10001CB4C(v0, "supportsProactiveLocation", &v8, 0xFFFFFFFFLL);
  v3 = v8;
  if (v7)
  {
    sub_100008080(v7);
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1;
  }

  return v4 & 1;
}

void sub_10071D618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10071D630(uint64_t a1)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 82) & 0xFFFFFFF9) == 0;
}

void sub_10071D6B8(id a1)
{
  v1 = objc_autoreleasePoolPush();
  byte_1026592C8 = 0;
  v2 = CFPreferencesCopyValue(@"StoreDemoMode", @"com.apple.demo-settings", @"mobile", kCFPreferencesAnyHost);
  if (v2)
  {
    v3 = v2;
    CFAutorelease(v2);
    v4 = CFGetTypeID(v3);
    if (v4 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v3))
      {
        v5 = CFPreferencesCopyValue(@"FProgramNumber", @"com.apple.demo-settings", @"mobile", kCFPreferencesAnyHost);
        if (v5)
        {
          v6 = v5;
          CFAutorelease(v5);
          v7 = CFGetTypeID(v6);
          if (v7 == CFNumberGetTypeID())
          {
            valuePtr = 0;
            if (CFNumberGetValue(v6, kCFNumberIntType, &valuePtr))
            {
              byte_1026592C8 = valuePtr == 5;
            }
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v1);
}

void sub_10071D8BC(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();

  sub_10071DFFC(a1, 0xE, Current);
}

uint64_t sub_10071D908(uint64_t a1, uint64_t a2)
{
  if (uuid_compare((a1 + 448), (a2 + 72)))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 114) ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_10071D96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, __int128 *a7)
{
  *a1 = &unk_10246D2B0;
  *(a1 + 8) = 23;
  *(a1 + 16) = 512;
  *(a1 + 24) = *a3;
  if (*(a3 + 39) < 0)
  {
    sub_100007244((a1 + 40), *(a3 + 16), *(a3 + 24));
  }

  else
  {
    v14 = *(a3 + 16);
    *(a1 + 56) = *(a3 + 32);
    *(a1 + 40) = v14;
  }

  sub_10069B5FC((a1 + 64), (a3 + 40));
  *(a1 + 112) = *(a3 + 80) > 1uLL;
  *(a1 + 113) = a5;
  *(a1 + 114) = 0;
  *(a1 + 120) = a4;
  bzero((a1 + 128), 0x230uLL);
  *(a1 + 688) = a6;
  v31[0] = off_10246D508;
  v31[1] = a1;
  v31[3] = v31;
  sub_1008AF580((a1 + 696));
  sub_100697F4C(v31);
  *(a1 + 752) = *(a4 + 296);
  v15 = *a7;
  v16 = a7[2];
  *(a1 + 776) = a7[1];
  *(a1 + 792) = v16;
  *(a1 + 760) = v15;
  uuid_copy((a1 + 600), a3);
  std::string::operator=((a1 + 616), (a3 + 16));
  sub_10071DC3C(a2, v29);
  v17 = v29[11];
  *(a1 + 392) = v29[10];
  *(a1 + 408) = v17;
  *(a1 + 424) = v29[12];
  *(a1 + 440) = v30;
  v18 = v29[7];
  *(a1 + 328) = v29[6];
  *(a1 + 344) = v18;
  v19 = v29[9];
  *(a1 + 360) = v29[8];
  *(a1 + 376) = v19;
  v20 = v29[3];
  *(a1 + 264) = v29[2];
  *(a1 + 280) = v20;
  v21 = v29[5];
  *(a1 + 296) = v29[4];
  *(a1 + 312) = v21;
  v22 = v29[1];
  *(a1 + 232) = v29[0];
  *(a1 + 248) = v22;
  v23 = *(a1 + 408);
  *(a1 + 544) = *(a1 + 392);
  *(a1 + 560) = v23;
  *(a1 + 576) = *(a1 + 424);
  *(a1 + 592) = *(a1 + 440);
  v24 = *(a1 + 344);
  *(a1 + 480) = *(a1 + 328);
  *(a1 + 496) = v24;
  v25 = *(a1 + 376);
  *(a1 + 512) = *(a1 + 360);
  *(a1 + 528) = v25;
  v26 = *(a1 + 312);
  *(a1 + 448) = *(a1 + 296);
  *(a1 + 464) = v26;
  sub_1011665F8((a1 + 128), a1 + 232, v29);
  sub_10069C000((a1 + 640), v29);
  sub_100666704(v29);
  sub_10071DCD4(a1);
  sub_10071DE58(a1);
  Current = CFAbsoluteTimeGetCurrent();
  sub_10071DFFC(a1, 0xD, Current);
  return a1;
}

void sub_10071DBA8(_Unwind_Exception *a1)
{
  sub_10071FBA4((v1 + 87));
  sub_100697CDC((v1 + 75));
  v3 = v1[28];
  v1[28] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_100666704(v1 + 22);
  sub_100666704(v1 + 16);
  sub_10184081C((v1 + 3));
  _Unwind_Resume(a1);
}

void sub_10071DC3C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = CFAbsoluteTimeGetCurrent();
  *(a2 + 8) = 0xBFF0000000000000;
  *(a2 + 16) = 23;
  *(a2 + 24) = 0xBFF0000000000000;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  v4 = *(a1 + 112);
  *(a2 + 160) = *(a1 + 96);
  *(a2 + 176) = v4;
  *(a2 + 192) = *(a1 + 128);
  *(a2 + 208) = *(a1 + 144);
  v5 = *(a1 + 48);
  *(a2 + 96) = *(a1 + 32);
  *(a2 + 112) = v5;
  v6 = *(a1 + 80);
  *(a2 + 128) = *(a1 + 64);
  *(a2 + 144) = v6;
  v7 = *(a1 + 16);
  *(a2 + 64) = *a1;
  *(a2 + 80) = v7;
  uuid_copy((a2 + 64), a1);

  uuid_copy((a2 + 80), (a1 + 16));
}

uint64_t sub_10071DCD4(uint64_t result)
{
  if (*(result + 112) == 1)
  {
    v1 = result;
    if (!*(result + 224))
    {
      if (qword_1025D43F0 != -1)
      {
        sub_10191D474();
      }

      v2 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        *v3 = 0;
        _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLWorkoutSeriesPredictor, bringing up CLWorkoutSeriesDetectionModelController", v3, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191D488();
      }

      if (*(v1 + 760) == 1)
      {
        operator new();
      }

      operator new();
    }
  }

  return result;
}

uint64_t sub_10071DE58(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v2 == 3 || v2 == 5;
  if (v3 || *(a1 + 440) == 1)
  {
    if (*(a1 + 112) == 1)
    {
      if (qword_1025D43F0 != -1)
      {
        sub_10191D474();
      }

      v4 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "Disabling power assertion when auto detection is enabled", v8, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10191D56C();
      }
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  if (qword_1025D43F0 != -1)
  {
    sub_10191D654();
  }

  v6 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Notifying clients with power assertion update, shouldEnablePowerAssertion,%d", v8, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191D67C(v5);
  }

  return (*(**(a1 + 688) + 48))(*(a1 + 688), v5);
}

void sub_10071DFFC(uint64_t a1, int *a2, double a3)
{
  v17 = *(a1 + 232);
  v18 = a2;
  v19 = a3;
  v20 = 0u;
  v21 = 0u;
  v6 = *(a1 + 408);
  v28 = *(a1 + 392);
  v29 = v6;
  v30 = *(a1 + 424);
  v31 = *(a1 + 440);
  v7 = *(a1 + 344);
  v24 = *(a1 + 328);
  v25 = v7;
  v8 = *(a1 + 376);
  v26 = *(a1 + 360);
  v27 = v8;
  v9 = *(a1 + 312);
  v22 = *(a1 + 296);
  v23 = v9;
  if (*(a1 + 328) == 14)
  {
    *(&v21 + 1) = *(a1 + 344);
  }

  uuid_copy(&v22, (a1 + 296));
  uuid_copy(&v23, (a1 + 312));
  if (qword_1025D43F0 != -1)
  {
    sub_10191D654();
  }

  v10 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218240;
    v14 = *&a3;
    v15 = 2048;
    v16 = a2;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "CLWorkoutSeriesPredictor, notify session update, eventTime,%f, eventType,%ld", &v13, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191D778(a2, a3);
  }

  if (a2 > 15)
  {
    if (a2 == 16)
    {
      (*(**(a1 + 688) + 24))(*(a1 + 688), &v17, a1 + 600);
      return;
    }

    if (a2 == 17)
    {
      (*(**(a1 + 688) + 32))(*(a1 + 688), &v17, a1 + 600);
      return;
    }

    if (a2 != 18)
    {
      goto LABEL_22;
    }

    if (v24 != 33)
    {
      sub_1008AF6F0((a1 + 696), v24, *(&v24 + 1), v25, *(&v25 + 1), v11);
      sub_1008AFA98((a1 + 696));
    }

    (*(**(a1 + 688) + 40))(*(a1 + 688), &v17, a1 + 600, *(a1 + 808));
  }

  else
  {
    if (a2 == 13)
    {
      sub_1008AF7F0((a1 + 696));
      (***(a1 + 688))(*(a1 + 688), &v17, a1 + 600);
      return;
    }

    if (a2 != 14)
    {
      if (a2 == 15)
      {
        sub_1008AF7F0((a1 + 696));
        (*(**(a1 + 688) + 8))(*(a1 + 688), &v17, a1 + 600);
        return;
      }

LABEL_22:
      if (qword_1025D43F0 != -1)
      {
        sub_10191D654();
      }

      v12 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
      {
        v13 = 134217984;
        v14 = a2;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "CLWorkoutSeriesPredictor, tried to notify invalid event type, eventType, %ld", &v13, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10191D88C(a2);
      }

      return;
    }

    if (v24 != 33)
    {
      sub_1008AF6F0((a1 + 696), v24, *(&v24 + 1), v25, *(&v25 + 1), v11);
      sub_1008AFA98((a1 + 696));
    }

    (*(**(a1 + 688) + 16))(*(a1 + 688), &v17, a1 + 600);
  }
}

uint64_t sub_10071E3BC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v47 = 0;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  sub_10071DC3C(a2, &v34);
  if (v40 == 33)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10191D654();
    }

    v5 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v34;
      *&buf[12] = 1024;
      *&buf[14] = a3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLWorkoutSeriesPredictor, client confirmed transition segment, startTime,%f, isManualTransition,%d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191D994(&v34, a3);
    }

    v29 = v44;
    v30 = v45;
    v31 = v46;
    v32 = v47;
    v25 = v40;
    v26 = v41;
    v27 = v42;
    v28 = v43;
    v21 = v36;
    v22 = v37;
    v23 = v38;
    v24 = v39;
    *buf = v34;
    *&buf[16] = v35;
    v33 = a3;
    v6 = a1;
    v7 = 2;
  }

  else
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10191D654();
    }

    v8 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218752;
      *&buf[4] = v40;
      *&buf[12] = 2048;
      *&buf[14] = *(&v40 + 1);
      *&buf[22] = 2048;
      *&buf[24] = v34;
      LOWORD(v21) = 1024;
      *(&v21 + 2) = a3;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "CLWorkoutSeriesPredictor, client confirmed workout segment, workoutType,%ld, workoutLocationType,%ld, startTime,%f, isManualTransition,%d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D43F0 != -1)
      {
        sub_10191D654();
      }

      v12 = 134218752;
      v13 = v40;
      v14 = 2048;
      v15 = *(&v40 + 1);
      v16 = 2048;
      v17 = v34;
      v18 = 1024;
      v19 = a3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43F8, 0, "CLWorkoutSeriesPredictor, client confirmed workout segment, workoutType,%ld, workoutLocationType,%ld, startTime,%f, isManualTransition,%d", &v12, 38);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWorkoutSeriesPredictor::feedSetCurrentWorkoutType(const CLMotionStateMediator_Type::WorkoutSettings &, BOOL)", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    v29 = v44;
    v30 = v45;
    v31 = v46;
    v32 = v47;
    v25 = v40;
    v26 = v41;
    v27 = v42;
    v28 = v43;
    v21 = v36;
    v22 = v37;
    v23 = v38;
    v24 = v39;
    *buf = v34;
    *&buf[16] = v35;
    v33 = a3;
    v6 = a1;
    v7 = 1;
  }

  return sub_1000CE87C(v6, v7, buf);
}

void sub_10071E75C(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    sub_100D9015C(v2, &v59);
    v4 = __p;
    v5 = v77;
    while (v4 != v5)
    {
      v6 = v4[12];
      if (v6 != *(a1 + 328) || v4[13] != *(a1 + 336))
      {
        v7 = v4[2];
        if (v7 == 21)
        {
          sub_1008AF584((a1 + 696), v6, v4[13], v3);
        }

        else if (v7 == 20)
        {
          sub_1008AF9E8((a1 + 696), v6, v4[13], v4[14], v4[15], v3);
        }
      }

      v4 += 27;
    }

    v25 = v60;
    v8 = v59;
    v9 = v61;
    v55 = v62;
    v56 = v63;
    v57 = v64;
    v58 = v65;
    v10 = v66;
    v11 = v67;
    v12 = v68;
    v13 = v69;
    v54 = v75;
    v53 = v74;
    v52 = v73;
    v51 = v72;
    v50 = v71;
    v49 = v70;
    if (v66)
    {
      v14 = sub_1008AF980((a1 + 696), v66, v67, v71);
      v15 = v14;
      if (v8 < v14)
      {
        v14 = v8;
      }

      if (v15 == -1.0)
      {
        v16 = v8;
      }

      else
      {
        v16 = v14;
      }

      v17 = *(a1 + 232);
      if (v16 <= v17)
      {
        v18 = v17 + 2.22044605e-16;
        if (v16 < v18)
        {
          v16 = v18;
        }

        if (qword_1025D43F0 != -1)
        {
          sub_10191D654();
        }

        v19 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_FAULT))
        {
          v20 = *(a1 + 232);
          *buf = 134218752;
          *&buf[4] = v8;
          *&buf[12] = 2048;
          *&buf[14] = v15;
          *&buf[22] = 2048;
          *&buf[24] = v20;
          *v35 = 2048;
          *&v35[2] = v16;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "CLWorkoutSeriesPredictor, detected workout time must be later than current segment start time, adjusting detection time, detectedStartTime, %f, prewarmStartTime, %f, currentStartTime, %f, filteredStartTime, %f", buf, 0x2Au);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10191DAA8(buf);
          v21 = *(a1 + 232);
          v26 = 134218752;
          v27 = v8;
          v28 = 2048;
          v29 = v15;
          v30 = 2048;
          v31 = v21;
          v32 = 2048;
          v33 = v16;
          LODWORD(v24) = 42;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43F8, 17, "CLWorkoutSeriesPredictor, detected workout time must be later than current segment start time, adjusting detection time, detectedStartTime, %f, prewarmStartTime, %f, currentStartTime, %f, filteredStartTime, %f", COERCE_DOUBLE(&v26), v24, *&v25, *(&v25 + 1));
          v23 = v22;
          sub_100152C7C("Generic", 1, 0, 0, "void CLWorkoutSeriesPredictor::feedMotionStateUpdate(const CLWorkoutPredictorActivity &)", "%s\n", v22);
          if (v23 != buf)
          {
            free(v23);
          }
        }
      }

      *buf = v9;
      *&buf[8] = v16;
      *&buf[16] = v25;
      *v35 = 0xBFF0000000000000;
      *&v35[8] = v55;
      v36 = v56;
      v37 = v57;
      v38 = v58;
      v39 = v10;
      v40 = v11;
      v41 = v12;
      v42 = v13;
      v48 = v54;
      v47 = v53;
      v46 = v52;
      v45 = v51;
      v44 = v50;
      v43 = v49;
      sub_1000CE87C(a1, 3, buf);
    }

    if (__p)
    {
      v77 = __p;
      operator delete(__p);
    }
  }
}

void sub_10071EAF0(_Unwind_Exception *a1)
{
  v2 = STACK[0x830];
  if (STACK[0x830])
  {
    STACK[0x838] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10071EB24(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_1025D43F0 != -1)
  {
    sub_10191D474();
  }

  v3 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 134217984;
    *&v5[4] = Current;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CLWorkoutSeriesPredictor, client confirmed manual pause, startTime,%f", v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191DAEC();
  }

  *v5 = Current;
  return sub_1000CE87C(a1, 4, v5);
}

uint64_t sub_10071EC1C(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_1025D43F0 != -1)
  {
    sub_10191D474();
  }

  v3 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 134217984;
    *&v5[4] = Current;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CLWorkoutSeriesPredictor, workout session end, endTime,%f", v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191DBE0();
  }

  *v5 = Current;
  return sub_1000CE87C(a1, 5, v5);
}

uint64_t **sub_10071ED14(uint64_t a1)
{
  if (*(a1 + 112) == 1 && *(a1 + 224))
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10191D474();
    }

    v2 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Tearing down CLWorkoutSeriesDetectionModelController", v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191DCD4();
    }

    v3 = *(a1 + 224);
    *(a1 + 224) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  return sub_1008AF7F0((a1 + 696));
}

void sub_10071EDF8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 114) = 0;
  v9 = *(a1 + 408);
  *(a1 + 544) = *(a1 + 392);
  *(a1 + 560) = v9;
  *(a1 + 576) = *(a1 + 424);
  *(a1 + 592) = *(a1 + 440);
  v10 = *(a1 + 344);
  *(a1 + 480) = *(a1 + 328);
  *(a1 + 496) = v10;
  v11 = *(a1 + 376);
  *(a1 + 512) = *(a1 + 360);
  *(a1 + 528) = v11;
  v12 = *(a1 + 312);
  *(a1 + 448) = *(a1 + 296);
  *(a1 + 464) = v12;
  v13 = *(a1 + 224);
  if (v13)
  {
    sub_100D8F6D4(v13, a2, a2[216]);
  }

  sub_101166638((a1 + 128), a2, &v23, a2[216], a4, a5, a6, a7, a8);
  sub_10069C000((a1 + 640), &v23);
  sub_100666704(&v23);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v14 = *(a1 + 680);
  if (v14)
  {
    v15 = *(*(a1 + 648) + 8 * ((v14 + *(a1 + 672) - 1) / 0x12uLL)) + 216 * ((v14 + *(a1 + 672) - 1) % 0x12uLL);
    v33 = *(v15 + 160);
    v34 = *(v15 + 176);
    v35 = *(v15 + 192);
    v36 = *(v15 + 208);
    v29 = *(v15 + 96);
    v30 = *(v15 + 112);
    v31 = *(v15 + 128);
    v32 = *(v15 + 144);
    v25 = *(v15 + 32);
    v26 = *(v15 + 48);
    v27 = *(v15 + 64);
    v28 = *(v15 + 80);
    v23 = *v15;
    v24 = *(v15 + 16);
  }

  *(a1 + 440) = v36;
  v16 = v24;
  *(a1 + 232) = v23;
  *(a1 + 248) = v16;
  v17 = v34;
  *(a1 + 392) = v33;
  *(a1 + 408) = v17;
  *(a1 + 424) = v35;
  v18 = v30;
  *(a1 + 328) = v29;
  *(a1 + 344) = v18;
  v19 = v32;
  *(a1 + 360) = v31;
  *(a1 + 376) = v19;
  v20 = v26;
  *(a1 + 264) = v25;
  *(a1 + 280) = v20;
  v21 = v28;
  *(a1 + 296) = v27;
  *(a1 + 312) = v21;
  Current = CFAbsoluteTimeGetCurrent();
  sub_10071DFFC(a1, 0xE, Current);
}

void sub_10071EFFC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 224);
  if (v10)
  {
    sub_100D8F820(v10, a2[216]);
  }

  sub_101166638((a1 + 128), a2, &v20, a2[216], a4, a5, a6, a7, a8);
  sub_10069C000((a1 + 640), &v20);
  sub_100666704(&v20);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  v11 = *(a1 + 680);
  if (v11)
  {
    v12 = *(*(a1 + 648) + 8 * ((v11 + *(a1 + 672) - 1) / 0x12uLL)) + 216 * ((v11 + *(a1 + 672) - 1) % 0x12uLL);
    v30 = *(v12 + 160);
    v31 = *(v12 + 176);
    v32 = *(v12 + 192);
    v33 = *(v12 + 208);
    v26 = *(v12 + 96);
    v27 = *(v12 + 112);
    v28 = *(v12 + 128);
    v29 = *(v12 + 144);
    v22 = *(v12 + 32);
    v23 = *(v12 + 48);
    v24 = *(v12 + 64);
    v25 = *(v12 + 80);
    v20 = *v12;
    v21 = *(v12 + 16);
  }

  *(a1 + 440) = v33;
  v13 = v21;
  *(a1 + 232) = v20;
  *(a1 + 248) = v13;
  v14 = v31;
  *(a1 + 392) = v30;
  *(a1 + 408) = v14;
  *(a1 + 424) = v32;
  v15 = v27;
  *(a1 + 328) = v26;
  *(a1 + 344) = v15;
  v16 = v29;
  *(a1 + 360) = v28;
  *(a1 + 376) = v16;
  v17 = v23;
  *(a1 + 264) = v22;
  *(a1 + 280) = v17;
  v18 = v25;
  *(a1 + 296) = v24;
  *(a1 + 312) = v18;
  Current = CFAbsoluteTimeGetCurrent();
  sub_10071DFFC(a1, 0xE, Current);
}

void sub_10071F1C4(uint64_t a1, double *a2)
{
  *(a1 + 240) = *a2;
  sub_10071ED14(a1);
  sub_1011673BC((a1 + 128), v5, *a2);
  sub_10069C000((a1 + 640), v5);
  sub_100666704(v5);
  sub_10071DE58(a1);
  Current = CFAbsoluteTimeGetCurrent();
  sub_10071DFFC(a1, 0x10, Current);
}

void sub_10071F238(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 248) = a2[1];
  *(a1 + 232) = v4;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[5];
  *(a1 + 296) = a2[4];
  *(a1 + 312) = v7;
  *(a1 + 264) = v5;
  *(a1 + 280) = v6;
  v8 = a2[6];
  v9 = a2[7];
  v10 = a2[9];
  *(a1 + 360) = a2[8];
  *(a1 + 376) = v10;
  *(a1 + 328) = v8;
  *(a1 + 344) = v9;
  v11 = a2[10];
  v12 = a2[11];
  v13 = a2[12];
  *(a1 + 440) = *(a2 + 26);
  *(a1 + 408) = v12;
  *(a1 + 424) = v13;
  *(a1 + 392) = v11;
  memmove((a1 + 448), a2 + 4, 0x98uLL);
  sub_101166638((a1 + 128), a2, v19, *(a2 + 216), v14, v15, v16, v17, v18);
  sub_10069C000((a1 + 640), v19);
  sub_100666704(v19);
  sub_10071F2F0(a1);
}

void sub_10071F2F0(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10191D474();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLWorkoutSeriesPredictor, exiting manual pause", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191DDB0();
  }

  sub_10071DCD4(a1);
  sub_10071DE58(a1);
  Current = CFAbsoluteTimeGetCurrent();
  sub_10071DFFC(a1, 0x11, Current);
}

void sub_10071F3A8(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  *(a1 + 248) = a2[1];
  *(a1 + 232) = v9;
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[5];
  *(a1 + 296) = a2[4];
  *(a1 + 312) = v12;
  *(a1 + 264) = v10;
  *(a1 + 280) = v11;
  v13 = a2[6];
  v14 = a2[7];
  v15 = a2[9];
  *(a1 + 360) = a2[8];
  *(a1 + 376) = v15;
  *(a1 + 328) = v13;
  *(a1 + 344) = v14;
  v16 = a2[10];
  v17 = a2[11];
  v18 = a2[12];
  *(a1 + 440) = *(a2 + 26);
  *(a1 + 408) = v17;
  *(a1 + 424) = v18;
  *(a1 + 392) = v16;
  sub_101166638((a1 + 128), a2, v19, *(a2 + 216), a4, a5, a6, a7, a8);
  sub_10069C000((a1 + 640), v19);
  sub_100666704(v19);
  sub_10071F44C(a1);
}

void sub_10071F44C(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10191D474();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLWorkoutSeriesPredictor, exiting manual pause", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191DE8C();
  }

  sub_10071DCD4(a1);
  sub_10071DE58(a1);
  Current = CFAbsoluteTimeGetCurrent();
  sub_10071DFFC(a1, 0x11, Current);
}

void sub_10071F504(uint64_t a1, __int128 *a2)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10191D474();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLWorkoutSeriesPredictor, exiting manual pause into detected transition", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191DF68();
  }

  Current = CFAbsoluteTimeGetCurrent();
  v11 = *(a1 + 240);
  v6 = *(a1 + 408);
  v36 = *(a1 + 392);
  v37 = v6;
  v38 = *(a1 + 424);
  v39 = *(a1 + 440);
  v7 = *(a1 + 344);
  v32 = *(a1 + 328);
  v33 = v7;
  v8 = *(a1 + 376);
  v34 = *(a1 + 360);
  v35 = v8;
  v9 = *(a1 + 280);
  v28 = *(a1 + 264);
  v29 = v9;
  v10 = *(a1 + 312);
  v30 = *(a1 + 296);
  v31 = v10;
  sub_10071F238(a1, a2);
  *buf = Current;
  v13 = Current;
  v14 = v11;
  v15 = Current;
  v24 = v36;
  v25 = v37;
  v26 = v38;
  v27 = v39;
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v23 = v35;
  v16 = v28;
  v17 = v29;
  v18 = v30;
  v19 = v31;
  sub_10071F6A0(a1, buf);
}

void sub_10071F6A0(uint64_t a1, uint64_t a2)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10191D474();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 104);
    v6 = *(a2 + 112);
    v7 = *(a2 + 8);
    v9 = 134218496;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    v13 = 2048;
    v14 = v7;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLWorkoutSeriesPredictor, auto-detected new workout, workoutType,%ld, workoutLocationType,%ld, detectionTime,%f", &v9, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191E044(a2);
  }

  v8 = (*(a1 + 114) & 1) != 0 || *(a2 + 104) != 33;
  *(a1 + 114) = v8;
  sub_101166F38((a1 + 128), (a2 + 8), &v9);
  sub_10069C000((a1 + 640), &v9);
  sub_100666704(&v9);
  sub_100D8F8D4(*(a1 + 224), a2 + 8);
}

void sub_10071F864(uint64_t a1, double *a2)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10191D474();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLWorkoutSeriesPredictor, auto-detected current confirmed workout, removing detected transition", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191E15C();
  }

  sub_101166FD0((a1 + 128), (a2 + 1), v5);
  sub_10069C000((a1 + 640), v5);
  sub_100666704(v5);
  sub_100D8F8D4(*(a1 + 224), (a2 + 1));
}

uint64_t **sub_10071F9D8(uint64_t a1, double *a2)
{
  sub_1011673BC((a1 + 128), &v13, *a2);
  sub_10069C000((a1 + 640), &v13);
  sub_100666704(&v13);
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v4 = *(a1 + 680);
  if (v4)
  {
    v5 = *(*(a1 + 648) + 8 * ((v4 + *(a1 + 672) - 1) / 0x12uLL)) + 216 * ((v4 + *(a1 + 672) - 1) % 0x12uLL);
    v23 = *(v5 + 160);
    v24 = *(v5 + 176);
    v25 = *(v5 + 192);
    v26 = *(v5 + 208);
    v19 = *(v5 + 96);
    v20 = *(v5 + 112);
    v21 = *(v5 + 128);
    v22 = *(v5 + 144);
    v15 = *(v5 + 32);
    v16 = *(v5 + 48);
    v17 = *(v5 + 64);
    v18 = *(v5 + 80);
    v13 = *v5;
    v14 = *(v5 + 16);
  }

  *(a1 + 440) = v26;
  v6 = v14;
  *(a1 + 232) = v13;
  *(a1 + 248) = v6;
  v7 = v24;
  *(a1 + 392) = v23;
  *(a1 + 408) = v7;
  *(a1 + 424) = v25;
  v8 = v20;
  *(a1 + 328) = v19;
  *(a1 + 344) = v8;
  v9 = v22;
  *(a1 + 360) = v21;
  *(a1 + 376) = v9;
  v10 = v16;
  *(a1 + 264) = v15;
  *(a1 + 280) = v10;
  v11 = v18;
  *(a1 + 296) = v17;
  *(a1 + 312) = v11;
  *(a1 + 240) = *a2;
  sub_10071DE58(a1);
  sub_10071DFFC(a1, 0xF, *a2);
  return sub_10071ED14(a1);
}

uint64_t sub_10071FBA4(uint64_t a1)
{
  sub_100697F4C(a1 + 24);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10071FC80(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10246D508;
  a2[1] = v2;
  return result;
}

uint64_t sub_10071FCAC(uint64_t a1)
{
  result = *(*(a1 + 8) + 688);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t sub_10071FCE0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10071FF7C()
{
  if (qword_102637220)
  {
    (*(*qword_102637220 + 8))(qword_102637220);
  }

  if (qword_102637228)
  {
    (*(*qword_102637228 + 8))(qword_102637228);
  }

  if (qword_102637230)
  {
    (*(*qword_102637230 + 8))(qword_102637230);
  }

  if (qword_102637238)
  {
    (*(*qword_102637238 + 8))(qword_102637238);
  }

  if (qword_102637240)
  {
    (*(*qword_102637240 + 8))(qword_102637240);
  }

  if (qword_102637248)
  {
    (*(*qword_102637248 + 8))(qword_102637248);
  }

  if (qword_102637250)
  {
    (*(*qword_102637250 + 8))(qword_102637250);
  }

  if (qword_102637258)
  {
    (*(*qword_102637258 + 8))(qword_102637258);
  }

  if (qword_102637260)
  {
    (*(*qword_102637260 + 8))(qword_102637260);
  }

  if (qword_102637268)
  {
    (*(*qword_102637268 + 8))(qword_102637268);
  }

  if (qword_102637270)
  {
    (*(*qword_102637270 + 8))(qword_102637270);
  }

  result = qword_102637278;
  if (qword_102637278)
  {
    v1 = *(*qword_102637278 + 8);

    return v1();
  }

  return result;
}

void sub_1007201E4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_1026593D0 & 1) == 0)
  {
    byte_1026593D0 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/ProtobufDefs/GnssTypes.pb.cc", a4);
    sub_100D0BBD0(v4, v5, v6, v7);
    operator new();
  }
}

uint64_t sub_100720678(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_10246D878;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1007206A0(uint64_t result)
{
  *result = off_10246D968;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1007206C8(uint64_t result)
{
  *(result + 20) = 0;
  *result = off_10246DA58;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void sub_100720700(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 96);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v10 = *(a2 + 8);
    *(a1 + 96) |= 1u;
    *(a1 + 8) = v10;
    v4 = *(a2 + 96);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(a2 + 16);
  *(a1 + 96) |= 2u;
  *(a1 + 16) = v11;
  v4 = *(a2 + 96);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  v12 = *(a2 + 24);
  *(a1 + 96) |= 4u;
  *(a1 + 24) = v12;
  v4 = *(a2 + 96);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = *(a2 + 32);
  *(a1 + 96) |= 8u;
  *(a1 + 32) = v13;
  v4 = *(a2 + 96);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_30:
    v15 = *(a2 + 48);
    *(a1 + 96) |= 0x20u;
    *(a1 + 48) = v15;
    v4 = *(a2 + 96);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_29:
  v14 = *(a2 + 40);
  *(a1 + 96) |= 0x10u;
  *(a1 + 40) = v14;
  v4 = *(a2 + 96);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_30;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_31:
  v16 = *(a2 + 56);
  *(a1 + 96) |= 0x40u;
  *(a1 + 56) = v16;
  v4 = *(a2 + 96);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 64);
    *(a1 + 96) |= 0x80u;
    *(a1 + 64) = v5;
    v4 = *(a2 + 96);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 72);
      *(a1 + 96) |= 0x100u;
      *(a1 + 72) = v6;
      v4 = *(a2 + 96);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 76);
      if (!sub_1001348E0(v7))
      {
        sub_10191E374();
      }

      *(a1 + 96) |= 0x200u;
      *(a1 + 76) = v7;
      v4 = *(a2 + 96);
    }

    if ((v4 & 0x400) != 0)
    {
      v8 = *(a2 + 80);
      *(a1 + 96) |= 0x400u;
      *(a1 + 80) = v8;
      v4 = *(a2 + 96);
    }

    if ((v4 & 0x800) != 0)
    {
      v9 = *(a2 + 88);
      if (v9 >= 6)
      {
        sub_10191E3A0();
      }

      *(a1 + 96) |= 0x800u;
      *(a1 + 88) = v9;
    }
  }
}

void sub_100720914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10072094C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102637220;
  if (!qword_102637220)
  {
    sub_1007201E4(0, a2, a3, a4);
    return qword_102637220;
  }

  return result;
}

uint64_t sub_1007209E0(uint64_t result)
{
  v1 = *(result + 96);
  if (v1)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
  }

  *(result + 96) = 0;
  return result;
}

void sub_100720A18(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100720700(a1, lpsrc);
}

double sub_100720AB8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 60);
  if (v5)
  {
    if (*(a2 + 60))
    {
      result = *(a2 + 8);
      *(a1 + 60) |= 1u;
      *(a1 + 8) = result;
      v5 = *(a2 + 60);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 16);
    *(a1 + 60) |= 2u;
    *(a1 + 16) = result;
    v5 = *(a2 + 60);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_14:
    result = *(a2 + 24);
    *(a1 + 60) |= 4u;
    *(a1 + 24) = result;
    v5 = *(a2 + 60);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

LABEL_15:
    result = *(a2 + 32);
    *(a1 + 60) |= 8u;
    *(a1 + 32) = result;
    v5 = *(a2 + 60);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        return result;
      }

      goto LABEL_10;
    }

LABEL_16:
    result = *(a2 + 40);
    *(a1 + 60) |= 0x10u;
    *(a1 + 40) = result;
    if ((*(a2 + 60) & 0x20) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 48);
    *(a1 + 60) |= 0x20u;
    *(a1 + 48) = result;
  }

  return result;
}

void sub_100720BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100720C80(uint64_t result)
{
  if (*(result + 60))
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  *(result + 60) = 0;
  return result;
}

uint64_t sub_100720CA0(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 60);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v5 = *(v4 + 60);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
  v5 = *(v4 + 60);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 24), a3);
  v5 = *(v4 + 60);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v4 + 40), a3);
    if ((*(v4 + 60) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 32), a3);
  v5 = *(v4 + 60);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v5 & 0x20) == 0)
  {
    return result;
  }

LABEL_13:
  v6 = *(v4 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, v6, a3);
}

uint64_t sub_100720D80(uint64_t a1)
{
  v1 = *(a1 + 60);
  if (*(a1 + 60))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 8) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x10) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x20) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 56) = v1;
  return v1;
}

double sub_100720DDC(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100720AB8(a1, lpsrc);
}

void sub_100720E7C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = *(a2 + 72);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 8);
    *(a1 + 72) |= 1u;
    *(a1 + 8) = v7;
    v4 = *(a2 + 72);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 16);
  *(a1 + 72) |= 2u;
  *(a1 + 16) = v8;
  v4 = *(a2 + 72);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 20);
  *(a1 + 72) |= 4u;
  *(a1 + 20) = v9;
  v4 = *(a2 + 72);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 64);
  *(a1 + 72) |= 8u;
  *(a1 + 64) = v10;
  v4 = *(a2 + 72);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v12 = *(a2 + 32);
    *(a1 + 72) |= 0x20u;
    *(a1 + 32) = v12;
    v4 = *(a2 + 72);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  v11 = *(a2 + 24);
  *(a1 + 72) |= 0x10u;
  *(a1 + 24) = v11;
  v4 = *(a2 + 72);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v13 = *(a2 + 40);
  *(a1 + 72) |= 0x40u;
  *(a1 + 40) = v13;
  v4 = *(a2 + 72);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 48);
    *(a1 + 72) |= 0x80u;
    *(a1 + 48) = v5;
    v4 = *(a2 + 72);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 56);
    *(a1 + 72) |= 0x100u;
    *(a1 + 56) = v6;
  }
}

void sub_100721010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007210AC(uint64_t result)
{
  v1 = *(result + 72);
  if (v1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 20) = 0;
    *(result + 64) = 0;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 56) = 0;
  }

  *(result + 72) = 0;
  return result;
}

uint64_t sub_1007210E8(uint64_t result, unint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 72);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 72);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 72);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 64), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 32), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 48), a2, a4);
    if ((*(v5 + 72) & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
    return result;
  }

LABEL_19:
  v7 = *(v5 + 56);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(9, v7, a2, a4);
}

uint64_t sub_10072121C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    if (v3)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
      v3 = *(a1 + 72);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 5;
    }

    v6 = v4 + ((v3 >> 1) & 2);
    if ((v3 & 8) != 0)
    {
      v7 = *(a1 + 64);
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 11;
      }

      else if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
        v3 = *(a1 + 72);
      }

      else
      {
        v8 = 2;
      }

      v6 += v8;
    }

    if ((v3 & 0x10) != 0)
    {
      v6 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
      v3 = *(a1 + 72);
    }

    v9 = v6 + 9;
    if ((v3 & 0x20) == 0)
    {
      v9 = v6;
    }

    if ((v3 & 0x40) != 0)
    {
      v5 = v9 + 9;
    }

    else
    {
      v5 = v9;
    }

    if ((v3 & 0x80) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 48), a2) + 1;
      v3 = *(a1 + 72);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0x100) != 0)
  {
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 56), a2) + 1;
  }

  *(a1 + 68) = v5;
  return v5;
}

void sub_10072131C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100720E7C(a1, lpsrc);
}

void sub_1007213BC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      *(a1 + 48) |= 1u;
      v5 = *(a1 + 8);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 8);
      if (!v6)
      {
        v6 = *(qword_102637238 + 8);
      }

      sub_100720E7C(v5, v6);
      v4 = *(a2 + 48);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 48) |= 2u;
    v7 = *(a1 + 16);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 16);
    if (!v8)
    {
      v8 = *(qword_102637238 + 16);
    }

    sub_100720700(v7, v8);
    v4 = *(a2 + 48);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

LABEL_20:
    *(a1 + 48) |= 4u;
    v9 = *(a1 + 24);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 24);
    if (!v10)
    {
      v10 = *(qword_102637238 + 24);
    }

    sub_100720AB8(v9, v10);
    v4 = *(a2 + 48);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

LABEL_26:
      v12 = *(a2 + 40);
      if (v12 >= 5)
      {
        sub_10191E3CC();
      }

      *(a1 + 48) |= 0x10u;
      *(a1 + 40) = v12;
      return;
    }

LABEL_25:
    v11 = *(a2 + 32);
    *(a1 + 48) |= 8u;
    *(a1 + 32) = v11;
    if ((*(a2 + 48) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_26;
  }
}

void sub_100721618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100721630(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_10246D710;
  sub_100139D3C(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

uint64_t sub_100721684(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102637238;
  if (!qword_102637238)
  {
    sub_1007201E4(0, a2, a3, a4);
    return qword_102637238;
  }

  return result;
}

uint64_t sub_10072170C(uint64_t result)
{
  LOBYTE(v1) = *(result + 48);
  if (v1)
  {
    if (*(result + 48))
    {
      v2 = *(result + 8);
      if (v2)
      {
        v3 = *(v2 + 72);
        if (v3)
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 20) = 0;
          *(v2 + 64) = 0;
          *(v2 + 24) = 0u;
          *(v2 + 40) = 0u;
        }

        if ((v3 & 0xFF00) != 0)
        {
          *(v2 + 56) = 0;
        }

        *(v2 + 72) = 0;
        v1 = *(result + 48);
      }
    }

    if ((v1 & 2) != 0)
    {
      v4 = *(result + 16);
      if (v4)
      {
        v5 = *(v4 + 96);
        if (v5)
        {
          *(v4 + 56) = 0u;
          *(v4 + 40) = 0u;
          *(v4 + 24) = 0u;
          *(v4 + 8) = 0u;
        }

        if ((v5 & 0xFF00) != 0)
        {
          *(v4 + 72) = 0;
          *(v4 + 80) = 0;
          *(v4 + 88) = 0;
        }

        *(v4 + 96) = 0;
        v1 = *(result + 48);
      }
    }

    if ((v1 & 4) != 0)
    {
      v6 = *(result + 24);
      if (v6)
      {
        if (*(v6 + 60))
        {
          *(v6 + 40) = 0u;
          *(v6 + 24) = 0u;
          *(v6 + 8) = 0u;
        }

        *(v6 + 60) = 0;
      }
    }

    *(result + 32) = 0;
    *(result + 40) = 0;
  }

  *(result + 48) = 0;
  return result;
}

uint64_t sub_1007217D8(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102637238 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102637238 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_13:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(qword_102637238 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_17:
  v10 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v10, a2, a4);
}

uint64_t sub_1007218CC(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_35;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 48) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = *(qword_102637238 + 8);
  }

  v6 = sub_10072121C(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(a1 + 48);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 16);
    if (!v9)
    {
      v9 = *(qword_102637238 + 16);
    }

    v10 = sub_1001B4F8C(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
    v3 = *(a1 + 48);
  }

LABEL_18:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_20;
    }

LABEL_28:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
    if ((*(a1 + 48) & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v13 = *(a1 + 24);
  if (!v13)
  {
    v13 = *(qword_102637238 + 24);
  }

  v14 = sub_100720D80(v13);
  v15 = v14;
  if (v14 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
  }

  else
  {
    v16 = 1;
  }

  v4 = (v4 + v15 + v16 + 1);
  v3 = *(a1 + 48);
  if ((v3 & 8) != 0)
  {
    goto LABEL_28;
  }

LABEL_20:
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_35;
  }

LABEL_29:
  v17 = *(a1 + 40);
  if ((v17 & 0x80000000) != 0)
  {
    v18 = 11;
  }

  else if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
  }

  else
  {
    v18 = 2;
  }

  v4 = (v18 + v4);
LABEL_35:
  *(a1 + 44) = v4;
  return v4;
}

void sub_100721A40(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1007213BC(a1, lpsrc);
}

void sub_100721AE0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 48))
  {
    v6 = *(a2 + 16);
    *(a1 + 48) |= 1u;
    *(a1 + 16) = v6;
    v4 = *(a2 + 48);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((*(a2 + 48) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(a1 + 48) |= 2u;
  v7 = *(a1 + 8);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 8);
  if (!v8)
  {
    v8 = *(qword_102637240 + 8);
  }

  sub_100720E7C(v7, v8);
  v4 = *(a2 + 48);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    v10 = *(a2 + 40);
    *(a1 + 48) |= 8u;
    *(a1 + 40) = v10;
    v4 = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_18:
  v9 = *(a2 + 20);
  if (v9 >= 7)
  {
    sub_10191E3F8();
  }

  *(a1 + 48) |= 4u;
  *(a1 + 20) = v9;
  v4 = *(a2 + 48);
  if ((v4 & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_21:
  v11 = *(a2 + 24);
  *(a1 + 48) |= 0x10u;
  *(a1 + 24) = v11;
  if ((*(a2 + 48) & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 32);
    *(a1 + 48) |= 0x20u;
    *(a1 + 32) = v5;
  }
}

void sub_100721C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100721D00(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    *(result + 16) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(result + 8);
      if (v2)
      {
        v3 = *(v2 + 72);
        if (v3)
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 20) = 0;
          *(v2 + 64) = 0;
          *(v2 + 24) = 0u;
          *(v2 + 40) = 0u;
        }

        if ((v3 & 0xFF00) != 0)
        {
          *(v2 + 56) = 0;
        }

        *(v2 + 72) = 0;
      }
    }

    *(result + 28) = 0;
    *(result + 20) = 0;
    *(result + 36) = 0;
  }

  *(result + 48) = 0;
  return result;
}

uint64_t sub_100721D64(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 16), a2, a4);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 8);
  if (!v7)
  {
    v7 = *(qword_102637240 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 24), a2, a4);
    if ((*(v5 + 48) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 40), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return result;
  }

LABEL_15:
  v8 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, v8, a2, a4);
}

uint64_t sub_100721E54(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_27;
  }

  v4 = 2 * (v3 & 1u);
  if ((v3 & 2) != 0)
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      v5 = *(qword_102637240 + 8);
    }

    v6 = sub_10072121C(v5, a2);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
    }

    else
    {
      v8 = 1;
    }

    v4 = (v7 + v4 + v8 + 1);
    v3 = *(a1 + 48);
    if ((v3 & 4) == 0)
    {
LABEL_4:
      if ((v3 & 8) == 0)
      {
        goto LABEL_5;
      }

LABEL_21:
      v11 = *(a1 + 40);
      if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
        v3 = *(a1 + 48);
      }

      else
      {
        v12 = 2;
      }

      v4 = (v12 + v4);
      if ((v3 & 0x10) == 0)
      {
LABEL_6:
        if ((v3 & 0x20) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v9 = *(a1 + 20);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = 11;
  }

  else if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    v3 = *(a1 + 48);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v3 & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_5:
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_25:
  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
  if ((*(a1 + 48) & 0x20) != 0)
  {
LABEL_26:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
  }

LABEL_27:
  *(a1 + 44) = v4;
  return v4;
}

void sub_100721F80(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100721AE0(a1, lpsrc);
}

void sub_100722020(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      *(a1 + 52) |= 1u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        v7 = *(qword_102637248 + 8);
      }

      sub_100721AE0(v6, v7);
      v4 = *(a2 + 52);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 16);
    *(a1 + 52) |= 2u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 52);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

LABEL_17:
    v9 = *(a2 + 24);
    *(a1 + 52) |= 4u;
    *(a1 + 24) = v9;
    v4 = *(a2 + 52);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_18:
    v10 = *(a2 + 32);
    *(a1 + 52) |= 8u;
    *(a1 + 32) = v10;
    if ((*(a2 + 52) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 40);
    *(a1 + 52) |= 0x10u;
    *(a1 + 40) = v5;
  }
}

void sub_100722194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007221B0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102637248;
  if (!qword_102637248)
  {
    sub_1007201E4(0, a2, a3, a4);
    return qword_102637248;
  }

  return result;
}

uint64_t sub_100722238(uint64_t result)
{
  v1 = result;
  if (*(result + 52))
  {
    if (*(result + 52))
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_100721D00(result);
      }
    }

    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
  }

  *(v1 + 52) = 0;
  return result;
}

uint64_t sub_10072227C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102637248 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
    if ((*(v5 + 52) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_13:
  v8 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, v8, a2, a4);
}

uint64_t sub_100722350(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_17;
  }

  if ((*(a1 + 52) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 52) & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
    v3 = *(a1 + 52);
    goto LABEL_13;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = *(qword_102637248 + 8);
  }

  v6 = sub_100721E54(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(a1 + 52);
  if ((v3 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_15;
    }

LABEL_19:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
    if ((*(a1 + 52) & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
  v3 = *(a1 + 52);
  if ((v3 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  if ((v3 & 0x10) != 0)
  {
LABEL_16:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 40), a2) + 1;
  }

LABEL_17:
  *(a1 + 48) = v4;
  return v4;
}

void sub_100722440(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100722020(a1, lpsrc);
}

float sub_1007224E0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 24);
  if (v5)
  {
    if (*(a2 + 24))
    {
      v6 = *(a2 + 8);
      *(a1 + 24) |= 1u;
      *(a1 + 8) = v6;
      v5 = *(a2 + 24);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 16);
      *(a1 + 24) |= 2u;
      *(a1 + 16) = result;
    }
  }

  return result;
}

void sub_10072258C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1007225C4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_10246D878;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100722668(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_100722680(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
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

      *(a1 + 24) |= 1u;
      if (v11 < v8 && *v11 == 21)
      {
        *(this + 1) = v11 + 1;
LABEL_21:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v13;
        *(a1 + 24) |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_1007227EC(uint64_t result, unint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, v4, v7, a3);
  }

  return result;
}

uint64_t sub_100722858(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 24);
  if (v3)
  {
    if (*(a1 + 24))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
      v3 = *(a1 + 24);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      result = v4 + 5;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  *(a1 + 20) = result;
  return result;
}

float sub_1007228B4(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_1007224E0(a1, lpsrc);
}

float sub_100722954(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 8);
      *(a1 + 32) |= 1u;
      *(a1 + 8) = v6;
      v5 = *(a2 + 32);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 16);
    *(a1 + 32) |= 2u;
    *(a1 + 16) = result;
    v5 = *(a2 + 32);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_12:
    result = *(a2 + 20);
    *(a1 + 32) |= 4u;
    *(a1 + 20) = result;
    if ((*(a2 + 32) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    result = *(a2 + 24);
    *(a1 + 32) |= 8u;
    *(a1 + 24) = result;
  }

  return result;
}

void sub_100722A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100722AD0(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_100722AE8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 5)
          {
            goto LABEL_20;
          }

LABEL_32:
          v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v17) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 20) = v17;
          *(a1 + 32) |= 4u;
          v15 = *(this + 1);
          if (v15 < *(this + 2) && *v15 == 37)
          {
            *(this + 1) = v15 + 1;
            goto LABEL_36;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 5)
          {
            goto LABEL_20;
          }

LABEL_36:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v16;
          *(a1 + 32) |= 8u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
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

      *(a1 + 32) |= 1u;
      if (v12 < v9 && *v12 == 21)
      {
        *(this + 1) = v12 + 1;
LABEL_28:
        v18 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v18) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v18;
        *(a1 + 32) |= 2u;
        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 29)
        {
          *(this + 1) = v14 + 1;
          goto LABEL_32;
        }
      }
    }

    if (v7 == 2 && v8 == 5)
    {
      goto LABEL_28;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

float sub_100722D14(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100722954(a1, lpsrc);
}

void sub_100722DB4(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 8);
      a1[8] |= 1u;
      a1[2] = v6;
      v4 = *(a2 + 32);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 12);
    a1[8] |= 2u;
    a1[3] = v7;
    v4 = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 16);
    a1[8] |= 4u;
    a1[4] = v8;
    v4 = *(a2 + 32);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 20);
    a1[8] |= 8u;
    a1[5] = v9;
    if ((*(a2 + 32) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 24);
    a1[8] |= 0x10u;
    a1[6] = v5;
  }
}

void sub_100722EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100722F00(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_10246D968;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100722FA4(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_100722FBC(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v10 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v13 = *(this + 1);
        v8 = *(this + 2);
        if (v13 >= v8 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
          if (!result)
          {
            return result;
          }

          v15 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          a1[2] = v14;
          v15 = v13 + 1;
          *(this + 1) = v15;
        }

        a1[8] |= 1u;
        if (v15 < v8 && *v15 == 16)
        {
          v10 = v15 + 1;
          *(this + 1) = v10;
LABEL_32:
          v25 = 0;
          if (v10 >= v8 || (v16 = *v10, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25);
            if (!result)
            {
              return result;
            }

            v16 = v25;
            v17 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            v17 = v10 + 1;
            *(this + 1) = v17;
          }

          a1[3] = v16;
          a1[8] |= 2u;
          if (v17 < v8 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(this + 1) = v11;
LABEL_40:
            if (v11 >= v8 || (v18 = *v11, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
              if (!result)
              {
                return result;
              }

              v19 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              a1[4] = v18;
              v19 = v11 + 1;
              *(this + 1) = v19;
            }

            a1[8] |= 4u;
            if (v19 < v8 && *v19 == 32)
            {
              v12 = v19 + 1;
              *(this + 1) = v12;
              goto LABEL_48;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v11 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_40;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v12 = *(this + 1);
      v8 = *(this + 2);
LABEL_48:
      if (v12 >= v8 || (v20 = *v12, (v20 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
        if (!result)
        {
          return result;
        }

        v21 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        a1[5] = v20;
        v21 = v12 + 1;
        *(this + 1) = v21;
      }

      a1[8] |= 8u;
      if (v21 < v8 && *v21 == 40)
      {
        v9 = v21 + 1;
        *(this + 1) = v21 + 1;
LABEL_56:
        v26 = 0;
        if (v9 >= v8 || (v22 = *v9, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26);
          if (!result)
          {
            return result;
          }

          v22 = v26;
          v23 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v23 = v9 + 1;
          *(this + 1) = v23;
        }

        a1[6] = -(v22 & 1) ^ (v22 >> 1);
        a1[8] |= 0x10u;
        if (v23 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_56;
    }

LABEL_21:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

int *sub_1007232B4(int *result, unsigned int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[8];
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, result[2], a2, a4);
    v6 = v5[8];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v5[3], a2, a4);
  v6 = v5[8];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
    if ((v5[8] & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[8];
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v7 = v5[6];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(5, v7, a2, a4);
}

uint64_t sub_100723378(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_32;
  }

  if (*(a1 + 32))
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 32);
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v6 = *(a1 + 12);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 32);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(a1 + 32);
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v10 = *(a1 + 20);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(a1 + 32);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) != 0)
  {
LABEL_28:
    v12 = ((2 * *(a1 + 24)) ^ (*(a1 + 24) >> 31));
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    }

    else
    {
      v13 = 2;
    }

    v4 = (v13 + v4);
  }

LABEL_32:
  *(a1 + 28) = v4;
  return v4;
}

void sub_1007234A0(_DWORD *a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100722DB4(a1, lpsrc);
}

void sub_100723540(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      v5 = *(a2 + 8);
      *(a1 + 48) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 48);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 16);
    *(a1 + 48) |= 2u;
    *(a1 + 16) = v6;
    v4 = *(a2 + 48);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_12:
    v7 = *(a2 + 24);
    *(a1 + 48) |= 4u;
    *(a1 + 24) = v7;
    v4 = *(a2 + 48);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

LABEL_14:
      v9 = *(a2 + 40);
      if (v9 >= 2)
      {
        sub_10191E424();
      }

      *(a1 + 48) |= 0x10u;
      *(a1 + 40) = v9;
      return;
    }

LABEL_13:
    v8 = *(a2 + 32);
    *(a1 + 48) |= 8u;
    *(a1 + 32) = v8;
    if ((*(a2 + 48) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_14;
  }
}

void sub_100723660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100723698(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102637268;
  if (!qword_102637268)
  {
    sub_1007201E4(0, a2, a3, a4);
    return qword_102637268;
  }

  return result;
}

uint64_t sub_100723720(uint64_t result)
{
  if (*(result + 48))
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  *(result + 48) = 0;
  return result;
}

uint64_t sub_100723740(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 48);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v7 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v7, a2, a4);
}

uint64_t sub_100723804(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 48);
  if (*(a1 + 48))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 0x10) != 0)
    {
      v6 = *(a1 + 40);
      if ((v6 & 0x80000000) != 0)
      {
        v7 = 11;
      }

      else if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      }

      else
      {
        v7 = 2;
      }

      v5 = (v7 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 44) = v5;
  return v5;
}

void sub_10072389C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100723540(a1, lpsrc);
}

void sub_10072393C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 8);
      *(a1 + 24) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 16);
      *(a1 + 24) |= 2u;
      *(a1 + 16) = v6;
    }
  }
}

void sub_1007239E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100723A20(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_10246DA58;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100723A74(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102637270;
  if (!qword_102637270)
  {
    sub_1007201E4(0, a2, a3, a4);
    return qword_102637270;
  }

  return result;
}

uint64_t sub_100723AF4(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_100723B0C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v9;
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      *(a1 + 24) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(this + 1) = v11;
LABEL_22:
        v15 = 0;
        if (v11 >= v7 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v15);
          if (!result)
          {
            return result;
          }

          v12 = v15;
          v13 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          v13 = v11 + 1;
          *(this + 1) = v13;
        }

        *(a1 + 16) = v12 != 0;
        *(a1 + 24) |= 2u;
        if (v13 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v7 = *(this + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_100723CA0(uint64_t result, unint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, v4, a4);
  }

  return result;
}

uint64_t sub_100723D0C(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 24);
  if (v3)
  {
    if (*(a1 + 24))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
      v3 = *(a1 + 24);
    }

    else
    {
      v4 = 0;
    }

    result = (v3 & 2u) + v4;
  }

  else
  {
    result = 0;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_100723D64(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10072393C(a1, lpsrc);
}

void sub_100723E04(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 8);
      *(a1 + 36) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 36);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 24);
    *(a1 + 36) |= 2u;
    *(a1 + 24) = v6;
    v4 = *(a2 + 36);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

LABEL_12:
      v8 = *(a2 + 28);
      if (!sub_1001744A4(v8))
      {
        sub_10191E450();
      }

      *(a1 + 36) |= 8u;
      *(a1 + 28) = v8;
      return;
    }

LABEL_11:
    v7 = *(a2 + 16);
    *(a1 + 36) |= 4u;
    *(a1 + 16) = v7;
    if ((*(a2 + 36) & 8) == 0)
    {
      return;
    }

    goto LABEL_12;
  }
}