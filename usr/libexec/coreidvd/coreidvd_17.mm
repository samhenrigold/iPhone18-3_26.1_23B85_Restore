void *sub_1001A24E0@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))(&v6);
  if (!v2)
  {
    v5 = v7;
    *a1 = v6;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_1001A252C(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return _swift_task_switch(sub_1001A254C, 0, 0);
}

uint64_t sub_1001A254C()
{
  if (v0[19])
  {
    if (qword_100832C20 != -1)
    {
      swift_once();
    }

    v1 = *(qword_100882228 + 16);
    v0[20] = v1;
    v2 = v1;
    v3 = String._bridgeToObjectiveC()();
    v0[21] = v3;
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = sub_1001A2714;
    v4 = swift_continuation_init();
    v0[17] = sub_100007224(&qword_1008486C0, &unk_1006DAFB0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10058DEE8;
    v0[13] = &unk_10080A4D0;
    v0[14] = v4;
    [v2 isPIITokenAvailableForIdentifier:v3 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v5 = v0[1];

    return v5(0);
  }
}

uint64_t sub_1001A2714()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1001A2894;
  }

  else
  {
    v2 = sub_1001A2824;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A2824()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 184);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1001A2894(uint64_t a1)
{
  v2 = v1[21];
  v3 = v1[20];
  swift_willThrow();

  v4 = v1[1];

  return v4(0);
}

uint64_t sub_1001A2944()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001A2988()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001A2A40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083BD28, &qword_1006DA240);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A2AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083D0A0, &qword_1006DAFC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A2B20()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1001A2B70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100027B9C;

  return sub_1001949B4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001A2C54(uint64_t a1, char a2)
{
  *(v3 + 2944) = v2;
  *(v3 + 921) = a2;
  *(v3 + 2936) = a1;
  v4 = type metadata accessor for DIPError.Code();
  *(v3 + 2952) = v4;
  *(v3 + 2960) = *(v4 - 8);
  *(v3 + 2968) = swift_task_alloc();
  v5 = type metadata accessor for IdentityProofingAttributeConfiguration();
  *(v3 + 2976) = v5;
  *(v3 + 2984) = *(v5 - 8);
  *(v3 + 2992) = swift_task_alloc();
  *(v3 + 3000) = type metadata accessor for IdentityProofingStaticWorkflow(0);
  *(v3 + 3008) = swift_task_alloc();
  *(v3 + 3016) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v3 + 3024) = v6;
  *(v3 + 3032) = *(v6 - 8);
  *(v3 + 3040) = swift_task_alloc();
  *(v3 + 3048) = swift_task_alloc();
  *(v3 + 3056) = swift_task_alloc();
  *(v3 + 3064) = swift_task_alloc();
  *(v3 + 3072) = swift_task_alloc();

  return _swift_task_switch(sub_1001A2E40, 0, 0);
}

uint64_t sub_1001A2E40(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "prepare UI Passport proofing from static workflow", v4, 2u);
  }

  countAndFlagsBits = v1[192]._countAndFlagsBits;
  object = v1[189]._object;
  v7 = v1[189]._countAndFlagsBits;

  v8 = object[1];
  v1[192]._object = v8;
  v8(countAndFlagsBits, v7);
  IdentityProofingConfiguration.country.getter();
  if (v9)
  {
    v10 = v1[184]._countAndFlagsBits;
    v11 = String.lowercased()();

    v1[193] = v11;
    v1[194]._countAndFlagsBits = *(v10 + 152);

    v12 = IdentityProofingConfiguration.documentType.getter();
    v13 = swift_task_alloc();
    v1[194]._object = v13;
    *v13 = v1;
    v13[1] = sub_1001A3268;
    v14 = v1[188]._object;

    return sub_1001AA1E4(v14, v12);
  }

  else
  {
    (*(v1[185]._countAndFlagsBits + 104))(v1[185]._object, enum case for DIPError.Code.idStateUnavailable(_:), v1[184]._object);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v1[185]._countAndFlagsBits + 104))(v1[185]._object, enum case for DIPError.Code.internalError(_:), v1[184]._object);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v16 = v1->_object;

    return v16();
  }
}

uint64_t sub_1001A3268()
{
  *(*v1 + 3120) = v0;

  if (v0)
  {

    v2 = sub_1001A6340;
  }

  else
  {
    v2 = sub_1001A33AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A33AC()
{
  v116 = v0;
  v1 = v0[377];
  v2 = v0[375];
  v0[366] = _swiftEmptyArrayStorage;
  v3 = *(v1 + *(v2 + 88));
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = 0;
      v106 = v0 + 366;
      v6 = (v3 + 40);
      while (1)
      {
        if (v5 >= *(v3 + 16))
        {
          goto LABEL_77;
        }

        v7 = *v6;
        v0[391] = *v6;
        ++v5;
        v8 = *(v6 - 8);
        v9 = 0x6863746177;
        if (v8 != 1)
        {
          v9 = 28004;
        }

        v10 = 0xE500000000000000;
        if (v8 != 1)
        {
          v10 = 0xE200000000000000;
        }

        if (*(v6 - 8))
        {
          v11 = v9;
        }

        else
        {
          v11 = 1819047270;
        }

        if (*(v6 - 8))
        {
          v12 = v10;
        }

        else
        {
          v12 = 0xE400000000000000;
        }

        v13 = *(v0 + 921);
        if (*(v0 + 921))
        {
          if (v13 == 1)
          {
            v14 = 0x6863746177;
          }

          else
          {
            v14 = 28004;
          }

          if (v13 == 1)
          {
            v15 = 0xE500000000000000;
          }

          else
          {
            v15 = 0xE200000000000000;
          }

          if (v11 != v14)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v15 = 0xE400000000000000;
          if (v11 != 1819047270)
          {
            goto LABEL_26;
          }
        }

        if (v12 == v15)
        {

LABEL_34:
          v22 = *(v7 + 16);
          v0[392] = v22;
          v23 = _swiftEmptyArrayStorage;
          if (v22)
          {
            v0[394] = _swiftEmptyArrayStorage;
            v0[393] = 0;
            v24 = v0[391];
            if (*(v24 + 16))
            {
              v25 = 0;
              v114 = v0;
              while (1)
              {
                v26 = (v24 + 112 * v25);
                v0[395] = v26[5];
                v0[396] = v26[6];
                v0[397] = v26[7];
                v0[398] = v26[8];
                v0[399] = v26[9];
                v27 = v26[14];
                v109 = v26[13];
                v0[400] = v27;
                v0[401] = v26[15];
                v114[402] = v26[16];
                v28 = v26[17];
                v114[403] = v28;
                v114[404] = v26[12];
                v114[405] = v26[10];

                defaultLogger()();

                v29 = Logger.logObject.getter();
                v30 = static os_log_type_t.debug.getter();

                v31 = v27;

                v0 = v114;

                v112 = v28;

                v108 = v30;
                v32 = os_log_type_enabled(v29, v30);
                v33 = v114[385];
                v34 = v114[383];
                v35 = v114[378];
                if (v32)
                {
                  v36 = swift_slowAlloc();
                  v107 = v33;
                  v37 = swift_slowAlloc();
                  v115[0] = v37;
                  *v36 = 136315138;
                  if (v27)
                  {
                    v38 = v109;
                  }

                  else
                  {
                    v38 = 0;
                  }

                  v39 = v31;
                  if (!v31)
                  {
                    v31 = 0xE000000000000000;
                  }

                  v40 = sub_100141FE4(v38, v31, v115);

                  *(v36 + 4) = v40;
                  _os_log_impl(&_mh_execute_header, v29, v108, "PAGE %s", v36, 0xCu);
                  sub_10000BB78(v37);

                  v107(v34, v35);
                  v41 = v109;
                  v42 = v39;
                  v0 = v114;
                }

                else
                {

                  v33(v34, v35);
                  v41 = v109;
                  v42 = v27;
                }

                v43 = sub_100308788(v41, v42);
                v0[406] = v43;
                v0[407] = v44;
                if (v28)
                {
                  break;
                }

                if (v43 == 0xD000000000000012 && 0x80000001006FE390 == v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  v45 = v0[399];
                  if (v45[2] >= 2uLL)
                  {
                    v46 = v0[367];
                    v47 = v45[6];
                    v48 = v45[7];

                    sub_1001B286C(v46, v47, v48);
                  }
                }

                v49 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());

                v50 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();

                defaultLogger()();
                v51 = v50;
                v52 = Logger.logObject.getter();
                v53 = static os_log_type_t.debug.getter();

                v54 = os_log_type_enabled(v52, v53);
                v55 = v0[385];
                v56 = v0[381];
                v57 = v0[378];
                if (v54)
                {
                  v110 = v0[385];
                  v58 = swift_slowAlloc();
                  v59 = swift_slowAlloc();
                  v115[0] = v59;
                  *v58 = 136446210;
                  v60 = IdentityProofingUIConfig.view.getter();
                  v62 = sub_100141FE4(v60, v61, v115);

                  *(v58 + 4) = v62;
                  _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s to be shown to the user from static views", v58, 0xCu);
                  sub_10000BB78(v59);

                  v110(v56, v57);
                }

                else
                {

                  v55(v56, v57);
                }

                v63 = v51;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((*v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                v64 = v0[392];
                v65 = v0[393] + 1;
                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v23 = v0[366];
                if (v65 == v64)
                {

                  goto LABEL_62;
                }

                v25 = v0[393] + 1;
                v0[394] = v23;
                v0[393] = v25;
                v24 = v0[391];
                if (v25 >= *(v24 + 16))
                {
                  goto LABEL_76;
                }
              }

              v66 = v43;
              v67 = v44;

              defaultLogger()();

              v68 = Logger.logObject.getter();
              v69 = static os_log_type_t.debug.getter();
              v70 = v67;

              v71 = os_log_type_enabled(v68, v69);
              v72 = v0[385];
              v73 = v0[382];
              v74 = v0[378];
              if (v71)
              {
                v75 = swift_slowAlloc();
                v76 = swift_slowAlloc();
                v115[0] = v76;
                *v75 = 136315138;
                *(v75 + 4) = sub_100141FE4(v66, v70, v115);
                _os_log_impl(&_mh_execute_header, v68, v69, "Image assets field exists for the page -> %s", v75, 0xCu);
                sub_10000BB78(v76);
                v28 = v112;
              }

              v72(v73, v74);
              v0[408] = *(v0[368] + 144);

              v92 = swift_task_alloc();
              v0[409] = v92;
              *v92 = v0;
              v92[1] = sub_1001A43D0;
              v93 = v0[387];
              v94 = v0[386];

              return sub_10026F6BC(v94, v93, v28);
            }

LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            if (_CocoaArrayWrapper.endIndex.getter() < 1)
            {
              goto LABEL_79;
            }
          }

          else
          {
LABEL_62:
            v0[412] = v23;

            if (v23 >> 62)
            {
              goto LABEL_78;
            }

            if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
            {
LABEL_79:
              v1 = v0[377];
              v103 = v0[371];
              v104 = v0[370];
              v105 = v0[369];

              (*(v104 + 104))(v103, enum case for DIPError.Code.invalidStaticWorkflow(_:), v105);
              sub_1000402AC(_swiftEmptyArrayStorage);
              type metadata accessor for DIPError();
              sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
              swift_allocError();
              goto LABEL_30;
            }
          }

          v77 = v0[377];
          v78 = v0[376];
          defaultLogger()();
          sub_1001A2050(v77, v78);
          v79 = Logger.logObject.getter();
          v80 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v79, v80))
          {
            v81 = v0[376];
            v82 = v0[375];
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v115[0] = v84;
            *v83 = 136315138;
            v85 = (v81 + *(v82 + 44));
            if (v85[1])
            {
              v86 = *v85;
              v87 = v85[1];
            }

            else
            {
              v87 = 0xE300000000000000;
              v86 = 7104878;
            }

            v111 = v0[380];
            v113 = v0[385];
            v95 = v0[378];
            v96 = v0[376];

            sub_1001A1FAC(v96);
            v97 = sub_100141FE4(v86, v87, v115);

            *(v83 + 4) = v97;
            _os_log_impl(&_mh_execute_header, v79, v80, "The learnMoreURL is %s", v83, 0xCu);
            sub_10000BB78(v84);

            v113(v111, v95);
          }

          else
          {
            v88 = v0[385];
            v89 = v0[380];
            v90 = v0[378];
            v91 = v0[376];

            sub_1001A1FAC(v91);
            v88(v89, v90);
          }

          v98 = v0[377];
          v0[413] = *(v0[368] + 136);
          v99 = *(v98 + 64);

          v100 = IdentityProofingConfiguration.documentType.getter();
          v101 = swift_task_alloc();
          v0[414] = v101;
          *v101 = v0;
          v101[1] = sub_1001A5320;
          v102 = v0[374];

          return sub_1002A77FC(v102, v99, v100);
        }

LABEL_26:
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_34;
        }

        v6 += 2;
        if (v4 == v5)
        {
          v1 = v0[377];
          break;
        }
      }
    }
  }

  v17 = v0[371];
  v18 = v0[370];
  v19 = v0[369];

  (*(v18 + 104))(v17, enum case for DIPError.Code.invalidStaticWorkflow(_:), v19);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
LABEL_30:
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_1001A1FAC(v1);
  (*(v0[370] + 104))(v0[371], enum case for DIPError.Code.internalError(_:), v0[369]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_1001A43D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 3280) = v1;

  if (v1)
  {

    swift_bridgeObjectRelease_n();

    v5 = sub_1001A6548;
  }

  else
  {

    *(v4 + 3288) = a1;
    v5 = sub_1001A45D4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001A45D4()
{
  v93 = v0;
  v1 = v0[407];
  v2 = v0[406];
  while (1)
  {
    v3 = v2 == 0xD000000000000012 && 0x80000001006FE390 == v1;
    if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v4 = v0[399];
      if (v4[2] >= 2uLL)
      {
        v5 = v0[367];
        v6 = v4[6];
        v7 = v4[7];

        sub_1001B286C(v5, v6, v7);
      }
    }

    v8 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());

    v9 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();

    defaultLogger()();
    v10 = v9;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[385];
    v15 = v0[381];
    v16 = v0[378];
    if (v13)
    {
      v86 = v0[385];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v92[0] = v18;
      *v17 = 136446210;
      v19 = IdentityProofingUIConfig.view.getter();
      v21 = sub_100141FE4(v19, v20, v92);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s to be shown to the user from static views", v17, 0xCu);
      sub_10000BB78(v18);

      v86(v15, v16);
    }

    else
    {

      v14(v15, v16);
    }

    v22 = v10;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v0[366] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[366] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v23 = v0[392];
    v24 = v0[393] + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v25 = v0[366];
    if (v24 == v23)
    {
      break;
    }

    v26 = v0[393] + 1;
    v0[394] = v25;
    v0[393] = v26;
    v27 = v0[391];
    if (v26 >= *(v27 + 16))
    {
      __break(1u);
      goto LABEL_47;
    }

    v28 = (v27 + 112 * v26);
    v0[395] = v28[5];
    v0[396] = v28[6];
    v0[397] = v28[7];
    v0[398] = v28[8];
    v0[399] = v28[9];
    v29 = v28[14];
    v89 = v28[13];
    v0[400] = v29;
    v0[401] = v28[15];
    v0[402] = v28[16];
    v30 = v28[17];
    v0[403] = v30;
    v0[404] = v28[12];
    v0[405] = v28[10];

    defaultLogger()();

    v87 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    v32 = v30;

    v33 = os_log_type_enabled(v87, v31);
    v34 = v0[385];
    v35 = v0[383];
    v36 = v0[378];
    if (v33)
    {
      v37 = swift_slowAlloc();
      v85 = v34;
      v38 = swift_slowAlloc();
      v92[0] = v38;
      *v37 = 136315138;
      if (v29)
      {
        v39 = v89;
      }

      else
      {
        v39 = 0;
      }

      if (v29)
      {
        v40 = v29;
      }

      else
      {
        v40 = 0xE000000000000000;
      }

      v41 = sub_100141FE4(v39, v40, v92);
      v32 = v30;

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v87, v31, "PAGE %s", v37, 0xCu);
      sub_10000BB78(v38);

      v85(v35, v36);
    }

    else
    {

      v34(v35, v36);
    }

    v2 = sub_100308788(v89, v29);
    v0[406] = v2;
    v0[407] = v1;
    if (v32)
    {
      v90 = v2;
      v54 = v1;

      defaultLogger()();

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.debug.getter();
      v57 = v54;

      v58 = os_log_type_enabled(v55, v56);
      v59 = v0[385];
      v60 = v0[382];
      v61 = v0[378];
      if (v58)
      {
        v62 = swift_slowAlloc();
        v63 = v32;
        v64 = swift_slowAlloc();
        v92[0] = v64;
        *v62 = 136315138;
        *(v62 + 4) = sub_100141FE4(v90, v57, v92);
        _os_log_impl(&_mh_execute_header, v55, v56, "Image assets field exists for the page -> %s", v62, 0xCu);
        sub_10000BB78(v64);
        v32 = v63;
      }

      v59(v60, v61);
      v0[408] = *(v0[368] + 144);

      v65 = swift_task_alloc();
      v0[409] = v65;
      *v65 = v0;
      v65[1] = sub_1001A43D0;
      v66 = v0[387];
      v67 = v0[386];

      return sub_10026F6BC(v67, v66, v32);
    }
  }

  v0[412] = v25;

  if (!(v25 >> 62))
  {
    v42 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_28;
  }

LABEL_47:
  v42 = _CocoaArrayWrapper.endIndex.getter();
LABEL_28:
  v43 = v0[377];
  if (v42 < 1)
  {
    v69 = v0[371];
    v70 = v0[370];
    v71 = v0[369];

    (*(v70 + 104))(v69, enum case for DIPError.Code.invalidStaticWorkflow(_:), v71);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1001A1FAC(v43);
    (*(v0[370] + 104))(v0[371], enum case for DIPError.Code.internalError(_:), v0[369]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v72 = v0[1];

    return v72();
  }

  else
  {
    v44 = v0[376];
    defaultLogger()();
    sub_1001A2050(v43, v44);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = v0[376];
      v48 = v0[375];
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v92[0] = v50;
      *v49 = 136315138;
      v51 = (v47 + *(v48 + 44));
      if (v51[1])
      {
        v52 = *v51;
        v53 = v51[1];
      }

      else
      {
        v53 = 0xE300000000000000;
        v52 = 7104878;
      }

      v88 = v0[380];
      v91 = v0[385];
      v77 = v0[378];
      v78 = v0[376];

      sub_1001A1FAC(v78);
      v79 = sub_100141FE4(v52, v53, v92);

      *(v49 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v45, v46, "The learnMoreURL is %s", v49, 0xCu);
      sub_10000BB78(v50);

      v91(v88, v77);
    }

    else
    {
      v73 = v0[385];
      v74 = v0[380];
      v75 = v0[378];
      v76 = v0[376];

      sub_1001A1FAC(v76);
      v73(v74, v75);
    }

    v80 = v0[377];
    v0[413] = *(v0[368] + 136);
    v81 = *(v80 + 64);

    v82 = IdentityProofingConfiguration.documentType.getter();
    v83 = swift_task_alloc();
    v0[414] = v83;
    *v83 = v0;
    v83[1] = sub_1001A5320;
    v84 = v0[374];

    return sub_1002A77FC(v84, v81, v82);
  }
}

