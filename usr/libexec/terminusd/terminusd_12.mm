void sub_100115C84(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  dispatch_assert_queue_V2(v3);
  v4 = *(v1 + 32);
  if (v4)
  {
    *(v4 + 8) = 0;
  }

  v5 = nr_absolute_time();
  v11 = *(v1 + 32);
  if (v11)
  {
    v12 = *(v11 + 56);
    if (v12)
    {
      *(v12 + 32) = v5;
    }
  }

  v13 = *(v1 + 48);
  if (!*(v1 + 40) && v13 && *(v1 + 56))
  {
    sub_100116C78(*(v1 + 32), 5501, @"%@ %@", v6, v7, v8, v9, v10, *(v1 + 48));
    v17 = *(v1 + 32);
    if (v17 && ((v18 = *(v17 + 56)) == 0 || (*(v18 + 16) = 1, (v17 = *(v1 + 32)) != 0)))
    {
      v19 = *(v17 + 56);
    }

    else
    {
      v19 = 0;
    }

    [v19 submit];
    v20 = *(v1 + 32);
    v21 = *(v1 + 48);
    v22 = &qword_100229000;
    v23 = &qword_100229000;
    if (v20)
    {
      dispatch_assert_queue_V2(*(v20 + 16));
      if (v21)
      {
        *&v102 = 0;
        v24 = [v21 fullIdentityClassD:&v102];
        v25 = v102;
        v26 = v25;
        if (!v24 || v25)
        {
          if (qword_100229180 != -1)
          {
            dispatch_once(&qword_100229180, &stru_1001FBD48);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229180 != -1)
            {
              dispatch_once(&qword_100229180, &stru_1001FBD48);
            }

            _NRLogWithArgs(qword_100229178, 16, "%s%.30s:%-4d Failed to ingest IDS local classD identity: %@", "", "[NRDIDSKeyManager ingestIDSLocalDeviceRecord:]", 132, v26);
          }
        }

        else
        {
          v27 = sub_100115814(v20, v24);
          if (qword_100229180 != -1)
          {
            dispatch_once(&qword_100229180, &stru_1001FBD48);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229180 != -1)
            {
              dispatch_once(&qword_100229180, &stru_1001FBD48);
            }

            v28 = qword_100229178;
            if (v27)
            {
              v107[0] = 0;
              SecKeyCopyPublicBytes();
              v29 = v107[0];
              v107[0] = 0;
              LogString = _NRKeyCreateLogString();
            }

            else
            {
              LogString = @"[nil]";
            }

            _NRLogWithArgs(v28, 0, "%s%.30s:%-4d Ingested IDS local classD identity %@", "", "[NRDIDSKeyManager ingestIDSLocalDeviceRecord:]", 128, LogString);
          }

          objc_storeStrong((v20 + 24), v24);
          if (v27)
          {
            CFRelease(v27);
          }
        }

        v106 = 0;
        v31 = [v21 fullIdentityClassC:&v106];
        v32 = v106;
        v33 = v32;
        if (!v31 || v32)
        {
          if (qword_100229180 != -1)
          {
            dispatch_once(&qword_100229180, &stru_1001FBD48);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229180 != -1)
            {
              dispatch_once(&qword_100229180, &stru_1001FBD48);
            }

            _NRLogWithArgs(qword_100229178, 16, "%s%.30s:%-4d Failed to ingest IDS local classC identity: %@", "", "[NRDIDSKeyManager ingestIDSLocalDeviceRecord:]", 147, v33);
          }
        }

        else
        {
          v34 = sub_100115814(v20, v31);
          if (qword_100229180 != -1)
          {
            dispatch_once(&qword_100229180, &stru_1001FBD48);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229180 != -1)
            {
              dispatch_once(&qword_100229180, &stru_1001FBD48);
            }

            v35 = qword_100229178;
            if (v34)
            {
              v107[0] = 0;
              SecKeyCopyPublicBytes();
              v36 = v107[0];
              v107[0] = 0;
              v37 = _NRKeyCreateLogString();
            }

            else
            {
              v37 = @"[nil]";
            }

            _NRLogWithArgs(v35, 0, "%s%.30s:%-4d Ingested IDS local classC identity %@", "", "[NRDIDSKeyManager ingestIDSLocalDeviceRecord:]", 143, v37);
          }

          objc_storeStrong((v20 + 32), v31);
          if (v34)
          {
            CFRelease(v34);
          }
        }

        v101 = 0;
        v38 = [v21 fullIdentityClassA:&v101];
        v39 = v101;
        v40 = v39;
        if (!v38 || v39)
        {
          if (qword_100229180 != -1)
          {
            dispatch_once(&qword_100229180, &stru_1001FBD48);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229180 != -1)
            {
              dispatch_once(&qword_100229180, &stru_1001FBD48);
            }

            _NRLogWithArgs(qword_100229178, 16, "%s%.30s:%-4d Failed to ingest IDS local classA identity: %@", "", "[NRDIDSKeyManager ingestIDSLocalDeviceRecord:]", 162, v40);
          }
        }

        else
        {
          v41 = sub_100115814(v20, v38);
          if (qword_100229180 != -1)
          {
            dispatch_once(&qword_100229180, &stru_1001FBD48);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229180 != -1)
            {
              dispatch_once(&qword_100229180, &stru_1001FBD48);
            }

            v42 = qword_100229178;
            if (v41)
            {
              v107[0] = 0;
              SecKeyCopyPublicBytes();
              v43 = v107[0];
              v107[0] = 0;
              v44 = _NRKeyCreateLogString();
            }

            else
            {
              v44 = @"[nil]";
            }

            _NRLogWithArgs(v42, 0, "%s%.30s:%-4d Ingested IDS local classA identity %@", "", "[NRDIDSKeyManager ingestIDSLocalDeviceRecord:]", 158, v44);
          }

          objc_storeStrong((v20 + 40), v38);
          if (v41)
          {
            CFRelease(v41);
          }
        }

        v22 = &qword_100229000;
        v23 = &qword_100229000;
      }

      else
      {
        v86 = sub_10011573C();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v88 = sub_10011573C();
          _NRLogWithArgs(v88, 17, "%s called with null localDeviceRecord", "[NRDIDSKeyManager ingestIDSLocalDeviceRecord:]");
        }
      }
    }

    v45 = *(v1 + 32);
    v46 = *(v1 + 56);
    if (v45)
    {
      v96 = v45;
      dispatch_assert_queue_V2(*(v45 + 16));
      if (v46)
      {
        v92 = v46;
        v93 = v1;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        obj = v46;
        v47 = v45;
        v95 = [obj countByEnumeratingWithState:&v102 objects:v107 count:16];
        if (v95)
        {
          v94 = *v103;
          do
          {
            for (i = 0; i != v95; i = i + 1)
            {
              if (*v103 != v94)
              {
                objc_enumerationMutation(obj);
              }

              v52 = *(*(&v102 + 1) + 8 * i);
              v51 = [obj objectForKeyedSubscript:v52];
              v53 = [*(v47 + 48) objectForKeyedSubscript:v52];
              if (!v53)
              {
                v53 = objc_alloc_init(NRDIDSKMDeviceRecord);
              }

              v101 = 0;
              v54 = [v51 publicIdentityClassD:&v101];
              v55 = v101;
              v56 = v55;
              if (v54)
              {
                v57 = v55 == 0;
              }

              else
              {
                v57 = 0;
              }

              v98 = v51;
              if (v57)
              {
                v60 = sub_1001158E4(v47, v54);
                if (v22[48] != -1)
                {
                  dispatch_once(&qword_100229180, &stru_1001FBD48);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (v22[48] != -1)
                  {
                    dispatch_once(&qword_100229180, &stru_1001FBD48);
                  }

                  v61 = v23[47];
                  v62 = [v52 UUIDString];
                  if (v60)
                  {
                    v106 = 0;
                    SecKeyCopyPublicBytes();
                    v63 = v106;
                    v106 = 0;
                    v64 = _NRKeyCreateLogString();

                    v47 = v96;
                  }

                  else
                  {
                    v64 = @"[nil]";
                  }

                  _NRLogWithArgs(v61, 0, "%s%.30s:%-4d Ingested IDS remote classD identity for BT<%@> %@", "", "[NRDIDSKeyManager ingestIDSPairedDevicesRecords:]", 187, v62, v64);

                  v22 = &qword_100229000;
                  v23 = &qword_100229000;
                  v51 = v98;
                }

                if (v53)
                {
                  objc_storeStrong(&v53->_remoteIDSClassDIdentity, v54);
                }

                if (v60)
                {
                  CFRelease(v60);
                }
              }

              else
              {
                if (v22[48] != -1)
                {
                  dispatch_once(&qword_100229180, &stru_1001FBD48);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (v22[48] != -1)
                  {
                    dispatch_once(&qword_100229180, &stru_1001FBD48);
                  }

                  v58 = v23[47];
                  v59 = [v52 UUIDString];
                  _NRLogWithArgs(v58, 16, "%s%.30s:%-4d Failed to ingest IDS remote classD identity for bluetoothUUID %@: %@", "", "[NRDIDSKeyManager ingestIDSPairedDevicesRecords:]", 192, v59, v56);

                  v47 = v96;
                  v51 = v98;
                }
              }

              v100 = 0;
              v65 = [v51 publicIdentityClassC:&v100];
              v66 = v100;
              v67 = v66;
              if (!v65 || v66)
              {
                if (v22[48] != -1)
                {
                  dispatch_once(&qword_100229180, &stru_1001FBD48);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (v22[48] != -1)
                  {
                    dispatch_once(&qword_100229180, &stru_1001FBD48);
                  }

                  v73 = v23[47];
                  v74 = [v52 UUIDString];
                  _NRLogWithArgs(v73, 16, "%s%.30s:%-4d Failed to ingest IDS remote classC identity for bluetoothUUID %@: %@", "", "[NRDIDSKeyManager ingestIDSPairedDevicesRecords:]", 208, v74, v67);

                  v47 = v96;
                  v51 = v98;
                }
              }

              else
              {
                v68 = sub_1001158E4(v47, v65);
                if (v22[48] != -1)
                {
                  dispatch_once(&qword_100229180, &stru_1001FBD48);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (v22[48] != -1)
                  {
                    dispatch_once(&qword_100229180, &stru_1001FBD48);
                  }

                  v69 = v23[47];
                  v70 = [v52 UUIDString];
                  if (v68)
                  {
                    v106 = 0;
                    SecKeyCopyPublicBytes();
                    v71 = v106;
                    v106 = 0;
                    v72 = _NRKeyCreateLogString();

                    v47 = v96;
                  }

                  else
                  {
                    v72 = @"[nil]";
                  }

                  _NRLogWithArgs(v69, 0, "%s%.30s:%-4d Ingested IDS remote classC identity for BT<%@> %@", "", "[NRDIDSKeyManager ingestIDSPairedDevicesRecords:]", 203, v70, v72);

                  v22 = &qword_100229000;
                  v23 = &qword_100229000;
                  v51 = v98;
                }

                if (v53)
                {
                  objc_storeStrong(&v53->_remoteIDSClassCIdentity, v65);
                }

                if (v68)
                {
                  CFRelease(v68);
                }
              }

              v99 = 0;
              v75 = [v51 publicIdentityClassA:&v99];
              v76 = v99;
              v77 = v76;
              if (!v75 || v76)
              {
                if (v22[48] != -1)
                {
                  dispatch_once(&qword_100229180, &stru_1001FBD48);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (v22[48] != -1)
                  {
                    dispatch_once(&qword_100229180, &stru_1001FBD48);
                  }

                  v49 = v23[47];
                  v50 = [v52 UUIDString];
                  _NRLogWithArgs(v49, 16, "%s%.30s:%-4d Failed to ingest IDS remote classA identity for bluetoothUUID %@: %@", "", "[NRDIDSKeyManager ingestIDSPairedDevicesRecords:]", 224, v50, v77);

                  v47 = v96;
                  v51 = v98;
                }
              }

              else
              {
                v78 = sub_1001158E4(v47, v75);
                if (v22[48] != -1)
                {
                  dispatch_once(&qword_100229180, &stru_1001FBD48);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (v22[48] != -1)
                  {
                    dispatch_once(&qword_100229180, &stru_1001FBD48);
                  }

                  v79 = v23[47];
                  v80 = [v52 UUIDString];
                  if (v78)
                  {
                    v106 = 0;
                    SecKeyCopyPublicBytes();
                    v81 = v106;
                    v106 = 0;
                    v82 = _NRKeyCreateLogString();

                    v47 = v96;
                  }

                  else
                  {
                    v82 = @"[nil]";
                  }

                  _NRLogWithArgs(v79, 0, "%s%.30s:%-4d Ingested IDS remote classA identity for BT<%@> %@", "", "[NRDIDSKeyManager ingestIDSPairedDevicesRecords:]", 219, v80, v82);

                  v22 = &qword_100229000;
                  v23 = &qword_100229000;
                  v51 = v98;
                }

                if (v53)
                {
                  objc_storeStrong(&v53->_remoteIDSClassAIdentity, v75);
                }

                if (v78)
                {
                  CFRelease(v78);
                }
              }

              [*(v47 + 48) setObject:v53 forKeyedSubscript:v52];
            }

            v95 = [obj countByEnumeratingWithState:&v102 objects:v107 count:16];
          }

          while (v95);
        }

        v46 = v92;
        v1 = v93;
      }

      else
      {
        v89 = sub_10011573C();
        v90 = _NRLogIsLevelEnabled();

        if (v90)
        {
          v91 = sub_10011573C();
          _NRLogWithArgs(v91, 17, "%s called with null pairedDevicesRecords", "[NRDIDSKeyManager ingestIDSPairedDevicesRecords:]");
        }
      }
    }

    v83 = *(v1 + 32);
    if (v83)
    {
      sub_100116D00(v83, 0);
      v84 = *(v1 + 32);
      if (v84)
      {
        if (*(v84 + 9) == 1)
        {
          *(v84 + 9) = 0;
          v85 = *(v1 + 32);

          sub_1001159B4(v85, 0);
        }
      }
    }
  }

  else
  {
    sub_100116C78(*(v1 + 32), 5502, @"%@ %@ %@", v6, v7, v8, v9, v10, v13);
    v14 = *(v1 + 32);
    if (v14 && ((v15 = *(v14 + 56)) == 0 || (*(v15 + 16) = 0, (v14 = *(v1 + 32)) != 0)))
    {
      v16 = *(v14 + 56);
    }

    else
    {
      v16 = 0;
    }

    [v16 submit];
  }
}

void sub_100116C78(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v10 = a3;
    v11 = [[NSString alloc] initWithFormat:v10 arguments:&a9];

    sub_1000059A8(0, a2, &stru_1001FDE68, v11);
  }
}

void sub_100116D00(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = a1;
    dispatch_assert_queue_V2(*(a1 + 16));
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v4 = *(v3 + 48);
    v58 = [v4 countByEnumeratingWithState:&v87 objects:v94 count:16];
    if (v58)
    {
      v5 = 0;
      v6 = 0;
      v56 = *v88;
      v62 = a2;
      v57 = v4;
      v61 = v3;
      do
      {
        v7 = 0;
        do
        {
          if (*v88 != v56)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v87 + 1) + 8 * v7);
          v9 = *(v3 + 48);
          v60 = v8;
          v10 = [v9 objectForKeyedSubscript:v8];

          if (v10)
          {
            v11 = v10[4];
          }

          else
          {
            v11 = 0;
          }

          v59 = v7;
          v12 = [v11 copy];
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          obj = v12;
          v70 = [obj countByEnumeratingWithState:&v83 objects:v93 count:16];
          if (v70)
          {
            v69 = *v84;
            do
            {
              for (i = 0; i != v70; i = i + 1)
              {
                if (*v84 != v69)
                {
                  objc_enumerationMutation(obj);
                }

                v14 = *(*(&v83 + 1) + 8 * i);
                if (v14)
                {
                  v15 = *(v14 + 9) != 4;
                  v16 = (*(v14 + 9) - 5) < 0xFEu;
                }

                else
                {
                  v16 = 1;
                  v15 = 1;
                }

                v17 = *(v3 + 24);
                if (!v17)
                {
                  goto LABEL_44;
                }

                if (!v10)
                {

LABEL_44:
                  if (v14)
                  {
                    if (*(v14 + 8))
                    {
                      v5 |= a2;
                    }

                    else
                    {
                      v5 = 1;
                      *(v14 + 8) = 1;
                    }
                  }

                  else
                  {
                    v5 = 1;
                  }

                  v6 = 1;
                  continue;
                }

                v18 = v10[1];

                if (!v18)
                {
                  goto LABEL_44;
                }

                if (v15)
                {
                  v19 = *(v3 + 32);
                  if (!v19)
                  {
                    goto LABEL_44;
                  }

                  v20 = v10[2];

                  if (!v20)
                  {
                    goto LABEL_44;
                  }
                }

                if (v16)
                {
                  v21 = *(v3 + 40);
                  if (!v21)
                  {
                    goto LABEL_44;
                  }

                  v22 = v10[3];

                  if (!v22)
                  {
                    goto LABEL_44;
                  }
                }

                if (qword_100229180 != -1)
                {
                  dispatch_once(&qword_100229180, &stru_1001FBD48);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_100229180 != -1)
                  {
                    dispatch_once(&qword_100229180, &stru_1001FBD48);
                  }

                  v23 = qword_100229178;
                  String = NRDataProtectionClassCreateString();
                  _NRLogWithArgs(v23, 0, "%s%.30s:%-4d Completing query for %@ BT<%@>", "", "[NRDIDSKeyManager checkOutstandingQueriesForceQueryIDS:]", 347, String, v60);
                }

                v66 = v6;
                v67 = v5;
                v65 = *(v3 + 24);
                v64 = *(v3 + 32);
                v25 = v3;
                v26 = *(v3 + 40);
                v27 = v10[1];
                v28 = v10[2];
                v29 = v10[3];
                if (v14)
                {
                  v30 = *(v14 + 16);
                  objc_setProperty_nonatomic_copy(v14, v31, 0, 16);
                }

                else
                {
                  v30 = 0;
                }

                [v10[4] removeObject:v14];
                if (![v10[4] count])
                {
                  v32 = v10[4];
                  v10[4] = 0;
                }

                v33 = *(v25 + 16);
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_1001175B8;
                block[3] = &unk_1001FBCD8;
                v81 = v29;
                v82 = v30;
                v76 = v65;
                v77 = v64;
                v78 = v26;
                v79 = v27;
                v80 = v28;
                v63 = v29;
                v34 = v28;
                v35 = v27;
                v36 = v26;
                v37 = v64;
                v38 = v65;
                v39 = v30;
                dispatch_async(v33, block);

                v3 = v61;
                a2 = v62;
                v6 = v66;
                v5 = v67;
              }

              v70 = [obj countByEnumeratingWithState:&v83 objects:v93 count:16];
            }

            while (v70);
          }

          v7 = v59 + 1;
          v4 = v57;
        }

        while ((v59 + 1) != v58);
        v58 = [v57 countByEnumeratingWithState:&v87 objects:v94 count:16];
      }

      while (v58);

      if (v5)
      {
        sub_1001159B4(v3, a2);
      }

      if (v6)
      {
        dispatch_assert_queue_V2(*(v3 + 16));
        if (*(v3 + 10))
        {
          return;
        }

        *(v3 + 10) = 1;
        objc_opt_self();
        if (qword_1002294C8 != -1)
        {
          dispatch_once(&qword_1002294C8, &stru_1001FD250);
        }

        v40 = qword_1002294C0;
        v91[0] = _NSConcreteStackBlock;
        v91[1] = 3221225472;
        v91[2] = sub_1001175D8;
        v91[3] = &unk_1001FBCB0;
        v91[4] = v3;
        v41 = v91;
        if (v40)
        {
          dispatch_assert_queue_V2(v40[2]);
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

            _NRLogWithArgs(qword_1002294D0, 0, "%s%.30s:%-4d Registering for IDS key manager data protection class updates", "", "[NRDKeyManager registerForIDSKeyManagerUpdates:]", 113);
          }

          v42 = objc_retainBlock(v41);
          v43 = v40[3];
          v40[3] = v42;

          sub_100180B5C(v40);
        }

        goto LABEL_65;
      }
    }

    else
    {
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v40 = *(v3 + 48);
    v44 = [(dispatch_queue_t *)v40 countByEnumeratingWithState:&v71 objects:v92 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v72;
LABEL_70:
      v47 = 0;
      while (1)
      {
        if (*v72 != v46)
        {
          objc_enumerationMutation(v40);
        }

        v48 = *(*(&v71 + 1) + 8 * v47);
        v49 = *(v3 + 48);
        v50 = [v49 objectForKeyedSubscript:v48];
        v51 = v50;
        if (v50)
        {
          v50 = v50[4];
        }

        v52 = [v50 count];

        if (v52)
        {
          break;
        }

        if (v45 == ++v47)
        {
          v45 = [(dispatch_queue_t *)v40 countByEnumeratingWithState:&v71 objects:v92 count:16];
          if (v45)
          {
            goto LABEL_70;
          }

          goto LABEL_78;
        }
      }

LABEL_65:

      return;
    }

LABEL_78:

    dispatch_assert_queue_V2(*(v3 + 16));
    if (*(v3 + 10) == 1)
    {
      *(v3 + 10) = 0;
      objc_opt_self();
      if (qword_1002294C8 != -1)
      {
        dispatch_once(&qword_1002294C8, &stru_1001FD250);
      }

      v53 = qword_1002294C0;
      v54 = v53;
      if (v53)
      {
        dispatch_assert_queue_V2(*(v53 + 2));
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

          _NRLogWithArgs(qword_1002294D0, 0, "%s%.30s:%-4d Unregistering for IDS key manager data protection class updates", "", "[NRDKeyManager unregisterForIDSKeyManagerUpdates]", 121);
        }

        v55 = v54[3];
        v54[3] = 0;

        if (!v54[3] && !v54[5] && !v54[6])
        {
          sub_100181504(v54);
        }
      }
    }
  }
}

void sub_1001175D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  dispatch_assert_queue_V2(v3);
  v4 = *(a1 + 32);

  sub_100116D00(v4, 1);
}

void sub_100117628(id a1)
{
  v1 = _NRCopySerialQueueAttr();
  v2 = dispatch_queue_create("terminusd.IdentityServices.pairingRecords", v1);

  if (!v2)
  {
    v4 = sub_10011573C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = sub_10011573C();
      _NRLogWithArgs(v6, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_create(%s) failed", "", "nr_dispatch_queue_create", 196, "terminusd.IdentityServices.pairingRecords");
    }

    v7 = _os_log_pack_size();
    v8 = &v11 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = __error();
    v10 = _os_log_pack_fill(v8, v7, *v9, &_mh_execute_header, "%{public}s dispatch_queue_create(%s) failed");
    *v10 = 136446466;
    *(v10 + 4) = "nr_dispatch_queue_create";
    *(v10 + 12) = 2080;
    *(v10 + 14) = "terminusd.IdentityServices.pairingRecords";
    sub_10011573C();
    _NRLogAbortWithPack();
  }

  v3 = qword_100229190;
  qword_100229190 = v2;
}

