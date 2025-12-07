uint64_t DataServiceController::match(DataServiceController *this, const TrafficDescriptor *a2, const TrafficDescriptor *a3)
{
  if (TrafficDescriptor::hasAccountInfo(a2))
  {
    result = TrafficDescriptor::hasAccountInfo(a3);
    if (!result)
    {
      return result;
    }

    if (TrafficDescriptor::hasTrafficClassInfo(a2))
    {
      v7 = *(a2 + 232);
      v8 = *(a3 + 232);
      if (v7 == v8 && *(a2 + 232))
      {
        v7 = *(a2 + 57);
        v8 = *(a3 + 57);
      }

      if (v7 != v8)
      {
        return 0;
      }
    }

    if (*(a2 + 136) & 1) != 0 && (*(a3 + 136))
    {
      v9 = *(a2 + 135);
      if (v9 >= 0)
      {
        v10 = *(a2 + 135);
      }

      else
      {
        v10 = *(a2 + 15);
      }

      v11 = *(a3 + 135);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(a3 + 15);
      }

      if (v10 == v11)
      {
        v13 = v9 >= 0 ? (a2 + 112) : *(a2 + 14);
        v14 = v12 >= 0 ? (a3 + 112) : *(a3 + 14);
        if (!memcmp(v13, v14, v10))
        {
          if (*(a2 + 104) == 1)
          {
            DataServiceController::discoveryByAccount(this, a2 + 80);
          }

          return 1;
        }
      }

      return 0;
    }

LABEL_82:
    sub_1000D1644();
  }

  if (*(a2 + 214) == 1 && (*(a3 + 214) != 1 || *(a2 + 106) != *(a3 + 106)) || TrafficDescriptor::hasDnnInfo(a2) && sub_1004A2010(a2 + 30, a3 + 30))
  {
    return 0;
  }

  if (*(a2 + 220) != 1)
  {
    goto LABEL_37;
  }

  if (*(a3 + 220) != 1 || (result = 0, *(a2 + 108) == *(a3 + 108)) && *(a2 + 109) == *(a3 + 109))
  {
    if (*(a3 + 214) != 1)
    {
      return 0;
    }

    result = 0;
    v15 = *(a3 + 106);
    if (v15 >= *(a2 + 108) && v15 <= *(a2 + 109))
    {
LABEL_37:
      if (*(a2 + 208) == 1)
      {
        if (*(a3 + 208) != 1)
        {
          return 0;
        }

        result = CSIPacketAddress::matchSubnet((a3 + 184), (a2 + 184));
        if (!result)
        {
          return result;
        }
      }

      if ((*(a2 + 224) != 1 || *(a3 + 224) == 1 && *(a2 + 111) == *(a3 + 111)) && (*(a2 + 232) != 1 || *(a3 + 232) == 1 && *(a2 + 57) == *(a3 + 57)) && (*(a2 + 8) != 1 || *(a3 + 8) == 1 && *(a2 + 1) == *(a3 + 1)))
      {
        if (TrafficDescriptor::hasAppCategoryInfo(a2) && TrafficDescriptor::hasBundleInfo(a3))
        {
          if ((*(a2 + 104) & 1) == 0 || (*(a3 + 72) & 1) == 0)
          {
            goto LABEL_82;
          }

          if (sub_100071DF8(a2 + 10, a3 + 6))
          {
            goto LABEL_62;
          }
        }

        if ((*(a2 + 40) != 1 || !sub_1004A2010(a2 + 2, a3 + 2)) && (!TrafficDescriptor::hasBundleInfo(a2) || !sub_1004A2010(a2 + 6, a3 + 6)))
        {
LABEL_62:
          if (*(a2 + 176) != 1)
          {
            return 1;
          }

          v16 = *(a2 + 175);
          v17 = v16 >= 0 ? *(a2 + 175) : *(a2 + 20);
          if (!v17)
          {
            return 1;
          }

          if (*(a3 + 176) == 1)
          {
            v18 = *(a3 + 175);
            v19 = v18 >= 0 ? *(a3 + 175) : *(a3 + 20);
            if (v19 >= v17)
            {
              if (v16 >= 0)
              {
                v20 = a2 + 152;
              }

              else
              {
                v20 = *(a2 + 19);
              }

              if (v18 >= 0)
              {
                v21 = a3 + 152;
              }

              else
              {
                v21 = *(a3 + 19);
              }

              v22 = v20 - 1;
              while (1)
              {
                v23 = __tolower(v22[v17]);
                if (v23 != __tolower(v21[v19 - 1]))
                {
                  break;
                }

                --v19;
                if (!--v17)
                {
                  return !v19 || v21[v19 - 1] == 46;
                }
              }
            }
          }
        }
      }

      return 0;
    }
  }

  return result;
}

BOOL sub_1004A2010(void *a1, void *a2)
{
  v2 = *(a2 + 24);
  v3 = *(a1 + 24);
  v5 = v3 == v2;
  v4 = v3 != v2;
  v5 = !v5 || v3 == 0;
  if (!v5)
  {
    v6 = *(a1 + 23);
    if (v6 >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = a1[1];
    }

    v8 = *(a2 + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = a2[1];
    }

    if (v7 == v8)
    {
      if (v6 < 0)
      {
        a1 = *a1;
      }

      if (v9 < 0)
      {
        a2 = *a2;
      }

      return memcmp(a1, a2, v7) != 0;
    }

    else
    {
      return 1;
    }
  }

  return v4;
}

uint64_t DataServiceController::isAppWithBundleIdActiveForSlice(uint64_t a1, const void **a2)
{
  if (!DataServiceController::isAppWithBundleIdActive(a1, a2))
  {
    goto LABEL_23;
  }

  v4 = *(a1 + 1136);
  v5 = *(a1 + 1144);
  if (v4 != v5)
  {
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = a2[1];
    }

    if (v6 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    while (1)
    {
      v9 = *(v4 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v4 + 8);
      }

      if (v9 == v7)
      {
        v11 = v10 >= 0 ? v4 : *v4;
        if (!memcmp(v11, v8, v7))
        {
          break;
        }
      }

      v4 += 24;
      if (v4 == v5)
      {
        goto LABEL_20;
      }
    }
  }

  if (v4 == v5)
  {
LABEL_20:
    v13 = sub_100007A6C(a1 + 4984, a2);
    if (a1 + 4992 != v13 && *(v13 + 121) == 1)
    {
      v12 = *(v13 + 120);
      return v12 & 1;
    }

LABEL_23:
    v12 = 0;
    return v12 & 1;
  }

  v12 = 1;
  return v12 & 1;
}

uint64_t DataServiceController::mustKeepSliceAliveAll_sync(uint64_t a1, unsigned int a2, void *a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
{
  if (a5 > 0x10000 && a5 >> 3 > a6)
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N Unbalanced traffic: in < out", buf, 2u);
    }
  }

  if (a6 > 0x10000 && a6 >> 3 > a5)
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#N Unbalanced traffic: in > out", buf, 2u);
    }
  }

  v14.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v53 = a3;
  v16 = (a3 + 1);
  v15 = *a3;
  if (v15 != v16)
  {
    rep = v14.__d_.__rep_;
    while (1)
    {
      v18 = *(a1 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        TrafficDescriptor::toString(buf, (v15 + 32));
        v19 = buf;
        if (v61 < 0)
        {
          v19 = *buf;
        }

        *v54 = 136446210;
        *&v54[4] = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I mustKeepSliceAlive: %{public}s", v54, 0xCu);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(*buf);
        }
      }

      if (TrafficDescriptor::hasBundleInfo((v15 + 32)))
      {
        if ((v15[104] & 1) == 0)
        {
          goto LABEL_98;
        }

        v20 = sub_100007A6C(a1 + 5200, v15 + 80);
        if (a1 + 5208 != v20)
        {
          v21 = rep - *(v20 + 56);
          if (v21 <= 0x6FC23ABFFLL)
          {
            break;
          }
        }
      }

      isInternalSliceApp_sync = DataServiceController::isInternalSliceApp_sync(a1, (v15 + 32));
      if (isInternalSliceApp_sync)
      {
        v34 = *(a1 + 40);
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_95;
        }

        v35 = asString();
        TrafficDescriptor::toString(buf, (v15 + 32));
        if (v61 >= 0)
        {
          v36 = buf;
        }

        else
        {
          v36 = *buf;
        }

        *v54 = 136315394;
        *&v54[4] = v35;
        v55 = 2082;
        v56 = v36;
        v37 = "#I mustKeepSliceAlive: do not forcefully deactivate slice connection %s because it has active test traffic descriptor: %{public}s";
LABEL_92:
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v37, v54, 0x16u);
        if ((SHIBYTE(v61) & 0x80000000) == 0)
        {
          goto LABEL_95;
        }

        v46 = *buf;
LABEL_94:
        operator delete(v46);
        goto LABEL_95;
      }

      if (*(a1 + 5320) == 1)
      {
        isInternalSliceApp_sync = TrafficDescriptor::hasAccountInfo((v15 + 32));
        if (isInternalSliceApp_sync)
        {
          v38 = *(a1 + 40);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = asString();
            TrafficDescriptor::toString(buf, (v15 + 32));
            v40 = v61 >= 0 ? buf : *buf;
            *v54 = 136315394;
            *&v54[4] = v39;
            v55 = 2082;
            v56 = v40;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I mustKeepSliceAlive: do not deactivate slice connection %s: has active connected device: %{public}s", v54, 0x16u);
            if (SHIBYTE(v61) < 0)
            {
              operator delete(*buf);
            }
          }

          v31 = 1;
          *a4 = 1;
LABEL_96:
          v32 = 1;
          return v31 | (v32 << 8);
        }
      }

      if (a7 && DataServiceController::specialAppPossiblyActive(isInternalSliceApp_sync, (v15 + 32)))
      {
        v34 = *(a1 + 40);
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_95;
        }

        v41 = asString();
        TrafficDescriptor::toString(buf, (v15 + 32));
        if (v61 >= 0)
        {
          v42 = buf;
        }

        else
        {
          v42 = *buf;
        }

        *v54 = 136315394;
        *&v54[4] = v41;
        v55 = 2082;
        v56 = v42;
        v37 = "#I mustKeepSliceAlive: do not deactivate slice connection %s: has active special app: %{public}s";
        goto LABEL_92;
      }

      if ((*(a1 + 4928) & 1) == 0 && TrafficDescriptor::hasBundleInfo((v15 + 32)))
      {
        if ((v15[104] & 1) == 0)
        {
          goto LABEL_98;
        }

        if ((*(*a1 + 2432))(a1, v15 + 10))
        {
          if ((v15[104] & 1) == 0)
          {
            goto LABEL_98;
          }

          if ((*(*a1 + 2440))(a1, v15 + 10))
          {
            v34 = *(a1 + 40);
            if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_95;
            }

            v49 = asString();
            TrafficDescriptor::toString(buf, (v15 + 32));
            if (v61 >= 0)
            {
              v50 = buf;
            }

            else
            {
              v50 = *buf;
            }

            *v54 = 136315394;
            *&v54[4] = v49;
            v55 = 2082;
            v56 = v50;
            v37 = "#I mustKeepSliceAlive: do not deactivate slice connection %s: has active call kit call: %{public}s";
            goto LABEL_92;
          }
        }

        if ((v15[104] & 1) == 0)
        {
LABEL_98:
          sub_1000D1644();
        }

        if (DataServiceController::isAppWithBundleIdActiveForSlice(a1, v15 + 10))
        {
          v34 = *(a1 + 40);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v47 = asString();
            TrafficDescriptor::toString(buf, (v15 + 32));
            if (v61 >= 0)
            {
              v48 = buf;
            }

            else
            {
              v48 = *buf;
            }

            *v54 = 136315394;
            *&v54[4] = v47;
            v55 = 2082;
            v56 = v48;
            v37 = "#I mustKeepSliceAlive: do not deactivate slice connection %s: has active bundle id: %{public}s";
            goto LABEL_92;
          }

LABEL_95:
          v31 = 1;
          goto LABEL_96;
        }
      }

      v23 = *(v15 + 1);
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
        do
        {
          v24 = *(v15 + 2);
          v25 = *v24 == v15;
          v15 = v24;
        }

        while (!v25);
      }

      v15 = v24;
      if (v24 == v16)
      {
        goto LABEL_39;
      }
    }

    v43 = *(a1 + 40);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_95;
    }

    v44 = asString();
    TrafficDescriptor::toString(v54, (v15 + 32));
    v45 = v57 >= 0 ? v54 : *v54;
    *buf = 136315650;
    *&buf[4] = v44;
    v59 = 2082;
    v60 = v45;
    v61 = 2048;
    v62 = v21 / 1000000000;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I mustKeepSliceAlive: do not deactivate slice connection %s: recently forwarded app: %{public}s, age %llu secs", buf, 0x20u);
    if ((v57 & 0x80000000) == 0)
    {
      goto LABEL_95;
    }

    v46 = *v54;
    goto LABEL_94;
  }

LABEL_39:
  if (*(a1 + 4928) == 1)
  {
    v26 = *v53;
    if (*v53 == v16)
    {
      goto LABEL_56;
    }

    v27 = 0;
    v28 = 0;
    do
    {
      if (!TrafficDescriptor::hasBundleInfo((v26 + 32)))
      {
        goto LABEL_47;
      }

      if ((v26[104] & 1) == 0)
      {
        goto LABEL_98;
      }

      if ((*(*a1 + 2432))(a1, v26 + 10))
      {
        if ((v26[104] & 1) == 0)
        {
          goto LABEL_98;
        }

        v28 |= (*(*a1 + 2440))(a1, v26 + 10);
      }

      else
      {
LABEL_47:
        v27 = 1;
      }

      v29 = *(v26 + 1);
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = *(v26 + 2);
          v25 = *v30 == v26;
          v26 = v30;
        }

        while (!v25);
      }

      v26 = v30;
    }

    while (v30 != v16);
    if (((v27 | v28) & 1) == 0)
    {
LABEL_56:
      v33 = *(a1 + 40);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I mustKeepSliceAlive: deactivate slice in Wi-Fi because only call kit app(s) are using it and no active call", buf, 2u);
      }

      v31 = 0;
      goto LABEL_96;
    }
  }

  v31 = 0;
  v32 = 0;
  return v31 | (v32 << 8);
}

uint64_t DataServiceController::isInternalSliceApp_sync(DataServiceController *this, const TrafficDescriptor *a2)
{
  v2 = *(this + 671);
  v3 = this + 5376;
  if (v2 == this + 5376)
  {
    return 0;
  }

  v5 = (a2 + 48);
  v6 = (a2 + 16);
  while (*(a2 + 8) != 1 || *(a2 + 1) != *(v2 + 8))
  {
    if (TrafficDescriptor::hasBundleInfo(a2))
    {
      if ((*(a2 + 72) & 1) == 0)
      {
        sub_1000D1644();
      }

      v7 = *(a2 + 71);
      if (v7 >= 0)
      {
        v8 = *(a2 + 71);
      }

      else
      {
        v8 = *(a2 + 7);
      }

      v9 = v2[95];
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v2 + 10);
      }

      if (v8 == v9)
      {
        v11 = v7 >= 0 ? v5 : *v5;
        v12 = v10 >= 0 ? v2 + 72 : *(v2 + 9);
        if (!memcmp(v11, v12, v8))
        {
          break;
        }
      }
    }

    if (*(a2 + 40) == 1)
    {
      v13 = *(a2 + 39);
      if (v13 >= 0)
      {
        v14 = *(a2 + 39);
      }

      else
      {
        v14 = *(a2 + 3);
      }

      v15 = v2[119];
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(v2 + 13);
      }

      if (v14 == v15)
      {
        v17 = v13 >= 0 ? v6 : *v6;
        v18 = v16 >= 0 ? v2 + 96 : *(v2 + 12);
        if (!memcmp(v17, v18, v14))
        {
          break;
        }
      }
    }

    v19 = *(v2 + 1);
    if (v19)
    {
      do
      {
        v20 = v19;
        v19 = *v19;
      }

      while (v19);
    }

    else
    {
      do
      {
        v20 = *(v2 + 2);
        v21 = *v20 == v2;
        v2 = v20;
      }

      while (!v21);
    }

    v2 = v20;
    if (v20 == v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t DataServiceController::specialAppPossiblyActive(DataServiceController *this, const TrafficDescriptor *a2)
{
  result = TrafficDescriptor::hasBundleInfo(a2);
  if (result)
  {
    if ((*(a2 + 72) & 1) == 0)
    {
      sub_1000D1644();
    }

    v4 = a2 + 48;
    v5 = *(a2 + 71);
    if (*(a2 + 71) < 0)
    {
      v7 = *(a2 + 7);
      if (v7 != 18)
      {
        if (v7 == 15)
        {
          v4 = *v4;
          goto LABEL_23;
        }

        return 0;
      }

      v6 = *v4;
    }

    else
    {
      if (v5 == 15)
      {
        goto LABEL_23;
      }

      v6 = a2 + 48;
      if (v5 != 18)
      {
        return 0;
      }
    }

    v8 = *v6;
    v9 = *(v6 + 1);
    v10 = *(v6 + 8);
    if (v8 == 0x6C7070612E6D6F63 && v9 == 0x6974656361662E65 && v10 == 25965)
    {
      return 1;
    }

    if ((v5 & 0x80) == 0)
    {
      if (v5 != 15)
      {
        return 0;
      }

      goto LABEL_23;
    }

    if (*(a2 + 7) == 15)
    {
      v4 = *(a2 + 6);
LABEL_23:
      v13 = *v4;
      v14 = *(v4 + 7);
      return v13 == 0x6C7070612E6D6F63 && v14 == 0x64656D61672E656CLL;
    }

    return 0;
  }

  return result;
}

uint64_t DataServiceController::mustKeepSliceAlive_sync(DataServiceController *this, int a2, unsigned int a3, uint64_t a4)
{
  v36 = 0;
  v8 = *(this + 14);
  __p = *(this + 13);
  v29 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (v29)
  {
    sub_100004A34(v29);
  }

  v9 = *buf;
  v10 = v34;
  if (*buf == v34)
  {
    goto LABEL_42;
  }

  do
  {
    if (v35(*v9))
    {
      break;
    }

    ++v9;
  }

  while (v9 != v34);
  v25 = v34;
  if (v9 == v34)
  {
    goto LABEL_42;
  }

  v27 = 0;
  v24 = v35;
  do
  {
    v11 = *v9;
    v12 = 28;
    while (1)
    {
      v31 = 0;
      v32 = 0;
      DataServiceController::getConnection_sync(this, v11, v12, &v31);
      if (v31 && ((*(*v31 + 168))(v31) & 1) != 0 && (*(*v31 + 200))(v31) == a2)
      {
        __p = 0;
        v29 = 0;
        v30 = 0;
        v13 = (*(*v31 + 416))(v31, &__p);
        mustKeepSliceAliveAll_sync = DataServiceController::mustKeepSliceAliveAll_sync(this, v12, v13, &v36, a3, a4, 0);
        v15 = a4;
        v16 = mustKeepSliceAliveAll_sync & 0x100;
        v17 = v16 == 0;
        v18 = v26;
        if ((mustKeepSliceAliveAll_sync & 0x100) != 0)
        {
          v18 = mustKeepSliceAliveAll_sync;
        }

        v26 = v18;
        if (SHIBYTE(v30) < 0)
        {
          operator delete(__p);
        }

        v19 = v16 >> 8;
        v27 |= v17;
        a4 = v15;
      }

      else
      {
        v19 = 6;
      }

      if (v32)
      {
        sub_100004A34(v32);
      }

      if (v19 != 6 && v19)
      {
        break;
      }

      if (++v12 == 36)
      {
        goto LABEL_27;
      }
    }

    if ((v19 & 3) != 0)
    {
      v21 = 1;
      v20 = v26;
      return v20 | (v21 << 8);
    }

LABEL_27:
    for (++v9; v9 != v10; ++v9)
    {
      if (v24(*v9))
      {
        break;
      }
    }
  }

  while (v9 != v25);
  if ((v27 & 1) == 0)
  {
    goto LABEL_42;
  }

  if (v36 == 1)
  {
    v20 = 0;
    if (!(a4 | a3))
    {
      v21 = 0;
      return v20 | (v21 << 8);
    }

    v21 = 0;
    if (*(this + 5320))
    {
      return v20 | (v21 << 8);
    }
  }

  else
  {
    v21 = a4 | a3;
    if (!(a4 | a3))
    {
      v20 = 0;
      return v20 | (v21 << 8);
    }
  }

  if (a4 + a3 > 0x1FF)
  {
LABEL_42:
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v22 = *(this + 5);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I mustKeepSliceAlive: Slice is not used properly, deactivating", buf, 2u);
    }

    v20 = 0;
    v21 = 1;
  }

  return v20 | (v21 << 8);
}

void sub_1004A2F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, std::__shared_weak_count *a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataServiceController::canUseInternetSlicing_sync(uint64_t a1, uint64_t a2, int a3)
{
  result = (*(*a1 + 2288))(a1);
  if (result)
  {
    v10 = a2;
    result = **sub_100007DEC(a1 + 4960, &v10);
    if (result == 1 && a3 != 0)
    {
      v8 = (*(*a1 + 1120))(a1);
      v9 = (*(*a1 + 1064))(a1, a2);
      v12 = 0;
      LOBYTE(v8) = DataServiceController::SlicesDataContainer::configured(a1 + 4960, a2, v8, v9, v11);
      sub_100007E44(v11);
      return (v8 & 1) != 0 && DataServiceController::isDataModeGoodForInternetSlicing_sync(a1, a2);
    }
  }

  return result;
}

void sub_1004A30F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100007E44(va);
  _Unwind_Resume(a1);
}

BOOL DataServiceController::isDataModeGoodForInternetSlicing_sync(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v10 = a2;
  v4 = sub_100007DEC(a1 + 4960, &v10);
  v5 = *v4;
  v6 = *(*v4 + 4);
  RawDataMode = DataServiceController::getRawDataMode(a1, v2);
  v8 = RawDataMode;
  if (!v6)
  {
    return RawDataMode == 17;
  }

  result = 0;
  if (v8 > 13)
  {
    if (v8 == 14 || v8 == 16)
    {
      return (*(v5 + 4) >> 3) & 1;
    }

    else if (v8 == 17)
    {
      return (*(v5 + 4) >> 4) & 1;
    }
  }

  else if ((v8 - 1) < 5)
  {
    return *(v5 + 4) & 1;
  }

  return result;
}

