uint64_t sub_10008D410(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a1)
  {
    v19 = 0;
    goto LABEL_27;
  }

  v7 = v5;
  sub_1000576EC();
  v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
  if (!v9)
  {
    v19 = 0;
    v20 = v7;
    goto LABEL_26;
  }

  v10 = v9;
  v34 = v6;
  v11 = MEMORY[0];
LABEL_4:
  v12 = 0;
  while (1)
  {
    if (MEMORY[0] != v11)
    {
      objc_enumerationMutation(v7);
    }

    v13 = *(8 * v12);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    v14 = [v13 objectForKeyedSubscript:@"UserPersonaType"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 unsignedIntValue] == a2)
    {
      break;
    }

LABEL_11:
    if (v10 == ++v12)
    {
      sub_1000576EC();
      v10 = sub_100057660(v15, v16, v17, v18);
      if (v10)
      {
        goto LABEL_4;
      }

      v19 = 0;
      v20 = v7;
      v6 = v34;
      goto LABEL_26;
    }
  }

  v20 = v13;

  if (!v20)
  {
    v19 = 0;
    v6 = v34;
    goto LABEL_27;
  }

  v6 = v34;
  if (qword_1000EB3F8 != -1)
  {
    dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
  }

  if (sub_100057618(qword_1000EB3F0))
  {
    sub_1000572D0();
    v21 = sub_100057228();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
    if (sub_100053958(v22))
    {
      sub_100001800();
      v31 = sub_100057600(v23, v24, v25, v26, v27, v28, v29, v30);
      v32 = v31;
      if (v31)
      {
        sub_100002A8C(v31);
      }
    }

    else
    {
      v32 = 0;
    }

    free(v32);
  }

  [v7 removeObjectIdenticalTo:v20];
  v19 = 1;
LABEL_26:

LABEL_27:
  return v19;
}

id sub_10008D684(uint64_t a1, void *a2, _DWORD *a3)
{
  if (a1)
  {
    if (a3)
    {
      *a3 = 0;
    }

    v5 = sub_100056BC8(a1, a2);
    if ([v5 count])
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000577D8(qword_1000EB3F0))
      {
        sub_10005734C();
        v6 = sub_1000571D8();
        v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
        if (sub_100057088(v7))
        {
          sub_1000538EC();
          sub_100001688();
          v15 = _os_log_send_and_compose_impl(v8, v9, v10, v11, v12, v13, 2, v14);
          v16 = v15;
          if (v15)
          {
            sub_100002A8C(v15);
          }
        }

        else
        {
          v16 = 0;
        }

        free(v16);
      }

      v27 = v5;
    }

    else
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057630(qword_1000EB3F0))
      {
        sub_10005737C();
        v17 = sub_100057648();
        if (sub_10000230C(v17))
        {
          sub_100057148();
          sub_100001728();
          v25 = _os_log_send_and_compose_impl(v18, v19, v20, v21, v22, v23, 2, v24);
          v26 = v25;
          if (v25)
          {
            sub_100002A8C(v25);
          }
        }

        else
        {
          v26 = 0;
        }

        free(v26);
      }

      v27 = 0;
      if (a3)
      {
        *a3 = 2;
      }
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

id *sub_10008D88C(id *a1, _DWORD *a2)
{
  v2 = a1;
  if (a1)
  {
    if (a2)
    {
      *a2 = 0;
    }

    v4 = +[NSMutableArray array];
    v5 = [v2[4] userPersonas];
    sub_1000576EC();
    v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0];
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (MEMORY[0] != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(8 * i);
          v12 = v2[4];
          v13 = [v12 userPersonas];
          v14 = [v13 objectForKeyedSubscript:v11];
          [v4 addObjectsFromArray:v14];
        }

        sub_1000576EC();
        v8 = sub_100057748(v15, v16, v17, v18);
      }

      while (v8);
    }

    if ([v4 count])
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000577D8(qword_1000EB3F0))
      {
        sub_10005734C();
        v19 = sub_1000571D8();
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
        if (sub_100057088(v20))
        {
          LODWORD(v41[0]) = 138412290;
          *(v41 + 4) = v4;
          sub_1000571B0();
          sub_100001688();
          v28 = _os_log_send_and_compose_impl(v21, v22, v23, v24, v25, v26, 2, v27, v41);
          v29 = v28;
          if (v28)
          {
            sub_100002A8C(v28);
          }
        }

        else
        {
          v29 = 0;
        }

        free(v29);
      }

      v2 = v4;
    }

    else
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057630(qword_1000EB3F0))
      {
        v41[0] = 0;
        sub_1000011A8(1);
        v30 = sub_100057648();
        if (sub_10000230C(v30))
        {
          sub_100057148();
          sub_100001728();
          v38 = _os_log_send_and_compose_impl(v31, v32, v33, v34, v35, v36, 2, v37);
          v39 = v38;
          if (v38)
          {
            sub_100002A8C(v38);
          }
        }

        else
        {
          v39 = 0;
        }

        free(v39);
      }

      v2 = 0;
      if (a2)
      {
        *a2 = 2;
      }
    }
  }

  return v2;
}

id sub_10008DB74()
{
  sub_100057540();
  v2 = v1;
  if (v0)
  {
    v3 = sub_10005754C();
    v5 = sub_100056BC8(v3, v4);
    v6 = [v2 objectForKeyedSubscript:@"UserPersonaUniqueString"];
    if (v6 && (v7 = v6, [v2 objectForKeyedSubscript:@"UserPersonaUniqueString"], v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v9 = objc_opt_isKindOfClass(), v8, v7, (v9 & 1) != 0))
    {
      v10 = [v2 objectForKeyedSubscript:@"UserPersonaUniqueString"];
      v11 = sub_100056854(v0, v10, v5);
    }

    else
    {
      v12 = [v2 objectForKeyedSubscript:@"UserPersonaType"];
      if (!v12 || (v13 = v12, [v2 objectForKeyedSubscript:@"UserPersonaType"], v14 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v14, v13, (isKindOfClass & 1) == 0))
      {
        v0 = 0;
        goto LABEL_9;
      }

      v10 = [v2 objectForKeyedSubscript:@"UserPersonaType"];
      v11 = sub_10008CDD8(v0, [v10 unsignedLongValue], v5);
    }

    v0 = v11;

LABEL_9:
  }

  return v0;
}

id sub_10008DD04(void *a1, void *a2, uint64_t a3, _DWORD *a4)
{
  v6 = a2;
  if (a1)
  {
    if (a4)
    {
      *a4 = 0;
    }

    v7 = sub_10008DB74();
    if (v7)
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057630(qword_1000EB3F0))
      {
        sub_1000572D0();
        v8 = sub_100057648();
        if (sub_10000230C(v8))
        {
          sub_1000538EC();
          sub_100001728();
          v16 = _os_log_send_and_compose_impl(v9, v10, v11, v12, v13, v14, 2, v15);
          v17 = v16;
          if (v16)
          {
            sub_100002A8C(v16);
          }
        }

        else
        {
          v17 = 0;
        }

        free(v17);
      }

      v28 = v7;
    }

    else
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_10005757C(qword_1000EB3F0))
      {
        sub_1000572D0();
        v18 = sub_10005717C();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
        if (sub_100057078(v19))
        {
          sub_1000538EC();
          sub_100001800();
          v26 = _os_log_send_and_compose_impl(v20, v21, v22, v23, v24, a1, 2, v25);
          v27 = v26;
          if (v26)
          {
            sub_100002A8C(v26);
          }
        }

        else
        {
          v27 = 0;
        }

        free(v27);
      }

      if (a4)
      {
        *a4 = 2;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_10008DF28()
{
  sub_1000572B4();
  v5 = v4;
  sub_100057540();
  v7 = v6;
  v8 = v0;
  if (v1)
  {
    if (v5)
    {
      *v5 = 0;
    }

    sub_1000571E4();
    if (!v21)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_100057618(qword_1000EB3F0))
    {
      sub_10005734C();
      v9 = sub_100057228();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
      if (sub_100053958(v10))
      {
        sub_1000538EC();
        sub_100053914();
        v19 = sub_100057600(v11, v12, v13, v14, v15, v16, v17, v18);
        v3 = v19;
        if (v19)
        {
          sub_100002A8C(v19);
        }
      }

      else
      {
        v3 = 0;
      }

      free(v3);
    }

    sub_100002BDC();
    v20 = sub_10008DB74();
    sub_1000571E4();
    if (v22)
    {
      if (!v21)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057618(qword_1000EB3F0))
      {
        sub_10005734C();
        v23 = sub_100057228();
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
        if (sub_100053958(v24))
        {
          sub_1000538EC();
          sub_100053914();
          v33 = sub_100057600(v25, v26, v27, v28, v29, v30, v31, v32);
          v3 = v33;
          if (v33)
          {
            sub_100002A8C(v33);
          }
        }

        else
        {
          v3 = 0;
        }

        free(v3);
      }

      v46 = [v20 objectForKeyedSubscript:@"UserPersonaBundleIDS"];
      if (v46)
      {
        objc_opt_class();
        objc_opt_isKindOfClass();
        sub_1000571E4();
        if (v48)
        {
          if (!v47)
          {
            dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
          }

          if (sub_10005757C(qword_1000EB3F0))
          {
            sub_10005734C();
            v49 = sub_100057564();
            if (sub_100053958(v49))
            {
              sub_1000538EC();
              sub_1000018EC();
              v57 = _os_log_send_and_compose_impl(v50, v51, v52, v53, v54, v55, 2, v56);
              v58 = v57;
              if (v57)
              {
                sub_100002A8C(v57);
              }
            }

            else
            {
              v58 = 0;
            }

            free(v58);
          }

          v79 = v46;
        }

        else
        {
          if (!v47)
          {
            dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
          }

          if (sub_100057364(qword_1000EB3F0))
          {
            sub_10005737C();
            v69 = sub_1000571F0();
            if (sub_100053930(v69))
            {
              sub_100053968();
              sub_100057098();
              v77 = _os_log_send_and_compose_impl(v70, v71, v72, v73, v74, v75, 0, v76);
              v78 = v77;
              if (v77)
              {
                sub_100002A8C(v77);
              }
            }

            else
            {
              v78 = 0;
            }

            free(v78);
          }

          if (v5)
          {
            *v5 = 22;
          }
        }
      }

      else
      {
        sub_1000571E4();
        if (!v21)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_10005757C(qword_1000EB3F0))
        {
          sub_10005737C();
          v59 = sub_100057564();
          if (sub_100053958(v59))
          {
            sub_100057148();
            sub_1000018EC();
            v67 = _os_log_send_and_compose_impl(v60, v61, v62, v63, v64, v65, 2, v66);
            v68 = v67;
            if (v67)
            {
              sub_100002A8C(v67);
            }
          }

          else
          {
            v68 = 0;
          }

          free(v68);
        }

        +[NSArray array];
        objc_claimAutoreleasedReturnValue();
      }
    }

    else
    {
      if (!v21)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057618(qword_1000EB3F0))
      {
        sub_10005734C();
        v34 = sub_100057228();
        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG);
        if (sub_100053958(v35))
        {
          sub_1000538EC();
          sub_100053914();
          v44 = sub_100057600(v36, v37, v38, v39, v40, v41, v42, v43);
          v45 = v44;
          if (v44)
          {
            sub_100002A8C(v44);
          }
        }

        else
        {
          v45 = 0;
        }

        free(v45);
      }

      if (v5)
      {
        *v5 = 2;
      }
    }
  }

  sub_100057298();

  return v80;
}

void sub_10008E3EC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = v6;
  if (a1)
  {
    if (v6)
    {
      v20 = [*(a1 + 32) userPersonas];
      v3 = [v20 objectForKeyedSubscript:v7];

      if (!v3)
      {
        v3 = +[NSMutableArray array];
        v20 = [*(a1 + 32) userPersonas];
        [v20 setObject:v3 forKeyedSubscript:v7];
      }

      sub_10005754C();
      sub_100057254();
      v27 = sub_10008E7D0(v21, v22, v23, v24, v25, v26);
      if (!v27)
      {
        sub_100057170();
        if (!v8)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_100057364(qword_1000EB3F0))
        {
          sub_1000572D0();
          v28 = sub_1000573AC();
          if (sub_10005712C(v28))
          {
            sub_100053968();
            sub_100001800();
            v38 = sub_1000573DC(v30, v31, v32, v33, v34, v35, v36, v37);
            v29 = v38;
            if (v38)
            {
              sub_100002A8C(v38);
            }
          }

          else
          {
            v29 = 0;
          }

          free(v29);
        }
      }

      sub_10005754C();
      sub_100057254();
      v45 = sub_10008E7D0(v39, v40, v41, v42, v43, v44);

      if (!v45)
      {
        sub_100057170();
        if (!v8)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_1000575E8(qword_1000EB3F0))
        {
          sub_1000572D0();
          v46 = sub_100057300();
          if (sub_10005712C(v46))
          {
            sub_100053968();
            sub_100001800();
            v56 = sub_100057718(v48, v49, v50, v51, v52, v53, v54, v55);
            v47 = v56;
            if (v56)
            {
              sub_100002A8C(v56);
            }
          }

          else
          {
            v47 = 0;
          }

          free(v47);
        }
      }

      sub_10005754C();
      sub_100057254();
      v63 = sub_10008E7D0(v57, v58, v59, v60, v61, v62);

      if (!v63)
      {
        sub_100057170();
        if (!v8)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_100057364(qword_1000EB3F0))
        {
          sub_1000572D0();
          v64 = sub_1000573AC();
          if (sub_10005712C(v64))
          {
            sub_100053968();
            sub_100001800();
            v74 = sub_1000573DC(v66, v67, v68, v69, v70, v71, v72, v73);
            v65 = v74;
            if (v74)
            {
              sub_100002A8C(v74);
            }
          }

          else
          {
            v65 = 0;
          }

          free(v65);
        }
      }

      sub_10005754C();
      sub_100057254();
      v81 = sub_10008E7D0(v75, v76, v77, v78, v79, v80);

      if (!v81)
      {
        sub_100057170();
        if (!v8)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_1000574F8(qword_1000EB3F0))
        {
          sub_1000572D0();
          v82 = sub_100057228();
          v83 = os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
          if (sub_100053958(v83))
          {
            sub_100053968();
            sub_100001800();
            v93 = sub_1000574E0(v85, v86, v87, v88, v89, v90, v91, v92);
            v84 = v93;
            if (v93)
            {
              sub_100002A8C(v93);
            }
          }

          else
          {
            v84 = 0;
          }

          free(v84);
        }
      }

      sub_10008EBBC(a1);
    }

    else
    {
      sub_100057170();
      if (!v8)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000573F4(qword_1000EB3F0))
      {
        sub_1000572D0();
        v9 = sub_1000571BC();
        if (sub_100057088(v9))
        {
          sub_100053968();
          sub_100001800();
          v18 = sub_100057470(v10, v11, v12, v13, v14, v15, v16, v17);
          v19 = v18;
          if (v18)
          {
            sub_100002A8C(v18);
          }
        }

        else
        {
          v19 = 0;
        }

        free(v19);
      }
    }
  }
}

uint64_t *sub_10008EBBC(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_100092CEC(result);
    v3 = sub_100092EA8(v1, v2, 0);

    return v3;
  }

  return result;
}

void sub_100091480()
{
  sub_1000572B4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  if (v4)
  {
    if (v2)
    {
      *v2 = 0;
    }

    v7 = objc_alloc_init(UMKPersonaInfo);
    v8 = [v6 objectForKeyedSubscript:@"UserPersonaType"];

    if (v8)
    {
      v10 = sub_1000577C0(v9, @"UserPersonaType");
      v11 = sub_100056CD8(UMDPersonaManager, v10);
      sub_100095DAC(v7, v11);
      if (sub_100001434(v7) == -1)
      {
        sub_100057170();
        if (!v17)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (!sub_100057334(qword_1000EB3F0))
        {
          goto LABEL_35;
        }

        sub_10005734C();
        v19 = sub_100057154();
        if (sub_100057078(v19))
        {
          sub_100001A64();
          goto LABEL_31;
        }

        goto LABEL_33;
      }

      v8 = [v6 objectForKeyedSubscript:@"UserPersonaID"];

      if (v8)
      {
        v12 = sub_100098D4C(v6, @"UserPersonaID", 0);
        sub_10008BDA4(v7, v12);
        v13 = sub_100098ECC(v6, @"UserPersonaUniqueString");
        sub_100096054(v7, v13);

        v8 = sub_100096040(v7, v14);

        if (v8)
        {
          v15 = sub_100098ECC(v6, @"UserPersonaUserODUUID");
          v16 = v15;
          if (v15)
          {
            if ([v15 isEqualToString:@"FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF"])
            {
              sub_100095EC8(v7, -1);
            }

            else
            {
              WeakRetained = objc_loadWeakRetained(v4 + 6);
              v32 = sub_10008A438(WeakRetained, v16);
              sub_100095EC8(v7, v32);
            }
          }

          if ((v10 & 0xFFFFFFFB) == 2)
          {
            v33 = sub_100098ECC(v6, @"MKBUserSessionHomeDir");
            if (!v33)
            {
              if (qword_1000EB3F8 != -1)
              {
                dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
              }

              if (sub_1000574F8(qword_1000EB3F0))
              {
                sub_10005734C();
                v53 = sub_100057228();
                v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
                if (sub_100053958(v54))
                {
                  sub_100057038();
                  sub_100053914();
                  v63 = sub_1000574E0(v55, v56, v57, v58, v59, v60, v61, v62);
                  v64 = v63;
                  if (v63)
                  {
                    sub_100002A8C(v63);
                  }
                }

                else
                {
                  v64 = 0;
                }

                free(v64);
              }

              if (v2)
              {
                sub_100002BB8();
                [v80 errorWithDomain:? code:? userInfo:?];
                *v2 = v34 = 0;
              }

              else
              {
                v34 = 0;
              }

              goto LABEL_85;
            }

            v34 = v33;
            if (qword_1000EB3F8 != -1)
            {
              dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
            }

            if (sub_100057730(qword_1000EB3F0))
            {
              v35 = sub_10005740C();
              if (!sub_100057778())
              {
                v35 &= ~1u;
              }

              if (v35)
              {
                v36 = WeakRetained;
                sub_100001440(v7);
                sub_100057148();
                sub_100053924();
                v43 = _os_log_send_and_compose_impl(v37, v38, v39, v40, v41, v36, 2, v42);

                if (v43)
                {
                  sub_100002A8C(v43);
                }
              }

              else
              {
                v43 = 0;
              }

              free(v43);
            }
          }

          else
          {
            sub_100057170();
            if (!v17)
            {
              dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
            }

            if (sub_100057730(qword_1000EB3F0))
            {
              v44 = sub_10005734C();
              if (!sub_100057778())
              {
                v44 &= ~1u;
              }

              if (v44)
              {
                v45 = WeakRetained;
                sub_100001440(v7);
                sub_100001A64();
                sub_100053924();
                v52 = _os_log_send_and_compose_impl(v46, v47, v48, v49, v50, v45, 2, v51);

                if (v52)
                {
                  sub_100002A8C(v52);
                }
              }

              else
              {
                v52 = 0;
              }

              free(v52);
            }

            v34 = 0;
          }

          v65 = sub_100001440(v7);
          v66 = v4[2];
          v67 = sub_1000013AC(v66);
          v68 = [v67 allocatePersonaWithInfo:v7 andPath:v34 error:v2];

          if ((v68 & 1) == 0)
          {
            sub_100057170();
            if (!v17)
            {
              dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
            }

            if (sub_100057280(qword_1000EB3F0))
            {
              sub_10005734C();
              v69 = sub_100057394();
              if (sub_10005712C(v69))
              {
                sub_100057038();
                sub_100001728();
                v77 = _os_log_send_and_compose_impl(v70, v71, v72, v73, v74, v75, 0, v76);
                v78 = v77;
                if (v77)
                {
                  sub_100002A8C(v77);
                }
              }

              else
              {
                v78 = 0;
              }

              free(v78);
            }
          }

          if (sub_100001440(v7) != v65)
          {
            v79 = [NSNumber numberWithUnsignedInt:sub_100001440(v7)];
            [v6 setObject:v79 forKeyedSubscript:@"UserPersonaID"];
          }

LABEL_85:

LABEL_86:
          goto LABEL_87;
        }

        sub_100057170();
        if (!v17)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (!sub_100057334(qword_1000EB3F0))
        {
LABEL_35:

          if (v2)
          {
            sub_100002BB8();
            *v2 = [v31 errorWithDomain:? code:? userInfo:?];
          }

          goto LABEL_86;
        }

        sub_10005734C();
        v21 = sub_100057154();
        if (sub_100057078(v21))
        {
          goto LABEL_30;
        }

LABEL_33:
        v30 = 0;
LABEL_34:
        free(v30);
        goto LABEL_35;
      }

      sub_100057170();
      if (!v17)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057334(qword_1000EB3F0))
      {
        goto LABEL_35;
      }

      sub_10005734C();
      v20 = sub_100057154();
      if (!sub_100057078(v20))
      {
        goto LABEL_33;
      }
    }

    else
    {
      sub_100057170();
      if (!v17)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057334(qword_1000EB3F0))
      {
        goto LABEL_35;
      }

      sub_10005734C();
      v18 = sub_100057154();
      if (!sub_100057078(v18))
      {
        goto LABEL_33;
      }
    }