uint64_t sub_1001A5320()
{
  *(*v1 + 3320) = v0;

  if (v0)
  {
    v2 = sub_1001A59C8;
  }

  else
  {
    v2 = sub_1001A5434;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1001A5434()
{
  v1 = v0[415];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001A6758(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration, &protocol conformance descriptor for IdentityProofingAttributeConfiguration);
  v0[416] = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[417] = v2;
  v3 = v0[374];
  v4 = v0[372];
  v5 = (v0[373] + 8);
  if (v1)
  {

    (*v5)(v3, v4);

    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1006DAE90;
    v7 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
    *(v6 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();

    IdentityProofingConfiguration.documentType.getter();
    v8 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v19 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

    sub_1001A1FAC(v0[377]);

    v9 = v0[1];

    v9(v19);
    return;
  }

  v10 = v0[377];
  v11 = v0[375];

  (*v5)(v3, v4);
  v12 = *(v10 + *(v11 + 92));
  if (v12 && (v13 = *(v12 + 16)) != 0)
  {
    v14 = 0;
    v15 = v12 + 48;
    while (v14 < *(v12 + 16))
    {
      objc_allocWithZone(type metadata accessor for RegionMinimumAge());

      RegionMinimumAge.init(countryCode:age:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v14;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v15 += 24;
      if (v13 == v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v0[418] = _swiftEmptyArrayStorage;
    if (*(v0[377] + *(v0[375] + 76)))
    {
      IdentityProofingConsentFlow.manualReviewEnabledLivenessFlowItem.getter();
      IdentityProofingConsentFlow.manualReviewEnabledFedStatsFlowItem.getter();
      IdentityProofingConsentFlow.manualReviewDisabledFedStatsFlowItem.getter();
    }

    v16 = objc_allocWithZone(type metadata accessor for IdentityProofingFeatureEnablementConfig());
    v0[419] = IdentityProofingFeatureEnablementConfig.init(manualReviewEnabledLivenessConsentFlowItem:manualReviewEnabledFedStatsConsentFlowItem:manualReviewDisabledFedStatsConsentFlowItem:)();
    if (qword_100832B60 == -1)
    {
      goto LABEL_15;
    }
  }

  swift_once();
LABEL_15:
  v17 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v17 + 54);
  sub_1000318FC(&v17[4], (v0 + 328));
  os_unfair_lock_unlock(v17 + 54);
  sub_100020260((v0 + 328), (v0 + 361));
  sub_100031918((v0 + 328));
  v0[420] = *sub_10000BA08(v0 + 361, v0[364]);
  v18 = swift_task_alloc();
  v0[421] = v18;
  *v18 = v0;
  v18[1] = sub_1001A5C18;

  sub_10050886C((v0 + 2));
}

uint64_t sub_1001A59C8()
{

  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006DAE90;
  v2 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  *(v1 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();

  IdentityProofingConfiguration.documentType.getter();
  v3 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
  v6 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

  sub_1001A1FAC(*(v0 + 3016));

  v4 = *(v0 + 8);

  return v4(v6);
}

uint64_t sub_1001A5C18()
{
  v2 = *v1;
  *(*v1 + 3376) = v0;

  if (v0)
  {
    v3 = *(v2 + 3360);
    v4 = sub_1001A6028;
  }

  else
  {
    v4 = sub_1001A5D34;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001A5D34()
{
  memcpy((v0 + 1776), (v0 + 48), 0x1A1uLL);
  sub_1000AA624(v0 + 1776, v0 + 2200);
  sub_1000F2758(v0 + 16);
  memcpy((v0 + 1352), (v0 + 1776), 0x1A1uLL);
  nullsub_7();
  memcpy((v0 + 504), (v0 + 1352), 0x1A1uLL);
  sub_10000BB78((v0 + 2888));
  *(v0 + 2824) = 1;
  *(v0 + 2832) = 0u;
  *(v0 + 2848) = 0u;
  *(v0 + 2864) = 0u;
  *(v0 + 2880) = 0;
  sub_1001A20B4((v0 + 2824), 0, 0xE000000000000000);

  IdentityProofingConfiguration.documentType.getter();
  memcpy((v0 + 928), (v0 + 504), 0x1A1uLL);
  v1 = sub_10010F2A8(v0 + 928);

  if (v1 != 1)
  {
    sub_10010F2C0(v0 + 504);
  }

  v2 = objc_allocWithZone(type metadata accessor for IdentityProofingNFCConfig());
  IdentityProofingNFCConfig.init(minimumReadTimeThreshold:readRetryInterval:readyCheckEnabled:isChipIntegrityCheckFailureTerminal:isDeviceCrossCheckEnabled:)();
  v3 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
  v6 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
  sub_1001A1FAC(*(v0 + 3016));

  v4 = *(v0 + 8);

  return v4(v6);
}

uint64_t sub_1001A6028()
{

  return _swift_task_switch(sub_1001A6090, 0, 0);
}

uint64_t sub_1001A6090()
{
  sub_10010ED70(v0 + 504);
  sub_10000BB78((v0 + 2888));
  *(v0 + 2824) = 1;
  *(v0 + 2832) = 0u;
  *(v0 + 2848) = 0u;
  *(v0 + 2864) = 0u;
  *(v0 + 2880) = 0;
  sub_1001A20B4((v0 + 2824), 0, 0xE000000000000000);

  IdentityProofingConfiguration.documentType.getter();
  memcpy((v0 + 928), (v0 + 504), 0x1A1uLL);
  v1 = sub_10010F2A8(v0 + 928);

  if (v1 != 1)
  {
    sub_10010F2C0(v0 + 504);
  }

  v2 = objc_allocWithZone(type metadata accessor for IdentityProofingNFCConfig());
  IdentityProofingNFCConfig.init(minimumReadTimeThreshold:readRetryInterval:readyCheckEnabled:isChipIntegrityCheckFailureTerminal:isDeviceCrossCheckEnabled:)();
  v3 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
  v6 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
  sub_1001A1FAC(*(v0 + 3016));

  v4 = *(v0 + 8);

  return v4(v6);
}

uint64_t sub_1001A6340()
{
  (*(v0[370] + 104))(v0[371], enum case for DIPError.Code.internalError(_:), v0[369]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001A6548()
{
  sub_1001A1FAC(v0[377]);
  (*(v0[370] + 104))(v0[371], enum case for DIPError.Code.internalError(_:), v0[369]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001A6758(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001A67A0()
{
  sub_100007224(&qword_10083D4C8, &unk_1006DB220);
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006BF740;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for DIPError.Code.topekaWorkflowBlockedDeviceLimitReached(_:), v0);
  result = (v6)(v5 + v2, enum case for DIPError.Code.topekaWorkflowBlockedIDLimitReached(_:), v0);
  qword_10083D0B0 = v4;
  return result;
}

uint64_t sub_1001A68B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083D4A0, &qword_1006DFB20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  (*(v5 + 16))(&v13 - v6, a1, v4);
  v8 = *(a2 + 88);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 88) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1003C5A18(0, v8[2] + 1, 1, v8);
    *(a2 + 88) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1003C5A18((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  result = (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v4);
  *(a2 + 88) = v8;
  return result;
}

uint64_t sub_1001A6A30(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BBC4(a1, v17, &qword_10083D0A0, &qword_1006DAFC0);
  v11 = swift_allocObject();
  v12 = v17[1];
  *(v11 + 24) = v17[0];
  *(v11 + 16) = v1;
  *(v11 + 40) = v12;
  *(v11 + 56) = v18;
  aBlock[4] = sub_1001B71F0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_10080A5C0;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_1001B7214(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_100031834();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_1001A6D04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(0xD000000000000020, 0x8000000100704DE0, v14);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s updating with new workflow", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  sub_1001B725C(a2, a1 + 144);
  return swift_endAccess();
}

uint64_t sub_1001A6ED4(void *a1)
{
  v3 = *v1;
  v4 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v1[14] = 0;

  dispatch_group_enter(v1[13]);
  v7 = type metadata accessor for TaskPriority();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;
  v9[5] = a1;
  v9[6] = v3;

  v10 = a1;
  v1[16] = sub_1003E653C(0, 0, v6, &unk_1006DB1F8, v9);

  v8(v6, 1, 1, v7);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;

  sub_1003E653C(0, 0, v6, &unk_1006DB208, v11);
}

uint64_t sub_1001A70B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v6 = sub_100007224(&qword_10083D4C0, &unk_1006DB210);
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  v7 = sub_100007224(&qword_10083D4A0, &qword_1006DFB20);
  v5[32] = v7;
  v5[33] = *(v7 - 8);
  v5[34] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v5[35] = v8;
  v5[36] = *(v8 - 8);
  v5[37] = swift_task_alloc();
  v9 = type metadata accessor for DIPError();
  v5[38] = v9;
  v5[39] = *(v9 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v5[44] = v10;
  v5[45] = *(v10 - 8);
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v11 = type metadata accessor for IdentityDocumentType.Category();
  v5[50] = v11;
  v5[51] = *(v11 - 8);
  v5[52] = swift_task_alloc();

  return _swift_task_switch(sub_1001A73A0, 0, 0);
}

uint64_t sub_1001A73A0()
{
  if (qword_100832C28 != -1)
  {
    swift_once();
  }

  sub_100188010();
  if (qword_100832B40 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 424) = v1;
  *v1 = v0;
  v1[1] = sub_1001A74A0;

  return sub_100024CD8();
}

uint64_t sub_1001A74A0()
{

  return _swift_task_switch(sub_1001A759C, 0, 0);
}

uint64_t sub_1001A759C()
{
  v0[54] = *(v0[27] + 24);

  v1 = swift_task_alloc();
  v0[55] = v1;
  *v1 = v0;
  v1[1] = sub_1001A764C;
  v2 = v0[28];

  return sub_1002D5BFC((v0 + 8), v2);
}

uint64_t sub_1001A764C()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_1001A8D54;
  }

  else
  {

    v2 = sub_1001A7768;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A7768()
{
  v1 = v0[27];
  sub_100020260((v0 + 8), (v0 + 13));
  swift_beginAccess();
  sub_1000B2764((v0 + 13), v1 + 144, &qword_10083D0A0, &qword_1006DAFC0);
  swift_endAccess();
  v2 = swift_task_alloc();
  v0[57] = v2;
  *v2 = v0;
  v2[1] = sub_1001A784C;
  v3 = v0[28];

  return sub_1001AAAAC((v0 + 2), (v0 + 8), v3);
}

uint64_t sub_1001A784C()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_1001A9410;
  }

  else
  {
    v2 = sub_1001A7960;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A7960()
{
  v1 = v0[58];
  sub_10000BA08(v0 + 2, v0[5]);
  v2 = dispatch thunk of IdentityKey.getIdentityPublicKeyData()();
  v0[59] = v2;
  v0[60] = v3;
  if (v1)
  {
    sub_1001B7154((v0 + 2));
    sub_10000BB78(v0 + 8);
    v0[24] = v1;
    swift_errorRetain();
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    if (swift_dynamicCast())
    {
      (*(v0[39] + 32))(v0[42], v0[43], v0[38]);
      if (qword_100832C30 != -1)
      {
        swift_once();
      }

      v5 = v0[36];
      v4 = v0[37];
      v6 = v0[35];
      v7 = qword_10083D0B0;
      DIPError.code.getter();
      v8 = sub_10032D978(v4, v7);
      v9 = *(v5 + 8);
      v9(v4, v6);
      if (v8)
      {
        v11 = v0[41];
        v10 = v0[42];
        v12 = v0[38];
        v13 = v0[39];

        defaultLogger()();
        v14 = *(v13 + 16);
        v14(v11, v10, v12);
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.debug.getter();
        v17 = os_log_type_enabled(v15, v16);
        v18 = v0[41];
        v19 = v0[39];
        v75 = v14;
        if (v17)
        {
          v20 = v0[37];
          v70 = v0[35];
          v73 = v0[38];
          v21 = swift_slowAlloc();
          *v21 = 134217984;
          DIPError.code.getter();
          v22 = DIPError.Code.rawValue.getter();
          v9(v20, v70);
          v23 = *(v19 + 8);
          v23(v18, v73);
          *(v21 + 4) = v22;
          _os_log_impl(&_mh_execute_header, v15, v16, "IdentityProofingFetchedAssetManager fetch dynamic workflow returned error code: %ld", v21, 0xCu);
        }

        else
        {
          v23 = *(v19 + 8);
          v23(v18, v0[38]);
        }

        v45 = v0[47];
        v46 = v0[44];
        v47 = v0[45];
        v48 = v0[27];

        (*(v47 + 8))(v45, v46);
        v49 = *(v48 + 88);
        v50 = *(v49 + 16);
        if (v50)
        {
          v51 = v0[33];
          v72 = *(v51 + 16);
          v52 = v49 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
          v67 = (v0[30] + 8);
          v69 = *(v51 + 72);
          v63 = v23;
          v65 = (v51 + 8);

          do
          {
            v53 = v0[42];
            v54 = v0[38];
            v55 = v0[34];
            v57 = v0[31];
            v56 = v0[32];
            v58 = v0[29];
            v72(v55, v52, v56);
            sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            v59 = swift_allocError();
            v75(v60, v53, v54);
            v0[26] = v59;
            AsyncStream.Continuation.yield(_:)();
            (*v67)(v57, v58);
            (*v65)(v55, v56);
            v52 += v69;
            --v50;
          }

          while (v50);

          v23 = v63;
        }

        v23(v0[42], v0[38]);
        goto LABEL_24;
      }

      (*(v0[39] + 8))(v0[42], v0[38]);
    }

    v76 = v0[45];
    v77 = v0[44];
    v68 = v0[39];
    v71 = v0[46];
    v31 = v0[37];
    v64 = v0[40];
    v66 = v0[38];
    v33 = v0[35];
    v32 = v0[36];
    v74 = v0[27];

    swift_getErrorValue();
    Error.localizedDescription.getter();
    sub_1001B4470();
    (*(v32 + 104))(v31, enum case for DIPError.Code.internalError(_:), v33);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    (*(v68 + 16))(v34, v64, v66);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v76 + 8))(v71, v77);

    v35 = swift_allocError();
    (*(v68 + 32))(v36, v64, v66);

    *(v74 + 112) = v35;
LABEL_24:

    v61 = v0[27];
    sub_1001AC570();
    sub_1001A9ACC(v61);

    v62 = v0[1];

    return v62();
  }

  v24 = v2;
  v25 = v3;
  v27 = v0[51];
  v26 = v0[52];
  v28 = v0[50];
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v29 = (*(v27 + 88))(v26, v28);
  if (v29 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v30 = 63;
  }

  else if (v29 == enum case for IdentityDocumentType.Category.passport(_:))
  {
    v30 = 16;
  }

  else
  {
    (*(v0[51] + 8))(v0[52], v0[50]);
    v30 = 0;
  }

  v37 = v0[27];
  v38 = PKPassKitCoreBundle();
  type metadata accessor for SupplementalDeviceDataFetcher();
  swift_allocObject();
  sub_10000B8B8(v24, v25);
  v39 = sub_10059F7F0(v30, v24, v25, v38);
  v40 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_supplementalDataFetcher;
  *(v37 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_supplementalDataFetcher) = v39;

  sub_10059FA1C();

  v0[61] = *(v37 + 32);

  v41 = IdentityProofingConfiguration.documentType.getter();
  v42 = *(v37 + v40);
  v0[62] = v42;

  v43 = swift_task_alloc();
  v0[63] = v43;
  *v43 = v0;
  v43[1] = sub_1001A8208;

  return sub_1001D0B30(v41, (v0 + 8), (v0 + 2), v42);
}

uint64_t sub_1001A8208()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_1001A8688;
  }

  else
  {
    v2 = sub_1001A8358;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A8358()
{
  v1 = sub_10000BA08(v0 + 8, v0[11]);
  v2 = type metadata accessor for Workflow(0);
  v3 = v1 + *(v2 + 124);
  if (v3[8])
  {
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = 3;
      _os_log_impl(&_mh_execute_header, v4, v5, "using default cloudKitMaxRetryCount: %ld as workflow cloudKitMaxRetryCount is nil.", v6, 0xCu);
    }

    v7 = v0[48];
    v8 = v0[44];
    v9 = v0[45];

    (*(v9 + 8))(v7, v8);
  }

  else
  {
    v10 = *v3;
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "using workflow received defaultCloudKitRetryCount: %ld", v13, 0xCu);
    }

    v14 = v0[49];
    v15 = v0[44];
    v16 = v0[45];
    v17 = v0[27];

    (*(v16 + 8))(v14, v15);
    *(v17 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_cloudKitUploadsMaxRetryCount) = v10;
  }

  v18 = sub_10000BA08(v0 + 8, v0[11]) + *(v2 + 128);
  if ((v18[8] & 1) == 0)
  {
    *(v0[27] + 96) = *v18;
  }

  if (qword_100832B50 != -1)
  {
    swift_once();
  }

  v20 = v0[59];
  v19 = v0[60];
  sub_10002ADA0(*(v0[27] + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_cloudKitUploadsMaxRetryCount));
  sub_10000B90C(v20, v19);
  sub_1001B7154((v0 + 2));
  sub_10000BB78(v0 + 8);
  v21 = v0[27];
  sub_1001AC570();
  sub_1001A9ACC(v21);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1001A8688()
{
  sub_10000B90C(v0[59], v0[60]);
  sub_1001B7154((v0 + 2));
  sub_10000BB78(v0 + 8);
  v0[24] = v0[64];
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  (*(v0[39] + 32))(v0[42], v0[43], v0[38]);
  if (qword_100832C30 != -1)
  {
    swift_once();
  }

  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];
  v4 = qword_10083D0B0;
  DIPError.code.getter();
  v5 = sub_10032D978(v2, v4);
  v6 = *(v1 + 8);
  v6(v2, v3);
  if (!v5)
  {
    (*(v0[39] + 8))(v0[42], v0[38]);
LABEL_8:
    v58 = v0[45];
    v59 = v0[44];
    v48 = v0[40];
    v50 = v0[39];
    v53 = v0[46];
    v21 = v0[37];
    v20 = v0[38];
    v23 = v0[35];
    v22 = v0[36];
    v56 = v0[27];

    swift_getErrorValue();
    Error.localizedDescription.getter();
    sub_1001B4470();
    (*(v22 + 104))(v21, enum case for DIPError.Code.internalError(_:), v23);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    (*(v50 + 16))(v24, v48, v20);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v58 + 8))(v53, v59);

    v25 = swift_allocError();
    (*(v50 + 32))(v26, v48, v20);

    *(v56 + 112) = v25;
    goto LABEL_15;
  }

  v8 = v0[41];
  v7 = v0[42];
  v9 = v0[38];
  v10 = v0[39];

  defaultLogger()();
  v57 = *(v10 + 16);
  v57(v8, v7, v9);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[41];
  v15 = v0[39];
  if (v13)
  {
    v16 = v0[37];
    v52 = v0[35];
    v55 = v0[38];
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    DIPError.code.getter();
    v18 = DIPError.Code.rawValue.getter();
    v6(v16, v52);
    v19 = *(v15 + 8);
    v19(v14, v55);
    *(v17 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "IdentityProofingFetchedAssetManager fetch dynamic workflow returned error code: %ld", v17, 0xCu);
  }

  else
  {
    v19 = *(v15 + 8);
    v19(v14, v0[38]);
  }

  v27 = v0[47];
  v29 = v0[44];
  v28 = v0[45];
  v30 = v0[27];

  (*(v28 + 8))(v27, v29);
  v31 = *(v30 + 88);
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = v0[33];
    v54 = *(v33 + 16);
    v34 = v31 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v49 = (v0[30] + 8);
    v51 = *(v33 + 72);
    v46 = v19;
    v47 = (v33 + 8);

    do
    {
      v35 = v0[42];
      v36 = v0[38];
      v37 = v0[34];
      v39 = v0[31];
      v38 = v0[32];
      v40 = v0[29];
      v54(v37, v34, v38);
      sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v41 = swift_allocError();
      v57(v42, v35, v36);
      v0[26] = v41;
      AsyncStream.Continuation.yield(_:)();
      (*v49)(v39, v40);
      (*v47)(v37, v38);
      v34 += v51;
      --v32;
    }

    while (v32);

    v19 = v46;
  }

  v19(v0[42], v0[38]);
LABEL_15:

  v43 = v0[27];
  sub_1001AC570();
  sub_1001A9ACC(v43);

  v44 = v0[1];

  return v44();
}

uint64_t sub_1001A8D54()
{

  v0[24] = v0[56];
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  (*(v0[39] + 32))(v0[42], v0[43], v0[38]);
  if (qword_100832C30 != -1)
  {
    swift_once();
  }

  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];
  v4 = qword_10083D0B0;
  DIPError.code.getter();
  v5 = sub_10032D978(v2, v4);
  v6 = *(v1 + 8);
  v6(v2, v3);
  if (!v5)
  {
    (*(v0[39] + 8))(v0[42], v0[38]);
LABEL_8:
    v58 = v0[45];
    v59 = v0[44];
    v48 = v0[40];
    v50 = v0[39];
    v53 = v0[46];
    v21 = v0[37];
    v20 = v0[38];
    v23 = v0[35];
    v22 = v0[36];
    v56 = v0[27];

    swift_getErrorValue();
    Error.localizedDescription.getter();
    sub_1001B4470();
    (*(v22 + 104))(v21, enum case for DIPError.Code.internalError(_:), v23);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    (*(v50 + 16))(v24, v48, v20);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v58 + 8))(v53, v59);

    v25 = swift_allocError();
    (*(v50 + 32))(v26, v48, v20);

    *(v56 + 112) = v25;
    goto LABEL_15;
  }

  v8 = v0[41];
  v7 = v0[42];
  v9 = v0[38];
  v10 = v0[39];

  defaultLogger()();
  v57 = *(v10 + 16);
  v57(v8, v7, v9);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[41];
  v15 = v0[39];
  if (v13)
  {
    v16 = v0[37];
    v52 = v0[35];
    v55 = v0[38];
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    DIPError.code.getter();
    v18 = DIPError.Code.rawValue.getter();
    v6(v16, v52);
    v19 = *(v15 + 8);
    v19(v14, v55);
    *(v17 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "IdentityProofingFetchedAssetManager fetch dynamic workflow returned error code: %ld", v17, 0xCu);
  }

  else
  {
    v19 = *(v15 + 8);
    v19(v14, v0[38]);
  }

  v27 = v0[47];
  v29 = v0[44];
  v28 = v0[45];
  v30 = v0[27];

  (*(v28 + 8))(v27, v29);
  v31 = *(v30 + 88);
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = v0[33];
    v54 = *(v33 + 16);
    v34 = v31 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v49 = (v0[30] + 8);
    v51 = *(v33 + 72);
    v46 = v19;
    v47 = (v33 + 8);

    do
    {
      v35 = v0[42];
      v36 = v0[38];
      v37 = v0[34];
      v39 = v0[31];
      v38 = v0[32];
      v40 = v0[29];
      v54(v37, v34, v38);
      sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v41 = swift_allocError();
      v57(v42, v35, v36);
      v0[26] = v41;
      AsyncStream.Continuation.yield(_:)();
      (*v49)(v39, v40);
      (*v47)(v37, v38);
      v34 += v51;
      --v32;
    }

    while (v32);

    v19 = v46;
  }

  v19(v0[42], v0[38]);
LABEL_15:

  v43 = v0[27];
  sub_1001AC570();
  sub_1001A9ACC(v43);

  v44 = v0[1];

  return v44();
}

uint64_t sub_1001A9410()
{
  sub_10000BB78(v0 + 8);
  v0[24] = v0[58];
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  (*(v0[39] + 32))(v0[42], v0[43], v0[38]);
  if (qword_100832C30 != -1)
  {
    swift_once();
  }

  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];
  v4 = qword_10083D0B0;
  DIPError.code.getter();
  v5 = sub_10032D978(v2, v4);
  v6 = *(v1 + 8);
  v6(v2, v3);
  if (!v5)
  {
    (*(v0[39] + 8))(v0[42], v0[38]);
LABEL_8:
    v58 = v0[45];
    v59 = v0[44];
    v48 = v0[40];
    v50 = v0[39];
    v53 = v0[46];
    v21 = v0[37];
    v20 = v0[38];
    v23 = v0[35];
    v22 = v0[36];
    v56 = v0[27];

    swift_getErrorValue();
    Error.localizedDescription.getter();
    sub_1001B4470();
    (*(v22 + 104))(v21, enum case for DIPError.Code.internalError(_:), v23);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    (*(v50 + 16))(v24, v48, v20);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v58 + 8))(v53, v59);

    v25 = swift_allocError();
    (*(v50 + 32))(v26, v48, v20);

    *(v56 + 112) = v25;
    goto LABEL_15;
  }

  v8 = v0[41];
  v7 = v0[42];
  v9 = v0[38];
  v10 = v0[39];

  defaultLogger()();
  v57 = *(v10 + 16);
  v57(v8, v7, v9);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[41];
  v15 = v0[39];
  if (v13)
  {
    v16 = v0[37];
    v52 = v0[35];
    v55 = v0[38];
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    DIPError.code.getter();
    v18 = DIPError.Code.rawValue.getter();
    v6(v16, v52);
    v19 = *(v15 + 8);
    v19(v14, v55);
    *(v17 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "IdentityProofingFetchedAssetManager fetch dynamic workflow returned error code: %ld", v17, 0xCu);
  }

  else
  {
    v19 = *(v15 + 8);
    v19(v14, v0[38]);
  }

  v27 = v0[47];
  v29 = v0[44];
  v28 = v0[45];
  v30 = v0[27];

  (*(v28 + 8))(v27, v29);
  v31 = *(v30 + 88);
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = v0[33];
    v54 = *(v33 + 16);
    v34 = v31 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v49 = (v0[30] + 8);
    v51 = *(v33 + 72);
    v46 = v19;
    v47 = (v33 + 8);

    do
    {
      v35 = v0[42];
      v36 = v0[38];
      v37 = v0[34];
      v39 = v0[31];
      v38 = v0[32];
      v40 = v0[29];
      v54(v37, v34, v38);
      sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v41 = swift_allocError();
      v57(v42, v35, v36);
      v0[26] = v41;
      AsyncStream.Continuation.yield(_:)();
      (*v49)(v39, v40);
      (*v47)(v37, v38);
      v34 += v51;
      --v32;
    }

    while (v32);

    v19 = v46;
  }

  v19(v0[42], v0[38]);
LABEL_15:

  v43 = v0[27];
  sub_1001AC570();
  sub_1001A9ACC(v43);

  v44 = v0[1];

  return v44();
}

uint64_t sub_1001A9ACC(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_group_leave(*(a1 + 104));
  *(a1 + 128) = 0;

  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Signaling Dynamic WF Lock", v8, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1001A9C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1001A9CD8, 0, 0);
}

uint64_t sub_1001A9CD8()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1001A9D70;

  return OS_dispatch_group.wait()();
}

uint64_t sub_1001A9D70()
{

  return _swift_task_switch(sub_1001A9E6C, 0, 0);
}

uint64_t sub_1001A9E6C()
{
  v0[7] = *(v0[2] + 32);

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1001A9F10;

  return sub_1001C7CB4();
}

uint64_t sub_1001A9F10()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001AA054, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1001AA054()
{

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "IdentityProofingFetchedAssetManager failed liveness video: %@", v3, 0xCu);
    sub_10000BE18(v4, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001AA1E4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  sub_100007224(&qword_10083D4B0, &qword_1006DC940);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_1001AA348, 0, 0);
}

uint64_t sub_1001AA348()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[10];
  v5 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_staticWorkflow;
  v0[19] = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_staticWorkflow;
  swift_beginAccess();
  sub_10000BBC4(v4 + v5, v1, &qword_10083D4B0, &qword_1006DC940);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v6 = v0[9];
    sub_10000BE18(v0[18], &qword_10083D4B0, &qword_1006DC940);
    v0[20] = sub_1006146AC();
    v7 = sub_10058CB08(v6);
    v0[21] = v8;
    v0[22] = v9;
    v12 = v7;
    v13 = v8;
    v15 = v14;
    v16 = v9;
    v17 = swift_task_alloc();
    v0[23] = v17;
    *v17 = v0;
    v17[1] = sub_1001AA684;
    v18 = v0[16];

    return sub_100612ED4(v18, v12, v13, v15, v16);
  }

  else
  {
    sub_1001B6DE4(v0[18], v0[8]);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1001AA684()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1001AA904;
  }

  else
  {
    v2 = sub_1001AA7F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001AA7F0()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[10];
  sub_1001A2050(v0[16], v2);
  (*(v4 + 56))(v2, 0, 1, v3);
  swift_beginAccess();
  sub_1000B2764(v2, v5 + v1, &qword_10083D4B0, &qword_1006DC940);
  swift_endAccess();
  sub_1001B6DE4(v0[16], v0[8]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001AA904()
{
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001AAAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[38] = a3;
  v4[39] = v3;
  v4[36] = a1;
  v4[37] = a2;
  v5 = type metadata accessor for DIPKeyAlgorithm();
  v4[40] = v5;
  v4[41] = *(v5 - 8);
  v4[42] = swift_task_alloc();
  v6 = type metadata accessor for KeystoreKeyType();
  v4[43] = v6;
  v4[44] = *(v6 - 8);
  v4[45] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[46] = v7;
  v4[47] = *(v7 - 8);
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v4[51] = v8;
  v4[52] = *(v8 - 8);
  v4[53] = swift_task_alloc();
  v9 = type metadata accessor for IdentityDocumentType.Category();
  v4[54] = v9;
  v4[55] = *(v9 - 8);
  v4[56] = swift_task_alloc();

  return _swift_task_switch(sub_1001AACF8, 0, 0);
}

uint64_t sub_1001AACF8()
{
  v60 = v0;
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 432);
  type metadata accessor for DIPKeystoreManager();
  inited = swift_initStackObject();
  *(v0 + 456) = inited;
  *(inited + 16) = sub_10003D56C(_swiftEmptyArrayStorage);
  *(inited + 24) = 2;
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v6 = IdentityProofingConfiguration.state.getter();
    v8 = 0xE700000000000000;
    v9 = 0x61746E6567616DLL;
    goto LABEL_5;
  }

  if (v5 == enum case for IdentityDocumentType.Category.passport(_:))
  {
    v10 = sub_10000BA08(*(v0 + 296), *(*(v0 + 296) + 24));
    v9 = v10[6];
    v8 = v10[7];

    v6 = IdentityProofingConfiguration.country.getter();
LABEL_5:
    *(v0 + 464) = v9;
    *(v0 + 472) = v8;
    v55 = v9;
    v11 = *(v0 + 304);
    if (v7)
    {
      v12 = v6;
    }

    else
    {
      v12 = 0;
    }

    v57 = v12;
    if (v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = 0xE000000000000000;
    }

    defaultLogger()();
    v14 = v11;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    v58 = v13;
    if (os_log_type_enabled(v15, v16))
    {
      v53 = v8;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v59[0] = v18;
      *v17 = 136315138;
      IdentityProofingConfiguration.targetDevice.getter();
      if (v19)
      {
        v20 = 0xE300000000000000;
        v21 = 7104878;
      }

      else
      {
        v21 = IdentityTarget.debugDescription.getter();
        v20 = v27;
      }

      v52 = *(v0 + 400);
      v28 = *(v0 + 368);
      v29 = *(v0 + 376);
      v30 = sub_100141FE4(v21, v20, v59);

      *(v17 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v15, v16, "fetchIdentityKeyPair checking if proofing was attempted for configuration %s", v17, 0xCu);
      sub_10000BB78(v18);

      v25 = *(v29 + 8);
      v25(v52, v28);
      v8 = v53;
    }

    else
    {
      v22 = *(v0 + 400);
      v23 = *(v0 + 368);
      v24 = *(v0 + 376);

      v25 = *(v24 + 8);
      v25(v22, v23);
    }

    *(v0 + 480) = v25;

    v31 = IdentityProofingConfiguration.targetDevice.getter();
    if (v32)
    {
      v33 = 1;
    }

    else
    {
      v33 = v31;
    }

    v34 = IdentityProofingConfiguration.documentType.getter();
    sub_1002E0DD4(v57, v58, v33, 0, 0, v34, v59);
    v40 = *(&v59[0] + 1);

    if (v40)
    {

      v42 = *(v0 + 352);
      v41 = *(v0 + 360);
      v43 = *(v0 + 344);
      sub_10000BA08(*(v0 + 296), *(*(v0 + 296) + 24));
      v44 = sub_1000FEC7C();
      *(v0 + 504) = v44;
      (*(v42 + 104))(v41, enum case for KeystoreKeyType.extended(_:), v43);
      v45 = swift_task_alloc();
      *(v0 + 512) = v45;
      *v45 = v0;
      v45[1] = sub_1001AB834;

      return sub_10003736C(v0 + 112, v44, 0, 0, 0xF000000000000000);
    }

    else
    {
      defaultLogger()();
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "No existing proofing session; deleting existing keys and certificates for a fresh start", v48, 2u);
      }

      v49 = *(v0 + 392);
      v50 = *(v0 + 368);

      v25(v49, v50);
      v51 = swift_task_alloc();
      *(v0 + 488) = v51;
      *v51 = v0;
      v51[1] = sub_1001AB4C4;

      return sub_100038F4C(v55, v8);
    }
  }

  v26 = *(v0 + 440);
  v54 = *(v0 + 432);
  v56 = *(v0 + 448);
  (*(*(v0 + 416) + 104))(*(v0 + 424), enum case for DIPError.Code.unexpectedIDType(_:), *(v0 + 408));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v26 + 8))(v56, v54);
  v36 = *(v0 + 416);
  v35 = *(v0 + 424);
  v37 = *(v0 + 408);
  swift_errorRetain();
  sub_1001B4470();
  (*(v36 + 104))(v35, enum case for DIPError.Code.internalError(_:), v37);
  type metadata accessor for DIPError();
  sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1001AB4C4()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_1001AB6D8;
  }

  else
  {
    v2 = sub_1001AB5D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001AB5D8()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 344);
  sub_10000BA08(*(v0 + 296), *(*(v0 + 296) + 24));
  v4 = sub_1000FEC7C();
  *(v0 + 504) = v4;
  (*(v2 + 104))(v1, enum case for KeystoreKeyType.extended(_:), v3);
  v5 = swift_task_alloc();
  *(v0 + 512) = v5;
  *v5 = v0;
  v5[1] = sub_1001AB834;

  return sub_10003736C(v0 + 112, v4, 0, 0, 0xF000000000000000);
}

