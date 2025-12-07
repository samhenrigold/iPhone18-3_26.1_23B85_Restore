uint64_t sub_10005D7B4(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v3 = qword_100228FB8;
    if (v1)
    {
      v4 = v1[4];
      if (!v4)
      {
        Property = objc_getProperty(v1, v2, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v7 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v8 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v7 = v8;
        }

        v9 = v1[4];
        v1[4] = v7;

        v4 = v1[4];
      }

      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    _NRLogWithArgs(v3, 0, "%s%.30s:%-4d Client %@ requesting to test NRLinkDirectorMessage", "", "handleTestNRLinkDirectorMessage", 1037, v10);
  }

  v11 = sub_10016D1F8(NRDLocalDevice);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    objc_opt_self();
    if (qword_100228F60 != -1)
    {
      dispatch_once(&qword_100228F60, &stru_1001FA780);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F60 != -1)
      {
        dispatch_once(&qword_100228F60, &stru_1001FA780);
      }

      _NRLogWithArgs(qword_100228F58, 0, "%s%.30s:%-4d Testing NRLinkDirectorMessage send/receive", "", "+[NRLinkDirectorMessage testForNRUUID:]", 1242);
    }

    sub_10002D380(NRLinkDirectorMessage, v13);
    v14 = sub_10002A50C([NRLinkDirectorMessage alloc], v13);
    v15 = sub_10002C85C(NRLinkDirectorMessage, v14);
    sub_10002D380(NRLinkDirectorMessage, v13);
    v16 = sub_10002A404([NRLinkDirectorMessage alloc], v13, 1);

    v17 = sub_10002C85C(NRLinkDirectorMessage, v16);
    sub_10002D380(NRLinkDirectorMessage, v13);
    v18 = sub_10002A404([NRLinkDirectorMessage alloc], v13, 2);

    v19 = sub_10002C85C(NRLinkDirectorMessage, v18);
    sub_10002D380(NRLinkDirectorMessage, v13);

    if (v1)
    {
      v21 = objc_getProperty(v1, v20, 24, 1);
    }

    else
    {
      v21 = 0;
    }

    xpc_dictionary_set_BOOL(v21, nrXPCKeyTestNRLinkDirectorMessage, v15 & v17 & v19);
    v22 = 0;
  }

  else
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v24 = qword_100228FB8;
      if (v1)
      {
        v26 = objc_getProperty(v1, v23, 16, 1);
        v27 = v1[4];
        if (!v27)
        {
          v28 = objc_getProperty(v1, v25, 8, 1);
          v29 = xpc_connection_get_pid(v28);
          v30 = [[NSString alloc] initWithFormat:@"unknown:%d", v29];
          bzero(buffer, 0x400uLL);
          if (v29 >= 1 && proc_pidpath(v29, buffer, 0x400u) >= 1 && buffer[0])
          {
            v31 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v29];

            v30 = v31;
          }

          v32 = v1[4];
          v1[4] = v30;

          v27 = v1[4];
        }

        v33 = v27;
      }

      else
      {
        v26 = 0;
        v33 = 0;
      }

      _NRLogWithArgs(v24, 16, "%s%.30s:%-4d No testing identifier found for message %@ from %@", "", "handleTestNRLinkDirectorMessage", 1040, v26, v33);
    }

    v22 = -2011;
  }

  return v22;
}

uint64_t sub_10005DCD4(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v31 = xpc_dictionary_get_BOOL(Property, nrXPCKeySimulateWakePacket);
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v5 = qword_100228FB8;
    if (v3)
    {
      v6 = v3[4];
      if (!v6)
      {
        v7 = objc_getProperty(v3, v4, 8, 1);
        pid = xpc_connection_get_pid(v7);
        v9 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v10 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v9 = v10;
        }

        v11 = v3[4];
        v3[4] = v9;

        v6 = v3[4];
      }

      v12 = v6;
    }

    else
    {
      v12 = 0;
    }

    v13 = "stop";
    if (v31)
    {
      v13 = "start";
    }

    _NRLogWithArgs(v5, 0, "%s%.30s:%-4d Client %@ requesting to %s simulating wake packets", "", "handleSimulateWakePacket", 1026, v12, v13);
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v14 = qword_1002290B8;
  if (v14 && _NRIsAppleInternal())
  {
    v15 = 0;
    v14[9] = v31;
  }

  else
  {
    v15 = -2001;
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v16 = qword_1002290B8;
  if (!v16)
  {
    v19 = 0;
LABEL_43:

    goto LABEL_44;
  }

  v17 = v16[10];

  if (v17 == 1)
  {
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v28 = v15;
    v29 = v3;
    v18 = qword_1002290B8;
    v19 = v18;
    if (v18)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      obj = v18[28];
      v20 = [obj countByEnumeratingWithState:&v32 objects:buffer count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v33;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v33 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = [v19[28] objectForKeyedSubscript:*(*(&v32 + 1) + 8 * i)];
            if (v24)
            {
              v25 = objc_alloc_init(NSMutableDictionary);
              v26 = [NSNumber numberWithBool:v31];
              [v25 setObject:v26 forKeyedSubscript:@"test-wake-pkt"];

              sub_100114680(v24, v25);
            }
          }

          v21 = [obj countByEnumeratingWithState:&v32 objects:buffer count:16];
        }

        while (v21);
      }
    }

    v3 = v29;
    v15 = v28;
    goto LABEL_43;
  }

LABEL_44:

  return v15;
}

uint64_t sub_10005E100(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = xpc_dictionary_get_BOOL(Property, nrXPCKeyBlockIDSTraffic);
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v6 = qword_100228FB8;
    if (v3)
    {
      v7 = v3[4];
      if (!v7)
      {
        v8 = objc_getProperty(v3, v5, 8, 1);
        pid = xpc_connection_get_pid(v8);
        v10 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && LOBYTE(buffer[0]))
        {
          v11 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v10 = v11;
        }

        v12 = v3[4];
        v3[4] = v10;

        v7 = v3[4];
      }

      v13 = v7;
    }

    else
    {
      v13 = 0;
    }

    _NRLogWithArgs(v6, 0, "%s%.30s:%-4d Client %@ blocking IDS Traffic", "", "handleBlockIDSTraffic", 1016, v13);
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v14 = qword_1002290B8;
  if (v14 && _NRIsAppleInternal())
  {
    if (v4)
    {
      objc_opt_self();
      v15 = sub_100003490();
      dispatch_assert_queue_V2(v15);

      buffer[0] = xmmword_100196400;
      v16 = [[NSData alloc] initWithBytes:buffer length:16];
      v17 = sub_100167F00(NRDLocalDevice, v16, @"0");

      v62 = v17;
      v18 = [v17 hostname];
      v19 = [NWAddressEndpoint endpointWithHostname:v18 port:@"61314"];

      v20 = [NEPolicyCondition localAddress:v19 prefix:64];
      v21 = [NEPolicyCondition remoteAddress:v19 prefix:64];
      v22 = [NEPolicy alloc];
      v23 = +[NEPolicyResult drop];
      *&buffer[0] = v21;
      v24 = +[NEPolicyCondition allInterfaces];
      *(&buffer[0] + 1) = v24;
      v25 = [NSArray arrayWithObjects:buffer count:2];
      v26 = [v22 initWithOrder:10 result:v23 conditions:v25];

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v27 = qword_100229408;
      v60 = v26;
      v28 = sub_100159E00(v27, @"TESTING-NRDLD-Drop-IDS", v26);

      v29 = [NEPolicy alloc];
      v30 = +[NEPolicyResult drop];
      v66[0] = v20;
      v31 = +[NEPolicyCondition allInterfaces];
      v66[1] = v31;
      v32 = [NSArray arrayWithObjects:v66 count:2];
      v33 = [v29 initWithOrder:10 result:v30 conditions:v32];

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v34 = qword_100229408;
      v61 = v33;
      v35 = sub_100159E00(v34, @"TESTING-NRDLD-Drop-IDS", v33);

      v36 = [v62 hostname];
      v37 = [NWAddressEndpoint endpointWithHostname:v36 port:@"61315"];

      v38 = [NEPolicyCondition localAddress:v37 prefix:64];

      v39 = [NEPolicyCondition remoteAddress:v37 prefix:64];

      v40 = [NEPolicy alloc];
      v41 = +[NEPolicyResult drop];
      v59 = v39;
      v65[0] = v39;
      v42 = +[NEPolicyCondition allInterfaces];
      v65[1] = v42;
      v43 = [NSArray arrayWithObjects:v65 count:2];
      v44 = [v40 initWithOrder:10 result:v41 conditions:v43];

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v45 = qword_100229408;
      v46 = sub_100159E00(v45, @"TESTING-NRDLD-Drop-IDS", v44);

      v47 = [NEPolicy alloc];
      v48 = +[NEPolicyResult drop];
      v49 = v38;
      v64[0] = v38;
      v50 = +[NEPolicyCondition allInterfaces];
      v64[1] = v50;
      v51 = [NSArray arrayWithObjects:v64 count:2];
      v52 = [v47 initWithOrder:10 result:v48 conditions:v51];

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v53 = qword_100229408;
      v54 = sub_100159E00(v53, @"TESTING-NRDLD-Drop-IDS", v52);
    }

    else
    {
      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v56 = qword_100229408;
      sub_10015A238(v56, @"TESTING-NRDLD-Drop-IDS");
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v57 = qword_100229408;
    sub_10015A52C(v57);

    v55 = 0;
  }

  else
  {
    v55 = -2001;
  }

  return v55;
}

uint64_t sub_10005E910(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = xpc_dictionary_get_BOOL(Property, nrXPCKeyBlockSHOESTraffic);
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v6 = qword_100228FB8;
    if (v3)
    {
      v7 = v3[4];
      if (!v7)
      {
        v8 = objc_getProperty(v3, v5, 8, 1);
        pid = xpc_connection_get_pid(v8);
        v10 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && LOBYTE(buffer[0]))
        {
          v11 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v10 = v11;
        }

        v12 = v3[4];
        v3[4] = v10;

        v7 = v3[4];
      }

      v13 = v7;
    }

    else
    {
      v13 = 0;
    }

    _NRLogWithArgs(v6, 0, "%s%.30s:%-4d Client %@ blocking SHOES Traffic", "", "handleBlockSHOESTraffic", 1007, v13);
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v14 = qword_1002290B8;
  if (v14 && _NRIsAppleInternal())
  {
    if (v4)
    {
      objc_opt_self();
      v15 = sub_100003490();
      dispatch_assert_queue_V2(v15);

      buffer[0] = xmmword_100196400;
      v16 = [[NSData alloc] initWithBytes:buffer length:16];
      v17 = sub_100167F00(NRDLocalDevice, v16, @"0");

      v18 = [v17 hostname];
      v19 = [NWAddressEndpoint endpointWithHostname:v18 port:@"62742"];

      v20 = [NEPolicyCondition remoteAddress:v19 prefix:64];
      v21 = [NEPolicy alloc];
      v22 = +[NEPolicyResult drop];
      *&buffer[0] = v20;
      v23 = +[NEPolicyCondition allInterfaces];
      *(&buffer[0] + 1) = v23;
      v24 = [NSArray arrayWithObjects:buffer count:2];
      v25 = [v21 initWithOrder:10 result:v22 conditions:v24];

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v26 = qword_100229408;
      v27 = sub_100159E00(v26, @"TESTING-NRDLD-Drop-SHOES", v25);
    }

    else
    {
      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v29 = qword_100229408;
      sub_10015A238(v29, @"TESTING-NRDLD-Drop-SHOES");
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v30 = qword_100229408;
    sub_10015A52C(v30);

    v28 = 0;
  }

  else
  {
    v28 = -2001;
  }

  return v28;
}

uint64_t sub_10005EDD0(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  string = xpc_dictionary_get_string(Property, nrXPCKeyTetheringBundleIDs);
  if (string)
  {
    v5 = [NSString stringWithUTF8String:string];
    v6 = [v5 componentsSeparatedByString:{@", "}];
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_33;
    }

    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v8 = qword_100228FB8;
    if (v3)
    {
      v9 = v3[4];
      if (!v9)
      {
        v10 = objc_getProperty(v3, v7, 8, 1);
        pid = xpc_connection_get_pid(v10);
        v12 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v13 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v12 = v13;
        }

        v14 = v3[4];
        v3[4] = v12;

        v9 = v3[4];
      }

      v15 = v9;
    }

    else
    {
      v15 = 0;
    }

    _NRLogWithArgs(v8, 0, "%s%.30s:%-4d Client %@ setting tethering bundle IDs to %@", "", "handleSetTetheringBundleIDs", 984, v15, v6);

LABEL_32:
LABEL_33:

    goto LABEL_34;
  }

  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v5 = qword_100228FB8;
    if (v3)
    {
      v17 = v3[4];
      if (!v17)
      {
        v18 = objc_getProperty(v3, v16, 8, 1);
        v19 = xpc_connection_get_pid(v18);
        v20 = [[NSString alloc] initWithFormat:@"unknown:%d", v19];
        bzero(buffer, 0x400uLL);
        if (v19 >= 1 && proc_pidpath(v19, buffer, 0x400u) >= 1 && buffer[0])
        {
          v21 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v19];

          v20 = v21;
        }

        v22 = v3[4];
        v3[4] = v20;

        v17 = v3[4];
      }

      v8 = v17;
    }

    else
    {
      v8 = 0;
    }

    _NRLogWithArgs(v5, 0, "%s%.30s:%-4d Client %@ setting tethering bundle IDs to nil", "", "handleSetTetheringBundleIDs", 986, v8);
    v6 = 0;
    goto LABEL_32;
  }

  v6 = 0;
LABEL_34:
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v23 = qword_1002290B8;
  v24 = v6;
  if (v23)
  {
    if (v24)
    {
      sub_1000B7458(0, @"TetheringBundleIDs", v24);
    }

    else
    {
      sub_1000B76C8(0, @"TetheringBundleIDs");
    }
  }

  return 0;
}

uint64_t sub_10005F1F0(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v34 = xpc_dictionary_get_BOOL(Property, nrXPCKeyPreferWiFiAllowed);
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v5 = qword_100228FB8;
    if (v3)
    {
      v6 = v3[4];
      if (!v6)
      {
        v7 = objc_getProperty(v3, v4, 8, 1);
        pid = xpc_connection_get_pid(v7);
        v9 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v10 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v9 = v10;
        }

        v11 = v3[4];
        v3[4] = v9;

        v6 = v3[4];
      }

      v12 = v6;
    }

    else
    {
      v12 = 0;
    }

    _NRLogWithArgs(v5, 0, "%s%.30s:%-4d Client %@ setting prefer Wi-Fi allowed=%d", "", "handleSetPreferWiFiAllowed", 997, v12, v34);
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v33 = v3;
  v13 = qword_1002290B8;
  v14 = v13;
  if (v13)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v15 = v13[28];
    v16 = [v15 countByEnumeratingWithState:&v35 objects:buffer count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v36;
      if (v34)
      {
        v19 = "NO";
      }

      else
      {
        v19 = "YES";
      }

      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v27 = [v14[28] objectForKeyedSubscript:*(*(&v35 + 1) + 8 * i)];
          v28 = v27;
          if (v27)
          {
            dispatch_assert_queue_V2(*(v27 + 136));
            if (_NRIsAppleInternal())
            {
              v29 = _NRCopyLogObjectForNRUUID();
              IsLevelEnabled = _NRLogIsLevelEnabled();

              if (IsLevelEnabled)
              {
                v31 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v31, 0, "%s%.30s:%-4d Setting prefer Wi-Fi allowed=%d", "", "[NRDDeviceConductor setPreferWiFiAllowedForTesting:]", 2390, v34);
              }

              v21 = [NSNumber numberWithBool:v34 ^ 1];
              sub_1000B7458(v28[12], @"DisablePreferWiFi", v21);
              sub_1000EC910(v28, 1026, @"%s", v22, v23, v24, v25, v26, v19);
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v35 objects:buffer count:16];
      }

      while (v17);
    }
  }

  return 0;
}

uint64_t sub_10005F5E4(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = xpc_dictionary_get_BOOL(Property, nrXPCKeySimulateAltAccount);
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v6 = qword_100228FB8;
    if (v3)
    {
      v7 = v3[4];
      if (!v7)
      {
        v8 = objc_getProperty(v3, v5, 8, 1);
        pid = xpc_connection_get_pid(v8);
        v10 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v11 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v10 = v11;
        }

        v12 = v3[4];
        v3[4] = v10;

        v7 = v3[4];
      }

      v13 = v7;
    }

    else
    {
      v13 = 0;
    }

    _NRLogWithArgs(v6, 0, "%s%.30s:%-4d Client %@ setting simulate alt-account=%d", "", "handleSetSimulateAltAccount", 953, v13, v4);
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v14 = qword_1002290B8;
  if (v14)
  {
    v15 = [NSNumber numberWithBool:v4];
    sub_1000B7458(0, @"SimulateAltAccount", v15);
  }

  return 0;
}

uint64_t sub_10005F868(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v34 = xpc_dictionary_get_BOOL(Property, nrXPCKeyWiFiRangeExtensionAllowed);
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v5 = qword_100228FB8;
    if (v3)
    {
      v6 = v3[4];
      if (!v6)
      {
        v7 = objc_getProperty(v3, v4, 8, 1);
        pid = xpc_connection_get_pid(v7);
        v9 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v10 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v9 = v10;
        }

        v11 = v3[4];
        v3[4] = v9;

        v6 = v3[4];
      }

      v12 = v6;
    }

    else
    {
      v12 = 0;
    }

    _NRLogWithArgs(v5, 0, "%s%.30s:%-4d Client %@ setting Wi-Fi range extension allowed=%d", "", "handleSetWiFiRangeExtensionAllowed", 962, v12, v34);
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v33 = v3;
  v13 = qword_1002290B8;
  v14 = v13;
  if (v13)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v15 = v13[28];
    v16 = [v15 countByEnumeratingWithState:&v35 objects:buffer count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v36;
      if (v34)
      {
        v19 = "NO";
      }

      else
      {
        v19 = "YES";
      }

      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v27 = [v14[28] objectForKeyedSubscript:*(*(&v35 + 1) + 8 * i)];
          v28 = v27;
          if (v27)
          {
            dispatch_assert_queue_V2(*(v27 + 136));
            if (_NRIsAppleInternal())
            {
              v29 = _NRCopyLogObjectForNRUUID();
              IsLevelEnabled = _NRLogIsLevelEnabled();

              if (IsLevelEnabled)
              {
                v31 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v31, 0, "%s%.30s:%-4d Setting Wi-Fi range extension allowed=%d", "", "[NRDDeviceConductor setWiFiRangeExtensionAllowedForTesting:]", 2379, v34);
              }

              v21 = [NSNumber numberWithBool:v34 ^ 1];
              sub_1000B7458(v28[12], @"DisableRangeExtension", v21);
              sub_1000EC910(v28, 1025, @"%s", v22, v23, v24, v25, v26, v19);
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v35 objects:buffer count:16];
      }

      while (v17);
    }
  }

  return 0;
}

uint64_t sub_10005FC5C(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = xpc_dictionary_get_BOOL(Property, nrXPCKeyWatchRoleSwitchAllowed);
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v6 = qword_100228FB8;
    if (v3)
    {
      v7 = v3[4];
      if (!v7)
      {
        v8 = objc_getProperty(v3, v5, 8, 1);
        pid = xpc_connection_get_pid(v8);
        v10 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v11 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v10 = v11;
        }

        v12 = v3[4];
        v3[4] = v10;

        v7 = v3[4];
      }

      v13 = v7;
    }

    else
    {
      v13 = 0;
    }

    _NRLogWithArgs(v6, 0, "%s%.30s:%-4d Client %@ setting Watch Role switch allowed=%d", "", "handleSetWatchRoleSwitchAllowed", 944, v13, v4);
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v14 = qword_1002290B8;
  if (v14)
  {
    if (v4)
    {
      sub_1000B7458(0, @"EnableWatchRoleSwitch", &__kCFBooleanTrue);
    }

    else
    {
      sub_1000B76C8(0, @"EnableWatchRoleSwitch");
    }
  }

  return 0;
}

uint64_t sub_10005FED8(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = Property;
  v5 = v4;
  if (!v4)
  {
    v32 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_46;
    }

    v34 = sub_100056D2C();
    _NRLogWithArgs(v34, 17, "%s called with null dict");
LABEL_45:

    goto LABEL_46;
  }

  if (!nrXPCKeyNRUUID)
  {
    v35 = sub_100056D2C();
    v36 = _NRLogIsLevelEnabled();

    if (!v36)
    {
      goto LABEL_46;
    }

    v34 = sub_100056D2C();
    _NRLogWithArgs(v34, 17, "%s called with null key");
    goto LABEL_45;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyNRUUID);
  if (!uuid)
  {
    v37 = sub_100056D2C();
    v38 = _NRLogIsLevelEnabled();

    if (!v38)
    {
      goto LABEL_46;
    }

    v34 = sub_100056D2C();
    _NRLogWithArgs(v34, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
    goto LABEL_45;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v39 = sub_100056D2C();
    v40 = _NRLogIsLevelEnabled();

    if (v40)
    {
      v34 = sub_100056D2C();
      _NRLogWithArgs(v34, 16, "%s%.30s:%-4d UUID is null for key %s");
      goto LABEL_45;
    }

LABEL_46:

    goto LABEL_47;
  }

  v8 = [[NSUUID alloc] initWithUUIDBytes:v7];

  if (v8)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v10 = qword_100228FB8;
      if (v3)
      {
        v11 = v3[4];
        if (!v11)
        {
          v12 = objc_getProperty(v3, v9, 8, 1);
          pid = xpc_connection_get_pid(v12);
          v14 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
          {
            v15 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

            v14 = v15;
          }

          v16 = v3[4];
          v3[4] = v14;

          v11 = v3[4];
        }

        v17 = v11;
      }

      else
      {
        v17 = 0;
      }

      _NRLogWithArgs(v10, 0, "%s%.30s:%-4d Received MeasureBTLatency %@ from %@", "", "handleMeasureBTLatency", 1370, v8, v17);
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v18 = qword_1002290B8;
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v48 = sub_1000604A0;
    v49 = &unk_1001FAC38;
    v50 = v8;
    v51 = v3;
    v19 = v8;
    v20 = v47;
    if (v18)
    {
      v21 = sub_100003490();
      dispatch_assert_queue_V2(v21);

      v22 = [v18[28] objectForKeyedSubscript:v19];
      if (v22)
      {
        v46 = v3;
        v23 = v20;
        dispatch_assert_queue_V2(*(v22 + 136));
        dispatch_assert_queue_V2(*(v22 + 136));
        v24 = sub_100163A30(NRDLocalDevice, *(v22 + 96));
        v25 = v24;
        if (v24)
        {
          v26 = *(v24 + 144);
        }

        else
        {
          v26 = 0;
        }

        v27 = v26;
        v28 = [v27 getDefaultLinkSubtypeForLinkType:1];

        v29 = sub_1000EA2C8(v22, 1, v28);
        if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          sub_1000B6B70(v29, v23);
        }

        else
        {
          v48(v23, 0);
        }

        v3 = v46;
      }

      else
      {
        v48(v20, 0);
      }
    }

    v30 = -2000;
    goto LABEL_36;
  }

