uint64_t type metadata accessor for RadioShowCell(uint64_t a1)
{
  result = qword_DF1478;
  if (!qword_DF1478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_135F20()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedBagProvider];
  sub_13C80(0, &qword_DEE560, ICStoreRequestContext_ptr);
  v3 = static ICStoreRequestContext.current.getter();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v7[4] = sub_137904;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_151E0;
  v7[3] = &block_descriptor_42;
  v5 = _Block_copy(v7);
  v6 = v1;

  [v2 getBagForRequestContext:v3 withCompletionHandler:v5];
  _Block_release(v5);
}

void sub_136054(void *a1, uint64_t a2, char *a3)
{
  if (!a1)
  {
LABEL_4:
    if (a2)
    {
      v5 = sub_AB3040();
    }

    else
    {
      v5 = 0;
    }

    v9 = v5;
    [a3 finishWithError:?];
    goto LABEL_10;
  }

  v9 = a1;
  if ([a3 isCancelled])
  {

    goto LABEL_4;
  }

  v6 = *&a3[OBJC_IVAR____TtC16MusicApplication33MediaSocialProfileUpdateOperation_profileUpdate + 40];
  if (v6 < 2)
  {
    sub_136300(v9);
LABEL_10:

    return;
  }

  v7 = v9;
  v8 = a3;
  sub_137F98(v6);
  sub_137924(v6, v7, v8, v8, v7);

  sub_D3144(v6);
}

void sub_136178(uint64_t a1, id a2, void *a3)
{
  if (a1)
  {
    v4 = sub_AB3040();
  }

  else
  {
    if (([a2 isCancelled] & 1) == 0)
    {
      sub_136300(a3);
      return;
    }

    v4 = 0;
  }

  v6 = v4;
  [a2 finishWithError:?];
}

double sub_136300(void *a1)
{
  v2 = v1;
  v4 = sub_AB2A90();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v9 = &v77 - v8;
  v10 = sub_AB31C0();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin().n128_u64[0];
  v16 = &v77 - v15;
  if ([v2 isCancelled])
  {

    [v2 finishWithError:0];
    return result;
  }

  v18 = [a1 dictionaryForBagKey:ICURLBagKeyMusicCommon];
  if (!v18)
  {
    goto LABEL_13;
  }

  v85 = v11;
  v19 = v18;
  v20 = sub_AB8FF0();

  strcpy(v87, "updateProfile");
  HIWORD(v87[0]) = -4864;
  sub_ABAD10();
  if (!*(v20 + 16) || (v21 = sub_2EC004(v88), (v22 & 1) == 0))
  {
    sub_8085C(v88);
    goto LABEL_12;
  }

  sub_808B0(*(v20 + 56) + 32 * v21, &v89);
  sub_8085C(v88);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

LABEL_13:
    sub_137870();
    swift_allocError();
    *v25 = xmmword_AFF870;
    *(v25 + 16) = 1;
    v26 = sub_AB3040();

    [v2 finishWithError:v26];
LABEL_14:

    return result;
  }

  v84 = v5;
  v23 = *(&v87[0] + 1);
  sub_AB3180();
  v24 = v85;
  if ((*(v85 + 48))(v9, 1, v10) == 1)
  {
    sub_12E1C(v9, &unk_DF2AE0, &qword_AFC930);

    goto LABEL_12;
  }

  v81 = v23;
  (*(v24 + 32))(v16, v9, v10);
  sub_13C80(0, &qword_DF0600, ICUserIdentityStore_ptr);
  v27 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (!v27)
  {
    sub_137870();
    swift_allocError();
    *v43 = 0;
    *(v43 + 8) = 0;
    *(v43 + 16) = 2;
    v26 = sub_AB3040();

    [v2 finishWithError:v26];
    (*(v24 + 8))(v16, v10);

    goto LABEL_14;
  }

  v28 = v27;
  v29 = sub_97E70(_swiftEmptyArrayStorage);
  *&v89 = 1701869940;
  *(&v89 + 1) = 0xE400000000000000;
  sub_ABAD10();
  v90 = &type metadata for String;
  *&v89 = 1919251317;
  *(&v89 + 1) = 0xE400000000000000;
  sub_9ACFC(&v89, v87);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v86 = v29;
  sub_913C0(v87, v88, isUniquelyReferenced_nonNull_native);
  sub_8085C(v88);
  v31 = v86;
  *&v89 = 25705;
  *(&v89 + 1) = 0xE200000000000000;
  sub_ABAD10();
  v79 = v28;
  v32 = [v28 stringValue];
  v33 = sub_AB92A0();
  v90 = &type metadata for String;
  *&v89 = v33;
  *(&v89 + 1) = v34;
  sub_9ACFC(&v89, v87);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v86 = v31;
  sub_913C0(v87, v88, v35);
  sub_8085C(v88);

  v36 = v86;
  v82 = sub_97E70(_swiftEmptyArrayStorage);
  v37 = sub_97E70(_swiftEmptyArrayStorage);
  *&v89 = 0x72656E776FLL;
  *(&v89 + 1) = 0xE500000000000000;
  sub_ABAD10();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830, &unk_AFD670);
  v90 = v78;
  *&v89 = v36;
  sub_9ACFC(&v89, v87);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v86 = v37;
  sub_913C0(v87, v88, v38);
  sub_8085C(v88);
  v39 = v86;
  v40 = &v2[OBJC_IVAR____TtC16MusicApplication33MediaSocialProfileUpdateOperation_profileUpdate];
  v41 = *&v2[OBJC_IVAR____TtC16MusicApplication33MediaSocialProfileUpdateOperation_profileUpdate + 8];
  v80 = &v2[OBJC_IVAR____TtC16MusicApplication33MediaSocialProfileUpdateOperation_profileUpdate];
  if (v41)
  {
    v83 = *v40;
    *&v89 = 1701667182;
    *(&v89 + 1) = 0xE400000000000000;
    sub_ABAD10();
    v90 = &type metadata for String;
    *&v89 = v83;
    *(&v89 + 1) = v41;
    sub_9ACFC(&v89, v87);

    v42 = swift_isUniquelyReferenced_nonNull_native();
    v86 = v39;
    sub_913C0(v87, v88, v42);
    sub_8085C(v88);
    v40 = v80;
  }

  v83 = v86;
  v44 = v40[3];
  if (v44)
  {
    v45 = v40[2];
    *&v89 = 0x656C646E6168;
    *(&v89 + 1) = 0xE600000000000000;
    sub_ABAD10();
    v90 = &type metadata for String;
    *&v89 = v45;
    *(&v89 + 1) = v44;
    sub_9ACFC(&v89, v87);

    v46 = v83;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v86 = v46;
    sub_913C0(v87, v88, v47);
    sub_8085C(v88);
    v40 = v80;
    v83 = v86;
    if (*(v80 + 32) == 1)
    {
      *&v89 = 0xD000000000000017;
      *(&v89 + 1) = 0x8000000000B52980;
      sub_ABAD10();
      v90 = &type metadata for Bool;
      LOBYTE(v89) = 1;
      sub_9ACFC(&v89, v87);
      v48 = v82;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v86 = v48;
      sub_913C0(v87, v88, v49);
      sub_8085C(v88);
      v40 = v80;
      v82 = v86;
    }
  }

  v50 = v78;
  v51 = *&v2[OBJC_IVAR____TtC16MusicApplication33MediaSocialProfileUpdateOperation_photoUploadDictionary];
  v52 = v83;
  if (v51)
  {
    strcpy(&v89, "profileImage");
    BYTE13(v89) = 0;
    HIWORD(v89) = -5120;

    sub_ABAD10();
    v90 = v50;
    *&v89 = v51;
  }

  else
  {
    if (v40[5])
    {
      goto LABEL_26;
    }

    strcpy(&v89, "profileImage");
    BYTE13(v89) = 0;
    HIWORD(v89) = -5120;
    sub_ABAD10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF14D0, &qword_AFF960);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_AF85F0;
    *(v76 + 32) = 0x54746E65746E6F63;
    v78 = v76 + 32;
    *(v76 + 40) = 0xEC0000006E656B6FLL;
    *(v76 + 48) = 0u;
    *(v76 + 64) = 0u;
    *(v76 + 80) = 0xD000000000000010;
    *(v76 + 88) = 0x8000000000B52960;
    *(v76 + 96) = 0u;
    *(v76 + 112) = 0u;
    v80 = sub_980A0(v76);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E27200, &unk_B3BB90);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BE0, &qword_AF9080);
    *&v89 = v80;
  }

  sub_9ACFC(&v89, v87);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v86 = v52;
  sub_913C0(v87, v88, v53);
  sub_8085C(v88);
  v52 = v86;
LABEL_26:
  v54 = v82;
  if (*(v82 + 16))
  {
    strcpy(&v89, "options");
    *(&v89 + 1) = 0xE700000000000000;
    sub_ABAD10();
    v90 = v50;
    *&v89 = v54;
    sub_9ACFC(&v89, v87);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v86 = v52;
    sub_913C0(v87, v88, v55);
    sub_8085C(v88);
  }

  else
  {
  }

  v56 = objc_opt_self();
  isa = sub_AB8FD0().super.isa;

  v88[0] = 0;
  v58 = [v56 dataWithJSONObject:isa options:0 error:v88];
  v59 = v88[0];

  if (v58)
  {
    v60 = sub_AB3260();
    v82 = v61;
    v83 = v60;
  }

  else
  {
    sub_AB3050();

    swift_willThrow();

    v82 = 0xF000000000000000;
    v83 = 0;
  }

  (*(v85 + 16))(v13, v16, v10);
  sub_AB2A50();
  sub_AB2A20();
  v62 = sub_AB92A0();
  v64 = v63;
  v93._countAndFlagsBits = sub_AB92A0();
  v66 = v65;
  v92.value._countAndFlagsBits = v62;
  v92.value._object = v64;
  v93._object = v66;
  sub_AB2A80(v92, v93);

  sub_9007C(v83, v82);
  sub_AB2A70();
  sub_13C80(0, &unk_DF2B00, ICUserIdentity_ptr);
  v67 = static ICUserIdentity.active.getter();
  v68 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v67];

  v69 = objc_allocWithZone(ICStoreURLRequest);
  v70 = v68;
  v71 = sub_AB2A30();
  v72 = [v69 initWithURLRequest:v71 requestContext:v70];

  [v72 setCancelOnHTTPErrors:0];
  sub_13C80(0, &qword_E07CC0, ICURLSessionManager_ptr);
  v73 = static ICURLSessionManager.musicSession.getter();
  v74 = swift_allocObject();
  *(v74 + 16) = v2;
  v75 = v2;
  ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(v72, sub_1378FC, v74);

  sub_466A4(v83, v82);
  (*(v84 + 8))(v7, v4);
  (*(v85 + 8))(v16, v10);

  return result;
}

void sub_1370F4(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v6 = [a1 urlResponse];
    if (v6)
    {
      v7 = v6;
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8 && [v8 statusCode] == &stru_158.flags + 1)
      {
        v9 = [a1 parsedBodyDictionary];
        if (v9)
        {
          v10 = v9;
          v11 = sub_AB8FF0();

          sub_ABAD10();
          if (*(v11 + 16) && (v12 = sub_2EC004(v17), (v13 & 1) != 0))
          {
            sub_808B0(*(v11 + 56) + 32 * v12, &v18);
            sub_8085C(v17);
          }

          else
          {
            sub_8085C(v17);
            v18 = 0u;
            v19 = 0u;
          }

          if (*(&v19 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70, &unk_AF7D30);
            if (swift_dynamicCast())
            {
              v15 = v17[0];
LABEL_22:
              sub_137870();
              swift_allocError();
              *v16 = v15;
              *(v16 + 8) = 0;
              *(v16 + 16) = 0;

              goto LABEL_12;
            }

LABEL_21:
            v15 = _swiftEmptyArrayStorage;
            goto LABEL_22;
          }
        }

        else
        {
          v18 = 0u;
          v19 = 0u;
        }

        sub_12E1C(&v18, &unk_DE8E40, &unk_AF8050);
        goto LABEL_21;
      }
    }
  }

  if (!a2)
  {
    v14 = 0;
    goto LABEL_14;
  }

  swift_errorRetain();
LABEL_12:
  v14 = sub_AB3040();
LABEL_14:
  [a3 finishWithError:v14];
}

uint64_t sub_137328(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = sub_97E70(_swiftEmptyArrayStorage);
  if (a1)
  {
    v9 = [a1 parsedBodyDictionary];
    if (v9)
    {
      v10 = v9;
      v11 = sub_AB8FF0();

      *&v21[0] = 0x6E656B6F74;
      *(&v21[0] + 1) = 0xE500000000000000;
      sub_ABAD10();
      if (*(v11 + 16) && (v12 = sub_2EC004(v22), (v13 & 1) != 0))
      {
        sub_808B0(*(v11 + 56) + 32 * v12, v21);
        sub_8085C(v22);
        sub_9ACFC(v21, v23);
        strcpy(v20, "tokenType");
        WORD5(v20[0]) = 0;
        HIDWORD(v20[0]) = -385875968;
        sub_ABAD10();
        if (*(v11 + 16))
        {
          v14 = sub_2EC004(v22);
          if (v15)
          {
            sub_808B0(*(v11 + 56) + 32 * v14, v20);
            sub_8085C(v22);
            sub_9ACFC(v20, v21);
            strcpy(v20, "contentToken");
            BYTE13(v20[0]) = 0;
            HIWORD(v20[0]) = -5120;
            sub_ABAD10();
            sub_808B0(v23, v20);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            sub_913C0(v20, v22, isUniquelyReferenced_nonNull_native);
            sub_8085C(v22);
            *&v20[0] = 0xD000000000000010;
            *(&v20[0] + 1) = 0x8000000000B52960;
            sub_ABAD10();
            sub_808B0(v21, v20);
            v17 = swift_isUniquelyReferenced_nonNull_native();
            sub_913C0(v20, v22, v17);
            sub_8085C(v22);
            __swift_destroy_boxed_opaque_existential_0(v21);
            __swift_destroy_boxed_opaque_existential_0(v23);

            goto LABEL_11;
          }
        }

        sub_8085C(v22);
        __swift_destroy_boxed_opaque_existential_0(v23);
      }

      else
      {
        sub_8085C(v22);
      }
    }
  }

LABEL_11:
  if (*(v8 + 16) > 1uLL)
  {
    *(a3 + OBJC_IVAR____TtC16MusicApplication33MediaSocialProfileUpdateOperation_photoUploadDictionary) = v8;

    goto LABEL_15;
  }

  if (a2)
  {
LABEL_15:
    swift_errorRetain();
    goto LABEL_16;
  }

  sub_137870();
  a2 = swift_allocError();
  *v18 = xmmword_AF8620;
  *(v18 + 16) = 2;
LABEL_16:
  a4(a2);
}

id sub_137694()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaSocialProfileUpdateOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication33MediaSocialProfileUpdateOperationC0eF0V05PhotoF0OSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1377A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_137800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_137870()
{
  result = qword_DF14C8;
  if (!qword_DF14C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF14C8);
  }

  return result;
}

uint64_t sub_1378C4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_137924(UIImage *a1, void *a2, void *a3, void *a4, void *a5)
{
  v57 = a3;
  v60 = a1;
  v8 = sub_AB2A90();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin();
  v61 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB31C0();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v52 - v14;
  __chkstk_darwin();
  v17 = &v52 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v19 = a4;
  v53 = a5;
  v20 = sub_AB9260();
  v21 = [a2 urlForBagKey:v20];

  if (v21)
  {
    sub_AB3150();

    (*(v11 + 32))(v17, v15, v10);
    v22 = UIImageJPEGRepresentation(v60, 0.8);
    if (v22)
    {
      v23 = v22;
      v55 = sub_AB3260();
      v25 = v24;
    }

    else
    {
      v55 = 0;
      v25 = 0xF000000000000000;
    }

    v60 = v11;
    v28 = *(v11 + 16);
    v56 = v17;
    v28(v13, v17, v10);
    sub_AB2A50();
    sub_AB2A20();
    v64.value._countAndFlagsBits = 0x706A2F6567616D69;
    v66._countAndFlagsBits = 0x2D746E65746E6F43;
    v66._object = 0xEC00000065707954;
    v64.value._object = 0xEA00000000006765;
    sub_AB2A80(v64, v66);
    v29 = [objc_allocWithZone(NSUUID) init];
    v30 = [v29 UUIDString];
    if (v30)
    {
      v31 = v30;

      v32 = sub_AB9260();
      v33 = [v31 stringByAppendingPathExtension:v32];

      v34 = v18;
      v54 = v10;
      v35 = v25;
      if (v33)
      {
        v36 = sub_AB92A0();
        v38 = v37;
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      v53 = v38;
      v67._countAndFlagsBits = 0xD000000000000013;
      v67._object = 0x8000000000B52A20;
      v65.value._countAndFlagsBits = v36;
      v65.value._object = v38;
      v39 = v61;
      sub_AB2A80(v65, v67);
      v40 = v55;
      sub_9007C(v55, v35);
      sub_AB2A70();
      sub_13C80(0, &unk_DF2B00, ICUserIdentity_ptr);
      v41 = static ICUserIdentity.active.getter();
      v42 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v41];

      v43 = objc_allocWithZone(ICStoreURLRequest);
      v44 = v42;
      v45 = sub_AB2A30();
      v46 = [v43 initWithURLRequest:v45 requestContext:v44];

      sub_13C80(0, &qword_E07CC0, ICURLSessionManager_ptr);
      v47 = static ICURLSessionManager.musicSession.getter();
      v48 = swift_allocObject();
      v49 = v57;
      v48[2] = v57;
      v48[3] = sub_137FE8;
      v48[4] = v34;
      aBlock[4] = sub_138030;
      aBlock[5] = v48;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_151E0;
      aBlock[3] = &block_descriptor_21_0;
      v50 = _Block_copy(aBlock);
      v51 = v49;

      [v47 enqueueUploadRequest:v46 withCompletionHandler:v50];

      sub_466A4(v40, v35);
      (*(v58 + 8))(v39, v59);
      (v60[1].super.isa)(v56, v54);
      _Block_release(v50);
    }

    else
    {

      __break(1u);
    }
  }

  else
  {
    sub_137870();
    swift_allocError();
    *v26 = 0xD00000000000001BLL;
    *(v26 + 8) = 0x8000000000B52A00;
    *(v26 + 16) = 1;
    v27 = sub_AB3040();
    [v19 finishWithError:v27];
  }
}

id sub_137F98(id result)
{
  if (result != &dword_0 + 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_137FA8()
{

  return swift_deallocObject();
}

uint64_t sub_137FF0()
{

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication33MediaSocialProfileUpdateOperationC0F5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PromotionalParallaxContentView.VisualState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PromotionalParallaxContentView.VisualState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1380F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

double JSSocialOnboardingWelcomeView.textDrawingCache.setter(uint64_t a1)
{
  sub_13AA84(a1);

  return result;
}

double JSSocialOnboardingWelcomeView.headline.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_headline];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  v8 = v6 == a1 && v7 == a2;
  if (!v8 && (sub_ABB3C0() & 1) == 0)
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }

  return result;
}

double JSSocialOnboardingWelcomeView.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_title];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  v8 = v6 == a1 && v7 == a2;
  if (!v8 && (sub_ABB3C0() & 1) == 0)
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 8];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }

  return result;
}

double JSSocialOnboardingWelcomeView.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_subtitle];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  v8 = v6 == a1 && v7 == a2;
  if (!v8 && (sub_ABB3C0() & 1) == 0)
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 16];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }

  return result;
}

void JSSocialOnboardingWelcomeView.textAlignment.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textAlignment;
  swift_beginAccess();
  v4 = v1[v3];
  v1[v3] = v2;
  if (v4 != v2)
  {
    sub_13AE14(v2, *&v1[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents], *&v1[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 8], *&v1[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 16]);
    [v1 setNeedsLayout];
  }
}

void JSSocialOnboardingWelcomeView.artwork.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artwork;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_13938C();
}

void JSSocialOnboardingWelcomeView.artworkScaleMode.setter(unsigned __int8 a1)
{
  v3 = 0xEE00746946746365;
  v4 = 0x707341656C616373;
  v5 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkScaleMode;
  swift_beginAccess();
  v6 = v1[v5];
  v1[v5] = a1;
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = 0xD000000000000014;
      v8 = 0x8000000000B4DD30;
      v9 = a1;
      if (!a1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = 0xEF6C6C6946746365;
      v7 = 0x707341656C616373;
      v9 = a1;
      if (!a1)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = 0x707341656C616373;
    v8 = 0xEE00746946746365;
    v9 = a1;
    if (!a1)
    {
      goto LABEL_9;
    }
  }

  if (v9 == 1)
  {
    v4 = 0xD000000000000014;
    v3 = 0x8000000000B4DD30;
  }

  else
  {
    v3 = 0xEF6C6C6946746365;
  }

LABEL_9:
  if (v7 == v4 && v8 == v3)
  {
  }

  else
  {
    v10 = sub_ABB3C0();

    if ((v10 & 1) == 0)
    {
      [v1 setNeedsLayout];
    }
  }
}

double JSSocialOnboardingWelcomeView.sizeThatFits(_:)(double a1, double a2)
{
  v5 = [v2 traitCollection];
  [v5 displayScale];
  [v2 bounds];
  v7 = v6;
  v9 = v8;
  [v2 music_inheritedLayoutInsets];
  UIEdgeInsetsInsetRect(v7, v9, a1, a2, v10, v11);
  v13 = v12;
  v15 = v14;
  v16 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textStackView];
  v17 = [v16 traitCollection];
  [v17 displayScale];
  v19 = v18;

  if (v15 <= 5.99231045e307)
  {
    v20 = v15;
  }

  else
  {
    v20 = 5.99231045e307;
  }

  sub_2E94A4(v22, 0.0, 0.0, v13, v20, v19);
  sub_3F250(v22);

  sub_AB39F0();
  return a1;
}

void JSSocialOnboardingWelcomeView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_headline];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_title];
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_subtitle];
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textAlignment;
  v4[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textAlignment] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artwork] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkScaleMode] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textDrawingCache] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkCachingReference] = 0;
  v15 = &unk_DF1000;
  v16 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v18 = sub_80104(v17);

  *&v5[v16] = v18;
  v19 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textStackView;
  type metadata accessor for TextStackView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v19] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v5[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_imageArtworkCatalog] = 0;
  swift_beginAccess();
  v21 = sub_13AFB0(v5[v14]);
  v22 = &v5[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents];
  *v22 = v21;
  v22[1] = v23;
  v22[2] = v24;
  v22[3] = v25;
  v26 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v27 = *&v5[v19];
  *&v5[v19] = v26;
  v28 = v26;

  v29 = v22[3];
  if (!(v29 >> 62))
  {
    v30 = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
    if (v30)
    {
      goto LABEL_3;
    }

LABEL_11:

LABEL_12:
    v34 = *&v5[v19];
    v35 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
    swift_beginAccess();
    *(v34 + v35) = 2;
    v45.receiver = v5;
    v45.super_class = ObjectType;
    v36 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
    v37 = v15[165];
    v38 = *&v36[v37];
    *(v38 + 24) = 0xD00000000000001ELL;
    *(v38 + 32) = 0x8000000000B52A70;
    v39 = v36;

    v40 = *&v36[v37];
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v42 = (v40 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    v43 = *(v40 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    v44 = *(v40 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);
    *v42 = sub_13B168;
    v42[1] = v41;

    sub_17654(v43, v44);

    [v39 addSubview:*&v39[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textStackView]];

    return;
  }

  v30 = sub_ABB060();
  if (!v30)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v30 >= 1)
  {

    for (i = 0; i != v30; ++i)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v33 = sub_36003C(i, v29, v31);
      }

      else
      {
        v33 = *(v29 + 8 * i + 32);
      }

      TextStackView.add(_:)(v33);
    }

    v15 = &unk_DF1000;
    goto LABEL_12;
  }

  __break(1u);
}

void sub_138BB4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setNeedsLayout];
  }
}

uint64_t sub_138C60(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_headline];
  swift_beginAccess();
  result = a1;
  if (*v5 != a1 || *(v5 + 1) != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v8 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents];

      v9 = String.trim()();

      swift_beginAccess();
      v8[7] = v9;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

void (*JSSocialOnboardingWelcomeView.headline.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_headline;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_138E00;
}

