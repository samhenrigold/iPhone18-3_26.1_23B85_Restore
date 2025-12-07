void sub_100001718(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id, uint64_t), uint64_t a6)
{
  v94 = a5;
  v11 = &FindMyDeviceSharedConfigurationXPCService;
  if (!a2)
  {
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v18 = sub_100010774();
    sub_100002608(v18, qword_10001D870);
    v13 = sub_100010754();
    v19 = sub_100010984();
    if (os_log_type_enabled(v13, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v13, v19, "No preliminary verifying coverage.", v20, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_10001CE70 != -1)
  {
    swift_once();
  }

  v12 = sub_100010774();
  sub_100002608(v12, qword_10001D870);
  swift_errorRetain();
  v13 = sub_100010754();
  v14 = sub_100010974();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&_mh_execute_header, v13, v14, "Preliminary error verifying coverage: %@.", v15, 0xCu);
    sub_100002FD0(v16, &qword_10001CA80, &qword_100011358);
    v11 = &FindMyDeviceSharedConfigurationXPCService;

LABEL_10:

    goto LABEL_12;
  }

LABEL_12:
  v21 = MobileGestalt_get_current_device();
  if (v21)
  {
    v22 = v21;
    v23 = (a1 & 1);
    v24 = MobileGestalt_copy_serialNumber_obj();

    if (v24)
    {
      v25 = sub_100010854();
      v27 = v26;

      if (v25 == a3 && v27 == a4)
      {

        goto LABEL_18;
      }

      v28 = sub_100010B14();

      if (v28)
      {
LABEL_18:
        v91 = v23;
        v29 = dispatch_group_create();
        v30 = swift_allocObject();
        *(v30 + 16) = 0;
        v90 = (v30 + 16);
        v98 = v30;
        *(v30 + 24) = 0;
        v31 = [objc_opt_self() sharedInstance];
        v32 = [v31 getDevicesExcluding:1];

        sub_10000399C(0, &qword_10001CA68, PDRDevice_ptr);
        v33 = sub_100010934();

        if (v33 >> 62)
        {
          v35 = sub_100010AB4();
          if (v35)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v35)
          {
LABEL_20:
            if (v35 >= 1)
            {
              v88[1] = a6;
              v36 = 0;
              v101 = PDRDevicePropertyKeySerialNumber;
              v102 = v33 & 0xC000000000000001;
              v95 = &v104;
              *&v34 = 136315138;
              v97 = v34;
              *&v34 = 136315394;
              v89 = v34;
              v99 = v35;
              v100 = v33;
              v93 = v29;
              while (1)
              {
                v37 = v102 ? sub_100010A94() : *(v33 + 8 * v36 + 32);
                v38 = v37;
                if ([v37 valueForProperty:v101])
                {
                  sub_100010A04();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v109 = 0u;
                  v110 = 0u;
                }

                aBlock = v109;
                v104 = v110;
                if (!*(&v110 + 1))
                {
                  break;
                }

                if ((swift_dynamicCast() & 1) == 0)
                {
                  goto LABEL_35;
                }

                v39 = v107;
                v40 = v108;
                dispatch_group_enter(v29);
                v41 = swift_allocObject();
                v41[2] = v98;
                v41[3] = v39;
                v41[4] = v40;
                v41[5] = v29;
                if (NDOACCoverageDetailsProvider)
                {
                  v42 = objc_opt_self();

                  v43 = v29;

                  v44 = sub_100010824();
                  v45 = swift_allocObject();
                  v45[2] = v39;
                  v45[3] = v40;
                  v45[4] = sub_100002CCC;
                  v45[5] = v41;
                  v105 = sub_100002BA4;
                  v106 = v45;
                  *&aBlock = _NSConcreteStackBlock;
                  *(&aBlock + 1) = 1107296256;
                  *&v104 = sub_100002640;
                  *(&v104 + 1) = &unk_100019080;
                  v46 = _Block_copy(&aBlock);

                  [v42 getCachedCoverageDetailsForSerialNumber:v44 requester:0 completion:v46];

                  _Block_release(v46);
                }

                else
                {
                  sub_100003030();
                  swift_allocError();
                  *v57 = 7;

                  v96 = v29;

                  swift_errorRetain();
                  if (v11[51].name != -1)
                  {
                    swift_once();
                  }

                  v58 = sub_100010774();
                  sub_100002608(v58, qword_10001D870);

                  swift_errorRetain();
                  v59 = sub_100010754();
                  v60 = sub_100010974();

                  if (os_log_type_enabled(v59, v60))
                  {
                    v92 = v59;
                    v61 = swift_slowAlloc();
                    v62 = swift_slowAlloc();
                    v63 = swift_slowAlloc();
                    *&aBlock = v63;
                    *v61 = v89;
                    *(v61 + 4) = sub_100002BB4(v39, v40, &aBlock);
                    *(v61 + 12) = 2112;
                    swift_errorRetain();
                    v64 = _swift_stdlib_bridgeErrorToNSError();
                    *(v61 + 14) = v64;
                    *v62 = v64;
                    _os_log_impl(&_mh_execute_header, v92, v60, "Complete device (serialNumber: %s) coverage check failed: %@", v61, 0x16u);
                    sub_100002FD0(v62, &qword_10001CA80, &qword_100011358);
                    v11 = &FindMyDeviceSharedConfigurationXPCService;

                    sub_100002C80(v63);
                  }

                  else
                  {
                  }

                  dispatch_group_leave(v96);

                  v29 = v93;
                }

                v35 = v99;
                v33 = v100;
LABEL_23:
                if (v35 == ++v36)
                {

                  goto LABEL_61;
                }
              }

              sub_100002FD0(&aBlock, &qword_10001CA70, &unk_100011B70);
LABEL_35:
              if (v11[51].name != -1)
              {
                swift_once();
              }

              v47 = sub_100010774();
              sub_100002608(v47, qword_10001D870);
              v48 = v38;
              v49 = sub_100010754();
              v50 = sub_100010974();

              if (os_log_type_enabled(v49, v50))
              {
                v51 = swift_slowAlloc();
                v52 = swift_slowAlloc();
                *&aBlock = v52;
                *v51 = v97;
                v53 = sub_1000109E4();
                if (v54)
                {
                  v55 = v54;
                }

                else
                {
                  v53 = 0x3E6C696E3CLL;
                  v55 = 0xE500000000000000;
                }

                v56 = sub_100002BB4(v53, v55, &aBlock);

                *(v51 + 4) = v56;
                _os_log_impl(&_mh_execute_header, v49, v50, "Failed to get serialNumber for paired device: %s", v51, 0xCu);
                sub_100002C80(v52);
                v35 = v99;

                v33 = v100;
              }

              else
              {
              }

              goto LABEL_23;
            }

            __break(1u);
            goto LABEL_76;
          }
        }

LABEL_61:
        v71 = sub_1000107E4();
        v72 = *(v71 - 8);
        v73 = __chkstk_darwin(v71);
        v75 = v88 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
        __chkstk_darwin(v73);
        v77 = v88 - v76;
        sub_1000107D4();
        if (qword_10001CE50 != -1)
        {
          swift_once();
        }

        v78 = sub_100010784();
        sub_100002608(v78, qword_10001CE58);
        sub_1000107F4();
        v79 = *(v72 + 8);
        v79(v77, v71);
        v80 = sub_100010994();
        v79(v75, v71);
        v81 = v90;
        os_unfair_lock_lock(v90);
        v82 = *(v98 + 24);
        os_unfair_lock_unlock(v81);
        v83 = v91 | 4;
        if (v82 < 2)
        {
          v83 = v91;
        }

        if (v82 == 1)
        {
          v31 = (v91 | 2);
        }

        else
        {
          v31 = v83;
        }

        if ((v80 & 1) == 0)
        {
          v94(v31, 0);
LABEL_74:

          return;
        }

        if (v11[51].name == -1)
        {
LABEL_70:
          v84 = sub_100010774();
          sub_100002608(v84, qword_10001D870);
          v85 = sub_100010754();
          v86 = sub_100010974();
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            *v87 = 0;
            _os_log_impl(&_mh_execute_header, v85, v86, "Complete device coverage timed out", v87, 2u);
          }

          v94(v31, 0);
          goto LABEL_74;
        }

LABEL_76:
        swift_once();
        goto LABEL_70;
      }
    }

    if (a2)
    {
      swift_errorRetain();
      if (v11[51].name != -1)
      {
        swift_once();
      }

      v65 = sub_100010774();
      sub_100002608(v65, qword_10001D870);
      swift_errorRetain();
      v66 = sub_100010754();
      v67 = sub_100010974();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *v68 = 138412290;
        swift_errorRetain();
        v70 = _swift_stdlib_bridgeErrorToNSError();
        *(v68 + 4) = v70;
        *v69 = v70;
        _os_log_impl(&_mh_execute_header, v66, v67, "Final error verifying coverage: %@.", v68, 0xCu);
        sub_100002FD0(v69, &qword_10001CA80, &qword_100011358);
      }

      swift_errorRetain();
      v94(0, a2);
    }

    else
    {
      v94(v23, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100002504()
{
  v1 = sub_100004898(&qword_10001CBF0, &qword_1000116E8);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);
  v2 = sub_100004898(&qword_10001CBF8, &qword_1000116F0);
  (*(*(v2 - 8) + 8))(v0 + 24, v2);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000025BC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002608(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_100002640(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1000026CC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(id, uint64_t))
{
  if (a1)
  {
    v29 = a1;
    v8 = [v29 hasTheftAndLoss];
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v9 = sub_100010774();
    sub_100002608(v9, qword_10001D870);

    v10 = sub_100010754();
    v11 = sub_100010984();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v30 = v13;
      *v12 = 67109378;
      *(v12 + 4) = v8;
      *(v12 + 8) = 2080;
      *(v12 + 10) = sub_100002BB4(a3, a4, &v30);
      _os_log_impl(&_mh_execute_header, v10, v11, "Found device coverage: %{BOOL}d, for serialNumber: %s", v12, 0x12u);
      sub_100002C80(v13);
    }

    a5(v8, 0);
  }

  else
  {
    if (a2)
    {
      swift_errorRetain();
      if (qword_10001CE70 != -1)
      {
        swift_once();
      }

      v15 = sub_100010774();
      sub_100002608(v15, qword_10001D870);

      swift_errorRetain();
      v16 = sub_100010754();
      v17 = sub_100010974();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v30 = v20;
        *v18 = 136315394;
        *(v18 + 4) = sub_100002BB4(a3, a4, &v30);
        *(v18 + 12) = 2112;
        swift_errorRetain();
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 14) = v21;
        *v19 = v21;
        _os_log_impl(&_mh_execute_header, v16, v17, "Failed to get device coverage for serialNumber: %s, error: %@", v18, 0x16u);
        sub_100002FD0(v19, &qword_10001CA80, &qword_100011358);

        sub_100002C80(v20);
      }

      swift_errorRetain();
      a5(0, a2);
    }

    else
    {
      if (qword_10001CE70 != -1)
      {
        swift_once();
      }

      v22 = sub_100010774();
      sub_100002608(v22, qword_10001D870);

      v23 = sub_100010754();
      v24 = sub_100010974();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v30 = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_100002BB4(a3, a4, &v30);
        _os_log_impl(&_mh_execute_header, v23, v24, "Failed to get device coverage for serialNumber: %s", v25, 0xCu);
        sub_100002C80(v26);
      }

      sub_100003030();
      v27 = swift_allocError();
      *v28 = 0;
      a5(0, v27);
    }
  }
}