uint64_t DataServiceController::useInternetSlicing_sync(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a1 + 4096;
  if (*(a1 + 4928) != 1 || (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  DataServiceController::makeDataSimSlotRange(a1, a2, &__p);
  v7 = __p;
  v8 = v17;
  if (__p == v17)
  {
    v9 = 0;
    if (__p)
    {
LABEL_10:
      v17 = v7;
      operator delete(v7);
    }
  }

  else
  {
    v9 = 0;
    do
    {
      if (v9)
      {
        v9 = 1;
      }

      else
      {
        v18 = *v7;
        v9 = *(*sub_100007DEC(a1 + 4960, &v18) + 21);
      }

      ++v7;
    }

    while (v7 != v8);
    v7 = __p;
    if (__p)
    {
      goto LABEL_10;
    }
  }

  if ((v9 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  if (*(v6 + 1176) == 1 && (*(v6 + 1177) & 1) == 0 && !*(a1 + 5296))
  {
    DataServiceController::makeDataSimSlotRange(a1, a2, &__p);
    v10 = __p;
    v11 = v17;
    if (__p == v17)
    {
      v12 = 0;
      if (__p)
      {
LABEL_28:
        v17 = v10;
        operator delete(v10);
      }
    }

    else
    {
      LOBYTE(v12) = 0;
      do
      {
        v18 = *v10;
        v13 = sub_100007DEC(a1 + 4960, &v18);
        if (v12 || (v14 = *v13, *(*v13 + 12) == 1) && ((*(v14 + 13) & 1) != 0 || (*(v14 + 14) & 1) != 0))
        {
          v12 = 1;
        }

        else
        {
          v12 = ((*(v14 + 1) & 1) != 0 || *(v14 + 2) == 1) && *(v14 + 152) != 0;
        }

        ++v10;
      }

      while (v10 != v11);
      v10 = __p;
      if (__p)
      {
        goto LABEL_28;
      }
    }

    if (v12)
    {
      goto LABEL_30;
    }

    return 0;
  }

LABEL_30:
  result = (*(*a1 + 2280))(a1, a2, a3 ^ 1u);
  if (result)
  {
    result = (*(*a1 + 1152))(a1, a2);
    if (result)
    {
      result = (*(*a1 + 1904))(a1);
      if (result)
      {
        return (*(*a1 + 1896))(a1, a2) ^ 1;
      }
    }
  }

  return result;
}

void sub_1004A3474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::makeDataSimSlotRange(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = (*(*a1 + 1120))(a1);
  if (a2 == 3 || v5 == a2)
  {
    sub_100016740(a3, 1uLL);
  }
}

void sub_1004A3550(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::resetSlicePoliciesOnDataModeChange_sync(uint64_t a1, uint64_t a2)
{
  isDataModeGoodForInternetSlicing_sync = DataServiceController::isDataModeGoodForInternetSlicing_sync(a1, a2);
  v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = asStringBool(isDataModeGoodForInternetSlicing_sync);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Slice connectivity: Data Mode changed to: %s", &v7, 0xCu);
  }

  v7 = a2;
  v6 = sub_100007DEC(a1 + 4960, &v7);
  DataServiceController::resetSlicePolicies_sync(a1, a2, 0, *(*v6 + 22) & ~isDataModeGoodForInternetSlicing_sync & 1);
}

void DataServiceController::resetSlicePolicies_sync(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v43 = a2;
  DataServiceController::sliceTrafficDescriptors_sync(a1, a2, "reset policies");
  v6 = *(a1 + 112);
  *buf = *(a1 + 104);
  v51[0] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (v51[0])
  {
    sub_100004A34(v51[0]);
  }

  v8 = v52;
  v7 = v53;
  if (v52 != v53)
  {
    v41 = a3 | a4;
    v9 = v54;
    do
    {
      if (v54(*v8))
      {
        break;
      }

      ++v8;
    }

    while (v8 != v53);
    v40 = v53;
    while (v8 != v40)
    {
      v10 = *v8;
      v44 = (*(**(a1 + 48) + 16))(*(a1 + 48), v10);
      *buf = v10;
      v11 = *sub_100007DEC(a1 + 4960, buf);
      v12 = *v44;
      if (os_log_type_enabled(*v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I we are clearing cached traffic descriptors", buf, 2u);
      }

      v14 = *(v11 + 56);
        ;
      }

      *(v11 + 64) = v14;
      v51[0] = 0;
      v51[1] = 0;
      *buf = v51;
      LODWORD(__p) = 0;
      sub_1000C4284(buf, &__p, &__p);
      if (v41 || (*(v11 + 18) & 1) != 0)
      {
        for (j = 28; j != 36; ++j)
        {
          LODWORD(__p) = j;
          sub_1000C4284(buf, &__p, &__p);
        }
      }

      else
      {
        for (k = 28; k != 36; ++k)
        {
          *v55 = 0;
          *&v55[8] = 0;
          DataServiceController::getConnection_sync(a1, v10, k, v55);
          if (*v55 && ((*(**v55 + 168))(*v55) & 1) != 0)
          {
            __p = 0;
            v48 = 0;
            v49 = 0;
            v17 = (*(**v55 + 416))(*v55, &__p);
            v19 = v17 + 1;
            v18 = *v17;
            if (*v17 == v17 + 1)
            {
LABEL_36:
              LODWORD(p_p) = k;
              sub_1000C4284(buf, &p_p, &p_p);
              if (SHIBYTE(v49) < 0)
              {
                operator delete(__p);
              }
            }

            else
            {
              v20 = 0;
              while (1)
              {
                hasAccountInfo = TrafficDescriptor::hasAccountInfo((v18 + 4));
                if (hasAccountInfo)
                {
                  break;
                }

                v22 = v18[1];
                if (v22)
                {
                  do
                  {
                    v23 = v22;
                    v22 = *v22;
                  }

                  while (v22);
                }

                else
                {
                  do
                  {
                    v23 = v18[2];
                    v24 = *v23 == v18;
                    v18 = v23;
                  }

                  while (!v24);
                }

                v20 |= hasAccountInfo;
                v18 = v23;
                if (v23 == v19)
                {
                  if ((v20 & 1) == 0)
                  {
                    goto LABEL_36;
                  }

                  break;
                }
              }

              if (SHIBYTE(v49) < 0)
              {
                operator delete(__p);
              }
            }
          }

          if (*&v55[8])
          {
            sub_100004A34(*&v55[8]);
          }
        }
      }

      v25 = *buf;
      if (*buf != v51)
      {
        do
        {
          v26 = *(v25 + 7);
          *v55 = 0;
          *&v55[8] = 0;
          DataServiceController::getConnection_sync(a1, v10, v26, v55);
          if (*v55)
          {
            __p = 0;
            v48 = 0;
            v49 = 0;
            sub_100127C2C(*(a1 + 152), v10, &__p);
            if (0x6DB6DB6DB6DB6DB7 * ((v48 - __p) >> 3) > v26)
            {
              v27 = *(__p + 14 * v26);
              ActiveNetworkByConnection_sync = DataServiceController::getActiveNetworkByConnection_sync(a1, v10, v26);
              (*(**v55 + 440))(*v55, ActiveNetworkByConnection_sync, v27 == 0, 1);
            }

            p_p = &__p;
            sub_10009C118(&p_p);
          }

          if (*&v55[8])
          {
            sub_100004A34(*&v55[8]);
          }

          v29 = v25[1];
          if (v29)
          {
            do
            {
              v30 = v29;
              v29 = *v29;
            }

            while (v29);
          }

          else
          {
            do
            {
              v30 = v25[2];
              v24 = *v30 == v25;
              v25 = v30;
            }

            while (!v24);
          }

          v25 = v30;
        }

        while (v30 != v51);
      }

      if (a4)
      {
        __p = 0;
        v48 = 0;
        v49 = 0;
        sub_10000501C(&__p, "resetSlicePolicies_sync: forced shutdown");
        v31 = *buf;
        if (*buf != v51)
        {
          do
          {
            v32 = *(v31 + 7);
            if (v32)
            {
              p_p = 0;
              v46 = 0;
              DataServiceController::getConnection_sync(a1, v10, v32, &p_p);
              if (p_p && (*(*p_p + 21))(p_p))
              {
                v33 = *v44;
                if (os_log_type_enabled(*v44, OS_LOG_TYPE_DEFAULT))
                {
                  v34 = asString();
                  *v55 = 136315394;
                  *&v55[4] = "resetSlicePolicies_sync";
                  *&v55[12] = 2080;
                  *&v55[14] = v34;
                  _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s: Deactivating %s...", v55, 0x16u);
                }

                if (v49 >= 0)
                {
                  v35 = &__p;
                }

                else
                {
                  v35 = __p;
                }

                DataServiceController::enableContextStateChangeNotificationRepost(a1, v43, v32, v35, 1);
                (*(*p_p + 12))(p_p, "resetSlicePolicies_sync", "CommCenter");
              }

              if (v46)
              {
                sub_100004A34(v46);
              }
            }

            v36 = v31[1];
            if (v36)
            {
              do
              {
                v37 = v36;
                v36 = *v36;
              }

              while (v36);
            }

            else
            {
              do
              {
                v37 = v31[2];
                v24 = *v37 == v31;
                v31 = v37;
              }

              while (!v24);
            }

            v31 = v37;
          }

          while (v37 != v51);
        }

        if (SHIBYTE(v49) < 0)
        {
          operator delete(__p);
        }
      }

      if ((*(*a1 + 2272))(a1, v10, 0))
      {
        v48 = 0;
        v49 = 0;
        __p = &v48;
        v38 = *(a1 + 1136);
        v39 = *(a1 + 1144);
        while (v38 != v39)
        {
          if (DataServiceController::sliceApp(a1, v10, v38))
          {
            sub_100005BA0(&__p, v38, v38);
          }

          v38 += 3;
        }

        DataServiceController::addFrontPolicies(a1, v10, &__p);
        DataServiceController::activateLlphs(a1, v10);
        sub_100009970(&__p, v48);
      }

      DataServiceController::updateNrSliceConfigured_sync(a1, v10);
      sub_10006DCAC(buf, v51[0]);
      do
      {
        ++v8;
      }

      while (v8 != v7 && (v9(*v8) & 1) == 0);
    }
  }
}

void sub_1004A3DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, std::__shared_weak_count *a27)
{
  if (a27)
  {
    sub_100004A34(a27);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::resetSlicePoliciesOnWiFiChange_sync(DataServiceController *this, BOOL a2)
{
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = asStringBool(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Slice connectivity: Wi-Fi changed to: %s", &buf, 0xCu);
  }

  v5 = *(this + 14);
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (v10)
  {
    sub_100004A34(v10);
  }

  v7 = *(&buf + 1);
  v6 = buf;
  if (buf != *(&buf + 1))
  {
    v8 = v12;
    do
    {
      if (v8(*v6))
      {
        break;
      }

      ++v6;
    }

    while (v6 != v7);
    v9 = *(&buf + 1);
    while (v6 != v9)
    {
      DataServiceController::resetSlicePolicies_sync(this, *v6, 0, 0);
      do
      {
        ++v6;
      }

      while (v6 != v7 && (v8(*v6) & 1) == 0);
    }
  }
}

void sub_1004A3FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::resetSlicePoliciesOnVpnChange_sync(DataServiceController *this, int a2, int a3)
{
  v3 = a3;
  v4 = a2;
  if (*(this + 5272) != a2 || *(this + 5273) != a3)
  {
    *(this + 5272) = a2;
    *(this + 5273) = a3;
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = asStringBool(v4);
      *&buf[12] = 2080;
      *&buf[14] = asStringBool(v3);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Slice connectivity: VPN changed to: %s, usesPolicyBasedRouting: %s", buf, 0x16u);
    }

    v7 = *(this + 14);
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    subscriber::makeSimSlotRange();
    if (v12)
    {
      sub_100004A34(v12);
    }

    v8 = *buf;
    v9 = *&buf[8];
    if (*buf != *&buf[8])
    {
      v10 = *&buf[16];
      do
      {
        if (v10(*v8))
        {
          break;
        }

        ++v8;
      }

      while (v8 != v9);
      v11 = *&buf[8];
      while (v8 != v11)
      {
        DataServiceController::resetSlicePolicies_sync(this, *v8, 1, 0);
        do
        {
          ++v8;
        }

        while (v8 != v9 && (v10(*v8) & 1) == 0);
      }
    }
  }
}

void sub_1004A4190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *DataServiceController::sliceTrafficDescriptors_sync(uint64_t a1, int a2, uint64_t a3)
{
  DataServiceController::makeDataSimSlotRange(a1, a2, &v107);
  v4 = v107;
  v5 = v108;
  if (v107 == v108)
  {
    v6 = &unk_1018086F0;
    goto LABEL_221;
  }

  v6 = &unk_1018086F0;
  while (1)
  {
    v7 = *v4;
    v93 = (*(**(a1 + 48) + 16))(*(a1 + 48), v7);
    LODWORD(buf) = v7;
    v8 = sub_100007DEC(a1 + 4960, &buf);
    v94 = *v8;
    if (*(*v8 + 56) != *(*v8 + 64))
    {
      v6 = (v94 + 56);
      v10 = *v93;
      if (os_log_type_enabled(*v93, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I we are using cached traffic descriptors", &buf, 2u);
      }

      goto LABEL_221;
    }

    if (sub_100097DB0(*(a1 + 144), v7))
    {
      v9 = *(sub_1000A8A0C(*(a1 + 144), v7) + 24);
      if (v9)
      {
        break;
      }
    }

    if (++v4 == v5)
    {
      goto LABEL_221;
    }
  }

  v104 = 0;
  v105 = 0;
  v106 = 0;
  v11 = (*(*v9 + 936))(v9);
  v104 = 0;
  v105 = 0;
  v106 = 0;
  sub_1004BE904(&v104, *v11, v11[1], 0x86BCA1AF286BCA1BLL * ((v11[1] - *v11) >> 4));
  LODWORD(v101) = v7;
  v12 = sub_100007DEC(a1 + 4960, &v101);
  v13 = v93;
  v15 = *(*v12 + 32);
  v14 = *(*v12 + 40);
  while (v15 != v14)
  {
    sub_1004A6280(&v104, v15);
    v15 = (v15 + 304);
  }

  v101 = 0;
  v102 = 0;
  v103 = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v16 = v104;
  v91 = v105;
  if (v104 == v105)
  {
    goto LABEL_176;
  }

  v92 = (v94 + 144);
  while (2)
  {
    if (!TrafficDescriptor::hasBundleInfo(v16))
    {
      goto LABEL_24;
    }

    if ((*(v16 + 72) & 1) == 0)
    {
      sub_1000D1644();
    }

    v17 = (v16 + 48);
    if (a1 + 4992 == sub_100007A6C(a1 + 4984, (v16 + 48)))
    {
LABEL_24:
      v95 = 0;
      v96 = 0;
      v97 = 0;
      TrafficDescriptor::TrafficDescriptor(&buf, v16);
      v95 = 0;
      v96 = 0;
      v97 = 0;
      sub_1004BEA68(&v95, &buf, &v131, 1uLL);
      TrafficDescriptor::~TrafficDescriptor(&buf);
      if (TrafficDescriptor::hasDnnInfo(v16))
      {
        if (*(v94 + 152))
        {
          v20 = v95;
            ;
          }

          v96 = v20;
          v23 = *(v94 + 136);
          if (v23 != v92)
          {
            while (1)
            {
              if ((TrafficDescriptor::hasBundleInfo(v16) & 1) == 0)
              {
                v129 = 0u;
                v130 = 0u;
                v127 = 0u;
                v128 = 0u;
                v125 = 0u;
                v126 = 0u;
                v123 = 0u;
                v124 = 0u;
                v121 = 0u;
                v122 = 0u;
                v119 = 0u;
                v120 = 0u;
                v117 = 0u;
                v118 = 0u;
                v115 = 0u;
                v116 = 0u;
                v113 = 0u;
                v114 = 0u;
                buf = 0u;
                TrafficDescriptor::TrafficDescriptor(&buf, v16);
                sub_1001696A4(&v115, (v23 + 4));
                v24 = v96;
                if (v96 >= v97)
                {
                  v25 = sub_1001C1784(&v95, &buf);
                }

                else
                {
                  TrafficDescriptor::TrafficDescriptor(v96, &buf);
                  v25 = (v24 + 304);
                }

                v96 = v25;
                TrafficDescriptor::~TrafficDescriptor(&buf);
                goto LABEL_60;
              }

              memset(&__p, 0, sizeof(__p));
              if ((*(v16 + 72) & 1) == 0)
              {
                sub_1000D1644();
              }

              if (*(v16 + 71) < 0)
              {
                sub_100005F2C(&__p, *(v16 + 48), *(v16 + 56));
              }

              else
              {
                __p = *(v16 + 48);
              }

              v26 = *(v23 + 79);
              if (v26 >= 0)
              {
                v27 = *(v23 + 79);
              }

              else
              {
                v27 = v23[8];
              }

              size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = __p.__r_.__value_.__l.__size_;
              }

              if (v27 == size)
              {
                v30 = v26 >= 0 ? v23 + 7 : v23[7];
                v31 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                if (!memcmp(v30, v31, v27))
                {
                  break;
                }
              }

              if (v29 < 0)
              {
                goto LABEL_59;
              }

LABEL_60:
              v32 = v23[1];
              if (v32)
              {
                do
                {
                  v33 = v32;
                  v32 = *v32;
                }

                while (v32);
              }

              else
              {
                do
                {
                  v33 = v23[2];
                  v34 = *v33 == v23;
                  v23 = v33;
                }

                while (!v34);
              }

              v23 = v33;
              if (v33 == v92)
              {
                v20 = v96;
                goto LABEL_72;
              }
            }

            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v128 = 0u;
            v125 = 0u;
            v126 = 0u;
            v123 = 0u;
            v124 = 0u;
            v121 = 0u;
            v122 = 0u;
            v119 = 0u;
            v120 = 0u;
            v117 = 0u;
            v118 = 0u;
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            buf = 0u;
            TrafficDescriptor::TrafficDescriptor(&buf, v16);
            sub_1001696A4(&v115, (v23 + 4));
            sub_1001696A4(&v117, &__p);
            v35 = v96;
            if (v96 >= v97)
            {
              v36 = sub_1001C1784(&v95, &buf);
            }

            else
            {
              TrafficDescriptor::TrafficDescriptor(v96, &buf);
              v36 = (v35 + 304);
            }

            v96 = v36;
            TrafficDescriptor::~TrafficDescriptor(&buf);
            if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
            {
              goto LABEL_60;
            }

LABEL_59:
            operator delete(__p.__r_.__value_.__l.__data_);
            goto LABEL_60;
          }

LABEL_72:
          if (v95 != v20)
          {
            goto LABEL_73;
          }

          v54 = *v13;
          if (!os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_115;
          }

          TrafficDescriptor::toString(&buf, v16);
          if ((SBYTE7(v113) & 0x80u) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136446210;
          *(__p.__r_.__value_.__r.__words + 4) = p_buf;
          v56 = v54;
          v57 = "#N We do not know what to do with this Enterprise traffic descriptor, wrong bundle id or else: %{public}s";
LABEL_135:
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, v57, &__p, 0xCu);
          if (SBYTE7(v113) < 0)
          {
            v58 = buf;
LABEL_137:
            operator delete(v58);
          }

LABEL_115:
          *&buf = &v95;
          sub_1001B8A7C(&buf);
          goto LABEL_116;
        }

        v52 = *v13;
        if (!os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_115;
        }

        TrafficDescriptor::toString(&buf, v16);
        if ((SBYTE7(v113) & 0x80u) == 0)
        {
          v53 = &buf;
        }

        else
        {
          v53 = buf;
        }

LABEL_134:
        LODWORD(__p.__r_.__value_.__l.__data_) = 136446210;
        *(__p.__r_.__value_.__r.__words + 4) = v53;
        v56 = v52;
        v57 = "#E We do not know what to do with this Enterprise traffic descriptor: %{public}s if no managedAllowedApps configured. We are not going to set a broad all-inclusive traffic interception and examination for that purpose.";
        goto LABEL_135;
      }

      if (*(v16 + 72) == 1 && v94 + 168 != sub_100007A6C(v94 + 160, (v16 + 48)))
      {
        if (!*(v94 + 152))
        {
          v52 = *v13;
          if (!os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_115;
          }

          TrafficDescriptor::toString(&buf, v16);
          if ((SBYTE7(v113) & 0x80u) == 0)
          {
            v53 = &buf;
          }

          else
          {
            v53 = buf;
          }

          goto LABEL_134;
        }

        v22 = v95;
          ;
        }

        v96 = v22;
        memset(&__p, 0, sizeof(__p));
        if ((*(v16 + 72) & 1) == 0)
        {
          sub_1000D1644();
        }

        if (*(v16 + 71) < 0)
        {
          sub_100005F2C(&__p, *(v16 + 48), *(v16 + 56));
        }

        else
        {
          __p = *(v16 + 48);
        }

        v59 = *(v94 + 136);
        if (v59 != v92)
        {
          do
          {
            v60 = *(v59 + 79);
            if (v60 >= 0)
            {
              v61 = *(v59 + 79);
            }

            else
            {
              v61 = v59[8];
            }

            v62 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v62 = __p.__r_.__value_.__l.__size_;
            }

            if (v61 == v62)
            {
              v63 = v60 >= 0 ? v59 + 7 : v59[7];
              v64 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
              if (!memcmp(v63, v64, v61))
              {
                v129 = 0u;
                v130 = 0u;
                v127 = 0u;
                v128 = 0u;
                v125 = 0u;
                v126 = 0u;
                v123 = 0u;
                v124 = 0u;
                v121 = 0u;
                v122 = 0u;
                v119 = 0u;
                v120 = 0u;
                v117 = 0u;
                v118 = 0u;
                v115 = 0u;
                v116 = 0u;
                v113 = 0u;
                v114 = 0u;
                buf = 0u;
                TrafficDescriptor::TrafficDescriptor(&buf, v16);
                sub_1001696A4(&v115, (v59 + 4));
                sub_1001696A4(&v117, &__p);
                v65 = v96;
                if (v96 >= v97)
                {
                  v66 = sub_1001C1784(&v95, &buf);
                }

                else
                {
                  TrafficDescriptor::TrafficDescriptor(v96, &buf);
                  v66 = (v65 + 304);
                }

                v96 = v66;
                TrafficDescriptor::~TrafficDescriptor(&buf);
              }
            }

            v67 = v59[1];
            if (v67)
            {
              do
              {
                v68 = v67;
                v67 = *v67;
              }

              while (v67);
            }

            else
            {
              do
              {
                v68 = v59[2];
                v34 = *v68 == v59;
                v59 = v68;
              }

              while (!v34);
            }

            v59 = v68;
          }

          while (v68 != v92);
        }

        if (v95 == v96)
        {
          v69 = *v13;
          if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
          {
            TrafficDescriptor::toString(&buf, v16);
            v70 = (SBYTE7(v113) & 0x80u) == 0 ? &buf : buf;
            *v109 = 136446210;
            v110 = v70;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "#E We do not know what to do with this Enterprise traffic descriptor, wrong bundle id or else: %{public}s", v109, 0xCu);
            if (SBYTE7(v113) < 0)
            {
              operator delete(buf);
            }
          }

          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_115;
          }

          v58 = __p.__r_.__value_.__r.__words[0];
          goto LABEL_137;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

LABEL_73:
      if (*(v94 + 12) == 1 && ((*(v94 + 13) & 1) != 0 || *(v94 + 14) == 1))
      {
        v38 = v95;
        v37 = v96;
        while (v38 != v37)
        {
          if (TrafficDescriptor::hasBundleInfo(v38))
          {
            v109[0] = 0;
            memset(&__p, 0, sizeof(__p));
            if ((*(v38 + 72) & 1) == 0)
            {
              sub_1000D1644();
            }

            DataServiceController::convertBundleIdToAccountIds(a1, v38 + 48, v109, v94, &__p.__r_.__value_.__l.__data_);
            v40 = __p.__r_.__value_.__l.__size_;
            v39 = __p.__r_.__value_.__r.__words[0];
            if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_ && ((v109[0] & 1) != 0 || (*(v94 + 20) & 1) == 0))
            {
              do
              {
                v129 = 0u;
                v130 = 0u;
                v127 = 0u;
                v128 = 0u;
                v125 = 0u;
                v126 = 0u;
                v123 = 0u;
                v124 = 0u;
                v121 = 0u;
                v122 = 0u;
                v119 = 0u;
                v120 = 0u;
                v117 = 0u;
                v118 = 0u;
                v115 = 0u;
                v116 = 0u;
                v113 = 0u;
                v114 = 0u;
                buf = 0u;
                TrafficDescriptor::TrafficDescriptor(&buf);
                sub_1001696A4(&v119, (v39 + 8));
                if ((*(v38 + 72) & 1) == 0)
                {
LABEL_224:
                  sub_1000D1644();
                }

                sub_1001696A4(&v117, v38 + 2);
                if (v109[0])
                {
                  v41 = 257;
                }

                else
                {
                  v41 = 0;
                }

                LOWORD(v121) = v41;
                if (TrafficDescriptor::hasRsDnnInfo(v38))
                {
                  if (*(v38 + 296) != 1)
                  {
                    goto LABEL_224;
                  }

                  sub_1001696A4(&v129, (v38 + 272));
                }

                v42 = v99;
                if (v99 >= v100)
                {
                  v43 = sub_1001C1784(&v98, &buf);
                }

                else
                {
                  TrafficDescriptor::TrafficDescriptor(v99, &buf);
                  v43 = (v42 + 304);
                }

                v99 = v43;
                TrafficDescriptor::~TrafficDescriptor(&buf);
                v39 += 32;
              }

              while (v39 != v40);
            }

            *&buf = &__p;
            sub_10001E200(&buf);
            v13 = v93;
          }

          v38 = (v38 + 304);
        }
      }

      buf = 0uLL;
      *&v113 = 0;
      DataServiceController::matchAndConvertCategorySlice(a1, v7, &v95, &buf, a3);
      v44 = *(&buf + 1);
      for (k = buf; ; k = (k + 304))
      {
        if (k == v44)
        {
          __p.__r_.__value_.__r.__words[0] = &buf;
          sub_1001B8A7C(&__p);
          goto LABEL_115;
        }

        if (!DataServiceController::trafficClassAllowed_sync(a1, k))
        {
          break;
        }

        if (DataServiceController::sliceAllowed(a1, v7, k, 1, 1))
        {
          sub_1004A6280(&v101, k);
          continue;
        }

        v50 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          TrafficDescriptor::toString(&__p, k);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *v109 = 136446210;
          v110 = p_p;
          v48 = v50;
          v49 = "#N slice not allowed: %{public}s";
LABEL_111:
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, v49, v109, 0xCu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          continue;
        }

LABEL_113:
        ;
      }

      v46 = *v13;
      if (!os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_113;
      }

      TrafficDescriptor::toString(&__p, k);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &__p;
      }

      else
      {
        v47 = __p.__r_.__value_.__r.__words[0];
      }

      *v109 = 136446210;
      v110 = v47;
      v48 = v46;
      v49 = "#N traffic descriptor not allowed: %{public}s";
      goto LABEL_111;
    }

    v18 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(v16 + 72) & 1) == 0)
      {
        sub_1000D1644();
      }

      if (*(v16 + 71) < 0)
      {
        v17 = *v17;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#N we do not allow specific bundle ids in the URSP rules: %s, skipping this definition", &buf, 0xCu);
    }