uint64_t sub_138E18(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_title];
  swift_beginAccess();
  result = a1;
  if (*v5 != a1 || *(v5 + 1) != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v8 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 8];

      v9 = String.trim()();

      swift_beginAccess();
      v8[7] = v9;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

void (*JSSocialOnboardingWelcomeView.title.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_title;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_138FBC;
}

uint64_t sub_138FD4(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_subtitle];
  swift_beginAccess();
  result = a1;
  if (*v5 != a1 || *(v5 + 1) != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v8 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 16];

      v9 = String.trim()();

      swift_beginAccess();
      v8[7] = v9;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

void (*JSSocialOnboardingWelcomeView.subtitle.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_subtitle;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_139178;
}

void sub_139190(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v7 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  v9 = (v7 + v6);
  v11 = *v9;
  v10 = v9[1];
  *v9 = v5;
  v9[1] = v8;
  if (a2)
  {

    a3(v11, v10);
  }

  else
  {
    a3(v11, v10);
  }

  free(v4);
}

uint64_t JSSocialOnboardingWelcomeView.textAlignment.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textAlignment;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*JSSocialOnboardingWelcomeView.textAlignment.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textAlignment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_139310;
}

void sub_139310(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = v1[3];
  v3 = v1[4];
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v5 != v2)
  {
    v6 = v1[3];
    sub_13AE14(v2, *&v6[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents], *&v6[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 8], *&v6[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 16]);
    [v6 setNeedsLayout];
  }

  free(v1);
}

id sub_13938C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artwork;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3)
  {
    v4 = ICStoreArtworkInfoCropStyleBoundedBox;
    v5 = v3;
    v6 = JSArtwork.artworkCatalog(defaultCropStyle:)(v4);
  }

  else
  {
    v6 = 0;
  }

  v7 = *&v1[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_imageArtworkCatalog];
  *&v1[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_imageArtworkCatalog] = v6;
  v8 = v6;

  sub_74EA4(v6);
  return [v1 setNeedsLayout];
}

void *JSSocialOnboardingWelcomeView.artwork.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artwork;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id (*JSSocialOnboardingWelcomeView.artwork.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1394FC;
}

id sub_1394FC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_13938C();
  }

  return result;
}

uint64_t JSSocialOnboardingWelcomeView.artworkScaleMode.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkScaleMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*JSSocialOnboardingWelcomeView.artworkScaleMode.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkScaleMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_139608;
}

void sub_139608(id **a1, char a2)
{
  v2 = 0xEE00746946746365;
  v3 = 0x707341656C616373;
  v4 = *a1;
  v5 = *(*a1 + 40);
  v7 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = v6[v7];
  v6[v7] = v5;
  if (a2)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }

LABEL_10:
    v10 = 0x707341656C616373;
    v9 = 0xEE00746946746365;
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!v8)
  {
    goto LABEL_10;
  }

  if (v8 != 1)
  {
LABEL_4:
    v9 = 0xEF6C6C6946746365;
    v10 = 0x707341656C616373;
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_8:
  v10 = 0xD000000000000014;
  v9 = 0x8000000000B4DD30;
  if (!v5)
  {
LABEL_13:
    if (v10 != v3)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_11:
  if (v5 == 1)
  {
    v3 = 0xD000000000000014;
    v2 = 0x8000000000B4DD30;
    goto LABEL_13;
  }

  v2 = 0xEF6C6C6946746365;
  if (v10 != 0x707341656C616373)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (v9 == v2)
  {

    goto LABEL_20;
  }

LABEL_18:
  v11 = sub_ABB3C0();

  if ((v11 & 1) == 0)
  {
    [v4[3] setNeedsLayout];
  }

LABEL_20:

  free(v4);
}

id JSSocialOnboardingWelcomeView.isAccessibilityElement.setter(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "setIsAccessibilityElement:", a1 & 1);
}

void (*JSSocialOnboardingWelcomeView.isAccessibilityElement.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  ObjectType = swift_getObjectType();
  *(v4 + 48) = 1;
  *(v4 + 40) = ObjectType;
  return sub_139890;
}

void sub_139890(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = 2;
  if (a2)
  {
    v4 = 0;
  }

  v5 = 3;
  if (a2)
  {
    v5 = 1;
  }

  v6 = v2[5];
  v2[v4] = v2[4];
  v2[v5] = v6;
  objc_msgSendSuper2(&v2[v4], "setIsAccessibilityElement:", v3);

  free(v2);
}

uint64_t JSSocialOnboardingWelcomeView.accessibilityLabel.getter(__n128 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 24);
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      v7 = sub_36003C(v4, v2, a1);
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_11;
      }

LABEL_8:
      v9 = i;

      swift_beginAccess();
      v5 = *(v7 + 112);
      v6 = *(v7 + 120);

      v11._countAndFlagsBits = v5;
      v11._object = v6;
      sub_AB94A0(v11);

      ++v4;
      i = v9;
      if (v8 == v9)
      {
        return 0;
      }
    }

    if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_12;
    }

    v7 = *(v2 + 8 * v4 + 32);

    v8 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return 0;
}

void JSSocialOnboardingWelcomeView.accessibilityLabel.setter(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v5 = sub_AB9260();
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = v2;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, "setAccessibilityLabel:", v5);
}

void (*JSSocialOnboardingWelcomeView.accessibilityLabel.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  *(v3 + 80) = swift_getObjectType();
  v6 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 24);
  if (v6 >> 62)
  {
LABEL_18:
    v7 = sub_ABB060();
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  v15 = v4;
  if (v7)
  {
    v8 = 0;
    v4 = v6 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = sub_36003C(v8, v6, v5);
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v8 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_18;
        }

        v11 = *(v6 + 8 * v8 + 32);

        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_15;
        }
      }

      v13 = v7;

      swift_beginAccess();
      v9 = *(v11 + 112);
      v10 = *(v11 + 120);

      v16._countAndFlagsBits = v9;
      v16._object = v10;
      sub_AB94A0(v16);

      ++v8;
      v7 = v13;
    }

    while (v12 != v13);
  }

  *(v15 + 24) = 0;
  *(v15 + 32) = 0xE000000000000000;
  return sub_139E04;
}

void sub_139E04(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    if (v3)
    {

      v4 = sub_AB9260();
    }

    else
    {
      v4 = 0;
    }

    *(v2 + 40) = *(v2 + 72);
    objc_msgSendSuper2((v2 + 40), "setAccessibilityLabel:", v4);
  }

  else
  {
    if (v3)
    {
      v5 = sub_AB9260();
    }

    else
    {
      v5 = 0;
    }

    *(v2 + 56) = *(v2 + 72);
    objc_msgSendSuper2((v2 + 56), "setAccessibilityLabel:", v5);
  }

  free(v2);
}

uint64_t (*JSSocialOnboardingWelcomeView.textDrawingCache.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textDrawingCache;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_139F7C;
}

void sub_139F7C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textStackView);
    v6 = *(v4 + v3[4]);
    v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v8 = *&v5[v7];
    *&v5[v7] = v6;
    swift_retain_n();
    v9 = v5;
    sub_2E6210(v8);
  }

  free(v3);
}

double JSSocialOnboardingWelcomeView.artworkCachingReference.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkCachingReference;
  swift_beginAccess();
  *(v1 + v3) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkComponent) + 16) = a1;

  return result;
}

uint64_t (*JSSocialOnboardingWelcomeView.artworkCachingReference.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkCachingReference;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_13A194;
}

void sub_13A194(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(*(v3[3] + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkComponent) + 16) = *(v3[3] + v3[4]);
  }

  free(v3);
}

Swift::Void __swiftcall JSSocialOnboardingWelcomeView.layoutSubviews()()
{
  v1 = v0;
  [v0 music_inheritedLayoutInsets];
  v3 = v2;
  v5 = v4;
  [v0 bounds];
  v10 = UIEdgeInsetsInsetRect(v6, v7, v8, v9, v3, v5);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v0 bounds];
  v32 = v18;
  v33 = v17;
  v31 = v19;
  v21 = v20;
  v22 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textStackView;
  v23 = *&v0[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textStackView];
  v24 = [v23 traitCollection];
  [v24 displayScale];
  v26 = v25;

  if (v16 <= 5.99231045e307)
  {
    v27 = v16;
  }

  else
  {
    v27 = 5.99231045e307;
  }

  sub_2E94A4(v34, 0.0, 0.0, v14, v27, v26);
  sub_3F250(v34);

  v28 = v34[4];
  v29 = [v1 effectiveUserInterfaceLayoutDirection];
  v35.origin.x = v10;
  v35.origin.y = v12;
  v35.size.width = v14;
  v35.size.height = v16;
  CGRectGetMinX(v35);
  v36.origin.x = v10;
  v36.origin.y = v12;
  v36.size.width = v14;
  v36.size.height = v16;
  CGRectGetMaxY(v36);
  v37.origin.x = v10;
  v37.origin.y = v12;
  v37.size.width = v14;
  v37.size.height = v16;
  CGRectGetWidth(v37);
  v30 = *&v1[v22];
  [v1 bounds];
  sub_ABA490();
  [v30 setFrame:?];

  sub_13A3F8(v29, v33, v32, v31, v21 - *&v28);
}

void sub_13A3F8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (a5 <= 0.0)
  {
    v24 = *(*&v5[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkComponent] + 112);

    [v24 removeFromSuperview];
  }

  else
  {
    v8 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artwork;
    swift_beginAccess();
    v9 = *&v5[v8];
    if (v9)
    {
      v10 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_storeLookupDictionary;
      swift_beginAccess();
      v11 = *&v9[v10];
      if (v11)
      {
        if (*(v11 + 16))
        {
          v12 = v5;
          v13 = v9;

          v14 = sub_2EBF88(0x506E496874646977, 0xED000073746E696FLL);
          if ((v15 & 1) == 0)
          {
            goto LABEL_26;
          }

          sub_808B0(*(v11 + 56) + 32 * v14, &v39);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_26;
          }

          if (!*(v11 + 16))
          {
            goto LABEL_26;
          }

          v16 = v40;
          v17 = sub_2EBF88(0x6E49746867696568, 0xEE0073746E696F50);
          if ((v18 & 1) == 0)
          {
            goto LABEL_26;
          }

          sub_808B0(*(v11 + 56) + 32 * v17, &v39);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_26;
          }

          width = v16;
          height = v40;
          v21 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkScaleMode;
          v22 = v12;
          swift_beginAccess();
          if (v12[v21])
          {
            if (v12[v21] != 1)
            {
              v28 = *&v12[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkComponent];
              v29 = *(v28 + 144);
              *(v28 + 144) = 2;
              width = a4;
              height = a5;
              if (v29 != 2)
              {
                v30 = [*(v28 + 112) image];
                sub_788B8(v30);
                v22 = v12;

                width = a4;
                height = a5;
              }

              goto LABEL_25;
            }

            if (height <= a5)
            {
LABEL_25:
              v32 = *&v22[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkComponent];
              v33 = v32[10];
              v34 = v32[11];
              v32[10] = width;
              v32[11] = height;
              sub_75614(v33, v34);
              UIRectCenteredIntegralRect();
              [v22 bounds];
              sub_ABA490();
              sub_76B28(v35, v36, v37, v38);
              [v22 addSubview:*(v32 + 14)];
LABEL_26:

              return;
            }

            v23 = a5 / height;
          }

          else
          {
            if (height <= a5 && width <= a4)
            {
              goto LABEL_25;
            }

            sub_ABA4F0();
            v26 = v25;
            sub_ABA4F0();
            if (v27 >= v26)
            {
              v23 = a5 / height;
            }

            else
            {
              v23 = a4 / width;
            }
          }

          CGAffineTransformMakeScale(&v39, v23, v23);
          v42.width = width;
          v42.height = height;
          v31 = CGSizeApplyAffineTransform(v42, &v39);
          width = v31.width;
          height = v31.height;
          goto LABEL_25;
        }
      }
    }
  }
}

void (*sub_13A998(uint64_t **a1))(void *a1)
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
  v2[4] = JSSocialOnboardingWelcomeView.textDrawingCache.modify(v2);
  return sub_A8F90;
}

double sub_13AA08(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkCachingReference;
  swift_beginAccess();
  *(v1 + v3) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkComponent) + 16) = a1;

  return result;
}

double sub_13AA84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *&v4[v5];
  *&v4[v5] = a1;

  v7 = v4;
  sub_2E6210(v6);

  return result;
}

double sub_13AB4C@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  sub_89F60();
  v4 = sub_ABA550();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v5 = qword_E718C8;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  *a2 = v5;
  *(a2 + 8) = v8;
  *(a2 + 16) = a1;
  *(a2 + 24) = xmmword_AF8610;
  *(a2 + 40) = 1;
  *(a2 + 48) = v4;
  *(a2 + 56) = 0;
  result = 21.0;
  *(a2 + 64) = xmmword_AFFA30;
  return result;
}

double sub_13AC40@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  sub_89F60();
  v4 = sub_ABA550();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v5 = qword_E718D8;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  *a2 = v5;
  *(a2 + 8) = v8;
  *(a2 + 16) = a1;
  *(a2 + 24) = 4;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v4;
  *(a2 + 56) = 0;
  result = 48.0;
  *(a2 + 64) = xmmword_AFFA40;
  return result;
}

double sub_13AD28@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v5 = qword_E718D8;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  *a2 = v5;
  *(a2 + 8) = v8;
  *(a2 + 16) = a1;
  *(a2 + 24) = 4;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v4;
  *(a2 + 56) = 0;
  result = 36.0;
  *(a2 + 64) = xmmword_AFFA50;
  return result;
}

uint64_t sub_13AE14(unsigned __int8 a1, _OWORD *a2, _OWORD *a3, _OWORD *a4)
{
  sub_13AB4C(a1, v22);
  swift_beginAccess();
  v8 = a2[5];
  v25[2] = a2[4];
  v25[3] = v8;
  v25[4] = a2[6];
  v9 = a2[3];
  v25[0] = a2[2];
  v25[1] = v9;
  v10 = v22[3];
  a2[4] = v22[2];
  a2[5] = v10;
  a2[6] = v22[4];
  v11 = v22[1];
  a2[2] = v22[0];
  a2[3] = v11;
  sub_2F118(v22, v27);
  sub_2F174(v25);
  sub_2EB2A8();
  sub_2F174(v22);
  sub_13AC40(a1, v23);
  swift_beginAccess();
  v12 = a3[5];
  v26[2] = a3[4];
  v26[3] = v12;
  v26[4] = a3[6];
  v13 = a3[3];
  v26[0] = a3[2];
  v26[1] = v13;
  v14 = v23[3];
  a3[4] = v23[2];
  a3[5] = v14;
  a3[6] = v23[4];
  v15 = v23[1];
  a3[2] = v23[0];
  a3[3] = v15;
  sub_2F118(v23, v27);
  sub_2F174(v26);
  sub_2EB2A8();
  sub_2F174(v23);
  sub_13AD28(a1, v24);
  swift_beginAccess();
  v16 = a4[5];
  v27[2] = a4[4];
  v27[3] = v16;
  v27[4] = a4[6];
  v17 = a4[3];
  v27[0] = a4[2];
  v27[1] = v17;
  v18 = v24[3];
  a4[4] = v24[2];
  a4[5] = v18;
  a4[6] = v24[4];
  v19 = v24[1];
  a4[2] = v24[0];
  a4[3] = v19;
  sub_2F118(v24, v21);
  sub_2F174(v27);
  sub_2EB2A8();
  return sub_2F174(v24);
}

uint64_t sub_13AFB0(unsigned __int8 a1)
{
  sub_13AB4C(a1, v7);
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v2 = TextStackView.Component.init(identifier:labelProperties:)(0x656E696C64616568, 0xE800000000000000, v7);
  sub_2F118(v7, v9);

  sub_13AC40(a1, v8);
  swift_allocObject();
  v3 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v8);
  sub_2F118(v8, v9);

  sub_13AD28(a1, v9);
  swift_allocObject();
  v4 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_AF82E0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  *(v5 + 48) = v4;

  sub_2F174(v8);
  sub_2F174(v7);
  return v2;
}

uint64_t sub_13B130()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void _s16MusicApplication29JSSocialOnboardingWelcomeViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_headline);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_subtitle);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textAlignment) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artwork) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkScaleMode) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textDrawingCache) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkCachingReference) = 0;
  v5 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v7 = sub_80104(v6);

  *(v1 + v5) = v7;
  v8 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textStackView;
  type metadata accessor for TextStackView();
  *(v1 + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_imageArtworkCatalog) = 0;
  sub_ABAFD0();
  __break(1u);
}

id sub_13B3E0(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  *&v5[qword_DF1588] = 0;
  *&v5[qword_DF1590] = 0;
  *&v5[qword_DF1598] = 0;
  *&v5[qword_DF15A0] = 0;
  *&v5[qword_DF15A8] = 0;
  *&v5[qword_DF15C0] = 0;
  v10 = &v5[qword_DF15C8];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v5[qword_DF15D0];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  *&v5[qword_DF15B0] = a1;
  v12 = &v5[qword_DF15B8];
  *v12 = a2;
  v12[8] = a3;
  v13 = type metadata accessor for AlbumsViewController(0);
  v26.receiver = v5;
  v26.super_class = v13;
  v25 = a2;
  v14 = objc_msgSendSuper2(&v26, "init");
  v15 = sub_AB9260();

  [v14 setPlayActivityFeatureName:v15];

  v16 = objc_opt_self();
  v17 = [v16 currentDevice];
  v18 = [v17 userInterfaceIdiom];

  if (!v18)
  {
    v19 = sub_AB9260();
    [v14 setRestorationIdentifier:v19];
  }

  v20 = [v16 currentDevice];
  v21 = [v20 userInterfaceIdiom];

  if (!v21)
  {
    _s16MusicApplication16RestorationClassCMa_0();
    [v14 setRestorationClass:swift_getObjCClassFromMetadata()];
  }

  v22 = [v14 navigationItem];
  [v22 setLargeTitleDisplayMode:1];

  if (!a5)
  {
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
  }

  v23 = sub_AB9260();

  [v14 setTitle:v23];

  return v14;
}

void sub_13B79C(void *a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for AlbumsViewController(0);
  objc_msgSendSuper2(&v15, "encodeRestorableStateWithCoder:", a1);
  v3 = [v1 title];
  v4 = sub_AB9260();
  [a1 encodeObject:v3 forKey:v4];

  v14 = *&v1[qword_DF15B0];
  type metadata accessor for MPModelAlbumVariants(0);
  v5 = sub_ABB470();
  v6 = sub_AB9260();
  [a1 encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  if (v1[qword_DF15B8 + 8] <= 2u)
  {
    v7 = *&v1[qword_DF15B8];
    v8 = type metadata accessor for CodableModelIdentity();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR____TtC16MusicApplication20CodableModelIdentity_model] = v7;
    v13.receiver = v9;
    v13.super_class = v8;
    v10 = v7;
    v11 = objc_msgSendSuper2(&v13, "init");
    v12 = sub_AB9260();
    [a1 encodeObject:v11 forKey:v12];
  }
}

void sub_13B95C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_13B79C(v4);
}

double sub_13B9F8()
{
  v1 = v0;
  v35.receiver = v0;
  v35.super_class = type metadata accessor for AlbumsViewController(0);
  objc_msgSendSuper2(&v35, "viewDidLoad");
  v2 = [v0 navigationItem];
  v3 = [v2 rightBarButtonItems];
  if (v3)
  {
    v4 = v3;
    sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
    v5 = sub_AB9760();

    v2 = v4;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v34 = v5;
  v6 = sub_13C690();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = &v6[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange];
  v9 = *&v6[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange];
  v10 = *&v6[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange + 8];
  *v8 = sub_141720;
  v8[1] = v7;

  sub_17654(v9, v10);

  v11 = *&v1[qword_DF1590];
  v12 = sub_13C670();
  v13 = sub_4F46B0();
  sub_13C80(0, &qword_DF1D50, UIMenu_ptr);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v12;

  v16 = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, (&dword_0 + 1), 0, sub_14176C, v15);

  UIBarButtonItem.primaryActionKind.setter(v16, 1);

  v17 = *&v11[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController____lazy_storage___filterBarButtonItem];

  sub_AB9730();
  if (*(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v34 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  v18 = [v1 navigationItem];
  sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
  isa = sub_AB9740().super.isa;

  [v18 setRightBarButtonItems:isa animated:0];

  v20 = qword_DF1588;
  v21 = *&v1[qword_DF1588];
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = *(v21 + 64);
  v24 = *(v21 + 72);
  *(v21 + 64) = sub_141774;
  *(v21 + 72) = v22;

  sub_17654(v23, v24);

  v25 = *&v1[v20];
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = *(v25 + 48);
  v28 = *(v25 + 56);
  *(v25 + 48) = sub_141790;
  *(v25 + 56) = v26;

  sub_17654(v27, v28);

  v29 = sub_13C760();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = *(v29 + 88);
  v32 = *(v29 + 96);
  *(v29 + 88) = sub_1417A8;
  *(v29 + 96) = v30;

  sub_17654(v31, v32);

  return result;
}

void sub_13BE5C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*&stru_568.segname[(swift_isaMask & *Strong) - 8])();
  }
}

double sub_13BEE8@<D0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    v7 = xmmword_AF7710;
    *&result = PresentationSource.init(viewController:position:)(Strong, v5, a2).n128_u64[0];
  }

  else
  {
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 64) = 1;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
  }

  return result;
}

void sub_13BF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*&stru_568.segname[(swift_isaMask & *Strong) - 8])();
  }
}

void sub_13C000(void *a1)
{
  v1 = a1;
  sub_13B9F8();
}

void sub_13C048(char a1)
{
  type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v13 - v5;
  v7 = type metadata accessor for AlbumsViewController(0);
  v13.receiver = v1;
  v13.super_class = v7;
  objc_msgSendSuper2(&v13, "viewDidAppear:", a1 & 1);
  if (v1[qword_DF15B8 + 8] > 1u)
  {
    if (v1[qword_DF15B8 + 8] != 2)
    {
      v10 = MetricsReportingController.shared.unsafeMutableAddressor();
      v11 = *&v1[qword_DF15B0];
      v8 = *v10;
      if (v11 == 2)
      {
        v12 = MetricsEvent.Page.libraryCompilationsList.unsafeMutableAddressor();
      }

      else
      {
        v12 = MetricsEvent.Page.libraryAlbumsList.unsafeMutableAddressor();
      }

      sub_141658(v12, v4, type metadata accessor for MetricsEvent.Page);
      (*(&stru_68.reloff + (swift_isaMask & *v8)))(v4, 0, 0, 0, 0, 0);
      goto LABEL_11;
    }

    v8 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v9 = MetricsEvent.Page.libraryGenreDetail.unsafeMutableAddressor();
  }

  else
  {
    if (!v1[qword_DF15B8 + 8])
    {
      return;
    }

    v8 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v9 = MetricsEvent.Page.libraryComposerDetail.unsafeMutableAddressor();
  }

  sub_141658(v9, v6, type metadata accessor for MetricsEvent.Page);
  (*(&stru_68.reloff + (swift_isaMask & *v8)))(v6, 0, 0, 0, 0, 0);
  v4 = v6;
LABEL_11:
  sub_1416C0(v4, type metadata accessor for MetricsEvent.Page);
}

void sub_13C274(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_13C048(a3);
}

void sub_13C2C8()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for AlbumsViewController(0);
  objc_msgSendSuper2(&v12, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;

  type metadata accessor for CGSize(0);
  v8 = &v1[qword_DF15C8];
  v11 = *&v1[qword_DF15C8];
  if ((sub_AB38D0() & 1) == 0)
  {
    return;
  }

  *v8 = v5;
  *(v8 + 1) = v7;
  [v1 loadViewIfNeeded];
  v9 = *&v1[qword_DFE2F8];
  if (!v9)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v10 = [v9 collectionViewLayout];
  sub_13FA08(v10);
}

void sub_13C3E4(void *a1)
{
  v1 = a1;
  sub_13C2C8();
}