uint64_t sub_1001AB6D8(uint64_t a1)
{
  v2 = *(v1 + 480);
  v3 = *(v1 + 384);
  v4 = *(v1 + 368);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v2(v3, v4);
  v6 = *(v1 + 352);
  v5 = *(v1 + 360);
  v7 = *(v1 + 344);
  sub_10000BA08(*(v1 + 296), *(*(v1 + 296) + 24));
  v8 = sub_1000FEC7C();
  *(v1 + 504) = v8;
  (*(v6 + 104))(v5, enum case for KeystoreKeyType.extended(_:), v7);
  v9 = swift_task_alloc();
  *(v1 + 512) = v9;
  *v9 = v1;
  v9[1] = sub_1001AB834;

  return sub_10003736C(v1 + 112, v8, 0, 0, 0xF000000000000000);
}

uint64_t sub_1001AB834()
{
  *(*v1 + 520) = v0;

  if (v0)
  {

    v2 = sub_1001ABCA4;
  }

  else
  {
    v2 = sub_1001AB978;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001AB978()
{
  v1 = v0[65];
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  sub_10000BA08(v0 + 19, v0[22]);
  v2 = dispatch thunk of DIPAccountManagerProtocol.primaryAppleAccountIdentifier()();
  v0[66] = v3;
  if (v1)
  {
    (*(v0[44] + 8))(v0[45], v0[43]);

    sub_10000BB78(v0 + 19);
    sub_10000BB78(v0 + 14);

    v4 = v0[52];
    v5 = v0[53];
    v6 = v0[51];
    swift_errorRetain();
    sub_1001B4470();
    (*(v4 + 104))(v5, enum case for DIPError.Code.internalError(_:), v6);
    type metadata accessor for DIPError();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v2;
    v10 = v3;
    v11 = v0[42];
    sub_10000BB78(v0 + 19);
    sub_10000BA08(v0 + 14, v0[17]);
    sub_10061B2DC(v11);
    v12 = swift_task_alloc();
    v0[67] = v12;
    *v12 = v0;
    v12[1] = sub_1001ABE94;
    v13 = v0[58];
    v14 = v0[59];
    v15 = v0[45];
    v16 = v0[42];

    return DIPKeystoreProtocol.retrieveOrGenerateIdentityKey(name:userInfo:keyTypeToGenerate:algorithm:constraints:enableUAM:)(v0 + 24, v13, v14, v9, v10, v15, v16, 0);
  }
}

uint64_t sub_1001ABCA4()
{
  (*(v0[44] + 8))(v0[45], v0[43]);

  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[51];
  swift_errorRetain();
  sub_1001B4470();
  (*(v1 + 104))(v2, enum case for DIPError.Code.internalError(_:), v3);
  type metadata accessor for DIPError();
  sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001ABE94()
{
  v2 = *v1;
  *(*v1 + 544) = v0;

  (*(v2[41] + 8))(v2[42], v2[40]);

  if (v0)
  {
    v3 = sub_1001AC378;
  }

  else
  {
    v3 = sub_1001AC03C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001AC03C()
{
  v1 = *(v0 + 544);
  sub_10000BA08((v0 + 192), *(v0 + 216));
  v2 = dispatch thunk of IdentityKey.attestation(_:)();
  if (v1)
  {
    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
    sub_10000BB78((v0 + 192));
    sub_10000BB78((v0 + 112));

    v3 = *(v0 + 416);
    v4 = *(v0 + 424);
    v5 = *(v0 + 408);
    swift_errorRetain();
    sub_1001B4470();
    (*(v3 + 104))(v4, enum case for DIPError.Code.internalError(_:), v5);
    type metadata accessor for DIPError();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v7 = v2;
    v8 = *(v0 + 312);
    v9 = *(v0 + 288);
    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
    sub_100020260(v0 + 192, v0 + 16);
    *(v0 + 56) = v7;
    sub_10000BB78((v0 + 192));
    sub_10000BB78((v0 + 112));
    swift_setDeallocating();

    sub_1001B6EF4(v0 + 16, v0 + 64);
    v10 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_identityKeyPair;
    swift_beginAccess();
    sub_1000B2764(v0 + 64, v8 + v10, &qword_10083D4B8, &qword_1006DB470);
    swift_endAccess();
    v11 = *(v0 + 16);
    v12 = *(v0 + 48);
    v9[1] = *(v0 + 32);
    v9[2] = v12;
    *v9 = v11;
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001AC378()
{
  (*(v0[44] + 8))(v0[45], v0[43]);
  sub_10000BB78(v0 + 14);

  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[51];
  swift_errorRetain();
  sub_1001B4470();
  (*(v1 + 104))(v2, enum case for DIPError.Code.internalError(_:), v3);
  type metadata accessor for DIPError();
  sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001AC570()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007224(&qword_10083D4A0, &qword_1006DFB20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  v9 = *(v0 + 88);
  v10 = *(v9 + 16);
  if (v10)
  {
    v20 = v4;
    v21 = v0;
    v22 = v2;
    v23 = v1;
    v13 = *(v6 + 16);
    v12 = v6 + 16;
    v11 = v13;
    v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v15 = *(v12 + 56);

    do
    {
      v11(v8, v14, v5);
      AsyncStream.Continuation.finish()();
      (*(v12 - 8))(v8, v5);
      v14 += v15;
      --v10;
    }

    while (v10);

    v0 = v21;
    v2 = v22;
    v1 = v23;
    v4 = v20;
  }

  *(v0 + 88) = _swiftEmptyArrayStorage;

  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "IdentityProofingFetchedAssetManager notified and cleared continuations", v18, 2u);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1001AC7E8(uint64_t a1)
{
  v2[10754] = a1;
  v2[10755] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[10756] = v3;
  v2[10757] = *(v3 - 8);
  v2[10758] = swift_task_alloc();
  sub_100007224(&qword_10083D4B0, &qword_1006DC940);
  v2[10759] = swift_task_alloc();
  v4 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v2[10760] = v4;
  v2[10761] = *(v4 - 8);
  v2[10762] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[10763] = v5;
  v2[10764] = *(v5 - 8);
  v2[10765] = swift_task_alloc();

  return _swift_task_switch(sub_1001AC99C, 0, 0);
}

uint64_t sub_1001AC99C()
{
  v1 = (v0 + 85880);
  type metadata accessor for IdentityProofingImageQualitySettingsProvider();
  v2 = swift_allocObject();
  *(v0 + 86128) = v2;
  *(v2 + 16) = vdupq_n_s64(5uLL);
  *(v2 + 32) = 5;
  *(v2 + 40) = 1036831949;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v2 + 48) = JSONEncoder.init()();
  *(v2 + 56) = xmmword_1006DAFF0;
  v3 = [objc_opt_self() standardUserDefaults];
  v4._countAndFlagsBits = static DaemonInternalDefaultsKeys.overrideImageQualitySettings.getter();
  v5 = NSUserDefaults.internalBool(forKey:)(v4);

  if (v5)
  {
    defaultLogger()();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Overriding workflow image quality settings, using internal settings.", v8, 2u);
    }

    v10 = *(v0 + 86112);
    v9 = *(v0 + 86120);
    v11 = *(v0 + 86104);

    (*(v10 + 8))(v9, v11);
    v12 = sub_1002BC714();

    v13 = *(v0 + 8);

    return v13(v12);
  }

  else
  {
    v15 = *(v0 + 86040);
    v16 = *(v15 + 128);
    *(v0 + 86136) = v16;
    if (v16)
    {
      swift_retain_n();
      v17 = swift_task_alloc();
      *(v0 + 86144) = v17;
      *v17 = v0;
      v17[1] = sub_1001AD4F4;
      v18.n128_u64[0] = 10.0;

      return withTaskTimeoutHandler<A>(timeout:operation:)(v18);
    }

    else
    {
      IdentityProofingConfiguration.documentType.getter();
      swift_beginAccess();
      sub_10000BBC4(v15 + 144, v0 + 85856, &qword_10083D0A0, &qword_1006DAFC0);
      v19 = *v1;
      if (*v1)
      {
        v20 = sub_10000BA08((v0 + 85856), *v1);
        v21 = *(v19 - 8);
        v22 = swift_task_alloc();
        (*(v21 + 16))(v22, v20, v19);
        sub_10000BE18(v0 + 85856, &qword_10083D0A0, &qword_1006DAFC0);
        v23 = type metadata accessor for Workflow(0);
        memcpy((v0 + 68688), (v22 + *(v23 + 156)), 0x2181uLL);
        sub_10000BBC4(v0 + 68688, v0 + 77272, &qword_100839990, &unk_1006C19E0);
        (*(v21 + 8))(v22, v19);

        memcpy((v0 + 60104), (v0 + 68688), 0x2181uLL);
        if (sub_1001B6DC0(v0 + 60104) != 1)
        {
          sub_10000BE18(v0 + 68688, &qword_100839990, &unk_1006C19E0);
        }
      }

      else
      {
        sub_10000BE18(v0 + 85856, &qword_10083D0A0, &qword_1006DAFC0);
      }

      type metadata accessor for DaemonAnalytics();
      static DaemonAnalytics.sendImageQualitySettingsNeededEvent(providerID:wasFetchedInTime:didError:)();

      sub_10000BBC4(v15 + 144, v0 + 85936, &qword_10083D0A0, &qword_1006DAFC0);
      if (*(v0 + 85960))
      {
        sub_10001F358((v0 + 85936), v0 + 85896);
        v24 = sub_10000BA08((v0 + 85896), *(v0 + 85920));
        v25 = *(type metadata accessor for Workflow(0) + 156);
        memcpy((v0 + 17184), v24 + v25, 0x2181uLL);
        memmove((v0 + 8600), v24 + v25, 0x2181uLL);
        if (sub_1001B6DC0(v0 + 8600) != 1)
        {
          v30 = *(v0 + 86080);
          v31 = *(v0 + 86088);
          v32 = *(v0 + 86072);
          v33 = *(v0 + 86040);
          memcpy((v0 + 16), (v0 + 8600), 0x2181uLL);
          v34 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_staticWorkflow;
          swift_beginAccess();
          sub_10000BBC4(v33 + v34, v32, &qword_10083D4B0, &qword_1006DC940);
          if ((*(v31 + 48))(v32, 1, v30) == 1)
          {
            v35 = *(v0 + 86072);
            memcpy((v0 + 25768), (v0 + 17184), 0x2181uLL);
            sub_1000F0958(v0 + 25768, v0 + 34352);
            sub_10000BE18(v35, &qword_10083D4B0, &qword_1006DC940);
            goto LABEL_36;
          }

          sub_1001B6DE4(*(v0 + 86072), *(v0 + 86096));
          memcpy((v0 + 42936), (v0 + 17184), 0x2181uLL);
          sub_1000F0958(v0 + 42936, v0 + 51520);
          v36 = IdentityProofingConfiguration.state.getter();
          v38 = v37;
          v39 = *(v0 + 86096);
          if (v37)
          {
            v40 = *(v39 + *(*(v0 + 86080) + 40));
            if (v40)
            {
              v41 = *(v40 + 16) + 1;
              v42 = v40 + 72;
              while (--v41)
              {
                v43 = *(v42 - 8);
                v46 = *(v42 - 24);
                if (*(v42 - 40) != v36 || v38 != *(v42 - 32))
                {
                  v42 += 112;
                  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    continue;
                  }
                }

                v45 = *(v0 + 86096);

                sub_1001B6E48(v43);

                *(v0 + 86024) = v46;
                dispatch thunk of CustomStringConvertible.description.getter();

                sub_1000F4824(v43);

                sub_1001A1FAC(v45);
                goto LABEL_36;
              }

              v44 = *(v0 + 86096);

              sub_1001A1FAC(v44);
            }

            else
            {
              sub_1001A1FAC(v39);
            }
          }

          else
          {
            sub_1001A1FAC(v39);
          }

LABEL_36:
          sub_10000BA08((v0 + 85896), *(v0 + 85920));

          sub_1002B2220(v0 + 16);
        }

        (*(*(v0 + 86056) + 104))(*(v0 + 86064), enum case for DIPError.Code.missingImageQualityModel(_:), *(v0 + 86048));
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        sub_10000BB78((v0 + 85896));
      }

      else
      {
        v27 = *(v0 + 86056);
        v26 = *(v0 + 86064);
        v28 = *(v0 + 86048);
        sub_10000BE18(v0 + 85936, &qword_10083D0A0, &qword_1006DAFC0);
        (*(v27 + 104))(v26, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v28);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }

      v29 = *(v0 + 8);

      return v29();
    }
  }
}

uint64_t sub_1001AD4F4()
{
  *(*v1 + 86152) = v0;

  if (v0)
  {
    v2 = sub_1001ADF74;
  }

  else
  {

    v2 = sub_1001AD628;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001AD628()
{

  v1 = *(v0 + 86040);
  IdentityProofingConfiguration.documentType.getter();
  swift_beginAccess();
  sub_10000BBC4(v1 + 144, v0 + 85856, &qword_10083D0A0, &qword_1006DAFC0);
  v2 = *(v0 + 85880);
  if (v2)
  {
    v3 = sub_10000BA08((v0 + 85856), *(v0 + 85880));
    v4 = *(v2 - 8);
    v5 = swift_task_alloc();
    (*(v4 + 16))(v5, v3, v2);
    sub_10000BE18(v0 + 85856, &qword_10083D0A0, &qword_1006DAFC0);
    v6 = type metadata accessor for Workflow(0);
    memcpy((v0 + 68688), (v5 + *(v6 + 156)), 0x2181uLL);
    sub_10000BBC4(v0 + 68688, v0 + 77272, &qword_100839990, &unk_1006C19E0);
    (*(v4 + 8))(v5, v2);

    memcpy((v0 + 60104), (v0 + 68688), 0x2181uLL);
    if (sub_1001B6DC0(v0 + 60104) != 1)
    {
      sub_10000BE18(v0 + 68688, &qword_100839990, &unk_1006C19E0);
    }
  }

  else
  {
    sub_10000BE18(v0 + 85856, &qword_10083D0A0, &qword_1006DAFC0);
  }

  type metadata accessor for DaemonAnalytics();
  static DaemonAnalytics.sendImageQualitySettingsNeededEvent(providerID:wasFetchedInTime:didError:)();

  sub_10000BBC4(v1 + 144, v0 + 85936, &qword_10083D0A0, &qword_1006DAFC0);
  if (*(v0 + 85960))
  {
    sub_10001F358((v0 + 85936), v0 + 85896);
    v7 = sub_10000BA08((v0 + 85896), *(v0 + 85920));
    v8 = *(type metadata accessor for Workflow(0) + 156);
    memcpy((v0 + 17184), v7 + v8, 0x2181uLL);
    memmove((v0 + 8600), v7 + v8, 0x2181uLL);
    if (sub_1001B6DC0(v0 + 8600) != 1)
    {
      v14 = *(v0 + 86080);
      v15 = *(v0 + 86088);
      v16 = *(v0 + 86072);
      v17 = *(v0 + 86040);
      memcpy((v0 + 16), (v0 + 8600), 0x2181uLL);
      v18 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_staticWorkflow;
      swift_beginAccess();
      sub_10000BBC4(v17 + v18, v16, &qword_10083D4B0, &qword_1006DC940);
      if ((*(v15 + 48))(v16, 1, v14) == 1)
      {
        v19 = *(v0 + 86072);
        memcpy((v0 + 25768), (v0 + 17184), 0x2181uLL);
        sub_1000F0958(v0 + 25768, v0 + 34352);
        sub_10000BE18(v19, &qword_10083D4B0, &qword_1006DC940);
        goto LABEL_26;
      }

      sub_1001B6DE4(*(v0 + 86072), *(v0 + 86096));
      memcpy((v0 + 42936), (v0 + 17184), 0x2181uLL);
      sub_1000F0958(v0 + 42936, v0 + 51520);
      v20 = IdentityProofingConfiguration.state.getter();
      v22 = v21;
      v23 = *(v0 + 86096);
      if (v21)
      {
        v24 = *(v23 + *(*(v0 + 86080) + 40));
        if (v24)
        {
          v25 = *(v24 + 16) + 1;
          v26 = v24 + 72;
          while (--v25)
          {
            v27 = *(v26 - 8);
            v30 = *(v26 - 24);
            if (*(v26 - 40) != v20 || v22 != *(v26 - 32))
            {
              v26 += 112;
              if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                continue;
              }
            }

            v29 = *(v0 + 86096);

            sub_1001B6E48(v27);

            *(v0 + 86024) = v30;
            dispatch thunk of CustomStringConvertible.description.getter();

            sub_1000F4824(v27);

            sub_1001A1FAC(v29);
            goto LABEL_26;
          }

          v28 = *(v0 + 86096);

          sub_1001A1FAC(v28);
        }

        else
        {
          sub_1001A1FAC(v23);
        }
      }

      else
      {
        sub_1001A1FAC(v23);
      }

LABEL_26:
      sub_10000BA08((v0 + 85896), *(v0 + 85920));

      sub_1002B2220(v0 + 16);
    }

    (*(*(v0 + 86056) + 104))(*(v0 + 86064), enum case for DIPError.Code.missingImageQualityModel(_:), *(v0 + 86048));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BB78((v0 + 85896));
  }

  else
  {
    v10 = *(v0 + 86056);
    v9 = *(v0 + 86064);
    v11 = *(v0 + 86048);
    sub_10000BE18(v0 + 85936, &qword_10083D0A0, &qword_1006DAFC0);
    (*(v10 + 104))(v9, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v11);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1001ADF74()
{

  v1 = *(v0 + 86040);
  IdentityProofingConfiguration.documentType.getter();
  swift_beginAccess();
  sub_10000BBC4(v1 + 144, v0 + 85856, &qword_10083D0A0, &qword_1006DAFC0);
  v2 = *(v0 + 85880);
  if (v2)
  {
    v3 = sub_10000BA08((v0 + 85856), *(v0 + 85880));
    v4 = *(v2 - 8);
    v5 = swift_task_alloc();
    (*(v4 + 16))(v5, v3, v2);
    sub_10000BE18(v0 + 85856, &qword_10083D0A0, &qword_1006DAFC0);
    v6 = type metadata accessor for Workflow(0);
    memcpy((v0 + 68688), (v5 + *(v6 + 156)), 0x2181uLL);
    sub_10000BBC4(v0 + 68688, v0 + 77272, &qword_100839990, &unk_1006C19E0);
    (*(v4 + 8))(v5, v2);

    memcpy((v0 + 60104), (v0 + 68688), 0x2181uLL);
    if (sub_1001B6DC0(v0 + 60104) != 1)
    {
      sub_10000BE18(v0 + 68688, &qword_100839990, &unk_1006C19E0);
    }
  }

  else
  {
    sub_10000BE18(v0 + 85856, &qword_10083D0A0, &qword_1006DAFC0);
  }

  type metadata accessor for DaemonAnalytics();
  static DaemonAnalytics.sendImageQualitySettingsNeededEvent(providerID:wasFetchedInTime:didError:)();

  sub_10000BBC4(v1 + 144, v0 + 85936, &qword_10083D0A0, &qword_1006DAFC0);
  if (*(v0 + 85960))
  {
    sub_10001F358((v0 + 85936), v0 + 85896);
    v7 = sub_10000BA08((v0 + 85896), *(v0 + 85920));
    v8 = *(type metadata accessor for Workflow(0) + 156);
    memcpy((v0 + 17184), v7 + v8, 0x2181uLL);
    memmove((v0 + 8600), v7 + v8, 0x2181uLL);
    if (sub_1001B6DC0(v0 + 8600) != 1)
    {
      v14 = *(v0 + 86080);
      v15 = *(v0 + 86088);
      v16 = *(v0 + 86072);
      v17 = *(v0 + 86040);
      memcpy((v0 + 16), (v0 + 8600), 0x2181uLL);
      v18 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_staticWorkflow;
      swift_beginAccess();
      sub_10000BBC4(v17 + v18, v16, &qword_10083D4B0, &qword_1006DC940);
      if ((*(v15 + 48))(v16, 1, v14) == 1)
      {
        v19 = *(v0 + 86072);
        memcpy((v0 + 25768), (v0 + 17184), 0x2181uLL);
        sub_1000F0958(v0 + 25768, v0 + 34352);
        sub_10000BE18(v19, &qword_10083D4B0, &qword_1006DC940);
        goto LABEL_26;
      }

      sub_1001B6DE4(*(v0 + 86072), *(v0 + 86096));
      memcpy((v0 + 42936), (v0 + 17184), 0x2181uLL);
      sub_1000F0958(v0 + 42936, v0 + 51520);
      v20 = IdentityProofingConfiguration.state.getter();
      v22 = v21;
      v23 = *(v0 + 86096);
      if (v21)
      {
        v24 = *(v23 + *(*(v0 + 86080) + 40));
        if (v24)
        {
          v25 = *(v24 + 16) + 1;
          v26 = v24 + 72;
          while (--v25)
          {
            v27 = *(v26 - 8);
            v30 = *(v26 - 24);
            if (*(v26 - 40) != v20 || v22 != *(v26 - 32))
            {
              v26 += 112;
              if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                continue;
              }
            }

            v29 = *(v0 + 86096);

            sub_1001B6E48(v27);

            *(v0 + 86024) = v30;
            dispatch thunk of CustomStringConvertible.description.getter();

            sub_1000F4824(v27);

            sub_1001A1FAC(v29);
            goto LABEL_26;
          }

          v28 = *(v0 + 86096);

          sub_1001A1FAC(v28);
        }

        else
        {
          sub_1001A1FAC(v23);
        }
      }

      else
      {
        sub_1001A1FAC(v23);
      }

LABEL_26:
      sub_10000BA08((v0 + 85896), *(v0 + 85920));

      sub_1002B2220(v0 + 16);
    }

    (*(*(v0 + 86056) + 104))(*(v0 + 86064), enum case for DIPError.Code.missingImageQualityModel(_:), *(v0 + 86048));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BB78((v0 + 85896));
  }

  else
  {
    v10 = *(v0 + 86056);
    v9 = *(v0 + 86064);
    v11 = *(v0 + 86048);
    sub_10000BE18(v0 + 85936, &qword_10083D0A0, &qword_1006DAFC0);
    (*(v10 + 104))(v9, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v11);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1001AE8D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001B72CC;

  return Task<>.value.getter(a1, a2, &type metadata for () + 8);
}

uint64_t sub_1001AE980(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = type metadata accessor for Logger();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[29] = v4;
  *v4 = v2;
  v4[1] = sub_1001AEAA0;

  return sub_1001AF940(v1);
}

uint64_t sub_1001AEAA0(char a1)
{
  *(*v1 + 296) = a1;

  return _swift_task_switch(sub_1001AEBA0, 0, 0);
}

uint64_t sub_1001AEBA0(uint64_t a1)
{
  if (*(v1 + 296))
  {
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 200);
    v6 = *(v1 + 176);
    v7 = *(v1 + 184);
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "IdentityProofingFetchedAssetManager has existing proofing requests, returning nil", v8, 2u);
    }

    (*(v7 + 8))(v5, v6);
LABEL_5:

    v9 = *(v1 + 8);

    return v9(0);
  }

  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    _os_log_impl(&_mh_execute_header, v11, v12, "hasExistingProofingSession: %{BOOL}d. Will fetch dynamic workflow", v13, 8u);
  }

  v14 = *(v1 + 224);
  v15 = *(v1 + 176);
  v16 = *(v1 + 184);
  v17 = *(v1 + 168);

  v18 = *(v16 + 8);
  *(v1 + 240) = v18;
  *(v1 + 248) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v14, v15);
  v19 = *(v17 + 128);
  *(v1 + 256) = v19;
  if (v19)
  {
    swift_retain_n();
    v20 = swift_task_alloc();
    *(v1 + 264) = v20;
    *v20 = v1;
    v20[1] = sub_1001AF05C;
    v21.n128_u64[0] = 10.0;

    return withTaskTimeoutHandler<A>(timeout:operation:)(v21);
  }

  else
  {
    v22 = *(v1 + 168);
    swift_beginAccess();
    sub_10000BBC4(v22 + 144, v1 + 56, &qword_10083D0A0, &qword_1006DAFC0);
    if (!*(v1 + 80))
    {
      sub_10000BE18(v1 + 56, &qword_10083D0A0, &qword_1006DAFC0);
      defaultLogger()();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      v33 = os_log_type_enabled(v31, v32);
      v34 = *(v1 + 240);
      v35 = *(v1 + 208);
      v36 = *(v1 + 176);
      if (v33)
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Dynamic workflow is nil. Cannot build the consent UI", v37, 2u);
      }

      v34(v35, v36);
      goto LABEL_5;
    }

    sub_10001F358((v1 + 56), v1 + 16);
    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Fetch the unorderedUI for fedstats from the dynamic workflow", v25, 2u);
    }

    v26 = *(v1 + 240);
    v27 = *(v1 + 216);
    v28 = *(v1 + 176);

    v26(v27, v28);
    sub_100020260(v1 + 16, v1 + 96);
    v29 = swift_task_alloc();
    *(v1 + 280) = v29;
    *v29 = v1;
    v29[1] = sub_1001AF42C;
    v30 = *(v1 + 160);

    return sub_1001AFF4C(v30, v1 + 96);
  }
}

uint64_t sub_1001AF05C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1001AF5EC;
  }

  else
  {

    v2 = sub_1001AF178;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001AF178()
{

  v1 = *(v0 + 168);
  swift_beginAccess();
  sub_10000BBC4(v1 + 144, v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
  if (*(v0 + 80))
  {
    sub_10001F358((v0 + 56), v0 + 16);
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Fetch the unorderedUI for fedstats from the dynamic workflow", v4, 2u);
    }

    v5 = *(v0 + 240);
    v6 = *(v0 + 216);
    v7 = *(v0 + 176);

    v5(v6, v7);
    sub_100020260(v0 + 16, v0 + 96);
    v8 = swift_task_alloc();
    *(v0 + 280) = v8;
    *v8 = v0;
    v8[1] = sub_1001AF42C;
    v9 = *(v0 + 160);

    return sub_1001AFF4C(v9, v0 + 96);
  }

  else
  {
    sub_10000BE18(v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 240);
    v15 = *(v0 + 208);
    v16 = *(v0 + 176);
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Dynamic workflow is nil. Cannot build the consent UI", v17, 2u);
    }

    v14(v15, v16);

    v18 = *(v0 + 8);

    return v18(0);
  }
}

