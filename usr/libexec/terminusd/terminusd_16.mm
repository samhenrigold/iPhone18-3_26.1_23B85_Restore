void sub_10016AE40(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v4 = a3;
  v5 = objc_opt_self();
  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  if (_NRIsUUIDNonZero())
  {
    if (v4)
    {
      v7 = sub_100163B2C(v5, v21, 0);
      v8 = v7;
      if (v7)
      {
        v9 = *(v7 + 48);
        v10 = *(v7 + 24);
        v11 = [v8 description];
        if (v9)
        {
          sub_1000059A8(v10, 5003, v11, 0);

          [v8 setDatabaseFlags:v8[6] | 2];
          v14 = objc_opt_self();
          sub_1001629FC(v14, 0);
          if (qword_100229488 != -1)
          {
            dispatch_once(&qword_100229488, &stru_1001FD018);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229488 != -1)
            {
              dispatch_once(&qword_100229488, &stru_1001FD018);
            }

            _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d Enabled device %@", "", "+[NRDLocalDevice enableDeviceWithNRUUID:completionBlock:]", 3038, v8);
          }

          (*(v4 + 2))(v4, 0, 0);
          goto LABEL_15;
        }

        sub_1000059A8(v10, 5010, v11, @"enable");

        v12 = [[NSString alloc] initWithFormat:@"%@ is not registered", v8];
        (*(v4 + 2))(v4, -2014, v12);
      }

      else
      {
        v13 = [v21 UUIDString];
        sub_1000059A8(v21, 5009, v13, @"enable");

        v12 = [[NSString alloc] initWithFormat:@"Unknown NRUUID %@", v21];
        (*(v4 + 2))(v4, -2008, v12);
      }

LABEL_15:
      v15 = sub_100003490();
      dispatch_async(v15, &stru_1001FAE90);

      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v16 = qword_1002290B8;
      sub_1000BC670(v16);

      goto LABEL_18;
    }

    v19 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = sub_10015B480();
      _NRLogWithArgs(v8, 17, "%s called with null completionBlock");
      goto LABEL_18;
    }
  }

  else
  {
    v17 = sub_10015B480();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
      v8 = sub_10015B480();
      _NRLogWithArgs(v8, 17, "called with all-zero nrUUID");
LABEL_18:
    }
  }
}

void sub_10016B190(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = objc_opt_self();
  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  if (!v4)
  {
    v38 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_67;
    }

    v8 = sub_10015B480();
    _NRLogWithArgs(v8, 17, "%s called with null nrUUID", "+[NRDLocalDevice confirmKeysForClass:nrUUID:]");
    goto LABEL_66;
  }

  v7 = sub_100163B2C(v5, v4, 0);
  if (!v7)
  {
    v40 = sub_10015B480();
    v41 = _NRLogIsLevelEnabled();

    if (v41)
    {
      v42 = sub_10015B480();
      _NRLogWithArgs(v42, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice confirmKeysForClass:nrUUID:]", 2729);
    }

    v4 = _os_log_pack_size();
    v8 = &v45 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = __error();
    v44 = _os_log_pack_fill(v8, v4, *v43, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v44 = 136446210;
    *(v44 + 4) = "+[NRDLocalDevice confirmKeysForClass:nrUUID:]";
    sub_10015B480();
    _NRLogAbortWithPack();
LABEL_73:
    dispatch_once(&qword_100229488, &stru_1001FD018);
LABEL_16:
    if (_NRLogIsLevelEnabled())
    {
      if (v5[145] != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      v15 = qword_100229480;
      String = NRDataProtectionClassCreateString();
      _NRLogWithArgs(v15, 17, "Cannot confirm keys for %@", String);
    }

    goto LABEL_66;
  }

  v8 = v7;
  if (v3 == 1)
  {
    v12 = *(v7 + 6);
    if ((v12 & 0x4000) != 0)
    {
      goto LABEL_66;
    }

    v10 = v12 | 0x4000;
    goto LABEL_12;
  }

  if (v3 == 3)
  {
    v11 = *(v7 + 6);
    if ((v11 & 0x2000) != 0)
    {
      goto LABEL_66;
    }

    v10 = v11 | 0x2000;
LABEL_12:
    [v7 setDatabaseFlags:v10];
    v13 = *(v8 + 6);
    if ((v13 & 0x20) != 0)
    {
      LOBYTE(v17) = 1;
      if ((v13 & 0x1000) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = (v13 & 0x10) != 0 || *(v8 + 8) > 0x12u;
      v17 = (v13 >> 14) & 1 | v14;
      if ((v13 & 0x1000) != 0)
      {
LABEL_24:
        if ((((*(v8 + 6) & 0x2000) != 0) & v17) != 0)
        {
          [v8 setDatabaseFlags:v13 | 1];
          v18 = objc_opt_self();
          sub_1001629FC(v18, 0);
          v19 = [qword_100229470 objectForKeyedSubscript:v4];
          if (qword_100229488 != -1)
          {
            dispatch_once(&qword_100229488, &stru_1001FD018);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229488 != -1)
            {
              dispatch_once(&qword_100229488, &stru_1001FD018);
            }

            if (v13)
            {
              v20 = " (already registered)";
            }

            else
            {
              v20 = "";
            }

            v21 = qword_100229480;
            if ([v19 count])
            {
              v22 = " (with clients)";
            }

            else
            {
              v22 = "";
            }

            v23 = sub_100166548(v8);
            _NRLogWithArgs(v21, 0, "%s%.30s:%-4d Finished%s registration%s for %@", "", "+[NRDLocalDevice confirmKeysForClass:nrUUID:]", 2763, v20, v22, v23);
          }

          if (v13)
          {
            goto LABEL_47;
          }

          v24 = *(v8 + 3);
          v25 = [v8 description];
          sub_1000059A8(v24, 5007, v25, 0);

          v26 = v4;
          objc_opt_self();
          if (qword_100229440)
          {
            v27 = [qword_100229440 objectForKeyedSubscript:v26];

            if (!v27)
            {
LABEL_47:
              if (v19)
              {
                v47 = 0u;
                v48 = 0u;
                v46 = 0u;
                v45 = 0u;
                v31 = v19;
                v32 = [v31 countByEnumeratingWithState:&v45 objects:v49 count:16];
                if (v32)
                {
                  v33 = v32;
                  v34 = *v46;
                  do
                  {
                    for (i = 0; i != v33; i = i + 1)
                    {
                      if (*v46 != v34)
                      {
                        objc_enumerationMutation(v31);
                      }

                      (*(*(*(&v45 + 1) + 8 * i) + 16))(*(*(&v45 + 1) + 8 * i));
                    }

                    v33 = [v31 countByEnumeratingWithState:&v45 objects:v49 count:16];
                  }

                  while (v33);
                }

                [v31 removeAllObjects];
                [qword_100229470 setObject:0 forKeyedSubscript:v4];
                if (![qword_100229470 count])
                {
                  v36 = qword_100229470;
                  qword_100229470 = 0;
                }
              }

              if (qword_100229448)
              {
                [qword_100229448 setObject:0 forKeyedSubscript:v4];
              }

              if (qword_100229450)
              {
                [qword_100229450 setObject:0 forKeyedSubscript:v4];
              }

              if (qword_100229458)
              {
                [qword_100229458 setObject:0 forKeyedSubscript:v4];
              }

              objc_opt_self();
              if (qword_1002290C0 != -1)
              {
                dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
              }

              v37 = qword_1002290B8;
              sub_1000BC670(v37);

              goto LABEL_66;
            }

            *(v27 + 32) = nr_absolute_time();
            *(v27 + 16) = 1;
            [v27 submit];
            v28 = v26;
            objc_opt_self();
            if (qword_100229440)
            {
              [qword_100229440 setObject:0 forKeyedSubscript:v28];
              if (![qword_100229440 count])
              {
                v29 = qword_100229440;
                qword_100229440 = 0;
              }
            }
          }

          else
          {
            v27 = v26;
          }

          goto LABEL_47;
        }
      }
    }

    v30 = objc_opt_self();
    sub_1001629FC(v30, 0);
    goto LABEL_66;
  }

  if (v3 != 4)
  {
    v5 = &qword_100229000;
    if (qword_100229488 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_73;
  }

  v9 = *(v7 + 6);
  if ((v9 & 0x1000) == 0)
  {
    v10 = v9 | 0x1000;
    goto LABEL_12;
  }

LABEL_66:

LABEL_67:
}

void sub_10016B844(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v10 = sub_100003490();
  dispatch_assert_queue_V2(v10);

  if (v8)
  {
    v11 = sub_100163B2C(v9, v8, 0);
    if (v11)
    {
      v10 = v11;
      [v11 setDatabaseFlags:v11[6].isa & 0xFFFFFFFFFFFFFFFELL];
      [v10 setDatabaseFlags:v10[6].isa & 0xFFFFFFFFFFFFFFFDLL];
      v12 = objc_opt_self();
      sub_1001629FC(v12, 0);
      v9 = [qword_100229470 objectForKeyedSubscript:v8];
      v4 = &qword_100229000;
      if (qword_100229488 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v33 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v35 = sub_10015B480();
        _NRLogWithArgs(v35, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice reportRegistrationFailureCode:errorDescription:forNRUUID:]", 2805);
      }

      v7 = _os_log_pack_size();
      v8 = &v38 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v36 = __error();
      v37 = _os_log_pack_fill(v8, v7, *v36, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v37 = 136446210;
      *(v37 + 4) = "+[NRDLocalDevice reportRegistrationFailureCode:errorDescription:forNRUUID:]";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    dispatch_once(&qword_100229488, &stru_1001FD018);
LABEL_4:
    if (_NRLogIsLevelEnabled())
    {
      if (v4[145] != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      v18 = qword_100229480;
      v19 = sub_100166548(&v10->isa);
      _NRLogWithArgs(v18, 16, "%s%.30s:%-4d Registration failure [%lld] %@ for %@", "", "+[NRDLocalDevice reportRegistrationFailureCode:errorDescription:forNRUUID:]", 2812, a2, v7, v19);
    }

    sub_1001694E4(v10, 5008, @"[%lld] %@", v13, v14, v15, v16, v17, a2);
    v20 = v8;
    objc_opt_self();
    v21 = v20;
    if (qword_100229440)
    {
      v21 = [qword_100229440 objectForKeyedSubscript:v20];

      if (!v21)
      {
LABEL_15:
        if (v9)
        {
          v40 = 0u;
          v41 = 0u;
          v39 = 0u;
          v38 = 0u;
          v24 = v9;
          v25 = [v24 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v39;
            do
            {
              for (i = 0; i != v26; i = i + 1)
              {
                if (*v39 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                (*(*(*(&v38 + 1) + 8 * i) + 16))();
              }

              v26 = [v24 countByEnumeratingWithState:&v38 objects:v42 count:16];
            }

            while (v26);
          }

          [v24 removeAllObjects];
          [qword_100229470 setObject:0 forKeyedSubscript:v20];
          if (![qword_100229470 count])
          {
            v29 = qword_100229470;
            qword_100229470 = 0;
          }
        }

        if (qword_100229448)
        {
          [qword_100229448 setObject:0 forKeyedSubscript:v20];
        }

        if (qword_100229450)
        {
          [qword_100229450 setObject:0 forKeyedSubscript:v20];
        }

        if (qword_100229458)
        {
          [qword_100229458 setObject:0 forKeyedSubscript:v20];
        }

        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v30 = qword_1002290B8;
        sub_1000BC670(v30);

        goto LABEL_34;
      }

      *(v21 + 32) = nr_absolute_time();
      *(v21 + 16) = 0;
      [v21 submit];
      v22 = v20;
      objc_opt_self();
      if (qword_100229440)
      {
        [qword_100229440 setObject:0 forKeyedSubscript:v22];
        if (![qword_100229440 count])
        {
          v23 = qword_100229440;
          qword_100229440 = 0;
        }
      }
    }

    goto LABEL_15;
  }

  v31 = sub_10015B480();
  v32 = _NRLogIsLevelEnabled();

  if (!v32)
  {
    goto LABEL_35;
  }

  v10 = sub_10015B480();
  _NRLogWithArgs(v10, 17, "%s called with null nrUUID", "+[NRDLocalDevice reportRegistrationFailureCode:errorDescription:forNRUUID:]");
LABEL_34:

LABEL_35:
}

void sub_10016BD8C(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v4 = a3;
  objc_opt_self();
  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  if (!v22)
  {
    v15 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_36;
    }

    v7 = sub_10015B480();
    _NRLogWithArgs(v7, 17, "%s called with null nrUUID");
    goto LABEL_35;
  }

  if ((_NRIsUUIDNonZero() & 1) == 0)
  {
    v17 = sub_10015B480();
    v18 = _NRLogIsLevelEnabled();

    if (!v18)
    {
      goto LABEL_36;
    }

    v7 = sub_10015B480();
    _NRLogWithArgs(v7, 17, "called with all-zero nrUUID");
LABEL_35:

    goto LABEL_36;
  }

  if (v4)
  {
    v6 = sub_100163B2C(NRDLocalDevice, v22, 0);
    v7 = v6;
    if (v6)
    {
      v8 = *(v6 + 24);
      v9 = [v7 description];
      sub_1000059A8(v8, 5002, v9, 0);

      v10 = sub_100166438(NRDLocalDevice, v7);
      [qword_100229428 setObject:v10 forKeyedSubscript:v22];

      if (v7[7])
      {
        [qword_100229430 setObject:0 forKeyedSubscript:?];
      }
    }

    else
    {
      v21 = sub_100166438(NRDLocalDevice, 0);
      [qword_100229428 setObject:v21 forKeyedSubscript:v22];
    }

    sub_1000B76C8(v22, 0);
    sub_100164E90(v7);
    v11 = objc_opt_self();
    sub_1001629FC(v11, 0);
    if (v7)
    {
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d Unregistered device %@", "", "+[NRDLocalDevice unregisterDeviceWithNRUUID:completionBlock:]", 2872, v7);
      }

      (*(v4 + 2))(v4, 0, 0);
    }

    else
    {
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        _NRLogWithArgs(qword_100229480, 16, "%s%.30s:%-4d Did not unregister unknown NRUUID %@", "", "+[NRDLocalDevice unregisterDeviceWithNRUUID:completionBlock:]", 2875, v22);
      }

      v12 = [[NSString alloc] initWithFormat:@"Unknown NRUUID %@", v22];
      (*(v4 + 2))(v4, -2008, v12);
    }

    if (qword_100229448)
    {
      [qword_100229448 setObject:0 forKeyedSubscript:v22];
    }

    if (qword_100229450)
    {
      [qword_100229450 setObject:0 forKeyedSubscript:v22];
    }

    if (qword_100229458)
    {
      [qword_100229458 setObject:0 forKeyedSubscript:v22];
    }

    if (qword_100229478)
    {
      [qword_100229478 setObject:0 forKeyedSubscript:v22];
    }

    if (qword_100229470)
    {
      [qword_100229470 setObject:0 forKeyedSubscript:v22];
    }

    v13 = sub_100003490();
    dispatch_async(v13, &stru_1001FAE90);

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v14 = qword_1002290B8;
    sub_1000BC670(v14);

    goto LABEL_35;
  }

  v19 = sub_10015B480();
  v20 = _NRLogIsLevelEnabled();

  if (v20)
  {
    v7 = sub_10015B480();
    _NRLogWithArgs(v7, 17, "%s called with null completionBlock");
    goto LABEL_35;
  }

LABEL_36:
}

void sub_10016C20C(uint64_t a1, void *a2, void *a3)
{
  v23 = a2;
  v4 = a3;
  v5 = objc_opt_self();
  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  if (!v23)
  {
    v17 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_20;
    }

    v8 = sub_10015B480();
    _NRLogWithArgs(v8, 17, "%s called with null nrUUID");
    goto LABEL_19;
  }

  if ((_NRIsUUIDNonZero() & 1) == 0)
  {
    v19 = sub_10015B480();
    v20 = _NRLogIsLevelEnabled();

    if (!v20)
    {
      goto LABEL_20;
    }

    v8 = sub_10015B480();
    _NRLogWithArgs(v8, 17, "called with all-zero nrUUID");
LABEL_19:

    goto LABEL_20;
  }

  if (v4)
  {
    v7 = sub_100163B2C(v5, v23, 0);
    v8 = v7;
    if (v7)
    {
      v9 = *(v7 + 48);
      v10 = *(v7 + 24);
      v11 = [v8 description];
      if (v9)
      {
        sub_1000059A8(v10, 5004, v11, 0);

        [v8 setDatabaseFlags:v8[6] & 0xFFFFFFFFFFFFFFFDLL];
        v14 = objc_opt_self();
        sub_1001629FC(v14, 0);
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229488 != -1)
          {
            dispatch_once(&qword_100229488, &stru_1001FD018);
          }

          _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d Disabled device %@", "", "+[NRDLocalDevice disableDeviceWithNRUUID:completionBlock:]", 3066, v8);
        }

        (*(v4 + 2))(v4, 0, 0);
        goto LABEL_16;
      }

      sub_1000059A8(v10, 5010, v11, @"disable");

      v12 = [[NSString alloc] initWithFormat:@"%@ is not registered", v8];
      (*(v4 + 2))(v4, -2014, v12);
    }

    else
    {
      v13 = [v23 UUIDString];
      sub_1000059A8(v23, 5009, v13, @"disable");

      v12 = [[NSString alloc] initWithFormat:@"Unknown NRUUID %@", v23];
      (*(v4 + 2))(v4, -2008, v12);
    }

LABEL_16:
    v15 = sub_100003490();
    dispatch_async(v15, &stru_1001FAE90);

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v16 = qword_1002290B8;
    sub_1000BC670(v16);

    goto LABEL_19;
  }

  v21 = sub_10015B480();
  v22 = _NRLogIsLevelEnabled();

  if (v22)
  {
    v8 = sub_10015B480();
    _NRLogWithArgs(v8, 17, "%s called with null completionBlock");
    goto LABEL_19;
  }

LABEL_20:
}

uint64_t sub_10016C59C(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  sub_1001619D8(v1);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = qword_100229428;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [qword_100229428 objectForKeyedSubscript:{*(*(&v10 + 1) + 8 * i), v10}];
        if (v7)
        {
          v8 = v7[6];

          if ((v8 & 2) != 0)
          {
            v4 = 1;
            goto LABEL_12;
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

id sub_10016C6D8(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  if (qword_100229238 != -1)
  {
    dispatch_once(&qword_100229238, &stru_1001FC340);
  }

  if (byte_100229230)
  {
    return &__NSArray0__struct;
  }

  sub_1001619D8(v1);
  v3 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = qword_100229428;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [qword_100229428 objectForKeyedSubscript:{v9, v14}];
        if (v10)
        {
          if (*(v10 + 48))
          {
            if (*(v10 + 32))
            {
              if ((*(v10 + 8) & 1) == 0)
              {
                v11 = v10;
                v12 = sub_100169428(v10);
                v10 = v11;
                if (v12)
                {
                  if (*(v11 + 9) == 2 && (*(v11 + 49) & 8) == 0)
                  {
                    [v3 addObject:v9];
                    v10 = v11;
                  }
                }
              }
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

id sub_10016C8BC(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  sub_1001619D8(v1);
  v3 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = qword_100229428;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [qword_100229428 objectForKeyedSubscript:{v9, v13}];
        v11 = v10;
        if (v10 && (*(v10 + 48) & 2) != 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

id sub_10016CA28(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  sub_1001619D8(v1);
  v3 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = qword_100229428;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [qword_100229428 objectForKeyedSubscript:{v9, v13}];
        if (v10 && (*(v10 + 48) & 2) != 0 && *(v10 + 32))
        {
          v11 = v10;
          [v3 addObject:v9];
          v10 = v11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

id sub_10016CBA0(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  sub_1001619D8(v1);
  v3 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = qword_100229428;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [qword_100229428 objectForKeyedSubscript:{v9, v16}];
        v11 = v10;
        if (v10)
        {
          v12 = *(v10 + 48);
          if ((v12 & 2) != 0)
          {
            if ((v12 & 0x20) != 0)
            {
              LOBYTE(v14) = 1;
              if ((v12 & 0x1000) != 0)
              {
LABEL_18:
                if ((((*(v10 + 48) & 0x2000) != 0) & v14) != 0)
                {
                  goto LABEL_6;
                }
              }
            }

            else
            {
              v13 = (v12 & 0x10) != 0 || *(v10 + 16) > 0x12u;
              v14 = (v12 >> 14) & 1 | v13;
              if ((v12 & 0x1000) != 0)
              {
                goto LABEL_18;
              }
            }

            if (!sub_100169428(v10))
            {
              goto LABEL_5;
            }

            if (qword_100229238 != -1)
            {
              dispatch_once(&qword_100229238, &stru_1001FC340);
            }

            if (byte_100229230 == 1)
            {
LABEL_5:
              [v3 addObject:v9];
            }
          }
        }

LABEL_6:
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v3;
}

id sub_10016CD90(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  sub_1001619D8(v1);
  v3 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = qword_100229428;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [qword_100229428 objectForKeyedSubscript:{v9, v16}];
        if (v10)
        {
          v11 = *(v10 + 48);
          if ((v11 & 2) != 0)
          {
            if ((v11 & 0x20) != 0)
            {
              LOBYTE(v13) = 1;
              if ((v11 & 0x1000) == 0)
              {
                goto LABEL_5;
              }

LABEL_17:
              if ((((*(v10 + 48) & 0x2000) != 0) & v13) == 1)
              {
                v14 = v10;
                [v3 addObject:v9];
                v10 = v14;
              }

              goto LABEL_5;
            }

            v12 = (v11 & 0x10) != 0 || *(v10 + 16) > 0x12u;
            v13 = (v11 >> 14) & 1 | v12;
            if ((v11 & 0x1000) != 0)
            {
              goto LABEL_17;
            }
          }
        }

LABEL_5:
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v3;
}

id sub_10016CF44(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  sub_1001619D8(v1);
  v3 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = qword_100229428;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [qword_100229428 objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * v8), v12}];
        if (v9 && (*(v9 + 48) & 2) != 0 && *(v9 + 32))
        {
          v10 = v9;
          [v3 addObject:?];
          v9 = v10;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

uint64_t sub_10016D0AC(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  sub_1001619D8(v1);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = qword_100229428;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
LABEL_4:
    v6 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = [qword_100229428 objectForKeyedSubscript:{*(*(&v10 + 1) + 8 * v6), v10}];
      if (v7 && (*(v7 + 48) & 2) != 0)
      {
        v8 = *(v7 + 32);

        if (v8)
        {
          v4 = 1;
          break;
        }
      }

      else
      {
      }

      if (v4 == ++v6)
      {
        v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (!v4)
        {
          break;
        }

        goto LABEL_4;
      }
    }
  }

  return v4;
}

id sub_10016D1F8(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  sub_1001619D8(v1);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = qword_100229428;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_15;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v16;
LABEL_4:
  v8 = 0;
  while (1)
  {
    if (*v16 != v7)
    {
      objc_enumerationMutation(v3);
    }

    v9 = *(*(&v15 + 1) + 8 * v8);
    v10 = [qword_100229428 objectForKeyedSubscript:{v9, v15}];
    if (!v10 || (v10[48] & 2) == 0)
    {
      goto LABEL_5;
    }

    if (v10[8] != 1)
    {
      break;
    }

    if (!v6)
    {
      v11 = v10;
      v6 = v9;
      v10 = v11;
    }

LABEL_5:

    if (v5 == ++v8)
    {
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (!v5)
      {
        goto LABEL_15;
      }

      goto LABEL_4;
    }
  }

  v12 = v10;
  v13 = v9;

  v6 = v13;
LABEL_15:

  return v6;
}

char *sub_10016D388(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  if (v2)
  {
    v4 = sub_100163B2C(v3, v2, 0);
    v5 = sub_100164A44(v4);
  }

  else
  {
    v7 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      v5 = 0;
      goto LABEL_4;
    }

    v4 = sub_10015B480();
    _NRLogWithArgs(v4, 17, "%s called with null nrUUID", "+[NRDLocalDevice copyDeviceIdentityPayloadForNRUUID:]");
    v5 = 0;
  }

LABEL_4:
  return v5;
}

id sub_10016D440(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    v3 = v2[2];
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_10015E4BC(v3);
  if (v4)
  {
    if (v2)
    {
      v5 = sub_10015E4BC(v2[4]);
      if (v5)
      {
LABEL_6:
        v6 = v5;
        v7 = [[NSMutableData alloc] initWithCapacity:64];
        [v7 appendData:v4];
        [v7 appendData:v6];
        goto LABEL_7;
      }
    }

    else
    {
      v5 = sub_10015E4BC(0);
      if (v5)
      {
        goto LABEL_6;
      }
    }

    v11 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v13 = sub_10015B480();
      _NRLogWithArgs(v13, 16, "%s%.30s:%-4d Failed to get public X25519 key data", "", "+[NRDLocalDevice copyLegacyPublicKeyPayloadForKeychainItems:]", 3437);
    }

    v6 = 0;
    v7 = 0;
    goto LABEL_7;
  }

  v9 = sub_10015B480();
  v10 = _NRLogIsLevelEnabled();

  if (!v10)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v6 = sub_10015B480();
  _NRLogWithArgs(v6, 16, "%s%.30s:%-4d Failed to get public Ed25519 key data", "", "+[NRDLocalDevice copyLegacyPublicKeyPayloadForKeychainItems:]", 3431);
  v7 = 0;
LABEL_7:

LABEL_8:
  return v7;
}

id sub_10016D5B8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    v3 = v2[2];
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_10015E4BC(v3);
  if (v4)
  {
    if (v2)
    {
      v5 = sub_10015E4BC(v2[4]);
      if (v5)
      {
LABEL_6:
        v6 = v5;
        v7 = [[NSMutableData alloc] initWithCapacity:70];
        NRTLVAddData();
        NRTLVAddData();
        goto LABEL_7;
      }
    }

    else
    {
      v5 = sub_10015E4BC(0);
      if (v5)
      {
        goto LABEL_6;
      }
    }

    v11 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v13 = sub_10015B480();
      _NRLogWithArgs(v13, 16, "%s%.30s:%-4d Failed to get public X25519 key data", "", "+[NRDLocalDevice copyModernPublicKeyPayloadForKeychainItems:]", 3457);
    }

    v6 = 0;
    v7 = 0;
    goto LABEL_7;
  }

  v9 = sub_10015B480();
  v10 = _NRLogIsLevelEnabled();

  if (!v10)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v6 = sub_10015B480();
  _NRLogWithArgs(v6, 16, "%s%.30s:%-4d Failed to get public Ed25519 key data", "", "+[NRDLocalDevice copyModernPublicKeyPayloadForKeychainItems:]", 3451);
  v7 = 0;
LABEL_7:

LABEL_8:
  return v7;
}

void sub_10016D738(uint64_t a1, void *a2, int a3, int a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = objc_opt_self();
  v11 = sub_100003490();
  dispatch_assert_queue_V2(v11);

  if (v8)
  {
    if (!v9)
    {
      v43 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_52;
      }

      v13 = sub_10015B480();
      _NRLogWithArgs(v13, 17, "%s called with null completionBlock");
      goto LABEL_51;
    }

    v12 = sub_100163B2C(v10, v8, 0);
    if (!v12)
    {
      v45 = sub_10015B480();
      v46 = _NRLogIsLevelEnabled();

      if (v46)
      {
        v47 = sub_10015B480();
        _NRLogWithArgs(v47, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice queryPairingKeysForNRUUID:minDataProtectionClass:modernFormat:completionBlock:]", 3477);
      }

      v48 = _os_log_pack_size();
      v49 = __error();
      v50 = _os_log_pack_fill(v51 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), v48, *v49, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v50 = 136446210;
      *(v50 + 4) = "+[NRDLocalDevice queryPairingKeysForNRUUID:minDataProtectionClass:modernFormat:completionBlock:]";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    v13 = v12;
    sub_10016586C(v12);
    v14 = v13[9];
    v15 = v14;
    if (!v14)
    {
      goto LABEL_15;
    }

    v16 = v14[2];
    if (!v16)
    {
      goto LABEL_15;
    }

    v17 = v13[9];
    if (v17)
    {
      v18 = v17[4];
    }

    else
    {
      v18 = 0;
    }

    if (!v18)
    {
      goto LABEL_16;
    }

    v19 = v13[9];
    if (a4)
    {
      v20 = sub_10016D5B8(v10, v19);
      if (!v20)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v20 = sub_10016D440(v10, v19);
      if (!v20)
      {
LABEL_13:
        v21 = _NRCopyLogObjectForNRUUID();
        v22 = _NRLogIsLevelEnabled();

        if (!v22)
        {
LABEL_16:
          v20 = 0;
          goto LABEL_17;
        }

        v15 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v15, 16, "%s%.30s:%-4d Failed to create ClassD public key payload", "", "+[NRDLocalDevice queryPairingKeysForNRUUID:minDataProtectionClass:modernFormat:completionBlock:]", 3489);
LABEL_15:

        goto LABEL_16;
      }
    }

LABEL_17:
    v23 = v13[10];
    v24 = v23;
    if (!v23)
    {
      goto LABEL_28;
    }

    v25 = v23[2];
    if (!v25)
    {
      goto LABEL_28;
    }

    v26 = v13[10];
    if (v26)
    {
      v27 = v26[4];
    }

    else
    {
      v27 = 0;
    }

    if (!v27)
    {
      goto LABEL_29;
    }

    v28 = v13[10];
    if (a4)
    {
      v29 = sub_10016D5B8(v10, v28);
      if (!v29)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v29 = sub_10016D440(v10, v28);
      if (!v29)
      {
LABEL_26:
        v30 = _NRCopyLogObjectForNRUUID();
        v31 = _NRLogIsLevelEnabled();

        if (!v31)
        {
LABEL_29:
          v29 = 0;
          goto LABEL_30;
        }

        v24 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v24, 16, "%s%.30s:%-4d Failed to create ClassC public key payload", "", "+[NRDLocalDevice queryPairingKeysForNRUUID:minDataProtectionClass:modernFormat:completionBlock:]", 3502);
LABEL_28:

        goto LABEL_29;
      }
    }

LABEL_30:
    v32 = v13[11];
    v33 = v32;
    if (v32)
    {
      v34 = v32[2];
      if (v34)
      {
        v35 = v13[11];
        if (v35)
        {
          v36 = v35[4];
        }

        else
        {
          v36 = 0;
        }

        if (!v36)
        {
          goto LABEL_45;
        }

        v37 = v13[11];
        if (a4)
        {
          v38 = sub_10016D5B8(v10, v37);
          if (v38)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v38 = sub_10016D440(v10, v37);
          if (v38)
          {
LABEL_37:
            if (a3 == 1)
            {
LABEL_38:
              if (!v29 || !v38)
              {
                v61[0] = _NSConcreteStackBlock;
                v61[1] = 3221225472;
                v61[2] = sub_10016DDA4;
                v61[3] = &unk_1001FCEE0;
                v62 = v13;
                v68 = v10;
                v63 = v8;
                v69 = 1;
                v70 = a4;
                v67 = v9;
                v64 = v20;
                v65 = v29;
                v66 = v38;
                sub_100166050(v62, v61);

LABEL_50:
                goto LABEL_51;
              }

              goto LABEL_49;
            }

LABEL_46:
            if (a3 == 3 && !v29)
            {
              v51[0] = _NSConcreteStackBlock;
              v51[1] = 3221225472;
              v51[2] = sub_10016DF30;
              v51[3] = &unk_1001FCEE0;
              v52 = v13;
              v58 = v10;
              v53 = v8;
              v59 = 3;
              v60 = a4;
              v57 = v9;
              v54 = v20;
              v55 = 0;
              v56 = v38;
              sub_100165C8C(v52, v51);

              goto LABEL_50;
            }

LABEL_49:
            (*(v9 + 2))(v9, v20, v29, v38);
            goto LABEL_50;
          }
        }

        v39 = _NRCopyLogObjectForNRUUID();
        v40 = _NRLogIsLevelEnabled();

        if (!v40)
        {
LABEL_45:
          v38 = 0;
          if (a3 == 1)
          {
            goto LABEL_38;
          }

          goto LABEL_46;
        }

        v33 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v33, 16, "%s%.30s:%-4d Failed to create ClassA public key payload", "", "+[NRDLocalDevice queryPairingKeysForNRUUID:minDataProtectionClass:modernFormat:completionBlock:]", 3515);
      }
    }

    goto LABEL_45;
  }

  v41 = sub_10015B480();
  v42 = _NRLogIsLevelEnabled();

  if (!v42)
  {
    goto LABEL_52;
  }

  v13 = sub_10015B480();
  _NRLogWithArgs(v13, 17, "%s called with null nrUUID");
LABEL_51:

LABEL_52:
}

void sub_10016DDA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    goto LABEL_14;
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    v5 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v4 = *(v3 + 88);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = v4[2];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 88);
    if (v9)
    {
      v10 = v9[4];
      goto LABEL_8;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
LABEL_8:

  if (v10)
  {
    v11 = *(a1 + 40);
    v12 = *(a1 + 88);
    v13 = *(a1 + 89);
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);

    sub_10016D738(v14, v11, v12, v13, v15);
    return;
  }

LABEL_14:
  if (qword_100229488 != -1)
  {
    dispatch_once(&qword_100229488, &stru_1001FD018);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    _NRLogWithArgs(qword_100229480, 17, "Cannot query pairing keys due to ClassA failure %@", *(a1 + 40));
  }

  sub_10013C2A8(@"NRDLocalDevice", @"PairingKeys", @"InvalidClassAKeys", 0, 0, v16, v17, v18, v20);
  v19 = *(*(a1 + 72) + 16);

  v19();
}

void sub_10016DF30(uint64_t a1, int a2)
{
  if (!a2)
  {
    goto LABEL_14;
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    v5 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v4 = *(v3 + 80);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = v4[2];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 80);
    if (v9)
    {
      v10 = v9[4];
      goto LABEL_8;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
LABEL_8:

  if (v10)
  {
    v11 = *(a1 + 40);
    v12 = *(a1 + 88);
    v13 = *(a1 + 89);
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);

    sub_10016D738(v14, v11, v12, v13, v15);
    return;
  }

LABEL_14:
  if (qword_100229488 != -1)
  {
    dispatch_once(&qword_100229488, &stru_1001FD018);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    _NRLogWithArgs(qword_100229480, 17, "Cannot query pairing keys due to ClassC failure %@", *(a1 + 40));
  }

  sub_10013C2A8(@"NRDLocalDevice", @"PairingKeys", @"InvalidClassCKeys", 0, 0, v16, v17, v18, v20);
  v19 = *(*(a1 + 72) + 16);

  v19();
}

void sub_10016E0BC(uint64_t a1, void *a2, int a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = objc_opt_self();
  v9 = sub_100003490();
  dispatch_assert_queue_V2(v9);

  if (!v6)
  {
    v10 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_4;
    }

    v12 = sub_10015B480();
    _NRLogWithArgs(v12, 17, "%s called with null nrUUID");
LABEL_9:

    goto LABEL_4;
  }

  if (!v7)
  {
    v13 = sub_10015B480();
    v14 = _NRLogIsLevelEnabled();

    if (!v14)
    {
      goto LABEL_4;
    }

    v12 = sub_10015B480();
    _NRLogWithArgs(v12, 17, "%s called with null completionBlock");
    goto LABEL_9;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10016E244;
  v15[3] = &unk_1001FCF30;
  v18 = v8;
  v16 = v6;
  v19 = a3;
  v17 = v7;
  sub_10016D738(v8, v16, a3, 0, v15);

LABEL_4:
}

