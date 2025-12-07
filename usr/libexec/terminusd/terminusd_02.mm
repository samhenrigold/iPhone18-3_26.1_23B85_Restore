id sub_10002BFC8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 48) || !*(a1 + 14))
  {
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v9, 17, "No message to send");
    }

    return 0;
  }

  v2 = *(a1 + 14) + *(a1 + 12);
  if (*(a1 + 16) != v2)
  {
    v10 = _NRCopyLogObjectForNRUUID();
    v11 = _NRLogIsLevelEnabled();

    if (v11)
    {
      v12 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v12, 17, "Disconnect between messageLen %u and totalLength %u", *(a1 + 16), v2);
    }

    return 0;
  }

  v3 = [NSData alloc];
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);

  return [v3 initWithBytes:v4 length:v5];
}

uint64_t sub_10002C0E8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v2 = qword_1002290B8;
    v3 = *(v1 + 24);
    if (v3)
    {
      v4 = v3;
      goto LABEL_14;
    }

    v5 = *(v1 + 32);
    v6 = v5;
    if (v2)
    {
      if (v5)
      {
        v7 = [v2[28] objectForKeyedSubscript:v5];
        if (v7)
        {
          v8 = v7;
          dispatch_assert_queue_V2(*(v7 + 136));
          v4 = v8[20];
LABEL_12:

          goto LABEL_13;
        }

        v9 = [v6 UUIDString];
        sub_1000B926C(v2, 1014, @"copyPrimaryLink %@", v10, v11, v12, v13, v14, v9);

        v8 = 0;
LABEL_11:
        v4 = 0;
        goto LABEL_12;
      }

      v47 = sub_1000B9544();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v8 = sub_1000B9544();
        _NRLogWithArgs(v8, 17, "%s called with null nrUUID", "[NRLinkDirector copyPrimaryLinkForNRUUID:]");
        goto LABEL_11;
      }
    }

    v4 = 0;
LABEL_13:

    if ([v4 state] != 8)
    {
      v24 = _NRCopyLogObjectForNRUUID();
      v25 = _NRLogIsLevelEnabled();

      if (v25)
      {
        v26 = *(v1 + 32);
        v27 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v27, 16, "%s%.30s:%-4d No links to send the message %@", "", "[NRLinkDirectorMessage send]", 1039, v1);
      }

      v58 = 0;
      goto LABEL_51;
    }

LABEL_14:
    v15 = sub_10002BFC8(v1);
    if (!v15)
    {
      v58 = 0;
LABEL_50:

LABEL_51:
      return v58;
    }

    v16 = sub_100163A30(NRDLocalDevice, *(v1 + 32));
    v17 = v16;
    if (!v16 || *(v16 + 16) <= 0x11u)
    {
      *(v1 + 8) = 0;
    }

    v52 = v4;
    v60 = v4;
    v18 = [NSArray arrayWithObjects:&v60 count:1];
    v51 = v17;
    if (*(v1 + 8) != 1)
    {
LABEL_31:
      v53 = v2;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v34 = v18;
      v35 = [v34 countByEnumeratingWithState:&v54 objects:v59 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = 0;
        v38 = *v55;
        while (1)
        {
          for (i = 0; i != v36; i = i + 1)
          {
            if (*v55 != v38)
            {
              objc_enumerationMutation(v34);
            }

            v42 = *(*(&v54 + 1) + 8 * i);
            if ([v42 ikeClassDEstablished] && (*(v1 + 9) != 1 || objc_msgSend(v42, "type") != 4))
            {
              v43 = [v42 sendControlData:v15];
              v44 = _NRCopyLogObjectForNRUUID();
              if (v43)
              {
                v45 = _NRLogIsLevelEnabled();

                if (v45)
                {
                  v40 = *(v1 + 32);
                  v41 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs(v41, 0, "%s%.30s:%-4d Successfully sent %@ over %@", "", "[NRLinkDirectorMessage send]", 1070, v1, v42);
                  v37 = 1;
LABEL_36:

                  continue;
                }

                v37 = 1;
              }

              else
              {
                v46 = _NRLogIsLevelEnabled();

                if (v46)
                {
                  v40 = *(v1 + 32);
                  v41 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs(v41, 16, "%s%.30s:%-4d Failed to send %@ over %@", "", "[NRLinkDirectorMessage send]", 1072, v1, v42, v51);
                  goto LABEL_36;
                }
              }
            }
          }

          v36 = [v34 countByEnumeratingWithState:&v54 objects:v59 count:16];
          if (!v36)
          {
            goto LABEL_49;
          }
        }
      }

      v37 = 0;
LABEL_49:

      v58 = v37 & 1;
      v4 = v52;
      v2 = v53;
      goto LABEL_50;
    }

    v19 = *(v1 + 32);
    v20 = v19;
    if (v2)
    {
      if (v19)
      {
        v21 = [v2[28] objectForKeyedSubscript:v19];
        if (v21)
        {
          v22 = v21;
          dispatch_assert_queue_V2(*(v21 + 136));
          v23 = [v22[18] allObjects];
LABEL_29:

LABEL_30:
          v18 = v23;
          goto LABEL_31;
        }

        v28 = [v20 UUIDString];
        sub_1000B926C(v2, 1014, @"copyPrimaryLink %@", v29, v30, v31, v32, v33, v28);

        v22 = 0;
LABEL_28:
        v23 = 0;
        goto LABEL_29;
      }

      v49 = sub_1000B9544();
      v50 = _NRLogIsLevelEnabled();

      if (v50)
      {
        v22 = sub_1000B9544();
        _NRLogWithArgs(v22, 17, "%s called with null nrUUID", "[NRLinkDirector copyAllLinksForNRUUID:]");
        goto LABEL_28;
      }
    }

    v23 = 0;
    goto LABEL_30;
  }

  return result;
}

id sub_10002C620(uint64_t a1)
{
  objc_opt_self();
  v1 = arc4random_uniform(0x1770u);
  v2 = v1 + 3000;
  if (v1 == -3000)
  {
    v7 = sub_100029784();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_100029784();
      _NRLogWithArgs(v9, 16, "%s%.30s:%-4d ABORTING: strict_malloc called with size 0", "", "+[NRLinkDirectorMessage testData]", 1088);
    }

    v10 = _os_log_pack_size();
    v11 = __error();
    v12 = _os_log_pack_fill(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, *v11, &_mh_execute_header, "%{public}s strict_malloc called with size 0");
    *v12 = 136446210;
    *(v12 + 4) = "+[NRLinkDirectorMessage testData]";
    goto LABEL_9;
  }

  v3 = malloc_type_malloc(v1 + 3000, 0xA4F982A5uLL);
  if (!v3)
  {
    while (1)
    {
      v13 = sub_100029784();
      v14 = _NRLogIsLevelEnabled();

      if (v14)
      {
        v15 = sub_100029784();
        _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", "", "+[NRLinkDirectorMessage testData]", 1088);
      }

      v16 = _os_log_pack_size();
      v17 = __error();
      v18 = _os_log_pack_fill(&v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16, *v17, &_mh_execute_header, "%{public}s strict allocator failed");
      *v18 = 136446210;
      *(v18 + 4) = "+[NRLinkDirectorMessage testData]";
LABEL_9:
      sub_100029784();
      _NRLogAbortWithPack();
    }
  }

  v4 = v3;
  arc4random_buf(v3, v2);
  v5 = [[NSData alloc] initWithBytes:v4 length:v2];
  free(v4);

  return v5;
}

uint64_t sub_10002C85C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_10002C620(NRLinkDirectorMessage);
  objc_opt_self();
  v4 = arc4random_uniform(0x100u);
  v5 = arc4random_uniform(0x100u);
  v6 = arc4random_uniform(0x100u);
  v7 = [[NSString alloc] initWithFormat:@"%u.%u.%u.%u", arc4random_uniform(0x100u), v6, v5, v4];
  objc_opt_self();
  if (qword_100228E88 != -1)
  {
    dispatch_once(&qword_100228E88, &stru_1001FA180);
  }

  v8 = qword_100228E80;
  if (v8)
  {
    v9 = @"62743";
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v118 = [NWAddressEndpoint endpointWithHostname:v7 port:v10];

  objc_opt_self();
  v11 = arc4random_uniform(0x100u);
  v12 = arc4random_uniform(0x100u);
  v13 = arc4random_uniform(0x100u);
  v14 = [[NSString alloc] initWithFormat:@"fd74::%u.%u.%u.%u", arc4random_uniform(0x100u), v13, v12, v11];
  objc_opt_self();
  if (qword_100228E88 != -1)
  {
    dispatch_once(&qword_100228E88, &stru_1001FA180);
  }

  v15 = qword_100228E80;
  if (v15)
  {
    v16 = @"62743";
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v117 = [NWAddressEndpoint endpointWithHostname:v14 port:v17];

  v18 = arc4random();
  v19 = v3;
  objc_opt_self();
  v115 = objc_alloc_init(NSMutableArray);
  v20 = [v19 bytes];
  v114 = v19;
  v21 = [v19 length];
  v22 = 0;
  do
  {
    do
    {
      v24 = arc4random() % 0x64;
    }

    while (!v24);
    v25 = v24 + v22;
    if (v24 + v22 <= v21)
    {
      v26 = v24;
    }

    else
    {
      v26 = v21 - v22;
    }

    if (v26)
    {
      v23 = [[NSData alloc] initWithBytes:v20 length:v26];
      [v115 addObject:v23];
    }

    else
    {
      v26 = 0;
    }

    v20 += v26;
    v22 = v25;
  }

  while (v25 <= v21);

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v27 = [v115 countByEnumeratingWithState:&v123 objects:v132 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v124;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v124 != v29)
        {
          objc_enumerationMutation(v115);
        }

        sub_10002AB38(v2, 255, *(*(&v123 + 1) + 8 * i));
      }

      v28 = [v115 countByEnumeratingWithState:&v123 objects:v132 count:16];
    }

    while (v28);
  }

  objc_opt_self();
  if (qword_100228E88 != -1)
  {
    dispatch_once(&qword_100228E88, &stru_1001FA180);
  }

  v31 = qword_100228E80;
  v32 = v31;
  if (v2)
  {
    if (v31)
    {
      v33 = 62743;
    }

    else
    {
      v33 = 0;
    }

    sub_10002B038(v2, v118, v33, 0);
  }

  objc_opt_self();
  if (qword_100228E88 != -1)
  {
    dispatch_once(&qword_100228E88, &stru_1001FA180);
  }

  v34 = v18 & 1;
  v35 = qword_100228E80;
  v36 = v35;
  v108 = v34;
  if (v2)
  {
    if (v35)
    {
      v37 = 62743;
    }

    else
    {
      v37 = 0;
    }

    sub_10002B038(v2, v117, v37, 0);

    v133[0] = v34 ^ 1;
    v38 = [[NSData alloc] initWithBytes:v133 length:1];
    sub_10002AB38(v2, 5, v38);

    sub_10002AB38(v2, 1, 0);
    v112 = *(v2 + 10);
    v111 = sub_100029538(v2);
    v39 = sub_10002BFC8(v2);
    v40 = v2[4];
  }

  else
  {

    v111 = 0;
    v112 = 0;
    v39 = 0;
    v40 = 0;
  }

  v105 = v39;
  v41 = sub_10002A684(NRLinkDirectorMessage, v39, v40);
  v42 = sub_10002B210(v41, 255);
  objc_opt_self();
  v43 = objc_alloc_init(NSMutableData);
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v44 = v42;
  v45 = [v44 countByEnumeratingWithState:&v127 objects:v133 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v128;
    do
    {
      for (j = 0; j != v46; j = j + 1)
      {
        if (*v128 != v47)
        {
          objc_enumerationMutation(v44);
        }

        [v43 appendData:*(*(&v127 + 1) + 8 * j)];
      }

      v46 = [v44 countByEnumeratingWithState:&v127 objects:v133 count:16];
    }

    while (v46);
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v49 = qword_1002290B8;
  v50 = v49;
  if (v49)
  {
    v51 = v49[6];
    v52 = v51;
    if (v51 && (v53 = *(v51 + 13)) != 0)
    {
      v54 = *(v53 + 12);
    }

    else
    {
      v54 = 0;
    }
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  v104 = v44;
  if (v41)
  {
    v55 = sub_10002BDA4(v41, v54, 0);
  }

  else
  {
    v55 = 0;
  }

  v113 = v41;
  v106 = v2;

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v56 = v55;
  v57 = [v56 countByEnumeratingWithState:&v119 objects:v131 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = 0;
    v60 = 0;
    v116 = 0;
    v61 = 0;
    v62 = *v120;
    while (1)
    {
      for (k = 0; k != v58; k = k + 1)
      {
        if (*v120 != v62)
        {
          objc_enumerationMutation(v56);
        }

        v66 = *(*(&v119 + 1) + 8 * k);
        if ([v66 addressFamily] == 2)
        {
          v61 = [v66 isEqual:v118];
          v64 = v60;
          v60 = v66;
LABEL_61:
          v65 = v66;

          continue;
        }

        if ([v66 addressFamily] == 30)
        {
          v116 = [v66 isEqual:v117];
          v64 = v59;
          v59 = v66;
          goto LABEL_61;
        }
      }

      v58 = [v56 countByEnumeratingWithState:&v119 objects:v131 count:16];
      if (!v58)
      {
        goto LABEL_69;
      }
    }
  }

  v59 = 0;
  v60 = 0;
  v116 = 0;
  v61 = 0;
LABEL_69:

  v67 = v113;
  if (v113)
  {
    v68 = sub_10002B210(v113, 5);
    v69 = [v68 firstObject];

    if (v69 && [v69 length])
    {
      v133[0] = 0;
      [v69 getBytes:v133 length:1];
      if (v133[0])
      {
        v70 = &__kCFBooleanTrue;
      }

      else
      {
        v70 = &__kCFBooleanFalse;
      }
    }

    else
    {
      v70 = 0;
    }
  }

  else
  {
    v70 = 0;
  }

  v110 = [v70 BOOLValue];

  v109 = v108 ^ 1u;
  if (v113)
  {
    v71 = *(v113 + 10);
    v72 = sub_100029538(v113);
    v73 = sub_10002B210(v113, 1);
    v74 = [v73 firstObject];

    v67 = v74 != 0;
  }

  else
  {
    v72 = 0;
    v71 = 0;
  }

  v75 = [v43 isEqualToData:v114];
  v76 = v75;
  v78 = v71 == v112 && v72 == v111;
  v79 = v78 & v75 & v61 & v116 & v67;
  if (v109 != v110)
  {
    v79 = 0;
  }

  v107 = v79;
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

    v80 = "FAILED to";
    if (v107)
    {
      v80 = "Successfully";
    }

    v103 = v80;
    if (v71 == v112)
    {
      v81 = "Matched";
    }

    else
    {
      v81 = "Not matched";
    }

    v101 = v81;
    if (v72 == v111)
    {
      v82 = "Matched";
    }

    else
    {
      v82 = "Not matched";
    }

    v99 = v72;
    v100 = v82;
    if (v76)
    {
      v83 = "Matched";
    }

    else
    {
      v83 = "Not matched";
    }

    v98 = v83;
    v102 = qword_100228F58;
    v97 = [v114 length];
    v84 = [v43 length];
    if (v61)
    {
      v85 = "Matched";
    }

    else
    {
      v85 = "Not matched";
    }

    v95 = v85;
    v96 = v84;
    v94 = [v118 hostname];
    v86 = [v60 hostname];
    if (v116)
    {
      v87 = "Matched";
    }

    else
    {
      v87 = "Not matched";
    }

    v88 = [v117 hostname];
    v89 = [v59 hostname];
    v90 = v89;
    if (v109 == v110)
    {
      v91 = "Matched";
    }

    else
    {
      v91 = "Not matched";
    }

    if (v67)
    {
      v92 = "Matched";
    }

    else
    {
      v92 = "Not matched";
    }

    _NRLogWithArgs(v102, 0, "%s%.30s:%-4d %s verified NRLinkDirectorMessage: vers=%s(%u/%u), id=%s(%llu/%llu),data=%s(%zu/%zu), ipv4=%s(%@/%@), ipv6=%s(%@/%@), preferWiFi=%s(%u/%u), hello=%s", "", "+[NRLinkDirectorMessage testMessage:]", 1228, v103, v101, v112, v71, v100, v111, v99, v98, v97, v96, v95, v94, v86, v87, v88, v89, v91, v109, v110, v92);
  }

  return v107;
}

void sub_10002D380(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_self();
  objc_opt_self();
  if (qword_100228F50 != -1)
  {
    dispatch_once(&qword_100228F50, &stru_1001FA740);
  }

  v2 = v4;
  if (qword_100228F48)
  {
    v3 = [*(qword_100228F48 + 16) objectForKeyedSubscript:v4];
    [v3 removeAllObjects];

    v2 = v4;
  }
}

void sub_10002D42C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

id sub_10002D6B4()
{
  if (qword_100228F70 != -1)
  {
    dispatch_once(&qword_100228F70, &stru_1001FA8E0);
  }

  v1 = qword_100228F68;

  return v1;
}

void sub_10002D708(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228F68;
  qword_100228F68 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10002DB64(id *a1)
{
  if (a1)
  {
    v2 = a1[3];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  dispatch_assert_queue_V2(v3);

  if (a1[8])
  {
    v4 = sub_10016CF44(NRDLocalDevice);
    if ([v4 count])
    {
      v5 = sub_100157378(v4);
      [a1 reportEvent:4009 details:v5];

      v6 = a1[8];
      v7 = a1[3];
      if (qword_1002292B0 != -1)
      {
        dispatch_once(&qword_1002292B0, &stru_1001FC490);
      }

      v8 = qword_1002292B8;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10002DD08;
      v11[3] = &unk_1001FCE28;
      v12 = v6;
      v13 = v4;
      v14 = v7;
      v15 = a1;
      v9 = v7;
      v10 = v6;
      dispatch_async(v8, v11);
    }

    else
    {
      [a1 reportEvent:4011];
      sub_10002DDAC(a1);
    }
  }
}

void sub_10002DD08(uint64_t a1)
{
  v2 = [*(a1 + 32) retrievePeripheralsWithIdentifiers:*(a1 + 40)];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002DFF8;
  v5[3] = &unk_1001FD060;
  v3 = *(a1 + 48);
  v5[4] = *(a1 + 56);
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, v5);
}

void sub_10002DDAC(uint64_t a1)
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

  if (*(a1 + 64))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = *(a1 + 72);
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          sub_10002DF24(a1, v9);
          v10 = [v9 description];
          [a1 reportEvent:4008 details:v10];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v11 = *(a1 + 72);
    *(a1 + 72) = 0;
  }
}

void sub_10002DF24(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7 = v3;
    v4 = a1[3];
    dispatch_assert_queue_V2(v4);

    v3 = v7;
    if (v7)
    {
      if (a1[8])
      {
        if ([v7 state] == 1 || (v5 = objc_msgSend(v7, "state") == 2, v3 = v7, v5))
        {
          v6 = [v7 description];
          [a1 reportEvent:4003 details:v6];

          [a1[8] cancelPeripheralConnection:v7];
          v3 = v7;
        }
      }
    }
  }
}