uint64_t sub_1001AF42C(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 288) = a1;

  sub_10000BE18(v2 + 96, &qword_10083D0A0, &qword_1006DAFC0);

  return _swift_task_switch(sub_1001AF544, 0, 0);
}

uint64_t sub_1001AF544()
{
  sub_10000BB78(v0 + 2);
  v1 = v0[36];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1001AF5EC()
{

  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 240);
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "The dynamic workflow timed out", v7, 2u);
  }

  v4(v5, v6);
  v8 = *(v0 + 168);
  swift_beginAccess();
  sub_10000BBC4(v8 + 144, v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
  if (*(v0 + 80))
  {
    sub_10001F358((v0 + 56), v0 + 16);
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Fetch the unorderedUI for fedstats from the dynamic workflow", v11, 2u);
    }

    v12 = *(v0 + 240);
    v13 = *(v0 + 216);
    v14 = *(v0 + 176);

    v12(v13, v14);
    sub_100020260(v0 + 16, v0 + 96);
    v15 = swift_task_alloc();
    *(v0 + 280) = v15;
    *v15 = v0;
    v15[1] = sub_1001AF42C;
    v16 = *(v0 + 160);

    return sub_1001AFF4C(v16, v0 + 96);
  }

  else
  {
    sub_10000BE18(v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 240);
    v22 = *(v0 + 208);
    v23 = *(v0 + 176);
    if (v20)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Dynamic workflow is nil. Cannot build the consent UI", v24, 2u);
    }

    v21(v22, v23);

    v25 = *(v0 + 8);

    return v25(0);
  }
}

uint64_t sub_1001AF940(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1001AFA00, 0, 0);
}

uint64_t sub_1001AFA00()
{
  v0[6] = *(v0[2] + 40);

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1001AFAB4;

  return sub_1002E1FB8();
}

uint64_t sub_1001AFAB4(char a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1001AFC14, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1 & 1);
  }
}

uint64_t sub_1001AFC14()
{

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "IdentityProofingFetchedAssetManager failed to determine if there are any active proofing requests: %@", v3, 0xCu);
    sub_10000BE18(v4, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_1001AFDA4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001AFE54;

  return Task<>.value.getter(a1, a2, &type metadata for () + 8);
}

uint64_t sub_1001AFE54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001AFF4C(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v4 = type metadata accessor for IdentityProofingUnorderedUIElement();
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v3[34] = swift_task_alloc();
  v5 = type metadata accessor for IdentityDocumentType.Category();
  v3[35] = v5;
  v3[36] = *(v5 - 8);
  v3[37] = swift_task_alloc();
  sub_100007224(&qword_10083D4A8, &qword_1006DB1A8);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[42] = v6;
  v3[43] = *(v6 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();

  return _swift_task_switch(sub_1001B0190, 0, 0);
}

uint64_t sub_1001B0190(uint64_t a1)
{
  v82 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "prepareBiomeFedStatsUIConfig: attempting to build Biome FedStats UI", v4, 2u);
  }

  v5 = *(v1 + 392);
  v6 = *(v1 + 336);
  v7 = *(v1 + 344);
  v8 = *(v1 + 224);

  v9 = *(v7 + 8);
  *(v1 + 400) = v9;
  v9(v5, v6);
  sub_10000BBC4(v8, v1 + 56, &qword_10083D0A0, &qword_1006DAFC0);
  if (!*(v1 + 80))
  {
    sub_10000BE18(v1 + 56, &qword_10083D0A0, &qword_1006DAFC0);
    defaultLogger()();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v1 + 352);
    v36 = *(v1 + 336);
    if (v34)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "The dynamic workflow is not available. Cannot build Biome FedStats UI", v37, 2u);
    }

    v9(v35, v36);
    goto LABEL_18;
  }

  sub_10001F358((v1 + 56), v1 + 16);
  v10 = sub_10000BA08((v1 + 16), *(v1 + 40));
  v11 = type metadata accessor for Workflow(0);
  v12 = *(v10 + *(v11 + 148));
  if (v12 == 2 || (v12 & 1) == 0)
  {
    defaultLogger()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "isBiomeFedStatsEnabled is not enabled from the dynamic workflow", v29, 2u);
    }

    v30 = *(v1 + 384);
    v31 = *(v1 + 336);

    v9(v30, v31);
    goto LABEL_14;
  }

  v13 = v11;
  v14 = *(v1 + 328);
  v16 = *(v1 + 288);
  v15 = *(v1 + 296);
  v17 = *(v1 + 280);
  v18 = *(v1 + 240);
  v19 = *(v1 + 248);
  v20 = *(v19 + 56);
  *(v1 + 408) = v20;
  *(v1 + 416) = (v19 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v20(v14, 1, 1, v18);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v21 = (*(v16 + 88))(v15, v17);
  if (v21 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v22 = *(sub_10000BA08((v1 + 16), *(v1 + 40)) + *(v13 + 120));
    if (v22 && *(v22 + 16))
    {

      v23 = sub_10003ADCC(0xD000000000000016, 0x8000000100704C40);
      v24 = *(v1 + 328);
      if (v25)
      {
        (*(*(v1 + 248) + 16))(*(v1 + 320), *(v22 + 56) + *(*(v1 + 248) + 72) * v23, *(v1 + 240));
        sub_10000BE18(v24, &qword_10083D4A8, &qword_1006DB1A8);

        v26 = 0;
LABEL_30:
        v58 = *(v1 + 320);
        v59 = *(v1 + 328);
        v20(v58, v26, 1, *(v1 + 240));
        sub_1001B6CB4(v58, v59);
        v60 = *(v1 + 304);
        v61 = *(v1 + 240);
        v62 = *(v1 + 248);
        sub_10000BBC4(*(v1 + 328), v60, &qword_10083D4A8, &qword_1006DB1A8);
        if ((*(v62 + 48))(v60, 1, v61) == 1)
        {
          sub_10000BE18(*(v1 + 304), &qword_10083D4A8, &qword_1006DB1A8);
          defaultLogger()();
          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            *v65 = 0;
            _os_log_impl(&_mh_execute_header, v63, v64, "fedStatsUnorderedUIElement doesn't exist. Cannot build Biome FedStats UI", v65, 2u);
          }

          v66 = *(v1 + 400);
          v67 = *(v1 + 360);
          v68 = *(v1 + 336);
          v69 = *(v1 + 328);

          v66(v67, v68);
          sub_10000BE18(v69, &qword_10083D4A8, &qword_1006DB1A8);
          goto LABEL_14;
        }

        v70 = *(v1 + 232);
        (*(*(v1 + 248) + 32))(*(v1 + 256), *(v1 + 304), *(v1 + 240));
        *(v1 + 464) = *(v70 + 64);
        swift_beginAccess();
        sub_10000BBC4(v70 + 144, v1 + 96, &qword_10083D0A0, &qword_1006DAFC0);

        v71 = swift_task_alloc();
        *(v1 + 472) = v71;
        *v71 = v1;
        v71[1] = sub_1001B15E0;

        return sub_1001B4B70(0, v1 + 96);
      }

      v43 = v24;
    }

    else
    {
      v43 = *(v1 + 328);
    }

    sub_10000BE18(v43, &qword_10083D4A8, &qword_1006DB1A8);
    v26 = 1;
    goto LABEL_30;
  }

  if (v21 != enum case for IdentityDocumentType.Category.passport(_:))
  {
    v44 = *(v1 + 216);
    defaultLogger()();
    v45 = v44;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v1 + 368);
    v50 = *(v1 + 336);
    v51 = *(v1 + 328);
    if (v48)
    {
      v80 = *(v1 + 328);
      v79 = *(v1 + 368);
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v81 = v53;
      *v52 = 136315138;
      IdentityProofingConfiguration.documentType.getter();
      v54 = IdentityDocumentType.description.getter();
      v56 = sub_100141FE4(v54, v55, &v81);

      *(v52 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v46, v47, "Unrecognized document type: %s. Cannot build Biome FedStats UI", v52, 0xCu);
      sub_10000BB78(v53);

      v9(v79, v50);
      v57 = v80;
    }

    else
    {

      v9(v49, v50);
      v57 = v51;
    }

    sub_10000BE18(v57, &qword_10083D4A8, &qword_1006DB1A8);
    (*(*(v1 + 288) + 8))(*(v1 + 296), *(v1 + 280));
LABEL_14:
    sub_10000BB78((v1 + 16));
LABEL_18:

    v38 = *(v1 + 8);

    return v38(0);
  }

  *(v1 + 424) = sub_1006146AC();
  v40 = sub_10058CB08(3);
  *(v1 + 432) = v41;
  *(v1 + 440) = v42;
  v72 = v40;
  v73 = v41;
  v75 = v74;
  v76 = v42;
  v77 = swift_task_alloc();
  *(v1 + 448) = v77;
  *v77 = v1;
  v77[1] = sub_1001B0C00;
  v78 = *(v1 + 272);

  return sub_100612ED4(v78, v72, v73, v75, v76);
}

uint64_t sub_1001B0C00()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_1001B1178;
  }

  else
  {
    v2 = sub_1001B0D6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B0D6C()
{
  v1 = v0[34];
  v2 = *(v1 + *(v0[33] + 48));
  if (v2)
  {
    if (*(v2 + 16) && (v3 = sub_10003ADCC(0xD000000000000016, 0x8000000100704C40), (v4 & 1) != 0))
    {
      (*(v0[31] + 16))(v0[39], *(v2 + 56) + *(v0[31] + 72) * v3, v0[30]);
      v5 = 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = v0[51];
    v7 = v0[39];
    v8 = v0[34];
    v9 = v0[30];
    sub_10000BE18(v0[41], &qword_10083D4A8, &qword_1006DB1A8);
    v6(v7, v5, 1, v9);
    sub_1001A1FAC(v8);
  }

  else
  {
    v10 = v0[51];
    v11 = v0[39];
    v12 = v0[30];
    sub_10000BE18(v0[41], &qword_10083D4A8, &qword_1006DB1A8);
    sub_1001A1FAC(v1);
    v10(v11, 1, 1, v12);
  }

  sub_1001B6CB4(v0[39], v0[41]);
  v13 = v0[38];
  v14 = v0[30];
  v15 = v0[31];
  sub_10000BBC4(v0[41], v13, &qword_10083D4A8, &qword_1006DB1A8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000BE18(v0[38], &qword_10083D4A8, &qword_1006DB1A8);
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "fedStatsUnorderedUIElement doesn't exist. Cannot build Biome FedStats UI", v18, 2u);
    }

    v19 = v0[50];
    v20 = v0[45];
    v21 = v0[42];
    v22 = v0[41];

    v19(v20, v21);
    sub_10000BE18(v22, &qword_10083D4A8, &qword_1006DB1A8);
    sub_10000BB78(v0 + 2);

    v23 = v0[1];

    return v23(0);
  }

  else
  {
    v25 = v0[29];
    (*(v0[31] + 32))(v0[32], v0[38], v0[30]);
    v0[58] = *(v25 + 64);
    swift_beginAccess();
    sub_10000BBC4(v25 + 144, (v0 + 12), &qword_10083D0A0, &qword_1006DAFC0);

    v26 = swift_task_alloc();
    v0[59] = v26;
    *v26 = v0;
    v26[1] = sub_1001B15E0;

    return sub_1001B4B70(0, (v0 + 12));
  }
}

uint64_t sub_1001B1178(uint64_t a1)
{
  v30 = v1;
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v27 = v1[47];
    v28 = v1[50];
    v4 = v1[42];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100141FE4(v7, v8, &v29);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "received an error while fetching static workflow to build %s", v5, 0xCu);
    sub_10000BB78(v6);

    v28(v27, v4);
  }

  else
  {
    v10 = v1[50];
    v11 = v1[47];
    v12 = v1[42];

    v10(v11, v12);
  }

  v13 = v1[38];
  v14 = v1[30];
  v15 = v1[31];
  sub_10000BBC4(v1[41], v13, &qword_10083D4A8, &qword_1006DB1A8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000BE18(v1[38], &qword_10083D4A8, &qword_1006DB1A8);
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "fedStatsUnorderedUIElement doesn't exist. Cannot build Biome FedStats UI", v18, 2u);
    }

    v19 = v1[50];
    v20 = v1[45];
    v21 = v1[42];
    v22 = v1[41];

    v19(v20, v21);
    sub_10000BE18(v22, &qword_10083D4A8, &qword_1006DB1A8);
    sub_10000BB78(v1 + 2);

    v23 = v1[1];

    return v23(0);
  }

  else
  {
    v25 = v1[29];
    (*(v1[31] + 32))(v1[32], v1[38], v1[30]);
    v1[58] = *(v25 + 64);
    swift_beginAccess();
    sub_10000BBC4(v25 + 144, (v1 + 12), &qword_10083D0A0, &qword_1006DAFC0);

    v26 = swift_task_alloc();
    v1[59] = v26;
    *v26 = v1;
    v26[1] = sub_1001B15E0;

    return sub_1001B4B70(0, (v1 + 12));
  }
}

uint64_t sub_1001B15E0(char a1)
{
  v2 = *v1;
  *(v2 + 480) = a1;

  sub_10000BE18(v2 + 96, &qword_10083D0A0, &qword_1006DAFC0);

  return _swift_task_switch(sub_1001B16F8, 0, 0);
}

uint64_t sub_1001B16F8()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v9 = sub_100284B08(v2, *(v0 + 480));

  (*(v3 + 8))(v2, v4);
  sub_10000BE18(v1, &qword_10083D4A8, &qword_1006DB1A8);
  v6 = *(v5 + 64);
  swift_beginAccess();
  *(v5 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_biomeFedStatsFieldsToCollect) = *(v6 + 16);

  sub_10000BB78((v0 + 16));

  v7 = *(v0 + 8);

  return v7(v9);
}

uint64_t sub_1001B189C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_100007224(&qword_10083D4A8, &qword_1006DB1A8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001B19D0, 0, 0);
}

uint64_t sub_1001B19D0(uint64_t a1)
{
  v2 = IdentityProofingConfiguration.documentType.getter();
  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  *v3 = v1;
  v3[1] = sub_1001B1A78;
  v4 = *(v1 + 80);

  return sub_1001AA1E4(v4, v2);
}

uint64_t sub_1001B1A78()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1001B2044;
  }

  else
  {
    v2 = sub_1001B1B8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B1B8C()
{
  v1 = *(v0[10] + *(v0[9] + 48));
  if (v1 && *(v1 + 16))
  {
    v2 = sub_10003ADCC(0x6F54676E69646461, 0xEE0074656C6C6157);
    v3 = v0[8];
    if (v4)
    {
      v5 = v2;
      v6 = *(v1 + 56);
      v7 = type metadata accessor for IdentityProofingUnorderedUIElement();
      v8 = *(v7 - 8);
      (*(v8 + 16))(v3, v6 + *(v8 + 72) * v5, v7);
      (*(v8 + 56))(v3, 0, 1, v7);
    }

    else
    {
      v7 = type metadata accessor for IdentityProofingUnorderedUIElement();
      (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    }
  }

  else
  {
    v9 = v0[8];
    v7 = type metadata accessor for IdentityProofingUnorderedUIElement();
    (*(*(v7 - 8) + 56))(v9, 1, 1, v7);
  }

  v10 = v0[7];
  sub_10000BBC4(v0[8], v10, &qword_10083D4A8, &qword_1006DB1A8);
  type metadata accessor for IdentityProofingUnorderedUIElement();
  v11 = *(v7 - 8);
  v12 = (*(v11 + 48))(v10, 1, v7);
  v13 = v0[7];
  if (v12 == 1)
  {
    sub_10000BE18(v0[7], &qword_10083D4A8, &qword_1006DB1A8);
LABEL_15:
    v21 = v0[10];
    v22 = v0[8];
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.imageAssetsUnavailable(_:), v0[4]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v22, &qword_10083D4A8, &qword_1006DB1A8);
    sub_1001A1FAC(v21);

    v23 = v0[1];

    return v23();
  }

  v14 = IdentityProofingUnorderedUIElement.imageAssets.getter();
  (*(v11 + 8))(v13, v7);
  if (!v14)
  {
    goto LABEL_15;
  }

  if (!v14[2])
  {

    goto LABEL_15;
  }

  v15 = v0[10];
  v16 = v0[8];
  v17 = v14[4];
  v18 = v14[5];

  sub_10000BE18(v16, &qword_10083D4A8, &qword_1006DB1A8);
  sub_1001A1FAC(v15);

  v19 = v0[1];

  return v19(v17, v18);
}

uint64_t sub_1001B2044()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001B20D0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_100007224(&qword_10083D4A8, &qword_1006DB1A8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001B2204, 0, 0);
}

uint64_t sub_1001B2204(uint64_t a1)
{
  v2 = IdentityProofingConfiguration.documentType.getter();
  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  *v3 = v1;
  v3[1] = sub_1001B22AC;
  v4 = *(v1 + 80);

  return sub_1001AA1E4(v4, v2);
}

uint64_t sub_1001B22AC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1001B72D0;
  }

  else
  {
    v2 = sub_1001B23C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B23C0()
{
  v1 = *(v0[10] + *(v0[9] + 48));
  if (v1 && *(v1 + 16))
  {
    v2 = sub_10003ADCC(0xD000000000000016, 0x8000000100704B90);
    v3 = v0[8];
    if (v4)
    {
      v5 = v2;
      v6 = *(v1 + 56);
      v7 = type metadata accessor for IdentityProofingUnorderedUIElement();
      v8 = *(v7 - 8);
      (*(v8 + 16))(v3, v6 + *(v8 + 72) * v5, v7);
      (*(v8 + 56))(v3, 0, 1, v7);
    }

    else
    {
      v7 = type metadata accessor for IdentityProofingUnorderedUIElement();
      (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    }
  }

  else
  {
    v9 = v0[8];
    v7 = type metadata accessor for IdentityProofingUnorderedUIElement();
    (*(*(v7 - 8) + 56))(v9, 1, 1, v7);
  }

  v10 = v0[7];
  sub_10000BBC4(v0[8], v10, &qword_10083D4A8, &qword_1006DB1A8);
  type metadata accessor for IdentityProofingUnorderedUIElement();
  v11 = *(v7 - 8);
  v12 = (*(v11 + 48))(v10, 1, v7);
  v13 = v0[7];
  if (v12 == 1)
  {
    sub_10000BE18(v0[7], &qword_10083D4A8, &qword_1006DB1A8);
LABEL_15:
    v21 = v0[10];
    v22 = v0[8];
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.imageAssetsUnavailable(_:), v0[4]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v22, &qword_10083D4A8, &qword_1006DB1A8);
    sub_1001A1FAC(v21);

    v23 = v0[1];

    return v23();
  }

  v14 = IdentityProofingUnorderedUIElement.imageAssets.getter();
  (*(v11 + 8))(v13, v7);
  if (!v14)
  {
    goto LABEL_15;
  }

  if (!v14[2])
  {

    goto LABEL_15;
  }

  v15 = v0[10];
  v16 = v0[8];
  v17 = v14[4];
  v18 = v14[5];

  sub_10000BE18(v16, &qword_10083D4A8, &qword_1006DB1A8);
  sub_1001A1FAC(v15);

  v19 = v0[1];

  return v19(v17, v18);
}

uint64_t sub_1001B286C(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v38 = a1;
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v40 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  defaultLogger()();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v18 = os_log_type_enabled(v16, v17);
  v39 = a2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37 = v10;
    v21 = v4;
    v22 = v9;
    v23 = v20;
    v41 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_100141FE4(a2, a3, &v41);
    _os_log_impl(&_mh_execute_header, v16, v17, "will attempt to download the terms and conditions for %s", v19, 0xCu);
    sub_10000BB78(v23);
    v9 = v22;
    v4 = v21;
    v10 = v37;
  }

  v24 = *(v11 + 8);
  v24(v15, v10);
  v25 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask;
  if (*(v4 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask))
  {
    v26 = v40;
    defaultLogger()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Already downloading T&Cs", v29, 2u);
    }

    return (v24)(v26, v10);
  }

  else
  {
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v34 = v38;
    v33 = v39;
    v32[4] = v4;
    v32[5] = v34;
    v32[6] = v33;
    v32[7] = a3;

    v35 = v34;
    *(v4 + v25) = sub_1003E653C(0, 0, v9, &unk_1006DB1A0, v32);
  }
}

uint64_t sub_1001B2C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[70] = a7;
  v7[69] = a6;
  v7[68] = a5;
  v7[67] = a4;
  v8 = type metadata accessor for Logger();
  v7[71] = v8;
  v7[72] = *(v8 - 8);
  v7[73] = swift_task_alloc();
  v7[74] = swift_task_alloc();
  type metadata accessor for IdentityProofingStaticWorkflow(0);
  v7[75] = swift_task_alloc();

  return _swift_task_switch(sub_1001B2D0C, 0, 0);
}

uint64_t sub_1001B2D0C(uint64_t a1)
{
  v2 = IdentityProofingConfiguration.documentType.getter();
  v3 = swift_task_alloc();
  *(v1 + 608) = v3;
  *v3 = v1;
  v3[1] = sub_1001B2DB4;
  v4 = *(v1 + 600);

  return sub_1001AA1E4(v4, v2);
}

uint64_t sub_1001B2DB4()
{
  *(*v1 + 616) = v0;

  if (v0)
  {
    v2 = sub_1001B3970;
  }

  else
  {
    v2 = sub_1001B2EC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B2EC8()
{
  v1 = v0[75];
  v0[78] = *(v0[67] + 56);
  v2 = *(v1 + 64);

  v3 = IdentityProofingConfiguration.documentType.getter();
  v4 = swift_task_alloc();
  v0[79] = v4;
  *v4 = v0;
  v4[1] = sub_1001B2FA0;

  return sub_1002A8D74((v0 + 2), v2, v3);
}

uint64_t sub_1001B2FA0()
{
  *(*v1 + 640) = v0;

  if (v0)
  {
    v2 = sub_1001B3248;
  }

  else
  {
    v2 = sub_1001B30D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B30D0()
{
  v1 = v0[60];
  if (v1 && *(v1 + 16) && (v2 = sub_10003ADCC(v0[69], v0[70]), (v3 & 1) != 0))
  {
    v4 = (*(v1 + 56) + 16 * v2);
    v6 = *v4;
    v5 = v4[1];
    v0[81] = v5;

    sub_1000F2758((v0 + 2));
    v0[82] = sub_10060C218();
    v7 = swift_task_alloc();
    v0[83] = v7;
    *v7 = v0;
    v7[1] = sub_1001B3460;

    return sub_10060C2EC(v6, v5);
  }

  else
  {
    sub_1000F2758((v0 + 2));
    sub_1001A1FAC(v0[75]);
    *(v0[67] + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask) = 0;

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1001B3248()
{
  v17 = v0;
  sub_1001A1FAC(v0[75]);
  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v15 = v0[73];
    v3 = v0[72];
    v4 = v0[71];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100141FE4(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "unable to fetch identity proofing terms and conditions %s", v5, 0xCu);
    sub_10000BB78(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v10 = v0[73];
    v11 = v0[72];
    v12 = v0[71];

    (*(v11 + 8))(v10, v12);
  }

  *(v0[67] + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask) = 0;

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001B3460(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 672) = v2;

  if (v2)
  {
    v7 = sub_1001B3740;
  }

  else
  {

    *(v6 + 680) = a2;
    *(v6 + 688) = a1;
    v7 = sub_1001B35AC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001B35AC()
{
  v1 = v0[85];
  v2 = (v0[67] + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_termsAndConditions);
  *v2 = v0[86];
  v2[1] = v1;

  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "terms and conditions successfully downloaded.", v5, 2u);
  }

  v6 = v0[74];
  v7 = v0[72];
  v8 = v0[71];

  (*(v7 + 8))(v6, v8);
  v9._countAndFlagsBits = 0x3131613165643237;
  v10._object = 0x8000000100704AD0;
  v9._object = 0xE800000000000000;
  v10._countAndFlagsBits = 0xD000000000000022;
  logMilestone(tag:description:)(v9, v10);
  sub_1001A1FAC(v0[75]);
  *(v0[67] + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask) = 0;

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001B3740()
{
  v18 = v0;
  v1 = v0[75];

  sub_1001A1FAC(v1);
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v16 = v0[73];
    v4 = v0[72];
    v5 = v0[71];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100141FE4(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "unable to fetch identity proofing terms and conditions %s", v6, 0xCu);
    sub_10000BB78(v7);

    (*(v4 + 8))(v16, v5);
  }

  else
  {
    v11 = v0[73];
    v12 = v0[72];
    v13 = v0[71];

    (*(v12 + 8))(v11, v13);
  }

  *(v0[67] + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask) = 0;

  v14 = v0[1];

  return v14();
}

uint64_t sub_1001B3970(uint64_t a1)
{
  v18 = v1;
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v16 = v1[73];
    v4 = v1[72];
    v5 = v1[71];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100141FE4(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "unable to fetch identity proofing terms and conditions %s", v6, 0xCu);
    sub_10000BB78(v7);

    (*(v4 + 8))(v16, v5);
  }

  else
  {
    v11 = v1[73];
    v12 = v1[72];
    v13 = v1[71];

    (*(v12 + 8))(v11, v13);
  }

  *(v1[67] + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask) = 0;

  v14 = v1[1];

  return v14();
}

uint64_t sub_1001B3B80()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1001B3CA8, 0, 0);
}

uint64_t sub_1001B3CA8(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetching the terms and conditions", v4, 2u);
  }

  v5 = v1[9];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[2];

  v9 = *(v7 + 8);
  v1[10] = v9;
  v9(v5, v6);
  v10 = *(v8 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask);
  v1[11] = v10;
  if (v10)
  {

    v11 = swift_task_alloc();
    v1[12] = v11;
    *v11 = v1;
    v11[1] = sub_1001B40A4;

    return Task<>.value.getter(v11, v10, &type metadata for () + 8);
  }

  else
  {
    v12 = (v1[2] + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_termsAndConditions);
    v13 = v12[1];
    if (v13)
    {
      v14 = *v12;
      *v12 = 0;
      v12[1] = 0;
      defaultLogger()();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "terms and conditions available to be shown to the user", v17, 2u);
      }

      v18 = v1[10];
      v19 = v1[8];
      v20 = v1[6];

      v18(v19, v20);

      v21 = v1[1];

      return v21(v14, v13);
    }

    else
    {
      (*(v1[4] + 104))(v1[5], enum case for DIPError.Code.termsAndConditionsUnavailable(_:), v1[3]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v22 = v1[1];

      return v22();
    }
  }
}

uint64_t sub_1001B40A4()
{

  return _swift_task_switch(sub_1001B41BC, 0, 0);
}

uint64_t sub_1001B41BC(uint64_t a1)
{
  v2 = (v1[2] + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_termsAndConditions);
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    *v2 = 0;
    v2[1] = 0;
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "terms and conditions available to be shown to the user", v7, 2u);
    }

    v8 = v1[10];
    v9 = v1[8];
    v10 = v1[6];

    v8(v9, v10);

    v11 = v1[1];

    return v11(v4, v3);
  }

  else
  {
    (*(v1[4] + 104))(v1[5], enum case for DIPError.Code.termsAndConditionsUnavailable(_:), v1[3]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v13 = v1[1];

    return v13();
  }
}