void sub_10016E244(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = sub_100163B2C(*(a1 + 48), *(a1 + 32), 0);
  if (v11)
  {
    v12 = v11;
    v13 = *(v11 + 32);
    if (v13)
    {
      v4 = v13;
      objc_opt_self();
      if (qword_100229170 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }

    v28 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    v8 = "+[NRDLocalDevice queryPairingFromIDSKeysForNRUUID:minDataProtectionClass:completionBlock:]_block_invoke";
    if (IsLevelEnabled)
    {
      v30 = sub_10015B480();
      _NRLogWithArgs(v30, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (bluetoothUUID) != ((void*)0)", "", "+[NRDLocalDevice queryPairingFromIDSKeysForNRUUID:minDataProtectionClass:completionBlock:]_block_invoke", 3571);
    }

    v12 = _os_log_pack_size();
    v31 = &v35[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = __error();
    v33 = _os_log_pack_fill(v31, v12, *v32, &_mh_execute_header, "%{public}s Assertion Failed: (bluetoothUUID) != ((void*)0)");
    *v33 = 136446210;
    *(v33 + 4) = "+[NRDLocalDevice queryPairingFromIDSKeysForNRUUID:minDataProtectionClass:completionBlock:]_block_invoke";
  }

  else
  {
    v22 = sub_10015B480();
    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
      v24 = sub_10015B480();
      _NRLogWithArgs(v24, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice queryPairingFromIDSKeysForNRUUID:minDataProtectionClass:completionBlock:]_block_invoke", 3569);
    }

    v12 = _os_log_pack_size();
    v25 = &v35[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = __error();
    v27 = _os_log_pack_fill(v25, v12, *v26, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v27 = 136446210;
    *(v27 + 4) = "+[NRDLocalDevice queryPairingFromIDSKeysForNRUUID:minDataProtectionClass:completionBlock:]_block_invoke";
  }

  sub_10015B480();
  _NRLogAbortWithPack();
LABEL_15:
  dispatch_once(&qword_100229170, &stru_1001FBC60);
LABEL_4:
  v14 = qword_100229168;
  v15 = *(a1 + 56);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v36 = sub_10016E680;
  v37 = &unk_1001FCF08;
  v39 = v15;
  v38 = *(a1 + 40);
  v16 = v4;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = v35;
  if (v14)
  {
    dispatch_assert_queue_V2(v14[2]);
    if (v17)
    {
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100117C3C;
      v40[3] = &unk_1001FBD00;
      v40[4] = v14;
      v46 = v15;
      v41 = v17;
      v21 = v16;
      v42 = v21;
      v43 = v18;
      v44 = v19;
      v45 = v20;
      sub_1001177A8(v14, v21, v15, v40);
    }

    else
    {
      v36(v20, 0, 0, 0, 0, 0);
    }
  }
}

void sub_10016E680(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v26 = a4;
  v11 = a5;
  v12 = a6;
  v13 = sub_100003490();
  dispatch_assert_queue_V2(v13);

  if (!a2)
  {
    v15 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_9;
    }

    v17 = sub_10015B480();
    _NRLogWithArgs(v17, 17, "%s called with null remotePublicIDSClassDSigningKey");
    goto LABEL_22;
  }

  if (!a3)
  {
    v18 = sub_10015B480();
    v19 = _NRLogIsLevelEnabled();

    if (!v19)
    {
      goto LABEL_9;
    }

    v17 = sub_10015B480();
    _NRLogWithArgs(v17, 17, "%s called with null localPrivateIDSClassDSigningKey");
    goto LABEL_22;
  }

  if (!v26)
  {
    v20 = sub_10015B480();
    v21 = _NRLogIsLevelEnabled();

    if (!v21)
    {
      goto LABEL_9;
    }

    v17 = sub_10015B480();
    _NRLogWithArgs(v17, 17, "%s called with null localPublicClassDKeysEncryptedWithIDS");
    goto LABEL_22;
  }

  v14 = *(a1 + 40);
  if ((v14 | 2) != 3)
  {
LABEL_8:
    (*(*(a1 + 32) + 16))();
    goto LABEL_9;
  }

  if (!v11)
  {
    v22 = sub_10015B480();
    v23 = _NRLogIsLevelEnabled();

    if (!v23)
    {
      goto LABEL_9;
    }

    v17 = sub_10015B480();
    _NRLogWithArgs(v17, 17, "%s called with null localPublicClassCKeysEncryptedWithIDS");
    goto LABEL_22;
  }

  if (v12 || v14 != 1)
  {
    goto LABEL_8;
  }

  v24 = sub_10015B480();
  v25 = _NRLogIsLevelEnabled();

  if (v25)
  {
    v17 = sub_10015B480();
    _NRLogWithArgs(v17, 17, "%s called with null localPublicClassAKeysEncryptedWithIDS");
LABEL_22:
  }

LABEL_9:
}

void sub_10016E894(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v10 = sub_100003490();
  dispatch_assert_queue_V2(v10);

  if ([v31 length] == 48)
  {
    if (v7)
    {
      if (v8)
      {
        v11 = sub_100163B2C(v9, v7, 0);
        if (v11)
        {
          v10 = v11;
          v4 = sub_1001617A4([NRDDeviceIdentity alloc], v31);
          isa = v10[8].isa;
          if (!isa)
          {
            [v10 setRemoteIdentity:v4];
            v13 = objc_opt_self();
            if (sub_1001629FC(v13, 0))
            {
              v14 = v10[3].isa;
              v15 = [v10 description];
              sub_1000059A8(v14, 5006, v15, @"Identity");
            }

            else
            {
              [v10 setRemoteIdentity:0];
            }

LABEL_8:
            (*(v8 + 2))(v8, v10);

LABEL_9:
            goto LABEL_10;
          }
        }

        else
        {
          v23 = sub_10015B480();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v25 = sub_10015B480();
            _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice ingestRemoteDeviceIdentity:nrUUID:deviceCompletionBlock:]", 3614);
          }

          v7 = _os_log_pack_size();
          v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
          v26 = __error();
          v27 = _os_log_pack_fill(v8, v7, *v26, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
          *v27 = 136446210;
          *(v27 + 4) = "+[NRDLocalDevice ingestRemoteDeviceIdentity:nrUUID:deviceCompletionBlock:]";
          sub_10015B480();
          isa = _NRLogAbortWithPack();
        }

        if (([isa isEqual:{v4, v31}] & 1) == 0)
        {
          v28 = sub_10015B480();
          v29 = _NRLogIsLevelEnabled();

          if (v29)
          {
            v30 = sub_10015B480();
            _NRLogWithArgs(v30, 17, "Ingested remote device identity doesn't match existing one!");
          }
        }

        goto LABEL_8;
      }

      v21 = sub_10015B480();
      v22 = _NRLogIsLevelEnabled();

      if (v22)
      {
        v10 = sub_10015B480();
        _NRLogWithArgs(v10, 17, "%s called with null deviceCompletionBlock");
        goto LABEL_9;
      }
    }

    else
    {
      v19 = sub_10015B480();
      v20 = _NRLogIsLevelEnabled();

      if (v20)
      {
        v10 = sub_10015B480();
        _NRLogWithArgs(v10, 17, "%s called with null nrUUID");
        goto LABEL_9;
      }
    }
  }

  else
  {
    v17 = sub_10015B480();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
      v10 = sub_10015B480();
      _NRLogWithArgs(v10, 17, "%s called with null remoteDeviceIdentityData.length == sizeof(uuid_t) + sizeof(ccec25519pubkey)");
      goto LABEL_9;
    }
  }

LABEL_10:

  v16 = v31;
}

void sub_10016EBF4(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v4 = a3;
  objc_opt_self();
  if ([v16 length] == 64)
  {
    if (v4)
    {
      v5 = [v16 subdataWithRange:{0, 32}];
      v6 = sub_10015DF34([NRDLDKeychainItemSecKey alloc], v5);
      v7 = *(v4 + 1);
      *(v4 + 1) = v6;

      v8 = [v16 subdataWithRange:{32, 32}];
      v9 = *(v4 + 4);
      v10 = sub_100160954(v9, v8);
      v11 = *(v4 + 3);
      *(v4 + 3) = v10;

LABEL_4:
      goto LABEL_5;
    }

    v14 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = sub_10015B480();
      _NRLogWithArgs(v5, 17, "%s called with null keychainItems");
      goto LABEL_4;
    }
  }

  else
  {
    v12 = sub_10015B480();
    v13 = _NRLogIsLevelEnabled();

    if (v13)
    {
      v5 = sub_10015B480();
      _NRLogWithArgs(v5, 17, "%s called with null remoteKeyPayload.length == sizeof(ccec25519pubkey) + sizeof(ccec25519pubkey)");
      goto LABEL_4;
    }
  }

LABEL_5:
}

void sub_10016ED68(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (!v4)
  {
    v12 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_9;
    }

    v14 = sub_10015B480();
    _NRLogWithArgs(v14, 17, "%s called with null remoteKeyPayload");
LABEL_14:

    goto LABEL_9;
  }

  if (!v5)
  {
    v15 = sub_10015B480();
    v16 = _NRLogIsLevelEnabled();

    if (!v16)
    {
      goto LABEL_9;
    }

    v14 = sub_10015B480();
    _NRLogWithArgs(v14, 17, "%s called with null keychainItems");
    goto LABEL_14;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10016F068;
  v31 = sub_10016F078;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10016F068;
  v25 = sub_10016F078;
  v26 = 0;
  if (NRTLVParse())
  {
    if (v28[5])
    {
      if (v22[5])
      {
        v6 = [NRDLDKeychainItemSecKey alloc];
        v7 = sub_10015DF34(v6, v28[5]);
        v8 = *(v5 + 1);
        *(v5 + 1) = v7;

        v9 = *(v5 + 4);
        v10 = sub_100160954(v9, v22[5]);
        v11 = *(v5 + 3);
        *(v5 + 3) = v10;
      }

      else
      {
        v19 = sub_10015B480();
        v20 = _NRLogIsLevelEnabled();

        if (!v20)
        {
          goto LABEL_8;
        }

        v9 = sub_10015B480();
        _NRLogWithArgs(v9, 16, "%s%.30s:%-4d Missing X25519 public key", "", "+[NRDLocalDevice ingestModernRemoteKeyPayload:forKeychainItems:]", 3696);
      }
    }

    else
    {
      v17 = sub_10015B480();
      v18 = _NRLogIsLevelEnabled();

      if (!v18)
      {
        goto LABEL_8;
      }

      v9 = sub_10015B480();
      _NRLogWithArgs(v9, 16, "%s%.30s:%-4d Missing Ed25519 public key", "", "+[NRDLocalDevice ingestModernRemoteKeyPayload:forKeychainItems:]", 3693);
    }
  }

LABEL_8:
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
LABEL_9:
}

void sub_10016F044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10016F068(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10016F080(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a2 + 1);
  v5 = __rev16(v4);
  v6 = *a2;
  if (v6 == 2)
  {
    if (v4 == 0x2000)
    {
      v7 = [[NSData alloc] initWithBytes:a2 + 3 length:32];
      v8 = *(a1 + 40);
      goto LABEL_7;
    }

    v15 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v14 = sub_10015B480();
      _NRLogWithArgs(v14, 16, "%s%.30s:%-4d Invalid TLV length %u for X25519 public key");
      goto LABEL_19;
    }
  }

  else
  {
    if (v6 != 1)
    {
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        _NRLogWithArgs(qword_100229480, 16, "%s%.30s:%-4d Unexpected TLV type %u with length %u", "", "+[NRDLocalDevice ingestModernRemoteKeyPayload:forKeychainItems:]_block_invoke", 3681, *a2, v5);
      }

      return 1;
    }

    if (v4 == 0x2000)
    {
      v7 = [[NSData alloc] initWithBytes:a2 + 3 length:32];
      v8 = *(a1 + 32);
LABEL_7:
      v9 = *(v8 + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v7;

      return 1;
    }

    v12 = sub_10015B480();
    v13 = _NRLogIsLevelEnabled();

    if (v13)
    {
      v14 = sub_10015B480();
      _NRLogWithArgs(v14, 16, "%s%.30s:%-4d Invalid TLV length %u for Ed25519 public key");
LABEL_19:

      return 0;
    }
  }

  return 0;
}

void sub_10016F27C(uint64_t a1, void *a2, int a3, void *a4, void *a5)
{
  v28 = a2;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_self();
  v11 = sub_100003490();
  dispatch_assert_queue_V2(v11);

  if (v8)
  {
    if (v9)
    {
      v12 = sub_100163B2C(v10, v8, 0);
      if (!v12)
      {
        v22 = sub_10015B480();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v24 = sub_10015B480();
          _NRLogWithArgs(v24, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice ingestRemoteClassDKeys:modernFormat:nrUUID:deviceCompletionBlock:]", 3717);
        }

        v25 = _os_log_pack_size();
        v26 = __error();
        v27 = _os_log_pack_fill(&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25, *v26, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
        *v27 = 136446210;
        *(v27 + 4) = "+[NRDLocalDevice ingestRemoteClassDKeys:modernFormat:nrUUID:deviceCompletionBlock:]";
        sub_10015B480();
        _NRLogAbortWithPack();
      }

      v13 = v12;
      sub_1001656BC(v12);
      v14 = *(v13 + 72);
      if (a3)
      {
        sub_10016ED68(v10, v28, v14);
      }

      else
      {
        sub_10016EBF4(v10, v28, v14);
      }

      v15 = *(v13 + 24);
      v16 = [v13 description];
      sub_1000059A8(v15, 5006, v16, @"ClassD");

      v17 = objc_opt_self();
      sub_1001629FC(v17, 0);
      v9[2](v9, v13);
      goto LABEL_8;
    }

    v20 = sub_10015B480();
    v21 = _NRLogIsLevelEnabled();

    if (v21)
    {
      v13 = sub_10015B480();
      _NRLogWithArgs(v13, 17, "%s called with null deviceCompletionBlock");
      goto LABEL_8;
    }
  }

  else
  {
    v18 = sub_10015B480();
    v19 = _NRLogIsLevelEnabled();

    if (v19)
    {
      v13 = sub_10015B480();
      _NRLogWithArgs(v13, 17, "%s called with null nrUUID");
LABEL_8:
    }
  }
}

void sub_10016F524(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_self();
  v12 = sub_100003490();
  dispatch_assert_queue_V2(v12);

  if (v9)
  {
    if (v10)
    {
      v13 = sub_100163B2C(v11, v9, 0);
      if (!v13)
      {
        v20 = sub_10015B480();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v22 = sub_10015B480();
          _NRLogWithArgs(v22, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice ingestRemoteClassCKeys:modernFormat:nrUUID:deviceCompletionBlock:]", 3746);
        }

        v23 = _os_log_pack_size();
        v24 = __error();
        v25 = _os_log_pack_fill(v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v23, *v24, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
        *v25 = 136446210;
        *(v25 + 4) = "+[NRDLocalDevice ingestRemoteClassCKeys:modernFormat:nrUUID:deviceCompletionBlock:]";
        sub_10015B480();
        _NRLogAbortWithPack();
      }

      v14 = v13;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10016F7BC;
      v26[3] = &unk_1001FCF80;
      v29 = v10;
      v30 = v11;
      v27 = v14;
      v31 = a3;
      v28 = v8;
      v15 = v14;
      sub_100165C8C(v15, v26);
    }

    else
    {
      v18 = sub_10015B480();
      v19 = _NRLogIsLevelEnabled();

      if (!v19)
      {
        goto LABEL_6;
      }

      v15 = sub_10015B480();
      _NRLogWithArgs(v15, 17, "%s called with null deviceCompletionBlock");
    }
  }

  else
  {
    v16 = sub_10015B480();
    v17 = _NRLogIsLevelEnabled();

    if (!v17)
    {
      goto LABEL_6;
    }

    v15 = sub_10015B480();
    _NRLogWithArgs(v15, 17, "%s called with null nrUUID");
  }

LABEL_6:
}

uint64_t sub_10016F7BC(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 56);
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    if (v3 == 1)
    {
      if (v6)
      {
        sub_10016ED68(v4, v5, *(v6 + 80));
      }

      else
      {
        sub_10016ED68(v4, v5, 0);
      }
    }

    else
    {
      if (v6)
      {
        v7 = *(v6 + 80);
      }

      else
      {
        v7 = 0;
      }

      sub_10016EBF4(v4, v5, v7);
    }

    sub_10000DF34(*(a1 + 32), 5006, @"ClassC");
    v8 = objc_opt_self();
    sub_1001629FC(v8, 0);
  }

  else
  {
    v11 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v13 = sub_10015B480();
      _NRLogWithArgs(v13, 17, "Failed to ingest remote ClassC keys due to ClassC fill in failure");
    }
  }

  v9 = *(*(a1 + 48) + 16);

  return v9();
}

void sub_10016F8AC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v10 = sub_100003490();
  dispatch_assert_queue_V2(v10);

  if (v7)
  {
    if (v8)
    {
      v11 = sub_100163B2C(v9, v7, 0);
      if (!v11)
      {
        v18 = sub_10015B480();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v20 = sub_10015B480();
          _NRLogWithArgs(v20, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice ingestRemoteClassAKeys:modernFormat:nrUUID:deviceCompletionBlock:]", 3780);
        }

        v21 = _os_log_pack_size();
        v22 = __error();
        v23 = _os_log_pack_fill(v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v21, *v22, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
        *v23 = 136446210;
        *(v23 + 4) = "+[NRDLocalDevice ingestRemoteClassAKeys:modernFormat:nrUUID:deviceCompletionBlock:]";
        sub_10015B480();
        _NRLogAbortWithPack();
      }

      v12 = v11;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10016FB40;
      v24[3] = &unk_1001FCF80;
      v27 = v8;
      v28 = v9;
      v25 = v12;
      v29 = 0;
      v26 = v6;
      v13 = v12;
      sub_100166050(v13, v24);
    }

    else
    {
      v16 = sub_10015B480();
      v17 = _NRLogIsLevelEnabled();

      if (!v17)
      {
        goto LABEL_6;
      }

      v13 = sub_10015B480();
      _NRLogWithArgs(v13, 17, "%s called with null deviceCompletionBlock");
    }
  }

  else
  {
    v14 = sub_10015B480();
    v15 = _NRLogIsLevelEnabled();

    if (!v15)
    {
      goto LABEL_6;
    }

    v13 = sub_10015B480();
    _NRLogWithArgs(v13, 17, "%s called with null nrUUID");
  }

LABEL_6:
}

uint64_t sub_10016FB40(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 56);
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    if (v3 == 1)
    {
      if (v6)
      {
        sub_10016ED68(v4, v5, *(v6 + 88));
      }

      else
      {
        sub_10016ED68(v4, v5, 0);
      }
    }

    else
    {
      if (v6)
      {
        v7 = *(v6 + 88);
      }

      else
      {
        v7 = 0;
      }

      sub_10016EBF4(v4, v5, v7);
    }

    sub_10000DF34(*(a1 + 32), 5006, @"ClassA");
    v8 = objc_opt_self();
    sub_1001629FC(v8, 0);
  }

  else
  {
    v11 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v13 = sub_10015B480();
      _NRLogWithArgs(v13, 17, "Failed to ingest remote ClassA keys due to ClassA fill in failure");
    }
  }

  v9 = *(*(a1 + 48) + 16);

  return v9();
}