void sub_10002DFF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[3];
  }

  v3 = v2;
  dispatch_assert_queue_V2(v3);

  v4 = sub_10016CF44(NRDLocalDevice);
  v5 = *(a1 + 32);
  v6 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  if (v5)
  {
    v5 = v5[9];
  }

  v7 = v5;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v52;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v52 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v51 + 1) + 8 * i);
        v13 = [v12 identifier];
        v14 = [v4 containsObject:v13];

        if ((v14 & 1) == 0)
        {
          sub_10002DF24(*(a1 + 32), v12);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v9);
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    objc_storeStrong(v15 + 9, *(a1 + 40));
    v16 = *(a1 + 32);
    if (v16)
    {
      v15 = v16[9];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v15;
  v18 = sub_100157378(v17);
  [v16 reportEvent:4010 details:v18];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v19 = *(a1 + 32);
  if (v19)
  {
    v19 = v19[9];
  }

  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (!v21)
  {

LABEL_50:
    v42 = *(a1 + 32);
    if (v42)
    {
      v43 = v6[48];
      v44 = *(v42 + v43);
      *(v42 + v43) = 0;
    }

    goto LABEL_52;
  }

  v22 = v21;
  v45 = v7;
  v46 = 0;
  v23 = *v48;
  do
  {
    for (j = 0; j != v22; j = j + 1)
    {
      if (*v48 != v23)
      {
        objc_enumerationMutation(v20);
      }

      v29 = *(*(&v47 + 1) + 8 * j);
      v30 = [v29 identifier];
      v31 = [v4 containsObject:v30];

      if (v31)
      {
        v32 = [v29 identifier];
        objc_opt_self();
        v28 = sub_100168BE8(NRDLocalDevice, v32, 1);

        if (v28)
        {
          v33 = v28[18];
        }

        else
        {
          v33 = 0;
        }

        v34 = v33;
        v35 = [v34 bluetoothRole];

        if (v35 == 1)
        {
          if ([v29 state] != 1 && objc_msgSend(v29, "state") != 2)
          {
            v36 = *(a1 + 32);
            v37 = [v29 description];
            [v36 reportEvent:4000 details:v37];

            v38 = *(a1 + 32);
            if (v38)
            {
              v39 = *(v38 + 64);
            }

            else
            {
              v39 = 0;
            }

            [v39 connectPeripheral:v29 options:0];
            v40 = +[NSDate date];
            v41 = *(a1 + 32);
            if (v41)
            {
              objc_storeStrong((v41 + 160), v40);
            }
          }

          v46 = 1;
        }
      }

      else
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228F70 != -1)
          {
            dispatch_once(&qword_100228F70, &stru_1001FA8E0);
          }

          v25 = qword_100228F68;
          v26 = [v29 description];
          _NRLogWithArgs(v25, 0, "%s%.30s:%-4d Skipping over peripheral %@, as it is no longer enabled", "", "[NRLinkManagerBluetooth connectToPeripherals]_block_invoke_2", 662, v26);
        }

        v27 = *(a1 + 32);
        v28 = [v29 description];
        [v27 reportEvent:4006 details:v28];
      }
    }

    v22 = [v20 countByEnumeratingWithState:&v47 objects:v55 count:16];
  }

  while (v22);

  v6 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  v7 = v45;
  if ((v46 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_52:
}

void sub_10002E6F4(uint64_t a1)
{
  if (a1)
  {
    v4 = *(a1 + 24);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  dispatch_assert_queue_V2(v5);

  if (!*(a1 + 64) || !sub_10002F1A8(a1))
  {
    return;
  }

  v14 = *(a1 + 88);
  v6 = [v14 objectForKeyedSubscript:&off_100209AA0];
  v7 = v6;
  if (v6 && *(v6 + 8) == 2)
  {
    v8 = 0;
LABEL_11:
    v10 = [*(a1 + 40) count];
    if (v8)
    {
    }

    if (!v10)
    {
      v11 = *(a1 + 104) + 1;
      *(a1 + 104) = v11;
      v12 = dispatch_time(0x8000000000000000, 5000000000);
      v13 = *(a1 + 24);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002F2D4;
      block[3] = &unk_1001FBAE8;
      block[4] = a1;
      block[5] = v11;
      dispatch_after(v12, v13, block);
    }

    return;
  }

  v1 = *(a1 + 96);
  v9 = [v1 objectForKeyedSubscript:&off_100209AA0];
  v2 = v9;
  if (v9 && v9[8] == 2)
  {
    v8 = 1;
    goto LABEL_11;
  }
}

void sub_10002E8E0(id *a1, void *a2)
{
  v3 = a2;
  if (a1 && [a1[9] containsObject:v3])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v4 = sub_10016CA28(NRDLocalDevice);
    v5 = [v4 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (!v5)
    {
LABEL_25:

      goto LABEL_26;
    }

    v6 = v5;
    v7 = *v34;
LABEL_6:
    v8 = 0;
    while (1)
    {
      if (*v34 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = sub_100163A30(NRDLocalDevice, *(*(&v33 + 1) + 8 * v8));
      v10 = v9;
      v11 = v9 ? *(v9 + 32) : 0;
      v12 = v11;
      v13 = v3;
      v14 = [v3 identifier];
      v15 = [v12 isEqual:v14];

      if (v15)
      {
        if (sub_10002EC6C(a1, v10))
        {
          v16 = v10 ? *(v10 + 144) : 0;
          v17 = v16;
          v18 = [v17 bluetoothRole];

          if (v18 == 1)
          {
            break;
          }
        }
      }

      v8 = v8 + 1;
      v3 = v13;
      if (v6 == v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (!v6)
        {
          goto LABEL_25;
        }

        goto LABEL_6;
      }
    }

    if (v10)
    {
      v19 = *(v10 + 18);
      v20 = *(v10 + 48);

      v3 = v13;
      if (v19)
      {
        v21 = a1[8];
        v22 = [v21 sharedPairingAgent];

        v23 = a1[3];
        if (qword_1002292B0 != -1)
        {
          dispatch_once(&qword_1002292B0, &stru_1001FC490);
        }

        v24 = qword_1002292B8;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10002EE18;
        block[3] = &unk_1001FA870;
        v27 = v22;
        v32 = (v20 & 8) != 0;
        v28 = v13;
        v29 = v23;
        v30 = a1;
        v31 = v19;
        v25 = v23;
        v4 = v22;
        dispatch_async(v24, block);

        goto LABEL_25;
      }
    }

    else
    {

      v3 = v13;
    }

    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      _NRLogWithArgs(qword_100228F68, 16, "%s%.30s:%-4d failed to open L2CAP channel for invalid PSM", "", "[NRLinkManagerBluetooth openL2CAPChannelIfNeeded:]", 3150);
    }
  }

LABEL_26:
}

uint64_t sub_10002EC6C(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v14 = sub_10002D6B4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_3;
    }

    v8 = sub_10002D6B4();
    _NRLogWithArgs(v8, 17, "%s called with null localDevice", "[NRLinkManagerBluetooth deviceAllowsCBL2CAPChannels:]");
    goto LABEL_13;
  }

  if ((sub_100169428(v3) & 1) == 0)
  {
    v6 = v4[3];
    v5 = [a1 shouldCreateLinkForNRUUID:v6];

    if (!v5)
    {
      goto LABEL_15;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v4[18];
    v8 = [v7 allowedLinkSubtypes];

    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v16 + 1) + 8 * i) unsignedShortValue] == 121)
          {

            v5 = 1;
            goto LABEL_15;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

LABEL_3:
  v5 = 0;
LABEL_15:

  return v5;
}

void sub_10002EE18(uint64_t a1)
{
  v2 = [*(a1 + 32) retrievePairedPeers];
  v3 = v2;
  if (*(a1 + 66))
  {
LABEL_17:
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002F070;
    block[3] = &unk_1001FA848;
    v12 = *(a1 + 48);
    v13 = *(a1 + 40);
    v14 = *(a1 + 56);
    v16 = v13;
    v17 = v14;
    v18 = *(a1 + 64);
    dispatch_async(v12, block);
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v19 + 1) + 8 * i) identifier];
          v10 = [*(a1 + 40) identifier];
          v11 = [v9 isEqual:v10];

          if (v11)
          {

            goto LABEL_17;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d not opening L2CAP channel to unpaired peripheral %@", "", "[NRLinkManagerBluetooth openL2CAPChannelIfNeeded:]_block_invoke", 3170, *(a1 + 40));
    }
  }
}

id sub_10002F070(uint64_t a1)
{
  if ([*(a1 + 32) state] == 2)
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) description];
    [v2 reportEvent:4016 details:v3];

    [*(a1 + 32) setDelegate:*(a1 + 40)];
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);

    return [v4 openPacketL2CAPChannel:v5 withIncomingMTU:1550 options:&__NSDictionary0__struct];
  }

  else
  {
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      return _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d not opening L2CAP channel to unconnected peripheral %@", "", "[NRLinkManagerBluetooth openL2CAPChannelIfNeeded:]_block_invoke_2", 3175, *(a1 + 32));
    }
  }

  return result;
}

uint64_t sub_10002F1A8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  dispatch_assert_queue_V2(v2);

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = *(a1 + 72);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) state] == 2)
        {
          v4 = 1;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

void sub_10002F2D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (v3)
  {
    v4 = *(a1 + 40) == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || !sub_10002F1A8(v2))
  {
    return;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[11];
  }

  v24 = v5;
  v6 = [v24 objectForKeyedSubscript:&off_100209AA0];
  v7 = v6;
  if (v6 && *(v6 + 8) == 2)
  {
    goto LABEL_16;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = v8[12];
  }

  v9 = v8;
  v10 = [v9 objectForKeyedSubscript:&off_100209AA0];
  v11 = v10;
  if (v10 && v10[8] == 2)
  {

LABEL_16:

    return;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = *(v12 + 40);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v13 count];

  if (!v14)
  {
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"EnableNRBTLMBackwardsCompatibility", @"Apple Global Domain", &keyExistsAndHasValidFormat);
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d Allows switching endpoint types: %d", "", "[NRLinkManagerBluetooth startBluetoothWatchdog]_block_invoke", 787, AppIntegerValue == 1);
    }

    if (AppIntegerValue == 1)
    {
      v16 = *(a1 + 32);
      v17 = "LEGACY";
      if (v16)
      {
        v18 = *(v16 + 37);
        *(v16 + 37) = v18 ^ 1;
        if (v18)
        {
          v17 = "NEW";
        }
      }

      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        v19 = *(a1 + 32);
        v20 = "LEGACY";
        if (v19 && *(v19 + 37))
        {
          v20 = "NEW";
        }

        _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d Switching endpoint types: %s -> %s", "", "[NRLinkManagerBluetooth startBluetoothWatchdog]_block_invoke", 794, v17, v20);
      }

      sub_10002F748(*(a1 + 32), 0);
    }

    *(*(a1 + 32) + 104) = 0;
    [*(a1 + 32) reportEvent:4900];
    v21 = *(a1 + 32);
    if (*(v21 + 36) == 1)
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        _NRLogWithArgs(qword_100228F68, 16, "%s%.30s:%-4d no BT callbacks received for pipe connect, sim crash already generated", "", "[NRLinkManagerBluetooth startBluetoothWatchdog]_block_invoke", 802);
      }
    }

    else
    {
      *(v21 + 36) = 1;
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        _NRLogWithArgs(qword_100228F68, 17, "no BT callback received for pipe connect even after %llus of pipe registration", 5);
      }

      v22 = objc_alloc_init(NRAnalyticsLinkManagerBluetooth);
      v23 = v22;
      if (v22)
      {
        v22->_noBTPipeCallbacks = 1;
      }

      [(NRAnalyticsLinkManagerBluetooth *)v22 submit];
    }
  }
}

void sub_10002F748(char *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2;
    v4 = &OBJC_IVAR___NRLinkManagerBluetooth__pipeRegistrations;
    if (a2)
    {
      v4 = &OBJC_IVAR___NRLinkManagerBluetooth__p2pPipeRegistrations;
    }

    v5 = *&a1[*v4];
    v6 = [NSNumber numberWithInteger:1];
    v9 = [v5 objectForKeyedSubscript:v6];

    v7 = v9;
    if (v9 && (*(v9 + 9) & 8) == 0)
    {
      if (v2)
      {
        v8 = @"p2p";
      }

      else
      {
        v8 = 0;
      }

      [a1 reportEvent:4214 details:v8];
      *(v9 + 9) = 8;
      sub_10002F840(a1, 1, v2);
      v7 = v9;
    }
  }
}

void sub_10002F840(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  dispatch_assert_queue_V2(v7);

  if (a2 == 3)
  {
    if (a3)
    {
      v12 = *(a1 + 96);
      goto LABEL_19;
    }

    v23 = *(a1 + 88);
LABEL_33:
    v30 = v23;
    v31 = [NSNumber numberWithInteger:3];
    v32 = [v30 objectForKeyedSubscript:v31];

    v10 = v32;
    if (v32)
    {
      v32[9] &= ~2u;
      if (v32[8] - 3 >= 0xFFFFFFFE)
      {
        [a1 reportEvent:4206 detailsFormat:@"%s %s", "Isochronous", "pipe"];
        v11 = @"com.apple.terminusLink.datagram";
        goto LABEL_36;
      }
    }

    goto LABEL_37;
  }

  if (a2 == 2)
  {
    if (a3)
    {
      v8 = *(a1 + 96);
      v9 = [NSNumber numberWithInteger:2];
      v32 = [v8 objectForKeyedSubscript:v9];

      v10 = v32;
      if (v32)
      {
        v32[9] &= ~2u;
        if (v32[8] - 3 >= 0xFFFFFFFE)
        {
          [a1 reportEvent:4206 detailsFormat:@"%s %s", "High", "p2pPipe"];
          v11 = @"com.apple.terminusLink.urgent.p2p";
LABEL_36:
          [*(a1 + 48) unregisterEndpoint:v11];
          v10 = v32;
          v32[8] = 3;
          goto LABEL_37;
        }
      }
    }

    else
    {
      v21 = *(a1 + 88);
      v22 = [NSNumber numberWithInteger:2];
      v32 = [v21 objectForKeyedSubscript:v22];

      v10 = v32;
      if (v32)
      {
        v32[9] &= ~2u;
        if (v32[8] - 3 >= 0xFFFFFFFE)
        {
          [a1 reportEvent:4206 detailsFormat:@"%s %s", "High", "pipe"];
          v11 = @"com.apple.terminusLink.urgent";
          goto LABEL_36;
        }
      }
    }

    goto LABEL_37;
  }

  if (!a3)
  {
    v24 = *(a1 + 88);
    v25 = [NSNumber numberWithInteger:1];
    v26 = [v24 objectForKeyedSubscript:v25];

    if (v26)
    {
      v26[9] &= ~2u;
      if (v26[8] - 3 >= 0xFFFFFFFE)
      {
        [a1 reportEvent:4206 detailsFormat:@"%s %s", "Medium", "pipe"];
        [*(a1 + 48) unregisterEndpoint:@"com.apple.terminusLink"];
        v26[8] = 3;
      }
    }

    v27 = *(a1 + 88);
    v28 = [NSNumber numberWithInteger:2];
    v29 = [v27 objectForKeyedSubscript:v28];

    if (v29)
    {
      v29[9] &= ~2u;
      if (v29[8] - 3 >= 0xFFFFFFFE)
      {
        [a1 reportEvent:4206 detailsFormat:@"%s %s", "High", "pipe"];
        [*(a1 + 48) unregisterEndpoint:@"com.apple.terminusLink.urgent"];
        v29[8] = 3;
      }
    }

    v23 = *(a1 + 88);
    goto LABEL_33;
  }

  v13 = *(a1 + 96);
  v14 = [NSNumber numberWithInteger:1];
  v15 = [v13 objectForKeyedSubscript:v14];

  if (v15)
  {
    v15[9] &= ~2u;
    if (v15[8] - 3 >= 0xFFFFFFFE)
    {
      [a1 reportEvent:4206 detailsFormat:@"%s %s", "Medium", "p2pPipe"];
      [*(a1 + 48) unregisterEndpoint:@"com.apple.terminusLink.p2p"];
      v15[8] = 3;
    }
  }

  v16 = *(a1 + 96);
  v17 = [NSNumber numberWithInteger:2];
  v18 = [v16 objectForKeyedSubscript:v17];

  if (v18)
  {
    v18[9] &= ~2u;
    if (v18[8] - 3 >= 0xFFFFFFFE)
    {
      [a1 reportEvent:4206 detailsFormat:@"%s %s", "High", "p2pPipe"];
      [*(a1 + 48) unregisterEndpoint:@"com.apple.terminusLink.urgent.p2p"];
      v18[8] = 3;
    }
  }

  v12 = *(a1 + 96);
LABEL_19:
  v19 = v12;
  v20 = [NSNumber numberWithInteger:3];
  v32 = [v19 objectForKeyedSubscript:v20];

  v10 = v32;
  if (v32)
  {
    v32[9] &= ~2u;
    if (v32[8] - 3 >= 0xFFFFFFFE)
    {
      [a1 reportEvent:4206 detailsFormat:@"%s %s", "Isochronous", "p2pPipe"];
      v11 = @"com.apple.terminusLink.datagram.p2p";
      goto LABEL_36;
    }
  }

LABEL_37:
}

void sub_10002FEC4(uint64_t a1, unint64_t a2)
{
  if (!*(a1 + 64))
  {
    return;
  }

  if (a2 >= 6)
  {
    v4 = [[NSString alloc] initWithFormat:@"UnknownState(%lld)", a2];
  }

  else
  {
    v4 = *(&off_1001FA940 + a2);
  }

  [a1 reportEvent:4100 details:v4];

  if (a2 != 5)
  {
    if (a2 > 3)
    {
      return;
    }

    sub_10002DDAC(a1);

    goto LABEL_29;
  }

  if ((*(a1 + 35) & 1) == 0)
  {
    sub_10002DB64(a1);
  }

  sub_1000301F4(a1);
  if (!*(a1 + 64))
  {
    return;
  }

  if (![*(a1 + 216) count])
  {
LABEL_29:
    sub_100030530(a1);
    return;
  }

  if ([*(a1 + 64) state] == 5)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [*(a1 + 216) allValues];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if (v12)
          {
            if (![*(v12 + 8) count])
            {
              continue;
            }
          }

          else if (![0 count])
          {
            continue;
          }

          if (v12)
          {
            v11 = *(v12 + 8);
          }

          else
          {
            v11 = 0;
          }

          [v5 addObjectsFromArray:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d starting BT scans for services %@", "", "[NRLinkManagerBluetooth startScanningIfNeeded]", 2934, v5);
    }

    [*(a1 + 64) scanForPeripheralsWithServices:v5 options:0];
    *(a1 + 34) = 1;
  }
}

void sub_1000301F4(id *a1)
{
  v2 = sub_10016C6D8(NRDLocalDevice);
  if ([v2 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v14 = v2;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v4)
    {
      v5 = *v19;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v19 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v18 + 1) + 8 * i);
          v8 = a1[23];
          if ([v8 containsObject:v7])
          {
          }

          else
          {
            v9 = [a1[25] objectForKeyedSubscript:v7];
            v10 = v9 == 0;

            if (v10)
            {
              v11 = [a1[24] objectForKeyedSubscript:v7];
              v12 = [v11 unsignedIntegerValue];

              if (v12 < 0xA)
              {
                v13 = [NSNumber numberWithUnsignedInteger:v12 + 1];
                [a1[24] setObject:v13 forKeyedSubscript:v7];

                [a1[23] addObject:v7];
                objc_initWeak(&location, a1);
                v15[0] = _NSConcreteStackBlock;
                v15[1] = 3221225472;
                v15[2] = sub_100030668;
                v15[3] = &unk_1001FA7D0;
                objc_copyWeak(&v16, &location);
                v15[4] = v7;
                sub_10003074C(a1, v7, v15);
                objc_destroyWeak(&v16);
                objc_destroyWeak(&location);
              }

              else
              {
                if (qword_100228F70 != -1)
                {
                  dispatch_once(&qword_100228F70, &stru_1001FA8E0);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_100228F70 != -1)
                  {
                    dispatch_once(&qword_100228F70, &stru_1001FA8E0);
                  }

                  _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d Skipping pairing info update for %@ - exceeded max retries (%lu)", "", "[NRLinkManagerBluetooth updatePairingInfoIfNeeded]", 2991, v7, 10);
                }
              }
            }
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v4);
    }

    v2 = v14;
  }
}

void sub_100030510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

_BYTE *sub_100030530(_BYTE *result)
{
  if (*(result + 8))
  {
    v1 = result;
    if (result[34] == 1)
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d stopping BT scans", "", "[NRLinkManagerBluetooth stopScanningIfNeeded]", 2949);
      }

      v2 = *(v1 + 10);
      *(v1 + 10) = 0;

      v1[34] = 0;
      v3 = *(v1 + 8);

      return [v3 stopScan];
    }
  }

  return result;
}

void sub_100030668(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[3];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100031040;
    v11[3] = &unk_1001FCB20;
    v12 = v7;
    v9 = v5;
    v15 = a3;
    v10 = *(a1 + 32);
    v13 = v9;
    v14 = v10;
    dispatch_async(v8, v11);
  }
}

void sub_10003074C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v9 = a3;
  v10 = sub_100163B2C(NRDLocalDevice, v8, 0);
  if (v10)
  {
    v3 = v10;
    if (a1)
    {
      v11 = *(a1 + 24);
    }

    else
    {
      v11 = 0;
    }

    v4 = v11;
    v5 = v3[4];
    if (v5)
    {
      v12 = *(a1 + 64);
      if (v12)
      {
        objc_initWeak(&location, a1);
        if (qword_1002292B0 != -1)
        {
          dispatch_once(&qword_1002292B0, &stru_1001FC490);
        }

        v13 = qword_1002292B8;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100030B08;
        block[3] = &unk_1001FA820;
        objc_copyWeak(&v31, &location);
        v30 = v9;
        v26 = v8;
        v27 = v12;
        v28 = v5;
        v29 = v4;
        dispatch_async(v13, block);

        objc_destroyWeak(&v31);
        objc_destroyWeak(&location);
      }

      else
      {
        v14 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v16 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v16, 16, "%s%.30s:%-4d Central manager is nil", "", "[NRLinkManagerBluetooth updatePairingInfoForNRUUID:completionBlock:]", 3055);
        }

        if (v9)
        {
          (*(v9 + 2))(v9, v8, 0);
        }
      }

      goto LABEL_14;
    }
  }

  else
  {
    v17 = sub_10002D6B4();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
      v19 = sub_10002D6B4();
      _NRLogWithArgs(v19, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRLinkManagerBluetooth updatePairingInfoForNRUUID:completionBlock:]", 3038);
    }

    v8 = _os_log_pack_size();
    v9 = block - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = __error();
    v21 = _os_log_pack_fill(v9, v8, *v20, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v21 = 136446210;
    *(v21 + 4) = "[NRLinkManagerBluetooth updatePairingInfoForNRUUID:completionBlock:]";
    sub_10002D6B4();
    _NRLogAbortWithPack();
    __break(1u);
  }

  v22 = _NRCopyLogObjectForNRUUID();
  v23 = _NRLogIsLevelEnabled();

  if (v23)
  {
    v24 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v24, 17, "No Bluetooth UUID");
  }

  if (v9)
  {
    (*(v9 + 2))(v9, v8, 0);
  }

LABEL_14:
}

void sub_100030B08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = [*(a1 + 40) sharedPairingAgent];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 retrievePairedPeers];
      v6 = [v5 valueForKey:@"identifier"];
      if ([v6 containsObject:*(a1 + 48)])
      {
        v7 = *(a1 + 40);
        v34 = *(a1 + 48);
        v8 = [NSArray arrayWithObjects:&v34 count:1];
        v9 = [v7 retrievePeripheralsWithIdentifiers:v8];

        if ([v9 count])
        {
          v10 = [v9 firstObject];
          v11 = [*(a1 + 40) retrievePairingInfoForPeripheral:v10];
          if (v11)
          {
            v12 = *(a1 + 56);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100030F04;
            block[3] = &unk_1001FB588;
            v31 = *(a1 + 32);
            v32 = v11;
            v33 = *(a1 + 64);
            dispatch_async(v12, block);
          }

          else
          {
            v26 = _NRCopyLogObjectForNRUUID();
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              v28 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v28, 16, "%s%.30s:%-4d Failed to retrieve pairing info for peripheral: %@", "", "[NRLinkManagerBluetooth updatePairingInfoForNRUUID:completionBlock:]_block_invoke", 3100, v10);
            }

            v29 = *(a1 + 64);
            if (v29)
            {
              (*(v29 + 16))(v29, *(a1 + 32), 0);
            }
          }
        }

        else
        {
          v22 = _NRCopyLogObjectForNRUUID();
          v23 = _NRLogIsLevelEnabled();

          if (v23)
          {
            v24 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v24, 16, "%s%.30s:%-4d Failed to retrieve peripheral for %@", "", "[NRLinkManagerBluetooth updatePairingInfoForNRUUID:completionBlock:]_block_invoke", 3092, *(a1 + 48));
          }

          v25 = *(a1 + 64);
          if (v25)
          {
            (*(v25 + 16))(v25, *(a1 + 32), 0);
          }
        }
      }

      else
      {
        v18 = _NRCopyLogObjectForNRUUID();
        v19 = _NRLogIsLevelEnabled();

        if (v19)
        {
          v20 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v20, 16, "%s%.30s:%-4d bluetoothUUID: %@ not found in pairedPeersBTUUIDs:%@", "", "[NRLinkManagerBluetooth updatePairingInfoForNRUUID:completionBlock:]_block_invoke", 3085, *(a1 + 48), v6);
        }

        v21 = *(a1 + 64);
        if (v21)
        {
          (*(v21 + 16))(v21, *(a1 + 32), 0);
        }
      }
    }

    else
    {
      v14 = _NRCopyLogObjectForNRUUID();
      v15 = _NRLogIsLevelEnabled();

      if (v15)
      {
        v16 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v16, 16, "%s%.30s:%-4d Pairing agent is nil", "", "[NRLinkManagerBluetooth updatePairingInfoForNRUUID:completionBlock:]_block_invoke", 3073);
      }

      v17 = *(a1 + 64);
      if (v17)
      {
        (*(v17 + 16))(v17, *(a1 + 32), 0);
      }
    }
  }

  else
  {
    v13 = *(a1 + 64);
    if (v13)
    {
      (*(v13 + 16))(v13, *(a1 + 32), 0);
    }
  }
}

