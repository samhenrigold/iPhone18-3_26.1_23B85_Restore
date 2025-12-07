int main(int argc, const char **argv, const char **envp)
{
  v3 = getWFRunningLifecycleLogObject();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xFFFFFFFFuLL, "UntilFirstAction", " enableTelemetry=YES ", buf, 2u);
  }

  v4 = getWFGeneralLogObject();
  v5 = os_signpost_id_generate(v4);

  v6 = getWFGeneralLogObject();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "BackgroundRunnerMain", "", v13, 2u);
  }

  unsetenv("TMPDIR");
  unsetenv("HOME");
  unsetenv("CFFIXED_USER_HOME");
  [VCBundleIdentifierRunner UTF8String];
  _set_user_dir_suffix();
  v8 = objc_alloc_init(WFIsolatedShortcutRunner);
  v9 = +[NSXPCListener serviceListener];
  [v9 setDelegate:v8];
  v10 = getWFGeneralLogObject();
  v11 = v10;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v5, "BackgroundRunnerMain", "", v12, 2u);
  }

  [v9 resume];
  exit(1);
}

void sub_100002564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002590(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002660;
  v10[3] = &unk_10009FA90;
  v11 = WeakRetained;
  v12 = v5;
  v8 = v5;
  v9 = WeakRetained;
  dispatch_async(v7, v10);
}

void sub_100002660(uint64_t a1)
{
  v2 = [*(a1 + 32) sandboxExtensionTaken];
  v3 = getWFToolKitExecutionLogObject();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[WFIsolatedShortcutRunner init]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Sandbox extension has already been taken, this is an error!", &v6, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[WFIsolatedShortcutRunner init]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Sandbox extensions acquired", &v6, 0xCu);
    }

    [*(a1 + 32) setSandboxExtensionTaken:1];
    v5 = [*(a1 + 40) copy];
    [*(a1 + 32) setSandboxExtensionReleaseBlock:v5];

    v4 = [*(a1 + 32) sandboxExtensionGroup];
    dispatch_group_leave(v4);
  }
}

NSString sub_10000285C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_100009AE8(a2);
  *a1 = result;
  return result;
}

uint64_t sub_10000297C()
{
  sub_100088E08();
  sub_100012368();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);
  swift_unknownObjectRelease();
  v5 = sub_100012544();
  v6(v5);

  return _swift_deallocObject(v0, ((v2 + 32) & ~v2) + v4, v2 | 7);
}