LABEL_116:
    v16 += 304;
    if (v16 != v91)
    {
      continue;
    }

    break;
  }

  v72 = v98;
  for (m = v99; v72 != m; v72 = (v72 + 304))
  {
    sub_1004A6280(&v101, v72);
  }

LABEL_176:
  v73 = *v13;
  if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "#I we are setting new cached traffic descriptors", &buf, 2u);
  }

  buf = 0uLL;
  *&v113 = 0;
  if (*(v94 + 1) == 1)
  {
    v75 = v101;
    v74 = v102;
    while (v75 != v74)
    {
      if (sub_1004AA0B4(v94, v75))
      {
        sub_1004A6280(&buf, v75);
      }

      v75 = (v75 + 304);
    }
  }

  if (*(v94 + 12) == 1 && ((*(v94 + 13) & 1) != 0 || *(v94 + 14) == 1))
  {
    v77 = v101;
    v76 = v102;
    while (v77 != v76)
    {
      if (!sub_1004AA0B4(v94, v77) && TrafficDescriptor::isXR(v77))
      {
        sub_1004A6280(&buf, v77);
      }

      v77 = (v77 + 304);
    }
  }

  v79 = v101;
  v78 = v102;
  if (v101 != v102)
  {
    do
    {
      if (!sub_1004AA0B4(v94, v79) && TrafficDescriptor::dualXR(v79))
      {
        sub_1004A6280(&buf, v79);
      }

      v79 = (v79 + 304);
    }

    while (v79 != v78);
    v79 = v101;
    v78 = v102;
  }

  while (v79 != v78)
  {
    if (!sub_1004AA0B4(v94, v79) && TrafficDescriptor::notXR(v79))
    {
      sub_1004A6280(&buf, v79);
    }

    v79 = (v79 + 304);
  }

  v81 = *(&buf + 1);
  v80 = buf;
  if (*(&buf + 1) == buf)
  {
    v84 = 0x86BCA1AF286BCA1BLL * ((*(&buf + 1) - buf) >> 4);
  }

  else
  {
    v82 = 0;
    v83 = 0;
    do
    {
      DataServiceController::adjustProtocol(a1, (v80 + v82));
      v80 = buf;
      *(buf + v82) = v83++;
      v81 = *(&buf + 1);
      v84 = 0x86BCA1AF286BCA1BLL * ((*(&buf + 1) - v80) >> 4);
      v82 += 304;
    }

    while (v83 < v84);
  }

  if (v81 != v80)
  {
    v85 = 0;
    v86 = 0;
    do
    {
      v87 = *v93;
      if (os_log_type_enabled(*v93, OS_LOG_TYPE_DEFAULT))
      {
        TrafficDescriptor::toString(&v95, (v80 + v85));
        v88 = &v95;
        if ((v97 & 0x8000000000000000) != 0)
        {
          v88 = v95;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 67109378;
        HIDWORD(__p.__r_.__value_.__r.__words[0]) = v86;
        LOWORD(__p.__r_.__value_.__r.__words[1]) = 2080;
        *(&__p.__r_.__value_.__r.__words[1] + 2) = v88;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "#I tds: ret[%d] = %s", &__p, 0x12u);
        if (SHIBYTE(v97) < 0)
        {
          operator delete(v95);
        }

        v81 = *(&buf + 1);
        v80 = buf;
      }

      ++v86;
      v84 = 0x86BCA1AF286BCA1BLL * ((v81 - v80) >> 4);
      v85 += 304;
    }

    while (v86 < v84);
  }

  v6 = (v94 + 56);
  if ((v94 + 56) != &buf)
  {
    sub_1001C18CC((v94 + 56), v80, v81, v84);
  }

  DataServiceController::notifyLLPHS_sync(a1, 0, 0, 1);
  v95 = &buf;
  sub_1001B8A7C(&v95);
  *&buf = &v98;
  sub_1001B8A7C(&buf);
  *&buf = &v101;
  sub_1001B8A7C(&buf);
  *&buf = &v104;
  sub_1001B8A7C(&buf);
LABEL_221:
  if (v107)
  {
    v108 = v107;
    operator delete(v107);
  }

  return v6;
}

void sub_1004A5128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char *a46)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  a46 = &a22;
  sub_1001B8A7C(&a46);
  a46 = &a25;
  sub_1001B8A7C(&a46);
  a46 = &a28;
  sub_1001B8A7C(&a46);
  a46 = &a31;
  sub_1001B8A7C(&a46);
  if (a34)
  {
    a35 = a34;
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

void DataServiceController::addFrontPolicies(DataServiceController *a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 671);
  v7 = (a1 + 5376);
  if (v6 != (a1 + 5376))
  {
    while (1)
    {
      v8 = *(a1 + 5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v6 + 9;
        if (*(v6 + 95) < 0)
        {
          v9 = *v9;
        }

        v10 = v6 + 12;
        if (*(v6 + 119) < 0)
        {
          v10 = *v10;
        }

        v11 = v6 + 6;
        if (*(v6 + 71) < 0)
        {
          v11 = *v11;
        }

        v12 = *(v6 + 8);
        v13 = v6[5];
        *buf = 67110146;
        *&buf[4] = v12;
        *&buf[8] = 2080;
        *&buf[10] = v9;
        *&buf[18] = 2080;
        *&buf[20] = v10;
        v30 = 2080;
        v31 = v11;
        v32 = 2048;
        v33 = v13;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Front policies adding (test): pid=%d bundleId=%s uuid=%s procName=%s category=%lu", buf, 0x30u);
      }

      v26 = 0uLL;
      v27 = 0;
      if ((*(v6 + 95) & 0x8000000000000000) == 0)
      {
        if (*(v6 + 95))
        {
          break;
        }

        goto LABEL_25;
      }

      if (v6[10])
      {
        break;
      }

LABEL_25:
      *buf = &v26;
      sub_1001B8A7C(buf);
      v18 = v6[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v6[2];
          v20 = *v19 == v6;
          v6 = v19;
        }

        while (!v20);
      }

      v6 = v19;
      if (v19 == v7)
      {
        goto LABEL_31;
      }
    }

    DataServiceController::getTrafficDescriptorsForBundleId(a1, a2, (v6 + 9), 1, buf);
    sub_1001C1A74(&v26);
    v26 = *buf;
    v14 = *&buf[16];
    memset(buf, 0, 24);
    v27 = v14;
    v28 = buf;
    sub_1001B8A7C(&v28);
    v16 = *(&v26 + 1);
    for (i = v26; ; i += 304)
    {
      if (i == v16)
      {
        goto LABEL_25;
      }

      buf[0] = 0;
      buf[24] = 0;
      v17 = sub_10016A270(i + 240, buf);
      if (buf[24] == 1 && (buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if ((*(v6 + 119) & 0x8000000000000000) != 0)
      {
        break;
      }

      if (*(v6 + 119))
      {
        goto LABEL_23;
      }

LABEL_24:
      *(i + 4) = *(v6 + 8);
      *(i + 8) = 1;
      (*(*a1 + 2312))(a1, i, v17);
    }

    if (!v6[13])
    {
      goto LABEL_24;
    }

LABEL_23:
    sub_1001696A4((i + 16), v6 + 4);
    goto LABEL_24;
  }

LABEL_31:
  *buf = a2;
  if (*(*sub_100007DEC(a1 + 4960, buf) + 120))
  {
    v20 = a3[2] == 0;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    v23 = *a3;
    v21 = (a3 + 1);
    v22 = v23;
    if (v23 != v21)
    {
      do
      {
        DataServiceController::addFrontPolicies(a1, a2, v22 + 32);
        v24 = *(v22 + 1);
        if (v24)
        {
          do
          {
            v25 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          do
          {
            v25 = *(v22 + 2);
            v20 = *v25 == v22;
            v22 = v25;
          }

          while (!v20);
        }

        v22 = v25;
      }

      while (v25 != v21);
    }
  }
}

TrafficDescriptor **DataServiceController::activateLlphs(TrafficDescriptor **result, uint64_t a2)
{
  if (*(result + 5320) == 1)
  {
    v3 = result;
    result = DataServiceController::sliceTrafficDescriptors_sync(result, a2, "llphs");
    v4 = *result;
    v5 = result[1];
    while (v4 != v5)
    {
      result = TrafficDescriptor::hasAccountInfo(v4);
      if (result)
      {
        result = DataServiceController::sliceAllowed(v3, a2, v4, 0, 1);
        if (result)
        {
          result = (*(*v3 + 2312))(v3, v4);
        }
      }

      v4 = (v4 + 304);
    }
  }

  return result;
}

void DataServiceController::updateNrSliceConfigured_sync(void *a1, uint64_t a2)
{
  if ((*(*a1 + 2288))(a1))
  {
    v3 = a1[14];
    v8 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    subscriber::makeSimSlotRange();
    if (v8)
    {
      sub_100004A34(v8);
    }

    v4 = v9;
    if (v9 != v10)
    {
      do
      {
        if (v11(*v4))
        {
          break;
        }

        ++v4;
      }

      while (v4 != v10);
      while (v4 != v10)
      {
        v5 = *v4;
        v6 = *(sub_1000A8A0C(a1[18], *v4) + 24);
        if (v6)
        {
          isNrSliceConfigured_sync = DataServiceController::isNrSliceConfigured_sync(a1, v5);
          (*(*v6 + 768))(v6, isNrSliceConfigured_sync);
        }

        do
        {
          ++v4;
        }

        while (v4 != v10 && (v11(*v4) & 1) == 0);
      }
    }
  }
}

void sub_1004A5848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataServiceController::isNrSliceConfigured_sync(void *a1, uint64_t a2)
{
  v4 = a1[14];
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  isValidSimSlot = subscriber::isValidSimSlot();
  if (v10)
  {
    sub_100004A34(v10);
  }

  if ((isValidSimSlot & 1) == 0 || (*(*a1 + 1120))(a1) != a2 || !(*(*a1 + 2288))(a1))
  {
    return 0;
  }

  v6 = (*(*a1 + 1120))(a1);
  v7 = (*(*a1 + 1064))(a1, a2);
  v12 = 0;
  v8 = DataServiceController::SlicesDataContainer::configured((a1 + 620), a2, v6, v7, v11);
  sub_100007E44(v11);
  return v8;
}

void sub_1004A5A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100007E44(va);
  _Unwind_Resume(a1);
}

void DataServiceController::getTrafficDescriptorsForBundleId(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v7 = a2;
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  isManagedApp = DataServiceController::isManagedApp(a1, a2, a3);
  v11 = DataServiceController::sliceTrafficDescriptors_sync(a1, v7, "bundle id");
  v12 = v11[1];
  if (*v11 != v12)
  {
    v13 = *v11 + 48;
    do
    {
      if (isManagedApp & 1 | ((TrafficDescriptor::hasDnnInfo((v13 - 48)) & 1) == 0) && ((TrafficDescriptor::hasDnnInfo((v13 - 48)) | isManagedApp ^ 1) & 1) != 0)
      {
        if (TrafficDescriptor::hasBundleInfo((v13 - 48)))
        {
          if ((*(v13 + 24) & 1) == 0)
          {
            sub_1000D1644();
          }

          v14 = *(v13 + 23);
          if (v14 >= 0)
          {
            v15 = *(v13 + 23);
          }

          else
          {
            v15 = *(v13 + 8);
          }

          v16 = *(a3 + 23);
          v17 = v16;
          if ((v16 & 0x80u) != 0)
          {
            v16 = *(a3 + 8);
          }

          if (v15 == v16)
          {
            v18 = v14 >= 0 ? v13 : *v13;
            v19 = v17 >= 0 ? a3 : *a3;
            if (!memcmp(v18, v19, v15))
            {
              sub_1004A6280(a5, (v13 - 48));
            }
          }
        }

        else if (a4 && (TrafficDescriptor::hasAccountInfo((v13 - 48)) & 1) == 0)
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
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
          v22 = 0u;
          v23 = 0u;
          v21 = 0u;
          TrafficDescriptor::TrafficDescriptor(&v21, (v13 - 48));
          sub_1001696A4(&v24, a3);
          sub_1004A6280(a5, &v21);
          TrafficDescriptor::~TrafficDescriptor(&v21);
        }
      }

      v20 = v13 + 256;
      v13 += 304;
    }

    while (v20 != v12);
  }

  if ((isManagedApp & 1) != 0 && *v11 == v11[1])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
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
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    TrafficDescriptor::TrafficDescriptor(&v21);
    sub_1001696A4(&v24, a3);
    sub_1004A6280(a5, &v21);
    TrafficDescriptor::~TrafficDescriptor(&v21);
  }
}

void DataServiceController::addFrontPolicies(DataServiceController *a1, uint64_t a2, char *a3)
{
  v6 = *(a1 + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (a3[23] >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Front policies adding: %s", buf, 0xCu);
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  DataServiceController::getTrafficDescriptorsForBundleId(a1, a2, a3, 0, &v16);
  v8 = v16;
  for (i = v17; v8 != i; v8 = (v8 + 304))
  {
    buf[0] = 0;
    v20[0].__r_.__value_.__s.__data_[8] = 0;
    sub_10016A270(v8 + 240, buf);
    if (v20[0].__r_.__value_.__s.__data_[8] == 1 && v20[0].__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(*buf);
    }

    if (DataServiceController::sliceAllowed(a1, a2, v8, 0, 0))
    {
      if (*(v8 + 40) == 1)
      {
        (*(*a1 + 2312))(a1, v8);
      }

      else
      {
        memset(v20, 0, sizeof(v20));
        *buf = 0u;
        TrafficDescriptor::TrafficDescriptor(buf, v8);
        AppUuids = DataServiceController::getAppUuids(a1, a3);
        v11 = AppUuids + 1;
        v12 = *AppUuids;
        if (*AppUuids != AppUuids + 1)
        {
          do
          {
            sub_1001696A4(v20, (v12 + 4));
            (*(*a1 + 2312))(a1, buf);
            v13 = v12[1];
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
                v14 = v12[2];
                v15 = *v14 == v12;
                v12 = v14;
              }

              while (!v15);
            }

            v12 = v14;
          }

          while (v14 != v11);
        }

        TrafficDescriptor::~TrafficDescriptor(buf);
      }
    }
  }

  *buf = &v16;
  sub_1001B8A7C(buf);
}

uint64_t DataServiceController::sliceAllowed(DataServiceController *a1, uint64_t a2, TrafficDescriptor *this, uint64_t a4, char a5)
{
  if ((TrafficDescriptor::empty(this) & 1) == 0)
  {
    v11 = *(a1 + 14);
    v16 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    isValidSimSlot = subscriber::isValidSimSlot();
    if (v16)
    {
      sub_100004A34(v16);
    }

    if ((isValidSimSlot & 1) == 0)
    {
      v15 = *(a1 + 5);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1017724BC(a2, v15);
      }

      return 0;
    }

    v13 = (*(*a1 + 1120))(a1);
    v14 = (*(*a1 + 1064))(a1, a2);
    v18 = 0;
    LOBYTE(v13) = DataServiceController::SlicesDataContainer::configured(a1 + 4960, a2, v13, v14, v17);
    sub_100007E44(v17);
    if (v13)
    {
      if (DataServiceController::isInternalSliceApp_sync(a1, this))
      {
        return 1;
      }

      if (!TrafficDescriptor::hasAccountInfo(this))
      {
        if (!TrafficDescriptor::hasBundleInfo(this))
        {
          return a4;
        }

        if ((*(this + 72) & 1) == 0)
        {
          sub_1000D1644();
        }

        return DataServiceController::isAllowedApp(a1, a2, this + 48);
      }

      if (a5)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1004A614C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100007E44(va);
  _Unwind_Resume(a1);
}

uint64_t *DataServiceController::getAppUuids(uint64_t a1, char *a2)
{
  v3 = sub_100007A6C(a1 + 4984, a2);
  if (a1 + 4992 != v3 && (*(v3 + 112) & 1) != 0)
  {
    return (v3 + 88);
  }

  if (atomic_load_explicit(byte_101FBA7B0, memory_order_acquire))
  {
    return &qword_101FBA7B8;
  }

  sub_10177254C(&v5);
  return v5;
}

uint64_t DataServiceController::isManagedApp(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = a2;
  v9 = a2;
  v6 = sub_100007DEC(a1 + 4960, &v9);
  if (*(*v6 + 1) != 1)
  {
    return 0;
  }

  v7 = *v6;
  if (v7 + 144 == sub_100007A6C(v7 + 136, a3))
  {
    return 0;
  }

  else
  {
    return DataServiceController::isGoodAppCategory(a1, v4, 0xFFFFFFFFFFFFFFFFLL);
  }
}

uint64_t sub_1004A6280(uint64_t a1, const TrafficDescriptor *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1001C1BA8(a1, a2);
  }

  else
  {
    TrafficDescriptor::TrafficDescriptor(*(a1 + 8), a2);
    result = v3 + 304;
    *(a1 + 8) = v3 + 304;
  }

  *(a1 + 8) = result;
  return result;
}