void sub_13C42C(void *a1)
{
  v2 = v1;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for AlbumsViewController(0);
  objc_msgSendSuper2(&v18, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = v4;
  if (a1)
  {
    sub_13C80(0, &qword_E00AB0, UITraitCollection_ptr);
    v6 = v5;
    v7 = a1;
    v8 = sub_ABA790();

    if (v8)
    {
      goto LABEL_10;
    }
  }

  if (UITraitCollection.isMediaPicker.getter(v4))
  {
    v9 = [v2 navigationController];
    if (v9)
    {
      v10 = v9;
      type metadata accessor for MediaPickerNavigationController(0);
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = [v11 view];
        if (!v12)
        {
          goto LABEL_18;
        }

        v13 = v12;
        sub_13F6D4();
        [v13 music_setLayoutInsets:?];

        v10 = v13;
      }
    }
  }

  if (a1)
  {
LABEL_10:
    v14 = [a1 horizontalSizeClass];
    LODWORD(a1) = 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v5 horizontalSizeClass];
  if (a1 && v14 == v15)
  {
    goto LABEL_16;
  }

  [v2 loadViewIfNeeded];
  v16 = *&v2[qword_DFE2F8];
  if (v16)
  {
    v17 = [v16 collectionViewLayout];
    sub_13FA08(v17);

LABEL_16:
    return;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_13C604(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_13C42C(a3);
}

_BYTE *sub_13C690()
{
  v1 = qword_DF1590;
  v2 = *(v0 + qword_DF1590);
  if (v2)
  {
    v3 = *(v0 + qword_DF1590);
  }

  else
  {
    v4 = v0;
    if (*(v0 + qword_DF15B8 + 8) > 1u)
    {
      if (*(v0 + qword_DF15B8 + 8) == 2)
      {
        v5 = 5;
      }

      else if (*(v0 + qword_DF15B0) == 2)
      {
        v5 = 3;
      }

      else
      {
        v5 = 0;
      }
    }

    else if (*(v0 + qword_DF15B8 + 8))
    {
      v5 = 4;
    }

    else
    {
      v5 = 1;
    }

    v6 = objc_allocWithZone(type metadata accessor for LibraryFilterOptionsController());
    v7 = sub_4F4944(v5);
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_13C760()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v1 = qword_DF1598;
  if (*&v0[qword_DF1598])
  {
    v2 = *&v0[qword_DF1598];
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    v3 = sub_AB9320();
    v5 = v4;
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v6 = v0;
    v2 = sub_4309D4(v3, v5);

    *&v0[v1] = v2;
  }

  return v2;
}

void sub_13C92C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AFFB00;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_AB92A0();
  *(v0 + 136) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  v9 = MPModelRelationshipAlbumArtist;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF4EC0;
  *(v11 + 32) = sub_AB92A0();
  *(v11 + 40) = v12;
  v13 = v9;
  isa = sub_AB9740().super.isa;
  v15 = objc_opt_self();
  v16 = [v15 propertySetWithProperties:isa];

  *(inited + 48) = v16;
  v17 = MPModelRelationshipAlbumRepresentativeSong;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_AF85F0;
  *(v19 + 32) = sub_AB92A0();
  *(v19 + 40) = v20;
  *(v19 + 48) = sub_AB92A0();
  *(v19 + 56) = v21;
  v22 = v17;
  v23 = sub_AB9740().super.isa;
  v24 = [v15 propertySetWithProperties:v23];

  *(inited + 72) = v24;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
  swift_arrayDestroy();
  v25 = objc_allocWithZone(MPPropertySet);
  v26 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v27 = sub_AB8FD0().super.isa;

  v28 = [v25 initWithProperties:v26 relationships:v27];

  qword_E70EE8 = v28;
}

uint64_t sub_13CCA8(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

void *sub_13CD10(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for LibraryNoContentStateController();
    swift_allocObject();
    v3 = sub_3E2914(v2);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v3[6];
    v6 = v3[7];
    v3[6] = sub_9D2B0;
    v3[7] = v4;

    sub_17654(v5, v6);

    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = v3[27];
    v9 = v3[28];
    v3[27] = sub_141000;
    v3[28] = v7;

    sub_17654(v8, v9);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_13CE4C(uint64_t a1@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v6 = Strong;
  v7 = sub_13C760();

  v8 = (*(v7 + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v9 = v8[1];
  if (!v9)
  {

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v10 = *v8;

  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  v12 = v11 != 0;
LABEL_8:
  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13 && (v14 = v13, v15 = sub_13C690(), v14, sub_4F4414(v12, v32), v15, *(&v32[0] + 1) != 1))
  {
    v18 = v34;
    v16 = v35;
    v17 = v33;
    v23 = v32[3];
    v24 = v32[2];
    v21 = v32[1];
    v22 = v32[0];
  }

  else
  {
    if (v12)
    {
      if (qword_DE6BD0 != -1)
      {
        swift_once();
      }

      v30[3] = xmmword_E717A8;
      v30[4] = xmmword_E717B8;
      v30[1] = xmmword_E71788;
      v30[2] = xmmword_E71798;
      v30[0] = xmmword_E71778;
      v16 = qword_E717C8;
      v31 = qword_E717C8;
      v18 = *(&xmmword_E717B8 + 1);
      v17 = xmmword_E717B8;
      v27 = xmmword_E71798;
      v28 = xmmword_E717A8;
      v25 = xmmword_E71778;
      v26 = xmmword_E71788;
      v19 = v30;
      v20 = &v29;
    }

    else
    {
      v18 = *(a1 + 72);
      v16 = *(a1 + 80);
      v17 = *(a1 + 64);
      v27 = *(a1 + 32);
      v28 = *(a1 + 48);
      v25 = *a1;
      v26 = *(a1 + 16);
      v20 = v30;
      v19 = a1;
    }

    sub_576EC(v19, v20);
    v22 = v25;
    v21 = v26;
    v24 = v27;
    v23 = v28;
  }

  *a3 = v22;
  *(a3 + 16) = v21;
  *(a3 + 32) = v24;
  *(a3 + 48) = v23;
  *(a3 + 64) = v17;
  *(a3 + 72) = v18;
  *(a3 + 80) = v16;
}

void sub_13D034(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v2[qword_DFE2F0];
  if (v7)
  {
    v8 = objc_allocWithZone(MPModelLibraryRequest);
    v9 = v7;
    v10 = [v8 init];
    v11 = [objc_opt_self() kindWithVariants:3];
    v12 = v10;
    v46 = v9;
    v13 = [v9 request];
    if (!v13)
    {
      goto LABEL_29;
    }

    v14 = v13;
    v15 = [v13 label];
    [v12 setLabel:v15];

    [v12 setItemKind:v11];
    v16 = [objc_opt_self() kindWithVariants:*&v2[qword_DF15B0] songKind:v11];
    [v12 setSectionKind:v16];

    static SortOptions.ViewType.Albums.preferredItemSortDescriptors.getter();
    sub_13C80(0, &unk_DFDE50, NSSortDescriptor_ptr);
    isa = sub_AB9740().super.isa;

    [v12 setItemSortDescriptors:isa];

    sub_13C670();

    v18 = sub_AB9740().super.isa;

    [v12 setSectionSortDescriptors:v18];

    v19 = sub_13C690();
    v20 = v19;
    if (v19[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption])
    {
      v21 = v19[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType];

      v22 = qword_AFFCE8[v21];
    }

    else
    {
      v22 = *MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
    }

    [v12 setFilteringOptions:v22];
    sub_13F4D8(v12, 1);
    [v12 setFilterText:0];
    v25 = sub_AB3820();
    v26 = (*(*(v25 - 8) + 48))(a1, 1, v25);
    v27 = v46;
    if (v26 == 1)
    {
      v28 = [v46 request];
      if (!v28)
      {
        v40 = 0;
        goto LABEL_24;
      }

      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        v30 = [v29 filterText];
        if (v30)
        {
          v31 = v30;
          v32 = sub_AB92A0();
          v34 = v33;

          v35 = HIBYTE(v34) & 0xF;
          if ((v34 & 0x2000000000000000) == 0)
          {
            v35 = v32 & 0xFFFFFFFFFFFFLL;
          }

          if (!v35)
          {
            v40 = 0;
            v28 = 0;
            goto LABEL_23;
          }

          *&v51[0] = _swiftEmptyArrayStorage;
          v45 = [v46 results];
          if (!v45)
          {
LABEL_30:
            __break(1u);
            return;
          }

          v28 = swift_allocObject();
          v28[2] = v51;
          v36 = swift_allocObject();
          *(v36 + 16) = sub_140FE8;
          *(v36 + 24) = v28;
          v49 = sub_57B9C;
          v50 = v36;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v48 = sub_48D644;
          *(&v48 + 1) = &block_descriptor_99_0;
          v37 = _Block_copy(&aBlock);

          v38 = v45;
          [v45 enumerateItemIdentifiersUsingBlock:v37];
          _Block_release(v37);
          LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

          if ((v37 & 1) == 0)
          {
            sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);

            v39 = sub_AB9740().super.isa;

            [v12 setAllowedSectionIdentifiers:v39];

            v40 = sub_140FE8;
LABEL_23:
            v27 = v46;
            goto LABEL_24;
          }

          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }
    }

    v40 = 0;
    v28 = 0;
LABEL_24:
    v41 = [v12 playbackIntentWithStartItemIdentifiers:{0, v45}];
    if (v41)
    {
      *v6 = v41;
      swift_storeEnumTagMultiPayload();
      v49 = 0;
      aBlock = 0u;
      v48 = 0u;
      v52 = 0;
      memset(v51, 0, sizeof(v51));
      v42 = v2;
      PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v6, &aBlock, 3, 0, 0, 1, 0, 1, a2, v2, v51);

      v43 = type metadata accessor for PlaybackIntentDescriptor(0);
      (*(*(v43 - 8) + 56))(a2, 0, 1, v43);
    }

    else
    {
      v44 = type metadata accessor for PlaybackIntentDescriptor(0);
      (*(*(v44 - 8) + 56))(a2, 1, 1, v44);
    }

    sub_17654(v40, v28);
    return;
  }

  v23 = type metadata accessor for PlaybackIntentDescriptor(0);
  v24 = *(*(v23 - 8) + 56);

  v24(a2, 1, 1, v23);
}

void *sub_13D770()
{
  v1 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v2 = v1;
  v3 = *(v0 + qword_DF15B0);
  v4 = *(v0 + qword_DF15A0);
  if (v4)
  {
    v5 = v1;
    v6 = v4;
  }

  else
  {
    v7 = objc_opt_self();
    v8 = v2;
    v6 = [v7 kindWithVariants:3];
  }

  v9 = objc_opt_self();
  v10 = v4;
  v11 = [v9 kindWithVariants:v3 songKind:v6];

  [v2 setItemKind:v11];
  v12 = sub_AB9260();
  [v2 setLabel:v12];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF4EC0;
  *(v13 + 32) = sub_AB92A0();
  *(v13 + 40) = v14;
  isa = sub_AB9740().super.isa;
  v16 = [objc_opt_self() propertySetWithProperties:isa];

  [v2 setSectionProperties:v16];
  if (qword_DE6890 != -1)
  {
    swift_once();
  }

  [v2 setItemProperties:qword_E70EE8];
  sub_13C670();
  sub_13C80(0, &unk_DFDE50, NSSortDescriptor_ptr);

  v17 = sub_AB9740().super.isa;

  [v2 setItemSortDescriptors:v17];

  v18 = sub_13C690();
  v19 = v18;
  if (v18[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption])
  {
    v20 = v18[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType];

    v21 = qword_AFFCE8[v20];
  }

  else
  {
    v21 = *MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
  }

  [v2 setFilteringOptions:v21];
  sub_13F4D8(v2, 1);

  return v2;
}

void sub_13DA54()
{
  v1 = (*&stru_568.sectname[swift_isaMask & *v0])();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_140F78;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_151E0;
  v4[3] = &block_descriptor_43;
  v3 = _Block_copy(v4);

  [v1 performWithResponseHandler:v3];
  _Block_release(v3);
}

double sub_13DB70(void *a1, uint64_t a2, uint64_t a3)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a1;
  v6 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_465C4, v5);

  return result;
}

double sub_13DC14(void *a1)
{
  sub_3B316C(a1);
  v1 = type metadata accessor for PlayIntentControlsReusableView();
  v2 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  v3 = *v2;
  v4 = v2[1];

  v5 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)(v1, v3, v4, v5, v6);

  v7 = type metadata accessor for CollectionViewSection.SectionHeaderView(0);
  v8 = sub_AB92A0();
  v10 = v9;
  v11 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)(v7, v8, v10, v11, v12);

  return result;
}

double sub_13DD04()
{
  v1 = v0;
  sub_13CC88();
  v2 = qword_DFE2F0;
  v3 = *(v0 + qword_DFE2F0);
  if (v3)
  {
    LOBYTE(v3) = [v3 isEmpty];
  }

  sub_3E2E84(v3);

  v4 = sub_13C760();
  v5 = *(v1 + v2);
  if (v5 && ([v5 isEmpty] & 1) == 0)
  {
    v13 = *(v4 + 64);
    *(v4 + 64) = 1;
    if (v13)
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_430320();
    goto LABEL_11;
  }

  v6 = (*(*(v1 + qword_DF1598) + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v9 = v8;
    }

    v10 = v9 != 0;
    v11 = *(v4 + 64);
    *(v4 + 64) = v10;
    if (v11 == v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v14 = *(v4 + 64);
  *(v4 + 64) = 0;
  if (v14)
  {
    goto LABEL_10;
  }

LABEL_11:

  return result;
}

double sub_13DE0C()
{
  v1 = [v0 traitCollection];
  v2 = &v0[qword_DF15D0];
  if (v0[qword_DF15D0 + 16])
  {
    sub_13F83C();
    v4 = v3;
    v5 = [v0 traitCollection];
    _s16MusicApplication9AlbumCellC20detailTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC06DetailfG0AELLVvpfi_0();
    v7 = v6;

    sub_2F48A4(v7, v5, 0, 0);

    if (qword_DE6948 != -1)
    {
      swift_once();
    }

    [v5 displayScale];
    sub_AB3A00();
    v9 = v8;

    *v2 = v4;
    *(v2 + 1) = v9;
    v2[16] = 0;
  }

  else
  {
    v4 = *v2;
  }

  return v4;
}

void sub_13DF68(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v5 = [v1 traitCollection];
  v6 = UITraitCollection.mediaLibrary.getter();

  [v4 setMediaLibrary:v6];
  v7 = v4;
  v8 = sub_AB9260();
  [v7 setLabel:v8];

  sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
  v9 = static MPModelAlbum.defaultMusicKind.getter();
  [v7 setSectionKind:v9];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_AF82B0;
  *(v10 + 32) = a1;
  sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
  v11 = a1;
  isa = sub_AB9740().super.isa;

  [v7 setScopedContainers:isa];

  sub_13F4D8(v7, 0);
  type metadata accessor for JSContainerDetailComponentController(0);
  v13 = v11;
  v14 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v13, 0, 1, UIScreen.Dimensions.size.getter, 0);
  if (!v14)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v20 = MPModelPropertyPlaylistType;
      v21 = v13;
      if ([v15 hasLoadedValueForKey:v20] && objc_msgSend(v15, "type") == &dword_8 + 1)
      {
        v15 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0, v22);
        v16 = *&v15[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

        goto LABEL_3;
      }

      v15 = 0;
    }

    v16 = 0;
    v17 = 0;
    v19 = 0xF000000000000000;
    goto LABEL_10;
  }

  v15 = v14;
  v16 = *&v14[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
LABEL_3:
  v17 = JSViewModel.playActivityRecommendationData.getter();
  v19 = v18;
LABEL_10:
  sub_466A4(0, 0xF000000000000000);
  v30[0] = v7;
  v30[1] = v16;
  v30[2] = v13;
  v30[3] = 0;
  v30[5] = 0;
  v30[6] = 0;
  v30[4] = v15;
  v31 = 1;
  v32 = v17;
  v33 = v19;
  v26[0] = v7;
  v26[1] = v16;
  v26[2] = v13;
  v26[3] = 0;
  v26[5] = 0;
  v26[6] = 0;
  v26[4] = v15;
  v27 = 1;
  v28 = v17;
  v29 = v19;
  sub_70EB0(v30, &v25);
  sub_70F0C(v26);
  v23 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController(0));
  v24 = sub_2D72DC(v30);
  [v2 showViewController:v24 sender:v2];
}

void sub_13E2E0(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    sub_13F6D4();
    v32 = v15;
    v34 = v14;
    v17 = UIEdgeInsetsInsetRect(v7, v9, v11, v13, v16, v14);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = sub_45B2C4(v3, v7, v9, v11, v13);
    v37.origin.x = v7;
    v37.origin.y = v9;
    v37.size.width = v11;
    v37.size.height = v13;
    Width = CGRectGetWidth(v37);
    sub_471A4();
    sub_AB38F0();
    [v3 displayScale];
    v26 = v25;
    v38.origin.x = v17;
    v38.origin.y = v19;
    v38.size.width = v21;
    v38.size.height = v23;
    CGRectGetWidth(v38);
    if (__OFSUB__(v24, 1))
    {
      __break(1u);
    }

    else
    {
      sub_AB3A00();
      v26 = v27;
      _s16MusicApplication9AlbumCellC20detailTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC06DetailfG0AELLVvpfi_0();
      v29 = v28;

      sub_2F48A4(v29, v3, 0, 0);

      if (qword_DE6948 == -1)
      {
LABEL_4:
        [v3 displayScale];
        sub_AB3A00();
        v31 = v30;

        [a1 setItemSize:{v26, v31}];
        [a1 setSectionInset:{10.0, v35, 0.0, v33}];
        [a1 setMinimumLineSpacing:12.0];
        [a1 setSectionHeadersPinToVisibleBounds:0];

        return;
      }
    }

    swift_once();
    goto LABEL_4;
  }

  __break(1u);
}

double sub_13E5C0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  sub_1412CC(v8, a5);
  v12 = v11;

  return v12;
}

double sub_13E640(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1414E8(v6);
  v10 = v9;

  return v10;
}

char *sub_13E6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB9230();
  __chkstk_darwin();
  if (sub_AB92A0() == a2 && v10 == a3)
  {

    goto LABEL_22;
  }

  v12 = sub_ABB3C0();

  if (v12)
  {
LABEL_22:
    v43 = type metadata accessor for CollectionViewSection.SectionHeaderView(0);
    v44 = static UICollectionReusableView.reuseIdentifier.getter();
    v17 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v43, a2, a3, a4, v44, v45, v43);

    v46 = *&v5[qword_DFE2F0];
    if (!v46)
    {
      return v17;
    }

    result = [v46 results];
    if (result)
    {
      v47 = result;
      v48 = [result sectionAtIndex:IndexPath.safeSection.getter()];

      if (v48 && (swift_dynamicCast() & 1) != 0)
      {
        v49 = HIBYTE(v51) & 0xF;
        if ((v51 & 0x2000000000000000) == 0)
        {
          v49 = v50 & 0xFFFFFFFFFFFFLL;
        }

        if (v49)
        {
          sub_13F320(v17, v50, v51);
        }
      }

      return v17;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  v13 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  if (*v13 == a2 && v13[1] == a3 || (sub_ABB3C0() & 1) != 0)
  {
    v14 = type metadata accessor for PlayIntentControlsReusableView();
    v15 = static UICollectionReusableView.reuseIdentifier.getter();
    v17 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v14, a2, a3, a4, v15, v16, v14);

    v18 = *&v5[direct field offset for BrowseCollectionViewController.textDrawingCache];
    *&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textDrawingCache] = v18;
    swift_retain_n();

    v19 = *&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textStackView];
    v20 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v21 = *(v19 + v20);
    *(v19 + v20) = v18;
    swift_retain_n();
    sub_2E6210(v21);

    v22 = *&v5[qword_DFE2F0];
    if (!v22)
    {
LABEL_12:
      v28 = v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isBottomHairlineHidden];
      v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isBottomHairlineHidden] = 1;
      if ((v28 & 1) == 0)
      {
        [*&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_bottomHairlineView] setHidden:1];
      }

      v29 = v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isTopHairlineHidden];
      v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isTopHairlineHidden] = 1;
      if ((v29 & 1) == 0)
      {
        [*&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_topHairlineView] setHidden:1];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA940, &qword_AF8F90);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_AF4EC0;
      *(v30 + 32) = 0;
      v31 = [v5 traitCollection];
      v32 = [v31 horizontalSizeClass];

      if (v32 == &dword_0 + 2)
      {
        v30 = sub_6B7E4(&dword_0 + 1, 2, 1, v30);
        *(v30 + 16) = 2;
        *(v30 + 33) = 1;
      }

      v33 = *&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_userInterfaceComponents];
      *&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_userInterfaceComponents] = v30;
      if ((sub_12D0A4(v30, v33) & 1) == 0)
      {
        sub_413EB8();
        [v17 setNeedsLayout];
      }

      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      *(v35 + 16) = sub_140DC0;
      *(v35 + 24) = v34;
      v36 = &v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler];
      v37 = *&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler];
      v38 = *&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler + 8];
      *v36 = sub_140E00;
      v36[1] = v35;

      sub_17654(v37, v38);
      sub_413EB8();
      [v17 setNeedsLayout];

      v39 = swift_allocObject();
      *(v39 + 16) = sub_140DC0;
      *(v39 + 24) = v34;
      v40 = &v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler];
      v41 = *&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler];
      v42 = *&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler + 8];
      *v40 = sub_140E2C;
      v40[1] = v39;

      sub_17654(v41, v42);
      sub_413EB8();
      [v17 setNeedsLayout];

      return v17;
    }

    result = [v22 results];
    if (result)
    {
      v24 = result;
      [result totalItemCount];

      sub_AB9220();
      v53._countAndFlagsBits = 0;
      v53._object = 0xE000000000000000;
      sub_AB9210(v53);
      sub_AB91F0();
      v54._countAndFlagsBits = 0x73286D75626C4120;
      v54._object = 0xE900000000000029;
      sub_AB9210(v54);
      sub_AB9240();
      sub_AB3550();
      v25 = sub_AB9320();
      v26 = &v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_title];
      *v26 = v25;
      v26[1] = v27;

      sub_413638();
      goto LABEL_12;
    }

    goto LABEL_36;
  }

  return sub_3DE1D8(a1, a4);
}

void sub_13EDEC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v4 = &v28 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v6 = &v28 - v5;
  v7 = type metadata accessor for PlaybackIntentDescriptor(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = sub_AB3820();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    sub_13D034(v4, v6);
    sub_12E1C(v4, &unk_DE8E20, &qword_AF7990);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_12E1C(v6, &unk_DEA510, "\b]\r");
    }

    else
    {
      v14 = sub_140E58(v6, v10);
      v20 = PlaybackIntentDescriptor.intent.getter(v19, v14, v15, v16, v17, v18);
      [v20 setShuffleMode:a1];

      v27 = PlaybackIntentDescriptor.intent.getter(v26, v21, v22, v23, v24, v25);
      [v27 setRepeatMode:0];

      sub_37D3DC(0);
      sub_1416C0(v10, type metadata accessor for PlaybackIntentDescriptor);
    }
  }
}

char *sub_13F084(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a1;
  v20 = sub_13E6B0(v16, v13, v15, v12);

  (*(v10 + 8))(v12, v9);

  return v20;
}

void sub_13F1E4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_3B41F4(v11, v10);
  isa = sub_AB3770().super.isa;
  [v11 deselectItemAtIndexPath:isa animated:1];
  (*(v8 + 8))(v10, v7);
}

void sub_13F320(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin();
  v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor:v11];

  v12 = [v4 traitCollection];
  sub_E2C18(a2, a3, v12, v10);

  v13 = OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView_contentConfiguration;
  swift_beginAccess();
  sub_140EBC(v10, &a1[v13]);
  swift_endAccess();
  v14 = sub_E34F8();
  swift_getObjectType();
  v17[3] = v8;
  v17[4] = sub_140F20();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  sub_141658(&a1[v13], boxed_opaque_existential_0, type metadata accessor for CollectionViewSection.ContentConfiguration);
  sub_AB4C70();
  sub_1416C0(v10, type metadata accessor for CollectionViewSection.ContentConfiguration);
}