uint64_t sub_100002A2C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100002A6C()
{
  sub_100088E08();
  sub_100012368();
  v2 = *(v1 + 80);
  v4 = (*(v3 + 64) + ((v2 + 40) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = sub_100012544();
  v6(v5);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_100002B38()
{
  sub_100088E08();
  sub_100012368();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);
  swift_unknownObjectRelease();

  v5 = sub_100012544();
  v6(v5);

  return _swift_deallocObject(v0, ((v2 + 40) & ~v2) + v4, v2 | 7);
}

uint64_t sub_100002BF0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002C28()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002C60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008DC0(&qword_1000A5F50, &qword_10008D4B0);
  v5 = sub_100008E78(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002CB4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100008DC0(&qword_1000A5F50, &qword_10008D4B0);

  return sub_100009158(a1, v5, a3, v6);
}

uint64_t sub_100002D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100012578();
  sub_100088EA8();
  sub_1000125B4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_5:

    return sub_100008E78(v9, a2, v8);
  }

  sub_100088D48();
  sub_1000125B4();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(v3 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_100002E04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100012578();
  sub_100088EA8();
  sub_1000125B4();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    sub_100088D48();
    sub_1000125B4();
    if (*(v13 + 84) != a3)
    {
      *(v4 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = v4 + *(a4 + 20);
  }

  sub_100009158(v11, a2, a2, v10);
}

uint64_t sub_100002EE8()
{
  v1 = sub_1000899A8();
  sub_100012368();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = (type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0) - 8);
  v9 = *(*v8 + 80);
  v10 = (v5 + v7 + v9) & ~v9;
  v11 = v4 | v9;
  v12 = (*(*v8 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;

  v13 = *(v3 + 8);
  v13(v0 + v5, v1);
  v13(v0 + v10, v1);
  v14 = v8[7];
  sub_100088A68();
  sub_100017A1C();
  (*(v15 + 8))(v0 + v10 + v14);

  return _swift_deallocObject(v0, v12 + 16, v11 | 7);
}

uint64_t sub_100003074()
{
  sub_10005F538();

  return sub_100012498();
}

uint64_t sub_1000030F8()
{
  v1 = sub_1000889E8();
  sub_100012368();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_1000031B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100012578();
  sub_1000899A8();
  sub_1000125B4();
  if (*(v6 + 84) == a2)
  {
    v7 = sub_10005E120();
  }

  else
  {
    v8 = sub_100088A68();
    v7 = v3 + *(a3 + 20);
  }

  return sub_100008E78(v7, a2, v8);
}

uint64_t sub_100003248(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100012578();
  sub_1000899A8();
  sub_1000125B4();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    v10 = sub_100088A68();
    v11 = v4 + *(a4 + 20);
  }

  return sub_100009158(v11, a2, a2, v10);
}

uint64_t sub_100003300()
{
  _Block_release(*(v0 + 24));

  sub_100009BA0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100003344()
{
  sub_10005E1F0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100003378()
{

  sub_10005E1F0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000033AC()
{

  sub_10005E1F0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000033E0()
{

  sub_10005D504();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100003430()
{

  sub_10005D504();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100003464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100088A68();
  sub_1000125B4();
  if (*(v7 + 84) != a2)
  {
    return sub_100060538(*(a1 + *(a3 + 20)));
  }

  return sub_100008E78(a1, a2, v6);
}

void sub_100003500(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100012578();
  sub_100088A68();
  sub_1000125B4();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_100012498();

    sub_100009158(v9, v10, a2, v11);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_10000359C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100060538(*(a1 + 8));
  }

  sub_100089888();
  sub_1000125B4();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 28);
  }

  else
  {
    v9 = sub_100089C48();
    v10 = *(a3 + 32);
  }

  return sub_100008E78(a1 + v10, a2, v9);
}

uint64_t sub_100003658(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_100089888();
    sub_1000125B4();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 28);
    }

    else
    {
      v10 = sub_100089C48();
      v11 = *(a4 + 32);
    }

    return sub_100009158(v5 + v11, a2, a2, v10);
  }

  return result;
}

unint64_t sub_10000381C()
{
  sub_100085264();
  sub_10005EB04();
  v4 = ~v3;
  for (i = v5 & ~v3; ((1 << i) & *(v1 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v7 = (*(v1 + 48) + 16 * i);
    v8 = *v7 == v2 && v7[1] == v0;
    if (v8 || (sub_10008AA68() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100003904()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003990()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000039C8()
{
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100003A18()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003A58()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100003AB4()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100003B04()
{
  _Block_release(*(v0 + 32));
  v1 = sub_1000849BC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100003B3C()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003B9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100002900();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_100003BC8@<D0>(void *a1@<X0>, _OWORD *a4@<X8>)
{
  v6 = [a1 identifier];
  v7 = sub_10008A268();
  v9 = v8;

  v15._countAndFlagsBits = v7;
  v15._object = v9;
  sub_10008A2C8(v15);

  sub_100089378();
  sub_100008DC0(&unk_1000A5A40, &qword_10008D8E0);
  sub_1000893A8();

  if (!v4)
  {
    *a4 = v11;
    a4[1] = v12;
    result = *&v13;
    a4[2] = v13;
    a4[3] = v14;
  }

  return result;
}

void sub_100003D04(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v147 = a3;
  v145 = a4;
  v7 = sub_100008DC0(&qword_1000A5A08, &qword_10008C9E8);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = (&v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v8);
  v13 = (&v134 - v12);
  v14 = __chkstk_darwin(v11);
  v16 = (&v134 - v15);
  __chkstk_darwin(v14);
  v18 = (&v134 - v17);
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    if (v32)
    {
      v33 = v32;
      v34 = a2;
      v35 = [v33 fullyQualifiedLinkActionIdentifier];
      v36 = [v35 bundleIdentifier];

      v37 = sub_10008A268();
      v144 = v38;

      v143 = v34;
      if (sub_10008A7A8())
      {
        v39 = enum case for ContainerDefinition.ContainerType.framework(_:);
        v40 = sub_100089BE8();
        (*(*(v40 - 8) + 104))(v13, v39, v40);
        v41 = v13;
        v42 = 0;
        v43 = v40;
      }

      else
      {
        v43 = sub_100089BE8();
        v41 = v13;
        v42 = 1;
      }

      sub_100009158(v41, v42, 1, v43);
      v64 = sub_100004B0C(v37, v144, v13, a1);
      if (v4)
      {
        sub_100008F80(v13, &qword_1000A5A08, &qword_10008C9E8);

        goto LABEL_26;
      }

      v67 = a1;
      v46 = v64;
      v146 = v67;
      sub_100008F80(v13, &qword_1000A5A08, &qword_10008C9E8);
      v68 = [v33 displayableAppDescriptor];
      if (v68)
      {
        v69 = v68;
        v142 = v46;
        v70 = sub_100008C98(v68, &selRef_bundleIdentifier);
        v72 = v71;
        v73 = v37;
        if (v71)
        {
          v74 = v70;
          v44 = v144;
          if (v70 != v73 || v71 != v144)
          {
            v76 = v73;
            if (sub_10008AA68())
            {

              v77 = 0;
              v78 = 0;
              v72 = 0;
              v79 = _swiftEmptyArrayStorage;
              v46 = v142;
              v80 = v142;
              v49 = v73;
              goto LABEL_41;
            }

            v93 = sub_100089BE8();
            sub_100009158(v10, 1, 1, v93);
            v132 = sub_100004B0C(v74, v72, v10, v146);
            sub_100008F80(v10, &qword_1000A5A08, &qword_10008C9E8);

            v80 = v132;
            v77 = 0;
            v78 = 0;
            v72 = 0;
            v79 = _swiftEmptyArrayStorage;
            v46 = v142;
LABEL_91:
            v49 = v76;
            goto LABEL_41;
          }

          v77 = 0;
          v78 = 0;
          v72 = 0;
          v79 = _swiftEmptyArrayStorage;
          v46 = v142;
          v80 = v142;
        }

        else
        {

          v77 = 0;
          v78 = 0;
          v79 = _swiftEmptyArrayStorage;
          v46 = v142;
          v80 = v142;
          v44 = v144;
        }

        v49 = v73;
        goto LABEL_41;
      }

      v77 = 0;
      v78 = 0;
      v72 = 0;
      v79 = _swiftEmptyArrayStorage;
      v80 = v46;
      v49 = v37;
      goto LABEL_48;
    }

    objc_opt_self();
    v53 = swift_dynamicCastObjCClass();
    if (!v53)
    {
      v49 = sub_10008A268();
      v84 = v83;
      v85 = sub_100004E1C(a1);
      if (v4)
      {

        return;
      }

      v89 = a1;
      v46 = v85;
      v144 = v84;
      v76 = v49;
      v90 = [a2 displayableAppDescriptor];
      if (v90 || (v90 = [a2 appDescriptor]) != 0)
      {
        v104 = v90;
        v78 = sub_100008C98(v90, &selRef_bundleIdentifier);
        v106 = v105;
        v107 = [a2 app];
        v129 = sub_100004C3C(v104, 1, v107, v89);
        v131 = v130;

        v77 = v131;
        v80 = v129;
        v79 = _swiftEmptyArrayStorage;
        v44 = v144;
        v72 = v106;
        goto LABEL_91;
      }

      v80 = 0;
      v78 = 0;
      v72 = 0;
      v79 = _swiftEmptyArrayStorage;
      v77 = 1;
LABEL_48:
      v44 = v144;
      goto LABEL_41;
    }

    v54 = v53;
    v55 = a2;
    v56 = [v54 appDescriptor];
    if (v56)
    {
      v57 = v56;
      v146 = a1;
      v58 = sub_100008C98(v56, &selRef_bundleIdentifier);
      if (v59 || (v58 = sub_100008C98(v57, &selRef_extensionBundleIdentifier), v59))
      {
        v60 = v58;
        v61 = v59;
        v62 = sub_100004C3C(v57, 0, 0, v146);
        if (v4)
        {

          return;
        }

        v91 = v63;
        v144 = v55;
        v44 = v61;
        v46 = v62;

        if ((v91 & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v144 = v55;
      }

      a1 = v146;
    }

    else
    {
      v144 = v55;
    }

    v60 = sub_10008A268();
    v44 = v94;
    v95 = sub_100004E1C(a1);
    if (v4)
    {

      v96 = v144;

      return;
    }

    v97 = a1;
    v46 = v95;
    v146 = v97;
LABEL_65:
    v98 = [v54 displayableAppDescriptor];

    if (v98)
    {
      v99 = v46;
      v100 = sub_100008C98(v98, &selRef_bundleIdentifier);
      v102 = v101;
      v103 = sub_100004C3C(v98, 1, 0, v146);
      v138 = v108;
      v139 = v103;
      v143 = v100;

      v46 = v99;
      v72 = v102;
    }

    else
    {
      v139 = 0;
      v143 = 0;
      v72 = 0;
      v138 = 1;
    }

    objc_opt_self();
    v109 = swift_dynamicCastObjCClass();
    v49 = v60;
    if (v109)
    {
      v110 = v109;
      v111 = v144;
      v112 = sub_100008BC8(v110);
      if (v112)
      {
        v141 = v112[2];
        if (v141)
        {
          v140 = v110;
          v135 = v60;
          v136 = v111;
          v113 = 0;
          v144 = v112;
          v114 = v112 + 5;
          v137 = _swiftEmptyArrayStorage;
          v142 = v72;
          while (1)
          {
            if (v113 >= v144[2])
            {
              __break(1u);
              return;
            }

            v115 = v44;
            v117 = *(v114 - 1);
            v116 = *v114;

            v118 = sub_10008A238();
            v119 = [v140 actionForAppIdentifier:v118];

            if (!v119)
            {
              break;
            }

            v120 = objc_allocWithZone(INAppDescriptor);
            v121 = sub_10000842C(v117, v116);
            v122 = sub_100004C3C(v121, 1, 0, v146);
            v44 = v115;
            v72 = v142;
            if ((v123 & 1) == 0)
            {
              v124 = v122;
              if (v122 != v46)
              {
                if (v138 & 1 | (v122 != v139))
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_100080228();
                    v137 = v127;
                  }

                  v125 = v137[2];
                  if (v125 >= v137[3] >> 1)
                  {
                    sub_100080228();
                    v137 = v128;
                  }

                  v126 = v137;
                  v137[2] = v125 + 1;
                  v126[v125 + 4] = v124;
                  goto LABEL_86;
                }
              }
            }

LABEL_87:
            ++v113;
            v114 += 2;
            if (v141 == v113)
            {
              v133 = v136;

              v49 = v135;
              v78 = v143;
              v80 = v139;
              v77 = v138;
              v79 = v137;
              goto LABEL_41;
            }
          }

LABEL_86:
          v44 = v115;
          v72 = v142;
          goto LABEL_87;
        }
      }

      else
      {
      }

      v79 = _swiftEmptyArrayStorage;
    }

    else
    {

      v79 = _swiftEmptyArrayStorage;
    }

    v78 = v143;
    v80 = v139;
    v77 = v138;
    goto LABEL_41;
  }

  v20 = v19;
  v146 = a1;
  v21 = a2;
  v22 = [v20 fullyQualifiedLinkActionIdentifier];
  v23 = [v22 bundleIdentifier];

  v24 = sub_10008A268();
  v26 = v25;

  if (sub_10008A7A8())
  {
    v27 = enum case for ContainerDefinition.ContainerType.framework(_:);
    v28 = sub_100089BE8();
    (*(*(v28 - 8) + 104))(v18, v27, v28);
    v29 = v18;
    v30 = 0;
    v31 = v28;
  }

  else
  {
    v31 = sub_100089BE8();
    v29 = v18;
    v30 = 1;
  }

  sub_100009158(v29, v30, 1, v31);
  v44 = v26;
  v45 = sub_100004B0C(v24, v26, v18, v146);
  if (!v4)
  {
    v46 = v45;
    v147 = 0;
    sub_100008F80(v18, &qword_1000A5A08, &qword_10008C9E8);
    v47 = sub_100008C98(v20, &selRef_displayableAppBundleIdentifier);
    if (v48)
    {
      v49 = v24;
      if (v47 != v24 || v48 != v44)
      {
        v51 = v48;
        v52 = v47;
        if ((sub_10008AA68() & 1) == 0)
        {
          v86 = sub_100089BE8();
          sub_100009158(v16, 1, 1, v86);
          v143 = v52;
          v87 = v147;
          v88 = sub_100004B0C(v52, v51, v16, v146);
          v72 = v51;
          if (v87)
          {

            sub_100008F80(v16, &qword_1000A5A08, &qword_10008C9E8);
            v80 = 0;
            v79 = _swiftEmptyArrayStorage;
            v77 = 1;
          }

          else
          {
            v92 = v88;
            sub_100008F80(v16, &qword_1000A5A08, &qword_10008C9E8);

            v80 = v92;
            v77 = 0;
            v79 = _swiftEmptyArrayStorage;
          }

          v49 = v24;
          v78 = v143;
          goto LABEL_41;
        }
      }
    }

    else
    {

      v49 = v24;
    }

    v77 = 0;
    v79 = _swiftEmptyArrayStorage;
    v80 = v46;
    v78 = v49;
    v72 = v44;
LABEL_41:
    v81 = v77 & 1;
    LOBYTE(v148) = v81;
    v82 = v145;
    *v145 = v49;
    *(v82 + 1) = v44;
    *(v82 + 2) = v46;
    *(v82 + 3) = v78;
    *(v82 + 4) = v72;
    *(v82 + 5) = v80;
    *(v82 + 48) = v81;
    *(v82 + 7) = v79;
    return;
  }

  sub_100008F80(v18, &qword_1000A5A08, &qword_10008C9E8);

LABEL_26:
  v150 = v4;
  swift_errorRetain();
  sub_100008DC0(&qword_1000A5E80, &qword_10008CA10);
  if ((swift_dynamicCast() & 1) != 0 && (v65 = v149, sub_100009180(v148, v149), v65 >= 2))
  {

    v66 = v145;
    v145[2] = 0u;
    v66[3] = 0u;
    *v66 = 0u;
    v66[1] = 0u;
  }

  else
  {
  }
}

uint64_t sub_100004B0C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v11 = sub_100017A2C();
  if ((v12 & 1) == 0)
  {
    return v11;
  }

  v13 = sub_100005168(a1, a2, a3, a4);
  if (!v5)
  {
    v6 = v13;

    sub_100017A9C(v6, 0, a1, a2);
    sub_100009BA0();
    v14 = swift_allocObject();
    v14[2] = v4;
    v14[3] = a1;
    v14[4] = a2;
    sub_1000896E8();

    sub_100089398();
  }

  return v6;
}

uint64_t sub_100004C3C(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = sub_100009B84();
    v10 = sub_100006488(v7, v8, v9);
    if (v5)
    {
      return v6;
    }

    if (v11)
    {
      v12 = sub_100009B84();
      v10 = sub_100006678(v12, v13, v14);
      if (v15)
      {
        v16 = sub_100009B84();
        return sub_10000621C(v16, v17, v18);
      }
    }

    return v10;
  }

  v20 = sub_100008C98(a1, &selRef_extensionBundleIdentifier);
  if (!v21)
  {
    v27 = sub_100009B84();
    v10 = sub_100006488(v27, v28, v29);
    if (v5)
    {
      return v6;
    }

    if (v30)
    {
      v31 = sub_100009B84();
      return sub_100006678(v31, v32, v33);
    }

    return v10;
  }

  v22 = v20;
  v23 = v21;
  v24 = sub_100017A2C();
  if (v25)
  {
    sub_100006390(v22, v23);
    if (v5)
    {
    }

    else
    {
      v6 = v26;

      sub_100017A9C(v6, 0, v22, v23);
      sub_100009BA0();
      v34 = swift_allocObject();
      v34[2] = v4;
      v34[3] = v22;
      v34[4] = v23;
      sub_1000896E8();

      sub_100089398();
    }
  }

  else
  {
    v6 = v24;
  }

  return v6;
}

uint64_t sub_100004E1C(uint64_t a1)
{
  v3 = v1;
  v5 = sub_10008A268();
  v7 = v6;
  v8 = sub_100017A2C();
  if (v9)
  {
    v10 = sub_10008A268();
    v12 = v11;
    v13 = objc_allocWithZone(LSApplicationRecord);
    v14 = sub_100008490(v10, v12, 0);
    if (v2)
    {
      __chkstk_darwin(v14);
      sub_1000896D8();

      v19 = v24;
    }

    else
    {
      v15 = v14;
      v16 = sub_10008A268();
      v18 = v17;
      v23 = v15;
      sub_100005630(v16, v18, v15, a1);
      v19 = v20;
    }

    sub_100017A9C(v19, 0, v5, v7);
    sub_100009BA0();
    v21 = swift_allocObject();
    v21[2] = v3;
    v21[3] = v5;
    v21[4] = v7;
    sub_1000896E8();

    sub_100089398();
  }

  else
  {
    v19 = v8;
  }

  return v19;
}

Swift::Int sub_1000050B0(char a1)
{
  sub_10008AB08();
  sub_10008AB18(a1 & 1);
  return sub_10008AB28();
}

Swift::Int sub_100005114(uint64_t a1)
{
  v2 = *v1;
  sub_10008AB08();
  sub_10008AB18(v2);
  return sub_10008AB28();
}

void (*sub_100005168(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4))(char *, uint64_t)
{
  v5 = v4;
  v31 = a4;
  v32 = a1;
  v8 = sub_100008DC0(&qword_1000A5A08, &qword_10008C9E8);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_100089BE8();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v30 - v16;
  if (qword_1000A5940 != -1)
  {
    swift_once();
  }

  v18 = qword_1000A8910;
  swift_beginAccess();
  if (!*(*(v18 + 16) + 16))
  {
    sub_100008EA0();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    return a3;
  }

  sub_100008E08(a3, v10);
  a3 = &enum case for ContainerDefinition.ContainerType.extension(_:);
  if (sub_100008E78(v10, 1, v11) == 1)
  {
    sub_100008F80(v10, &qword_1000A5A08, &qword_10008C9E8);
    if (*(*(v18 + 16) + 16) && (, sub_100081308(v32, a2), v20 = v19, , (v20 & 1) != 0))
    {
      (*(v12 + 104))(v17, enum case for ContainerDefinition.ContainerType.daemon(_:), v11);
    }

    else
    {
      v22 = *(v12 + 104);
      v22(v17, enum case for ContainerDefinition.ContainerType.app(_:), v11);
      v23 = objc_allocWithZone(LSApplicationExtensionRecord);

      v24 = sub_10000856C(v32, a2);
      if (!v4)
      {

        (*(v12 + 8))(v17, v11);
        v22(v17, enum case for ContainerDefinition.ContainerType.extension(_:), v11);
        a3 = &enum case for ContainerDefinition.ContainerType.extension(_:);
        goto LABEL_14;
      }

      v5 = 0;
    }

    a3 = &enum case for ContainerDefinition.ContainerType.extension(_:);
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
  }

LABEL_14:
  (*(v12 + 16))(v15, v17, v11);
  v25 = (*(v12 + 88))(v15, v11);
  if (v25 == enum case for ContainerDefinition.ContainerType.app(_:))
  {
    v26 = v5;
    sub_100005630(v32, a2, 0, v31);
  }

  else if (v25 == enum case for ContainerDefinition.ContainerType.daemon(_:))
  {
    v26 = v5;
    v27 = sub_100006E48(v32, a2);
  }

  else if (v25 == enum case for ContainerDefinition.ContainerType.extension(_:))
  {
    v26 = v5;
    sub_100006390(v32, a2);
  }

  else
  {
    if (v25 != enum case for ContainerDefinition.ContainerType.framework(_:))
    {
      sub_100008EA0();
      swift_allocError();
      *v29 = 1;
      swift_willThrow();
      a3 = *(v12 + 8);
      a3(v17, v11);
      a3(v15, v11);
      return a3;
    }

    v26 = v5;
    v27 = sub_100006FEC();
  }

  if (!v26)
  {
    a3 = v27;
  }

  (*(v12 + 8))(v17, v11);
  return a3;
}

void sub_100005630(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    v9 = a3;
    goto LABEL_3;
  }

  if (sub_10008A268() == a1 && v11 == a2)
  {
    goto LABEL_17;
  }

  v13 = sub_10008AA68();

  if (v13)
  {
    goto LABEL_18;
  }

  if (sub_10008A268() == a1 && v14 == a2)
  {
LABEL_17:

    goto LABEL_18;
  }

  v16 = sub_10008AA68();

  if ((v16 & 1) == 0)
  {
    v17 = objc_allocWithZone(LSApplicationRecord);

    v18 = sub_100008490(a1, a2, 1);
    if (v4)
    {

      v9 = 0;
      goto LABEL_4;
    }

    v9 = v18;
LABEL_3:
    v10 = a3;
LABEL_4:
    __chkstk_darwin(v10);
    sub_1000896D8();

    return;
  }

LABEL_18:
  sub_100004E1C(a4);
}

void sub_1000057FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v60 = a3;
  v61 = a4;
  v68 = a2;
  v66 = a5;
  v6 = sub_1000889B8();
  __chkstk_darwin(v6 - 8);
  v63 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100088A68();
  v72 = *(v67 - 8);
  v8 = __chkstk_darwin(v67);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v62 = &v53 - v11;
  __chkstk_darwin(v10);
  v65 = &v53 - v12;
  v13 = sub_100089C18();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100089BE8();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008A268();
  (*(v18 + 104))(v20, enum case for ContainerDefinition.ContainerType.app(_:), v17);
  (*(v14 + 104))(v16, enum case for ContainerDefinition.Origin.firstParty(_:), v13);
  v64 = a1;
  v21 = v73;
  v22 = sub_100089548();
  if (v21)
  {

    (*(v14 + 8))(v16, v13);
    (*(v18 + 8))(v20, v17);
  }

  else
  {
    v57 = v22;

    (*(v14 + 8))(v16, v13);
    (*(v18 + 8))(v20, v17);
    v23 = *(v68 + 24);
    v58 = sub_10008391C();
    v24 = 0;
    v55 = v23;
    v56 = v23 & 0xC000000000000001;
    v54 = v23 & 0xFFFFFFFFFFFFFF8;
    v73 = v72 + 8;
    v25 = v67;
    while (1)
    {
      v26 = v65;
      if (v58 == v24)
      {
        *v66 = v57;
        return;
      }

      if (v56)
      {
        v27 = sub_10008A928();
      }

      else
      {
        if (v24 >= *(v54 + 16))
        {
          goto LABEL_15;
        }

        v27 = *(v55 + 8 * v24 + 32);
      }

      if (__OFADD__(v24, 1))
      {
        break;
      }

      v69 = v24;
      v72 = v27;
      v28 = [v27 locale];
      sub_100088A48();

      v71 = sub_100088A08();
      v30 = v29;
      v70 = *v73;
      v70(v26, v25);
      v31 = sub_10008A298();
      v33 = v32;
      v34 = sub_10008A298();
      v36 = v35;
      v37 = v62;
      sub_100088A28();
      if (qword_1000A5948 != -1)
      {
        swift_once();
      }

      v38 = [static NSBundle._current bundleURL];
      v39 = v63;
      sub_1000889A8();

      v40 = objc_allocWithZone(_NSLocalizedStringResource);
      v41 = sub_100008638(v31, v33, v34, v36, 0, 0, v37, v39);
      v42 = v72;
      v43 = [v72 localize:v41];

      v44 = sub_10008A268();
      v46 = v45;

      v47 = v57;
      v74._countAndFlagsBits = v71;
      v74._object = v30;
      v75._countAndFlagsBits = v44;
      v75._object = v46;
      sub_100089628(v57, v74, v75);

      v48 = [v42 locale];
      v49 = v59;
      sub_100088A48();

      v50 = sub_100088A08();
      v52 = v51;
      v25 = v67;
      v70(v49, v67);
      sub_100005E88(v60, v61, v47, v50, v52);

      v24 = v69 + 1;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_100005E88(uint64_t a1, uint64_t a2, Swift::Int64 a3, uint64_t a4, void *a5)
{
  v38._object = a5;
  v38._countAndFlagsBits = a4;
  sub_100008F3C();

  v8 = sub_10000839C(a1, a2);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = sub_100008C2C(v8);
  if (!v10)
  {

    v39 = 0u;
    v40 = 0u;
LABEL_19:
    sub_100008F80(&v39, &qword_1000A5A20, &qword_10008C9F0);
    return;
  }

  sub_100009BAC(0xD000000000000015, 0x800000010008E420, v10, &v39);

  if (!*(&v40 + 1))
  {

    goto LABEL_19;
  }

  sub_100008DC0(&qword_1000A5A28, &qword_10008C9F8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v35 = v9;
  v11 = 0;
  v12 = v41;
  v13 = *(v41 + 16);
  v36 = _swiftEmptyArrayStorage;
  while (v13 != v11)
  {
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    v14 = *(v12 + 8 * v11 + 32);
    if (*(v14 + 16))
    {

      v15 = sub_100081308(0xD000000000000014, 0x800000010008E440);
      if ((v16 & 1) == 0)
      {

        goto LABEL_11;
      }

      v17 = (*(v14 + 56) + 16 * v15);
      v19 = *v17;
      v18 = v17[1];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000802EC();
        v36 = v22;
      }

      v20 = v36[2];
      if (v20 >= v36[3] >> 1)
      {
        sub_1000802EC();
        v36 = v23;
      }

      ++v11;
      v36[2] = v20 + 1;
      v21 = &v36[2 * v20];
      v21[4] = v19;
      v21[5] = v18;
    }

    else
    {
LABEL_11:
      ++v11;
    }
  }

  v24 = 0;
  v34 = v36[2];
  v25 = v36 + 5;
  while (v34 != v24)
  {
    if (v24 >= v36[2])
    {
      goto LABEL_30;
    }

    v26 = sub_10008A238();
    v27 = sub_10008A238();

    v28 = sub_10008A238();
    v29 = sub_10008A238();
    v30 = [v35 localizedStringForKey:v26 value:v27 table:v28 localization:v29];

    v31 = sub_10008A268();
    v33 = v32;

    v42._countAndFlagsBits = v31;
    v42._object = v33;
    sub_1000895E8(a3, v38, v42, v24);
    if (v5)
    {

      break;
    }

    ++v24;
    v25 += 2;
  }
}

uint64_t sub_10000621C(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_100008C98(a1, &selRef_extensionBundleIdentifier);
  v8 = v7;
  if (!v7)
  {
    return 0;
  }

  v9 = v6;
  v10 = sub_100017A2C();
  if (v11)
  {
    sub_100006390(v9, v8);
    if (v3)
    {
    }

    else
    {
      v4 = v12;

      sub_100017A9C(v4, 0, v9, v8);
      v13 = swift_allocObject();
      v13[2] = a2;
      v13[3] = v9;
      v13[4] = v8;

      sub_100089398();
    }
  }

  else
  {
    v4 = v10;
  }

  return v4;
}

void sub_100006390(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(LSApplicationExtensionRecord);

  v6 = sub_10000856C(a1, a2);
  if (!v2)
  {
    v7 = v6;
    __chkstk_darwin(v6);
    sub_1000896D8();
  }
}

uint64_t sub_100006488(void *a1, uint64_t a2, uint64_t *a3)
{
  v7 = *a3;
  v8 = [a1 applicationRecord];
  v9 = sub_100008C98(a1, &selRef_bundleIdentifier);
  v11 = v10;
  if (!v8)
  {

    return 0;
  }

  if (!v10)
  {

    return 0;
  }

  v12 = v9;
  v13 = v8;
  v14 = sub_100017A2C();
  if (v15)
  {
    v16 = v13;
    sub_100005630(v12, v11, v8, a3);
    if (v3)
    {
    }

    else
    {
      v7 = v17;

      sub_100017A9C(v7, 0, v12, v11);
      v18 = swift_allocObject();
      v18[2] = a2;
      v18[3] = v12;
      v18[4] = v11;

      sub_100089398();
    }
  }

  else
  {
    v7 = v14;
  }

  return v7;
}

uint64_t sub_100006678(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100008C98(a1, &selRef_bundleIdentifier);
  if (!v5)
  {
    return 0;
  }

  v6 = sub_100017A2C();
  if (v7)
  {
    __chkstk_darwin(v6);
    sub_100008DC0(&qword_1000A5A50, &qword_10008CA18);
    v8 = a3;
    sub_1000896D8();

    if (!v3)
    {
      return v10;
    }
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

void sub_1000067AC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v71 = a2;
  v64 = a8;
  v65 = a6;
  v67 = a5;
  v68 = a1;
  v72 = a3;
  v9 = *a7;
  v62 = a7;
  v63 = v9;
  v73 = sub_100088A68();
  v69 = *(v73 - 8);
  v10 = __chkstk_darwin(v73);
  v61 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = &v54 - v12;
  v13 = sub_100089C18();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100089BE8();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 104))(v20, enum case for ContainerDefinition.ContainerType.app(_:), v17);
  v56 = a4;
  sub_100008C98(a4, &selRef_teamIdentifier);
  (*(v14 + 104))(v16, enum case for ContainerDefinition.Origin.unknown(_:), v13);
  v21 = v70;
  v22 = sub_100089548();
  if (v21)
  {

    (*(v14 + 8))(v16, v13);
    (*(v18 + 8))(v20, v17);
  }

  else
  {
    v23 = v69;
    v60 = v22;

    (*(v14 + 8))(v16, v13);
    (*(v18 + 8))(v20, v17);
    v24 = v67;
    v25 = *(v67 + 24);
    v58 = sub_10008391C();
    if (v58)
    {
      v26 = 0;
      v59 = v25 & 0xC000000000000001;
      v55 = v25 & 0xFFFFFFFFFFFFFF8;
      v70 = (v23 + 8);
      v57 = v25;
      while (1)
      {
        if (v59)
        {
          v27 = sub_10008A928();
          v28 = v73;
          v29 = v66;
        }

        else
        {
          v28 = v73;
          v29 = v66;
          if (v26 >= *(v55 + 16))
          {
            goto LABEL_21;
          }

          v27 = *(v25 + 8 * v26 + 32);
        }

        if (__OFADD__(v26, 1))
        {
          break;
        }

        v69 = v26 + 1;
        v30 = [v27 locale];
        sub_100088A48();

        v31 = sub_100088A08();
        v33 = v32;
        v34 = *v70;
        (*v70)(v29, v28);
        if (v65 && (v35 = [v65 localizedNameWithContext:v27]) != 0)
        {
          v36 = v35;
          v37 = sub_10008A268();
          v39 = v38;
        }

        else
        {
          v40 = sub_100008C98(v56, &selRef_localizedName);
          if (v41)
          {
            v37 = v40;
            v39 = v41;
          }

          else
          {
            v39 = v72;

            v37 = v71;
          }
        }

        v42 = v60;
        v75._countAndFlagsBits = v31;
        v75._object = v33;
        v76._countAndFlagsBits = v37;
        v76._object = v39;
        sub_100089628(v60, v75, v76);

        v43 = [v27 locale];
        v44 = v61;
        sub_100088A48();

        v45 = sub_100088A08();
        v47 = v46;
        v34(v44, v73);
        v24 = v67;
        sub_100005E88(v71, v72, v42, v45, v47);

        ++v26;
        v25 = v57;
        v48 = v64;
        v49 = v62;
        if (v69 == v58)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }

    else
    {
      v48 = v64;
      v49 = v62;
LABEL_19:
      v50 = v72;

      v51 = v60;
      v52 = v71;
      sub_100017A9C(v60, 0, v71, v50);
      v74 = v49;
      v53 = swift_allocObject();
      v53[2] = v24;
      v53[3] = v52;
      v53[4] = v50;

      sub_100089398();

      *v48 = v51;
      *(v48 + 8) = 0;
    }
  }
}

uint64_t sub_100006DEC()
{

  return v0;
}

uint64_t sub_100006E14()
{
  sub_100006DEC();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100006E48(uint64_t a1, uint64_t a2)
{
  if (qword_1000A5940 != -1)
  {
    swift_once();
  }

  v5 = qword_1000A8910;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = sub_100081308(a1, a2);
  if ((v8 & 1) == 0)
  {

LABEL_8:
    sub_100008FE0();
    swift_allocError();
    *v15 = a1;
    v15[1] = a2;
    swift_willThrow();
  }

  v9 = (*(v6 + 56) + (v7 << 6));
  v11 = v9[2];
  v10 = v9[3];
  v12 = v9[1];
  v17[0] = *v9;
  v17[1] = v12;
  v17[2] = v11;
  v17[3] = v10;
  sub_100009034(v17, v16);

  __chkstk_darwin(v13);
  sub_1000896D8();
  result = sub_1000090AC(v17);
  if (!v2)
  {
    return v16[0];
  }

  return result;
}

void *sub_100006FEC()
{
  result = sub_1000896D8();
  if (!v0)
  {
    return v2;
  }

  return result;
}

void sub_100007054(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v66 = a5;
  v67 = a2;
  v68 = a3;
  v69 = a1;
  v55 = a6;
  v65 = sub_100088A68();
  v74 = *(v65 - 8);
  v8 = __chkstk_darwin(v65);
  v62 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v57 = &v54 - v11;
  __chkstk_darwin(v10);
  v63 = &v54 - v12;
  v13 = sub_100089C18();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100089BE8();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a4;
  if (a4)
  {
    sub_100008C98(a4, &selRef_bundleVersion);
  }

  (*(v18 + 104))(v20, enum case for ContainerDefinition.ContainerType.app(_:), v17);
  sub_100089C08();
  v21 = sub_100089548();
  if (v6)
  {

    (*(v14 + 8))(v16, v13);
    (*(v18 + 8))(v20, v17);
  }

  else
  {
    v61 = v21;

    (*(v14 + 8))(v16, v13);
    (*(v18 + 8))(v20, v17);
    v22 = *(v66 + 24);
    v59 = sub_10008391C();
    if (v59)
    {
      v23 = 0;
      v60 = v22 & 0xC000000000000001;
      v54 = v22 & 0xFFFFFFFFFFFFFF8;
      v24 = v74 + 8;
      v25 = &ContainerIndexer;
      v56 = xmmword_10008C980;
      v26 = v65;
      v58 = v22;
      while (1)
      {
        if (v60)
        {
          v27 = sub_10008A928();
        }

        else
        {
          if (v23 >= *(v54 + 16))
          {
            goto LABEL_20;
          }

          v27 = *(v22 + 8 * v23 + 32);
        }

        if (__OFADD__(v23, 1))
        {
          break;
        }

        v73 = 0;
        v70 = v23 + 1;
        v71 = v23;
        v28 = v27;
        v29 = [v27 v25[39].base_prots];
        v30 = v63;
        sub_100088A48();

        v72._countAndFlagsBits = sub_100088A08();
        v72._object = v31;
        v32 = *v24;
        (*v24)(v30, v26);
        v33 = v64;
        v74 = v28;
        if (v64)
        {
          v34 = v26;
          sub_100008DC0(&unk_1000A5A30, &unk_10008CA00);
          v35 = swift_allocObject();
          *(v35 + 16) = v56;
          v36 = [v28 v25[39].base_prots];
          v37 = v57;
          sub_100088A48();

          v38 = sub_100088A08();
          v40 = v39;
          v32(v37, v34);
          *(v35 + 32) = v38;
          *(v35 + 40) = v40;
          isa = sub_10008A318().super.isa;

          v42 = [v33 localizedNameWithPreferredLocalizations:isa];

          v43 = sub_10008A268();
          v45 = v44;
        }

        else
        {
          v43 = 0;
          v45 = 0xE000000000000000;
        }

        v46 = v61;
        v75._countAndFlagsBits = v43;
        v75._object = v45;
        v47 = v73;
        sub_100089628(v61, v72, v75);
        if (v47)
        {

          return;
        }

        v73 = v32;
        v48 = v74;
        v49 = [v74 locale];
        v50 = v62;
        sub_100088A48();

        v51 = sub_100088A08();
        v53 = v52;
        v26 = v65;
        v73(v50, v65);
        sub_100005E88(v67, v68, v46, v51, v53);

        v23 = v71 + 1;
        v22 = v58;
        v25 = &ContainerIndexer;
        if (v70 == v59)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }

    else
    {
LABEL_17:
      *v55 = v61;
    }
  }
}

void sub_10000766C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v52 = a5;
  v55 = a2;
  v59 = a6;
  v60 = a1;
  v58 = sub_100088A68();
  v50 = *(v58 - 8);
  v7 = __chkstk_darwin(v58);
  v57 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v56 = &v47 - v9;
  v10 = sub_100089C18();
  v61 = *(v10 - 8);
  v62 = v10;
  __chkstk_darwin(v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100089BE8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008C98(a4, &selRef_bundleVersion);
  v17 = *(v14 + 104);
  v53 = v13;
  v17(v16, enum case for ContainerDefinition.ContainerType.extension(_:), v13);
  sub_100008C98(a4, &selRef_teamIdentifier);
  v48 = a4;
  [a4 developerType];
  sub_100089C08();
  v18 = v63;
  v19 = sub_100089548();
  if (v18)
  {

    (*(v61 + 8))(v12, v62);
    (*(v14 + 8))(v16, v53);
  }

  else
  {
    v54 = v19;

    (*(v61 + 8))(v12, v62);
    (*(v14 + 8))(v16, v53);
    v20 = *(v52 + 24);
    v55 = sub_10008391C();
    v21 = 0;
    v52 = v20;
    v53 = v20 & 0xC000000000000001;
    ++v50;
    v51 = v20 & 0xFFFFFFFFFFFFFF8;
    v49 = xmmword_10008C980;
    v22 = v48;
    while (1)
    {
      v23 = v56;
      v24 = v58;
      v25 = v57;
      if (v55 == v21)
      {
        *v59 = v54;
        return;
      }

      if (v53)
      {
        v26 = sub_10008A928();
      }

      else
      {
        if (v21 >= *(v51 + 16))
        {
          goto LABEL_16;
        }

        v26 = *(v52 + 8 * v21 + 32);
      }

      if (__OFADD__(v21, 1))
      {
        break;
      }

      v61 = v21;
      v27 = v26;
      v28 = [v26 locale];
      v63 = 0;
      v29 = v28;
      sub_100088A48();

      v62 = sub_100088A08();
      v31 = v30;
      v32 = v22;
      v33 = *v50;
      (*v50)(v23, v24);
      sub_100008DC0(&unk_1000A5A30, &unk_10008CA00);
      v34 = v24;
      v35 = swift_allocObject();
      *(v35 + 16) = v49;
      v36 = [v27 locale];
      sub_100088A48();

      v37 = sub_100088A08();
      v38 = v25;
      v40 = v39;
      v33(v38, v34);
      v22 = v32;
      *(v35 + 32) = v37;
      *(v35 + 40) = v40;
      isa = sub_10008A318().super.isa;

      v42 = [v32 localizedNameWithPreferredLocalizations:isa];

      v43 = sub_10008A268();
      v45 = v44;

      v64._countAndFlagsBits = v62;
      v64._object = v31;
      v65._countAndFlagsBits = v43;
      v65._object = v45;
      v46 = v63;
      sub_100089628(v54, v64, v65);
      if (v46)
      {

        return;
      }

      v21 = v61 + 1;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

void sub_100007BD4(uint64_t a1@<X0>, unint64_t a2@<X1>, Swift::Int64 a3@<X2>, Swift::String *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v37 = a3;
  v33 = a5;
  v36 = a2;
  v41 = a1;
  v40 = a6;
  v39 = sub_100088A68();
  v32 = *(v39 - 8);
  __chkstk_darwin(v39);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100089C18();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100089BE8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 104);
  v34 = v18;
  v17(v16, enum case for ContainerDefinition.ContainerType.daemon(_:));
  v19 = *(v10 + 104);
  v35 = v9;
  v19(v12, enum case for ContainerDefinition.Origin.firstParty(_:), v9);
  v20 = v38;
  v21 = sub_100089548();
  if (v20)
  {
    (*(v10 + 8))(v12, v35);
    (*(v14 + 8))(v16, v34);
  }

  else
  {
    v37 = v21;
    (*(v10 + 8))(v12, v35);
    (*(v14 + 8))(v16, v34);
    v22 = *(v33 + 24);
    v38 = sub_10008391C();
    v23 = 0;
    v35 = v22 & 0xFFFFFFFFFFFFFF8;
    v36 = v22 & 0xC000000000000001;
    v24 = (v32 + 8);
    while (1)
    {
      if (v38 == v23)
      {
        *v40 = v37;
        return;
      }

      if (v36)
      {
        v25 = sub_10008A928();
      }

      else
      {
        if (v23 >= *(v35 + 16))
        {
          goto LABEL_13;
        }

        v25 = *(v22 + 8 * v23 + 32);
      }

      v26 = v25;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      v27 = [v25 locale];
      sub_100088A48();

      v28 = sub_100088A08();
      v30 = v29;
      (*v24)(v8, v39);
      v42._countAndFlagsBits = v28;
      v42._object = v30;
      sub_100089628(v37, v42, a4[1]);

      ++v23;
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }
}

void sub_100007FB8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v31 = a4;
  v37 = a1;
  v36 = a5;
  v34 = sub_100088A68();
  v30 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100089C18();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100089BE8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v16, enum case for ContainerDefinition.ContainerType.framework(_:), v13);
  v17 = *(v10 + 104);
  v32 = v9;
  v17(v12, enum case for ContainerDefinition.Origin.firstParty(_:), v9);
  v35._countAndFlagsBits = a2;
  v35._object = a3;
  v18 = v33;
  v19 = sub_100089548();
  if (v18)
  {
    (*(v10 + 8))(v12, v32);
    (*(v14 + 8))(v16, v13);
  }

  else
  {
    v33 = v19;
    (*(v10 + 8))(v12, v32);
    (*(v14 + 8))(v16, v13);
    v20 = *(v31 + 24);
    v21 = sub_10008391C();
    v22 = 0;
    v31 = v20 & 0xFFFFFFFFFFFFFF8;
    v32 = v20 & 0xC000000000000001;
    v23 = (v30 + 8);
    while (1)
    {
      if (v21 == v22)
      {
        *v36 = v33;
        return;
      }

      if (v32)
      {
        v24 = sub_10008A928();
      }

      else
      {
        if (v22 >= *(v31 + 16))
        {
          goto LABEL_13;
        }

        v24 = *(v20 + 8 * v22 + 32);
      }

      v25 = v24;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v26 = [v24 locale];
      sub_100088A48();

      v27 = sub_100088A08();
      v29 = v28;
      (*v23)(v8, v34);
      v38._countAndFlagsBits = v27;
      v38._object = v29;
      sub_100089628(v33, v38, v35);

      ++v22;
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }
}

id sub_10000839C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10008A238();

  v3 = [swift_getObjCClassFromMetadata() bundleWithIdentifier:v2];

  return v3;
}

id sub_10000842C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_10008A238();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithBundleIdentifier:v3];

  return v4;
}

id sub_100008490(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_10008A238();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_100088978();

    swift_willThrow();
  }

  return v6;
}

id sub_10000856C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10008A238();

  v8 = 0;
  v4 = [v2 initWithBundleIdentifier:v3 error:&v8];

  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    sub_100088978();

    swift_willThrow();
  }

  return v4;
}

id sub_100008638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v14 = sub_10008A238();

  if (!a4)
  {
    v15 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = sub_10008A238();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = sub_10008A238();

LABEL_6:
  isa = sub_100088A18().super.isa;
  sub_100088998(v18);
  v20 = v19;
  v21 = [v9 initWithKey:v14 defaultValue:v15 table:v16 locale:isa bundleURL:v19];

  v22 = sub_1000889B8();
  (*(*(v22 - 8) + 8))(a8, v22);
  v23 = sub_100088A68();
  (*(*(v23 - 8) + 8))(a7, v23);
  return v21;
}

uint64_t sub_1000087D4(uint64_t a1)
{
  v2 = sub_100009524(&qword_1000A5B18, type metadata accessor for WFMeasurementUnitType, &unk_10008D020);
  v3 = sub_100009524(&qword_1000A5B20, type metadata accessor for WFMeasurementUnitType, &unk_10008CFC8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100008890(uint64_t a1)
{
  v2 = sub_100009524(&qword_1000A5B08, type metadata accessor for WFLocalizationUsage, &unk_10008D160);
  v3 = sub_100009524(&qword_1000A5B10, type metadata accessor for WFLocalizationUsage, &unk_10008D108);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000894C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10008A238();

  *a2 = v3;
  return result;
}

uint64_t sub_100008994(uint64_t a1)
{
  v2 = sub_100009524(&qword_1000A5B28, type metadata accessor for LNPlatformName, &unk_10008D1E8);
  v3 = sub_100009524(&qword_1000A5B30, type metadata accessor for LNPlatformName, &unk_10008CEBC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100008A50(uint64_t a1)
{
  v2 = sub_100009524(&qword_1000A5B38, type metadata accessor for WFExecutionPlatform, &unk_10008CDB4);
  v3 = sub_100009524(&qword_1000A5B40, type metadata accessor for WFExecutionPlatform, &unk_10008CD54);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100008B0C(uint64_t a1)
{
  v2 = sub_100009524(&qword_1000A5B48, type metadata accessor for WFWorkflowRunSource, &unk_10008CBF0);
  v3 = sub_100009524(&unk_1000A5B50, type metadata accessor for WFWorkflowRunSource, &unk_10008CB98);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100008BC8(void *a1)
{
  v2 = [a1 supportedAppIdentifiers];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10008A328();

  return v3;
}

uint64_t sub_100008C2C(void *a1)
{
  v1 = [a1 infoDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10008A1C8();

  return v3;
}

uint64_t sub_100008C98(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_10008A268();

  return v4;
}

uint64_t sub_100008CF8(uint64_t a1, uint64_t a2)
{
  sub_10008A268();
  sub_10008A2B8();
}

Swift::Int sub_100008D4C(uint64_t a1, uint64_t a2)
{
  sub_10008A268();
  sub_10008AB08();
  sub_10008A2B8();
  v2 = sub_10008AB28();

  return v2;
}

uint64_t sub_100008DC0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100008E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008DC0(&qword_1000A5A08, &qword_10008C9E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100008EA0()
{
  result = qword_1000A5A10;
  if (!qword_1000A5A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5A10);
  }

  return result;
}

unint64_t sub_100008F3C()
{
  result = qword_1000A5A18;
  if (!qword_1000A5A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A5A18);
  }

  return result;
}

uint64_t sub_100008F80(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100008DC0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100008FE0()
{
  result = qword_1000A62B0;
  if (!qword_1000A62B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A62B0);
  }

  return result;
}

uint64_t sub_100009180(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1000091B4()
{

  sub_100009BA0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100009214(uint64_t a1, int a2)
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

uint64_t sub_100009234(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ContainerIndexer.ContainerIndexerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContainerIndexer.ContainerIndexerError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_100009448(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100009524(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000095B8()
{
  result = qword_1000A5AA0;
  if (!qword_1000A5AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5AA0);
  }

  return result;
}

uint64_t sub_10000996C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10008A268();
  v4 = v3;
  if (v2 == sub_10008A268() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10008AA68();
  }

  return v7 & 1;
}

uint64_t sub_1000099F0(uint64_t a1, id *a2)
{
  result = sub_10008A248();
  *a2 = 0;
  return result;
}

uint64_t sub_100009A68(uint64_t a1, id *a2)
{
  v3 = sub_10008A258();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_100009AE8(uint64_t a1)
{
  sub_10008A268();
  v1 = sub_10008A238();

  return v1;
}

uint64_t sub_100009B20(uint64_t a1)
{
  sub_10008A268();
  v1 = sub_10008A2F8();

  return v1;
}

double sub_100009BAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100081308(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_10000A650(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_100009C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_100081308(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100009C60()
{
  type metadata accessor for DaemonEnumerator();
  v0 = swift_allocObject();
  result = sub_10008A1E8();
  *(v0 + 16) = result;
  qword_1000A8910 = v0;
  return result;
}

void sub_100009CC0()
{
  v2 = v0;
  sub_10000A4E0();
  v3 = sub_10000A35C(0xD000000000000021, 0x800000010008E4A0);
  if (!v3)
  {
    sub_10000A524();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    return;
  }

  v4 = v3;
  strcpy(&v106, "LaunchDaemons");
  HIWORD(v106) = -4864;
  v5 = [v3 __swift_objectForKeyedSubscript:sub_10008AA88()];
  swift_unknownObjectRelease();
  if (v5)
  {
    sub_10008A7E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v106 = 0u;
    v107[0] = 0u;
  }

  v101 = v106;
  v102 = v107[0];
  if (!*(&v107[0] + 1))
  {
    sub_10000A578(&v101);
    goto LABEL_54;
  }

  v89 = sub_100008DC0(&qword_1000A5DB0, &qword_10008D2E8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_54:
    sub_10000A524();
    swift_allocError();
    *v83 = 0;
LABEL_55:
    swift_willThrow();

    return;
  }

  v7 = [objc_opt_self() currentDevice];
  v88 = sub_10000A5E0(v7);
  v95 = v8;
  if (!v8)
  {

    sub_10000A524();
    swift_allocError();
    *v84 = 1;
    goto LABEL_55;
  }

  v85 = v4;
  v86 = v1;
  v9 = 0;
  v98 = *&v105[0];
  v10 = *&v105[0] + 64;
  v11 = 1 << *(*&v105[0] + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(*&v105[0] + 64);
  v14 = (v11 + 63) >> 6;
  v90 = "xpc/launchd.plist";
  v99 = *&v105[0] + 64;
  v87 = v0;
  while (v13)
  {
    v15 = v9;
LABEL_18:
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v17 = v16 | (v15 << 6);
    v18 = (*(v98 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    sub_10000A650(*(v98 + 56) + 32 * v17, v105);
    *&v101 = v20;
    *(&v101 + 1) = v19;
    sub_10000A6AC(v105, &v102);

LABEL_19:
    v106 = v101;
    v107[0] = v102;
    v107[1] = v103;
    if (!*(&v101 + 1))
    {

      return;
    }

    v21 = v106;
    v22 = sub_10000A6AC(v107, &v101);
    sub_10000A814(v22, v23, v24, v25, v26, v27, v28, v29, v85, v86, v87, v88, v89, v90, v91, v93, v95, v96, v97, v98, v99, v100, v101, *(&v101 + 1), v102, *(&v102 + 1), v103, *(&v103 + 1), v104, *(&v104 + 1), v105[0]);
    if (swift_dynamicCast())
    {
      v30 = *&v105[0];
      if (*(*&v105[0] + 16) && (v31 = sub_100081308(0x6C6562614CLL, 0xE500000000000000), (v32 & 1) != 0))
      {
        v33 = sub_10000A650(*(v30 + 56) + 32 * v31, &v101);
        sub_10000A814(v33, v34, v35, v36, v37, v38, v39, v40, v85, v86, v87, v88, v89, v90, v91, v93, v95, v96, v97, v98, v99, v100, v101, *(&v101 + 1), v102, *(&v102 + 1), v103, *(&v103 + 1), v104, *(&v104 + 1), v105[0]);
        v41 = swift_dynamicCast();
        v42 = *&v105[0];
        if (!v41)
        {
          v42 = 0;
        }

        v97 = v42;
        if (v41)
        {
          v43 = *(&v105[0] + 1);
        }

        else
        {
          v43 = 0;
        }

        v100 = v43;
      }

      else
      {
        v97 = 0;
        v100 = 0;
      }

      v96 = v21;
      if (*(v30 + 16) && (v44 = sub_100081308(0xD000000000000010, v90 | 0x8000000000000000), (v45 & 1) != 0))
      {
        sub_10000A650(*(v30 + 56) + 32 * v44, &v101);

        v46 = sub_100008DC0(&qword_1000A6C70, &qword_10008D2F8);
        sub_10000A814(v46, v47, v48, v46, v49, v50, v51, v52, v85, v86, v87, v88, v89, v90, v91, v93, v95, v21, v97, v98, v99, v100, v101, *(&v101 + 1), v102, *(&v102 + 1), v103, *(&v103 + 1), v104, *(&v104 + 1), v105[0]);
        if (swift_dynamicCast())
        {
          v53 = *&v105[0];
        }

        else
        {
          v53 = 0;
        }
      }

      else
      {

        v53 = 0;
      }

      v54 = v100;
      if (!v100 || !v53)
      {

        goto LABEL_42;
      }

      if (*(v53 + 16))
      {

        v55 = sub_10008A238();

        v56 = [v55 lastPathComponent];

        v57 = sub_10008A268();
        v92 = v58;
        v94 = v57;

        v54 = v100;
        v59 = v97;
      }

      else
      {

        v59 = v97;
        v92 = v100;
        v94 = v97;
      }

      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v54;
      v108 = *(v2 + 16);
      v62 = v108;
      *(v2 + 16) = 0x8000000000000000;
      v63 = sub_100081308(v59, v61);
      v65 = v62[2];
      v66 = (v64 & 1) == 0;
      v67 = v65 + v66;
      if (__OFADD__(v65, v66))
      {
        goto LABEL_59;
      }

      v68 = v63;
      v69 = v64;
      sub_100008DC0(&qword_1000A5DB8, &qword_10008D2F0);
      if (sub_10008A9A8(isUniquelyReferenced_nonNull_native, v67))
      {
        v70 = v97;
        v71 = sub_100081308(v97, v100);
        if ((v69 & 1) != (v72 & 1))
        {
          goto LABEL_61;
        }

        v68 = v71;
        v73 = v100;
        if (v69)
        {
LABEL_51:
          v74 = v108;
          v79 = v108[7] + (v68 << 6);
          v80 = *(v79 + 48);
          v82 = *v79;
          v81 = *(v79 + 16);
          v103 = *(v79 + 32);
          v104 = v80;
          v101 = v82;
          v102 = v81;
          sub_10000A7F0(v79, v85, v86, v87, v88, v89, v90, v92, v94, v95, v96);
          sub_1000090AC(&v101);

          goto LABEL_52;
        }
      }

      else
      {
        v73 = v100;
        v70 = v97;
        if (v69)
        {
          goto LABEL_51;
        }
      }

      v74 = v108;
      v108[(v68 >> 6) + 8] |= 1 << v68;
      v75 = (v74[6] + 16 * v68);
      *v75 = v70;
      v75[1] = v73;
      sub_10000A7F0((v74[7] + (v68 << 6)), v85, v86, v87, v88, v89, v90, v92, v94, v95, v96);
      v76 = v74[2];
      v77 = __OFADD__(v76, 1);
      v78 = v76 + 1;
      if (v77)
      {
        goto LABEL_60;
      }

      v74[2] = v78;
LABEL_52:
      v2 = v87;
      *(v87 + 16) = v74;
      swift_endAccess();
      v10 = v99;
    }

    else
    {
LABEL_42:

      v10 = v99;
    }
  }

  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v14)
    {
      v13 = 0;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      goto LABEL_19;
    }

    v13 = *(v10 + 8 * v15);
    ++v9;
    if (v13)
    {
      v9 = v15;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  sub_10008AAA8();
  __break(1u);
}

id sub_10000A35C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_10008A238();

  v4 = [v2 initWithContentsOfFile:v3];

  return v4;
}

uint64_t sub_10000A3D0()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

__n128 sub_10000A42C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000A440(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000A480(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000A4E0()
{
  result = qword_1000A5DA0;
  if (!qword_1000A5DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A5DA0);
  }

  return result;
}

unint64_t sub_10000A524()
{
  result = qword_1000A5DA8;
  if (!qword_1000A5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5DA8);
  }

  return result;
}

uint64_t sub_10000A578(uint64_t a1)
{
  v2 = sub_100008DC0(&qword_1000A5A20, &qword_10008C9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A5E0(void *a1)
{
  v2 = [a1 systemBuildNumber];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10008A268();

  return v3;
}

uint64_t sub_10000A650(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10000A6AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_BYTE *storeEnumTagSinglePayload for DaemonEnumerator.EnumeratorError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10000A79C()
{
  result = qword_1000A5DC0;
  if (!qword_1000A5DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5DC0);
  }

  return result;
}

void sub_10000A7F0(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a1 = v12;
  a1[1] = v11;
  a1[2] = a9;
  a1[3] = a8;
  a1[4] = a11;
  a1[5] = v13;
  a1[6] = a5;
  a1[7] = a10;
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_10008A298();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return sub_10008A298();
    }

LABEL_9:
    __break(1u);
    return sub_10008A298();
  }

  __break(1u);
  return result;
}

uint64_t *NSBundle._current.unsafeMutableAddressor()
{
  if (qword_1000A5948 != -1)
  {
    sub_10000AA34(&qword_1000A5948);
  }

  return &static NSBundle._current;
}

id sub_10000A95C()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static NSBundle._current = result;
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_1000A5948 != -1)
  {
    sub_10000AA34(&qword_1000A5948);
  }

  v1 = static NSBundle._current;

  return v1;
}

uint64_t sub_10000AA34(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000AA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_100012554();
  return _swift_task_switch(v5);
}

uint64_t sub_10000AA84()
{
  sub_100012604();
  v1 = v0[1].i64[1];
  v2 = _s23IndexingPreflightResultV4StepOMa(0);
  v3 = swift_task_alloc();
  v0[3].i64[0] = v3;
  v4 = v0[2];
  *(v3 + 16) = v1;
  *(v3 + 24) = vextq_s8(v4, v4, 8uLL);
  v5 = _s23IndexingPreflightResultVMa(0);
  swift_task_alloc();
  sub_100012480();
  v0[3].i64[1] = v6;
  *v6 = v7;
  v6[1] = sub_10000AB8C;
  v8 = v0[1].i64[0];

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v8, v2, v5, 0, 0, &unk_10008D3F8, v3, v2);
}

uint64_t sub_10000AB8C()
{
  sub_100012404();
  sub_100012474();
  v3 = v2;
  sub_1000123F8();
  *v4 = v3;
  v5 = *v1;
  sub_10001237C();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_100012554();

    return _swift_task_switch(v7);
  }

  else
  {

    sub_10001248C();

    return v8();
  }
}

uint64_t sub_10000ACAC()
{
  sub_100012404();

  sub_10001248C();

  return v0();
}

uint64_t sub_10000AD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_100008DC0(&qword_1000A5E60, &qword_10008D400);
  v5[7] = swift_task_alloc();
  v5[8] = _s23IndexingPreflightResultV4StepOMa(0);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v6 = sub_100008DC0(&qword_1000A5E68, &qword_10008D408);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_100088EA8();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = _s23IndexingPreflightResultVMa(0);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v8 = sub_100088E08();
  v5[20] = v8;
  v9 = *(v8 - 8);
  v5[21] = v9;
  v5[22] = *(v9 + 64);
  v5[23] = swift_task_alloc();
  sub_100008DC0(&qword_1000A5E70, &qword_10008D410);
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_10000AF84);
}

uint64_t sub_10000AF84()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[20];
  v56 = v0[22];
  v57 = v0[6];
  v55 = v0[5];
  v5 = v0[4];
  v62 = v5;
  v58 = sub_10008A3D8();
  v6 = sub_100012448();
  sub_100009158(v6, v7, v8, v9);
  v61 = *(v3 + 16);
  v59 = v2;
  v10 = v5;
  v11 = v4;
  v61(v2, v10, v4);
  v12 = *(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v60 = *(v3 + 32);
  v60(v13 + ((v12 + 32) & ~v12), v2, v11);
  v14 = sub_1000125F8();
  sub_10000BFEC(v14, v15, v13);
  sub_100012584();
  sub_10001096C(v16, v17, v18);
  v19 = sub_100012448();
  sub_100009158(v19, v20, v21, v58);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v55;
  v23 = v55;
  v24 = sub_1000125F8();
  sub_10000BFEC(v24, v25, v22);
  sub_100012584();
  sub_10001096C(v26, v27, v28);
  v29 = sub_100012448();
  sub_100009158(v29, v30, v31, v58);
  v61(v59, v62, v11);
  v32 = swift_allocObject();
  v33 = sub_1000125E4(v32);
  v60(v33, v59, v11);
  *(v58 + ((((v12 + 40) & ~v12) + v56 + 7) & 0xFFFFFFFFFFFFFFF8)) = v57;
  v34 = v23;

  v35 = sub_1000125F8();
  sub_10000BFEC(v35, v36, v58);
  sub_10001096C(v1, &qword_1000A5E70, &qword_10008D410);
  v37 = sub_100012448();
  sub_100009158(v37, v38, v39, v58);
  v61(v59, v62, v11);
  v40 = swift_allocObject();
  v41 = sub_1000125E4(v40);
  v60(v41, v59, v11);
  v42 = v34;
  v43 = sub_1000125F8();
  sub_10000BFEC(v43, v44, v58);
  sub_10001096C(v1, &qword_1000A5E70, &qword_10008D410);
  sub_100088E68();
  v45 = v0[19];
  v46 = v0[17];
  v47 = v0[15];
  v48 = v0[2];
  sub_100088D18();
  sub_100008DC0(&qword_1000A5E78, &unk_10008D458);
  v49 = sub_10008A1E8();
  v0[25] = *(v47 + 32);
  v0[26] = (v47 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  sub_100012584();
  v50();
  *(v45 + *(v46 + 24)) = &_swiftEmptySetSingleton;
  *(v45 + *(v46 + 28)) = v49;
  sub_100012430();
  sub_1000109C0(v45, v48);
  sub_100008DC0(&qword_1000A5E80, &qword_10008CA10);
  sub_10008A3E8();
  sub_1000108C0();
  swift_task_alloc();
  sub_100012480();
  v0[27] = v51;
  *v51 = v52;
  v53 = sub_1000123B4(v51);

  return dispatch thunk of AsyncIteratorProtocol.next()(v53);
}

uint64_t sub_10000B448()
{
  sub_100012404();
  sub_100012474();
  v3 = v2;
  sub_1000123F8();
  *v4 = v3;
  v5 = *v1;
  sub_10001237C();
  *v6 = v5;
  v3[28] = v0;

  if (v0)
  {
    (*(v3[12] + 8))(v3[13], v3[11]);
    sub_100012350();
    sub_100010A14();
  }

  sub_100012554();

  return _swift_task_switch(v7);
}

uint64_t sub_10000B56C()
{
  v1 = v0[7];
  if (sub_100008E78(v1, 1, v0[8]) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
    sub_100012350();
    sub_100010A14();
    sub_10001096C(v1, &qword_1000A5E60, &qword_10008D400);

    sub_100012420();
    sub_100012640();

    __asm { BRAA            X1, X16 }
  }

  v5 = v0[9];
  v4 = v0[10];
  sub_100010A64(v1, v4);
  sub_1000109C0(v4, v5);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v29 = *v0[9];
      v30 = *(v0[2] + *(v0[17] + 24));
      if ((v30 & 0xC000000000000001) != 0)
      {
        v31 = sub_10008A888();
        sub_100012338();
        v18 = sub_100010A14();
        if (!v31)
        {
LABEL_12:
          v33 = v0[17];
          v32 = v0[18];
          v34 = v0[2];
          v35 = sub_100012498();
          v36(v35);
          v37 = v33[5];
          sub_100088D48();
          sub_10001238C();
          (*(v38 + 16))(v32 + v37, v34 + v37);
          v39 = *(v34 + v33[7]);
          *(v32 + v33[6]) = v29;
          *(v32 + v33[7]) = v39;
          goto LABEL_13;
        }
      }

      else
      {
        sub_100012338();
        v18 = sub_100010A14();
        if (!*(v30 + 16))
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v18);
    case 2u:
      v16 = v0[17];
      v17 = v0[2];
      sub_100012338();
      v18 = sub_100010A14();
      if (*(*(v17 + *(v16 + 28)) + 16))
      {
        goto LABEL_19;
      }

      v20 = v0[17];
      v19 = v0[18];
      v21 = v0[2];
      v22 = *v0[9];
      v23 = sub_100012498();
      v24(v23);
      v25 = v20[5];
      sub_100088D48();
      sub_10001238C();
      (*(v26 + 16))(v19 + v25, v21 + v25);
      *(v19 + v20[6]) = *(v21 + v20[6]);
      *(v19 + v20[7]) = v22;
LABEL_13:

LABEL_14:
      sub_100012350();
      sub_100010A14();
      v40 = sub_100012498();
      sub_100010A64(v40, v41);
      sub_1000108C0();
      swift_task_alloc();
      sub_100012480();
      v0[27] = v42;
      *v42 = v43;
      sub_1000123B4(v42);
      sub_100012640();

      return dispatch thunk of AsyncIteratorProtocol.next()(v18);
    case 3u:
      sub_100012338();
      sub_100010A14();
      sub_100012430();
      v27 = sub_1000125C0();
      sub_1000109C0(v27, v28);
      goto LABEL_14;
    default:
      v6 = v0[25];
      v8 = v0[17];
      v7 = v0[18];
      v9 = v0[14];
      v10 = v0[9];
      v11 = v0[2];
      sub_100012338();
      sub_100010A14();
      v12 = *(sub_100008DC0(&qword_1000A5E90, &qword_10008D468) + 48);
      v6(v7, v10, v9);
      v13 = v8[5];
      sub_100088D48();
      sub_10001238C();
      (*(v14 + 32))(v7 + v13, v10 + v12);
      v15 = *(v11 + v8[7]);
      *(v7 + v8[6]) = *(v11 + v8[6]);
      *(v7 + v8[7]) = v15;

      goto LABEL_13;
  }
}

void sub_10000B9A8()
{
  sub_100012350();
  sub_100010A14();
  sub_10001265C(*(v0 + 192));

  sub_10001248C();
  sub_100012640();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_10000BA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_100088D48();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = sub_100088EA8();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[10] = v7;
  *v7 = v4;
  v7[1] = sub_10000BBC4;

  return sub_100018420();
}

uint64_t sub_10000BBC4()
{
  sub_100012404();
  sub_100012474();
  v3 = v2;
  sub_1000123F8();
  *v4 = v3;
  v5 = *v1;
  sub_10001237C();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    sub_100012554();

    return _swift_task_switch(v7);
  }

  else
  {
    swift_task_alloc();
    sub_100012480();
    *(v3 + 96) = v8;
    *v8 = v9;
    v8[1] = sub_10000BD1C;

    return sub_100019504();
  }
}

uint64_t sub_10000BD1C()
{
  sub_100012404();
  sub_100012474();
  sub_1000123F8();
  *v3 = v2;
  v4 = *v1;
  sub_10001237C();
  *v5 = v4;
  *(v6 + 104) = v0;

  sub_100012554();

  return _swift_task_switch(v7);
}

uint64_t sub_10000BE18()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = *(sub_100008DC0(&qword_1000A5E90, &qword_10008D468) + 48);
  (*(v2 + 32))(v7, v1, v3);
  (*(v6 + 32))(v7 + v8, v4, v5);
  sub_10001269C();
  swift_storeEnumTagMultiPayload();

  sub_100012420();

  return v9();
}

uint64_t sub_10000BF04()
{
  sub_100012404();

  sub_10001248C();

  return v0();
}

uint64_t sub_10000BF6C()
{
  sub_100012404();
  (*(v0[8] + 8))(v0[9], v0[7]);

  sub_10001248C();

  return v1();
}

uint64_t sub_10000BFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100008DC0(&qword_1000A5E70, &qword_10008D410);
  __chkstk_darwin(v7 - 8);
  v9 = v17 - v8;
  sub_100011F34(a1, v17 - v8);
  v10 = sub_10008A3D8();
  if (sub_100008E78(v9, 1, v10) == 1)
  {
    sub_10001096C(v9, &qword_1000A5E70, &qword_10008D410);
  }

  else
  {
    sub_10008A3C8();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = sub_10008A388();
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *v4;
  _s23IndexingPreflightResultV4StepOMa(0);
  v15 = (v13 | v11);
  if (v13 | v11)
  {
    v18[0] = 0;
    v18[1] = 0;
    v15 = v18;
    v18[2] = v11;
    v18[3] = v13;
  }

  v17[1] = 1;
  v17[2] = v15;
  v17[3] = v14;
  swift_task_create();
}

uint64_t sub_10000C1A8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000C23C;

  return sub_10000C3B8();
}

uint64_t sub_10000C23C()
{
  sub_100012404();
  sub_100012474();
  v2 = *v1;
  sub_10001237C();
  *v3 = v2;

  if (v0)
  {
    sub_10001248C();

    return v4();
  }

  else
  {
    sub_100012554();

    return _swift_task_switch(v6);
  }
}

uint64_t sub_10000C354()
{
  sub_100012404();
  sub_10001269C();
  swift_storeEnumTagMultiPayload();
  sub_100012420();

  return v0();
}

uint64_t sub_10000C3B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000C478;

  return withThrowingDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_10000C478()
{
  sub_100012404();
  sub_100012474();
  sub_1000123F8();
  *v3 = v2;
  v4 = *v1;
  sub_10001237C();
  *v5 = v4;
  *(v6 + 24) = v0;

  sub_100012554();

  return _swift_task_switch(v7);
}

uint64_t sub_10000C5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v9 = swift_task_alloc();
  *(v6 + 24) = v9;
  *v9 = v6;
  v9[1] = sub_10000C668;

  return sub_10000C808(a5, a6);
}

uint64_t sub_10000C668()
{
  sub_100012604();
  v3 = v2;
  sub_100012474();
  v5 = v4;
  sub_1000123F8();
  *v6 = v5;
  v7 = *v1;
  sub_10001237C();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    sub_100012554();

    return _swift_task_switch(v11);
  }
}

uint64_t sub_10000C79C()
{
  sub_100012404();
  **(v0 + 16) = *(v0 + 32);
  sub_10001269C();
  swift_storeEnumTagMultiPayload();
  sub_100012420();

  return v1();
}

uint64_t sub_10000C808(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_1000898A8();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v4 = sub_100088F78();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v5 = sub_100088F98();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v6 = sub_100088D98();
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v7 = sub_100089008();
  v2[28] = v7;
  v2[29] = *(v7 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v8 = sub_100088E08();
  v2[33] = v8;
  v2[34] = *(v8 - 8);
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_10000CAF4);
}

uint64_t sub_10000CAF4(uint64_t a1)
{
  v2 = sub_1000124F4();
  v3(v2);
  v4 = sub_100012498();
  v6 = v5(v4);
  if (v6 != enum case for ToolKitIndexingReason.Changeset.partial(_:))
  {
    if (v6 == enum case for ToolKitIndexingReason.Changeset.full(_:))
    {
      sub_100088F28();
      v40 = sub_100088FF8();
      v41 = sub_10008A5B8();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = sub_100012560();
        sub_10001251C(v42);
        sub_1000125CC();
        _os_log_impl(v43, v44, v45, v46, &WFLogCategoryToolKitIndexing, 2u);
        sub_100012458();
      }

      v47 = v1[28];

      v48 = sub_1000124C8();
      v49(v48);
      sub_100088D68();
      sub_100088F88();
      sub_100088F58();
      v50 = sub_100088F88();
      sub_10008A6A8();
      if (sub_10008A7B8())
      {
        v51 = sub_100012560();
        sub_10001251C(v51);
        sub_100088F68();
        sub_1000125CC();
        _os_signpost_emit_with_name_impl(v52, v53, v54, v55, v56, v57, v47, 2u);
        sub_100012458();
      }

      v58 = v1[18];
      v59 = v1[14];
      v60 = v1[15];

      sub_1000124F4();
      sub_100012584();
      v61();
      sub_100088FD8();
      swift_allocObject();
      sub_1000124D4();
      v62 = sub_100012528();
      v63(v62);
      sub_100088DA8();
      (*(v60 + 8))(v58, v59);
      v64 = sub_1000124C8();
      v65(v64);
      v1[36] = [objc_opt_self() toolKitRegistry];
      v66 = swift_task_alloc();
      v1[37] = v66;
      *v66 = v1;
      v66[1] = sub_10000DD34;
      sub_100012624();

      return WFActionRegistry.fillAndWait()();
    }

    if (v6 != enum case for ToolKitIndexingReason.Changeset.none(_:))
    {
      (*(v1[34] + 8))(v1[35], v1[33]);
    }

LABEL_23:
    sub_1000124A4();

    sub_100012624();

    __asm { BRAA            X2, X16 }
  }

  v7 = v1[35];
  (*(v1[34] + 96))(v7, v1[33]);
  v8 = *v7;

  if (!v8[2])
  {

    goto LABEL_23;
  }

  v188 = v8;
  sub_100088F28();
  v9 = sub_100088FF8();
  v10 = sub_10008A5B8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_100012560();
    sub_10001251C(v11);
    sub_1000125CC();
    _os_log_impl(v12, v13, v14, v15, &WFLogCategoryToolKitIndexing, 2u);
    sub_100012458();
  }

  v16 = v1[28];

  v17 = sub_1000124C8();
  v181 = v18;
  v18(v17);
  sub_100088D68();
  sub_100088F88();
  sub_100088F58();
  v19 = sub_100088F88();
  v20 = sub_10008A6A8();
  if (sub_10008A7B8())
  {
    v21 = sub_100012560();
    sub_10001251C(v21);
    v22 = sub_100088F68();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, v20, v22, "FetchingActions", "Fetching actions for a given set of bundles", v16, 2u);
    sub_100012458();
  }

  v23 = v1[21];
  v24 = v1[19];
  v25 = v1[20];
  v26 = v1[16];
  v27 = v1[14];
  v28 = v1[15];

  v29 = sub_1000124F4();
  v30(v29, v26, v27);
  sub_100088FD8();
  swift_allocObject();
  sub_1000124D4();
  v31 = sub_1000124C8();
  v32(v31);
  sub_100088DA8();
  (*(v28 + 8))(v26, v27);
  (*(v25 + 8))(v23, v24);
  v185 = swift_allocObject();
  *(v185 + 16) = &_swiftEmptySetSingleton;
  v186 = [objc_opt_self() sharedProvider];
  v187 = [objc_allocWithZone(WFIntentActionProvider) initWithOptions:1];
  if (ToolKitIndexingReason.Changeset.isExpensive.getter())
  {
    sub_100088F28();
    v33 = sub_100088FF8();
    v34 = sub_10008A5D8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = sub_100012560();
      sub_10001251C(v35);
      _os_log_impl(&_mh_execute_header, v33, v34, "indexing: the changeset is expensive, filling Link provider in full", v23, 2u);
      sub_100012458();
    }

    v36 = sub_1000124C8();
    v181(v36);
    v37 = [v186 createAllAvailableActions];
    if (v37)
    {
      v38 = v37;
      sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
      sub_10001119C();
      sub_100012498();
      v39 = sub_10008A3F8();
    }

    else
    {
      v39 = &_swiftEmptySetSingleton;
    }

    v78 = v188;

    v79 = sub_100010F44(v39, v188);
  }

  else
  {
    v70 = sub_10008A268();
    v72 = sub_1000636BC(v70, v71, v188);

    v73 = v188;
    if (v72)
    {
      v74 = WFBundleWithAppSettingsIdentifiers();
      v75 = sub_10008A3F8();

      sub_10001A784(v75, v188);
      v73 = v76;
    }

    if (sub_10008391C())
    {
      sub_1000561F8(_swiftEmptyArrayStorage);
    }

    else
    {
      v77 = &_swiftEmptySetSingleton;
    }

    v190 = v77;
    sub_100012500();
    v82 = v81 & v80;
    v84 = (63 - v83) >> 6;

    v85 = 0;
    if (v82)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v86 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        goto LABEL_99;
      }

      if (v86 >= v84)
      {
        break;
      }

      v82 = v73[v86 + 7];
      ++v85;
      if (v82)
      {
        v85 = v86;
        do
        {
LABEL_39:
          v82 &= v82 - 1;
          sub_100012590();
          v87 = sub_10008A238();
          v88 = [v186 createActionsForBundleIdentifier:v87];

          sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
          sub_10001119C();
          v89 = sub_10008A3F8();

          sub_10000F640(v89);
        }

        while (v82);
        continue;
      }
    }

    v78 = v188;
    v79 = v190;
  }

  sub_10000F640(v79);
  sub_100012500();
  v92 = v91 & v90;
  v94 = (63 - v93) >> 6;

  v95 = 0;
  if (!v92)
  {
    goto LABEL_44;
  }

  do
  {
LABEL_48:
    v92 &= v92 - 1;
    sub_100012590();
    v97 = sub_10008A238();

    v98 = [v187 createActionsForBundleIdentifier:v97];

    sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
    sub_10001119C();
    v99 = sub_10008A3F8();

    sub_10000F640(v99);
  }

  while (v92);
  while (1)
  {
LABEL_44:
    v96 = v95 + 1;
    if (__OFADD__(v95, 1))
    {
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    if (v96 >= v94)
    {
      break;
    }

    v92 = v78[v96 + 7];
    ++v95;
    if (v92)
    {
      v95 = v96;
      goto LABEL_48;
    }
  }

  v100 = v1[13];
  v101 = v1[10];
  v102 = v1[11];
  v103 = v1[9];

  v182 = [objc_allocWithZone(WFBundledActionProvider) init];
  v104 = *(v102 + 104);
  v104(v100, enum case for ActionProvider.bundled(_:), v101);
  sub_10000F820(v100, v103, v188, v185);
  v105 = *(v102 + 8);
  v106 = sub_100012498();
  v105(v106);
  v107 = v1[12];
  v183 = v1[9];
  v104(v107, enum case for ActionProvider.interchange(_:), v1[10]);
  sub_10000F820(v107, v183, v188, v185);
  v108 = sub_100012498();
  v105(v108);
  v109 = 0;
  v110 = v187;
  v111 = [v187 actionIdentifiersRequiringBundledActionProviderMappedByApp];
  v172 = sub_100008DC0(&qword_1000A5EB8, &qword_10008D480);
  v112 = sub_10008A1C8();

  v113 = sub_10001B5A0(v112);
  v114 = sub_100011204(v113, v188);

  if (!v114[2])
  {

LABEL_97:
    swift_beginAccess();

    sub_10000FE44();
    v168 = sub_1000124C8();
    v169(v168);
    goto LABEL_23;
  }

  v115 = 0;
  v116 = v114 + 7;
  v117 = -1;
  v118 = -1 << *(v114 + 32);
  if (-v118 < 64)
  {
    v117 = ~(-1 << -v118);
  }

  v119 = v117 & v114[7];
  v120 = (63 - v118) >> 6;
  v121 = &ContainerIndexer;
  v174 = v120;
  v175 = (v114 + 7);
  v176 = v114;
  if (!v119)
  {
    while (1)
    {
LABEL_55:
      v122 = v115 + 1;
      if (__OFADD__(v115, 1))
      {
        goto LABEL_102;
      }

      if (v122 >= v120)
      {
        break;
      }

      v119 = v116[v122];
      ++v115;
      if (v119)
      {
        goto LABEL_58;
      }
    }

    goto LABEL_97;
  }

  while (2)
  {
    v122 = v115;
LABEL_58:
    v177 = (v119 - 1) & v119;
    v123 = (v114[6] + ((v122 << 10) | (16 * __clz(__rbit64(v119)))));
    v124 = *v123;
    v125 = v123[1];

    v126 = [v110 *&v121[44].flags];
    v127 = sub_10008A1C8();

    if (!*(v127 + 16))
    {

      v115 = v122;
      goto LABEL_93;
    }

    v173 = v122;
    v128 = sub_100081308(v124, v125);
    v130 = v129;

    if ((v130 & 1) == 0)
    {

      v115 = v122;
LABEL_93:
      v116 = v175;
      v114 = v176;
      v120 = v174;
      v119 = v177;
      if (!v177)
      {
        goto LABEL_55;
      }

      continue;
    }

    break;
  }

  v131 = *(*(v127 + 56) + 8 * v128);

  v132 = *(v131 + 16);
  v179 = v109;
  if (!v132)
  {
LABEL_81:

    v159 = _swiftEmptyArrayStorage;
    sub_100011D84(0, &qword_1000A5EC0, WFActionRequest_ptr);
    isa = sub_10008A318().super.isa;
    [v182 createActionsForRequests:isa];

    v161 = sub_10008391C();
    v162 = 0;
    while (v161 != v162)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v163 = v159;
        v164 = sub_10008A928();
      }

      else
      {
        if (v162 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_101;
        }

        v163 = v159;
        v164 = v159[v162 + 4];
      }

      v165 = v164;
      v166 = v162 + 1;
      if (__OFADD__(v162, 1))
      {
        goto LABEL_100;
      }

      v167 = [v164 result];

      ++v162;
      v159 = v163;
      if (v167)
      {
        sub_10008A308();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10008A348();
        }

        sub_10008A368();
        v162 = v166;
        v159 = v163;
      }
    }

    swift_beginAccess();
    sub_10000F580(_swiftEmptyArrayStorage);
    swift_endAccess();
    v115 = v173;
    v110 = v187;
    v109 = v179;
    v121 = &ContainerIndexer;
    goto LABEL_93;
  }

  sub_10008A968();
  v134 = sub_100011D44(v131);
  v136 = v135;
  v137 = 0;
  v189 = v131 + 64;
  v178 = v131 + 72;
  v180 = v1;
  if ((v134 & 0x8000000000000000) == 0)
  {
    while (v134 < 1 << *(v131 + 32))
    {
      v138 = v134 >> 6;
      if ((*(v189 + 8 * (v134 >> 6)) & (1 << v134)) == 0)
      {
        goto LABEL_104;
      }

      if (*(v131 + 36) != v136)
      {
        goto LABEL_105;
      }

      v184 = v133;
      v139 = (*(v131 + 56) + 16 * v134);
      v140 = v131;
      v141 = *v139;
      v142 = v139[1];
      objc_allocWithZone(WFActionRequest);

      sub_1000102D0(v141, v142, 0);
      sub_10008A948();
      sub_10008A978();
      v131 = v140;
      sub_10008A988();
      v143 = sub_10008A958();
      v151 = 1 << *(v140 + 32);
      if (v134 >= v151)
      {
        goto LABEL_106;
      }

      v152 = *(v189 + 8 * v138);
      if ((v152 & (1 << v134)) == 0)
      {
        goto LABEL_107;
      }

      if (*(v140 + 36) != v136)
      {
        goto LABEL_108;
      }

      v153 = v152 & (-2 << (v134 & 0x3F));
      if (v153)
      {
        v151 = __clz(__rbit64(v153)) | v134 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v154 = v138 << 6;
        v155 = (v178 + 8 * v138);
        v156 = v138 + 1;
        while (v156 < (v151 + 63) >> 6)
        {
          v158 = *v155++;
          v157 = v158;
          v154 += 64;
          ++v156;
          if (v158)
          {
            sub_10001267C(v143, v144, v145, v146, v147, v148, v149, v150, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v182, v184);
            v151 = __clz(__rbit64(v157)) + v154;
            goto LABEL_75;
          }
        }

        sub_10001267C(v143, v144, v145, v146, v147, v148, v149, v150, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v182, v184);
LABEL_75:
        v131 = v140;
      }

      ++v137;
      v1 = v180;
      if (v137 == v132)
      {
        goto LABEL_81;
      }

      v133 = 0;
      v136 = *(v131 + 36);
      v134 = v151;
      if (v151 < 0)
      {
        break;
      }
    }
  }

LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
  return WFActionRegistry.fillAndWait()();
}

uint64_t sub_10000DD34()
{
  sub_100012404();
  sub_100012474();
  v1 = *v0;
  sub_10001237C();
  *v2 = v1;

  sub_100012554();

  return _swift_task_switch(v3);
}

uint64_t sub_10000DE1C()
{
  v1 = v0[36];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v5 = [v1 actions];
  sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
  sub_10001119C();
  v8 = sub_10008A3F8();

  sub_10000FE44();
  (*(v4 + 8))(v2, v3);
  sub_1000124A4();

  v6 = v0[1];

  return v6(v8);
}

uint64_t sub_10000DF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_10000DFC0);
}