void sub_100030F04(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100030FC0;
  v4[3] = &unk_1001FA7F8;
  v6 = *(a1 + 48);
  v5 = *(a1 + 32);
  sub_100174BBC(NRDLocalDevice, v2, v3, v4);
}

uint64_t sub_100030FC0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = v5;
  if (a3)
  {
    sub_100172424(NRDLocalDevice, v5);
    v5 = v8;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v6 = (*(v6 + 16))(v6, *(a1 + 32), a3);
    v5 = v8;
  }

  return _objc_release_x1(v6, v5);
}

void sub_100031040(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 184);
  }

  else
  {
    v3 = 0;
  }

  [v3 removeObject:*(a1 + 40)];
  if (*(a1 + 56) == 1)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 192);
    }

    else
    {
      v5 = 0;
    }

    [v5 setObject:0 forKeyedSubscript:*(a1 + 48)];
  }

  else
  {
    objc_initWeak(&location, *(a1 + 32));
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100031574;
    v29[3] = &unk_1001FC730;
    objc_copyWeak(&v30, &location);
    v8 = v7;
    v9 = v29;
    if (v6)
    {
      v10 = v6[3];
      dispatch_assert_queue_V2(v10);

      if (v8)
      {
        if (!v6[25])
        {
          v11 = objc_alloc_init(NSMutableDictionary);
          v12 = v6[25];
          v6[25] = v11;
        }

        if (!v6[26])
        {
          v13 = objc_alloc_init(NSMutableDictionary);
          v14 = v6[26];
          v6[26] = v13;
        }

        v15 = [NSNumber numberWithUnsignedLongLong:nr_continuous_time()];
        [v6[25] setObject:v15 forKeyedSubscript:v8];

        v16 = objc_retainBlock(v9);
        [v6[26] setObject:v16 forKeyedSubscript:v8];

        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228F70 != -1)
          {
            dispatch_once(&qword_100228F70, &stru_1001FA8E0);
          }

          _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d Added %@ to quarantine", "", "[NRLinkManagerBluetooth addNRUUIDToUpdatePairingInfoQuarantine:completionBlock:]", 1037, v8);
        }

        v17 = v6[3];
        dispatch_assert_queue_V2(v17);

        if ([v6[25] count] && !v6[18])
        {
          v18 = v6[3];
          v19 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v18);

          dispatch_source_set_timer(v19, 0x8000000000000000, 0xDF8475800uLL, 0x12A05F200uLL);
          objc_initWeak(from, v6);
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_100037C64;
          handler[3] = &unk_1001FB8D8;
          objc_copyWeak(&v35, from);
          v20 = v19;
          v33 = v20;
          v34 = v6;
          dispatch_source_set_event_handler(v20, handler);
          dispatch_resume(v20);
          objc_storeStrong(v6 + 18, v19);
          if (qword_100228F70 != -1)
          {
            dispatch_once(&qword_100228F70, &stru_1001FA8E0);
          }

          v21 = qword_100228F68;
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            if (qword_100228F70 != -1)
            {
              dispatch_once(&qword_100228F70, &stru_1001FA8E0);
            }

            v23 = qword_100228F68;
            v24 = v6[25];
            _NRLogWithArgs(v23, 0, "%s%.30s:%-4d Started quarantine timer for %lu devices", "", "-[NRLinkManagerBluetooth startUpdatePairingInfoQuarantineTimerIfNeeded]", 1105, [v24 count]);
          }

          objc_destroyWeak(&v35);
          objc_destroyWeak(from);
        }
      }

      else
      {
        v26 = sub_10002D6B4();
        v27 = _NRLogIsLevelEnabled();

        if (v27)
        {
          v28 = sub_10002D6B4();
          _NRLogWithArgs(v28, 17, "%s called with null nrUUID", "[NRLinkManagerBluetooth addNRUUIDToUpdatePairingInfoQuarantine:completionBlock:]");
        }
      }
    }

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  v25 = *(a1 + 32);
  if (v25)
  {
    if ([*(v25 + 184) count])
    {
      return;
    }

    goto LABEL_31;
  }

  if (![0 count])
  {
LABEL_31:
    sub_1000315B8(*(a1 + 32));
  }
}

void sub_100031538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak((v26 - 112));
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100031574(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    sub_1000301F4(WeakRetained);
    WeakRetained = v2;
  }
}

void sub_1000315B8(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = *(a1 + 24);
    dispatch_assert_queue_V2(v2);

    sub_10003192C(v1);
    v3 = [*(v1 + 40) copy];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v3;
    p_vtable = NRSCDInterfaceConfig.vtable;
    v33 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v33)
    {
      v5 = *v35;
      v6 = NRSCDInterfaceConfig.vtable;
      v7 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      v31 = *v35;
      do
      {
        for (i = 0; i != v33; i = i + 1)
        {
          if (*v35 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          if (v11)
          {
            v12 = *(v11 + 391);
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;
          objc_opt_self();
          v14 = sub_100168BE8((v6 + 37), v13, 1);

          WeakRetained = objc_loadWeakRetained((v1 + v7[56]));
          if (!v14)
          {
            [v11 cancelWithReason:{@"Device has been disabled %@", 0}];
            nrUUID = 0;
            goto LABEL_7;
          }

          if (v14->_databaseFlags & 2) == 0 || (v16 = objc_loadWeakRetained((v1 + 16)), v17 = v1, v18 = p_vtable, v19 = v16, [v11 nrUUID], v20 = v7, v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v19, "perpetualStandaloneMeadowEnabledForNRUUID:", v21), v21, v7 = v20, v19, p_vtable = v18, v1 = v17, v5 = v31, v6 = (NRSCDInterfaceConfig + 24), (v22))
          {
            [v11 cancelWithReason:v14];
            nrUUID = v14->_nrUUID;
LABEL_7:
            v10 = nrUUID;
            [WeakRetained pipeDidConnectForNRUUID:0 nrUUID:v10];
          }
        }

        v33 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v33);
    }

    v23 = *(v1 + 48);
    if (v23)
    {
      sub_100032164(v1, [v23 state]);
    }

    v24 = *(v1 + 64);
    if (v24)
    {
      sub_10002FEC4(v1, [v24 state]);
    }

    v25 = *(v1 + 56);
    if (v25)
    {
      sub_100032610(v1, [v25 state]);
    }

    v26 = sub_10016CA28((p_vtable + 37));
    if (![v26 count] && !objc_msgSend(*(v1 + 176), "count"))
    {
      if (*(v1 + 64))
      {
        sub_10002DDAC(v1);
        [*(v1 + 64) setDelegate:0];
        v28 = *(v1 + 64);
        *(v1 + 64) = 0;
      }

      v29 = *(v1 + 72);
      *(v1 + 72) = 0;

      sub_1000327B8(v1);
      sub_100032A1C(v1);
      v30 = *(v1 + 152);
      *(v1 + 152) = 0;
    }

    sub_100032B28(v1, v27);
  }
}

void sub_10003192C(uint64_t a1)
{
  v2 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  *(a1 + 39) = 0;
  v3 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  *(a1 + 38) = 0;
  v4 = sub_10016CA28(NRDLocalDevice);
  if (![v4 count] && !objc_msgSend(*(a1 + 176), "count"))
  {
    goto LABEL_85;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (!v6)
  {

    v31 = 0;
    goto LABEL_46;
  }

  v7 = v6;
  v52 = v4;
  v53 = 0;
  v8 = *v55;
  while (2)
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v55 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v54 + 1) + 8 * i);
      v11 = sub_100163A30(NRDLocalDevice, v10);
      if (a1)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 16));
      }

      else
      {
        WeakRetained = 0;
      }

      v13 = [WeakRetained perpetualStandaloneMeadowEnabledForNRUUID:v10];

      if (!v13)
      {
        if (v11)
        {
          v14 = v11[18];
          if (v14)
          {
            v15 = v14;
            v16 = v11[18];
            if ([v16 bluetoothEndpointType] == 1)
            {
            }

            else
            {
              v17 = v11[18];
              v18 = [v17 bluetoothEndpointType];

              if (v18 != 2)
              {
                v28 = v11[18];
                v29 = [v28 bluetoothEndpointType];

                if (v29 != 3)
                {
                  goto LABEL_28;
                }

                v30 = sub_10003615C(a1, v11);
                v20 = &OBJC_IVAR___NRLinkManagerBluetooth__hasEnabledDevicesUsingP2P;
                if (!v30)
                {
                  goto LABEL_28;
                }

LABEL_26:
                *(a1 + *v20) = 1;
LABEL_27:
                if (!v11)
                {
                  v21 = 0;
LABEL_29:
                  v22 = v21;
                  v23 = [v22 bluetoothRole];

                  if (v23 == 1)
                  {
                    BYTE4(v53) = 1;
                  }

                  else
                  {
                    if (v11)
                    {
                      v24 = v11[18];
                    }

                    else
                    {
                      v24 = 0;
                    }

                    v25 = v24;
                    v26 = [v25 bluetoothRole];

                    if (v26 == 2)
                    {
                      LOBYTE(v53) = 1;
                    }

                    else
                    {
                      v27 = sub_10013FF60(v11);
                      LOBYTE(v53) = (v27 == 2) | v53;
                      BYTE4(v53) |= v27 != 2;
                    }
                  }

                  goto LABEL_8;
                }

LABEL_28:
                v21 = v11[18];
                goto LABEL_29;
              }
            }
          }
        }

        v19 = sub_10003615C(a1, v11);
        v20 = &OBJC_IVAR___NRLinkManagerBluetooth__hasEnabledDevicesUsingClientServer;
        if ((v19 & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d Deferring creating link for %@ as device is in perpetual standalone Meadow mode", "", "[NRLinkManagerBluetooth setup]", 536, v11);
      }

LABEL_8:
    }

    v7 = [v5 countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

  if ((v53 & 0x100000000) != 0)
  {
    *(a1 + 35) = 0;
    v4 = v52;
    v3 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    v2 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    v31 = v53;
    goto LABEL_49;
  }

  v4 = v52;
  v3 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  v2 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  v31 = v53;
LABEL_46:
  v32 = sub_10016C6D8(NRDLocalDevice);
  if ([v32 count])
  {
    *(a1 + 35) = 1;

    goto LABEL_49;
  }

  *(a1 + 35) = 0;

  if (![*(a1 + 216) count])
  {
    if (*(a1 + 64))
    {
      sub_10002DDAC(a1);
      [*(a1 + 64) setDelegate:0];
      v38 = *(a1 + 64);
      *(a1 + 64) = 0;
    }

    v39 = *(a1 + 72);
    *(a1 + 72) = 0;

    if ((v31 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_66;
  }

LABEL_49:
  if (!*(a1 + 64))
  {
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d initializing CBCentralManager", "", "[NRLinkManagerBluetooth setup]", 591);
    }

    v33 = [CBCentralManager alloc];
    v34 = *(a1 + 24);
    v60 = CBCentralManagerOptionShowPowerAlertKey;
    v61 = &__kCFBooleanTrue;
    v35 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    v36 = [v33 initWithDelegate:a1 queue:v34 options:v35];
    v37 = *(a1 + 64);
    *(a1 + 64) = v36;

    if ((v31 & 1) == 0)
    {
      goto LABEL_63;
    }

LABEL_66:
    if (!*(a1 + 56))
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d initializing CBPeripheralManager", "", "[NRLinkManagerBluetooth setup]", 602);
      }

      v42 = [CBPeripheralManager alloc];
      v43 = *(a1 + 24);
      v58 = CBPeripheralManagerOptionShowPowerAlertKey;
      v59 = &__kCFBooleanTrue;
      v44 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      v45 = [v42 initWithDelegate:a1 queue:v43 options:v44];
      v46 = *(a1 + 56);
      *(a1 + 56) = v45;
    }

    goto LABEL_74;
  }

  if (v31)
  {
    goto LABEL_66;
  }

LABEL_63:
  v40 = *(a1 + 176);
  if ([v40 count])
  {

    goto LABEL_66;
  }

  v41 = [*(a1 + 224) count];

  if (v41)
  {
    goto LABEL_66;
  }

  sub_1000327B8(a1);
LABEL_74:
  if (!*(a1 + 48))
  {
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d initializing CBScalablePipeManager", "", "[NRLinkManagerBluetooth setup]", 613);
    }

    v47 = [CBScalablePipeManager alloc];
    v48 = *(a1 + 24);
    v49 = [v47 initWithDelegate:a1 queue:v48];
    v50 = *(a1 + 48);
    *(a1 + 48) = v49;
  }

  v51 = *(a1 + v2[59]);
  if (v51 != 1 || (*(a1 + v3[58]) & 1) == 0)
  {
    sub_10002F840(a1, 1, v51 ^ 1);
  }

LABEL_85:
}

void sub_100032164(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 24);
    dispatch_assert_queue_V2(v4);

    if (a2)
    {
      if (a2 == 5 && sub_10016D0AC(NRDLocalDevice))
      {
        sub_100036770(a1, 1, 0);

        sub_100036770(a1, 1, 1);
      }

      else
      {
        if ((sub_10016D0AC(NRDLocalDevice) & 1) == 0)
        {
          *(a1 + 37) = 1;
        }

        sub_10002F840(a1, 1, 0);
        sub_10002F840(a1, 1, 1);
        v5 = [*(a1 + 40) copy];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        obj = v5;
        v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v28;
          do
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v28 != v8)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v27 + 1) + 8 * i);
              [v12 setNoTransport:1];
              v13 = [v12 nrUUID];
              if (a2 < 6)
              {
                v10 = *(&off_1001FA940 + a2);
              }

              else
              {
                v10 = [[NSString alloc] initWithFormat:@"UnknownState(%lld)", a2];
              }

              [v12 cancelWithReason:{@"pipe manager state %@", v10}];

              WeakRetained = objc_loadWeakRetained((a1 + 128));
              [WeakRetained pipeDidConnectForNRUUID:0 nrUUID:v13];

              sub_100037950(a1, v13);
            }

            v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v7);
        }

        if (a2 == 5)
        {
          v14 = *(a1 + 88);
          v15 = [v14 objectForKeyedSubscript:&off_100209AA0];
          if (v15)
          {
            v15[9] &= ~8u;
          }

          v16 = *(a1 + 88);
          v17 = [v16 objectForKeyedSubscript:&off_100209AB8];
          if (v17)
          {
            v17[9] &= ~8u;
          }

          v18 = *(a1 + 88);
          v19 = [v18 objectForKeyedSubscript:&off_100209AD0];
          if (v19)
          {
            v19[9] &= ~8u;
          }

          v20 = *(a1 + 96);
          v21 = [v20 objectForKeyedSubscript:&off_100209AA0];
          if (v21)
          {
            v21[9] &= ~8u;
          }

          v22 = *(a1 + 96);
          v23 = [v22 objectForKeyedSubscript:&off_100209AB8];
          if (v23)
          {
            v23[9] &= ~8u;
          }

          v24 = *(a1 + 96);
          v25 = [v24 objectForKeyedSubscript:&off_100209AD0];
          if (v25)
          {
            v25[9] &= ~8u;
          }
        }

        else
        {
          if (qword_100228F70 != -1)
          {
            dispatch_once(&qword_100228F70, &stru_1001FA8E0);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228F70 != -1)
            {
              dispatch_once(&qword_100228F70, &stru_1001FA8E0);
            }

            _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d Resetting state", "", "[NRLinkManagerBluetooth handleSPMStateChange:]", 1756);
          }

          [*(a1 + 88) removeAllObjects];
          [*(a1 + 96) removeAllObjects];
        }
      }
    }
  }
}

void sub_100032610(uint64_t result, unint64_t a2)
{
  if (!*(result + 56))
  {
    return;
  }

  if (a2 >= 6)
  {
    v3 = [[NSString alloc] initWithFormat:@"UnknownState(%lld)", a2];
  }

  else
  {
    v3 = *(&off_1001FA940 + a2);
  }

  [result reportEvent:3500 details:v3];

  v4 = *(result + 56);
  if (!v4 || [v4 state] != 5 || (sub_10016D0AC(NRDLocalDevice) & 1) == 0 && !objc_msgSend(*(result + 224), "count"))
  {
    goto LABEL_18;
  }

  if (!sub_100033FC0(result))
  {
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d Not starting BT advertisements as all enabled devices are connected", "", "[NRLinkManagerBluetooth handlePMStateChange:]", 2305);
    }

LABEL_18:
    sub_100033D54(result, 0);
    goto LABEL_19;
  }

  sub_1000347A4(result);
LABEL_19:

  sub_100034ED0(result);
}

void sub_1000327B8(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 56))
    {
      sub_100033D54(a1, 0);
      v2 = *(a1 + 168);
      if (v2)
      {
        v3 = v2;
        v4 = [*(a1 + 168) count];

        if (v4)
        {
          if (qword_100228F70 != -1)
          {
            dispatch_once(&qword_100228F70, &stru_1001FA8E0);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228F70 != -1)
            {
              dispatch_once(&qword_100228F70, &stru_1001FA8E0);
            }

            v5 = *(a1 + 168);
            v6 = qword_100228F68;
            _NRLogWithArgs(v6, 0, "%s%.30s:%-4d unpublishing published PSMs %@", "", "[NRLinkManagerBluetooth invalidatePeripheralManager]", 435, v5);
          }

          v18 = 0u;
          v19 = 0u;
          v16 = 0u;
          v17 = 0u;
          v7 = *(a1 + 168);
          v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v17;
            do
            {
              for (i = 0; i != v9; i = i + 1)
              {
                if (*v17 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v16 + 1) + 8 * i);
                v13 = *(a1 + 56);
                [v13 unpublishL2CAPChannel:{objc_msgSend(v12, "unsignedShortValue")}];
              }

              v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
            }

            while (v9);
          }

          v14 = *(a1 + 168);
          *(a1 + 168) = 0;
        }
      }

      [*(a1 + 56) setDelegate:0];
      v15 = *(a1 + 56);
      *(a1 + 56) = 0;
    }

    *(a1 + 33) = 0;
  }
}

void sub_100032A1C(uint64_t a1)
{
  if (*(a1 + 136))
  {
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d invalidating link requirements monitor source", "", "[NRLinkManagerBluetooth invalidateLinkRequirementsTimer]", 991);
    }

    dispatch_source_cancel(*(a1 + 136));
    v2 = *(a1 + 136);
    *(a1 + 136) = 0;
  }
}

void sub_100032B28(uint64_t a1, uint64_t a2)
{
  if (a1 && _NRIsAppleInternal())
  {
    p_vtable = NRSCDInterfaceConfig.vtable;
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      _NRLogWithArgs(qword_100228F68, 1, "%s%.30s:%-4d checking bluetooth pairing state", "", "[NRLinkManagerBluetooth checkBluetoothPairingState]", 3254);
    }

    v3 = objc_opt_self();
    v4 = sub_100003490();
    dispatch_assert_queue_V2(v4);

    sub_1001619D8(v3);
    v5 = objc_alloc_init(NSMutableArray);
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v6 = qword_100229428;
    v7 = [v6 countByEnumeratingWithState:&v85 objects:v90 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v86;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v86 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v85 + 1) + 8 * i);
          v12 = [qword_100229428 objectForKeyedSubscript:v11];
          v13 = v12;
          if (v12 && (*(v12 + 48) & 0x80) != 0)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v85 objects:v90 count:16];
      }

      while (v8);
    }

    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    obj = v5;
    v74 = [obj countByEnumeratingWithState:&v81 objects:v89 count:16];
    if (v74)
    {
      v73 = *v82;
      do
      {
        for (j = 0; j != v74; j = j + 1)
        {
          if (*v82 != v73)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v81 + 1) + 8 * j);
          v16 = sub_100163A30(NRDLocalDevice, v15);
          v17 = v16;
          if (v16)
          {
            v18 = *(v16 + 48);
            if ((v18 & 2) != 0)
            {
              goto LABEL_64;
            }

            v19 = *(v16 + 24);
          }

          else
          {
            v19 = 0;
          }

          v20 = v19;
          objc_opt_self();
          objc_opt_self();
          if (qword_100228EE8 != -1)
          {
            dispatch_once(&qword_100228EE8, &stru_1001FA590);
          }

          v21 = qword_100228EE0;
          v22 = v20;
          if (v21)
          {
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v23 = *(v21 + 64);
            v24 = [v23 countByEnumeratingWithState:&v85 objects:v90 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v86;
LABEL_38:
              v27 = 0;
              while (1)
              {
                if (*v86 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v85 + 1) + 8 * v27);
                v29 = v28 ? v28[2] : 0;
                if ([v29 isEqual:v22])
                {
                  break;
                }

                if (v25 == ++v27)
                {
                  v30 = [v23 countByEnumeratingWithState:&v85 objects:v90 count:16];
                  v25 = v30;
                  if (v30)
                  {
                    goto LABEL_38;
                  }

                  goto LABEL_48;
                }
              }

              v31 = v28;

              if (!v28)
              {
                goto LABEL_49;
              }

              p_vtable = (NRSCDInterfaceConfig + 24);
              if (v31[8] == 1)
              {
                if (qword_100228EF8 != -1)
                {
                  dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_100228EF8 != -1)
                  {
                    dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
                  }

                  _NRLogWithArgs(qword_100228EF0, 1, "%s%.30s:%-4d not removing pairer as it is unpairing", "", "[NRBluetoothPairingManager removePairerForNRUUID:]", 230);
                }

                goto LABEL_61;
              }
            }

            else
            {
LABEL_48:

LABEL_49:
              v31 = 0;
              p_vtable = NRSCDInterfaceConfig.vtable;
            }

            [*(v21 + 64) removeObject:v31];
            v32 = *(v21 + 72);
            if (v32 && [*(v32 + 16) isEqual:v22])
            {
              sub_1000200B0(v21);
            }