void sub_1001177A8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v40 = a2;
  v7 = a4;
  dispatch_assert_queue_V2(*(a1 + 16));
  if (v7)
  {
    v8 = objc_alloc_init(NRIDSKMOutstandingQuery);
    if (v8)
    {
      v10 = v8;
      v8->_minDataProtectionClass = v5;
      objc_setProperty_nonatomic_copy(v8, v9, v7, 16);
      if (qword_100229180 != -1)
      {
        dispatch_once(&qword_100229180, &stru_1001FBD48);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229180 != -1)
        {
          dispatch_once(&qword_100229180, &stru_1001FBD48);
        }

        v11 = qword_100229178;
        String = NRDataProtectionClassCreateString();
        _NRLogWithArgs(v11, 0, "%s%.30s:%-4d Adding query %p for %@ BT<%@>", "", "[NRDIDSKeyManager internalQueryIDSKeysForBluetoothUUID:minDataProtectionClass:completionBlock:]", 412, v10, String, v40);
      }

      v13 = [*(a1 + 48) objectForKeyedSubscript:{v40, v40}];
      if (v13 || (v13 = objc_alloc_init(NRDIDSKMDeviceRecord)) != 0)
      {
        v14 = v13;
        outstandingQueries = v13->_outstandingQueries;
        if (outstandingQueries || (v16 = objc_alloc_init(NSMutableArray), v17 = v14->_outstandingQueries, v14->_outstandingQueries = v16, v17, (outstandingQueries = v14->_outstandingQueries) != 0))
        {
          [(NSMutableArray *)outstandingQueries addObject:v10];
          [*(a1 + 48) setObject:v14 forKeyedSubscript:v40];
          sub_100116D00(a1, 0);

LABEL_14:
          goto LABEL_15;
        }

        v33 = sub_10011573C();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v35 = sub_10011573C();
          _NRLogWithArgs(v35, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (deviceRecord.outstandingQueries) != ((void*)0)", "", "[NRDIDSKeyManager internalQueryIDSKeysForBluetoothUUID:minDataProtectionClass:completionBlock:]", 421);
        }

        v36 = _os_log_pack_size();
        v37 = &v40 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v38 = __error();
        v39 = _os_log_pack_fill(v37, v36, *v38, &_mh_execute_header, "%{public}s Assertion Failed: (deviceRecord.outstandingQueries) != ((void*)0)");
        *v39 = 136446210;
        *(v39 + 4) = "[NRDIDSKeyManager internalQueryIDSKeysForBluetoothUUID:minDataProtectionClass:completionBlock:]";
LABEL_30:
        sub_10011573C();
        _NRLogAbortWithPack();
      }

      v27 = sub_10011573C();
      v28 = _NRLogIsLevelEnabled();

      if (v28)
      {
        v29 = sub_10011573C();
        _NRLogWithArgs(v29, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (deviceRecord) != ((void*)0)", "", "[NRDIDSKeyManager internalQueryIDSKeysForBluetoothUUID:minDataProtectionClass:completionBlock:]", 417);
      }

      v30 = _os_log_pack_size();
      v31 = &v40 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = *__error();
      v26 = _os_log_pack_fill(v31, v30, v32, &_mh_execute_header, "%{public}s Assertion Failed: (deviceRecord) != ((void*)0)", v40);
    }

    else
    {
      v20 = sub_10011573C();
      v21 = _NRLogIsLevelEnabled();

      if (v21)
      {
        v22 = sub_10011573C();
        _NRLogWithArgs(v22, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (outstandingQuery) != ((void*)0)", "", "[NRDIDSKeyManager internalQueryIDSKeysForBluetoothUUID:minDataProtectionClass:completionBlock:]", 407);
      }

      v23 = _os_log_pack_size();
      v24 = &v40 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = *__error();
      v26 = _os_log_pack_fill(v24, v23, v25, &_mh_execute_header, "%{public}s Assertion Failed: (outstandingQuery) != ((void*)0)", v40);
    }

    *v26 = 136446210;
    *(v26 + 4) = "[NRDIDSKeyManager internalQueryIDSKeysForBluetoothUUID:minDataProtectionClass:completionBlock:]";
    goto LABEL_30;
  }

  v18 = sub_10011573C();
  v19 = _NRLogIsLevelEnabled();

  if (v19)
  {
    v10 = sub_10011573C();
    _NRLogWithArgs(v10, 17, "%s called with null completionBlock", "[NRDIDSKeyManager internalQueryIDSKeysForBluetoothUUID:minDataProtectionClass:completionBlock:]");
    goto LABEL_14;
  }

LABEL_15:
}

void sub_100117C3C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v87 = a6;
  v86 = a7;
  v17 = *(a1 + 32);
  if (v17)
  {
    dispatch_assert_queue_V2(*(v17 + 16));
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_67:
    v80 = sub_10011573C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_55;
    }

    v71 = sub_10011573C();
    _NRLogWithArgs(v71, 17, "%s called with null localIDSClassDIdentity");
    goto LABEL_69;
  }

  dispatch_assert_queue_V2(0);
  if (!v13)
  {
    goto LABEL_67;
  }

LABEL_3:
  if (!v16)
  {
    v69 = sub_10011573C();
    v70 = _NRLogIsLevelEnabled();

    if (!v70)
    {
      goto LABEL_55;
    }

    v71 = sub_10011573C();
    _NRLogWithArgs(v71, 17, "%s called with null remoteIDSClassDIdentity");
LABEL_69:

    goto LABEL_55;
  }

  v18 = *(a1 + 80);
  if ((v18 | 2) != 3)
  {
    goto LABEL_10;
  }

  if (!v14)
  {
    v72 = sub_10011573C();
    v73 = _NRLogIsLevelEnabled();

    if (!v73)
    {
      goto LABEL_55;
    }

    v71 = sub_10011573C();
    _NRLogWithArgs(v71, 17, "%s called with null localIDSClassCIdentity");
    goto LABEL_69;
  }

  if (!v87)
  {
    v74 = sub_10011573C();
    v75 = _NRLogIsLevelEnabled();

    if (!v75)
    {
      goto LABEL_55;
    }

    v71 = sub_10011573C();
    _NRLogWithArgs(v71, 17, "%s called with null remoteIDSClassCIdentity");
    goto LABEL_69;
  }

  if (v18 != 1)
  {
    goto LABEL_10;
  }

  if (!v15)
  {
    v76 = sub_10011573C();
    v77 = _NRLogIsLevelEnabled();

    if (!v77)
    {
      goto LABEL_55;
    }

    v71 = sub_10011573C();
    _NRLogWithArgs(v71, 17, "%s called with null localIDSClassAIdentity");
    goto LABEL_69;
  }

  if (!v86)
  {
    v78 = sub_10011573C();
    v79 = _NRLogIsLevelEnabled();

    if (!v79)
    {
      goto LABEL_55;
    }

    v71 = sub_10011573C();
    _NRLogWithArgs(v71, 17, "%s called with null remoteIDSClassAIdentity");
    goto LABEL_69;
  }

LABEL_10:
  v19 = sub_1001158E4(*(a1 + 32), v16);
  v20 = sub_100115814(*(a1 + 32), v13);
  v21 = *(a1 + 40);
  v90 = 0;
  v85 = v13;
  v22 = [v16 signAndProtectData:v21 withSigner:v13 error:&v90];
  v23 = v90;
  v83 = v16;
  if (v23 || !v22)
  {
    if (qword_100229180 != -1)
    {
      dispatch_once(&qword_100229180, &stru_1001FBD48);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229180 != -1)
      {
        dispatch_once(&qword_100229180, &stru_1001FBD48);
      }

      _NRLogWithArgs(qword_100229178, 17, "Failed to encrypt and sign classD TLV for %@: %@", *(a1 + 48), v23);
    }

    v31 = *(a1 + 32);
    v25 = [*(a1 + 48) UUIDString];
    sub_100116C78(v31, 5504, @"ClassD BT<%@>: %@", v32, v33, v34, v35, v36, v25);
  }

  else
  {
    v24 = *(a1 + 32);
    v25 = [*(a1 + 48) UUIDString];
    sub_100116C78(v24, 5503, @"ClassD BT<%@>", v26, v27, v28, v29, v30, v25);
  }

  v37 = 0;
  v84 = v14;
  if (v14 && v87)
  {
    v38 = *(a1 + 56);
    if (v38)
    {
      v89 = 0;
      v37 = [v87 signAndProtectData:v38 withSigner:v14 error:&v89];
      v39 = v89;
      if (v39 || !v37)
      {
        if (qword_100229180 != -1)
        {
          dispatch_once(&qword_100229180, &stru_1001FBD48);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229180 != -1)
          {
            dispatch_once(&qword_100229180, &stru_1001FBD48);
          }

          _NRLogWithArgs(qword_100229178, 17, "Failed to encrypt and sign classC TLV for %@: %@", *(a1 + 48), v39);
        }

        v47 = *(a1 + 32);
        v41 = [*(a1 + 48) UUIDString];
        sub_100116C78(v47, 5504, @"ClassC BT<%@>: %@", v48, v49, v50, v51, v52, v41);
      }

      else
      {
        v40 = *(a1 + 32);
        v41 = [*(a1 + 48) UUIDString];
        sub_100116C78(v40, 5503, @"ClassC BT<%@>", v42, v43, v44, v45, v46, v41);
      }
    }

    else
    {
      v37 = 0;
    }
  }

  v53 = 0;
  if (v15 && v86)
  {
    v54 = *(a1 + 64);
    if (v54)
    {
      v88 = 0;
      v53 = [v86 signAndProtectData:v54 withSigner:v15 error:&v88];
      v55 = v88;
      v82 = v15;
      if (v55 || !v53)
      {
        if (qword_100229180 != -1)
        {
          dispatch_once(&qword_100229180, &stru_1001FBD48);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229180 != -1)
          {
            dispatch_once(&qword_100229180, &stru_1001FBD48);
          }

          _NRLogWithArgs(qword_100229178, 17, "Failed to encrypt and sign classA TLV for %@: %@", *(a1 + 48), v55);
        }

        v63 = *(a1 + 32);
        v57 = [*(a1 + 48) UUIDString];
        sub_100116C78(v63, 5504, @"ClassA BT<%@>: %@", v64, v65, v66, v67, v68, v57);
      }

      else
      {
        v56 = *(a1 + 32);
        v57 = [*(a1 + 48) UUIDString];
        sub_100116C78(v56, 5503, @"ClassA BT<%@>", v58, v59, v60, v61, v62, v57);
      }

      v15 = v82;
    }

    else
    {
      v53 = 0;
    }
  }

  (*(*(a1 + 72) + 16))();
  if (v19)
  {
    CFRelease(v19);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  v14 = v84;
  v13 = v85;
  v16 = v83;
LABEL_55:
}

void sub_10011829C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = a1[4];
  if (v9)
  {
    dispatch_assert_queue_V2(*(v9 + 16));
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_19:
    v26 = sub_10011573C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_15;
    }

    v25 = sub_10011573C();
    _NRLogWithArgs(v25, 17, "%s called with null localIDSClassDIdentity");
    goto LABEL_21;
  }

  dispatch_assert_queue_V2(0);
  if (!v7)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (!v8)
  {
    v23 = sub_10011573C();
    v24 = _NRLogIsLevelEnabled();

    if (!v24)
    {
      goto LABEL_15;
    }

    v25 = sub_10011573C();
    _NRLogWithArgs(v25, 17, "%s called with null remoteIDSClassDIdentity");
LABEL_21:

    goto LABEL_15;
  }

  v10 = a1[5];
  v28 = 0;
  v11 = [v7 verifyAndExposeData:v10 withSigner:v8 error:&v28];
  v17 = v28;
  if (v17 || !v11)
  {
    if (qword_100229180 != -1)
    {
      dispatch_once(&qword_100229180, &stru_1001FBD48);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229180 != -1)
      {
        dispatch_once(&qword_100229180, &stru_1001FBD48);
      }

      _NRLogWithArgs(qword_100229178, 17, "Failed to decrypt and check classD TLV for %@: %@", a1[6], v17);
    }

    sub_100116C78(a1[4], 5506, @"ClassD BT<%@>: %@", v18, v19, v20, v21, v22, a1[6]);
  }

  else
  {
    sub_100116C78(a1[4], 5505, @"ClassD BT<%@>", v12, v13, v14, v15, v16, a1[6]);
  }

  (*(a1[7] + 16))();

LABEL_15:
}

void sub_1001184A4(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a3;
  v9 = a6;
  v10 = a1[4];
  if (v10)
  {
    dispatch_assert_queue_V2(*(v10 + 16));
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_19:
    v27 = sub_10011573C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_15;
    }

    v26 = sub_10011573C();
    _NRLogWithArgs(v26, 17, "%s called with null localIDSClassCIdentity");
    goto LABEL_21;
  }

  dispatch_assert_queue_V2(0);
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (!v9)
  {
    v24 = sub_10011573C();
    v25 = _NRLogIsLevelEnabled();

    if (!v25)
    {
      goto LABEL_15;
    }

    v26 = sub_10011573C();
    _NRLogWithArgs(v26, 17, "%s called with null remoteIDSClassCIdentity");
LABEL_21:

    goto LABEL_15;
  }

  v11 = a1[5];
  v29 = 0;
  v12 = [v8 verifyAndExposeData:v11 withSigner:v9 error:&v29];
  v18 = v29;
  if (v18 || !v12)
  {
    if (qword_100229180 != -1)
    {
      dispatch_once(&qword_100229180, &stru_1001FBD48);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229180 != -1)
      {
        dispatch_once(&qword_100229180, &stru_1001FBD48);
      }

      _NRLogWithArgs(qword_100229178, 17, "Failed to decrypt and check classC TLV for %@: %@", a1[6], v18);
    }

    sub_100116C78(a1[4], 5506, @"ClassC BT<%@>: %@", v19, v20, v21, v22, v23, a1[6]);
  }

  else
  {
    sub_100116C78(a1[4], 5505, @"ClassC BT<%@>", v13, v14, v15, v16, v17, a1[6]);
  }

  (*(a1[7] + 16))();

LABEL_15:
}

void sub_1001186AC(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = a4;
  v10 = a7;
  v11 = a1[4];
  if (v11)
  {
    dispatch_assert_queue_V2(*(v11 + 16));
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_25:
    v28 = sub_10011573C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_21;
    }

    v27 = sub_10011573C();
    _NRLogWithArgs(v27, 17, "%s called with null localIDSClassAIdentity");
    goto LABEL_27;
  }

  dispatch_assert_queue_V2(0);
  if (!v9)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v10)
  {
    v25 = sub_10011573C();
    v26 = _NRLogIsLevelEnabled();

    if (!v26)
    {
      goto LABEL_21;
    }

    v27 = sub_10011573C();
    _NRLogWithArgs(v27, 17, "%s called with null remoteIDSClassAIdentity");
LABEL_27:

    goto LABEL_21;
  }

  v12 = a1[5];
  v30 = 0;
  v13 = [v9 verifyAndExposeData:v12 withSigner:v10 error:&v30];
  v19 = v30;
  if (v19 || !v13)
  {
    if (qword_100229180 != -1)
    {
      dispatch_once(&qword_100229180, &stru_1001FBD48);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229180 != -1)
      {
        dispatch_once(&qword_100229180, &stru_1001FBD48);
      }

      _NRLogWithArgs(qword_100229178, 16, "%s%.30s:%-4d Failed to decrypt and check classA TLV for BT<%@>: %@, remotePublicClassAKeys=%@", "", "[NRDIDSKeyManager decryptRemoteClassAKeysEncryptedWithIDS:bluetoothUUID:decryptCompletionBlock:]_block_invoke", 697, a1[6], v19, v13);
    }

    if (qword_100229180 != -1)
    {
      dispatch_once(&qword_100229180, &stru_1001FBD48);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229180 != -1)
      {
        dispatch_once(&qword_100229180, &stru_1001FBD48);
      }

      _NRLogWithArgs(qword_100229178, 17, "Failed to decrypt and check classA TLV for %@: %@", a1[6], v19);
    }

    sub_100116C78(a1[4], 5506, @"ClassA BT<%@>: %@", v20, v21, v22, v23, v24, a1[6]);
  }

  else
  {
    sub_100116C78(a1[4], 5505, @"ClassA BT<%@>", v14, v15, v16, v17, v18, a1[6]);
  }

  (*(a1[7] + 16))();

LABEL_21:
}

void sub_100118C70(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002291A8;
  qword_1002291A8 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10011903C(id a1)
{
  if (a1)
  {
    v2 = *(a1 + 4);
    if (!v2)
    {
      v3 = a1;
      v4 = *(a1 + 2);
      v5 = sub_1001190A4(v4);
      v6 = v3[4];
      v3[4] = v5;

      v2 = v3[4];
    }

    a1 = v2;
    v1 = vars8;
  }

  return a1;
}

id sub_1001190A4(uint64_t a1)
{
  if (a1)
  {
    v1 = nw_agent_client_copy_endpoint();
    if (v1 && (device_id = nw_endpoint_get_device_id()) != 0 && *device_id)
    {
      v3 = [NSString stringWithUTF8String:device_id];
    }

    else
    {
      v4 = objc_opt_self();
      v5 = sub_100003490();
      dispatch_assert_queue_V2(v5);

      sub_1001619D8(v4);
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v6 = qword_100229428;
      v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v20;
LABEL_9:
        v10 = 0;
        while (1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [qword_100229428 objectForKeyedSubscript:*(*(&v19 + 1) + 8 * v10)];
          v12 = sub_100169428(v11);
          v13 = !v11 || v12 == 0;
          if (!v13 && (*(v11 + 48) & 2) != 0)
          {
            break;
          }

          if (v8 == ++v10)
          {
            v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
            if (!v8)
            {
              goto LABEL_20;
            }

            goto LABEL_9;
          }
        }

        v14 = *(v11 + 40);
      }

      else
      {
LABEL_20:

        v11 = 0;
        v14 = 0;
      }

      v3 = v14;

      if (v3)
      {
        if (qword_1002291B0 != -1)
        {
          dispatch_once(&qword_1002291B0, &stru_1001FBE70);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002291B0 != -1)
          {
            dispatch_once(&qword_1002291B0, &stru_1001FBE70);
          }

          _NRLogWithArgs(qword_1002291A8, 0, "%s%.30s:%-4d overriding device ID to companion link", "", "copyDeviceIdentifierForAgentClient", 30);
        }

        if (v11)
        {
          v15 = *(v11 + 40);
        }

        else
        {
          v15 = 0;
        }

        v3 = v15;
      }
    }

    goto LABEL_32;
  }

  v17 = sub_100119370();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v1 = sub_100119370();
    _NRLogWithArgs(v1, 17, "%s called with null client", "copyDeviceIdentifierForAgentClient");
    v3 = 0;
LABEL_32:

    goto LABEL_33;
  }

  v3 = 0;
LABEL_33:

  return v3;
}

id sub_100119370()
{
  if (qword_1002291B0 != -1)
  {
    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
  }

  v1 = qword_1002291A8;

  return v1;
}

id sub_1001196E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
LABEL_23:
    v8 = 0;
    goto LABEL_20;
  }

  if (!v3)
  {
    v15 = sub_100119370();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v17 = sub_100119370();
      _NRLogWithArgs(v17, 17, "%s called with null asName", "[NRApplicationServiceManager copyResolverPublicKeysForASName:]");
    }

    goto LABEL_23;
  }

  [*(a1 + 48) objectForKeyedSubscript:v3];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if (v11)
        {
          v12 = *(v11 + 48);
        }

        else
        {
          v12 = 0;
        }

        v13 = sub_1001198B4(v12);
        if (v13)
        {
          if (!v8)
          {
            v8 = objc_alloc_init(NSMutableArray);
          }

          if (([v8 containsObject:v13] & 1) == 0)
          {
            [v8 addObject:v13];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

LABEL_20:
  return v8;
}

uint64_t sub_1001198B4(void *a1)
{
  v1 = a1;
  v2 = nw_agent_client_copy_parameters();
  v3 = nw_parameters_copy_default_protocol_stack(v2);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1001199DC;
  v11 = sub_1001199EC;
  v12 = 0;
  iterate_block[0] = _NSConcreteStackBlock;
  iterate_block[1] = 3221225472;
  iterate_block[2] = sub_1001199F4;
  iterate_block[3] = &unk_1001FBE50;
  iterate_block[4] = &v7;
  nw_protocol_stack_iterate_application_protocols(v3, iterate_block);
  if (v8[5])
  {
    v4 = nw_quic_options_copy_local_public_key();
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_1001199C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001199DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1001199F4(uint64_t a1, void *a2)
{
  is_quic = a2;
  v5 = is_quic;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v7 = is_quic;
    is_quic = nw_protocol_options_is_quic(is_quic);
    v5 = v7;
    if (is_quic)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      v5 = v7;
    }
  }

  return _objc_release_x1(is_quic, v5);
}

void sub_10011A590(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10011B31C([NRASMListenRequest alloc], v5);
  v9 = v7;
  if (v7 && (objc_setProperty_nonatomic_copy(v7, v8, v6, 72), (v10 = sub_10011B080(v9)) != 0))
  {
    v11 = v10;
    v12 = nw_agent_client_copy_path();
    v13 = nw_path_copy_effective_local_endpoint(v12);
    objc_storeStrong(v9 + 8, v13);

    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291B0 != -1)
      {
        dispatch_once(&qword_1002291B0, &stru_1001FBE70);
      }

      v14 = qword_1002291A8;
      v15 = v9[2];
      v16 = v9[8];
      v17 = v9[7];
      v18 = v14;
      _NRLogWithArgs(v18, 0, "%s%.30s:%-4d received start advertise request for %@ (%p) from %@ (%@, %@)", "", "[NRApplicationServiceManager setupListenerAgent]_block_invoke", 1172, v11, v5, v15, v16, v17);
    }

    v19 = *(a1 + 32);
    if (v19)
    {
      v20 = *(v19 + 32);
    }

    else
    {
      v20 = 0;
    }

    [v20 setObject:v9 forKeyedSubscript:v11];
    v21 = +[NSUUID UUID];
    v27[0] = 0;
    v27[1] = 0;
    [v21 getUUIDBytes:v27];
    [v11 UTF8String];
    application_service = nw_endpoint_create_application_service();
    v26[0] = 0;
    v26[1] = 0;
    v23 = *(a1 + 32);
    if (v23)
    {
      v24 = *(v23 + 96);
    }

    else
    {
      v24 = 0;
    }

    [v24 getUUIDBytes:v26];
    nw_endpoint_set_agent_identifier();
    v25 = nw_array_create();
    nw_array_append();
    v6[2](v6, v25);
    sub_10011B75C(*(a1 + 32));
  }

  else
  {
    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291B0 != -1)
      {
        dispatch_once(&qword_1002291B0, &stru_1001FBE70);
      }

      _NRLogWithArgs(qword_1002291A8, 16, "%s%.30s:%-4d received start advertise request without an appsvc name", "", "[NRApplicationServiceManager setupListenerAgent]_block_invoke", 1166);
    }

    v11 = 0;
  }
}

void sub_10011A8B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 allValues];
  v7 = [v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    do
    {
      v10 = 0;
      do
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v37 + 1) + 8 * v10);
        if (v11)
        {
          if (v11[6] == v3)
          {
            goto LABEL_16;
          }
        }

        else if (!v3)
        {
LABEL_16:
          v13 = v11;

          if (!v11)
          {
            goto LABEL_41;
          }

          v14 = sub_10011B080(v13);
          if (qword_1002291B0 != -1)
          {
            dispatch_once(&qword_1002291B0, &stru_1001FBE70);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002291B0 != -1)
            {
              dispatch_once(&qword_1002291B0, &stru_1001FBE70);
            }

            v15 = v13[2];
            v16 = qword_1002291A8;
            _NRLogWithArgs(v16, 0, "%s%.30s:%-4d received stop advertise request for %@ (%p) from %@", "", "[NRApplicationServiceManager setupListenerAgent]_block_invoke_2", 1200, v14, v3, v15);
          }

          v17 = *(a1 + 32);
          if (v17)
          {
            v18 = *(v17 + 32);
          }

          else
          {
            v18 = 0;
          }

          [v18 setObject:0 forKeyedSubscript:v14];
          v19 = v13[7];
          v20 = v19;
          if (v19 && v19[11] == 1)
          {
            v21 = v13[8];

            if (v21)
            {
              v35 = 0u;
              v36 = 0u;
              v33 = 0u;
              v34 = 0u;
              v22 = *(a1 + 32);
              if (v22)
              {
                v22 = v22[7];
              }

              v20 = v22;
              v23 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
              if (v23)
              {
                v24 = v23;
                v29 = v3;
                v25 = *v34;
                do
                {
                  for (i = 0; i != v24; i = i + 1)
                  {
                    if (*v34 != v25)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v27 = *(*(&v33 + 1) + 8 * i);
                    if (v27)
                    {
                      v28 = *(v27 + 72);
                    }

                    else
                    {
                      v28 = 0;
                    }

                    block[0] = _NSConcreteStackBlock;
                    block[1] = 3221225472;
                    block[2] = sub_10011B2EC;
                    block[3] = &unk_1001FD088;
                    block[4] = v27;
                    v31 = v14;
                    v32 = v13;
                    dispatch_async(v28, block);
                  }

                  v24 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
                }

                while (v24);
                v3 = v29;
              }

              goto LABEL_48;
            }
          }

          else
          {
LABEL_48:
          }

          goto LABEL_50;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v12 = [v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
      v8 = v12;
    }

    while (v12);
  }