void DataServiceController::convertAppCategoryToApps(std::string *this@<X2>, DataServiceController *a2@<X0>, _BYTE *a3@<X3>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (TrafficDescriptor::hasBundleInfo(this))
  {
    v62[0] = 0;
    v62[1] = 0;
    v60[1] = 0;
    v61 = v62;
    *a3 = 0;
    v59 = 0;
    v60[0] = 0;
    if ((this[3].__r_.__value_.__s.__data_[0] & 1) == 0)
    {
      sub_1000D1644();
    }

    v34 = a2;
    DataServiceController::convertAppCategoryToApps(a2, &this[2], a3, &v59);
    v8 = v59;
    if (v59 != v60)
    {
      do
      {
        *(v58 + 3) = 0;
        v58[0] = 0;
        if (*(v8 + 48) == 1)
        {
          v9 = v8[5] & 0xFFFFFFFFFFFFFF00;
          v10 = v8[5];
          v11 = 1;
        }

        else
        {
          v11 = 0;
          v9 = 0;
          v10 = 0;
        }

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        TrafficDescriptor::TrafficDescriptor(&v39, this);
        if (*(v8 + 36) == 1)
        {
          v12 = *(v8 + 8);
          DWORD1(v53) = v12;
          BYTE8(v53) = 1;
          v13 = v12 != 0;
          v14 = v12 >> 8;
          if (v8[10])
          {
            sub_1001696A4(&v42, (v8 + 7));
          }

          if (v11)
          {
            goto LABEL_15;
          }
        }

        else
        {
          if (*(v8 + 80) != 1)
          {
            if (v11)
            {
              __p = (v10 | v9);
              v36 = v11;
              memset(v37, 0, sizeof(v37));
              sub_1004C1438(&v61, &__p, &__p);
            }

            goto LABEL_22;
          }

          sub_1001696A4(&v42, (v8 + 7));
          v13 = 0;
          LOBYTE(v12) = 0;
          v14 = 0;
          if (v11)
          {
LABEL_15:
            __p = (v10 | v9);
            v36 = v11;
            *v37 = v58[0];
            *&v37[3] = *(v58 + 3);
            v15 = v12 | (v14 << 8);
            v16 = &_mh_execute_header;
            if (!v13)
            {
              v16 = 0;
            }

            *&v37[7] = v16 | v15;
            sub_1004C1438(&v61, &__p, &__p);
            goto LABEL_18;
          }
        }

        if (v13)
        {
          goto LABEL_15;
        }

LABEL_18:
        sub_10012BF3C(&v44, this + 2);
        LOBYTE(__p) = 0;
        v38 = 0;
        sub_10016A270(&v40, &__p);
        if (v38 == 1 && (v37[14] & 0x80000000) != 0)
        {
          operator delete(__p);
        }

        BYTE4(v39) = 0;
        BYTE8(v39) = 0;
        sub_1004A6280(a4, &v39);
LABEL_22:
        TrafficDescriptor::~TrafficDescriptor(&v39);
        v17 = v8[1];
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
            v18 = v8[2];
            v19 = *v18 == v8;
            v8 = v18;
          }

          while (!v19);
        }

        v8 = v18;
      }

      while (v18 != v60);
    }

    v20 = v61;
    if (v61 == v62)
    {
      v21 = v34;
    }

    else
    {
      v21 = v34;
      v22 = (v34 + 5376);
      do
      {
        if (*(v20 + 52) == 1 && (v20[5] & 1) == 0)
        {
          v23 = *(v34 + 671);
          if (v23 != v22)
          {
            do
            {
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              v52 = 0u;
              v53 = 0u;
              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              v46 = 0u;
              v47 = 0u;
              v44 = 0u;
              v45 = 0u;
              v42 = 0u;
              v43 = 0u;
              v40 = 0u;
              v41 = 0u;
              v39 = 0u;
              TrafficDescriptor::TrafficDescriptor(&v39, this);
              DWORD1(v39) = *(v23 + 8);
              BYTE8(v39) = 1;
              sub_10012BF3C(&v44, this + 2);
              LOBYTE(__p) = 0;
              v38 = 0;
              sub_10016A270(&v42, &__p);
              if (v38 == 1 && (v37[14] & 0x80000000) != 0)
              {
                operator delete(__p);
              }

              if ((*(v23 + 119) & 0x8000000000000000) != 0)
              {
                if (!v23[13])
                {
LABEL_43:
                  LOBYTE(__p) = 0;
                  v38 = 0;
                  sub_10016A270(&v40, &__p);
                  if (v38 == 1 && (v37[14] & 0x80000000) != 0)
                  {
                    operator delete(__p);
                  }

                  goto LABEL_46;
                }
              }

              else if (!*(v23 + 119))
              {
                goto LABEL_43;
              }

              sub_1001696A4(&v40, v23 + 4);
LABEL_46:
              if ((*(v20 + 52) & 1) == 0)
              {
                sub_1000D1644();
              }

              DWORD1(v53) = *(v20 + 12);
              BYTE8(v53) = 1;
              sub_1004A70E4(a4, *a4, &v39);
              TrafficDescriptor::~TrafficDescriptor(&v39);
              v24 = v23[1];
              if (v24)
              {
                do
                {
                  v25 = v24;
                  v24 = *v24;
                }

                while (v24);
              }

              else
              {
                do
                {
                  v25 = v23[2];
                  v19 = *v25 == v23;
                  v23 = v25;
                }

                while (!v19);
              }

              v23 = v25;
            }

            while (v25 != v22);
          }
        }

        v26 = v20[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = v20[2];
            v19 = *v27 == v20;
            v20 = v27;
          }

          while (!v19);
        }

        v20 = v27;
      }

      while (v27 != v62);
      v20 = v61;
    }

    if (v20 != v62)
    {
      v28 = (v21 + 5376);
      while (1)
      {
        if (*(v20 + 40) == 1)
        {
          v29 = *(v21 + 671);
          if (v29 != v28)
          {
            break;
          }
        }

LABEL_86:
        v32 = v20[1];
        if (v32)
        {
          do
          {
            v33 = v32;
            v32 = *v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v33 = v20[2];
            v19 = *v33 == v20;
            v20 = v33;
          }

          while (!v19);
        }

        v20 = v33;
        if (v33 == v62)
        {
          goto LABEL_92;
        }
      }

      while (1)
      {
        if ((v20[5] & 1) == 0)
        {
          sub_1000D1644();
        }

        if (v29[5] != v20[4])
        {
          goto LABEL_80;
        }

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        TrafficDescriptor::TrafficDescriptor(&v39, this);
        DWORD1(v39) = *(v29 + 8);
        BYTE8(v39) = 1;
        sub_10012BF3C(&v44, this + 2);
        LOBYTE(__p) = 0;
        v38 = 0;
        sub_10016A270(&v42, &__p);
        if (v38 == 1 && (v37[14] & 0x80000000) != 0)
        {
          operator delete(__p);
        }

        if ((*(v29 + 119) & 0x8000000000000000) != 0)
        {
          if (!v29[13])
          {
LABEL_74:
            LOBYTE(__p) = 0;
            v38 = 0;
            sub_10016A270(&v40, &__p);
            if (v38 == 1 && (v37[14] & 0x80000000) != 0)
            {
              operator delete(__p);
            }

            goto LABEL_77;
          }
        }

        else if (!*(v29 + 119))
        {
          goto LABEL_74;
        }

        sub_1001696A4(&v40, v29 + 4);
LABEL_77:
        if (*(v20 + 52) == 1)
        {
          DWORD1(v53) = *(v20 + 12);
          BYTE8(v53) = 1;
        }

        sub_1004A70E4(a4, *a4, &v39);
        TrafficDescriptor::~TrafficDescriptor(&v39);
LABEL_80:
        v30 = v29[1];
        if (v30)
        {
          do
          {
            v31 = v30;
            v30 = *v30;
          }

          while (v30);
        }

        else
        {
          do
          {
            v31 = v29[2];
            v19 = *v31 == v29;
            v29 = v31;
          }

          while (!v19);
        }

        v29 = v31;
        if (v31 == v28)
        {
          goto LABEL_86;
        }
      }
    }

LABEL_92:
    sub_1004C13C8(&v59, v60[0]);
    sub_10006DCAC(&v61, v62[0]);
  }
}

void sub_1004A6930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10006DCAC(v13 - 120, *(v13 - 112));
  sub_1001B8A7C(va);
  _Unwind_Resume(a1);
}

void DataServiceController::convertAppCategoryToApps(DataServiceController *a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X3>, uint64_t **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_101FBA460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA460))
  {
    sub_1001C7FB0(&unk_101FBA420, "^(\\*|[1-8])(\\.((\\*|[0-9]+)(\\.(\\*|[0-9]+)?)?)?)?$", 0);
  }

  *a3 = 0;
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  *v44 = 0u;
  v8 = *(a2 + 23);
  if ((v8 & 0x80u) == 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  v10 = sub_100200C08(v9, &v9[v8], v44, &unk_101FBA420, 0);
  v11 = v44[0];
  if (!v10 || (v44[1] - v44[0]) != 168)
  {
    goto LABEL_50;
  }

  *a3 = 1;
  __p = 0;
  v42 = 0;
  v43 = 0;
  if (*(v11 + 40) == 1)
  {
    sub_1001CD6B4(&__p, v11[3], v11[4], v11[4] - v11[3]);
    if (SHIBYTE(v43) < 0)
    {
      if (v42 == 1 && *__p == 42)
      {
        *__p = 0;
        v42 = 0;
      }
    }

    else if (SHIBYTE(v43) == 1 && __p == 42)
    {
      LOBYTE(__p) = 0;
      HIBYTE(v43) = 0;
    }
  }

  v12 = v46 + 8;
  *__str = 0;
  v39 = 0;
  v40 = 0;
  v13 = 0xAAAAAAAAAAAAAAABLL * ((v44[1] - v44[0]) >> 3);
  if (v13 > 4)
  {
    v12 = v44[0] + 112;
  }

  if (*v12 != 1)
  {
    v17 = 0;
LABEL_29:
    TrafficClassFromString = DataServiceController::getTrafficClassFromString(&__p);
    goto LABEL_30;
  }

  v14 = &v45 + 8;
  if (v13 > 4)
  {
    v14 = v44[0] + 96;
  }

  v15 = *v14;
  v16 = (v44[0] + 104);
  if (v13 <= 4)
  {
    v16 = v46;
  }

  sub_1001CD6B4(__str, v15, *v16, *v16 - v15);
  v17 = HIBYTE(v40);
  if ((SHIBYTE(v40) & 0x80000000) == 0)
  {
    if (HIBYTE(v40) == 1 && __str[0] == 42)
    {
      v17 = 0;
      __str[0] = 0;
      HIBYTE(v40) = 0;
    }

    goto LABEL_29;
  }

  if (v39 == 1 && **__str == 42)
  {
    **__str = 0;
    v39 = 0;
    v17 = HIBYTE(v40);
    TrafficClassFromString = DataServiceController::getTrafficClassFromString(&__p);
    if ((v17 & 0x80) == 0)
    {
LABEL_30:
      if (v17)
      {
        v19 = __str;
LABEL_32:
        v20 = strtoull(v19, 0, 10);
        v17 = HIBYTE(v40);
        goto LABEL_41;
      }

      goto LABEL_40;
    }
  }

  else
  {
    TrafficClassFromString = DataServiceController::getTrafficClassFromString(&__p);
  }

  if (v39)
  {
    v19 = *__str;
    goto LABEL_32;
  }

LABEL_40:
  v20 = 0;
LABEL_41:
  if ((TrafficClassFromString & 0x100000000) != 0)
  {
    v21 = v39;
  }

  else
  {
    v21 = v39;
    if ((v17 & 0x80u) == 0)
    {
      v22 = v17;
    }

    else
    {
      v22 = v39;
    }

    if (!v22)
    {
      if ((v17 & 0x80) == 0)
      {
LABEL_47:
        if (SHIBYTE(v43) < 0)
        {
          operator delete(__p);
        }

        v11 = v44[0];
LABEL_50:
        if (v11)
        {
          v44[1] = v11;
          operator delete(v11);
        }

        a4[2] = 0;
        a4[1] = 0;
        *a4 = (a4 + 1);
        return;
      }

LABEL_92:
      operator delete(*__str);
      goto LABEL_47;
    }
  }

  if ((v17 & 0x80u) == 0)
  {
    v23 = v17;
  }

  else
  {
    v23 = v21;
  }

  if (!v23)
  {
    a4[2] = 0;
    a4[1] = 0;
    *a4 = (a4 + 1);
    memset(&v37[1], 0, 48);
    LOBYTE(v34[0]) = 0;
    v36 = 0;
    v37[0] = (TrafficClassFromString & 0xFFFFFFFFFFLL);
    LOBYTE(v37[2]) = 0;
    sub_10006F264(&v37[3], v34);
    if (v36 == 1 && v35 < 0)
    {
      operator delete(v34[0]);
    }

    sub_1004C15FC(a4, v37, v37);
    if (LOBYTE(v37[6]) == 1 && SHIBYTE(v37[5]) < 0)
    {
      operator delete(v37[3]);
    }

    goto LABEL_76;
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  DataServiceController::getAllApps(&v31, a1, v20);
  v25 = v31;
  v24 = v32;
  if (v32 == v31)
  {
    goto LABEL_83;
  }

  a4[1] = 0;
  a4[2] = 0;
  *a4 = (a4 + 1);
  do
  {
    memset(&v37[2], 0, 40);
    v37[0] = (TrafficClassFromString & 0xFFFFFFFFFFLL);
    v37[1] = v20;
    LOBYTE(v37[2]) = 1;
    if (*(v25 + 23) < 0)
    {
      sub_100005F2C(&v37[3], *v25, *(v25 + 8));
    }

    else
    {
      v26 = *v25;
      v37[5] = *(v25 + 16);
      *&v37[3] = v26;
    }

    LOBYTE(v37[6]) = 1;
    sub_1004C15FC(a4, v37, v37);
    if (LOBYTE(v37[6]) == 1 && SHIBYTE(v37[5]) < 0)
    {
      operator delete(v37[3]);
    }

    v25 += 24;
  }

  while (v25 != v24);
  if (!a4[2])
  {
    sub_1004C13C8(a4, a4[1]);
LABEL_83:
    v27 = *(a1 + 671);
    if (v27 == (a1 + 5376))
    {
LABEL_91:
      v37[0] = &v31;
      sub_1000087B4(v37);
      if ((v40 & 0x8000000000000000) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_92;
    }

    while (*(v27 + 5) != v20)
    {
      v28 = *(v27 + 1);
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = *(v27 + 2);
          v30 = *v29 == v27;
          v27 = v29;
        }

        while (!v30);
      }

      v27 = v29;
      if (v29 == (a1 + 5376))
      {
        goto LABEL_91;
      }
    }

    memset(&v37[2], 0, 40);
    LOBYTE(v34[0]) = 0;
    v36 = 0;
    v37[0] = (TrafficClassFromString & 0xFFFFFFFFFFLL);
    v37[1] = v20;
    LOBYTE(v37[2]) = 1;
    sub_10006F264(&v37[3], v34);
    if (v36 == 1 && v35 < 0)
    {
      operator delete(v34[0]);
    }

    a4[2] = 0;
    a4[1] = 0;
    *a4 = (a4 + 1);
    sub_1004C15FC(a4, v37, v37);
    if (LOBYTE(v37[6]) == 1 && SHIBYTE(v37[5]) < 0)
    {
      operator delete(v37[3]);
    }
  }

  v37[0] = &v31;
  sub_1000087B4(v37);
LABEL_76:
  if (SHIBYTE(v40) < 0)
  {
    operator delete(*__str);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p);
  }

  if (v44[0])
  {
    v44[1] = v44[0];
    operator delete(v44[0]);
  }
}

TrafficDescriptor *sub_1004A70E4(uint64_t *a1, uint64_t a2, const TrafficDescriptor *a3)
{
  v3 = a2;
  v6 = a1[1];
  v5 = a1[2];
  if (v6 >= v5)
  {
    v7 = *a1;
    v8 = 0x86BCA1AF286BCA1BLL * ((v6 - *a1) >> 4) + 1;
    if (v8 > 0xD79435E50D7943)
    {
      sub_1000CE3D4();
    }

    v9 = a2 - v7;
    v10 = 0x86BCA1AF286BCA1BLL * ((v5 - v7) >> 4);
    v11 = 2 * v10;
    if (2 * v10 <= v8)
    {
      v11 = 0x86BCA1AF286BCA1BLL * ((v6 - *a1) >> 4) + 1;
    }

    if (v10 >= 0x6BCA1AF286BCA1)
    {
      v12 = 0xD79435E50D7943;
    }

    else
    {
      v12 = v11;
    }

    v18 = a1;
    if (v12)
    {
      sub_1001C1634(a1, v12);
    }

    v14 = 0;
    v15 = 16 * (v9 >> 4);
    v16 = v15;
    v17 = 0;
    sub_1004BE6A0(&v14, a3);
    v3 = sub_1004BE848(a1, &v14, v3);
    sub_1001C1734(&v14);
  }

  else if (a2 == v6)
  {
    TrafficDescriptor::TrafficDescriptor(a1[1], a3);
    a1[1] = v6 + 304;
  }

  else
  {
    sub_1004BE5E0(a1, a2, a1[1], a2 + 304);
    TrafficDescriptor::operator=();
  }

  return v3;
}

uint64_t *DataServiceController::getAllApps@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, unint64_t a3@<X1>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = this[633];
  if (v3)
  {
    v5 = this + 633;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= a3;
      v8 = v6 < a3;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 != this + 633 && v5[4] <= a3)
    {
      v9 = v5[5];
      v10 = v5 + 6;
      if (v9 != (v5 + 6))
      {
        do
        {
          this = sub_100005308(a1, v9 + 2);
          v11 = *(v9 + 1);
          if (v11)
          {
            do
            {
              v12 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              v12 = *(v9 + 2);
              v13 = *v12 == v9;
              v9 = v12;
            }

            while (!v13);
          }

          v9 = v12;
        }

        while (v12 != v10);
      }
    }
  }

  return this;
}

void sub_1004A7340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

BOOL DataServiceController::getTrafficClassFromIndex(DataServiceController *this, _DWORD *a2, unsigned int *a3)
{
  v3 = this - 1;
  if ((this - 1) <= 7)
  {
    *a2 = dword_1018086D0[v3];
  }

  return v3 < 8;
}

unint64_t DataServiceController::getTrafficClassFromString(char *a1)
{
  if (a1[23] < 0)
  {
    v1 = *(a1 + 1);
    if (!v1)
    {
      goto LABEL_8;
    }

    a1 = *a1;
  }

  else if (!a1[23])
  {
    v1 = 0;
LABEL_8:
    v3 = 0;
    v4 = 0;
    return v3 | v1 | v4;
  }

  v2 = *a1 - 49;
  if (v2 > 7)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_1018086D0[v2] | &_mh_execute_header;
  }

  v1 = v3 & &_mh_execute_header;
  v4 = v3 & 0xFFFFFF00;
  v3 = v3;
  return v3 | v1 | v4;
}

void DataServiceController::sliceTrafficDescriptorsForPolicies_sync(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  DataServiceController::makeDataSimSlotRange(a1, a2, &v11);
  v5 = v11;
  v6 = v12;
  if (v11 != v12)
  {
    do
    {
      v7 = *v5;
      v8 = DataServiceController::sliceTrafficDescriptors_sync(a1, *v5, "policies");
      memset(v10, 0, sizeof(v10));
      v9 = sub_1004BE904(v10, *v8, v8[1], 0x86BCA1AF286BCA1BLL * ((v8[1] - *v8) >> 4));
      v14[0] = off_101E50180;
      v14[1] = a1;
      v14[2] = v7;
      v14[3] = v14;
      DataServiceController::normalizeTrafficDescriptorsForPolicies_sync(v9, v10, a3, v14);
      sub_1004C1A0C(v14);
      v13 = v10;
      sub_1001B8A7C(&v13);
      ++v5;
    }

    while (v5 != v6);
    v5 = v11;
  }

  if (v5)
  {
    v12 = v5;
    operator delete(v5);
  }
}

void DataServiceController::normalizeTrafficDescriptorsForPolicies_sync(uint64_t a1, const TrafficDescriptor **a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v20 = 0;
  v18 = &v19;
  v6 = *a2;
  v7 = a2[1];
  v8 = v7 - *a2;
  if (v7 != *a2)
  {
    v10 = 0x86BCA1AF286BCA1BLL * (v8 >> 4) - 1;
    v11 = v8 - 304;
    do
    {
      v12 = *a2;
      if (0x86BCA1AF286BCA1BLL * ((a2[1] - *a2) >> 4) <= v10)
      {
        sub_1002030E0();
      }

      v13 = v20;
      v16[0] = 0;
      v16[1] = 0;
      v17 = 0;
      TrafficDescriptor::toKey(v16, (v12 + v11));
      sub_100005BA0(&v18, v16, v16);
      if (v20 == v13)
      {
        TrafficDescriptor::TrafficDescriptor(v15);
        TrafficDescriptor::operator=();
        TrafficDescriptor::~TrafficDescriptor(v15);
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }

      --v10;
      v11 -= 304;
    }

    while (v10 != -1);
    v6 = *a2;
    v7 = a2[1];
  }

  while (v6 != v7)
  {
    if ((TrafficDescriptor::empty(v6) & 1) == 0)
    {
      v14 = *(a4 + 24);
      if (!v14)
      {
        sub_100022DB4();
      }

      if ((*(*v14 + 48))(v14, v6))
      {
        sub_1004A6280(a3, v6);
      }
    }

    v6 = (v6 + 304);
  }

  sub_100009970(&v18, v19);
}

void sub_1004A771C(_Unwind_Exception *a1)
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  sub_100009970(v1 - 104, *(v1 - 96));
  _Unwind_Resume(a1);
}

uint64_t DataServiceController::allowSocketAPIWithTrafficClasses(uint64_t a1, int a2)
{
  if ((*(*a1 + 1120))(a1) == a2)
  {
    v6 = a2;
    v4 = *(*sub_100007DEC(a1 + 4960, &v6) + 24);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t DataServiceController::sliceInactivityTimeoutSecs(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 5;
  }

  v4 = a2;
  v6 = *(a1 + 112);
  v8 = *(a1 + 104);
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  isValidSimSlot = subscriber::isValidSimSlot();
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (!isValidSimSlot)
  {
    return 30;
  }

  LODWORD(v8) = v4;
  return *(*sub_100007DEC(a1 + 4960, &v8) + 8);
}

void sub_1004A78A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataServiceController::supportsLLPHS(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 112);
  v10 = *(a1 + 104);
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  isValidSimSlot = subscriber::isValidSimSlot();
  if (v11)
  {
    sub_100004A34(v11);
  }

  if (isValidSimSlot && (LODWORD(v10) = v2, v6 = sub_100007DEC(a1 + 4960, &v10), v7 = *v6, *(*v6 + 12) == 1))
  {
    if (*(v7 + 13))
    {
      v8 = 1;
    }

    else
    {
      v8 = *(v7 + 14);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_1004A7970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataServiceController::calculateEntitledLLPHS(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v28 = 0;
  v29 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 104));
  v6 = ServiceMap;
  if (v7 < 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  *buf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, buf);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_9:
  (*(*v13 + 8))(&v28, v13, a2);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (!v28)
  {
    goto LABEL_30;
  }

  v15 = sub_100007A6C(a1 + 1096, (v28 + 24));
  if (a1 + 1104 == v15)
  {
    goto LABEL_30;
  }

  if ((*(v15 + 58) & 0x10) == 0)
  {
    v16 = *v4;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I entitledLLPHS not supported, assume allowed", buf, 2u);
    }

    LOBYTE(v17) = 1;
    goto LABEL_32;
  }

  v20 = *(v15 + 72);
  v18 = v15 + 72;
  v19 = v20;
  if (!v20)
  {
    goto LABEL_27;
  }

  v21 = v18;
  do
  {
    if (*(v19 + 28) >= 20)
    {
      v21 = v19;
    }

    v19 = *(v19 + 8 * (*(v19 + 28) < 20));
  }

  while (v19);
  if (v21 == v18 || *(v21 + 28) > 20)
  {
LABEL_27:
    v24 = *v4;
    if (!os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v25 = "#I entitledLLPHS: Hera not found";
    goto LABEL_29;
  }

  v22 = *(v21 + 32);
  if (v22 - 5 <= 0xFFFFFFFD)
  {
    v17 = (v22 > 6) | (0x1Du >> v22);
    v23 = *v4;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v17 & 1;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I entitledLLPHS: result = %{BOOL}d", buf, 8u);
    }

    goto LABEL_32;
  }

  v24 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v25 = "#N entitledLLPHS: unknown state";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 2u);
  }

LABEL_30:
  v26 = *v4;
  LOBYTE(v17) = 0;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I entitledLLPHS could not calculate, assume not allowed", buf, 2u);
    LOBYTE(v17) = 0;
  }

LABEL_32:
  if (v29)
  {
    sub_100004A34(v29);
  }

  return v17 & 1;
}

void sub_1004A7CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::updateSlicingStateOnEntitlementsChange_sync(DataServiceController *this)
{
  v2 = *(this + 14);
  *buf = *(this + 13);
  v13 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (v13)
  {
    sub_100004A34(v13);
  }

  v3 = v9;
  if (v9 != v10)
  {
    do
    {
      if (v11(*v3))
      {
        break;
      }

      ++v3;
    }

    while (v3 != v10);
    while (v3 != v10)
    {
      v4 = *v3;
      v5 = (*(**(this + 6) + 16))(*(this + 6), v4);
      *buf = v4;
      v6 = *sub_100007DEC(this + 4960, buf);
      v7 = DataServiceController::calculateEntitledLLPHS(this, v4);
      if (v6[13] != v7)
      {
        v8 = *v5;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I entitledLLPHS: new value: %{BOOL}d", buf, 8u);
        }

        if (v6[12] == 1 && (v6[14] & 1) == 0)
        {
          sub_10000501C(buf, "entitlements update");
          (*(*this + 2424))(this, v4, buf, 0);
          if (v14 < 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          v6[13] = v7;
        }
      }

      do
      {
        ++v3;
      }

      while (v3 != v10 && (v11(*v3) & 1) == 0);
    }
  }
}

