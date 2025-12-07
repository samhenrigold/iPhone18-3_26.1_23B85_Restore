int main(int argc, const char **argv, const char **envp)
{
  qword_1000CBA70 = [objc_allocWithZone(type metadata accessor for ServiceDelegate()) init];
  qword_1000CBA78 = [objc_opt_self() serviceListener];
  [qword_1000CBA78 setDelegate:qword_1000CBA70];
  [qword_1000CBA78 resume];
  return 0;
}

id sub_100002220()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1000022AC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000022D4()
{
  sub_10009DD90();
  v1 = v0;
  v2 = sub_10009DE50();
  v1, v3, v4, v5, v6, v7, v8, v9;
  return v2;
}

void sub_100002310(uint64_t a1)
{
  sub_10009DD90();
  v2 = v1;
  sub_10009DDE0();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_100002364(uint64_t a1)
{
  sub_10009DD90();
  v2 = v1;
  sub_10009E380();
  sub_10009DDE0();
  v3 = sub_10009E3A0();
  v2, v4, v5, v6, v7, v8, v9, v10;
  return v3;
}

uint64_t sub_100002450(uint64_t a1, id *a2)
{
  v3 = sub_10009DD80();
  *a2 = 0;
  return v3 & 1;
}

void sub_1000024D0(uint64_t *a2@<X8>)
{
  sub_10009DD90();
  v4 = v3;
  v5 = sub_10009DD50();
  v4, v6, v7, v8, v9, v10, v11, v12;
  *a2 = v5;
}

uint64_t sub_100002514(uint64_t a1)
{
  v2 = sub_100002F20(&qword_1000C9FB8, type metadata accessor for BRError, &unk_10009F780);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002580(uint64_t a1)
{
  v2 = sub_100002F20(&qword_1000C9FB8, type metadata accessor for BRError, &unk_10009F780);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000025F0(uint64_t a1)
{
  v2 = sub_100002F20(&qword_1000C9FF0, type metadata accessor for BRError, &unk_10009FA80);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10000265C(uint64_t a1)
{
  v2 = sub_100002F20(&qword_1000C9FF8, type metadata accessor for CKError, &unk_10009F8A8);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000026C8(uint64_t a1)
{
  v2 = sub_100002F20(&qword_1000C9FF8, type metadata accessor for CKError, &unk_10009F8A8);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100002734(uint64_t a1)
{
  v2 = sub_100002F20(&qword_1000CA028, type metadata accessor for CKError, &unk_10009FB80);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000027B0(uint64_t a1)
{
  sub_100002F20(&qword_1000C9FF0, type metadata accessor for BRError, &unk_10009FA80);

  return sub_10009D790();
}

uint64_t sub_10000281C(uint64_t a1)
{
  v2 = sub_100002F20(&qword_1000C9FF0, type metadata accessor for BRError, &unk_10009FA80);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100002888(void *a1, uint64_t a2)
{
  v4 = sub_100002F20(&qword_1000C9FF0, type metadata accessor for BRError, &unk_10009FA80);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000293C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002F20(&qword_1000C9FF0, type metadata accessor for BRError, &unk_10009FA80);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000029CC(uint64_t a1)
{
  sub_100002F20(&qword_1000CA028, type metadata accessor for CKError, &unk_10009FB80);

  return sub_10009D790();
}

uint64_t sub_100002A38(uint64_t a1)
{
  v2 = sub_100002F20(&qword_1000CA028, type metadata accessor for CKError, &unk_10009FB80);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100002AA4(void *a1, uint64_t a2)
{
  v4 = sub_100002F20(&qword_1000CA028, type metadata accessor for CKError, &unk_10009FB80);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100002B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002F20(&qword_1000CA028, type metadata accessor for CKError, &unk_10009FB80);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100002BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10009E380();
  sub_10009DD30();
  return sub_10009E3A0();
}

uint64_t sub_100002C14(void *a1, uint64_t *a2)
{
  v2 = sub_10009DD90();
  v4 = v3;
  v5 = sub_10009DD90();
  v13 = v6;
  if (v2 == v5 && v4 == v6)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_10009E2E0();
  }

  v4, v6, v7, v8, v9, v10, v11, v12;
  v13, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

uint64_t sub_100002C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002F20(&qword_1000C9FF0, type metadata accessor for BRError, &unk_10009FA80);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100002D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002F20(&qword_1000CA028, type metadata accessor for CKError, &unk_10009FB80);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100002DA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009DD90();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002DD4(uint64_t a1)
{
  v2 = sub_100002F20(&qword_1000C9E90, type metadata accessor for URLResourceKey, &unk_10009F3D8);
  v3 = sub_100002F20(&qword_1000C9E98, type metadata accessor for URLResourceKey, &unk_10009F378);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002F20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100002FB0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_10009DD50();
  v3, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4;
}

uint64_t sub_100002FF8(uint64_t a1)
{
  v2 = sub_100002F20(&qword_1000CA030, type metadata accessor for NSFileProviderServiceName, &unk_10009FA3C);
  v3 = sub_100002F20(&qword_1000CA038, type metadata accessor for NSFileProviderServiceName, &unk_10009F990);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000030B4(void *a1)
{
  v2 = sub_10009D9F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009DD50();
  v7 = [a1 valueForEntitlement:v6];

  if (v7)
  {
    sub_10009E180();
    swift_unknownObjectRelease();
  }

  else
  {
    v66 = 0u;
    v65 = 0u;
  }

  v67[0] = v65;
  v67[1] = v66;
  sub_1000036A4(v67, &v65);
  if (*(&v66 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v64)
    {
      v8 = [a1 processIdentifier];
      v9 = objc_allocWithZone(type metadata accessor for SPIHelper());
      v10 = sub_10004D13C(v8);
      v11 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP13SPIHelper_iOS17SPIHelperProtocol_];
      sub_100003714(&qword_1000C9F08, &qword_10009F4C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10009F250;
      *(inited + 32) = "startFileSharingWithURLWrapper:emailAddresses:phoneNumbers:optionsGroups:withReply:";
      *(inited + 40) = 3;
      *(inited + 48) = "addToCloudKitSharing:containerSetupInfo:emailAddresses:phoneNumbers:optionsGroups:withReply:";
      *(inited + 56) = 4;
      v61 = "addParticipantsToShareWithURLWrapper:share:emailAddresses:phoneNumbers:optionsGroups:withReply:";
      *(inited + 64) = "addParticipantsToShareWithURLWrapper:share:emailAddresses:phoneNumbers:optionsGroups:withReply:";
      *(inited + 72) = 4;
      v62 = "addParticipantsToShare:containerSetupInfo:emailAddresses:phoneNumbers:optionsGroups:withReply:";
      *(inited + 80) = "addParticipantsToShare:containerSetupInfo:emailAddresses:phoneNumbers:optionsGroups:withReply:";
      *(inited + 88) = 4;
      v63 = "forciblyShareFolder:emailAddresses:phoneNumbers:optionsGroups:withReply:";
      *(inited + 96) = "forciblyShareFolder:emailAddresses:phoneNumbers:optionsGroups:withReply:";
      *(inited + 104) = 3;
      sub_100003714(&qword_1000C9F10, &qword_10009F4C8);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10009F260;
      v14 = sub_1000037C4(0, &qword_1000C9F18, _SWCollaborationOptionsPickerGroup_ptr);
      *(v13 + 56) = sub_100003714(&qword_1000C9F20, &qword_10009F4D0);
      *(v13 + 32) = v14;
      v15 = sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);
      *(v13 + 88) = sub_100003714(&qword_1000C9F30, &qword_10009F4D8);
      *(v13 + 64) = v15;
      v16 = sub_1000037C4(0, &qword_1000C9F38, NSArray_ptr);
      *(v13 + 120) = sub_100003714(&qword_1000C9F40, &unk_10009F4E0);
      *(v13 + 96) = v16;
      v17 = objc_allocWithZone(NSSet);
      isa = sub_10009DE90().super.isa;
      v13, v19, v20, v21, v22, v23, v24, v25;
      v26 = [v17 initWithArray:isa];

      *&v65 = 0;
      sub_10009DF80();

      v34 = v65;
      if (v65)
      {
        v35 = sub_10009DF70().super.isa;
        v60 = v10;
        [v11 setClasses:v35 forSelector:"startFileSharingWithURLWrapper:emailAddresses:phoneNumbers:optionsGroups:withReply:" argumentIndex:3 ofReply:0];

        v36 = sub_10009DF70().super.isa;
        [v11 setClasses:v36 forSelector:"addToCloudKitSharing:containerSetupInfo:emailAddresses:phoneNumbers:optionsGroups:withReply:" argumentIndex:4 ofReply:0];

        v37 = sub_10009DF70().super.isa;
        [v11 setClasses:v37 forSelector:v61 argumentIndex:4 ofReply:0];

        v38 = sub_10009DF70().super.isa;
        [v11 setClasses:v38 forSelector:v62 argumentIndex:4 ofReply:0];
        inited, v39, v40, v41, v42, v43, v44, v45;

        v46 = sub_10009DF70().super.isa;
        v34, v47, v48, v49, v50, v51, v52, v53;
        v10 = v60;
        [v11 setClasses:v46 forSelector:v63 argumentIndex:3 ofReply:0];
      }

      else
      {
        inited, v27, v28, v29, v30, v31, v32, v33;
      }

      [a1 setExportedInterface:v11];
      [a1 setExportedObject:v10];
      [a1 resume];

      v57 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    sub_10000375C(&v65);
  }

  sub_10009D9D0();
  v54 = sub_10009D9E0();
  v55 = sub_10009DFD0();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "CloudSharing SPI: Attempted connection without entitlement. Denied.", v56, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v57 = 0;
LABEL_13:
  sub_10000375C(v67);
  return v57;
}

uint64_t sub_1000036A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C9F00, &qword_10009F4B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003714(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000375C(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C9F00, &qword_10009F4B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000037C4(uint64_t a1, unint64_t *a2, void *a3)
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

__n128 sub_100003834(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003844(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003864(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_100003C68()
{
  result = qword_1000C9FE0;
  if (!qword_1000C9FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9FE0);
  }

  return result;
}

void sub_100003E80(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_100003FF4(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, id), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v13 = sub_10009D7A0();
    a4(0, v13);
  }

  else
  {
    swift_beginAccess();
    if (*(a3 + 16))
    {
      swift_errorRetain();
      v11 = sub_10009D7A0();
      a4(0, v11);
    }

    else
    {
      swift_beginAccess();
      if (*(a6 + 16))
      {
        swift_errorRetain();
        v12 = sub_10009D7A0();
        a4(0, v12);
      }

      else
      {
        a4(a7, 0);
      }
    }
  }
}

void sub_100004134(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = sub_100003714(&qword_1000CA1F0, &qword_10009FD58);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  (*(v12 + 16))(&v26 - v13, a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, v14, v11);
  sub_100005A34();
  sub_100003714(&qword_1000CA200, &qword_10009FD60);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10009FCD0;
  *(v17 + 32) = a3;
  v18 = a3;
  v27.value._rawValue = v17;
  v27.is_nil = 0;
  v19.super.super.super.super.isa = sub_10009E070(v27, v28).super.super.super.super.isa;
  [(objc_class *)v19.super.super.super.super.isa setQualityOfService:25];
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;

  sub_10009E080();

  sub_10009E090();
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = sub_1000059A8;
  v22[4] = v16;
  v22[5] = v21;
  v22[6] = v18;
  v23 = v18;

  sub_10009E060();
  v24 = &selRef_sharedCloudDatabase;
  if ((a4 & 0x10000000000) != 0)
  {
    v24 = &selRef_privateCloudDatabase;
  }

  v25 = [a7 *v24];
  [v25 addOperation:v19.super.super.super.super.isa];
}

uint64_t sub_100004420(void *a1, void *a2)
{
  if (!a1 || a2)
  {
    sub_100005B1C();
    swift_allocError();
    *v5 = 0xD000000000000029;
    *(v5 + 8) = 0x80000001000A47D0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 16) = a2;
    *(v5 + 40) = 4;
    v6 = a2;
    sub_100003714(&qword_1000CA1F0, &qword_10009FD58);
    return sub_10009DEE0();
  }

  else
  {
    v3 = a1;
    sub_100003714(&qword_1000CA1F0, &qword_10009FD58);
    return sub_10009DEF0();
  }
}

void sub_1000044F8(int a1, id a2, char a3, void (*a4)(void))
{
  if (a3)
  {
    v7 = sub_10009D7A0();
    (a4)(0, 0, 0);
  }

  else
  {
    v6 = [a2 share];
    v7 = [a2 containerID];
    a4(v6);
  }
}

uint64_t sub_1000045C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100003714(&qword_1000CA208, &qword_10009FD68);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  sub_100005D7C(a3, a4, sub_100005B84, v12);
}

uint64_t sub_100004718(void *a1, void *a2, void *a3, void *a4)
{
  if (a1 && a2 && a3 && !a4)
  {
    v7 = a1;
    v8 = a2;
    v9 = a3;
    sub_100003714(&qword_1000CA208, &qword_10009FD68);
    return sub_10009DEF0();
  }

  else
  {
    sub_100005B1C();
    swift_allocError();
    *v11 = 0xD00000000000002DLL;
    *(v11 + 8) = 0x80000001000A4820;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 16) = a4;
    *(v11 + 40) = 5;
    v12 = a4;
    sub_100003714(&qword_1000CA208, &qword_10009FD68);
    return sub_10009DEE0();
  }
}

void sub_10000480C(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5)
{
  v9 = sub_100003714(&qword_1000CA228, &qword_10009FDA8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  (*(v10 + 16))(&v22 - v11, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  sub_100005A34();
  sub_100003714(&qword_1000CA200, &qword_10009FD60);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10009FCD0;
  *(v15 + 32) = [a3 recordID];
  v23.value._rawValue = _swiftEmptyArrayStorage;
  v23.is_nil = v15;
  v16.super.super.super.super.isa = sub_10009E070(v23, v24).super.super.super.super.isa;
  [(objc_class *)v16.super.super.super.super.isa setQualityOfService:25];
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;

  sub_10009E080();

  sub_10009E090();
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = sub_1000068A4;
  v19[4] = v14;
  v19[5] = v18;

  sub_10009E060();
  v20 = &selRef_privateCloudDatabase;
  if ((a4 & 1) == 0)
  {
    v20 = &selRef_sharedCloudDatabase;
  }

  v21 = [a5 *v20];
  [v21 addOperation:v16.super.super.super.super.isa];
}

uint64_t sub_100004B04(void *a1)
{
  if (a1)
  {
    sub_100005B1C();
    swift_allocError();
    *v2 = 0xD000000000000030;
    *(v2 + 8) = 0x80000001000A48B0;
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 16) = a1;
    *(v2 + 40) = 8;
    v3 = a1;
    sub_100003714(&qword_1000CA228, &qword_10009FDA8);
    return sub_10009DEE0();
  }

  else
  {
    sub_100003714(&qword_1000CA228, &qword_10009FDA8);
    return sub_10009DEF0();
  }
}

uint64_t sub_100004BD8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    swift_beginAccess();
    *(a4 + 16) = a2;
    swift_errorRetain();
  }

  return result;
}

void sub_100004C40(uint64_t a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v11 = sub_10009D7A0();
    a4();
  }

  else
  {
    swift_beginAccess();
    if (*(a3 + 16))
    {
      swift_errorRetain();
      v9 = sub_10009D7A0();
      a4();
    }

    else
    {
      swift_beginAccess();
      if (*(a6 + 16))
      {
        swift_errorRetain();
        v10 = sub_10009D7A0();
        a4();
      }

      else
      {
        (a4)(0);
      }
    }
  }
}

uint64_t sub_100004D54(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = sub_10009D9F0();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = sub_100003714(&qword_1000CA218, &qword_10009FD90);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_100004E5C, 0, 0);
}

uint64_t sub_100004E5C()
{
  v1 = v0[25];
  v2 = v0[19];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_100004F78;
  v3 = swift_continuation_init();
  v0[17] = sub_100003714(&qword_1000CA220, &qword_10009FD98);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100005C28;
  v0[13] = &unk_1000C2078;
  v0[14] = v3;
  [v2 fetchFullNameAndFormattedUsernameOfAccountWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100004F78()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_100005274;
  }

  else
  {
    v2 = sub_100005088;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100005088()
{
  v26 = v0;
  v1 = v0[24];
  v2 = v0[23];
  v3 = v0[18];
  sub_100006758(v0[25], v1);
  v4 = (v1 + *(v2 + 48));
  v5 = *v4;
  v6 = v4[1];
  v7 = sub_10009D720();
  (*(*(v7 - 8) + 32))(v3, v1, v7);
  sub_10009D9D0();

  v8 = sub_10009D9E0();
  v9 = sub_10009DFF0();
  v6, v10, v11, v12, v13, v14, v15, v16;
  v17 = os_log_type_enabled(v8, v9);
  v19 = v0[21];
  v18 = v0[22];
  v20 = v0[20];
  if (v17)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v25 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_1000307A4(v5, v6, &v25);
    _os_log_impl(&_mh_execute_header, v8, v9, "Username: %s", v21, 0xCu);
    sub_10000670C(v22);
  }

  (*(v19 + 8))(v18, v20);

  v23 = v0[1];

  return v23(v5, v6);
}

uint64_t sub_100005274()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100005308(uint64_t a1)
{
  v1[18] = a1;
  v1[19] = sub_100003714(&qword_1000CA218, &qword_10009FD90);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_1000053B4, 0, 0);
}

uint64_t sub_1000053B4()
{
  v1 = v0[21];
  v2 = v0[18];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_1000054D0;
  v3 = swift_continuation_init();
  v0[17] = sub_100003714(&qword_1000CA220, &qword_10009FD98);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100005C28;
  v0[13] = &unk_1000C2050;
  v0[14] = v3;
  [v2 fetchFullNameAndPrimaryEmailOnAccountWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000054D0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1000056B4;
  }

  else
  {
    v2 = sub_1000055E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000055E0()
{
  v1 = v0[20];
  v2 = v0[19];
  sub_100006758(v0[21], v1);
  v3 = (v1 + *(v2 + 48));
  v4 = *v3;
  v5 = v3[1];
  v6 = sub_10009D720();
  (*(*(v6 - 8) + 8))(v1, v6);

  v7 = v0[1];

  return v7(v4, v5);
}

uint64_t sub_1000056B4()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100005734(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, uint64_t a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;
  v8[7], v16, v17, v18, v19, v20, v21, v22;
  v23 = OBJC_IVAR____TtC13SPIHelper_iOS18CloudKitOperations__ckSourceAppBundleID;
  v24 = sub_100003714(&qword_1000CA230, &qword_10009FDB0);
  (*(*(v24 - 8) + 8))(v8 + v23, v24);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CloudKitOperations(uint64_t a1)
{
  result = qword_1000CA0E0;
  if (!qword_1000CA0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100005848(uint64_t a1)
{
  sub_1000058E8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000058E8(uint64_t a1)
{
  if (!qword_1000CA0F0)
  {
    sub_10000594C(&qword_1000CA6A0, &qword_10009FD50);
    v1 = sub_10009DB10();
    if (!v2)
    {
      atomic_store(v1, &qword_1000CA0F0);
    }
  }
}

uint64_t sub_10000594C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000059A8(void *a1, void *a2)
{
  sub_100003714(&qword_1000CA1F0, &qword_10009FD58);

  return sub_100004420(a1, a2);
}

unint64_t sub_100005A34()
{
  result = qword_1000CA1F8;
  if (!qword_1000CA1F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000CA1F8);
  }

  return result;
}

uint64_t sub_100005A80()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005AB8()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100005B1C()
{
  result = qword_1000CA8D0;
  if (!qword_1000CA8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA8D0);
  }

  return result;
}

uint64_t sub_100005B84(void *a1, void *a2, void *a3, void *a4)
{
  sub_100003714(&qword_1000CA208, &qword_10009FD68);

  return sub_100004718(a1, a2, a3, a4);
}

uint64_t sub_100005C28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_100003714(&qword_1000CA218, &qword_10009FD90);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *sub_1000067C8((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    v10 = swift_allocError();
    *v11 = a4;
    v12 = a4;

    return _swift_continuation_throwingResumeWithError(v9, v10);
  }

  else
  {
    sub_10009D710();
    v13 = &v8[*(v6 + 48)];
    *v13 = sub_10009DD90();
    v13[1] = v14;
    sub_100006758(v8, *(*(v9 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

void sub_100005D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = [objc_allocWithZone(CKContainer) initWithContainerSetupInfo:a2];
  }

  else
  {
    v8 = objc_allocWithZone(CKContainerID);
    v9 = sub_10009DD50();
    v10 = [v8 initWithContainerIdentifier:v9 environment:1];

    v7 = [objc_allocWithZone(CKContainer) initWithContainerID:v10];
  }

  sub_100003714(&qword_1000CA210, &qword_10009FD70);
  v11 = sub_10009D860();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10009FCE0;
  (*(v12 + 16))(v14 + v13, a1, v11);
  v15 = objc_allocWithZone(CKFetchShareMetadataOperation);
  v26 = v7;
  isa = sub_10009DE90().super.isa;
  v14, v17, v18, v19, v20, v21, v22, v23;
  v24 = [v15 initWithShareURLs:isa];

  [v24 setShouldFetchRootRecord:0];
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;

  sub_10009E0C0();
  [v26 addOperation:v24];
}

uint64_t sub_100005FEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006030(uint64_t a1)
{
  v1[6] = a1;
  v3 = sub_10009D720();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v4 = swift_task_alloc();
  v1[9] = v4;
  v1[10] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[11] = v5;
  *v5 = v1;
  v5[1] = sub_100006144;

  return sub_100004D54(v4, a1);
}

uint64_t sub_100006144(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v4[12] = a2;
  v4[13] = v2;

  if (v2)
  {
    v5 = sub_1000065A8;
  }

  else
  {
    v5 = sub_100006260;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100006260()
{
  (*(v0[8] + 32))(v0[10], v0[9], v0[7]);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_10000630C;
  v2 = v0[6];

  return sub_100005308(v2);
}

uint64_t sub_10000630C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {
    *(v6 + 96), v7, v8, v9, v10, v11, v12, v13;
    v14 = sub_100006614;
  }

  else
  {
    v15 = *(v6 + 24);
    *(v6 + 128) = a2;
    *(v6 + 136) = a1;
    *(v6 + 144) = v15;
    v14 = sub_100006450;
  }

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_100006450()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v27._object = 0x80000001000A4850;
  v27._countAndFlagsBits = 0xD000000000000017;
  v8 = sub_10009DE40(v27);
  v16 = !v8;
  if (v8)
  {
    v17 = v3;
  }

  else
  {
    v17 = v4;
  }

  if (!v16)
  {
    v1 = v2;
    v3 = v4;
  }

  v17, v9, v10, v11, v12, v13, v14, v15;
  v18 = objc_opt_self();
  v19 = sub_10009D700();
  v20 = [v18 localizedStringFromPersonNameComponents:v19 style:2 options:0];

  v21 = sub_10009DD90();
  v23 = v22;

  (*(v7 + 8))(v5, v6);

  v24 = v0[1];

  return v24(v21, v23, v1, v3);
}

uint64_t sub_1000065A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100006614()
{
  (*(v0[8] + 8))(v0[10], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000066A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000670C(void *a1)
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

uint64_t sub_100006758(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000CA218, &qword_10009FD90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1000067C8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100006820(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100003714(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_1000068A4(void *a1)
{
  sub_100003714(&qword_1000CA228, &qword_10009FDA8);

  return sub_100004B04(a1);
}

uint64_t sub_100006940()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000069A4(uint64_t a1, uint64_t a2)
{
  v2[93] = a2;
  v2[87] = a1;
  v2[94] = sub_100003714(&unk_1000CA240, &qword_1000A0380);
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();

  return _swift_task_switch(sub_100006A6C, 0, 0);
}

uint64_t sub_100006A6C()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  *(v0 + 816) = *(v1 + 48);
  *(v0 + 820) = *(v1 + 64);
  v3 = swift_task_alloc();
  *(v0 + 792) = v3;
  *(v3 + 16) = v2;
  swift_asyncLet_begin();
  v4 = *(v0 + 776);

  return _swift_asyncLet_get(v0 + 16, v4, sub_100006B30, v0 + 656);
}

uint64_t sub_100006B4C()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 784);
  v3 = *(v0 + 768);
  v4 = *(v0 + 752);
  sub_100008658(*(v0 + 776), v3, &unk_1000CA240, &qword_1000A0380);
  *(v0 + 800) = *v3;
  v5 = *(v4 + 48);
  *(v0 + 808) = *(v3 + *(v4 + 64));
  sub_1000086C0(v3 + v5, v2 + v1, &qword_1000CA250, &qword_10009FDF8);
  v6 = *(v0 + 776);

  return _swift_asyncLet_finish(v0 + 16, v6, sub_100006C18, v0 + 704);
}

uint64_t sub_100006C34()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 800);
  v3 = *(v0 + 820);
  v4 = *(v0 + 784);
  v5 = *(v0 + 760);
  v6 = *(v0 + 752);

  *v4 = v2;
  *(v4 + v3) = v1;
  sub_100008658(v4, v5, &unk_1000CA240, &qword_1000A0380);

  v7 = *(v5 + *(v6 + 64));
  sub_100008728(v5 + *(v6 + 48), &qword_1000CA250, &qword_10009FDF8);
  v8 = *(v0 + 784);
  v9 = *(v0 + 776);
  v10 = *(v0 + 768);
  if (v7)
  {
    sub_100005B1C();
    swift_allocError();
    *v11 = 0xD000000000000010;
    *(v11 + 8) = 0x80000001000A4A10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 16) = v7;
    *(v11 + 40) = 5;
    swift_willThrow();
    sub_100008728(v8, &unk_1000CA240, &qword_1000A0380);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 752);
    v18 = *(v0 + 696);
    sub_100008658(v8, v9, &unk_1000CA240, &qword_1000A0380);
    v19 = *v9;
    v15 = *(v14 + 48);

    sub_1000086C0(v8, v10, &unk_1000CA240, &qword_1000A0380);
    v16 = *(v14 + 48);

    sub_1000086C0(v10 + v16, v18, &qword_1000CA250, &qword_10009FDF8);
    sub_100008728(v9 + v15, &qword_1000CA250, &qword_10009FDF8);

    v17 = *(v0 + 8);

    return v17(v19);
  }
}

uint64_t sub_100006ED0(unsigned __int8 a1)
{
  if (a1 == 8)
  {
    return 0x6E776F6E6B6E752ELL;
  }

  if (a1 == 9)
  {
    return 0x6E656D75636F642ELL;
  }

  sub_10009E1E0(19);
  0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
  v10 = 0xEC00000064656966;
  v11 = 0x69636570736E752ELL;
  v12 = 0xE600000000000000;
  v13 = 0x726568746F2ELL;
  if (a1 != 6)
  {
    v13 = 2037276974;
    v12 = 0xE400000000000000;
  }

  v14 = 0xE700000000000000;
  v15 = 0x6972616661732ELL;
  if (a1 != 4)
  {
    v15 = 0x726F66656572662ELL;
    v14 = 0xE90000000000006DLL;
  }

  if (a1 <= 5u)
  {
    v13 = v15;
    v12 = v14;
  }

  v16 = 0xEC0000007265646CLL;
  v17 = 0x6F467365746F6E2ELL;
  if (a1 != 2)
  {
    v17 = 0x65646E696D65722ELL;
    v16 = 0xEA00000000007372;
  }

  if (a1)
  {
    v11 = 0x7365746F6E2ELL;
    v10 = 0xE600000000000000;
  }

  if (a1 > 1u)
  {
    v11 = v17;
    v10 = v16;
  }

  if (a1 <= 3u)
  {
    v18._countAndFlagsBits = v11;
  }

  else
  {
    v18._countAndFlagsBits = v13;
  }

  if (a1 <= 3u)
  {
    v19 = v10;
  }

  else
  {
    v19 = v12;
  }

  v18._object = v19;
  sub_10009DE10(v18);
  v19, v20, v21, v22, v23, v24, v25, v26;
  v27._countAndFlagsBits = 41;
  v27._object = 0xE100000000000000;
  sub_10009DE10(v27);
  return 0xD000000000000010;
}

uint64_t sub_1000070A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  *(v6 + 976) = a6;
  *(v6 + 808) = a5;
  *(v6 + 800) = a4;
  *(v6 + 792) = a3;
  *(v6 + 784) = a2;
  *(v6 + 776) = a1;
  *(v6 + 816) = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  *(v6 + 824) = swift_task_alloc();
  *(v6 + 832) = swift_task_alloc();
  *(v6 + 840) = swift_task_alloc();
  v7 = sub_10009D9F0();
  *(v6 + 848) = v7;
  *(v6 + 856) = *(v7 - 8);
  *(v6 + 864) = swift_task_alloc();
  *(v6 + 872) = swift_task_alloc();
  *(v6 + 880) = swift_task_alloc();
  *(v6 + 888) = swift_task_alloc();
  *(v6 + 896) = swift_task_alloc();

  return _swift_task_switch(sub_100007200, 0, 0);
}

uint64_t sub_100007200()
{
  v99 = v0;
  v1 = *(v0 + 784);
  v2 = sub_10009DD50();
  v3 = NSSelectorFromString(v2);

  if ([v1 respondsToSelector:v3])
  {
    LODWORD(v4) = [*(v0 + 784) br_isCloudDocsShare];
  }

  else
  {
    LODWORD(v4) = 0;
  }

  v5 = *(v0 + 808);
  sub_10009D9D0();

  v6 = sub_10009D9E0();
  v7 = sub_10009DFF0();
  v5, v8, v9, v10, v11, v12, v13, v14;
  v15 = os_log_type_enabled(v6, v7);
  v16 = *(v0 + 896);
  v17 = *(v0 + 856);
  v18 = *(v0 + 848);
  if (v15)
  {
    v97 = v4;
    v19 = *(v0 + 801);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v98 = v21;
    *v20 = 136315394;
    v22 = sub_100006ED0(v19);
    v4 = v23;
    v24 = sub_1000307A4(v22, v23, &v98);
    v25 = v4;
    LOBYTE(v4) = v97;
    v25, v26, v27, v28, v29, v30, v31, v32;
    *(v20 + 4) = v24;
    *(v20 + 12) = 1024;
    *(v20 + 14) = v97;
    _os_log_impl(&_mh_execute_header, v6, v7, "saveShare attr.sharingType: %s, isCloudDocsShare: %{BOOL}d", v20, 0x12u);
    sub_10000670C(v21);
  }

  v33 = *(v17 + 8);
  v33(v16, v18);
  *(v0 + 904) = v33;
  if ((*(v0 + 800) & 0xFE00) == 0x800)
  {
    v34 = 1;
  }

  else
  {
    v34 = v4;
  }

  if (v34)
  {
    v35 = *(v0 + 840);
    v36 = *(v0 + 784);
    v37 = (v0 + 776);
    v38 = *(v0 + 776);
    sub_10009D9D0();
    sub_100008658(v38, v35, &qword_1000CA250, &qword_10009FDF8);
    v39 = v36;
    v40 = sub_10009D9E0();
    v41 = sub_10009DFF0();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 872);
    v44 = *(v0 + 848);
    v45 = *(v0 + 840);
    if (v42)
    {
      v46 = *(v0 + 832);
      v47 = *(v0 + 784);
      v95 = *(v0 + 848);
      v48 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v98 = v93;
      *v48 = 136315650;
      sub_100008658(v45, v46, &qword_1000CA250, &qword_10009FDF8);
      v49 = sub_10009DDA0();
      v51 = v50;
      sub_100008728(v45, &qword_1000CA250, &qword_10009FDF8);
      v52 = sub_1000307A4(v49, v51, &v98);
      v53 = v51;
      v37 = (v0 + 776);
      v53, v54, v55, v56, v57, v58, v59, v60;
      *(v48 + 4) = v52;
      *(v48 + 12) = 2112;
      *(v48 + 14) = v47;
      *v92 = v47;
      *(v48 + 22) = 1024;
      *(v48 + 24) = [v47 allowsAccessRequests];

      _os_log_impl(&_mh_execute_header, v40, v41, "saveShare performing CloudDocs (fileURL) operation %s -- %@\n allowsAccessRequests: %{BOOL}d", v48, 0x1Cu);
      sub_100008728(v92, &qword_1000CA8E0, &qword_10009FE08);

      sub_10000670C(v93);

      v61 = v95;
      v62 = v43;
    }

    else
    {
      v89 = *(v0 + 784);

      sub_100008728(v45, &qword_1000CA250, &qword_10009FDF8);
      v62 = v43;
      v61 = v44;
    }

    v33(v62, v61);
    v90 = swift_task_alloc();
    *(v0 + 952) = v90;
    v90[1] = vextq_s8(*v37, *v37, 8uLL);
    sub_100003714(&qword_1000CA238, &qword_1000A0330);
    swift_asyncLet_begin();

    return _swift_asyncLet_get(v0 + 16, v0 + 696, sub_100007E34, v0 + 656);
  }

  else
  {
    v63 = *(v0 + 784);
    type metadata accessor for CloudKitOperations(0);
    v64 = swift_allocObject();
    *(v0 + 912) = v64;
    v64[2] = 0xD000000000000021;
    v64[3] = 0x80000001000A4980;
    v64[4] = 0xD000000000000016;
    v64[5] = 0x80000001000A49B0;
    v64[6] = 0xD00000000000001DLL;
    v64[7] = 0x80000001000A49D0;
    *(v0 + 712) = 0;
    *(v0 + 720) = 0;
    sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
    sub_10009DAC0();
    sub_10009D9D0();
    v65 = v63;
    v66 = sub_10009D9E0();
    v67 = sub_10009DFF0();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = *(v0 + 784);
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138412290;
      *(v69 + 4) = v68;
      *v70 = v68;
      v71 = v68;
      _os_log_impl(&_mh_execute_header, v66, v67, "saveShare performing CloudKit operation %@", v69, 0xCu);
      sub_100008728(v70, &qword_1000CA8E0, &qword_10009FE08);
    }

    v72 = *(v0 + 888);
    v73 = *(v0 + 856);
    v74 = *(v0 + 848);
    v75 = *(v0 + 792);

    *(v0 + 920) = (v73 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v76 = (v33)(v72, v74);
    if (v75)
    {
      v84 = *(v0 + 976);
      v85 = *(v0 + 800);
      v94 = *(v0 + 808);
      v96 = *(v0 + 792);
      v86 = *(v0 + 784);
      v87 = swift_task_alloc();
      *(v0 + 928) = v87;
      *(v87 + 16) = v64;
      *(v87 + 24) = v86;
      *(v87 + 32) = v85;
      *(v87 + 34) = BYTE2(v85);
      *(v87 + 35) = BYTE3(v85);
      *(v87 + 36) = BYTE4(v85);
      *(v87 + 37) = BYTE5(v85) & 1;
      *(v87 + 38) = BYTE6(v85) & 1;
      *(v87 + 40) = v94;
      *(v87 + 48) = v84 & 1;
      *(v87 + 49) = HIBYTE(v84) & 1;
      *(v87 + 56) = v96;
      v88 = swift_task_alloc();
      *(v0 + 936) = v88;
      v83 = sub_10000856C();
      *v88 = v0;
      v88[1] = sub_1000079BC;
      v81 = sub_100008510;
      v76 = v0 + 728;
      v79 = 0xD000000000000029;
      v80 = 0x80000001000A47D0;
      v77 = 0;
      v78 = 0;
      v82 = v87;
    }

    else
    {
      __break(1u);
    }

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v76, v77, v78, v79, v80, v81, v82, v83);
  }
}

uint64_t sub_1000079BC()
{
  *(*v1 + 944) = v0;

  if (v0)
  {
    v2 = sub_100007CB8;
  }

  else
  {

    v2 = sub_100007AD8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100007AD8(uint64_t a1)
{
  v2 = *(v1 + 784);
  v3 = *(v1 + 728);
  sub_10009D9D0();
  v4 = v2;
  v5 = sub_10009D9E0();
  v6 = sub_10009DFF0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 784);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "saveShare completed CloudKit operation %@", v8, 0xCu);
    sub_100008728(v9, &qword_1000CA8E0, &qword_10009FE08);
  }

  else
  {
  }

  (*(v1 + 904))(*(v1 + 880), *(v1 + 848));

  v11 = *(v1 + 8);

  return v11(v3);
}

uint64_t sub_100007CB8()
{
  v1 = *(v0 + 912);

  swift_setDeallocating();
  v1[3], v2, v3, v4, v5, v6, v7, v8;
  v1[5], v9, v10, v11, v12, v13, v14, v15;
  v1[7], v16, v17, v18, v19, v20, v21, v22;
  v23 = OBJC_IVAR____TtC13SPIHelper_iOS18CloudKitOperations__ckSourceAppBundleID;
  v24 = sub_100003714(&qword_1000CA230, &qword_10009FDB0);
  (*(*(v24 - 8) + 8))(v1 + v23, v24);
  swift_deallocClassInstance();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100007E34()
{
  v1 = v0[87];
  v0[120] = v1;
  v2 = v0[88];
  v0[121] = v2;
  v3 = v2;
  v4 = v1;

  return _swift_asyncLet_finish(v0 + 2, v0 + 87, sub_100007EB0, v0 + 92);
}

uint64_t sub_100007ECC()
{
  v40 = v0;
  v1 = v0[103];
  v2 = v0[98];
  v3 = v0[97];

  sub_10009D9D0();
  sub_100008658(v3, v1, &qword_1000CA250, &qword_10009FDF8);
  v4 = v2;
  v5 = sub_10009D9E0();
  v6 = sub_10009DFF0();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[113];
  v9 = v0[108];
  v10 = v0[106];
  if (v7)
  {
    v11 = v0[104];
    v12 = v0[103];
    v13 = v0[98];
    v38 = v0[113];
    v14 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39 = v36;
    *v14 = 136315650;
    sub_100008658(v12, v11, &qword_1000CA250, &qword_10009FDF8);
    v15 = sub_10009DDA0();
    v37 = v10;
    v17 = v16;
    sub_100008728(v12, &qword_1000CA250, &qword_10009FDF8);
    v18 = sub_1000307A4(v15, v17, &v39);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v14 + 4) = v18;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v13;
    *v35 = v13;
    *(v14 + 22) = 1024;
    *(v14 + 24) = [v13 allowsAccessRequests];

    _os_log_impl(&_mh_execute_header, v5, v6, "saveShare completed CloudDocs (fileURL) operation %s\n %@\n allowsAccessRequests: %{BOOL}d", v14, 0x1Cu);
    sub_100008728(v35, &qword_1000CA8E0, &qword_10009FE08);

    sub_10000670C(v36);

    v38(v9, v37);
  }

  else
  {
    v26 = v0[103];
    v27 = v0[98];

    sub_100008728(v26, &qword_1000CA250, &qword_10009FDF8);
    v8(v9, v10);
  }

  v28 = v0[121];
  v29 = v0[120];
  if (v28)
  {
    sub_100005B1C();
    swift_allocError();
    *v30 = 0xD000000000000032;
    *(v30 + 8) = 0x80000001000A4910;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0;
    *(v30 + 16) = v28;
    *(v30 + 40) = 4;
    swift_willThrow();

LABEL_6:

    v31 = v0[1];

    return v31();
  }

  if (!v29)
  {
    sub_100005B1C();
    swift_allocError();
    *v34 = 0xD000000000000032;
    *(v34 + 8) = 0x80000001000A4910;
    *(v34 + 16) = xmmword_10009FDD0;
    *(v34 + 32) = 0x80000001000A4950;
    *(v34 + 40) = 11;
    swift_willThrow();
    goto LABEL_6;
  }

  v33 = v0[1];

  return v33(v29);
}

uint64_t sub_100008370(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000841C;

  return sub_100012B94(a1, v5, v4);
}

uint64_t sub_10000841C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_100008510(uint64_t a1)
{
  v2 = 0x10000000000;
  if (!*(v1 + 37))
  {
    v2 = 0;
  }

  v3 = 0x1000000000000;
  if (!*(v1 + 38))
  {
    v3 = 0;
  }

  v4 = *(v1 + 32) | (*(v1 + 36) << 32) | v2;
  if (*(v1 + 49))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  sub_100004134(a1, *(v1 + 16), *(v1 + 24), v4 | v3, *(v1 + 40), v5 | *(v1 + 48), *(v1 + 56));
}

unint64_t sub_10000856C()
{
  result = qword_1000CA900;
  if (!qword_1000CA900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000CA900);
  }

  return result;
}

uint64_t sub_1000085B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000093DC;

  return sub_100012E00(a1, v4);
}

uint64_t sub_100008658(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003714(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000086C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003714(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100008728(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003714(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100008788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_10009D9F0();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v4[11] = swift_task_alloc();
  v6 = sub_10009D860();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000088E0, 0, 0);
}

uint64_t sub_1000088E0()
{
  if ((*(v0 + 56) & 0xFE00) != 0x800)
  {
    v7 = *(v0 + 48);
    type metadata accessor for CloudKitOperations(0);
    v8 = swift_allocObject();
    *(v0 + 16) = 0;
    *(v0 + 120) = v8;
    v8[2] = 0xD000000000000021;
    v8[3] = 0x80000001000A4980;
    v8[4] = 0xD000000000000016;
    v8[5] = 0x80000001000A49B0;
    v8[6] = 0xD00000000000001DLL;
    v8[7] = 0x80000001000A49D0;
    *(v0 + 24) = 0;
    sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
    v9 = sub_10009DAC0();
    if (!v7)
    {
      __break(1u);
      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    v17 = *(v0 + 61);
    v19 = *(v0 + 40);
    v18 = *(v0 + 48);
    v20 = swift_task_alloc();
    *(v0 + 128) = v20;
    *(v20 + 16) = v8;
    *(v20 + 24) = v19;
    *(v20 + 32) = v17 & 1;
    *(v20 + 40) = v18;
    v21 = swift_task_alloc();
    *(v0 + 136) = v21;
    *v21 = v0;
    v21[1] = sub_100008C84;
    v16 = &type metadata for Bool;
    v14 = sub_1000093CC;
    v9 = (v0 + 176);
    v12 = 0xD000000000000030;
    v13 = 0x80000001000A48B0;
LABEL_9:
    v10 = 0;
    v11 = 0;
    v15 = v20;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  sub_100008658(*(v0 + 32), v3, &qword_1000CA250, &qword_10009FDF8);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v22 = *(v0 + 112);
    v23 = *(v0 + 40);
    (*(*(v0 + 104) + 32))(v22, *(v0 + 88), *(v0 + 96));
    v20 = swift_task_alloc();
    *(v0 + 152) = v20;
    *(v20 + 16) = v22;
    *(v20 + 24) = v23;
    v9 = swift_task_alloc();
    *(v0 + 160) = v9;
    *v9 = v0;
    v9[1] = sub_100008FE4;
    v14 = sub_1000093C4;
    v12 = 0xD00000000000001ELL;
    v13 = 0x80000001000A4AA0;
    v16 = &type metadata for () + 8;
    goto LABEL_9;
  }

  sub_100008728(*(v0 + 88), &qword_1000CA250, &qword_10009FDF8);
  sub_100005B1C();
  swift_allocError();
  *v4 = 0xD000000000000034;
  *(v4 + 8) = 0x80000001000A4A30;
  *(v4 + 16) = xmmword_10009FDE0;
  *(v4 + 32) = 0x80000001000A4A70;
  *(v4 + 40) = 11;
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100008C84()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100008EBC;
  }

  else
  {

    v2 = sub_100008DA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100008DA0()
{
  v1 = *(v0 + 120);
  swift_setDeallocating();
  v1[3], v2, v3, v4, v5, v6, v7, v8;
  v1[5], v9, v10, v11, v12, v13, v14, v15;
  v1[7], v16, v17, v18, v19, v20, v21, v22;
  v23 = OBJC_IVAR____TtC13SPIHelper_iOS18CloudKitOperations__ckSourceAppBundleID;
  v24 = sub_100003714(&qword_1000CA230, &qword_10009FDB0);
  (*(*(v24 - 8) + 8))(v1 + v23, v24);
  swift_deallocClassInstance();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100008EBC()
{
  v1 = *(v0 + 120);

  swift_setDeallocating();
  v1[3], v2, v3, v4, v5, v6, v7, v8;
  v1[5], v9, v10, v11, v12, v13, v14, v15;
  v1[7], v16, v17, v18, v19, v20, v21, v22;
  v23 = OBJC_IVAR____TtC13SPIHelper_iOS18CloudKitOperations__ckSourceAppBundleID;
  v24 = sub_100003714(&qword_1000CA230, &qword_10009FDB0);
  (*(*(v24 - 8) + 8))(v1 + v23, v24);
  swift_deallocClassInstance();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100008FE4()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_100009190;
  }

  else
  {

    v2 = sub_100009100;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100009100()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100009190()
{

  sub_10009D9D0();
  swift_errorRetain();
  v1 = sub_10009D9E0();
  v2 = sub_10009DFD0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "stopSharing failed with error: %@", v3, 0xCu);
    sub_100008728(v4, &qword_1000CA8E0, &qword_10009FE08);
  }

  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];

  (*(v10 + 8))(v9, v11);
  v12 = sub_10009D7A0();
  sub_100005B1C();
  swift_allocError();
  *v13 = 0xD000000000000034;
  *(v13 + 8) = 0x80000001000A4A30;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 16) = v12;
  *(v13 + 40) = 8;
  swift_willThrow();

  (*(v7 + 8))(v6, v8);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000093E0()
{
  v1[62] = v0;
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v1[63] = swift_task_alloc();
  v2 = sub_10009D860();
  v1[64] = v2;
  v1[65] = *(v2 - 8);
  v1[66] = swift_task_alloc();
  sub_10009DF10();
  v1[67] = sub_10009DF00();
  v4 = sub_10009DED0();
  v1[68] = v4;
  v1[69] = v3;

  return _swift_task_switch(sub_100009510, v4, v3);
}

uint64_t sub_100009510()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if ((*(v1 + 48))(v2, 1, v3) == 1)
  {
    v4 = v0[63];

    sub_10000AF84(v4);
    sub_100005B1C();
    swift_allocError();
    *v5 = xmmword_10009FE50;
    *(v5 + 16) = xmmword_10009FE60;
    *(v5 + 32) = 0x80000001000A4BE0;
    *(v5 + 40) = 11;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v0[65] + 32))(v0[66], v0[63], v0[64]);
    v8 = [objc_allocWithZone(LPiCloudSharingMetadata) init];
    v0[70] = v8;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    v9 = v0[59];
    if (v9)
    {
      v10 = sub_10009DD50();
      v9, v11, v12, v13, v14, v15, v16, v17;
    }

    else
    {
      v10 = 0;
    }

    [v8 setApplicationBundleIdenfier:v10];

    sub_10000AFEC();
    v19 = v18;
    v20 = sub_10009DD50();
    v19, v21, v22, v23, v24, v25, v26, v27;
    [v8 setApplication:v20];

    sub_10000A33C();
    v29 = v28;
    v30 = sub_10009DD50();
    v29, v31, v32, v33, v34, v35, v36, v37;
    [v8 setTitle:v30];

    v38 = sub_10000A5D0();
    [v8 setIcon:v38];

    v39 = [objc_allocWithZone(LPLinkMetadata) init];
    v0[71] = v39;
    sub_10009D800(v40);
    v42 = v41;
    [v39 setURL:v41];

    [v39 setSpecialization:v8];
    v43 = objc_allocWithZone(LPLinkHTMLTextGenerator);
    sub_10009D800(v44);
    v46 = v45;
    v47 = [v43 initWithURL:v45];
    v0[72] = v47;

    [v47 setMetadata:v39];
    v0[2] = v0;
    v0[7] = v0 + 60;
    v0[3] = sub_100009974;
    v48 = swift_continuation_init();
    v0[57] = sub_100003714(&qword_1000CA280, &qword_10009FFC0);
    v0[50] = _NSConcreteStackBlock;
    v0[51] = 1107296256;
    v0[52] = sub_10000A9C0;
    v0[53] = &unk_1000C20F0;
    v0[54] = v48;
    [v47 generateHTMLFragmentString:v0 + 50];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_100009974()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 584) = v2;
  v3 = *(v1 + 552);
  v4 = *(v1 + 544);
  if (v2)
  {
    v5 = sub_10000A268;
  }

  else
  {
    v5 = sub_100009AA4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100009AA4()
{
  v105 = v0[72];
  v106 = v0[71];
  v107 = v0[70];
  v108 = v0[65];
  v109 = v0[64];
  v110 = v0[66];

  v103 = v0[61];
  v104 = v0[60];
  sub_100003714(&qword_1000CA288, &qword_10009FFC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10009FE70;
  *(inited + 32) = 7;
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v91._countAndFlagsBits = 0x80000001000A4C60;
  v112._object = 0x80000001000A4C30;
  v112._countAndFlagsBits = 0xD00000000000002FLL;
  v124.value._countAndFlagsBits = 0;
  v124.value._object = 0;
  v4.super.isa = v3;
  v136._countAndFlagsBits = 0;
  v136._object = 0xE000000000000000;
  v5 = sub_10009D680(v112, v124, v4, v136, 0xD00000000000003CLL, v91);
  v7 = v6;

  *(inited + 40) = v5;
  *(inited + 48) = v7;
  *(inited + 56) = 8;
  v92._object = " '<br>' indicates blank line";
  v8 = [v2 mainBundle];
  v92._countAndFlagsBits = 0x80000001000A4CE0;
  v113._countAndFlagsBits = 0xD000000000000031;
  v113._object = 0x80000001000A4CA0;
  v125.value._countAndFlagsBits = 0;
  v125.value._object = 0;
  v9.super.isa = v8;
  v137._countAndFlagsBits = 0;
  v137._object = 0xE000000000000000;
  v10 = sub_10009D680(v113, v125, v9, v137, 0xD00000000000003ELL, v92);
  v12 = v11;

  *(inited + 64) = v10;
  *(inited + 72) = v12;
  *(inited + 80) = 9;
  v13 = [v2 mainBundle];
  v93._countAndFlagsBits = 0x80000001000A4D50;
  v114._object = 0x80000001000A4D20;
  v114._countAndFlagsBits = 0xD00000000000002FLL;
  v126.value._countAndFlagsBits = 0;
  v126.value._object = 0;
  v14.super.isa = v13;
  v138._countAndFlagsBits = 0;
  v138._object = 0xE000000000000000;
  v15 = sub_10009D680(v114, v126, v14, v138, 0xD00000000000003CLL, v93);
  v17 = v16;

  *(inited + 88) = v15;
  *(inited + 96) = v17;
  *(inited + 104) = 11;
  v18 = [v2 mainBundle];
  v94._countAndFlagsBits = 0x80000001000A4DD0;
  v115._object = 0x80000001000A4D90;
  v115._countAndFlagsBits = 0xD000000000000030;
  v127.value._countAndFlagsBits = 0;
  v127.value._object = 0;
  v19.super.isa = v18;
  v139._countAndFlagsBits = 0;
  v139._object = 0xE000000000000000;
  v20 = sub_10009D680(v115, v127, v19, v139, 0xD00000000000003DLL, v94);
  v22 = v21;

  *(inited + 112) = v20;
  *(inited + 120) = v22;
  *(inited + 128) = 0;
  v23 = [v2 mainBundle];
  v95._countAndFlagsBits = 0x80000001000A4CE0;
  v116._countAndFlagsBits = 0xD000000000000031;
  v116._object = (v95._object | 0x8000000000000000);
  v128.value._countAndFlagsBits = 0;
  v128.value._object = 0;
  v24.super.isa = v23;
  v140._countAndFlagsBits = 0;
  v140._object = 0xE000000000000000;
  v25 = sub_10009D680(v116, v128, v24, v140, 0xD00000000000003ELL, v95);
  v27 = v26;

  *(inited + 136) = v25;
  *(inited + 144) = v27;
  *(inited + 152) = 1;
  v28 = [v2 mainBundle];
  v96._countAndFlagsBits = 0x80000001000A4E50;
  v117._countAndFlagsBits = 0xD000000000000033;
  v117._object = 0x80000001000A4E10;
  v129.value._countAndFlagsBits = 0;
  v129.value._object = 0;
  v29.super.isa = v28;
  v141._countAndFlagsBits = 0;
  v141._object = 0xE000000000000000;
  v30 = sub_10009D680(v117, v129, v29, v141, 0xD000000000000040, v96);
  v32 = v31;

  *(inited + 160) = v30;
  *(inited + 168) = v32;
  *(inited + 176) = 2;
  v33 = [v2 mainBundle];
  v97._countAndFlagsBits = 0x80000001000A4EE0;
  v118._countAndFlagsBits = 0xD000000000000036;
  v118._object = 0x80000001000A4EA0;
  v130.value._countAndFlagsBits = 0;
  v130.value._object = 0;
  v34.super.isa = v33;
  v142._countAndFlagsBits = 0;
  v142._object = 0xE000000000000000;
  v35 = sub_10009D680(v118, v130, v34, v142, 0xD000000000000043, v97);
  v37 = v36;

  *(inited + 184) = v35;
  *(inited + 192) = v37;
  *(inited + 200) = 3;
  v38 = [v2 mainBundle];
  v98._countAndFlagsBits = 0x80000001000A4F70;
  v119._countAndFlagsBits = 0xD000000000000037;
  v119._object = 0x80000001000A4F30;
  v131.value._countAndFlagsBits = 0;
  v131.value._object = 0;
  v39.super.isa = v38;
  v143._countAndFlagsBits = 0;
  v143._object = 0xE000000000000000;
  v40 = sub_10009D680(v119, v131, v39, v143, 0xD000000000000044, v98);
  v42 = v41;

  *(inited + 208) = v40;
  *(inited + 216) = v42;
  *(inited + 224) = 4;
  v43 = [v2 mainBundle];
  v99._countAndFlagsBits = 0x80000001000A5000;
  v120._object = 0x80000001000A4FC0;
  v120._countAndFlagsBits = 0xD000000000000030;
  v132.value._countAndFlagsBits = 0;
  v132.value._object = 0;
  v44.super.isa = v43;
  v144._countAndFlagsBits = 0;
  v144._object = 0xE000000000000000;
  v45 = sub_10009D680(v120, v132, v44, v144, 0xD00000000000003DLL, v99);
  v47 = v46;

  *(inited + 232) = v45;
  *(inited + 240) = v47;
  *(inited + 248) = 5;
  v48 = [v2 mainBundle];
  v100._countAndFlagsBits = 0x80000001000A5080;
  v121._object = 0x80000001000A5040;
  v121._countAndFlagsBits = 0xD000000000000030;
  v133.value._countAndFlagsBits = 0;
  v133.value._object = 0;
  v49.super.isa = v48;
  v145._countAndFlagsBits = 0;
  v145._object = 0xE000000000000000;
  v50 = sub_10009D680(v121, v133, v49, v145, 0xD00000000000003DLL, v100);
  v52 = v51;

  *(inited + 256) = v50;
  *(inited + 264) = v52;
  *(inited + 272) = 6;
  v53 = [v2 mainBundle];
  v122._countAndFlagsBits = 0xD00000000000002ELL;
  v101._countAndFlagsBits = 0x80000001000A50F0;
  v122._object = 0x80000001000A50C0;
  v134.value._countAndFlagsBits = 0;
  v134.value._object = 0;
  v54.super.isa = v53;
  v146._countAndFlagsBits = 0;
  v146._object = 0xE000000000000000;
  v55 = sub_10009D680(v122, v134, v54, v146, 0xD00000000000003BLL, v101);
  v57 = v56;

  *(inited + 280) = v55;
  *(inited + 288) = v57;
  *(inited + 296) = 13;
  v58 = [v2 mainBundle];
  v123._countAndFlagsBits = 0xD000000000000017;
  v102._countAndFlagsBits = 0x80000001000A5150;
  v123._object = 0x80000001000A5130;
  v135.value._countAndFlagsBits = 0;
  v135.value._object = 0;
  v59.super.isa = v58;
  v147._countAndFlagsBits = 0;
  v147._object = 0xE000000000000000;
  v60 = sub_10009D680(v123, v135, v59, v147, 0xD000000000000028, v102);
  v62 = v61;

  *(inited + 304) = v60;
  *(inited + 312) = v62;
  v63 = sub_100031504(inited);
  swift_setDeallocating();
  sub_100003714(qword_1000CA290, &qword_10009FFD0);
  swift_arrayDestroy();
  sub_100018F60(v63);
  v65 = v64;
  v63, v64, v66, v67, v68, v69, v70, v71;
  sub_100003714(&qword_1000CA258, &qword_10009FE80);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_10009FCE0;
  *(v72 + 56) = &type metadata for String;
  *(v72 + 64) = sub_10000AF28();
  *(v72 + 32) = v104;
  *(v72 + 40) = v103;
  v73 = sub_10009DD60();
  v75 = v74;
  v72, v74, v76, v77, v78, v79, v80, v81;

  v65, v82, v83, v84, v85, v86, v87, v88;
  (*(v108 + 8))(v110, v109);

  v89 = v0[1];

  return v89(v73, v75);
}

uint64_t sub_10000A268()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[66];
  v5 = v0[65];
  v6 = v0[64];

  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

void *sub_10000A33C()
{
  v0 = sub_10009D860();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v7 = v21;
  if (v21)
  {
    sub_10009E0E0();
    v9 = v8;
    v10 = sub_10009E100();
    v9, v11, v12, v13, v14, v15, v16, v17;

    if (v10)
    {
      v22 = v10;
      sub_100003714(&unk_1000CA270, &qword_10009FF68);
      if (swift_dynamicCast())
      {
        return v21;
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if ((*(v1 + 48))(v6, 1, v0))
  {
    sub_10000AF84(v6);
    return 0;
  }

  else
  {
    (*(v1 + 16))(v3, v6, v0);
    sub_10000AF84(v6);
    v19 = sub_10009D7D0();
    (*(v1 + 8))(v3, v0);
    return v19;
  }
}

id sub_10000A5D0()
{
  v0 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  __chkstk_darwin(v0 - 8);
  v2 = &v30 - v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (v31 != 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    v10 = sub_10009D860();
    v11 = (*(*(v10 - 8) + 48))(v2, 1, v10);
    sub_10000AF84(v2);
    if (v11 == 1 || (v12 = *(sub_1000194F8() + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appIcon), v9 = v12, swift_unknownObjectRelease(), !v12))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_10009DAF0();

      if (v30)
      {
        v13 = v30;
        sub_10009E0D0();
        v15 = v14;
        v16 = sub_10009E100();

        v15, v17, v18, v19, v20, v21, v22, v23;
        if (v16)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            swift_unknownObjectRetain();
            v24 = sub_10009D880();
            v26 = v25;
            swift_unknownObjectRelease();
            v27 = objc_allocWithZone(UIImage);
            isa = sub_10009D870().super.isa;
            v9 = [v27 initWithData:isa];

            sub_10000B230(v24, v26);
            swift_unknownObjectRelease();

            if (!v9)
            {
              return v9;
            }

            goto LABEL_14;
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      v29 = *(sub_1000194F8() + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appIcon);
      v9 = v29;
      swift_unknownObjectRelease();
      if (!v29)
      {
        return 0;
      }
    }

LABEL_14:
    v6 = v9;
    v9 = [objc_allocWithZone(LPImage) initWithPlatformImage:v6];
    v7 = v6;
    goto LABEL_15;
  }

  v3 = sub_10009DD50();
  v4 = [objc_opt_self() imageNamed:v3];

  v5 = objc_allocWithZone(LPImageProperties);
  v6 = v4;
  v7 = [v5 init];
  result = [v7 setType:5];
  if (v6)
  {
    v9 = [objc_allocWithZone(LPImage) initWithPlatformImage:v6 properties:v7];

LABEL_15:
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000A9C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000067C8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = sub_10009DD90();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10000AA94(char a1)
{
  v2 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  __chkstk_darwin(v2 - 8);
  v4 = &v77 - v3;
  v5 = sub_10009D860();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A33C();
  v17 = v10;
  v18 = (v10 >> 56) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v18 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    v10, v10, v11, v12, v13, v14, v15, v16;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_10000AF84(v4);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      v44 = sub_10000AFEC();
      v46 = v45;
      v47 = (v45 >> 56) & 0xF;
      if ((v45 & 0x2000000000000000) == 0)
      {
        v47 = v44 & 0xFFFFFFFFFFFFLL;
      }

      if (v47)
      {
        v48 = v44;
        v49 = [objc_opt_self() mainBundle];
        v76._countAndFlagsBits = 0x80000001000A4B60;
        v78._countAndFlagsBits = 0x6620646572616853;
        v78._object = 0xEE004025206D6F72;
        v79.value._countAndFlagsBits = 0;
        v79.value._object = 0;
        v50.super.isa = v49;
        v80._countAndFlagsBits = 0;
        v80._object = 0xE000000000000000;
        sub_10009D680(v78, v79, v50, v80, 0xD000000000000023, v76);
        v52 = v51;

        sub_100003714(&qword_1000CA258, &qword_10009FE80);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_10009FCE0;
        *(v53 + 56) = &type metadata for String;
        *(v53 + 64) = sub_10000AF28();
        *(v53 + 32) = v48;
        *(v53 + 40) = v46;
        v29 = sub_10009DD60();
        v52, v54, v55, v56, v57, v58, v59, v60;
        v53, v61, v62, v63, v64, v65, v66, v67;
        (*(v6 + 8))(v8, v5);
        return v29;
      }

      (*(v6 + 8))(v8, v5);
      v46, v68, v69, v70, v71, v72, v73, v74;
    }

    return 0;
  }

  v19 = v9;
  v20 = [objc_opt_self() mainBundle];
  if (a1)
  {
    v76._countAndFlagsBits = 0x80000001000A4B30;
    v22._object = 0x80000001000A4B10;
    v21 = 0xD000000000000025;
    v22._countAndFlagsBits = 0xD000000000000014;
    v23.value._countAndFlagsBits = 0;
    v23.value._object = 0;
    v24.super.isa = v20;
    v25._countAndFlagsBits = 16421;
    v25._object = 0xE200000000000000;
  }

  else
  {
    v76._countAndFlagsBits = 0x80000001000A4AE0;
    v25._countAndFlagsBits = 0x9D80E240259C80E2;
    v22._object = 0x80000001000A4AC0;
    v21 = 0xD000000000000024;
    v22._countAndFlagsBits = 0x1000000000000019;
    v23.value._countAndFlagsBits = 0;
    v23.value._object = 0;
    v24.super.isa = v20;
    v25._object = 0xA800000000000000;
  }

  sub_10009D680(v22, v23, v24, v25, v21, v76);
  v27 = v26;

  sub_100003714(&qword_1000CA258, &qword_10009FE80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10009FCE0;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = sub_10000AF28();
  *(v28 + 32) = v19;
  *(v28 + 40) = v17;
  v29 = sub_10009DD60();
  v27, v30, v31, v32, v33, v34, v35, v36;
  v28, v37, v38, v39, v40, v41, v42, v43;
  return v29;
}

unint64_t sub_10000AF28()
{
  result = qword_1000CA260;
  if (!qword_1000CA260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA260);
  }

  return result;
}

uint64_t sub_10000AF84(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000AFEC()
{
  sub_10009D840();
  v1 = v0;
  sub_10000B1A4();
  v2 = sub_10009E160();
  v1, v3, v4, v5, v6, v7, v8, v9;
  if (*(v2 + 16) <= 1uLL)
  {
    v2, v10, v11, v12, v13, v14, v15, v16;
    v17 = 0;
    v18 = 0xE000000000000000;
    goto LABEL_3;
  }

  v26 = *(v2 + 56);

  v2, v27, v28, v29, v30, v31, v32, v33;
  v17 = sub_10009E170();
  v18 = v34;
  v26, v34, v35, v36, v37, v38, v39, v40;
  if (v17 != 0x726464756F6C6349 || v18 != 0xEB00000000657669)
  {
LABEL_3:
    if ((sub_10009E2E0() & 1) == 0)
    {
      return v17;
    }
  }

  v18, v19, v20, v21, v22, v23, v24, v25;
  v41 = [objc_opt_self() mainBundle];
  v44._countAndFlagsBits = 0x80000001000A4B90;
  v45._countAndFlagsBits = 0x442064756F6C4369;
  v45._object = 0xEC00000065766972;
  v46.value._countAndFlagsBits = 0;
  v46.value._object = 0;
  v42.super.isa = v41;
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  v17 = sub_10009D680(v45, v46, v42, v47, 0xD000000000000044, v44);

  return v17;
}

unint64_t sub_10000B1A4()
{
  result = qword_1000CA268;
  if (!qword_1000CA268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA268);
  }

  return result;
}

uint64_t sub_10000B230(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_10000B284()
{
  v165 = sub_10009D9F0();
  v167 = *(v165 - 8);
  v1 = __chkstk_darwin(v165);
  v163 = &v156 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v161 = &v156 - v4;
  v5 = __chkstk_darwin(v3);
  v162 = &v156 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v156 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v156 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = (&v156 - v14);
  v16 = __chkstk_darwin(v13);
  v18 = &v156 - v17;
  __chkstk_darwin(v16);
  v20 = &v156 - v19;
  v164 = v0;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v21 = v168;
  if (v168)
  {
    return v21;
  }

  v160 = v18;
  v156 = v12;
  v157 = v9;
  v158 = v15;
  v22 = v167;
  sub_10009D9D0();
  v23 = sub_10009D9E0();
  v24 = sub_10009DFF0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "configuredContainer needsBundleIDOverride initially true", v25, 2u);
  }

  v26 = *(v22 + 8);
  v27 = v20;
  v28 = v165;
  v167 = v22 + 8;
  v26(v27, v165);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v29 = v168;
  v159 = v26;
  v30 = v160;
  if (v168)
  {
    sub_10009D9D0();
    v31 = v29;
    v32 = sub_10009D9E0();
    v33 = sub_10009DFF0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v168 = v158;
      *v34 = 136315138;
      v35 = v31;
      v36 = [v35 description];
      v37 = sub_10009DD90();
      LODWORD(v157) = v33;
      v38 = v28;
      v39 = v37;
      v41 = v40;

      v42 = sub_1000307A4(v39, v41, &v168);
      v41, v43, v44, v45, v46, v47, v48, v49;
      *(v34 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v32, v157, "configuredContainer using setupInfo: %s", v34, 0xCu);
      sub_10000670C(v158);

      v159(v30, v38);
    }

    else
    {

      v26(v30, v28);
    }

    v58 = [v31 containerOptions];
    v59 = [v58 applicationBundleIdentifierOverrideForContainerAccess];

    v21 = v166;
    if (v59)
    {

      v60 = 0;
    }

    else
    {

      v60 = 1;
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    v50 = v168;
    if (v168)
    {
      v51 = v158;
      sub_10009D9D0();
      v52 = v50;
      v53 = sub_10009D9E0();
      v54 = sub_10009DFF0();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138412290;
        *(v55 + 4) = v52;
        *v56 = v50;
        v57 = v52;
        _os_log_impl(&_mh_execute_header, v53, v54, "configuredContainer with id: %@", v55, 0xCu);
        sub_10000C2B0(v56);
        v26 = v159;

        v51 = v158;
      }

      else
      {
        v57 = v53;
        v53 = v52;
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      if (v168 != 9)
      {
        v142 = v156;
        sub_10009D9D0();
        v143 = sub_10009D9E0();
        v144 = sub_10009DFD0();
        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          *v145 = 0;
          _os_log_impl(&_mh_execute_header, v143, v144, "configuredContainer throwing as it can't build a container", v145, 2u);
        }

        v26(v142, v28);
        v141 = "configuredContainer()";
        v123 = 0xD000000000000019;
        goto LABEL_36;
      }

      sub_10009DD90();
      v62 = v61;
      sub_10009DDB0();
      v64 = v63;

      v62, v65, v66, v67, v68, v69, v70, v71;
      v72 = objc_allocWithZone(CKContainerID);
      v73 = sub_10009DD50();
      v64, v74, v75, v76, v77, v78, v79, v80;
      v81 = [v72 initWithContainerIdentifier:v73 environment:1];

      sub_1000983D8(v81, 0);

      v51 = v157;
      sub_10009D9D0();

      v53 = sub_10009D9E0();
      v82 = sub_10009DFF0();

      if (os_log_type_enabled(v53, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *v83 = 138412290;
        swift_getKeyPath();
        swift_getKeyPath();

        sub_10009DAF0();

        v26 = v159;

        v51 = v157;

        v85 = v168;
        *(v83 + 4) = v168;
        *v84 = v85;
        _os_log_impl(&_mh_execute_header, v53, v82, "configuredContainer with containerID: %@", v83, 0xCu);
        sub_10000C2B0(v84);
      }
    }

    v26(v51, v28);
    v60 = 1;
    v21 = v166;
  }

  sub_1000987EC();

  if (v21)
  {
    return v21;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v21 = v168;
  if (!v168)
  {
LABEL_29:
    v123 = 0xD000000000000033;
    v124 = v163;
    sub_10009D9D0();

    v125 = sub_10009D9E0();
    v126 = sub_10009DFF0();

    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v170 = v128;
      *v127 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v129 = sub_10009DDA0();
      v131 = v130;
      v132 = sub_1000307A4(v129, v130, &v170);
      v131, v133, v134, v135, v136, v137, v138, v139;
      *(v127 + 4) = v132;
      _os_log_impl(&_mh_execute_header, v125, v126, "configuredContainer throwing as it doesn't have a container or nil sourceAppBundleID: %s", v127, 0xCu);
      sub_10000670C(v128);

      v140 = v163;
    }

    else
    {

      v140 = v124;
    }

    v159(v140, v165);
    v141 = "can't build a CKContainer";
LABEL_36:
    v21 = 0x80000001000A5180;
    v146 = v141 | 0x8000000000000000;
    sub_100005B1C();
    swift_allocError();
    *v147 = 0xD000000000000015;
    *(v147 + 8) = 0x80000001000A5180;
    *(v147 + 16) = 0;
    *(v147 + 24) = v123;
    *(v147 + 32) = v146;
    *(v147 + 40) = 10;
    swift_willThrow();
    return v21;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v86 = v169;
  if (!v169)
  {

    goto LABEL_29;
  }

  v166 = 0;
  v87 = v165;
  v88 = v168;
  v89 = v162;
  sub_10009D9D0();
  v90 = sub_10009D9E0();
  v91 = sub_10009DFF0();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 67109120;
    *(v92 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v90, v91, "configuredContainer about to return container, needsBundleIDOverride: %{BOOL}d", v92, 8u);
    v89 = v162;
  }

  v159(v89, v87);
  if (v60)
  {
    v100 = [v21 options];
    v101 = sub_10009DD50();
    [v100 setApplicationBundleIdentifierOverride:v101];

    v102 = v161;
    sub_10009D9D0();

    v103 = sub_10009D9E0();
    v104 = sub_10009DFF0();
    v86, v105, v106, v107, v108, v109, v110, v111;
    if (os_log_type_enabled(v103, v104))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v168 = v113;
      *v112 = 136315138;
      v114 = sub_1000307A4(v88, v86, &v168);
      v86, v115, v116, v117, v118, v119, v120, v121;
      *(v112 + 4) = v114;
      _os_log_impl(&_mh_execute_header, v103, v104, "configuredContainer options applicationBundleIDOverride set to: %s", v112, 0xCu);
      sub_10000670C(v113);

      v122 = v161;
    }

    else
    {

      v86, v149, v150, v151, v152, v153, v154, v155;
      v122 = v102;
    }

    v159(v122, v87);
  }

  else
  {
    v86, v93, v94, v95, v96, v97, v98, v99;
  }

  return v21;
}

uint64_t sub_10000C0AC@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  *a4 = v6;
  return result;
}

uint64_t sub_10000C13C(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;

  return sub_10009DB00();
}

uint64_t sub_10000C2B0(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000CA8E0, &qword_10009FE08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Publishers.CSCombineLatest5.init(_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v24[0] = a6;
  v24[1] = a7;
  v24[2] = a8;
  v24[3] = a10;
  v24[4] = a11;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  v21 = type metadata accessor for Publishers.CSCombineLatest5(0, v24);
  (*(*(a7 - 8) + 32))(a9 + v21[25], a2, a7);
  (*(*(a8 - 8) + 32))(a9 + v21[26], a3, a8);
  (*(*(a10 - 8) + 32))(a9 + v21[27], a4, a10);
  return (*(*(a11 - 8) + 32))(a9 + v21[28], a5, a11);
}

uint64_t Publishers.CSCombineLatest5.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = a3;
  v78 = a4;
  v79 = a1;
  v87 = *(a2 + 32);
  AssociatedTypeWitness = v87;
  v92 = *(a2 + 72);
  v84 = v92;
  v85 = *(a2 + 16);
  v56[1] = *(&v85 + 1);
  v63 = v85;
  v89 = v85;
  v86 = *(a2 + 56);
  v68 = v86;
  v91 = v86;
  v65 = *(&v86 + 1);
  v88 = sub_10009DA10();
  v5 = *(a2 + 40);
  v81 = *(a2 + 48);
  v82 = &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>;
  WitnessTable = swift_getWitnessTable();
  v6 = *(a2 + 80);
  v92 = *(a2 + 88);
  v70 = v6;
  v67 = v92;
  v83 = sub_10009DA10();
  *&v89 = swift_getAssociatedTypeWitness();
  v7 = *(&v85 + 1);
  *(&v89 + 1) = swift_getAssociatedTypeWitness();
  v8 = v87;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = v5;
  *&v91 = swift_getAssociatedTypeWitness();
  *(&v91 + 1) = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v9 = v83;
  v72 = swift_getWitnessTable();
  v74 = sub_10009DA60();
  v75 = *(v74 - 8);
  v10 = __chkstk_darwin(v74);
  v69 = v56 - v11;
  v64 = *(v81 - 8);
  v12 = __chkstk_darwin(v10);
  v62 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *(v5 - 8);
  v14 = __chkstk_darwin(v12);
  v59 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(v9 - 8);
  v16 = __chkstk_darwin(v14);
  v82 = v56 - v17;
  v18 = *(v8 - 8);
  v19 = __chkstk_darwin(v16);
  v58 = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v7;
  v22 = *(v7 - 8);
  v23 = __chkstk_darwin(v19);
  v25 = v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v63;
  v27 = __chkstk_darwin(v23);
  v29 = v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *(v88 - 8);
  v30 = __chkstk_darwin(v27);
  v32 = v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = v56 - v33;
  v36 = v71;
  (*(v35 + 16))(v29, v71, v26);
  (*(v22 + 16))(v25, v36 + *(a2 + 100), v21);
  (*(v18 + 16))(v58, v36 + *(a2 + 104), v87);
  v57 = v34;
  sub_10009DA20();
  (*(v80 + 16))(v32, v34, v88);
  v37 = v61;
  (*(v60 + 16))(v59, v36 + *(a2 + 108), v61);
  v38 = v36 + *(a2 + 112);
  v39 = v81;
  (*(v64 + 16))(v62, v38, v81);
  v40 = v67;
  v41 = v37;
  v42 = v70;
  sub_10009DA20();
  v43 = swift_allocObject();
  v44 = v87;
  *&v45 = v87;
  *(&v45 + 1) = v41;
  *(v43 + 32) = v45;
  *(v43 + 16) = v85;
  v47 = v77;
  v46 = v78;
  *(v43 + 48) = v39;
  *(v43 + 56) = v47;
  v48 = v84;
  *&v45 = v84;
  *(&v45 + 1) = v42;
  *(v43 + 80) = v45;
  *(v43 + 64) = v86;
  *(v43 + 96) = v40;
  *(v43 + 104) = v46;
  v49 = swift_allocObject();
  v50 = v86;
  *(v49 + 16) = v85;
  *(v49 + 32) = v44;
  *(v49 + 40) = v41;
  *(v49 + 48) = v39;
  *(v49 + 56) = v47;
  *(v49 + 64) = v50;
  *(v49 + 80) = v48;
  *(v49 + 88) = v42;
  *(v49 + 96) = v40;
  *(v49 + 104) = v46;
  *(v49 + 112) = sub_10000D398;
  *(v49 + 120) = v43;
  v51 = v69;
  v53 = v82;
  v52 = v83;
  sub_10009DB30();

  v54 = v74;
  sub_10009DA50();
  (*(v75 + 8))(v51, v54);
  (*(v66 + 8))(v53, v52);
  return (*(v80 + 8))(v57, v88);
}

uint64_t sub_10000CEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v65 = a7;
  v66 = a8;
  v67 = a1;
  v68 = a2;
  v75 = a21;
  v73 = a4;
  v74 = a15;
  v76 = a10;
  v77 = a5;
  v71 = a3;
  v72 = a9;
  v69 = a14;
  v70 = a20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v26 = *(TupleTypeMetadata3 - 8);
  v27 = __chkstk_darwin(TupleTypeMetadata3);
  v63 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v78 = &v60 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v60 - v32;
  __chkstk_darwin(v31);
  v35 = &v60 - v34;
  v36 = *(AssociatedTypeWitness - 8);
  v37 = *(v36 + 16);
  v62 = AssociatedTypeWitness;
  v37(&v60 - v34, a6, AssociatedTypeWitness);
  v38 = *(TupleTypeMetadata3 + 48);
  v60 = v23;
  v39 = *(v23 - 8);
  (*(v39 + 16))(&v35[v38], v65, v23);
  v40 = *(TupleTypeMetadata3 + 64);
  v61 = v24;
  v41 = *(v24 - 8);
  (*(v41 + 16))(&v35[v40], v66, v24);
  v42 = *(v26 + 16);
  v64 = v33;
  v42(v33, v35, TupleTypeMetadata3);
  v43 = *(TupleTypeMetadata3 + 48);
  v65 = *(TupleTypeMetadata3 + 64);
  v66 = v43;
  (*(v36 + 32))(v67, v33, AssociatedTypeWitness);
  v44 = v78;
  v42(v78, v35, TupleTypeMetadata3);
  v45 = *(TupleTypeMetadata3 + 48);
  v67 = *(TupleTypeMetadata3 + 64);
  v46 = v60;
  (*(v39 + 32))(v68, &v44[v45], v60);
  v47 = v63;
  (*(v26 + 32))(v63, v35, TupleTypeMetadata3);
  v48 = *(TupleTypeMetadata3 + 48);
  v49 = v61;
  (*(v41 + 32))(v71, &v47[*(TupleTypeMetadata3 + 64)], v61);
  v50 = swift_getAssociatedTypeWitness();
  (*(*(v50 - 8) + 16))(v73, v72, v50);
  v51 = swift_getAssociatedTypeWitness();
  (*(*(v51 - 8) + 16))(v77, v76, v51);
  v52 = *(v39 + 8);
  v53 = v46;
  v52(&v47[v48], v46);
  v54 = *(v36 + 8);
  v55 = v62;
  v54(v47, v62);
  v56 = *(v41 + 8);
  v57 = v78;
  v56(&v78[v67], v49);
  v54(v57, v55);
  v58 = v64;
  v56(&v64[v65], v49);
  return (v52)(&v58[v66], v53);
}

uint64_t sub_10000D3E0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v17 = *(TupleTypeMetadata3 + 48);
  v23 = *(TupleTypeMetadata3 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v18 = swift_getTupleTypeMetadata3();
  v19 = a1 + *(v18 + 48);
  v20 = a1 + *(v18 + 64);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  return a2(a8, a8 + TupleTypeMetadata[12], a8 + TupleTypeMetadata[16], a8 + TupleTypeMetadata[20], a8 + TupleTypeMetadata[24], a1, a1 + v17, a1 + v23, v19, v20);
}

uint64_t sub_10000D5A8()
{

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t Publishers.CSCombineLatest6.init(_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v27[0] = a7;
  v27[1] = a8;
  v27[2] = a10;
  v27[3] = a11;
  v27[4] = a12;
  v27[5] = a13;
  v28 = a14;
  v29 = a15;
  v30 = a16;
  v31 = a17;
  v21 = type metadata accessor for Publishers.CSCombineLatest6(0, v27);
  (*(*(a8 - 8) + 32))(a9 + v21[29], a2, a8);
  (*(*(a10 - 8) + 32))(a9 + v21[30], a3, a10);
  (*(*(a11 - 8) + 32))(a9 + v21[31], a4, a11);
  (*(*(a12 - 8) + 32))(a9 + v21[32], a5, a12);
  return (*(*(a13 - 8) + 32))(a9 + v21[33], a6, a13);
}

uint64_t Publishers.CSCombineLatest6.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a4;
  v81 = a3;
  v83 = a1;
  v91 = *(a2 + 16);
  v68 = v91;
  v94 = v91;
  v58[1] = *(&v91 + 1);
  v84 = *(a2 + 32);
  AssociatedTypeWitness = v84;
  v90 = *(a2 + 64);
  v72 = v90;
  v96 = v90;
  v71 = *(&v90 + 1);
  v97 = *(a2 + 80);
  *&v89 = v97;
  v88 = sub_10009DA10();
  v5 = *(a2 + 40);
  v93 = *(a2 + 48);
  WitnessTable = swift_getWitnessTable();
  v6 = *(a2 + 88);
  v7 = *(a2 + 96);
  *v86 = v93;
  v74 = v6;
  v92 = v7;
  v98 = v7;
  v85 = *(&v7 + 1);
  v87 = sub_10009DA30();
  *&v94 = swift_getAssociatedTypeWitness();
  v8 = *(&v91 + 1);
  *(&v94 + 1) = swift_getAssociatedTypeWitness();
  v9 = v84;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = v5;
  v64 = v5;
  *&v96 = swift_getAssociatedTypeWitness();
  v11 = v93;
  *(&v96 + 1) = swift_getAssociatedTypeWitness();
  v97 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v12 = v87;
  v76 = swift_getWitnessTable();
  v78 = sub_10009DA60();
  v79 = *(v78 - 8);
  v13 = __chkstk_darwin(v78);
  v73 = v58 - v14;
  v69 = *(*(&v93 + 1) - 8);
  v15 = __chkstk_darwin(v13);
  v67 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(v11 - 8);
  v17 = __chkstk_darwin(v15);
  v65 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(v10 - 8);
  v19 = __chkstk_darwin(v17);
  v62 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(v12 - 8);
  v21 = __chkstk_darwin(v19);
  v85 = v58 - v22;
  v23 = *(v9 - 8);
  v24 = __chkstk_darwin(v21);
  v59 = v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v8;
  v27 = *(v8 - 8);
  v28 = __chkstk_darwin(v24);
  v30 = v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v68;
  v32 = __chkstk_darwin(v28);
  v34 = v58 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(v88 - 8);
  v35 = v61;
  v36 = __chkstk_darwin(v32);
  v58[0] = v58 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = v58 - v38;
  v41 = v75;
  (*(v40 + 16))(v34, v75, v31);
  (*(v27 + 16))(v30, v41 + *(a2 + 116), v26);
  v42 = v84;
  (*(v23 + 16))(v59, v41 + *(a2 + 120), v84);
  v60 = v39;
  sub_10009DA20();
  v43 = v88;
  (*(v35 + 16))(v58[0], v39, v88);
  v44 = v64;
  (*(v63 + 16))(v62, v41 + *(a2 + 124), v64);
  (*(v66 + 16))(v65, v41 + *(a2 + 128), *v86);
  (*(v69 + 16))(v67, v41 + *(a2 + 132), *&v86[8]);
  v45 = v74;
  v46 = v44;
  sub_10009DA40();
  v47 = swift_allocObject();
  *&v48 = v42;
  *(&v48 + 1) = v46;
  *&v86[8] = v48;
  *(v47 + 32) = v48;
  *(v47 + 16) = v91;
  *(v47 + 48) = v93;
  v49 = v81;
  *(v47 + 64) = v81;
  *&v48 = v89;
  *(&v48 + 1) = v45;
  v89 = v48;
  *(v47 + 88) = v48;
  *(v47 + 72) = v90;
  *(v47 + 104) = v92;
  v50 = v82;
  *(v47 + 120) = v82;
  v51 = swift_allocObject();
  v52 = v93;
  *(v51 + 16) = v91;
  *(v51 + 32) = *&v86[8];
  *(v51 + 48) = v52;
  *(v51 + 64) = v49;
  *(v51 + 72) = v90;
  *(v51 + 104) = v92;
  *(v51 + 88) = v89;
  *(v51 + 120) = v50;
  *(v51 + 128) = sub_10000E948;
  *(v51 + 136) = v47;
  v53 = v73;
  v54 = v87;
  v55 = v85;
  sub_10009DB30();

  v56 = v78;
  sub_10009DA50();
  (*(v79 + 8))(v53, v56);
  (*(v70 + 8))(v55, v54);
  return (*(v61 + 8))(v60, v43);
}

uint64_t sub_10000E3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v71 = a8;
  v72 = a1;
  v73 = a2;
  v85 = a12;
  v86 = a6;
  v80 = a4;
  v81 = a11;
  v83 = a25;
  v84 = a5;
  v82 = a18;
  v78 = a17;
  v79 = a24;
  v76 = a3;
  v77 = a10;
  v70 = a9;
  v74 = a16;
  v75 = a23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedTypeWitness();
  v28 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v30 = *(TupleTypeMetadata3 - 8);
  v31 = __chkstk_darwin(TupleTypeMetadata3);
  v67 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v66 = &v64 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v64 - v36;
  __chkstk_darwin(v35);
  v39 = &v64 - v38;
  v40 = AssociatedTypeWitness;
  v41 = *(AssociatedTypeWitness - 8);
  v42 = *(v41 + 16);
  v68 = v40;
  v42(&v64 - v38, a7, v40);
  v43 = *(TupleTypeMetadata3 + 48);
  v64 = v27;
  v44 = *(v27 - 8);
  (*(v44 + 16))(&v39[v43], v71, v27);
  v45 = *(TupleTypeMetadata3 + 64);
  v65 = v28;
  v46 = *(v28 - 8);
  (*(v46 + 16))(&v39[v45], v70, v28);
  v47 = *(v30 + 16);
  v69 = v37;
  v47(v37, v39, TupleTypeMetadata3);
  v48 = *(TupleTypeMetadata3 + 48);
  v70 = *(TupleTypeMetadata3 + 64);
  v71 = v48;
  (*(v41 + 32))(v72, v37, v40);
  v49 = v66;
  v47(v66, v39, TupleTypeMetadata3);
  v50 = *(TupleTypeMetadata3 + 48);
  v72 = *(TupleTypeMetadata3 + 64);
  v51 = v64;
  (*(v44 + 32))(v73, &v49[v50], v64);
  v52 = v67;
  (*(v30 + 32))(v67, v39, TupleTypeMetadata3);
  v73 = *(TupleTypeMetadata3 + 48);
  v53 = v65;
  (*(v46 + 32))(v76, &v52[*(TupleTypeMetadata3 + 64)], v65);
  v54 = swift_getAssociatedTypeWitness();
  (*(*(v54 - 8) + 16))(v80, v77, v54);
  v55 = swift_getAssociatedTypeWitness();
  (*(*(v55 - 8) + 16))(v84, v81, v55);
  v56 = swift_getAssociatedTypeWitness();
  (*(*(v56 - 8) + 16))(v86, v85, v56);
  v57 = *(v44 + 8);
  v58 = v51;
  v57(&v52[v73], v51);
  v59 = *(v41 + 8);
  v60 = v68;
  v59(v52, v68);
  v61 = *(v46 + 8);
  v61(&v49[v72], v53);
  v59(v49, v60);
  v62 = v69;
  v61(&v69[v70], v53);
  return (v57)(&v62[v71], v58);
}

uint64_t sub_10000E998@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v25 = a1 + *(TupleTypeMetadata3 + 64);
  v26 = *(TupleTypeMetadata3 + 48);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v20 = a1 + TupleTypeMetadata[12];
  v21 = a1 + TupleTypeMetadata[16];
  v22 = a1 + TupleTypeMetadata[20];
  v23 = swift_getTupleTypeMetadata();
  return a2(a8, a8 + v23[12], a8 + v23[16], a8 + v23[20], a8 + v23[24], a8 + v23[28], a1, a1 + v26, v25, v20, v21, v22);
}

uint64_t sub_10000EBAC()
{

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t Publishers.CSCombineLatest7.init(_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19)
{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v29[0] = a8;
  v29[1] = a10;
  v29[2] = a11;
  v29[3] = a12;
  v29[4] = a13;
  v29[5] = a14;
  v29[6] = a15;
  v30 = a16;
  v31 = a17;
  v32 = a18;
  v33 = a19;
  v22 = type metadata accessor for Publishers.CSCombineLatest7(0, v29);
  (*(*(a10 - 8) + 32))(a9 + v22[33], a2, a10);
  (*(*(a11 - 8) + 32))(a9 + v22[34], a3, a11);
  (*(*(a12 - 8) + 32))(a9 + v22[35], a4, a12);
  (*(*(a13 - 8) + 32))(a9 + v22[36], a5, a13);
  (*(*(a14 - 8) + 32))(a9 + v22[37], a6, a14);
  return (*(*(a15 - 8) + 32))(a9 + v22[38], a7, a15);
}

uint64_t Publishers.CSCombineLatest7.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v97 = a4;
  v96 = a3;
  v98 = a1;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  v11 = *(a2 + 96);
  v115 = *(a2 + 88);
  v116 = v7;
  v114 = v11;
  v117 = v6;
  AssociatedTypeWitness = v6;
  v119 = v5;
  v120 = v7;
  v110 = v5;
  v121 = v8;
  v122 = v9;
  v107 = v9;
  v108 = v8;
  v123 = v10;
  v124 = v115;
  v106 = v10;
  v125 = v11;
  v12 = sub_10009DA30();
  v13 = *(a2 + 56);
  v109 = *(a2 + 48);
  v111 = v13;
  v112 = *(a2 + 64);
  v113 = v12;
  v102 = &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>;
  WitnessTable = swift_getWitnessTable();
  v14 = *(a2 + 112);
  v15 = *(a2 + 120);
  v88 = *(a2 + 104);
  v125 = v15;
  v105 = v14;
  v104 = v15;
  v103 = sub_10009DA30();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v119 = swift_getAssociatedTypeWitness();
  v16 = v116;
  v120 = swift_getAssociatedTypeWitness();
  v17 = v108;
  v121 = swift_getAssociatedTypeWitness();
  v18 = v109;
  v122 = swift_getAssociatedTypeWitness();
  v123 = swift_getAssociatedTypeWitness();
  v124 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v19 = v103;
  v91 = swift_getWitnessTable();
  v93 = sub_10009DA60();
  v94 = *(v93 - 8);
  v20 = __chkstk_darwin(v93);
  v89 = &v79 - v21;
  v86 = *(v112 - 8);
  v22 = __chkstk_darwin(v20);
  v85 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(v13 - 8);
  v24 = __chkstk_darwin(v22);
  v83 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(v18 - 8);
  v26 = __chkstk_darwin(v24);
  v81 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = *(v19 - 8);
  v28 = __chkstk_darwin(v26);
  v102 = &v79 - v29;
  v79 = *(v17 - 8);
  v30 = __chkstk_darwin(v28);
  v80 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v16 - 8);
  v33 = __chkstk_darwin(v30);
  v35 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v110;
  v37 = *(v110 - 8);
  v38 = __chkstk_darwin(v33);
  v40 = &v79 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v38);
  v43 = &v79 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = *(v113 - 8);
  v44 = __chkstk_darwin(v41);
  v99 = &v79 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v100 = &v79 - v46;
  v48 = v90;
  (*(v47 + 16))(v43, v90);
  (*(v37 + 16))(v40, v48 + *(a2 + 132), v36);
  (*(v32 + 16))(v35, v48 + *(a2 + 136), v116);
  (*(v79 + 16))(v80, v48 + *(a2 + 140), v108);
  v49 = v100;
  sub_10009DA40();
  (*(v101 + 16))(v99, v49, v113);
  v50 = v109;
  (*(v82 + 16))(v81, v48 + *(a2 + 144), v109);
  v51 = v111;
  (*(v84 + 16))(v83, v48 + *(a2 + 148), v111);
  v52 = v48 + *(a2 + 152);
  v53 = v112;
  (*(v86 + 16))(v85, v52, v112);
  v54 = v104;
  v55 = v105;
  v56 = v88;
  v57 = v50;
  v58 = v51;
  v59 = v53;
  sub_10009DA40();
  v60 = swift_allocObject();
  v61 = v110;
  v60[2] = v117;
  v60[3] = v61;
  v62 = v115;
  v63 = v108;
  v60[4] = v116;
  v60[5] = v63;
  v60[6] = v57;
  v60[7] = v58;
  v64 = v96;
  v60[8] = v59;
  v60[9] = v64;
  v66 = v106;
  v65 = v107;
  v60[10] = v107;
  v60[11] = v66;
  v67 = v114;
  v60[12] = v62;
  v60[13] = v67;
  v60[14] = v56;
  v60[15] = v55;
  v60[16] = v54;
  v68 = v97;
  v60[17] = v97;
  v69 = swift_allocObject();
  v70 = v110;
  v69[2] = v117;
  v69[3] = v70;
  v69[4] = v116;
  v69[5] = v63;
  v72 = v111;
  v71 = v112;
  v69[6] = v109;
  v69[7] = v72;
  v69[8] = v71;
  v69[9] = v64;
  v69[10] = v65;
  v69[11] = v66;
  v69[12] = v62;
  v69[13] = v67;
  v73 = v105;
  v69[14] = v56;
  v69[15] = v73;
  v69[16] = v104;
  v69[17] = v68;
  v69[18] = sub_100010388;
  v69[19] = v60;
  v74 = v89;
  v75 = v103;
  v76 = v102;
  sub_10009DB30();

  v77 = v93;
  sub_10009DA50();
  (*(v94 + 8))(v74, v77);
  (*(v87 + 8))(v76, v75);
  return (*(v101 + 8))(v100, v113);
}

uint64_t sub_10000FB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, uint64_t), void (*a7)(char *, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v117 = a8;
  v110 = a7;
  v108 = a6;
  v104 = a5;
  v100 = a4;
  v97 = a3;
  v96 = a2;
  v95 = a1;
  v106 = a21;
  v107 = a29;
  v109 = a14;
  v105 = a13;
  v103 = a28;
  v99 = a27;
  v102 = a20;
  v98 = a19;
  v101 = a12;
  v94 = a11;
  v93 = a10;
  v91 = a9;
  v90 = a26;
  v87 = a25;
  v89 = a18;
  v86 = a17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v119 = swift_getAssociatedTypeWitness();
  v120 = swift_getAssociatedTypeWitness();
  v121 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v88 = *(TupleTypeMetadata - 1);
  v30 = __chkstk_darwin(TupleTypeMetadata);
  v92 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v112 = &v85 - v33;
  v34 = __chkstk_darwin(v32);
  v111 = &v85 - v35;
  v36 = __chkstk_darwin(v34);
  v113 = &v85 - v37;
  __chkstk_darwin(v36);
  v39 = &v85 - v38;
  v40 = swift_getAssociatedTypeWitness();
  v41 = *(v40 - 8);
  v114 = v40;
  v115 = v41;
  (*(v41 + 16))(v39, v117, v40);
  v42 = TupleTypeMetadata[12];
  v43 = swift_getAssociatedTypeWitness();
  v44 = *(v43 - 8);
  v116 = v43;
  v117 = v44;
  (*(v44 + 16))(&v39[v42], v91, v43);
  v45 = TupleTypeMetadata[16];
  v46 = swift_getAssociatedTypeWitness();
  v47 = *(v46 - 8);
  v48 = &v39[v45];
  v49 = v46;
  (*(v47 + 16))(v48, v93);
  v50 = TupleTypeMetadata[20];
  v51 = swift_getAssociatedTypeWitness();
  v52 = *(v51 - 8);
  v87 = v52;
  v53 = *(v52 + 16);
  v86 = v51;
  v53(&v39[v50], v94, v51);
  v54 = v88;
  v55 = *(v88 + 16);
  v56 = v113;
  v55(v113, v39, TupleTypeMetadata);
  v94 = TupleTypeMetadata[12];
  v93 = TupleTypeMetadata[16];
  v91 = TupleTypeMetadata[20];
  (*(v115 + 32))(v95, v56, v114);
  v57 = v111;
  v55(v111, v39, TupleTypeMetadata);
  v58 = TupleTypeMetadata[12];
  v95 = TupleTypeMetadata[16];
  v90 = TupleTypeMetadata[20];
  (*(v117 + 32))(v96, &v57[v58], v116);
  v59 = v112;
  v55(v112, v39, TupleTypeMetadata);
  v96 = TupleTypeMetadata[12];
  v60 = TupleTypeMetadata[16];
  v89 = TupleTypeMetadata[20];
  v61 = *(v47 + 32);
  v85 = v49;
  v61(v97, &v59[v60], v49);
  v62 = v92;
  (*(v54 + 32))(v92, v39, TupleTypeMetadata);
  v63 = TupleTypeMetadata[12];
  v64 = TupleTypeMetadata[16];
  (*(v52 + 32))(v100, &v62[TupleTypeMetadata[20]], v51);
  v65 = swift_getAssociatedTypeWitness();
  (*(*(v65 - 8) + 16))(v104, v101, v65);
  v66 = swift_getAssociatedTypeWitness();
  (*(*(v66 - 8) + 16))(v108, v105, v66);
  v67 = swift_getAssociatedTypeWitness();
  (*(*(v67 - 8) + 16))(v110, v109, v67);
  v68 = *(v47 + 8);
  v109 = v47 + 8;
  v110 = v68;
  v68(&v62[v64], v49);
  v69 = v116;
  v71 = v117 + 8;
  v70 = *(v117 + 8);
  v70(&v62[v63], v116);
  v72 = v70;
  v108 = v70;
  v117 = v71;
  v73 = v114;
  v74 = *(v115 + 8);
  v74(v62, v114);
  v75 = *(v87 + 8);
  v76 = v112;
  v77 = v86;
  v75(&v112[v89], v86);
  v72(&v76[v96], v69);
  v78 = v76;
  v79 = v73;
  v74(v78, v73);
  v80 = v111;
  v75(&v111[v90], v77);
  v81 = v85;
  v82 = v110;
  v110(&v80[v95], v85);
  v74(v80, v79);
  v83 = v113;
  v75(&v113[v91], v77);
  v82(&v83[v93], v81);
  return v108(&v83[v94], v116);
}

uint64_t sub_1000103E0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v29 = a1 + TupleTypeMetadata[12];
  v28 = a1 + TupleTypeMetadata[16];
  v27 = a1 + TupleTypeMetadata[20];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v21 = swift_getTupleTypeMetadata();
  v22 = a1 + v21[12];
  v23 = a1 + v21[16];
  v24 = a1 + v21[20];
  v25 = swift_getTupleTypeMetadata();
  return a2(a8, a8 + v25[12], a8 + v25[16], a8 + v25[20], a8 + v25[24], a8 + v25[28], a8 + v25[32], a1, v29, v28, v27, v22, v23, v24);
}

uint64_t sub_10001064C()
{

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_100010758(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100010838(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v42 = *(a3[2] - 8);
  v4 = *(v42 + 84);
  v5 = *(a3[3] - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = *(v42 + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = a3[5];
  v9 = *(a3[4] - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(a3[6] - 8);
  v16 = *(v15 + 84);
  v17 = *(v5 + 80);
  v18 = *(*(a3[3] - 8) + 64);
  v19 = *(v9 + 80);
  v20 = *(*(a3[4] - 8) + 64);
  v21 = *(v12 + 80);
  v22 = *(v15 + 80);
  if (v16 <= v14)
  {
    v23 = v14;
  }

  else
  {
    v23 = *(v15 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v24 = *(*(a3[2] - 8) + 64) + v17;
  v25 = *(*(v8 - 8) + 64) + v22;
  v26 = a2 - v23;
  if (a2 > v23)
  {
    v27 = ((v25 + ((v20 + v21 + ((v18 + v19 + (v24 & ~v17)) & ~v19)) & ~v21)) & ~v22) + *(*(a3[6] - 8) + 64);
    v28 = 8 * v27;
    if (v27 <= 3)
    {
      v30 = ((v26 + ~(-1 << v28)) >> v28) + 1;
      if (HIWORD(v30))
      {
        v29 = *(a1 + v27);
        if (!v29)
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      if (v30 > 0xFF)
      {
        v29 = *(a1 + v27);
        if (!*(a1 + v27))
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      if (v30 < 2)
      {
LABEL_36:
        if (v23)
        {
          goto LABEL_37;
        }

        return 0;
      }
    }

    v29 = *(a1 + v27);
    if (!*(a1 + v27))
    {
      goto LABEL_36;
    }

LABEL_23:
    v31 = (v29 - 1) << v28;
    if (v27 > 3)
    {
      v31 = 0;
    }

    if (v27)
    {
      if (v27 <= 3)
      {
        v32 = ((v25 + ((v20 + v21 + ((v18 + v19 + (v24 & ~v17)) & ~v19)) & ~v21)) & ~v22) + *(*(a3[6] - 8) + 64);
      }

      else
      {
        v32 = 4;
      }

      if (v32 > 2)
      {
        if (v32 == 3)
        {
          v33 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v33 = *a1;
        }
      }

      else if (v32 == 1)
      {
        v33 = *a1;
      }

      else
      {
        v33 = *a1;
      }
    }

    else
    {
      v33 = 0;
    }

    return v23 + (v33 | v31) + 1;
  }

LABEL_37:
  if (v4 == v23)
  {
    v34 = *(v42 + 48);

    return v34();
  }

  v36 = (a1 + v24) & ~v17;
  if (v6 == v23)
  {
    v37 = *(v5 + 48);
    v38 = *(v5 + 84);
    v39 = a3[3];

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v18 + v19) & ~v19;
  if (v10 == v23)
  {
    v37 = *(v9 + 48);
    v38 = *(v9 + 84);
    v39 = a3[4];

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v20 + v21) & ~v21;
  if (v13 == v23)
  {
    v37 = *(v12 + 48);
    v38 = *(v12 + 84);
    v39 = a3[5];

    return v37(v36, v38, v39);
  }

  v40 = *(v15 + 48);
  v41 = (v25 + v36) & ~v22;

  return v40(v41, v16);
}

char *sub_100010CD8(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v42 = a4[3];
  v43 = *(a4[2] - 8);
  v5 = *(v43 + 84);
  v6 = *(v42 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v43 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = a4[5];
  v41 = a4[4];
  v10 = *(v41 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = *(a4[6] - 8);
  v17 = *(*(a4[2] - 8) + 64);
  v18 = *(v6 + 80);
  v19 = *(*(v42 - 8) + 64);
  v20 = *(v10 + 80);
  v21 = *(*(v41 - 8) + 64);
  v22 = *(v13 + 80);
  v23 = *(*(v9 - 8) + 64);
  v24 = *(v16 + 80);
  if (*(v16 + 84) <= v15)
  {
    v25 = v15;
  }

  else
  {
    v25 = *(v16 + 84);
  }

  v26 = v23 + v24;
  v27 = ((v23 + v24 + ((v21 + v22 + ((v19 + v20 + ((v17 + v18) & ~v18)) & ~v20)) & ~v22)) & ~v24) + *(*(a4[6] - 8) + 64);
  v28 = a3 >= v25;
  v29 = a3 - v25;
  if (v29 != 0 && v28)
  {
    if (v27 <= 3)
    {
      v34 = ((v29 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
      if (HIWORD(v34))
      {
        v30 = 4;
      }

      else
      {
        if (v34 < 0x100)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        if (v34 >= 2)
        {
          v30 = v35;
        }

        else
        {
          v30 = 0;
        }
      }
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
  }

  if (v25 < a2)
  {
    v31 = ~v25 + a2;
    if (v27 < 4)
    {
      v33 = (v31 >> (8 * v27)) + 1;
      if (v27)
      {
        v36 = v31 & ~(-1 << (8 * v27));
        v37 = result;
        bzero(result, v27);
        result = v37;
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *v37 = v36;
            if (v30 > 1)
            {
LABEL_60:
              if (v30 == 2)
              {
                *&result[v27] = v33;
              }

              else
              {
                *&result[v27] = v33;
              }

              return result;
            }
          }

          else
          {
            *v37 = v31;
            if (v30 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *v37 = v36;
        v37[2] = BYTE2(v36);
      }

      if (v30 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v32 = result;
      bzero(result, v27);
      result = v32;
      *v32 = v31;
      v33 = 1;
      if (v30 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v30)
    {
      result[v27] = v33;
    }

    return result;
  }

  if (v30 > 1)
  {
    if (v30 != 2)
    {
      *&result[v27] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_40;
    }

    *&result[v27] = 0;
LABEL_39:
    if (!a2)
    {
      return result;
    }

    goto LABEL_40;
  }

  if (!v30)
  {
    goto LABEL_39;
  }

  result[v27] = 0;
  if (!a2)
  {
    return result;
  }

LABEL_40:
  if (v5 == v25)
  {
    v38 = *(v43 + 56);

    return v38();
  }

  else
  {
    v39 = &result[v17 + v18] & ~v18;
    if (v7 == v25)
    {
      v40 = *(v6 + 56);
    }

    else
    {
      v39 = (v39 + v19 + v20) & ~v20;
      if (v11 == v25)
      {
        v40 = *(v10 + 56);
      }

      else
      {
        v39 = (v39 + v21 + v22) & ~v22;
        if (v14 == v25)
        {
          v40 = *(v13 + 56);
        }

        else
        {
          v40 = *(v16 + 56);
          v39 = (v26 + v39) & ~v24;
        }
      }
    }

    return v40(v39);
  }
}

uint64_t sub_1000111F8(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v6 <= 0x3F)
          {
            result = swift_checkMetadataState();
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000112F4(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v58 = a3[3];
  v59 = v4;
  v5 = *(v4 + 84);
  v6 = *(v58 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v4 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = a3[5];
  v56 = v9;
  v57 = a3[4];
  v10 = *(v57 - 8);
  v11 = *(v10 + 84);
  if (v11 > v8)
  {
    v8 = *(v10 + 84);
  }

  v12 = *(v9 - 8);
  v13 = *(v12 + 84);
  v15 = a3[6];
  v14 = a3[7];
  v55 = v14;
  v16 = *(v15 - 8);
  if (v13 <= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = *(v16 + 84);
  if (v18 <= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = *(v16 + 84);
  }

  v20 = *(v14 - 8);
  v21 = *(v20 + 84);
  v22 = *(v4 + 64);
  v23 = *(v6 + 80);
  v24 = *(*(v58 - 8) + 64);
  v25 = *(v10 + 80);
  v26 = *(*(v57 - 8) + 64);
  v27 = *(v12 + 80);
  v28 = *(*(v9 - 8) + 64);
  v29 = *(v16 + 80);
  v30 = *(v16 + 64);
  v31 = *(v20 + 80);
  v32 = *(v20 + 64);
  if (v21 <= v19)
  {
    v33 = v19;
  }

  else
  {
    v33 = *(v20 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v34 = v22 + v23;
  v35 = v28 + v29;
  v36 = v30 + v31;
  v37 = a2 - v33;
  if (a2 > v33)
  {
    v38 = (v36 + ((v35 + ((v26 + v27 + ((v24 + v25 + (v34 & ~v23)) & ~v25)) & ~v27)) & ~v29)) & ~v31;
    v39 = v38 + v32;
    v40 = 8 * (v38 + v32);
    if (v39 <= 3)
    {
      v42 = ((v37 + ~(-1 << v40)) >> v40) + 1;
      if (HIWORD(v42))
      {
        v41 = *(a1 + v39);
        if (!v41)
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      if (v42 > 0xFF)
      {
        v41 = *(a1 + v39);
        if (!*(a1 + v39))
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      if (v42 < 2)
      {
LABEL_38:
        if (v33)
        {
          goto LABEL_39;
        }

        return 0;
      }
    }

    v41 = *(a1 + v39);
    if (!*(a1 + v39))
    {
      goto LABEL_38;
    }

LABEL_25:
    v43 = (v41 - 1) << v40;
    if (v39 > 3)
    {
      v43 = 0;
    }

    if (v39)
    {
      if (v39 <= 3)
      {
        v44 = v39;
      }

      else
      {
        v44 = 4;
      }

      if (v44 > 2)
      {
        if (v44 == 3)
        {
          v45 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v45 = *a1;
        }
      }

      else if (v44 == 1)
      {
        v45 = *a1;
      }

      else
      {
        v45 = *a1;
      }
    }

    else
    {
      v45 = 0;
    }

    return v33 + (v45 | v43) + 1;
  }

LABEL_39:
  if (v5 == v33)
  {
    v46 = *(v59 + 48);

    return v46(a1);
  }

  v48 = (a1 + v34) & ~v23;
  if (v7 == v33)
  {
    v49 = *(v6 + 48);
    v50 = (a1 + v34) & ~v23;
    v51 = *(v6 + 84);
    v52 = v58;

    return v49(v50, v51, v52);
  }

  if (v11 == v33)
  {
    v49 = *(v10 + 48);
    v50 = (v48 + v24 + v25) & ~v25;
    v51 = *(v10 + 84);
    v52 = v57;

    return v49(v50, v51, v52);
  }

  v50 = (((v48 + v24 + v25) & ~v25) + v26 + v27) & ~v27;
  if (v13 == v33)
  {
    v49 = *(v12 + 48);
    v51 = *(v12 + 84);
    v52 = v56;

    return v49(v50, v51, v52);
  }

  v50 = (v35 + v50) & ~v29;
  if (v18 == v33)
  {
    v49 = *(*(v15 - 8) + 48);
    v51 = v18;
    v52 = v15;

    return v49(v50, v51, v52);
  }

  v53 = *(v20 + 48);
  v54 = (v36 + v50) & ~v31;

  return v53(v54, v21, v55);
}

unsigned int *sub_100011858(unsigned int *result, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v54 = v6;
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = a4[5];
  v52 = a4[4];
  v13 = *(v52 - 8);
  v53 = *(v13 + 84);
  if (v53 > v11)
  {
    v11 = *(v13 + 84);
  }

  v14 = *(v12 - 8);
  v51 = *(v14 + 84);
  if (v51 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v14 + 84);
  }

  v50 = a4[6];
  v16 = *(v50 - 8);
  v17 = *(v16 + 84);
  if (v17 <= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = *(v16 + 84);
  }

  v19 = *(a4[7] - 8);
  v20 = *(v6 + 64);
  v21 = *(v8 + 80);
  v22 = *(v8 + 64);
  v23 = *(v13 + 80);
  v24 = *(*(v52 - 8) + 64);
  v25 = *(v14 + 80);
  v26 = *(*(v12 - 8) + 64);
  v27 = *(v16 + 80);
  v28 = *(*(v50 - 8) + 64);
  v29 = *(v19 + 80);
  v30 = v26 + v27;
  v31 = v28 + v29;
  v32 = ((v28 + v29 + ((v26 + v27 + ((v24 + v25 + ((v22 + v23 + ((v20 + v21) & ~v21)) & ~v23)) & ~v25)) & ~v27)) & ~v29) + *(v19 + 64);
  if (*(v19 + 84) <= v18)
  {
    v33 = v18;
  }

  else
  {
    v33 = *(v19 + 84);
  }

  if (a3 <= v33)
  {
    v34 = 0;
  }

  else if (v32 <= 3)
  {
    v38 = ((a3 - v33 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
    if (HIWORD(v38))
    {
      v34 = 4;
    }

    else
    {
      if (v38 < 0x100)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v38 >= 2)
      {
        v34 = v39;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else
  {
    v34 = 1;
  }

  if (v33 < a2)
  {
    v35 = ~v33 + a2;
    if (v32 >= 4)
    {
      v36 = result;
      bzero(result, v32);
      result = v36;
      *v36 = v35;
      v37 = 1;
      if (v34 > 1)
      {
        goto LABEL_22;
      }

      goto LABEL_59;
    }

    v37 = (v35 >> (8 * v32)) + 1;
    if (v32)
    {
      v40 = v35 & ~(-1 << (8 * v32));
      v41 = result;
      bzero(result, v32);
      result = v41;
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          *v41 = v40;
          if (v34 > 1)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *v41 = v35;
          if (v34 > 1)
          {
LABEL_22:
            if (v34 == 2)
            {
              *(result + v32) = v37;
            }

            else
            {
              *(result + v32) = v37;
            }

            return result;
          }
        }

LABEL_59:
        if (v34)
        {
          *(result + v32) = v37;
        }

        return result;
      }

      *v41 = v40;
      *(v41 + 2) = BYTE2(v40);
    }

    if (v34 > 1)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *(result + v32) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_43;
    }

    *(result + v32) = 0;
  }

  else if (v34)
  {
    *(result + v32) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return result;
  }

LABEL_43:
  if (v7 == v33)
  {
    v42 = v54;
LABEL_45:
    v43 = *(v42 + 56);
LABEL_48:

    return v43();
  }

  v44 = (result + v20 + v21) & ~v21;
  if (v10 == v33)
  {
    v43 = *(v9 + 56);
    goto LABEL_48;
  }

  v45 = (v44 + v22 + v23) & ~v23;
  if (v53 == v33)
  {
    v42 = v13;
    goto LABEL_45;
  }

  v46 = (v45 + v24 + v25) & ~v25;
  if (v51 == v33)
  {
    v47 = *(v14 + 56);

    return v47(v46);
  }

  v46 = (v30 + v46) & ~v27;
  if (v17 == v33)
  {
    v47 = *(v16 + 56);

    return v47(v46);
  }

  v48 = *(v19 + 56);
  v49 = (v31 + v46) & ~v29;

  return v48(v49);
}

uint64_t sub_100011DD8(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v6 <= 0x3F)
          {
            result = swift_checkMetadataState();
            if (v7 <= 0x3F)
            {
              result = swift_checkMetadataState();
              if (v8 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100011EF0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v53 = a3[2];
  v52 = a3[3];
  v5 = *(*(v53 - 8) + 84);
  v6 = *(v52 - 8);
  v7 = *(v6 + 84);
  v8 = a3[5];
  v50 = a3[4];
  v9 = *(v50 - 8);
  if (v7 <= v5)
  {
    v10 = *(*(v53 - 8) + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v51 = *(v9 + 84);
  if (v51 > v10)
  {
    v10 = *(v9 + 84);
  }

  v49 = *(*(v8 - 8) + 84);
  if (v49 > v10)
  {
    v10 = *(*(v8 - 8) + 84);
  }

  v11 = *(a3[6] - 8);
  if (*(v11 + 84) <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v11 + 84);
  }

  v48 = a3[7];
  v13 = *(v48 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v47 = a3[8];
  v16 = *(v47 - 8);
  v17 = *(v6 + 80);
  v54 = *(*(v52 - 8) + 64);
  v18 = *(v9 + 80);
  v19 = *(v8 - 8);
  v20 = *(v9 + 64);
  v21 = *(v19 + 80);
  v22 = *(v11 + 80);
  v23 = *(v13 + 80);
  v24 = *(v16 + 80);
  if (*(v16 + 84) <= v15)
  {
    v25 = v15;
  }

  else
  {
    v25 = *(v16 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v26 = *(*(v53 - 8) + 64) + v17;
  v27 = *(v19 + 64) + v22;
  v28 = *(v11 + 64) + v23;
  v29 = *(*(v48 - 8) + 64) + v24;
  v30 = a2 >= v25;
  v31 = a2 - v25;
  if (v31 == 0 || !v30)
  {
    goto LABEL_42;
  }

  v32 = ((v29 + ((v28 + ((v27 + ((v20 + v21 + ((v54 + v18 + (v26 & ~v17)) & ~v18)) & ~v21)) & ~v22)) & ~v23)) & ~v24) + *(*(v47 - 8) + 64);
  v33 = 8 * v32;
  if (v32 > 3)
  {
    goto LABEL_21;
  }

  v35 = ((v31 + ~(-1 << v33)) >> v33) + 1;
  if (HIWORD(v35))
  {
    v34 = *(a1 + v32);
    if (!v34)
    {
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (v35 > 0xFF)
  {
    v34 = *(a1 + v32);
    if (!*(a1 + v32))
    {
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (v35 >= 2)
  {
LABEL_21:
    v34 = *(a1 + v32);
    if (!*(a1 + v32))
    {
      goto LABEL_41;
    }

LABEL_28:
    v36 = (v34 - 1) << v33;
    if (v32 > 3)
    {
      v36 = 0;
    }

    if (v32)
    {
      if (v32 <= 3)
      {
        v37 = ((v29 + ((v28 + ((v27 + ((v20 + v21 + ((v54 + v18 + (v26 & ~v17)) & ~v18)) & ~v21)) & ~v22)) & ~v23)) & ~v24) + *(*(v47 - 8) + 64);
      }

      else
      {
        v37 = 4;
      }

      if (v37 > 2)
      {
        if (v37 == 3)
        {
          v38 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v38 = *a1;
        }
      }

      else if (v37 == 1)
      {
        v38 = *a1;
      }

      else
      {
        v38 = *a1;
      }
    }

    else
    {
      v38 = 0;
    }

    return v25 + (v38 | v36) + 1;
  }

LABEL_41:
  if (!v25)
  {
    return 0;
  }

LABEL_42:
  if (v5 == v25)
  {
    v40 = *(v53 - 8);
    v39 = v53;
LABEL_44:
    v41 = *(v40 + 48);
    goto LABEL_48;
  }

  if (v7 == v25)
  {
    v39 = v52;
    v41 = *(*(v52 - 8) + 48);
    a1 = ((a1 + v26) & ~v17);
    v5 = v7;
LABEL_48:

    return v41(a1, v5, v39);
  }

  a1 = ((((a1 + v26) & ~v17) + v54 + v18) & ~v18);
  v5 = v51;
  if (v51 == v25)
  {
    v40 = *(v50 - 8);
    v39 = v50;
    goto LABEL_44;
  }

  v43 = (a1 + v20 + v21) & ~v21;
  if (v49 == v25)
  {
    v44 = *(v19 + 48);

    return v44(v43);
  }

  else
  {
    v45 = (v27 + v43) & ~v22;
    if (*(v11 + 84) != v25)
    {
      a1 = ((v28 + v45) & ~v23);
      if (v14 == v25)
      {
        v41 = *(v13 + 48);
        v5 = *(v13 + 84);
        v39 = v48;
      }

      else
      {
        v41 = *(v16 + 48);
        a1 = ((a1 + v29) & ~v24);
        v5 = *(v16 + 84);
        v39 = v47;
      }

      return v41(a1, v5, v39);
    }

    v46 = *(v11 + 48);

    return v46(v45);
  }
}

_BYTE *sub_1000124D4(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v51 = *(a4[2] - 8);
  v4 = *(v51 + 84);
  v5 = *(a4[3] - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = *(v51 + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = a4[5];
  v9 = *(a4[4] - 8);
  v49 = *(v9 + 84);
  if (v49 > v7)
  {
    v7 = *(v9 + 84);
  }

  v10 = *(v8 - 8);
  v47 = *(v10 + 84);
  if (v47 > v7)
  {
    v7 = *(v10 + 84);
  }

  v11 = a4[7];
  v12 = *(a4[6] - 8);
  v45 = *(v12 + 84);
  if (v45 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v12 + 84);
  }

  v14 = *(v11 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  v17 = *(a4[8] - 8);
  v18 = *(*(a4[2] - 8) + 64);
  v50 = *(a4[3] - 8);
  v19 = *(v5 + 80);
  v20 = *(v50 + 64);
  v48 = *(a4[4] - 8);
  v21 = *(v9 + 80);
  v22 = *(v48 + 64);
  v46 = *(v8 - 8);
  v23 = *(v10 + 80);
  v24 = *(v46 + 64);
  v25 = *(v12 + 80);
  v26 = *(*(a4[6] - 8) + 64);
  v27 = *(v14 + 80);
  v28 = *(*(v11 - 8) + 64);
  v29 = *(v17 + 80);
  v30 = v18 + v19;
  v31 = v26 + v27;
  v32 = ((v28 + v29 + ((v26 + v27 + ((v24 + v25 + ((v22 + v23 + ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21)) & ~v23)) & ~v25)) & ~v27)) & ~v29) + *(v17 + 64);
  if (*(v17 + 84) <= v16)
  {
    v33 = v16;
  }

  else
  {
    v33 = *(v17 + 84);
  }

  if (a3 <= v33)
  {
    v34 = 0;
  }

  else if (v32 <= 3)
  {
    v38 = ((a3 - v33 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
    if (HIWORD(v38))
    {
      v34 = 4;
    }

    else
    {
      if (v38 < 0x100)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v38 >= 2)
      {
        v34 = v39;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else
  {
    v34 = 1;
  }

  result = a1;
  if (v33 < a2)
  {
    v36 = ~v33 + a2;
    if (v32 >= 4)
    {
      bzero(a1, v32);
      result = a1;
      *a1 = v36;
      v37 = 1;
      if (v34 > 1)
      {
        goto LABEL_24;
      }

      goto LABEL_57;
    }

    v37 = (v36 >> (8 * v32)) + 1;
    if (v32)
    {
      v40 = v36 & ~(-1 << (8 * v32));
      bzero(a1, v32);
      result = a1;
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          *a1 = v40;
          if (v34 > 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          *a1 = v36;
          if (v34 > 1)
          {
LABEL_24:
            if (v34 == 2)
            {
              *&result[v32] = v37;
            }

            else
            {
              *&result[v32] = v37;
            }

            return result;
          }
        }

LABEL_57:
        if (v34)
        {
          result[v32] = v37;
        }

        return result;
      }

      *a1 = v40;
      a1[2] = BYTE2(v40);
    }

    if (v34 > 1)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *&a1[v32] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_45;
    }

    *&a1[v32] = 0;
  }

  else if (v34)
  {
    a1[v32] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return result;
  }

LABEL_45:
  if (v4 == v33)
  {
    v41 = *(v51 + 56);
    goto LABEL_65;
  }

  if (v6 == v33)
  {
    v41 = *(v50 + 56);
    result = (&a1[v30] & ~v19);
    goto LABEL_65;
  }

  result = (((&a1[v30] & ~v19) + v20 + v21) & ~v21);
  if (v49 == v33)
  {
    v42 = v48;
LABEL_64:
    v41 = *(v42 + 56);
LABEL_65:

    return v41(result);
  }

  result = (&result[v22 + v23] & ~v23);
  if (v47 == v33)
  {
    v42 = v46;
    goto LABEL_64;
  }

  v43 = &result[v24 + v25] & ~v25;
  if (v45 != v33)
  {
    result = ((v31 + v43) & ~v27);
    if (v15 == v33)
    {
      v41 = *(v14 + 56);
    }

    else
    {
      v41 = *(v17 + 56);
      result = (&result[v28 + v29] & ~v29);
    }

    return v41(result);
  }

  v44 = *(v12 + 56);

  return v44(v43);
}

void sub_100012B0C()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  [v0 setQualityOfService:25];
  v1 = sub_10009DD50();
  [v0 setName:v1];

  qword_1000CA418 = v0;
}

uint64_t sub_100012B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_100012BB8, 0, 0);
}

uint64_t sub_100012BB8()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v1[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = sub_100003714(&qword_1000CA238, &qword_1000A0330);
  *v2 = v0;
  v2[1] = sub_100012CC4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000002BLL, 0x80000001000A5260, sub_1000181F0, v1, v3);
}

uint64_t sub_100012CC4()
{

  return _swift_task_switch(sub_100012DDC, 0, 0);
}

uint64_t sub_100012E00(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = sub_100003714(&unk_1000CA240, &qword_1000A0380);
  *(v2 + 32) = v3;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 64) = *(v3 + 48);
  *(v2 + 68) = *(v3 + 64);

  return _swift_task_switch(sub_100012EB8, 0, 0);
}

uint64_t sub_100012EB8()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_100012FA8;
  v5 = v0[4];
  v4 = v0[5];

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000026, 0x80000001000A5370, sub_100018800, v2, v5);
}

uint64_t sub_100012FA8()
{

  return _swift_task_switch(sub_1000130C0, 0, 0);
}

uint64_t sub_1000130C0()
{
  v1 = *(v0 + 68);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *v3;
  v6 = *(v3 + *(v2 + 64));
  sub_100017C10(v3 + *(v2 + 48), v4 + *(v0 + 64));
  *v4 = v5;
  *(v4 + v1) = v6;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100013164(uint64_t a1, uint64_t a2)
{
  v2[101] = a2;
  v2[95] = a1;
  v3 = sub_10009D860();
  v2[107] = v3;
  v4 = *(v3 - 8);
  v2[108] = v4;
  v2[109] = *(v4 + 64);
  v2[110] = swift_task_alloc();

  return _swift_task_switch(sub_100013230, 0, 0);
}

uint64_t sub_100013230()
{
  v1 = v0[110];
  v2 = v0[108];
  v3 = v0[107];
  (*(v2 + 16))(v1, v0[101], v3);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[111] = v5;
  (*(v2 + 32))(v5 + v4, v1, v3);
  sub_100003714(&qword_1000CA478, &qword_1000A03E0);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v0 + 87, sub_100013358, v0 + 82);
}

uint64_t sub_100013374()
{
  v1 = v0[87];
  v2 = v0[88];
  v3 = v0[89];
  v4 = v0[90];
  v0[112] = v4;
  v5 = v0[91];
  v0[113] = v5;
  v6 = v0[94];
  v0[114] = v6;
  if (v6 || !v1)
  {
    v23 = v6;

    v24 = sub_1000135CC;
    v25 = v0 + 2;
    v26 = v0 + 87;
    v27 = v0 + 96;
    goto LABEL_12;
  }

  if (v3)
  {
    if (v5)
    {
      swift_bridgeObjectRetain_n();
      v7 = v1;

      v35._object = 0x80000001000A4850;
      v35._countAndFlagsBits = 0xD000000000000017;
      v8 = sub_10009DE40(v35);
      v5, v9, v10, v11, v12, v13, v14, v15;
      if (v8)
      {
        v5, v16, v17, v18, v19, v20, v21, v22;
        v4 = v2;
        v5 = v3;
      }

      else
      {
        v3, v16, v17, v18, v19, v20, v21, v22;
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  v28 = v1;
LABEL_11:
  v0[116] = v5;
  v0[115] = v4;
  v29 = [objc_opt_self() localizedStringFromPersonNameComponents:v1 style:2 options:0];
  v30 = sub_10009DD90();
  v32 = v31;

  v0[117] = v30;
  v0[118] = v32;
  v24 = sub_100013514;
  v25 = v0 + 2;
  v26 = v0 + 87;
  v27 = v0 + 102;
LABEL_12:

  return _swift_asyncLet_finish(v25, v26, v24, v27);
}

uint64_t sub_100013530()
{
  v5 = *(v0 + 920);
  v6 = *(v0 + 936);
  v1 = *(v0 + 912);
  v2 = *(v0 + 760);

  *v2 = v6;
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000135E8()
{
  v5 = *(v0 + 896);
  v1 = *(v0 + 912);
  v2 = *(v0 + 760);

  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10001367C(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return _swift_task_switch(sub_10001369C, 0, 0);
}

uint64_t sub_10001369C()
{
  v1 = v0[11];
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = sub_100003714(&qword_1000CA478, &qword_1000A03E0);
  *v3 = v0;
  v3[1] = sub_1000137A4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000003ALL, 0x80000001000A5410, sub_100018C4C, v2, v4);
}

uint64_t sub_1000137A4()
{

  return _swift_task_switch(sub_1000138BC, 0, 0);
}

uint64_t sub_1000138BC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  v1[2] = v3;
  v1[3] = v4;
  return (*(v0 + 8))();
}

uint64_t sub_100013908()
{
  sub_100003714(&qword_1000CA450, &qword_1000A03A8);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16, v0 + 696, sub_1000139AC, v0 + 656);
}

uint64_t sub_1000139C8()
{
  v1 = v0[87];
  v0[92] = v0[88];
  v0[93] = v0[89];
  v2 = v0[90];
  v0[94] = v2;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v1 == 0;
  }

  if (v3)
  {
    v4 = v2;

    v11 = sub_100013B38;
  }

  else
  {
    v5 = objc_opt_self();

    v6 = v1;
    v7 = [v5 localizedStringFromPersonNameComponents:v6 style:2 options:0];
    v8 = sub_10009DD90();
    v10 = v9;

    v0[95] = v8;
    v0[96] = v10;
    v11 = sub_100013AE8;
  }

  return _swift_asyncLet_finish(v0 + 2, v0 + 87, v11, v0 + 82);
}

uint64_t sub_100013B04()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 752);
  v3 = *(v0 + 728);
  v4 = *(v0 + 736);
  *v3 = *(v0 + 760);
  *(v3 + 8) = v1;
  *(v3 + 16) = v4;
  *(v3 + 32) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_100013B54()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 728);
  v3 = *(v0 + 736);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = v3;
  *(v2 + 32) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_100013B80(uint64_t a1)
{
  *(v1 + 48) = a1;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  v3 = sub_100003714(&qword_1000CA458, &qword_1000A03B0);
  *v2 = v1;
  v2[1] = sub_100013C6C;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 16, 0, 0, 0xD000000000000030, 0x80000001000A53D0, sub_1000171AC, 0, v3);
}

uint64_t sub_100013C6C()
{

  return _swift_task_switch(sub_100013D68, 0, 0);
}

uint64_t sub_100013D68()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_100013D8C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = sub_100003714(&qword_1000CA420, &unk_1000A0310);
  *(v2 + 32) = v3;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 64) = *(v3 + 48);

  return _swift_task_switch(sub_100013E3C, 0, 0);
}

uint64_t sub_100013E3C()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_100013F2C;
  v5 = v0[4];
  v4 = v0[5];

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD00000000000001FLL, 0x80000001000A5200, sub_100017C08, v2, v5);
}

uint64_t sub_100013F2C()
{

  return _swift_task_switch(sub_100014044, 0, 0);
}

uint64_t sub_100014044()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = *(*(v0 + 40) + *(*(v0 + 32) + 48));
  sub_100017C10(*(v0 + 40), v2);
  *(v2 + v1) = v3;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000140D4(uint64_t a1, char a2)
{
  *(v2 + 1704) = a2;
  *(v2 + 1336) = a1;
  v3 = sub_10009D9F0();
  *(v2 + 1384) = v3;
  *(v2 + 1432) = *(v3 - 8);
  *(v2 + 1480) = swift_task_alloc();
  *(v2 + 1528) = swift_task_alloc();
  v4 = sub_10009D860();
  *(v2 + 1576) = v4;
  v5 = *(v4 - 8);
  *(v2 + 1624) = v5;
  *(v2 + 1632) = *(v5 + 64);
  *(v2 + 1640) = swift_task_alloc();
  *(v2 + 1648) = swift_task_alloc();

  return _swift_task_switch(sub_100014214, 0, 0);
}

uint64_t sub_100014214()
{
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1624);
  v3 = *(v0 + 1576);
  v4 = *(v0 + 1704);
  v21 = *(v2 + 16);
  v21(v1, *(v0 + 1336), v3);
  v5 = *(v2 + 80);
  v6 = swift_allocObject();
  *(v0 + 1656) = v6;
  v20 = *(v2 + 32);
  v20(v6 + ((v5 + 16) & ~v5), v1, v3);
  swift_asyncLet_begin();
  if (v4)
  {
    *(v0 + 1680) = 0u;
    v7 = v0 + 16;
  }

  else
  {
    sub_10009D9D0();
    v8 = sub_10009D9E0();
    v9 = sub_10009DFF0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "isForcedFolderSharing is false, so call doBRSharingRunCleanFolder", v10, 2u);
    }

    v11 = *(v0 + 1640);
    v12 = *(v0 + 1576);
    v13 = *(v0 + 1528);
    v14 = v8;
    v15 = *(v0 + 1432);
    v16 = *(v0 + 1384);
    v17 = *(v0 + 1336);

    (*(v15 + 8))(v13, v16);
    v21(v11, v17, v12);
    v18 = swift_allocObject();
    *(v0 + 1664) = v18;
    v20(v18 + ((v5 + 16) & ~v5), v11, v12);
    swift_asyncLet_begin();
    v7 = v0 + 656;
  }

  return _swift_asyncLet_get_throwing(v7);
}

uint64_t sub_1000144A4(uint64_t a1, uint64_t a2)
{
  *(v3 + 1672) = v2;
  if (v2)
  {
    v4 = sub_10001464C;
    v5 = v3 + 656;
    v6 = v3 + 1344;
  }

  else
  {
    v4 = sub_1000144E4;
    v5 = v3 + 656;
    v6 = v3 + 1440;
  }

  return _swift_asyncLet_finish(v5, a2, v4, v6);
}

uint64_t sub_100014500()
{
  v0[211] = v0[208];
  v0[210] = &unk_1000A0360;
  return _swift_asyncLet_get_throwing(v0 + 2);
}

uint64_t sub_100014538(uint64_t a1, uint64_t a2)
{
  *(v3 + 1696) = v2;
  if (v2)
  {
    v4 = sub_1000148E8;
    v5 = v3 + 16;
    v6 = v3 + 1536;
  }

  else
  {
    v4 = sub_100014578;
    v5 = v3 + 16;
    v6 = v3 + 1584;
  }

  return _swift_asyncLet_finish(v5, a2, v4, v6);
}

uint64_t sub_100014594()
{
  v1 = v0[211];
  v2 = v0[210];

  sub_1000186F4(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000146A0(uint64_t a1)
{
  v14 = v1[208];
  sub_10009D9D0();
  swift_errorRetain();
  v2 = sub_10009D9E0();
  v3 = sub_10009DFD0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "runFolderSharingPrepOperations clean or prep error: %@", v4, 0xCu);
    sub_100008728(v5, &qword_1000CA8E0, &qword_10009FE08);
  }

  v7 = v1[185];
  v8 = v1[179];
  v9 = v1[173];

  (*(v8 + 8))(v7, v9);
  v10 = sub_10009D7A0();
  sub_100005B1C();
  swift_allocError();
  *v11 = 0xD000000000000041;
  *(v11 + 8) = 0x80000001000A52B0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = v10;
  *(v11 + 40) = 3;
  swift_willThrow();

  sub_1000186F4(&unk_1000A0360, v14);

  v12 = v1[1];

  return v12();
}

uint64_t sub_100014904(uint64_t a1)
{
  v14 = v1[210];
  v15 = v1[211];
  sub_10009D9D0();
  swift_errorRetain();
  v2 = sub_10009D9E0();
  v3 = sub_10009DFD0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "runFolderSharingPrepOperations clean or prep error: %@", v4, 0xCu);
    sub_100008728(v5, &qword_1000CA8E0, &qword_10009FE08);
  }

  v7 = v1[185];
  v8 = v1[179];
  v9 = v1[173];

  (*(v8 + 8))(v7, v9);
  v10 = sub_10009D7A0();
  sub_100005B1C();
  swift_allocError();
  *v11 = 0xD000000000000041;
  *(v11 + 8) = 0x80000001000A52B0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = v10;
  *(v11 + 40) = 3;
  swift_willThrow();

  sub_1000186F4(v14, v15);

  v12 = v1[1];

  return v12();
}

uint64_t sub_100014B58()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_100014C4C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD00000000000001ELL, 0x80000001000A5330, sub_10001870C, v2, &type metadata for () + 8);
}

uint64_t sub_100014C4C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_100018F48;
  }

  else
  {

    v2 = sub_100018F24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100014D88()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_100014E80;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD00000000000002ALL, 0x80000001000A5300, sub_100018704, v2, &type metadata for () + 8);
}

uint64_t sub_100014E80()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_100014FB4;
  }

  else
  {

    v2 = sub_100014F9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100014FB4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100015018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v27 = sub_100003714(&qword_1000CA440, &qword_1000A0370);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v23[-v5];
  v7 = sub_10009D860();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_10009D830();
  v11 = objc_allocWithZone(BRShareUnshareOperation);
  sub_10009D800(v12);
  v14 = v13;
  v15 = [v11 initWithShare:a3 fileURL:v13];

  if (v15)
  {
    [v15 setQualityOfService:25];
    (*(v8 + 16))(&v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v7);
    v16 = v25;
    v17 = v27;
    (*(v25 + 16))(v6, v26, v27);
    v18 = v15;
    v19 = (*(v8 + 80) + 17) & ~*(v8 + 80);
    v20 = (v9 + *(v16 + 80) + v19) & ~*(v16 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v24;
    (*(v8 + 32))(v21 + v19, v10, v7);
    (*(v16 + 32))(v21 + v20, v6, v17);
    aBlock[4] = sub_100018EF4;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000153A0;
    aBlock[3] = &unk_1000C2600;
    v22 = _Block_copy(aBlock);

    [v18 setUnshareCompletionBlock:v22];
    _Block_release(v22);
    if (qword_1000C9DD0 != -1)
    {
      swift_once();
    }

    [qword_1000CA418 addOperation:v18];
  }

  else
  {
    aBlock[0] = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
    sub_10009DEE0();
  }
}

void sub_1000153A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_10001540C(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = sub_100003714(&qword_1000CA440, &qword_1000A0370);
  v3 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v23 - v4;
  v6 = sub_10009D860();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10009D830();
  v10 = objc_allocWithZone(BRSharePrepFolderForSharing);
  sub_10009D800(v11);
  v13 = v12;
  v14 = [v10 initWithURL:v12];

  if (v14)
  {
    [v14 setQualityOfService:25];
    (*(v7 + 16))(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
    v23 = v14;
    v15 = v3;
    v16 = *(v3 + 16);
    v17 = v26;
    v16(v5, v25, v26);
    v18 = (*(v7 + 80) + 17) & ~*(v7 + 80);
    v19 = (v8 + *(v15 + 80) + v18) & ~*(v15 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v24;
    (*(v7 + 32))(v20 + v18, v9, v6);
    (*(v15 + 32))(v20 + v19, v5, v17);
    v21 = v23;
    aBlock[4] = sub_100018F44;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000153A0;
    aBlock[3] = &unk_1000C2448;
    v22 = _Block_copy(aBlock);

    [v21 setPrepFolderSharingCompletionBlock:v22];
    _Block_release(v22);
    if (qword_1000C9DD0 != -1)
    {
      swift_once();
    }

    [qword_1000CA418 addOperation:v21];
  }

  else
  {
    aBlock[0] = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
    sub_10009DEE0();
  }
}

void sub_10001578C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = sub_100003714(&qword_1000CA440, &qword_1000A0370);
  v5 = *(v26 - 8);
  v24 = *(v5 + 64);
  __chkstk_darwin(v26);
  v7 = &v22[-v6];
  v8 = sub_10009D860();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_10009D830();
  v12 = objc_allocWithZone(BRShareProcessSubitems);
  sub_10009D800(v13);
  v15 = v14;
  v16 = [v12 initWithURL:v14 processType:a3];

  if (v16)
  {
    [v16 setQualityOfService:25];
    [v16 setMaxSharedSubitemsBeforeFailure:4];
    (*(v9 + 16))(&v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v8);
    v17 = v26;
    (*(v5 + 16))(v7, v25, v26);
    v18 = (*(v9 + 80) + 17) & ~*(v9 + 80);
    v19 = (v10 + *(v5 + 80) + v18) & ~*(v5 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v23;
    (*(v9 + 32))(v20 + v18, v11, v8);
    (*(v5 + 32))(v20 + v19, v7, v17);
    aBlock[4] = sub_100018F44;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000153A0;
    aBlock[3] = &unk_1000C2498;
    v21 = _Block_copy(aBlock);

    [v16 setProcessSubitemsCompletionBlock:v21];
    _Block_release(v21);
    if (qword_1000C9DD0 != -1)
    {
      swift_once();
    }

    [qword_1000CA418 addOperation:v16];
  }

  else
  {
    aBlock[0] = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
    sub_10009DEE0();
  }
}

uint64_t sub_100015B20(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    sub_10009D810();
    a1 = v2;
  }

  if (a1)
  {
    swift_errorRetain();
    sub_100003714(&qword_1000CA440, &qword_1000A0370);
    return sub_10009DEE0();
  }

  else
  {
    sub_100003714(&qword_1000CA440, &qword_1000A0370);
    return sub_10009DEF0();
  }
}

void sub_100015BB8(uint64_t a1, uint64_t a2, void *a3)
{
  v49 = a1;
  v5 = sub_100003714(&qword_1000CA438, &qword_1000A0338);
  v44 = *(v5 - 8);
  v42 = *(v44 + 64);
  __chkstk_darwin(v5);
  v43 = &v38 - v6;
  v7 = sub_10009D9F0();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v40 = *(v10 - 8);
  v11 = *(v40 + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v41 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v38 - v14;
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  v48 = a2;
  sub_100008658(a2, &v38 - v16, &qword_1000CA250, &qword_10009FDF8);
  v18 = sub_10009D860();
  v19 = *(v18 - 8);
  v45 = *(v19 + 48);
  if (v45(v17, 1, v18) == 1)
  {
    sub_100008728(v17, &qword_1000CA250, &qword_10009FDF8);
    v39 = 0;
  }

  else
  {
    v39 = sub_10009D830();
    (*(v19 + 8))(v17, v18);
  }

  sub_10009D9D0();
  v20 = a3;
  v21 = sub_10009D9E0();
  v22 = sub_10009DFF0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v38 = v5;
    v24 = v23;
    *v23 = 67109120;
    *(v23 + 1) = [v20 allowsAccessRequests];

    _os_log_impl(&_mh_execute_header, v21, v22, "doBRSharingFileOrFolderSave about to save share with allowsAccessRequests: %{BOOL}d", v24, 8u);
    v5 = v38;
  }

  else
  {

    v21 = v20;
  }

  (*(v46 + 8))(v9, v47);
  v25 = v48;
  sub_100008658(v48, v15, &qword_1000CA250, &qword_10009FDF8);
  if (v45(v15, 1, v18) == 1)
  {
    v27 = 0;
  }

  else
  {
    sub_10009D800(v26);
    v27 = v28;
    (*(v19 + 8))(v15, v18);
  }

  v29 = [objc_allocWithZone(BRShareSaveOperation) initWithShare:v20 fileURL:v27];

  if (v29)
  {
    [v29 setQualityOfService:25];
    v30 = v41;
    sub_100008658(v25, v41, &qword_1000CA250, &qword_10009FDF8);
    v32 = v43;
    v31 = v44;
    (*(v44 + 16))(v43, v49, v5);
    v33 = (*(v40 + 80) + 17) & ~*(v40 + 80);
    v34 = (v11 + *(v31 + 80) + v33) & ~*(v31 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v39;
    sub_100017C10(v30, v35 + v33);
    (*(v31 + 32))(v35 + v34, v32, v5);
    v54 = sub_1000183A8;
    v55 = v35;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_100016360;
    v53 = &unk_1000C23A8;
    v36 = _Block_copy(&aBlock);

    [v29 setShareSaveCompletionBlock:v36];
    _Block_release(v36);
    if (qword_1000C9DD0 != -1)
    {
      swift_once();
    }

    [qword_1000CA418 addOperation:v29];
  }

  else
  {
    v37 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
    aBlock = 0;
    v51 = v37;
    sub_10009DEF0();
  }
}

uint64_t sub_1000161D8(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  __chkstk_darwin(v8 - 8);
  v10 = v16 - v9;
  if (a3)
  {
    sub_100008658(a4, v16 - v9, &qword_1000CA250, &qword_10009FDF8);
    v11 = sub_10009D860();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_10009D810();
      (*(v12 + 8))(v10, v11);
      if (a2)
      {
        goto LABEL_5;
      }

LABEL_7:
      v13 = 0;
      goto LABEL_8;
    }

    sub_100008728(v10, &qword_1000CA250, &qword_10009FDF8);
  }

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_5:
  v13 = sub_10009D7A0();
LABEL_8:
  v16[0] = a1;
  v16[1] = v13;
  v14 = a1;
  sub_100003714(&qword_1000CA438, &qword_1000A0338);
  return sub_10009DEF0();
}

void sub_100016360(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1000163EC(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v35 = sub_100003714(&qword_1000CA448, &qword_1000A0388);
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v29[-v3];
  v4 = sub_10009D860();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v31 = v6;
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100003714(&unk_1000CA240, &qword_1000A0380);
  __chkstk_darwin(v8);
  v10 = &v29[-v9];
  v11 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  __chkstk_darwin(v11 - 8);
  v13 = &v29[-v12];
  v30 = sub_10009D830();
  v14 = objc_allocWithZone(BRShareCopyOperation);
  sub_10009D800(v15);
  v17 = v16;
  v18 = [v14 initWithURL:v16];

  if (v18)
  {
    [v18 setQualityOfService:25];
    (*(v5 + 16))(v7, a2, v4);
    v19 = v33;
    v20 = v32;
    v21 = v35;
    (*(v33 + 16))(v32, v34, v35);
    v22 = (*(v5 + 80) + 17) & ~*(v5 + 80);
    v23 = (v31 + *(v19 + 80) + v22) & ~*(v19 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v30;
    (*(v5 + 32))(v24 + v22, v7, v4);
    (*(v19 + 32))(v24 + v23, v20, v21);
    aBlock[4] = sub_10001881C;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000169CC;
    aBlock[3] = &unk_1000C24E8;
    v25 = _Block_copy(aBlock);

    [v18 setRootShareCopyCompletionBlock:v25];
    _Block_release(v25);
    if (qword_1000C9DD0 != -1)
    {
      swift_once();
    }

    [qword_1000CA418 addOperation:v18];
  }

  else
  {
    (*(v5 + 56))(v13, 1, 1, v4);
    v26 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
    v27 = *(v8 + 48);
    v28 = *(v8 + 64);
    *v10 = 0;
    sub_100017C10(v13, v10 + v27);
    *(v10 + v28) = v26;
    sub_10009DEF0();
  }
}

uint64_t sub_100016854(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_100003714(&unk_1000CA240, &qword_1000A0380);
  __chkstk_darwin(v8);
  v10 = (&v19 - v9);
  v11 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  if (a4)
  {
    sub_10009D810();
  }

  sub_100008658(a2, v13, &qword_1000CA250, &qword_10009FDF8);
  if (a3)
  {
    v14 = sub_10009D7A0();
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v8 + 48);
  v16 = *(v8 + 64);
  *v10 = a1;
  sub_100017C10(v13, v10 + v15);
  *(v10 + v16) = v14;
  v17 = a1;
  sub_100003714(&qword_1000CA448, &qword_1000A0388);
  return sub_10009DEF0();
}

uint64_t sub_1000169CC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = *(a1 + 32);
  if (a3)
  {
    sub_10009D820();
    v12 = sub_10009D860();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = sub_10009D860();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  v14 = a2;
  v15 = a4;
  v11(a2, v10, a4);

  return sub_100008728(v10, &qword_1000CA250, &qword_10009FDF8);
}

void sub_100016B40(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v3 = sub_100003714(&unk_1000CA480, &unk_1000A03E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19[-v5];
  v7 = sub_10009D860();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_10009D830();
  sub_10009D800(v11);
  v22 = v12;
  (*(v8 + 16))(v10, a2, v7);
  v13 = v3;
  (*(v4 + 16))(v6, v21, v3);
  v14 = (*(v8 + 80) + 17) & ~*(v8 + 80);
  v15 = (v9 + *(v4 + 80) + v14) & ~*(v4 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v20;
  (*(v8 + 32))(v16 + v14, v10, v7);
  (*(v4 + 32))(v16 + v15, v6, v13);
  aBlock[4] = sub_100018C68;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100016FA8;
  aBlock[3] = &unk_1000C25B0;
  v17 = _Block_copy(aBlock);

  v18 = v22;
  BRSharingCopyCurrentUserNameAndDisplayHandleForURL();
  _Block_release(v17);
}

uint64_t sub_100016DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v23 = a4;
  v24 = a6;
  v15 = sub_100003714(&qword_1000CA470, &qword_1000A03C0);
  __chkstk_darwin(v15 - 8);
  v17 = &v23 - v16;
  if (a9)
  {
    sub_10009D810();
  }

  sub_100008658(a1, v17, &qword_1000CA470, &qword_1000A03C0);
  v18 = sub_10009D720();
  v19 = *(v18 - 8);
  v20 = 0;
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    v20 = sub_10009D700();
    (*(v19 + 8))(v17, v18);
  }

  if (a8)
  {
    v21 = sub_10009D7A0();
  }

  else
  {
    v21 = 0;
  }

  v25 = v20;
  v26 = a2;
  v27 = a3;
  v28 = v23;
  v29 = a5;
  v30 = v24;
  v31 = a7;
  v32 = v21;

  sub_100003714(&unk_1000CA480, &unk_1000A03E8);
  return sub_10009DEF0();
}

uint64_t sub_100016FA8(uint64_t a1, uint64_t a2, _TtC13SPIHelper_iOS9SPIHelper *a3, _TtC13SPIHelper_iOS9SPIHelper *a4, _TtC13SPIHelper_iOS9SPIHelper *a5, void *a6)
{
  v12 = sub_100003714(&qword_1000CA470, &qword_1000A03C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - v13;
  v47 = *(a1 + 32);
  if (a2)
  {
    sub_10009D710();
    v15 = sub_10009D720();
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }

  else
  {
    v16 = sub_10009D720();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  }

  if (a3)
  {
    v17 = sub_10009DD90();
    a3 = v18;
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_9:
    v19 = 0;
    if (a5)
    {
      goto LABEL_7;
    }

LABEL_10:
    v21 = 0;
    goto LABEL_11;
  }

  v17 = 0;
  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_6:
  v19 = sub_10009DD90();
  a4 = v20;
  if (!a5)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = sub_10009DD90();
  a5 = v22;
LABEL_11:

  v23 = a6;
  v47(v14, v17, a3, v19, a4, v21, a5, a6);

  a5, v24, v25, v26, v27, v28, v29, v30;
  a4, v31, v32, v33, v34, v35, v36, v37;
  a3, v38, v39, v40, v41, v42, v43, v44;
  return sub_100008728(v14, &qword_1000CA470, &qword_1000A03C0);
}

void sub_1000171AC(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000CA460, &qword_1000A03B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  sub_1000037C4(0, &qword_1000CA468, OS_dispatch_queue_ptr);
  v6 = sub_10009E030();
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  aBlock[4] = sub_100018A44;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000174F8;
  aBlock[3] = &unk_1000C2538;
  v9 = _Block_copy(aBlock);

  BRSharingCopyCurrentUserNameAndDisplayHandle();
  _Block_release(v9);
}

uint64_t sub_100017378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100003714(&qword_1000CA470, &qword_1000A03C0);
  __chkstk_darwin(v8 - 8);
  v10 = v16 - v9;
  sub_100008658(a1, v16 - v9, &qword_1000CA470, &qword_1000A03C0);
  v11 = sub_10009D720();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v13 = sub_10009D700();
    (*(v12 + 8))(v10, v11);
  }

  if (a4)
  {
    v14 = sub_10009D7A0();
  }

  else
  {
    v14 = 0;
  }

  v16[0] = v13;
  v16[1] = a2;
  v16[2] = a3;
  v16[3] = v14;

  sub_100003714(&qword_1000CA460, &qword_1000A03B8);
  return sub_10009DEF0();
}

uint64_t sub_1000174F8(uint64_t a1, uint64_t a2, _TtC13SPIHelper_iOS9SPIHelper *a3, void *a4)
{
  v8 = sub_100003714(&qword_1000CA470, &qword_1000A03C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_10009D710();
    v12 = sub_10009D720();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = sub_10009D720();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  if (a3)
  {
    v14 = sub_10009DD90();
    a3 = v15;
  }

  else
  {
    v14 = 0;
  }

  v16 = a4;
  v11(v10, v14, a3, a4);

  a3, v17, v18, v19, v20, v21, v22, v23;
  return sub_100008728(v10, &qword_1000CA470, &qword_1000A03C0);
}

void sub_100017684(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v3 = sub_100003714(&qword_1000CA428, &qword_1000A0320);
  v57 = *(v3 - 8);
  v4 = *(v57 + 64);
  __chkstk_darwin(v3);
  v56 = &v49 - v5;
  v6 = sub_10009D860();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v8;
  v9 = sub_100003714(&qword_1000CA420, &unk_1000A0310);
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  v12 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  __chkstk_darwin(v12 - 8);
  v14 = &v49 - v13;
  v53 = sub_10009D830();
  sub_10009D800(v15);
  v17 = v16;
  aBlock[0] = 0;
  v18 = [v16 br_typeIdentifierWithError:aBlock];

  v19 = aBlock[0];
  if (v18)
  {
    v50 = v9;
    v51 = v4;
    v52 = v3;
    sub_10009DD90();
    v21 = v20;
    v22 = v19;

    v23 = objc_allocWithZone(BRShareCopyShareURLOperation);
    sub_10009D800(v24);
    v26 = v25;
    v27 = sub_10009DD50();
    v21, v28, v29, v30, v31, v32, v33, v34;
    v35 = [v23 initWithFileURL:v26 documentType:v27];

    if (v35)
    {
      [v35 setQualityOfService:25];
      v36 = v54;
      (*(v7 + 16))(v54, a2, v6);
      v38 = v56;
      v37 = v57;
      v39 = v52;
      (*(v57 + 16))(v56, v58, v52);
      v40 = (*(v7 + 80) + 17) & ~*(v7 + 80);
      v41 = (v55 + *(v37 + 80) + v40) & ~*(v37 + 80);
      v42 = swift_allocObject();
      v42[16] = v53;
      (*(v7 + 32))(&v42[v40], v36, v6);
      (*(v37 + 32))(&v42[v41], v38, v39);
      aBlock[4] = sub_100017DF4;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100017EE8;
      aBlock[3] = &unk_1000C2358;
      v43 = _Block_copy(aBlock);

      [v35 setCopyShareURLCompletionBlock:v43];
      _Block_release(v43);
      if (qword_1000C9DD0 != -1)
      {
        swift_once();
      }

      [qword_1000CA418 addOperation:v35];
    }

    else
    {
      (*(v7 + 56))(v14, 1, 1, v6);
      v47 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
      v48 = *(v50 + 48);
      sub_100017C10(v14, v11);
      *&v11[v48] = v47;
      sub_10009DEF0();
    }
  }

  else
  {
    v44 = aBlock[0];
    sub_10009D7B0();

    swift_willThrow();
    (*(v7 + 56))(v14, 1, 1, v6);
    v45 = sub_10009D7A0();
    v46 = *(v9 + 48);
    sub_100017C10(v14, v11);
    *&v11[v46] = v45;
    sub_10009DEF0();
  }
}

uint64_t sub_100017C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100017C80(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_100003714(&qword_1000CA420, &unk_1000A0310);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  if (a3)
  {
    sub_10009D810();
  }

  sub_100008658(a1, v11, &qword_1000CA250, &qword_10009FDF8);
  if (a2)
  {
    v12 = sub_10009D7A0();
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v6 + 48);
  sub_100017C10(v11, v8);
  *&v8[v13] = v12;
  sub_100003714(&qword_1000CA428, &qword_1000A0320);
  return sub_10009DEF0();
}

uint64_t sub_100017DF4(uint64_t a1, uint64_t a2)
{
  sub_10009D860();
  sub_100003714(&qword_1000CA428, &qword_1000A0320);
  v5 = *(v2 + 16);

  return sub_100017C80(a1, a2, v5);
}

uint64_t sub_100017EE8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_10009D820();
    v10 = sub_10009D860();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_10009D860();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_100008728(v8, &qword_1000CA250, &qword_10009FDF8);
}

uint64_t sub_10001803C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100018054()
{
  v0 = objc_opt_self();
  if (![v0 mightHaveDataSeparatedAccountDescriptor])
  {
    return 0;
  }

  result = [v0 allLoggedInAccountDescriptors];
  if (!result)
  {
    return result;
  }

  v2 = result;
  sub_1000037C4(0, &qword_1000CA430, BRAccountDescriptor_ptr);
  v3 = sub_10009DEA0();

  if (!(v3 >> 62))
  {
    v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = sub_10009E260();
  if (!v11)
  {
LABEL_19:
    v3, v4, v5, v6, v7, v8, v9, v10;
    return 0;
  }

LABEL_5:
  v12 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v13 = sub_10009E1F0();
    }

    else
    {
      if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v13 = *(v3 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if ([v13 isDataSeparated])
    {
      break;
    }

    ++v12;
    if (v15 == v11)
    {
      goto LABEL_19;
    }
  }

  v3, v16, v17, v18, v19, v20, v21, v22;
  v23 = [v14 accountIdentifier];

  if (!v23)
  {
    return 0;
  }

  v24 = sub_10009DD90();

  return v24;
}

uint64_t sub_1000181F8()
{
  v1 = *(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_100003714(&qword_1000CA438, &qword_1000A0338);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = sub_10009D860();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, v12 + v8, v11 | 7);
}

uint64_t sub_1000183A8(void *a1, uint64_t a2)
{
  v5 = *(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  sub_100003714(&qword_1000CA438, &qword_1000A0338);
  v7 = *(v2 + 16);

  return sub_1000161D8(a1, a2, v7, v2 + v6);
}

id sub_1000184A8()
{
  sub_10009D800(__stack_chk_guard);
  v1 = v0;
  v2 = BRSharingCreateShareForItemAtURL();

  if (!v2)
  {
    v3 = 0;
  }

  return v2;
}

uint64_t sub_10001853C(uint64_t a1)
{
  v4 = *(sub_10009D860() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000093DC;

  return sub_100014B38(a1, v1 + v5);
}

uint64_t sub_100018618(uint64_t a1)
{
  v4 = *(sub_10009D860() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000841C;

  return sub_100014D68(a1, v1 + v5);
}

uint64_t sub_1000186F4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100018728(uint64_t a1)
{
  sub_10009D860();
  sub_100003714(&qword_1000CA440, &qword_1000A0370);
  return sub_100015B20(a1, *(v1 + 16));
}

uint64_t sub_10001881C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10009D860();
  sub_100003714(&qword_1000CA448, &qword_1000A0388);
  v7 = *(v3 + 16);

  return sub_100016854(a1, a2, a3, v7);
}

uint64_t sub_100018918(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000093DC;

  return sub_100013B80(a1);
}

uint64_t sub_1000189B0()
{
  v1 = sub_100003714(&qword_1000CA460, &qword_1000A03B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100018A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100003714(&qword_1000CA460, &qword_1000A03B8);

  return sub_100017378(a1, a2, a3, a4);
}

uint64_t sub_100018AE8()
{
  v1 = sub_10009D860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100018B70(uint64_t a1)
{
  v4 = *(sub_10009D860() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000093DC;

  return sub_10001367C(a1, v1 + v5);
}

uint64_t sub_100018C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10009D860();
  sub_100003714(&unk_1000CA480, &unk_1000A03E8);
  return sub_100016DE4(a1, a2, a3, a4, a5, a6, a7, a8, *(v8 + 16));
}

uint64_t sub_100018DA0(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_10009D860();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 17) & ~v7;
  v9 = *(v6 + 64);
  v10 = sub_100003714(a1, a2);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v7 | v12;
  (*(v6 + 8))(v2 + v8, v5);
  (*(v11 + 8))(v2 + v13, v10);

  return _swift_deallocObject(v2, v13 + v14, v15 | 7);
}

uint64_t sub_100018F60(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v37 - v6;
  v8 = sub_10009D860();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v12 = v38;
  if (v38 > 4u)
  {
    if (v38 <= 6u)
    {
      if (v38 == 5)
      {
        if (!*(a1 + 16))
        {
          goto LABEL_25;
        }

        v13 = 11;
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    if (v38 == 7 || v38 == 8)
    {
      goto LABEL_22;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v11, v7, v8);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_10009DAF0();

      v21 = v37;
      v22 = sub_1000959C0(v11, v37);
      v24 = v23;

      (*(v9 + 16))(v5, v11, v8);
      (*(v9 + 56))(v5, 0, 1, v8);
      LOBYTE(v21) = sub_100096298(v22, v24, v5);
      v24, v25, v26, v27, v28, v29, v30, v31;
      sub_100008728(v5, &qword_1000CA250, &qword_10009FDF8);
      v32 = *(a1 + 16);
      switch(v21)
      {
        case 1:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 1;
          break;
        case 2:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 2;
          break;
        case 3:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 3;
          break;
        case 4:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 4;
          break;
        case 5:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 5;
          break;
        case 6:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 6;
          break;
        case 7:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 7;
          break;
        case 8:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 8;
          break;
        case 9:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 9;
          break;
        case 10:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 10;
          break;
        case 11:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 11;
          break;
        case 12:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 12;
          break;
        case 13:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 13;
          break;
        default:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 0;
          break;
      }

      v34 = sub_100030D4C(v33);
      if (v35)
      {
        v19 = *(*(a1 + 56) + 16 * v34);
        v36 = *(v9 + 8);

        v36(v11, v8);
        return v19;
      }

LABEL_64:
      (*(v9 + 8))(v11, v8);
      goto LABEL_25;
    }

    sub_100008728(v7, &qword_1000CA250, &qword_10009FDF8);
    if (!*(a1 + 16))
    {
      goto LABEL_67;
    }

    v14 = sub_100030D4C(1);
    if (v15)
    {
      goto LABEL_27;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_67;
    }

    v14 = sub_100030D4C(13);
    if (v16)
    {
      goto LABEL_27;
    }

    __break(1u);
LABEL_16:
    if (v12)
    {
      if (!*(a1 + 16))
      {
        goto LABEL_25;
      }

      v13 = 7;
      goto LABEL_24;
    }

LABEL_22:
    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }

    v13 = 13;
    goto LABEL_24;
  }

  if (v38 <= 1u)
  {
    goto LABEL_16;
  }

  if (v38 == 2)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }

    v13 = 8;
  }

  else
  {
    if (v38 == 3)
    {
      if (*(a1 + 16))
      {
        v13 = 9;
        goto LABEL_24;
      }

LABEL_25:
      if (*(a1 + 16))
      {
        v14 = sub_100030D4C(13);
        if (v18)
        {
          goto LABEL_27;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_67:
      __break(1u);
      JUMPOUT(0x100019498);
    }

    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }

    v13 = 10;
  }

LABEL_24:
  v14 = sub_100030D4C(v13);
  if ((v17 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_27:
  v19 = *(*(a1 + 56) + 16 * v14);

  return v19;
}

uint64_t sub_1000194F8()
{
  v0 = sub_10009D9F0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10009D9D0();
    v4 = sub_10009D9E0();
    v5 = sub_10009DFF0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "ext computed property--extensionController is nil--will assert", v6, 2u);
    }

    (*(v1 + 8))(v3, v0);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100019674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v9 = sub_100003714(&qword_1000CAD50, &qword_1000A0EF8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &v22 - v12;
  v14 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  __chkstk_darwin(v14 - 8);
  v16 = &v22 - v15;
  v17 = sub_10009DF40();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_100008658(a5, v13, &qword_1000CAD50, &qword_1000A0EF8);
  v18 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a3;
  v19[5] = a4;
  sub_1000086C0(v13, v19 + v18, &qword_1000CAD50, &qword_1000A0EF8);
  v20 = (v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v23;
  v20[1] = a2;

  sub_100019B10(0, 0, v16, &unk_1000A0F08, v19);
}

uint64_t sub_100019884(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v12 = a4 + *a4;
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = sub_100019988;

  return (v12)(v8 + 2, a6);
}

uint64_t sub_100019988()
{

  return _swift_task_switch(sub_100019A84, 0, 0);
}

uint64_t sub_100019A84()
{
  v7 = v0;
  v1 = v0[3];
  v5 = v0[2];
  v6 = 0;
  v2 = v5;
  v1(&v5);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100019B10(uint64_t a1, _TtC13SPIHelper_iOS9SPIHelper *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  __chkstk_darwin(v9 - 8);
  v11 = v32 - v10;
  sub_100008658(a3, v32 - v10, &qword_1000CA8F0, &qword_1000A09C8);
  v12 = sub_10009DF40();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008728(v11, &qword_1000CA8F0, &qword_1000A09C8);
  }

  else
  {
    sub_10009DF30();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10009DED0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10009DDC0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v33[0] = 0;
        v33[1] = 0;
        v21 = v33;
        v33[2] = v16;
        v33[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v32[1] = 7;
      v32[2] = v21;
      v32[3] = v19;
      v23 = swift_task_create();

      sub_100008728(a3, &qword_1000CA8F0, &qword_1000A09C8);
      a2, v24, v25, v26, v27, v28, v29, v30;

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

  sub_100008728(a3, &qword_1000CA8F0, &qword_1000A09C8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v33[4] = 0;
    v33[5] = 0;
    v33[6] = v16;
    v33[7] = v18;
  }

  return swift_task_create();
}

BOOL sub_100019E10()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (!v3)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (!v2)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  return v1 != 0;
}

uint64_t sub_100019F64(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, _TtC13SPIHelper_iOS9SPIHelper *a5, char a6)
{
  v120 = a2;
  v121 = a3;
  v10 = sub_10009D9F0();
  v11 = *(v10 - 8);
  v122 = v10;
  v123 = v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v119 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v119 - v19;
  __chkstk_darwin(v18);
  v22 = &v119 - v21;
  v23 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  __chkstk_darwin(v23 - 8);
  v25 = &v119 - v24;
  if ((a6 & 1) == 0)
  {
    return 8;
  }

  if (!a5)
  {
    sub_100008658(a1, &v119 - v24, &qword_1000CA250, &qword_10009FDF8);
    v75 = sub_10009D860();
    v76 = (*(*(v75 - 8) + 48))(v25, 1, v75);
    sub_100008728(v25, &qword_1000CA250, &qword_10009FDF8);
    if (v76 != 1)
    {
      return 9;
    }

    v77 = sub_10001A8A0();
    if ((v77 & 0xFE) != 8 && (v77 > 7u || ((1 << v77) & 0xC1) == 0))
    {
      v102 = v77;
      sub_10009D9D0();
      v103 = sub_10009D9E0();
      v104 = sub_10009DFF0();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v124[0] = v106;
        *v105 = 136315138;
        v107 = sub_100006ED0(v102);
        v109 = v108;
        v110 = sub_1000307A4(v107, v108, v124);
        v109, v111, v112, v113, v114, v115, v116, v117;
        *(v105 + 4) = v110;
        _os_log_impl(&_mh_execute_header, v103, v104, "Combine for sharingType specific CK sharingType: %s.", v105, 0xCu);
        sub_10000670C(v106);
      }

      (*(v123 + 8))(v17, v122);
      return v102;
    }

    sub_10009D9D0();
    v78 = v121;

    v79 = sub_10009D9E0();
    v80 = sub_10009DFF0();
    v78, v81, v82, v83, v84, v85, v86, v87;
    if (os_log_type_enabled(v79, v80))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v124[1] = v78;
      v125 = v89;
      *v88 = 136315138;
      v90 = v120;
      v124[0] = v120;
      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v91 = sub_10009E140();
      v93 = v92;
      v94 = sub_1000307A4(v91, v92, &v125);
      v93, v95, v96, v97, v98, v99, v100, v101;
      *(v88 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v79, v80, "Combine for sharingType sourceAppBundleID: %s.", v88, 0xCu);
      sub_10000670C(v89);

      (*(v123 + 8))(v14, v122);
      if (!v78)
      {
        return 0;
      }
    }

    else
    {

      (*(v123 + 8))(v14, v122);
      v90 = v120;
      if (!v78)
      {
        return 0;
      }
    }

    if (v90 == 0x6C7070612E6D6F63 && v78 == 0xEF7365746F4E2E65 || (sub_10009E2E0() & 1) != 0 || v90 == 0xD000000000000015 && 0x80000001000A66F0 == v78 || (sub_10009E2E0() & 1) != 0)
    {
      return 1;
    }

    if (v90 == 0xD000000000000013 && 0x80000001000A66D0 == v78 || (sub_10009E2E0() & 1) != 0)
    {
      return 3;
    }

    if (v90 == 0xD000000000000010 && 0x80000001000A66B0 == v78 || (sub_10009E2E0() & 1) != 0 || v90 == 0xD000000000000016 && 0x80000001000A6690 == v78 || (sub_10009E2E0() & 1) != 0)
    {
      return 4;
    }

    if (v90 == 0xD000000000000010 && 0x80000001000A6670 == v121 || (sub_10009E2E0() & 1) != 0 || v120 == 0xD000000000000012 && 0x80000001000A6650 == v121 || (sub_10009E2E0() & 1) != 0)
    {
      return 5;
    }

    v118 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v118 = v120 & 0xFFFFFFFFFFFFLL;
    }

    if (v118)
    {
      return 6;
    }

    return 0;
  }

  v26 = sub_100096298(a4, a5, a1);
  v27 = sub_100094C94(v26);
  if ((v27 & 0xFE) != 8 && (v27 == 7 || !v27) && v121)
  {
    v28 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v28 = v120 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {
      v29 = v27;
      sub_10009D9D0();

      v30 = sub_10009D9E0();
      v31 = sub_10009DFF0();
      a5, v32, v33, v34, v35, v36, v37, v38;
      if (os_log_type_enabled(v30, v31))
      {
        v39 = swift_slowAlloc();
        v124[0] = swift_slowAlloc();
        *v39 = 136315394;
        *(v39 + 4) = sub_1000307A4(a4, a5, v124);
        *(v39 + 12) = 2080;
        v40 = sub_100006ED0(v29);
        v42 = v41;
        v43 = sub_1000307A4(v40, v41, v124);
        v42, v44, v45, v46, v47, v48, v49, v50;
        *(v39 + 14) = v43;
        _os_log_impl(&_mh_execute_header, v30, v31, "Combine for sharingType itemUTI: %s, sharingType: %s--return .other for unspecified.", v39, 0x16u);
        swift_arrayDestroy();
      }

      (*(v123 + 8))(v22, v122);
      return 6;
    }
  }

  v52 = v27;
  sub_10009D9D0();

  v53 = sub_10009D9E0();
  v54 = sub_10009DFF0();
  a5, v55, v56, v57, v58, v59, v60, v61;
  if (os_log_type_enabled(v53, v54))
  {
    v62 = swift_slowAlloc();
    v124[0] = swift_slowAlloc();
    *v62 = 136315394;
    *(v62 + 4) = sub_1000307A4(a4, a5, v124);
    *(v62 + 12) = 2080;
    v63 = v52;
    v64 = sub_100006ED0(v52);
    v66 = v65;
    v67 = sub_1000307A4(v64, v65, v124);
    v66, v68, v69, v70, v71, v72, v73, v74;
    *(v62 + 14) = v67;
    _os_log_impl(&_mh_execute_header, v53, v54, "Combine for sharingType itemUTI: %s, sharingType: %s.", v62, 0x16u);
    swift_arrayDestroy();

    (*(v123 + 8))(v20, v122);
    return v63;
  }

  else
  {

    (*(v123 + 8))(v20, v122);
    return v52;
  }
}

uint64_t sub_10001A8A0()
{
  v0 = sub_10009D9F0();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v71 - v6;
  __chkstk_darwin(v5);
  v9 = &v71 - v8;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (!v74)
  {
    sub_10009D9D0();
    v68 = sub_10009D9E0();
    v69 = sub_10009DFF0();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "ckSharingTypeFromShare on model--no CKShare yet so return .cloudKit(type: .other).", v70, 2u);
    }

    (*(v1 + 8))(v4, v0);
    return 6;
  }

  v10 = v74;
  sub_10009E0F0();
  v12 = v11;
  v13 = sub_10009E100();

  v12, v14, v15, v16, v17, v18, v19, v20;
  if (!v13 || (v76 = v13, sub_100003714(&unk_1000CA270, &qword_10009FF68), (swift_dynamicCast() & 1) == 0))
  {
    sub_10009D9D0();
    v65 = sub_10009D9E0();
    v66 = sub_10009DFF0();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "ckSharingTypeFromShare on model--couldn't get a string from CKShare.shareType so return .cloudKit(type: .other).", v67, 2u);
    }

    else
    {
    }

    (*(v1 + 8))(v7, v0);
    return 6;
  }

  v21 = v75;
  v22 = sub_1000951B4(v74, v75);
  v24 = v23;
  v21, v23, v25, v26, v27, v28, v29, v30;
  sub_10009D9D0();

  v31 = sub_10009D9E0();
  v32 = sub_10009DFF0();
  v24, v33, v34, v35, v36, v37, v38, v39;
  if (os_log_type_enabled(v31, v32))
  {
    v40 = swift_slowAlloc();
    v72 = v40;
    v73 = swift_slowAlloc();
    v74 = v73;
    *v40 = 136315138;
    v41 = sub_100096888(v22, v24);
    v42 = sub_100094C94(v41);
    v43 = sub_100006ED0(v42);
    v45 = v44;
    LOBYTE(v40) = v32;
    v46 = v22;
    v47 = sub_1000307A4(v43, v44, &v74);
    v45, v48, v49, v50, v51, v52, v53, v54;
    v55 = v72;
    *(v72 + 1) = v47;
    v22 = v46;
    _os_log_impl(&_mh_execute_header, v31, v40, "ckSharingTypeFromShare on model--CKShare converts to: %s.", v55, 0xCu);
    sub_10000670C(v73);
  }

  (*(v1 + 8))(v9, v0);
  v56 = sub_100096888(v22, v24);
  v24, v57, v58, v59, v60, v61, v62, v63;

  return sub_100094C94(v56);
}

uint64_t sub_10001ACE0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void, void, void)@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_100003714(&qword_1000CAD78, &qword_1000A11C8);
  result = a2(a1, *(a1 + v6[12]), *(a1 + v6[12] + 8), *(a1 + v6[16]), *(a1 + v6[16] + 8), *(a1 + v6[20]));
  *a3 = result;
  return result;
}

_BYTE *sub_10001AD58(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_10009DB00();
  }

  return result;
}

_UNKNOWN **sub_10001ADDC(char a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return &off_1000C1870;
  }

  if (!a2)
  {

    return &off_1000C1870;
  }

  v5 = a2;
  v6 = [v5 participants];
  sub_1000037C4(0, &qword_1000CAD70, CKShareParticipant_ptr);
  v7 = sub_10009DEA0();

  v8 = v5;

  sub_100098F14(a2);
  v29 = v9;

  if (v7 >> 62)
  {
    goto LABEL_53;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10009E260())
  {
    if (i)
    {
      v11 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v12 = sub_10009E1F0();
        }

        else
        {
          if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v12 = *(v7 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        if ([v12 role] != 1 && objc_msgSend(v13, "role") == 2 && objc_msgSend(v13, "permission") == 3)
        {
          sub_10009E210();
          sub_10009E230();
          sub_10009E240();
          sub_10009E220();
        }

        else
        {
        }

        ++v11;
      }

      while (v14 != i);
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
    {
LABEL_23:
      if ((_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
      {
        v16 = _swiftEmptyArrayStorage[2];
        goto LABEL_25;
      }
    }

    v16 = sub_10009E260();
LABEL_25:

    if (!i)
    {
      break;
    }

    v24 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v25 = sub_10009E1F0();
      }

      else
      {
        if (v24 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v25 = *(v7 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if ([v25 role] == 1 || objc_msgSend(v26, "role") == 2 && objc_msgSend(v26, "permission") != 2)
      {
      }

      else
      {
        sub_10009E210();
        sub_10009E230();
        sub_10009E240();
        sub_10009E220();
      }

      ++v24;
      if (v27 == i)
      {
        goto LABEL_38;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }

LABEL_38:
  v7, v17, v18, v19, v20, v21, v22, v23;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    goto LABEL_56;
  }

  for (j = _swiftEmptyArrayStorage[2]; ; j = sub_10009E260())
  {

    if (!__OFSUB__(j, v29))
    {
      break;
    }

    __break(1u);
LABEL_56:
    ;
  }

  if (v16 <= 0)
  {

    return &off_1000C17D0;
  }

  else if (j - v29 < 1)
  {

    return &off_1000C1848;
  }

  else
  {

    if (a1 == 3)
    {
      return &off_1000C17F8;
    }

    else
    {
      return &off_1000C1820;
    }
  }
}

uint64_t sub_10001B1E8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _TtC13SPIHelper_iOS9SPIHelper *a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_10009D9F0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v72 - v16;
  v18 = __chkstk_darwin(v15);
  v79 = &v72 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v72 - v21;
  __chkstk_darwin(v20);
  v24 = &v72 - v23;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = result;
    if (a1)
    {
      v73 = v14;
      v74 = v17;
      v76 = v11;
      v77 = v10;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v75 = v80;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v27 = v80;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_10009DAF0();

      v28 = v80;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v29 = v80 == 1 && (a1 == 1) | v28 & 1 && v75 != 2 && v27 == 2;
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v80) = v29;

      sub_10009DB00();
      sub_10009D9D0();

      v30 = sub_10009D9E0();
      v31 = sub_10009DFF0();
      v32 = os_log_type_enabled(v30, v31);
      v78 = v26;
      v72 = a6;
      if (v32)
      {
        v33 = v75 == 2;
        v34 = swift_slowAlloc();
        *v34 = 67241216;
        *(v34 + 4) = 1;
        *(v34 + 8) = 1026;
        *(v34 + 10) = v33;
        *(v34 + 14) = 1026;
        *(v34 + 16) = v27 == 2;
        *(v34 + 20) = 1026;
        *(v34 + 22) = a1 == 1;
        *(v34 + 26) = 1026;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10009DAF0();

        *(v34 + 28) = v80;

        _os_log_impl(&_mh_execute_header, v30, v31, "executionMode is set. appIsOKForCoOwners: %{BOOL,public}d, R/O: %{BOOL,public}d, private: %{BOOL,public}d, isPreShare: %{BOOL,public}d, allowCoOwnersEditing: %{BOOL,public}d", v34, 0x20u);
      }

      else
      {
      }

      v35 = v77;
      v36 = *(v76 + 8);
      v36(v24, v77);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      if (v80)
      {
        if (a1 != 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();

          sub_10009DAF0();

          v37 = v80;
          if (v80)
          {
            v38 = [(SPIHelper *)v80 participants];
            sub_1000037C4(0, &qword_1000CAD70, CKShareParticipant_ptr);
            v39 = sub_10009DEA0();

            v47 = v39;
            if (v39 >> 62)
            {
              v48 = sub_10009E260();
              v47 = v39;
            }

            else
            {
              v48 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v49 = v74;
            v47, v40, v41, v42, v43, v44, v45, v46;

            if (v48 > 1)
            {
              sub_10009D9D0();
              v50 = sub_10009D9E0();
              v51 = sub_10009DFB0();
              if (os_log_type_enabled(v50, v51))
              {
                v52 = swift_slowAlloc();
                *v52 = 0;
                _os_log_impl(&_mh_execute_header, v50, v51, "Do allow co-owner editing with participants.", v52, 2u);
              }

              v36(v79, v35);
              swift_getKeyPath();
              swift_getKeyPath();

              sub_10009DAF0();

              if (v80 == 1)
              {
                v53 = v72;
              }

              else
              {
                swift_getKeyPath();
                swift_getKeyPath();
                sub_10009DAF0();

                v53 = v80;
              }

              sub_100047B6C(v53);
              v53, v62, v63, v64, v65, v66, v67, v68;
              sub_10009D9D0();

              v69 = sub_10009D9E0();
              v70 = sub_10009DFF0();
              if (os_log_type_enabled(v69, v70))
              {
                v71 = swift_slowAlloc();
                *v71 = 67109120;
                *(v71 + 4) = sub_10004834C() & 1;

                _os_log_impl(&_mh_execute_header, v69, v70, "Setting newParticipantsCanBeCoOwners from CKShare state: %{BOOL}d.", v71, 8u);
                v49 = v74;
              }

              else
              {
              }

              v61 = v49;
              return (v36)(v61, v35);
            }
          }

          else
          {
          }

          v57 = v73;
          sub_10009D9D0();
          v58 = sub_10009D9E0();
          v59 = sub_10009DFB0();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            *v60 = 0;
            _os_log_impl(&_mh_execute_header, v58, v59, "Do allow co-owner editing without participants.", v60, 2u);
          }

          else
          {
          }

          v61 = v57;
          return (v36)(v61, v35);
        }
      }

      else
      {
        sub_10009D9D0();
        v54 = sub_10009D9E0();
        v55 = sub_10009DFB0();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v54, v55, "Do not allow co-owner editing. Updating state.", v56, 2u);
        }

        v36(v22, v35);
        sub_100047B6C(&off_1000C1898);
      }
    }
  }

  return result;
}

void sub_10001BB5C(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v2)
    {
      v3 = v2;
      sub_10009E0F0();
      v5 = v4;
      v6 = sub_10009E100();

      v5, v7, v8, v9, v10, v11, v12, v13;
      if (v6)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          sub_10009DD90();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_10009DB00();

          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRelease();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DB00();
    }

    else
    {
    }
  }
}

uint64_t sub_10001BCA0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (v2 == 8)
      {
LABEL_4:

        return swift_unknownObjectRelease();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      if (v4 != 8)
      {
        if (v4 == 9)
        {
          if (v2 > 6)
          {
            goto LABEL_4;
          }

LABEL_16:
          if (v2 == 4)
          {
            swift_getKeyPath();
            swift_getKeyPath();

            sub_10009DB00();
          }

          goto LABEL_4;
        }

        if (v2 == 9 || v4 == 7 || v2 == 7 || v4 == v2)
        {
          goto LABEL_4;
        }
      }

      if (v2 > 6)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_10001BE24(_BYTE *a1, uint64_t a2)
{
  v3 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v11[-v5];
  if (*a1 == 2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = result;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      if (v11[7] == 3)
      {
        sub_10009DF20();
        v8 = sub_10009DF40();
        (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
        sub_10009DF10();

        v9 = sub_10009DF00();
        v10 = swift_allocObject();
        v10[2] = v9;
        v10[3] = &protocol witness table for MainActor;
        v10[4] = v7;
        sub_100019B10(0, 0, v6, &unk_1000A10E8, v10);
      }
    }
  }

  return result;
}

uint64_t sub_10001BFF4()
{
  v0[2] = sub_10009DF10();
  v0[3] = sub_10009DF00();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10001C0A4;

  return sub_10001C240(1500);
}

uint64_t sub_10001C0A4()
{

  v1 = sub_10009DED0();

  return _swift_task_switch(sub_10001C1E0, v1, v0);
}

uint64_t sub_10001C1E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001C240(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_10009D9F0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  sub_10009DF10();
  v2[15] = sub_10009DF00();
  v5 = sub_10009DED0();
  v2[16] = v5;
  v2[17] = v4;

  return _swift_task_switch(sub_10001C340, v5, v4);
}

uint64_t sub_10001C340(uint64_t a1)
{
  v2 = *(v1 + 72);
  if (v2 < 1)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  *(v1 + 144) = BRCloudDocsErrorDomain;
  *(v1 + 152) = CKErrorDomain;
  *(v1 + 160) = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v3 = *(v1 + 57);
  if (v3 > 2)
  {
    if (v3 - 4 < 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v3 == 1)
    {
      v4 = swift_task_alloc();
      *(v1 + 168) = v4;
      *v4 = v1;
      v4[1] = sub_10001C62C;
      a1 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(a1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 63) = 3;

    sub_10009DB00();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v5 = *(v1 + 58);
  if (v5 == 4 || v5 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 59) = 1;

    sub_10009DB00();
    v6 = swift_task_alloc();
    *(v1 + 176) = v6;
    *v6 = v1;
    v6[1] = sub_10001CA28;

    return sub_100022220();
  }

LABEL_15:

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_10001C62C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_10003A8A4;
  }

  else
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_10001C750;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10001C750(uint64_t a1)
{
  v2 = *(v1 + 160);
  if (v2 == 1)
  {
    goto LABEL_16;
  }

  if (v2 < 2)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  *(v1 + 160) = v2 - 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v3 = *(v1 + 57);
  if (v3 > 2)
  {
    if (v3 - 4 < 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v3 == 1)
    {
      v4 = swift_task_alloc();
      *(v1 + 168) = v4;
      *v4 = v1;
      v4[1] = sub_10001C62C;
      a1 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(a1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 63) = 3;

    sub_10009DB00();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v5 = *(v1 + 58);
  if (v5 == 4 || v5 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 59) = 1;

    sub_10009DB00();
    v6 = swift_task_alloc();
    *(v1 + 176) = v6;
    *v6 = v1;
    v6[1] = sub_10001CA28;

    return sub_100022220();
  }

LABEL_16:

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_10001CA28()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_10001CEA0;
  }

  else
  {
    v5 = sub_10001CB64;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10001CB64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 62) = 4;

  v1 = sub_10009DB00();
  v2 = *(v0 + 160);
  if (v2 == 1)
  {
    goto LABEL_16;
  }

  if (v2 < 2)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(v1);
  }

  *(v0 + 160) = v2 - 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v3 = *(v0 + 57);
  if (v3 > 2)
  {
    if (v3 - 4 < 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v3 == 1)
    {
      v4 = swift_task_alloc();
      *(v0 + 168) = v4;
      *v4 = v0;
      v4[1] = sub_10001C62C;
      v1 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(v1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 3;

    sub_10009DB00();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v5 = *(v0 + 58);
  if (v5 == 4 || v5 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 1;

    sub_10009DB00();
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_10001CA28;

    return sub_100022220();
  }

LABEL_16:

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10001CEA0()
{
  v125 = v0;
  *(v0 + 64) = *(v0 + 184);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v0 + 192) = v3;
  *(v0 + 200) = v4;
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  *(v0 + 208) = v6;
  *(v0 + 216) = v5;
  v7 = *(v0 + 48);
  *(v0 + 224) = v7;
  v8 = *(v0 + 56);
  if (v8 != 1)
  {
    sub_1000323E0(v3, v4, v6, v5, v7, v8, v1, v2);
    goto LABEL_16;
  }

  v121 = v5;
  v122 = v3;
  if (!v6)
  {
LABEL_38:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(v3);
  }

  v9 = v6;
  v123 = v4;

  v10 = [v9 domain];
  v11 = sub_10009DD90();
  v13 = v12;

  v15 = sub_10009DD90();
  v21 = v14;
  if (v11 == v15 && v13 == v14)
  {
    v14, v14, v15, v16, v17, v18, v19, v20;
    v13, v22, v23, v24, v25, v26, v27, v28;
    goto LABEL_9;
  }

  v29 = sub_10009E2E0();
  v21, v30, v31, v32, v33, v34, v35, v36;
  v13, v37, v38, v39, v40, v41, v42, v43;
  if (v29)
  {
LABEL_9:
    v44 = [v9 code];

    if (v44 == 7)
    {
      v45 = swift_task_alloc();
      *(v0 + 232) = v45;
      *v45 = v0;
      v46 = sub_10001D6CC;
      goto LABEL_23;
    }

    goto LABEL_12;
  }

LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 61) = 5;

  sub_10009DB00();
  sub_10009D9D0();
  v47 = v9;
  v48 = v123;

  v49 = sub_10009D9E0();
  v50 = sub_10009DFD0();
  v123, v51, v52, v53, v54, v55, v56, v57;

  v7, v58, v59, v60, v61, v62, v63, v64;
  v120 = v50;
  v65 = os_log_type_enabled(v49, v50);
  v66 = *(v0 + 112);
  v68 = *(v0 + 88);
  v67 = *(v0 + 96);
  if (v65)
  {
    v118 = *(v0 + 112);
    v69 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v124 = v117;
    *v69 = 136315138;
    v119 = v47;
    v70 = v47;
    v71 = [v70 description];
    log = v49;
    v116 = v68;
    v72 = sub_10009DD90();
    v74 = v73;

    v48 = v123;
    v75 = sub_1000307A4(v72, v74, &v124);
    v74, v76, v77, v78, v79, v80, v81, v82;
    *(v69 + 4) = v75;
    v47 = v119;
    _os_log_impl(&_mh_execute_header, log, v120, "tryToCreateShareIfNeeded not-in-iCloud error after retries: %s", v69, 0xCu);
    sub_10000670C(v117);

    (*(v67 + 8))(v118, v116);
  }

  else
  {

    (*(v67 + 8))(v66, v68);
  }

  v83 = v47;
  sub_1000264AC(1u, v6);
  sub_1000323E0(v122, v48, v6, v121, v7, 1, v84, v85);

  v48, v86, v87, v88, v89, v90, v91, v92;
  v7, v93, v94, v95, v96, v97, v98, v99;
LABEL_16:
  v100 = *(v0 + 152);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 60) = 5;

  sub_10009DB00();
  v101 = [objc_allocWithZone(NSError) initWithDomain:v100 code:1 userInfo:0];
  sub_10009D9D0();
  v102 = sub_10009D9E0();
  v103 = sub_10009DFD0();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    *v104 = 0;
    _os_log_impl(&_mh_execute_header, v102, v103, "tryToCreateShareIfNeeded unexpected error, returning CKError.internalError as best approximation", v104, 2u);
  }

  v106 = *(v0 + 96);
  v105 = *(v0 + 104);
  v107 = *(v0 + 88);

  (*(v106 + 8))(v105, v107);
  v108 = v101;
  sub_1000264AC(1u, v101);

  v109 = *(v0 + 160);
  if (v109 == 1)
  {
    goto LABEL_34;
  }

  if (v109 < 2)
  {
    __break(1u);
    goto LABEL_38;
  }

  *(v0 + 160) = v109 - 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v110 = *(v0 + 57);
  if (v110 > 2)
  {
    if (v110 - 4 < 2)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (v110 == 1)
    {
      v45 = swift_task_alloc();
      *(v0 + 168) = v45;
      *v45 = v0;
      v46 = sub_10001C62C;
LABEL_23:
      v45[1] = v46;
      v3 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(v3);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 3;

    sub_10009DB00();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v111 = *(v0 + 58);
  if (v111 == 4 || v111 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 1;

    sub_10009DB00();
    v112 = swift_task_alloc();
    *(v0 + 176) = v112;
    *v112 = v0;
    v112[1] = sub_10001CA28;

    return sub_100022220();
  }

LABEL_34:

  v114 = *(v0 + 8);

  return v114();
}

uint64_t sub_10001D6CC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_10003A8C4;
  }

  else
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_10001D7F0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10001D7F0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);

  v4, v6, v7, v8, v9, v10, v11, v12;

  v2, v13, v14, v15, v16, v17, v18, v19;
  sub_1000323E0(v5, v4, v3, v1, v2, 1, v20, v21);
  v23 = *(v0 + 160);
  if (v23 == 1)
  {
    goto LABEL_16;
  }

  if (v23 < 2)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(v22);
  }

  *(v0 + 160) = v23 - 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v24 = *(v0 + 57);
  if (v24 > 2)
  {
    if (v24 - 4 < 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v24 == 1)
    {
      v25 = swift_task_alloc();
      *(v0 + 168) = v25;
      *v25 = v0;
      v25[1] = sub_10001C62C;
      v22 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(v22);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 3;

    sub_10009DB00();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v26 = *(v0 + 58);
  if (v26 == 4 || v26 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 1;

    sub_10009DB00();
    v27 = swift_task_alloc();
    *(v0 + 176) = v27;
    *v27 = v0;
    v27[1] = sub_10001CA28;

    return sub_100022220();
  }

LABEL_16:

  v29 = *(v0 + 8);

  return v29();
}