LABEL_41:
  if (qword_1002291B0 != -1)
  {
    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    _NRLogWithArgs(qword_1002291A8, 16, "%s%.30s:%-4d no listen request for client", "", "[NRApplicationServiceManager setupListenerAgent]_block_invoke_2", 1195);
  }

LABEL_50:
}

void sub_10011ACD8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = nw_agent_client_copy_endpoint();
  v4 = v3;
  if (v3 && nw_endpoint_get_type(v3) == nw_endpoint_type_address)
  {
    sub_10011AFC0(*(a1 + 32), v5, 1);
  }
}

void sub_10011AD4C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = nw_agent_client_copy_endpoint();
  v4 = v3;
  if (v3 && nw_endpoint_get_type(v3) == nw_endpoint_type_address)
  {
    sub_10011ADBC(*(a1 + 32), v5);
  }
}

void sub_10011ADBC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = *(a1 + 120);
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = *v16;
      do
      {
        v7 = 0;
        do
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v15 + 1) + 8 * v7);
          if (v8)
          {
            if (v8[2] == v3)
            {
              goto LABEL_15;
            }
          }

          else if (!v3)
          {
LABEL_15:
            v5 = v8;
            goto LABEL_16;
          }

          v7 = (v7 + 1);
        }

        while (v5 != v7);
        v9 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v5 = v9;
      }

      while (v9);
    }

LABEL_16:

    [*(a1 + 120) removeObject:{v5, v15}];
    if (v5 && v5[3])
    {
      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v10 = qword_100229408;
      v11 = *(a1 + 24);
      v12 = v5[3];
      v13 = v11;
      sub_100159FB0(v10, v13, v12);

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v14 = qword_100229408;
      sub_10015A52C(v14);
    }
  }
}

void sub_10011AFC0(uint64_t a1, void *a2, BOOL a3)
{
  v9 = a2;
  if (a1)
  {
    v6 = objc_alloc_init(NRASMFlow);
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_client, a2);
      v7->_incoming = a3;
      v8 = sub_1001190A4(v9);
      objc_storeStrong(&v7->_deviceIdentifier, v8);
    }

    else
    {
      v8 = sub_1001190A4(v9);
    }

    [*(a1 + 120) addObject:v7];
  }
}

id sub_10011B080(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!a1[6])
  {
    v18 = sub_100119370();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v20 = sub_100119370();
      _NRLogWithArgs(v20, 17, "%s called with null self.client", "[NRASMRequest copyApplicationServiceName]");
    }

    return 0;
  }

  v2 = a1[3];
  if (!v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = nw_agent_client_copy_browse_descriptor();
      v4 = v3;
      if (!v3)
      {
        goto LABEL_25;
      }

      application_service_name = nw_browse_descriptor_get_application_service_name(v3);
      if (!application_service_name)
      {
        goto LABEL_25;
      }

      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = nw_agent_client_copy_endpoint();
      v4 = v8;
      if (!v8)
      {
        goto LABEL_25;
      }

      if (nw_endpoint_get_type(v8) != (nw_endpoint_type_url|nw_endpoint_type_host))
      {
        if (nw_endpoint_get_type(v4) == nw_endpoint_type_address)
        {
          v10 = a1[5];
          if (v10)
          {
            *uu = 0;
            v22 = 0;
            [v10 getUUIDBytes:uu];
            if (!uuid_is_null(uu))
            {
              v11 = nw_path_copy_path_for_client();
              v12 = nw_path_copy_endpoint();
              v13 = v12;
              if (v12)
              {
                if (nw_endpoint_get_type(v12) == (nw_endpoint_type_url|nw_endpoint_type_host))
                {
                  v14 = nw_endpoint_get_application_service_name();
                  if (v14)
                  {
                    v15 = [NSString stringWithUTF8String:v14];
                    v16 = a1[3];
                    a1[3] = v15;
                  }
                }
              }
            }
          }
        }

        goto LABEL_25;
      }

      application_service_name = nw_endpoint_get_application_service_name();
      if (!application_service_name)
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_26:
        v2 = a1[3];
        goto LABEL_27;
      }

      v9 = nw_agent_client_copy_advertise_descriptor();
      v4 = v9;
      if (!v9)
      {
        goto LABEL_25;
      }

      application_service_name = nw_advertise_descriptor_get_application_service_name(v9);
      if (!application_service_name)
      {
        goto LABEL_25;
      }
    }

LABEL_7:
    v6 = [NSString stringWithUTF8String:application_service_name];
    v7 = a1[3];
    a1[3] = v6;

    goto LABEL_25;
  }

LABEL_27:

  return v2;
}

id sub_10011B2EC(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  if (v4)
  {
    v5 = *(v4 + 64);
  }

  else
  {
    v5 = 0;
  }

  return [v2 didStopAdvertiseRequestForASName:v3 endpoint:v5 asClient:v2];
}

id *sub_10011B31C(void *a1, void *a2)
{
  v4 = a2;
  if (!a1)
  {
LABEL_35:
    v35 = 0;
    goto LABEL_31;
  }

  v53.receiver = a1;
  v53.super_class = NRASMRequest;
  v5 = objc_msgSendSuper2(&v53, "init");
  if (!v5)
  {
    v37 = sub_100119370();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v39 = sub_100119370();
      _NRLogWithArgs(v39, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRASMRequest initWithClient:]", 175);
    }

    v40 = _os_log_pack_size();
    v41 = __error();
    v42 = _os_log_pack_fill(&v43 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0), v40, *v41, &_mh_execute_header, "%{public}s [super init] failed");
    *v42 = 136446210;
    *(v42 + 4) = "[NRASMRequest initWithClient:]";
    sub_100119370();
    _NRLogAbortWithPack();
    goto LABEL_35;
  }

  v6 = v5;
  objc_storeStrong(v5 + 6, a2);
  v7 = nw_agent_client_copy_path();
  v56[0] = 0;
  v56[1] = 0;
  nw_path_get_client_id();
  v8 = [[NSUUID alloc] initWithUUIDBytes:v56];
  v9 = v6[4];
  v6[4] = v8;

  v10 = nw_agent_client_copy_parameters();
  pid = nw_parameters_get_pid();
  *(v6 + 2) = pid;
  v12 = sub_10013CB6C(pid, 0);
  account_id = nw_parameters_get_account_id();
  v14 = objc_alloc_init(NRASMRequestMetadata);
  v15 = v6[7];
  v6[7] = v14;

  v55[0] = 0;
  v55[1] = 0;
  nw_parameters_get_parent_id();
  v16 = [[NSUUID alloc] initWithUUIDBytes:v55];
  v17 = v6[5];
  v6[5] = v16;

  v18 = &dispatch_group_enter_ptr;
  if (!account_id)
  {
    goto LABEL_30;
  }

  if (!strcmp(account_id, "com.apple.network.local-asquic"))
  {
    v32 = v6[7];
    if (v32)
    {
      v32[8] = 1;
    }

    goto LABEL_30;
  }

  v19 = [NSString stringWithUTF8String:account_id];
  if (![v19 hasPrefix:@"com.apple.networkrelay.encoded"])
  {
    goto LABEL_27;
  }

  v45 = v12;
  v46 = v10;
  v47 = v7;
  v48 = v4;
  v20 = [v19 stringByReplacingOccurrencesOfString:@"com.apple.networkrelay.encoded" withString:&stru_1001FDE68];

  v44 = v20;
  v21 = [v20 componentsSeparatedByString:@"."];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v22 = [v21 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (!v22)
  {
    goto LABEL_26;
  }

  v23 = v22;
  v24 = *v50;
  do
  {
    for (i = 0; i != v23; i = i + 1)
    {
      if (*v50 != v24)
      {
        objc_enumerationMutation(v21);
      }

      v26 = *(*(&v49 + 1) + 8 * i);
      if ([v26 isEqualToString:@"c"])
      {
        v27 = v6[7];
        if (!v27)
        {
          continue;
        }

        v28 = v27 + 9;
        goto LABEL_23;
      }

      if ([v26 isEqualToString:@"q"])
      {
        v29 = v6[7];
        if (!v29)
        {
          continue;
        }

        v28 = v29 + 10;
        goto LABEL_23;
      }

      if ([v26 isEqualToString:@"r"])
      {
        v30 = v6[7];
        if (!v30)
        {
          continue;
        }

        v28 = v30 + 11;
        goto LABEL_23;
      }

      if ([v26 isEqualToString:@"l"])
      {
        v31 = v6[7];
        if (v31)
        {
          v28 = v31 + 8;
LABEL_23:
          *v28 = 1;
          continue;
        }
      }
    }

    v23 = [v21 countByEnumeratingWithState:&v49 objects:v54 count:16];
  }

  while (v23);
LABEL_26:

  v19 = v44;
  v12 = v45;
  v7 = v47;
  v4 = v48;
  v10 = v46;
  v18 = &dispatch_group_enter_ptr;
LABEL_27:

LABEL_30:
  v33 = [objc_alloc(v18[469]) initWithFormat:@"%@ (c: %@, p: %@)", v12, v6[4], v6[5]];
  v34 = v6[2];
  v6[2] = v33;

  v35 = v6;
LABEL_31:

  return v35;
}

void sub_10011B75C(id *a1)
{
  if (a1)
  {
    v1 = a1;
    v24 = objc_alloc_init(NSMutableArray);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v1[8];
    v2 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v39;
      v22 = *v39;
      v23 = v1;
      do
      {
        v5 = 0;
        v25 = v3;
        do
        {
          if (*v39 != v4)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v38 + 1) + 8 * v5);
          v7 = [v1[4] objectForKeyedSubscript:v6];
          if (v7)
          {
            v8 = [v1[8] objectForKeyedSubscript:v6];
            if (v8)
            {
              v9 = nw_array_create();
              v28 = v8;
              nw_array_append();
              v27 = v9;
              (*(v7[9] + 16))();
              v36 = 0u;
              v37 = 0u;
              v34 = 0u;
              v35 = 0u;
              v10 = v1[7];
              v11 = [v10 countByEnumeratingWithState:&v34 objects:v43 count:16];
              if (v11)
              {
                v12 = v11;
                v13 = *v35;
                do
                {
                  for (i = 0; i != v12; i = i + 1)
                  {
                    if (*v35 != v13)
                    {
                      objc_enumerationMutation(v10);
                    }

                    v15 = *(*(&v34 + 1) + 8 * i);
                    if (v15)
                    {
                      v16 = *(v15 + 72);
                    }

                    else
                    {
                      v16 = 0;
                    }

                    block[0] = _NSConcreteStackBlock;
                    block[1] = 3221225472;
                    block[2] = sub_10011BAB8;
                    block[3] = &unk_1001FD060;
                    block[4] = v15;
                    block[5] = v6;
                    dispatch_async(v16, block);
                  }

                  v12 = [v10 countByEnumeratingWithState:&v34 objects:v43 count:16];
                }

                while (v12);
              }

              [v24 addObject:v6];
              v4 = v22;
              v1 = v23;
              v3 = v25;
              v8 = v28;
            }
          }

          else
          {
            notify_post([v6 UTF8String]);
          }

          v5 = v5 + 1;
        }

        while (v5 != v3);
        v3 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v3);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = v24;
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v42 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [v1[8] setObject:0 forKeyedSubscript:*(*(&v29 + 1) + 8 * j)];
        }

        v19 = [v17 countByEnumeratingWithState:&v29 objects:v42 count:16];
      }

      while (v19);
    }
  }
}

void sub_10011BAC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10011B31C([NRASMBrowseRequest alloc], v5);
  v9 = v7;
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v8, v6, 64);
    v10 = sub_10011B080(v9);
    v11 = qword_1002291B0;
    if (v10)
    {
      v12 = v10;
      if (qword_1002291B0 != -1)
      {
        dispatch_once(&qword_1002291B0, &stru_1001FBE70);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291B0 != -1)
        {
          dispatch_once(&qword_1002291B0, &stru_1001FBE70);
        }

        v13 = qword_1002291A8;
        v14 = v9[2];
        v15 = v9[7];
        v16 = v13;
        _NRLogWithArgs(v16, 0, "%s%.30s:%-4d received start browse request for %@ (%p) from %@ (%@)", "", "[NRApplicationServiceManager setupResolverAgent]_block_invoke", 633, v12, v5, v14, v15);
      }

      v17 = *(a1 + 32);
      if (v17)
      {
        v18 = *(v17 + 40);
      }

      else
      {
        v18 = 0;
      }

      v19 = [v18 objectForKeyedSubscript:v12];
      if (!v19)
      {
        v19 = objc_alloc_init(NSMutableArray);
      }

      [v19 addObject:v9];
      v20 = *(a1 + 32);
      if (v20)
      {
        v21 = *(v20 + 40);
      }

      else
      {
        v21 = 0;
      }

      [v21 setObject:v19 forKeyedSubscript:v12];
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v22 = *(a1 + 32);
      v31 = v6;
      v32 = v5;
      v30 = v9;
      if (v22)
      {
        v22 = v22[7];
      }

      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v36;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v36 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v35 + 1) + 8 * i);
            if (v28)
            {
              v29 = *(v28 + 72);
            }

            else
            {
              v29 = 0;
            }

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10011D76C;
            block[3] = &unk_1001FD060;
            block[4] = v28;
            v34 = v12;
            dispatch_async(v29, block);
          }

          v25 = [v23 countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v25);
      }

      v6 = v31;
      v5 = v32;
      v9 = v30;
      goto LABEL_37;
    }
  }

  else
  {
    v11 = qword_1002291B0;
  }

  if (v11 != -1)
  {
    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    _NRLogWithArgs(qword_1002291A8, 16, "%s%.30s:%-4d received start browse request without an appsvc name", "", "[NRApplicationServiceManager setupResolverAgent]_block_invoke", 629);
  }

  v12 = 0;
LABEL_37:
}

void sub_10011BE74(uint64_t a1, void *a2)
{
  v3 = a2;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v38 = a1;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[5];
  }

  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v50;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(v38 + 32);
        if (v11)
        {
          v12 = *(v11 + 40);
        }

        else
        {
          v12 = 0;
        }

        v13 = [v12 objectForKeyedSubscript:*(*(&v49 + 1) + 8 * i)];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v46;
          while (2)
          {
            v18 = 0;
            do
            {
              if (*v46 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v45 + 1) + 8 * v18);
              if (v19)
              {
                if (v19[6] == v3)
                {
                  goto LABEL_7;
                }
              }

              else if (!v3)
              {
LABEL_7:
                v10 = v19;

                if (!v19)
                {
                  goto LABEL_8;
                }

                v21 = sub_10011B080(v10);
                if (v21)
                {
                  if (qword_1002291B0 != -1)
                  {
                    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_1002291B0 != -1)
                    {
                      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                    }

                    v22 = v10[2];
                    v23 = qword_1002291A8;
                    _NRLogWithArgs(v23, 0, "%s%.30s:%-4d received stop browse request for %@ (%p) from %@", "", "[NRApplicationServiceManager setupResolverAgent]_block_invoke_3", 672, v21, v3, v22);
                  }

                  v24 = *(v38 + 32);
                  if (v24)
                  {
                    v25 = *(v24 + 40);
                  }

                  else
                  {
                    v25 = 0;
                  }

                  v26 = [v25 objectForKeyedSubscript:v21];
                  [v26 removeObject:v10];
                  if (![v26 count])
                  {
                    v27 = *(v38 + 32);
                    if (v27)
                    {
                      v28 = *(v27 + 40);
                    }

                    else
                    {
                      v28 = 0;
                    }

                    [v28 setObject:0 forKeyedSubscript:v21];
                    v43 = 0u;
                    v44 = 0u;
                    v41 = 0u;
                    v42 = 0u;
                    v29 = *(v38 + 32);
                    v37 = v26;
                    if (v29)
                    {
                      v29 = v29[7];
                    }

                    v30 = v29;
                    v31 = [v30 countByEnumeratingWithState:&v41 objects:v53 count:16];
                    if (v31)
                    {
                      v32 = v31;
                      v33 = *v42;
                      do
                      {
                        for (j = 0; j != v32; j = j + 1)
                        {
                          if (*v42 != v33)
                          {
                            objc_enumerationMutation(v30);
                          }

                          v35 = *(*(&v41 + 1) + 8 * j);
                          if (v35)
                          {
                            v36 = *(v35 + 72);
                          }

                          else
                          {
                            v36 = 0;
                          }

                          block[0] = _NSConcreteStackBlock;
                          block[1] = 3221225472;
                          block[2] = sub_10011D760;
                          block[3] = &unk_1001FD060;
                          block[4] = v35;
                          v40 = v21;
                          dispatch_async(v36, block);
                        }

                        v32 = [v30 countByEnumeratingWithState:&v41 objects:v53 count:16];
                      }

                      while (v32);
                    }

                    v26 = v37;
                  }
                }

                else
                {
                  if (qword_1002291B0 != -1)
                  {
                    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_1002291B0 != -1)
                    {
                      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                    }

                    _NRLogWithArgs(qword_1002291A8, 16, "%s%.30s:%-4d received stop browse request without an appsvc name", "", "[NRApplicationServiceManager setupResolverAgent]_block_invoke_3", 669);
                  }
                }

                goto LABEL_67;
              }

              v18 = v18 + 1;
            }

            while (v16 != v18);
            v20 = [v14 countByEnumeratingWithState:&v45 objects:v54 count:16];
            v16 = v20;
            if (v20)
            {
              continue;
            }

            break;
          }
        }

LABEL_8:
        ;
      }

      v7 = [v5 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v7);
  }

  if (qword_1002291B0 != -1)
  {
    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    _NRLogWithArgs(qword_1002291A8, 16, "%s%.30s:%-4d no browse request for client", "", "[NRApplicationServiceManager setupResolverAgent]_block_invoke_3", 663);
  }

LABEL_67:
}

void sub_10011C3D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10011B31C([NRASMResolveRequest alloc], v5);
  v9 = v7;
  v48 = v6;
  if (!v7)
  {
    sub_1001190A4(v5);

    v12 = qword_1002291B0;
    goto LABEL_57;
  }

  objc_setProperty_nonatomic_copy(v7, v8, v6, 72);
  v10 = sub_1001190A4(v5);
  objc_storeStrong(v9 + 10, v10);

  v11 = sub_10011B080(v9);
  v12 = qword_1002291B0;
  if (!v11)
  {
LABEL_57:
    if (v12 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291B0 != -1)
      {
        dispatch_once(&qword_1002291B0, &stru_1001FBE70);
      }

      _NRLogWithArgs(qword_1002291A8, 16, "%s%.30s:%-4d received start resolve request without an appsvc name", "", "[NRApplicationServiceManager setupResolverAgent]_block_invoke_5", 696);
    }

    v13 = 0;
    goto LABEL_64;
  }

  v13 = v11;
  if (qword_1002291B0 != -1)
  {
    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    v14 = qword_1002291A8;
    v15 = v9[2];
    v16 = v9[7];
    v17 = v14;
    _NRLogWithArgs(v17, 0, "%s%.30s:%-4d received start resolve request for %@ (%p) from %@ (%@)", "", "[NRApplicationServiceManager setupResolverAgent]_block_invoke_5", 700, v13, v5, v15, v16);
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    v19 = *(v18 + 48);
  }

  else
  {
    v19 = 0;
  }

  v20 = [v19 objectForKeyedSubscript:v13];
  if (!v20)
  {
    v20 = objc_alloc_init(NSMutableArray);
  }

  v46 = v20;
  v47 = v5;
  if ([v20 count])
  {
    v45 = a1;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v56;
LABEL_17:
      v25 = 0;
      while (1)
      {
        if (*v56 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v55 + 1) + 8 * v25);
        if (v26)
        {
          if (v26[64])
          {
            goto LABEL_18;
          }

          v27 = sub_10011D6D4(v26);
        }

        else
        {
          v27 = 0;
        }

        v28 = sub_10011D6D4(v9);
        v29 = [v27 isEqualToString:v28];

        if (v29)
        {

          [v21 addObject:v9];
          v33 = *(v45 + 32);
          if (v33)
          {
            v34 = *(v33 + 48);
          }

          else
          {
            v34 = 0;
          }

          v35 = v46;
          [v34 setObject:v21 forKeyedSubscript:v13];
          if (qword_1002291B0 != -1)
          {
            dispatch_once(&qword_1002291B0, &stru_1001FBE70);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002291B0 != -1)
            {
              dispatch_once(&qword_1002291B0, &stru_1001FBE70);
            }

            _NRLogWithArgs(qword_1002291A8, 0, "%s%.30s:%-4d already has resolve request for %@ (%p)", "", "[NRApplicationServiceManager setupResolverAgent]_block_invoke_5", 727, v13, v5);
          }

          goto LABEL_55;
        }

LABEL_18:
        if (v23 == ++v25)
        {
          v23 = [v21 countByEnumeratingWithState:&v55 objects:v60 count:16];
          if (!v23)
          {
            break;
          }

          goto LABEL_17;
        }
      }
    }

    [v21 addObject:v9];
    a1 = v45;
    v36 = *(v45 + 32);
    if (v36)
    {
      v31 = *(v36 + 48);
    }

    else
    {
      v31 = 0;
    }

    v32 = v21;
  }

  else
  {
    [v20 addObject:v9];
    v30 = *(a1 + 32);
    if (v30)
    {
      v31 = *(v30 + 48);
    }

    else
    {
      v31 = 0;
    }

    v32 = v20;
  }

  [v31 setObject:v32 forKeyedSubscript:v13];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v37 = *(a1 + 32);
  if (v37)
  {
    v37 = v37[7];
  }

  v38 = v37;
  v39 = [v38 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v52;
    do
    {
      for (i = 0; i != v40; i = i + 1)
      {
        if (*v52 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v51 + 1) + 8 * i);
        if (v43)
        {
          v44 = *(v43 + 72);
        }

        else
        {
          v44 = 0;
        }

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10011D754;
        block[3] = &unk_1001FD060;
        block[4] = v43;
        v50 = v13;
        dispatch_async(v44, block);
      }

      v40 = [v38 countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v40);
  }

  v35 = v46;
  v5 = v47;
LABEL_55:

LABEL_64:
}