unint64_t sub_100002BB4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000039E4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100003AF0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002C80(v11);
  return v7;
}

uint64_t sub_100002C80(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_100002CCC(char a1, uint64_t a2)
{
  v5 = v2[3];
  v4 = v2[4];
  v6 = v2[5];
  if (a1)
  {
    v7 = v2[2];
    os_unfair_lock_lock((v7 + 16));
    v8 = *(v7 + 24);
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      __break(1u);
      return;
    }

    *(v7 + 24) = v10;
    os_unfair_lock_unlock((v7 + 16));
  }

  if (a2)
  {
    swift_errorRetain();
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v11 = sub_100010774();
    sub_100002608(v11, qword_10001D870);
    swift_errorRetain();

    v12 = sub_100010754();
    v13 = sub_100010974();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v14 = 136315394;
      *(v14 + 4) = sub_100002BB4(v5, v4, &v18);
      *(v14 + 12) = 2112;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v17;
      *v15 = v17;
      _os_log_impl(&_mh_execute_header, v12, v13, "Complete device (serialNumber: %s) coverage check failed: %@", v14, 0x16u);
      sub_100002FD0(v15, &qword_10001CA80, &qword_100011358);

      sub_100002C80(v16);
    }

    else
    {
    }
  }

  dispatch_group_leave(v6);
}

void sub_100002EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1000105B4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_100002F74(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 40));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100002FD0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004898(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100003030()
{
  result = qword_10001CE78;
  if (!qword_10001CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CE78);
  }

  return result;
}