void sub_13F4D8(void *a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    if (*(*(sub_13C760() + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text + 8))
    {

      v5 = sub_AB9260();
    }

    else
    {
      v5 = 0;
    }

    [a1 setFilterText:v5];
  }

  v6 = [v2 traitCollection];
  UITraitCollection.configure<A, B>(libraryRequest:)(a1);

  if (v3[qword_DF15B8 + 8] <= 2u)
  {
    v7 = *&v3[qword_DF15B8];
    v8 = [a1 scopedContainers];
    if (v8)
    {
      v9 = v8;
      sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
      v10 = sub_AB9760();
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF82B0;
    *(inited + 32) = v7;
    v14 = v10;
    v12 = v7;
    sub_19638(inited);
    sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
    isa = sub_AB9740().super.isa;

    [a1 setScopedContainers:{isa, v14}];
  }
}

void sub_13F6D4()
{
  v1 = v0;
  if ([v0 isViewLoaded])
  {
    v2 = [v0 view];
    if (!v2)
    {
      __break(1u);
      goto LABEL_11;
    }

    v3 = v2;
    [v2 music_inheritedLayoutInsets];

    v4 = qword_DFE2F8;
    if (*&v1[qword_DFE2F8])
    {
      v5 = [v1 traitCollection];
      v6 = UITraitCollection.isMediaPicker.getter(v5);

      if (v6)
      {
        [v1 loadViewIfNeeded];
        v7 = *&v1[v4];
        if (v7)
        {
          v8 = [v7 accessoryViewAtEdge:1];
          if (v8)
          {
            v9 = v8;
            [v8 bounds];
          }

          return;
        }

LABEL_11:
        __break(1u);
      }
    }
  }
}

void sub_13F83C()
{
  v1 = v0;
  [v0 loadViewIfNeeded];
  v2 = *&v0[qword_DFE2F8];
  if (v2)
  {
    v3 = v2;
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [v0 traitCollection];
    v13 = sub_45B2C4(v12, v5, v7, v9, v11);

    sub_13F6D4();
    v16.origin.x = v5;
    v16.origin.y = v7;
    v16.size.width = v9;
    v16.size.height = v11;
    Width = CGRectGetWidth(v16);
    sub_471A4();
    sub_AB38F0();
    v14 = [v1 traitCollection];
    [v14 displayScale];

    v17.origin.x = v5;
    v17.origin.y = v7;
    v17.size.width = v9;
    v17.size.height = v11;
    CGRectGetWidth(v17);
    if (!__OFSUB__(v13, 1))
    {
      sub_AB3A00();

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_13FA08(void *a1)
{
  v2 = v1;
  v64 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin();
  v63 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_AB3820();
  v5 = *(v79 - 8);
  __chkstk_darwin();
  v77 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v69 = &v62 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v82 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v62 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1D10, &qword_B12560);
  __chkstk_darwin();
  v12 = &v62 - v11;
  v13 = &v1[qword_DF15D0];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = *&v1[qword_DF15C0];
  *&v1[qword_DF15C0] = 0;

  [swift_getObjCClassFromObject() invalidationContextClass];
  swift_getObjCClassMetadata();
  sub_13C80(0, &qword_DF1D18, UICollectionViewFlowLayoutInvalidationContext_ptr);
  swift_dynamicCastMetatypeUnconditional();
  v62 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [a1 invalidateLayoutWithContext:?];
  [v1 loadViewIfNeeded];
  v15 = *&v1[qword_DFE2F8];
  if (!v15)
  {
    goto LABEL_33;
  }

  v16 = v2;
  v17 = sub_AB92A0();
  v19 = v18;
  v20 = v15;
  v21 = UICollectionView.visibleSupplementaryElements(of:)(v17, v19);
  v68 = v22;
  v70 = v23;

  v24 = 0;
  v25 = *(v21 + 16);
  v73 = qword_DFE2F0;
  v66 = v5 + 16;
  v75 = (v5 + 48);
  v76 = (v5 + 56);
  v81 = (v5 + 32);
  v67 = v5;
  v80 = (v5 + 8);
  v26 = v25;
  v27 = v77;
  v78 = v16;
  v28 = v21;
  v71 = v21;
  v72 = v12;
  v74 = v25;
  while (v24 == v26)
  {
    v29 = v28;
    v30 = 1;
    v31 = v26;
    v32 = v79;
LABEL_9:
    v34 = v31;
    v35 = 1;
    (*v76)(v10, v30, 1, v32);
    v36 = v10;
    v37 = v82;
    sub_1766C(v10, v82);
    v38 = v32;
    if ((*v75)(v37, 1, v32) != 1)
    {
      v39 = v69;
      (*v81)(v69, v82, v32);
      v68(v39);
      v27 = v77;
      (*v80)(v39, v32);
      v35 = 0;
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1D20, &qword_AFFCE0);
    (*(*(v40 - 8) + 56))(v12, v35, 1, v40);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1D20, &qword_AFFCE0);
    v28 = v29;
    if ((*(*(v41 - 8) + 48))(v12, 1, v41) == 1)
    {

      return;
    }

    v42 = *&v12[*(v41 + 48)];
    (*v81)(v27, v12, v38);
    v43 = *&v78[v73];
    v24 = v34;
    if (v43)
    {
      v44 = v42;
      v45 = v38;
      v46 = v74;
      v47 = [v43 results];
      if (!v47)
      {
        goto LABEL_32;
      }

      v48 = v47;
      v49 = v27;
      v50 = [v47 sectionAtIndex:IndexPath.safeSection.getter()];

      if (!v50)
      {
        (*v80)(v49, v45);

        v27 = v49;
        goto LABEL_24;
      }

      v87[0] = v50;
      if (swift_dynamicCast())
      {
        v52 = v83;
        v51 = v84;
        v53 = HIBYTE(v84) & 0xF;
        if ((v84 & 0x2000000000000000) == 0)
        {
          v53 = v83 & 0xFFFFFFFFFFFFLL;
        }

        v27 = v77;
        v26 = v46;
        if (v53)
        {
          if (v44)
          {
            type metadata accessor for CollectionViewSection.SectionHeaderView(0);
            v54 = swift_dynamicCastClass();
            if (v54)
            {
              v55 = v54;
              v56 = [objc_opt_self() clearColor];
              [v55 setBackgroundColor:v56];

              v57 = [v78 traitCollection];
              v58 = v63;
              sub_E2C18(v52, v51, v57, v63);

              v59 = OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView_contentConfiguration;
              swift_beginAccess();
              sub_140EBC(v58, v55 + v59);
              swift_endAccess();
              v60 = sub_E34F8();
              ObjectType = swift_getObjectType();
              v85 = v64;
              v86 = sub_140F20();
              v61 = __swift_allocate_boxed_opaque_existential_0(&v83);
              sub_141658(v55 + v59, v61, type metadata accessor for CollectionViewSection.ContentConfiguration);
              sub_AB4C70();
              sub_1416C0(v58, type metadata accessor for CollectionViewSection.ContentConfiguration);
              (*v80)(v77, v79);

              v27 = v77;
              goto LABEL_28;
            }
          }

          (*v80)(v27, v79);
        }

        else
        {
          (*v80)(v77, v45);
        }

LABEL_28:
        v10 = v36;
        v28 = v71;
        v12 = v72;
      }

      else
      {
        v27 = v77;
        (*v80)(v77, v45);

LABEL_24:
        v10 = v36;
        v28 = v71;
        v12 = v72;
        v26 = v46;
      }
    }

    else
    {
      (*v80)(v27, v38);

      v26 = v74;
      v10 = v36;
    }
  }

  if ((v24 & 0x8000000000000000) == 0)
  {
    if (v24 >= *(v28 + 16))
    {
      goto LABEL_31;
    }

    v29 = v28;
    v33 = v28 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v24;
    v32 = v79;
    (*(v67 + 16))(v10, v33, v79);
    v30 = 0;
    v31 = v24 + 1;
    goto LABEL_9;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_140304()
{

  v1 = *(v0 + qword_DF15C0);
}

id sub_1403AC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1403EC(uint64_t a1)
{

  v2 = *(a1 + qword_DF15C0);
}

uint64_t type metadata accessor for AlbumsViewController(uint64_t a1)
{
  result = qword_DF1600;
  if (!qword_DF1600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication20AlbumsViewControllerC9ScopeKindO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_140570(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1405B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1405FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

id sub_140748()
{
  v0 = [objc_allocWithZone(type metadata accessor for BrowseCollectionViewFlowLayout()) init];
  sub_13E2E0(v0);
  return v0;
}

BOOL sub_1407B0(void *a1, unsigned __int8 a2, void *a3, unsigned __int8 a4)
{
  if (a2 == 3 && a1 == 0)
  {
    return a4 == 3 && !a3;
  }

  if (a2 > 2u)
  {
    return 0;
  }

  v7 = [a1 identifiers];
  if (a4 > 2u || (v8 = [a3 identifiers]) == 0)
  {
    v8 = [objc_opt_self() emptyIdentifierSet];
  }

  v9 = [v7 intersectsSet:v8];

  return v9;
}

void *sub_1408A0(uint64_t a1)
{
  if (*(a1 + qword_DF15B8 + 8) > 1u)
  {
    if (*(a1 + qword_DF15B8 + 8) == 2)
    {
      v1 = 68;
    }

    else if (*(a1 + qword_DF15B0) == 2)
    {
      v1 = 66;
    }

    else
    {
      v1 = 64;
    }
  }

  else if (*(a1 + qword_DF15B8 + 8))
  {
    v1 = 67;
  }

  else
  {
    v1 = 65;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1D40, &qword_AF90C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_AF4EC0;
  *(v2 + 32) = v1;
  type metadata accessor for SortOptionsController();
  swift_allocObject();
  return sub_225174(v2, 0, 0);
}

double sub_140970(uint64_t a1, void *a2)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  v4 = [a2 representativeTitle];
  if (v4)
  {
    v5 = v4;
    v6 = sub_AB92A0();
    v8 = v7;
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    v6 = sub_AB9320();
    v8 = v9;
  }

  v10 = (a1 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_title);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = v6;
  v10[1] = v8;
  sub_1AE488(v11, v12);

  v36[3] = sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
  v36[4] = &off_D17A20;
  v36[0] = a2;
  sub_140D18(v36, v33);
  v13 = v34;
  if (v34)
  {
    v14 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v15 = a2;
    v16 = sub_4CAA30(&off_CEFDE8, v13, v14);
    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  else
  {
    v17 = a2;
    sub_12E1C(v33, &unk_DE9C60, &unk_AF8940);
    v16 = _swiftEmptyArrayStorage;
  }

  sub_1783C8(v16);

  sub_12E1C(v36, &unk_DE9C60, &unk_AF8940);
  v18 = [a2 artist];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 name];
    if (v20)
    {
      v21 = v20;
      v22 = sub_AB92A0();
      v24 = v23;

      v25 = (a1 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_artistName);
      swift_beginAccess();
      v26 = *v25;
      v27 = v25[1];
      *v25 = v22;
      v25[1] = v24;
      goto LABEL_15;
    }
  }

  if ([a2 isCompilation])
  {
    sub_AB91E0();
    sub_AB3550();
    v28 = sub_AB9320();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0xE000000000000000;
  }

  v31 = (a1 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_artistName);
  swift_beginAccess();
  v26 = *v31;
  v27 = v31[1];
  *v31 = v28;
  v31[1] = v30;
LABEL_15:
  sub_1AE788(v26, v27);

  return result;
}

uint64_t sub_140D18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C60, &unk_AF8940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_140D88()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_140DC8()
{

  return swift_deallocObject();
}

uint64_t sub_140E58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_140EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_140F20()
{
  result = qword_DEE978;
  if (!qword_DEE978)
  {
    type metadata accessor for CollectionViewSection.ContentConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE978);
  }

  return result;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_140F98()
{

  return swift_deallocObject();
}

void sub_141008(void *a1)
{
  type metadata accessor for CodableModelIdentity();
  v2 = sub_ABA710();
  if (!v2)
  {
    v6 = 0;
    v4 = 0;
    v7 = 3;
    goto LABEL_10;
  }

  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication20CodableModelIdentity_model);

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = 0;
LABEL_9:
    v4 = v4;
    goto LABEL_10;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v6 = v8;
    v7 = 1;
    goto LABEL_9;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = 2;
    goto LABEL_9;
  }

  v7 = 3;
LABEL_10:
  v9 = sub_AB9260();
  v10 = [a1 decodeInt64ForKey:v9];

  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_13C80(0, &qword_DE8170, NSString_ptr);
    v11 = sub_ABA710();
    if (v11)
    {
      v12 = v11;
      v13 = sub_AB92A0();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v16 = objc_allocWithZone(type metadata accessor for AlbumsViewController(0));
    sub_13B3E0(v10, v6, v7, v13, v15);
  }
}

void sub_141200()
{
  *(v0 + qword_DF1588) = 0;
  *(v0 + qword_DF1590) = 0;
  *(v0 + qword_DF1598) = 0;
  *(v0 + qword_DF15A0) = 0;
  *(v0 + qword_DF15A8) = 0;
  *(v0 + qword_DF15C0) = 0;
  v1 = (v0 + qword_DF15C8);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + qword_DF15D0;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  sub_ABAFD0();
  __break(1u);
}

void sub_1412CC(void *a1, uint64_t a2)
{
  v4 = *&v2[qword_DFE2F0];
  if (v4)
  {
    v6 = [v4 results];
    if (v6)
    {
      v7 = v6;
      if ([v6 numberOfSections] >= 2 && (objc_msgSend(v7, "sectionAtIndex:", a2), (swift_dynamicCast() & 1) != 0))
      {
        v8 = qword_DF15C0;
        v9 = *&v2[qword_DF15C0];
        if (v9)
        {
          v10 = *&v2[qword_DF15C0];
LABEL_11:
          v14 = v9;
          sub_13F320(v10, v20, v21);
          [a1 bounds];
          v16 = v15;
          v18 = v17;
          v19 = sub_E34F8();
          [v19 sizeThatFits:{v16, v18}];

          return;
        }

        v10 = [objc_allocWithZone(type metadata accessor for CollectionViewSection.SectionHeaderView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        [v10 setHidden:1];
        [v10 setUserInteractionEnabled:0];
        v11 = [v2 view];
        if (v11)
        {
          v12 = v11;
          [v11 addSubview:v10];

          v13 = *&v2[v8];
          *&v2[v8] = v10;

          v9 = 0;
          goto LABEL_11;
        }

        __break(1u);
      }

      else
      {
      }
    }
  }
}

void sub_1414E8(void *a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.isMediaPicker.getter(v4);

  if (!v5)
  {
    v6 = *&v2[qword_DFE2F0];
    if (v6)
    {
      v7 = v6;
      v8 = [v7 results];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 totalItemCount];

        if (v10 >= 1)
        {
          v11 = [v2 traitCollection];
          [a1 bounds];
          v12 = [objc_opt_self() defaultMetrics];
          sub_AB9EF0();

          v7 = v12;
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_141658(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1416C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_14172C()
{

  return swift_deallocObject();
}

uint64_t sub_1417AC(unsigned __int8 a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  if (a1 == 2)
  {
    v2 = sub_1420E0();
    FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2);
  }

  sub_AB91E0();
  sub_AB3550();
  return sub_AB9320();
}

uint64_t sub_141AB0()
{
  result = sub_1417AC(2u);
  byte_E70EF0 = 1;
  qword_E70EF8 = result;
  unk_E70F00 = v1;
  return result;
}

uint64_t sub_141AE0()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  result = sub_AB9320();
  byte_E70F08 = 2;
  qword_E70F10 = result;
  unk_E70F18 = v1;
  return result;
}

uint64_t sub_141BF0()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  result = sub_AB9320();
  byte_E70F20 = 3;
  qword_E70F28 = result;
  unk_E70F30 = v1;
  return result;
}

uint64_t TabIdentifier.musicTabID.getter@<X0>(unsigned __int8 a1@<W0>, void *a2@<X8>)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v3 = &enum case for MusicTabID.listenNow(_:);
      }

      else
      {
        v3 = &enum case for MusicTabID.browse(_:);
      }
    }

    else
    {
      v3 = &enum case for MusicTabID.library(_:);
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v3 = &enum case for MusicTabID.videos(_:);
    }

    else
    {
      *a2 = 0x7473696C79616C70;
      a2[1] = 0xE900000000000073;
      v3 = &enum case for MusicTabID.other(_:);
    }
  }

  else if (a1 == 3)
  {
    v3 = &enum case for MusicTabID.radio(_:);
  }

  else
  {
    v3 = &enum case for MusicTabID.search(_:);
  }

  v4 = *v3;
  v5 = sub_AB5610();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

uint64_t sub_141E04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = _s9MusicCore13TabIdentifierO0A11ApplicationE05musicC2IDACSg0A2UI0acG0O_tcfC_0(a2);
  *a1 = result;
  return result;
}

uint64_t sub_141E2C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (v3 <= 2)
  {
    if (*v1)
    {
      if (v3 == 1)
      {
        v4 = &enum case for MusicTabID.listenNow(_:);
      }

      else
      {
        v4 = &enum case for MusicTabID.browse(_:);
      }
    }

    else
    {
      v4 = &enum case for MusicTabID.library(_:);
    }
  }

  else if (*v1 > 4u)
  {
    if (v3 == 5)
    {
      v4 = &enum case for MusicTabID.videos(_:);
    }

    else
    {
      *a1 = 0x7473696C79616C70;
      a1[1] = 0xE900000000000073;
      v4 = &enum case for MusicTabID.other(_:);
    }
  }

  else if (v3 == 3)
  {
    v4 = &enum case for MusicTabID.radio(_:);
  }

  else
  {
    v4 = &enum case for MusicTabID.search(_:);
  }

  v5 = *v4;
  v6 = sub_AB5610();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

uint64_t _s9MusicCore13TabIdentifierO0A11ApplicationE05musicC2IDACSg0A2UI0acG0O_tcfC_0(uint64_t a1)
{
  v2 = sub_AB5610();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == enum case for MusicTabID.listenNow(_:))
  {
    return 1;
  }

  if (v4 == enum case for MusicTabID.browse(_:))
  {
    return 2;
  }

  if (v4 == enum case for MusicTabID.videos(_:))
  {
    return 5;
  }

  if (v4 == enum case for MusicTabID.radio(_:))
  {
    return 3;
  }

  if (v4 == enum case for MusicTabID.library(_:))
  {
    return 0;
  }

  if (v4 == enum case for MusicTabID.search(_:))
  {
    return 4;
  }

  (*(v3 + 8))(a1, v2);
  return 7;
}

unint64_t sub_14208C()
{
  result = qword_DF1D58;
  if (!qword_DF1D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF1D58);
  }

  return result;
}

unint64_t sub_1420E0()
{
  result = qword_DF1D60;
  if (!qword_DF1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF1D60);
  }

  return result;
}

char *sub_142134(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_duration] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeView] = 0;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication8SongCell_popularity];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder];
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkCatalog] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle] = 0;
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v4[OBJC_IVAR____TtC16MusicApplication8SongCell_maximumTrackNumberForSizing];
  *v15 = 0;
  v15[8] = 1;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkBackgroundView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkComponent] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextDrawingView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_titleTextDrawingView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_artistTextDrawingView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTextDrawingView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_durationTextDrawingView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextStackView] = 0;
  v16 = &v4[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents];
  sub_14C5F4(0, v69);
  v17 = v69[1];
  *v16 = v69[0];
  *(v16 + 1) = v17;
  *(v16 + 4) = v70;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_chevronImageView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_musicVideoGlyphImageView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___favoriteSizingView] = 0;
  v68.receiver = v4;
  v68.super_class = type metadata accessor for SongCell(0);
  v18 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  v19 = [v18 layer];
  [v19 setAllowsGroupOpacity:0];

  v20 = [v18 layer];
  [v20 setAllowsGroupBlending:0];

  v21 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v25 = v21[3];
  v66 = v21[5];
  v67 = v21[4];
  v26 = &v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v65 = *&v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v64 = *&v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
  v63 = *&v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
  v62 = *&v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
  *v26 = *v21;
  v26[1] = v23;
  v26[2] = v24;
  v26[3] = v25;
  v26[4] = v67;
  v26[5] = v66;
  v27 = v22;
  v28 = v23;
  v29 = v24;
  v30 = v25;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  v34 = v30;
  sub_2F1C8(v65, v64, v63, v62);
  v35 = *&v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v36 = *(v35 + 168);
  v71[0] = *(v35 + 152);
  v71[1] = v36;
  v71[2] = *(v35 + 184);
  *(v35 + 152) = v22;
  *(v35 + 160) = v23;
  *(v35 + 168) = v24;
  *(v35 + 176) = v25;
  *(v35 + 184) = v67;
  *(v35 + 192) = v66;
  v37 = v31;
  v38 = v32;
  v39 = v33;
  v40 = v34;
  v41 = v37;
  v42 = v38;
  v43 = v39;
  v44 = v40;
  sub_75948(v71);
  sub_12E1C(v71, &unk_DF8690, &unk_AF9900);

  v45 = v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 1;
  if ((v45 & 1) == 0)
  {
    [v18 setNeedsLayout];
  }

  v46 = v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsCustomHandlingOfSeparatorInset];
  v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsCustomHandlingOfSeparatorInset] = 0;
  if (v46 == 1)
  {
    [v18 setNeedsLayout];
  }

  v47 = *&v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF7C50;
  v49 = &v18[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents];
  v50 = *&v18[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents + 8];
  *(inited + 32) = v50;
  *(inited + 40) = *(v49 + 2);
  v51 = v47;

  if ((inited & 0xC000000000000001) != 0)
  {
    v50 = sub_36003C(0, inited, v52);
  }

  else
  {
  }

  TextStackView.add(_:)(v50);

  if ((inited & 0xC000000000000001) != 0)
  {
    v54 = sub_36003C(1uLL, inited, v53);
  }

  else
  {
    v54 = *(inited + 40);
  }

  TextStackView.add(_:)(v54);

  swift_setDeallocating();
  swift_arrayDestroy();

  sub_149D50();
  v55 = AccessibilityIdentifier.songCell.unsafeMutableAddressor();
  v56 = *v55;
  v57 = v55[1];
  v58 = v55[2];
  v59 = v55[3];

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v56, v57, v60, v58, v59);
  v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView] = 0;

  return v18;
}

double sub_142740(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents + 8];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_142858(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents + 8];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

double sub_142958(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents + 16];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_142A70(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName] != result || *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents + 16];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

double sub_142B70(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v13;
  v14 = a3;
  v15 = a1;
  a5(v11, v12);

  return result;
}

double sub_142C04(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents + 24];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_142D1C(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle] != result || *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents + 24];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

void sub_142E58(id result, __n128 a2)
{
  v3 = a2.n128_f64[0];
  v4 = OBJC_IVAR____TtC16MusicApplication8SongCell_duration;
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_duration];
  *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_duration] = v3;
  if (v5 != v3)
  {
    v6 = v2;
    v7 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents + 32];
    if (*Double.epsilon.unsafeMutableAddressor() >= v3)
    {
      v9 = 0;
      v11 = 0xE000000000000000;
    }

    else
    {
      if (qword_DE6CB0 != -1)
      {
        swift_once();
      }

      v8 = [qword_E718F0 stringFromSeconds:*&v6[v4]];
      v9 = sub_AB92A0();
      v11 = v10;
    }

    swift_beginAccess();
    *(v7 + 112) = v9;
    *(v7 + 120) = v11;

    sub_2EB704();
    [v6 setNeedsLayout];
  }
}

void sub_142FDC(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = sub_AB4E30();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2[OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem];
  v2[OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem] = a1;
  if (v10 != v4)
  {
    v11 = [v2 _bridgedConfigurationState];
    sub_AB4E00();
    isa = sub_AB4DF0().super.super.isa;
    (*(v6 + 8))(v9, v5);

    [v2 _bridgedUpdateConfigurationUsingState:isa];
  }
}

void sub_143184(uint64_t result)
{
  v2 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite);
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite) = result;
  if (v3 != (result & 1))
  {
    sub_201644();
    v4 = sub_200954();
    [v4 setHidden:(*(v1 + v2) & 1) == 0];

    LOBYTE(result) = *(v1 + v2);
  }

  if (v3 != (result & 1))
  {

    sub_14B200();
  }
}