unint64_t sub_1001B4470()
{
  v1 = type metadata accessor for DIPError.PropertyKey();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10003C9C0(_swiftEmptyArrayStorage);
  swift_beginAccess();
  sub_10000BBC4(v0 + 144, &v27, &qword_10083D0A0, &qword_1006DAFC0);
  if (v28)
  {
    sub_10001F358(&v27, v30);
    v6 = *(v2 + 104);
    v6(v4, enum case for DIPError.PropertyKey.inoWorkflowID(_:), v1);
    v7 = sub_10000BA08(v30, v31);
    v8 = *v7;
    v9 = v7[1];
    v28 = &type metadata for String;
    v29 = &protocol witness table for String;
    *&v27 = v8;
    *(&v27 + 1) = v9;
    sub_10001F358(&v27, v25);

    LOBYTE(v9) = swift_isUniquelyReferenced_nonNull_native();
    v24 = v5;
    v10 = sub_10001F370(v25, v26);
    __chkstk_darwin(v10);
    v12 = (&v25[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    sub_100658FF4(*v12, v12[1], v4, v9, &v24);
    v14 = *(v2 + 8);
    v14(v4, v1);
    sub_10000BB78(v25);
    v15 = v24;
    v6(v4, enum case for DIPError.PropertyKey.inoProviderID(_:), v1);
    v16 = sub_10000BA08(v30, v31);
    v17 = v16[6];
    v18 = v16[7];
    v28 = &type metadata for String;
    v29 = &protocol witness table for String;
    *&v27 = v17;
    *(&v27 + 1) = v18;
    sub_10001F358(&v27, v25);

    LOBYTE(v18) = swift_isUniquelyReferenced_nonNull_native();
    v24 = v15;
    v19 = sub_10001F370(v25, v26);
    __chkstk_darwin(v19);
    v21 = (&v25[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    sub_100658FF4(*v21, v21[1], v4, v18, &v24);
    v14(v4, v1);
    sub_10000BB78(v25);
    v5 = v24;
    sub_10000BB78(v30);
  }

  else
  {
    sub_10000BE18(&v27, &qword_10083D0A0, &qword_1006DAFC0);
  }

  return v5;
}

id *sub_1001B4838()
{

  sub_10000BE18((v0 + 18), &qword_10083D0A0, &qword_1006DAFC0);
  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_staticWorkflow, &qword_10083D4B0, &qword_1006DC940);

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_identityKeyPair, &qword_10083D4B8, &qword_1006DB470);

  return v0;
}

uint64_t sub_1001B4954()
{
  sub_1001B4838();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IdentityProofingFetchedAssetManager(uint64_t a1)
{
  result = qword_10083D0F0;
  if (!qword_10083D0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B4A00(uint64_t a1)
{
  sub_1001B4B18(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001B4B18(uint64_t a1)
{
  if (!qword_10083D100)
  {
    type metadata accessor for IdentityProofingStaticWorkflow(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10083D100);
    }
  }
}

uint64_t sub_1001B4B70(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  v4 = type metadata accessor for Logger();
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();

  return _swift_task_switch(sub_1001B4C70, 0, 0);
}

uint64_t sub_1001B4C70(uint64_t a1)
{
  v83 = v1;
  v2 = *(v1 + 248);
  defaultLogger()();
  sub_10000BBC4(v2, v1 + 16, &qword_10083D0A0, &qword_1006DAFC0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v1 + 320);
  v7 = *(v1 + 264);
  v8 = *(v1 + 272);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v82 = v10;
    *v9 = 136315394;
    v11 = IdentityProofingConsentType.debugDescription.getter();
    v13 = sub_100141FE4(v11, v12, &v82);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1024;
    v14 = *(v1 + 40) == 0;
    sub_10000BE18(v1 + 16, &qword_10083D0A0, &qword_1006DAFC0);
    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Checking if %s is enabled from dynamicWorkflow. Is dynamic workflow nil: %{BOOL}d", v9, 0x12u);
    sub_10000BB78(v10);
  }

  else
  {
    sub_10000BE18(v1 + 16, &qword_10083D0A0, &qword_1006DAFC0);
  }

  v15 = *(v8 + 8);
  v15(v6, v7);
  v16 = [objc_opt_self() standardUserDefaults];
  v17._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableFedStatsFromDynamicWorkflow.getter();
  v18 = NSUserDefaults.internalBool(forKey:)(v17);

  if (v18)
  {
    v19 = IdentityProofingConsentType.rawValue.getter();
    if (v19 == IdentityProofingConsentType.rawValue.getter())
    {
      defaultLogger()();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      v22 = os_log_type_enabled(v20, v21);
      v23 = *(v1 + 312);
      v24 = *(v1 + 264);
      if (v22)
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "disableFedStatsFromDynamicWorkflow is enabled in the internal settings. Disabling fedstats UI", v25, 2u);
      }

      goto LABEL_25;
    }
  }

  v26 = *(v1 + 256);
  swift_beginAccess();
  sub_10000BBC4(v26 + 144, v1 + 96, &qword_10083D0A0, &qword_1006DAFC0);
  if (!*(v1 + 120))
  {
    sub_10000BE18(v1 + 96, &qword_10083D0A0, &qword_1006DAFC0);
    defaultLogger()();
    v20 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    v50 = os_log_type_enabled(v20, v49);
    v23 = *(v1 + 280);
    v24 = *(v1 + 264);
    if (!v50)
    {
LABEL_25:

      v15(v23, v24);
      goto LABEL_26;
    }

    v51 = swift_slowAlloc();
    v81 = v15;
    v82 = swift_slowAlloc();
    v52 = v82;
    *v51 = 136315138;
    v53 = IdentityProofingConsentType.debugDescription.getter();
    v55 = sub_100141FE4(v53, v54, &v82);

    *(v51 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v20, v49, "The dynamic workflow does not exist. Cannot check if the consentType: %s is enabled or not.", v51, 0xCu);
    sub_10000BB78(v52);

    v81(v23, v24);
LABEL_26:
    v67 = 0;
    goto LABEL_36;
  }

  sub_10001F358((v1 + 96), v1 + 56);
  defaultLogger()();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v1 + 304);
  v31 = *(v1 + 264);
  if (v29)
  {
    v32 = swift_slowAlloc();
    v80 = v15;
    v82 = swift_slowAlloc();
    v33 = v82;
    *v32 = 136315138;
    v34 = IdentityProofingConsentType.debugDescription.getter();
    v36 = sub_100141FE4(v34, v35, &v82);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v27, v28, "The dynamic workflow exists, will check if the consentType: %s exists", v32, 0xCu);
    sub_10000BB78(v33);
    v15 = v80;
  }

  v15(v30, v31);
  v37 = *(v1 + 240);
  if (v37 == 1)
  {
    defaultLogger()();
    sub_100020260(v1 + 56, v1 + 136);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = v15;
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v82 = v60;
      *v59 = 136315394;
      v61 = IdentityProofingConsentType.debugDescription.getter();
      v63 = sub_100141FE4(v61, v62, &v82);

      *(v59 + 4) = v63;
      *(v59 + 12) = 1024;
      v64 = sub_10000BA08((v1 + 136), *(v1 + 160));
      v65 = *(v64 + *(type metadata accessor for Workflow(0) + 152));
      v66 = v65 != 2 && (v65 & 1) != 0;
      v76 = *(v1 + 288);
      v77 = *(v1 + 264);
      sub_10000BB78((v1 + 136));
      *(v59 + 14) = v66;
      _os_log_impl(&_mh_execute_header, v56, v57, "The consentType is %s, and the value is %{BOOL}d", v59, 0x12u);
      sub_10000BB78(v60);

      v58(v76, v77);
    }

    else
    {
      v70 = *(v1 + 288);
      v71 = *(v1 + 264);
      sub_10000BB78((v1 + 136));

      v15(v70, v71);
    }

    v74 = sub_10000BA08((v1 + 56), *(v1 + 80));
    v75 = *(type metadata accessor for Workflow(0) + 152);
    goto LABEL_35;
  }

  if (v37)
  {
    sub_10000BB78((v1 + 56));
    goto LABEL_26;
  }

  defaultLogger()();
  sub_100020260(v1 + 56, v1 + 176);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = v15;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v82 = v42;
    *v41 = 136315394;
    v43 = IdentityProofingConsentType.debugDescription.getter();
    v45 = sub_100141FE4(v43, v44, &v82);

    *(v41 + 4) = v45;
    *(v41 + 12) = 1024;
    v46 = sub_10000BA08((v1 + 176), *(v1 + 200));
    v47 = *(v46 + *(type metadata accessor for Workflow(0) + 148));
    v48 = v47 != 2 && (v47 & 1) != 0;
    v72 = *(v1 + 296);
    v73 = *(v1 + 264);
    sub_10000BB78((v1 + 176));
    *(v41 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v38, v39, "The consentType is %s, and the value is %{BOOL}d", v41, 0x12u);
    sub_10000BB78(v42);

    v40(v72, v73);
  }

  else
  {
    v68 = *(v1 + 296);
    v69 = *(v1 + 264);
    sub_10000BB78((v1 + 176));

    v15(v68, v69);
  }

  v74 = sub_10000BA08((v1 + 56), *(v1 + 80));
  v75 = *(type metadata accessor for Workflow(0) + 148);
LABEL_35:
  v67 = *(v74 + v75);
  sub_10000BB78((v1 + 56));
LABEL_36:

  v78 = *(v1 + 8);

  return v78(v67 & 1);
}

uint64_t sub_1001B5540(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for Logger();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v4 = type metadata accessor for IdentityProofingUnorderedUIElement();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1001B56A4, 0, 0);
}

uint64_t sub_1001B56A4()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.injectLivenessOptinConsentSheetContent.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = *(v0 + 240);
    v5 = *(v0 + 216);
    v66 = *(v0 + 208);
    sub_10003D21C(&off_1007FB2F0);
    sub_100007224(&qword_100838820, &unk_1006DB6B0);
    swift_arrayDestroy();
    v6 = type metadata accessor for IdentityProofingUnorderedUIElementOption();
    v7 = objc_allocWithZone(v6);

    v8 = IdentityProofingUnorderedUIElementOption.init(title:subtitle:bullets:assessments:accessibility:caption:)();
    v9 = objc_allocWithZone(v6);
    v10 = IdentityProofingUnorderedUIElementOption.init(title:subtitle:bullets:assessments:accessibility:caption:)();
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1006DAEA0;
    *(v11 + 32) = v8;
    *(v11 + 40) = v10;
    v12 = v8;
    v13 = v10;
    IdentityProofingUnorderedUIElement.init(title:messages:actions:imageAssets:options:learnMoreURL:privacyLinkIdentifier:privacyLinkTitle:)();
    v14 = sub_1002BF01C(v4);

    (*(v5 + 8))(v4, v66);
    goto LABEL_20;
  }

  sub_10000BBC4(*(v0 + 136), v0 + 16, &qword_10083D0A0, &qword_1006DAFC0);
  v15 = *(v0 + 40);
  if (!v15)
  {
    sub_10000BE18(v0 + 16, &qword_10083D0A0, &qword_1006DAFC0);
LABEL_16:
    defaultLogger()();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 200);
    v50 = *(v0 + 152);
    v51 = *(v0 + 160);
    if (v48)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "isLivenessConsentOptinEnabled is not enabled from the dynamic workflow. Will not build the consent UI config", v52, 2u);
    }

    (*(v51 + 8))(v49, v50);
    goto LABEL_19;
  }

  v16 = sub_10000BA08((v0 + 16), v15);
  v17 = type metadata accessor for Workflow(0);
  v18 = *(v16 + *(v17 + 152));
  sub_10000BB78((v0 + 16));
  if (v18 == 2 || (v18 & 1) == 0)
  {
    goto LABEL_16;
  }

  defaultLogger()();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "prepareLivenessConsentOptinUIConfig: setting up the ui config for liveness consent screen", v21, 2u);
  }

  v22 = *(v0 + 192);
  v23 = *(v0 + 152);
  v24 = *(v0 + 160);
  v25 = *(v0 + 136);

  v26 = *(v24 + 8);
  v26(v22, v23);
  sub_10000BBC4(v25, v0 + 96, &qword_10083D0A0, &qword_1006DAFC0);
  if (!*(v0 + 120))
  {
    sub_10000BE18(v0 + 96, &qword_10083D0A0, &qword_1006DAFC0);
    defaultLogger()();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    v57 = os_log_type_enabled(v55, v56);
    v58 = *(v0 + 168);
    v59 = *(v0 + 152);
    if (v57)
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "The dynamic workflow is not available. Cannot build liveness consent UI", v60, 2u);
    }

    v26(v58, v59);
    goto LABEL_19;
  }

  sub_10001F358((v0 + 96), v0 + 56);
  v27 = *(sub_10000BA08((v0 + 56), *(v0 + 80)) + *(v17 + 120));
  if (!v27 || !*(v27 + 16))
  {
LABEL_27:
    defaultLogger()();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "livenessConsentOptinUnorderedUIElement doesn't exist in livenessConsentOptinUI. Cannot build the consent UI config", v63, 2u);
    }

    v64 = *(v0 + 176);
    v65 = *(v0 + 152);

    v26(v64, v65);
    sub_10000BB78((v0 + 56));
LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

  v28 = *(v0 + 144);
  v29 = *(v28 + 72);
  v30 = *(v28 + 80);

  v31 = sub_10003ADCC(v29, v30);
  v33 = v32;

  if ((v33 & 1) == 0)
  {

    goto LABEL_27;
  }

  v35 = *(v0 + 224);
  v34 = *(v0 + 232);
  v36 = *(v0 + 208);
  v37 = *(v0 + 216);
  (*(v37 + 16))(v35, *(v27 + 56) + *(v37 + 72) * v31, v36);

  (*(v37 + 32))(v34, v35, v36);
  defaultLogger()();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "The unorderedUI in the dynamic workflow has livenessConsentOptin. Will prepare the config using dynamic workflow.", v40, 2u);
  }

  v41 = *(v0 + 232);
  v42 = *(v0 + 208);
  v43 = *(v0 + 216);
  v44 = *(v0 + 184);
  v45 = *(v0 + 152);

  v26(v44, v45);
  v14 = sub_1002BF01C(v41);
  (*(v43 + 8))(v41, v42);
  sub_10000BB78((v0 + 56));
LABEL_20:

  v53 = *(v0 + 8);

  return v53(v14);
}

uint64_t sub_1001B5E10()
{
  v1[20] = v0;
  v2 = type metadata accessor for Logger();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_1001B5EE8, 0, 0);
}

uint64_t sub_1001B5EE8()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 128);
  *(v0 + 208) = v2;
  if (v2)
  {
    swift_retain_n();
    v3 = swift_task_alloc();
    *(v0 + 216) = v3;
    *v3 = v0;
    v3[1] = sub_1001B6238;
    v4.n128_u64[0] = 10.0;

    return withTaskTimeoutHandler<A>(timeout:operation:)(v4);
  }

  else
  {
    swift_beginAccess();
    sub_10000BBC4(v1 + 144, v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
    if (*(v0 + 80))
    {
      sub_10001F358((v0 + 56), v0 + 16);
      defaultLogger()();
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Fetch the unorderedUI for liveness consent from the dynamic workflow", v7, 2u);
      }

      v8 = *(v0 + 200);
      v9 = *(v0 + 168);
      v10 = *(v0 + 176);

      (*(v10 + 8))(v8, v9);
      sub_100020260(v0 + 16, v0 + 96);
      v11 = swift_task_alloc();
      *(v0 + 232) = v11;
      *v11 = v0;
      v11[1] = sub_1001B65F8;

      return sub_1001B5540(v0 + 96);
    }

    else
    {
      sub_10000BE18(v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
      defaultLogger()();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      v14 = os_log_type_enabled(v12, v13);
      v15 = *(v0 + 192);
      v16 = *(v0 + 168);
      v17 = *(v0 + 176);
      if (v14)
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Dynamic workflow is nil. Cannot build the consent UI", v18, 2u);
      }

      (*(v17 + 8))(v15, v16);

      v19 = *(v0 + 8);

      return v19(0);
    }
  }
}

uint64_t sub_1001B6238()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1001B679C;
  }

  else
  {

    v2 = sub_1001B6354;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B6354()
{

  v1 = *(v0 + 160);
  swift_beginAccess();
  sub_10000BBC4(v1 + 144, v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
  if (*(v0 + 80))
  {
    sub_10001F358((v0 + 56), v0 + 16);
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Fetch the unorderedUI for liveness consent from the dynamic workflow", v4, 2u);
    }

    v5 = *(v0 + 200);
    v6 = *(v0 + 168);
    v7 = *(v0 + 176);

    (*(v7 + 8))(v5, v6);
    sub_100020260(v0 + 16, v0 + 96);
    v8 = swift_task_alloc();
    *(v0 + 232) = v8;
    *v8 = v0;
    v8[1] = sub_1001B65F8;

    return sub_1001B5540(v0 + 96);
  }

  else
  {
    sub_10000BE18(v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 192);
    v14 = *(v0 + 168);
    v15 = *(v0 + 176);
    if (v12)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Dynamic workflow is nil. Cannot build the consent UI", v16, 2u);
    }

    (*(v15 + 8))(v13, v14);

    v17 = *(v0 + 8);

    return v17(0);
  }
}

uint64_t sub_1001B65F8(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 240) = a1;

  sub_10000BE18(v2 + 96, &qword_10083D0A0, &qword_1006DAFC0);

  return _swift_task_switch(sub_1001B6710, 0, 0);
}

uint64_t sub_1001B6710()
{
  sub_10000BB78(v0 + 2);
  v1 = v0[30];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1001B679C()
{

  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 168);
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "The dynamic workflow timed out", v7, 2u);
  }

  (*(v5 + 8))(v4, v6);
  v8 = *(v0 + 160);
  swift_beginAccess();
  sub_10000BBC4(v8 + 144, v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
  if (*(v0 + 80))
  {
    sub_10001F358((v0 + 56), v0 + 16);
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Fetch the unorderedUI for liveness consent from the dynamic workflow", v11, 2u);
    }

    v12 = *(v0 + 200);
    v13 = *(v0 + 168);
    v14 = *(v0 + 176);

    (*(v14 + 8))(v12, v13);
    sub_100020260(v0 + 16, v0 + 96);
    v15 = swift_task_alloc();
    *(v0 + 232) = v15;
    *v15 = v0;
    v15[1] = sub_1001B65F8;

    return sub_1001B5540(v0 + 96);
  }

  else
  {
    sub_10000BE18(v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 192);
    v21 = *(v0 + 168);
    v22 = *(v0 + 176);
    if (v19)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Dynamic workflow is nil. Cannot build the consent UI", v23, 2u);
    }

    (*(v22 + 8))(v20, v21);

    v24 = *(v0 + 8);

    return v24(0);
  }
}

uint64_t sub_1001B6AF4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100041F04;

  return sub_1001AE8D0(a1, v1);
}

uint64_t sub_1001B6B90()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001B6BE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100027B9C;

  return sub_1001B2C08(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001B6CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083D4A8, &qword_1006DB1A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B6D24(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027B9C;

  return sub_1001AFDA4(a1, v1);
}

uint64_t sub_1001B6DC0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001B6DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B6E48(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1001B6E58(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100041F04;

  return sub_1001AE8D0(a1, v1);
}

uint64_t sub_1001B6F50()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001B6F98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100041F04;

  return sub_1001A70B4(a1, v4, v5, v6, v7);
}

uint64_t sub_1001B7060()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001B70A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1001A9C18(a1, v4, v5, v6);
}