void sub_1004A7F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, std::__shared_weak_count *a16, int a17, __int16 a18, char a19, char a20)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::setStatisticsData(_BYTE *a1, int a2, void *a3, uint64_t a4)
{
  *(a4 + 104) = a1[5272];
  v5 = a3 + 1;
  v4 = *a3;
  if (*a3 != a3 + 1)
  {
    v7 = a2;
    v53 = a4 + 136;
    v54 = (a4 + 112);
    v52 = a3 + 1;
    do
    {
      if (!TrafficDescriptor::hasBundleInfo((v4 + 4)))
      {
        goto LABEL_33;
      }

      if ((v4[13] & 1) == 0)
      {
        goto LABEL_159;
      }

      v9 = v4 + 10;
      if (*(v4 + 103) < 0)
      {
        if (v4[11] == 18)
        {
          v13 = **v9 == 0x6C7070612E6D6F63 && *(*v9 + 8) == 0x6974656361662E65;
          if (v13 && *(*v9 + 16) == 25965)
          {
LABEL_32:
            *(a4 + 105) = 1;
            goto LABEL_33;
          }
        }

        if (v4[11] != 15)
        {
          goto LABEL_33;
        }

        v9 = *v9;
      }

      else
      {
        v10 = *(v4 + 103);
        if (v10 != 15)
        {
          if (v10 == 18)
          {
            v11 = *v9 == 0x6C7070612E6D6F63 && v4[11] == 0x6974656361662E65;
            if (v11 && *(v4 + 48) == 25965)
            {
              goto LABEL_32;
            }
          }

          goto LABEL_33;
        }
      }

      v15 = *v9;
      v16 = *(v9 + 7);
      if (v15 == 0x6C7070612E6D6F63 && v16 == 0x64656D61672E656CLL)
      {
        goto LABEL_32;
      }

LABEL_33:
      v18 = *(a4 + 23);
      if ((v18 & 0x80u) != 0)
      {
        v18 = *(a4 + 8);
      }

      if (!v18 && (TrafficDescriptor::hasBundleInfo((v4 + 4)) & 1) == 0 && *(v4 + 72) == 1)
      {
        (*(*a1 + 2368))(__s, a1, v4 + 6);
        if (*(a4 + 23) < 0)
        {
          operator delete(*a4);
        }

        *a4 = *__s;
        *(a4 + 16) = v61;
      }

      v19 = *(a4 + 135);
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(a4 + 120);
      }

      if (!v19 && TrafficDescriptor::hasAccountInfo((v4 + 4)))
      {
        if (*(a4 + 135) < 0)
        {
          *(a4 + 120) = 5;
          v20 = *(a4 + 112);
        }

        else
        {
          *(a4 + 135) = 5;
          v20 = v54;
        }

        strcpy(v20, "llphs");
      }

      v21 = *(a4 + 23);
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(a4 + 8);
      }

      if (v21 || !TrafficDescriptor::hasBundleInfo((v4 + 4)))
      {
        goto LABEL_137;
      }

      if ((v4[13] & 1) == 0)
      {
LABEL_159:
        sub_1000D1644();
      }

      std::string::operator=(a4, (v4 + 10));
      if (*(a4 + 135) < 0)
      {
        *(a4 + 120) = 8;
        v22 = *(a4 + 112);
      }

      else
      {
        *(a4 + 135) = 8;
        v22 = v54;
      }

      strcpy(v22, "consumer");
      DataServiceController::makeDataSimSlotRange(a1, v7, __s);
      v24 = *__s;
      v23 = *&__s[8];
      if (*__s != *&__s[8])
      {
        do
        {
          LODWORD(__dst.__r_.__value_.__l.__data_) = *v24;
          v25 = sub_100007DEC((a1 + 4960), &__dst);
          if ((v4[13] & 1) == 0)
          {
            sub_1000D1644();
          }

          v26 = *v25;
          if (v26 + 144 != sub_100007A6C(*v25 + 136, v4 + 80))
          {
            if (*(a4 + 135) < 0)
            {
              *(a4 + 120) = 10;
              v27 = *(a4 + 112);
            }

            else
            {
              *(a4 + 135) = 10;
              v27 = v54;
            }

            strcpy(v27, "enterprise");
            v28 = *(a4 + 159);
            if (*(v4 + 136) == 1)
            {
              if (v28 < 0)
              {
                *(a4 + 144) = 12;
                v29 = *(a4 + 136);
              }

              else
              {
                *(a4 + 159) = 12;
                v29 = v53;
              }

              *(v29 + 8) = 2037542759;
              *v29 = *"app_category";
              v31 = (v29 + 12);
            }

            else
            {
              if (v28 < 0)
              {
                *(a4 + 144) = 3;
                v30 = *(a4 + 136);
              }

              else
              {
                *(a4 + 159) = 3;
                v30 = v53;
              }

              *(v30 + 2) = 110;
              *v30 = 28260;
              v31 = (v30 + 3);
            }

            *v31 = 0;
          }

          ++v24;
        }

        while (v24 != v23);
        v24 = *__s;
      }

      if (v24)
      {
        *&__s[8] = v24;
        operator delete(v24);
      }

      v56 = 0;
      v57 = 0;
      v58 = 0;
      (*(*a1 + 2360))(&v56, a1, a4);
      if (v58)
      {
        v32 = v56;
        memset(&v55, 0, sizeof(v55));
        if (v56 == &v57)
        {
          goto LABEL_133;
        }

        v76 = 0;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        *__p = 0u;
        v65 = 0u;
        v62 = 0u;
        *__src = 0u;
        *__s = 0u;
        v61 = 0u;
        sub_10000D518(__s);
        std::ostream::operator<<();
        if ((BYTE8(v66) & 0x10) != 0)
        {
          v34 = v66;
          if (v66 < __src[1])
          {
            *&v66 = __src[1];
            v34 = __src[1];
          }

          v35 = __src[0];
        }

        else
        {
          if ((BYTE8(v66) & 8) == 0)
          {
            v33 = 0;
            *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_92:
            __dst.__r_.__value_.__s.__data_[v33] = 0;
            *__s = v50;
            *&__s[*(v50 - 24)] = v49;
            if (SHIBYTE(v65) < 0)
            {
              operator delete(__p[1]);
            }

            std::locale::~locale(&v61);
            std::ostream::~ostream();
            std::ios::~ios();
            if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v55.__r_.__value_.__l.__data_);
            }

            v55 = __dst;
            v36 = v32[1];
            if (v36)
            {
              do
              {
                v37 = v36;
                v36 = *v36;
              }

              while (v36);
            }

            else
            {
              do
              {
                v37 = v32[2];
                v11 = *v37 == v32;
                v32 = v37;
              }

              while (!v11);
            }

            if (v37 != &v57)
            {
              while (1)
              {
                BYTE7(v61) = 1;
                strcpy(__s, ",");
                std::string::append(&v55, __s, 1uLL);
                if (SBYTE7(v61) < 0)
                {
                  operator delete(*__s);
                }

                v76 = 0;
                v74 = 0u;
                v75 = 0u;
                v72 = 0u;
                v73 = 0u;
                v70 = 0u;
                v71 = 0u;
                v68 = 0u;
                v69 = 0u;
                v66 = 0u;
                v67 = 0u;
                *__p = 0u;
                v65 = 0u;
                v62 = 0u;
                *__src = 0u;
                *__s = 0u;
                v61 = 0u;
                sub_10000D518(__s);
                std::ostream::operator<<();
                if ((BYTE8(v66) & 0x10) != 0)
                {
                  break;
                }

                if ((BYTE8(v66) & 8) != 0)
                {
                  v40 = *(&v61 + 1);
                  v39 = *(&v62 + 1);
LABEL_111:
                  v38 = v39 - v40;
                  if ((v39 - v40) > 0x7FFFFFFFFFFFFFF7)
                  {
                    sub_1000A2378();
                  }

                  if (v38 >= 0x17)
                  {
                    operator new();
                  }

                  *(&__dst.__r_.__value_.__s + 23) = v39 - v40;
                  if (v38)
                  {
                    memmove(&__dst, v40, v38);
                  }

                  goto LABEL_117;
                }

                v38 = 0;
                *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_117:
                __dst.__r_.__value_.__s.__data_[v38] = 0;
                *__s = v50;
                *&__s[*(v50 - 24)] = v49;
                if (SHIBYTE(v65) < 0)
                {
                  operator delete(__p[1]);
                }

                std::locale::~locale(&v61);
                std::ostream::~ostream();
                std::ios::~ios();
                if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_dst = &__dst;
                }

                else
                {
                  p_dst = __dst.__r_.__value_.__r.__words[0];
                }

                if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = __dst.__r_.__value_.__l.__size_;
                }

                std::string::append(&v55, p_dst, size);
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                }

                v43 = v37[1];
                if (v43)
                {
                  do
                  {
                    v44 = v43;
                    v43 = *v43;
                  }

                  while (v43);
                }

                else
                {
                  do
                  {
                    v44 = v37[2];
                    v11 = *v44 == v37;
                    v37 = v44;
                  }

                  while (!v11);
                }

                v37 = v44;
                if (v44 == &v57)
                {
                  goto LABEL_133;
                }
              }

              v39 = v66;
              if (v66 < __src[1])
              {
                *&v66 = __src[1];
                v39 = __src[1];
              }

              v40 = __src[0];
              goto LABEL_111;
            }

LABEL_133:
            if (*(a4 + 79) < 0)
            {
              operator delete(*(a4 + 56));
            }

            *(a4 + 56) = v55;
            v5 = v52;
            v7 = a2;
            goto LABEL_136;
          }

          v35 = *(&v61 + 1);
          v34 = *(&v62 + 1);
        }

        v33 = v34 - v35;
        if ((v34 - v35) > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1000A2378();
        }

        if (v33 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v34 - v35;
        if (v33)
        {
          memmove(&__dst, v35, v33);
        }

        goto LABEL_92;
      }

LABEL_136:
      sub_10006DCAC(&v56, v57);
LABEL_137:
      if (!*(a4 + 24) && *(v4 + 264) == 1)
      {
        *(a4 + 24) = *(v4 + 65);
      }

      v45 = *(a4 + 55);
      if ((v45 & 0x80u) != 0)
      {
        v45 = *(a4 + 40);
      }

      if (!v45 && *(v4 + 296) == 1)
      {
        std::string::operator=((a4 + 32), (v4 + 34));
      }

      v46 = *(a4 + 103);
      if ((v46 & 0x80u) != 0)
      {
        v46 = *(a4 + 88);
      }

      if (!v46 && *(v4 + 136) == 1)
      {
        std::string::operator=((a4 + 80), (v4 + 14));
      }

      v47 = v4[1];
      if (v47)
      {
        do
        {
          v48 = v47;
          v47 = *v47;
        }

        while (v47);
      }

      else
      {
        do
        {
          v48 = v4[2];
          v11 = *v48 == v4;
          v4 = v48;
        }

        while (!v11);
      }

      v4 = v48;
    }

    while (v48 != v5);
  }
}

void sub_1004A89C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  std::ios::~ios();
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_10006DCAC(&a26, a27);
  _Unwind_Resume(a1);
}

void *DataServiceController::getGenreForBundleID_sync@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  result = sub_100007A6C(a1 + 4984, a2);
  if ((a1 + 4992) == result || *(result + 80) != 1)
  {
    a3[2] = 0;
    a3[1] = 0;
    *a3 = a3 + 1;
  }

  else
  {

    return sub_1002B84C8(a3, (result + 7));
  }

  return result;
}

void *DataServiceController::getBundleIdByUUID_sync@<X0>(void *result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[623];
  v5 = result + 624;
  if (v4 == result + 624)
  {
LABEL_10:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    while (1)
    {
      if (*(v4 + 112) == 1)
      {
        result = sub_100007A6C((v4 + 11), a2);
        if (v4 + 12 != result)
        {
          break;
        }
      }

      v7 = v4[1];
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
          v8 = v4[2];
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      v4 = v8;
      if (v8 == v5)
      {
        goto LABEL_10;
      }
    }

    if (*(v4 + 55) < 0)
    {
      v11 = v4[4];
      v12 = v4[5];

      return sub_100005F2C(a3, v11, v12);
    }

    else
    {
      v10 = *(v4 + 2);
      *(a3 + 16) = v4[6];
      *a3 = v10;
    }
  }

  return result;
}

void DataServiceController::convertBundleIdToAccountIds(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, const void **a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if ((atomic_load_explicit(&qword_101FBA4A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA4A8))
  {
    sub_1001C7FB0(&unk_101FBA468, "^(\\*|[1-8])(\\.([0-9]+))(\\.(xr|(.*)))?$", 0);
  }

  v60 = 0u;
  memset(v61, 0, sizeof(v61));
  v59 = 0u;
  v10 = *(a2 + 23);
  if ((v10 & 0x80u) == 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 8);
  }

  v12 = sub_100200C08(v11, &v11[v10], &v59, &unk_101FBA468, 0);
  v13 = v59;
  if (!v12 || 0xAAAAAAAAAAAAAAABLL * ((*(&v59 + 1) - v59) >> 3) < 4)
  {
    goto LABEL_90;
  }

  __dst = 0;
  v57 = 0;
  v58 = 0;
  if (*(v59 + 40) == 1)
  {
    sub_1001CD6B4(&__dst, *(v59 + 24), *(v59 + 32), *(v59 + 32) - *(v59 + 24));
    v13 = v59;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((*(&v59 + 1) - v59) >> 3) > 3;
  }

  else
  {
    v14 = 1;
  }

  v15 = &v61[8];
  __p = 0;
  v54 = 0;
  v55 = 0;
  if (v14)
  {
    v15 = v13 + 88;
  }

  if (*v15 == 1)
  {
    v16 = !v14;
    if (v14)
    {
      v17 = (v13 + 72);
    }

    else
    {
      v17 = &v60 + 1;
    }

    v18 = *v17;
    v19 = (v13 + 80);
    if (v16)
    {
      v19 = v61;
    }

    sub_1001CD6B4(&__p, v18, *v19, *v19 - v18);
  }

  if (a4)
  {
    v20 = v55 >= 0 ? &__p : __p;
    *buf = strtoull(v20, 0, 10);
    sub_1004C12FC(a1 + 5032, buf, buf);
    if (!DataServiceController::realGoodGenre(a4, *buf))
    {
      v23 = 0;
      v24 = 1;
      goto LABEL_85;
    }
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(&v59 + 1) - v59) >> 3) >= 6)
  {
    *buf = 0;
    v64 = 0;
    *v65 = 0;
    if (*(v59 + 136) == 1)
    {
      sub_1001CD6B4(buf, *(v59 + 120), *(v59 + 128), *(v59 + 128) - *(v59 + 120));
      v21 = v65[7];
      if ((v65[7] & 0x80000000) != 0)
      {
        v22 = *buf;
        if (v64 != 2)
        {
LABEL_38:
          operator delete(v22);
          goto LABEL_39;
        }
      }

      else
      {
        if (v65[7] != 2)
        {
          goto LABEL_39;
        }

        v22 = buf;
      }

      if (*v22 == 29304)
      {
        *a3 = 1;
      }

      if (v21 < 0)
      {
        v22 = *buf;
        goto LABEL_38;
      }
    }
  }

LABEL_39:
  if ((SHIBYTE(v58) & 0x80000000) == 0)
  {
    if (SHIBYTE(v58) == 1)
    {
      p_dst = &__dst;
      goto LABEL_44;
    }

LABEL_62:
    TrafficClassFromString = DataServiceController::getTrafficClassFromString(&__dst);
    if ((TrafficClassFromString & 0x100000000) == 0)
    {
      operator new();
    }

    v38 = TrafficClassFromString;
    sub_10000501C(&v50, "com.apple.networkrelay.tethering.");
    if (v58 >= 0)
    {
      v39 = &__dst;
    }

    else
    {
      v39 = __dst;
    }

    if (v58 >= 0)
    {
      v40 = HIBYTE(v58);
    }

    else
    {
      v40 = v57;
    }

    v41 = std::string::append(&v50, v39, v40);
    v42 = *&v41->__r_.__value_.__l.__data_;
    v51.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
    *&v51.__r_.__value_.__l.__data_ = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    v43 = std::string::append(&v51, ".", 1uLL);
    v44 = *&v43->__r_.__value_.__l.__data_;
    v52.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
    *&v52.__r_.__value_.__l.__data_ = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    if (v55 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v55 >= 0)
    {
      v46 = HIBYTE(v55);
    }

    else
    {
      v46 = v54;
    }

    v47 = std::string::append(&v52, p_p, v46);
    v48 = v47->__r_.__value_.__r.__words[0];
    v62[0] = v47->__r_.__value_.__l.__size_;
    *(v62 + 7) = *(&v47->__r_.__value_.__r.__words[1] + 7);
    v49 = HIBYTE(v47->__r_.__value_.__r.__words[2]);
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    *buf = v38;
    *&v65[7] = *(v62 + 7);
    v64 = v48;
    *v65 = v62[0];
    v66 = v49;
    sub_1004A93F4(a5, buf);
    if (v66 < 0)
    {
      operator delete(v64);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    goto LABEL_84;
  }

  if (v57 != 1)
  {
    goto LABEL_62;
  }

  p_dst = __dst;
LABEL_44:
  if (*p_dst != 42)
  {
    goto LABEL_62;
  }

  v26 = dword_1018086D0;
  for (i = 1; i != 9; ++i)
  {
    v29 = *v26++;
    v28 = v29;
    sub_10000501C(&v50, "com.apple.networkrelay.tethering.");
    std::string::push_back(&v50, i | 0x30);
    v51 = v50;
    memset(&v50, 0, sizeof(v50));
    v30 = std::string::append(&v51, ".", 1uLL);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v52.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v52.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if (v55 >= 0)
    {
      v32 = &__p;
    }

    else
    {
      v32 = __p;
    }

    if (v55 >= 0)
    {
      v33 = HIBYTE(v55);
    }

    else
    {
      v33 = v54;
    }

    v34 = std::string::append(&v52, v32, v33);
    v35 = v34->__r_.__value_.__r.__words[0];
    v62[0] = v34->__r_.__value_.__l.__size_;
    *(v62 + 7) = *(&v34->__r_.__value_.__r.__words[1] + 7);
    v36 = HIBYTE(v34->__r_.__value_.__r.__words[2]);
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    *buf = v28;
    v64 = v35;
    *&v65[7] = *(v62 + 7);
    *v65 = v62[0];
    v66 = v36;
    sub_1004A93F4(a5, buf);
    if (v66 < 0)
    {
      operator delete(v64);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }
  }

LABEL_84:
  v24 = 0;
  v23 = 1;
LABEL_85:
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(__dst);
  }

  v13 = v59;
  if (v23)
  {
LABEL_90:
    if (v13)
    {
      *(&v59 + 1) = v13;
      operator delete(v13);
    }

    return;
  }

  if (v59)
  {
    *(&v59 + 1) = v59;
    operator delete(v59);
  }

  if ((v24 & 1) == 0)
  {
    *&v59 = a5;
    sub_10001E200(&v59);
  }
}

void sub_1004A9288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43)
{
  __cxa_guard_abort(&qword_101FBA4A8);
  sub_10001E200(&a42);
  _Unwind_Resume(a1);
}

BOOL DataServiceController::realGoodGenre(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 336);
  if (!v2)
  {
    return 1;
  }

  v3 = a1 + 336;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  return v3 == a1 + 336 || *(v3 + 32) > a2 || (*(v3 + 40) & 1) != 0 || *(v3 + 44) == 0;
}

const void **sub_1004A93F4(const void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_1000CE3D4();
    }

    v10 = v5 - *result;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_1004BE98C(result, v11);
    }

    v12 = 32 * v8;
    *v12 = *a2;
    v13 = *(a2 + 8);
    *(v12 + 24) = *(a2 + 24);
    *(v12 + 8) = v13;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v7 = 32 * v8 + 32;
    v14 = result[1] - *result;
    v15 = (v12 - v14);
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_1004BE9D4(v18);
  }

  else
  {
    *v4 = *a2;
    v6 = *(a2 + 8);
    *(v4 + 3) = *(a2 + 24);
    *(v4 + 8) = v6;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v7 = (v4 + 32);
  }

  v3[1] = v7;
  return result;
}

uint64_t DataServiceController::matchAndConvertCategorySlice(DataServiceController *a1, unsigned int a2, TrafficDescriptor **a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(**(a1 + 6) + 16))(*(a1 + 6));
  v48 = a2;
  LODWORD(__p[0]) = a2;
  v10 = sub_100007DEC(a1 + 4960, __p);
  v11 = *a3;
  v46 = a3[1];
  if (*a3 != v46)
  {
    v45 = 0;
    v47 = *v10;
    while ((TrafficDescriptor::hasBundleInfo(v11) & 1) == 0 && (DataServiceController::isInternalSliceApp_sync(a1, v11) & 1) == 0)
    {
      v42 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        TrafficDescriptor::toString(__p, v11);
        v43 = (SBYTE7(v51) & 0x80u) == 0 ? __p : __p[0];
        *v76 = 136315394;
        *&v76[4] = a5;
        v77 = 2082;
        v78 = v43;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#N matchAndConvert (%s):(0.1-no bundle id) %{public}s", v76, 0x16u);
        if (SBYTE7(v51) < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_1004A6280(a4, v11);
LABEL_87:
      v11 = (v11 + 304);
      if (v11 == v46)
      {
        return v45 & 1;
      }
    }

    v73 = 0;
    v74 = 0;
    v75 = 0;
    v72 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    DataServiceController::convertAppCategoryToApps(v11, a1, &v72, &v69);
    v13 = v69;
    v12 = v70;
    if (v69 == v70)
    {
      if ((v72 & 1) == 0)
      {
        sub_1004A6280(&v73, v11);
      }
    }

    else
    {
      do
      {
        sub_1004A6280(&v73, v13);
        v13 = (v13 + 304);
      }

      while (v13 != v12);
      v45 = 1;
    }

    v15 = v73;
    v14 = v74;
    while (1)
    {
      if (v15 == v14)
      {
        __p[0] = &v69;
        sub_1001B8A7C(__p);
        __p[0] = &v73;
        sub_1001B8A7C(__p);
        goto LABEL_87;
      }

      if (DataServiceController::isInternalSliceApp_sync(a1, v15))
      {
        v16 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          TrafficDescriptor::toString(__p, v15);
          if ((SBYTE7(v51) & 0x80u) == 0)
          {
            v17 = __p;
          }

          else
          {
            v17 = __p[0];
          }

          *v76 = 136315394;
          *&v76[4] = a5;
          v77 = 2082;
          v78 = v17;
          v18 = v16;
          v19 = "#N matchAndConvert (%s):(0.2-internal) %{public}s";
          goto LABEL_41;
        }

        goto LABEL_43;
      }

      if (!TrafficDescriptor::hasBundleInfo(v15))
      {
        v29 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          TrafficDescriptor::toString(__p, v15);
          if ((SBYTE7(v51) & 0x80u) == 0)
          {
            v30 = __p;
          }

          else
          {
            v30 = __p[0];
          }

          *v76 = 136315394;
          *&v76[4] = a5;
          v77 = 2082;
          v78 = v30;
          v18 = v29;
          v19 = "#N matchAndConvert (%s):(5-no bundle id) %{public}s";
LABEL_41:
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, v76, 0x16u);
          if (SBYTE7(v51) < 0)
          {
            operator delete(__p[0]);
          }
        }

LABEL_43:
        sub_1004A6280(a4, v15);
        goto LABEL_72;
      }

      if ((v15[72] & 1) == 0)
      {
        goto LABEL_91;
      }

      AppUuids = DataServiceController::getAppUuids(a1, v15 + 48);
      if (!AppUuids[2])
      {
        v67 = 0u;
        v68 = 0u;
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
        v51 = 0u;
        v52 = 0u;
        *__p = 0u;
        TrafficDescriptor::TrafficDescriptor(__p, v15);
        v31 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          TrafficDescriptor::toString(v76, __p);
          v32 = v76;
          if (v79 < 0)
          {
            v32 = *v76;
          }

          *buf = 136315394;
          v82 = a5;
          v83 = 2082;
          v84 = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#N matchAndConvert (%s):(4-no uuids) %{public}s", buf, 0x16u);
          if (v79 < 0)
          {
            operator delete(*v76);
          }
        }

        v76[0] = 0;
        v80 = 0;
        sub_10016A270(&v53, v76);
        if (v80 == 1 && v79 < 0)
        {
          operator delete(*v76);
        }

        v76[0] = 0;
        v80 = 0;
        sub_10016A270(&v51, v76);
        if (v80 == 1 && v79 < 0)
        {
          operator delete(*v76);
        }

        if ((TrafficDescriptor::empty(__p) & 1) == 0)
        {
          *v76 = v48;
          *(*sub_100007DEC(a1 + 4960, v76) + 128) = 1;
          sub_1004A6280(a4, __p);
        }

        goto LABEL_71;
      }

      if (*(v47 + 15) == 1)
      {
        break;
      }

      if (v15[72] != 1)
      {
LABEL_91:
        sub_1000D1644();
      }

      if (DataServiceController::isManagedApp(a1, v48, v15 + 48))
      {
        v67 = 0u;
        v68 = 0u;
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
        v51 = 0u;
        v52 = 0u;
        *__p = 0u;
        TrafficDescriptor::TrafficDescriptor(__p, v15);
        v33 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          TrafficDescriptor::toString(v76, __p);
          v34 = v76;
          if (v79 < 0)
          {
            v34 = *v76;
          }

          *buf = 136315394;
          v82 = a5;
          v83 = 2082;
          v84 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#N matchAndConvert (%s):(2-managed) %{public}s", buf, 0x16u);
          if (v79 < 0)
          {
            operator delete(*v76);
          }
        }

        v37 = *AppUuids;
        v36 = AppUuids + 1;
        v35 = v37;
        if (v37 != v36)
        {
          do
          {
            sub_1001696A4(&v51, (v35 + 4));
            sub_1004A6280(a4, __p);
            v38 = v35[1];
            if (v38)
            {
              do
              {
                v39 = v38;
                v38 = *v38;
              }

              while (v38);
            }

            else
            {
              do
              {
                v39 = v35[2];
                v28 = *v39 == v35;
                v35 = v39;
              }

              while (!v28);
            }

            v35 = v39;
          }

          while (v39 != v36);
        }

        goto LABEL_71;
      }

      v40 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        TrafficDescriptor::toString(__p, v15);
        v41 = (SBYTE7(v51) & 0x80u) == 0 ? __p : __p[0];
        *v76 = 136315394;
        *&v76[4] = a5;
        v77 = 2082;
        v78 = v41;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#N matchAndConvert (%s):(3-skip consumer) %{public}s", v76, 0x16u);
        if (SBYTE7(v51) < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_72:
      v15 += 304;
    }

    v67 = 0u;
    v68 = 0u;
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
    v51 = 0u;
    v52 = 0u;
    *__p = 0u;
    TrafficDescriptor::TrafficDescriptor(__p, v15);
    v21 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      TrafficDescriptor::toString(v76, __p);
      v22 = v76;
      if (v79 < 0)
      {
        v22 = *v76;
      }

      *buf = 136315394;
      v82 = a5;
      v83 = 2082;
      v84 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#N matchAndConvert (%s):(1-generic) %{public}s", buf, 0x16u);
      if (v79 < 0)
      {
        operator delete(*v76);
      }
    }

    v25 = *AppUuids;
    v24 = AppUuids + 1;
    v23 = v25;
    if (v25 != v24)
    {
      do
      {
        sub_1001696A4(&v51, (v23 + 4));
        sub_1004A6280(a4, __p);
        v26 = v23[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = v23[2];
            v28 = *v27 == v23;
            v23 = v27;
          }

          while (!v28);
        }

        v23 = v27;
      }

      while (v27 != v24);
    }

    if ((BYTE8(v54) & 1) == 0)
    {
      sub_1000D1644();
    }

    DataServiceController::addAllowedSliceApp(a1, v48, &v53, 0);