void sub_10011C9A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[6];
  }

  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(a1 + 32);
        if (v10)
        {
          v11 = *(v10 + 48);
        }

        else
        {
          v11 = 0;
        }

        v12 = [v11 objectForKeyedSubscript:*(*(&v31 + 1) + 8 * i)];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v28;
          while (2)
          {
            v17 = 0;
            do
            {
              if (*v28 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v27 + 1) + 8 * v17);
              if (v18)
              {
                if (v18[6] == v3)
                {
                  goto LABEL_7;
                }
              }

              else if (!v3)
              {
LABEL_7:
                v9 = v18;

                if (!v18)
                {
                  goto LABEL_8;
                }

                v20 = sub_10011B080(v9);
                if (v20)
                {
                  if (qword_1002291B0 != -1)
                  {
                    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_1002291B0 != -1)
                    {
                      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                    }

                    v21 = v9[2];
                    v22 = qword_1002291A8;
                    _NRLogWithArgs(v22, 0, "%s%.30s:%-4d received stop resolve request for %@ (%p) from %@", "", "[NRApplicationServiceManager setupResolverAgent]_block_invoke_7", 754, v20, v3, v21);
                  }

                  v23 = *(a1 + 32);
                  if (v23)
                  {
                    v24 = *(v23 + 48);
                  }

                  else
                  {
                    v24 = 0;
                  }

                  v25 = [v24 objectForKeyedSubscript:v20];
                  [v25 removeObject:v9];
                  sub_10011D508(*(a1 + 32), v20);
                }

                else
                {
                  if (qword_1002291B0 != -1)
                  {
                    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_1002291B0 != -1)
                    {
                      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                    }

                    _NRLogWithArgs(qword_1002291A8, 16, "%s%.30s:%-4d received stop resolve request without an appsvc name", "", "[NRApplicationServiceManager setupResolverAgent]_block_invoke_7", 751);
                  }
                }

                goto LABEL_50;
              }

              v17 = v17 + 1;
            }

            while (v15 != v17);
            v19 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
            v15 = v19;
            if (v19)
            {
              continue;
            }

            break;
          }
        }

LABEL_8:
        ;
      }

      v6 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v6);
  }

  if (qword_1002291B0 != -1)
  {
    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    _NRLogWithArgs(qword_1002291A8, 16, "%s%.30s:%-4d no resolve request for client", "", "[NRApplicationServiceManager setupResolverAgent]_block_invoke_7", 745);
  }

LABEL_50:
}

void sub_10011CDC0(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = sub_10011B31C([NRASMResolveRequest alloc], v14);
  v4 = sub_10011B080(v3);
  if (v4)
  {
    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_9;
    }

    if (qword_1002291B0 == -1)
    {
      v5 = qword_1002291A8;
      if (v3)
      {
LABEL_7:
        v6 = v3[2];
        v7 = v3[7];
LABEL_8:
        v8 = v5;
        _NRLogWithArgs(v8, 0, "%s%.30s:%-4d received flow assert for %@ (%p) from %@ (%@)", "", "[NRApplicationServiceManager setupResolverAgent]_block_invoke_8", 781, v4, v14, v6, v7);

LABEL_9:
        if (v3)
        {
          *(v3 + 65) = 1;
          *(v3 + 64) = 1;
        }

        v9 = *(a1 + 32);
        if (v9)
        {
          v10 = *(v9 + 48);
        }

        else
        {
          v10 = 0;
        }

        v11 = [v10 objectForKeyedSubscript:v4];
        if ([v11 count])
        {
          [v11 addObject:v3];
          v12 = *(a1 + 32);
          if (v12)
          {
            v13 = *(v12 + 48);
          }

          else
          {
            v13 = 0;
          }

          [v13 setObject:v11 forKeyedSubscript:v4];
        }

        else
        {
          if (qword_1002291B0 != -1)
          {
            dispatch_once(&qword_1002291B0, &stru_1001FBE70);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002291B0 != -1)
            {
              dispatch_once(&qword_1002291B0, &stru_1001FBE70);
            }

            _NRLogWithArgs(qword_1002291A8, 16, "%s%.30s:%-4d received unexpected flow assert for %@", "", "[NRApplicationServiceManager setupResolverAgent]_block_invoke_8", 792, v4);
          }
        }

        sub_10011AFC0(*(a1 + 32), v14, 0);

        goto LABEL_30;
      }
    }

    else
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
      v5 = qword_1002291A8;
      if (v3)
      {
        goto LABEL_7;
      }
    }

    v6 = 0;
    v7 = 0;
    goto LABEL_8;
  }

  if (qword_1002291B0 != -1)
  {
    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    _NRLogWithArgs(qword_1002291A8, 16, "%s%.30s:%-4d received flow assert without an appsvc name", "", "[NRApplicationServiceManager setupResolverAgent]_block_invoke_8", 777);
  }

LABEL_30:
}

void sub_10011D0BC(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_10011ADBC(*(a1 + 32), v3);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[6];
  }

  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (!v5)
  {
LABEL_38:

    v9 = 0;
    goto LABEL_39;
  }

  v6 = v5;
  v7 = *v34;
LABEL_6:
  v8 = 0;
  while (1)
  {
    if (*v34 != v7)
    {
      objc_enumerationMutation(obj);
    }

    v10 = *(a1 + 32);
    v11 = v10 ? *(v10 + 48) : 0;
    v12 = [v11 objectForKeyedSubscript:*(*(&v33 + 1) + 8 * v8)];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v14)
    {
      break;
    }

LABEL_25:

LABEL_8:
    if (++v8 == v6)
    {
      v6 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (!v6)
      {
        goto LABEL_38;
      }

      goto LABEL_6;
    }
  }

  v15 = v14;
  v16 = *v30;
LABEL_15:
  v17 = 0;
  while (1)
  {
    if (*v30 != v16)
    {
      objc_enumerationMutation(v13);
    }

    v18 = *(*(&v29 + 1) + 8 * v17);
    if (!v18)
    {
      break;
    }

    if (v18[6] == v3)
    {
      goto LABEL_7;
    }

LABEL_20:
    if (v15 == ++v17)
    {
      v19 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
      v15 = v19;
      if (v19)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }
  }

  if (v3)
  {
    goto LABEL_20;
  }

LABEL_7:
  v9 = v18;

  if (!v18)
  {
    goto LABEL_8;
  }

  if (*(v9 + 65))
  {
    v20 = sub_10011B080(v9);
    if (v20)
    {
      if (qword_1002291B0 != -1)
      {
        dispatch_once(&qword_1002291B0, &stru_1001FBE70);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291B0 != -1)
        {
          dispatch_once(&qword_1002291B0, &stru_1001FBE70);
        }

        v21 = qword_1002291A8;
        v22 = v9[7];
        v23 = v9[2];
        v24 = v21;
        _NRLogWithArgs(v24, 0, "%s%.30s:%-4d received flow unassert for %@ (%p) from %@ (%@)", "", "[NRApplicationServiceManager setupResolverAgent]_block_invoke_9", 826, v20, v3, v23, v22);
      }

      v25 = *(a1 + 32);
      if (v25)
      {
        v26 = *(v25 + 48);
      }

      else
      {
        v26 = 0;
      }

      v27 = [v26 objectForKeyedSubscript:v20];
      [v27 removeObject:v9];
      sub_10011D508(*(a1 + 32), v20);
    }

    else
    {
      if (qword_1002291B0 != -1)
      {
        dispatch_once(&qword_1002291B0, &stru_1001FBE70);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291B0 != -1)
        {
          dispatch_once(&qword_1002291B0, &stru_1001FBE70);
        }

        _NRLogWithArgs(qword_1002291A8, 16, "%s%.30s:%-4d received flow unassert without an appsvc name", "", "[NRApplicationServiceManager setupResolverAgent]_block_invoke_9", 821);
      }
    }

    goto LABEL_52;
  }

LABEL_39:
  if (qword_1002291B0 != -1)
  {
    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    _NRLogWithArgs(qword_1002291A8, 16, "%s%.30s:%-4d received unexpected flow unassert for %@", "", "[NRApplicationServiceManager setupResolverAgent]_block_invoke_9", 815, v9);
  }

LABEL_52:
}

void sub_10011D508(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 48) objectForKeyedSubscript:v3];
    if (![v4 count])
    {
      [*(a1 + 48) setObject:0 forKeyedSubscript:v3];
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = *(a1 + 56);
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v15;
        do
        {
          v9 = 0;
          do
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v14 + 1) + 8 * v9);
            if (v10)
            {
              v11 = *(v10 + 72);
            }

            else
            {
              v11 = 0;
            }

            v12[0] = _NSConcreteStackBlock;
            v12[1] = 3221225472;
            v12[2] = sub_10011D6C8;
            v12[3] = &unk_1001FD060;
            v12[4] = v10;
            v13 = v3;
            dispatch_async(v11, v12);

            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v7);
      }
    }
  }
}

id sub_10011D6D4(id a1)
{
  if (a1)
  {
    v2 = *(a1 + 10);
    if (!v2)
    {
      v3 = a1;
      v4 = *(a1 + 6);
      v5 = sub_1001190A4(v4);
      v6 = v3[10];
      v3[10] = v5;

      v2 = v3[10];
    }

    a1 = v2;
    v1 = vars8;
  }

  return a1;
}

void sub_10011DE24(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v1 = a1;
  if (*(a1 + 9))
  {
    return;
  }

  v2 = *(a1 + 64);
  v3 = &qword_100229000;
  v4 = &qword_100229000;
  if (!v2)
  {
    goto LABEL_56;
  }

  v5 = *(v1 + 10);

  if (v5)
  {
    goto LABEL_56;
  }

  objc_opt_self();
  if (qword_1002291A0 != -1)
  {
    dispatch_once(&qword_1002291A0, &stru_1001FBD88);
  }

  v6 = *(v1 + 64);
  v7 = qword_100229198;
  v8 = v6;
  v47 = v7;
  if (!v7)
  {
    goto LABEL_55;
  }

  v46 = v8;
  if (!v8)
  {
    v40 = sub_100119370();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    v8 = 0;
    if (IsLevelEnabled)
    {
      v42 = sub_100119370();
      _NRLogWithArgs(v42, 17, "%s called with null deviceID", "[NRApplicationServiceManager cancelAllFlowsForDeviceID:]");

      v8 = 0;
    }

    goto LABEL_55;
  }

  v45 = [NEPolicyResult dropWithFlags:4];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v7[15];
  v9 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (!v9)
  {
    v33 = obj;
    goto LABEL_53;
  }

  v43 = v1;
  v10 = 0;
  v11 = *v53;
  v12 = v46;
  v13 = obj;
  v14 = v9;
  v49 = *v53;
  while (2)
  {
    v15 = 0;
    v48 = v14;
    do
    {
      if (*v53 != v11)
      {
        objc_enumerationMutation(v13);
      }

      v16 = *(*(&v52 + 1) + 8 * v15);
      v17 = sub_10011903C(v16);
      v18 = [v17 isEqualToString:v12];

      if (v18)
      {
        v19 = nw_agent_client_copy_endpoint();
        if (v19)
        {
          v20 = [NWAddressEndpoint endpointWithCEndpoint:v19];
          v21 = [v20 addressFamily];
          v22 = objc_alloc_init(NSMutableArray);
          v23 = +[NEPolicyCondition allInterfaces];
          [v22 addObject:v23];

          if (v21 == 30)
          {
            v24 = 128;
          }

          else
          {
            v24 = 32;
          }

          v50 = [NEPolicyCondition flowRemoteAddress:v20 prefix:v24];
          [v22 addObject:?];
          v25 = nw_agent_client_copy_parameters();
          pid = nw_parameters_get_pid();
          if (pid)
          {
            v27 = [NEPolicyCondition effectivePID:pid];
            [v22 addObject:v27];
          }

          v28 = [[NEPolicy alloc] initWithOrder:1 result:v45 conditions:v22];
          if (v16)
          {
            *(v16 + 9) = 1;
          }

          objc_opt_self();
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v29 = qword_100229408;
          v30 = v47[3];
          v31 = sub_100159E00(v29, v30, v28);
          if (v16)
          {
            objc_storeStrong((v16 + 24), v31);
          }

          v10 = 1;
          v12 = v46;
          v13 = obj;
          v14 = v48;
        }

        else
        {
          if (qword_1002291B0 != -1)
          {
            dispatch_once(&qword_1002291B0, &stru_1001FBE70);
          }

          if (!_NRLogIsLevelEnabled())
          {
            goto LABEL_16;
          }

          if (qword_1002291B0 != -1)
          {
            dispatch_once(&qword_1002291B0, &stru_1001FBE70);
          }

          if (v16)
          {
            v32 = *(v16 + 16);
          }

          else
          {
            v32 = 0;
          }

          v20 = qword_1002291A8;
          _NRLogWithArgs(v20, 16, "%s%.30s:%-4d Failed to copy endpoint for agent client %@", "", "[NRApplicationServiceManager cancelAllFlowsForDeviceID:]", 1270, v32);
        }

        v11 = v49;
LABEL_16:
      }

      v15 = v15 + 1;
    }

    while (v14 != v15);
    v14 = [v13 countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

  v1 = v43;
  v4 = &qword_100229000;
  v3 = &qword_100229000;
  if (v10)
  {
    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291B0 != -1)
      {
        dispatch_once(&qword_1002291B0, &stru_1001FBE70);
      }

      _NRLogWithArgs(qword_1002291A8, 0, "%s%.30s:%-4d Defuncting flows for device %@", "", "[NRApplicationServiceManager cancelAllFlowsForDeviceID:]", 1300, v46);
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v33 = qword_100229408;
    sub_10015A52C(v33);
LABEL_53:
  }

  v8 = v46;
LABEL_55:

LABEL_56:
  *(v1 + 9) = 1;
  v34 = _NRCopyLogObjectForNRUUID();
  v35 = _NRLogIsLevelEnabled();

  if (v35)
  {
    v36 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v36, 1, "%s%.30s:%-4d %@ cancel", "", "[NRApplicationServiceClient cancel]", 1384, v1);
  }

  objc_opt_self();
  if (v3[52] == -1)
  {
    v37 = v4[51];
    if (v37)
    {
      goto LABEL_60;
    }
  }

  else
  {
    dispatch_once(&qword_1002291A0, &stru_1001FBD88);
    v37 = v4[51];
    if (v37)
    {
LABEL_60:
      v38 = v37[2];
      v39 = v1;
      v51 = v37;
      dispatch_assert_queue_V2(v38);
      [v51[7] removeObject:v39];
    }
  }
}

void sub_10011E510(id a1)
{
  v1 = objc_alloc_init(NRApplicationServiceManager);
  v2 = qword_100229198;
  qword_100229198 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_10011E694(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 8) == 1)
  {
    [*(a1 + 48) objectForKeyedSubscript:v3];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = v18 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = *v16;
      do
      {
        if (*v16 == v8)
        {
          v9 = *(&v15 + 1);
          do
          {
            if (*v9)
            {
              v10 = *(*v9 + 65);
              v6 |= v10 ^ 1;
              v7 |= v10;
            }

            else
            {
              v6 = 1;
            }

            v9 += 8;
            --v5;
          }

          while (v5);
        }

        else
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v4);
            }

            v12 = *(*(&v15 + 1) + 8 * i);
            if (v12)
            {
              v13 = *(v12 + 65);
              v6 |= v13 ^ 1;
              v7 |= v13;
            }

            else
            {
              v6 = 1;
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
      LOBYTE(v5) = v7 & (v6 ^ 1);
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5 & 1;
}

uint64_t sub_10011E848(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  device_id = nw_endpoint_get_device_id();
  if (device_id)
  {
    v6 = device_id;
    v7 = sub_10011D6D4(*(a1 + 32));
    v8 = [NSString stringWithUTF8String:v6];
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      nw_array_append();
    }
  }

  return 1;
}

nw_endpoint_t sub_10011E8EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_10;
  }

  if (!v3)
  {
    v8 = sub_100119370();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = sub_100119370();
      _NRLogWithArgs(v5, 17, "%s called with null asName", "[NRApplicationServiceManager copyListenerEndpointForASName:]");
      goto LABEL_7;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_9;
  }

  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (!v5)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v6 = nw_agent_client_copy_path();
  v7 = nw_path_copy_effective_local_endpoint(v6);

LABEL_8:
LABEL_9:

  return v7;
}

id *sub_10011E9B8(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v30.receiver = a1;
    v30.super_class = NRApplicationServiceClient;
    v10 = objc_msgSendSuper2(&v30, "init");
    if (!v10)
    {
      v23 = sub_100119370();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v25 = sub_100119370();
        _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRApplicationServiceClient initWithDelegate:delegateQueue:nrUUID:]", 1332);
      }

      v26 = _os_log_pack_size();
      v27 = __error();
      v28 = _os_log_pack_fill(&v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v26, *v27, &_mh_execute_header, "%{public}s [super init] failed");
      *v28 = 136446210;
      *(v28 + 4) = "[NRApplicationServiceClient initWithDelegate:delegateQueue:nrUUID:]";
      sub_100119370();
      _NRLogAbortWithPack();
    }

    v11 = v10;
    v10[5] = atomic_fetch_add_explicit(&qword_1002287C8, 1uLL, memory_order_relaxed);
    objc_storeWeak(v10 + 6, v7);
    objc_storeStrong(v11 + 9, a3);
    objc_storeStrong(v11 + 7, a4);
    v12 = objc_alloc_init(NSMutableArray);
    v13 = v11[2];
    v11[2] = v12;

    v14 = objc_alloc_init(NSMutableArray);
    v15 = v11[3];
    v11[3] = v14;

    v16 = objc_alloc_init(NSMutableArray);
    v17 = v11[4];
    v11[4] = v16;

    v18 = sub_100163A30(NRDLocalDevice, v11[7]);
    v19 = v18;
    if (v18)
    {
      objc_storeStrong(v11 + 8, *(v18 + 40));
      v20 = v19[18];
    }

    else
    {
      objc_storeStrong(v11 + 8, 0);
      v20 = 0;
    }

    v21 = v20;
    *(v11 + 10) = [v21 hasCompanionDatapath];

    a1 = v11;
  }

  return a1;
}

void sub_10011EC08(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && (*(a1 + 9) & 1) == 0)
  {
    v10 = v3;
    if (v3)
    {
      objc_opt_self();
      if (qword_1002291A0 != -1)
      {
        dispatch_once(&qword_1002291A0, &stru_1001FBD88);
      }

      v4 = qword_100229198;
      v5 = v10;
      if (!v4)
      {
        goto LABEL_15;
      }

      v6 = *(v4 + 72);
      if (v6)
      {

LABEL_10:
        [v5 UTF8String];
        v7 = nw_interface_create_with_name();
        if (*(v4 + 72))
        {
          nw_agent_add_to_interface();
        }

        if (*(v4 + 88))
        {
          nw_agent_add_to_interface();
        }

        goto LABEL_15;
      }

      if (*(v4 + 88))
      {
        goto LABEL_10;
      }

LABEL_15:

      v3 = v10;
      goto LABEL_16;
    }

    v8 = sub_100119370();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    v3 = 0;
    if (IsLevelEnabled)
    {
      v5 = sub_100119370();
      _NRLogWithArgs(v5, 17, "%s called with null interfaceName", "[NRApplicationServiceClient addInterfaceForApplicationService:]");
      goto LABEL_15;
    }
  }

LABEL_16:
}

void sub_10011ED4C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && (*(a1 + 9) & 1) == 0)
  {
    v8 = v3;
    objc_opt_self();
    if (qword_1002291A0 != -1)
    {
      dispatch_once(&qword_1002291A0, &stru_1001FBD88);
    }

    v4 = qword_100229198;
    v5 = v8;
    if (!v4)
    {
      goto LABEL_14;
    }

    v6 = *(v4 + 72);
    if (v6)
    {
    }

    else if (!*(v4 + 88))
    {
LABEL_14:

      v3 = v8;
      goto LABEL_15;
    }

    [v5 UTF8String];
    v7 = nw_interface_create_with_name();
    if (*(v4 + 72))
    {
      nw_agent_remove_from_interface();
    }

    if (*(v4 + 88))
    {
      nw_agent_remove_from_interface();
    }

    goto LABEL_14;
  }

LABEL_15:
}

uint64_t sub_10011EE44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && (*(a1 + 9) & 1) == 0)
  {
    objc_opt_self();
    if (qword_1002291A0 != -1)
    {
      dispatch_once(&qword_1002291A0, &stru_1001FBD88);
    }

    v5 = qword_100229198;
    v6 = v3;
    v7 = v6;
    if (v5)
    {
      if (v6)
      {
        [*(v5 + 48) objectForKeyedSubscript:v6];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = v20 = 0u;
        IsLevelEnabled = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (IsLevelEnabled)
        {
          v9 = *v18;
          while (2)
          {
            for (i = 0; i != IsLevelEnabled; ++i)
            {
              if (*v18 != v9)
              {
                objc_enumerationMutation(v8);
              }

              v11 = *(*(&v17 + 1) + 8 * i);
              if (v11)
              {
                v12 = *(v11 + 56);
                if (v12)
                {
                  v13 = v12[9];

                  if (v13)
                  {
                    IsLevelEnabled = 1;
                    goto LABEL_20;
                  }
                }
              }
            }

            IsLevelEnabled = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
            if (IsLevelEnabled)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:
      }

      else
      {
        v15 = sub_100119370();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v16 = sub_100119370();
          _NRLogWithArgs(v16, 17, "%s called with null asName", "[NRApplicationServiceManager shouldResolveASNameAfterClassCUnlock:]");

          IsLevelEnabled = 0;
        }
      }
    }

    else
    {
      IsLevelEnabled = 0;
    }
  }

  else
  {
    IsLevelEnabled = 0;
  }

  return IsLevelEnabled;
}

uint64_t sub_10011F034(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && (*(a1 + 9) & 1) == 0)
  {
    objc_opt_self();
    if (qword_1002291A0 != -1)
    {
      dispatch_once(&qword_1002291A0, &stru_1001FBD88);
    }

    v4 = qword_100229198;
    v5 = v3;
    v6 = v5;
    if (v4)
    {
      if (v5)
      {
        [*(v4 + 40) objectForKeyedSubscript:v5];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v7 = v32 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v30;
          while (2)
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v30 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v29 + 1) + 8 * i);
              if (v12)
              {
                v13 = *(v12 + 56);
                if (v13)
                {
                  v14 = v13[8];

                  if (v14)
                  {
                    v4 = 1;
                    v15 = v7;
                    goto LABEL_32;
                  }
                }
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        [*(v4 + 48) objectForKeyedSubscript:v6];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v15 = v28 = 0u;
        v4 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v4)
        {
          v16 = *v26;
          while (2)
          {
            for (j = 0; j != v4; ++j)
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(v15);
              }

              v18 = *(*(&v25 + 1) + 8 * j);
              if (v18)
              {
                v19 = *(v18 + 56);
                if (v19)
                {
                  v20 = v19[8];

                  if (v20)
                  {
                    v4 = 1;
                    goto LABEL_31;
                  }
                }
              }
            }

            v4 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v4)
            {
              continue;
            }

            break;
          }
        }

LABEL_31:

LABEL_32:
      }

      else
      {
        v22 = sub_100119370();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v24 = sub_100119370();
          _NRLogWithArgs(v24, 17, "%s called with null asName", "[NRApplicationServiceManager useOnlyLocalLinksForASName:]");
        }

        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_10011F2E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && (*(a1 + 9) & 1) == 0)
  {
    objc_opt_self();
    if (qword_1002291A0 != -1)
    {
      dispatch_once(&qword_1002291A0, &stru_1001FBD88);
    }

    v4 = qword_100229198;
    v5 = v3;
    v6 = v5;
    if (v4)
    {
      if (v5)
      {
        [*(v4 + 40) objectForKeyedSubscript:v5];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v7 = v32 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v30;
          while (2)
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v30 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v29 + 1) + 8 * i);
              if (v12)
              {
                v13 = *(v12 + 56);
                if (v13)
                {
                  v14 = v13[10];

                  if (v14)
                  {
                    v4 = 1;
                    v15 = v7;
                    goto LABEL_32;
                  }
                }
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        [*(v4 + 48) objectForKeyedSubscript:v6];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v15 = v28 = 0u;
        v4 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v4)
        {
          v16 = *v26;
          while (2)
          {
            for (j = 0; j != v4; ++j)
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(v15);
              }

              v18 = *(*(&v25 + 1) + 8 * j);
              if (v18)
              {
                v19 = *(v18 + 56);
                if (v19)
                {
                  v20 = v19[10];

                  if (v20)
                  {
                    v4 = 1;
                    goto LABEL_31;
                  }
                }
              }
            }

            v4 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v4)
            {
              continue;
            }

            break;
          }
        }