LABEL_47:
  v41 = sub_100056D2C();
  v42 = _NRLogIsLevelEnabled();

  if (v42)
  {
    v43 = sub_100056D2C();
    v45 = sub_100056D80(v3, v44);
    _NRLogWithArgs(v43, 16, "%s%.30s:%-4d Invalid NRUUID from %@", "", "handleMeasureBTLatency", 1367, v45);
  }

  v30 = -2005;
LABEL_36:

  return v30;
}

void sub_1000604A0(uint64_t a1, uint64_t a2)
{
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v6 = qword_100228FB8;
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (v7)
    {
      v9 = v7[4];
      if (!v9)
      {
        Property = objc_getProperty(*(a1 + 40), v5, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v12 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v13 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v12 = v13;
        }

        v14 = v7[4];
        v7[4] = v12;

        v9 = v7[4];
      }

      v7 = v9;
    }

    _NRLogWithArgs(v6, 0, "%s%.30s:%-4d Measured BT latency %lluns for %@ from %@", "", "handleMeasureBTLatency_block_invoke", 1376, a2, v8, v7);
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    v15 = objc_getProperty(v15, v4, 24, 1);
  }

  xpc_dictionary_set_int64(v15, nrXPCKeyResult, 0);
  v17 = *(a1 + 40);
  if (v17)
  {
    v17 = objc_getProperty(v17, v16, 24, 1);
  }

  xpc_dictionary_set_uint64(v17, nrXPCKeyBTLatency, a2);
  v19 = *(a1 + 40);
  if (v19)
  {
    v19 = objc_getProperty(v19, v18, 8, 1);
  }

  connection = v19;
  v21 = *(a1 + 40);
  if (v21)
  {
    v22 = objc_getProperty(v21, v20, 24, 1);
  }

  else
  {
    v22 = 0;
  }

  xpc_connection_send_message(connection, v22);
}

uint64_t sub_100060724(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v4 = qword_100228FB8;
    if (v1)
    {
      v5 = v1[4];
      if (!v5)
      {
        Property = objc_getProperty(v1, v3, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v8 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v9 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v8 = v9;
        }

        v10 = v1[4];
        v1[4] = v8;

        v5 = v1[4];
      }

      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    _NRLogWithArgs(v4, 0, "%s%.30s:%-4d Sending babel routes to %@", "", "handleTestGetBabelRoutes", 1354, v11);
  }

  if (v1)
  {
    v12 = objc_getProperty(v1, v2, 24, 1);
  }

  else
  {
    v12 = 0;
  }

  v13 = nrXPCKeyBabelRoutes;
  v14 = v12;
  xpc_dictionary_set_string(v14, v13, [@"BABEL_NOT_SUPPORTED" UTF8String]);

  return 0;
}

uint64_t sub_100060950(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v3 = qword_100228FB8;
    if (v1)
    {
      v4 = v1[4];
      if (!v4)
      {
        Property = objc_getProperty(v1, v2, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v7 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v8 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v7 = v8;
        }

        v9 = v1[4];
        v1[4] = v7;

        v4 = v1[4];
      }

      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    _NRLogWithArgs(v3, 0, "%s%.30s:%-4d Received a link recommendation: %@", "", "handleCompanionLinkRecommendation", 1242, v10);
  }

  return -2005;
}

uint64_t sub_100060B24(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v4 = qword_100228FB8;
    if (v1)
    {
      v5 = v1[4];
      if (!v5)
      {
        Property = objc_getProperty(v1, v3, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v8 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v9 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v8 = v9;
        }

        v10 = v1[4];
        v1[4] = v8;

        v5 = v1[4];
      }

      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    _NRLogWithArgs(v4, 0, "%s%.30s:%-4d Received request to set device preferences from %@", "", "handleDevicePreferences", 1140, v11);
  }

  if (v1)
  {
    v12 = objc_getProperty(v1, v2, 16, 1);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = v13;
  if (!v13)
  {
    v103 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_127;
    }

    v105 = sub_100056D2C();
    _NRLogWithArgs(v105, 17, "%s called with null dict");
LABEL_126:

    goto LABEL_127;
  }

  if (!nrXPCKeyDeviceIdentifier)
  {
    v106 = sub_100056D2C();
    v107 = _NRLogIsLevelEnabled();

    if (!v107)
    {
      goto LABEL_127;
    }

    v105 = sub_100056D2C();
    _NRLogWithArgs(v105, 17, "%s called with null key");
    goto LABEL_126;
  }

  uuid = xpc_dictionary_get_uuid(v13, nrXPCKeyDeviceIdentifier);
  if (!uuid)
  {
    v108 = sub_100056D2C();
    v109 = _NRLogIsLevelEnabled();

    if (v109)
    {
      v105 = sub_100056D2C();
      _NRLogWithArgs(v105, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
      goto LABEL_126;
    }

LABEL_127:

    goto LABEL_128;
  }

  v16 = [[NSUUID alloc] initWithUUIDBytes:uuid];

  if (v16)
  {
    if (v1)
    {
      v18 = objc_getProperty(v1, v17, 16, 1);
    }

    else
    {
      v18 = 0;
    }

    v19 = xpc_dictionary_get_value(v18, nrXPCKeyDevicePreferencesPolicyTrafficClassifiers);
    v21 = v19;
    if (v19 && xpc_get_type(v19) == &_xpc_type_array)
    {
      v77 = objc_alloc_init(NSMutableSet);
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_1000619DC;
      applier[3] = &unk_1001FAC10;
      v132 = v1;
      v22 = v77;
      v133 = v22;
      xpc_array_apply(v21, applier);

      if (v1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v22 = 0;
      if (v1)
      {
LABEL_26:
        v23 = objc_getProperty(v1, v20, 16, 1);
        goto LABEL_27;
      }
    }

    v23 = 0;
LABEL_27:
    v128 = xpc_dictionary_get_BOOL(v23, nrXPCKeyDevicePreferencesIsDeviceSetupInProgress);
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v26 = qword_100228FB8;
      if (v1)
      {
        v27 = v1[4];
        if (!v27)
        {
          v28 = objc_getProperty(v1, v25, 8, 1);
          v29 = xpc_connection_get_pid(v28);
          v30 = [[NSString alloc] initWithFormat:@"unknown:%d", v29];
          bzero(buffer, 0x400uLL);
          if (v29 >= 1 && proc_pidpath(v29, buffer, 0x400u) >= 1 && buffer[0])
          {
            v31 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v29];

            v30 = v31;
          }

          v32 = v1[4];
          v1[4] = v30;

          v27 = v1[4];
        }

        v33 = v27;
      }

      else
      {
        v33 = 0;
      }

      v34 = _NRCopyPolicyTrafficClassifiersDescription();
      _NRLogWithArgs(v26, 0, "%s%.30s:%-4d Received policy traffic classifiers from %@ for device %@ : %@", "", "handleDevicePreferences", 1180, v33, v16, v34);
    }

    if (v1)
    {
      v35 = objc_getProperty(v1, v24, 16, 1);
    }

    else
    {
      v35 = 0;
    }

    v36 = xpc_dictionary_get_value(v35, nrXPCKeyDevicePreferencesBTLinkPreferences);
    v37 = v36;
    if (v36 && xpc_get_type(v36) == &_xpc_type_dictionary)
    {
      v38 = [NRLinkPreferences createFromEncodedXPCDict:v37];
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      if (_NRLogIsLevelEnabled())
      {
        v126 = v38;
        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        v79 = qword_100228FB8;
        if (v1)
        {
          v80 = v1[4];
          if (!v80)
          {
            v81 = objc_getProperty(v1, v78, 8, 1);
            v82 = xpc_connection_get_pid(v81);
            v83 = [[NSString alloc] initWithFormat:@"unknown:%d", v82];
            bzero(buffer, 0x400uLL);
            if (v82 >= 1 && proc_pidpath(v82, buffer, 0x400u) >= 1 && buffer[0])
            {
              v84 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v82];

              v83 = v84;
            }

            v85 = v1[4];
            v1[4] = v83;

            v80 = v1[4];
          }

          v86 = v80;
        }

        else
        {
          v86 = 0;
        }

        _NRLogWithArgs(v79, 0, "%s%.30s:%-4d Received link preferences from %@ for device %@ : %@", "", "handleDevicePreferences", 1188, v86, v16, v126);

        v38 = v126;
      }
    }

    else
    {
      v38 = 0;
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v130 = qword_1002290B8;
    objc_opt_self();
    if (qword_100228FB0 != -1)
    {
      dispatch_once(&qword_100228FB0, &stru_1001FAB50);
    }

    v39 = qword_100228FA8;
    v129 = v39;
    if (v39)
    {
      v39 = objc_getProperty(v39, v40, 24, 1);
    }

    v42 = v39;
    if (v1)
    {
      v43 = objc_getProperty(v1, v41, 8, 1);
    }

    else
    {
      v43 = 0;
    }

    v44 = [v42 containsObject:v43];

    if (!v44)
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      if (_NRLogIsLevelEnabled())
      {
        v67 = v38;
        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        v69 = qword_100228FB8;
        if (v1)
        {
          v70 = v1[4];
          if (!v70)
          {
            v71 = objc_getProperty(v1, v68, 8, 1);
            v72 = xpc_connection_get_pid(v71);
            v73 = [[NSString alloc] initWithFormat:@"unknown:%d", v72];
            bzero(buffer, 0x400uLL);
            if (v72 >= 1 && proc_pidpath(v72, buffer, 0x400u) >= 1 && buffer[0])
            {
              v74 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v72];

              v73 = v74;
            }

            v75 = v1[4];
            v1[4] = v73;

            v70 = v1[4];
          }

          v76 = v70;
        }

        else
        {
          v76 = 0;
        }

        _NRLogWithArgs(v69, 16, "%s%.30s:%-4d Connection lost before applying preference for %@", "", "handleDevicePreferences", 1202, v76);

        v38 = v67;
      }

      goto LABEL_118;
    }

    v125 = v38;
    if (v1)
    {
      v46 = objc_getProperty(v1, v45, 8, 1);
      v47 = v130;
      sub_1000CA2C8(v130, v38, v46, v16);
      v49 = objc_getProperty(v1, v48, 8, 1);
    }

    else
    {
      v47 = v130;
      sub_1000CA2C8(v130, v38, 0, v16);
      v49 = 0;
    }

    v127 = v22;
    v50 = v49;
    v51 = v16;
    v124 = v37;
    if (v47)
    {
      v52 = sub_100003490();
      dispatch_assert_queue_V2(v52);

      v123 = v51;
      if (v50)
      {
        v53 = [*(v47 + 224) objectForKeyedSubscript:v51];
        if (v53)
        {
          v54 = v53;
          v122 = v22;
          v55 = v127;
          v56 = v50;
          dispatch_assert_queue_V2(*(v54 + 136));
          v57 = *(v54 + 216);
          v58 = v55;
          v59 = v56;
          if (v57)
          {
            v121 = v21;
            v60 = v16;
            v61 = *(v57 + 24);
            if (v61)
            {
              dispatch_assert_queue_V2(v61);
            }

            v62 = sub_100149B50(v59);
            v63 = _NRCopyLogObjectForNRUUID();
            v64 = _NRLogIsLevelEnabled();

            if (v64)
            {
              v65 = _NRCopyLogObjectForNRUUID();
              v66 = _NRCopyPolicyTrafficClassifiersDescription();
              _NRLogWithArgs(v65, 0, "%s%.30s:%-4d Setting policy traffic classifiers for %@ : %@", "", "[NRDevicePreferencesManager setPolicyTrafficClassifiers:forConnection:]", 264, v62, v66);
            }

            [*(v57 + 40) setObject:v58 forKeyedSubscript:v62];
            sub_100149594(v57);

            v16 = v60;
            v21 = v121;
          }

          v22 = v122;
          v37 = v124;
          v47 = v130;
        }

        else
        {
          v87 = objc_alloc_init(NRDOrphanedConnection);
          p_isa = &v87->super.isa;
          if (v87)
          {
            objc_storeStrong(&v87->_nrUUID, v16);
            objc_storeStrong(p_isa + 2, v49);
          }

          [*(v47 + 240) addObject:p_isa];
          v89 = [p_isa description];
          sub_1000059A8(0, 1022, 0, v89);

          v54 = 0;
        }

        goto LABEL_100;
      }

      v117 = sub_1000B9544();
      v118 = _NRLogIsLevelEnabled();

      if (v118)
      {
        v54 = sub_1000B9544();
        _NRLogWithArgs(v54, 17, "%s called with null connection", "[NRLinkDirector setPolicyTrafficClasses:forConnection:nrUUID:]");
LABEL_100:

        v51 = v123;
      }
    }

    if (!v128)
    {
      v38 = v125;
      if (v1)
      {
        v98 = objc_getProperty(v1, v90, 8, 1);
      }

      else
      {
        v98 = 0;
      }

      sub_1000CA014(v47, v98);
      goto LABEL_118;
    }

    if (v1)
    {
      v91 = objc_getProperty(v1, v90, 8, 1);
    }

    else
    {
      v91 = 0;
    }

    v92 = v91;
    v93 = v51;
    if (!v47)
    {
LABEL_117:

      v37 = v124;
      v38 = v125;
LABEL_118:

      v101 = 0;
      goto LABEL_119;
    }

    v94 = v22;
    v95 = sub_100003490();
    dispatch_assert_queue_V2(v95);

    v96 = [v130[28] objectForKeyedSubscript:v93];
    if (v96)
    {
      v97 = v92;
      dispatch_assert_queue_V2(*(v96 + 136));
      if (v97)
      {
        [*(v96 + 208) addObject:v97];
        if ([*(v96 + 208) count])
        {
          sub_1001141F4(v96, 1);
        }

        goto LABEL_116;
      }

      v119 = sub_1000E83DC();
      v120 = _NRLogIsLevelEnabled();

      if (!v120)
      {
LABEL_116:

        v22 = v94;
        goto LABEL_117;
      }

      v100 = sub_1000E83DC();
      _NRLogWithArgs(v100, 17, "%s called with null connection", "[NRDDeviceConductor addDeviceSetupInProgressConnection:]");
    }

    else
    {
      v99 = objc_alloc_init(NRDOrphanedConnection);
      v97 = &v99->super.isa;
      if (v99)
      {
        objc_storeStrong(&v99->_nrUUID, v16);
        objc_storeStrong(v97 + 2, v91);
      }

      [v130[30] addObject:v97];
      v100 = [v97 description];
      sub_1000059A8(0, 1022, 0, v100);
    }

    goto LABEL_116;
  }

LABEL_128:
  v110 = sub_100056D2C();
  v111 = _NRLogIsLevelEnabled();

  if (v111)
  {
    v113 = sub_100056D2C();
    if (v1)
    {
      v114 = objc_getProperty(v1, v112, 16, 1);
      v116 = sub_100056D80(v1, v115);
    }

    else
    {
      v116 = 0;
      v114 = 0;
    }

    _NRLogWithArgs(v113, 16, "%s%.30s:%-4d No device identifier found in message %@ from %@", "", "handleDevicePreferences", 1144, v114, v116);
  }

  v101 = -2005;
LABEL_119:

  return v101;
}

uint64_t sub_1000619DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (xpc_get_type(v4) != &_xpc_type_string)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v6 = qword_100228FB8;
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v5, 16, 1);
      }

      v9 = Property;
      v10 = *(a1 + 32);
      if (v10)
      {
        v11 = v10[4];
        if (!v11)
        {
          v12 = objc_getProperty(v10, v8, 8, 1);
          pid = xpc_connection_get_pid(v12);
          v14 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
          {
            v15 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

            v14 = v15;
          }

          v16 = v10[4];
          v10[4] = v14;

          v11 = v10[4];
        }

        v10 = v11;
      }

      _NRLogWithArgs(v6, 16, "%s%.30s:%-4d Bad XPC type found in policy traffic class message %@ from %@", "", "handleDevicePreferences_block_invoke", 1156, v9, v10);
LABEL_18:

      goto LABEL_19;
    }

    goto LABEL_40;
  }

  string_ptr = xpc_string_get_string_ptr(v4);
  if (!string_ptr)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v6 = qword_100228FB8;
      v21 = *(a1 + 32);
      if (v21)
      {
        v21 = objc_getProperty(v21, v20, 16, 1);
      }

      v9 = v21;
      v10 = *(a1 + 32);
      if (v10)
      {
        v23 = v10[4];
        if (!v23)
        {
          v24 = objc_getProperty(v10, v22, 8, 1);
          v25 = xpc_connection_get_pid(v24);
          v26 = [[NSString alloc] initWithFormat:@"unknown:%d", v25];
          bzero(buffer, 0x400uLL);
          if (v25 >= 1 && proc_pidpath(v25, buffer, 0x400u) >= 1 && buffer[0])
          {
            v27 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v25];

            v26 = v27;
          }

          v28 = v10[4];
          v10[4] = v26;

          v23 = v10[4];
        }

        v10 = v23;
      }

      _NRLogWithArgs(v6, 16, "%s%.30s:%-4d Bad XPC string found in policy traffic class message %@ from %@", "", "handleDevicePreferences_block_invoke", 1162, v9, v10);
      goto LABEL_18;
    }

LABEL_40:
    v17 = 0;
    goto LABEL_41;
  }

  v19 = [[NSString alloc] initWithUTF8String:string_ptr];
  if (v19)
  {
    v6 = v19;
    [*(a1 + 40) addObject:v19];
    v17 = 1;
    goto LABEL_23;
  }

  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v31 = qword_100228FB8;
    v32 = *(a1 + 32);
    if (v32)
    {
      v32 = objc_getProperty(v32, v30, 16, 1);
    }

    v34 = v32;
    v35 = *(a1 + 32);
    if (v35)
    {
      v36 = v35[4];
      if (!v36)
      {
        v37 = objc_getProperty(v35, v33, 8, 1);
        v38 = xpc_connection_get_pid(v37);
        v39 = sub_10013CB6C(v38, 1);
        v40 = v35[4];
        v35[4] = v39;

        v36 = v35[4];
      }

      v35 = v36;
    }

    _NRLogWithArgs(v31, 16, "%s%.30s:%-4d Bad string found in policy traffic class message %@ from %@", "", "handleDevicePreferences_block_invoke", 1168, v34, v35);
  }

  v6 = 0;
LABEL_19:
  v17 = 0;
LABEL_23:

LABEL_41:
  return v17;
}

void sub_100061EC0(id a1)
{
  v1 = sub_10005703C([TerminusdXPCServer alloc]);
  v2 = qword_100228FA8;
  qword_100228FA8 = v1;

  sub_10005674C(v3);
}

uint64_t sub_100061F04(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = Property;
  v5 = v4;
  if (!v4)
  {
    v51 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_63;
    }

    v53 = sub_100056D2C();
    _NRLogWithArgs(v53, 17, "%s called with null dict");
LABEL_62:

    goto LABEL_63;
  }

  if (!nrXPCKeyDeviceIdentifier)
  {
    v54 = sub_100056D2C();
    v55 = _NRLogIsLevelEnabled();

    if (!v55)
    {
      goto LABEL_63;
    }

    v53 = sub_100056D2C();
    _NRLogWithArgs(v53, 17, "%s called with null key");
    goto LABEL_62;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyDeviceIdentifier);
  if (!uuid)
  {
    v56 = sub_100056D2C();
    v57 = _NRLogIsLevelEnabled();

    if (v57)
    {
      v53 = sub_100056D2C();
      _NRLogWithArgs(v53, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
      goto LABEL_62;
    }

LABEL_63:

    goto LABEL_64;
  }

  v7 = [[NSUUID alloc] initWithUUIDBytes:uuid];

  if (v7)
  {
    p_vtable = NRSCDInterfaceConfig.vtable;
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v9 = qword_100228FB8;
      v11 = [v7 UUIDString];
      if (v3)
      {
        v12 = v3[4];
        if (!v12)
        {
          v13 = objc_getProperty(v3, v10, 8, 1);
          pid = xpc_connection_get_pid(v13);
          v15 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
          {
            v16 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

            v15 = v16;
          }

          v17 = v3[4];
          v3[4] = v15;

          v12 = v3[4];
        }

        v18 = v12;
      }

      else
      {
        v18 = 0;
      }

      _NRLogWithArgs(v9, 0, "%s%.30s:%-4d Received request for device monitor status query of %@ from %@", "", "handleDeviceMonitorStatusQuery", 1216, v11, v18);
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v19 = qword_1002290B8;
    objc_opt_self();
    if (qword_100228FB0 != -1)
    {
      dispatch_once(&qword_100228FB0, &stru_1001FAB50);
    }

    v20 = qword_100228FA8;
    v22 = v20;
    if (v20)
    {
      v20 = objc_getProperty(v20, v21, 24, 1);
    }

    v24 = v20;
    if (v3)
    {
      v25 = objc_getProperty(v3, v23, 8, 1);
    }

    else
    {
      v25 = 0;
    }

    v26 = [v24 containsObject:v25];

    if (!v26)
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      if (!_NRLogIsLevelEnabled())
      {
        v46 = -2010;
LABEL_88:

        goto LABEL_89;
      }

      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v36 = qword_100228FB8;
      v38 = [v7 UUIDString];
      if (v3)
      {
        v39 = v3[4];
        if (!v39)
        {
          v40 = objc_getProperty(v3, v37, 8, 1);
          v41 = xpc_connection_get_pid(v40);
          v42 = [[NSString alloc] initWithFormat:@"unknown:%d", v41];
          bzero(buffer, 0x400uLL);
          if (v41 >= 1 && proc_pidpath(v41, buffer, 0x400u) >= 1 && buffer[0])
          {
            v43 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v41];

            v42 = v43;
          }

          v44 = v3[4];
          v3[4] = v42;

          v39 = v3[4];
        }

        v45 = v39;
      }

      else
      {
        v45 = 0;
      }

      _NRLogWithArgs(v36, 16, "%s%.30s:%-4d Connection lost before first update for %@ %@", "", "handleDeviceMonitorStatusQuery", 1235, v38, v45);

      v46 = -2010;
LABEL_87:

      goto LABEL_88;
    }

    if (v3)
    {
      v28 = objc_getProperty(v3, v27, 8, 1);
      sub_1000C9EA0(v19, v28, v7);
      v30 = objc_getProperty(v3, v29, 24, 1);
    }

    else
    {
      sub_1000C9EA0(v19, 0, v7);
      v30 = 0;
    }

    v31 = v7;
    v32 = v30;
    v33 = v32;
    if (v19)
    {
      if (v32)
      {
        v34 = [v19[28] objectForKeyedSubscript:v31];
        if (v34)
        {
          v35 = v34;
          sub_1000F4354(v34, v33);
          v36 = v33;
        }

        else
        {
          v36 = v33;
          v47 = v31;
          v48 = objc_opt_self();
          sub_1000F4D84(v48, v47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v36);

          p_vtable = (NRSCDInterfaceConfig + 24);
          v35 = 0;
        }

LABEL_52:

        if (v36)
        {
          if (v3)
          {
            v50 = objc_getProperty(v3, v49, 8, 1);
          }

          else
          {
            v50 = 0;
          }

          xpc_connection_send_message(v50, v36);
          v46 = -2000;
          goto LABEL_87;
        }

LABEL_72:
        if (p_vtable[504] != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (p_vtable[504] != -1)
          {
            dispatch_once(&qword_100228FC0, &stru_1001FABC0);
          }

          v64 = qword_100228FB8;
          v66 = [v31 UUIDString];
          if (v3)
          {
            v67 = v3[4];
            if (!v67)
            {
              v68 = objc_getProperty(v3, v65, 8, 1);
              v69 = xpc_connection_get_pid(v68);
              v70 = [[NSString alloc] initWithFormat:@"unknown:%d", v69];
              bzero(buffer, 0x400uLL);
              if (v69 >= 1 && proc_pidpath(v69, buffer, 0x400u) >= 1 && buffer[0])
              {
                v71 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v69];

                v70 = v71;
              }

              v72 = v3[4];
              v3[4] = v70;

              v67 = v3[4];
            }

            v73 = v67;
          }

          else
          {
            v73 = 0;
          }

          _NRLogWithArgs(v64, 16, "%s%.30s:%-4d Could not get monitor status for %@ %@", "", "handleDeviceMonitorStatusQuery", 1230, v66, v73);
        }

        v36 = 0;
        v46 = -2008;
        goto LABEL_87;
      }

      v62 = sub_1000B9544();
      v63 = _NRLogIsLevelEnabled();

      if (v63)
      {
        v35 = sub_1000B9544();
        _NRLogWithArgs(v35, 17, "%s called with null replyDict", "[NRLinkDirector copyDeviceMonitorStatusForNRUUID:replyDict:]");
        v36 = 0;
        goto LABEL_52;
      }
    }

    goto LABEL_72;
  }