uint64_t sub_10000DFC0()
{
  sub_100012604();
  **(v0 + 16) = sub_10000E04C(*(v0 + 32));
  sub_10001269C();
  swift_storeEnumTagMultiPayload();
  sub_100012420();

  return v1();
}

void *sub_10000E04C(uint64_t a1)
{
  v71 = a1;
  v1 = sub_100088E08();
  v73 = *(v1 - 8);
  __chkstk_darwin(v1);
  v72 = (&v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = sub_100088F78();
  v3 = *(v70 - 1);
  v4 = __chkstk_darwin(v70);
  v67 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v63 - v6;
  v68 = sub_100088F98();
  v8 = *(v68 - 8);
  v9 = __chkstk_darwin(v68);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v63 - v12;
  v14 = sub_100088D98();
  v65 = *(v14 - 8);
  v66 = v14;
  __chkstk_darwin(v14);
  v69 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088D68();
  sub_100088F88();
  sub_100088F58();
  v16 = sub_100088F88();
  v17 = sub_10008A6A8();
  if (sub_10008A7B8())
  {
    v18 = swift_slowAlloc();
    v64 = v1;
    v19 = v18;
    *v18 = 0;
    v20 = sub_100088F68();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v17, v20, "SampleInvocationFetch", "Fetching sample invocations prior to indexing", v19, 2u);
    v1 = v64;
  }

  v21 = v70;
  (*(v3 + 16))(v67, v7, v70);
  sub_100088FD8();
  swift_allocObject();
  sub_100088FC8();
  v22 = v68;
  (*(v8 + 16))(v11, v13, v68);
  sub_100088DA8();
  (*(v3 + 8))(v7, v21);
  (*(v8 + 8))(v13, v22);
  v24 = v72;
  v23 = v73;
  (*(v73 + 16))(v72, v71, v1);
  v25 = (*(v23 + 88))(v24, v1);
  if (v25 == enum case for ToolKitIndexingReason.Changeset.partial(_:))
  {
    (*(v23 + 96))(v24, v1);
    v26 = *v24;

    v27 = sub_10001BE2C(v26);
  }

  else if (v25 == enum case for ToolKitIndexingReason.Changeset.full(_:))
  {
    v28 = [objc_opt_self() sharedProvider];
    v29 = [v28 metadataProvider];

    v74 = 0;
    v30 = [v29 bundlesWithError:&v74];
    v31 = v74;
    if (!v30)
    {
      v36 = v74;
      sub_100088978();

      swift_willThrow();
      v62 = v69;
      sub_10000FE44();
      (*(v65 + 8))(v62, v66);
      return v36;
    }

    v32 = v30;
    v27 = sub_10008A328();
    v33 = v31;
  }

  else
  {
    if (v25 != enum case for ToolKitIndexingReason.Changeset.none(_:))
    {
      (*(v23 + 8))(v24, v1);
    }

    v27 = _swiftEmptyArrayStorage;
  }

  v71 = v27[2];
  if (!v71)
  {
    v36 = &_swiftEmptyDictionarySingleton;
LABEL_31:

    v60 = v69;
    sub_10000FE44();
    (*(v65 + 8))(v60, v66);
    return v36;
  }

  v70 = objc_opt_self();
  v34 = 0;
  v35 = v27 + 5;
  v36 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    if (v34 >= v27[2])
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }

    v38 = *(v35 - 1);
    v37 = *v35;

    v39 = [v70 sharedProvider];
    v72 = v38;
    v73 = v37;
    v40 = sub_10008A238();
    v41 = [v39 examplePhrasesForBundleIdentifier:v40 useCache:1];

    sub_100011D84(0, &qword_1000A5E98, LNExamplePhraseDescription_ptr);
    v42 = sub_10008A328();

    if (v42 >> 62)
    {
      v43 = sub_10008A9D8();
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v43 < 1)
    {

      goto LABEL_24;
    }

    v44 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v36;
    v46 = sub_100081308(v72, v73);
    v48 = v36[2];
    v49 = (v47 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_35;
    }

    v51 = v46;
    v52 = v47;
    sub_100008DC0(&qword_1000A5EA0, &qword_10008D470);
    if (sub_10008A9A8(isUniquelyReferenced_nonNull_native, v50))
    {
      break;
    }