uint64_t sub_1001B71A8()
{

  if (*(v0 + 48))
  {
    sub_10000BB78((v0 + 24));
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001B71FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001B7214(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001B725C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083D0A0, &qword_1006DAFC0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_1001B72D4()
{
  sub_1001C5950(v1);
  xmmword_1008822A8 = v3;
  unk_1008822B8 = v4;
  qword_1008822C8 = v5;
  xmmword_100882268 = v1[0];
  unk_100882278 = v1[1];
  result = *&v2;
  xmmword_100882288 = v1[2];
  unk_100882298 = v2;
  return result;
}

uint64_t sub_1001B732C(uint64_t a1)
{
  v2 = type metadata accessor for ImageQualitySettings();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v43 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for MetricsFlags();
  v51 = *(v53 - 8);
  v4 = __chkstk_darwin(v53);
  v5 = __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  v54 = v31 - v6;
  v7 = sub_100007224(&qword_10083D4F8, &qword_1006DC0A0);
  __chkstk_darwin(v7 - 8);
  v33 = v31 - v8;
  v40 = type metadata accessor for IQACode();
  v31[3] = *(v40 - 8);
  __chkstk_darwin(v40);
  v32 = type metadata accessor for IQCType();
  v31[2] = *(v32 - 8);
  __chkstk_darwin(v32);
  v49 = type metadata accessor for IQComplexSignal();
  __chkstk_darwin(v49);
  v48 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for Logger();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v37 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DIPError.Code();
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v36 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IQImageType();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v31[1] = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v47 = v31 - v17;
  __chkstk_darwin(v16);
  v19 = v31 - v18;
  v46 = type metadata accessor for ImageQualityCriteria();
  v42 = *(v46 - 8);
  v20 = __chkstk_darwin(v46);
  v41 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v31 - v22;
  v24 = *(v13 + 16);
  v52 = a1;
  v24(v19, a1, v12);
  v50 = v13;
  v25 = *(v13 + 88);
  v55 = v12;
  v26 = v25(v19, v12);
  if (v26 == enum case for IQImageType.frontScan(_:))
  {
    sub_1001B96D0(v23);
  }

  if (v26 == enum case for IQImageType.backScan(_:))
  {
    sub_1001BA1A8(v23);
  }

  if (v26 == enum case for IQImageType.idFront(_:))
  {
    sub_1001BAB34(v23);
  }

  if (v26 == enum case for IQImageType.idBack(_:))
  {
    sub_1001BC998(v23);
  }

  if (v26 == enum case for IQImageType.selfie(_:))
  {
    sub_1001BE910(v23);
  }

  if (v26 == enum case for IQImageType.liveness(_:))
  {
    sub_1001C09D0(v23);
  }

  if (v26 == enum case for IQImageType.passive(_:))
  {
    sub_1001C2390(v23);
  }

  if (v26 == enum case for IQImageType.passport(_:))
  {
    sub_1001C3D50();
  }

  v56 = 0;
  v57 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v28._countAndFlagsBits = 0xD000000000000033;
  v28._object = 0x8000000100704EB0;
  String.append(_:)(v28);
  v29 = v55;
  _print_unlocked<A, B>(_:_:)();
  (*(v34 + 104))(v36, enum case for DIPError.Code.unexpectedDaemonState(_:), v35);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001C5908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  v30 = v37;
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v38 + 8))(v30, v39);

  (*(v50 + 8))(v19, v29);
  return 0;
}

void sub_1001B96D0(uint64_t a1@<X8>)
{
  v7[20] = a1;
  v8 = type metadata accessor for MetricsFlags();
  v1 = __chkstk_darwin(v8);
  v7[17] = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v7[16] = v7 - v4;
  v5 = __chkstk_darwin(v3);
  v7[15] = v7 - v6;
  __chkstk_darwin(v5);
  v7[18] = 0x100000000;
  v7[19] = 0x100000000;
  v7[13] = 0x100000000;
  v7[14] = 0x100000000;
  v7[11] = 0x100000000;
  v7[12] = 0x100000000;
  v7[9] = 0x100000000;
  v7[10] = 0x100000000;
  v7[7] = 0x100000000;
  v7[8] = 0x100000000;
  v7[5] = 0x100000000;
  v7[6] = 0x100000000;
  v7[4] = 0x100000000;
  v7[3] = 0x100000000;
  v7[2] = 0x100000000;
  v7[1] = 0x100000000;
  v7[0] = 0x100000000;
  v9 = 1;
  ImageQualityCriteria.init(minBlurriness:maxBlurriness:minLaplaceBlur:maxLaplaceBlur:minExposure:maxExposure:minCardDistortion:maxCardDistortion:minFaceToImageRatio:maxFaceToImageRatio:minHeadPitch:maxHeadPitch:minHeadRoll:maxHeadRoll:minHeadYaw:maxHeadYaw:minBlinkingConfidence:maxBlinkingConfidence:minGlassesConfidence:maxGlassesConfidence:minSunglassesConfidence:maxSunglassesConfidence:minFacemaskConfidence:maxFacemaskConfidence:minHeadgearConfidence:maxHeadgearConfidence:minLensSmudgeConfidence:maxLensSmudgeConfidence:minFaceConfidence:maxFaceConfidence:minFaceCaptureQuality:maxFaceCaptureQuality:minDocumentSize:maxDocumentSize:minDocumentRotation:maxDocumentRotation:minDocumentSkew:maxDocumentSkew:maxLeftDrift:maxRightDrift:maxUpDrift:maxDownDrift:minNumFaces:maxNumFaces:minLuxLevel:maxLuxLevel:pdf417Detected:isAAMVACompliant:disableStableRect:issuerNumber:glareEpsilon:glareMinPoints:glareMinIntensity:glareClusterSize:glareDownscaleFactor:ocrKeywords:ocrMatch:complexSignals:dobRepeatCount:doeRepeatCount:d();
}

void sub_1001BA1A8(uint64_t a1@<X8>)
{
  v6[20] = a1;
  v1 = type metadata accessor for MetricsFlags();
  v6[21] = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v6[18] = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6[17] = v6 - v5;
  __chkstk_darwin(v4);
  v6[19] = 0x100000000;
  v6[15] = 0x100000000;
  v6[16] = 0x100000000;
  v6[13] = 0x100000000;
  v6[14] = 0x100000000;
  v6[11] = 0x100000000;
  v6[12] = 0x100000000;
  v6[9] = 0x100000000;
  v6[10] = 0x100000000;
  v6[7] = 0x100000000;
  v6[8] = 0x100000000;
  v6[5] = 0x100000000;
  v6[6] = 0x100000000;
  v6[4] = 0x100000000;
  v6[3] = 0x100000000;
  v6[2] = 0x100000000;
  v6[1] = 0x100000000;
  v6[0] = 0x100000000;
  v7 = 1;
  ImageQualityCriteria.init(minBlurriness:maxBlurriness:minLaplaceBlur:maxLaplaceBlur:minExposure:maxExposure:minCardDistortion:maxCardDistortion:minFaceToImageRatio:maxFaceToImageRatio:minHeadPitch:maxHeadPitch:minHeadRoll:maxHeadRoll:minHeadYaw:maxHeadYaw:minBlinkingConfidence:maxBlinkingConfidence:minGlassesConfidence:maxGlassesConfidence:minSunglassesConfidence:maxSunglassesConfidence:minFacemaskConfidence:maxFacemaskConfidence:minHeadgearConfidence:maxHeadgearConfidence:minLensSmudgeConfidence:maxLensSmudgeConfidence:minFaceConfidence:maxFaceConfidence:minFaceCaptureQuality:maxFaceCaptureQuality:minDocumentSize:maxDocumentSize:minDocumentRotation:maxDocumentRotation:minDocumentSkew:maxDocumentSkew:maxLeftDrift:maxRightDrift:maxUpDrift:maxDownDrift:minNumFaces:maxNumFaces:minLuxLevel:maxLuxLevel:pdf417Detected:isAAMVACompliant:disableStableRect:issuerNumber:glareEpsilon:glareMinPoints:glareMinIntensity:glareClusterSize:glareDownscaleFactor:ocrKeywords:ocrMatch:complexSignals:dobRepeatCount:doeRepeatCount:d();
}

void sub_1001BAB34(uint64_t a1@<X8>)
{
  v35[35] = a1;
  v1 = type metadata accessor for MetricsFlags();
  v2 = *(v1 - 8);
  v35[33] = v1;
  v35[34] = v2;
  v3 = __chkstk_darwin(v1);
  v35[30] = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v35[29] = v35 - v6;
  v7 = __chkstk_darwin(v5);
  v35[28] = v35 - v8;
  v9 = __chkstk_darwin(v7);
  v35[27] = v35 - v10;
  v11 = __chkstk_darwin(v9);
  v35[26] = v35 - v12;
  v13 = __chkstk_darwin(v11);
  v35[25] = v35 - v14;
  v15 = __chkstk_darwin(v13);
  v35[24] = v35 - v16;
  v17 = __chkstk_darwin(v15);
  v35[23] = v35 - v18;
  v19 = __chkstk_darwin(v17);
  v35[22] = v35 - v20;
  v21 = __chkstk_darwin(v19);
  v35[21] = v35 - v22;
  v23 = __chkstk_darwin(v21);
  v35[20] = v35 - v24;
  v25 = __chkstk_darwin(v23);
  v35[19] = v35 - v26;
  v27 = __chkstk_darwin(v25);
  v35[18] = v35 - v28;
  v29 = __chkstk_darwin(v27);
  v35[17] = v35 - v30;
  v31 = __chkstk_darwin(v29);
  v35[16] = v35 - v32;
  v33 = __chkstk_darwin(v31);
  v35[15] = v35 - v34;
  __chkstk_darwin(v33);
  v35[32] = 0x100000000;
  v35[31] = 0x100000000;
  v35[14] = 0x100000000;
  v35[13] = 0x100000000;
  v35[12] = 0x100000000;
  v35[11] = 0x100000000;
  v35[10] = 0x100000000;
  v35[9] = 0x100000000;
  v35[8] = 0x100000000;
  v35[7] = 0x100000000;
  v35[6] = 0x100000000;
  v35[5] = 0x100000000;
  v35[4] = 0x100000000;
  v35[3] = 0x100000000;
  v35[2] = 0x100000000;
  v35[1] = 0x100000000;
  v36 = 1;
  ImageQualityCriteria.init(minBlurriness:maxBlurriness:minLaplaceBlur:maxLaplaceBlur:minExposure:maxExposure:minCardDistortion:maxCardDistortion:minFaceToImageRatio:maxFaceToImageRatio:minHeadPitch:maxHeadPitch:minHeadRoll:maxHeadRoll:minHeadYaw:maxHeadYaw:minBlinkingConfidence:maxBlinkingConfidence:minGlassesConfidence:maxGlassesConfidence:minSunglassesConfidence:maxSunglassesConfidence:minFacemaskConfidence:maxFacemaskConfidence:minHeadgearConfidence:maxHeadgearConfidence:minLensSmudgeConfidence:maxLensSmudgeConfidence:minFaceConfidence:maxFaceConfidence:minFaceCaptureQuality:maxFaceCaptureQuality:minDocumentSize:maxDocumentSize:minDocumentRotation:maxDocumentRotation:minDocumentSkew:maxDocumentSkew:maxLeftDrift:maxRightDrift:maxUpDrift:maxDownDrift:minNumFaces:maxNumFaces:minLuxLevel:maxLuxLevel:pdf417Detected:isAAMVACompliant:disableStableRect:issuerNumber:glareEpsilon:glareMinPoints:glareMinIntensity:glareClusterSize:glareDownscaleFactor:ocrKeywords:ocrMatch:complexSignals:dobRepeatCount:doeRepeatCount:d();
}

void sub_1001BC998(uint64_t a1@<X8>)
{
  v38 = a1;
  v34 = type metadata accessor for MetricsFlags();
  v37 = *(v34 - 8);
  v1 = __chkstk_darwin(v34);
  v33[30] = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v33[29] = v33 - v4;
  v5 = __chkstk_darwin(v3);
  v33[28] = v33 - v6;
  v7 = __chkstk_darwin(v5);
  v33[27] = v33 - v8;
  v9 = __chkstk_darwin(v7);
  v33[26] = v33 - v10;
  v11 = __chkstk_darwin(v9);
  v33[25] = v33 - v12;
  v13 = __chkstk_darwin(v11);
  v33[24] = v33 - v14;
  v15 = __chkstk_darwin(v13);
  v33[23] = v33 - v16;
  v17 = __chkstk_darwin(v15);
  v33[22] = v33 - v18;
  v19 = __chkstk_darwin(v17);
  v33[21] = v33 - v20;
  v21 = __chkstk_darwin(v19);
  v33[20] = v33 - v22;
  v23 = __chkstk_darwin(v21);
  v33[19] = v33 - v24;
  v25 = __chkstk_darwin(v23);
  v33[18] = v33 - v26;
  v27 = __chkstk_darwin(v25);
  v33[17] = v33 - v28;
  v29 = __chkstk_darwin(v27);
  v33[16] = v33 - v30;
  v31 = __chkstk_darwin(v29);
  v35 = v33 - v32;
  __chkstk_darwin(v31);
  v36 = 0x100000000;
  v33[15] = 0x100000000;
  v33[14] = 0x100000000;
  v33[13] = 0x100000000;
  v33[12] = 0x100000000;
  v33[11] = 0x100000000;
  v33[10] = 0x100000000;
  v33[9] = 0x100000000;
  v33[8] = 0x100000000;
  v33[7] = 0x100000000;
  v33[6] = 0x100000000;
  v33[5] = 0x100000000;
  v33[4] = 0x100000000;
  v33[3] = 0x100000000;
  v33[2] = 0x100000000;
  v33[1] = 0x100000000;
  v39 = 1;
  ImageQualityCriteria.init(minBlurriness:maxBlurriness:minLaplaceBlur:maxLaplaceBlur:minExposure:maxExposure:minCardDistortion:maxCardDistortion:minFaceToImageRatio:maxFaceToImageRatio:minHeadPitch:maxHeadPitch:minHeadRoll:maxHeadRoll:minHeadYaw:maxHeadYaw:minBlinkingConfidence:maxBlinkingConfidence:minGlassesConfidence:maxGlassesConfidence:minSunglassesConfidence:maxSunglassesConfidence:minFacemaskConfidence:maxFacemaskConfidence:minHeadgearConfidence:maxHeadgearConfidence:minLensSmudgeConfidence:maxLensSmudgeConfidence:minFaceConfidence:maxFaceConfidence:minFaceCaptureQuality:maxFaceCaptureQuality:minDocumentSize:maxDocumentSize:minDocumentRotation:maxDocumentRotation:minDocumentSkew:maxDocumentSkew:maxLeftDrift:maxRightDrift:maxUpDrift:maxDownDrift:minNumFaces:maxNumFaces:minLuxLevel:maxLuxLevel:pdf417Detected:isAAMVACompliant:disableStableRect:issuerNumber:glareEpsilon:glareMinPoints:glareMinIntensity:glareClusterSize:glareDownscaleFactor:ocrKeywords:ocrMatch:complexSignals:dobRepeatCount:doeRepeatCount:d();
}

void sub_1001BE910(uint64_t a1@<X8>)
{
  v38 = a1;
  v34 = type metadata accessor for MetricsFlags();
  v37 = *(v34 - 8);
  v1 = __chkstk_darwin(v34);
  v33[30] = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v33[29] = v33 - v4;
  v5 = __chkstk_darwin(v3);
  v33[28] = v33 - v6;
  v7 = __chkstk_darwin(v5);
  v33[27] = v33 - v8;
  v9 = __chkstk_darwin(v7);
  v33[26] = v33 - v10;
  v11 = __chkstk_darwin(v9);
  v33[25] = v33 - v12;
  v13 = __chkstk_darwin(v11);
  v33[24] = v33 - v14;
  v15 = __chkstk_darwin(v13);
  v33[23] = v33 - v16;
  v17 = __chkstk_darwin(v15);
  v33[22] = v33 - v18;
  v19 = __chkstk_darwin(v17);
  v33[21] = v33 - v20;
  v21 = __chkstk_darwin(v19);
  v33[20] = v33 - v22;
  v23 = __chkstk_darwin(v21);
  v33[19] = v33 - v24;
  v25 = __chkstk_darwin(v23);
  v33[18] = v33 - v26;
  v27 = __chkstk_darwin(v25);
  v33[17] = v33 - v28;
  v29 = __chkstk_darwin(v27);
  v33[16] = v33 - v30;
  v31 = __chkstk_darwin(v29);
  v33[15] = v33 - v32;
  __chkstk_darwin(v31);
  v36 = 0x100000000;
  v35 = 0x100000000;
  v33[14] = 0x100000000;
  v33[13] = 0x100000000;
  v33[12] = 0x100000000;
  v33[11] = 0x100000000;
  v33[10] = 0x100000000;
  v33[9] = 0x100000000;
  v33[8] = 0x100000000;
  v33[7] = 0x100000000;
  v33[6] = 0x100000000;
  v33[5] = 0x100000000;
  v33[4] = 0x100000000;
  v33[3] = 0x100000000;
  v33[2] = 0x100000000;
  v33[1] = 0x100000000;
  v39 = 1;
  ImageQualityCriteria.init(minBlurriness:maxBlurriness:minLaplaceBlur:maxLaplaceBlur:minExposure:maxExposure:minCardDistortion:maxCardDistortion:minFaceToImageRatio:maxFaceToImageRatio:minHeadPitch:maxHeadPitch:minHeadRoll:maxHeadRoll:minHeadYaw:maxHeadYaw:minBlinkingConfidence:maxBlinkingConfidence:minGlassesConfidence:maxGlassesConfidence:minSunglassesConfidence:maxSunglassesConfidence:minFacemaskConfidence:maxFacemaskConfidence:minHeadgearConfidence:maxHeadgearConfidence:minLensSmudgeConfidence:maxLensSmudgeConfidence:minFaceConfidence:maxFaceConfidence:minFaceCaptureQuality:maxFaceCaptureQuality:minDocumentSize:maxDocumentSize:minDocumentRotation:maxDocumentRotation:minDocumentSkew:maxDocumentSkew:maxLeftDrift:maxRightDrift:maxUpDrift:maxDownDrift:minNumFaces:maxNumFaces:minLuxLevel:maxLuxLevel:pdf417Detected:isAAMVACompliant:disableStableRect:issuerNumber:glareEpsilon:glareMinPoints:glareMinIntensity:glareClusterSize:glareDownscaleFactor:ocrKeywords:ocrMatch:complexSignals:dobRepeatCount:doeRepeatCount:d();
}

void sub_1001C09D0(uint64_t a1@<X8>)
{
  v31[30] = a1;
  v1 = type metadata accessor for MetricsFlags();
  v2 = *(v1 - 8);
  v31[32] = v1;
  v31[33] = v2;
  v3 = __chkstk_darwin(v1);
  v31[29] = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v31[28] = v31 - v6;
  v7 = __chkstk_darwin(v5);
  v31[27] = v31 - v8;
  v9 = __chkstk_darwin(v7);
  v31[26] = v31 - v10;
  v11 = __chkstk_darwin(v9);
  v31[25] = v31 - v12;
  v13 = __chkstk_darwin(v11);
  v31[24] = v31 - v14;
  v15 = __chkstk_darwin(v13);
  v31[23] = v31 - v16;
  v17 = __chkstk_darwin(v15);
  v31[22] = v31 - v18;
  v19 = __chkstk_darwin(v17);
  v31[21] = v31 - v20;
  v21 = __chkstk_darwin(v19);
  v31[20] = v31 - v22;
  v23 = __chkstk_darwin(v21);
  v31[19] = v31 - v24;
  v25 = __chkstk_darwin(v23);
  v31[18] = v31 - v26;
  v27 = __chkstk_darwin(v25);
  v31[17] = v31 - v28;
  v29 = __chkstk_darwin(v27);
  v31[16] = v31 - v30;
  __chkstk_darwin(v29);
  v31[31] = 0x100000000;
  v31[15] = 0x100000000;
  v31[14] = 0x100000000;
  v31[13] = 0x100000000;
  v31[12] = 0x100000000;
  v31[11] = 0x100000000;
  v31[10] = 0x100000000;
  v31[9] = 0x100000000;
  v31[8] = 0x100000000;
  v31[7] = 0x100000000;
  v31[6] = 0x100000000;
  v31[5] = 0x100000000;
  v31[4] = 0x100000000;
  v31[3] = 0x100000000;
  v31[2] = 0x100000000;
  v31[1] = 0x100000000;
  v32 = 1;
  ImageQualityCriteria.init(minBlurriness:maxBlurriness:minLaplaceBlur:maxLaplaceBlur:minExposure:maxExposure:minCardDistortion:maxCardDistortion:minFaceToImageRatio:maxFaceToImageRatio:minHeadPitch:maxHeadPitch:minHeadRoll:maxHeadRoll:minHeadYaw:maxHeadYaw:minBlinkingConfidence:maxBlinkingConfidence:minGlassesConfidence:maxGlassesConfidence:minSunglassesConfidence:maxSunglassesConfidence:minFacemaskConfidence:maxFacemaskConfidence:minHeadgearConfidence:maxHeadgearConfidence:minLensSmudgeConfidence:maxLensSmudgeConfidence:minFaceConfidence:maxFaceConfidence:minFaceCaptureQuality:maxFaceCaptureQuality:minDocumentSize:maxDocumentSize:minDocumentRotation:maxDocumentRotation:minDocumentSkew:maxDocumentSkew:maxLeftDrift:maxRightDrift:maxUpDrift:maxDownDrift:minNumFaces:maxNumFaces:minLuxLevel:maxLuxLevel:pdf417Detected:isAAMVACompliant:disableStableRect:issuerNumber:glareEpsilon:glareMinPoints:glareMinIntensity:glareClusterSize:glareDownscaleFactor:ocrKeywords:ocrMatch:complexSignals:dobRepeatCount:doeRepeatCount:d();
}

void sub_1001C2390(uint64_t a1@<X8>)
{
  v31[30] = a1;
  v1 = type metadata accessor for MetricsFlags();
  v2 = *(v1 - 8);
  v31[32] = v1;
  v31[33] = v2;
  v3 = __chkstk_darwin(v1);
  v31[29] = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v31[28] = v31 - v6;
  v7 = __chkstk_darwin(v5);
  v31[27] = v31 - v8;
  v9 = __chkstk_darwin(v7);
  v31[26] = v31 - v10;
  v11 = __chkstk_darwin(v9);
  v31[25] = v31 - v12;
  v13 = __chkstk_darwin(v11);
  v31[24] = v31 - v14;
  v15 = __chkstk_darwin(v13);
  v31[23] = v31 - v16;
  v17 = __chkstk_darwin(v15);
  v31[22] = v31 - v18;
  v19 = __chkstk_darwin(v17);
  v31[21] = v31 - v20;
  v21 = __chkstk_darwin(v19);
  v31[20] = v31 - v22;
  v23 = __chkstk_darwin(v21);
  v31[19] = v31 - v24;
  v25 = __chkstk_darwin(v23);
  v31[18] = v31 - v26;
  v27 = __chkstk_darwin(v25);
  v31[17] = v31 - v28;
  v29 = __chkstk_darwin(v27);
  v31[16] = v31 - v30;
  __chkstk_darwin(v29);
  v31[31] = 0x100000000;
  v31[15] = 0x100000000;
  v31[14] = 0x100000000;
  v31[13] = 0x100000000;
  v31[12] = 0x100000000;
  v31[11] = 0x100000000;
  v31[10] = 0x100000000;
  v31[9] = 0x100000000;
  v31[8] = 0x100000000;
  v31[7] = 0x100000000;
  v31[6] = 0x100000000;
  v31[5] = 0x100000000;
  v31[4] = 0x100000000;
  v31[3] = 0x100000000;
  v31[2] = 0x100000000;
  v31[1] = 0x100000000;
  v32 = 1;
  ImageQualityCriteria.init(minBlurriness:maxBlurriness:minLaplaceBlur:maxLaplaceBlur:minExposure:maxExposure:minCardDistortion:maxCardDistortion:minFaceToImageRatio:maxFaceToImageRatio:minHeadPitch:maxHeadPitch:minHeadRoll:maxHeadRoll:minHeadYaw:maxHeadYaw:minBlinkingConfidence:maxBlinkingConfidence:minGlassesConfidence:maxGlassesConfidence:minSunglassesConfidence:maxSunglassesConfidence:minFacemaskConfidence:maxFacemaskConfidence:minHeadgearConfidence:maxHeadgearConfidence:minLensSmudgeConfidence:maxLensSmudgeConfidence:minFaceConfidence:maxFaceConfidence:minFaceCaptureQuality:maxFaceCaptureQuality:minDocumentSize:maxDocumentSize:minDocumentRotation:maxDocumentRotation:minDocumentSkew:maxDocumentSkew:maxLeftDrift:maxRightDrift:maxUpDrift:maxDownDrift:minNumFaces:maxNumFaces:minLuxLevel:maxLuxLevel:pdf417Detected:isAAMVACompliant:disableStableRect:issuerNumber:glareEpsilon:glareMinPoints:glareMinIntensity:glareClusterSize:glareDownscaleFactor:ocrKeywords:ocrMatch:complexSignals:dobRepeatCount:doeRepeatCount:d();
}

uint64_t sub_1001C41D8@<X0>(uint64_t a1@<X8>)
{
  v143 = a1;
  v1 = type metadata accessor for IQACode();
  v141 = *(v1 - 8);
  v142 = v1;
  __chkstk_darwin(v1);
  v140 = (&v119 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for IQComparator();
  v136 = *(v3 - 8);
  v137 = v3;
  v4 = __chkstk_darwin(v3);
  v130 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v133 = &v119 - v7;
  v8 = __chkstk_darwin(v6);
  v131 = &v119 - v9;
  v10 = __chkstk_darwin(v8);
  v125 = &v119 - v11;
  __chkstk_darwin(v10);
  v128 = &v119 - v12;
  v138 = type metadata accessor for IQCType();
  v145 = *(v138 - 8);
  v13 = __chkstk_darwin(v138);
  v135 = (&v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v144 = &v119 - v16;
  v17 = __chkstk_darwin(v15);
  v129 = &v119 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = (&v119 - v20);
  __chkstk_darwin(v19);
  v23 = &v119 - v22;
  v134 = type metadata accessor for IQSignal();
  v132 = *(v134 - 8);
  v24 = __chkstk_darwin(v134);
  v122 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v120 = &v119 - v27;
  v28 = __chkstk_darwin(v26);
  v121 = &v119 - v29;
  v30 = __chkstk_darwin(v28);
  v127 = &v119 - v31;
  v32 = __chkstk_darwin(v30);
  v119 = &v119 - v33;
  __chkstk_darwin(v32);
  v126 = &v119 - v34;
  v35 = static DaemonInternalDefaultsKeys.complexSignalType1.getter();
  v37 = v36;
  v139 = static DaemonInternalDefaultsKeys.complexComparator1.getter();
  v39 = v38;
  v124 = static DaemonInternalDefaultsKeys.complexThreshold1.getter();
  v41 = v40;
  v42 = objc_opt_self();
  v43 = [v42 standardUserDefaults];
  v44._countAndFlagsBits = v35;
  v44._object = v37;
  v45 = NSUserDefaults.internalString(forKey:)(v44);

  if (!v45.value._object)
  {
    v71 = v138;

    v139 = _swiftEmptyArrayStorage;
    v52 = v42;
    goto LABEL_11;
  }

  v123 = v41;
  sub_1002B1100(v45.value._countAndFlagsBits, v45.value._object, v21);

  v46 = v145;
  v47 = v138;
  (*(v145 + 32))(v23, v21, v138);
  v48 = [v42 standardUserDefaults];
  v49._countAndFlagsBits = v139;
  v49._object = v39;
  v50 = NSUserDefaults.internalString(forKey:)(v49);

  v51 = v46;
  v52 = v42;
  if (!v50.value._object)
  {

    v76 = *(v51 + 8);
    v77 = v23;
LABEL_10:
    v71 = v47;
    v76(v77, v47);
    v139 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  v53 = v23;
  v54 = v125;
  sub_1002B1CF0(v50.value._countAndFlagsBits, v50.value._object, v125);

  v55 = v136;
  v56 = v128;
  v57 = v54;
  v58 = v137;
  (*(v136 + 32))(v128, v57, v137);
  v59 = [v52 standardUserDefaults];
  v60._countAndFlagsBits = v124;
  v60._object = v123;
  NSUserDefaults.internalFloat(forKey:)(&v146, v60);
  v62 = v61;

  if ((v62 & 0x100000000) != 0)
  {
    (*(v55 + 8))(v56, v58);
    v76 = *(v51 + 8);
    v77 = v53;
    goto LABEL_10;
  }

  (*(v51 + 16))(v129, v53, v47);
  (*(v55 + 16))(v131, v56, v58);
  v63 = v119;
  IQSignal.init(type:comparator:threshold:)();
  (*(v55 + 8))(v56, v58);
  (*(v51 + 8))(v53, v47);
  v64 = v132;
  v65 = *(v132 + 32);
  v66 = v126;
  v67 = v134;
  v65(v126, v63, v134);
  (*(v64 + 16))(v127, v66, v67);
  v68 = sub_1003C5A3C(0, 1, 1, _swiftEmptyArrayStorage);
  v70 = *(v68 + 2);
  v69 = *(v68 + 3);
  v71 = v47;
  if (v70 >= v69 >> 1)
  {
    v72 = sub_1003C5A3C((v69 > 1), v70 + 1, 1, v68);
  }

  else
  {
    v72 = v68;
  }

  v74 = *(v64 + 8);
  v73 = v64 + 8;
  v74(v126, v67);
  *(v72 + 2) = v70 + 1;
  v75 = (*(v73 + 72) + 32) & ~*(v73 + 72);
  v139 = v72;
  v65(&v72[v75 + *(v73 + 64) * v70], v127, v67);
LABEL_11:
  v78 = static DaemonInternalDefaultsKeys.complexSignalType2.getter();
  v80 = v79;
  v81 = static DaemonInternalDefaultsKeys.complexComparator2.getter();
  v83 = v82;
  v138 = static DaemonInternalDefaultsKeys.complexThreshold2.getter();
  v85 = v84;
  v86 = v52;
  v87 = [v52 standardUserDefaults];
  v88._countAndFlagsBits = v78;
  v88._object = v80;
  v89 = NSUserDefaults.internalString(forKey:)(v88);

  if (v89.value._object)
  {
    v128 = v85;
    v90 = v135;
    sub_1002B1100(v89.value._countAndFlagsBits, v89.value._object, v135);

    v91 = v144;
    v92 = v145;
    v93 = v90;
    v94 = v71;
    (*(v145 + 32))(v144, v93, v71);
    v95 = [v86 standardUserDefaults];
    v96._countAndFlagsBits = v81;
    v96._object = v83;
    v97 = NSUserDefaults.internalString(forKey:)(v96);

    if (v97.value._object)
    {
      v98 = v130;
      sub_1002B1CF0(v97.value._countAndFlagsBits, v97.value._object, v130);

      v100 = v136;
      v99 = v137;
      v101 = v133;
      (*(v136 + 32))(v133, v98, v137);
      v102 = [v86 standardUserDefaults];
      v103._countAndFlagsBits = v138;
      v103._object = v128;
      NSUserDefaults.internalFloat(forKey:)(v104, v103);
      v106 = v105;

      if ((v106 & 0x100000000) != 0)
      {
        (*(v100 + 8))(v101, v99);
        (*(v92 + 8))(v144, v94);
      }

      else
      {
        v107 = v144;
        (*(v92 + 16))(v129, v144, v94);
        (*(v100 + 16))(v131, v101, v99);
        v108 = v120;
        IQSignal.init(type:comparator:threshold:)();
        (*(v100 + 8))(v101, v99);
        (*(v92 + 8))(v107, v94);
        v109 = v132;
        v110 = *(v132 + 32);
        v111 = v121;
        v112 = v134;
        v110(v121, v108, v134);
        v113 = v122;
        (*(v109 + 16))(v122, v111, v112);
        v114 = v139;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = sub_1003C5A3C(0, *(v114 + 2) + 1, 1, v114);
        }

        v116 = *(v114 + 2);
        v115 = *(v114 + 3);
        if (v116 >= v115 >> 1)
        {
          v114 = sub_1003C5A3C((v115 > 1), v116 + 1, 1, v114);
        }

        (*(v109 + 8))(v111, v112);
        *(v114 + 2) = v116 + 1;
        v110(&v114[((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v116], v113, v112);
      }
    }

    else
    {

      (*(v92 + 8))(v91, v71);
    }
  }

  else
  {
  }

  v117 = v140;
  *v140 = 0xD000000000000015;
  v117[1] = 0x8000000100704F40;
  (*(v141 + 104))(v117, enum case for IQACode.complex(_:), v142);
  return IQComplexSignal.init(identifier:priority:signals:)();
}

uint64_t sub_1001C4D78()
{
  v2 = type metadata accessor for Logger();
  v65[5] = *(v2 - 8);
  v65[6] = v2;
  __chkstk_darwin(v2);
  v65[4] = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPError.Code();
  v65[1] = *(v4 - 8);
  v65[2] = v4;
  __chkstk_darwin(v4);
  v65[3] = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IQACode();
  v7 = *(v6 - 1);
  v8 = __chkstk_darwin(v6);
  v65[0] = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v66 = v65 - v11;
  v12 = __chkstk_darwin(v10);
  v74 = v65 - v13;
  __chkstk_darwin(v12);
  v69 = v65 - v14;
  v15 = sub_100007224(&qword_10083D4D0, &qword_1006DB280);
  v16 = __chkstk_darwin(v15 - 8);
  v76 = (v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v75 = (v65 - v18);
  v19 = *(v0 + 96);
  v20 = *(v19 + 64);
  v68 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v70 = (v7 + 16);
  v71 = v19;
  v77 = (v7 + 32);
  v72 = v7;
  v73 = (v7 + 8);

  v25 = 0;
  v67 = _swiftEmptyArrayStorage;
LABEL_4:
  v26 = v25;
  if (v23)
  {
    while (1)
    {
      v27 = v6;
      v28 = v26;
LABEL_14:
      v31 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v32 = v31 | (v28 << 6);
      v33 = v72;
      v34 = (*(v71 + 48) + 16 * v32);
      v36 = *v34;
      v35 = v34[1];
      v37 = v69;
      (*(v72 + 16))(v69, *(v71 + 56) + *(v72 + 72) * v32, v27);
      v38 = sub_100007224(&qword_10083D4D8, &qword_1006DB288);
      v39 = *(v38 + 48);
      v40 = v76;
      *v76 = v36;
      v40[1] = v35;
      v30 = v40;
      v41 = *(v33 + 32);
      v6 = v27;
      v41(v30 + v39, v37, v27);
      (*(*(v38 - 8) + 56))(v30, 0, 1, v38);

      v25 = v28;
LABEL_15:
      v42 = v75;
      sub_1001C56EC(v30, v75);
      v43 = sub_100007224(&qword_10083D4D8, &qword_1006DB288);
      if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
      {
        break;
      }

      v45 = *v42;
      v44 = v42[1];
      v46 = *v77;
      v47 = v42 + *(v43 + 48);
      v1 = v74;
      (*v77)(v74, v47, v6);
      v48 = [objc_opt_self() standardUserDefaults];
      v49._countAndFlagsBits = v45;
      v49._object = v44;
      LOBYTE(v45) = NSUserDefaults.internalBool(forKey:)(v49);

      if (v45)
      {
        (*v70)(v66, v1, v6);
        v51 = v67;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1003C5A64(0, v51[2] + 1, 1, v51);
        }

        v53 = v51[2];
        v52 = v51[3];
        v54 = v74;
        if (v53 >= v52 >> 1)
        {
          v67 = sub_1003C5A64((v52 > 1), v53 + 1, 1, v51);
          v54 = v74;
        }

        else
        {
          v67 = v51;
        }

        v55 = v72;
        (*(v72 + 8))(v54, v6);
        v56 = v66;
        v57 = v67;
        v67[2] = v53 + 1;
        v46(&v57[((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v53], v56, v6);
        goto LABEL_4;
      }

      (*v73)(v1, v6);
      v26 = v25;
      if (!v23)
      {
        goto LABEL_6;
      }
    }

    v58 = [objc_opt_self() standardUserDefaults];
    v59._countAndFlagsBits = static DaemonInternalDefaultsKeys.livenessBlockComplexIdentifier.getter();
    v60 = NSUserDefaults.internalString(forKey:)(v59);

    if (!v60.value._object)
    {
      v6 = v67;
      goto LABEL_32;
    }

    v1 = v65[0];
    *v65[0] = v60;
    v28 = v6;
    (*(v72 + 104))(v1, enum case for IQACode.complex(_:), v6);
    v6 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
LABEL_6:
    if (v24 <= v26 + 1)
    {
      v29 = v26 + 1;
    }

    else
    {
      v29 = v24;
    }

    v25 = v29 - 1;
    v30 = v76;
    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v28 >= v24)
      {
        v50 = sub_100007224(&qword_10083D4D8, &qword_1006DB288);
        (*(*(v50 - 8) + 56))(v30, 1, 1, v50);
        v23 = 0;
        goto LABEL_15;
      }

      v23 = *(v68 + 8 * v28);
      ++v26;
      if (v23)
      {
        v27 = v6;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_34:
    v6 = sub_1003C5A64(0, v6[2] + 1, 1, v6);
  }

  v62 = v6[2];
  v61 = v6[3];
  if (v62 >= v61 >> 1)
  {
    v6 = sub_1003C5A64((v61 > 1), v62 + 1, 1, v6);
  }

  v6[2] = v62 + 1;
  (*(v72 + 32))(v6 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v62, v1, v28);
LABEL_32:
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v78 = v6;
  sub_100007224(&qword_10083D4E0, &qword_1006DC790);
  sub_1001C575C();
  v63 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v63;
}

uint64_t sub_1001C56EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083D4D0, &qword_1006DB280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001C575C()
{
  result = qword_10083D4E8;
  if (!qword_10083D4E8)
  {
    sub_10000B870(&qword_10083D4E0, &qword_1006DC790);
    sub_1001C5908(&qword_10083D4F0, &type metadata accessor for IQACode, &protocol conformance descriptor for IQACode);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083D4E8);
  }

  return result;
}

BOOL sub_1001C5810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtof_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_1001C5908(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1001C5950@<D0>(uint64_t a1@<X8>)
{
  sub_100007224(&qword_10083D518, &qword_1006DB290);
  v1 = type metadata accessor for IQCType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_1006DB230;
  v5 = v91 + v4;
  v6 = *(v2 + 104);
  v6(v5, enum case for IQCType.pdf417Detected(_:), v1);
  v6(v5 + v3, enum case for IQCType.isAAMVACompliant(_:), v1);
  v6(v5 + 2 * v3, enum case for IQCType.issuerNumber(_:), v1);
  v6(v5 + 3 * v3, enum case for IQCType.blurriness(_:), v1);
  v6(v5 + 4 * v3, enum case for IQCType.exposure(_:), v1);
  v6(v5 + 5 * v3, enum case for IQCType.documentSize(_:), v1);
  v6(v5 + 6 * v3, enum case for IQCType.documentRotation(_:), v1);
  v6(v5 + 7 * v3, enum case for IQCType.documentSkew(_:), v1);
  v6(v5 + 8 * v3, enum case for IQCType.numFaces(_:), v1);
  v6(v5 + 9 * v3, enum case for IQCType.luxLevel(_:), v1);
  v6(v5 + 10 * v3, enum case for IQCType.faceCenteredRatio(_:), v1);
  v6(v5 + 11 * v3, enum case for IQCType.faceToImageRatio(_:), v1);
  v6(v5 + 12 * v3, enum case for IQCType.leftDrift(_:), v1);
  v6(v5 + 13 * v3, enum case for IQCType.rightDrift(_:), v1);
  v6(v5 + 14 * v3, enum case for IQCType.upDrift(_:), v1);
  v6(v5 + 15 * v3, enum case for IQCType.downDrift(_:), v1);
  v6(v5 + 16 * v3, enum case for IQCType.facemaskConfidence(_:), v1);
  v6(v5 + 17 * v3, enum case for IQCType.headgearConfidence(_:), v1);
  v6(v5 + 18 * v3, enum case for IQCType.sunglassesConfidence(_:), v1);
  v6(v5 + 19 * v3, enum case for IQCType.glassesConfidence(_:), v1);
  v6(v5 + 20 * v3, enum case for IQCType.blinkingConfidence(_:), v1);
  v6(v5 + 21 * v3, enum case for IQCType.faceCaptureQuality(_:), v1);
  v6(v5 + 22 * v3, enum case for IQCType.headPitch(_:), v1);
  v6(v5 + 23 * v3, enum case for IQCType.headRoll(_:), v1);
  v6(v5 + 24 * v3, enum case for IQCType.headYaw(_:), v1);
  v6(v5 + 25 * v3, enum case for IQCType.cardDistortion(_:), v1);
  sub_100007224(&qword_10083D520, &qword_1006DB298);
  v7 = sub_100007224(&qword_100834950, &qword_1006C0140);
  v8 = *(*(v7 - 8) + 72);
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1006DB240;
  v11 = (v10 + v9);
  v12 = *(v7 + 48);
  *v11 = static DaemonInternalDefaultsKeys.livenessBlockBlurrinessHigh.getter();
  v11[1] = v13;
  v14 = enum case for IQACode.blurrinessHigh(_:);
  v15 = type metadata accessor for IQACode();
  v16 = *(*(v15 - 8) + 104);
  v16(v11 + v12, v14, v15);
  v17 = (v11 + v8);
  v18 = *(v7 + 48);
  *v17 = static DaemonInternalDefaultsKeys.livenessBlockExposureLow.getter();
  v17[1] = v19;
  v16(v11 + v8 + v18, enum case for IQACode.exposureLow(_:), v15);
  v20 = (v11 + 2 * v8);
  v21 = *(v7 + 48);
  *v20 = static DaemonInternalDefaultsKeys.livenessBlockExposureHigh.getter();
  v20[1] = v22;
  v16(v20 + v21, enum case for IQACode.exposureHigh(_:), v15);
  v23 = (v11 + 3 * v8);
  v24 = *(v7 + 48);
  *v23 = static DaemonInternalDefaultsKeys.livenessBlockFaceToImageRatioLow.getter();
  v23[1] = v25;
  v16(v23 + v24, enum case for IQACode.faceToImageRatioLow(_:), v15);
  v26 = (v11 + 4 * v8);
  v27 = *(v7 + 48);
  *v26 = static DaemonInternalDefaultsKeys.livenessBlockFaceToImageRatioHigh.getter();
  v26[1] = v28;
  v16(v26 + v27, enum case for IQACode.faceToImageRatioHigh(_:), v15);
  v29 = (v11 + 5 * v8);
  v30 = *(v7 + 48);
  *v29 = static DaemonInternalDefaultsKeys.livenessBlockHeadPitchLow.getter();
  v29[1] = v31;
  v16(v29 + v30, enum case for IQACode.headPitchLow(_:), v15);
  v32 = (v11 + 6 * v8);
  v33 = *(v7 + 48);
  *v32 = static DaemonInternalDefaultsKeys.livenessBlockHeadPitchHigh.getter();
  v32[1] = v34;
  v16(v32 + v33, enum case for IQACode.headPitchHigh(_:), v15);
  v35 = (v11 + 7 * v8);
  v36 = *(v7 + 48);
  *v35 = static DaemonInternalDefaultsKeys.livenessBlockHeadRollLow.getter();
  v35[1] = v37;
  v16(v35 + v36, enum case for IQACode.headRollLow(_:), v15);
  v38 = &v11[v8];
  v39 = *(v7 + 48);
  *v38 = static DaemonInternalDefaultsKeys.livenessBlockHeadRollHigh.getter();
  v38[1] = v40;
  v16(v38 + v39, enum case for IQACode.headRollHigh(_:), v15);
  v41 = (v11 + 9 * v8);
  v42 = *(v7 + 48);
  *v41 = static DaemonInternalDefaultsKeys.livenessBlockHeadYawLow.getter();
  v41[1] = v43;
  v16(v41 + v42, enum case for IQACode.headYawLow(_:), v15);
  v44 = (v11 + 10 * v8);
  v45 = *(v7 + 48);
  *v44 = static DaemonInternalDefaultsKeys.livenessBlockHeadYawHigh.getter();
  v44[1] = v46;
  v16(v44 + v45, enum case for IQACode.headYawHigh(_:), v15);
  v47 = (v11 + 11 * v8);
  v48 = *(v7 + 48);
  *v47 = static DaemonInternalDefaultsKeys.livenessBlockBlinkingConfidenceHigh.getter();
  v47[1] = v49;
  v16(v47 + v48, enum case for IQACode.blinkingConfidenceHigh(_:), v15);
  v50 = (v11 + 12 * v8);
  v51 = *(v7 + 48);
  *v50 = static DaemonInternalDefaultsKeys.livenessBlockGlassesConfidenceHigh.getter();
  v50[1] = v52;
  v16(v50 + v51, enum case for IQACode.glassesConfidenceHigh(_:), v15);
  v53 = (v11 + 13 * v8);
  v54 = *(v7 + 48);
  *v53 = static DaemonInternalDefaultsKeys.livenessBlockSunglassesConfidenceHigh.getter();
  v53[1] = v55;
  v16(v53 + v54, enum case for IQACode.sunglassesConfidenceHigh(_:), v15);
  v56 = (v11 + 14 * v8);
  v57 = *(v7 + 48);
  *v56 = static DaemonInternalDefaultsKeys.livenessBlockFacemaskConfidenceHigh.getter();
  v56[1] = v58;
  v16(v56 + v57, enum case for IQACode.facemaskConfidenceHigh(_:), v15);
  v59 = (v11 + 15 * v8);
  v60 = *(v7 + 48);
  *v59 = static DaemonInternalDefaultsKeys.livenessBlockHeadgearConfidenceHigh.getter();
  v59[1] = v61;
  v16(v59 + v60, enum case for IQACode.headgearConfidenceHigh(_:), v15);
  v62 = &v11[2 * v8];
  v63 = *(v7 + 48);
  *v62 = static DaemonInternalDefaultsKeys.livenessBlockFaceCaptureQualityLow.getter();
  v62[1] = v64;
  v16(v62 + v63, enum case for IQACode.faceCaptureQualityLow(_:), v15);
  v65 = (v11 + 17 * v8);
  v66 = *(v7 + 48);
  *v65 = static DaemonInternalDefaultsKeys.livenessBlockTargetTooFarLeft.getter();
  v65[1] = v67;
  v16(v65 + v66, enum case for IQACode.targetTooFarLeft(_:), v15);
  v68 = (v11 + 18 * v8);
  v69 = *(v7 + 48);
  *v68 = static DaemonInternalDefaultsKeys.livenessBlockTargetTooFarRight.getter();
  v68[1] = v70;
  v16(v68 + v69, enum case for IQACode.targetTooFarRight(_:), v15);
  v71 = (v11 + 19 * v8);
  v72 = *(v7 + 48);
  *v71 = static DaemonInternalDefaultsKeys.livenessBlockTargetTooFarUp.getter();
  v71[1] = v73;
  v16(v71 + v72, enum case for IQACode.targetTooFarUp(_:), v15);
  v74 = (v11 + 20 * v8);
  v75 = *(v7 + 48);
  *v74 = static DaemonInternalDefaultsKeys.livenessBlockTargetTooFarDown.getter();
  v74[1] = v76;
  v16(v74 + v75, enum case for IQACode.targetTooFarDown(_:), v15);
  v77 = (v11 + 21 * v8);
  v78 = *(v7 + 48);
  *v77 = static DaemonInternalDefaultsKeys.livenessBlockNumFacesLow.getter();
  v77[1] = v79;
  v16(v77 + v78, enum case for IQACode.numFacesLow(_:), v15);
  v80 = (v11 + 22 * v8);
  v81 = *(v7 + 48);
  *v80 = static DaemonInternalDefaultsKeys.livenessBlockNumFacesHigh.getter();
  v80[1] = v82;
  v16(v80 + v81, enum case for IQACode.numFacesHigh(_:), v15);
  v83 = (v11 + 23 * v8);
  v84 = *(v7 + 48);
  *v83 = static DaemonInternalDefaultsKeys.livenessBlockLuxLevelLow.getter();
  v83[1] = v85;
  v16(v83 + v84, enum case for IQACode.luxLevelLow(_:), v15);
  v86 = &v11[3 * v8];
  v87 = *(v7 + 48);
  *v86 = static DaemonInternalDefaultsKeys.livenessBlockLuxLevelHigh.getter();
  v86[1] = v88;
  v16(v86 + v87, enum case for IQACode.luxLevelHigh(_:), v15);
  v89 = sub_10003F064(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *a1 = v91;
  *(a1 + 8) = xmmword_1006DB250;
  *(a1 + 24) = vdupq_n_s64(5uLL);
  *(a1 + 40) = 1097859072;
  *(a1 + 48) = xmmword_1006DB260;
  *(a1 + 64) = xmmword_1006DB270;
  *&result = 3;
  *(a1 + 80) = xmmword_1006DAFF0;
  *(a1 + 96) = v89;
  return result;
}

double sub_1001C6430()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1._countAndFlagsBits = static DaemonInternalDefaultsKeys.explorationPercent.getter();
  v2 = NSUserDefaults.internalString(forKey:)(v1);

  if (!v2.value._object)
  {
    return 0.0;
  }

  v5 = 0.0;
  v3 = sub_1001C5810(v2.value._countAndFlagsBits, v2.value._object, &v5);

  if (!v3)
  {
    return 0.0;
  }

  *&result = v5;
  if (v5 < 0.0 || v5 > 1.0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1001C64EC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 2;
  }

  if (a1 == 116 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 102 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

_BYTE *sub_1001C6588@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

Swift::Int sub_1001C6608(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1003BD1D4(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 6;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[2 * i + 5];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 2;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_100007224(&qword_10083C1A0, &qword_1006DA738);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1001C6764(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1001C6764(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1003BBEA4(v8);
      v8 = result;
    }

    v81 = v8 + 2;
    v82 = v8[2];
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = &v8[2 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_1001C6CF0((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = (v10 < v13) ^ (v17 >= v16);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003BC0AC(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v35 = v8[3];
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_1003BC0AC((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v36;
    v37 = v8 + 4;
    v38 = &v8[2 * v5 + 4];
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = v8[4];
          v40 = v8[5];
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = &v8[2 * v36];
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = &v37[2 * v5];
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = &v8[2 * v36];
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = &v37[2 * v5];
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
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
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = &v37[2 * v5 - 2];
        v77 = *v76;
        v78 = &v37[2 * v5];
        v79 = v78[1];
        sub_1001C6CF0((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = v8[2];
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove(&v37[2 * v5], v78 + 2, 16 * (v80 - 1 - v5));
        v8[2] = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = &v37[2 * v36];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = &v8[2 * v36];
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = &v37[2 * v5];
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 1))
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1001C6CF0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v6 + 1) < *(v4 + 1))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 16;
    do
    {
      v17 = v5 + 16;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 16;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 16;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 -= 16;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v20 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

void *sub_1001C6EF4()
{
  v59 = sub_10003DA34(_swiftEmptyArrayStorage);
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.turnRightOrder.getter();
  v60 = NSUserDefaults.internalInt(forKey:)(v2);
  value = v60.value;
  is_nil = v60.is_nil;

  if (!is_nil)
  {
    v5 = objc_allocWithZone(type metadata accessor for IdentityGesture());
    v6 = IdentityGesture.init(gesture:type:)();
    sub_10014C004(value, 0, v6);
  }

  v7 = [v0 standardUserDefaults];
  v8._countAndFlagsBits = static DaemonInternalDefaultsKeys.turnLeftOrder.getter();
  v61 = NSUserDefaults.internalInt(forKey:)(v8);
  v9 = v61.value;
  v10 = v61.is_nil;

  if (!v10)
  {
    v11 = objc_allocWithZone(type metadata accessor for IdentityGesture());
    v12 = IdentityGesture.init(gesture:type:)();
    sub_10014C004(v9, 0, v12);
  }

  v13 = [v0 standardUserDefaults];
  v14._countAndFlagsBits = static DaemonInternalDefaultsKeys.lookUpOrder.getter();
  v62 = NSUserDefaults.internalInt(forKey:)(v14);
  v15 = v62.value;
  v16 = v62.is_nil;

  if (!v16)
  {
    v17 = objc_allocWithZone(type metadata accessor for IdentityGesture());
    v18 = IdentityGesture.init(gesture:type:)();
    sub_10014C004(v15, 0, v18);
  }

  v19 = [v0 standardUserDefaults];
  v20._countAndFlagsBits = static DaemonInternalDefaultsKeys.lookDownOrder.getter();
  v63 = NSUserDefaults.internalInt(forKey:)(v20);
  v21 = v63.value;
  v22 = v63.is_nil;

  if (!v22)
  {
    v23 = objc_allocWithZone(type metadata accessor for IdentityGesture());
    v24 = IdentityGesture.init(gesture:type:)();
    sub_10014C004(v21, 0, v24);
  }

  v25 = [v0 standardUserDefaults];
  v26._countAndFlagsBits = static DaemonInternalDefaultsKeys.blinkOrder.getter();
  v64 = NSUserDefaults.internalInt(forKey:)(v26);
  v27 = v64.value;
  v28 = v64.is_nil;

  if (!v28)
  {
    v29 = objc_allocWithZone(type metadata accessor for IdentityGesture());
    v30 = IdentityGesture.init(gesture:type:)();
    sub_10014C004(v27, 0, v30);
  }

  v31 = [v0 standardUserDefaults];
  v32._countAndFlagsBits = static DaemonInternalDefaultsKeys.smileOrder.getter();
  v65 = NSUserDefaults.internalInt(forKey:)(v32);
  v33 = v65.value;
  v34 = v65.is_nil;

  if (!v34)
  {
    v35 = objc_allocWithZone(type metadata accessor for IdentityGesture());
    v36 = IdentityGesture.init(gesture:type:)();
    sub_10014C004(v33, 0, v36);
  }

  v37 = [v0 standardUserDefaults];
  v38._countAndFlagsBits = static DaemonInternalDefaultsKeys.openMouthOrder.getter();
  v66 = NSUserDefaults.internalInt(forKey:)(v38);
  v39 = v66.value;
  v40 = v66.is_nil;

  if (!v40)
  {
    v41 = objc_allocWithZone(type metadata accessor for IdentityGesture());
    v42 = IdentityGesture.init(gesture:type:)();
    sub_10014C004(v39, 0, v42);
  }

  v43 = [v0 standardUserDefaults];
  v44._countAndFlagsBits = static DaemonInternalDefaultsKeys.raiseEyebrowsOrder.getter();
  v67 = NSUserDefaults.internalInt(forKey:)(v44);
  v45 = v67.value;
  v46 = v67.is_nil;

  if (!v46)
  {
    v47 = objc_allocWithZone(type metadata accessor for IdentityGesture());
    v48 = IdentityGesture.init(gesture:type:)();
    sub_10014C004(v45, 0, v48);
  }

  v49 = *(v59 + 16);
  if (v49)
  {
    v50 = sub_1003BA078(*(v59 + 16), 0);
    v51 = sub_1003BC5B4(&v58, v50 + 4, v49, v59);
    v52 = v58;

    sub_10001FA6C(v52);
    if (v51 == v49)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  v50 = _swiftEmptyArrayStorage;
LABEL_21:
  v58 = v50;
  sub_1001C6608(&v58);
  v53 = v58;
  v54 = v58[2];
  if (v54)
  {
    v58 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v55 = 4;
    do
    {
      v56 = v53[v55];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v55 += 2;
      --v54;
    }

    while (v54);

    return v58;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1001C73F4()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.overrideActiveLivenessConfig.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    sub_1001C6EF4();
    v4 = [v0 standardUserDefaults];
    v5._countAndFlagsBits = static DaemonInternalDefaultsKeys.minMatches.getter();
    NSUserDefaults.internalInt(forKey:)(v5);

    v6 = [v0 standardUserDefaults];
    v7._countAndFlagsBits = static DaemonInternalDefaultsKeys.timeToSkipOption.getter();
    NSUserDefaults.internalInt(forKey:)(v7);

    v8 = [v0 standardUserDefaults];
    v9._countAndFlagsBits = static DaemonInternalDefaultsKeys.timeToSkipAX.getter();
    NSUserDefaults.internalInt(forKey:)(v9);

    v10 = [v0 standardUserDefaults];
    v11._countAndFlagsBits = static DaemonInternalDefaultsKeys.timeToAlert.getter();
    NSUserDefaults.internalInt(forKey:)(v11);

    v12 = [v0 standardUserDefaults];
    v13._countAndFlagsBits = static DaemonInternalDefaultsKeys.timeToAlertAX.getter();
    NSUserDefaults.internalInt(forKey:)(v13);

    v14 = [v0 standardUserDefaults];
    v15._countAndFlagsBits = static DaemonInternalDefaultsKeys.activeRetakeCount.getter();
    NSUserDefaults.internalInt(forKey:)(v15);

    v16 = [v0 standardUserDefaults];
    v17._countAndFlagsBits = static DaemonInternalDefaultsKeys.activeTimeout.getter();
    NSUserDefaults.internalInt(forKey:)(v17);

    v18 = [v0 standardUserDefaults];
    v19._countAndFlagsBits = static DaemonInternalDefaultsKeys.activeFaceOutOfBounds.getter();
    v107 = NSUserDefaults.internalInt(forKey:)(v19);
    value = v107.value;
    is_nil = v107.is_nil;

    v22 = 30;
    if (!is_nil)
    {
      v22 = value;
    }

    v106 = v22;
    v23 = [v0 standardUserDefaults];
    v24._countAndFlagsBits = static DaemonInternalDefaultsKeys.gestureCompleteDelay.getter();
    v108 = NSUserDefaults.internalInt(forKey:)(v24);
    v25 = v108.value;
    v26 = v108.is_nil;

    if (v26)
    {
      v27 = 300;
    }

    else
    {
      v27 = v25;
    }

    v105 = v27;
    v28 = [v0 standardUserDefaults];
    v29._countAndFlagsBits = static DaemonInternalDefaultsKeys.tutorialVideoDelay.getter();
    v109 = NSUserDefaults.internalInt(forKey:)(v29);
    v30 = v109.value;
    v31 = v109.is_nil;

    if (v31)
    {
      v32 = 2000;
    }

    else
    {
      v32 = v30;
    }

    v104 = v32;
    v33 = [v0 standardUserDefaults];
    v34._countAndFlagsBits = static DaemonInternalDefaultsKeys.tutorialVideoDuration.getter();
    v110 = NSUserDefaults.internalInt(forKey:)(v34);
    v35 = v110.value;
    v36 = v110.is_nil;

    if (v36)
    {
      v37 = 2000;
    }

    else
    {
      v37 = v35;
    }

    v103 = v37;
    v38 = [v0 standardUserDefaults];
    v39._countAndFlagsBits = static DaemonInternalDefaultsKeys.tutorialResumeDelay.getter();
    v111 = NSUserDefaults.internalInt(forKey:)(v39);
    v40 = v111.value;
    v41 = v111.is_nil;

    if (v41)
    {
      v42 = 1000;
    }

    else
    {
      v42 = v40;
    }

    v102 = v42;
    v43 = [v0 standardUserDefaults];
    v44._countAndFlagsBits = static DaemonInternalDefaultsKeys.gestureDetectedSuccessDuration.getter();
    v112 = NSUserDefaults.internalInt(forKey:)(v44);
    v45 = v112.value;
    v46 = v112.is_nil;

    v47 = 3000;
    if (!v46)
    {
      v47 = v45;
    }

    v101 = v47;
    v48 = [v0 standardUserDefaults];
    v49._countAndFlagsBits = static DaemonInternalDefaultsKeys.lastGestureExtraFrameDuration.getter();
    v113 = NSUserDefaults.internalInt(forKey:)(v49);
    v50 = v113.value;
    v51 = v113.is_nil;

    if (v51)
    {
      v52 = 1000;
    }

    else
    {
      v52 = v50;
    }

    v53 = [v0 standardUserDefaults];
    v54._countAndFlagsBits = static DaemonInternalDefaultsKeys.activeGoodLux.getter();
    v55 = NSUserDefaults.internalBool(forKey:)(v54);

    v56 = [v0 standardUserDefaults];
    v57._countAndFlagsBits = static DaemonInternalDefaultsKeys.activeEnablePRD.getter();
    v58 = NSUserDefaults.internalBool(forKey:)(v57);

    v59 = [v0 standardUserDefaults];
    v60._countAndFlagsBits = static DaemonInternalDefaultsKeys.enableIDMatching.getter();
    v61 = NSUserDefaults.internalBool(forKey:)(v60);

    v62 = [v0 standardUserDefaults];
    v63._countAndFlagsBits = static DaemonInternalDefaultsKeys.requireSelfie.getter();
    v64 = NSUserDefaults.internalBool(forKey:)(v63);

    v65 = [v0 standardUserDefaults];
    v66._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableAutoFlash.getter();
    v67 = NSUserDefaults.internalBool(forKey:)(v66);

    v68 = objc_allocWithZone(type metadata accessor for IdentityActiveLivenessConfig());
    BYTE4(v100) = !v67;
    BYTE3(v100) = v64;
    BYTE2(v100) = v61;
    BYTE1(v100) = v58;
    LOBYTE(v100) = v55;
    v98 = v101;
    v99 = v52;
    v96 = v103;
    v97 = v102;
    v94 = v105;
    v95 = v104;
    v93 = v106;
    IdentityActiveLivenessConfig.init(gestureSequence:minRequiredGestureCount:timeToSkipOption:timeToSkipAccessible:timeToAlert:timeToAlertAccessible:maxRetakeCount:sessionTimeout:faceOutOfBoundFrames:gestureCompletionDelay:tutorialVideoDelay:tutorialVideoDuration:tutorialResumeDelay:gestureDetectedSuccessDuration:lastGestureExtraFrameDuration:requiresGoodLux:enablePrintReplay:enableIDMatching:requireSelfie:enableAutoFlash:)();
  }

  v69 = [v0 standardUserDefaults];
  v70._countAndFlagsBits = static DaemonInternalDefaultsKeys.overridePassiveLivenessConfig.getter();
  v71 = NSUserDefaults.internalBool(forKey:)(v70);

  if (v71)
  {
    v72 = [v0 standardUserDefaults];
    v73._countAndFlagsBits = static DaemonInternalDefaultsKeys.passiveRetakeCount.getter();
    NSUserDefaults.internalInt(forKey:)(v73);

    v74 = [v0 standardUserDefaults];
    v75._countAndFlagsBits = static DaemonInternalDefaultsKeys.passiveTimeout.getter();
    NSUserDefaults.internalInt(forKey:)(v75);

    v76 = [v0 standardUserDefaults];
    v77._countAndFlagsBits = static DaemonInternalDefaultsKeys.passiveFaceOutOfBounds.getter();
    NSUserDefaults.internalInt(forKey:)(v77);

    v78 = [v0 standardUserDefaults];
    v79._countAndFlagsBits = static DaemonInternalDefaultsKeys.passiveTotalFrameCount.getter();
    NSUserDefaults.internalInt(forKey:)(v79);

    v80 = [v0 standardUserDefaults];
    v81._countAndFlagsBits = static DaemonInternalDefaultsKeys.passiveMinValidFrameCount.getter();
    NSUserDefaults.internalInt(forKey:)(v81);

    v82 = [v0 standardUserDefaults];
    v83._countAndFlagsBits = static DaemonInternalDefaultsKeys.passiveGoodLux.getter();
    NSUserDefaults.internalBool(forKey:)(v83);

    v84 = [v0 standardUserDefaults];
    v85._countAndFlagsBits = static DaemonInternalDefaultsKeys.passiveEnablePRD.getter();
    NSUserDefaults.internalBool(forKey:)(v85);

    v86 = [v0 standardUserDefaults];
    v87._countAndFlagsBits = static DaemonInternalDefaultsKeys.passiveDisableStitch.getter();
    NSUserDefaults.internalBool(forKey:)(v87);

    v88 = [v0 standardUserDefaults];
    v89._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableAutoFlash.getter();
    NSUserDefaults.internalBool(forKey:)(v89);

    v90 = objc_allocWithZone(type metadata accessor for IdentityPassiveLivenessConfig());
    IdentityPassiveLivenessConfig.init(maxRetakeCount:sessionTimeout:faceOutOfBoundFrames:totalFrameCount:minimumValidFrameCount:requiresGoodLux:enablePrintReplay:disableStitchDetection:enableAutoFlash:useAuxiliaryURL:)();
  }

  v91 = objc_allocWithZone(type metadata accessor for IdentityLivenessConfig());
  return IdentityLivenessConfig.init(active:passive:)();
}

uint64_t sub_1001C7CB4()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1001C7E0C, 0, 0);
}

uint64_t sub_1001C7E0C(uint64_t a1)
{
  v2 = v1[2];
  if (*(v2 + 96) != 1)
  {
    defaultLogger()();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v1[7];
    if (v22)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "IdentityProofingProducedAssetManager not set to retry liveness video upload; skipping", v24, 2u);
    }

    (*(v23 + 8))(v1[9], v1[6]);

    v25 = v1[1];
    goto LABEL_19;
  }

  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "IdentityProofingProducedAssetManager will re-attempt to upload liveness video", v5, 2u);
  }

  v6 = v1[13];
  v7 = v1[6];
  v8 = v1[7];

  v9 = *(v8 + 8);
  v1[14] = v9;
  v9(v6, v7);
  v10 = [objc_opt_self() standardUserDefaults];
  v11._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceLivenessVideoUploadFailure.getter();
  LOBYTE(v7) = NSUserDefaults.internalBool(forKey:)(v11);

  if (v7)
  {
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "IdentityProofingProducedAssetManager will throw an error as the internal settings to force liveness video upload is enabled", v14, 2u);
    }

    v15 = v1[12];
    v16 = v1[6];
    v18 = v1[4];
    v17 = v1[5];
    v19 = v1[3];

    v9(v15, v16);
    (*(v18 + 104))(v17, enum case for DIPError.Code.livenessFileURLDoesntExist(_:), v19);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_18:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v25 = v1[1];
LABEL_19:

    return v25();
  }

  v26 = v1[2];
  v27 = *(v26 + 40);
  v1[15] = v27;
  if (!v27)
  {
    defaultLogger()();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "IdentityProofingProducedAssetManager liveness video URL doesn't exist. Cannot upload video", v34, 2u);
    }

    v35 = v1[10];
    v36 = v1[6];
    v38 = v1[4];
    v37 = v1[5];
    v39 = v1[3];

    v9(v35, v36);
    (*(v38 + 104))(v37, enum case for DIPError.Code.livenessFileURLDoesntExist(_:), v39);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_18;
  }

  *(v2 + 96) = 0;
  v28 = *(v26 + 48);
  v29 = v27;
  v30 = swift_task_alloc();
  v1[16] = v30;
  *v30 = v1;
  v30[1] = sub_1001C8450;

  return sub_1001CD638(v29, v28);
}

uint64_t sub_1001C8450()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1001C86C8;
  }

  else
  {
    v2 = sub_1001C8564;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001C8564(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 120);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "IdentityProofingProducedAssetManager successfully uploaded liveness video after workflow refetch", v6, 2u);
  }

  else
  {

    v2 = v5;
  }

  (*(v1 + 112))(*(v1 + 88), *(v1 + 48));

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_1001C86C8(uint64_t a1)
{
  v3 = v1[14];
  v2 = v1[15];
  v4 = v1[8];
  v5 = v1[6];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v3(v4, v5);
  swift_willThrow();

  v6 = v1[1];

  return v6();
}

uint64_t sub_1001C87CC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "ProducedAssetManager warmup end", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_1001C8900(uint64_t a1, void *a2)
{
  v46 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v43);
  v42 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v41 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v47 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100141FE4(0x61746E6567616DLL, 0xE700000000000000, &v47);
    _os_log_impl(&_mh_execute_header, v12, v13, "ProducedAssetManager warmup ODNator for %s", v14, 0xCu);
    sub_10000BB78(v15);
  }

  (*(v9 + 8))(v11, v8);
  v16 = *(a1 + 32) + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation;
  v17 = *(v16 + 8);
  v40 = *v16;
  v37 = v17;
  v18 = sub_10000BA08(a2, a2[3]);
  v19 = v18[1];
  v39 = *v18;
  v36 = v19;
  type metadata accessor for AssessDuringProofingODNator(0);
  v20 = swift_allocObject();
  *(v20 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_odnNatorState) = 0;
  v21 = v20;
  v35 = v20;
  v22 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_assessmentResult;
  v23 = type metadata accessor for ODNAssessmentResult(0);
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  v38 = a1;
  v34 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_workQueue;
  sub_10017ABC8();
  v33 = "com.crimson.did.passport";

  static DispatchQoS.unspecified.getter();
  v47 = _swiftEmptyArrayStorage;
  v32[1] = sub_1001D26F4(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v32[0] = sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  v32[2] = sub_10001F484(&qword_1008465B0, &unk_1008458B0, &qword_1006BF8A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v25 = v45;
  v44 = *(v44 + 104);
  v26 = v46;
  (v44)(v45, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v46);
  v27 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v28 = v35;
  *(v35 + v34) = v27;
  v33 = "com.apple.coreidvd.odnator";
  v34 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_recomputeQueue;
  static DispatchQoS.userInitiated.getter();
  v47 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v44)(v25, v24, v26);
  *(v28 + v34) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v29 = sub_10051CE1C(v40, v37, 0x61746E6567616DLL, 0xE700000000000000, v39, v36, 0, 0, 3u, 1u);
  *(v29 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_odnNatorState) = 0;
  v30 = v38;
  *(v38 + 144) = v29;
  v31 = v30;

  dispatch_group_leave(*(v31 + 104));
}

void sub_1001C8EB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_100007224(&qword_10083D6A0, &unk_1006DB700);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_100007224(&unk_10084A140, &unk_1006DB430);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - v11;
  v13 = sub_100007224(&qword_10083D6A8, &qword_1006DB710);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v32 - v17;
  v19 = IdentityProofingDocuments.backID.getter();
  if (v19)
  {
    v20 = v19;
    v21 = IdentityDocument.pdf417Data.getter();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xF000000000000000;
  }

  sub_1001C9270(v21, v23, v18);
  sub_10000BD94(v21, v23);
  v24 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_pdf417Data;
  swift_beginAccess();
  sub_1001D212C(v18, a1 + v24);
  swift_endAccess();
  if (*(a1 + 144))
  {
    v32 = a4;
    sub_10000BBC4(v18, v16, &qword_10083D6A8, &qword_1006DB710);
    v25 = type metadata accessor for PDF417Data();
    v26 = *(v25 - 8);
    v27 = (*(v26 + 48))(v16, 1, v25);

    if (v27 == 1)
    {
      sub_10000BE18(v16, &qword_10083D6A8, &qword_1006DB710);
      v28 = type metadata accessor for PDF417ParsedData();
      (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
    }

    else
    {
      PDF417Data.parsedData.getter();
      (*(v26 + 8))(v16, v25);
    }

    v30 = *(a1 + 176);

    sub_100531168(v9, a3, v32, v30, v12);

    sub_10000BE18(v9, &qword_10083D6A0, &unk_1006DB700);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  sub_10000BE18(v18, &qword_10083D6A8, &qword_1006DB710);
  v31 = type metadata accessor for ODNAssessmentResult(0);
  (*(*(v31 - 8) + 56))(v12, v29, 1, v31);
  sub_10000BE18(v12, &unk_10084A140, &unk_1006DB430);
  dispatch_group_leave(*(a1 + 104));
}

uint64_t sub_1001C9270@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  if (a2 >> 60 == 15)
  {
    v8 = type metadata accessor for PDF417Data();
    v9 = *(*(v8 - 8) + 56);

    return v9(a3, 1, 1, v8);
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    sub_10000B8B8(a1, a2);
    JSONDecoder.init()();
    v11 = type metadata accessor for PDF417Data();
    sub_1001D26F4(&qword_10083D6B0, &type metadata accessor for PDF417Data, &protocol conformance descriptor for PDF417Data);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    (*(*(v11 - 8) + 56))(a3, 0, 1, v11);

    return sub_10000BD94(a1, a2);
  }
}

void sub_1001C95F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - v5;
  v7 = type metadata accessor for Logger();
  __chkstk_darwin(v7);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v9;
  if (a2)
  {
    v44 = v7;
    v45 = v6;
    v46 = a1;
    v10 = sub_1001D2420(a2, &off_1007FB3E0);
    swift_arrayDestroy();
    v11 = sub_10003F278(_swiftEmptyArrayStorage);
    v12 = v10 + 8;
    v13 = 1 << *(v10 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v10[8];
    v16 = (v13 + 63) >> 6;
    v51 = v10;

    v17 = 0;
    v49 = v16;
    v50 = v10 + 8;
    while (v15)
    {
      v19 = v17;
LABEL_12:
      v20 = (v51[7] + ((v19 << 10) | (16 * __clz(__rbit64(v15)))));
      v21 = v20[1];
      v52 = *v20;

      v22 = String._bridgeToObjectiveC()();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v11;
      v25 = sub_10004062C();
      v26 = v11[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        goto LABEL_29;
      }

      v29 = v24;
      if (v11[3] >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100171520();
        }
      }

      else
      {
        sub_100169A70(v28, isUniquelyReferenced_nonNull_native);
        v30 = sub_10004062C();
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_31;
        }

        v25 = v30;
      }

      v15 &= v15 - 1;
      v11 = v53;
      if (v29)
      {
        v18 = (v53[7] + 16 * v25);
        *v18 = v52;
        v18[1] = v21;
      }

      else
      {
        v53[(v25 >> 6) + 8] |= 1 << v25;
        *(v11[6] + 8 * v25) = v22;
        v32 = (v11[7] + 16 * v25);
        *v32 = v52;
        v32[1] = v21;

        v33 = v11[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_30;
        }

        v11[2] = v35;
      }

      v17 = v19;
      v16 = v49;
      v12 = v50;
    }

    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        v6 = v45;
        a1 = v46;
        v7 = v44;
        goto LABEL_23;
      }

      v15 = v12[v19];
      ++v17;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    type metadata accessor for ODIAttributeKey(0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    swift_arrayDestroy();
    v11 = 0;
LABEL_23:
    v36 = [objc_allocWithZone(ODIAdditionalAttributes) init];
    if (v11)
    {
      v37 = v47;
      v38 = defaultLogger()();
      __chkstk_darwin(v38);
      *(&v43 - 2) = v11;
      Logger.sensitive(_:)();
      (*(v48 + 8))(v37, v7);
      sub_10054C98C(v11);

      type metadata accessor for ODIAttributeKey(0);
      sub_1001D26F4(&qword_1008331A8, type metadata accessor for ODIAttributeKey, &unk_1006BF36C);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v36 setAttributes:isa];
    }

    v40 = *(a1 + 152);
    if (v40)
    {
      [v40 updateWithAdditionalAttributes:v36];
    }

    v41 = type metadata accessor for TaskPriority();
    (*(*(v41 - 8) + 56))(v6, 1, 1, v41);
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v42[4] = a1;

    sub_1003E653C(0, 0, v6, &unk_1006DB448, v42);

    dispatch_group_leave(*(a1 + 104));
  }
}

unint64_t sub_1001C9B64(uint64_t a1)
{
  _StringGuts.grow(_:)(32);

  type metadata accessor for ODIAttributeKey(0);
  sub_1001D26F4(&qword_1008331A8, type metadata accessor for ODIAttributeKey, &unk_1006BF36C);
  v1._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v1);

  return 0xD00000000000001ELL;
}

uint64_t sub_1001C9C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for TimeoutError();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_1001C9DDC, 0, 0);
}

uint64_t sub_1001C9DDC(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Kicking off ODI", v4, 2u);
  }

  v5 = v1[18];
  v6 = v1[12];
  v7 = v1[13];

  v8 = *(v7 + 8);
  v1[19] = v8;
  v8(v5, v6);

  v9 = swift_task_alloc();
  v1[20] = v9;
  sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  *v9 = v1;
  v9[1] = sub_1001C9F64;
  v10.n128_u64[0] = 4.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v10);
}

uint64_t sub_1001C9F64()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1001CA344;
  }

  else
  {

    v2 = sub_1001CA080;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001CA080()
{
  v25 = v0;
  v1 = *(v0 + 40);
  *(v1 + 160) = *(v0 + 16);

  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v24 = v5;
    *v4 = 136315138;
    v6 = *(v1 + 168);
    if (v6)
    {
      v7 = *(v1 + 160);
      v8 = v6;
    }

    else
    {
      v7 = 0;
      v8 = 0xE000000000000000;
    }

    v23 = *(v0 + 152);
    v12 = *(v0 + 136);
    v13 = *(v0 + 96);

    v14 = sub_100141FE4(v7, v8, &v24);

    *(v4 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "ODI payload = %s", v4, 0xCu);
    sub_10000BB78(v5);

    v23(v12, v13);
  }

  else
  {
    v9 = *(v0 + 152);
    v10 = *(v0 + 136);
    v11 = *(v0 + 96);

    v9(v10, v11);
  }

  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Finished ODI", v17, 2u);
  }

  v18 = *(v0 + 152);
  v19 = *(v0 + 128);
  v20 = *(v0 + 96);

  v18(v19, v20);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1001CA344()
{
  v1 = v0[21];

  v0[4] = v1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {

    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      *(v4 + 4) = 0x4010000000000000;
      _os_log_impl(&_mh_execute_header, v2, v3, "ODI timed out after %f seconds", v4, 0xCu);
    }

    v5 = v0[19];
    v6 = v0[14];
    v7 = v0[15];
    v8 = v0[12];
    v9 = v0[10];
    v10 = v0[11];
    v11 = v0[9];
    v25 = v0[7];
    v26 = v0[6];
    v27 = v0[8];

    v5(v7, v8);
    (*(v9 + 104))(v10, enum case for DIPError.Code.odiTimeout(_:), v11);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v5(v6, v8);

    (*(v25 + 8))(v27, v26);
  }

  else
  {
    v28 = v0[19];
    v12 = v0[14];
    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[9];
    v16 = v0[10];

    (*(v16 + 104))(v14, enum case for DIPError.Code.odiGeneralError(_:), v15);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v28(v12, v13);
  }

  defaultLogger()();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Finished ODI", v19, 2u);
  }

  v20 = v0[19];
  v21 = v0[16];
  v22 = v0[12];

  v20(v21, v22);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1001CA888(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return _swift_task_switch(sub_1001CA8A8, 0, 0);
}

uint64_t sub_1001CA8A8()
{
  v1 = *(v0[21] + 152);
  v0[22] = v1;
  if (v1)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1001CAA0C;
    v2 = swift_continuation_init();
    v0[17] = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100672A4C;
    v0[13] = &unk_10080A728;
    v0[14] = v2;
    [v1 getAssessment:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v3 = v0[20];
    *v3 = 0;
    v3[1] = 0;
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1001CAA0C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1001CAB8C;
  }

  else
  {
    v2 = sub_1001CAB1C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001CAB1C()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  *v2 = v0[18];
  v2[1] = v3;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001CAB8C(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1001CABFC(uint64_t a1, void *a2, int a3)
{
  v92 = a2;
  v86 = a3;
  v4 = type metadata accessor for DIPError.Code();
  v88 = *(v4 - 8);
  v89 = v4;
  __chkstk_darwin(v4);
  v90 = v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v6 - 8);
  v85 = v83 - v7;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v94 = v8;
  v95 = v9;
  v10 = __chkstk_darwin(v8);
  v84 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v87 = v83 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = v83 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = v83 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = v83 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = v83 - v24;
  __chkstk_darwin(v23);
  v27 = v83 - v26;
  v28 = [objc_opt_self() standardUserDefaults];
  v29._countAndFlagsBits = static DaemonInternalDefaultsKeys.skipCloudKitUpload.getter();
  v30 = NSUserDefaults.internalBool(forKey:)(v29);

  if (!v30)
  {
    v97 = _swiftEmptyArrayStorage;
    v35 = IdentityProofingDocuments.selfie.getter();
    v83[1] = a1;
    if (v35)
    {
      v36 = v35;
      defaultLogger()();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "create upload asset for selfie", v39, 2u);
      }

      v40 = *(v95 + 8);
      v40(v25, v94);
      v41 = v91;
      v42 = v93;
      sub_100182440(v36, 2u, v92);
      v44 = v42;
      if (v42)
      {

LABEL_33:
        (*(v88 + 104))(v90, enum case for DIPError.Code.internalError(_:), v89);
        swift_errorRetain();
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }

      v48 = v43;
      v49 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v96 = *(v41 + v49);
      *(v41 + v49) = 0x8000000000000000;
      sub_10016C328(v48, 0x6569666C6573, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
      *(v41 + v49) = v96;
      swift_endAccess();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v83[0] = v97;
    }

    else
    {
      defaultLogger()();
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "reset upload asset for selfie", v47, 2u);
      }

      v40 = *(v95 + 8);
      v40(v22, v94);
      v41 = v91;
      swift_beginAccess();
      sub_10014B6BC(0, 0x6569666C6573, 0xE600000000000000);
      swift_endAccess();
      v83[0] = _swiftEmptyArrayStorage;
      v44 = v93;
    }

    v51 = IdentityProofingDocuments.frontID.getter();
    if (v51)
    {
      v52 = v51;
      defaultLogger()();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "create upload asset for ID front", v55, 2u);
      }

      v56 = v19;
      v57 = v94;
      v40(v56, v94);
      sub_100182440(v52, 0, v92);
      if (v44)
      {

LABEL_32:

        goto LABEL_33;
      }

      v62 = v58;
      v63 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
      swift_beginAccess();

      v64 = swift_isUniquelyReferenced_nonNull_native();
      v96 = *(v41 + v63);
      *(v41 + v63) = 0x8000000000000000;
      sub_10016C328(v62, 0xD00000000000001ALL, 0x80000001006FAE90, v64);
      *(v41 + v63) = v96;
      swift_endAccess();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v83[0] = v97;
    }

    else
    {
      defaultLogger()();
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v59, v60, "reset upload asset for frontID", v61, 2u);
      }

      v57 = v94;
      v40(v16, v94);
      swift_beginAccess();
      sub_10014B6BC(0, 0xD00000000000001ALL, 0x80000001006FAE90);
      swift_endAccess();
    }

    v65 = v92;
    v66 = IdentityProofingDocuments.backID.getter();
    if (v66)
    {
      v67 = v66;
      defaultLogger()();
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "create upload asset for ID back", v70, 2u);
      }

      v40(v87, v57);
      sub_100182440(v67, 1u, v65);
      if (v44)
      {

        goto LABEL_32;
      }

      v77 = v71;
      v78 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
      swift_beginAccess();

      v79 = swift_isUniquelyReferenced_nonNull_native();
      v96 = *(v41 + v78);
      *(v41 + v78) = 0x8000000000000000;
      sub_10016C328(v77, 0xD000000000000019, 0x80000001006FAE70, v79);
      *(v41 + v78) = v96;
      swift_endAccess();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v76 = v97;
    }

    else
    {
      v72 = v84;
      defaultLogger()();
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v73, v74, "reset upload asset for backID", v75, 2u);
      }

      v40(v72, v57);
      swift_beginAccess();
      sub_10014B6BC(0, 0xD000000000000019, 0x80000001006FAE70);
      swift_endAccess();
      v76 = v83[0];
    }

    v80 = type metadata accessor for TaskPriority();
    v81 = v85;
    (*(*(v80 - 8) + 56))(v85, 1, 1, v80);
    v82 = swift_allocObject();
    *(v82 + 16) = 0;
    *(v82 + 24) = 0;
    *(v82 + 32) = v41;
    *(v82 + 40) = v76;
    *(v82 + 48) = v86 & 1;

    sub_1003E653C(0, 0, v81, &unk_1006DB4C8, v82);
  }

  defaultLogger()();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "SKIPPING CloudKit upload", v33, 2u);
  }

  return (*(v95 + 8))(v27, v94);
}