LABEL_30:
    sub_100057038();
LABEL_31:
    sub_1000018EC();
    v29 = _os_log_send_and_compose_impl(v22, v23, v24, v25, v26, v27, 0, v28);
    v30 = v29;
    if (v29)
    {
      sub_100002A8C(v29);
    }

    goto LABEL_34;
  }

LABEL_87:

  sub_100057298();
}

id *sub_100091C04(id *WeakRetained)
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 6);
    v1 = vars8;
  }

  return WeakRetained;
}

void sub_100091C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  sub_1000574C4();
  a48 = v49;
  a49 = v51;
  if (v50)
  {
    v52 = v50;
    a17 = 0u;
    a18 = 0u;
    a15 = 0u;
    a16 = 0u;
    v53 = [v50[4] userPersonas];
    v54 = [v53 countByEnumeratingWithState:&a15 objects:&a20 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *a16;
      do
      {
        for (i = 0; i != v55; i = i + 1)
        {
          if (*a16 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v58 = *(*(&a15 + 1) + 8 * i);
          sub_100057274();
          if (!v59)
          {
            dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
          }

          v60 = qword_1000EB3F0;
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
          {
            v61 = sub_1000011A8(1);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
            {
              v62 = v61;
            }

            else
            {
              v62 = v61 & 0xFFFFFFFE;
            }

            if (v62)
            {
              LODWORD(a19) = 138412290;
              *(&a19 + 4) = v58;
              sub_1000571B0();
              sub_100053924();
              v68 = _os_log_send_and_compose_impl(v64, v65, v66, v67, &_mh_execute_header, v60, 2, "User with UUID:%@");
              v63 = v68;
              if (v68)
              {
                sub_100002A8C(v68);
              }
            }

            else
            {
              v63 = 0;
            }

            free(v63);
          }

          v69 = v52[4];
          v70 = [v69 userPersonas];
          v71 = [v70 objectForKeyedSubscript:v58];

          sub_100094CD8(v52, v71);
        }

        v55 = sub_100057660(v72, v73, &a15, &a20);
      }

      while (v55);
    }
  }

  sub_1000574A8();
}

uint64_t sub_100091E34()
{
  sub_100057540();
  v3 = v2;
  v4 = v3;
  if (v1)
  {
    if (v0)
    {
      *v0 = 0;
    }

    v5 = sub_100098D4C(v3, @"UserPersonaID", 0);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1000013AC(*(v1 + 16));
      v8 = [v7 deallocatePersonaWithID:v6 error:v0];

      if (v8)
      {
        v1 = 1;
        goto LABEL_27;
      }

      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000573F4(qword_1000EB3F0))
      {
        sub_1000572D0();
        v19 = sub_1000571BC();
        if (sub_100057088(v19))
        {
          sub_100053968();
          sub_100001800();
          v28 = sub_100057470(v20, v21, v22, v23, v24, v25, v26, v27);
          v29 = v28;
          if (v28)
          {
            sub_100002A8C(v28);
          }
        }

        else
        {
          v29 = 0;
        }

        free(v29);
      }
    }

    else
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057280(qword_1000EB3F0))
      {
        sub_1000572D0();
        v9 = sub_10005720C();
        if (sub_10000230C(v9))
        {
          sub_100053968();
          sub_100001728();
          v17 = _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, 0, v16);
          v18 = v17;
          if (v17)
          {
            sub_100002A8C(v17);
          }
        }

        else
        {
          v18 = 0;
        }

        free(v18);
      }

      if (v0)
      {
        sub_100002BB8();
        [v30 errorWithDomain:? code:? userInfo:?];
        *v0 = v1 = 0;
        goto LABEL_27;
      }
    }

    v1 = 0;
  }

LABEL_27:

  return v1;
}

void sub_100092024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100057540();
  v10 = v9;
  v11 = v5;
  if (v6)
  {
    v12 = sub_10008CDD8(v6, 4u, v10);
    if (v12)
    {
      v16 = v12;
      v17 = 0;
    }

    else
    {
      sub_100057170();
      if (!v13)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057364(qword_1000EB3F0))
      {
        sub_1000572D0();
        v14 = sub_1000571F0();
        if (sub_100053930(v14))
        {
          sub_100053968();
          sub_100001800();
          v26 = sub_1000573DC(v18, v19, v20, v21, v22, v23, v24, v25);
          v15 = v26;
          if (v26)
          {
            sub_100002A8C(v26);
          }
        }

        else
        {
          v15 = 0;
        }

        free(v15);
      }

      sub_100002BDC();
      sub_100057488();
      v33 = sub_10008E7D0(v27, v28, v29, v30, v31, v32);
      v17 = v33 != 0;
      if (v33)
      {
        v16 = v33;
        if (qword_1000EB3F8 != -1)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_100057364(qword_1000EB3F0))
        {
          sub_1000572D0();
          v34 = sub_1000571F0();
          if (sub_100053930(v34))
          {
            sub_100053968();
            sub_100001800();
            v46 = sub_1000573DC(v38, v39, v40, v41, v42, v43, v44, v45);
            v35 = v46;
            if (v46)
            {
              sub_100002A8C(v46);
            }
          }

          else
          {
            v35 = 0;
          }

          free(v35);
        }
      }

      else
      {
        if (qword_1000EB3F8 != -1)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_100057364(qword_1000EB3F0))
        {
          sub_1000572D0();
          v36 = sub_1000571F0();
          if (sub_100053930(v36))
          {
            sub_100053968();
            sub_100001800();
            v55 = sub_1000573DC(v47, v48, v49, v50, v51, v52, v53, v54);
            v37 = v55;
            if (v55)
            {
              sub_100002A8C(v55);
            }
          }

          else
          {
            v37 = 0;
          }

          free(v37);
        }

        v16 = 0;
      }
    }

    v56 = sub_10008CDD8(v6, 3u, v10);

    if (!v56)
    {
      sub_100057170();
      if (!v13)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057364(qword_1000EB3F0))
      {
        sub_1000572D0();
        v57 = sub_1000571F0();
        if (sub_100053930(v57))
        {
          sub_100053968();
          sub_100001800();
          v67 = sub_1000573DC(v59, v60, v61, v62, v63, v64, v65, v66);
          v58 = v67;
          if (v67)
          {
            sub_100002A8C(v67);
          }
        }

        else
        {
          v58 = 0;
        }

        free(v58);
      }

      sub_100002BDC();
      sub_100057488();
      v74 = sub_10008E7D0(v68, v69, v70, v71, v72, v73);
      if (v74)
      {
        v56 = v74;
        if (qword_1000EB3F8 != -1)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_100057364(qword_1000EB3F0))
        {
          sub_1000572D0();
          v77 = sub_1000573AC();
          if (sub_10005712C(v77))
          {
            sub_100053968();
            sub_100001800();
            v96 = sub_1000573DC(v88, v89, v90, v91, v92, v93, v94, v95);
            v78 = v96;
            if (v96)
            {
              sub_100002A8C(v96);
            }
          }

          else
          {
            v78 = 0;
          }

          free(v78);
        }

        v17 = 1;
      }

      else
      {
        if (qword_1000EB3F8 != -1)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_100057364(qword_1000EB3F0))
        {
          sub_1000572D0();
          v75 = sub_1000571F0();
          if (sub_100053930(v75))
          {
            sub_100053968();
            sub_100001800();
            v87 = sub_1000573DC(v79, v80, v81, v82, v83, v84, v85, v86);
            v76 = v87;
            if (v87)
            {
              sub_100002A8C(v87);
            }
          }

          else
          {
            v76 = 0;
          }

          free(v76);
        }

        v56 = 0;
      }
    }

    v97 = sub_10008CDD8(v6, 5u, v10);

    if (v97)
    {
      if (!v17)
      {
LABEL_62:

        goto LABEL_63;
      }
    }

    else
    {
      sub_100057170();
      if (!v13)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057364(qword_1000EB3F0))
      {
        sub_1000572D0();
        v98 = sub_1000571F0();
        if (sub_100053930(v98))
        {
          sub_100053968();
          sub_100001800();
          v108 = sub_1000573DC(v100, v101, v102, v103, v104, v105, v106, v107);
          v99 = v108;
          if (v108)
          {
            sub_100002A8C(v108);
          }
        }

        else
        {
          v99 = 0;
        }

        free(v99);
      }

      sub_100002BDC();
      sub_100057488();
      v115 = sub_10008E7D0(v109, v110, v111, v112, v113, v114);
      if (v115)
      {
        v97 = v115;
        if (qword_1000EB3F8 != -1)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_100057334(qword_1000EB3F0))
        {
          sub_1000572D0();
          v127 = sub_100057154();
          if (sub_100057078(v127))
          {
            sub_100053968();
            sub_100001800();
            v137 = sub_1000573C4(v129, v130, v131, v132, v133, v134, v135, v136);
            v128 = v137;
            if (v137)
            {
              sub_100002A8C(v137);
            }
          }

          else
          {
            v128 = 0;
          }

          free(v128);
        }
      }

      else
      {
        if (qword_1000EB3F8 != -1)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_100057334(qword_1000EB3F0))
        {
          sub_1000572D0();
          v116 = sub_100057154();
          if (sub_100057078(v116))
          {
            sub_100053968();
            sub_100001800();
            v125 = sub_1000573C4(v117, v118, v119, v120, v121, v122, v123, v124);
            v126 = v125;
            if (v125)
            {
              sub_100002A8C(v125);
            }
          }

          else
          {
            v126 = 0;
          }

          free(v126);
        }

        v97 = 0;
        if (!v17)
        {
          goto LABEL_62;
        }
      }
    }

    sub_100057170();
    if (!v13)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_100057334(qword_1000EB3F0))
    {
      sub_1000572D0();
      v138 = sub_100057154();
      if (sub_100057078(v138))
      {
        sub_100053968();
        sub_100001800();
        v148 = sub_1000573C4(v140, v141, v142, v143, v144, v145, v146, v147);
        v139 = v148;
        if (v148)
        {
          sub_100002A8C(v148);
        }
      }

      else
      {
        v139 = 0;
      }

      free(v139);
    }

    sub_10008EBBC(v6);
    goto LABEL_62;
  }

LABEL_63:
}

NSObject *sub_1000926B8(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      *a2 = 0;
    }

    v4 = sub_1000013A0(*(a1 + 16));
    v5 = [v4 dataWithContentsOfFile:@"/private/var/keybags/persona.kb" error:a2];

    if (v5)
    {
      v6 = [UMDPersonaManifest manifestFromData:v5];
      if (v6)
      {
        if (qword_1000EB3E8 != -1)
        {
          dispatch_once(&qword_1000EB3E8, &stru_1000DD860);
        }

        if (sub_100057280(qword_1000EB3E0))
        {
          sub_1000011A8(0);
          sub_10005720C();
          sub_10005713C();
          if (v8)
          {
            v9 = v7;
          }

          else
          {
            v9 = v2;
          }

          if (v9)
          {
            v10 = a2;
            [v6 version];
            [v6 generation];
            v11 = [v6 users];
            [v11 count];
            sub_1000538EC();
            sub_1000018EC();
            v19 = _os_log_send_and_compose_impl(v12, v13, v14, v15, v16, v17, 0, v18);

            if (v19)
            {
              sub_100002A8C(v19);
            }
          }

          else
          {
            v19 = 0;
          }

          free(v19);
        }

        v6 = v6;
        v43 = v6;
      }

      else
      {
        if (qword_1000EB3E8 != -1)
        {
          dispatch_once(&qword_1000EB3E8, &stru_1000DD860);
        }

        v31 = qword_1000EB3E0;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_1000011A8(0);
          v32 = sub_10005717C();
          v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
          if (sub_100057078(v33))
          {
            sub_100053968();
            sub_1000018EC();
            v41 = _os_log_send_and_compose_impl(v34, v35, v36, v37, v38, v39, 16, v40);
            v42 = v41;
            if (v41)
            {
              sub_100002A8C(v41);
            }
          }

          else
          {
            v42 = 0;
          }

          free(v42);
        }

        if (a2)
        {
          sub_100002BB8();
          *a2 = [v44 errorWithDomain:? code:? userInfo:?];
        }

        v43 = 0;
      }
    }

    else
    {
      if (qword_1000EB3E8 != -1)
      {
        dispatch_once(&qword_1000EB3E8, &stru_1000DD860);
      }

      v6 = qword_1000EB3E0;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000011A8(0);
        v20 = sub_1000571D8();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
        if (sub_100057088(v21))
        {
          sub_100053968();
          sub_100001688();
          v29 = _os_log_send_and_compose_impl(v22, v23, v24, v25, v26, v27, 16, v28);
          v30 = v29;
          if (v29)
          {
            sub_100002A8C(v29);
          }
        }

        else
        {
          v30 = 0;
        }

        free(v30);
      }

      v43 = 0;
    }
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

UMDPersonaManifestUser *sub_100092A38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v28 = a3;
  if (a1)
  {
    v6 = objc_alloc_init(UMDPersonaManifestUser);
    v7 = sub_100016954(NSUUID, v5);
    v27 = v6;
    sub_1000897B8(v6, v7);

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = [*(a1 + 32) asidMap];
    v9 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v33 + 1) + 8 * i);
          v14 = *(a1 + 32);
          v15 = [v14 asidMap];
          v16 = [v15 objectForKeyedSubscript:v13];

          LODWORD(v14) = [v5 isEqualToString:v16];
          if (v14)
          {
            sub_10008BDA4(v27, [v13 intValue]);
            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v17 = +[NSMutableSet set];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = v28;
    v19 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          sub_10005743C();
          if (v23 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v24 = sub_100096310(UMDPersonaManifestPersona, *(*(&v29 + 1) + 8 * j));
          sub_100089894(v24, 0);
          [v17 addObject:v24];
        }

        v20 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v20);
    }

    v25 = v27;
    sub_100089CC4(v27, v17);
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

id sub_100092CEC(uint64_t a1)
{
  if (a1)
  {
    v22 = +[UMDPersonaManifest manifest];
    [v22 setGeneration:{sub_100055380(*(a1 + 40), v2)}];
    v3 = +[NSMutableSet set];
    v4 = [*(a1 + 32) userPersonas];
    sub_10005768C();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = v6;
      v8 = MEMORY[0];
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          sub_10005743C();
          if (v10 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(8 * i);
          v12 = *(a1 + 32);
          v13 = [v12 userPersonas];
          v14 = [v13 objectForKeyedSubscript:v11];
          v15 = sub_100092A38(a1, v11, v14);

          [v3 addObject:v15];
        }

        sub_10005768C();
        v7 = sub_100057748(v16, v17, v18, v19);
      }

      while (v7);
    }

    v20 = v22;
    [v22 setUsers:v3];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t sub_100092EA8(uint64_t *a1, void *a2, void *a3)
{
  v3 = a1;
  if (a1)
  {
    if (a3)
    {
      *a3 = 0;
    }

    v5 = [a2 dataValue];
    if (v5)
    {
      v6 = sub_1000013A0(*(v3 + 16));
      v7 = [v6 atomicallyWriteData:v5 toPath:@"/private/var/keybags/persona.kb" error:a3];

      if (v7)
      {
        v3 = 1;
LABEL_27:

        return v3;
      }

      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000573F4(qword_1000EB3F0))
      {
        sub_1000572D0();
        v18 = sub_1000571BC();
        if (sub_100057088(v18))
        {
          sub_100053968();
          sub_100001800();
          v27 = sub_100057470(v19, v20, v21, v22, v23, v24, v25, v26);
          v28 = v27;
          if (v27)
          {
            sub_100002A8C(v27);
          }
        }

        else
        {
          v28 = 0;
        }

        free(v28);
      }
    }

    else
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057280(qword_1000EB3F0))
      {
        sub_1000572D0();
        v8 = sub_10005720C();
        if (sub_10000230C(v8))
        {
          sub_100053968();
          sub_100001728();
          v16 = _os_log_send_and_compose_impl(v9, v10, v11, v12, v13, v14, 0, v15);
          v17 = v16;
          if (v16)
          {
            sub_100002A8C(v16);
          }
        }

        else
        {
          v17 = 0;
        }

        free(v17);
      }

      if (a3)
      {
        sub_100002BB8();
        [v29 errorWithDomain:? code:? userInfo:?];
        *a3 = v3 = 0;
        goto LABEL_27;
      }
    }

    v3 = 0;
    goto LABEL_27;
  }

  return v3;
}

BOOL sub_100093094(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a2 objectForKeyedSubscript:@"MKBUserSessionVolumeDeviceNode"];
  v3 = v2 != 0;

  return v3;
}

void sub_1000930E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, __int128 a13, int a14, unsigned int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1000572B4();
  a27 = v30;
  a28 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v37;
  if (v35)
  {
    v39 = sub_100098ECC(v37, @"MKBUserSessionHomeDir");
    if (!v39)
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057280(qword_1000EB3F0))
      {
        sub_10005737C();
        v55 = sub_10005720C();
        if (sub_10000230C(v55))
        {
          sub_100057038();
          sub_100001728();
          v63 = _os_log_send_and_compose_impl(v56, v57, v58, v59, v60, v61, 0, v62);
          v64 = v63;
          if (v63)
          {
            sub_100002A8C(v63);
          }
        }

        else
        {
          v64 = 0;
        }

        free(v64);
      }

      goto LABEL_50;
    }

    v28 = sub_100098ECC(v38, @"UserPersonaUniqueString");
    if ([*(v35 + 24) splitUserVolumeEnabled])
    {
      v40 = sub_100016954(NSUUID, v28);
      v41 = sub_100098ECC(v38, @"MKBUserSessionVolumeDeviceNode");
      sub_100057170();
      if (!v42)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000575D0(qword_1000EB3F0))
      {
        v43 = sub_10005737C();
        if (sub_100057790())
        {
          v44 = v43;
        }

        else
        {
          v44 = v43 & 0xFFFFFFFE;
        }

        if (v44)
        {
          sub_100057038();
          sub_1000570B8();
          sub_100057448();
          v53 = _os_log_send_and_compose_impl(v45, v46, v47, v48, v49, v50, v51, v52);
          v54 = v53;
          if (v53)
          {
            sub_100002A8C(v53);
          }
        }

        else
        {
          v54 = 0;
        }

        free(v54);
      }

      v68 = *(v35 + 16);
      v69 = sub_100089A80(v68);
      a12 = 0;
      v70 = [v69 mapVolume:v41 toSession:v33 withPersona:v40 error:&a12];
      v65 = a12;

      if ((v70 & 1) == 0)
      {
        sub_100057170();
        if (!v42)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_1000575E8(qword_1000EB3F0))
        {
          sub_10005740C();
          v81 = sub_100057300();
          if (sub_10005712C(v81))
          {
            LODWORD(a13) = 138412290;
            *(&a13 + 4) = v65;
            sub_1000538EC();
            sub_1000570F0();
            v90 = sub_100057718(v82, v83, v84, v85, v86, v87, v88, v89);
            v91 = v90;
            if (v90)
            {
              sub_100002A8C(v90);
            }
          }

          else
          {
            v91 = 0;
          }

          free(v91);
        }

        goto LABEL_49;
      }
    }

    else
    {
      v65 = sub_100089790(*(v35 + 16));
      v66 = [v65 setVolumePath:v39 forPersona:v28];

      if (v66)
      {
        if (qword_1000EB3F8 != -1)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (!sub_100057334(qword_1000EB3F0))
        {
          goto LABEL_49;
        }

        sub_10005737C();
        v67 = os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT);
        if (sub_100053958(v67))
        {
          a14 = 67109120;
          a15 = v66;
          sub_100001A64();
          goto LABEL_36;
        }

LABEL_44:
        v80 = 0;
LABEL_45:
        free(v80);
LABEL_49:

LABEL_50:
        goto LABEL_51;
      }
    }

    if (qword_1000EB3F8 != -1)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (!sub_100057334(qword_1000EB3F0))
    {
      goto LABEL_49;
    }

    sub_10005737C();
    v71 = sub_100057154();
    if (sub_100057078(v71))
    {
      sub_100057038();
LABEL_36:
      sub_1000018EC();
      v79 = _os_log_send_and_compose_impl(v72, v73, v74, v75, v76, v77, 0, v78);
      v80 = v79;
      if (v79)
      {
        sub_100002A8C(v79);
      }

      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_51:

  sub_100057298();
}