LABEL_64:
  v58 = sub_100056D2C();
  v59 = _NRLogIsLevelEnabled();

  if (v59)
  {
    v7 = sub_100056D2C();
    if (v3)
    {
      v22 = objc_getProperty(v3, v60, 16, 1);
      v19 = sub_100056D80(v3, v61);
    }

    else
    {
      v19 = 0;
      v22 = 0;
    }

    _NRLogWithArgs(v7, 16, "%s%.30s:%-4d No device identifier found in message %@ from %@", "", "handleDeviceMonitorStatusQuery", 1212, v22, v19);
    v46 = -2005;
    goto LABEL_88;
  }

  v46 = -2005;
LABEL_89:

  return v46;
}

uint64_t sub_100062854(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v3 = qword_100228FB8;
    if (v1)
    {
      v4 = v1[4];
      if (!v4)
      {
        Property = objc_getProperty(v1, v2, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v7 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v8 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v7 = v8;
        }

        v9 = v1[4];
        v1[4] = v7;

        v4 = v1[4];
      }

      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    _NRLogWithArgs(v3, 0, "%s%.30s:%-4d Client %@ disabling cloud link", "", "handleDisableCloudLink", 935, v10);
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v11 = qword_1002290B8;
  sub_1000C9AD4(v11, 0);

  return 0;
}

uint64_t sub_100062A78(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v3 = qword_100228FB8;
    if (v1)
    {
      v4 = v1[4];
      if (!v4)
      {
        Property = objc_getProperty(v1, v2, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v7 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v8 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v7 = v8;
        }

        v9 = v1[4];
        v1[4] = v7;

        v4 = v1[4];
      }

      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    _NRLogWithArgs(v3, 0, "%s%.30s:%-4d Client %@ enabling cloud link", "", "handleEnableCloudLink", 927, v10);
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v11 = qword_1002290B8;
  sub_1000C9AD4(v11, 1);

  return 0;
}

uint64_t sub_100062C9C(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v3 = qword_100228FB8;
    if (v1)
    {
      v4 = v1[4];
      if (!v4)
      {
        Property = objc_getProperty(v1, v2, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v7 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v8 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v7 = v8;
        }

        v9 = v1[4];
        v1[4] = v7;

        v4 = v1[4];
      }

      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    _NRLogWithArgs(v3, 0, "%s%.30s:%-4d Client %@ copying IDS device ID", "", "handleCopyIDSDeviceID", 1129, v10);
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v11 = qword_1002290B8;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100062F20;
  v14[3] = &unk_1001FABE8;
  v15 = v1;
  v12 = v1;

  return -2000;
}

void sub_100062F20(uint64_t a1, void *a2)
{
  v15 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 24, 1);
  }

  xpc_dictionary_set_int64(Property, nrXPCKeyResult, 0);
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = objc_getProperty(v6, v5, 24, 1);
  }

  v7 = nrXPCKeyIDSDeviceID;
  v8 = v6;
  xpc_dictionary_set_string(v8, v7, [v15 UTF8String]);

  v10 = *(a1 + 32);
  if (v10)
  {
    v10 = objc_getProperty(v10, v9, 8, 1);
  }

  v12 = v10;
  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = objc_getProperty(v13, v11, 24, 1);
  }

  else
  {
    v14 = 0;
  }

  xpc_connection_send_message(v12, v14);
}

uint64_t sub_100063020(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v3 = qword_100228FB8;
    if (v1)
    {
      v4 = v1[4];
      if (!v4)
      {
        Property = objc_getProperty(v1, v2, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v7 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v8 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v7 = v8;
        }

        v9 = v1[4];
        v1[4] = v7;

        v4 = v1[4];
      }

      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    _NRLogWithArgs(v3, 0, "%s%.30s:%-4d Client %@ copying device list", "", "handleCopyDeviceListString", 1080, v10);
  }

  v11 = objc_opt_self();
  v12 = sub_100003490();
  dispatch_assert_queue_V2(v12);

  sub_1001619D8(v11);
  v13 = [qword_100229428 copy];
  v14 = objc_alloc_init(NSMutableString);
  [v14 appendFormat:@"%llu devices:", objc_msgSend(v13, "count")];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v30 objects:buffer count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [v15 objectForKeyedSubscript:*(*(&v30 + 1) + 8 * i)];
        v21 = sub_100166548(v20);
        [v14 appendFormat:@"\n\t%@", v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v30 objects:buffer count:16];
    }

    while (v17);
  }

  if (v14)
  {
    if (v1)
    {
      v23 = objc_getProperty(v1, v22, 24, 1);
    }

    else
    {
      v23 = 0;
    }

    v24 = nrXPCKeyDeviceListString;
    v25 = v23;
    xpc_dictionary_set_string(v25, v24, [v14 UTF8String]);
    v26 = 0;
  }

  else
  {
    v28 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      v26 = -2009;
      goto LABEL_27;
    }

    v25 = sub_100056D2C();
    _NRLogWithArgs(v25, 17, "[NRDLocalDevice copyDeviceListString] failed");
    v26 = -2009;
  }

LABEL_27:
  return v26;
}

uint64_t sub_1000633D0(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = Property;
  v5 = v4;
  if (!v4)
  {
    v21 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_33;
    }

    v23 = sub_100056D2C();
    _NRLogWithArgs(v23, 17, "%s called with null dict");
LABEL_32:

    goto LABEL_33;
  }

  if (!nrXPCKeyNRUUID)
  {
    v24 = sub_100056D2C();
    v25 = _NRLogIsLevelEnabled();

    if (!v25)
    {
      goto LABEL_33;
    }

    v23 = sub_100056D2C();
    _NRLogWithArgs(v23, 17, "%s called with null key");
    goto LABEL_32;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyNRUUID);
  if (!uuid)
  {
    v26 = sub_100056D2C();
    v27 = _NRLogIsLevelEnabled();

    if (!v27)
    {
      goto LABEL_33;
    }

    v23 = sub_100056D2C();
    _NRLogWithArgs(v23, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
    goto LABEL_32;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v28 = sub_100056D2C();
    v29 = _NRLogIsLevelEnabled();

    if (v29)
    {
      v23 = sub_100056D2C();
      _NRLogWithArgs(v23, 16, "%s%.30s:%-4d UUID is null for key %s");
      goto LABEL_32;
    }

LABEL_33:

    goto LABEL_34;
  }

  v8 = [[NSUUID alloc] initWithUUIDBytes:v7];

  if (v8)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v10 = qword_100228FB8;
      if (v3)
      {
        v11 = v3[4];
        if (!v11)
        {
          v12 = objc_getProperty(v3, v9, 8, 1);
          pid = xpc_connection_get_pid(v12);
          v14 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
          {
            v15 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

            v14 = v15;
          }

          v16 = v3[4];
          v3[4] = v14;

          v11 = v3[4];
        }

        v17 = v11;
      }

      else
      {
        v17 = 0;
      }

      v18 = [v8 UUIDString];
      _NRLogWithArgs(v10, 0, "%s%.30s:%-4d Client %@ disabling %@", "", "handleDisableDeviceByNRUUID", 908, v17, v18);
    }

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100063844;
    v35[3] = &unk_1001FBF50;
    v36 = v3;
    sub_10016C20C(NRDLocalDevice, v8, v35);

    v19 = -2000;
    goto LABEL_23;
  }

LABEL_34:
  v30 = sub_100056D2C();
  v31 = _NRLogIsLevelEnabled();

  if (v31)
  {
    v32 = sub_100056D2C();
    v34 = sub_100056D80(v3, v33);
    _NRLogWithArgs(v32, 16, "%s%.30s:%-4d Invalid NRUUID from %@", "", "handleDisableDeviceByNRUUID", 905, v34);
  }

  v19 = -2005;
LABEL_23:

  return v19;
}

void sub_100063844(uint64_t a1, int64_t a2, void *a3)
{
  v18 = a3;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v5, 24, 1);
  }

  xpc_dictionary_set_int64(Property, nrXPCKeyResult, a2);
  if (v18)
  {
    v9 = v18;
    v10 = *(a1 + 32);
    if (v10)
    {
      v10 = objc_getProperty(v10, v8, 24, 1);
    }

    v11 = nrXPCKeyErrorDescription;
    v12 = v10;
    xpc_dictionary_set_string(v12, v11, [v9 UTF8String]);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v13 = objc_getProperty(v13, v7, 8, 1);
  }

  v15 = v13;
  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = objc_getProperty(v16, v14, 24, 1);
  }

  else
  {
    v17 = 0;
  }

  xpc_connection_send_message(v15, v17);
}

uint64_t sub_100063960(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = Property;
  v5 = v4;
  if (!v4)
  {
    v21 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_33;
    }

    v23 = sub_100056D2C();
    _NRLogWithArgs(v23, 17, "%s called with null dict");
LABEL_32:

    goto LABEL_33;
  }

  if (!nrXPCKeyNRUUID)
  {
    v24 = sub_100056D2C();
    v25 = _NRLogIsLevelEnabled();

    if (!v25)
    {
      goto LABEL_33;
    }

    v23 = sub_100056D2C();
    _NRLogWithArgs(v23, 17, "%s called with null key");
    goto LABEL_32;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyNRUUID);
  if (!uuid)
  {
    v26 = sub_100056D2C();
    v27 = _NRLogIsLevelEnabled();

    if (!v27)
    {
      goto LABEL_33;
    }

    v23 = sub_100056D2C();
    _NRLogWithArgs(v23, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
    goto LABEL_32;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v28 = sub_100056D2C();
    v29 = _NRLogIsLevelEnabled();

    if (v29)
    {
      v23 = sub_100056D2C();
      _NRLogWithArgs(v23, 16, "%s%.30s:%-4d UUID is null for key %s");
      goto LABEL_32;
    }

LABEL_33:

    goto LABEL_34;
  }

  v8 = [[NSUUID alloc] initWithUUIDBytes:v7];

  if (v8)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v10 = qword_100228FB8;
      if (v3)
      {
        v11 = v3[4];
        if (!v11)
        {
          v12 = objc_getProperty(v3, v9, 8, 1);
          pid = xpc_connection_get_pid(v12);
          v14 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
          {
            v15 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

            v14 = v15;
          }

          v16 = v3[4];
          v3[4] = v14;

          v11 = v3[4];
        }

        v17 = v11;
      }

      else
      {
        v17 = 0;
      }

      v18 = [v8 UUIDString];
      _NRLogWithArgs(v10, 0, "%s%.30s:%-4d Client %@ enabling %@", "", "handleEnableDeviceByNRUUID", 884, v17, v18);
    }

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100063DD4;
    v35[3] = &unk_1001FBF50;
    v36 = v3;
    sub_10016AE40(NRDLocalDevice, v8, v35);

    v19 = -2000;
    goto LABEL_23;
  }

LABEL_34:
  v30 = sub_100056D2C();
  v31 = _NRLogIsLevelEnabled();

  if (v31)
  {
    v32 = sub_100056D2C();
    v34 = sub_100056D80(v3, v33);
    _NRLogWithArgs(v32, 16, "%s%.30s:%-4d Invalid NRUUID from %@", "", "handleEnableDeviceByNRUUID", 881, v34);
  }

  v19 = -2005;
LABEL_23:

  return v19;
}

void sub_100063DD4(uint64_t a1, int64_t a2, void *a3)
{
  v18 = a3;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v5, 24, 1);
  }

  xpc_dictionary_set_int64(Property, nrXPCKeyResult, a2);
  if (v18)
  {
    v9 = v18;
    v10 = *(a1 + 32);
    if (v10)
    {
      v10 = objc_getProperty(v10, v8, 24, 1);
    }

    v11 = nrXPCKeyErrorDescription;
    v12 = v10;
    xpc_dictionary_set_string(v12, v11, [v9 UTF8String]);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v13 = objc_getProperty(v13, v7, 8, 1);
  }

  v15 = v13;
  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = objc_getProperty(v16, v14, 24, 1);
  }

  else
  {
    v17 = 0;
  }

  xpc_connection_send_message(v15, v17);
}

uint64_t sub_100063EF0(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v3 = qword_100228FB8;
    if (v1)
    {
      v4 = v1[4];
      if (!v4)
      {
        Property = objc_getProperty(v1, v2, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v7 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v8 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v7 = v8;
        }

        v9 = v1[4];
        v1[4] = v7;

        v4 = v1[4];
      }

      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    _NRLogWithArgs(v3, 0, "%s%.30s:%-4d Client %@ unregistering all devices", "", "handleUnregisterAllDevices", 812, v10);
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v33 = sub_100064400;
  v34 = &unk_1001FBF50;
  v35 = v1;
  v30 = v1;
  v29 = v32;
  v11 = objc_opt_self();
  v12 = sub_100003490();
  dispatch_assert_queue_V2(v12);

  sub_1001619D8(v11);
  v13 = [qword_100229428 copy];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v36 objects:buffer count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v37;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v36 + 1) + 8 * i);
        v20 = sub_100163B2C(NRDLocalDevice, v19, 0);
        v21 = v20;
        if (v20)
        {
          v22 = *(v20 + 24);
          v23 = [v21 description];
          sub_1000059A8(v22, 5002, v23, 0);

          v24 = sub_100166438(NRDLocalDevice, v21);
          [qword_100229428 setObject:v24 forKeyedSubscript:v19];

          if (v21[7])
          {
            [qword_100229430 setObject:0 forKeyedSubscript:?];
          }
        }

        else
        {
          v18 = sub_100166438(NRDLocalDevice, 0);
          [qword_100229428 setObject:v18 forKeyedSubscript:v19];
        }

        sub_1000B76C8(v19, 0);
        sub_100164E90(v21);
      }

      v15 = [obj countByEnumeratingWithState:&v36 objects:buffer count:16];
    }

    while (v15);
  }

  v25 = objc_opt_self();
  sub_1001629FC(v25, 0);
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

    _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d Unregistered all devices", "", "+[NRDLocalDevice unregisterAllDevicesWithCompletionBlock:]", 2919);
  }

  v33(v29, 0, 0);
  v26 = sub_100003490();
  dispatch_async(v26, &stru_1001FAE90);

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v27 = qword_1002290B8;
  sub_1000BC670(v27);

  return -2000;
}

void sub_100064400(uint64_t a1, int64_t a2, void *a3)
{
  v18 = a3;
  sub_10005674C(v18);
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v5, 24, 1);
  }

  xpc_dictionary_set_int64(Property, nrXPCKeyResult, a2);
  if (v18)
  {
    v9 = v18;
    v10 = *(a1 + 32);
    if (v10)
    {
      v10 = objc_getProperty(v10, v8, 24, 1);
    }

    v11 = nrXPCKeyErrorDescription;
    v12 = v10;
    xpc_dictionary_set_string(v12, v11, [v9 UTF8String]);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v13 = objc_getProperty(v13, v7, 8, 1);
  }

  v15 = v13;
  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = objc_getProperty(v16, v14, 24, 1);
  }

  else
  {
    v17 = 0;
  }

  xpc_connection_send_message(v15, v17);
}

uint64_t sub_100064520(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = Property;
  v5 = v4;
  if (!v4)
  {
    v24 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_37;
    }

    v26 = sub_100056D2C();
    _NRLogWithArgs(v26, 17, "%s called with null dict");
LABEL_36:

    goto LABEL_37;
  }

  if (!nrXPCKeyNRUUID)
  {
    v27 = sub_100056D2C();
    v28 = _NRLogIsLevelEnabled();

    if (!v28)
    {
      goto LABEL_37;
    }

    v26 = sub_100056D2C();
    _NRLogWithArgs(v26, 17, "%s called with null key");
    goto LABEL_36;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyNRUUID);
  if (!uuid)
  {
    v29 = sub_100056D2C();
    v30 = _NRLogIsLevelEnabled();

    if (!v30)
    {
      goto LABEL_37;
    }

    v26 = sub_100056D2C();
    _NRLogWithArgs(v26, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
    goto LABEL_36;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v31 = sub_100056D2C();
    v32 = _NRLogIsLevelEnabled();

    if (v32)
    {
      v26 = sub_100056D2C();
      _NRLogWithArgs(v26, 16, "%s%.30s:%-4d UUID is null for key %s");
      goto LABEL_36;
    }

LABEL_37:

    goto LABEL_38;
  }

  v8 = [[NSUUID alloc] initWithUUIDBytes:v7];

  if (v8)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v10 = qword_100228FB8;
      if (v3)
      {
        v11 = v3[4];
        if (!v11)
        {
          v12 = objc_getProperty(v3, v9, 8, 1);
          pid = xpc_connection_get_pid(v12);
          v14 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
          {
            v15 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

            v14 = v15;
          }

          v16 = v3[4];
          v3[4] = v14;

          v11 = v3[4];
        }

        v17 = v11;
      }

      else
      {
        v17 = 0;
      }

      v18 = [v8 UUIDString];
      _NRLogWithArgs(v10, 0, "%s%.30s:%-4d Client %@ unregistering %@", "", "handleUnregisterDeviceByNRUUID", 752, v17, v18);
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v20 = qword_1002290B8;
    if (v3)
    {
      v21 = objc_getProperty(v3, v19, 8, 1);
    }

    else
    {
      v21 = 0;
    }

    sub_1000CA9A0(v20, 0, v21);

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100064A08;
    v38[3] = &unk_1001FBF50;
    v39 = v3;
    sub_10016BD8C(NRDLocalDevice, v8, v38);

    v22 = -2000;
    goto LABEL_27;
  }

LABEL_38:
  v33 = sub_100056D2C();
  v34 = _NRLogIsLevelEnabled();

  if (v34)
  {
    v35 = sub_100056D2C();
    v37 = sub_100056D80(v3, v36);
    _NRLogWithArgs(v35, 16, "%s%.30s:%-4d Invalid NRUUID from %@", "", "handleUnregisterDeviceByNRUUID", 749, v37);
  }

  v22 = -2005;
LABEL_27:

  return v22;
}

void sub_100064A08(uint64_t a1, int64_t a2, void *a3)
{
  v18 = a3;
  sub_10005674C(v18);
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v5, 24, 1);
  }

  xpc_dictionary_set_int64(Property, nrXPCKeyResult, a2);
  if (v18)
  {
    v9 = v18;
    v10 = *(a1 + 32);
    if (v10)
    {
      v10 = objc_getProperty(v10, v8, 24, 1);
    }

    v11 = nrXPCKeyErrorDescription;
    v12 = v10;
    xpc_dictionary_set_string(v12, v11, [v9 UTF8String]);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v13 = objc_getProperty(v13, v7, 8, 1);
  }

  v15 = v13;
  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = objc_getProperty(v16, v14, 24, 1);
  }

  else
  {
    v17 = 0;
  }

  xpc_connection_send_message(v15, v17);
}

