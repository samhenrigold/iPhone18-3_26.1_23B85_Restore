@interface CellularPlanCrossPlatformTransportUtility
- (CFSharedRef<const)serializeDeviceInfo:(const void *)info;
- (CellularPlanCrossPlatformTransportUtility)init;
- (CellularPlanTransferDeviceInfo)getTransferDeviceInfoFromProfileResponse:(CellularPlanTransferDeviceInfo *__return_ptr)retstr;
- (CellularPlanTransferDeviceInfo)getTransferDeviceInfoFromSessionResponse:(CellularPlanTransferDeviceInfo *__return_ptr)retstr;
- (CellularPlanTransferDeviceInfo)parseTransferItem:(CellularPlanTransferDeviceInfo *__return_ptr)retstr hasToken:(CellularPlanCrossPlatformTransportUtility *)self withStream:;
- (id)findHighestMatchingVersionFrom:(id)from to:(id)to;
- (int64_t)convertPendingStateToTransferStatus:(unsigned __int8)status;
- (void)dumpData:(id)data withLabel:(id)label;
@end

@implementation CellularPlanCrossPlatformTransportUtility

- (CellularPlanCrossPlatformTransportUtility)init
{
  v3.receiver = self;
  v3.super_class = CellularPlanCrossPlatformTransportUtility;
  if ([(CellularPlanCrossPlatformTransportUtility *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (id)findHighestMatchingVersionFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v18 = fromCopy;
  if (!fromCopy)
  {
    goto LABEL_24;
  }

  v6 = [fromCopy count];
  v7 = 0;
  if (!toCopy || !v6)
  {
    goto LABEL_25;
  }

  if (![toCopy count])
  {
LABEL_24:
    v7 = 0;
    goto LABEL_25;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = fromCopy;
  v7 = 0;
  v8 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v12 = toCopy;
        v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v13)
        {
          v14 = *v22;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(v12);
              }

              if ([v11 isEqualToString:*(*(&v21 + 1) + 8 * j)] && (!v7 || objc_msgSend(v11, "compare:options:", v7, 64) == 1))
              {
                v16 = v11;

                v7 = v16;
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v13);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

LABEL_25:

  return v7;
}

- (CellularPlanTransferDeviceInfo)parseTransferItem:(CellularPlanTransferDeviceInfo *__return_ptr)retstr hasToken:(CellularPlanCrossPlatformTransportUtility *)self withStream:
{
  v6 = v4;
  v94 = v3;
  v8 = v2;
  v87 = v6;
  v9 = sub_10000C030((v6 + 16), "iccid:", 6);
  iccid = [v8 iccid];
  uTF8String = [iccid UTF8String];
  v11 = strlen(uTF8String);
  v12 = sub_10000C030(v9, uTF8String, v11);
  LOBYTE(v97[0]) = 36;
  v13 = sub_10000C030(v12, v97, 1);
  v14 = sub_10000C030(v13, "mcc:", 4);
  v93 = [v8 mcc];
  v15 = v93;
  uTF8String2 = [v93 UTF8String];
  v17 = strlen(uTF8String2);
  v18 = sub_10000C030(v14, uTF8String2, v17);
  LOBYTE(v97[0]) = 36;
  v19 = sub_10000C030(v18, v97, 1);
  v20 = sub_10000C030(v19, "mnc:", 4);
  v92 = [v8 mnc];
  v21 = v92;
  uTF8String3 = [v92 UTF8String];
  v23 = strlen(uTF8String3);
  v24 = sub_10000C030(v20, uTF8String3, v23);
  LOBYTE(v97[0]) = 36;
  v25 = sub_10000C030(v24, v97, 1);
  v26 = sub_10000C030(v25, "gid1:", 5);
  gid1 = [v8 gid1];
  v27 = gid1;
  uTF8String4 = [gid1 UTF8String];
  v29 = strlen(uTF8String4);
  v30 = sub_10000C030(v26, uTF8String4, v29);
  LOBYTE(v97[0]) = 36;
  v31 = sub_10000C030(v30, v97, 1);
  v32 = sub_10000C030(v31, "gid2:", 5);
  gid2 = [v8 gid2];
  v33 = gid2;
  uTF8String5 = [gid2 UTF8String];
  v35 = strlen(uTF8String5);
  v36 = sub_10000C030(v32, uTF8String5, v35);
  LOBYTE(v97[0]) = 36;
  v37 = sub_10000C030(v36, v97, 1);
  v38 = sub_10000C030(v37, "imsi:", 5);
  imsi = [v8 imsi];
  if (imsi)
  {
    imsi2 = [v8 imsi];
    v39 = imsi2;
    uTF8String6 = [imsi2 UTF8String];
  }

  else
  {
    uTF8String6 = "";
  }

  v41 = strlen(uTF8String6);
  v42 = sub_10000C030(v38, uTF8String6, v41);
  LOBYTE(v97[0]) = 36;
  v43 = sub_10000C030(v42, v97, 1);
  v44 = sub_10000C030(v43, "token:", 6);
  if (v94)
  {
    token = [v8 token];
    v83Token = [token token];
    v45 = v83Token;
    uTF8String7 = [v83Token UTF8String];
  }

  else
  {
    uTF8String7 = "";
  }

  v47 = strlen(uTF8String7);
  v48 = sub_10000C030(v44, uTF8String7, v47);
  LOBYTE(v97[0]) = 36;
  v49 = sub_10000C030(v48, v97, 1);
  v50 = sub_10000C030(v49, "active:", 7);
  v51 = sub_10000C030(v50, "", 0);
  LOBYTE(v97[0]) = 36;
  v52 = sub_10000C030(v51, v97, 1);
  v53 = sub_10000C030(v52, "imei:", 5);
  imei = [v8 imei];
  if (imei)
  {
    imei2 = [v8 imei];
    v55 = imei2;
    uTF8String8 = [imei2 UTF8String];
  }

  else
  {
    uTF8String8 = "";
  }

  v57 = strlen(uTF8String8);
  v58 = sub_10000C030(v53, uTF8String8, v57);
  LOBYTE(v97[0]) = 36;
  v59 = sub_10000C030(v58, v97, 1);
  v60 = sub_10000C030(v59, "mdn:", 4);
  phoneNumber = [v8 phoneNumber];
  if (phoneNumber)
  {
    uTF8String8 = [v8 phoneNumber];
    v62 = uTF8String8;
    v56UTF8String = [uTF8String8 UTF8String];
  }

  else
  {
    v56UTF8String = "";
  }

  v64 = strlen(v56UTF8String);
  v65 = sub_10000C030(v60, v56UTF8String, v64);
  LOBYTE(v97[0]) = 36;
  v66 = sub_10000C030(v65, v97, 1);
  v67 = sub_10000C030(v66, "expirationTime:", 15);
  if (v94)
  {
    v56UTF8String = [v8 token];
    tokenExpiry = [v56UTF8String tokenExpiry];
    v68 = tokenExpiry;
    uTF8String9 = [tokenExpiry UTF8String];
  }

  else
  {
    uTF8String9 = "";
  }

  v70 = strlen(uTF8String9);
  v71 = sub_10000C030(v67, uTF8String9, v70);
  LOBYTE(v97[0]) = 36;
  v72 = sub_10000C030(v71, v97, 1);
  v73 = sub_10000C030(v72, "carrierName:", 12);
  carrierName = [v8 carrierName];
  v75 = carrierName;
  uTF8String10 = [carrierName UTF8String];
  v77 = strlen(uTF8String10);
  sub_10000C030(v73, uTF8String10, v77);

  if (v94)
  {
  }

  if (phoneNumber)
  {
  }

  if (imei)
  {
  }

  if (v94)
  {
  }

  v78 = imsi;
  if (imsi)
  {

    v78 = imsi;
  }

  v98 = 0u;
  memset(v97, 0, sizeof(v97));
  v79 = sub_10000D79C(v87 + 24);
  if (v80 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v81 = v80;
  if (v80 >= 0x17)
  {
    operator new();
  }

  v96 = v80;
  if (v80)
  {
    memmove(&__dst, v79, v80);
  }

  *(&__dst + v81) = 0;
  sub_100318244(v97);
  if (v96 < 0)
  {
    operator delete(__dst);
  }

  if (BYTE8(v98) == 1)
  {
    sub_10031A3B0(retstr, v97);
    sub_10027F834(retstr[1].var0.var0.var1.var1.var0.__rep_.__s.__data_, (&v97[15] + 8));
    retstr[2].var0.var0.var1.var1.var0.__rep_.__l.__size_ = v98;
    if (BYTE8(v98))
    {
      sub_100111C2C(v97);
    }
  }

  else
  {
    retstr[2].var0.var0.var1.var1.var0.__rep_.__l.__size_ = 0;
    *(&retstr[2].var0.var0.var5 + 5) = 0u;
    *(&retstr[2].var0.var0.var5 + 6) = 0u;
    *(&retstr[2].var0.var0.var5 + 3) = 0u;
    *(&retstr[2].var0.var0.var5 + 4) = 0u;
    *(&retstr[2].var0.var0.var5.__rep_.__l + 1) = 0u;
    *(&retstr[2].var0.var0.var5 + 2) = 0u;
    *&retstr[1].var1.var0 = 0u;
    *&retstr[2].var0.var0.var0 = 0u;
    *(&retstr[1].var0.var0.var5 + 6) = 0u;
    *(&retstr[1].var0.var0.var5 + 7) = 0u;
    *(&retstr[1].var0.var0.var5 + 4) = 0u;
    *(&retstr[1].var0.var0.var5 + 5) = 0u;
    *(&retstr[1].var0.var0.var5 + 2) = 0u;
    *(&retstr[1].var0.var0.var5 + 3) = 0u;
    *&retstr[1].var0.var0.var0 = 0u;
    *(&retstr[1].var0.var0.var5.__rep_.__l + 1) = 0u;
    *(&retstr->var0.var0.var5 + 7) = 0u;
    *&retstr->var1.var0 = 0u;
    *(&retstr->var0.var0.var5 + 5) = 0u;
    *(&retstr->var0.var0.var5 + 6) = 0u;
    *(&retstr->var0.var0.var5 + 3) = 0u;
    *(&retstr->var0.var0.var5 + 4) = 0u;
    *(&retstr->var0.var0.var5.__rep_.__l + 1) = 0u;
    *(&retstr->var0.var0.var5 + 2) = 0u;
    *&retstr->var0.var0.var0 = 0u;
  }

  return result;
}

- (CellularPlanTransferDeviceInfo)getTransferDeviceInfoFromSessionResponse:(CellularPlanTransferDeviceInfo *__return_ptr)retstr
{
  v5 = v2;
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  items = [v5 items];
  v7 = [items count];

  if (v7)
  {
    items2 = [v5 items];
    v9 = [items2 objectAtIndexedSubscript:0];

    token = [v9 token];

    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    *v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    memset(v40, 0, sizeof(v40));
    v38 = 0u;
    sub_10000C320(&v38);
    v11 = sub_10000C030(&v39, "LPA:1", 5);
    LOBYTE(__p[0]) = 36;
    v12 = sub_10000C030(v11, __p, 1);
    v13 = sub_10000C030(v12, "TR", 2);
    LOBYTE(__p[0]) = 36;
    v14 = sub_10000C030(v13, __p, 1);
    v15 = sub_10000C030(v14, "eid:", 4);
    v55[0] = 0;
    v55[1] = 0;
    friendlyDeviceName2 = __p;
    sub_100922314(v55, v17, v18);
    if ((v37 & 0x80u) == 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    if ((v37 & 0x80u) == 0)
    {
      v20 = v37;
    }

    else
    {
      v20 = __p[1];
    }

    v21 = sub_10000C030(v15, v19, v20);
    v54 = 36;
    v22 = sub_10000C030(v21, &v54, 1);
    v23 = sub_10000C030(v22, "ver:0", 5);
    v54 = 36;
    v24 = sub_10000C030(v23, &v54, 1);
    v25 = sub_10000C030(v24, "clz:", 4);
    v26 = sub_10000C030(v25, "Android", 7);
    v54 = 36;
    v27 = sub_10000C030(v26, &v54, 1);
    v28 = sub_10000C030(v27, "name:", 5);
    friendlyDeviceName = [v5 friendlyDeviceName];
    if (friendlyDeviceName)
    {
      friendlyDeviceName2 = [v5 friendlyDeviceName];
      v30 = friendlyDeviceName2;
      uTF8String = [friendlyDeviceName2 UTF8String];
    }

    else
    {
      uTF8String = "";
    }

    v32 = strlen(uTF8String);
    v33 = sub_10000C030(v28, uTF8String, v32);
    v54 = 36;
    sub_10000C030(v33, &v54, 1);
    if (friendlyDeviceName)
    {
    }

    if (v37 < 0)
    {
      operator delete(__p[0]);
    }

    [(CellularPlanCrossPlatformTransportUtility *)self parseTransferItem:v9 hasToken:token != 0 withStream:&v38];
    *&v39 = v34;
    if (SHIBYTE(v42) < 0)
    {
      operator delete(v41[1]);
    }

    std::locale::~locale(v40);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  else
  {
    sub_10031B678(retstr, v56);
    sub_10027F834(retstr[1].var0.var0.var1.var1.var0.__rep_.__s.__data_, &v56[31]);
    retstr[2].var0.var0.var1.var1.var0.__rep_.__l.__size_ = v57;
  }

  sub_100111C2C(v56);

  return result;
}

- (CellularPlanTransferDeviceInfo)getTransferDeviceInfoFromProfileResponse:(CellularPlanTransferDeviceInfo *__return_ptr)retstr
{
  v5 = v2;
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  item = [v5 item];
  token = [item token];

  if (token && (([v5 item], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "simType"), v8, objc_msgSend(v5, "sourceEID"), (v10 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v5, "sourceEID"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length"), v11, v10, v12) || v9 == 1))
  {
    __dst = 0uLL;
    v57 = 0;
    sourceEID = [v5 sourceEID];
    uTF8String = [sourceEID UTF8String];
    v15 = strlen(uTF8String);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v57) = v15;
    if (v15)
    {
      memmove(&__dst, uTF8String, v15);
    }

    *(&__dst + v16) = 0;

    v19 = HIBYTE(v57);
    v20 = SHIBYTE(v57);
    if (v57 < 0)
    {
      v19 = *(&__dst + 1);
    }

    if (!v19)
    {
      v58[0] = 0;
      v58[1] = 0;
      sub_100922314(v58, v17, v18);
      if (v20 < 0)
      {
        operator delete(__dst);
      }

      __dst = v40;
      v57 = v41;
    }

    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    *__p = 0u;
    v44 = 0u;
    v41 = 0u;
    memset(v42, 0, sizeof(v42));
    v40 = 0u;
    sub_10000C320(&v40);
    v21 = sub_10000C030(&v41, "LPA:1", 5);
    LOBYTE(v58[0]) = 36;
    v22 = sub_10000C030(v21, v58, 1);
    v23 = sub_10000C030(v22, "TR", 2);
    LOBYTE(v58[0]) = 36;
    v24 = sub_10000C030(v23, v58, 1);
    v25 = sub_10000C030(v24, "eid:", 4);
    if (v57 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    if (v57 >= 0)
    {
      v27 = HIBYTE(v57);
    }

    else
    {
      v27 = *(&__dst + 1);
    }

    v28 = sub_10000C030(v25, p_dst, v27);
    LOBYTE(v58[0]) = 36;
    v29 = sub_10000C030(v28, v58, 1);
    v30 = sub_10000C030(v29, "ver:", 4);
    v31 = sub_10000C030(v30, "", 0);
    LOBYTE(v58[0]) = 36;
    v32 = sub_10000C030(v31, v58, 1);
    v33 = sub_10000C030(v32, "clz:", 4);
    v34 = sub_10000C030(v33, "Android", 7);
    LOBYTE(v58[0]) = 36;
    v35 = sub_10000C030(v34, v58, 1);
    v36 = sub_10000C030(v35, "name:", 5);
    v37 = sub_10000C030(v36, "", 0);
    LOBYTE(v58[0]) = 36;
    sub_10000C030(v37, v58, 1);
    [(CellularPlanCrossPlatformTransportUtility *)self parseTransferItem:item hasToken:1 withStream:&v40];
    *&v41 = v38;
    if (SHIBYTE(v44) < 0)
    {
      operator delete(__p[1]);
    }

    std::locale::~locale(v42);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    if (SHIBYTE(v57) < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {
    sub_10031B678(retstr, v59);
    sub_10027F834(retstr[1].var0.var0.var1.var1.var0.__rep_.__s.__data_, (&v59[15] + 8));
    retstr[2].var0.var0.var1.var1.var0.__rep_.__l.__size_ = v60;
  }

  sub_100111C2C(v59);
  return result;
}

- (CFSharedRef<const)serializeDeviceInfo:(const void *)info
{
  v4 = v3;
  if (*(info + 240))
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    PB::Writer::Writer(&v23);
    memset(v22, 0, sizeof(v22));
    sub_1006E0F18(v22);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    sub_10027F834(__dst, (info + 248));
    v18 = 1;
    v6 = sub_100832314(info, __dst, v22);
    if (v18 != 1)
    {
      goto LABEL_12;
    }

    v26 = &v17;
    sub_100111D64(&v26);
    if (v16 < 0)
    {
      operator delete(__p);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }

    if (v12 < 0)
    {
      operator delete(v11);
    }

    if (v10 < 0)
    {
      operator delete(v9);
    }

    if (v8 < 0)
    {
      operator delete(__dst[0]);
      if (v6)
      {
LABEL_13:
        sub_1006E1A2C(v22, &v23);
        sub_10018A52C(&v19, v24, v23, v23 - v24);
        sub_10091E26C(&v19, v4);
        if (v19)
        {
          v20 = v19;
          operator delete(v19);
        }

        goto LABEL_18;
      }
    }

    else
    {
LABEL_12:
      if (v6)
      {
        goto LABEL_13;
      }
    }

    *v4 = 0;
LABEL_18:
    sub_1006E1008(v22);
    PB::Writer::~Writer(&v23);
    return self;
  }

  *v3 = 0;
  return self;
}

- (int64_t)convertPendingStateToTransferStatus:(unsigned __int8)status
{
  if ((status - 2) > 0xE)
  {
    return 2;
  }

  else
  {
    return qword_1017FB078[(status - 2)];
  }
}

- (void)dumpData:(id)data withLabel:(id)label
{
  dataCopy = data;
  labelCopy = label;
  if ((atomic_load_explicit(&qword_101FBA2C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA2C8))
  {
    sub_1000CE0A8(&__p);
    sub_1000DF10C(&qword_101FBA2B8, &__p);
    v11 = __p;
    __p = 0;
    if (v11)
    {
      sub_1000DF0B0(&__p, v11);
    }

    __cxa_atexit(sub_1000D6624, &qword_101FBA2B8, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA2C8);
  }

  if (qword_101FBA2B8)
  {
    bytes = [dataCopy bytes];
    v8 = qword_101FBA2B8;
    uTF8String = [labelCopy UTF8String];
    v10 = [dataCopy length];
    __p = 0;
    v13 = 0;
    v14 = 0;
    sub_1000DCF88(&__p, bytes, &v10[bytes], v10);
    sub_1009A2010(v8, uTF8String, &__p);
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }
  }
}

@end