LABEL_31:

LABEL_32:
      }

      else
      {
        v22 = sub_100119370();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v24 = sub_100119370();
          _NRLogWithArgs(v24, 17, "%s called with null asName", "[NRApplicationServiceManager canSkipQRAssert:]");
        }

        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10011F7D4(void *a1)
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

void sub_10011F834(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002291B8;
  qword_1002291B8 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10011FA74()
{
  if (qword_1002291C0 != -1)
  {
    dispatch_once(&qword_1002291C0, &stru_1001FBE90);
  }

  v1 = qword_1002291B8;

  return v1;
}

void sub_10011FAC8(uint64_t a1)
{
  v42 = [*(a1 + 32) nrUUID];
  v2 = *(a1 + 40);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained linkIsUnavailable:*(a1 + 32)];

  v4 = *(a1 + 40);
  if (v4 && *(v4 + 32) == 1)
  {
    if (qword_1002291C0 != -1)
    {
      dispatch_once(&qword_1002291C0, &stru_1001FBE90);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291C0 != -1)
      {
        dispatch_once(&qword_1002291C0, &stru_1001FBE90);
      }

      _NRLogWithArgs(qword_1002291B8, 1, "%s%.30s:%-4d Forcing interface availability event, as the underlying transport is still available", "", "[NRLinkManagerFixedInterface linkIsUnavailable:]_block_invoke", 333);
    }

    v5 = *(a1 + 40);
    v6 = v42;
    if (!v5)
    {
      v29 = 0;
      goto LABEL_32;
    }

    v7 = v5[3];
    dispatch_assert_queue_V2(v7);

    if (([v5 shouldCreateLinkForNRUUID:v6] & 1) == 0)
    {
      StringFromNRLinkType = createStringFromNRLinkType();
      [v5 reportEvent:3017 detailsFormat:@"unsupported link type: %@", StringFromNRLinkType];
      v29 = 0;
      goto LABEL_31;
    }

    v8 = [v5[7] hostname];
    objc_opt_self();
    if (qword_100228E88 != -1)
    {
      dispatch_once(&qword_100228E88, &stru_1001FA180);
    }

    v9 = qword_100228E80;
    v10 = @"62743";
    if (!v9)
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [NWAddressEndpoint endpointWithHostname:v8 port:v11];

    v13 = [NRLinkFixedInterface alloc];
    v14 = v5[3];
    v15 = v5[8];
    objc_opt_self();
    if (qword_100228E88 != -1)
    {
      dispatch_once(&qword_100228E88, &stru_1001FA180);
    }

    v16 = qword_100228E80;
    if (v16)
    {
      v17 = @"62743";
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    v19 = v14;
    v20 = v5;
    v21 = v6;
    v22 = v15;
    StringFromNRLinkType = v12;
    v24 = v18;
    if (!v13)
    {
      goto LABEL_48;
    }

    if (v19)
    {
      if (v21)
      {
        if (_NRIsUUIDNonZero())
        {
          if (v22)
          {
            v43.receiver = v13;
            v43.super_class = NRLinkFixedInterface;
            v25 = objc_msgSendSuper2(&v43, "initLinkWithQueue:linkDelegate:nrUUID:", v19, v20, v21);
            if (v25)
            {
              v26 = v25;
              [v25 setType:2];
              [v26 setSubtype:101];
              [v26 setLocalInterfaceName:v22];
              [v26 setLocalOuterEndpoint:0];
              [v26 setRemoteOuterEndpoint:StringFromNRLinkType];
              objc_storeStrong((v26 + 279), v17);
              v27 = [v21 UUIDString];
              [v26 reportEvent:3000 details:v27];

              v28 = [v26 linkDelegate];
              [v28 linkIsAvailable:v26];

              v13 = v26;
              v29 = v13;
LABEL_29:

LABEL_31:
LABEL_32:

              goto LABEL_33;
            }

            v35 = sub_10007478C();
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              v37 = sub_10007478C();
              _NRLogWithArgs(v37, 17, "[NRLink initLinkWithQueue:] failed");
            }

            v13 = 0;
LABEL_48:
            v29 = 0;
            goto LABEL_29;
          }

          v34 = sub_10007478C();
          v41 = _NRLogIsLevelEnabled();

          if (!v41)
          {
            goto LABEL_48;
          }

          v31 = sub_10007478C();
          _NRLogWithArgs(v31, 17, "%s called with null fixedInterfaceName");
        }

        else
        {
          v33 = sub_10007478C();
          v40 = _NRLogIsLevelEnabled();

          if (!v40)
          {
            goto LABEL_48;
          }

          v31 = sub_10007478C();
          _NRLogWithArgs(v31, 17, "called with all-zero nrUUID");
        }
      }

      else
      {
        v32 = sub_10007478C();
        v39 = _NRLogIsLevelEnabled();

        if (!v39)
        {
          goto LABEL_48;
        }

        v31 = sub_10007478C();
        _NRLogWithArgs(v31, 17, "%s called with null nrUUID");
      }
    }

    else
    {
      v30 = sub_10007478C();
      v38 = _NRLogIsLevelEnabled();

      if (!v38)
      {
        goto LABEL_48;
      }

      v31 = sub_10007478C();
      _NRLogWithArgs(v31, 17, "%s called with null queue");
    }

    v29 = 0;
    goto LABEL_29;
  }

LABEL_33:
}

void sub_100120214(uint64_t a1)
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
    if (qword_1002291C0 != -1)
    {
      dispatch_once(&qword_1002291C0, &stru_1001FBE90);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291C0 != -1)
      {
        dispatch_once(&qword_1002291C0, &stru_1001FBE90);
      }

      _NRLogWithArgs(qword_1002291B8, 16, "%s%.30s:%-4d %@: link %@ is not in suspended state anymore", "", "[NRLinkManagerFixedInterface linkIsSuspended:]_block_invoke", 307, *(a1 + 40), *(a1 + 32));
    }
  }
}

void sub_100120514(uint64_t a1)
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
    if (qword_1002291C0 != -1)
    {
      dispatch_once(&qword_1002291C0, &stru_1001FBE90);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291C0 != -1)
      {
        dispatch_once(&qword_1002291C0, &stru_1001FBE90);
      }

      _NRLogWithArgs(qword_1002291B8, 16, "%s%.30s:%-4d %@: link %@ is not in ready state anymore", "", "[NRLinkManagerFixedInterface linkIsReady:]_block_invoke", 284, *(a1 + 40), *(a1 + 32));
    }
  }
}

void sub_100120834(uint64_t a1)
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
    if (qword_1002291C0 != -1)
    {
      dispatch_once(&qword_1002291C0, &stru_1001FBE90);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291C0 != -1)
      {
        dispatch_once(&qword_1002291C0, &stru_1001FBE90);
      }

      _NRLogWithArgs(qword_1002291B8, 16, "%s%.30s:%-4d %@: link %@ is not in initial state anymore", "", "[NRLinkManagerFixedInterface linkIsAvailable:]_block_invoke", 261, *(a1 + 40), *(a1 + 32));
    }
  }
}

void sub_100121148(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002291C8;
  qword_1002291C8 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10012141C()
{
  if (qword_1002291D0 != -1)
  {
    dispatch_once(&qword_1002291D0, &stru_1001FBED8);
  }

  v1 = qword_1002291C8;

  return v1;
}

void sub_100121470(void *a1)
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

void sub_10012161C(uint64_t a1)
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

void sub_10012167C(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 36) = nw_path_get_status(*(a1 + 56));
    v2 = *(a1 + 36);
    if (v2 == 2)
    {
      v3 = [*(a1 + 40) copy];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v41;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v41 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v40 + 1) + 8 * i);
            if (([v9 ikeClassCEstablished] & 1) != 0 || objc_msgSend(v9, "ikeClassDEstablished"))
            {
              [v9 suspend];
            }

            else
            {
              [v9 cancelWithReason:@"No network route"];
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v40 objects:v46 count:16];
        }

        while (v6);
      }

      v2 = *(a1 + 36);
    }

    if (v2 == 1)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      obj = sub_10016CD90(NRDLocalDevice);
      v10 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v10)
      {
        v11 = v10;
        v31 = *v37;
        do
        {
          for (j = 0; j != v11; j = j + 1)
          {
            if (*v37 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v36 + 1) + 8 * j);
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v17 = *(a1 + 40);
            v18 = [v17 countByEnumeratingWithState:&v32 objects:v44 count:16];
            if (!v18)
            {
LABEL_34:

              v17 = v16;
              if ([a1 shouldCreateLinkForNRUUID:v17])
              {
                v24 = sub_100163A30(NRDLocalDevice, v17);
                StringFromNRLinkType = v24;
                if (v24 && *(v24 + 11) == 1)
                {
                  v14 = a1;
                  v15 = @"link suspension in effect for non-nearby links";
LABEL_21:
                  [v14 reportEvent:3017 detailsFormat:v15, v29];
                }

                else
                {
                  v25 = [NRLinkQuickRelay alloc];
                  v26 = *(a1 + 24);
                  v27 = [(NRLinkQuickRelay *)v25 initLinkWithQueue:v26 linkDelegate:a1 nrUUID:v17];

                  if (!v27)
                  {
                    v28 = [v17 UUIDString];
                    [a1 reportEvent:3017 details:v28];
                  }
                }

                goto LABEL_23;
              }

              StringFromNRLinkType = createStringFromNRLinkType();
              v29 = StringFromNRLinkType;
              v14 = a1;
              v15 = @"unsupported link type: %@";
              goto LABEL_21;
            }

            v19 = v18;
            v20 = *v33;
LABEL_28:
            v21 = 0;
            while (1)
            {
              if (*v33 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = [*(*(&v32 + 1) + 8 * v21) nrUUID];
              v23 = [v22 isEqual:v16];

              if (v23)
              {
                break;
              }

              if (v19 == ++v21)
              {
                v19 = [v17 countByEnumeratingWithState:&v32 objects:v44 count:16];
                if (v19)
                {
                  goto LABEL_28;
                }

                goto LABEL_34;
              }
            }

LABEL_23:
          }

          v11 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v11);
      }
    }

    else
    {
      if (qword_1002291D0 != -1)
      {
        dispatch_once(&qword_1002291D0, &stru_1001FBED8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291D0 != -1)
        {
          dispatch_once(&qword_1002291D0, &stru_1001FBED8);
        }

        _NRLogWithArgs(qword_1002291C8, 1, "%s%.30s:%-4d No network to serve QuickRelay link. Deferring creation of link until we have a network", "", "[NRLinkManagerQuickRelay createLinkIfApplicable]", 172);
      }
    }
  }
}

void sub_100121BF0(uint64_t a1)
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
    if (qword_1002291D0 != -1)
    {
      dispatch_once(&qword_1002291D0, &stru_1001FBED8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291D0 != -1)
      {
        dispatch_once(&qword_1002291D0, &stru_1001FBED8);
      }

      _NRLogWithArgs(qword_1002291C8, 16, "%s%.30s:%-4d %@: link %@ is not in ready state anymore", "", "[NRLinkManagerQuickRelay linkIsReady:]_block_invoke", 251, *(a1 + 40), *(a1 + 32));
    }
  }
}

void sub_100121E34(uint64_t a1)
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
    if (qword_1002291D0 != -1)
    {
      dispatch_once(&qword_1002291D0, &stru_1001FBED8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291D0 != -1)
      {
        dispatch_once(&qword_1002291D0, &stru_1001FBED8);
      }

      _NRLogWithArgs(qword_1002291C8, 16, "%s%.30s:%-4d %@: link %@ is not in suspended state anymore", "", "[NRLinkManagerQuickRelay linkIsSuspended:]_block_invoke", 236, *(a1 + 40), *(a1 + 32));
    }
  }
}

void sub_100122098(uint64_t a1)
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
    if (qword_1002291D0 != -1)
    {
      dispatch_once(&qword_1002291D0, &stru_1001FBED8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291D0 != -1)
      {
        dispatch_once(&qword_1002291D0, &stru_1001FBED8);
      }

      _NRLogWithArgs(qword_1002291C8, 16, "%s%.30s:%-4d %@: link %@ is not in initial state anymore", "", "[NRLinkManagerQuickRelay linkIsAvailable:]_block_invoke", 222, *(a1 + 40), *(a1 + 32));
    }
  }
}

void sub_1001224F8(uint64_t *a1)
{
  v2 = nw_parameters_create();
  v3 = xpc_array_create(0, 0);
  if (!v3)
  {
    v26 = sub_10012141C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v28 = sub_10012141C();
      _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: xpc_array_create(%p, %u) failed", "", "nr_xpc_array_create", 56, 0, 0);
    }

    v2 = _os_log_pack_size();
    v4 = v31 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = __error();
    v30 = _os_log_pack_fill(v4, v2, *v29, &_mh_execute_header, "%{public}s xpc_array_create(%p, %u) failed");
    sub_10006BF98(v30, "nr_xpc_array_create");
    sub_10012141C();
    _NRLogAbortWithPack();
    __break(1u);
LABEL_20:
    dispatch_once(&qword_1002291D0, &stru_1001FBED8);
    goto LABEL_12;
  }

  v4 = v3;
  xpc_array_set_uint64(v3, 0xFFFFFFFFFFFFFFFFLL, 0x1389uLL);
  nw_parameters_set_prohibited_interface_subtypes();
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  v6 = a1[6];
  a1[6] = evaluator_for_endpoint;

  v7 = a1[6];
  if (v7)
  {
    v8 = v7;
    v9 = a1[3];
    nw_path_evaluator_set_queue();

    objc_initWeak(&location, a1);
    v10 = a1[6];
    v11 = a1[3];
    v31[1] = _NSConcreteStackBlock;
    v31[2] = 3221225472;
    v31[3] = sub_10012297C;
    v31[4] = &unk_1001FBEB8;
    objc_copyWeak(&v32, &location);
    nw_path_evaluator_set_update_handler();

    v12 = a1[6];
    nw_path_evaluator_start();

    v13 = a1[6];
    v14 = nw_path_evaluator_copy_path();
    v15 = a1[7];
    a1[7] = v14;

    v16 = [APSConnection alloc];
    v17 = APSEnvironmentProduction;
    v18 = APSConnectionOverrideNamedDelegatePort;
    v19 = a1[3];
    v20 = [v16 initWithEnvironmentName:v17 namedDelegatePort:v18 queue:v19];
    v21 = a1[8];
    a1[8] = v20;

    if (!a1[8])
    {
      if (qword_1002291D0 != -1)
      {
        dispatch_once(&qword_1002291D0, &stru_1001FBED8);
      }

      v22 = qword_1002291C8;
      v23 = _NRLogIsLevelEnabled();

      if (v23)
      {
        if (qword_1002291D0 != -1)
        {
          dispatch_once(&qword_1002291D0, &stru_1001FBED8);
        }

        v24 = qword_1002291C8;
        _NRLogWithArgs(v24, 17, "[[APSConnection alloc] initWithEnvironmentName:namedDelegatePort:queue:]");
      }
    }

    v25 = a1[8];
    [v25 setDelegate:a1];

    sub_100122A9C(a1);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
    goto LABEL_16;
  }

  a1 = &qword_100229000;
  if (qword_1002291D0 != -1)
  {
    goto LABEL_20;
  }

LABEL_12:
  if (_NRLogIsLevelEnabled())
  {
    if (a1[58] != -1)
    {
      dispatch_once(&qword_1002291D0, &stru_1001FBED8);
    }

    _NRLogWithArgs(qword_1002291C8, 17, "nw_path_create_default_evaluator failed");
  }

LABEL_16:
}

void sub_100122958(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_10012297C(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 3) != 1004)
  {
    if (qword_1002291D0 != -1)
    {
      dispatch_once(&qword_1002291D0, &stru_1001FBED8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291D0 != -1)
      {
        dispatch_once(&qword_1002291D0, &stru_1001FBED8);
      }

      _NRLogWithArgs(qword_1002291C8, 1, "%s%.30s:%-4d received path update for QR link manager: %@", "", "[NRLinkManagerQuickRelay setup]_block_invoke", 136, v6);
    }

    objc_storeStrong(v5 + 7, a2);
    sub_10012167C(v5);
  }
}

void sub_100122A9C(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    dispatch_assert_queue_V2(v2);

    v3 = [*(a1 + 40) copy];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v3;
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
          v10 = [v9 nrUUID];
          v11 = sub_100163A30(NRDLocalDevice, v10);

          if (!v11 || (v11[48] & 2) == 0)
          {
            [v9 cancelWithReason:{@"Device has been disabled %@", v11}];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    sub_10012167C(a1);
  }
}

void sub_100122F24(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002291E0;
  qword_1002291E0 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100123258()
{
  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  v1 = qword_1002291E0;

  return v1;
}

id *sub_1001232AC(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = [a1[6] objectForKeyedSubscript:v3];
      a1 = [a1[5] objectForKeyedSubscript:v5];
LABEL_4:

      goto LABEL_5;
    }

    v7 = sub_100123258();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = sub_100123258();
      _NRLogWithArgs(v5, 17, "%s called with null btUUID", "[NRDevicePairingManagerContext getPairingCandidateWithBTUUID:]");
      a1 = 0;
      goto LABEL_4;
    }

    a1 = 0;
  }

LABEL_5:

  return a1;
}

id sub_100123380(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v3 = WeakRetained;
  if (WeakRetained && ([*(WeakRetained + 4) pairingCriteria], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "migrationPairing"), v4, v5))
  {
    v6 = v3[7];
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 nrDeviceIdentifier];
    v10 = [v8 containsObject:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id *sub_100123434(id *result)
{
  if (result)
  {
    v1 = result;
    WeakRetained = objc_loadWeakRetained(result + 2);
    v3 = WeakRetained;
    if (WeakRetained)
    {
      v4 = *(WeakRetained + 8);
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    v6 = [v1[4] uuid];
    v7 = [v5 isEqual:v6];

    return v7;
  }

  return result;
}

void sub_1001234B8(uint64_t a1)
{
  if (a1)
  {
    sub_10012357C(a1);
    sub_1001242E0(a1, 1);
    sub_100123ADC(NRDevicePairingCandidateContext, (a1 + 176));
    sub_100123ADC(NRDevicePairingCandidateContext, (a1 + 184));
    v2 = *(a1 + 40);
    *(a1 + 40) = 0;

    v3 = *(a1 + 272);
    *(a1 + 272) = 0;

    v4 = *(a1 + 264);
    *(a1 + 264) = 0;

    sub_100124444(a1, 0xFFFFFFFFFFFFF446);
    v5 = *(a1 + 216);
    *(a1 + 216) = 0;

    v6 = *(a1 + 224);
    *(a1 + 224) = 0;

    v7 = *(a1 + 232);
    *(a1 + 232) = 0;

    *(a1 + 10) = 0;
    v8 = *(a1 + 248);
    *(a1 + 248) = 0;
  }
}

void sub_10012357C(uint64_t a1)
{
  if (a1 && *(a1 + 96))
  {
    if (sub_100123380(a1) && *(a1 + 8) == 1)
    {
      *(a1 + 8) = 0;
      WeakRetained = objc_loadWeakRetained((a1 + 16));
      sub_1001236B4(WeakRetained, *(a1 + 32));
    }

    v3 = *(a1 + 128);
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = *(a1 + 128);
      *(a1 + 128) = 0;
    }

    v5 = *(a1 + 136);
    if (v5)
    {
      if (*(a1 + 9) == 1)
      {
        dispatch_resume(v5);
        *(a1 + 9) = 0;
        v5 = *(a1 + 136);
      }

      dispatch_source_cancel(v5);
      v6 = *(a1 + 136);
      *(a1 + 136) = 0;
    }

    v7 = *(a1 + 96);
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;

    v8 = *(a1 + 144);
    if (v8)
    {
      [v8 resetContextForPriority:1];
      [*(a1 + 144) cancel];
      v9 = *(a1 + 144);
      *(a1 + 144) = 0;
    }

    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    v10 = *(a1 + 168);
    if (v10)
    {
      [v10 cancel];
      v11 = *(a1 + 168);
      *(a1 + 168) = 0;
    }

    sub_100123ADC(NRDevicePairingCandidateContext, (a1 + 176));
    sub_100123ADC(NRDevicePairingCandidateContext, (a1 + 184));
    v12 = *(a1 + 192);
    *(a1 + 192) = 0;
  }
}

void sub_1001236B4(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 2);
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = *(WeakRetained + 1);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      goto LABEL_19;
    }

    v8 = &qword_100229000;
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 1, "%s%.30s:%-4d %@: Sending lost message for %@", "", "[NRDevicePairingManagerContext sendLostPairingCandidate:]", 911, a1, v3);
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    if (v9)
    {
      v10 = v9;
      v11 = nrXPCKeyPairingManager;
      v12 = [a1[4] uuid];
      a1 = v10;
      v13 = v12;
      v8 = v13;
      if (v11)
      {
        if (v13)
        {
          *uuid = 0;
          v36 = 0;
          [v13 getUUIDBytes:uuid];
          xpc_dictionary_set_uuid(a1, v11, uuid);
          goto LABEL_15;
        }

        v30 = sub_100123258();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (!IsLevelEnabled)
        {
LABEL_15:

          xpc_dictionary_set_uint64(a1, nrXPCKeyPairingManagerOperation, 5uLL);
          v14 = nrXPCKeyLostPairingCandidate;
          v15 = [v3 uuid];
          v16 = a1;
          v17 = v15;
          v18 = v17;
          if (v14)
          {
            if (v17)
            {
              *uuid = 0;
              v36 = 0;
              [v17 getUUIDBytes:uuid];
              xpc_dictionary_set_uuid(v16, v14, uuid);
LABEL_18:

              xpc_connection_send_message(v7, v16);
LABEL_19:

              goto LABEL_20;
            }

            v32 = sub_100123258();
            v33 = _NRLogIsLevelEnabled();

            if (!v33)
            {
              goto LABEL_18;
            }

            v29 = sub_100123258();
            _NRLogWithArgs(v29, 17, "%s called with null uuid");
          }

          else
          {
            v27 = sub_100123258();
            v28 = _NRLogIsLevelEnabled();

            if (!v28)
            {
              goto LABEL_18;
            }

            v29 = sub_100123258();
            _NRLogWithArgs(v29, 17, "%s called with null key");
          }

          goto LABEL_18;
        }

        v26 = sub_100123258();
        _NRLogWithArgs(v26, 17, "%s called with null uuid");
LABEL_30:

        goto LABEL_15;
      }
    }

    else
    {
      v19 = sub_100123258();
      v20 = _NRLogIsLevelEnabled();

      if (v20)
      {
        v21 = sub_100123258();
        _NRLogWithArgs(v21, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);
      }

      v3 = _os_log_pack_size();
      v7 = &uuid[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      v22 = __error();
      v23 = _os_log_pack_fill(v7, v3, *v22, &_mh_execute_header, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
      sub_1000F4320(v23, "nr_xpc_dictionary_create");
      sub_100123258();
      _NRLogAbortWithPack();
    }

    v24 = sub_100123258();
    v25 = _NRLogIsLevelEnabled();

    if (!v25)
    {
      goto LABEL_15;
    }

    v26 = sub_100123258();
    _NRLogWithArgs(v26, 17, "%s called with null key");
    goto LABEL_30;
  }

LABEL_20:
}