double sub_1432BC(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder);
  v5 = *(v1 + OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 8);
  v6 = *(v1 + OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 16);
  v7 = *(v1 + OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 24);
  v8 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v8;
  *(v3 + 32) = a1[2];
  sub_15F84(a1, v19, &unk_DF8690, &unk_AF9900);
  sub_2F1C8(v4, v5, v6, v7);
  v9 = *(v1 + OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle);
  if (v9 >> 13)
  {
    if (v9 >> 13 != 2 || (v9 & 0x100) == 0)
    {
      goto LABEL_4;
    }
  }

  else if ((v9 & 1) == 0)
  {
LABEL_4:
    sub_12E1C(a1, &unk_DF8690, &unk_AF9900);
    return result;
  }

  v11 = sub_1498AC();
  v12 = *v3;
  v13 = *(v3 + 8);
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  v16 = *(v3 + 32);
  v17 = *(v3 + 40);
  v18 = *(v11 + 168);
  v19[0] = *(v11 + 152);
  v19[1] = v18;
  v19[2] = *(v11 + 184);
  *(v11 + 152) = v12;
  *(v11 + 160) = v13;
  *(v11 + 168) = v14;
  *(v11 + 176) = v15;
  *(v11 + 184) = v16;
  *(v11 + 192) = v17;
  sub_80C9C(v12, v13, v14, v15);
  sub_80C9C(v12, v13, v14, v15);
  sub_75948(v19);
  sub_12E1C(a1, &unk_DF8690, &unk_AF9900);
  sub_12E1C(v19, &unk_DF8690, &unk_AF9900);
  sub_2F1C8(v12, v13, v14, v15);

  return result;
}

void sub_143468(void *a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkCatalog;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkCatalog);
  *(v1 + OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkCatalog) = a1;
  v7 = a1;

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle);
  if (v4 >> 13)
  {
    if (v4 >> 13 == 2 && (v4 & 0x100) != 0)
    {
      goto LABEL_4;
    }
  }

  else if (v4)
  {
LABEL_4:
    sub_1498AC();
    v5 = *(v1 + v2);
    v6 = v5;
    sub_74EA4(v5);
  }
}

id sub_143510(id result)
{
  v2 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle];
  v3 = result >> 13;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      if ((v2 & 0xE000) == 0x6000)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v3 != 4)
      {
        if (result == 40960)
        {
          if (v2 == 40960)
          {
            return result;
          }
        }

        else if (v2 == 40961)
        {
          return result;
        }

        goto LABEL_22;
      }

      if ((v2 & 0xE000) == 0x8000)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (!(result >> 13))
    {
      if (v2 < 0x2000)
      {
        if (((v2 ^ result) & 1) == 0)
        {
          return result;
        }

LABEL_24:
        LOWORD(v4) = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle];
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    if (v3 == 1)
    {
      if ((v2 & 0xE000) != 0x2000)
      {
        goto LABEL_22;
      }

LABEL_14:
      if (((v2 ^ result) & 1) == 0)
      {
        return result;
      }

      goto LABEL_34;
    }

    if ((v2 & 0xE000) == 0x4000)
    {
      v4 = (v2 >> 8) & 1;
      if (((v2 ^ result) & 1) == 0 && ((v4 ^ ((result & 0x100) >> 8)) & 1) == 0)
      {
        return result;
      }

      goto LABEL_26;
    }
  }

LABEL_22:
  if (v2 >> 13 != 2)
  {
    if (v2 >> 13)
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  v4 = (v2 >> 8) & 1;
LABEL_26:
  v5 = sub_1497E8();
  [v5 setHidden:(v4 & 1) == 0];

  v6 = *(sub_1498AC() + 112);

  [v6 setHidden:(v4 & 1) == 0];

  if (v4)
  {
    v7 = OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkComponent;
    v8 = [*(*&v1[OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkComponent] + 112) superview];
    v9 = [v1 contentView];
    v10 = v9;
    if (v8)
    {

      if (v8 == v10)
      {
        goto LABEL_34;
      }
    }

    else
    {
    }

    v11 = [v1 contentView];
    [v11 addSubview:*&v1[OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkBackgroundView]];

    v12 = [v1 contentView];
    [v12 addSubview:*(*&v1[v7] + 112)];
  }

LABEL_34:
  sub_14B0E0(result);
  sub_149D50();

  return [v1 setNeedsLayout];
}

id sub_14377C(__int16 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle);
  *(v1 + OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle) = a1;
  return sub_143510(v2);
}

void sub_143794(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber];
  if ((v2[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber + 8] & 1) != 0 || (v7 = *v6) == 0)
  {
    v13 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents];
    swift_beginAccess();
    *(v13 + 112) = 0;
    *(v13 + 120) = 0xE000000000000000;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1E10, &unk_B071A0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_AF4EC0;
    *(v8 + 56) = &type metadata for Int;
    *(v8 + 64) = &protocol witness table for Int;
    *(v8 + 32) = v7;
    v9 = sub_AB9270();
    v11 = v10;

    v12 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents];
    swift_beginAccess();
    *(v12 + 112) = v9;
    *(v12 + 120) = v11;
  }

  sub_2EB704();
  v14 = v6[8];
  if (a2)
  {
    if (v6[8])
    {
      return;
    }

LABEL_11:
    [v3 setNeedsLayout];
    return;
  }

  if (*v6 != a1)
  {
    v14 = 1;
  }

  if (v14)
  {
    goto LABEL_11;
  }
}

void sub_1438F0(uint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber;
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber);
  v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber + 8);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  sub_143794(v4, v5);
}

uint64_t sub_14391C(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC16MusicApplication8SongCell_maximumTrackNumberForSizing;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

id sub_1439B4(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for SongCell(0);
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_143A5C(char a1, SEL *a2, SEL *a3)
{
  v7 = type metadata accessor for SongCell(0);
  v13.receiver = v3;
  v13.super_class = v7;
  v8 = objc_msgSendSuper2(&v13, *a2);
  v12.receiver = v3;
  v12.super_class = v7;
  objc_msgSendSuper2(&v12, *a3, a1 & 1);
  if (v8 != [v3 *a2])
  {
    v9 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle];
    if (!(v9 >> 13))
    {
      if ((v9 & 1) == 0)
      {
        return;
      }

      goto LABEL_5;
    }

    if (v9 >> 13 == 2 && (v9 & 0x100) != 0)
    {
LABEL_5:
      v10 = sub_1497E8();
      v11 = [objc_opt_self() whiteColor];
      [v10 setBackgroundColor:v11];
    }
  }
}

void sub_143BBC(char a1, double a2)
{
  v3 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
  v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled] = a1;
  if (v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView] == 1)
  {
    v4 = a1 & 1;
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
    v6 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
    swift_beginAccess();
    v5[v6] = v4;
    v23 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
    v24 = v5;
    if (v5[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] != v4)
    {
      v5[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = v4;
      v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
      swift_beginAccess();
      v8 = *&v5[v7];
      if (v8 >> 62)
      {
        v9 = sub_ABB060();
        if (!v9)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
        if (!v9)
        {
          goto LABEL_20;
        }
      }

      v22 = v3;
      v10 = v9 - 1;
      if (v9 < 1)
      {
        __break(1u);
        return;
      }

      v21 = v5;

      v12 = 0;
      if ((v8 & 0xC000000000000001) == 0)
      {
        goto LABEL_15;
      }

LABEL_7:
      v13 = *(sub_36003C(v12, v8, v11) + 256);
      if (v13)
      {
LABEL_8:
        v14 = v13;
        if (([v14 isHidden] & 1) == 0)
        {
          v15 = v24[v23];
          v16 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
          swift_beginAccess();
          v17 = v14[v16];
          v14[v16] = v15;
          if (v15 != v17)
          {
            v18 = 1.0;
            if (v15)
            {
              UIInterfaceGetContentDisabledAlpha();
            }

            [v14 setAlpha:v18];
          }
        }

        if (v10 != v12)
        {
          goto LABEL_17;
        }
      }

      else
      {
        while (1)
        {

          if (v10 == v12)
          {
            break;
          }

LABEL_17:
          ++v12;
          if ((v8 & 0xC000000000000001) != 0)
          {
            goto LABEL_7;
          }

LABEL_15:
          v19 = *(v8 + 8 * v12 + 32);

          v13 = *(v19 + 256);
          if (v13)
          {
            goto LABEL_8;
          }
        }
      }

      v3 = v22;
    }
  }

LABEL_20:
  if (v2[v3])
  {
    v20 = 0;
  }

  else
  {
    v20 = 3;
  }

  sub_143E08([v2 setSelectionStyle:v20]);
}

void sub_143E08(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeView];
  if (v2)
  {
    v3 = v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled];
    v4 = v2;
    v5 = 1.0;
    if (v3 == 1)
    {
      UIInterfaceGetContentDisabledAlpha();
    }

    [v4 setAlpha:v5];
  }

  v6 = sub_200954();
  v7 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
  v8 = 1.0;
  if (v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled] == 1)
  {
    UIInterfaceGetContentDisabledAlpha();
  }

  [v6 setAlpha:v8];

  v16 = [v1 traitCollection];
  v9 = [v1 traitCollection];
  [v1 bounds];
  v11 = v10;
  v12 = 1;
  if ([v9 horizontalSizeClass] != &dword_0 + 1 && v11 >= 465.0)
  {
    v13 = [v9 preferredContentSizeCategory];
    v12 = sub_ABA320();

    v9 = v13;
  }

  v14 = v1[OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem];
  v15 = [*(*&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent] + 112) isHidden];
  sub_143FEC(v16, v12 & 1, v14, v15 ^ 1, *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle], v1[v7]);
}

void sub_143FEC(void *a1, char a2, uint64_t a3, char a4, unsigned __int16 a5, uint64_t a6)
{
  v7 = a6;
  v9 = a3;
  v11 = sub_14B658(a3, a6);
  v12 = sub_14B738(v9, v7);
  v13 = v12;
  v14 = a5 >> 13;
  v92 = v12;
  v82 = v6;
  if (v14 > 3)
  {
    if (v14 != 4 && (v14 != 5 || a5 != 40960))
    {
      goto LABEL_11;
    }
  }

  else if (a5 >> 13 && v14 != 2)
  {
LABEL_11:
    v18 = qword_DE68B0;
    v16 = v12;
    if (v18 != -1)
    {
      swift_once();
    }

    v17 = &qword_DF1D68;
    v89 = v13;
    goto LABEL_14;
  }

  v15 = qword_DE68B8;
  v16 = v11;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = &qword_DF1D70;
  v89 = v11;
LABEL_14:
  v19 = *v17;
  v20 = objc_opt_self();
  v21 = v19;
  v22 = v16;
  v23 = [v20 clearColor];
  if (v14 == 1 || v14 == 3 || v14 == 4 && (a5 & 1) != 0)
  {
    v41 = (([a1 horizontalSizeClass] != &dword_0 + 1) | a4 & 1) == 0;
    v24 = 3;
    if (!v41)
    {
      v24 = 0;
    }

    v88 = v24;
  }

  else
  {
    v88 = 0;
  }

  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  v87 = v22;
  v86 = v23;
  v85 = v21;
  v25 = sub_ABA560();
  v91 = v11;
  v26 = v11;
  v27 = [v20 clearColor];
  v80 = v26;
  v84 = v27;
  v81 = v25;
  v28 = [a1 preferredContentSizeCategory];
  v29 = sub_ABA320();

  v30 = UIFontTextStyleFootnote;
  if ((a2 & 1) == 0)
  {
    v30 = UIFontTextStyleBody;
  }

  v31 = v30;
  v32 = sub_ABA560();

  v33 = v92;
  v34 = [v20 clearColor];
  v35 = qword_DE68C0;
  v36 = v33;
  v83 = v34;
  v76 = v32;
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = qword_DF1D78;
  v38 = v36;
  v39 = v37;
  v40 = [v20 clearColor];
  if (((1 << v14) & 0x35) != 0)
  {
    v41 = (a2 & 1) == 0;
    v42 = 35.0;
    if (a2)
    {
      v43 = 20.0;
    }

    else
    {
      v43 = 35.0;
    }

    v44 = 24.0;
  }

  else
  {
    v41 = (a2 & 1) == 0;
    v42 = 30.0;
    if (a2)
    {
      v43 = 18.0;
    }

    else
    {
      v43 = 30.0;
    }

    v44 = 20.0;
  }

  if (v41)
  {
    v45 = v42;
  }

  else
  {
    v45 = v44;
  }

  v46 = *v82;
  if (v29)
  {
    v47 = 3;
  }

  else
  {
    v47 = 1;
  }

  *&v94 = v89;
  *(&v94 + 1) = v86;
  *&v95 = v88;
  *(&v95 + 1) = 4;
  v96 = 0uLL;
  *&v97 = v85;
  *(&v97 + 1) = 1;
  v98 = v45;
  v99 = 0;
  swift_beginAccess();
  v49 = v46[3];
  v48 = v46[4];
  v50 = v46[6];
  v100[3] = v46[5];
  v100[4] = v50;
  v100[1] = v49;
  v100[2] = v48;
  v100[0] = v46[2];
  v46[5] = v97;
  v46[6] = *&v45;
  v46[2] = v94;
  v51 = v96;
  v46[3] = v95;
  v46[4] = v51;
  v77 = v38;
  v79 = v40;
  v78 = v39;
  sub_2F118(&v94, v149);
  sub_2F174(v100);
  sub_2EB2A8();
  v52 = v82[1];
  *&v101 = v91;
  *(&v101 + 1) = v84;
  v102 = xmmword_AF7C20;
  v103 = 0uLL;
  *&v104 = v81;
  *(&v104 + 1) = v47;
  v105 = *&v45;
  swift_beginAccess();
  v54 = v52[3];
  v53 = v52[4];
  v55 = v52[6];
  v106[3] = v52[5];
  v106[4] = v55;
  v106[1] = v54;
  v106[2] = v53;
  v106[0] = v52[2];
  v56 = v105;
  v52[5] = v104;
  v52[6] = v56;
  v57 = v102;
  v52[2] = v101;
  v52[3] = v57;
  v52[4] = v103;
  sub_2F118(&v101, v149);
  sub_2F174(v106);
  sub_2EB2A8();
  v58 = v82[2];
  *&v107 = v92;
  *(&v107 + 1) = v83;
  v108 = xmmword_AF7C20;
  v109 = 0uLL;
  *&v110 = v76;
  *(&v110 + 1) = 1;
  v111 = *&v43;
  swift_beginAccess();
  v60 = v58[3];
  v59 = v58[4];
  v61 = v58[6];
  v112[3] = v58[5];
  v112[4] = v61;
  v112[1] = v60;
  v112[2] = v59;
  v112[0] = v58[2];
  v62 = v111;
  v58[5] = v110;
  v58[6] = v62;
  v63 = v108;
  v58[2] = v107;
  v58[3] = v63;
  v58[4] = v109;
  sub_2F118(&v107, v149);
  sub_2F174(v112);
  sub_2EB2A8();
  v64 = v82[3];
  *&v113 = v92;
  *(&v113 + 1) = v83;
  v114 = xmmword_AF7C20;
  v115 = 0uLL;
  *&v116 = v76;
  *(&v116 + 1) = 1;
  v117 = *&v43;
  swift_beginAccess();
  v66 = v64[3];
  v65 = v64[4];
  v67 = v64[6];
  v118[3] = v64[5];
  v118[4] = v67;
  v118[1] = v66;
  v118[2] = v65;
  v118[0] = v64[2];
  v68 = v117;
  v64[5] = v116;
  v64[6] = v68;
  v69 = v114;
  v64[2] = v113;
  v64[3] = v69;
  v64[4] = v115;
  sub_2F118(&v113, v149);
  sub_2F174(v118);
  sub_2EB2A8();
  v70 = v82[4];
  *&v119 = v92;
  *(&v119 + 1) = v40;
  v120 = xmmword_AFF7A0;
  v121 = 0uLL;
  *&v122 = v39;
  *(&v122 + 1) = 1;
  v123 = *&v45;
  swift_beginAccess();
  v72 = v70[3];
  v71 = v70[4];
  v73 = v70[6];
  v124[3] = v70[5];
  v124[4] = v73;
  v124[1] = v72;
  v124[2] = v71;
  v124[0] = v70[2];
  v74 = v123;
  v70[5] = v122;
  v70[6] = v74;
  v75 = v120;
  v70[2] = v119;
  v70[3] = v75;
  v70[4] = v121;
  sub_2F118(&v119, v149);
  sub_2F174(v124);
  sub_2EB2A8();

  v125[0] = v92;
  v125[1] = v40;
  v126 = xmmword_AFF7A0;
  v128 = 0;
  v127 = 0;
  v129 = v39;
  v130 = 1;
  v131 = v45;
  v132 = 0;
  sub_2F174(v125);

  v133[0] = v92;
  v133[1] = v83;
  v134 = xmmword_AF7C20;
  v136 = 0;
  v135 = 0;
  v137 = v76;
  v138 = 1;
  v139 = v43;
  v140 = 0;
  sub_2F174(v133);
  v141[0] = v91;
  v141[1] = v84;
  v142 = xmmword_AF7C20;
  v144 = 0;
  v143 = 0;
  v145 = v81;
  v146 = v47;
  v147 = v45;
  v148 = 0;
  sub_2F174(v141);
  v149[0] = v89;
  v149[1] = v86;
  v149[2] = v88;
  v149[3] = 4;
  v149[4] = 0;
  v149[5] = 0;
  v149[6] = v85;
  v149[7] = 1;
  *&v149[8] = v45;
  v149[9] = 0;
  sub_2F174(v149);
}

id sub_1447F0()
{
  result = [v0 accessoryViewAtEdge:1];
  if (result)
  {
    v2 = result;
    if (([result isHidden] & 1) != 0 || (objc_msgSend(v2, "frame"), CGRectGetWidth(v4) <= 0.0))
    {

      return 0;
    }

    else
    {
      [v2 frame];
      Width = CGRectGetWidth(v5);

      return *&Width;
    }
  }

  return result;
}