uint64_t sub_100003084(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_10000314C(uint64_t a1, unint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  v5[2] = a3;
  v6 = objc_opt_self();
  _Block_copy(a3);
  v7 = [v6 sharedInstance];
  v8 = [v7 getDevicesExcluding:0];

  sub_10000399C(0, &qword_10001CA68, PDRDevice_ptr);
  v9 = sub_100010934();

  if (v9 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100010AB4())
  {
    v39 = a3;
    v40 = v5;
    v11 = 0;
    v12 = PDRDevicePropertyKeyUDID;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = sub_100010A94();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v13 = *(v9 + 8 * v11 + 32);
      }

      v5 = v13;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = [v13 valueForProperty:v12];
      if (v15)
      {
        a3 = v15;
        sub_100010A04();
        swift_unknownObjectRelease();
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
      }

      aBlock = v48;
      v43 = v49;
      if (*(&v49 + 1))
      {
        if (swift_dynamicCast())
        {
          a3 = v47;
          if (v46 == a1 && v47 == a2)
          {

LABEL_23:

            if ([v5 valueForProperty:PDRDevicePropertyKeySerialNumber])
            {
              sub_100010A04();
              swift_unknownObjectRelease();
            }

            else
            {
              v48 = 0u;
              v49 = 0u;
            }

            aBlock = v48;
            v43 = v49;
            if (*(&v49 + 1))
            {
              if (swift_dynamicCast())
              {
                v18 = v46;
                v17 = v47;
                if (qword_10001CE70 != -1)
                {
                  swift_once();
                }

                v19 = sub_100010774();
                sub_100002608(v19, qword_10001D870);

                v20 = sub_100010754();
                v21 = sub_100010984();

                if (os_log_type_enabled(v20, v21))
                {
                  v22 = swift_slowAlloc();
                  *&aBlock = swift_slowAlloc();
                  *v22 = 136315394;
                  *(v22 + 4) = sub_100002BB4(v18, v17, &aBlock);
                  *(v22 + 12) = 2080;
                  *(v22 + 14) = sub_100002BB4(a1, a2, &aBlock);
                  _os_log_impl(&_mh_execute_header, v20, v21, "Looking up serial number: %s for UDID: %s", v22, 0x16u);
                  swift_arrayDestroy();
                }

                v23 = swift_allocObject();
                *(v23 + 16) = sub_100002F64;
                *(v23 + 24) = v40;
                if (NDOACCoverageDetailsProvider)
                {
                  v24 = objc_opt_self();

                  v25 = sub_100010824();
                  v26 = swift_allocObject();
                  v26[2] = v18;
                  v26[3] = v17;
                  v26[4] = sub_10000FF28;
                  v26[5] = v23;
                  v44 = sub_100002BA4;
                  v45 = v26;
                  *&aBlock = _NSConcreteStackBlock;
                  *(&aBlock + 1) = 1107296256;
                  *&v43 = sub_100002640;
                  *(&v43 + 1) = &unk_100018E78;
                  v27 = _Block_copy(&aBlock);

                  [v24 getCachedCoverageDetailsForSerialNumber:v25 requester:0 completion:v27];

                  _Block_release(v27);

                  return;
                }

                sub_100003030();
                swift_allocError();
                *v35 = 7;
                v36 = sub_1000105B4();
                (v39)[2](v39, 0, v36);

                goto LABEL_40;
              }
            }

            else
            {
              sub_100002FD0(&aBlock, &qword_10001CA70, &unk_100011B70);
            }

            if (qword_10001CE70 != -1)
            {
              swift_once();
            }

            v28 = sub_100010774();
            sub_100002608(v28, qword_10001D870);

            v29 = sub_100010754();
            v30 = sub_100010974();

            if (os_log_type_enabled(v29, v30))
            {
              v31 = swift_slowAlloc();
              v32 = swift_slowAlloc();
              *&aBlock = v32;
              *v31 = 136315138;
              *(v31 + 4) = sub_100002BB4(a1, a2, &aBlock);
              _os_log_impl(&_mh_execute_header, v29, v30, "Failed to get serialNumber for device with UDID: %s", v31, 0xCu);
              sub_100002C80(v32);
            }

            sub_100003030();
            swift_allocError();
            *v33 = 2;
            v34 = sub_1000105B4();
            (v39)[2](v39, 0, v34);

LABEL_40:

            goto LABEL_47;
          }

          v16 = sub_100010B14();

          if (v16)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {

        sub_100002FD0(&aBlock, &qword_10001CA70, &unk_100011B70);
      }

      ++v11;
      if (v14 == i)
      {

        a3 = v39;
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

LABEL_46:
  sub_100003030();
  swift_allocError();
  *v37 = 1;
  v38 = sub_1000105B4();
  (a3)[2](a3, 0, v38);

LABEL_47:
}

uint64_t sub_10000395C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000399C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1000039E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000B604(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100010AA4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_100003AF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003B4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100003B88(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  ObjectType = swift_getObjectType();
  if (sub_100010514())
  {
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = sub_100010824();
    v11 = [v9 BOOLForKey:v10];

    if (v11)
    {
      a3(1, 0);
      return;
    }
  }

  if (a2)
  {
    v12 = a2;
  }

  else
  {
    v13 = MobileGestalt_get_current_device();
    if (!v13)
    {
      __break(1u);
      return;
    }

    v14 = v13;
    v15 = MobileGestalt_copy_serialNumber_obj();

    if (!v15)
    {
      sub_100003030();
      v24 = swift_allocError();
      *v25 = 2;
      a3(0, v24);
      goto LABEL_14;
    }

    a1 = sub_100010854();
    v12 = v16;
  }

  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = v12;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = ObjectType;
  if (NDOACCoverageDetailsProvider)
  {
    v18 = objc_opt_self();

    v19 = sub_100010824();
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = v12;
    v20[4] = sub_10000AF98;
    v20[5] = v17;
    v26[4] = sub_100002BA8;
    v26[5] = v20;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 1107296256;
    v26[2] = sub_100002640;
    v26[3] = &unk_100018B28;
    v21 = _Block_copy(v26);

    [v18 getCachedCoverageDetailsForSerialNumber:v19 requester:0 completion:v21];

    _Block_release(v21);

    return;
  }

  sub_100003030();
  v22 = swift_allocError();
  *v23 = 7;

  sub_100001718(0, v22, a1, v12, a3, a4);

LABEL_14:
}

uint64_t sub_100003FD4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004028()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100004070()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000040B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000040E8()
{
  v1 = *(type metadata accessor for LocalizedStringsEndpoint(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = sub_100010574();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = *(v0 + v4 + 16);
  if (v6 >> 60 != 15)
  {
    sub_10000F124(*(v0 + v4 + 8), v6);
  }

  return _swift_deallocObject(v0, ((((((v4 + 31) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_100004260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100010684();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000430C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100010684();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000043B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100010574();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000441C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100010574();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000044D0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_100010784();
  sub_10000EFF4(v5, a2);
  *sub_100002608(v5, a2) = a3;
  v6 = *(*(v5 - 8) + 104);

  return v6();
}

Swift::Int sub_100004578()
{
  v1 = *v0;
  sub_100010B84();
  sub_100010B94(v1);
  return sub_100010BA4();
}

Swift::Int sub_1000045EC(uint64_t a1)
{
  v2 = *v1;
  sub_100010B84();
  sub_100010B94(v2);
  return sub_100010BA4();
}

uint64_t sub_100004640()
{
  v0 = sub_1000109A4();
  __chkstk_darwin(v0);
  v1 = sub_1000109B4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000107C4();
  __chkstk_darwin(v5 - 8);
  sub_10000399C(0, &qword_10001CA40, OS_dispatch_queue_ptr);
  sub_1000107B4();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v1);
  v7[1] = &_swiftEmptyArrayStorage;
  sub_10000D290(&qword_10001CA48, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004898(&qword_10001CA50, &unk_100011340);
  sub_10000D2D8(&qword_10001CA58, &qword_10001CA50, &unk_100011340);
  sub_100010A24();
  return sub_1000109D4();
}

uint64_t sub_100004898(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000048E0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id sub_100004928()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_10000495C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1000109A4();
  __chkstk_darwin(v1);
  v2 = sub_1000109B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000107C4();
  __chkstk_darwin(v6 - 8);
  v11 = OBJC_IVAR____TtC41FindMyDeviceSharedConfigurationXPCService41FindMyDeviceSharedConfigurationXPCService_downloadSerialQueue;
  v10 = sub_10000399C(0, &qword_10001CA40, OS_dispatch_queue_ptr);
  sub_1000107B4();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  v14 = &_swiftEmptyArrayStorage;
  sub_10000D290(&qword_10001CA48, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004898(&qword_10001CA50, &unk_100011340);
  sub_10000D2D8(&qword_10001CA58, &qword_10001CA50, &unk_100011340);
  sub_100010A24();
  v7 = sub_1000109D4();
  v8 = ObjectType;
  *&v0[v11] = v7;
  v13.receiver = v0;
  v13.super_class = v8;
  return objc_msgSendSuper2(&v13, "init");
}

id sub_100004C10()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100004C58()
{
  if (qword_10001CE70 != -1)
  {
    swift_once();
  }

  v0 = sub_100010774();

  return sub_100002608(v0, qword_10001D870);
}

void sub_100004CBC(uint64_t a1, unint64_t a2, void (*a3)(void, uint64_t), void *a4)
{
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 getDevicesExcluding:0];

  sub_10000399C(0, &qword_10001CA68, PDRDevice_ptr);
  v9 = sub_100010934();

  if (v9 >> 62)
  {
LABEL_43:
    v10 = sub_100010AB4();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_44:

LABEL_45:
    sub_100003030();
    v37 = swift_allocError();
    *v38 = 1;
    a3(0, v37);
    goto LABEL_46;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_44;
  }

LABEL_3:
  v39 = a3;
  v40 = a4;
  v11 = 0;
  v12 = PDRDevicePropertyKeyUDID;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = sub_100010A94();
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v13 = *(v9 + 8 * v11 + 32);
    }

    a4 = v13;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v15 = [v13 valueForProperty:v12];
    if (v15)
    {
      a3 = v15;
      sub_100010A04();
      swift_unknownObjectRelease();
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
    }

    aBlock = v48;
    v43 = v49;
    if (*(&v49 + 1))
    {
      break;
    }

    sub_100002FD0(&aBlock, &qword_10001CA70, &unk_100011B70);
LABEL_5:
    ++v11;
    if (v14 == v10)
    {

      a3 = v39;
      goto LABEL_45;
    }
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:

    goto LABEL_5;
  }

  a3 = v47;
  if (v46 != a1 || v47 != a2)
  {
    v16 = sub_100010B14();

    if (v16)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

LABEL_23:

  if ([a4 valueForProperty:PDRDevicePropertyKeySerialNumber])
  {
    sub_100010A04();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  aBlock = v48;
  v43 = v49;
  if (!*(&v49 + 1))
  {
    sub_100002FD0(&aBlock, &qword_10001CA70, &unk_100011B70);
    goto LABEL_35;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_35:
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v28 = sub_100010774();
    sub_100002608(v28, qword_10001D870);

    v29 = sub_100010754();
    v30 = sub_100010974();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&aBlock = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_100002BB4(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to get serialNumber for device with UDID: %s", v31, 0xCu);
      sub_100002C80(v32);
    }

    sub_100003030();
    v33 = swift_allocError();
    *v34 = 2;
    v39(0, v33);

    goto LABEL_46;
  }

  v18 = v46;
  v17 = v47;
  if (qword_10001CE70 != -1)
  {
    swift_once();
  }

  v19 = sub_100010774();
  sub_100002608(v19, qword_10001D870);

  v20 = sub_100010754();
  v21 = sub_100010984();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_100002BB4(v18, v17, &aBlock);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_100002BB4(a1, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v20, v21, "Looking up serial number: %s for UDID: %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v39;
  *(v23 + 24) = v40;
  if (NDOACCoverageDetailsProvider)
  {
    v24 = objc_opt_self();

    v25 = sub_100010824();
    v26 = swift_allocObject();
    v26[2] = v18;
    v26[3] = v17;
    v26[4] = sub_100003B5C;
    v26[5] = v23;
    v44 = sub_100002BA4;
    v45 = v26;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v43 = sub_100002640;
    *(&v43 + 1) = &unk_100018BA0;
    v27 = _Block_copy(&aBlock);

    [v24 getCachedCoverageDetailsForSerialNumber:v25 requester:0 completion:v27];

    _Block_release(v27);
    return;
  }

  sub_100003030();
  v35 = swift_allocError();
  *v36 = 7;
  v39(0, v35);

LABEL_46:
}

uint64_t sub_100005440(void *a1, void (*a2)(void), uint64_t a3)
{

  sub_10000CF18(a1, v3, a2, a3);
}

id sub_1000054A0(void *a1, uint64_t (*a2)(void, void), uint64_t a3)
{
  if (sub_100010514())
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = sub_100010824();
    v8 = [v6 BOOLForKey:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 fmipActive];

  if (v10)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v15 = sub_100010774();
    sub_100002608(v15, qword_10001D870);
    v16 = sub_100010754();
    v17 = sub_100010984();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_16;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Find My iPhone is enabled, not posting CFU";
    goto LABEL_15;
  }

  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = [result aa_primaryAppleAccount];

  if (!v14)
  {
    if (v8)
    {
      goto LABEL_18;
    }

    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v22 = sub_100010774();
    sub_100002608(v22, qword_10001D870);
    v16 = sub_100010754();
    v17 = sub_100010984();
    if (!os_log_type_enabled(v16, v17))
    {
LABEL_16:

      return a2(0, 0);
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Device is signed out of iCloud, not posting CFU";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v16, v17, v19, v18, 2u);

    goto LABEL_16;
  }

LABEL_18:
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = a1;

  v21 = a1;
  sub_100003B88(0, 0, sub_10000D274, v20);
}

void sub_10000587C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1000105B4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_1000058E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, void *a5)
{
  if (!a1)
  {
    if (a2)
    {
      swift_errorRetain();
      if (qword_10001CE70 != -1)
      {
        swift_once();
      }

      v40 = sub_100010774();
      sub_100002608(v40, qword_10001D870);
      swift_errorRetain();
      v41 = sub_100010754();
      v42 = sub_100010974();

      if (!os_log_type_enabled(v41, v42))
      {

        goto LABEL_48;
      }

      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138543362;
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v45;
      *v44 = v45;
      _os_log_impl(&_mh_execute_header, v41, v42, "No device coverage. Cannot queue CFU. error %{public}@", v43, 0xCu);
      sub_100002FD0(v44, &qword_10001CA80, &qword_100011358);
    }

    else
    {
      if (qword_10001CE70 != -1)
      {
        swift_once();
      }

      v58 = sub_100010774();
      sub_100002608(v58, qword_10001D870);
      v41 = sub_100010754();
      v59 = sub_100010984();
      if (os_log_type_enabled(v41, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v41, v59, "No device coverage. Cannot queue CFU.", v60, 2u);
      }
    }

LABEL_48:
    a3(0, a2);
    return;
  }

  v7 = [objc_allocWithZone(FLFollowUpItem) init];
  v8 = sub_100010824();
  [v7 setUniqueIdentifier:v8];

  [v7 setGroupIdentifier:FLGroupIdentifierDevice];
  v9 = [a5 title];
  if (!v9)
  {
    sub_100010854();
    v9 = sub_100010824();
  }

  [v7 setTitle:v9];

  v10 = [a5 informativeText];
  if (!v10)
  {
    sub_100010854();
    v10 = sub_100010824();
  }

  [v7 setInformativeText:v10];

  v11 = sub_100010824();
  [v7 setTargetBundleIdentifier:v11];

  v12 = sub_100010824();
  [v7 setExtensionIdentifier:v12];

  sub_100004898(&qword_10001CBC8, &qword_1000116C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100011310;
  v70[0] = 0xD00000000000001CLL;
  v70[1] = 0x8000000100011ED0;
  sub_100010A64();
  v14 = [objc_allocWithZone(NSNumber) initWithBool:1];
  *(inited + 96) = sub_10000399C(0, &qword_10001CB80, NSNumber_ptr);
  *(inited + 72) = v14;
  sub_10000D9B8(inited);
  swift_setDeallocating();
  sub_100002FD0(inited + 32, &qword_10001CBD0, &qword_1000116D0);
  isa = sub_100010804().super.isa;

  [v7 setUserInfo:isa];

  v16 = [objc_allocWithZone(FLFollowUpNotification) init];
  v17 = [v7 title];
  [v16 setTitle:v17];

  v18 = [a5 informativeText];
  if (!v18)
  {
    sub_100010854();
    v18 = sub_100010824();
  }

  [v16 setInformativeText:v18];

  [v16 setFrequency:0.0];
  [v16 setFirstNotificationDelay:0.0];
  [v7 setNotification:v16];
  v19 = objc_opt_self();
  v20 = sub_100010824();
  v21 = [v19 localizedStringWithKey:v20];

  if (!v21)
  {
    sub_100010854();
    v21 = sub_100010824();
  }

  v22 = [objc_opt_self() actionWithLabel:v21 url:0];

  if (v22)
  {
    v23 = [objc_allocWithZone(NSUUID) init];
    v24 = [v23 UUIDString];

    if (!v24)
    {
      sub_100010854();
      v24 = sub_100010824();
    }

    [v22 setIdentifier:v24];

    v25 = [v7 notification];
    if (v25)
    {
      v26 = v25;
      [v25 setActivateAction:v22];

      sub_100004898(&qword_10001CBD8, &qword_1000116D8);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_100011320;
      *(v27 + 32) = v22;
      sub_10000399C(0, &qword_10001CBE0, FLFollowUpAction_ptr);
      v28 = v22;
      v29 = sub_100010924().super.isa;

      [v7 setActions:v29];

      v30 = objc_allocWithZone(FLFollowUpController);
      v31 = sub_100010824();
      v32 = [v30 initWithClientIdentifier:v31];

      if (v32)
      {
        v70[0] = 0;
        if ([v32 postFollowUpItem:v7 error:v70])
        {
          v33 = qword_10001CE70;
          v34 = v70[0];
          if (v33 != -1)
          {
            swift_once();
          }

          v35 = sub_100010774();
          sub_100002608(v35, qword_10001D870);
          v36 = sub_100010754();
          v37 = sub_100010984();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&_mh_execute_header, v36, v37, "Found TnL coverage. CFU posted.", v38, 2u);
          }

          a3(1, 0);
        }

        else
        {
          v61 = v70[0];
          v62 = sub_1000105C4();

          swift_willThrow();
          if (qword_10001CE70 != -1)
          {
            swift_once();
          }

          v63 = sub_100010774();
          sub_100002608(v63, qword_10001D870);
          swift_errorRetain();
          v64 = sub_100010754();
          v65 = sub_100010974();

          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            *v66 = 138412290;
            swift_errorRetain();
            v68 = _swift_stdlib_bridgeErrorToNSError();
            *(v66 + 4) = v68;
            *v67 = v68;
            _os_log_impl(&_mh_execute_header, v64, v65, "Failed to post the follow up with error: %@", v66, 0xCu);
            sub_100002FD0(v67, &qword_10001CA80, &qword_100011358);
          }

          swift_errorRetain();
          a3(1, v62);
        }
      }

      else
      {
        if (qword_10001CE70 != -1)
        {
          swift_once();
        }

        v52 = sub_100010774();
        sub_100002608(v52, qword_10001D870);
        v53 = sub_100010754();
        v54 = sub_100010974();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&_mh_execute_header, v53, v54, "Failed to create the FU controller", v55, 2u);
        }

        sub_100003030();
        v56 = swift_allocError();
        *v57 = 9;
        a3(1, v56);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v46 = sub_100010774();
    sub_100002608(v46, qword_10001D870);
    v47 = sub_100010754();
    v48 = sub_100010974();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Failed to create the follow-up action", v49, 2u);
    }

    sub_100003030();
    v50 = swift_allocError();
    *v51 = 8;
    a3(1, v50);
  }
}

void sub_1000065FC(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1000105B4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_10000666C(void (*a1)(void))
{
  v2 = objc_allocWithZone(FLFollowUpController);
  v3 = sub_100010824();
  v4 = [v2 initWithClientIdentifier:v3];

  if (v4)
  {
    sub_100004898(&qword_10001CA78, &qword_100011350);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100011310;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 32) = 0xD000000000000010;
    *(v5 + 40) = 0x8000000100011BD0;
    isa = sub_100010924().super.isa;

    v22 = 0;
    v7 = [v4 clearPendingFollowUpItemsWithUniqueIdentifiers:isa error:&v22];

    if (v7)
    {
      v8 = v22;
      (a1)(0);
    }

    else
    {
      v14 = v22;
      v15 = sub_1000105C4();

      swift_willThrow();
      if (qword_10001CE70 != -1)
      {
        swift_once();
      }

      v16 = sub_100010774();
      sub_100002608(v16, qword_10001D870);
      swift_errorRetain();
      v17 = sub_100010754();
      v18 = sub_100010974();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        swift_errorRetain();
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v21;
        *v20 = v21;
        _os_log_impl(&_mh_execute_header, v17, v18, "Unable to clear pending followup for id: com.apple.findmy with error: %@", v19, 0xCu);
        sub_100002FD0(v20, &qword_10001CA80, &qword_100011358);
      }

      swift_errorRetain();
      (a1)(v15);
    }
  }

  else
  {
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v9 = sub_100010774();
    sub_100002608(v9, qword_10001D870);
    v10 = sub_100010754();
    v11 = sub_100010974();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to create the Follow Up controller", v12, 2u);
    }

    sub_100003030();
    swift_allocError();
    *v13 = 9;
    a1();
  }
}

uint64_t sub_100006AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100010794();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000107C4();
  v13 = *(v21 - 8);
  __chkstk_darwin(v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v4[OBJC_IVAR____TtC41FindMyDeviceSharedConfigurationXPCService41FindMyDeviceSharedConfigurationXPCService_downloadSerialQueue];
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a4;
  aBlock[4] = sub_10000D280;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000706C;
  aBlock[3] = &unk_100018C18;
  v17 = _Block_copy(aBlock);
  v18 = v4;

  sub_1000107A4();
  v22 = &_swiftEmptyArrayStorage;
  sub_10000D290(&qword_10001CA88, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004898(&qword_10001CA90, &unk_100011360);
  sub_10000D2D8(&qword_10001CA98, &qword_10001CA90, &unk_100011360);
  sub_100010A24();
  sub_1000109C4();
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v21);
}

void sub_100006DC4(void *a1, NSObject *a2, uint64_t a3, void (*a4)(uint64_t), void *a5)
{
  v10 = sub_1000107E4();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v18 = v17;

  sub_10000E73C(a2, a3, a1, v18, a4, a5);

  sub_1000107D4();
  if (qword_10001CE30 != -1)
  {
    swift_once();
  }

  v19 = sub_100010784();
  sub_100002608(v19, qword_10001CE38);
  sub_1000107F4();
  v20 = *(v11 + 8);
  v20(v14, v10);
  if (sub_100010994())
  {
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v21 = sub_100010774();
    sub_100002608(v21, qword_10001D870);
    v22 = sub_100010754();
    v23 = sub_100010974();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Download exceeded timeout, allowing next download to proceed concurrently", v24, 2u);
    }

    else
    {
    }

    v20(v16, v10);
  }

  else
  {
    v20(v16, v10);
  }
}

uint64_t sub_10000706C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100007168@<X0>(uint64_t *a3@<X8>)
{
  v4 = sub_100004898(&qword_10001CBC0, &qword_1000116C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v62 - v5;
  v7 = sub_100010684();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v62 - v12;
  v14 = [objc_opt_self() sharedInstance];
  v15 = sub_100010824();

  v16 = [v14 contentsWithLocale:v15];

  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = sub_100010814();

  v67 = sub_100010854();
  v68 = v18;
  sub_100010A64();
  if (!*(v17 + 16))
  {
    goto LABEL_12;
  }

  v19 = sub_10000B9D4(v69);
  if ((v20 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_100003AF0(*(v17 + 56) + 32 * v19, v70);
  sub_10000F8D8(v69);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v21 = v68;
  v66 = v67;
  v67 = sub_100010854();
  v68 = v22;
  sub_100010A64();
  if (!*(v17 + 16) || (v23 = sub_10000B9D4(v69), (v24 & 1) == 0))
  {

LABEL_12:

    sub_10000F8D8(v69);
LABEL_13:
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v29 = sub_100010774();
    sub_100002608(v29, qword_10001D870);
    v30 = sub_100010754();
    v31 = sub_100010974();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v69[0] = v33;
      *v32 = 136315138;
      v34 = sub_100010854();
      v36 = sub_100002BB4(v34, v35, v69);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Missing %s field", v32, 0xCu);
      sub_100002C80(v33);
    }

    goto LABEL_17;
  }

  sub_100003AF0(*(v17 + 56) + 32 * v23, v70);
  sub_10000F8D8(v69);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v64 = v67;
  v65 = v68;
  v67 = sub_100010854();
  v68 = v25;
  sub_100010A64();
  if (!*(v17 + 16) || (v26 = sub_10000B9D4(v69), (v27 & 1) == 0))
  {

    sub_10000F8D8(v69);
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_23;
  }

  sub_100003AF0(*(v17 + 56) + 32 * v26, v70);
  sub_10000F8D8(v69);
  v28 = swift_dynamicCast();
  (*(v8 + 56))(v6, v28 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

LABEL_23:
    sub_100002FD0(v6, &qword_10001CBC0, &qword_1000116C0);
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v39 = sub_100010774();
    sub_100002608(v39, qword_10001D870);
    v30 = sub_100010754();
    v40 = sub_100010974();
    if (os_log_type_enabled(v30, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v69[0] = v42;
      *v41 = 136315138;
      v43 = sub_100010854();
      v45 = sub_100002BB4(v43, v44, v69);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v30, v40, "Missing %s field", v41, 0xCu);
      sub_100002C80(v42);
    }

    sub_10000F124(v64, v65);
LABEL_17:

LABEL_18:
    v37 = type metadata accessor for Configuration(0);
    return (*(*(v37 - 8) + 56))(a3, 1, 1, v37);
  }

  v63 = *(v8 + 32);
  v63(v13, v6, v7);
  v67 = sub_100010854();
  v68 = v46;
  sub_100010A64();
  if (!*(v17 + 16) || (v47 = sub_10000B9D4(v69), (v48 & 1) == 0))
  {

    sub_10000F8D8(v69);
LABEL_33:
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v54 = sub_100010774();
    sub_100002608(v54, qword_10001D870);
    v55 = sub_100010754();
    v56 = sub_100010974();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v69[0] = v58;
      *v57 = 136315138;
      v59 = sub_100010854();
      v61 = sub_100002BB4(v59, v60, v69);

      *(v57 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v55, v56, "Missing %s field", v57, 0xCu);
      sub_100002C80(v58);
    }

    sub_10000F124(v64, v65);

    (*(v8 + 8))(v13, v7);
    goto LABEL_18;
  }

  sub_100003AF0(*(v17 + 56) + 32 * v47, v70);
  sub_10000F8D8(v69);

  sub_10000399C(0, &qword_10001CB80, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_33;
  }

  v49 = v67;
  (*(v8 + 16))(v11, v13, v7);
  [v49 doubleValue];
  v51 = v50;

  (*(v8 + 8))(v13, v7);
  *a3 = v66;
  a3[1] = v21;
  v52 = v65;
  a3[2] = v64;
  a3[3] = v52;
  v53 = type metadata accessor for Configuration(0);
  v63(a3 + *(v53 + 24), v11, v7);
  *(a3 + *(v53 + 28)) = v51;
  return (*(*(v53 - 8) + 56))(a3, 0, 1, v53);
}

id sub_100007AEC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringsEndpoint(0);
  v30 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = [result aa_primaryAppleAccount];

  if (!v7)
  {
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v23 = sub_100010774();
    sub_100002608(v23, qword_10001D870);
    v16 = sub_100010754();
    v24 = sub_100010974();
    if (os_log_type_enabled(v16, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v16, v24, "No Apple Account", v25, 2u);
    }

    goto LABEL_23;
  }

  v8 = [v7 propertiesForDataclass:ACAccountDataclassDeviceLocator];
  if (v8 && (v9 = v8, v10 = sub_100010814(), v9, v11 = sub_10000A864(v10), , v11))
  {
    if (*(v11 + 16))
    {
      v12 = sub_10000BA18(0x656D616E74736F68, 0xE800000000000000);
      if (v13)
      {
        v14 = *(*(v11 + 56) + 16 * v12 + 8);

        if (v14)
        {
          sub_100010564();
          sub_100010554();
          sub_100010534();
          sub_100010544();
          sub_10000F4B8(v4, a1, type metadata accessor for LocalizedStringsEndpoint);
          return (*(v30 + 56))(a1, 0, 1, v2);
        }

        goto LABEL_24;
      }
    }

    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v26 = sub_100010774();
    sub_100002608(v26, qword_10001D870);
    v16 = sub_100010754();
    v27 = sub_100010974();
    if (!os_log_type_enabled(v16, v27))
    {
      goto LABEL_22;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v16, v27, "No hostname", v28, 2u);
  }

  else
  {
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v15 = sub_100010774();
    sub_100002608(v15, qword_10001D870);
    v16 = sub_100010754();
    v17 = sub_100010974();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_22;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v19;
    *v18 = 136315138;
    v20 = sub_100010854();
    v22 = sub_100002BB4(v20, v21, &v31);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "Nothing for dataclass %s", v18, 0xCu);
    sub_100002C80(v19);
  }

LABEL_22:

LABEL_23:
LABEL_24:
  v29 = *(v30 + 56);

  return v29(a1, 1, 1, v2);
}

uint64_t sub_100008000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 432) = v15;
  *(v8 + 400) = v13;
  *(v8 + 416) = v14;
  *(v8 + 368) = v11;
  *(v8 + 384) = v12;
  *(v8 + 352) = a7;
  *(v8 + 360) = a8;
  *(v8 + 336) = a5;
  *(v8 + 344) = a6;

  return (_swift_task_switch)(sub_1000080A4, 0, 0, a4);
}

uint64_t sub_1000080A4()
{
  if (&class metadata base offset for ServerInteractionController)
  {
    v1 = &protocol conformance descriptor for ServerInteractionController == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1 || &type metadata accessor for ServerInteractionController == 0 || &type metadata for ServerInteractionController == 0 || &metaclass for ServerInteractionController == 0 || &nominal type descriptor for ServerInteractionController == 0)
  {
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v21 = sub_100010774();
    sub_100002608(v21, qword_10001D870);
    v22 = sub_100010754();
    v23 = sub_100010974();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Request failed because FindMyServerInteraction is not available.", v24, 2u);
    }

    v25 = *(v0 + 336);

    sub_100003030();
    swift_allocError();
    *v26 = 6;
    v25();

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v6 = *(v0 + 408);
    v7 = *(v0 + 392);
    v28 = *(v0 + 384);
    v29 = *(v0 + 400);
    v9 = *(v0 + 368);
    v8 = *(v0 + 376);
    v11 = *(v0 + 352);
    v10 = *(v0 + 360);
    sub_1000106A4();
    *(v0 + 440) = sub_100010694();
    v12 = sub_100010744();
    *(v0 + 448) = v12;
    v13 = *(v12 - 8);
    *(v0 + 456) = v13;
    *(v0 + 464) = *(v13 + 64);
    v14 = swift_task_alloc();
    *(v0 + 472) = v14;
    *(v0 + 40) = type metadata accessor for LocalizedStringsEndpoint(0);
    *(v0 + 48) = sub_10000F6F0();
    v15 = sub_10000F748((v0 + 16));
    sub_10000F178(v11, v15);
    *(v0 + 80) = &type metadata for LocalizedStringsRequest;
    v16 = sub_10000F7AC();
    *(v0 + 56) = v10;
    *(v0 + 88) = v16;
    *(v0 + 64) = v9;
    *(v0 + 72) = v8;
    *(v0 + 120) = &type metadata for LocalizedStringsCredential;
    *(v0 + 128) = sub_10000F800();
    v17 = swift_allocObject();
    *(v0 + 96) = v17;
    v17[2] = v28;
    v17[3] = v7;
    v17[4] = v29;
    v17[5] = v6;
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0;
    *(v0 + 136) = 0u;

    sub_10000F450(v9, v8);
    v18 = async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:);

    v19 = swift_task_alloc();
    *(v0 + 480) = v19;
    *v19 = v0;
    v19[1] = sub_1000084A4;

    return ((&async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:) + v18))(v14, v0 + 16, v0 + 56, v0 + 96, v0 + 136);
  }
}

uint64_t sub_1000084A4()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  sub_100002FD0(v2 + 136, &qword_10001CB68, &qword_100011678);
  if (v0)
  {
    v3 = sub_10000990C;
  }

  else
  {
    sub_100002FD0(v2 + 96, &qword_10001CB70, &qword_100011680);
    sub_100002C80((v2 + 56));
    sub_100002C80((v2 + 16));
    v3 = sub_100008634;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_100008634()
{
  v150 = v0;
  if ((sub_100010714() - 200) > 0x63)
  {
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v25 = v0[59];
    v26 = v0[56];
    v27 = v0[57];
    v28 = sub_100010774();
    sub_100002608(v28, qword_10001D870);
    v29 = swift_task_alloc();
    (*(v27 + 16))(v29, v25, v26);
    v30 = sub_100010754();
    v31 = sub_100010974();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[56];
    v34 = v0[57];
    if (v32)
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      v36 = sub_100010714();
      v37 = *(v34 + 8);
      v37(v29, v33);

      *(v35 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Request failed, HTTP status: %ld", v35, 0xCu);
    }

    else
    {
      v37 = *(v34 + 8);
      v37(v29, v0[56]);
    }

    v38 = v0[61];
    v40 = v0[53];
    v39 = v0[54];
    v41 = type metadata accessor for Configuration(0) - 8;
    v42 = swift_task_alloc();
    sub_100010664();
    *v42 = 48;
    *(v42 + 8) = 0xE100000000000000;
    *(v42 + 16) = xmmword_100011330;
    *(v42 + *(v41 + 36)) = 0x40F5180000000000;
    sub_100009E44(v40, v39);
    sub_10000F520(v42, type metadata accessor for Configuration);

    if (v38)
    {
      swift_errorRetain();
      v43 = sub_100010754();
      v44 = sub_100010974();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138543362;
        swift_errorRetain();
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v47;
        *v46 = v47;
        _os_log_impl(&_mh_execute_header, v43, v44, "Failed to write config fetch attempt: %{public}@", v45, 0xCu);
        sub_100002FD0(v46, &qword_10001CA80, &qword_100011358);
      }

      else
      {
      }
    }

    v65 = v0[59];
    v66 = v0[56];
    v67 = v0[42];
    sub_100003030();
    swift_allocError();
    *v68 = 6;
    v67();

    v37(v65, v66);
    goto LABEL_39;
  }

  v1 = objc_opt_self();
  v2 = sub_100010724();
  v4 = v3;
  isa = sub_100010624().super.isa;
  sub_10000F124(v2, v4);
  v0[39] = 0;
  v6 = [v1 JSONObjectWithData:isa options:0 error:v0 + 39];

  v7 = v0[39];
  if (!v6)
  {
    v48 = v7;
    sub_1000105C4();

    swift_willThrow();
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v49 = sub_100010774();
    sub_100002608(v49, qword_10001D870);
    swift_errorRetain();
    v50 = sub_100010754();
    v51 = sub_100010974();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      swift_errorRetain();
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 4) = v54;
      *v53 = v54;
      _os_log_impl(&_mh_execute_header, v50, v51, "The response is not valid JSON: %@", v52, 0xCu);
      sub_100002FD0(v53, &qword_10001CA80, &qword_100011358);
    }

    v55 = v0[59];
    v56 = v0[56];
    v57 = v0[57];
    v58 = v0[42];

    sub_100003030();
    swift_allocError();
    *v59 = 6;
    v58();

    goto LABEL_27;
  }

  v8 = v7;
  sub_100010A04();
  swift_unknownObjectRelease();
  sub_100004898(&qword_10001CB78, &qword_100011688);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_10001CE70 == -1)
    {
LABEL_29:
      v60 = sub_100010774();
      sub_100002608(v60, qword_10001D870);
      v61 = sub_100010754();
      v62 = sub_100010974();
      if (!os_log_type_enabled(v61, v62))
      {
LABEL_38:
        v70 = v0[59];
        v71 = v0[56];
        v72 = v0[57];
        v73 = v0[42];

        sub_100003030();
        swift_allocError();
        *v74 = 6;
        v73();

        (*(v72 + 8))(v70, v71);
        goto LABEL_39;
      }

      v63 = swift_slowAlloc();
      *v63 = 0;
      v64 = "The response is not valid JSON: not object";
LABEL_37:
      _os_log_impl(&_mh_execute_header, v61, v62, v64, v63, 2u);

      goto LABEL_38;
    }