void sub_100123ADC(uint64_t a1, id *a2)
{
  v3 = objc_opt_self();
  if (*a2)
  {
    v4 = v3;
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 1, "%s%.30s:%-4d %@: Invalidating IKE Session %@", "", "+[NRDevicePairingCandidateContext invalidateIKESession:]", 1849, v4, *a2);
    }

    [*a2 setStateUpdateBlock:0];
    [*a2 setChildStateUpdateBlock:0];
    [*a2 setConfigurationUpdateBlock:0];
    [*a2 setTrafficSelectorUpdateBlock:0];
    [*a2 setAdditionalAddressesUpdateBlock:0];
    [*a2 setShortDPDEventBlock:0];
    [*a2 setRedirectEventBlock:0];
    [*a2 setPrivateNotifyStatusEvent:0];
    [*a2 invalidate];
    v5 = *a2;
    *a2 = 0;
  }
}

void sub_1001242E0(uint64_t a1, int a2)
{
  if (a1)
  {
    if ([*(a1 + 88) state] - 1 <= 1)
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        v4 = *(a1 + 88);
        v5 = qword_1002291E0;
        _NRLogWithArgs(v5, 0, "%s%.30s:%-4d %@: Disconnecting from %@", "", "[NRDevicePairingCandidateContext disconnectPeripheralAndRemove:]", 2250, a1, v4);
      }

      WeakRetained = objc_loadWeakRetained((a1 + 16));
      v7 = WeakRetained;
      if (WeakRetained)
      {
        v8 = *(WeakRetained + 11);
      }

      else
      {
        v8 = 0;
      }

      v9 = *(a1 + 88);
      v10 = v8;
      [v10 cancelPeripheralConnection:v9];
    }

    if (a2)
    {
      v11 = *(a1 + 88);
      *(a1 + 88) = 0;
    }
  }
}

void sub_100124444(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 208))
  {
    v4 = a1;
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    *(v4 + 26) = 0;
    v6 = *(v4 + 25);
    if (v6)
    {
      dispatch_source_cancel(v6);
      v7 = *(v4 + 25);
      *(v4 + 25) = 0;
    }

    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8)
    {
      v9 = v8;
      v10 = nrXPCKeyTargetPairingCandidate;
      v11 = [*(v4 + 4) uuid];
      v4 = v9;
      v12 = v11;
      v2 = v12;
      if (v10)
      {
        if (v12)
        {
          *uuid = 0;
          v25 = 0;
          [v12 getUUIDBytes:uuid];
          xpc_dictionary_set_uuid(v4, v10, uuid);
LABEL_8:

          sub_1001246D8(WeakRetained, a2, 8uLL, v4);
          sub_100124A48(WeakRetained);

          return;
        }

        v21 = sub_100123258();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (!IsLevelEnabled)
        {
          goto LABEL_8;
        }

        v20 = sub_100123258();
        _NRLogWithArgs(v20, 17, "%s called with null uuid");
LABEL_17:

        goto LABEL_8;
      }
    }

    else
    {
      v13 = sub_100123258();
      v14 = _NRLogIsLevelEnabled();

      if (v14)
      {
        v15 = sub_100123258();
        _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);
      }

      WeakRetained = _os_log_pack_size();
      a2 = &uuid[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      v16 = __error();
      v17 = _os_log_pack_fill(a2, WeakRetained, *v16, &_mh_execute_header, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
      sub_1000F4320(v17, "nr_xpc_dictionary_create");
      sub_100123258();
      _NRLogAbortWithPack();
    }

    v18 = sub_100123258();
    v19 = _NRLogIsLevelEnabled();

    if (!v19)
    {
      goto LABEL_8;
    }

    v20 = sub_100123258();
    _NRLogWithArgs(v20, 17, "%s called with null key");
    goto LABEL_17;
  }
}

void sub_1001246D8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a1)
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 1, "%s%.30s:%-4d %@: Sending result code %lld for operation %llu", "", "[NRDevicePairingManagerContext sendResultCode:forUpdateOperation:baseMessage:]", 667, a1, a2, a3);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v9 = WeakRetained;
    if (!WeakRetained)
    {
      goto LABEL_28;
    }

    for (i = *(WeakRetained + 1); ; i = 0)
    {
      v11 = i;

      if (!v11)
      {
        break;
      }

      v9 = v7;
      if (v9)
      {
        goto LABEL_14;
      }

      v12 = xpc_dictionary_create(0, 0, 0);
      if (v12)
      {
        v9 = v12;
LABEL_14:
        v13 = nrXPCKeyPairingManager;
        v14 = [*(a1 + 32) uuid];
        v15 = v9;
        v16 = v14;
        v17 = v16;
        if (v13)
        {
          if (v16)
          {
            *uuid = 0;
            v30 = 0;
            [v16 getUUIDBytes:uuid];
            xpc_dictionary_set_uuid(v15, v13, uuid);
LABEL_17:

            xpc_dictionary_set_uint64(v15, nrXPCKeyPairingManagerOperation, a3);
            xpc_dictionary_set_int64(v15, nrXPCKeyResult, a2);
            xpc_connection_send_message(v11, v15);

            break;
          }

          v21 = sub_100123258();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (!IsLevelEnabled)
          {
            goto LABEL_17;
          }

          v20 = sub_100123258();
          _NRLogWithArgs(v20, 17, "%s called with null uuid");
        }

        else
        {
          v18 = sub_100123258();
          v19 = _NRLogIsLevelEnabled();

          if (!v19)
          {
            goto LABEL_17;
          }

          v20 = sub_100123258();
          _NRLogWithArgs(v20, 17, "%s called with null key");
        }

        goto LABEL_17;
      }

      v23 = sub_100123258();
      v24 = _NRLogIsLevelEnabled();

      if (v24)
      {
        v25 = sub_100123258();
        _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);
      }

      v7 = _os_log_pack_size();
      a2 = &uuid[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      v26 = __error();
      v27 = _os_log_pack_fill(a2, v7, *v26, &_mh_execute_header, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
      sub_1000F4320(v27, "nr_xpc_dictionary_create");
      sub_100123258();
      _NRLogAbortWithPack();
LABEL_28:
      ;
    }
  }
}

void sub_100124A48(id *a1)
{
  if (a1)
  {
    if (qword_100229238 != -1)
    {
      dispatch_once(&qword_100229238, &stru_1001FC340);
    }

    if ((byte_100229230 & 1) == 0)
    {
      if (sub_100124F20(a1))
      {
        v2 = objc_alloc_init(NSMutableSet);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v3 = a1[5];
        v4 = [v3 countByEnumeratingWithState:&v37 objects:v42 count:16];
        if (v4)
        {
          v5 = v4;
          v6 = *v38;
          do
          {
            for (i = 0; i != v5; i = i + 1)
            {
              if (*v38 != v6)
              {
                objc_enumerationMutation(v3);
              }

              v8 = sub_100125108(a1, *(*(&v37 + 1) + 8 * i));
              v9 = v8;
              if (v8 && !*(v8 + 208) && ((*(v8 + 10) & 1) != 0 || (sub_100123434(v8) & 1) == 0) && (*(v9 + 11) & 1) == 0 && [*(v9 + 88) state] - 1 <= 1 && (sub_100123380(v9) & 1) == 0)
              {
                v10 = [*(v9 + 32) uuid];
                [v2 addObject:v10];
              }
            }

            v5 = [v3 countByEnumeratingWithState:&v37 objects:v42 count:16];
          }

          while (v5);
        }

        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v12 = v2;
        v13 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v34;
          do
          {
            for (j = 0; j != v14; j = j + 1)
            {
              if (*v34 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = sub_100125108(a1, *(*(&v33 + 1) + 8 * j));
              sub_1001242E0(v17, 0);
            }

            v14 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v14);
        }

        v18 = sub_1001251C0(a1);
        if ([v18 count])
        {
          v19 = a1[11];
          v20 = a1[3];
          if (qword_1002292B0 != -1)
          {
            dispatch_once(&qword_1002292B0, &stru_1001FC490);
          }

          v21 = qword_1002292B8;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10012536C;
          block[3] = &unk_1001FCE28;
          v29 = v19;
          v30 = v18;
          v31 = v20;
          v32 = a1;
          v22 = v20;
          v23 = v19;
          dispatch_async(v21, block);
        }

        return;
      }

      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        v27 = qword_1002291E0;
        objc_opt_self();
        objc_opt_self();
        if (qword_1002291D8)
        {
          v11 = qword_1002291D8;
        }

        else
        {
          v24 = objc_alloc_init(NRDevicePairingDirector);
          v25 = qword_1002291D8;
          qword_1002291D8 = v24;

          v11 = qword_1002291D8;
          if (!v11)
          {
            WeakRetained = 0;
            goto LABEL_43;
          }
        }

        WeakRetained = objc_loadWeakRetained(v11 + 3);
LABEL_43:
        _NRLogWithArgs(v27, 16, "%s%.30s:%-4d %@ currently owns the BT connections", "", "[NRDevicePairingManagerContext performNeededBTConnectionOperations]", 1394, WeakRetained);
      }
    }
  }
}

uint64_t sub_100124F20(uint64_t a1)
{
  objc_opt_self();
  objc_opt_self();
  if (qword_1002291D8)
  {
    v2 = qword_1002291D8;
  }

  else
  {
    v3 = objc_alloc_init(NRDevicePairingDirector);
    v4 = qword_1002291D8;
    qword_1002291D8 = v3;

    v2 = qword_1002291D8;
    if (!v2)
    {
      v6 = 0;
      if (*(a1 + 104))
      {
LABEL_10:
        if (*(a1 + 88))
        {
LABEL_11:
          v8 = 1;
          goto LABEL_15;
        }

LABEL_14:
        v13 = [CBCentralManager alloc];
        v14 = *(a1 + 24);
        v20 = CBCentralManagerOptionShowPowerAlertKey;
        v21 = &__kCFBooleanTrue;
        v15 = v14;
        v8 = 1;
        v16 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        v17 = [v13 initWithDelegate:a1 queue:v15 options:v16];
        v18 = *(a1 + 88);
        *(a1 + 88) = v17;

        goto LABEL_15;
      }

LABEL_13:
      v9 = [CBScalablePipeManager alloc];
      v10 = *(a1 + 24);
      v11 = [v9 initWithDelegate:a1 queue:v10];
      v12 = *(a1 + 104);
      *(a1 + 104) = v11;

      if (*(a1 + 88))
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }

  WeakRetained = objc_loadWeakRetained(v2 + 3);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained == a1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    objc_storeWeak(v2 + 3, a1);
    if (*(a1 + 104))
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v8 = 0;
LABEL_15:

  return v8;
}

id *sub_100125108(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      a1 = [a1[5] objectForKeyedSubscript:v3];
    }

    else
    {
      v6 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v8 = sub_100123258();
        _NRLogWithArgs(v8, 17, "%s called with null candidateUUID", "[NRDevicePairingManagerContext getPairingCandidateWithUUID:]");
      }

      a1 = 0;
    }
  }

  return a1;
}

id sub_1001251C0(id *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_alloc_init(NSMutableSet);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a1[5];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = sub_100125108(a1, *(*(&v12 + 1) + 8 * v7));
        v9 = v8;
        if (v8 && (*(v8 + 208) || (*(v8 + 10) & 1) == 0 && (sub_100123434(v8) & 1) != 0 || *(v9 + 11) == 1) && [*(v9 + 88) state] - 3 <= 0xFFFFFFFFFFFFFFFDLL && (sub_100123380(v9) & 1) == 0)
        {
          v10 = [*(v9 + 32) cbUUID];
          [v2 addObject:v10];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_10012536C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) allObjects];
  v4 = [v2 retrievePeripheralsWithIdentifiers:v3];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100125430;
  v7[3] = &unk_1001FD060;
  v5 = *(a1 + 48);
  v7[4] = *(a1 + 56);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void sub_100125430(uint64_t a1)
{
  v2 = sub_1001251C0(*(a1 + 32));
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v2 containsObject:v11];

        if (v12)
        {
          v13 = *(a1 + 32);
          v14 = [v10 identifier];
          v15 = sub_1001232AC(v13, v14);

          if (v15 && (*(v15 + 208) || (*(v15 + 10) & 1) == 0 && (sub_100123434(v15) & 1) != 0 || *(v15 + 11) == 1) && [*(v15 + 88) state] - 3 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            if (qword_1002291E8 != -1)
            {
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002291E8 != -1)
              {
                dispatch_once(&qword_1002291E8, &stru_1001FC218);
              }

              _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Connecting to %@", "", "[NRDevicePairingManagerContext performNeededBTConnectionOperations]_block_invoke_2", 1423, v15, v10);
            }

            objc_storeStrong((v15 + 88), v10);
            v8 = *(a1 + 32);
            if (v8)
            {
              v9 = *(v8 + 88);
            }

            else
            {
              v9 = 0;
            }

            [v9 connectPeripheral:v10 options:0];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }
}

void sub_100126038(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 2);
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = *(WeakRetained + 1);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      goto LABEL_21;
    }

    v8 = &qword_100229000;
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 1, "%s%.30s:%-4d %@: Sending discovered message for %@", "", "[NRDevicePairingManagerContext sendDiscoveredPairingCandidate:]", 893, a1, v3);
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    if (v9)
    {
      v10 = v9;
      v11 = nrXPCKeyPairingManager;
      v12 = [a1[4] uuid];
      a1 = v10;
      v13 = v12;
      v8 = v13;
      if (v11)
      {
        if (v13)
        {
          *uuid = 0;
          v41 = 0;
          [v13 getUUIDBytes:uuid];
          xpc_dictionary_set_uuid(a1, v11, uuid);
          goto LABEL_15;
        }

        v31 = sub_100123258();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (!IsLevelEnabled)
        {
LABEL_15:

          xpc_dictionary_set_uint64(a1, nrXPCKeyPairingManagerOperation, 5uLL);
          v14 = nrXPCKeyDiscoveredPairingCandidate;
          v15 = a1;
          v16 = v3;
          v17 = v16;
          if (v14)
          {
            if (v16)
            {
              *uuid = 0;
              v18 = [NSKeyedArchiver archivedDataWithRootObject:v16 requiringSecureCoding:1 error:uuid];
              v19 = *uuid;
              if (!v19 && [v18 length])
              {
                xpc_dictionary_set_data(v15, v14, [v18 bytes], objc_msgSend(v18, "length"));

                xpc_connection_send_message(v7, v15);
LABEL_20:

LABEL_21:
                goto LABEL_22;
              }

              v36 = sub_100123258();
              v37 = _NRLogIsLevelEnabled();

              if (v37)
              {
                v38 = sub_100123258();
                _NRLogWithArgs(v38, 17, "Failed to archive %@: %@", v17, v19);
              }

LABEL_39:
              goto LABEL_20;
            }

            v33 = sub_100123258();
            v34 = _NRLogIsLevelEnabled();

            if ((v34 & 1) == 0)
            {
              goto LABEL_39;
            }

            v30 = "%s called with null object";
          }

          else
          {
            v28 = sub_100123258();
            v29 = _NRLogIsLevelEnabled();

            if ((v29 & 1) == 0)
            {
              goto LABEL_39;
            }

            v30 = "%s called with null key";
          }

          v35 = sub_100123258();
          _NRLogWithArgs(v35, 17, v30, "nr_xpc_dictionary_set_nsobject");

          goto LABEL_39;
        }

        v27 = sub_100123258();
        _NRLogWithArgs(v27, 17, "%s called with null uuid");
LABEL_32:

        goto LABEL_15;
      }
    }

    else
    {
      v20 = sub_100123258();
      v21 = _NRLogIsLevelEnabled();

      if (v21)
      {
        v22 = sub_100123258();
        _NRLogWithArgs(v22, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);
      }

      v3 = _os_log_pack_size();
      v7 = &uuid[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      v23 = __error();
      v24 = _os_log_pack_fill(v7, v3, *v23, &_mh_execute_header, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
      sub_1000F4320(v24, "nr_xpc_dictionary_create");
      sub_100123258();
      _NRLogAbortWithPack();
    }

    v25 = sub_100123258();
    v26 = _NRLogIsLevelEnabled();

    if (!v26)
    {
      goto LABEL_15;
    }

    v27 = sub_100123258();
    _NRLogWithArgs(v27, 17, "%s called with null key");
    goto LABEL_32;
  }

LABEL_22:
}

void sub_1001264E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(v1 + 112))
    {
      if (*(v1 + 152))
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        if (os_channel_get_next_slot())
        {
          do
          {
            v18 = 0;
            v2 = WORD1(v19);
            v3 = (*(*(v1 + 152) + 8))(**(v1 + 152), v20, WORD1(v19), &v18, 0, 0);
            if (v18 < v2)
            {
              v4 = v3;
              v5 = sub_100123258();
              IsLevelEnabled = _NRLogIsLevelEnabled();

              v3 = v4;
              if (IsLevelEnabled)
              {
                v7 = sub_100123258();
                _NRLogWithArgs(v7, 17, "%@: Parser failed to handle full packet (%zu < %zu)", v1, v18, v2);

                v3 = v4;
              }
            }
          }

          while ((v3 & 1) != 0 && os_channel_get_next_slot());
          v8 = os_channel_advance_slot();
          if (v8)
          {
            v10 = v8;
            v11 = sub_100123258();
            v12 = _NRLogIsLevelEnabled();

            if (v12)
            {
              v13 = sub_100123258();
              _NRLogWithArgs(v13, 17, "os_channel_advance_slot failed: %d", v10);
            }
          }

          v9 = os_channel_sync();
          if (v9)
          {
            v14 = v9;
            v15 = sub_100123258();
            v16 = _NRLogIsLevelEnabled();

            if (v16)
            {
              v17 = sub_100123258();
              _NRLogWithArgs(v17, 17, "os_channel_advance_slot failed: %d", v14);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1001266AC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = *(v1 + 160);
    if (v2)
    {
      if ((*(v1 + 9) & 1) == 0)
      {
        dispatch_suspend(*(v1 + 136));
        *(v1 + 9) = 1;
        v2 = *(v1 + 160);
      }

      v4 = *(v2 + 16);
      v3 = *(v2 + 24);

      return v4(v3);
    }
  }

  return result;
}

void sub_100126718(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = a2;
  if (v2)
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 2, "%s%.30s:%-4d %@: Received notification: %@", "", "[NRDevicePairingCandidateContext processXPCCommDictionary:]", 3656, v2, v5);
    }

    v3 = [v5 objectForKeyedSubscript:@"message"];
    v4 = [v3 objectForKeyedSubscript:@"message-data"];
    if (v4)
    {
      [*(v2 + 192) receivePacketData:v4];
    }
  }
}

void sub_100126844(uint64_t a1)
{
  if (!a1 || !*(a1 + 208))
  {
    return;
  }

  if (*(a1 + 176))
  {

    sub_10012BE3C(a1);
    return;
  }

  if (qword_100229238 != -1)
  {
    dispatch_once(&qword_100229238, &stru_1001FC340);
  }

  if ((byte_100229230 & 1) != 0 || *(a1 + 96))
  {
    v43 = [[NEIKEv2AuthenticationProtocol alloc] initWithMethod:13];
    if (qword_100229338 != -1)
    {
      dispatch_once(&qword_100229338, &stru_1001FC5F8);
    }

    v42 = qword_100229330;
    v2 = sub_1001472F0(1, v42, v43);
    if (qword_100229238 != -1)
    {
      dispatch_once(&qword_100229238, &stru_1001FC340);
    }

    if (byte_100229230 != 1)
    {
      v7 = sub_100146274(1);
      [v7 setMaximumPacketSize:2000];
      [v7 setHeaderOverhead:5];

      v8 = objc_alloc_init(NEIKEv2NULLIdentifier);
      [v2 setLocalIdentifier:v8];

      v9 = [NEIKEv2Session alloc];
      v10 = *(a1 + 24);
      v11 = [v9 initWithIKEConfig:v7 firstChildConfig:0 sessionConfig:v2 queue:v10 ipsecInterface:0 ikeSocketHandler:0 kernelSASessionName:@"terminusIKE-Pairing-Listener" packetDelegate:a1];
      v12 = *(a1 + 176);
      *(a1 + 176) = v11;

LABEL_39:
      if (*(a1 + 176))
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Created pairing control session, connecting", "", "[NRDevicePairingCandidateContext establishControlSessionIfNeeded]", 2095, a1);
        }

        v29 = *(a1 + 176);
        if (v29)
        {
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002291E8 != -1)
            {
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
            }

            _NRLogWithArgs(qword_1002291E0, 1, "%s%.30s:%-4d %@: Setting callbacks on control session", "", "[NRDevicePairingCandidateContext setupIKECallbacksForControlSession]", 3671, a1);
          }

          [v29 setClientQueue:*(a1 + 24)];
          objc_initWeak(&location, a1);
          v48 = _NSConcreteStackBlock;
          v49 = 3221225472;
          v50 = sub_10012C17C;
          v51 = &unk_1001FC090;
          objc_copyWeak(&v53, &location);
          v52 = a1;
          [v29 setStateUpdateBlock:&v48];
          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_10012C330;
          v45[3] = &unk_1001FC0B8;
          objc_copyWeak(&v46, &location);
          [v29 setPrivateNotifyStatusEvent:v45];
          objc_destroyWeak(&v46);
          objc_destroyWeak(&v53);
          objc_destroyWeak(&location);
        }

        [*(a1 + 176) connect];
      }

      else
      {
        v30 = sub_100123258();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v32 = sub_100123258();
          _NRLogWithArgs(v32, 17, "%@: Failed to create pairing control session", a1);
        }
      }

      goto LABEL_55;
    }

    v3 = *(a1 + 64);
    if (v3 && (v4 = *(v3 + 120)) != 0)
    {
      v5 = [NSNumber numberWithUnsignedChar:4];
      v6 = [v4 objectForKeyedSubscript:v5];
    }

    else
    {
      v6 = 0;
    }

    if ([v6 count])
    {
      v13 = [v6 firstObject];
      v14 = [v13 copy];

      v15 = [v14 hostname];
      objc_opt_self();
      if (qword_100228E88 != -1)
      {
        dispatch_once(&qword_100228E88, &stru_1001FA180);
      }

      v16 = qword_100228E80;
      v17 = @"62743";
      if (!v16)
      {
        v17 = 0;
      }

      v18 = v17;
      v19 = [NWAddressEndpoint endpointWithHostname:v15 port:v18];

      if (v19)
      {
        v20 = sub_10014EDA8(*(a1 + 64));
        if (v20)
        {
          v21 = sub_100146274(1);
          [v21 setRandomizeLocalPort:1];
          [v21 setForceUDPEncapsulation:1];
          [v21 setRemoteEndpoint:v19];
          [v21 setOutgoingInterfaceName:v20];
          v48 = 0;
          v49 = 0;
          v22 = [*(a1 + 32) uuid];
          [v22 getUUIDBytes:&v48];

          v23 = [[NSData alloc] initWithBytes:&v48 length:16];
          v24 = [[NEIKEv2KeyIDIdentifier alloc] initWithKeyID:v23];
          [v2 setLocalIdentifier:v24];

          v25 = [NEIKEv2Session alloc];
          v26 = *(a1 + 24);
          v27 = [v25 initWithIKEConfig:v21 firstChildConfig:0 sessionConfig:v2 queue:v26 ipsecInterface:0 ikeSocketHandler:0 kernelSASessionName:@"terminusIKE-Pairing-Listener" packetDelegate:0];
          v28 = *(a1 + 176);
          *(a1 + 176) = v27;
        }

        else
        {
          v39 = sub_100123258();
          v40 = _NRLogIsLevelEnabled();

          if (v40)
          {
            v41 = sub_100123258();
            _NRLogWithArgs(v41, 16, "%s%.30s:%-4d %@: Failed to create pairing control session, no outgoing interface name", "", "[NRDevicePairingCandidateContext establishControlSessionIfNeeded]", 2057, a1);
          }
        }

        if (!v20)
        {
          goto LABEL_55;
        }

        goto LABEL_39;
      }

      v36 = sub_100123258();
      v37 = _NRLogIsLevelEnabled();

      if (v37)
      {
        v38 = sub_100123258();
        _NRLogWithArgs(v38, 16, "%s%.30s:%-4d %@: Unable to create endpoint from %@", "", "[NRDevicePairingCandidateContext establishControlSessionIfNeeded]", 2050, a1, v14);
      }
    }

    else
    {
      v33 = sub_100123258();
      v34 = _NRLogIsLevelEnabled();

      if (v34)
      {
        v35 = sub_100123258();
        _NRLogWithArgs(v35, 16, "%s%.30s:%-4d %@: Failed to create pairing control session, no peer endpoints present", "", "[NRDevicePairingCandidateContext establishControlSessionIfNeeded]", 2043, a1);

LABEL_55:
        return;
      }
    }

    goto LABEL_55;
  }

  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Deferring connecting control session until pipe is connected", "", "[NRDevicePairingCandidateContext establishControlSessionIfNeeded]", 2029, a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 16));
  sub_100124A48(WeakRetained);
}