uint64_t sub_100093530(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = v6;
  if (a1)
  {
    DWORD2(v159) = 0;
    v8 = sub_1000577C0(v6, @"UserPersonaID");
    v9 = sub_100098D4C(v7, @"UserPersonaType", 0x3E8);
    v10 = sub_100098C4C(v7, @"UserPersonaDisabled");
    if (v9 == 4)
    {
LABEL_27:
      v160 = 1;
LABEL_41:
      a1 = v160;
      goto LABEL_42;
    }

    v11 = v10;
    sub_100057170();
    if (!v67)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_100057730(qword_1000EB3F0))
    {
      v163[0] = 0;
      sub_1000011A8(1);
      v12 = sub_100057778();
      if (sub_10005712C(v12))
      {
        sub_1000576A4();
        *(&v162 + 2) = v9;
        sub_100001A64();
        sub_100053924();
        v19 = _os_log_send_and_compose_impl(v13, v14, v15, v16, v17, v3, 2, v18);
        v20 = v19;
        if (v19)
        {
          sub_100002A8C(v19);
        }
      }

      else
      {
        v20 = 0;
      }

      free(v20);
    }

    if (sub_100056C40(a1, v8))
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000573F4(qword_1000EB3F0))
      {
        sub_10005740C();
        v21 = sub_1000571BC();
        if (sub_100057088(v21))
        {
          sub_100057100();
          sub_100001688();
          v29 = _os_log_send_and_compose_impl(v22, v23, v24, v25, v26, v27, 0, v28);
          v30 = v29;
          if (v29)
          {
            sub_100002A8C(v29);
          }
        }

        else
        {
          v30 = 0;
        }

        free(v30);
      }

      goto LABEL_27;
    }

    if (qword_1000EB3F8 != -1)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_1000575E8(qword_1000EB3F0))
    {
      sub_10005740C();
      v31 = sub_100057300();
      if (sub_10005712C(v31))
      {
        sub_100057100();
        sub_1000570F0();
        v40 = sub_100057718(v32, v33, v34, v35, v36, v37, v38, v39);
        v41 = v40;
        if (v40)
        {
          sub_100002A8C(v40);
        }
      }

      else
      {
        v41 = 0;
      }

      free(v41);
    }

    if (v9)
    {
      if ((((v9 & 0xFFFFFFFB) == 2) & v11) == 1)
      {
        sub_100057170();
        if (!v67)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_1000573F4(qword_1000EB3F0))
        {
          sub_10005740C();
          v42 = sub_1000571BC();
          if (sub_100057088(v42))
          {
            sub_100057100();
            sub_100001688();
            v50 = _os_log_send_and_compose_impl(v43, v44, v45, v46, v47, v48, 0, v49);
            v51 = v50;
            if (v50)
            {
              sub_100002A8C(v50);
            }
          }

          else
          {
            v51 = 0;
          }

          free(v51);
        }

        v160 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      v53 = [v7 objectForKeyedSubscript:@"UserPersonaObserverService"];

      if (v53)
      {
        [v7 setObject:0 forKeyedSubscript:@"UserPersonaObserverService"];
        sub_100057170();
        if (!v67)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_10005757C(qword_1000EB3F0))
        {
          sub_10005740C();
          v54 = sub_100057564();
          if (sub_100053958(v54))
          {
            LOWORD(v163[0]) = 0;
            LODWORD(v156) = 2;
            v155 = v163;
            sub_1000018EC();
            v63 = _os_log_send_and_compose_impl(v56, v57, v58, v59, v60, v61, 2, v62);
            v55 = v63;
            if (v63)
            {
              sub_100002A8C(v63);
            }
          }

          else
          {
            v55 = 0;
          }

          free(v55);
        }

        sub_10008EBBC(a1);
      }
    }

    *&v159 = 0;
    sub_100057558();
    sub_100091480();
    v65 = v64;
    v66 = 0;
    sub_100057170();
    if ((v65 & 1) == 0)
    {
      if (!v67)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000573F4(qword_1000EB3F0))
      {
        v163[0] = 0;
        sub_1000011A8(1);
        sub_1000571BC();
        sub_100057498();
        if (a3)
        {
          v79 = a1;
          [v66 code];
          sub_1000576A4();
          sub_100001A64();
          sub_100057098();
          v87 = _os_log_send_and_compose_impl(v80, v81, v82, v83, v84, v85, 0, v86);

          if (v87)
          {
            sub_100002A8C(v87);
          }
        }

        else
        {
          v87 = 0;
        }

        free(v87);
      }

      v160 = 0;
      goto LABEL_73;
    }

    if (!v67)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    v68 = qword_1000EB3F0;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
    {
      sub_10005740C();
      v69 = os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG);
      if (sub_100053930(v69))
      {
        sub_100057100();
        sub_100057098();
        v77 = _os_log_send_and_compose_impl(v70, v71, v72, v73, v74, v75, 2, v76);
        v78 = v77;
        if (v77)
        {
          sub_100002A8C(v77);
        }
      }

      else
      {
        v78 = 0;
      }

      free(v78);
    }

    v88 = [v7 objectForKeyedSubscript:@"MKBUserSessionVolumeDeviceNode"];

    if (!v88)
    {
      v160 = 1;
LABEL_73:

      goto LABEL_41;
    }

    sub_100057170();
    if (!v67)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_1000574F8(qword_1000EB3F0))
    {
      sub_10005740C();
      v89 = sub_100057228();
      v90 = os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT);
      if (sub_100053958(v90))
      {
        LOWORD(v163[0]) = 0;
        sub_10005711C();
        sub_1000570F0();
        v99 = sub_1000574E0(v91, v92, v93, v94, v95, v96, v97, v98);
        v68 = v99;
        if (v99)
        {
          sub_100002A8C(v99);
        }
      }

      else
      {
        v68 = 0;
      }

      free(v68);
    }

    sub_1000576F8();
    v101 = [v100 mountVolumeWithSession:? mountPath:? error:? forPersona:?];
    sub_100057170();
    if (v103)
    {
      if (!v102)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057364(qword_1000EB3F0))
      {
        sub_10005740C();
        v104 = sub_1000571F0();
        if (sub_100053930(v104))
        {
          LOWORD(v163[0]) = 0;
          sub_10005711C();
          sub_100057098();
          v115 = _os_log_send_and_compose_impl(v108, v109, v110, v111, v112, v113, 0, v114);
          v105 = v115;
          if (v115)
          {
            sub_100002A8C(v115);
          }
        }

        else
        {
          v105 = 0;
        }

        free(v105);
      }

      sub_100057170();
      if (!v67)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057364(qword_1000EB3F0))
      {
        sub_10005740C();
        v116 = sub_1000571F0();
        if (sub_100053930(v116))
        {
          LOWORD(v163[0]) = 0;
          sub_10005711C();
          sub_100057098();
          v147 = _os_log_send_and_compose_impl(v140, v141, v142, v143, v144, v145, 0, v146);
          v117 = v147;
          if (v147)
          {
            sub_100002A8C(v147);
          }
        }

        else
        {
          v117 = 0;
        }

        free(v117);
      }

      v148 = sub_100057558();
      sub_1000930E0(v148, v149, a3, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v161, HIDWORD(v161), v162, v163[0], v163[1], v163[2], v163[3], v163[4], v163[5], v163[6], v163[7], v163[8], v163[9], v163[10], v163[11]);
      v127 = v66;
      goto LABEL_124;
    }

    if (!v102)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_100057280(qword_1000EB3F0))
    {
      sub_10005740C();
      v106 = sub_100057394();
      if (sub_100053958(v106))
      {
        v163[0] = 67109120;
        sub_10005711C();
        sub_100001728();
        v125 = _os_log_send_and_compose_impl(v118, v119, v120, v121, v122, v123, 0, v124);
        v107 = v125;
        if (v125)
        {
          sub_100002A8C(v125);
        }
      }

      else
      {
        v107 = 0;
      }

      free(v107);
    }

    sub_100057558();
    v126 = sub_100091E34();
    v127 = v66;

    sub_100057170();
    if (v126)
    {
      if (!v128)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057280(qword_1000EB3F0))
      {
        goto LABEL_123;
      }

      sub_10005740C();
      v129 = sub_10005720C();
      if (sub_10000230C(v129))
      {
        LOWORD(v163[0]) = 0;
        sub_10005711C();
        goto LABEL_115;
      }
    }

    else
    {
      if (!v128)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057280(qword_1000EB3F0))
      {
        goto LABEL_123;
      }

      v163[0] = 0;
      sub_1000011A8(1);
      v130 = sub_10005720C();
      if (sub_10000230C(v130))
      {
        sub_100001A64();
LABEL_115:
        sub_100001728();
        v138 = _os_log_send_and_compose_impl(v131, v132, v133, v134, v135, v136, 0, v137);
        v139 = v138;
        if (v138)
        {
          sub_100002A8C(v138);
        }

        goto LABEL_122;
      }
    }

    v139 = 0;
LABEL_122:
    free(v139);
LABEL_123:

LABEL_124:
    v160 = v101;

    goto LABEL_41;
  }

LABEL_42:

  return a1;
}

uint64_t sub_100093EEC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = v6;
  if (a1)
  {
    if ([v6 count])
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_10005757C(qword_1000EB3F0))
      {
        v32 = 0;
        sub_1000011A8(1);
        v8 = sub_100057564();
        if (sub_100057078(v8))
        {
          v31[0] = 0;
          sub_1000018EC();
          v16 = _os_log_send_and_compose_impl(v9, v10, v11, v12, v13, v14, 2, v15, v31, 2);
          v17 = v16;
          if (v16)
          {
            sub_100002A8C(v16);
          }
        }

        else
        {
          v17 = 0;
        }

        free(v17);
      }

      sub_100057264();
      v19 = v7;
      v20 = [v19 countByEnumeratingWithState:v28 objects:v33 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v30;
        LODWORD(v18) = 1;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            sub_10005743C();
            if (v24 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v25 = sub_100093530(a1, *(v29 + 8 * i), a3);
            v18 = v25 & v18;
          }

          v21 = sub_100057748(v25, v26, v28, v33);
        }

        while (v21);
      }

      else
      {
        v18 = 1;
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void sub_1000940D0()
{
  sub_1000572B4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (v5)
  {
    v8 = *(v5 + 32);
    v9 = [v8 userPersonas];
    v10 = [v9 objectForKeyedSubscript:v7];

    if (!v10)
    {
      sub_1000571E4();
      if (!v26)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000574F8(qword_1000EB3F0))
      {
        sub_10005734C();
        v11 = sub_100057228();
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        if (sub_100053958(v12))
        {
          sub_1000538EC();
          sub_100053914();
          v22 = sub_1000574E0(v14, v15, v16, v17, v18, v19, v20, v21);
          v13 = v22;
          if (v22)
          {
            sub_100002A8C(v22);
          }
        }

        else
        {
          v13 = 0;
        }

        free(v13);
      }

      sub_10008E3EC(v5, v7, v3);
    }

    v23 = *(v5 + 32);
    v24 = [v23 userPersonas];
    v25 = [v24 objectForKeyedSubscript:v7];

    sub_100093EEC(v5, v25, v3);
    sub_1000571E4();
    if (v27)
    {
      if (!v26)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057364(qword_1000EB3F0))
      {
        goto LABEL_26;
      }

      sub_10005737C();
      v28 = sub_1000571F0();
      if (sub_100053930(v28))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (!v26)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057364(qword_1000EB3F0))
      {
        goto LABEL_26;
      }

      sub_10005737C();
      v29 = sub_1000571F0();
      if (sub_100053930(v29))
      {
LABEL_23:
        sub_100053968();
        sub_100057098();
        v38 = _os_log_send_and_compose_impl(v31, v32, v33, v34, v35, v36, 0, v37);
        v30 = v38;
        if (v38)
        {
          sub_100002A8C(v38);
        }

        goto LABEL_25;
      }
    }

    v30 = 0;
LABEL_25:
    free(v30);
LABEL_26:

    sub_100092024(v5, v25, v7, v3, v1);
  }

  sub_100057298();
}

void sub_100094370()
{
  sub_1000572B4();
  v3 = v2;
  v5 = v4;
  v6 = v5;
  if (v3)
  {
    v7 = sub_100098D4C(v5, @"UserPersonaType", 0x3E8);
    if (v7 == 4)
    {
      sub_1000571E4();
      if (!v30)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000573F4(qword_1000EB3F0))
      {
        sub_10005737C();
        v8 = sub_1000571BC();
        if (sub_100057088(v8))
        {
          sub_100057038();
          sub_100001688();
          v16 = _os_log_send_and_compose_impl(v9, v10, v11, v12, v13, v14, 0, v15);
          v17 = v16;
          if (v16)
          {
            sub_100002A8C(v16);
          }
        }

        else
        {
          v17 = 0;
        }

        free(v17);
      }

      goto LABEL_11;
    }

    v18 = v7;
    sub_1000577C0(v7, @"UserPersonaID");
    sub_1000571E4();
    if (!v30)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_1000573F4(qword_1000EB3F0))
    {
      sub_10005740C();
      v19 = sub_1000571BC();
      if (sub_100057088(v19))
      {
        sub_1000576CC();
        sub_1000538EC();
        sub_100001688();
        v28 = _os_log_send_and_compose_impl(v21, v22, v23, v24, v25, v26, 0, v27);
        v20 = v28;
        if (v28)
        {
          sub_100002A8C(v28);
        }
      }

      else
      {
        v20 = 0;
      }

      free(v20);
    }

    v29 = sub_100091E34();
    v0 = 0;
    sub_1000571E4();
    if (v29)
    {
      if (!v30)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000575E8(qword_1000EB3F0))
      {
        sub_10005737C();
        v31 = sub_100057300();
        if (sub_10005712C(v31))
        {
          sub_100001A64();
          sub_1000570B8();
          v40 = sub_100057718(v32, v33, v34, v35, v36, v37, v38, v39);
          if (!v40)
          {
            goto LABEL_37;
          }

          goto LABEL_35;
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (!v30)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000575E8(qword_1000EB3F0))
      {
        sub_10005740C();
        if (!sub_100057300())
        {
          v1 &= ~1u;
        }

        if (v1)
        {
          v88 = &off_1000B8000;
          [v0 code];
          sub_1000576CC();
          sub_1000538EC();
          sub_100053924();
          sub_100057448();
          v40 = _os_log_send_and_compose_impl(v41, v42, v43, v44, v45, v46, v47, v48);

          if (!v40)
          {
LABEL_37:
            free(v40);
            goto LABEL_38;
          }

LABEL_35:
          sub_100002A8C(v40);
          goto LABEL_37;
        }

LABEL_36:
        v40 = 0;
        goto LABEL_37;
      }
    }

LABEL_38:

    if ((v18 & 0xFFFFFFFB) != 2)
    {
      goto LABEL_11;
    }

    sub_1000571E4();
    if (!v30)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_1000574F8(qword_1000EB3F0))
    {
      sub_10005737C();
      v49 = sub_100057228();
      v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
      if (sub_100053958(v50))
      {
        sub_100057038();
        sub_1000570B8();
        v59 = sub_1000574E0(v51, v52, v53, v54, v55, v56, v57, v58);
        v60 = v59;
        if (v59)
        {
          sub_100002A8C(v59);
        }
      }

      else
      {
        v60 = 0;
      }

      free(v60);
    }

    sub_1000576F8();
    if (![v61 isVolumeMountedWithSession:? fsid:?])
    {
      goto LABEL_11;
    }

    sub_1000571E4();
    if (!v30)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_1000574F8(qword_1000EB3F0))
    {
      sub_10005737C();
      v62 = sub_100057228();
      v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
      if (sub_100053958(v63))
      {
        sub_100057038();
        sub_1000570B8();
        v72 = sub_1000574E0(v64, v65, v66, v67, v68, v69, v70, v71);
        v73 = v72;
        if (v72)
        {
          sub_100002A8C(v72);
        }
      }

      else
      {
        v73 = 0;
      }

      free(v73);
    }

    sub_1000576F8();
    [v74 unmountVolumeWithSession:? mountPath:? error:?];
    sub_1000571E4();
    if (v76)
    {
      if (!v75)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057334(qword_1000EB3F0))
      {
        goto LABEL_70;
      }

      sub_10005737C();
      v77 = sub_100057154();
      if (sub_100057078(v77))
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (!v75)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057334(qword_1000EB3F0))
      {
        goto LABEL_70;
      }

      sub_10005737C();
      v78 = sub_100057154();
      if (sub_100057078(v78))
      {
LABEL_66:
        sub_100057038();
        sub_1000018EC();
        v86 = _os_log_send_and_compose_impl(v79, v80, v81, v82, v83, v84, 0, v85);
        v87 = v86;
        if (v86)
        {
          sub_100002A8C(v86);
        }

        goto LABEL_69;
      }
    }

    v87 = 0;
LABEL_69:
    free(v87);
LABEL_70:

LABEL_11:
  }

  sub_100057298();
}

void sub_1000948C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  sub_1000574C4();
  v16 = v15;
  v18 = v17;
  if (v16)
  {
    sub_100057274();
    if (!v66)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    v19 = sub_100057760();
    if (sub_1000573F4(v19))
    {
      sub_1000011A8(1);
      v20 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (sub_10000230C(v20))
      {
        sub_100057188();
        sub_100001688();
        v28 = _os_log_send_and_compose_impl(v21, v22, v23, v24, v25, v26, 0, v27);
        v29 = v28;
        if (v28)
        {
          sub_100002A8C(v28);
        }
      }

      else
      {
        v29 = 0;
      }

      free(v29);
    }

    v30 = *(v16 + 32);
    v31 = [v30 userPersonas];
    v32 = [v31 objectForKeyedSubscript:v18];

    if (v32)
    {
      sub_100057264();
      v43 = v32;
      sub_100057698();
      v45 = [v44 countByEnumeratingWithState:? objects:? count:?];
      if (v45)
      {
        v47 = v45;
        v48 = *a13;
        v46 = 1;
        do
        {
          for (i = 0; i != v47; ++i)
          {
            sub_10005743C();
            if (v50 != v48)
            {
              objc_enumerationMutation(v43);
            }

            sub_100094370();
            v46 &= v51;
          }

          sub_100057698();
          v47 = sub_100057748(v52, v53, v54, v55);
        }

        while (v47);
      }

      else
      {
        v46 = 1;
      }

      sub_100057274();
      if (!v66)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057334(*(v14 + 1008)))
      {
        sub_1000011A8(1);
        v56 = sub_100057154();
        if (sub_100057078(v56))
        {
          sub_1000570C8();
          sub_1000018EC();
          v65 = _os_log_send_and_compose_impl(v58, v59, v60, v61, v62, v63, 0, v64);
          v57 = v65;
          if (v65)
          {
            sub_100002A8C(v65);
          }
        }

        else
        {
          v57 = 0;
        }

        free(v57);
      }

      sub_10008EBBC(v16);
      sub_100057274();
      if (v46)
      {
        if (!v66)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_100057280(*(v14 + 1008)))
        {
          sub_1000011A8(1);
          v67 = sub_10005720C();
          if (sub_10000230C(v67))
          {
            sub_1000570C8();
            sub_100001728();
            v75 = _os_log_send_and_compose_impl(v68, v69, v70, v71, v72, v73, 0, v74);
            v76 = v75;
            if (v75)
            {
              sub_100002A8C(v75);
            }
          }

          else
          {
            v76 = 0;
          }

          free(v76);
        }

        goto LABEL_48;
      }

      if (!v66)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057280(*(v14 + 1008)))
      {
        goto LABEL_48;
      }

      sub_1000011A8(1);
      v77 = sub_10005720C();
      if (sub_10000230C(v77))
      {
        sub_1000570C8();
LABEL_16:
        sub_100001728();
        v41 = _os_log_send_and_compose_impl(v34, v35, v36, v37, v38, v39, 0, v40);
        v42 = v41;
        if (v41)
        {
          sub_100002A8C(v41);
        }

        goto LABEL_47;
      }
    }

    else
    {
      sub_100057274();
      if (!v66)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057280(*(v14 + 1008)))
      {
        goto LABEL_48;
      }

      sub_1000011A8(1);
      v33 = sub_10005720C();
      if (sub_10000230C(v33))
      {
        sub_100057188();
        goto LABEL_16;
      }
    }

    v42 = 0;
LABEL_47:
    free(v42);
LABEL_48:
  }

  sub_1000574A8();
}