LABEL_61:
          }

          if (v17)
          {
            v18 = *(v17 + 48);
LABEL_64:
            if ((v18 & 0xC3) == 0xC0)
            {
              if (p_vtable[494] != -1)
              {
                dispatch_once(&qword_100228F70, &stru_1001FA8E0);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (p_vtable[494] != -1)
                {
                  dispatch_once(&qword_100228F70, &stru_1001FA8E0);
                }

                _NRLogWithArgs(qword_100228F68, 1, "%s%.30s:%-4d unpairing bluetooth for device %@", "", "[NRLinkManagerBluetooth checkBluetoothPairingState]", 3266, v17);
              }

              v33 = [NRBluetoothPairer alloc];
              v34 = *(v17 + 24);
              v35 = sub_100022944(v33, v34);

              v36 = *(a1 + 24);
              v80[0] = _NSConcreteStackBlock;
              v80[1] = 3221225472;
              v80[2] = sub_1000338B4;
              v80[3] = &unk_1001FA898;
              v80[4] = v15;
              sub_100022CE8(v35, v36, v80);
            }
          }

          v37 = v15;
          objc_opt_self();
          objc_opt_self();
          if (qword_100228EE8 != -1)
          {
            dispatch_once(&qword_100228EE8, &stru_1001FA590);
          }

          v38 = qword_100228EE0;
          v39 = v37;
          if (v38)
          {
            v40 = *(v38 + 72);
            if (v40 && [*(v40 + 16) isEqual:v39])
            {
LABEL_103:

              if (p_vtable[494] != -1)
              {
                dispatch_once(&qword_100228F70, &stru_1001FA8E0);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (p_vtable[494] != -1)
                {
                  dispatch_once(&qword_100228F70, &stru_1001FA8E0);
                }

                _NRLogWithArgs(qword_100228F68, 1, "%s%.30s:%-4d already has pairer for %@", "", "[NRLinkManagerBluetooth checkBluetoothPairingState]", 3282, v39);
              }

              goto LABEL_27;
            }

            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v41 = *(v38 + 64);
            v42 = [v41 countByEnumeratingWithState:&v85 objects:v90 count:16];
            if (v42)
            {
              v43 = v42;
              v44 = *v86;
              do
              {
                v45 = 0;
                do
                {
                  if (*v86 != v44)
                  {
                    objc_enumerationMutation(v41);
                  }

                  v46 = *(*(&v85 + 1) + 8 * v45);
                  if (v46)
                  {
                    v47 = *(v46 + 16);
                  }

                  else
                  {
                    v47 = 0;
                  }

                  if ([v47 isEqual:v39])
                  {

                    goto LABEL_103;
                  }

                  v45 = v45 + 1;
                }

                while (v43 != v45);
                v48 = [v41 countByEnumeratingWithState:&v85 objects:v90 count:16];
                v43 = v48;
              }

              while (v48);
            }
          }

          if (v17 && (*(v17 + 48) & 0xC2) == 0x82)
          {
            v49 = *(v17 + 24);
            objc_opt_self();
            v50 = [qword_100229458 objectForKeyedSubscript:v49];

            v51 = p_vtable[494];
            if (v50)
            {
              if (v51 != -1)
              {
                dispatch_once(&qword_100228F70, &stru_1001FA8E0);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (p_vtable[494] != -1)
                {
                  dispatch_once(&qword_100228F70, &stru_1001FA8E0);
                }

                _NRLogWithArgs(qword_100228F68, 1, "%s%.30s:%-4d pairing bluetooth for device %@", "", "[NRLinkManagerBluetooth checkBluetoothPairingState]", 3291, v17);
              }

              v52 = objc_alloc_init(NRBluetoothPairerParameters);
              v53 = *(v17 + 104);

              if (v53)
              {
                if (v52)
                {
                  v54 = 5;
                  goto LABEL_118;
                }

                goto LABEL_119;
              }

              if (_NRIsAppleInternal())
              {
                if (v52)
                {
                  v54 = 0;
LABEL_118:
                  v52->_pairingType = v54;
                  objc_storeStrong(&v52->_bluetoothUUID, v50);
                }

LABEL_119:
                v55 = [NRBluetoothPairer alloc];
                v56 = *(v17 + 24);
                v57 = sub_100022944(v55, v56);

                v58 = *(a1 + 24);
                v59 = v58;
                v75[0] = _NSConcreteStackBlock;
                v75[1] = 3221225472;
                v76 = sub_100033AC8;
                v77 = &unk_1001FA8C0;
                v78 = v57;
                v79 = v39;
                v60 = v57;
                v61 = v52;
                v62 = v59;
                v63 = v75;
                if (v60)
                {
                  if (v62)
                  {
                    if (v61)
                    {
                      pairingType = v61->_pairingType;
                      if (pairingType && pairingType != 5)
                      {
                        if (qword_100228EF8 != -1)
                        {
                          dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
                        }

                        if (_NRLogIsLevelEnabled())
                        {
                          if (qword_100228EF8 != -1)
                          {
                            dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
                          }

                          _NRLogWithArgs(qword_100228EF0, 16, "%s%.30s:%-4d pairing type %zd not yet supported", "", "[NRBluetoothPairer pairWithParameters:completionQueue:completionBlock:]", 78, v61->_pairingType);
                        }

                        v76(v63, 0, 0);
                      }

                      else
                      {
                        *(v60 + 3) = pairingType;
                        objc_storeStrong(v60 + 5, v52);
                        objc_storeStrong(v60 + 6, v58);
                        objc_setProperty_nonatomic_copy(v60, v65, v63, 56);
                        objc_opt_self();
                        if (qword_100228EE8 != -1)
                        {
                          dispatch_once(&qword_100228EE8, &stru_1001FA590);
                        }

                        sub_100022B6C(qword_100228EE0, v60);
                      }

                      goto LABEL_25;
                    }

                    if (qword_100228EF8 != -1)
                    {
                      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
                    }

                    v69 = qword_100228EF0;
                    IsLevelEnabled = _NRLogIsLevelEnabled();

                    if (IsLevelEnabled)
                    {
                      v68 = sub_100020970();
                      _NRLogWithArgs(v68, 17, "%s called with null parameters");
                      goto LABEL_146;
                    }
                  }

                  else
                  {
                    if (qword_100228EF8 != -1)
                    {
                      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
                    }

                    v66 = qword_100228EF0;
                    v67 = _NRLogIsLevelEnabled();

                    if (v67)
                    {
                      v68 = sub_100020970();
                      _NRLogWithArgs(v68, 17, "%s called with null completionQueue");
LABEL_146:
                    }
                  }
                }

LABEL_25:
              }

              else
              {
                if (qword_100228F70 != -1)
                {
                  dispatch_once(&qword_100228F70, &stru_1001FA8E0);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_100228F70 != -1)
                  {
                    dispatch_once(&qword_100228F70, &stru_1001FA8E0);
                  }

                  _NRLogWithArgs(qword_100228F68, 16, "%s%.30s:%-4d Invalid pairing type for device %@", "", "[NRLinkManagerBluetooth checkBluetoothPairingState]", 3298, v17);
                }
              }

              p_vtable = (NRSCDInterfaceConfig + 24);
              goto LABEL_27;
            }

            if (v51 != -1)
            {
              dispatch_once(&qword_100228F70, &stru_1001FA8E0);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (p_vtable[494] != -1)
              {
                dispatch_once(&qword_100228F70, &stru_1001FA8E0);
              }

              _NRLogWithArgs(qword_100228F68, 1, "%s%.30s:%-4d no pairing candidate BT UUID for device %@", "", "[NRLinkManagerBluetooth checkBluetoothPairingState]", 3288, v17);
            }
          }

LABEL_27:
        }

        v74 = [obj countByEnumeratingWithState:&v81 objects:v89 count:16];
      }

      while (v74);
    }
  }
}

void sub_1000338B4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      _NRLogWithArgs(qword_100228F68, 1, "%s%.30s:%-4d unpaired BT device %@", "", "[NRLinkManagerBluetooth checkBluetoothPairingState]_block_invoke", 3270, v5);
    }

    sub_10017440C(NRDLocalDevice, 0, *(a1 + 32));
    v6 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100033CA4;
    v8[3] = &unk_1001FCE00;
    v8[4] = v6;
    sub_100165208(NRDLocalDevice, v6, v8);
  }

  else
  {
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      _NRLogWithArgs(qword_100228F68, 16, "%s%.30s:%-4d failed to unpair BT device", "", "[NRLinkManagerBluetooth checkBluetoothPairingState]_block_invoke", 3276);
    }
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v7 = qword_1002290B8;
  sub_1000BC670(v7);
}

void sub_100033AC8(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      _NRLogWithArgs(qword_100228F68, 1, "%s%.30s:%-4d %@ paired BT device %@", "", "[NRLinkManagerBluetooth checkBluetoothPairingState]_block_invoke_3", 3305, *(a1 + 32), v6);
    }

    sub_10017440C(NRDLocalDevice, v6, *(a1 + 40));
  }

  else
  {
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      _NRLogWithArgs(qword_100228F68, 16, "%s%.30s:%-4d %@ failed to pair BT device", "", "[NRLinkManagerBluetooth checkBluetoothPairingState]_block_invoke_3", 3308, *(a1 + 32));
    }
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v5 = qword_1002290B8;
  sub_1000BC670(v5);
}

void sub_100033CA4(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v7 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v7, 0, "%s%.30s:%-4d deletePairingInfoFromKeychain %@ deleted %u", "", "[NRLinkManagerBluetooth checkBluetoothPairingState]_block_invoke_2", 3273, *(a1 + 32), a3);
  }
}

void *sub_100033D54(void *result, int a2)
{
  if (!result[7])
  {
    return result;
  }

  v2 = *(result + 32);
  if (v2 != 2)
  {
    if (!*(result + 32))
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      result = _NRLogIsLevelEnabled();
      if (result)
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        return _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d Ignoring stop BT advertisement request, device is NOT advertising");
      }

      return result;
    }

    if (v2 == 3 && a2 != 0)
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      result = _NRLogIsLevelEnabled();
      if (result)
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        return _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d Ignoring stop BT advertisement request, already restarting");
      }

      return result;
    }

    if (v2 == 4 || v2 == 1)
    {
      v5 = result;
      [result reportEvent:3504];
      v7 = v5;
      result = [v5[7] stopAdvertising];
      if (!a2)
      {
LABEL_36:
        *(v7 + 32) = 2;
        *(v7 + 33) = 0;
        return result;
      }
    }

    else
    {
      v7 = result;
      if (!a2)
      {
        goto LABEL_36;
      }
    }

    *(v7 + 32) = 3;
    return result;
  }

  if (qword_100228F70 != -1)
  {
    dispatch_once(&qword_100228F70, &stru_1001FA8E0);
  }

  result = _NRLogIsLevelEnabled();
  if (result)
  {
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    return _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d Ignoring stop BT advertisement request, already stopping");
  }

  return result;
}

BOOL sub_100033FC0(id *a1)
{
  v2 = objc_alloc_init(NSMutableSet);
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v3 = a1[11];
  v4 = [v3 objectForKeyedSubscript:&off_100209AA0];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 16);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 countByEnumeratingWithState:&v105 objects:v115 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v106;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v106 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v105 + 1) + 8 * i) peer];
        v13 = [v12 identifier];
        [v2 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v105 objects:v115 count:16];
    }

    while (v9);
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v14 = a1[12];
  v15 = [v14 objectForKeyedSubscript:&off_100209AA0];
  v16 = v15;
  if (v15)
  {
    v17 = *(v15 + 16);
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v19 = [v18 countByEnumeratingWithState:&v101 objects:v114 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v102;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v102 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v101 + 1) + 8 * j) peer];
        v24 = [v23 identifier];
        [v2 addObject:v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v101 objects:v114 count:16];
    }

    while (v20);
  }

  v25 = sub_10016CF44(NRDLocalDevice);
  v26 = [v25 mutableCopy];

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v79 = v26;
  v27 = [v26 copy];
  v28 = [v27 countByEnumeratingWithState:&v97 objects:v113 count:16];
  v78 = a1;
  if (v28)
  {
    v29 = v28;
    v30 = *v98;
    do
    {
      for (k = 0; k != v29; k = k + 1)
      {
        if (*v98 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v97 + 1) + 8 * k);
        objc_opt_self();
        v33 = sub_100168BE8(NRDLocalDevice, v32, 1);

        if (!sub_10003615C(a1, v33) || (!v33 ? (operationalProp = 0) : (operationalProp = v33->_operationalProp), v35 = operationalProp, v36 = [(NRDeviceOperationalProperties *)v35 bluetoothRole], v35, a1 = v78, v36 != 2))
        {
          [v26 removeObject:{v32, v78}];
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v97 objects:v113 count:16];
    }

    while (v29);
  }

  v37 = [v26 mutableCopy];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v38 = v2;
  v39 = [v38 countByEnumeratingWithState:&v93 objects:v112 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v94;
    do
    {
      for (m = 0; m != v40; m = m + 1)
      {
        if (*v94 != v41)
        {
          objc_enumerationMutation(v38);
        }

        [v37 removeObject:{*(*(&v93 + 1) + 8 * m), v78}];
      }

      v40 = [v38 countByEnumeratingWithState:&v93 objects:v112 count:16];
    }

    while (v40);
  }

  v43 = [v37 count];
  if (v43)
  {
    goto LABEL_80;
  }

  v44 = objc_alloc_init(NSMutableSet);

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v45 = a1[5];
  v46 = [v45 countByEnumeratingWithState:&v89 objects:v111 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v90;
    do
    {
      for (n = 0; n != v47; n = n + 1)
      {
        if (*v90 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v54 = *(*(&v89 + 1) + 8 * n);
        if ([v54 subtype] == 121 && objc_msgSend(v54, "state") != 255)
        {
          v55 = v54 ? *(v54 + 407) : 0;
          v56 = v55;

          if (v56)
          {
            if (v54)
            {
              v50 = *(v54 + 407);
            }

            else
            {
              v50 = 0;
            }

            v51 = v50;
            v52 = [v51 peer];
            v53 = [v52 identifier];
            [v44 addObject:v53];
          }
        }
      }

      v47 = [v45 countByEnumeratingWithState:&v89 objects:v111 count:16];
    }

    while (v47);
  }

  v80 = v44;

  v57 = sub_10016CF44(NRDLocalDevice);
  v58 = [v57 mutableCopy];

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v59 = [v58 copy];
  v60 = [v59 countByEnumeratingWithState:&v85 objects:v110 count:16];
  v61 = v78;
  if (v60)
  {
    v62 = v60;
    v63 = *v86;
    do
    {
      for (ii = 0; ii != v62; ii = ii + 1)
      {
        if (*v86 != v63)
        {
          objc_enumerationMutation(v59);
        }

        v65 = *(*(&v85 + 1) + 8 * ii);
        objc_opt_self();
        v66 = sub_100168BE8(NRDLocalDevice, v65, 1);

        if (!sub_10002EC6C(v61, v66) || (!v66 ? (v67 = 0) : (v67 = v66->_operationalProp), v68 = v67, v69 = [(NRDeviceOperationalProperties *)v68 bluetoothRole], v68, v61 = v78, v69 != 2))
        {
          [v58 removeObject:{v65, v78, v80}];
        }
      }

      v62 = [v59 countByEnumeratingWithState:&v85 objects:v110 count:16];
    }

    while (v62);
  }

  v70 = [v58 mutableCopy];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v38 = v80;
  v71 = [v38 countByEnumeratingWithState:&v81 objects:v109 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v82;
    do
    {
      for (jj = 0; jj != v72; jj = jj + 1)
      {
        if (*v82 != v73)
        {
          objc_enumerationMutation(v38);
        }

        [v70 removeObject:{*(*(&v81 + 1) + 8 * jj), v78}];
      }

      v72 = [v38 countByEnumeratingWithState:&v81 objects:v109 count:16];
    }

    while (v72);
  }

  v75 = [v70 count];
  if (v75)
  {
LABEL_80:
    v76 = 1;
  }

  else
  {
    v76 = [v61[28] count] != 0;
  }

  return v76;
}

void sub_1000347A4(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    return;
  }

  v3 = *(a1 + 32);
  if (v3 == 3)
  {
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d Ignoring start BT advertisement request, advertisement is restarting");
    }

    return;
  }

  if (v3 != 4)
  {
    if ([v2 state] != 5 || (sub_10016D0AC(NRDLocalDevice) & 1) == 0 && !objc_msgSend(*(a1 + 224), "count"))
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        v13 = qword_100228F68;
        v14 = *(a1 + 56);
        v29 = v13;
        v15 = [v14 state];
        if (v15 >= 6)
        {
          v16 = [[NSString alloc] initWithFormat:@"UnknownState(%lld)", v15];
        }

        else
        {
          v16 = *(&off_1001FA940 + v15);
        }

        v17 = sub_10016D0AC(NRDLocalDevice);
        _NRLogWithArgs(v29, 0, "%s%.30s:%-4d Ignoring start BT advertisement request, device cannot start advertising (%@/%d)", "", "[NRLinkManagerBluetooth startBTAdvertisement]", 1950, v16, v17);
      }

      return;
    }

    *(a1 + 33) = 0;
    v11 = *(a1 + 33);
    if (*(a1 + 33))
    {
      if (v11 == 1)
      {
        v12 = @"1 sec";
      }

      else
      {
        v12 = [[NSString alloc] initWithFormat:@"UnknownType(%lld)", v11];
      }
    }

    else
    {
      v12 = @"Default";
    }

    [a1 reportEvent:3501 details:v12];

    if (*(a1 + 33) == 1)
    {
      v40 = CBPeripheralManagerAdvertisingInterval;
      v41 = &off_100209AE8;
      v4 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    }

    else
    {
      v4 = 0;
    }

    v18 = objc_alloc_init(NSMutableDictionary);
    if ([v4 count])
    {
      [v18 addEntriesFromDictionary:v4];
    }

    if ([*(a1 + 224) count])
    {
      v28 = v18;
      v19 = objc_alloc_init(NSMutableSet);
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v20 = [*(a1 + 224) allValues];
      v21 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v31;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v31 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v26 = *(*(&v30 + 1) + 8 * i);
            if (v26)
            {
              *(v26 + 16) = 1;
              if (![*(v26 + 8) count])
              {
                continue;
              }
            }

            else if (![0 count])
            {
              continue;
            }

            if (v26)
            {
              v25 = *(v26 + 8);
            }

            else
            {
              v25 = 0;
            }

            [v19 addObjectsFromArray:v25];
          }

          v22 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v22);
      }

      v18 = v28;
      if ([v19 count])
      {
        v27 = [v19 allObjects];
        [v28 setObject:v27 forKeyedSubscript:CBAdvertisementDataServiceUUIDsKey];
      }
    }

    [*(a1 + 56) startAdvertising:v18];
    *(a1 + 32) = 1;

LABEL_84:
    return;
  }

  if ([*(a1 + 224) count])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v4 = [*(a1 + 224) allValues];
    v5 = [v4 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v35;
LABEL_7:
      if (*v35 == v7)
      {
        v8 = *(&v34 + 1);
        while (*v8 && *(*v8 + 16) == 1)
        {
          v8 += 8;
          if (!--v6)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        v9 = 0;
        while (1)
        {
          if (*v35 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v34 + 1) + 8 * v9);
          if (!v10 || (*(v10 + 16) & 1) == 0)
          {
            break;
          }

          if (v6 == ++v9)
          {
LABEL_19:
            v6 = [v4 countByEnumeratingWithState:&v34 objects:v39 count:16];
            if (v6)
            {
              goto LABEL_7;
            }

            goto LABEL_20;
          }
        }
      }

      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d Restarting BT advertisements, due to new advertise request(s)", "", "[NRLinkManagerBluetooth startBTAdvertisement]", 1934);
      }

      sub_100033D54(a1, 1);
      goto LABEL_84;
    }

LABEL_20:
  }

  if (qword_100228F70 != -1)
  {
    dispatch_once(&qword_100228F70, &stru_1001FA8E0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d Ignoring start BT advertisement request, device is already advertising");
  }
}