LABEL_71:
    TrafficDescriptor::~TrafficDescriptor(__p);
    goto LABEL_72;
  }

  v45 = 0;
  return v45 & 1;
}

void sub_1004A9D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = (v17 - 216);
  sub_1001B8A7C(&a17);
  a17 = (v17 - 184);
  sub_1001B8A7C(&a17);
  _Unwind_Resume(a1);
}

uint64_t DataServiceController::trafficClassAllowed_sync(DataServiceController *this, const TrafficDescriptor *a2)
{
  if (DataServiceController::isInternalSliceApp_sync(this, a2))
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      TrafficDescriptor::toString(__p, a2);
      if (v24 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136446210;
      v26 = v5;
      v6 = "#I trafficClassAllowed: true: %{public}s (1)";
LABEL_34:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      return 1;
    }

    return 1;
  }

  if (!TrafficDescriptor::hasBundleInfo(a2) || *(a2 + 232) != 1 || (v7 = (*(*this + 1120))(this), !DataServiceController::SlicesDataContainer::useEntitlementsGenres(this + 4960, v7)))
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      TrafficDescriptor::toString(__p, a2);
      if (v24 >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

      *buf = 136446210;
      v26 = v21;
      v6 = "#I trafficClassAllowed: true: %{public}s (4)";
      goto LABEL_34;
    }

    return 1;
  }

  if ((*(a2 + 72) & 1) == 0)
  {
    goto LABEL_43;
  }

  v8 = sub_100007A6C(this + 4984, a2 + 48);
  if ((this + 4992) == v8 || *(v8 + 160) != 1)
  {
    goto LABEL_22;
  }

  if ((*(a2 + 232) & 1) == 0)
  {
LABEL_43:
    sub_1000D1644();
  }

  v11 = *(v8 + 144);
  v9 = v8 + 144;
  v10 = v11;
  if (v11)
  {
    v12 = *(a2 + 57);
    v13 = v9;
    do
    {
      v14 = *(v10 + 28);
      v15 = v14 >= v12;
      v16 = v14 < v12;
      if (v15)
      {
        v13 = v10;
      }

      v10 = *(v10 + 8 * v16);
    }

    while (v10);
    if (v13 != v9 && v12 >= *(v13 + 28))
    {
      v4 = *(this + 5);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        TrafficDescriptor::toString(__p, a2);
        if (v24 >= 0)
        {
          v22 = __p;
        }

        else
        {
          v22 = __p[0];
        }

        *buf = 136446210;
        v26 = v22;
        v6 = "#I trafficClassAllowed: true: %{public}s (2)";
        goto LABEL_34;
      }

      return 1;
    }
  }

LABEL_22:
  v17 = *(this + 5);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v18)
  {
    TrafficDescriptor::toString(__p, a2);
    if (v24 >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    *buf = 136446210;
    v26 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I trafficClassAllowed: false: %{public}s (3)", buf, 0xCu);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

BOOL sub_1004AA0B4(uint64_t a1, TrafficDescriptor *this)
{
  if (TrafficDescriptor::hasDnnInfo(this))
  {
    return 1;
  }

  if (*(this + 104) == 1)
  {
    return a1 + 168 != sub_100007A6C(a1 + 160, this + 80);
  }

  return 0;
}

uint64_t *DataServiceController::adjustProtocol(uint64_t *this, TrafficDescriptor *a2)
{
  if (*(a2 + 72) == 1)
  {
    v3 = this;
    v4 = a2 + 48;
    this = (*(*this + 2432))(this, a2 + 48);
    if (this)
    {
      if ((*(a2 + 224) & 1) == 0)
      {
        v7 = (*(*v3 + 1120))(v3);
        this = sub_100007DEC((v3 + 620), &v7);
        if (*(*this + 17) == 1)
        {
          if ((*(a2 + 72) & 1) == 0)
          {
            sub_1000D1644();
          }

          v5 = *(a2 + 71);
          if (v5 < 0)
          {
            if (*(a2 + 7) != 9)
            {
LABEL_15:
              *(a2 + 73) = 257;
              return this;
            }

            v4 = *(a2 + 6);
          }

          else if (v5 != 9)
          {
            goto LABEL_15;
          }

          if (*v4 != 0x656269762E6D6F63 || v4[8] != 114)
          {
            goto LABEL_15;
          }
        }
      }
    }
  }

  return this;
}

void DataServiceController::addAllowedSliceApp(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  __p[0] = 0;
  __p[1] = 0;
  v26 = 0;
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  DataServiceController::makeDataSimSlotRange(a1, a2, &v21);
  v9 = *(&v21 + 1);
  v8 = v21;
  if (v21 == *(&v21 + 1))
  {
LABEL_6:
    if (v8)
    {
      *(&v21 + 1) = v8;
      operator delete(v8);
    }

    if (!v4)
    {
      goto LABEL_27;
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 104));
    v11 = ServiceMap;
    if (v12 < 0)
    {
      v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
      v14 = 5381;
      do
      {
        v12 = v14;
        v15 = *v13++;
        v14 = (33 * v14) ^ v15;
      }

      while (v15);
    }

    std::mutex::lock(ServiceMap);
    *&v21 = v12;
    v16 = sub_100009510(&v11[1].__m_.__sig, &v21);
    if (v16)
    {
      v18 = v16[3];
      v17 = v16[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v11);
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v17);
        v19 = 0;
        if (!v18)
        {
LABEL_25:
          if ((v19 & 1) == 0)
          {
            sub_100004A34(v17);
          }

LABEL_27:
          DataServiceController::addAllowedSliceApp(a1, v6, a3, __p, v23, v4);
          if ((SHIBYTE(v24) & 0x80000000) == 0)
          {
            goto LABEL_30;
          }

          v20 = v23[0];
          goto LABEL_29;
        }

LABEL_20:
        (*(*v18 + 120))(&v21, v18, a3);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v21;
        v26 = v22;
        (*(*v18 + 128))(&v21, v18, a3);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(v23[0]);
        }

        *v23 = v21;
        v24 = v22;
        goto LABEL_25;
      }
    }

    else
    {
      v18 = 0;
    }

    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  while ((v4 & 1) != 0 || (DataServiceController::isManagedApp(a1, *v8, a3) & 1) == 0)
  {
    if (++v8 == v9)
    {
      v8 = v21;
      goto LABEL_6;
    }
  }

  v20 = v21;
  if (v21)
  {
    *(&v21 + 1) = v21;
LABEL_29:
    operator delete(v20);
  }

LABEL_30:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1004AA498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if ((v26 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::forwardTrafficToAgent_sync(DataServiceController *this, const TrafficDescriptor *a2)
{
  if ((TrafficDescriptor::empty(a2) & 1) == 0)
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      TrafficDescriptor::toString(v7, a2);
      if (v8 >= 0)
      {
        v5 = v7;
      }

      else
      {
        v5 = v7[0];
      }

      *buf = 136446210;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor forward: %{public}s", buf, 0xCu);
      if (v8 < 0)
      {
        operator delete(v7[0]);
      }
    }

    TrafficDescriptor::TrafficDescriptor(v6, a2);
    v9[0] = off_101E50210;
    v9[1] = this;
    v9[3] = v9;
    DataServiceController::selectConnectionTypeForTd_sync(this);
    sub_1004C2008(v9);
    TrafficDescriptor::~TrafficDescriptor(v6);
  }
}

void sub_1004AA640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1004C2008(v3 - 112);
  TrafficDescriptor::~TrafficDescriptor(va);
  _Unwind_Resume(a1);
}

void DataServiceController::selectConnectionTypeForTd_sync(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v120 = v2;
  v119 = v3;
  v5 = v4;
  v6 = v1;
  if ((DataServiceController::trafficClassAllowed_sync(v1, v4) & 1) == 0)
  {
    *(v5 + 228) = 0;
    *(v5 + 232) = 0;
  }

  if (TrafficDescriptor::empty(v5))
  {
    v7 = (*(*v6 + 1120))(v6);
    sub_10000501C(__p, "");
    v151[0] = 0;
    v152 = 0;
    v8 = DataServiceController::chooseConnectionTypeByDnn_sync(v6, v7, __p, v151);
    if (v152 == 1)
    {
      TrafficDescriptor::~TrafficDescriptor(v151);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v9 = (*(*v6 + 1120))(v6);
    TrafficDescriptor::TrafficDescriptor(v150, v5);
    v10 = v150;
    sub_1004ADB00(v119, v9, v8);
LABEL_243:
    TrafficDescriptor::~TrafficDescriptor(v10);
    return;
  }

  DataServiceController::makeDataSimSlotRange(v6, 3, &v178);
  v117 = *(&v178 + 1);
  v11 = v178;
  if (v178 == *(&v178 + 1))
  {
LABEL_192:
    v77 = 1;
    goto LABEL_229;
  }

  __s = kWildCardDnn;
  while (1)
  {
    v123 = *v11;
    v12 = (*(**(v6 + 48) + 16))(*(v6 + 48));
    v13 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      TrafficDescriptor::toString(__p, v5);
      v14 = __p;
      if (__p[23] < 0)
      {
        v14 = *__p;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor select: %{public}s", &buf, 0xCu);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    v118 = v11;
    if ((*(*v6 + 2272))(v6, v123, 1))
    {
      break;
    }

LABEL_134:
    v11 = v118 + 1;
    if (v118 + 1 == v117)
    {
      goto LABEL_192;
    }
  }

  *__p = v123;
  v15 = *sub_100007DEC(v6 + 4960, __p);
  *__p = v123;
  v16 = *sub_100007DEC(v6 + 4960, __p);
  if (v120 && (*(v16 + 1) & 1) != 0)
  {
    goto LABEL_22;
  }

  if (!TrafficDescriptor::hasBundleInfo(v5))
  {
    goto LABEL_23;
  }

  if ((*(v5 + 72) & 1) == 0)
  {
    sub_1000D1644();
  }

  if (DataServiceController::isManagedApp(v6, v123, v5 + 48))
  {
LABEL_22:
    v121 = 1;
  }

  else
  {
LABEL_23:
    __p[0] = 0;
    __p[24] = 0;
    sub_10016A270(v5 + 240, __p);
    if (__p[24] == 1 && (__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v121 = 0;
  }

  if (*(v6 + 5272) != 1 || (*(v6 + 5273) & 1) != 0 || !TrafficDescriptor::hasBundleInfo(v5) || (TrafficDescriptor::hasAccountInfo(v5) & 1) != 0)
  {
LABEL_52:
    if (!v121)
    {
LABEL_81:
      v30 = *(v6 + 144);
      v32 = *(v30 + 8);
      v31 = *(v30 + 16);
      for (i = v31; ; v31 = i)
      {
        if (v32 == v31)
        {
          goto LABEL_134;
        }

        v34 = v32[52];
        v33 = v32[53];
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          v35 = *(v34 + 52);
          sub_100004A34(v33);
        }

        else
        {
          v35 = *(v34 + 52);
        }

        if (v35 == v123 && v32[3])
        {
          v36 = DataServiceController::sliceTrafficDescriptors_sync(v6, v123, "select connection for td");
          if (v36[1] == *v36)
          {
            if ((v121 & *(v6 + 5348)) == 1 && TrafficDescriptor::hasDnnInfo(v5))
            {
              v78 = *(v6 + 40);
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
              {
                TrafficDescriptor::toString(__p, v5);
                v79 = __p[23] >= 0 ? __p : *__p;
                LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
                *(buf.__r_.__value_.__r.__words + 4) = v79;
                _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "#N Allowing 'fake' CB-configured Managed Slicing in an Internal or a Carrier build (1): %{public}s", &buf, 0xCu);
                if ((__p[23] & 0x80000000) != 0)
                {
                  operator delete(*__p);
                }
              }

              v175 = 0u;
              v176 = 0u;
              v173 = 0u;
              v174 = 0u;
              v171 = 0u;
              v172 = 0u;
              v169 = 0u;
              v170 = 0u;
              v167 = 0u;
              v168 = 0u;
              v165 = 0u;
              v166 = 0u;
              v163 = 0u;
              v164 = 0u;
              memset(__p, 0, sizeof(__p));
              TrafficDescriptor::TrafficDescriptor(__p);
              DataServiceController::updateMatchedDescriptor(v80, v81, __p, v5);
              if ((BYTE8(v174) & 1) == 0)
              {
                sub_1000D1644();
              }

              v138[0] = 0;
              v139 = 0;
              v82 = DataServiceController::chooseConnectionTypeByDnn_sync(v6, v123, &v173, v138);
              if (v139 == 1)
              {
                TrafficDescriptor::~TrafficDescriptor(v138);
              }

              TrafficDescriptor::TrafficDescriptor(v137, __p);
              sub_1004ADB00(v119, v123, v82);
              v83 = v137;
            }

            else
            {
              v175 = 0u;
              v176 = 0u;
              v173 = 0u;
              v174 = 0u;
              v171 = 0u;
              v172 = 0u;
              v169 = 0u;
              v170 = 0u;
              v167 = 0u;
              v168 = 0u;
              v165 = 0u;
              v166 = 0u;
              v163 = 0u;
              v164 = 0u;
              memset(__p, 0, sizeof(__p));
              TrafficDescriptor::TrafficDescriptor(__p);
              DataServiceController::updateMatchedDescriptor(v85, v86, __p, v5);
              v87 = *(v6 + 40);
              if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "#I NW does not have URSP and DNN is not known; use Internet", &buf, 2u);
              }

              sub_10000501C(&buf, "");
              v135[0] = 0;
              v136 = 0;
              v88 = DataServiceController::chooseConnectionTypeByDnn_sync(v6, v123, &buf.__r_.__value_.__l.__data_, v135);
              if (v136 == 1)
              {
                TrafficDescriptor::~TrafficDescriptor(v135);
              }

              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              TrafficDescriptor::TrafficDescriptor(v134, __p);
              sub_1004ADB00(v119, v123, v88);
              v83 = v134;
            }

            goto LABEL_216;
          }

          v175 = 0u;
          v176 = 0u;
          v173 = 0u;
          v174 = 0u;
          v171 = 0u;
          v172 = 0u;
          v169 = 0u;
          v170 = 0u;
          v167 = 0u;
          v168 = 0u;
          v165 = 0u;
          v166 = 0u;
          v163 = 0u;
          v164 = 0u;
          memset(__p, 0, sizeof(__p));
          TrafficDescriptor::TrafficDescriptor(__p);
          memset(&buf, 0, sizeof(buf));
          DataServiceController::findRsDnn_sync(v6, v36, v5, &buf);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            if (buf.__r_.__value_.__l.__size_)
            {
LABEL_205:
              DataServiceController::updateMatchedDescriptor(v37, v38, __p, v5);
              v132[0] = 0;
              v133 = 0;
              v84 = DataServiceController::chooseConnectionTypeByDnn_sync(v6, v123, &buf.__r_.__value_.__l.__data_, v132);
              if (v133 == 1)
              {
                TrafficDescriptor::~TrafficDescriptor(v132);
              }

              TrafficDescriptor::TrafficDescriptor(v131, __p);
              sub_1004ADB00(v119, v123, v84);
              TrafficDescriptor::~TrafficDescriptor(v131);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              goto LABEL_217;
            }

            operator delete(buf.__r_.__value_.__l.__data_);
          }

          else if (*(&buf.__r_.__value_.__s + 23))
          {
            goto LABEL_205;
          }

          TrafficDescriptor::~TrafficDescriptor(__p);
          memset(&buf, 0, sizeof(buf));
          v39 = *(v6 + 40);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            TrafficDescriptor::toString(__p, v5);
            v40 = __p;
            if (__p[23] < 0)
            {
              v40 = *__p;
            }

            LODWORD(v161.__r_.__value_.__l.__data_) = 136446210;
            *(v161.__r_.__value_.__r.__words + 4) = v40;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor <%{public}s> matching:", &v161, 0xCu);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }

          v41 = *v36;
          if (678152731 * ((v36[1] - *v36) >> 4))
          {
            v42 = 0;
            v43 = 0;
            do
            {
              if ((TrafficDescriptor::empty((v41 + v42)) & 1) == 0 && (TrafficDescriptor::hasRsDnnInfo((v41 + v42)) & 1) == 0)
              {
                v44 = *(v6 + 40);
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  TrafficDescriptor::toString(__p, (v41 + v42));
                  v45 = __p;
                  if (__p[23] < 0)
                  {
                    v45 = *__p;
                  }

                  LODWORD(v161.__r_.__value_.__l.__data_) = 136446210;
                  *(v161.__r_.__value_.__r.__words + 4) = v45;
                  _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I bbTd <%{public}s>", &v161, 0xCu);
                  if ((__p[23] & 0x80000000) != 0)
                  {
                    operator delete(*__p);
                  }
                }

                if (((TrafficDescriptor::hasDnnInfo((v41 + v42)) & 1) != 0 || (TrafficDescriptor::hasAppInfo((v41 + v42)) & 1) != 0 || (TrafficDescriptor::hasTrafficInfo((v41 + v42)) & 1) != 0 || TrafficDescriptor::hasAccountInfo((v41 + v42))) && DataServiceController::match(v6, (v41 + v42), v5))
                {
                  v46 = *(v6 + 40);
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                  {
                    *__p = 0;
                    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor match", __p, 2u);
                  }

                  v175 = 0u;
                  v176 = 0u;
                  v173 = 0u;
                  v174 = 0u;
                  v171 = 0u;
                  v172 = 0u;
                  v169 = 0u;
                  v170 = 0u;
                  v167 = 0u;
                  v168 = 0u;
                  v165 = 0u;
                  v166 = 0u;
                  v163 = 0u;
                  v164 = 0u;
                  memset(__p, 0, sizeof(__p));
                  v47 = TrafficDescriptor::TrafficDescriptor(__p, (v41 + v42));
                  DataServiceController::updateMatchedDescriptor(v47, v48, __p, v5);
                  size = buf.__r_.__value_.__l.__size_;
                  if (buf.__r_.__value_.__l.__size_ >= buf.__r_.__value_.__r.__words[2])
                  {
                    v50 = sub_1001C1784(&buf, __p);
                  }

                  else
                  {
                    TrafficDescriptor::TrafficDescriptor(buf.__r_.__value_.__l.__size_, __p);
                    v50 = size + 304;
                  }

                  buf.__r_.__value_.__l.__size_ = v50;
                  TrafficDescriptor::~TrafficDescriptor(__p);
                }
              }

              ++v43;
              v41 = *v36;
              v42 += 304;
            }

            while (v43 < 678152731 * ((v36[1] - *v36) >> 4));
          }

          v52 = buf.__r_.__value_.__l.__size_;
          v51 = buf.__r_.__value_.__r.__words[0];
          v53 = v120;
          if (buf.__r_.__value_.__r.__words[0] != buf.__r_.__value_.__l.__size_)
          {
            v53 = 0;
          }

          if (v121 & v53)
          {
            v54 = *(v6 + 40);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 0;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor matched none, trying the directly configured TD", __p, 2u);
            }

            sub_1004A6280(&buf, v5);
            v52 = buf.__r_.__value_.__l.__size_;
            v51 = buf.__r_.__value_.__r.__words[0];
          }

          if (v51 != v52)
          {
            v55 = *(v6 + 40);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 0;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor matched", __p, 2u);
            }

            memset(&__p[8], 0, 64);
            *__p = v6;
            *&__p[8] = v123;
            sub_1004C3D50(&__p[16], v119);
            memset(&__p[48], 0, 24);
            sub_1004BE904(&__p[48], buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_, 0x86BCA1AF286BCA1BLL * ((buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 4));
            memset(v130, 0, sizeof(v130));
            sub_1004BE904(v130, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_, 0x86BCA1AF286BCA1BLL * ((buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 4));
            v153 = *__p;
            v154 = *&__p[8];
            sub_1004C3D50(&v155, &__p[16]);
            v156 = 0uLL;
            v157 = 0;
            sub_1004BE904(&v156, *&__p[48], *&__p[56], 0x86BCA1AF286BCA1BLL * ((*&__p[56] - *&__p[48]) >> 4));
            v158 = 0;
            operator new();
          }

          if ((v121 & *(v6 + 5348)) == 1 && TrafficDescriptor::hasDnnInfo(v5))
          {
            v89 = *(v6 + 40);
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
            {
              TrafficDescriptor::toString(__p, v5);
              v90 = __p[23] >= 0 ? __p : *__p;
              LODWORD(v161.__r_.__value_.__l.__data_) = 136446210;
              *(v161.__r_.__value_.__r.__words + 4) = v90;
              _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "#N Allowing 'fake' CB-configured Managed Slicing in an Internal or a Carrier build (2): %{public}s", &v161, 0xCu);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }
            }

            v175 = 0u;
            v176 = 0u;
            v173 = 0u;
            v174 = 0u;
            v171 = 0u;
            v172 = 0u;
            v169 = 0u;
            v170 = 0u;
            v167 = 0u;
            v168 = 0u;
            v165 = 0u;
            v166 = 0u;
            v163 = 0u;
            v164 = 0u;
            memset(__p, 0, sizeof(__p));
            TrafficDescriptor::TrafficDescriptor(__p);
            DataServiceController::updateMatchedDescriptor(v91, v92, __p, v5);
            if ((BYTE8(v174) & 1) == 0)
            {
              sub_1000D1644();
            }

            v128[0] = 0;
            v129 = 0;
            v93 = DataServiceController::chooseConnectionTypeByDnn_sync(v6, v123, &v173, v128);
            if (v129 == 1)
            {
              TrafficDescriptor::~TrafficDescriptor(v128);
            }

            TrafficDescriptor::TrafficDescriptor(v127, __p);
            sub_1004ADB00(v119, v123, v93);
            TrafficDescriptor::~TrafficDescriptor(v127);
            TrafficDescriptor::~TrafficDescriptor(__p);
            *__p = &buf;
            sub_1001B8A7C(__p);
            goto LABEL_228;
          }

          *__p = &buf;
          sub_1001B8A7C(__p);
        }

        v32 += 54;
      }
    }

    goto LABEL_53;
  }

  if (!v121)
  {
    goto LABEL_49;
  }

  memset(__p, 0, 24);
  memset(&buf, 0, sizeof(buf));
  v17 = *(v5 + 72);
  if (v17 == 1)
  {
    v18 = sub_100007A6C(v16 + 160, v5 + 48);
    LOBYTE(v17) = *(v5 + 72);
    if (v16 + 168 != v18)
    {
      if (*(v5 + 72))
      {
        std::string::operator=(&buf, v5 + 2);
        goto LABEL_38;
      }

LABEL_282:
      sub_1000D1644();
    }
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_282;
  }

  DataServiceController::getManagedAppInfo(v6, v123, v5 + 48, __p, &buf);