uint64_t sub_100064B28(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = Property;
  v5 = v4;
  if (!v4)
  {
    v141 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_160;
    }

    v143 = sub_100056D2C();
    _NRLogWithArgs(v143, 17, "%s called with null dict");
LABEL_159:

    goto LABEL_160;
  }

  if (!nrXPCKeyNRUUID)
  {
    v144 = sub_100056D2C();
    v145 = _NRLogIsLevelEnabled();

    if (!v145)
    {
      goto LABEL_160;
    }

    v143 = sub_100056D2C();
    _NRLogWithArgs(v143, 17, "%s called with null key");
    goto LABEL_159;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyNRUUID);
  if (!uuid)
  {
    v146 = sub_100056D2C();
    v147 = _NRLogIsLevelEnabled();

    if (!v147)
    {
      goto LABEL_160;
    }

    v143 = sub_100056D2C();
    _NRLogWithArgs(v143, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
    goto LABEL_159;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v148 = sub_100056D2C();
    v149 = _NRLogIsLevelEnabled();

    if (v149)
    {
      v143 = sub_100056D2C();
      _NRLogWithArgs(v143, 16, "%s%.30s:%-4d UUID is null for key %s");
      goto LABEL_159;
    }

LABEL_160:

    goto LABEL_161;
  }

  v8 = [[NSUUID alloc] initWithUUIDBytes:v7];

  if (v8)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v9 = qword_100228FB8;
    v10 = _NRLogIsLevelEnabled();

    if (v10)
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v13 = qword_100228FB8;
      if (v3)
      {
        v14 = v3[4];
        if (!v14)
        {
          v15 = objc_getProperty(v3, v12, 8, 1);
          pid = xpc_connection_get_pid(v15);
          v17 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(v204, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, v204, 0x400u) >= 1 && LOBYTE(v204[0]))
          {
            v18 = [[NSString alloc] initWithFormat:@"%s:%d", v204, pid];

            v17 = v18;
          }

          v19 = v3[4];
          v3[4] = v17;

          v14 = v3[4];
        }

        v20 = v14;
      }

      else
      {
        v20 = 0;
      }

      v21 = [v8 UUIDString];
      _NRLogWithArgs(v13, 0, "%s%.30s:%-4d Client %@ registering %@", "", "handleRegisterDeviceByNRUUID", 613, v20, v21);
    }

    if (v3)
    {
      v22 = objc_getProperty(v3, v11, 16, 1);
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    int64 = xpc_dictionary_get_int64(v23, nrXPCKeyPairingProtocolVersion);

    if (v3)
    {
      v25 = objc_getProperty(v3, v24, 16, 1);
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;
    uint64 = xpc_dictionary_get_uint64(v26, nrXPCKeyPeerNetworkRelayVersion);

    if (uint64 < 0x10000)
    {
      v31 = uint64;
    }

    else
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v29 = qword_100228FB8;
      v30 = _NRLogIsLevelEnabled();

      v31 = 0;
      if (v30)
      {
        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        v32 = qword_100228FB8;
        _NRLogWithArgs(v32, 0, "%s%.30s:%-4d ignoring invalid peer version %llu", "", "handleRegisterDeviceByNRUUID", 619, uint64);

        v31 = 0;
      }
    }

    if (v3)
    {
      v33 = objc_getProperty(v3, v28, 16, 1);
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;
    v35 = xpc_dictionary_get_BOOL(v34, nrXPCKeyWasInitiallySetupUsingIDSPairing);

    v202 = 0;
    v194 = v31;
    if (v3)
    {
      v37 = objc_getProperty(v3, v36, 16, 1);
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;
    data = xpc_dictionary_get_data(v38, nrXPCKeyOutOfBandKey, &v202);

    if (data)
    {
      v41 = [NSData _newZeroingDataWithBytes:data length:v202];
      if (v3)
      {
LABEL_40:
        v42 = objc_getProperty(v3, v40, 16, 1);
        goto LABEL_41;
      }
    }

    else
    {
      v41 = 0;
      if (v3)
      {
        goto LABEL_40;
      }
    }

    v42 = 0;
LABEL_41:
    v43 = v42;
    v44 = xpc_dictionary_get_BOOL(v43, nrXPCKeyPairWithSPPLink);

    if (v3)
    {
      v46 = objc_getProperty(v3, v45, 16, 1);
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;
    v48 = xpc_dictionary_get_BOOL(v47, nrXPCKeyIsAltAccountPairing);

    if (v3)
    {
      v50 = objc_getProperty(v3, v49, 16, 1);
    }

    else
    {
      v50 = 0;
    }

    v51 = v50;
    v52 = xpc_dictionary_get_BOOL(v51, nrXPCKeyIsExternalPairing);

    v201 = 0;
    v193 = v44;
    if (v3)
    {
      v54 = objc_getProperty(v3, v53, 16, 1);
    }

    else
    {
      v54 = 0;
    }

    v55 = v54;
    v56 = xpc_dictionary_get_data(v55, nrXPCKeyRemoteDeviceMACAddress, &v201);

    v191 = v52;
    v192 = v48;
    if (v56)
    {
      v57 = [NSData alloc];
      v58 = [v57 initWithBytes:v56 length:v201];
    }

    else
    {
      v58 = 0;
    }

    v199[0] = _NSConcreteStackBlock;
    v199[1] = 3221225472;
    v199[2] = sub_1000661D8;
    v199[3] = &unk_1001FBF50;
    v59 = v3;
    v200 = v59;
    v60 = objc_retainBlock(v199);
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v61 = qword_1002290B8;
    if (v61)
    {
      v63 = v61[8];

      if (v63 == 1)
      {
        v155 = v60;
        v156 = sub_100056D2C();
        v157 = _NRLogIsLevelEnabled();

        if (v157)
        {
          v158 = sub_100056D2C();
          _NRLogWithArgs(v158, 16, "%s%.30s:%-4d Pairing was attempted while in fixed interface mode for NRUUID %@", "", "handleRegisterDeviceByNRUUID", 655, v8);
        }

        v60 = v155;
        v155[2](v155, -2016, @"Pairing was attempted while in fixed interface mode");
        goto LABEL_121;
      }
    }

    if (v3)
    {
      v64 = objc_getProperty(v59, v62, 16, 1);
    }

    else
    {
      v64 = 0;
    }

    v65 = v64;
    v66 = xpc_dictionary_get_uint64(v65, nrXPCKeyPSM);

    v197 = v66;
    if (v66 >= 0x10000)
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        _NRLogWithArgs(qword_100228FB8, 16, "%s%.30s:%-4d Invalid psm %llu for NRUUID %@", "", "handleRegisterDeviceByNRUUID", 662, v197, v8);
      }

      (v60[2])(v60, -2005, @"Invalid psm");
      goto LABEL_121;
    }

    v196 = v60;
    v188 = v35;
    if (v3)
    {
      v68 = objc_getProperty(v59, v67, 16, 1);
    }

    else
    {
      v68 = 0;
    }

    v69 = v68;
    v70 = nrXPCKeyOperationalPropData;
    v71 = xpc_dictionary_get_value(v69, nrXPCKeyOperationalPropData);

    v190 = v58;
    if (!v71)
    {
      v85 = 0;
      goto LABEL_85;
    }

    v187 = v41;
    if (v3)
    {
      v73 = objc_getProperty(v59, v72, 16, 1);
    }

    else
    {
      v73 = 0;
    }

    v74 = v73;
    v75 = objc_opt_class();
    v76 = v74;
    v77 = v76;
    if (v76)
    {
      if (v70)
      {
        if (v75)
        {
          v204[0] = 0;
          v78 = xpc_dictionary_get_data(v76, v70, v204);
          if (v78)
          {
            if (v204[0])
            {
              v79 = v78;
              v80 = v8;
              v81 = [NSData alloc];
              v82 = [v81 initWithBytesNoCopy:v79 length:v204[0] freeWhenDone:0];
              v203 = 0;
              v83 = [NSKeyedUnarchiver unarchivedObjectOfClass:v75 fromData:v82 error:&v203];
              v84 = v203;
              if (v84 || !v83)
              {
                v174 = sub_100056D2C();
                LODWORD(v189) = _NRLogIsLevelEnabled();

                if (v189)
                {
                  v175 = sub_100056D2C();
                  _NRLogWithArgs(v175, 17, "Failed to unarchive object of type %@: %@", v75, v84);
                }

                v85 = 0;
              }

              else
              {
                v85 = v83;
              }

              v8 = v80;
              v41 = v187;
              v58 = v190;
LABEL_80:

              if (v85)
              {
                v86 = [v85 allowedLinkTypes];
                if ([v86 count])
                {
LABEL_82:

                  goto LABEL_85;
                }

                v87 = [v85 allowedLinkSubtypes];
                v88 = [v87 count];

                if (!v88)
                {
                  if (v3)
                  {
                    v131 = objc_getProperty(v59, v89, 8, 1);
                  }

                  else
                  {
                    v131 = 0;
                  }

                  v132 = v131;
                  v133 = [NSString stringWithUTF8String:nrXPCEntitlementTesting];
                  v134 = v132;
                  [v133 UTF8String];
                  v135 = xpc_connection_copy_entitlement_value();

                  v136 = v41;
                  v137 = v135 && xpc_get_type(v135) == &_xpc_type_BOOL && xpc_BOOL_get_value(v135);

                  if (!v137)
                  {
                    v60 = v196;
                    if (qword_100228FC0 != -1)
                    {
                      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
                    }

                    v41 = v136;
                    v58 = v190;
                    if (_NRLogIsLevelEnabled())
                    {
                      if (qword_100228FC0 != -1)
                      {
                        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
                      }

                      _NRLogWithArgs(qword_100228FB8, 17, "Received invalid operational properties %@", v85);
                    }

                    (v196[2])(v196, -2005, @"Received invalid operational properties");

                    goto LABEL_121;
                  }

                  if (qword_100228FC0 != -1)
                  {
                    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
                  }

                  v138 = qword_100228FB8;
                  v139 = _NRLogIsLevelEnabled();

                  v41 = v136;
                  if (v139)
                  {
                    if (qword_100228FC0 != -1)
                    {
                      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
                    }

                    v140 = qword_100228FB8;
                    _NRLogWithArgs(v140, 0, "%s%.30s:%-4d Ignoring operational properties", "", "handleRegisterDeviceByNRUUID", 680);
                  }

                  v86 = v85;
                  v85 = 0;
                  goto LABEL_82;
                }

LABEL_85:
                sub_10013E868(v85);
                if (v3)
                {
                  v91 = objc_getProperty(v59, v90, 16, 1);
                }

                else
                {
                  v91 = 0;
                }

                v92 = v91;
                v93 = xpc_dictionary_get_value(v92, nrXPCKeyPeerIPAddressData);

                v189 = v93;
                if (v93 && xpc_get_type(v93) == &_xpc_type_data)
                {
                  v186 = v85;
                  v187 = v41;
                  v185 = v8;
                  v117 = [NSData alloc];
                  bytes_ptr = xpc_data_get_bytes_ptr(v93);
                  v116 = [v117 initWithBytes:bytes_ptr length:xpc_data_get_length(v93)];
                  v184[1] = NSSet;
                  v184[0] = objc_opt_class();
                  v119 = objc_opt_class();
                  v120 = objc_opt_class();
                  v121 = objc_opt_class();
                  v122 = objc_opt_class();
                  v123 = objc_opt_class();
                  v124 = objc_opt_class();
                  v125 = [NSSet setWithObjects:v184[0], v119, v120, v121, v122, v123, v124, objc_opt_class(), 0];
                  v198 = 0;
                  v95 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v125 fromData:v116 error:&v198];
                  v114 = v198;
                  if (!v95 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v114)
                  {
                    v85 = v186;
                    if (qword_100228FC0 != -1)
                    {
                      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
                    }

                    v128 = qword_100228FB8;
                    v129 = _NRLogIsLevelEnabled();

                    if (v129)
                    {
                      if (qword_100228FC0 != -1)
                      {
                        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
                      }

                      v130 = qword_100228FB8;
                      _NRLogWithArgs(v130, 17, "Failed to unarchive peer IP properties %@", v114);
                    }

                    (v196[2])(v196, -2005, @"Failed to unarchive peer IP properties");

                    v8 = v185;
                    v41 = v187;
                    v58 = v190;
                    goto LABEL_120;
                  }

                  v8 = v185;
                  v85 = v186;
                  v41 = v187;
                  if (v3)
                  {
                    goto LABEL_90;
                  }
                }

                else
                {
                  v95 = 0;
                  if (v3)
                  {
LABEL_90:
                    v96 = objc_getProperty(v59, v94, 16, 1);
                    goto LABEL_91;
                  }
                }

                v96 = 0;
LABEL_91:
                v97 = v96;
                v98 = xpc_dictionary_get_BOOL(v97, nrXPCKeyIsEphemeral);

                if (!v98)
                {
LABEL_108:
                  if (v3)
                  {
                    v112 = objc_getProperty(v59, v99, 16, 1);
                  }

                  else
                  {
                    v112 = 0;
                  }

                  v113 = v112;
                  v114 = xpc_dictionary_get_value(v113, nrXPCKeyCandidateService);

                  v115 = v192;
                  if (v114 && xpc_get_type(v114) == &_xpc_type_string)
                  {
                    v116 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v114)];
                  }

                  else
                  {
                    v116 = 0;
                  }

                  v58 = v190;
                  sub_100169CF4(NRDLocalDevice, v8, int64, v194, v188, v41, v193, v115, v191, 0, 0, v197, v190, v85, v95, v116, v196);
LABEL_120:

                  v60 = v196;
LABEL_121:

                  v126 = -2000;
                  goto LABEL_122;
                }

                v186 = v85;
                v100 = v41;
                v101 = v8;
                v102 = objc_opt_self();
                if (_NRIsUUIDNonZero())
                {
                  v103 = sub_100003490();
                  dispatch_assert_queue_V2(v103);

                  sub_1001619D8(v102);
                  v104 = [qword_100229428 objectForKeyedSubscript:v101];
                  if (v104)
                  {
                    goto LABEL_104;
                  }

                  v185 = v8;
                  if (qword_100229488 != -1)
                  {
                    dispatch_once(&qword_100229488, &stru_1001FD018);
                  }

                  v8 = &qword_100229000;
                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_100229488 != -1)
                    {
                      dispatch_once(&qword_100229488, &stru_1001FD018);
                    }

                    _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d Creating new ephemeral local device for query %@", "", "+[NRDLocalDevice createEphemeralLocalDeviceForNRUUID:]", 2309, v101);
                  }

                  v105 = sub_10015D20C([NRDLocalDevice alloc], v101);
                  if (v105)
                  {
                    v104 = v105;
                    v105[8] = 1;
                    if ((v105[12] & 1) == 0)
                    {
                      v105[12] = 1;
                      sub_10015D3F4(v105);
                    }

                    [qword_100229428 setObject:v104 forKeyedSubscript:{v101, v184[0]}];
                    v106 = v104[3];
                    v107 = [v104 description];
                    sub_1000059A8(v106, 5000, v107, 0);

                    v8 = v185;
LABEL_104:

                    objc_opt_self();
                    if (qword_1002290C0 == -1)
                    {
LABEL_105:
                      v109 = qword_1002290B8;
                      if (v3)
                      {
                        v110 = objc_getProperty(v59, v108, 8, 1);
                      }

                      else
                      {
                        v110 = 0;
                      }

                      v111 = v110;
                      sub_1000CA9A0(v109, v104, v111);

                      v41 = v100;
                      v85 = v186;
                      goto LABEL_108;
                    }

LABEL_193:
                    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
                    goto LABEL_105;
                  }

                  [qword_100229428 setObject:0 forKeyedSubscript:v101];
                }

                else
                {
                  v176 = sub_10015B480();
                  v177 = _NRLogIsLevelEnabled();

                  if (v177)
                  {
                    v178 = sub_10015B480();
                    _NRLogWithArgs(v178, 17, "called with all-zero nrUUID");
                  }
                }

                v179 = sub_100056D2C();
                v180 = _NRLogIsLevelEnabled();

                if (v180)
                {
                  v181 = sub_100056D2C();
                  _NRLogWithArgs(v181, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "handleRegisterDeviceByNRUUID", 715);
                }

                v3 = _os_log_pack_size();
                v104 = (v184 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
                v182 = __error();
                v183 = _os_log_pack_fill(v104, v3, *v182, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
                *v183 = 136446210;
                *(v183 + 4) = "handleRegisterDeviceByNRUUID";
                sub_100056D2C();
                _NRLogAbortWithPack();
                goto LABEL_193;
              }

LABEL_182:
              v171 = sub_100056D2C();
              v172 = _NRLogIsLevelEnabled();

              if (v172)
              {
                v173 = sub_100056D2C();
                _NRLogWithArgs(v173, 16, "%s%.30s:%-4d Failed to get operational properties from registration request", "", "handleRegisterDeviceByNRUUID", 673);
              }

              v60 = v196;
              (v196[2])(v196, -2005, @"Failed to get operational properties from registration request");
              goto LABEL_121;
            }

            v169 = sub_100056D2C();
            v170 = _NRLogIsLevelEnabled();

            if (v170)
            {
              v82 = sub_100056D2C();
              _NRLogWithArgs(v82, 16, "%s%.30s:%-4d XPC data for key %s is empty");
              goto LABEL_179;
            }
          }

          else
          {
            v167 = sub_100056D2C();
            v168 = _NRLogIsLevelEnabled();

            if (v168)
            {
              v82 = sub_100056D2C();
              _NRLogWithArgs(v82, 16, "%s%.30s:%-4d Failed to get XPC data for key %s");
LABEL_179:
              v85 = 0;
              v41 = v187;
              goto LABEL_80;
            }
          }

          v41 = v187;
LABEL_181:

          goto LABEL_182;
        }

        v164 = sub_100056D2C();
        v165 = _NRLogIsLevelEnabled();

        v41 = v187;
        if (v165)
        {
          v161 = "%s called with null cls";
          goto LABEL_173;
        }

LABEL_174:

        goto LABEL_181;
      }

      v162 = sub_100056D2C();
      v163 = _NRLogIsLevelEnabled();

      v41 = v187;
      if ((v163 & 1) == 0)
      {
        goto LABEL_174;
      }

      v161 = "%s called with null key";
    }

    else
    {
      v159 = sub_100056D2C();
      v160 = _NRLogIsLevelEnabled();

      v41 = v187;
      if ((v160 & 1) == 0)
      {
        goto LABEL_174;
      }

      v161 = "%s called with null dict";
    }

LABEL_173:
    v166 = sub_100056D2C();
    _NRLogWithArgs(v166, 17, v161, "nr_xpc_dictionary_get_nsobject");

    goto LABEL_174;
  }

LABEL_161:
  v150 = sub_100056D2C();
  v151 = _NRLogIsLevelEnabled();

  if (v151)
  {
    v152 = sub_100056D2C();
    v154 = sub_100056D80(v3, v153);
    _NRLogWithArgs(v152, 16, "%s%.30s:%-4d Invalid NRUUID from %@", "", "handleRegisterDeviceByNRUUID", 610, v154);
  }

  v126 = -2005;
LABEL_122:

  return v126;
}

void sub_1000661D8(uint64_t a1, int64_t a2, void *a3)
{
  v18 = a3;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v5, 24, 1);
  }

  xpc_dictionary_set_int64(Property, nrXPCKeyResult, a2);
  if (v18)
  {
    v9 = v18;
    v10 = *(a1 + 32);
    if (v10)
    {
      v10 = objc_getProperty(v10, v8, 24, 1);
    }

    v11 = nrXPCKeyErrorDescription;
    v12 = v10;
    xpc_dictionary_set_string(v12, v11, [v9 UTF8String]);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v13 = objc_getProperty(v13, v7, 8, 1);
  }

  v15 = v13;
  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = objc_getProperty(v16, v14, 24, 1);
  }

  else
  {
    v17 = 0;
  }

  xpc_connection_send_message(v15, v17);
}

uint64_t sub_1000662F4(void *a1)
{
  v1 = a1;
  v2 = sub_10016D1F8(NRDLocalDevice);
  if (v2)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v5 = qword_100228FB8;
      if (v1)
      {
        v6 = v1[4];
        if (!v6)
        {
          Property = objc_getProperty(v1, v4, 8, 1);
          pid = xpc_connection_get_pid(Property);
          v9 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && LOBYTE(buffer[0]))
          {
            v10 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

            v9 = v10;
          }

          v11 = v1[4];
          v1[4] = v9;

          v6 = v1[4];
        }

        v12 = v6;
      }

      else
      {
        v12 = 0;
      }

      v13 = [v2 UUIDString];
      _NRLogWithArgs(v5, 0, "%s%.30s:%-4d Informing %@ that best testing NRUUID is %@", "", "handleCompanionLinkCopyBestTestingNRUUID", 601, v12, v13);
    }

    if (v1)
    {
      v14 = objc_getProperty(v1, v3, 24, 1);
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v16 = v2;
    v17 = v16;
    if (v15)
    {
      v18 = nrXPCKeyNRUUID;
      if (nrXPCKeyNRUUID)
      {
        buffer[0] = 0;
        buffer[1] = 0;
        [v16 getUUIDBytes:buffer];
        xpc_dictionary_set_uuid(v15, v18, buffer);
LABEL_21:

LABEL_36:
        goto LABEL_37;
      }

      v31 = sub_100056D2C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_21;
      }

      v30 = sub_100056D2C();
      _NRLogWithArgs(v30, 17, "%s called with null key");
    }

    else
    {
      v28 = sub_100056D2C();
      v29 = _NRLogIsLevelEnabled();

      if (!v29)
      {
        goto LABEL_21;
      }

      v30 = sub_100056D2C();
      _NRLogWithArgs(v30, 17, "%s called with null dict");
    }

    goto LABEL_21;
  }

  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v15 = qword_100228FB8;
    if (v1)
    {
      v20 = v1[4];
      if (!v20)
      {
        v21 = objc_getProperty(v1, v19, 8, 1);
        v22 = xpc_connection_get_pid(v21);
        v23 = [[NSString alloc] initWithFormat:@"unknown:%d", v22];
        bzero(buffer, 0x400uLL);
        if (v22 >= 1 && proc_pidpath(v22, buffer, 0x400u) >= 1 && LOBYTE(buffer[0]))
        {
          v24 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v22];

          v23 = v24;
        }

        v25 = v1[4];
        v1[4] = v23;

        v20 = v1[4];
      }

      v26 = v20;
    }

    else
    {
      v26 = 0;
    }

    _NRLogWithArgs(v15, 0, "%s%.30s:%-4d Could not find a best test device for %@", "", "handleCompanionLinkCopyBestTestingNRUUID", 597, v26);

    goto LABEL_36;
  }

LABEL_37:

  return 0;
}

uint64_t sub_10006674C(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v4 = qword_100228FB8;
    if (v1)
    {
      v5 = v1[4];
      if (!v5)
      {
        Property = objc_getProperty(v1, v3, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v8 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v9 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v8 = v9;
        }

        v10 = v1[4];
        v1[4] = v8;

        v5 = v1[4];
      }

      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    _NRLogWithArgs(v4, 0, "%s%.30s:%-4d Informing %@ that the networkrelay version is %u", "", "handleCompanionLinkGetNetworkRelayVersion", 518, v11, 24);
  }

  if (v1)
  {
    v12 = objc_getProperty(v1, v2, 24, 1);
  }

  else
  {
    v12 = 0;
  }

  xpc_dictionary_set_uint64(v12, nrXPCKeyNetworkRelayVersion, 0x18uLL);

  return 0;
}