LABEL_21:
    v27 = v44;
    if ((v52 & 1) == 0)
    {
      v36 = v74;
      *(v74 + (v51 >> 6) + 8) |= 1 << v51;
      v55 = (v36[6] + 16 * v51);
      v56 = v73;
      *v55 = v72;
      v55[1] = v56;
      *(v36[7] + 8 * v51) = v42;
      v57 = v36[2];
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_36;
      }

      v36[2] = v59;
      goto LABEL_27;
    }

    v36 = v74;
    *(*(v74 + 7) + 8 * v51) = v42;
LABEL_24:

LABEL_27:
    ++v34;
    v35 += 2;
    if (v71 == v34)
    {
      goto LABEL_31;
    }
  }

  v53 = sub_100081308(v72, v73);
  if ((v52 & 1) == (v54 & 1))
  {
    v51 = v53;
    goto LABEL_21;
  }

  result = sub_10008AAA8();
  __break(1u);
  return result;
}

uint64_t sub_10000E874(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  sub_100008DC0(&qword_1000A5E70, &qword_10008D410);
  *(v2 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10000E910);
}

uint64_t sub_10000E910()
{
  sub_100012404();
  v1 = *(v0 + 24);
  v2 = sub_10008A3D8();
  sub_100009158(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_10000EDAC(v1, &unk_10008D4D0, v3);
  sub_10001096C(v1, &qword_1000A5E70, &qword_10008D410);

  sub_100012420();

  return v4();
}

uint64_t sub_10000E9D8()
{
  v1 = sub_100088F78();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v2 = sub_100088F98();
  v0[6] = v2;
  v0[7] = *(v2 - 8);
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v3 = sub_100088D98();
  v0[10] = v3;
  v0[11] = *(v3 - 8);
  v0[12] = swift_task_alloc();

  return _swift_task_switch(sub_10000EB64);
}

uint64_t sub_10000EB64()
{
  sub_100088D68();
  sub_100088F88();
  sub_100088F58();
  v2 = sub_100088F88();
  sub_10008A6A8();
  if (sub_10008A7B8())
  {
    v3 = sub_100012560();
    sub_10001251C(v3);
    sub_100088F68();
    sub_1000125CC();
    _os_signpost_emit_with_name_impl(v4, v5, v6, v7, v8, v9, v0, 2u);
    sub_100012458();
  }

  v10 = v1[5];
  v11 = v1[2];
  v12 = v1[3];

  sub_1000124F4();
  sub_100012584();
  v13();
  sub_100088FD8();
  swift_allocObject();
  sub_1000124D4();
  v14 = sub_100012528();
  v15(v14);
  sub_100088DA8();
  (*(v12 + 8))(v10, v11);
  v16 = sub_1000124C8();
  v17(v16);
  if (qword_1000A5940 != -1)
  {
    swift_once();
  }

  v19 = v1[11];
  v18 = v1[12];
  v20 = v1[10];
  sub_100009CC0();
  sub_10000FE44();
  (*(v19 + 8))(v18, v20);

  sub_10001248C();

  return v21();
}

uint64_t sub_10000EDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100008DC0(&qword_1000A5E70, &qword_10008D410);
  __chkstk_darwin(v7 - 8);
  v9 = v17 - v8;
  sub_100011F34(a1, v17 - v8);
  v10 = sub_10008A3D8();
  if (sub_100008E78(v9, 1, v10) == 1)
  {
    sub_10001096C(v9, &qword_1000A5E70, &qword_10008D410);
  }

  else
  {
    sub_10008A3C8();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = sub_10008A388();
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *v4;
  v15 = (v13 | v11);
  if (v13 | v11)
  {
    v18[0] = 0;
    v18[1] = 0;
    v15 = v18;
    v18[2] = v11;
    v18[3] = v13;
  }

  v17[1] = 1;
  v17[2] = v15;
  v17[3] = v14;
  swift_task_create();
}

uint64_t ToolKitIndexingReason.Changeset.isExpensive.getter()
{
  sub_100089008();
  sub_100012368();
  __chkstk_darwin(v1);
  sub_1000123E8();
  v2 = sub_100088E08();
  sub_100012368();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000123E8();
  v8 = (v7 - v6);
  v9 = [objc_opt_self() sharedProvider];
  v10 = [v9 metadataProvider];

  (*(v4 + 16))(v8, v0, v2);
  v11 = (*(v4 + 88))(v8, v2);
  if (v11 == enum case for ToolKitIndexingReason.Changeset.partial(_:))
  {
    (*(v4 + 96))(v8, v2);
    v12 = *v8;

    v23 = 0;
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 56);
    v16 = (v13 + 63) >> 6;

    for (i = 0; v15; i = v18)
    {
      v18 = i;
LABEL_9:
      v19 = (*(v12 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v15)))));
      v20 = v19[1];
      v22[0] = *v19;
      v22[1] = v20;

      sub_100010170(&v23, v22, v10);
      v15 &= v15 - 1;
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {

        return v23 > 80;
      }

      v15 = *(v12 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    if (v11 == enum case for ToolKitIndexingReason.Changeset.full(_:))
    {

      return 1;
    }

    if (v11 == enum case for ToolKitIndexingReason.Changeset.none(_:))
    {

      return 0;
    }
  }

  result = sub_10008AA58();
  __break(1u);
  return result;
}