void sub_100034ED0(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v1 = a1;
  v2 = *(a1 + 56);
  if (!v2)
  {
    return;
  }

  v72 = v2;
  if ([v72 state] != 4)
  {
    v3 = [v1[7] state];

    if (!v3)
    {
      return;
    }

    if ([v1[7] state] == 1)
    {
      [v1[21] removeAllObjects];
    }

    if (!v1[21])
    {
      v4 = objc_alloc_init(NSMutableSet);
      v5 = v1[21];
      v1[21] = v4;
    }

    v6 = objc_alloc_init(NSMutableSet);
    v7 = objc_alloc_init(NSMutableSet);
    v73 = v1;
    if ([v1[7] state] == 5)
    {
      v68 = v7;
      if ([v1[22] count])
      {
        v8 = [v1[22] allKeys];
        [v6 addObjectsFromArray:v8];
      }

      v70 = v6;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v9 = objc_opt_self();
      v10 = sub_100003490();
      dispatch_assert_queue_V2(v10);

      sub_1001619D8(v9);
      v11 = objc_alloc_init(NSMutableArray);
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v12 = qword_100229428;
      v13 = [v12 countByEnumeratingWithState:&v98 objects:v108 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v99;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v99 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v98 + 1) + 8 * i);
            v18 = [qword_100229428 objectForKeyedSubscript:v17];
            v19 = v18;
            if (v18)
            {
              v20 = *(v18 + 32);
              if (v20)
              {
                v21 = v19[9];

                if (v21)
                {
                  [v11 addObject:v17];
                }
              }
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v98 objects:v108 count:16];
        }

        while (v14);
      }

      v23 = v11;
      v24 = [v11 countByEnumeratingWithState:&v94 objects:v107 count:16];
      v1 = v73;
      if (v24)
      {
        v25 = v24;
        v26 = *v95;
        do
        {
          for (j = 0; j != v25; j = j + 1)
          {
            if (*v95 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = sub_100163A30(NRDLocalDevice, *(*(&v94 + 1) + 8 * j));
            v29 = v28;
            if (v28)
            {
              if ((v28[6] & 2) != 0)
              {
                if (sub_10002EC6C(v1, v28))
                {
                  v30 = v29[18];
                  v31 = [v30 bluetoothRole];

                  v1 = v73;
                  if (v31 == 2)
                  {
                    v32 = [NSNumber numberWithUnsignedShort:*(v29 + 9)];
                    [v70 addObject:v32];
                  }
                }
              }
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v94 objects:v107 count:16];
        }

        while (v25);
      }

      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v33 = v1[21];
      v34 = [v33 countByEnumeratingWithState:&v90 objects:v106 count:16];
      v22 = v68;
      v6 = v70;
      if (v34)
      {
        v35 = v34;
        v36 = *v91;
        do
        {
          for (k = 0; k != v35; k = k + 1)
          {
            if (*v91 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v90 + 1) + 8 * k);
            if (([v70 containsObject:v38] & 1) == 0)
            {
              [v68 addObject:v38];
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v90 objects:v106 count:16];
        }

        while (v35);
      }
    }

    else
    {
      v22 = [v1[21] copy];
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    obj = v22;
    v39 = [obj countByEnumeratingWithState:&v86 objects:v105 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v87;
      do
      {
        for (m = 0; m != v40; m = m + 1)
        {
          if (*v87 != v41)
          {
            objc_enumerationMutation(obj);
          }

          sub_100035700(v1, [*(*(&v86 + 1) + 8 * m) unsignedShortValue], 0);
        }

        v40 = [obj countByEnumeratingWithState:&v86 objects:v105 count:16];
      }

      while (v40);
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v65 = v6;
    v43 = [v65 countByEnumeratingWithState:&v82 objects:v104 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v83;
      do
      {
        for (n = 0; n != v44; n = n + 1)
        {
          if (*v83 != v45)
          {
            objc_enumerationMutation(v65);
          }

          sub_100035700(v1, [*(*(&v82 + 1) + 8 * n) unsignedShortValue], 1);
        }

        v44 = [v65 countByEnumeratingWithState:&v82 objects:v104 count:16];
      }

      while (v44);
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v64 = [v1[22] allValues];
    v69 = [v64 countByEnumeratingWithState:&v78 objects:v103 count:16];
    if (!v69)
    {
LABEL_94:

      return;
    }

    v67 = *v79;
LABEL_66:
    v47 = 0;
    while (1)
    {
      if (*v79 != v67)
      {
        objc_enumerationMutation(v64);
      }

      v71 = v47;
      v48 = *(*(&v78 + 1) + 8 * v47);
      v49 = v48 ? *(v48 + 24) : 0;
      v50 = [v49 allKeys];
      v51 = [v50 copy];

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v52 = v51;
      v53 = [v52 countByEnumeratingWithState:&v74 objects:v102 count:16];
      if (v53)
      {
        break;
      }

LABEL_67:

      v47 = v71 + 1;
      if ((v71 + 1) == v69)
      {
        v69 = [v64 countByEnumeratingWithState:&v78 objects:v103 count:16];
        if (!v69)
        {
          goto LABEL_94;
        }

        goto LABEL_66;
      }
    }

    v54 = v53;
    v55 = *v75;
LABEL_75:
    v56 = 0;
    while (1)
    {
      if (*v75 != v55)
      {
        objc_enumerationMutation(v52);
      }

      v57 = *(*(&v74 + 1) + 8 * v56);
      v58 = sub_100168BE8(NRDLocalDevice, v57, 0);
      if (!v58)
      {
        goto LABEL_78;
      }

      if (v48)
      {
        v59 = *(v48 + 24);
      }

      else
      {
        v59 = 0;
      }

      v60 = [v59 objectForKeyedSubscript:v57];
      v61 = v60;
      if ((v58->_databaseFlags & 2) != 0)
      {
        if (v48)
        {
          v62 = *(v48 + 8);
          if (v62 != [v60 PSM] || v58->_psm != *(v48 + 8))
          {
            goto LABEL_77;
          }

          sub_10003583C(v73, v61);
          v63 = *(v48 + 24);
        }

        else
        {
          if ([v60 PSM] || v58->_psm)
          {
            goto LABEL_77;
          }

          sub_10003583C(v73, v61);
          v63 = 0;
        }

        [v63 setObject:0 forKeyedSubscript:v57];
      }

LABEL_77:

LABEL_78:
      if (v54 == ++v56)
      {
        v54 = [v52 countByEnumeratingWithState:&v74 objects:v102 count:16];
        if (!v54)
        {
          goto LABEL_67;
        }

        goto LABEL_75;
      }
    }
  }
}

void sub_100035700(uint64_t a1, int a2, char a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = dispatch_time(0, 1000000000);
    if (a1)
    {
      v7 = *(a1 + 24);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003633C;
    block[3] = &unk_1001FA7A8;
    block[4] = a1;
    v14 = a3;
    v13 = v4;
    dispatch_after(v6, v8, block);
  }

  else
  {
    v9 = sub_10002D6B4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = sub_10002D6B4();
      _NRLogWithArgs(v11, 17, "%s called with null psm", "[NRLinkManagerBluetooth setL2CAPChannelPublishState:state:]");
    }
  }
}

void sub_10003583C(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 peer];
    v6 = [v5 identifier];
    v7 = sub_100168BE8(NRDLocalDevice, v6, 0);

    if (v7 && (v7->_databaseFlags & 2) != 0 && (sub_10002EC6C(a1, v7) & 1) != 0)
    {
      psm = v7->_psm;
      if (psm == [v4 PSM])
      {
        v66 = v4;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v9 = a1[5];
        v10 = [v9 countByEnumeratingWithState:&v67 objects:v71 count:16];
        if (!v10)
        {
LABEL_63:

          v52 = v7->_lastSeenName;
          if (v52)
          {
            v53 = v52;
          }

          else
          {
            v53 = @"L2CAP-peer";
          }

          v54 = [NRLinkBluetooth alloc];
          v55 = a1[3];
          v56 = v7->_nrUUID;
          v4 = v66;
          v57 = sub_1000B6370(v54, v55, a1, v56, 0, v66, v53);

          if (v57)
          {
            if ((sub_10003615C(a1, v7) & 1) == 0)
            {
              WeakRetained = objc_loadWeakRetained(a1 + 16);
              v59 = v7->_nrUUID;
              [WeakRetained pipeDidConnectForNRUUID:1 nrUUID:v59];
            }

            if (!sub_100033FC0(a1))
            {
              sub_100033D54(a1, 0);
            }
          }

          else
          {
            v60 = sub_10002D6B4();
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              v62 = sub_10002D6B4();
              _NRLogWithArgs(v62, 16, "%s%.30s:%-4d Failed to create link for device %@ with channel %@", "", "[NRLinkManagerBluetooth processL2CAPChannelConnected:]", 2559, v7, v66);
            }

            v4 = v66;
            v63 = [v66 description];
            [a1 reportEvent:3101 details:v63];
          }

          goto LABEL_72;
        }

        v11 = v10;
        v12 = *v68;
LABEL_31:
        v42 = 0;
        while (1)
        {
          if (*v68 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v43 = *(*(&v67 + 1) + 8 * v42);
          v44 = [v43 nrUUID];
          v45 = v7->_nrUUID;
          v46 = [v44 isEqual:v45];

          if (v46)
          {
            if ([v43 state] != 255 && objc_msgSend(v43, "subtype") == 121)
            {
              v47 = v43 ? *(v43 + 407) : 0;
              v48 = v47;
              v49 = [v48 PSM];
              v50 = v7->_psm;

              if (v49 == v50)
              {
                break;
              }
            }
          }

          if (v11 == ++v42)
          {
            v11 = [v9 countByEnumeratingWithState:&v67 objects:v71 count:16];
            if (!v11)
            {
              goto LABEL_63;
            }

            goto LABEL_31;
          }
        }

        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        v4 = v66;
        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_72;
        }

        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        v51 = qword_100228F68;
        _NRLogWithArgs(v51, 0, "%s%.30s:%-4d already has link for channel %@", "", "[NRLinkManagerBluetooth processL2CAPChannelConnected:]", 2543, v66);
      }

      else
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_72;
        }

        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        v51 = qword_100228F68;
        _NRLogWithArgs(v51, 0, "%s%.30s:%-4d ignoring L2CAP Channel open for device %@, as expected PSM doesn't match (%u != %u)", "", "-[NRLinkManagerBluetooth processL2CAPChannelConnected:]", 2515, v7, v7->_psm, [v4 PSM]);
      }

LABEL_72:
      goto LABEL_73;
    }

    v13 = a1[22];
    v14 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v4 PSM]);
    v15 = [v13 objectForKeyedSubscript:v14];

    if (!v15)
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        _NRLogWithArgs(qword_100228F68, 16, "%s%.30s:%-4d ignoring L2CAP Channel open for device %@", "", "[NRLinkManagerBluetooth processL2CAPChannelConnected:]", 2508, v7);
      }

      goto LABEL_72;
    }

    v16 = a1[22];
    v17 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v4 PSM]);
    v18 = [v16 objectForKeyedSubscript:v17];

    v19 = [v4 peer];
    v20 = [v19 identifier];

    if (!v20)
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        _NRLogWithArgs(qword_100228F68, 17, "connected channel has no peer identifier %@", v4);
      }

      goto LABEL_72;
    }

    if (v18)
    {
      v21 = *(v18 + 24);
      if (!v21)
      {
        v22 = objc_alloc_init(NSMutableDictionary);
        v23 = *(v18 + 24);
        *(v18 + 24) = v22;

        v21 = *(v18 + 24);
      }
    }

    else
    {

      v21 = 0;
    }

    v24 = v21;
    v25 = [v4 peer];
    v26 = [v25 identifier];
    v27 = [v24 objectForKeyedSubscript:v26];

    if (!v27)
    {
      goto LABEL_21;
    }

    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (!_NRLogIsLevelEnabled())
    {
LABEL_21:
      if (v18)
      {
        v35 = *(v18 + 24);
        v36 = [v4 peer];
        v37 = [v36 identifier];
        [v35 setObject:v4 forKeyedSubscript:v37];

        v38 = *(v18 + 16);
      }

      else
      {
        v64 = [v4 peer];
        v65 = [v64 identifier];
        [0 setObject:v4 forKeyedSubscript:v65];

        v38 = 0;
      }

      v39 = v38;
      v40 = [v4 peer];
      v41 = [v40 identifier];
      (v38)[2](v39, 1, v41, [v4 PSM]);

      goto LABEL_72;
    }

    if (qword_100228F70 == -1)
    {
      v28 = qword_100228F68;
      if (v18)
      {
LABEL_19:
        v29 = *(v18 + 24);
LABEL_20:
        v30 = v29;
        v31 = v28;
        v32 = [v4 peer];
        v33 = [v32 identifier];
        v34 = [v30 objectForKeyedSubscript:v33];
        _NRLogWithArgs(v31, 17, "received a channel connected event for already connected channel- old %@ new %@", v34, v4);

        goto LABEL_21;
      }
    }

    else
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      v28 = qword_100228F68;
      if (v18)
      {
        goto LABEL_19;
      }
    }

    v29 = 0;
    goto LABEL_20;
  }

LABEL_73:
}

uint64_t sub_10003615C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      if (sub_100169428(v3))
      {
LABEL_4:
        LOBYTE(a1) = 1;
        goto LABEL_15;
      }

      v5 = v4[3];
      LODWORD(a1) = [a1 shouldCreateLinkForNRUUID:v5];

      if (!a1)
      {
        goto LABEL_15;
      }

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v6 = v4[18];
      a1 = [v6 allowedLinkSubtypes];

      v7 = [a1 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (!v7)
      {

        goto LABEL_4;
      }

      v8 = v7;
      v9 = 0;
      v10 = *v19;
LABEL_8:
      v11 = 0;
      while (1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(a1);
        }

        v12 = [*(*(&v18 + 1) + 8 * v11) unsignedShortValue];
        v13 = v12;
        v9 |= (v12 & 0xFE) == 120;
        if (v12 == 120)
        {
          break;
        }

        if (v8 == ++v11)
        {
          v8 = [a1 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v8)
          {
            goto LABEL_8;
          }

          break;
        }
      }

      LOBYTE(a1) = (v13 == 120) | v9 ^ 1;
    }

    else
    {
      v15 = sub_10002D6B4();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v17 = sub_10002D6B4();
        _NRLogWithArgs(v17, 17, "%s called with null localDevice", "[NRLinkManagerBluetooth deviceAllowsCBScalablePipes:]");
      }

      LOBYTE(a1) = 0;
    }
  }

LABEL_15:

  return a1 & 1;
}

void sub_10003633C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || !v2[21])
  {
    v3 = objc_alloc_init(NSMutableSet);
    v4 = *(a1 + 32);
    if (v4)
    {
      objc_storeStrong((v4 + 168), v3);
    }

    v2 = *(a1 + 32);
  }

  if (*(a1 + 42) != 1)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    v2 = v2[21];
  }

  v5 = *(a1 + 40);
  v6 = v2;
  v7 = [NSNumber numberWithUnsignedShort:v5];
  LODWORD(v5) = [v6 containsObject:v7];

  if (v5)
  {
    if (*(a1 + 42))
    {
      return;
    }

    v2 = *(a1 + 32);
LABEL_12:
    if (v2)
    {
      v2 = v2[21];
    }

    v8 = *(a1 + 40);
    v9 = v2;
    v10 = [NSNumber numberWithUnsignedShort:v8];
    LODWORD(v8) = [v9 containsObject:v10];

    if (v8)
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d setting L2CAP publish state for psm %u to %d", "", "[NRLinkManagerBluetooth setL2CAPChannelPublishState:state:]_block_invoke", 2177, *(a1 + 40), *(a1 + 42));
      }

      v11 = *(a1 + 32);
      if (v11)
      {
        v12 = *(v11 + 56);
      }

      else
      {
        v12 = 0;
      }

      [v12 unpublishL2CAPChannel:*(a1 + 40)];
      v13 = *(a1 + 32);
      if (v13)
      {
        v13 = v13[21];
      }

      v14 = *(a1 + 40);
      v15 = v13;
      v23 = [NSNumber numberWithUnsignedShort:v14];
      [v15 removeObject:v23];
LABEL_40:

      return;
    }

    return;
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = *(v16 + 56);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a1 + 40);
  if ([v17 state] == 5)
  {
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d setting L2CAP publish state for psm %u to %d", "", "[NRLinkManagerBluetooth setL2CAPChannelPublishState:state:]_block_invoke", 2165, *(a1 + 40), *(a1 + 42));
    }

    v19 = *(a1 + 32);
    if (v19)
    {
      v20 = *(v19 + 56);
    }

    else
    {
      v20 = 0;
    }

    [v20 publishPacketL2CAPChannel:*(a1 + 40) requiresEncryption:v18 == 137 withIncomingMTU:1550 options:&__NSDictionary0__struct];
    v21 = *(a1 + 32);
    if (v21)
    {
      v21 = v21[21];
    }

    v22 = *(a1 + 40);
    v15 = v21;
    v23 = [NSNumber numberWithUnsignedShort:v22];
    [v15 addObject:v23];
    goto LABEL_40;
  }

  if (qword_100228F70 != -1)
  {
    dispatch_once(&qword_100228F70, &stru_1001FA8E0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d not publishing L2CAP PSM %u as peripheral manager isn't ON", "", "[NRLinkManagerBluetooth setL2CAPChannelPublishState:state:]_block_invoke", 2162, *(a1 + 40));
  }
}

void sub_100036770(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return;
  }

  v5 = a1;
  v6 = *(a1 + 24);
  dispatch_assert_queue_V2(v6);

  objc_opt_self();
  if (byte_1002290C8 == 1)
  {
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v7 = qword_1002290B8;
    if (v7)
    {
      v8 = v7[12];

      if (v8)
      {
        return;
      }
    }
  }

  if (a2 == 3)
  {
    v9 = &OBJC_IVAR___NRLinkManagerBluetooth__pipeRegistrations;
    if (a3)
    {
      v9 = &OBJC_IVAR___NRLinkManagerBluetooth__p2pPipeRegistrations;
    }

    v10 = *(v5 + *v9);
    v11 = [NSNumber numberWithInteger:3];
    v12 = [v10 objectForKeyedSubscript:v11];

    if (!v12)
    {
      return;
    }

    v13 = v12[9];

    if ((v13 & 4) == 0)
    {
      return;
    }
  }

  if (!a3)
  {
    if (*(v5 + 38) != 1)
    {
      return;
    }

    v119 = v5;
    v21 = *(v5 + 37);
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v22 = sub_10016CA28(NRDLocalDevice);
    v23 = [v22 countByEnumeratingWithState:&v124 objects:v141 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v125;
      v118 = v21;
LABEL_25:
      v26 = 0;
      while (1)
      {
        if (*v125 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = sub_100163A30(NRDLocalDevice, *(*(&v124 + 1) + 8 * v26));
        v28 = v27;
        if (v27)
        {
          v29 = *(v27 + 144);
        }

        else
        {
          v29 = 0;
        }

        v30 = v29;
        v31 = [v30 bluetoothEndpointType];

        if (v31 == 1)
        {

          v15 = 0;
          v14 = @"Client";
          goto LABEL_59;
        }

        v32 = v28 ? v28[18] : 0;
        v33 = v32;
        v34 = [v33 bluetoothEndpointType];

        if (v34 == 2)
        {
          break;
        }

        if (v24 == ++v26)
        {
          v35 = [v22 countByEnumeratingWithState:&v124 objects:v141 count:16];
          v24 = v35;
          v21 = v118;
          if (!v35)
          {
            goto LABEL_39;
          }

          goto LABEL_25;
        }
      }

      v14 = @"Server";
      v15 = 1;
LABEL_59:
      v5 = v119;
      if (a2 != 2)
      {
        goto LABEL_15;
      }
    }

    else
    {
LABEL_39:

      v5 = v119;
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }

      v14 = @"Server";
      v15 = 1;
      if (a2 != 2)
      {
        goto LABEL_15;
      }
    }

LABEL_60:
    if (a3)
    {
      v44 = sub_100037B38(v5, 2, 1);
      v17 = v44;
      if (v44)
      {
        state = v44->_state;
        if (state == 1)
        {
          v62 = sub_10002D6B4();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (!IsLevelEnabled)
          {
            goto LABEL_156;
          }

          goto LABEL_84;
        }

        if (state == 2)
        {
          v46 = sub_10002D6B4();
          v47 = _NRLogIsLevelEnabled();

          if (!v47)
          {
            goto LABEL_156;
          }

          goto LABEL_70;
        }
      }

      else
      {
        state = 0;
      }

      if ([*(v5 + 48) state] != 5)
      {
        goto LABEL_156;
      }

      if (state == 3)
      {
        v83 = sub_10002D6B4();
        v84 = _NRLogIsLevelEnabled();

        if (!v84)
        {
          goto LABEL_154;
        }

        goto LABEL_128;
      }

      if (v17)
      {
        if ([(NSMutableSet *)v17->_connectedPipes count])
        {
          goto LABEL_122;
        }
      }

      else if ([0 count])
      {
LABEL_122:
        v85 = sub_10002D6B4();
        v86 = _NRLogIsLevelEnabled();

        if (!v86)
        {
          goto LABEL_154;
        }

        goto LABEL_132;
      }

      if (v17)
      {
        v17->_state = 1;
        v17->_flags &= ~2u;
      }

      [v5 reportEvent:4201 detailsFormat:@"%s %s %@", "High", "p2pPipe", v14];
      v110 = *(v5 + 48);
      v135[0] = CBScalablePipeOptionTransport;
      v111 = v110;
      v112 = [NSNumber numberWithInteger:sub_100037BE4()];
      v135[1] = CBScalablePipeOptionStayConnectedWhenIdle;
      v136[0] = v112;
      v136[1] = &__kCFBooleanTrue;
      v113 = [NSDictionary dictionaryWithObjects:v136 forKeys:v135 count:2];
      v114 = @"com.apple.terminusLink.urgent.p2p";
LABEL_175:
      [v111 registerEndpoint:v114 type:v15 priority:2 options:v113];

      goto LABEL_156;
    }

    v48 = sub_100037B38(v5, 2, 0);
    v17 = v48;
    if (v48)
    {
      v49 = v48->_state;
      if (v49 == 1)
      {
        v64 = sub_10002D6B4();
        v65 = _NRLogIsLevelEnabled();

        if (!v65)
        {
          goto LABEL_156;
        }

        goto LABEL_84;
      }

      if (v49 == 2)
      {
        v50 = sub_10002D6B4();
        v51 = _NRLogIsLevelEnabled();

        if (!v51)
        {
          goto LABEL_156;
        }

        goto LABEL_70;
      }
    }

    else
    {
      v49 = 0;
    }

    if ([*(v5 + 48) state] != 5)
    {
      goto LABEL_156;
    }

    if (v49 == 3)
    {
      v87 = sub_10002D6B4();
      v88 = _NRLogIsLevelEnabled();

      if (!v88)
      {
        goto LABEL_154;
      }

      goto LABEL_128;
    }

    if (v17)
    {
      if ([(NSMutableSet *)v17->_connectedPipes count])
      {
        goto LABEL_131;
      }
    }

    else if ([0 count])
    {
LABEL_131:
      v91 = sub_10002D6B4();
      v92 = _NRLogIsLevelEnabled();

      if (!v92)
      {
        goto LABEL_154;
      }

      goto LABEL_132;
    }

    if (v17)
    {
      v17->_state = 1;
      v17->_flags &= ~2u;
    }

    [v5 reportEvent:4201 detailsFormat:@"%s %s %@", "High", "pipe", v14];
    v115 = *(v5 + 48);
    v133[0] = CBScalablePipeOptionTransport;
    v111 = v115;
    v112 = [NSNumber numberWithInteger:sub_100037BE4()];
    v133[1] = CBScalablePipeOptionStayConnectedWhenIdle;
    v134[0] = v112;
    v134[1] = &__kCFBooleanTrue;
    v113 = [NSDictionary dictionaryWithObjects:v134 forKeys:v133 count:2];
    v114 = @"com.apple.terminusLink.urgent";
    goto LABEL_175;
  }

  if ((*(v5 + 39) & 1) == 0)
  {
    return;
  }