uint64_t sub_100066958(void *a1)
{
  Property = a1;
  v5 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v4, 16, 1);
  }

  string = xpc_dictionary_get_string(Property, nrXPCKeyIDSDeviceID);
  if (!string)
  {
    v50 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_48;
    }

    v33 = sub_100056D2C();
    v40 = sub_100056D80(v5, v52);
    _NRLogWithArgs(v33, 16, "%s%.30s:%-4d Missing idsDeviceIDString from %@", "", "handleCompanionLinkCopyNRUUIDForIDSDeviceID", 566, v40);
    goto LABEL_47;
  }

  v8 = string;
  if (*string)
  {
    if (v5)
    {
      v9 = objc_getProperty(v5, v7, 16, 1);
    }

    else
    {
      v9 = 0;
    }

    v10 = xpc_dictionary_get_BOOL(v9, nrXPCKeyShouldCreateDevice);
    v11 = [NSString stringWithUTF8String:v8];
    if (v11)
    {
      v12 = v11;
      v13 = sub_100169028(NRDLocalDevice, v11, v10);
      v1 = v13;
      if (v13)
      {
        v14 = 1;
      }

      else
      {
        v14 = v10;
      }

      if ((v14 & 1) == 0)
      {
        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_64;
        }

        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        v30 = qword_100228FB8;
        if (v5)
        {
          v43 = v5[4];
          if (!v43)
          {
            v44 = objc_getProperty(v5, v42, 8, 1);
            pid = xpc_connection_get_pid(v44);
            v46 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
            bzero(v68, 0x400uLL);
            if (pid >= 1 && proc_pidpath(pid, v68, 0x400u) >= 1 && LOBYTE(v68[0]))
            {
              v47 = [[NSString alloc] initWithFormat:@"%s:%d", v68, pid];

              v46 = v47;
            }

            v48 = v5[4];
            v5[4] = v46;

            v43 = v5[4];
          }

          v28 = v43;
        }

        else
        {
          v28 = 0;
        }

        _NRLogWithArgs(v30, 0, "%s%.30s:%-4d Informing %@ that IDSDeviceID %@ does not map to any known device", "", "handleCompanionLinkCopyNRUUIDForIDSDeviceID", 580, v28, v12);
LABEL_63:

LABEL_64:
        v41 = 0;
        goto LABEL_65;
      }

      if (v13)
      {
        v15 = v13->_nrUUID;
        if (v15)
        {
          v10 = v15;
          p_vtable = NRSCDInterfaceConfig.vtable;
          if (qword_100228FC0 == -1)
          {
            goto LABEL_15;
          }

          goto LABEL_75;
        }
      }

      v58 = sub_100056D2C();
      v59 = _NRLogIsLevelEnabled();

      if (v59)
      {
        v60 = sub_100056D2C();
        _NRLogWithArgs(v60, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nrUUID) != ((void*)0)", "", "handleCompanionLinkCopyNRUUIDForIDSDeviceID", 585);
      }

      v5 = _os_log_pack_size();
      v12 = &v68[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v61 = *__error();
      v57 = _os_log_pack_fill(v12, v5, v61, &_mh_execute_header, "%{public}s Assertion Failed: (nrUUID) != ((void*)0)");
    }

    else
    {
      v53 = sub_100056D2C();
      v54 = _NRLogIsLevelEnabled();

      if (v54)
      {
        v55 = sub_100056D2C();
        _NRLogWithArgs(v55, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (idsDeviceID) != ((void*)0)", "", "handleCompanionLinkCopyNRUUIDForIDSDeviceID", 575);
      }

      v5 = _os_log_pack_size();
      v12 = &v68[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v56 = *__error();
      v57 = _os_log_pack_fill(v12, v5, v56, &_mh_execute_header, "%{public}s Assertion Failed: (idsDeviceID) != ((void*)0)");
    }

    *v57 = 136446210;
    *(v57 + 4) = "handleCompanionLinkCopyNRUUIDForIDSDeviceID";
    sub_100056D2C();
    _NRLogAbortWithPack();
LABEL_75:
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
LABEL_15:
    if (_NRLogIsLevelEnabled())
    {
      if (p_vtable[504] != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v18 = qword_100228FB8;
      if (v5)
      {
        v19 = v5[4];
        if (!v19)
        {
          v20 = objc_getProperty(v5, v17, 8, 1);
          v21 = xpc_connection_get_pid(v20);
          v22 = [[NSString alloc] initWithFormat:@"unknown:%d", v21];
          bzero(v68, 0x400uLL);
          if (v21 >= 1 && proc_pidpath(v21, v68, 0x400u) >= 1 && LOBYTE(v68[0]))
          {
            v23 = [[NSString alloc] initWithFormat:@"%s:%d", v68, v21];

            v22 = v23;
          }

          v24 = v5[4];
          v5[4] = v22;

          v19 = v5[4];
        }

        v25 = v19;
      }

      else
      {
        v25 = 0;
      }

      v26 = [v10 UUIDString];
      _NRLogWithArgs(v18, 0, "%s%.30s:%-4d Informing %@ that IDSDeviceID %@ maps to NRUUID %@", "", "handleCompanionLinkCopyNRUUIDForIDSDeviceID", 587, v25, v12, v26);
    }

    if (v5)
    {
      v27 = objc_getProperty(v5, v16, 24, 1);
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
    v29 = v10;
    v30 = v29;
    if (v28)
    {
      v31 = nrXPCKeyNRUUID;
      if (nrXPCKeyNRUUID)
      {
        v68[0] = 0;
        v68[1] = 0;
        [v29 getUUIDBytes:v68];
        xpc_dictionary_set_uuid(v28, v31, v68);
LABEL_32:

        goto LABEL_63;
      }

      v65 = sub_100056D2C();
      v66 = _NRLogIsLevelEnabled();

      if (!v66)
      {
        goto LABEL_32;
      }

      v64 = sub_100056D2C();
      _NRLogWithArgs(v64, 17, "%s called with null key");
    }

    else
    {
      v62 = sub_100056D2C();
      v63 = _NRLogIsLevelEnabled();

      if (!v63)
      {
        goto LABEL_32;
      }

      v64 = sub_100056D2C();
      _NRLogWithArgs(v64, 17, "%s called with null dict");
    }

    goto LABEL_32;
  }

  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v33 = qword_100228FB8;
    if (v5)
    {
      v34 = v5[4];
      if (!v34)
      {
        v35 = objc_getProperty(v5, v32, 8, 1);
        v36 = xpc_connection_get_pid(v35);
        v37 = [[NSString alloc] initWithFormat:@"unknown:%d", v36];
        bzero(v68, 0x400uLL);
        if (v36 >= 1 && proc_pidpath(v36, v68, 0x400u) >= 1 && LOBYTE(v68[0]))
        {
          v38 = [[NSString alloc] initWithFormat:@"%s:%d", v68, v36];

          v37 = v38;
        }

        v39 = v5[4];
        v5[4] = v37;

        v34 = v5[4];
      }

      v40 = v34;
    }

    else
    {
      v40 = 0;
    }

    _NRLogWithArgs(v33, 16, "%s%.30s:%-4d Empty idsDeviceIDString from %@", "", "handleCompanionLinkCopyNRUUIDForIDSDeviceID", 570, v40);
LABEL_47:
  }

LABEL_48:
  v41 = -2005;
LABEL_65:

  return v41;
}

uint64_t sub_1000671F8(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = Property;
  v5 = v4;
  if (!v4)
  {
    v40 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_56;
    }

    v42 = sub_100056D2C();
    _NRLogWithArgs(v42, 17, "%s called with null dict");
LABEL_55:

    goto LABEL_56;
  }

  if (!nrXPCKeyNRUUID)
  {
    v43 = sub_100056D2C();
    v44 = _NRLogIsLevelEnabled();

    if (!v44)
    {
      goto LABEL_56;
    }

    v42 = sub_100056D2C();
    _NRLogWithArgs(v42, 17, "%s called with null key");
    goto LABEL_55;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyNRUUID);
  if (!uuid)
  {
    v45 = sub_100056D2C();
    v46 = _NRLogIsLevelEnabled();

    if (!v46)
    {
      goto LABEL_56;
    }

    v42 = sub_100056D2C();
    _NRLogWithArgs(v42, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
    goto LABEL_55;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v47 = sub_100056D2C();
    v48 = _NRLogIsLevelEnabled();

    if (v48)
    {
      v42 = sub_100056D2C();
      _NRLogWithArgs(v42, 16, "%s%.30s:%-4d UUID is null for key %s");
      goto LABEL_55;
    }

LABEL_56:

    goto LABEL_57;
  }

  v8 = [[NSUUID alloc] initWithUUIDBytes:v7];

  if (v8)
  {
    v9 = sub_100163B2C(NRDLocalDevice, v8, 0);
    v10 = v9;
    if (!v9)
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        v31 = qword_100228FB8;
        if (v3)
        {
          v32 = v3[4];
          if (!v32)
          {
            v33 = objc_getProperty(v3, v30, 8, 1);
            pid = xpc_connection_get_pid(v33);
            v35 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
            bzero(buffer, 0x400uLL);
            if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && LOBYTE(buffer[0]))
            {
              v36 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

              v35 = v36;
            }

            v37 = v3[4];
            v3[4] = v35;

            v32 = v3[4];
          }

          v38 = v32;
        }

        else
        {
          v38 = 0;
        }

        _NRLogWithArgs(v31, 16, "%s%.30s:%-4d Unknown NRUUID %@ from %@", "", "handleCompanionLinkCopyBluetoothUUIDForNRUUID", 552, v8, v38);
      }

      v29 = -2008;
      goto LABEL_45;
    }

    v11 = *(v9 + 32);
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v14 = qword_100228FB8;
      if (v3)
      {
        v15 = v3[4];
        if (!v15)
        {
          v16 = objc_getProperty(v3, v13, 8, 1);
          v17 = xpc_connection_get_pid(v16);
          v18 = [[NSString alloc] initWithFormat:@"unknown:%d", v17];
          bzero(buffer, 0x400uLL);
          if (v17 >= 1 && proc_pidpath(v17, buffer, 0x400u) >= 1 && LOBYTE(buffer[0]))
          {
            v19 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v17];

            v18 = v19;
          }

          v20 = v3[4];
          v3[4] = v18;

          v15 = v3[4];
        }

        v21 = v15;
      }

      else
      {
        v21 = 0;
      }

      v22 = [v8 UUIDString];
      v23 = [v11 UUIDString];
      _NRLogWithArgs(v14, 0, "%s%.30s:%-4d Informing %@ that NRUUID %@ maps to BTUUID %@", "", "handleCompanionLinkCopyBluetoothUUIDForNRUUID", 557, v21, v22, v23);
    }

    if (v3)
    {
      v24 = objc_getProperty(v3, v12, 24, 1);
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    v26 = v11;
    v27 = v26;
    if (v25)
    {
      v28 = nrXPCKeyBluetoothUUID;
      if (nrXPCKeyBluetoothUUID)
      {
        if (v26)
        {
          buffer[0] = 0;
          buffer[1] = 0;
          [v26 getUUIDBytes:buffer];
          xpc_dictionary_set_uuid(v25, v28, buffer);
LABEL_29:

          v29 = 0;
LABEL_45:

          goto LABEL_46;
        }

        v59 = sub_100056D2C();
        v60 = _NRLogIsLevelEnabled();

        if (!v60)
        {
          goto LABEL_29;
        }

        v56 = sub_100056D2C();
        _NRLogWithArgs(v56, 17, "%s called with null uuid");
      }

      else
      {
        v57 = sub_100056D2C();
        v58 = _NRLogIsLevelEnabled();

        if (!v58)
        {
          goto LABEL_29;
        }

        v56 = sub_100056D2C();
        _NRLogWithArgs(v56, 17, "%s called with null key");
      }
    }

    else
    {
      v54 = sub_100056D2C();
      v55 = _NRLogIsLevelEnabled();

      if (!v55)
      {
        goto LABEL_29;
      }

      v56 = sub_100056D2C();
      _NRLogWithArgs(v56, 17, "%s called with null dict");
    }

    goto LABEL_29;
  }

LABEL_57:
  v49 = sub_100056D2C();
  v50 = _NRLogIsLevelEnabled();

  if (v50)
  {
    v51 = sub_100056D2C();
    v53 = sub_100056D80(v3, v52);
    _NRLogWithArgs(v51, 16, "%s%.30s:%-4d Invalid NRUUID from %@", "", "handleCompanionLinkCopyBluetoothUUIDForNRUUID", 546, v53);
  }

  v29 = -2005;
LABEL_46:

  return v29;
}

uint64_t sub_1000678F0(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = Property;
  v5 = v4;
  if (!v4)
  {
    v38 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_45;
    }

    v40 = sub_100056D2C();
    _NRLogWithArgs(v40, 17, "%s called with null dict");
LABEL_44:

    goto LABEL_45;
  }

  if (!nrXPCKeyBluetoothUUID)
  {
    v41 = sub_100056D2C();
    v42 = _NRLogIsLevelEnabled();

    if (!v42)
    {
      goto LABEL_45;
    }

    v40 = sub_100056D2C();
    _NRLogWithArgs(v40, 17, "%s called with null key");
    goto LABEL_44;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyBluetoothUUID);
  if (!uuid)
  {
    v43 = sub_100056D2C();
    v44 = _NRLogIsLevelEnabled();

    if (!v44)
    {
      goto LABEL_45;
    }

    v40 = sub_100056D2C();
    _NRLogWithArgs(v40, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
    goto LABEL_44;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v45 = sub_100056D2C();
    v46 = _NRLogIsLevelEnabled();

    if (v46)
    {
      v40 = sub_100056D2C();
      _NRLogWithArgs(v40, 16, "%s%.30s:%-4d UUID is null for key %s");
      goto LABEL_44;
    }

LABEL_45:

    goto LABEL_46;
  }

  v8 = [[NSUUID alloc] initWithUUIDBytes:v7];

  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = sub_100003490();
    dispatch_assert_queue_V2(v10);

    v11 = v9;
    objc_opt_self();
    p_vtable = sub_100168BE8(NRDLocalDevice, v11, 1);

    if (p_vtable)
    {
      nrUUID = p_vtable->_nrUUID;
    }

    else
    {
      nrUUID = 0;
    }

    v14 = nrUUID;

    if (v14)
    {
      p_vtable = NRSCDInterfaceConfig.vtable;
      if (qword_100228FC0 == -1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v52 = sub_100056D2C();
      v53 = _NRLogIsLevelEnabled();

      if (v53)
      {
        v54 = sub_100056D2C();
        _NRLogWithArgs(v54, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nrUUID) != ((void*)0)", "", "handleCompanionLinkCopyNRUUIDForBluetoothUUID", 531);
      }

      v3 = _os_log_pack_size();
      v11 = &v63[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v55 = __error();
      v56 = _os_log_pack_fill(v11, v3, *v55, &_mh_execute_header, "%{public}s Assertion Failed: (nrUUID) != ((void*)0)");
      *v56 = 136446210;
      *(v56 + 4) = "handleCompanionLinkCopyNRUUIDForBluetoothUUID";
      sub_100056D2C();
      _NRLogAbortWithPack();
    }

    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
LABEL_12:
    if (_NRLogIsLevelEnabled())
    {
      if (p_vtable[14]._dateRegistered != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v17 = qword_100228FB8;
      if (v3)
      {
        v18 = v3[4];
        if (!v18)
        {
          v19 = objc_getProperty(v3, v16, 8, 1);
          pid = xpc_connection_get_pid(v19);
          v21 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(v63, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, v63, 0x400u) >= 1 && LOBYTE(v63[0]))
          {
            v22 = [[NSString alloc] initWithFormat:@"%s:%d", v63, pid];

            v21 = v22;
          }

          v23 = v3[4];
          v3[4] = v21;

          v18 = v3[4];
        }

        v24 = v18;
      }

      else
      {
        v24 = 0;
      }

      v25 = [v11 UUIDString];
      v26 = [(NSUUID *)v14 UUIDString];
      _NRLogWithArgs(v17, 0, "%s%.30s:%-4d Informing %@ that BTUUID %@ maps to NRUUID %@", "", "handleCompanionLinkCopyNRUUIDForBluetoothUUID", 533, v24, v25, v26);
    }

    if (v3)
    {
      v27 = objc_getProperty(v3, v15, 24, 1);
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
    v29 = v14;
    v30 = v29;
    if (v28)
    {
      v31 = nrXPCKeyNRUUID;
      if (nrXPCKeyNRUUID)
      {
        v63[0] = 0;
        v63[1] = 0;
        [(NSUUID *)v29 getUUIDBytes:v63];
        xpc_dictionary_set_uuid(v28, v31, v63);
        goto LABEL_29;
      }

      v60 = sub_100056D2C();
      v61 = _NRLogIsLevelEnabled();

      if (!v61)
      {
LABEL_29:

        v32 = sub_100163A30(NRDLocalDevice, v30);
        v34 = v32;
        if (v32 && *(v32 + 8) == 1)
        {
          if (v3)
          {
            v35 = objc_getProperty(v3, v33, 24, 1);
          }

          else
          {
            v35 = 0;
          }

          xpc_dictionary_set_BOOL(v35, nrXPCKeyIsEphemeral, 1);
        }

        v36 = 0;
        goto LABEL_35;
      }

      v59 = sub_100056D2C();
      _NRLogWithArgs(v59, 17, "%s called with null key");
    }

    else
    {
      v57 = sub_100056D2C();
      v58 = _NRLogIsLevelEnabled();

      if (!v58)
      {
        goto LABEL_29;
      }

      v59 = sub_100056D2C();
      _NRLogWithArgs(v59, 17, "%s called with null dict");
    }

    goto LABEL_29;
  }

LABEL_46:
  v47 = sub_100056D2C();
  v48 = _NRLogIsLevelEnabled();

  if (v48)
  {
    v49 = sub_100056D2C();
    v51 = sub_100056D80(v3, v50);
    _NRLogWithArgs(v49, 16, "%s%.30s:%-4d Invalid BluetoothUUID from %@", "", "handleCompanionLinkCopyNRUUIDForBluetoothUUID", 527, v51);
  }

  v36 = -2005;
LABEL_35:

  return v36;
}

uint64_t sub_100067FE4(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = xpc_dictionary_get_value(Property, nrXPCKeyMPKLLoggingVal);
  if (xpc_get_type(v4) == &_xpc_type_BOOL)
  {
    value = xpc_BOOL_get_value(v4);
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

      v7 = "Dis";
      if (value)
      {
        v7 = "En";
      }

      if (gNRMPKLLoggingEnabled)
      {
        v8 = "en";
      }

      else
      {
        v8 = "dis";
      }

      _NRLogWithArgs(qword_1002290A8, 1, "%s%.30s:%-4d %sabling MPKL logging (was %sabled)", "", "terminusdSettingsSetMPKLLoggingEnabled", 144, v7, v8);
    }

    os_unfair_lock_lock(&unk_100229090);
    gNRMPKLLoggingEnabled = value;
    v9 = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/terminus/com.apple.terminus.plist"];
    if (!v9)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
    }

    v10 = [NSNumber numberWithBool:value];
    [v9 setObject:v10 forKeyedSubscript:@"MPKLLogging"];

    LODWORD(v10) = sub_10013A364(@"/var/mobile/Library/terminus/com.apple.terminus.plist", v9, 1);
    os_unfair_lock_unlock(&unk_100229090);
    if (v10)
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

        _NRLogWithArgs(qword_1002290A8, 0, "%s%.30s:%-4d %sabled MPKL logging");
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

        _NRLogWithArgs(qword_1002290A8, 16, "%s%.30s:%-4d Failed to %sable MPKL logging");
      }
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v11 = qword_1002290B8;
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 5);
      if (v13)
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v14 = *(v13 + 40);
        v15 = [v14 countByEnumeratingWithState:&v30 objects:buffer count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v31;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v31 != v17)
              {
                objc_enumerationMutation(v14);
              }

              [*(*(&v30 + 1) + 8 * i) virtualInterface];
            }

            v16 = [v14 countByEnumeratingWithState:&v30 objects:buffer count:16];
          }

          while (v16);
        }
      }
    }

    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v20 = qword_100228FB8;
      if (value)
      {
        v21 = "En";
      }

      else
      {
        v21 = "Dis";
      }

      if (v3)
      {
        v22 = v3[4];
        if (!v22)
        {
          v23 = objc_getProperty(v3, v19, 8, 1);
          pid = xpc_connection_get_pid(v23);
          v25 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
          {
            v26 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

            v25 = v26;
          }

          v27 = v3[4];
          v3[4] = v25;

          v22 = v3[4];
        }

        v28 = v22;
      }

      else
      {
        v28 = 0;
      }

      _NRLogWithArgs(v20, 0, "%s%.30s:%-4d %sabled MPKL logging due to request from %@", "", "handleSetMPKLLogging", 509, v21, v28);
    }

    v5 = 0;
  }

  else
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      _NRLogWithArgs(qword_100228FB8, 16, "%s%.30s:%-4d Received an invalid type for SetMPKLLogging", "", "handleSetMPKLLogging", 501);
      v5 = -2005;
    }

    else
    {
      v5 = -2005;
    }
  }

  return v5;
}

