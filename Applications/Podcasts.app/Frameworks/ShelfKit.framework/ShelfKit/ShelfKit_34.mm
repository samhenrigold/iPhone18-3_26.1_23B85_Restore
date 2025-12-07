uint64_t sub_395E0C(uint64_t a1)
{
  if (a1 == 4)
  {
    sub_394524(*(v1 + OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_configuration), *(v1 + OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_configuration + 8));
  }

  v2 = OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_attributeStack;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!v3[2])
  {
    __break(1u);
LABEL_8:
    result = sub_2A5210(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = v3[2];
  if (v5)
  {
LABEL_6:
    v3[2] = v5 - 1;
    *(v1 + v2) = v3;
    swift_endAccess();

    return [*(v1 + OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_accumulator) endEditing];
  }

LABEL_9:
  __break(1u);
  return result;
}

double sub_395EE8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(NSMutableString);
  v3 = sub_3ED204();
  v4 = [v2 initWithString:v3];

  if (qword_4E8C28 != -1)
  {
    swift_once();
  }

  v5 = qword_5044A0;
  if (qword_5044A0)
  {
    v6 = [v4 length];
    v7 = sub_3ED204();
    [v5 replaceMatchesInString:v4 options:0 range:0 withTemplate:{v6, v7}];
  }

  v8 = sub_3ED244();
  sub_394524(v8, v9);

  return result;
}

double sub_396008()
{
  [*(v0 + OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_accumulator) beginEditing];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7C80, &unk_40BC80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3F5630;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v2 = *(v0 + OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_configuration + 48);
  *(inited + 64) = sub_36174(0, &unk_504570, NSParagraphStyle_ptr);
  *(inited + 40) = v2;
  v3 = NSParagraphStyleAttributeName;
  v4 = v2;
  v5 = sub_619F4(inited);
  swift_setDeallocating();
  sub_FCF8(inited + 32, &qword_4EC478, &qword_3F8748);
  sub_394150(v5);

  return result;
}

uint64_t sub_396108()
{
  sub_394524(*(v0 + OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_configuration), *(v0 + OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_configuration + 8));
  v1 = OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_attributeStack;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_2A5210(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v2[2] = v4 - 1;
    *(v0 + v1) = v2;
    swift_endAccess();

    return [*(v0 + OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_accumulator) endEditing];
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_3961DC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

id static NSParagraphStyle.listItem(withIndentation:)(double a1)
{
  v2 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v2 setFirstLineHeadIndent:0.0];
  [v2 setHeadIndent:a1];
  [v2 setDefaultTabInterval:a1];
  sub_61C44(_swiftEmptyArrayStorage);
  v3 = objc_allocWithZone(NSTextTab);
  type metadata accessor for OptionKey(0);
  sub_396424();
  isa = sub_3ED084().super.isa;

  v5 = [v3 initWithTextAlignment:4 location:isa options:a1];

  [v2 addTabStop:v5];
  return v2;
}

BOOL NSParagraphStyle.isListItem.getter()
{
  [v0 firstLineHeadIndent];
  if (v1 != 0.0)
  {
    return 0;
  }

  [v0 headIndent];
  if (v2 <= 0.0)
  {
    return 0;
  }

  [v0 defaultTabInterval];
  if (v3 <= 0.0)
  {
    return 0;
  }

  v4 = [v0 tabStops];
  sub_39647C();
  v5 = sub_3ED584();

  if (v5 >> 62)
  {
    v6 = sub_3EE5A4();
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  return v6 != 0;
}

unint64_t sub_396424()
{
  result = qword_4E9150;
  if (!qword_4E9150)
  {
    type metadata accessor for OptionKey(255);
    result = swift_getWitnessTable("5p\v", v3, v0, v1);
    atomic_store(result, &qword_4E9150);
  }

  return result;
}

unint64_t sub_39647C()
{
  result = qword_5045B8;
  if (!qword_5045B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_5045B8);
  }

  return result;
}

char *sub_3964C8(void *a1)
{
  result = [v1 length];
  v4 = result;
  if (result < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      result = [a1 characterIsMember:{objc_msgSend(v1, "characterAtIndex:", v5)}];
      if (!result)
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_18;
      }
    }
  }

  if (v5 == v4)
  {
    goto LABEL_18;
  }

  v6 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  while (v6 >= v5)
  {
    result = [a1 characterIsMember:{objc_msgSend(v1, "characterAtIndex:", v6)}];
    if (!result)
    {
      break;
    }

    if (__OFSUB__(v6--, 1))
    {
      __break(1u);
      break;
    }
  }

  if (__OFADD__(v6, 1))
  {
    goto LABEL_22;
  }

  v8 = (v4 - v6);
  if (__OFSUB__(v4, v6))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (__OFSUB__(v8, 1))
  {
LABEL_24:
    __break(1u);
    return result;
  }

  [v1 deleteCharactersInRange:{v6 + 1, v8 - 1}];
  v4 = v5;
LABEL_18:

  return [v1 deleteCharactersInRange:{0, v4}];
}

uint64_t OAuthController.__allocating_init(endpointSubscriber:hudViewHandler:)(uint64_t a1, __int128 *a2)
{
  v3 = swift_allocObject();
  OAuthController.init(endpointSubscriber:hudViewHandler:)(v3, a2);
  return v3;
}

uint64_t OAuthController.init(endpointSubscriber:hudViewHandler:)(uint64_t a1, __int128 *a2)
{
  v12 = a2;
  v11 = sub_3EDBB4();
  v3 = *(v11 - 8);
  __chkstk_darwin(v11);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3EDB54();
  __chkstk_darwin(v6);
  v7 = sub_3EBC14();
  __chkstk_darwin(v7 - 8);
  v8 = sub_801B4();
  v10[1] = "ShelfKit.NqmlStringGenerator";
  v10[2] = v8;
  sub_3EBBE4();
  v13 = _swiftEmptyArrayStorage;
  sub_3974F4(&qword_4F1CA8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CB0, &unk_40AE10);
  sub_318924(&qword_4F1CB8, &qword_4F1CB0, &unk_40AE10);
  sub_3EE244();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  *(v2 + 16) = sub_3EDBF4();
  *(v2 + 24) = 0;
  sub_1D4F0(v12, v2 + 32);
  return v2;
}

uint64_t OAuthController.authenticateThirdPartySubscription(authorizationURL:oAuthAdamId:window:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v42 = a5;
  v44 = a4;
  v45 = a6;
  v52 = a2;
  v8 = sub_3EBBC4();
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin(v8);
  v49 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EBC14();
  v47 = *(v10 - 8);
  v48 = v10;
  __chkstk_darwin(v10);
  v46 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_3E5DC4();
  v12 = *(v41 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v41);
  v14 = sub_3E9A04();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E99E4();

  v18 = sub_3E99F4();
  v19 = sub_3ED9F4();
  v53 = a3;

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v40 = a1;
    v22 = v21;
    aBlock[0] = v21;
    *v20 = 141558275;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    *(v20 + 14) = sub_2EDD0(v52, v53, aBlock);
    _os_log_impl(&dword_0, v18, v19, "%{private,mask.hash}s: Authenticating OAuth from PurchaseController.", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    a1 = v40;
  }

  (*(v15 + 8))(v17, v14);
  v23 = v43;
  v40 = *(v43 + 16);
  v24 = v41;
  (*(v12 + 16))(&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v41);
  v25 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v26 = (v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  (*(v12 + 32))(v28 + v25, &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  v29 = (v28 + v26);
  v30 = v53;
  *v29 = v52;
  v29[1] = v30;
  v32 = v44;
  v31 = v45;
  *(v28 + v27) = v44;
  v33 = (v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v33 = v42;
  v33[1] = v31;
  aBlock[4] = sub_3974C4;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_30;
  v34 = _Block_copy(aBlock);

  v35 = v32;

  v36 = v46;
  sub_3EBBE4();
  v54 = _swiftEmptyArrayStorage;
  sub_3974F4(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
  sub_318924(&qword_506A30, &unk_503DE0, &unk_40B9F0);
  v37 = v49;
  v38 = v51;
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v34);
  (*(v50 + 8))(v37, v38);
  (*(v47 + 8))(v36, v48);
}

uint64_t sub_396E20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v69 = a6;
  v70 = a7;
  v75 = a5;
  v77 = a3;
  v73 = a2;
  v9 = sub_3E5FC4();
  v68 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_3E5DC4();
  v72 = *(v74 - 8);
  v12 = *(v72 + 64);
  __chkstk_darwin(v74);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  v71 = sub_3E9A04();
  v17 = *(v71 - 8);
  __chkstk_darwin(v71);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v65 - v21;
  v76 = a1;
  if (*(a1 + 24))
  {
    v68 = a4;

    sub_3E99E4();
    v23 = sub_3E99F4();
    v24 = sub_3ED9D4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "There already exists an OAuthSession. This should never happen. Cancelling existing session.", v25, 2u);
    }

    (*(v17 + 8))(v19, v71);
    v26 = v72;
    v27 = v74;
    (*(v72 + 16))(v13, v73, v74);
    v28 = (*(v26 + 80) + 24) & ~*(v26 + 80);
    v29 = (v12 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    *(v31 + 16) = v76;
    (*(v26 + 32))(v31 + v28, v13, v27);
    v32 = (v31 + v29);
    v33 = v68;
    *v32 = v77;
    v32[1] = v33;
    v34 = v75;
    *(v31 + v30) = v75;
    v35 = (v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
    v36 = v70;
    *v35 = v69;
    v35[1] = v36;

    v37 = v34;

    sub_39D348(sub_398F7C, v31);
  }

  v65 = v16;
  v66 = v11;
  v67 = v9;
  sub_3E99E4();

  v38 = sub_3E99F4();
  v39 = sub_3ED9F4();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v78[0] = v41;
    *v40 = 141558275;
    *(v40 + 4) = 1752392040;
    *(v40 + 12) = 2081;
    *(v40 + 14) = sub_2EDD0(v77, a4, v78);
    _os_log_impl(&dword_0, v38, v39, "%{private,mask.hash}s: Initializing an OAuth session in PurchaseController", v40, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  (*(v17 + 8))(v22, v71);
  v42 = v76;
  v43 = v72;
  v44 = *(v72 + 16);
  v45 = v65;
  v46 = v74;
  v44(v65, v73, v74);
  sub_1F958(v42 + 32, v78);
  v47 = *(v42 + 16);
  sub_801B4();
  v48 = sub_3EDBC4();
  type metadata accessor for OAuthSession(0);
  v49 = swift_allocObject();
  *(v49 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oauthSession) = 0;
  *(v49 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_webAuthenticationSession) = 0;
  v44((v49 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_authorizationURL), v45, v46);
  v50 = (v49 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oAuthAdamId);
  *v50 = v77;
  v50[1] = a4;
  sub_1F958(v78, v49 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_hudViewHandler);
  v51 = v75;
  *(v49 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_window) = v75;
  *(v49 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_workQueue) = v47;
  *(v49 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_uiQueue) = v48;

  v52 = v51;
  v53 = v47;
  v54 = v48;
  v55 = sub_3E5D64();
  if (v56)
  {
    v57 = v55;
  }

  else
  {
    v57 = 0;
  }

  v58 = 0xE000000000000000;
  if (v56)
  {
    v58 = v56;
  }

  v59 = (v49 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId);
  *v59 = v57;
  v59[1] = v58;
  v60 = v66;
  sub_3E5FB4();

  __swift_destroy_boxed_opaque_existential_1Tm(v78);
  (*(v43 + 8))(v45, v46);
  (*(v68 + 32))(v49 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_state, v60, v67);
  *(v42 + 24) = v49;

  if (*(v42 + 24))
  {
    v62 = swift_allocObject();
    v63 = v69;
    v64 = v70;
    v62[2] = v42;
    v62[3] = v63;
    v62[4] = v64;

    sub_39B740(sub_398F70, v62);
  }

  return result;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3974F4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_39753C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v35 = a6;
  v36 = a7;
  v33 = a4;
  v34 = a5;
  v32 = a3;
  v40 = sub_3EBBC4();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_3EBC14();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3E5DC4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(a1 + 16);
  (*(v13 + 16))(v16, a2, v12, v15);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  (*(v13 + 32))(v20 + v17, v16, v12);
  v21 = (v20 + v18);
  v22 = v33;
  *v21 = v32;
  v21[1] = v22;
  v24 = v34;
  v23 = v35;
  *(v20 + v19) = v34;
  v25 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = v36;
  *v25 = v23;
  v25[1] = v26;
  aBlock[4] = sub_39909C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_20;
  v27 = _Block_copy(aBlock);

  v28 = v24;

  sub_3EBBE4();
  v43 = _swiftEmptyArrayStorage;
  sub_3974F4(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
  sub_318924(&qword_506A30, &unk_503DE0, &unk_40B9F0);
  v29 = v38;
  v30 = v40;
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v27);
  (*(v42 + 8))(v29, v30);
  (*(v39 + 8))(v11, v41);
}

uint64_t sub_397930(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v53 = a6;
  v54 = a7;
  v58 = a5;
  v55 = a2;
  v56 = a3;
  v9 = sub_3E5FC4();
  v62 = *(v9 - 8);
  v63 = v9;
  __chkstk_darwin(v9);
  v61 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3E5DC4();
  v59 = *(v11 - 8);
  v60 = v11;
  __chkstk_darwin(v11);
  v57 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3E9A04();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v52 - v18;
  *(a1 + 24) = 0;

  sub_3E99E4();
  v20 = sub_3E99F4();
  v21 = sub_3ED9F4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "Canceled existing OAuth session before starting a new one.", v22, 2u);
  }

  v64 = a4;

  v23 = *(v14 + 8);
  v23(v19, v13);
  sub_3E99E4();

  v24 = sub_3E99F4();
  v25 = sub_3ED9F4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v65[0] = v27;
    *v26 = 141558275;
    *(v26 + 4) = 1752392040;
    *(v26 + 12) = 2081;
    v28 = v56;
    *(v26 + 14) = sub_2EDD0(v56, v64, v65);
    _os_log_impl(&dword_0, v24, v25, "%{private,mask.hash}s: Initializing an OAuth session in PurchaseController", v26, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);

    v23(v16, v13);
  }

  else
  {

    v23(v16, v13);
    v28 = v56;
  }

  v30 = v59;
  v29 = v60;
  v31 = *(v59 + 16);
  v32 = v57;
  v31(v57, v55, v60);
  sub_1F958(a1 + 32, v65);
  v33 = *(a1 + 16);
  sub_801B4();
  v34 = sub_3EDBC4();
  type metadata accessor for OAuthSession(0);
  v35 = swift_allocObject();
  *(v35 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oauthSession) = 0;
  *(v35 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_webAuthenticationSession) = 0;
  v31((v35 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_authorizationURL), v32, v29);
  v36 = (v35 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oAuthAdamId);
  v37 = v64;
  *v36 = v28;
  v36[1] = v37;
  sub_1F958(v65, v35 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_hudViewHandler);
  v38 = v58;
  *(v35 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_window) = v58;
  *(v35 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_workQueue) = v33;
  *(v35 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_uiQueue) = v34;

  v39 = v38;
  v40 = v33;
  v41 = v34;
  v42 = sub_3E5D64();
  if (v43)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0;
  }

  v45 = 0xE000000000000000;
  if (v43)
  {
    v45 = v43;
  }

  v46 = (v35 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId);
  *v46 = v44;
  v46[1] = v45;
  v47 = v61;
  sub_3E5FB4();

  __swift_destroy_boxed_opaque_existential_1Tm(v65);
  (*(v30 + 8))(v32, v29);
  (*(v62 + 32))(v35 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_state, v47, v63);
  *(a1 + 24) = v35;

  if (*(a1 + 24))
  {
    v49 = swift_allocObject();
    v50 = v53;
    v51 = v54;
    v49[2] = a1;
    v49[3] = v50;
    v49[4] = v51;

    sub_39B740(sub_3992A0, v49);
  }

  return result;
}

uint64_t OAuthController.resumeThirdPartySubscription(redirectURL:)(uint64_t a1)
{
  v3 = sub_3EBBC4();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3EBC14();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3E5DC4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v17[1] = *(v1 + 16);
  (*(v10 + 16))(v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v12);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  (*(v10 + 32))(v14 + v13, v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_398EB8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_6_1;
  v15 = _Block_copy(aBlock);

  sub_3EBBE4();
  v21 = _swiftEmptyArrayStorage;
  sub_3974F4(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
  sub_318924(&qword_506A30, &unk_503DE0, &unk_40B9F0);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v15);
  (*(v20 + 8))(v5, v3);
  (*(v18 + 8))(v8, v19);
}

uint64_t sub_39824C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E9A04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 24))
  {

    sub_39B1A4(a2);
  }

  else
  {
    sub_3E99E4();
    v9 = sub_3E99F4();
    v10 = sub_3ED9D4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "Resume OAuthSession called but there is no OAuthSession to resume.", v11, 2u);
    }

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_3983D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_3EBBC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_3EBC14();
  v14 = *(v21 - 8);
  __chkstk_darwin(v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(a3 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  *(v17 + 48) = a2;
  aBlock[4] = sub_399200;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_30;
  v18 = _Block_copy(aBlock);

  swift_errorRetain();
  sub_3EBBE4();
  v22 = _swiftEmptyArrayStorage;
  sub_3974F4(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
  sub_318924(&qword_506A30, &unk_503DE0, &unk_40B9F0);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v21);
}

uint64_t sub_3986B4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a2;
  v38 = a3;
  v36 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_504678, &unk_41EE30);
  v34 = *(v7 - 8);
  v35 = v7;
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = sub_3E9A04();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  sub_3E99E4();
  v17 = sub_3E99F4();
  v18 = sub_3ED9F4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = v36 & 1;
    _os_log_impl(&dword_0, v17, v18, "OAuthSession Authentication completed with subscribed: %{BOOL}d", v19, 8u);
  }

  v20 = *(v11 + 8);
  v20(v16, v10);
  if (a5)
  {
    swift_errorRetain();
    sub_3E99E4();
    swift_errorRetain();
    v21 = sub_3E99F4();
    v22 = sub_3ED9D4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = a4;
      v25 = swift_slowAlloc();
      *v23 = 138412290;
      v26 = sub_3E5B74();
      *(v23 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&dword_0, v21, v22, "OAuthSession Authentication failed with error: %@", v23, 0xCu);
      sub_D1C44(v25);
      a4 = v24;
    }

    v20(v13, v10);
    swift_errorRetain();
    sub_398A7C(0, a5, v37, v38, a4);
  }

  else
  {
    if (v36)
    {
      sub_3E9154();
      v28 = sub_3E9144();
      v29 = sub_3E9134();

      v31 = v34;
      v30 = v35;
      (*(v34 + 104))(v9, enum case for PurchaseController.RefreshCondition.always<A>(_:), v35);
      sub_3E8844();

      (*(v31 + 8))(v9, v30);
      v32 = 1;
    }

    else
    {
      v32 = 0;
    }

    return sub_398A7C(v32, 0, v37, v38, a4);
  }
}

uint64_t sub_398A7C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_3EBBC4();
  v21 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_3EBC14();
  v13 = *(v20 - 8);
  __chkstk_darwin(v20);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 24) = 0;

  sub_801B4();
  v16 = sub_3EDBC4();
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  aBlock[4] = sub_399250;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_36;
  v18 = _Block_copy(aBlock);

  swift_errorRetain();

  sub_3EBBE4();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_3974F4(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
  sub_318924(&qword_506A30, &unk_503DE0, &unk_40B9F0);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v18);

  (*(v21 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v20);
}

uint64_t OAuthController.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  return v0;
}

uint64_t OAuthController.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_398DF4()
{
  v1 = sub_3E5DC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_398EB8()
{
  v1 = *(sub_3E5DC4() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_39824C(v2, v3);
}

uint64_t objectdestroyTm_13()
{
  v1 = sub_3E5DC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_3990B4(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_3E5DC4() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = (v1 + v4);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v5);
  v11 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return a1(v6, v1 + v3, v8, v9, v10, v12, v13);
}

uint64_t objectdestroy_10Tm()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3991B8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_399210()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t OAuthHUDViewHandler.spinnerIsActive.getter(double a1)
{
  v2 = v1;
  v3 = sub_3EBC24();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_801B4();
  *v6 = sub_3EDBC4();
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v7 = sub_3EBC34();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    swift_beginAccess();
    sub_FBD0(v2 + 24, v12, &qword_504680, &qword_41EE40);
    if (v12[0])
    {
      v9 = 0;
    }

    else
    {
      v9 = v12[1] == 1;
    }

    v10 = !v9;
    sub_FCF8(v12, &qword_504680, &qword_41EE40);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double OAuthHUDViewHandler.__allocating_init(asPartOf:)(uint64_t a1)
{
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 24) = xmmword_40BCD0;
  *(v2 + 16) = a1;
  return result;
}

uint64_t OAuthHUDViewHandler.init(asPartOf:)(uint64_t a1)
{
  *(v1 + 24) = xmmword_40BCD0;
  *(v1 + 16) = a1;
  return v1;
}

Swift::Void __swiftcall OAuthHUDViewHandler.start()()
{
  v1 = v0;
  v2 = sub_3E5FC4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3EC1F4();
  v32 = *(v6 - 8);
  v33 = v6;
  __chkstk_darwin(v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_3EBC24();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_801B4();
  *v15 = sub_3EDBC4();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = sub_3EBC34();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v30 = v3;
  v31 = v2;
  if (qword_4E8900 != -1)
  {
LABEL_5:
    swift_once();
  }

  v18 = qword_4ECD18;
  v17 = unk_4ECD20;
  v19 = byte_4ECD28;
  v20 = qword_4ECD30;
  v21 = byte_4ECD38;
  type metadata accessor for LoadingAction(0);
  v22 = swift_allocObject();
  v23 = v22 + OBJC_IVAR____TtC8ShelfKit13LoadingAction_config;
  *v23 = v18;
  *(v23 + 8) = v17;
  *(v23 + 16) = v19;
  *(v23 + 24) = v20;
  *(v23 + 32) = v21;
  v24 = (v22 + OBJC_IVAR____TtC8ShelfKit13LoadingAction_updateHandler);
  *v24 = sub_399908;
  v24[1] = v1;
  v25 = sub_3EC634();
  (*(*(v25 - 8) + 56))(v11, 1, 1, v25);

  swift_retain_n();
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v26 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v28 = v27;

  (*(v30 + 8))(v5, v31);
  *(v22 + 16) = v26;
  *(v22 + 24) = v28;
  *(v22 + 32) = 0;
  *(v22 + 40) = 0;
  *(v22 + 48) = 32;
  (*(v32 + 32))(v22 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v8, v33);
  sub_14A10(v11, v22 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  sub_39A600(v22, v1, type metadata accessor for LoadingAction, &qword_504738, type metadata accessor for LoadingAction, v29);
}

uint64_t sub_3998B0(uint64_t a1, uint64_t a2)
{
  sub_39AD5C(a1, v4);
  swift_beginAccess();
  sub_39A590(v4, a2 + 24);
  return swift_endAccess();
}

Swift::Void __swiftcall OAuthHUDViewHandler.dismiss(success:)(Swift::Bool success)
{
  v2 = v1;
  v4 = sub_3E9A04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_3EBC24();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_801B4();
  *v14 = sub_3EDBC4();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = sub_3EBC34();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  swift_beginAccess();
  sub_FBD0(v2 + 24, &v32, &qword_504680, &qword_41EE40);
  if (v32 || v33 != 1)
  {
    sub_39A4E0(&v32, v38);
    sub_3E99E4();
    v19 = sub_3E99F4();
    v20 = sub_3ED9F4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 4) = success;
      _os_log_impl(&dword_0, v19, v20, "Dismissing spinner with OAuth success: %{BOOL}d", v21, 8u);
    }

    (*(v5 + 8))(v10, v4);
    if (!success)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v29 = v39;
        ObjectType = swift_getObjectType();
        (*(v29 + 8))(ObjectType, v29);
        goto LABEL_15;
      }

LABEL_16:
      sub_39A53C(v38);
      v37 = xmmword_40BCD0;
      swift_beginAccess();
      sub_39A590(&v37, v2 + 24);
      swift_endAccess();
      return;
    }

    if (qword_4E8908 == -1)
    {
LABEL_11:
      v22 = qword_4ECD40;
      v23 = *algn_4ECD48;
      v24 = byte_4ECD50;
      v25 = qword_4ECD58;
      v26 = byte_4ECD60;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = v39;
        v28 = swift_getObjectType();
        v32 = v22;
        v33 = v23;
        v34 = v24;
        v35 = v25;
        v36 = v26;
        (*(v27 + 16))(&v32, v28, v27);
LABEL_15:
        swift_unknownObjectRelease();
        goto LABEL_16;
      }

      goto LABEL_16;
    }

LABEL_18:
    swift_once();
    goto LABEL_11;
  }

  sub_FCF8(&v32, &qword_504680, &qword_41EE40);
  sub_3E99E4();
  v16 = sub_3E99F4();
  v17 = sub_3ED9D4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "Dismiss called on HUDViewHandler but there is no view token.", v18, 2u);
  }

  (*(v5 + 8))(v7, v4);
}

Swift::Void __swiftcall OAuthHUDViewHandler.displayAlert(title:description:)(Swift::String title, Swift::String_optional description)
{
  countAndFlagsBits = title._countAndFlagsBits;
  object = description.value._object;
  v37 = description.value._countAndFlagsBits;
  v2 = title._object;
  v3 = sub_3E5FC4();
  v43 = *(v3 - 8);
  __chkstk_darwin(v3);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_3EC1F4();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v6 - 8);
  v38 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_3E9A04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3EBC24();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_801B4();
  *v18 = sub_3EDBC4();
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v19 = sub_3EBC34();
  (*(v16 + 8))(v18, v15);
  if (v19)
  {
    v36 = v3;
    sub_3E99E4();

    v20 = sub_3E99F4();
    v21 = sub_3ED9F4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v47 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_2EDD0(countAndFlagsBits, v2, &v47);
      _os_log_impl(&dword_0, v20, v21, "Displaying OAuth alert with title: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
    }

    (*(v12 + 8))(v14, v11);
    v24 = sub_3E7784();
    (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
    type metadata accessor for AlertAction(0);
    v25 = swift_allocObject();
    v26 = (v25 + OBJC_IVAR____TtC8ShelfKit11AlertAction_message);
    v27 = object;
    *v26 = v37;
    v26[1] = v27;
    *(v25 + OBJC_IVAR____TtC8ShelfKit11AlertAction_isCancelable) = 1;
    *(v25 + OBJC_IVAR____TtC8ShelfKit11AlertAction_buttonActions) = 0;
    *(v25 + OBJC_IVAR____TtC8ShelfKit11AlertAction_style) = 0;
    sub_FBD0(v10, v25 + OBJC_IVAR____TtC8ShelfKit11AlertAction_artwork, &qword_4F1D50, &unk_3F7520);
    v28 = sub_3EC634();
    v29 = v38;
    (*(*(v28 - 8) + 56))(v38, 1, 1, v28);

    v30 = v39;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v31 = v40;
    sub_3E5FB4();
    v32 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v34 = v33;
    (*(v43 + 8))(v31, v36);
    sub_FCF8(v10, &qword_4F1D50, &unk_3F7520);
    *(v25 + 16) = v32;
    *(v25 + 24) = v34;
    *(v25 + 32) = countAndFlagsBits;
    *(v25 + 40) = v2;
    *(v25 + 48) = 32;
    (*(v42 + 32))(v25 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v30, v44);
    sub_14A10(v29, v25 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

    sub_39A600(v25, v45, type metadata accessor for AlertAction, &qword_504730, type metadata accessor for AlertAction, v35);
  }

  else
  {
    __break(1u);
  }
}

uint64_t OAuthHUDViewHandler.deinit()
{

  sub_FCF8(v0 + 24, &qword_504680, &qword_41EE40);
  return v0;
}

uint64_t OAuthHUDViewHandler.__deallocating_deinit()
{

  sub_FCF8(v0 + 24, &qword_504680, &qword_41EE40);

  return swift_deallocClassInstance();
}

uint64_t sub_39A590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_504680, &qword_41EE40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_39A600(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void, double), unint64_t *a4, uint64_t (*a5)(uint64_t), double a6)
{
  v55 = *a2;
  v11 = sub_3ECE84();
  v53 = *(v11 - 8);
  v54 = v11;
  __chkstk_darwin(v11);
  v52 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3E6654();
  v57 = *(v13 - 8);
  v58 = v13;
  __chkstk_darwin(v13);
  v56 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0, &unk_3F7970);
  __chkstk_darwin(v15 - 8);
  v17 = &v52 - v16;
  v18 = sub_3E9A04();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v25 = &v52 - v24;
  v60[3] = a3(0, v23);
  v60[4] = sub_39AD08(a4, a5);
  v60[0] = a1;
  v26 = objc_opt_self();

  v27 = [v26 sharedApplication];
  v28 = [v27 delegate];

  if (!v28)
  {
    goto LABEL_8;
  }

  if (([v28 respondsToSelector:"window"] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v29 = [v28 window];
  swift_unknownObjectRelease();
  if (!v29)
  {
LABEL_8:
    sub_3E99E4();
    v41 = sub_3E99F4();
    v42 = sub_3ED9D4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "Unable to present OAuth HUD because we could not get the current window.", v43, 2u);
    }

    v44 = *(v19 + 8);
    v45 = v25;
    goto LABEL_11;
  }

  v30 = [v29 rootViewController];
  if (!v30)
  {
    sub_3E99E4();
    v47 = sub_3E99F4();
    v48 = sub_3ED9D4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "Unable to present OAuth HUD because we could not get the root view controller.", v49, 2u);
    }

    v44 = *(v19 + 8);
    v45 = v21;
LABEL_11:
    v44(v45, v18);
    return __swift_destroy_boxed_opaque_existential_1Tm(v60);
  }

  v31 = v30;
  v32 = UIResponder.nearestActionRunner.getter();
  v34 = v33;

  if (v32)
  {
    type metadata accessor for ActionRunnerOptions(0);

    sub_3EC464();
    v35 = sub_3E6434();
    (*(*(v35 - 8) + 56))(v17, 1, 1, v35);
    v59[3] = v55;
    v59[0] = a2;

    v36 = ActionRunnerOptions.withActionOrigin(context:sender:view:)(v17, v59, 0);

    sub_FCF8(v17, &qword_5005B0, &unk_3F7970);
    sub_FCF8(v59, &unk_501090, &unk_3F48A0);
    ObjectType = swift_getObjectType();
    v39 = v56;
    v38 = v57;
    v40 = v58;
    (*(v57 + 104))(v56, enum case for ActionMetricsBehavior.fromAction(_:), v58);
    ActionRunner.perform(_:withMetrics:asPartOf:)(v60, v39, v36, ObjectType, v34);

    swift_unknownObjectRelease();

    (*(v38 + 8))(v39, v40);
  }

  else
  {
    v50 = v52;
    sub_3ECE34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8, &unk_407330);
    sub_3EBE94();
    *(swift_allocObject() + 16) = xmmword_3F5630;
    sub_3EBE14();
    v51 = v54;
    sub_3ECB94();

    (*(v53 + 8))(v50, v51);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v60);
}

uint64_t sub_39AD08(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    v4 = a2(255);
    result = swift_getWitnessTable("iJ\v", v4);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OAuthSession.__allocating_init(authorizationURL:oAuthAdamId:hudViewHandler:endpointSubscriber:window:workQueue:uiQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oauthSession) = 0;
  *(v14 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_webAuthenticationSession) = 0;
  v15 = OBJC_IVAR____TtC8ShelfKit12OAuthSession_authorizationURL;
  v16 = sub_3E5DC4();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v14 + v15, a1, v16);
  v18 = (v14 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oAuthAdamId);
  *v18 = a2;
  v18[1] = a3;
  sub_1F958(a4, v14 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_hudViewHandler);
  *(v14 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_window) = a6;
  *(v14 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_workQueue) = a7;
  *(v14 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_uiQueue) = a8;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = sub_3E5D64();
  if (v23)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  v25 = 0xE000000000000000;
  if (v23)
  {
    v25 = v23;
  }

  v26 = (v14 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId);
  *v26 = v24;
  v26[1] = v25;
  sub_3E5FB4();

  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  (*(v17 + 8))(a1, v16);
  return v14;
}

uint64_t OAuthSession.init(authorizationURL:oAuthAdamId:hudViewHandler:endpointSubscriber:window:workQueue:uiQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  v35 = a3;
  v36 = a8;
  v33 = a2;
  v34 = a4;
  v37 = sub_3E5FC4();
  v14 = *(v37 - 8);
  __chkstk_darwin(v37);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oauthSession) = 0;
  *(v9 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_webAuthenticationSession) = 0;
  v17 = OBJC_IVAR____TtC8ShelfKit12OAuthSession_authorizationURL;
  v18 = sub_3E5DC4();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v9 + v17, a1, v18);
  v20 = (v9 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oAuthAdamId);
  v21 = v35;
  *v20 = v33;
  v20[1] = v21;
  sub_1F958(a4, v9 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_hudViewHandler);
  *(v9 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_window) = a6;
  *(v9 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_workQueue) = a7;
  v22 = v36;
  *(v9 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_uiQueue) = v36;
  v23 = a6;
  v24 = a7;
  v25 = v22;
  v26 = sub_3E5D64();
  if (v27)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v29 = 0xE000000000000000;
  if (v27)
  {
    v29 = v27;
  }

  v30 = (v9 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId);
  *v30 = v28;
  v30[1] = v29;
  sub_3E5FB4();

  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  (*(v19 + 8))(a1, v18);
  (*(v14 + 32))(v9 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_state, v16, v37);
  return v9;
}

uint64_t sub_39B1A4(uint64_t a1)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_3E9A04();
  v26 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3EBBC4();
  v30 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3EBC14();
  v28 = *(v9 - 8);
  v29 = v9;
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3E5DC4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  if (*(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_webAuthenticationSession))
  {
    v26 = *(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_uiQueue);
    (*(v13 + 16))(&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v12, v15);
    v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    (*(v13 + 32))(v17 + v16, &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
    aBlock[4] = sub_3A19F4;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1279E4;
    aBlock[3] = &block_descriptor_31;
    v18 = _Block_copy(aBlock);

    sub_3EBBE4();
    v31 = _swiftEmptyArrayStorage;
    sub_3A20D0(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
    sub_886BC(&qword_506A30, &unk_503DE0, &unk_40B9F0, &protocol conformance descriptor for [A]);
    sub_3EE244();
    sub_3EDBE4();
    _Block_release(v18);
    (*(v30 + 8))(v8, v6);
    (*(v28 + 8))(v11, v29);
  }

  else
  {
    v20 = v26;
    v21 = v3;
    sub_3E99E4();

    v22 = sub_3E99F4();
    v23 = sub_3ED9F4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 141558275;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      *(v24 + 14) = sub_2EDD0(*(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), aBlock);
      _os_log_impl(&dword_0, v22, v23, "%{private,mask.hash}s: Resume OAuth called but there is no web authentication session to resume in OAuthSession", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
    }

    return (*(v20 + 8))(v5, v21);
  }
}

void sub_39B6D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_webAuthenticationSession);
  if (v2)
  {
    v4 = v2;
    sub_3E4464(a2);
  }
}

uint64_t sub_39B740(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_504790, &qword_41EEE0);
  v60 = *(v6 - 1);
  v61 = v6;
  __chkstk_darwin(v6);
  v59 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_504798, &qword_41EEE8);
  v63 = *(v8 - 8);
  v64 = v8;
  __chkstk_darwin(v8);
  v62 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5047A0, &qword_41EEF0);
  v66 = *(v10 - 8);
  v67 = v10;
  __chkstk_darwin(v10);
  v65 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5047A8, &qword_41EEF8);
  v69 = *(v12 - 8);
  v70 = v12;
  __chkstk_darwin(v12);
  v68 = &v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5047B0, &qword_41EF00);
  v72 = *(v14 - 8);
  v73 = v14;
  __chkstk_darwin(v14);
  v71 = &v57 - v15;
  v16 = sub_3E9A04();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_3EBC24();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = (&v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_workQueue);
  *v24 = v25;
  (*(v21 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v20, v22);
  v26 = v25;
  LOBYTE(v25) = sub_3EBC34();
  result = (*(v21 + 8))(v24, v20);
  if (v25)
  {
    v57 = a1;
    v58 = a2;
    sub_3E99E4();

    v28 = sub_3E99F4();
    v29 = sub_3ED9F4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v30 = 141558787;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      *(v30 + 14) = sub_2EDD0(*(v3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v74);
      *(v30 + 22) = 2160;
      *(v30 + 24) = 1752392040;
      *(v30 + 32) = 2081;
      *(v30 + 34) = sub_2EDD0(*(v3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oAuthAdamId), *(v3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oAuthAdamId + 8), &v74);
      _os_log_impl(&dword_0, v28, v29, "%{private,mask.hash}s: Starting OAuth flow for oauth adamId: %{private,mask.hash}s", v30, 0x2Au);
      swift_arrayDestroy();
    }

    (*(v17 + 8))(v19, v16);
    v31 = v59;
    sub_39DAB8(v59);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_3A1A70;
    *(v32 + 24) = v3;
    sub_886BC(&qword_5047B8, &qword_504790, &qword_41EEE0, &protocol conformance descriptor for Publishers.HandleEvents<A>);

    v33 = v61;
    v34 = v62;
    sub_3EA0C4();

    (*(v60 + 8))(v31, v33);
    v35 = swift_allocObject();
    *(v35 + 16) = sub_3A1AF4;
    *(v35 + 24) = v3;

    sub_3E9C64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F66B0, &unk_40AA80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5047C0, &qword_41EF08);
    v61 = &protocol conformance descriptor for Publishers.TryMap<A, B>;
    sub_886BC(&qword_5047C8, &qword_504798, &qword_41EEE8, &protocol conformance descriptor for Publishers.TryMap<A, B>);
    sub_886BC(&qword_5047D0, &qword_5047C0, &qword_41EF08, &protocol conformance descriptor for Future<A, B>);
    v36 = v64;
    v37 = v65;
    sub_3EA0F4();

    (*(v63 + 8))(v34, v36);
    v38 = swift_allocObject();
    *(v38 + 16) = sub_3A1AF8;
    *(v38 + 24) = v3;
    sub_3E5DC4();
    sub_886BC(&qword_5047D8, &qword_5047A0, &qword_41EEF0, &protocol conformance descriptor for Publishers.FlatMap<A, B>);

    v39 = v67;
    v40 = v68;
    sub_3EA0C4();

    (*(v66 + 8))(v37, v39);
    v42 = *(v3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId);
    v41 = *(v3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8);
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    *(v43 + 24) = v41;

    sub_3E9C64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5047E0, &qword_41EF10);
    sub_886BC(&qword_5047E8, &qword_5047A8, &qword_41EEF8, v61);
    sub_886BC(&qword_5047F0, &qword_5047E0, &qword_41EF10, &protocol conformance descriptor for AnyPublisher<A, B>);
    v44 = v70;
    v45 = v71;
    sub_3EA0F4();

    (*(v69 + 8))(v40, v44);
    v46 = swift_allocObject();
    swift_weakInit();
    v47 = *(v3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_uiQueue);
    v48 = swift_allocObject();
    v50 = v57;
    v49 = v58;
    v48[2] = v57;
    v48[3] = v49;
    v48[4] = v47;
    v48[5] = v46;
    v51 = swift_allocObject();
    swift_weakInit();
    v52 = swift_allocObject();
    v52[2] = v47;
    v52[3] = v51;
    v52[4] = v50;
    v52[5] = v49;
    sub_886BC(&qword_5047F8, &qword_5047B0, &qword_41EF00, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    v53 = v47;
    swift_retain_n();
    v54 = v53;
    v55 = v73;
    v56 = sub_3EA044();

    (*(v72 + 8))(v45, v55);
    *(v3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oauthSession) = v56;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_39C1F0(uint64_t *a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v44 = a2;
  v8 = sub_3EBBC4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3EBC14();
  v42 = *(v12 - 8);
  v43 = v12;
  __chkstk_darwin(v12);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3E9A04();
  v40 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_504978, &qword_41EF98);
  __chkstk_darwin(v18 - 8);
  v20 = v37 - v19;
  v21 = *a1;
  if (v21)
  {
    v37[1] = a4;
    v38 = v9;
    v39 = v8;
    aBlock[0] = v21;
    swift_errorRetain();
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8, &unk_3F5ED0);
    v22 = sub_3E8604();
    v23 = swift_dynamicCast();
    v24 = *(*(v22 - 8) + 56);
    if (!v23)
    {
      v24(v20, 1, 1, v22);
      sub_FCF8(v20, &qword_504978, &qword_41EF98);
LABEL_9:
      v32 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v33 = swift_allocObject();
      v34 = v44;
      v33[2] = v32;
      v33[3] = v34;
      v33[4] = a3;
      v33[5] = v21;
      aBlock[4] = sub_3A20C4;
      aBlock[5] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1279E4;
      aBlock[3] = &block_descriptor_71;
      v35 = _Block_copy(aBlock);
      swift_errorRetain();

      sub_3EBBE4();
      v45 = _swiftEmptyArrayStorage;
      sub_3A20D0(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
      sub_886BC(&qword_506A30, &unk_503DE0, &unk_40B9F0, &protocol conformance descriptor for [A]);
      v36 = v39;
      sub_3EE244();
      sub_3EDBE4();
      _Block_release(v35);

      (*(v38 + 8))(v11, v36);
      (*(v42 + 8))(v14, v43);

      return;
    }

    v25 = *(v22 - 8);
    v24(v20, 0, 1, v22);
    v26 = (*(v25 + 88))(v20, v22);
    v37[0] = a3;
    v27 = enum case for OAuthSessionError.userCancelledLogin(_:);
    (*(v25 + 8))(v20, v22);
    v28 = v26 == v27;
    a3 = v37[0];
    if (!v28)
    {
      goto LABEL_9;
    }

    sub_3E99E4();
    v29 = sub_3E99F4();
    v30 = sub_3ED9F4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "User cancelled OAuth login.", v31, 2u);
    }

    (*(v40 + 8))(v17, v15);
    v44(0, 0);
  }
}

uint64_t sub_39C7F8(uint64_t a1, void (*a2)(void, uint64_t, __n128), uint64_t a3, uint64_t a4)
{
  v6 = sub_3E9A04();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v32 = a4;
    v33 = a2;
    v17 = (Strong + OBJC_IVAR____TtC8ShelfKit12OAuthSession_hudViewHandler);
    __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC8ShelfKit12OAuthSession_hudViewHandler), *(Strong + OBJC_IVAR____TtC8ShelfKit12OAuthSession_hudViewHandler + 24));
    if (sub_3E9294())
    {
      sub_3E99E4();
      v18 = sub_3E99F4();
      v19 = sub_3ED9F4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_0, v18, v19, "Dismissing the spinner and displaying an error alert.", v20, 2u);
      }

      (*(v7 + 8))(v12, v6);
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      sub_3E92B4();
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      v21 = [objc_opt_self() mainBundle];
      v30._countAndFlagsBits = 0xE000000000000000;
      v34._object = 0x800000000042FBC0;
      v34._countAndFlagsBits = 0xD000000000000013;
      v35.value._countAndFlagsBits = 0;
      v35.value._object = 0;
      v22.super.isa = v21;
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      sub_3E5A74(v34, v35, v22, v36, 0, v30);

      sub_3E9284();
    }

    else
    {
      sub_3E99E4();
      v27 = sub_3E99F4();
      v28 = sub_3ED9F4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Spinner is not active.", v29, 2u);
      }

      (*(v7 + 8))(v9, v6);
    }

    (v33)(0, v32);
  }

  else
  {
    sub_3E99E4();
    v23 = sub_3E99F4();
    v24 = sub_3ED9D4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "Unable to unwrap self in OAuth promise completion!.", v25, 2u);
    }

    (*(v7 + 8))(v15, v6);
    return (a2)(0, 0);
  }
}

uint64_t sub_39CC0C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a3;
  v31 = a2;
  v7 = sub_3EBBC4();
  v30 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EBC14();
  v28 = *(v10 - 8);
  v29 = v10;
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3E9A04();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  sub_3E99E4();
  v18 = sub_3E99F4();
  v19 = sub_3ED9F4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v25 = v12;
    *v20 = 67109120;
    *(v20 + 4) = v17;
    _os_log_impl(&dword_0, v18, v19, "User is subscribed to content: %{BOOL}d", v20, 8u);
    v12 = v25;
  }

  (*(v14 + 8))(v16, v13);
  v21 = swift_allocObject();
  v22 = v26;
  *(v21 + 16) = v27;
  *(v21 + 24) = v22;
  *(v21 + 32) = a5;
  *(v21 + 40) = v17;
  aBlock[4] = sub_3A206C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_64;
  v23 = _Block_copy(aBlock);

  sub_3EBBE4();
  v32 = _swiftEmptyArrayStorage;
  sub_3A20D0(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
  sub_886BC(&qword_506A30, &unk_503DE0, &unk_40B9F0, &protocol conformance descriptor for [A]);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v23);
  (*(v30 + 8))(v9, v7);
  (*(v28 + 8))(v12, v29);
}

uint64_t sub_39D028(uint64_t a1, void (*a2)(void, void, __n128), uint64_t a3, char a4)
{
  v7 = sub_3E9A04();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = (Strong + OBJC_IVAR____TtC8ShelfKit12OAuthSession_hudViewHandler);
    __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC8ShelfKit12OAuthSession_hudViewHandler), *(Strong + OBJC_IVAR____TtC8ShelfKit12OAuthSession_hudViewHandler + 24));
    sub_3E92B4();
    if ((a4 & 1) == 0)
    {
      v17 = v12[3];
      v26[1] = v12[4];
      v26[0] = __swift_project_boxed_opaque_existential_1(v12, v17);
      v18 = objc_opt_self();
      v19 = [v18 mainBundle];
      v26[2] = a3;
      v20 = v19;
      v24._countAndFlagsBits = 0xE000000000000000;
      v27._object = 0x800000000042FB70;
      v27._countAndFlagsBits = 0xD00000000000001FLL;
      v29.value._countAndFlagsBits = 0;
      v29.value._object = 0;
      v21.super.isa = v20;
      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      sub_3E5A74(v27, v29, v21, v31, 0, v24);

      v22 = [v18 mainBundle];
      v25._countAndFlagsBits = 0xE000000000000000;
      v28._countAndFlagsBits = 0xD000000000000025;
      v28._object = 0x800000000042FB90;
      v30.value._countAndFlagsBits = 0;
      v30.value._object = 0;
      v23.super.isa = v22;
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      sub_3E5A74(v28, v30, v23, v32, 0, v25);

      sub_3E9284();
    }

    (a2)(a4 & 1, 0);
  }

  else
  {
    sub_3E99E4();
    v13 = sub_3E99F4();
    v14 = sub_3ED9D4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "Unable to unwrap self in OAuth promise completion.", v15, 2u);
    }

    (*(v8 + 8))(v10, v7);
    return (a2)(a4 & 1, 0);
  }
}

uint64_t sub_39D348(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_3EBBC4();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3EBC14();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_uiQueue);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_3A1CA4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_29_0;
  v14 = _Block_copy(aBlock);

  sub_3EBBE4();
  v19 = _swiftEmptyArrayStorage;
  sub_3A20D0(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
  sub_886BC(&qword_506A30, &unk_503DE0, &unk_40B9F0, &protocol conformance descriptor for [A]);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_39D668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_3EBBC4();
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_3EBC14();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3E9A04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = OBJC_IVAR____TtC8ShelfKit12OAuthSession_webAuthenticationSession;
    v18 = *(Strong + OBJC_IVAR____TtC8ShelfKit12OAuthSession_webAuthenticationSession);
    if (v18)
    {
      v19 = v18;
      sub_3E47AC();

      v18 = *(v16 + v17);
    }

    *(v16 + v17) = 0;

    v26[1] = *(v16 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_workQueue);
    v20 = swift_allocObject();
    v20[2] = v16;
    v20[3] = a2;
    v20[4] = a3;
    aBlock[4] = sub_3A1FB4;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1279E4;
    aBlock[3] = &block_descriptor_58;
    v21 = _Block_copy(aBlock);

    sub_3EBBE4();
    v29 = _swiftEmptyArrayStorage;
    sub_3A20D0(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
    sub_886BC(&qword_506A30, &unk_503DE0, &unk_40B9F0, &protocol conformance descriptor for [A]);
    sub_3EE244();
    sub_3EDBE4();
    _Block_release(v21);
    (*(v28 + 8))(v7, v5);
    (*(v8 + 8))(v10, v27);
  }

  else
  {
    sub_3E99E4();
    v23 = sub_3E99F4();
    v24 = sub_3ED9D4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "Unable to unwrap self in cancelSession completion in OAuthSession.", v25, 2u);
    }

    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_39DAB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v90 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0, &qword_3FA180);
  __chkstk_darwin(v3 - 8);
  v89 = &v70 - v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_504980, &qword_41EFA0);
  v77 = *(v78 - 1);
  __chkstk_darwin(v78);
  v76 = &v70 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_504988, &qword_41EFA8);
  v80 = *(v6 - 8);
  v81 = v6;
  __chkstk_darwin(v6);
  v79 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_504990, &qword_41EFB0);
  v84 = *(v8 - 8);
  v85 = v8;
  __chkstk_darwin(v8);
  v82 = &v70 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_504998, &qword_41EFB8);
  v87 = *(v10 - 8);
  v88 = v10;
  __chkstk_darwin(v10);
  v86 = &v70 - v11;
  v12 = sub_3E5DC4();
  v13 = *(v12 - 8);
  v91 = v12;
  v92 = v13;
  __chkstk_darwin(v12);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v70 - v17;
  v19 = sub_3E9A04();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v73 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v70 - v23;
  sub_3E99E4();

  v25 = sub_3E99F4();
  v26 = sub_3ED9F4();

  v27 = os_log_type_enabled(v25, v26);
  v75 = v20;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v83 = v15;
    v29 = v28;
    v30 = swift_slowAlloc();
    v93 = v30;
    *v29 = 141558275;
    *(v29 + 4) = 1752392040;
    *(v29 + 12) = 2081;
    *(v29 + 14) = sub_2EDD0(*(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v93);
    _os_log_impl(&dword_0, v25, v26, "%{private,mask.hash}s: Retrieving short lived token from provider.", v29, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);

    v15 = v83;
  }

  else
  {
  }

  v72 = v20[1];
  v72(v24, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA898, &qword_3F6E40);
  sub_3E5994();
  *(swift_allocObject() + 16) = xmmword_3F5630;
  _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  sub_3E5964();

  sub_3E5DA4();

  v31 = v92;
  v32 = *(v92 + 16);
  v83 = v18;
  v33 = v18;
  v34 = v91;
  v32(v15, v33, v91);
  v35 = *(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_window);
  v36 = type metadata accessor for WebAuthenticationSession(0);
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authenticationSession] = 0;
  v38 = &v37[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_startCompletion];
  *v38 = 0;
  *(v38 + 1) = 0;
  v39 = &v37[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_callbackURLScheme];
  *v39 = 0x7374736163646F70;
  *(v39 + 1) = 0xE800000000000000;
  v32(&v37[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authorizationURL], v15, v34);
  *&v37[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_window] = v35;
  v97.receiver = v37;
  v97.super_class = v36;
  v40 = v35;
  v41 = objc_msgSendSuper2(&v97, "init");
  v42 = *(v31 + 8);
  v92 = v31 + 8;
  v74 = v42;
  v42(v15, v34);
  v43 = *(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_webAuthenticationSession);
  *(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_webAuthenticationSession) = v41;
  v44 = v41;

  v45 = v73;
  sub_3E99E4();

  v46 = sub_3E99F4();
  v47 = sub_3ED9F4();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v93 = v49;
    *v48 = 141558275;
    *(v48 + 4) = 1752392040;
    *(v48 + 12) = 2081;
    *(v48 + 14) = sub_2EDD0(*(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v93);
    _os_log_impl(&dword_0, v46, v47, "%{private,mask.hash}s: Created Web Authentication Session.", v48, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
  }

  v72(v45, v19);
  v93 = v44;
  v75 = v44;
  v50 = v76;
  sub_3E9DF4();
  v93 = *(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_uiQueue);
  v51 = v93;
  v72 = sub_3EDB64();
  v52 = *(v72 - 1);
  v71 = *(v52 + 56);
  v73 = (v52 + 56);
  v53 = v89;
  v71(v89, 1, 1, v72);
  v54 = sub_801B4();
  v55 = sub_886BC(&qword_5049A0, &qword_504980, &qword_41EFA0, &protocol conformance descriptor for Just<A>);
  v56 = sub_3A20D0(&qword_4F1D30, sub_801B4, &protocol conformance descriptor for OS_dispatch_queue);
  v57 = v51;
  v59 = v78;
  v58 = v79;
  v70 = v54;
  sub_3E9F54();
  sub_FCF8(v53, &qword_4F69E0, &qword_3FA180);

  (*(v77 + 8))(v50, v59);
  sub_3E9C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5049A8, &qword_41EFC0);
  v93 = v59;
  v94 = v54;
  v95 = v55;
  v96 = v56;
  v78 = &opaque type descriptor for <<opaque return type of Publisher.receiveAndSubscribe<A>(on:options:)>>;
  swift_getOpaqueTypeConformance2();
  sub_886BC(&qword_5049B0, &qword_5049A8, &qword_41EFC0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v60 = v81;
  v61 = v82;
  sub_3EA1C4();
  (*(v80 + 8))(v58, v60);
  v93 = *(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_workQueue);
  v62 = v93;
  v71(v53, 1, 1, v72);
  v63 = sub_886BC(&qword_5049B8, &qword_504990, &qword_41EFB0, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v64 = v62;
  v66 = v85;
  v65 = v86;
  v67 = v70;
  sub_3E9F54();
  sub_FCF8(v53, &qword_4F69E0, &qword_3FA180);

  (*(v84 + 8))(v61, v66);
  swift_retain_n();
  v93 = v66;
  v94 = v67;
  v95 = v63;
  v96 = v56;
  swift_getOpaqueTypeConformance2();
  v68 = v88;
  sub_3E9FB4();

  (*(v87 + 8))(v65, v68);
  return v74(v83, v91);
}

uint64_t sub_39E6F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *(swift_allocObject() + 16) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5049C0, &unk_41EFC8);
  swift_allocObject();
  v4 = v3;
  sub_3E9E34();
  sub_886BC(&qword_5049C8, &qword_5049C0, &unk_41EFC8, &protocol conformance descriptor for Future<A, B>);
  v5 = sub_3E9F94();

  *a2 = v5;
  return result;
}

uint64_t sub_39E7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E5DC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3E9A04();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E99E4();
  (*(v5 + 16))(v7, a1, v4);

  v12 = sub_3E99F4();
  v13 = sub_3ED9F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = v8;
    v15 = v14;
    v16 = swift_slowAlloc();
    v23 = v9;
    v25 = v16;
    *v15 = 141558531;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    *(v15 + 14) = sub_2EDD0(*(a2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(a2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v25);
    *(v15 + 22) = 2080;
    v17 = sub_3E5CD4();
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    v20 = sub_2EDD0(v17, v19, &v25);

    *(v15 + 24) = v20;
    _os_log_impl(&dword_0, v12, v13, "%{private,mask.hash}s: Redirect URL acquired: %s", v15, 0x20u);
    swift_arrayDestroy();

    return (*(v23 + 8))(v11, v24);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }
}

void sub_39EAF8(uint64_t *a1, uint64_t a2)
{
  v4 = sub_3E9A04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    sub_3E99E4();

    swift_errorRetain();
    v8 = sub_3E99F4();
    v9 = sub_3ED9D4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v10 = 141558531;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      *(v10 + 14) = sub_2EDD0(*(a2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(a2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v15);
      *(v10 + 22) = 2112;
      v13 = sub_3E5B74();
      *(v10 + 24) = v13;
      *v11 = v13;
      _os_log_impl(&dword_0, v8, v9, "%{private,mask.hash}s: OAuth Authentication failed with error: %@", v10, 0x20u);
      sub_FCF8(v11, &unk_502160, &qword_3FD240);

      __swift_destroy_boxed_opaque_existential_1Tm(v12);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_39ED24(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_504970, &qword_41EF90);
  __chkstk_darwin(v3 - 8);
  v111 = &v103 - v4;
  v109 = sub_3E9414();
  v112 = *(v109 - 8);
  __chkstk_darwin(v109);
  v108 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3E5DC4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3E9A04();
  v11 = *(v10 - 8);
  v114 = v10;
  v115 = v11;
  __chkstk_darwin(v10);
  v113 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v106 = &v103 - v14;
  __chkstk_darwin(v15);
  v104 = &v103 - v16;
  __chkstk_darwin(v17);
  v105 = &v103 - v18;
  __chkstk_darwin(v19);
  v21 = &v103 - v20;
  sub_3E99E4();
  (*(v7 + 16))(v9, a1, v6);

  v22 = sub_3E99F4();
  v23 = sub_3ED9F4();

  v24 = os_log_type_enabled(v22, v23);
  v110 = v1;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v107 = a1;
    v26 = v25;
    v103 = swift_slowAlloc();
    v116 = v103;
    *v26 = 141558531;
    *(v26 + 4) = 1752392040;
    *(v26 + 12) = 2081;
    *(v26 + 14) = sub_2EDD0(*(v1 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v1 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v116);
    *(v26 + 22) = 2080;
    v27 = sub_3E5CD4();
    v29 = v28;
    (*(v7 + 8))(v9, v6);
    v30 = sub_2EDD0(v27, v29, &v116);

    *(v26 + 24) = v30;
    _os_log_impl(&dword_0, v22, v23, "%{private,mask.hash}s: Validating redirectUrl parameters: %s.", v26, 0x20u);
    swift_arrayDestroy();

    a1 = v107;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v32 = v114;
  v31 = v115;
  v33 = *(v115 + 8);
  v33(v21, v114);
  v34 = sub_39FBC4();
  v35 = v112;
  v36 = v113;
  v37 = v111;
  if (!v34)
  {
    goto LABEL_14;
  }

  v38 = v34;

  sub_3E9404();
  v39 = v109;
  if ((*(v35 + 48))(v37, 1, v109) != 1)
  {

    v46 = v108;
    (*(v35 + 32))(v108, v37, v39);
    sub_3E8604();
    sub_3A20D0(&qword_502BF0, &type metadata accessor for OAuthSessionError, &protocol conformance descriptor for OAuthSessionError);
    swift_allocError();
    sub_3E93F4();
    swift_willThrow();
    (*(v35 + 8))(v46, v39);
    return v31;
  }

  sub_FCF8(v37, &qword_504970, &qword_41EF90);
  if (!v38[2])
  {
LABEL_13:

LABEL_14:
    sub_3E99E4();
    v47 = v110;

    v48 = sub_3E99F4();
    v49 = sub_3ED9D4();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v116 = v51;
      *v50 = 141558275;
      *(v50 + 4) = 1752392040;
      *(v50 + 12) = 2081;
      *(v50 + 14) = sub_2EDD0(*(v47 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v47 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v116);
      _os_log_impl(&dword_0, v48, v49, "%{private,mask.hash}s: State UUIDs do not match.", v50, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
    }

    v33(v36, v32);
    v52 = sub_3E8604();
    sub_3A20D0(&qword_502BF0, &type metadata accessor for OAuthSessionError, &protocol conformance descriptor for OAuthSessionError);
    swift_allocError();
    v54 = v53;
    v55 = &enum case for OAuthSessionError.stateMismatch(_:);
    goto LABEL_17;
  }

  v40 = sub_552A8(0x6574617473, 0xE500000000000000);
  if ((v41 & 1) == 0)
  {

    goto LABEL_13;
  }

  v107 = a1;
  v42 = (v38[7] + 16 * v40);
  v44 = *v42;
  v43 = v42[1];

  if (v44 == _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0() && v43 == v45)
  {

    goto LABEL_20;
  }

  v57 = sub_3EE804();

  if ((v57 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_20:
  if (!v38[2] || (v58 = sub_552A8(1701080931, 0xE400000000000000), (v59 & 1) == 0))
  {

    v68 = v106;
    sub_3E99E4();
    v69 = v110;

    v70 = sub_3E99F4();
    v71 = sub_3ED9D4();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v116 = v73;
      *v72 = 141558275;
      *(v72 + 4) = 1752392040;
      *(v72 + 12) = 2081;
      *(v72 + 14) = sub_2EDD0(*(v69 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v69 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v116);
      _os_log_impl(&dword_0, v70, v71, "%{private,mask.hash}s: Missing short-lived token from response.", v72, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
    }

    v33(v68, v32);
    v52 = sub_3E8604();
    sub_3A20D0(&qword_502BF0, &type metadata accessor for OAuthSessionError, &protocol conformance descriptor for OAuthSessionError);
    swift_allocError();
    v54 = v74;
    v55 = &enum case for OAuthSessionError.missingShortLivedToken(_:);
    goto LABEL_17;
  }

  v60 = (v38[7] + 16 * v58);
  v31 = *v60;
  v61 = v60[1];

  v62 = v105;
  sub_3E99E4();
  v63 = v110;

  v64 = sub_3E99F4();
  v65 = sub_3ED9F4();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    *v66 = 141558531;
    *(v66 + 4) = 1752392040;
    *(v66 + 12) = 2081;
    *(v66 + 14) = sub_2EDD0(*(v63 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v63 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v116);
    *(v66 + 22) = 2080;
    *(v66 + 24) = sub_2EDD0(v31, v61, &v116);
    _os_log_impl(&dword_0, v64, v65, "%{private,mask.hash}s: short-lived token acquired: %s.", v66, 0x20u);
    swift_arrayDestroy();

    v67 = v105;
  }

  else
  {

    v67 = v62;
  }

  v33(v67, v32);
  result = sub_3E5CE4();
  v75 = result;
  v76 = *(result + 16);
  if (v76)
  {
    v77 = 0;
    v78 = result + 40;
    v111 = v76 - 1;
    v112 = result + 40;
    v113 = _swiftEmptyArrayStorage;
    do
    {
      v79 = (v78 + 16 * v77);
      v80 = v77;
      while (1)
      {
        if (v80 >= *(v75 + 16))
        {
          __break(1u);
          return result;
        }

        v81 = *(v79 - 1);
        v82 = *v79;
        if (v81 != 47 || v82 != 0xE100000000000000)
        {
          result = sub_3EE804();
          if ((result & 1) == 0 && (v81 != 0x687475616FLL || v82 != 0xE500000000000000))
          {
            result = sub_3EE804();
            if ((result & 1) == 0)
            {
              break;
            }
          }
        }

        ++v80;
        v79 += 2;
        if (v76 == v80)
        {
          goto LABEL_49;
        }
      }

      v84 = v113;
      result = swift_isUniquelyReferenced_nonNull_native();
      v116 = v84;
      if ((result & 1) == 0)
      {
        result = sub_41BA8(0, *(v113 + 2) + 1, 1);
        v113 = v116;
      }

      v86 = *(v113 + 2);
      v85 = *(v113 + 3);
      v87 = v86 + 1;
      if (v86 >= v85 >> 1)
      {
        v108 = *(v113 + 2);
        v109 = v86 + 1;
        result = sub_41BA8((v85 > 1), v86 + 1, 1);
        v86 = v108;
        v87 = v109;
        v113 = v116;
      }

      v77 = v80 + 1;
      v88 = v113;
      *(v113 + 2) = v87;
      v89 = &v88[16 * v86];
      v89[4] = v81;
      v89[5] = v82;
      v78 = v112;
    }

    while (v111 != v80);
  }

  else
  {
    v113 = _swiftEmptyArrayStorage;
  }

LABEL_49:

  if (!*(v113 + 2))
  {

    v93 = v114;
    goto LABEL_57;
  }

  v91 = *(v113 + 4);
  v90 = *(v113 + 5);

  v92 = v91 == *(v110 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oAuthAdamId) && v90 == *(v110 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oAuthAdamId + 8);
  v93 = v114;
  if (v92)
  {

    return v31;
  }

  v94 = sub_3EE804();

  if ((v94 & 1) == 0)
  {

LABEL_57:
    v95 = v104;
    sub_3E99E4();
    v96 = v110;

    v97 = sub_3E99F4();
    v98 = sub_3ED9D4();

    v99 = os_log_type_enabled(v97, v98);
    v31 = v115;
    if (v99)
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v116 = v101;
      *v100 = 141558275;
      *(v100 + 4) = 1752392040;
      *(v100 + 12) = 2081;
      *(v100 + 14) = sub_2EDD0(*(v96 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v96 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v116);
      _os_log_impl(&dword_0, v97, v98, "%{private,mask.hash}s: oAuthAdamId's do not match.", v100, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v101);
    }

    v33(v95, v93);
    v52 = sub_3E8604();
    sub_3A20D0(&qword_502BF0, &type metadata accessor for OAuthSessionError, &protocol conformance descriptor for OAuthSessionError);
    swift_allocError();
    v54 = v102;
    v55 = &enum case for OAuthSessionError.oAuthAdamIdMismatch(_:);
LABEL_17:
    (*(*(v52 - 8) + 104))(v54, *v55, v52);
    swift_willThrow();
  }

  return v31;
}

void *sub_39FBC4()
{
  v0 = sub_3E5994();
  v51 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503D70, &qword_3F7240);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - v4;
  v6 = sub_3E59F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E59C4();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_FCF8(v5, &qword_503D70, &qword_3F7240);
    return 0;
  }

  (*(v7 + 32))(v9, v5, v6);
  v10 = sub_3E59A4();
  if (!v10)
  {
    (*(v7 + 8))(v9, v6);
    return 0;
  }

  v41 = v9;
  v42 = v7;
  v43 = v6;
  v11 = v10;
  v50 = *(v10 + 16);
  if (!v50)
  {
    v13 = _swiftEmptyDictionarySingleton;
LABEL_29:

    (*(v42 + 8))(v41, v43);
    return v13;
  }

  v12 = 0;
  v49 = v10 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
  v48 = v51 + 16;
  v46 = (v51 + 8);
  v13 = _swiftEmptyDictionarySingleton;
  v47 = v2;
  v44 = v10;
  v45 = v0;
  while (v12 < *(v11 + 16))
  {
    (*(v51 + 16))(v2, v49 + *(v51 + 72) * v12, v0);
    v14 = sub_3E5974();
    v16 = v15;
    v17 = sub_3E5984();
    if (!v18)
    {
      v30 = sub_552A8(v14, v16);
      v32 = v31;

      if (v32)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v13;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_58CC4();
          v13 = v52;
        }

        sub_682B0(v30, v13);
      }

      v2 = v47;
      (*v46)(v47, v0);
      goto LABEL_8;
    }

    v19 = v18;
    v20 = v17;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v52 = v13;
    v23 = sub_552A8(v14, v16);
    v24 = v13[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_32;
    }

    v27 = v22;
    if (v13[3] >= v26)
    {
      if (v21)
      {
        v2 = v47;
        if ((v22 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_58CC4();
        v2 = v47;
        if ((v27 & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_55E4C(v26, v21);
      v28 = sub_552A8(v14, v16);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_34;
      }

      v23 = v28;
      v2 = v47;
      if ((v27 & 1) == 0)
      {
LABEL_23:
        v13 = v52;
        v52[(v23 >> 6) + 8] |= 1 << v23;
        v35 = (v13[6] + 16 * v23);
        *v35 = v14;
        v35[1] = v16;
        v36 = (v13[7] + 16 * v23);
        *v36 = v20;
        v36[1] = v19;
        v0 = v45;
        (*v46)(v2, v45);
        v37 = v13[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_33;
        }

        v13[2] = v39;
        goto LABEL_25;
      }
    }

    v13 = v52;
    v34 = (v52[7] + 16 * v23);
    *v34 = v20;
    v34[1] = v19;

    v0 = v45;
    (*v46)(v2, v45);
LABEL_25:
    v11 = v44;
LABEL_8:
    if (v50 == ++v12)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_3EE894();
  __break(1u);
  return result;
}

uint64_t sub_3A00CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v5 = sub_3EBBC4();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EBC14();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3E9A04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E99E4();

  v15 = sub_3E99F4();
  v16 = sub_3ED9F4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 141558275;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    *(v17 + 14) = sub_2EDD0(*(v4 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v4 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), aBlock);
    _os_log_impl(&dword_0, v15, v16, "%{private,mask.hash}s: Getting commerce verification url from bag. Starting UI spinner.", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  (*(v12 + 8))(v14, v11);
  aBlock[4] = sub_3A1EA4;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_40;
  v19 = _Block_copy(aBlock);

  sub_3EBBE4();
  v32 = _swiftEmptyArrayStorage;
  sub_3A20D0(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
  sub_886BC(&qword_506A30, &unk_503DE0, &unk_40B9F0, &protocol conformance descriptor for [A]);
  v20 = v28;
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v19);
  (*(v27 + 8))(v7, v20);
  (*(v25 + 8))(v10, v26);

  v21 = swift_allocObject();
  v22 = v29;
  v23 = v30;
  v21[2] = v4;
  v21[3] = v22;
  v21[4] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5047C0, &qword_41EF08);
  swift_allocObject();

  result = sub_3E9E34();
  *v31 = result;
  return result;
}

void sub_3A0584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = objc_opt_self();

  v12 = [v11 sharedInstance];
  v13 = [v12 commerceOAuthVerificationUrl];

  v14 = [v13 asyncValuePromiseOnQueue:*(a3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_workQueue)];
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = sub_3A1F18;
  v15[4] = v10;
  v15[5] = a4;
  v15[6] = a5;
  v17[4] = sub_3A1FA4;
  v17[5] = v15;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_63B88;
  v17[3] = &block_descriptor_52;
  v16 = _Block_copy(v17);

  [v14 addFinishBlock:v16];
  _Block_release(v16);
}

double sub_3A0734(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, __n128), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54 = a5;
  v53 = sub_3E9A04();
  v13 = *(v53 - 8);
  __chkstk_darwin(a1);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v50 - v17;
  __chkstk_darwin(v19);
  v21 = &v50 - v20;
  if (v22 && (v55 = 0, v56 = 0, sub_3ED234(), (v23 = v56) != 0))
  {
    v24 = v55;
    sub_3E99E4();

    v25 = sub_3E99F4();
    v26 = sub_3ED9F4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v52 = a4;
      v28 = v27;
      v29 = swift_slowAlloc();
      v51 = a6;
      v55 = v29;
      *v28 = 141558531;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      *(v28 + 14) = sub_2EDD0(*(a3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(a3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v55);
      *(v28 + 22) = 2080;
      v30 = v24;
      a6 = v51;
      *(v28 + 24) = sub_2EDD0(v24, v23, &v55);
      _os_log_impl(&dword_0, v25, v26, "%{private,mask.hash}s: Acquired OAuth commerce verification endpoint from bag: %s.", v28, 0x20u);
      swift_arrayDestroy();

      a4 = v52;

      (*(v13 + 8))(v21, v53);
    }

    else
    {

      (*(v13 + 8))(v21, v53);
      v30 = v24;
    }

    v55 = v30;
    v56 = v23;
    v57 = a6;
    v58 = a7;
    v59 = 0;

    (a4)(&v55);
  }

  else if (a2)
  {
    v31 = sub_3E5B74();
    sub_3E99E4();

    v32 = v31;
    v33 = sub_3E99F4();
    v34 = sub_3ED9D4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = a4;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v55 = v38;
      *v35 = 141558531;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2081;
      *(v35 + 14) = sub_2EDD0(*(a3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(a3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v55);
      *(v35 + 22) = 2112;
      *(v35 + 24) = v32;
      *v37 = v32;
      v39 = v32;
      _os_log_impl(&dword_0, v33, v34, "%{private,mask.hash}s Could not get commerce OAuth verification endpoint from bag with error: %@", v35, 0x20u);
      sub_FCF8(v37, &unk_502160, &qword_3FD240);
      a4 = v36;

      __swift_destroy_boxed_opaque_existential_1Tm(v38);
    }

    (*(v13 + 8))(v18, v53);
    v55 = v32;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 1;
    v40 = v32;
    (a4)(&v55);
  }

  else
  {
    v42 = a4;
    sub_3E99E4();

    v43 = sub_3E99F4();
    v44 = sub_3ED9D4();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v55 = v46;
      *v45 = 141558275;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      *(v45 + 14) = sub_2EDD0(*(a3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(a3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v55);
      _os_log_impl(&dword_0, v43, v44, "%{private,mask.hash}s Could not get commerce OAuth verification endpoint from bag.", v45, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
    }

    (*(v13 + 8))(v15, v53);
    v47 = sub_3E8604();
    sub_3A20D0(&qword_502BF0, &type metadata accessor for OAuthSessionError, &protocol conformance descriptor for OAuthSessionError);
    v48 = swift_allocError();
    (*(*(v47 - 8) + 104))(v49, enum case for OAuthSessionError.unableToGetCommerceVerificationEndpointFromBag(_:), v47);
    v55 = v48;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 1;
    v42(&v55);
  }

  return result;
}

uint64_t sub_3A0D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a5;
  v6 = v5;
  v36[1] = a4;
  v43 = sub_3E9A04();
  v39 = *(v43 - 8);
  __chkstk_darwin(v43);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v38 = v36 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v13 - 8);
  v15 = v36 - v14;
  v16 = sub_3E5DC4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[0] = a1;
  v42[1] = a2;
  v40 = 0x612D687475616F7BLL;
  v41 = 0xEF7D64692D6D6164;
  v20 = *(v6 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oAuthAdamId + 8);
  v42[3] = *(v6 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oAuthAdamId);
  v42[4] = v20;
  sub_68DC4();
  sub_3EE194();
  sub_3E5D94();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_FCF8(v15, &unk_4E9EE0, &unk_3F5BC0);
    sub_3E99E4();

    v21 = sub_3E99F4();
    v22 = sub_3ED9D4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v42[0] = v24;
      *v23 = 141558275;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      *(v23 + 14) = sub_2EDD0(*(v6 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v6 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), v42);
      _os_log_impl(&dword_0, v21, v22, "%{private,mask.hash}s Could not form verification endpoint with oauth id.", v23, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
    }

    (*(v39 + 8))(v10, v43);
    v25 = sub_3E8604();
    sub_3A20D0(&qword_502BF0, &type metadata accessor for OAuthSessionError, &protocol conformance descriptor for OAuthSessionError);
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, enum case for OAuthSessionError.cannotReformCommerceVerificationUrl(_:), v25);
    return swift_willThrow();
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA898, &qword_3F6E40);
    sub_3E5994();
    v28 = swift_allocObject();
    v28[1] = xmmword_3F5630;
    sub_3E5964();
    v29._rawValue = v28;
    sub_3E5D84(v29);

    sub_3E99E4();

    v30 = sub_3E99F4();
    v31 = sub_3ED9F4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v42[0] = swift_slowAlloc();
      *v32 = 141558531;
      *(v32 + 4) = 1752392040;
      *(v32 + 12) = 2081;
      *(v32 + 14) = sub_2EDD0(*(v6 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v6 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), v42);
      *(v32 + 22) = 2080;
      swift_beginAccess();
      sub_3A20D0(&qword_500D00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v33 = sub_3EE7A4();
      v35 = sub_2EDD0(v33, v34, v42);

      *(v32 + 24) = v35;
      _os_log_impl(&dword_0, v30, v31, "%{private,mask.hash}s Got commerce verification endpoint from the bag and appended short-lived token: %s", v32, 0x20u);
      swift_arrayDestroy();
    }

    (*(v39 + 8))(v38, v43);
    swift_beginAccess();
    (*(v17 + 16))(v37, v19, v16);
    return (*(v17 + 8))(v19, v16);
  }
}

uint64_t OAuthSession.deinit()
{
  v1 = OBJC_IVAR____TtC8ShelfKit12OAuthSession_authorizationURL;
  v2 = sub_3E5DC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC8ShelfKit12OAuthSession_state;
  v4 = sub_3E5FC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_hudViewHandler));

  return v0;
}

uint64_t OAuthSession.__deallocating_deinit()
{
  OAuthSession.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_3A15FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502FC8, &qword_41C3F8);
  __chkstk_darwin(v6);
  v8 = (&v20 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_3E5DC4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_189AC(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_FCF8(v11, &unk_4E9EE0, &unk_3F5BC0);
    if (a2)
    {
      *v8 = a2;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
    }

    else
    {
      v17 = sub_3E8604();
      sub_3A20D0(&qword_502BF0, &type metadata accessor for OAuthSessionError, &protocol conformance descriptor for OAuthSessionError);
      v18 = swift_allocError();
      (*(*(v17 - 8) + 104))(v19, enum case for OAuthSessionError.missingRedirectUrlFromWebAuthenticationSession(_:), v17);
      *v8 = v18;
      swift_storeEnumTagMultiPayload();
    }

    a3(v8);
    return sub_FCF8(v8, &qword_502FC8, &qword_41C3F8);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v8, v15, v12);
    swift_storeEnumTagMultiPayload();
    a3(v8);
    sub_FCF8(v8, &qword_502FC8, &qword_41C3F8);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_3A1930()
{
  v1 = sub_3E5DC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_3A19F4()
{
  v1 = *(sub_3E5DC4() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_39B6D8(v2, v3);
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3A1A88()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3A1AC0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_3A1B44()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3A1B7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AMSOAuthEndpointSubscriber.subscribe(to:for:)(a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_3A1BA8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3A1BE0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3A1C34()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t type metadata accessor for OAuthSession(uint64_t a1)
{
  result = qword_504828;
  if (!qword_504828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3A1D04(uint64_t a1)
{
  result = sub_3E5DC4();
  if (v2 <= 0x3F)
  {
    result = sub_3E5FC4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_3A1F18(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  return v2(v5);
}

uint64_t sub_3A1F5C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_3A1FB4()
{
  v1 = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oauthSession) = 0;

  return v1(v2);
}

uint64_t objectdestroy_25Tm(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_3A207C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3A20D0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3A2128()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3A2160(void (*a1)(uint64_t *), uint64_t a2)
{
  v5 = *(v2 + 16);

  sub_3E4C04(v5, a1, a2);
}

uint64_t Promise<A>.observerPublisher(receiveOn:)(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v37 = a1;
  v3 = *v2;
  v4 = type metadata accessor for ObserverQueue(0);
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v3 + class metadata base offset for Promise);
  swift_getAssociatedTypeWitness();
  v7 = sub_3E9C74();
  v40 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4E9DE8, &unk_3F5ED0);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for AnyPublisher<A, B>, v7);
  v43 = v7;
  v44 = v8;
  v45 = WitnessTable;
  v46 = &protocol self-conformance witness table for Error;
  v9 = sub_3E9B94();
  v10 = sub_3E9E24();
  v31 = v10;
  v11 = swift_getWitnessTable(&protocol conformance descriptor for Publishers.SetFailureType<A, B>, v9);
  v30 = swift_getWitnessTable(&protocol conformance descriptor for Future<A, B>, v10);
  v43 = v9;
  v44 = v10;
  v45 = v11;
  v46 = v30;
  v12 = sub_3E9C24();
  v36 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v15 = sub_3E9C74();
  v16 = sub_3E9DE4();
  v34 = v15;
  v17 = swift_getWitnessTable(&protocol conformance descriptor for AnyPublisher<A, B>, v15);
  v33 = v17;
  v35 = v16;
  v32 = swift_getWitnessTable(&protocol conformance descriptor for Just<A>, v16);
  v43 = v15;
  v44 = v16;
  v45 = v17;
  v46 = v32;
  v18 = sub_3E9C14();
  v38 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v29 - v19;
  v43 = sub_3ECD54();
  sub_3A30DC(v37, v6);
  v21 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v22 = swift_allocObject();
  v23 = v29;
  v24 = v41;
  *(v22 + 16) = v29;
  *(v22 + 24) = v24;
  sub_3A3260(v6, v22 + v21);
  sub_3E9C64();
  sub_3EA0E4();

  swift_getWitnessTable(&protocol conformance descriptor for Publishers.FlatMap<A, B>, v12);
  v25 = sub_3E9F34();
  (*(v36 + 8))(v14, v12);
  v43 = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = v24;
  sub_3EA054();

  swift_getWitnessTable(&protocol conformance descriptor for Publishers.Catch<A, B>, v18);
  v27 = sub_3E9F94();
  (*(v38 + 8))(v20, v18);
  return v27;
}

uint64_t type metadata accessor for ObserverQueue(uint64_t a1)
{
  result = qword_504A78;
  if (!qword_504A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Observer.eraseToAnyObserver()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for AnyObserver(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  v12 = a1;
  v13 = a2;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v11);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0Tm, v2, a1);
  v9 = swift_allocObject();
  sub_1D4F0(&v11, v9 + 16);
  return v9;
}

uint64_t sub_3A281C(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1D4F0(a1, v2 + 16);
  return v2;
}

uint64_t sub_3A2860()
{
  v1 = sub_3EDBB4();
  v2 = *(v1 - 8);
  v23 = v1;
  v24 = v2;
  __chkstk_darwin(v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3EDB54();
  __chkstk_darwin(v5);
  v6 = sub_3EBC14();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v22 - v11;
  v13 = type metadata accessor for ObserverQueue(0);
  __chkstk_darwin(v13);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A30DC(v0, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    sub_801B4();
    return sub_3EDBC4();
  }

  else if (EnumCaseMultiPayload)
  {
    return *v15;
  }

  else
  {
    v17 = *v15;
    v22[1] = *(v15 + 1);
    v22[2] = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6150, &qword_40A618);
    v19 = v7;
    (*(v7 + 32))(v12, &v15[*(v18 + 48)], v6);
    sub_801B4();
    (*(v7 + 16))(v9, v12, v6);
    v25 = _swiftEmptyArrayStorage;
    sub_3A4370(&qword_4F1CA8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CB0, &unk_40AE10);
    sub_3A43B8();
    sub_3EE244();
    (*(v24 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v23);
    v20 = sub_3EDBF4();
    (*(v19 + 8))(v12, v6);
    return v20;
  }
}

uint64_t Observer.publisher(receiveOn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0, &qword_3FA180);
  __chkstk_darwin(v5 - 8);
  v45 = &v40 - v6;
  swift_getAssociatedTypeWitness();
  v7 = sub_3E9C74();
  v8 = sub_801B4();
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for AnyPublisher<A, B>, v7);
  v10 = sub_3A4370(&qword_4F1D30, sub_801B4, &protocol conformance descriptor for OS_dispatch_queue);
  v50 = v7;
  v51 = v8;
  v40 = v8;
  v48 = WitnessTable;
  v52 = WitnessTable;
  v53 = v10;
  v42 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = *(OpaqueTypeMetadata2 - 8);
  v44 = OpaqueTypeMetadata2;
  __chkstk_darwin(OpaqueTypeMetadata2);
  v41 = &v40 - v12;
  v13 = type metadata accessor for ObserverQueue(0);
  __chkstk_darwin(v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 - 8);
  __chkstk_darwin(v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ObserverProducer(0, a2, a3, v20);
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v40 - v24;
  (*(v16 + 16))(v19, v46, a2, v23);
  (*(v16 + 32))(v25, v19, a2);
  swift_getWitnessTable(asc_41F160, v21);
  v26 = sub_3E9F34();
  v27 = v25;
  v28 = v47;
  (*(v22 + 8))(v27, v21);
  sub_3A30DC(v28, v15);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v50 = v26;
    swift_checkMetadataState();
    v29 = sub_3E9F94();
  }

  else
  {
    sub_3A3484(v15);
    v50 = v26;
    v30 = sub_3A2860();
    v49 = v30;
    v31 = sub_3EDB64();
    v32 = v45;
    (*(*(v31 - 8) + 56))(v45, 1, 1, v31);
    v33 = swift_checkMetadataState();
    v34 = swift_checkMetadataState();
    v36 = v41;
    v35 = v42;
    v37 = v48;
    sub_3E9F54();
    sub_1F7C94(v32);

    v50 = v33;
    v51 = v34;
    v52 = v37;
    v53 = v35;
    swift_getOpaqueTypeConformance2();
    v38 = v44;
    v29 = sub_3E9F94();

    (*(v43 + 8))(v36, v38);
  }

  return v29;
}

uint64_t sub_3A30DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObserverQueue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3A3140()
{
  v1 = *(type metadata accessor for ObserverQueue(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6150, &qword_40A618) + 48);
    v8 = sub_3EBC14();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_3A3260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObserverQueue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3A32C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for ObserverQueue(0) - 8);
  result = Observer.publisher(receiveOn:)(v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v4);
  *a1 = result;
  return result;
}

uint64_t sub_3A334C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return sub_3E9DF4();
}

uint64_t sub_3A3484(uint64_t a1)
{
  v2 = type metadata accessor for ObserverQueue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3A3548()
{
  swift_beginAccess();
  sub_1F958(v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 24))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_3A35D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v9 = *(a1 + a2 - 16);
  result = sub_3A378C();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v9;
    *(result + 32) = v6;
    *(result + 40) = v7;
    v8 = sub_3A4348;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  a3[1] = result;
  return result;
}

uint64_t sub_3A3660(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = swift_allocObject();
    *(v7 + 16) = *(v6 - 16);
    *(v7 + 32) = v4;
    *(v7 + 40) = v5;
    v8 = sub_3A4320;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_7A6C8(v4, v5);
  return sub_3A36FC(v8, v7);
}

uint64_t sub_3A36FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v2 + 16, v5);
  (*(v6 + 40))(a1, a2, v5, v6);
  return swift_endAccess();
}

uint64_t sub_3A378C()
{
  swift_beginAccess();
  sub_1F958(v0 + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 32))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return v3;
}

uint64_t (*sub_3A3820(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_3A378C();
  a1[1] = v3;
  return sub_3A3868;
}

uint64_t sub_3A3868(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_3A36FC(*a1, v3);
  }

  sub_7A6C8(*a1, v3);
  sub_3A36FC(v2, v3);

  return sub_16AC0(v2, v3);
}

void (*sub_3A3950(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_3A3820(v2);
  return sub_EBB14;
}

uint64_t sub_3A39FC(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 + 16);
  v10 = *(a6 + 24);

  sub_3A4194(a1, a2, a3, v9, v10);
}

uint64_t sub_3A3A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable(byte_41F118, a4);

  return PFProducer.receive<A>(subscriber:)(a1, a4, a2, WitnessTable, a3);
}

uint64_t sub_3A3AFC@<X0>(uint64_t *a1@<X8>)
{
  result = static Array.observerErrorValue.getter();
  *a1 = result;
  return result;
}

__n128 sub_3A3B84(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_3A3BF4(uint64_t a1, double a2)
{
  sub_3A3C68(319, a2);
  if (v2 <= 0x3F)
  {
    sub_801B4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_3A3C68(uint64_t a1, double a2)
{
  if (!qword_504A88)
  {
    sub_3EBC14();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_504A88);
    }
  }
}

uint64_t sub_3A3DC0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_3A3E30(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_3A3F70(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_3A4194(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v12 = &v15 - v11;
  v13 = *(a5 + 40);

  v13(a2, a3, a4, a5);
  (*(a5 + 24))(a4, a5);
  a2(v12);
  return (*(v10 + 8))(v12, AssociatedTypeWitness);
}

uint64_t sub_3A42E8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3A4370(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_3A43B8()
{
  result = qword_4F1CB8;
  if (!qword_4F1CB8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1CB0, &unk_40AE10);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_4F1CB8);
  }

  return result;
}

uint64_t Page.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v196 = a2;
  v191 = a1;
  v166 = sub_3EC164();
  v176 = *(v166 - 8);
  __chkstk_darwin(v166);
  v165 = &v152 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v178 = &v152 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v5 - 8);
  v164 = &v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v186 = &v152 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E0, &unk_403FF0);
  __chkstk_darwin(v9 - 8);
  v162 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v161 = &v152 - v12;
  __chkstk_darwin(v13);
  v185 = &v152 - v14;
  v15 = sub_3E63E4();
  __chkstk_darwin(v15 - 8);
  v160 = &v152 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v184 = &v152 - v18;
  v195 = sub_3EBF94();
  v188 = *(v195 - 8);
  __chkstk_darwin(v195);
  v175 = &v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v187 = &v152 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98, &qword_41CF30);
  __chkstk_darwin(v22 - 8);
  v169 = &v152 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v152 - v25;
  v197 = sub_3EBDF4();
  v201 = *(v197 - 8);
  __chkstk_darwin(v197);
  v174 = &v152 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v173 = &v152 - v29;
  __chkstk_darwin(v30);
  v179 = &v152 - v31;
  __chkstk_darwin(v32);
  v172 = &v152 - v33;
  __chkstk_darwin(v34);
  v171 = &v152 - v35;
  __chkstk_darwin(v36);
  v170 = &v152 - v37;
  __chkstk_darwin(v38);
  v168 = &v152 - v39;
  __chkstk_darwin(v40);
  v190 = &v152 - v41;
  __chkstk_darwin(v42);
  v182 = &v152 - v43;
  v44 = sub_3ECED4();
  v192 = *(v44 - 8);
  v193 = v44;
  __chkstk_darwin(v44);
  v163 = &v152 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v167 = &v152 - v47;
  __chkstk_darwin(v48);
  v183 = &v152 - v49;
  v194 = sub_3E97B4();
  v50 = *(v194 - 1);
  __chkstk_darwin(v194);
  v52 = &v152 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v55 = &v152 - v54;
  v56 = sub_3E9854();
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v59 = &v152 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v62 = &v152 - v61;
  sub_3E97D4();
  sub_3E97D4();
  sub_3E9834();
  sub_3E9784();
  v63 = *(v57 + 8);
  v181 = v56;
  v180 = v63;
  (v63)(v59, v56);
  v64 = sub_3E9834();
  v65 = sub_3EDC84();
  if (sub_3EE014())
  {
    v66 = swift_slowAlloc();
    v159 = v26;
    v67 = v66;
    *v66 = 0;
    v68 = sub_3E9794();
    _os_signpost_emit_with_name_impl(&dword_0, v64, v65, v68, "Page.Deserialize", "", v67, 2u);
    v26 = v159;
  }

  v69 = v194;
  (*(v50 + 16))(v52, v55, v194);
  sub_3E98A4();
  swift_allocObject();
  v70 = sub_3E9894();
  (*(v50 + 8))(v55, v69);
  v180(v62, v181);
  v71 = v182;
  v72 = v191;
  sub_3EBE04();
  sub_3EBD54();
  v74 = v201 + 8;
  v73 = *(v201 + 8);
  v75 = v197;
  v73(v71, v197);
  v77 = v192;
  v76 = v193;
  v180 = *(v192 + 48);
  v78 = (v180)(v26, 1, v193);
  v194 = v73;
  v201 = v74;
  if (v78 == 1)
  {
    sub_FCF8(v26, &qword_4EDC98, &qword_41CF30);
    v79 = sub_3ECEE4();
    sub_3A7DCC(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v80 = 0x7365766C656873;
    v81 = v177;
    v80[1] = 0xE700000000000000;
    v80[2] = v81;
    (*(*(v79 - 8) + 104))(v80, enum case for JSONError.missingProperty(_:), v79);
    swift_willThrow();
    v83 = v195;
    v82 = v196;
LABEL_25:
    sub_3A7314();

    (v194)(v72, v75);
    (*(v188 + 8))(v82, v83);
    return v72;
  }

  v159 = v70;
  v84 = v75;
  v85 = *(v77 + 32);
  v86 = v183;
  v156 = v77 + 32;
  v155 = v85;
  v85(v183, v26, v76);
  (*(v77 + 16))(v167, v86, v76);
  v87 = *(v188 + 16);
  v182 = (v188 + 16);
  v181 = v87;
  v87(v187, v196, v195);
  type metadata accessor for Shelf(0);
  sub_3A7DCC(&qword_4F1F88, type metadata accessor for Shelf, protocol conformance descriptor for Shelf);
  v167 = sub_3ED654();
  v88 = v190;
  sub_3EBE04();
  v154 = sub_3EBDC4();
  v158 = v89;
  v73(v88, v84);
  sub_3EBE04();
  v153 = _sSo26ASKPagePresentationOptionsV8ShelfKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(v88);
  sub_3EBE04();
  v152 = sub_3EBDC4();
  v157 = v90;
  v73(v88, v84);
  v91 = v168;
  sub_3EBE04();
  v92 = v169;
  sub_3EBD54();
  v73(v91, v84);
  v93 = v193;
  if ((v180)(v92, 1, v193) == 1)
  {
    sub_FCF8(v92, &qword_4EDC98, &qword_41CF30);
    v180 = _swiftEmptyArrayStorage;
    v94 = v196;
  }

  else
  {
    v95 = v163;
    v155(v163, v92, v93);
    v96 = type metadata accessor for Action(0);
    __chkstk_darwin(v96);
    v94 = v196;
    *(&v152 - 2) = v97;
    *(&v152 - 1) = v94;
    v98 = v189;
    v180 = sub_3ECE94();
    v189 = v98;
    (*(v192 + 8))(v95, v93);
  }

  v99 = v191;
  sub_3EBE04();
  v100 = v187;
  v101 = v195;
  v102 = v181;
  v181(v187, v94, v195);
  sub_98100();
  sub_3EC574();
  LODWORD(v168) = v198;
  LODWORD(v163) = BYTE4(v198);
  sub_3EBE04();
  v103 = v94;
  v104 = v99;
  v102(v100, v103, v101);
  type metadata accessor for HeaderButtonItem(0);
  sub_3A7DCC(&qword_503440, type metadata accessor for HeaderButtonItem, "A&\n");
  v169 = sub_3ED644();
  v105 = v170;
  sub_3EBE04();
  sub_3EBDC4();
  v106 = v197;
  v107 = v194;
  if (v108)
  {
    v109 = v189;
    sub_3E9494();
    if (v109)
    {

      sub_3E9484();

      v107(v105, v106);
      v189 = 0;
    }

    else
    {
      v189 = 0;
      v107(v105, v106);
    }
  }

  else
  {
    (v194)(v105, v197);
  }

  v110 = v190;
  sub_3EBE04();
  sub_3EBDC4();
  v107(v110, v106);
  sub_3E63D4();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E8, &qword_404000);
  sub_3EBE04();
  v112 = v187;
  v113 = v104;
  v114 = v195;
  v115 = v196;
  v116 = v181;
  v181(v187, v196, v195);
  sub_3A7D14(&qword_4F29F0, &protocol conformance descriptor for AnyJSIntentModel<A>);
  v170 = v111;
  sub_3EC574();
  sub_3E7784();
  sub_3EBE04();
  v117 = v115;
  v72 = v113;
  v116(v112, v117, v114);
  v118 = v197;
  sub_3A7DCC(&qword_4EECC8, &type metadata accessor for ArtworkModel, &protocol conformance descriptor for ArtworkModel);
  sub_3EC574();
  v119 = v171;
  sub_3EBE04();
  v120 = sub_3EBD24();
  v121 = v194;
  (v194)(v119, v118);
  v122 = v172;
  sub_3EBE04();
  LODWORD(v187) = sub_3EBD24();
  v121(v122, v118);
  v123 = v179;
  sub_3EBE04();
  sub_3EBDC4();
  v171 = v124;
  if (v124)
  {
    v125 = v189;
    v126 = sub_3E9494();
    v127 = v125;
    v128 = v173;
    if (v125)
    {

      v172 = sub_3E9484();

      v121(v179, v118);
      v127 = 0;
    }

    else
    {
      v172 = v126;
      v121(v179, v118);
    }
  }

  else
  {
    v121(v123, v118);
    v172 = 0;
    v127 = v189;
    v128 = v173;
  }

  sub_3EBE04();
  sub_3EBDC4();
  v130 = v129;
  if (v129)
  {
    v131 = sub_3E9494();
    if (v127)
    {

      v189 = sub_3E9484();

      (v194)(v128, v197);
      v127 = 0;
    }

    else
    {
      v189 = v131;
      (v194)(v128, v197);
    }
  }

  else
  {
    v121(v128, v197);
    v189 = 0;
  }

  sub_3EBE04();
  v83 = v195;
  v82 = v196;
  v181(v175, v196, v195);
  v132 = v178;
  sub_3EC0E4();
  if (v127)
  {

    sub_FCF8(v186, &qword_4F1D50, &unk_3F7520);
    sub_FCF8(v185, &qword_4F29E0, &unk_403FF0);
    sub_3A7E7C(v184, &type metadata accessor for InteractionContext.Page);
    (*(v192 + 8))(v183, v193);
    v75 = v197;
    goto LABEL_25;
  }

  LODWORD(v181) = v120;
  v134 = v190;
  v135 = v132;
  sub_3EBE04();
  LODWORD(v182) = sub_3EBD24();
  (v194)(v134, v197);
  v136 = v160;
  sub_3A7E14(v184, v160, &type metadata accessor for InteractionContext.Page);
  v137 = v161;
  sub_FBD0(v185, v161, &qword_4F29E0, &unk_403FF0);
  sub_FBD0(v186, v164, &qword_4F1D50, &unk_3F7520);
  (*(v176 + 16))(v165, v135, v166);
  v72 = swift_allocObject();
  v138 = v154;
  *(v72 + 16) = v167;
  *(v72 + 24) = v138;
  v139 = v152;
  *(v72 + 32) = v158;
  *(v72 + 40) = v139;
  v140 = v180;
  *(v72 + 48) = v157;
  *(v72 + 56) = v140;
  *(v72 + 64) = v168;
  *(v72 + 68) = v163;
  v141 = v153;
  *(v72 + 72) = v169;
  *(v72 + 80) = v141;
  sub_3A7E14(v136, v72 + OBJC_IVAR____TtC8ShelfKit4Page_pageContext, &type metadata accessor for InteractionContext.Page);
  v142 = v162;
  sub_FBD0(v137, v162, &qword_4F29E0, &unk_403FF0);
  v143 = v170;
  if ((*(*(v170 - 1) + 48))(v142, 1, v170) == 1)
  {
    sub_FCF8(v137, &qword_4F29E0, &unk_403FF0);
    sub_3A7E7C(v136, &type metadata accessor for InteractionContext.Page);
    v144 = v166;
    (*(v176 + 8))(v178, v166);
    sub_FCF8(v186, &qword_4F1D50, &unk_3F7520);
    sub_FCF8(v185, &qword_4F29E0, &unk_403FF0);
    sub_3A7E7C(v184, &type metadata accessor for InteractionContext.Page);
    (*(v192 + 8))(v183, v193);
    sub_FCF8(v142, &qword_4F29E0, &unk_403FF0);
    v198 = 0u;
    v199 = 0u;
    v200 = 0;
  }

  else
  {
    *(&v199 + 1) = v143;
    v200 = sub_3A7D14(&unk_503DB0, &protocol conformance descriptor for AnyJSIntentModel<A>);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v198);
    sub_FACC(v142, boxed_opaque_existential_0Tm, &qword_4F29E8, &qword_404000);
    sub_FCF8(v137, &qword_4F29E0, &unk_403FF0);
    sub_3A7E7C(v136, &type metadata accessor for InteractionContext.Page);
    v144 = v166;
    (*(v176 + 8))(v178, v166);
    sub_FCF8(v186, &qword_4F1D50, &unk_3F7520);
    sub_FCF8(v185, &qword_4F29E0, &unk_403FF0);
    sub_3A7E7C(v184, &type metadata accessor for InteractionContext.Page);
    (*(v192 + 8))(v183, v193);
  }

  v146 = v144;
  v147 = v171 == 0;
  v148 = v72 + OBJC_IVAR____TtC8ShelfKit4Page_nextPageIntent;
  v149 = v199;
  *v148 = v198;
  *(v148 + 16) = v149;
  *(v148 + 32) = v200;
  *(v72 + OBJC_IVAR____TtC8ShelfKit4Page_isIncomplete) = v181 & 1;
  *(v72 + OBJC_IVAR____TtC8ShelfKit4Page_isExplicit) = v187 & 1;
  sub_FACC(v164, v72 + OBJC_IVAR____TtC8ShelfKit4Page_uber, &qword_4F1D50, &unk_3F7520);
  v150 = v72 + OBJC_IVAR____TtC8ShelfKit4Page_showAdamId;
  *v150 = v172;
  *(v150 + 8) = v147;
  v151 = v72 + OBJC_IVAR____TtC8ShelfKit4Page_channelAdamId;
  *v151 = v189;
  *(v151 + 8) = v130 == 0;
  *(v72 + OBJC_IVAR____TtC8ShelfKit4Page_mapiInLibrary) = v182;
  (*(v176 + 32))(v72 + OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics, v165, v146);
  sub_3A7314();

  (v194)(v191, v197);
  (*(v188 + 8))(v196, v83);
  return v72;
}

void *Page.modernShelves.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5670, &qword_40B590);
  __chkstk_darwin(v1 - 8);
  v3 = &v51 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v4 - 8);
  v52 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v6 - 8);
  v8 = (&v51 - v7);
  v9 = sub_3E7784();
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v51 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v59 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0, &unk_3FF1B0);
  __chkstk_darwin(v13 - 8);
  v15 = (&v51 - v14);
  v63 = type metadata accessor for ModernShelf(0);
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v58 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v62 = &v51 - v18;
  v57 = v0;
  v19 = *(v0 + 16);
  if (v19 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)); ; i = sub_3EE5A4())
  {
    v56 = v8;
    v53 = v3;
    if (!i)
    {
      break;
    }

    v3 = i;
    v21 = 0;
    v8 = (v61 + 48);
    v22 = _swiftEmptyArrayStorage;
    v60 = i;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v23 = sub_3EE3F4();
      }

      else
      {
        if (v21 >= *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_27;
        }

        v23 = *(v19 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        break;
      }

      Shelf.mapToModernShelf()(v15);

      if ((*v8)(v15, 1, v63) == 1)
      {
        sub_FCF8(v15, &unk_503DA0, &unk_3FF1B0);
      }

      else
      {
        sub_3A7D64(v15, v62, type metadata accessor for ModernShelf);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_E02B0(0, v22[2] + 1, 1, v22);
        }

        v27 = v22[2];
        v26 = v22[3];
        if (v27 >= v26 >> 1)
        {
          v22 = sub_E02B0((v26 > 1), v27 + 1, 1, v22);
        }

        v22[2] = v27 + 1;
        sub_3A7D64(v62, v22 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v27, type metadata accessor for ModernShelf);
        v3 = v60;
      }

      ++v21;
      if (v25 == v3)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_19:
  v28 = v56;
  sub_FBD0(v57 + OBJC_IVAR____TtC8ShelfKit4Page_uber, v56, &qword_4F1D50, &unk_3F7520);
  if ((*(v54 + 48))(v28, 1, v55) == 1)
  {
    sub_FCF8(v28, &qword_4F1D50, &unk_3F7520);
  }

  else
  {
    v29 = v59;
    sub_3A7D64(v28, v59, &type metadata accessor for ArtworkModel);
    v30 = v63;
    v31 = *(v63 + 20);
    v32 = type metadata accessor for Header(0);
    v33 = v58;
    (*(*(v32 - 8) + 56))(&v58[v31], 1, 1, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506560, &qword_3F6D80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_3F5630;
    v35 = v51;
    sub_3A7E14(v29, v51, &type metadata accessor for ArtworkModel);
    v36 = type metadata accessor for RoomUber(0);
    *(v34 + 56) = v36;
    *(v34 + 64) = sub_3A7DCC(&qword_4F74A8, type metadata accessor for RoomUber, protocol conformance descriptor for RoomUber);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v34 + 32));
    sub_3E5FB4();
    sub_3A7D64(v35, boxed_opaque_existential_0Tm + *(v36 + 20), &type metadata accessor for ArtworkModel);
    v38 = sub_3E5DC4();
    v39 = *(*(v38 - 8) + 56);
    v40 = v52;
    v39(v52, 1, 1, v38);
    v41 = &v33[v30[12]];
    *(v41 + 4) = 0;
    *v41 = 0u;
    *(v41 + 1) = 0u;
    v42 = v30[13];
    v43 = sub_3EC634();
    (*(*(v43 - 8) + 56))(&v33[v42], 1, 1, v43);
    v44 = v30[9];
    v45 = &v33[v30[8]];
    v39(&v33[v44], 1, 1, v38);
    *v33 = 0x726562556D6F6F52;
    *(v33 + 1) = 0xE800000000000000;
    v46 = &v33[v30[6]];
    *v46 = 34;
    *(v46 + 3) = 256;
    *(v46 + 2) = 0;
    *(v46 + 1) = 1;
    *&v33[v30[7]] = v34;
    sub_17F4C4(v40, &v33[v44]);
    v33[v30[10]] = 1;
    v33[v30[11]] = 0;
    *v45 = 0;
    *(v45 + 1) = 0;
    v47 = v53;
    sub_3A7E14(v33, v53, type metadata accessor for ModernShelf);
    v48 = v22[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v22;
    if (!isUniquelyReferenced_nonNull_native || v48 >= v22[3] >> 1)
    {
      v22 = sub_E02B0(isUniquelyReferenced_nonNull_native, v48 + 1, 1, v22);
      v64 = v22;
    }

    sub_17C550(0, 0, 1, v47);
    sub_3A7E7C(v59, &type metadata accessor for ArtworkModel);
    sub_3A7E7C(v58, type metadata accessor for ModernShelf);
  }

  return v22;
}

uint64_t Page.uberStyle.getter()
{
  v0 = type metadata accessor for ModernShelf(0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = Page.modernShelves.getter();
  if (v4[2])
  {
    sub_3A7E14(v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v3, type metadata accessor for ModernShelf);

    v5 = v3[*(v0 + 24)];
    if (v5 <= 0x2A)
    {
      switch(v5)
      {
        case '""':
          v6 = 6;
          goto LABEL_20;
        case '#':
          v6 = 2;
          goto LABEL_20;
        case '$':
          v6 = 1;
          goto LABEL_20;
      }
    }

    else if (v3[*(v0 + 24)] > 0x32u)
    {
      if (v5 == 51)
      {
        v6 = 0;
        goto LABEL_20;
      }

      if (v5 == 74)
      {
        v6 = 7;
        goto LABEL_20;
      }
    }

    else
    {
      if (v5 == 43)
      {
        v6 = 3;
        goto LABEL_20;
      }

      if (v5 == 44)
      {
        v6 = 4;
LABEL_20:
        sub_3A7E7C(v3, type metadata accessor for ModernShelf);
        return v6;
      }
    }

    v6 = 8;
    goto LABEL_20;
  }

  return 8;
}

uint64_t Page.__allocating_init(shelves:title:selectedFilterActionId:filterActions:headerBackgroundColor:headerButtonItems:presentationOptions:pageContext:nextPageIntent:isIncomplete:isExplicit:uber:showAdamId:channelAdamId:mapiInLibrary:pageMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, unsigned __int8 a18, unsigned __int8 a19, uint64_t a20)
{
  v40 = a6;
  v41 = a8;
  v39 = a5;
  v50 = a20;
  v48 = a18;
  v49 = a19;
  v47 = a17;
  v46 = a16;
  v44 = a14;
  v45 = a15;
  v42 = a12;
  v43 = a13;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E0, &unk_403FF0);
  __chkstk_darwin(v25 - 8);
  v27 = &v39 - v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  *(v28 + 24) = a2;
  *(v28 + 32) = a3;
  *(v28 + 40) = a4;
  v29 = v40;
  *(v28 + 48) = v39;
  *(v28 + 56) = v29;
  *(v28 + 64) = a7;
  *(v28 + 68) = BYTE4(a7) & 1;
  *(v28 + 72) = v41;
  *(v28 + 80) = a9;
  sub_3A7E14(a10, v28 + OBJC_IVAR____TtC8ShelfKit4Page_pageContext, &type metadata accessor for InteractionContext.Page);
  sub_FBD0(a11, v27, &qword_4F29E0, &unk_403FF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E8, &qword_404000);
  if ((*(*(v30 - 8) + 48))(v27, 1, v30) == 1)
  {
    sub_FCF8(a11, &qword_4F29E0, &unk_403FF0);
    sub_3A7E7C(a10, &type metadata accessor for InteractionContext.Page);
    sub_FCF8(v27, &qword_4F29E0, &unk_403FF0);
    v51 = 0u;
    v52 = 0u;
    v53 = 0;
  }

  else
  {
    *(&v52 + 1) = v30;
    v53 = sub_3A7D14(&unk_503DB0, &protocol conformance descriptor for AnyJSIntentModel<A>);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v51);
    sub_FACC(v27, boxed_opaque_existential_0Tm, &qword_4F29E8, &qword_404000);
    sub_FCF8(a11, &qword_4F29E0, &unk_403FF0);
    sub_3A7E7C(a10, &type metadata accessor for InteractionContext.Page);
  }

  v32 = v28 + OBJC_IVAR____TtC8ShelfKit4Page_nextPageIntent;
  v33 = v52;
  *v32 = v51;
  *(v32 + 16) = v33;
  *(v32 + 32) = v53;
  *(v28 + OBJC_IVAR____TtC8ShelfKit4Page_isIncomplete) = v42 & 1;
  *(v28 + OBJC_IVAR____TtC8ShelfKit4Page_isExplicit) = v43 & 1;
  sub_FACC(v44, v28 + OBJC_IVAR____TtC8ShelfKit4Page_uber, &qword_4F1D50, &unk_3F7520);
  v34 = v28 + OBJC_IVAR____TtC8ShelfKit4Page_showAdamId;
  *v34 = v45;
  *(v34 + 8) = v46 & 1;
  v35 = v28 + OBJC_IVAR____TtC8ShelfKit4Page_channelAdamId;
  *v35 = v47;
  *(v35 + 8) = v48 & 1;
  *(v28 + OBJC_IVAR____TtC8ShelfKit4Page_mapiInLibrary) = v49;
  v36 = OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics;
  v37 = sub_3EC164();
  (*(*(v37 - 8) + 32))(v28 + v36, v50, v37);
  return v28;
}

void sub_3A6B44(uint64_t a1, uint64_t *a2)
{
  v3 = sub_3E9A04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = sub_3EBDC4();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    if (v10 == 0xD00000000000001ALL && 0x800000000042FCD0 == v11 || (sub_3EE804() & 1) != 0 || v12 == 0xD000000000000011 && 0x800000000042FCF0 == v13 || (sub_3EE804() & 1) != 0)
    {

      if (*a2)
      {
        return;
      }

      v14 = *a2 | 1;
      goto LABEL_10;
    }

    if (v12 == 0xD000000000000022 && 0x800000000042FD10 == v13 || (sub_3EE804() & 1) != 0 || v12 == 0xD000000000000019 && 0x800000000042FD40 == v13 || (sub_3EE804() & 1) != 0)
    {

      if ((*a2 & 2) == 0)
      {
        v14 = *a2 | 2;
LABEL_10:
        *a2 = v14;
      }
    }

    else if (v12 == 0x72666552776F6873 && v13 == 0xED00004955687365 || (sub_3EE804() & 1) != 0)
    {

      if ((*a2 & 8) == 0)
      {
        v14 = *a2 | 8;
        goto LABEL_10;
      }
    }

    else if (v12 == 0xD000000000000017 && 0x800000000042FD60 == v13 || (sub_3EE804() & 1) != 0)
    {

      sub_3E98D4();
      v15 = sub_3E99F4();
      v16 = sub_3ED9D4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_0, v15, v16, "prefersPageHeaderHidden is no longer supported, ignoring", v17, 2u);
      }

      (*(v4 + 8))(v9, v3);
    }

    else
    {
      sub_3E98D4();

      v18 = sub_3E99F4();
      v19 = sub_3ED9D4();

      v25 = v18;
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v26 = v21;
        *v20 = 136315138;
        v22 = sub_2EDD0(v12, v13, &v26);

        *(v20 + 4) = v22;
        v23 = v25;
        _os_log_impl(&dword_0, v25, v19, "Unknown presentation option %s, ignoring", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
      }

      else
      {
      }

      (*(v4 + 8))(v6, v3);
    }
  }
}

uint64_t Page.init(shelves:title:selectedFilterActionId:filterActions:headerBackgroundColor:headerButtonItems:presentationOptions:pageContext:nextPageIntent:isIncomplete:isExplicit:uber:showAdamId:channelAdamId:mapiInLibrary:pageMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, unsigned __int8 a18, unsigned __int8 a19, uint64_t a20)
{
  v40 = a6;
  v41 = a8;
  v39 = a5;
  v50 = a20;
  v48 = a18;
  v49 = a19;
  v47 = a17;
  v46 = a16;
  v44 = a14;
  v45 = a15;
  v42 = a12;
  v43 = a13;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E0, &unk_403FF0);
  __chkstk_darwin(v26 - 8);
  v28 = &v39 - v27;
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  v29 = v40;
  *(v20 + 48) = v39;
  *(v20 + 56) = v29;
  *(v20 + 64) = a7;
  *(v20 + 68) = BYTE4(a7) & 1;
  *(v20 + 72) = v41;
  *(v20 + 80) = a9;
  sub_3A7E14(a10, v20 + OBJC_IVAR____TtC8ShelfKit4Page_pageContext, &type metadata accessor for InteractionContext.Page);
  sub_FBD0(a11, v28, &qword_4F29E0, &unk_403FF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E8, &qword_404000);
  if ((*(*(v30 - 8) + 48))(v28, 1, v30) == 1)
  {
    sub_FCF8(a11, &qword_4F29E0, &unk_403FF0);
    sub_3A7E7C(a10, &type metadata accessor for InteractionContext.Page);
    sub_FCF8(v28, &qword_4F29E0, &unk_403FF0);
    v51 = 0u;
    v52 = 0u;
    v53 = 0;
  }

  else
  {
    *(&v52 + 1) = v30;
    v53 = sub_3A7D14(&unk_503DB0, &protocol conformance descriptor for AnyJSIntentModel<A>);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v51);
    sub_FACC(v28, boxed_opaque_existential_0Tm, &qword_4F29E8, &qword_404000);
    sub_FCF8(a11, &qword_4F29E0, &unk_403FF0);
    sub_3A7E7C(a10, &type metadata accessor for InteractionContext.Page);
  }

  v32 = v20 + OBJC_IVAR____TtC8ShelfKit4Page_nextPageIntent;
  v33 = v52;
  *v32 = v51;
  *(v32 + 16) = v33;
  *(v32 + 32) = v53;
  *(v20 + OBJC_IVAR____TtC8ShelfKit4Page_isIncomplete) = v42 & 1;
  *(v20 + OBJC_IVAR____TtC8ShelfKit4Page_isExplicit) = v43 & 1;
  sub_FACC(v44, v20 + OBJC_IVAR____TtC8ShelfKit4Page_uber, &qword_4F1D50, &unk_3F7520);
  v34 = v20 + OBJC_IVAR____TtC8ShelfKit4Page_showAdamId;
  *v34 = v45;
  *(v34 + 8) = v46 & 1;
  v35 = v20 + OBJC_IVAR____TtC8ShelfKit4Page_channelAdamId;
  *v35 = v47;
  *(v35 + 8) = v48 & 1;
  *(v20 + OBJC_IVAR____TtC8ShelfKit4Page_mapiInLibrary) = v49;
  v36 = OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics;
  v37 = sub_3EC164();
  (*(*(v37 - 8) + 32))(v20 + v36, v50, v37);
  return v20;
}

uint64_t sub_3A7314()
{
  v0 = sub_3E9864();
  v18 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v16[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_3E97B4();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_3E9854();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_3E97D4();
  v10 = sub_3E9834();
  sub_3E9884();
  v17 = sub_3EDC74();
  if (sub_3EE014())
  {

    sub_3E98B4();

    v11 = v18;
    if ((*(v18 + 88))(v2, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v11 + 8))(v2, v0);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_3E9794();
    _os_signpost_emit_with_name_impl(&dword_0, v10, v17, v14, "Page.Deserialize", v12, v13, 2u);
  }

  (*(v3 + 8))(v5, v19);
  return (*(v7 + 8))(v9, v6);
}

__n128 Page.nextPageIntent.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC8ShelfKit4Page_nextPageIntent;
  if (*(v1 + OBJC_IVAR____TtC8ShelfKit4Page_nextPageIntent + 24))
  {
    sub_1F958(v2, a1);
  }

  else
  {
    result = *v2;
    v4 = *(v2 + 16);
    *a1 = *v2;
    *(a1 + 16) = v4;
    *(a1 + 32) = *(v2 + 32);
  }

  return result;
}

uint64_t Page.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics;
  swift_beginAccess();
  v4 = sub_3EC164();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t Page.pageMetrics.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics;
  swift_beginAccess();
  v4 = sub_3EC164();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

char *Page.deinit()
{

  sub_3A7E7C(v0 + OBJC_IVAR____TtC8ShelfKit4Page_pageContext, &type metadata accessor for InteractionContext.Page);
  if (*(v0 + OBJC_IVAR____TtC8ShelfKit4Page_nextPageIntent + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC8ShelfKit4Page_nextPageIntent));
  }

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit4Page_uber, &qword_4F1D50, &unk_3F7520);
  v1 = OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics;
  v2 = sub_3EC164();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Page.__deallocating_deinit()
{
  Page.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_3A79E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Page.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_3A7A14@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics;
  swift_beginAccess();
  v5 = sub_3EC164();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_3A7AA0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_3A7AB0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _sSo26ASKPagePresentationOptionsV8ShelfKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98, &qword_41CF30);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_3ECED4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  sub_3EBD54();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v9 = sub_3EBDF4();
    (*(*(v9 - 8) + 8))(a1, v9);
    sub_FCF8(v4, &qword_4EDC98, &qword_41CF30);
  }

  else
  {
    v10 = (*(v6 + 32))(v8, v4, v5);
    __chkstk_darwin(v10);
    *(&v13 - 2) = &v14;
    sub_3ECEC4();
    v11 = sub_3EBDF4();
    (*(*(v11 - 8) + 8))(a1, v11);
    (*(v6 + 8))(v8, v5);
  }

  return v14;
}

uint64_t sub_3A7D14(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F29E8, &qword_404000);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3A7D64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_3A7DCC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3A7E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3A7E7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for Page(uint64_t a1)
{
  result = qword_504BE0;
  if (!qword_504BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3A7F30(uint64_t a1)
{
  sub_3E63E4();
  if (v2 <= 0x3F)
  {
    sub_4EC44(319, v1);
    if (v3 <= 0x3F)
    {
      sub_3EC164();
      if (v4 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of Page.__allocating_init(shelves:title:selectedFilterActionId:filterActions:headerBackgroundColor:headerButtonItems:presentationOptions:pageContext:nextPageIntent:isIncomplete:isExplicit:uber:showAdamId:channelAdamId:mapiInLibrary:pageMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v9 = *(v7 + 208);
  v10 = a7 | ((HIDWORD(a7) & 1) << 32);

  return v9(a1, a2, a3, a4, a5, a6, v10);
}

unint64_t Paragraph.Text.languageAwareObject()(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = a1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v1 = a1;
  }

  v2 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
  return v1;
}

uint64_t Paragraph.__allocating_init(text:alignment:style:isCollapsed:isLinkDetectionEnabled:shareSheetContentSource:impressionMetrics:)(uint64_t a1, char a2, char a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v24 = sub_3E5FC4();
  v14 = *(v24 - 8);
  __chkstk_darwin(v24);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 41) = a3;
  *(v17 + 42) = a4;
  *(v17 + 43) = a5;
  sub_FBD0(a6, v17 + OBJC_IVAR____TtC8ShelfKit9Paragraph_shareSheetContentSource, &qword_4F74B0, &unk_40B5C0);
  sub_FBD0(a7, v17 + OBJC_IVAR____TtC8ShelfKit9Paragraph_impressionMetrics, &unk_4E9170, &unk_3F4890);
  v18 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
  sub_3E5FB4();
  v19 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v21 = v20;

  sub_FCF8(a7, &unk_4E9170, &unk_3F4890);
  sub_FCF8(a6, &qword_4F74B0, &unk_40B5C0);
  (*(v14 + 8))(v16, v24);
  *(v17 + 16) = v19;
  *(v17 + 24) = v21;
  return v17;
}

void sub_3A8380()
{
  v0 = objc_opt_self();
  v1 = UIContentSizeCategoryLarge;
  v2 = [v0 traitCollectionWithPreferredContentSizeCategory:v1];

  qword_504CE8 = v2;
}

void Paragraph.Style.nqmlConfiguration.getter(char a1@<W0>, ShelfKit::NqmlConfiguration *a2@<X8>)
{
  v3 = &UIFontTextStyleTitle3;
  if (a1 != 1)
  {
    v3 = &UIFontTextStyleBody;
  }

  v4 = *v3;
  v5 = objc_opt_self();
  if (qword_4E8C40 != -1)
  {
    v7 = v5;
    swift_once();
    v5 = v7;
  }

  v6 = [v5 preferredFontForTextStyle:v4 compatibleWithTraitCollection:qword_504CE8];

  NqmlConfiguration.init(font:)(a2, v6);
}

uint64_t static Paragraph.Text.== infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1 && a2 >> 62 == 1)
    {
      goto LABEL_6;
    }
  }

  else if (!(a2 >> 62))
  {
LABEL_6:
    sub_36174(0, &qword_4F22C0, NSObject_ptr);
    return sub_3EDEC4() & 1;
  }

  return 0;
}

BOOL Paragraph.Text.isEmpty.getter(uint64_t a1)
{
  v1 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
  v2 = sub_3E9A44();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  return v5 == 0;
}

uint64_t sub_3A85C4(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1 >> 62;
  v3 = *a2 >> 62;
  if (v2)
  {
    if (v2 != 1 || v3 != 1)
    {
      return 0;
    }

LABEL_9:
    sub_36174(0, &qword_4F22C0, NSObject_ptr);
    return sub_3EDEC4() & 1;
  }

  if (!v3)
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t Paragraph.MediaType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x616C702F74786574;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0x6D74682F74786574;
}

uint64_t sub_3A86B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000015;
  v4 = 0x80000000004236B0;
  if (v2 == 1)
  {
    v5 = 0x80000000004236B0;
  }

  else
  {
    v3 = 0x6D74682F74786574;
    v5 = 0xE90000000000006CLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x616C702F74786574;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000006E69;
  }

  v8 = 0xD000000000000015;
  if (*a2 != 1)
  {
    v8 = 0x6D74682F74786574;
    v4 = 0xE90000000000006CLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x616C702F74786574;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000006E69;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3EE804();
  }

  return v11 & 1;
}

Swift::Int sub_3A87B4()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

double sub_3A8864(uint64_t a1)
{
  sub_3ED394();

  return result;
}

Swift::Int sub_3A8900(uint64_t a1)
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

unint64_t sub_3A89AC@<X0>(Swift::String *a1@<X0>, ShelfKit::Paragraph::MediaType_optional *a2@<X8>)
{
  result = _s8ShelfKit9ParagraphC9MediaTypeO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_3A89DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006E69;
  v4 = 0x80000000004236B0;
  v5 = 0xD000000000000015;
  if (v2 != 1)
  {
    v5 = 0x6D74682F74786574;
    v4 = 0xE90000000000006CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x616C702F74786574;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t Paragraph.Alignment.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1952867692;
  v2 = 0x7468676972;
  if (a1 != 2)
  {
    v2 = 0x656966697473756ALL;
  }

  if (a1)
  {
    v1 = 0x7265746E6563;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_3A8ABC(_BYTE *a1, _BYTE *a2)
{
  v2 = 1952867692;
  v3 = *a1;
  v4 = 0xE400000000000000;
  v5 = 0xE500000000000000;
  v6 = 0x7468676972;
  if (v3 != 2)
  {
    v6 = 0x656966697473756ALL;
    v5 = 0xE900000000000064;
  }

  v7 = 0x7265746E6563;
  if (*a1)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v7 = 1952867692;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE400000000000000;
  v11 = 0xE500000000000000;
  v12 = 0x7468676972;
  if (*a2 != 2)
  {
    v12 = 0x656966697473756ALL;
    v11 = 0xE900000000000064;
  }

  if (*a2)
  {
    v2 = 0x7265746E6563;
    v10 = 0xE600000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_3EE804();
  }

  return v15 & 1;
}

Swift::Int sub_3A8BF0()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

double sub_3A8CA8(uint64_t a1)
{
  sub_3ED394();

  return result;
}

Swift::Int sub_3A8D4C(uint64_t a1)
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

unint64_t sub_3A8E00@<X0>(Swift::String *a1@<X0>, ShelfKit::Paragraph::Alignment_optional *a2@<X8>)
{
  result = _s8ShelfKit9ParagraphC9AlignmentO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_3A8E30(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1952867692;
  v4 = 0xE500000000000000;
  v5 = 0x7468676972;
  if (*v1 != 2)
  {
    v5 = 0x656966697473756ALL;
    v4 = 0xE900000000000064;
  }

  if (*v1)
  {
    v3 = 0x7265746E6563;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

id Paragraph.Style.textStyle.getter(char a1)
{
  v1 = &UIFontTextStyleTitle3;
  if (a1 != 1)
  {
    v1 = &UIFontTextStyleBody;
  }

  return *v1;
}

uint64_t Paragraph.Style.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x647261646E617473;
  }

  if (a1 == 1)
  {
    return 0x656C6369747261;
  }

  return 0x656E696C6E69;
}

uint64_t sub_3A8F20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x656C6369747261;
  if (v2 != 1)
  {
    v4 = 0x656E696C6E69;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x656C6369747261;
  if (*a2 != 1)
  {
    v8 = 0x656E696C6E69;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x647261646E617473;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3EE804();
  }

  return v11 & 1;
}

Swift::Int sub_3A901C()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

double sub_3A90BC(uint64_t a1)
{
  sub_3ED394();

  return result;
}

Swift::Int sub_3A9148(uint64_t a1)
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

unint64_t sub_3A91E4@<X0>(Swift::String *a1@<X0>, ShelfKit::Paragraph::Style_optional *a2@<X8>)
{
  result = _s8ShelfKit9ParagraphC5StyleO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_3A9214(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C6369747261;
  if (v2 != 1)
  {
    v5 = 0x656E696C6E69;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x647261646E617473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t Paragraph.init(text:alignment:style:isCollapsed:isLinkDetectionEnabled:shareSheetContentSource:impressionMetrics:)(uint64_t a1, char a2, char a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v25 = sub_3E5FC4();
  v16 = *(v25 - 8);
  __chkstk_darwin(v25);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 41) = a3;
  *(v8 + 42) = a4;
  *(v8 + 43) = a5;
  sub_FBD0(a6, v8 + OBJC_IVAR____TtC8ShelfKit9Paragraph_shareSheetContentSource, &qword_4F74B0, &unk_40B5C0);
  sub_FBD0(a7, v8 + OBJC_IVAR____TtC8ShelfKit9Paragraph_impressionMetrics, &unk_4E9170, &unk_3F4890);
  v19 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
  sub_3E5FB4();
  v20 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v22 = v21;

  sub_FCF8(a7, &unk_4E9170, &unk_3F4890);
  sub_FCF8(a6, &qword_4F74B0, &unk_40B5C0);
  (*(v16 + 8))(v18, v25);
  *(v8 + 16) = v20;
  *(v8 + 24) = v22;
  return v8;
}

uint64_t Paragraph.text.getter()
{
  v1 = *(v0 + 32);
  v2 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
  return v1;
}

uint64_t Paragraph.deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit9Paragraph_shareSheetContentSource, &qword_4F74B0, &unk_40B5C0);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit9Paragraph_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v0;
}

uint64_t Paragraph.__deallocating_deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit9Paragraph_shareSheetContentSource, &qword_4F74B0, &unk_40B5C0);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit9Paragraph_impressionMetrics, &unk_4E9170, &unk_3F4890);

  return swift_deallocClassInstance();
}

uint64_t sub_3A976C@<X0>(uint64_t *a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_3A9C90(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

id _s8ShelfKit9ParagraphC4TextO4text9mediaType5styleAESSSg_AC05MediaG0OAC5StyleOtcfC_0(uint64_t a1, void *a2, char a3, char a4)
{
  if (!a2 || !a3)
  {
    v25 = sub_3E9A64();
    sub_3E9A34();
    sub_3E9A24();
    v26 = objc_allocWithZone(v25);
    return sub_3E9A84();
  }

  if (a3 != 1)
  {
    v27 = objc_opt_self();
    v28 = sub_3ED204();
    v29 = [v27 safeAttributedStringWithHTML:v28 attributes:0];

    if (v29)
    {
      result = [v29 attributedStringWithDefaultLineSpacing];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v30 = result;
      v31 = [result attributedStringByTrimmingWhitespaceNewlinesAndObjectReplacementCharacters];

      v32 = v31;
      if (v32)
      {

        v33 = sub_3E9A64();
        sub_3E9A24();
        v34 = objc_allocWithZone(v33);
        v35 = sub_3E9A74();

        return (v35 | 0x8000000000000000);
      }
    }

    v36 = sub_3E9A64();
    sub_3E9A34();
    sub_3E9A24();
    v37 = objc_allocWithZone(v36);
    return (sub_3E9A84() | 0x8000000000000000);
  }

  v6 = &UIFontTextStyleTitle3;
  if (a4 != 1)
  {
    v6 = &UIFontTextStyleBody;
  }

  v7 = *v6;
  v39 = sub_36174(0, &qword_504E20, NSAttributedString_ptr);
  v8 = objc_opt_self();
  if (qword_4E8C40 != -1)
  {
    v38 = v8;
    swift_once();
    v8 = v38;
  }

  v9 = [v8 preferredFontForTextStyle:v7 compatibleWithTraitCollection:{qword_504CE8, v39}];

  v10 = sub_619F4(_swiftEmptyArrayStorage);
  v11 = sub_61B1C(_swiftEmptyArrayStorage);
  v12 = objc_opt_self();
  v13 = v9;
  v14 = [v12 defaultParagraphStyle];
  [v13 pointSize];
  v16 = v15;
  v17 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v17 setFirstLineHeadIndent:0.0];
  [v17 setHeadIndent:v16];
  [v17 setDefaultTabInterval:v16];
  sub_61C44(_swiftEmptyArrayStorage);
  v18 = objc_allocWithZone(NSTextTab);
  type metadata accessor for OptionKey(0);
  sub_3AAC5C(&qword_4E9150, type metadata accessor for OptionKey, "5p\v");
  isa = sub_3ED084().super.isa;

  v20 = [v18 initWithTextAlignment:4 location:isa options:v16];

  [v17 addTabStop:v20];
  configuration.newline._countAndFlagsBits = 10;
  configuration.newline._object = 0xE100000000000000;
  configuration.font.super.isa = v13;
  configuration.paragraphStyle.super.isa = v14;
  configuration.listItemBullet._countAndFlagsBits = 547520738;
  configuration.listItemBullet._object = 0xA400000000000000;
  configuration.listItemStyle.super.isa = v17;
  configuration.markAttributes._rawValue = v10;
  configuration.markFontAttributes._rawValue = v11;
  v21._countAndFlagsBits = a1;
  v21._object = a2;
  NSAttributedString.init(nqml:configuration:)(v21, &configuration);
  v22 = sub_3E9A64();
  sub_3E9A24();
  v23 = objc_allocWithZone(v22);
  return (sub_3E9A74() | 0x4000000000000000);
}

uint64_t sub_3A9C90(char *a1, uint64_t a2)
{
  v87 = a2;
  v3 = sub_3E5FC4();
  v81 = *(v3 - 8);
  v82 = v3;
  __chkstk_darwin(v3);
  v80 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDEA8, &qword_3F9A50);
  __chkstk_darwin(v5 - 8);
  v67 = &v64 - v6;
  v7 = type metadata accessor for EpisodeOffer(0);
  v8 = *(v7 - 8);
  v68 = v7;
  v69 = v8;
  __chkstk_darwin(v7);
  v64 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F74B0, &unk_40B5C0);
  __chkstk_darwin(v10 - 8);
  v79 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v84 = &v64 - v13;
  v86 = sub_3EBF94();
  v14 = *(v86 - 8);
  __chkstk_darwin(v86);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v17 - 8);
  v77 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  v22 = sub_3EBDF4();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v72 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v71 = &v64 - v26;
  __chkstk_darwin(v27);
  v70 = &v64 - v28;
  __chkstk_darwin(v29);
  v31 = &v64 - v30;
  sub_3EBE04();
  v66 = sub_3EBDC4();
  v65 = v32;
  v33 = *(v23 + 8);
  v33(v31, v22);
  sub_3EBE04();
  sub_3AAB60();
  sub_3EBCC4();
  v33(v31, v22);
  v89 = v92;
  v88 = a1;
  sub_3EBE04();
  sub_3AABB4();
  sub_3EBCC4();
  v74 = v23 + 8;
  v75 = v22;
  v73 = v33;
  v33(v31, v22);
  LODWORD(v83) = v91;
  sub_3EC634();
  sub_3EBE04();
  v78 = v14;
  v34 = *(v14 + 16);
  v35 = v16;
  v36 = v16;
  v38 = v86;
  v37 = v87;
  v34(v36, v87, v86);
  v85 = v21;
  v39 = v67;
  sub_3EC574();
  sub_3EBE04();
  v34(v35, v37, v38);
  sub_3AAC5C(&qword_4F2298, type metadata accessor for EpisodeOffer, protocol conformance descriptor for EpisodeOffer);
  v40 = v68;
  sub_3EC574();
  if (v69[6](v39, 1, v40) == 1)
  {
    sub_FCF8(v39, &qword_4EDEA8, &qword_3F9A50);
    v41 = type metadata accessor for ShareSheetContentSource(0);
    v42 = v84;
    (*(*(v41 - 8) + 56))(v84, 1, 1, v41);
  }

  else
  {
    v43 = v39;
    v44 = v64;
    sub_3D978(v43, v64);
    v42 = v84;
    sub_3D978(v44, v84);
    v45 = type metadata accessor for ShareSheetContentSource(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v45 - 8) + 56))(v42, 0, 1, v45);
  }

  v69 = _s8ShelfKit9ParagraphC4TextO4text9mediaType5styleAESSSg_AC05MediaG0OAC5StyleOtcfC_0(v66, v65, v89, v83);
  v46 = v70;
  sub_3EBE04();
  sub_3AAC08();
  v47 = v76;
  sub_3EBCD4();
  if (v47)
  {

    v76 = 0;
    LODWORD(v68) = 4;
  }

  else
  {
    LODWORD(v68) = v90;
    v76 = 0;
  }

  v48 = v46;
  v49 = v75;
  v50 = v73;
  v73(v48, v75);
  v51 = v71;
  sub_3EBE04();
  v52 = sub_3EBD24();
  v50(v51, v49);
  v53 = (v52 == 2) | v52;
  v54 = v72;
  sub_3EBE04();
  v55 = sub_3EBD24();
  v50(v54, v49);
  v56 = v79;
  sub_FBD0(v42, v79, &qword_4F74B0, &unk_40B5C0);
  v57 = v77;
  sub_FBD0(v85, v77, &unk_4E9170, &unk_3F4890);
  type metadata accessor for Paragraph(0);
  v58 = swift_allocObject();
  *(v58 + 32) = v69;
  *(v58 + 40) = v68;
  *(v58 + 41) = v83;
  *(v58 + 42) = v53 & 1;
  *(v58 + 43) = v55 & 1;
  sub_FBD0(v56, v58 + OBJC_IVAR____TtC8ShelfKit9Paragraph_shareSheetContentSource, &qword_4F74B0, &unk_40B5C0);
  sub_FBD0(v57, v58 + OBJC_IVAR____TtC8ShelfKit9Paragraph_impressionMetrics, &unk_4E9170, &unk_3F4890);
  v59 = v80;
  sub_3E5FB4();
  v60 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v83 = v61;
  (*(v78 + 8))(v87, v86);
  v50(v88, v49);
  (*(v81 + 8))(v59, v82);
  sub_FCF8(v57, &unk_4E9170, &unk_3F4890);
  sub_FCF8(v56, &qword_4F74B0, &unk_40B5C0);
  sub_FCF8(v84, &qword_4F74B0, &unk_40B5C0);
  sub_FCF8(v85, &unk_4E9170, &unk_3F4890);
  v62 = v83;
  *(v58 + 16) = v60;
  *(v58 + 24) = v62;
  return v58;
}

unint64_t _s8ShelfKit9ParagraphC9MediaTypeO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B3008;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t _s8ShelfKit9ParagraphC9AlignmentO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B3070;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t _s8ShelfKit9ParagraphC5StyleO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B30F0;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_3AA788()
{
  result = qword_504CF0;
  if (!qword_504CF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Paragraph.MediaType, &type metadata for Paragraph.MediaType, v0, v1);
    atomic_store(result, &qword_504CF0);
  }

  return result;
}

unint64_t sub_3AA7E0()
{
  result = qword_504CF8;
  if (!qword_504CF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Paragraph.Alignment, &type metadata for Paragraph.Alignment, v0, v1);
    atomic_store(result, &qword_504CF8);
  }

  return result;
}

unint64_t sub_3AA838()
{
  result = qword_504D00;
  if (!qword_504D00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Paragraph.Style, &type metadata for Paragraph.Style, v0, v1);
    atomic_store(result, &qword_504D00);
  }

  return result;
}

uint64_t sub_3AA88C(uint64_t a1)
{
  result = sub_3AAC5C(&qword_504D08, type metadata accessor for Paragraph, protocol conformance descriptor for Paragraph);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for Paragraph(uint64_t a1)
{
  result = qword_504D38;
  if (!qword_504D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3AA938(uint64_t a1)
{
  sub_3AAAC0(319, &unk_504D48, type metadata accessor for ShareSheetContentSource);
  if (v1 <= 0x3F)
  {
    sub_3AAAC0(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_3AAAC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_3AAB60()
{
  result = qword_504E08;
  if (!qword_504E08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Paragraph.MediaType, &type metadata for Paragraph.MediaType, v0, v1);
    atomic_store(result, &qword_504E08);
  }

  return result;
}

unint64_t sub_3AABB4()
{
  result = qword_504E10;
  if (!qword_504E10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Paragraph.Style, &type metadata for Paragraph.Style, v0, v1);
    atomic_store(result, &qword_504E10);
  }

  return result;
}

unint64_t sub_3AAC08()
{
  result = qword_504E18;
  if (!qword_504E18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Paragraph.Alignment, &type metadata for Paragraph.Alignment, v0, v1);
    atomic_store(result, &qword_504E18);
  }

  return result;
}

uint64_t sub_3AAC5C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PodcastDetail.lockup.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v1 - 8);
  v145 = &v121 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v146 = &v121 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0, &unk_3F6570);
  __chkstk_darwin(v5 - 8);
  v126 = &v121 - v6;
  v143 = sub_3E5FC4();
  v7 = *(v143 - 8);
  __chkstk_darwin(v143);
  v124 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3EC1F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v125 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v136 = &v121 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v14 - 8);
  v138 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v139 = &v121 - v17;
  __chkstk_darwin(v18);
  v144 = &v121 - v19;
  __chkstk_darwin(v20);
  v22 = &v121 - v21;
  v155 = *(v0 + 88);
  v23 = *(v0 + 112);
  v156 = *(v0 + 96);
  v157 = v23;

  v24 = 0;
  v148 = _swiftEmptyArrayStorage;
  v132 = v9;
  v133 = v0;
LABEL_2:
  v25 = &v156 + v24;
  while (++v24 != 3)
  {
    v26 = v25 + 1;
    v27 = *v25++;
    if (v27)
    {
      v28 = v22;
      v29 = *(v26 - 3);

      v30 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v148 = sub_DFAE8(0, *(v148 + 2) + 1, 1, v148);
      }

      v32 = *(v148 + 2);
      v31 = *(v148 + 3);
      if (v32 >= v31 >> 1)
      {
        v148 = sub_DFAE8((v31 > 1), v32 + 1, 1, v148);
      }

      v33 = v148;
      *(v148 + 2) = v32 + 1;
      v34 = &v33[16 * v32];
      *(v34 + 4) = v29;
      *(v34 + 5) = v27;
      v22 = v28;
      v0 = v133;
      v10 = v30;
      v9 = v132;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9950, &qword_4049C0);
  swift_arrayDestroy();
  v131 = v10;
  v36 = *(v0 + 32);
  v35 = *(v0 + 40);
  type metadata accessor for LibraryFollowAction(0);
  v37 = swift_allocObject();
  v38 = (v37 + OBJC_IVAR____TtC8ShelfKit19LibraryFollowAction_podcastUuid);
  v134 = v36;
  *v38 = v36;
  v38[1] = v35;
  *(v37 + OBJC_IVAR____TtC8ShelfKit19LibraryFollowAction_displaySuccessHUD) = 1;
  v39 = sub_3EC634();
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v141 = v40 + 56;
  v142 = v41;
  v41(v22, 1, 1, v39);
  v135 = v35;
  swift_bridgeObjectRetain_n();
  v42 = v136;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v43 = v124;
  sub_3E5FB4();
  v44 = v9;
  v45 = v42;
  v46 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v48 = v47;
  v129 = *(v7 + 8);
  v130 = v7 + 8;
  (v129)(v43, v143);
  *(v37 + 16) = v46;
  *(v37 + 24) = v48;
  v49 = v131;
  *(v37 + 32) = 0;
  *(v37 + 40) = 0;
  *(v37 + 48) = 32;
  v128 = *(v49 + 32);
  v128(v37 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v45, v44);
  v137 = v37;
  v50 = v37 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v51 = v39;
  v52 = v133;
  sub_FACC(v22, v50, &unk_4E9170, &unk_3F4890);
  v53 = *(v52 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeToPlay);
  v140 = v51;
  v147 = v22;
  v127 = v49 + 32;
  if (v53)
  {
    v54 = *(v53 + 64);
    v55 = *(v53 + 72);
    v121 = *(v53 + 16);
    v56 = *(v53 + 24);
    v123 = *(v53 + 32);
    v122 = *(v53 + 40);
    v57 = sub_3E8944();
    v58 = v126;
    (*(*(v57 - 8) + 56))(v126, 1, 1, v57);

    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    type metadata accessor for LibraryPlayAction(0);
    v59 = swift_allocObject();
    v60 = (v59 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeUuid);
    *v60 = v54;
    v60[1] = v55;
    v61 = v59 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeAdamId;
    *v61 = v121;
    *(v61 + 8) = v56;
    v62 = v59 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_channelAdamId;
    *v62 = v123;
    *(v62 + 8) = v122;
    sub_FBD0(v58, v59 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_settings, &qword_4E9FD0, &unk_3F6570);
    *(v59 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_showPlayerIfPlaying) = 2;
    v63 = v59 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_timestamp;
    *v63 = 0;
    *(v63 + 8) = 1;
    v65 = v131;
    v64 = v132;
    (*(v131 + 16))(v125, v45, v132);
    v142(v147, 1, 1, v140);
    sub_3E5FB4();
    v66 = v45;
    v67 = v43;
    v68 = v64;
    v69 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v71 = v70;

    (v129)(v67, v143);
    v72 = v65;
    v22 = v147;
    (*(v72 + 8))(v66, v68);
    sub_FCF8(v126, &qword_4E9FD0, &unk_3F6570);
    *(v59 + 16) = v69;
    *(v59 + 24) = v71;
    v51 = v140;
    *(v59 + 32) = 0;
    *(v59 + 40) = 0;
    *(v59 + 48) = 32;
    v128(v59 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v125, v68);
    v131 = v59;
    v73 = v143;
    sub_FACC(v22, v59 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170, &unk_3F4890);
  }

  else
  {
    v131 = 0;
    v67 = v43;
    v68 = v132;
    v73 = v143;
  }

  type metadata accessor for LibraryPodcastContextAction(0);
  v74 = swift_allocObject();
  v75 = (v74 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_podcastUuid);
  v76 = v135;
  *v75 = v134;
  v75[1] = v76;
  v77 = v74 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType;
  *(v77 + 32) = 0u;
  *(v77 + 48) = 0u;
  *v77 = 0u;
  *(v77 + 16) = 0u;
  *(v77 + 64) = -1;
  v142(v22, 1, 1, v51);
  v78 = v136;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v79 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v81 = v80;
  (v129)(v67, v73);
  *(v74 + 16) = v79;
  *(v74 + 24) = v81;
  *(v74 + 32) = 0;
  *(v74 + 40) = 0;
  *(v74 + 48) = 32;
  v128(v74 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v78, v68);
  sub_FACC(v22, v74 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170, &unk_3F4890);
  if (*(v52 + 24) == 1)
  {
    v82 = sub_3E9484();
  }

  else
  {
    v82 = *(v52 + 16);
  }

  sub_FBD0(v52 + OBJC_IVAR____TtC8ShelfKit7Podcast_artwork, v146, &qword_4F1D50, &unk_3F7520);
  v84 = *(v52 + 48);
  v83 = *(v52 + 56);
  v85 = *(v52 + 64);
  v86 = *(v52 + 72);
  v154 = 0;
  memset(v153, 0, sizeof(v153));
  LODWORD(v136) = *(v52 + OBJC_IVAR____TtC8ShelfKit7Podcast_isExplicit);
  sub_FBD0(v52 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_impressionMetrics, v144, &unk_4E9170, &unk_3F4890);
  type metadata accessor for LibraryShowLockup(0);
  v87 = swift_allocObject();
  v88 = (v87 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid);
  v89 = v134;
  v90 = v135;
  *v88 = v134;
  v88[1] = v90;
  v91 = (v87 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_name);
  *v91 = v84;
  v91[1] = v83;
  *(v87 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_providerAction) = 0;
  v92 = v87 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_addedDate;
  *v92 = v85;
  *(v92 + 8) = v86;
  *(v87 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_isSubscribed) = 2;
  v143 = v84;
  if (v83)
  {
    v93 = v84;
  }

  else
  {
    v93 = 0;
  }

  if (v83)
  {
    v94 = v83;
  }

  else
  {
    v94 = 0xE000000000000000;
  }

  v151 = v89;
  v152 = v90;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v95 = v148;

  v158._countAndFlagsBits = v93;
  v158._object = v94;
  sub_3ED3D4(v158);

  v96 = *(v95 + 2);
  if (v96)
  {
    v97 = (v148 + 40);
    do
    {
      v98 = *(v97 - 1);
      v99 = *v97;

      v159._countAndFlagsBits = v98;
      v159._object = v99;
      sub_3ED3D4(v159);

      v97 += 2;
      --v96;
    }

    while (v96);
  }

  v132 = v151;
  v130 = v152;
  v100 = sub_3E8284();
  v133 = v102;
  v134 = v101;
  LODWORD(v135) = v103;
  v129 = v100;
  sub_FBD0(v146, v145, &qword_4F1D50, &unk_3F7520);
  sub_FBD0(v153, &v151, &qword_4EDE00, &qword_3F9910);
  sub_FBD0(v144, v147, &unk_4E9170, &unk_3F4890);
  *(v87 + 32) = 0u;
  *(v87 + 48) = 0u;
  *(v87 + 64) = 0;
  v128 = v82;
  v104 = v139;
  v142(v139, 1, 1, v140);
  sub_FBD0(v104, v138, &unk_4E9170, &unk_3F4890);
  sub_3ECAE4();
  sub_FCF8(v104, &unk_4E9170, &unk_3F4890);
  v150[0] = 0;
  type metadata accessor for Action(0);
  sub_3ECAE4();
  memset(v150, 0, sizeof(v150));
  sub_FBD0(v150, v149, &qword_4EDE00, &qword_3F9910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170, &qword_3F6E20);
  sub_3ECAE4();
  sub_FCF8(v150, &qword_4EDE00, &qword_3F9910);
  v150[0] = 0;
  sub_3ECAE4();
  v150[0] = 0;
  sub_3ECAE4();
  v150[0] = 0;
  sub_3ECAE4();
  v150[0] = 0;
  sub_3ECAE4();
  v105 = v130;
  *(v87 + 16) = v132;
  *(v87 + 24) = v105;
  v106 = v129;
  *(v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v128;
  v107 = v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v108 = v133;
  v109 = v134;
  *v107 = v106;
  *(v107 + 8) = v109;
  *(v107 + 16) = v108;
  *(v107 + 24) = v135;
  *(v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v136;
  *(v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  sub_FBD0(v145, v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50, &unk_3F7520);
  v110 = (v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v111 = v143;
  *v110 = v143;
  v110[1] = v83;
  *(v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v148;
  v112 = (v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  *v112 = 0;
  v112[1] = 0;
  v113 = (v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  *v113 = v111;
  v113[1] = v83;
  *(v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v114 = (v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  *v114 = 0;
  v114[1] = 0;
  *(v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = 0;
  v115 = (v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v115 = 0;
  v115[1] = 0;
  v116 = v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  *v116 = 0;
  *(v116 + 4) = 1;
  v117 = v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v117 = 0;
  *(v117 + 8) = 1;
  v149[0] = v137;
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(&v151, v150, &qword_4EDE00, &qword_3F9910);
  sub_FBD0(v150, v149, &qword_4EDE00, &qword_3F9910);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88, &unk_3FA9E0);
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v150, &qword_4EDE00, &qword_3F9910);
  v149[0] = v74;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v149[0] = v131;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v149[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v149[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v118 = v147;
  v119 = v139;
  sub_FBD0(v147, v139, &unk_4E9170, &unk_3F4890);
  sub_FBD0(v119, v138, &unk_4E9170, &unk_3F4890);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90, qword_3FA8D0);
  sub_3ECB04();
  swift_endAccess();

  sub_FCF8(v119, &unk_4E9170, &unk_3F4890);
  sub_FCF8(v118, &unk_4E9170, &unk_3F4890);
  sub_FCF8(&v151, &qword_4EDE00, &qword_3F9910);
  sub_FCF8(v145, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v144, &unk_4E9170, &unk_3F4890);
  sub_FCF8(v153, &qword_4EDE00, &qword_3F9910);
  sub_FCF8(v146, &qword_4F1D50, &unk_3F7520);
  return v87;
}

void *Podcast.summary.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t Podcast.newEpisodeCount.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t Podcast.__allocating_init(uuid:adamId:title:addedDate:summary:author:provider:newEpisodeCount:artwork:uberArtwork:logoArtwork:paidSubscriptionActive:storeUrl:webpageUrl:isExplicit:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22)
{
  v26 = swift_allocObject();
  *(v26 + 32) = a1;
  *(v26 + 40) = a2;
  if (a4)
  {
    a3 = sub_3E9484();
  }

  *(v26 + 16) = a3;
  *(v26 + 24) = 0;
  *(v26 + 48) = a5;
  *(v26 + 56) = a6;
  *(v26 + 64) = a7;
  *(v26 + 72) = a8 & 1;
  *(v26 + 80) = a9;
  *(v26 + 88) = a10;
  *(v26 + 96) = a11;
  *(v26 + 104) = a12;
  *(v26 + 112) = a13;
  *(v26 + 120) = a14;
  *(v26 + 128) = a15;
  sub_FACC(a16, v26 + OBJC_IVAR____TtC8ShelfKit7Podcast_artwork, &qword_4F1D50, &unk_3F7520);
  sub_FACC(a17, v26 + OBJC_IVAR____TtC8ShelfKit7Podcast_uberArtwork, &qword_4F1D50, &unk_3F7520);
  sub_FACC(a18, v26 + OBJC_IVAR____TtC8ShelfKit7Podcast_logoArtwork, &qword_4F1D50, &unk_3F7520);
  *(v26 + OBJC_IVAR____TtC8ShelfKit7Podcast_paidSubscriptionActive) = a19 & 1;
  sub_FACC(a20, v26 + OBJC_IVAR____TtC8ShelfKit7Podcast_storeUrl, &unk_4E9EE0, &unk_3F5BC0);
  sub_FACC(a21, v26 + OBJC_IVAR____TtC8ShelfKit7Podcast_webpageUrl, &unk_4E9EE0, &unk_3F5BC0);
  *(v26 + OBJC_IVAR____TtC8ShelfKit7Podcast_isExplicit) = a22 & 1;
  return v26;
}

uint64_t Podcast.init(uuid:adamId:title:addedDate:summary:author:provider:newEpisodeCount:artwork:uberArtwork:logoArtwork:paidSubscriptionActive:storeUrl:webpageUrl:isExplicit:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22)
{
  v26 = a16;
  v27 = a12;
  *(v22 + 32) = a1;
  *(v22 + 40) = a2;
  if (a4)
  {
    v30 = a5;
    v28 = sub_3E9484();
    a5 = v30;
    v27 = a12;
    v26 = a16;
    a3 = v28;
  }

  *(v22 + 16) = a3;
  *(v22 + 24) = 0;
  *(v22 + 48) = a5;
  *(v22 + 56) = a6;
  *(v22 + 64) = a7;
  *(v22 + 72) = a8 & 1;
  *(v22 + 80) = a9;
  *(v22 + 88) = a10;
  *(v22 + 96) = a11;
  *(v22 + 104) = v27;
  *(v22 + 112) = a13;
  *(v22 + 120) = a14;
  *(v22 + 128) = a15;
  sub_FACC(v26, v22 + OBJC_IVAR____TtC8ShelfKit7Podcast_artwork, &qword_4F1D50, &unk_3F7520);
  sub_FACC(a17, v22 + OBJC_IVAR____TtC8ShelfKit7Podcast_uberArtwork, &qword_4F1D50, &unk_3F7520);
  sub_FACC(a18, v22 + OBJC_IVAR____TtC8ShelfKit7Podcast_logoArtwork, &qword_4F1D50, &unk_3F7520);
  *(v22 + OBJC_IVAR____TtC8ShelfKit7Podcast_paidSubscriptionActive) = a19 & 1;
  sub_FACC(a20, v22 + OBJC_IVAR____TtC8ShelfKit7Podcast_storeUrl, &unk_4E9EE0, &unk_3F5BC0);
  sub_FACC(a21, v22 + OBJC_IVAR____TtC8ShelfKit7Podcast_webpageUrl, &unk_4E9EE0, &unk_3F5BC0);
  *(v22 + OBJC_IVAR____TtC8ShelfKit7Podcast_isExplicit) = a22 & 1;
  return v22;
}

uint64_t Podcast.deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit7Podcast_artwork, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit7Podcast_uberArtwork, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit7Podcast_logoArtwork, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit7Podcast_storeUrl, &unk_4E9EE0, &unk_3F5BC0);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit7Podcast_webpageUrl, &unk_4E9EE0, &unk_3F5BC0);
  return v0;
}

uint64_t PodcastDetail.shelfUniqueId.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_shelfUniqueId);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double PodcastDetail.shelfUniqueId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_shelfUniqueId);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t PodcastDetail.episodeUserFilter.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeUserFilter);
  sub_1A9FF8(v1, *(v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeUserFilter + 8));
  return v1;
}

uint64_t PodcastDetail.hasEverPlayed.getter()
{
  v1 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_hasEverPlayed;
  swift_beginAccess();
  return *(v0 + v1);
}

void PodcastDetail.hasEverPlayed.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_hasEverPlayed;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t PodcastDetail.hidesPlayedEpisodes.getter()
{
  v1 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_hidesPlayedEpisodes;
  swift_beginAccess();
  return *(v0 + v1);
}

void PodcastDetail.hidesPlayedEpisodes.setter(int a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_hidesPlayedEpisodes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double PodcastDetail.episodes.getter()
{
  swift_beginAccess();

  return result;
}

void PodcastDetail.displayType.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_displayType;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void PodcastDetail.displayType.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_displayType;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t sub_3ACA68(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

ShelfKit::PodcastDetail::DisplayType_optional __swiftcall PodcastDetail.DisplayType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4B3158;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t PodcastDetail.DisplayType.rawValue.getter()
{
  v1 = 1684627824;
  if (*v0 != 1)
  {
    v1 = 0x646972627968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701147238;
  }
}

uint64_t sub_3ACC00(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684627824;
  if (v2 != 1)
  {
    v5 = 0x646972627968;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701147238;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1684627824;
  if (*a2 != 1)
  {
    v8 = 0x646972627968;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701147238;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3EE804();
  }

  return v11 & 1;
}

Swift::Int sub_3ACCE0()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

double sub_3ACD70(uint64_t a1)
{
  sub_3ED394();

  return result;
}

Swift::Int sub_3ACDEC(uint64_t a1)
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

void sub_3ACE84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684627824;
  if (v2 != 1)
  {
    v5 = 0x646972627968;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701147238;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t PodcastDetail.__allocating_init(uuid:adamId:title:podcastState:addedDate:summary:author:provider:newEpisodeCount:artwork:uberArtwork:logoArtwork:paidSubscriptionActive:episodeToPlay:seasonToShow:isSerialShowTypeInFeed:episodeUserFilter:episodes:storeUrl:webpageUrl:feedUrl:offerAction:darkModeOptions:hasEverPlayed:hidesPlayedEpisodes:sort:displayType:channel:isExplicit:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int8 a20, uint64_t a21, uint64_t a22, unsigned __int8 a23, unsigned __int8 a24, uint64_t a25, unsigned __int8 a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t *a32, unsigned __int8 a33, int a34, unsigned __int8 a35, unsigned __int8 *a36, _BYTE *a37, unsigned __int8 a38, uint64_t a39)
{
  v106 = a8;
  v82 = a7;
  v104 = a5;
  v105 = a6;
  v92 = a4;
  v109 = a3;
  v85 = a2;
  v84 = a1;
  v87 = a39;
  v108 = a38;
  v112 = a30;
  v90 = a29;
  v107 = a20;
  v88 = a19;
  v110 = a18;
  v111 = a17;
  v102 = a15;
  v103 = a16;
  v100 = a13;
  v101 = a14;
  v98 = a11;
  v99 = a12;
  v97 = a10;
  v96 = a9;
  LODWORD(v94) = a34;
  LODWORD(v93) = a35;
  LODWORD(v91) = a33;
  LODWORD(v89) = a26;
  v83 = a25;
  v81 = a24;
  v80 = a23;
  v79 = a22;
  v78 = a21;
  v86 = a28;
  v95 = a37;
  v77 = a31;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v39 - 8);
  v41 = &v75[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v42);
  v44 = &v75[-v43];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v45 - 8);
  v47 = &v75[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v48);
  v50 = &v75[-v49];
  __chkstk_darwin(v51);
  v53 = &v75[-v52];
  v54 = swift_allocObject();
  v55 = *a32;
  v76 = *a36;
  v56 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodes;
  *(v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodes) = 0;
  v57 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_channel;
  *(v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_channel) = 0;
  *(v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_podcastState) = v82;
  swift_beginAccess();
  *(v54 + v56) = a27;
  v58 = v44;
  sub_FBD0(v112, v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_feedUrl, &unk_4E9EE0, &unk_3F5BC0);
  *(v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_offerAction) = v77;
  *(v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeToPlay) = v78;
  v59 = v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_seasonToShow;
  *v59 = v79;
  *(v59 + 8) = v80 & 1;
  *(v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_isSerialShowTypeInFeed) = v81;
  v60 = v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeUserFilter;
  *v60 = v83;
  *(v60 + 8) = v89;
  *(v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_darkModeOptions) = v55;
  v61 = (v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_shelfUniqueId);
  v62 = v84;
  v63 = v85;
  *v61 = v84;
  v61[1] = v63;
  *(v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_hasEverPlayed) = v91;
  *(v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_sort) = v93;
  *(v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_hidesPlayedEpisodes) = v94;
  *(v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_displayType) = v76;
  swift_beginAccess();
  *(v54 + v57) = v95;
  v64 = v87;
  sub_FBD0(v87, v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_impressionMetrics, &unk_4E9170, &unk_3F4890);
  v89 = v53;
  sub_FBD0(v111, v53, &qword_4F1D50, &unk_3F7520);
  v91 = v50;
  sub_FBD0(v110, v50, &qword_4F1D50, &unk_3F7520);
  v65 = v88;
  v93 = v47;
  v66 = v47;
  v67 = v86;
  sub_FBD0(v88, v66, &qword_4F1D50, &unk_3F7520);
  v94 = v58;
  v68 = v58;
  v69 = v90;
  sub_FBD0(v67, v68, &unk_4E9EE0, &unk_3F5BC0);
  v95 = v41;
  sub_FBD0(v69, v41, &unk_4E9EE0, &unk_3F5BC0);
  *(v54 + 32) = v62;
  *(v54 + 40) = v63;

  if (v92)
  {
    v109 = sub_3E9484();
  }

  sub_FCF8(v64, &unk_4E9170, &unk_3F4890);
  sub_FCF8(v112, &unk_4E9EE0, &unk_3F5BC0);
  sub_FCF8(v69, &unk_4E9EE0, &unk_3F5BC0);
  sub_FCF8(v67, &unk_4E9EE0, &unk_3F5BC0);
  sub_FCF8(v65, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v110, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v111, &qword_4F1D50, &unk_3F7520);
  *(v54 + 16) = v109;
  *(v54 + 24) = 0;
  v70 = v105;
  *(v54 + 48) = v104;
  *(v54 + 56) = v70;
  *(v54 + 64) = v106;
  *(v54 + 72) = v96 & 1;
  v71 = v98;
  *(v54 + 80) = v97;
  *(v54 + 88) = v71;
  v72 = v100;
  *(v54 + 96) = v99;
  *(v54 + 104) = v72;
  v73 = v102;
  *(v54 + 112) = v101;
  *(v54 + 120) = v73;
  *(v54 + 128) = v103;
  sub_FACC(v89, v54 + OBJC_IVAR____TtC8ShelfKit7Podcast_artwork, &qword_4F1D50, &unk_3F7520);
  sub_FACC(v91, v54 + OBJC_IVAR____TtC8ShelfKit7Podcast_uberArtwork, &qword_4F1D50, &unk_3F7520);
  sub_FACC(v93, v54 + OBJC_IVAR____TtC8ShelfKit7Podcast_logoArtwork, &qword_4F1D50, &unk_3F7520);
  *(v54 + OBJC_IVAR____TtC8ShelfKit7Podcast_paidSubscriptionActive) = v107 & 1;
  sub_FACC(v94, v54 + OBJC_IVAR____TtC8ShelfKit7Podcast_storeUrl, &unk_4E9EE0, &unk_3F5BC0);
  sub_FACC(v95, v54 + OBJC_IVAR____TtC8ShelfKit7Podcast_webpageUrl, &unk_4E9EE0, &unk_3F5BC0);
  *(v54 + OBJC_IVAR____TtC8ShelfKit7Podcast_isExplicit) = v108 & 1;
  return v54;
}

uint64_t PodcastDetail.init(uuid:adamId:title:podcastState:addedDate:summary:author:provider:newEpisodeCount:artwork:uberArtwork:logoArtwork:paidSubscriptionActive:episodeToPlay:seasonToShow:isSerialShowTypeInFeed:episodeUserFilter:episodes:storeUrl:webpageUrl:feedUrl:offerAction:darkModeOptions:hasEverPlayed:hidesPlayedEpisodes:sort:displayType:channel:isExplicit:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int8 a20, uint64_t a21, uint64_t a22, unsigned __int8 a23, unsigned __int8 a24, uint64_t a25, unsigned __int8 a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t *a32, unsigned __int8 a33, int a34, unsigned __int8 a35, unsigned __int8 *a36, uint64_t a37, unsigned __int8 a38, uint64_t a39)
{
  v107 = a8;
  v83 = a7;
  v105 = a5;
  v106 = a6;
  v93 = a4;
  v110 = a3;
  v87 = a2;
  v86 = a1;
  v85 = a39;
  v109 = a38;
  v113 = a30;
  v91 = a29;
  v108 = a20;
  v89 = a19;
  v111 = a18;
  v112 = a17;
  v103 = a15;
  v104 = a16;
  v101 = a13;
  v102 = a14;
  v99 = a11;
  v100 = a12;
  v98 = a10;
  v97 = a9;
  LODWORD(v95) = a34;
  LODWORD(v94) = a35;
  LODWORD(v92) = a33;
  LODWORD(v90) = a26;
  v84 = a25;
  v82 = a24;
  v81 = a23;
  v80 = a22;
  v79 = a21;
  v88 = a28;
  v96 = a37;
  v78 = a31;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v40 - 8);
  v42 = &v76[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v43);
  v45 = &v76[-v44];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v46 - 8);
  v48 = &v76[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v49);
  v51 = &v76[-v50];
  __chkstk_darwin(v52);
  v54 = &v76[-v53];
  v55 = *a32;
  v77 = *a36;
  v56 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodes;
  *(v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodes) = 0;
  v57 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_channel;
  *(v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_channel) = 0;
  *(v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_podcastState) = v83;
  swift_beginAccess();
  *(v39 + v56) = a27;
  v58 = v45;
  sub_FBD0(v113, v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_feedUrl, &unk_4E9EE0, &unk_3F5BC0);
  *(v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_offerAction) = v78;
  v59 = v42;
  *(v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeToPlay) = v79;
  v60 = v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_seasonToShow;
  *v60 = v80;
  *(v60 + 8) = v81 & 1;
  *(v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_isSerialShowTypeInFeed) = v82;
  v61 = v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeUserFilter;
  *v61 = v84;
  *(v61 + 8) = v90;
  *(v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_darkModeOptions) = v55;
  v62 = v85;
  v63 = (v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_shelfUniqueId);
  v64 = v86;
  v65 = v87;
  *v63 = v86;
  v63[1] = v65;
  *(v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_hasEverPlayed) = v92;
  *(v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_sort) = v94;
  *(v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_hidesPlayedEpisodes) = v95;
  *(v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_displayType) = v77;
  swift_beginAccess();
  *(v39 + v57) = v96;
  sub_FBD0(v62, v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_impressionMetrics, &unk_4E9170, &unk_3F4890);
  v90 = v54;
  sub_FBD0(v112, v54, &qword_4F1D50, &unk_3F7520);
  v92 = v51;
  sub_FBD0(v111, v51, &qword_4F1D50, &unk_3F7520);
  v66 = v89;
  v94 = v48;
  v67 = v48;
  v68 = v88;
  sub_FBD0(v89, v67, &qword_4F1D50, &unk_3F7520);
  v95 = v58;
  v69 = v58;
  v70 = v91;
  sub_FBD0(v68, v69, &unk_4E9EE0, &unk_3F5BC0);
  v96 = v59;
  sub_FBD0(v70, v59, &unk_4E9EE0, &unk_3F5BC0);
  *(v39 + 32) = v64;
  *(v39 + 40) = v65;

  if (v93)
  {
    v110 = sub_3E9484();
  }

  sub_FCF8(v62, &unk_4E9170, &unk_3F4890);
  sub_FCF8(v113, &unk_4E9EE0, &unk_3F5BC0);
  sub_FCF8(v70, &unk_4E9EE0, &unk_3F5BC0);
  sub_FCF8(v68, &unk_4E9EE0, &unk_3F5BC0);
  sub_FCF8(v66, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v111, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v112, &qword_4F1D50, &unk_3F7520);
  *(v39 + 16) = v110;
  *(v39 + 24) = 0;
  v71 = v106;
  *(v39 + 48) = v105;
  *(v39 + 56) = v71;
  *(v39 + 64) = v107;
  *(v39 + 72) = v97 & 1;
  v72 = v99;
  *(v39 + 80) = v98;
  *(v39 + 88) = v72;
  v73 = v101;
  *(v39 + 96) = v100;
  *(v39 + 104) = v73;
  v74 = v103;
  *(v39 + 112) = v102;
  *(v39 + 120) = v74;
  *(v39 + 128) = v104;
  sub_FACC(v90, v39 + OBJC_IVAR____TtC8ShelfKit7Podcast_artwork, &qword_4F1D50, &unk_3F7520);
  sub_FACC(v92, v39 + OBJC_IVAR____TtC8ShelfKit7Podcast_uberArtwork, &qword_4F1D50, &unk_3F7520);
  sub_FACC(v94, v39 + OBJC_IVAR____TtC8ShelfKit7Podcast_logoArtwork, &qword_4F1D50, &unk_3F7520);
  *(v39 + OBJC_IVAR____TtC8ShelfKit7Podcast_paidSubscriptionActive) = v108 & 1;
  sub_FACC(v95, v39 + OBJC_IVAR____TtC8ShelfKit7Podcast_storeUrl, &unk_4E9EE0, &unk_3F5BC0);
  sub_FACC(v96, v39 + OBJC_IVAR____TtC8ShelfKit7Podcast_webpageUrl, &unk_4E9EE0, &unk_3F5BC0);
  *(v39 + OBJC_IVAR____TtC8ShelfKit7Podcast_isExplicit) = v109 & 1;
  return v39;
}

uint64_t sub_3ADCCC()
{

  sub_3ADF60(*(v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeUserFilter), *(v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeUserFilter + 8));

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_feedUrl, &unk_4E9EE0, &unk_3F5BC0);

  return sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_impressionMetrics, &unk_4E9170, &unk_3F4890);
}

uint64_t PodcastDetail.deinit()
{
  Podcast.deinit();

  sub_3ADF60(*(v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeUserFilter), *(v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeUserFilter + 8));

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_feedUrl, &unk_4E9EE0, &unk_3F5BC0);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v0;
}

uint64_t sub_3ADE6C(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_3ADEC8()
{
  v1 = (*v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_shelfUniqueId);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_3ADF60(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_6BF60(result, a2);
  }

  return result;
}

unint64_t sub_3ADF78()
{
  result = qword_504E28;
  if (!qword_504E28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DarkModeOptions, &type metadata for DarkModeOptions, v0, v1);
    atomic_store(result, &qword_504E28);
  }

  return result;
}

unint64_t sub_3ADFD0()
{
  result = qword_504E30;
  if (!qword_504E30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DarkModeOptions, &type metadata for DarkModeOptions, v0, v1);
    atomic_store(result, &qword_504E30);
  }

  return result;
}

unint64_t sub_3AE028()
{
  result = qword_504E38;
  if (!qword_504E38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DarkModeOptions, &type metadata for DarkModeOptions, v0, v1);
    atomic_store(result, &qword_504E38);
  }

  return result;
}

unint64_t sub_3AE080()
{
  result = qword_504E40;
  if (!qword_504E40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DarkModeOptions, &type metadata for DarkModeOptions, v0, v1);
    atomic_store(result, &qword_504E40);
  }

  return result;
}

unint64_t sub_3AE0D8()
{
  result = qword_504E48;
  if (!qword_504E48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PodcastDetail.DisplayType, &type metadata for PodcastDetail.DisplayType, v0, v1);
    atomic_store(result, &qword_504E48);
  }

  return result;
}

unint64_t sub_3AE12C(uint64_t a1)
{
  result = sub_3AE154();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_3AE154()
{
  result = qword_504E50;
  if (!qword_504E50)
  {
    v3 = type metadata accessor for PodcastDetail(255);
    result = swift_getWitnessTable(protocol conformance descriptor for PodcastDetail, v3, v0, v1);
    atomic_store(result, &qword_504E50);
  }

  return result;
}

void sub_3AE1F4(uint64_t a1)
{
  sub_C3114(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
  if (v1 <= 0x3F)
  {
    sub_C3114(319, &qword_4E9918, &type metadata accessor for URL);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_3AE3D8(uint64_t a1)
{
  sub_C3114(319, &qword_4E9918, &type metadata accessor for URL);
  if (v1 <= 0x3F)
  {
    sub_C3114(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of PodcastDetail.__allocating_init(uuid:adamId:title:podcastState:addedDate:summary:author:provider:newEpisodeCount:artwork:uberArtwork:logoArtwork:paidSubscriptionActive:episodeToPlay:seasonToShow:isSerialShowTypeInFeed:episodeUserFilter:episodes:storeUrl:webpageUrl:feedUrl:offerAction:darkModeOptions:hasEverPlayed:hidesPlayedEpisodes:sort:displayType:channel:isExplicit:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 336);
  v6 = a4 & 1;

  return v5(a1, a2, a3, v6);
}

uint64_t Review.shelfUniqueId.getter()
{
  v1 = sub_3E5FC4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[4])
  {
    v5 = v0[3];
  }

  else
  {
    if (v0[6])
    {
      v5 = v0[5];
      v6 = v0[6];
    }

    else
    {
      sub_3E5FB4();
      v5 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v6 = v7;
      (*(v2 + 8))(v4, v1);
    }

    v0[3] = v5;
    v0[4] = v6;
  }

  return v5;
}

double Review.shelfUniqueId.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  return result;
}

double (*Review.shelfUniqueId.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = Review.shelfUniqueId.getter();
  a1[1] = v3;
  return sub_3AE95C;
}

double sub_3AE95C(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  *(v1 + 24) = *a1;
  *(v1 + 32) = v2;

  return result;
}

uint64_t Review.clickAction.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    v4 = type metadata accessor for Action(0);
    v5 = sub_3AF5D8(&qword_4EDDF8, 255, type metadata accessor for Action, "iJ\v");
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t Review.__allocating_init(id:title:date:contents:rating:reviewerName:response:moreAction:topLevelAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v46 = a7;
  v47 = a8;
  v48 = a15;
  v44 = a14;
  v45 = a6;
  v42 = a12;
  v43 = a13;
  v40 = a10;
  v41 = a11;
  v20 = sub_3E6B04();
  v38 = *(v20 - 8);
  v39 = v20;
  __chkstk_darwin(v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460, &unk_3FADB0);
  __chkstk_darwin(v23 - 8);
  v25 = &v37 - v24;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  *(v26 + 40) = a1;
  *(v26 + 48) = a2;
  *(v26 + 56) = a3;
  *(v26 + 64) = a4;
  sub_FBD0(a5, v25, &qword_4EF460, &unk_3FADB0);
  v27 = sub_3E5F84();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v25, 1, v27) == 1)
  {
    sub_FCF8(a5, &qword_4EF460, &unk_3FADB0);
    sub_FCF8(v25, &qword_4EF460, &unk_3FADB0);
    v29 = 0;
  }

  else
  {
    (*(v28 + 16))(v22, v25, v27);
    (*(v38 + 104))(v22, enum case for LazyDate.State.valid(_:), v39);
    v29 = sub_3E6AF4();
    sub_FCF8(a5, &qword_4EF460, &unk_3FADB0);
    (*(v28 + 8))(v25, v27);
  }

  v30 = v45;
  v31 = v46;
  *(v26 + 72) = v29;
  *(v26 + 80) = v30;
  v33 = v47;
  v32 = v48;
  *(v26 + 88) = v31;
  *(v26 + 96) = v33;
  v34 = v41;
  *(v26 + 104) = v40;
  *(v26 + 112) = v34;
  v35 = v43;
  *(v26 + 120) = v42;
  *(v26 + 128) = v35;
  *(v26 + 136) = v44;
  sub_FACC(v32, v26 + OBJC_IVAR____TtC8ShelfKit6Review_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v26;
}

uint64_t Review.init(id:title:date:contents:rating:reviewerName:response:moreAction:topLevelAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v46 = a7;
  v47 = a8;
  v48 = a15;
  v44 = a14;
  v45 = a6;
  v42 = a12;
  v43 = a13;
  v40 = a10;
  v41 = a11;
  v21 = sub_3E6B04();
  v38 = *(v21 - 8);
  v39 = v21;
  __chkstk_darwin(v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460, &unk_3FADB0);
  __chkstk_darwin(v24 - 8);
  v26 = &v37 - v25;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 40) = a1;
  *(v15 + 48) = a2;
  *(v15 + 56) = a3;
  *(v15 + 64) = a4;
  sub_FBD0(a5, &v37 - v25, &qword_4EF460, &unk_3FADB0);
  v27 = sub_3E5F84();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_FCF8(a5, &qword_4EF460, &unk_3FADB0);
    sub_FCF8(v26, &qword_4EF460, &unk_3FADB0);
    v29 = 0;
  }

  else
  {
    (*(v28 + 16))(v23, v26, v27);
    (*(v38 + 104))(v23, enum case for LazyDate.State.valid(_:), v39);
    v29 = sub_3E6AF4();
    sub_FCF8(a5, &qword_4EF460, &unk_3FADB0);
    (*(v28 + 8))(v26, v27);
  }

  v30 = v45;
  v31 = v46;
  *(v15 + 72) = v29;
  *(v15 + 80) = v30;
  v33 = v47;
  v32 = v48;
  *(v15 + 88) = v31;
  *(v15 + 96) = v33;
  v34 = v41;
  *(v15 + 104) = v40;
  *(v15 + 112) = v34;
  v35 = v43;
  *(v15 + 120) = v42;
  *(v15 + 128) = v35;
  *(v15 + 136) = v44;
  sub_FACC(v32, v15 + OBJC_IVAR____TtC8ShelfKit6Review_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v15;
}

uint64_t Review.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Review.init(deserializing:using:)(a1, a2);
  return v4;
}

void *Review.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v5 - 8);
  v41 = &v40 - v6;
  v48 = sub_3EBF94();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EBDF4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  sub_3EBE04();
  v15 = sub_3EBDC4();
  v17 = v16;
  v18 = *(v9 + 8);
  v42 = v8;
  v18(v14, v8);
  v3[5] = v15;
  v3[6] = v17;
  sub_3EBE04();
  v19 = sub_3EBDC4();
  v21 = v20;
  v18(v14, v8);
  v3[7] = v19;
  v3[8] = v21;
  sub_3EBE04();
  v22 = *(v45 + 16);
  v43 = v45 + 16;
  v44 = v22;
  v22(v47, v46, v48);
  sub_A72A8();
  sub_3EC574();
  v3[9] = v49;
  sub_3EBE04();
  v23 = sub_3EBDC4();
  v25 = v24;
  v26 = v42;
  v18(v14, v42);
  v3[10] = v23;
  v3[11] = v25;
  sub_3EBE04();
  v27 = sub_3EBD44();
  LOBYTE(v25) = v28;
  v18(v11, v26);
  if (v25)
  {
    v29 = 0;
  }

  else
  {
    v29 = v27;
  }

  v3[12] = v29;
  sub_3EBE04();
  v30 = sub_3EBDC4();
  v32 = v31;
  v18(v14, v26);
  v3[13] = v30;
  v3[14] = v32;
  type metadata accessor for Response();
  sub_3EBE04();
  v33 = v46;
  v44(v47, v46, v48);
  sub_3AF5D8(&qword_505120, v34, type metadata accessor for Response, protocol conformance descriptor for Response);
  sub_3EC574();
  v3[15] = v49;
  sub_3EBE04();
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v40 = v18;
  v18(v14, v26);
  v3[16] = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
  sub_3EBE04();
  v36 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v18(v14, v26);
  v3[17] = v36;
  sub_3EC634();
  sub_3EBE04();
  v37 = v48;
  v44(v47, v33, v48);
  v38 = v41;
  sub_3EC574();
  (*(v45 + 8))(v33, v37);
  v40(a1, v42);
  sub_FACC(v38, v3 + OBJC_IVAR____TtC8ShelfKit6Review_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v3;
}

uint64_t sub_3AF5D8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

void *Review.deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Review_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v0;
}

void *sub_3AF6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = Review.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

BOOL sub_3AF760()
{
  v1 = *v0;
  swift_beginAccess();
  return (*(v1 + 16) & 1) == 0;
}

void sub_3AF7A8()
{
  v1 = *v0;
  swift_beginAccess();
  *(v1 + 16) = (*(v1 + 16) & 1) == 0;
}

void sub_3AF7F4()
{
  v1 = *v0;
  swift_beginAccess();
  *(v1 + 16) = 0;
}

uint64_t sub_3AF834@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 128);
  if (v3)
  {
    v4 = type metadata accessor for Action(0);
    v5 = sub_3AF5D8(&qword_4EDDF8, 255, type metadata accessor for Action, "iJ\v");
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

void *Response.__allocating_init(id:date:contents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v23 = a4;
  v24 = a5;
  v9 = sub_3E6B04();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460, &unk_3FADB0);
  __chkstk_darwin(v13 - 8);
  v15 = &v23 - v14;
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  sub_FBD0(a3, v15, &qword_4EF460, &unk_3FADB0);
  v17 = sub_3E5F84();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    sub_FCF8(a3, &qword_4EF460, &unk_3FADB0);
    sub_FCF8(v15, &qword_4EF460, &unk_3FADB0);
    v19 = 0;
  }

  else
  {
    (*(v18 + 16))(v12, v15, v17);
    (*(v10 + 104))(v12, enum case for LazyDate.State.valid(_:), v9);
    v19 = sub_3E6AF4();
    sub_FCF8(a3, &qword_4EF460, &unk_3FADB0);
    (*(v18 + 8))(v15, v17);
  }

  v21 = v23;
  v20 = v24;
  v16[4] = v19;
  v16[5] = v21;
  v16[6] = v20;
  return v16;
}

void *Response.init(id:date:contents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v23 = a4;
  v24 = a5;
  v10 = sub_3E6B04();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460, &unk_3FADB0);
  __chkstk_darwin(v14 - 8);
  v16 = &v23 - v15;
  v6[2] = a1;
  v6[3] = a2;
  sub_FBD0(a3, &v23 - v15, &qword_4EF460, &unk_3FADB0);
  v17 = sub_3E5F84();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_FCF8(a3, &qword_4EF460, &unk_3FADB0);
    sub_FCF8(v16, &qword_4EF460, &unk_3FADB0);
    v19 = 0;
  }

  else
  {
    (*(v18 + 16))(v13, v16, v17);
    (*(v11 + 104))(v13, enum case for LazyDate.State.valid(_:), v10);
    v19 = sub_3E6AF4();
    sub_FCF8(a3, &qword_4EF460, &unk_3FADB0);
    (*(v18 + 8))(v16, v17);
  }

  v21 = v23;
  v20 = v24;
  v6[4] = v19;
  v6[5] = v21;
  v6[6] = v20;
  return v6;
}

uint64_t Response.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Response.init(deserializing:using:)(a1, a2);
  return v4;
}

void *Response.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v27 = a2;
  v3 = v2;
  v26 = sub_3EBF94();
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EBDF4();
  v25 = v7;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3EBE04();
  v11 = sub_3EBDC4();
  v13 = v12;
  v14 = *(v8 + 8);
  v14(v10, v7);
  v3[2] = v11;
  v3[3] = v13;
  v15 = a1;
  sub_3EBE04();
  v17 = v26;
  v16 = v27;
  (*(v28 + 16))(v6, v27, v26);
  sub_A72A8();
  sub_3EC574();
  v3[4] = v29;
  v18 = v15;
  sub_3EBE04();
  v19 = sub_3EBDC4();
  v21 = v20;
  (*(v28 + 8))(v16, v17);
  v22 = v25;
  v14(v18, v25);
  v14(v10, v22);
  v3[5] = v19;
  v3[6] = v21;
  return v3;
}

uint64_t Response.deinit()
{

  return v0;
}

uint64_t Response.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_3B0150@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = Response.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t Ratings.shelfUniqueId.getter()
{
  v1 = sub_3E5FC4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[3])
  {
    v5 = v0[2];
  }

  else
  {
    if (v0[5])
    {
      v5 = v0[4];
      v6 = v0[5];
    }

    else
    {
      sub_3E5FB4();
      v5 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v6 = v7;
      (*(v2 + 8))(v4, v1);
    }

    v0[2] = v5;
    v0[3] = v6;
  }

  return v5;
}

uint64_t (*Ratings.shelfUniqueId.modify(uint64_t *a1))()
{
  a1[2] = v1;
  *a1 = Ratings.shelfUniqueId.getter();
  a1[1] = v3;
  return sub_3B3130;
}

uint64_t Ratings.__allocating_init(productId:ratingAverage:ratingCounts:formattedCount:totalNumberOfRatings:totalNumberOfReviews:reviews:actions:nextPageIntent:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v29 = a7;
  v30 = a8;
  v31 = a12;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E0, &unk_403FF0);
  __chkstk_darwin(v19 - 8);
  v21 = &v28 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = a1;
  *(v22 + 40) = a2;
  *(v22 + 48) = a9;
  *(v22 + 56) = a3;
  *(v22 + 64) = a6;
  *(v22 + 72) = a4;
  *(v22 + 80) = a5;
  v23 = v30;
  *(v22 + 88) = v29;
  *(v22 + 96) = v23;
  *(v22 + 104) = a10;
  sub_FBD0(a11, v21, &qword_4F29E0, &unk_403FF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E8, &qword_404000);
  if ((*(*(v24 - 8) + 48))(v21, 1, v24) == 1)
  {
    sub_FCF8(a11, &qword_4F29E0, &unk_403FF0);
    sub_FCF8(v21, &qword_4F29E0, &unk_403FF0);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
  }

  else
  {
    *(&v33 + 1) = v24;
    v34 = sub_3A7D14(&unk_503DB0, &protocol conformance descriptor for AnyJSIntentModel<A>);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v32);
    sub_FACC(v21, boxed_opaque_existential_0Tm, &qword_4F29E8, &qword_404000);
    sub_FCF8(a11, &qword_4F29E0, &unk_403FF0);
  }

  v26 = v33;
  *(v22 + 112) = v32;
  *(v22 + 128) = v26;
  *(v22 + 144) = v34;
  sub_FACC(v31, v22 + OBJC_IVAR____TtC8ShelfKit7Ratings_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v22;
}

uint64_t Ratings.init(productId:ratingAverage:ratingCounts:formattedCount:totalNumberOfRatings:totalNumberOfReviews:reviews:actions:nextPageIntent:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v29 = a7;
  v30 = a8;
  v31 = a12;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E0, &unk_403FF0);
  __chkstk_darwin(v20 - 8);
  v22 = &v28 - v21;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a9;
  *(v12 + 56) = a3;
  *(v12 + 64) = a6;
  *(v12 + 72) = a4;
  *(v12 + 80) = a5;
  v23 = v30;
  *(v12 + 88) = v29;
  *(v12 + 96) = v23;
  *(v12 + 104) = a10;
  sub_FBD0(a11, v22, &qword_4F29E0, &unk_403FF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E8, &qword_404000);
  if ((*(*(v24 - 8) + 48))(v22, 1, v24) == 1)
  {
    sub_FCF8(a11, &qword_4F29E0, &unk_403FF0);
    sub_FCF8(v22, &qword_4F29E0, &unk_403FF0);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
  }

  else
  {
    *(&v33 + 1) = v24;
    v34 = sub_3A7D14(&unk_503DB0, &protocol conformance descriptor for AnyJSIntentModel<A>);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v32);
    sub_FACC(v22, boxed_opaque_existential_0Tm, &qword_4F29E8, &qword_404000);
    sub_FCF8(a11, &qword_4F29E0, &unk_403FF0);
  }

  v26 = v33;
  *(v12 + 112) = v32;
  *(v12 + 128) = v26;
  *(v12 + 144) = v34;
  sub_FACC(v31, v12 + OBJC_IVAR____TtC8ShelfKit7Ratings_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v12;
}

__n128 Ratings.nextPageIntent.getter@<Q0>(uint64_t a1@<X8>)
{
  if (*(v1 + 136))
  {
    sub_1F958(v1 + 112, a1);
  }

  else
  {
    result = *(v1 + 112);
    v3 = *(v1 + 128);
    *a1 = result;
    *(a1 + 16) = v3;
    *(a1 + 32) = *(v1 + 144);
  }

  return result;
}

void *Ratings.deinit()
{

  if (*(v0 + 136))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  }

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit7Ratings_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v0;
}

uint64_t sub_3B08E0(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_3B093C@<X0>(uint64_t *a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_3B1680(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t TapToRate.__allocating_init(title:rating:rateAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v10 = sub_3E5FC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  sub_3E5FB4();
  v15 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v17 = v16;
  (*(v11 + 8))(v13, v10);
  *(v14 + 16) = v15;
  *(v14 + 24) = v17;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a5;
  *(v14 + 52) = 0;
  *(v14 + 56) = a3;
  sub_FACC(a4, v14 + OBJC_IVAR____TtC8ShelfKit9TapToRate_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v14;
}

uint64_t TapToRate.init(title:rating:rateAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v6 = v5;
  v12 = sub_3E5FC4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E5FB4();
  v16 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  *(v6 + 16) = v16;
  *(v6 + 24) = v18;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = a5;
  *(v6 + 52) = 0;
  *(v6 + 56) = a3;
  sub_FACC(a4, v6 + OBJC_IVAR____TtC8ShelfKit9TapToRate_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v6;
}

uint64_t TapToRate.deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit9TapToRate_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v0;
}

uint64_t TapToRate.__deallocating_deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit9TapToRate_impressionMetrics, &unk_4E9170, &unk_3F4890);

  return swift_deallocClassInstance();
}

uint64_t sub_3B0DA8@<X0>(uint64_t *a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_3B22F4(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t ReviewActions.shelfUniqueId.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_3B0E90(v0);
    *(v0 + 16) = v1;
    *(v0 + 24) = v2;
  }

  return v1;
}

double ReviewActions.shelfUniqueId.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

uint64_t sub_3B0E90(uint64_t a1)
{
  v2 = sub_3E5FC4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  if (v6)
  {
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);

    v9 = *(a1 + 40);
    if (v9)
    {
LABEL_3:
      v11 = *(v9 + 16);
      v10 = *(v9 + 24);

      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0xE000000000000000;
    v9 = *(a1 + 40);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
  v10 = 0xE000000000000000;
LABEL_6:
  v12 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v12 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    goto LABEL_12;
  }

  v13 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v13 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
LABEL_12:
    strcpy(v16, "reviewActions:");
    HIBYTE(v16[1]) = -18;
    v17._countAndFlagsBits = v8;
    v17._object = v7;
    sub_3ED3D4(v17);

    v18._countAndFlagsBits = 58;
    v18._object = 0xE100000000000000;
    sub_3ED3D4(v18);

    v19._countAndFlagsBits = v11;
    v19._object = v10;
    sub_3ED3D4(v19);

    return v16[0];
  }

  else
  {

    sub_3E5FB4();
    v15 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    (*(v3 + 8))(v5, v2);
    return v15;
  }
}

uint64_t (*ReviewActions.shelfUniqueId.modify(uint64_t *a1))()
{
  a1[2] = v1;
  *a1 = ReviewActions.shelfUniqueId.getter();
  a1[1] = v3;
  return sub_3B10D4;
}

double sub_3B10D8(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;

  return result;
}

void *ReviewActions.__allocating_init(writeReview:support:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;
  v6[5] = a2;
  sub_FACC(a3, v6 + OBJC_IVAR____TtC8ShelfKit13ReviewActions_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v6;
}

void *ReviewActions.init(writeReview:support:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = a1;
  v3[5] = a2;
  sub_FACC(a3, v3 + OBJC_IVAR____TtC8ShelfKit13ReviewActions_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v3;
}

uint64_t ReviewActions.deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit13ReviewActions_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v0;
}

uint64_t ReviewActions.__deallocating_deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit13ReviewActions_impressionMetrics, &unk_4E9170, &unk_3F4890);

  return swift_deallocClassInstance();
}

void *sub_3B12D4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_3B1360(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

void *sub_3B1360(uint64_t a1, uint64_t a2)
{
  v23 = sub_3EBF94();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v6 - 8);
  v26 = &v19 - v7;
  v8 = sub_3EBDF4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3EBE04();
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v12 = *(v9 + 8);
  v21 = v8;
  v12(v11, v8);
  v20 = v12;
  sub_3EBE04();
  v24 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v12(v11, v8);
  sub_3EC634();
  sub_3EBE04();
  v13 = v23;
  v14 = a2;
  (*(v4 + 16))(v22, a2, v23);
  v15 = v26;
  sub_3EC574();
  (*(v4 + 8))(v14, v13);
  v20(a1, v21);
  type metadata accessor for ReviewActions(0);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v17 = v24;
  v16[4] = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
  v16[5] = v17;
  sub_FACC(v15, v16 + OBJC_IVAR____TtC8ShelfKit13ReviewActions_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v16;
}

uint64_t sub_3B1680(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v4 - 8);
  v102 = &v85 - v5;
  v112 = sub_3EBF94();
  v108 = *(v112 - 8);
  __chkstk_darwin(v112);
  v105 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E0, &unk_403FF0);
  __chkstk_darwin(v7 - 8);
  v101 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v100 = &v85 - v10;
  __chkstk_darwin(v11);
  v110 = &v85 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98, &qword_41CF30);
  __chkstk_darwin(v13 - 8);
  v97 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v85 - v16;
  v18 = sub_3EBDF4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v99 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v98 = &v85 - v22;
  __chkstk_darwin(v23);
  v94 = &v85 - v24;
  __chkstk_darwin(v25);
  v93 = &v85 - v26;
  __chkstk_darwin(v27);
  v88 = &v85 - v28;
  __chkstk_darwin(v29);
  v87 = &v85 - v30;
  __chkstk_darwin(v31);
  v103 = &v85 - v32;
  __chkstk_darwin(v33);
  v35 = &v85 - v34;
  v36 = sub_3ECED4();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v85 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = a1;
  sub_3EBE04();
  sub_3EBD54();
  v40 = *(v19 + 8);
  v107 = v19 + 8;
  v40(v35, v18);
  v86 = *(v37 + 48);
  v41 = v86(v17, 1, v36);
  v104 = v40;
  v85 = v37;
  if (v41 == 1)
  {
    sub_FCF8(v17, &qword_4EDC98, &qword_41CF30);
    v96 = _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v37 + 32))(v39, v17, v36);
    v42 = type metadata accessor for Action(0);
    __chkstk_darwin(v42);
    *(&v85 - 2) = v43;
    *(&v85 - 1) = a2;
    v44 = v109;
    v96 = sub_3ECE94();
    v109 = v44;
    (*(v37 + 8))(v39, v36);
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E8, &qword_404000);
  sub_3EBE04();
  v46 = *(v108 + 16);
  v111 = a2;
  v92 = v108 + 16;
  v91 = v46;
  v46(v105, a2, v112);
  sub_3A7D14(&qword_4F29F0, &protocol conformance descriptor for AnyJSIntentModel<A>);
  v95 = v45;
  sub_3EC574();
  v47 = v87;
  sub_3EBE04();
  v90 = sub_3EBDC4();
  v89 = v48;
  v49 = v104;
  v104(v47, v18);
  v50 = v88;
  sub_3EBE04();
  v51 = sub_3EBD64();
  v49(v50, v18);
  if ((v51 & 0x100000000) != 0)
  {
    v52 = 0.0;
  }

  else
  {
    v52 = *&v51;
  }

  v53 = v93;
  sub_3EBE04();
  v54 = v97;
  sub_3EBD54();
  v49(v53, v18);
  if (v86(v54, 1, v36) == 1)
  {
    sub_FCF8(v54, &qword_4EDC98, &qword_41CF30);
    v93 = 0;
  }

  else
  {
    sub_127870();
    v93 = sub_3ECEA4();
    (*(v85 + 8))(v54, v36);
  }

  v55 = v94;
  sub_3EBE04();
  v56 = sub_3EBDC4();
  v58 = v57;
  v49(v55, v18);
  if (v58)
  {
    v59 = v56;
  }

  else
  {
    v59 = 0;
  }

  v97 = v59;
  v60 = 0xE000000000000000;
  if (v58)
  {
    v60 = v58;
  }

  v94 = v60;
  v61 = v98;
  sub_3EBE04();
  v62 = sub_3EBD04();
  v64 = v63;
  v49(v61, v18);
  if (v64)
  {
    v65 = 0;
  }

  else
  {
    v65 = v62;
  }

  v98 = v65;
  v66 = v99;
  sub_3EBE04();
  v67 = sub_3EBD04();
  v69 = v68;
  v49(v66, v18);
  if (v69)
  {
    v70 = 0;
  }

  else
  {
    v70 = v67;
  }

  v88 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5055C0, &qword_420020);
  sub_3EBE04();
  v71 = v105;
  v99 = v18;
  v72 = v91;
  v91(v105, v111, v112);
  sub_3B3068();
  sub_3EC574();
  v73 = v116;
  v74 = v100;
  sub_FBD0(v110, v100, &qword_4F29E0, &unk_403FF0);
  sub_3EC634();
  sub_3EBE04();
  v72(v71, v111, v112);
  v75 = v102;
  sub_3EC574();
  type metadata accessor for Ratings(0);
  v76 = swift_allocObject();
  *(v76 + 16) = 0;
  *(v76 + 24) = 0;
  v77 = v89;
  *(v76 + 32) = v90;
  *(v76 + 40) = v77;
  *(v76 + 48) = v52;
  v78 = v98;
  *(v76 + 56) = v93;
  *(v76 + 64) = v78;
  v79 = v94;
  *(v76 + 72) = v97;
  *(v76 + 80) = v79;
  *(v76 + 88) = v88;
  *(v76 + 96) = v73;
  *(v76 + 104) = v96;
  v80 = v101;
  sub_FBD0(v74, v101, &qword_4F29E0, &unk_403FF0);
  v81 = v95;
  if ((*(*(v95 - 8) + 48))(v80, 1, v95) == 1)
  {
    v104(v106, v99);
    sub_FCF8(v74, &qword_4F29E0, &unk_403FF0);
    sub_FCF8(v110, &qword_4F29E0, &unk_403FF0);
    sub_FCF8(v80, &qword_4F29E0, &unk_403FF0);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  else
  {
    *(&v114 + 1) = v81;
    v115 = sub_3A7D14(&unk_503DB0, &protocol conformance descriptor for AnyJSIntentModel<A>);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v113);
    sub_FACC(v80, boxed_opaque_existential_0Tm, &qword_4F29E8, &qword_404000);
    v104(v106, v99);
    sub_FCF8(v74, &qword_4F29E0, &unk_403FF0);
    sub_FCF8(v110, &qword_4F29E0, &unk_403FF0);
  }

  v83 = v114;
  *(v76 + 112) = v113;
  *(v76 + 128) = v83;
  *(v76 + 144) = v115;
  sub_FACC(v75, v76 + OBJC_IVAR____TtC8ShelfKit7Ratings_impressionMetrics, &unk_4E9170, &unk_3F4890);
  (*(v108 + 8))(v111, v112);
  return v76;
}

uint64_t sub_3B22F4(char *a1, uint64_t a2)
{
  v54 = a2;
  v3 = sub_3E5FC4();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v5 - 8);
  v49 = &v39 - v6;
  v55 = sub_3EBF94();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v39 - v9;
  v11 = sub_3EBDF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v43 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  __chkstk_darwin(v20);
  v22 = &v39 - v21;
  sub_3EBE04();
  v44 = sub_3EBDC4();
  v50 = v23;
  v24 = *(v12 + 8);
  v24(v22, v11);
  sub_3EBE04();
  v25 = sub_3EBD64();
  v52 = v11;
  v24(v19, v11);
  sub_3EBE04();
  v26 = v53 + 16;
  v27 = *(v53 + 16);
  v27(v10, v54, v55);
  type metadata accessor for HttpTemplateAction(0);
  swift_allocObject();
  v28 = v51;
  v29 = HttpTemplateAction.init(deserializing:using:)(v16, v10);
  if (v28)
  {

    (*(v53 + 8))(v54, v55);
    v24(a1, v52);
  }

  else
  {
    v51 = v29;
    sub_3EC634();
    v41 = a1;
    sub_3EBE04();
    v40 = v24;
    v42 = v25;
    v30 = v54;
    v27(v45, v54, v55);
    sub_3EC574();
    type metadata accessor for TapToRate(0);
    v26 = swift_allocObject();
    v31 = v46;
    sub_3E5FB4();
    v32 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v34 = v33;
    (*(v53 + 8))(v30, v55);
    v40(v41, v52);
    (*(v47 + 8))(v31, v48);
    *(v26 + 16) = v32;
    *(v26 + 24) = v34;
    v35 = v49;
    v36 = v50;
    *(v26 + 32) = v44;
    *(v26 + 40) = v36;
    v37 = v42;
    if ((v42 & 0x100000000) != 0)
    {
      v37 = 0;
    }

    *(v26 + 48) = v37;
    *(v26 + 52) = 0;
    *(v26 + 56) = v51;
    sub_FACC(v35, v26 + OBJC_IVAR____TtC8ShelfKit9TapToRate_impressionMetrics, &unk_4E9170, &unk_3F4890);
  }

  return v26;
}

uint64_t sub_3B2810(uint64_t a1)
{
  result = sub_3AF5D8(&qword_4FCAF8, 255, type metadata accessor for Review, protocol conformance descriptor for Review);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_3B288C(uint64_t a1)
{
  result = sub_3AF5D8(&qword_505128, 255, type metadata accessor for Review, protocol conformance descriptor for Review);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_3B28E8(uint64_t a1)
{
  result = sub_3AF5D8(&qword_505130, 255, type metadata accessor for Ratings, protocol conformance descriptor for Ratings);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_3B2964(uint64_t a1)
{
  result = sub_3AF5D8(&qword_505138, 255, type metadata accessor for TapToRate, protocol conformance descriptor for TapToRate);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_3B29E0(uint64_t a1)
{
  result = sub_3AF5D8(&qword_505140, 255, type metadata accessor for ReviewActions, protocol conformance descriptor for ReviewActions);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_3B2A5C@<X0>(uint64_t *a1@<X8>)
{
  result = Review.shelfUniqueId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_3B2A88(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;

  return result;
}

uint64_t sub_3B2ACC@<X0>(uint64_t *a1@<X8>)
{
  result = Ratings.shelfUniqueId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_3B2AFC@<X0>(uint64_t *a1@<X8>)
{
  result = ReviewActions.shelfUniqueId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double keypath_set_3Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  return result;
}

void sub_3B2B74(uint64_t a1)
{
  sub_4D334(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_3B2D10(uint64_t a1)
{
  sub_4D334(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_3B2E58(uint64_t a1)
{
  sub_4D334(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_3B2F6C(uint64_t a1)
{
  sub_4D334(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_3B3068()
{
  result = qword_5055C8;
  if (!qword_5055C8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5055C0, &qword_420020);
    v4[0] = sub_3AF5D8(&qword_5055D0, 255, type metadata accessor for Review, protocol conformance descriptor for Review);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_5055C8);
  }

  return result;
}

uint64_t static SeparatorStyle.== infix(_:_:)(int a1, int a2)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) != 0x40)
      {
        return 0;
      }

      return (a1 ^ a2 ^ 1) & 1;
    }

    if (a1 == 128)
    {
      if (a2 == 128)
      {
        return 1;
      }
    }

    else if (a2 == 129)
    {
      return 1;
    }
  }

  else if (a2 < 0x40u)
  {
    return (a1 ^ a2 ^ 1) & 1;
  }

  return 0;
}

uint64_t sub_3B31AC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 >> 6))
  {
    if (v3 < 0x40)
    {
      return (v2 ^ v3 ^ 1) & 1;
    }

    return 0;
  }

  if (v2 >> 6 == 1)
  {
    if ((v3 & 0xC0) != 0x40)
    {
      return 0;
    }

    return (v2 ^ v3 ^ 1) & 1;
  }

  if (v2 == 128)
  {
    if (v3 != 128)
    {
      return 0;
    }
  }

  else if (v3 != 129)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_3B3228(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    _s7EpisodeVMa(0);
    return a2;
  }

  return result;
}

id Shelf.__allocating_init(id:contentType:title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:seeAllAction:headerButtonItems:isHorizontal:items:url:backgroundColor:rowsPerColumn:mergeWhenFetched:hideFromCarPlay:headerArtwork:shelvesIntent:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, char a19, uint64_t a20, __int128 *a21, uint64_t a22)
{
  v23 = v22;

  v42 = v23;
  v29 = objc_allocWithZone(v23);
  v30 = &v29[OBJC_IVAR____TtC8ShelfKit5Shelf_id];
  *v30 = a1;
  v30[1] = a2;
  *&v29[OBJC_IVAR____TtC8ShelfKit5Shelf_contentType] = a3;
  v31 = &v29[OBJC_IVAR____TtC8ShelfKit5Shelf_title];
  *v31 = a4;
  v31[1] = a5;
  v32 = &v29[OBJC_IVAR____TtC8ShelfKit5Shelf_subtitle];
  *v32 = a6;
  v32[1] = a7;
  v29[OBJC_IVAR____TtC8ShelfKit5Shelf_displaySubtitleAsEyebrow] = a8;
  sub_FBD0(a9, &v29[OBJC_IVAR____TtC8ShelfKit5Shelf_titleContextMenu], &qword_4F1AB8, &unk_3FF1D0);
  *&v29[OBJC_IVAR____TtC8ShelfKit5Shelf_seeAllAction] = a10;
  v29[OBJC_IVAR____TtC8ShelfKit5Shelf_isHorizontal] = a12;
  *&v29[OBJC_IVAR____TtC8ShelfKit5Shelf_items] = a13;
  sub_FBD0(a14, &v29[OBJC_IVAR____TtC8ShelfKit5Shelf_url], &unk_4E9EE0, &unk_3F5BC0);
  v33 = &v29[OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor];
  *v33 = a15;
  v33[8] = a16;
  *&v29[OBJC_IVAR____TtC8ShelfKit5Shelf_rowsPerColumn] = a17;
  v29[OBJC_IVAR____TtC8ShelfKit5Shelf_mergeWhenFetched] = a18;
  v29[OBJC_IVAR____TtC8ShelfKit5Shelf_hideFromCarPlay] = a19;
  sub_FBD0(a20, &v29[OBJC_IVAR____TtC8ShelfKit5Shelf_headerArtwork], &qword_4F1D50, &unk_3F7520);
  v34 = &v29[OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent];
  if (*(a21 + 3))
  {
    sub_1F958(a21, v34);
  }

  else
  {
    v35 = *a21;
    v36 = a21[1];
    *(v34 + 32) = *(a21 + 4);
    *v34 = v35;
    *(v34 + 16) = v36;
  }

  sub_FBD0(a22, &v29[OBJC_IVAR____TtC8ShelfKit5Shelf_impressionMetrics], &unk_4E9170, &unk_3F4890);
  v43.receiver = v29;
  v43.super_class = v42;
  v37 = objc_msgSendSuper2(&v43, "init");
  sub_FCF8(a22, &unk_4E9170, &unk_3F4890);
  if (*(a21 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a21);
  }

  sub_FCF8(a20, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(a14, &unk_4E9EE0, &unk_3F5BC0);
  sub_FCF8(a9, &qword_4F1AB8, &unk_3FF1D0);
  return v37;
}

uint64_t ShelfContentType.string.getter(uint64_t a1)
{
  result = 0x74616D726F666E69;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      return 0x65646F73697065;
    case 2:
    case 6:
      return 0xD000000000000012;
    case 3:
    case 4:
      return 0x5365646F73697065;
    case 5:
      return 0xD000000000000011;
    case 7:
      return 0x6867696C68676968;
    case 8:
      return 0xD00000000000001BLL;
    case 9:
    case 13:
    case 37:
      return 0xD000000000000010;
    case 10:
      v3 = 0x4C6C6C616D73;
      goto LABEL_36;
    case 11:
      return 0x6F4C6D756964656DLL;
    case 12:
      v3 = 0x4C656772616CLL;
LABEL_36:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
      break;
    case 14:
      result = 0x656C626174696465;
      break;
    case 15:
    case 42:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0x6E6F69746361;
      break;
    case 17:
      result = 0x7374736163646F70;
      break;
    case 18:
      result = 0x656C626174696465;
      break;
    case 19:
      result = 0x6B726F77747261;
      break;
    case 20:
      result = 0x7061726761726170;
      break;
    case 21:
      result = 0x6169726F74696465;
      break;
    case 22:
      result = 0x65736163776F6873;
      break;
    case 23:
      result = 0x6B63697262;
      break;
    case 24:
      result = 0xD000000000000011;
      break;
    case 25:
      result = 0xD000000000000014;
      break;
    case 26:
      result = 0x4865646F73697065;
      break;
    case 27:
      result = 0x73676E69746172;
      break;
    case 28:
      result = 0x7461526F54706174;
      break;
    case 29:
      result = 0x73776569766572;
      break;
    case 30:
      result = 0x6341776569766572;
      break;
    case 31:
      result = 0x6E6F73726570;
      break;
    case 32:
      result = 0x656C746974;
      break;
    case 33:
      result = 0x7473694C6B6E696CLL;
      break;
    case 34:
    case 49:
      result = 0xD000000000000016;
      break;
    case 35:
      result = 0x614C686372616573;
      break;
    case 36:
      result = 0x6F77737265776F70;
      break;
    case 38:
      result = 0x6C656E6E616863;
      break;
    case 39:
      result = 0x4F6C656E6E616863;
      break;
    case 40:
      result = 0x486C656E6E616863;
      break;
    case 41:
      result = 0x61426C6C65737075;
      break;
    case 43:
      result = 0xD000000000000018;
      break;
    case 44:
      result = 0x6C6562616CLL;
      break;
    case 45:
      result = 0x4865646F73697065;
      break;
    case 46:
      result = 0x6F726548776F6873;
      break;
    case 47:
      result = 0x616553646578696DLL;
      break;
    case 48:
      result = 0xD000000000000015;
      break;
    case 50:
      result = 0x7045686372616573;
      break;
    case 51:
      result = 0x6853686372616573;
      break;
    case 52:
      result = 0x6843686372616573;
      break;
    case 53:
      result = 0x6143686372616573;
      break;
    case 54:
      result = 0x6948686372616573;
      break;
    case 55:
      result = 0xD000000000000011;
      break;
    case 56:
      result = 0xD000000000000011;
      break;
    case 57:
      result = 0x676E6964616F6CLL;
      break;
    case 58:
      result = 0x636E657265666572;
      break;
    case 59:
      result = 0x79726F6765746163;
      break;
    default:
      sub_3EE854();
      __break(1u);
      JUMPOUT(0x3B3C80);
  }

  return result;
}

void *Shelf.__allocating_init(deserializing:using:)(uint64_t a1, char *a2)
{
  v225 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v3 - 8);
  v212 = &v175 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505618, &unk_420070);
  __chkstk_darwin(v5 - 8);
  v200 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v203 = &v175 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v9 - 8);
  v202 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v211 = &v175 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v13 - 8);
  v209 = &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v210 = &v175 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98, &qword_41CF30);
  __chkstk_darwin(v17 - 8);
  v188 = &v175 - v18;
  v190 = sub_3ECED4();
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v182 = &v175 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = type metadata accessor for LegacyActionMenu(0);
  v184 = *(Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 - 8);
  __chkstk_darwin(Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0);
  v181 = (&v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v180 = &v175 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8, &unk_3FF1D0);
  __chkstk_darwin(v23 - 8);
  v207 = &v175 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v208 = (&v175 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505620, &unk_420080);
  __chkstk_darwin(v27 - 8);
  v183 = &v175 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v201 = &v175 - v30;
  v31 = sub_3EBF94();
  v32 = *(v31 - 8);
  v219 = v31;
  v220 = v32;
  __chkstk_darwin(v31);
  v191 = &v175 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v205 = &v175 - v35;
  __chkstk_darwin(v36);
  v206 = &v175 - v37;
  v38 = sub_3EBDF4();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v199 = &v175 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v198 = &v175 - v42;
  __chkstk_darwin(v43);
  v197 = &v175 - v44;
  __chkstk_darwin(v45);
  v196 = &v175 - v46;
  __chkstk_darwin(v47);
  v195 = &v175 - v48;
  __chkstk_darwin(v49);
  v194 = &v175 - v50;
  __chkstk_darwin(v51);
  v193 = &v175 - v52;
  __chkstk_darwin(v53);
  v192 = &v175 - v54;
  __chkstk_darwin(v55);
  v187 = &v175 - v56;
  __chkstk_darwin(v57);
  v186 = &v175 - v58;
  __chkstk_darwin(v59);
  v61 = &v175 - v60;
  __chkstk_darwin(v62);
  v213 = &v175 - v63;
  __chkstk_darwin(v64);
  v66 = &v175 - v65;
  __chkstk_darwin(v67);
  v69 = &v175 - v68;
  v70 = a1;
  sub_3EBE04();
  v71 = sub_3EBDC4();
  v73 = v72;
  v76 = *(v39 + 8);
  v74 = v39 + 8;
  v75 = v76;
  v76(v69, v38);
  if (!v73)
  {
    v79 = sub_3ECEE4();
    sub_3BC234(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v85 = 0x54746E65746E6F63;
    v85[1] = 0xEB00000000657079;
    v85[2] = v217;
    (*(*(v79 - 8) + 104))(v85, enum case for JSONError.missingProperty(_:), v79);
    swift_willThrow();
    v75(v70, v38);
    goto LABEL_5;
  }

  v215 = v75;
  v216 = v74;
  v214 = v38;
  v218 = v70;

  v77 = sub_3BA6F4(v71, v73);
  if (v78)
  {
    v79 = sub_3ECEE4();
    sub_3BC234(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    v81 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628, &unk_4213E0);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_3F5630;
    *(v82 + 32) = swift_allocError();
    *v83 = v71;
    v83[1] = v73;
    v83[2] = &type metadata for ShelfContentType;
    v84 = *(*(v79 - 8) + 104);
    v84(v83, enum case for JSONError.unknownCase(_:), v79);
    *v81 = 0x54746E65746E6F63;
    v81[1] = 0xEB00000000657079;
    v81[2] = v217;
    v81[3] = v82;
    v84(v81, enum case for JSONError.malformedProperty(_:), v79);
    swift_willThrow();
    v215(v218, v214);
LABEL_5:
    v86 = v225;
    v87 = v219;
    v88 = v220;
LABEL_8:
    (*(v88 + 8))(v86, v87);
    return v79;
  }

  v89 = v77;

  v90 = v218;
  sub_3EBE04();
  v91 = v89;
  v92 = v89;
  v86 = v225;
  v93 = v204;
  v94 = sub_3B80A8(v66, v91, v225);
  v87 = v219;
  v88 = v220;
  if (v93)
  {
    v79 = v214;
    v95 = v215;
    v215(v90, v214);
    v95(v66, v79);
    goto LABEL_8;
  }

  v97 = v94;
  v215(v66, v214);
  v179 = v92;
  *&v222 = v92;
  if (qword_4E8970 != -1)
  {
    swift_once();
  }

  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1538, &unk_420090);
  __swift_project_value_buffer(v98, qword_539620);
  v99 = v205;
  sub_3EBF04();
  v175 = v97;
  *&v222 = v97;
  v100 = v206;
  if (qword_4E8978 != -1)
  {
    swift_once();
  }

  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1528, &qword_3FDBD0);
  __swift_project_value_buffer(v101, qword_539638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1530, &qword_4200A0);
  sub_3EBF04();
  v102 = *(v88 + 8);
  v177 = v88 + 8;
  v176 = v102;
  v102(v99, v87);
  v103 = v99;
  sub_3EBE04();
  v178 = *(v88 + 16);
  v178(v99, v100, v87);
  sub_3BC234(&qword_505630, type metadata accessor for LegacyActionMenu, "\tV\n");
  v104 = v88 + 16;
  v105 = v201;
  v106 = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
  sub_3EC574();
  v107 = v105;
  v108 = v183;
  sub_FBD0(v107, v183, &qword_505620, &unk_420080);
  v109 = (*(v184 + 48))(v108, 1, v106);
  v220 = v104;
  if (v109 == 1)
  {
    sub_FCF8(v108, &qword_505620, &unk_420080);
    v204 = type metadata accessor for ActionMenu(0);
    v110 = v213;
    sub_3EBE04();
    v178(v103, v206, v87);
    sub_3BC234(&qword_505638, type metadata accessor for ActionMenu, protocol conformance descriptor for ActionMenu);
    sub_3EC574();
  }

  else
  {
    v111 = v180;
    sub_3BB9B0(v108, v180);
    v112 = v181;
    sub_3BBAC0(v111, v181, type metadata accessor for LegacyActionMenu);
    v113 = v208;
    ActionMenu.init(from:)(v112, v208);
    sub_3BBB28(v111, type metadata accessor for LegacyActionMenu);
    v114 = type metadata accessor for ActionMenu(0);
    (*(*(v114 - 8) + 56))(v113, 0, 1, v114);
    v110 = v213;
  }

  sub_3EBE04();
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v115 = v110;
  v116 = v214;
  v117 = v215;
  v215(v115, v214);
  sub_3EBE04();
  v118 = v188;
  sub_3EBD54();
  v119 = v61;
  v120 = v118;
  v117(v119, v116);
  v121 = v189;
  v122 = v190;
  if ((*(v189 + 48))(v120, 1, v190) == 1)
  {
    v204 = 0;
    sub_FCF8(v120, &qword_4EDC98, &qword_41CF30);
  }

  else
  {
    v123 = v182;
    v124 = (*(v121 + 32))(v182, v120, v122);
    __chkstk_darwin(v124);
    *(&v175 - 2) = v225;
    type metadata accessor for HeaderButtonItem(0);
    sub_3ECE94();
    v204 = 0;

    v86 = v225;
    (*(v121 + 8))(v123, v122);
  }

  v125 = v186;
  sub_3EBE04();
  v126 = sub_3EBD04();
  v128 = v127;
  v215(v125, v116);
  if ((v128 & 1) != 0 || v126 <= 0)
  {
    if ((v179 - 1) > 0xF)
    {
      v126 = 1;
    }

    else
    {
      v126 = qword_4202E8[(v179 - 1)];
    }
  }

  v190 = v126;
  sub_3E7784();
  sub_3EBE04();
  v129 = v205;
  v130 = v178;
  (v178)();
  sub_3BC234(&qword_4EECC8, &type metadata accessor for ArtworkModel, &protocol conformance descriptor for ArtworkModel);
  sub_3EC574();
  sub_3EC634();
  sub_3EBE04();
  v130(v129, v86, v87);
  sub_3EC574();
  v131 = v187;
  sub_3EBE04();
  v132 = v191;
  v130(v191, v86, v87);
  v133 = v204;
  v134 = sub_3DC304(v131, v132);
  if (v133)
  {

    v191 = 0;
    v204 = 0;
    LODWORD(v189) = 255;
  }

  else
  {
    LODWORD(v189) = v135;
    v191 = v134;
    v204 = 0;
  }

  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505640, &qword_4200A8);
  sub_3EBE04();
  v130(v205, v225, v219);
  sub_886BC(&qword_505648, &qword_505640, &qword_4200A8, &protocol conformance descriptor for AnyIntentModel<A>);
  v137 = v203;
  sub_3EC574();
  v138 = v192;
  sub_3EBE04();
  v220 = sub_3EBDC4();
  v213 = v139;
  v140 = v214;
  v141 = v215;
  v215(v138, v214);
  v142 = v193;
  sub_3EBE04();
  v205 = sub_3EBDC4();
  v192 = v143;
  v141(v142, v140);
  v144 = v194;
  sub_3EBE04();
  v193 = sub_3EBDC4();
  v188 = v145;
  v141(v144, v140);
  v146 = v195;
  sub_3EBE04();
  LODWORD(v194) = sub_3EBD24();
  v141(v146, v140);
  sub_FBD0(v208, v207, &qword_4F1AB8, &unk_3FF1D0);
  v147 = v196;
  sub_3EBE04();
  LODWORD(v195) = sub_3EBD24();
  v141(v147, v140);
  v148 = v197;
  sub_3EBE04();
  sub_3EBD14();
  v141(v148, v140);
  v149 = v198;
  sub_3EBE04();
  v150 = sub_3EBD24();
  v141(v149, v140);
  v151 = v199;
  sub_3EBE04();
  v152 = sub_3EBD24();
  v141(v151, v140);
  sub_FBD0(v210, v209, &qword_4F1D50, &unk_3F7520);
  v153 = v137;
  v154 = v200;
  sub_FBD0(v153, v200, &qword_505618, &unk_420070);
  v155 = *(v136 - 8);
  if ((*(v155 + 48))(v154, 1, v136) == 1)
  {
    sub_FCF8(v154, &qword_505618, &unk_420070);
    v222 = 0u;
    v223 = 0u;
    v224 = 0;
  }

  else
  {
    *(&v223 + 1) = v136;
    v224 = sub_886BC(&qword_505650, &qword_505640, &qword_4200A8, &protocol conformance descriptor for AnyIntentModel<A>);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v222);
    (*(v155 + 32))(boxed_opaque_existential_0Tm, v154, v136);
  }

  v157 = v175;
  v158 = v179;
  sub_FBD0(v211, v202, &unk_4E9170, &unk_3F4890);
  v159 = v217;
  v160 = objc_allocWithZone(v217);
  v161 = &v160[OBJC_IVAR____TtC8ShelfKit5Shelf_id];
  v162 = v213;
  *v161 = v220;
  v161[1] = v162;
  *&v160[OBJC_IVAR____TtC8ShelfKit5Shelf_contentType] = v158;
  v163 = &v160[OBJC_IVAR____TtC8ShelfKit5Shelf_title];
  v164 = v192;
  *v163 = v205;
  v163[1] = v164;
  v165 = &v160[OBJC_IVAR____TtC8ShelfKit5Shelf_subtitle];
  v166 = v188;
  *v165 = v193;
  v165[1] = v166;
  v160[OBJC_IVAR____TtC8ShelfKit5Shelf_displaySubtitleAsEyebrow] = v194 & 1;
  sub_FBD0(v207, &v160[OBJC_IVAR____TtC8ShelfKit5Shelf_titleContextMenu], &qword_4F1AB8, &unk_3FF1D0);
  *&v160[OBJC_IVAR____TtC8ShelfKit5Shelf_seeAllAction] = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
  v160[OBJC_IVAR____TtC8ShelfKit5Shelf_isHorizontal] = v195 & 1;
  *&v160[OBJC_IVAR____TtC8ShelfKit5Shelf_items] = v157;
  sub_FBD0(v212, &v160[OBJC_IVAR____TtC8ShelfKit5Shelf_url], &unk_4E9EE0, &unk_3F5BC0);
  v167 = &v160[OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor];
  *v167 = v191;
  v167[8] = v189;
  *&v160[OBJC_IVAR____TtC8ShelfKit5Shelf_rowsPerColumn] = v190;
  v160[OBJC_IVAR____TtC8ShelfKit5Shelf_mergeWhenFetched] = v150 & 1;
  v160[OBJC_IVAR____TtC8ShelfKit5Shelf_hideFromCarPlay] = v152 & 1;
  sub_FBD0(v209, &v160[OBJC_IVAR____TtC8ShelfKit5Shelf_headerArtwork], &qword_4F1D50, &unk_3F7520);
  v168 = &v160[OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent];
  if (*(&v223 + 1))
  {
    sub_1F958(&v222, v168);
  }

  else
  {
    v169 = v222;
    v170 = v223;
    *(v168 + 32) = v224;
    *v168 = v169;
    *(v168 + 16) = v170;
  }

  v171 = v218;
  v172 = v202;
  sub_FBD0(v202, &v160[OBJC_IVAR____TtC8ShelfKit5Shelf_impressionMetrics], &unk_4E9170, &unk_3F4890);
  v221.receiver = v160;
  v221.super_class = v159;
  v79 = objc_msgSendSuper2(&v221, "init");
  v215(v171, v214);
  sub_FCF8(v172, &unk_4E9170, &unk_3F4890);
  sub_FCF8(v209, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v212, &unk_4E9EE0, &unk_3F5BC0);
  sub_FCF8(v207, &qword_4F1AB8, &unk_3FF1D0);
  sub_FCF8(v203, &qword_505618, &unk_420070);
  sub_FCF8(v211, &unk_4E9170, &unk_3F4890);
  sub_FCF8(v210, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v208, &qword_4F1AB8, &unk_3FF1D0);
  sub_FCF8(v201, &qword_505620, &unk_420080);
  v173 = v219;
  v174 = v176;
  v176(v206, v219);
  if (*(&v223 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v222);
  }

  v174(v225, v173);
  return v79;
}

BOOL ShelfContentType.isCompatible(with:)(Swift::UInt a1, char a2, unint64_t a3)
{
  if (a2)
  {
    return 0;
  }

  v6 = sub_34ABC(&off_4AFCC8);
  if (a3 <= 0x27 && ((1 << a3) & 0xC000003C00) != 0)
  {
    v7 = sub_33C67C(a1, v6);

    return v7;
  }

  else
  {

    return a3 == a1;
  }
}

void *sub_3B5950@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v330 = a2;
  v329 = a1;
  v324 = a4;
  v5 = sub_3EBF94();
  v6 = *(v5 - 8);
  v325 = v5;
  v326 = v6;
  __chkstk_darwin(v5);
  v313 = &v287 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v314 = &v287 - v9;
  __chkstk_darwin(v10);
  v315 = &v287 - v11;
  __chkstk_darwin(v12);
  v312 = &v287 - v13;
  __chkstk_darwin(v14);
  v311 = &v287 - v15;
  __chkstk_darwin(v16);
  v310 = &v287 - v17;
  __chkstk_darwin(v18);
  v309 = &v287 - v19;
  __chkstk_darwin(v20);
  v308 = &v287 - v21;
  __chkstk_darwin(v22);
  v318 = &v287 - v23;
  __chkstk_darwin(v24);
  v319 = &v287 - v25;
  __chkstk_darwin(v26);
  v317 = &v287 - v27;
  __chkstk_darwin(v28);
  v307 = &v287 - v29;
  __chkstk_darwin(v30);
  v305 = &v287 - v31;
  __chkstk_darwin(v32);
  v306 = &v287 - v33;
  __chkstk_darwin(v34);
  v304 = &v287 - v35;
  __chkstk_darwin(v36);
  v303 = &v287 - v37;
  __chkstk_darwin(v38);
  v302 = &v287 - v39;
  __chkstk_darwin(v40);
  v301 = &v287 - v41;
  __chkstk_darwin(v42);
  v300 = &v287 - v43;
  __chkstk_darwin(v44);
  v298 = &v287 - v45;
  __chkstk_darwin(v46);
  v297 = &v287 - v47;
  __chkstk_darwin(v48);
  v296 = &v287 - v49;
  __chkstk_darwin(v50);
  v299 = &v287 - v51;
  __chkstk_darwin(v52);
  v322 = &v287 - v53;
  __chkstk_darwin(v54);
  v294 = &v287 - v55;
  __chkstk_darwin(v56);
  v295 = &v287 - v57;
  __chkstk_darwin(v58);
  v320 = &v287 - v59;
  __chkstk_darwin(v60);
  v321 = &v287 - v61;
  __chkstk_darwin(v62);
  v323 = &v287 - v63;
  v64 = sub_3EBDF4();
  v327 = *(v64 - 8);
  v328 = v64;
  __chkstk_darwin(v64);
  v66 = &v287 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  __chkstk_darwin(v68);
  __chkstk_darwin(v69);
  __chkstk_darwin(&v287 - v70);
  __chkstk_darwin(v71);
  __chkstk_darwin(v72);
  __chkstk_darwin(v73);
  __chkstk_darwin(v74);
  __chkstk_darwin(v75);
  __chkstk_darwin(v76);
  v316 = &v287 - v77;
  __chkstk_darwin(v78);
  v293 = &v287 - v79;
  __chkstk_darwin(v80);
  v292 = &v287 - v81;
  __chkstk_darwin(v82);
  v291 = &v287 - v83;
  __chkstk_darwin(v84);
  v289 = &v287 - v85;
  __chkstk_darwin(v86);
  v288 = &v287 - v87;
  __chkstk_darwin(v88);
  v290 = &v287 - v89;
  __chkstk_darwin(v90);
  v287 = &v287 - v91;
  __chkstk_darwin(v92);
  __chkstk_darwin(v93);
  v95 = &v287 - v94;
  __chkstk_darwin(v96);
  v98 = &v287 - v97;
  __chkstk_darwin(v99);
  v101 = &v287 - v100;
  __chkstk_darwin(v102);
  __chkstk_darwin(v103);
  v105 = &v287 - v104;
  __chkstk_darwin(v106);
  v108 = &v287 - v107;
  __chkstk_darwin(v109);
  v111 = &v287 - v110;
  __chkstk_darwin(v112);
  v114 = &v287 - v113;
  __chkstk_darwin(v115);
  v117 = &v287 - v116;
  v131 = __chkstk_darwin(v118);
  v132 = a3;
  v133 = &v287 - v127;
  switch(v132)
  {
    case 0:
      v242 = v293;
      (*(v327 + 16))(v293, v329, v328, v131);
      v243 = v307;
      (*(v326 + 16))(v307, v330, v325);
      v244 = type metadata accessor for Information(0);
      v154 = v324;
      v324[3] = v244;
      v154[4] = sub_3BC234(&qword_505798, type metadata accessor for Information, protocol conformance descriptor for Information);
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v154);
      v246 = v331;
      result = Information.init(deserializing:using:)(v242, v243, boxed_opaque_existential_0Tm);
      if (v246)
      {
        goto LABEL_40;
      }

      return result;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 45:
      (*(v327 + 16))(&v287 - v127, v329, v328, v131);
      v135 = v323;
      (*(v326 + 16))(v323, v330, v325);
      v136 = type metadata accessor for LegacyEpisodeLockup(0);
      swift_allocObject();
      v137 = v331;
      result = LegacyEpisodeLockup.init(deserializing:using:)(v133, v135);
      if (v137)
      {
        return result;
      }

      v138 = result;
      v139 = v324;
      v324[3] = v136;
      v140 = &qword_4F2460;
      v141 = type metadata accessor for LegacyEpisodeLockup;
      goto LABEL_58;
    case 7:
      v223 = v128;
      (*(v327 + 16))(v128, v329, v328, v131);
      v224 = v300;
      (*(v326 + 16))(v300, v330, v325);
      v225 = v331;
      result = sub_372638(v223, v224);
      if (v225)
      {
        return result;
      }

      v166 = result;
      v226 = type metadata accessor for HighlightItem(0);
      v167 = v324;
      v324[3] = v226;
      v168 = &unk_503AC8;
      v169 = type metadata accessor for HighlightItem;
      v227 = &protocol conformance descriptor for HighlightItem;
      goto LABEL_64;
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
      v148 = v328;
      v149 = [objc_opt_self() supportsShowLockup];
      v150 = *(v327 + 16);
      v151 = (v326 + 16);
      if (v149)
      {
        v150(v117, v329, v148);
        v152 = v321;
        (*v151)(v321, v330, v325);
        v153 = type metadata accessor for ShowLockup(0);
        v154 = v324;
        v324[3] = v153;
        v154[4] = sub_3BC234(&qword_5057C0, type metadata accessor for ShowLockup, protocol conformance descriptor for ShowLockup);
        v155 = __swift_allocate_boxed_opaque_existential_0Tm(v154);
        v156 = v331;
        result = ShowLockup.init(deserializing:using:)(v117, v152, v155);
        if (v156)
        {
LABEL_40:
          v147 = v154;
LABEL_41:
          result = __swift_deallocate_boxed_opaque_existential_0Tm(v147);
        }
      }

      else
      {
        v150(v114, v329, v148);
        v157 = v320;
        (*v151)(v320, v330, v325);
        v158 = type metadata accessor for LegacyLockup(0);
        swift_allocObject();
        v159 = v114;
        v160 = v157;
LABEL_56:
        v273 = v331;
        result = LegacyLockup.init(deserializing:using:)(v159, v160);
        if (!v273)
        {
          v138 = result;
          v139 = v324;
          v324[3] = v158;
          v140 = &qword_4EF840;
          v141 = type metadata accessor for LegacyLockup;
LABEL_58:
          v191 = v141;
          v192 = protocol conformance descriptor for LegacyLockup;
LABEL_59:
          v197 = v192;
LABEL_60:
          result = sub_3BC234(v140, v191, v197);
          v139[4] = result;
          *v139 = v138;
        }
      }

      break;
    case 16:
    case 17:
    case 18:
    case 33:
    case 34:
    case 36:
    case 37:
      (*(v327 + 16))(v105, v329, v328, v131);
      v142 = v322;
      (*(v326 + 16))(v322, v330, v325);
      v143 = type metadata accessor for Link(0);
      v144 = v324;
      v324[3] = v143;
      v144[4] = sub_3BC234(&qword_4F09D0, type metadata accessor for Link, protocol conformance descriptor for Link);
      v145 = __swift_allocate_boxed_opaque_existential_0Tm(v144);
      v146 = v331;
      result = Link.init(deserializing:using:)(v105, v142, v145);
      if (!v146)
      {
        return result;
      }

      v147 = v144;
      goto LABEL_41;
    case 19:
      (*(v327 + 16))(v121, v329, v328, v131);
      (*(v326 + 16))(v299, v330, v325);
      v209 = sub_3E7784();
      v154 = v324;
      v324[3] = v209;
      v154[4] = sub_3BC234(&qword_4EECC8, &type metadata accessor for ArtworkModel, &protocol conformance descriptor for ArtworkModel);
      __swift_allocate_boxed_opaque_existential_0Tm(v154);
      v210 = v331;
      result = sub_3E76C4();
      if (!v210)
      {
        return result;
      }

      goto LABEL_40;
    case 20:
      (*(v327 + 16))(v101, v329, v328, v131);
      v207 = v296;
      (*(v326 + 16))(v296, v330, v325);
      v208 = v101;
      goto LABEL_62;
    case 21:
      (*(v327 + 16))(v98, v329, v328, v131);
      v247 = v297;
      (*(v326 + 16))(v297, v330, v325);
      v248 = v331;
      result = sub_35E4B4(v98, v247);
      if (v248)
      {
        return result;
      }

      v166 = result;
      v249 = type metadata accessor for EditorialCard(0);
      v167 = v324;
      v324[3] = v249;
      v168 = &qword_503090;
      v169 = type metadata accessor for EditorialCard;
      v227 = protocol conformance descriptor for EditorialCard;
      goto LABEL_64;
    case 22:
      (*(v327 + 16))(v95, v329, v328, v131);
      v265 = v298;
      (*(v326 + 16))(v298, v330, v325);
      v266 = v331;
      result = sub_3BD014(v95, v265);
      if (v266)
      {
        return result;
      }

      v166 = result;
      v267 = type metadata accessor for Showcase(0);
      v167 = v324;
      v324[3] = v267;
      v168 = &unk_5057B8;
      v169 = type metadata accessor for Showcase;
      v227 = &protocol conformance descriptor for Showcase;
      goto LABEL_64;
    case 23:
      v233 = v287;
      (*(v327 + 16))(v287, v329, v328, v131);
      v234 = v301;
      (*(v326 + 16))(v301, v330, v325);
      v235 = v331;
      result = sub_356B10(v233, v234);
      if (v235)
      {
        return result;
      }

      v166 = result;
      v236 = type metadata accessor for Brick(0);
      v167 = v324;
      v324[3] = v236;
      v168 = &qword_502C00;
      v169 = type metadata accessor for Brick;
      v227 = protocol conformance descriptor for Brick;
      goto LABEL_64;
    case 24:
      v237 = v327;
      v238 = type metadata accessor for ShowHeader(0);
      v239 = v290;
      (*(v237 + 16))(v290, v329, v328);
      v240 = v302;
      (*(v326 + 16))(v302, v330, v325);
      v241 = v331;
      result = ShowHeader.__allocating_init(deserializing:using:)(v239, v240);
      if (v241)
      {
        return result;
      }

      v139 = v324;
      v324[3] = v238;
      v191 = type metadata accessor for ShowHeader;
      v197 = &protocol conformance descriptor for ShowHeader;
      v138 = result;
      v140 = &unk_5057B0;
      goto LABEL_60;
    case 25:
    case 26:
      v161 = v327;
      v162 = type metadata accessor for EpisodeHeader(0);
      v163 = v316;
      (*(v161 + 16))(v316, v329, v328);
      v164 = v317;
      (*(v326 + 16))(v317, v330, v325);
      v165 = v331;
      result = EpisodeHeader.__allocating_init(deserializing:using:)(v163, v164);
      if (v165)
      {
        return result;
      }

      v166 = result;
      v167 = v324;
      v324[3] = v162;
      v168 = &unk_505790;
      v169 = type metadata accessor for EpisodeHeader;
      v170 = &protocol conformance descriptor for EpisodeHeader;
      goto LABEL_50;
    case 27:
      v219 = v288;
      (*(v327 + 16))(v288, v329, v328, v131);
      v220 = v303;
      (*(v326 + 16))(v303, v330, v325);
      v221 = v331;
      result = sub_3B1680(v219, v220);
      if (v221)
      {
        return result;
      }

      v138 = result;
      v222 = type metadata accessor for Ratings(0);
      v139 = v324;
      v324[3] = v222;
      v140 = &unk_503850;
      v191 = type metadata accessor for Ratings;
      v197 = &protocol conformance descriptor for Ratings;
      goto LABEL_60;
    case 28:
      v193 = v289;
      (*(v327 + 16))(v289, v329, v328, v131);
      v194 = v304;
      (*(v326 + 16))(v304, v330, v325);
      v195 = v331;
      result = sub_3B22F4(v193, v194);
      if (v195)
      {
        return result;
      }

      v138 = result;
      v196 = type metadata accessor for TapToRate(0);
      v139 = v324;
      v324[3] = v196;
      v140 = &unk_5057A8;
      v191 = type metadata accessor for TapToRate;
      v197 = &protocol conformance descriptor for TapToRate;
      goto LABEL_60;
    case 29:
      v187 = v291;
      (*(v327 + 16))(v291, v329, v328, v131);
      v188 = v306;
      (*(v326 + 16))(v306, v330, v325);
      v189 = type metadata accessor for Review(0);
      swift_allocObject();
      v190 = v331;
      result = Review.init(deserializing:using:)(v187, v188);
      if (v190)
      {
        return result;
      }

      v138 = result;
      v139 = v324;
      v324[3] = v189;
      v140 = &qword_5055D0;
      v191 = type metadata accessor for Review;
      v192 = protocol conformance descriptor for Review;
      goto LABEL_59;
    case 30:
      v268 = v292;
      (*(v327 + 16))(v292, v329, v328, v131);
      v269 = v305;
      (*(v326 + 16))(v305, v330, v325);
      v270 = v331;
      result = sub_3B1360(v268, v269);
      if (v270)
      {
        return result;
      }

      v166 = result;
      v271 = type metadata accessor for ReviewActions(0);
      v167 = v324;
      v324[3] = v271;
      v168 = &unk_5057A0;
      v169 = type metadata accessor for ReviewActions;
      v227 = &protocol conformance descriptor for ReviewActions;
      goto LABEL_64;
    case 31:
      (*(v327 + 16))(v111, v329, v328, v131);
      v272 = v295;
      (*(v326 + 16))(v295, v330, v325);
      v158 = type metadata accessor for LegacyLockup(0);
      swift_allocObject();
      v159 = v111;
      v160 = v272;
      goto LABEL_56;
    case 32:
      (*(v327 + 16))(v108, v329, v328, v131);
      v207 = v294;
      (*(v326 + 16))(v294, v330, v325);
      v208 = v108;
LABEL_62:
      v274 = v331;
      result = sub_3A9C90(v208, v207);
      if (v274)
      {
        return result;
      }

      v166 = result;
      v275 = type metadata accessor for Paragraph(0);
      v167 = v324;
      v324[3] = v275;
      v168 = &qword_4F74B8;
      v169 = type metadata accessor for Paragraph;
      v227 = protocol conformance descriptor for Paragraph;
LABEL_64:
      v264 = v227;
      goto LABEL_65;
    case 35:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 55:
    case 56:
      return sub_3B772C(v324);
    case 38:
    case 39:
      v171 = v328;
      v323 = *(v327 + 16);
      v172 = v120;
      v173 = v122;
      (v323)(v120, v329, v328, v131);
      v174 = v325;
      v175 = v326;
      v329 = *(v326 + 16);
      v176 = v319;
      v329(v319, v330, v325);
      v177 = type metadata accessor for LegacyChannelLockup(0);
      v322 = swift_allocObject();
      v330 = v172;
      v178 = v171;
      v179 = v174;
      (v323)(v173, v172, v178);
      v180 = v318;
      v329(v318, v176, v174);
      v181 = v331;
      v182 = LegacyLockup.init(deserializing:using:)(v173, v180);
      if (v181)
      {
        (*(v175 + 8))(v176, v174);
        return (*(v327 + 8))(v330, v328);
      }

      else
      {
        v285 = v182;
        (*(v175 + 8))(v176, v179);
        (*(v327 + 8))(v330, v328);
        v286 = v324;
        v324[3] = v177;
        result = sub_3BC234(&qword_4F23C0, type metadata accessor for LegacyChannelLockup, protocol conformance descriptor for LegacyLockup);
        v286[4] = result;
        *v286 = v285;
      }

      return result;
    case 40:
      v214 = v327;
      v215 = v126;
      v216 = type metadata accessor for ChannelHeader(0);
      (*(v214 + 16))(v215, v329, v328);
      v217 = v308;
      (*(v326 + 16))(v308, v330, v325);
      v218 = v331;
      result = ChannelHeader.__allocating_init(deserializing:using:)(v215, v217);
      if (v218)
      {
        return result;
      }

      v166 = result;
      v167 = v324;
      v324[3] = v216;
      v168 = &unk_505788;
      v169 = type metadata accessor for ChannelHeader;
      v170 = &protocol conformance descriptor for ChannelHeader;
      goto LABEL_50;
    case 41:
      v228 = v327;
      v229 = v125;
      v230 = type metadata accessor for UpsellBanner(0);
      (*(v228 + 16))(v229, v329, v328);
      v231 = v309;
      (*(v326 + 16))(v309, v330, v325);
      v232 = v331;
      result = UpsellBanner.__allocating_init(deserializing:using:)(v229, v231);
      if (v232)
      {
        return result;
      }

      v166 = result;
      v167 = v324;
      v324[3] = v230;
      v168 = &qword_502F38;
      v169 = type metadata accessor for UpsellBanner;
      v170 = protocol conformance descriptor for UpsellBanner;
      goto LABEL_50;
    case 42:
      v250 = v124;
      (*(v327 + 16))(v124, v329, v328, v131);
      v251 = v310;
      (*(v326 + 16))(v310, v330, v325);
      v252 = v331;
      result = sub_160EA4(v250, v251);
      if (v252)
      {
        return result;
      }

      v138 = result;
      v253 = type metadata accessor for EpisodeUpsellBannerModel(0);
      v139 = v324;
      v324[3] = v253;
      v140 = &unk_505780;
      v191 = type metadata accessor for EpisodeUpsellBannerModel;
      v197 = &protocol conformance descriptor for EpisodeUpsellBannerModel;
      goto LABEL_60;
    case 43:
      v276 = v123;
      (*(v327 + 16))(v123, v329, v328, v131);
      v277 = v311;
      (*(v326 + 16))(v311, v330, v325);
      v278 = v331;
      result = sub_38103C(v276, v277);
      if (!v278)
      {
        v281 = result;
        v282 = v279;
        v283 = v280;
        v284 = v324;
        v324[3] = &type metadata for Label;
        result = sub_3BC1E0();
        v284[4] = result;
        *v284 = v281;
        v284[1] = v282;
        *(v284 + 16) = v283 & 1;
      }

      return result;
    case 44:
      v198 = v119;
      (*(v327 + 16))(v131);
      v199 = v312;
      (*(v326 + 16))(v312, v330, v325);
      v200 = v331;
      result = sub_38103C(v198, v199);
      if (!v200)
      {
        v203 = v324;
        v324[3] = &type metadata for Label;
        v204 = result;
        v205 = v201;
        v206 = v202;
        result = sub_3BC1E0();
        v203[4] = result;
        *v203 = v204;
        v203[1] = v205;
        *(v203 + 16) = v206 & 1;
      }

      return result;
    case 54:
      v183 = v129;
      v184 = v327;
      type metadata accessor for SearchHint(0);
      (*(v184 + 16))(v183, v329, v328);
      (*(v326 + 16))(v315, v330, v325);
      v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505768, &qword_4202B8);
      v186 = v324;
      v324[3] = v185;
      v186[4] = sub_3BC12C();
      __swift_allocate_boxed_opaque_existential_0Tm(v186);
      sub_3BC234(&qword_4F3FE0, type metadata accessor for SearchHint, protocol conformance descriptor for SearchHint);
      return sub_3EC574();
    case 57:
      v254 = type metadata accessor for EmptyModel(0);
      v255 = v324;
      v324[3] = v254;
      v255[4] = sub_3BC234(&qword_505760, type metadata accessor for EmptyModel, protocol conformance descriptor for EmptyModel);
      v256 = __swift_allocate_boxed_opaque_existential_0Tm(v255);
      v257 = *(v254 + 20);
      v258 = sub_3EC634();
      result = (*(*(v258 - 8) + 56))(v256 + v257, 1, 1, v258);
      *v256 = 0x676E6964616F6CLL;
      v256[1] = 0xE700000000000000;
      return result;
    case 58:
      v211 = v130;
      (*(v327 + 16))(v130, v329, v328, v131);
      v212 = v314;
      (*(v326 + 16))(v314, v330, v325);
      v154 = v324;
      v324[3] = &type metadata for AnyReferenceLink;
      v154[4] = sub_112C60();
      *v154 = swift_allocObject();
      v213 = v331;
      result = sub_3DEED8(v211, v212);
      if (!v213)
      {
        return result;
      }

      goto LABEL_40;
    case 59:
      v259 = v327;
      v260 = type metadata accessor for CategoryHeader(0);
      (*(v259 + 16))(v66, v329, v328);
      v261 = v313;
      (*(v326 + 16))(v313, v330, v325);
      v262 = v66;
      v263 = v331;
      result = CategoryHeader.__allocating_init(deserializing:using:)(v262, v261);
      if (v263)
      {
        return result;
      }

      v166 = result;
      v167 = v324;
      v324[3] = v260;
      v168 = &unk_505758;
      v169 = type metadata accessor for CategoryHeader;
      v170 = &protocol conformance descriptor for CategoryHeader;
LABEL_50:
      v264 = v170;
LABEL_65:
      result = sub_3BC234(v168, v169, v264);
      v167[4] = result;
      *v167 = v166;
      break;
    default:
      v332 = v132;
      sub_3EE854();
      __break(1u);
      JUMPOUT(0x3B763CLL);
  }

  return result;
}

void *sub_3B772C@<X0>(uint64_t *a3@<X8>)
{
  if (qword_4E8C48 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5057C8, &unk_4202C0);
  __swift_project_value_buffer(v5, qword_5055D8);
  sub_886BC(&qword_5057D0, &qword_5057C8, &unk_4202C0, &protocol conformance descriptor for ComponentTypes<A>);
  sub_3BC27C();
  sub_3BC2D0();
  result = sub_3EC474();
  if (!v3)
  {
    sub_1F958(v19, v15);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0020, &unk_3FAF10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5057E8, &qword_4202D0);
    if (swift_dynamicCast())
    {
      sub_2688E4(v14, &v16);
      v8 = v17;
      v9 = v18;
      v10 = __swift_project_boxed_opaque_existential_1(&v16, v17);
      a3[3] = v8;
      a3[4] = v9;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a3);
      (*(*(v8 - 8) + 16))(boxed_opaque_existential_0Tm, v10, v8);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v16);
    }

    else
    {
      memset(v14, 0, sizeof(v14));
      sub_FCF8(v14, &qword_5057F0, &unk_4202D8);
      v12 = sub_3ECEE4();
      sub_3BC234(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
      swift_allocError();
      *v13 = v7;
      v13[1] = _swiftEmptyArrayStorage;
      (*(*(v12 - 8) + 104))(v13, enum case for JSONError.malformedDocument(_:), v12);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  return result;
}

uint64_t sub_3B79E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5057C8, &unk_4202C0);
  __swift_allocate_value_buffer(v0, qword_5055D8);
  __swift_project_value_buffer(v0, qword_5055D8);
  sub_3BC324();
  sub_3BC27C();
  sub_3BC2D0();
  return sub_3EC2F4();
}

unint64_t sub_3B7A90@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_3BBAB0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t Shelf.id.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit5Shelf_id);

  return v1;
}

uint64_t Shelf.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit5Shelf_title);

  return v1;
}

uint64_t Shelf.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit5Shelf_subtitle);

  return v1;
}

double Shelf.items.getter()
{
  swift_beginAccess();

  return result;
}

void *Shelf.backgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor);
  sub_1F7418(v1, *(v0 + OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor + 8));
  return v1;
}

__n128 Shelf.shelvesIntent.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent;
  if (*(v1 + OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent + 24))
  {
    sub_1F958(v2, a1);
  }

  else
  {
    result = *v2;
    v4 = *(v2 + 16);
    *a1 = *v2;
    *(a1 + 16) = v4;
    *(a1 + 32) = *(v2 + 32);
  }

  return result;
}

id Shelf.init(id:contentType:title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:seeAllAction:headerButtonItems:isHorizontal:items:url:backgroundColor:rowsPerColumn:mergeWhenFetched:hideFromCarPlay:headerArtwork:shelvesIntent:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = v22;
  ObjectType = swift_getObjectType();

  v28 = &v23[OBJC_IVAR____TtC8ShelfKit5Shelf_id];
  *v28 = a1;
  v28[1] = a2;
  *&v23[OBJC_IVAR____TtC8ShelfKit5Shelf_contentType] = a3;
  v29 = &v23[OBJC_IVAR____TtC8ShelfKit5Shelf_title];
  *v29 = a4;
  v29[1] = a5;
  v30 = &v23[OBJC_IVAR____TtC8ShelfKit5Shelf_subtitle];
  *v30 = a6;
  v30[1] = a7;
  v23[OBJC_IVAR____TtC8ShelfKit5Shelf_displaySubtitleAsEyebrow] = a8;
  sub_FBD0(a9, &v23[OBJC_IVAR____TtC8ShelfKit5Shelf_titleContextMenu], &qword_4F1AB8, &unk_3FF1D0);
  *&v23[OBJC_IVAR____TtC8ShelfKit5Shelf_seeAllAction] = a10;
  v23[OBJC_IVAR____TtC8ShelfKit5Shelf_isHorizontal] = a12;
  *&v23[OBJC_IVAR____TtC8ShelfKit5Shelf_items] = a13;
  sub_FBD0(a14, &v23[OBJC_IVAR____TtC8ShelfKit5Shelf_url], &unk_4E9EE0, &unk_3F5BC0);
  v31 = &v23[OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor];
  *v31 = a15;
  v31[8] = a16;
  *&v23[OBJC_IVAR____TtC8ShelfKit5Shelf_rowsPerColumn] = a17;
  v23[OBJC_IVAR____TtC8ShelfKit5Shelf_mergeWhenFetched] = a18;
  v23[OBJC_IVAR____TtC8ShelfKit5Shelf_hideFromCarPlay] = a19;
  sub_FBD0(a20, &v23[OBJC_IVAR____TtC8ShelfKit5Shelf_headerArtwork], &qword_4F1D50, &unk_3F7520);
  v32 = &v23[OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent];
  if (*(a21 + 24))
  {
    sub_1F958(a21, v32);
  }

  else
  {
    v33 = *(a21 + 16);
    *v32 = *a21;
    *(v32 + 16) = v33;
    *(v32 + 32) = *(a21 + 32);
  }

  sub_FBD0(a22, &v23[OBJC_IVAR____TtC8ShelfKit5Shelf_impressionMetrics], &unk_4E9170, &unk_3F4890);
  v41.receiver = v23;
  v41.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v41, "init");
  sub_FCF8(a22, &unk_4E9170, &unk_3F4890);
  if (*(a21 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a21);
  }

  sub_FCF8(a20, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(a14, &unk_4E9EE0, &unk_3F5BC0);
  sub_FCF8(a9, &qword_4F1AB8, &unk_3FF1D0);
  return v34;
}

char *sub_3B80A8(uint64_t a1, char *a2, char *a3)
{
  v41 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB0D0, &qword_3F7428);
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v34 = &v34 - v5;
  v6 = sub_3ECEE4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98, &qword_41CF30);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = sub_3ECED4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3EBD54();
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    v19 = (*(v14 + 32))(v16, v12, v13);
    __chkstk_darwin(v19);
    v20 = v41;
    *(&v34 - 2) = a2;
    *(&v34 - 1) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9B70, &qword_40A380);
    v12 = sub_3ECE94();
    (*(v14 + 8))(v16, v13);
    return v12;
  }

  sub_FCF8(v12, &qword_4EDC98, &qword_41CF30);
  v17 = sub_3EBDC4();
  if (!v18)
  {
    goto LABEL_15;
  }

  if (v17 != 0xD000000000000010 || v18 != 0x8000000000427530)
  {
    v21 = sub_3EE804();

    if (v21)
    {
      goto LABEL_8;
    }

LABEL_15:
    sub_3BC234(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    v25 = v24;
    v26 = type metadata accessor for Shelf(0);
    *v25 = 0x736D657469;
    v25[1] = 0xE500000000000000;
    v25[2] = v26;
    (*(v7 + 104))(v25, enum case for JSONError.missingProperty(_:), v6);
    swift_willThrow();
    return v12;
  }

LABEL_8:
  if (qword_4E8978 != -1)
  {
    swift_once();
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1528, &qword_3FDBD0);
  __swift_project_value_buffer(v22, qword_539638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1530, &qword_4200A0);
  sub_3EBFA4();
  v12 = v39;
  if (v39)
  {
    if (qword_4E8970 != -1)
    {
      swift_once();
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1538, &unk_420090);
    __swift_project_value_buffer(v23, qword_539620);
    sub_3EBFB4();
    if ((v40 & 1) == 0)
    {
      v27 = v39;
      v28 = sub_34ABC(&off_4AFCC8);
      if (a2 <= 0x27 && ((1 << a2) & 0xC000003C00) != 0)
      {
        v29 = sub_33C67C(v27, v28);

        if (v29)
        {
          return v12;
        }
      }

      else
      {

        if (v27 == a2)
        {
          return v12;
        }
      }
    }
  }

  v30 = type metadata accessor for Shelf(0);
  *v9 = 0xD000000000000010;
  v9[1] = 0x8000000000427530;
  v9[2] = v30;
  v9[3] = _swiftEmptyArrayStorage;
  (*(v7 + 104))(v9, enum case for JSONError.malformedProperty(_:), v6);
  v31 = v34;
  sub_3EBF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB0D8, &qword_3FDAB0);
  sub_3EBFB4();
  (*(v35 + 8))(v31, v36);
  sub_FBD0(&v39, v37, qword_4EB0E0, &unk_3FDAA0);
  if (v38)
  {
    __swift_project_boxed_opaque_existential_1(v37, v38);
    sub_3BC234(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    (*(v7 + 16))(v32, v9, v6);
    sub_3EC854();
    sub_FCF8(&v39, qword_4EB0E0, &unk_3FDAA0);
    (*(v7 + 8))(v9, v6);

    __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  else
  {
    sub_FCF8(&v39, qword_4EB0E0, &unk_3FDAA0);
    (*(v7 + 8))(v9, v6);
    sub_FCF8(v37, qword_4EB0E0, &unk_3FDAA0);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_3B8818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_3EBF94();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3EBDF4();
  v12 = __chkstk_darwin(v11);
  v14 = (&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, a1, v12);
  (*(v8 + 16))(v10, a2, v7);
  HeaderButtonItem.init(deserializing:using:)(v14, v10, a3);
  if (v3)
  {

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = type metadata accessor for HeaderButtonItem(0);
  return (*(*(v17 - 8) + 56))(a3, v16, 1, v17);
}

_BYTE *Shelf.init(merging:with:)(_BYTE *a1, _BYTE *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_contentType];
  if (v7 == *&a2[OBJC_IVAR____TtC8ShelfKit5Shelf_contentType])
  {
    v31 = ObjectType;
    v8 = *&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_id + 8];
    v9 = &v3[OBJC_IVAR____TtC8ShelfKit5Shelf_id];
    *v9 = *&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_id];
    v9[1] = v8;
    *&v3[OBJC_IVAR____TtC8ShelfKit5Shelf_contentType] = v7;
    v10 = OBJC_IVAR____TtC8ShelfKit5Shelf_items;
    swift_beginAccess();
    v11 = *&a1[v10];
    swift_beginAccess();
    v33 = v11;

    sub_418E8(v12);
    *&v3[OBJC_IVAR____TtC8ShelfKit5Shelf_items] = v11;
    v13 = *&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_title + 8];
    v14 = &v3[OBJC_IVAR____TtC8ShelfKit5Shelf_title];
    *v14 = *&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_title];
    v14[1] = v13;
    sub_FBD0(&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_titleContextMenu], &v3[OBJC_IVAR____TtC8ShelfKit5Shelf_titleContextMenu], &qword_4F1AB8, &unk_3FF1D0);
    v15 = *&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_subtitle + 8];
    v16 = &v3[OBJC_IVAR____TtC8ShelfKit5Shelf_subtitle];
    *v16 = *&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_subtitle];
    v16[1] = v15;
    v3[OBJC_IVAR____TtC8ShelfKit5Shelf_displaySubtitleAsEyebrow] = a1[OBJC_IVAR____TtC8ShelfKit5Shelf_displaySubtitleAsEyebrow];
    v17 = OBJC_IVAR____TtC8ShelfKit5Shelf_seeAllAction;
    v18 = *&a2[OBJC_IVAR____TtC8ShelfKit5Shelf_seeAllAction];
    if (!v18)
    {
    }

    *&v3[v17] = v18;
    v3[OBJC_IVAR____TtC8ShelfKit5Shelf_isHorizontal] = a1[OBJC_IVAR____TtC8ShelfKit5Shelf_isHorizontal];
    sub_FBD0(&a2[OBJC_IVAR____TtC8ShelfKit5Shelf_url], &v3[OBJC_IVAR____TtC8ShelfKit5Shelf_url], &unk_4E9EE0, &unk_3F5BC0);
    v3[OBJC_IVAR____TtC8ShelfKit5Shelf_mergeWhenFetched] = a2[OBJC_IVAR____TtC8ShelfKit5Shelf_mergeWhenFetched];
    v3[OBJC_IVAR____TtC8ShelfKit5Shelf_hideFromCarPlay] = a2[OBJC_IVAR____TtC8ShelfKit5Shelf_hideFromCarPlay];
    v19 = OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor;
    v20 = *&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor];
    v21 = a1[OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor + 8];
    v22 = v20;
    v23 = a1[OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor + 8];
    if (v21 == 255)
    {
      v22 = *&a2[OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor];
      v23 = a2[OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor + 8];
      sub_1F7418(v22, v23);
      v19 = OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor;
    }

    v24 = &v3[v19];
    *v24 = v22;
    v24[8] = v23;
    *&v3[OBJC_IVAR____TtC8ShelfKit5Shelf_rowsPerColumn] = *&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_rowsPerColumn];
    sub_FBD0(&a2[OBJC_IVAR____TtC8ShelfKit5Shelf_headerArtwork], &v3[OBJC_IVAR____TtC8ShelfKit5Shelf_headerArtwork], &qword_4F1D50, &unk_3F7520);
    sub_FBD0(&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_impressionMetrics], &v3[OBJC_IVAR____TtC8ShelfKit5Shelf_impressionMetrics], &unk_4E9170, &unk_3F4890);
    v25 = &a1[OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent];
    v26 = &v3[OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent];
    if (*&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent + 24])
    {
      sub_1F958(v25, v26);
    }

    else
    {
      v28 = *v25;
      v29 = *(v25 + 1);
      *(v26 + 32) = *(v25 + 4);
      *v26 = v28;
      *(v26 + 16) = v29;
    }

    sub_1F7418(v20, v21);
    v32.receiver = v3;
    v32.super_class = v31;
    v30 = objc_msgSendSuper2(&v32, "init");

    return v30;
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

void *sub_3B8F24@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  result = Shelf.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id Shelf.__allocating_init(contentType:seeAllContentType:title:allItems:maxItems:isHorizontal:preferredNumberOfRows:horizontalLayoutFollowsVerticalLayoutRules:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, int a8, unsigned __int8 a9, unint64_t a10, unsigned __int8 a11)
{
  v12 = v11;
  v149 = a8;
  v150 = a7;
  v160 = a4;
  v161 = a5;
  LODWORD(v168) = a3;
  v147 = sub_3E5FC4();
  v145 = *(v147 - 8);
  __chkstk_darwin(v147);
  v143 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_3EC1F4();
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v144 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v142 = &v127 - v19;
  v136 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v136);
  v141 = (&v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v130 = sub_3E63E4();
  __chkstk_darwin(v130);
  v132 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_3EC164();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E0, &unk_403FF0);
  __chkstk_darwin(v23 - 8);
  v131 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v129 = &v127 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v27 - 8);
  v29 = &v127 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v30 - 8);
  v166 = &v127 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v127 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v35 - 8);
  v37 = &v127 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8, &unk_3FF1D0);
  __chkstk_darwin(v38 - 8);
  v151 = &v127 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v127 - v41;
  v128 = a1;
  if ((v168 & 1) == 0)
  {
    a1 = a2;
  }

  v43 = type metadata accessor for ActionMenu(0);
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v140 = v43;
  v139 = v45;
  v138 = v44 + 56;
  (v45)(v42, 1, 1);
  v46 = sub_3E5DC4();
  v47 = *(v46 - 8);
  v163 = *(v47 + 56);
  v164 = v46;
  v162 = v47 + 56;
  v163(v37, 1, 1);
  v48 = sub_3E7784();
  v49 = *(v48 - 8);
  v158 = *(v49 + 56);
  v159 = v48;
  v157 = v49 + 56;
  v158(v34, 1, 1);
  v50 = sub_3EC634();
  v171 = 0u;
  v172 = 0u;
  v173 = 0;
  v51 = *(v50 - 8);
  v52 = *(v51 + 56);
  v156 = v50;
  v155 = v52;
  v154 = v51 + 56;
  (v52)(v29, 1, 1);
  v53 = v12;
  v54 = objc_allocWithZone(v12);
  v55 = &v54[OBJC_IVAR____TtC8ShelfKit5Shelf_id];
  *v55 = 0;
  v55[1] = 0;
  *&v54[OBJC_IVAR____TtC8ShelfKit5Shelf_contentType] = a1;
  v56 = &v54[OBJC_IVAR____TtC8ShelfKit5Shelf_title];
  *v56 = 0;
  v56[1] = 0;
  v57 = &v54[OBJC_IVAR____TtC8ShelfKit5Shelf_subtitle];
  *v57 = 0;
  v57[1] = 0;
  v54[OBJC_IVAR____TtC8ShelfKit5Shelf_displaySubtitleAsEyebrow] = 0;
  sub_FBD0(v42, &v54[OBJC_IVAR____TtC8ShelfKit5Shelf_titleContextMenu], &qword_4F1AB8, &unk_3FF1D0);
  *&v54[OBJC_IVAR____TtC8ShelfKit5Shelf_seeAllAction] = 0;
  v54[OBJC_IVAR____TtC8ShelfKit5Shelf_isHorizontal] = 0;
  v167 = a6;
  *&v54[OBJC_IVAR____TtC8ShelfKit5Shelf_items] = a6;
  v165 = v37;
  sub_FBD0(v37, &v54[OBJC_IVAR____TtC8ShelfKit5Shelf_url], &unk_4E9EE0, &unk_3F5BC0);
  v58 = &v54[OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor];
  *v58 = 3;
  v58[8] = 2;
  *&v54[OBJC_IVAR____TtC8ShelfKit5Shelf_rowsPerColumn] = 1;
  v54[OBJC_IVAR____TtC8ShelfKit5Shelf_mergeWhenFetched] = 0;
  v54[OBJC_IVAR____TtC8ShelfKit5Shelf_hideFromCarPlay] = 0;
  v168 = v34;
  sub_FBD0(v34, &v54[OBJC_IVAR____TtC8ShelfKit5Shelf_headerArtwork], &qword_4F1D50, &unk_3F7520);
  v59 = &v54[OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent];
  if (*(&v172 + 1))
  {
    sub_1F958(&v171, v59);
  }

  else
  {
    v60 = v171;
    v61 = v172;
    *(v59 + 32) = v173;
    *v59 = v60;
    *(v59 + 16) = v61;
  }

  sub_FBD0(v29, &v54[OBJC_IVAR____TtC8ShelfKit5Shelf_impressionMetrics], &unk_4E9170, &unk_3F4890);
  v170.receiver = v54;
  v170.super_class = v53;
  v153 = v53;

  v62 = objc_msgSendSuper2(&v170, "init");
  v152 = v29;
  sub_FCF8(v29, &unk_4E9170, &unk_3F4890);
  v63 = v132;
  if (*(&v172 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v171);
  }

  v137 = a9;
  sub_FCF8(v168, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v165, &unk_4E9EE0, &unk_3F5BC0);
  sub_FCF8(v42, &qword_4F1AB8, &unk_3FF1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80, &qword_3F7EA0);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_3F7950;
  *(v64 + 32) = v62;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E8, &qword_404000);
  v66 = *(v65 - 8);
  v67 = v129;
  (*(v66 + 56))(v129, 1, 1, v65);
  (v158)(v166, 1, 1, v159);
  v68 = v161;

  v127 = v62;
  v69 = v133;
  sub_3EC154();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Page(0);
  v70 = swift_allocObject();
  *(v70 + 16) = v64;
  v71 = v67;
  *(v70 + 24) = v160;
  *(v70 + 32) = v68;
  *(v70 + 40) = 0;
  *(v70 + 48) = 0;
  *(v70 + 56) = _swiftEmptyArrayStorage;
  *(v70 + 64) = 0;
  *(v70 + 68) = 1;
  *(v70 + 72) = _swiftEmptyArrayStorage;
  *(v70 + 80) = 0;
  sub_3BBAC0(v63, v70 + OBJC_IVAR____TtC8ShelfKit4Page_pageContext, &type metadata accessor for InteractionContext.Page);
  v72 = v67;
  v73 = v131;
  sub_FBD0(v72, v131, &qword_4F29E0, &unk_403FF0);
  if ((*(v66 + 48))(v73, 1, v65) == 1)
  {
    sub_3BBB28(v63, &type metadata accessor for InteractionContext.Page);
    sub_FCF8(v71, &qword_4F29E0, &unk_403FF0);
    sub_FCF8(v73, &qword_4F29E0, &unk_403FF0);
    v171 = 0u;
    v172 = 0u;
    v173 = 0;
  }

  else
  {
    *(&v172 + 1) = v65;
    v173 = sub_886BC(&unk_503DB0, &qword_4F29E8, &qword_404000, &protocol conformance descriptor for AnyJSIntentModel<A>);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v171);
    sub_FACC(v73, boxed_opaque_existential_0Tm, &qword_4F29E8, &qword_404000);
    sub_3BBB28(v63, &type metadata accessor for InteractionContext.Page);
    sub_FCF8(v71, &qword_4F29E0, &unk_403FF0);
  }

  v75 = v152;
  v76 = v70 + OBJC_IVAR____TtC8ShelfKit4Page_nextPageIntent;
  v77 = v171;
  v78 = v172;
  *(v76 + 32) = v173;
  *v76 = v77;
  *(v76 + 16) = v78;
  *(v70 + OBJC_IVAR____TtC8ShelfKit4Page_isIncomplete) = 0;
  *(v70 + OBJC_IVAR____TtC8ShelfKit4Page_isExplicit) = 0;
  sub_FACC(v166, v70 + OBJC_IVAR____TtC8ShelfKit4Page_uber, &qword_4F1D50, &unk_3F7520);
  v79 = v70 + OBJC_IVAR____TtC8ShelfKit4Page_showAdamId;
  *v79 = 0;
  *(v79 + 8) = 1;
  v80 = v70 + OBJC_IVAR____TtC8ShelfKit4Page_channelAdamId;
  *v80 = 0;
  *(v80 + 8) = 1;
  *(v70 + OBJC_IVAR____TtC8ShelfKit4Page_mapiInLibrary) = 2;
  (*(v134 + 32))(v70 + OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics, v69, v135);
  v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9860, qword_3F60B0) + 48);
  v82 = v141;
  *v141 = v70;
  (v163)(v82 + v81, 1, 1, v164);
  swift_storeEnumTagMultiPayload();
  v83 = objc_opt_self();
  v135 = v70;

  v84 = [v83 mainBundle];
  v126._countAndFlagsBits = 0xE000000000000000;
  v174._countAndFlagsBits = 0x535F4E4F49544341;
  v174._object = 0xEE004C4C415F4545;
  v175.value._countAndFlagsBits = 0;
  v175.value._object = 0;
  v85.super.isa = v84;
  v176._countAndFlagsBits = 0;
  v176._object = 0xE000000000000000;
  v166 = sub_3E5A74(v174, v175, v85, v176, 0, v126);
  v152 = v86;

  v87 = v142;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  type metadata accessor for FlowAction(0);
  v88 = swift_allocObject();
  v136 = type metadata accessor for FlowDestination;
  sub_3BBAC0(v82, v88 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v89 = (v88 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v89 = 0;
  v89[1] = 0;
  *(v88 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
  *(v88 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v88 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v90 = v146;
  v91 = v144;
  v92 = v148;
  (*(v146 + 16))(v144, v87, v148);
  v155(v75, 1, 1, v156);
  v93 = v143;
  sub_3E5FB4();
  v94 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v96 = v95;
  (*(v145 + 8))(v93, v147);
  (*(v90 + 8))(v87, v92);
  sub_3BBB28(v82, v136);
  *(v88 + 16) = v94;
  *(v88 + 24) = v96;
  v97 = v152;
  *(v88 + 32) = v166;
  *(v88 + 40) = v97;
  *(v88 + 48) = 48;
  (*(v90 + 32))(v88 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v91, v92);
  sub_FACC(v75, v88 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170, &unk_3F4890);
  v98 = v150;
  v99 = v167;
  if (v149)
  {
    v98 = *(v167 + 16);
  }

  v100 = a10;
  v101 = *(v167 + 16);
  v102 = v151;
  v103 = v137;
  if (v137)
  {
    v104 = v101 >> 3;
    if (v101 >> 3 >= a10)
    {
      v104 = a10;
    }

    if (v104 <= 1)
    {
      v100 = 1;
    }

    else
    {
      v100 = v104;
    }

    if (12 * v100 >= v101)
    {
      v93 = *(v167 + 16);
    }

    else
    {
      v93 = 12 * v100;
    }

    if (v101 <= 8 * v100 || (a11 & (v98 == v101)) != 0)
    {

      v88 = 0;
      if ((a11 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if ((a11 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v98 == v101)
  {

    v88 = 0;
    v93 = v98;
    goto LABEL_31;
  }

  v139(v102, 1, 1, v140);
  if ((v98 & 0x8000000000000000) == 0)
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_31:
  v139(v102, 1, 1, v140);
  v98 = v93;
LABEL_32:
  v105 = *(v99 + 16);
  if (v105 >= v98)
  {
    v105 = v98;
  }

  v106 = 2 * v105;
  if (v98)
  {
    v107 = v106 + 1;
  }

  else
  {
    v107 = 1;
  }

  sub_3EE824();
  swift_unknownObjectRetain_n();

  v108 = swift_dynamicCastClass();
  if (!v108)
  {
    swift_unknownObjectRelease();
    v108 = _swiftEmptyArrayStorage;
  }

  v109 = v108[2];

  if (v109 == v107 >> 1)
  {
    v110 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v111 = v153;
    v112 = v165;
    if (v110)
    {
      goto LABEL_43;
    }

    v110 = _swiftEmptyArrayStorage;
  }

  else
  {
    swift_unknownObjectRelease();
    sub_269038(v99, v99 + 32, 0, v107);
    v110 = v125;
    v111 = v153;
    v112 = v165;
  }

  swift_unknownObjectRelease();
LABEL_43:
  result = (v163)(v112, 1, 1, v164);
  if (v100 < 0)
  {
    __break(1u);
  }

  else
  {
    v114 = v168;
    (v158)(v168, 1, 1, v159);
    v173 = 0;
    v171 = 0u;
    v172 = 0u;
    v155(v75, 1, 1, v156);
    v115 = objc_allocWithZone(v111);
    v116 = &v115[OBJC_IVAR____TtC8ShelfKit5Shelf_id];
    *v116 = 0;
    v116[1] = 0;
    *&v115[OBJC_IVAR____TtC8ShelfKit5Shelf_contentType] = v128;
    v117 = &v115[OBJC_IVAR____TtC8ShelfKit5Shelf_title];
    v118 = v161;
    *v117 = v160;
    v117[1] = v118;
    v119 = &v115[OBJC_IVAR____TtC8ShelfKit5Shelf_subtitle];
    *v119 = 0;
    v119[1] = 0;
    v115[OBJC_IVAR____TtC8ShelfKit5Shelf_displaySubtitleAsEyebrow] = 0;
    sub_FBD0(v102, &v115[OBJC_IVAR____TtC8ShelfKit5Shelf_titleContextMenu], &qword_4F1AB8, &unk_3FF1D0);
    *&v115[OBJC_IVAR____TtC8ShelfKit5Shelf_seeAllAction] = v88;
    v115[OBJC_IVAR____TtC8ShelfKit5Shelf_isHorizontal] = v103 & 1;
    *&v115[OBJC_IVAR____TtC8ShelfKit5Shelf_items] = v110;
    sub_FBD0(v112, &v115[OBJC_IVAR____TtC8ShelfKit5Shelf_url], &unk_4E9EE0, &unk_3F5BC0);
    v120 = &v115[OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor];
    *v120 = 3;
    v120[8] = 2;
    *&v115[OBJC_IVAR____TtC8ShelfKit5Shelf_rowsPerColumn] = v100;
    v115[OBJC_IVAR____TtC8ShelfKit5Shelf_mergeWhenFetched] = 0;
    v115[OBJC_IVAR____TtC8ShelfKit5Shelf_hideFromCarPlay] = 0;
    sub_FBD0(v114, &v115[OBJC_IVAR____TtC8ShelfKit5Shelf_headerArtwork], &qword_4F1D50, &unk_3F7520);
    v121 = &v115[OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent];
    if (*(&v172 + 1))
    {
      sub_1F958(&v171, v121);
    }

    else
    {
      v122 = v171;
      v123 = v172;
      *(v121 + 32) = v173;
      *v121 = v122;
      *(v121 + 16) = v123;
    }

    sub_FBD0(v75, &v115[OBJC_IVAR____TtC8ShelfKit5Shelf_impressionMetrics], &unk_4E9170, &unk_3F4890);
    v169.receiver = v115;
    v169.super_class = v153;

    v124 = objc_msgSendSuper2(&v169, "init");

    sub_FCF8(v75, &unk_4E9170, &unk_3F4890);
    if (*(&v172 + 1))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v171);
    }

    sub_FCF8(v168, &qword_4F1D50, &unk_3F7520);
    sub_FCF8(v112, &unk_4E9EE0, &unk_3F5BC0);
    sub_FCF8(v102, &qword_4F1AB8, &unk_3FF1D0);
    return v124;
  }

  return result;
}

uint64_t sub_3BA340@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB0D0, &qword_3F7428);
  v9 = *(v23 - 8);
  __chkstk_darwin(v23);
  v11 = &v23 - v10;
  v24 = sub_3ECEE4();
  v12 = *(v24 - 8);
  __chkstk_darwin(v24);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = a4;
  result = sub_3B5950(a1, a3, a2, a4);
  if (v4)
  {
    v16 = type metadata accessor for Shelf(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628, &unk_4213E0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_3F5630;
    *(v17 + 32) = v4;
    *v14 = 0x736D657469;
    v14[1] = 0xE500000000000000;
    v14[2] = v16;
    v14[3] = v17;
    v18 = v12;
    v19 = *(v12 + 104);
    v20 = v24;
    v19(v14, enum case for JSONError.malformedProperty(_:), v24);
    swift_errorRetain();
    sub_3EBF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB0D8, &qword_3FDAB0);
    sub_3EBFB4();
    (*(v9 + 8))(v11, v23);
    sub_FBD0(v27, v25, qword_4EB0E0, &unk_3FDAA0);
    if (v26)
    {
      __swift_project_boxed_opaque_existential_1(v25, v26);
      sub_3BC234(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
      swift_allocError();
      (*(v18 + 16))(v21, v14, v20);
      sub_3EC854();

      sub_FCF8(v27, qword_4EB0E0, &unk_3FDAA0);
      (*(v18 + 8))(v14, v20);

      result = __swift_destroy_boxed_opaque_existential_1Tm(v25);
    }

    else
    {

      sub_FCF8(v27, qword_4EB0E0, &unk_3FDAA0);
      (*(v18 + 8))(v14, v20);
      result = sub_FCF8(v25, qword_4EB0E0, &unk_3FDAA0);
    }

    v22 = v28;
    v28[4] = 0;
    *v22 = 0u;
    *(v22 + 1) = 0u;
  }

  return result;
}

uint64_t sub_3BA6F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616D726F666E69 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_3EE804() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F73697065 && a2 == 0xE700000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000000004302A0 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5365646F73697065 && a2 == 0xED000068736F6F77 || (sub_3EE804() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5365646F73697065 && a2 == 0xED00006863726165 || (sub_3EE804() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000430280 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000430260 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6867696C68676968 && a2 == 0xED00006D65744974 || (sub_3EE804() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x636F4C6C6C616D73 && a2 == 0xEB0000000070756BLL || (sub_3EE804() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F4C6D756964656DLL && a2 == 0xEC00000070756B63 || (sub_3EE804() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x636F4C656772616CLL && a2 == 0xEB0000000070756BLL || (sub_3EE804() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000430200 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7374736163646F70 && a2 == 0xEE006E6F69746341 || (sub_3EE804() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x656C626174696465 && a2 == 0xEE006E6F69746341 || (sub_3EE804() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000013 && 0x80000000004301E0 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x7061726761726170 && a2 == 0xE900000000000068 || (sub_3EE804() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x6169726F74696465 && a2 == 0xED0000647261436CLL || (sub_3EE804() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x65736163776F6873 && a2 == 0xE800000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6B63697262 && a2 == 0xE500000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000423340 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x4865646F73697065 && a2 == 0xED00007265646165 || (sub_3EE804() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x73676E69746172 && a2 == 0xE700000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x7461526F54706174 && a2 == 0xE900000000000065 || (sub_3EE804() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x73776569766572 && a2 == 0xE700000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x6341776569766572 && a2 == 0xED0000736E6F6974 || (sub_3EE804() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0x657370696C6C65 && a2 == 0xE700000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x7473694C6B6E696CLL && a2 == 0xEE00656E696C6E49 || (sub_3EE804() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000016 && 0x80000000004231C0 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x614C686372616573 && a2 == 0xED0000676E69646ELL || (sub_3EE804() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0x6F77737265776F70 && a2 == 0xEB0000000068736FLL || (sub_3EE804() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000004232B0 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000423360 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0x4F6C656E6E616863 && a2 == 0xEE006C616E696472 || (sub_3EE804() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0x486C656E6E616863 && a2 == 0xED00007265646165 || (sub_3EE804() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0x61426C6C65737075 && a2 == 0xEC00000072656E6ELL || (sub_3EE804() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000423430 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000000423450 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0x4865646F73697065 && a2 == 0xEB000000006F7265 || (sub_3EE804() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0x6F726548776F6873 && a2 == 0xE800000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0x616553646578696DLL && a2 == 0xEB00000000686372 || (sub_3EE804() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0xD000000000000015 && 0x80000000004234A0 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 48;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000000423480 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 49;
  }

  else if (a1 == 0x7045686372616573 && a2 == 0xED000065646F7369 || (sub_3EE804() & 1) != 0)
  {

    return 50;
  }

  else if (a1 == 0x6853686372616573 && a2 == 0xEA0000000000776FLL || (sub_3EE804() & 1) != 0)
  {

    return 51;
  }

  else if (a1 == 0x6843686372616573 && a2 == 0xED00006C656E6E61 || (sub_3EE804() & 1) != 0)
  {

    return 52;
  }

  else if (a1 == 0x6143686372616573 && a2 == 0xEE0079726F676574 || (sub_3EE804() & 1) != 0)
  {

    return 53;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000004234F0 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 55;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000423530 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 56;
  }

  else if (a1 == 0x6948686372616573 && a2 == 0xEA0000000000746ELL || (sub_3EE804() & 1) != 0)
  {

    return 54;
  }

  else if (a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 57;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006B6E694C65 || (sub_3EE804() & 1) != 0)
  {

    return 58;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xEE00726564616548)
  {

    return 59;
  }

  else
  {
    v6 = sub_3EE804();

    if (v6)
    {
      return 59;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_3BB9B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyActionMenu(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3BBA14(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_3ED3C4();

    return sub_3ED494();
  }

  return result;
}

unint64_t sub_3BBAB0(unint64_t result)
{
  if (result > 0x3B)
  {
    return 0;
  }

  return result;
}

uint64_t sub_3BBAC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3BBB28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_3BBB8C()
{
  result = qword_505658;
  if (!qword_505658)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShelfContentType, &type metadata for ShelfContentType, v0, v1);
    atomic_store(result, &qword_505658);
  }

  return result;
}

void sub_3BBC00(uint64_t a1)
{
  sub_3BBCE0(319, &qword_5056E0, type metadata accessor for Shelf);
  if (v1 <= 0x3F)
  {
    sub_3BBCE0(319, &qword_5056E8, type metadata accessor for ModernShelf);
    if (v2 <= 0x3F)
    {
      sub_3BBD44();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_3BBCE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_3BBD44()
{
  if (!qword_5056F0)
  {
    v0 = type metadata accessor for Shelf(0);
    if (!v1)
    {
      atomic_store(v0, &qword_5056F0);
    }
  }
}

void sub_3BBDA4(uint64_t a1)
{
  sub_3BC084(319, &qword_4FC8B0, type metadata accessor for ActionMenu);
  if (v1 <= 0x3F)
  {
    sub_3BC084(319, &qword_4E9918, &type metadata accessor for URL);
    if (v2 <= 0x3F)
    {
      sub_3BC084(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
      if (v3 <= 0x3F)
      {
        sub_3BC084(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_3BC084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_3BC0F4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_3BC12C()
{
  result = qword_505770;
  if (!qword_505770)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_505768, &qword_4202B8);
    v4[0] = sub_3BC234(&qword_4F3FE0, type metadata accessor for SearchHint, protocol conformance descriptor for SearchHint);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_505770);
  }

  return result;
}

unint64_t sub_3BC1E0()
{
  result = qword_505778;
  if (!qword_505778)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Label, &type metadata for Label, v0, v1);
    atomic_store(result, &qword_505778);
  }

  return result;
}

uint64_t sub_3BC234(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_3BC27C()
{
  result = qword_5057D8;
  if (!qword_5057D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ComponentKinds, &type metadata for ComponentKinds, v0, v1);
    atomic_store(result, &qword_5057D8);
  }

  return result;
}

unint64_t sub_3BC2D0()
{
  result = qword_5057E0;
  if (!qword_5057E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ComponentKinds, &type metadata for ComponentKinds, v0, v1);
    atomic_store(result, &qword_5057E0);
  }

  return result;
}

unint64_t sub_3BC324()
{
  result = qword_5057F8;
  if (!qword_5057F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ComponentKinds, &type metadata for ComponentKinds, v0, v1);
    atomic_store(result, &qword_5057F8);
  }

  return result;
}

uint64_t Showcase.showName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit8Showcase_showName);

  return v1;
}

BOOL Showcase.hasThumbnailArtwork.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  sub_FBD0(v0 + OBJC_IVAR____TtC8ShelfKit8Showcase_thumbnailArtwork, &v7 - v2, &qword_4F1D50, &unk_3F7520);
  v4 = sub_3E7784();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_FCF8(v3, &qword_4F1D50, &unk_3F7520);
  return v5;
}

void *Showcase.__allocating_init(caption:title:subtitle:overlayingCaption:artwork:showArtwork:showAdamId:showName:showMetadata:thumbnailArtwork:clickAction:playAction:impressionMetrics:shelfUniqueId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v28 = swift_allocObject();
  v28[4] = a1;
  v28[5] = a2;
  v28[6] = a3;
  v28[7] = a4;
  v28[8] = a5;
  v28[9] = a6;
  v28[10] = a7;
  v28[11] = a8;
  sub_FACC(a9, v28 + OBJC_IVAR____TtC8ShelfKit8Showcase_artwork, &qword_4F1D50, &unk_3F7520);
  sub_FACC(a10, v28 + OBJC_IVAR____TtC8ShelfKit8Showcase_showArtwork, &qword_4F1D50, &unk_3F7520);
  v29 = v28 + OBJC_IVAR____TtC8ShelfKit8Showcase_showAdamId;
  *v29 = a11;
  v29[8] = a12 & 1;
  v30 = (v28 + OBJC_IVAR____TtC8ShelfKit8Showcase_showName);
  *v30 = a13;
  v30[1] = a14;
  *(v28 + OBJC_IVAR____TtC8ShelfKit8Showcase_showMetadata) = a15;
  sub_FACC(a16, v28 + OBJC_IVAR____TtC8ShelfKit8Showcase_thumbnailArtwork, &qword_4F1D50, &unk_3F7520);
  v31 = v28 + OBJC_IVAR____TtC8ShelfKit8Showcase_clickAction;
  v32 = *(a17 + 16);
  *v31 = *a17;
  *(v31 + 1) = v32;
  *(v31 + 4) = *(a17 + 32);
  *(v28 + OBJC_IVAR____TtC8ShelfKit8Showcase_playAction) = a18;
  sub_FACC(a19, v28 + OBJC_IVAR____TtC8ShelfKit8Showcase_impressionMetrics, &unk_4E9170, &unk_3F4890);
  v28[2] = a20;
  v28[3] = a21;
  return v28;
}

void *Showcase.init(caption:title:subtitle:overlayingCaption:artwork:showArtwork:showAdamId:showName:showMetadata:thumbnailArtwork:clickAction:playAction:impressionMetrics:shelfUniqueId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v21[4] = a1;
  v21[5] = a2;
  v21[6] = a3;
  v21[7] = a4;
  v21[8] = a5;
  v21[9] = a6;
  v21[10] = a7;
  v21[11] = a8;
  sub_FACC(a9, v21 + OBJC_IVAR____TtC8ShelfKit8Showcase_artwork, &qword_4F1D50, &unk_3F7520);
  sub_FACC(a10, v21 + OBJC_IVAR____TtC8ShelfKit8Showcase_showArtwork, &qword_4F1D50, &unk_3F7520);
  v22 = v21 + OBJC_IVAR____TtC8ShelfKit8Showcase_showAdamId;
  *v22 = a11;
  v22[8] = a12 & 1;
  v23 = (v21 + OBJC_IVAR____TtC8ShelfKit8Showcase_showName);
  *v23 = a13;
  v23[1] = a14;
  *(v21 + OBJC_IVAR____TtC8ShelfKit8Showcase_showMetadata) = a15;
  sub_FACC(a16, v21 + OBJC_IVAR____TtC8ShelfKit8Showcase_thumbnailArtwork, &qword_4F1D50, &unk_3F7520);
  v24 = v21 + OBJC_IVAR____TtC8ShelfKit8Showcase_clickAction;
  v25 = *(a17 + 16);
  *v24 = *a17;
  *(v24 + 1) = v25;
  *(v24 + 4) = *(a17 + 32);
  *(v21 + OBJC_IVAR____TtC8ShelfKit8Showcase_playAction) = a18;
  sub_FACC(a19, v21 + OBJC_IVAR____TtC8ShelfKit8Showcase_impressionMetrics, &unk_4E9170, &unk_3F4890);
  v21[2] = a20;
  v21[3] = a21;
  return v21;
}

void *Showcase.deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit8Showcase_artwork, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit8Showcase_showArtwork, &qword_4F1D50, &unk_3F7520);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit8Showcase_thumbnailArtwork, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit8Showcase_clickAction, &qword_4EDE00, &qword_3F9910);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit8Showcase_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v0;
}

uint64_t Showcase.__deallocating_deinit()
{
  Showcase.deinit();

  return swift_deallocClassInstance();
}

void *sub_3BCB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_3BD014(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t Showcase.displayCaption.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503088, &qword_41C528);
  __chkstk_darwin(v1 - 8);
  v3 = v8 - v2;
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  if (v4)
  {
    v8[0] = *(v0 + 32);
    v8[1] = v4;

    sub_3E6034();
    v6 = sub_3E6044();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    sub_68DC4();
    v5 = sub_3EE144();
    sub_FCF8(v3, &qword_503088, &qword_41C528);
  }

  return v5;
}

uint64_t Showcase.appEntityAnnotation()@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC8ShelfKit8Showcase_showAdamId + 8))
  {
    v3 = sub_3E5764();
    v4 = *(*(v3 - 8) + 56);

    return v4(a1, 1, 1, v3);
  }

  else
  {
    sub_3E6D44();
    sub_17A28();
    sub_3EE1F4();
    sub_3BE120(&qword_4E9B80, &type metadata accessor for ShowEntity, &protocol conformance descriptor for ShowEntity);
    sub_3E5754();
    v6 = sub_3E5764();
    return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }
}

uint64_t sub_3BCEB0@<X0>(uint64_t a1@<X8>)
{
  if (*(*v1 + OBJC_IVAR____TtC8ShelfKit8Showcase_showAdamId + 8))
  {
    v3 = sub_3E5764();
    v4 = *(*(v3 - 8) + 56);

    return v4(a1, 1, 1, v3);
  }

  else
  {
    sub_3E6D44();
    sub_17A28();
    sub_3EE1F4();
    sub_3BE120(&qword_4E9B80, &type metadata accessor for ShowEntity, &protocol conformance descriptor for ShowEntity);
    sub_3E5754();
    v6 = sub_3E5764();
    return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }
}

void *sub_3BD014(uint64_t a1, uint64_t a2)
{
  v132 = a2;
  v3 = sub_3E5FC4();
  v122 = *(v3 - 8);
  v123 = v3;
  __chkstk_darwin(v3);
  v121 = &v103[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v5 - 8);
  v129 = &v103[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v7 - 8);
  v128 = &v103[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v127 = &v103[-v10];
  __chkstk_darwin(v11);
  v126 = &v103[-v12];
  v137 = sub_3EBF94();
  v131 = *(v137 - 8);
  __chkstk_darwin(v137);
  v134 = &v103[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v116 = &v103[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98, &qword_41CF30);
  __chkstk_darwin(v16 - 8);
  v18 = &v103[-v17];
  v19 = sub_3EBDF4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v120 = &v103[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v119 = &v103[-v23];
  __chkstk_darwin(v24);
  v133 = &v103[-v25];
  __chkstk_darwin(v26);
  v125 = &v103[-v27];
  __chkstk_darwin(v28);
  v124 = &v103[-v29];
  __chkstk_darwin(v30);
  v118 = &v103[-v31];
  __chkstk_darwin(v32);
  v117 = &v103[-v33];
  __chkstk_darwin(v34);
  v36 = &v103[-v35];
  v37 = sub_3ECED4();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v103[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v41);
  v43 = &v103[-v42];
  v138 = a1;
  sub_3EBE04();
  sub_3EBD54();
  v44 = *(v20 + 8);
  v130 = v19;
  v136 = v44;
  v44(v36, v19);
  if ((*(v38 + 48))(v18, 1, v37) == 1)
  {
    v45 = v137;
    sub_FCF8(v18, &qword_4EDC98, &qword_41CF30);
    v116 = _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v38 + 32))(v43, v18, v37);
    (*(v38 + 16))(v40, v43, v37);
    v47 = v131;
    v46 = v132;
    v48 = v137;
    (*(v131 + 16))(v116, v132, v137);
    sub_3BE168();
    v49 = v135;
    v50 = sub_3ED634();
    if (v49)
    {
      (*(v47 + 8))(v46, v48);
      v136(v138, v130);
      return (*(v38 + 8))(v43, v37);
    }

    v116 = v50;
    v45 = v48;
    v135 = 0;
    (*(v38 + 8))(v43, v37);
  }

  v52 = v117;
  sub_3EBE04();
  v115 = sub_3EBDC4();
  v114 = v53;
  v54 = v130;
  v55 = v136;
  v136(v52, v130);
  v56 = v118;
  sub_3EBE04();
  v117 = sub_3EBDC4();
  v113 = v57;
  v55(v56, v54);
  v58 = v124;
  sub_3EBE04();
  v118 = sub_3EBDC4();
  v112 = v59;
  v55(v58, v54);
  v60 = v125;
  sub_3EBE04();
  v111 = sub_3EBDC4();
  v110 = v61;
  v55(v60, v54);
  v62 = sub_3E7784();
  sub_3EBE04();
  v63 = (v131 + 16);
  v64 = *(v131 + 16);
  v108 = v20 + 8;
  v65 = v134;
  v66 = v132;
  (v64)(v134, v132, v45);
  v67 = sub_3BE120(&qword_4EECC8, &type metadata accessor for ArtworkModel, &protocol conformance descriptor for ArtworkModel);
  v106 = v62;
  sub_3EC574();
  sub_3EBE04();
  v124 = v64;
  v125 = v63;
  (v64)(v65, v66, v45);
  v107 = v67;
  sub_3EC574();
  v68 = v119;
  sub_3EBE04();
  sub_3EBDC4();
  v70 = v69;
  if (v69)
  {
    v71 = v135;
    v72 = sub_3E9494();
    if (v71)
    {

      v109 = sub_3E9484();

      v73 = v68;
      v74 = v130;
      v75 = v136;
      v136(v73, v130);
      v135 = 0;
    }

    else
    {
      v109 = v72;
      v135 = 0;
      v77 = v68;
      v74 = v130;
      v75 = v136;
      v136(v77, v130);
    }
  }

  else
  {
    v76 = v68;
    v74 = v130;
    v75 = v136;
    v136(v76, v130);
    v109 = 0;
  }

  v78 = v120;
  sub_3EBE04();
  v119 = sub_3EBDC4();
  v108 = v79;
  v75(v78, v74);
  v80 = v133;
  sub_3EBE04();
  v81 = v132;
  (v124)(v134, v132, v137);
  sub_3EC574();
  sub_3EBE04();
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v75(v80, v74);
  v120 = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
  if (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0)
  {
    v107 = type metadata accessor for Action(0);
    v106 = sub_3BE120(&qword_4EDDF8, type metadata accessor for Action, "iJ\v");
  }

  else
  {
    v107 = 0;
    v106 = 0;
  }

  v104 = v70 == 0;
  v83 = v133;
  v84 = v138;
  sub_3EBE04();
  v105 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v85 = v136;
  v136(v83, v74);
  sub_3EC634();
  v86 = v81;
  sub_3EBE04();
  v87 = v74;
  v88 = v137;
  (v124)(v134, v81, v137);
  sub_3EC574();
  v89 = v121;
  sub_3E5FB4();
  v90 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v92 = v91;
  (*(v131 + 8))(v86, v88);
  v85(v84, v87);
  (*(v122 + 8))(v89, v123);
  type metadata accessor for Showcase(0);
  v93 = swift_allocObject();
  v94 = v114;
  v93[4] = v115;
  v93[5] = v94;
  v95 = v113;
  v93[6] = v117;
  v93[7] = v95;
  v96 = v112;
  v93[8] = v118;
  v93[9] = v96;
  v97 = v110;
  v93[10] = v111;
  v93[11] = v97;
  sub_FACC(v126, v93 + OBJC_IVAR____TtC8ShelfKit8Showcase_artwork, &qword_4F1D50, &unk_3F7520);
  sub_FACC(v127, v93 + OBJC_IVAR____TtC8ShelfKit8Showcase_showArtwork, &qword_4F1D50, &unk_3F7520);
  v98 = v93 + OBJC_IVAR____TtC8ShelfKit8Showcase_showAdamId;
  *v98 = v109;
  v98[8] = v104;
  v99 = (v93 + OBJC_IVAR____TtC8ShelfKit8Showcase_showName);
  v100 = v108;
  *v99 = v119;
  v99[1] = v100;
  *(v93 + OBJC_IVAR____TtC8ShelfKit8Showcase_showMetadata) = v116;
  sub_FACC(v128, v93 + OBJC_IVAR____TtC8ShelfKit8Showcase_thumbnailArtwork, &qword_4F1D50, &unk_3F7520);
  v101 = (v93 + OBJC_IVAR____TtC8ShelfKit8Showcase_clickAction);
  *v101 = v120;
  v101[1] = 0;
  v102 = v107;
  v101[2] = 0;
  v101[3] = v102;
  v101[4] = v106;
  *(v93 + OBJC_IVAR____TtC8ShelfKit8Showcase_playAction) = v105;
  sub_FACC(v129, v93 + OBJC_IVAR____TtC8ShelfKit8Showcase_impressionMetrics, &unk_4E9170, &unk_3F4890);
  result = v93;
  v93[2] = v90;
  v93[3] = v92;
  return result;
}

uint64_t sub_3BDE38(uint64_t a1)
{
  result = sub_3BE120(&qword_5057B8, type metadata accessor for Showcase, protocol conformance descriptor for Showcase);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for Showcase(uint64_t a1)
{
  result = qword_505830;
  if (!qword_505830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3BDEDC(uint64_t a1)
{
  result = sub_3BE120(&qword_505800, type metadata accessor for Showcase, protocol conformance descriptor for Showcase);
  *(a1 + 8) = result;
  return result;
}

void sub_3BDF3C(uint64_t a1)
{
  sub_95A68(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
  if (v1 <= 0x3F)
  {
    sub_95A68(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_3BE120(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_3BE168()
{
  result = qword_505928;
  if (!qword_505928)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HeaderModel.MetadataComponent, &type metadata for HeaderModel.MetadataComponent, v0, v1);
    atomic_store(result, &qword_505928);
  }

  return result;
}

void *ShowHeader.merging(with:preferredEpisodeToPlay:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v7 - 8);
  v9 = v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v197 = v155 - v11;
  __chkstk_darwin(v12);
  v14 = v155 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v15 - 8);
  v17 = v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v155 - v19;
  __chkstk_darwin(v21);
  v196 = v155 - v22;
  __chkstk_darwin(v23);
  v203 = v155 - v24;
  __chkstk_darwin(v25);
  v27 = v155 - v26;
  __chkstk_darwin(v28);
  v202 = v155 - v29;
  if (a1)
  {
    v193 = v14;
    v194 = v6;
    v30 = v3[3];
    v204 = v3[2];
    v205 = v30;

    v206._countAndFlagsBits = 45;
    v206._object = 0xE100000000000000;
    sub_3ED3D4(v206);
    v31 = *(a1 + 2);
    v32 = *(a1 + 3);

    v207._countAndFlagsBits = v31;
    v207._object = v32;
    sub_3ED3D4(v207);

    v33 = *&a1[OBJC_IVAR____TtC8ShelfKit10ShowHeader_metadata];
    v191 = v204;
    v190 = v205;
    v34 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_metadata);
    v35 = (v34 + 48);
    v36 = *(v34 + 16) + 1;
    v195 = a2;
    do
    {
      if (!--v36)
      {

        goto LABEL_13;
      }

      v37 = v35 + 24;
      v38 = *v35;
      v35 += 24;
    }

    while (v38 != 6);
    v39 = *(v37 - 5);
    v40 = *(v37 - 4);

    sub_3C1D48(v39, v40, 6u);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_E0458(0, *(v33 + 2) + 1, 1, v33);
    }

    v42 = *(v33 + 2);
    v41 = *(v33 + 3);
    if (v42 >= v41 >> 1)
    {
      v33 = sub_E0458((v41 > 1), v42 + 1, 1, v33);
    }

    *(v33 + 2) = v42 + 1;
    v43 = &v33[24 * v42];
    *(v43 + 4) = v39;
    *(v43 + 5) = v40;
    v43[48] = 6;
LABEL_13:
    v77 = v3[4];
    v78 = *(a1 + 4);
    if (*(v77 + 16))
    {
      v79 = 1869049708;
    }

    else
    {
      v79 = 0x7265766F63;
    }

    if (*(v77 + 16))
    {
      v80 = 0xE400000000000000;
    }

    else
    {
      v80 = 0xE500000000000000;
    }

    if (*(v78 + 16))
    {
      v81 = 1869049708;
    }

    else
    {
      v81 = 0x7265766F63;
    }

    if (*(v78 + 16))
    {
      v82 = 0xE400000000000000;
    }

    else
    {
      v82 = 0xE500000000000000;
    }

    v83 = v79 == v81 && v80 == v82;
    v192 = v33;
    v201 = a1;
    if (v83)
    {
      v200 = v77;
    }

    else
    {
      v84 = sub_3EE804();

      if ((v84 & 1) == 0)
      {
        v77 = v78;
      }

      v200 = v77;
    }

    v86 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID);
    v85 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID + 8);
    v87 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID + 16);
    sub_FBD0(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundArtwork, v27, &qword_4F1D50, &unk_3F7520);
    v88 = sub_3E7784();
    v89 = *(v88 - 8);
    v90 = *(v89 + 48);
    v91 = v90(v27, 1, v88);
    v189 = v86;
    v188 = v85;
    v187 = v87;
    if (v91 == 1)
    {
      sub_FBD0(&v201[OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundArtwork], v202, &qword_4F1D50, &unk_3F7520);
      v93 = v90(v27, 1, v88);

      sub_3DE90(v86, v85, v87);
      if (v93 != 1)
      {
        sub_FCF8(v27, &qword_4F1D50, &unk_3F7520);
      }
    }

    else
    {
      v94 = v27;
      v95 = v202;
      sub_83F9C(v94, v202, v92);
      (*(v89 + 56))(v95, 0, 1, v88);

      sub_3DE90(v86, v85, v87);
    }

    v199 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor);
    LODWORD(v198) = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor + 8);
    LODWORD(v186) = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_interfaceStyle);
    v96 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title + 8);
    if (v96)
    {
      v185 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title);
      v184 = v96;
      v97 = v201;
    }

    else
    {
      v97 = v201;
      v98 = *&v201[OBJC_IVAR____TtC8ShelfKit10ShowHeader_title + 8];
      v185 = *&v201[OBJC_IVAR____TtC8ShelfKit10ShowHeader_title];
      v184 = v98;
    }

    v99 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description + 8);
    if (v99)
    {
      v183 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description);
      v182 = v99;
    }

    else
    {
      v100 = *&v97[OBJC_IVAR____TtC8ShelfKit10ShowHeader_description + 8];
      v183 = *&v97[OBJC_IVAR____TtC8ShelfKit10ShowHeader_description];
      v182 = v100;
    }

    v101 = v196;
    sub_FBD0(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerIconArtwork, v196, &qword_4F1D50, &unk_3F7520);
    if (v90(v101, 1, v88) == 1)
    {
      sub_FBD0(&v97[OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerIconArtwork], v203, &qword_4F1D50, &unk_3F7520);
      v103 = v90(v101, 1, v88);
      sub_1F7418(v199, v198);

      if (v103 != 1)
      {
        sub_FCF8(v101, &qword_4F1D50, &unk_3F7520);
      }
    }

    else
    {
      v104 = v203;
      sub_83F9C(v101, v203, v102);
      (*(v89 + 56))(v104, 0, 1, v88);
      sub_1F7418(v199, v198);
    }

    v105 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerAction);
    v167 = v105;
    if (!v105)
    {
      v105 = *&v97[OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerAction];
    }

    v106 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle + 8);
    v165 = v106;
    if (v106)
    {
      v181 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle);
      v180 = v106;
    }

    else
    {
      v107 = *&v97[OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle + 8];
      v181 = *&v97[OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle];
      v180 = v107;
    }

    v108 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_primaryButtonAction);
    v109 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonAction);
    v161 = v109;
    if (!v109)
    {
      v109 = *&v97[OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonAction];
    }

    v110 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle + 8);
    v160 = v110;
    if (v110)
    {
      v178 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle);
      v177 = v110;
    }

    else
    {
      v111 = *&v97[OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle + 8];
      v178 = *&v97[OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle];
      v177 = v111;
    }

    v112 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_upsellBanner);
    v157 = v112;
    if (!v112)
    {
      v112 = *&v97[OBJC_IVAR____TtC8ShelfKit10ShowHeader_upsellBanner];
    }

    v113 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_entitlementBadge);
    if (v113 == 2)
    {
      v113 = v97[OBJC_IVAR____TtC8ShelfKit10ShowHeader_entitlementBadge];
    }

    LODWORD(v175) = v113;
    v114 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_contextAction);
    v155[3] = v114;
    if (!v114)
    {
    }

    v174 = v114;
    v196 = v105;
    v115 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_followAction);
    v155[2] = v115;
    if (!v115)
    {
    }

    v173 = v115;
    v116 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed;
    swift_beginAccess();
    v172 = *(v3 + v116);
    v117 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasAdamId;
    swift_beginAccess();
    LODWORD(v171) = *(v3 + v117);
    v118 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_subtitleAction);
    if (!v118)
    {
      v118 = *&v97[OBJC_IVAR____TtC8ShelfKit10ShowHeader_subtitleAction];
    }

    v119 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId + 8);
    v155[1] = v119;
    if (v119)
    {
      v169 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId);
      v168 = v119;
    }

    else
    {
      v120 = *&v97[OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId + 8];
      v169 = *&v97[OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId];
      v168 = v120;
    }

    v121 = v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID;
    v83 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID + 8) == 1;
    v176 = v112;
    if (v83)
    {
      v121 = &v97[OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID];
      v166 = v97[OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID + 8];
    }

    else
    {
      v166 = 0;
    }

    v164 = *v121;
    v122 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID + 8);
    v170 = v118;
    if (v122)
    {
      v163 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID);
      v162 = v122;
    }

    else
    {
      v123 = *&v97[OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID + 8];
      v163 = *&v97[OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID];
      v162 = v123;
    }

    v179 = v109;
    v124 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink + 8);
    v125 = v108;
    if (v124)
    {
      v159 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink);
      v158 = v124;
    }

    else
    {
      v126 = *&v97[OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink + 8];
      v159 = *&v97[OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink];
      v158 = v126;
    }

    v156 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_isForFirstPartyApp);
    v127 = v197;
    sub_FBD0(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_impressionMetrics, v197, &unk_4E9170, &unk_3F4890);
    v128 = sub_3EC634();
    v129 = *(v128 - 8);
    v130 = *(v129 + 48);
    if (v130(v127, 1, v128) == 1)
    {
      v131 = v193;
      sub_FBD0(&v201[OBJC_IVAR____TtC8ShelfKit10ShowHeader_impressionMetrics], v193, &unk_4E9170, &unk_3F4890);

      v132 = v131;

      v133 = v125;
      if (v130(v127, 1, v128) != 1)
      {
        sub_FCF8(v127, &unk_4E9170, &unk_3F4890);
      }
    }

    else
    {

      v133 = v125;

      v132 = v193;
      (*(v129 + 32))(v193, v127, v128);
      (*(v129 + 56))(v132, 0, 1, v128);
    }

    v3 = swift_allocObject();
    v134 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed) = 0;
    v135 = v190;
    v3[2] = v191;
    v3[3] = v135;
    v136 = v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID;
    v137 = v188;
    *v136 = v189;
    *(v136 + 1) = v137;
    v136[16] = v187;
    v3[4] = v200;
    sub_FACC(v202, v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundArtwork, &qword_4F1D50, &unk_3F7520);
    v138 = v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor;
    *v138 = v199;
    v138[8] = v198;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_interfaceStyle) = v186;
    v139 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title);
    v140 = v184;
    *v139 = v185;
    v139[1] = v140;
    v141 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description);
    v142 = v182;
    *v141 = v183;
    v141[1] = v142;
    sub_FACC(v203, v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerIconArtwork, &qword_4F1D50, &unk_3F7520);
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerAction) = v196;
    v143 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle);
    v144 = v180;
    *v143 = v181;
    v143[1] = v144;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_primaryButtonAction) = v133;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonAction) = v179;
    v145 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle);
    v146 = v177;
    *v145 = v178;
    v145[1] = v146;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_metadata) = v192;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_upsellBanner) = v176;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_entitlementBadge) = v175;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_contextAction) = v174;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_followAction) = v173;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_episodeToPlay) = v195;
    swift_beginAccess();
    *(v3 + v134) = v172;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasAdamId) = v171;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_subtitleAction) = v170;
    v147 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId);
    v148 = v168;
    *v147 = v169;
    v147[1] = v148;
    v149 = v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID;
    *v149 = v164;
    v149[8] = v166;
    v150 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID);
    v151 = v162;
    *v150 = v163;
    v150[1] = v151;
    v152 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink);
    v153 = v158;
    *v152 = v159;
    v152[1] = v153;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_isForFirstPartyApp) = v156;
    sub_FACC(v132, v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_impressionMetrics, &unk_4E9170, &unk_3F4890);
    goto LABEL_84;
  }

  if (!a2)
  {
LABEL_84:

    return v3;
  }

  v44 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID + 8);
  v201 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID);
  v202 = v44;
  v203 = v3[4];
  LODWORD(v197) = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID + 16);
  sub_FBD0(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundArtwork, v20, &qword_4F1D50, &unk_3F7520);
  v191 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor);
  v187 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_interfaceStyle);
  v45 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title + 8);
  v186 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title);
  v192 = v45;
  v46 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description + 8);
  v185 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description);
  v193 = v46;
  LODWORD(v194) = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor + 8);
  sub_FBD0(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerIconArtwork, v17, &qword_4F1D50, &unk_3F7520);
  v184 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerAction);
  v183 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_primaryButtonAction);
  v190 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonAction);
  v47 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle + 8);
  v181 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle);
  v179 = v47;
  v48 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle + 8);
  v182 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle);
  v189 = v48;
  v49 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_upsellBanner);
  v199 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_metadata);
  v200 = v49;
  LODWORD(v180) = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_entitlementBadge);
  v196 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_contextAction);
  v198 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_followAction);
  v51 = v3[2];
  v188 = v3[3];
  v50 = v188;
  v52 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed;
  swift_beginAccess();
  LODWORD(v178) = *(v3 + v52);
  v53 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasAdamId;
  swift_beginAccess();
  LODWORD(v177) = *(v3 + v53);
  v176 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_subtitleAction);
  v54 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId + 8);
  v175 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId);
  v174 = v54;
  v173 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID);
  v172 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID + 8);
  v55 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID + 8);
  v171 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID);
  v170 = v55;
  v56 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink + 8);
  v169 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink);
  v168 = v56;
  LODWORD(v167) = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_isForFirstPartyApp);
  sub_FBD0(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_impressionMetrics, v9, &unk_4E9170, &unk_3F4890);
  v3 = swift_allocObject();
  v57 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed) = 0;
  v3[2] = v51;
  v3[3] = v50;
  v58 = v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID;
  v59 = v202;
  *v58 = v201;
  *(v58 + 1) = v59;
  v58[16] = v197;
  v3[4] = v203;
  sub_FACC(v20, v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundArtwork, &qword_4F1D50, &unk_3F7520);
  v60 = v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor;
  *v60 = v191;
  v60[8] = v194;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_interfaceStyle) = v187;
  v61 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title);
  v62 = v192;
  *v61 = v186;
  v61[1] = v62;
  v63 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description);
  v64 = v193;
  *v63 = v185;
  v63[1] = v64;
  sub_FACC(v17, v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerIconArtwork, &qword_4F1D50, &unk_3F7520);
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerAction) = v184;
  v65 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle);
  v66 = v179;
  *v65 = v181;
  v65[1] = v66;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_primaryButtonAction) = v183;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonAction) = v190;
  v67 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle);
  v68 = v189;
  *v67 = v182;
  v67[1] = v68;
  v69 = v200;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_metadata) = v199;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_upsellBanner) = v69;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_entitlementBadge) = v180;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_contextAction) = v196;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_followAction) = v198;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_episodeToPlay) = a2;
  swift_beginAccess();
  *(v3 + v57) = v178;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasAdamId) = v177;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_subtitleAction) = v176;
  v70 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId);
  v71 = v174;
  *v70 = v175;
  v70[1] = v71;
  v72 = v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID;
  *v72 = v173;
  v72[8] = v172;
  v73 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID);
  v74 = v170;
  *v73 = v171;
  v73[1] = v74;
  v75 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink);
  v76 = v168;
  *v75 = v169;
  v75[1] = v76;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_isForFirstPartyApp) = v167;
  sub_FACC(v9, v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_impressionMetrics, &unk_4E9170, &unk_3F4890);

  sub_3DE90(v201, v202, v197);

  sub_1F7418(v191, v194);

  return v3;
}

uint64_t *ShowHeader.__allocating_init(deserializing:using:)(_BYTE *a1, uint64_t a2)
{
  v184 = sub_3E5FC4();
  v183 = *(v184 - 8);
  __chkstk_darwin(v184);
  v182 = &v150[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v5 - 8);
  v187 = &v150[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v7 - 8);
  v186 = &v150[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v185 = &v150[-v10];
  __chkstk_darwin(v11);
  v195 = &v150[-v12];
  __chkstk_darwin(v13);
  v194 = &v150[-v14];
  v208 = sub_3EBF94();
  v206 = *(v208 - 8);
  __chkstk_darwin(v208);
  v178 = &v150[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v191 = &v150[-v17];
  __chkstk_darwin(v18);
  v189 = &v150[-v19];
  __chkstk_darwin(v20);
  v199 = &v150[-v21];
  __chkstk_darwin(v22);
  v197 = &v150[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98, &qword_41CF30);
  __chkstk_darwin(v24 - 8);
  v26 = &v150[-v25];
  v27 = sub_3ECED4();
  v210 = *(v27 - 8);
  __chkstk_darwin(v27);
  v190 = &v150[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v205 = &v150[-v30];
  v31 = sub_3EBDF4();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v180 = &v150[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34);
  v179 = &v150[-v35];
  __chkstk_darwin(v36);
  v177 = &v150[-v37];
  __chkstk_darwin(v38);
  v176 = &v150[-v39];
  __chkstk_darwin(v40);
  v188 = &v150[-v41];
  __chkstk_darwin(v42);
  v196 = &v150[-v43];
  __chkstk_darwin(v44);
  v46 = &v150[-v45];
  __chkstk_darwin(v47);
  v49 = &v150[-v48];
  __chkstk_darwin(v50);
  v52 = &v150[-v51];
  sub_3EBE04();
  v207 = a2;
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v55 = *(v32 + 8);
  v53 = v32 + 8;
  v54 = v55;
  v193 = v52;
  v56 = v52;
  v57 = a1;
  v55(v56, v31);
  sub_3EBE04();
  sub_3EBD54();
  v58 = v210;
  v55(v49, v31);
  if ((*(v58 + 48))(v26, 1, v27) == 1)
  {
    sub_FCF8(v26, &qword_4EDC98, &qword_41CF30);
    v59 = sub_3ECEE4();
    sub_3C3958(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v60 = 0x617461646174656DLL;
    v61 = v200;
    v60[1] = 0xE800000000000000;
    v60[2] = v61;
    (*(*(v59 - 1) + 104))(v60, enum case for JSONError.missingProperty(_:), v59);
    swift_willThrow();

    (*(v206 + 8))(v207, v208);
    v54(v57, v31);
  }

  else
  {
    v201 = v54;
    v202 = v53;
    v62 = *(v58 + 32);
    v181 = v27;
    v62(v205, v26, v27);
    sub_3EBE04();
    sub_3EBDC4();
    v203 = v57;
    v192 = v31;
    if (v63)
    {
      v64 = v198;
      v65 = sub_3E9494();
      v66 = v64;
      v68 = v206;
      v67 = v207;
      if (v64)
      {

        v175 = sub_3E9484();

        v201(v46, v31);
        v173 = 0;
        v174 = 0;
        v66 = 0;
      }

      else
      {
        v175 = v65;
        v201(v46, v31);

        v173 = 0;
        v174 = 0;
      }
    }

    else
    {
      v201(v46, v31);
      v175 = 0;
      v174 = 2;
      v173 = 0xE000000000000000;
      v68 = v206;
      v67 = v207;
      v66 = v198;
    }

    v59 = type metadata accessor for HeaderModel.PrimaryArtwork(0);
    v69 = v196;
    sub_3EBE04();
    v71 = (v68 + 16);
    v70 = *(v68 + 16);
    v72 = v197;
    v73 = v68;
    v74 = v208;
    v198 = v70;
    v70(v197, v67, v208);
    v75 = HeaderModel.PrimaryArtwork.__allocating_init(deserializing:using:)(v69, v72);
    if (v66)
    {

      sub_3DEF8(v175, v173, v174);
      (*(v73 + 8))(v67, v74);
      v201(v203, v192);
      (*(v210 + 8))(v205, v181);
    }

    else
    {
      v196 = v75;
      v76 = sub_3E7784();
      v77 = v193;
      v165 = 0xD000000000000011;
      sub_3EBE04();
      v78 = v198;
      v198(v199, v67, v74);
      v169 = sub_3C3958(&qword_4EECC8, &type metadata accessor for ArtworkModel, &protocol conformance descriptor for ArtworkModel);
      v170 = v76;
      sub_3EC574();
      v79 = v188;
      sub_3EBE04();
      v80 = v189;
      v197 = v71;
      v78(v189, v67, v74);
      v81 = sub_3DC304(v79, v80);
      LODWORD(v188) = v82;
      v189 = v81;
      v166 = 0;
      sub_3EBE04();
      sub_35ACD0();
      sub_3EBCC4();
      v83 = v192;
      v84 = v201;
      v201(v77, v192);
      v164 = v209;
      sub_3EBE04();
      v163 = sub_3EBDC4();
      v172 = v85;
      v84(v77, v83);
      sub_3EBE04();
      v162 = sub_3EBDC4();
      v171 = v86;
      v84(v77, v83);
      sub_3EBE04();
      v87 = v207;
      v198(v199, v207, v208);
      sub_3EC574();
      sub_3EBE04();
      v169 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
      v84(v77, v83);
      sub_3EBE04();
      v161 = sub_3EBDC4();
      v170 = v88;
      v84(v77, v83);
      sub_3EBE04();
      v89 = v87;
      v168 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
      v84(v77, v83);
      sub_3EBE04();
      v90 = sub_3EBDC4();
      v167 = v91;
      v84(v77, v83);
      v92 = v210;
      v93 = v181;
      (*(v210 + 16))(v190, v205, v181);
      v94 = v208;
      v95 = v198;
      v198(v191, v89, v208);
      sub_3BE168();
      v96 = v166;
      v97 = sub_3ED634();
      v98 = v195;
      if (v96)
      {

        sub_3DEF8(v175, v173, v174);

        sub_234D4C(v189, v188);

        (*(v206 + 8))(v207, v94);
        v201(v203, v192);
        v59 = &qword_4F1D50;
        sub_FCF8(v98, &qword_4F1D50, &unk_3F7520);
        sub_FCF8(v194, &qword_4F1D50, &unk_3F7520);
        (*(v92 + 8))(v205, v93);
      }

      else
      {
        v166 = v97;
        v190 = v90;
        v99 = v176;
        v191 = 0;
        sub_3EBE04();
        v159 = sub_3EBD24();
        v100 = v192;
        v101 = v201;
        v201(v99, v192);
        type metadata accessor for UpsellBanner(0);
        sub_3EBE04();
        v102 = v94;
        v103 = v207;
        v95(v199, v207, v102);
        sub_3C3958(&qword_502F38, type metadata accessor for UpsellBanner, protocol conformance descriptor for UpsellBanner);
        sub_3EC574();
        v176 = v209;
        sub_3EBE04();
        v160 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
        v101(v77, v100);
        v104 = v177;
        sub_3EBE04();
        v105 = v178;
        v95(v178, v103, v208);
        type metadata accessor for PodcastOfferAction(0);
        swift_allocObject();
        v106 = v191;
        v107 = PodcastOfferAction.init(deserializing:using:)(v104, v105);
        v108 = v201;
        if (v106)
        {

          v178 = 0;
        }

        else
        {
          v178 = v107;
        }

        v191 = 0;
        v109 = v193;
        sub_3EBE04();
        v177 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
        v108(v109, v100);
        sub_3EBE04();
        v158 = sub_3EBDC4();
        v157 = v110;
        v108(v109, v100);
        v111 = v179;
        sub_3EBE04();
        sub_3EBDC4();
        v113 = v112;
        if (v112)
        {
          v114 = v191;
          v115 = sub_3E9494();
          if (v114)
          {

            v156 = sub_3E9484();

            v108(v111, v100);
            v191 = 0;
          }

          else
          {
            v191 = 0;
            v156 = v115;
            v108(v111, v100);
          }
        }

        else
        {
          v108(v111, v100);
          v156 = 0;
        }

        LODWORD(v179) = v113 == 0;
        v116 = v193;
        v117 = v203;
        sub_3EBE04();
        v155 = sub_3EBDC4();
        v154 = v118;
        v108(v116, v100);
        sub_3EBE04();
        v153 = sub_3EBDC4();
        v152 = v119;
        v108(v116, v100);
        v120 = v180;
        sub_3EBE04();
        v151 = sub_3EBD24();
        v108(v120, v100);
        sub_3EC634();
        sub_3EBE04();
        v122 = v207;
        v121 = v208;
        v198(v199, v207, v208);
        v123 = v121;
        sub_3EC574();
        v124 = v194;
        sub_FBD0(v194, v185, &qword_4F1D50, &unk_3F7520);
        v125 = v195;
        sub_FBD0(v195, v186, &qword_4F1D50, &unk_3F7520);
        LODWORD(v199) = v159 & 1;
        v126 = v182;
        sub_3E5FB4();
        v198 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
        v127 = v122;
        v129 = v128;
        (*(v206 + 8))(v127, v123);
        v108(v117, v192);
        (*(v183 + 8))(v126, v184);
        sub_FCF8(v125, &qword_4F1D50, &unk_3F7520);
        sub_FCF8(v124, &qword_4F1D50, &unk_3F7520);
        (*(v210 + 8))(v205, v181);
        v59 = swift_allocObject();
        v130 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed) = 0;
        v59[2] = v198;
        v59[3] = v129;
        v131 = v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID;
        v132 = v173;
        *v131 = v175;
        *(v131 + 1) = v132;
        v131[16] = v174;
        v59[4] = v196;
        sub_FACC(v185, v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundArtwork, &qword_4F1D50, &unk_3F7520);
        v133 = v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor;
        *v133 = v189;
        v133[8] = v188;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_interfaceStyle) = v164;
        v134 = (v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title);
        v135 = v172;
        *v134 = v163;
        v134[1] = v135;
        v136 = (v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description);
        v137 = v171;
        *v136 = v162;
        v136[1] = v137;
        sub_FACC(v186, v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerIconArtwork, &qword_4F1D50, &unk_3F7520);
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerAction) = v169;
        v138 = (v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle);
        v139 = v170;
        *v138 = v161;
        v138[1] = v139;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_primaryButtonAction) = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonAction) = v168;
        v140 = (v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle);
        v141 = v167;
        *v140 = v190;
        v140[1] = v141;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_metadata) = v166;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_upsellBanner) = v176;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_entitlementBadge) = v199;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_contextAction) = v160;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_followAction) = v178;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_episodeToPlay) = 0;
        swift_beginAccess();
        *(v59 + v130) = 0;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasAdamId) = 1;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_subtitleAction) = v177;
        v142 = (v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId);
        v143 = v157;
        *v142 = v158;
        v142[1] = v143;
        v144 = v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID;
        *v144 = v156;
        v144[8] = v179;
        v145 = (v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID);
        v146 = v154;
        *v145 = v155;
        v145[1] = v146;
        v147 = (v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink);
        v148 = v152;
        *v147 = v153;
        v147[1] = v148;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_isForFirstPartyApp) = v151 & 1;
        sub_FACC(v187, v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_impressionMetrics, &unk_4E9170, &unk_3F4890);
      }
    }
  }

  return v59;
}

void *ShowHeader.backgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor);
  sub_1F7418(v1, *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor + 8));
  return v1;
}

uint64_t ShowHeader.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title);

  return v1;
}

uint64_t ShowHeader.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description);

  return v1;
}

uint64_t ShowHeader.providerTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle);

  return v1;
}

uint64_t ShowHeader.secondaryButtonSubtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle);

  return v1;
}

uint64_t ShowHeader.hasEverPlayed.getter()
{
  v1 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed;
  swift_beginAccess();
  return *(v0 + v1);
}

void ShowHeader.hasEverPlayed.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ShowHeader.hasAdamId.getter()
{
  v1 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasAdamId;
  swift_beginAccess();
  return *(v0 + v1);
}

void ShowHeader.hasAdamId.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasAdamId;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ShowHeader.appBundleId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId);

  return v1;
}

uint64_t ShowHeader.customProductPageID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID);

  return v1;
}

uint64_t ShowHeader.externalAppOfferDeeplink.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink);

  return v1;
}

void *ShowHeader.showID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID);
  sub_3DE90(v1, *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID + 8), *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID + 16));
  return v1;
}

void *ShowHeader.__allocating_init(showID:primaryArtwork:backgroundArtwork:backgroundColor:interfaceStyle:title:description:providerIconArtwork:providerAction:providerTitle:primaryButtonAction:secondaryButtonAction:secondaryButtonSubtitle:metadata:upsellBanner:entitlementBadge:contextAction:followAction:shelfUniqueId:hasEverPlayed:episodeToPlay:hasAdamId:subtitleAction:appBundleId:appAdamID:customProductPageID:externalAppOfferDeeplink:isForFirstPartyApp:impressionMetrics:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, _BYTE *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41)
{
  v44 = swift_allocObject();
  v45 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed) = 0;
  LOBYTE(a8) = *a8;
  v44[2] = a26;
  v44[3] = a27;
  v46 = v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID;
  *v46 = a1;
  *(v46 + 1) = a2;
  v46[16] = a3;
  v44[4] = a4;
  sub_FACC(a5, v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundArtwork, &qword_4F1D50, &unk_3F7520);
  v47 = v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor;
  *v47 = a6;
  v47[8] = a7;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_interfaceStyle) = a8;
  v48 = (v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title);
  *v48 = a9;
  v48[1] = a10;
  v49 = (v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description);
  *v49 = a11;
  v49[1] = a12;
  sub_FACC(a13, v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerIconArtwork, &qword_4F1D50, &unk_3F7520);
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerAction) = a14;
  v50 = (v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle);
  *v50 = a15;
  v50[1] = a16;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_primaryButtonAction) = a17;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonAction) = a18;
  v51 = (v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle);
  *v51 = a19;
  v51[1] = a20;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_metadata) = a21;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_upsellBanner) = a22;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_entitlementBadge) = a23;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_contextAction) = a24;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_followAction) = a25;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_episodeToPlay) = a29;
  swift_beginAccess();
  *(v44 + v45) = a28;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasAdamId) = a30;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_subtitleAction) = a31;
  v52 = (v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId);
  *v52 = a32;
  v52[1] = a33;
  v53 = v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID;
  *v53 = a34;
  v53[8] = a35 & 1;
  v54 = (v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID);
  *v54 = a36;
  v54[1] = a37;
  v55 = (v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink);
  *v55 = a38;
  v55[1] = a39;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_isForFirstPartyApp) = a40;
  sub_FACC(a41, v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v44;
}

void *ShowHeader.init(showID:primaryArtwork:backgroundArtwork:backgroundColor:interfaceStyle:title:description:providerIconArtwork:providerAction:providerTitle:primaryButtonAction:secondaryButtonAction:secondaryButtonSubtitle:metadata:upsellBanner:entitlementBadge:contextAction:followAction:shelfUniqueId:hasEverPlayed:episodeToPlay:hasAdamId:subtitleAction:appBundleId:appAdamID:customProductPageID:externalAppOfferDeeplink:isForFirstPartyApp:impressionMetrics:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41)
{
  v42 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed) = 0;
  v41[2] = a26;
  v41[3] = a27;
  v43 = v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID;
  *v43 = a1;
  *(v43 + 1) = a2;
  v43[16] = a3;
  v44 = *a8;
  v41[4] = a4;
  sub_FACC(a5, v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundArtwork, &qword_4F1D50, &unk_3F7520);
  v45 = v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor;
  *v45 = a6;
  v45[8] = a7;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_interfaceStyle) = v44;
  v46 = (v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title);
  *v46 = a9;
  v46[1] = a10;
  v47 = (v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description);
  *v47 = a11;
  v47[1] = a12;
  sub_FACC(a13, v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerIconArtwork, &qword_4F1D50, &unk_3F7520);
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerAction) = a14;
  v48 = (v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle);
  *v48 = a15;
  v48[1] = a16;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_primaryButtonAction) = a17;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonAction) = a18;
  v49 = (v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle);
  *v49 = a19;
  v49[1] = a20;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_metadata) = a21;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_upsellBanner) = a22;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_entitlementBadge) = a23;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_contextAction) = a24;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_followAction) = a25;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_episodeToPlay) = a29;
  swift_beginAccess();
  *(v41 + v42) = a28;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasAdamId) = a30;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_subtitleAction) = a31;
  v50 = (v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId);
  *v50 = a32;
  v50[1] = a33;
  v51 = v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID;
  *v51 = a34;
  v51[8] = a35 & 1;
  v52 = (v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID);
  *v52 = a36;
  v52[1] = a37;
  v53 = (v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink);
  *v53 = a38;
  v53[1] = a39;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_isForFirstPartyApp) = a40;
  sub_FACC(a41, v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v41;
}

void sub_3C1D48(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (!a3)
    {
LABEL_5:

      return;
    }

    if (a3 == 1 || a3 == 2)
    {
    }
  }

  else if (a3 > 4u)
  {
    if (a3 == 5 || a3 == 6)
    {
      goto LABEL_5;
    }
  }

  else if (a3 == 3 || a3 == 4)
  {
    goto LABEL_5;
  }
}

uint64_t ShowHeader.preferredBackgroundColor.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  v7 = (v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor);
  v8 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor + 8);
  if (v8 == 255)
  {
    sub_FBD0(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundArtwork, &v17 - v5, &qword_4F1D50, &unk_3F7520);
    v11 = sub_3E7784();
    v12 = *(*(v11 - 8) + 48);
    if (v12(v6, 1, v11) == 1)
    {
      sub_FCF8(v6, &qword_4F1D50, &unk_3F7520);
      v13 = 0;
    }

    else
    {
      v13 = *(v6 + 7);
      v14 = v6[64];
      sub_1F7418(v13, v6[64]);
      sub_3C37FC(v6, &type metadata accessor for ArtworkModel);
      if (v14 != 255)
      {
        sub_1F742C(v13, v14);
        goto LABEL_11;
      }
    }

    sub_FBD0(*(v0 + 32) + OBJC_IVAR____TtCO8ShelfKit11HeaderModel14PrimaryArtwork_artwork, v3, &qword_4F1D50, &unk_3F7520);
    if (v12(v3, 1, v11) == 1)
    {
      sub_FCF8(v3, &qword_4F1D50, &unk_3F7520);
      sub_234D4C(v13, 255);
      return 0;
    }

    v15 = *(v3 + 7);
    v14 = v3[64];
    sub_1F7418(v15, v3[64]);
    sub_3C37FC(v3, &type metadata accessor for ArtworkModel);
    sub_234D4C(v13, 255);
    if (v14 == 255)
    {
      return 0;
    }

    sub_1F742C(v15, v14);
    v13 = v15;
LABEL_11:
    v10 = sub_3E9454();
    sub_234D4C(v13, v14);
    sub_F2260(v13, v14);
    return v10;
  }

  v9 = *v7;
  sub_1F742C(*v7, v8);
  v10 = sub_3E9454();
  sub_234D4C(v9, v8);
  return v10;
}

uint64_t ShowHeader.deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundArtwork, &qword_4F1D50, &unk_3F7520);
  sub_234D4C(*(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor), *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor + 8));

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerIconArtwork, &qword_4F1D50, &unk_3F7520);

  sub_3DEF8(*(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID), *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID + 8), *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID + 16));

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v0;
}

uint64_t ShowHeader.__deallocating_deinit()
{
  ShowHeader.deinit();

  return swift_deallocClassInstance();
}

uint64_t *sub_3C22A4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  result = ShowHeader.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t ShowHeader.fullDescriptionAction.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v2 - 8);
  v75 = &v68 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F74B0, &unk_40B5C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v68 - v5;
  v7 = sub_3E5FC4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v78 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EC1F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v77);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_episodeToPlay);
  if (v16 && (v17 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed, swift_beginAccess(), *(v1 + v17) == 1))
  {
    v18 = *(v16 + 64);
    v19 = *(v16 + 72);
    v80 = 1;
    v79 = 1;
    *v15 = v18;
    *(v15 + 1) = v19;
    *(v15 + 3) = 0;
    *(v15 + 4) = 0;
    *(v15 + 2) = 0;
    v15[40] = 1;
    *(v15 + 6) = 0;
    v15[56] = 1;
    swift_storeEnumTagMultiPayload();
    v20 = v11;
    v21 = objc_opt_self();
    v76 = v8;
    v22 = v10;
    v23 = v21;

    v24 = [v23 mainBundle];
    v67._countAndFlagsBits = 0xE000000000000000;
    v81._object = 0x800000000042E990;
    v81._countAndFlagsBits = 0xD00000000000001BLL;
    v82.value._countAndFlagsBits = 0;
    v82.value._object = 0;
    v25.super.isa = v24;
    v83._countAndFlagsBits = 0;
    v83._object = 0xE000000000000000;
    v77 = sub_3E5A74(v81, v82, v25, v83, 0, v67);
    v75 = v26;

    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    type metadata accessor for FlowAction(0);
    v27 = v13;
    v28 = swift_allocObject();
    sub_FC38(v15, v28 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
    type metadata accessor for FlowAction.DestinationType(0);
    swift_storeEnumTagMultiPayload();
    v29 = (v28 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
    *v29 = 0;
    v29[1] = 0;
    *(v28 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
    *(v28 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
    *(v28 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
    (*(v20 + 16))(v28 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v27, v22);
    v30 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
    v31 = sub_3EC634();
    (*(*(v31 - 8) + 56))(v28 + v30, 1, 1, v31);
    v32 = v78;
    sub_3E5FB4();
    v33 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v35 = v34;

    (*(v76 + 8))(v32, v7);
    (*(v20 + 8))(v27, v22);
    sub_3C37FC(v15, type metadata accessor for FlowDestination);
    result = v28;
    *(v28 + 16) = v33;
    *(v28 + 24) = v35;
    v37 = v75;
    *(v28 + 32) = v77;
    *(v28 + 40) = v37;
    *(v28 + 48) = 48;
  }

  else if (*(v1 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description + 8))
  {
    v71 = v13;
    v72 = v11;
    v73 = v10;
    v38 = sub_3E9A64();

    sub_3E9A34();
    v74 = v7;
    sub_3E9A24();
    v39 = objc_allocWithZone(v38);
    v40 = sub_3E9A84();
    v41 = type metadata accessor for ShareSheetContentSource(0);
    (*(*(v41 - 8) + 56))(v6, 1, 1, v41);
    v42 = sub_3EC634();
    v43 = *(v42 - 8);
    v44 = v75;
    v69 = *(v43 + 56);
    v70 = v42;
    v68 = v43 + 56;
    v69(v75, 1, 1);
    type metadata accessor for Paragraph(0);
    v45 = swift_allocObject();
    *(v45 + 32) = v40;
    *(v45 + 40) = 16777728;
    sub_FBD0(v6, v45 + OBJC_IVAR____TtC8ShelfKit9Paragraph_shareSheetContentSource, &qword_4F74B0, &unk_40B5C0);
    sub_FBD0(v44, v45 + OBJC_IVAR____TtC8ShelfKit9Paragraph_impressionMetrics, &unk_4E9170, &unk_3F4890);
    v46 = v40;
    v47 = v78;
    sub_3E5FB4();
    v48 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v50 = v49;

    v51 = *(v8 + 8);
    v76 = v8 + 8;
    v51(v47, v74);
    sub_FCF8(v44, &unk_4E9170, &unk_3F4890);
    sub_FCF8(v6, &qword_4F74B0, &unk_40B5C0);
    *(v45 + 16) = v48;
    *(v45 + 24) = v50;
    if (*(v1 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title + 8))
    {
      v52 = *(v1 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title);
      v53 = *(v1 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title + 8);
    }

    else
    {
      v52 = 0;
      v53 = 0xE000000000000000;
    }

    v54 = v1 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle;
    v56 = *(v1 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle);
    v55 = *(v54 + 8);
    type metadata accessor for LongDescription();
    v57 = swift_allocObject();
    v57[2] = v52;
    v57[3] = v53;
    v57[4] = v56;
    v57[5] = v55;
    v57[6] = v45;
    *v15 = v57;
    swift_storeEnumTagMultiPayload();

    v58 = v71;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    type metadata accessor for FlowAction(0);
    v59 = swift_allocObject();
    sub_FC38(v15, v59 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
    type metadata accessor for FlowAction.DestinationType(0);
    swift_storeEnumTagMultiPayload();
    v60 = (v59 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
    *v60 = 0;
    v60[1] = 0;
    *(v59 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 4;
    *(v59 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
    *(v59 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
    v62 = v72;
    v61 = v73;
    (*(v72 + 16))(v59 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v58, v73);
    (v69)(v59 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, 1, 1, v70);
    v63 = v78;
    sub_3E5FB4();
    v64 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v66 = v65;

    v51(v63, v74);
    (*(v62 + 8))(v58, v61);
    sub_3C37FC(v15, type metadata accessor for FlowDestination);
    result = v59;
    *(v59 + 16) = v64;
    *(v59 + 24) = v66;
    *(v59 + 32) = 0;
    *(v59 + 40) = 0;
    *(v59 + 48) = 48;
  }

  else
  {
    return 0;
  }

  return result;
}

NSAttributedString __swiftcall ShowHeader.richDescription(standardFont:emphasizedFont:)(UIFont standardFont, UIFont emphasizedFont)
{
  isa = emphasizedFont.super.isa;
  v4 = sub_3E5934();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_3E7D14();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v58 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_3E7CB4();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505930, &qword_420500);
  inited = swift_initStackObject();
  v52 = xmmword_3F5630;
  *(inited + 16) = xmmword_3F5630;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 40) = standardFont;
  v12 = NSFontAttributeName;
  v13 = standardFont.super.isa;
  v59 = sub_63264(inited);
  swift_setDeallocating();
  sub_FCF8(inited + 32, &qword_505938, &qword_420508);
  v14 = *(v2 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_episodeToPlay);
  if (v14)
  {
    v15 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed;
    swift_beginAccess();
    if (*(v2 + v15) == 1)
    {
      v16 = objc_allocWithZone(NSMutableAttributedString);

      v17 = [v16 init];
      v18 = swift_initStackObject();
      *(v18 + 16) = v52;
      *(v18 + 32) = v12;
      v19 = isa;
      *(v18 + 40) = isa;
      v20 = v12;
      v21 = v19;
      v22 = sub_63264(v18);
      swift_setDeallocating();
      sub_FCF8(v18 + 32, &qword_505938, &qword_420508);
      v63 = type metadata accessor for Episode(0);
      v64 = sub_3C3958(&qword_503428, type metadata accessor for Episode, protocol conformance descriptor for Episode);
      v61 = v14;
      (*(v53 + 104))(v10, enum case for EyebrowBuilder.ListContext.single(_:), v54);
      v56[13](v58, enum case for EyebrowBuilder.Style.short(_:), v57);
      sub_3E7D44();
      swift_allocObject();

      v58 = sub_3E7D34();
      v23 = sub_3E7D24();
      v25 = &swift_continuation_init_ptr;
      if (v24)
      {
        v61 = v23;
        v62 = v24;

        v65._countAndFlagsBits = 8250;
        v65._object = 0xE200000000000000;
        sub_3ED3D4(v65);

        sub_81FF4(v22);
        v26 = objc_allocWithZone(NSAttributedString);
        v27 = sub_3ED204();

        type metadata accessor for Key(0);
        sub_3C3958(&qword_4E9140, type metadata accessor for Key, byte_3F47B4);
        v28 = sub_3ED084().super.isa;

        v29 = [v26 initWithString:v27 attributes:v28];

        [v17 appendAttributedString:v29];
        v25 = &swift_continuation_init_ptr;
      }

      sub_81FF4(v22);

      v30 = objc_allocWithZone(v25[416]);
      v31 = sub_3ED204();
      type metadata accessor for Key(0);
      v33 = v32;
      sub_3C3958(&qword_4E9140, type metadata accessor for Key, byte_3F47B4);
      v57 = v33;
      v34 = sub_3ED084().super.isa;

      v35 = [v30 initWithString:v31 attributes:v34];

      [v17 appendAttributedString:v35];
      v36 = sub_3612F4();
      if (v36)
      {
        v37 = v36;
        if ((sub_3E9A54() & 1) == 0)
        {
          v44 = sub_3E9A14();
          [v44 mutableCopy];

          sub_3EE204();
          swift_unknownObjectRelease();
          sub_A1960();
          if (swift_dynamicCast())
          {
            v45 = v60;
            v46 = v59;
            sub_81FF4(v59);
            v56 = objc_allocWithZone(NSAttributedString);
            v47 = sub_3ED204();
            v48 = sub_3ED084().super.isa;

            v49 = [v56 initWithString:v47 attributes:v48];

            [v17 appendAttributedString:v49];
            v50 = [v45 length];
            sub_81FF4(v46);

            v51 = sub_3ED084().super.isa;

            [v45 setAttributes:v51 range:{0, v50}];

            [v17 appendAttributedString:v45];

            goto LABEL_10;
          }

LABEL_9:

LABEL_10:

          return v17;
        }
      }

      goto LABEL_9;
    }
  }

  v38 = *(v2 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description + 8);
  if (v38)
  {
    v61 = *(v2 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description);
    v62 = v38;

    sub_3E5924();
    sub_68DC4();
    v39 = sub_3EE124();
    (*(v5 + 8))(v7, v4);

    v61 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0, &unk_403600);
    sub_9809C();
    sub_3ED134();
  }

  sub_81FF4(v59);

  v40 = objc_allocWithZone(NSAttributedString);
  v41 = sub_3ED204();

  type metadata accessor for Key(0);
  sub_3C3958(&qword_4E9140, type metadata accessor for Key, byte_3F47B4);
  v42 = sub_3ED084().super.isa;

  v17 = [v40 initWithString:v41 attributes:v42];

  return v17;
}

void *ShowHeader.impressionableActions.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_upsellBanner);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_primaryButtonAction);
    v11 = *(v1 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_action);
    v12 = v2;
    v13 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonAction);
    v3 = *(v1 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_subtitleAction);
  }

  else
  {
    v3 = 0;
    v4 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_primaryButtonAction);
    v11 = 0;
    v12 = v4;
    v13 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonAction);
  }

  v5 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_subtitleAction);
  v14 = v3;
  v15 = v5;

  v7 = 0;
LABEL_5:
  if (v7 <= 5)
  {
    v8 = 5;
  }

  else
  {
    v8 = v7;
  }

  while (1)
  {
    if (v7 == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF4C8, &qword_3FAB18);
      swift_arrayDestroy();
      return _swiftEmptyArrayStorage;
    }

    if (v8 == v7)
    {
      break;
    }

    if (v10[v7++ + 4])
    {

      sub_3ED564();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_3ED5A4();
      }

      result = sub_3ED604();
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_3C37FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_3C385C(uint64_t a1)
{
  result = sub_3C3958(&qword_505940, type metadata accessor for ShowHeader, protocol conformance descriptor for ShowHeader);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ShowHeader(uint64_t a1)
{
  result = qword_505970;
  if (!qword_505970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3C3900(uint64_t a1)
{
  result = sub_3C3958(&qword_4F6868, type metadata accessor for ShowHeader, protocol conformance descriptor for ShowHeader);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_3C3958(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_3C39A8(uint64_t a1)
{
  sub_95A68(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
  if (v1 <= 0x3F)
  {
    sub_95A68(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of ShowHeader.__allocating_init(showID:primaryArtwork:backgroundArtwork:backgroundColor:interfaceStyle:title:description:providerIconArtwork:providerAction:providerTitle:primaryButtonAction:secondaryButtonAction:secondaryButtonSubtitle:metadata:upsellBanner:entitlementBadge:contextAction:followAction:shelfUniqueId:hasEverPlayed:episodeToPlay:hasAdamId:subtitleAction:appBundleId:appAdamID:customProductPageID:externalAppOfferDeeplink:isForFirstPartyApp:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v27 = *(v26 + 320);

  return v27(a1, a2, a3, a4, a5, a6);
}

void *sub_3C3CC8(uint64_t a1, uint64_t a2)
{
  v106 = a1;
  v107 = a2;
  v3 = sub_3E5FC4();
  v101 = *(v3 - 8);
  v102 = v3;
  __chkstk_darwin(v3);
  v96 = &v84[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_3EC1F4();
  v99 = *(v5 - 8);
  v100 = v5;
  __chkstk_darwin(v5);
  v94 = &v84[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v7 - 8);
  v109 = &v84[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v9 - 8);
  v108 = &v84[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v84[-v12];
  __chkstk_darwin(v14);
  v16 = &v84[-v15];
  __chkstk_darwin(v17);
  v19 = &v84[-v18];
  v91 = v2;
  v20 = *(v2 + 16);
  v21 = *(v20 + 40);
  v104 = *(v20 + 32);
  v22 = OBJC_IVAR____TtC8ShelfKit7Podcast_uberArtwork;
  sub_4E45C(v20 + OBJC_IVAR____TtC8ShelfKit7Podcast_uberArtwork, &v84[-v18]);
  v23 = sub_3E7784();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 48))(v19, 1, v23) != 1;
  v103 = v21;

  sub_FCF8(v19, &qword_4F1D50, &unk_3F7520);
  sub_4E45C(v20 + OBJC_IVAR____TtC8ShelfKit7Podcast_artwork, v16);
  type metadata accessor for HeaderModel.PrimaryArtwork(0);
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v95 = v26;
  sub_FACC(v16, v26 + OBJC_IVAR____TtCO8ShelfKit11HeaderModel14PrimaryArtwork_artwork, &qword_4F1D50, &unk_3F7520);
  v105 = v13;
  sub_4E45C(v20 + v22, v13);
  v27 = *(v20 + 56);
  v98 = *(v20 + 48);
  v28 = *(v20 + 80);
  v97 = v27;

  if (v28)
  {
    v29 = v28;
    v93 = sub_3E9A44();
    v92 = v30;
  }

  else
  {
    v93 = 0;
    v92 = 0;
  }

  v87 = type metadata accessor for PodcastDetail(0);
  v31 = swift_dynamicCastClass();
  if (!v31)
  {
    (*(v24 + 56))(v108, 1, 1, v23);
    v90 = sub_3C4758();
    goto LABEL_19;
  }

  v32 = v31;
  v33 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_channel;
  swift_beginAccess();
  v34 = *(v32 + v33);
  if (v34)
  {
    v35 = *(v34 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_availableShowCount);
    if (v35 < 1)
    {
      if (*(v34 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_showCount) > 1)
      {
        goto LABEL_8;
      }
    }

    else if (v35 > 1)
    {
LABEL_8:
      sub_4E45C(v34 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_iconArtwork, v108);
      goto LABEL_12;
    }
  }

  (*(v24 + 56))(v108, 1, 1, v23);
LABEL_12:
  v90 = sub_3C4758();
  v36 = *(v32 + v33);
  if (v36)
  {
    v37 = *(v36 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_availableShowCount);
    if (v37 < 1)
    {
      if (*(v36 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_showCount) <= 1)
      {
        goto LABEL_19;
      }
    }

    else if (v37 <= 1)
    {
      goto LABEL_19;
    }

    v38 = *(v36 + 32);
    if (v38)
    {
      v39 = *(v36 + 24);
      goto LABEL_20;
    }
  }

LABEL_19:
  v39 = *(v20 + 88);
  v38 = *(v20 + 96);
LABEL_20:
  v88 = v39;
  v89 = v38;

  v91 = sub_3C4B08();
  v40 = *(v20 + 128);
  if (v40)
  {
    v41 = *(v20 + 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14C8, &qword_4206F0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_3F5630;
    *(v42 + 32) = v41;
    *(v42 + 40) = v40;
    v86 = v42;
    *(v42 + 48) = 6;
  }

  else
  {
    v86 = _swiftEmptyArrayStorage;
  }

  v85 = *(v20 + OBJC_IVAR____TtC8ShelfKit7Podcast_paidSubscriptionActive);
  v43 = *(v20 + 32);
  v44 = *(v20 + 40);
  type metadata accessor for LibraryPodcastContextAction(0);
  v45 = swift_allocObject();
  v46 = (v45 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_podcastUuid);
  *v46 = v43;
  v46[1] = v44;
  v47 = v45 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType;
  *(v47 + 32) = 0u;
  *(v47 + 48) = 0u;
  *v47 = 0u;
  *(v47 + 16) = 0u;
  *(v47 + 64) = -1;
  v48 = sub_3EC634();
  v49 = *(*(v48 - 8) + 56);
  v50 = v109;
  v49(v109, 1, 1, v48);

  v51 = v94;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v52 = v96;
  sub_3E5FB4();
  v53 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v55 = v54;
  (*(v101 + 8))(v52, v102);
  *(v45 + 16) = v53;
  *(v45 + 24) = v55;
  *(v45 + 32) = 0;
  *(v45 + 40) = 0;
  *(v45 + 48) = 32;
  (*(v99 + 32))(v45 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v51, v100);
  sub_FACC(v50, v45 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170, &unk_3F4890);
  type metadata accessor for LibraryPodcastOfferAction(0);
  swift_allocObject();

  v57 = sub_6C3CC(v56, 1);

  v58 = swift_dynamicCastClass();
  if (v58)
  {
    v59 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_hasEverPlayed;
    v60 = v58;
    swift_beginAccess();
    LODWORD(v102) = *(v60 + v59);
    v61 = *(v60 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeToPlay);
  }

  else
  {
    v61 = 0;
    LODWORD(v102) = 0;
  }

  v62 = *(v20 + 16);
  v63 = *(v20 + 24);
  v64 = v63 | (v62 != sub_3E9484());
  v65 = v109;
  v49(v109, 1, 1, v48);
  type metadata accessor for ShowHeader(0);
  v66 = swift_allocObject();
  v67 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed) = 0;
  v68 = v107;
  v66[2] = v106;
  v66[3] = v68;
  v69 = v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID;
  v70 = v103;
  *v69 = v104;
  *(v69 + 1) = v70;
  v69[16] = 2;
  v66[4] = v95;
  sub_FACC(v105, v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundArtwork, &qword_4F1D50, &unk_3F7520);
  v71 = v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor;
  *v71 = 0;
  v71[8] = -1;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_interfaceStyle) = 0;
  v72 = (v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title);
  v73 = v97;
  *v72 = v98;
  v72[1] = v73;
  v74 = (v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description);
  v75 = v92;
  *v74 = v93;
  v74[1] = v75;
  sub_FACC(v108, v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerIconArtwork, &qword_4F1D50, &unk_3F7520);
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerAction) = v90;
  v76 = (v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle);
  v77 = v89;
  *v76 = v88;
  v76[1] = v77;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_primaryButtonAction) = v91;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonAction) = 0;
  v78 = (v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle);
  *v78 = 0;
  v78[1] = 0;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_metadata) = v86;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_upsellBanner) = 0;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_entitlementBadge) = v85;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_contextAction) = v45;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_followAction) = v57;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_episodeToPlay) = v61;
  swift_beginAccess();
  *(v66 + v67) = v102;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasAdamId) = v64 & 1;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_subtitleAction) = 0;
  v79 = (v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId);
  *v79 = 0;
  v79[1] = 0;
  v80 = v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID;
  *v80 = 0;
  v80[8] = 1;
  v81 = (v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID);
  *v81 = 0;
  v81[1] = 0;
  v82 = (v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink);
  *v82 = 0;
  v82[1] = 0;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_isForFirstPartyApp) = 0;
  sub_FACC(v65, v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_impressionMetrics, &unk_4E9170, &unk_3F4890);

  return v66;
}

uint64_t sub_3C4758()
{
  v0 = sub_3E5FC4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3EC1F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v8);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PodcastDetail(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v12 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_channel;
    v13 = result;
    swift_beginAccess();
    v14 = *(v13 + v12);
    if (v14)
    {
      v15 = *(v14 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_availableShowCount);
      if (v15 < 1)
      {
        if (*(v14 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_showCount) > 1)
        {
          goto LABEL_5;
        }
      }

      else if (v15 > 1)
      {
LABEL_5:
        *v10 = v14;
        swift_storeEnumTagMultiPayload();
        v16 = *(v14 + 24);
        v27 = *(v14 + 32);
        v28 = v16;

        swift_retain_n();
        _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
        type metadata accessor for FlowAction(0);
        v17 = swift_allocObject();
        v26 = v1;
        v18 = v17;
        sub_FC38(v10, v17 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
        type metadata accessor for FlowAction.DestinationType(0);
        swift_storeEnumTagMultiPayload();
        v19 = (v18 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
        *v19 = 0;
        v19[1] = 0;
        *(v18 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
        *(v18 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
        *(v18 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 1;
        (*(v5 + 16))(v18 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v7, v4);
        v20 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
        v21 = sub_3EC634();
        (*(*(v21 - 8) + 56))(v18 + v20, 1, 1, v21);
        sub_3E5FB4();
        v22 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
        v24 = v23;

        (*(v26 + 8))(v3, v0);
        (*(v5 + 8))(v7, v4);
        sub_FC9C(v10);
        result = v18;
        *(v18 + 16) = v22;
        *(v18 + 24) = v24;
        v25 = v27;
        *(v18 + 32) = v28;
        *(v18 + 40) = v25;
        *(v18 + 48) = 48;
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_3C4B08()
{
  v0 = sub_3E5FC4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - v5;
  v7 = sub_3EC1F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0, &unk_3F6570);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - v15;
  type metadata accessor for PodcastDetail(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v18 = v1;
    v55 = v3;
    v19 = *(result + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeToPlay);
    if (v19)
    {
      v53 = v0;
      v20 = *(v19 + 72);
      v47 = *(v19 + 64);
      v49 = *(v19 + 16);
      v48 = *(v19 + 24);
      v21 = *(v19 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeEntitlementState);

      v54 = v6;
      v51 = v7;
      v52 = v18;
      v50 = v8;
      if (v21 == 2)
      {
        v46 = *(v19 + 32);
        v22 = *(v19 + 40);
      }

      else
      {
        v46 = 0;
        v22 = 1;
      }

      v45 = v22;
      v23 = sub_3E8944();
      v24 = *(*(v23 - 8) + 56);
      v24(v16, 1, 1, v23);

      v25 = v13;
      v44 = v13;
      _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
      type metadata accessor for LibraryPlayPauseAction(0);
      v26 = swift_allocObject();
      v27 = OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_settings;
      v24((v26 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_settings), 1, 1, v23);
      v28 = (v26 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeUuid);
      *v28 = v47;
      v28[1] = v20;
      v29 = v26 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeAdamId;
      *v29 = v49;
      *(v29 + 8) = v48;
      v30 = v26 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_channelAdamId;
      *v30 = v46;
      *(v30 + 8) = v45;
      swift_beginAccess();
      sub_3B520(v16, v26 + v27);
      swift_endAccess();
      *(v26 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_showPlayerIfPlaying) = 0;
      v31 = sub_3E8474();
      v32 = (v26 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_playState);
      *v32 = v31;
      v32[1] = v33;
      *(v26 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isSmartPlayButton) = 1;
      *(v26 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isWidgetPlayButton) = 0;
      *(v26 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_waitForEngine) = 0;
      v34 = v26 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_timestamp;
      *v34 = 0;
      *(v34 + 8) = 1;
      *(v26 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_shouldPreventQueueing) = 0;
      v36 = v50;
      v35 = v51;
      (*(v50 + 16))(v10, v25, v51);
      v37 = sub_3EC634();
      v38 = v54;
      (*(*(v37 - 8) + 56))(v54, 1, 1, v37);
      v39 = v55;
      sub_3E5FB4();
      v40 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v42 = v41;

      (*(v52 + 8))(v39, v53);
      (*(v36 + 8))(v44, v35);
      sub_FCF8(v16, &qword_4E9FD0, &unk_3F6570);
      *(v26 + 16) = v40;
      *(v26 + 24) = v42;
      *(v26 + 32) = 0;
      *(v26 + 40) = 0;
      *(v26 + 48) = 32;
      (*(v36 + 32))(v26 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v10, v35);
      sub_FACC(v38, v26 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170, &unk_3F4890);
      return v26;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ShowInformation.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShowInformation(0) + 20);

  return sub_7EA24(v3, a1);
}

uint64_t type metadata accessor for ShowInformation(uint64_t a1)
{
  result = qword_505CA0;
  if (!qword_505CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShowInformation.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowInformation(0) + 24));

  return v1;
}

uint64_t ShowInformation.genreName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowInformation(0) + 36));

  return v1;
}

uint64_t ShowInformation.copyright.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowInformation(0) + 44));

  return v1;
}

uint64_t sub_3C52EC()
{
  v1 = *v0;
  v2 = 0x7470697263736564;
  v3 = 0x52746E65746E6F63;
  if (v1 != 6)
  {
    v3 = 0x6867697279706F63;
  }

  v4 = 0x6F43676E69746172;
  if (v1 != 4)
  {
    v4 = 0x6D614E65726E6567;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  if (v1 != 2)
  {
    v2 = 0x676E69746172;
  }

  v5 = 0xD000000000000010;
  if (*v0)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_3C5410@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_3C605C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_3C5444(uint64_t a1)
{
  v2 = sub_3C59D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_3C5480(uint64_t a1)
{
  v2 = sub_3C59D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void ShowInformation.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505C30, &qword_420738);
  v34 = *(v7 - 8);
  v35 = v7;
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for ShowInformation(0);
  __chkstk_darwin(v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_3C59D0();
  v36 = v9;
  sub_3EE9F4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v13 = v34;
    v14 = v12;
    v40 = 0;
    sub_BA90C();
    v15 = v35;
    sub_3EE6C4();
    v16 = v39;
    *v14 = v37[0];
    *(v14 + 8) = v38;
    *(v14 + 24) = v16;
    sub_3EC634();
    v37[0] = 1;
    sub_3C5BC4(&qword_4F0198, &type metadata accessor for ImpressionMetrics, &protocol conformance descriptor for ImpressionMetrics);
    sub_3EE684();
    sub_14A10(v6, v14 + v10[5]);
    v37[0] = 2;
    v17 = sub_3EE644();
    v18 = (v14 + v10[6]);
    *v18 = v17;
    v18[1] = v19;
    v37[0] = 3;
    v20 = sub_3EE664();
    v21 = v14 + v10[7];
    *v21 = v20;
    *(v21 + 8) = v22 & 1;
    v37[0] = 4;
    v23 = sub_3EE674();
    v24 = v14 + v10[8];
    *v24 = v23;
    *(v24 + 8) = v25 & 1;
    v37[0] = 5;
    v26 = sub_3EE644();
    v27 = (v14 + v10[9]);
    *v27 = v26;
    v27[1] = v28;
    v40 = 6;
    sub_BA960();
    sub_3EE684();
    *(v14 + v10[10]) = v37[0];
    v37[0] = 7;
    v29 = sub_3EE644();
    v31 = v30;
    (*(v13 + 8))(v36, v15);
    v32 = (v14 + v10[11]);
    *v32 = v29;
    v32[1] = v31;
    sub_3C5A24(v14, v33);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_3C5A88(v14);
  }
}

unint64_t sub_3C59D0()
{
  result = qword_505C38;
  if (!qword_505C38)
  {
    result = swift_getWitnessTable(byte_420960, &type metadata for ShowInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_505C38);
  }

  return result;
}

uint64_t sub_3C5A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowInformation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3C5A88(uint64_t a1)
{
  v2 = type metadata accessor for ShowInformation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3C5B6C(uint64_t a1)
{
  result = sub_3C5BC4(&qword_505C40, type metadata accessor for ShowInformation, protocol conformance descriptor for ShowInformation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_3C5BC4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3C5C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_3C5D58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_3C5E24(uint64_t a1)
{
  sub_4D334(319);
  if (v1 <= 0x3F)
  {
    sub_5FBE4(319, &qword_4E9978, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_5FBE4(319, &qword_4ED9F8, &type metadata for Double);
      if (v3 <= 0x3F)
      {
        sub_5FBE4(319, &qword_4F0DF0, &type metadata for UInt);
        if (v4 <= 0x3F)
        {
          sub_5FBE4(319, &qword_4F0350, &type metadata for ContentRating);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_3C5F58()
{
  result = qword_505CF0;
  if (!qword_505CF0)
  {
    result = swift_getWitnessTable(asc_420938, &type metadata for ShowInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_505CF0);
  }

  return result;
}

unint64_t sub_3C5FB0()
{
  result = qword_505CF8;
  if (!qword_505CF8)
  {
    result = swift_getWitnessTable(aI_2, &type metadata for ShowInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_505CF8);
  }

  return result;
}

unint64_t sub_3C6008()
{
  result = qword_505D00;
  if (!qword_505D00)
  {
    result = swift_getWitnessTable(byte_4208D0, &type metadata for ShowInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_505D00);
  }

  return result;
}

uint64_t sub_3C605C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000000004272B0 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000422950 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_3EE804() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69746172 && a2 == 0xE600000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F43676E69746172 && a2 == 0xEB00000000746E75 || (sub_3EE804() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D614E65726E6567 && a2 == 0xE900000000000065 || (sub_3EE804() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461 || (sub_3EE804() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6867697279706F63 && a2 == 0xE900000000000074)
  {

    return 7;
  }

  else
  {
    v5 = sub_3EE804();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t ShowListType.description.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0x6465776F6C6C6F66;
    v3 = 0x6B72616D6B6F6F62;
    if (a1 != 5)
    {
      v3 = 0xD000000000000011;
    }

    v4 = 0x64616F6C6E776F64;
    if (a1 != 3)
    {
      v4 = 0xD000000000000011;
    }

    if (a1 <= 4)
    {
      v3 = v4;
    }

    v5 = 0x776F6C6C6F666E75;
    if (a1 != 1)
    {
      v5 = 7105633;
    }

    if (a1)
    {
      v2 = v5;
    }

    if (a1 <= 2)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    sub_C2A70();
    v7._countAndFlagsBits = sub_3EE7A4();
    sub_3ED3D4(v7);

    v8._countAndFlagsBits = 41;
    v8._object = 0xE100000000000000;
    sub_3ED3D4(v8);
    return 0x286C656E6E616863;
  }
}

BOOL sub_3C64B0(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if ((a4 & 1) != 0 && a3 == 1)
        {
          return 1;
        }
      }

      else if ((a4 & 1) != 0 && a3 == 2)
      {
        return 1;
      }
    }

    else if ((a4 & 1) != 0 && !a3)
    {
      return 1;
    }

    return 0;
  }

  if (a1 <= 4)
  {
    if (a1 == 3)
    {
      return (a4 & 1) != 0 && a3 == 3;
    }

    return (a4 & 1) != 0 && a3 == 4;
  }

  if (a1 == 5)
  {
    return (a4 & 1) != 0 && a3 == 5;
  }

  return (a4 & 1) != 0 && a3 > 5;
}

uint64_t ShowOffer.init(adamId:title:showType:artwork:author:category:contentRating:displayType:dzcPageLocation:feedUrl:provider:providerId:providerUrl:storeUrl:subscribable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  v27 = type metadata accessor for ShowOffer(0);
  sub_FACC(a5, a9 + v27[7], &qword_4F1D50, &unk_3F7520);
  v28 = (a9 + v27[8]);
  *v28 = a6;
  v28[1] = a7;
  v29 = (a9 + v27[9]);
  *v29 = a8;
  v29[1] = a11;
  *(a9 + v27[10]) = a12;
  v30 = (a9 + v27[11]);
  *v30 = a13;
  v30[1] = a14;
  v31 = (a9 + v27[12]);
  *v31 = a15;
  v31[1] = a16;
  sub_FACC(a17, a9 + v27[13], &unk_4E9EE0, &unk_3F5BC0);
  v32 = (a9 + v27[14]);
  *v32 = a18;
  v32[1] = a19;
  v33 = (a9 + v27[15]);
  *v33 = a20;
  v33[1] = a21;
  sub_FACC(a22, a9 + v27[16], &unk_4E9EE0, &unk_3F5BC0);
  result = sub_FACC(a23, a9 + v27[17], &unk_4E9EE0, &unk_3F5BC0);
  *(a9 + v27[18]) = a24;
  return result;
}

uint64_t type metadata accessor for ShowOffer(uint64_t a1)
{
  result = qword_505D68;
  if (!qword_505D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShowOffer.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v144 = a3;
  v151 = a2;
  v4 = 0x64496D616461;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v143 = &v119 - v9;
  __chkstk_darwin(v10);
  v142 = &v119 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v12 - 8);
  v147 = &v119 - v13;
  v150 = sub_3EBF94();
  v148 = *(v150 - 8);
  __chkstk_darwin(v150);
  v146 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3EBDF4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v141 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v140 = &v119 - v19;
  __chkstk_darwin(v20);
  v139 = &v119 - v21;
  __chkstk_darwin(v22);
  v138 = &v119 - v23;
  __chkstk_darwin(v24);
  v137 = &v119 - v25;
  __chkstk_darwin(v26);
  v136 = &v119 - v27;
  __chkstk_darwin(v28);
  v135 = &v119 - v29;
  __chkstk_darwin(v30);
  v134 = &v119 - v31;
  __chkstk_darwin(v32);
  v34 = &v119 - v33;
  __chkstk_darwin(v35);
  v133 = &v119 - v36;
  __chkstk_darwin(v37);
  v132 = &v119 - v38;
  __chkstk_darwin(v39);
  v41 = &v119 - v40;
  __chkstk_darwin(v42);
  v44 = &v119 - v43;
  __chkstk_darwin(v45);
  v47 = &v119 - v46;
  v149 = a1;
  sub_3EBE04();
  sub_3EBDC4();
  if (!v48)
  {
    v53 = v15;
    v54 = *(v16 + 8);
    v54(v47, v15);
    v55 = 0xE600000000000000;
    v56 = v149;
LABEL_11:
    v71 = sub_3ECEE4();
    sub_3C74DC(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    v73 = v72;
    v74 = type metadata accessor for ShowOffer(0);
    *v73 = v4;
    v73[1] = v55;
    v73[2] = v74;
    (*(*(v71 - 8) + 104))(v73, enum case for JSONError.missingProperty(_:), v71);
    swift_willThrow();
    (*(v148 + 8))(v151, v150);
    return (v54)(v56, v53);
  }

  v127 = v41;
  v131 = v7;
  v49 = v145;
  v50 = sub_3E9494();
  v128 = v34;
  if (v49)
  {

    v130 = sub_3E9484();

    v51 = *(v16 + 8);
    v52 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v51(v47, v15);
    v145 = 0;
  }

  else
  {
    v130 = v50;
    v145 = 0;
    v51 = *(v16 + 8);
    v52 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v51(v47, v15);
  }

  v56 = v149;
  sub_3EBE04();
  v57 = sub_3EBDC4();
  v59 = v58;
  v60 = v44;
  v61 = v15;
  v62 = v15;
  v54 = v51;
  v63 = v52;
  v51(v60, v62);
  v129 = v59;
  if (!v59)
  {
    v4 = 0x656C746974;
    v53 = v61;
    v55 = 0xE500000000000000;
    goto LABEL_11;
  }

  v126 = v57;
  v64 = v127;
  sub_3EBE04();
  v65 = v56;
  v66 = *(v148 + 16);
  v125 = v148 + 16;
  v124 = v66;
  v66(v146, v151, v150);
  sub_CCCD8();
  sub_3EC574();
  v67 = v153;
  v68 = v61;
  if (v153 == 2)
  {
    v69 = v132;
    sub_3EBE04();
    v70 = sub_3EBD24();
    v54(v69, v61);
    if (v70 == 2)
    {
      v67 = 2;
    }

    else if (v70)
    {
      v67 = 1;
    }

    else
    {
      v67 = 2;
    }

    v65 = v149;
  }

  LODWORD(v132) = v67;
  sub_3EBE04();
  v76 = sub_3EBD24();
  v54(v64, v68);
  if (v76 == 2)
  {
    v77 = v133;
    sub_3EBE04();
    v78 = sub_3EBD24();
    v76 = v78;
    v54(v77, v68);
    if (v78 != 2)
    {
      v76 = (v78 & 1) == 0;
    }

    v65 = v149;
  }

  LODWORD(v149) = v76;
  sub_3EBE04();
  v79 = v146;
  v80 = v151;
  v121 = v63;
  v120 = v54;
  v119 = v68;
  v81 = v150;
  v82 = v124;
  v124(v146, v151, v150);
  sub_3C7488();
  sub_3EC574();
  LODWORD(v133) = v152;
  sub_3E7784();
  sub_3EBE04();
  v82(v79, v80, v81);
  sub_3C74DC(&qword_4EECC8, &type metadata accessor for ArtworkModel, &protocol conformance descriptor for ArtworkModel);
  sub_3EC574();
  v83 = v128;
  sub_3EBE04();
  v146 = sub_3EBDC4();
  v127 = v84;
  v85 = v119;
  v86 = v120;
  v120(v83, v119);
  v87 = v134;
  sub_3EBE04();
  v128 = sub_3EBDC4();
  v125 = v88;
  v86(v87, v85);
  v89 = v135;
  sub_3EBE04();
  v134 = sub_3EBDC4();
  v124 = v90;
  v86(v89, v85);
  v91 = v136;
  sub_3EBE04();
  v135 = sub_3EBDC4();
  v123 = v92;
  v86(v91, v85);
  v93 = v137;
  sub_3EBE04();
  v94 = v142;
  sub_3EBD14();
  v86(v93, v85);
  v95 = v138;
  sub_3EBE04();
  v96 = sub_3EBDC4();
  v136 = v97;
  v137 = v96;
  v86(v95, v85);
  v98 = v139;
  sub_3EBE04();
  v138 = sub_3EBDC4();
  v122 = v99;
  v86(v98, v85);
  v100 = v140;
  sub_3EBE04();
  v101 = v143;
  sub_3EBD14();
  v86(v100, v85);
  v102 = v141;
  sub_3EBE04();
  v103 = v131;
  sub_3EBD14();
  (*(v148 + 8))(v151, v150);
  v86(v65, v85);
  v86(v102, v85);
  v104 = v144;
  v105 = v126;
  *v144 = v130;
  v104[1] = v105;
  v104[2] = v129;
  *(v104 + 24) = v133 & 1;
  v106 = type metadata accessor for ShowOffer(0);
  sub_FACC(v147, v104 + v106[7], &qword_4F1D50, &unk_3F7520);
  v107 = (v104 + v106[8]);
  v108 = v127;
  *v107 = v146;
  v107[1] = v108;
  v109 = (v104 + v106[9]);
  v110 = v125;
  *v109 = v128;
  v109[1] = v110;
  *(v104 + v106[10]) = v132;
  v111 = (v104 + v106[11]);
  v112 = v124;
  *v111 = v134;
  v111[1] = v112;
  v113 = (v104 + v106[12]);
  v114 = v123;
  *v113 = v135;
  v113[1] = v114;
  sub_FACC(v94, v104 + v106[13], &unk_4E9EE0, &unk_3F5BC0);
  v115 = (v104 + v106[14]);
  v116 = v136;
  *v115 = v137;
  v115[1] = v116;
  v117 = (v104 + v106[15]);
  v118 = v122;
  *v117 = v138;
  v117[1] = v118;
  sub_FACC(v101, v104 + v106[16], &unk_4E9EE0, &unk_3F5BC0);
  result = sub_FACC(v103, v104 + v106[17], &unk_4E9EE0, &unk_3F5BC0);
  *(v104 + v106[18]) = v149;
  return result;
}

unint64_t sub_3C7488()
{
  result = qword_505D08;
  if (!qword_505D08)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ShowType, &type metadata for ShowType, v0, v1);
    atomic_store(result, &qword_505D08);
  }

  return result;
}

uint64_t sub_3C74DC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ShowOffer.isExplicit.getter()
{
  if (*(v0 + *(type metadata accessor for ShowOffer(0) + 40)) == 2)
  {
    v1 = 0;
  }

  else
  {
    v2 = sub_3E79D4();
    v4 = v3;
    v1 = 1;
    if (v2 != sub_3E79D4() || v4 != v5)
    {
      v1 = sub_3EE804();
    }
  }

  return v1 & 1;
}

uint64_t ShowOffer.author.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowOffer(0) + 32));

  return v1;
}

uint64_t ShowOffer.category.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowOffer(0) + 36));

  return v1;
}

uint64_t ShowOffer.displayType.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowOffer(0) + 44));

  return v1;
}

uint64_t ShowOffer.dzcPageLocation.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowOffer(0) + 48));

  return v1;
}

uint64_t ShowOffer.provider.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowOffer(0) + 56));

  return v1;
}

uint64_t ShowOffer.providerId.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowOffer(0) + 60));

  return v1;
}

uint64_t ShowOffer.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v13 - 8);
  v15 = &v46 - v14;
  v16 = sub_3E7674();
  v18 = v17;
  if (v16 == sub_3E7674() && v18 == v19)
  {
  }

  else
  {
    v20 = sub_3EE804();

    if ((v20 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if (!*(a1 + 40))
  {
    v51 = *(a1 + 24);
    v24 = type metadata accessor for PodcastsReferenceLink(0);
    v25 = v24[6];
    v26 = (a1 + v24[7]);
    v28 = *v26;
    v27 = v26[1];
    v48 = v28;
    v46 = v27;
    sub_A18FC(a1 + v25, v15, v29);
    v30 = sub_3E7784();
    (*(*(v30 - 8) + 56))(v15, 0, 1, v30);
    v49 = *(a1 + v24[11]);
    v31 = sub_3E5DC4();
    v32 = *(v31 - 8);
    v50 = v9;
    v33 = v12;
    v47 = v12;
    v34 = v6;
    v35 = *(v32 + 56);
    v35(v33, 1, 1, v31);
    v35(v9, 1, 1, v31);
    v36 = v34;
    (*(v32 + 16))(v34, a1 + v24[14], v31);
    v37 = v46;

    sub_3C7D44(a1);
    v35(v36, 0, 1, v31);
    v38 = v48;
    *a2 = v51;
    *(a2 + 8) = v38;
    *(a2 + 16) = v37;
    *(a2 + 24) = 0;
    v39 = type metadata accessor for ShowOffer(0);
    sub_FACC(v15, a2 + v39[7], &qword_4F1D50, &unk_3F7520);
    v40 = (a2 + v39[8]);
    *v40 = 0;
    v40[1] = 0;
    v41 = (a2 + v39[9]);
    *v41 = 0;
    v41[1] = 0;
    *(a2 + v39[10]) = v49;
    v42 = (a2 + v39[11]);
    *v42 = 0;
    v42[1] = 0;
    v43 = (a2 + v39[12]);
    *v43 = 0;
    v43[1] = 0;
    sub_FACC(v47, a2 + v39[13], &unk_4E9EE0, &unk_3F5BC0);
    v44 = (a2 + v39[14]);
    *v44 = 0;
    v44[1] = 0;
    v45 = (a2 + v39[15]);
    *v45 = 0;
    v45[1] = 0;
    sub_FACC(v50, a2 + v39[16], &unk_4E9EE0, &unk_3F5BC0);
    sub_FACC(v36, a2 + v39[17], &unk_4E9EE0, &unk_3F5BC0);
    *(a2 + v39[18]) = 2;
    return (*(*(v39 - 1) + 56))(a2, 0, 1, v39);
  }

LABEL_6:
  sub_3C7D44(a1);
  v21 = type metadata accessor for ShowOffer(0);
  v22 = *(*(v21 - 8) + 56);

  return v22(a2, 1, 1, v21);
}

uint64_t sub_3C7D44(uint64_t a1)
{
  v2 = type metadata accessor for PodcastsReferenceLink(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3C7DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_3C7F1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_3C8058(uint64_t a1)
{
  sub_3C81CC(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
  if (v1 <= 0x3F)
  {
    sub_5FBE4(319, &qword_4E9978, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_5FBE4(319, &qword_4F0350, &type metadata for ContentRating);
      if (v3 <= 0x3F)
      {
        sub_3C81CC(319, &qword_4E9918, &type metadata accessor for URL);
        if (v4 <= 0x3F)
        {
          sub_5FBE4(319, &unk_505D78, &type metadata for Bool);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_3C81CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Link.init(station:presentationContext:showChevron:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v79 = a4;
  v7 = sub_3E5DC4();
  v88 = *(v7 - 8);
  v89 = v7;
  __chkstk_darwin(v7);
  v87 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3E5FC4();
  v85 = *(v9 - 8);
  v86 = v9;
  __chkstk_darwin(v9);
  v84 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v11 - 8);
  v83 = &v66 - v12;
  v82 = sub_3EC1F4();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v90 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v66 - v15;
  v17 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v17);
  v19 = (&v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v74) = *a2;
  v20 = *(a1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount);
  if (v20 < 1)
  {
    v22 = 0;
    v24 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240, &qword_3F7660);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_3F5630;
    *(v21 + 56) = &type metadata for Int;
    *(v21 + 64) = &protocol witness table for Int;
    *(v21 + 32) = v20;
    v22 = sub_3ED214();
    v24 = v23;
  }

  v72 = v22;
  v73 = v24;
  if (a3)
  {
    v25 = 8;
  }

  else
  {
    v25 = 32;
  }

  v81 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0, &unk_3FA8B0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_3F52F0;
  v27 = a1[3];
  *(v26 + 32) = a1[2];
  *(v26 + 40) = v27;
  v28 = a1[5];
  *(v26 + 48) = a1[4];
  *(v26 + 56) = v28;
  LOBYTE(v91) = v25;

  *(v26 + 64) = sub_3EE7A4();
  *(v26 + 72) = v29;
  v30 = 48;
  if (v24)
  {
    v30 = v22;
  }

  v31 = 0xE100000000000000;
  if (v24)
  {
    v31 = v24;
  }

  *(v26 + 80) = v30;
  *(v26 + 88) = v31;
  v91 = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0, &unk_403600);
  sub_886BC(&qword_4EED78, &unk_5010E0, &unk_403600, &protocol conformance descriptor for [A]);
  v32 = sub_3ED134();
  v77 = v33;
  v78 = v32;

  v34 = a1[4];
  v75 = a1[5];
  v76 = v34;
  v35 = type metadata accessor for Link(0);
  v36 = *(v35 + 28);
  v37 = v35;
  v70 = v35;

  v38 = v79;
  sub_3E7774();
  v39 = sub_3E7784();
  (*(*(v39 - 8) + 56))(&v38[v36], 0, 1, v39);
  v69 = &v38[*(v37 + 36)];
  v40 = v19;
  v71 = a1;
  *v19 = a1;
  swift_storeEnumTagMultiPayload();

  v66 = v16;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v68 = type metadata accessor for FlowAction(0);
  v41 = swift_allocObject();
  sub_FC38(v19, v41 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v42 = (v41 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v42 = 0;
  v42[1] = 0;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = v74;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v43 = v80;
  v44 = v16;
  v45 = v82;
  (*(v80 + 16))(v90, v44, v82);
  v46 = sub_3EC634();
  v47 = *(v46 - 8);
  v67 = *(v47 + 56);
  v74 = v47 + 56;
  v48 = v83;
  v67(v83, 1, 1, v46);
  v49 = v84;
  sub_3E5FB4();
  v50 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v52 = v51;
  (*(v85 + 8))(v49, v86);
  (*(v43 + 8))(v66, v45);
  sub_FC9C(v40);
  *(v41 + 16) = v50;
  *(v41 + 24) = v52;
  *(v41 + 32) = 0;
  *(v41 + 40) = 0;
  *(v41 + 48) = 48;
  (*(v43 + 32))(v41 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v90, v45);
  sub_FACC(v48, v41 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170, &unk_3F4890);
  v53 = v69;
  v69[3] = v68;
  v53[4] = sub_3C9F54(&qword_4F8A40, type metadata accessor for FlowAction, "iJ\v");
  *v53 = v41;
  v54 = v70;
  v67(&v38[*(v70 + 40)], 1, 1, v46);
  v55 = *(v54 + 44);
  sub_3E6F24();
  v56 = [*(v71 + OBJC_IVAR____TtC8ShelfKit13StationDetail_objectID) URIRepresentation];
  v57 = v87;
  sub_3E5D44();

  v58 = sub_3E5CD4();
  v60 = v59;
  (*(v88 + 8))(v57, v89);
  v91 = v58;
  v92 = v60;
  sub_3C9F54(&qword_4F1638, &type metadata accessor for StationEntity, &protocol conformance descriptor for StationEntity);
  sub_3E5754();

  v61 = sub_3E5764();
  result = (*(*(v61 - 8) + 56))(&v38[v55], 0, 1, v61);
  v63 = v77;
  *v38 = v78;
  *(v38 + 1) = v63;
  v64 = v75;
  *(v38 + 2) = v76;
  *(v38 + 3) = v64;
  v65 = v73;
  *(v38 + 4) = v72;
  *(v38 + 5) = v65;
  v38[*(v54 + 32)] = v81;
  return result;
}

uint64_t StationSortOrder.displayTitle.getter()
{
  v1 = 0xD000000000000022;
  v2 = *v0;
  if (v2 > 2)
  {
    if (v2 - 4 >= 2)
    {
      if (v2 != 3)
      {
        return 0;
      }

      v5 = "SORT_MENU_OPTION_BY_DATE_SAVED";
    }

    else
    {
      v5 = "isNotSubscribeable";
      v1 = 0xD00000000000001ALL;
    }
  }

  else
  {
    v3 = "SORT_MENU_OPTION_BY_DATE_SAVED";
    if (v2 == 1)
    {
      v4 = 0xD000000000000022;
    }

    else
    {
      v3 = "STATION_SORT_BY_SHOW_TITLE";
      v4 = 0xD000000000000013;
    }

    if (*v0)
    {
      v5 = v3;
    }

    else
    {
      v5 = "STATION_SORT_MANUAL";
    }

    if (v2)
    {
      v1 = v4;
    }

    else
    {
      v1 = 0xD000000000000017;
    }
  }

  v6 = [objc_opt_self() mainBundle];
  v10._countAndFlagsBits = 0xE000000000000000;
  v11._object = (v5 | 0x8000000000000000);
  v11._countAndFlagsBits = v1;
  v12.value._countAndFlagsBits = 0;
  v12.value._object = 0;
  v7.super.isa = v6;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v8 = sub_3E5A74(v11, v12, v7, v13, 0, v10);

  return v8;
}

Swift::String_optional __swiftcall StationSortOrder.displaySubtitle(currentSortOrder:)(ShelfKit::StationSortOrder currentSortOrder)
{
  v2 = *currentSortOrder;
  v3 = *v1;
  v4 = 1;
  if (v3 != 3)
  {
    v4 = *v1;
  }

  if (v3 == 5)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  if (v2 == 3)
  {
    if (v5 != 1)
    {
      goto LABEL_19;
    }

    v6 = [objc_opt_self() mainBundle];
    v19._countAndFlagsBits = 0x800000000042EB60;
    v12 = 1701080143;
LABEL_13:
    v8._countAndFlagsBits = v12 | 0x4620747300000000;
    v8._object = 0xEC00000074737269;
    v9.value._countAndFlagsBits = 0;
    v9.value._object = 0;
    v10.super.isa = v6;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v7 = 0xD00000000000001ELL;
    goto LABEL_14;
  }

  if (v2 != 5)
  {
    if (v5 != v2)
    {
      goto LABEL_19;
    }

    v16 = 0;
    if (v2 > 3)
    {
      if (v2 != 4)
      {
        v17 = 0;
        goto LABEL_24;
      }

      v6 = [objc_opt_self() mainBundle];
      v19._countAndFlagsBits = 0x800000000042EBA0;
      v8._countAndFlagsBits = 0x6E69646E65637341;
      v7 = 0xD00000000000001FLL;
      v8._object = 0xE900000000000067;
      goto LABEL_10;
    }

    v17 = 0;
    if (v2 != 1)
    {
      goto LABEL_24;
    }

    v6 = [objc_opt_self() mainBundle];
    v19._countAndFlagsBits = 0x800000000042EB80;
    v12 = 1702323534;
    goto LABEL_13;
  }

  if (v5 != 4)
  {
LABEL_19:
    v16 = 0;
    v17 = 0;
    goto LABEL_24;
  }

  v6 = [objc_opt_self() mainBundle];
  v19._countAndFlagsBits = 0x800000000042F100;
  v8._countAndFlagsBits = 0x69646E6563736544;
  v7 = 0xD000000000000020;
  v8._object = 0xEA0000000000676ELL;
LABEL_10:
  v9.value._countAndFlagsBits = 0;
  v9.value._object = 0;
  v10.super.isa = v6;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
LABEL_14:
  v13 = sub_3E5A74(v8, v9, v10, v11, v7, v19);
  v15 = v14;

  v16 = v13;
  v17 = v15;
LABEL_24:
  result.value._object = v17;
  result.value._countAndFlagsBits = v16;
  return result;
}

Swift::Bool __swiftcall StationSortOrder.isSelected(currentSort:)(ShelfKit::StationSortOrder currentSort)
{
  v2 = *currentSort;
  v3 = *v1;
  v4 = 1;
  if (v3 != 3)
  {
    v4 = *v1;
  }

  if (v3 == 5)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = 1;
  if (v2 != 3)
  {
    v6 = *currentSort;
  }

  if (v2 == 5)
  {
    v7 = 4;
  }

  else
  {
    v7 = v6;
  }

  return v5 == v7;
}

uint64_t StationDetail.accessoryText.getter()
{
  if (*(v0 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) < 1)
  {
    return 0;
  }

  sub_301088();
  return sub_3EE1D4();
}

double sub_3C8F94(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;

  return result;
}

double sub_3C9004(uint64_t *a1)
{
  swift_beginAccess();

  return result;
}

double sub_3C9054(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;

  return result;
}

void *sub_3C9108()
{
  v1 = OBJC_IVAR____TtC8ShelfKit13StationDetail_shows;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  if (v2 >> 62)
  {
    goto LABEL_22;
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
LABEL_4:

  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_3EE3F4();
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v7 = _swiftEmptyArrayStorage;
          goto LABEL_19;
        }
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_22:
          v3 = sub_3EE5A4();
          goto LABEL_4;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_15;
        }
      }

      swift_beginAccess();
      if (*(v5 + 56) <= 0)
      {
      }

      else
      {
        sub_3EE494();
        sub_3EE4D4();
        sub_3EE4E4();
        sub_3EE4A4();
      }

      ++v4;
      if (v6 == v3)
      {
        goto LABEL_16;
      }
    }
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_19:

  return v7;
}

void *StationDetail.predicateForEpisodes.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit13StationDetail_predicateForEpisodes);
  v2 = v1;
  return v1;
}

uint64_t StationDetail.dateCreated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit13StationDetail_dateCreated;
  v4 = sub_3E5F84();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *StationDetail.__allocating_init(uuid:type:title:artwork:sortOrder:grouped:hidePlayedEpisodes:episodeCount:showCount:unplayedCount:episodes:shows:predicateForEpisodes:objectID:dateCreated:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v24 = swift_allocObject();
  v25 = *a3;
  LOBYTE(a7) = *a7;
  v26 = OBJC_IVAR____TtC8ShelfKit13StationDetail_episodes;
  *(v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodes) = 0;
  v27 = OBJC_IVAR____TtC8ShelfKit13StationDetail_shows;
  *(v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_shows) = 0;
  v24[2] = a1;
  v24[3] = a2;
  *(v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_type) = v25;
  v24[4] = a4;
  v24[5] = a5;
  sub_FACC(a6, v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_artwork, &qword_4F1D50, &unk_3F7520);
  *(v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_sortOrder) = a7;
  *(v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_grouped) = a8;
  *(v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_hidePlayedEpisodes) = a9;
  *(v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) = a10;
  *(v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_showCount) = a11;
  *(v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount) = a12;
  swift_beginAccess();
  *(v24 + v26) = a13;
  swift_beginAccess();
  *(v24 + v27) = a14;
  *(v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_predicateForEpisodes) = a15;
  *(v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_objectID) = a16;
  v28 = OBJC_IVAR____TtC8ShelfKit13StationDetail_dateCreated;
  v29 = sub_3E5F84();
  (*(*(v29 - 8) + 32))(v24 + v28, a17, v29);
  return v24;
}

void *StationDetail.init(uuid:type:title:artwork:sortOrder:grouped:hidePlayedEpisodes:episodeCount:showCount:unplayedCount:episodes:shows:predicateForEpisodes:objectID:dateCreated:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *a3;
  v20 = *a7;
  v21 = OBJC_IVAR____TtC8ShelfKit13StationDetail_episodes;
  *(v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodes) = 0;
  v22 = OBJC_IVAR____TtC8ShelfKit13StationDetail_shows;
  *(v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_shows) = 0;
  v17[2] = a1;
  v17[3] = a2;
  *(v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_type) = v19;
  v17[4] = a4;
  v17[5] = a5;
  sub_FACC(a6, v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_artwork, &qword_4F1D50, &unk_3F7520);
  *(v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_sortOrder) = v20;
  *(v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_grouped) = a8;
  *(v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_hidePlayedEpisodes) = a9;
  *(v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) = a10;
  *(v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_showCount) = a11;
  *(v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount) = a12;
  swift_beginAccess();
  *(v17 + v21) = a13;
  swift_beginAccess();
  *(v17 + v22) = a14;
  *(v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_predicateForEpisodes) = a15;
  *(v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_objectID) = a16;
  v23 = OBJC_IVAR____TtC8ShelfKit13StationDetail_dateCreated;
  v24 = sub_3E5F84();
  (*(*(v24 - 8) + 32))(v17 + v23, a17, v24);
  return v17;
}

void sub_3C973C(uint64_t a1)
{
  sub_3ED394();
  sub_3ED394();
  sub_3EE964(*(v1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount));
  sub_3EE994(*(v1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount));
}

uint64_t StationDetail.deinit()
{

  sub_1433A4(v0 + OBJC_IVAR____TtC8ShelfKit13StationDetail_artwork);

  v1 = OBJC_IVAR____TtC8ShelfKit13StationDetail_dateCreated;
  v2 = sub_3E5F84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t StationDetail.__deallocating_deinit()
{
  StationDetail.deinit();

  return swift_deallocClassInstance();
}

Swift::Int sub_3C98B0()
{
  sub_3EE954();
  sub_3ED394();
  sub_3ED394();
  sub_3EE964(*(v0 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount));
  sub_3EE994(*(v0 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount));
  return sub_3EE9A4();
}

Swift::Int sub_3C992C()
{
  v1 = *v0;
  sub_3EE954();
  sub_3ED394();
  sub_3ED394();
  sub_3EE964(*(v1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount));
  sub_3EE994(*(v1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount));
  return sub_3EE9A4();
}

void sub_3C99A8(uint64_t a1)
{
  v2 = *v1;
  sub_3ED394();
  sub_3ED394();
  sub_3EE964(*(v2 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount));
  sub_3EE994(*(v2 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount));
}

Swift::Int sub_3C9A0C(uint64_t a1)
{
  sub_3EE954();
  v2 = *v1;
  sub_3ED394();
  sub_3ED394();
  sub_3EE964(*(v2 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount));
  sub_3EE994(*(v2 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount));
  return sub_3EE9A4();
}

uint64_t StationSortOrder.episodeSort.getter()
{
  v1 = *v0;
  if (v1 == 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = 17;
  }

  if (v1 == 1)
  {
    return 2;
  }

  else
  {
    return v2;
  }
}

Swift::Bool __swiftcall StationSortOrder.supportsUsingFRP(isGrouped:)(Swift::Bool isGrouped)
{
  if (*v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = isGrouped;
  }

  return *v1 != 2 && v2;
}

ShelfKit::StationSortOrder_optional __swiftcall StationSortOrder.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t FlowAction.__allocating_init(station:presentationContext:showChevron:)(void *a1, unsigned __int8 *a2, char a3)
{
  v6 = sub_3EC1F4();
  __chkstk_darwin(v6 - 8);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v9);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = *a2;
  v12 = *(a1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount);
  if (v12 < 1)
  {
    v14 = 0;
    v16 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240, &qword_3F7660);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_3F5630;
    *(v13 + 56) = &type metadata for Int;
    *(v13 + 64) = &protocol witness table for Int;
    *(v13 + 32) = v12;
    v14 = sub_3ED214();
    v16 = v15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0, &unk_3FA8B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_3F52F0;
  v18 = a1[3];
  *(v17 + 32) = a1[2];
  *(v17 + 40) = v18;
  v19 = a1[5];
  *(v17 + 48) = a1[4];
  *(v17 + 56) = v19;
  if (a3)
  {
    v20 = 8;
  }

  else
  {
    v20 = 32;
  }

  v37 = v20;

  *(v17 + 64) = sub_3EE7A4();
  *(v17 + 72) = v21;
  v22 = 48;
  if (v16)
  {
    v22 = v14;
  }

  v23 = 0xE100000000000000;
  if (v16)
  {
    v23 = v16;
  }

  *(v17 + 80) = v22;
  *(v17 + 88) = v23;
  v36 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0, &unk_403600);
  sub_886BC(&qword_4EED78, &unk_5010E0, &unk_403600, &protocol conformance descriptor for [A]);
  v24 = sub_3ED134();
  v26 = v25;

  *v11 = a1;
  swift_storeEnumTagMultiPayload();
  v27 = a1[4];
  v28 = a1[5];
  v35 = v32;
  v34 = 0;

  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v29 = (*(v33 + 176))(v11, v24, v26, v27, v28, &v35, 0, v20, &v34, v8);

  return v29;
}

BOOL _s8ShelfKit13StationDetailC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (sub_3EE804()) && (a1[4] == a2[4] ? (v5 = a1[5] == a2[5]) : (v5 = 0), (v5 || (sub_3EE804()) && *(a1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) == *(a2 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount)))
  {
    return *(a1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount) == *(a2 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_3C9EB8()
{
  result = qword_505DE0;
  if (!qword_505DE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StationType, &type metadata for StationType, v0, v1);
    atomic_store(result, &qword_505DE0);
  }

  return result;
}

uint64_t sub_3C9F54(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for StationDetail(uint64_t a1)
{
  result = qword_505E30;
  if (!qword_505E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_3C9FEC()
{
  result = qword_505DF0;
  if (!qword_505DF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StationSortOrder, &type metadata for StationSortOrder, v0, v1);
    atomic_store(result, &qword_505DF0);
  }

  return result;
}

double keypath_getTm_0@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);

  return result;
}

void sub_3CA14C(uint64_t a1, double a2)
{
  sub_4EC44(319, a2);
  if (v2 <= 0x3F)
  {
    sub_3E5F84();
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t StationEpisode.stationUuid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit14StationEpisode_stationUuid);

  return v1;
}

uint64_t StationEpisode.__allocating_init(title:numberedTitle:uuid:podcastUuid:podcastAdamId:stationUuid:adamId:channelAdamId:channelName:artwork:episodeArtwork:author:summary:releaseDate:streamUrl:assetUrl:mediaType:isExplicit:guid:duration:seasonNumber:episodeNumber:episodeType:showTitle:showTypeIsSerial:showTypeSetting:listenNowReason:episodeEntitlementState:hasFreeVersion:subscriptionName:storeTrackId:upNextScore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, char a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  v51 = swift_allocObject();
  v52 = (v51 + OBJC_IVAR____TtC8ShelfKit14StationEpisode_stationUuid);
  *v52 = a12;
  v52[1] = a13;
  v53 = OBJC_IVAR____TtC8ShelfKit7Episode_showUberArtwork;
  v54 = sub_3E7784();
  (*(*(v54 - 8) + 56))(v51 + v53, 1, 1, v54);
  v55 = (v51 + OBJC_IVAR____TtC8ShelfKit7Episode_title);
  *v55 = a1;
  v55[1] = a2;
  v56 = (v51 + OBJC_IVAR____TtC8ShelfKit7Episode_numberedTitle);
  *v56 = a3;
  v56[1] = a4;
  *(v51 + 16) = a14;
  *(v51 + 24) = a15 & 1;
  *(v51 + 32) = a16;
  *(v51 + 40) = a17 & 1;
  *(v51 + 48) = a18;
  *(v51 + 56) = a19;
  sub_FACC(a20, v51 + OBJC_IVAR____TtC8ShelfKit7Episode_artwork, &qword_4F1D50, &unk_3F7520);
  sub_FACC(a21, v51 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeArtwork, &qword_4F1D50, &unk_3F7520);
  *(v51 + OBJC_IVAR____TtC8ShelfKit7Episode_summary) = a24;
  v57 = (v51 + OBJC_IVAR____TtC8ShelfKit7Episode_author);
  *v57 = a22;
  v57[1] = a23;
  sub_FACC(a25, v51 + OBJC_IVAR____TtC8ShelfKit7Episode_releaseDate, &qword_4EF460, &unk_3FADB0);
  sub_FACC(a26, v51 + OBJC_IVAR____TtC8ShelfKit7Episode_streamUrl, &unk_4E9EE0, &unk_3F5BC0);
  sub_FACC(a27, v51 + OBJC_IVAR____TtC8ShelfKit7Episode_assetUrl, &unk_4E9EE0, &unk_3F5BC0);
  *(v51 + OBJC_IVAR____TtC8ShelfKit7Episode_mediaType) = a28;
  *(v51 + OBJC_IVAR____TtC8ShelfKit7Episode_isExplicit) = a29;
  v58 = (v51 + OBJC_IVAR____TtC8ShelfKit7Episode_guid);
  *v58 = a30;
  v58[1] = a31;
  v59 = v51 + OBJC_IVAR____TtC8ShelfKit7Episode_duration;
  *v59 = a32;
  *(v59 + 8) = a33 & 1;
  v60 = v51 + OBJC_IVAR____TtC8ShelfKit7Episode_seasonNumber;
  *v60 = a34;
  *(v60 + 8) = a35 & 1;
  v61 = v51 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeNumber;
  *v61 = a36;
  *(v61 + 8) = a37 & 1;
  *(v51 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeType) = a38;
  v62 = (v51 + OBJC_IVAR____TtC8ShelfKit7Episode_showTitle);
  *v62 = a39;
  v62[1] = a40;
  *(v51 + OBJC_IVAR____TtC8ShelfKit7Episode_showDisplayType) = 3;
  *(v51 + OBJC_IVAR____TtC8ShelfKit7Episode_showTypeIsSerial) = a41;
  v63 = v51 + OBJC_IVAR____TtC8ShelfKit7Episode_showTypeSetting;
  *v63 = a42;
  *(v63 + 8) = a43 & 1;
  *(v51 + 64) = a5;
  *(v51 + 72) = a6;
  *(v51 + 80) = a7;
  *(v51 + 88) = a8;
  *(v51 + 96) = a10;
  *(v51 + 104) = a11 & 1;
  sub_FACC(a44, v51 + OBJC_IVAR____TtC8ShelfKit7Episode_listenNowReason, &qword_4EF470, &unk_3FADC0);
  *(v51 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeEntitlementState) = a45;
  *(v51 + OBJC_IVAR____TtC8ShelfKit7Episode_hasFreeVersion) = a46;
  v64 = (v51 + OBJC_IVAR____TtC8ShelfKit7Episode_subscriptionName);
  *v64 = a47;
  v64[1] = a48;
  v65 = v51 + OBJC_IVAR____TtC8ShelfKit7Episode_storeTrackId;
  *v65 = a49;
  *(v65 + 8) = a50 & 1;
  *(v51 + OBJC_IVAR____TtC8ShelfKit7Episode_upNextScore) = a9;
  return v51;
}

uint64_t StationEpisode.init(title:numberedTitle:uuid:podcastUuid:podcastAdamId:stationUuid:adamId:channelAdamId:channelName:artwork:episodeArtwork:author:summary:releaseDate:streamUrl:assetUrl:mediaType:isExplicit:guid:duration:seasonNumber:episodeNumber:episodeType:showTitle:showTypeIsSerial:showTypeSetting:listenNowReason:episodeEntitlementState:hasFreeVersion:subscriptionName:storeTrackId:upNextScore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, char a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  v52 = (v50 + OBJC_IVAR____TtC8ShelfKit14StationEpisode_stationUuid);
  *v52 = a12;
  v52[1] = a13;
  v53 = OBJC_IVAR____TtC8ShelfKit7Episode_showUberArtwork;
  v54 = sub_3E7784();
  (*(*(v54 - 8) + 56))(v50 + v53, 1, 1, v54);
  v55 = (v50 + OBJC_IVAR____TtC8ShelfKit7Episode_title);
  *v55 = a1;
  v55[1] = a2;
  v56 = (v50 + OBJC_IVAR____TtC8ShelfKit7Episode_numberedTitle);
  *v56 = a3;
  v56[1] = a4;
  *(v50 + 16) = a14;
  *(v50 + 24) = a15 & 1;
  *(v50 + 32) = a16;
  *(v50 + 40) = a17 & 1;
  *(v50 + 48) = a18;
  *(v50 + 56) = a19;
  sub_FACC(a20, v50 + OBJC_IVAR____TtC8ShelfKit7Episode_artwork, &qword_4F1D50, &unk_3F7520);
  sub_FACC(a21, v50 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeArtwork, &qword_4F1D50, &unk_3F7520);
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_summary) = a24;
  v57 = (v50 + OBJC_IVAR____TtC8ShelfKit7Episode_author);
  *v57 = a22;
  v57[1] = a23;
  sub_FACC(a25, v50 + OBJC_IVAR____TtC8ShelfKit7Episode_releaseDate, &qword_4EF460, &unk_3FADB0);
  sub_FACC(a26, v50 + OBJC_IVAR____TtC8ShelfKit7Episode_streamUrl, &unk_4E9EE0, &unk_3F5BC0);
  sub_FACC(a27, v50 + OBJC_IVAR____TtC8ShelfKit7Episode_assetUrl, &unk_4E9EE0, &unk_3F5BC0);
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_mediaType) = a28;
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_isExplicit) = a29;
  v58 = (v50 + OBJC_IVAR____TtC8ShelfKit7Episode_guid);
  *v58 = a30;
  v58[1] = a31;
  v59 = v50 + OBJC_IVAR____TtC8ShelfKit7Episode_duration;
  *v59 = a32;
  *(v59 + 8) = a33 & 1;
  v60 = v50 + OBJC_IVAR____TtC8ShelfKit7Episode_seasonNumber;
  *v60 = a34;
  *(v60 + 8) = a35 & 1;
  v61 = v50 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeNumber;
  *v61 = a36;
  *(v61 + 8) = a37 & 1;
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeType) = a38;
  v62 = (v50 + OBJC_IVAR____TtC8ShelfKit7Episode_showTitle);
  *v62 = a39;
  v62[1] = a40;
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_showDisplayType) = 3;
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_showTypeIsSerial) = a41;
  v63 = v50 + OBJC_IVAR____TtC8ShelfKit7Episode_showTypeSetting;
  *v63 = a42;
  *(v63 + 8) = a43 & 1;
  *(v50 + 64) = a5;
  *(v50 + 72) = a6;
  *(v50 + 80) = a7;
  *(v50 + 88) = a8;
  *(v50 + 96) = a10;
  *(v50 + 104) = a11 & 1;
  sub_FACC(a44, v50 + OBJC_IVAR____TtC8ShelfKit7Episode_listenNowReason, &qword_4EF470, &unk_3FADC0);
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeEntitlementState) = a45;
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_hasFreeVersion) = a46;
  v64 = (v50 + OBJC_IVAR____TtC8ShelfKit7Episode_subscriptionName);
  *v64 = a47;
  v64[1] = a48;
  v65 = v50 + OBJC_IVAR____TtC8ShelfKit7Episode_storeTrackId;
  *v65 = a49;
  *(v65 + 8) = a50 & 1;
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_upNextScore) = a9;
  return v50;
}

void sub_3CAF98()
{
  sub_3EE3C4(60);
  v0._countAndFlagsBits = 0xD000000000000195;
  v0._object = 0x80000000004307C0;
  sub_3ED3D4(v0);
  v1._object = 0x8000000000430960;
  v1._countAndFlagsBits = 0xD00000000000003ALL;
  sub_3ED3D4(v1);
  sub_3EE574();
  __break(1u);
}

uint64_t sub_3CB044(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v279 = a3;
  v7 = sub_3E6B04();
  v219 = *(v7 - 8);
  v220 = v7;
  __chkstk_darwin(v7);
  v218 = &v218 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF420, &unk_3FA9C0);
  __chkstk_darwin(v9 - 8);
  v292 = &v218 - v10;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90, qword_3FA8D0);
  __chkstk_darwin(v270);
  v251 = &v218 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF468, &unk_3FA9D0);
  __chkstk_darwin(v12 - 8);
  v255 = &v218 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v253 = &v218 - v15;
  __chkstk_darwin(v16);
  v271 = &v218 - v17;
  __chkstk_darwin(v18);
  v291 = &v218 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF470, &unk_3FADC0);
  __chkstk_darwin(v20 - 8);
  v272 = &v218 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v252 = &v218 - v23;
  __chkstk_darwin(v24);
  v294 = &v218 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460, &unk_3FADB0);
  __chkstk_darwin(v26 - 8);
  v28 = &v218 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v289 = &v218 - v30;
  __chkstk_darwin(v31);
  v290 = &v218 - v32;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  __chkstk_darwin(v267);
  v243 = &v218 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v34 - 8);
  v283 = &v218 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v269 = &v218 - v37;
  __chkstk_darwin(v38);
  v268 = &v218 - v39;
  __chkstk_darwin(v40);
  v285 = &v218 - v41;
  __chkstk_darwin(v42);
  v288 = &v218 - v43;
  __chkstk_darwin(v44);
  v287 = &v218 - v45;
  __chkstk_darwin(v46);
  v286 = &v218 - v47;
  v48 = sub_3EC544();
  __chkstk_darwin(v48 - 8);
  v245 = (&v218 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v50 - 8);
  v284 = &v218 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v244 = &v218 - v53;
  v274 = sub_3E5FC4();
  v54 = *(v274 - 8);
  __chkstk_darwin(v274);
  v260 = &v218 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = sub_3EC1F4();
  v280 = *(v273 - 8);
  __chkstk_darwin(v273);
  v248 = &v218 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v259 = &v218 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v59 - 8);
  v265 = &v218 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v266 = &v218 - v62;
  __chkstk_darwin(v63);
  v281 = &v218 - v64;
  __chkstk_darwin(v65);
  v282 = &v218 - v66;
  __chkstk_darwin(v67);
  v295 = &v218 - v68;
  sub_3E67A4();
  v250 = a2;
  v261 = sub_360B08(a1, a2, &v302);
  v309 = v302;
  sub_FCF8(&v309, &unk_4F8A10, &unk_3F6750);
  v308 = v303;
  sub_FCF8(&v308, &qword_4E94E0, &unk_3F5640);
  v307 = v304;
  sub_FCF8(&v307, &unk_4F8A20, &unk_3F6760);
  sub_16AC0(v305, v306);
  v69 = *(v4 + 64);
  v70 = *(v4 + 72);
  v71 = *(v4 + OBJC_IVAR____TtC8ShelfKit14StationEpisode_stationUuid);
  v72 = *(v4 + OBJC_IVAR____TtC8ShelfKit14StationEpisode_stationUuid + 8);
  v73 = *(v4 + 16);
  v249 = v4;
  v74 = *(v4 + 24);
  type metadata accessor for LibraryStationEpisodeOfferAction(0);
  v75 = swift_allocObject();
  v76 = (v75 + OBJC_IVAR____TtC8ShelfKit32LibraryStationEpisodeOfferAction_stationUuid);
  v258 = v71;
  *v76 = v71;
  v76[1] = v72;
  v293 = v75;
  v77 = (v75 + OBJC_IVAR____TtC8ShelfKit25LibraryEpisodeOfferAction_episodeUuid);
  v275 = v69;
  *v77 = v69;
  v77[1] = v70;
  v262 = v70;
  swift_bridgeObjectRetain_n();
  v257 = v72;
  swift_bridgeObjectRetain_n();
  v264 = v73;
  v78 = v74;
  v254 = v28;
  if ((v74 & 1) != 0 || v73 == sub_3E9484())
  {
    v73 = 0;
    v79 = 1;
  }

  else
  {
    v79 = 0;
  }

  v80 = v293;
  v81 = v293 + OBJC_IVAR____TtC8ShelfKit25LibraryEpisodeOfferAction_contentId;
  *v81 = v73;
  *(v81 + 8) = v79;
  v82 = sub_3EC634();
  v83 = *(v82 - 8);
  v84 = v295;
  v277 = *(v83 + 56);
  v278 = v82;
  v276 = v83 + 56;
  v277(v295, 1, 1);
  v85 = v259;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v86 = v260;
  sub_3E5FB4();
  v87 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v89 = v88;
  v90 = *(v54 + 8);
  v263 = v54 + 8;
  v256 = v90;
  v90(v86, v274);
  *(v80 + 16) = v87;
  *(v80 + 24) = v89;
  *(v80 + 32) = 0;
  *(v80 + 40) = 0;
  *(v80 + 48) = 32;
  v246 = *(v280 + 32);
  v247 = v280 + 32;
  v246(v80 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v85, v273);
  sub_FACC(v84, v80 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170, &unk_3F4890);
  sub_3E8594();
  v91 = v78;
  if (v78)
  {

    v92 = v248;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v93 = v264;
  }

  else
  {
    v93 = v264;
    if (sub_3E94A4())
    {

      v92 = v248;
      _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850, &qword_3F5A50);
      sub_3EC044();
      *(swift_allocObject() + 16) = xmmword_3F5630;
      v301[0] = v93;
      sub_17A28();
      sub_3EE1F4();
      v242 = sub_3E8474();
      v94 = sub_3E5DC4();
      v95 = v244;
      (*(*(v94 - 8) + 56))(v244, 1, 1, v94);
      sub_3EBFC4();

      v93 = v264;

      sub_FCF8(v95, &unk_4E9EE0, &unk_3F5BC0);
      sub_3EC534();
      v92 = v248;
      sub_3EC1C4();
    }
  }

  type metadata accessor for PlayStationAction(0);
  v96 = swift_allocObject();
  v97 = (v96 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_stationUUID);
  v98 = v257;
  *v97 = v258;
  v97[1] = v98;
  v99 = (v96 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeUUID);
  v100 = v262;
  *v99 = v275;
  v99[1] = v100;
  v101 = v96 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeAdamID;
  *v101 = v93;
  *(v101 + 8) = v91;
  v102 = v280;
  v103 = v259;
  v104 = v273;
  (*(v280 + 16))(v259, v92, v273);
  (v277)(v295, 1, 1, v278);

  v105 = v260;
  sub_3E5FB4();
  v106 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v108 = v107;
  v256(v105, v274);
  (*(v102 + 8))(v92, v104);
  *(v96 + 16) = v106;
  *(v96 + 24) = v108;
  *(v96 + 32) = 0;
  *(v96 + 40) = 0;
  *(v96 + 48) = 32;
  v109 = v246;
  v246(v96 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v103, v104);
  v264 = v96;
  v110 = v295;
  sub_FACC(v295, v96 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170, &unk_3F4890);
  v280 = sub_3CF59C(v279);
  type metadata accessor for LibraryEpisodeContextAction(0);
  v111 = swift_allocObject();
  v112 = (v111 + OBJC_IVAR____TtC8ShelfKit27LibraryEpisodeContextAction_episodeUuid);
  *v112 = v275;
  v112[1] = v100;
  v113 = (v111 + OBJC_IVAR____TtC8ShelfKit27LibraryEpisodeContextAction_stationUuid);
  v114 = v257;
  *v113 = v258;
  v113[1] = v114;
  (v277)(v110, 1, 1, v278);

  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v115 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v117 = v116;
  v256(v105, v274);
  *(v111 + 16) = v115;
  *(v111 + 24) = v117;
  *(v111 + 32) = 0;
  *(v111 + 40) = 0;
  *(v111 + 48) = 32;
  v109(v111 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v103, v273);
  v279 = v111;
  sub_FACC(v110, v111 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170, &unk_3F4890);
  v118 = v261;
  v119 = *(v261 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid + 8);
  v224 = *(v261 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid);
  v223 = *(v261 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastAdamId);
  v222 = *(v261 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_channelAdamId);
  v249 = *(v261 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
  v221 = *(v261 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_channelAdamId + 8);
  v240 = *(v261 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeType);
  v242 = *(v261 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration);
  v241 = *(v261 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration + 8);
  v238 = *(v261 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_seasonNumber);
  v237 = *(v261 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_seasonNumber + 8);
  v236 = *(v261 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeNumber);
  v235 = *(v261 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeNumber + 8);
  v239 = *(v261 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_mediaType);
  sub_FBD0(v261 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, v286, &qword_4F1D50, &unk_3F7520);
  sub_FBD0(v118 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showUberArtwork, v287, &qword_4F1D50, &unk_3F7520);
  sub_FBD0(v118 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeArtwork, v288, &qword_4F1D50, &unk_3F7520);
  v120 = *(v118 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title + 8);
  v273 = *(v118 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v121 = *(v118 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles);
  v122 = *(v118 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal + 8);
  v246 = *(v118 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  LODWORD(v248) = *(v118 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating);
  LODWORD(v247) = *(v118 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating + 4);
  v263 = type metadata accessor for Action(0);
  v301[3] = v263;
  v301[4] = sub_3CFBEC();
  v301[0] = v280;
  v123 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__subtitleAction;
  swift_beginAccess();
  v124 = v118 + v123;
  v125 = v243;
  sub_FBD0(v124, v243, &qword_4EED80, &unk_3FA8C0);
  v245 = v122;

  swift_retain_n();

  v126 = v119;

  v274 = v120;

  v244 = v121;

  sub_3ECAF4();
  sub_FCF8(v125, &qword_4EED80, &unk_3FA8C0);
  v256 = v299;
  v127 = *(v118 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_summary);
  v128 = *(v118 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_caption);
  v129 = *(v118 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_caption + 8);
  LODWORD(v243) = *(v118 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit);
  v234 = *(v118 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTypeIsSerial);
  sub_FBD0(v118 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_assetFileUrl, v284, &unk_4E9EE0, &unk_3F5BC0);
  if (*(v118 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate))
  {
    v130 = v127;

    sub_3E6B14();
  }

  else
  {
    v131 = sub_3E5F84();
    (*(*(v131 - 8) + 56))(v290, 1, 1, v131);
    v132 = v127;
  }

  v260 = *(v118 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeEntitlementState);
  v228 = *(v118 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_hasFreeVersion);
  v133 = *(v118 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName + 8);
  v227 = *(v118 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName);
  v259 = v133;
  v134 = *(v118 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName + 8);
  v226 = *(v118 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName);
  v258 = v134;
  v135 = *(v118 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTitle + 8);
  v225 = *(v118 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTitle);
  v257 = v135;
  sub_FBD0(v118 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listenNowReason, v294, &qword_4EF470, &unk_3FADC0);
  v136 = sub_3E7DF4();
  v137 = v250;
  v138 = (*(*(v136 - 8) + 48))(v250, 1, v136);
  v230 = v127;
  if (v138 == 1)
  {
    v139 = sub_3E7CB4();
    (*(*(v139 - 8) + 56))(v291, 1, 1, v139);
  }

  else
  {
    v140 = v291;
    sub_FBD0(v137, v291, &qword_4EF428, &unk_415A20);
    v141 = enum case for EyebrowBuilder.ListContext.show(_:);
    v142 = sub_3E7CB4();
    v143 = *(v142 - 8);
    (*(v143 + 104))(v140, v141, v142);
    (*(v143 + 56))(v140, 0, 1, v142);
  }

  v250 = *(v118 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_referenceTime);
  v233 = *(v118 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_referenceTime + 8);
  v232 = *(v118 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_playerTime);
  v231 = *(v118 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_playerTime + 8);

  v144 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__impressionMetrics;
  swift_beginAccess();
  v145 = v118 + v144;
  v146 = v251;
  sub_FBD0(v145, v251, &qword_4EED90, qword_3FA8D0);
  sub_3ECAF4();

  sub_FCF8(v146, &qword_4EED90, qword_3FA8D0);
  type metadata accessor for LibraryEpisodeLockup(0);
  v147 = swift_allocObject();
  v148 = (v147 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid);
  v149 = v275;
  v150 = v262;
  *v148 = v275;
  v148[1] = v150;
  v151 = (v147 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid);
  v152 = v223;
  *v151 = v224;
  v151[1] = v126;
  *(v147 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastAdamId) = v152;
  v153 = v147 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_channelAdamId;
  *v153 = v222;
  *(v153 + 8) = v221;
  *(v147 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_presentDetailsAction) = v280;
  sub_FBD0(v284, v147 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_assetFileUrl, &unk_4E9EE0, &unk_3F5BC0);
  v299 = v149;
  v300 = v150;

  v310._countAndFlagsBits = 45;
  v310._object = 0xE100000000000000;
  sub_3ED3D4(v310);
  if (v129)
  {
    v154 = v128;
  }

  else
  {
    v154 = 7104878;
  }

  if (v129)
  {
    v155 = v129;
  }

  else
  {
    v155 = 0xE300000000000000;
  }

  v275 = v129;

  v311._countAndFlagsBits = v154;
  v311._object = v155;
  sub_3ED3D4(v311);

  v312._countAndFlagsBits = 45;
  v312._object = 0xE100000000000000;
  sub_3ED3D4(v312);
  v298[0] = v260;
  v313._countAndFlagsBits = sub_3EE7A4();
  sub_3ED3D4(v313);

  v314._countAndFlagsBits = 45;
  v314._object = 0xE100000000000000;
  sub_3ED3D4(v314);
  if (v274)
  {
    v156 = v273;
  }

  else
  {
    v156 = 7104878;
  }

  if (v274)
  {
    v157 = v274;
  }

  else
  {
    v157 = 0xE300000000000000;
  }

  v315._countAndFlagsBits = v156;
  v315._object = v157;
  sub_3ED3D4(v315);

  v316._countAndFlagsBits = 45;
  v316._object = 0xE100000000000000;
  sub_3ED3D4(v316);
  v158 = v252;
  sub_FBD0(v294, v252, &qword_4EF470, &unk_3FADC0);
  v159 = sub_3E8D24();
  v160 = *(v159 - 8);
  v223 = *(v160 + 48);
  v224 = v160 + 48;
  v161 = v223(v158, 1, v159);
  v229 = v128;
  v251 = v159;
  if (v161 == 1)
  {
    sub_FCF8(v158, &qword_4EF470, &unk_3FADC0);
    v162 = 0xE400000000000000;
    v163._countAndFlagsBits = 1701736302;
  }

  else
  {
    v164 = sub_3E8D14();
    v162 = v165;
    (*(v160 + 8))(v158, v159);
    v163._countAndFlagsBits = v164;
  }

  v163._object = v162;
  sub_3ED3D4(v163);

  v262 = v299;
  v252 = v300;
  sub_FBD0(v286, v285, &qword_4F1D50, &unk_3F7520);
  v166 = v268;
  sub_FBD0(v287, v268, &qword_4F1D50, &unk_3F7520);
  v167 = v269;
  sub_FBD0(v288, v269, &qword_4F1D50, &unk_3F7520);
  sub_FBD0(v301, &v299, &qword_4EDE00, &qword_3F9910);
  sub_FBD0(v290, v289, &qword_4EF460, &unk_3FADB0);
  v168 = v272;
  sub_FBD0(v294, v272, &qword_4EF470, &unk_3FADC0);
  v169 = v271;
  sub_FBD0(v291, v271, &qword_4EF468, &unk_3FA9D0);
  v170 = sub_3E9104();
  (*(*(v170 - 8) + 56))(v292, 1, 1, v170);
  sub_FBD0(v282, v281, &unk_4E9170, &unk_3F4890);
  v171 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup__titleAction;
  v298[0] = 0;
  sub_3ECAE4();
  *(v147 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_disabled) = 0;
  v172 = v147 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeNumber;
  *v172 = v236;
  *(v172 + 8) = v235;
  v173 = v147 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_seasonNumber;
  *v173 = v238;
  *(v173 + 8) = v237;
  *(v147 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeType) = v240;
  sub_FBD0(v166, v147 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showUberArtwork, &qword_4F1D50, &unk_3F7520);
  *(v147 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_mediaType) = v239;
  v174 = (v147 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_caption);
  v175 = v275;
  *v174 = v229;
  v174[1] = v175;
  *(v147 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_summary) = v230;
  *(v147 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_transcript) = 0;
  swift_beginAccess();
  sub_FCF8(v147 + v171, &qword_4EED80, &unk_3FA8C0);
  v297[0] = 0;
  sub_3ECAE4();
  swift_endAccess();
  v176 = v147 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration;
  *v176 = v242;
  *(v176 + 8) = v241;
  *(v147 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeEntitlementState) = v260;
  *(v147 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_hasFreeVersion) = v228;
  v177 = (v147 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName);
  v178 = v259;
  *v177 = v227;
  v177[1] = v178;
  v179 = (v147 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName);
  v180 = v258;
  *v179 = v226;
  v179[1] = v180;
  v181 = (v147 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTitle);
  v182 = v257;
  *v181 = v225;
  v181[1] = v182;
  *(v147 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showDisplayType) = 3;
  *(v147 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTypeIsSerial) = v234;
  sub_FBD0(v168, v147 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listenNowReason, &qword_4EF470, &unk_3FADC0);
  sub_FBD0(v167, v147 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeArtwork, &qword_4F1D50, &unk_3F7520);
  v183 = v255;
  sub_FBD0(v169, v255, &qword_4EF468, &unk_3FA9D0);
  v184 = sub_3E7CB4();
  v185 = *(v184 - 8);
  v186 = *(v185 + 48);
  if (v186(v183, 1, v184) == 1)
  {
    v187 = 1;
    v188 = v223(v168, 1, v251);
    v189 = v253;
    v190 = v254;
    if (v188 != 1)
    {
      *v253 = 0;
      (*(v185 + 104))(v189, enum case for EyebrowBuilder.ListContext.listenNow(_:), v184);
      v187 = 0;
    }

    (*(v185 + 56))(v189, v187, 1, v184);
    v191 = v255;
    if (v186(v255, 1, v184) != 1)
    {
      sub_FCF8(v191, &qword_4EF468, &unk_3FA9D0);
    }
  }

  else
  {
    v189 = v253;
    (*(v185 + 32))(v253, v183, v184);
    (*(v185 + 56))(v189, 0, 1, v184);
    v190 = v254;
  }

  sub_FACC(v189, v147 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listContext, &qword_4EF468, &unk_3FA9D0);
  v192 = v147 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_referenceTime;
  *v192 = v250;
  *(v192 + 8) = v233;
  v193 = v147 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_playerTime;
  *v193 = v232;
  *(v193 + 8) = v231;
  sub_FBD0(v292, v147 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_thinClientEpisodeState, &qword_4EF420, &unk_3FA9C0);
  v194 = v249;
  v195 = sub_3E82A4();
  v275 = v196;
  v260 = v197;
  LODWORD(v259) = v198;
  sub_FBD0(v285, v283, &qword_4F1D50, &unk_3F7520);
  sub_FBD0(v289, v190, &qword_4EF460, &unk_3FADB0);
  v199 = sub_3E5F84();
  v200 = *(v199 - 8);
  if ((*(v200 + 48))(v190, 1, v199) == 1)
  {
    sub_FCF8(v190, &qword_4EF460, &unk_3FADB0);
    v258 = 0;
  }

  else
  {
    v201 = v218;
    (*(v200 + 16))(v218, v190, v199);
    (*(v219 + 104))(v201, enum case for LazyDate.State.valid(_:), v220);
    v258 = sub_3E6AF4();
    (*(v200 + 8))(v190, v199);
  }

  sub_FBD0(&v299, v298, &qword_4EDE00, &qword_3F9910);
  sub_FBD0(v281, v295, &unk_4E9170, &unk_3F4890);
  *(v147 + 32) = 0u;
  *(v147 + 48) = 0u;
  *(v147 + 64) = 0;
  v202 = v266;
  (v277)(v266, 1, 1, v278);
  sub_FBD0(v202, v265, &unk_4E9170, &unk_3F4890);
  sub_3ECAE4();
  sub_FCF8(v202, &unk_4E9170, &unk_3F4890);
  v297[0] = 0;
  sub_3ECAE4();
  memset(v297, 0, sizeof(v297));
  sub_FBD0(v297, v296, &qword_4EDE00, &qword_3F9910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170, &qword_3F6E20);
  sub_3ECAE4();
  sub_FCF8(v297, &qword_4EDE00, &qword_3F9910);
  v297[0] = 0;
  sub_3ECAE4();
  v297[0] = 0;
  sub_3ECAE4();
  v297[0] = 0;
  sub_3ECAE4();
  v297[0] = 0;
  sub_3ECAE4();
  v203 = v252;
  *(v147 + 16) = v262;
  *(v147 + 24) = v203;
  *(v147 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v194;
  v204 = v147 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v205 = v275;
  *v204 = v195;
  *(v204 + 8) = v205;
  *(v204 + 16) = v260;
  *(v204 + 24) = v259;
  *(v147 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v243;
  *(v147 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  sub_FBD0(v283, v147 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50, &unk_3F7520);
  v206 = (v147 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v207 = v274;
  *v206 = v273;
  v206[1] = v207;
  *(v147 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v244;
  v208 = (v147 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  *v208 = 0;
  v208[1] = 0;
  v209 = (v147 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  *v209 = 0;
  v209[1] = 0;
  *(v147 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v210 = (v147 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  v211 = v245;
  *v210 = v246;
  v210[1] = v211;
  *(v147 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = v258;
  v212 = (v147 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v212 = 0;
  v212[1] = 0;
  v213 = v147 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  *v213 = v248;
  *(v213 + 4) = v247;
  v214 = v147 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v214 = 0;
  *(v214 + 8) = 1;
  v296[0] = v293;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(v298, v297, &qword_4EDE00, &qword_3F9910);
  sub_FBD0(v297, v296, &qword_4EDE00, &qword_3F9910);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88, &unk_3FA9E0);
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v297, &qword_4EDE00, &qword_3F9910);
  v296[0] = v279;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v296[0] = v264;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v296[0] = v280;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v296[0] = v256;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v215 = v295;
  v216 = v266;
  sub_FBD0(v295, v266, &unk_4E9170, &unk_3F4890);
  sub_FBD0(v216, v265, &unk_4E9170, &unk_3F4890);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();

  sub_FCF8(v216, &unk_4E9170, &unk_3F4890);
  sub_FCF8(v215, &unk_4E9170, &unk_3F4890);
  sub_FCF8(v298, &qword_4EDE00, &qword_3F9910);
  sub_FCF8(v283, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v281, &unk_4E9170, &unk_3F4890);
  sub_FCF8(v292, &qword_4EF420, &unk_3FA9C0);
  sub_FCF8(v271, &qword_4EF468, &unk_3FA9D0);
  sub_FCF8(v289, &qword_4EF460, &unk_3FADB0);
  sub_FCF8(&v299, &qword_4EDE00, &qword_3F9910);
  sub_FCF8(v269, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v268, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v285, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v282, &unk_4E9170, &unk_3F4890);
  sub_FCF8(v291, &qword_4EF468, &unk_3FA9D0);
  sub_FCF8(v294, &qword_4EF470, &unk_3FADC0);
  sub_FCF8(v290, &qword_4EF460, &unk_3FADB0);
  sub_FCF8(v284, &unk_4E9EE0, &unk_3F5BC0);
  sub_FCF8(v288, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v287, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v286, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v301, &qword_4EDE00, &qword_3F9910);
  sub_FCF8(v272, &qword_4EF470, &unk_3FADC0);
  return v147;
}

uint64_t sub_3CD600(double a1)
{
  v2 = v1;
  v3 = sub_3E6B04();
  v163 = *(v3 - 8);
  v164 = v3;
  __chkstk_darwin(v3);
  v162 = &v161 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF420, &unk_3FA9C0);
  __chkstk_darwin(v5 - 8);
  v237 = &v161 - v6;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90, qword_3FA8D0);
  __chkstk_darwin(v226);
  v196 = &v161 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v8 - 8);
  v222 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v225 = &v161 - v11;
  __chkstk_darwin(v12);
  v224 = &v161 - v13;
  __chkstk_darwin(v14);
  v234 = &v161 - v15;
  __chkstk_darwin(v16);
  v236 = &v161 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF468, &unk_3FA9D0);
  __chkstk_darwin(v18 - 8);
  v205 = &v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v206 = &v161 - v21;
  __chkstk_darwin(v22);
  v223 = &v161 - v23;
  __chkstk_darwin(v24);
  v235 = &v161 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF470, &unk_3FADC0);
  __chkstk_darwin(v26 - 8);
  v227 = &v161 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v197 = &v161 - v29;
  __chkstk_darwin(v30);
  v239 = &v161 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460, &unk_3FADB0);
  __chkstk_darwin(v32 - 8);
  v207 = &v161 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v232 = &v161 - v35;
  __chkstk_darwin(v36);
  v233 = &v161 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v38 - 8);
  v221 = &v161 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v40 - 8);
  v228 = &v161 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v219 = &v161 - v43;
  __chkstk_darwin(v44);
  v218 = &v161 - v45;
  __chkstk_darwin(v46);
  v229 = &v161 - v47;
  __chkstk_darwin(v48);
  v231 = &v161 - v49;
  __chkstk_darwin(v50);
  v230 = &v161 - v51;
  __chkstk_darwin(v52);
  v54 = &v161 - v53;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  __chkstk_darwin(v238);
  v56 = &v161 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0, &unk_3F6570);
  __chkstk_darwin(v57 - 8);
  v59 = &v161 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF428, &unk_415A20);
  __chkstk_darwin(v60 - 8);
  v62 = &v161 - v61;
  v255 = 0u;
  v256 = 0u;
  v257 = 0u;
  v254 = 1;
  v258 = 0;
  v259 = 10;
  v63 = sub_3E7DF4();
  (*(*(v63 - 8) + 56))(v62, 1, 1, v63);
  sub_3E67A4();
  sub_3E8954();
  v64 = sub_3E8944();
  v65 = (*(*(v64 - 8) + 56))(v59, 0, 1, v64);
  v66 = sub_3CB044(v59, v62, &v246, v65);
  v253 = v246;
  sub_FCF8(&v253, &unk_4F8A10, &unk_3F6750);
  v252 = v247;
  sub_FCF8(&v252, &qword_4E94E0, &unk_3F5640);
  v251 = v248;
  sub_FCF8(&v251, &unk_4F8A20, &unk_3F6760);
  sub_16AC0(v249, v250);
  sub_FCF8(v59, &qword_4E9FD0, &unk_3F6570);
  sub_FCF8(v62, &qword_4EF428, &unk_415A20);
  v67 = v66 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup__playAction;
  swift_beginAccess();
  v215 = v67;
  sub_FBD0(v67, v56, &qword_4EED80, &unk_3FA8C0);

  sub_3ECAF4();
  sub_FCF8(v56, &qword_4EED80, &unk_3FA8C0);
  v68 = v245[0];
  v69 = *(v2 + 72);
  v179 = *(v2 + 64);
  v211 = v69;
  v70 = *(v66 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid + 8);
  v170 = *(v66 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid);
  v209 = v70;
  v169 = *(v66 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastAdamId);
  v168 = *(v66 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_channelAdamId);
  v214 = *(v66 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
  v167 = *(v66 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_channelAdamId + 8);
  v192 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeType);
  v194 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration);
  v193 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration + 8);
  v190 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_seasonNumber);
  v189 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_seasonNumber + 8);
  v188 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeNumber);
  v187 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeNumber + 8);
  v191 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_mediaType);
  v220 = v54;
  sub_FBD0(v66 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, v54, &qword_4F1D50, &unk_3F7520);
  sub_FBD0(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showUberArtwork, v230, &qword_4F1D50, &unk_3F7520);
  sub_FBD0(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeArtwork, v231, &qword_4F1D50, &unk_3F7520);
  v71 = *(v66 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title + 8);
  v212 = *(v66 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v72 = *(v66 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles);
  v73 = *(v66 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal + 8);
  v200 = *(v66 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  v202 = *(v66 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating);
  v201 = *(v66 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating + 4);
  v74 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__buttonAction;
  swift_beginAccess();
  sub_FBD0(v66 + v74, v56, &qword_4EED80, &unk_3FA8C0);
  v199 = v73;

  v213 = v71;

  v198 = v72;

  sub_3ECAF4();
  sub_FCF8(v56, &qword_4EED80, &unk_3FA8C0);
  v217 = v245[0];
  if (v68)
  {
    v75 = type metadata accessor for Action(0);
    v76 = sub_3CFBEC();
  }

  else
  {
    v75 = 0;
    v76 = 0;
    v245[2] = 0;
    v245[1] = 0;
  }

  v245[0] = v68;
  v245[3] = v75;
  v245[4] = v76;
  v77 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup__titleAction;
  swift_beginAccess();
  sub_FBD0(v66 + v77, v56, &qword_4EED80, &unk_3FA8C0);
  v208 = v68;

  sub_3ECAF4();
  sub_FCF8(v56, &qword_4EED80, &unk_3FA8C0);
  v216 = v243;
  sub_FBD0(v215, v56, &qword_4EED80, &unk_3FA8C0);
  sub_3ECAF4();
  sub_FCF8(v56, &qword_4EED80, &unk_3FA8C0);
  v204 = v243;
  v78 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__contextAction;
  swift_beginAccess();
  sub_FBD0(v66 + v78, v56, &qword_4EED80, &unk_3FA8C0);
  sub_3ECAF4();
  sub_FCF8(v56, &qword_4EED80, &unk_3FA8C0);
  v215 = v243;
  v166 = *(v66 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_presentDetailsAction);
  v79 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__subtitleAction;
  swift_beginAccess();
  sub_FBD0(v66 + v79, v56, &qword_4EED80, &unk_3FA8C0);

  sub_3ECAF4();
  sub_FCF8(v56, &qword_4EED80, &unk_3FA8C0);
  v203 = v243;
  v80 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_summary);
  v82 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_caption);
  v81 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_caption + 8);
  v195 = *(v66 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit);
  v180 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTypeIsSerial);
  v83 = v221;
  sub_FBD0(v66 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_assetFileUrl, v221, &unk_4E9EE0, &unk_3F5BC0);
  v84 = sub_3E5F84();
  v185 = *(v84 - 8);
  v186 = v84;
  (*(v185 + 56))(v233, 1, 1);
  v210 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeEntitlementState);
  v177 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_hasFreeVersion);
  v85 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName + 8);
  v175 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName);
  v86 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName + 8);
  v173 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName);
  v87 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTitle + 8);
  v171 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTitle);
  v88 = sub_3E8D24();
  v165 = *(v88 - 8);
  (*(v165 + 56))(v239, 1, 1, v88);
  sub_FBD0(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listContext, v235, &qword_4EF468, &unk_3FA9D0);
  v184 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_referenceTime);
  v183 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_referenceTime + 8);
  v182 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_playerTime);
  v181 = *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_playerTime + 8);
  v172 = v87;

  v178 = v80;
  v89 = v80;
  v176 = v85;

  v174 = v86;

  v90 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__impressionMetrics;
  swift_beginAccess();
  v91 = v66 + v90;
  v92 = v196;
  sub_FBD0(v91, v196, &qword_4EED90, qword_3FA8D0);
  sub_3ECAF4();

  sub_FCF8(v92, &qword_4EED90, qword_3FA8D0);
  type metadata accessor for LibraryEpisodeLockup(0);
  v93 = swift_allocObject();
  v94 = (v93 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid);
  v95 = v179;
  v96 = v211;
  *v94 = v179;
  v94[1] = v96;
  v97 = (v93 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid);
  v98 = v209;
  *v97 = v170;
  v97[1] = v98;
  v99 = v168;
  *(v93 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastAdamId) = v169;
  v100 = v93 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_channelAdamId;
  *v100 = v99;
  *(v100 + 8) = v167;
  *(v93 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_presentDetailsAction) = v166;
  sub_FBD0(v83, v93 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_assetFileUrl, &unk_4E9EE0, &unk_3F5BC0);
  v243 = v95;
  v244 = v96;

  v260._countAndFlagsBits = 45;
  v260._object = 0xE100000000000000;
  sub_3ED3D4(v260);
  v196 = v82;
  if (v81)
  {
    v101 = v81;
  }

  else
  {
    v82 = 7104878;
    v101 = 0xE300000000000000;
  }

  v179 = v81;
  v102 = v165;

  v261._countAndFlagsBits = v82;
  v261._object = v101;
  sub_3ED3D4(v261);

  v262._countAndFlagsBits = 45;
  v262._object = 0xE100000000000000;
  sub_3ED3D4(v262);
  v242[0] = v210;
  v263._countAndFlagsBits = sub_3EE7A4();
  sub_3ED3D4(v263);

  v264._countAndFlagsBits = 45;
  v264._object = 0xE100000000000000;
  sub_3ED3D4(v264);
  if (v213)
  {
    v103 = v212;
  }

  else
  {
    v103 = 7104878;
  }

  if (v213)
  {
    v104 = v213;
  }

  else
  {
    v104 = 0xE300000000000000;
  }

  v265._countAndFlagsBits = v103;
  v265._object = v104;
  sub_3ED3D4(v265);

  v266._countAndFlagsBits = 45;
  v266._object = 0xE100000000000000;
  sub_3ED3D4(v266);
  v105 = v197;
  sub_FBD0(v239, v197, &qword_4EF470, &unk_3FADC0);
  if ((*(v102 + 48))(v105, 1, v88) == 1)
  {
    sub_FCF8(v105, &qword_4EF470, &unk_3FADC0);
    v106 = 0xE400000000000000;
    v107._countAndFlagsBits = 1701736302;
  }

  else
  {
    v108 = sub_3E8D14();
    v106 = v109;
    (*(v102 + 8))(v105, v88);
    v107._countAndFlagsBits = v108;
  }

  v107._object = v106;
  sub_3ED3D4(v107);

  v211 = v243;
  v209 = v244;
  sub_FBD0(v220, v229, &qword_4F1D50, &unk_3F7520);
  v110 = v218;
  sub_FBD0(v230, v218, &qword_4F1D50, &unk_3F7520);
  v111 = v219;
  sub_FBD0(v231, v219, &qword_4F1D50, &unk_3F7520);
  sub_FBD0(v245, &v243, &qword_4EDE00, &qword_3F9910);
  sub_FBD0(v233, v232, &qword_4EF460, &unk_3FADB0);
  v112 = v227;
  sub_FBD0(v239, v227, &qword_4EF470, &unk_3FADC0);
  v113 = v223;
  sub_FBD0(v235, v223, &qword_4EF468, &unk_3FA9D0);
  v114 = sub_3E9104();
  (*(*(v114 - 8) + 56))(v237, 1, 1, v114);
  sub_FBD0(v236, v234, &unk_4E9170, &unk_3F4890);
  v115 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup__titleAction;
  v242[0] = 0;
  type metadata accessor for Action(0);
  sub_3ECAE4();
  *(v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_disabled) = 0;
  v116 = v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeNumber;
  *v116 = v188;
  *(v116 + 8) = v187;
  v117 = v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_seasonNumber;
  *v117 = v190;
  *(v117 + 8) = v189;
  *(v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeType) = v192;
  sub_FBD0(v110, v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showUberArtwork, &qword_4F1D50, &unk_3F7520);
  *(v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_mediaType) = v191;
  v118 = (v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_caption);
  v119 = v178;
  v120 = v179;
  *v118 = v196;
  v118[1] = v120;
  *(v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_summary) = v119;
  *(v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_transcript) = 0;
  swift_beginAccess();
  v121 = v216;

  sub_FCF8(v93 + v115, &qword_4EED80, &unk_3FA8C0);
  v241[0] = v121;
  sub_3ECAE4();
  swift_endAccess();
  v122 = v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration;
  *v122 = v194;
  *(v122 + 8) = v193;
  *(v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeEntitlementState) = v210;
  *(v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_hasFreeVersion) = v177;
  v123 = (v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName);
  v124 = v176;
  *v123 = v175;
  v123[1] = v124;
  v125 = (v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName);
  v126 = v174;
  *v125 = v173;
  v125[1] = v126;
  v127 = (v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTitle);
  v128 = v172;
  *v127 = v171;
  v127[1] = v128;
  *(v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showDisplayType) = 3;
  *(v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTypeIsSerial) = v180;
  sub_FBD0(v112, v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listenNowReason, &qword_4EF470, &unk_3FADC0);
  sub_FBD0(v111, v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeArtwork, &qword_4F1D50, &unk_3F7520);
  v129 = v205;
  sub_FBD0(v113, v205, &qword_4EF468, &unk_3FA9D0);
  v130 = sub_3E7CB4();
  v131 = *(v130 - 8);
  v132 = *(v131 + 48);
  if (v132(v129, 1, v130) == 1)
  {
    v133 = v206;
    (*(v131 + 56))(v206, 1, 1, v130);
    if (v132(v129, 1, v130) != 1)
    {
      sub_FCF8(v129, &qword_4EF468, &unk_3FA9D0);
    }
  }

  else
  {
    v133 = v206;
    (*(v131 + 32))(v206, v129, v130);
    (*(v131 + 56))(v133, 0, 1, v130);
  }

  sub_FACC(v133, v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listContext, &qword_4EF468, &unk_3FA9D0);
  v134 = v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_referenceTime;
  *v134 = v184;
  *(v134 + 8) = v183;
  v135 = v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_playerTime;
  *v135 = v182;
  *(v135 + 8) = v181;
  sub_FBD0(v237, v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_thinClientEpisodeState, &qword_4EF420, &unk_3FA9C0);
  v136 = sub_3E82A4();
  v210 = v137;
  v206 = v138;
  LODWORD(v205) = v139;
  sub_FBD0(v229, v228, &qword_4F1D50, &unk_3F7520);
  v140 = v207;
  sub_FBD0(v232, v207, &qword_4EF460, &unk_3FADB0);
  v142 = v185;
  v141 = v186;
  if ((*(v185 + 48))(v140, 1, v186) == 1)
  {
    sub_FCF8(v140, &qword_4EF460, &unk_3FADB0);
    v197 = 0;
  }

  else
  {
    v143 = v162;
    (*(v142 + 16))(v162, v140, v141);
    (*(v163 + 104))(v143, enum case for LazyDate.State.valid(_:), v164);
    v197 = sub_3E6AF4();
    (*(v142 + 8))(v140, v141);
  }

  sub_FBD0(&v243, v242, &qword_4EDE00, &qword_3F9910);
  sub_FBD0(v234, v224, &unk_4E9170, &unk_3F4890);
  v207 = v136;
  *(v93 + 32) = 0u;
  *(v93 + 48) = 0u;
  *(v93 + 64) = 0;
  v144 = sub_3EC634();
  v145 = v225;
  (*(*(v144 - 8) + 56))(v225, 1, 1, v144);
  sub_FBD0(v145, v222, &unk_4E9170, &unk_3F4890);
  sub_3ECAE4();
  sub_FCF8(v145, &unk_4E9170, &unk_3F4890);
  v241[0] = 0;
  sub_3ECAE4();
  memset(v241, 0, sizeof(v241));
  sub_FBD0(v241, v240, &qword_4EDE00, &qword_3F9910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170, &qword_3F6E20);
  sub_3ECAE4();
  sub_FCF8(v241, &qword_4EDE00, &qword_3F9910);
  v241[0] = 0;
  sub_3ECAE4();
  v241[0] = 0;
  sub_3ECAE4();
  v241[0] = 0;
  sub_3ECAE4();
  v241[0] = 0;
  sub_3ECAE4();
  v146 = v209;
  *(v93 + 16) = v211;
  *(v93 + 24) = v146;
  *(v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v214;
  v147 = v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v148 = v210;
  *v147 = v207;
  *(v147 + 8) = v148;
  *(v147 + 16) = v206;
  *(v147 + 24) = v205;
  *(v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v195;
  *(v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  sub_FBD0(v228, v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50, &unk_3F7520);
  v149 = (v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v150 = v213;
  *v149 = v212;
  v149[1] = v150;
  *(v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v198;
  v151 = (v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  *v151 = 0;
  v151[1] = 0;
  v152 = (v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  *v152 = 0;
  v152[1] = 0;
  *(v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v153 = (v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  v154 = v199;
  *v153 = v200;
  v153[1] = v154;
  *(v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = v197;
  v155 = (v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v155 = 0;
  v155[1] = 0;
  v156 = v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  *v156 = v202;
  *(v156 + 4) = v201;
  v157 = v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v157 = 0;
  *(v157 + 8) = 1;
  v240[0] = v217;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(v242, v241, &qword_4EDE00, &qword_3F9910);
  sub_FBD0(v241, v240, &qword_4EDE00, &qword_3F9910);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88, &unk_3FA9E0);
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v241, &qword_4EDE00, &qword_3F9910);
  v240[0] = v215;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v240[0] = v204;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v240[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v240[0] = v203;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v159 = v224;
  v158 = v225;
  sub_FBD0(v224, v225, &unk_4E9170, &unk_3F4890);
  sub_FBD0(v158, v222, &unk_4E9170, &unk_3F4890);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();

  sub_FCF8(v158, &unk_4E9170, &unk_3F4890);
  sub_FCF8(v159, &unk_4E9170, &unk_3F4890);
  sub_FCF8(v242, &qword_4EDE00, &qword_3F9910);
  sub_FCF8(v228, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v234, &unk_4E9170, &unk_3F4890);
  sub_FCF8(v237, &qword_4EF420, &unk_3FA9C0);
  sub_FCF8(v223, &qword_4EF468, &unk_3FA9D0);
  sub_FCF8(v232, &qword_4EF460, &unk_3FADB0);
  sub_FCF8(&v243, &qword_4EDE00, &qword_3F9910);
  sub_FCF8(v219, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v218, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v229, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v236, &unk_4E9170, &unk_3F4890);
  sub_FCF8(v235, &qword_4EF468, &unk_3FA9D0);
  sub_FCF8(v239, &qword_4EF470, &unk_3FADC0);
  sub_FCF8(v233, &qword_4EF460, &unk_3FADB0);
  sub_FCF8(v221, &unk_4E9EE0, &unk_3F5BC0);
  sub_FCF8(v231, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v230, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v220, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v245, &qword_4EDE00, &qword_3F9910);
  sub_FCF8(v227, &qword_4EF470, &unk_3FADC0);
  return v93;
}

uint64_t sub_3CF59C(uint64_t a1)
{
  v41[3] = a1;
  v2 = sub_3E5FC4();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v46 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v42);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3EC544();
  __chkstk_darwin(v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v7 - 8);
  v9 = v41 - v8;
  v10 = sub_3EC1F4();
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v43 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  if (*(v1 + 24))
  {
    v15 = sub_3E80D4();
  }

  else
  {
    v49 = *(v1 + 16);
    sub_17A28();
    v15 = sub_3EE1F4();
  }

  v41[2] = v15;
  v41[1] = sub_3E85B4();
  v16 = sub_3E5DC4();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850, &qword_3F5A50);
  sub_3EC044();
  *(swift_allocObject() + 16) = xmmword_3F5630;
  sub_3E8504();
  sub_3EBFC4();

  sub_3EC534();
  sub_3EC1C4();
  sub_FCF8(v9, &unk_4E9EE0, &unk_3F5BC0);
  v17 = *(v1 + 64);
  v18 = *(v1 + 72);
  v19 = *(v1 + OBJC_IVAR____TtC8ShelfKit14StationEpisode_stationUuid);
  v20 = *(v1 + OBJC_IVAR____TtC8ShelfKit14StationEpisode_stationUuid + 8);
  v51 = 1;
  v50 = 1;
  *v5 = v17;
  *(v5 + 1) = v18;
  *(v5 + 2) = v19;
  *(v5 + 3) = v20;
  *(v5 + 4) = 0;
  v5[40] = 1;
  *(v5 + 6) = 0;
  v5[56] = 1;
  swift_storeEnumTagMultiPayload();
  v21 = objc_opt_self();

  v22 = [v21 mainBundle];
  v40._countAndFlagsBits = 0xE000000000000000;
  v52._object = 0x800000000042E990;
  v52._countAndFlagsBits = 0xD00000000000001BLL;
  v53.value._countAndFlagsBits = 0;
  v53.value._object = 0;
  v23.super.isa = v22;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  v42 = sub_3E5A74(v52, v53, v23, v54, 0, v40);
  v25 = v24;

  v26 = v43;
  v27 = v44;
  v28 = *(v44 + 16);
  v29 = v45;
  v28(v43, v14, v45);
  type metadata accessor for FlowAction(0);
  v30 = swift_allocObject();
  sub_FC38(v5, v30 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v31 = (v30 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v31 = 0;
  v31[1] = 0;
  *(v30 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
  *(v30 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v30 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v28((v30 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics), v26, v29);
  v32 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v33 = sub_3EC634();
  (*(*(v33 - 8) + 56))(v30 + v32, 1, 1, v33);
  v34 = v46;
  sub_3E5FB4();
  v35 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v37 = v36;
  (*(v47 + 8))(v34, v48);
  v38 = *(v27 + 8);
  v38(v26, v29);
  sub_FC9C(v5);
  v38(v14, v29);
  *(v30 + 16) = v35;
  *(v30 + 24) = v37;
  *(v30 + 32) = v42;
  *(v30 + 40) = v25;
  *(v30 + 48) = 48;
  return v30;
}

unint64_t sub_3CFBEC()
{
  result = qword_4EDDF8;
  if (!qword_4EDDF8)
  {
    v3 = type metadata accessor for Action(255);
    result = swift_getWitnessTable("iJ\v", v3, v0, v1);
    atomic_store(result, &qword_4EDDF8);
  }

  return result;
}

void *StationEpisode.deinit()
{
  v0 = Episode.deinit();

  return v0;
}

uint64_t StationEpisode.__deallocating_deinit()
{
  Episode.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StationEpisode(uint64_t a1)
{
  result = qword_505F98;
  if (!qword_505F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of StationEpisode.__allocating_init(title:numberedTitle:uuid:podcastUuid:podcastAdamId:stationUuid:adamId:channelAdamId:channelName:artwork:episodeArtwork:author:summary:releaseDate:streamUrl:assetUrl:mediaType:isExplicit:guid:duration:seasonNumber:episodeNumber:episodeType:showTitle:showTypeIsSerial:showTypeSetting:listenNowReason:episodeEntitlementState:hasFreeVersion:subscriptionName:storeTrackId:upNextScore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  LOBYTE(a35) = a35 & 1;
  LOBYTE(a33) = a33 & 1;
  LOBYTE(a31) = a31 & 1;
  LOBYTE(a10) = a10 & 1;
  LOBYTE(a14) = a14 & 1;
  LOBYTE(a16) = a16 & 1;
  v39 = *(v38 + 440);

  return v39(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t dispatch thunk of StationEpisode.__allocating_init(title:numberedTitle:uuid:podcastUuid:podcastAdamId:adamId:channelAdamId:channelName:artwork:showUberArtwork:episodeArtwork:author:summary:releaseDate:streamUrl:assetUrl:mediaType:isExplicit:guid:duration:seasonNumber:episodeNumber:episodeType:showTitle:showDisplayType:showTypeIsSerial:showTypeSetting:listenNowReason:episodeEntitlementState:hasFreeVersion:subscriptionName:storeTrackId:upNextScore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  LOBYTE(a34) = a34 & 1;
  LOBYTE(a32) = a32 & 1;
  LOBYTE(a30) = a30 & 1;
  LOBYTE(a10) = a10 & 1;
  LOBYTE(a12) = a12 & 1;
  LOBYTE(a14) = a14 & 1;
  v38 = *(v37 + 448);

  return v38(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

void *StationShow.__allocating_init(uuid:stationUuid:podcast:episodeCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  return result;
}

void *StationShow.init(uuid:stationUuid:podcast:episodeCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

uint64_t sub_3D03DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v1 - 8);
  v118 = &v103 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v124 = &v103 - v4;
  v117 = sub_3E5FC4();
  v120 = *(v117 - 8);
  __chkstk_darwin(v117);
  v110 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v6 - 8);
  v112 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v113 = &v103 - v9;
  __chkstk_darwin(v10);
  v123 = &v103 - v11;
  __chkstk_darwin(v12);
  v126 = &v103 - v13;
  v119 = sub_3EC1F4();
  v125 = *(v119 - 8);
  __chkstk_darwin(v119);
  v15 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v15;
  __chkstk_darwin(v16);
  v18 = &v103 - v17;
  v19 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v19);
  v21 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = (&v103 - v23);
  v25 = v0[4];
  v26 = v0[5];
  v28 = v0[3];
  v108 = v0[2];
  v27 = v108;
  v109 = v25;
  v115 = v0;
  v29 = v0[6];
  v30 = *(v29 + 48);
  v31 = *(v29 + 56);
  v32 = *(v29 + 32);
  v33 = *(v29 + 40);
  *v24 = v25;
  v24[1] = v26;
  v106 = v28;
  v107 = v26;
  v24[2] = v27;
  v24[3] = v28;
  v24[4] = v30;
  v24[5] = v31;
  v24[6] = v32;
  v24[7] = v33;
  swift_storeEnumTagMultiPayload();
  v114 = v24;
  v111 = v21;
  sub_FC38(v24, v21);

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v34 = v18;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  type metadata accessor for FlowAction(0);
  v35 = swift_allocObject();
  sub_FC38(v21, v35 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v36 = (v35 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v36 = 0;
  v36[1] = 0;
  *(v35 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
  *(v35 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v35 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  (*(v125 + 16))(v15, v18, v119);
  v116 = sub_3EC634();
  v37 = *(v116 - 8);
  v38 = *(v37 + 56);
  v121 = v37 + 56;
  v122 = v38;
  v39 = v126;
  v38(v126, 1, 1, v116);
  v40 = v110;
  sub_3E5FB4();
  v41 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v43 = v42;
  v44 = *(v120 + 8);
  v120 += 8;
  v105 = v44;
  v44(v40, v117);
  v45 = v125;
  v46 = v119;
  (*(v125 + 8))(v34, v119);
  sub_FC9C(v111);
  *(v35 + 16) = v41;
  *(v35 + 24) = v43;
  *(v35 + 32) = 0;
  *(v35 + 40) = 0;
  *(v35 + 48) = 48;
  v47 = *(v45 + 32);
  v125 = v45 + 32;
  v104 = v47;
  v47(v35 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v103, v46);
  v111 = v35;
  v48 = v39;
  sub_14A10(v39, v35 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  v49 = *(v29 + 32);
  v50 = *(v29 + 40);
  v51 = *(v29 + 48);
  v52 = *(v29 + 56);
  *&v133 = v109;
  *(&v133 + 1) = v107;
  *&v134 = v108;
  *(&v134 + 1) = v106;
  *&v135 = v51;
  *(&v135 + 1) = v52;
  *&v136 = v49;
  *(&v136 + 1) = v50;
  type metadata accessor for LibraryPodcastContextAction(0);
  v53 = swift_allocObject();
  v54 = (v53 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_podcastUuid);
  *v54 = v49;
  v54[1] = v50;
  v55 = v53 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType;
  v56 = v136;
  *(v55 + 32) = v135;
  *(v55 + 48) = v56;
  v57 = v134;
  *v55 = v133;
  *(v55 + 16) = v57;
  *(v55 + 64) = 5;
  v122(v48, 1, 1, v116);
  swift_bridgeObjectRetain_n();
  sub_FBD0(&v133, v131, &qword_506190, &qword_420DC0);

  v58 = v34;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v59 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v61 = v60;
  sub_FCF8(&v133, &qword_506190, &qword_420DC0);
  v105(v40, v117);
  *(v53 + 16) = v59;
  *(v53 + 24) = v61;
  *(v53 + 32) = 0;
  *(v53 + 40) = 0;
  *(v53 + 48) = 32;
  v104(v53 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v58, v119);
  v125 = v53;
  sub_14A10(v126, v53 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  v62 = *(v29 + 32);
  v63 = *(v29 + 40);
  if (*(v29 + 24))
  {

    v120 = sub_3E9484();
  }

  else
  {
    v120 = *(v29 + 16);
  }

  sub_FBD0(v29 + OBJC_IVAR____TtC8ShelfKit7Podcast_artwork, v124, &qword_4F1D50, &unk_3F7520);
  v64 = *(v29 + 48);
  v65 = *(v29 + 56);
  v66 = *(v29 + 64);
  v67 = *(v29 + 72);
  v132 = 0;
  memset(v131, 0, sizeof(v131));
  LODWORD(v119) = *(v29 + OBJC_IVAR____TtC8ShelfKit7Podcast_isExplicit);
  v68 = v116;
  v122(v123, 1, 1, v116);
  type metadata accessor for LibraryShowLockup(0);
  v69 = swift_allocObject();
  v70 = (v69 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid);
  *v70 = v62;
  v70[1] = v63;
  v71 = (v69 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_name);
  v117 = v64;
  *v71 = v64;
  v71[1] = v65;
  v110 = v65;
  *(v69 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_providerAction) = 0;
  v72 = v69 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_addedDate;
  *v72 = v66;
  *(v72 + 8) = v67;
  *(v69 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_isSubscribed) = 2;
  if (v65)
  {
    v73 = v64;
  }

  else
  {
    v73 = 0;
  }

  if (v65)
  {
    v74 = v65;
  }

  else
  {
    v74 = 0xE000000000000000;
  }

  v129 = v62;
  v130 = v63;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v137._countAndFlagsBits = v73;
  v137._object = v74;
  sub_3ED3D4(v137);

  v105 = v130;
  v106 = v129;
  v75 = v120;
  v76 = sub_3E8284();
  v107 = v78;
  v108 = v77;
  LODWORD(v109) = v79;
  v80 = v76;
  sub_FBD0(v124, v118, &qword_4F1D50, &unk_3F7520);
  sub_FBD0(v131, &v129, &qword_4EDE00, &qword_3F9910);
  sub_FBD0(v123, v126, &unk_4E9170, &unk_3F4890);
  *(v69 + 32) = 0u;
  *(v69 + 48) = 0u;
  *(v69 + 64) = 0;
  v81 = v113;
  v122(v113, 1, 1, v68);
  v82 = v112;
  sub_FBD0(v81, v112, &unk_4E9170, &unk_3F4890);
  sub_3ECAE4();
  sub_FCF8(v81, &unk_4E9170, &unk_3F4890);
  v128[0] = 0;
  type metadata accessor for Action(0);
  sub_3ECAE4();
  memset(v128, 0, sizeof(v128));
  sub_FBD0(v128, v127, &qword_4EDE00, &qword_3F9910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170, &qword_3F6E20);
  sub_3ECAE4();
  sub_FCF8(v128, &qword_4EDE00, &qword_3F9910);
  v128[0] = 0;
  sub_3ECAE4();
  v128[0] = 0;
  sub_3ECAE4();
  v128[0] = 0;
  sub_3ECAE4();
  v128[0] = 0;
  sub_3ECAE4();
  v83 = v105;
  *(v69 + 16) = v106;
  *(v69 + 24) = v83;
  *(v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v75;
  v84 = v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v85 = v107;
  v86 = v108;
  *v84 = v80;
  *(v84 + 8) = v86;
  *(v84 + 16) = v85;
  *(v84 + 24) = v109;
  *(v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v119;
  *(v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  v87 = v118;
  sub_FBD0(v118, v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50, &unk_3F7520);
  v88 = (v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v89 = v117;
  v90 = v110;
  *v88 = v117;
  v88[1] = v90;
  *(v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = 0;
  v91 = (v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  *v91 = 0;
  v91[1] = 0;
  v92 = (v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  *v92 = v89;
  v92[1] = v90;
  *(v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v93 = (v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  *v93 = 0;
  v93[1] = 0;
  *(v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = 0;
  v94 = (v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v94 = 0;
  v94[1] = 0;
  v95 = v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  *v95 = 0;
  *(v95 + 4) = 1;
  v96 = v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v96 = 0;
  *(v96 + 8) = 1;
  v127[0] = 0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(&v129, v128, &qword_4EDE00, &qword_3F9910);
  sub_FBD0(v128, v127, &qword_4EDE00, &qword_3F9910);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88, &unk_3FA9E0);
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v128, &qword_4EDE00, &qword_3F9910);
  v127[0] = v125;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v127[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v127[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v127[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v97 = v126;
  sub_FBD0(v126, v81, &unk_4E9170, &unk_3F4890);
  sub_FBD0(v81, v82, &unk_4E9170, &unk_3F4890);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90, qword_3FA8D0);
  sub_3ECB04();
  swift_endAccess();

  sub_FCF8(v81, &unk_4E9170, &unk_3F4890);
  sub_FCF8(v97, &unk_4E9170, &unk_3F4890);
  sub_FCF8(&v129, &qword_4EDE00, &qword_3F9910);
  sub_FCF8(v87, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v123, &unk_4E9170, &unk_3F4890);
  sub_FCF8(v131, &qword_4EDE00, &qword_3F9910);
  sub_FCF8(v124, &qword_4F1D50, &unk_3F7520);
  v98 = v115;
  swift_beginAccess();
  v99 = v98[7];
  v100 = v111;

  v101 = LibraryShowLockup.groupedEpisodesVariant(episodeCount:clickAction:)(v99, v100);

  swift_setDeallocating();
  LegacyLockup.deinit();

  swift_deallocClassInstance();
  sub_FC9C(v114);
  return v101;
}

uint64_t StationShow.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_3D139C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

void sub_3D13E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 56) = v2;
}

uint64_t StoreTab.Identifier.init(navigationTab:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if ((result - 1) >= 0x12)
  {
    result = sub_29EB8(result);
    v3 = 4;
  }

  else
  {
    v3 = byte_420F02[result - 1];
  }

  *a2 = v3;
  return result;
}

ShelfKit::StoreTab::Identifier_optional __swiftcall StoreTab.Identifier.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4B31E8;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t StoreTab.Identifier.rawValue.getter()
{
  v1 = 0x686372616573;
  v2 = 0x6573616863727570;
  if (*v0 != 2)
  {
    v2 = 0x64616F6C6E776F64;
  }

  if (*v0)
  {
    v1 = 0x737472616863;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_3D1630()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

double sub_3D16F0(uint64_t a1)
{
  sub_3ED394();

  return result;
}

Swift::Int sub_3D179C(uint64_t a1)
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

void sub_3D1864(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x686372616573;
  v4 = 0x6573616863727570;
  v5 = 0xE900000000000064;
  if (*v1 != 2)
  {
    v4 = 0x64616F6C6E776F64;
    v5 = 0xE900000000000073;
  }

  if (*v1)
  {
    v3 = 0x737472616863;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t StoreTab.pageContext.getter()
{
  sub_68DC4();
  v0 = sub_3EE154();

  return v0;
}

uint64_t StoreTab.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StoreTab(0) + 20);

  return sub_189AC(v3, a1);
}

uint64_t type metadata accessor for StoreTab(uint64_t a1)
{
  result = qword_5062D8;
  if (!qword_5062D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StoreTab.init(identifier:url:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v4 = &a3[*(type metadata accessor for StoreTab(0) + 20)];

  return sub_1893C(a2, v4);
}

uint64_t StoreTab.init(jsonObject:)@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-v5];
  v7 = sub_3EBDF4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_3EBE04();
  sub_3D1CE8();
  sub_3EBCF4();
  v11 = *(v8 + 8);
  v11(v10, v7);
  v12 = v17;
  if (v17 == 4)
  {
    v11(a1, v7);
    v13 = type metadata accessor for StoreTab(0);
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }

  else
  {
    sub_3EBE04();
    sub_3EBD14();
    v11(a1, v7);
    v11(v10, v7);
    *a2 = v12;
    v15 = type metadata accessor for StoreTab(0);
    sub_1893C(v6, &a2[*(v15 + 20)]);
    return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
  }
}

unint64_t sub_3D1CE8()
{
  result = qword_506270;
  if (!qword_506270)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoreTab.Identifier, &type metadata for StoreTab.Identifier, v0, v1);
    atomic_store(result, &qword_506270);
  }

  return result;
}

unint64_t sub_3D1D40()
{
  result = qword_506278;
  if (!qword_506278)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoreTab.Identifier, &type metadata for StoreTab.Identifier, v0, v1);
    atomic_store(result, &qword_506278);
  }

  return result;
}

uint64_t sub_3D1DA8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 >= 4)
    {
      return v4 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_3D1E70(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_3D1F1C(uint64_t a1)
{
  sub_1F630(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t SubscriptionConfirmationSheetHandler.__allocating_init(asPartOf:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_3D5254(a1);

  return v2;
}

uint64_t SubscriptionConfirmationSheetHandler.init(asPartOf:)(uint64_t a1)
{
  v1 = sub_3D5254(a1);

  return v1;
}

void SubscriptionConfirmationSheetHandler.presentSubscriptionConfirmation(for:)(uint64_t a1)
{
  v3 = sub_3E9A04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v39 - v8;
  __chkstk_darwin(v10);
  v12 = v39 - v11;
  v13 = sub_3E7424();
  v41 = v13;
  v42 = sub_3D5844(&qword_4F07A0, &type metadata accessor for Podcasts, &protocol conformance descriptor for Podcasts);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(aBlock);
  (*(*(v13 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.entitlements(_:), v13);
  LOBYTE(v13) = sub_3E6C64();
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  if (v13)
  {
    if (*(a1 + 16))
    {
      v39[1] = v1;
      sub_3E99E4();

      v15 = sub_3E99F4();
      v16 = sub_3ED9F4();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        aBlock[0] = v18;
        *v17 = 136315138;
        v19 = sub_3ED804();
        v21 = sub_2EDD0(v19, v20, aBlock);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_0, v15, v16, "Attempting to present subscription confirmation sheet for channel id's: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
      }

      (*(v4 + 8))(v12, v3);
      v22 = [objc_opt_self() sharedInstance];
      v23 = [v22 privateQueueContext];

      v24 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTChannelEntityName];
      v25 = objc_opt_self();
      isa = sub_3ED7E4().super.isa;
      v27 = [v25 predicateForChannelStoreIds:isa];

      [v24 setPredicate:v27];
      v28 = swift_allocObject();
      swift_weakInit();
      v29 = swift_allocObject();
      v29[2] = v28;
      v29[3] = v23;
      v29[4] = v24;
      v42 = sub_3D55A8;
      v43 = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1279E4;
      v41 = &block_descriptor_32;
      v30 = _Block_copy(aBlock);
      v31 = v23;
      v32 = v24;

      [v31 performBlock:v30];
      _Block_release(v30);
    }

    else
    {
      sub_3E99E4();
      v36 = sub_3E99F4();
      v37 = sub_3ED9F4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_0, v36, v37, "Not displaying subscription confirmation sheets because there are no channel subscriptions that were just activated.", v38, 2u);
      }

      (*(v4 + 8))(v9, v3);
    }
  }

  else
  {
    sub_3E99E4();
    v33 = sub_3E99F4();
    v34 = sub_3ED9F4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "Not displaying subscription confirmation sheet because the Entitlements feature flag is not enabled.", v35, 2u);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_3D25B0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_3EBBC4();
  v43 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EBC14();
  v41 = *(v8 - 8);
  v42 = v8;
  __chkstk_darwin(v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3E9A04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = sub_3D2D80(a2, a3);
    v21 = v20;
    v22 = (v20 >> 62);
    if (v20 >> 62)
    {
      v23 = sub_3EE5A4();
      if (v23 != 1)
      {
LABEL_4:
        if (!v23)
        {

          return;
        }

        v40 = v5;
        v27 = v19[7];
        v28 = v19[8];
        __swift_project_boxed_opaque_existential_1(v19 + 4, v27);
        a2 = (*(v28 + 8))(v21, v27, v28);

        sub_3E99E4();

        v22 = sub_3E99F4();
        LOBYTE(v21) = sub_3ED9F4();
        if (!os_log_type_enabled(v22, v21))
        {

          goto LABEL_14;
        }

        v5 = swift_slowAlloc();
        *v5 = 134217984;
        if (!(a2 >> 62))
        {
          v29 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
LABEL_12:
          *(v5 + 4) = v29;

          _os_log_impl(&dword_0, v22, v21, "Created %ld channel lockups for the multiple subscription confirmation sheet.", v5, 0xCu);

LABEL_14:
          (*(v12 + 8))(v14, v11);
          sub_36174(0, &qword_4F10B0, OS_dispatch_queue_ptr);
          v30 = sub_3EDBC4();
          v31 = swift_allocObject();
          *(v31 + 16) = v19;
          *(v31 + 24) = a2;
          v49 = sub_3D565C;
          v50 = v31;
          aBlock = _NSConcreteStackBlock;
          v46 = 1107296256;
          v47 = sub_1279E4;
          v48 = &block_descriptor_11;
          v32 = _Block_copy(&aBlock);

          sub_3EBBE4();
          aBlock = _swiftEmptyArrayStorage;
          sub_3D5844(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
          sub_318924(&qword_506A30, &unk_503DE0, &unk_40B9F0);
          v33 = v40;
          sub_3EE244();
          sub_3EDBE4();
          _Block_release(v32);

          (*(v43 + 8))(v7, v33);
          (*(v41 + 8))(v10, v42);
          return;
        }

LABEL_27:
        v29 = sub_3EE5A4();
        goto LABEL_12;
      }
    }

    else
    {
      v23 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
      if (v23 != 1)
      {
        goto LABEL_4;
      }
    }

    if (v22)
    {
      if (sub_3EE5A4())
      {
        goto LABEL_18;
      }
    }

    else if (*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_18:
      if ((v21 & 0xC000000000000001) != 0)
      {
        v34 = v5;
        v35 = sub_3EE3F4();
      }

      else
      {
        if (!*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_27;
        }

        v34 = v5;
        v35 = *(v21 + 32);
      }

      v36 = v35;

      v40 = v19[2];
      v37 = swift_allocObject();
      *(v37 + 16) = v19;
      *(v37 + 24) = v36;
      v49 = sub_3D56C4;
      v50 = v37;
      aBlock = _NSConcreteStackBlock;
      v46 = 1107296256;
      v47 = sub_1279E4;
      v48 = &block_descriptor_17;
      v38 = _Block_copy(&aBlock);

      v39 = v36;
      sub_3EBBE4();
      v44 = _swiftEmptyArrayStorage;
      sub_3D5844(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
      sub_318924(&qword_506A30, &unk_503DE0, &unk_40B9F0);
      sub_3EE244();
      sub_3EDBE4();
      _Block_release(v38);

      (*(v43 + 8))(v7, v34);
      (*(v41 + 8))(v10, v42);

      goto LABEL_24;
    }

LABEL_24:

    return;
  }

  sub_3E99E4();
  v24 = sub_3E99F4();
  v25 = sub_3ED9D4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_0, v24, v25, "Could not unwrap self in SubscriptionConfirmationSheetHandler. Cannot present subscription confirmation sheet.", v26, 2u);
  }

  (*(v12 + 8))(v17, v11);
}

uint64_t sub_3D2D80(uint64_t a1, uint64_t a2)
{
  v2 = sub_3E9A04();
  __chkstk_darwin(v2);
  sub_36174(0, &qword_4F2EA0, MTChannel_ptr);
  return sub_3EDDA4();
}

uint64_t sub_3D2F0C(uint64_t a1)
{
  v3 = sub_3E9A04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E99E4();
  v7 = sub_3E99F4();
  v8 = sub_3ED9F4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v26 = v3;
    v10 = v9;
    v11 = swift_slowAlloc();
    v27 = a1;
    v28[0] = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    sub_17A28();
    v12 = sub_3EE1F4();
    v14 = sub_2EDD0(v12, v13, v28);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_0, v7, v8, "Fetching UpsellInformation for confirmation sheet for channel id: %{private,mask.hash}s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);

    (*(v4 + 8))(v6, v26);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v15;
  v17 = v1[12];
  v18 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v17);
  v19 = *(v18 + 40);

  v19(a1, v17, v18);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a1;
  v21[4] = sub_3D5738;
  v21[5] = v16;
  v22 = sub_36174(0, &qword_4F10B0, OS_dispatch_queue_ptr);

  v23 = sub_3EDBC4();
  v28[3] = v22;
  v28[4] = &protocol witness table for OS_dispatch_queue;
  v28[0] = v23;
  sub_3ECD44();

  __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

char *sub_3D324C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_3E5FC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v8 - 8);
  v10 = &v63 - v9;
  v11 = sub_3EC1F4();
  v72 = *(v11 - 8);
  __chkstk_darwin(v11);
  v71 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v70 = &v63 - v14;
  v68 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v68);
  v69 = (&v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_3E9A04();
  v67 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v11;
  if (a1 >> 62)
  {
    v19 = sub_3EE5A4();
  }

  else
  {
    v19 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v76 = v4;
  v77 = v2;
  v78 = v10;
  v74 = v7;
  v75 = v5;
  if (v19)
  {
    v80 = _swiftEmptyArrayStorage;
    result = sub_41BA8(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      __break(1u);
      return result;
    }

    v65 = v18;
    v66 = v16;
    v21 = v80;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v22 = a1;
      v23 = 0;
      do
      {
        v79 = *(sub_3EE3F4() + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
        sub_17A28();
        v24 = sub_3EE1F4();
        v26 = v25;
        swift_unknownObjectRelease();
        v80 = v21;
        v28 = v21[2];
        v27 = v21[3];
        if (v28 >= v27 >> 1)
        {
          sub_41BA8((v27 > 1), v28 + 1, 1);
          v21 = v80;
        }

        ++v23;
        v21[2] = v28 + 1;
        v29 = &v21[2 * v28];
        v29[4] = v24;
        v29[5] = v26;
      }

      while (v19 != v23);
    }

    else
    {
      v22 = a1;
      v30 = (a1 + 32);
      sub_17A28();
      do
      {
        v79 = *(*v30 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
        v31 = sub_3EE1F4();
        v80 = v21;
        v34 = v21[2];
        v33 = v21[3];
        if (v34 >= v33 >> 1)
        {
          v64 = v31;
          v36 = v32;
          sub_41BA8((v33 > 1), v34 + 1, 1);
          v32 = v36;
          v31 = v64;
          v21 = v80;
        }

        v21[2] = v34 + 1;
        v35 = &v21[2 * v34];
        v35[4] = v31;
        v35[5] = v32;
        ++v30;
        --v19;
      }

      while (v19);
    }

    v10 = v78;
    a1 = v22;
    v18 = v65;
    v16 = v66;
  }

  sub_3E99E4();

  v37 = sub_3E99F4();
  v38 = sub_3ED9F4();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v80 = v40;
    *v39 = 136315138;
    v41 = sub_3ED594();
    v42 = v18;
    v44 = v43;

    v45 = sub_2EDD0(v41, v44, &v80);

    *(v39 + 4) = v45;
    _os_log_impl(&dword_0, v37, v38, "Presenting multiple subscription confirmation sheet for channel id's: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);

    v46 = v42;
    v10 = v78;
    (*(v67 + 8))(v46, v16);
  }

  else
  {

    (*(v67 + 8))(v18, v16);
  }

  v47 = [objc_opt_self() currentTraitCollection];
  v48 = [v47 userInterfaceIdiom];

  if (v48 == &dword_0 + 1)
  {
    v49 = 5;
  }

  else
  {
    v49 = 4;
  }

  v50 = v69;
  *v69 = a1;
  swift_storeEnumTagMultiPayload();

  v51 = v70;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  type metadata accessor for FlowAction(0);
  v52 = swift_allocObject();
  sub_FC38(v50, v52 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v53 = (v52 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v53 = 0;
  v53[1] = 0;
  *(v52 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = v49;
  *(v52 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v52 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v55 = v71;
  v54 = v72;
  v56 = v73;
  (*(v72 + 16))(v71, v51, v73);
  v57 = sub_3EC634();
  (*(*(v57 - 8) + 56))(v10, 1, 1, v57);
  v58 = v74;
  sub_3E5FB4();
  v59 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v61 = v60;
  (*(v75 + 8))(v58, v76);
  (*(v54 + 8))(v51, v56);
  sub_FC9C(v50);
  *(v52 + 16) = v59;
  *(v52 + 24) = v61;
  *(v52 + 32) = 0;
  *(v52 + 40) = 0;
  *(v52 + 48) = 48;
  (*(v54 + 32))(v52 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v55, v56);
  sub_14A10(v10, v52 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  sub_3D4B84(v52, v77, v62);
}

uint64_t sub_3D39E4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_3E9A04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E99E4();
  v9 = sub_3E99F4();
  v10 = sub_3ED9F4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v20 = a2;
    v21[0] = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_17A28();
    v14 = sub_3EE1F4();
    v16 = sub_2EDD0(v14, v15, v21);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_0, v9, v10, "Fetched UpsellInformation for confirmation sheet for channel id: %{private,mask.hash}s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);

    a1 = v19;
  }

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_3D3BF4(a1);
  }

  return result;
}

uint64_t sub_3D3BF4(void *a1)
{
  v22 = a1;
  v1 = sub_3EBBC4();
  v24 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_3EBC14();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3E9A04();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E99E4();
  v11 = sub_3E99F4();
  v12 = sub_3ED9F4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = v6;
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "Presenting single subscription confirmation sheet.", v13, 2u);
    v6 = v21;
  }

  (*(v8 + 8))(v10, v7);
  sub_36174(0, &qword_4F10B0, OS_dispatch_queue_ptr);
  v14 = sub_3EDBC4();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v17 = v22;
  *(v16 + 16) = v22;
  *(v16 + 24) = v15;
  aBlock[4] = sub_3D583C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_38_0;
  v18 = _Block_copy(aBlock);
  v19 = v17;

  sub_3EBBE4();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_3D5844(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
  sub_318924(&qword_506A30, &unk_503DE0, &unk_40B9F0);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v18);

  (*(v24 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v23);
}

uint64_t sub_3D402C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_3EBBC4();
  v24 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3EBC14();
  v22 = *(v12 - 8);
  v23 = v12;
  __chkstk_darwin(v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + 16);

    v19 = swift_allocObject();
    *(v19 + 16) = v15;
    *(v19 + 24) = v16;
    *(v19 + 32) = a3;
    *(v19 + 40) = a4;
    *(v19 + 48) = a5;
    aBlock[4] = sub_3D57DC;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1279E4;
    aBlock[3] = &block_descriptor_31_0;
    v20 = _Block_copy(aBlock);
    sub_3D57F0(v15, v16);

    sub_3EBBE4();
    v25 = _swiftEmptyArrayStorage;
    sub_3D5844(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
    sub_318924(&qword_506A30, &unk_503DE0, &unk_40B9F0);
    sub_3EE244();
    sub_3EDBE4();
    _Block_release(v20);

    (*(v24 + 8))(v11, v9);
    (*(v22 + 8))(v14, v23);
  }

  return result;
}

uint64_t sub_3D434C(void *a1, char a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = sub_3E9A04();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  if (a2)
  {
    sub_3E99E4();
    swift_errorRetain();
    v15 = sub_3E99F4();
    v16 = sub_3ED9D4();
    sub_3D57D0(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v35 = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_3EE8F4();
      v21 = sub_2EDD0(v19, v20, &v35);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_0, v15, v16, "Could not fetch channel upsell information from MAPI with error: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
    }

    return (*(v9 + 8))(v14, v8);
  }

  else
  {
    sub_3E99E4();
    v23 = sub_3E99F4();
    v24 = sub_3ED9F4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v32 = v8;
      v26 = v25;
      v27 = swift_slowAlloc();
      v33 = a4;
      v28 = v27;
      v34 = a3;
      v35 = v27;
      *v26 = 136315138;
      sub_17A28();
      v29 = sub_3EE1F4();
      v31 = sub_2EDD0(v29, v30, &v35);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_0, v23, v24, "Received upsell information from MAPI for channel id: %s. Proceeding to display single subscription confirmation sheet.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      a4 = v33;

      (*(v9 + 8))(v11, v32);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    return a4(a1);
  }
}

uint64_t sub_3D467C(void *a1, uint64_t a2)
{
  v36 = a2;
  v3 = sub_3E5FC4();
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v6 - 8);
  v33 = &v32 - v7;
  v8 = sub_3EC1F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v15);
  v17 = (&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = [objc_opt_self() currentTraitCollection];
  v19 = [v18 userInterfaceIdiom];

  if (v19 == &dword_0 + 1)
  {
    v20 = 5;
  }

  else
  {
    v20 = 4;
  }

  *v17 = a1;
  swift_storeEnumTagMultiPayload();
  v21 = a1;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  type metadata accessor for FlowAction(0);
  v22 = swift_allocObject();
  sub_FC38(v17, v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v23 = (v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v23 = 0;
  v23[1] = 0;
  *(v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = v20;
  *(v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  (*(v9 + 16))(v11, v14, v8);
  v24 = sub_3EC634();
  v25 = v33;
  (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
  sub_3E5FB4();
  v26 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v28 = v27;
  (*(v34 + 8))(v5, v35);
  (*(v9 + 8))(v14, v8);
  sub_FC9C(v17);
  *(v22 + 16) = v26;
  *(v22 + 24) = v28;
  *(v22 + 32) = 0;
  *(v22 + 40) = 0;
  *(v22 + 48) = 48;
  (*(v9 + 32))(v22 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v11, v8);
  sub_14A10(v25, v22 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_3D4B84(v22, Strong, v30);
  }
}

uint64_t SubscriptionConfirmationSheetHandler.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  return v0;
}

uint64_t SubscriptionConfirmationSheetHandler.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_3D4B54@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_3D4B84(uint64_t a1, uint64_t *a2, double a3)
{
  v50 = *a2;
  v5 = sub_3ECE84();
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin(v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3E6654();
  v51 = *(v8 - 8);
  v52 = v8;
  __chkstk_darwin(v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0, &unk_3F7970);
  __chkstk_darwin(v11 - 8);
  v13 = &v46 - v12;
  v14 = sub_3E9A04();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v46 - v19;
  v54[3] = type metadata accessor for FlowAction(0);
  v54[4] = sub_3D5844(&qword_4F8A40, type metadata accessor for FlowAction, "iJ\v");
  v54[0] = a1;
  v21 = objc_opt_self();

  v22 = [v21 sharedApplication];
  v23 = [v22 delegate];

  if (!v23)
  {
    goto LABEL_8;
  }

  if (([v23 respondsToSelector:"window"] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v24 = [v23 window];
  swift_unknownObjectRelease();
  if (!v24)
  {
LABEL_8:
    sub_3E99E4();
    v35 = sub_3E99F4();
    v36 = sub_3ED9D4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "Unable to present subscription confirmation because we could not get the current window.", v37, 2u);
    }

    v38 = *(v15 + 8);
    v39 = v20;
    goto LABEL_11;
  }

  v25 = [v24 rootViewController];
  if (!v25)
  {
    v41 = v24;
    sub_3E99E4();
    v42 = sub_3E99F4();
    v43 = sub_3ED9D4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_0, v42, v43, "Unable to present subscription confirmation because we could not get the root view controller.", v44, 2u);
    }

    v38 = *(v15 + 8);
    v39 = v17;
LABEL_11:
    v38(v39, v14);
    return __swift_destroy_boxed_opaque_existential_1Tm(v54);
  }

  v47 = v24;
  v26 = v25;
  v27 = UIResponder.nearestActionRunner.getter();
  v29 = v28;

  if (v27)
  {
    type metadata accessor for ActionRunnerOptions(0);

    sub_3EC464();
    v30 = sub_3E6434();
    (*(*(v30 - 8) + 56))(v13, 1, 1, v30);
    v53[3] = v50;
    v53[0] = a2;

    v31 = ActionRunnerOptions.withActionOrigin(context:sender:view:)(v13, v53, 0);

    sub_FCF8(v13, &qword_5005B0, &unk_3F7970);
    sub_FCF8(v53, &unk_501090, &unk_3F48A0);
    ObjectType = swift_getObjectType();
    v34 = v51;
    v33 = v52;
    (*(v51 + 104))(v10, enum case for ActionMetricsBehavior.fromAction(_:), v52);
    ActionRunner.perform(_:withMetrics:asPartOf:)(v54, v10, v31, ObjectType, v29);

    swift_unknownObjectRelease();

    (*(v34 + 8))(v10, v33);
  }

  else
  {
    sub_3ECE34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8, &unk_407330);
    sub_3EBE94();
    *(swift_allocObject() + 16) = xmmword_3F5630;
    sub_3EBE14();
    v45 = v49;
    sub_3ECB94();

    (*(v48 + 8))(v7, v45);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v54);
}

uint64_t sub_3D5254(uint64_t a1)
{
  v3 = sub_3EDB54();
  __chkstk_darwin(v3);
  v4 = sub_3EDBB4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EBC14();
  __chkstk_darwin(v8 - 8);
  v9 = sub_36174(0, &qword_4F10B0, OS_dispatch_queue_ptr);
  v11[1] = &OBJC_IVAR____TtC8ShelfKit36SubscriptionConfirmationSheetHandler_channelLockupGenerator;
  v11[2] = v9;
  sub_3EBC04();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  *&v12[0] = _swiftEmptyArrayStorage;
  sub_3D5844(&qword_4F1CA8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CB0, &unk_40AE10);
  sub_318924(&qword_4F1CB8, &qword_4F1CB0, &unk_40AE10);
  sub_3EE244();
  *(v1 + 16) = sub_3EDBF4();
  *(v1 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5063C8, &unk_420FB8);

  sub_3EC394();
  sub_1D4F0(v12, v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB28, &unk_40A810);
  sub_3EC394();
  sub_1D4F0(v12, v1 + 72);
  return v1;
}

uint64_t sub_3D5528()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3D5560()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3D561C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3D5684()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3D56C4()
{
  [*(v0 + 24) storeId];
  v1 = sub_3E94B4();
  return sub_3D2F0C(v1);
}

uint64_t sub_3D5700()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3D5740()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3D578C()
{
  sub_3D57D0(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 56, 7);
}

void sub_3D57D0(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_3D57F0(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_3D57FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3D5844(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

id sub_3D58B0(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v6 = objc_opt_self();
  v7 = &selRef_configurationPreferringMulticolor;
  if ((a4 & 1) == 0)
  {
    v7 = &selRef_unspecifiedConfiguration;
  }

  v8 = [v6 *v7];
  v9 = sub_3ED204();
  v10 = objc_opt_self();
  if (a3)
  {
    v11 = [v10 imageNamed:v9 inBundle:0 withConfiguration:v8];
  }

  else
  {
    v11 = [v10 systemImageNamed:v9 withConfiguration:v8];
  }

  v12 = v11;

  if (v12)
  {
    if (a4)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    v14 = v12;
    v15 = [v14 imageWithRenderingMode:v13];
  }

  else
  {

    return 0;
  }

  return v15;
}

id _s8ShelfKit11SystemGlyphC4load7artworkSo7UIImageCSg18PodcastsFoundation12ArtworkModelVSg_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_3E5DC4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_3E7784();
  v13 = *(v12 - 1);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4E45C(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_FCF8(v11, &qword_4F1D50, &unk_3F7520);
    return 0;
  }

  sub_83F9C(v11, v15, v16);
  if ((sub_3E7704() & 1) == 0)
  {
LABEL_11:
    sub_86F48(v15, v17);
    return 0;
  }

  sub_3E5D94();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_86F48(v15, v18);
    sub_FCF8(v4, &unk_4E9EE0, &unk_3F5BC0);
    return 0;
  }

  (*(v6 + 32))(v8, v4, v5);
  v19 = sub_3E5D64();
  if (!v20)
  {
    v17 = (*(v6 + 8))(v8, v5);
    goto LABEL_11;
  }

  v21 = sub_3D58B0(v19, v20, v15[v12[14]], v15[v12[15]]);

  if (v21)
  {
    v22 = *&v15[v12[12] + 8];
    v23 = v21;
    if (v22)
    {
      v22 = sub_3ED204();
    }

    [v21 setAccessibilityLabel:v22];
  }

  v25 = (*(v6 + 8))(v8, v5);
  sub_86F48(v15, v25);
  return v21;
}

uint64_t UnifiedMessagingProvider.bannerShelfPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_506470, &qword_420FF0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - v3;
  v5 = OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider____lazy_storage___bannerShelfPublisher;
  if (*(v0 + OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider____lazy_storage___bannerShelfPublisher))
  {
    v6 = *(v0 + OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider____lazy_storage___bannerShelfPublisher);
  }

  else
  {
    v9[1] = *(v0 + OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider_amsDialogRequestSubject);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506488, qword_420FF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0, &unk_3FF1B0);
    sub_886BC(&qword_506498, &unk_506488, qword_420FF8, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    v7 = v0;
    sub_3EA024();

    sub_886BC(&qword_5064A0, &qword_506470, &qword_420FF0, &protocol conformance descriptor for Publishers.Map<A, B>);
    v6 = sub_3E9F94();
    (*(v2 + 8))(v4, v1);
    *(v7 + v5) = v6;
  }

  return v6;
}

id UnifiedMessagingProvider.init(placement:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider_engagement;
  *&v3[v7] = [objc_allocWithZone(AMSEngagement) init];
  v8 = OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider_amsDialogRequestSubject;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506488, qword_420FF8);
  swift_allocObject();
  *&v3[v8] = sub_3E9D94();
  *&v3[OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider____lazy_storage___bannerShelfPublisher] = 0;
  v9 = &v3[OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider_placement];
  *v9 = a1;
  *(v9 + 1) = a2;
  v14.receiver = v3;
  v14.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v14, "init");
  sub_3E9384();
  v11 = v10;
  v12 = sub_3E9364();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_3E9374();

  return v11;
}

void sub_3D614C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_3D6238();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider_engagement);
    v5 = v3;
    v6 = sub_3ED204();
    v7 = sub_3ED204();
    [v4 addObserver:v5 placement:v6 serviceType:v7];
  }
}

void sub_3D6238()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0, &unk_3FA8B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3F5630;
  v2 = *(v0 + OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider_placement + 8);
  *(inited + 32) = *(v0 + OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider_placement);
  *(inited + 40) = v2;

  sub_3600C(inited);
  swift_setDeallocating();
  sub_3D74AC(inited + 32);
  v3 = objc_allocWithZone(AMSEngagementMessageEvent);
  v4 = sub_3ED204();
  isa = sub_3ED7E4().super.isa;

  v6 = [v3 initWithServiceType:v4 placements:isa];

  v7 = [*(v0 + OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider_engagement) enqueueMessageEvent:v6];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_3D7500;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_63B88;
  v10[3] = &block_descriptor_10;
  v9 = _Block_copy(v10);

  [v7 addFinishBlock:v9];
  _Block_release(v9);
}

uint64_t sub_3D643C@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  if (*a1)
  {
    v7 = *a1;
    v8 = [v7 identifier];
    if (v8)
    {
      v9 = v8;
      v28 = sub_3ED244();
      v11 = v10;
    }

    else
    {
      v28 = 0;
      v11 = 0xE000000000000000;
    }

    v15 = type metadata accessor for ModernShelf(0);
    v16 = v15[5];
    v17 = type metadata accessor for Header(0);
    (*(*(v17 - 8) + 56))(a2 + v16, 1, 1, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506560, &qword_3F6D80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_3F5630;
    *(v18 + 56) = sub_36174(0, &qword_4F06F0, AMSDialogRequest_ptr);
    *(v18 + 64) = sub_3D7554();
    *(v18 + 32) = v7;
    v19 = sub_3E5DC4();
    v20 = *(*(v19 - 8) + 56);
    v20(v6, 1, 1, v19);
    v21 = a2 + v15[12];
    *(v21 + 4) = 0;
    *v21 = 0u;
    *(v21 + 1) = 0u;
    v22 = v15[13];
    v23 = sub_3EC634();
    (*(*(v23 - 8) + 56))(a2 + v22, 1, 1, v23);
    v24 = v15[9];
    v25 = (a2 + v15[8]);
    v20(a2 + v24, 1, 1, v19);
    *a2 = v28;
    a2[1] = v11;
    v26 = a2 + v15[6];
    *v26 = 58;
    *(v26 + 3) = 256;
    *(v26 + 2) = 0;
    *(v26 + 1) = 1;
    *(a2 + v15[7]) = v18;
    sub_17F4C4(v6, a2 + v24);
    *(a2 + v15[10]) = 1;
    *(a2 + v15[11]) = 0;
    *v25 = 0;
    v25[1] = 0;
    return (*(*(v15 - 1) + 56))(a2, 0, 1, v15);
  }

  else
  {
    v12 = type metadata accessor for ModernShelf(0);
    v13 = *(*(v12 - 8) + 56);

    return v13(a2, 1, 1, v12);
  }
}

uint64_t sub_3D677C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t (*UnifiedMessagingProvider.bannerShelfPublisher.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = UnifiedMessagingProvider.bannerShelfPublisher.getter();
  return sub_3D6804;
}

void sub_3D681C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v54 = sub_3EBBC4();
  v5 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_3EBC14();
  v8 = a1;
  v52 = v7;
  v9 = *(v7 - 8);
  v11 = __chkstk_darwin(v8);
  v51 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10)
  {
    v13 = [v10 messageActions];
    if (v13)
    {
      v14 = v13;
      sub_36174(0, &qword_506548, AMSEngagementMessageEventServiceResponse_ptr);
      v15 = sub_3ED584();

      if (v15 >> 62)
      {
        goto LABEL_36;
      }

      for (i = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)); i; i = sub_3EE5A4())
      {
        v17 = 0;
        v18 = v15 & 0xC000000000000001;
        v45 = v15 & 0xFFFFFFFFFFFFFF8;
        v44 = v15 + 32;
        v48 = v60;
        v47 = v5 + 1;
        v46 = v9 + 1;
        v42 = a3;
        v41 = v15;
        v40 = i;
        v39 = v15 & 0xC000000000000001;
        v19 = v51;
        while (1)
        {
          if (v18)
          {
            v20 = sub_3EE3F4();
          }

          else
          {
            if (v17 >= *(v45 + 16))
            {
              goto LABEL_35;
            }

            v20 = *(v44 + 8 * v17);
          }

          v56 = v20;
          if (__OFADD__(v17++, 1))
          {
            break;
          }

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
            goto LABEL_8;
          }

          v5 = Strong;
          v23 = [v56 placementsMap];
          if (!v23)
          {
            goto LABEL_7;
          }

          v24 = v23;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506550, &unk_421050);
          v9 = sub_3ED094();

          if (!v9[2])
          {

LABEL_7:

            goto LABEL_8;
          }

          v43 = v17;
          v25 = *(v5 + OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider_placement);
          v26 = *(v5 + OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider_placement + 8);

          v27 = sub_552A8(v25, v26);
          v29 = v28;

          if (v29)
          {
            v30 = *(v9[7] + v27);

            v55 = v5;
            if (v30 >> 62)
            {
              v15 = sub_3EE5A4();
              if (v15)
              {
LABEL_19:
                v31 = 0;
                v49 = v30 & 0xFFFFFFFFFFFFFF8;
                v50 = v30 & 0xC000000000000001;
                while (1)
                {
                  if (v50)
                  {
                    v32 = sub_3EE3F4();
                  }

                  else
                  {
                    if (v31 >= *(v49 + 16))
                    {
                      goto LABEL_33;
                    }

                    v32 = *(v30 + 8 * v31 + 32);
                  }

                  v33 = v32;
                  if (__OFADD__(v31, 1))
                  {
                    break;
                  }

                  v58 = v31 + 1;
                  sub_36174(0, &qword_4F10B0, OS_dispatch_queue_ptr);
                  v57 = sub_3EDBC4();
                  v34 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v35 = swift_allocObject();
                  *(v35 + 16) = v34;
                  *(v35 + 24) = v33;
                  v60[2] = sub_3D754C;
                  v60[3] = v35;
                  aBlock[0] = _NSConcreteStackBlock;
                  aBlock[1] = 1107296256;
                  v60[0] = sub_1279E4;
                  v60[1] = &block_descriptor_17_0;
                  v36 = _Block_copy(aBlock);
                  v37 = v33;

                  sub_3EBBE4();
                  aBlock[0] = _swiftEmptyArrayStorage;
                  a3 = sub_2D9760();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
                  sub_886BC(&qword_506A30, &unk_503DE0, &unk_40B9F0, &protocol conformance descriptor for [A]);
                  v5 = v53;
                  v38 = v54;
                  sub_3EE244();
                  v9 = v57;
                  sub_3EDBE4();
                  _Block_release(v36);

                  (*v47)(v5, v38);
                  (*v46)(v19, v52);
                  ++v31;
                  if (v58 == v15)
                  {
                    goto LABEL_30;
                  }
                }

                __break(1u);
LABEL_33:
                __break(1u);
                break;
              }
            }

            else
            {
              v15 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
              if (v15)
              {
                goto LABEL_19;
              }
            }

LABEL_30:
          }

          else
          {
          }

          a3 = v42;
          v15 = v41;
          i = v40;
          v17 = v43;
          v18 = v39;
LABEL_8:

          if (v17 == i)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        ;
      }

LABEL_37:
    }
  }
}

void *sub_3D6E58(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;

    v5 = [a2 makeDialogRequest];
    sub_3E9D44();
  }

  return result;
}

void *sub_3D6FD4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;

    sub_3E9D44();
  }

  return result;
}

uint64_t sub_3D70D8(void *a1)
{
  v2 = sub_3EBBC4();
  v15 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3EBC14();
  v5 = *(v14 - 8);
  __chkstk_darwin(v14);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_36174(0, &qword_4F10B0, OS_dispatch_queue_ptr);
  v8 = sub_3EDBC4();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_3D748C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_33;
  v11 = _Block_copy(aBlock);
  v12 = a1;

  sub_3EBBE4();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_2D9760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
  sub_886BC(&qword_506A30, &unk_503DE0, &unk_40B9F0, &protocol conformance descriptor for [A]);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v11);

  (*(v15 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v14);
}

uint64_t sub_3D73C4@<X0>(uint64_t *a1@<X8>)
{
  result = UnifiedMessagingProvider.bannerShelfPublisher.getter();
  *a1 = result;
  return result;
}

uint64_t sub_3D73F0(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider____lazy_storage___bannerShelfPublisher) = *a1;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_5Tm_0()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_3D7554()
{
  result = qword_506570;
  if (!qword_506570)
  {
    v3 = sub_36174(255, &qword_4F06F0, AMSDialogRequest_ptr);
    result = swift_getWitnessTable(protocol conformance descriptor for AMSDialogRequest, v3, v0, v1);
    atomic_store(result, &qword_506570);
  }

  return result;
}

double *UpNextScoringWeights.__allocating_init(percentOfEpisodesFromShowPlayedWeight:percentOfTotalListeningWeight:modifiedDateWeight:)(double a1, double a2, double a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

double *UpNextScoringWeights.init(percentOfEpisodesFromShowPlayedWeight:percentOfTotalListeningWeight:modifiedDateWeight:)(double a1, double a2, double a3)
{
  result = v3;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return result;
}

double *sub_3D7650@<X0>(double **a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_3D767C(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

double *sub_3D767C(char *a1, uint64_t a2)
{
  v28 = a2;
  v3 = sub_3EBDF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  sub_3EBE04();
  v13 = COERCE_DOUBLE(sub_3EBD94());
  v15 = v14;
  v16 = *(v4 + 8);
  v16(v12, v3);
  v17 = 0.0;
  if (v15)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v13;
  }

  sub_3EBE04();
  v19 = COERCE_DOUBLE(sub_3EBD94());
  v21 = v20;
  v16(v9, v3);
  if (v21)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v19;
  }

  sub_3EBE04();
  v23 = COERCE_DOUBLE(sub_3EBD94());
  v25 = v24;
  v26 = sub_3EBF94();
  (*(*(v26 - 8) + 8))(v28, v26);
  v16(a1, v3);
  v16(v6, v3);
  if ((v25 & 1) == 0)
  {
    v17 = v23;
  }

  type metadata accessor for UpNextScoringWeights();
  result = swift_allocObject();
  result[2] = v18;
  result[3] = v22;
  result[4] = v17;
  return result;
}

void static UpNextScoringWeightsManager.recalculateUpNext()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 privateQueueContext];

  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v5[4] = sub_3D83BC;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1279E4;
  v5[3] = &block_descriptor_34;
  v3 = _Block_copy(v5);
  v4 = v1;

  [v4 performBlock:v3];
  _Block_release(v3);
}

void static UpNextScoringWeightsManager.resetToDefaultValues()()
{
  v0 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  [v0 setBool:1 forKey:kMTUpNextScoreUsesRemotelyConfiguredValues];

  sub_3D807C();
}

void sub_3D7B0C(void *a1)
{
  v2 = sub_3E9A04();
  __chkstk_darwin(v2);
  v20 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
  v3 = [objc_opt_self() predicateForSubscribedPodcasts];
  [v20 setPredicate:v3];

  sub_F7D88();
  v4 = sub_3EDDA4();
  v5 = v4;
  if (v4 >> 62)
  {
    v6 = sub_3EE5A4();
    if (!v6)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v6 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      goto LABEL_19;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  v9 = &selRef_setDefaultTabInterval_;
  do
  {
    if (v8)
    {
      v10 = sub_3EE3F4();
    }

    else
    {
      v10 = *(v5 + 8 * v7 + 32);
    }

    v11 = v10;
    v12 = [v10 v9[109]];
    if (v12)
    {
      v13 = v12;
      v14 = [objc_opt_self() upNextForPodcastUuid:v12 ctx:a1];

      if (v14)
      {
        v15 = [v14 upNextScore];
        if (v15)
        {
          v16 = v15;
          v17 = v9;
          v18 = [v14 episodeUuid];
          if (!v18)
          {
            sub_3ED244();
            v18 = sub_3ED204();
          }

          v19 = [a1 episodeForUuid:v18];

          if (v19)
          {
            [v19 setListenNowEpisode:1];
            [v16 combinedScore];
            [v19 setUpNextScore:?];

            v16 = v19;
          }

          v9 = v17;
          v8 = v5 & 0xC000000000000001;
        }
      }
    }

    ++v7;
  }

  while (v6 != v7);
LABEL_19:

  [a1 saveInCurrentBlock];
}

void sub_3D7F84(double *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 _applePodcastsFoundationSharedUserDefaults];
  [v3 setDouble:kMTUpNextScoreDefaultModifiedDateWeight forKey:a1[4]];

  v4 = [v2 _applePodcastsFoundationSharedUserDefaults];
  [v4 setDouble:kMTUpNextScoreDefaultPercentEpsTotalPlayedWeight forKey:a1[3]];

  v5 = [v2 _applePodcastsFoundationSharedUserDefaults];
  [v5 setDouble:kMTUpNextScoreDefaultPercentEpsFromShowPlayedWeight forKey:a1[2]];
}

void sub_3D807C()
{
  v0 = objc_opt_self();
  v1 = [v0 _applePodcastsFoundationSharedUserDefaults];
  [v1 doubleForKey:kMTUpNextScoreDefaultModifiedDateWeight];
  v3 = v2;

  v4 = [v0 _applePodcastsFoundationSharedUserDefaults];
  [v4 setDouble:kMTUpNextScoreModifiedDateWeight forKey:v3];

  v5 = [v0 _applePodcastsFoundationSharedUserDefaults];
  [v5 doubleForKey:kMTUpNextScoreDefaultPercentEpsFromShowPlayedWeight];
  v7 = v6;

  v8 = [v0 _applePodcastsFoundationSharedUserDefaults];
  [v8 setDouble:kMTUpNextScorePercentEpsFromShowPlayedWeight forKey:v7];

  v9 = [v0 _applePodcastsFoundationSharedUserDefaults];
  [v9 doubleForKey:kMTUpNextScoreDefaultPercentEpsTotalPlayedWeight];
  v11 = v10;

  v12 = [v0 _applePodcastsFoundationSharedUserDefaults];
  [v12 setDouble:kMTUpNextScorePercentEpsTotalPlayedWeight forKey:v11];
}

void _s8ShelfKit27UpNextScoringWeightsManagerO013updateDefaultF04withyAA0cdeF0C_tFZ_0(double *a1)
{
  sub_3D7F84(a1);
  v1 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v2 = [v1 BOOLForKey:kMTUpNextScoreUsesRemotelyConfiguredValues];

  if (v2)
  {
    sub_3D807C();
    v3 = [objc_opt_self() sharedInstance];
    v4 = [v3 privateQueueContext];

    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v8[4] = sub_3D83F4;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_1279E4;
    v8[3] = &block_descriptor_11_0;
    v6 = _Block_copy(v8);
    v7 = v4;

    [v7 performBlock:v6];
    _Block_release(v6);
  }
}

uint64_t sub_3D8384()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *UpsellBanner.__allocating_init(deserializing:using:)(void *a1, uint64_t a2)
{
  v4 = sub_3E5FC4();
  v178 = *(v4 - 8);
  v179 = v4;
  __chkstk_darwin(v4);
  v177 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v6 - 8);
  v183 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v176 = &v148 - v9;
  v192 = sub_3EBF94();
  v190 = *(v192 - 8);
  __chkstk_darwin(v192);
  v173 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v11 - 8);
  v182 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v181 = &v148 - v14;
  __chkstk_darwin(v15);
  v186 = &v148 - v16;
  __chkstk_darwin(v17);
  v185 = &v148 - v18;
  v19 = sub_3EBDF4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v175 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v174 = &v148 - v23;
  __chkstk_darwin(v24);
  v172 = &v148 - v25;
  __chkstk_darwin(v26);
  v171 = &v148 - v27;
  __chkstk_darwin(v28);
  v169 = &v148 - v29;
  __chkstk_darwin(v30);
  v168 = &v148 - v31;
  __chkstk_darwin(v32);
  v170 = &v148 - v33;
  __chkstk_darwin(v34);
  v36 = &v148 - v35;
  __chkstk_darwin(v37);
  v39 = &v148 - v38;
  __chkstk_darwin(v40);
  v42 = &v148 - v41;
  __chkstk_darwin(v43);
  v45 = &v148 - v44;
  __chkstk_darwin(v46);
  v48 = &v148 - v47;
  v189 = a1;
  sub_3EBE04();
  v191 = a2;
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v52 = *(v20 + 8);
  v51 = v20 + 8;
  v50 = v52;
  v193 = v19;
  v52(v48, v19);
  if (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0)
  {
    v188 = v50;
    type metadata accessor for ExternalUrlAction(0);
    v180 = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
    v167 = swift_dynamicCastClass();
    if (!v167)
    {
      v66 = v193;
      v59 = v189;
      sub_3EBE04();
      Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = sub_3EBDC4();
      v68 = v67;
      v50 = v188;
      v188(v45, v66);
      if (v68)
      {
        v170 = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
        Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = v68;
        sub_3EBE04();
        v69 = sub_3EBDC4();
        v71 = v70;
        v188(v39, v66);
        if (v71)
        {
          v161 = 0;
          v162 = 0;
          v169 = 0;
          v163 = 0;
          v168 = 0;
          v165 = 0;
          v164 = 0;
          v166 = 0;
          v160 = 0;
          v157 = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
          v158 = v69;
          v159 = v71;
LABEL_28:
          v148 = v51;
          LODWORD(v167) = v167 == 0;
          sub_3EBE04();
          v105 = v191;
          v156 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
          v106 = v193;
          v107 = v188;
          v188(v48, v193);
          sub_3EBE04();
          v152 = sub_3EBDC4();
          v151 = v108;
          v107(v48, v106);
          sub_3EBE04();
          v109 = v105;
          v155 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
          v107(v48, v106);
          v150 = 0xD000000000000010;
          sub_3EBE04();
          v154 = sub_3EBDC4();
          v153 = v110;
          v107(v48, v106);
          sub_3E7784();
          sub_3EBE04();
          v111 = *(v190 + 16);
          v112 = v173;
          v111(v173, v109, v192);
          sub_3DA764(&qword_4EECC8, &type metadata accessor for ArtworkModel, &protocol conformance descriptor for ArtworkModel);
          sub_3EC574();
          sub_3EBE04();
          v113 = v192;
          v111(v112, v109, v192);
          sub_3EC574();
          sub_3EC634();
          v114 = v189;
          sub_3EBE04();
          v111(v112, v109, v113);
          v115 = v176;
          sub_3EC574();
          v116 = v171;
          v117 = v114;
          sub_3EBE04();
          v173 = sub_3EBDC4();
          v149 = v118;
          v119 = v193;
          v120 = v188;
          v188(v116, v193);
          sub_FBD0(v185, v181, &qword_4F1D50, &unk_3F7520);
          sub_FBD0(v186, v182, &qword_4F1D50, &unk_3F7520);
          v121 = v172;
          sub_3EBE04();
          LODWORD(v171) = sub_3EBD24();
          v120(v121, v119);
          v122 = v174;
          sub_3EBE04();
          v172 = sub_3EBDC4();
          v150 = v123;
          v120(v122, v119);
          v124 = v175;
          sub_3EBE04();
          LODWORD(v174) = sub_3EBD24();
          v120(v124, v119);
          sub_FBD0(v115, v183, &unk_4E9170, &unk_3F4890);
          Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = swift_allocObject();
          v125 = v177;
          sub_3E5FB4();
          v126 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
          v128 = v127;
          (*(v190 + 8))(v191, v192);
          v120(v117, v119);
          (*(v178 + 8))(v125, v179);
          sub_FCF8(v115, &unk_4E9170, &unk_3F4890);
          sub_FCF8(v186, &qword_4F1D50, &unk_3F7520);
          sub_FCF8(v185, &qword_4F1D50, &unk_3F7520);
          Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0[2] = v126;
          Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0[3] = v128;
          v129 = v151;
          Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0[4] = v152;
          Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0[5] = v129;
          v130 = v149;
          Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0[6] = v173;
          Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0[7] = v130;
          sub_FACC(v181, Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_artwork, &qword_4F1D50, &unk_3F7520);
          sub_FACC(v182, Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_wordmarkArtwork, &qword_4F1D50, &unk_3F7520);
          *(Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_artworkShowsPlus) = v171 & 1;
          v131 = (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_shortTitle);
          v132 = v150;
          *v131 = v172;
          v131[1] = v132;
          v133 = (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_subtitle);
          v134 = v159;
          *v133 = v158;
          v133[1] = v134;
          v135 = (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_cta);
          v136 = v157;
          *v135 = v170;
          v135[1] = v136;
          *(Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_action) = v180;
          *(Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_subtitleAction) = v156;
          *(Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_channelLinkAction) = v155;
          v137 = (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_channelLinkTitle);
          v138 = v153;
          *v137 = v154;
          v137[1] = v138;
          v139 = (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appBundleId);
          v140 = v160;
          *v139 = v166;
          v139[1] = v140;
          v141 = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appAdamID;
          *v141 = v161;
          v141[8] = v167;
          v142 = (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_customProductPageID);
          v143 = v168;
          *v142 = v163;
          v142[1] = v143;
          v144 = (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_externalAppOfferDeeplink);
          v145 = v169;
          *v144 = v162;
          v144[1] = v145;
          v146 = (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appName);
          v147 = v164;
          *v146 = v165;
          v146[1] = v147;
          *(Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_isForFirstPartyApp) = v174 & 1;
          sub_FACC(v183, Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_impressionMetrics, &unk_4E9170, &unk_3F4890);
          return Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
        }

        v85 = sub_3ECEE4();
        sub_3DA764(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
        swift_allocError();
        *v86 = 0x656C746974627573;
        v87 = v187;
        v86[1] = 0xE800000000000000;
        v86[2] = v87;
        v88 = *(*(v85 - 8) + 104);
        v89 = v85;
        v50 = v188;
        v88(v86, enum case for JSONError.missingProperty(_:), v89);
      }

      else
      {
        v76 = sub_3ECEE4();
        sub_3DA764(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
        swift_allocError();
        *v77 = 6386787;
        v78 = v187;
        v77[1] = 0xE300000000000000;
        v77[2] = v78;
        (*(*(v76 - 8) + 104))(v77, enum case for JSONError.missingProperty(_:), v76);
      }

      goto LABEL_17;
    }

    Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = v189;
    sub_3EBE04();
    v166 = sub_3EBDC4();
    v54 = v53;
    v50 = v188;
    v188(v42, v193);
    if (v54)
    {
      v55 = v50;
      sub_3EBE04();
      v165 = sub_3EBDC4();
      v57 = v56;
      v55(v36, v193);
      if (v57)
      {
        v164 = v57;
        v58 = v170;
        sub_3EBE04();
        sub_3EBDC4();
        v59 = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
        Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = v187;
        if (v60)
        {
          v61 = v184;
          v62 = sub_3E9494();
          if (v61)
          {

            v161 = sub_3E9484();

            v188(v58, v193);
            v184 = 0;
          }

          else
          {
            v161 = v62;
            v184 = 0;
            v188(v58, v193);
          }

          v91 = v168;
          sub_3EBE04();
          v92 = sub_3EBDC4();
          v94 = v93;
          v95 = v91;
          v96 = v193;
          v97 = v188;
          v188(v95, v193);
          v168 = v94;
          if (v94)
          {
            v98 = v92;
          }

          else
          {
            v98 = 0;
          }

          v163 = v98;
          v99 = v169;
          sub_3EBE04();
          v100 = sub_3EBDC4();
          v102 = v101;
          v97(v99, v96);
          v169 = v102;
          if (v102)
          {
            v103 = v100;
          }

          else
          {
            v103 = 0;
          }

          v162 = v103;
          sub_3EBE04();
          v158 = sub_3EBDC4();
          v159 = v104;
          v97(v48, v96);
          v170 = 0;
          v157 = 0;
          v160 = v54;
          goto LABEL_28;
        }

        v79 = v58;
        v80 = v188;
        v188(v79, v193);

        v81 = sub_3ECEE4();
        sub_3DA764(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
        swift_allocError();
        *v82 = 0x496D616441707061;
        v82[1] = 0xE900000000000064;
        v82[2] = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
        v83 = *(*(v81 - 8) + 104);
        v84 = v81;
        v50 = v80;
        v83(v82, enum case for JSONError.missingProperty(_:), v84);
LABEL_17:
        swift_willThrow();

        goto LABEL_18;
      }

      v74 = sub_3ECEE4();
      sub_3DA764(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
      swift_allocError();
      *v75 = 0x656D614E707061;
      v75[1] = 0xE700000000000000;
      v75[2] = v187;
      (*(*(v74 - 8) + 104))(v75, enum case for JSONError.missingProperty(_:), v74);
      swift_willThrow();

      v59 = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
      v50 = v188;
    }

    else
    {
      v72 = sub_3ECEE4();
      sub_3DA764(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
      swift_allocError();
      *v73 = 0x6C646E7542707061;
      v73[1] = 0xEB00000000644965;
      v73[2] = v187;
      (*(*(v72 - 8) + 104))(v73, enum case for JSONError.missingProperty(_:), v72);
      swift_willThrow();

      v59 = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
    }
  }

  else
  {
    v63 = sub_3ECEE4();
    sub_3DA764(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v64 = 0x6E6F69746361;
    v65 = v187;
    v64[1] = 0xE600000000000000;
    v64[2] = v65;
    (*(*(v63 - 8) + 104))(v64, enum case for JSONError.missingProperty(_:), v63);
    swift_willThrow();
    v59 = v189;
  }

LABEL_18:
  (*(v190 + 8))(v191, v192);
  v50(v59, v193);
  return Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
}

uint64_t UpsellBanner.shortTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_shortTitle);

  return v1;
}

uint64_t UpsellBanner.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_subtitle);

  return v1;
}

uint64_t UpsellBanner.cta.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_cta);

  return v1;
}

uint64_t UpsellBanner.channelLinkTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_channelLinkTitle);

  return v1;
}

uint64_t UpsellBanner.appBundleId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appBundleId);

  return v1;
}

uint64_t UpsellBanner.customProductPageID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_customProductPageID);

  return v1;
}

uint64_t UpsellBanner.externalAppOfferDeeplink.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_externalAppOfferDeeplink);

  return v1;
}

uint64_t UpsellBanner.appName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appName);

  return v1;
}

void *UpsellBanner.__allocating_init(subscriptionTitle:longTitle:artwork:wordmarkArtwork:artworkShowsPlus:shortTitle:subtitle:cta:action:subtitleAction:channelLinkAction:channelLinkTitle:appBundleId:appAdamID:customProductPageID:externalAppOfferDeeplink:appName:isForFirstPartyApp:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned __int8 a29, uint64_t a30)
{
  v73 = a8;
  v71 = a7;
  v68 = a6;
  v63 = a5;
  v87 = a30;
  v86 = a29;
  v84 = a27;
  v85 = a28;
  v82 = a25;
  v83 = a26;
  v80 = a23;
  v81 = a24;
  v79 = a22;
  v77 = a20;
  v78 = a21;
  v75 = a18;
  v76 = a19;
  v74 = a17;
  v72 = a16;
  v69 = a14;
  v70 = a15;
  v67 = a13;
  v66 = a12;
  v65 = a11;
  v64 = a10;
  v62 = a9;
  v34 = sub_3E5FC4();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v61 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = swift_allocObject();
  sub_3E5FB4();
  v39 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v41 = v40;
  (*(v35 + 8))(v37, v34);
  v38[2] = v39;
  v38[3] = v41;
  v38[4] = a1;
  v38[5] = a2;
  v38[6] = a3;
  v38[7] = a4;
  sub_FACC(v63, v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_artwork, &qword_4F1D50, &unk_3F7520);
  sub_FACC(v68, v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_wordmarkArtwork, &qword_4F1D50, &unk_3F7520);
  *(v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_artworkShowsPlus) = v71;
  v42 = (v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_shortTitle);
  v43 = v62;
  *v42 = v73;
  v42[1] = v43;
  v44 = (v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_subtitle);
  v45 = v65;
  *v44 = v64;
  v44[1] = v45;
  v46 = (v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_cta);
  v47 = v67;
  *v46 = v66;
  v46[1] = v47;
  v48 = v70;
  *(v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_action) = v69;
  *(v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_subtitleAction) = v48;
  *(v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_channelLinkAction) = v72;
  v49 = (v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_channelLinkTitle);
  v50 = v75;
  *v49 = v74;
  v49[1] = v50;
  v51 = (v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appBundleId);
  v52 = v77;
  *v51 = v76;
  v51[1] = v52;
  v53 = v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appAdamID;
  *v53 = v78;
  v53[8] = v79 & 1;
  v54 = (v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_customProductPageID);
  v55 = v81;
  *v54 = v80;
  v54[1] = v55;
  v56 = (v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_externalAppOfferDeeplink);
  v57 = v83;
  *v56 = v82;
  v56[1] = v57;
  v58 = (v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appName);
  v59 = v85;
  *v58 = v84;
  v58[1] = v59;
  *(v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_isForFirstPartyApp) = v86;
  sub_FACC(v87, v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v38;
}

void *UpsellBanner.init(subscriptionTitle:longTitle:artwork:wordmarkArtwork:artworkShowsPlus:shortTitle:subtitle:cta:action:subtitleAction:channelLinkAction:channelLinkTitle:appBundleId:appAdamID:customProductPageID:externalAppOfferDeeplink:appName:isForFirstPartyApp:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned __int8 a29, uint64_t a30)
{
  v31 = v30;
  v74 = a8;
  v72 = a7;
  v69 = a6;
  v64 = a5;
  v88 = a30;
  v87 = a29;
  v85 = a27;
  v86 = a28;
  v83 = a25;
  v84 = a26;
  v81 = a23;
  v82 = a24;
  v80 = a22;
  v78 = a20;
  v79 = a21;
  v76 = a18;
  v77 = a19;
  v75 = a17;
  v73 = a16;
  v70 = a14;
  v71 = a15;
  v68 = a13;
  v67 = a12;
  v66 = a11;
  v65 = a10;
  v63 = a9;
  v36 = sub_3E5FC4();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v62 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E5FB4();
  v40 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v42 = v41;
  (*(v37 + 8))(v39, v36);
  v31[2] = v40;
  v31[3] = v42;
  v31[4] = a1;
  v31[5] = a2;
  v31[6] = a3;
  v31[7] = a4;
  sub_FACC(v64, v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_artwork, &qword_4F1D50, &unk_3F7520);
  sub_FACC(v69, v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_wordmarkArtwork, &qword_4F1D50, &unk_3F7520);
  *(v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_artworkShowsPlus) = v72;
  v43 = (v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_shortTitle);
  v44 = v63;
  *v43 = v74;
  v43[1] = v44;
  v45 = (v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_subtitle);
  v46 = v66;
  *v45 = v65;
  v45[1] = v46;
  v47 = (v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_cta);
  v48 = v68;
  *v47 = v67;
  v47[1] = v48;
  v49 = v71;
  *(v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_action) = v70;
  *(v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_subtitleAction) = v49;
  *(v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_channelLinkAction) = v73;
  v50 = (v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_channelLinkTitle);
  v51 = v76;
  *v50 = v75;
  v50[1] = v51;
  v52 = (v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appBundleId);
  v53 = v78;
  *v52 = v77;
  v52[1] = v53;
  v54 = v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appAdamID;
  *v54 = v79;
  v54[8] = v80 & 1;
  v55 = (v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_customProductPageID);
  v56 = v82;
  *v55 = v81;
  v55[1] = v56;
  v57 = (v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_externalAppOfferDeeplink);
  v58 = v84;
  *v57 = v83;
  v57[1] = v58;
  v59 = (v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appName);
  v60 = v86;
  *v59 = v85;
  v59[1] = v60;
  *(v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_isForFirstPartyApp) = v87;
  sub_FACC(v88, v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v31;
}

void *UpsellBanner.deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_artwork, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_wordmarkArtwork, &qword_4F1D50, &unk_3F7520);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v0;
}

uint64_t UpsellBanner.__deallocating_deinit()
{
  UpsellBanner.deinit();

  return swift_deallocClassInstance();
}

void *sub_3DA478@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = UpsellBanner.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *UpsellBanner.impressionableActions.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_subtitleAction);
  v5[4] = *(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_action);
  v5[5] = v1;

  for (i = 0; i != 2; ++i)
  {
    if (v5[i + 4])
    {

      sub_3ED564();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_3ED5A4();
      }

      sub_3ED604();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF4C8, &qword_3FAB18);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_3DA668(uint64_t a1)
{
  result = sub_3DA764(&qword_506638, type metadata accessor for UpsellBanner, protocol conformance descriptor for UpsellBanner);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for UpsellBanner(uint64_t a1)
{
  result = qword_506668;
  if (!qword_506668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3DA70C(uint64_t a1)
{
  result = sub_3DA764(&qword_4FCAD8, type metadata accessor for UpsellBanner, "٭\b");
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_3DA764(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_3DA7B4(uint64_t a1)
{
  sub_95A68(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
  if (v1 <= 0x3F)
  {
    sub_95A68(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of UpsellBanner.__allocating_init(subscriptionTitle:longTitle:artwork:wordmarkArtwork:artworkShowsPlus:shortTitle:subtitle:cta:action:subtitleAction:channelLinkAction:channelLinkTitle:appBundleId:appAdamID:customProductPageID:externalAppOfferDeeplink:appName:isForFirstPartyApp:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = *(v21 + 248);

  return v23(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

char *UpsellInformation.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v222 = a2;
  v193 = sub_3E5FC4();
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v191 = &v167 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_3EC164();
  v198 = *(v199 - 8);
  __chkstk_darwin(v199);
  v197 = &v167 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v207 = &v167 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98, &qword_41CF30);
  __chkstk_darwin(v7 - 8);
  v203 = (&v167 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v211 = &v167 - v10;
  v11 = sub_3ECED4();
  v215 = *(v11 - 8);
  v216 = v11;
  __chkstk_darwin(v11);
  v194 = &v167 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v200 = &v167 - v14;
  v15 = sub_3EBF94();
  v220 = *(v15 - 8);
  v221 = v15;
  __chkstk_darwin(v15);
  v204 = &v167 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v212 = &v167 - v18;
  __chkstk_darwin(v19);
  v208 = &v167 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v21 - 8);
  v196 = &v167 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v206 = &v167 - v24;
  __chkstk_darwin(v25);
  v218 = &v167 - v26;
  __chkstk_darwin(v27);
  v219 = &v167 - v28;
  v29 = sub_3EBDF4();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v190 = &v167 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v189 = &v167 - v33;
  __chkstk_darwin(v34);
  v202 = &v167 - v35;
  __chkstk_darwin(v36);
  v201 = &v167 - v37;
  __chkstk_darwin(v38);
  v40 = &v167 - v39;
  __chkstk_darwin(v41);
  v213 = &v167 - v42;
  __chkstk_darwin(v43);
  v210 = &v167 - v44;
  __chkstk_darwin(v45);
  v209 = &v167 - v46;
  __chkstk_darwin(v47);
  v49 = &v167 - v48;
  __chkstk_darwin(v50);
  v52 = &v167 - v51;
  __chkstk_darwin(v53);
  v55 = &v167 - v54;
  __chkstk_darwin(v56);
  v58 = &v167 - v57;
  __chkstk_darwin(v59);
  v61 = &v167 - v60;
  v223 = a1;
  sub_3EBE04();
  v188 = sub_3EBDC4();
  v63 = v62;
  v65 = *(v30 + 8);
  v64 = v30 + 8;
  v226 = v29;
  v224 = v65;
  v65(v61, v29);
  if (!v63)
  {
    v85 = sub_3ECEE4();
    sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v86 = 0x656C746974;
    v87 = v217;
    v86[1] = 0xE500000000000000;
    v86[2] = v87;
    (*(*(v85 - 1) + 104))(v86, enum case for JSONError.missingProperty(_:), v85);
    swift_willThrow();
    v224(v223, v226);
LABEL_7:
    v90 = v221;
    v91 = v222;
    goto LABEL_22;
  }

  v183 = v49;
  v184 = v40;
  v205 = v63;
  sub_3EBE04();
  v179 = sub_3EBDC4();
  v67 = v66;
  v68 = v226;
  v69 = v224;
  v224(v58, v226);
  sub_3EBE04();
  v178 = sub_3EBDC4();
  v71 = v70;
  v69(v55, v68);
  v72 = v64;
  if (!v71)
  {

    v85 = sub_3ECEE4();
    sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v88 = 0x656C746954617463;
    v89 = v217;
    v88[1] = 0xE800000000000000;
    v88[2] = v89;
    (*(*(v85 - 1) + 104))(v88, enum case for JSONError.missingProperty(_:), v85);
    swift_willThrow();
    v224(v223, v226);
    goto LABEL_7;
  }

  v181 = v71;
  v182 = v67;
  sub_3EBE04();
  v176 = sub_3EBD24();
  v224(v52, v226);
  v195 = sub_3E7784();
  sub_3EBE04();
  v74 = v220 + 16;
  v73 = *(v220 + 16);
  v75 = v208;
  v76 = v222;
  v187 = v72;
  v77 = v221;
  v73(v208, v222, v221);
  sub_3E23D0(&qword_4EECC8, &type metadata accessor for ArtworkModel, &protocol conformance descriptor for ArtworkModel);
  sub_3EC574();
  sub_3EBE04();
  v186 = v74;
  v185 = v73;
  v73(v75, v76, v77);
  v180 = v58;
  sub_3EC574();
  v78 = v183;
  sub_3EBE04();
  v79 = v211;
  sub_3EBD54();
  v224(v78, v226);
  v81 = v215;
  v80 = v216;
  v82 = *(v215 + 48);
  v208 = (v215 + 48);
  v183 = v82;
  if ((v82)(v79, 1, v216) == 1)
  {
    sub_FCF8(v79, &qword_4EDC98, &qword_41CF30);
    v211 = _swiftEmptyArrayStorage;
    v83 = v222;
    v84 = v214;
  }

  else
  {
    v92 = v200;
    v93 = (*(v81 + 32))(v200, v79, v80);
    __chkstk_darwin(v93);
    *(&v167 - 2) = v222;
    v94 = v214;
    v211 = sub_3ECE94();
    v84 = v94;
    v83 = v222;
    (*(v81 + 8))(v92, v80);
  }

  v95 = v209;
  sub_3EBE04();
  v175 = sub_3EBD24();
  v96 = v95;
  v97 = v226;
  v98 = v224;
  v224(v96, v226);
  v99 = v210;
  sub_3EBE04();
  v100 = v212;
  v185(v212, v83, v221);
  v101 = sub_3DC304(v99, v100);
  v103 = v180;
  if (v84)
  {

    v214 = 0;
    LODWORD(v212) = 255;
  }

  else
  {
    LODWORD(v212) = v102;
    v214 = v101;
  }

  v104 = v213;
  sub_3EBE04();
  v174 = sub_3EBDC4();
  v213 = v105;
  v98(v103, v97);
  sub_3EBE04();
  v173 = sub_3EBDC4();
  v210 = v106;
  v98(v103, v97);
  sub_3EBE04();
  sub_3EBDC4();
  v168 = v107;
  if (v107)
  {
    v108 = sub_3E9494();
    v200 = 0;
    v172 = v108;
    v98(v104, v97);
  }

  else
  {
    v200 = 0;
    v98(v104, v97);
    v172 = 0;
  }

  v109 = v223;
  sub_3EBE04();
  v171 = sub_3EBDC4();
  v209 = v110;
  v98(v103, v97);
  sub_3EBE04();
  v170 = sub_3EBDC4();
  v112 = v111;
  v98(v103, v97);
  v113 = v184;
  sub_3EBE04();
  v169 = sub_3EBDC4();
  v115 = v114;
  v98(v113, v97);
  if (v115)
  {
    v184 = v115;
    v195 = v112;
    sub_3EBE04();
    Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
    v98(v103, v97);
    v116 = v201;
    sub_3EBE04();
    v117 = v203;
    sub_3EBD54();
    v98(v116, v97);
    v118 = v216;
    v119 = v109;
    if ((v183)(v117, 1, v216) == 1)
    {
      sub_FCF8(v117, &qword_4EDC98, &qword_41CF30);
      v208 = _swiftEmptyArrayStorage;
      v90 = v221;
      v91 = v222;
      v120 = v200;
    }

    else
    {
      v124 = v215;
      v125 = v194;
      v126 = (*(v215 + 32))(v194, v117, v118);
      __chkstk_darwin(v126);
      *(&v167 - 2) = v222;
      type metadata accessor for UpsellSubscriptionPlan();
      v127 = v200;
      v208 = sub_3ECE94();
      v120 = v127;
      v128 = v118;
      v91 = v222;
      (*(v124 + 8))(v125, v128);
      v90 = v221;
    }

    sub_3EBE04();
    v185(v204, v91, v90);
    v129 = v207;
    sub_3EC0E4();
    if (!v120)
    {
      LODWORD(v215) = v168 == 0;
      sub_3EBE04();
      v216 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
      v131 = v103;
      v132 = v224;
      v224(v131, v226);
      sub_4E45C(v219, v206);
      sub_4E45C(v218, v196);
      v203 = *(v198 + 16);
      v204 = (v198 + 16);
      v203(v197, v129, v199);
      v133 = v189;
      sub_3EBE04();
      LODWORD(v202) = sub_3EBD24();
      v134 = v226;
      v132(v133, v226);
      v135 = v190;
      sub_3EBE04();
      v136 = sub_3EBD24();
      v137 = v217;
      LODWORD(v201) = v136;
      v132(v135, v134);
      v138 = v137;
      v139 = objc_allocWithZone(v137);
      v140 = v191;
      sub_3E5FB4();
      v141 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v143 = v142;
      (*(v192 + 8))(v140, v193);
      v144 = &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_shelfUniqueId];
      *v144 = v141;
      v144[1] = v143;
      v145 = &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_title];
      v146 = v205;
      *v145 = v188;
      v145[1] = v146;
      v147 = &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_subtitle];
      v148 = v182;
      *v147 = v179;
      v147[1] = v148;
      v149 = &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_ctaTitle];
      v150 = v181;
      *v149 = v178;
      v149[1] = v150;
      v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_backgroundArtworkIsFromEditorial] = v176 & 1;
      sub_4E45C(v206, &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_backgroundArtwork]);
      v151 = v196;
      sub_4E45C(v196, &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_logoArtwork]);
      *&v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_showGridArtworks] = v211;
      v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_showGridArtworksHasReferralShow] = v175 & 1;
      v152 = &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_backgroundColor];
      *v152 = v214;
      v152[8] = v212;
      v153 = &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_productId];
      v154 = v213;
      *v153 = v174;
      v153[1] = v154;
      v155 = &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_appBundleId];
      v156 = v210;
      *v155 = v173;
      v155[1] = v156;
      v157 = &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_appAdamID];
      *v157 = v172;
      v157[8] = v215;
      v158 = &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_customProductPageID];
      v159 = v209;
      *v158 = v171;
      v158[1] = v159;
      v160 = &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_externalAppOfferDeeplink];
      v161 = v195;
      *v160 = v170;
      v160[1] = v161;
      v162 = &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_caption];
      v163 = v184;
      *v162 = v169;
      v162[1] = v163;
      *&v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_seeAllAction] = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
      *&v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_subscriptionPlans] = v208;
      v164 = v197;
      v165 = v199;
      v203(&v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_pageMetrics], v197, v199);
      v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_isForConfirmationSheet] = v202 & 1;
      *&v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_externalUrlAction] = v216;
      v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_isForFirstPartyApp] = v201 & 1;
      v225.receiver = v139;
      v225.super_class = v138;
      v85 = objc_msgSendSuper2(&v225, "init");
      v224(v223, v226);
      v166 = *(v198 + 8);
      v166(v164, v165);
      sub_FCF8(v151, &qword_4F1D50, &unk_3F7520);
      sub_FCF8(v206, &qword_4F1D50, &unk_3F7520);
      v166(v207, v165);
      sub_FCF8(v218, &qword_4F1D50, &unk_3F7520);
      sub_FCF8(v219, &qword_4F1D50, &unk_3F7520);
      (*(v220 + 8))(v222, v221);
      return v85;
    }

    sub_234D4C(v214, v212);
    v224(v119, v226);
    v85 = &qword_4F1D50;
    sub_FCF8(v218, &qword_4F1D50, &unk_3F7520);
    sub_FCF8(v219, &qword_4F1D50, &unk_3F7520);
  }

  else
  {

    v121 = sub_3ECEE4();
    sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v122 = 0x6E6F6974706163;
    v123 = v217;
    v122[1] = 0xE700000000000000;
    v122[2] = v123;
    (*(*(v121 - 8) + 104))(v122, enum case for JSONError.missingProperty(_:), v121);
    swift_willThrow();
    sub_234D4C(v214, v212);
    v98(v109, v97);
    v85 = &qword_4F1D50;
    sub_FCF8(v218, &qword_4F1D50, &unk_3F7520);
    sub_FCF8(v219, &qword_4F1D50, &unk_3F7520);
    v90 = v221;
    v91 = v222;
  }

LABEL_22:
  (*(v220 + 8))(v91, v90);
  return v85;
}

uint64_t sub_3DC304(uint64_t a1, uint64_t a2)
{
  v5 = sub_3EE444();
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = sub_3EBF94();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  (*(v11 + 16))(&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10, v12);
  sub_3ED0B4();
  sub_3E24C0();
  sub_3EBD84();
  if (v2)
  {
    v26 = a2;
    v27 = a1;

    v29 = v2;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8, &unk_3F5ED0);
    if (swift_dynamicCast())
    {

      v14 = v28;
      (*(v28 + 32))(v30, v9, v5);
      v15 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628, &unk_4213E0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_3F5630;
      *(v18 + 32) = swift_allocError();
      v19 = v30;
      (*(v14 + 16))(v20, v30, v5);
      *v17 = &type metadata for Color;
      v17[1] = v18;
      (*(*(v15 - 8) + 104))(v17, enum case for JSONError.malformedDocument(_:), v15);
      swift_willThrow();
      (*(v11 + 8))(v26, v10);
      v21 = sub_3EBDF4();
      (*(*(v21 - 8) + 8))(v27, v21);
      (*(v14 + 8))(v19, v5);
    }

    else
    {
      (*(v11 + 8))(v26, v10);
      v24 = sub_3EBDF4();
      (*(*(v24 - 8) + 8))(v27, v24);
    }
  }

  else
  {

    (*(v11 + 8))(a2, v10);
    v22 = sub_3EBDF4();
    (*(*(v22 - 8) + 8))(a1, v22);
    return v29;
  }
}

uint64_t sub_3DC834(const char *a1, uint64_t a2, uint64_t (*a3)(void, double), unint64_t *a4, uint64_t (*a5)(uint64_t), const char *a6)
{
  v39 = a6;
  v37 = a5;
  v36 = sub_3EE444();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = sub_3EBF94();
  v16 = *(v15 - 1);
  v17 = __chkstk_darwin(v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3(0, v17);
  (*(v16 + 16))(v19, a2, v15);
  sub_3ED0B4();
  sub_3E23D0(a4, v37, v39);
  v39 = a1;
  v21 = v38;
  sub_3EBD84();
  if (v21)
  {
    v37 = v15;
    v38 = a2;

    v40 = v21;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8, &unk_3F5ED0);
    v22 = v36;
    if (swift_dynamicCast())
    {

      v23 = v34;
      (*(v34 + 32))(v35, v14, v22);
      v24 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628, &unk_4213E0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_3F5630;
      *(v27 + 32) = swift_allocError();
      v28 = v35;
      (*(v23 + 16))(v29, v35, v22);
      *v26 = v20;
      v26[1] = v27;
      (*(*(v24 - 8) + 104))(v26, enum case for JSONError.malformedDocument(_:), v24);
      swift_willThrow();
      (*(v16 + 8))(v38, v37);
      v30 = sub_3EBDF4();
      (*(*(v30 - 8) + 8))(v39, v30);
      (*(v23 + 8))(v28, v22);
    }

    else
    {
      (*(v16 + 8))(v38, v37);
      v33 = sub_3EBDF4();
      (*(*(v33 - 8) + 8))(v39, v33);
    }
  }

  else
  {

    (*(v16 + 8))(a2, v15);
    v31 = sub_3EBDF4();
    return (*(*(v31 - 8) + 8))(v39, v31);
  }
}

uint64_t sub_3DD068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_3EE444();
  v32 = *(v7 - 8);
  __chkstk_darwin(v7);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = sub_3EBF94();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  (*(v13 + 16))(&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12, v14);
  sub_3ED0B4();
  sub_3E2130();
  sub_3EBD84();
  if (v3)
  {
    v27 = a1;
    v28 = a2;

    v30 = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8, &unk_3F5ED0);
    if (swift_dynamicCast())
    {

      v16 = v32;
      v17 = v29;
      (*(v32 + 32))(v29, v11, v7);
      v18 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
      swift_allocError();
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628, &unk_4213E0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_3F5630;
      *(v21 + 32) = swift_allocError();
      (*(v16 + 16))(v22, v17, v7);
      *v20 = &type metadata for NewsFromYourShowsShelfIntent;
      v20[1] = v21;
      (*(*(v18 - 8) + 104))(v20, enum case for JSONError.malformedDocument(_:), v18);
      swift_willThrow();
      (*(v13 + 8))(v28, v12);
      v23 = sub_3EBDF4();
      (*(*(v23 - 8) + 8))(v27, v23);
      (*(v16 + 8))(v17, v7);
    }

    else
    {
      (*(v13 + 8))(v28, v12);
      v26 = sub_3EBDF4();
      (*(*(v26 - 8) + 8))(v27, v26);
    }
  }

  else
  {

    (*(v13 + 8))(a2, v12);
    v24 = sub_3EBDF4();
    result = (*(*(v24 - 8) + 8))(a1, v24);
    *a3 = v30;
    *(a3 + 8) = v31;
  }

  return result;
}

uint64_t sub_3DD520@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v34 = a5;
  v35 = sub_3EE444();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = sub_3EBF94();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  (*(v15 + 16))(&v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v14, v16);
  sub_3ED0B4();
  a3();
  v31 = a4;
  sub_3EBD84();
  if (v5)
  {
    v30 = a2;
    v34 = a1;

    v36 = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8, &unk_3F5ED0);
    v18 = v35;
    if (swift_dynamicCast())
    {

      v19 = v32;
      v20 = v33;
      (*(v33 + 32))(v32, v13, v18);
      v21 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628, &unk_4213E0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_3F5630;
      *(v24 + 32) = swift_allocError();
      (*(v20 + 16))(v25, v19, v18);
      *v23 = v31;
      v23[1] = v24;
      (*(*(v21 - 8) + 104))(v23, enum case for JSONError.malformedDocument(_:), v21);
      swift_willThrow();
      (*(v15 + 8))(v30, v14);
      v26 = sub_3EBDF4();
      (*(*(v26 - 8) + 8))(v34, v26);
      (*(v20 + 8))(v19, v18);
    }

    else
    {
      (*(v15 + 8))(v30, v14);
      v29 = sub_3EBDF4();
      (*(*(v29 - 8) + 8))(v34, v29);
    }
  }

  else
  {

    (*(v15 + 8))(a2, v14);
    v27 = sub_3EBDF4();
    result = (*(*(v27 - 8) + 8))(a1, v27);
    *v34 = v36;
  }

  return result;
}

uint64_t sub_3DDB00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v9 = sub_3EE444();
  v35 = *(v9 - 8);
  v36 = v9;
  __chkstk_darwin(v9);
  v37 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = sub_3EBF94();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  (*(v15 + 16))(&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v14, v16);
  sub_3ED0B4();
  a3();
  v34 = a4;
  sub_3EBD84();
  if (v4)
  {
    v33 = a2;

    v38 = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8, &unk_3F5ED0);
    v18 = v36;
    if (swift_dynamicCast())
    {

      v19 = v35;
      (*(v35 + 32))(v37, v13, v18);
      v20 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628, &unk_4213E0);
      v23 = swift_allocObject();
      v32 = a1;
      v24 = v23;
      *(v23 + 16) = xmmword_3F5630;
      *(v23 + 32) = swift_allocError();
      v25 = v37;
      (*(v19 + 16))(v26, v37, v18);
      *v22 = v34;
      v22[1] = v24;
      (*(*(v20 - 8) + 104))(v22, enum case for JSONError.malformedDocument(_:), v20);
      swift_willThrow();
      (*(v15 + 8))(v33, v14);
      v27 = sub_3EBDF4();
      (*(*(v27 - 8) + 8))(v32, v27);
      (*(v19 + 8))(v25, v18);
    }

    else
    {
      (*(v15 + 8))(v33, v14);
      v30 = sub_3EBDF4();
      (*(*(v30 - 8) + 8))(a1, v30);
    }
  }

  else
  {

    (*(v15 + 8))(a2, v14);
    v28 = sub_3EBDF4();
    (*(*(v28 - 8) + 8))(a1, v28);
    return v39;
  }
}

uint64_t sub_3DDFDC(uint64_t a1, uint64_t a2)
{
  v5 = sub_3EE444();
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = sub_3EBF94();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  (*(v11 + 16))(&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10, v12);
  sub_3ED0B4();
  sub_BA90C();
  sub_3EBD84();
  if (v2)
  {
    v26 = a2;
    v27 = a1;

    v29 = v2;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8, &unk_3F5ED0);
    if (swift_dynamicCast())
    {

      v14 = v28;
      (*(v28 + 32))(v30, v9, v5);
      v15 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628, &unk_4213E0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_3F5630;
      *(v18 + 32) = swift_allocError();
      v19 = v30;
      (*(v14 + 16))(v20, v30, v5);
      *v17 = &type metadata for ContentReference;
      v17[1] = v18;
      (*(*(v15 - 8) + 104))(v17, enum case for JSONError.malformedDocument(_:), v15);
      swift_willThrow();
      (*(v11 + 8))(v26, v10);
      v21 = sub_3EBDF4();
      (*(*(v21 - 8) + 8))(v27, v21);
      (*(v14 + 8))(v19, v5);
    }

    else
    {
      (*(v11 + 8))(v26, v10);
      v24 = sub_3EBDF4();
      (*(*(v24 - 8) + 8))(v27, v24);
    }
  }

  else
  {

    (*(v11 + 8))(a2, v10);
    v22 = sub_3EBDF4();
    (*(*(v22 - 8) + 8))(a1, v22);
    return v29;
  }
}

uint64_t sub_3DE48C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v9 = sub_3EE444();
  v35 = *(v9 - 8);
  v36 = v9;
  __chkstk_darwin(v9);
  v38 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = sub_3EBF94();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  (*(v15 + 16))(&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v14, v16);
  sub_3ED0B4();
  a3();
  v34 = a4;
  sub_3EBD84();
  if (v4)
  {
    v33 = a2;

    v37 = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8, &unk_3F5ED0);
    v18 = v36;
    if (swift_dynamicCast())
    {

      v19 = v35;
      (*(v35 + 32))(v38, v13, v18);
      v20 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628, &unk_4213E0);
      v23 = swift_allocObject();
      v32 = a1;
      v24 = v23;
      *(v23 + 16) = xmmword_3F5630;
      *(v23 + 32) = swift_allocError();
      v25 = v38;
      (*(v19 + 16))(v26, v38, v18);
      *v22 = v34;
      v22[1] = v24;
      (*(*(v20 - 8) + 104))(v22, enum case for JSONError.malformedDocument(_:), v20);
      swift_willThrow();
      (*(v15 + 8))(v33, v14);
      v27 = sub_3EBDF4();
      (*(*(v27 - 8) + 8))(v32, v27);
      (*(v19 + 8))(v25, v18);
    }

    else
    {
      (*(v15 + 8))(v33, v14);
      v30 = sub_3EBDF4();
      (*(*(v30 - 8) + 8))(a1, v30);
    }
  }

  else
  {

    (*(v15 + 8))(a2, v14);
    v28 = sub_3EBDF4();
    (*(*(v28 - 8) + 8))(a1, v28);
    return v37;
  }
}

uint64_t sub_3DE90C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v29 = a3;
  v6 = sub_3EE444();
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = sub_3EBF94();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  (*(v12 + 16))(&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11, v13);
  sub_3ED0B4();
  sub_141724();
  sub_3EBD84();
  if (v3)
  {
    v27 = a2;
    v29 = a1;

    v31 = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8, &unk_3F5ED0);
    if (swift_dynamicCast())
    {

      v15 = v28;
      (*(v28 + 32))(v30, v10, v6);
      v16 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
      swift_allocError();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628, &unk_4213E0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_3F5630;
      *(v19 + 32) = swift_allocError();
      v20 = v30;
      (*(v15 + 16))(v21, v30, v6);
      *v18 = &type metadata for ActionButton.Role;
      v18[1] = v19;
      (*(*(v16 - 8) + 104))(v18, enum case for JSONError.malformedDocument(_:), v16);
      swift_willThrow();
      (*(v12 + 8))(v27, v11);
      v22 = sub_3EBDF4();
      (*(*(v22 - 8) + 8))(v29, v22);
      (*(v15 + 8))(v20, v6);
    }

    else
    {
      (*(v12 + 8))(v27, v11);
      v25 = sub_3EBDF4();
      (*(*(v25 - 8) + 8))(v29, v25);
    }
  }

  else
  {

    (*(v12 + 8))(a2, v11);
    v23 = sub_3EBDF4();
    result = (*(*(v23 - 8) + 8))(a1, v23);
    *v29 = v32;
  }

  return result;
}

uint64_t sub_3DEF0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v9 = sub_3EE444();
  v35 = *(v9 - 8);
  v36 = v9;
  __chkstk_darwin(v9);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = sub_3EBF94();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  (*(v15 + 16))(&v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v14, v16);
  sub_3ED0B4();
  a3();
  v18 = a1;
  v33 = a4;
  v19 = v37;
  sub_3EBD84();
  if (v19)
  {
    v32 = v14;
    v37 = a2;

    v38 = v19;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8, &unk_3F5ED0);
    v20 = v36;
    if (swift_dynamicCast())
    {

      v22 = v34;
      v21 = v35;
      (*(v35 + 32))(v34, v13, v20);
      v23 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628, &unk_4213E0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_3F5630;
      *(v26 + 32) = swift_allocError();
      (*(v21 + 16))(v27, v22, v20);
      *v25 = v33;
      v25[1] = v26;
      (*(*(v23 - 8) + 104))(v25, enum case for JSONError.malformedDocument(_:), v23);
      swift_willThrow();
      (*(v15 + 8))(v37, v32);
      v28 = sub_3EBDF4();
      (*(*(v28 - 8) + 8))(v18, v28);
      (*(v21 + 8))(v22, v20);
    }

    else
    {
      (*(v15 + 8))(v37, v32);
      v31 = sub_3EBDF4();
      (*(*(v31 - 8) + 8))(v18, v31);
    }
  }

  else
  {

    (*(v15 + 8))(a2, v14);
    v29 = sub_3EBDF4();
    return (*(*(v29 - 8) + 8))(a1, v29);
  }
}

uint64_t sub_3DF3F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v9 = sub_3EE444();
  v35 = *(v9 - 8);
  v36 = v9;
  __chkstk_darwin(v9);
  v37 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = sub_3EBF94();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  (*(v15 + 16))(&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v14, v16);
  sub_3ED0B4();
  a3();
  v34 = a4;
  sub_3EBD84();
  if (v4)
  {
    v33 = a2;

    v38 = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8, &unk_3F5ED0);
    v18 = v36;
    if (swift_dynamicCast())
    {

      v19 = v35;
      (*(v35 + 32))(v37, v13, v18);
      v20 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628, &unk_4213E0);
      v23 = swift_allocObject();
      v32 = a1;
      v24 = v23;
      *(v23 + 16) = xmmword_3F5630;
      *(v23 + 32) = swift_allocError();
      v25 = v37;
      (*(v19 + 16))(v26, v37, v18);
      *v22 = v34;
      v22[1] = v24;
      (*(*(v20 - 8) + 104))(v22, enum case for JSONError.malformedDocument(_:), v20);
      swift_willThrow();
      (*(v15 + 8))(v33, v14);
      v27 = sub_3EBDF4();
      (*(*(v27 - 8) + 8))(v32, v27);
      (*(v19 + 8))(v25, v18);
    }

    else
    {
      (*(v15 + 8))(v33, v14);
      v30 = sub_3EBDF4();
      (*(*(v30 - 8) + 8))(a1, v30);
    }
  }

  else
  {

    (*(v15 + 8))(a2, v14);
    v28 = sub_3EBDF4();
    (*(*(v28 - 8) + 8))(a1, v28);
    return v39;
  }
}

uint64_t sub_3DF8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_3EE444();
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = sub_3EBF94();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  (*(v13 + 16))(&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12, v14);
  sub_3ED0B4();
  sub_3E2280();
  sub_3EBD84();
  if (v3)
  {
    v29 = a1;
    v30 = a2;

    v32 = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8, &unk_3F5ED0);
    if (swift_dynamicCast())
    {

      v16 = v34;
      v17 = v31;
      (*(v34 + 32))(v31, v11, v7);
      v18 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
      swift_allocError();
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628, &unk_4213E0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_3F5630;
      *(v21 + 32) = swift_allocError();
      (*(v16 + 16))(v22, v17, v7);
      *v20 = &type metadata for ChannelPageIntent;
      v20[1] = v21;
      (*(*(v18 - 8) + 104))(v20, enum case for JSONError.malformedDocument(_:), v18);
      swift_willThrow();
      (*(v13 + 8))(v30, v12);
      v23 = sub_3EBDF4();
      (*(*(v23 - 8) + 8))(v29, v23);
      (*(v16 + 8))(v17, v7);
    }

    else
    {
      (*(v13 + 8))(v30, v12);
      v27 = sub_3EBDF4();
      (*(*(v27 - 8) + 8))(v29, v27);
    }
  }

  else
  {

    (*(v13 + 8))(a2, v12);
    v24 = sub_3EBDF4();
    result = (*(*(v24 - 8) + 8))(a1, v24);
    v26 = v33;
    *a3 = v32;
    *(a3 + 8) = v26;
  }

  return result;
}

uint64_t sub_3DFE78@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v36 = a5;
  v37 = sub_3EE444();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = sub_3EBF94();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  (*(v15 + 16))(&v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v14, v16);
  sub_3ED0B4();
  a3();
  v34 = a4;
  sub_3EBD84();
  if (v5)
  {
    v33 = a2;
    v36 = a1;

    *&v38 = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8, &unk_3F5ED0);
    v18 = v37;
    if (swift_dynamicCast())
    {

      v19 = v35;
      (*(v35 + 32))(v40, v13, v18);
      v20 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628, &unk_4213E0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_3F5630;
      *(v23 + 32) = swift_allocError();
      v24 = v40;
      (*(v19 + 16))(v25, v40, v18);
      *v22 = v34;
      v22[1] = v23;
      (*(*(v20 - 8) + 104))(v22, enum case for JSONError.malformedDocument(_:), v20);
      swift_willThrow();
      (*(v15 + 8))(v33, v14);
      v26 = sub_3EBDF4();
      (*(*(v26 - 8) + 8))(v36, v26);
      (*(v19 + 8))(v24, v18);
    }

    else
    {
      (*(v15 + 8))(v33, v14);
      v31 = sub_3EBDF4();
      (*(*(v31 - 8) + 8))(v36, v31);
    }
  }

  else
  {

    (*(v15 + 8))(a2, v14);
    v27 = sub_3EBDF4();
    result = (*(*(v27 - 8) + 8))(a1, v27);
    v29 = v39;
    v30 = v36;
    *v36 = v38;
    *(v30 + 2) = v29;
  }

  return result;
}

uint64_t sub_3E036C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_3EE444();
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = sub_3EBF94();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  (*(v13 + 16))(&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12, v14);
  sub_3ED0B4();
  sub_3E20DC();
  sub_3EBD84();
  if (v3)
  {
    v29 = a1;
    v30 = a2;

    v32 = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8, &unk_3F5ED0);
    if (swift_dynamicCast())
    {

      v16 = v34;
      v17 = v31;
      (*(v34 + 32))(v31, v11, v7);
      v18 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
      swift_allocError();
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628, &unk_4213E0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_3F5630;
      *(v21 + 32) = swift_allocError();
      (*(v16 + 16))(v22, v17, v7);
      *v20 = &type metadata for SearchHintsPageIntent;
      v20[1] = v21;
      (*(*(v18 - 8) + 104))(v20, enum case for JSONError.malformedDocument(_:), v18);
      swift_willThrow();
      (*(v13 + 8))(v30, v12);
      v23 = sub_3EBDF4();
      (*(*(v23 - 8) + 8))(v29, v23);
      (*(v16 + 8))(v17, v7);
    }

    else
    {
      (*(v13 + 8))(v30, v12);
      v27 = sub_3EBDF4();
      (*(*(v27 - 8) + 8))(v29, v27);
    }
  }

  else
  {

    (*(v13 + 8))(a2, v12);
    v24 = sub_3EBDF4();
    result = (*(*(v24 - 8) + 8))(a1, v24);
    v26 = v33;
    *a3 = v32;
    a3[1] = v26;
  }

  return result;
}

uint64_t sub_3E0844@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v28 = a3;
  v6 = sub_3EE444();
  v27 = *(v6 - 8);
  __chkstk_darwin(v6);
  v29 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = sub_3EBF94();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  (*(v12 + 16))(&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11, v13);
  sub_3ED0B4();
  sub_3E21D8();
  sub_3EBD84();
  if (v3)
  {
    v26 = a2;
    v28 = a1;

    v30 = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8, &unk_3F5ED0);
    if (swift_dynamicCast())
    {

      v15 = v27;
      (*(v27 + 32))(v29, v10, v6);
      v16 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
      swift_allocError();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628, &unk_4213E0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_3F5630;
      *(v19 + 32) = swift_allocError();
      v20 = v29;
      (*(v15 + 16))(v21, v29, v6);
      *v18 = &type metadata for FromChannelShelvesIntent;
      v18[1] = v19;
      (*(*(v16 - 8) + 104))(v18, enum case for JSONError.malformedDocument(_:), v16);
      swift_willThrow();
      (*(v12 + 8))(v26, v11);
      v22 = sub_3EBDF4();
      (*(*(v22 - 8) + 8))(v28, v22);
      (*(v15 + 8))(v20, v6);
    }

    else
    {
      (*(v12 + 8))(v26, v11);
      v25 = sub_3EBDF4();
      (*(*(v25 - 8) + 8))(v28, v25);
    }
  }

  else
  {

    (*(v12 + 8))(a2, v11);
    v23 = sub_3EBDF4();
    result = (*(*(v23 - 8) + 8))(a1, v23);
    *v28 = v30;
  }

  return result;
}

uint64_t UpsellInformation.shelfUniqueId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_shelfUniqueId);

  return v1;
}

uint64_t UpsellInformation.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_title);

  return v1;
}

uint64_t UpsellInformation.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_subtitle);

  return v1;
}

uint64_t UpsellInformation.ctaTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_ctaTitle);

  return v1;
}

void *UpsellInformation.backgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_backgroundColor);
  sub_1F7418(v1, *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_backgroundColor + 8));
  return v1;
}

uint64_t UpsellInformation.productId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_productId);

  return v1;
}

uint64_t UpsellInformation.appBundleId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_appBundleId);

  return v1;
}

uint64_t UpsellInformation.customProductPageID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_customProductPageID);

  return v1;
}

uint64_t UpsellInformation.externalAppOfferDeeplink.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_externalAppOfferDeeplink);

  return v1;
}

uint64_t UpsellInformation.caption.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_caption);

  return v1;
}

uint64_t UpsellInformation.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit17UpsellInformation_pageMetrics;
  v4 = sub_3EC164();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

BOOL UpsellInformation.hasTwoSubscriptionPlans.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_subscriptionPlans);
  if (v1 >> 62)
  {
    v2 = sub_3EE5A4();
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  return v2 == 2;
}

id UpsellInformation.__allocating_init(title:subtitle:ctaTitle:backgroundArtworkIsFromEditorial:backgroundArtwork:logoArtwork:showGridArtworks:showGridArtworksHasReferralShow:backgroundColor:productId:appBundleId:appAdamID:customProductPageID:externalAppOfferDeeplink:caption:seeAllAction:subscriptionPlans:pageMetrics:isForConfirmationSheet:externalUrlAction:isForFirstPartyApp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned __int8 a29, uint64_t a30, unsigned __int8 a31)
{
  v32 = v31;
  v78 = a8;
  v76 = a7;
  v74 = a6;
  v72 = a5;
  v70 = a4;
  v97 = a31;
  v96 = a30;
  v95 = a29;
  v93 = a27;
  v94 = a28;
  v91 = a25;
  v92 = a26;
  v90 = a24;
  v87 = a22;
  v88 = a23;
  v85 = a20;
  v86 = a21;
  v84 = a19;
  v82 = a17;
  v83 = a18;
  v80 = a15;
  v81 = a16;
  v79 = a14;
  v77 = a13;
  v75 = a12;
  v73 = a11;
  v71 = a10;
  v36 = sub_3E5FC4();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v70 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = objc_allocWithZone(v32);
  sub_3E5FB4();
  v41 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v43 = v42;
  (*(v37 + 8))(v39, v36);
  v44 = &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_shelfUniqueId];
  *v44 = v41;
  v44[1] = v43;
  v45 = &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_title];
  *v45 = a1;
  v45[1] = a2;
  v46 = &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_subtitle];
  v47 = v70;
  *v46 = a3;
  v46[1] = v47;
  v48 = &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_ctaTitle];
  v49 = v74;
  *v48 = v72;
  v48[1] = v49;
  v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_backgroundArtworkIsFromEditorial] = v76;
  v50 = v78;
  sub_4E45C(v78, &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_backgroundArtwork]);
  sub_4E45C(a9, &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_logoArtwork]);
  *&v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_showGridArtworks] = v71;
  v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_showGridArtworksHasReferralShow] = v73;
  v51 = &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_backgroundColor];
  *v51 = v75;
  v51[8] = v77;
  v52 = &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_productId];
  v53 = v80;
  *v52 = v79;
  v52[1] = v53;
  v54 = &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_appBundleId];
  v55 = v82;
  *v54 = v81;
  v54[1] = v55;
  v56 = &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_appAdamID];
  *v56 = v83;
  v56[8] = v84 & 1;
  v57 = &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_customProductPageID];
  v58 = v86;
  *v57 = v85;
  v57[1] = v58;
  v59 = &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_externalAppOfferDeeplink];
  v60 = v88;
  *v59 = v87;
  v59[1] = v60;
  v61 = &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_caption];
  v62 = v91;
  *v61 = v90;
  v61[1] = v62;
  v63 = v93;
  *&v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_seeAllAction] = v92;
  *&v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_subscriptionPlans] = v63;
  v64 = OBJC_IVAR____TtC8ShelfKit17UpsellInformation_pageMetrics;
  v65 = sub_3EC164();
  v66 = *(v65 - 8);
  v67 = v94;
  (*(v66 + 16))(&v40[v64], v94, v65);
  v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_isForConfirmationSheet] = v95;
  *&v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_externalUrlAction] = v96;
  v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_isForFirstPartyApp] = v97;
  v98.receiver = v40;
  v98.super_class = v89;
  v68 = objc_msgSendSuper2(&v98, "init");
  (*(v66 + 8))(v67, v65);
  sub_FCF8(a9, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v50, &qword_4F1D50, &unk_3F7520);
  return v68;
}

id UpsellInformation.init(title:subtitle:ctaTitle:backgroundArtworkIsFromEditorial:backgroundArtwork:logoArtwork:showGridArtworks:showGridArtworksHasReferralShow:backgroundColor:productId:appBundleId:appAdamID:customProductPageID:externalAppOfferDeeplink:caption:seeAllAction:subscriptionPlans:pageMetrics:isForConfirmationSheet:externalUrlAction:isForFirstPartyApp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned __int8 a29, uint64_t a30, unsigned __int8 a31)
{
  v32 = v31;
  v77 = a8;
  v75 = a7;
  v73 = a6;
  v71 = a5;
  v69 = a4;
  v96 = a31;
  v95 = a30;
  v94 = a29;
  v93 = a28;
  v90 = a26;
  v91 = a27;
  v88 = a24;
  v89 = a25;
  v86 = a22;
  v87 = a23;
  v84 = a20;
  v85 = a21;
  v83 = a19;
  v81 = a17;
  v82 = a18;
  v79 = a15;
  v80 = a16;
  v78 = a14;
  v76 = a13;
  v74 = a12;
  v72 = a11;
  v70 = a10;
  ObjectType = swift_getObjectType();
  v36 = sub_3E5FC4();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v69 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E5FB4();
  v40 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v42 = v41;
  (*(v37 + 8))(v39, v36);
  v43 = &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_shelfUniqueId];
  *v43 = v40;
  v43[1] = v42;
  v44 = &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_title];
  *v44 = a1;
  v44[1] = a2;
  v45 = &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_subtitle];
  v46 = v69;
  *v45 = a3;
  v45[1] = v46;
  v47 = &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_ctaTitle];
  v48 = v73;
  *v47 = v71;
  v47[1] = v48;
  v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_backgroundArtworkIsFromEditorial] = v75;
  v49 = v77;
  sub_4E45C(v77, &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_backgroundArtwork]);
  sub_4E45C(a9, &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_logoArtwork]);
  *&v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_showGridArtworks] = v70;
  v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_showGridArtworksHasReferralShow] = v72;
  v50 = &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_backgroundColor];
  *v50 = v74;
  v50[8] = v76;
  v51 = &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_productId];
  v52 = v79;
  *v51 = v78;
  v51[1] = v52;
  v53 = &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_appBundleId];
  v54 = v81;
  *v53 = v80;
  v53[1] = v54;
  v55 = &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_appAdamID];
  *v55 = v82;
  v55[8] = v83 & 1;
  v56 = &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_customProductPageID];
  v57 = v85;
  *v56 = v84;
  v56[1] = v57;
  v58 = &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_externalAppOfferDeeplink];
  v59 = v87;
  *v58 = v86;
  v58[1] = v59;
  v60 = &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_caption];
  v61 = v89;
  *v60 = v88;
  v60[1] = v61;
  v62 = v91;
  *&v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_seeAllAction] = v90;
  *&v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_subscriptionPlans] = v62;
  v63 = OBJC_IVAR____TtC8ShelfKit17UpsellInformation_pageMetrics;
  v64 = sub_3EC164();
  v65 = *(v64 - 8);
  v66 = v93;
  (*(v65 + 16))(&v32[v63], v93, v64);
  v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_isForConfirmationSheet] = v94;
  *&v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_externalUrlAction] = v95;
  v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_isForFirstPartyApp] = v96;
  v97.receiver = v32;
  v97.super_class = ObjectType;
  v67 = objc_msgSendSuper2(&v97, "init");
  (*(v65 + 8))(v66, v64);
  sub_FCF8(a9, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v49, &qword_4F1D50, &unk_3F7520);
  return v67;
}

uint64_t *sub_3E1C98@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  result = UpsellInformation.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_3E1CC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8ShelfKit17UpsellInformation_pageMetrics;
  v5 = sub_3EC164();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t type metadata accessor for UpsellInformation(uint64_t a1)
{
  result = qword_5067E0;
  if (!qword_5067E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3E1E04(uint64_t a1, double a2)
{
  sub_4EC44(319, a2);
  if (v2 <= 0x3F)
  {
    sub_3EC164();
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of UpsellInformation.__allocating_init(title:subtitle:ctaTitle:backgroundArtworkIsFromEditorial:backgroundArtwork:logoArtwork:showGridArtworks:showGridArtworksHasReferralShow:backgroundColor:productId:appBundleId:appAdamID:customProductPageID:externalAppOfferDeeplink:caption:seeAllAction:subscriptionPlans:pageMetrics:isForConfirmationSheet:externalUrlAction:isForFirstPartyApp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = *(v18 + 256);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

unint64_t sub_3E2034()
{
  result = qword_5067F8;
  if (!qword_5067F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HeaderButtonItem.ButtonStyle, &type metadata for HeaderButtonItem.ButtonStyle, v0, v1);
    atomic_store(result, &qword_5067F8);
  }

  return result;
}

unint64_t sub_3E2088()
{
  result = qword_506868;
  if (!qword_506868)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SharedWithYouShelfIntent, &type metadata for SharedWithYouShelfIntent, v0, v1);
    atomic_store(result, &qword_506868);
  }

  return result;
}

unint64_t sub_3E20DC()
{
  result = qword_506878;
  if (!qword_506878)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchHintsPageIntent, &type metadata for SearchHintsPageIntent, v0, v1);
    atomic_store(result, &qword_506878);
  }

  return result;
}

unint64_t sub_3E2130()
{
  result = qword_506888;
  if (!qword_506888)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NewsFromYourShowsShelfIntent, &type metadata for NewsFromYourShowsShelfIntent, v0, v1);
    atomic_store(result, &qword_506888);
  }

  return result;
}

unint64_t sub_3E2184()
{
  result = qword_506898;
  if (!qword_506898)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HighlightsPageIntent, &type metadata for HighlightsPageIntent, v0, v1);
    atomic_store(result, &qword_506898);
  }

  return result;
}

unint64_t sub_3E21D8()
{
  result = qword_5068A0;
  if (!qword_5068A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FromChannelShelvesIntent, &type metadata for FromChannelShelvesIntent, v0, v1);
    atomic_store(result, &qword_5068A0);
  }

  return result;
}

unint64_t sub_3E222C()
{
  result = qword_5068A8;
  if (!qword_5068A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EpisodeUpsellShelfIntent, &type metadata for EpisodeUpsellShelfIntent, v0, v1);
    atomic_store(result, &qword_5068A8);
  }

  return result;
}

unint64_t sub_3E2280()
{
  result = qword_5068B8;
  if (!qword_5068B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ChannelPageIntent, &type metadata for ChannelPageIntent, v0, v1);
    atomic_store(result, &qword_5068B8);
  }

  return result;
}

unint64_t sub_3E22D4()
{
  result = qword_5068C0;
  if (!qword_5068C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CategoryPageFromYourShowsShelfIntent, &type metadata for CategoryPageFromYourShowsShelfIntent, v0, v1);
    atomic_store(result, &qword_5068C0);
  }

  return result;
}

unint64_t sub_3E2328()
{
  result = qword_5068D8;
  if (!qword_5068D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyReferenceLink, &type metadata for AnyReferenceLink, v0, v1);
    atomic_store(result, &qword_5068D8);
  }

  return result;
}

unint64_t sub_3E237C()
{
  result = qword_5068E0;
  if (!qword_5068E0)
  {
    result = swift_getWitnessTable("aI\v", &type metadata for AnyActionModel, v0, v1);
    atomic_store(result, &qword_5068E0);
  }

  return result;
}

uint64_t sub_3E23D0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_3E2418()
{
  result = qword_5068F0;
  if (!qword_5068F0)
  {
    result = swift_getWitnessTable(byte_4097DC, &type metadata for HeaderButtonItem.ModelType, v0, v1);
    atomic_store(result, &qword_5068F0);
  }

  return result;
}

unint64_t sub_3E246C()
{
  result = qword_5068F8;
  if (!qword_5068F8)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for SearchResultsGroupID, &type metadata for SearchResultsGroupID, v0, v1);
    atomic_store(result, &qword_5068F8);
  }

  return result;
}

unint64_t sub_3E24C0()
{
  result = qword_506900;
  if (!qword_506900)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Color, &type metadata for Color, v0, v1);
    atomic_store(result, &qword_506900);
  }

  return result;
}

uint64_t UpsellSubscriptionPlan.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_title);

  return v1;
}

uint64_t UpsellSubscriptionPlan.ctaTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_ctaTitle);

  return v1;
}

uint64_t UpsellSubscriptionPlan.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_subtitle);

  return v1;
}

uint64_t UpsellSubscriptionPlan.callout.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_callout);

  return v1;
}

id UpsellSubscriptionPlan.__allocating_init(offerAction:isRecommended:title:ctaTitle:subtitle:callout:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = objc_allocWithZone(v10);
  *&v18[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_offerAction] = a1;
  v18[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_isRecommended] = a2;
  v19 = &v18[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_title];
  *v19 = a3;
  v19[1] = a4;
  v20 = &v18[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_ctaTitle];
  *v20 = a5;
  v20[1] = a6;
  v21 = &v18[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_subtitle];
  *v21 = a7;
  v21[1] = a8;
  v22 = &v18[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_callout];
  *v22 = a9;
  v22[1] = a10;
  v25.receiver = v18;
  v25.super_class = v10;
  return objc_msgSendSuper2(&v25, "init");
}

id UpsellSubscriptionPlan.init(offerAction:isRecommended:title:ctaTitle:subtitle:callout:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11)
{
  *&v11[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_offerAction] = a1;
  v11[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_isRecommended] = a2;
  v12 = &v11[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_title];
  *v12 = a3;
  v12[1] = a4;
  v13 = &v11[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_ctaTitle];
  *v13 = a5;
  v13[1] = a6;
  v14 = &v11[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_subtitle];
  *v14 = a7;
  v14[1] = a8;
  v15 = &v11[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_callout];
  *v15 = a10;
  v15[1] = a11;
  v17.receiver = v11;
  v17.super_class = type metadata accessor for UpsellSubscriptionPlan();
  return objc_msgSendSuper2(&v17, "init");
}

char *UpsellSubscriptionPlan.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v81 = a2;
  v3 = sub_3EBF94();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_3EBDF4();
  v79 = *(v76 - 8);
  __chkstk_darwin(v76);
  v72 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v66 - v9;
  __chkstk_darwin(v11);
  v13 = &v66 - v12;
  __chkstk_darwin(v14);
  v16 = &v66 - v15;
  __chkstk_darwin(v17);
  v19 = &v66 - v18;
  __chkstk_darwin(v20);
  v22 = &v66 - v21;
  v77 = a1;
  sub_3EBE04();
  v78 = v4;
  v23 = *(v4 + 16);
  v73 = v3;
  v23(v6, v81, v3);
  type metadata accessor for ChannelOfferAction(0);
  swift_allocObject();
  v24 = v74;
  v25 = ChannelOfferAction.init(deserializing:using:)(v22, v6);
  if (v24)
  {

    v26 = sub_3ECEE4();
    sub_4D38C();
    swift_allocError();
    *v27 = 0x746341726566666FLL;
    v27[1] = 0xEB000000006E6F69;
    v27[2] = v75;
    (*(*(v26 - 8) + 104))(v27, enum case for JSONError.missingProperty(_:), v26);
    swift_willThrow();
    v28 = v76;
    v29 = v77;
LABEL_9:
    v63 = v79;
    (*(v78 + 8))(v81, v73);
    v64 = *(v63 + 8);
    v58 = (v63 + 8);
    v64(v29, v28);
    return v58;
  }

  v69 = v13;
  v70 = v10;
  v30 = v75;
  v74 = v25;
  v31 = v77;
  sub_3EBE04();
  v68 = sub_3EBDC4();
  v33 = v32;
  v34 = v31;
  v35 = *(v79 + 8);
  v28 = v76;
  v35(v19, v76);
  v71 = v33;
  if (!v33)
  {
    v29 = v34;
    v59 = sub_3ECEE4();
    sub_4D38C();
    swift_allocError();
    v61 = v60;
    *v60 = 0x656C746974;
    v62 = 0xE500000000000000;
LABEL_8:
    v60[1] = v62;
    v60[2] = v30;
    (*(*(v59 - 8) + 104))(v61, enum case for JSONError.missingProperty(_:), v59);
    swift_willThrow();

    goto LABEL_9;
  }

  v36 = v16;
  v29 = v34;
  sub_3EBE04();
  v37 = sub_3EBDC4();
  v39 = v38;
  v35(v36, v28);
  if (!v39)
  {

    v59 = sub_3ECEE4();
    sub_4D38C();
    swift_allocError();
    v61 = v60;
    *v60 = 0x656C746954617463;
    v62 = 0xE800000000000000;
    goto LABEL_8;
  }

  v40 = v69;
  v79 = v37;
  sub_3EBE04();
  LODWORD(v75) = sub_3EBD24();
  v35(v40, v28);
  v41 = v35;
  v42 = v70;
  sub_3EBE04();
  v43 = v28;
  v69 = sub_3EBDC4();
  v67 = v44;
  v41(v42, v28);
  v45 = v41;
  v46 = v72;
  sub_3EBE04();
  v47 = sub_3EBDC4();
  v49 = v48;
  v45(v46, v43);
  v50 = type metadata accessor for UpsellSubscriptionPlan();
  v51 = objc_allocWithZone(v50);
  *&v51[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_offerAction] = v74;
  v51[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_isRecommended] = v75 & 1;
  v52 = &v51[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_title];
  v53 = v71;
  *v52 = v68;
  v52[1] = v53;
  v54 = &v51[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_ctaTitle];
  *v54 = v79;
  v54[1] = v39;
  v55 = &v51[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_subtitle];
  v56 = v67;
  *v55 = v69;
  v55[1] = v56;
  v57 = &v51[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_callout];
  *v57 = v47;
  v57[1] = v49;
  v80.receiver = v51;
  v80.super_class = v50;
  v58 = objc_msgSendSuper2(&v80, "init");
  (*(v78 + 8))(v81, v73);
  v45(v29, v43);
  return v58;
}

id UpsellSubscriptionPlan.__deallocating_deinit(uint64_t a1, double a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for UpsellSubscriptionPlan();
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *sub_3E2FAC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = UpsellSubscriptionPlan.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_3E2FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v22 = a2;
  v26 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB0D0, &qword_3F7428);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = sub_3EBF94();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3EBDF4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_3EBDA4();
  if (result)
  {
    *v26 = 0;
  }

  else
  {
    v19 = v7;
    type metadata accessor for UpsellSubscriptionPlan();
    (*(v13 + 16))(v15, a1, v12);
    (*(v9 + 16))(v11, v22, v8);
    result = UpsellSubscriptionPlan.__allocating_init(deserializing:using:)(v15, v11);
    if (v3)
    {
      v17 = v19;
      sub_3EBF14();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB0D8, &qword_3FDAB0);
      sub_3EBFB4();
      (*(v20 + 8))(v17, v21);
      sub_355F80(v25, v23);
      v18 = v26;
      if (v24)
      {
        __swift_project_boxed_opaque_existential_1(v23, v24);
        sub_3EC854();

        sub_355FF0(v25);
        result = __swift_destroy_boxed_opaque_existential_1Tm(v23);
      }

      else
      {
        sub_355FF0(v25);

        result = sub_355FF0(v23);
      }

      *v18 = 0;
    }

    else
    {
      *v26 = result;
    }
  }

  return result;
}

id WebAuthenticationSession.__allocating_init(authorizationURL:window:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authenticationSession] = 0;
  v6 = &v5[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_startCompletion];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v5[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_callbackURLScheme];
  *v7 = 0x7374736163646F70;
  *(v7 + 1) = 0xE800000000000000;
  v8 = OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authorizationURL;
  v9 = sub_3E5DC4();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v5[v8], a1, v9);
  *&v5[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_window] = a2;
  v13.receiver = v5;
  v13.super_class = v2;
  v11 = objc_msgSendSuper2(&v13, "init");
  (*(v10 + 8))(a1, v9);
  return v11;
}

uint64_t sub_3E34C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authorizationURL;
  swift_beginAccess();
  v5 = sub_3E5DC4();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_3E3550(uint64_t a1, uint64_t *a2)
{
  v4 = sub_3E5DC4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authorizationURL;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_3E3668@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authorizationURL;
  swift_beginAccess();
  v4 = sub_3E5DC4();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_3E36F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authorizationURL;
  swift_beginAccess();
  v4 = sub_3E5DC4();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id WebAuthenticationSession.init(authorizationURL:window:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authenticationSession] = 0;
  v5 = &v2[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_startCompletion];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_callbackURLScheme];
  *v6 = 0x7374736163646F70;
  *(v6 + 1) = 0xE800000000000000;
  v7 = OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authorizationURL;
  v8 = sub_3E5DC4();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v2[v7], a1, v8);
  *&v2[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_window] = a2;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for WebAuthenticationSession(0);
  v10 = objc_msgSendSuper2(&v12, "init");
  (*(v9 + 8))(a1, v8);
  return v10;
}

uint64_t type metadata accessor for WebAuthenticationSession(uint64_t a1)
{
  result = qword_506A08;
  if (!qword_506A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_3E394C(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v5 - 8);
  v51 = &v49 - v6;
  v7 = sub_3E9A04();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = &v49 - v10;
  v11 = sub_3E5DC4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v2[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_startCompletion];
  v17 = *&v2[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_startCompletion];
  v16 = *&v2[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_startCompletion + 8];
  *v15 = a1;
  *(v15 + 1) = a2;

  sub_16AC0(v17, v16);
  v18 = OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authorizationURL;
  swift_beginAccess();
  (*(v12 + 16))(v14, &v2[v18], v11);
  v19 = swift_allocObject();
  v52 = a1;
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = v2;
  v20 = objc_allocWithZone(ASWebAuthenticationSession);
  v49 = a2;

  v21 = v2;
  sub_3E5D14(v22);
  v24 = v23;
  v25 = sub_3ED204();
  aBlock[4] = sub_3E4458;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3E4AA8;
  aBlock[3] = &block_descriptor_35;
  v26 = _Block_copy(aBlock);
  v27 = v20;
  v28 = v12;
  v29 = [v27 initWithURL:v24 callbackURLScheme:v25 completionHandler:v26];
  _Block_release(v26);

  (*(v12 + 8))(v14, v11);

  v30 = OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authenticationSession;
  v31 = *&v21[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authenticationSession];
  *&v21[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authenticationSession] = v29;
  v32 = v29;

  if (v32)
  {
    [v32 setPresentationContextProvider:v21];
  }

  v33 = *&v21[v30];
  if (!v33)
  {
    goto LABEL_7;
  }

  [v33 setPrefersEphemeralWebBrowserSession:1];
  v34 = *&v21[v30];
  if (!v34)
  {
    goto LABEL_7;
  }

  v35 = v34;
  if ([v35 canStart])
  {

LABEL_7:
    v36 = v53;
    sub_3E99E4();
    v37 = sub_3E99F4();
    v38 = sub_3ED9F4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "Starting the ASWebAuthenticationSession", v39, 2u);
    }

    (*(v54 + 8))(v36, v55);
    return [*&v21[v30] start];
  }

  v41 = v50;
  sub_3E99E4();
  v42 = sub_3E99F4();
  v43 = sub_3ED9D4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_0, v42, v43, "Cannot start the ASWebAuthenticationSession.", v44, 2u);
  }

  (*(v54 + 8))(v41, v55);
  v45 = v51;
  (*(v28 + 56))(v51, 1, 1, v11);
  v46 = sub_3E8604();
  sub_3E5628(&qword_502BF0, &type metadata accessor for OAuthSessionError, &protocol conformance descriptor for OAuthSessionError);
  v47 = swift_allocError();
  (*(*(v46 - 8) + 104))(v48, enum case for OAuthSessionError.cannotStart(_:), v46);
  v52(v45, v47);

  return sub_27EDC(v45);
}

uint64_t sub_3E3F24(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, void *a5)
{
  v34 = a4;
  v35 = a3;
  v33 = a1;
  v7 = sub_3EBBC4();
  v32 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EBC14();
  v30 = *(v10 - 8);
  v31 = v10;
  __chkstk_darwin(v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3E9A04();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E99E4();
  v17 = sub_3E99F4();
  v18 = sub_3ED9F4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = a2;
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "Callback in ASWebAuthenticationSession called.", v19, 2u);
    a2 = v29;
  }

  (*(v14 + 8))(v16, v13);
  if (a2)
  {
    type metadata accessor for Code(0);
    aBlock[0] = 1;
    swift_errorRetain();
    sub_3E5628(&qword_4E9250, type metadata accessor for Code, "yj\v");
    if (sub_3E5AB4())
    {
      v20 = sub_3E8604();
      sub_3E5628(&qword_502BF0, &type metadata accessor for OAuthSessionError, &protocol conformance descriptor for OAuthSessionError);
      v21 = swift_allocError();
      (*(*(v20 - 8) + 104))(v22, enum case for OAuthSessionError.userCancelledLogin(_:), v20);
      v35(v33, v21);
    }
  }

  v35(v33, a2);
  sub_801B4();
  v24 = sub_3EDBC4();
  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  aBlock[4] = sub_3E560C;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_14_0;
  v26 = _Block_copy(aBlock);
  v27 = a5;

  sub_3EBBE4();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_3E5628(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
  sub_DA8D4();
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v26);

  (*(v32 + 8))(v9, v7);
  return (*(v30 + 8))(v12, v31);
}

uint64_t sub_3E4464(uint64_t a1)
{
  v3 = sub_3E9A04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = (v1 + OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_startCompletion);
  v14 = *(v1 + OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_startCompletion);
  if (v14)
  {
    v15 = v13[1];
    v16 = *(v1 + OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authenticationSession);
    if (v16)
    {
      sub_7A6C8(v14, v13[1]);
      v17 = v16;
      [v17 cancel];
      v18 = sub_3E5DC4();
      v19 = *(v18 - 8);
      (*(v19 + 16))(v12, a1, v18);
      (*(v19 + 56))(v12, 0, 1, v18);
      v14(v12, 0);

      sub_16AC0(v14, v15);
      sub_27EDC(v12);
      v20 = *v13;
      v21 = v13[1];
      *v13 = 0;
      v13[1] = 0;
      return sub_16AC0(v20, v21);
    }

    else
    {

      sub_3E99E4();
      v26 = sub_3E99F4();
      v27 = sub_3ED9D4();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_0, v26, v27, "Resume called but there is no active authentication session.", v28, 2u);
      }

      sub_16AC0(v14, v15);

      return (*(v4 + 8))(v9, v3);
    }
  }

  else
  {
    sub_3E99E4();
    v23 = sub_3E99F4();
    v24 = sub_3ED9D4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "Resume called but there is no completion block to resume with.", v25, 2u);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_3E47AC()
{
  v1 = sub_3E9A04();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v0 + OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authenticationSession) cancel];
  sub_3E99E4();
  v6 = sub_3E99F4();
  v7 = sub_3ED9F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Canceled ASWebAuthenticationSession.", v8, 2u);
  }

  return (*(v2 + 8))(v5, v1);
}

id WebAuthenticationSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebAuthenticationSession(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3E4AA8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_3E5D44();
    v10 = sub_3E5DC4();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_3E5DC4();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_27EDC(v8);
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3E4C04(char *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v6 - 8);
  v51 = &v50 - v7;
  v8 = sub_3E9A04();
  v55 = *(v8 - 8);
  v56 = v8;
  __chkstk_darwin(v8);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v50 - v11;
  v12 = sub_3E5DC4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v52 = a2;
  v53 = a3;
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = &a1[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_startCompletion];
  v19 = *&a1[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_startCompletion];
  v18 = *&a1[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_startCompletion + 8];
  *v17 = sub_3E56A8;
  *(v17 + 1) = v16;

  sub_16AC0(v19, v18);
  v20 = OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authorizationURL;
  swift_beginAccess();
  (*(v13 + 16))(v15, &a1[v20], v12);
  v21 = swift_allocObject();
  v21[2] = sub_3E56A8;
  v21[3] = v16;
  v21[4] = a1;
  v22 = objc_allocWithZone(ASWebAuthenticationSession);

  v23 = a1;
  sub_3E5D14(v24);
  v26 = v25;
  v27 = sub_3ED204();
  aBlock[4] = sub_3E56BC;
  aBlock[5] = v21;
  v28 = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3E4AA8;
  aBlock[3] = &block_descriptor_24_1;
  v29 = _Block_copy(aBlock);
  v30 = [v22 initWithURL:v26 callbackURLScheme:v27 completionHandler:v29];
  _Block_release(v29);

  (*(v13 + 8))(v15, v12);

  v31 = OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authenticationSession;
  v32 = *&v23[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authenticationSession];
  *&v23[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authenticationSession] = v30;
  v33 = v30;

  if (v33)
  {
    [v33 setPresentationContextProvider:v23];
  }

  v34 = *&v23[v31];
  if (!v34)
  {
    goto LABEL_7;
  }

  [v34 setPrefersEphemeralWebBrowserSession:1];
  v35 = *&v23[v31];
  if (!v35)
  {
    goto LABEL_7;
  }

  v36 = v35;
  if ([v36 canStart])
  {

LABEL_7:
    v37 = v54;
    sub_3E99E4();
    v38 = sub_3E99F4();
    v39 = sub_3ED9F4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "Starting the ASWebAuthenticationSession", v40, 2u);
    }

    (*(v55 + 8))(v37, v56);
    [*&v23[v31] start];
  }

  v42 = v50;
  sub_3E99E4();
  v43 = sub_3E99F4();
  v44 = sub_3ED9D4();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_0, v43, v44, "Cannot start the ASWebAuthenticationSession.", v45, 2u);
  }

  (*(v55 + 8))(v42, v56);
  v46 = v51;
  (*(v28 + 56))(v51, 1, 1, v12);
  v47 = sub_3E8604();
  sub_3E5628(&qword_502BF0, &type metadata accessor for OAuthSessionError, &protocol conformance descriptor for OAuthSessionError);
  v48 = swift_allocError();
  (*(*(v47 - 8) + 104))(v49, enum case for OAuthSessionError.cannotStart(_:), v47);
  sub_3A15FC(v46, v48, v52);

  sub_27EDC(v46);
}

id sub_3E5214()
{
  v1 = v0;
  v2 = sub_3E9A04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E99E4();
  v6 = sub_3E99F4();
  v7 = sub_3ED9F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Displaying ASWebAuthenticationSession.", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_window);

  return v9;
}

uint64_t sub_3E5380(uint64_t a1)
{
  result = sub_3E5DC4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_3E55D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3E560C()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_startCompletion);
  v2 = *v1;
  v3 = v1[1];
  *v1 = 0;
  v1[1] = 0;
  return sub_16AC0(v2, v3);
}

uint64_t sub_3E5628(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3E5670()
{

  return _swift_deallocObject(v0, 32, 7);
}