void sub_10016FC30(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_self();
  v11 = sub_100003490();
  dispatch_assert_queue_V2(v11);

  if (!v7)
  {
    v20 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_10;
    }

    v22 = sub_10015B480();
    _NRLogWithArgs(v22, 17, "%s called with null remoteClassDKeysEncryptedWithIDS");
LABEL_17:

    goto LABEL_10;
  }

  if (!v8)
  {
    v23 = sub_10015B480();
    v24 = _NRLogIsLevelEnabled();

    if (!v24)
    {
      goto LABEL_10;
    }

    v22 = sub_10015B480();
    _NRLogWithArgs(v22, 17, "%s called with null nrUUID");
    goto LABEL_17;
  }

  if (!v9)
  {
    v25 = sub_10015B480();
    v26 = _NRLogIsLevelEnabled();

    if (!v26)
    {
      goto LABEL_10;
    }

    v22 = sub_10015B480();
    _NRLogWithArgs(v22, 17, "%s called with null deviceCompletionBlock");
    goto LABEL_17;
  }

  v12 = sub_100163B2C(v10, v8, 0);
  if (!v12)
  {
    v27 = sub_10015B480();
    v28 = _NRLogIsLevelEnabled();

    if (v28)
    {
      v29 = sub_10015B480();
      _NRLogWithArgs(v29, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice ingestRemoteClassDKeysEncryptedWithIDS:nrUUID:deviceCompletionBlock:]", 3814);
    }

    v7 = _os_log_pack_size();
    v8 = v37 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = __error();
    v31 = _os_log_pack_fill(v8, v7, *v30, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v31 = 136446210;
    *(v31 + 4) = "+[NRDLocalDevice ingestRemoteClassDKeysEncryptedWithIDS:nrUUID:deviceCompletionBlock:]";
    goto LABEL_24;
  }

  v13 = v12;
  v14 = *(v12 + 32);
  if (!v14)
  {
    v32 = sub_10015B480();
    v33 = _NRLogIsLevelEnabled();

    v9 = "+[NRDLocalDevice ingestRemoteClassDKeysEncryptedWithIDS:nrUUID:deviceCompletionBlock:]";
    if (v33)
    {
      v34 = sub_10015B480();
      _NRLogWithArgs(v34, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (bluetoothUUID) != ((void*)0)", "", "+[NRDLocalDevice ingestRemoteClassDKeysEncryptedWithIDS:nrUUID:deviceCompletionBlock:]", 3816);
    }

    v7 = _os_log_pack_size();
    v8 = v37 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = __error();
    v36 = _os_log_pack_fill(v8, v7, *v35, &_mh_execute_header, "%{public}s Assertion Failed: (bluetoothUUID) != ((void*)0)");
    *v36 = 136446210;
    *(v36 + 4) = "+[NRDLocalDevice ingestRemoteClassDKeysEncryptedWithIDS:nrUUID:deviceCompletionBlock:]";
LABEL_24:
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_25;
  }

  v4 = v14;
  sub_1001656BC(v13);

  objc_opt_self();
  if (qword_100229170 != -1)
  {
LABEL_25:
    dispatch_once(&qword_100229170, &stru_1001FBC60);
  }

  v15 = qword_100229168;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1001700FC;
  v37[3] = &unk_1001FCFA8;
  v40 = v10;
  v38 = v8;
  v39 = v9;
  v16 = v7;
  v17 = v4;
  v18 = v37;
  if (v15)
  {
    dispatch_assert_queue_V2(v15[2]);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10011829C;
    v41[3] = &unk_1001FBD28;
    v41[4] = v15;
    v42 = v16;
    v19 = v17;
    v43 = v19;
    v44 = v18;
    sub_1001177A8(v15, v19, 4, v41);
  }

LABEL_10:
}

void sub_100170110(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v10 = sub_100003490();
  dispatch_assert_queue_V2(v10);

  if (!v6)
  {
    v17 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_7;
    }

    v19 = sub_10015B480();
    _NRLogWithArgs(v19, 17, "%s called with null remoteClassCKeysEncryptedWithIDS");
LABEL_14:

    goto LABEL_7;
  }

  if (!v7)
  {
    v20 = sub_10015B480();
    v21 = _NRLogIsLevelEnabled();

    if (!v21)
    {
      goto LABEL_7;
    }

    v19 = sub_10015B480();
    _NRLogWithArgs(v19, 17, "%s called with null nrUUID");
    goto LABEL_14;
  }

  if (!v8)
  {
    v22 = sub_10015B480();
    v23 = _NRLogIsLevelEnabled();

    if (!v23)
    {
      goto LABEL_7;
    }

    v19 = sub_10015B480();
    _NRLogWithArgs(v19, 17, "%s called with null deviceCompletionBlock");
    goto LABEL_14;
  }

  v11 = sub_100163B2C(v9, v7, 0);
  if (!v11)
  {
    v24 = sub_10015B480();
    v25 = _NRLogIsLevelEnabled();

    if (v25)
    {
      v26 = sub_10015B480();
      _NRLogWithArgs(v26, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice ingestRemoteClassCKeysEncryptedWithIDS:nrUUID:deviceCompletionBlock:]", 3842);
    }

    v27 = _os_log_pack_size();
    v28 = __error();
    v29 = _os_log_pack_fill(&v37[-1] - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v27, *v28, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v29 = 136446210;
    *(v29 + 4) = "+[NRDLocalDevice ingestRemoteClassCKeysEncryptedWithIDS:nrUUID:deviceCompletionBlock:]";
LABEL_21:
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v12 = v11;
  v13 = *(v11 + 32);
  if (!v13)
  {
    v30 = sub_10015B480();
    v31 = _NRLogIsLevelEnabled();

    if (v31)
    {
      v32 = sub_10015B480();
      _NRLogWithArgs(v32, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (bluetoothUUID) != ((void*)0)", "", "+[NRDLocalDevice ingestRemoteClassCKeysEncryptedWithIDS:nrUUID:deviceCompletionBlock:]", 3844);
    }

    v33 = _os_log_pack_size();
    v34 = __error();
    v35 = _os_log_pack_fill(&v37[-1] - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v33, *v34, &_mh_execute_header, "%{public}s Assertion Failed: (bluetoothUUID) != ((void*)0)");
    *v35 = 136446210;
    *(v35 + 4) = "+[NRDLocalDevice ingestRemoteClassCKeysEncryptedWithIDS:nrUUID:deviceCompletionBlock:]";
    goto LABEL_21;
  }

  v14 = v13;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1001704D8;
  v37[3] = &unk_1001FCFD0;
  v42 = v8;
  v38 = v12;
  v39 = v6;
  v40 = v14;
  v43 = v9;
  v41 = v7;
  v15 = v14;
  v16 = v12;
  sub_100165C8C(v16, v37);

LABEL_7:
}

void sub_1001704D8(uint64_t a1, char a2)
{
  if (a2)
  {
    objc_opt_self();
    if (qword_100229170 != -1)
    {
      dispatch_once(&qword_100229170, &stru_1001FBC60);
    }

    v3 = qword_100229168;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1001707B0;
    v19[3] = &unk_1001FCFA8;
    v22 = *(a1 + 72);
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    v6 = v4;
    v7 = v5;
    v8 = v19;
    if (!v3)
    {
      goto LABEL_8;
    }

    dispatch_assert_queue_V2(v3[2]);
    if (v6)
    {
      if (v7)
      {
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_1001184A4;
        v23[3] = &unk_1001FBD28;
        v23[4] = v3;
        v24 = v6;
        v9 = v7;
        v25 = v9;
        v26 = v8;
        sub_1001177A8(v3, v9, 3, v23);

LABEL_8:
        return;
      }

      v17 = sub_10011573C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_8;
      }

      v16 = sub_10011573C();
      _NRLogWithArgs(v16, 17, "%s called with null bluetoothUUID");
    }

    else
    {
      v14 = sub_10011573C();
      v15 = _NRLogIsLevelEnabled();

      if (!v15)
      {
        goto LABEL_8;
      }

      v16 = sub_10011573C();
      _NRLogWithArgs(v16, 17, "%s called with null remoteClassCKeysEncryptedWithIDS");
    }

    goto LABEL_8;
  }

  v10 = sub_10015B480();
  v11 = _NRLogIsLevelEnabled();

  if (v11)
  {
    v12 = sub_10015B480();
    _NRLogWithArgs(v12, 16, "%s%.30s:%-4d Failed to ingest remote ClassC keys encrypted with IDS due to ClassC fill in failure", "", "+[NRDLocalDevice ingestRemoteClassCKeysEncryptedWithIDS:nrUUID:deviceCompletionBlock:]_block_invoke", 3848);
  }

  v13 = *(*(a1 + 64) + 16);

  v13();
}

void sub_1001707C4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v10 = sub_100003490();
  dispatch_assert_queue_V2(v10);

  if (!v6)
  {
    v17 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_7;
    }

    v19 = sub_10015B480();
    _NRLogWithArgs(v19, 17, "%s called with null remoteClassAKeysEncryptedWithIDS");
LABEL_14:

    goto LABEL_7;
  }

  if (!v7)
  {
    v20 = sub_10015B480();
    v21 = _NRLogIsLevelEnabled();

    if (!v21)
    {
      goto LABEL_7;
    }

    v19 = sub_10015B480();
    _NRLogWithArgs(v19, 17, "%s called with null nrUUID");
    goto LABEL_14;
  }

  if (!v8)
  {
    v22 = sub_10015B480();
    v23 = _NRLogIsLevelEnabled();

    if (!v23)
    {
      goto LABEL_7;
    }

    v19 = sub_10015B480();
    _NRLogWithArgs(v19, 17, "%s called with null deviceCompletionBlock");
    goto LABEL_14;
  }

  v11 = sub_100163B2C(v9, v7, 0);
  if (!v11)
  {
    v24 = sub_10015B480();
    v25 = _NRLogIsLevelEnabled();

    if (v25)
    {
      v26 = sub_10015B480();
      _NRLogWithArgs(v26, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice ingestRemoteClassAKeysEncryptedWithIDS:nrUUID:deviceCompletionBlock:]", 3875);
    }

    v27 = _os_log_pack_size();
    v28 = __error();
    v29 = _os_log_pack_fill(&v37[-1] - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v27, *v28, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v29 = 136446210;
    *(v29 + 4) = "+[NRDLocalDevice ingestRemoteClassAKeysEncryptedWithIDS:nrUUID:deviceCompletionBlock:]";
LABEL_21:
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v12 = v11;
  v13 = *(v11 + 32);
  if (!v13)
  {
    v30 = sub_10015B480();
    v31 = _NRLogIsLevelEnabled();

    if (v31)
    {
      v32 = sub_10015B480();
      _NRLogWithArgs(v32, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (bluetoothUUID) != ((void*)0)", "", "+[NRDLocalDevice ingestRemoteClassAKeysEncryptedWithIDS:nrUUID:deviceCompletionBlock:]", 3877);
    }

    v33 = _os_log_pack_size();
    v34 = __error();
    v35 = _os_log_pack_fill(&v37[-1] - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v33, *v34, &_mh_execute_header, "%{public}s Assertion Failed: (bluetoothUUID) != ((void*)0)");
    *v35 = 136446210;
    *(v35 + 4) = "+[NRDLocalDevice ingestRemoteClassAKeysEncryptedWithIDS:nrUUID:deviceCompletionBlock:]";
    goto LABEL_21;
  }

  v14 = v13;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100170B8C;
  v37[3] = &unk_1001FCFD0;
  v42 = v8;
  v38 = v12;
  v39 = v6;
  v40 = v14;
  v43 = v9;
  v41 = v7;
  v15 = v14;
  v16 = v12;
  sub_100166050(v16, v37);

LABEL_7:
}

void sub_100170B8C(uint64_t a1, char a2)
{
  if (a2)
  {
    objc_opt_self();
    if (qword_100229170 != -1)
    {
      dispatch_once(&qword_100229170, &stru_1001FBC60);
    }

    v3 = qword_100229168;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100170E64;
    v19[3] = &unk_1001FCFA8;
    v22 = *(a1 + 72);
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    v6 = v4;
    v7 = v5;
    v8 = v19;
    if (!v3)
    {
      goto LABEL_8;
    }

    dispatch_assert_queue_V2(v3[2]);
    if (v6)
    {
      if (v7)
      {
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_1001186AC;
        v23[3] = &unk_1001FBD28;
        v23[4] = v3;
        v24 = v6;
        v9 = v7;
        v25 = v9;
        v26 = v8;
        sub_1001177A8(v3, v9, 1, v23);

LABEL_8:
        return;
      }

      v17 = sub_10011573C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_8;
      }

      v16 = sub_10011573C();
      _NRLogWithArgs(v16, 17, "%s called with null bluetoothUUID");
    }

    else
    {
      v14 = sub_10011573C();
      v15 = _NRLogIsLevelEnabled();

      if (!v15)
      {
        goto LABEL_8;
      }

      v16 = sub_10011573C();
      _NRLogWithArgs(v16, 17, "%s called with null remoteClassAKeysEncryptedWithIDS");
    }

    goto LABEL_8;
  }

  v10 = sub_10015B480();
  v11 = _NRLogIsLevelEnabled();

  if (v11)
  {
    v12 = sub_10015B480();
    _NRLogWithArgs(v12, 16, "%s%.30s:%-4d Failed to ingest remote ClassA keys encrypted with IDS due to ClassA fill in failure", "", "+[NRDLocalDevice ingestRemoteClassAKeysEncryptedWithIDS:nrUUID:deviceCompletionBlock:]_block_invoke", 3881);
  }

  v13 = *(*(a1 + 64) + 16);

  v13();
}

void sub_100170E74(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v4 = a3;
  v5 = objc_opt_self();
  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  if (v24)
  {
    if (v4)
    {
      v7 = sub_100163B2C(v5, v24, 0);
      if (!v7)
      {
        v18 = sub_10015B480();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v20 = sub_10015B480();
          _NRLogWithArgs(v20, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice queryIDSDeviceIDForNRUUID:completionBlock:]", 3906);
        }

        v21 = _os_log_pack_size();
        v22 = __error();
        v23 = _os_log_pack_fill(&v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v21, *v22, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
        *v23 = 136446210;
        *(v23 + 4) = "+[NRDLocalDevice queryIDSDeviceIDForNRUUID:completionBlock:]";
        sub_10015B480();
        _NRLogAbortWithPack();
      }

      v8 = v7;
      if (*(v7 + 40))
      {
        v4[2](v4, v7);
      }

      else
      {
        v9 = qword_100229478;
        if (!qword_100229478)
        {
          v10 = objc_alloc_init(NSMutableDictionary);
          v11 = qword_100229478;
          qword_100229478 = v10;

          v9 = qword_100229478;
        }

        v12 = [v9 objectForKeyedSubscript:{v24, v24}];
        if (!v12)
        {
          v12 = objc_alloc_init(NSMutableArray);
        }

        v13 = objc_retainBlock(v4);
        [v12 addObject:v13];

        [qword_100229478 setObject:v12 forKeyedSubscript:v24];
      }

      goto LABEL_11;
    }

    v16 = sub_10015B480();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
      v8 = sub_10015B480();
      _NRLogWithArgs(v8, 17, "%s called with null block");
      goto LABEL_11;
    }
  }

  else
  {
    v14 = sub_10015B480();
    v15 = _NRLogIsLevelEnabled();

    if (v15)
    {
      v8 = sub_10015B480();
      _NRLogWithArgs(v8, 17, "%s called with null nrUUID");
LABEL_11:
    }
  }
}

void sub_100171120(uint64_t a1, void *a2)
{
  v14 = a2;
  v2 = objc_opt_self();
  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  if (v14)
  {
    v4 = sub_100163B2C(v2, v14, 0);
    if (!v4)
    {
      v8 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v10 = sub_10015B480();
        _NRLogWithArgs(v10, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice updateIsEphemeral:nrUUID:]", 3928);
      }

      v11 = _os_log_pack_size();
      v12 = __error();
      v13 = _os_log_pack_fill(&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11, *v12, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v13 = 136446210;
      *(v13 + 4) = "+[NRDLocalDevice updateIsEphemeral:nrUUID:]";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    v5 = v4;
    if (v4[8] == 1)
    {
      v4[8] = 0;
      sub_10015D69C(v4);
      v5[13] = 1;
      sub_1001629FC(v2, 1);
    }

    goto LABEL_5;
  }

  v6 = sub_10015B480();
  v7 = _NRLogIsLevelEnabled();

  if (v7)
  {
    v5 = sub_10015B480();
    _NRLogWithArgs(v5, 17, "%s called with null nrUUID", "+[NRDLocalDevice updateIsEphemeral:nrUUID:]");
LABEL_5:
  }
}

void sub_100171304(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = a3;
  v4 = objc_opt_self();
  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  if (v18)
  {
    v6 = sub_100163A30(v4, v18);
    if (v6)
    {
      if (v6[8] == a2)
      {
LABEL_4:

        goto LABEL_5;
      }
    }

    else
    {
      v11 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v13 = sub_10015B480();
        _NRLogWithArgs(v13, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice updateLastSeenInnerLinkVersionHBO:nrUUID:]", 3954);
      }

      a2 = _os_log_pack_size();
      v14 = __error();
      v15 = _os_log_pack_fill(&v18 - ((a2 + 15) & 0xFFFFFFFFFFFFFFF0), a2, *v14, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v15 = 136446210;
      *(v15 + 4) = "+[NRDLocalDevice updateLastSeenInnerLinkVersionHBO:nrUUID:]";
      sub_10015B480();
      v6 = _NRLogAbortWithPack();
    }

    v16 = v6;
    [v6 setLastSeenInnerLinkVersionHBO:{a2, v18}];
    v17 = objc_opt_self();
    sub_1001629FC(v17, 0);
    v6 = v16;
    goto LABEL_4;
  }

  v8 = sub_10015B480();
  v9 = _NRLogIsLevelEnabled();

  if (v9)
  {
    v10 = sub_10015B480();
    _NRLogWithArgs(v10, 17, "%s called with null nrUUID", "+[NRDLocalDevice updateLastSeenInnerLinkVersionHBO:nrUUID:]");
    v6 = v10;
    goto LABEL_4;
  }

LABEL_5:
  v7 = v18;
}

void sub_1001714EC(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = a3;
  v4 = objc_opt_self();
  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  if (v18)
  {
    v6 = sub_100163A30(v4, v18);
    if (v6)
    {
      if (v6[9] == a2)
      {
LABEL_4:

        goto LABEL_5;
      }
    }

    else
    {
      v11 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v13 = sub_10015B480();
        _NRLogWithArgs(v13, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice updateDeviceEndpointType:nrUUID:]", 3967);
      }

      a2 = _os_log_pack_size();
      v14 = __error();
      v15 = _os_log_pack_fill(&v18 - ((a2 + 15) & 0xFFFFFFFFFFFFFFF0), a2, *v14, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v15 = 136446210;
      *(v15 + 4) = "+[NRDLocalDevice updateDeviceEndpointType:nrUUID:]";
      sub_10015B480();
      v6 = _NRLogAbortWithPack();
    }

    v16 = v6;
    [v6 setDeviceType:{a2, v18}];
    v17 = objc_opt_self();
    sub_1001629FC(v17, 0);
    v6 = v16;
    goto LABEL_4;
  }

  v8 = sub_10015B480();
  v9 = _NRLogIsLevelEnabled();

  if (v9)
  {
    v10 = sub_10015B480();
    _NRLogWithArgs(v10, 17, "%s called with null nrUUID", "+[NRDLocalDevice updateDeviceEndpointType:nrUUID:]");
    v6 = v10;
    goto LABEL_4;
  }

LABEL_5:
  v7 = v18;
}

void sub_1001716D4(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v4 = a3;
  v5 = objc_opt_self();
  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  if (v4)
  {
    v7 = sub_100163A30(v5, v4);
    if (v7)
    {
      v8 = v7;
      if ([v19 isEqual:*(v7 + 128)])
      {
LABEL_4:

        goto LABEL_5;
      }
    }

    else
    {
      v12 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v14 = sub_10015B480();
        _NRLogWithArgs(v14, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice updateLastSeenName:nrUUID:]", 3981);
      }

      v4 = _os_log_pack_size();
      v8 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      v16 = _os_log_pack_fill(v8, v4, *v15, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v16 = 136446210;
      *(v16 + 4) = "+[NRDLocalDevice updateLastSeenName:nrUUID:]";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    v17 = [v19 copy];
    [v8 setLastSeenName:v17];

    v18 = objc_opt_self();
    sub_1001629FC(v18, 0);
    goto LABEL_4;
  }

  v10 = sub_10015B480();
  v11 = _NRLogIsLevelEnabled();

  if (v11)
  {
    v8 = sub_10015B480();
    _NRLogWithArgs(v8, 17, "%s called with null nrUUID", "+[NRDLocalDevice updateLastSeenName:nrUUID:]");
    goto LABEL_4;
  }

LABEL_5:

  v9 = v19;
}

void sub_1001718D8(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v4 = a3;
  v5 = objc_opt_self();
  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  if (v4)
  {
    v7 = sub_100163A30(v5, v4);
    if (v7)
    {
      v8 = v7;
      if ([v19 isEqual:*(v7 + 136)])
      {
LABEL_4:

        goto LABEL_5;
      }
    }

    else
    {
      v12 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v14 = sub_10015B480();
        _NRLogWithArgs(v14, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice updateLastSeenBuildVersion:nrUUID:]", 3995);
      }

      v4 = _os_log_pack_size();
      v8 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      v16 = _os_log_pack_fill(v8, v4, *v15, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v16 = 136446210;
      *(v16 + 4) = "+[NRDLocalDevice updateLastSeenBuildVersion:nrUUID:]";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    v17 = [v19 copy];
    [v8 setLastSeenBuildVersion:v17];

    v18 = objc_opt_self();
    sub_1001629FC(v18, 0);
    goto LABEL_4;
  }

  v10 = sub_10015B480();
  v11 = _NRLogIsLevelEnabled();

  if (v11)
  {
    v8 = sub_10015B480();
    _NRLogWithArgs(v8, 17, "%s called with null nrUUID", "+[NRDLocalDevice updateLastSeenBuildVersion:nrUUID:]");
    goto LABEL_4;
  }

LABEL_5:

  v9 = v19;
}

void sub_100171ADC(uint64_t a1, int a2, void *a3)
{
  LODWORD(v3) = a2;
  v21 = a3;
  v4 = objc_opt_self();
  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  if (v21)
  {
    v6 = sub_100163A30(v4, v21);
    if (v6)
    {
      v7 = v6[6];
      if (((v7 >> 8) & 1) == v3)
      {
LABEL_4:

        goto LABEL_5;
      }
    }

    else
    {
      v12 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v14 = sub_10015B480();
        _NRLogWithArgs(v14, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice updateLastSeenAlwaysOnWiFiSupported:nrUUID:]", 4008);
      }

      v3 = _os_log_pack_size();
      v15 = __error();
      v16 = _os_log_pack_fill(&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v3, *v15, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v16 = 136446210;
      *(v16 + 4) = "+[NRDLocalDevice updateLastSeenAlwaysOnWiFiSupported:nrUUID:]";
      sub_10015B480();
      v6 = _NRLogAbortWithPack();
    }

    v17 = v7 & 0xFFFFFFFFFFFFFEFFLL;
    v18 = 256;
    if (!v3)
    {
      v18 = 0;
    }

    v19 = v6;
    [v6 setDatabaseFlags:{v17 | v18, v21}];
    v20 = objc_opt_self();
    sub_1001629FC(v20, 0);
    v6 = v19;
    goto LABEL_4;
  }

  v9 = sub_10015B480();
  v10 = _NRLogIsLevelEnabled();

  if (v10)
  {
    v11 = sub_10015B480();
    _NRLogWithArgs(v11, 17, "%s called with null nrUUID", "+[NRDLocalDevice updateLastSeenAlwaysOnWiFiSupported:nrUUID:]");
    v6 = v11;
    goto LABEL_4;
  }

LABEL_5:
  v8 = v21;
}

void sub_100171CD8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v4 = a3;
  objc_opt_self();
  if (v8)
  {
    sub_100169848(NRDLocalDevice, v8, v4, 1);
  }

  else
  {
    v5 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = sub_10015B480();
      _NRLogWithArgs(v7, 17, "%s called with null receivedProxyNotifyPayload", "+[NRDLocalDevice updateReceivedProxyNotifyPayload:nrUUID:]");
    }
  }
}

void sub_100171DA0(uint64_t a1, void *a2)
{
  v18 = a2;
  v2 = objc_opt_self();
  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  if (v18)
  {
    v4 = sub_100163A30(v2, v18);
    if (v4)
    {
      v5 = v4[6];
      if ((v5 & 0x200) != 0)
      {
LABEL_4:

        goto LABEL_5;
      }
    }

    else
    {
      v10 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v12 = sub_10015B480();
        _NRLogWithArgs(v12, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice updateHasAuthenticatedWithIdentityForNRUUID:]", 4070);
      }

      v13 = _os_log_pack_size();
      v14 = __error();
      v15 = _os_log_pack_fill(&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13, *v14, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v15 = 136446210;
      *(v15 + 4) = "+[NRDLocalDevice updateHasAuthenticatedWithIdentityForNRUUID:]";
      sub_10015B480();
      v4 = _NRLogAbortWithPack();
    }

    v16 = v4;
    [v4 setDatabaseFlags:{v5 | 0x200, v18}];
    v17 = objc_opt_self();
    sub_1001629FC(v17, 0);
    v4 = v16;
    goto LABEL_4;
  }

  v7 = sub_10015B480();
  v8 = _NRLogIsLevelEnabled();

  if (v8)
  {
    v9 = sub_10015B480();
    _NRLogWithArgs(v9, 17, "%s called with null nrUUID", "+[NRDLocalDevice updateHasAuthenticatedWithIdentityForNRUUID:]");
    v4 = v9;
    goto LABEL_4;
  }

LABEL_5:
  v6 = v18;
}

void sub_100171F80(uint64_t a1, char *a2, void *a3)
{
  v5 = a3;
  v4 = objc_opt_self();
  sub_100169658(v4, a2, v5, 1);
}

void sub_100171FE0(uint64_t a1, void *a2)
{
  v16 = a2;
  v2 = objc_opt_self();
  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  if (v16)
  {
    v4 = sub_100163A30(v2, v16);
    if (v4)
    {
      v5 = v4;
      if (*(v4 + 11) != 1)
      {
LABEL_6:

        goto LABEL_7;
      }

      *(v4 + 11) = 0;
      objc_opt_self();
      if (qword_1002290C0 == -1)
      {
LABEL_5:
        v6 = qword_1002290B8;
        sub_1000BC670(v6);

        goto LABEL_6;
      }
    }

    else
    {
      v10 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v12 = sub_10015B480();
        _NRLogWithArgs(v12, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice resumeNonNearbyLinksForNRUUID:]", 4137);
      }

      v5 = _os_log_pack_size();
      v13 = &v16 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = __error();
      v15 = _os_log_pack_fill(v13, v5, *v14, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v15 = 136446210;
      *(v15 + 4) = "+[NRDLocalDevice resumeNonNearbyLinksForNRUUID:]";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    goto LABEL_5;
  }

  v8 = sub_10015B480();
  v9 = _NRLogIsLevelEnabled();

  if (v9)
  {
    v5 = sub_10015B480();
    _NRLogWithArgs(v5, 17, "%s called with null nrUUID", "+[NRDLocalDevice resumeNonNearbyLinksForNRUUID:]");
    goto LABEL_6;
  }

LABEL_7:
  v7 = v16;
}

void sub_100172204(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = a3;
  v4 = objc_opt_self();
  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  v6 = sub_100163A30(v4, v17);
  if (!v6)
  {
    v11 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v13 = sub_10015B480();
      _NRLogWithArgs(v13, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice updateUsesTLS:nrUUID:]", 4169);
    }

    v14 = _os_log_pack_size();
    v15 = __error();
    v16 = _os_log_pack_fill(&v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v14, *v15, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v16 = 136446210;
    *(v16 + 4) = "+[NRDLocalDevice updateUsesTLS:nrUUID:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v7 = v6;
  if ([*(v6 + 144) usesTLS] != a2)
  {
    v8 = _NRCopyLogObjectForNRUUID();
    v9 = _NRLogIsLevelEnabled();

    if (v9)
    {
      v10 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v10, 0, "%s%.30s:%-4d %@ Updating usesTLS %d to %d", "", "+[NRDLocalDevice updateUsesTLS:nrUUID:]", 4173, v7, [v7[18] usesTLS], a2);
    }

    [v7[18] setUsesTLS:{a2, v17}];
    sub_100169594(v7);
    sub_1001629FC(v4, 1);
  }
}

void sub_100172424(uint64_t a1, void *a2)
{
  v18 = a2;
  v2 = objc_opt_self();
  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  if (v18)
  {
    v4 = sub_100163B2C(v2, v18, 0);
    if (v4)
    {
      v5 = v4[6];
      if ((v5 & 0x800) != 0)
      {
LABEL_4:

        goto LABEL_5;
      }
    }

    else
    {
      v10 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v12 = sub_10015B480();
        _NRLogWithArgs(v12, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice updateHasSavedPairingInfoInKeychain:nrUUID:]", 4186);
      }

      v13 = _os_log_pack_size();
      v14 = __error();
      v15 = _os_log_pack_fill(&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13, *v14, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v15 = 136446210;
      *(v15 + 4) = "+[NRDLocalDevice updateHasSavedPairingInfoInKeychain:nrUUID:]";
      sub_10015B480();
      v4 = _NRLogAbortWithPack();
    }

    v16 = v4;
    [v4 setDatabaseFlags:{v5 | 0x800, v18}];
    v17 = objc_opt_self();
    sub_1001629FC(v17, 0);
    v4 = v16;
    goto LABEL_4;
  }

  v7 = sub_10015B480();
  v8 = _NRLogIsLevelEnabled();

  if (v8)
  {
    v9 = sub_10015B480();
    _NRLogWithArgs(v9, 17, "%s called with null nrUUID", "+[NRDLocalDevice updateHasSavedPairingInfoInKeychain:nrUUID:]");
    v4 = v9;
    goto LABEL_4;
  }

LABEL_5:
  v6 = v18;
}

double sub_100172608(void *a1, _OWORD *a2)
{
  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  if (!a2)
  {
    v9 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = sub_10015B480();
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (outBytes) != ((void*)0)", "", "[NRDLocalDevice writeLocalClassCInnerAddressBytes:]", 4752);
    }

    v12 = _os_log_pack_size();
    v13 = __error();
    v14 = _os_log_pack_fill(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12, *v13, &_mh_execute_header, "%{public}s Assertion Failed: (outBytes) != ((void*)0)");
    *v14 = 136446210;
    *(v14 + 4) = "[NRDLocalDevice writeLocalClassCInnerAddressBytes:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v16 = 0;
  v17 = 0uLL;
  v18 = 0;
  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  v7 = sub_1001679E0(a1, @"0");
  sub_1001681A4(NRDLocalDevice, &v16, v7);

  result = *&v17;
  *a2 = v17;
  return result;
}

double sub_1001727AC(void *a1, _OWORD *a2)
{
  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  if (!a2)
  {
    v9 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = sub_10015B480();
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (outBytes) != ((void*)0)", "", "[NRDLocalDevice writeRemoteClassCInnerAddressBytes:]", 4784);
    }

    v12 = _os_log_pack_size();
    v13 = __error();
    v14 = _os_log_pack_fill(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12, *v13, &_mh_execute_header, "%{public}s Assertion Failed: (outBytes) != ((void*)0)");
    *v14 = 136446210;
    *(v14 + 4) = "[NRDLocalDevice writeRemoteClassCInnerAddressBytes:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v16 = 0;
  v17 = 0uLL;
  v18 = 0;
  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  v7 = sub_100167B9C(a1, @"0");
  sub_1001681A4(NRDLocalDevice, &v16, v7);

  result = *&v17;
  *a2 = v17;
  return result;
}

void sub_100172950(uint64_t a1, void *a2)
{
  v12 = a2;
  v2 = objc_opt_self();
  v3 = sub_100163B2C(v2, v12, 0);
  if (!v3)
  {
    v6 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = sub_10015B480();
      _NRLogWithArgs(v8, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice updateSelfManagedBluetoothPairing:nrUUID:]", 4333);
    }

    v9 = _os_log_pack_size();
    v10 = __error();
    v11 = _os_log_pack_fill(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9, *v10, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v11 = 136446210;
    *(v11 + 4) = "+[NRDLocalDevice updateSelfManagedBluetoothPairing:nrUUID:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v4 = v3;
  [v3 setDatabaseFlags:v3[6] | 0x80];
  v5 = objc_opt_self();
  sub_1001629FC(v5, 0);
}

void sub_100172AC4(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v4 = a3;
  v5 = objc_opt_self();
  v6 = sub_100163B2C(v5, v4, 0);
  if (!v6)
  {
    v10 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = sub_10015B480();
      _NRLogWithArgs(v12, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice updateBluetoothOutOfBandKey:nrUUID:]", 4342);
    }

    v13 = _os_log_pack_size();
    v14 = __error();
    v15 = _os_log_pack_fill(&v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13, *v14, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v15 = 136446210;
    *(v15 + 4) = "+[NRDLocalDevice updateBluetoothOutOfBandKey:nrUUID:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v7 = v6;
  v8 = [v16 copy];
  v9 = v7[13];
  v7[13] = v8;
}

BOOL sub_100172C3C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  v4 = v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v2 addressFamily] == 30 && *(objc_msgSend(v2, "address") + 1) == 0x73756E6D726574FDLL;
  return v4;
}

void *sub_100172CE0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  if (qword_100229448)
  {
    v7 = [qword_100229448 objectForKeyedSubscript:v4];

    if (v7)
    {
      v8 = [qword_100229448 objectForKeyedSubscript:v4];
      v7 = [v8 objectForKeyedSubscript:v5];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id *sub_100172D94(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = a1[18];
    v3 = [v2 allowedLinkTypes];
    if ([v3 isEqual:&off_10020A120])
    {
      v4 = [v1[18] allowedLinkSubtypes];
      v1 = [v4 isEqual:&off_10020A138];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

uint64_t sub_100172E20(void *a1)
{
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  v4 = sub_1001672A0(a1, @"0");
  v5 = [v4 hostname];

  return v5;
}

uint64_t sub_100172E88(void *a1)
{
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  v4 = sub_1001679E0(a1, @"0");
  v5 = [v4 hostname];

  return v5;
}

uint64_t sub_100172EF0(void *a1)
{
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  v4 = sub_1001677D0(a1, @"0");
  v5 = [v4 hostname];

  return v5;
}

uint64_t sub_100172F58(void *a1)
{
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  v4 = sub_100167B9C(a1, @"0");
  v5 = [v4 hostname];

  return v5;
}

void *sub_100172FC0(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_100003490();
    dispatch_assert_queue_V2(v2);

    v3 = sub_100003490();
    dispatch_assert_queue_V2(v3);

    v4 = sub_100003490();
    dispatch_assert_queue_V2(v4);

    v5 = sub_1001677D0(v1, @"0");
    v6 = [v5 hostname];

    v12[0] = v6;
    v7 = sub_100003490();
    dispatch_assert_queue_V2(v7);

    v8 = sub_100003490();
    dispatch_assert_queue_V2(v8);

    v9 = sub_100167B9C(v1, @"0");
    v10 = [v9 hostname];

    v12[1] = v10;
    v1 = [NSArray arrayWithObjects:v12 count:2];
  }

  return v1;
}

uint64_t sub_1001730E8(void *a1)
{
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  v7 = 0uLL;
  v9 = 0;
  v8 = 0;
  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  v5 = sub_1001672A0(a1, @"0");
  sub_1001681A4(NRDLocalDevice, &v7, v5);

  WORD4(v7) = -32514;
  *(&v7 + 10) = 0;
  HIWORD(v7) = 0;
  [NWAddressEndpoint endpointWithAddress:&v7];
  return objc_claimAutoreleasedReturnValue();
}

uint64_t sub_1001731B0(void *a1)
{
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  v3 = sub_1001730E8(a1);
  v4 = [v3 hostname];

  return v4;
}

void *sub_100173200(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_100003490();
    dispatch_assert_queue_V2(v2);

    v3 = sub_100003490();
    dispatch_assert_queue_V2(v3);

    v4 = sub_1001672A0(v1, @"0");
    v10[0] = v4;
    v5 = sub_100003490();
    dispatch_assert_queue_V2(v5);

    v6 = sub_1001679E0(v1, @"0");
    v10[1] = v6;
    v7 = sub_1001730E8(v1);
    v10[2] = v7;
    v8 = [NWAddressEndpoint endpointWithHostname:@"192.0.0.6" port:@"0"];
    v10[3] = v8;
    v1 = [NSArray arrayWithObjects:v10 count:4];
  }

  return v1;
}

uint64_t sub_10017332C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v7 = objc_opt_self();
  v8 = sub_100003490();
  dispatch_assert_queue_V2(v8);

  if (!a2)
  {
    v17 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v19 = sub_10015B480();
      _NRLogWithArgs(v19, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (addrBytes) != ((void*)0)", "", "+[NRDLocalDevice updateLocalClassDInnerAddressBytes:nrUUID:]", 4809);
    }

    v6 = _os_log_pack_size();
    v20 = &v33 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *__error();
    v22 = _os_log_pack_fill(v20, v6, v21, &_mh_execute_header, "%{public}s Assertion Failed: (addrBytes) != ((void*)0)");
    goto LABEL_21;
  }

  if (!v6)
  {
    v23 = sub_10015B480();
    v24 = _NRLogIsLevelEnabled();

    if (v24)
    {
      v25 = sub_10015B480();
      _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nrUUID) != ((void*)0)", "", "+[NRDLocalDevice updateLocalClassDInnerAddressBytes:nrUUID:]", 4810);
    }

    v6 = _os_log_pack_size();
    v26 = &v33 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = *__error();
    v22 = _os_log_pack_fill(v26, v6, v27, &_mh_execute_header, "%{public}s Assertion Failed: (nrUUID) != ((void*)0)");
    goto LABEL_21;
  }

  v9 = sub_100163B2C(v7, v6, 0);
  if (!v9)
  {
    v28 = sub_10015B480();
    v29 = _NRLogIsLevelEnabled();

    if (v29)
    {
      v30 = sub_10015B480();
      _NRLogWithArgs(v30, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice updateLocalClassDInnerAddressBytes:nrUUID:]", 4812);
    }

    v6 = _os_log_pack_size();
    v31 = &v33 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = *__error();
    v22 = _os_log_pack_fill(v31, v6, v32, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
LABEL_21:
    *v22 = 136446210;
    *(v22 + 4) = "+[NRDLocalDevice updateLocalClassDInnerAddressBytes:nrUUID:]";
    sub_10015B480();
    _NRLogAbortWithPack();
LABEL_22:
    dispatch_once(&qword_100229488, &stru_1001FD018);
    goto LABEL_6;
  }

  v8 = v9;
  v3 = [[NSData alloc] initWithBytes:a2 length:16];
  v10 = [v8 localInnerIPv6AddressBytesClassD];
  LODWORD(a2) = [v3 isEqual:v10];

  if (a2)
  {
    goto LABEL_11;
  }

  v4 = &qword_100229000;
  if (qword_100229488 != -1)
  {
    goto LABEL_22;
  }

LABEL_6:
  if (_NRLogIsLevelEnabled())
  {
    if (v4[145] != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    v11 = qword_100229480;
    v12 = [v8 localInnerIPv6AddressBytesClassD];
    IPv6AddrStringFromData = createIPv6AddrStringFromData();
    v14 = createIPv6AddrStringFromData();
    _NRLogWithArgs(v11, 0, "%s%.30s:%-4d Updating local classD inner address from %@ to %@ for %@", "", "+[NRDLocalDevice updateLocalClassDInnerAddressBytes:nrUUID:]", 4820, IPv6AddrStringFromData, v14, v8);
  }

  [v8 setLocalInnerIPv6AddressBytesClassD:v3];
  v15 = objc_opt_self();
  sub_1001629FC(v15, 0);
LABEL_11:

  return a2 ^ 1;
}

uint64_t sub_100173764(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v7 = objc_opt_self();
  v8 = sub_100003490();
  dispatch_assert_queue_V2(v8);

  if (!a2)
  {
    v17 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v19 = sub_10015B480();
      _NRLogWithArgs(v19, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (addrBytes) != ((void*)0)", "", "+[NRDLocalDevice updateLocalClassCInnerAddressBytes:nrUUID:]", 4829);
    }

    v6 = _os_log_pack_size();
    v20 = &v33 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *__error();
    v22 = _os_log_pack_fill(v20, v6, v21, &_mh_execute_header, "%{public}s Assertion Failed: (addrBytes) != ((void*)0)");
    goto LABEL_21;
  }

  if (!v6)
  {
    v23 = sub_10015B480();
    v24 = _NRLogIsLevelEnabled();

    if (v24)
    {
      v25 = sub_10015B480();
      _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nrUUID) != ((void*)0)", "", "+[NRDLocalDevice updateLocalClassCInnerAddressBytes:nrUUID:]", 4830);
    }

    v6 = _os_log_pack_size();
    v26 = &v33 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = *__error();
    v22 = _os_log_pack_fill(v26, v6, v27, &_mh_execute_header, "%{public}s Assertion Failed: (nrUUID) != ((void*)0)");
    goto LABEL_21;
  }

  v9 = sub_100163B2C(v7, v6, 0);
  if (!v9)
  {
    v28 = sub_10015B480();
    v29 = _NRLogIsLevelEnabled();

    if (v29)
    {
      v30 = sub_10015B480();
      _NRLogWithArgs(v30, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice updateLocalClassCInnerAddressBytes:nrUUID:]", 4832);
    }

    v6 = _os_log_pack_size();
    v31 = &v33 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = *__error();
    v22 = _os_log_pack_fill(v31, v6, v32, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
LABEL_21:
    *v22 = 136446210;
    *(v22 + 4) = "+[NRDLocalDevice updateLocalClassCInnerAddressBytes:nrUUID:]";
    sub_10015B480();
    _NRLogAbortWithPack();
LABEL_22:
    dispatch_once(&qword_100229488, &stru_1001FD018);
    goto LABEL_6;
  }

  v8 = v9;
  v3 = [[NSData alloc] initWithBytes:a2 length:16];
  v10 = [v8 localInnerIPv6AddressBytesClassC];
  LODWORD(a2) = [v3 isEqual:v10];

  if (a2)
  {
    goto LABEL_11;
  }

  v4 = &qword_100229000;
  if (qword_100229488 != -1)
  {
    goto LABEL_22;
  }

LABEL_6:
  if (_NRLogIsLevelEnabled())
  {
    if (v4[145] != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    v11 = qword_100229480;
    v12 = [v8 localInnerIPv6AddressBytesClassC];
    IPv6AddrStringFromData = createIPv6AddrStringFromData();
    v14 = createIPv6AddrStringFromData();
    _NRLogWithArgs(v11, 0, "%s%.30s:%-4d Updating local classC inner address from %@ to %@ for %@", "", "+[NRDLocalDevice updateLocalClassCInnerAddressBytes:nrUUID:]", 4840, IPv6AddrStringFromData, v14, v8);
  }

  [v8 setLocalInnerIPv6AddressBytesClassC:v3];
  v15 = objc_opt_self();
  sub_1001629FC(v15, 0);
LABEL_11:

  return a2 ^ 1;
}

uint64_t sub_100173B9C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v7 = objc_opt_self();
  v8 = sub_100003490();
  dispatch_assert_queue_V2(v8);

  if (!a2)
  {
    v17 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v19 = sub_10015B480();
      _NRLogWithArgs(v19, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (addrBytes) != ((void*)0)", "", "+[NRDLocalDevice updateRemoteClassDInnerAddressBytes:nrUUID:]", 4849);
    }

    v6 = _os_log_pack_size();
    v20 = &v33 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *__error();
    v22 = _os_log_pack_fill(v20, v6, v21, &_mh_execute_header, "%{public}s Assertion Failed: (addrBytes) != ((void*)0)");
    goto LABEL_21;
  }

  if (!v6)
  {
    v23 = sub_10015B480();
    v24 = _NRLogIsLevelEnabled();

    if (v24)
    {
      v25 = sub_10015B480();
      _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nrUUID) != ((void*)0)", "", "+[NRDLocalDevice updateRemoteClassDInnerAddressBytes:nrUUID:]", 4850);
    }

    v6 = _os_log_pack_size();
    v26 = &v33 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = *__error();
    v22 = _os_log_pack_fill(v26, v6, v27, &_mh_execute_header, "%{public}s Assertion Failed: (nrUUID) != ((void*)0)");
    goto LABEL_21;
  }

  v9 = sub_100163B2C(v7, v6, 0);
  if (!v9)
  {
    v28 = sub_10015B480();
    v29 = _NRLogIsLevelEnabled();

    if (v29)
    {
      v30 = sub_10015B480();
      _NRLogWithArgs(v30, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice updateRemoteClassDInnerAddressBytes:nrUUID:]", 4852);
    }

    v6 = _os_log_pack_size();
    v31 = &v33 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = *__error();
    v22 = _os_log_pack_fill(v31, v6, v32, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
LABEL_21:
    *v22 = 136446210;
    *(v22 + 4) = "+[NRDLocalDevice updateRemoteClassDInnerAddressBytes:nrUUID:]";
    sub_10015B480();
    _NRLogAbortWithPack();
LABEL_22:
    dispatch_once(&qword_100229488, &stru_1001FD018);
    goto LABEL_6;
  }

  v8 = v9;
  v3 = [[NSData alloc] initWithBytes:a2 length:16];
  v10 = [v8 remoteInnerIPv6AddressBytesClassD];
  LODWORD(a2) = [v3 isEqual:v10];

  if (a2)
  {
    goto LABEL_11;
  }

  v4 = &qword_100229000;
  if (qword_100229488 != -1)
  {
    goto LABEL_22;
  }

LABEL_6:
  if (_NRLogIsLevelEnabled())
  {
    if (v4[145] != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    v11 = qword_100229480;
    v12 = [v8 remoteInnerIPv6AddressBytesClassD];
    IPv6AddrStringFromData = createIPv6AddrStringFromData();
    v14 = createIPv6AddrStringFromData();
    _NRLogWithArgs(v11, 0, "%s%.30s:%-4d Updating remote classD inner address from %@ to %@ for %@", "", "+[NRDLocalDevice updateRemoteClassDInnerAddressBytes:nrUUID:]", 4860, IPv6AddrStringFromData, v14, v8);
  }

  [v8 setRemoteInnerIPv6AddressBytesClassD:v3];
  v15 = objc_opt_self();
  sub_1001629FC(v15, 0);
LABEL_11:

  return a2 ^ 1;
}

uint64_t sub_100173FD4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v7 = objc_opt_self();
  v8 = sub_100003490();
  dispatch_assert_queue_V2(v8);

  if (!a2)
  {
    v17 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v19 = sub_10015B480();
      _NRLogWithArgs(v19, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (addrBytes) != ((void*)0)", "", "+[NRDLocalDevice updateRemoteClassCInnerAddressBytes:nrUUID:]", 4869);
    }

    v6 = _os_log_pack_size();
    v20 = &v33 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *__error();
    v22 = _os_log_pack_fill(v20, v6, v21, &_mh_execute_header, "%{public}s Assertion Failed: (addrBytes) != ((void*)0)");
    goto LABEL_21;
  }

  if (!v6)
  {
    v23 = sub_10015B480();
    v24 = _NRLogIsLevelEnabled();

    if (v24)
    {
      v25 = sub_10015B480();
      _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nrUUID) != ((void*)0)", "", "+[NRDLocalDevice updateRemoteClassCInnerAddressBytes:nrUUID:]", 4870);
    }

    v6 = _os_log_pack_size();
    v26 = &v33 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = *__error();
    v22 = _os_log_pack_fill(v26, v6, v27, &_mh_execute_header, "%{public}s Assertion Failed: (nrUUID) != ((void*)0)");
    goto LABEL_21;
  }

  v9 = sub_100163B2C(v7, v6, 0);
  if (!v9)
  {
    v28 = sub_10015B480();
    v29 = _NRLogIsLevelEnabled();

    if (v29)
    {
      v30 = sub_10015B480();
      _NRLogWithArgs(v30, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice updateRemoteClassCInnerAddressBytes:nrUUID:]", 4872);
    }

    v6 = _os_log_pack_size();
    v31 = &v33 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = *__error();
    v22 = _os_log_pack_fill(v31, v6, v32, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
LABEL_21:
    *v22 = 136446210;
    *(v22 + 4) = "+[NRDLocalDevice updateRemoteClassCInnerAddressBytes:nrUUID:]";
    sub_10015B480();
    _NRLogAbortWithPack();
LABEL_22:
    dispatch_once(&qword_100229488, &stru_1001FD018);
    goto LABEL_6;
  }

  v8 = v9;
  v3 = [[NSData alloc] initWithBytes:a2 length:16];
  v10 = [v8 remoteInnerIPv6AddressBytesClassC];
  LODWORD(a2) = [v3 isEqual:v10];

  if (a2)
  {
    goto LABEL_11;
  }

  v4 = &qword_100229000;
  if (qword_100229488 != -1)
  {
    goto LABEL_22;
  }

LABEL_6:
  if (_NRLogIsLevelEnabled())
  {
    if (v4[145] != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    v11 = qword_100229480;
    v12 = [v8 remoteInnerIPv6AddressBytesClassC];
    IPv6AddrStringFromData = createIPv6AddrStringFromData();
    v14 = createIPv6AddrStringFromData();
    _NRLogWithArgs(v11, 0, "%s%.30s:%-4d Updating remote classC inner address from %@ to %@ for %@", "", "+[NRDLocalDevice updateRemoteClassCInnerAddressBytes:nrUUID:]", 4880, IPv6AddrStringFromData, v14, v8);
  }

  [v8 setRemoteInnerIPv6AddressBytesClassC:v3];
  v15 = objc_opt_self();
  sub_1001629FC(v15, 0);
LABEL_11:

  return a2 ^ 1;
}

void sub_10017440C(uint64_t a1, void *a2, void *a3)
{
  v23 = a2;
  v4 = a3;
  v5 = objc_opt_self();
  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  if (!v4)
  {
    v11 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v13 = sub_10015B480();
      _NRLogWithArgs(v13, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nrUUID) != ((void*)0)", "", "+[NRDLocalDevice updateBluetoothUUID:nrUUID:]", 4889);
    }

    v14 = _os_log_pack_size();
    v15 = __error();
    v16 = _os_log_pack_fill(&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v14, *v15, &_mh_execute_header, "%{public}s Assertion Failed: (nrUUID) != ((void*)0)");
    *v16 = 136446210;
    *(v16 + 4) = "+[NRDLocalDevice updateBluetoothUUID:nrUUID:]";
LABEL_18:
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v7 = sub_100163B2C(v5, v4, 0);
  if (!v7)
  {
    v17 = sub_10015B480();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
      v19 = sub_10015B480();
      _NRLogWithArgs(v19, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice updateBluetoothUUID:nrUUID:]", 4891);
    }

    v20 = _os_log_pack_size();
    v21 = __error();
    v22 = _os_log_pack_fill(&v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v20, *v21, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v22 = 136446210;
    *(v22 + 4) = "+[NRDLocalDevice updateBluetoothUUID:nrUUID:]";
    goto LABEL_18;
  }

  v8 = v7;
  if (![*(v7 + 32) isEqual:v23] || (v23 != 0) != (*(v8 + 48) & 0x40) >> 6)
  {
    if (v23 || (v9 = 0, *(v8 + 8) == 1))
    {
      [v8 setBluetoothUUID:{v23, v23}];
      v9 = v23;
    }

    [v8 setDatabaseFlags:*(v8 + 48) & 0xFFFFFFFFFFFFFFBFLL | ((v9 != 0) << 6)];
    v10 = objc_opt_self();
    sub_1001629FC(v10, 0);
  }
}

void sub_1001746C0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (!v4)
  {
    v9 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = sub_10015B480();
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nrUUID) != ((void*)0)", "", "+[NRDLocalDevice readPairingInfoFromKeychain:completionBlock:]", 4913);
    }

    v4 = _os_log_pack_size();
    v5 = &v20[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = __error();
    v13 = _os_log_pack_fill(v5, v4, *v12, &_mh_execute_header, "%{public}s Assertion Failed: (nrUUID) != ((void*)0)");
    *v13 = 136446210;
    *(v13 + 4) = "+[NRDLocalDevice readPairingInfoFromKeychain:completionBlock:]";
    goto LABEL_11;
  }

  if (!v5)
  {
    v14 = sub_10015B480();
    v15 = _NRLogIsLevelEnabled();

    if (v15)
    {
      v16 = sub_10015B480();
      _NRLogWithArgs(v16, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (completionBlock) != ((void*)0)", "", "+[NRDLocalDevice readPairingInfoFromKeychain:completionBlock:]", 4914);
    }

    v4 = _os_log_pack_size();
    v5 = &v20[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = __error();
    v18 = _os_log_pack_fill(v5, v4, *v17, &_mh_execute_header, "%{public}s Assertion Failed: (completionBlock) != ((void*)0)");
    *v18 = 136446210;
    *(v18 + 4) = "+[NRDLocalDevice readPairingInfoFromKeychain:completionBlock:]";
LABEL_11:
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_12;
  }

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
LABEL_12:
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v6 = qword_1002294C0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001749A4;
  v20[3] = &unk_1001FCE50;
  v21 = v4;
  v22 = v5;
  v7 = v5;
  v8 = v4;
  sub_1001816DC(v6, v20);
}

void sub_1001749A4(uint64_t a1)
{
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v2 = qword_1002294C0;
  v3 = sub_100183000(v2, @"LocalDevicePairingInfo", *(a1 + 32), 3, 1);

  if (v3)
  {
    v13 = 0;
    v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v13];
    v5 = v13;
    v6 = _NRCopyLogObjectForNRUUID();
    if (v4)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v8 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v8, 0, "%s%.30s:%-4d Successfully unarchived NRDLDPairingInfo: %@", "", "+[NRDLocalDevice readPairingInfoFromKeychain:completionBlock:]_block_invoke", 4930, v4);
LABEL_12:
      }
    }

    else
    {
      v12 = _NRLogIsLevelEnabled();

      if (v12)
      {
        v8 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v8, 16, "%s%.30s:%-4d Failed to unarchive data:%@ as NRDLDPairingInfo. Error:%@", "", "+[NRDLocalDevice readPairingInfoFromKeychain:completionBlock:]_block_invoke", 4932, v3, v5);
        goto LABEL_12;
      }
    }

    goto LABEL_14;
  }

  v9 = _NRCopyLogObjectForNRUUID();
  v10 = _NRLogIsLevelEnabled();

  if (v10)
  {
    v11 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v11, 1, "%s%.30s:%-4d NRDLDPairingInfo not found in keychain", "", "+[NRDLocalDevice readPairingInfoFromKeychain:completionBlock:]_block_invoke", 4935);
  }

  v4 = 0;
LABEL_14:
  (*(*(a1 + 40) + 16))();
}