LABEL_72:
    swift_once();
    goto LABEL_29;
  }

  v9 = v0[40];
  if (!*(v9 + 16) || (v10 = sub_10000BA18(0xD000000000000014, 0x8000000100011CE0), (v11 & 1) == 0) || (sub_100003AF0(*(v9 + 56) + 32 * v10, (v0 + 26)), sub_10000399C(0, &qword_10001CB80, NSNumber_ptr), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v69 = sub_100010774();
    sub_100002608(v69, qword_10001D870);
    v61 = sub_100010754();
    v62 = sub_100010974();
    if (!os_log_type_enabled(v61, v62))
    {
      goto LABEL_38;
    }

    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = "The response is missing configExpiryInMillis";
    goto LABEL_37;
  }

  v12 = v0[41];
  if (*(v9 + 16) && (v13 = sub_10000BA18(0x6F43737574617473, 0xEA00000000006564), (v14 & 1) != 0))
  {
    sub_100003AF0(*(v9 + 56) + 32 * v13, (v0 + 30));

    if (swift_dynamicCast())
    {
      v15 = sub_100009B44(v0[37], v0[38]);
      if ((v16 & 1) == 0)
      {
        if (v15 - 200 <= 0x63)
        {
          [v12 doubleValue];
          v18 = v17;

          v19 = sub_1000106B4();
          v20 = *(v19 - 8);
          v21 = swift_task_alloc();
          sub_100010734();
          v22 = sub_1000106C4();
          v24 = v23;
          (*(v20 + 8))(v21, v19);
          if (v24)
          {
            v146 = v22;
          }

          else
          {
            v92 = v0[52];
            swift_beginAccess();
            v24 = *(v92 + 24);
            v146 = *(v92 + 16);
          }

          v144 = v0[61];
          v94 = v0[53];
          v93 = v0[54];

          v95 = type metadata accessor for Configuration(0) - 8;
          v96 = swift_task_alloc();

          v97 = sub_100010724();
          v99 = v98;
          sub_100010664();
          *v96 = v146;
          v96[1] = v24;
          v147 = v24;
          v96[2] = v97;
          v96[3] = v99;
          *(v96 + *(v95 + 36)) = v18 / 1000.0;
          v100 = sub_100010684();
          v101 = *(v100 - 8);
          v102 = swift_task_alloc();
          sub_100010644();
          sub_100009E44(v94, v93);
          if (v144)
          {
            v103 = v0[59];
            v105 = v0[56];
            v104 = v0[57];

            (*(v101 + 8))(v102, v100);
            sub_10000F520(v96, type metadata accessor for Configuration);
            (*(v104 + 8))(v103, v105);

            if (qword_10001CE70 != -1)
            {
              swift_once();
            }

            v106 = sub_100010774();
            sub_100002608(v106, qword_10001D870);
            swift_errorRetain();
            v107 = sub_100010754();
            v108 = sub_100010974();

            if (os_log_type_enabled(v107, v108))
            {
              v109 = swift_slowAlloc();
              v110 = swift_slowAlloc();
              *v109 = 138412290;
              swift_errorRetain();
              v111 = _swift_stdlib_bridgeErrorToNSError();
              *(v109 + 4) = v111;
              *v110 = v111;
              _os_log_impl(&_mh_execute_header, v107, v108, "Request failed %@", v109, 0xCu);
              sub_100002FD0(v110, &qword_10001CA80, &qword_100011358);
            }

            v112 = v0[42];

            sub_100003030();
            swift_allocError();
            *v113 = 6;
            v112();

            goto LABEL_40;
          }

          v141 = v96;
          v143 = v101;
          v145 = v102;
          if (qword_10001CE70 != -1)
          {
            swift_once();
          }

          v114 = v0[59];
          v116 = v0[56];
          v115 = v0[57];
          v117 = sub_100010774();
          sub_100002608(v117, qword_10001D870);
          v118 = swift_task_alloc();
          (*(v115 + 16))(v118, v114, v116);
          v119 = swift_task_alloc();
          (*(v143 + 16))(v119, v145, v100);

          v120 = sub_100010754();
          v121 = sub_100010984();

          if (!os_log_type_enabled(v120, v121))
          {
            v142 = *(v0[57] + 8);
            v142(v118, v0[56]);

            v148 = *(v143 + 8);
            v148(v119, v100);
LABEL_77:
            v136 = v0[59];
            v137 = v0[56];
            v138 = v0[42];

            v138(0);

            v148(v145, v100);
            sub_10000F520(v141, type metadata accessor for Configuration);
            v142(v136, v137);

            goto LABEL_39;
          }

          log = v120;
          v122 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v149[0] = swift_slowAlloc();
          *v122 = 134218754;
          v123 = sub_100010724();
          v125 = v124 >> 62;
          if ((v124 >> 62) <= 1)
          {
            if (v125)
            {
              v130 = HIDWORD(v123);
              v131 = v123;
              result = sub_10000F124(v123, v124);
              if (__OFSUB__(v130, v131))
              {
                __break(1u);
                return result;
              }

              v127 = v130 - v131;
            }

            else
            {
              v126 = BYTE6(v124);
              sub_10000F124(v123, v124);
              v127 = v126;
            }

            goto LABEL_76;
          }

          if (v125 != 2)
          {
            sub_10000F124(v123, v124);
            v127 = 0;
LABEL_76:
            v133 = v0[53];
            v132 = v0[54];
            v142 = *(v0[57] + 8);
            v142(v118, v0[56]);
            *(v122 + 4) = v127;
            *(v122 + 12) = 2082;
            *(v122 + 14) = sub_100002BB4(v133, v132, v149);
            *(v122 + 22) = 2080;
            v134 = sub_100002BB4(v146, v147, v149);

            *(v122 + 24) = v134;
            *(v122 + 32) = 2114;
            v135 = sub_100010654().super.isa;
            v148 = *(v143 + 8);
            v148(v119, v100);
            *(v122 + 34) = v135;
            *v139 = v135;
            _os_log_impl(&_mh_execute_header, log, v121, "Stored %ld B for %{public}s, version: %s, expires: %{public}@", v122, 0x2Au);
            sub_100002FD0(v139, &qword_10001CA80, &qword_100011358);

            swift_arrayDestroy();

            goto LABEL_77;
          }

          v129 = *(v123 + 16);
          v128 = *(v123 + 24);
          sub_10000F124(v123, v124);
          v127 = v128 - v129;
          if (!__OFSUB__(v128, v129))
          {
            goto LABEL_76;
          }

          __break(1u);
          goto LABEL_72;
        }

        v88 = v15;
        if (qword_10001CE70 != -1)
        {
          swift_once();
        }

        v89 = sub_100010774();
        sub_100002608(v89, qword_10001D870);
        v78 = sub_100010754();
        v90 = sub_100010974();
        if (!os_log_type_enabled(v78, v90))
        {
          goto LABEL_49;
        }

        v91 = swift_slowAlloc();
        *v91 = 134217984;
        *(v91 + 4) = v88;
        v81 = "The response statusCode indicates failure: %ld";
        v82 = v90;
        v83 = v78;
        v84 = v91;
        v85 = 12;
        goto LABEL_48;
      }
    }
  }

  else
  {
  }

  if (qword_10001CE70 != -1)
  {
    swift_once();
  }

  v77 = sub_100010774();
  sub_100002608(v77, qword_10001D870);
  v78 = sub_100010754();
  v79 = sub_100010974();
  if (!os_log_type_enabled(v78, v79))
  {
    goto LABEL_49;
  }

  v80 = swift_slowAlloc();
  *v80 = 0;
  v81 = "The response is missing statusCode";
  v82 = v79;
  v83 = v78;
  v84 = v80;
  v85 = 2;
LABEL_48:
  _os_log_impl(&_mh_execute_header, v83, v82, v81, v84, v85);

LABEL_49:
  v55 = v0[59];
  v56 = v0[56];
  v57 = v0[57];
  v86 = v0[42];

  sub_100003030();
  swift_allocError();
  *v87 = 6;
  v86();

LABEL_27:

  (*(v57 + 8))(v55, v56);
LABEL_39:

LABEL_40:
  v75 = v0[1];

  return v75();
}