LABEL_14:
  v14 = @"PeerToPeer";
  v15 = 2;
  if (a2 == 2)
  {
    goto LABEL_60;
  }

LABEL_15:
  if (a2 == 1)
  {
    if (a3)
    {
      v16 = sub_100037B38(v5, 1, 1);
      v17 = v16;
      if (!v16)
      {
        v18 = 0;
LABEL_98:
        if ([*(v5 + 48) state] != 5)
        {
          goto LABEL_156;
        }

        if (v18 == 3)
        {
          v75 = sub_10002D6B4();
          v76 = _NRLogIsLevelEnabled();

          if (!v76)
          {
            goto LABEL_154;
          }

LABEL_128:
          v89 = sub_10002D6B4();
          v90 = v89;
LABEL_147:
          _NRLogWithArgs(v89, 0, "%s%.30s:%-4d Deferring registering %s priority %s as the pipe is being unregistered");
LABEL_153:

LABEL_154:
          if (v17)
          {
            v17->_flags |= 2u;
          }

          goto LABEL_156;
        }

        if (v17)
        {
          if ([(NSMutableSet *)v17->_connectedPipes count])
          {
            goto LABEL_104;
          }
        }

        else if ([0 count])
        {
LABEL_104:
          v77 = sub_10002D6B4();
          v78 = _NRLogIsLevelEnabled();

          if (!v78)
          {
            goto LABEL_154;
          }

LABEL_132:
          v93 = sub_10002D6B4();
          v90 = v93;
LABEL_152:
          _NRLogWithArgs(v93, 0, "%s%.30s:%-4d Deferring registering %s priority %s as its pipes are still connected");
          goto LABEL_153;
        }

        if (v17)
        {
          v17->_state = 1;
          v17->_flags &= ~2u;
        }

        [v5 reportEvent:4201 detailsFormat:@"%s %s %@", "Medium", "p2pPipe", v14];
        v102 = *(v5 + 48);
        v139[0] = CBScalablePipeOptionTransport;
        v53 = v102;
        v103 = [NSNumber numberWithInteger:sub_100037BE4()];
        v139[1] = CBScalablePipeOptionStayConnectedWhenIdle;
        v140[0] = v103;
        v140[1] = &__kCFBooleanTrue;
        v104 = [NSDictionary dictionaryWithObjects:v140 forKeys:v139 count:2];
        v105 = @"com.apple.terminusLink.p2p";
        goto LABEL_166;
      }

      v18 = v16->_state;
      if (v18 != 1)
      {
        if (v18 == 2)
        {
          v19 = sub_10002D6B4();
          v20 = _NRLogIsLevelEnabled();

          if (!v20)
          {
            goto LABEL_156;
          }

LABEL_70:
          v52 = sub_10002D6B4();
          v53 = v52;
LABEL_90:
          _NRLogWithArgs(v52, 1, "%s%.30s:%-4d %s %s already registered");
          goto LABEL_96;
        }

        goto LABEL_98;
      }

      v58 = sub_10002D6B4();
      v59 = _NRLogIsLevelEnabled();

      if (!v59)
      {
        goto LABEL_156;
      }

      goto LABEL_84;
    }

    v40 = sub_100037B38(v5, 1, 0);
    v17 = v40;
    if (!v40)
    {
      v41 = 0;
      goto LABEL_107;
    }

    v41 = v40->_state;
    if (v41 != 1)
    {
      if (v41 == 2)
      {
        v42 = sub_10002D6B4();
        v43 = _NRLogIsLevelEnabled();

        if (!v43)
        {
          goto LABEL_156;
        }

        goto LABEL_70;
      }

LABEL_107:
      if ([*(v5 + 48) state] != 5)
      {
        goto LABEL_156;
      }

      if (v41 == 3)
      {
        v79 = sub_10002D6B4();
        v80 = _NRLogIsLevelEnabled();

        if (!v80)
        {
          goto LABEL_154;
        }

        goto LABEL_128;
      }

      if (v17)
      {
        if ([(NSMutableSet *)v17->_connectedPipes count])
        {
          goto LABEL_113;
        }
      }

      else if ([0 count])
      {
LABEL_113:
        v81 = sub_10002D6B4();
        v82 = _NRLogIsLevelEnabled();

        if (!v82)
        {
          goto LABEL_154;
        }

        goto LABEL_132;
      }

      if (v17)
      {
        v17->_state = 1;
        v17->_flags &= ~2u;
      }

      [v5 reportEvent:4201 detailsFormat:@"%s %s %@", "Medium", "pipe", v14];
      v106 = *(v5 + 48);
      v137[0] = CBScalablePipeOptionTransport;
      v53 = v106;
      v103 = [NSNumber numberWithInteger:sub_100037BE4()];
      v137[1] = CBScalablePipeOptionStayConnectedWhenIdle;
      v138[0] = v103;
      v138[1] = &__kCFBooleanTrue;
      v104 = [NSDictionary dictionaryWithObjects:v138 forKeys:v137 count:2];
      v105 = @"com.apple.terminusLink";
LABEL_166:
      v107 = v53;
      v108 = v15;
      v109 = 1;
LABEL_185:
      [v107 registerEndpoint:v105 type:v108 priority:v109 options:v104];

      goto LABEL_96;
    }

    v60 = sub_10002D6B4();
    v61 = _NRLogIsLevelEnabled();

    if (!v61)
    {
      goto LABEL_156;
    }

LABEL_84:
    v66 = sub_10002D6B4();
    v53 = v66;
LABEL_95:
    _NRLogWithArgs(v66, 1, "%s%.30s:%-4d %s %s already registering");
LABEL_96:

    goto LABEL_156;
  }

  if (a2 != 3)
  {
    return;
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v17 = *(v5 + 40);
  v36 = [(NRCBScalablePipeRegistrationState *)v17 countByEnumeratingWithState:&v120 objects:v132 count:16];
  if (!v36)
  {
    goto LABEL_156;
  }

  v37 = v36;
  v38 = *v121;
  while (2)
  {
    for (i = 0; i != v37; i = i + 1)
    {
      if (*v121 != v38)
      {
        objc_enumerationMutation(v17);
      }

      if ([*(*(&v120 + 1) + 8 * i) state] == 8)
      {

        if (a3)
        {
          v54 = sub_100037B38(v5, 3, 1);
          v17 = v54;
          if (!v54)
          {
            v55 = 0;
LABEL_134:
            if ([*(v5 + 48) state] != 5)
            {
              goto LABEL_156;
            }

            if (v55 == 3)
            {
              v94 = sub_10002D6B4();
              v95 = _NRLogIsLevelEnabled();

              if (!v95)
              {
                goto LABEL_154;
              }

LABEL_146:
              v89 = sub_10002D6B4();
              v90 = v89;
              goto LABEL_147;
            }

            if (v17)
            {
              if ([(NSMutableSet *)v17->_connectedPipes count])
              {
                goto LABEL_140;
              }
            }

            else if ([0 count])
            {
LABEL_140:
              v96 = sub_10002D6B4();
              v97 = _NRLogIsLevelEnabled();

              if (!v97)
              {
                goto LABEL_154;
              }

LABEL_151:
              v93 = sub_10002D6B4();
              v90 = v93;
              goto LABEL_152;
            }

            if (v17)
            {
              v17->_state = 1;
              v17->_flags &= ~2u;
            }

            [v5 reportEvent:4201 detailsFormat:@"%s %s %@", "Isochronous", "p2pPipe", v14];
            v116 = *(v5 + 48);
            v130[0] = CBScalablePipeOptionTransport;
            v53 = v116;
            v103 = [NSNumber numberWithInteger:sub_100037BE4()];
            v130[1] = CBScalablePipeOptionStayConnectedWhenIdle;
            v131[0] = v103;
            v131[1] = &__kCFBooleanTrue;
            v104 = [NSDictionary dictionaryWithObjects:v131 forKeys:v130 count:2];
            v105 = @"com.apple.terminusLink.datagram.p2p";
LABEL_184:
            v107 = v53;
            v108 = v15;
            v109 = 3;
            goto LABEL_185;
          }

          v55 = v54->_state;
          if (v55 != 1)
          {
            if (v55 == 2)
            {
              v56 = sub_10002D6B4();
              v57 = _NRLogIsLevelEnabled();

              if (!v57)
              {
                goto LABEL_156;
              }

LABEL_89:
              v52 = sub_10002D6B4();
              v53 = v52;
              goto LABEL_90;
            }

            goto LABEL_134;
          }

          v71 = sub_10002D6B4();
          v72 = _NRLogIsLevelEnabled();

          if (!v72)
          {
            goto LABEL_156;
          }

LABEL_94:
          v66 = sub_10002D6B4();
          v53 = v66;
          goto LABEL_95;
        }

        v67 = sub_100037B38(v5, 3, 0);
        v17 = v67;
        if (v67)
        {
          v68 = v67->_state;
          if (v68 == 1)
          {
            v73 = sub_10002D6B4();
            v74 = _NRLogIsLevelEnabled();

            if (!v74)
            {
              goto LABEL_156;
            }

            goto LABEL_94;
          }

          if (v68 == 2)
          {
            v69 = sub_10002D6B4();
            v70 = _NRLogIsLevelEnabled();

            if (!v70)
            {
              goto LABEL_156;
            }

            goto LABEL_89;
          }
        }

        else
        {
          v68 = 0;
        }

        if ([*(v5 + 48) state] != 5)
        {
          goto LABEL_156;
        }

        if (v68 == 3)
        {
          v98 = sub_10002D6B4();
          v99 = _NRLogIsLevelEnabled();

          if (!v99)
          {
            goto LABEL_154;
          }

          goto LABEL_146;
        }

        if (v17)
        {
          if ([(NSMutableSet *)v17->_connectedPipes count])
          {
            goto LABEL_150;
          }
        }

        else if ([0 count])
        {
LABEL_150:
          v100 = sub_10002D6B4();
          v101 = _NRLogIsLevelEnabled();

          if (!v101)
          {
            goto LABEL_154;
          }

          goto LABEL_151;
        }

        if (v17)
        {
          v17->_state = 1;
          v17->_flags &= ~2u;
        }

        [v5 reportEvent:4201 detailsFormat:@"%s %s %@", "Isochronous", "pipe", v14];
        v117 = *(v5 + 48);
        v128[0] = CBScalablePipeOptionTransport;
        v53 = v117;
        v103 = [NSNumber numberWithInteger:sub_100037BE4()];
        v128[1] = CBScalablePipeOptionStayConnectedWhenIdle;
        v129[0] = v103;
        v129[1] = &__kCFBooleanTrue;
        v104 = [NSDictionary dictionaryWithObjects:v129 forKeys:v128 count:2];
        v105 = @"com.apple.terminusLink.datagram";
        goto LABEL_184;
      }
    }

    v37 = [(NRCBScalablePipeRegistrationState *)v17 countByEnumeratingWithState:&v120 objects:v132 count:16];
    if (v37)
    {
      continue;
    }

    break;
  }

LABEL_156:
}

uint64_t sub_100037950(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 152);
    if (!v4)
    {
      goto LABEL_19;
    }

    v14 = v3;
    v5 = [v4 objectForKeyedSubscript:v3];
    if (v5)
    {
      v6 = v5;
      if (*(v5 + 8) == 1)
      {
        nr_continuous_time();
        NRDiffMachTimeInSeconds();
        v8 = v7;
        v9 = objc_alloc_init(NRAnalyticsLinkManagerBluetooth);
        v10 = v9;
        if (v9)
        {
          v9->_pipeConnectedDuration = v8;
        }

        [(NRAnalyticsLinkManagerBluetooth *)v9 submit];
      }

      else
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228F70 != -1)
          {
            dispatch_once(&qword_100228F70, &stru_1001FA8E0);
          }

          _NRLogWithArgs(qword_100228F68, 17, "invalid pipe state %@", v6);
        }
      }
    }

    else
    {
      v6 = objc_alloc_init(NRCBScalablePipeConnectionState);
      if (!v6)
      {
        nr_continuous_time();
LABEL_17:
        [*(a1 + 152) setObject:v6 forKeyedSubscript:v14];
LABEL_18:

        v3 = v14;
        goto LABEL_19;
      }
    }

    v6->_state = 2;
    v6->_timeOfDisconnect = nr_continuous_time();
    goto LABEL_17;
  }

  v14 = 0;
  v11 = sub_10002D6B4();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  v3 = 0;
  if (IsLevelEnabled)
  {
    v6 = sub_10002D6B4();
    _NRLogWithArgs(v6, 17, "%s called with null nrUUID", "[NRLinkManagerBluetooth cleanupPipeStateIfNeededForNRUUID:]");
    goto LABEL_18;
  }

LABEL_19:

  return _objc_release_x1(v4, v3);
}

NRCBScalablePipeRegistrationState *sub_100037B38(uint64_t a1, uint64_t a2, int a3)
{
  v4 = &OBJC_IVAR___NRLinkManagerBluetooth__pipeRegistrations;
  if (a3)
  {
    v4 = &OBJC_IVAR___NRLinkManagerBluetooth__p2pPipeRegistrations;
  }

  v5 = *(a1 + *v4);
  v6 = [NSNumber numberWithInteger:a2];
  v7 = [v5 objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = objc_alloc_init(NRCBScalablePipeRegistrationState);
    [v5 setObject:v7 forKeyedSubscript:v6];
  }

  return v7;
}

uint64_t sub_100037BE4()
{
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v0 = qword_1002290B8;
  if (v0)
  {
    if (v0[10])
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = 1;
  }

  return v1;
}

void sub_100037C64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v21 = a1;
    nr_continuous_time();
    v3 = objc_alloc_init(NSMutableArray);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v4 = WeakRetained[25];
    v5 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v27;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v26 + 1) + 8 * i);
          v10 = [WeakRetained[25] objectForKeyedSubscript:v9];
          [v10 unsignedLongLongValue];
          NRDiffMachTimeInSeconds();
          if (v11 >= 60.0)
          {
            if (qword_100228F70 != -1)
            {
              dispatch_once(&qword_100228F70, &stru_1001FA8E0);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_100228F70 != -1)
              {
                dispatch_once(&qword_100228F70, &stru_1001FA8E0);
              }

              _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d Removing %@ from quarantine after timeout", "", "[NRLinkManagerBluetooth startUpdatePairingInfoQuarantineTimerIfNeeded]_block_invoke", 1078, v9);
            }

            [v3 addObject:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v6);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = v3;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * j);
          v18 = [WeakRetained[26] objectForKeyedSubscript:v17];
          [WeakRetained[25] removeObjectForKey:v17];
          if (v18)
          {
            v18[2](v18);
            [WeakRetained[26] removeObjectForKey:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v14);
    }

    if (![WeakRetained[25] count])
    {
      dispatch_source_cancel(*(v21 + 32));
      v19 = *(v21 + 40);
      if (v19)
      {
        v20 = *(v19 + 144);
        *(v19 + 144) = 0;
      }
    }
  }
}

uint64_t sub_100038C64(char *a1, uint64_t a2, int a3)
{
  v6 = &OBJC_IVAR___NRLinkManagerBluetooth__pipeRegistrations;
  if (a3)
  {
    v6 = &OBJC_IVAR___NRLinkManagerBluetooth__p2pPipeRegistrations;
  }

  v7 = *&a1[*v6];
  v8 = [NSNumber numberWithInteger:a2];
  v12 = [v7 objectForKeyedSubscript:v8];

  v10 = v12;
  if (v12)
  {
    if ((*(v12 + 9) & 0xA) != 0 && !*(v12 + 8))
    {
      v9 = [*(v12 + 16) count];
      v10 = v12;
      if (!v9)
      {
        if ((*(v12 + 9) & 8) != 0)
        {
          *(v12 + 9) &= ~8u;
          [a1 reportEvent:4215];
        }

        sub_100036770(a1, a2, a3);
        v10 = v12;
      }
    }
  }

  return _objc_release_x1(v9, v10);
}

void sub_1000391F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = WeakRetained[2];
  }

  v4 = [WeakRetained containsObject:*(a1 + 32)];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v7 = v6;
    if (!v5)
    {
LABEL_89:

      return;
    }

    if (!v6)
    {
      v70 = sub_10002D6B4();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_89;
      }

      v13 = sub_10002D6B4();
      _NRLogWithArgs(v13, 17, "%s called with null pipe", "[NRLinkManagerBluetooth pipeisAvailable:]");
      goto LABEL_88;
    }

    v8 = v5[3];
    dispatch_assert_queue_V2(v8);

    v9 = [v7 peer];
    v10 = [v9 identifier];

    v11 = [v7 priority];
    v12 = [v7 priority];
    v13 = v10;
    objc_opt_self();
    v14 = sub_100168BE8(NRDLocalDevice, v13, 1);

    if (!v14 || (v14->_databaseFlags & 2) == 0)
    {
      v72 = sub_10002D6B4();
      v73 = _NRLogIsLevelEnabled();

      if (v73)
      {
        v74 = sub_10002D6B4();
        _NRLogWithArgs(v74, 16, "%s%.30s:%-4d Not creating link for disabled device %@ with pipe %@", "", "[NRLinkManagerBluetooth pipeisAvailable:]", 1119, v14, v7);
      }

      [v5 reportEvent:3101 detailsFormat:@"%@ is disabled for pipe %@", v14, v7];
      goto LABEL_87;
    }

    v15 = v14->_nrUUID;
    v16 = [v5 shouldCreateLinkForNRUUID:v15];

    if ((v16 & 1) == 0)
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        _NRLogWithArgs(qword_100228F68, 16, "%s%.30s:%-4d Not creating link for unsupported device %@ with pipe %@", "", "[NRLinkManagerBluetooth pipeisAvailable:]", 1124, v14, v7);
      }

      [v5 reportEvent:3101 detailsFormat:@"%@ is unsupported for pipe %@", v14, v7];
      goto LABEL_87;
    }

    v79 = v7;
    if (v11 == 3)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v17 = v5[5];
      v18 = [v17 countByEnumeratingWithState:&v80 objects:v84 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v81;
LABEL_20:
        v21 = 0;
        while (1)
        {
          if (*v81 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v80 + 1) + 8 * v21);
          if (v22)
          {
            v23 = *(v22 + 391);
          }

          else
          {
            v23 = 0;
          }

          v24 = v23;
          if ([v24 isEqual:v13])
          {
            v25 = [v22 state];

            if (v25 != 255)
            {
              v7 = v79;
              sub_1000AE684(v22, v79);

              goto LABEL_87;
            }
          }

          else
          {
          }

          if (v19 == ++v21)
          {
            v19 = [v17 countByEnumeratingWithState:&v80 objects:v84 count:16];
            if (!v19)
            {
              break;
            }

            goto LABEL_20;
          }
        }
      }

LABEL_46:

LABEL_86:
      v7 = v79;
LABEL_87:

LABEL_88:
      goto LABEL_89;
    }

    if (v12 == 2)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v17 = v5[5];
      v26 = [v17 countByEnumeratingWithState:&v80 objects:v84 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v81;
LABEL_35:
        v29 = 0;
        while (1)
        {
          if (*v81 != v28)
          {
            objc_enumerationMutation(v17);
          }

          v30 = *(*(&v80 + 1) + 8 * v29);
          if (v30)
          {
            v31 = *(v30 + 391);
          }

          else
          {
            v31 = 0;
          }

          v32 = v31;
          if ([v32 isEqual:v13])
          {
            v33 = [v30 state];

            if (v33 != 255)
            {
              v7 = v79;
              sub_1000AF784(v30, v79);

              goto LABEL_87;
            }
          }

          else
          {
          }

          if (v27 == ++v29)
          {
            v27 = [v17 countByEnumeratingWithState:&v80 objects:v84 count:16];
            if (!v27)
            {
              goto LABEL_46;
            }

            goto LABEL_35;
          }
        }
      }

      goto LABEL_46;
    }

    v34 = v5[8];
    if (v34)
    {
      v78 = v14;
      v35 = v5[9];

      if (v35)
      {
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v36 = v5[9];
        v37 = [v36 countByEnumeratingWithState:&v80 objects:v84 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = 0;
          v40 = *v81;
LABEL_52:
          v42 = 0;
          while (1)
          {
            if (*v81 != v40)
            {
              objc_enumerationMutation(v36);
            }

            v43 = *(*(&v80 + 1) + 8 * v42);
            v44 = [v43 identifier];
            v45 = [v13 isEqual:v44];

            if (v45)
            {
              v41 = [v43 name];

              v39 = v41;
              if ([v41 length])
              {
                break;
              }
            }

            if (v38 == ++v42)
            {
              v38 = [v36 countByEnumeratingWithState:&v80 objects:v84 count:16];
              v41 = v39;
              if (!v38)
              {
                break;
              }

              goto LABEL_52;
            }
          }
        }

        else
        {
          v41 = 0;
        }

        v7 = v79;
      }

      else
      {
        v41 = 0;
      }

      v14 = v78;
    }

    else
    {
      v41 = 0;
    }

    if (![v41 length])
    {
      v46 = [NSString alloc];
      v85 = 0uLL;
      [v13 getUUIDBytes:&v85];
      v86 = v85;
      v47 = veor_s8(*v85.i8, *&vextq_s8(v85, v85, 8uLL));
      v86.i32[0] = v47.i32[0] ^ v47.i32[1];
      v48 = [[NSData alloc] initWithBytes:&v86 length:16];
      v49 = [v48 base64EncodedStringWithOptions:0];
      v50 = [v49 substringToIndex:6];

      v51 = [v46 initWithFormat:@"?%@", v50];
      v41 = v51;
    }

    v52 = objc_loadWeakRetained(v5 + 16);
    v53 = v14->_nrUUID;
    [v52 pipeDidConnectForNRUUID:1 nrUUID:v53];

    v54 = [NRLinkBluetooth alloc];
    v55 = v5[3];
    v56 = v14->_nrUUID;
    v57 = sub_1000B6370(v54, v55, v5, v56, v7, 0, v41);

    if (!v57)
    {
      v75 = sub_10002D6B4();
      v76 = _NRLogIsLevelEnabled();

      if (v76)
      {
        v77 = sub_10002D6B4();
        _NRLogWithArgs(v77, 16, "%s%.30s:%-4d Failed to create link for device %@ with pipe %@", "", "[NRLinkManagerBluetooth pipeisAvailable:]", 1178, v14, v79);
      }

      v63 = [v79 description];
      [v5 reportEvent:3101 details:v63];
      goto LABEL_85;
    }

    if (!sub_100033FC0(v5))
    {
      sub_100033D54(v5, 0);
    }

    v58 = v5[19];
    if (!v58)
    {
      v59 = objc_alloc_init(NSMutableDictionary);
      v60 = v5[19];
      v5[19] = v59;

      v58 = v5[19];
    }

    v61 = v58;
    v62 = v14->_nrUUID;
    v63 = [v61 objectForKeyedSubscript:v62];

    if (v63)
    {
      if (v63->_state == 2)
      {
        nr_continuous_time();
        NRDiffMachTimeInSeconds();
        v65 = v64;
        v66 = objc_alloc_init(NRAnalyticsLinkManagerBluetooth);
        v67 = v66;
        if (v66)
        {
          v66->_pipeDisconnectedDuration = v65;
        }

        [(NRAnalyticsLinkManagerBluetooth *)v66 submit];
      }

      else
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_83;
        }

        v67 = sub_10002D6B4();
        _NRLogWithArgs(v67, 17, "invalid pipe state %@", v63);
      }
    }

    else
    {
      v63 = objc_alloc_init(NRCBScalablePipeConnectionState);
      if (!v63)
      {
        nr_continuous_time();
LABEL_84:
        v68 = v5[19];
        v69 = v14->_nrUUID;
        [v68 setObject:v63 forKeyedSubscript:v69];

LABEL_85:
        goto LABEL_86;
      }
    }