uint64_t sub_10000F328(void **a1, void *a2)
{
  v3 = *a1;
  if (!swift_dynamicCastObjCProtocolConditional())
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 || (objc_opt_self(), (v4 = swift_dynamicCastObjCClass()) != 0))
  {
    v5 = v4;
    v6 = v3;
    v7 = [v5 fullyQualifiedLinkActionIdentifier];
  }

  else
  {
    sub_100088BF8();
    if (!swift_dynamicCastClass())
    {
      while (1)
      {
        v15 = v3;
        sub_10008A918(31);
        v16._object = 0x800000010008E620;
        v16._countAndFlagsBits = 0xD00000000000001DLL;
        sub_10008A2C8(v16);
        sub_100008DC0(&unk_1000A5F30, &qword_10008D498);
        sub_10008A998();
LABEL_8:
        sub_10008A9C8();
        __break(1u);
      }
    }

    v14 = v3;
    v7 = sub_100088BE8();
  }

  v8 = v7;
  v9 = [v7 bundleIdentifier];

  v10 = sub_10008A268();
  v12 = v11;

  LOBYTE(v10) = sub_1000636BC(v10, v12, a2);

  return v10 & 1;
}

void sub_10000F580(uint64_t a1)
{
  v2 = sub_10008391C();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = sub_10008A928();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    sub_100054E3C(&v5, v4);
  }
}