uint64_t sub_10000990C()
{

  sub_100002FD0((v0 + 12), &qword_10001CB70, &qword_100011680);
  sub_100002C80(v0 + 7);
  sub_100002C80(v0 + 2);

  if (qword_10001CE70 != -1)
  {
    swift_once();
  }

  v1 = sub_100010774();
  sub_100002608(v1, qword_10001D870);
  swift_errorRetain();
  v2 = sub_100010754();
  v3 = sub_100010974();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Request failed %@", v4, 0xCu);
    sub_100002FD0(v5, &qword_10001CA80, &qword_100011358);
  }

  v7 = v0[42];

  sub_100003030();
  swift_allocError();
  *v8 = 6;
  v7();

  v9 = v0[1];

  return v9();
}

unint64_t sub_100009B44(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_100010AA4();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_10000C518(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_100009E44(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000105A4();
  v68 = *(v3 - 8);
  __chkstk_darwin(v3);
  v67 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100010614();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v66 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v64 - v10;
  __chkstk_darwin(v9);
  v13 = &v64 - v12;
  v14 = [objc_opt_self() sharedInstance];
  v15 = sub_100010824();
  v16 = [v14 fileURLWithLocale:v15];

  if (v16)
  {
    v65 = v3;
    sub_1000105F4();

    (*(v6 + 32))(v13, v11, v5);
    v17 = [objc_allocWithZone(NSMutableDictionary) init];
    v18 = sub_100010854();
    v20 = v19;
    v21 = sub_100010824();
    v69 = v5;
    v70 = v6;
    v22 = v21;
    v71 = v18;
    v72 = v20;
    [v17 __swift_setObject:v21 forKeyedSubscript:sub_100010B24()];

    swift_unknownObjectRelease();
    v23 = sub_100010854();
    v25 = v24;
    isa = sub_100010624().super.isa;
    v71 = v23;
    v72 = v25;
    [v17 __swift_setObject:isa forKeyedSubscript:sub_100010B24()];

    swift_unknownObjectRelease();
    v27 = sub_100010854();
    v29 = v28;
    v30 = type metadata accessor for Configuration(0);
    v31 = v13;
    v32 = v2;
    v33 = sub_100010654().super.isa;
    v71 = v27;
    v72 = v29;
    [v17 __swift_setObject:v33 forKeyedSubscript:sub_100010B24()];

    swift_unknownObjectRelease();
    v34 = sub_100010854();
    v36 = v35;
    v37 = *(v32 + *(v30 + 28));
    v38 = v31;
    v39 = [objc_allocWithZone(NSNumber) initWithDouble:v37];
    v71 = v34;
    v72 = v36;
    [v17 __swift_setObject:v39 forKeyedSubscript:sub_100010B24()];

    swift_unknownObjectRelease();
    sub_1000105E4(v40);
    v42 = v41;
    v71 = 0;
    LODWORD(v36) = [v17 writeToURL:v41 error:&v71];

    v43 = v71;
    if (v36)
    {
      v44 = v69;
      v45 = v70;
      v46 = objc_opt_self();
      v47 = v43;
      v48 = [v46 defaultManager];
      sub_100004898(&qword_10001CB90, &qword_100011698);
      inited = swift_initStackObject();
      *(inited + 32) = NSFilePosixPermissions;
      *(inited + 16) = xmmword_100011310;
      *(inited + 64) = &type metadata for Int;
      *(inited + 40) = 420;
      v50 = NSFilePosixPermissions;
      sub_10000DC08(inited);
      swift_setDeallocating();
      sub_100002FD0(inited + 32, &qword_10001CB98, &qword_1000116A0);
      type metadata accessor for FileAttributeKey(0);
      sub_10000D290(&qword_10001CBA0, type metadata accessor for FileAttributeKey, &unk_100011A4C);
      v51 = sub_100010804().super.isa;

      sub_100010604();
      v52 = sub_100010824();

      v71 = 0;
      v53 = [v48 setAttributes:v51 ofItemAtPath:v52 error:&v71];

      if (v53)
      {
        v54 = v71;
        v55 = v67;
        sub_100010594();
        sub_100010584();
        v56 = v45;
        v57 = *(v45 + 16);
        v58 = v66;
        v57(v66, v38, v44);
        sub_1000105D4();

        v59 = *(v56 + 8);
        v59(v58, v44);
        (*(v68 + 8))(v55, v65);
        return (v59)(v38, v44);
      }

      else
      {
        v63 = v71;
        sub_1000105C4();

        swift_willThrow();
        return (*(v45 + 8))(v38, v44);
      }
    }

    else
    {
      v62 = v71;
      sub_1000105C4();

      swift_willThrow();
      return (*(v70 + 8))(v31, v69);
    }
  }

  else
  {
    sub_100003030();
    swift_allocError();
    *v61 = 3;
    return swift_willThrow();
  }
}

uint64_t sub_10000A564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004898(&qword_10001CB50, &qword_100011638);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000F92C(a3, v25 - v10, &qword_10001CB50, &qword_100011638);
  v12 = sub_100010964();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100002FD0(v11, &qword_10001CB50, &qword_100011638);
  }

  else
  {
    sub_100010954();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100010944();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100010864() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100002FD0(a3, &qword_10001CB50, &qword_100011638);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100002FD0(a3, &qword_10001CB50, &qword_100011638);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

unint64_t sub_10000A864(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_100004898(&qword_10001CBB0, &qword_1000116B0);
    v2 = sub_100010AE4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v14 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v14);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v14 = v9;
LABEL_13:
    v15 = __clz(__rbit64(v6)) | (v14 << 6);
    sub_10000F87C(*(v1 + 48) + 40 * v15, v28);
    sub_100003AF0(*(v1 + 56) + 32 * v15, v29 + 8);
    v26[0] = v29[0];
    v26[1] = v29[1];
    v27 = v30;
    v25[0] = v28[0];
    v25[1] = v28[1];
    sub_10000F87C(v25, v24);
    if (!swift_dynamicCast())
    {
      sub_100002FD0(v25, &qword_10001CBB8, &qword_1000116B8);

      goto LABEL_22;
    }

    sub_100003AF0(v26 + 8, v24);
    sub_100002FD0(v25, &qword_10001CBB8, &qword_1000116B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_10000BA18(v22, v23);
    if (v16)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      *v12 = v22;
      v12[1] = v23;

      v13 = (v2[7] + v11);
      v1 = v10;
      *v13 = v22;
      v13[1] = v23;

      v9 = v14;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v22;
      v17[1] = v23;
      v18 = (v2[7] + 16 * result);
      *v18 = v22;
      v18[1] = v23;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_26;
      }

      v2[2] = v21;
      v9 = v14;
    }
  }