LABEL_83:
    v63->_state = 1;
    v63->_timeOfConnect = nr_continuous_time();
    goto LABEL_84;
  }
}

void sub_10003A738(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 peer];
    v6 = [v5 identifier];
    v43 = sub_100168BE8(NRDLocalDevice, v6, 0);

    [a1 reportEvent:4018 detailsFormat:@" psm %u", objc_msgSend(v4, "PSM")];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = a1;
    v7 = [a1[5] copy];
    v8 = [v7 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v45;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v45 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v44 + 1) + 8 * i);
          v13 = v12;
          if (v12)
          {
            v14 = *(v12 + 407);
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;
          v16 = [v15 PSM];
          v17 = v4;
          v18 = [v4 PSM];

          if (v16 == v18 && v13)
          {
            [v13 setNoTransport:1];
            v13[273] = 1;
            [v13 cancelWithReason:@"L2CAP channel disconnected"];
          }

          v4 = v17;
        }

        v9 = [v7 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v9);
    }

    v19 = v43;
    if ((sub_10003615C(v42, v43) & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(v42 + 16);
      if (v43)
      {
        nrUUID = v43->_nrUUID;
      }

      else
      {
        nrUUID = 0;
      }

      v22 = nrUUID;
      [WeakRetained pipeDidConnectForNRUUID:0 nrUUID:v22];
    }

    v23 = v42[7];
    if (v23)
    {
      v24 = v23;
      v25 = sub_10002EC6C(v42, v43);

      if (v25)
      {
        if (sub_100033FC0(v42))
        {
          sub_1000347A4(v42);
        }

        else
        {
          if (qword_100228F70 != -1)
          {
            dispatch_once(&qword_100228F70, &stru_1001FA8E0);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228F70 != -1)
            {
              dispatch_once(&qword_100228F70, &stru_1001FA8E0);
            }

            _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d Not starting BT advertisements for disabled device %@ with channel %@", "", "[NRLinkManagerBluetooth processL2CAPChannelDisconnected:]", 2468, v43, v4);
          }
        }
      }
    }

    if ([v42[22] count])
    {
      v26 = v42[22];
      v27 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v4 PSM]);
      v28 = [v26 objectForKeyedSubscript:v27];

      v29 = [v4 peer];
      v30 = [v29 identifier];

      if (v30)
      {
        if (v28)
        {
          v31 = *(v28 + 24);
          v32 = [v4 peer];
          v33 = [v32 identifier];
          v34 = [v31 objectForKeyedSubscript:v33];

          if (v34)
          {
            v35 = *(v28 + 24);
            v36 = [v4 peer];
            v37 = [v36 identifier];
            [v35 setObject:0 forKeyedSubscript:v37];

            v38 = *(v28 + 16);
            v39 = v38;
            v40 = [v4 peer];
            v41 = [v40 identifier];
            (v38)[2](v39, 0, v41, [v4 PSM]);
          }
        }
      }

      else
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228F70 != -1)
          {
            dispatch_once(&qword_100228F70, &stru_1001FA8E0);
          }

          _NRLogWithArgs(qword_100228F68, 17, "disconnected channel has no peer identifier %@", v4);
        }
      }

      v19 = v43;
    }
  }
}

void sub_10003B690(void *a1)
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

void sub_10003BD40(id *a1, void *a2, void *a3)
{
  v25 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [a1[15] objectForKeyedSubscript:v5];
    if (v25 | v6 && ![v25 isEqual:v6])
    {
      [a1[15] setObject:v25 forKeyedSubscript:v5];
      v7 = [v25 inputBytesPerSecond];
      v8 = [v7 unsignedIntValue];

      v9 = [v25 outputBytesPerSecond];
      v10 = [v9 unsignedIntValue];

      v11 = [v25 packetsPerSecond];
      v12 = [v11 unsignedIntValue];

      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d Applying BT link requirements %@ - InputBPS: %u, OutputBPS: %u, Packets/sec: %u", "", "[NRLinkManagerBluetooth applyLinkRequirements:forBTUUID:]", 897, v5, v8, v10, v12);
      }

      [a1[6] setLinkRequirementsForPeer:v5 withClientName:@"com.apple.terminusLink" packetsPerSecond:v12 inputBytesPerSecond:v8 outputBytesPerSecond:v10];
      v13 = [v25 isNotEmpty];
      v14 = [v6 isNotEmpty];
      if (v13)
      {
        if (v14)
        {
          [v25 setStartTime:{objc_msgSend(v6, "startTime")}];
          [v25 setReportedToABC:{objc_msgSend(v6, "reportedToABC")}];
        }

        else
        {
          [v25 setStartTime:nr_continuous_time()];
        }
      }

      else if (v14)
      {
        v15 = nr_continuous_time();
        v16 = objc_alloc_init(NRAnalyticsBluetoothAssertion);
        [v6 startTime];
        NRDiffMachTimeInSeconds();
        if (v16)
        {
          v16->_durationInSec = v17;
        }

        v18 = [a1[15] count];
        if (v16)
        {
          v16->_multipleAssertions = v18 != 0;
        }

        [(NRAnalyticsBluetoothAssertion *)v16 submit];
        sub_10003C2C0(v6, 1, v15);
      }

      if ([a1[15] count])
      {
        if (!a1[17])
        {
          v19 = a1[3];
          v20 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v19);

          dispatch_source_set_timer(v20, 0x8000000000000000, 0x8BB2C97000uLL, 0x12A05F200uLL);
          objc_initWeak(&location, a1);
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_10003C410;
          handler[3] = &unk_1001FD0D8;
          objc_copyWeak(&v28, &location);
          v21 = v20;
          v27 = v21;
          dispatch_source_set_event_handler(v21, handler);
          dispatch_resume(v21);
          objc_storeStrong(a1 + 17, v20);
          if (qword_100228F70 != -1)
          {
            dispatch_once(&qword_100228F70, &stru_1001FA8E0);
          }

          v22 = qword_100228F68;
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            if (qword_100228F70 != -1)
            {
              dispatch_once(&qword_100228F70, &stru_1001FA8E0);
            }

            v24 = qword_100228F68;
            _NRLogWithArgs(v24, 0, "%s%.30s:%-4d created timer source to monitor link requirements", "", "[NRLinkManagerBluetooth armLinkRequirementsTimer]", 985);
          }

          objc_destroyWeak(&v28);
          objc_destroyWeak(&location);
        }
      }

      else
      {
        sub_100032A1C(a1);
      }
    }

    else
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        _NRLogWithArgs(qword_100228F68, 1, "%s%.30s:%-4d Not applying same BT link requirements", "", "[NRLinkManagerBluetooth applyLinkRequirements:forBTUUID:]", 887);
      }
    }
  }
}

void sub_10003C244(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_10003C260(uint64_t a1)
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

  v4 = WeakRetained;
  [WeakRetained linkIsUnavailable:*(a1 + 40)];
}

void sub_10003C2C0(void *a1, int a2, uint64_t a3)
{
  v10 = a1;
  if (([v10 reportedToABC] & 1) == 0)
  {
    [v10 startTime];
    NRDiffMachTimeInSeconds();
    v5 = v4;
    if (v4 > 599.0)
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d detected long magnet assertion %.2fs", "", "[NRLinkManagerBluetooth triggerLinkRequirementsABCIfNeeded:shouldTrigger:now:]", 940, v5);
      }

      [v10 setReportedToABC:1];
      if (a2)
      {
        sub_10013C2A8(@"NRLinkManagerBluetooth", @"Bluetooth Assertion", @"exceeded threshold", 0, 0, v6, v7, v8, v9);
      }
    }
  }
}

void sub_10003C410(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[17] == *(a1 + 32))
  {
    v4 = nr_continuous_time();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3[15];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [v3[15] objectForKeyedSubscript:{*(*(&v15 + 1) + 8 * i), v15}];
          if (([v11 reportedToABC] & 1) == 0)
          {
            sub_10003C2C0(v11, 0, v4);
            v8 |= [v11 reportedToABC];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);

      if (v8)
      {
        sub_10013C2A8(@"NRLinkManagerBluetooth", @"Bluetooth Assertion", @"exceeded threshold", 0, 0, v12, v13, v14, v15);
      }
    }

    else
    {
    }
  }
}

void sub_10003C87C(uint64_t a1)
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
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      _NRLogWithArgs(qword_100228F68, 16, "%s%.30s:%-4d %@: link %@ is not in suspended state anymore", "", "[NRLinkManagerBluetooth linkIsSuspended:]_block_invoke", 1395, *(a1 + 40), *(a1 + 32));
    }
  }
}

void sub_10003CFD4(uint64_t a1)
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
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      _NRLogWithArgs(qword_100228F68, 16, "%s%.30s:%-4d %@: link %@ is not in ready state anymore", "", "[NRLinkManagerBluetooth linkIsReady:]_block_invoke", 1364, *(a1 + 40), *(a1 + 32));
    }
  }
}

void sub_10003D540(uint64_t a1)
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
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      _NRLogWithArgs(qword_100228F68, 16, "%s%.30s:%-4d %@: link %@ is not in initial state anymore", "", "[NRLinkManagerBluetooth linkIsAvailable:]_block_invoke", 1301, *(a1 + 40), *(a1 + 32));
    }
  }
}

void sub_10003E25C(uint64_t a1)
{
  if (a1 && *(a1 + 144))
  {
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d invalidating quarantine timer", "", "[NRLinkManagerBluetooth invalidateUpdatePairingInfoQuarantineTimer]", 1000);
    }

    dispatch_source_cancel(*(a1 + 144));
    v2 = *(a1 + 144);
    *(a1 + 144) = 0;
  }
}

id sub_10003E4E0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 count])
    {
      v3 = objc_alloc_init(NSMutableArray);
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v4 = [[NSSet alloc] initWithArray:v2];
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v12;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = [CBUUID UUIDWithNSUUID:*(*(&v11 + 1) + 8 * i), v11];
            [v3 addObject:v9];
          }

          v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v6);
      }
    }

    else
    {
      v3 = &__NSArray0__struct;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10003E818(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (v3 = *(v2 + 16)) != 0)
  {
    *(v2 + 16) = v3 - 1;
    if ([*(a1 + 32) isActive])
    {
      sub_10003EA58(*(a1 + 32), *(a1 + 40), 1);
      v4 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v6 = *(a1 + 32);
        if (v6)
        {
          v6 = v6[5];
        }

        v7 = v6;
        v8 = _NRCopyLogObjectForNRUUID();
        v9 = v8;
        v10 = *(a1 + 32);
        if (v10)
        {
          LODWORD(v10) = *(v10 + 16);
        }

        _NRLogWithArgs(v8, 0, "%s%.30s:%-4d Quick relay agent un-asserted (Total remaining assertions: %u)", "", "[NRQuickRelayAgent unassertAgentWithOptions:]_block_invoke", 297, v10);
      }

      v11 = *(a1 + 32);
      if (v11)
      {
        if (*(v11 + 16))
        {
          return;
        }

        WeakRetained = objc_loadWeakRetained((v11 + 64));
        v13 = *(a1 + 32);
        if (v13)
        {
          v14 = *(v13 + 40);
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        WeakRetained = 0;
        v14 = 0;
      }

      v23 = WeakRetained;
      [WeakRetained deviceHasQuickRelayRequest:v14 hasQuickRelayRequest:0];
    }

    else
    {
      v17 = _NRCopyLogObjectForNRUUID();
      v18 = _NRLogIsLevelEnabled();

      if (!v18)
      {
        return;
      }

      v19 = *(a1 + 32);
      if (v19)
      {
        v19 = v19[5];
      }

      v23 = v19;
      v20 = _NRCopyLogObjectForNRUUID();
      v21 = v20;
      v22 = *(a1 + 32);
      if (v22)
      {
        LODWORD(v22) = *(v22 + 16);
      }

      _NRLogWithArgs(v20, 0, "%s%.30s:%-4d Ignoring quick relay agent un-assert (Total remaining assertions: %u)", "", "[NRQuickRelayAgent unassertAgentWithOptions:]_block_invoke", 291, v22);
    }
  }

  else
  {
    v15 = _NRCopyLogObjectForNRUUID();
    v16 = _NRLogIsLevelEnabled();

    if (!v16)
    {
      return;
    }

    v23 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v23, 17, "Received an unexpected unassertAgent call");
  }
}

void sub_10003EA58(uint64_t a1, void *a2, int a3)
{
  if (!a1 || !a2)
  {
    return;
  }

  v5 = [a2 objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
  v18 = v5;
  if (!v5)
  {
    if (qword_100228F80 != -1)
    {
      dispatch_once(&qword_100228F80, &stru_1001FA970);
    }

    IsLevelEnabled = _NRLogIsLevelEnabled();
    v9 = 0;
    if (!IsLevelEnabled)
    {
      goto LABEL_23;
    }

    if (qword_100228F80 != -1)
    {
      dispatch_once(&qword_100228F80, &stru_1001FA970);
    }

    _NRLogWithArgs(qword_100228F78, 17, "no client UUID");
    goto LABEL_22;
  }

  v6 = v5;
  v7 = *(a1 + 88);
  if (v7)
  {
    if (a3)
    {
LABEL_6:
      [v7 setObject:0 forKeyedSubscript:v6];
LABEL_22:
      v9 = v18;
      goto LABEL_23;
    }
  }

  else
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = *(a1 + 88);
    *(a1 + 88) = v10;

    v6 = v18;
    v7 = *(a1 + 88);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  v12 = [v7 objectForKeyedSubscript:v6];

  v9 = v18;
  if (!v12)
  {
    v13 = [NWPath pathForClientID:v18];
    v14 = [v13 parameters];
    v15 = [v14 copyCParameters];

    if (v15)
    {
      pid = nw_parameters_get_pid();
      if (pid != getpid())
      {
        v17 = sub_10013CB6C(pid, 0);
        if (v17)
        {
          [*(a1 + 88) setObject:v17 forKeyedSubscript:v18];
        }
      }
    }

    goto LABEL_22;
  }

LABEL_23:
}

void sub_10003EC20(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228F78;
  qword_100228F78 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10003ED0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    ++*(v2 + 16);
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  if ([v3 isActive])
  {
    sub_10003EA58(*(a1 + 32), *(a1 + 40), 0);
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        v6 = v6[5];
      }

      v7 = v6;
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = v8;
      v10 = *(a1 + 32);
      if (v10)
      {
        LODWORD(v10) = *(v10 + 16);
      }

      _NRLogWithArgs(v8, 0, "%s%.30s:%-4d Quick relay agent asserted (Total active assertions: %u)", "", "[NRQuickRelayAgent assertAgentWithOptions:]_block_invoke", 273, v10);
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      WeakRetained = objc_loadWeakRetained((v11 + 64));
      v13 = *(a1 + 32);
      if (v13)
      {
        v14 = *(v13 + 40);
LABEL_13:
        v21 = WeakRetained;
        [WeakRetained deviceHasQuickRelayRequest:v14 hasQuickRelayRequest:1];
        goto LABEL_20;
      }
    }

    else
    {
      WeakRetained = 0;
    }

    v14 = 0;
    goto LABEL_13;
  }

  v15 = _NRCopyLogObjectForNRUUID();
  v16 = _NRLogIsLevelEnabled();

  if (!v16)
  {
    return;
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    v17 = v17[5];
  }

  v21 = v17;
  v18 = _NRCopyLogObjectForNRUUID();
  v19 = v18;
  v20 = *(a1 + 32);
  if (v20)
  {
    LODWORD(v20) = *(v20 + 16);
  }

  _NRLogWithArgs(v18, 0, "%s%.30s:%-4d Ignoring quick relay agent assert (Total active assertions: %u)", "", "[NRQuickRelayAgent assertAgentWithOptions:]_block_invoke", 267, v20);

LABEL_20:
}

id *sub_10003F294(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    if (v8)
    {
      if (v9)
      {
        v52.receiver = a1;
        v52.super_class = NRQuickRelayAgent;
        v11 = objc_msgSendSuper2(&v52, "init");
        if (v11)
        {
          v12 = v11;
          objc_storeStrong(v11 + 6, a3);
          objc_storeStrong(v12 + 5, a2);
          v13 = +[NSUUID UUID];
          [v12 setAgentUUID:v13];

          [v12 setUserActivated:1];
          [v12 setSpecificUseOnly:1];
          [v12 setAgentDescription:@"Quick relay netagent"];
          objc_storeWeak(v12 + 8, v10);
          v14 = [NSString alloc];
          v15 = [v12 agentUUID];
          v16 = [v15 UUIDString];
          v17 = [v14 initWithFormat:@"NRQuickRelayAgent-%@", v16];
          v18 = v12[9];
          v12[9] = v17;

          v19 = sub_100163A30(NRDLocalDevice, v12[5]);
          if (v19)
          {
            v20 = v19;
            v21 = [[NSString alloc] initWithFormat:@"%@", v19];
            v22 = v12[10];
            v12[10] = v21;

            v23 = v12[5];
            v24 = v12[10];
            v25 = v23;
            v26 = [v12 agentUUID];
            v27 = [v26 UUIDString];
            sub_1000059A8(v25, 17001, v24, v27);

            a1 = v12;
            goto LABEL_7;
          }

          v45 = sub_10003F784();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v47 = sub_10003F784();
            _NRLogWithArgs(v47, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRQuickRelayAgent initWithNRUUID:queue:delegate:]", 63);
          }

          v48 = _os_log_pack_size();
          v49 = __error();
          v50 = _os_log_pack_fill(&v51 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), v48, *v49, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
          *v50 = 136446210;
          *(v50 + 4) = "[NRQuickRelayAgent initWithNRUUID:queue:delegate:]";
LABEL_21:
          sub_10003F784();
          _NRLogAbortWithPack();
        }

        v40 = sub_10003F784();
        v41 = _NRLogIsLevelEnabled();

        if (v41)
        {
          v42 = sub_10003F784();
          _NRLogWithArgs(v42, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRQuickRelayAgent initWithNRUUID:queue:delegate:]", 50);
        }

        v43 = _os_log_pack_size();
        v44 = *__error();
        v34 = _os_log_pack_fill(&v51 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v44, &_mh_execute_header, "%{public}s [super init] failed");
      }

      else
      {
        v35 = sub_10003F784();
        v36 = _NRLogIsLevelEnabled();

        if (v36)
        {
          v37 = sub_10003F784();
          _NRLogWithArgs(v37, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (queue) != ((void*)0)", "", "[NRQuickRelayAgent initWithNRUUID:queue:delegate:]", 48);
        }

        v38 = _os_log_pack_size();
        v39 = *__error();
        v34 = _os_log_pack_fill(&v51 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v39, &_mh_execute_header, "%{public}s Assertion Failed: (queue) != ((void*)0)");
      }
    }

    else
    {
      v29 = sub_10003F784();
      v30 = _NRLogIsLevelEnabled();

      if (v30)
      {
        v31 = sub_10003F784();
        _NRLogWithArgs(v31, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nrUUID) != ((void*)0)", "", "[NRQuickRelayAgent initWithNRUUID:queue:delegate:]", 47);
      }

      v32 = _os_log_pack_size();
      v33 = *__error();
      v34 = _os_log_pack_fill(&v51 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v33, &_mh_execute_header, "%{public}s Assertion Failed: (nrUUID) != ((void*)0)");
    }

    *v34 = 136446210;
    *(v34 + 4) = "[NRQuickRelayAgent initWithNRUUID:queue:delegate:]";
    goto LABEL_21;
  }

LABEL_7:

  return a1;
}

id sub_10003F784()
{
  if (qword_100228F80 != -1)
  {
    dispatch_once(&qword_100228F80, &stru_1001FA970);
  }

  v1 = qword_100228F78;

  return v1;
}

void sub_10003F7D8(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 48));
    if ([a1 isActive])
    {
      [a1 setActive:0];
      [*(a1 + 56) updateNetworkAgent:a1];
      v2 = *(a1 + 40);
      v3 = *(a1 + 80);
      v4 = v2;
      v5 = [a1 agentUUID];
      v6 = [v5 UUIDString];
      sub_1000059A8(v4, 17004, v3, v6);

      WeakRetained = objc_loadWeakRetained((a1 + 64));
      [WeakRetained deviceHasQuickRelayRequest:*(a1 + 40) hasQuickRelayRequest:0];

      v8 = *(a1 + 88);
      *(a1 + 88) = 0;
    }
  }
}