void sub_10000F640(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_10008A878();
    sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
    sub_10001119C();
    sub_10008A428();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_100011E9C(v1);
      return;
    }

    while (1)
    {
      sub_100054E3C(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_10008A8A8())
      {
        sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_10000F820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100008DC0(&qword_1000A5F40, &qword_10008D4A8);
  sub_100089368();
  if (!v4)
  {
    v6 = v40;
    if (*(v40 + 16))
    {
      v7 = sub_10000FC54(a1);
      v8 = v7;
      v9 = *(v40 + 16);
      v37 = v7;
      if (v9)
      {
        sub_10008A968();
        v11 = sub_100083920();
        v13 = v12;
        v14 = 0;
        v15 = v40 + 56;
        v38 = v9;
        while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v6 + 32))
        {
          v16 = v11 >> 6;
          if ((*(v15 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
          {
            goto LABEL_40;
          }

          if (*(v6 + 36) != v13)
          {
            goto LABEL_41;
          }

          v39 = v14;
          v17 = (*(v6 + 48) + 16 * v11);
          v18 = v6;
          v19 = *v17;
          v20 = v17[1];
          v41 = v10;
          objc_allocWithZone(WFActionRequest);

          sub_1000102D0(v19, v20, 0);
          sub_10008A948();
          sub_10008A978();
          sub_10008A988();
          sub_10008A958();
          if (v41)
          {
            goto LABEL_45;
          }

          v21 = 1 << *(v18 + 32);
          if (v11 >= v21)
          {
            goto LABEL_42;
          }

          v22 = *(v15 + 8 * v16);
          if ((v22 & (1 << v11)) == 0)
          {
            goto LABEL_43;
          }

          v6 = v18;
          if (*(v18 + 36) != v13)
          {
            goto LABEL_44;
          }

          v23 = v22 & (-2 << (v11 & 0x3F));
          if (v23)
          {
            v21 = __clz(__rbit64(v23)) | v11 & 0x7FFFFFFFFFFFFFC0;
            v24 = v38;
          }

          else
          {
            v25 = v16 << 6;
            v26 = v16 + 1;
            v24 = v38;
            v27 = (v40 + 64 + 8 * v16);
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                v21 = __clz(__rbit64(v28)) + v25;
                break;
              }
            }
          }

          v10 = 0;
          v14 = v39 + 1;
          v11 = v21;
          if (v39 + 1 == v24)
          {

            v8 = v37;
            goto LABEL_24;
          }
        }
      }

      else
      {

LABEL_24:
        sub_100011D84(0, &qword_1000A5EC0, WFActionRequest_ptr);
        isa = sub_10008A318().super.isa;
        [v8 createActionsForRequests:isa];

        v31 = sub_10008391C();
        v32 = 0;
        while (1)
        {
          if (v31 == v32)
          {

            swift_beginAccess();
            sub_10000F580(_swiftEmptyArrayStorage);
            swift_endAccess();

            return;
          }

          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            v33 = sub_10008A928();
          }

          else
          {
            if (v32 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

            v33 = _swiftEmptyArrayStorage[v32 + 4];
          }

          v34 = v33;
          v35 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          v36 = [v33 result];

          ++v32;
          if (v36)
          {
            sub_10008A308();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_10008A348();
            }

            sub_10008A368();
            v32 = v35;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
    }

    else
    {
    }
  }
}

id sub_10000FC54(uint64_t a1)
{
  v2 = sub_1000898A8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for ActionProvider.bundled(_:))
  {
    v7 = WFBundledActionProvider_ptr;
    return [objc_allocWithZone(*v7) init];
  }

  if (v6 == enum case for ActionProvider.interchange(_:))
  {
    v7 = WFInterchangeActionProvider_ptr;
    return [objc_allocWithZone(*v7) init];
  }

  _s14PreflightErrorOMa(0);
  sub_100011E44();
  swift_allocError();
  v10 = v9;
  v11 = sub_100008DC0(&qword_1000A5F50, &qword_10008D4B0);
  sub_100009158(v10, 1, 1, v11);
  swift_willThrow();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10000FE0C@<X0>(uint64_t *a3@<X8>)
{
  result = sub_100089528();
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_10000FE44()
{
  sub_100012578();
  v32 = sub_100088FA8();
  sub_100012368();
  v35 = v0;
  __chkstk_darwin(v1);
  sub_1000123E8();
  v34 = v3 - v2;
  v4 = sub_100088F78();
  sub_100012368();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000123E8();
  v10 = v9 - v8;
  v11 = sub_100088F98();
  sub_100012368();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000123E8();
  v17 = v16 - v15;
  sub_100088D58();
  v33 = sub_100088D78();
  v19 = v18;
  sub_100088D88();
  v20 = sub_100088F88();
  sub_100088FB8();
  v31 = sub_10008A698();
  result = sub_10008A7B8();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v6 + 8))(v10, v4);
    return (*(v13 + 8))(v17, v11);
  }

  v29 = v6;
  v30 = v4;
  if ((v19 & 1) == 0)
  {
    v23 = v34;
    v22 = v35;
    v24 = v33;
    if (v33)
    {
      v25 = v32;
LABEL_9:

      sub_100088FE8();

      if ((*(v22 + 88))(v23, v25) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v26 = "[Error] Interval already ended";
      }

      else
      {
        (*(v22 + 8))(v23, v25);
        v26 = "";
      }

      v27 = sub_100012560();
      *v27 = 0;
      v28 = sub_100088F68();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, v31, v28, v24, v26, v27, 2u);

      v6 = v29;
      v4 = v30;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  v23 = v34;
  v22 = v35;
  if (HIDWORD(v33))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v33 & 0xFFFFF800) != 0xD800)
  {
    v25 = v32;
    if (v33 >> 16 <= 0x10)
    {
      v24 = &v36;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100010170(void *a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v23 = 0;
  v7 = sub_100011CE4(v5, v6, &v23, a3, &selRef_actionIdentifiersForBundleIdentifier_error_);
  v8 = v23;
  if (v7)
  {
    v9 = v7;
    v10 = sub_10008A328();
    v11 = v8;

    v12 = *(v10 + 16);

    v23 = 0;
    v13 = sub_100011CE4(v5, v6, &v23, a3, &selRef_entityIdentifiersForBundleIdentifier_error_);
    v8 = v23;
    if (v13)
    {
      v14 = v13;
      v15 = sub_10008A328();
      v16 = v8;

      v17 = *(v15 + 16);

      v19 = v12 + v17;
      if (__OFADD__(v12, v17))
      {
        __break(1u);
      }

      else
      {
        v20 = __OFADD__(*a1, v19);
        v21 = *a1 + v19;
        if (!v20)
        {
          *a1 = v21;
          return result;
        }
      }

      __break(1u);
    }
  }

  v22 = v8;
  sub_100088978();

  return swift_willThrow();
}

id sub_1000102D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10008A238();

  if (a3)
  {
    v6.super.isa = sub_10008A1B8().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [v3 initWithActionIdentifier:v5 serializedParameters:v6.super.isa];

  return v7;
}

uint64_t sub_100010398(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = swift_task_alloc();
  v9 = sub_100012410(v8);
  *v9 = v10;
  v9[1] = sub_100012334;

  return sub_10000AD08(a1, a2, v5, v6, v7);
}

uint64_t sub_100010474()
{
  sub_1000125D8();
  sub_100088E08();
  v0 = swift_task_alloc();
  v1 = sub_100012410(v0);
  *v1 = v2;
  v1[1] = sub_100012334;
  v3 = sub_1000123A0();

  return sub_10000BA6C(v3, v4, v5, v6);
}

uint64_t sub_10001054C()
{
  sub_100012604();
  v0 = swift_task_alloc();
  v1 = sub_100012410(v0);
  *v1 = v2;
  v1[1] = sub_1000105E8;
  v3 = sub_1000123A0();

  return sub_10000C1A8(v3);
}

uint64_t sub_1000105E8()
{
  sub_100012404();
  sub_100012474();
  v1 = *v0;
  sub_10001237C();
  *v2 = v1;

  sub_10001248C();

  return v3();
}

uint64_t sub_1000106C8()
{
  sub_1000125D8();
  v1 = *(sub_100088E08() - 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 40) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = swift_task_alloc();
  v5 = sub_100012410(v4);
  *v5 = v6;
  v5[1] = sub_100012334;
  v7 = sub_1000123A0();

  return sub_10000C5B8(v7, v8, v9, v2, v10, v3);
}

uint64_t sub_1000107E0()
{
  sub_1000125D8();
  sub_100088E08();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_100012410(v2);
  *v3 = v4;
  v3[1] = sub_100012334;
  v5 = sub_1000123A0();

  return sub_10000DF9C(v5, v6, v7, v1, v8);
}

unint64_t sub_1000108C0()
{
  result = qword_1000A5E88;
  if (!qword_1000A5E88)
  {
    sub_100010924(&qword_1000A5E68, &qword_10008D408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5E88);
  }

  return result;
}

uint64_t sub_100010924(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10001096C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100008DC0(a2, a3);
  sub_100012610();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000109C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100012578();
  v4(v3);
  sub_10001238C();
  v5 = sub_1000125C0();
  v6(v5);
  return a2;
}

uint64_t sub_100010A14()
{
  v1 = sub_1000125D8();
  v2(v1);
  sub_100012610();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_100010A64(uint64_t a1, uint64_t a2)
{
  v3 = sub_100012578();
  v4(v3);
  sub_10001238C();
  v5 = sub_1000125C0();
  v6(v5);
  return a2;
}

unint64_t sub_100010AB8(uint64_t a1, void *a2)
{
  sub_10008A758(a2[5]);
  result = sub_10008A868();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t sub_100010B3C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100008DC0(&unk_1000A6440, &qword_10008D4A0);
  result = sub_10008A8F8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_10008AB08();

    sub_10008A2B8();
    result = sub_10008AB28();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100010D58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100008DC0(&qword_1000A5EC8, &unk_10008D488);
  result = sub_10008A8F8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_10008A758(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

Swift::Int sub_100010F44(uint64_t a1, void *a2)
{
  v3 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = &_swiftEmptySetSingleton;
    v22 = &_swiftEmptySetSingleton;

    sub_10008A878();
    while (1)
    {
      while (1)
      {
        if (!sub_10008A8A8())
        {
          swift_bridgeObjectRelease_n();

          return v6;
        }

        sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
        swift_dynamicCast();
        v7 = sub_10000F328(&v21, a2);
        if (v3)
        {

          v20 = v21;
          swift_bridgeObjectRelease_n();

          return v6;
        }

        v8 = v21;
        if (v7)
        {
          break;
        }
      }

      v9 = v6[2];
      if (v6[3] <= v9)
      {
        sub_100051204(v9 + 1);
      }

      v6 = v22;
      result = sub_10008A758(v22[5]);
      v11 = (v6 + 7);
      v12 = -1 << *(v6 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~v6[(v13 >> 6) + 7]) == 0)
      {
        break;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~v6[(v13 >> 6) + 7])) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_18:
      *&v11[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
      *(v6[6] + 8 * v15) = v8;
      ++v6[2];
    }

    v16 = 0;
    v17 = (63 - v12) >> 6;
    while (++v14 != v17 || (v16 & 1) == 0)
    {
      v18 = v14 == v17;
      if (v14 == v17)
      {
        v14 = 0;
      }

      v16 |= v18;
      v19 = *&v11[8 * v14];
      if (v19 != -1)
      {
        v15 = __clz(__rbit64(~v19)) + (v14 << 6);
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {

    v6 = sub_1000118A0(a1, a2);

    return v6;
  }

  return result;
}

unint64_t sub_10001119C()
{
  result = qword_1000A5EB0;
  if (!qword_1000A5EB0)
  {
    sub_100011D84(255, &qword_1000A5EA8, WFAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5EB0);
  }

  return result;
}

unint64_t *sub_100011204(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v8 = (&v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_100050188(0, v6, v8);
    v9 = sub_1000114FC(v8, v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1000113CC(v11, v6, a2, a1);
  }

  return v9;
}

unint64_t *sub_1000113CC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1000114FC(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_10001145C(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    sub_100011B64(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

unint64_t *sub_1000114FC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      sub_10008AB08();

      sub_10008A2B8();
      v40 = sub_10008AB28();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = sub_10008AA68();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(v52 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        return sub_100010B3C(v52, a2, v53, v5);
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      sub_10008AB08();

      sub_10008A2B8();
      v18 = sub_10008AB28();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = sub_10008AA68();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      v52[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

int64_t sub_1000118A0(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v30 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v28 = &v25;
    __chkstk_darwin(v9);
    v26 = v7;
    v27 = (&v25 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_100050188(0, v7, v27);
    v29 = 0;
    v10 = 0;
    v7 = a1 + 56;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v8 = v15 | (v10 << 6);
      v31 = *(*(a1 + 48) + 8 * v8);
      v18 = v31;
      v19 = sub_10000F328(&v31, v30);
      if (v3)
      {

        swift_willThrow();
        swift_bridgeObjectRelease_n();
        return v14;
      }

      v20 = v19;

      if (v20)
      {
        *(v27 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_17:
          v14 = sub_100010D58(v27, v26, v29, a1);
          swift_bridgeObjectRelease_n();
          return v14;
        }
      }
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= v14)
      {
        goto LABEL_17;
      }

      v17 = *(v7 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  v24 = v30;

  v14 = sub_10001145C(v23, v7, a1, v24);

  swift_bridgeObjectRelease_n();
  return v14;
}

void sub_100011B64(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v24 = *(*(a3 + 48) + 8 * v15);
    v16 = v24;
    v17 = sub_10000F328(&v24, a4);
    if (v4)
    {

      return;
    }

    v18 = v17;

    if (v18)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:

        sub_100010D58(a1, a2, v22, a3);

        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

id sub_100011CE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  v8 = sub_10008A238();
  v9 = [a4 *a5];

  return v9;
}

uint64_t sub_100011D84(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100011DC4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_100011E0C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100011E44()
{
  result = qword_1000A5F48;
  if (!qword_1000A5F48)
  {
    _s14PreflightErrorOMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5F48);
  }

  return result;
}

uint64_t sub_100011EA4()
{
  sub_100012404();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100012334;
  sub_1000125C0();

  return sub_10000E9D8();
}

uint64_t sub_100011F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008DC0(&qword_1000A5E70, &qword_10008D410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011FCC(uint64_t a1)
{
  sub_100012024();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_100012024()
{
  if (!qword_1000A5FD8)
  {
    v0 = sub_1000898A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A5FD8);
    }
  }
}

void sub_100012074(uint64_t a1)
{
  sub_1000120FC(319);
  if (v1 <= 0x3F)
  {
    sub_100012170(319);
    if (v2 <= 0x3F)
    {
      sub_1000121E4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1000120FC(uint64_t a1)
{
  if (!qword_1000A6080)
  {
    sub_100088EA8();
    sub_100088D48();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000A6080);
    }
  }
}

void sub_100012170(uint64_t a1)
{
  if (!qword_1000A6088)
  {
    sub_100011D84(255, &qword_1000A5EA8, WFAction_ptr);
    sub_10001119C();
    v1 = sub_10008A438();
    if (!v2)
    {
      atomic_store(v1, &qword_1000A6088);
    }
  }
}

void sub_1000121E4(uint64_t a1)
{
  if (!qword_1000A6090)
  {
    sub_100010924(&qword_1000A5E78, &unk_10008D458);
    v1 = sub_10008A1F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1000A6090);
    }
  }
}

void sub_100012280(uint64_t a1)
{
  sub_100088EA8();
  if (v1 <= 0x3F)
  {
    sub_100088D48();
    if (v2 <= 0x3F)
    {
      sub_100012170(319);
      if (v3 <= 0x3F)
      {
        sub_1000121E4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100012458()
{
}

uint64_t sub_1000124D4()
{

  return sub_100088FC8();
}

uint64_t sub_100012560()
{

  return swift_slowAlloc();
}

uint64_t sub_100012590()
{
}

char *sub_1000125E4(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v2;
  return a1 + v1;
}

uint64_t sub_10001265C(uint64_t a1)
{
}

uint64_t sub_10001267C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{

  return sub_100011DC4(v20, v21, a20 & 1);
}

uint64_t sub_1000126B8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v97 = a5;
  v98 = a4;
  v10 = sub_100008DC0(&qword_1000A6210, &qword_10008D598);
  __chkstk_darwin(v10 - 8);
  v134 = &v84 - v11;
  v12 = sub_100008DC0(&unk_1000A6270, qword_10008D5F8);
  __chkstk_darwin(v12 - 8);
  v133 = &v84 - v13;
  v14 = sub_100008DC0(&qword_1000A6C60, &qword_10008D5B8);
  __chkstk_darwin(v14 - 8);
  v132 = &v84 - v15;
  v140 = sub_100088C58();
  v16 = *(v140 - 8);
  __chkstk_darwin(v140);
  v131 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_100089F98();
  v135 = *(v130 - 8);
  __chkstk_darwin(v130);
  v87 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100089FD8();
  __chkstk_darwin(v19 - 8);
  v96 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_100089E68();
  v141 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10008A128();
  v139 = *(v102 - 8);
  __chkstk_darwin(v102);
  v114 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_100089E88();
  v138 = *(v111 - 8);
  v23 = __chkstk_darwin(v111);
  v93 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v84 - v25;
  v125 = sub_1000899A8();
  v27 = *(v125 - 8);
  v28 = __chkstk_darwin(v125);
  v92 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v84 - v30;
  v112 = sub_100089918();
  v32 = *(v112 - 8);
  __chkstk_darwin(v112);
  v34 = &v84 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a1 + 16);
  if (v35)
  {
    v109 = v34;
    v36 = a2;
    v37 = v16;
    v84 = v16;
    v38 = v36;
    v143 = _swiftEmptyArrayStorage;
    v99 = v26;
    v104 = v35;
    sub_100081B90(0, v35, 0);
    v126 = v143;
    result = sub_100083920();
    v42 = 0;
    v124 = a1 + 56;
    v117 = v27 + 16;
    v100 = (v139 + 8);
    v108 = (v138 + 32);
    v107 = enum case for TypeDefinition.enumeration(_:);
    v106 = (v32 + 104);
    v128 = (v37 + 8);
    v129 = v37 + 16;
    v127 = v135 + 32;
    v90 = enum case for EnumerationDefinition.Kind.actionEnum(_:);
    v89 = (v141 + 104);
    v113 = (v27 + 8);
    v105 = v32 + 32;
    v88 = a1 + 64;
    v43 = v125;
    v103 = v31;
    v44 = v27;
    v86 = a3;
    v85 = v38;
    v91 = a1;
    v116 = v27;
    v110 = v32;
    while (1)
    {
      v45 = v114;
      if (result < 0 || result >= 1 << *(a1 + 32))
      {
        break;
      }

      if ((*(v124 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_39;
      }

      if (*(a1 + 36) != v40)
      {
        goto LABEL_40;
      }

      v119 = 1 << result;
      v120 = result >> 6;
      v123 = v41;
      v122 = v40;
      v118 = v42;
      v46 = *(a1 + 48);
      v47 = *(v44 + 72);
      v121 = result;
      v115 = *(v44 + 16);
      v115(v31, v46 + v47 * result, v43);
      v48 = v38;
      v49 = sub_10008A668();
      if (v6)
      {
        (*v113)(v31, v43);
      }

      v50 = v49;
      if (v49)
      {
        sub_10008A0F8();
        v51 = v99;
        sub_10008A5F8();
        (*v100)(v45, v102);

        v52 = v51;
        v31 = v103;
        v53 = v109;
      }

      else
      {
        v54 = v98;
        v55 = *(v98 + 16);
        v101 = 0;
        if (v55)
        {
          v141 = v55;
          v142 = _swiftEmptyArrayStorage;
          sub_100081C40(0, v55, 0);
          v56 = v142;
          v57 = v54 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
          v58 = *(v84 + 72);
          v136 = *(v84 + 16);
          v137 = v58;
          v59 = v87;
          do
          {
            v60 = v131;
            v136(v131, v57, v140);
            v61 = sub_100088C48();
            v138 = v62;
            v139 = v61;
            sub_100088C48();
            v63 = sub_100089D98();
            sub_100009158(v133, 1, 1, v63);
            v64 = sub_100089D58();
            sub_100009158(v134, 1, 1, v64);
            v65 = v132;
            sub_100089DB8();
            v66 = sub_100089E48();
            sub_100009158(v65, 0, 1, v66);
            sub_100089F78();
            (*v128)(v60, v140);
            v142 = v56;
            v68 = v56[2];
            v67 = v56[3];
            if (v68 >= v67 >> 1)
            {
              sub_100081C40(v67 > 1, v68 + 1, 1);
              v56 = v142;
            }

            v56[2] = v68 + 1;
            (*(v135 + 32))(v56 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v68, v59, v130);
            v57 += v137;
            --v141;
          }

          while (v141);
          a3 = v86;
          v48 = v85;
          v43 = v125;
          v69 = v103;
        }

        else
        {
          v69 = v31;
        }

        v115(v92, v69, v43);
        (*v89)(v94, v90, v95);
        sub_10008A5A8();
        v70 = v93;
        v43 = v125;
        sub_100089E58();
        v52 = v70;
        a1 = v91;
        v53 = v109;
        v31 = v69;
        v6 = v101;
      }

      (*v108)(v53, v52, v111);
      v71 = v112;
      (*v106)(v53, v107, v112);
      (*v113)(v31, v43);
      v72 = v126;
      v143 = v126;
      v74 = v126[2];
      v73 = v126[3];
      if (v74 >= v73 >> 1)
      {
        sub_100081B90(v73 > 1, v74 + 1, 1);
        v71 = v112;
        v72 = v143;
      }

      v72[2] = v74 + 1;
      v75 = (*(v110 + 80) + 32) & ~*(v110 + 80);
      v126 = v72;
      result = (*(v110 + 32))(v72 + v75 + *(v110 + 72) * v74, v53, v71);
      if (v123)
      {
        goto LABEL_44;
      }

      v76 = 1 << *(a1 + 32);
      result = v121;
      v43 = v125;
      v44 = v116;
      if (v121 >= v76)
      {
        goto LABEL_41;
      }

      v77 = *(v124 + 8 * v120);
      if ((v77 & v119) == 0)
      {
        goto LABEL_42;
      }

      if (*(a1 + 36) != v122)
      {
        goto LABEL_43;
      }

      v78 = v77 & (-2 << (v121 & 0x3F));
      if (v78)
      {
        v38 = v48;
        v76 = __clz(__rbit64(v78)) | v121 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v79 = v120 << 6;
        v80 = v120 + 1;
        v81 = (v88 + 8 * v120);
        while (v80 < (v76 + 63) >> 6)
        {
          v83 = *v81++;
          v82 = v83;
          v79 += 64;
          ++v80;
          if (v83)
          {
            v38 = v48;
            sub_100011DC4(v121, v122, 0);
            v44 = v116;
            v76 = __clz(__rbit64(v82)) + v79;
            goto LABEL_31;
          }
        }

        v38 = v48;
        sub_100011DC4(v121, v122, 0);
        v44 = v116;
LABEL_31:
        v43 = v125;
      }

      v42 = v118 + 1;
      if (v118 + 1 == v104)
      {

        goto LABEL_36;
      }

      v41 = 0;
      v40 = *(a1 + 36);
      result = v76;
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  else
  {

    v126 = _swiftEmptyArrayStorage;
LABEL_36:

    return v126;
  }

  return result;
}

void *sub_100013468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

void sub_100013478(char *a1, char *a2)
{
  v3 = v2;
  v6 = objc_autoreleasePoolPush();
  sub_100013508(a1, v3, a2, &v7, &v8);
  objc_autoreleasePoolPop(v6);
}

uint64_t sub_100013508@<X0>(char *a1@<X0>, void *a2@<X1>, char *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v67 = a5;
  v68 = a4;
  v79 = a2;
  v8 = sub_1000899A8();
  v9 = *(v8 - 8);
  v70 = v8;
  v71 = v9;
  __chkstk_darwin(v8);
  v66 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10008A128();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10008A088();
  __chkstk_darwin(v12 - 8);
  v74 = sub_10008A508();
  v13 = *(v74 - 8);
  __chkstk_darwin(v74);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100089918();
  v17 = *(v16 - 8);
  v77 = v16;
  v78 = v17;
  v18 = __chkstk_darwin(v16);
  v69 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v65 - v21;
  __chkstk_darwin(v20);
  v24 = &v65 - v23;
  v83 = _swiftEmptyArrayStorage;
  v25 = sub_100011D84(0, &qword_1000A6250, WFMeasurementContentItem_ptr);
  v76 = a1;
  if (v25 == a1)
  {
    v75 = a3;
    v28 = [objc_opt_self() availableUnitTypes];
    type metadata accessor for WFMeasurementUnitType(0);
    v29 = sub_10008A328();

    v22 = *(v29 + 16);
    if (!v22)
    {

      v15 = _swiftEmptyArrayStorage;
LABEL_16:
      sub_10001BEE0(v15);
      goto LABEL_17;
    }

    *&v81[0] = _swiftEmptyArrayStorage;
    v30 = v81;
    sub_100081B90(0, v22, 0);
    v13 = 0;
    v15 = *&v81[0];
    v74 = v78 + 32;
    while (1)
    {
      v31 = *(v29 + 16);
      if (v13 >= v31)
      {
        break;
      }

      v32 = *(v29 + 8 * v13 + 32);
      v30 = v79;
      sub_100013F08(v32);
      if (v5)
      {

        goto LABEL_46;
      }

      *&v81[0] = v15;
      a1 = *(v15 + 16);
      v33 = *(v15 + 24);
      a3 = a1 + 1;
      if (a1 >= v33 >> 1)
      {
        v30 = v81;
        sub_100081B90(v33 > 1, (a1 + 1), 1);
        v15 = *&v81[0];
      }

      ++v13;
      *(v15 + 16) = a3;
      (*(v78 + 32))(v15 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * a1, v24, v77);
      if (v22 == v13)
      {

        goto LABEL_16;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  else
  {
    v82 = 0;
    memset(v81, 0, sizeof(v81));
    v26 = a3;
    sub_10008A4D8();
    sub_10008A4E8();
    sub_10008A4C8();
    sub_10008A598();
    if (v5)
    {
      result = (*(v13 + 8))(v15, v74);
LABEL_47:
      *v68 = v5;
      return result;
    }

    a1 = a3;
    sub_1000803C8(0, 1, 1, _swiftEmptyArrayStorage);
    v30 = v34;
    v29 = v34[2];
    v31 = v34[3];
    a3 = (v29 + 1);
    if (v29 < v31 >> 1)
    {
      goto LABEL_13;
    }
  }

  sub_1000803C8(v31 > 1, a3, 1, v30);
  v30 = v64;
LABEL_13:
  v75 = a1;
  v35 = *(v13 + 8);
  v13 += 8;
  v35(v15, v74);
  v30[2] = a3;
  (*(v78 + 32))(v30 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v29, v22, v77);
  v83 = v30;
LABEL_17:
  v29 = v76;
  v30 = [swift_getObjCClassFromMetadata() allProperties];
  sub_100011D84(0, &qword_1000A6258, WFContentProperty_ptr);
  v36 = sub_10008A328();

  v37 = sub_10008391C();
  v15 = 0;
  v73 = v36 & 0xC000000000000001;
  v74 = v37;
  v72 = v36 & 0xFFFFFFFFFFFFFF8;
  while (v74 != v15)
  {
    if (v73)
    {
      v38 = sub_10008A928();
    }

    else
    {
      v31 = *(v72 + 16);
      if (v15 >= v31)
      {
        goto LABEL_57;
      }

      v38 = *(v36 + 8 * v15 + 32);
    }

    v22 = v38;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v39 = sub_1000140E8(v38, v29, v75);
    if (v5)
    {

      goto LABEL_46;
    }

    a1 = v39;
    a3 = *(v39 + 2);
    v30 = v83;
    v13 = v83[2];
    v29 = &a3[v13];
    if (__OFADD__(v13, a3))
    {
      goto LABEL_58;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v41 = v30[3] >> 1, v41 < v29))
    {
      if (v13 <= v29)
      {
        v42 = &a3[v13];
      }

      else
      {
        v42 = v13;
      }

      sub_1000803C8(isUniquelyReferenced_nonNull_native, v42, 1, v30);
      v30 = v43;
      v41 = v43[3] >> 1;
    }

    v29 = v76;
    if (*(a1 + 2))
    {
      v31 = v41 - v30[2];
      if (v31 < a3)
      {
        goto LABEL_60;
      }

      swift_arrayInitWithCopy();

      if (a3)
      {
        v44 = v30[2];
        v45 = __OFADD__(v44, a3);
        v31 = &a3[v44];
        if (v45)
        {
          goto LABEL_62;
        }

        v30[2] = v31;
      }
    }

    else
    {

      if (a3)
      {
        goto LABEL_59;
      }
    }

    v83 = v30;
    ++v15;
  }

  if (!v83[2])
  {
    goto LABEL_54;
  }

  sub_100011D84(0, &qword_1000A6260, WFLinkEnumerationContentItem_ptr);
  if (swift_dynamicCastMetatype())
  {
    v46 = [swift_getObjCClassFromMetadata() enumMetadata];
    sub_100011D84(0, &qword_1000A6268, LNEnumMetadata_ptr);
    v47 = sub_10008A738();
  }

  else
  {
    v47 = 0;
  }

  v48 = v79;
  v49 = v79[2];
  v80 = v29;
  *&v81[0] = v49;

  sub_100008DC0(&unk_1000A66A0, &qword_10008D5F0);
  v50 = sub_10008A278();
  __chkstk_darwin(v50);
  *(&v65 - 4) = &v83;
  *(&v65 - 3) = v48;
  *(&v65 - 16) = v47 & 1;
  *(&v65 - 1) = v75;
  sub_100089378();
  sub_1000893A8();
  if (v5)
  {

LABEL_46:

    goto LABEL_47;
  }

  v51 = v83;
  v52 = v83[2];
  if (v52)
  {
    *&v81[0] = _swiftEmptyArrayStorage;
    sub_100081BE8(0, v52, 0);
    v53 = *&v81[0];
    v54 = *(v78 + 16);
    v78 += 16;
    v79 = v54;
    v55 = (*(v78 + 64) + 32) & ~*(v78 + 64);
    v74 = v51;
    v56 = v51 + v55;
    v57 = *(v78 + 56);
    v58 = (v78 - 8);
    v75 = (v71 + 32);
    v76 = v57;
    v59 = v66;
    do
    {
      v60 = v69;
      v61 = v77;
      (v79)(v69, v56, v77);
      sub_1000898D8();
      (*v58)(v60, v61);
      *&v81[0] = v53;
      v63 = v53[2];
      v62 = v53[3];
      if (v63 >= v62 >> 1)
      {
        sub_100081BE8(v62 > 1, v63 + 1, 1);
        v53 = *&v81[0];
      }

      v53[2] = v63 + 1;
      (*(v71 + 32))(v53 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v63, v59, v70);
      v56 += v76;
      --v52;
    }

    while (v52);
  }

  else
  {
LABEL_54:

    v53 = _swiftEmptyArrayStorage;
  }

  *v67 = v53;
  return result;
}

uint64_t sub_100013F08(void *a1)
{
  v2 = sub_10008A128();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10008A088();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10008A508();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WFMeasurementUnitType(0);
  v11[4] = v8;
  v11[5] = &protocol witness table for WFMeasurementUnitType;
  v11[1] = a1;
  v9 = a1;
  sub_10008A4D8();
  sub_10008A4E8();
  sub_10008A4F8();
  sub_10008A4C8();
  sub_100011D84(0, &qword_1000A6250, WFMeasurementContentItem_ptr);
  sub_10008A598();
  return (*(v5 + 8))(v7, v4);
}

void *sub_1000140E8(void *a1, uint64_t a2, void *a3)
{
  v21 = a3;
  v24 = a2;
  v23 = sub_100089FF8();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100089888();
  v20 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 hasPossibleValues];
  v11 = [objc_msgSend(a1 "possibleValues")];
  swift_unknownObjectRelease();
  v12 = _swiftEmptyArrayStorage;
  if (v10 && (v11 & 1) == 0)
  {
    v13 = [a1 possibleValues];
    swift_getObjectType();
    v14 = sub_10008A748();
    swift_unknownObjectRelease();
    v15 = v24;
    sub_10008A518();
    sub_10008A648();
    sub_10008A658();
    v12 = a1;
    sub_10008A638();
    (*(v5 + 8))(v7, v23);
    if (!v3)
    {

      v16 = sub_100089868();
      v17 = a1;
      v18 = v21;

      v12 = sub_1000126B8(v16, v17, v18, v14, v15);
      (*(v20 + 8))(v9, v22);
    }
  }

  return v12;
}

uint64_t sub_1000143E0(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, void *a5)
{
  v19 = a5;
  v18 = a4;
  v17 = a1;
  v7 = sub_100089918();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = *(v11 + 16);
  v16[1] = v8 + 16;
  v13 = (v8 + 8);

  for (i = 0; ; ++i)
  {
    if (v12 == i)
    {
    }

    if (i >= *(v11 + 16))
    {
      break;
    }

    (*(v8 + 16))(v10, v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * i, v7);
    sub_100014590(v10, v17, v18 & 1, v19);
    if (v5)
    {
      (*v13)(v10, v7);
    }

    result = (*v13)(v10, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_100014590(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v72 = a4;
  v65 = a3;
  v67 = a2;
  v5 = type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  v61 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v62 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v7;
  __chkstk_darwin(v6);
  v9 = &v52 - v8;
  v10 = sub_1000899A8();
  sub_100012368();
  v12 = v11;
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v15);
  v64 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v66 = a1;
  sub_1000898D8();
  v63 = sub_100089948();
  v69 = v19;
  v70 = v10;
  v20 = *(v12 + 16);
  v20(v9, v18, v10);
  v21 = [v72 locale];
  sub_100088A48();

  v22 = *(v75 + 24);
  v68 = sub_10001C0EC();
  v24 = v23;
  v25 = sub_10001C158();
  if (v24)
  {

    sub_100017740(v9);
    (*(v12 + 8))(v18, v70);
    return v68;
  }

  else
  {
    v54 = v22;
    v55 = v20;
    v56 = v12 + 16;
    v53 = v14;
    v58 = v18;
    v59 = v9;
    v27 = v64;
    v57 = v12;
    v28 = v70;
    *(&v52 - 10) = __chkstk_darwin(v25);
    *(&v52 - 9) = v29;
    v30 = v63;
    *(&v52 - 8) = v75;
    *(&v52 - 7) = v30;
    v26 = v69;
    *(&v52 - 6) = v69;
    *(&v52 - 40) = v65 & 1;
    v31 = v66;
    *(&v52 - 4) = v67;
    *(&v52 - 3) = v31;
    v32 = v71;
    *(&v52 - 2) = v72;
    *(&v52 - 8) = v33;
    sub_1000896D8();
    if (v32)
    {

      sub_100017740(v59);
      (*(v57 + 8))(v58, v28);
    }

    else
    {
      v71 = 0;

      v35 = v73;
      v36 = v74;
      v37 = v27;
      v38 = v27;
      v39 = v58;
      v40 = v28;
      v41 = v55;
      v55(v38, v58, v28);
      swift_bridgeObjectRetain_n();
      v68 = v35;
      v72 = v36;
      sub_10001C1C4(v35, v36, v37);
      v42 = v59;
      v43 = v62;
      sub_10001779C(v59, v62);
      sub_10001C270(v35, v36, v43);
      v73 = v67;
      v41(v37, v39, v40);
      sub_10001779C(v42, v43);
      v44 = v57;
      v45 = (*(v57 + 80) + 24) & ~*(v57 + 80);
      v46 = (v53 + *(v61 + 80) + v45) & ~*(v61 + 80);
      v47 = (v60 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
      v48 = swift_allocObject();
      *(v48 + 16) = v75;
      (*(v44 + 32))(v48 + v45, v37, v40);
      v49 = v48 + v46;
      v50 = v72;
      v26 = v68;
      sub_100017800(v43, v49);
      v51 = (v48 + v47);
      *v51 = v26;
      v51[1] = v50;
      sub_1000896E8();

      sub_100089398();

      sub_100017740(v59);
      (*(v44 + 8))(v58, v40);
    }
  }

  return v26;
}

uint64_t sub_100014AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v8 = sub_100088A68();
  v5[10] = v8;
  sub_100017A0C(v8);
  v5[11] = v9;
  v5[12] = swift_task_alloc();
  v10 = sub_100089918();
  v5[13] = v10;
  sub_100017A0C(v10);
  v5[14] = v11;
  v12 = swift_task_alloc();
  v5[15] = v12;
  v13 = swift_task_alloc();
  v5[16] = v13;
  *v13 = v5;
  v13[1] = sub_100014C2C;

  return WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)(v12, a3, 0, 0, a4);
}

uint64_t sub_100014C2C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_10001501C;
  }

  else
  {
    v2 = sub_100014D40;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_100014D40()
{
  v24 = v0[9];
  v0[4] = *(v24 + 16);
  v25 = v0[17];
  v1 = v0[11];
  v2 = v0[12];
  v21 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v22 = v3;
  v23 = v0[15];
  v5 = v0[6];

  v6 = [v3 identifier];
  sub_10008A268();

  v27._countAndFlagsBits = 35;
  v27._object = 0xE100000000000000;
  sub_10008A2C8(v27);
  v7 = [v5 key];
  v8 = sub_10008A268();
  v10 = v9;

  v28._countAndFlagsBits = v8;
  v28._object = v10;
  sub_10008A2C8(v28);

  v29._countAndFlagsBits = 45;
  v29._object = 0xE100000000000000;
  sub_10008A2C8(v29);
  v11 = [v4 locale];
  sub_100088A48();

  v12 = sub_100088A08();
  v14 = v13;
  (*(v1 + 8))(v2, v21);
  v30._countAndFlagsBits = v12;
  v30._object = v14;
  sub_10008A2C8(v30);

  v15 = swift_task_alloc();
  v15[2] = v24;
  v15[3] = v23;
  v15[4] = v22;
  v15[5] = v4;
  sub_100089378();
  sub_1000893A8();
  v17 = v0[14];
  v16 = v0[15];
  v18 = v0[13];
  if (v25)
  {
  }

  else
  {

    sub_1000898D8();
  }

  (*(v17 + 8))(v16, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_10001501C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001508C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  v9 = sub_10008A7A8();
  result = sub_100014590(a2, a1, v9 & 1, a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v11;
  }

  return result;
}

uint64_t sub_100015104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v14[1] = a2;
  v6 = sub_100089918();
  sub_100012368();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100089978();
  sub_100017A1C();
  (*(v12 + 16))(v11, a1);
  (*(v8 + 104))(v11, enum case for TypeDefinition.primitive(_:), v6);
  v19 = *(v4 + 16);
  v17 = 0x766974696D697270;
  v18 = 0xEA00000000002065;

  v20._countAndFlagsBits = sub_100089958();
  sub_10008A2C8(v20);

  v15 = v4;
  v16 = v11;
  sub_100089378();
  sub_1000893A8();
  if (v3)
  {
  }

  else
  {

    sub_1000898D8();
  }

  return (*(v8 + 8))(v11, v6);
}

void sub_100015314(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = [objc_opt_self() defaultContext];
  v8 = sub_100014590(a2, a1, 0, v7);
  v10 = v9;

  if (!v3)
  {
    *a3 = v8;
    a3[1] = v10;
  }
}

char *sub_1000153B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(char *, uint64_t)@<X3>, uint64_t (*a4)(char *, uint64_t)@<X4>, unint64_t a5@<X5>, int a6@<W6>, void *a7@<X7>, uint64_t *a8@<X8>, void (**a9)(char *, uint64_t), char *a10, unsigned __int8 a11)
{
  v249 = a7;
  LODWORD(v207) = a6;
  v209 = a5;
  v208 = a4;
  v206 = a3;
  v250 = a2;
  v247 = a1;
  v199 = a8;
  v226 = a9;
  v11 = sub_100008DC0(&qword_1000A6210, &qword_10008D598);
  __chkstk_darwin(v11 - 8);
  v230 = &v185 - v12;
  v13 = sub_100008DC0(&qword_1000A6218, &qword_10008D5A0);
  __chkstk_darwin(v13 - 8);
  v197 = &v185 - v14;
  v15 = sub_100008DC0(&qword_1000A6220, &qword_10008D5A8);
  __chkstk_darwin(v15 - 8);
  v243 = &v185 - v16;
  v17 = sub_100008DC0(&qword_1000A6228, &qword_10008D5B0);
  __chkstk_darwin(v17 - 8);
  v242 = &v185 - v18;
  v19 = sub_100008DC0(&qword_1000A6C60, &qword_10008D5B8);
  v20 = __chkstk_darwin(v19 - 8);
  v229 = &v185 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v245 = &v185 - v23;
  v24 = __chkstk_darwin(v22);
  v241 = &v185 - v25;
  v26 = __chkstk_darwin(v24);
  v240 = &v185 - v27;
  v28 = __chkstk_darwin(v26);
  v239 = &v185 - v29;
  __chkstk_darwin(v28);
  v236 = &v185 - v30;
  v238 = sub_100089F98();
  v231 = *(v238 - 8);
  __chkstk_darwin(v238);
  v244 = &v185 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_100089E88();
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v202 = &v185 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_100089888();
  v198 = *(v219 - 8);
  __chkstk_darwin(v219);
  v218 = &v185 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100089F48();
  v233 = *(v34 - 8);
  v234 = v34;
  __chkstk_darwin(v34);
  v225 = &v185 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_100089A28();
  v211 = *(v212 - 8);
  __chkstk_darwin(v212);
  v210 = &v185 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_100088A68();
  v216 = *(v246 - 8);
  v37 = __chkstk_darwin(v246);
  v228 = &v185 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v227 = &v185 - v40;
  __chkstk_darwin(v39);
  v201 = &v185 - v41;
  v42 = sub_100008DC0(&qword_1000A6230, &unk_10008D5C0);
  __chkstk_darwin(v42 - 8);
  v232 = &v185 - v43;
  v224 = sub_100089FD8();
  v223 = *(v224 - 1);
  __chkstk_darwin(v224);
  v200 = &v185 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_100088F48();
  v221 = *(v220 - 8);
  __chkstk_darwin(v220);
  v237 = &v185 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_100089B18();
  v191 = *(v192 - 8);
  v46 = __chkstk_darwin(v192);
  v217 = (&v185 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v46);
  v194 = &v185 - v48;
  v196 = sub_100089B38();
  v193 = *(v196 - 8);
  __chkstk_darwin(v196);
  v195 = &v185 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100089BD8();
  v222 = *(v50 - 8);
  __chkstk_darwin(v50);
  v52 = &v185 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1000899B8();
  v205 = *(v53 - 8);
  __chkstk_darwin(v53);
  v55 = &v185 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_100089918();
  v214 = *(v215 - 8);
  v56 = __chkstk_darwin(v215);
  v235 = &v185 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __chkstk_darwin(v56);
  v213 = &v185 - v59;
  __chkstk_darwin(v58);
  v61 = &v185 - v60;
  v62 = sub_1000899D8();
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v65 = &v185 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_100008DC0(&qword_1000A5A08, &qword_10008C9E8);
  __chkstk_darwin(v66 - 8);
  v69 = (&v185 - v68);
  if (v67)
  {
    v249 = v67;

    v70 = v236;
LABEL_3:
    v71 = v224;
    sub_1000898F8();
    v72 = v232;
    v73 = sub_100008E78(v232, 1, v71);
    v74 = v223;
    v237 = a10;
    if (v73 == 1)
    {
      sub_100017954(v72, &qword_1000A6230, &unk_10008D5C0);
      v75 = v245;
    }

    else
    {
      v81 = v200;
      (*(v223 + 4))(v200, v72, v71);
      v82 = v74;
      v232 = sub_100089FB8();
      v84 = v83;
      v224 = sub_100089FA8();
      v86 = v85;
      v222 = sub_100089FC8();
      v87 = [a10 locale];
      v88 = v201;
      sub_100088A48();

      v89 = sub_100088A08();
      v91 = v90;
      (*(v216 + 8))(v88, v246);
      v184._countAndFlagsBits = v91;
      v251._countAndFlagsBits = v250;
      v92 = v248;
      v251._object = v249;
      v254._countAndFlagsBits = v232;
      v254._object = v84;
      v257.value._countAndFlagsBits = v224;
      v232 = v86;
      v257.value._object = v86;
      v93._rawValue = v222;
      sub_1000895F8(v251, v254, v257, v93, v89, v184);
      v248 = v92;
      if (v92)
      {
        (*(v82 + 1))(v81, v71);
      }

      (*(v82 + 1))(v81, v71);

      v75 = v245;
      v70 = v236;
    }

    v107 = v246;
    v108 = v214;
    v109 = v214 + 16;
    v110 = *(v214 + 16);
    v111 = v213;
    v112 = v215;
    (v110)(v213, v226, v215);
    v113 = *(v108 + 88);
    v209 = v108 + 88;
    v208 = v113;
    if (v113(v111, v112) == enum case for TypeDefinition.entity(_:))
    {
      v206 = v110;
      v207 = v109;
      v114 = v248;
      (*(v108 + 96))(v111, v112);
      (*(v211 + 32))(v210, v111, v212);
      result = sub_100089A18();
      v220 = *(result + 2);
      if (v220)
      {
        v115 = 0;
        v223 = &result[(*(v233 + 80) + 32) & ~*(v233 + 80)];
        LODWORD(v222) = a11;
        v221 = v233 + 16;
        v213 = (v198 + 8);
        v217 = (v216 + 8);
        v224 = (v233 + 8);
        v116 = v225;
        v117 = v234;
        v232 = result;
        while (1)
        {
          if (v115 >= *(result + 2))
          {
            goto LABEL_79;
          }

          (*(v233 + 16))(v116, &v223[*(v233 + 72) * v115], v117);
          if ((v222 & 1) == 0)
          {
            sub_100089F28();
            v118 = v218;
            sub_100089F38();
            sub_1000894F8();
            if (v114)
            {

              (*v213)(v118, v219);
              (*v224)(v225, v117);
              return (*(v211 + 8))(v210, v212);
            }

            (*v213)(v118, v219);

            v116 = v225;
          }

          v119 = sub_100089F28();
          v121 = v120;
          v122 = [v237 locale];
          v123 = v227;
          sub_100088A48();

          v124 = sub_100088A08();
          v126 = v125;
          (*v217)(v123, v107);
          v259._countAndFlagsBits = sub_100089F18();
          v128 = v127;
          v252._countAndFlagsBits = v250;
          v252._object = v249;
          v255._countAndFlagsBits = v119;
          v255._object = v121;
          v258._countAndFlagsBits = v124;
          v258._object = v126;
          v259._object = v128;
          sub_100089608(v252, v255, v258, v259);
          if (v114)
          {

            (*v224)(v116, v234);
            return (*(v211 + 8))(v210, v212);
          }

          ++v115;
          v117 = v234;
          (*v224)(v116, v234);

          v129 = v244;
          v75 = v245;
          v107 = v246;
          v130 = v235;
          result = v232;
          if (v220 == v115)
          {
            goto LABEL_26;
          }
        }
      }

      v130 = v235;
      v129 = v244;
LABEL_26:
      v248 = v114;

      (*(v211 + 8))(v210, v212);
      v70 = v236;
      v112 = v215;
      v131 = v214;
      v110 = v206;
    }

    else
    {
      (*(v108 + 8))(v111, v112);
      v131 = v108;
      v130 = v235;
      v129 = v244;
    }

    (v110)(v130, v226, v112);
    v132 = v208(v130, v112);
    v133 = v216;
    if (v132 == enum case for TypeDefinition.enumeration(_:))
    {
      (*(v131 + 96))(v130, v112);
      (*(v203 + 32))(v202, v130, v204);
      result = sub_100089E78();
      v227 = *(result + 2);
      if (v227)
      {
        v134 = 0;
        v224 = &result[(*(v231 + 80) + 32) & ~*(v231 + 80)];
        v223 = (v231 + 16);
        v222 = v133 + 8;
        v226 = (v231 + 8);
        v135 = v197;
        v225 = result;
        while (v134 < *(result + 2))
        {
          v136 = v230;
          v137 = *(v231 + 72);
          v232 = v134;
          (*(v231 + 16))(v129, &v224[v137 * v134], v238);
          v138 = [v237 locale];
          v139 = v228;
          sub_100088A48();

          sub_100088A08();
          v235 = v140;
          (*v222)(v139, v107);
          v234 = sub_100089F88();
          sub_100089F68();
          v141 = sub_100089E48();
          if (sub_100008E78(v70, 1, v141) == 1)
          {
            sub_100017954(v70, &qword_1000A6C60, &qword_10008D5B8);
            v233 = 0;
          }

          else
          {
            v233 = sub_100089DC8();
            (*(*(v141 - 8) + 8))(v70, v141);
          }

          sub_100089F68();
          v142 = v239;
          if (sub_100008E78(v239, 1, v141) == 1)
          {
            sub_100017954(v142, &qword_1000A6C60, &qword_10008D5B8);
            v143 = sub_100008DC0(&qword_1000A6238, &qword_10008D5D0);
            sub_100009158(v242, 1, 1, v143);
          }

          else
          {
            sub_100089E28();
            (*(*(v141 - 8) + 8))(v142, v141);
          }

          sub_100089F68();
          v144 = v240;
          if (sub_100008E78(v240, 1, v141) == 1)
          {
            sub_100017954(v144, &qword_1000A6C60, &qword_10008D5B8);
            v145 = sub_100008DC0(&qword_1000A6240, &qword_10008D5D8);
            sub_100009158(v243, 1, 1, v145);
          }

          else
          {
            sub_100089E08();
            (*(*(v141 - 8) + 8))(v144, v141);
          }

          sub_100089F68();
          v146 = v241;
          if (sub_100008E78(v241, 1, v141) == 1)
          {
            sub_100017954(v146, &qword_1000A6C60, &qword_10008D5B8);
            v147 = sub_100008DC0(&qword_1000A6248, &qword_10008D5E0);
            sub_100009158(v135, 1, 1, v147);
          }

          else
          {
            sub_100089DA8();
            (*(*(v141 - 8) + 8))(v146, v141);
          }

          sub_100089F68();
          if (sub_100008E78(v75, 1, v141) == 1)
          {
            sub_100017954(v75, &qword_1000A6C60, &qword_10008D5B8);
            v148 = sub_100089D58();
            sub_100009158(v136, 1, 1, v148);
          }

          else
          {
            sub_100089D88();
            (*(*(v141 - 8) + 8))(v75, v141);
          }

          v149 = v229;
          sub_100089F68();
          if (sub_100008E78(v149, 1, v141) == 1)
          {
            sub_100017954(v149, &qword_1000A6C60, &qword_10008D5B8);
          }

          else
          {
            sub_100089E38();
            (*(*(v141 - 8) + 8))(v149, v141);
          }

          v150 = v242;
          v151 = v243;
          v152 = v248;
          sub_100089518();
          v248 = v152;
          if (v152)
          {

            sub_100017954(v136, &qword_1000A6210, &qword_10008D598);
            sub_100017954(v135, &qword_1000A6218, &qword_10008D5A0);
            sub_100017954(v151, &qword_1000A6220, &qword_10008D5A8);
            sub_100017954(v150, &qword_1000A6228, &qword_10008D5B0);
            (*v226)(v244, v238);
            return (*(v203 + 8))(v202, v204);
          }

          v134 = (v232 + 1);

          sub_100017954(v136, &qword_1000A6210, &qword_10008D598);
          sub_100017954(v135, &qword_1000A6218, &qword_10008D5A0);
          sub_100017954(v151, &qword_1000A6220, &qword_10008D5A8);
          sub_100017954(v150, &qword_1000A6228, &qword_10008D5B0);
          v129 = v244;
          (*v226)(v244, v238);
          v75 = v245;
          v107 = v246;
          v70 = v236;
          result = v225;
          if (v227 == v134)
          {
            goto LABEL_51;
          }
        }

        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        return result;
      }

LABEL_51:

      result = (*(v203 + 8))(v202, v204);
    }

    else
    {
      result = (*(v131 + 8))(v130, v112);
    }

    v153 = v199;
    v154 = v249;
    *v199 = v250;
    v153[1] = v154;
    return result;
  }

  v188 = v61;
  v189 = v65;
  v185 = v63;
  v186 = v55;
  v250 = v53;
  v190 = v52;
  v187 = v50;
  if (v207)
  {
    v76 = enum case for ContainerDefinition.ContainerType.framework(_:);
    v77 = sub_100089BE8();
    (*(*(v77 - 8) + 104))(v69, v76, v77);
    v78 = v69;
    v79 = 0;
    v80 = v77;
  }

  else
  {
    v80 = sub_100089BE8();
    v78 = v69;
    v79 = 1;
  }

  sub_100009158(v78, v79, 1, v80);
  v95 = v248;
  v96 = v250;
  v97 = v205;
  v98 = v62;
  sub_100004B0C(v208, v209, v69, v249);
  result = sub_100017954(v69, &qword_1000A5A08, &qword_10008C9E8);
  if (!v95)
  {
    v99 = v226;
    v250 = sub_100089678();
    v249 = v100;
    v101 = v214;
    v102 = v188;
    v103 = v215;
    (*(v214 + 16))(v188, v99, v215);
    if ((*(v101 + 88))(v102, v103) == enum case for TypeDefinition.query(_:))
    {
      (*(v101 + 96))(v102, v103);
      v104 = v102;
      v105 = v185;
      (*(v185 + 32))(v189, v104, v98);
      v106 = v186;
      sub_1000899C8();
      sub_100089578();
      (*(v97 + 8))(v106, v96);
      (*(v105 + 8))(v189, v98);
    }

    else
    {
      (*(v101 + 8))(v102, v103);
    }

    result = sub_1000898E8();
    v155 = result;
    v156 = 0;
    v157 = *(result + 2);
    v158 = v222;
    v248 = v222 + 16;
    v159 = (v222 + 8);
    v160 = v187;
    while (v157 != v156)
    {
      if (v156 >= *(v155 + 16))
      {
        goto LABEL_80;
      }

      v161 = v190;
      (*(v158 + 16))(v190, v155 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v156, v160);
      sub_100089588();
      ++v156;
      result = (*v159)(v161, v160);
      v158 = v222;
    }

    result = sub_100089908();
    v162 = result;
    v163 = 0;
    v208 = *(result + 2);
    v164 = v193;
    v207 = v193 + 16;
    v190 = (v191 + 13);
    LODWORD(v189) = enum case for CoercionDefinition.Direction.export(_:);
    ++v191;
    v206 = (v193 + 8);
    v222 = v221 + 16;
    v248 = 0;
    v70 = v236;
    v165 = v220;
    v166 = v196;
    v167 = v217;
    v168 = v195;
    v169 = v194;
    v205 = result;
    v188 = (v221 + 8);
    while (1)
    {
      if (v163 == v208)
      {

        goto LABEL_3;
      }

      if (v163 >= *(v162 + 16))
      {
        goto LABEL_82;
      }

      v170 = v162 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
      v171 = *(v164 + 72);
      v209 = v163;
      (*(v164 + 16))(v168, v170 + v171 * v163, v166);
      v172 = v248;
      sub_1000894C8();
      if (v172)
      {
        break;
      }

      sub_100089B28();
      v173 = v192;
      (*v190)(v167, v189, v192);
      LODWORD(v248) = sub_100089B08();
      v174 = *v191;
      (*v191)(v167, v173);
      v174(v169, v173);
      if (v248)
      {
        result = sub_100089AF8();
        v175 = result;
        v176 = 0;
        v177 = *(result + 2);
        v162 = v205;
        while (v177 != v176)
        {
          if (v176 >= *(v175 + 16))
          {
            goto LABEL_81;
          }

          v178 = v221;
          (*(v221 + 16))(v237, v175 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v176, v165);
          v179 = sub_100088F38();
          v180 = v165;
          v182 = v181;
          (*(v178 + 8))(v237, v180);
          v253._countAndFlagsBits = v250;
          v253._object = v249;
          v256._countAndFlagsBits = v179;
          v256._object = v182;
          sub_100089508(v253, v256);

          ++v176;
          v165 = v220;
          v167 = v217;
        }

        v70 = v236;
      }

      else
      {
        v162 = v205;
      }

      v248 = 0;
      v183 = v209 + 1;
      v168 = v195;
      v166 = v196;
      result = (*v206)(v195, v196);
      v163 = v183;
      v169 = v194;
      v164 = v193;
    }

    (*v206)(v168, v166);
  }

  return result;
}

uint64_t sub_10001751C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000899A8();
  __chkstk_darwin(v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a2);
  sub_10001C1C4(0, 0, v14);
  sub_10001779C(a3, v11);

  return sub_10001C270(a4, a5, v11);
}

void *sub_100017674()
{

  return v0;
}

uint64_t sub_1000176A4()
{
  sub_100017674();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_100017740(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001779C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100017800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100017864()
{
  v1 = sub_1000899A8();
  sub_100017A0C(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  sub_100017A0C(v6);
  v8 = v7;
  v10 = v9;
  v11 = (v3 + v5 + *(v8 + 80)) & ~*(v8 + 80);
  v12 = *(v0 + 16);
  v13 = (v0 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  return sub_10001751C(v12, v0 + v3, v0 + v11, v14, v15);
}

uint64_t sub_100017954(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100008DC0(a2, a3);
  sub_100017A1C();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100017A2C()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 6);
  sub_10005FD14();
  sub_10005B380(v2, v3);
  os_unfair_lock_unlock(v1 + 6);

  return sub_10005E694();
}

uint64_t sub_100017A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5 + 6);
  sub_10005FD14();
  sub_10005B360();
  os_unfair_lock_unlock(v5 + 6);
}

void sub_100017B14(uint64_t a1, void *a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_10005FF5C();
    swift_unknownObjectRetain();
    sub_10008A878();
    sub_10005FCB8();
    sub_100011D84(v3, v4, v5);
    sub_10005C60C();
    sub_10005FCB8();
    sub_10005B4C0(v6, v7, v8);
    sub_10005EDA0();
    sub_10008A428();
    v2 = v22;
    v9 = v23;
    v10 = v24;
    v11 = v25;
  }

  else
  {
    sub_10005EB04();
    v9 = v2 + 56;
    v10 = ~v12;
    sub_10005E054();
    v11 = v13 & v14;
  }

  while (v2 < 0)
  {
    if (!sub_10008A8A8() || (sub_100011D84(0, &qword_1000A6540, WFResource_ptr), sub_10005ED24(), swift_dynamicCast(), (v18 = v21) == 0))
    {
LABEL_18:
      v20 = sub_10005DC4C();
      sub_100011E9C(v20);
      return;
    }

LABEL_13:
    objc_opt_self();
    sub_10005E028();
    if (swift_dynamicCastObjCClass())
    {
      sub_10008A308();
      sub_100060E6C();
      if (v19)
      {
        sub_10008A348();
      }

      sub_10005ECCC();
      sub_10008A368();
    }

    else
    {
    }
  }

  sub_100060EDC();
  if (v11)
  {
LABEL_9:
    sub_10005D470();
    v18 = sub_1000607C8(v17);
    if (!v18)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= ((v10 + 64) >> 6))
    {
      goto LABEL_18;
    }

    ++v15;
    if (*(v9 + 8 * v16))
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100017D30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_10005FF5C();
    swift_unknownObjectRetain();
    sub_10008A878();
    sub_10005FCB8();
    sub_100011D84(v4, v5, v6);
    sub_10005C60C();
    sub_10005FCB8();
    sub_10005B4C0(v7, v8, v9);
    sub_10005EDA0();
    sub_10008A428();
    v3 = v23;
    v10 = v24;
    v11 = v25;
    v12 = v26;
  }

  else
  {
    sub_10005EB04();
    v10 = v3 + 56;
    v11 = ~v13;
    sub_10005E054();
    v12 = v14 & v15;
  }

  while (v3 < 0)
  {
    if (!sub_10008A8A8() || (sub_100011D84(0, &qword_1000A6540, WFResource_ptr), sub_10005ED24(), swift_dynamicCast(), (v19 = v22) == 0))
    {
LABEL_18:
      v21 = sub_10005DC4C();
      sub_100011E9C(v21);
      return;
    }

LABEL_13:
    a2(0);
    sub_10005E028();
    if (swift_dynamicCastClass())
    {
      sub_10008A308();
      sub_100060E6C();
      if (v20)
      {
        sub_10008A348();
      }

      sub_10005ECCC();
      sub_10008A368();
    }

    else
    {
    }
  }

  sub_100060EDC();
  if (v12)
  {
LABEL_9:
    sub_10005D470();
    v19 = sub_1000607C8(v18);
    if (!v19)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= ((v11 + 64) >> 6))
    {
      goto LABEL_18;
    }

    ++v16;
    if (*(v10 + 8 * v17))
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100017F50(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 40;
LABEL_2:
  v4 = v3 + 16 * v1;
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_12;
    }

    v6 = sub_10008A238();
    v7 = WFLinkActionIdentifierFromShortcutsActionIdentifier();

    ++v1;
    v4 += 16;
    if (v7)
    {
      sub_10008A308();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10008A348();
      }

      sub_10008A368();
      v1 = v5;
      goto LABEL_2;
    }
  }
}

void *sub_10001806C()
{
  v0 = sub_100088988();
  v12 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008A498();
  sub_10005AE38(&qword_1000A65E0, &type metadata accessor for NSFastEnumerationIterator);
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_10008A7D8();
    if (!v18)
    {
      break;
    }

    sub_10000A6AC(&v17, v16);
    sub_10000A650(v16, v13);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 0;
      v15 = 0;
    }

    sub_10005B1BC(v16);
    v4 = v15;
    if (v15)
    {
      v5 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000802EC();
        v3 = v8;
      }

      v6 = v3[2];
      if (v6 >= v3[3] >> 1)
      {
        sub_1000802EC();
        v3 = v9;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v5;
      v7[5] = v4;
    }
  }

  (*(v12 + 8))(v2, v0);
  return v3;
}

uint64_t sub_100018280@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100008DC0(&qword_1000A65D0, &qword_10008D950);
  result = __chkstk_darwin(v3);
  v6 = (&v14 - v5);
  v8 = *v1;
  v7 = v1[1];
  v9 = *(*v1 + 16);
  if (v7 == v9)
  {

    return sub_100009158(a1, 1, 1, v3);
  }

  else
  {
    if (v7 >= v9)
    {
      __break(1u);
    }

    else
    {
      v10 = *(_s15ActionParameterVMa(0) - 8);
      v11 = v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v7;
      v1[1] = v7 + 1;
      v12 = *(v3 + 48);
      v13 = v1[2];
      *v6 = v13;
      result = sub_10005B654(v11, v6 + v12);
      if (!__OFADD__(v13, 1))
      {
        v1[2] = v13 + 1;
        sub_10005BFBC();
        return sub_100009158(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100018420()
{
  sub_100012404();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_100088EA8();
  v1[4] = v3;
  sub_100017A0C(v3);
  v1[5] = v4;
  v1[6] = sub_10005F3EC();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = sub_100088DC8();
  v1[10] = v5;
  sub_100017A0C(v5);
  v1[11] = v6;
  v1[12] = sub_10005F3EC();
  v1[13] = swift_task_alloc();
  v7 = sub_100008DC0(&qword_1000A6700, &qword_10008DA08);
  sub_10005E3B0(v7);
  v1[14] = sub_10005F3EC();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v8 = sub_100088E08();
  v1[23] = v8;
  sub_100017A0C(v8);
  v1[24] = v9;
  v1[25] = sub_10005F4D4();
  v10 = sub_10005CFA0();

  return _swift_task_switch(v10);
}

uint64_t sub_100018618()
{
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = sub_1000124F4();
  v8(v7);
  v9 = v5 + 88;
  v10 = sub_100012498();
  v12 = v11(v10);
  if (v12 != enum case for ToolKitIndexingReason.Changeset.partial(_:))
  {
    if (v12 == enum case for ToolKitIndexingReason.Changeset.full(_:))
    {
      swift_task_alloc();
      sub_100012480();
      v0[26] = v55;
      *v55 = v56;
      v55[1] = sub_100018FA0;
      sub_100012624();

      return static LaunchServicesSnapshot.complete()();
    }

    if (v12 != enum case for ToolKitIndexingReason.Changeset.none(_:))
    {
LABEL_37:
      sub_100012624();

      return sub_10008AA58();
    }

    sub_100088E68();
LABEL_41:
    sub_10005CD7C();
    sub_100060094();

    sub_100012420();
    goto LABEL_45;
  }

  v13 = sub_10005F600();
  v14(v13);
  v97 = *v4;
  v15 = *(v4 + 16);

  v16 = sub_100012448();
  sub_100009158(v16, v17, v18, v1);
  sub_10005E98C();
  sub_10005BF68();
  v19 = v15 + 56;
  sub_100012500();
  sub_100060D48();
  v105 = enum case for ToolKitIndexingReason.Changeset.Provenance.launchServicesSnapshot(_:);
  v100 = enum case for ToolKitIndexingReason.Changeset.Provenance.appIntentsChange(_:);
  v99 = enum case for ToolKitIndexingReason.Changeset.Provenance.appProtectionChange(_:);
  v104 = (v3 + 8);
  v96 = enum case for ToolKitIndexingReason.Changeset.Provenance.cascadeSync(_:);
  v106 = (v6 + 32);
  v103 = (v6 + 8);
  v98 = (v6 + 16);

  v20 = 0;
  if (v2)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      return static LaunchServicesSnapshot.partial(_:failIfContainerNotFound:)();
    }

    if (v21 >= v9)
    {
      break;
    }

    ++v20;
    if (*(v19 + 8 * v21))
    {
      while (1)
      {
LABEL_6:
        sub_10006037C();
        v22 = sub_100060364();
        v6(v22);
        v23 = sub_10005E150();
        v6(v23);
        v24 = sub_10005E44C();
        v26 = v25(v24);
        if (v26 == v105)
        {
          v27 = v0[16];
          v28 = v0[12];
          v29 = v0[9];
          v30 = v0[4];
          v31 = sub_10005E59C();
          v32(v31);
          v101 = *v106;
          (*v106)(v29, v28, v30);
          sub_10005E9B4();
          sub_10005BF68();
          sub_10005D2C8(v27);
          if (!v79)
          {
            v33 = sub_10006034C();
            v101(v33);
            sub_10005AE38(&qword_1000A6708, &type metadata accessor for LaunchServicesSnapshot);
            sub_100060134();
            if (&qword_10008DA08)
            {
              sub_10005F698();

              v82 = *v103;
              v83 = sub_10005E44C();
              v82(v83);
              sub_10006031C();
              v84 = sub_10005E464();
              v85(v84);
              sub_100012584();
              sub_100017954(v86, v87, v88);
              sub_100012584();
              sub_100017954(v89, v90, v91);
              v92 = sub_10005FB20();
              v82(v92);

              sub_10001248C();
LABEL_45:
              sub_100012624();

              __asm { BRAA            X1, X16 }
            }

            sub_100060340();
            v34();
          }

          sub_100060328();
          sub_10006031C();
          v35();
          v36 = sub_100060FB4();
          sub_100017954(v36, v37, &qword_10008DA08);
          sub_10005FBAC();
          sub_100009158(v38, v39, v40, v41);
          v42 = sub_10005F090();
          sub_10005EFA4(v42, v43, v28);
          v45 = v0[17];
          v44 = v0[18];
          if (v46 == 1)
          {
            (*v98)(v44, v0[9], v0[4]);
            sub_10005D2C8(v45);
            if (!v79)
            {
              sub_100017954(v0[17], &qword_1000A6700, &qword_10008DA08);
            }
          }

          else
          {
            (v101)(v44, v0[17], v0[4]);
          }

          v6 = v0[4];
          sub_10005D968();
          sub_100009158(v48, v49, v50, v51);
          sub_100060340();
          v52 = sub_100012498();
          v53(v52);
        }

        else if (v26 == v100)
        {
          v102 = v0[12];
          v47 = v0[10];
          v6 = *v104;
          (*v104)(v0[13], v47);
          sub_10005BFBC();
          (v6)(v102, v47);
        }

        else
        {
          if (v26 != v99 && v26 != v96)
          {
            goto LABEL_37;
          }

          sub_10005DFC4();
          sub_10006031C();
          v54();
          sub_100012498();
          sub_10005BFBC();
        }

        sub_1000600BC();
      }
    }
  }

  v58 = v0[4];
  sub_10005FB08();
  sub_100017954(v59, v60, v61);

  sub_10005E428();
  sub_100060CC8();
  sub_10005BFBC();

  sub_10005E12C();
  sub_100060CC8();
  sub_10005BF68();
  v62 = sub_10005EC70();
  sub_10005DC64(v62, v63, v58);
  if (v79)
  {
    v68 = &_swiftEmptySetSingleton;
  }

  else
  {
    v64 = sub_10005E144();
    v65(v64);
    v66 = sub_100088E48();
    sub_10001B5A4(v66);
    v68 = v67;
    sub_100060340();
    v69 = sub_100012498();
    v70(v69);
  }

  v71 = sub_100049398(v68, v97);
  v0[28] = v71;

  if (!v71[2])
  {
    sub_1000611DC();
    sub_1000124C8();
    sub_10005BF68();
    v75 = sub_10005E2A4();
    v77 = sub_100008E78(v75, v76, v19);
    v78 = v0[22];
    if (v77 == 1)
    {
      sub_100088E68();
      sub_100017954(v78, &qword_1000A6700, &qword_10008DA08);
      sub_10005D4A8();
      if (!v79)
      {
        sub_100017954(v0[14], &qword_1000A6700, &qword_10008DA08);
      }
    }

    else
    {
      sub_100017954(v0[22], &qword_1000A6700, &qword_10008DA08);
      sub_10005EAD4();
      sub_10005F620();
      v81();
    }

    goto LABEL_41;
  }

  swift_task_alloc();
  sub_100012480();
  v0[29] = v72;
  *v72 = v73;
  sub_100060304(v72);
  sub_100012624();

  return static LaunchServicesSnapshot.partial(_:failIfContainerNotFound:)();
}