LABEL_22:

  return 0;
}

uint64_t sub_10000AB44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100010574();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10000ABAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_10000C218(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_10000BA18(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_10000C3A0();
        v16 = v18;
      }

      result = sub_10000C068(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_10000AD1C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_10000AD4C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_10000AD94()
{
  v0 = sub_100010774();
  sub_10000EFF4(v0, qword_10001D870);
  sub_100002608(v0, qword_10001D870);
  return sub_100010764();
}

BOOL sub_10000AE58(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10000AE88@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10000AEB4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10000AFAC(uint64_t a1, id *a2)
{
  result = sub_100010834();
  *a2 = 0;
  return result;
}

uint64_t sub_10000B024(uint64_t a1, id *a2)
{
  v3 = sub_100010844();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000B0A4@<X0>(uint64_t *a2@<X8>)
{
  sub_100010854();
  v3 = sub_100010824();

  *a2 = v3;
  return result;
}

uint64_t sub_10000B0E8()
{
  sub_100010854();
  v0 = sub_1000108F4();

  return v0;
}

uint64_t sub_10000B124(uint64_t a1)
{
  sub_100010854();
  sub_100010884();
}

Swift::Int sub_10000B178(uint64_t a1)
{
  sub_100010854();
  sub_100010B84();
  sub_100010884();
  v1 = sub_100010BA4();

  return v1;
}

uint64_t sub_10000B200@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100003084(a1);

  *a2 = v3;
  return result;
}

void *sub_10000B240@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000B25C(void *a1, uint64_t *a2)
{
  v2 = sub_100010854();
  v4 = v3;
  if (v2 == sub_100010854() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_100010B14();
  }

  return v7 & 1;
}

uint64_t sub_10000B2E4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100010824();

  *a2 = v3;
  return result;
}

uint64_t sub_10000B32C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100010854();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000B358(uint64_t a1)
{
  v2 = sub_10000D290(&qword_10001CBA0, type metadata accessor for FileAttributeKey, &unk_100011A4C);
  v3 = sub_10000D290(&unk_10001CD30, type metadata accessor for FileAttributeKey, &unk_1000119A0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000B414(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000B50C;

  return v6(a1);
}

uint64_t sub_10000B50C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_10000B604(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000B650(a1, a2);
  sub_10000B780(&off_100018AB0);
  return v3;
}

char *sub_10000B650(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000B86C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100010AA4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000108A4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000B86C(v10, 0);
        result = sub_100010A74();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000B780(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000B8E0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000B86C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100004898(&qword_10001CB88, &qword_100011690);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000B8E0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004898(&qword_10001CB88, &qword_100011690);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_10000B9D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100010A44(*(v2 + 40));

  return sub_10000BB24(a1, v4);
}

unint64_t sub_10000BA18(uint64_t a1, uint64_t a2)
{
  sub_100010B84();
  sub_100010884();
  v4 = sub_100010BA4();

  return sub_10000BBEC(a1, a2, v4);
}

unint64_t sub_10000BA90(uint64_t a1)
{
  sub_100010854();
  sub_100010B84();
  sub_100010884();
  v2 = sub_100010BA4();

  return sub_10000BCA4(a1, v2);
}

unint64_t sub_10000BB24(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000F87C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100010A54();
      sub_10000F8D8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10000BBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100010B14())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10000BCA4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_100010854();
      v8 = v7;
      if (v6 == sub_100010854() && v8 == v9)
      {
        break;
      }

      v11 = sub_100010B14();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_10000BDA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004898(&qword_10001CBB0, &qword_1000116B0);
  v37 = v4;
  result = sub_100010AD4();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_100010B84();
      sub_100010884();
      result = sub_100010BA4();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10000C068(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100010A34() + 1) & ~v5;
    do
    {
      sub_100010B84();

      sub_100010884();
      v9 = sub_100010BA4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10000C218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10000BA18(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10000BDA8(v18, a5 & 1);
      v13 = sub_10000BA18(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_100010B34();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10000C3A0();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *sub_10000C3A0()
{
  v1 = v0;
  sub_100004898(&qword_10001CBB0, &qword_1000116B0);
  v2 = *v0;
  v3 = sub_100010AC4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unsigned __int8 *sub_10000C518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_100010904();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10000CAA4(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_100010AA4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10000CAA4(uint64_t a1, unint64_t a2)
{
  v2 = sub_100010914();
  v6 = sub_10000CB24(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10000CB24(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1000109F4();
    if (!v9 || (v10 = v9, v11 = sub_10000B86C(v9, 0), v12 = sub_10000CC7C(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_100010874();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_100010874();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_100010AA4();
LABEL_4:

  return sub_100010874();
}

unint64_t sub_10000CC7C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10000CE9C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1000108D4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_100010AA4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10000CE9C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1000108B4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_10000CE9C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1000108E4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1000108C4();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10000CF18(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  if (sub_100010514())
  {
    v8 = [objc_opt_self() standardUserDefaults];
    v9 = sub_100010824();
    v10 = [v8 BOOLForKey:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 fmipActive];

  if (!v12 || (v10 & 1) != 0)
  {
    v18 = [objc_opt_self() defaultStore];
    if (!v18)
    {

      __break(1u);
      return result;
    }

    v19 = v18;
    v20 = [v18 aa_primaryAppleAccount];

    if (v20)
    {
    }

    else if (!v10)
    {
      if (qword_10001CE70 != -1)
      {
        swift_once();
      }

      v24 = sub_100010774();
      sub_100002608(v24, qword_10001D870);
      v14 = sub_100010754();
      v15 = sub_100010984();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_11;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "Device is signed out of iCloud, not posting CFU";
      goto LABEL_10;
    }

    v21 = swift_allocObject();
    v21[2] = sub_10000F994;
    v21[3] = v7;
    v21[4] = a1;

    v22 = a1;
    sub_100003B88(0, 0, sub_10000FF34, v21);

    goto LABEL_17;
  }

  if (qword_10001CE70 != -1)
  {
    swift_once();
  }

  v13 = sub_100010774();
  sub_100002608(v13, qword_10001D870);
  v14 = sub_100010754();
  v15 = sub_100010984();
  if (!os_log_type_enabled(v14, v15))
  {
    goto LABEL_11;
  }

  v16 = swift_slowAlloc();
  *v16 = 0;
  v17 = "Find My iPhone is enabled, not posting CFU";
LABEL_10:
  _os_log_impl(&_mh_execute_header, v14, v15, v17, v16, 2u);

LABEL_11:

  a3(0);
LABEL_17:
}

uint64_t sub_10000D290(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000D2D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000048E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharedConfigurationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharedConfigurationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000D4DC()
{
  result = qword_10001CE80[0];
  if (!qword_10001CE80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10001CE80);
  }

  return result;
}

void sub_10000D658(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  if (sub_100010514())
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = sub_100010824();
    v8 = [v6 BOOLForKey:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 fmipActive];

  if (!v10 || (v8 & 1) != 0)
  {
    v16 = [objc_opt_self() defaultStore];
    if (!v16)
    {
      _Block_release(a3);
      __break(1u);
      return;
    }

    v17 = v16;
    v18 = [v16 aa_primaryAppleAccount];

    if (v18)
    {
    }

    else if (!v8)
    {
      if (qword_10001CE70 != -1)
      {
        swift_once();
      }

      v21 = sub_100010774();
      sub_100002608(v21, qword_10001D870);
      v12 = sub_100010754();
      v13 = sub_100010984();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_11;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Device is signed out of iCloud, not posting CFU";
      goto LABEL_10;
    }

    v19 = swift_allocObject();
    v19[2] = sub_10000E160;
    v19[3] = v5;
    v19[4] = a1;

    v20 = a1;
    sub_100003B88(0, 0, sub_10000FF34, v19);

    goto LABEL_17;
  }

  if (qword_10001CE70 != -1)
  {
    swift_once();
  }

  v11 = sub_100010774();
  sub_100002608(v11, qword_10001D870);
  v12 = sub_100010754();
  v13 = sub_100010984();
  if (!os_log_type_enabled(v12, v13))
  {
    goto LABEL_11;
  }

  v14 = swift_slowAlloc();
  *v14 = 0;
  v15 = "Find My iPhone is enabled, not posting CFU";
LABEL_10:
  _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 2u);

LABEL_11:

  a3[2](a3, 0, 0);
LABEL_17:
}

unint64_t sub_10000D9B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004898(&qword_10001CBE8, &qword_1000116E0);
    v3 = sub_100010AE4();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000F92C(v4, v13, &qword_10001CBD0, &qword_1000116D0);
      result = sub_10000B9D4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000F86C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000DAF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004898(&qword_10001CBB0, &qword_1000116B0);
    v3 = sub_100010AE4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000BA18(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000DC08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004898(&qword_10001CBA8, &qword_1000116A8);
    v3 = sub_100010AE4();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000F92C(v4, &v11, &qword_10001CB98, &qword_1000116A0);
      v5 = v11;
      result = sub_10000BA90(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000F86C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_10000DD30(uint64_t a1)
{
  v2 = objc_allocWithZone(FLFollowUpController);
  v3 = sub_100010824();
  v4 = [v2 initWithClientIdentifier:v3];

  if (v4)
  {
    sub_100004898(&qword_10001CA78, &qword_100011350);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100011310;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 32) = 0xD000000000000010;
    *(v5 + 40) = 0x8000000100011BD0;
    isa = sub_100010924().super.isa;

    v24 = 0;
    v7 = [v4 clearPendingFollowUpItemsWithUniqueIdentifiers:isa error:&v24];

    if (v7)
    {
      v8 = *(a1 + 16);
      v9 = v24;
      v8(a1, 0);
    }

    else
    {
      v16 = v24;
      sub_1000105C4();

      swift_willThrow();
      if (qword_10001CE70 != -1)
      {
        swift_once();
      }

      v17 = sub_100010774();
      sub_100002608(v17, qword_10001D870);
      swift_errorRetain();
      v18 = sub_100010754();
      v19 = sub_100010974();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        swift_errorRetain();
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 4) = v22;
        *v21 = v22;
        _os_log_impl(&_mh_execute_header, v18, v19, "Unable to clear pending followup for id: com.apple.findmy with error: %@", v20, 0xCu);
        sub_100002FD0(v21, &qword_10001CA80, &qword_100011358);
      }

      swift_errorRetain();
      v23 = sub_1000105B4();
      (*(a1 + 16))(a1, v23);
    }
  }

  else
  {
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v10 = sub_100010774();
    sub_100002608(v10, qword_10001D870);
    v11 = sub_100010754();
    v12 = sub_100010974();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to create the Follow Up controller", v13, 2u);
    }

    sub_100003030();
    swift_allocError();
    *v14 = 9;
    v15 = sub_1000105B4();
    (*(a1 + 16))(a1, v15);
  }
}

id sub_10000E168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a1;
  v7 = sub_100010684();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_100010A84(21);

  v57 = 0xD000000000000010;
  v58 = 0x8000000100011D20;
  v59._countAndFlagsBits = sub_100010504();
  sub_100010894(v59);

  v60._countAndFlagsBits = 47;
  v60._object = 0xE100000000000000;
  sub_100010894(v60);
  v61._countAndFlagsBits = sub_100010524();
  sub_100010894(v61);

  v53 = v58;
  v54 = v57;
  v11 = sub_10000DAF4(&_swiftEmptyArrayStorage);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v11;
  sub_10000C218(a3, a4, 0xD00000000000001BLL, 0x8000000100011D00, isUniquelyReferenced_nonNull_native);
  v13 = v57;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v13;
  sub_10000C218(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x8000000100011D40, v14);
  v57 = v56;
  sub_100010674();
  v15 = sub_100010634();
  (*(v8 + 8))(v10, v7);
  v56 = v15;
  v16 = sub_100010B04();
  v18 = v17;
  v19 = v57;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v19;
  sub_10000C218(v16, v18, 0xD000000000000015, 0x8000000100011D60, v20);
  v21 = v56;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v21;
  sub_10000C218(49, 0xE100000000000000, 0xD000000000000013, 0x8000000100011D80, v22);
  v23 = v56;
  v57 = v56;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v25 = result;
  v26 = MobileGestalt_copy_cpuArchitecture_obj();

  if (v26)
  {
    v27 = sub_100010854();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0xE000000000000000;
  }

  v30 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v23;
  sub_10000C218(v27, v29, 0xD000000000000010, 0x8000000100011DA0, v30);
  v57 = v56;
  result = [objc_opt_self() currentDevice];
  if (!result)
  {
    goto LABEL_15;
  }

  v31 = result;

  v32 = [v31 serverFriendlyDescription];

  if (v32)
  {
    v33 = sub_100010854();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  sub_10000ABAC(v33, v35, 0xD000000000000011, 0x8000000100011DC0);
  v36 = v57;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v36;
  sub_10000C218(50, 0xE100000000000000, 0x762D747065636341, 0xEE006E6F69737265, v37);
  v38 = v56;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v38;
  sub_10000C218(v54, v53, 0x6567412D72657355, 0xEA0000000000746ELL, v39);
  v40 = v56;

  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v40;
  v42 = v55;
  sub_10000C218(v55, a2, 0x4C2D747065636341, 0xEF65676175676E61, v41);
  v43 = v56;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v43;
  sub_10000C218(v42, a2, 0xD000000000000010, 0x8000000100011DE0, v44);
  v45 = v56;
  v57 = v56;
  if (sub_100010514())
  {
    sub_100010854();
    v46 = objc_allocWithZone(NSUserDefaults);
    v47 = sub_100010824();

    v48 = [v46 initWithSuiteName:v47];

    if (v48)
    {
      v49 = sub_100010824();
      v50 = [v48 BOOLForKey:v49];

      if (v50)
      {
        v51 = v57;
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v56 = v51;
        sub_10000C218(1702195828, 0xE400000000000000, 0xD000000000000018, 0x8000000100011E20, v52);
        return v56;
      }
    }
  }

  return v45;
}

uint64_t sub_10000E73C(NSObject *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t), void *a6)
{
  v82 = a3;
  v88 = a2;
  v10 = sub_100004898(&qword_10001CB50, &qword_100011638);
  __chkstk_darwin(v10 - 8);
  v83 = &v77 - v11;
  v12 = sub_100004898(&qword_10001CB58, &qword_100011640);
  __chkstk_darwin(v12 - 8);
  v14 = &v77 - v13;
  v15 = type metadata accessor for LocalizedStringsEndpoint(0);
  v89 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v80 = v17;
  v81 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v84 = &v77 - v18;
  v19 = sub_100004898(&qword_10001CB60, &qword_100011648);
  __chkstk_darwin(v19 - 8);
  v21 = (&v77 - v20);
  v22 = type metadata accessor for Configuration(0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = (&v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v87 = a5;
  v90 = v26;
  v26[4] = a6;
  v27 = swift_allocObject();
  *(v27 + 16) = 48;
  *(v27 + 24) = 0xE100000000000000;
  v85 = a4;
  v86 = a6;
  v28 = v88;

  sub_100007168(v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_100002FD0(v21, &qword_10001CB60, &qword_100011648);
  }

  else
  {
    sub_10000F4B8(v21, v25, type metadata accessor for Configuration);
    v29 = *v25;
    v30 = v25[1];

    sub_10000F520(v25, type metadata accessor for Configuration);
    *(v27 + 16) = v29;
    *(v27 + 24) = v30;
  }

  sub_100007AEC(v14);
  if ((*(v89 + 48))(v14, 1, v15) != 1)
  {
    v37 = v84;
    sub_10000F4B8(v14, v84, type metadata accessor for LocalizedStringsEndpoint);
    v38 = *(v27 + 16);
    v39 = *(v27 + 24);

    v40 = sub_10000E168(a1, v28, v38, v39);
    v41 = [objc_opt_self() defaultStore];
    if (!v41)
    {
      goto LABEL_18;
    }

    v42 = v41;
    v43 = [v41 aa_primaryAppleAccount];
    if (v43)
    {
      v44 = v43;
      v45 = [v43 aa_personID];
      if (v45)
      {
        v46 = v45;
        v47 = sub_100010854();
        v49 = v48;

        v50 = [v44 aa_authToken];
        if (v50)
        {
          v51 = v50;
          v52 = sub_100010854();
          v78 = v53;
          v79 = v52;

          if (v49)
          {
            v54 = sub_100010964();
            (*(*(v54 - 8) + 56))(v83, 1, 1, v54);
            v87 = v47;
            v55 = v81;
            sub_10000F178(v37, v81);
            v56 = *(v89 + 80);
            v86 = v40;
            v57 = (v56 + 56) & ~v56;
            v58 = (v80 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
            v59 = (v58 + 31) & 0xFFFFFFFFFFFFFFF8;
            v89 = (v59 + 39) & 0xFFFFFFFFFFFFFFF8;
            v60 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
            v61 = swift_allocObject();
            v61[2] = 0;
            v61[3] = 0;
            v80 = v49;
            v62 = v82;
            v61[4] = v82;
            v61[5] = sub_10000F0D0;
            v85 = a1;
            v61[6] = v90;
            sub_10000F4B8(v55, v61 + v57, type metadata accessor for LocalizedStringsEndpoint);
            v63 = v61 + v58;
            *v63 = v86;
            *(v63 + 8) = xmmword_100011330;
            v64 = (v61 + v59);
            v65 = v79;
            v66 = v80;
            *v64 = v87;
            v64[1] = v66;
            v64[2] = v65;
            v64[3] = v78;
            *(v61 + v89) = v27;
            v67 = (v61 + v60);
            *v67 = v85;
            v67[1] = v28;

            v68 = v62;

            sub_10000F450(0, 0xC000000000000000);

            sub_10000A564(0, 0, v83, &unk_100011658, v61);

            sub_10000F110(0, 0xC000000000000000);
            v69 = v84;
LABEL_23:
            sub_10000F520(v69, type metadata accessor for LocalizedStringsEndpoint);
            goto LABEL_24;
          }
        }

        else
        {
        }

LABEL_18:
        if (qword_10001CE70 != -1)
        {
          swift_once();
        }

        v70 = sub_100010774();
        sub_100002608(v70, qword_10001D870);
        v71 = sub_100010754();
        v72 = sub_100010974();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&_mh_execute_header, v71, v72, "Failed to create LocalizedStringsCredential", v73, 2u);
        }

        sub_100003030();
        v74 = swift_allocError();
        *v75 = 5;
        dispatch_group_leave(v85);
        v87(v74);

        sub_10000F110(0, 0xC000000000000000);
        v69 = v37;
        goto LABEL_23;
      }
    }

    goto LABEL_18;
  }

  sub_100002FD0(v14, &qword_10001CB58, &qword_100011640);
  if (qword_10001CE70 != -1)
  {
    swift_once();
  }

  v31 = sub_100010774();
  sub_100002608(v31, qword_10001D870);
  v32 = sub_100010754();
  v33 = sub_100010974();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Failed to create LocalizedStringsEndpoint", v34, 2u);
  }

  sub_100003030();
  v35 = swift_allocError();
  *v36 = 4;
  dispatch_group_leave(v85);
  v87(v35);

LABEL_24:
}

uint64_t *sub_10000EFF4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000F098(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F0D0(uint64_t a1)
{
  v3 = *(v1 + 24);
  dispatch_group_leave(*(v1 + 16));
  return v3(a1);
}

uint64_t sub_10000F110(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000F124(result, a2);
  }

  return result;
}

uint64_t sub_10000F124(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000F178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedStringsEndpoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F1DC()
{
  v2 = *(type metadata accessor for LocalizedStringsEndpoint(0) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v12 = *(v0 + 40);
  v9 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000F35C;

  return sub_100008000(v4, v5, v6, v7, v12, v10, v0 + v3, v9);
}

uint64_t sub_10000F35C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000F450(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000F464(a1, a2);
  }

  return a1;
}

uint64_t sub_10000F464(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000F4B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000F520(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000F580(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000FF38;

  return sub_10000B414(a1, v4);
}

uint64_t sub_10000F638(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F35C;

  return sub_10000B414(a1, v4);
}

unint64_t sub_10000F6F0()
{
  result = qword_10001D290;
  if (!qword_10001D290)
  {
    type metadata accessor for LocalizedStringsEndpoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D290);
  }

  return result;
}

uint64_t *sub_10000F748(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_10000F7AC()
{
  result = qword_10001D298;
  if (!qword_10001D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D298);
  }

  return result;
}

unint64_t sub_10000F800()
{
  result = qword_10001D2A0;
  if (!qword_10001D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D2A0);
  }

  return result;
}

_OWORD *sub_10000F86C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000F92C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004898(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000F9C0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000FA0C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000FA2C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_10000FA68(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 sub_10000FAB4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000FAC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000FB08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000FB58(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10000FB74(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_10000FB9C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000FBB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000FBF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000FC70(uint64_t a1)
{
  result = sub_100010684();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000FD24(uint64_t a1)
{
  result = sub_100010574();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10000FD94()
{
  result = qword_10001D350[0];
  if (!qword_10001D350[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10001D350);
  }

  return result;
}

unint64_t sub_10000FEC4()
{
  result = qword_10001D760[0];
  if (!qword_10001D760[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10001D760);
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  qword_10001D888 = [objc_allocWithZone(type metadata accessor for ServiceDelegate()) init];
  qword_10001D890 = [objc_opt_self() serviceListener];
  [qword_10001D890 setDelegate:qword_10001D888];
  [qword_10001D890 resume];
  return 0;
}

id sub_10001008C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC41FindMyDeviceSharedConfigurationXPCService15ServiceDelegate_service;
  type metadata accessor for FindMyDeviceSharedConfigurationXPCService();
  *&v0[v2] = sub_100004928();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_100010170(void *a1)
{
  v3 = sub_100010774();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([a1 valueForEntitlement:kFMDSharedConfigurationXPCServiceAccessEntitlement])
  {
    sub_100010A04();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  sub_10001042C(v18, &v16);
  if (*(&v17 + 1))
  {
    if (swift_dynamicCast() && (v15[15] & 1) != 0)
    {
      v7 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___FMDSharedConfigurationXPCInterface];
      [a1 setExportedInterface:v7];

      [a1 setExportedObject:*(v1 + OBJC_IVAR____TtC41FindMyDeviceSharedConfigurationXPCService15ServiceDelegate_service)];
      [a1 resume];
      v8 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    sub_10001049C(&v16);
  }

  v9 = sub_100004C58();
  (*(v4 + 16))(v6, v9, v3);
  v10 = a1;
  v11 = sub_100010754();
  v12 = sub_100010974();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = [v10 processIdentifier];

    _os_log_impl(&_mh_execute_header, v11, v12, "Connection from pid: %d failed entitlements check", v13, 8u);
  }

  else
  {
  }

  (*(v4 + 8))(v6, v3);
  v8 = 0;
LABEL_13:
  sub_10001049C(v18);
  return v8;
}

uint64_t sub_10001042C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004898(&qword_10001CA70, &unk_100011B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001049C(uint64_t a1)
{
  v2 = sub_100004898(&qword_10001CA70, &unk_100011B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}