void sub_10003F8D8(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 48));
    if (([a1 isActive] & 1) == 0)
    {
      [a1 setActive:1];
      [*(a1 + 56) updateNetworkAgent:a1];
      if (*(a1 + 16))
      {
        WeakRetained = objc_loadWeakRetained((a1 + 64));
        [WeakRetained deviceHasQuickRelayRequest:*(a1 + 40) hasQuickRelayRequest:1];
      }

      v3 = *(a1 + 40);
      v4 = *(a1 + 80);
      v7 = v3;
      v5 = [a1 agentUUID];
      v6 = [v5 UUIDString];
      sub_1000059A8(v7, 17005, v4, v6);
    }
  }
}

void sub_10003FFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100040008()
{
  if (qword_100228F90 != -1)
  {
    dispatch_once(&qword_100228F90, &stru_1001FAA30);
  }

  v1 = qword_100228F88;

  return v1;
}

void sub_10004005C(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v4 = [WeakRetained state] == 255;
    WeakRetained = v12;
    if (!v4)
    {
      v5 = _NRCopyLogObjectForNRUUID();
      if (a2)
      {
        IsLevelEnabled = _NRLogIsLevelEnabled();

        WeakRetained = v12;
        if (!IsLevelEnabled)
        {
          goto LABEL_10;
        }

        v7 = _NRCopyLogObjectForNRUUID();
        v8 = [v12 copyDescription];
        _NRLogWithArgs(v7, 0, "%s%.30s:%-4d %@: Received response to control notify", "", "[NRLinkWiFi sendControlData:]_block_invoke", 1306, v8);
      }

      else
      {
        v9 = _NRLogIsLevelEnabled();

        if (v9)
        {
          v10 = _NRCopyLogObjectForNRUUID();
          v11 = [v12 copyDescription];
          _NRLogWithArgs(v10, 16, "%s%.30s:%-4d %@: Did not receive response to control notify", "", "[NRLinkWiFi sendControlData:]_block_invoke", 1308, v11);
        }

        [v12 cancelWithReason:@"peer is NOT available (Did not receive response to control notify)"];
      }

      WeakRetained = v12;
    }
  }

LABEL_10:
}

void sub_1000401B0(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228F88;
  qword_100228F88 = v1;

  _objc_release_x1(v1, v2);
}

id sub_1000409E8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    if ([a1 state] == 255 || !objc_msgSend(v1, "shouldSendIDSDeviceID"))
    {
      a1 = 0;
    }

    else
    {
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v2 = qword_1002290B8;
      v3 = sub_1000CAD2C(v2, 0);

      if (v3)
      {
        v4 = [v3 dataUsingEncoding:4];
        v5 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48607 notifyData:v4];
      }

      else
      {
        objc_initWeak(&location, v1);
        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v6 = qword_1002290B8;
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_1000435D0;
        v8[3] = &unk_1001FBF00;
        objc_copyWeak(&v9, &location);

        objc_destroyWeak(&v9);
        objc_destroyWeak(&location);
        v5 = 0;
      }

      a1 = v5;
    }
  }

  return a1;
}

void sub_100040BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100040BCC(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 295);
    if (v2)
    {
      [v2 setClientQueue:*(a1 + 8)];
      objc_initWeak(location, a1);
      v3 = *(a1 + 295);
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100041114;
      v36[3] = &unk_1001FC090;
      objc_copyWeak(&v38, location);
      v4 = v3;
      v37 = v4;
      [*(a1 + 295) setStateUpdateBlock:v36];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100041A2C;
      v33[3] = &unk_1001FB088;
      objc_copyWeak(&v35, location);
      v5 = v4;
      v34 = v5;
      [*(a1 + 295) setChildStateUpdateBlock:v33];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100041BFC;
      v30[3] = &unk_1001FB0B0;
      objc_copyWeak(&v32, location);
      v6 = v5;
      v31 = v6;
      [*(a1 + 295) setConfigurationUpdateBlock:v30];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100041CD8;
      v27[3] = &unk_1001FB0D8;
      objc_copyWeak(&v29, location);
      v7 = v6;
      v28 = v7;
      [*(a1 + 295) setTrafficSelectorUpdateBlock:v27];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100041DD8;
      v24[3] = &unk_1001FC108;
      objc_copyWeak(&v26, location);
      v8 = v7;
      v25 = v8;
      [*(a1 + 295) setAdditionalAddressesUpdateBlock:v24];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100041EB4;
      v21[3] = &unk_1001FD0D8;
      objc_copyWeak(&v23, location);
      v9 = v8;
      v22 = v9;
      [*(a1 + 295) setShortDPDEventBlock:v21];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100041F88;
      v18[3] = &unk_1001FC108;
      objc_copyWeak(&v20, location);
      v10 = v9;
      v19 = v10;
      [*(a1 + 295) setPrivateNotifyStatusEvent:v18];
      v11 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v13 = _NRCopyLogObjectForNRUUID();
        v14 = [a1 copyDescription];
        _NRLogWithArgs(v13, 0, "%s%.30s:%-4d %@: Setup IKE classC callbacks %@", "", "[NRLinkWiFi setupIKECallbacksClassC]", 996, v14, v10);
      }

      objc_destroyWeak(&v20);
      objc_destroyWeak(&v23);

      objc_destroyWeak(&v26);
      objc_destroyWeak(&v29);

      objc_destroyWeak(&v32);
      objc_destroyWeak(&v35);

      objc_destroyWeak(&v38);
      objc_destroyWeak(location);
    }

    else
    {
      v15 = sub_100040008();
      v16 = _NRLogIsLevelEnabled();

      if (v16)
      {
        v17 = sub_100040008();
        _NRLogWithArgs(v17, 17, "%s called with null _ikeSessionClassC", "[NRLinkWiFi setupIKECallbacksClassC]");
      }
    }
  }
}

void sub_100041080(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v6 + 40));
  objc_destroyWeak((v5 + 40));
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v7 - 120));
  objc_destroyWeak((v7 - 112));
  _Unwind_Resume(a1);
}

void sub_100041114(uint64_t a1, uint64_t a2, void *a3)
{
  v70 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v70)
    {
      if (([WeakRetained ikeClassCEstablished] & 1) == 0)
      {
        v6 = nr_absolute_time();
        v7 = *(WeakRetained + 311);
        if (v7)
        {
          *(v7 + 48) = v6;
        }
      }

      [WeakRetained setIkeClassDEstablished:0];
      [WeakRetained setIkeClassCEstablished:0];
      WeakRetained[83] = 0;
      v8 = NEIKEv2ErrorDomain;
      v9 = v70;
      if ([v9 code] == 4)
      {
        v10 = [v9 domain];
        v11 = [v10 isEqualToString:v8];

        if (v11)
        {
          v12 = *(a1 + 32);
          SessionStateString = NEIKEv2CreateSessionStateString();
          [WeakRetained cancelWithReason:{@"ClassC session %@ got IKE error %@ with state %@", v12, v9, SessionStateString}];
LABEL_71:

          goto LABEL_72;
        }
      }

      else
      {
      }

      v21 = *(a1 + 32);
      v22 = NEIKEv2CreateSessionStateString();
      [WeakRetained reportEvent:3018 detailsFormat:@"ClassC session %@ got IKE error %@ with state %@", v21, v9, v22];

      [WeakRetained processIKEDisconnection:3 error:v9];
      if ([WeakRetained state] == 255)
      {
        goto LABEL_72;
      }

      v23 = v9;
      if ([v23 code] == 24)
      {
        v24 = NEIKEv2ProtocolErrorDomain;
        v25 = [v23 domain];
        LOBYTE(v24) = [v25 isEqualToString:v24];

        if (v24)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }

      v26 = v23;
      if ([v26 code] == 8)
      {
        v27 = [v26 domain];
        v28 = [v27 isEqualToString:v8];

        if (v28)
        {
LABEL_26:
          sub_10004230C(WeakRetained);
          goto LABEL_72;
        }
      }

      else
      {
      }

      sub_100042448(WeakRetained);
      goto LABEL_72;
    }

    v14 = *(a1 + 32);
    v15 = NEIKEv2CreateSessionStateString();
    [WeakRetained reportEvent:3009 detailsFormat:@"ClassC session %@ changed state to %@", v14, v15];

    if (a2 > 2)
    {
      if (a2 != 3)
      {
        if (a2 == 4)
        {
          [WeakRetained cancelWithReason:{@"ClassC session %@ got unexpected MOBIKE state", *(a1 + 32)}];
          goto LABEL_72;
        }

LABEL_29:
        SessionStateString = NEIKEv2CreateSessionStateString();
        [WeakRetained cancelWithReason:{@"ClassC session %@ got bad IKE state %@", SessionStateString, v68, v69}];
        goto LABEL_71;
      }

      if (([WeakRetained ikeClassCEstablished] & 1) == 0)
      {
        v33 = nr_absolute_time();
        v34 = *(WeakRetained + 311);
        if (v34)
        {
          *(v34 + 48) = v33;
        }
      }

      [WeakRetained setIkeClassDEstablished:0];
      [WeakRetained setIkeClassCEstablished:0];
      WeakRetained[83] = 0;
      [WeakRetained reportEvent:3018 detailsFormat:@"ClassC session %@ cancelled by peer", *(a1 + 32)];
      [WeakRetained cancelWithReason:@"ClassC session %@ cancelled by peer"];
    }

    else
    {
      if (a2 != 1)
      {
        if (a2 == 2)
        {
          [WeakRetained setIkeClassDEstablished:1];
          [WeakRetained setIkeClassCEstablished:1];
          v16 = [WeakRetained state];
          v17 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (v16 == 8)
          {
            if (IsLevelEnabled)
            {
              v19 = _NRCopyLogObjectForNRUUID();
              v20 = [WeakRetained copyDescription];
              _NRLogWithArgs(v19, 0, "%s%.30s:%-4d %@: ClassC IKE %@ already ready", "", "[NRLinkWiFi setupIKECallbacksClassC]_block_invoke", 853, v20, *(a1 + 32));
            }
          }

          else
          {
            if (IsLevelEnabled)
            {
              v35 = _NRCopyLogObjectForNRUUID();
              v36 = [WeakRetained copyDescription];
              _NRLogWithArgs(v35, 0, "%s%.30s:%-4d %@: ClassC IKE %@ now connected from started", "", "[NRLinkWiFi setupIKECallbacksClassC]_block_invoke", 855, v36, *(a1 + 32));
            }

            [WeakRetained setPowerAssertionState:0];
            [WeakRetained changeStateTo:8 detailsFormat:@"(ClassC IKE %@ connected after received first notify)", *(a1 + 32)];
            v37 = nr_absolute_time();
            v38 = *(WeakRetained + 311);
            if (v38)
            {
              *(v38 + 48) = v37;
            }

            *(WeakRetained + 263) = 0;
            sub_100043264(WeakRetained);
            if ([WeakRetained shouldCreateCompanionProxyAgent])
            {
              v39 = [WeakRetained companionProxyAgent];

              if (!v39)
              {
                if ([WeakRetained hasCompanionDatapath])
                {
                  [WeakRetained virtualInterface];
                  v40 = NEVirtualInterfaceCopyName();
                }

                else
                {
                  v40 = [WeakRetained localInterfaceName];
                }

                v47 = v40;
                v48 = [WeakRetained nrUUID];
                v49 = sub_100163A30(NRDLocalDevice, v48);
                v50 = v49;
                if (v49)
                {
                  v51 = *(v49 + 128);
                }

                else
                {
                  v51 = 0;
                }

                v52 = v51;

                if (v47 && v52)
                {
                  v53 = [NRCompanionProxyAgent alloc];
                  v54 = [WeakRetained queue];
                  v55 = [WeakRetained nrUUID];
                  v56 = sub_100070A9C(&v53->super.isa, v54, v47, v52, v55);
                  v57 = *(WeakRetained + 11);
                  *(WeakRetained + 11) = v56;

                  [WeakRetained reportEvent:12001];
                }
              }

              v58 = [WeakRetained companionProxyAgent];
              v59 = sub_100070DD8(v58, WeakRetained);

              if (v59)
              {
                [WeakRetained reportEvent:12002];
              }

              else
              {
                v60 = _NRCopyLogObjectForNRUUID();
                v61 = _NRLogIsLevelEnabled();

                if (v61)
                {
                  v62 = _NRCopyLogObjectForNRUUID();
                  v63 = [WeakRetained copyDescription];
                  _NRLogWithArgs(v62, 16, "%s%.30s:%-4d %@: failed to register companion agent", "", "[NRLinkWiFi setupIKECallbacksClassC]_block_invoke", 884, v63);
                }
              }
            }
          }

          if (!*(WeakRetained + 287))
          {
            v64 = objc_alloc_init(NSMutableArray);
            v65 = sub_1000409E8(WeakRetained);
            if (v65)
            {
              [v64 addObject:v65];
            }

            if ([v64 count])
            {
              objc_initWeak(&location, WeakRetained);
              v66 = *(WeakRetained + 295);
              v67 = [WeakRetained queue];
              v71[0] = _NSConcreteStackBlock;
              v71[1] = 3221225472;
              v71[2] = sub_1000434AC;
              v71[3] = &unk_1001FC018;
              objc_copyWeak(&v72, &location);
              [v66 sendPrivateNotifies:v64 maxRetries:10 retryIntervalInMilliseconds:1000 callbackQueue:v67 callback:v71];

              objc_destroyWeak(&v72);
              objc_destroyWeak(&location);
            }
          }

          SessionStateString = [WeakRetained linkDelegate];
          [SessionStateString linkIsReady:WeakRetained];
          goto LABEL_71;
        }

        goto LABEL_29;
      }

      if ([WeakRetained state] == 1)
      {
        v29 = _NRCopyLogObjectForNRUUID();
        v30 = _NRLogIsLevelEnabled();

        if (v30)
        {
          v31 = _NRCopyLogObjectForNRUUID();
          v32 = [WeakRetained copyDescription];
          _NRLogWithArgs(v31, 0, "%s%.30s:%-4d %@: ClassC IKE %@ now connecting", "", "[NRLinkWiFi setupIKECallbacksClassC]_block_invoke", 842, v32, *(a1 + 32));
        }

        [WeakRetained changeStateTo:5];
      }

      else
      {
        v41 = [WeakRetained state];
        v42 = _NRCopyLogObjectForNRUUID();
        if (v41 == 5)
        {
          v43 = _NRLogIsLevelEnabled();

          if (!v43)
          {
            goto LABEL_72;
          }

          v44 = _NRCopyLogObjectForNRUUID();
          v45 = [WeakRetained copyDescription];
          _NRLogWithArgs(v44, 0, "%s%.30s:%-4d %@: ClassC IKE %@ already connecting", "", "[NRLinkWiFi setupIKECallbacksClassC]_block_invoke", 845, v45, *(a1 + 32));
        }

        else
        {
          v46 = _NRLogIsLevelEnabled();

          if (!v46)
          {
            goto LABEL_72;
          }

          v44 = _NRCopyLogObjectForNRUUID();
          v45 = [WeakRetained copyDescription];
          _NRLogWithArgs(v44, 16, "%s%.30s:%-4d %@: ClassC IKE %@ connecting but weird state", "", "[NRLinkWiFi setupIKECallbacksClassC]_block_invoke", 847, v45, *(a1 + 32));
        }
      }
    }
  }

LABEL_72:
}

void sub_100041A08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100041A2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v18)
    {
      v8 = *(a1 + 32);
      SessionStateString = NEIKEv2CreateSessionStateString();
      [WeakRetained reportEvent:3018 detailsFormat:@"ClassC session %@ got child %u state update %@ error %@", v8, a2, SessionStateString, v18];

      [WeakRetained processIKEDisconnection:3 error:v18];
      if ([WeakRetained state] == 255)
      {
        goto LABEL_16;
      }

      v10 = v18;
      if ([v10 code] == 24)
      {
        v11 = NEIKEv2ProtocolErrorDomain;
        v12 = [v10 domain];
        LOBYTE(v11) = [v12 isEqualToString:v11];

        if (v11)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      v14 = v10;
      if ([v14 code] == 8)
      {
        v15 = NEIKEv2ErrorDomain;
        v16 = [v14 domain];
        LODWORD(v15) = [v16 isEqualToString:v15];

        if (v15)
        {
LABEL_12:
          sub_10004230C(WeakRetained);
          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    else
    {
      v13 = *(a1 + 32);
      if (a3 != 3)
      {
        v17 = NEIKEv2CreateSessionStateString();
        [WeakRetained reportEvent:3009 detailsFormat:@"ClassC session %@ child %u state update %@", v13, a2, v17];

        goto LABEL_16;
      }

      [WeakRetained reportEvent:3018 detailsFormat:@"ClassC session %@ got child %u Disconnected state with no error", v13, a2];
    }

    sub_100042448(WeakRetained);
  }

LABEL_16:
}

void sub_100041BFC(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [WeakRetained copyDescription];
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: ClassC session %@ got config update %@", "", "[NRLinkWiFi setupIKECallbacksClassC]_block_invoke_3", 955, v7, *(a1 + 32), v8);
    }
  }
}

void sub_100041CD8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v13 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = _NRCopyLogObjectForNRUUID();
      v12 = [WeakRetained copyDescription];
      _NRLogWithArgs(v11, 0, "%s%.30s:%-4d %@: ClassC session %@ got child %u traffic selector update local %@ remote %@", "", "[NRLinkWiFi setupIKECallbacksClassC]_block_invoke_4", 966, v12, *(a1 + 32), a2, v13, v7);
    }
  }
}

void sub_100041DD8(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [WeakRetained copyDescription];
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: ClassC session %@ got additional addresses %@", "", "[NRLinkWiFi setupIKECallbacksClassC]_block_invoke_5", 974, v7, *(a1 + 32), v8);
    }
  }
}

void sub_100041EB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    WeakRetained = v7;
    if (IsLevelEnabled)
    {
      v5 = _NRCopyLogObjectForNRUUID();
      v6 = [v7 copyDescription];
      _NRLogWithArgs(v5, 0, "%s%.30s:%-4d %@: ClassC session %@ got short DPD", "", "[NRLinkWiFi setupIKECallbacksClassC]_block_invoke_6", 982, v6, *(a1 + 32));

      WeakRetained = v7;
    }
  }
}

void sub_100041F88(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = [WeakRetained copyDescription];
      _NRLogWithArgs(v7, 0, "%s%.30s:%-4d %@: ClassC session %@ got private notifies %@", "", "[NRLinkWiFi setupIKECallbacksClassC]_block_invoke_7", 990, v8, *(a1 + 32), v3);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = v3;
    v9 = v3;
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          v15 = [v14 notifyStatus];
          v16 = [v14 notifyData];
          v17 = _NRCopyLogObjectForNRUUID();
          v18 = _NRLogIsLevelEnabled();

          if (v18)
          {
            v19 = _NRCopyLogObjectForNRUUID();
            v20 = [WeakRetained copyDescription];
            _NRLogWithArgs(v19, 1, "%s%.30s:%-4d %@: Received notify code %u %@", "", "[NRLinkWiFi handleNotifyCode:payload:]", 1319, v20, v15, v16);
          }

          switch(v15)
          {
            case 0xBDDF:
              v22 = v9;
              v23 = [[NSString alloc] initWithData:v16 encoding:4];
              v24 = _NRCopyLogObjectForNRUUID();
              v25 = _NRLogIsLevelEnabled();

              if (v25)
              {
                v26 = _NRCopyLogObjectForNRUUID();
                v27 = [WeakRetained copyDescription];
                LogString = _NRKeyCreateLogString();
                _NRLogWithArgs(v26, 0, "%s%.30s:%-4d %@: Received remote IDS device ID %@", "", "[NRLinkWiFi handleNotifyCode:payload:]", 1327, v27, LogString);
              }

              v29 = [WeakRetained nrUUID];
              sub_1001756C0(NRDLocalDevice, v23, v29);

              v9 = v22;
              break;
            case 0xC60D:
              sub_100171CD8(NRDLocalDevice, v16, WeakRetained[4]);
              [WeakRetained checkProxyAgentWithForceUpdate:0];
              break;
            case 0xC60E:
              v21 = [WeakRetained linkDelegate];
              [v21 linkDidReceiveData:WeakRetained data:v16];

              break;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v11);
    }

    v3 = v30;
  }
}

void sub_10004230C(char *val)
{
  if ((val[249] & 1) == 0)
  {
    val[249] = 1;
    v1 = *(val + 263);
    if ((5 * v1) >= 0x1F)
    {
      *(val + 263) = 0;
      v1 = *(val + 263);
    }

    *(val + 263) = v1 + 1;
    objc_initWeak(&location, val);
    v3 = dispatch_time(0x8000000000000000, 1000000000 * (5 * *(val + 263)));
    v4 = [val queue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100043214;
    v5[3] = &unk_1001FC730;
    objc_copyWeak(&v6, &location);
    dispatch_after(v3, v4, v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void sub_100042448(uint64_t a1)
{
  if ([a1 state] == 255)
  {
    v3 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = _NRCopyLogObjectForNRUUID();
      v5 = [a1 copyDescription];
      _NRLogWithArgs(v10, 0, "%s%.30s:%-4d %@: Not restarting ClassC session for cancelled link", "", "[NRLinkWiFi restartIKESessionClassC]", 546, v5);
    }
  }

  else
  {
    if ([a1 state] == 8)
    {
      v2 = @"restarting IKE session while link is ready";
    }

    else
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = _NRLogIsLevelEnabled();

      if (v7)
      {
        v8 = _NRCopyLogObjectForNRUUID();
        v9 = [a1 copyDescription];
        _NRLogWithArgs(v8, 0, "%s%.30s:%-4d %@: Restarting ClassC session", "", "[NRLinkWiFi restartIKESessionClassC]", 555, v9);
      }

      if (++*(a1 + 251) < 0xAu)
      {
        v11.receiver = a1;
        v11.super_class = NRLinkWiFi;
        objc_msgSendSuper2(&v11, "invalidateIKESessionForClass:", 3);
        [a1 setIkeClassDEstablished:0];
        *(a1 + 83) = 0;
        [a1 invalidateIKESession:a1 + 295];
        *(a1 + 259) = 0;
        sub_100042650(a1);
        return;
      }

      v2 = @"ClassC session hit max retries";
    }

    [a1 cancelWithReason:v2];
  }
}