void sub_14497C(void *a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for SongCell(0);
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  if (a1)
  {
    v6 = [a1 preferredContentSizeCategory];
    v7 = sub_AB92A0();
    v9 = v8;
    if (v7 == sub_AB92A0() && v9 == v10)
    {

LABEL_12:
      v13 = [v3 horizontalSizeClass];
LABEL_13:
      v14 = v13;
      v13 = [a1 horizontalSizeClass];
      if (v14 == v13)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v12 = sub_ABB3C0();

    if (v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  sub_149D50();
  v13 = [v3 horizontalSizeClass];
  if (a1)
  {
    goto LABEL_13;
  }

LABEL_14:
  sub_14B0E0(v13);
LABEL_15:
  if ([v3 horizontalSizeClass])
  {
    [v1 setNeedsLayout];
  }
}

void sub_144BA4()
{
  v1 = v0;
  v628.receiver = v0;
  v628.super_class = type metadata accessor for SongCell(0);
  objc_msgSendSuper2(&v628, "layoutSubviews");
  [v0 setClipsToBounds:{objc_msgSend(v0, "isEditing")}];
  v2 = [v0 contentView];
  [v2 bounds];
  v602 = v3;
  v603 = v4;
  v6 = v5;
  v610 = v7;
  v8 = [v0 traitCollection];
  v9 = [v0 effectiveUserInterfaceLayoutDirection];
  v608 = v6;
  sub_14A238(v8, v6);
  [v8 displayScale];
  [v2 music_inheritedLayoutInsets];
  if ([v8 horizontalSizeClass] == &dword_0 + 1)
  {
    v10 = [v0 _collectionView];
    if (!v10 || (v11 = v10, sub_1447F0(), v13 = v12, v11, (v13 & 1) != 0))
    {
      [v1 layoutMargins];
    }
  }

  [v1 bounds];
  [v2 frame];
  sub_ABA4D0();
  sub_AB9E80();
  if (v14 < 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v14;
  }

  if (v15 < 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v15;
  }

  v18 = UIEdgeInsetsInsetRect(v602, v603, v6, v610, v16, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = swift_allocObject();
  *v568 = v18;
  *&v568[8] = v20;
  *(v25 + 2) = v18;
  v559 = (v25 + 2);
  v25[3] = v20;
  v25[4] = v22;
  *&v568[16] = v22;
  *&v568[24] = v24;
  v609 = v25;
  *(v25 + 5) = v24;
  v26 = 1;
  v573 = v2;
  if ([v8 horizontalSizeClass] != &dword_0 + 1 && v608 >= 465.0)
  {
    v27 = [v8 preferredContentSizeCategory];
    v26 = sub_ABA320();
  }

  v562 = v26;
  v28 = OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle;
  sub_14C0F8(v8, *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle], &v706);
  v29 = v706;
  v570 = [v8 horizontalSizeClass];
  [v1 separatorInset];
  v557 = v31;
  v558 = v30;
  v569 = v32;
  v556 = v33;
  v34 = *(*&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent] + 112);
  [v34 frame];
  v35 = v610;
  sub_ABA4A0();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v578 = v34;
  v579 = v9;
  v580 = v8;
  if ([v34 isHidden])
  {
    v44 = *&v568[16];
    v592 = *&v568[8];
    x = *v568;
    height = v24;
    goto LABEL_39;
  }

  v45 = &v1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber];
  v46 = 10.0;
  if (v1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber + 8] == 1)
  {
    v46 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets + 24];
  }

  v604 = v37;
  v714.origin.x = v37;
  v714.origin.y = v39;
  v587 = v41;
  v714.size.width = v41;
  v47 = v43;
  v714.size.height = v43;
  MinX = CGRectGetMinX(v714);
  v49 = *(v609 + 24);
  v44 = *(v609 + 32);
  v715.size.height = *(v609 + 40);
  x = *(v609 + 16);
  v715.origin.x = x;
  height = v715.size.height;
  v715.origin.y = v49;
  v715.size.width = v44;
  v50 = CGRectGetMinX(v715);
  v51 = [v580 preferredContentSizeCategory];
  v52 = sub_ABA360();

  if ((v52 & 1) != 0 || v570 != &dword_0 + 1)
  {
    v53 = *&v1[v28];
    goto LABEL_26;
  }

  v53 = *&v1[v28];
  if (v45[8] != 1)
  {
LABEL_26:
    v55 = v580;
    goto LABEL_27;
  }

  v54 = v53 >> 13;
  v55 = v580;
  if (!(v53 >> 13))
  {
    if ((v53 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_27:
    v56 = v46 + *&v29 + MinX - v50;
    x = v56 + *(v609 + 16);
    *(v609 + 16) = x;
    v44 = *(v609 + 32) - v56;
    *(v609 + 32) = v44;
    v54 = v53 >> 13;
    goto LABEL_28;
  }

  if (v54 == 2 && (v53 & 0x100) != 0)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (!v54)
  {
    if ((v53 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_35:
    v60 = *(v609 + 16);
    v59 = *(v609 + 24);
    v44 = *(v609 + 32);
    v61 = *(v609 + 40);
    v717.origin.x = v60;
    v717.origin.y = v59;
    v717.size.width = v44;
    v717.size.height = v61;
    CGRectGetMinY(v717);
    v592 = v59;
    x = v60;
    v718.origin.x = v60;
    v718.origin.y = v59;
    v718.size.width = v44;
    height = v61;
    v718.size.height = v61;
    CGRectGetHeight(v718);
    v62 = [objc_opt_self() defaultMetrics];
    v63 = sub_ABA310();
    __chkstk_darwin();
    sub_AB9EF0();

    sub_AB39F0();
    v39 = v64;
    goto LABEL_36;
  }

  if (v54 == 2 && (v53 & 0x100) != 0)
  {
    goto LABEL_35;
  }

LABEL_31:
  v592 = v49;
  v57 = [v55 preferredContentSizeCategory];
  v58 = sub_ABA330();

  if (v58)
  {
    v35 = v610;
    v37 = v604;
    v43 = v47;
    if (v570 == &dword_0 + 1)
    {
      v716.origin.x = *(v609 + 16);
      v44 = *(v609 + 32);
      v716.size.height = *(v609 + 40);
      v592 = *(v609 + 24);
      v716.origin.y = v592;
      x = v716.origin.x;
      v716.size.width = v44;
      height = v716.size.height;
      v39 = CGRectGetMinY(v716) + 24.0;
    }

    goto LABEL_37;
  }

LABEL_36:
  v35 = v610;
  v37 = v604;
  v43 = v47;
LABEL_37:
  type metadata accessor for CGRect(0);
  *&v706 = v37;
  *(&v706 + 1) = v39;
  v41 = v587;
  *&v707 = v587;
  *(&v707 + 1) = v43;
  [v578 frame];
  *&v696 = v65;
  *(&v696 + 1) = v66;
  *&v697 = v67;
  *(&v697 + 1) = v68;
  if (sub_AB38D0())
  {
    sub_ABA490();
    sub_76B28(v69, v70, v71, v72);
  }

LABEL_39:
  if ([v1 showsReorderControl])
  {
    v44 = *(v609 + 32) + -8.0;
    *(v609 + 32) = v44;
  }

  v73 = *&v1[v28];
  v74 = v73 >> 13;
  if (v73 >> 13)
  {
    if (v74 != 2)
    {
LABEL_51:
      if (v73 != 40960 && v74 >= 5)
      {
        v103 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_chevronImageView];
        if (v103)
        {
          v104 = v103;
          [v104 frame];
          v106 = v105;
          v108 = v107;
          [v104 sizeThatFits:{0.0, 0.0}];
          v110 = v109;
          v112 = v111;
          CGRectGetMaxX(*(v609 + 16));
          v725.origin.x = v106;
          v725.origin.y = v108;
          v725.size.width = v110;
          v725.size.height = v112;
          CGRectGetWidth(v725);
          v592 = *(v609 + 24);
          x = *(v609 + 16);
          height = *(v609 + 40);
          sub_ABA470();
          v114 = v113;
          v116 = v115;
          v118 = v117;
          v120 = v119;
          sub_ABA490();
          [v104 setFrame:?];
          v726.origin.x = v114;
          v726.origin.y = v116;
          v726.size.width = v118;
          v726.size.height = v120;
          Width = CGRectGetWidth(v726);

          v44 = *(v609 + 32) - (Width + 12.0);
          *(v609 + 32) = v44;
        }
      }

      goto LABEL_55;
    }

    if ((v73 & 0x100) == 0)
    {
      goto LABEL_55;
    }

LABEL_46:
    v75 = [objc_opt_self() defaultMetrics];
    v76 = sub_ABA310();
    __chkstk_darwin();
    sub_AB9EF0();
    v77 = v43;
    v581 = v43;
    v79 = v78;

    v719.origin.x = v37;
    v719.origin.y = v39;
    v719.size.width = v41;
    v719.size.height = v77;
    MaxX = CGRectGetMaxX(v719);
    sub_AB39F0();
    v82 = MaxX - v81;
    v720.origin.x = v37;
    v720.origin.y = v39;
    v720.size.width = v41;
    v720.size.height = v581;
    MaxY = CGRectGetMaxY(v720);
    sub_AB39F0();
    v85 = MaxY - v84;
    sub_1498AC();
    sub_ABA490();
    sub_76B28(v86, v87, v88, v89);

    v721.origin.x = v82;
    v721.origin.y = v85;
    v721.size.width = v79;
    v721.size.height = v79;
    v722 = CGRectInset(v721, -1.0, -1.0);
    v90 = v722.origin.x;
    y = v722.origin.y;
    v92 = v722.size.width;
    v93 = v722.size.height;
    v94 = sub_1497E8();
    v35 = v610;
    sub_ABA490();
    [v94 setFrame:?];

    v95 = OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkBackgroundView;
    v96 = [*&v1[OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkBackgroundView] layer];
    [v96 setCornerCurve:kCACornerCurveCircular];

    v97 = [*&v1[v95] layer];
    v723.origin.x = v90;
    v723.origin.y = y;
    v723.size.width = v92;
    v723.size.height = v93;
    v98 = CGRectGetWidth(v723);
    v724.origin.x = v90;
    v724.origin.y = y;
    v724.size.width = v92;
    v724.size.height = v93;
    v99 = CGRectGetHeight(v724);
    if (v99 >= v98)
    {
      v99 = v98;
    }

    v100 = v99 * 0.5;
    if (v100 < 0.0)
    {
      v100 = 0.0;
    }

    [v97 setCornerRadius:v100];

    v101 = [v1 contentView];
    [v101 bringSubviewToFront:*&v1[v95]];

    v102 = [v1 contentView];
    [v102 bringSubviewToFront:*(*&v1[OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkComponent] + 112)];

    v73 = *&v1[v28];
    v74 = v73 >> 13;
    goto LABEL_51;
  }

  if (v73)
  {
    goto LABEL_46;
  }

LABEL_55:
  v560 = &v1[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents];
  v122 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents + 32];
  swift_beginAccess();
  v124 = *(v122 + 112);
  v123 = *(v122 + 120);

  *&v706 = CGRectGetWidth(*v568);
  *&v696 = 0x4074000000000000;
  sub_471A4();
  v565 = v123;
  v561 = v28;
  if ((sub_AB38F0() & 1) == 0 || v570 == &dword_0 + 1)
  {
    goto LABEL_107;
  }

  v125 = HIBYTE(v123) & 0xF;
  if ((v123 & 0x2000000000000000) == 0)
  {
    v125 = v124 & 0xFFFFFFFFFFFFLL;
  }

  if (!v125 || (v1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber + 8] & 1) == 0 && (v126 = *&v1[v28], (v126 >> 13) - 1 >= 4) && (v126 >> 13 != 5 || v126 != 40960))
  {
LABEL_107:
    [v1 effectiveUserInterfaceLayoutDirection];
    v230 = 0;
    v589 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl;
    v231 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton;
    v575 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton;
    v232 = 0.0;
    v233 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_showsContextMenu;
    v234 = v592;
    v235 = x;
    while (1)
    {
      v236 = *(&off_CEFF18 + v230 + 32);
      if (v236)
      {
        if (v236 == &dword_0 + 1)
        {
          if ((v1[v231] & 1) == 0)
          {
            goto LABEL_109;
          }

          v239 = *&v1[v575];
          if (!v239)
          {
            goto LABEL_109;
          }

          v240 = v44;
          v583 = v44;
          v241 = v239;
          v606 = v232;
          [v241 sizeThatFits:{v608, v610}];
          v745.size.width = v242;
          v244 = v243;
          v745.origin.x = 0.0;
          v745.origin.y = 0.0;
          v745.size.height = v244;
          v245 = CGRectGetWidth(v745);
          if (v245 > 0.0)
          {
            v246 = v245;
          }

          else
          {
            v246 = 0.0;
          }

          goto LABEL_134;
        }

        if (v236 == &dword_0 + 2)
        {
          v237 = *&v1[v589];
          if (v237)
          {
            v238 = v237;
            if (([v238 isHidden] & 1) == 0)
            {
              v240 = v44;
              v583 = v44;
              v241 = v238;
              v606 = v232;
              [v241 sizeThatFits:{v608, v610}];
              v756.size.width = v278;
              v244 = v279;
              v756.origin.x = 0.0;
              v756.origin.y = 0.0;
              v756.size.height = v244;
              v280 = CGRectGetWidth(v756);
              if (v280 > 0.0)
              {
                v246 = v280;
              }

              else
              {
                v246 = 0.0;
              }

LABEL_134:
              v757.origin.x = v235;
              v757.origin.y = v234;
              v757.size.width = v240;
              v757.size.height = height;
              CGRectGetMaxX(v757);
              v758.origin.x = 0.0;
              v758.origin.y = 0.0;
              v758.size.width = v246;
              v758.size.height = v244;
              CGRectGetWidth(v758);
              v281 = [v1 traitCollection];
              [v281 displayScale];

              sub_ABA470();
              v283 = v282;
              v285 = v284;
              v287 = v286;
              v289 = v288;
              sub_ABA490();
              [v241 setFrame:?];
              v759.origin.x = v283;
              v759.origin.y = v285;
              v759.size.width = v287;
              v759.size.height = v289;
              v232 = v606 + CGRectGetWidth(v759) + 0.0;
              v760.origin.x = v283;
              v760.origin.y = v285;
              v760.size.width = v287;
              v760.size.height = v289;
              v234 = v592;
              v235 = x;
              v261 = CGRectGetWidth(v760);

LABEL_135:
LABEL_136:
              v44 = v583 - v261;
              *(v609 + 32) = v583 - v261;
              goto LABEL_109;
            }
          }
        }

        else
        {
          v262 = v236;
          if (([v262 isHidden] & 1) == 0)
          {
            v583 = v44;
            v263 = v262;
            [v263 sizeThatFits:{v608, v610}];
            v751.size.width = v264;
            v266 = v265;
            v751.origin.x = 0.0;
            v751.origin.y = 0.0;
            v751.size.height = v266;
            v267 = CGRectGetWidth(v751);
            if (v267 > 0.0)
            {
              v268 = v267;
            }

            else
            {
              v268 = 0.0;
            }

            v752.origin.x = v235;
            v752.origin.y = v234;
            v752.size.width = v44;
            v752.size.height = height;
            CGRectGetMaxX(v752);
            v753.origin.x = 0.0;
            v753.origin.y = 0.0;
            v753.size.width = v268;
            v753.size.height = v266;
            CGRectGetWidth(v753);
            v269 = [v1 traitCollection];
            [v269 displayScale];

            sub_ABA470();
            v271 = v270;
            v273 = v272;
            v275 = v274;
            v277 = v276;
            sub_ABA490();
            [v263 setFrame:?];
            v754.origin.x = v271;
            v754.origin.y = v273;
            v754.size.width = v275;
            v754.size.height = v277;
            v232 = v232 + CGRectGetWidth(v754) + 0.0;
            v755.origin.x = v271;
            v755.origin.y = v273;
            v755.size.width = v275;
            v755.size.height = v277;
            v234 = v592;
            v235 = x;
            v261 = CGRectGetWidth(v755);
            sub_7FCC4(v236);
            sub_7FCC4(v236);
            goto LABEL_136;
          }

          sub_7FCC4(v236);
        }
      }

      else if (v1[v233])
      {
        v583 = v44;
        v241 = sub_200934();
        [v241 sizeThatFits:{v608, v610}];
        v746.size.width = v247;
        v249 = v248;
        v746.origin.x = 0.0;
        v746.origin.y = 0.0;
        v746.size.height = v249;
        v250 = CGRectGetWidth(v746);
        if (v250 > 0.0)
        {
          v251 = v250;
        }

        else
        {
          v251 = 0.0;
        }

        v747.origin.x = v235;
        v747.origin.y = v234;
        v747.size.width = v44;
        v747.size.height = height;
        CGRectGetMaxX(v747);
        v748.origin.x = 0.0;
        v748.origin.y = 0.0;
        v748.size.width = v251;
        v748.size.height = v249;
        CGRectGetWidth(v748);
        v252 = [v1 traitCollection];
        [v252 displayScale];

        sub_ABA470();
        v254 = v253;
        v256 = v255;
        v258 = v257;
        v260 = v259;
        sub_ABA490();
        [v241 setFrame:?];
        v749.origin.x = v254;
        v749.origin.y = v256;
        v749.size.width = v258;
        v749.size.height = v260;
        v232 = v232 + CGRectGetWidth(v749) + 0.0;
        v750.origin.x = v254;
        v750.origin.y = v256;
        v750.size.width = v258;
        v750.size.height = v260;
        v234 = v592;
        v235 = x;
        v261 = CGRectGetWidth(v750);
        goto LABEL_135;
      }

LABEL_109:
      v230 += 8;
      if (v230 == 24)
      {
        if (v232 > 0.0)
        {
          *(v609 + 32) = v44 + -12.0;
        }

        v290 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_durationTextDrawingView];
        v187 = v579;
        v190 = v580;
        v35 = v610;
        v191 = v608;
        v229 = v578;
        v129 = height;
        if (v290)
        {
          [v290 removeFromSuperview];
        }

        v228 = 0;
        goto LABEL_142;
      }
    }
  }

  [v1 effectiveUserInterfaceLayoutDirection];
  v127 = 0;
  v128 = 0;
  v574 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl;
  v555 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton;
  v582 = v592;
  v588 = x;
  v566 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_showsContextMenu;
  v567 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton;
  v605 = 0.0;
  v129 = height;
  do
  {
    v146 = *(&off_CF0308 + v127 + 32);
    if (v146)
    {
      if (v146 == &dword_0 + 1)
      {
        if (v1[v567])
        {
          v149 = *&v1[v555];
          if (v149)
          {
            v150 = v44;
            v151 = v149;
            [v151 sizeThatFits:{v608, v35}];
            v732.size.width = v152;
            v154 = v153;
            v732.origin.x = 0.0;
            v732.origin.y = 0.0;
            v732.size.height = v154;
            v155 = CGRectGetWidth(v732);
            if (v155 > 0.0)
            {
              v156 = v155;
            }

            else
            {
              v156 = 0.0;
            }

LABEL_92:
            v739.origin.y = v582;
            v739.origin.x = v588;
            v739.size.width = v150;
            v739.size.height = v129;
            CGRectGetMaxX(v739);
            v740.origin.x = 0.0;
            v740.origin.y = 0.0;
            v740.size.width = v156;
            v740.size.height = v154;
            CGRectGetWidth(v740);
            v178 = [v1 traitCollection];
            [v178 displayScale];

            sub_ABA470();
            v180 = v179;
            v182 = v181;
            v184 = v183;
            v186 = v185;
            v129 = height;
            sub_ABA490();
            [v151 setFrame:?];
            v741.origin.x = v180;
            v741.origin.y = v182;
            v741.size.width = v184;
            v741.size.height = v186;
            v605 = v605 + CGRectGetWidth(v741) + 0.0;
            v742.origin.x = v180;
            v742.origin.y = v182;
            v742.size.width = v184;
            v742.size.height = v186;
            v35 = v610;
            v174 = CGRectGetWidth(v742);

LABEL_93:
            v44 = v150 - v174;
            *(v609 + 32) = v150 - v174;
LABEL_67:
            v128 = 1;
          }
        }
      }

      else if (v146 == &dword_0 + 2)
      {
        v147 = *&v1[v574];
        if (v147)
        {
          v148 = v147;
          if (([v148 isHidden] & 1) == 0)
          {
            v150 = v44;
            v151 = v148;
            [v151 sizeThatFits:{v608, v35}];
            v738.size.width = v175;
            v154 = v176;
            v738.origin.x = 0.0;
            v738.origin.y = 0.0;
            v738.size.height = v154;
            v177 = CGRectGetWidth(v738);
            if (v177 > 0.0)
            {
              v156 = v177;
            }

            else
            {
              v156 = 0.0;
            }

            goto LABEL_92;
          }
        }
      }

      else
      {
        v158 = v146;
        if (([v158 isHidden] & 1) == 0)
        {
          v150 = v44;
          v159 = v158;
          [v159 sizeThatFits:{v608, v35}];
          v733.size.width = v160;
          v162 = v161;
          v733.origin.x = 0.0;
          v733.origin.y = 0.0;
          v733.size.height = v162;
          v163 = CGRectGetWidth(v733);
          if (v163 > 0.0)
          {
            v164 = v163;
          }

          else
          {
            v164 = 0.0;
          }

          v734.origin.y = v582;
          v734.origin.x = v588;
          v734.size.width = v44;
          v734.size.height = v129;
          CGRectGetMaxX(v734);
          v735.origin.x = 0.0;
          v735.origin.y = 0.0;
          v735.size.width = v164;
          v735.size.height = v162;
          CGRectGetWidth(v735);
          v165 = [v1 traitCollection];
          [v165 displayScale];

          sub_ABA470();
          v167 = v166;
          v169 = v168;
          v171 = v170;
          v173 = v172;
          v129 = height;
          sub_ABA490();
          [v159 setFrame:?];
          v736.origin.x = v167;
          v736.origin.y = v169;
          v736.size.width = v171;
          v736.size.height = v173;
          v605 = v605 + CGRectGetWidth(v736) + 0.0;
          v737.origin.x = v167;
          v737.origin.y = v169;
          v737.size.width = v171;
          v737.size.height = v173;
          v35 = v610;
          v174 = CGRectGetWidth(v737);
          sub_7FCC4(v146);
          sub_7FCC4(v146);
          goto LABEL_93;
        }

        sub_7FCC4(v146);
      }
    }

    else if (v1[v566])
    {
      v157 = sub_200934();
      if ((v128 & 1) == 0)
      {
        v44 = *(v609 + 32);
      }

      v563 = v44;
      v130 = v157;
      [v130 sizeThatFits:{v608, v35}];
      v727.size.width = v131;
      v133 = v132;
      v727.origin.x = 0.0;
      v727.origin.y = 0.0;
      v727.size.height = v133;
      v134 = CGRectGetWidth(v727);
      if (v134 > 0.0)
      {
        v135 = v134;
      }

      else
      {
        v135 = 0.0;
      }

      v728.origin.x = *(v609 + 16);
      v582 = *(v609 + 24);
      v728.origin.y = v582;
      v588 = v728.origin.x;
      v728.size.width = v44;
      v728.size.height = v129;
      CGRectGetMaxX(v728);
      v729.origin.x = 0.0;
      v729.origin.y = 0.0;
      v729.size.width = v135;
      v729.size.height = v133;
      CGRectGetWidth(v729);
      v136 = [v1 traitCollection];
      [v136 displayScale];

      sub_ABA470();
      v138 = v137;
      v140 = v139;
      v142 = v141;
      v144 = v143;
      v129 = height;
      sub_ABA490();
      [v130 setFrame:?];
      v730.origin.x = v138;
      v730.origin.y = v140;
      v730.size.width = v142;
      v730.size.height = v144;
      v605 = v605 + CGRectGetWidth(v730) + 0.0;
      v731.origin.x = v138;
      v731.origin.y = v140;
      v731.size.width = v142;
      v731.size.height = v144;
      v145 = CGRectGetWidth(v731);

      v44 = v44 - v145;
      *(v609 + 32) = v563 - v145;
      goto LABEL_67;
    }

    v127 += 8;
  }

  while (v127 != 16);
  v187 = v579;
  if (v605 > 0.0)
  {
    *(v609 + 32) = *(v609 + 32) + -12.0;
  }

  swift_arrayDestroy();
  *(v609 + 32) = *(v609 + 32) + -12.0;
  v188 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  v189 = *&v1[v188];
  v190 = v580;
  v191 = v608;
  v192 = v602;
  v193 = v603;
  if (v189)
  {
    v194 = OBJC_IVAR____TtC16MusicApplication8SongCell_durationTextDrawingView;
    v195 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_durationTextDrawingView];
    if (v195)
    {

      v196 = v195;
    }

    else
    {
      type metadata accessor for TextDrawing.View();
      v197 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      v198 = [v197 init];
      v199 = *&v1[v194];
      *&v1[v194] = v198;
      v196 = v198;

      v195 = 0;
    }

    v200 = v195;
    v201 = v196;
    [v2 addSubview:v201];
    swift_beginAccess();
    v202 = *(v122 + 48);
    v203 = *(v122 + 64);
    v204 = *(v122 + 96);
    v704[3] = *(v122 + 80);
    v705 = v204;
    v704[2] = v203;
    v704[1] = v202;
    v704[0] = *(v122 + 32);
    v205 = *(v189 + 32);
    v206 = *(v189 + 40);
    v207 = *(v189 + 64);
    v208 = *(v189 + 72);
    v209 = *(v189 + 80);
    v210 = *(v189 + 88);
    sub_2F118(v704, &v706);
    v211 = v206;
    sub_108594(206967550000, 0xE500000000000000, v704, v211, v207, v208, v209, v210, v629, 0.0, 0.0, v205);

    v212 = *&v629[6];
    v213 = CGRectGetHeight(*(v609 + 16));
    v214 = *(v189 + 32);
    v215 = *(v189 + 64);
    v216 = *(v189 + 72);
    v217 = *(v189 + 80);
    v218 = *(v189 + 88);
    v219 = *(v189 + 40);
    sub_108594(v554, v565, v704, v219, v215, v216, v217, v218, v630, v212, v213, v214);
    v690 = v632;
    v691 = v633;
    v692 = v634;
    v693 = v635;
    v686 = v630[0];
    v687 = v630[1];
    v688 = v630[2];
    v689 = v631;

    v700 = v690;
    v701 = v691;
    v702 = v692;
    v703 = v693;
    v696 = v686;
    v697 = v687;
    v698 = v688;
    v699 = v689;
    UIScreen.Dimensions.size.getter();
    v710 = v700;
    v711 = v701;
    v712 = v702;
    v713 = v703;
    v706 = v696;
    v707 = v697;
    v708 = v698;
    v709 = v699;
    sub_109B04(v630, &v676);
    TextDrawing.View.textDrawingContext.setter(&v706);
    [v201 setBounds:{0.0, 0.0, v212, *(&v631 + 1)}];
    [v201 bounds];
    v221 = *(v609 + 16);
    v220 = *(v609 + 24);
    v223 = *(v609 + 32);
    v222 = *(v609 + 40);
    v743.origin.x = v221;
    v743.origin.y = v220;
    v743.size.width = v223;
    v743.size.height = v222;
    CGRectGetMaxX(v743);
    x = v221;
    v599 = v222;
    v592 = v220;
    if (v562)
    {
      v225 = v602;
      v224 = v603;
      v226 = v608;
      sub_ABA470();

      v190 = v580;
    }

    else
    {
      v744.origin.x = v221;
      v744.origin.y = v220;
      v744.size.width = v223;
      v744.size.height = v222;
      CGRectGetMinY(v744);
      TextLabelProperties.scaledValue(forValue:text:)(v554, v565, *&v705);
      v227 = [objc_opt_self() defaultMetrics];
      [v227 scaledValueForValue:*&v634];

      v190 = v580;
      v226 = v608;
      v225 = v602;
      v224 = v603;
    }

    v187 = v579;
    sub_ABA490();
    sub_ABA4C0();
    [v201 setCenter:?];
    sub_109AB0(v630);

    sub_109AB0(v629);
    sub_2F174(v704);

    *(v609 + 32) = v223 - v212;
    v193 = v224;
    v191 = v226;
    v192 = v225;
    v129 = v599;
  }

  v228 = 1;
  sub_200EEC(&off_CF0338, 1, v559, 0.0, 0.0, 12.0, v192, v193, v191, v35);
  sub_14D3A4(&unk_CF0358);
  v229 = v578;
LABEL_142:
  v607 = OBJC_IVAR____TtC16MusicApplication8SongCell_badgeView;
  v291 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeView];
  if (!v291)
  {
LABEL_145:
    v293 = 0.0;
    if ((v562 & 1) == 0)
    {
      goto LABEL_149;
    }

LABEL_146:
    v294 = [v190 preferredContentSizeCategory];
    v295 = sub_ABA330();

    if (v295)
    {
      v296 = (v570 == &dword_0 + 1) & ~[v578 isHidden];
    }

    else
    {
      v296 = 0;
    }

    v309 = v602;
    v308 = v603;
    if (v1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber + 8])
    {
      v310 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView;
      [*&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView] sizeThatFits:{*(v609 + 32), v129}];
      v312 = v311;
      if (v296)
      {
        v313 = *(&v29 + 1) * 0.5 + 4.0 + v592;
      }

      else
      {
        v313 = v592;
      }

      v314 = *&v1[v310];
      sub_ABA490();
      [v314 setFrame:?];

      v315 = [v190 preferredContentSizeCategory];
      v316 = sub_ABA330();

      if (v316)
      {
        v2 = v573;
        v229 = v578;
        if (v570 == &dword_0 + 1)
        {
          v763.origin.x = x;
          v763.origin.y = v313;
          v763.size.width = v312;
          v763.size.height = v129;
          *(v609 + 40) = v129 - CGRectGetMaxY(v763);
        }
      }

      else
      {
        v2 = v573;
        v229 = v578;
      }