void sub_100174BBC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  v9 = sub_100003490();
  dispatch_assert_queue_V2(v9);

  if (!v6)
  {
    v15 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v17 = sub_10015B480();
      _NRLogWithArgs(v17, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nrUUID) != ((void*)0)", "", "+[NRDLocalDevice updatePairingInfoToKeychain:cbPairingInfoDict:completionBlock:]", 4989);
    }

    v6 = _os_log_pack_size();
    v7 = &v26[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __error();
    v19 = _os_log_pack_fill(v7, v6, *v18, &_mh_execute_header, "%{public}s Assertion Failed: (nrUUID) != ((void*)0)");
    *v19 = 136446210;
    *(v19 + 4) = "+[NRDLocalDevice updatePairingInfoToKeychain:cbPairingInfoDict:completionBlock:]";
    goto LABEL_22;
  }

  if (!v7)
  {
    v20 = sub_10015B480();
    v21 = _NRLogIsLevelEnabled();

    v8 = "+[NRDLocalDevice updatePairingInfoToKeychain:cbPairingInfoDict:completionBlock:]";
    if (v21)
    {
      v22 = sub_10015B480();
      _NRLogWithArgs(v22, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (cbPairingInfoDict) != ((void*)0)", "", "+[NRDLocalDevice updatePairingInfoToKeychain:cbPairingInfoDict:completionBlock:]", 4990);
    }

    v6 = _os_log_pack_size();
    v7 = &v26[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = __error();
    v24 = _os_log_pack_fill(v7, v6, *v23, &_mh_execute_header, "%{public}s Assertion Failed: (cbPairingInfoDict) != ((void*)0)");
    *v24 = 136446210;
    *(v24 + 4) = "+[NRDLocalDevice updatePairingInfoToKeychain:cbPairingInfoDict:completionBlock:]";
LABEL_22:
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_23;
  }

  v10 = [qword_100229428 objectForKeyedSubscript:v6];
  v9 = v10;
  if (v10 && (*(v10 + 48) & 1) != 0 && *(v10 + 32) && (*(v10 + 8) & 1) == 0 && sub_100169428(v10) && BYTE1(v9[1].isa) == 2)
  {
    objc_opt_self();
    if (qword_1002294C8 == -1)
    {
LABEL_10:
      v11 = qword_1002294C0;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100174F88;
      v26[3] = &unk_1001FCFF8;
      v30 = 0;
      v27 = v7;
      v29 = v8;
      v28 = v6;
      sub_1001816DC(v11, v26);

      goto LABEL_15;
    }

LABEL_23:
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
    goto LABEL_10;
  }

  v12 = _NRCopyLogObjectForNRUUID();
  v13 = _NRLogIsLevelEnabled();

  if (v13)
  {
    v14 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v14, 17, "Device is not eligible for migration or graduation!");
  }

  if (v8)
  {
    (*(v8 + 2))(v8, v6, 0);
  }

LABEL_15:
}

void sub_100174F88(id *a1)
{
  v2 = objc_alloc_init(NRDLDPairingInfo);
  if (!v2)
  {
    v46 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v48 = sub_10015B480();
      _NRLogWithArgs(v48, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nrdldPairingInfo) != ((void*)0)", "", "+[NRDLocalDevice updatePairingInfoToKeychain:cbPairingInfoDict:completionBlock:]_block_invoke", 5008);
    }

    v3 = _os_log_pack_size();
    a1 = (&v61 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
    v49 = __error();
    v50 = _os_log_pack_fill(a1, v3, *v49, &_mh_execute_header, "%{public}s Assertion Failed: (nrdldPairingInfo) != ((void*)0)");
    *v50 = 136446210;
    *(v50 + 4) = "+[NRDLocalDevice updatePairingInfoToKeychain:cbPairingInfoDict:completionBlock:]_block_invoke";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_50;
  }

  v3 = v2;
  if (*(a1 + 56))
  {
    v4 = @"kCBMsgArgLocalIRK";
  }

  else
  {
    v4 = @"kCBMsgArgRemoteIRK";
  }

  v5 = [a1[4] objectForKeyedSubscript:v4];
  v6 = *(v3 + 8);
  *(v3 + 8) = v5;

  if (!*(v3 + 8))
  {
LABEL_50:
    v51 = sub_10015B480();
    v52 = _NRLogIsLevelEnabled();

    if (!v52)
    {
      goto LABEL_57;
    }

    v53 = sub_10015B480();
    _NRLogWithArgs(v53, 17, "%s called with null nrdldPairingInfo.irkData");
    goto LABEL_56;
  }

  if (*(a1 + 56))
  {
    v7 = @"kCBMsgArgAddressString";
  }

  else
  {
    v7 = @"kCBMsgArgRemoteAddress";
  }

  v8 = [a1[4] objectForKeyedSubscript:v7];
  v9 = *(v3 + 16);
  *(v3 + 16) = v8;

  if (!*(v3 + 16))
  {
    v54 = sub_10015B480();
    v55 = _NRLogIsLevelEnabled();

    if (!v55)
    {
      goto LABEL_57;
    }

    v53 = sub_10015B480();
    _NRLogWithArgs(v53, 17, "%s called with null nrdldPairingInfo.remoteAddress");
    goto LABEL_56;
  }

  if (a1[7])
  {
    v10 = &off_100209F20;
  }

  else
  {
    v10 = [a1[4] objectForKeyedSubscript:@"kCBMsgArgRemoteAddressType"];
  }

  v11 = *(v3 + 24);
  *(v3 + 24) = v10;

  if (*(v3 + 24))
  {
    arc4random_buf(__buf, 0x40uLL);
    v12 = [[NSData alloc] initWithBytes:__buf length:64];
    v13 = a1[5];
    v14 = v12;
    objc_opt_self();
    if (v14)
    {
      v15 = sub_100163B2C(NRDLocalDevice, v13, 0);
      if (v15)
      {
        v62 = v14;
        v16 = [NSMutableData _newZeroingDataWithBytes:0 length:0];
        v17 = v15[10];
        if (v17)
        {
          v18 = v17[3];
          v19 = v18;
          if (v18)
          {
            v20 = v18[2];
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v19 = 0;
          v20 = 0;
        }

        v21 = v17;
        [v16 appendData:v20];

        v22 = v15[9];
        if (v22)
        {
          v23 = v22[3];
          v24 = v23;
          if (v23)
          {
            v25 = v23[2];
          }

          else
          {
            v25 = 0;
          }
        }

        else
        {
          v24 = 0;
          v25 = 0;
        }

        v26 = v22;
        [v16 appendData:v25];

        v27 = [@"key-for-terminusd-migration" dataUsingEncoding:4];
        v14 = v62;
        v28 = sub_10013EBBC(v16, v62, v27);
      }

      else
      {
        v29 = _NRCopyLogObjectForNRUUID();
        v30 = _NRLogIsLevelEnabled();

        if (!v30)
        {
          v15 = 0;
          v28 = 0;
          goto LABEL_26;
        }

        v16 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v16, 1, "%s%.30s:%-4d local device not found", "", "+[NRDLocalDevice pairingInfoSharedSecretForNRUUID:salt:]", 4972);
        v28 = 0;
      }
    }

    else
    {
      v59 = sub_10015B480();
      v60 = _NRLogIsLevelEnabled();

      if (!v60)
      {
        v28 = 0;
        goto LABEL_27;
      }

      v15 = sub_10015B480();
      _NRLogWithArgs(v15, 17, "%s called with null salt", "+[NRDLocalDevice pairingInfoSharedSecretForNRUUID:salt:]");
      v28 = 0;
    }

LABEL_26:

LABEL_27:
    v31 = *(v3 + 32);
    *(v3 + 32) = v28;

    objc_storeStrong((v3 + 40), v12);
    v63 = 0;
    v32 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v63];
    v33 = v63;
    v34 = v33;
    if (!v32 || v33)
    {
      v40 = _NRCopyLogObjectForNRUUID();
      v41 = _NRLogIsLevelEnabled();

      if (v41)
      {
        v42 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v42, 16, "%s%.30s:%-4d Failed to archive NRDLDPairingInfo: %@ error: %@", "", "+[NRDLocalDevice updatePairingInfoToKeychain:cbPairingInfoDict:completionBlock:]_block_invoke", 5047, v3, v34);
      }

      v43 = a1[6];
      if (!v43)
      {
        goto LABEL_44;
      }

      v44 = *(v43 + 2);
      goto LABEL_43;
    }

    objc_opt_self();
    if (qword_1002294C8 != -1)
    {
      dispatch_once(&qword_1002294C8, &stru_1001FD250);
    }

    v35 = qword_1002294C0;
    v36 = sub_1001825C0(v35, v32, @"LocalDevicePairingInfo", a1[5], 3, 0, 1);

    v37 = _NRCopyLogObjectForNRUUID();
    v38 = _NRLogIsLevelEnabled();

    if (v36)
    {
      if (v38)
      {
        v39 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v39, 0, "%s%.30s:%-4d Successfully updated NRDLDPairingInfo:%@ to keychain", "", "+[NRDLocalDevice updatePairingInfoToKeychain:cbPairingInfoDict:completionBlock:]_block_invoke", 5061, v3);
LABEL_40:
      }
    }

    else if (v38)
    {
      v39 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v39, 0, "%s%.30s:%-4d Failed to save NRDLDPairingInfo:%@ to keychain", "", "+[NRDLocalDevice updatePairingInfoToKeychain:cbPairingInfoDict:completionBlock:]_block_invoke", 5063, v3);
      goto LABEL_40;
    }

    v45 = a1[6];
    if (!v45)
    {
LABEL_44:

      goto LABEL_45;
    }

    v44 = *(v45 + 2);
LABEL_43:
    v44();
    goto LABEL_44;
  }

  v56 = sub_10015B480();
  v57 = _NRLogIsLevelEnabled();

  if (v57)
  {
    v53 = sub_10015B480();
    _NRLogWithArgs(v53, 17, "%s called with null nrdldPairingInfo.remoteAddressType");
LABEL_56:
  }

LABEL_57:
  v58 = a1[6];
  if (v58)
  {
    v58[2](v58, a1[5], 0);
  }

LABEL_45:
}

void sub_1001756C0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  v7 = sub_100003490();
  dispatch_assert_queue_V2(v7);

  if (!v5)
  {
    v18 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v20 = sub_10015B480();
      _NRLogWithArgs(v20, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nrUUID) != ((void*)0)", "", "+[NRDLocalDevice updateIDSDeviceID:nrUUID:]", 5075);
    }

    v21 = _os_log_pack_size();
    v22 = __error();
    v23 = _os_log_pack_fill(&v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v21, *v22, &_mh_execute_header, "%{public}s Assertion Failed: (nrUUID) != ((void*)0)");
    *v23 = 136446210;
    *(v23 + 4) = "+[NRDLocalDevice updateIDSDeviceID:nrUUID:]";
LABEL_23:
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v8 = sub_100163B2C(v6, v5, 0);
  if (!v8)
  {
    v24 = sub_10015B480();
    v25 = _NRLogIsLevelEnabled();

    if (v25)
    {
      v26 = sub_10015B480();
      _NRLogWithArgs(v26, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice updateIDSDeviceID:nrUUID:]", 5077);
    }

    v27 = _os_log_pack_size();
    v28 = __error();
    v29 = _os_log_pack_fill(&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v27, *v28, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v29 = 136446210;
    *(v29 + 4) = "+[NRDLocalDevice updateIDSDeviceID:nrUUID:]";
    goto LABEL_23;
  }

  v9 = v8;
  if (([*(v8 + 40) isEqualToString:v4] & 1) == 0)
  {
    [v9 setIdsDeviceID:v4];
    v10 = objc_opt_self();
    sub_1001629FC(v10, 0);
    v11 = [v9[18] usesTLS];
    if (v11)
    {
      sub_10005674C(v11);
    }

    if (qword_100229478)
    {
      v12 = [qword_100229478 objectForKeyedSubscript:v5];

      if (v12)
      {
        v13 = [qword_100229478 objectForKeyedSubscript:v5];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v31;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v31 != v16)
              {
                objc_enumerationMutation(v13);
              }

              (*(*(*(&v30 + 1) + 8 * i) + 16))();
            }

            v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v15);
        }

        [qword_100229478 setObject:0 forKeyedSubscript:v5];
      }
    }
  }
}

void sub_100175E70(uint64_t a1)
{
  if (a1 && sub_100026878(*(a1 + 112)) && *(a1 + 64))
  {
    if (*(a1 + 39))
    {
      v2 = sub_10016C8BC(NRDLocalDevice);
    }

    else
    {
      v2 = sub_10016CD90(NRDLocalDevice);
    }

    v3 = v2;
    v4 = sub_10016CBA0(NRDLocalDevice);
    if ([v3 count] || objc_msgSend(v4, "count"))
    {
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v5 = qword_1002290B8;
      if (v5 && (v6 = v5[6], v5, v6 >= 0x1E))
      {
        v7 = &dispatch_group_enter_ptr;
        if ([v3 count])
        {
          v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v9 = v3;
          v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v30;
            do
            {
              for (i = 0; i != v11; i = i + 1)
              {
                if (*v30 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v29 + 1) + 8 * i);
                v15 = sub_100163A30(NRDLocalDevice, v14);
                if (sub_100172D94(v15))
                {
                  [v8 addObject:v14];
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
            }

            while (v11);
          }

          v7 = &dispatch_group_enter_ptr;
        }

        else
        {
          v8 = v3;
        }

        if ([v4 count])
        {
          v16 = [objc_alloc(v7[499]) initWithCapacity:{objc_msgSend(v4, "count")}];
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v17 = v4;
          v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v26;
            do
            {
              for (j = 0; j != v19; j = j + 1)
              {
                if (*v26 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v25 + 1) + 8 * j);
                v23 = sub_100163A30(NRDLocalDevice, v22);
                if (sub_100172D94(v23))
                {
                  [v16 addObject:v22];
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v19);
          }
        }

        else
        {
          v16 = v4;
        }

        if (![v8 count] && !objc_msgSend(v16, "count"))
        {
          if (qword_1002294A8 != -1)
          {
            dispatch_once(&qword_1002294A8, &stru_1001FD210);
          }

          if (_NRLogIsLevelEnabled())
          {
            v24 = sub_1001762F4();
            _NRLogWithArgs(v24, 0, "%s%.30s:%-4d Deferring creating AWDL links due to critical thermal conditions", "", "[NRLinkManagerWiFi createAWDLLinkIfApplicable]", 1491);
          }

          goto LABEL_52;
        }

        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002294A8 != -1)
          {
            dispatch_once(&qword_1002294A8, &stru_1001FD210);
          }

          _NRLogWithArgs(qword_1002294A0, 0, "%s%.30s:%-4d Creating only necessary AWDL links due to critical thermal conditions", "", "[NRLinkManagerWiFi createAWDLLinkIfApplicable]", 1494);
        }
      }

      else
      {
        v16 = v4;
        v8 = v3;
      }

      sub_100176348(a1, v8);
      sub_100176348(a1, v16);
    }

    else
    {
      v16 = v4;
      v8 = v3;
    }

LABEL_52:
  }
}

id sub_1001762F4()
{
  if (qword_1002294A8 != -1)
  {
    dispatch_once(&qword_1002294A8, &stru_1001FD210);
  }

  v1 = qword_1002294A0;

  return v1;
}

void sub_100176348(id *a1, void *a2)
{
  v3 = a2;
  if (sub_100026878(a1[14]) && a1[8])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v37 = v3;
    obj = v3;
    v40 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v40)
    {
      v39 = *v46;
      do
      {
        for (i = 0; i != v40; i = i + 1)
        {
          if (*v46 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v45 + 1) + 8 * i);
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v6 = a1[19];
          v7 = [v6 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v42;
LABEL_15:
            v10 = 0;
            while (1)
            {
              if (*v42 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v41 + 1) + 8 * v10);
              if ([v11 subtype] == 102)
              {
                v12 = [v11 nrUUID];
                v13 = [v12 isEqual:v5];

                if (v13)
                {
                  break;
                }
              }

              if (v8 == ++v10)
              {
                v8 = [v6 countByEnumeratingWithState:&v41 objects:v49 count:16];
                if (!v8)
                {
                  goto LABEL_22;
                }

                goto LABEL_15;
              }
            }
          }

          else
          {
LABEL_22:

            v14 = a1[14];
            v15 = v14;
            if (v14)
            {
              v16 = *(v14 + 9);
            }

            else
            {
              v16 = 0;
            }

            v17 = v16;
            v18 = [v17 objectForKeyedSubscript:v5];

            v6 = [v18 firstObject];

            if (v6)
            {
              v19 = [v6 addressFamily];
              if (v19 == [a1[8] addressFamily])
              {
                v20 = sub_100163A30(NRDLocalDevice, v5);
                v21 = v20;
                if (v20)
                {
                  v22 = *(v20 + 144);
                  v23 = [v22 allowedLinkTypes];
                  if ([v23 containsObject:&off_100209F38])
                  {
                    v24 = v21[18];
                    v25 = [v24 allowedLinkSubtypes];
                    v26 = [v25 containsObject:&off_100209F80];

                    if (v26)
                    {
                      if (*(v21 + 11) == 1)
                      {
                        if (qword_1002294A8 != -1)
                        {
                          dispatch_once(&qword_1002294A8, &stru_1001FD210);
                        }

                        if (_NRLogIsLevelEnabled())
                        {
                          if (qword_1002294A8 != -1)
                          {
                            dispatch_once(&qword_1002294A8, &stru_1001FD210);
                          }

                          _NRLogWithArgs(qword_1002294A0, 0, "%s%.30s:%-4d Deferring creating link for %@ as link suspension is in effect for non-nearby links", "", "[NRLinkManagerWiFi createAWDLLinkForNRUUIDs:]", 1427, v21);
                        }
                      }

                      else
                      {
                        WeakRetained = objc_loadWeakRetained(a1 + 2);
                        v29 = [WeakRetained perpetualStandaloneMeadowEnabledForNRUUID:v5];

                        if (v29)
                        {
                          if (qword_1002294A8 != -1)
                          {
                            dispatch_once(&qword_1002294A8, &stru_1001FD210);
                          }

                          if (_NRLogIsLevelEnabled())
                          {
                            if (qword_1002294A8 != -1)
                            {
                              dispatch_once(&qword_1002294A8, &stru_1001FD210);
                            }

                            _NRLogWithArgs(qword_1002294A0, 0, "%s%.30s:%-4d Deferring creating link for %@ as device is in perpetual standalone Meadow mode", "", "[NRLinkManagerWiFi createAWDLLinkForNRUUIDs:]", 1433, v21);
                          }
                        }

                        else
                        {
                          v30 = [NRLinkAWDL alloc];
                          v31 = a1[3];
                          v32 = a1[14];
                          if (v32)
                          {
                            v32 = v32[3];
                          }

                          v33 = v32;
                          v34 = a1[8];
                          v35 = [v34 port];
                          v36 = [(NRLinkAWDL *)v30 initLinkWithQueue:v31 linkDelegate:a1 nrUUID:v5 wifiInterfaceName:v33 localOuterEndpoint:v34 remoteOuterEndpoint:v6 listenerPortString:v35];

                          if (!v36)
                          {
                            [a1 reportEvent:3201];
                          }
                        }
                      }

LABEL_8:

                      goto LABEL_9;
                    }
                  }

                  else
                  {
                  }
                }

                if (qword_1002294A8 != -1)
                {
                  dispatch_once(&qword_1002294A8, &stru_1001FD210);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_1002294A8 != -1)
                  {
                    dispatch_once(&qword_1002294A8, &stru_1001FD210);
                  }

                  _NRLogWithArgs(qword_1002294A0, 0, "%s%.30s:%-4d Deferring creating link for %@ as AWDL is unsupported", "", "[NRLinkManagerWiFi createAWDLLinkForNRUUIDs:]", 1422, v21);
                }

                goto LABEL_8;
              }

              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_1002294A8 != -1)
                {
                  dispatch_once(&qword_1002294A8, &stru_1001FD210);
                }

                v27 = a1[8];
                v21 = qword_1002294A0;
                _NRLogWithArgs(v21, 0, "%s%.30s:%-4d Deferring creating link as the address families do not match: %@/%@", "", "[NRLinkManagerWiFi createAWDLLinkForNRUUIDs:]", 1410, v27, v6);
                goto LABEL_8;
              }
            }

            else
            {
              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_1002294A8 != -1)
                {
                  dispatch_once(&qword_1002294A8, &stru_1001FD210);
                }

                _NRLogWithArgs(qword_1002294A0, 0, "%s%.30s:%-4d Deferring creating link as the peer AWDL endpoint is unavailable", "", "[NRLinkManagerWiFi createAWDLLinkForNRUUIDs:]", 1414);
                v6 = 0;
              }

              else
              {
                v6 = 0;
              }
            }
          }

LABEL_9:
        }

        v40 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v40);
    }

    v3 = v37;
  }
}

void sub_100176A78(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002294A0;
  qword_1002294A0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100176C74(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = WeakRetained;
  [WeakRetained linkDidReceiveData:a1[5] data:a1[6]];
}

void sub_100176EC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained linkIsUnavailable:*(a1 + 40)];

  if ([*(a1 + 40) subtype] == 101 && (v4 = *(a1 + 32)) != 0 && sub_100026878(*(v4 + 104)))
  {
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      _NRLogWithArgs(qword_1002294A0, 1, "%s%.30s:%-4d Forcing interface availability event, as the underlying transport is still available", "", "[NRLinkManagerWiFi linkIsUnavailable:]_block_invoke", 502);
    }

    v5 = *(a1 + 32);

    sub_1001771D0(v5);
  }

  else if ([*(a1 + 40) subtype] == 102 && (v6 = *(a1 + 32)) != 0 && sub_100026878(*(v6 + 112)))
  {
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      _NRLogWithArgs(qword_1002294A0, 1, "%s%.30s:%-4d Forcing interface availability event, as the underlying transport is still available", "", "[NRLinkManagerWiFi linkIsUnavailable:]_block_invoke", 505);
    }

    v7 = *(a1 + 32);

    sub_100175E70(v7);
  }

  else if ([*(a1 + 40) subtype] == 104)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      if (sub_100026878(*(v8 + 128)))
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002294A8 != -1)
          {
            dispatch_once(&qword_1002294A8, &stru_1001FD210);
          }

          _NRLogWithArgs(qword_1002294A0, 1, "%s%.30s:%-4d Forcing interface availability event, as the underlying transport is still available", "", "[NRLinkManagerWiFi linkIsUnavailable:]_block_invoke", 508);
        }

        v9 = *(a1 + 32);

        sub_100177B24(v9);
      }
    }
  }
}

void sub_1001771D0(uint64_t a1)
{
  if (!a1 || !sub_100026878(*(a1 + 104)) || !*(a1 + 56))
  {
    return;
  }

  v52 = sub_10016CD90(NRDLocalDevice);
  if ([v52 count])
  {
    v2 = v52;
    v3 = *(a1 + 24);
    dispatch_assert_queue_V2(v3);

    if (!*(a1 + 216))
    {
      objc_opt_self();
      if (sub_100026878(*(a1 + 104)))
      {
        if (*(a1 + 56))
        {
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = v2;
          v4 = v2;
          v5 = [v4 countByEnumeratingWithState:&v53 objects:v57 count:16];
          if (v5)
          {
            v6 = v5;
            v7 = *v54;
LABEL_13:
            v8 = 0;
            while (1)
            {
              if (*v54 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = sub_100163A30(NRDLocalDevice, *(*(&v53 + 1) + 8 * v8));
              v10 = v9;
              v11 = v9 ? *(v9 + 144) : 0;
              v12 = v11;

              if (v12)
              {
                v13 = v10 ? v10[18] : 0;
                v14 = v13;
                v15 = [v14 allowsDirectToCloud];

                if (v15)
                {
                  break;
                }
              }

              if (v6 == ++v8)
              {
                v6 = [v4 countByEnumeratingWithState:&v53 objects:v57 count:16];
                if (!v6)
                {
                  goto LABEL_28;
                }

                goto LABEL_13;
              }
            }

            v16 = *(a1 + 216);
            if (v16)
            {
              v2 = v51;
            }

            else
            {
              v17 = [NRDirectToCloudAgent alloc];
              v18 = *(a1 + 24);
              v19 = sub_10007C284(&v17->super.isa, v18);
              v20 = *(a1 + 216);
              *(a1 + 216) = v19;

              [a1 reportEvent:14001];
              v16 = *(a1 + 216);
              v2 = v51;
              if (!v16)
              {
                goto LABEL_82;
              }
            }

            dispatch_assert_queue_V2(*(v16 + 32));
            if (*(v16 + 14))
            {
              goto LABEL_74;
            }

            if (qword_100229060 != -1)
            {
              dispatch_once(&qword_100229060, &stru_1001FAF50);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_100229060 != -1)
              {
                dispatch_once(&qword_100229060, &stru_1001FAF50);
              }

              v21 = qword_100229058;
              v22 = [v16 agentDescription];
              _NRLogWithArgs(v21, 0, "%s%.30s:%-4d registerAgent: %@", "", "[NRDirectToCloudAgent registerAgent]", 103, v22);
            }

            v23 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
            v24 = *(v16 + 40);
            *(v16 + 40) = v23;

            if (*(v16 + 40))
            {
              objc_opt_self();
              if (qword_1002290C0 != -1)
              {
                dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
              }

              v25 = qword_1002290B8;
              v26 = v25;
              if (v25)
              {
                v27 = v25[6];
                v28 = v27;
                if (v27)
                {
                  v29 = v27[13];
                  if (v29)
                  {
                    v29 = v29[3];
                  }

                  v27 = v29;
                }
              }

              else
              {
                v28 = 0;
                v27 = 0;
              }

              v30 = *(v16 + 48);
              *(v16 + 48) = v27;

              if (*(v16 + 48))
              {
                if ([*(v16 + 40) registerNetworkAgent:v16])
                {
                  *(v16 + 14) = 1;
                  [v16 setActive:1];
                  [*(v16 + 40) updateNetworkAgent:v16];
                  objc_opt_self();
                  v31 = [NEPolicyCondition clientFlags:0x20000000];
                  v32 = *(v16 + 48);
                  v33 = [NEPolicyRouteRule routeRuleWithAction:5 forInterfaceName:v32];

                  v34 = [v16 agentUUID];
                  [v33 setNetworkAgentUUID:v34];

                  v35 = [NEPolicy alloc];
                  v49 = v33;
                  v59 = v33;
                  v36 = [NSArray arrayWithObjects:&v59 count:1];
                  v37 = [NEPolicyResult routeRules:v36];
                  v38 = +[NEPolicyCondition allInterfaces];
                  v58[0] = v38;
                  v58[1] = v31;
                  v50 = v31;
                  v39 = [NSArray arrayWithObjects:v58 count:2];
                  v40 = [v35 initWithOrder:10 result:v37 conditions:v39];

                  objc_opt_self();
                  if (qword_100229410 != -1)
                  {
                    dispatch_once(&qword_100229410, &stru_1001FCD98);
                  }

                  v2 = v51;
                  v41 = qword_100229408;
                  v42 = sub_100159E00(v41, *(v16 + 72), v40);

                  objc_opt_self();
                  if (qword_100229410 != -1)
                  {
                    dispatch_once(&qword_100229410, &stru_1001FCD98);
                  }

                  v43 = qword_100229408;
                  sub_10015A52C(v43);

                  sub_1000059A8(0, 14002, 0, 0);
                }

                else
                {
                  if (qword_100229060 != -1)
                  {
                    dispatch_once(&qword_100229060, &stru_1001FAF50);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_100229060 != -1)
                    {
                      dispatch_once(&qword_100229060, &stru_1001FAF50);
                    }

                    _NRLogWithArgs(qword_100229058, 17, "unable register network agent");
                  }
                }
              }

              else
              {
                if (qword_100229060 != -1)
                {
                  dispatch_once(&qword_100229060, &stru_1001FAF50);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_100229060 != -1)
                  {
                    dispatch_once(&qword_100229060, &stru_1001FAF50);
                  }

                  _NRLogWithArgs(qword_100229058, 17, "unable to find the WiFi interface");
                }
              }
            }

            else
            {
              if (qword_100229060 != -1)
              {
                dispatch_once(&qword_100229060, &stru_1001FAF50);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_100229060 != -1)
                {
                  dispatch_once(&qword_100229060, &stru_1001FAF50);
                }

                _NRLogWithArgs(qword_100229058, 17, "unable to allocate registration object");
              }
            }

            if (*(v16 + 14) & 1) != 0 || (v44 = *(v16 + 40)) != 0 && ([v44 unregisterNetworkAgent], v45 = *(v16 + 40), *(v16 + 40) = 0, v45, (*(v16 + 14)))
            {
LABEL_74:
              if (*(a1 + 216) && *(a1 + 44) == -1)
              {
                v46 = notify_register_check([@"AvoidCompanionSupported" UTF8String], (a1 + 44));
                if (v46 || *(a1 + 44) == -1)
                {
                  if (qword_1002294A8 != -1)
                  {
                    dispatch_once(&qword_1002294A8, &stru_1001FD210);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_1002294A8 != -1)
                    {
                      dispatch_once(&qword_1002294A8, &stru_1001FD210);
                    }

                    _NRLogWithArgs(qword_1002294A0, 17, "notify_register_check(%u) failed", v46);
                  }
                }

                else
                {
                  sub_1001795E4(a1, 1);
                }
              }

              goto LABEL_89;
            }

LABEL_82:
            if (qword_1002294A8 != -1)
            {
              dispatch_once(&qword_1002294A8, &stru_1001FD210);
            }

            if (_NRLogIsLevelEnabled())
            {
              v47 = sub_1001762F4();
              _NRLogWithArgs(v47, 17, "Failed to register direct-to-cloud agent");
            }

            sub_100178760(a1);
            goto LABEL_89;
          }

LABEL_28:

          sub_100178760(a1);
          v2 = v51;
        }
      }
    }

LABEL_89:

    goto LABEL_90;
  }

  sub_100178760(a1);
LABEL_90:
  sub_10017880C(a1, v52);
  v48 = sub_10016CBA0(NRDLocalDevice);
  if ([v48 count])
  {
    sub_10017880C(a1, v48);
  }
}

void sub_100177B24(uint64_t a1)
{
  if (a1 && sub_100026878(*(a1 + 128)))
  {
    v3 = sub_10016CD90(NRDLocalDevice);
    sub_100177BC8(a1, v3);
    v2 = sub_10016CBA0(NRDLocalDevice);
    if ([v2 count])
    {
      sub_100177BC8(a1, v2);
    }
  }
}