LABEL_38:
  v19 = __p[23];
  if (__p[23] < 0)
  {
    v19 = *&__p[8];
  }

  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = buf.__r_.__value_.__l.__size_;
  }

  v21 = (v19 | v20) != 0;
  if ((*(&buf.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((__p[23] & 0x80) == 0)
    {
LABEL_45:
      if (v21)
      {
        goto LABEL_53;
      }

      goto LABEL_49;
    }
  }

  else if ((__p[23] & 0x80) == 0)
  {
    goto LABEL_45;
  }

  operator delete(*__p);
  if (!v21)
  {
LABEL_49:
    if ((*(v5 + 72) & 1) == 0)
    {
      sub_1000D1644();
    }

    if (*(v6 + 5348) != 1 || v6 + 5288 == sub_100007A6C(v6 + 5280, v5 + 48))
    {
      v105 = (*(*v6 + 1120))(v6);
      sub_10000501C(__p, "");
      v148[0] = 0;
      v149 = 0;
      v106 = DataServiceController::chooseConnectionTypeByDnn_sync(v6, v105, __p, v148);
      if (v149 == 1)
      {
        TrafficDescriptor::~TrafficDescriptor(v148);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      v175 = 0u;
      v176 = 0u;
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      memset(__p, 0, sizeof(__p));
      TrafficDescriptor::TrafficDescriptor(__p);
      sub_10012BF3C(&__p[48], v5 + 2);
      if (*(v5 + 40) != 1)
      {
        goto LABEL_264;
      }

      v107 = *(v5 + 39);
      if (v107 < 0)
      {
        v107 = *(v5 + 3);
      }

      if (v107)
      {
        sub_10012BF3C(&__p[16], (v5 + 16));
      }

      else
      {
LABEL_264:
        if (*(v5 + 8) != 1)
        {
          if ((*(v5 + 72) & 1) == 0)
          {
            sub_1000D1644();
          }

          AppUuids = DataServiceController::getAppUuids(v6, v5 + 48);
          v111 = AppUuids + 1;
          v110 = *AppUuids;
          if (*AppUuids != AppUuids + 1)
          {
            do
            {
              sub_1001696A4(&__p[16], (v110 + 4));
              v112 = (*(*v6 + 1120))(v6);
              TrafficDescriptor::TrafficDescriptor(v147, __p);
              sub_1004ADB00(v119, v112, v106);
              TrafficDescriptor::~TrafficDescriptor(v147);
              v113 = v110[1];
              if (v113)
              {
                do
                {
                  v114 = v113;
                  v113 = *v113;
                }

                while (v113);
              }

              else
              {
                do
                {
                  v114 = v110[2];
                  v115 = *v114 == v110;
                  v110 = v114;
                }

                while (!v115);
              }

              v110 = v114;
            }

            while (v114 != v111);
          }

          goto LABEL_217;
        }

        *&__p[4] = *(v5 + 1);
        __p[8] = *(v5 + 8);
      }

      v108 = (*(*v6 + 1120))(v6);
      TrafficDescriptor::TrafficDescriptor(v146, __p);
      sub_1004ADB00(v119, v108, v106);
      v83 = v146;
      goto LABEL_216;
    }

    goto LABEL_52;
  }

LABEL_53:
  if (DataServiceController::getRawDataMode(v6, v123) == 17)
  {
    goto LABEL_80;
  }

  if (!v120 || !TrafficDescriptor::hasDnnInfo(v5))
  {
    memset(&buf, 0, sizeof(buf));
    *__p = v123;
    v22 = sub_100007DEC(v6 + 4960, __p);
    v23 = *v22;
    if (*(*v22 + 303) < 0)
    {
      sub_100005F2C(&buf, *(v23 + 280), *(v23 + 288));
    }

    else
    {
      buf = *(v23 + 280);
    }

    v24 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    v25 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = buf.__r_.__value_.__l.__size_;
    }

    if (!v24)
    {
      goto LABEL_78;
    }

    memset(&v161, 0, sizeof(v161));
    if (TrafficDescriptor::hasBundleInfo(v5))
    {
      if ((*(v5 + 72) & 1) == 0)
      {
        sub_1000D1644();
      }

      DataServiceController::getManagedAppInfo(v6, v123, v5 + 48, &v161);
    }

    v26 = HIBYTE(v161.__r_.__value_.__r.__words[2]);
    if ((v161.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v26 = v161.__r_.__value_.__l.__size_;
    }

    if (v26)
    {
      std::string::operator=(&buf, &v161);
    }

    v27 = strlen(__s);
    v28 = v27;
    v25 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v27 == buf.__r_.__value_.__l.__size_)
      {
        if (v27 == -1)
        {
          sub_10013C334();
        }

        p_buf = buf.__r_.__value_.__r.__words[0];
LABEL_75:
        if (!memcmp(p_buf, __s, v28))
        {
          if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v161.__r_.__value_.__l.__data_);
            v25 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
          }

LABEL_78:
          if (v25 < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

LABEL_80:
          if (TrafficDescriptor::hasDnnInfo(v5))
          {
            goto LABEL_81;
          }

          if (!TrafficDescriptor::hasBundleInfo(v5))
          {
LABEL_169:
            v64 = (v15 + 256);
            v65 = strlen(__s);
            v66 = v65;
            v67 = *(v15 + 279);
            if (v67 < 0)
            {
              v67 = *(v15 + 264);
              if (v65 != v67)
              {
                goto LABEL_176;
              }

              if (v65 == -1)
              {
                sub_10013C334();
              }

              v68 = *v64;
            }

            else
            {
              if (v65 != v67)
              {
                goto LABEL_176;
              }

              v68 = (v15 + 256);
            }

            if (!memcmp(v68, __s, v66))
            {
              v73 = *(v16 + 327);
              if (v73 < 0)
              {
                v73 = *(v16 + 312);
              }

              if (!v73)
              {
                v76 = *v12;
                if (!os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_81;
                }

                *__p = 0;
                v70 = v76;
                v71 = "#I TrafficDescriptor select: no DNN info and no anyLookupDnn";
                v72 = 2;
                goto LABEL_182;
              }

              v74 = (v16 + 304);
              sub_1001696A4(v5 + 10, (v16 + 304));
              v75 = *v12;
              if (!os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_81;
              }

              if (*(v16 + 327) < 0)
              {
                v74 = *v74;
              }

              *__p = 136446210;
              *&__p[4] = v74;
              v70 = v75;
              v71 = "#I TrafficDescriptor select: %{public}s: DNN updated from anyLookupDnn";
LABEL_181:
              v72 = 12;
LABEL_182:
              _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, v71, __p, v72);
              goto LABEL_81;
            }

LABEL_176:
            if (!v67)
            {
              goto LABEL_81;
            }

            sub_1001696A4(v5 + 10, (v15 + 256));
            v69 = *v12;
            if (!os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_81;
            }

            if (*(v15 + 279) < 0)
            {
              v64 = *v64;
            }

            *__p = 136446210;
            *&__p[4] = v64;
            v70 = v69;
            v71 = "#I TrafficDescriptor select: %{public}s: DNN updated from enterpriseDnn";
            goto LABEL_181;
          }

          memset(__p, 0, 24);
          memset(&buf, 0, sizeof(buf));
          v56 = *(v5 + 72);
          if (v56 != 1 || (v57 = sub_100007A6C(v16 + 160, v5 + 48), LOBYTE(v56) = *(v5 + 72), v16 + 168 == v57))
          {
            if (v56)
            {
              DataServiceController::getManagedAppInfo(v6, v123, v5 + 48, __p, &buf);
LABEL_143:
              if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v58 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v58 = buf.__r_.__value_.__l.__size_;
              }

              if (v58)
              {
                sub_1001696A4((v5 + 80), &buf);
                v59 = *v12;
                if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
                {
                  TrafficDescriptor::toString(&v161, v5);
                  v60 = &v161;
                  if ((v161.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v60 = v161.__r_.__value_.__r.__words[0];
                  }

                  v159 = 136446210;
                  v160 = v60;
                  _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor select: fakeAppCategory: td = %{public}s", &v159, 0xCu);
                  if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v161.__r_.__value_.__l.__data_);
                  }
                }
              }

              v61 = __p[23];
              if (__p[23] < 0)
              {
                v61 = *&__p[8];
              }

              if (v61)
              {
                sub_1001696A4(v5 + 10, __p);
                v62 = *v12;
                if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
                {
                  v63 = __p;
                  if (__p[23] < 0)
                  {
                    v63 = *__p;
                  }

                  LODWORD(v161.__r_.__value_.__l.__data_) = 136446210;
                  *(v161.__r_.__value_.__r.__words + 4) = v63;
                  _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor select: %{public}s: DNN updated from MDM", &v161, 0xCu);
                }

                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }

                if ((__p[23] & 0x80000000) != 0)
                {
                  operator delete(*__p);
                }

                goto LABEL_81;
              }

              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
                if ((__p[23] & 0x80) == 0)
                {
LABEL_165:
                  if (v58)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_169;
                }
              }

              else if ((__p[23] & 0x80) == 0)
              {
                goto LABEL_165;
              }

              operator delete(*__p);
              if (v58)
              {
                goto LABEL_81;
              }

              goto LABEL_169;
            }
          }

          else if (*(v5 + 72))
          {
            std::string::operator=(&buf, v5 + 2);
            goto LABEL_143;
          }

          sub_1000D1644();
        }
      }
    }

    else if (v27 == SHIBYTE(buf.__r_.__value_.__r.__words[2]))
    {
      p_buf = &buf;
      goto LABEL_75;
    }

    v175 = 0u;
    v176 = 0u;
    v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    memset(__p, 0, sizeof(__p));
    TrafficDescriptor::TrafficDescriptor(__p);
    v99 = sub_1001696A4(&v173, &buf);
    DataServiceController::updateMatchedDescriptor(v99, v100, __p, v5);
    v141[0] = 0;
    v142 = 0;
    v101 = DataServiceController::chooseConnectionTypeByDnn_sync(v6, v123, &buf.__r_.__value_.__l.__data_, v141);
    if (v142 == 1)
    {
      TrafficDescriptor::~TrafficDescriptor(v141);
    }

    TrafficDescriptor::TrafficDescriptor(v140, __p);
    sub_1004ADB00(v119, v123, v101);
    TrafficDescriptor::~TrafficDescriptor(v140);
    TrafficDescriptor::~TrafficDescriptor(__p);
    if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v161.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    goto LABEL_228;
  }

  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  memset(__p, 0, sizeof(__p));
  TrafficDescriptor::TrafficDescriptor(__p);
  DataServiceController::updateMatchedDescriptor(v102, v103, __p, v5);
  if ((BYTE8(v174) & 1) == 0)
  {
    sub_1000D1644();
  }

  v144[0] = 0;
  v145 = 0;
  v104 = DataServiceController::chooseConnectionTypeByDnn_sync(v6, v123, &v173, v144);
  if (v145 == 1)
  {
    TrafficDescriptor::~TrafficDescriptor(v144);
  }

  TrafficDescriptor::TrafficDescriptor(v143, __p);
  sub_1004ADB00(v119, v123, v104);
  v83 = v143;
LABEL_216:
  TrafficDescriptor::~TrafficDescriptor(v83);
LABEL_217:
  TrafficDescriptor::~TrafficDescriptor(__p);
LABEL_228:
  v77 = 0;
LABEL_229:
  if (v178)
  {
    *(&v178 + 1) = v178;
    operator delete(v178);
  }

  if (v77)
  {
    v94 = *(v6 + 40);
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      TrafficDescriptor::toString(__p, v5);
      v95 = __p[23] >= 0 ? __p : *__p;
      LODWORD(v178) = 136446210;
      *(&v178 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "#N Cannot find connection type for td, using basic internet: td=[%{public}s]", &v178, 0xCu);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    v96 = (*(*v6 + 1120))(v6);
    sub_10000501C(__p, "");
    v125[0] = 0;
    v126 = 0;
    v97 = DataServiceController::chooseConnectionTypeByDnn_sync(v6, v96, __p, v125);
    if (v126 == 1)
    {
      TrafficDescriptor::~TrafficDescriptor(v125);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v98 = (*(*v6 + 1120))(v6);
    TrafficDescriptor::TrafficDescriptor(v124, v5);
    v10 = v124;
    sub_1004ADB00(v119, v98, v97);
    goto LABEL_243;
  }
}

void sub_1004AC15C(_Unwind_Exception *a1)
{
  TrafficDescriptor::~TrafficDescriptor(&STACK[0x1800]);
  v3 = *(v1 - 128);
  if (v3)
  {
    *(v1 - 120) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t DataServiceController::isCallKitApp(uint64_t a1, char *a2)
{
  v5 = (*(*a1 + 1120))(a1);
  if (*(*sub_100007DEC(a1 + 4960, &v5) + 16) != 1)
  {
    return 0;
  }

  if (a1 + 5160 == sub_100007A6C(a1 + 5152, a2))
  {
    return (*(*a1 + 2448))(a1, a2);
  }

  return 1;
}

BOOL DataServiceController::readCallKitApp(uint64_t a1, const void **a2)
{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  sub_100168A48("CallKitAppInfo_", a2, v14);
  if (SHIBYTE(v15) < 0)
  {
    sub_100005F2C(v11, v14[0], v14[1]);
  }

  else
  {
    *v11 = *v14;
    v12 = v15;
  }

  if (SHIBYTE(v12) < 0)
  {
    sub_100005F2C(__p, v11[0], v11[1]);
  }

  else
  {
    *__p = *v11;
    v18 = v12;
  }

  v16 = 0;
  if (SHIBYTE(v18) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v20 = v18;
  }

  v21 = 0;
  if (ctu::cf::convert_copy())
  {
    v2 = v16;
    v16 = v21;
    v22 = v2;
    sub_100005978(&v22);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__dst);
  }

  v3 = v16;
  v13 = v16;
  v16 = 0;
  sub_100005978(&v16);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  v4 = CFPreferencesCopyValue(v3, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  *&__dst = v4;
  v9 = 0;
  if (v4)
  {
    v5 = CFGetTypeID(v4);
    if (v5 == CFNumberGetTypeID())
    {
      __p[0] = 0;
      v6 = __dst;
      if (__dst)
      {
        v7 = CFGetTypeID(__dst);
        v8 = v7 == CFNumberGetTypeID() ? v6 : 0;
      }

      else
      {
        v8 = 0;
      }

      CFNumberGetValue(v8, kCFNumberDoubleType, __p);
      if (CFAbsoluteTimeGetCurrent() - *__p < 86400.0)
      {
        v9 = 1;
      }
    }
  }

  sub_10000A1EC(&__dst);
  sub_100005978(&v13);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  return v9;
}

void sub_1004AC8F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_10000A1EC((v28 - 64));
  sub_100005978(&a15);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void DataServiceController::writeCallKitApp(uint64_t a1, const void **a2)
{
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  sub_100168A48("CallKitAppInfo_", a2, v6);
  if (SHIBYTE(v7) < 0)
  {
    sub_100005F2C(v3, v6[0], v6[1]);
  }

  else
  {
    *v3 = *v6;
    v4 = v7;
  }

  if (SHIBYTE(v4) < 0)
  {
    sub_100005F2C(__p, v3[0], v3[1]);
  }

  else
  {
    *__p = *v3;
    v10 = v4;
  }

  v8 = 0;
  if (SHIBYTE(v10) < 0)
  {
    sub_100005F2C(&valuePtr, __p[0], __p[1]);
  }

  else
  {
    valuePtr = *__p;
    v12 = v10;
  }

  v13 = 0;
  if (ctu::cf::convert_copy())
  {
    v2 = v8;
    v8 = v13;
    v14 = v2;
    sub_100005978(&v14);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(valuePtr);
  }

  key = v8;
  v8 = 0;
  sub_100005978(&v8);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v4) < 0)
  {
    operator delete(v3[0]);
  }

  *&valuePtr = CFAbsoluteTimeGetCurrent();
  __p[0] = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
  CFPreferencesSetValue(key, __p[0], @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100029A48(__p);
  sub_100005978(&key);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1004ACB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100005978(&a22);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void DataServiceController::forwardTrafficToInternetAgent_sync(NSObject **a1, const TrafficDescriptor *a2)
{
  if ((TrafficDescriptor::empty(a2) & 1) == 0)
  {
    if ((DataServiceController::isInternalSliceApp_sync(a1, a2) & 1) == 0 && *(a2 + 40) == 1)
    {
      *(a2 + 4) = 0;
      *(a2 + 8) = 0;
    }

    v4 = a1[5];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      TrafficDescriptor::toString(&__p, a2);
      v5 = v9 >= 0 ? &__p : __p;
      *buf = 136446210;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor forward to internet: %{public}s", buf, 0xCu);
      if (v9 < 0)
      {
        operator delete(__p);
      }
    }

    __p = 0;
    v8 = 0;
    v6 = ((*a1)[140].isa)(a1);
    DataServiceController::getConnection_sync(a1, v6, 0, &__p);
    if (__p)
    {
      (*(*__p + 448))(__p, a2);
    }

    if (v8)
    {
      sub_100004A34(v8);
    }
  }
}

void sub_1004ACD54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataServiceController::chooseConnectionTypeByDnn_sync(uint64_t a1, int a2, void **a3, uint64_t a4)
{
  v4 = *(a3 + 23);
  if (v4 < 0)
  {
    v4 = a3[1];
  }

  if (v4)
  {
    v8 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    v25 = 0;
    v26 = 0;
    DataServiceController::getConnection_sync(a1, a2, 0, &v25);
    if (!v25)
    {
      goto LABEL_24;
    }

    v31 = 0;
    v32 = 0;
    (*(*v25 + 136))(&v31);
    if (!v31)
    {
LABEL_22:
      if (v32)
      {
        sub_100004A34(v32);
      }

LABEL_24:
      if (v26)
      {
        sub_100004A34(v26);
      }

      v17 = 36;
      v32 = 0;
      v33 = 0;
      v31 = off_101E502A0;
      v34 = &v31;
      memset(v30, 0, sizeof(v30));
      v29 = 0u;
      v28 = 0u;
      v25 = a1;
      v26 = a2;
      v27 = v8;
      if (*(a3 + 23) < 0)
      {
        sub_100005F2C(&v28, *a3, a3[1]);
      }

      else
      {
        v28 = *a3;
        *&v29 = a3[2];
      }

      *(&v29 + 1) = &v17;
      sub_1004C299C(v30, &v31);
      v23 = 0uLL;
      v24 = 0;
      if (*(a3 + 23) < 0)
      {
        sub_100005F2C(__p, *a3, a3[1]);
      }

      else
      {
        *__p = *a3;
        __p[2] = a3[2];
      }

      sub_1004C299C(&v19, &v31);
      v22 = 0;
      operator new();
    }

    v21 = 0;
    *buf = 0;
    (*(*v31 + 59))(buf);
    if (!*buf)
    {
      goto LABEL_20;
    }

    v9 = *(*buf + 71);
    if (v9 >= 0)
    {
      v10 = *(*buf + 71);
    }

    else
    {
      v10 = *(*buf + 56);
    }

    v11 = *(a3 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      v11 = a3[1];
    }

    if (v10 != v11 || (v9 >= 0 ? (v13 = (*buf + 48)) : (v13 = *(*buf + 48)), v12 >= 0 ? (v14 = a3) : (v14 = *a3), memcmp(v13, v14, v10)))
    {
LABEL_20:
      if (v21)
      {
        sub_100004A34(v21);
      }

      goto LABEL_22;
    }

    v15 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v23) = 136446210;
      *(&v23 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Requested Internet APN: %{public}s", &v23, 0xCu);
    }

    if (v21)
    {
      sub_100004A34(v21);
    }

    if (v32)
    {
      sub_100004A34(v32);
    }

    if (v26)
    {
      sub_100004A34(v26);
    }
  }

  return 0;
}

void sub_1004AD6EC(_Unwind_Exception *a1)
{
  STACK[0x200] = v1 - 256;
  sub_1004BEE7C(&STACK[0x200]);
  sub_1004AD930(v1 - 224);
  sub_1004C291C(v1 - 136);
  _Unwind_Resume(a1);
}