LABEL_276:
      if (v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] == 1)
      {
        [v2 frame];
        [v1 bounds];
        sub_ABA4A0();
        v519 = CGRectGetMinX(v802);
        [*&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView] frame];
        sub_ABA4A0();
        v569 = v519 + CGRectGetMinX(v803);
        v320 = 1;
      }

      else
      {
        v320 = 0;
      }

      goto LABEL_279;
    }

    v317 = OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextStackView;
    v318 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextStackView];
    if (v318)
    {
      v319 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextStackView];
    }

    else
    {
      type metadata accessor for TextStackView();
      v352 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v353 = *v560;
      v319 = v352;
      TextStackView.add(_:)(v353);
      v354 = *&v1[v317];
      *&v1[v317] = v319;

      v318 = 0;
    }

    v355 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
    swift_beginAccess();
    v356 = *&v1[v355];
    v357 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v358 = *&v319[v357];
    *&v319[v357] = v356;
    swift_retain_n();
    v359 = v318;
    sub_2E6210(v358);

    [v319 setHidden:0];
    v360 = [v319 isDescendantOfView:v573];

    if ((v360 & 1) == 0)
    {
      [v573 addSubview:v319];
    }

    v361 = sub_148FD4(v1, v580, v578, v609, 24.0, v602, v603, v191, v35);
    v363 = v362;
    if ([v578 isHidden])
    {
      v364 = v361;
    }

    else
    {
      v364 = v363;
    }

    v365 = *&v1[v561];
    v366 = v365 >> 13;
    v596 = v364;
    if (v365 >> 13 <= 3)
    {
      v191 = v608;
      if (v366 != 1 && v366 != 3)
      {
        goto LABEL_248;
      }

      goto LABEL_199;
    }

    if (v366 == 5)
    {
      v191 = v608;
      if (v365 == 40960)
      {
        goto LABEL_244;
      }
    }

    else
    {
      v191 = v608;
      if (v366 == 4)
      {
        if (v365)
        {
LABEL_199:
          v367 = [v578 isHidden];
          if (v570 != &dword_0 + 1)
          {
            v476 = v364 + 10.0;
            if (v364 + 10.0 <= 36.0)
            {
              v476 = 36.0;
            }

            v477 = 24.0;
            if (v364 > 24.0)
            {
              v477 = v364;
            }

            if (v367)
            {
              v478 = v476;
            }

            else
            {
              v478 = v477;
            }

            v479 = 1;
            swift_beginAccess();
            v480 = *(v609 + 16);
            v481 = *(v609 + 32);
            v482 = *(v609 + 40);
            v786.origin.x = v480;
            v592 = *(v609 + 24);
            v786.origin.y = v592;
            v786.size.width = v481;
            v786.size.height = v482;
            CGRectGetMinX(v786);
            v483 = v481 - v478;
            *(v609 + 32) = v481 - v478;
            v484 = v478 + v480;
            *(v609 + 16) = v484;
            [v573 frame];
            [v1 bounds];
            v191 = v608;
            v129 = v482;
            sub_ABA4A0();
            v485 = CGRectGetMinX(v787);
            v569 = v485 + CGRectGetMinX(*v568);
LABEL_257:
            v500 = v319;
            [v500 setBounds:{0.0, 0.0, v364, 0.0}];
            v501 = *&v1[v561];
            if (v501 >> 13 == 3 || v501 >> 13 == 1) && (v501)
            {
              v502 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_musicVideoGlyphImageView];
              if (v502)
              {
                v503 = v502;
                [v503 setHidden:0];
                [v503 frame];
                [v503 sizeThatFits:{0.0, 0.0}];
                v799.origin.x = v484;
                v799.origin.y = v592;
                v799.size.width = v483;
                v799.size.height = v129;
                CGRectGetMinX(v799);
                v601 = v129;
                sub_ABA470();
                v505 = v504;
                v507 = v506;
                v509 = v508;
                v511 = v510;
                sub_ABA490();
                [v503 setFrame:?];
                v800.origin.x = v505;
                v800.origin.y = v507;
                v800.size.width = v509;
                v800.size.height = v511;
                v512 = CGRectGetWidth(v800) + 12.0;
                swift_beginAccess();
                v483 = v483 - v512;
                *(v609 + 32) = v483;
                *(v609 + 16) = v484 + v512;
                if (v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] == 1)
                {
                  v801.origin.x = v505;
                  v801.origin.y = v507;
                  v801.size.width = v509;
                  v801.size.height = v511;
                  v569 = CGRectGetMinX(v801);

                  v479 = 1;
                  v35 = v610;
                  v191 = v608;
                  v364 = v596;
                  v129 = v601;
                  if ((v296 & 1) == 0)
                  {
                    goto LABEL_267;
                  }

                  goto LABEL_266;
                }

                v35 = v610;
                v191 = v608;
                v364 = v596;
                v129 = v601;
              }
            }

            if (!v296)
            {
LABEL_267:
              v513 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView;
              [*&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView] sizeThatFits:{v483, v129}];
              v514 = [v580 preferredContentSizeCategory];
              v515 = sub_ABA330();

              if (v515)
              {
                [v578 isHidden];
              }

              v309 = v602;
              v308 = v603;
              v516 = *&v1[v513];
              sub_ABA490();
              [v516 setFrame:?];

              v190 = v580;
              v517 = [v580 preferredContentSizeCategory];
              v518 = sub_ABA360();

              if ((v518 & 1) != 0 || v296 != 1)
              {
                sub_ABA470();
                v229 = v578;
              }

              else
              {
                v229 = v578;
              }

              sub_ABA490();
              sub_ABA4C0();
              [v500 setCenter:?];

              v2 = v573;
              if (v479)
              {
                v320 = 1;
                v187 = v579;
                goto LABEL_279;
              }

              v187 = v579;
              goto LABEL_276;
            }

LABEL_266:
            v483 = v364 + v483;
            goto LABEL_267;
          }

          if (v367)
          {
            v368 = [v580 preferredContentSizeCategory];
            v369 = sub_ABA320();

            if (v369)
            {
              v370 = sub_200954();
              [v370 frame];
              v372 = v371;
              v374 = v373;
              v376 = v375;
              v378 = v377;

              v768.origin.x = v372;
              v768.origin.y = v374;
              v768.size.width = v376;
              v768.size.height = v378;
              v364 = v596;
              v379 = CGRectGetWidth(v768);
              v380 = 4.0;
            }

            else
            {
              v796.origin.x = v602;
              v796.origin.y = v603;
              v796.size.width = v191;
              v796.size.height = v35;
              v495 = CGRectGetMinX(v796);
              sub_AB3A00();
              v379 = v495 + v496;
              v380 = 8.0;
            }

            v797.origin.x = v379 + v380;
            v484 = v364 + 10.0 + 16.0;
            v797.origin.y = 0.0;
            v797.size.height = 0.0;
            v591 = v797.origin.x;
            v797.size.width = v364;
            v497 = v484 - CGRectGetMinX(v797);
            swift_beginAccess();
            v483 = *(v609 + 32) - v497;
            *(v609 + 32) = v483;
            v498 = [v580 preferredContentSizeCategory];
            v499 = sub_ABA320();

            if (v499)
            {
              v798.origin.y = 0.0;
              v798.size.height = 0.0;
              v798.origin.x = v591;
              v798.size.width = v364;
              v484 = CGRectGetMaxX(v798) + 10.0;
            }

            v479 = 0;
            v559->origin.x = v484;
            v191 = v608;
            goto LABEL_257;
          }

          swift_beginAccess();
          v487 = v609;
          v794.origin.x = *(v609 + 16);
          v494 = *(v609 + 32);
          v129 = *(v609 + 40);
          v592 = *(v609 + 24);
          v794.origin.y = v592;
          v794.size.width = v494;
          v794.size.height = v129;
          v795.origin.x = CGRectGetMinX(v794);
          v483 = v494 - v364;
          *(v609 + 32) = v494 - v364;
          v795.origin.y = 0.0;
          v795.size.height = 0.0;
          v795.size.width = v364;
          v479 = 0;
          v484 = v364 + CGRectGetMinX(v795);
LABEL_252:
          *(v487 + 16) = v484;
          goto LABEL_257;
        }

LABEL_244:
        [v573 frame];
        v486 = CGRectGetMinX(v788);
        v569 = v486 + CGRectGetMinX(*v568);
        v479 = 1;
        swift_beginAccess();
        v487 = v609;
        v488 = *(v609 + 16);
        v489 = *(v609 + 24);
        v490 = *(v609 + 32);
        v129 = *(v609 + 40);
        v789.origin.x = v488;
        v789.origin.y = v489;
        v789.size.width = v490;
        v789.size.height = v129;
        CGRectGetMinX(v789);
        v592 = v489;
        if (v596 > 24.0)
        {
          v491 = v596;
        }

        else
        {
          v491 = 24.0;
        }

        v483 = v490 - v491;
        v191 = v608;
        *(v609 + 32) = v483;
        v790.origin.x = v488;
        v790.origin.y = v489;
        v364 = v596;
        v790.size.width = v483;
        v790.size.height = v129;
        v484 = v491 + CGRectGetMinX(v790);
        goto LABEL_252;
      }
    }

LABEL_248:
    swift_beginAccess();
    v791.origin.x = *(v609 + 16);
    v492 = *(v609 + 32);
    v129 = *(v609 + 40);
    v592 = *(v609 + 24);
    v791.origin.y = v592;
    v791.size.width = v492;
    v791.size.height = v129;
    v792.origin.x = CGRectGetMinX(v791);
    v493 = v792.origin.x;
    v792.origin.y = 0.0;
    v792.size.height = 0.0;
    v792.size.width = v364;
    v483 = v492 - CGRectGetWidth(v792);
    *(v609 + 32) = v483;
    v793.origin.y = 0.0;
    v793.size.height = 0.0;
    v793.origin.x = v493;
    v793.size.width = v364;
    v484 = CGRectGetMaxX(v793);
    v479 = 0;
    *(v609 + 16) = v484;
    goto LABEL_257;
  }

  v292 = v291;
  if ([v292 isHidden])
  {

    goto LABEL_145;
  }

  [v292 sizeToFit];
  [v2 addSubview:v292];
  [v292 frame];
  v293 = v297;

  *(v609 + 32) = *(v609 + 32) - v293;
  if (v562)
  {
    goto LABEL_146;
  }

LABEL_149:
  v298 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  v299 = *&v1[v298];
  if (!v299)
  {
    v320 = 0;
LABEL_228:
    v309 = v602;
    v308 = v603;
    goto LABEL_279;
  }

  v301 = *(v609 + 16);
  v300 = *(v609 + 24);
  v303 = *(v609 + 32);
  v302 = *(v609 + 40);

  v761.origin.x = v301;
  v761.origin.y = v300;
  v761.size.width = v303;
  v761.size.height = v302;
  v304 = CGRectGetMaxX(v761);
  v762.origin.x = v301;
  v595 = v300;
  v600 = v302;
  v762.origin.y = v300;
  v762.size.width = v303;
  v762.size.height = v302;
  v305 = (v293 + CGRectGetMaxX(v762)) * 0.25;
  v306 = *&v1[v561];
  v307 = v306 >> 13;
  v593 = v299;
  if (((v306 >> 13) & 6) == 2)
  {
    v590 = 301.0;
  }

  else
  {
    v590 = (v293 + v304) * 0.5;
  }

  if (v305 < 120.0 && (v307 == 1 || v307 == 3 || v307 == 4 && (v306 & 1) != 0))
  {
    v764.origin.x = v301;
    v764.origin.y = v595;
    v764.size.height = v302;
    v764.size.width = v303;
    v305 = v293 + CGRectGetWidth(v764) + 24.0 - v590;
    v321 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTextDrawingView];
    if (v321)
    {
      [v321 removeFromSuperview];
    }
  }

  else
  {
    v322 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle + 8];
    if ((v322 & 0x2000000000000000) != 0)
    {
      v323 = HIBYTE(v322) & 0xF;
    }

    else
    {
      v323 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle] & 0xFFFFFFFFFFFFLL;
    }

    if (v323)
    {
      v324 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTextDrawingView];
      if (v324)
      {
        v571 = v324;
        [v2 addSubview:v571];
        v325 = *(v560 + 3);
        swift_beginAccess();
        v326 = *(v325 + 112);
        v576 = v228;
        v327 = *(v325 + 120);
        swift_beginAccess();
        v328 = *(v325 + 64);
        v694[1] = *(v325 + 48);
        v694[2] = v328;
        v329 = *(v325 + 96);
        v694[3] = *(v325 + 80);
        v695 = v329;
        v694[0] = *(v325 + 32);
        v564 = v327;

        sub_2F118(v694, &v696);
        v765.origin.x = v301;
        v765.origin.y = v595;
        v765.size.width = v303;
        v765.size.height = v302;
        v330 = CGRectGetHeight(v765);
        v331 = *(v593 + 32);
        v332 = *(v593 + 64);
        v333 = *(v593 + 72);
        v335 = *(v593 + 80);
        v334 = *(v593 + 88);
        v336 = *(v593 + 40);
        v337 = v327;
        v228 = v576;
        v338 = v335;
        v187 = v579;
        sub_108594(v326, v337, v694, v336, v332, v333, v338, v334, v636, v305 + -16.0, v330, v331);
        v680 = v638;
        v681 = v639;
        v682 = v640;
        v683 = v641;
        v676 = v636[0];
        v677 = v636[1];
        v678 = v636[2];
        v679 = v637;

        v190 = v580;
        v690 = v680;
        v691 = v681;
        v692 = v682;
        v693 = v683;
        v686 = v676;
        v687 = v677;
        v688 = v678;
        v689 = v679;
        UIScreen.Dimensions.size.getter();
        v700 = v690;
        v701 = v691;
        v702 = v692;
        v703 = v693;
        v696 = v686;
        v697 = v687;
        v698 = v688;
        v699 = v689;
        sub_109B04(v636, &v666);
        TextDrawing.View.textDrawingContext.setter(&v696);
        [v571 setBounds:{0.0, 0.0, v637}];
        v766.origin.x = v301;
        v766.origin.y = v595;
        v766.size.width = v303;
        v766.size.height = v600;
        CGRectGetMaxX(v766);
        v767.origin.x = v301;
        v767.origin.y = v595;
        v767.size.width = v303;
        v767.size.height = v600;
        CGRectGetMinY(v767);
        TextLabelProperties.scaledValue(forValue:text:)(v326, v564, *&v695);
        v339 = [objc_opt_self() defaultMetrics];
        [v339 scaledValueForValue:*&v640];

        [v571 bounds];
        sub_ABA490();
        sub_ABA4C0();
        [v571 setCenter:?];

        sub_109AB0(v636);
        sub_2F174(v694);

        v303 = v303 - v305;
        *(v609 + 32) = v303;
      }
    }
  }

  v340 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistTextDrawingView];
  if (!v340)
  {
LABEL_206:
    v395 = v602;
    v394 = v603;
    v392 = v595;
    goto LABEL_207;
  }

  v341 = *(v560 + 2);
  swift_beginAccess();
  v342 = *(v341 + 112);
  v343 = *(v341 + 120);
  swift_beginAccess();
  v344 = *(v341 + 64);
  v684[1] = *(v341 + 48);
  v684[2] = v344;
  v345 = *(v341 + 96);
  v684[3] = *(v341 + 80);
  v685 = v345;
  v684[0] = *(v341 + 32);
  v346 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8];
  if ((v346 & 0x2000000000000000) != 0)
  {
    v347 = HIBYTE(v346) & 0xF;
  }

  else
  {
    v347 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName] & 0xFFFFFFFFFFFFLL;
  }

  if (!v347)
  {
    v396 = *(v593 + 32);
    v397 = *(v593 + 40);
    v398 = *(v593 + 72);
    v585 = *(v593 + 64);
    v399 = v342;
    v400 = *(v593 + 80);
    v401 = *(v593 + 88);
    v402 = v340;

    sub_2F118(v684, &v686);
    v403 = v397;
    v404 = v343;
    v405 = v403;
    v406 = v401;
    v187 = v579;
    sub_108594(v399, v404, v684, v403, v585, v398, v400, v406, &v642, 0.0, 0.0, v396);
    v670 = v646;
    v671 = v647;
    v672 = v648;
    v673 = v649;
    v666 = v642;
    v667 = v643;
    v668 = v644;
    v669 = v645;

    v190 = v580;
    v680 = v670;
    v681 = v671;
    v682 = v672;
    v683 = v673;
    v676 = v666;
    v677 = v667;
    v678 = v668;
    v679 = v669;
    UIScreen.Dimensions.size.getter();
    v690 = v680;
    v691 = v681;
    v692 = v682;
    v693 = v683;
    v686 = v676;
    v687 = v677;
    v688 = v678;
    v689 = v679;
    sub_109B04(&v642, &v656);
    TextDrawing.View.textDrawingContext.setter(&v686);

    sub_109AB0(&v642);
    sub_2F174(v684);

    goto LABEL_206;
  }

  v348 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_durationTextDrawingView];
  v577 = v342;
  if (v348 && (v228 & 1) != 0)
  {
    v349 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTextDrawingView];
    v350 = v340;
    v351 = v343;

    sub_2F118(v684, &v686);
    if (!v349)
    {
      v551 = v348;
      v807.origin.x = v301;
      v807.origin.y = v595;
      v807.size.height = v600;
      v807.size.width = v303;
      v552 = v293 + CGRectGetMaxX(v807) - v305 + 16.0;
      [v551 frame];
      sub_ABA4A0();
      v553 = CGRectGetMinX(v808);

      v305 = v553 - v552;
    }
  }

  else
  {
    v381 = v340;

    sub_2F118(v684, &v686);
    v351 = v343;
  }

  v584 = v305;
  v769.origin.x = v301;
  v769.origin.y = v595;
  v769.size.width = v303;
  v769.size.height = v600;
  v382 = CGRectGetHeight(v769);
  v383 = *(v593 + 32);
  v384 = *(v593 + 64);
  v385 = *(v593 + 72);
  v387 = *(v593 + 80);
  v386 = *(v593 + 88);
  v388 = *(v593 + 40);
  sub_108594(v577, v351, v684, v388, v384, v385, v387, v386, &v642, v305 + -16.0, v382, v383);
  v670 = v646;
  v671 = v647;
  v672 = v648;
  v673 = v649;
  v666 = v642;
  v667 = v643;
  v668 = v644;
  v669 = v645;

  v680 = v670;
  v681 = v671;
  v682 = v672;
  v683 = v673;
  v676 = v666;
  v677 = v667;
  v678 = v668;
  v679 = v669;
  UIScreen.Dimensions.size.getter();
  v690 = v680;
  v691 = v681;
  v692 = v682;
  v693 = v683;
  v686 = v676;
  v687 = v677;
  v688 = v678;
  v689 = v679;
  sub_109B04(&v642, &v656);
  TextDrawing.View.textDrawingContext.setter(&v686);
  v390 = *(&v645 + 1);
  v389 = *&v645;
  v391 = v340;
  [v391 setBounds:{0.0, 0.0, v389, v390}];
  v770.origin.x = v301;
  v770.origin.y = v595;
  v770.size.width = v303;
  v770.size.height = v600;
  CGRectGetMaxX(v770);
  v392 = v595;
  v771.origin.x = v301;
  v771.origin.y = v595;
  v771.size.width = v303;
  v771.size.height = v600;
  CGRectGetMinY(v771);
  TextLabelProperties.scaledValue(forValue:text:)(v577, v351, *&v685);
  v393 = [objc_opt_self() defaultMetrics];
  [v393 scaledValueForValue:*&v648];

  [v391 bounds];
  v187 = v579;
  v395 = v602;
  v394 = v603;
  sub_ABA490();
  sub_ABA4C0();
  [v391 setCenter:?];

  sub_109AB0(&v642);
  sub_2F174(v684);

  v303 = v303 - v584;
  *(v609 + 32) = v303;
  v190 = v580;
LABEL_207:
  v407 = OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextDrawingView;
  v408 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextDrawingView];
  v320 = v408 != 0;
  v586 = v408 != 0;
  if (v408)
  {
    v572 = OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextDrawingView;
    v409 = v408;
    [v409 setHidden:0];
    v410 = *v560;
    swift_beginAccess();
    v411 = v410[14];
    v412 = v410[15];
    swift_beginAccess();
    v413 = *(v410 + 4);
    v674[1] = *(v410 + 3);
    v674[2] = v413;
    v414 = *(v410 + 6);
    v674[3] = *(v410 + 5);
    v675 = v414;
    v674[0] = *(v410 + 2);

    sub_2F118(v674, &v676);
    v415 = sub_148FD4(v1, v190, v229, v609, 24.0, v395, v394, v608, v610);
    v417 = v416;
    v418 = [v229 isHidden];
    v419 = 36.0;
    if (v415 > 36.0)
    {
      v419 = v415;
    }

    if (v418)
    {
      v420 = v419;
    }

    else
    {
      v420 = v417;
    }

    v772.origin.x = v301;
    v772.origin.y = v392;
    v772.size.width = v303;
    v772.size.height = v600;
    v421 = CGRectGetHeight(v772);
    v422 = *(v593 + 32);
    v423 = *(v593 + 64);
    v424 = *(v593 + 72);
    v425 = *(v593 + 80);
    v426 = *(v593 + 88);
    v427 = *(v593 + 40);
    v428 = v425;
    v187 = v579;
    sub_108594(v411, v412, v674, v427, v423, v424, v428, v426, v650, v420, v421, v422);
    v660 = v652;
    v661 = v653;
    v662 = v654;
    v663 = v655;
    v656 = v650[0];
    v657 = v650[1];
    v658 = v650[2];
    v659 = v651;

    v670 = v660;
    v671 = v661;
    v672 = v662;
    v673 = v663;
    v666 = v656;
    v667 = v657;
    v668 = v658;
    v669 = v659;
    UIScreen.Dimensions.size.getter();
    v680 = v670;
    v681 = v671;
    v682 = v672;
    v683 = v673;
    v676 = v666;
    v677 = v667;
    v678 = v668;
    v679 = v669;
    sub_109B04(v650, &v620);
    TextDrawing.View.textDrawingContext.setter(&v676);
    [v409 setBounds:{0.0, 0.0, v651}];
    v773.origin.x = v301;
    v773.origin.y = v392;
    v773.size.width = v303;
    v773.size.height = v600;
    CGRectGetMinX(v773);
    v774.origin.x = v301;
    v774.origin.y = v392;
    v774.size.width = v303;
    v774.size.height = v600;
    CGRectGetMinY(v774);
    TextLabelProperties.scaledValue(forValue:text:)(v411, v412, *&v675);
    v429 = [objc_opt_self() defaultMetrics];
    [v429 scaledValueForValue:*&v654];

    [v409 bounds];
    v430 = *&v1[v561];
    v431 = v430 >> 13;
    if (v430 >> 13 == 1 || v431 == 3 || v431 == 4 && (v430 & 1) != 0)
    {
      v775.origin.x = v301;
      v775.origin.y = v595;
      v775.size.height = v600;
      v775.size.width = v303;
      CGRectGetMinX(v775);
    }

    sub_ABA490();
    sub_ABA4C0();
    [v409 setCenter:?];

    [v573 frame];
    [v1 bounds];
    sub_ABA4A0();
    v432 = CGRectGetMinX(v776);
    v433 = CGRectGetMinX(*v568);
    sub_109AB0(v650);

    sub_2F174(v674);

    v569 = v432 + v433;
    v229 = v578;
    v392 = v595;
    v434 = v600;
    v320 = v586;
    v435 = v420;
    v407 = v572;
  }

  else
  {
    v435 = 0.0;
    v434 = v600;
  }

  v436 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_titleTextDrawingView];
  if (!v436)
  {

    v2 = v573;
    v190 = v580;
    v35 = v610;
    v191 = v608;
    goto LABEL_228;
  }

  v437 = *(v560 + 1);
  swift_beginAccess();
  v439 = *(v437 + 112);
  v438 = *(v437 + 120);
  swift_beginAccess();
  v440 = *(v437 + 64);
  v664[1] = *(v437 + 48);
  v664[2] = v440;
  v441 = *(v437 + 96);
  v664[3] = *(v437 + 80);
  v665 = v441;
  v664[0] = *(v437 + 32);

  v442 = v436;
  sub_2F118(v664, &v666);
  v777.origin.x = v301;
  v777.origin.y = v392;
  v777.size.width = v303;
  v777.size.height = v434;
  CGRectGetMinX(v777);
  v778.origin.x = v301;
  v778.origin.y = v392;
  v778.size.width = v303;
  v778.size.height = v434;
  v443 = CGRectGetWidth(v778);
  v444 = *&v1[v407];
  v597 = v442;
  if (v444)
  {
    v445 = v444;
    [v445 frame];
    sub_ABA4A0();
    CGRectGetMinX(v779);
    v780.origin.x = v301;
    v780.origin.y = v392;
    v780.size.width = v303;
    v780.size.height = v434;
    v446 = CGRectGetWidth(v780) - v435;
    v447 = *&v1[v561];
    if ((v447 >> 13 == 3 || v447 >> 13 == 1) && (v447 & 1) != 0 && (v448 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_musicVideoGlyphImageView]) != 0)
    {
      v449 = v439;
      v450 = v438;
      v451 = v448;
      [v451 setHidden:0];
      [v451 frame];
      [v451 sizeThatFits:{0.0, 0.0}];
      sub_ABA470();
      v453 = v452;
      v455 = v454;
      v457 = v456;
      v459 = v458;
      sub_ABA490();
      [v451 setFrame:?];
      v781.origin.x = v453;
      v781.origin.y = v455;
      v781.size.width = v457;
      v781.size.height = v459;
      v434 = v600;
      v460 = CGRectGetWidth(v781);

      v461 = v460 + 12.0;
      swift_beginAccess();
      v303 = v303 - v461;
      *(v609 + 32) = v303;
      v301 = v301 + v461;
      *(v609 + 16) = v301;
      v446 = v446 - v461;
    }

    else
    {
      v449 = v439;
      v450 = v438;
    }
  }

  else
  {
    v446 = v443;
    v449 = v439;
    v450 = v438;
  }

  v782.origin.x = v301;
  v782.origin.y = v392;
  v782.size.width = v303;
  v782.size.height = v434;
  v462 = CGRectGetHeight(v782);
  v463 = *(v593 + 32);
  v464 = *(v593 + 64);
  v465 = *(v593 + 72);
  v466 = *(v593 + 80);
  v467 = *(v593 + 88);
  v468 = *(v593 + 40);
  sub_108594(v449, v450, v664, v468, v464, v465, v466, v467, &v656, v446, v462, v463);
  v616 = v660;
  v617 = v661;
  v618 = v662;
  v619 = v663;
  v612 = v656;
  v613 = v657;
  v614 = v658;
  v615 = v659;

  v624 = v616;
  v625 = v617;
  v626 = v618;
  v627 = v619;
  v620 = v612;
  v621 = v613;
  v622 = v614;
  v623 = v615;
  UIScreen.Dimensions.size.getter();
  v670 = v624;
  v671 = v625;
  v672 = v626;
  v673 = v627;
  v666 = v620;
  v667 = v621;
  v668 = v622;
  v669 = v623;
  sub_109B04(&v656, &v611);
  TextDrawing.View.textDrawingContext.setter(&v666);
  v470 = *(&v659 + 1);
  v469 = *&v659;
  v471 = v597;
  [v471 setBounds:{0.0, 0.0, v469, v470}];
  v783.origin.x = v301;
  v783.origin.y = v392;
  v783.size.width = v303;
  v783.size.height = v434;
  CGRectGetMinY(v783);
  TextLabelProperties.scaledValue(forValue:text:)(v449, v450, *&v665);
  v472 = [objc_opt_self() defaultMetrics];
  [v472 scaledValueForValue:*&v662];

  [v471 bounds];
  v187 = v579;
  v309 = v602;
  v308 = v603;
  v191 = v608;
  sub_ABA490();
  sub_ABA4C0();
  [v471 setCenter:?];
  swift_beginAccess();
  *(v609 + 32) = v303 - v590;
  if (v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] == 1)
  {
    v2 = v573;
    [v573 frame];
    [v1 bounds];
    sub_ABA4A0();
    v473 = CGRectGetMinX(v784);
    [v471 frame];

    sub_ABA4A0();
    v474 = CGRectGetMinX(v785);

    sub_109AB0(&v656);
    sub_2F174(v664);

    v475 = v473 + v474;
    v191 = v608;
    v569 = v475;
    v320 = 1;
    v190 = v580;
    v229 = v578;
    v35 = v610;
  }

  else
  {

    sub_109AB0(&v656);
    sub_2F174(v664);

    v190 = v580;
    v229 = v578;
    v35 = v610;
    v320 = v586;
    v2 = v573;
  }