void sub_100177BC8(uint64_t a1, void *a2)
{
  v64 = a2;
  if (sub_100026878(*(a1 + 128)))
  {
    v65 = objc_alloc_init(NSMutableArray);
    v3 = *(a1 + 128);
    if (v3)
    {
      v3 = v3[7];
    }

    v4 = v3;
    v5 = [v4 count];

    if (v5)
    {
      v6 = *(a1 + 128);
      if (v6)
      {
        v6 = v6[7];
      }

      v7 = v6;
      [v65 addObjectsFromArray:v7];
    }

    v8 = *(a1 + 128);
    if (v8)
    {
      v8 = v8[8];
    }

    v9 = v8;
    v10 = [v9 count];

    if (v10)
    {
      v11 = *(a1 + 128);
      if (v11)
      {
        v11 = v11[8];
      }

      v12 = v11;
      [v65 addObjectsFromArray:v12];
    }

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v13 = v64;
    v69 = [v13 countByEnumeratingWithState:&v94 objects:v101 count:16];
    if (v69)
    {
      v68 = *v95;
      v76 = a1;
      v66 = v13;
      do
      {
        v14 = 0;
        do
        {
          if (*v95 != v68)
          {
            objc_enumerationMutation(v13);
          }

          v80 = *(*(&v94 + 1) + 8 * v14);
          v16 = sub_100163A30(NRDLocalDevice, v80);
          v71 = v14;
          if (v16)
          {
            v17 = v16;
            v18 = *(v16 + 144);
          }

          else
          {
            v17 = 0;
            v18 = 0;
          }

          v19 = v18;
          v20 = [v19 allowedLinkSubtypes];
          v21 = [v20 containsObject:&off_100209F68];

          v15 = v17;
          if (v21)
          {
            if (v17 && v17[11] == 1)
            {
              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_1002294A8 != -1)
                {
                  dispatch_once(&qword_1002294A8, &stru_1001FD210);
                }

                _NRLogWithArgs(qword_1002294A0, 0, "%s%.30s:%-4d Deferring creating link for %@ as link suspension is in effect for non-nearby links", "", "[NRLinkManagerWiFi createIRLinkForNRUUIDs:]", 1211, v17);
              }
            }

            else
            {
              v22 = sub_10013FF60(v17) == 1;
              v67 = v17;
              v23 = sub_100169428(v17);
              v24 = *(a1 + 128);
              v25 = v24;
              if (v24)
              {
                v26 = *(v24 + 9);
              }

              else
              {
                v26 = 0;
              }

              v27 = v26;
              v28 = [v27 objectForKeyedSubscript:v80];

              v74 = v28;
              if ([v28 count])
              {
                v29 = v22 & ~v23;
                if (v29)
                {
                  v30 = 0;
                  v31 = &dispatch_group_enter_ptr;
                }

                else
                {
                  v92 = 0u;
                  v93 = 0u;
                  v90 = 0u;
                  v91 = 0u;
                  v32 = *(a1 + 152);
                  v33 = [v32 countByEnumeratingWithState:&v90 objects:v100 count:16];
                  if (v33)
                  {
                    v34 = v33;
                    v35 = *v91;
                    do
                    {
                      for (i = 0; i != v34; i = i + 1)
                      {
                        if (*v91 != v35)
                        {
                          objc_enumerationMutation(v32);
                        }

                        v37 = *(*(&v90 + 1) + 8 * i);
                        if ([v37 subtype] == 104)
                        {
                          v38 = [v37 nrUUID];
                          v39 = [v38 isEqual:v80];

                          if (v39)
                          {
                            if ([v37 state] != 255)
                            {
                              v30 = 1;
                              goto LABEL_51;
                            }
                          }
                        }
                      }

                      v34 = [v32 countByEnumeratingWithState:&v90 objects:v100 count:16];
                    }

                    while (v34);
                  }

                  v30 = 0;
LABEL_51:

                  v31 = &dispatch_group_enter_ptr;
                }

                v88 = 0u;
                v89 = 0u;
                v86 = 0u;
                v87 = 0u;
                obj = v65;
                v73 = [obj countByEnumeratingWithState:&v86 objects:v99 count:16];
                if (!v73)
                {
                  goto LABEL_18;
                }

                v72 = *v87;
                v77 = v29;
LABEL_54:
                v40 = 0;
                while (1)
                {
                  if (*v87 != v72)
                  {
                    objc_enumerationMutation(obj);
                  }

                  if (!(v29 & 1 | ((v30 & 1) == 0)))
                  {
                    goto LABEL_18;
                  }

                  v75 = v40;
                  v41 = [v31[233] endpointWithHostname:*(*(&v86 + 1) + 8 * v40) port:@"0"];
                  v82 = 0u;
                  v83 = 0u;
                  v84 = 0u;
                  v85 = 0u;
                  v79 = v74;
                  v42 = [v79 countByEnumeratingWithState:&v82 objects:v98 count:16];
                  if (v42)
                  {
                    break;
                  }

LABEL_55:

                  v40 = v75 + 1;
                  if ((v75 + 1) == v73)
                  {
                    v73 = [obj countByEnumeratingWithState:&v86 objects:v99 count:16];
                    if (!v73)
                    {
LABEL_18:

                      goto LABEL_19;
                    }

                    goto LABEL_54;
                  }
                }

                v43 = v42;
                v44 = *v83;
                while (2)
                {
                  v45 = 0;
                  v78 = v43;
LABEL_66:
                  if (*v83 != v44)
                  {
                    objc_enumerationMutation(v79);
                  }

                  if (!(v29 & 1 | ((v30 & 1) == 0)))
                  {
                    goto LABEL_55;
                  }

                  v47 = *(*(&v82 + 1) + 8 * v45);
                  if (![a1 endpointsAreCompatible:v41 remoteEndpoint:v47])
                  {
                    goto LABEL_65;
                  }

                  v48 = v31[233];
                  v49 = [v47 hostname];
                  objc_opt_self();
                  v81 = v30;
                  if (qword_100228E88 != -1)
                  {
                    dispatch_once(&qword_100228E88, &stru_1001FA180);
                  }

                  v50 = qword_100228E80;
                  v51 = @"62743";
                  if (!v50)
                  {
                    v51 = 0;
                  }

                  v52 = v51;
                  v53 = [v48 endpointWithHostname:v49 port:v52];

                  v54 = objc_opt_class();
                  v46 = sub_1001783C0(a1, v80, v41, v53, v54);
                  if (!v46)
                  {
                    v55 = [NRLinkInfraRelay alloc];
                    if (a1)
                    {
                      v56 = *(a1 + 24);
                    }

                    else
                    {
                      v56 = 0;
                    }

                    v57 = v56;
                    v58 = *(a1 + 128);
                    if (v58)
                    {
                      v58 = v58[3];
                    }

                    v59 = v58;
                    objc_opt_self();
                    if (qword_100228E88 != -1)
                    {
                      dispatch_once(&qword_100228E88, &stru_1001FA180);
                    }

                    v60 = qword_100228E80;
                    v61 = @"62743";
                    if (!v60)
                    {
                      v61 = 0;
                    }

                    v62 = v61;
                    v63 = [(NRLinkInfraRelay *)v55 initLinkWithQueue:v57 linkDelegate:v76 nrUUID:v80 wifiInterfaceName:v59 localOuterEndpoint:v41 remoteOuterEndpoint:v53 listenerPortString:v62];

                    if (v63)
                    {
                      v46 = v63;
                      v30 = 1;
                      a1 = v76;
                      v31 = &dispatch_group_enter_ptr;
                      v29 = v77;
LABEL_64:

                      v43 = v78;
LABEL_65:
                      if (v43 == ++v45)
                      {
                        v43 = [v79 countByEnumeratingWithState:&v82 objects:v98 count:16];
                        if (v43)
                        {
                          continue;
                        }

                        goto LABEL_55;
                      }

                      goto LABEL_66;
                    }

                    [v76 reportEvent:3200];
                    v46 = 0;
                    a1 = v76;
                    v31 = &dispatch_group_enter_ptr;
                  }

                  break;
                }

                v29 = v77;
                v30 = v81;
                goto LABEL_64;
              }

LABEL_19:

              v13 = v66;
              v15 = v67;
            }
          }

          v14 = v71 + 1;
        }

        while ((v71 + 1) != v69);
        v69 = [v13 countByEnumeratingWithState:&v94 objects:v101 count:16];
      }

      while (v69);
    }
  }
}

id sub_1001783C0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v40 = a2;
  v8 = a3;
  v9 = a4;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = *(a1 + 152);
  v11 = [v10 countByEnumeratingWithState:&v41 objects:v45 count:16];
  v38 = v9;
  v39 = v8;
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
    if (v8)
    {
LABEL_6:
      v14 = 0;
      while (1)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v41 + 1) + 8 * v14);
        if (objc_opt_isKindOfClass())
        {
          v16 = [v15 nrUUID];
          v17 = [v16 isEqual:v40];

          if (v17)
          {
            v18 = [v15 localOuterEndpoint];
            v19 = [v18 hostname];
            v20 = [v39 hostname];
            v21 = [v19 isEqualToString:v20];

            if (v21)
            {
              if (!v38)
              {
                break;
              }

              v22 = [v15 remoteOuterEndpoint];
              v23 = [v22 hostname];
              v24 = [v38 hostname];
              v25 = [v23 isEqualToString:v24];

              if (v25)
              {
                break;
              }
            }
          }
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v41 objects:v45 count:16];
          if (!v12)
          {
            goto LABEL_25;
          }

          goto LABEL_6;
        }
      }
    }

    else if (v9)
    {
LABEL_17:
      v27 = 0;
      while (1)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v41 + 1) + 8 * v27);
        if (objc_opt_isKindOfClass())
        {
          v28 = [v15 nrUUID];
          v29 = [v28 isEqual:v40];

          if (v29)
          {
            v30 = [v15 remoteOuterEndpoint];
            v31 = [v30 hostname];
            v32 = [v38 hostname];
            v33 = [v31 isEqualToString:v32];

            if (v33)
            {
              break;
            }
          }
        }

        if (v12 == ++v27)
        {
          v12 = [v10 countByEnumeratingWithState:&v41 objects:v45 count:16];
          v26 = 0;
          if (!v12)
          {
            goto LABEL_34;
          }

          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_27:
      v34 = 0;
      while (1)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v41 + 1) + 8 * v34);
        if (objc_opt_isKindOfClass())
        {
          v35 = [v15 nrUUID];
          v36 = [v35 isEqual:v40];

          if (v36)
          {
            break;
          }
        }

        if (v12 == ++v34)
        {
          v12 = [v10 countByEnumeratingWithState:&v41 objects:v45 count:16];
          v26 = 0;
          if (!v12)
          {
            goto LABEL_34;
          }

          goto LABEL_27;
        }
      }
    }

    v26 = v15;
  }

  else
  {
LABEL_25:
    v26 = 0;
  }

LABEL_34:

  return v26;
}

void sub_100178760(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    dispatch_assert_queue_V2(v2);

    v3 = *(a1 + 216);
    if (v3)
    {
      dispatch_assert_queue_V2(*(v3 + 32));
      sub_10007BEA0(v3);
      v4 = *(a1 + 216);
      *(a1 + 216) = 0;

      if (*(a1 + 44) != -1)
      {
        sub_1001795E4(a1, 0);
        notify_cancel(*(a1 + 44));
        *(a1 + 44) = -1;
      }
    }
  }
}

void sub_10017880C(id *a1, void *a2)
{
  v63 = a2;
  if (sub_100026878(a1[13]) && a1[7])
  {
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v3 = v63;
    v67 = [v3 countByEnumeratingWithState:&v91 objects:v98 count:16];
    if (v67)
    {
      v66 = *v92;
      v75 = a1;
      v64 = v3;
      do
      {
        for (i = 0; i != v67; i = i + 1)
        {
          if (*v92 != v66)
          {
            objc_enumerationMutation(v3);
          }

          v5 = *(*(&v91 + 1) + 8 * i);
          v6 = sub_100163A30(NRDLocalDevice, v5);
          v7 = v6;
          if (v6)
          {
            if ((*(v6 + 48) & 2) == 0)
            {
              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_1002294A8 != -1)
                {
                  dispatch_once(&qword_1002294A8, &stru_1001FD210);
                }

                _NRLogWithArgs(qword_1002294A0, 0, "%s%.30s:%-4d Deferring creating link for disabled local device for %@", "", "[NRLinkManagerWiFi createLinkForNRUUIDs:]", 815, v5);
              }

              goto LABEL_8;
            }

            v73 = v6;
            if (a1)
            {
              WeakRetained = objc_loadWeakRetained(a1 + 2);
            }

            else
            {
              WeakRetained = 0;
            }

            v9 = [WeakRetained perpetualStandaloneMeadowEnabledForNRUUID:v5];

            if (v9)
            {
              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              v7 = v73;
              if (_NRLogIsLevelEnabled())
              {
                if (qword_1002294A8 != -1)
                {
                  dispatch_once(&qword_1002294A8, &stru_1001FD210);
                }

                _NRLogWithArgs(qword_1002294A0, 0, "%s%.30s:%-4d Deferring creating link for %@ as device is in perpetual standalone Meadow mode", "", "[NRLinkManagerWiFi createLinkForNRUUIDs:]", 821, v73);
              }

              goto LABEL_8;
            }

            v7 = v73;
            v10 = *(v73 + 144);
            v76 = v5;
            if (v10)
            {
              v11 = v10;
              v12 = *(v73 + 144);
              v13 = [v12 allowedLinkSubtypes];
              if (v13)
              {
                v14 = v13;
                v15 = *(v73 + 144);
                v16 = [v15 allowedLinkTypes];
                if (![v16 containsObject:&off_100209F38])
                {

                  v7 = v73;
LABEL_64:
                  if (qword_1002294A8 != -1)
                  {
                    dispatch_once(&qword_1002294A8, &stru_1001FD210);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_1002294A8 != -1)
                    {
                      dispatch_once(&qword_1002294A8, &stru_1001FD210);
                    }

                    _NRLogWithArgs(qword_1002294A0, 0, "%s%.30s:%-4d Deferring creating link for %@ as Infra is unsupported", "", "[NRLinkManagerWiFi createLinkForNRUUIDs:]", 830, v7);
                  }

                  goto LABEL_8;
                }

                v17 = *(v73 + 144);
                v18 = [v17 allowedLinkSubtypes];
                v77 = [v18 containsObject:&off_100209F50];

                a1 = v75;
                v7 = v73;
                if ((v77 & 1) == 0)
                {
                  goto LABEL_64;
                }
              }

              else
              {

                v7 = v73;
              }
            }

            if (v7[11] == 1)
            {
              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_1002294A8 != -1)
                {
                  dispatch_once(&qword_1002294A8, &stru_1001FD210);
                }

                _NRLogWithArgs(qword_1002294A0, 0, "%s%.30s:%-4d Deferring creating link for %@ as link suspension is in effect for non-nearby links", "", "[NRLinkManagerWiFi createLinkForNRUUIDs:]", 835, v7);
              }
            }

            else
            {
              v69 = sub_10013FF60(v7);
              v19 = sub_100169428(v7);
              v20 = a1[13];
              v21 = v20;
              if (v20)
              {
                v22 = *(v20 + 9);
              }

              else
              {
                v22 = 0;
              }

              v23 = v22;
              v72 = [v23 objectForKeyedSubscript:v5];

              v24 = objc_alloc_init(NSMutableArray);
              v25 = a1[13];
              if (v25)
              {
                v25 = v25[7];
              }

              v26 = v25;
              v27 = [v26 count];

              if (v27)
              {
                v28 = a1[13];
                if (v28)
                {
                  v28 = v28[7];
                }

                v29 = v28;
                [v24 addObjectsFromArray:v29];
              }

              v30 = a1[13];
              if (v30)
              {
                v30 = v30[8];
              }

              v31 = v30;
              v32 = [v31 count];

              if (v32)
              {
                v33 = a1[13];
                if (v33)
                {
                  v33 = v33[8];
                }

                v34 = v33;
                [v24 addObjectsFromArray:v34];
              }

              v78 = (v69 == 1) & ~v19;
              if (v78)
              {
                v35 = 0;
              }

              else
              {
                v89 = 0u;
                v90 = 0u;
                v87 = 0u;
                v88 = 0u;
                v36 = a1[19];
                v37 = [v36 countByEnumeratingWithState:&v87 objects:v97 count:16];
                if (v37)
                {
                  v38 = v37;
                  v39 = *v88;
                  while (2)
                  {
                    for (j = 0; j != v38; j = j + 1)
                    {
                      if (*v88 != v39)
                      {
                        objc_enumerationMutation(v36);
                      }

                      v41 = *(*(&v87 + 1) + 8 * j);
                      if ([v41 subtype] == 101)
                      {
                        v42 = [v41 nrUUID];
                        v43 = [v42 isEqual:v76];

                        if (v43)
                        {
                          if ([v41 state] != 255)
                          {
                            v35 = 1;
                            goto LABEL_81;
                          }
                        }
                      }
                    }

                    v38 = [v36 countByEnumeratingWithState:&v87 objects:v97 count:16];
                    if (v38)
                    {
                      continue;
                    }

                    break;
                  }

                  v35 = 0;
LABEL_81:
                  a1 = v75;
                }

                else
                {
                  v35 = 0;
                }
              }

              v44 = v76;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              obj = v24;
              v7 = v73;
              v71 = [obj countByEnumeratingWithState:&v83 objects:v96 count:16];
              if (v71)
              {
                v70 = *v84;
                v68 = i;
LABEL_86:
                v45 = 0;
                while (1)
                {
                  if (*v84 != v70)
                  {
                    objc_enumerationMutation(obj);
                  }

                  if (!(v78 & 1 | ((v35 & 1) == 0)))
                  {
                    break;
                  }

                  v74 = v45;
                  v47 = [NWAddressEndpoint endpointWithHostname:*(*(&v83 + 1) + 8 * v45) port:@"0"];
                  v79 = 0u;
                  v80 = 0u;
                  v81 = 0u;
                  v82 = 0u;
                  v48 = v72;
                  v49 = [v48 countByEnumeratingWithState:&v79 objects:v95 count:16];
                  if (v49)
                  {
                    v50 = v49;
                    v51 = *v80;
LABEL_94:
                    v52 = 0;
                    while (1)
                    {
                      if (*v80 != v51)
                      {
                        objc_enumerationMutation(v48);
                      }

                      if (!(v78 & 1 | ((v35 & 1) == 0)))
                      {
                        break;
                      }

                      v54 = *(*(&v79 + 1) + 8 * v52);
                      if ([a1 endpointsAreCompatible:v47 remoteEndpoint:v54])
                      {
                        v55 = [v54 hostname];
                        objc_opt_self();
                        if (qword_100228E88 != -1)
                        {
                          dispatch_once(&qword_100228E88, &stru_1001FA180);
                        }

                        v56 = qword_100228E80;
                        v57 = @"62743";
                        if (!v56)
                        {
                          v57 = 0;
                        }

                        v58 = v57;
                        v59 = [NWAddressEndpoint endpointWithHostname:v55 port:v58];

                        v60 = objc_opt_class();
                        a1 = v75;
                        v44 = v76;
                        v53 = sub_1001783C0(v75, v76, v47, v59, v60);
                        if (!v53)
                        {
                          v53 = sub_1001792F0(v75, v76, v47, v59);
                          if (v53)
                          {
                            v35 = 1;
                          }

                          else
                          {
                            [v75 reportEvent:3200];
                            v53 = 0;
                          }
                        }
                      }

                      if (v50 == ++v52)
                      {
                        v50 = [v48 countByEnumeratingWithState:&v79 objects:v95 count:16];
                        if (v50)
                        {
                          goto LABEL_94;
                        }

                        break;
                      }
                    }
                  }

                  v7 = v73;
                  v61 = sub_100169428(v73);
                  if (v69 == 1 && v61 && ![v48 count] || (*(v73 + 48) & 8) != 0)
                  {
                    v62 = sub_1001792F0(a1, v44, v47, 0);
                    i = v68;
                    if (v62)
                    {
                      v35 = 1;
                    }

                    else
                    {
                      [a1 reportEvent:3200];
                      v62 = 0;
                    }

                    v46 = v74;
                  }

                  else
                  {
                    i = v68;
                    v46 = v74;
                  }

                  v45 = v46 + 1;
                  if (v45 == v71)
                  {
                    v71 = [obj countByEnumeratingWithState:&v83 objects:v96 count:16];
                    if (v71)
                    {
                      goto LABEL_86;
                    }

                    break;
                  }
                }
              }

              v3 = v64;
            }
          }

          else
          {
            if (qword_1002294A8 != -1)
            {
              dispatch_once(&qword_1002294A8, &stru_1001FD210);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              _NRLogWithArgs(qword_1002294A0, 0, "%s%.30s:%-4d Deferring creating link for invalid local device for %@", "", "[NRLinkManagerWiFi createLinkForNRUUIDs:]", 810, v5);
            }
          }

LABEL_8:
        }

        v67 = [v3 countByEnumeratingWithState:&v91 objects:v98 count:16];
      }

      while (v67);
    }
  }
}

id sub_1001792F0(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = a1[3];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  dispatch_assert_queue_V2(v11);

  if (v7)
  {
    if (v8)
    {
      if ([a1 shouldCreateLinkForNRUUID:v7])
      {
        if (v9)
        {
          v12 = [v9 hostname];
          objc_opt_self();
          if (qword_100228E88 != -1)
          {
            dispatch_once(&qword_100228E88, &stru_1001FA180);
          }

          v13 = qword_100228E80;
          if (v13)
          {
            v14 = @"62743";
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;
          v16 = [NWAddressEndpoint endpointWithHostname:v12 port:v15];

          v9 = v16;
        }

        v17 = [NRLinkWiFi alloc];
        if (a1)
        {
          v18 = a1[3];
        }

        else
        {
          v18 = 0;
        }

        StringFromNRLinkType = v18;
        v20 = a1[13];
        if (v20)
        {
          v20 = v20[3];
        }

        v21 = v20;
        objc_opt_self();
        if (qword_100228E88 != -1)
        {
          dispatch_once(&qword_100228E88, &stru_1001FA180);
        }

        v22 = qword_100228E80;
        v23 = @"62743";
        if (!v22)
        {
          v23 = 0;
        }

        v24 = v23;
        v25 = [(NRLinkWiFi *)v17 initLinkWithQueue:StringFromNRLinkType linkDelegate:a1 nrUUID:v7 wifiInterfaceName:v21 localOuterEndpoint:v8 remoteOuterEndpoint:v9 listenerPortString:v24];

        goto LABEL_24;
      }

      StringFromNRLinkType = createStringFromNRLinkType();
      [a1 reportEvent:3200 detailsFormat:@"unsupported link type: %@", StringFromNRLinkType];
LABEL_23:
      v25 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v29 = sub_1001762F4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      StringFromNRLinkType = sub_1001762F4();
      _NRLogWithArgs(StringFromNRLinkType, 17, "%s called with null localEndpoint");
      goto LABEL_23;
    }
  }

  else
  {
    v27 = sub_1001762F4();
    v28 = _NRLogIsLevelEnabled();

    if (v28)
    {
      StringFromNRLinkType = sub_1001762F4();
      _NRLogWithArgs(StringFromNRLinkType, 17, "%s called with null nrUUID");
      goto LABEL_23;
    }
  }

  v25 = 0;
LABEL_25:

  return v25;
}

id sub_1001795E4(uint64_t a1, char a2)
{
  result = objc_opt_self();
  if ((a2 & 1) != 0 || (*(a1 + 35) & 1) == 0)
  {
    notify_set_state(*(a1 + 44), 1uLL);
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      _NRLogWithArgs(qword_1002294A0, 0, "%s%.30s:%-4d Setting notify token (%d) state AvoidCompanionSupported: %d", "", "[NRLinkManagerWiFi updateAvoidCompanionStateWithForce:]", 704, *(a1 + 44), 1);
    }

    result = [a1 reportEvent:1031 detailsFormat:@"token: %d, supported: %d", *(a1 + 44), 1];
    *(a1 + 35) = 1;
  }

  return result;
}

void sub_1001798F0(uint64_t a1)
{
  if ([*(a1 + 32) state] == 9)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      WeakRetained = objc_loadWeakRetained((v2 + 16));
    }

    else
    {
      WeakRetained = 0;
    }

    v4 = WeakRetained;
    [WeakRetained linkIsSuspended:*(a1 + 32)];
  }

  else
  {
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      _NRLogWithArgs(qword_1002294A0, 16, "%s%.30s:%-4d %@: link %@ is not in suspended state anymore", "", "[NRLinkManagerWiFi linkIsSuspended:]_block_invoke", 478, *(a1 + 40), *(a1 + 32));
    }
  }
}

void sub_100179BE4(uint64_t a1)
{
  if ([*(a1 + 32) state] == 8)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      WeakRetained = objc_loadWeakRetained((v2 + 16));
    }

    else
    {
      WeakRetained = 0;
    }

    v4 = WeakRetained;
    [WeakRetained linkIsReady:*(a1 + 32)];
  }

  else
  {
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      _NRLogWithArgs(qword_1002294A0, 16, "%s%.30s:%-4d %@: link %@ is not in ready state anymore", "", "[NRLinkManagerWiFi linkIsReady:]_block_invoke", 456, *(a1 + 40), *(a1 + 32));
    }
  }
}

void sub_100179EF8(uint64_t a1)
{
  if ([*(a1 + 32) state] == 1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      WeakRetained = objc_loadWeakRetained((v2 + 16));
    }

    else
    {
      WeakRetained = 0;
    }

    v4 = WeakRetained;
    [WeakRetained linkIsAvailable:*(a1 + 32)];
  }

  else
  {
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      _NRLogWithArgs(qword_1002294A0, 16, "%s%.30s:%-4d %@: link %@ is not in initial state anymore", "", "[NRLinkManagerWiFi linkIsAvailable:]_block_invoke", 427, *(a1 + 40), *(a1 + 32));
    }
  }
}

uint64_t sub_10017A860(uint64_t result, int a2)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 24);
    dispatch_assert_queue_V2(v4);

    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      result = _NRLogWithArgs(qword_1002294A0, 1, "%s%.30s:%-4d Setting prefer Wi-Fi asserts: %d -> %d", "", "[NRLinkManagerWiFi setPreferWiFiAsserts:]", 1928, *(v3 + 40), a2);
    }

    *(v3 + 40) = a2;
  }

  return result;
}

void sub_10017A960(id a1)
{
  v1 = _NRCopySerialQueueAttr();
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  if (!v2)
  {
    v7 = sub_1001762F4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_1001762F4();
      _NRLogWithArgs(v9, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_attr_make_with_qos_class(%u) failed", "", "nr_dispatch_queue_create_with_qos", 208, 25);
    }

    v3 = _os_log_pack_size();
    v10 = &v20 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = __error();
    v12 = _os_log_pack_fill(v10, v3, *v11, &_mh_execute_header, "%{public}s dispatch_queue_attr_make_with_qos_class(%u) failed");
    *v12 = 136446466;
    *(v12 + 4) = "nr_dispatch_queue_create_with_qos";
    *(v12 + 12) = 1024;
    *(v12 + 14) = 25;
    sub_1001762F4();
    _NRLogAbortWithPack();
LABEL_9:
    v13 = sub_1001762F4();
    v14 = _NRLogIsLevelEnabled();

    if (v14)
    {
      v15 = sub_1001762F4();
      _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_create(%s) failed", "", "nr_dispatch_queue_create_with_qos", 212, v3);
    }

    v16 = _os_log_pack_size();
    v17 = &v20 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __error();
    v19 = _os_log_pack_fill(v17, v16, *v18, &_mh_execute_header, "%{public}s dispatch_queue_create(%s) failed");
    *v19 = 136446466;
    *(v19 + 4) = "nr_dispatch_queue_create_with_qos";
    *(v19 + 12) = 2080;
    *(v19 + 14) = v3;
    sub_1001762F4();
    _NRLogAbortWithPack();
  }

  v3 = "terminusd.CoreWiFi";
  v4 = dispatch_queue_create("terminusd.CoreWiFi", v2);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;

  v6 = qword_1002294B8;
  qword_1002294B8 = v5;
}

BOOL sub_10017AE24(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = dispatch_group_create();
  if (qword_1002294B0 != -1)
  {
    dispatch_once(&qword_1002294B0, &stru_1001FD230);
  }

  dispatch_group_async(v3, qword_1002294B8, v2);

  v4 = dispatch_time(0x8000000000000000, 3000000000);
  v5 = dispatch_group_wait(v3, v4);
  if (v5)
  {
    v11 = v5;
    sub_10013C2A8(@"NRLinkManagerWiFi", @"SemaphoreTimeout", @"PerformBlockSync", 0, 0, v6, v7, v8, v12);
    v5 = v11;
  }

  v9 = v5 != 0;

  return v9;
}

uint64_t sub_10017AF00(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10017AF18(uint64_t a1)
{
  v2 = [*(a1 + 32) interfaceName];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_10017AF64(uint64_t a1)
{
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v2 = qword_1002290B8;
  v3 = *(a1 + 32);
  if (v3)
  {
    if (v2)
    {
      v4 = v2[8];
    }

    else
    {
      v4 = 0;
    }

    *(v3 + 39) = v4 & 1;
  }

  v5 = *(a1 + 32);

  sub_10017B004(v5);
}

void sub_10017B004(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_10017B2A4(a1);
    v3 = objc_alloc_init(NSMutableArray);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v28;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v28 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          if (v11)
          {
            v12 = v11[6];
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;

          if (v13)
          {
            if (v11)
            {
              v14 = v11[6];
            }

            else
            {
              v14 = 0;
            }

            v15 = v14;
            [v3 addObject:v15];
          }

          if (v11)
          {
            v16 = v11[4];
          }

          else
          {
            v16 = 0;
          }

          v17 = v16;

          if (v17)
          {
            if (v11)
            {
              v18 = v11[4];
            }

            else
            {
              v18 = 0;
            }

            v19 = v18;
            [v3 addObject:v19];
          }

          if (v11)
          {
            v20 = v11[5];
          }

          else
          {
            v20 = 0;
          }

          v21 = v20;

          if (v21)
          {
            if (v11)
            {
              v9 = v11[5];
            }

            else
            {
              v9 = 0;
            }

            v10 = v9;
            [v3 addObject:v10];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v6);
    }

    if (*(a1 + 136))
    {
      [v3 addObject:?];
    }

    if (SCDynamicStoreSetNotificationKeys(*(a1 + 96), v3, 0))
    {
      v22 = a1;
      v23 = v22;
      if (*(v22 + 3) != 1004)
      {
        sub_10017B338(v22, v3);
      }
    }

    else
    {
      v24 = sub_1001762F4();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_39;
      }

      v23 = sub_1001762F4();
      Error = SCCopyLastError();
      _NRLogWithArgs(v23, 17, "SCDynamicStoreSetNotificationKeys failed: %@", Error);
    }

LABEL_39:
  }
}

void *sub_10017B2A4(void *a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = v2;
  if (a1[13])
  {
    [v2 addObject:?];
  }

  if (a1[14])
  {
    [v3 addObject:?];
  }

  if (a1[15])
  {
    [v3 addObject:?];
  }

  if (a1[16])
  {
    [v3 addObject:?];
  }

  return v3;
}