void sub_100127154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100127188(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 184);
  if (!v2)
  {
    if ((*(a1 + 10) & 1) != 0 || (sub_100123434(a1) & 1) == 0)
    {
      return;
    }

    if (qword_100229238 != -1)
    {
      dispatch_once(&qword_100229238, &stru_1001FC340);
    }

    if ((byte_100229230 & 1) == 0 && !*(a1 + 96))
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Deferring connecting pairing session until pipe is connected", "", "[NRDevicePairingCandidateContext establishPairingSessionIfNeeded]", 2117, a1);
      }

      WeakRetained = objc_loadWeakRetained((a1 + 16));
      sub_100124A48(WeakRetained);
      v2 = WeakRetained;
      goto LABEL_3;
    }

    v3 = *(a1 + 48);
    v4 = *(a1 + 272);
    if (!v4)
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_61;
      }

      v6 = sub_100123258();
      _NRLogWithArgs(v6, 1, "%s%.30s:%-4d %@: Invalid sharedSecret for authMethod: %zu", "", "[NRDevicePairingCandidateContext establishPairingSessionIfNeeded]", 2125, a1, v3);
      goto LABEL_60;
    }

    switch(v3)
    {
      case 3:
        v5 = sub_100145EB0();
        if (v5)
        {
LABEL_32:
          v6 = v5;
          v7 = [[NEIKEv2AuthenticationProtocol alloc] initWithMethod:2];
          v8 = 0;
          goto LABEL_38;
        }

        break;
      case 2:
        v6 = sub_100145D78();
        if (v6)
        {
          v7 = [[NEIKEv2AuthenticationProtocol alloc] initWithSecurePassword:11001];
          v8 = 1;
LABEL_38:
          v9 = sub_1001472F0(1, v6, v7);
          [v9 setSharedSecret:v4];
          if (v8)
          {
            v10 = sub_100127A30(v4, *(a1 + 256));
            if (!v10)
            {
              v36 = sub_100123258();
              IsLevelEnabled = _NRLogIsLevelEnabled();

              if (!IsLevelEnabled)
              {
                goto LABEL_59;
              }

              v35 = sub_100123258();
              _NRLogWithArgs(v35, 17, "%@: Failed to derive PPK", a1);
              goto LABEL_67;
            }

            v11 = v10;
            [v9 setPpk:v10];
            [v9 setPpkMandatory:1];
            [v9 setPpkIDType:1];
          }

          if (qword_100229238 != -1)
          {
            dispatch_once(&qword_100229238, &stru_1001FC340);
          }

          if (byte_100229230 == 1)
          {
            v51 = v7;
            v12 = sub_10014EAC4(*(a1 + 64), 5u, 0);
            if (![v12 count])
            {
              v38 = v12;
              v39 = sub_100123258();
              v40 = _NRLogIsLevelEnabled();

              if (v40)
              {
                v41 = sub_100123258();
                _NRLogWithArgs(v41, 16, "%s%.30s:%-4d %@: Failed to create pairing control session, no peer endpoints present", "", "[NRDevicePairingCandidateContext establishPairingSessionIfNeeded]", 2177, a1);
              }

              goto LABEL_59;
            }

            v48 = v12;
            v13 = [v12 firstObject];
            v14 = [v13 copy];

            v49 = v14;
            v15 = [v14 hostname];
            v16 = sub_100015954(NRIKEv2Listener);
            v17 = @"62743";
            if (!v16)
            {
              v17 = 0;
            }

            v18 = v17;
            v19 = [NWAddressEndpoint endpointWithHostname:v15 port:v18];

            if (!v19)
            {
              v42 = sub_100123258();
              v43 = _NRLogIsLevelEnabled();

              if (v43)
              {
                v44 = sub_100123258();
                _NRLogWithArgs(v44, 16, "%s%.30s:%-4d %@: Unable to create endpoint from %@", "", "[NRDevicePairingCandidateContext establishPairingSessionIfNeeded]", 2184, a1, v49);
              }

              v7 = v51;
              goto LABEL_59;
            }

            v20 = sub_10014EDA8(*(a1 + 64));
            if (v20)
            {
              v21 = sub_100146274(1);
              [v21 setRequestPPK:v8];
              [v21 setRandomizeLocalPort:1];
              [v21 setForceUDPEncapsulation:1];
              [v21 setRemoteEndpoint:v19];
              [v21 setOutgoingInterfaceName:v20];
              v52[0] = 0;
              v52[1] = 0;
              v22 = sub_100127AA4(a1);
              [v22 getUUIDBytes:v52];

              v23 = [[NSData alloc] initWithBytes:v52 length:16];
              v24 = [[NEIKEv2KeyIDIdentifier alloc] initWithKeyID:v23];
              [v9 setLocalIdentifier:v24];

              v25 = [[NEIKEv2Session alloc] initWithIKEConfig:v21 firstChildConfig:0 sessionConfig:v9 queue:*(a1 + 24) ipsecInterface:0 ikeSocketHandler:0 kernelSASessionName:@"terminusIKE-Pairing-Auth-Listener" packetDelegate:0];
              v26 = *(a1 + 184);
              *(a1 + 184) = v25;

              v27 = v48;
            }

            else
            {
              v45 = sub_100123258();
              v46 = _NRLogIsLevelEnabled();

              v27 = v48;
              if (v46)
              {
                v47 = sub_100123258();
                _NRLogWithArgs(v47, 16, "%s%.30s:%-4d %@: Failed to create pairing control session, no outgoing interface name", "", "[NRDevicePairingCandidateContext establishPairingSessionIfNeeded]", 2191, a1);
              }
            }

            v7 = v51;
            if (!v20)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v28 = sub_100146274(1);
            sub_100146C38(v28);
            [v28 setRequestPPK:v8];
            v29 = objc_alloc_init(NEIKEv2NULLIdentifier);
            [v9 setLocalIdentifier:v29];

            v30 = [[NEIKEv2Session alloc] initWithIKEConfig:v28 firstChildConfig:0 sessionConfig:v9 queue:*(a1 + 24) ipsecInterface:0 ikeSocketHandler:0 kernelSASessionName:@"terminusIKE-Pairing-Auth-Listener" packetDelegate:a1];
            v31 = *(a1 + 184);
            *(a1 + 184) = v30;
          }

          if (*(a1 + 184))
          {
            if (qword_1002291E8 != -1)
            {
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
            }

            if (_NRLogIsLevelEnabled())
            {
              v32 = sub_100123258();
              _NRLogWithArgs(v32, 0, "%s%.30s:%-4d %@: Created pairing session, connecting", "", "[NRDevicePairingCandidateContext establishPairingSessionIfNeeded]", 2231, a1);
            }

            sub_100127AD4(a1);
            [*(a1 + 184) connect];
            goto LABEL_59;
          }

          v33 = sub_100123258();
          v34 = _NRLogIsLevelEnabled();

          if (!v34)
          {
LABEL_59:

            goto LABEL_60;
          }

          v35 = sub_100123258();
          _NRLogWithArgs(v35, 17, "%@: Failed to create pairing session", a1);
LABEL_67:

          goto LABEL_59;
        }

        break;
      case 1:
        v5 = sub_100145E14();
        if (!v5)
        {
          break;
        }

        goto LABEL_32;
      default:
        break;
    }

    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_61;
    }

    v6 = sub_100123258();
    _NRLogWithArgs(v6, 16, "%s%.30s:%-4d %@: Invalid authMethod: %zu", "", "[NRDevicePairingCandidateContext establishPairingSessionIfNeeded]", 2146, a1, v3);
LABEL_60:

LABEL_61:
    return;
  }

LABEL_3:
}

id sub_100127A30(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [@"Derived IKEv2 PPK for terminus device pairing" dataUsingEncoding:4];
  v6 = sub_10013EBBC(v4, v3, v5);

  return v6;
}

id sub_100127AA4(uint64_t a1)
{
  v1 = [*(a1 + 32) uuid];

  return v1;
}

void sub_100127AD4(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 1, "%s%.30s:%-4d %@: Setting callbacks on pairing session", "", "[NRDevicePairingCandidateContext setupIKECallbacksForPairingSession]", 3718, a1);
    }

    [v2 setClientQueue:*(a1 + 24)];
    objc_initWeak(&location, a1);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100127CC0;
    v5[3] = &unk_1001FC0E0;
    objc_copyWeak(&v6, &location);
    [v2 setStateUpdateBlock:v5];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10012801C;
    v3[3] = &unk_1001FC108;
    objc_copyWeak(&v4, &location);
    v3[4] = a1;
    [v2 setPrivateNotifyStatusEvent:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void sub_100127C94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_100127CC0(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Pairing session received state update %zu error %@", "", "[NRDevicePairingCandidateContext setupIKECallbacksForPairingSession]_block_invoke", 3728, WeakRetained, a2, v25);
    }

    if (a2 == 2)
    {
      if (sub_10012A6E4(WeakRetained))
      {
        sub_10012B340(WeakRetained);
        goto LABEL_29;
      }

      v7 = objc_loadWeakRetained(WeakRetained + 2);
      sub_10012B2F8(v7, 0xFFFFFFFFFFFFF446);
      goto LABEL_28;
    }

    if (a2 == 3 || v25)
    {
      sub_100123ADC(NRDevicePairingCandidateContext, WeakRetained + 23);
      v6 = v25;
      v7 = v6;
      if (!v6)
      {
LABEL_28:

        goto LABEL_29;
      }

      v8 = v6;
      if ([v8 code] == 24)
      {
        v9 = NEIKEv2ProtocolErrorDomain;
        v10 = [v8 domain];
        LOBYTE(v9) = [v10 isEqualToString:v9];

        if (v9)
        {
          goto LABEL_18;
        }
      }

      v11 = NEIKEv2ErrorDomain;
      v12 = v8;
      v13 = v11;
      if ([v12 code] == 8)
      {
        v14 = [v12 domain];
        v15 = [v14 isEqualToString:v13];

        if (v15)
        {
LABEL_18:

LABEL_22:
          v20 = objc_loadWeakRetained(WeakRetained + 2);
          v21 = v20;
          if (v20)
          {
            sub_1001246D8(v20, 0xFFFFFFFFFFFFF443, 0xCuLL, 0);
            sub_100129A18(v21);
          }

          goto LABEL_28;
        }
      }

      else
      {
      }

      v16 = v12;
      v17 = v13;
      if ([v16 code] == 7)
      {
        v18 = [v16 domain];
        v19 = [v18 isEqualToString:v17];

        if (v19)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }

      if ((*(WeakRetained + 10) & 1) == 0)
      {
        objc_initWeak(&location, WeakRetained);
        v22 = dispatch_time(0, 1000000000);
        v23 = WeakRetained[3];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10012BA20;
        block[3] = &unk_1001FC730;
        v24 = v23;
        objc_copyWeak(&v27, &location);
        dispatch_after(v22, v24, block);

        objc_destroyWeak(&v27);
        objc_destroyWeak(&location);
      }

      goto LABEL_28;
    }
  }

LABEL_29:
}

void sub_10012801C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v52 = v3;
    v5 = [v3 sortedArrayUsingComparator:&stru_1001FC4F0];
    v51 = a1;
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Pairing session got private notifies %@", "", "[NRDevicePairingCandidateContext setupIKECallbacksForPairingSession]_block_invoke_2", 3744, WeakRetained, v5);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v55;
      v53 = v6;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v55 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v54 + 1) + 8 * i);
          v13 = [v12 notifyStatus];
          v14 = [v12 notifyData];
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002291E8 != -1)
            {
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
            }

            v15 = qword_1002291E0;
            _NRLogWithArgs(v15, 2, "%s%.30s:%-4d %@: Received notify code %u len %llu for pairing session", "", "-[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]", 3304, WeakRetained, v13, [v14 length]);
          }

          if (v13 <= 50500)
          {
            if (v13 > 48606)
            {
              if ((v13 - 50351) <= 0x3E)
              {
                if (((1 << (v13 + 81)) & 0x701C000000000002) != 0)
                {
                  goto LABEL_91;
                }

                if (v13 == 50351)
                {
                  v18 = *(WeakRetained + 31);
                  v59[0] = _NSConcreteStackBlock;
                  v59[1] = 3221225472;
                  v59[2] = sub_10012A428;
                  v59[3] = &unk_1001FC068;
                  v59[4] = WeakRetained;
                  sub_10016E894(NRDLocalDevice, v14, v18, v59);
                  goto LABEL_13;
                }
              }

              if (v13 == 48607)
              {
                v16 = [[NSString alloc] initWithData:v14 encoding:4];
                if (v16)
                {
                  if (qword_1002291E8 != -1)
                  {
                    dispatch_once(&qword_1002291E8, &stru_1001FC218);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_1002291E8 != -1)
                    {
                      dispatch_once(&qword_1002291E8, &stru_1001FC218);
                    }

                    v33 = qword_1002291E0;
                    LogString = _NRKeyCreateLogString();
                    _NRLogWithArgs(v33, 0, "%s%.30s:%-4d %@: Received remote IDS device ID %@", "", "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]", 3417, WeakRetained, LogString);
                  }

                  sub_1001756C0(NRDLocalDevice, v16, *(WeakRetained + 31));
                }

                else
                {
                  v40 = sub_100123258();
                  IsLevelEnabled = _NRLogIsLevelEnabled();

                  if (IsLevelEnabled)
                  {
                    v42 = sub_100123258();
                    v43 = _NRKeyCreateLogString();
                    _NRLogWithArgs(v42, 16, "%s%.30s:%-4d %@: Failed to decode remote IDS device ID %@", "", "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]", 3414, WeakRetained, v43);
                  }
                }

                goto LABEL_121;
              }

              if (v13 == 48701)
              {
                goto LABEL_91;
              }
            }

            else
            {
              if (v13 > 48602)
              {
                if (v13 <= 48604)
                {
                  if (v13 == 48603)
                  {
                    v16 = [[NSString alloc] initWithData:v14 encoding:4];
                    if (v16)
                    {
                      if (qword_1002291E8 != -1)
                      {
                        dispatch_once(&qword_1002291E8, &stru_1001FC218);
                      }

                      if (_NRLogIsLevelEnabled())
                      {
                        if (qword_1002291E8 != -1)
                        {
                          dispatch_once(&qword_1002291E8, &stru_1001FC218);
                        }

                        v32 = qword_1002291E0;
                        _NRLogWithArgs(v32, 0, "%s%.30s:%-4d %@: Received remote device name %@", "", "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]", 3384, WeakRetained, v16);
                      }

                      sub_1001716D4(NRDLocalDevice, v16, *(WeakRetained + 31));
                      goto LABEL_121;
                    }

                    v35 = sub_100123258();
                    v36 = _NRLogIsLevelEnabled();

                    if (v36)
                    {
                      v37 = sub_100123258();
                      _NRLogWithArgs(v37, 16, "%s%.30s:%-4d %@: Failed to decode remote device name %@", "", "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]", 3381, WeakRetained, v14);
                      goto LABEL_126;
                    }
                  }

                  else
                  {
                    v16 = [[NSString alloc] initWithData:v14 encoding:4];
                    if (v16)
                    {
                      if (qword_1002291E8 != -1)
                      {
                        dispatch_once(&qword_1002291E8, &stru_1001FC218);
                      }

                      if (_NRLogIsLevelEnabled())
                      {
                        if (qword_1002291E8 != -1)
                        {
                          dispatch_once(&qword_1002291E8, &stru_1001FC218);
                        }

                        v17 = qword_1002291E0;
                        _NRLogWithArgs(v17, 0, "%s%.30s:%-4d %@: Received remote build version %@", "", "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]", 3395, WeakRetained, v16);
                      }

                      sub_1001718D8(NRDLocalDevice, v16, *(WeakRetained + 31));
                      goto LABEL_121;
                    }

                    v38 = sub_100123258();
                    v39 = _NRLogIsLevelEnabled();

                    if (v39)
                    {
                      v37 = sub_100123258();
                      _NRLogWithArgs(v37, 16, "%s%.30s:%-4d %@: Failed to decode remote build version %@", "", "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]", 3392, WeakRetained, v14);
LABEL_126:
                    }
                  }

LABEL_121:

                  v6 = v53;
                  goto LABEL_14;
                }

                if (v13 != 48605)
                {
                  LOBYTE(v58) = 0;
                  if ([v14 length] == 1)
                  {
                    [v14 getBytes:&v58 length:1];
                    if (qword_1002291E8 != -1)
                    {
                      dispatch_once(&qword_1002291E8, &stru_1001FC218);
                    }

                    v28 = qword_1002291E0;
                    v29 = _NRLogIsLevelEnabled();

                    if (v29)
                    {
                      if (qword_1002291E8 != -1)
                      {
                        dispatch_once(&qword_1002291E8, &stru_1001FC218);
                      }

                      v30 = qword_1002291E0;
                      _NRLogWithArgs(v30, 0, "%s%.30s:%-4d %@: Received remote device type %u", "", "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]", 3404, WeakRetained, v58);
                    }

                    sub_1001714EC(NRDLocalDevice, v58, *(WeakRetained + 31));
                  }

                  goto LABEL_14;
                }

LABEL_91:
                if (qword_1002291E8 != -1)
                {
                  dispatch_once(&qword_1002291E8, &stru_1001FC218);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_1002291E8 != -1)
                  {
                    dispatch_once(&qword_1002291E8, &stru_1001FC218);
                  }

                  _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d %@: Pairing session received unexpected notify code %u", "", "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]", 3516, WeakRetained, v13);
                }

                goto LABEL_14;
              }

              if (!v13 || v13 == 48601)
              {
                goto LABEL_91;
              }

              if (v13 == 48602)
              {
                v58 = 0;
                if ([v14 length] >= 2)
                {
                  [v14 getBytes:&v58 length:2];
                  v21 = v58;
                  if (qword_1002291E8 != -1)
                  {
                    dispatch_once(&qword_1002291E8, &stru_1001FC218);
                  }

                  v22 = bswap32(v21) >> 16;
                  v23 = qword_1002291E0;
                  v24 = _NRLogIsLevelEnabled();

                  if (v24)
                  {
                    if (qword_1002291E8 != -1)
                    {
                      dispatch_once(&qword_1002291E8, &stru_1001FC218);
                    }

                    v25 = qword_1002291E0;
                    _NRLogWithArgs(v25, 0, "%s%.30s:%-4d %@: Received remote terminus version %u", "", "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]", 3373, WeakRetained, v22);
                  }

                  sub_100171304(NRDLocalDevice, v22, *(WeakRetained + 31));
                  v6 = v53;
                }

                goto LABEL_14;
              }
            }

            goto LABEL_99;
          }

          if (v13 <= 50800)
          {
            if (v13 <= 50503)
            {
              if ((v13 - 50501) < 2)
              {
                goto LABEL_91;
              }

              if (v13 == 50503)
              {
                sub_100172AC4(NRDLocalDevice, v14, *(WeakRetained + 31));
                if (qword_1002291E8 != -1)
                {
                  dispatch_once(&qword_1002291E8, &stru_1001FC218);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_1002291E8 != -1)
                  {
                    dispatch_once(&qword_1002291E8, &stru_1001FC218);
                  }

                  v26 = qword_1002291E0;
                  v27 = _NRKeyCreateLogString();
                  _NRLogWithArgs(v26, 0, "%s%.30s:%-4d %@: Plumbed BT OOBK=%@ %@", "", "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]", 3311, WeakRetained, v27, *(WeakRetained + 31));
                }

                goto LABEL_13;
              }
            }

            else
            {
              if ((v13 - 50701) < 2)
              {
                goto LABEL_91;
              }

              if (v13 == 50504)
              {
                v11 = *(WeakRetained + 31);
                v66 = _NSConcreteStackBlock;
                v67 = 3221225472;
                v68 = sub_100129CD0;
                v69 = &unk_1001FC068;
                v70 = WeakRetained;
                sub_10016F27C(NRDLocalDevice, v14, 1, v11, &v66);
LABEL_13:
                *(WeakRetained + 10) = 1;
                goto LABEL_14;
              }

              if (v13 == 50505)
              {
                v19 = *(WeakRetained + 31);
                v61 = _NSConcreteStackBlock;
                v62 = 3221225472;
                v63 = sub_10012A07C;
                v64 = &unk_1001FC068;
                v65 = WeakRetained;
                sub_10016F524(NRDLocalDevice, v14, 1, v19, &v61);
                goto LABEL_13;
              }
            }

LABEL_99:
            if (qword_1002291E8 != -1)
            {
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002291E8 != -1)
              {
                dispatch_once(&qword_1002291E8, &stru_1001FC218);
              }

              v31 = qword_1002291E0;
              _NRLogWithArgs(v31, 16, "%s%.30s:%-4d %@: Received unknown notify code %u", "", "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]", 3523, WeakRetained, v13);
            }

            goto LABEL_14;
          }

          if (v13 <= 51300)
          {
            if ((v13 - 50801) <= 0xB && ((1 << (v13 - 113)) & 0xC03) != 0 || v13 == 50901)
            {
              goto LABEL_91;
            }

            goto LABEL_99;
          }

          if (v13 > 51500)
          {
            if (v13 == 51501 || v13 == 51601)
            {
              goto LABEL_91;
            }

            goto LABEL_99;
          }

          if (v13 == 51301)
          {
            goto LABEL_91;
          }

          if (v13 != 51401)
          {
            goto LABEL_99;
          }

          LOBYTE(v58) = 0;
          [v14 getBytes:&v58 length:1];
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002291E8 != -1)
            {
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
            }

            v20 = qword_1002291E0;
            _NRLogWithArgs(v20, 0, "%s%.30s:%-4d %@: Received Always On Wi-Fi supported: %u", "", "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]", 3425, WeakRetained, v58);
          }

          sub_100171ADC(NRDLocalDevice, v58 == 1, *(WeakRetained + 31));
LABEL_14:
        }

        v8 = [v6 countByEnumeratingWithState:&v54 objects:v60 count:16];
      }

      while (v8);
    }

    v44 = *(v51 + 32);
    if (v44 && *(v44 + 10) == 1)
    {
      if (qword_100229238 != -1)
      {
        dispatch_once(&qword_100229238, &stru_1001FC340);
      }

      if (byte_100229230 == 1)
      {
        sub_100128FC4(v44);
        sub_100123ADC(NRDevicePairingCandidateContext, (v44 + 176));
        sub_100123ADC(NRDevicePairingCandidateContext, (v44 + 184));
      }

      else
      {
        *(v44 + 11) = 1;
        v45 = [*(v44 + 96) peer];
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Starting BT pairing to %@", "", "[NRDevicePairingCandidateContext advancePairingIfReady]", 2992, v44, v45);
        }

        v46 = objc_loadWeakRetained((v44 + 16));
        v47 = v46;
        if (v46)
        {
          v48 = *(v46 + 14);
        }

        else
        {
          v48 = 0;
        }

        v61 = CBPairingOptionsUseMITMAuthentication;
        v62 = CBPairingOptionsDistributeIRK;
        v66 = &__kCFBooleanTrue;
        v67 = &__kCFBooleanTrue;
        v49 = v48;
        v50 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v61 count:2];
        [v49 pairPeer:v45 options:v50];

        sub_100123ADC(NRDevicePairingCandidateContext, (v44 + 176));
        sub_100123ADC(NRDevicePairingCandidateContext, (v44 + 184));
      }
    }

    v3 = v52;
  }
}