uint64_t sub_100068674(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = xpc_dictionary_get_value(Property, nrXPCKeyPacketLoggingVal);
  if (xpc_get_type(v4) == &_xpc_type_BOOL)
  {
    value = xpc_BOOL_get_value(v4);
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

      v7 = "Dis";
      if (value)
      {
        v7 = "En";
      }

      if (gNRPacketLoggingEnabled)
      {
        v8 = "en";
      }

      else
      {
        v8 = "dis";
      }

      _NRLogWithArgs(qword_1002290A8, 1, "%s%.30s:%-4d %sabling packet logging (was %sabled)", "", "terminusdSettingsSetPacketLoggingEnabled", 124, v7, v8);
    }

    os_unfair_lock_lock(&unk_100229090);
    gNRPacketLoggingEnabled = value;
    v9 = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/terminus/com.apple.terminus.plist"];
    if (!v9)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
    }

    v10 = [NSNumber numberWithBool:value];
    [v9 setObject:v10 forKeyedSubscript:@"PacketLogging"];

    LODWORD(v10) = sub_10013A364(@"/var/mobile/Library/terminus/com.apple.terminus.plist", v9, 1);
    os_unfair_lock_unlock(&unk_100229090);
    if (v10)
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

        _NRLogWithArgs(qword_1002290A8, 0, "%s%.30s:%-4d %sabled packet logging");
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

        _NRLogWithArgs(qword_1002290A8, 16, "%s%.30s:%-4d Failed to %sable packet logging");
      }
    }

    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v12 = qword_100228FB8;
      if (value)
      {
        v13 = "En";
      }

      else
      {
        v13 = "Dis";
      }

      if (v3)
      {
        v14 = v3[4];
        if (!v14)
        {
          v15 = objc_getProperty(v3, v11, 8, 1);
          pid = xpc_connection_get_pid(v15);
          v17 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
          {
            v18 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

            v17 = v18;
          }

          v19 = v3[4];
          v3[4] = v17;

          v14 = v3[4];
        }

        v20 = v14;
      }

      else
      {
        v20 = 0;
      }

      _NRLogWithArgs(v12, 0, "%s%.30s:%-4d %sabled packet logging due to request from %@", "", "handleSetPacketLogging", 488, v13, v20);
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v21 = qword_1002290B8;
    if (v21 && (v22 = v21[10], v21, v22 == 1))
    {
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v23 = qword_1002290B8;
      v24 = v23;
      if (v23)
      {
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        obj = v23[28];
        v25 = [obj countByEnumeratingWithState:&v34 objects:buffer count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v35;
          do
          {
            for (i = 0; i != v26; i = i + 1)
            {
              if (*v35 != v27)
              {
                objc_enumerationMutation(obj);
              }

              v29 = [v24[28] objectForKeyedSubscript:*(*(&v34 + 1) + 8 * i)];
              if (v29)
              {
                v30 = objc_alloc_init(NSMutableDictionary);
                v31 = [NSNumber numberWithBool:gNRPacketLoggingEnabled];
                [v30 setObject:v31 forKeyedSubscript:@"packet-logging"];

                sub_100114680(v29, v30);
              }
            }

            v26 = [obj countByEnumeratingWithState:&v34 objects:buffer count:16];
          }

          while (v26);
        }
      }

      v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      _NRLogWithArgs(qword_100228FB8, 16, "%s%.30s:%-4d Received an invalid type for SetPacketLogging", "", "handleSetPacketLogging", 480);
      v5 = -2005;
    }

    else
    {
      v5 = -2005;
    }
  }

  return v5;
}

uint64_t sub_100068DB4(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = Property;
  v5 = v4;
  if (!v4)
  {
    v60 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_98;
    }

    v62 = sub_100056D2C();
    _NRLogWithArgs(v62, 17, "%s called with null dict");
LABEL_97:

    goto LABEL_98;
  }

  if (!nrXPCKeyNRUUID)
  {
    v63 = sub_100056D2C();
    v64 = _NRLogIsLevelEnabled();

    if (!v64)
    {
      goto LABEL_98;
    }

    v62 = sub_100056D2C();
    _NRLogWithArgs(v62, 17, "%s called with null key");
    goto LABEL_97;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyNRUUID);
  if (!uuid)
  {
    v65 = sub_100056D2C();
    v66 = _NRLogIsLevelEnabled();

    if (!v66)
    {
      goto LABEL_98;
    }

    v62 = sub_100056D2C();
    _NRLogWithArgs(v62, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
    goto LABEL_97;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v67 = sub_100056D2C();
    v68 = _NRLogIsLevelEnabled();

    if (v68)
    {
      v62 = sub_100056D2C();
      _NRLogWithArgs(v62, 16, "%s%.30s:%-4d UUID is null for key %s");
      goto LABEL_97;
    }

LABEL_98:

    goto LABEL_99;
  }

  v8 = [[NSUUID alloc] initWithUUIDBytes:v7];

  if (v8)
  {
    if (v3)
    {
      v10 = objc_getProperty(v3, v9, 16, 1);
    }

    else
    {
      v10 = 0;
    }

    uint64 = xpc_dictionary_get_uint64(v10, nrXPCKeyDataProtectionClass);
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v12 = qword_100228FB8;
      String = NRDataProtectionClassCreateString();
      if (v3)
      {
        v15 = v3[4];
        if (!v15)
        {
          v16 = objc_getProperty(v3, v13, 8, 1);
          pid = xpc_connection_get_pid(v16);
          v18 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && LOBYTE(buffer[0]))
          {
            v19 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

            v18 = v19;
          }

          v20 = v3[4];
          v3[4] = v18;

          v15 = v3[4];
        }

        v21 = v15;
      }

      else
      {
        v21 = 0;
      }

      _NRLogWithArgs(v12, 0, "%s%.30s:%-4d Received resolution request for %@ %@ from %@", "", "handleResolveEndpoint", 435, v8, String, v21);
    }

    if (uint64 == 1)
    {
      v22 = 3;
    }

    else
    {
      v22 = uint64;
    }

    v23 = sub_100163B2C(NRDLocalDevice, v8, 0);
    v24 = v23;
    if (!v23)
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        v28 = qword_100228FB8;
        if (v3)
        {
          v29 = v3[4];
          if (!v29)
          {
            v30 = objc_getProperty(v3, v27, 8, 1);
            v31 = xpc_connection_get_pid(v30);
            v32 = [[NSString alloc] initWithFormat:@"unknown:%d", v31];
            bzero(buffer, 0x400uLL);
            if (v31 >= 1 && proc_pidpath(v31, buffer, 0x400u) >= 1 && LOBYTE(buffer[0]))
            {
              v33 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v31];

              v32 = v33;
            }

            v34 = v3[4];
            v3[4] = v32;

            v29 = v3[4];
          }

          v35 = v29;
        }

        else
        {
          v35 = 0;
        }

        _NRLogWithArgs(v28, 16, "%s%.30s:%-4d Unknown NRUUID %@ from %@", "", "handleResolveEndpoint", 443, v8, v35);

        v36 = -2008;
      }

      else
      {
        v36 = -2008;
      }

      goto LABEL_87;
    }

    bytes = 0uLL;
    if (v22 == 4)
    {
      if ((*(v23 + 12) & 1) == 0)
      {
        buffer[0] = 0uLL;
        sub_100167D5C(v23, buffer);
        objc_opt_self();
        if (WORD5(buffer[0]))
        {
          if (WORD6(buffer[0]))
          {
            sub_100167D5C(v24, &bytes);
LABEL_81:
            if (v3)
            {
              v48 = objc_getProperty(v3, v47, 24, 1);
              xpc_dictionary_set_data(v48, nrXPCKeyIPv6Address, &bytes, 0x10uLL);
              v50 = objc_getProperty(v3, v49, 24, 1);
            }

            else
            {
              xpc_dictionary_set_data(0, nrXPCKeyIPv6Address, &bytes, 0x10uLL);
              v50 = 0;
            }

            v51 = nrXPCKeyUseASQUIC;
            v52 = v50;
            v53 = *(v24 + 144);
            xpc_dictionary_set_BOOL(v52, v51, [v53 usesTLS]);

            v36 = *(v24 + 40);
            if (v36)
            {
              v55 = *(v24 + 40);
              if (v3)
              {
                v56 = objc_getProperty(v3, v54, 24, 1);
              }

              else
              {
                v56 = 0;
              }

              v57 = nrXPCKeyIDSDeviceID;
              v58 = v56;
              xpc_dictionary_set_string(v58, v57, [v55 UTF8String]);

              v36 = 0;
            }

            goto LABEL_87;
          }
        }
      }

      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        v25 = qword_100228FB8;
        v26 = NRDataProtectionClassCreateString();
        _NRLogWithArgs(v25, 16, "%s%.30s:%-4d No remote %@ address received for %@", "", "handleResolveEndpoint", 459, v26, v24);
        goto LABEL_58;
      }
    }

    else
    {
      if (v22 != 3)
      {
        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228FC0 != -1)
          {
            dispatch_once(&qword_100228FC0, &stru_1001FABC0);
          }

          v38 = qword_100228FB8;
          v39 = v22;
          if (v3)
          {
            v40 = v3[4];
            if (!v40)
            {
              v41 = objc_getProperty(v3, v37, 8, 1);
              v42 = xpc_connection_get_pid(v41);
              v43 = [[NSString alloc] initWithFormat:@"unknown:%d", v42];
              bzero(buffer, 0x400uLL);
              if (v42 >= 1 && proc_pidpath(v42, buffer, 0x400u) >= 1 && LOBYTE(buffer[0]))
              {
                v44 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v42];

                v43 = v44;
              }

              v45 = v3[4];
              v3[4] = v43;

              v40 = v3[4];
            }

            v46 = v40;
          }

          else
          {
            v46 = 0;
          }

          _NRLogWithArgs(v38, 16, "%s%.30s:%-4d Invalid data protection class %llu from %@", "", "handleResolveEndpoint", 464, v39, v46);
        }

        goto LABEL_73;
      }

      if ((*(v23 + 12) & 1) == 0)
      {
        buffer[0] = 0uLL;
        sub_1001727AC(v23, buffer);
        objc_opt_self();
        if (WORD5(buffer[0]))
        {
          if (WORD6(buffer[0]))
          {
            sub_1001727AC(v24, &bytes);
            goto LABEL_81;
          }
        }
      }

      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        v25 = qword_100228FB8;
        v26 = NRDataProtectionClassCreateString();
        _NRLogWithArgs(v25, 16, "%s%.30s:%-4d No remote %@ address received for %@", "", "handleResolveEndpoint", 452, v26, v24);
LABEL_58:
      }
    }

LABEL_73:
    v36 = -2005;
LABEL_87:

    goto LABEL_88;
  }

LABEL_99:
  v69 = sub_100056D2C();
  v70 = _NRLogIsLevelEnabled();

  if (v70)
  {
    v71 = sub_100056D2C();
    v73 = sub_100056D80(v3, v72);
    _NRLogWithArgs(v71, 16, "%s%.30s:%-4d Invalid NRUUID from %@", "", "handleResolveEndpoint", 427, v73);
  }

  v36 = -2005;
LABEL_88:

  return v36;
}

uint64_t sub_1000697D0(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v3 = qword_100228FB8;
    if (v1)
    {
      v4 = v1[4];
      if (!v4)
      {
        Property = objc_getProperty(v1, v2, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v7 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v8 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v7 = v8;
        }

        v9 = v1[4];
        v1[4] = v7;

        v4 = v1[4];
      }

      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    _NRLogWithArgs(v3, 0, "%s%.30s:%-4d Flushing BT pipe due to %@", "", "handleCompanionLinkFlushBTPipe", 418, v10);
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v11 = qword_1002290B8;
  v12 = v11;
  if (v11)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v11[28];
    v14 = [v13 countByEnumeratingWithState:&v28 objects:buffer count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [v12[28] objectForKeyedSubscript:*(*(&v28 + 1) + 8 * i)];
          v19 = sub_1000F1BC0(v18, 1);

          if ([(dispatch_queue_t *)v19 state]== 8 || [(dispatch_queue_t *)v19 state]== 9)
          {
            sub_100080EB4(v19, @"Flushing pipe for testing", v20, v21, v22, v23, v24, v25, v27);
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:buffer count:16];
      }

      while (v15);
    }
  }

  return 0;
}

uint64_t sub_100069AEC(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v3 = qword_100228FB8;
    if (v1)
    {
      v4 = v1[4];
      if (!v4)
      {
        Property = objc_getProperty(v1, v2, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v7 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v8 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v7 = v8;
        }

        v9 = v1[4];
        v1[4] = v7;

        v4 = v1[4];
      }

      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    _NRLogWithArgs(v3, 0, "%s%.30s:%-4d Cancelling companion link due to %@", "", "handleCompanionLinkCancel", 410, v10);
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v11 = qword_1002290B8;
  v12 = sub_1000BC44C(v11);

  if (v1)
  {
    v14 = objc_getProperty(v1, v13, 24, 1);
  }

  else
  {
    v14 = 0;
  }

  xpc_dictionary_set_uint64(v14, nrXPCKeyCompanionLinkCount, v12);

  return 0;
}

uint64_t sub_100069D40(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v5 = xpc_dictionary_dup_fd(Property, nrXPCKeyCompanionLinkStatusDumpToFileDescriptor);
  if (v5 == -1)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      _NRLogWithArgs(qword_100228FB8, 17, "Missing file descriptor key failed");
    }
  }

  else
  {
    if (v3)
    {
      v6 = objc_getProperty(v3, v4, 16, 1);
    }

    else
    {
      v6 = 0;
    }

    string = xpc_dictionary_get_string(v6, nrXPCKeyCompanionLinkStatusDumpToFilePath);
    if (string)
    {
      v8 = [[NSString alloc] initWithUTF8String:string];
      v9 = sub_10006A128();
      if (!v9)
      {
        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228FC0 != -1)
          {
            dispatch_once(&qword_100228FC0, &stru_1001FABC0);
          }

          _NRLogWithArgs(qword_100228FB8, 17, "Companion link status is empty failed");
        }

        v14 = -2004;
        goto LABEL_48;
      }

      v10 = v8;
      v11 = v9;
      if (v5 < 0)
      {
        v15 = sub_10013A310();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if ((IsLevelEnabled & 1) == 0)
        {
          goto LABEL_40;
        }

        v17 = "%s called with null fd >= 0";
      }

      else
      {
        if (v10)
        {
          if ([v10 length])
          {
            v12 = [v11 dataUsingEncoding:4];
            v13 = sub_100003C44(v5, v10, v12);

            if (v13)
            {
              v14 = 0;
LABEL_48:

              goto LABEL_49;
            }

LABEL_41:
            if (qword_100228FC0 != -1)
            {
              dispatch_once(&qword_100228FC0, &stru_1001FABC0);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_100228FC0 != -1)
              {
                dispatch_once(&qword_100228FC0, &stru_1001FABC0);
              }

              _NRLogWithArgs(qword_100228FB8, 16, "%s%.30s:%-4d Failed to write companion link status to fd %d", "", "handleCompanionLinkStatusToFileDescriptor", 359, v5);
            }

            v14 = -2012;
            goto LABEL_48;
          }

          v20 = sub_10013A310();
          v21 = _NRLogIsLevelEnabled();

          if (v21)
          {
            v17 = "%s called with null filePath.length";
            goto LABEL_39;
          }

LABEL_40:

          goto LABEL_41;
        }

        v18 = sub_10013A310();
        v19 = _NRLogIsLevelEnabled();

        if ((v19 & 1) == 0)
        {
          goto LABEL_40;
        }

        v17 = "%s called with null filePath";
      }

LABEL_39:
      v22 = sub_10013A310();
      _NRLogWithArgs(v22, 17, v17, "NRDSafeWriteStringToFileDescriptor");

      goto LABEL_40;
    }

    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      _NRLogWithArgs(qword_100228FB8, 17, "Missing file name key failed");
    }
  }

  v14 = -2005;
LABEL_49:
  close(v5);

  return v14;
}