LABEL_279:
  v520 = sub_200954();
  v521 = [v520 isHidden];

  v522 = v229;
  if ((v521 & 1) == 0)
  {
    v523 = sub_14AF9C();
    [v523 sizeThatFits:{0.0, 0.0}];

    v524 = [v190 preferredContentSizeCategory];
    sub_ABA320();

    if ([v229 isHidden])
    {
      [v190 horizontalSizeClass];
    }

    v525 = v229;
    if ([v229 isHidden])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1E20, &unk_AFFF30);
      v526 = swift_allocObject();
      v527 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextDrawingView];
      *(v526 + 32) = v527;
      *(v526 + 16) = xmmword_AF85F0;
      v528 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextStackView];
      *(v526 + 40) = v528;
      v529 = v528;
      v530 = v527;
      v531 = sub_1494F4(v526);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1E28, &unk_B0CDE0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v525 = v229;
      if (v531)
      {

        v525 = v531;
      }
    }

    [v525 frame];
    sub_ABA4A0();
    sub_ABA470();
    v522 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell____lazy_storage___favoriteIndicator];
    sub_ABA490();
    [v522 setFrame:?];
  }

  if (!v320)
  {
    [v2 frame];
    [v1 bounds];
    sub_ABA4A0();
    v569 = CGRectGetMinX(v804) + *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_proposedHorizontalLockupSeparatorInset + 8];
  }

  if ((v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_allowsCustomBottomSeparator] & 1) == 0)
  {
    type metadata accessor for UIEdgeInsets(0);
    *&v620 = v558;
    *(&v620 + 1) = v569;
    *&v621 = v557;
    *(&v621 + 1) = v556;
    [v1 separatorInset];
    *&v612 = v532;
    *(&v612 + 1) = v533;
    *&v613 = v534;
    *(&v613 + 1) = v535;
    if (sub_AB38D0())
    {
      [v1 setSeparatorInset:{v558, v569, v557, v556}];
    }
  }

  v536 = *&v1[v607];
  if (v536)
  {
    v537 = v536;
    if ([v537 isHidden])
    {

      goto LABEL_294;
    }

    v538 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_titleTextDrawingView];
    if (v538)
    {
      v539 = v538;
      v540 = [v539 superview];
      if (!v540 || (v540, ([v539 isHidden] & 1) != 0))
      {

        goto LABEL_300;
      }

      [v539 frame];
      sub_ABA4A0();
      CGRectGetMaxX(v805);
      [v539 frame];
      v544 = v543;
      v546 = v545;
      v548 = v547;
      v550 = v549;

      v806.origin.x = v544;
      v806.origin.y = v546;
      v806.size.width = v548;
      v806.size.height = v550;
      CGRectGetMinY(v806);
      [v537 frame];
      sub_ABA490();
      [v537 setFrame:?];

LABEL_294:
    }

    else
    {
LABEL_300:

      v541 = *(v560 + 1);
      v542 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
      sub_37C7B0(v537, v541, v187, v309, v308, v191, v35);
    }
  }

  else
  {

    v537 = v229;
  }
}

double sub_148FD4(uint64_t a1, void *a2, void *a3, uint64_t a4, double a5, CGFloat a6, CGFloat a7, double a8, double a9)
{
  if ((*(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber + 8) & 1) == 0)
  {
    v17 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber);
    v18 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
    swift_beginAccess();
    v19 = *(a1 + v18);
    if (v19)
    {
      v65 = a3;

      [a2 displayScale];
      v20 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents);
      swift_beginAccess();
      v21 = v20[3];
      v22 = v20[5];
      v23 = v20[6];
      v70[2] = v20[4];
      v70[3] = v22;
      v70[4] = v23;
      v70[0] = v20[2];
      v70[1] = v21;
      v64 = v17;
      v68[0] = v17;
      sub_2F118(v70, v69);
      sub_ABB330();
      v24 = sub_AB9420();
      v71._countAndFlagsBits = 57;
      v71._object = 0xE100000000000000;
      sub_AB9550(v71, v24);
      v25 = sub_AB9260();
      v26 = [v25 intValue];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1E10, &unk_B071A0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_AF4EC0;
      *(v27 + 56) = &type metadata for Int32;
      *(v27 + 64) = &protocol witness table for Int32;
      *(v27 + 32) = v26;
      v28 = sub_AB9270();
      v30 = v29;

      v31 = *(v19 + 32);
      v32 = *(v19 + 64);
      v33 = *(v19 + 72);
      v34 = *(v19 + 80);
      v35 = *(v19 + 88);
      v36 = *(v19 + 40);
      sub_108594(v28, v30, v70, v36, v32, v33, v34, v35, v67, a8, a9, v31);

      sub_109AB0(v67);

      [v65 isHidden];
      if ((*(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_maximumTrackNumberForSizing + 8) & 1) == 0)
      {
        v69[0] = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_maximumTrackNumberForSizing);
        sub_ABB330();
        v37 = sub_AB9420();
        v72._countAndFlagsBits = 57;
        v72._object = 0xE100000000000000;
        sub_AB9550(v72, v37);
        v38 = sub_AB9260();
        v39 = [v38 intValue];

        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_AF4EC0;
        *(v40 + 56) = &type metadata for Int32;
        *(v40 + 64) = &protocol witness table for Int32;
        *(v40 + 32) = v39;
        v41 = sub_AB9270();
        v43 = v42;

        v44 = *(v19 + 32);
        v45 = *(v19 + 64);
        v46 = *(v19 + 72);
        v47 = *(v19 + 80);
        v48 = *(v19 + 88);
        v49 = *(v19 + 40);
        sub_108594(v41, v43, v70, v49, v45, v46, v47, v48, v68, a8, a9, v44);

        sub_109AB0(v68);

        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_AF4EC0;
        *(v50 + 56) = &type metadata for Int;
        *(v50 + 64) = &protocol witness table for Int;
        *(v50 + 32) = v64;
        v51 = sub_AB9270();
        v53 = v52;

        v73.origin.x = a6;
        v73.origin.y = a7;
        v73.size.width = a8;
        v73.size.height = a9;
        Width = CGRectGetWidth(v73);
        swift_beginAccess();
        Height = CGRectGetHeight(*(a4 + 16));
        v56 = *(v19 + 32);
        v57 = *(v19 + 64);
        v58 = *(v19 + 72);
        v59 = *(v19 + 80);
        v60 = *(v19 + 88);
        v61 = *(v19 + 40);
        sub_108594(v51, v53, v70, v61, v57, v58, v59, v60, v69, Width, Height, v56);

        sub_109AB0(v69);
      }

      sub_AB3A00();
      a5 = v62;
      sub_AB3A00();
      sub_2F174(v70);
    }
  }

  return a5;
}

void *sub_1494F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    do
    {
      v4 = *v2++;
      v3 = v4;
      if (v4)
      {
        v5 = v3;
        v6 = [v5 superview];
        if (v6)
        {

          if (![v5 isHidden])
          {
            return v3;
          }
        }
      }

      --v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t sub_1495D0(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = sub_ABA330();

  return v2 & 1;
}

float64x2_t sub_149620(void *a1, uint64_t a2, float64x2_t *a3)
{
  v6 = objc_opt_self();
  v7 = [v6 defaultMetrics];
  v8 = sub_ABA310();
  sub_AB9EF0();

  [a1 displayScale];
  sub_AB39F0();
  v16 = v9;
  v10 = [v6 defaultMetrics];
  v11 = sub_ABA310();
  sub_AB9EF0();

  [a1 displayScale];
  sub_AB39F0();
  v15 = v12;
  swift_beginAccess();
  *(a2 + 40) = v16 + *(a2 + 40);
  swift_beginAccess();
  v13.f64[0] = v16;
  v13.f64[1] = v15;
  result = vsubq_f64(a3[1], v13);
  a3[1] = result;
  return result;
}

id sub_1497E8()
{
  v1 = OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkBackgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkBackgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkBackgroundView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = [objc_opt_self() whiteColor];
    [v4 setBackgroundColor:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1498AC()
{
  v1 = OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkComponent;
  if (*&v0[OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkComponent])
  {
    v2 = *&v0[OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkComponent];
  }

  else
  {
    v2 = sub_149914(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_149914(char *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v42 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v39 - v3;
  type metadata accessor for ArtworkComponentImageView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v6 = sub_80104(v5);

  *(v6 + 24) = 0x70756B636F6CLL;
  *(v6 + 32) = 0xE600000000000000;

  v7 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  *(v6 + 16) = *(v7 + 16);

  v8 = [a1 traitCollection];
  v9 = [objc_opt_self() defaultMetrics];
  v10 = sub_ABA310();
  v43 = v8;
  sub_AB9EF0();
  v12 = v11;

  v13 = *(v6 + 80);
  v14 = *(v6 + 88);
  *(v6 + 80) = v12;
  *(v6 + 88) = v12;
  sub_75614(v13, v14);
  v41 = OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkCatalog;
  v40 = a1;
  v15 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkCatalog];
  v16 = v15;
  sub_74EA4(v15);
  v17 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder];
  v18 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder];
  v19 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 8];
  v21 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 16];
  v20 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 24];
  v22 = *(v17 + 4);
  v23 = *(v17 + 5);
  v24 = *(v6 + 168);
  v44[0] = *(v6 + 152);
  v44[1] = v24;
  v44[2] = *(v6 + 184);
  *(v6 + 152) = v18;
  *(v6 + 160) = v19;
  *(v6 + 168) = v21;
  *(v6 + 176) = v20;
  *(v6 + 184) = v22;
  *(v6 + 192) = v23;
  sub_80C9C(v18, v19, v21, v20);
  sub_80C9C(v18, v19, v21, v20);
  sub_75948(v44);
  sub_12E1C(v44, &unk_DF8690, &unk_AF9900);
  sub_2F1C8(v18, v19, v21, v20);
  v25 = *(v7 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v26 = *(v7 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);
  v27 = (v6 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v28 = *(v6 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v29 = *(v6 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);
  *v27 = v25;
  v27[1] = v26;
  sub_307CC(v25, v26);
  sub_17654(v28, v29);
  sub_ABA670();
  v30 = sub_ABA680();
  (*(*(v30 - 8) + 56))(v4, 0, 1, v30);
  v31 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  v32 = v42;
  sub_15F84(v6 + v31, v42, &unk_DFFBC0, &unk_AF85C0);
  swift_beginAccess();
  sub_8A01C(v4, v6 + v31);
  swift_endAccess();
  sub_75AE8(v32);
  sub_12E1C(v32, &unk_DFFBC0, &unk_AF85C0);
  sub_12E1C(v4, &unk_DFFBC0, &unk_AF85C0);
  [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.16];
  UIView.Border.init(thickness:color:)();
  sub_75E64(v34, v33 & 1, v35);
  v36 = *&v40[v41];
  v37 = v36;
  sub_74EA4(v36);
  return v6;
}

void sub_149D50()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle;
  sub_14C0F8(v2, *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle], &v54);
  v4 = v54;
  v5 = v55;
  v6 = v56;

  *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize] = v4;
  v7 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v8 = *(v7 + 80);
  v9 = *(v7 + 88);
  *(v7 + 80) = v4;
  sub_75614(v8, v9);
  v10 = &v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  type metadata accessor for UIEdgeInsets(0);
  v54 = v5;
  v55 = v6;
  v11 = *v10;
  v12 = *(v10 + 1);
  *v10 = v5;
  *(v10 + 1) = v6;
  v52 = v11;
  v53 = v12;
  if (sub_AB38D0())
  {
    [v1 setNeedsLayout];
  }

  v13 = *&v1[v3];
  if ((v13 & 0xE000) != 0x4000 || (v13 & 1) == 0)
  {
    v15 = *(v7 + 144);
    *(v7 + 144) = 1;
    if (v15 == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = *(v7 + 144);
  *(v7 + 144) = 2;
  if (v14 != 2)
  {
LABEL_8:
    v16 = [*(v7 + 112) image];
    sub_788B8(v16);
  }

LABEL_9:
  v17 = *&v1[v3];
  if (v17 >> 13)
  {
    if (v17 >> 13 != 2 || (v17 & 0x100) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v17 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1498AC();
  v18 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkCatalog];
  v19 = v18;
  sub_74EA4(v18);

  v20 = OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkComponent;
  v21 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkComponent];
  v22 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder];
  v23 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 8];
  v24 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 16];
  v25 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 24];
  v26 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 32];
  v27 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 40];
  v28 = *(v21 + 168);
  v54 = *(v21 + 152);
  v55 = v28;
  v56 = *(v21 + 184);
  *(v21 + 152) = v22;
  *(v21 + 160) = v23;
  *(v21 + 168) = v24;
  *(v21 + 176) = v25;
  *(v21 + 184) = v26;
  *(v21 + 192) = v27;
  sub_80C9C(v22, v23, v24, v25);
  sub_80C9C(v22, v23, v24, v25);

  sub_75948(&v54);
  sub_12E1C(&v54, &unk_DF8690, &unk_AF9900);
  sub_2F1C8(v22, v23, v24, v25);

  v29 = *&v1[v20];
  v30 = *(v29 + 144);
  *(v29 + 144) = 2;
  if (v30 != 2)
  {
    v31 = *(v29 + 112);

    v32 = [v31 image];
    sub_788B8(v32);
  }

LABEL_16:
  v33 = *&v1[v3];
  v34 = OBJC_IVAR____TtC16MusicApplication8SongCell_chevronImageView;
  v35 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_chevronImageView];
  if (v33 == 40960 || v33 >> 13 < 5)
  {
    if (v35)
    {
      [*&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_chevronImageView] removeFromSuperview];
    }
  }

  else
  {
    if (v35)
    {
      v36 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_chevronImageView];
      v37 = v36;
    }

    else
    {
      v38 = [v1 traitCollection];
      v39 = [v38 preferredContentSizeCategory];

      v40 = sub_45B16C(v39);
      v37 = [objc_allocWithZone(UIImageView) initWithImage:v40];

      v36 = 0;
      v35 = *&v1[v34];
    }

    *&v1[v34] = v37;
    v41 = v36;
    v42 = v37;

    [v1 addSubview:v42];
  }

  v43 = *&v1[v3];
  if (v43 >> 13 == 3 || v43 >> 13 == 1) && (v43)
  {
    v44 = OBJC_IVAR____TtC16MusicApplication8SongCell_musicVideoGlyphImageView;
    v45 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_musicVideoGlyphImageView];
    if (v45)
    {
      v46 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_musicVideoGlyphImageView];
      v47 = v46;
    }

    else
    {
      sub_13C80(0, &qword_DE8700, UIImage_ptr);
      v49 = UIImage.init(systemName:pointSize:weight:)(0x6F6E2E636973756DLL, 0xED000076742E6574, 4, 16.0);
      v47 = [objc_allocWithZone(UIImageView) initWithImage:v49];

      v46 = 0;
      v45 = *&v1[v44];
    }

    *&v1[v44] = v47;
    v50 = v46;
    v51 = v47;

    [v1 addSubview:v51];
  }

  else
  {
    v48 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_musicVideoGlyphImageView];
    if (v48)
    {
      [v48 removeFromSuperview];
    }
  }
}

void sub_14A238(void *a1, double a2)
{
  v3 = v2;
  if (![a1 horizontalSizeClass])
  {
    return;
  }

  if ([a1 horizontalSizeClass] == &dword_0 + 1 || a2 < 465.0)
  {
    v8 = 1;
  }

  else
  {
    v7 = [a1 preferredContentSizeCategory];
    v8 = sub_ABA320();
  }

  v9 = v3[OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem];
  v10 = [*(*&v3[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent] + 112) isHidden];
  v11 = OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle;
  v12 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
  sub_143FEC(a1, v8 & 1, v9, v10 ^ 1, *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle], v3[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled]);
  if (v8)
  {
    v13 = [v3 contentView];
    v14 = *&v3[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
    v15 = [v14 superview];
    if (v15 && (v16 = v15, sub_13C80(0, &qword_DF12A0, UIView_ptr), v17 = v13, v18 = sub_ABA790(), v17, v16, (v18 & 1) != 0))
    {
      [v14 setHidden:0];
    }

    else
    {
      [v13 addSubview:v14];
    }

    v26 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextDrawingView];
    if (v26)
    {
      [v26 setHidden:1];
    }

    v27 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_titleTextDrawingView];
    if (v27)
    {
      [v27 setHidden:1];
    }

    v28 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_artistTextDrawingView];
    if (v28)
    {
      [v28 setHidden:1];
    }

    v29 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTextDrawingView];
    if (v29)
    {

      [v29 setHidden:1];
    }

    return;
  }

  v19 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextStackView];
  if (v19)
  {
    [v19 setHidden:1];
  }

  [*&v3[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView] setHidden:1];
  v20 = OBJC_IVAR____TtC16MusicApplication8SongCell_badgeView;
  v21 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeView];
  if (v21)
  {
    [v21 setHidden:1];
  }

  v22 = [v3 contentView];
  if ((v3[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber + 8] & 1) == 0)
  {
    v23 = OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextDrawingView;
    v24 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextDrawingView];
    if (v24)
    {
      v25 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextDrawingView];
    }

    else
    {
      type metadata accessor for TextDrawing.View();
      v30 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v31 = *&v3[v23];
      *&v3[v23] = v30;
      v25 = v30;

      v24 = 0;
    }

    v32 = v24;
    v33 = [v25 superview];
    if (v33 && (v34 = v33, sub_13C80(0, &qword_DF12A0, UIView_ptr), v35 = v22, v36 = sub_ABA790(), v35, v34, (v36 & 1) != 0))
    {
      [v25 setHidden:0];
    }

    else
    {
      [v22 addSubview:v25];
    }
  }

  v37 = *&v3[v20];
  if (v37)
  {
    v38 = v3[v12];
    v39 = v37;
    v40 = 1.0;
    if (v38 == 1)
    {
      UIInterfaceGetContentDisabledAlpha();
    }

    [v39 setAlpha:v40];

    v41 = *&v3[v20];
    if (v41)
    {
      v42 = v41;
      v43 = [v42 superview];
      if (v43 && (v44 = v43, sub_13C80(0, &qword_DF12A0, UIView_ptr), v45 = v22, v46 = sub_ABA790(), v45, v44, (v46 & 1) != 0))
      {
        [v42 setHidden:0];
      }

      else
      {
        [v22 addSubview:v42];
      }
    }
  }

  v47 = OBJC_IVAR____TtC16MusicApplication8SongCell_titleTextDrawingView;
  v48 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_titleTextDrawingView];
  if (v48)
  {
    v49 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_titleTextDrawingView];
  }

  else
  {
    type metadata accessor for TextDrawing.View();
    v50 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v51 = *&v3[v47];
    *&v3[v47] = v50;
    v49 = v50;

    v48 = 0;
  }

  v52 = v48;
  v53 = [v49 superview];
  if (v53 && (v54 = v53, sub_13C80(0, &qword_DF12A0, UIView_ptr), v55 = v22, v56 = sub_ABA790(), v55, v54, (v56 & 1) != 0))
  {
    [v49 setHidden:0];
  }

  else
  {
    [v22 addSubview:v49];
  }

  v57 = OBJC_IVAR____TtC16MusicApplication8SongCell_artistTextDrawingView;
  v58 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_artistTextDrawingView];
  if (v58)
  {
    v81 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_artistTextDrawingView];
  }

  else
  {
    type metadata accessor for TextDrawing.View();
    v59 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v60 = *&v3[v57];
    *&v3[v57] = v59;
    v81 = v59;

    v58 = 0;
  }

  v61 = v58;
  v62 = [v81 superview];
  if (v62 && (v63 = v62, sub_13C80(0, &qword_DF12A0, UIView_ptr), v64 = v22, v65 = sub_ABA790(), v64, v63, (v65 & 1) != 0))
  {
    [v81 setHidden:0];
  }

  else
  {
    [v22 addSubview:v81];
  }

  v66 = *&v3[v11] >> 13;
  if (!v66)
  {
    goto LABEL_63;
  }

  if (v66 == 2)
  {
    if (a2 > 1500.0)
    {
      goto LABEL_63;
    }

LABEL_66:
    v70 = OBJC_IVAR____TtC16MusicApplication8SongCell_albumTextDrawingView;
    v71 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTextDrawingView];
    if (v71)
    {
      [v71 removeFromSuperview];
      v80 = *&v3[v70];
    }

    else
    {
      v80 = 0;
    }

    *&v3[v70] = 0;

    v79 = v80;
    goto LABEL_76;
  }

  if (v66 != 4)
  {
    goto LABEL_66;
  }

LABEL_63:
  v67 = OBJC_IVAR____TtC16MusicApplication8SongCell_albumTextDrawingView;
  v68 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTextDrawingView];
  if (v68)
  {
    v69 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTextDrawingView];
  }

  else
  {
    type metadata accessor for TextDrawing.View();
    v72 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v73 = *&v3[v67];
    *&v3[v67] = v72;
    v69 = v72;

    v68 = 0;
  }

  v74 = v68;
  v75 = [v69 superview];
  if (v75 && (v76 = v75, sub_13C80(0, &qword_DF12A0, UIView_ptr), v77 = v22, v78 = sub_ABA790(), v77, v76, (v78 & 1) != 0))
  {
    [v69 setHidden:0];
  }

  else
  {
    [v22 addSubview:v69];
  }

  v79 = v81;
LABEL_76:
}