void sub_100128FC4(id val)
{
  v2 = val;
  objc_initWeak(&location, val);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001293F4;
  v24[3] = &unk_1001FBFA0;
  objc_copyWeak(&v25, &location);
  v3 = objc_retainBlock(v24);
  if (!*(v2 + 31))
  {
    v15 = sub_100123258();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v17 = sub_100123258();
      _NRLogWithArgs(v17, 17, "%@: Cannot register pairing candidate with no NRUUID", v2);
    }
  }

  v4 = *(v2 + 31);
  v5 = sub_100163B2C(NRDLocalDevice, v4, 0);

  if (!v5)
  {
    v18 = sub_100123258();
    v19 = _NRLogIsLevelEnabled();

    if (v19)
    {
      v20 = sub_100123258();
      _NRLogWithArgs(v20, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRDevicePairingCandidateContext registerDevice]", 2558);
    }

    v2 = _os_log_pack_size();
    v3 = (&v24[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = __error();
    v22 = _os_log_pack_fill(v3, v2, *v21, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v22 = 136446210;
    *(v22 + 4) = "[NRDevicePairingCandidateContext registerDevice]";
    sub_100123258();
    _NRLogAbortWithPack();
    __break(1u);
    goto LABEL_16;
  }

  v6 = *(v2 + 5);
  v4 = [v6 operationalProperties];

  if (!v4)
  {
    v4 = +[NRDeviceOperationalProperties copyPropertiesForDefaultPairedPhone];
  }

  sub_10013E868(v4);
  v1 = &qword_100229000;
  if (qword_1002291E8 != -1)
  {
LABEL_16:
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  v7 = qword_1002291E0;
  v8 = _NRLogIsLevelEnabled();

  if (v8)
  {
    if (v1[61] != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    v9 = qword_1002291E0;
    v10 = v5[3];
    _NRLogWithArgs(v9, 0, "%s%.30s:%-4d %@: Registering Device with nruuid:%@", "", "[NRDevicePairingCandidateContext registerDevice]", 2570, v2, v10);
  }

  v11 = v5[3];
  sub_100171120(NRDLocalDevice, v11);

  v12 = v5[3];
  v13 = *(v2 + 5);
  v14 = [v13 properties];
  sub_100169CF4(NRDLocalDevice, v12, 0, 0, 0, 0, 0, [v14 isAltAccountPairing], 0, 1, *(v2 + 6), 0, 0, v4, 0, @"nr-modern-device-pairing-registration", v3);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void sub_1001293C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1001293F4(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v13 = a3;
  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d Completed peer registration with res %lld %@", "", "[NRDevicePairingCandidateContext registerDevice]_block_invoke", 2535, a2, v13);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (sub_100123434(WeakRetained))
    {
      v7 = objc_loadWeakRetained(v6 + 2);
      v8 = v7;
      if (a2)
      {
        if (v7)
        {
          sub_1001246D8(v7, a2, 0xCuLL, 0);
          sub_100129A18(v8);
        }
      }

      else
      {
        sub_1001295DC(v7);
      }

      goto LABEL_13;
    }

    v11 = sub_100123258();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = sub_100123258();
      _NRLogWithArgs(v8, 16, "%s%.30s:%-4d %@: Pairing result for stale pairing request", "", "[NRDevicePairingCandidateContext registerDevice]_block_invoke", 2542, v6);
      goto LABEL_13;
    }
  }

  else
  {
    v9 = sub_100123258();
    v10 = _NRLogIsLevelEnabled();

    if (v10)
    {
      v8 = sub_100123258();
      _NRLogWithArgs(v8, 16, "%s%.30s:%-4d Invalid pairing candidate");
LABEL_13:
    }
  }
}

void sub_1001295DC(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v1 = a1;
  v2 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 64)];
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;

  v4 = [NRDeviceIdentifier alloc];
  if (v2)
  {
    v5 = *(v2 + 248);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 initWithUUID:v5];
  v7 = [[NRPairedDevice alloc] initWithDeviceIdentifier:v6];
  v8 = v7;
  if (v2)
  {
    v9 = *(v2 + 40);
  }

  else
  {
    v9 = 0;
  }

  [v7 setDevice:v9];
  v10 = [v8 device];
  [v10 setAuthData:0];

  v11 = &v39;
  v12 = xpc_dictionary_create(0, 0, 0);
  if (!v12)
  {
    v23 = sub_100123258();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v25 = sub_100123258();
      _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);
    }

    v2 = _os_log_pack_size();
    v1 = &uuid[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v26 = __error();
    v27 = _os_log_pack_fill(v1, v2, *v26, &_mh_execute_header, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    sub_1000F4320(v27, "nr_xpc_dictionary_create");
    sub_100123258();
    _NRLogAbortWithPack();
    goto LABEL_25;
  }

  v13 = nrXPCKeyPairedDevice;
  v11 = v12;
  v14 = v8;
  v8 = v14;
  if (!v13)
  {
LABEL_25:
    v28 = sub_100123258();
    v29 = _NRLogIsLevelEnabled();

    if (!v29)
    {
      goto LABEL_13;
    }

    v30 = sub_100123258();
    _NRLogWithArgs(v30, 17, "%s called with null key");
    goto LABEL_29;
  }

  if (v14)
  {
    *uuid = 0;
    v15 = [NSKeyedArchiver archivedDataWithRootObject:v14 requiringSecureCoding:1 error:uuid];
    v16 = *uuid;
    if (v16 || ![v15 length])
    {
      v33 = sub_100123258();
      v34 = _NRLogIsLevelEnabled();

      if (v34)
      {
        v35 = sub_100123258();
        _NRLogWithArgs(v35, 17, "Failed to archive %@: %@", v8, v16);
      }
    }

    else
    {
      xpc_dictionary_set_data(v11, v13, [v15 bytes], objc_msgSend(v15, "length"));
    }

    goto LABEL_13;
  }

  v31 = sub_100123258();
  v32 = _NRLogIsLevelEnabled();

  if (v32)
  {
    v30 = sub_100123258();
    _NRLogWithArgs(v30, 17, "%s called with null object");
LABEL_29:
  }

LABEL_13:

  if (v2)
  {
    v17 = [*(v2 + 32) cbUUID];
    if (v17)
    {
      v18 = v17;
      v19 = nrXPCKeyBluetoothUUID;
      v20 = v11;
      if (v19)
      {
        *uuid = 0;
        v41 = 0;
        [v18 getUUIDBytes:uuid];
        xpc_dictionary_set_uuid(v20, v19, uuid);
      }

      else
      {
        v36 = sub_100123258();
        v37 = _NRLogIsLevelEnabled();

        if (v37)
        {
          v38 = sub_100123258();
          _NRLogWithArgs(v38, 17, "%s called with null key", "nr_xpc_dictionary_set_nsuuid");
        }
      }
    }
  }

  sub_1001246D8(v1, 0, 0xCuLL, v11);
  v21 = *(v1 + 17);
  if (v21)
  {
    dispatch_source_cancel(v21);
    v22 = *(v1 + 17);
    *(v1 + 17) = 0;
  }
}

void sub_100129A18(uint64_t a1)
{
  if (a1)
  {
    v17 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 64)];
    v2 = *(a1 + 64);
    *(a1 + 64) = 0;

    v3 = v17;
    if (v17)
    {
      sub_100123ADC(NRDevicePairingCandidateContext, (v17 + 184));
      v4 = *(v17 + 40);
      *(v17 + 40) = 0;

      sub_1001242E0(v17, 0);
      v5 = *(v17 + 272);
      *(v17 + 272) = 0;

      v6 = *(v17 + 264);
      *(v17 + 264) = 0;

      v7 = *(v17 + 216);
      *(v17 + 216) = 0;

      v8 = *(v17 + 224);
      *(v17 + 224) = 0;

      v9 = *(v17 + 232);
      *(v17 + 232) = 0;

      v10 = *(v17 + 240);
      *(v17 + 240) = 0;

      v3 = v17;
      *(v17 + 10) = 0;
      v11 = *(v17 + 248);
      if (v11)
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100129BE4;
        v18[3] = &unk_1001FBF50;
        v18[4] = v17;
        sub_10016BD8C(NRDLocalDevice, v11, v18);
        v12 = *(v17 + 248);
        *(v17 + 248) = 0;

        v3 = v17;
      }
    }

    v13 = *(a1 + 136);
    if (v13)
    {
      dispatch_source_cancel(v13);
      v14 = *(a1 + 136);
      *(a1 + 136) = 0;

      v3 = v17;
    }

    v15 = *(a1 + 112);
    if (v15)
    {
      [v15 setDelegate:0];
      v16 = *(a1 + 112);
      *(a1 + 112) = 0;

      v3 = v17;
    }
  }
}

void sub_100129BE4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Device unregistered with res %lld %@", "", "[NRDevicePairingCandidateContext invalidatePairingState]_block_invoke", 1930, *(a1 + 32), a2, v5);
  }
}

void sub_100129CD0(uint64_t a1, void *a2)
{
  v24 = a2;
  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Plumbed classD keys %@", "", "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]_block_invoke", 3321, *(a1 + 32), v24);
  }

  if (v24)
  {
    v3 = v24[9];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    v5 = *(a1 + 32);
    v6 = qword_1002291E0;
    if (v4)
    {
      v7 = *(v4 + 1);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = sub_10015E4BC(v8);
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: classDRemotePublicKey=%@", "", "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]_block_invoke", 3324, v5, LogString);
  }

  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    v11 = *(a1 + 32);
    v12 = qword_1002291E0;
    if (v4)
    {
      v13 = *(v4 + 2);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = sub_10015E4BC(v14);
    v16 = _NRKeyCreateLogString();
    _NRLogWithArgs(v12, 0, "%s%.30s:%-4d %@: classDLocalPublicKey=%@", "", "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]_block_invoke", 3326, v11, v16);
  }

  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    v17 = *(a1 + 32);
    v18 = qword_1002291E0;
    if (v4)
    {
      v19 = *(v4 + 3);
      v20 = v19;
      if (v19)
      {
        v21 = *(v19 + 2);
LABEL_33:
        v22 = v21;
        v23 = _NRKeyCreateLogString();
        _NRLogWithArgs(v18, 0, "%s%.30s:%-4d %@: classDSharedSecret=%@", "", "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]_block_invoke", 3328, v17, v23);

        goto LABEL_34;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = 0;
    goto LABEL_33;
  }

LABEL_34:
}

void sub_10012A07C(uint64_t a1, void *a2)
{
  v24 = a2;
  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Plumbed classC keys %@", "", "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]_block_invoke_2", 3339, *(a1 + 32), v24);
  }

  if (v24)
  {
    v3 = v24[10];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    v5 = *(a1 + 32);
    v6 = qword_1002291E0;
    if (v4)
    {
      v7 = *(v4 + 1);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = sub_10015E4BC(v8);
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: classCRemotePublicKey=%@", "", "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]_block_invoke_2", 3342, v5, LogString);
  }

  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    v11 = *(a1 + 32);
    v12 = qword_1002291E0;
    if (v4)
    {
      v13 = *(v4 + 2);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = sub_10015E4BC(v14);
    v16 = _NRKeyCreateLogString();
    _NRLogWithArgs(v12, 0, "%s%.30s:%-4d %@: classCLocalPublicKey=%@", "", "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]_block_invoke_2", 3344, v11, v16);
  }

  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    v17 = *(a1 + 32);
    v18 = qword_1002291E0;
    if (v4)
    {
      v19 = *(v4 + 3);
      v20 = v19;
      if (v19)
      {
        v21 = *(v19 + 2);
LABEL_33:
        v22 = v21;
        v23 = _NRKeyCreateLogString();
        _NRLogWithArgs(v18, 0, "%s%.30s:%-4d %@: classCSharedSecret=%@", "", "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]_block_invoke_2", 3346, v17, v23);

        goto LABEL_34;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = 0;
    goto LABEL_33;
  }

LABEL_34:
}

void sub_10012A428(uint64_t a1, void *a2)
{
  v17 = a2;
  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Plumbed device identity %@", "", "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]_block_invoke_3", 3356, *(a1 + 32), v17);
  }

  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    v3 = *(a1 + 32);
    v4 = qword_1002291E0;
    if (v17)
    {
      v5 = v17[8];
      v6 = v5;
      if (v5)
      {
        v7 = *(v5 + 1);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v8 = v7;
    v9 = [v8 UUIDString];
    _NRLogWithArgs(v4, 0, "%s%.30s:%-4d %@: deviceIdentityUUID=%@", "", "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]_block_invoke_3", 3358, v3, v9);
  }

  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    v10 = *(a1 + 32);
    v11 = qword_1002291E0;
    if (v17)
    {
      v12 = v17[8];
      v13 = v12;
      if (v12)
      {
        v14 = *(v12 + 2);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v15 = v14;
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs(v11, 0, "%s%.30s:%-4d %@: deviceIdentityPublicKey=%@", "", "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]_block_invoke_3", 3360, v10, LogString);
  }
}

uint64_t sub_10012A6E4(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (v2)
  {

    goto LABEL_22;
  }

  if (qword_100229238 != -1)
  {
    dispatch_once(&qword_100229238, &stru_1001FC340);
  }

  if (byte_100229230)
  {
LABEL_22:
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v16 = [*(a1 + 32) cbUUID];
    v17 = sub_100168BE8(NRDLocalDevice, v16, 0);
    if (v17)
    {
      v18 = v17;
      v19 = &qword_100229000;
      if ((v17->_databaseFlags & 1) == 0)
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Unregistered device %@ already exists", "", "[NRDevicePairingCandidateContext prepareLocalDeviceForPairing]", 2709, a1, v18);
        }

        v20 = v18->_nrUUID;
        v80[0] = _NSConcreteStackBlock;
        v80[1] = 3221225472;
        v80[2] = sub_10012BBD8;
        v80[3] = &unk_1001FBF50;
        v80[4] = a1;
        sub_10016BD8C(NRDLocalDevice, v20, v80);

        goto LABEL_65;
      }

      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d %@: Paired device %@ already exists", "", "[NRDevicePairingCandidateContext prepareLocalDeviceForPairing]", 2717, a1, v18);
      }

      v26 = v79;
      v27 = xpc_dictionary_create(0, 0, 0);
      if (v27)
      {
        v28 = nrXPCKeyBluetoothUUID;
        v26 = v27;
        v29 = v16;
        v19 = v29;
        if (v28)
        {
          if (v29)
          {
            *uuid = 0;
            v83 = 0;
            [v29 getUUIDBytes:uuid];
            xpc_dictionary_set_uuid(v26, v28, uuid);
            goto LABEL_45;
          }

          v70 = sub_100123258();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (!IsLevelEnabled)
          {
LABEL_45:

            v30 = nrXPCKeyNRUUID;
            v31 = v18->_nrUUID;
            v32 = v26;
            v33 = v31;
            v34 = v33;
            if (v30)
            {
              if (v33)
              {
                *uuid = 0;
                v83 = 0;
                [(NSUUID *)v33 getUUIDBytes:uuid];
                xpc_dictionary_set_uuid(v32, v30, uuid);
LABEL_48:

                if (WeakRetained)
                {
                  sub_1001246D8(WeakRetained, 0xFFFFFFFFFFFFF441, 0xCuLL, v32);
                  sub_100129A18(WeakRetained);
                }

                v81 = 1;

                goto LABEL_70;
              }

              v72 = sub_100123258();
              v73 = _NRLogIsLevelEnabled();

              if (!v73)
              {
                goto LABEL_48;
              }

              v69 = sub_100123258();
              _NRLogWithArgs(v69, 17, "%s called with null uuid");
            }

            else
            {
              v67 = sub_100123258();
              v68 = _NRLogIsLevelEnabled();

              if (!v68)
              {
                goto LABEL_48;
              }

              v69 = sub_100123258();
              _NRLogWithArgs(v69, 17, "%s called with null key");
            }

            goto LABEL_48;
          }

          v66 = sub_100123258();
          _NRLogWithArgs(v66, 17, "%s called with null uuid");
LABEL_95:

          goto LABEL_45;
        }
      }

      else
      {
        v59 = sub_100123258();
        v60 = _NRLogIsLevelEnabled();

        if (v60)
        {
          v61 = sub_100123258();
          _NRLogWithArgs(v61, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);
        }

        WeakRetained = _os_log_pack_size();
        v16 = v79 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v62 = __error();
        v63 = _os_log_pack_fill(v16, WeakRetained, *v62, &_mh_execute_header, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
        sub_1000F4320(v63, "nr_xpc_dictionary_create");
        sub_100123258();
        _NRLogAbortWithPack();
      }

      v64 = sub_100123258();
      v65 = _NRLogIsLevelEnabled();

      if (!v65)
      {
        goto LABEL_45;
      }

      v66 = sub_100123258();
      _NRLogWithArgs(v66, 17, "%s called with null key");
      goto LABEL_95;
    }

    v21 = v16;
    v22 = objc_opt_self();
    if (v21)
    {
      v23 = v22;
      if (_NRIsUUIDNonZero())
      {
        v24 = sub_100003490();
        dispatch_assert_queue_V2(v24);

        sub_1001619D8(v23);
        v25 = sub_100168BE8(v23, v21, 0);
        if (v25)
        {
          v18 = v25;
LABEL_64:

LABEL_65:
          nrUUID = v18->_nrUUID;
          goto LABEL_66;
        }

        v18 = [NRDLocalDevice alloc];
        if (v18 && (v35 = objc_alloc_init(NSUUID), v18 = sub_10015D20C(v18, v35), v35, v18, v18))
        {
          v36 = 0;
          v37 = v18->_nrUUID;
        }

        else
        {
          v37 = 0;
          v36 = 1;
        }

        v38 = v37;
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

          _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d Creating new ephemeral local device with random %@ for Bluetooth query %@", "", "+[NRDLocalDevice createEphemeralLocalDeviceForBluetoothUUID:]", 2328, v38, v21);
        }

        if ((v36 & 1) == 0)
        {
          v18->_isEphemeral = 1;
          if (!v18->_isEmptyPairing)
          {
            v18->_isEmptyPairing = 1;
            sub_10015D3F4(v18);
          }

          [(NRDLocalDevice *)v18 setBluetoothUUID:v21];
          [qword_100229428 setObject:v18 forKeyedSubscript:v38];
          v39 = v18->_nrUUID;
          v40 = [(NRDLocalDevice *)v18 description];
          sub_1000059A8(v39, 5000, v40, 0);

          goto LABEL_64;
        }

        [(NRDLocalDevice *)v18 setBluetoothUUID:v21];
        [qword_100229428 setObject:v18 forKeyedSubscript:v38];

        if (v18)
        {
          goto LABEL_65;
        }

LABEL_85:
        nrUUID = 0;
LABEL_66:
        objc_storeStrong((a1 + 248), nrUUID);
        v42 = *(a1 + 248);
        v43 = sub_10016D388(NRDLocalDevice, v42);
        v44 = *(a1 + 240);
        *(a1 + 240) = v43;

        if (*(a1 + 240))
        {
          v45 = *(a1 + 248);
          v79[0] = _NSConcreteStackBlock;
          v79[1] = 3221225472;
          v79[2] = sub_10012BCC4;
          v79[3] = &unk_1001FBFF0;
          v79[4] = a1;
          sub_10016D738(NRDLocalDevice, v45, 3, 1, v79);
          if (*(a1 + 224))
          {
            if (*(a1 + 232))
            {
              v81 = 1;
LABEL_70:

              return v81;
            }

            v52 = sub_100123258();
            v53 = _NRLogIsLevelEnabled();

            if (v53)
            {
              v49 = sub_100123258();
              _NRLogWithArgs(v49, 16, "%s%.30s:%-4d %@: Failed to get Class C keys", "", "[NRDevicePairingCandidateContext prepareLocalDeviceForPairing]", 2755, a1);
              goto LABEL_77;
            }

LABEL_78:
            v81 = 0;
            goto LABEL_70;
          }

          v50 = sub_100123258();
          v51 = _NRLogIsLevelEnabled();

          if (!v51)
          {
            goto LABEL_78;
          }

          v49 = sub_100123258();
          _NRLogWithArgs(v49, 16, "%s%.30s:%-4d %@: Failed to get Class D keys", "", "[NRDevicePairingCandidateContext prepareLocalDeviceForPairing]", 2751, a1);
        }

        else
        {
          v47 = sub_100123258();
          v48 = _NRLogIsLevelEnabled();

          if (!v48)
          {
            goto LABEL_78;
          }

          v49 = sub_100123258();
          _NRLogWithArgs(v49, 16, "%s%.30s:%-4d %@: Failed to get device identity payload", "", "[NRDevicePairingCandidateContext prepareLocalDeviceForPairing]", 2733, a1);
        }

LABEL_77:

        goto LABEL_78;
      }

      v57 = sub_10015B480();
      v58 = _NRLogIsLevelEnabled();

      if (v58)
      {
        v56 = sub_10015B480();
        _NRLogWithArgs(v56, 17, "called with all-zero bluetoothUUID");
        goto LABEL_83;
      }
    }

    else
    {
      v54 = sub_10015B480();
      v55 = _NRLogIsLevelEnabled();

      if (v55)
      {
        v56 = sub_10015B480();
        _NRLogWithArgs(v56, 17, "%s called with null bluetoothUUID", "+[NRDLocalDevice createEphemeralLocalDeviceForBluetoothUUID:]");
LABEL_83:
      }
    }

    v18 = 0;
    goto LABEL_85;
  }

  v3 = [*(a1 + 96) peer];
  if (!v3)
  {
    v74 = sub_100123258();
    v75 = _NRLogIsLevelEnabled();

    if (v75)
    {
      v76 = sub_100123258();
      _NRLogWithArgs(v76, 16, "%s%.30s:%-4d %@: Can't retrieve BTOOBK with no peer", "", "[NRDevicePairingCandidateContext prepareForBluetoothPairing]", 2662, a1);
    }

    return 0;
  }

  v4 = v3;
  v5 = objc_loadWeakRetained((a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v5[14];
    if (v7)
    {
      goto LABEL_12;
    }

    v8 = v6[11];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v7 = [v9 sharedPairingAgent];

  [v7 setDelegate:v6];
  if (v6)
  {
    objc_storeStrong(v6 + 14, v7);
  }

LABEL_12:
  [v7 setOOBPairingEnabled:1 forPeer:v4];
  v10 = [v7 retrieveOOBDataForPeer:v4];
  if (v10)
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      v11 = qword_1002291E0;
      LogString = _NRKeyCreateLogString();
      _NRLogWithArgs(v11, 0, "%s%.30s:%-4d %@: Retrieved BTOOBK %@", "", "[NRDevicePairingCandidateContext prepareForBluetoothPairing]", 2685, a1, LogString);
    }

    v13 = v10;
    v14 = *(a1 + 216);
    *(a1 + 216) = v13;
    goto LABEL_20;
  }

  v77 = sub_100123258();
  v78 = _NRLogIsLevelEnabled();

  if (v78)
  {
    v14 = sub_100123258();
    _NRLogWithArgs(v14, 16, "%s%.30s:%-4d %@: Failed to retrieve BTOOBK", "", "[NRDevicePairingCandidateContext prepareForBluetoothPairing]", 2681, a1);
LABEL_20:
  }

  if (v10)
  {
    goto LABEL_22;
  }

  return 0;
}