uint64_t sub_1004AD8AC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1004BEB74(a1, a2);
  }

  else
  {
    result = sub_1004BEC80(v3, a2) + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1004AD8F4(uint64_t a1)
{
  sub_1004C291C(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1004AD930(uint64_t a1)
{
  sub_1004C291C(a1 + 56);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

std::string *DataServiceController::updateMatchedDescriptor(int a1, int a2, uint64_t a3, TrafficDescriptor *this)
{
  if (TrafficDescriptor::hasAccountInfo(this))
  {
    if (*(this + 136))
    {

      return sub_1001696A4((a3 + 112), (this + 112));
    }

LABEL_24:
    sub_1000D1644();
  }

  if (TrafficDescriptor::hasDnnInfo(this))
  {
    if (*(a3 + 264) != 1)
    {
      goto LABEL_11;
    }

    v7 = *(a3 + 263);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a3 + 248);
    }

    if (!v7)
    {
LABEL_11:
      if ((*(this + 264) & 1) == 0)
      {
        goto LABEL_24;
      }

      sub_1001696A4((a3 + 240), this + 10);
    }
  }

  result = TrafficDescriptor::hasBundleInfo(this);
  if (result)
  {
    if ((*(this + 72) & 1) == 0)
    {
      goto LABEL_24;
    }

    result = sub_1001696A4((a3 + 48), this + 2);
  }

  if (*(this + 40) == 1)
  {
    v8 = *(this + 39);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(this + 3);
    }

    if (v8)
    {
      result = sub_1001696A4((a3 + 16), (this + 16));
    }
  }

  if (*(this + 8) == 1)
  {
    *(a3 + 4) = *(this + 1);
    *(a3 + 8) = 1;
  }

  return result;
}

uint64_t DataServiceController::SlicesDataContainer::useEntitlementsGenres(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = a1 + 8;
    do
    {
      if (*(v2 + 32) >= a2)
      {
        v3 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 32) < a2));
    }

    while (v2);
    if (v3 == a1 + 8 || *(v3 + 32) > a2)
    {
      v4 = 0;
    }

    else
    {
      v6 = a2;
      v4 = *(*sub_100007DEC(a1, &v6) + 23);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1004ADB00(uint64_t a1, int a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t DataServiceController::getManagedAppInfo(uint64_t a1, uint64_t a2, char *a3, std::string *a4, std::string *a5)
{
  v8 = a2;
  v15 = a2;
  v10 = sub_100007DEC(a1 + 4960, &v15);
  v11 = *v10;
  if (*(*v10 + 1) != 1)
  {
    return 0;
  }

  v12 = sub_100007A6C(v11 + 136, a3);
  if (v11 + 144 == v12)
  {
    return 0;
  }

  v13 = v12;
  std::string::operator=(a4, (v12 + 80));
  std::string::operator=(a5, (v13 + 56));
  return DataServiceController::isGoodAppCategory(a1, v8, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t DataServiceController::getManagedAppInfo(uint64_t a1, uint64_t a2, char *a3, std::string *a4)
{
  v6 = a2;
  v12 = a2;
  v8 = sub_100007DEC(a1 + 4960, &v12);
  v9 = *v8;
  if (*(*v8 + 1) != 1)
  {
    return 0;
  }

  v10 = sub_100007A6C(v9 + 136, a3);
  if (v9 + 144 == v10)
  {
    return 0;
  }

  std::string::operator=(a4, (v10 + 80));
  return DataServiceController::isGoodAppCategory(a1, v6, 0xFFFFFFFFFFFFFFFFLL);
}

void DataServiceController::findRsDnn_sync(DataServiceController *a1@<X0>, uint64_t *a2@<X1>, TrafficDescriptor *a3@<X2>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    TrafficDescriptor::toString(__p, a3);
    v10 = v22 >= 0 ? __p : __p[0];
    *buf = 136446210;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I findRsDnn_sync <%{public}s>", buf, 0xCu);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = *a2;
  v12 = a2[1];
  if (*a2 == v12)
  {
LABEL_17:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
  }

  else
  {
    while (1)
    {
      if (TrafficDescriptor::hasRsDnnInfo(v11))
      {
        v13 = *(a1 + 5);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          TrafficDescriptor::toString(__p, v11);
          v14 = v22 >= 0 ? __p : __p[0];
          *buf = 136446210;
          *&buf[4] = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I cbTd <%{public}s>", buf, 0xCu);
          if (v22 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (DataServiceController::match(a1, v11, a3))
        {
          break;
        }
      }

      v11 += 304;
      if (v11 == v12)
      {
        goto LABEL_17;
      }
    }

    v15 = *(a1 + 5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      TrafficDescriptor::toString(__p, a3);
      v16 = v22;
      v17 = __p[0];
      TrafficDescriptor::toString(buf, v11);
      v18 = __p;
      if (v16 < 0)
      {
        v18 = v17;
      }

      if (v24 >= 0)
      {
        v19 = buf;
      }

      else
      {
        v19 = *buf;
      }

      *v25 = 136446466;
      v26 = v18;
      v27 = 2082;
      v28 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor find dnn: td=%{public}s: found cbTd: %{public}s", v25, 0x16u);
      if (v24 < 0)
      {
        operator delete(*buf);
      }

      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }

    TrafficDescriptor::operator=();
    if ((*(v11 + 296) & 1) == 0)
    {
      sub_1000D1644();
    }

    if (*(v11 + 295) < 0)
    {
      sub_100005F2C(a5, *(v11 + 272), *(v11 + 280));
    }

    else
    {
      v20 = *(v11 + 272);
      *(a5 + 16) = *(v11 + 288);
      *a5 = v20;
    }
  }
}

void sub_1004ADF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataServiceController::selectDnnForTd_sync(uint64_t a1, int a2, unint64_t a3, const TrafficDescriptor **a4, uint64_t a5)
{
  v7 = *a4;
  v8 = 0x86BCA1AF286BCA1BLL * ((a4[1] - *a4) >> 4);
  if (v8 <= a3)
  {
    v21 = *(a1 + 40);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1017725C4(a3, v8, v21);
    }
  }

  else
  {
    memset(v28, 0, sizeof(v28));
    TrafficDescriptor::TrafficDescriptor(v28, (v7 + 304 * a3));
    memset(v27, 0, sizeof(v27));
    memset(v26, 0, sizeof(v26));
    memset(v25, 0, sizeof(v25));
    TrafficDescriptor::TrafficDescriptor(v25, v28);
    if (TrafficDescriptor::hasAppCategoryInfo(v25))
    {
      sub_10012BF3C(v26, v27);
    }

    v43 = 0u;
    v44 = 0u;
    v45 = 0;
    memset(v42, 0, sizeof(v42));
    v41 = a1;
    v42[0] = a2;
    sub_1004C4634(&v42[2], a5);
    TrafficDescriptor::TrafficDescriptor(&v42[10], v28);
    *(&v43 + 1) = a3;
    v44 = 0uLL;
    v45 = 0;
    sub_1004BE904(&v44, *a4, a4[1], 0x86BCA1AF286BCA1BLL * ((a4[1] - *a4) >> 4));
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      TrafficDescriptor::toString(__p, v25);
      v13 = v24 >= 0 ? __p : __p[0];
      v14 = 678152731 * ((a4[1] - *a4) >> 4);
      *buf = 136446722;
      *&buf[4] = v13;
      v37 = 1024;
      v38 = a3;
      v39 = 1024;
      v40 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I trying lookup for: <%{public}s>, index %u, tds size: %u", buf, 0x18u);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v15 = *(a1 + 144);
    v16 = *(v15 + 8);
    for (i = *(v15 + 16); v16 != i; v16 += 54)
    {
      v19 = v16[52];
      v18 = v16[53];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        v20 = *(v19 + 52);
        sub_100004A34(v18);
      }

      else
      {
        v20 = *(v19 + 52);
      }

      if (v20 == a2 && v16[3])
      {
        v29 = v41;
        v30 = v42[0];
        sub_1004C4634(&v31, &v42[2]);
        TrafficDescriptor::TrafficDescriptor(v32, &v42[10]);
        v32[38] = *(&v43 + 1);
        v34 = 0;
        v33 = 0uLL;
        sub_1004BE904(&v33, v44, *(&v44 + 1), 0x86BCA1AF286BCA1BLL * ((*(&v44 + 1) - v44) >> 4));
        v35 = 0;
        operator new();
      }
    }

    *buf = &v44;
    sub_1001B8A7C(buf);
    TrafficDescriptor::~TrafficDescriptor(&v42[10]);
    sub_1004C45B4(&v42[2]);
    TrafficDescriptor::~TrafficDescriptor(v25);
    TrafficDescriptor::~TrafficDescriptor(v28);
  }

  return 0;
}

void sub_1004AE4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  sub_1004AE5A8(&STACK[0x438]);
  TrafficDescriptor::~TrafficDescriptor(&a13);
  TrafficDescriptor::~TrafficDescriptor(&a51);
  _Unwind_Resume(a1);
}

uint64_t sub_1004AE564(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_1001B8A7C(&v3);
  sub_1004C2008(a1 + 16);
  return a1;
}

uint64_t sub_1004AE5A8(uint64_t a1)
{
  v3 = (a1 + 360);
  sub_1001B8A7C(&v3);
  TrafficDescriptor::~TrafficDescriptor((a1 + 48));
  sub_1004C45B4(a1 + 16);
  return a1;
}

BOOL DataServiceController::isAllowedApp(_BYTE *a1, uint64_t a2, char *a3)
{
  v4 = a2;
  LODWORD(v15) = a2;
  v6 = sub_100007DEC((a1 + 4960), &v15);
  v7 = *v6;
  if (*(*v6 + 1) != 1 || v7 + 144 == sub_100007A6C(v7 + 136, a3))
  {
    if (*(v7 + 128))
    {
LABEL_10:
      if ((a1[5272] != 1 || (a1[5273] & 1) != 0 || a1[5348] == 1 && a1 + 5288 != sub_100007A6C((a1 + 5280), a3)) && *(v7 + 15) == 1)
      {
        v15 = 0;
        v16[0] = 0;
        v16[1] = 0;
        (*(*a1 + 2360))(&v15, a1, a3);
        v12 = v15;
        if (v15 == v16)
        {
LABEL_23:
          sub_10006DCAC(&v15, v16[0]);
          return 1;
        }

        while (DataServiceController::isGoodAppCategory(a1, v4, v12[4]))
        {
          v13 = v12[1];
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
              v14 = v12[2];
              v11 = *v14 == v12;
              v12 = v14;
            }

            while (!v11);
          }

          v12 = v14;
          if (v14 == v16)
          {
            goto LABEL_23;
          }
        }

        sub_10006DCAC(&v15, v16[0]);
      }

      return 0;
    }

    v8 = 0;
  }

  else
  {
    if ((DataServiceController::isGoodAppCategory(a1, v4, 0xFFFFFFFFFFFFFFFFLL) & 1) == 0)
    {
      return 0;
    }

    v8 = 1;
    result = 1;
    if (*(v7 + 128))
    {
      return result;
    }
  }

  v10 = sub_100007A6C(v7 + 104, a3);
  v11 = v7 + 112 == v10;
  result = v7 + 112 != v10;
  if ((v8 & 1) == 0 && !v11)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t DataServiceController::getSliceTrafficDescriptors(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1174405120;
  v11[2] = sub_1004AE948;
  v11[3] = &unk_101E50070;
  v11[4] = a1;
  v12[8] = a2;
  v12[9] = a3;
  sub_1004C4D8C(v12, a4);
  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, (a1 + 8));
  v5 = *(a1 + 24);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1174405120;
  v7[2] = sub_10008D8E8;
  v7[3] = &unk_101E50748;
  v7[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7[4] = v11;
  dispatch_async(v5, v7);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  return sub_1004C4D0C(v12);
}

void sub_1004AE93C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1004AE948(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!sub_100097DB0(*(v2 + 144), *(a1 + 72)))
  {
    goto LABEL_9;
  }

  v7 = 0;
  v8[0] = 0;
  DataServiceController::getConnection_sync(v2, *(a1 + 72), *(a1 + 76), &v7);
  v3 = v7;
  if (v7)
  {
    __p[0] = 0;
    __p[1] = 0;
    v10 = 0;
    v4 = ((*v7)[52])(v7, __p);
    v5 = *(a1 + 64);
    if (!v5)
    {
      sub_100022DB4();
    }

    (*(*v5 + 48))(v5, __p, v4);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v8[0])
  {
    sub_100004A34(v8[0]);
  }

  if (!v3)
  {
LABEL_9:
    sub_10000501C(__p, "");
    v8[0] = 0;
    v8[1] = 0;
    v7 = v8;
    v6 = *(a1 + 64);
    if (!v6)
    {
      sub_100022DB4();
    }

    (*(*v6 + 48))(v6, __p, &v7);
    sub_10001BB0C(&v7, v8[0]);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1004AEAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataServiceController::getSliceTrafficDescriptors(uint64_t a1, uint64_t a2)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1174405120;
  v9[2] = sub_1004AEC68;
  v9[3] = &unk_101E500A0;
  v9[4] = a1;
  sub_1004C4EA4(v10, a2);
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10008D8E8;
  block[3] = &unk_101E50748;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v9;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  return sub_1004C4E24(v10);
}

void sub_1004AEC5C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1004AEC68(uint64_t a1)
{
  v2 = *(a1 + 32);
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v3 = (*(*v2 + 1120))(v2);
  DataServiceController::makeDataSimSlotRange(v2, v3, &v11);
  v4 = v11;
  v5 = v12;
  if (v11 != v12)
  {
    do
    {
      v6 = *v4;
      v7 = DataServiceController::sliceTrafficDescriptors_sync(v2, *v4, "get descriptors");
      v8 = *v7;
      v9 = v7[1];
      while (v8 != v9)
      {
        if (DataServiceController::sliceAllowed(v2, v6, v8, 1, 0))
        {
          sub_100117AC4(&v13, v8, v8);
        }

        v8 = (v8 + 304);
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = v11;
  }

  if (v4)
  {
    v12 = v4;
    operator delete(v4);
  }

  v10 = *(a1 + 64);
  if (!v10)
  {
    sub_100022DB4();
  }

  (*(*v10 + 48))(v10, &v13);
  sub_10001BB0C(&v13, v14[0]);
}

void *DataServiceController::getSliceTrafficDescriptors_sync(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  if (!sub_100097DB0(*(a1 + 144), a2))
  {
    return &kEmptyTrafficDescriptorsSet;
  }

  v10 = 0;
  v11 = 0;
  DataServiceController::getConnection_sync(a1, v4, a3, &v10);
  v6 = v10;
  if (v10)
  {
    __p[0] = 0;
    __p[1] = 0;
    v9 = 0;
    v4 = (*(*v10 + 416))(v10, __p);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  if (!v6)
  {
    return &kEmptyTrafficDescriptorsSet;
  }

  return v4;
}

void sub_1004AEEF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::handleVrConnected(TrafficDescriptor **a1, uint64_t a2)
{
  v3 = BYTE1(a2) & 1 & a2;
  v4 = *(a1 + 5320);
  if (v4 == v3)
  {
    v5 = a1[5];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = asStringBool(v4);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I (not changed) vrConnected = %s", &v8, 0xCu);
    }
  }

  else
  {
    *(a1 + 5320) = BYTE1(a2) & 1 & a2;
    v6 = a1[5];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = asStringBool(v3);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I (changed) vrConnected = %s", &v8, 0xCu);
    }

    v7 = (*(*a1 + 140))(a1);
    DataServiceController::activateLlphs(a1, v7);
  }
}

void DataServiceController::callKitCallChanged_sync(void *a1, uint64_t a2)
{
  *buf = (*(*a1 + 1120))(a1);
  if (**sub_100007DEC((a1 + 620), buf) == 1)
  {
    v4 = *(a2 + 23);
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(a2 + 8);
    }

    if (v4)
    {
      *buf = (*(*a1 + 1120))(a1);
      if ((*(*sub_100007DEC((a1 + 620), buf) + 16) & 1) == 0)
      {
        sub_100009970((a1 + 647), a1[648]);
        a1[647] = a1 + 648;
        *(a1 + 324) = 0u;
        return;
      }

      v5 = *(a2 + 26);
      v6 = *(a2 + 24);
      v7 = a1[5];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v8 = a2;
        }

        else
        {
          v8 = *a2;
        }

        v9 = asStringBool(*(a2 + 25));
        v10 = asStringBool(*(a2 + 27));
        v11 = asStringBool(v6);
        v12 = asStringBool(v5);
        *buf = 136447234;
        *&buf[4] = v8;
        *&buf[12] = 2080;
        *&buf[14] = v9;
        *&buf[22] = 2080;
        v26 = v10;
        v27 = 2080;
        v28 = v11;
        v29 = 2080;
        v30 = v12;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I CallKit: Got VoIP Call Change event with bundleId %{public}s and active %s, video %s, callStart %s, callEnd %s", buf, 0x34u);
      }

      v13 = *(a2 + 25);
      *buf = a2;
      *(sub_100170224(a1 + 647, a2, &unk_101802C98, buf, &v24) + 56) = v13;
      if (v5)
      {
        sub_1000727F0(a1 + 647, a2);
      }

      v14 = (*(*a1 + 1120))(a1);
      if (((*(*a1 + 2272))(a1, v14, 0) & v6) == 1)
      {
        if ((*(*a1 + 2432))(a1, a2))
        {
          v15 = (*(*a1 + 1120))(a1);
          if (DataServiceController::sliceApp(a1, v15, a2))
          {
            v16 = a1[5];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I CallKit: Got VoIP Call Change event: adding the front policies", buf, 2u);
            }

            v17 = (*(*a1 + 1120))(a1);
            DataServiceController::addFrontPolicies(a1, v17, a2);
          }
        }
      }

      (*(*a1 + 2456))(a1, a2);
      if ((*(*a1 + 2432))(a1, a2))
      {
        v18 = (*(*a1 + 1120))(a1);
        if (DataServiceController::sliceApp(a1, v18, a2) & 1 | ((v5 & 1) == 0))
        {
          return;
        }
      }

      else if (!v5)
      {
        return;
      }

      sub_100005BA0((a1 + 644), a2, a2);
      memset(buf, 0, sizeof(buf));
      (*(*a1 + 2360))(buf, a1, a2);
      v19 = *&buf[8];
      if (!*&buf[8])
      {
        goto LABEL_32;
      }

      v20 = &buf[8];
      do
      {
        if (*(v19 + 32) >> 3 < 0x465uLL)
        {
          v21 = 1;
        }

        else
        {
          v20 = v19;
          v21 = 0;
        }

        v19 = *(v19 + 8 * v21);
      }

      while (v19);
      if (v20 == &buf[8] || *(v20 + 4) >= 0x2329uLL)
      {
LABEL_32:
        sub_10000501C(__p, "App DB update: CallKit: new VoIP App detected");
        DataServiceController::updateSlicingDefinitionsWithAppDB(a1, __p);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_10006DCAC(buf, *&buf[8]);
    }
  }
}

void sub_1004AF5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10006DCAC(&a16, a17);
  _Unwind_Resume(a1);
}

void DataServiceController::activateFacetime(DataServiceController *this)
{
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  sub_10000501C(__p, "com.apple.facetime");
  v2 = (*(*this + 1120))(this);
  if (DataServiceController::sliceApp(this, v2, __p))
  {
    v4[0] = 0;
    v4[1] = 0;
    v3 = v4;
    sub_100005BA0(&v3, __p, __p);
    DataServiceController::handleActiveAppsChanged_sync(this, &v3);
    sub_100009970(&v3, v4[0]);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1004AF6C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_100009970(&a9, a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void DataServiceController::handleNetworkSlicingSupportChanged_sync(void *a1, uint64_t a2)
{
  if (!(*(*a1 + 2288))(a1))
  {
    return;
  }

  v4 = a1[146];
  if (v4 == a1 + 147)
  {
    return;
  }

  v44 = 0;
  do
  {
    v5 = v4 + 4;
    v6 = sub_100007A6C(a2, v4 + 32);
    v7 = v4 + 7;
    if (a2 + 8 == v6 || (sub_10024F71C((v6 + 56), (v4 + 7)) & 1) == 0)
    {
      v8 = a1[5];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(v4 + 55);
        v10 = (v9 & 0x80u) != 0;
        if ((v9 & 0x80u) != 0)
        {
          v9 = v4[5];
        }

        if (v10)
        {
          v11 = v4[4];
        }

        else
        {
          v11 = (v4 + 4);
        }

        v12 = v9 == 0;
        v13 = "<invalid>";
        if (!v12)
        {
          v13 = v11;
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v13;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I slice persona featureState updated: %s", &buf, 0xCu);
      }

      v14 = a1[75];
      v15 = *v14;
      v16 = *(v14 + 8);
      if (*v14 != v16)
      {
        v17 = *(v4 + 55);
        if (v17 >= 0)
        {
          v18 = *(v4 + 55);
        }

        else
        {
          v18 = v4[5];
        }

        if (v17 < 0)
        {
          v5 = v4[4];
        }

        while (1)
        {
          v19 = *v15;
          v20 = *(*v15 + 47);
          v21 = v20;
          if ((v20 & 0x80u) != 0)
          {
            v20 = *(*v15 + 32);
          }

          if (v20 == v18)
          {
            v24 = *(v19 + 24);
            v22 = v19 + 24;
            v23 = v24;
            v25 = (v21 >= 0 ? v22 : v23);
            if (!memcmp(v25, v5, v18))
            {
              break;
            }
          }

          v15 += 2;
          if (v15 == v16)
          {
            goto LABEL_64;
          }
        }
      }

      if (v15 != v16)
      {
        v26 = *v15;
        v27 = v15[1];
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v26)
        {
          goto LABEL_62;
        }

        v28 = a1[14];
        *&buf = a1[13];
        *(&buf + 1) = v28;
        if (v28)
        {
          atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
        }

        isValidSimSlot = subscriber::isValidSimSlot();
        if (*(&buf + 1))
        {
          sub_100004A34(*(&buf + 1));
        }

        if ((isValidSimSlot & 1) == 0)
        {
          goto LABEL_62;
        }

        LODWORD(buf) = *(v26 + 52);
        v30 = sub_100007DEC((a1 + 620), &buf);
        v31 = *v30;
        if (*(*v30 + 344) == v4[9])
        {
          v32 = *(v31 + 328);
          v33 = (v31 + 336);
          if (v32 == v33)
          {
LABEL_62:
            if (v27)
            {
              sub_100004A34(v27);
            }

            goto LABEL_64;
          }

          v34 = *v7;
          while (v32[4] == v34[4] && *(v32 + 40) == *(v34 + 40) && *(v32 + 11) == *(v34 + 11))
          {
            v35 = v32[1];
            v36 = v32;
            if (v35)
            {
              do
              {
                v32 = v35;
                v35 = *v35;
              }

              while (v35);
            }

            else
            {
              do
              {
                v32 = v36[2];
                v12 = *v32 == v36;
                v36 = v32;
              }

              while (!v12);
            }

            v37 = v34[1];
            if (v37)
            {
              do
              {
                v38 = v37;
                v37 = *v37;
              }

              while (v37);
            }

            else
            {
              do
              {
                v38 = v34[2];
                v12 = *v38 == v34;
                v34 = v38;
              }

              while (!v12);
            }

            v34 = v38;
            if (v32 == v33)
            {
              goto LABEL_62;
            }
          }
        }

        LODWORD(buf) = *(v26 + 52);
        v39 = (*sub_100007DEC((a1 + 620), &buf) + 328);
        if (v39 != v7)
        {
          sub_10024F9C4(v39, v4[7], v4 + 8);
        }

        v40 = a1[5];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = subscriber::asString();
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v41;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I %s: slice persona featureState changed", &buf, 0xCu);
        }

        v44 = 1;
        goto LABEL_62;
      }
    }

LABEL_64:
    v42 = v4[1];
    if (v42)
    {
      do
      {
        v43 = v42;
        v42 = *v42;
      }

      while (v42);
    }

    else
    {
      do
      {
        v43 = v4[2];
        v12 = *v43 == v4;
        v4 = v43;
      }

      while (!v12);
    }

    v4 = v43;
  }

  while (v43 != a1 + 147);
  if (v44)
  {
    sub_10000501C(&buf, "feature state change");
    (*(*a1 + 2424))(a1, 3, &buf, 1);
    if (v46 < 0)
    {
      operator delete(buf);
    }
  }
}