id sub_10006A128()
{
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v109 = qword_1002290B8;
  if (!v109)
  {
    goto LABEL_162;
  }

  v0 = sub_100003490();
  dispatch_assert_queue_V2(v0);

  v1 = [NSMutableString alloc];
  if (_NRIsAppleInternal())
  {
    v2 = objc_alloc_init(NSMutableString);
    os_unfair_lock_lock(&stru_1002293D0);
    v3 = byte_1002293D4;
    v4 = [qword_1002293C8 count];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = [qword_1002293C8 objectAtIndexedSubscript:(v6 + v3) % v5];
        [v2 appendString:v8];

        v6 = ++v7;
      }

      while (v5 > v7);
    }

    os_unfair_lock_unlock(&stru_1002293D0);
    v9 = _NRCopyTimeString();
    [v2 appendFormat:@"\n    %@ : time of this status dump", v9];
  }

  else
  {
    v10 = [NSString alloc];
    v9 = _NRCopyTimeString();
    v2 = [v10 initWithFormat:@"\n    %@ : time of this status dump", v9];
  }

  v11 = [v1 initWithString:v2];
  v12 = objc_opt_self();
  v13 = sub_100003490();
  dispatch_assert_queue_V2(v13);

  sub_1001619D8(v12);
  v14 = [qword_100229428 copy];
  v15 = [NSMutableString alloc];
  v16 = [v14 count];
  v17 = [v14 count];
  v18 = "s";
  if (v17 == 1)
  {
    v18 = "";
  }

  v19 = [v15 initWithFormat:@"--------- NRD Local Device Database Status (%llu device%s) ---------\n", v16, v18];
  v20 = [v14 keysSortedByValueUsingComparator:&stru_1001FCEB8];
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v116 objects:v121 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v117;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v117 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [v14 objectForKeyedSubscript:*(*(&v116 + 1) + 8 * i)];
        v26 = sub_100166548(v25);
        [v19 appendFormat:@"\t%@\n", v26];
      }

      v22 = [v20 countByEnumeratingWithState:&v116 objects:v121 count:16];
    }

    while (v22);
  }

  if (qword_100229438)
  {
    [v19 appendFormat:@"\n--------- NRD Device Identity ---------"];
    v27 = sub_10015E4BC(qword_100229438);
    LogString = _NRKeyCreateLogString();
    [v19 appendFormat:@"\nPublic Key: %@\n", LogString];
  }

  [v11 appendFormat:@"\n\n%@", v19];
  [v11 appendFormat:@"\n--------- Director status ---------"];
  [v11 appendFormat:@"\nName: %@", @"Link Director"];
  if (*(v109 + 13))
  {
    v29 = "YES";
  }

  else
  {
    v29 = "NO";
  }

  [v11 appendFormat:@"\nEnabled: %s", v29];
  if (*(v109 + 8))
  {
    v30 = "YES";
  }

  else
  {
    v30 = "NO";
  }

  [v11 appendFormat:@"\nFixed Interface mode: %s", v30];
  if (*(v109 + 7) == -1)
  {
    v31 = "NO";
  }

  else
  {
    v31 = "YES";
  }

  [v11 appendFormat:@"\nThermal watcher registered: %s", v31];
  StringFromThermalPressureLevel = createStringFromThermalPressureLevel();
  [v11 appendFormat:@"\nThermal Pressure: %@", StringFromThermalPressureLevel];

  [v11 appendFormat:@"\nSOCKS port: %u", 62742];
  [v11 appendFormat:@"\nSOCKS server: %@", *(v109 + 18)];
  port = *(v109 + 19);
  if (port)
  {
    port = nw_masque_server_get_port();
  }

  [v11 appendFormat:@"\nMASQUE port: %u", port];
  [v11 appendFormat:@"\nMASQUE server: %@", *(v109 + 19)];
  if (sub_1000B794C())
  {
    v34 = "YES";
  }

  else
  {
    v34 = "NO";
  }

  [v11 appendFormat:@"\nCompanion APL allowed: %s", v34];
  v35 = objc_alloc_init(NSMutableDictionary);
  sub_1000C3FE8(v35);
  [v11 appendFormat:@"\nFD Usage: %@", v35];
  v115 = 0;
  v36 = *(v109 + 18);
  if (v36)
  {
    v37 = v36;
    v38 = nw_shoes_server_fillout_statistics();

    if (v38)
    {
      [v11 appendFormat:@"\nSOCKS Server Connections total: %u max simultaneous: %u", HIDWORD(v115), v115];
    }
  }

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v39 = qword_1002294C0;
  v40 = v39;
  if (v39)
  {
    dispatch_assert_queue_V2(v39[2]);
    sub_100180DE0(v40);
    v41 = [NSString alloc];
    String = NRDataProtectionClassCreateString();
    v43 = [v41 initWithFormat:@"Unlocked data protection: %@", String];
  }

  else
  {
    v43 = 0;
  }

  [v11 appendFormat:@"\n%@\n", v43];

  [v11 appendFormat:@"\n--------- Manager status ---------"];
  objc_opt_self();
  if (qword_100229410 != -1)
  {
    dispatch_once(&qword_100229410, &stru_1001FCD98);
  }

  v44 = qword_100229408;
  v45 = v44;
  if (v44)
  {
    dispatch_assert_queue_V2(*(v44 + 2));
    v46 = objc_alloc_init(NSMutableString);
    [v46 appendFormat:@"\nName: %@", @"Policy Session Manager"];
    [v46 appendFormat:@"\nPolicy Session: %@", v45[3]];
    [v46 appendFormat:@"\nInstalled policies: %@", v45[4]];
  }

  else
  {
    v46 = 0;
  }

  [v11 appendFormat:@"\n%@", v46];

  v47 = [*(v109 + 5) copyStatusString];
  [v11 appendFormat:@"\n%@", v47];

  v48 = *(v109 + 6);
  if (v48)
  {
    v49 = [v48 copyStatusString];
    [v11 appendFormat:@"\n%@\n", v49];
  }

  v50 = *(v109 + 24);
  if (v50)
  {
    v51 = [v50 copyStatusString];
    [v11 appendFormat:@"\n%@\n", v51];
  }

  v52 = *(v109 + 8);
  if (v52)
  {
    v53 = [v52 copyStatusString];
    [v11 appendFormat:@"\n%@\n", v53];
  }

  v54 = *(v109 + 25);
  if (v54)
  {
    dispatch_assert_queue_V2(*(v54 + 32));
    v55 = objc_alloc_init(NSMutableString);
    [v55 appendFormat:@"\nName: %@", @"Link Manager - On-demand link setup"];
    if (*(v54 + 8))
    {
      v56 = "YES";
    }

    else
    {
      v56 = "NO";
    }

    [v55 appendFormat:@"\nstarted: %s", v56];
    if (*(v54 + 9))
    {
      v57 = "YES";
    }

    else
    {
      v57 = "NO";
    }

    [v55 appendFormat:@"\ncancelled: %s", v57];
    if (*(v54 + 10))
    {
      v58 = "YES";
    }

    else
    {
      v58 = "NO";
    }

    [v55 appendFormat:@"\nsubscribed for PHS updates: %s", v58];
    if (*(v54 + 11))
    {
      v59 = "YES";
    }

    else
    {
      v59 = "NO";
    }

    [v55 appendFormat:@"\nPHS active: %s", v59];
    if (*(v54 + 12))
    {
      v60 = "YES";
    }

    else
    {
      v60 = "NO";
    }

    [v55 appendFormat:@"\nLLPHS active: %s", v60];
    if (*(v54 + 13))
    {
      v61 = "YES";
    }

    else
    {
      v61 = "NO";
    }

    [v55 appendFormat:@"\nPHS provider: %s", v61];
    if (*(v54 + 14))
    {
      v62 = "YES";
    }

    else
    {
      v62 = "NO";
    }

    [v55 appendFormat:@"\nPHS client: %s", v62];
    if (*(v54 + 15))
    {
      v63 = "YES";
    }

    else
    {
      v63 = "NO";
    }

    [v55 appendFormat:@"\ncellular slicing: %s", v63];
    [v55 appendFormat:@"\nInternet relay valid peers: %@", *(v54 + 88)];
    [v11 appendFormat:@"\n%@\n", v55];
  }

  objc_opt_self();
  if (qword_1002291A0 != -1)
  {
    dispatch_once(&qword_1002291A0, &stru_1001FBD88);
  }

  v64 = [qword_100229198 description];
  [v11 appendFormat:@"\n%@\n", v64];

  objc_opt_self();
  if (qword_100228E88 != -1)
  {
    dispatch_once(&qword_100228E88, &stru_1001FA180);
  }

  v105 = v35;
  v65 = qword_100228E80;
  if (v65)
  {
    v66 = objc_alloc_init(NSMutableString);
    [v66 appendFormat:@"\n---- NRIKEv2Listener ----"];
    [v66 appendFormat:@"\nIKEv2 Listener: %@", v65[2]];
    [v66 appendFormat:@"\nRegistered links: %@", v65[3]];
    [v66 appendFormat:@"\nRegistered pairing clients: %@", v65[4]];
    [v66 appendFormat:@"\nRegistered pairing manager: %@", v65[5]];
    [v66 appendFormat:@"\nPending sessions: %@", v65[6]];
  }

  else
  {
    v66 = 0;
  }

  [v11 appendFormat:@"\n%@\n", v66];

  [v11 appendFormat:@"\nOrphaned Device Monitor Connections: %@\n", *(v109 + 29)];
  [v11 appendFormat:@"\nOrphaned Device Preferences Connections: %@\n", *(v109 + 30)];
  [v11 appendFormat:@"\nEphemeral Device Connections: %@\n", *(v109 + 31)];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  obj = *(v109 + 28);
  v110 = [obj countByEnumeratingWithState:&v111 objects:v120 count:16];
  if (v110)
  {
    v107 = v11;
    v108 = *v112;
    do
    {
      for (j = 0; j != v110; j = j + 1)
      {
        if (*v112 != v108)
        {
          objc_enumerationMutation(obj);
        }

        v68 = [*(v109 + 28) objectForKeyedSubscript:*(*(&v111 + 1) + 8 * j)];
        v69 = v68;
        if (v68)
        {
          dispatch_assert_queue_V2(*(v68 + 136));
          v70 = [NSMutableString alloc];
          v71 = [*(v69 + 96) UUIDString];
          v72 = [v70 initWithFormat:@"--------- Conductor %@ status ---------", v71];

          [v72 appendFormat:@"\nPrimary Link: %@", *(v69 + 160)];
          [v72 appendFormat:@"\nLinks: %@", *(v69 + 144)];
          if (*(v69 + 488))
          {
            v73 = NEVirtualInterfaceCopyName();
          }

          else
          {
            v73 = @"<nil>";
          }

          [v72 appendFormat:@"\nCatch-All Interface: %@", v73];
          if (*(v69 + 23))
          {
            v74 = "YES";
          }

          else
          {
            v74 = "NO";
          }

          [v72 appendFormat:@"\nDisable Range Extension: %s", v74];
          if (*(v69 + 24))
          {
            v75 = "YES";
          }

          else
          {
            v75 = "NO";
          }

          [v72 appendFormat:@"\nDisable Prefer Wi-Fi: %s", v75];
          [v72 appendFormat:@"\nPending requests: %@", *(v69 + 152)];
          if (*(v69 + 15))
          {
            v76 = "YES";
          }

          else
          {
            v76 = "NO";
          }

          [v72 appendFormat:@"\nPrefer Wi-Fi request: %s", v76];
          v77 = "NOT connected";
          if (*(v69 + 32))
          {
            v77 = "Connected";
          }

          [v72 appendFormat:@"\nAPS connection status: %s", v77];
          if (*(v69 + 31))
          {
            v78 = "YES";
          }

          else
          {
            v78 = "NO";
          }

          [v72 appendFormat:@"\nHas quick relay request: %s", v78];
          if (*(v69 + 17))
          {
            v79 = "YES";
          }

          else
          {
            v79 = "NO";
          }

          [v72 appendFormat:@"\nDevice setup in progress: %s", v79];
          if (*(v69 + 11))
          {
            v80 = "YES";
          }

          else
          {
            v80 = "NO";
          }

          [v72 appendFormat:@"\nPerpetual standalone Meadow mode: %s", v80];
          if (*(v69 + 30))
          {
            v81 = "YES";
          }

          else
          {
            v81 = "NO";
          }

          [v72 appendFormat:@"\nHas phone call relay request: %s", v81];
          if (sub_1000EFD10(v69))
          {
            v82 = "YES";
          }

          else
          {
            v82 = "NO";
          }

          [v72 appendFormat:@"\nAlways On Wi-Fi supported by peer: %s", v82];
          [v72 appendFormat:@"\nLast sent WiFi endpoint: %@", *(v69 + 168)];
          [v72 appendFormat:@"\nLast sent WiFi signature: %@", *(v69 + 176)];
          if (*(v69 + 38))
          {
            v83 = "YES";
          }

          else
          {
            v83 = "NO";
          }

          [v72 appendFormat:@"\nPermitted clients policies added: %s", v83];
          if (*(v69 + 10))
          {
            v84 = "YES";
          }

          else
          {
            v84 = "NO";
          }

          [v72 appendFormat:@"\nAWDL supported: %s", v84];
          [v72 appendFormat:@"\nDevice monitor(s): %@", *(v69 + 200)];
          [v72 appendFormat:@"\nDevice Preferences Manager(s): %@", *(v69 + 216)];
          if (*(v69 + 42))
          {
            v85 = "YES";
          }

          else
          {
            v85 = "NO";
          }

          [v72 appendFormat:@"\nBuffer limits set: %s", v85];
          objc_opt_self();
          if (qword_100228F50 != -1)
          {
            dispatch_once(&qword_100228F50, &stru_1001FA740);
          }

          v86 = qword_100228F48;
          [v72 appendFormat:@"\nNRLinkDirectorMessage Manager: %@", v86];

          [v72 appendFormat:@"\nALU Monitor: %@", *(v69 + 608)];
          [v72 appendFormat:@"\nAS Client: %@", *(v69 + 656)];
          if (*(v69 + 50))
          {
            v87 = "YES";
          }

          else
          {
            v87 = "NO";
          }

          [v72 appendFormat:@"\nMonitoring LS: %s", v87];
          v88 = [*(v69 + 96) UUIDString];
          [v72 appendFormat:@"\n\n--------- Links to %@ status ---------", v88];

          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v89 = *(v69 + 144);
          v90 = [v89 countByEnumeratingWithState:&v116 objects:v121 count:16];
          if (v90)
          {
            v91 = v90;
            v92 = *v117;
            do
            {
              for (k = 0; k != v91; k = k + 1)
              {
                if (*v117 != v92)
                {
                  objc_enumerationMutation(v89);
                }

                v94 = [*(*(&v116 + 1) + 8 * k) copyStatusString];
                [v72 appendFormat:@"\n%@", v94];
              }

              v91 = [v89 countByEnumeratingWithState:&v116 objects:v121 count:16];
            }

            while (v91);
          }

          v11 = v107;
        }

        else
        {
          v72 = 0;
        }

        [v11 appendFormat:@"\n\n%@", v72];
      }

      v110 = [obj countByEnumeratingWithState:&v111 objects:v120 count:16];
    }

    while (v110);
  }

  if (qword_1002290F0 != -1)
  {
    dispatch_once(&qword_1002290F0, &stru_1001FB680);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    v95 = qword_1002290E8;
    _NRLogWithArgs(v95, 2, "%s%.30s:%-4d Director created status string %llu characters long", "", "-[NRLinkDirector copyStatusString]", 723, [v11 length]);
  }

  if (v11)
  {
    if (qword_1002290A0 != -1)
    {
      dispatch_once(&qword_1002290A0, &stru_1001FB258);
    }

    v96 = qword_100229098;
    if (v96)
    {
      v97 = [NSString alloc];
      if (sub_1000B79D8(v97, v98))
      {
        v99 = "en";
      }

      else
      {
        v99 = "dis";
      }

      v100 = [v97 initWithFormat:@"\tCompanion link is currently %sabled on this device", v99];
      v101 = [NSString alloc];
      if (gNRPacketLoggingEnabled)
      {
        v102 = "en";
      }

      else
      {
        v102 = "dis";
      }

      v103 = [v101 initWithFormat:@"%@, packet logging %sabled\n%@\n%@", v96, v102, v100, v11];
    }

    else
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        _NRLogWithArgs(qword_100228FB8, 17, "Failed to copy terminusd status");
      }

      v103 = 0;
    }
  }

  else
  {
LABEL_162:
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      _NRLogWithArgs(qword_100228FB8, 17, "Failed to copy status string from LinkDirector");
    }

    v11 = 0;
    v103 = 0;
  }

  return v103;
}

uint64_t sub_10006B39C(void *a1)
{
  v1 = a1;
  p_vtable = NRSCDInterfaceConfig.vtable;
  if (qword_100228FC0 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    if (_NRLogIsLevelEnabled())
    {
      if (*(p_vtable + 4032) != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v4 = qword_100228FB8;
      if (v1)
      {
        v5 = v1[4];
        if (!v5)
        {
          Property = objc_getProperty(v1, v3, 8, 1);
          pid = xpc_connection_get_pid(Property);
          v8 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(v51, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, v51, 0x400u) >= 1 && v51[0])
          {
            v9 = [[NSString alloc] initWithFormat:@"%s:%d", v51, pid];

            v8 = v9;
          }

          v10 = v1[4];
          v1[4] = v8;

          v5 = v1[4];
        }

        v11 = v5;
      }

      else
      {
        v11 = 0;
      }

      _NRLogWithArgs(v4, 0, "%s%.30s:%-4d Saving companion link status to temp directory for %@", "", "handleCompanionLinkStatusToTempDirectory", 372, v11);
    }

    v12 = [NSString alloc];
    v13 = +[NSUUID UUID];
    v14 = [v13 UUIDString];
    v15 = [v12 initWithFormat:@"/tmp/terminusd/%@", v14];

    v16 = sub_10006B92C(v15);
    if (![v16 count])
    {
      v30 = -2012;
      goto LABEL_30;
    }

    v17 = xpc_array_create(0, 0);
    if (v17)
    {
      break;
    }

    v38 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v40 = sub_100056D2C();
      _NRLogWithArgs(v40, 16, "%s%.30s:%-4d ABORTING: xpc_array_create(%p, %u) failed", "", "nr_xpc_array_create", 56, 0, 0);
    }

    p_vtable = _os_log_pack_size();
    v41 = &v44 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = __error();
    v43 = _os_log_pack_fill(v41, p_vtable, *v42, &_mh_execute_header, "%{public}s xpc_array_create(%p, %u) failed");
    sub_10006BF98(v43, "nr_xpc_array_create");
LABEL_38:
    sub_100056D2C();
    _NRLogAbortWithPack();
LABEL_39:
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  v18 = v17;
  v44 = v15;
  v45 = v1;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v19 = v16;
  v20 = [v19 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v47;
LABEL_19:
    v23 = 0;
    while (1)
    {
      if (*v47 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = [*(*(&v46 + 1) + 8 * v23) UTF8String];
      if (v24)
      {
        v25 = v24;
        v26 = xpc_string_create(v24);
        if (!v26)
        {
          if (qword_100228FC0 != -1)
          {
            dispatch_once(&qword_100228FC0, &stru_1001FABC0);
          }

          v1 = NRSCDInterfaceConfig.vtable;
          v32 = qword_100228FB8;
          v33 = _NRLogIsLevelEnabled();

          if (v33)
          {
            if (qword_100228FC0 != -1)
            {
              dispatch_once(&qword_100228FC0, &stru_1001FABC0);
            }

            v34 = qword_100228FB8;
            _NRLogWithArgs(v34, 16, "%s%.30s:%-4d ABORTING: xpc_string_create(%s) failed", "", "nr_xpc_string_create", 259, v25);
          }

          p_vtable = _os_log_pack_size();
          v35 = &v44 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v36 = __error();
          v37 = _os_log_pack_fill(v35, p_vtable, *v36, &_mh_execute_header, "%{public}s xpc_string_create(%s) failed");
          *v37 = 136446466;
          *(v37 + 4) = "nr_xpc_string_create";
          *(v37 + 12) = 2080;
          *(v37 + 14) = v25;
          goto LABEL_38;
        }

        v27 = v26;
        xpc_array_append_value(v18, v26);
      }

      if (v21 == ++v23)
      {
        v21 = [v19 countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (!v21)
        {
          break;
        }

        goto LABEL_19;
      }
    }
  }

  v1 = v45;
  if (v45)
  {
    v29 = objc_getProperty(v45, v28, 24, 1);
  }

  else
  {
    v29 = 0;
  }

  v15 = v44;
  xpc_dictionary_set_value(v29, nrXPCKeyCompanionLinkStatusDumpFilePaths, v18);

  v30 = 0;
LABEL_30:

  return v30;
}

id sub_10006B92C(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v13 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v15 = sub_100056D2C();
      _NRLogWithArgs(v15, 17, "%s called with null directoryPath");
LABEL_53:
    }

LABEL_54:
    v7 = 0;
    goto LABEL_70;
  }

  if (![v1 length])
  {
    v16 = sub_100056D2C();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
      v15 = sub_100056D2C();
      _NRLogWithArgs(v15, 17, "%s called with null directoryPath.length");
      goto LABEL_53;
    }

    goto LABEL_54;
  }

  v3 = sub_10006A128();
  if (!v3)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      _NRLogWithArgs(qword_100228FB8, 17, "Companion link status is empty failed");
    }

    v7 = 0;
    goto LABEL_69;
  }

  v4 = +[NSFileManager defaultManager];
  v24 = 0;
  if ([v4 fileExistsAtPath:v2 isDirectory:&v24] && (v24 & 1) != 0)
  {
LABEL_32:
    v8 = [v2 stringByAppendingPathComponent:@"companion_link_status_phone.txt"];
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      _NRLogWithArgs(qword_100228FB8, 0, "%s%.30s:%-4d Writing companion link status to %@", "", "dumpLinkStatusToDirectoryAt", 281, v8);
    }

    v6 = v8;
    v9 = v3;
    if (v6)
    {
      if ([v6 length])
      {
        v10 = [v9 dataUsingEncoding:4];
        v11 = sub_100003984(v6, v10, 0);
        goto LABEL_41;
      }

      v20 = sub_10013A310();
      v21 = _NRLogIsLevelEnabled();

      if (v21)
      {
        v10 = sub_10013A310();
        _NRLogWithArgs(v10, 17, "%s called with null filePath.length");
        goto LABEL_59;
      }
    }

    else
    {
      v18 = sub_10013A310();
      v19 = _NRLogIsLevelEnabled();

      if (v19)
      {
        v10 = sub_10013A310();
        _NRLogWithArgs(v10, 17, "%s called with null filePath");
LABEL_59:
        v11 = 0;
LABEL_41:

        v12 = qword_100228FC0;
        if (v11)
        {
          if (qword_100228FC0 != -1)
          {
            dispatch_once(&qword_100228FC0, &stru_1001FABC0);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228FC0 != -1)
            {
              dispatch_once(&qword_100228FC0, &stru_1001FABC0);
            }

            _NRLogWithArgs(qword_100228FB8, 0, "%s%.30s:%-4d Wrote companion link status to %@", "", "dumpLinkStatusToDirectoryAt", 288, v6);
          }

          v25 = v6;
          v7 = [NSArray arrayWithObjects:&v25 count:1];
          goto LABEL_68;
        }

        goto LABEL_61;
      }
    }

    v12 = qword_100228FC0;
LABEL_61:
    if (v12 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      _NRLogWithArgs(qword_100228FB8, 16, "%s%.30s:%-4d Failed to write companion link status to %@", "", "dumpLinkStatusToDirectoryAt", 285, v6);
    }

    goto LABEL_67;
  }

  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    _NRLogWithArgs(qword_100228FB8, 0, "%s%.30s:%-4d Creating temporary directory at %@", "", "dumpLinkStatusToDirectoryAt", 264, v2);
  }

  v23 = 0;
  [v4 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:&v23];
  v5 = v23;
  if (!v5)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      _NRLogWithArgs(qword_100228FB8, 0, "%s%.30s:%-4d Created temporary directory at %@", "", "dumpLinkStatusToDirectoryAt", 274, v2);
    }

    goto LABEL_32;
  }

  v6 = v5;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    _NRLogWithArgs(qword_100228FB8, 16, "%s%.30s:%-4d Failed to create directory at %@: %@", "", "dumpLinkStatusToDirectoryAt", 271, v2, v6);
  }

LABEL_67:
  v7 = 0;
LABEL_68:

LABEL_69:
LABEL_70:

  return v7;
}

double sub_10006BF98(uint64_t a1, uint64_t a2)
{
  *&result = 136446722;
  *a1 = 136446722;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = 0;
  *(a1 + 22) = 1024;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_10006BFC4(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  string = xpc_dictionary_get_string(Property, nrXPCKeyCompanionLinkStatusDumpToDirectoryPath);
  if (string)
  {
    v5 = [[NSString alloc] initWithUTF8String:string];
    if ([v5 hasPrefix:@"/var/mobile/Library/Logs/"] & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"/private/var/mobile/Library/Logs/") & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"/tmp/") & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"/private/var/tmp/"))
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        v8 = qword_100228FB8;
        if (v3)
        {
          v9 = v3[4];
          if (!v9)
          {
            v10 = objc_getProperty(v3, v7, 8, 1);
            pid = xpc_connection_get_pid(v10);
            v12 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
            bzero(buffer, 0x400uLL);
            if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
            {
              v13 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

              v12 = v13;
            }

            v14 = v3[4];
            v3[4] = v12;

            v9 = v3[4];
          }

          v15 = v9;
        }

        else
        {
          v15 = 0;
        }

        _NRLogWithArgs(v8, 0, "%s%.30s:%-4d Saving companion link status to %@ for %@", "", "handleCompanionLinkStatusToDirectory", 309, v5, v15);
      }

      if (v3)
      {
        v16 = objc_getProperty(v3, v6, 16, 1);
      }

      else
      {
        v16 = 0;
      }

      v17 = xpc_dictionary_get_string(v16, nrXPCKeyCompanionLinkStatusSandboxExtensionToken);
      if (v17)
      {
        v18 = sandbox_extension_consume();
      }

      else
      {
        v18 = -1;
      }

      v26 = sub_10006B92C(v5);
      if (v17 && (v18 & 0x8000000000000000) == 0)
      {
        sandbox_extension_release();
      }

      if ([v26 count])
      {
        v27 = 0;
      }

      else
      {
        v27 = -2012;
      }
    }

    else
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      if (!_NRLogIsLevelEnabled())
      {
        v27 = -2005;
        goto LABEL_48;
      }

      v26 = sub_100056D2C();
      v30 = sub_100056D80(v3, v29);
      _NRLogWithArgs(v26, 17, "Refusing to save companion link status to %@ for %@", v5, v30);

      v27 = -2005;
    }
  }

  else
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (!_NRLogIsLevelEnabled())
    {
      v27 = -2005;
      goto LABEL_49;
    }

    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v5 = qword_100228FB8;
    if (v3)
    {
      v20 = v3[4];
      if (!v20)
      {
        v21 = objc_getProperty(v3, v19, 8, 1);
        v22 = xpc_connection_get_pid(v21);
        v23 = [[NSString alloc] initWithFormat:@"unknown:%d", v22];
        bzero(buffer, 0x400uLL);
        if (v22 >= 1 && proc_pidpath(v22, buffer, 0x400u) >= 1 && buffer[0])
        {
          v24 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v22];

          v23 = v24;
        }

        v25 = v3[4];
        v3[4] = v23;

        v20 = v3[4];
      }

      v26 = v20;
    }

    else
    {
      v26 = 0;
    }

    _NRLogWithArgs(v5, 16, "%s%.30s:%-4d Missing directory name from %@", "", "handleCompanionLinkStatusToDirectory", 297, v26);
    v27 = -2005;
  }

LABEL_48:
LABEL_49:

  return v27;
}

uint64_t sub_10006C4A0(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v3 = qword_100228FB8;
    if (v1)
    {
      v4 = v1[4];
      if (!v4)
      {
        Property = objc_getProperty(v1, v2, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v7 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v8 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v7 = v8;
        }

        v9 = v1[4];
        v1[4] = v7;

        v4 = v1[4];
      }

      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    _NRLogWithArgs(v3, 0, "%s%.30s:%-4d Sending companion link status to %@", "", "handleCompanionLinkStatus", 398, v10);
  }

  v12 = sub_10006A128();
  if (v12)
  {
    if (v1)
    {
      v13 = objc_getProperty(v1, v11, 24, 1);
    }

    else
    {
      v13 = 0;
    }

    v14 = nrXPCKeyCompanionLinkStatusMessage;
    v15 = v13;
    xpc_dictionary_set_string(v15, v14, [v12 UTF8String]);

    v16 = 0;
  }

  else
  {
    v16 = -2004;
  }

  return v16;
}

uint64_t sub_10006C6E0(void *a1)
{
  v1 = a1;
  v4 = sub_1000B79D8(v1, v2);
  if (v1)
  {
    Property = objc_getProperty(v1, v3, 24, 1);
  }

  else
  {
    Property = 0;
  }

  xpc_dictionary_set_BOOL(Property, nrXPCKeyCompanionLinkIsEnabled, v4);
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v7 = qword_100228FB8;
    if (v1)
    {
      v8 = v1[4];
      if (!v8)
      {
        v9 = objc_getProperty(v1, v6, 8, 1);
        pid = xpc_connection_get_pid(v9);
        v11 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v12 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v11 = v12;
        }

        v13 = v1[4];
        v1[4] = v11;

        v8 = v1[4];
      }

      v14 = v8;
    }

    else
    {
      v14 = 0;
    }

    v15 = "dis";
    if (v4)
    {
      v15 = "en";
    }

    _NRLogWithArgs(v7, 0, "%s%.30s:%-4d Informing %@ that companion link is %sabled", "", "handleCompanionLinkIsEnabled", 222, v14, v15);
  }

  return 0;
}