void sub_10017B338(uint64_t a1, void *a2)
{
  keys = a2;
  if (a1)
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  dispatch_assert_queue_V2(v4);

  v5 = SCDynamicStoreCopyMultiple(*(a1 + 96), keys, 0);
  if (qword_1002294A8 != -1)
  {
    dispatch_once(&qword_1002294A8, &stru_1001FD210);
  }

  v6 = qword_1002294A0;
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    v8 = qword_1002294A0;
    _NRLogWithArgs(v8, 1, "%s%.30s:%-4d SCD update: %@", "", "[NRLinkManagerWiFi processSCDUpdate:]", 2331, v5);
  }

  v168 = v5;
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v202 = 0u;
  obj = sub_10017B2A4(a1);
  v9 = [obj countByEnumeratingWithState:&v199 objects:v211 count:16];
  if (v9)
  {
    v10 = *v200;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v200 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v199 + 1) + 8 * i);
        if (v12)
        {
          v13 = v12[4];
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
        v15 = [(__CFArray *)keys containsObject:v14];

        if (v15)
        {
          if (v12)
          {
            v16 = v12[7];
          }

          else
          {
            v16 = 0;
          }

          v17 = v16;
          [v17 removeAllObjects];
        }

        if (v12)
        {
          v18 = v12[5];
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;
        v20 = [(__CFArray *)keys containsObject:v19];

        if (v20)
        {
          if (v12)
          {
            v21 = v12[8];
          }

          else
          {
            v21 = 0;
          }

          v22 = v21;
          [v22 removeAllObjects];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v199 objects:v211 count:16];
    }

    while (v9);
  }

  v164 = objc_alloc_init(NSMutableArray);
  if (v168 && [(__CFDictionary *)v168 count])
  {
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    v166 = obj;
    v170 = [v166 countByEnumeratingWithState:&v195 objects:v210 count:16];
    if (v170)
    {
      v167 = 0;
      v23 = 0;
      v165 = *v196;
      for (j = *v196; ; j = *v196)
      {
        if (j != v165)
        {
          v25 = v23;
          objc_enumerationMutation(v166);
          v23 = v25;
        }

        v26 = *(*(&v195 + 1) + 8 * v23);
        v169 = v23;
        if (v26)
        {
          v27 = *(v26 + 4);
        }

        else
        {
          v27 = 0;
        }

        v28 = v27;
        v29 = [(__CFArray *)keys containsObject:v28];

        if (v29)
        {
          if (v26)
          {
            v30 = *(v26 + 7);
            [v30 removeAllObjects];

            v31 = *(v26 + 4);
          }

          else
          {
            [0 removeAllObjects];
            v31 = 0;
          }

          v32 = v31;
          v173 = [(__CFDictionary *)v168 objectForKeyedSubscript:v32];

          v33 = [v173 objectForKeyedSubscript:kSCPropNetIPv4Addresses];
          v193 = 0u;
          v194 = 0u;
          v191 = 0u;
          v192 = 0u;
          v34 = v33;
          v35 = [v34 countByEnumeratingWithState:&v191 objects:v209 count:16];
          if (v35)
          {
            v36 = 0;
            v37 = *v192;
            for (k = *v192; ; k = *v192)
            {
              if (k != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = *(*(&v191 + 1) + 8 * v36);
              location = 0;
              v213 = 0;
              if (inet_pton(2, [v39 UTF8String], &location + 4) == 1)
              {
                v40 = bswap32(HIDWORD(location));
                if ((v40 & 0xFF000000) == 0 || (v40 & 0xFF000000) == 2130706432 || v40 >> 28 == 14 || HIDWORD(location) == -1 || (v40 & 0xFFFFFFF8) == -1073741824)
                {
                  if (qword_1002294A8 != -1)
                  {
                    dispatch_once(&qword_1002294A8, &stru_1001FD210);
                  }

                  v45 = qword_1002294A0;
                  v46 = _NRLogIsLevelEnabled();

                  if (v46)
                  {
                    if (qword_1002294A8 != -1)
                    {
                      dispatch_once(&qword_1002294A8, &stru_1001FD210);
                    }

                    v47 = qword_1002294A0;
                    _NRLogWithArgs(v47, 1, "%s%.30s:%-4d Ignoring ipv4 address: %@", "", "[NRLinkManagerWiFi processSCDUpdate:]", 2369, v39);
                    goto LABEL_71;
                  }
                }

                else
                {
                  if (HIWORD(v40) != 43518)
                  {
                    if (v26)
                    {
LABEL_85:
                      v50 = *(v26 + 7);
                    }

                    else
                    {
                      v50 = 0;
                    }

                    v47 = v50;
                    [v47 addObject:v39];
LABEL_71:

                    goto LABEL_72;
                  }

                  if (v26 && (*(v26 + 8) & 1) != 0)
                  {
                    goto LABEL_85;
                  }

                  if (qword_1002294A8 != -1)
                  {
                    dispatch_once(&qword_1002294A8, &stru_1001FD210);
                  }

                  v48 = qword_1002294A0;
                  v49 = _NRLogIsLevelEnabled();

                  if (v49)
                  {
                    if (qword_1002294A8 != -1)
                    {
                      dispatch_once(&qword_1002294A8, &stru_1001FD210);
                    }

                    v47 = qword_1002294A0;
                    _NRLogWithArgs(v47, 1, "%s%.30s:%-4d Ignoring ipv4 address: %@", "", "[NRLinkManagerWiFi processSCDUpdate:]", 2375, v39);
                    goto LABEL_71;
                  }
                }
              }

LABEL_72:
              if (++v36 >= v35)
              {
                v35 = [v34 countByEnumeratingWithState:&v191 objects:v209 count:16];
                if (!v35)
                {
                  break;
                }

                v36 = 0;
              }
            }
          }
        }

        if (v26)
        {
          v51 = *(v26 + 5);
        }

        else
        {
          v51 = 0;
        }

        v52 = v51;
        v53 = [(__CFArray *)keys containsObject:v52];

        if (v53)
        {
          if (v26)
          {
            v54 = *(v26 + 8);
            [v54 removeAllObjects];

            v55 = *(v26 + 5);
          }

          else
          {
            [0 removeAllObjects];
            v55 = 0;
          }

          v56 = v55;
          v57 = [(__CFDictionary *)v168 objectForKeyedSubscript:v56];

          v174 = [v57 objectForKeyedSubscript:kSCPropNetIPv6Addresses];
          v58 = [v57 objectForKeyedSubscript:kSCPropNetIPv6Flags];
          v59 = [v174 count];
          if (v59 != [v58 count])
          {
            if (qword_1002294A8 != -1)
            {
              dispatch_once(&qword_1002294A8, &stru_1001FD210);
            }

            v80 = qword_1002294A0;
            v81 = _NRLogIsLevelEnabled();

            if (v81)
            {
              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              v82 = qword_1002294A0;
              _NRLogWithArgs(v82, 17, "Mismatch between ipv6 address and flags array: %@ %@", v174, v58);
            }

            goto LABEL_162;
          }

          v171 = [v174 count];
          if (v171)
          {
            v60 = 0;
            while (1)
            {
              v61 = [v58 objectAtIndexedSubscript:v60];
              v62 = [v174 objectAtIndexedSubscript:v60];
              v63 = [v61 unsignedIntValue];
              if ((v63 & 0x101F) != 0)
              {
                if (qword_1002294A8 != -1)
                {
                  dispatch_once(&qword_1002294A8, &stru_1001FD210);
                }

                v64 = qword_1002294A0;
                v65 = _NRLogIsLevelEnabled();

                if (v65)
                {
                  if (qword_1002294A8 != -1)
                  {
                    dispatch_once(&qword_1002294A8, &stru_1001FD210);
                  }

                  v66 = qword_1002294A0;
                  _NRLogWithArgs(v66, 1, "%s%.30s:%-4d Ignoring ipv6 address: %@ (%#x)", "", "[NRLinkManagerWiFi processSCDUpdate:]", 2403, v62, v63);
                }

                goto LABEL_127;
              }

              location = 0;
              v213 = 0;
              LODWORD(v215) = 0;
              v214 = 0;
              if (inet_pton(30, [v62 UTF8String], &v213) == 1)
              {
                break;
              }

LABEL_127:

              if (v171 == ++v60)
              {
                goto LABEL_143;
              }
            }

            v67 = v213 | HIDWORD(v213) | v214;
            if (!v67 && !HIDWORD(v214) || (HIDWORD(v214) == 0x1000000 ? (v71 = v67 == 0) : (v71 = 0), v71 || v213 == 255))
            {
              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              v68 = qword_1002294A0;
              v69 = _NRLogIsLevelEnabled();

              if (!v69)
              {
                goto LABEL_127;
              }

              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              v70 = qword_1002294A0;
              _NRLogWithArgs(v70, 1, "%s%.30s:%-4d Ignoring ipv6 address: %@", "", "[NRLinkManagerWiFi processSCDUpdate:]", 2414, v62);
            }

            else if ((v213 & 0xC0FF) == 0x80FE)
            {
              if (v26 && (*(v26 + 8) & 1) != 0)
              {
                v72 = *(v26 + 3);
                v73 = [v62 containsString:v72];

                if ((v73 & 1) == 0)
                {
                  v74 = [NSString alloc];
                  v75 = *(v26 + 3);
                  v76 = [v74 initWithFormat:@"%@%%%@", v62, v75];

                  v62 = v76;
                }

LABEL_124:
                v77 = *(v26 + 8);
                goto LABEL_125;
              }

              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              v78 = qword_1002294A0;
              v79 = _NRLogIsLevelEnabled();

              if (!v79)
              {
                goto LABEL_127;
              }

              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              v70 = qword_1002294A0;
              _NRLogWithArgs(v70, 1, "%s%.30s:%-4d Ignoring ipv6 address: %@", "", "[NRLinkManagerWiFi processSCDUpdate:]", 2420, v62);
            }

            else
            {
              if (v26)
              {
                goto LABEL_124;
              }

              v77 = 0;
LABEL_125:
              v70 = v77;
              [v70 addObject:v62];
            }

            goto LABEL_127;
          }

LABEL_143:

          v29 = 1;
        }

        if (v26)
        {
          v83 = *(v26 + 6);
        }

        else
        {
          v83 = 0;
        }

        v84 = v83;
        v85 = [(__CFArray *)keys containsObject:v84];

        if (v85)
        {
          if (v26)
          {
            v86 = *(v26 + 6);
          }

          else
          {
            v86 = 0;
          }

          v87 = v86;
          v88 = [(__CFDictionary *)v168 objectForKeyedSubscript:v87];

          if (v88)
          {
            v89 = [v88 objectForKeyedSubscript:kSCPropNetLinkActive];
            v90 = [v89 BOOLValue];
            if (v26)
            {
              *(v26 + 9) = v90;
              if (v90)
              {
                sub_100026740(v26);
              }
            }
          }

          else if (v26)
          {
            *(v26 + 9) = 0;
          }
        }

        else if (!v29)
        {
          goto LABEL_162;
        }

        v91 = *(a1 + 128);
        v92 = v26 == v91;

        if (v26)
        {
          ++*(v26 + 4);
        }

        [v164 addObject:v26];
        v167 |= v92;
LABEL_162:
        v23 = v169 + 1;
        if (v169 + 1 >= v170)
        {
          v170 = [v166 countByEnumeratingWithState:&v195 objects:v210 count:16];
          if (!v170)
          {
            goto LABEL_173;
          }

          v23 = 0;
        }
      }
    }

    v167 = 0;
LABEL_173:

    v93 = *(a1 + 136);
    v94 = [(__CFArray *)keys containsObject:v93];

    if (v94)
    {
      *(a1 + 32) = 0;
      v95 = *(a1 + 136);
      v96 = [(__CFDictionary *)v168 objectForKeyedSubscript:v95];

      if (v96)
      {
        v97 = [v96 objectForKeyedSubscript:@"InternalInterfaces"];
        if ([v97 count])
        {
          v98 = [v96 objectForKeyedSubscript:@"Hosts"];
          v99 = [v98 objectForKeyedSubscript:@"Current"];
          if ([v99 unsignedIntValue])
          {
            if (qword_1002294A8 != -1)
            {
              dispatch_once(&qword_1002294A8, &stru_1001FD210);
            }

            v100 = qword_1002294A0;
            v101 = _NRLogIsLevelEnabled();

            if (v101)
            {
              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              v102 = qword_1002294A0;
              _NRLogWithArgs(v102, 1, "%s%.30s:%-4d Bridge active", "", "[NRLinkManagerWiFi processSCDUpdate:]", 2463);
            }

            *(a1 + 32) = 1;
          }
        }
      }
    }
  }

  else
  {
    v167 = 0;
  }

  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  v188 = 0u;
  v175 = v164;
  v103 = [v175 countByEnumeratingWithState:&v187 objects:v208 count:16];
  if (!v103)
  {
    goto LABEL_256;
  }

  v104 = *v188;
  do
  {
    for (m = 0; m != v103; m = m + 1)
    {
      if (*v188 != v104)
      {
        objc_enumerationMutation(v175);
      }

      v106 = *(*(&v187 + 1) + 8 * m);
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v107 = qword_1002294A0;
      v108 = _NRLogIsLevelEnabled();

      if (v108)
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        v109 = qword_1002294A0;
        _NRLogWithArgs(v109, 1, "%s%.30s:%-4d SCD changed config: %@", "", "[NRLinkManagerWiFi processSCDUpdate:]", 2482, v106);
      }

      if (sub_100026878(v106))
      {
        if (v106)
        {
          v110 = v106[7];
        }

        else
        {
          v110 = 0;
        }

        v111 = v110;
        v112 = [v111 count] == 0;

        if (v112)
        {
          if (v106)
          {
            v135 = *(v106 + 4);
          }

          else
          {
            v135 = 0;
          }

          objc_initWeak(&location, a1);
          v136 = dispatch_time(0x8000000000000000, 3000000000);
          if (a1)
          {
            v137 = *(a1 + 24);
          }

          else
          {
            v137 = 0;
          }

          v138 = v137;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10017DA68;
          block[3] = &unk_1001FD1C8;
          objc_copyWeak(v186, &location);
          v186[1] = v135;
          block[4] = v106;
          block[5] = a1;
          dispatch_after(v136, v138, block);

          objc_destroyWeak(v186);
          objc_destroyWeak(&location);
        }

        else
        {
          v113 = *(a1 + 104);
          v114 = v106 == v113;

          if (v114)
          {
            sub_10017CCC4(a1);
          }

          else
          {
            v115 = *(a1 + 112);
            v116 = v106 == v115;

            if (v116)
            {
              sub_10017D158(a1);
            }

            else
            {
              v117 = *(a1 + 128);
              v118 = v106 == v117;

              if (v118)
              {
                sub_10017D65C(a1);
              }
            }
          }
        }
      }

      else
      {
        v119 = *(a1 + 104);
        v120 = v106 == v119;

        if (v120)
        {
          v125 = *(a1 + 24);
          dispatch_assert_queue_V2(v125);

          if (!*(a1 + 56))
          {
            continue;
          }

          if (qword_1002294A8 != -1)
          {
            dispatch_once(&qword_1002294A8, &stru_1001FD210);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002294A8 != -1)
            {
              dispatch_once(&qword_1002294A8, &stru_1001FD210);
            }

            _NRLogWithArgs(qword_1002294A0, 1, "%s%.30s:%-4d Interface is NOT available", "", "[NRLinkManagerWiFi interfaceUnavailable]", 981);
          }

          v126 = *(a1 + 24);
          dispatch_assert_queue_V2(v126);

          v127 = *(a1 + 56);
          *(a1 + 56) = 0;

          v128 = *(a1 + 80);
          *(a1 + 80) = 0;

          [a1 reportEvent:11003 details:@"<nil>"];
          sub_100178760(a1);
          v129 = [*(a1 + 152) copy];
          v205 = 0u;
          v206 = 0u;
          v203 = 0u;
          v204 = 0u;
          v130 = v129;
          v131 = [v130 countByEnumeratingWithState:&v203 objects:&location count:16];
          if (v131)
          {
            v132 = *v204;
            do
            {
              for (n = 0; n != v131; n = n + 1)
              {
                if (*v204 != v132)
                {
                  objc_enumerationMutation(v130);
                }

                v134 = *(*(&v203 + 1) + 8 * n);
                if ([v134 subtype] == 101)
                {
                  [v134 setNoTransport:1];
                  [v134 cancelWithReason:@"Interface went away"];
                }
              }

              v131 = [v130 countByEnumeratingWithState:&v203 objects:&location count:16];
            }

            while (v131);
          }

          goto LABEL_228;
        }

        v121 = *(a1 + 112);
        v122 = v106 == v121;

        if (v122)
        {
          v139 = *(a1 + 24);
          dispatch_assert_queue_V2(v139);

          if (*(a1 + 64))
          {
            if (qword_1002294A8 != -1)
            {
              dispatch_once(&qword_1002294A8, &stru_1001FD210);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              _NRLogWithArgs(qword_1002294A0, 1, "%s%.30s:%-4d AWDL interface is NOT available", "", "[NRLinkManagerWiFi awdlUnavailable]", 1374);
            }

            v140 = *(a1 + 24);
            dispatch_assert_queue_V2(v140);

            v141 = *(a1 + 64);
            *(a1 + 64) = 0;

            [a1 reportEvent:11005 details:@"<nil>"];
            WeakRetained = objc_loadWeakRetained((a1 + 160));
            [WeakRetained localAWDLEndpointChanged:0];

            v143 = [*(a1 + 152) copy];
            v205 = 0u;
            v206 = 0u;
            v203 = 0u;
            v204 = 0u;
            v130 = v143;
            v144 = [v130 countByEnumeratingWithState:&v203 objects:&location count:16];
            if (v144)
            {
              v145 = *v204;
              do
              {
                for (ii = 0; ii != v144; ii = ii + 1)
                {
                  if (*v204 != v145)
                  {
                    objc_enumerationMutation(v130);
                  }

                  v147 = *(*(&v203 + 1) + 8 * ii);
                  if ([v147 subtype] == 102)
                  {
                    [v147 setNoTransport:1];
                    [v147 cancelWithReason:@"Interface went away"];
                  }
                }

                v144 = [v130 countByEnumeratingWithState:&v203 objects:&location count:16];
              }

              while (v144);
            }

LABEL_228:

            continue;
          }
        }

        else
        {
          v123 = *(a1 + 128);
          v124 = v106 == v123;

          if (v124)
          {
            sub_10017DC78(a1);
          }
        }
      }
    }

    v103 = [v175 countByEnumeratingWithState:&v187 objects:v208 count:16];
  }

  while (v103);
LABEL_256:

  ++*(a1 + 144);
  *&v203 = 0;
  *(&v203 + 1) = &v203;
  *&v204 = 0x2020000000;
  BYTE8(v204) = 0;
  v148 = *(a1 + 176);
  location = _NSConcreteStackBlock;
  v213 = 3221225472;
  v214 = sub_10017E080;
  v215 = &unk_1001FD128;
  v149 = v148;
  v216 = v149;
  v217 = &v203;
  sub_10017AE24(NRLinkManagerWiFi, &location);
  v150 = *(*(&v203 + 1) + 24);

  _Block_object_dispose(&v203, 8);
  if (v150)
  {
    v151 = *(a1 + 104);
    if (sub_100026878(v151))
    {
      v152 = 1;
    }

    else if (sub_10017DF34(a1))
    {
      v152 = *(a1 + 32);
    }

    else
    {
      v152 = 0;
    }
  }

  else if (sub_10017DF34(a1))
  {
    v152 = *(a1 + 32);
  }

  else
  {
    v152 = 0;
  }

  v153 = *(a1 + 128);
  v172 = sub_100026878(v153);

  if (qword_1002294A8 != -1)
  {
    dispatch_once(&qword_1002294A8, &stru_1001FD210);
  }

  v154 = qword_1002294A0;
  v155 = _NRLogIsLevelEnabled();

  v156 = v152 & 1;
  if (v155)
  {
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    v157 = qword_1002294A0;
    _NRLogWithArgs(v157, 1, "%s%.30s:%-4d phs %d llphs %d", "", "[NRLinkManagerWiFi processSCDUpdate:]", 2538, v152 & 1, v172);
  }

  if (v156 != *(a1 + 37) || (v167 & 1) != 0 && v172 != *(a1 + 38))
  {
    *(a1 + 37) = v156;
    *(a1 + 38) = v172;
    v181 = 0u;
    v182 = 0u;
    v183 = 0u;
    v184 = 0u;
    v158 = *(a1 + 264);
    v159 = [v158 countByEnumeratingWithState:&v181 objects:v207 count:16];
    if (v159)
    {
      v160 = *v182;
      do
      {
        for (jj = 0; jj != v159; jj = jj + 1)
        {
          if (*v182 != v160)
          {
            objc_enumerationMutation(v158);
          }

          v162 = *(*(&v181 + 1) + 8 * jj);
          if (objc_opt_respondsToSelector())
          {
            v163 = sub_100003490();
            v178[0] = _NSConcreteStackBlock;
            v178[1] = 3221225472;
            v178[2] = sub_10017E034;
            v178[3] = &unk_1001FD1F0;
            v178[4] = v162;
            v179 = v156;
            v180 = v172;
            dispatch_async(v163, v178);
          }
        }

        v159 = [v158 countByEnumeratingWithState:&v181 objects:v207 count:16];
      }

      while (v159);
    }
  }
}

void sub_10017CCC4(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    dispatch_assert_queue_V2(v2);

    v3 = *(a1 + 104);
    if (v3)
    {
      v3 = v3[7];
    }

    v4 = v3;
    v5 = [v4 count];

    if (v5)
    {
      v6 = *(a1 + 104);
      if (!v6)
      {
        goto LABEL_13;
      }

      v7 = v6 + 7;
    }

    else
    {
      v8 = *(a1 + 104);
      if (v8)
      {
        v8 = v8[8];
      }

      v9 = v8;
      v10 = [v9 count];

      if (!v10)
      {
        goto LABEL_16;
      }

      v6 = *(a1 + 104);
      if (!v6)
      {
LABEL_13:
        v11 = v6;
        v12 = [v11 firstObject];
        v13 = [NWAddressEndpoint endpointWithHostname:v12 port:@"0"];

        if (v13)
        {
          if ([*(a1 + 56) isEqual:v13])
          {
            v14 = v13;
          }

          else
          {
            if (qword_1002294A8 != -1)
            {
              dispatch_once(&qword_1002294A8, &stru_1001FD210);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              _NRLogWithArgs(qword_1002294A0, 1, "%s%.30s:%-4d Interface is available", "", "[NRLinkManagerWiFi interfaceAvailable]", 953);
            }

            v18 = [*(a1 + 152) copy];
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v19 = v18;
            v20 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v31;
              do
              {
                for (i = 0; i != v21; i = i + 1)
                {
                  if (*v31 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v30 + 1) + 8 * i);
                  if ([v24 subtype] == 101)
                  {
                    v25 = [v24 localOuterEndpoint];
                    v26 = [v25 isEqual:v13];

                    if ((v26 & 1) == 0)
                    {
                      [v24 setNoTransport:1];
                      [v24 cancelWithReason:@"Local endpoint changed"];
                    }
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
              }

              while (v21);
            }

            v14 = v13;
            v27 = *(a1 + 24);
            dispatch_assert_queue_V2(v27);

            objc_storeStrong((a1 + 56), v13);
            [a1 reportEvent:11003 detailsFormat:@"%@", *(a1 + 56)];
            if (nwi_state_copy())
            {
              v28 = [v14 addressFamily];
              first_ifstate = nwi_state_get_first_ifstate();
              if ((sub_10017E0DC(a1, first_ifstate, v28) & 1) == 0)
              {
                do
                {
                  if (!first_ifstate)
                  {
                    break;
                  }

                  first_ifstate = nwi_ifstate_get_next();
                }

                while (!sub_10017E0DC(a1, first_ifstate, v28));
              }

              nwi_state_release();
            }

            sub_1001771D0(a1);
          }

LABEL_45:

          return;
        }

LABEL_16:
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002294A8 != -1)
          {
            dispatch_once(&qword_1002294A8, &stru_1001FD210);
          }

          _NRLogWithArgs(qword_1002294A0, 17, "Could not get Wi-Fi endpoint");
        }

        v15 = *(a1 + 24);
        dispatch_assert_queue_V2(v15);

        v16 = *(a1 + 56);
        *(a1 + 56) = 0;

        v17 = *(a1 + 80);
        *(a1 + 80) = 0;

        [a1 reportEvent:11003 details:@"<nil>"];
        v14 = 0;
        goto LABEL_45;
      }

      v7 = v6 + 8;
    }

    v6 = *v7;
    goto LABEL_13;
  }
}

void sub_10017D158(id *a1)
{
  if (a1)
  {
    v2 = a1[3];
    dispatch_assert_queue_V2(v2);

    v3 = a1[14];
    if (v3)
    {
      v3 = v3[8];
    }

    v4 = v3;
    v5 = [v4 count];

    if (!v5)
    {
      goto LABEL_37;
    }

    v6 = a1[14];
    v7 = v6;
    if (v6)
    {
      v8 = *(v6 + 8);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = [v9 firstObject];
    objc_opt_self();
    if (qword_100228E88 != -1)
    {
      dispatch_once(&qword_100228E88, &stru_1001FA180);
    }

    v11 = qword_100228E80;
    v12 = @"62743";
    if (!v11)
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = [NWAddressEndpoint endpointWithHostname:v10 port:v13];

    if (v14)
    {
      if (([a1[8] isEqual:v14] & 1) == 0)
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002294A8 != -1)
          {
            dispatch_once(&qword_1002294A8, &stru_1001FD210);
          }

          _NRLogWithArgs(qword_1002294A0, 1, "%s%.30s:%-4d AWDL interface is available", "", "[NRLinkManagerWiFi awdlAvailable]", 1339);
        }

        v31 = a1;
        v15 = [a1[19] copy];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v33;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v33 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v32 + 1) + 8 * i);
              if ([v21 subtype] == 102)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v22 = v21;
                  v23 = [v22 localOuterEndpoint];
                  v24 = [v23 isEqual:v14];

                  if ((v24 & 1) == 0)
                  {
                    [v22 setNoTransport:1];
                    [v22 cancelWithReason:@"Local endpoint changed"];
                  }
                }

                else
                {
                  if (qword_1002294A8 != -1)
                  {
                    dispatch_once(&qword_1002294A8, &stru_1001FD210);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_1002294A8 != -1)
                    {
                      dispatch_once(&qword_1002294A8, &stru_1001FD210);
                    }

                    _NRLogWithArgs(qword_1002294A0, 17, "Invalid link %@", v21);
                  }
                }
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v18);
        }

        v27 = v14;
        v28 = v31[3];
        dispatch_assert_queue_V2(v28);

        v29 = v31[8];
        v31[8] = v27;
        v14 = v27;

        [v31 reportEvent:11005 detailsFormat:@"%@", v31[8]];
        WeakRetained = objc_loadWeakRetained(v31 + 20);
        [WeakRetained localAWDLEndpointChanged:v14];

        sub_100175E70(v31);
      }
    }

    else
    {
LABEL_37:
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        _NRLogWithArgs(qword_1002294A0, 17, "Could not get Wi-Fi endpoint");
      }

      v25 = a1[3];
      dispatch_assert_queue_V2(v25);

      v26 = a1[8];
      a1[8] = 0;

      [a1 reportEvent:11005 details:@"<nil>"];
      v14 = 0;
    }
  }
}

void sub_10017D65C(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = *(a1 + 24);
    dispatch_assert_queue_V2(v2);

    if (sub_100026878(*(v1 + 128)))
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        _NRLogWithArgs(qword_1002294A0, 1, "%s%.30s:%-4d IR interface is available", "", "[NRLinkManagerWiFi irAvailable]", 1140);
      }

      v3 = [*(v1 + 152) copy];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v29;
        v27 = v1;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v29 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v28 + 1) + 8 * i);
            if ([v9 subtype] == 104 && objc_msgSend(v9, "state") != 255)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v10 = v9;
                v11 = [v10 localOuterEndpoint];
                if ([v11 addressFamily] != 2)
                {

                  goto LABEL_33;
                }

                v12 = *(v1 + 128);
                v13 = v12;
                if (v12)
                {
                  v14 = *(v12 + 7);
                }

                else
                {
                  v14 = 0;
                }

                v15 = v14;
                v16 = [v10 localOuterEndpoint];

                v17 = [v16 hostname];
                v18 = [v15 containsObject:v17];

                v1 = v27;
                if ((v18 & 1) == 0)
                {
                  goto LABEL_13;
                }

LABEL_33:
                v19 = [v10 localOuterEndpoint];
                if ([v19 addressFamily] == 30)
                {
                  v20 = *(v1 + 128);
                  v21 = v20;
                  if (v20)
                  {
                    v22 = *(v20 + 8);
                  }

                  else
                  {
                    v22 = 0;
                  }

                  v23 = v22;
                  v24 = [v10 localOuterEndpoint];

                  v25 = [v24 hostname];
                  v26 = [v23 containsObject:v25];

                  v1 = v27;
                  if (v26)
                  {
                    goto LABEL_14;
                  }

LABEL_13:
                  [v10 setNoTransport:1];
                  [v10 cancelWithReason:@"Local endpoint changed"];
                }

                else
                {
                }

LABEL_14:

                continue;
              }

              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_1002294A8 != -1)
                {
                  dispatch_once(&qword_1002294A8, &stru_1001FD210);
                }

                _NRLogWithArgs(qword_1002294A0, 17, "Invalid link %@", v9);
              }
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v6);
      }

      sub_100177B24(v1);
    }
  }
}

uint64_t sub_10017DA68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 12) != 1004)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 16);
    }

    else
    {
      v5 = 0;
    }

    v8 = v3;
    if (*(a1 + 56) == v5)
    {
      WeakRetained = sub_100026878(v4);
      if (WeakRetained)
      {
        v6 = *(a1 + 32);
        v3 = v8;
        if (v6 == v8[13])
        {
          sub_10017CCC4(*(a1 + 40));
        }

        else if (v6 == v8[14])
        {
          sub_10017D158(*(a1 + 40));
        }

        else
        {
          if (v6 != v8[16])
          {
            goto LABEL_24;
          }

          sub_10017D65C(*(a1 + 40));
        }

        goto LABEL_23;
      }

      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      WeakRetained = _NRLogIsLevelEnabled();
      v3 = v8;
      if (WeakRetained)
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        WeakRetained = _NRLogWithArgs(qword_1002294A0, 1, "%s%.30s:%-4d WiFi went away while quiescing");
LABEL_23:
        v3 = v8;
      }
    }

    else
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      WeakRetained = _NRLogIsLevelEnabled();
      v3 = v8;
      if (WeakRetained)
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        WeakRetained = _NRLogWithArgs(qword_1002294A0, 1, "%s%.30s:%-4d Not processing stale availability update");
        goto LABEL_23;
      }
    }
  }

LABEL_24:

  return _objc_release_x1(WeakRetained, v3);
}

void sub_10017DC78(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  dispatch_assert_queue_V2(v3);

  if (!sub_100026878(*(a1 + 128)))
  {
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      _NRLogWithArgs(qword_1002294A0, 1, "%s%.30s:%-4d IR interface is NOT available", "", "[NRLinkManagerWiFi irUnavailable]", 1296);
    }
  }

  v4 = [*(a1 + 152) copy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 subtype] == 104 && objc_msgSend(v10, "state") != 255)
        {
          if (!sub_100026878(*(a1 + 128)))
          {
            [v10 setNoTransport:1];
            [v10 cancelWithReason:@"Interface went away"];
          }

          v11 = *(a1 + 128);
          v12 = v11;
          if (v11)
          {
            v13 = *(v11 + 9);
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;
          v15 = [v10 nrUUID];

          v16 = [v14 objectForKeyedSubscript:v15];

          v17 = [v10 remoteOuterEndpoint];
          LOBYTE(v15) = [v16 containsObject:v17];

          if ((v15 & 1) == 0)
          {
            [v10 cancelWithReason:@"peer went away"];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }
}

uint64_t sub_10017DF34(uint64_t a1)
{
  if (a1)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v1 = *(a1 + 176);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10017E048;
    v5[3] = &unk_1001FD128;
    v2 = v1;
    v6 = v2;
    v7 = &v8;
    sub_10017AE24(NRLinkManagerWiFi, v5);
    v3 = *(v9 + 24);

    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_10017E01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10017E048(uint64_t a1)
{
  result = [*(a1 + 32) opMode];
  *(*(*(a1 + 40) + 8) + 24) = (result & 8) != 0;
  return result;
}

void sub_10017E080(uint64_t a1)
{
  v2 = [*(a1 + 32) currentKnownNetworkProfile];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isPersonalHotspot];
}

uint64_t sub_10017E0DC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1[3];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  dispatch_assert_queue_V2(v6);

  if (!a2)
  {
    return 0;
  }

  ifname = nwi_ifstate_get_ifname();
  v8 = a1[13];
  if (v8)
  {
    v8 = v8[3];
  }

  v9 = v8;
  v10 = [[NSString alloc] initWithUTF8String:ifname];
  v11 = [v9 isEqualToString:v10];

  if (!v11)
  {
    return 0;
  }

  signature = nwi_ifstate_get_signature();
  if (signature)
  {
    signature = [[NSData alloc] initWithBytes:signature length:0];
  }

  v13 = a1[10];
  a1[10] = signature;

  return 1;
}

void sub_10017E1F0(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a2 + 12) != 1004)
  {
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      _NRLogWithArgs(qword_1002294A0, 16, "%s%.30s:%-4d SCD server restarted", "", "scdDisconnectCallback", 2578);
    }
  }
}

void sub_10017E2B4(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v4 = a3;
    if (v4[3] != 1004)
    {
      v5 = v4;
      sub_10017B338(v4, a2);
      v4 = v5;
    }
  }
}

void sub_10017E314(id a1)
{
  if (MGGetBoolAnswer())
  {
    if (objc_opt_class())
    {
      byte_100229490 = 1;
    }
  }
}

BOOL sub_10017E354(_BOOL8 result)
{
  if (result)
  {
    return sub_100026878(*(result + 128));
  }

  return result;
}

uint64_t sub_10017E36C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v8 = v4;
    v6 = *(a1 + 24);
    dispatch_assert_queue_V2(v6);

    v4 = [*(a1 + 88) isEqual:v8];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        _NRLogWithArgs(qword_1002294A0, 1, "%s%.30s:%-4d Setting the peer Wi-Fi signature as %@ ----> %@", "", "[NRLinkManagerWiFi setPeerWiFiSignature:]", 561, *(a1 + 88), v8);
      }

      objc_storeStrong((a1 + 88), a2);
      v5 = v8;
    }
  }

  return _objc_release_x1(v4, v5);
}

void *sub_10017E4AC(void *result)
{
  if (result)
  {
    v1 = [result hostname];
    objc_opt_self();
    if (qword_100228E88 != -1)
    {
      dispatch_once(&qword_100228E88, &stru_1001FA180);
    }

    v2 = qword_100228E80;
    v3 = @"62743";
    if (!v2)
    {
      v3 = 0;
    }

    v4 = v3;
    v5 = [NWAddressEndpoint endpointWithHostname:v1 port:v4];

    return v5;
  }

  return result;
}

void sub_10017E570(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = a1[3];
    dispatch_assert_queue_V2(v7);

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v46;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v46 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = sub_10017E4AC(*(*(&v45 + 1) + 8 * i));
          if (v14)
          {
            if (!v11)
            {
              v11 = objc_alloc_init(NSMutableArray);
            }

            [v11 addObject:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v15 = a1[13];
    if (v15)
    {
      v15 = v15[9];
    }

    v16 = v15;
    v17 = [v16 objectForKeyedSubscript:v6];

    if (!v17 || (v18 = [[NSSet alloc] initWithArray:v11], v19 = objc_msgSend([NSSet alloc], "initWithArray:", v17), v20 = objc_msgSend(v18, "isEqualToSet:", v19), v19, v18, (v20 & 1) == 0))
    {
      v21 = sub_100163A30(NRDLocalDevice, v6);
      v40 = v17;
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        _NRLogWithArgs(qword_1002294A0, 1, "%s%.30s:%-4d Setting the peer Wi-Fi endpoints as %@ ----> %@ for %@", "", "[NRLinkManagerWiFi setPeerWiFiEndpoints:forNRUUID:]", 600, v17, v11, v21);
      }

      v22 = a1[13];
      v23 = v22;
      v39 = v5;
      v37 = v21;
      if (v22)
      {
        v24 = *(v22 + 9);
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;
      [v25 setObject:v11 forKeyedSubscript:v6];

      v38 = a1;
      v26 = [a1[19] copy];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v27 = v26;
      v28 = [v27 countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v42;
        do
        {
          for (j = 0; j != v29; j = j + 1)
          {
            if (*v42 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v41 + 1) + 8 * j);
            if ([v32 subtype] == 101)
            {
              v33 = [v32 remoteOuterEndpoint];
              v34 = [v11 containsObject:v33];

              if ((v34 & 1) == 0)
              {
                v35 = [v32 nrUUID];
                v36 = [v35 isEqual:v6];

                if (v36)
                {
                  [v32 cancelWithReason:@"Peer Wi-Fi endpoint changed"];
                }
              }
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v41 objects:v49 count:16];
        }

        while (v29);
      }

      sub_1001771D0(v38);
      v5 = v39;
      v17 = v40;
    }
  }
}

id sub_10017E984(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = *(a1 + 24);
    dispatch_assert_queue_V2(v4);

    v5 = *(a1 + 104);
    if (v5)
    {
      v5 = v5[9];
    }

    v6 = v5;
    v7 = [v6 objectForKeyedSubscript:v3];

    v8 = [v7 firstObject];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_10017EA30(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = a1[3];
    dispatch_assert_queue_V2(v7);

    v8 = sub_10017E4AC(v5);
    v9 = a1[14];
    if (v9)
    {
      v9 = v9[9];
    }

    v10 = v9;
    v11 = [v10 objectForKeyedSubscript:v6];
    v12 = [v11 firstObject];

    if (!v12 || ([v12 isEqual:v8] & 1) == 0)
    {
      v34 = v12;
      v13 = sub_100163A30(NRDLocalDevice, v6);
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        v14 = qword_1002294A0;
        v15 = a1[14];
        v16 = v14;
        v17 = v8;
        if (v15)
        {
          v18 = v15[9];
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;
        v20 = [v19 objectForKeyedSubscript:v6];
        _NRLogWithArgs(v16, 1, "%s%.30s:%-4d Setting the peer AWDL endpoint as %@ ----> %@ for %@", "", "[NRLinkManagerWiFi setPeerAWDLEndpoint:nrUUID:]", 1060, v20, v17, v13);

        v8 = v17;
      }

      if (v8)
      {
        v41 = v8;
        v21 = [NSArray arrayWithObjects:&v41 count:1];
      }

      else
      {
        v21 = 0;
      }

      v22 = a1[14];
      if (v22)
      {
        v22 = v22[9];
      }

      v33 = v13;
      v23 = v22;
      [v23 setObject:v21 forKeyedSubscript:v6];

      v35 = v8;
      if (v8)
      {
      }

      v24 = [a1[19] copy];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v37;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v37 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v36 + 1) + 8 * i);
            if ([v30 subtype] == 102)
            {
              v31 = [v30 nrUUID];
              v32 = [v31 isEqual:v6];

              if (v32)
              {
                [v30 cancelWithReason:@"Peer AWDL endpoint changed"];
              }
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v27);
      }

      sub_100175E70(a1);
      v12 = v34;
      v8 = v35;
    }
  }

  else
  {
    v8 = v5;
  }
}

void sub_10017EDB4(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  if (a1)
  {
    v5 = *(a1 + 24);
    dispatch_assert_queue_V2(v5);

    if (*(a1 + 12) == 1003)
    {
      v6 = [*(a1 + 208) containsObject:v7];
      if (a2)
      {
        if (v6)
        {
          goto LABEL_9;
        }

        [*(a1 + 208) addObject:v7];
        goto LABEL_8;
      }

      if (v6)
      {
        [*(a1 + 208) removeObject:v7];
        if (![*(a1 + 208) count])
        {
LABEL_8:
          sub_1000050BC(a1);
        }
      }
    }
  }

LABEL_9:
}

void sub_10017EE84(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v16 = 0;
  v4 = [v2 beginActivity:v3 error:&v16];
  v5 = v16;
  if ((v4 & 1) == 0)
  {
    v6 = v5;
    v7 = *(a1 + 48);
    block = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10017F2F8;
    v13 = &unk_1001FD0D8;
    objc_copyWeak(&v15, (a1 + 56));
    v14 = *(a1 + 40);
    dispatch_async(v7, &block);
    v8 = sub_1001762F4();
    LOBYTE(v7) = _NRLogIsLevelEnabled();

    if (v7)
    {
      v9 = sub_1001762F4();
      _NRLogWithArgs(v9, 17, "[CWFInterface beginActivity:CWFActivityTypeBackgroundApp] failed: %@", v6, block, v11, v12, v13);
    }

    objc_destroyWeak(&v15);
    v5 = v6;
  }
}

void sub_10017EFB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v16 = 0;
  v4 = [v2 beginActivity:v3 error:&v16];
  v5 = v16;
  if ((v4 & 1) == 0)
  {
    v6 = v5;
    v7 = *(a1 + 48);
    block = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10017F28C;
    v13 = &unk_1001FD0D8;
    objc_copyWeak(&v15, (a1 + 56));
    v14 = *(a1 + 40);
    dispatch_async(v7, &block);
    v8 = sub_1001762F4();
    LOBYTE(v7) = _NRLogIsLevelEnabled();

    if (v7)
    {
      v9 = sub_1001762F4();
      _NRLogWithArgs(v9, 17, "[CWFInterface beginActivity:CWFActivityTypeWiFiBound] failed: %@", v6, block, v11, v12, v13);
    }

    objc_destroyWeak(&v15);
    v5 = v6;
  }
}