void sub_100094CD8(id a1, void *a2)
{
  v6 = a2;
  if (a1)
  {
    sub_100057170();
    if (v6)
    {
      if (!v7)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      v8 = sub_100057760();
      if (sub_1000573F4(v8))
      {
        v53 = 0;
        sub_1000011A8(1);
        sub_1000571BC();
        sub_100057498();
        if (v2)
        {
          v9 = a1;
          *v54 = 134217984;
          *&v54[4] = [v6 count];
          sub_1000571B0();
          sub_1000018EC();
          v17 = _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, 0, v16, v54);

          if (v17)
          {
            sub_100002A8C(v17);
          }
        }

        else
        {
          v17 = 0;
        }

        free(v17);
      }

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      a1 = v6;
      v28 = [a1 countByEnumeratingWithState:&v49 objects:v55 count:16];
      if (v28)
      {
        v29 = v28;
        v48 = v6;
        v30 = 0;
        v31 = *v50;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v50 != v31)
            {
              objc_enumerationMutation(a1);
            }

            v33 = *(*(&v49 + 1) + 8 * i);
            sub_100057170();
            if (!v7)
            {
              dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
            }

            if (sub_1000575D0(*(v3 + 1008)))
            {
              v53 = 0;
              v34 = sub_1000011A8(1);
              if (sub_100057790())
              {
                v35 = v34;
              }

              else
              {
                v35 = v34 & 0xFFFFFFFE;
              }

              if (v35)
              {
                *v54 = 67109378;
                *&v54[4] = v30;
                *&v54[8] = 2112;
                *&v54[10] = v33;
                LODWORD(v47) = 18;
                sub_100053924();
                sub_100057448();
                v43 = _os_log_send_and_compose_impl(v36, v37, v38, v39, v40, v41, v42, "%d PersonaSession is %@", v54, v47);
                v44 = v43;
                if (v43)
                {
                  sub_100002A8C(v43);
                }
              }

              else
              {
                v44 = 0;
              }

              free(v44);
            }

            ++v30;
          }

          v29 = sub_100057660(v45, v46, &v49, v55);
        }

        while (v29);
        v6 = v48;
      }
    }

    else
    {
      if (!v7)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000573F4(qword_1000EB3F0))
      {
        *v54 = 0;
        sub_1000011A8(1);
        v18 = sub_1000571BC();
        if (sub_100057088(v18))
        {
          LOWORD(v53) = 0;
          sub_100001688();
          v26 = _os_log_send_and_compose_impl(v19, v20, v21, v22, v23, v24, 0, v25, &v53, 2);
          v27 = v26;
          if (v26)
          {
            sub_100002A8C(v26);
          }
        }

        else
        {
          v27 = 0;
        }

        free(v27);
      }
    }
  }
}

uint64_t sub_10009501C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 32) userPersonas];
  v3 = [v2 objectForKeyedSubscript:@"FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF"];

  if (v3)
  {
    if ([v3 count] <= 1)
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000573F4(qword_1000EB3F0))
      {
        sub_1000572D0();
        sub_1000571BC();
        sub_100057498();
        if (v1)
        {
          v4 = v2;
          [v3 count];
          sub_1000538EC();
          sub_1000018EC();
          v12 = _os_log_send_and_compose_impl(v5, v6, v7, v8, v9, v10, 0, v11);

          if (v12)
          {
            sub_100002A8C(v12);
          }
        }

        else
        {
          v12 = 0;
        }

        free(v12);
      }

      v13 = 1;
      goto LABEL_46;
    }

    v14 = [v3 objectAtIndexedSubscript:0];
    v2 = [v14 objectForKeyedSubscript:@"UserPersonaType"];

    v15 = [v3 objectAtIndexedSubscript:1];
    v16 = [v15 objectForKeyedSubscript:@"UserPersonaType"];

    v17 = &MGCopyAnswer_ptr;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v17 = [v2 unsignedIntValue];
      v18 = [v16 unsignedIntValue];
      if (v17 == 3 || v18 == 3)
      {
        if (v17 == 5 || v18 == 5)
        {
          v13 = 0;
LABEL_45:

LABEL_46:
          goto LABEL_47;
        }

        if (qword_1000EB3F8 != -1)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (!sub_100057334(qword_1000EB3F0))
        {
LABEL_44:

          v13 = 1;
          goto LABEL_45;
        }

        sub_1000572D0();
        v33 = sub_100057154();
        if (sub_100057078(v33))
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (qword_1000EB3F8 != -1)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (!sub_100057334(qword_1000EB3F0))
        {
          goto LABEL_44;
        }

        sub_1000572D0();
        v32 = sub_100057154();
        if (sub_100057078(v32))
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057334(qword_1000EB3F0))
      {
        goto LABEL_44;
      }

      sub_1000572D0();
      v21 = sub_100057154();
      if (sub_100057078(v21))
      {
LABEL_28:
        sub_1000538D4();
        sub_100001800();
        v30 = sub_1000573C4(v22, v23, v24, v25, v26, v27, v28, v29);
        v31 = v30;
        if (v30)
        {
          sub_100002A8C(v30);
        }

        goto LABEL_43;
      }
    }

    v31 = 0;
LABEL_43:
    free(v31);
    goto LABEL_44;
  }

  v13 = 1;
LABEL_47:

  return v13;
}

void sub_1000953B8(uint64_t a1)
{
  if (a1)
  {
    sub_100057274();
    if (!v21)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    v5 = sub_100057760();
    if (sub_1000573F4(v5))
    {
      sub_1000572D0();
      v6 = sub_1000571BC();
      if (sub_100057088(v6))
      {
        sub_100053968();
        sub_100001800();
        v16 = sub_100057470(v8, v9, v10, v11, v12, v13, v14, v15);
        v7 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v7 = 0;
      }

      free(v7);
    }

    v17 = [*(a1 + 32) userPersonas];
    v18 = [v17 objectForKeyedSubscript:@"FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF"];

    if (!v18)
    {
      v18 = +[NSMutableArray array];
      v19 = [*(a1 + 32) userPersonas];
      [v19 setObject:v18 forKeyedSubscript:@"FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF"];
    }

    v20 = sub_10008E7D0(a1, v18, 3, @"FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF", 0, 1);
    sub_100057274();
    if (v22)
    {
      if (!v21)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057334(*(v3 + 1008)))
      {
        sub_1000572D0();
        v24 = sub_100057154();
        if (sub_100057078(v24))
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (!v21)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057334(*(v3 + 1008)))
      {
        sub_1000572D0();
        v23 = sub_100057154();
        if (sub_100057078(v23))
        {
LABEL_23:
          sub_100053968();
          sub_100001800();
          v34 = sub_1000573C4(v26, v27, v28, v29, v30, v31, v32, v33);
          v25 = v34;
          if (v34)
          {
            sub_100002A8C(v34);
          }

          goto LABEL_25;
        }

LABEL_22:
        v25 = 0;
LABEL_25:
        free(v25);
      }
    }

    v35 = sub_10008E7D0(a1, v18, 5, @"FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF", 0, 1);

    sub_100057274();
    if (v35)
    {
      if (!v36)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057280(*(v3 + 1008)))
      {
        goto LABEL_40;
      }

      sub_1000572D0();
      v38 = sub_100057394();
      if (sub_100057078(v38))
      {
LABEL_37:
        sub_100053968();
        sub_100001728();
        v47 = _os_log_send_and_compose_impl(v40, v41, v42, v43, v44, v45, 0, v46);
        v39 = v47;
        if (v47)
        {
          sub_100002A8C(v47);
        }

        goto LABEL_39;
      }
    }

    else
    {
      if (!v36)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057280(*(v3 + 1008)))
      {
        goto LABEL_40;
      }

      sub_1000572D0();
      v37 = sub_100057394();
      if (sub_100057078(v37))
      {
        goto LABEL_37;
      }
    }

    v39 = 0;
LABEL_39:
    free(v39);
LABEL_40:

    sub_10008EBBC(a1);
  }
}

void sub_100095708(id *a1)
{
  if (a1)
  {
    v2 = [a1[4] userPersonas];
    v3 = [v2 objectForKeyedSubscript:@"FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF"];

    if (v3)
    {
      v15 = sub_100057558();
      if (sub_100093EEC(v15, v16, 0))
      {
LABEL_17:

        return;
      }

      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_1000573F4(qword_1000EB3F0))
      {
LABEL_16:

        goto LABEL_17;
      }

      sub_1000572D0();
      v17 = sub_1000571BC();
      if (sub_100057088(v17))
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_1000573F4(qword_1000EB3F0))
      {
        goto LABEL_16;
      }

      sub_1000572D0();
      v4 = sub_1000571BC();
      if (sub_100057088(v4))
      {
LABEL_7:
        sub_100053968();
        sub_100001800();
        v13 = sub_100057470(v5, v6, v7, v8, v9, v10, v11, v12);
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }

        goto LABEL_15;
      }
    }

    v14 = 0;
LABEL_15:
    free(v14);
    goto LABEL_16;
  }
}

void sub_100095870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  sub_1000574C4();
  if (v13)
  {
    v15 = v13;
    v16 = [v14 objectForKeyedSubscript:@"MKBUserSessionHomeDir"];
    if (v16)
    {
      if (qword_1000EB3E8 != -1)
      {
        dispatch_once(&qword_1000EB3E8, &stru_1000DD860);
      }

      v17 = qword_1000EB3E0;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        sub_1000011A8(0);
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
        if (sub_10000230C(v18))
        {
          sub_100057188();
          sub_100001688();
          v26 = _os_log_send_and_compose_impl(v19, v20, v21, v22, v23, v24, 1, v25);
          v27 = v26;
          if (v26)
          {
            sub_100002A8C(v26);
          }
        }

        else
        {
          v27 = 0;
        }

        free(v27);
      }

      v40 = *(v15 + 16);
      v41 = sub_1000024A8(v40);
      sub_1000576F8();
      v28 = [v42 pidsUsingVolumeAtPath:? error:?];

      if (v28)
      {
        if (qword_1000EB3E8 != -1)
        {
          dispatch_once(&qword_1000EB3E8, &stru_1000DD860);
        }

        v43 = qword_1000EB3E0;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          sub_1000011A8(0);
          v44 = sub_10005717C();
          if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            LODWORD(v41) = v41 & 0xFFFFFFFE;
          }

          if (v41)
          {
            v45 = v43;
            [v28 count];
            sub_100057188();
            sub_100057098();
            v53 = _os_log_send_and_compose_impl(v46, v47, v48, v49, v50, v51, 1, v52);

            if (v53)
            {
              sub_100002A8C(v53);
            }
          }

          else
          {
            v53 = 0;
          }

          free(v53);
        }

        v65 = sub_1000024A8(*(v15 + 16));
        v66 = [v65 currentPID];

        sub_100057264();
        v28 = v28;
        sub_100057698();
        v68 = [v67 countByEnumeratingWithState:? objects:? count:?];
        if (v68)
        {
          v69 = v68;
          v70 = *a13;
          do
          {
            for (i = 0; i != v69; i = i + 1)
            {
              sub_10005743C();
              if (v72 != v70)
              {
                objc_enumerationMutation(v28);
              }

              v73 = [*(a12 + 8 * i) intValue];
              if ((v73 & 0x80000000) == 0)
              {
                v74 = v73;
                if (v73 != v66)
                {
                  v75 = sub_1000024A8(*(v15 + 16));
                  [v75 terminatePID:v74 withReasonNamespace:26 reasonCode:4008636142 reasonString:@"This process has files open on a profile volume that is being uninstalled" error:0];
                }
              }
            }

            sub_100057698();
            v69 = sub_100057660(v76, v77, v78, v79);
          }

          while (v69);
        }
      }

      else
      {
        if (qword_1000EB3E8 != -1)
        {
          dispatch_once(&qword_1000EB3E8, &stru_1000DD860);
        }

        v54 = qword_1000EB3E0;
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          sub_1000011A8(0);
          v55 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
          if (sub_10000230C(v55))
          {
            sub_1000570C8();
            sub_100001728();
            v63 = _os_log_send_and_compose_impl(v56, v57, v58, v59, v60, v61, 16, v62);
            v64 = v63;
            if (v63)
            {
              sub_100002A8C(v63);
            }
          }

          else
          {
            v64 = 0;
          }

          free(v64);
        }
      }
    }

    else
    {
      if (qword_1000EB3E8 != -1)
      {
        dispatch_once(&qword_1000EB3E8, &stru_1000DD860);
      }

      v28 = qword_1000EB3E0;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1000011A8(0);
        v29 = sub_1000571D8();
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
        if (sub_100057088(v30))
        {
          sub_1000570C8();
          sub_100001688();
          v38 = _os_log_send_and_compose_impl(v31, v32, v33, v34, v35, v36, 16, v37);
          v39 = v38;
          if (v38)
          {
            sub_100002A8C(v38);
          }
        }

        else
        {
          v39 = 0;
        }

        free(v39);
      }
    }
  }

  sub_1000574A8();
}

void sub_100095D30(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100057A04;
    v3[3] = &unk_1000DD8C0;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_sync(v2, v3);
  }
}

uint64_t sub_100095DAC(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 12) = a2;
  }

  return result;
}

void sub_100095DB8(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1000013A0(*(a1 + 24));
    [v2 closeFileWithDescriptor:*(a1 + 12)];

    *(a1 + 12) = -1;
    v3 = (*(a1 + 16) - 1);
    if (v3 >= 0)
    {
      do
      {
        v4 = v3;
        v5 = [NSString stringWithFormat:@"%s.%d", *(a1 + 40), v3];
        v6 = [NSString stringWithFormat:@"%s.%d", *(a1 + 40), (v4 + 1)];
        v7 = sub_1000013A0(*(a1 + 24));
        [v7 renameFileFromPath:v5 toPath:v6 error:0];

        v3 = (v4 - 1);
      }

      while (v4);
    }
  }
}

uint64_t sub_100095EB0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 40) = a2;
  }

  return result;
}

uint64_t sub_100095EBC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 48) = a2;
  }

  return result;
}

uint64_t sub_100095EC8(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

BOOL sub_100095ED4(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = [NSString stringWithFormat:@"%s.0", *(a1 + 40)];
  v6 = *a2;
  if (*a2)
  {
    v6 = v6[3];
  }

  v7 = v6;
  v8 = sub_1000013A0(v7);
  v9 = [v8 openFileForAppendingAtPath:v5 error:0];
  if (*a2)
  {
    *(*a2 + 12) = v9;
  }

  v10 = *a2;
  *a3 = *a2;
  return v10 == 0;
}

id sub_100096040(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 24, 1);
  }

  return result;
}

void sub_100096054(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_atomic_copy(a1, newValue, newValue, 24);
  }
}

uint64_t sub_100096068(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_100096080(uint64_t result)
{
  if (result)
  {
    return *(result + 20);
  }

  return result;
}

uint64_t sub_10009608C(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

UMDPersonaManifestPersona *sub_100096310(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_self();
  v4 = objc_alloc_init(UMDPersonaManifestPersona);
  v5 = sub_100098D4C(v3, @"UserPersonaType", 0xFFFFFFFFLL);
  if (v4)
  {
    v4->_type = v5;
  }

  if (*__error() == 2)
  {
    if (qword_1000EB458 != -1)
    {
      dispatch_once(&qword_1000EB458, &stru_1000DDD50);
    }

    v6 = qword_1000EB450;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v62 = 0;
      v7 = sub_1000011A8(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        v61 = 0;
        v9 = _os_log_send_and_compose_impl(v8, &v62, 0, 0, &_mh_execute_header, v6, 16, "Failed to parse persona manifest persona: persona type is invalid", &v61, 2);
        v10 = v9;
        if (v9)
        {
          sub_100002A8C(v9);
        }
      }

      else
      {
        v10 = 0;
      }

      free(v10);
    }

    v11 = 0;
  }

  else
  {
    sub_1000990F0(v3, @"UserPersonaUniqueString");
    objc_claimAutoreleasedReturnValue();
    v13 = sub_10006E24C();
    sub_1000897C8(v13, v14);

    v16 = sub_10006E2F0(v15, @"UserPersonaID");
    if (v4)
    {
      v4->_kernelID = v16;
      v17 = sub_100098ECC(v3, @"UserPersonaNickName");
      v18 = sub_100001A74();
      objc_setProperty_nonatomic_copy(v18, v19, v20, 40);
    }

    else
    {
      v17 = sub_100098ECC(v3, @"UserPersonaNickName");
    }

    v21 = sub_100098F4C(v3, @"UserPersonaBundleIDS");
    if (v4)
    {
      v22 = sub_100001A74();
      objc_setProperty_nonatomic_copy(v22, v23, v24, 48);
    }

    v25 = sub_100098F4C(v3, @"UserPersonaObserverService");
    v26 = v25;
    if (v4)
    {
      v27 = sub_100001A74();
      objc_setProperty_nonatomic_copy(v27, v28, v29, 56);

      v4->_isDeleting = sub_100098C4C(v3, @"UserPersonaOnDeletion");
      v4->_isDisabled = sub_100098C4C(v3, @"UserPersonaDisabled");
      v30 = sub_100098ECC(v3, @"UserPersonaDisablementReason");
      v31 = sub_100001A74();
      objc_setProperty_nonatomic_copy(v31, v32, v33, 64);
    }

    else
    {

      sub_100098C4C(v3, @"UserPersonaOnDeletion");
      sub_100098C4C(v3, @"UserPersonaDisabled");
      v30 = sub_100098ECC(v3, @"UserPersonaDisablementReason");
    }

    v34 = sub_100098ECC(v3, @"UserPersonaDisplayName");
    if (v4)
    {
      v35 = sub_100001A74();
      objc_setProperty_nonatomic_copy(v35, v36, v37, 72);
    }

    sub_100099194(v3, @"MKBUserSessionCreateTimeStamp");
    objc_claimAutoreleasedReturnValue();
    v38 = sub_10006E24C();
    sub_100089828(v38, v39);

    sub_100099194(v3, @"MKBUserSessionLoginTimeStamp");
    objc_claimAutoreleasedReturnValue();
    v40 = sub_10006E24C();
    sub_100089838(v40, v41);

    sub_1000990F0(v3, @"MKBUserSessionVolumeUUID");
    objc_claimAutoreleasedReturnValue();
    v42 = sub_10006E24C();
    sub_100089848(v42, v43);

    sub_1000990F0(v3, @"MKBUserSessionUUID");
    objc_claimAutoreleasedReturnValue();
    v44 = sub_10006E24C();
    sub_100089858(v44, v45);

    v46 = sub_100098ECC(v3, @"MKBUserSessionHomeDir");
    if (v4)
    {
      v47 = sub_100001A74();
      objc_setProperty_nonatomic_copy(v47, v48, v49, 112);
    }

    v50 = sub_100098ECC(v3, @"MKBUserSessionVolumeDeviceNode");
    if (v4)
    {
      v51 = sub_100001A74();
      objc_setProperty_nonatomic_copy(v51, v52, v53, 120);
    }

    sub_1000990F0(v3, @"UserPersonaUserODUUID");
    objc_claimAutoreleasedReturnValue();
    v54 = sub_10006E24C();
    sub_100089894(v54, v55);

    v57 = sub_10006E2F0(v56, @"UserPersonaUserUID");
    if (v4)
    {
      v4->_uid = v57;
      v4->_gid = sub_10006E2F0(v57, @"UserPersonaUserGID");
    }

    else
    {
      sub_10006E2F0(v57, @"UserPersonaUserGID");
    }

    sub_100099214(v3, @"UserPersonaVolumeKey");
    objc_claimAutoreleasedReturnValue();
    v58 = sub_10006E24C();
    sub_1000898A4(v58, v59);

    v60 = sub_100098E4C(v3, @"UsePersonaGenerationID", 0);
    if (v4)
    {
      v4->_generation = v60;
    }

    v11 = v4;
  }

  return v11;
}

void sub_10009677C(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 40);
  }
}

void sub_100096790(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 48);
  }
}

void sub_1000967A4(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 56);
  }
}

uint64_t sub_1000967B8(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

void sub_1000967C4(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 64);
  }
}

void sub_1000967D8(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 72);
  }
}

void sub_1000967EC(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 112);
  }
}

void sub_100096800(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 120);
  }
}

uint64_t sub_100096814(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 20) = a2;
  }

  return result;
}

uint64_t sub_100096820(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

uint64_t sub_10009682C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 144) = a2;
  }

  return result;
}