uint64_t sub_10006C910(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v3 = qword_100228FB8;
    if (v1)
    {
      v4 = v1[4];
      if (!v4)
      {
        Property = objc_getProperty(v1, v2, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v7 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v8 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v7 = v8;
        }

        v9 = v1[4];
        v1[4] = v7;

        v4 = v1[4];
      }

      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    _NRLogWithArgs(v3, 0, "%s%.30s:%-4d Disabling companion link due to request from %@", "", "handleCompanionLinkDisable", 212, v10);
  }

  sub_1000B7AA8(2);

  return 0;
}

uint64_t sub_10006CAEC(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v3 = qword_100228FB8;
    if (v1)
    {
      v4 = v1[4];
      if (!v4)
      {
        Property = objc_getProperty(v1, v2, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v7 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v8 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v7 = v8;
        }

        v9 = v1[4];
        v1[4] = v7;

        v4 = v1[4];
      }

      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    _NRLogWithArgs(v3, 0, "%s%.30s:%-4d Enabling companion link due to request from %@", "", "handleCompanionLinkEnable", 205, v10);
  }

  sub_1000B7AA8(1);

  return 0;
}

uint64_t sub_10006CCC8(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v3 = qword_100228FB8;
    if (v1)
    {
      v4 = v1[4];
      if (!v4)
      {
        Property = objc_getProperty(v1, v2, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v7 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v8 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v7 = v8;
        }

        v9 = v1[4];
        v1[4] = v7;

        v4 = v1[4];
      }

      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    _NRLogWithArgs(v3, 0, "%s%.30s:%-4d Setting companion link to default due to request from %@", "", "handleCompanionLinkDefault", 198, v10);
  }

  sub_1000B7AA8(0);

  return 0;
}

uint64_t sub_10006CEA4(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v3 = qword_100228FB8;
    if (v1)
    {
      v4 = v1[4];
      if (!v4)
      {
        Property = objc_getProperty(v1, v2, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v7 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v8 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v7 = v8;
        }

        v9 = v1[4];
        v1[4] = v7;

        v4 = v1[4];
      }

      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    _NRLogWithArgs(v3, 0, "%s%.30s:%-4d Received DaemonPing from %@", "", "handlePing", 190, v10);
  }

  v11 = getpid();
  v13 = xpc_string_create_with_format("PingReply(%d)", v11);
  if (v1)
  {
    v14 = objc_getProperty(v1, v12, 24, 1);
  }

  else
  {
    v14 = 0;
  }

  xpc_dictionary_set_value(v14, nrXPCKeyPingMessage, v13);

  return 0;
}

void sub_10006D260(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228FC8;
  qword_100228FC8 = v1;

  _objc_release_x1(v1, v2);
}

char *sub_10006D2A4(char *a1, void *a2)
{
  v4 = a2;
  if (!a1)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  if ((_NRIsAppleInternal() & 1) == 0)
  {
    p_vtable = NRSCDInterfaceConfig.vtable;
    if (qword_100228FD0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v20.receiver = a1;
  v20.super_class = NRDTestServer;
  v5 = objc_msgSendSuper2(&v20, "init");
  if (!v5)
  {
    v14 = sub_10006D4F8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    p_vtable = "[NRDTestServer initTestServerWithQueue:]";
    if (IsLevelEnabled)
    {
      v16 = sub_10006D4F8();
      _NRLogWithArgs(v16, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDTestServer initTestServerWithQueue:]", 225);
    }

    v4 = _os_log_pack_size();
    a1 = &v19 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = __error();
    v18 = _os_log_pack_fill(a1, v4, *v17, &_mh_execute_header, "%{public}s [super init] failed");
    *v18 = 136446210;
    *(v18 + 4) = "[NRDTestServer initTestServerWithQueue:]";
    sub_10006D4F8();
    _NRLogAbortWithPack();
LABEL_15:
    dispatch_once(&qword_100228FD0, &stru_1001FADB0);
LABEL_6:
    if (_NRLogIsLevelEnabled())
    {
      if (p_vtable[506] != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      _NRLogWithArgs(qword_100228FC8, 17, "Unsupported");
    }

    goto LABEL_10;
  }

  v6 = v5;
  objc_storeStrong(v5 + 2, a2);
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = *(v6 + 6);
  *(v6 + 6) = v7;

  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = *(v6 + 9);
  *(v6 + 9) = v9;

  sub_10006D54C(v6 + 7, *(v6 + 2), 0x464Fu);
  sub_10006D54C(v6 + 8, *(v6 + 2), 0x4A37u);
  a1 = v6;
  v11 = a1;
LABEL_11:

  return v11;
}

id sub_10006D4F8()
{
  if (qword_100228FD0 != -1)
  {
    dispatch_once(&qword_100228FD0, &stru_1001FADB0);
  }

  v1 = qword_100228FC8;

  return v1;
}

void sub_10006D54C(dispatch_source_t *a1, void *a2, unsigned int a3)
{
  v5 = a2;
  if (a1)
  {
    if (*a1)
    {
      dispatch_source_cancel(*a1);
      v6 = *a1;
      *a1 = 0;
    }

    v7 = socket(30, 2, 0);
    if ((v7 & 0x80000000) == 0)
    {
      v8 = v7;
      v9 = fcntl(v7, 3, 0);
      if (v9 < 0)
      {
        v11 = __error();
        if (strerror_r(*v11, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        if (qword_100228FD0 != -1)
        {
          dispatch_once(&qword_100228FD0, &stru_1001FADB0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228FD0 != -1)
          {
            dispatch_once(&qword_100228FD0, &stru_1001FADB0);
          }

          _NRLogWithArgs(qword_100228FC8, 17, "fcntl(%d, F_GETFL, 0): [%d] %s");
        }

        goto LABEL_38;
      }

      if (fcntl(v8, 4, v9 | 4u))
      {
        v10 = __error();
        if (strerror_r(*v10, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        if (qword_100228FD0 != -1)
        {
          dispatch_once(&qword_100228FD0, &stru_1001FADB0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228FD0 != -1)
          {
            dispatch_once(&qword_100228FD0, &stru_1001FADB0);
          }

          _NRLogWithArgs(qword_100228FC8, 17, "fcntl(%d, F_SETFL, %d): [%d] %s");
        }

        goto LABEL_38;
      }

      if (setsockopt(v8, 0xFFFF, 4, &unk_10019652C, 4u))
      {
        v12 = __error();
        if (strerror_r(*v12, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        if (qword_100228FD0 != -1)
        {
          dispatch_once(&qword_100228FD0, &stru_1001FADB0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228FD0 != -1)
          {
            dispatch_once(&qword_100228FD0, &stru_1001FADB0);
          }

          _NRLogWithArgs(qword_100228FC8, 17, "SO_REUSEADDR failed: [%d] %s");
        }

        goto LABEL_38;
      }

      if (setsockopt(v8, 0xFFFF, 512, &unk_10019652C, 4u))
      {
        v14 = __error();
        if (strerror_r(*v14, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        if (qword_100228FD0 != -1)
        {
          dispatch_once(&qword_100228FD0, &stru_1001FADB0);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_38;
        }

        v15 = sub_10006D4F8();
        _NRLogWithArgs(v15, 17, "SO_REUSEPORT failed: [%d] %s");
      }

      else if (setsockopt(v8, 0xFFFF, 4356, &unk_10019652C, 4u))
      {
        v16 = __error();
        if (strerror_r(*v16, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        v17 = sub_10006D4F8();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (!IsLevelEnabled)
        {
          goto LABEL_38;
        }

        v15 = sub_10006D4F8();
        _NRLogWithArgs(v15, 17, "SO_RECV_ANYIF failed: [%d] %s");
      }

      else if (setsockopt(v8, 41, 27, &unk_10019652C, 4u))
      {
        v19 = __error();
        if (strerror_r(*v19, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        v20 = sub_10006D4F8();
        v21 = _NRLogIsLevelEnabled();

        if (!v21)
        {
          goto LABEL_38;
        }

        v15 = sub_10006D4F8();
        _NRLogWithArgs(v15, 17, "IPV6_V6ONLY failed: [%d] %s");
      }

      else if (setsockopt(v8, 0xFFFF, 4130, &unk_10019652C, 4u))
      {
        v22 = __error();
        if (strerror_r(*v22, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        v23 = sub_10006D4F8();
        v24 = _NRLogIsLevelEnabled();

        if (!v24)
        {
          goto LABEL_38;
        }

        v15 = sub_10006D4F8();
        _NRLogWithArgs(v15, 17, "SO_NOSIGPIPE failed: [%d] %s");
      }

      else if (setsockopt(v8, 41, 61, &unk_10019652C, 4u))
      {
        v25 = __error();
        if (strerror_r(*v25, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        v26 = sub_10006D4F8();
        v27 = _NRLogIsLevelEnabled();

        if (!v27)
        {
          goto LABEL_38;
        }

        v15 = sub_10006D4F8();
        _NRLogWithArgs(v15, 17, "IPV6_RECVPKTINFO failed: [%d] %s");
      }

      else
      {
        *&v45[4] = 0;
        *&v45[12] = 0;
        v46 = 0;
        *v45 = 7708;
        *&v45[2] = __rev16(a3);
        if (!bind(v8, v45, 0x1Cu))
        {
          v34 = dispatch_source_create(&_dispatch_source_type_read, v8, 0, v5);
          v35 = *a1;
          *a1 = v34;

          v36 = *a1;
          if (*a1)
          {
            handler[0] = _NSConcreteStackBlock;
            handler[1] = 3221225472;
            handler[2] = sub_10006DD18;
            handler[3] = &unk_1001FADD0;
            v44 = v8;
            dispatch_source_set_event_handler(v36, handler);
            v37 = *a1;
            v41[0] = _NSConcreteStackBlock;
            v41[1] = 3221225472;
            v41[2] = sub_10006E368;
            v41[3] = &unk_1001FADD0;
            v42 = v8;
            dispatch_source_set_cancel_handler(v37, v41);
            dispatch_activate(*a1);
            goto LABEL_41;
          }

          v38 = sub_10006D4F8();
          v39 = _NRLogIsLevelEnabled();

          if (v39)
          {
            v40 = sub_10006D4F8();
            _NRLogWithArgs(v40, 17, "dispatch_source_create failed");
          }

          goto LABEL_38;
        }

        v31 = __error();
        if (strerror_r(*v31, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        v32 = sub_10006D4F8();
        v33 = _NRLogIsLevelEnabled();

        if (!v33)
        {
LABEL_38:
          if (*a1)
          {
            dispatch_source_cancel(*a1);
            v13 = *a1;
            *a1 = 0;
          }

          else
          {
            close(v8);
          }

          goto LABEL_41;
        }

        v15 = sub_10006D4F8();
        _NRLogWithArgs(v15, 17, "bind failed: [%d] %s");
      }

      goto LABEL_38;
    }

    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      _NRLogWithArgs(qword_100228FC8, 17, "socket(AF_INET6, SOCK_DGRAM, 0) failed");
    }
  }

  else
  {
    v28 = sub_10006D4F8();
    v29 = _NRLogIsLevelEnabled();

    if (v29)
    {
      v30 = sub_10006D4F8();
      _NRLogWithArgs(v30, 17, "%s called with null udpInputSourcePtr", "NRDTSCreateUDPListeningSocket");
    }
  }

LABEL_41:
}

int *sub_10006DD18(uint64_t a1)
{
  while (1)
  {
    memset(v14, 0, sizeof(v14));
    memset(v10, 0, sizeof(v10));
    v11 = 0;
    v9[0] = v13;
    v9[1] = 2000;
    *&v8.msg_namelen = 28;
    *&v8.msg_iovlen = 1;
    v8.msg_name = v10;
    v8.msg_iov = v9;
    v8.msg_control = v14;
    *&v8.msg_controllen = 32;
    v2 = recvmsg(*(a1 + 32), &v8, 0);
    if (v2 < 0)
    {
      break;
    }

    if (!v2)
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      result = _NRLogIsLevelEnabled();
      if (result)
      {
        if (qword_100228FD0 != -1)
        {
          dispatch_once(&qword_100228FD0, &stru_1001FADB0);
        }

        return _NRLogWithArgs(qword_100228FC8, 16, "%s%.30s:%-4d Received empty UDP datagram");
      }

      return result;
    }

    if (v8.msg_namelen >= 0x1C && (msg_name = v8.msg_name) != 0)
    {
      if (*(v8.msg_name + 1) == 30)
      {
        if (*v8.msg_name > 0x1Bu)
        {
          if (v8.msg_controllen - 33 >= 0xFFFFFFF3 && v8.msg_control == v14)
          {
            if (DWORD2(v14[0]) == 46)
            {
              v7[0] = v13;
              v7[1] = v2;
              *&v6.msg_controllen = 0;
              *&v6.msg_iovlen = 0u;
              *&v6.msg_namelen = 0u;
              v6.msg_name = v8.msg_name;
              v6.msg_namelen = *v8.msg_name;
              v6.msg_iov = v7;
              v6.msg_iovlen = 1;
              v6.msg_control = v14;
              v6.msg_controllen = 32;
              if (sendmsg(*(a1 + 32), &v6, 0) <= 0)
              {
                v4 = *__error();
                if (strerror_r(v4, __strerrbuf, 0x80uLL))
                {
                  __strerrbuf[0] = 0;
                }

                if (qword_100228FD0 != -1)
                {
                  dispatch_once(&qword_100228FD0, &stru_1001FADB0);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_100228FD0 != -1)
                  {
                    dispatch_once(&qword_100228FD0, &stru_1001FADB0);
                  }

                  _NRLogWithArgs(qword_100228FC8, 17, "sendmsg failed: [%d] %s", v4, __strerrbuf);
                }
              }
            }

            else
            {
              if (qword_100228FD0 != -1)
              {
                dispatch_once(&qword_100228FD0, &stru_1001FADB0);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_100228FD0 != -1)
                {
                  dispatch_once(&qword_100228FD0, &stru_1001FADB0);
                }

                _NRLogWithArgs(qword_100228FC8, 16, "%s%.30s:%-4d Invalid cmsg_type %d", "", "NRDTSCreateUDPListeningSocket_block_invoke", 162, DWORD2(v14[0]));
              }
            }
          }

          else
          {
            if (qword_100228FD0 != -1)
            {
              dispatch_once(&qword_100228FD0, &stru_1001FADB0);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_100228FD0 != -1)
              {
                dispatch_once(&qword_100228FD0, &stru_1001FADB0);
              }

              _NRLogWithArgs(qword_100228FC8, 16, "%s%.30s:%-4d missing control message %u %p %p", "", "NRDTSCreateUDPListeningSocket_block_invoke", 157, v8.msg_controllen, v8.msg_control, v14);
            }
          }
        }

        else
        {
          if (qword_100228FD0 != -1)
          {
            dispatch_once(&qword_100228FD0, &stru_1001FADB0);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228FD0 != -1)
            {
              dispatch_once(&qword_100228FD0, &stru_1001FADB0);
            }

            _NRLogWithArgs(qword_100228FC8, 16, "%s%.30s:%-4d packet source sin6_len too short %u < %zu", "", "NRDTSCreateUDPListeningSocket_block_invoke", 152, *msg_name, 0x1CuLL);
          }
        }
      }

      else
      {
        if (qword_100228FD0 != -1)
        {
          dispatch_once(&qword_100228FD0, &stru_1001FADB0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228FD0 != -1)
          {
            dispatch_once(&qword_100228FD0, &stru_1001FADB0);
          }

          _NRLogWithArgs(qword_100228FC8, 16, "%s%.30s:%-4d packet came from wrong address family %u", "", "NRDTSCreateUDPListeningSocket_block_invoke", 148, msg_name[1]);
        }
      }
    }

    else
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FD0 != -1)
        {
          dispatch_once(&qword_100228FD0, &stru_1001FADB0);
        }

        _NRLogWithArgs(qword_100228FC8, 16, "%s%.30s:%-4d missing name message %u %p", "", "NRDTSCreateUDPListeningSocket_block_invoke", 142, v8.msg_namelen, v8.msg_name);
      }
    }
  }

  result = __error();
  if (*result != 35)
  {
    if (strerror_r(*result, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      return _NRLogWithArgs(qword_100228FC8, 17, "recvmsg failed: [%d] %s");
    }
  }

  return result;
}

id sub_10006E370(uint64_t a1, int a2)
{
  v3 = nw_parameters_create();
  v4 = *(a1 + 16);
  v5 = nw_service_connector_create();

  v8 = v5;
  nw_service_connector_set_service_available_block();
  nw_service_connector_start();
  v6 = v8;

  return v6;
}

void sub_10006E45C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (qword_100228FD0 != -1)
  {
    dispatch_once(&qword_100228FD0, &stru_1001FADB0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    _NRLogWithArgs(qword_100228FC8, 1, "%s%.30s:%-4d Received service connection request: %s(%@)", "", "[NRDTestServer setupTestServer]_block_invoke_2", 341, a3, v5);
  }

  v8 = v5;
  v9 = [[NSString alloc] initWithUTF8String:a3];
  v10 = *(a1 + 32);
  v6 = v9;
  v7 = v5;
  nw_service_connector_start_request();
}

void sub_10006E5F4(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      _NRLogWithArgs(qword_100228FC8, 16, "%s%.30s:%-4d Cannot establish connection for service %s: %@", "", "[NRDTestServer setupTestServer]_block_invoke_3", 347, a1[8], a3);
    }
  }

  else
  {
    sub_10006E6F4(a1[4], v5, a1[5], a1[6], a1[7]);
  }
}

void sub_10006E6F4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a1;
  v12 = v10;
  v13 = a4;
  v14 = a5;
  if (a1)
  {
    v15 = nw_connection_copy_current_path(v9);
    v16 = nw_path_copy_interface();
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      _NRLogWithArgs(qword_100228FC8, 1, "%s%.30s:%-4d Established connection on interface: %@ for service: %@", "", "[NRDTestServer handleNewConnection:forPeerEndpoint:forService:forServiceConnector:]", 369, v16, v13);
    }

    [*(a1 + 48) setObject:v9 forKeyedSubscript:v13];
    v17 = nw_connection_copy_connected_remote_endpoint();

    if ([v13 containsString:@"-urgent"])
    {
      nw_connection_reset_traffic_class();
      v18 = 2;
    }

    else
    {
      v18 = 5;
    }

    if ([v13 containsString:@"-awdl"])
    {
      v35 = v16;
      v36 = v15;
      v19 = [[NRCompanionLinkPreferences alloc] initForHighThroughputWithServiceClass:v18 includeP2P:1];
      v34 = v17;
      v20 = nw_endpoint_copy_address_string(v17);
      v21 = [NSString stringWithUTF8String:v20];
      if (v20)
      {
        free(v20);
      }

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v22 = sub_10016C8BC(NRDLocalDevice);
      v23 = [v22 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v23)
      {
        v31 = v19;
        v32 = v11;
        v33 = v13;
        v24 = *v44;
LABEL_16:
        v25 = 0;
        while (1)
        {
          if (*v44 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v43 + 1) + 8 * v25);
          v27 = sub_100163A30(NRDLocalDevice, v26);
          v28 = sub_100172FC0(v27);
          if ([v28 containsObject:v21])
          {
            break;
          }

          if (v23 == ++v25)
          {
            v23 = [v22 countByEnumeratingWithState:&v43 objects:v47 count:16];
            if (v23)
            {
              goto LABEL_16;
            }

            v11 = v32;
            v13 = v33;
            v17 = v34;
            v19 = v31;
            goto LABEL_28;
          }
        }

        v23 = v26;

        if (!v23)
        {
          v11 = v32;
          v13 = v33;
          v17 = v34;
          v19 = v31;
          goto LABEL_30;
        }

        v11 = v32;
        v22 = [*(v32 + 72) objectForKeyedSubscript:v23];
        v13 = v33;
        v17 = v34;
        v19 = v31;
        if (!v22)
        {
          v29 = [[NRDeviceIdentifier alloc] initWithUUID:v23];
          v22 = [[NRDevicePreferences alloc] initWithDeviceIdentifier:v29];
        }

        [v22 setIsNRDTestServer:1];
        [v22 setCompanionLinkPreferences:v31];
        [*(v32 + 72) setObject:v22 forKeyedSubscript:v23];
      }

LABEL_28:

LABEL_30:
      v16 = v35;
      v15 = v36;
    }

    else
    {
      v23 = 0;
    }

    nw_connection_set_queue(v9, *(v11 + 16));
    v39 = v13;
    v40 = v23;
    v41 = v14;
    v12 = v17;
    v42 = v9;
    v30 = v23;
    nw_connection_set_event_handler();
    v37 = v39;
    v38 = v42;
    nw_connection_set_read_close_handler();
    nw_connection_start(v38);
  }
}

void sub_10006EBFC(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  if (qword_100228FD0 != -1)
  {
    dispatch_once(&qword_100228FD0, &stru_1001FADB0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    v6 = a1[4];
    v7 = qword_100228FC8;
    v8 = nw_connection_state_to_string();
    _NRLogWithArgs(v7, 1, "%s%.30s:%-4d Connection for service %@ entered state %s with error %@", "", "[NRDTestServer handleNewConnection:forPeerEndpoint:forService:forServiceConnector:]_block_invoke", 413, v6, v8, v5);
  }

  if ((v3 & 0xFFFFFFFE) == 4)
  {
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      _NRLogWithArgs(qword_100228FC8, 1, "%s%.30s:%-4d Cancelling connection for key: %@", "", "[NRDTestServer handleNewConnection:forPeerEndpoint:forService:forServiceConnector:]_block_invoke", 415, a1[4]);
    }

    if (a1[5])
    {
      v9 = a1[6];
      if (v9)
      {
        v10 = *(v9 + 72);
      }

      else
      {
        v10 = 0;
      }

      v11 = [v10 objectForKeyedSubscript:?];
      v12 = v11;
      if (v11)
      {
        [v11 setCompanionLinkPreferences:0];
      }
    }

    [a1[4] UTF8String];
    v16 = a1[4];
    nw_service_connector_cancel_active_connection();
    v13 = a1[6];
    if (v13)
    {
      v14 = *(v13 + 48);
    }

    else
    {
      v14 = 0;
    }

    [v14 removeObjectForKey:a1[4]];
  }

  else if (v3 == 3)
  {
    sub_10006F064(a1[6], a1[9], a1[4]);
    if ([a1[4] hasPrefix:@"Terminus download service"])
    {
      v15 = a1[6];
      if (v15)
      {
        sub_10006F130(v15, 0, a1[9]);
      }
    }
  }
}