void sub_10017F0F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v16 = 0;
  v4 = [v2 beginActivity:v3 error:&v16];
  v5 = v16;
  if ((v4 & 1) == 0)
  {
    v6 = v5;
    v7 = *(a1 + 48);
    block = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10017F220;
    v13 = &unk_1001FD0D8;
    objc_copyWeak(&v15, (a1 + 56));
    v14 = *(a1 + 40);
    dispatch_async(v7, &block);
    v8 = sub_1001762F4();
    LOBYTE(v7) = _NRLogIsLevelEnabled();

    if (v7)
    {
      v9 = sub_1001762F4();
      _NRLogWithArgs(v9, 17, "[CWFInterface beginActivity:CWFActivityTypeEnableWakeOnWireless] failed: %@", v6, block, v11, v12, v13);
    }

    objc_destroyWeak(&v15);
    v5 = v6;
  }
}

void sub_10017F220(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[23];
    if (v3 == *(a1 + 32))
    {
      WeakRetained[23] = 0;
      v4 = WeakRetained;

      WeakRetained = v4;
    }
  }
}

void sub_10017F28C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[25];
    if (v3 == *(a1 + 32))
    {
      WeakRetained[25] = 0;
      v4 = WeakRetained;

      WeakRetained = v4;
    }
  }
}

void sub_10017F2F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[24];
    if (v3 == *(a1 + 32))
    {
      WeakRetained[24] = 0;
      v4 = WeakRetained;

      WeakRetained = v4;
    }
  }
}

void sub_10017F364(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9 = v3;
    if (v3)
    {
      v4 = a1[28];
      if (v4)
      {
        [v4 setObject:0 forKeyedSubscript:v9];
      }

      v5 = a1[29];
      if (v5)
      {
        [v5 setObject:0 forKeyedSubscript:v9];
      }

      sub_1000085D0(a1);
      goto LABEL_8;
    }

    v6 = sub_1001762F4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    v3 = 0;
    if (IsLevelEnabled)
    {
      v8 = sub_1001762F4();
      _NRLogWithArgs(v8, 17, "%s called with null identifier", "[NRLinkManagerWiFi removeAssertionReasonForIdentifier:]");

LABEL_8:
      v3 = v9;
    }
  }
}

void sub_10017F43C(id *a1, uint64_t a2, void *a3, void *a4)
{
  v18 = a3;
  v7 = a4;
  if (a1)
  {
    v8 = v18;
    if (v18)
    {
      if (!a1[28])
      {
        v9 = objc_alloc_init(NSMutableDictionary);
        v10 = a1[28];
        a1[28] = v9;

        v8 = v18;
      }

      if (a1[29])
      {
        if (a2)
        {
LABEL_7:
          v11 = [NSNumber numberWithUnsignedLongLong:a2];
          [a1[28] setObject:v11 forKeyedSubscript:v18];

          v12 = v7;
LABEL_10:
          [a1[29] setObject:v12 forKeyedSubscript:v18];
          sub_1000085D0(a1);
          goto LABEL_11;
        }
      }

      else
      {
        v13 = objc_alloc_init(NSMutableDictionary);
        v14 = a1[29];
        a1[29] = v13;

        v8 = v18;
        if (a2)
        {
          goto LABEL_7;
        }
      }

      [a1[28] setObject:0 forKeyedSubscript:v8];
      v12 = 0;
      goto LABEL_10;
    }

    v15 = sub_1001762F4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v17 = sub_1001762F4();
      _NRLogWithArgs(v17, 17, "%s called with null identifier", "[NRLinkManagerWiFi addAssertionReasonWithMask:identifier:clients:]");
    }
  }

LABEL_11:
}

void sub_10017F5C8(uint64_t a1, char a2)
{
  if (a1)
  {
    v4 = *(a1 + 24);
    dispatch_assert_queue_V2(v4);

    if (*(a1 + 216))
    {
      *(a1 + 34) = a2;

      sub_1000050BC(a1);
    }
  }
}

uint64_t sub_10017F64C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    dispatch_assert_queue_V2(v2);

    return *(v1 + 40) > 0;
  }

  return result;
}

uint64_t sub_10017F69C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    dispatch_assert_queue_V2(v2);

    *(v1 + 48) += *(v1 + 40);
    sub_10017A860(v1, 0);
    *(v1 + 33) = 0;
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      return _NRLogWithArgs(qword_1002294A0, 0, "%s%.30s:%-4d cleared prefer Wi-Fi asserts (active=%d, cleared=%d)", "", "[NRLinkManagerWiFi clearPreferWiFiAsserts]", 1922, *(v1 + 40), *(v1 + 48));
    }
  }

  return result;
}

uint64_t sub_10017F7C8(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    dispatch_assert_queue_V2(v2);

    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v3 = *(a1 + 176);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10017FA18;
    v15[3] = &unk_1001FD128;
    v17 = &v18;
    v4 = v3;
    v16 = v4;
    if (sub_10017AE24(NRLinkManagerWiFi, v15))
    {
      v12 = sub_1001762F4();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v14 = sub_1001762F4();
        _NRLogWithArgs(v14, 16, "%s%.30s:%-4d Timed out getting WiFi power state, assuming OFF", "", "[NRLinkManagerWiFi isWiFiPoweredOn]", 1946);
      }

      v10 = 0;
    }

    else
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v5 = qword_1002294A0;
      v6 = _NRLogIsLevelEnabled();

      if (v6)
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        v7 = qword_1002294A0;
        v8 = v7;
        if (*(v19 + 24))
        {
          v9 = "ON";
        }

        else
        {
          v9 = "OFF";
        }

        _NRLogWithArgs(v7, 1, "%s%.30s:%-4d WiFi power state = %s", "", "[NRLinkManagerWiFi isWiFiPoweredOn]", 1943, v9);
      }

      v10 = *(v19 + 24);
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_10017FA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10017FA18(uint64_t a1)
{
  result = [*(a1 + 32) powerOn];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10017FA4C(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) interfaceNames];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v10 + 1) + 8 * v6) isEqualToString:*(a1 + 40)])
        {
          v7 = [*(a1 + 32) SSID];
          v8 = *(*(a1 + 48) + 8);
          v9 = *(v8 + 40);
          *(v8 + 40) = v7;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_10017FB74(uint64_t a1)
{
  v2 = [*(a1 + 32) countryCode];
  v3 = v2;
  if (v2 && [v2 compare:@"XZ" options:1])
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 56) + 8);
    obj = *(v6 + 40);
    v7 = [v4 setCompanionCountryCode:v5 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    *(*(*(a1 + 48) + 8) + 24) = v7;
  }
}

uint64_t sub_10017FC20(uint64_t a1)
{
  v2 = [*(a1 + 32) countryCode];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

id sub_10017FC6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 37);
    LOBYTE(v3) = *(v3 + 38);
  }

  else
  {
    v4 = 0;
  }

  return [v2 didUpdatePHSState:v4 & 1 llphsActive:v3 & 1];
}

void sub_10017FCA8(uint64_t a1)
{
  v5 = [*(a1 + 32) NANData];
  v2 = [v5 interfaceName];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10017FD10(uint64_t a1)
{
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v2 = qword_1002290B8;
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 12);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = sub_10007401C(v5, 0);

  if (v6 != *(a1 + 33))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 160));
    v8 = [WeakRetained preferWiFiP2PRequestUpdated];

    if (v8)
    {
      *(a1 + 33) = v6;
    }
  }
}

void sub_10017FDF0(uint64_t a1, uint64_t a2)
{
  [a1 reportEvent:2014];
  location = 0;
  p_location = &location;
  v34 = 0x3032000000;
  v35 = sub_10017AF00;
  v36 = sub_10017AF10;
  v37 = 0;
  [@"awdl0" UTF8String];
  v4 = nw_interface_create_with_name();
  if (v4 && nw_interface_get_subtype() == 1002)
  {
    v5 = p_location[5];
    p_location[5] = @"awdl0";
  }

  else
  {
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    v6 = qword_1002294A0;
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v8 = qword_1002294A0;
      _NRLogWithArgs(v8, 1, "%s%.30s:%-4d Falling back to retrieving AWDL interface from wifid", "", "[NRLinkManagerWiFi setupWiFiManagerForAWDL]", 2275);
    }

    v9 = *(a1 + 176);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100180378;
    v29[3] = &unk_1001FD128;
    v31 = &location;
    v5 = v9;
    v30 = v5;
    if (sub_10017AE24(NRLinkManagerWiFi, v29))
    {
      v17 = sub_1001762F4();
      v18 = _NRLogIsLevelEnabled();

      if (v18)
      {
        v19 = sub_1001762F4();
        _NRLogWithArgs(v19, 16, "%s%.30s:%-4d Timed out getting AWDL interface name", "", "[NRLinkManagerWiFi setupWiFiManagerForAWDL]", 2282);
      }

      goto LABEL_29;
    }
  }

  if (p_location[5])
  {
    v10 = [NRSCDInterfaceConfig alloc];
    v11 = sub_1000262B4(&v10->super.isa, p_location[5], 1);
    v12 = *(a1 + 112);
    *(a1 + 112) = v11;

    v13 = *(a1 + 112);
    if (v13)
    {
      v14 = v13[3];

      if (v14)
      {
        sub_10017B004(a1);

        _Block_object_dispose(&location, 8);

        [a1 reportEvent:2016];
        return;
      }
    }

    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    v20 = qword_1002294A0;
    v21 = _NRLogIsLevelEnabled();

    if (v21)
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v5 = qword_1002294A0;
      _NRLogWithArgs(v5, 17, "failed to find interface index for %@", p_location[5]);
      goto LABEL_29;
    }
  }

  else
  {
    v15 = sub_1001762F4();
    v16 = _NRLogIsLevelEnabled();

    if (v16)
    {
      v5 = sub_1001762F4();
      _NRLogWithArgs(v5, 16, "%s%.30s:%-4d Failed to determine AWDL interface", "", "[NRLinkManagerWiFi setupWiFiManagerForAWDL]", 2288);
LABEL_29:
    }
  }

  _Block_object_dispose(&location, 8);
  sub_100180300(a1);
  if ((2 * a2) >= 0x12C)
  {
    v22 = 300;
  }

  else
  {
    v22 = (2 * a2);
  }

  [a1 reportEvent:2015 detailsFormat:@"Retry in %us (attempt: %u)", v22, a2];
  objc_initWeak(&location, a1);
  v23 = dispatch_time(0, 1000000000 * v22);
  if (a1)
  {
    v24 = *(a1 + 24);
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100180314;
  block[3] = &unk_1001FD1A0;
  objc_copyWeak(&v27, &location);
  v28 = a2;
  dispatch_after(v23, v25, block);

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void sub_1001802E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100180314(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[3] != 1004)
  {
    v3 = WeakRetained;
    sub_10017FDF0(WeakRetained, (*(a1 + 40) + 1));
    WeakRetained = v3;
  }
}

void sub_100180378(uint64_t a1)
{
  v5 = [*(a1 + 32) AWDL];
  v2 = [v5 interfaceName];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001803E0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[9];
    if (v3)
    {
      v4 = v3;
      v5 = v2[9];
      v6 = [v5 count];

      if (v6)
      {
        v7 = v2[9];
        v8 = [v7 allKeys];
        v9 = [v8 copy];

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v16 = *(*(&v19 + 1) + 8 * i);
              v17 = sub_100163B2C(NRDLocalDevice, v16, 0);
              v18 = v17;
              if (!v17 || (*(v17 + 48) & 2) == 0)
              {
                v15 = v2[9];
                [v15 setObject:0 forKeyedSubscript:{v16, v19}];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v12);
        }
      }
    }
  }
}

void sub_100180590(id *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = a1[3];
    dispatch_assert_queue_V2(v2);

    v3 = [v1[19] copy];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = v3;
    v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [v9 nrUUID];
          v11 = sub_100163A30(NRDLocalDevice, v10);

          if (!v11 || (v11[48] & 2) == 0)
          {
            v8 = @"Device has been disabled %@";
LABEL_7:
            [v9 cancelWithReason:{v8, v11}];
            goto LABEL_8;
          }

          WeakRetained = objc_loadWeakRetained(v1 + 2);
          [v9 nrUUID];
          v14 = v13 = v1;
          v15 = [WeakRetained perpetualStandaloneMeadowEnabledForNRUUID:v14];

          v1 = v13;
          v8 = @"Perpetual standalone Meadow mode enabled for %@";
          if (v15)
          {
            goto LABEL_7;
          }

LABEL_8:
        }

        v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }

    if ((sub_10016C59C(NRDLocalDevice) & 1) == 0)
    {
      sub_10017F69C(v1);
    }

    sub_1001803E0(v1[13]);
    sub_1001803E0(v1[14]);
    sub_1001803E0(v1[15]);
    sub_1001803E0(v1[16]);
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      _NRLogWithArgs(qword_1002294A0, 1, "%s%.30s:%-4d Forcing interface availability event to check for new enabled devices", "", "[NRLinkManagerWiFi checkEnabledDevices]", 2704);
    }

    sub_1001771D0(v1);
    sub_100175E70(v1);
    sub_100177B24(v1);
  }
}

void *sub_1001808C4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v13.receiver = a1;
  v13.super_class = NRDKeyManager;
  v1 = objc_msgSendSuper2(&v13, "init");
  if (!v1)
  {
    v6 = sub_100180A2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = sub_100180A2C();
      _NRLogWithArgs(v8, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDKeyManager initInternal]", 92);
    }

    v9 = _os_log_pack_size();
    v10 = __error();
    v11 = _os_log_pack_fill(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9, *v10, &_mh_execute_header, "%{public}s [super init] failed");
    *v11 = 136446210;
    *(v11 + 4) = "[NRDKeyManager initInternal]";
    sub_100180A2C();
    _NRLogAbortWithPack();
    return 0;
  }

  v2 = v1;
  v3 = sub_100003490();
  v4 = v2[2];
  v2[2] = v3;

  *(v2 + 3) = -1;
  *(v2 + 8) = 4;
  return v2;
}

id sub_100180A2C()
{
  if (qword_1002294D8 != -1)
  {
    dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
  }

  v1 = qword_1002294D0;

  return v1;
}

void sub_100180A80(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002294D0;
  qword_1002294D0 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100180AC4(uint64_t a1)
{
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v1 = qword_1002294C0;

  return v1;
}

void sub_100180B1C(id a1)
{
  v1 = sub_1001808C4([NRDKeyManager alloc]);
  v2 = qword_1002294C0;
  qword_1002294C0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100180B5C(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 16));
  if (*(a1 + 12) == -1)
  {
    objc_initWeak(&location, a1);
    v2 = *(a1 + 16);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100180DA0;
    handler[3] = &unk_1001FD278;
    objc_copyWeak(&v10, &location);
    v3 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", (a1 + 12), v2, handler);
    if (v3)
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      v4 = qword_1002294D0;
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if ((IsLevelEnabled & 1) == 0)
      {
        goto LABEL_16;
      }

      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      v6 = qword_1002294D0;
      _NRLogWithArgs(v6, 17, "Failed to register for lock state notifications %u", v3);
    }

    else
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      v7 = qword_1002294D0;
      v8 = _NRLogIsLevelEnabled();

      if (!v8)
      {
        goto LABEL_16;
      }

      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      v6 = qword_1002294D0;
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d Registered for lock state notifications", "", "[NRDKeyManager startWatchingLockState]", 329);
    }

LABEL_16:
    sub_100180DE0(a1);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void sub_100180D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100180DA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_100180DE0(WeakRetained);
}

void sub_100180DE0(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v2 = 1;
    *(a1 + 10) = 1;
    v3 = MKBGetDeviceLockState();
    if (v3)
    {
      sub_100181020(a1);
      if (*(a1 + 9))
      {
        v2 = 3;
      }

      else
      {
        v2 = 4;
      }
    }

    else
    {
      *(a1 + 9) = 1;
    }

    if (*(a1 + 8) == v2)
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        v15 = qword_1002294D0;
        String = NRDataProtectionClassCreateString();
        if (v3 >= 8)
        {
          v5 = [[NSString alloc] initWithFormat:@"Unknown[%d]", v3];
        }

        else
        {
          v5 = *(&off_1001FD2E0 + v3);
        }

        _NRLogWithArgs(v15, 0, "%s%.30s:%-4d Keeping lock state %@ in response to %@", "", "[NRDKeyManager handleLockStateChange]", 311, String, v5);
      }
    }

    else
    {
      v6 = NRDataProtectionClassCreateString();
      v7 = NRDataProtectionClassCreateString();
      v13 = v7;
      if (v3 >= 8)
      {
        v7 = [[NSString alloc] initWithFormat:@"Unknown[%d]", v3];
        v14 = v7;
      }

      else
      {
        v14 = *(&off_1001FD2E0 + v3);
      }

      sub_100181204(v7, 5400, @"%@ -> %@ (%@)", v8, v9, v10, v11, v12, v6);

      *(a1 + 8) = v2;

      sub_100181284(a1);
    }
  }
}

void sub_100181020(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 16));
  if ((*(a1 + 9) & 1) == 0)
  {
    v2 = MKBDeviceUnlockedSinceBoot();
    if (v2)
    {
      if (v2 == 1)
      {
        *(a1 + 9) = 1;
      }

      else
      {
        v3 = __error();
        if (*v3 == 3)
        {
          if (strerror_r(3, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (qword_1002294D8 != -1)
          {
            dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002294D8 != -1)
            {
              dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
            }

            _NRLogWithArgs(qword_1002294D0, 16, "%s%.30s:%-4d MKBDeviceUnlockedSinceBoot() returned %d: [%d] %s", "");
          }
        }

        else
        {
          if (strerror_r(*v3, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (qword_1002294D8 != -1)
          {
            dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002294D8 != -1)
            {
              dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
            }

            _NRLogWithArgs(qword_1002294D0, 17, "MKBDeviceUnlockedSinceBoot() returned %d: [%d] %s");
          }
        }
      }
    }
  }
}

void sub_100181204(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a3;
  v11 = [[NSString alloc] initWithFormat:v10 arguments:&a9];

  sub_1000059A8(0, a2, &stru_1001FDE68, v11);
}

void sub_100181284(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 16));
  v2 = *(a1 + 8);
  if ((v2 | 2) != 3 || (v3 = *(a1 + 32)) == 0)
  {
    v5 = 0;
    v6 = *(a1 + 24);
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (*(v3 + 16))();
  v4 = *(a1 + 32);
  *(a1 + 32) = 0;

  v2 = *(a1 + 8);
  v5 = 1;
  v6 = *(a1 + 24);
  if (v6)
  {
LABEL_6:
    (*(v6 + 16))(v6, v2);
    LODWORD(v2) = *(a1 + 8);
  }

LABEL_7:
  if ((v2 | 2) == 3)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = [v7 count];
      sub_100181204(v8, 5401, @"(%llu clients)", v9, v10, v11, v12, v13, v8);
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v14 = *(a1 + 40);
      v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v27;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v27 != v17)
            {
              objc_enumerationMutation(v14);
            }

            (*(*(*(&v26 + 1) + 8 * i) + 16))();
          }

          v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v16);
      }

      [*(a1 + 40) removeAllObjects];
      v19 = *(a1 + 40);
      *(a1 + 40) = 0;

      LODWORD(v2) = *(a1 + 8);
      v5 = 1;
    }

    if (v2 == 1 && (v20 = *(a1 + 48)) != 0)
    {
      v21 = 0;
      if ([v20 count])
      {
        do
        {
          if (MKBGetDeviceLockState())
          {
            break;
          }

          v22 = [*(a1 + 48) objectAtIndexedSubscript:v21];
          v22[2]();

          ++v21;
        }

        while (v21 < [*(a1 + 48) count]);
      }

      v23 = [*(a1 + 48) count];
      v24 = *(a1 + 48);
      if (v21 == v23)
      {
        [v24 removeAllObjects];
        v25 = *(a1 + 48);
        *(a1 + 48) = 0;
      }

      else
      {
        [v24 removeObjectsInRange:{0, v21}];
        if ((v5 & 1) == 0)
        {
          return;
        }
      }
    }

    else if (!v5)
    {
      return;
    }
  }

  else if ((v5 & 1) == 0)
  {
    return;
  }

  if (!*(a1 + 24) && !*(a1 + 40) && !*(a1 + 48))
  {
    sub_100181504(a1);
  }
}

uint64_t sub_100181504(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 16));
  result = *(a1 + 12);
  if (result != -1)
  {
    v3 = notify_cancel(result);
    *(a1 + 12) = -1;
    if (v3)
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      result = _NRLogIsLevelEnabled();
      if (result)
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        return _NRLogWithArgs(qword_1002294D0, 17, "Failed to unregister for lock state notifications %u");
      }
    }

    else
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      result = _NRLogIsLevelEnabled();
      if (result)
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        return _NRLogWithArgs(qword_1002294D0, 0, "%s%.30s:%-4d Unregistered for lock state notifications");
      }
    }
  }

  return result;
}

BOOL sub_10018165C(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    dispatch_assert_queue_V2(*(result + 16));
    if ((v1[10] & 1) == 0)
    {
      v1[10] = 1;
      if (v1[8] == 4)
      {
        sub_100181020(v1);
        if (v1[9] == 1)
        {
          v1[8] = 3;
          sub_100181284(v1);
        }
      }
    }

    return (v1[8] & 0xFD) == 1;
  }

  return result;
}

void sub_1001816DC(uint64_t a1, void *a2)
{
  v17 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if (v17)
    {
      dispatch_assert_queue_V2(*(a1 + 16));
      if ((*(a1 + 10) & 1) == 0)
      {
        *(a1 + 10) = 1;
        if (*(a1 + 8) == 4)
        {
          sub_100181020(a1);
          if (*(a1 + 9) == 1)
          {
            *(a1 + 8) = 3;
            sub_100181284(a1);
          }
        }
      }

      v3 = v17;
      if ((*(a1 + 8) & 0xFD) == 1)
      {
        v17[2]();
      }

      else
      {
        v4 = *(a1 + 40);
        if (!v4)
        {
          v5 = objc_alloc_init(NSMutableArray);
          v6 = *(a1 + 40);
          *(a1 + 40) = v5;

          v3 = v17;
          v4 = *(a1 + 40);
          if (!v4)
          {
            v11 = sub_100180A2C();
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              v13 = sub_100180A2C();
              _NRLogWithArgs(v13, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (_classCUnlockedBlocks) != ((void*)0)", "", "[NRDKeyManager runAfterClassCUnlock:]", 164);
            }

            v14 = _os_log_pack_size();
            v15 = __error();
            v16 = _os_log_pack_fill(&v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v14, *v15, &_mh_execute_header, "%{public}s Assertion Failed: (_classCUnlockedBlocks) != ((void*)0)");
            *v16 = 136446210;
            *(v16 + 4) = "[NRDKeyManager runAfterClassCUnlock:]";
            sub_100180A2C();
            _NRLogAbortWithPack();
          }
        }

        v7 = objc_retainBlock(v3);
        [v4 addObject:v7];

        sub_100180B5C(a1);
      }
    }

    else
    {
      v8 = sub_100180A2C();
      v9 = _NRLogIsLevelEnabled();

      if (v9)
      {
        v10 = sub_100180A2C();
        _NRLogWithArgs(v10, 17, "%s called with null classCUnlockedBlock", "[NRDKeyManager runAfterClassCUnlock:]");
      }
    }
  }
}

void sub_100181928(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
LABEL_12:

    return;
  }

  v17 = v3;
  dispatch_assert_queue_V2(*(a1 + 16));
  if (!v17)
  {
    v6 = sub_100180A2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    v3 = 0;
    if (!IsLevelEnabled)
    {
      goto LABEL_12;
    }

    v8 = sub_100180A2C();
    _NRLogWithArgs(v8, 17, "%s called with null localDeviceClassCUnlockedBlock", "[NRDKeyManager runForLocalDeviceAfterClassCUnlock:]");

    goto LABEL_11;
  }

  dispatch_assert_queue_V2(*(a1 + 16));
  if ((*(a1 + 10) & 1) == 0)
  {
    *(a1 + 10) = 1;
    if (*(a1 + 8) == 4)
    {
      sub_100181020(a1);
      if (*(a1 + 9) == 1)
      {
        *(a1 + 8) = 3;
        sub_100181284(a1);
      }
    }
  }

  if ((*(a1 + 8) & 0xFD) == 1)
  {
    v17[2]();
LABEL_11:
    v3 = v17;
    goto LABEL_12;
  }

  if (!*(a1 + 32))
  {
    v4 = objc_retainBlock(v17);
    v5 = *(a1 + 32);
    *(a1 + 32) = v4;

    goto LABEL_11;
  }

  v9 = sub_100180A2C();
  v10 = _NRLogIsLevelEnabled();

  if (v10)
  {
    v11 = sub_100180A2C();
    _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: Tried to register a second local device class C unlocked block", "", "[NRDKeyManager runForLocalDeviceAfterClassCUnlock:]", 180);
  }

  v12 = _os_log_pack_size();
  v13 = __error();
  v14 = _os_log_pack_fill(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12, *v13, &_mh_execute_header, "%{public}s Tried to register a second local device class C unlocked block");
  *v14 = 136446210;
  *(v14 + 4) = "[NRDKeyManager runForLocalDeviceAfterClassCUnlock:]";
  sub_100180A2C();
  v15 = _NRLogAbortWithPack();
  sub_100181B44(v15, v16);
}

void sub_100181B44(uint64_t a1, void *a2)
{
  v17 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v3 = v17;
    if (v17)
    {
      v4 = *(a1 + 48);
      if (!v4)
      {
        v5 = objc_alloc_init(NSMutableArray);
        v6 = *(a1 + 48);
        *(a1 + 48) = v5;

        v3 = v17;
        v4 = *(a1 + 48);
        if (!v4)
        {
          v11 = sub_100180A2C();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v13 = sub_100180A2C();
            _NRLogWithArgs(v13, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (_classAUnlockedBlocks) != ((void*)0)", "", "[NRDKeyManager runAfterNextClassAUnlock:]", 205);
          }

          v14 = _os_log_pack_size();
          v15 = __error();
          v16 = _os_log_pack_fill(&v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v14, *v15, &_mh_execute_header, "%{public}s Assertion Failed: (_classAUnlockedBlocks) != ((void*)0)");
          *v16 = 136446210;
          *(v16 + 4) = "[NRDKeyManager runAfterNextClassAUnlock:]";
          sub_100180A2C();
          _NRLogAbortWithPack();
        }
      }

      v7 = objc_retainBlock(v3);
      [v4 addObject:v7];

      sub_100180B5C(a1);
    }

    else
    {
      v8 = sub_100180A2C();
      v9 = _NRLogIsLevelEnabled();

      if (v9)
      {
        v10 = sub_100180A2C();
        _NRLogWithArgs(v10, 17, "%s called with null classAUnlockedBlock", "[NRDKeyManager runAfterNextClassAUnlock:]");
      }
    }
  }
}

void sub_100181D24(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if (qword_1002294D8 != -1)
    {
      dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      _NRLogWithArgs(qword_1002294D0, 0, "%s%.30s:%-4d Deleting local identity %@", "", "[NRDKeyManager deleteEphemeralLocalIdentityFromKeychain]", 429, @"local-identity");
    }

    v3[0] = kSecClass;
    v3[1] = kSecAttrLabel;
    v4[0] = kSecClassIdentity;
    v4[1] = @"local-identity";
    v3[2] = kSecAttrAccessGroup;
    v3[3] = kSecAttrAccessible;
    v4[2] = @"com.apple.terminusd.local-identity";
    v4[3] = kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
    v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
    v2 = SecItemDelete(v1);
    if (v2 == -25308)
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        _NRLogWithArgs(qword_1002294D0, 16, "%s%.30s:%-4d Failed to delete local identity: keychain locked");
      }
    }

    else if (v2 == -25300)
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        _NRLogWithArgs(qword_1002294D0, 0, "%s%.30s:%-4d Failed to delete local identity: item not found (not an error)");
      }
    }

    else if (v2)
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        _NRLogWithArgs(qword_1002294D0, 17, "Failed to delete local identity: %d");
      }
    }

    else
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        _NRLogWithArgs(qword_1002294D0, 0, "%s%.30s:%-4d Successfully deleted local identity");
      }
    }
  }
}

uint64_t sub_1001820C0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    goto LABEL_50;
  }

  dispatch_assert_queue_V2(*(a1 + 16));
  if (!v7)
  {
    v21 = sub_100180A2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v23 = sub_100180A2C();
      _NRLogWithArgs(v23, 17, "%s called with null itemName", "[NRDKeyManager deleteKeyfromKeychainWithName:nrUUID:dataProtectionClass:]");

      v19 = 0;
      goto LABEL_47;
    }

LABEL_50:
    v19 = 0;
    goto LABEL_47;
  }

  v9 = &kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
  if (v4 != 4)
  {
    v9 = &kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  }

  v10 = *v9;
  String = NRDataProtectionClassCreateString();
  if (!v10)
  {
    v24 = sub_100180A2C();
    v25 = _NRLogIsLevelEnabled();

    if (v25)
    {
      v26 = sub_100180A2C();
      _NRLogWithArgs(v26, 17, "Cannot delete key %@ from keychain for %@", v7, String);
    }

    v19 = 0;
    goto LABEL_46;
  }

  v12 = [NSString alloc];
  if (v8)
  {
    v13 = [v12 initWithFormat:@"%@/%@/%@/%@", @"com.apple.terminusd", v8, String, v7];
  }

  else
  {
    v13 = [v12 initWithFormat:@"%@/%@", @"com.apple.terminusd", v7, v27, v28];
  }

  v14 = v13;
  if (qword_1002294D8 != -1)
  {
    dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002294D8 != -1)
    {
      dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    }

    _NRLogWithArgs(qword_1002294D0, 0, "%s%.30s:%-4d Deleting %@ keychain key %@", "", "[NRDKeyManager deleteKeyfromKeychainWithName:nrUUID:dataProtectionClass:]", 610, String, v14);
  }

  v15 = [v14 dataUsingEncoding:4];
  v31[0] = kSecClass;
  v31[1] = kSecAttrApplicationTag;
  v32[0] = kSecClassKey;
  v32[1] = v15;
  v31[2] = kSecAttrAccessGroup;
  v32[2] = @"com.apple.terminusd";
  v16 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];
  v17 = SecItemDelete(v16);
  if (v17 == -25308)
  {
    if (qword_1002294D8 != -1)
    {
      dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      _NRLogWithArgs(qword_1002294D0, 16, "%s%.30s:%-4d Failed to delete %@ keychain key %@: keychain locked", "", "[NRDKeyManager deleteKeyfromKeychainWithName:nrUUID:dataProtectionClass:]", 630, String, v14);
    }

    goto LABEL_44;
  }

  v18 = v17;
  if (v17 == -25300)
  {
    if (qword_1002294D8 != -1)
    {
      dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      _NRLogWithArgs(qword_1002294D0, 0, "%s%.30s:%-4d Failed to delete %@ keychain key %@: item not found (not an error)", "", "[NRDKeyManager deleteKeyfromKeychainWithName:nrUUID:dataProtectionClass:]", 627, String, v14);
      goto LABEL_30;
    }

LABEL_31:
    v19 = 1;
    goto LABEL_45;
  }

  if (v17)
  {
    if (qword_1002294D8 != -1)
    {
      dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      _NRLogWithArgs(qword_1002294D0, 17, "Failed to delete %@ keychain key %@: %d", String, v14, v18, v29, v30);
    }

LABEL_44:
    v19 = 0;
    goto LABEL_45;
  }

  if (qword_1002294D8 != -1)
  {
    dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
  }

  if (!_NRLogIsLevelEnabled())
  {
    goto LABEL_31;
  }

  if (qword_1002294D8 != -1)
  {
    dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
  }

  _NRLogWithArgs(qword_1002294D0, 0, "%s%.30s:%-4d Successfully deleted %@ keychain key %@", "", "[NRDKeyManager deleteKeyfromKeychainWithName:nrUUID:dataProtectionClass:]", 623, String, v14);
LABEL_30:
  v19 = 1;
LABEL_45:

LABEL_46:
LABEL_47:

  return v19;
}

BOOL sub_1001825C0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  v9 = a5;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v54 = v13;
  if (!a1)
  {
    goto LABEL_90;
  }

  dispatch_assert_queue_V2(*(a1 + 16));
  if (!v14)
  {
    v37 = sub_100180A2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_90;
    }

    v39 = sub_100180A2C();
    _NRLogWithArgs(v39, 17, "%s called with null itemName");