id sub_100096838(uint64_t a1)
{
  if (a1)
  {
    v2 = +[NSMutableDictionary dictionary];
    v3 = [NSNumber numberWithUnsignedInt:*(a1 + 12)];
    sub_10006E27C();

    v4 = [*(a1 + 32) UUIDString];
    sub_10006E27C();

    if (*(a1 + 16))
    {
      v5 = [NSNumber numberWithUnsignedInt:?];
      sub_10006E27C();
    }

    [v2 setObject:*(a1 + 40) forKeyedSubscript:@"UserPersonaNickName"];
    v6 = *(a1 + 48);
    v7 = [v6 allObjects];
    v8 = [v7 sortedArrayUsingSelector:"compare:"];

    [v2 setObject:v8 forKeyedSubscript:@"UserPersonaBundleIDS"];
    v9 = *(a1 + 56);
    v10 = [v9 allObjects];
    v11 = [v10 sortedArrayUsingSelector:"compare:"];

    [v2 setObject:v11 forKeyedSubscript:@"UserPersonaObserverService"];
    if (*(a1 + 8) == 1)
    {
      v12 = [NSNumber numberWithBool:1];
      sub_10006E27C();
    }

    if (*(a1 + 9) == 1)
    {
      v13 = [NSNumber numberWithBool:1];
      sub_10006E27C();
    }

    [v2 setObject:*(a1 + 64) forKeyedSubscript:@"UserPersonaDisablementReason"];
    [v2 setObject:*(a1 + 72) forKeyedSubscript:@"UserPersonaDisplayName"];
    [v2 setObject:*(a1 + 80) forKeyedSubscript:@"MKBUserSessionCreateTimeStamp"];
    [v2 setObject:*(a1 + 88) forKeyedSubscript:@"MKBUserSessionLoginTimeStamp"];
    v14 = [*(a1 + 96) UUIDString];
    sub_10006E27C();

    v15 = [*(a1 + 104) UUIDString];
    sub_10006E27C();

    [v2 setObject:*(a1 + 112) forKeyedSubscript:@"MKBUserSessionHomeDir"];
    [v2 setObject:*(a1 + 120) forKeyedSubscript:@"MKBUserSessionVolumeDeviceNode"];
    v16 = [*(a1 + 128) UUIDString];
    sub_10006E27C();

    if (*(a1 + 20))
    {
      v17 = [NSNumber numberWithUnsignedInt:?];
      sub_10006E27C();
    }

    if (*(a1 + 24))
    {
      v18 = [NSNumber numberWithUnsignedInt:?];
      sub_10006E27C();
    }

    [v2 setObject:*(a1 + 136) forKeyedSubscript:@"UserPersonaVolumeKey"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100096B5C(void *a1, char *a2, char *a3)
{
  v189 = a3;
  v12 = a1;
  if (a2)
  {
    v13 = *(a2 + 3);
    if (v12)
    {
LABEL_3:
      v14 = v12[3];
      goto LABEL_4;
    }
  }

  else
  {
    v13 = 0;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_4:
  v194 = v12;
  v191 = v14;
  v192 = v13;
  if (v13 != v14)
  {
    v190 = 0;
    v193 = 0;
    *&v188[4] = 0;
    *&v188[12] = 0;
    v7 = 0;
    *v187 = 0;
    memset(&v184[4], 0, 24);
    v185 = 0uLL;
    sub_10006E2D8();
    sub_100001738();
    sub_10006E1FC();
    v18 = 0;
    goto LABEL_28;
  }

  if (!a2 || (v15 = *(a2 + 4)) == 0)
  {
    if (!v194 || (v19 = v194[4]) == 0)
    {
      v172 = 0;
      v168 = 0;
      v190 = 0x100000000;
      goto LABEL_19;
    }

    v168 = v19;
    if (a2)
    {
      v3 = *(a2 + 4);
    }

    else
    {
      v3 = 0;
    }

    v172 = 0;
    HIDWORD(v190) = 1;
    v16 = v194;
    goto LABEL_15;
  }

  v172 = v15;
  v3 = *(a2 + 4);
  HIDWORD(v190) = 0;
  v16 = v194;
  if (v194)
  {
LABEL_15:
    v20 = v16[4];
    goto LABEL_16;
  }

  v20 = 0;
LABEL_16:
  v170 = v20;
  LODWORD(v190) = 1;
  if (([v3 isEqual:?] & 1) == 0)
  {
    v171 = v3;
LABEL_27:
    v193 = 0;
    *&v188[4] = 0;
    *&v188[12] = 0;
    v7 = 0;
    *v187 = 0;
    memset(&v184[4], 0, 24);
    v185 = 0uLL;
    sub_10006E2D8();
    sub_100001738();
    sub_10006E1FC();
    v18 = 0;
    goto LABEL_28;
  }

LABEL_19:
  if (a2)
  {
    v21 = *(a2 + 4);
    if (v194)
    {
LABEL_21:
      v22 = *(v194 + 4);
      goto LABEL_22;
    }
  }

  else
  {
    v21 = 0;
    if (v194)
    {
      goto LABEL_21;
    }
  }

  v22 = 0;
LABEL_22:
  v171 = v3;
  if (v21 != v22)
  {
    goto LABEL_27;
  }

  if (!a2)
  {
    if (!v194)
    {
      sub_10006E294();
      sub_10006E25C();
      sub_10006E2A4();
      sub_100001698();
      goto LABEL_208;
    }

    v56 = v194[5];
    v167 = 0;
    sub_100001698();
    v161 = v57;
    if (!v57)
    {
      *&v184[24] = 0;
      v161 = 0;
      goto LABEL_180;
    }

    v24 = 0;
    goto LABEL_119;
  }

  v23 = *(a2 + 5);
  if (!v23)
  {
    if (!v194)
    {
      v164 = *(a2 + 6);
      if (v164)
      {
        v166 = *(a2 + 6);
        sub_10006E294();
        v37 = 0;
        *&v188[12] = 0;
        *&v188[16] = 1;
        goto LABEL_137;
      }

      sub_10006E294();
      sub_100001698();
LABEL_190:
      v160 = *(a2 + 7);
      if (v160)
      {
        v163 = *(a2 + 7);
        sub_10006E25C();
        *&v184[16] = 0;
        v48 = 0;
        *&v188[12] = 1;
        goto LABEL_153;
      }

      sub_10006E25C();
      sub_10006E2C0();
LABEL_198:
      *&v184[12] = 0;
      v160 = 0;
      sub_1000018FC();
      if (v63)
      {
        v7 = 1;
        v157 = 0;
        sub_10006E2CC();
        v18 = 0;
        memset(v187, 0, sizeof(v187));
        *&v188[8] = 0;
        *(&v185 + 1) = 0x100000000;
        *&v184[8] = 0;
        *v184 = 0;
        *v188 = 0;
        *&v185 = 0;
        v14 = 0;
        v182 = 0uLL;
        v183 = 0;
        v5 = 0;
        LODWORD(v3) = 0;
        v9 = 0;
        v181 = 0;
        v6 = 0;
        v186 = 0;
        v10 = 0;
        LODWORD(v4) = 0;
        v17 = 0;
        goto LABEL_28;
      }

      v157 = 0;
      sub_10006E2CC();
      goto LABEL_205;
    }

    v26 = v194[5];
    if (!v26)
    {
      v3 = a2 + 48;
      v33 = *(a2 + 6);
      v161 = 0;
      *&v184[24] = 0;
      if (v33)
      {
        v164 = v33;
        sub_100001698();
        v167 = v34;
        *&v188[12] = 0;
LABEL_134:
        v30 = *v3;
LABEL_135:
        v31 = v194;
LABEL_136:
        v166 = v30;
        v37 = v31[6];
        goto LABEL_137;
      }

      sub_100001698();
      v167 = v35;
      v32 = v194;
LABEL_132:
      v36 = v32[6];
      if (!v36)
      {
        v3 = a2 + 56;
        v43 = *(a2 + 7);
        sub_10006E2B4();
        *&v188[12] = v46;
        v158 = 0;
        *&v184[20] = 0;
        if (v44)
        {
          v160 = v44;
          v164 = v45;
          *&v184[16] = 0;
LABEL_150:
          v39 = *v3;
LABEL_151:
          v40 = v194;
LABEL_152:
          v163 = v39;
          v48 = v40[7];
          goto LABEL_153;
        }

        v164 = v45;
        v42 = v194;
LABEL_148:
        v47 = v42[7];
        if (!v47)
        {
          v160 = 0;
          v157 = 0;
          v49 = a2[8];
          *&v184[12] = 0;
          *&v184[16] = 1;
          v50 = v194;
          goto LABEL_160;
        }

        v157 = v47;
        v160 = 0;
        v3 = a2 + 56;
        sub_10006E2CC();
        goto LABEL_150;
      }

      v158 = v36;
      v164 = 0;
      v3 = a2 + 48;
      sub_10006E2C0();
      goto LABEL_134;
    }

    v161 = v26;
    v27 = *(a2 + 5);
    v167 = 0;
    sub_100001698();
LABEL_119:
    v25 = v194;
LABEL_120:
    v169 = v24;
    v28 = v25[5];
    goto LABEL_121;
  }

  v167 = v23;
  v24 = *(a2 + 5);
  v25 = v194;
  *&v188[16] = 0;
  if (v194)
  {
    goto LABEL_120;
  }

  v169 = v24;
  v28 = 0;
LABEL_121:
  v165 = v28;
  if (![v169 isEqual:?])
  {
    v7 = 0;
    memset(v187, 0, sizeof(v187));
    *v188 = 0uLL;
    v183 = 0;
    memset(v184, 0, 24);
    v185 = 0uLL;
    v14 = 0;
    v182 = 0uLL;
    v5 = 0;
    LODWORD(v3) = 0;
    v9 = 0;
    v6 = 0;
    v181 = 0;
    v186 = 0;
    sub_10006E23C();
    sub_1000018FC();
    *&v184[24] = 1;
    goto LABEL_28;
  }

  if (!a2)
  {
    *&v184[24] = 1;
    if (!v194)
    {
      sub_10006E25C();
      sub_10006E2A4();
LABEL_208:
      sub_10006E2C0();
      goto LABEL_209;
    }

LABEL_180:
    v58 = v194[6];
    v164 = 0;
    sub_10006E2C0();
    v158 = v59;
    if (!v59)
    {
      *&v184[20] = 0;
      v158 = 0;
LABEL_185:
      v60 = v194[7];
      v160 = 0;
      sub_10006E2CC();
      v157 = v61;
      if (!v61)
      {
        *&v184[12] = 0;
        v157 = 0;
LABEL_193:
        if ((v194[1] & 1) == 0 && (*(v194 + 9) & 1) == 0)
        {
          goto LABEL_210;
        }

        goto LABEL_195;
      }

      v39 = 0;
      goto LABEL_151;
    }

    v30 = 0;
    goto LABEL_135;
  }

  v29 = *(a2 + 6);
  if (!v29)
  {
    *&v184[24] = 1;
    v32 = v194;
    if (!v194)
    {
      goto LABEL_190;
    }

    goto LABEL_132;
  }

  v164 = v29;
  v30 = *(a2 + 6);
  *&v188[12] = 0;
  *&v184[24] = 1;
  v31 = v194;
  if (v194)
  {
    goto LABEL_136;
  }

  v166 = v30;
  v37 = 0;
LABEL_137:
  v162 = v37;
  if (![v166 isEqual:?])
  {
    v7 = 0;
    *&v184[12] = 0;
    sub_10006E19C();
    sub_10006E23C();
    sub_1000018FC();
    HIDWORD(v185) = v41;
    v186 = 0;
    *&v184[20] = 1;
    goto LABEL_28;
  }

  if (!a2)
  {
    *&v184[20] = 1;
    if (v194)
    {
      goto LABEL_185;
    }

    sub_10006E2A4();
LABEL_209:
    sub_10006E2CC();
    goto LABEL_210;
  }

  v38 = *(a2 + 7);
  if (!v38)
  {
    *&v184[20] = 1;
    v42 = v194;
    if (!v194)
    {
      goto LABEL_198;
    }

    goto LABEL_148;
  }

  v160 = v38;
  v39 = *(a2 + 7);
  *&v184[16] = 0;
  *&v184[20] = 1;
  v40 = v194;
  if (v194)
  {
    goto LABEL_152;
  }

  v163 = v39;
  v48 = 0;
LABEL_153:
  v159 = v48;
  if (![v163 isEqual:?])
  {
    sub_10006E19C();
    v186 = 0;
    sub_10006E23C();
    sub_1000018FC();
LABEL_158:
    HIDWORD(v185) = v51;
    v7 = 1;
    *&v184[12] = 1;
    goto LABEL_28;
  }

  if (!a2)
  {
    *&v184[12] = 1;
    if (v194)
    {
      goto LABEL_193;
    }

LABEL_210:
    if (!v194 || (v66 = v194[8]) == 0)
    {
      v180 = 0;
      v176 = 0;
      *&v188[4] = 0;
      *&v188[8] = 1;
      goto LABEL_220;
    }

    v176 = v66;
    if (a2)
    {
      v67 = *(a2 + 8);
    }

    sub_10006E2B4();
    *&v188[8] = v68;
    v54 = v194;
    goto LABEL_215;
  }

  v49 = a2[8];
  v50 = v194;
  if (!v194)
  {
    sub_1000018FC();
    if (v64)
    {
      sub_10006E19C();
      v186 = 0;
      v18 = sub_10000231C();
      goto LABEL_158;
    }

    *&v184[12] = 1;
LABEL_205:
    if ((a2[9] & 1) == 0)
    {
      goto LABEL_162;
    }

    sub_10006E19C();
    v186 = 0;
    v18 = sub_10000231C();
LABEL_196:
    v193 = v62;
    HIDWORD(v185) = v62;
    v7 = 1;
    goto LABEL_28;
  }

  *&v184[12] = 1;
LABEL_160:
  if ((v49 & 1) != *(v50 + 8) || a2[9] != *(v50 + 9))
  {
LABEL_195:
    sub_10006E19C();
    v186 = 0;
    v18 = sub_10006E224();
    goto LABEL_196;
  }

LABEL_162:
  v52 = *(a2 + 8);
  if (!v52)
  {
    goto LABEL_210;
  }

  v180 = v52;
  v53 = *(a2 + 8);
  v54 = v194;
  *&v188[8] = 0;
  if (v194)
  {
    v55 = v180;
LABEL_215:
    v156 = v53;
    v180 = v55;
    v65 = v54[8];
    goto LABEL_216;
  }

  v156 = v53;
  v65 = 0;
LABEL_216:
  v154 = v65;
  if (([v156 isEqual:?] & 1) == 0)
  {
    v193 = 1;
    *(&v185 + 4) = 0;
    *&v184[4] = 0;
    sub_10006E2D8();
    LODWORD(v185) = 0;
    sub_100001738();
    LODWORD(v3) = 0;
    *(&v182 + 4) = 0;
    v18 = sub_10006E16C();
    *&v188[4] = 1;
    goto LABEL_28;
  }

  *&v188[4] = 1;
LABEL_220:
  if (a2 && (v69 = *(a2 + 9)) != 0)
  {
    v179 = v69;
    v70 = *(a2 + 9);
    v71 = v194;
    *&v184[8] = 0;
    if (!v194)
    {
      v155 = v70;
      v76 = 0;
      goto LABEL_230;
    }

    v72 = v179;
  }

  else
  {
    if (!v194 || (v73 = v194[9]) == 0)
    {
      v179 = 0;
      v175 = 0;
      *&v184[4] = 0;
      *&v184[8] = 1;
      goto LABEL_234;
    }

    v175 = v73;
    if (a2)
    {
      v74 = *(a2 + 9);
    }

    sub_10006E2B4();
    *&v184[8] = v75;
    v71 = v194;
  }

  v155 = v70;
  v179 = v72;
  v76 = v71[9];
LABEL_230:
  v152 = v76;
  if (([v155 isEqual:?] & 1) == 0)
  {
    v193 = 1;
    *&v185 = 0;
    sub_10006E2D8();
    sub_100001738();
    LODWORD(v3) = 0;
    *(&v182 + 4) = 0;
    v18 = sub_10006E16C();
    DWORD2(v185) = v77;
    *&v184[4] = 1;
    goto LABEL_28;
  }

  *&v184[4] = 1;
LABEL_234:
  if (a2 && (v78 = *(a2 + 10)) != 0)
  {
    v178 = v78;
    v79 = *(a2 + 10);
    v80 = v194;
    *v184 = 0;
    if (!v194)
    {
      v153 = v79;
      v85 = 0;
      goto LABEL_244;
    }

    v81 = v178;
  }

  else
  {
    if (!v194 || (v82 = v194[10]) == 0)
    {
      v178 = 0;
      v174 = 0;
      *v188 = 0;
      *v184 = 1;
      goto LABEL_248;
    }

    v174 = v82;
    if (a2)
    {
      v83 = *(a2 + 10);
    }

    sub_10006E2B4();
    *v184 = v84;
    v80 = v194;
  }

  v153 = v79;
  v178 = v81;
  v85 = v80[10];
LABEL_244:
  v150 = v85;
  if (([v153 isEqual:?] & 1) == 0)
  {
    v193 = 1;
    LODWORD(v185) = 0;
    v183 = 0;
    *&v187[12] = 0;
    v14 = 0;
    v5 = 0;
    *&v187[4] = 0;
    LODWORD(v3) = 0;
    v182 = 0uLL;
    v9 = 0;
    v6 = 0;
    v181 = 0;
    v18 = sub_10006E1DC();
    *v187 = v86;
    DWORD1(v185) = v86;
    DWORD2(v185) = v86;
    *v188 = 1;
    goto LABEL_28;
  }

  *v188 = 1;
LABEL_248:
  if (a2 && (v87 = *(a2 + 11)) != 0)
  {
    v177 = v87;
    v88 = *(a2 + 11);
    v89 = v194;
    HIDWORD(v183) = 0;
    if (!v194)
    {
      v151 = v88;
      v94 = 0;
      goto LABEL_258;
    }

    v90 = v177;
  }

  else
  {
    if (!v194 || (v91 = v194[11]) == 0)
    {
      v177 = 0;
      v173 = 0;
      *&v187[16] = 0;
      HIDWORD(v183) = 1;
      goto LABEL_262;
    }

    v173 = v91;
    if (a2)
    {
      v92 = *(a2 + 11);
    }

    sub_10006E2B4();
    HIDWORD(v183) = v93;
    v89 = v194;
  }

  v151 = v88;
  v177 = v90;
  v94 = v89[11];
LABEL_258:
  v148 = v94;
  if (([v151 isEqual:?] & 1) == 0)
  {
    v193 = 1;
    sub_100001738();
    *&v187[8] = 0;
    LODWORD(v3) = 0;
    *(&v182 + 4) = 0;
    v18 = sub_10006E16C();
    DWORD1(v185) = v95;
    DWORD2(v185) = v95;
    LODWORD(v185) = v95;
    *&v187[16] = 1;
    goto LABEL_28;
  }

  *&v187[16] = 1;
LABEL_262:
  if (a2 && (v96 = *(a2 + 12)) != 0)
  {
    v147 = v96;
    v97 = *(a2 + 12);
    LODWORD(v183) = 0;
    v98 = v194;
    if (!v194)
    {
      v149 = v97;
      v100 = 0;
      goto LABEL_272;
    }
  }

  else
  {
    if (!v194 || (v99 = v194[12]) == 0)
    {
      v147 = 0;
      v141 = 0;
      HIDWORD(v182) = 0;
      LODWORD(v183) = 1;
      goto LABEL_276;
    }

    v141 = v99;
    if (a2)
    {
      v97 = *(a2 + 12);
    }

    else
    {
      v97 = 0;
    }

    v147 = 0;
    LODWORD(v183) = 1;
    v98 = v194;
  }

  v149 = v97;
  v100 = v98[12];
LABEL_272:
  v145 = v100;
  if (([v149 isEqual:?] & 1) == 0)
  {
    v193 = 1;
    v5 = 0;
    *&v187[8] = 0;
    LODWORD(v3) = 0;
    *(&v182 + 4) = 0;
    sub_10006E16C();
    sub_10006E26C();
    HIDWORD(v182) = 1;
    goto LABEL_28;
  }

  HIDWORD(v182) = 1;
LABEL_276:
  if (a2 && (v101 = *(a2 + 13)) != 0)
  {
    v144 = v101;
    v102 = *(a2 + 13);
    *&v187[12] = 0;
    v103 = v194;
    if (!v194)
    {
      v146 = v102;
      v105 = 0;
      goto LABEL_286;
    }
  }

  else
  {
    if (!v194 || (v104 = v194[13]) == 0)
    {
      v144 = 0;
      v137 = 0;
      *&v187[8] = 0;
      *&v187[12] = 1;
      goto LABEL_290;
    }

    v137 = v104;
    if (a2)
    {
      v102 = *(a2 + 13);
    }

    else
    {
      v102 = 0;
    }

    v144 = 0;
    *&v187[12] = 1;
    v103 = v194;
  }

  v146 = v102;
  v105 = v103[13];
LABEL_286:
  v142 = v105;
  if (([v146 isEqual:?] & 1) == 0)
  {
    v193 = 1;
    LODWORD(v3) = 0;
    *(&v182 + 4) = 0;
    sub_10006E16C();
    sub_10006E26C();
    v5 = 1;
    *&v187[8] = 1;
    goto LABEL_28;
  }

  *&v187[8] = 1;
LABEL_290:
  if (a2 && (v106 = *(a2 + 14)) != 0)
  {
    v4 = v106;
    v107 = *(a2 + 14);
    v108 = v194;
    DWORD2(v182) = 0;
    if (!v194)
    {
      v143 = v107;
      v109 = 0;
      goto LABEL_300;
    }
  }

  else
  {
    if (!v194 || (v134 = v194[14]) == 0)
    {
      v4 = 0;
      v134 = 0;
      DWORD1(v182) = 0;
      DWORD2(v182) = 1;
      goto LABEL_304;
    }

    if (a2)
    {
      v107 = *(a2 + 14);
    }

    else
    {
      v107 = 0;
    }

    v4 = 0;
    DWORD2(v182) = 1;
    v108 = v194;
  }

  v143 = v107;
  v109 = v108[14];
LABEL_300:
  v138 = v109;
  [v143 isEqual:?];
  sub_10006E2E4();
  if ((v111 & 1) == 0)
  {
    v140 = v4;
    sub_10006E16C();
    sub_10006E26C();
    v5 = 1;
    LODWORD(v3) = 1;
    DWORD1(v182) = 1;
    goto LABEL_28;
  }

  DWORD1(v182) = v110;
LABEL_304:
  v140 = v4;
  if (a2 && (v112 = *(a2 + 15)) != 0)
  {
    v136 = v112;
    v139 = *(a2 + 15);
    LODWORD(v182) = 0;
    if (!v194)
    {
      v113 = 0;
      goto LABEL_314;
    }
  }

  else
  {
    if (!v194 || (v131 = v194[15]) == 0)
    {
      v136 = 0;
      v131 = 0;
      *&v187[4] = 0;
      LODWORD(v182) = 1;
      goto LABEL_318;
    }

    if (a2)
    {
      v139 = *(a2 + 15);
    }

    else
    {
      v139 = 0;
    }

    v136 = 0;
    LODWORD(v182) = 1;
  }

  v113 = v194[15];
LABEL_314:
  v133 = v113;
  [v139 isEqual:?];
  sub_10006E2E4();
  if ((v115 & 1) == 0)
  {
    v6 = 0;
    v181 = 0;
    sub_10006E1DC();
    *v187 = v116;
    DWORD1(v185) = v116;
    DWORD2(v185) = v116;
    LODWORD(v185) = v116;
    sub_100001810();
    *&v187[4] = 1;
    goto LABEL_28;
  }

  *&v187[4] = v114;
LABEL_318:
  if (a2 && (v132 = *(a2 + 16)) != 0)
  {
    v135 = *(a2 + 16);
    v181 = 0;
    if (!v194)
    {
      v117 = 0;
      goto LABEL_328;
    }
  }

  else
  {
    if (!v194 || (v129 = v194[16]) == 0)
    {
      v132 = 0;
      v129 = 0;
      v186 = 0;
      v181 = 1;
      goto LABEL_332;
    }

    if (a2)
    {
      v135 = *(a2 + 16);
    }

    else
    {
      v135 = 0;
    }

    v132 = 0;
    v181 = 1;
  }

  v117 = v194[16];
LABEL_328:
  v130 = v117;
  [v135 isEqual:?];
  sub_10006E2E4();
  if ((v119 & 1) == 0)
  {
    sub_10006E224();
    sub_100001998();
    v186 = 1;
    goto LABEL_28;
  }

  v186 = v118;
LABEL_332:
  if (a2)
  {
    v120 = *(a2 + 5);
  }

  else
  {
    v120 = 0;
  }

  if (v194)
  {
    v121 = *(v194 + 5);
  }

  else
  {
    v121 = 0;
  }

  if (v120 != v121 || (!a2 ? (v122 = 0) : (v122 = *(a2 + 6)), !v194 ? (v123 = 0) : (v123 = *(v194 + 6)), v122 != v123))
  {
    sub_10006E224();
    v193 = v124;
    sub_100001998();
    goto LABEL_28;
  }

  if (a2)
  {
    v128 = *(a2 + 17);
    if (v128)
    {
      a2 = *(a2 + 17);
      LODWORD(v4) = 0;
      if (!v194)
      {
        v125 = 0;
        goto LABEL_353;
      }

LABEL_352:
      v125 = v194[17];
LABEL_353:
      v8 = v125;
      [a2 isEqual:v8];
      sub_10006E2E4();
      DWORD2(v185) = v126;
      HIDWORD(v185) = v126;
      v7 = 1;
      *v187 = v126;
      LODWORD(v185) = v126;
      DWORD1(v185) = v126;
      sub_100001810();
      v6 = 1;
      v10 = 1;
      goto LABEL_28;
    }
  }

  if (v194)
  {
    v127 = v194[17];
    if (v127)
    {
      if (a2)
      {
        a2 = *(a2 + 17);
      }

      v128 = 0;
      LODWORD(v4) = 1;
      goto LABEL_352;
    }
  }

  v127 = 0;
  v128 = 0;
  sub_1000018FC();
  sub_100001998();
  v10 = 1;
  LODWORD(v4) = 1;
  v18 = 1;
LABEL_28:
  *v189 = v18;
  if (v17)
  {

    if (!v4)
    {
      goto LABEL_30;
    }
  }

  else if (!v4)
  {
LABEL_30:
    if (!v10)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v10)
  {
LABEL_31:
  }

LABEL_32:
  if (v186)
  {
  }

  if (v181)
  {
  }

  if (v6)
  {
  }

  if (*&v187[4])
  {
  }

  if (v182)
  {
  }

  if (v9)
  {
  }

  if (DWORD1(v182))
  {
  }

  if (DWORD2(v182))
  {
  }

  if (v3)
  {
  }

  if (*&v187[8])
  {
  }

  if (*&v187[12])
  {
  }

  if (v5)
  {
  }

  if (HIDWORD(v182))
  {
  }

  if (v183)
  {
  }

  if (v14)
  {
  }

  if (*&v187[16])
  {
  }

  if (HIDWORD(v183))
  {
  }

  if (v185)
  {
  }

  if (*v188)
  {
  }

  if (*v184)
  {
  }

  if (DWORD1(v185))
  {
  }

  if (*&v184[4])
  {
  }

  if (*&v184[8])
  {
  }

  if (DWORD2(v185))
  {
  }

  if (*&v188[4])
  {
  }

  if (*&v188[8])
  {
  }

  if (*v187)
  {
  }

  if (*&v184[12])
  {
  }

  if (*&v184[16])
  {
  }

  if (v7)
  {
  }

  if (*&v184[20])
  {
  }

  if (*&v188[12])
  {
  }

  if (HIDWORD(v185))
  {
  }

  if (*&v184[24])
  {
  }

  if (*&v188[16])
  {
  }

  if (v193)
  {
  }

  if (v190)
  {
  }

  if (HIDWORD(v190))
  {
  }

  if (v192 == v191)
  {
  }
}

void sub_1000980BC(void *a1, char *newValue)
{
  if (a1)
  {
    sub_100074E58(a1, newValue);
  }
}

void sub_1000980C8(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_100074E64(a1, a2);
  }
}

void sub_10009816C(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 32);
  }
}

void sub_100098180(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v35 = a1;
  if (a2)
  {
    v5 = *(a2 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v35)
  {
    v7 = v35[2];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if ([v6 isEqualToString:v8] && (!a2 ? (v9 = 0) : (v9 = *(a2 + 8)), !v35 ? (v10 = 0) : (v10 = *(v35 + 2)), v9 == v10))
  {
    if (a2)
    {
      v11 = *(a2 + 24);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    if (v35)
    {
      v13 = v35[3];
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    if ([v12 isEqual:v14])
    {
      if (a2)
      {
        v15 = *(a2 + 32);
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      if (v35)
      {
        v17 = v35[4];
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;
      if ([v16 isEqual:v18])
      {
        if (a2)
        {
          v19 = *(a2 + 40);
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;
        if (v35)
        {
          v21 = v35[5];
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;
        if ([v20 isEqualToString:v22])
        {
          if (a2)
          {
            v23 = *(a2 + 48);
          }

          else
          {
            v23 = 0;
          }

          v34 = v23;
          if (v35)
          {
            v24 = v35[6];
          }

          else
          {
            v24 = 0;
          }

          v33 = v24;
          if ([v34 isEqualToString:?])
          {
            if (a2)
            {
              v25 = *(a2 + 56);
            }

            else
            {
              v25 = 0;
            }

            v32 = v25;
            if (v35)
            {
              v26 = v35[7];
            }

            else
            {
              v26 = 0;
            }

            v31 = v26;
            if ([v32 isEqualToString:?])
            {
              if (a2)
              {
                v27 = *(a2 + 64);
              }

              else
              {
                v27 = 0;
              }

              if (v35)
              {
                v28 = v35[8];
              }

              else
              {
                v28 = 0;
              }

              v30 = v27;
              v29 = [v30 isEqual:v28];
            }

            else
            {
              v29 = 0;
            }
          }

          else
          {
            v29 = 0;
          }
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  *a3 = v29;
}

void sub_100098460(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v19 = a1;
  if (a2)
  {
    v5 = *(a2 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v19)
  {
    v7 = v19[2];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if ([v6 isEqualToString:v8] && (!a2 ? (v9 = 0) : (v9 = *(a2 + 8)), !v19 ? (v10 = 0) : (v10 = *(v19 + 2)), v9 == v10))
  {
    if (a2)
    {
      v11 = *(a2 + 24);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    if (v19)
    {
      v13 = v19[3];
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    if ([v12 isEqual:v14])
    {
      if (a2)
      {
        v15 = *(a2 + 32);
      }

      else
      {
        v15 = 0;
      }

      if (v19)
      {
        v16 = v19[4];
      }

      else
      {
        v16 = 0;
      }

      v17 = v15;
      v18 = [v17 isEqualToString:v16];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  *a3 = v18;
}

void sub_10009864C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

const void *sub_100098710(UInt8 *bytes, CFIndex length)
{
  v2 = 0;
  format = kCFPropertyListBinaryFormat_v1_0;
  if (bytes && length)
  {
    v4 = CFReadStreamCreateWithBytesNoCopy(kCFAllocatorDefault, bytes, length, kCFAllocatorNull);
    if (!v4)
    {
      syslog(7, "Could not create stream from serialized data");
      return 0;
    }

    v5 = v4;
    if (CFReadStreamOpen(v4))
    {
      v6 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v5, length, 2uLL, &format, 0);
      v2 = v6;
      if (!v6)
      {
        syslog(7, "Could not create dictionary from stream");
        goto LABEL_9;
      }

      v7 = CFGetTypeID(v6);
      if (v7 == CFDictionaryGetTypeID())
      {
LABEL_9:
        CFReadStreamClose(v5);
        CFRelease(v5);
        return v2;
      }

      CFRelease(v2);
    }

    else
    {
      syslog(7, "Could not open the stream");
    }

    v2 = 0;
    goto LABEL_9;
  }

  return v2;
}

void sub_100098828(const char *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  syslog(7, "Could not fstat %s: %s", a1, v3);
}

void sub_100098870(const char *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  syslog(7, "Could not read %s: %s", a1, v3);
}

void sub_1000988DC(const char *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  syslog(7, "Could not open %s: %s", a1, v3);
}

id sub_100098960(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_100089624(a1);
    v3 = sub_100001440(v1);
    v4 = sub_100088F2C(v1);
    v5 = sub_1000013A0(v1);
    v6 = sub_100089790(v1);
    v7 = sub_1000013AC(v1);
    v8 = sub_10008900C(v1);
    v9 = sub_1000024A8(v1);
    v1 = [DDIUser userWithUUID:v2 uid:v3 name:v4 primaryGroupUUID:v5 fullName:v6 homeDirectory:v7 shell:v8 memberships:v9];
  }

  return v1;
}

id sub_100098A8C(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_100089624(a1);
    v3 = sub_100001440(v1);
    v4 = sub_100088F2C(v1);
    v5 = sub_1000013A0(v1);
    v1 = [DDIGroup groupWithUUID:v2 gid:v3 name:v4 fullName:v5];
  }

  return v1;
}

void sub_100098B6C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"UMPersonaMachPort.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"[aDecoder isKindOfClass:[NSXPCCoder class]]"}];
}

id sub_100098BE8(void *a1)
{
  if (a1)
  {
    v1 = sub_100016954(NSUUID, a1);
    v2 = [v1 UUIDString];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100098C4C(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 objectForKey:a2];
  v3 = objc_opt_class();
  if (sub_100002330(v3))
  {
    v4 = [v2 BOOLValue];
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 2;
  }

  *__error() = v5;

  return v4;
}

id sub_100098CCC(void *a1, uint64_t a2, id a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = [a1 objectForKey:a2];
  v5 = objc_opt_class();
  if (sub_10007B07C(v5))
  {
    a3 = [v4 intValue];
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  *__error() = v6;

  return a3;
}

id sub_100098D4C(void *a1, uint64_t a2, id a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = [a1 objectForKey:a2];
  v5 = objc_opt_class();
  if (sub_10007B07C(v5))
  {
    a3 = [v4 unsignedIntValue];
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  *__error() = v6;

  return a3;
}

id sub_100098DCC(void *a1, uint64_t a2, id a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = [a1 objectForKey:a2];
  v5 = objc_opt_class();
  if (sub_10007B07C(v5))
  {
    a3 = [v4 longLongValue];
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  *__error() = v6;

  return a3;
}

id sub_100098E4C(void *a1, uint64_t a2, id a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = [a1 objectForKey:a2];
  v5 = objc_opt_class();
  if (sub_10007B07C(v5))
  {
    a3 = [v4 unsignedLongLongValue];
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  *__error() = v6;

  return a3;
}

id sub_100098ECC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 objectForKey:a2];
    v3 = objc_opt_class();
    v4 = sub_100002330(v3);
    v5 = __error();
    if (v4)
    {
      *v5 = 0;
      v4 = v2;
    }

    else
    {
      sub_10007B06C(v5);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_100098F4C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 objectForKey:a2];
    v3 = objc_opt_class();
    if (sub_100002330(v3))
    {
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v4 = v2;
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v12;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(v4);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              *__error() = 2;

              v9 = 0;
              goto LABEL_14;
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      v9 = [NSSet setWithArray:v4, v11];
      *__error() = 0;
LABEL_14:
    }

    else
    {
      v9 = 0;
      *__error() = 2;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_1000990F0(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 objectForKey:a2];
    v3 = objc_opt_class();
    if (sub_100002330(v3))
    {
      v4 = sub_100016954(NSUUID, v2);
      v5 = 2 * (v4 == 0);
    }

    else
    {
      v4 = 0;
      v5 = 2;
    }

    *__error() = v5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_100099194(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 objectForKey:a2];
    v3 = objc_opt_class();
    v4 = sub_100002330(v3);
    v5 = __error();
    if (v4)
    {
      *v5 = 0;
      v4 = v2;
    }

    else
    {
      sub_10007B06C(v5);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_100099214(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 objectForKey:a2];
    v3 = objc_opt_class();
    v4 = sub_100002330(v3);
    v5 = __error();
    if (v4)
    {
      *v5 = 0;
      v4 = v2;
    }

    else
    {
      sub_10007B06C(v5);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_100099294(uint64_t a1)
{
  if (a1)
  {
    sub_1000019C0();
    v4 = [v3 dataWithPropertyList:? format:? options:? error:?];
    v12 = sub_100001824(v4, v5, v6, v7, v8, v9, v10, v11, v22, v23, v24[0], v24[1]);
    if (!v1)
    {
      if (qword_1000EB508 != -1)
      {
        dispatch_once(&qword_1000EB508, &stru_1000DDF10);
      }

      if (sub_100001748(qword_1000EB500))
      {
        sub_100053940();
        v13 = sub_10007B050();
        if (sub_10000230C(v13))
        {
          sub_10007B014();
          v19 = sub_10007B030(v14, v24, v15, v16, &_mh_execute_header, v17, v18, "Failed to convert dictionary into binary plist: %{public}@");
          v20 = v19;
          if (v19)
          {
            sub_100002A8C(v19);
          }
        }

        else
        {
          v20 = 0;
        }

        free(v20);
      }
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_1000993D0(uint64_t a1)
{
  if (a1)
  {
    sub_1000019C0();
    v4 = [v3 dataWithPropertyList:? format:? options:? error:?];
    v12 = sub_100001824(v4, v5, v6, v7, v8, v9, v10, v11, v22, v23, v24[0], v24[1]);
    if (!v1)
    {
      if (qword_1000EB508 != -1)
      {
        dispatch_once(&qword_1000EB508, &stru_1000DDF10);
      }

      if (sub_100001748(qword_1000EB500))
      {
        sub_100053940();
        v13 = sub_10007B050();
        if (sub_10000230C(v13))
        {
          sub_10007B014();
          v19 = sub_10007B030(v14, v24, v15, v16, &_mh_execute_header, v17, v18, "Failed to convert array into binary plist: %@");
          v20 = v19;
          if (v19)
          {
            sub_100002A8C(v19);
          }
        }

        else
        {
          v20 = 0;
        }

        free(v20);
      }
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_10009950C(uint64_t a1)
{
  if (a1)
  {
    sub_1000019C0();
    v4 = [v3 propertyListWithData:? options:? format:? error:?];
    v12 = sub_100001824(v4, v5, v6, v7, v8, v9, v10, v11, v32, v33, v34[0], v34[1]);
    if (v1)
    {
      v13 = objc_opt_class();
      if ((sub_100002330(v13) & 1) == 0)
      {
        if (qword_1000EB508 != -1)
        {
          dispatch_once(&qword_1000EB508, &stru_1000DDF10);
        }

        if (sub_100001748(qword_1000EB500))
        {
          v35[0] = 0;
          sub_1000011A8(0);
          v14 = sub_10007B050();
          if (sub_10000230C(v14))
          {
            sub_100053968();
            v20 = sub_10007B030(v15, v35, v16, v17, &_mh_execute_header, v18, v19, "Failed to parse dictionary plist from data: plist is not a dictionary");
            v21 = v20;
            if (v20)
            {
              sub_100002A8C(v20);
            }
          }

          else
          {
            v21 = 0;
          }

          free(v21);
        }

        v30 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      if (qword_1000EB508 != -1)
      {
        dispatch_once(&qword_1000EB508, &stru_1000DDF10);
      }

      if (sub_100001748(qword_1000EB500))
      {
        sub_100053940();
        v22 = sub_10007B050();
        if (sub_10000230C(v22))
        {
          sub_10007B014();
          v28 = sub_10007B030(v23, v34, v24, v25, &_mh_execute_header, v26, v27, "Failed to parse dictionary plist from data: %{public}@");
          v29 = v28;
          if (v28)
          {
            sub_100002A8C(v28);
          }
        }

        else
        {
          v29 = 0;
        }

        free(v29);
      }
    }

    v30 = v1;
LABEL_23:

    goto LABEL_24;
  }

  v30 = 0;
LABEL_24:

  return v30;
}

id sub_100099704(uint64_t a1)
{
  if (a1)
  {
    sub_1000019C0();
    v4 = [v3 propertyListWithData:? options:? format:? error:?];
    v12 = sub_100001824(v4, v5, v6, v7, v8, v9, v10, v11, v32, v33, v34[0], v34[1]);
    if (v1)
    {
      v13 = objc_opt_class();
      if ((sub_100002330(v13) & 1) == 0)
      {
        if (qword_1000EB508 != -1)
        {
          dispatch_once(&qword_1000EB508, &stru_1000DDF10);
        }

        if (sub_100001748(qword_1000EB500))
        {
          v35[0] = 0;
          sub_1000011A8(0);
          v14 = sub_10007B050();
          if (sub_10000230C(v14))
          {
            sub_100053968();
            v20 = sub_10007B030(v15, v35, v16, v17, &_mh_execute_header, v18, v19, "Failed to parse dictionary plist from data: plist is not an array");
            v21 = v20;
            if (v20)
            {
              sub_100002A8C(v20);
            }
          }

          else
          {
            v21 = 0;
          }

          free(v21);
        }

        v30 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      if (qword_1000EB508 != -1)
      {
        dispatch_once(&qword_1000EB508, &stru_1000DDF10);
      }

      if (sub_100001748(qword_1000EB500))
      {
        sub_100053940();
        v22 = sub_10007B050();
        if (sub_10000230C(v22))
        {
          sub_10007B014();
          v28 = sub_10007B030(v23, v34, v24, v25, &_mh_execute_header, v26, v27, "Failed to parse array plist from data: %{public}@");
          v29 = v28;
          if (v28)
          {
            sub_100002A8C(v28);
          }
        }

        else
        {
          v29 = 0;
        }

        free(v29);
      }
    }

    v30 = v1;
LABEL_23:

    goto LABEL_24;
  }

  v30 = 0;
LABEL_24:

  return v30;
}

void *acm_mem_alloc_data(size_t size)
{
  result = malloc_type_calloc(1uLL, size, 0x7F43DDCBuLL);
  if (result)
  {
    qword_1000EB518 += size;
  }

  return result;
}

void acm_mem_free_data(void *a1, rsize_t a2)
{
  if (a1)
  {
    sub_10007B210(a1, a2);
    free(v3);
    v4 = qword_1000EB518 - v2;
    if (qword_1000EB518 < v2)
    {
      v4 = 0;
    }

    qword_1000EB518 = v4;
  }
}

void *acm_mem_alloc_typed(size_t size, malloc_type_id_t type_id)
{
  result = malloc_type_calloc(1uLL, size, type_id);
  if (result)
  {
    qword_1000EB520 += size;
  }

  return result;
}

void acm_mem_free(void *a1, rsize_t a2)
{
  if (a1)
  {
    sub_10007B210(a1, a2);
    free(v3);
    v4 = qword_1000EB520 - v2;
    if (qword_1000EB520 < v2)
    {
      v4 = 0;
    }

    qword_1000EB520 = v4;
  }
}

uint64_t GetSerializedVerifyPolicySize()
{
  result = sub_1000016A4();
  if (v5)
  {
    if (v1)
    {
      v6 = v4;
      if (v4)
      {
        v7 = v3;
        v8 = v2;
        v9 = strnlen(v1, 0x81uLL);
        if (v9 > 0x80)
        {
          return 4294967293;
        }

        else
        {
          v10 = v9;
          result = sub_10007BAE4(v8, v7, &v11);
          if (!result)
          {
            *v6 = v10 + v11 + 26;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DeserializeVerifyPolicy(uint64_t a1)
{
  v25 = 0;
  result = sub_1000016A4();
  v10 = v3 - 16;
  if (v3 >= 0x10)
  {
    if (a1)
    {
      if (v4)
      {
        v11 = v5;
        if (v5)
        {
          v12 = v6;
          if (v6)
          {
            v13 = v7;
            if (v7)
            {
              v14 = v8;
              if (v8)
              {
                v15 = v9;
                if (v9)
                {
                  v16 = v3;
                  *v4 = *a1;
                  v17 = strnlen((a1 + 16), v3 - 16);
                  v18 = v17;
                  if (v17 > 0x80uLL || v10 <= v17)
                  {
                    return 4294967293;
                  }

                  v19 = acm_mem_alloc_data(v17 + 1);
                  acm_mem_alloc_info("<data>", v19, v18 + 1, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 351, "DeserializeVerifyPolicy");
                  if (!v19)
                  {
                    return 4294967292;
                  }

                  memcpy(v19, (a1 + 16), v18 + 1);
                  v26 = v18 + 17;
                  if (v18 + 17 == v16 || (v20 = *(a1 + v18 + 17) != 0, v26 = v18 + 18, v16 - (v18 + 18) < 4))
                  {
                    v22 = 4294967293;
                  }

                  else
                  {
                    v23 = v15;
                    v21 = *(a1 + v18 + 18);
                    v26 = v18 + 22;
                    result = sub_10007BD10(a1, v16, &v26, &v25, &v24);
                    if (!result)
                    {
                      *v11 = v19;
                      *v12 = v20;
                      *v13 = v21;
                      *v14 = v25;
                      *v23 = v24;
                      return result;
                    }

                    v22 = result;
                  }

                  acm_mem_free_info("<data>", v19, v18 + 1, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 380, "DeserializeVerifyPolicy");
                  acm_mem_free_data(v19, v18 + 1);
                  if (v25)
                  {
                    Util_SafeDeallocParameters(v25, v24);
                  }

                  return v22;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t GetSerializedVerifyAclConstraintSize(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, void *a11)
{
  result = sub_1000016A4();
  if (v15)
  {
    if (a11)
    {
      if (a10 <= 0xA && (a9 != 0) == (a10 != 0))
      {
        v16 = v14;
        v17 = v13;
        result = sub_10007BAE4(a9, a10, &v21);
        if (!result)
        {
          v18 = 29;
          if (a1 == 32)
          {
            v18 = 33;
          }

          v19 = v18 + v17;
          if (a1 == 32)
          {
            v20 = v16;
          }

          else
          {
            v20 = 0;
          }

          *a11 = v19 + v20 + v21;
        }
      }
    }
  }

  return result;
}

uint64_t SerializeVerifyAclConstraint(int a1, _OWORD *a2, const void *a3, unsigned int a4, const void *a5, unsigned int a6, char a7, int a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t *a12)
{
  if (!a3)
  {
    return 4294967293;
  }

  result = 4294967293;
  if (a12)
  {
    if (a11 && a10 <= 0xA && (a9 != 0) == (a10 != 0))
    {
      v30 = 0;
      result = sub_10007BAE4(a9, a10, &v30);
      if (!result)
      {
        v20 = 29;
        if (a1 == 32)
        {
          v20 = 33;
        }

        v21 = v20 + a4;
        if (a1 == 32)
        {
          v22 = a6;
        }

        else
        {
          v22 = 0;
        }

        if (*a12 < v21 + v22 + v30)
        {
          return 4294967293;
        }

        else
        {
          v23 = a8;
          if (a2)
          {
            *a11 = *a2;
          }

          else
          {
            *a11 = 0;
            *(a11 + 8) = 0;
          }

          *(a11 + 16) = a4;
          memcpy((a11 + 20), a3, a4);
          v24 = a4 + 20;
          if (a1 == 32)
          {
            *(a11 + v24) = a6;
            v25 = a4 + 24;
            memcpy((a11 + v25), a5, a6);
            v24 = v25 + a6;
          }

          v26 = a11 + v24;
          *v26 = a7;
          *(v26 + 1) = v23;
          v29 = v24 + 5;
          result = sub_10007BBD4(a9, a10, a11, &v29);
          if (!result)
          {
            *a12 = v29;
          }
        }
      }
    }
  }

  return result;
}

uint64_t GetSerializedProcessAclSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  result = sub_1000016A4();
  if (v14)
  {
    v15 = v10;
    if (v10)
    {
      if (a9 && v13 <= 0xA && (v12 != 0) == (v13 != 0))
      {
        v16 = v11;
        result = sub_10007BAE4(v12, v13, &v17);
        if (!result)
        {
          *a9 = v15 + v16 + v17 + 36;
        }
      }
    }
  }

  return result;
}

uint64_t SerializeProcessAcl(_OWORD *a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10)
{
  v21 = 0;
  result = 4294967293;
  if (a2)
  {
    v12 = a3;
    if (a3)
    {
      v13 = a8;
      if (a10)
      {
        if (a9)
        {
          if (a8 <= 0xA && (a7 != 0) == (a8 != 0))
          {
            v15 = a6;
            v16 = a5;
            result = GetSerializedProcessAclSize(4294967293, a2, a3, a4, a5, a6, a7, a8, &v21);
            if (!result)
            {
              if (*a10 < v21)
              {
                return 4294967293;
              }

              else
              {
                if (a1)
                {
                  *a9 = *a1;
                }

                else
                {
                  *a9 = 0;
                  *(a9 + 8) = 0;
                }

                *(a9 + 16) = v12;
                memcpy((a9 + 20), a2, v12);
                *(a9 + v12 + 20) = v16;
                v19 = v12 + 24;
                if (v16)
                {
                  memcpy((a9 + v19), a4, v16);
                  v19 += v16;
                }

                *(a9 + v19) = v15;
                v20 = v19 + 4;
                result = sub_10007BBD4(a7, v13, a9, &v20);
                if (!result)
                {
                  *a10 = v20;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void GetSerializedRequirementSize(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = 0;
  if (a2 && a3 && *a2 <= 0x1Cu)
  {
    sub_10007BA30();
    if (v8)
    {
      if ((v7 & 0x30) != 0)
      {
        *a3 = 20;
        while (*(a2 + 16))
        {
          GetSerializedRequirementSize(a1, *(a2 + 20), &v26);
          if (v9)
          {
            break;
          }

          sub_1000019CC(v9, v10, v11, v12, v13, v14, v15, v16, v25, v26);
        }
      }

      else if (v6 == 7)
      {
        *a3 = 24;
        while (*(a2 + 20))
        {
          GetSerializedRequirementSize(a1, *(a2 + 24), &v26);
          if (v17)
          {
            break;
          }

          sub_1000019CC(v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
        }
      }
    }

    else
    {
      *a3 = sub_10007B880(a1, a2) + 16;
    }
  }
}

uint64_t GetSerializedCredentialSize(_DWORD *a1, void *a2)
{
  result = 4294967293;
  if (a1 && a2 && *a1 <= 0x17u && ((1 << *a1) & 0xFFF7FE) != 0)
  {
    result = 0;
    *a2 = a1[7] + 32;
  }

  return result;
}

uint64_t SerializeCredential(unsigned int *__src, void *__dst, size_t *a3)
{
  result = 4294967293;
  if (__src && __dst && a3)
  {
    v6 = *__src;
    if (*__src <= 0x17 && ((1 << *__src) & 0xFFF7FE) != 0)
    {
      v8 = __src[7] + 32;
      if (v8 <= *a3 && v6 <= 0x17 && ((1 << v6) & 0xFFF7FE) != 0)
      {
        memcpy(__dst, __src, v8);
        result = 0;
        *a3 = __src[7] + 32;
      }
    }
  }

  return result;
}

void DeserializeCredential(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *__dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10007BA48();
  a19 = v20;
  a20 = v25;
  __dst = 0;
  if (v22 >= 0x20)
  {
    v26 = v21;
    if (v21)
    {
      v27 = v23;
      if (v23)
      {
        v28 = v24;
        if (v24)
        {
          v29 = *v21;
          v30 = v22;
          v31 = v21[7];
          switch(*v21)
          {
            case 1u:
              if (v31 == 28)
              {
                goto LABEL_7;
              }

              break;
            case 2u:
              if (v31 == 136)
              {
                goto LABEL_7;
              }

              break;
            case 3u:
              if (v31 == 305)
              {
                goto LABEL_7;
              }

              break;
            case 4u:
            case 5u:
            case 6u:
            case 8u:
            case 0xEu:
            case 0x10u:
            case 0x13u:
            case 0x16u:
            case 0x17u:
              if (!v31)
              {
                goto LABEL_7;
              }

              break;
            case 7u:
              if (v31 == 56)
              {
                goto LABEL_7;
              }

              break;
            case 9u:
              if (v31 == 24)
              {
                goto LABEL_7;
              }

              break;
            case 0xAu:
              if (v31 == 52)
              {
                goto LABEL_7;
              }

              break;
            case 0xCu:
            case 0xFu:
              if (v31 == 8)
              {
                goto LABEL_7;
              }

              break;
            case 0xDu:
            case 0x15u:
              if (v31 == 132)
              {
                goto LABEL_7;
              }

              break;
            case 0x11u:
              if (v31 == 81)
              {
                goto LABEL_7;
              }

              break;
            case 0x12u:
              if (v31 == 20)
              {
                goto LABEL_7;
              }

              break;
            case 0x14u:
              if (v31 != 32)
              {
                break;
              }

LABEL_7:
              if (!Util_AllocCredential(*v21, &__dst))
              {
                if (!__dst)
                {
                  break;
                }

                if (__dst[1] <= 3u && __dst[2] <= 0x100u && v29 <= 0x17 && ((1 << v29) & 0xFFF7FE) != 0 && v31 + 32 <= v30)
                {
                  memcpy(__dst, v26, v31 + 32);
                  *v27 = __dst;
                  *v28 = v31 + 32;
                  break;
                }

                goto LABEL_15;
              }

              if (__dst)
              {
LABEL_15:
                Util_DeallocCredential(__dst);
                break;
              }

              break;
            default:
              break;
          }
        }
      }
    }
  }

  sub_10007BA60();
}

uint64_t CopyCredential(unsigned int *a1, void **a2)
{
  __dst = 0;
  v2 = 4294967293;
  if (a1 && a2)
  {
    v2 = Util_AllocCredential(*a1, &__dst);
    if (v2)
    {
      if (__dst)
      {
        Util_DeallocCredential(__dst);
      }
    }

    else if (__dst)
    {
      memcpy(__dst, a1, a1[7] + 32);
      v2 = 0;
      *a2 = __dst;
    }

    else
    {
      return 4294967292;
    }
  }

  return v2;
}

uint64_t CompareCredentials(char *__s1, _DWORD *__s2, BOOL *a3)
{
  result = 4294967293;
  if (__s1)
  {
    v5 = __s2;
    if (__s2)
    {
      if (a3)
      {
        if (*__s1 == *__s2)
        {
          v7 = *(__s1 + 7);
          if (v7 == __s2[7])
          {
            switch(*__s1)
            {
              case 1:
                if (sub_10007B9C8())
                {
                  break;
                }

                v9 = __s1 + 44;
                __s2 = v5 + 11;
                goto LABEL_33;
              case 2:
                if (*(__s1 + 8) != __s2[8])
                {
                  break;
                }

                v8 = *(__s1 + 9);
                if (v8 != __s2[9])
                {
                  break;
                }

                v9 = __s1 + 40;
                __s2 += 10;
                goto LABEL_8;
              case 3:
                if (sub_10007B9C8())
                {
                  break;
                }

                v9 = __s1 + 104;
                __s2 = v5 + 26;
                goto LABEL_33;
              case 4:
              case 5:
              case 6:
              case 8:
              case 0xC:
              case 0xE:
              case 0xF:
              case 0x10:
              case 0x11:
              case 0x12:
              case 0x13:
              case 0x16:
              case 0x17:
                v8 = v7 + 32;
                v9 = __s1;
                goto LABEL_8;
              case 7:
                if (sub_10007B9C8() || memcmp(__s1 + 32, v5 + 8, 0x20uLL))
                {
                  break;
                }

                v9 = __s1 + 64;
                __s2 = v5 + 16;
                v8 = 24;
                goto LABEL_8;
              case 9:
                if (sub_10007B9C8())
                {
                  break;
                }

                v9 = __s1 + 40;
                __s2 = v5 + 10;
                goto LABEL_33;
              case 0xA:
                if (sub_10007B9C8() || memcmp(__s1 + 36, v5 + 9, 0x10uLL))
                {
                  break;
                }

                v9 = __s1 + 52;
                __s2 = v5 + 13;
LABEL_33:
                v8 = 16;
                goto LABEL_8;
              case 0xD:
                v8 = *(__s1 + 8);
                if (v8 != __s2[8])
                {
                  break;
                }

                v9 = __s1 + 36;
                __s2 += 9;
                goto LABEL_8;
              case 0x14:
                if (sub_10007B9C8())
                {
                  break;
                }

                v9 = __s1 + 32;
                __s2 = v5 + 8;
                v8 = 32;
                goto LABEL_8;
              case 0x15:
                if (sub_10007B9C8())
                {
                  break;
                }

                v9 = __s1 + 36;
                __s2 = v5 + 9;
                v8 = 128;
LABEL_8:
                v10 = memcmp(v9, __s2, v8) == 0;
                goto LABEL_30;
              default:
                return result;
            }
          }
        }

        v10 = 0;
LABEL_30:
        result = 0;
        *a3 = v10;
      }
    }
  }

  return result;
}

uint64_t GetSerializedAddCredentialSize(uint64_t a1, _DWORD *a2, int a3, void *a4)
{
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3 == 2;
  }

  v5 = !v4;
  result = 4294967293;
  if (a4 && a2 && (v5 & 1) == 0 && *a2 <= 0x17u && ((1 << *a2) & 0xFFF7FE) != 0)
  {
    result = 0;
    *a4 = a2[7] + 52;
  }

  return result;
}

uint64_t SerializeAddCredential(_OWORD *a1, unsigned int *__src, int a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a3 == 2;
  }

  v7 = !v6;
  result = 4294967293;
  if (a5)
  {
    if (a4)
    {
      if (__src)
      {
        if ((v7 & 1) == 0)
        {
          result = 4294967293;
          if (*__src <= 0x17 && ((1 << *__src) & 0xFFF7FE) != 0 && *a5 >= __src[7] + 52)
          {
            if (a1)
            {
              *a4 = *a1;
            }

            else
            {
              *a4 = 0;
              *(a4 + 8) = 0;
            }

            v13 = *a5 - 16;
            result = SerializeCredential(__src, (a4 + 16), &v13);
            if (!result)
            {
              v12 = v13;
              *(a4 + v13 + 16) = a3;
              *a5 = v12 + 20;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t DeserializeAddCredentialType(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  result = 4294967293;
  if (a2 >= 0x34 && a1)
  {
    if (a3)
    {
      result = 0;
      *a3 = *(a1 + 16);
    }
  }

  return result;
}

uint64_t LibSer_GetSerializedContainsCredential_GetSize(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = 4294967293;
  if (a1)
  {
    if (a4)
    {
      result = 0;
      *a4 = 24;
    }
  }

  return result;
}

double LibSer_GetSerializedContainsCredential_Serialize(__n128 *a1, unsigned __int32 a2, unsigned __int32 a3, __n128 *a4, void *a5)
{
  if (a4 && a1 && a5 && *a5 >= 0x18uLL)
  {
    *&result = sub_10007BA98(a2, a3, a4, a5, a1).n128_u64[0];
  }

  return result;
}

uint64_t GetSerializedRemoveCredentialSize(uint64_t a1, _DWORD *a2, int a3, void *a4)
{
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3 == 2;
  }

  v5 = !v4;
  result = 4294967293;
  if (a4 && a2 && (v5 & 1) == 0 && *a2 <= 0x17u && ((1 << *a2) & 0xFFF7FE) != 0)
  {
    result = 0;
    *a4 = a2[7] + 52;
  }

  return result;
}

uint64_t GetSerializedReplacePassphraseCredentialSize(uint64_t a1, _DWORD *a2, int a3, void *a4)
{
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3 == 2;
  }

  v5 = !v4;
  result = 4294967293;
  if (a4 && a2 && (v5 & 1) == 0 && *a2 <= 0x17u && ((1 << *a2) & 0xFFF7FE) != 0)
  {
    result = 0;
    *a4 = a2[7] + 52;
  }

  return result;
}

uint64_t SerializeCredentialList(unsigned int **a1, unsigned int a2, unsigned int *a3, void *a4)
{
  if (a2)
  {
    v6 = a1 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6 || a3 == 0 || a4 == 0)
  {
    return 4294967293;
  }

  v16[7] = v4;
  v16[8] = v5;
  *a3 = a2;
  if (a2)
  {
    v11 = a1;
    v12 = a2;
    v13 = 4;
    while (1)
    {
      v14 = *v11;
      if (!*v11)
      {
        return 4294967293;
      }

      v16[0] = *a4 - v13;
      result = SerializeCredential(v14, a3 + v13, v16);
      if (result)
      {
        return result;
      }

      v13 += v16[0];
      ++v11;
      if (!--v12)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v13 = 4;
LABEL_18:
    result = 0;
    *a4 = v13;
  }

  return result;
}

uint64_t DeserializeCredentialList(unsigned int *a1, int a2, void *a3, _DWORD *a4)
{
  __dst[0] = 0;
  v4 = 4294967293;
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        v7 = a1;
        v8 = *a1;
        if (v8 <= 0x3E8)
        {
          if (v8)
          {
            v10 = acm_mem_alloc_typed(8 * v8, 0x2004093837F09uLL);
            acm_mem_alloc_info("array of ACMCredentialRef", v10, 8 * v8, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 1897, "DeserializeCredentialList");
            if (v10)
            {
              v15 = 4;
              v16 = v10;
              v17 = v8;
              while (1)
              {
                DeserializeCredential(v7 + v15, a2 - v15, v16, __dst, v11, v12, v13, v14, v20, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10]);
                if (v18)
                {
                  break;
                }

                v15 += LODWORD(__dst[0]);
                v16 += 8;
                if (!--v17)
                {
                  goto LABEL_12;
                }
              }

              v4 = v18;
              DeallocCredentialList(v10, v8);
            }

            else
            {
              return 4294967292;
            }
          }

          else
          {
            v10 = 0;
LABEL_12:
            v4 = 0;
            *a4 = v8;
            *a3 = v10;
          }
        }
      }
    }
  }

  return v4;
}

void DeallocCredentialList(void *a1, unsigned int a2)
{
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = a1;
      v5 = a2;
      do
      {
        if (*v4)
        {
          Util_DeallocCredential(*v4);
          *v4 = 0;
        }

        ++v4;
        --v5;
      }

      while (v5);
    }

    v6 = 8 * v3;
    acm_mem_free_info("array of ACMCredentialRef", a1, v6, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 1935, "DeallocCredentialList");

    acm_mem_free(a1, v6);
  }
}

uint64_t GetSerializedGetContextPropertySize(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 4294967293;
  }

  result = 0;
  *a3 = 20;
  return result;
}

__n128 SerializeGetContextProperty(__n128 *a1, unsigned __int32 a2, __n128 *a3, void *a4)
{
  if (a1 && a3 && a4 && *a4 >= 0x14uLL)
  {
    result = *a1;
    *a3 = *a1;
    a3[1].n128_u32[0] = a2;
    *a4 = 20;
  }

  return result;
}

uint64_t DeserializeGetContextProperty(uint64_t a1, unint64_t a2, _OWORD *a3, _DWORD *a4)
{
  result = 4294967293;
  if (a2 >= 0x10 && a1 && a3 && a4)
  {
    *a3 = *a1;
    if ((a2 & 0xFFFFFFFFFFFFFFFCLL) != 0x10)
    {
      result = 0;
      *a4 = *(a1 + 16);
    }
  }

  return result;
}

uint64_t LibSer_GetAclAuthMethod_GetSize(uint64_t a1, void *a2)
{
  if (a2)
  {
    return sub_10007B9F4(a1, a2);
  }

  else
  {
    return 4294967293;
  }
}

__n128 LibSer_GetAclAuthMethod_Serialize(__n128 *a1, __n128 *a2, void *a3)
{
  if (a1 && a2 && a3 && *a3 >= 0x10uLL)
  {
    result = *a1;
    *a2 = *a1;
    *a3 = 16;
  }

  return result;
}

__n128 LibSer_GetAclAuthMethod_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3)
{
  if (a2 >= 0x10 && a1)
  {
    if (a3)
    {
      result = *a1;
      *a3 = *a1;
    }
  }

  return result;
}

uint64_t LibSer_ContextCredentialGetProperty_GetSize(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    return sub_10007B9E4(a1, a2, a3, a4);
  }

  else
  {
    return 4294967293;
  }
}

double LibSer_ContextCredentialGetProperty_Serialize(__n128 *a1, unsigned __int32 a2, unsigned __int32 a3, __n128 *a4, void *a5)
{
  if (a1 && a4 && a5 && *a5 >= 0x18uLL)
  {
    *&result = sub_10007BA98(a2, a3, a4, a5, a1).n128_u64[0];
  }

  return result;
}

__n128 LibSer_ContextCredentialGetProperty_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2 >= 0x18 && a1 && a3 && a4)
  {
    if (a5)
    {
      result = *a1;
      *a3 = *a1;
      *a4 = a1[1].n128_u32[0];
      *a5 = a1[1].n128_u32[1];
    }
  }

  return result;
}

uint64_t LibSer_GlobalContextCredentialGetProperty_GetSize(void *a1)
{
  if (!a1)
  {
    return 4294967293;
  }

  result = 0;
  *a1 = 8;
  return result;
}

uint64_t LibSer_GlobalContextCredentialGetProperty_Serialize(int a1, int a2, _DWORD *a3, void *a4)
{
  result = 4294967293;
  if (a3 && a4 && *a4 >= 8uLL)
  {
    result = 0;
    *a3 = a1;
    a3[1] = a2;
    *a4 = 8;
  }

  return result;
}

uint64_t LibSer_GlobalContextCredentialGetProperty_Deserialize(_DWORD *a1, unint64_t a2, _DWORD *a3, _DWORD *a4)
{
  result = 4294967293;
  if (a2 >= 8 && a1 && a3)
  {
    if (a4)
    {
      result = 0;
      *a3 = *a1;
      *a4 = a1[1];
    }
  }

  return result;
}

uint64_t LibSer_RemoveCredentialByType_GetSize(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    return sub_10007B9E4(a1, a2, a3, a4);
  }

  else
  {
    return 4294967293;
  }
}

double LibSer_RemoveCredentialByType_Serialize(__n128 *a1, unsigned __int32 a2, unsigned __int32 a3, __n128 *a4, void *a5)
{
  if (a1 && a4 && a5 && *a5 >= 0x18uLL)
  {
    *&result = sub_10007BA98(a2, a3, a4, a5, a1).n128_u64[0];
  }

  return result;
}

__n128 LibSer_RemoveCredentialByType_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2 >= 0x18 && a1 && a3 && a4)
  {
    if (a5)
    {
      result = *a1;
      *a3 = *a1;
      *a4 = a1[1].n128_u32[0];
      *a5 = a1[1].n128_u32[1];
    }
  }

  return result;
}

uint64_t LibSer_DeleteContext_GetSize(uint64_t a1, void *a2)
{
  if (a2)
  {
    return sub_10007B9F4(a1, a2);
  }

  else
  {
    return 4294967293;
  }
}

__n128 LibSer_DeleteContext_Serialize(__n128 *a1, __n128 *a2, void *a3)
{
  if (a1 && a2 && a3 && *a3 >= 0x10uLL)
  {
    result = *a1;
    *a2 = *a1;
    *a3 = 16;
  }

  return result;
}

__n128 LibSer_DeleteContext_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3)
{
  if (a2 >= 0x10 && a1)
  {
    if (a3)
    {
      result = *a1;
      *a3 = *a1;
    }
  }

  return result;
}

uint64_t LibSer_StorageAnyCmd_DeserializeCommonFields(uint64_t a1, unint64_t a2, _OWORD *a3, _DWORD *a4)
{
  result = 4294967293;
  if (a1 && a2 >= 0x14)
  {
    if (a3)
    {
      *a3 = *a1;
    }

    result = 0;
    if (a4)
    {
      *a4 = *(a1 + 16);
    }
  }

  return result;
}

uint64_t LibSer_StorageSetData_GetSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a4)
  {
    return 4294967291;
  }

  result = sub_100002348(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12, 0);
  if (!result)
  {
    *v8 = v9 + v13 + 28;
  }

  return result;
}

uint64_t LibSer_StorageSetData_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 4294967293;
  if (a1 && a2 >= 0x18 && a3 && a4 && a5 && a6 && a7 && a8)
  {
    v20[1] = v8;
    v20[2] = v9;
    sub_10007BA78(a1, a2, a3, a4);
    v16 = *(v11 + 20);
    v20[0] = 24;
    *v17 = v16;
    if (v16)
    {
      v18 = v16 + 24;
      if (v18 > v12)
      {
        return 4294967293;
      }

      *v13 = v11 + 24;
      v20[0] = v18;
    }

    else
    {
      *v13 = 0;
    }

    return sub_10007BD10(v11, v12, v20, v14, v15);
  }

  return v10;
}

uint64_t LibSer_StorageGetData_GetSize(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  if (!a3)
  {
    return 4294967291;
  }

  result = sub_10007BAE4(a1, a2, &v5);
  if (!result)
  {
    *a3 = v5 + 25;
  }

  return result;
}

uint64_t LibSer_StorageGetData_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3, _DWORD *a4, uint64_t a5)
{
  v7 = 4294967293;
  if (a1 && a2 >= 0x15 && a3 && a4 && a5)
  {
    v14[1] = v5;
    v14[2] = v6;
    sub_10007BA78(a1, a2, a3, a4);
    *v9 = *(v8 + 20) != 0;
    v14[0] = 21;
    return sub_10007BD10(v8, v10, v14, v11, v12);
  }

  return v7;
}

uint64_t LibSer_GetUnlockSecret_GetSize(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  if (!a3)
  {
    return 4294967291;
  }

  result = sub_10007BAE4(a1, a2, &v5);
  if (!result)
  {
    *a3 = v5 + 20;
  }

  return result;
}

void LibSer_GetUnlockSecret_Serialize(_OWORD *a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  if (a1)
  {
    if (a4)
    {
      if (a5)
      {
        sub_100001A80();
        if (!sub_10007BAE4(v8, a3, v9))
        {
          sub_100001908();
          if (v10)
          {
            *a4 = *a1;
            v11 = sub_10007B9A4(16, v19);
            if (!v11)
            {
              sub_10007BA8C(v11, v12, v13, v14, v15, v16, v17, v18, v20);
            }
          }
        }
      }
    }
  }
}

uint64_t LibSer_GetUnlockSecret_Deserialize(_OWORD *a1, unint64_t a2, _OWORD *a3, void *a4, _DWORD *a5)
{
  if (!a1)
  {
    return 4294967293;
  }

  result = 4294967293;
  if (a2 >= 0x10 && a3 && a4)
  {
    if (a5)
    {
      v9[1] = v5;
      v9[2] = v6;
      *a3 = *a1;
      v9[0] = 16;
      return sub_10007BD10(a1, a2, v9, a4, a5);
    }
  }

  return result;
}

uint64_t LibSer_GetUnlockSecretResponse_GetSize(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 4294967291;
  }

  result = 0;
  *a2 = a1 + 1;
  return result;
}

uint64_t LibSer_GetUnlockSecretResponse_Serialize(void *__src, size_t __n, char a3, _BYTE *a4, void *a5)
{
  result = 4294967293;
  if (__src && __n && a4 && a5)
  {
    v9 = __n + 1;
    if (*a5 < __n + 1)
    {
      return 4294967293;
    }

    else
    {
      *a4 = a3;
      memcpy(a4 + 1, __src, __n);
      result = 0;
      *a5 = v9;
    }
  }

  return result;
}

uint64_t LibSer_GetUnlockSecretResponse_Deserialize(_BYTE *a1, uint64_t a2, void *a3, void *a4, _BYTE *a5)
{
  result = 4294967293;
  if (a2 && a1 && a3 && a4)
  {
    if (a5)
    {
      result = 0;
      *a5 = *a1;
      *a3 = a1 + 1;
      *a4 = a2 - 1;
    }
  }

  return result;
}

uint64_t LibSer_SEPControl_GetSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a4)
  {
    return 4294967291;
  }

  result = sub_100002348(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12, 0);
  if (!result)
  {
    *v8 = v9 + v13 + 24;
  }

  return result;
}

void LibSer_SEPControl_Serialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10007BA48();
  a19 = v20;
  a20 = v27;
  v29 = v28;
  if (v25)
  {
    v30 = v26;
    if (v26)
    {
      v31 = v25;
      v32 = v24;
      v33 = v23;
      v34 = v22;
      v35 = v21;
      sub_100001A80();
      if (!sub_10007BAE4(v36, v34, v37))
      {
        sub_100001908();
        if (v38)
        {
          if (v29)
          {
            *v31 = *v29;
          }

          else
          {
            *v31 = 0;
            *(v31 + 8) = 0;
          }

          a9 = 16;
          if (!sub_10007BBD4(v35, v34, v31, &a9))
          {
            v39 = a9;
            *(v31 + a9) = v32;
            v40 = v39 + 4;
            memcpy((v31 + v39 + 4), v33, v32);
            *v30 = v40 + v32;
          }
        }
      }
    }
  }

  sub_10007BA60();
}

uint64_t LibSer_SEPControl_Deserialize(_OWORD *a1, unint64_t a2, _OWORD *a3, void *a4, _DWORD *a5, unint64_t *a6, void *a7)
{
  if (!a1)
  {
    return 4294967293;
  }

  result = 4294967293;
  if (a2 >= 0x18 && a3 && a4 && a5 && a6 && a7)
  {
    *a3 = *a1;
    v12 = 16;
    result = sub_10007BD10(a1, a2, &v12, a4, a5);
    if (!result)
    {
      v11 = a1 + v12 + 4;
      *a7 = *(a1 + v12);
      *a6 = v11;
    }
  }

  return result;
}

uint64_t LibSer_SEPControlResponse_GetSize(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 4294967291;
  }

  result = 0;
  *a2 = a1 + 4;
  return result;
}

uint64_t LibSer_SEPControlResponse_Serialize(void *__src, size_t __n, _DWORD *a3, uint64_t *a4)
{
  result = 4294967293;
  if (a3 && a4)
  {
    v8 = __n + 4;
    if (*a4 < __n + 4)
    {
      return 4294967293;
    }

    else
    {
      *a3 = __n;
      if (__src)
      {
        memcpy(a3 + 1, __src, __n);
      }

      else
      {
        v8 = 4;
      }

      result = 0;
      *a4 = v8;
    }
  }

  return result;
}

uint64_t LibSer_SEPControlResponse_Deserialize(unsigned int *a1, unint64_t a2, unsigned int **a3, void *a4)
{
  if (!a1)
  {
    return 4294967293;
  }

  result = 4294967293;
  if (a2 >= 4 && a3 && a4)
  {
    result = 0;
    v7 = *a1;
    v6 = a1 + 1;
    *a4 = v7;
    if (!v7)
    {
      v6 = 0;
    }

    *a3 = v6;
  }

  return result;
}

uint64_t LibSer_ACMDeserializeSEPControlCode()
{
  sub_100001760();
  if (v4 <= 0xA)
  {
    printf("%s: %s: called.\n", "ACM", "LibSer_ACMDeserializeSEPControlCode");
  }

  v10 = 0;
  v9 = 0;
  v5 = 4294967293;
  if (v1 && v2)
  {
    if (v2 < 0x18)
    {
      v5 = 4294967293;
    }

    else
    {
      v11 = 16;
      v6 = sub_10007BD10(v1, v2, &v11, &v10, &v9);
      if (v6)
      {
        v5 = v6;
      }

      else
      {
        v5 = 4294967293;
        if (v1 + v11 != -4 && *(v1 + v11) >= 4u)
        {
          v5 = 0;
          *v0 = *(v1 + v11 + 4);
        }
      }
    }
  }

  Util_SafeDeallocParameters(v10, v9);
  if (v5)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= *(v3 + 2304))
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibSer_ACMDeserializeSEPControlCode", v5);
  }

  return v5;
}

uint64_t crypto_generateKeyFromSharedInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, _OWORD *a7)
{
  if ((a1 - 3) < 0xFFFFFFFE)
  {
    sub_100001778();
    goto LABEL_31;
  }

  v7 = a4;
  if (a2)
  {
    v9 = a3 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (a1 == 1)
  {
    if (!a7)
    {
      v10 = 1;
    }

    if (v10)
    {
      sub_100001778();
    }

    else
    {
      ccsha256_di();
      v11 = cchkdf();
      v7 = sub_10007C0E8(v11, "cchkdf");
      if (v7)
      {
        v12 = 70;
      }

      else
      {
        *a7 = 0u;
        a7[1] = 0u;
        v12 = 10;
      }
    }

    if (v12 < gACMLoggingLevel)
    {
      goto LABEL_28;
    }

    v13 = v7;
    v14 = "crypto_generateKeyFromSharedInfo_version1";
  }

  else
  {
    if (a6)
    {
      v16 = a7 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      v10 = 1;
    }

    if (v10)
    {
      sub_100001778();
    }

    else
    {
      ccsha256_di();
      strlen(a6);
      v17 = cchkdf();
      v7 = sub_10007C0E8(v17, "cchkdf");
      if (v7)
      {
        v18 = 70;
      }

      else
      {
        *a7 = 0u;
        a7[1] = 0u;
        v18 = 10;
      }
    }

    if (v18 < gACMLoggingLevel)
    {
      goto LABEL_28;
    }

    v13 = v7;
    v14 = "crypto_generateKeyFromSharedInfo_version2";
  }

  printf("%s: %s: returning, err = %ld.\n", "ACM", v14, v13);
LABEL_28:
  if (v7)
  {
    v19 = 70;
  }

  else
  {
    v19 = 10;
  }

LABEL_31:
  if (v19 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "crypto_generateKeyFromSharedInfo", v7);
  }

  return v7;
}

uint64_t crypto_generateKey(uint64_t a1)
{
  v2 = 70;
  if (a1)
  {
    sub_10007C23C(a1, 32);
    sub_100001914();
    if (v3)
    {
      v2 = 10;
    }

    else
    {
      v2 = 70;
    }
  }

  else
  {
    v1 = 4294967293;
  }

  if (v2 >= gACMLoggingLevel)
  {
    sub_1000019E4();
    printf("%s: %s: returning, err = %ld.\n", v5, v6, v7);
  }

  return v1;
}

uint64_t crypto_encryptText(uint64_t a1, uint64_t a2)
{
  if ((a1 - 3) < 0xFFFFFFFE)
  {
    sub_100001778();
  }

  else
  {
    if (a1 == 1)
    {
      sub_10007C188(a1, a2);
      sub_10007C388();
    }

    else
    {
      sub_10007C188(a1, a2);
      sub_10007C548();
    }

    sub_100001914();
  }

  sub_100002370();
  if (v3)
  {
    sub_1000019E4();
    printf("%s: %s: returning, err = %ld.\n", v5, v6, v7);
  }

  return v2;
}

uint64_t crypto_decryptText(uint64_t a1, uint64_t a2)
{
  if ((a1 - 3) < 0xFFFFFFFE)
  {
    sub_100001778();
  }

  else
  {
    if (a1 == 1)
    {
      sub_10007C188(a1, a2);
      sub_10007C738();
    }

    else
    {
      sub_10007C188(a1, a2);
      sub_10007C914();
    }

    sub_100001914();
  }

  sub_100002370();
  if (v3)
  {
    sub_1000019E4();
    printf("%s: %s: returning, err = %ld.\n", v5, v6, v7);
  }

  return v2;
}

uint64_t crypto_deriveKeyAndEncryptData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  sub_10007C21C();
  if (v19)
  {
    v20 = v14 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20 || v15 == 0 || v16 == 0 || v17 == 0 || v18 == 0 || a10 == 0)
  {
    sub_100001778();
  }

  else
  {
    v26 = v11;
    if (a9)
    {
      v30 = sub_10007C1CC(v11, v12, v13, v14, v15, v16, v17, v18, v31, v32, v33, v34, v35[0], v35[1]);
      if (v30)
      {
        v10 = v30;
      }

      else
      {
        v10 = crypto_encryptText(v26, v35);
        if (!v10)
        {
          acm_explicit_bzero(v35, 0x20uLL);
        }
      }
    }

    else
    {
      v27 = 32;
      if (v11 != 1)
      {
        v27 = 33;
      }

      v28 = v27 + v17;
      if (v28)
      {
        v10 = 0;
        *a10 = v28;
      }

      else
      {
        v10 = 4294967280;
      }
    }
  }

  sub_100002370();
  if (v19)
  {
    sub_1000019E4();
    printf("%s: %s: returning, err = %ld.\n", v31, v32, v33);
  }

  return v10;
}

uint64_t crypto_deriveKeyAndDecryptData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10)
{
  sub_10007C21C();
  if (v19)
  {
    v20 = v14 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20 || v15 == 0 || v16 == 0 || v17 == 0 || a10 == 0)
  {
    sub_100001778();
    goto LABEL_26;
  }

  v25 = v11;
  if (!a9)
  {
    if (v11 == 1)
    {
      if (v17 <= 0x1F)
      {
        goto LABEL_25;
      }

      v26 = v17 - 32;
    }

    else
    {
      v26 = v17 - 33;
      if (v17 < 0x21)
      {
        goto LABEL_25;
      }
    }

    if (v26)
    {
      v10 = 0;
      *a10 = v26;
      goto LABEL_26;
    }

LABEL_25:
    v10 = 4294967280;
    goto LABEL_26;
  }

  v28 = sub_10007C1CC(v11, v12, v13, v14, v15, v16, v17, v18, v29, v30, v31, v32, v33[0], v33[1]);
  if (v28)
  {
    v10 = v28;
  }

  else
  {
    v10 = crypto_decryptText(v25, v33);
    if (!v10)
    {
      acm_explicit_bzero(v33, 0x20uLL);
    }
  }

LABEL_26:
  sub_100002370();
  if (v19)
  {
    sub_1000019E4();
    printf("%s: %s: returning, err = %ld.\n", v29, v30, v31);
  }

  return v10;
}

uint64_t crypto_generateRandomSaltLazily()
{
  sub_100001778();
  if (v1)
  {
    v3 = v2;
    if (v2)
    {
      v4 = v1;
      while (Util_isNullOrZeroMemory(v4, v3))
      {
        v5 = sub_10007C23C(v4, v3);
        if (v5)
        {
          v0 = v5;
          goto LABEL_8;
        }
      }

      v0 = 0;
    }
  }

LABEL_8:
  sub_100002370();
  if (v6)
  {
    sub_1000019E4();
    printf("%s: %s: returning, err = %ld.\n", v8, v9, v10);
  }

  return v0;
}