LABEL_89:

    v28 = 0;
    goto LABEL_82;
  }

  if (!v13)
  {
    v40 = sub_100180A2C();
    v41 = _NRLogIsLevelEnabled();

    if (!v41)
    {
      goto LABEL_90;
    }

    v39 = sub_100180A2C();
    _NRLogWithArgs(v39, 17, "%s called with null itemData");
    goto LABEL_89;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v42 = sub_100180A2C();
    v43 = _NRLogIsLevelEnabled();

    if (v43)
    {
      v39 = sub_100180A2C();
      _NRLogWithArgs(v39, 17, "%s called with null [itemData isKindOfClass:[NSData class]]");
      goto LABEL_89;
    }

LABEL_90:
    v28 = 0;
    goto LABEL_82;
  }

  if (a6)
  {
    *a6 = 0;
  }

  v16 = &kSecAttrAccessibleAlwaysPrivate;
  if (v9 != 4)
  {
    v16 = &kSecAttrAccessibleAfterFirstUnlock;
  }

  v17 = &kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
  if (v9 != 4)
  {
    v17 = &kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  }

  if (!a7)
  {
    v16 = v17;
  }

  v18 = *v16;
  String = NRDataProtectionClassCreateString();
  v20 = String;
  v53 = v18;
  if (!v18)
  {
    v44 = String;
    v45 = sub_100180A2C();
    v46 = _NRLogIsLevelEnabled();

    if (v46)
    {
      v47 = sub_100180A2C();
      v20 = v44;
      _NRLogWithArgs(v47, 17, "Cannot save item %@ to keychain for %@", v14, v44);

      v28 = 0;
    }

    else
    {
      v28 = 0;
      v20 = v44;
    }

    goto LABEL_81;
  }

  v21 = v14;
  if (v15)
  {
    v22 = [[NSString alloc] initWithFormat:@"%@/%@/%@", v15, v20, v21];

    v21 = v22;
  }

  if (qword_1002294D8 != -1)
  {
    dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002294D8 != -1)
    {
      dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    }

    v23 = qword_1002294D0;
    _NRLogWithArgs(v23, 0, "%s%.30s:%-4d Updating %@ keychain item %@ length %llu", "", "-[NRDKeyManager saveData:toKeychainWithName:nrUUID:dataProtectionClass:keychainLocked:synchronizable:]", 665, v20, v21, [v13 length]);
  }

  v51 = v15;
  v24 = objc_alloc_init(NSMutableDictionary);
  [v24 setObject:kSecClassGenericPassword forKeyedSubscript:kSecClass];
  [v24 setObject:@"com.apple.terminusd" forKeyedSubscript:kSecAttrService];
  [v24 setObject:v21 forKeyedSubscript:kSecAttrAccount];
  [v24 setObject:@"com.apple.terminusd" forKeyedSubscript:kSecAttrAccessGroup];
  if (a7)
  {
    [v24 setObject:kSecAttrViewHintWatchMigration forKeyedSubscript:kSecAttrSyncViewHint];
  }

  v50 = a7;
  v25 = [NSNumber numberWithBool:a7];
  [v24 setObject:v25 forKeyedSubscript:kSecAttrSynchronizable];

  v55[0] = kSecAttrAccessible;
  v55[1] = kSecValueData;
  v56[0] = v53;
  v56[1] = v13;
  v52 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:2];
  v26 = SecItemUpdate(v24, v52);
  if (v26 == -25308)
  {
    if (a6)
    {
      *a6 = 1;
    }

    v15 = v51;
    if (qword_1002294D8 != -1)
    {
      dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      _NRLogWithArgs(qword_1002294D0, 16, "%s%.30s:%-4d Failed to update %@ keychain item %@: keychain locked", "", "[NRDKeyManager saveData:toKeychainWithName:nrUUID:dataProtectionClass:keychainLocked:synchronizable:]", 694, v20, v21);
    }
  }

  else
  {
    v27 = v26;
    if (v26 == -25300)
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      v29 = v54;
      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        v30 = qword_1002294D0;
        _NRLogWithArgs(v30, 0, "%s%.30s:%-4d Adding %@ keychain item %@ length %llu", "", "-[NRDKeyManager saveData:toKeychainWithName:nrUUID:dataProtectionClass:keychainLocked:synchronizable:]", 705, v20, v21, [v54 length]);

        v29 = v54;
      }

      v31 = objc_alloc_init(NSMutableDictionary);
      [v31 setObject:kSecClassGenericPassword forKeyedSubscript:kSecClass];
      [v31 setObject:@"com.apple.terminusd" forKeyedSubscript:kSecAttrService];
      [v31 setObject:v21 forKeyedSubscript:kSecAttrAccount];
      [v31 setObject:@"com.apple.terminusd" forKeyedSubscript:kSecAttrAccessGroup];
      [v31 setObject:v53 forKeyedSubscript:kSecAttrAccessible];
      [v31 setObject:v29 forKeyedSubscript:kSecValueData];
      if (v50)
      {
        [v31 setObject:kSecAttrViewHintWatchMigration forKeyedSubscript:kSecAttrSyncViewHint];
      }

      v32 = [NSNumber numberWithBool:v50];
      [v31 setObject:v32 forKeyedSubscript:kSecAttrSynchronizable];

      v33 = SecItemAdd(v31, 0);
      v28 = v33 == 0;
      v15 = v51;
      if (v33)
      {
        v34 = v33;
        if (v33 == -25308)
        {
          if (a6)
          {
            *a6 = 1;
          }

          if (qword_1002294D8 != -1)
          {
            dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002294D8 != -1)
            {
              dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
            }

            _NRLogWithArgs(qword_1002294D0, 16, "%s%.30s:%-4d Failed to add %@ keychain item %@: keychain locked", "", "[NRDKeyManager saveData:toKeychainWithName:nrUUID:dataProtectionClass:keychainLocked:synchronizable:]", 731, v20, v21);
          }
        }

        else
        {
          if (qword_1002294D8 != -1)
          {
            dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002294D8 != -1)
            {
              dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
            }

            _NRLogWithArgs(qword_1002294D0, 17, "Failed to add %@ keychain item %@: %d", v20, v21, v34, v48, v49);
          }
        }
      }

      else
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002294D8 != -1)
          {
            dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
          }

          v35 = qword_1002294D0;
          _NRLogWithArgs(v35, 0, "%s%.30s:%-4d Successfully added %@ keychain item %@ length %llu", "", "-[NRDKeyManager saveData:toKeychainWithName:nrUUID:dataProtectionClass:keychainLocked:synchronizable:]", 724, v20, v21, [v54 length]);
        }
      }

      goto LABEL_80;
    }

    if (!v26)
    {
      v15 = v51;
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        _NRLogWithArgs(qword_1002294D0, 0, "%s%.30s:%-4d Successfully updated %@ keychain item %@", "", "[NRDKeyManager saveData:toKeychainWithName:nrUUID:dataProtectionClass:keychainLocked:synchronizable:]", 686, v20, v21);
        v28 = 1;
      }

      else
      {
        v28 = 1;
      }

      goto LABEL_80;
    }

    v15 = v51;
    if (qword_1002294D8 != -1)
    {
      dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      _NRLogWithArgs(qword_1002294D0, 17, "Failed to update %@ keychain item %@: %d", v20, v21, v27, v48, v49);
    }
  }

  v28 = 0;
LABEL_80:

LABEL_81:
LABEL_82:

  return v28;
}

id sub_100183000(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v9 = a2;
  v10 = a3;
  if (!a1)
  {
    goto LABEL_63;
  }

  dispatch_assert_queue_V2(*(a1 + 16));
  if (v9)
  {
    v11 = &kSecAttrAccessibleAlwaysPrivate;
    if (v6 != 4)
    {
      v11 = &kSecAttrAccessibleAfterFirstUnlock;
    }

    v12 = &kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
    if (v6 != 4)
    {
      v12 = &kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
    }

    if (!a5)
    {
      v11 = v12;
    }

    v13 = *v11;
    String = NRDataProtectionClassCreateString();
    if (!v13)
    {
      v35 = sub_100180A2C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v37 = sub_100180A2C();
        _NRLogWithArgs(v37, 17, "Cannot save item %@ to keychain for %@", v9, String);
      }

      v22 = 0;
      goto LABEL_57;
    }

    v15 = v9;
    if (v10)
    {
      v16 = [[NSString alloc] initWithFormat:@"%@/%@/%@", v10, String, v15];

      v15 = v16;
    }

    if (qword_1002294D8 != -1)
    {
      dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      _NRLogWithArgs(qword_1002294D0, 0, "%s%.30s:%-4d Reading %@ keychain item %@", "", "[NRDKeyManager readDataFromKeychainWithName:nrUUID:dataProtectionClass:keychainLocked:synchronizable:]", 760, String, v15);
    }

    v17 = objc_alloc_init(NSMutableDictionary);
    [v17 setObject:kSecClassGenericPassword forKeyedSubscript:kSecClass];
    [v17 setObject:@"com.apple.terminusd" forKeyedSubscript:kSecAttrService];
    [v17 setObject:v15 forKeyedSubscript:kSecAttrAccount];
    [v17 setObject:@"com.apple.terminusd" forKeyedSubscript:kSecAttrAccessGroup];
    [v17 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnData];
    if (a5)
    {
      [v17 setObject:kSecAttrViewHintWatchMigration forKeyedSubscript:kSecAttrSyncViewHint];
    }

    v18 = [NSNumber numberWithBool:a5];
    [v17 setObject:v18 forKeyedSubscript:kSecAttrSynchronizable];

    result = 0;
    v19 = SecItemCopyMatching(v17, &result);
    v20 = result;
    if (!v19 && result)
    {
      result = 0;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002294D8 != -1)
          {
            dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
          }

          v21 = qword_1002294D0;
          _NRLogWithArgs(v21, 0, "%s%.30s:%-4d Successfully read %@ keychain item %@ length %llu", "", "-[NRDKeyManager readDataFromKeychainWithName:nrUUID:dataProtectionClass:keychainLocked:synchronizable:]", 803, String, v15, [v20 length]);
        }

        v22 = v20;
      }

      else
      {
        v30 = sub_100180A2C();
        v31 = _NRLogIsLevelEnabled();

        if (v31)
        {
          v32 = sub_100180A2C();
          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          _NRLogWithArgs(v32, 17, "Read %@ keychain item %@ with bad class %@", String, v15, v34);
        }

        v22 = 0;
      }

      goto LABEL_56;
    }

    if (result)
    {
      CFRelease(result);
      result = 0;
    }

    if (v19 == -25308)
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_55;
      }

      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      v23 = qword_1002294D0;
      v41 = String;
      v42 = v15;
      v40 = 786;
      v38 = "";
      v39 = "[NRDKeyManager readDataFromKeychainWithName:nrUUID:dataProtectionClass:keychainLocked:synchronizable:]";
      v24 = "%s%.30s:%-4d Failed to read %@ keychain item %@: keychain locked";
    }

    else
    {
      if (v19 != -25300)
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_55;
        }

        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        v23 = qword_1002294D0;
        v39 = v15;
        v40 = v19;
        v38 = String;
        v24 = "Failed to read %@ keychain item %@: %d";
        v25 = 17;
        goto LABEL_54;
      }

      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_55;
      }

      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      v23 = qword_1002294D0;
      v41 = String;
      v42 = v15;
      v40 = 781;
      v38 = "";
      v39 = "[NRDKeyManager readDataFromKeychainWithName:nrUUID:dataProtectionClass:keychainLocked:synchronizable:]";
      v24 = "%s%.30s:%-4d Failed to read %@ keychain item %@: not found";
    }

    v25 = 16;
LABEL_54:
    _NRLogWithArgs(v23, v25, v24, v38, v39, v40, v41, v42);
LABEL_55:
    v22 = 0;
LABEL_56:

LABEL_57:
    goto LABEL_58;
  }

  v27 = sub_100180A2C();
  v28 = _NRLogIsLevelEnabled();

  if (v28)
  {
    v29 = sub_100180A2C();
    _NRLogWithArgs(v29, 17, "%s called with null itemName", "[NRDKeyManager readDataFromKeychainWithName:nrUUID:dataProtectionClass:keychainLocked:synchronizable:]");

    v22 = 0;
  }

  else
  {
LABEL_63:
    v22 = 0;
  }

LABEL_58:

  return v22;
}

uint64_t sub_100183644(uint64_t a1, void *a2, void *a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  v8 = a4;
  v11 = a2;
  v12 = a3;
  if (!a1)
  {
    goto LABEL_75;
  }

  dispatch_assert_queue_V2(*(a1 + 16));
  if (!v11)
  {
    v28 = sub_100180A2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      String = sub_100180A2C();
      _NRLogWithArgs(String, 17, "%s called with null itemName", "[NRDKeyManager deleteDataFromKeychainWithName:nrUUID:dataProtectionClass:keychainLocked:synchronizable:]");
      v18 = 0;
      goto LABEL_71;
    }

LABEL_75:
    v18 = 0;
    goto LABEL_72;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    switch(v8)
    {
      case 1:
        v13 = &kSecAttrAccessibleWhenUnlocked;
        break;
      case 4:
        v13 = &kSecAttrAccessibleAlwaysPrivate;
        break;
      case 3:
        v13 = &kSecAttrAccessibleAfterFirstUnlock;
        break;
      default:
LABEL_14:
        String = NRDataProtectionClassCreateString();
        goto LABEL_15;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        v13 = &kSecAttrAccessibleWhenUnlockedThisDeviceOnly;
        break;
      case 4:
        v13 = &kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
        break;
      case 3:
        v13 = &kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
        break;
      default:
        goto LABEL_14;
    }
  }

  v19 = *v13;
  String = NRDataProtectionClassCreateString();
  if (v19)
  {
    v17 = v11;
    if (v12)
    {
      v20 = [[NSString alloc] initWithFormat:@"%@/%@/%@", v12, String, v17];

      v17 = v20;
    }

    if (qword_1002294D8 != -1)
    {
      dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      v21 = qword_1002294D0;
      v22 = NRDataProtectionClassCreateString();
      _NRLogWithArgs(v21, 0, "%s%.30s:%-4d Deleting %@ keychain item %@", "", "[NRDKeyManager deleteDataFromKeychainWithName:nrUUID:dataProtectionClass:keychainLocked:synchronizable:]", 830, v22, v17);
    }

    v23 = objc_alloc_init(NSMutableDictionary);
    [v23 setObject:kSecClassGenericPassword forKeyedSubscript:kSecClass];
    [v23 setObject:@"com.apple.terminusd" forKeyedSubscript:kSecAttrService];
    [v23 setObject:v17 forKeyedSubscript:kSecAttrAccount];
    [v23 setObject:@"com.apple.terminusd" forKeyedSubscript:kSecAttrAccessGroup];
    if (a6)
    {
      [v23 setObject:kSecAttrViewHintWatchMigration forKeyedSubscript:kSecAttrSyncViewHint];
    }

    v24 = [NSNumber numberWithBool:a6];
    [v23 setObject:v24 forKeyedSubscript:kSecAttrSynchronizable];

    v25 = SecItemDelete(v23);
    if (v25 == -25308)
    {
      if (a5)
      {
        *a5 = 1;
      }

      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        _NRLogWithArgs(qword_1002294D0, 16, "%s%.30s:%-4d Failed to delete %@ keychain item %@: keychain locked", "", "[NRDKeyManager deleteDataFromKeychainWithName:nrUUID:dataProtectionClass:keychainLocked:synchronizable:]", 856, String, v17);
      }
    }

    else
    {
      v26 = v25;
      if (v25 == -25300)
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002294D8 != -1)
          {
            dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
          }

          _NRLogWithArgs(qword_1002294D0, 0, "%s%.30s:%-4d Failed to delete %@ keychain item %@: item not found (not an error)", "", "[NRDKeyManager deleteDataFromKeychainWithName:nrUUID:dataProtectionClass:keychainLocked:synchronizable:]", 850, String, v17);
          goto LABEL_52;
        }

LABEL_53:
        v18 = 1;
        goto LABEL_69;
      }

      if (!v25)
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002294D8 != -1)
          {
            dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
          }

          _NRLogWithArgs(qword_1002294D0, 0, "%s%.30s:%-4d Successfully deleted %@ keychain item %@", "", "[NRDKeyManager deleteDataFromKeychainWithName:nrUUID:dataProtectionClass:keychainLocked:synchronizable:]", 846, String, v17);
LABEL_52:
          v18 = 1;
LABEL_69:

LABEL_70:
          goto LABEL_71;
        }

        goto LABEL_53;
      }

      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        _NRLogWithArgs(qword_1002294D0, 17, "Failed to delete %@ keychain item %@: %d", String, v17, v26, v30, v31);
      }
    }

    v18 = 0;
    goto LABEL_69;
  }

LABEL_15:
  if (qword_1002294D8 != -1)
  {
    dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
  }

  v15 = qword_1002294D0;
  v16 = _NRLogIsLevelEnabled();

  if (v16)
  {
    if (qword_1002294D8 != -1)
    {
      dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    }

    v17 = qword_1002294D0;
    _NRLogWithArgs(v17, 17, "Cannot delete item %@ from keychain for %@", v11, String);
    v18 = 0;
    goto LABEL_70;
  }

  v18 = 0;
LABEL_71:

LABEL_72:
  return v18;
}

id sub_100183C7C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if (!a1)
  {
    goto LABEL_26;
  }

  dispatch_assert_queue_V2(*(a1 + 16));
  if (!a2)
  {
    v16 = sub_100180A2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v18 = sub_100180A2C();
      _NRLogWithArgs(v18, 17, "%s called with null classInDict");
LABEL_25:

      v12 = 0;
      goto LABEL_18;
    }

LABEL_26:
    v12 = 0;
    goto LABEL_18;
  }

  if (!v7)
  {
    v19 = sub_100180A2C();
    v20 = _NRLogIsLevelEnabled();

    if (v20)
    {
      v18 = sub_100180A2C();
      _NRLogWithArgs(v18, 17, "%s called with null itemName");
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v8 = sub_100183000(a1, v7, 0, a4, 0);
  if (v8)
  {
    v21 = 0;
    v9 = [NSKeyedUnarchiver unarchivedDictionaryWithKeysOfClass:objc_opt_class() objectsOfClass:a2 fromData:v8 error:&v21];
    v10 = v21;
    v11 = v10;
    if (!v9 || v10)
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        v13 = qword_1002294D0;
        String = NRDataProtectionClassCreateString();
        _NRLogWithArgs(v13, 16, "%s%.30s:%-4d Failed to unarchive %@ keychain data %@: %@", "", "[NRDKeyManager readNRUUIDDictionaryOfClass:fromKeychainWithName:dataProtectionClass:synchronizable:]", 970, String, v7, v11);
      }

      v12 = 0;
    }

    else
    {
      v12 = [[NSMutableDictionary alloc] initWithDictionary:v9];
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_18:

  return v12;
}

id sub_100183EE0()
{
  if (qword_100229500 != -1)
  {
    dispatch_once(&qword_100229500, &stru_1001FD3A0);
  }

  v1 = qword_1002294F8;

  return v1;
}

void sub_100183F34(id a1)
{
  v1 = qword_1002294F0;
  if (!v1)
  {
    v7 = sub_100183EE0();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_100183EE0();
      _NRLogWithArgs(v9, 16, "%s%.30s:%-4d ABORTING: nr_dispatch_queue_create_with_target called with NULL target", "", "nr_dispatch_queue_create_with_target", 242);
    }

    v4 = _os_log_pack_size();
    v10 = &v20 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = __error();
    v12 = _os_log_pack_fill(v10, v4, *v11, &_mh_execute_header, "%{public}s nr_dispatch_queue_create_with_target called with NULL target");
    *v12 = 136446210;
    *(v12 + 4) = "nr_dispatch_queue_create_with_target";
    sub_100183EE0();
    _NRLogAbortWithPack();
LABEL_9:
    v13 = sub_100183EE0();
    v14 = _NRLogIsLevelEnabled();

    if (v14)
    {
      v15 = sub_100183EE0();
      _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_create_with_target(%s) failed", "", "nr_dispatch_queue_create_with_target", 246, v4);
    }

    v16 = _os_log_pack_size();
    v17 = &v20 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __error();
    v19 = _os_log_pack_fill(v17, v16, *v18, &_mh_execute_header, "%{public}s dispatch_queue_create_with_target(%s) failed");
    *v19 = 136446466;
    *(v19 + 4) = "nr_dispatch_queue_create_with_target";
    *(v19 + 12) = 2080;
    *(v19 + 14) = v4;
    sub_100183EE0();
    _NRLogAbortWithPack();
  }

  v2 = v1;
  v3 = _NRCopySerialQueueAttr();
  v4 = "terminusd.main.root";
  v5 = dispatch_queue_create_with_target_V2("terminusd.main.root", v3, v2);

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = qword_1002294E8;
  qword_1002294E8 = v5;
}

void sub_1001841B0(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002294F8;
  qword_1002294F8 = v1;

  _objc_release_x1(v1, v2);
}

void start()
{
  if (qword_100229500 != -1)
  {
    dispatch_once(&qword_100229500, &stru_1001FD3A0);
  }

  v0 = &qword_100229000;
  if (!_NRLogIsLevelEnabled())
  {
    goto LABEL_8;
  }

  if (qword_100229500 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v1 = v0[159];
    if (qword_1002290A0 != -1)
    {
      dispatch_once(&qword_1002290A0, &stru_1001FB258);
    }

    v2 = qword_100229098;
    _NRLogWithArgs(v1, 0, "%s%.30s:%-4d Starting %@", "", "main", 117, v2);

LABEL_8:
    v3 = sub_100003490();
    if (v3)
    {
      dispatch_async(v3, &stru_1001FD360);
      dispatch_main();
    }

    v4 = sub_100183EE0();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = sub_100183EE0();
      _NRLogWithArgs(v6, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (queue) != ((void*)0)", "", "main", 121);
    }

    v7 = _os_log_pack_size();
    v0 = (&v10 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
    v8 = __error();
    v9 = _os_log_pack_fill(v0, v7, *v8, &_mh_execute_header, "%{public}s Assertion Failed: (queue) != ((void*)0)");
    *v9 = 136446210;
    *(v9 + 4) = "main";
    sub_100183EE0();
    _NRLogAbortWithPack();
LABEL_13:
    dispatch_once(&qword_100229500, &stru_1001FD3A0);
  }
}

void sub_1001843E8(id a1)
{
  v34 = xmmword_1001964C0;
  if (setrlimit(8, &v34))
  {
    v1 = *__error();
    if (strerror_r(v1, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_100229500 != -1)
    {
      dispatch_once(&qword_100229500, &stru_1001FD3A0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229500 != -1)
      {
        dispatch_once(&qword_100229500, &stru_1001FD3A0);
      }

      _NRLogWithArgs(qword_1002294F8, 17, "setrlimit(RLIMIT_NOFILE, %llu) failed: [%d] %s", 1024, v1, __strerrbuf);
    }
  }

  LOBYTE(v34.rlim_cur) = 0;
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:@"/var/mobile/Library/terminus" isDirectory:&v34];

  if (v3 && LOBYTE(v34.rlim_cur) == 1)
  {
    if (qword_100229500 != -1)
    {
      dispatch_once(&qword_100229500, &stru_1001FD3A0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229500 != -1)
      {
        dispatch_once(&qword_100229500, &stru_1001FD3A0);
      }

      _NRLogWithArgs(qword_1002294F8, 0, "%s%.30s:%-4d terminusd settings directory present", "", "main_block_invoke", 130);
    }
  }

  else
  {
    v4 = @"/var/mobile/Library/terminus";
    if ([@"/var/mobile/Library/terminus" length])
    {
      if (([@"/var/mobile/Library/terminus" containsString:@".."] & 1) != 0 || (objc_msgSend(@"/var/mobile/Library/terminus", "hasPrefix:", @"/") & 1) == 0)
      {
        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002292D8 != -1)
          {
            dispatch_once(&qword_1002292D8, &stru_1001FC510);
          }

          _NRLogWithArgs(qword_1002292D0, 17, "Refusing to write to %@", @"/var/mobile/Library/terminus", v32, v33);
        }
      }

      else if (mkdir([@"/var/mobile/Library/terminus" UTF8String], 0x1EDu) < 0 && *__error() != 17)
      {
        v5 = __error();
        v6 = *v5;
        if (strerror_r(*v5, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002292D8 != -1)
          {
            dispatch_once(&qword_1002292D8, &stru_1001FC510);
          }

          _NRLogWithArgs(qword_1002292D0, 17, "Failed to create %@: [%d] %s", @"/var/mobile/Library/terminus", v6, __strerrbuf);
        }
      }
    }

    else
    {
      v29 = sub_10013A310();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v31 = sub_10013A310();
        _NRLogWithArgs(v31, 17, "%s called with null dirPath.length", "NRDCreateDirectoryPath");
      }
    }
  }

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v7 = qword_1002294C0;
  sub_1001816DC(v7, &stru_1001FD380);

  os_unfair_lock_lock(&unk_100229090);
  v8 = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/terminus/com.apple.terminus.plist"];
  if (!v8)
  {
    v28 = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/Library/Preferences/com.apple.terminus.plist"];
    if (v28)
    {
      v8 = v28;
      if (sub_10013A364(@"/var/mobile/Library/terminus/com.apple.terminus.plist", v28, 0))
      {
        if (qword_1002290B0 != -1)
        {
          dispatch_once(&qword_1002290B0, &stru_1001FB278);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002290B0 != -1)
          {
            dispatch_once(&qword_1002290B0, &stru_1001FB278);
          }

          _NRLogWithArgs(qword_1002290A8, 0, "%s%.30s:%-4d successfully migrated settings file");
        }
      }

      else
      {
        if (qword_1002290B0 != -1)
        {
          dispatch_once(&qword_1002290B0, &stru_1001FB278);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002290B0 != -1)
          {
            dispatch_once(&qword_1002290B0, &stru_1001FB278);
          }

          _NRLogWithArgs(qword_1002290A8, 16, "%s%.30s:%-4d failed to migrate settings file");
        }
      }
    }

    else
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }
  }

  if (qword_1002290B0 != -1)
  {
    dispatch_once(&qword_1002290B0, &stru_1001FB278);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    _NRLogWithArgs(qword_1002290A8, 0, "%s%.30s:%-4d settingsDict %@", "", "terminusdSettingsInit", 81, v8);
  }

  v9 = [v8 objectForKeyedSubscript:@"PacketLogging"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = 0;
  }

  gNRPacketLoggingEnabled = v10;
  v11 = [v8 objectForKeyedSubscript:@"MPKLLogging"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 BOOLValue];
  }

  else
  {
    v12 = 0;
  }

  gNRMPKLLoggingEnabled = v12;
  v13 = [v8 objectForKeyedSubscript:@"IPsecIfRingSize"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 unsignedIntValue])
  {
    LODWORD(qword_100228A78) = [v13 unsignedIntValue];
    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290B0 != -1)
      {
        dispatch_once(&qword_1002290B0, &stru_1001FB278);
      }

      _NRLogWithArgs(qword_1002290A8, 0, "%s%.30s:%-4d gNRIPsecIfRingSize %u", "", "terminusdSettingsInit", 99, qword_100228A78);
    }
  }

  v14 = [v8 objectForKeyedSubscript:@"IPsecKPipeTxRingSize"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 unsignedIntValue])
  {
    HIDWORD(qword_100228A78) = [v14 unsignedIntValue];
    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290B0 != -1)
      {
        dispatch_once(&qword_1002290B0, &stru_1001FB278);
      }

      _NRLogWithArgs(qword_1002290A8, 0, "%s%.30s:%-4d gNRIPsecKPipeTxRingSize %u", "", "terminusdSettingsInit", 104, HIDWORD(qword_100228A78));
    }
  }

  v15 = [v8 objectForKeyedSubscript:@"IPsecKPipeRxRingSize"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v15 unsignedIntValue])
  {
    unk_100228A80 = [v15 unsignedIntValue];
    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290B0 != -1)
      {
        dispatch_once(&qword_1002290B0, &stru_1001FB278);
      }

      _NRLogWithArgs(qword_1002290A8, 0, "%s%.30s:%-4d ipsecKPipeRxRingSize %u", "", "terminusdSettingsInit", 109, unk_100228A80);
    }
  }

  os_unfair_lock_unlock(&unk_100229090);
  if (qword_1002290B0 != -1)
  {
    dispatch_once(&qword_1002290B0, &stru_1001FB278);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    if (gNRPacketLoggingEnabled)
    {
      v16 = "en";
    }

    else
    {
      v16 = "dis";
    }

    _NRLogWithArgs(qword_1002290A8, 1, "%s%.30s:%-4d Initialized packet logging as %sabled", "", "terminusdSettingsInit", 113, v16);
  }

  v17 = sub_100003490();
  dispatch_async(v17, &stru_1001FAE90);

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v18 = qword_1002294C0;
  sub_1001816DC(v18, &stru_1001FB238);

  v19 = [NSString alloc];
  if (sub_1000B79D8(v19, v20))
  {
    v21 = "en";
  }

  else
  {
    v21 = "dis";
  }

  v22 = [v19 initWithFormat:@"(when the daemon started, the companion link was %sabled on this device)", v21];
  sub_1000059A8(0, 9000, &stru_1001FDE68, v22);
  v23 = sub_100003490();
  dispatch_assert_queue_V2(v23);

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v24 = qword_1002290B8;
  if (v24)
  {
    v25 = sub_100003490();
    dispatch_assert_queue_V2(v25);

    if (sub_1000B79D8(v26, v27))
    {
      sub_1000BAAFC(v24);
    }

    else
    {
      sub_1000BBDC0(v24);
    }
  }

  objc_opt_self();
  if (qword_100228FB0 != -1)
  {
    dispatch_once(&qword_100228FB0, &stru_1001FAB50);
  }
}

id sub_1001850BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && (v2 = *(v1 + 16)) != 0)
  {
    *(v1 + 16) = v2 - 1;
    if (qword_100229510 != -1)
    {
      dispatch_once(&qword_100229510, &stru_1001FD408);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_100229510 != -1)
      {
        dispatch_once(&qword_100229510, &stru_1001FD408);
      }

      v5 = *(a1 + 32);
      if (v5)
      {
        LODWORD(v5) = *(v5 + 16);
      }

      result = _NRLogWithArgs(qword_100229508, 0, "%s%.30s:%-4d Phone call relay agent un-asserted (Total remaining assertions: %u)", "", "[NRPhoneCallRelayAgent unassertAgentWithOptions:]_block_invoke", 181, v5);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      if (*(v6 + 16))
      {
        return result;
      }

      WeakRetained = objc_loadWeakRetained((v6 + 56));
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained deviceHasPhoneCallRelayRequest:0];

    result = [*(a1 + 32) isActive];
    if (result)
    {
      [*(a1 + 32) setActive:0];
      v8 = *(a1 + 32);
      if (v8)
      {
        v9 = *(v8 + 48);
      }

      else
      {
        v9 = 0;
      }

      return [v9 updateNetworkAgent:?];
    }
  }

  else
  {
    if (qword_100229510 != -1)
    {
      dispatch_once(&qword_100229510, &stru_1001FD408);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_100229510 != -1)
      {
        dispatch_once(&qword_100229510, &stru_1001FD408);
      }

      v10 = qword_100229508;

      return _NRLogWithArgs(v10, 17, "Received an unexpected unassertAgent call");
    }
  }

  return result;
}

void sub_1001852B8(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229508;
  qword_100229508 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100185380(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 16);
    v4 = v3 == 0;
    *(v2 + 16) = v3 + 1;
  }

  else
  {
    v4 = 1;
  }

  if (qword_100229510 != -1)
  {
    dispatch_once(&qword_100229510, &stru_1001FD408);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229510 != -1)
    {
      dispatch_once(&qword_100229510, &stru_1001FD408);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      LODWORD(v5) = *(v5 + 16);
    }

    _NRLogWithArgs(qword_100229508, 0, "%s%.30s:%-4d Phone call relay agent asserted (Total active assertions: %u)", "", "[NRPhoneCallRelayAgent assertAgentWithOptions:]_block_invoke", 157, v5);
  }

  if (v4)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      WeakRetained = objc_loadWeakRetained((v6 + 56));
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained deviceHasPhoneCallRelayRequest:1];
  }

  result = [*(a1 + 32) isActive];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setActive:1];
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 48);
    }

    else
    {
      v10 = 0;
    }

    return [v10 updateNetworkAgent:?];
  }

  return result;
}

void sub_100185548(uint64_t a1)
{
  if (a1 && *(a1 + 14) == 1)
  {
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v2 = qword_100229408;
    sub_10015A238(v2, *(a1 + 64));

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v3 = qword_100229408;
    sub_10015A52C(v3);

    if (([*(a1 + 48) unregisterNetworkAgent] & 1) == 0)
    {
      if (qword_100229510 != -1)
      {
        dispatch_once(&qword_100229510, &stru_1001FD408);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229510 != -1)
        {
          dispatch_once(&qword_100229510, &stru_1001FD408);
        }

        _NRLogWithArgs(qword_100229508, 17, "Failed to unregister PhoneCallRelay agent");
      }
    }

    v4 = *(a1 + 48);
    *(a1 + 48) = 0;

    *(a1 + 14) = 0;
    v6 = [a1 agentUUID];
    v5 = [v6 UUIDString];
    sub_1000059A8(0, 16003, 0, v5);
  }
}

id *sub_1001857B8(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v25.receiver = a1;
    v25.super_class = NRPhoneCallRelayAgent;
    v8 = objc_msgSendSuper2(&v25, "init");
    if (!v8)
    {
      v18 = sub_100185A0C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v20 = sub_100185A0C();
        _NRLogWithArgs(v20, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRPhoneCallRelayAgent initWithQueue:delegate:]", 36);
      }

      v21 = _os_log_pack_size();
      v22 = __error();
      v23 = _os_log_pack_fill(&v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v21, *v22, &_mh_execute_header, "%{public}s [super init] failed");
      *v23 = 136446210;
      *(v23 + 4) = "[NRPhoneCallRelayAgent initWithQueue:delegate:]";
      sub_100185A0C();
      _NRLogAbortWithPack();
    }

    a1 = v8;
    objc_storeStrong(v8 + 5, a2);
    v9 = +[NSUUID UUID];
    [a1 setAgentUUID:v9];

    [a1 setUserActivated:1];
    [a1 setAgentDescription:@"Phone call relay netagent"];
    objc_storeWeak(a1 + 7, v7);
    v10 = [NSString alloc];
    v11 = [a1 agentUUID];
    v12 = [v11 UUIDString];
    v13 = [v10 initWithFormat:@"NRPhoneCallRelayAgent-%@", v12];
    v14 = a1[8];
    a1[8] = v13;

    v15 = [a1 agentUUID];
    v16 = [v15 UUIDString];
    sub_1000059A8(0, 16001, 0, v16);
  }

  return a1;
}

id sub_100185A0C()
{
  if (qword_100229510 != -1)
  {
    dispatch_once(&qword_100229510, &stru_1001FD408);
  }

  v1 = qword_100229508;

  return v1;
}

void sub_100185A60(uint64_t a1)
{
  if (a1 && (*(a1 + 14) & 1) == 0)
  {
    v2 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
    v3 = *(a1 + 48);
    *(a1 + 48) = v2;

    v7 = *(a1 + 48);
    if (!v7)
    {
      sub_10013C2A8(@"NRPhoneCallRelayAgent", @"RegisterAgent", @"Create Failed", 1, @"Failed to create phone call relay network agent", v4, v5, v6, v48);
      v7 = *(a1 + 48);
    }

    if (([v7 registerNetworkAgent:a1] & 1) == 0)
    {
      sub_10013C2A8(@"NRPhoneCallRelayAgent", @"RegisterAgent", @"Register Failed", 1, @"Failed to register phone call relay network agent", v8, v9, v10, v48);
    }

    v11 = [a1 agentUUID];
    v12 = [NEPolicyResult netAgentUUID:v11];

    v13 = +[NRPhoneCallRelayAgent agentDomain];
    v14 = +[NRPhoneCallRelayAgent agentType];
    v15 = [NEPolicyCondition requiredAgentDomain:v13 agentType:v14];

    v16 = [NEPolicy alloc];
    v50 = v15;
    v56[0] = v15;
    v17 = +[NEPolicyCondition allInterfaces];
    v56[1] = v17;
    v18 = [NSArray arrayWithObjects:v56 count:2];
    v52 = v12;
    v19 = [v16 initWithOrder:10 result:v12 conditions:v18];

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v20 = qword_100229408;
    v21 = sub_100159E00(v20, *(a1 + 64), v19);

    v22 = [NEPolicyCondition trafficClassStart:800 end:900];
    v23 = [NEPolicyCondition ipProtocol:17];
    v24 = +[NEPolicyCondition platformBinary];
    v25 = [NEPolicyCondition accountIdentifier:@"com.apple.networkrelay.companion_proxy"];
    v26 = [NEPolicy alloc];
    v55[0] = v22;
    v55[1] = v23;
    v51 = v23;
    v55[2] = v24;
    v55[3] = v25;
    v49 = v25;
    v27 = +[NEPolicyCondition allInterfaces];
    v55[4] = v27;
    v28 = [NSArray arrayWithObjects:v55 count:5];
    v29 = [v26 initWithOrder:10 result:v52 conditions:v28];

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v30 = qword_100229408;
    v31 = sub_100159E00(v30, *(a1 + 64), v29);

    objc_opt_self();
    v32 = sub_100003490();
    dispatch_assert_queue_V2(v32);

    v53 = xmmword_100196400;
    v33 = [[NSData alloc] initWithBytes:&v53 length:16];
    v34 = sub_100167F00(NRDLocalDevice, v33, @"0");

    v35 = [v34 hostname];
    v36 = [NWAddressEndpoint endpointWithHostname:v35 port:@"62742"];

    v37 = [NEPolicyCondition flowRemoteAddress:v36 prefix:64];
    v38 = [NEPolicy alloc];
    v39 = v22;
    v54[0] = v22;
    v54[1] = v51;
    v54[2] = v24;
    v54[3] = v37;
    v40 = +[NEPolicyCondition allInterfaces];
    v54[4] = v40;
    v41 = [NSArray arrayWithObjects:v54 count:5];
    v42 = [v38 initWithOrder:10 result:v52 conditions:v41];

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v43 = qword_100229408;
    v44 = sub_100159E00(v43, *(a1 + 64), v42);

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v45 = qword_100229408;
    sub_10015A52C(v45);

    *(a1 + 14) = 1;
    v46 = [a1 agentUUID];
    v47 = [v46 UUIDString];
    sub_1000059A8(0, 16002, 0, v47);
  }
}