Swift::Int sub_F2CEC()
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

Swift::Int sub_F2D40(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

uint64_t sub_F2D88(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_ABB3C0();
  }
}

void sub_F2DB8()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedBagProvider];
  sub_13C80(0, &qword_DEE560, ICStoreRequestContext_ptr);
  v3 = static ICStoreRequestContext.current.getter();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v7[4] = sub_F4608;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_151E0;
  v7[3] = &block_descriptor_32;
  v5 = _Block_copy(v7);
  v6 = v1;

  [v2 getBagForRequestContext:v3 withCompletionHandler:v5];
  _Block_release(v5);
}

double sub_F2EEC(void *a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v6 = sub_AB2A90();
  v66 = *(v6 - 8);
  __chkstk_darwin();
  v8 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v10 = v62 - v9;
  v11 = sub_AB31C0();
  v67 = *(v11 - 8);
  __chkstk_darwin();
  v13 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = v62 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E07D40, &unk_AFD280);
  __chkstk_darwin();
  v17 = v62 - v16;
  sub_AB2CE0();
  *&v20 = __chkstk_darwin().n128_u64[0];
  v22 = v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 || (v63 = v22, v65 = v18, v64 = v19, ([a3 isCancelled] & 1) != 0))
  {
    v23 = *&a3[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_responseHandler];
    if (v23)
    {

      v23(v24, a2);
    }

    if (a2)
    {
      v25 = sub_AB3040();
    }

    else
    {
      v25 = 0;
    }

    v69.receiver = a3;
    v69.super_class = ObjectType;
    objc_msgSendSuper2(&v69, "finishWithError:", v25);

    return result;
  }

  if (a1)
  {
    v27 = [a1 dictionaryForBagKey:ICURLBagKeyMusicFriends];
    if (v27)
    {
      v28 = v27;
      v29 = sub_AB8FF0();

      v30 = 0x8000000000B50AB0;
      v72 = 0xD000000000000018;
      v73 = 0x8000000000B50AB0;
      sub_ABAD10();
      v31 = *(v29 + 16);
      v62[1] = v29;
      if (v31 && (v62[0] = 0x8000000000B50AB0, v32 = sub_2EC004(v74), v30 = v62[0], (v33 & 1) != 0))
      {
        sub_808B0(*(v29 + 56) + 32 * v32, v75);
        sub_8085C(v74);
        if (swift_dynamicCast())
        {
          v34 = v73;
          sub_AB2CC0();
          v35 = v64;
          if ((*(v64 + 48))(v17, 1, v65) != 1)
          {
            v62[0] = v34;
            (*(v35 + 32))(v63, v17, v65);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEA98, &unk_B0D760);
            sub_AB2C10();
            *(swift_allocObject() + 16) = xmmword_AF4EC0;
            sub_AB2BE0();
            sub_AB2C30();
            sub_AB2C50();
            v49 = v67;
            if ((*(v67 + 48))(v10, 1, v11) != 1)
            {
              (*(v49 + 32))(v15, v10, v11);
              (*(v49 + 16))(v13, v15, v11);
              sub_AB2A50();
              sub_13C80(0, &qword_DEE560, ICStoreRequestContext_ptr);
              v55 = static ICStoreRequestContext.current.getter();
              v56 = objc_allocWithZone(ICStoreURLRequest);
              v57 = sub_AB2A30();
              v58 = [v56 initWithURLRequest:v57 requestContext:v55];
              (*(v66 + 8))(v8, v6);

              sub_13C80(0, &qword_E07CC0, ICURLSessionManager_ptr);
              v59 = static ICURLSessionManager.musicSession.getter();
              v60 = swift_allocObject();
              *(v60 + 16) = a3;
              v61 = a3;
              ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(v58, sub_F467C, v60);
              (*(v49 + 8))(v15, v11);
              (*(v64 + 8))(v63, v65);

              return result;
            }

            sub_12E1C(v10, &unk_DF2AE0, &qword_AFC930);
            sub_F4628();
            v50 = swift_allocError();
            *v51 = 0;
            v51[1] = 0;
            v52 = *&a3[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_responseHandler];
            if (v52)
            {

              v52(v53, v50);
            }

            v54 = sub_AB3040();
            v70.receiver = a3;
            v70.super_class = ObjectType;
            objc_msgSendSuper2(&v70, "finishWithError:", v54);
            (*(v64 + 8))(v63, v65);

LABEL_24:

            return result;
          }

          sub_12E1C(v17, &unk_E07D40, &unk_AFD280);

          v30 = v62[0];
        }
      }

      else
      {
        sub_8085C(v74);
      }

      sub_F4628();
      v44 = swift_allocError();
      *v45 = 0xD000000000000018;
      v45[1] = v30;
      v46 = *&a3[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_responseHandler];
      if (v46)
      {

        v46(v47, v44);
      }

      v48 = sub_AB3040();
      v71.receiver = a3;
      v71.super_class = ObjectType;
      objc_msgSendSuper2(&v71, "finishWithError:", v48);

      goto LABEL_24;
    }
  }

  v36 = sub_AB92A0();
  v38 = v37;
  sub_F4628();
  v39 = swift_allocError();
  *v40 = v36;
  v40[1] = v38;
  v41 = *&a3[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_responseHandler];
  if (v41)
  {

    v41(v42, v39);
  }

  v43 = sub_AB3040();
  v76.receiver = a3;
  v76.super_class = ObjectType;
  objc_msgSendSuper2(&v76, "finishWithError:", v43);

  return result;
}

void sub_F38B4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_responseHandler];
  if (v5)
  {

    v5(v6, a1);
  }

  if (a1)
  {
    v7 = sub_AB3040();
  }

  else
  {
    v7 = 0;
  }

  v8.receiver = v2;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "finishWithError:", v7);
}

void sub_F3970(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if ([v2 isCancelled])
  {
    v7 = *&v2[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_responseHandler];
    if (v7)
    {

      v7(v8, 0);
    }

    v65.receiver = v2;
    v65.super_class = ObjectType;
    objc_msgSendSuper2(&v65, "finishWithError:", 0);
    return;
  }

  if (a2)
  {
    v9 = a2;
LABEL_18:
    v21 = *&v2[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_responseHandler];
    swift_errorRetain();
    if (v21)
    {

      v21(v22, v9);
    }

    v23 = sub_AB3040();
    v87.receiver = v3;
    v87.super_class = ObjectType;
    objc_msgSendSuper2(&v87, "finishWithError:", v23);

    return;
  }

  if (!a1)
  {
LABEL_17:
    sub_F4628();
    v9 = swift_allocError();
    *v20 = xmmword_AF82C0;
    goto LABEL_18;
  }

  v10 = a1;
  v11 = [v10 parsedBodyDictionary];
  if (!v11 || (v12 = v11, v13 = sub_AB8FF0(), v12, sub_16A5E8(v13), v15 = v14, , !v15))
  {

    goto LABEL_17;
  }

  if (*(v15 + 16) && (v16 = sub_2EBF88(0xD000000000000011, 0x8000000000B50AD0), (v17 & 1) != 0) && (sub_808B0(*(v15 + 56) + 32 * v16, &v88), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70), (swift_dynamicCast() & 1) != 0))
  {
    if (*(v80[0] + 16) && (v18 = sub_2EBF88(0x70756B636F6CLL, 0xE600000000000000), (v19 & 1) != 0))
    {
      sub_808B0(*(v80[0] + 56) + 32 * v18, &v85);
    }

    else
    {
      v85 = 0u;
      v86 = 0u;
    }
  }

  else
  {
    v85 = 0u;
    v86 = 0u;
  }

  sub_F46A0(&v85, &v88);
  if (!*(&v89 + 1))
  {
    sub_12E1C(&v88, &unk_DE8E40, &unk_AF8050);
    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    v88 = 0u;
    v89 = 0u;
    goto LABEL_29;
  }

  if (*(v80[0] + 16) && (v24 = sub_2EBF88(0x73746C75736572, 0xE700000000000000), (v25 & 1) != 0))
  {
    sub_808B0(*(v80[0] + 56) + 32 * v24, &v88);
  }

  else
  {
    v88 = 0u;
    v89 = 0u;
  }

  if (*(&v89 + 1))
  {
    if (swift_dynamicCast())
    {
      v26 = v80[0];
    }

    else
    {
      v26 = 0;
    }

    if (!*(v15 + 16))
    {
      goto LABEL_68;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_12E1C(&v88, &unk_DE8E40, &unk_AF8050);
  v26 = 0;
  if (!*(v15 + 16))
  {
LABEL_68:

    sub_F4628();
    v50 = swift_allocError();
    *v51 = xmmword_AF82C0;
    v52 = *&v2[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_responseHandler];
    if (v52)
    {

      v52(v53, v50);
    }

    v54 = sub_AB3040();
    v84.receiver = v3;
    v84.super_class = ObjectType;
    objc_msgSendSuper2(&v84, "finishWithError:", v54);
    sub_12E1C(&v85, &unk_DE8E40, &unk_AF8050);

    return;
  }

LABEL_30:
  v27 = sub_2EBF88(0xD000000000000018, 0x8000000000B50AB0);
  if ((v28 & 1) == 0)
  {
    goto LABEL_68;
  }

  sub_808B0(*(v15 + 56) + 32 * v27, &v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF678, &qword_B3C350);
  if (!swift_dynamicCast())
  {
    goto LABEL_68;
  }

  v29 = v80[0];
  if (!v26)
  {
    goto LABEL_68;
  }

  v83 = &_swiftEmptySetSingleton;
  v30 = *(v80[0] + 16);
  if (v30)
  {
    v62 = v26;
    v31 = 32;
    do
    {
      v32 = *(v29 + v31);
      if (*(v32 + 16))
      {

        v33 = sub_2EBF88(25705, 0xE200000000000000);
        if (v34)
        {
          sub_808B0(*(v32 + 56) + 32 * v33, v80);
          if (swift_dynamicCast())
          {
            v35 = *(&v74 + 1);
            if (*(v32 + 16) && (v63 = v74, v36 = sub_2EBF88(0x6269726373627573, 0xEC00000064497265), (v37 & 1) != 0) && (sub_808B0(*(v32 + 56) + 32 * v36, v80), (swift_dynamicCast() & 1) != 0))
            {
              v60 = *(&v74 + 1);
              if (*(v62 + 16) && (v59 = v74, v38 = sub_2EBF88(v63, v35), (v39 & 1) != 0) && (sub_808B0(*(v62 + 56) + 32 * v38, v80), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830, &unk_AFD670), (swift_dynamicCast() & 1) != 0))
              {
                v40 = v74;
                v41 = 0;
                if (*(v32 + 16))
                {
                  v58 = v74;
                  v42 = sub_2EBF88(0x746867696577, 0xE600000000000000);
                  if (v43)
                  {
                    sub_808B0(*(v32 + 56) + 32 * v42, v81);
                    if (swift_dynamicCast())
                    {
                      v41 = v80[0];
                    }
                  }

                  v40 = v58;
                }

                *&v74 = v59;
                *(&v74 + 1) = v60;
                *&v75 = v63;
                *(&v75 + 1) = v35;
                v76 = v40;
                v77 = 0;
                v78 = 0;
                v79 = v41;
                v80[0] = v59;
                v80[1] = v60;
                v80[2] = v63;
                v80[3] = v35;
                v80[4] = v40;
                v80[5] = 0;
                v80[6] = 0;
                v80[7] = v41;
                sub_2BABC(&v74, &v67);
                sub_2BA68(v80);
                v71 = v74;
                v72 = v75;
                v61 = v77;
                v73 = v76;
                v64 = v78;
                v44 = v79;
                if (*(v32 + 16))
                {
                  v45 = sub_2EBF88(0x6E6F73616572, 0xE600000000000000);
                  if (v46)
                  {
                    sub_808B0(*(v32 + 56) + 32 * v45, &v67);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70);
                    if (swift_dynamicCast())
                    {
                      v47 = *&v66[0];
                      if (*(*&v66[0] + 16) && (v48 = sub_2EBF88(0xD000000000000010, 0x8000000000B50AF0), (v49 & 1) != 0) && (sub_808B0(*(v47 + 56) + 32 * v48, &v67), (swift_dynamicCast() & 1) != 0))
                      {
                        v64 = *(&v66[0] + 1);
                        v61 = *&v66[0];
                      }

                      else
                      {

                        v61 = 0;
                        v64 = 0;
                      }
                    }
                  }
                }

                v88 = v71;
                v89 = v72;
                v90 = v73;
                v91 = v61;
                v92 = v64;
                v93 = v44;
                sub_2BABC(&v88, &v67);
                sub_1AC68(&v67, &v88);
                v66[0] = v67;
                v66[1] = v68;
                v66[2] = v69;
                v66[3] = v70;
                sub_2BA68(v66);
                v67 = v71;
                v68 = v72;
                *&v69 = v73;
                *(&v69 + 1) = v61;
                *&v70 = v64;
                *(&v70 + 1) = v44;
                sub_2BA68(&v67);
              }

              else
              {
              }
            }

            else
            {
            }
          }
        }
      }

      v31 += 8;
      --v30;
    }

    while (v30);

    v55 = v83;
  }

  else
  {

    v55 = &_swiftEmptySetSingleton;
  }

  *&v3[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_matchedFriends] = v55;

  v56 = *&v3[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_responseHandler];
  if (v56)
  {

    v56(v57, 0);
  }

  v82.receiver = v3;
  v82.super_class = ObjectType;
  objc_msgSendSuper2(&v82, "finishWithError:", 0, v58);
  sub_12E1C(&v85, &unk_DE8E40, &unk_AF8050);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_F44D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_F4518(uint64_t result, int a2, int a3)
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

unint64_t sub_F457C()
{
  result = qword_DEF668;
  if (!qword_DEF668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEF668);
  }

  return result;
}

uint64_t sub_F45D0()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_F4628()
{
  result = qword_DEF670;
  if (!qword_DEF670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEF670);
  }

  return result;
}

uint64_t sub_F46A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E40, &unk_AF8050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperationC0H5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_F4728(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_F477C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_F47D8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

char *sub_F480C()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController_shouldRecordPageMetrics) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController____lazy_storage___accountButton) = 0;
  v1 = OBJC_IVAR____TtC16MusicApplication21LibraryViewController_menuTableViewController;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for LibraryMenuViewController()) init];
  v2 = OBJC_IVAR____TtC16MusicApplication21LibraryViewController_recentlyAddedViewController;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for RecentlyAddedViewController(0)) init];
  *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController____lazy_storage___dropIndicationView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController_isActiveDropSessionInsideView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController_shouldSkipRecordingPageMetricsForEditingStateChange) = 0;
  v3 = sub_4D3A88(_swiftEmptyArrayStorage);
  *(*&v3[OBJC_IVAR____TtC16MusicApplication21LibraryViewController_menuTableViewController] + OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_editingDelegate + 8) = &off_CF9038;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC16MusicApplication21LibraryViewController_recentlyAddedViewController;
  v5 = *&v3[OBJC_IVAR____TtC16MusicApplication21LibraryViewController_recentlyAddedViewController];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = &v5[qword_DF2C98];
  v8 = *&v5[qword_DF2C98];
  v9 = *&v5[qword_DF2C98 + 8];
  *v7 = sub_F5A2C;
  v7[1] = v6;
  v10 = v3;
  v11 = v5;

  sub_3FC30(v8, v9);

  v12 = *&v3[v4];
  sub_173CA8(1);

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v13 = sub_AB9260();

  [v10 setTitle:v13];

  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (!v15)
  {
    v16 = sub_AB9260();
    [v10 setRestorationIdentifier:v16];
  }

  v17 = v10;
  v18 = sub_AB9260();
  [v17 setPlayActivityFeatureName:v18];

  v19 = sub_4D3DD0();
  [v19 _setAutoScrollEnabled:0];

  return v17;
}

void sub_F4B74(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_4D3DD0();

    [v5 setScrollEnabled:a1 & 1];
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_F5090(1);
  }
}

void sub_F4C48()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for LibraryViewController();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = AccessibilityIdentifier.libraryContentView.unsafeMutableAddressor();
    v4 = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[3];
    sub_74390();

    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v4, v5, v8, v6, v7);

    v9 = sub_F501C();
    *&v9[OBJC_IVAR____TtC16MusicApplication13AccountButton_delegate + 8] = &off_CF9028;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

void sub_F4E8C(char a1, char a2)
{
  v5 = [v2 isEditing];
  v8.receiver = v2;
  v8.super_class = type metadata accessor for LibraryViewController();
  v6 = a1 & 1;
  objc_msgSendSuper2(&v8, "setEditing:animated:", v6, a2 & 1);
  if (v5 != v6)
  {
    if ((*(v2 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController_shouldSkipRecordingPageMetricsForEditingStateChange) & 1) == 0 && *(v2 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController_shouldRecordPageMetrics) == 1)
    {
      sub_F5668();
    }

    v7 = sub_F501C();
    sub_8CC40();

    sub_F5090(a2 & 1);
  }
}

id sub_F501C()
{
  v1 = OBJC_IVAR____TtC16MusicApplication21LibraryViewController____lazy_storage___accountButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController____lazy_storage___accountButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController____lazy_storage___accountButton);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for AccountButton()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_F5090(char a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v5 = swift_allocObject();
  *(v4 + 16) = v5;
  *(v5 + 16) = xmmword_AF82B0;
  v6 = *&v1[OBJC_IVAR____TtC16MusicApplication21LibraryViewController_menuTableViewController];
  *(v5 + 32) = v6;
  v7 = v6;
  v8 = [v1 traitCollection];
  if (([v1 isEditing] & 1) == 0)
  {
    v9 = *&v1[OBJC_IVAR____TtC16MusicApplication21LibraryViewController_recentlyAddedViewController];
    if ((*(v9 + qword_DF2CA0) & 1) != 0 || (v10 = [v1 traitCollection], v11 = UITraitCollection.isMediaPicker.getter(v10), v10, v11) || (static ApplicationCapabilities.shared.getter(v16), sub_70C54(v16), !ICMusicSubscriptionStatusCapabilities.hasVoiceActivatedCatalogPlaybackOnly.getter(v16[8])))
    {
      sub_F5274(v2, v4);
    }

    else
    {
      sub_F5274(v2, v4);
      swift_beginAccess();
      v12 = sub_469BE8(v9, *(v4 + 16));
      if ((v13 & 1) == 0)
      {
        v14 = v12;
        swift_beginAccess();
        v15 = sub_2E5F34(v14);
        swift_endAccess();
      }
    }
  }

  swift_beginAccess();
  sub_4D4068(*(v4 + 16), a1 & 1);
}

void sub_F5274(char *a1, uint64_t a2)
{
  v4 = [a1 navigationController];
  if (v4 && (v5 = v4, v8 = [v4 popoverPresentationController], v5, v8))
  {
  }

  else
  {
    v6 = *&a1[OBJC_IVAR____TtC16MusicApplication21LibraryViewController_recentlyAddedViewController];
    v6[qword_DF2C90] = 0;
    swift_beginAccess();
    v7 = v6;
    sub_AB9730();
    if (*(&dword_10 + (*(a2 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a2 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    swift_endAccess();
  }
}

void sub_F539C()
{
  v1 = v0;
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v2 = [v0 traitCollection];
  rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;

  if ((rawValue & 2) != 0)
  {

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v4 = sub_AB9260();
    [v1 setPlayActivityFeatureName:v4];
  }

  v5 = sub_AB9260();

  [v1 setTitle:v5];

  v6 = [v1 navigationItem];
  v7 = [v1 traitCollection];
  v8 = sub_2B51D8(v7);
  v10 = v9;

  sub_387430(v8, v10);
  v11 = [v1 navigationItem];
  v12 = sub_AB9260();

  [v11 setTitle:v12];

  v13 = sub_F501C();
  sub_8CC40();
}

void sub_F5668()
{
  type metadata accessor for MetricsEvent.Page(0);
  *&v1 = __chkstk_darwin().n128_u64[0];
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [v0 isEditing];
  v5 = *MetricsReportingController.shared.unsafeMutableAddressor();
  if (v4)
  {
    v6 = MetricsEvent.Page.libraryMenuEdit.unsafeMutableAddressor();
  }

  else
  {
    v6 = MetricsEvent.Page.libraryLanding.unsafeMutableAddressor();
  }

  sub_9D330(v6, v3);
  (*(&stru_68.reloff + (swift_isaMask & *v5)))(v3, 0, 0, 0, 0, 0);
  sub_9D394(v3);
}

void sub_F5768()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController____lazy_storage___dropIndicationView);
}

id sub_F57C8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LibraryViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_F5890()
{
  v1 = v0;
  if ([v0 isEditing] & 1) != 0 || (v2 = objc_msgSend(v0, "traitCollection"), rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue, v2, (rawValue & 2) != 0) || (v4 = objc_msgSend(v1, "traitCollection"), v5 = UITraitCollection.isMediaPicker.getter(v4), v4, v5) || (v6 = objc_msgSend(v1, "traitCollection"), v7 = UITraitCollection.mediaLibrary.getter(), v6, LOBYTE(v6) = objc_msgSend(v7, "isHomeSharingLibrary"), v7, (v6))
  {
    v9 = [v1 navigationItem];
    [v9 _setLargeTitleAccessoryView:0 alignToBaseline:0];
  }

  else
  {
    v8 = [v1 navigationItem];
    v9 = sub_F501C();
    [v8 _setLargeTitleAccessoryView:? alignToBaseline:?];
  }
}

uint64_t sub_F59F4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_F5A34()
{

  return swift_deallocObject();
}

void sub_F5A6C()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController_shouldRecordPageMetrics) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController____lazy_storage___accountButton) = 0;
  v1 = OBJC_IVAR____TtC16MusicApplication21LibraryViewController_menuTableViewController;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for LibraryMenuViewController()) init];
  v2 = OBJC_IVAR____TtC16MusicApplication21LibraryViewController_recentlyAddedViewController;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for RecentlyAddedViewController(0)) init];
  *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController____lazy_storage___dropIndicationView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController_isActiveDropSessionInsideView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController_shouldSkipRecordingPageMetricsForEditingStateChange) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_F5B54(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v12 = v34 - v11;
  v13 = &v5[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_name];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  v14 = &v5[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_descriptionText];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  *&v5[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_badgeView] = 0;
  v15 = &v5[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_textComponents];
  *v15 = sub_F6A78();
  v15[1] = v16;
  v15[2] = v17;
  v35.receiver = v5;
  v35.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  v19 = [v18 layer];
  [v19 setAllowsGroupOpacity:0];

  v20 = [v18 layer];
  [v20 setAllowsGroupBlending:0];

  v21 = UIView.Corner.large.unsafeMutableAddressor();
  v22 = sub_ABA680();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v12, v21, v22);
  (*(v23 + 56))(v12, 0, 1, v22);
  VerticalLockupCollectionViewCell.artworkCornerTreatment.setter(v12);
  v24 = &v18[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  type metadata accessor for UIEdgeInsets(0);
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v25 = &v18[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  v26 = *&v18[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets + 16];
  v34[2] = *&v18[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  v34[3] = v26;
  memset(v34, 0, 32);
  if (sub_AB38D0())
  {
    v27 = *(v24 + 1);
    *v25 = *v24;
    *(v25 + 1) = v27;
    sub_35D498();
    [v18 setNeedsLayout];
  }

  v28 = *&v18[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];

  v29 = *&v18[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_textComponents + 16];
  if (!(v29 >> 62))
  {
    v30 = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
    if (v30)
    {
      goto LABEL_5;
    }

LABEL_13:

    return;
  }

  v30 = sub_ABB060();
  if (!v30)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v30 < 1)
  {
    __break(1u);
  }

  else
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
  }
}

double sub_F5FC4(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_name];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_name];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_name + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_textComponents];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_F60D8(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_name] != result || *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_name + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_textComponents];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

double sub_F61D4(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
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

double sub_F6268(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_descriptionText];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_descriptionText];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_descriptionText + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_textComponents + 8];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_F6380(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_descriptionText] != result || *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_descriptionText + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_textComponents + 8];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_F6520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = sub_AB2E70();
  v5 = *(v25 - 8);
  __chkstk_darwin();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_AB2F50();
  v8 = *(v23 - 8);
  __chkstk_darwin();
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_AB2F20();
  v11 = *(v24 - 8);
  __chkstk_darwin();
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v23 - v14;
  v16 = swift_projectBox();
  v26 = a1;
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA750, &unk_AFD830);
  swift_allocObject();

  sub_AB3890();
  sub_AB3880();

  swift_beginAccess();
  v17 = v16;
  v18 = v23;
  (*(v8 + 16))(v10, v17, v23);
  v19 = v25;
  (*(v5 + 104))(v7, enum case for AttributedString.AttributeMergePolicy.keepNew(_:), v25);
  sub_AB2E40();
  (*(v5 + 8))(v7, v19);
  (*(v8 + 8))(v10, v18);
  sub_13C80(0, &unk_DECB20, NSAttributedString_ptr);
  v20 = v24;
  (*(v11 + 16))(v13, v15, v24);
  v21 = sub_ABA1C0();
  (*(v11 + 8))(v15, v20);
  return v21;
}

double sub_F6860()
{

  return result;
}

uint64_t type metadata accessor for FeaturedPlaylistCell(uint64_t a1)
{
  result = qword_DEF710;
  if (!qword_DEF710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_F6A48()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_badgeView);
  v2 = v1;
  return v1;
}

uint64_t sub_F6A78()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v1 = qword_E718D8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  *&v25[0] = v1;
  *(&v25[0] + 1) = v4;
  v25[1] = xmmword_AF7C20;
  v26 = 0;
  v27 = 0;
  v28 = v0;
  v29 = 2;
  v30 = xmmword_AF82F0;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x7473696C79616C70, 0xEC000000656D614ELL, v25);
  v6 = objc_opt_self();
  v18 = v3;
  v17 = v4;
  v16 = v0;
  sub_2F118(v25, v37);

  v7 = [v6 defaultParagraphStyle];
  [v7 mutableCopy];

  sub_ABAB50();
  sub_13C80(0, &unk_E05360, NSMutableParagraphStyle_ptr);
  swift_dynamicCast();
  v8 = v31;
  swift_unknownObjectRelease();
  [v8 setLineBreakMode:4];
  sub_AB2F50();
  v9 = swift_allocBox();
  sub_AB2F40();
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  v37[0] = sub_ABA5A0();
  sub_B4860();
  sub_AB2F70();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v10 = qword_E718C8;
  v37[0] = qword_E718C8;
  sub_B48B4();
  v11 = v10;
  sub_AB2F70();
  v37[0] = v8;
  sub_B4908();
  v12 = v8;
  sub_AB2F70();
  v19 = xmmword_AFD750;
  v20 = sub_F6EEC;
  v21 = v9;
  v22 = xmmword_AFA860;
  v23 = xmmword_AFB300;
  v24 = xmmword_AF7C40;
  swift_allocObject();
  v13 = TextStackView.Component.init(identifier:labelProperties:)(0xD000000000000013, 0x8000000000B50D00, &v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_AF7C50;
  *(v14 + 32) = v5;
  *(v14 + 40) = v13;

  sub_2F118(&v19, v37);

  v31 = xmmword_AFD750;
  v32 = sub_F6EEC;
  v33 = v9;
  v34 = xmmword_AFA860;
  v35 = xmmword_AFB300;
  v36 = xmmword_AF7C40;
  sub_2F174(&v31);
  v37[0] = v1;
  v37[1] = v4;
  v38 = xmmword_AF7C20;
  v39 = 0;
  v40 = 0;
  v41 = v0;
  v42 = 2;
  v43 = xmmword_AF82F0;
  sub_2F174(v37);

  return v5;
}

id sub_F6EF4()
{
  LOBYTE(v2) = 10;
  sub_AFE98();
  sub_36A48();
  NSUserDefaults.subscript.getter(&v3);
  if (v4)
  {
    sub_F7868();
    if (swift_dynamicCast())
    {
      v0 = [v2 BOOLValue];

      return v0;
    }
  }

  else
  {
    sub_12E1C(&v3, &unk_DE8E40, &unk_AF8050);
  }

  return 0;
}

void sub_F6FBC(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v3 = &v6 - v2;
  v4 = sub_AB31C0();
  (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
  LOBYTE(v6) = 1;
  sub_AFE98();
  sub_36A48();
  NSUserDefaults.subscript.getter(&v8);
  if (v9)
  {
    if (swift_dynamicCast())
    {
      v5 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v5 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v5)
      {
        sub_AB3180();
        sub_12E1C(a1, &unk_DF2AE0, &qword_AFC930);
        sub_F78B4(v3, a1);
      }
    }
  }

  else
  {
    sub_12E1C(&v8, &unk_DE8E40, &unk_AF8050);
  }
}

unint64_t sub_F7144(char a1)
{
  result = 0x6F4D6E6F69746F6DLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD00000000000002ELL;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      return result;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0xD00000000000002ALL;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0x72617453776F6873;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x6E6F6973726576;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_F73B8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_F7144(*a1);
  v5 = v4;
  if (v3 == sub_F7144(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_F7440()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_F7144(v1);
  sub_AB93F0();

  return sub_ABB610();
}

double sub_F74A4(uint64_t a1)
{
  sub_F7144(*v1);
  sub_AB93F0();

  return result;
}

Swift::Int sub_F74F8(uint64_t a1)
{
  v2 = *v1;
  sub_ABB5C0();
  sub_F7144(v2);
  sub_AB93F0();

  return sub_ABB610();
}

unint64_t sub_F7558@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_F7ACC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_F7588@<X0>(unint64_t *a1@<X8>)
{
  result = sub_F7144(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_F75B4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF720, &unk_AFD840);
  __chkstk_darwin();
  v3 = &v12[-v2];
  v12[8] = 6;
  sub_AFE98();
  sub_36A48();
  NSUserDefaults.subscript.getter(&v13);
  if (!v14)
  {
    v6 = &unk_DE8E40;
    v7 = &unk_AF8050;
    v8 = &v13;
LABEL_6:
    sub_12E1C(v8, v6, v7);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    sub_AB3850();
    v4 = sub_AB3870();
    v5 = *(v4 - 8);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      return (*(v5 + 32))(a1, v3, v4);
    }

    v6 = &qword_DEF720;
    v7 = &unk_AFD840;
    v8 = v3;
    goto LABEL_6;
  }

LABEL_7:
  v9 = enum case for MotionMode.on(_:);
  v10 = sub_AB3870();
  return (*(*(v10 - 8) + 104))(a1, v9, v10);
}

void sub_F7790()
{
  LOBYTE(v0) = 8;
  sub_AFE98();
  sub_36A48();
  NSUserDefaults.subscript.getter(&v1);
  if (v2)
  {
    sub_F7868();
    if (swift_dynamicCast())
    {
      [v0 floatValue];
    }
  }

  else
  {
    sub_12E1C(&v1, &unk_DE8E40, &unk_AF8050);
  }
}

unint64_t sub_F7868()
{
  result = qword_DF1300;
  if (!qword_DF1300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DF1300);
  }

  return result;
}

uint64_t sub_F78B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s4KeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s4KeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_F7A78()
{
  result = qword_DEF728;
  if (!qword_DEF728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEF728);
  }

  return result;
}

unint64_t sub_F7ACC(uint64_t a1, uint64_t a2)
{
  v2 = sub_ABB420();

  if (v2 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v2;
  }
}

double sub_F7B20@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_AB6240();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF9B8, &qword_AFDB50);
  __chkstk_darwin();
  v9 = &v13 - v8;
  sub_15F84(v2, &v13 - v8, &qword_DEF9B8, &qword_AFDB50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_36B0C(v9, a1, &qword_DEF9E0, &qword_AFDC10);
  }

  else
  {
    v11 = sub_AB9F40();
    v12 = sub_AB6A40();
    sub_AB4A90(v11, &dword_0, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_AB6230();
    swift_getAtKeyPath();
    (*(v5 + 8))(v7, v4);
  }

  return result;
}

void sub_F7D00()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    if ([v1 horizontalSizeClass] == &dword_0 + 2)
    {
      v2 = *(v0 + 104);
      if (v2)
      {
        v3 = v2;
        [v3 bounds];
        CGRectGetWidth(v13);
        v4 = [objc_opt_self() mainScreen];
        [v4 bounds];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;

        v14.origin.x = v6;
        v14.origin.y = v8;
        v14.size.width = v10;
        v14.size.height = v12;
        CGRectGetWidth(v14);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_F7E28()
{
  result = *(v0 + 96);
  if (result)
  {
    if ([result horizontalSizeClass] == &dword_0 + 2)
    {
      v2 = *(v0 + 104);
      if (v2 && (v3 = v2, [v3 bounds], Width = CGRectGetWidth(v15), v5 = objc_msgSend(objc_opt_self(), "mainScreen"), objc_msgSend(v5, "bounds"), v7 = v6, v9 = v8, v11 = v10, v13 = v12, v5, v16.origin.x = v7, v16.origin.y = v9, v16.size.width = v11, v16.size.height = v13, v14 = CGRectGetWidth(v16), v3, Width <= v14 * 0.5))
      {
        return &dword_0 + 2;
      }

      else
      {
        return &dword_0 + 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_F7F28()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    if ([v1 horizontalSizeClass] == &dword_0 + 2)
    {
      v2 = *(v0 + 104);
      if (v2)
      {
        v3 = v2;
        [v3 bounds];
        CGRectGetWidth(v13);
        v4 = [objc_opt_self() mainScreen];
        [v4 bounds];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;

        v14.origin.x = v6;
        v14.origin.y = v8;
        v14.size.width = v10;
        v14.size.height = v12;
        CGRectGetWidth(v14);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_F8024()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    if ([v1 horizontalSizeClass] == &dword_0 + 2)
    {
      v2 = *(v0 + 104);
      if (v2)
      {
        v3 = v2;
        [v3 bounds];
        CGRectGetWidth(v13);
        v4 = [objc_opt_self() mainScreen];
        [v4 bounds];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;

        v14.origin.x = v6;
        v14.origin.y = v8;
        v14.size.width = v10;
        v14.size.height = v12;
        CGRectGetWidth(v14);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_F8120()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    if ([v1 horizontalSizeClass] == &dword_0 + 2)
    {
      v2 = *(v0 + 104);
      if (v2)
      {
        v3 = v2;
        [v3 bounds];
        CGRectGetWidth(v13);
        v4 = [objc_opt_self() mainScreen];
        [v4 bounds];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;

        v14.origin.x = v6;
        v14.origin.y = v8;
        v14.size.width = v10;
        v14.size.height = v12;
        CGRectGetWidth(v14);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_F8220()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    if ([v1 horizontalSizeClass] == &dword_0 + 2)
    {
      v2 = *(v0 + 104);
      if (v2)
      {
        v3 = v2;
        [v3 bounds];
        CGRectGetWidth(v13);
        v4 = [objc_opt_self() mainScreen];
        [v4 bounds];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;

        v14.origin.x = v6;
        v14.origin.y = v8;
        v14.size.width = v10;
        v14.size.height = v12;
        CGRectGetWidth(v14);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_F8304()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    if ([v1 horizontalSizeClass] == &dword_0 + 2)
    {
      v2 = *(v0 + 104);
      if (v2)
      {
        v3 = v2;
        [v3 bounds];
        CGRectGetWidth(v13);
        v4 = [objc_opt_self() mainScreen];
        [v4 bounds];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;

        v14.origin.x = v6;
        v14.origin.y = v8;
        v14.size.width = v10;
        v14.size.height = v12;
        CGRectGetWidth(v14);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_F8414()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    if ([v1 horizontalSizeClass] == &dword_0 + 2)
    {
      v2 = *(v0 + 104);
      if (v2)
      {
        v3 = v2;
        [v3 bounds];
        CGRectGetWidth(v13);
        v4 = [objc_opt_self() mainScreen];
        [v4 bounds];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;

        v14.origin.x = v6;
        v14.origin.y = v8;
        v14.size.width = v10;
        v14.size.height = v12;
        CGRectGetWidth(v14);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_F84F8()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    if ([v1 horizontalSizeClass] == &dword_0 + 2)
    {
      v2 = *(v0 + 104);
      if (v2)
      {
        v3 = v2;
        [v3 bounds];
        CGRectGetWidth(v13);
        v4 = [objc_opt_self() mainScreen];
        [v4 bounds];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;

        v14.origin.x = v6;
        v14.origin.y = v8;
        v14.size.width = v10;
        v14.size.height = v12;
        CGRectGetWidth(v14);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_F85E0@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB840, &qword_AF9B10);
  __chkstk_darwin();
  v3 = v25 - v2;
  v4 = sub_AB7530();
  v5 = sub_AB74E0();
  KeyPath = swift_getKeyPath();
  type metadata accessor for CloseButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5F8, &qword_AF9930);
  sub_AB5900();
  sub_AB6BD0();
  v7 = sub_AB6BC0();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = sub_AB6C20();
  sub_12E1C(v3, &qword_DEB840, &qword_AF9B10);
  v9 = swift_getKeyPath();
  sub_AB5900();
  v10 = sub_AB6AA0();
  sub_AB5690();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  LOBYTE(v25[0]) = 0;
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFEB8, &unk_AFE360) + 36);
  sub_AB79D0();
  v20 = sub_AB6AA0();
  *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFEC8, &qword_AFE380) + 36)) = v20;
  *a1 = v4;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v5;
  *(a1 + 24) = v9;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + 48) = v12;
  *(a1 + 56) = v14;
  *(a1 + 64) = v16;
  *(a1 + 72) = v18;
  *(a1 + 80) = 0;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFEA8, &qword_AFE358) + 36)) = 256;
  sub_AB7A30();
  sub_AB5E90();
  v21 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFE90, &qword_AFE350) + 36);
  v22 = v25[5];
  *(v21 + 64) = v25[4];
  *(v21 + 80) = v22;
  *(v21 + 96) = v25[6];
  v23 = v25[1];
  *v21 = v25[0];
  *(v21 + 16) = v23;
  result = v25[3];
  *(v21 + 32) = v25[2];
  *(v21 + 48) = result;
  return result;
}

uint64_t sub_F88C0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFE90, &qword_AFE350);
  sub_105EA4();
  return sub_AB7690();
}

uint64_t sub_F894C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  *&v34 = a1;
  *(&v34 + 1) = a2;
  sub_36A48();

  v7 = sub_AB6F20();
  v24 = v8;
  v25 = v7;
  v10 = v9;
  v12 = v11;
  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  v15 = v12 & 1;
  LOBYTE(v34) = v12 & 1;
  v16 = swift_getKeyPath();
  sub_AB7A30();
  sub_AB5E90();
  *(&v33[6] + 7) = *&v33[21];
  *(&v33[8] + 7) = *&v33[23];
  *(&v33[10] + 7) = *&v33[25];
  *(&v33[12] + 7) = *&v33[27];
  *(v33 + 7) = *&v33[15];
  *(&v33[2] + 7) = *&v33[17];
  *(&v33[4] + 7) = *&v33[19];
  if (!a3)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(&v34);

  v30 = v38;
  v31 = v39;
  v32 = v40;
  v26 = v34;
  v27 = v35;
  v28 = v36;
  v29 = v37;
  if (!*(&v35 + 1))
  {
    __break(1u);
LABEL_8:
    _s16MusicApplication11EnvironmentCMa_0(0);
    sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);
    result = sub_AB5F00();
    __break(1u);
    return result;
  }

  v34 = v26;
  v35 = v27;
  v38 = v30;
  v39 = v31;
  v40 = v32;
  v36 = v28;
  v37 = v29;
  if (sub_F7E28() == 1)
  {
    v17 = sub_AB6B70();
  }

  else
  {
    v17 = sub_AB6C90();
  }

  v18 = v17;
  sub_12E1C(&v26, &unk_DEF878, &qword_AFD9A8);
  result = swift_getKeyPath();
  v20 = *&v33[6];
  *(a5 + 137) = *&v33[8];
  v21 = *&v33[12];
  *(a5 + 153) = *&v33[10];
  *(a5 + 169) = v21;
  *(a5 + 73) = *v33;
  v22 = *&v33[4];
  *(a5 + 89) = *&v33[2];
  *(a5 + 105) = v22;
  *a5 = v25;
  *(a5 + 8) = v10;
  *(a5 + 16) = v15;
  *(a5 + 24) = v24;
  *(a5 + 32) = KeyPath;
  *(a5 + 40) = 1;
  *(a5 + 48) = v14;
  *(a5 + 56) = 0x3FEB333333333333;
  *(a5 + 64) = v16;
  *(a5 + 72) = 1;
  v23 = *(&v33[13] + 7);
  *(a5 + 121) = v20;
  *(a5 + 184) = v23;
  *(a5 + 192) = result;
  *(a5 + 200) = v18;
  return result;
}

__n128 sub_F8C2C@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v8);

  v3 = v8[0];
  result = v8[1];
  v5 = v8[5];
  v4 = v8[6];
  v6 = v8[3];
  v7 = v8[2];
  *(a1 + 64) = v8[4];
  *(a1 + 80) = v5;
  *(a1 + 96) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_F8CDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  v62 = sub_AB6EF0();
  v60 = *(v62 - 8);
  __chkstk_darwin();
  v59 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB6240();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin();
  v45 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB63C0();
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin();
  v54 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFED8, &qword_AFE3E8);
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin();
  v51 = &v45 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFEE0, &qword_AFE3F0);
  __chkstk_darwin();
  v58 = &v45 - v10;
  v11 = *v1;
  v12 = v1[1];
  *&v74 = v11;
  *(&v74 + 1) = v12;
  sub_36A48();

  v13 = sub_AB6F20();
  v15 = v14;
  v17 = v16;
  sub_AB7430();
  v49 = sub_AB6E10();
  v50 = v18;
  v20 = v19;
  v22 = v21;

  sub_36B74(v13, v15, v17 & 1);

  if (!v2[4])
  {
    goto LABEL_10;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(&v74);

  v71 = v78;
  v72 = v79;
  v73 = v80;
  v67 = v74;
  v68 = v75;
  v69 = v76;
  v70 = v77;
  if (!*(&v75 + 1))
  {
    __break(1u);
LABEL_10:
    _s16MusicApplication11EnvironmentCMa_0(0);
    sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);
    result = sub_AB5F00();
    __break(1u);
    return result;
  }

  v23 = v22;
  v74 = v67;
  *&v75 = v68;
  v78 = v71;
  v79 = v72;
  v80 = v73;
  v76 = v69;
  v77 = v70;
  v24 = sub_F7E28();
  v48 = v2;
  v25 = v20;
  if (v24 == 1)
  {
    sub_AB6B70();
  }

  else
  {
    sub_AB6C90();
  }

  sub_12E1C(&v67, &unk_DEF878, &qword_AFD9A8);
  v26 = v49;
  v27 = sub_AB6E80();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_36B74(v26, v25, v23 & 1);

  v63 = v27;
  v64 = v29;
  v34 = v31 & 1;
  v65 = v31 & 1;
  v66 = v33;
  v35 = v48;
  v36 = v51;
  sub_AB7010();
  sub_36B74(v27, v29, v34);

  v37 = v54;
  sub_AB63B0();
  v63 = &type metadata for Text;
  v64 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v38 = v58;
  v39 = v53;
  sub_AB7040();
  (*(v55 + 8))(v37, v56);
  (*(v52 + 8))(v36, v39);
  LOBYTE(v64) = *(v35 + 56);
  v63 = v35[6];
  if (v64 != 1)
  {

    v40 = sub_AB9F40();
    v41 = sub_AB6A40();
    sub_AB4A90(v40, &dword_0, v41, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v42 = v45;
    sub_AB6230();
    swift_getAtKeyPath();
    (*(v46 + 8))(v42, v47);
    sub_12E1C(&v63, &qword_DEFEE8, &qword_AFE3F8);
  }

  v43 = v59;
  sub_AB6EE0();
  sub_1060B0();
  sub_AB73C0();
  (*(v60 + 8))(v43, v62);
  return sub_12E1C(v38, &qword_DEFEE0, &qword_AFE3F0);
}

uint64_t sub_F93D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v9 = sub_AB63C0();
  v51 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFF00, &qword_AFE408);
  __chkstk_darwin();
  v14 = &v41[-v13];
  v15 = sub_AB7A30();
  v49 = v16;
  v50 = v15;
  sub_F9AF0(a1, a2, a3, &v101);
  if (!a3)
  {
    goto LABEL_11;
  }

  v47 = *(&v101 + 1);
  v48 = v101;
  v17 = v102;
  v46 = *(&v102 + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_AB5510(&v101);

  v81 = v105;
  v82 = v106;
  v83 = v107;
  v77 = v101;
  v78 = v102;
  v79 = v103;
  v80 = v104;
  if (!*(&v102 + 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  v101 = v77;
  *&v102 = v78;
  v105 = v81;
  v106 = v82;
  v107 = v83;
  v103 = v79;
  v104 = v80;
  sub_F8304();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_12E1C(&v77, &unk_DEF878, &qword_AFD9A8);
  v26 = sub_AB6AA0();
  v45 = v17;
  v85 = v17;
  v84 = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v94);

  v74 = v98;
  v75 = v99;
  v76 = v100;
  v70 = v94;
  v71 = v95;
  v72 = v96;
  v73 = v97;
  if (!*(&v95 + 1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v42 = v26;
  v43 = a5;
  v44 = v9;
  v94 = v70;
  *&v95 = v71;
  v98 = v74;
  v99 = v75;
  v100 = v76;
  v97 = v73;
  v96 = v72;
  sub_F8220();
  sub_12E1C(&v70, &unk_DEF878, &qword_AFD9A8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v87);

  v67 = v91;
  v68 = v92;
  v69 = v93;
  v63 = v87;
  v64 = v88;
  v65 = v89;
  v66 = v90;
  if (*(&v88 + 1))
  {
    v87 = v63;
    *&v88 = v64;
    v91 = v67;
    v92 = v68;
    v93 = v69;
    v89 = v65;
    v90 = v66;
    sub_F8120();
    sub_12E1C(&v63, &unk_DEF878, &qword_AFD9A8);
    sub_AB7A30();
    sub_AB5E90();
    *(&v86[6] + 7) = *&v86[21];
    *(&v86[8] + 7) = *&v86[23];
    *(&v86[10] + 7) = *&v86[25];
    *(&v86[12] + 7) = *&v86[27];
    *(v86 + 7) = *&v86[15];
    *(&v86[2] + 7) = *&v86[17];
    *(&v86[4] + 7) = *&v86[19];
    v27 = sub_AB7430();
    v28 = sub_AB6AA0();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v52);

    v60 = v56;
    v61 = v57;
    v62 = v58;
    v59[0] = v52;
    v59[1] = v53;
    v59[2] = v54;
    v59[3] = v55;
    if (*(&v53 + 1))
    {
      v29 = v60;
      sub_12E1C(v59, &unk_DEF878, &qword_AFD9A8);
      v30 = &v14[*(v12 + 36)];
      v31 = *(sub_AB5E60() + 20);
      v32 = enum case for RoundedCornerStyle.continuous(_:);
      v33 = sub_AB63A0();
      (*(*(v33 - 8) + 104))(&v30[v31], v32, v33);
      *v30 = v29;
      *(v30 + 1) = v29;
      *&v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB20, &qword_AFE410) + 36)] = 256;
      v34 = v49;
      *v14 = v50;
      *(v14 + 1) = v34;
      v35 = v47;
      *(v14 + 2) = v48;
      *(v14 + 3) = v35;
      v14[32] = v45;
      *(v14 + 5) = v46;
      v14[48] = v42;
      *(v14 + 7) = v19;
      *(v14 + 8) = v21;
      *(v14 + 9) = v23;
      *(v14 + 10) = v25;
      v14[88] = 0;
      v36 = *&v86[10];
      *(v14 + 153) = *&v86[8];
      *(v14 + 169) = v36;
      *(v14 + 185) = *&v86[12];
      v37 = *(&v86[13] + 7);
      v38 = *&v86[2];
      *(v14 + 89) = *v86;
      *(v14 + 105) = v38;
      v39 = *&v86[6];
      *(v14 + 121) = *&v86[4];
      *(v14 + 137) = v39;
      *(v14 + 25) = v37;
      *(v14 + 26) = v27;
      v14[216] = v28;
      sub_AB63B0();
      sub_10619C();
      sub_AB7040();
      (*(v51 + 8))(v11, v44);
      return sub_12E1C(v14, &qword_DEFF00, &qword_AFE408);
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  _s16MusicApplication11EnvironmentCMa_0(0);
  sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);
  result = sub_AB5F00();
  __break(1u);
  return result;
}

void sub_F9AF0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  *&v31 = a1;
  *(&v31 + 1) = a2;
  sub_36A48();

  v7 = sub_AB6F20();
  v9 = v8;
  v11 = v10;
  sub_AB74B0();
  v12 = sub_AB6E10();
  v14 = v13;
  v16 = v15;

  sub_36B74(v7, v9, v11 & 1);

  if (!a3)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(&v31);

  v28 = v35;
  v29 = v36;
  v30 = v37;
  v24 = v31;
  v25 = v32;
  v26 = v33;
  v27 = v34;
  if (!*(&v32 + 1))
  {
    __break(1u);
LABEL_8:
    _s16MusicApplication11EnvironmentCMa_0(0);
    sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);
    sub_AB5F00();
    __break(1u);
    return;
  }

  v31 = v24;
  v32 = v25;
  v35 = v28;
  v36 = v29;
  v37 = v30;
  v33 = v26;
  v34 = v27;
  if (sub_F7E28() == 1)
  {
    sub_AB6B70();
  }

  else
  {
    sub_AB6CB0();
  }

  sub_12E1C(&v24, &unk_DEF878, &qword_AFD9A8);
  sub_AB6C10();
  sub_AB6C60();

  v17 = sub_AB6E80();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_36B74(v12, v14, v16 & 1);

  *a5 = v17;
  *(a5 + 8) = v19;
  *(a5 + 16) = v21 & 1;
  *(a5 + 24) = v23;
}

uint64_t sub_F9D7C@<X0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  *a2 = sub_AB7A30();
  a2[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFEF8, &qword_AFE400);
  return sub_F93D0(v4, v5, v6, a2 + *(v8 + 44));
}

__n128 sub_F9DEC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v19 = a1;
  *(&v19 + 1) = a2;
  sub_36A48();

  v17 = sub_AB6F20();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v12 = v7 & 1;
  LOBYTE(v19) = v7 & 1;
  v13 = swift_getKeyPath();
  sub_AB7A30();
  sub_AB5E90();
  *&v18[55] = v22;
  *&v18[71] = v23;
  *&v18[87] = v24;
  *&v18[103] = v25;
  *&v18[7] = v19;
  *&v18[23] = v20;
  *&v18[39] = v21;
  sub_AB6C40();
  sub_AB6BD0();
  v14 = sub_AB6C60();

  v15 = swift_getKeyPath();
  *(a3 + 137) = *&v18[64];
  *(a3 + 153) = *&v18[80];
  *(a3 + 169) = *&v18[96];
  *(a3 + 73) = *v18;
  *(a3 + 89) = *&v18[16];
  result = *&v18[32];
  *(a3 + 105) = *&v18[32];
  *a3 = v17;
  *(a3 + 8) = v5;
  *(a3 + 16) = v12;
  *(a3 + 24) = v9;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 1;
  *(a3 + 48) = v11;
  *(a3 + 56) = 0x3FEB333333333333;
  *(a3 + 64) = v13;
  *(a3 + 72) = 1;
  *(a3 + 121) = *&v18[48];
  *(a3 + 184) = *(&v25 + 1);
  *(a3 + 192) = v15;
  *(a3 + 200) = v14;
  return result;
}

uint64_t sub_F9FB4()
{

  sub_17654(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t SymbolButton.Update.completion.getter()
{
  v1 = *(v0 + 32);
  sub_307CC(v1, *(v0 + 40));
  return v1;
}

id sub_FA038()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFF58, &qword_AFE4C8);
  sub_AB68A0();
  v5 = sub_104254(v1, v2, v3, v4);

  return v5;
}

void sub_FA0C8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFF58, &qword_AFE4C8);
  sub_AB68A0();
  sub_104254(v1, v2, v3, v4);
}

double sub_FA148(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  [*(v2 + 112) clearArtworkCatalogs];
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
  *(v2 + 200) = 0;
  *(v2 + 208) = 0;

  return result;
}

uint64_t sub_FA1A0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    type metadata accessor for MusicArtwork.Coordinator();
    v4 = swift_allocObject();
    v4[4] = 0;
    v4[5] = 0;
    v4[2] = v2;
    v4[3] = *(v2 + OBJC_IVAR____TtC16MusicApplicationP33_B90BA6543340C30087EC01D228CE8DDA11Environment_artworkComponent);
    *a1 = v4;
  }

  else
  {
    _s16MusicApplication11EnvironmentCMa_0(0);
    sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);
    result = sub_AB5F00();
    __break(1u);
  }

  return result;
}

__n128 sub_FA2AC(__n128 *a1)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t sub_FA2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_106504();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_FA31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_106504();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_FA380(uint64_t a1)
{
  sub_106504();
  sub_AB65B0();
  __break(1u);
}

uint64_t sub_FA3A8(uint64_t a1)
{
  __chkstk_darwin();
  v2 = v1;
  v86 = v3;
  v79 = type metadata accessor for CloseButton(0);
  __chkstk_darwin();
  v80 = (&v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFCD0, &qword_AFDE98);
  __chkstk_darwin();
  v78 = &v75 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFCD8, &qword_AFDEA0);
  v83 = *(v6 - 8);
  v84 = v6;
  __chkstk_darwin();
  v76 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v75 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFCE0, &qword_AFDEA8);
  __chkstk_darwin();
  v85 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v82 = &v75 - v10;
  v96 = *(type metadata accessor for JSSearchLandingUpsellRegularContentView(0) - 8);
  __chkstk_darwin();
  *&v101 = v11;
  v98 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB5790();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v75 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFD38, &qword_AFDF30);
  v87 = *(v18 - 8);
  v88 = v18;
  __chkstk_darwin();
  v102 = &v75 - v19;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFD40, &qword_AFDF38);
  __chkstk_darwin();
  v90 = &v75 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFD48, &qword_AFDF40);
  v94 = *(v21 - 8);
  v95 = v21;
  __chkstk_darwin();
  v93 = &v75 - v22;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFD50, &qword_AFDF48);
  __chkstk_darwin();
  v81 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = &v75 - v24;
  __chkstk_darwin();
  v97 = &v75 - v25;
  v100 = sub_AB62E0();
  v143 = 0;
  sub_FB408(v2);
  memcpy(v152, v133, sizeof(v152));
  memcpy(v153, v133, 0x268uLL);
  sub_15F84(v152, v132, &qword_DEFD58, &qword_AFDF50);
  sub_12E1C(v153, &qword_DEFD58, &qword_AFDF50);
  memcpy(&v142[7], v152, 0x268uLL);
  *&v103 = v2;
  v26 = *(v2 + 16);
  if (!v26)
  {
    goto LABEL_18;
  }

  v99 = v143;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(v133);

  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(v133);

  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(v133);

  v139 = v133[4];
  v140 = v133[5];
  v141 = v133[6];
  v136 = v133[1];
  v135 = v133[0];
  v138 = v133[3];
  v137 = v133[2];
  if (!*(&v133[1] + 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v144 = v135;
  v145 = v136;
  v146 = *(&v133[1] + 1);
  v149 = v139;
  v150 = v140;
  v151 = v141;
  v148 = v138;
  v147 = v137;
  sub_F84F8();
  sub_12E1C(&v135, &unk_DEF878, &qword_AFD9A8);
  sub_AB7A30();
  sub_AB5970();
  memcpy(v134, v142, sizeof(v134));
  v27 = sub_FCCCC(type metadata accessor for JSSearchLandingUpsellRegularContentView, v17);
  (*(v13 + 104))(v15, enum case for ColorScheme.light(_:), v12, v27);
  v28 = sub_AB5780();
  v29 = *(v13 + 8);
  v29(v15, v12);
  v29(v17, v12);
  v30 = objc_opt_self();
  v31 = &selRef_systemBackgroundColor;
  if ((v28 & 1) == 0)
  {
    v31 = &selRef_secondarySystemBackgroundColor;
  }

  v32 = [v30 *v31];
  v33 = sub_AB7510();
  v34 = sub_AB6AA0();
  v132[0] = v100;
  LOBYTE(v132[1]) = v99;
  memcpy(&v132[1] + 1, v134, 0x26FuLL);
  v132[40] = v133[44];
  v132[41] = v133[45];
  v132[42] = v133[46];
  *&v132[43] = v33;
  BYTE8(v132[43]) = v34;
  v35 = Corner.extraLarge.unsafeMutableAddressor();
  v36 = *v35;
  v37 = v35[1];
  v38 = *(v35 + 16);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFD60, &qword_AFDF58);
  v40 = sub_105484();
  View.corner(_:)(v36, v37, v38, v39, v40);
  memcpy(v133, v132, 0x2B9uLL);
  sub_12E1C(v133, &qword_DEFD60, &qword_AFDF58);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(&v125);

  v132[4] = v129;
  v132[5] = v130;
  v132[6] = v131;
  v132[0] = v125;
  v132[1] = v126;
  v132[2] = v127;
  v132[3] = v128;
  v41 = *(&v126 + 1);
  if (!*(&v126 + 1))
  {
    goto LABEL_14;
  }

  sub_12E1C(v132, &unk_DEF878, &qword_AFD9A8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(&v118);

  v125 = v118;
  v126 = v119;
  v129 = v122;
  v130 = v123;
  v131 = v124;
  v127 = v120;
  v128 = v121;
  v42 = v98;
  if (!*(&v119 + 1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v43 = *(&v125 + 1);
  sub_12E1C(&v125, &unk_DEF878, &qword_AFD9A8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(&v111);

  v122 = v115;
  v123 = v116;
  v124 = v117;
  v118 = v111;
  v119 = v112;
  v120 = v113;
  v121 = v114;
  v44 = v103;
  if (*(&v112 + 1))
  {
    v45 = v119;
    sub_12E1C(&v118, &unk_DEF878, &qword_AFD9A8);
    v46 = v90;
    (*(v87 + 32))(v90, v102, v88);
    v47 = (v46 + *(v91 + 36));
    *v47 = v41;
    v47[1] = v43;
    v47[2] = 0;
    v47[3] = v45;
    sub_1040E4(v44, v42, type metadata accessor for JSSearchLandingUpsellRegularContentView);
    v48 = (*(v96 + 80) + 16) & ~*(v96 + 80);
    v49 = swift_allocObject();
    sub_104B8C(v42, v49 + v48, type metadata accessor for JSSearchLandingUpsellRegularContentView);
    sub_105638();
    v50 = v93;
    sub_AB7010();
    sub_12E1C(v46, &qword_DEFD40, &qword_AFDF38);

    v51 = _s16MusicApplication11EnvironmentCMa_0(0);
    sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);

    v102 = v51;
    v52 = sub_AB5490();
    v53 = v89;
    (*(v94 + 32))(v89, v50, v95);
    v54 = &v53[*(v92 + 36)];
    *v54 = v52;
    v54[1] = v26;
    v55 = v53;
    v56 = v97;
    sub_105700(v55, v97);
    if ((JSSearchLandingUpsell.shouldDisplayCloseButton.getter() & 1) == 0)
    {
      v69 = v82;
      (*(v83 + 56))(v82, 1, 1, v84);
      goto LABEL_12;
    }

    sub_1040E4(v44, v42, type metadata accessor for JSSearchLandingUpsellRegularContentView);
    v57 = swift_allocObject();
    sub_104B8C(v42, v57 + v48, type metadata accessor for JSSearchLandingUpsellRegularContentView);
    *&v111 = 0x4008000000000000;
    sub_8150C();
    v58 = v80;
    sub_AB58F0();
    *&v111 = 0x4022000000000000;
    sub_AB58F0();
    *v58 = sub_1057E0;
    v58[1] = v57;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510(&v104);

    v115 = v108;
    v116 = v109;
    v117 = v110;
    v111 = v104;
    v112 = v105;
    v113 = v106;
    v114 = v107;
    if (*(&v105 + 1))
    {
      v103 = v113;
      v101 = v114;
      sub_12E1C(&v111, &unk_DEF878, &qword_AFD9A8);
      v59 = sub_AB6AA0();
      v60 = v78;
      sub_104B8C(v58, v78, type metadata accessor for CloseButton);
      v61 = v60 + *(v77 + 36);
      *v61 = v59;
      *(v61 + 24) = v101;
      *(v61 + 8) = v103;
      *(v61 + 40) = 0;

      v62 = sub_AB5490();
      v63 = v76;
      sub_36B0C(v60, v76, &qword_DEFCD0, &qword_AFDE98);
      v64 = v84;
      v65 = (v63 + *(v84 + 36));
      *v65 = v62;
      v65[1] = v26;
      v66 = v63;
      v67 = v75;
      sub_36B0C(v66, v75, &qword_DEFCD8, &qword_AFDEA0);
      v68 = v67;
      v69 = v82;
      sub_36B0C(v68, v82, &qword_DEFCD8, &qword_AFDEA0);
      (*(v83 + 56))(v69, 0, 1, v64);
LABEL_12:
      v71 = v85;
      v70 = v86;
      v72 = v81;
      sub_105770(v56, v81);
      sub_15F84(v69, v71, &qword_DEFCE0, &qword_AFDEA8);
      sub_105770(v72, v70);
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFD98, &qword_AFDF70);
      sub_15F84(v71, v70 + *(v73 + 48), &qword_DEFCE0, &qword_AFDEA8);
      sub_12E1C(v69, &qword_DEFCE0, &qword_AFDEA8);
      sub_12E1C(v56, &qword_DEFD50, &qword_AFDF48);
      sub_12E1C(v71, &qword_DEFCE0, &qword_AFDEA8);
      return sub_12E1C(v72, &qword_DEFD50, &qword_AFDF48);
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  _s16MusicApplication11EnvironmentCMa_0(0);
  sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);
  result = sub_AB5F00();
  __break(1u);
  return result;
}

uint64_t sub_FB408(uint64_t a1)
{
  __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = JSSearchLandingUpsell.wideArtwork.getter();
  v6 = JSSearchLandingUpsell.wideVideoArtwork.getter();
  v7 = *(v2 + 16);
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v6;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(__src);

  v9 = *__src;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(__src);

  v116[4] = *&__src[64];
  v117 = *&__src[80];
  v118 = *&__src[96];
  v116[0] = *__src;
  v116[1] = *&__src[16];
  v116[2] = *&__src[32];
  v116[3] = *&__src[48];
  if (!*&__src[24])
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = *(&v117 + 1);
  sub_12E1C(v116, &unk_DEF878, &qword_AFD9A8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(__src);

  v11 = *__src;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(__src);

  v110 = *&__src[16];
  v113 = *&__src[64];
  v114 = *&__src[80];
  v115 = *&__src[96];
  v109 = *__src;
  v111 = *&__src[32];
  v112 = *&__src[48];
  if (!*&__src[24])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v154 = v109;
  v155 = v110;
  v158 = v113;
  v159 = v114;
  v160 = v115;
  v156 = v111;
  v157 = v112;
  sub_F84F8();
  v13 = v12;
  sub_12E1C(&v109, &unk_DEF878, &qword_AFD9A8);
  _s16MusicApplication11EnvironmentCMa_0(0);
  sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);
  v49 = sub_AB5F20();
  v47 = v14;

  v48 = sub_AB5490();
  v46 = sub_AB6440();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(__src);

  v103 = *&__src[16];
  v105 = *&__src[48];
  v106 = *&__src[64];
  v107 = *&__src[80];
  v108 = *&__src[96];
  v102 = *__src;
  v104 = *&__src[32];
  if (!*&__src[24])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v147 = v102;
  v148 = v103;
  v151 = v106;
  v152 = v107;
  v153 = v108;
  v149 = v104;
  v150 = v105;
  sub_F7F28();
  v16 = v15;
  sub_12E1C(&v102, &unk_DEF878, &qword_AFD9A8);
  v99 = 0;
  sub_FC288(v2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v90, __src, sizeof(v90));
  sub_15F84(__dst, v56, &qword_DEFDA0, &qword_AFDF78);
  sub_12E1C(v90, &qword_DEFDA0, &qword_AFDF78);
  memcpy(&v98[7], __dst, 0x170uLL);
  v17 = v99;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(__src);

  v95 = *&__src[64];
  v96 = *&__src[80];
  v97 = *&__src[96];
  v91 = *__src;
  v92 = *&__src[16];
  v93 = *&__src[32];
  v94 = *&__src[48];
  if (!*&__src[24])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v140 = v91;
  v141 = v92;
  v144 = v95;
  v145 = v96;
  v146 = v97;
  v142 = v93;
  v143 = v94;
  sub_F7D00();
  v19 = v18;
  v21 = v20;
  v44 = v23;
  v45 = v22;
  sub_12E1C(&v91, &unk_DEF878, &qword_AFD9A8);
  v43 = sub_AB6AA0();
  memcpy(v87, v98, sizeof(v87));
  v100 = 0;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(__src);

  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(__src);

  v88[4] = *&__src[64];
  v88[5] = *&__src[80];
  v88[6] = *&__src[96];
  v88[0] = *__src;
  v88[1] = *&__src[16];
  v88[2] = *&__src[32];
  v88[3] = *&__src[48];
  if (!*&__src[24])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v39 = v21;
  v40 = v19;
  v41 = v16;
  v42 = v13;
  sub_12E1C(v88, &unk_DEF878, &qword_AFD9A8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(__src);

  v24 = *__src;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(__src);

  v80 = *&__src[16];
  v82 = *&__src[48];
  v83 = *&__src[64];
  v84 = *&__src[80];
  v85 = *&__src[96];
  v79 = *__src;
  v81 = *&__src[32];
  if (!*&__src[24])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25 = v10;
  v26 = v9;
  v38 = v8;
  v133 = v79;
  v134 = v80;
  v137 = v83;
  v138 = v84;
  v139 = v85;
  v135 = v81;
  v136 = v82;
  sub_F84F8();
  v28 = v27;
  sub_12E1C(&v79, &unk_DEF878, &qword_AFD9A8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(__src);

  v29 = *__src;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(__src);

  v73 = *&__src[16];
  v75 = *&__src[48];
  v76 = *&__src[64];
  v77 = *&__src[80];
  v78 = *&__src[96];
  v72 = *__src;
  v74 = *&__src[32];
  if (!*&__src[24])
  {
LABEL_18:
    __break(1u);
LABEL_19:
    _s16MusicApplication11EnvironmentCMa_0(0);
    sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);
    result = sub_AB5F00();
    __break(1u);
    return result;
  }

  v126 = v72;
  v127 = v73;
  v130 = v76;
  v131 = v77;
  v132 = v78;
  v30 = v24 * v28;
  v128 = v74;
  v129 = v75;
  sub_F84F8();
  v32 = v31;
  sub_12E1C(&v72, &unk_DEF878, &qword_AFD9A8);
  sub_AB7A30();
  if (v30 > v29 * v32)
  {
    v33 = sub_AB9F40();
    v34 = v17;
    v35 = v5;
    v36 = sub_AB6A40();
    sub_AB4A90(v33, &dword_0, v36, "Contradictory frame constraints specified.", 42, 2, _swiftEmptyArrayStorage);

    v5 = v35;
    v17 = v34;
  }

  sub_AB5E90();
  *&v101[55] = v122;
  *&v101[71] = v123;
  *&v101[87] = v124;
  *&v101[103] = v125;
  *&v101[7] = v119;
  *&v101[23] = v120;
  *&v101[39] = v121;
  *&v52 = v5;
  *(&v52 + 1) = v38;
  *&v53 = v26 * v25;
  *(&v53 + 1) = v11 * v42;
  *&v54 = v49;
  *(&v54 + 1) = v47;
  *&v55 = v48;
  *(&v55 + 1) = v7;
  v51[0] = v52;
  v51[1] = v53;
  v51[2] = v54;
  v51[3] = v55;
  v56[0] = v46;
  v56[1] = v41;
  LOBYTE(v56[2]) = v17;
  memcpy(&v56[2] + 1, v87, 0x177uLL);
  LOBYTE(v56[49]) = v43;
  *(&v56[49] + 1) = *v86;
  HIDWORD(v56[49]) = *&v86[3];
  v56[50] = v40;
  v56[51] = v39;
  v56[52] = v45;
  v56[53] = v44;
  LOBYTE(v56[54]) = 0;
  *(&v56[62] + 1) = *&v101[64];
  *(&v56[64] + 1) = *&v101[80];
  *(&v56[66] + 1) = *&v101[96];
  *(&v56[54] + 1) = *v101;
  *(&v56[56] + 1) = *&v101[16];
  *(&v56[58] + 1) = *&v101[32];
  *(&v56[60] + 1) = *&v101[48];
  v56[68] = *(&v125 + 1);
  memcpy(&v51[4], v56, 0x228uLL);
  memcpy(v4, v51, 0x268uLL);
  *__src = v46;
  *&__src[8] = v41;
  __src[16] = v17;
  memcpy(&__src[17], v87, 0x177uLL);
  v58 = v43;
  *v59 = *v86;
  *&v59[3] = *&v86[3];
  v60 = v40;
  v61 = v39;
  v62 = v45;
  v63 = v44;
  v64 = 0;
  v69 = *&v101[64];
  v70 = *&v101[80];
  *v71 = *&v101[96];
  v65 = *v101;
  v66 = *&v101[16];
  v67 = *&v101[32];
  v68 = *&v101[48];
  *&v71[15] = *&v101[111];
  sub_15F84(&v52, v50, &qword_DEFDA8, &qword_AFDF80);
  sub_15F84(v56, v50, &qword_DEFDB0, &qword_AFDF88);
  sub_12E1C(__src, &qword_DEFDB0, &qword_AFDF88);
  v50[0] = v5;
  v50[1] = v38;
  *&v50[2] = v26 * v25;
  *&v50[3] = v11 * v42;
  v50[4] = v49;
  v50[5] = v47;
  v50[6] = v48;
  v50[7] = v7;
  return sub_12E1C(v50, &qword_DEFDA8, &qword_AFDF80);
}

double sub_FC214()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

uint64_t sub_FC288@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v60 = a2;
  v58 = *(type metadata accessor for JSSearchLandingUpsellRegularContentView(0) - 8);
  v3 = *(v58 + 64);
  __chkstk_darwin();
  v59 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = JSSearchLandingUpsell.headline.getter();
  v78 = v5;
  _s16MusicApplication11EnvironmentCMa_0(0);
  sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);
  v6 = sub_AB5F20();
  v76 = v7;
  v77 = v6;
  KeyPath = swift_getKeyPath();
  v8 = *(a1 + 16);
  if (v8)
  {

    v74 = sub_AB5490();
    v158 = 0;
    v9 = JSSearchLandingUpsell.subtitle.getter();
    v72 = v10;
    v73 = v9;
    v11 = sub_AB5F20();
    v70 = v12;
    v71 = v11;
    v68 = swift_getKeyPath();
    v69 = sub_AB6AC0();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510(&v122);

    v155 = v126;
    v156 = v127;
    v157 = v128;
    v152 = v123;
    v151 = v122;
    v154 = v125;
    v153 = v124;
    if (*(&v123 + 1))
    {
      v57 = a1;
      v67 = v4;
      v167 = v151;
      v168 = v152;
      v169 = *(&v123 + 1);
      v172 = v155;
      v173 = v156;
      v174 = v157;
      v171 = v154;
      v170 = v153;
      sub_F8024();
      sub_12E1C(&v151, &unk_DEF878, &qword_AFD9A8);
      sub_AB5690();
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v148 = 0;
      v147 = 0;

      v66 = sub_AB5490();
      v21 = JSSearchLandingUpsell.primaryButtonTitle.getter();
      v64 = v22;
      v65 = v21;
      v23 = sub_AB5F20();
      v62 = v24;
      v63 = v23;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_AB5510(&v122);

      v144 = v126;
      v145 = v127;
      v146 = v128;
      v141 = v123;
      v140 = v122;
      v143 = v125;
      v142 = v124;
      if (*(&v123 + 1))
      {
        v159 = v140;
        v160 = v141;
        v161 = *(&v123 + 1);
        v166 = v146;
        v165 = v145;
        v164 = v144;
        v162 = v142;
        v163 = v143;
        sub_F8414();
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;
        sub_12E1C(&v140, &unk_DEF878, &qword_AFD9A8);
        v61 = sub_AB6AA0();
        v135 = 0;

        v33 = sub_AB5490();
        v54 = v33;
        v34 = JSSearchLandingUpsell.accessoryButtonTitle.getter();
        v55 = v35;
        v56 = v34;
        v36 = v59;
        sub_1040E4(v57, v59, type metadata accessor for JSSearchLandingUpsellRegularContentView);
        v37 = (*(v58 + 80) + 16) & ~*(v58 + 80);
        v38 = swift_allocObject();
        sub_104B8C(v36, v38 + v37, type metadata accessor for JSSearchLandingUpsellRegularContentView);
        v39 = sub_AB5F20();
        v59 = v40;
        v58 = swift_getKeyPath();
        v81 = 0;

        v41 = sub_AB5490();
        *&v82 = v67;
        *(&v82 + 1) = v78;
        *&v83 = v77;
        *(&v83 + 1) = v76;
        *&v84 = KeyPath;
        *(&v84 + 1) = 7;
        LOBYTE(v85) = 0;
        *(&v85 + 1) = *v150;
        DWORD1(v85) = *&v150[3];
        *(&v85 + 1) = v74;
        v86 = v8;
        *&v79[4] = v8;
        v79[2] = v84;
        v79[3] = v85;
        v79[0] = v82;
        v79[1] = v83;
        *&v87 = v73;
        *(&v87 + 1) = v72;
        *&v88 = v71;
        *(&v88 + 1) = v70;
        *&v89 = v68;
        *(&v89 + 1) = 6;
        LOBYTE(v90) = 0;
        DWORD1(v90) = *&v139[3];
        *(&v90 + 1) = *v139;
        BYTE8(v90) = v69;
        HIDWORD(v90) = *&v138[3];
        *(&v90 + 9) = *v138;
        *&v91 = v14;
        *(&v91 + 1) = v16;
        *&v92 = v18;
        *(&v92 + 1) = v20;
        LOBYTE(v93) = 0;
        DWORD1(v93) = *&v149[3];
        *(&v93 + 1) = *v149;
        *(&v93 + 1) = v66;
        v94 = v8;
        *(&v79[11] + 1) = v8;
        *(&v79[10] + 8) = v93;
        *(&v79[9] + 8) = v92;
        *(&v79[8] + 8) = v91;
        *(&v79[7] + 8) = v90;
        *(&v79[6] + 8) = v89;
        *(&v79[5] + 8) = v88;
        *(&v79[4] + 8) = v87;
        *&v95 = v65;
        *(&v95 + 1) = v64;
        *&v96 = v63;
        *(&v96 + 1) = v62;
        LOBYTE(v97) = v61;
        DWORD1(v97) = *&v136[3];
        *(&v97 + 1) = *v136;
        *(&v97 + 1) = v26;
        *&v98 = v28;
        *(&v98 + 1) = v30;
        *&v99 = v32;
        BYTE8(v99) = 0;
        HIDWORD(v99) = *&v137[3];
        *(&v99 + 9) = *v137;
        *&v100 = v33;
        *(&v100 + 1) = v8;
        v79[12] = v95;
        v79[13] = v96;
        v79[16] = v99;
        v79[17] = v100;
        v79[14] = v97;
        v79[15] = v98;
        v42 = v55;
        v43 = v56;
        *&v101 = v56;
        *(&v101 + 1) = v55;
        HIDWORD(v104) = *&v80[3];
        *(&v104 + 9) = *v80;
        *&v102 = sub_105814;
        v44 = v38;
        *(&v102 + 1) = v38;
        v45 = v39;
        *&v103 = v39;
        v47 = v58;
        v46 = v59;
        *(&v103 + 1) = v59;
        *&v104 = v58;
        BYTE8(v104) = v81;
        v48 = v8;
        v53 = v8;
        v49 = v81;
        v50 = v41;
        *&v105 = v41;
        *(&v105 + 1) = v48;
        v79[21] = v104;
        v79[22] = v105;
        v79[19] = v102;
        v79[20] = v103;
        v79[18] = v101;
        memcpy(v60, v79, 0x170uLL);
        v106[0] = v43;
        v106[1] = v42;
        v106[2] = sub_105814;
        v106[3] = v44;
        v106[4] = v45;
        v106[5] = v46;
        v106[6] = v47;
        v107 = v49;
        *v108 = *v80;
        *&v108[3] = *&v80[3];
        v109 = v50;
        v51 = v53;
        v110 = v53;
        sub_15F84(&v82, &v122, &qword_DEFDB8, &qword_AFDFC0);
        sub_15F84(&v87, &v122, &qword_DEFDC0, &qword_AFDFC8);
        sub_15F84(&v95, &v122, &qword_DEFDC8, &unk_AFDFD0);
        sub_15F84(&v101, &v122, &qword_DEFD28, &qword_AFDF20);
        sub_12E1C(v106, &qword_DEFD28, &qword_AFDF20);
        v111[0] = v65;
        v111[1] = v64;
        v111[2] = v63;
        v111[3] = v62;
        v112 = v61;
        *v113 = *v136;
        *&v113[3] = *&v136[3];
        v114 = v26;
        v115 = v28;
        v116 = v30;
        v117 = v32;
        v118 = 0;
        *v119 = *v137;
        *&v119[3] = *&v137[3];
        v120 = v54;
        v121 = v51;
        sub_12E1C(v111, &qword_DEFDC8, &unk_AFDFD0);
        *&v122 = v73;
        *(&v122 + 1) = v72;
        *&v123 = v71;
        *(&v123 + 1) = v70;
        *&v124 = v68;
        *(&v124 + 1) = 6;
        LOBYTE(v125) = 0;
        *(&v125 + 1) = *v139;
        DWORD1(v125) = *&v139[3];
        BYTE8(v125) = v69;
        *(&v125 + 9) = *v138;
        HIDWORD(v125) = *&v138[3];
        *&v126 = v14;
        *(&v126 + 1) = v16;
        *&v127 = v18;
        *(&v127 + 1) = v20;
        LOBYTE(v128) = 0;
        DWORD1(v128) = *&v149[3];
        *(&v128 + 1) = *v149;
        *(&v128 + 1) = v66;
        v129 = v51;
        sub_12E1C(&v122, &qword_DEFDC0, &qword_AFDFC8);
        v130[0] = v67;
        v130[1] = v78;
        v130[2] = v77;
        v130[3] = v76;
        v130[4] = KeyPath;
        v130[5] = 7;
        v131 = 0;
        *v132 = *v150;
        *&v132[3] = *&v150[3];
        v133 = v74;
        v134 = v51;
        return sub_12E1C(v130, &qword_DEFDB8, &qword_AFDFC0);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  result = sub_AB5F00();
  __break(1u);
  return result;
}

double sub_FCC48@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v5);

  result = *v5;
  v3 = v5[1];
  v4 = v5[2];
  *a1 = v5[0];
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

double sub_FCCCC@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_AB6240();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFAE0, &qword_AFDD40);
  v9 = __chkstk_darwin();
  v11 = &v17 - v10;
  v12 = (a1)(0, v9);
  sub_15F84(v2 + *(v12 + 24), v11, &qword_DEFAE0, &qword_AFDD40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_AB5790();
    (*(*(v13 - 8) + 32))(a2, v11, v13);
  }

  else
  {
    v15 = sub_AB9F40();
    v16 = sub_AB6A40();
    sub_AB4A90(v15, &dword_0, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_AB6230();
    swift_getAtKeyPath();
    (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_FCEDC@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_AB7A00();
  a2[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFD30, &qword_AFDF28);
  return sub_FA3A8(v2);
}

uint64_t sub_FCF28@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v62 = *(type metadata accessor for JSSearchLandingUpsellCompactContentView(0) - 8);
  __chkstk_darwin();
  v63 = v2;
  v64 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_AB5790();
  v3 = *(v68 - 8);
  __chkstk_darwin();
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v55 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFC70, &qword_AFDE50);
  __chkstk_darwin();
  v9 = (&v55 - v8);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFC78, &qword_AFDE58);
  __chkstk_darwin();
  v11 = &v55 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFC80, &qword_AFDE60);
  __chkstk_darwin();
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFC88, &qword_AFDE68);
  v55 = *(v14 - 8);
  v56 = v14;
  __chkstk_darwin();
  v69 = &v55 - v15;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFC90, &qword_AFDE70);
  __chkstk_darwin();
  v57 = &v55 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFC98, &qword_AFDE78);
  v60 = *(v17 - 8);
  v61 = v17;
  __chkstk_darwin();
  v59 = &v55 - v18;
  *v9 = sub_AB7A00();
  v9[1] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFCA0, &unk_AFDE80);
  sub_FD918(v1, v9 + *(v20 + 44));
  v70 = v1;
  v21 = *(v1 + 16);
  if (!v21)
  {
    goto LABEL_13;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(&v100);

  v97 = v104;
  v98 = v105;
  v99 = v106;
  v93 = v100;
  v94 = v101;
  v95 = v102;
  v96 = v103;
  if (!*(&v101 + 1))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v100 = v93;
  *&v101 = v94;
  v104 = v97;
  v105 = v98;
  v106 = v99;
  v102 = v95;
  v103 = v96;
  sub_F84F8();
  v23 = v22;
  sub_12E1C(&v93, &unk_DEF878, &qword_AFD9A8);
  sub_36B0C(v9, v11, &qword_DEFC70, &qword_AFDE50);
  v24 = &v11[*(v66 + 36)];
  *v24 = v23;
  *(v24 + 4) = 0;
  v25 = sub_FCCCC(type metadata accessor for JSSearchLandingUpsellCompactContentView, v7);
  v26 = v68;
  (*(v3 + 104))(v5, enum case for ColorScheme.light(_:), v68, v25);
  v27 = sub_AB5780();
  v28 = *(v3 + 8);
  v28(v5, v26);
  v28(v7, v26);
  v29 = objc_opt_self();
  v30 = &selRef_systemBackgroundColor;
  if ((v27 & 1) == 0)
  {
    v30 = &selRef_secondarySystemBackgroundColor;
  }

  v31 = [v29 *v30];
  v32 = sub_AB7510();
  v33 = sub_AB6AA0();
  sub_36B0C(v11, v13, &qword_DEFC78, &qword_AFDE58);
  v34 = v67;
  v35 = &v13[*(v67 + 36)];
  *v35 = v32;
  v35[8] = v33;
  v36 = Corner.extraLarge.unsafeMutableAddressor();
  v37 = *v36;
  v38 = v36[1];
  v39 = *(v36 + 16);
  v40 = sub_104F78();
  v41 = v69;
  View.corner(_:)(v37, v38, v39, v34, v40);
  sub_12E1C(v13, &qword_DEFC80, &qword_AFDE60);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(&v85);

  v92[4] = v89;
  v92[5] = v90;
  v92[6] = v91;
  v92[0] = v85;
  v92[1] = v86;
  v92[2] = v87;
  v92[3] = v88;
  v42 = *(&v86 + 1);
  if (!*(&v86 + 1))
  {
    goto LABEL_10;
  }

  sub_12E1C(v92, &unk_DEF878, &qword_AFD9A8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(&v78);

  v85 = v78;
  v86 = v79;
  v89 = v82;
  v90 = v83;
  v91 = v84;
  v87 = v80;
  v88 = v81;
  if (*(&v79 + 1))
  {
    v43 = *(&v85 + 1);
    sub_12E1C(&v85, &unk_DEF878, &qword_AFD9A8);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510(&v71);

    v82 = v75;
    v83 = v76;
    v84 = v77;
    v78 = v71;
    v79 = v72;
    v80 = v73;
    v81 = v74;
    if (*(&v72 + 1))
    {
      v44 = v79;
      sub_12E1C(&v78, &unk_DEF878, &qword_AFD9A8);
      v45 = v57;
      (*(v55 + 32))(v57, v41, v56);
      v46 = (v45 + *(v58 + 36));
      *v46 = v42;
      v46[1] = v43;
      v46[2] = 0;
      v46[3] = v44;
      v47 = v64;
      sub_1040E4(v70, v64, type metadata accessor for JSSearchLandingUpsellCompactContentView);
      v48 = (*(v62 + 80) + 16) & ~*(v62 + 80);
      v49 = swift_allocObject();
      sub_104B8C(v47, v49 + v48, type metadata accessor for JSSearchLandingUpsellCompactContentView);
      sub_105114();
      v50 = v59;
      sub_AB7010();
      sub_12E1C(v45, &qword_DEFC90, &qword_AFDE70);

      _s16MusicApplication11EnvironmentCMa_0(0);
      sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);

      v51 = sub_AB5490();
      v52 = v65;
      (*(v60 + 32))(v65, v50, v61);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFCC8, &qword_AFDE90);
      v54 = (v52 + *(result + 36));
      *v54 = v51;
      v54[1] = v21;
      return result;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  _s16MusicApplication11EnvironmentCMa_0(0);
  sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);
  result = sub_AB5F00();
  __break(1u);
  return result;
}

uint64_t sub_FD918@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  *&v39 = *(type metadata accessor for JSSearchLandingUpsellCompactContentView(0) - 8);
  v3 = *(v39 + 64);
  __chkstk_darwin();
  *&v40 = type metadata accessor for CloseButton(0);
  __chkstk_darwin();
  v5 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFCD0, &qword_AFDE98);
  __chkstk_darwin();
  v38 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFCD8, &qword_AFDEA0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v37 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v33 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFCE0, &qword_AFDEA8);
  __chkstk_darwin();
  v42 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v33 - v12;
  v43 = sub_AB6440();
  v48 = 1;
  sub_FE060(a1, v46);
  memcpy(v49, v46, 0x1B3uLL);
  memcpy(v50, v46, 0x1B3uLL);
  sub_15F84(v49, v45, &qword_DEFCE8, &qword_AFDEB0);
  sub_12E1C(v50, &qword_DEFCE8, &qword_AFDEB0);
  memcpy(&v47[7], v49, 0x1B3uLL);
  v41 = v48;
  if ((JSSearchLandingUpsell.shouldDisplayCloseButton.getter() & 1) == 0)
  {
    (*(v8 + 56))(v13, 1, 1, v7);
    goto LABEL_6;
  }

  v34 = v8;
  sub_1040E4(a1, &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for JSSearchLandingUpsellCompactContentView);
  v14 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v15 = swift_allocObject();
  sub_104B8C(&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for JSSearchLandingUpsellCompactContentView);
  *&v46[0] = 0x4008000000000000;
  sub_8150C();
  sub_AB58F0();
  *&v46[0] = 0x4022000000000000;
  sub_AB58F0();
  *v5 = sub_105390;
  v5[1] = v15;
  v16 = *(a1 + 16);
  if (v16)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510(v45);

    v46[4] = v45[4];
    v46[5] = v45[5];
    v46[6] = v45[6];
    v46[0] = v45[0];
    v46[1] = v45[1];
    v46[2] = v45[2];
    v46[3] = v45[3];
    v17 = v34;
    if (*(&v45[1] + 1))
    {
      v39 = v46[3];
      v40 = v46[2];
      sub_12E1C(v46, &unk_DEF878, &qword_AFD9A8);
      v18 = sub_AB6AA0();
      v19 = v38;
      sub_104B8C(v5, v38, type metadata accessor for CloseButton);
      v20 = v19 + *(v35 + 36);
      *v20 = v18;
      v21 = v40;
      *(v20 + 24) = v39;
      *(v20 + 8) = v21;
      *(v20 + 40) = 0;
      _s16MusicApplication11EnvironmentCMa_0(0);
      sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);

      v22 = sub_AB5490();
      v23 = v19;
      v24 = v37;
      sub_36B0C(v23, v37, &qword_DEFCD0, &qword_AFDE98);
      v25 = (v24 + *(v7 + 36));
      *v25 = v22;
      v25[1] = v16;
      v26 = v36;
      sub_36B0C(v24, v36, &qword_DEFCD8, &qword_AFDEA0);
      sub_36B0C(v26, v13, &qword_DEFCD8, &qword_AFDEA0);
      (*(v17 + 56))(v13, 0, 1, v7);
LABEL_6:
      v27 = v42;
      sub_15F84(v13, v42, &qword_DEFCE0, &qword_AFDEA8);
      v28 = v43;
      v45[0] = v43;
      v29 = v41;
      LOBYTE(v45[1]) = v41;
      memcpy(&v45[1] + 1, v47, 0x1BAuLL);
      v30 = v44;
      memcpy(v44, v45, 0x1CBuLL);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFCF0, &qword_AFDEB8);
      sub_15F84(v27, v30 + *(v31 + 48), &qword_DEFCE0, &qword_AFDEA8);
      sub_15F84(v45, v46, &qword_DEFCF8, &qword_AFDEC0);
      sub_12E1C(v13, &qword_DEFCE0, &qword_AFDEA8);
      sub_12E1C(v27, &qword_DEFCE0, &qword_AFDEA8);
      v46[0] = v28;
      LOBYTE(v46[1]) = v29;
      memcpy(&v46[1] + 1, v47, 0x1BAuLL);
      return sub_12E1C(v46, &qword_DEFCF8, &qword_AFDEC0);
    }

    __break(1u);
  }

  _s16MusicApplication11EnvironmentCMa_0(0);
  sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);
  result = sub_AB5F00();
  __break(1u);
  return result;
}

uint64_t sub_FE060@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = JSSearchLandingUpsell.tallArtwork.getter();
  v5 = JSSearchLandingUpsell.tallVideoArtwork.getter();
  if (!*(a1 + 16))
  {
    goto LABEL_11;
  }

  v27 = v5;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(__src);

  v6 = *__src;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(__src);

  v7 = *__src;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(__src);

  v71[1] = *&__src[16];
  v72 = *&__src[80];
  v71[3] = *&__src[48];
  v71[4] = *&__src[64];
  v73 = *&__src[96];
  v71[0] = *__src;
  v71[2] = *&__src[32];
  if (!*&__src[24])
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = *&v72;
  sub_12E1C(v71, &unk_DEF878, &qword_AFD9A8);
  _s16MusicApplication11EnvironmentCMa_0(0);
  sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);
  v9 = sub_AB5F20();
  v26 = v10;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(__src);

  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(__src);

  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(__src);

  v70[1] = *&__src[16];
  v70[3] = *&__src[48];
  v70[4] = *&__src[64];
  v70[5] = *&__src[80];
  v70[6] = *&__src[96];
  v70[0] = *__src;
  v70[2] = *&__src[32];
  if (!*&__src[24])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_12E1C(v70, &unk_DEF878, &qword_AFD9A8);
  sub_AB7A30();
  sub_AB5970();
  v11 = sub_AB6440();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(__src);

  v64 = *&__src[16];
  v66 = *&__src[48];
  v67 = *&__src[64];
  v68 = *&__src[80];
  v69 = *&__src[96];
  v63 = *__src;
  v65 = *&__src[32];
  if (*&__src[24])
  {
    v81 = v63;
    v82 = v64;
    v84 = v66;
    v85 = v67;
    v86 = v68;
    v87 = v69;
    v83 = v65;
    sub_F7F28();
    v13 = v12;
    sub_12E1C(&v63, &unk_DEF878, &qword_AFD9A8);
    v58 = 0;
    sub_FE8F4(a1, __src);
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v49, __src, sizeof(v49));
    sub_15F84(__dst, v39, &qword_DEFD00, &qword_AFDEC8);
    sub_12E1C(v49, &qword_DEFD00, &qword_AFDEC8);
    memcpy(&v57[7], __dst, 0x110uLL);
    v14 = v58;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510(__src);

    v51 = *&__src[16];
    v53 = *&__src[48];
    v54 = *&__src[64];
    v55 = *&__src[80];
    v56 = *&__src[96];
    v50 = *__src;
    v52 = *&__src[32];
    if (*&__src[24])
    {
      v15 = v7 * v8;
      v74 = v50;
      v75 = v51;
      v77 = v53;
      v78 = v54;
      v79 = v55;
      v80 = v56;
      v76 = v52;
      sub_F7D00();
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      sub_12E1C(&v50, &unk_DEF878, &qword_AFD9A8);
      v24 = sub_AB6AA0();
      v59 = 0;
      *&v33 = v4;
      *(&v33 + 1) = v27;
      *&v34 = v6;
      *(&v34 + 1) = v15;
      *&v35 = v9;
      *(&v35 + 1) = v26;
      v36 = v60;
      v37 = v61;
      v38 = v62;
      v32[4] = v61;
      v32[5] = v62;
      v32[2] = v35;
      v32[3] = v60;
      v32[0] = v33;
      v32[1] = v34;
      v39[0] = v11;
      v39[1] = v13;
      LOBYTE(v39[2]) = v14;
      memcpy(&v39[2] + 1, v57, 0x117uLL);
      LOBYTE(v39[37]) = v24;
      v39[38] = v17;
      v39[39] = v19;
      v39[40] = v21;
      v39[41] = v23;
      LOBYTE(v39[42]) = 0;
      *(&v39[42] + 1) = 256;
      memcpy(&v32[6], v39, 0x153uLL);
      memcpy(a2, v32, 0x1B3uLL);
      *__src = v11;
      *&__src[8] = v13;
      __src[16] = v14;
      memcpy(&__src[17], v57, 0x117uLL);
      v41 = v24;
      v42 = v17;
      v43 = v19;
      v44 = v21;
      v45 = v23;
      v46 = 0;
      v47 = 256;
      sub_15F84(&v33, v28, &qword_DEFD08, &qword_AFDED0);
      sub_15F84(v39, v28, &qword_DEFD10, &qword_AFDED8);
      sub_12E1C(__src, &qword_DEFD10, &qword_AFDED8);
      v28[0] = v4;
      v28[1] = v27;
      v28[2] = v6;
      *&v28[3] = v15;
      v28[4] = v9;
      v28[5] = v26;
      v29 = v60;
      v30 = v61;
      v31 = v62;
      return sub_12E1C(v28, &qword_DEFD08, &qword_AFDED0);
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  _s16MusicApplication11EnvironmentCMa_0(0);
  sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);
  result = sub_AB5F00();
  __break(1u);
  return result;
}

void sub_FE8F4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = *(type metadata accessor for JSSearchLandingUpsellCompactContentView(0) - 8);
  __chkstk_darwin();
  KeyPath = v4;
  v75 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = JSSearchLandingUpsell.headline.getter();
  v6 = v5;
  v7 = _s16MusicApplication11EnvironmentCMa_0(0);
  v8 = sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);
  v9 = sub_AB5F20();
  v77 = v10;
  v11 = JSSearchLandingUpsell.subtitle.getter();
  v86 = v12;
  v87 = v11;
  v88 = v8;
  v13 = sub_AB5F20();
  v84 = v14;
  v85 = v13;
  v83 = sub_AB6AC0();
  v76 = a1;
  v15 = *(a1 + 16);
  if (v15)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510(&v152);

    v141 = v156;
    v142 = v157;
    v143 = v158;
    v137 = v152;
    v138 = v153;
    v139 = v154;
    v140 = v155;
    if (*(&v153 + 1))
    {
      v71 = v9;
      v72 = v6;
      v152 = v137;
      v153 = v138;
      v156 = v141;
      v157 = v142;
      v158 = v143;
      v154 = v139;
      v155 = v140;
      sub_F8024();
      sub_12E1C(&v137, &unk_DEF878, &qword_AFD9A8);
      sub_AB5690();
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v144 = 0;
      v24 = JSSearchLandingUpsell.primaryButtonTitle.getter();
      v81 = v25;
      v82 = v24;
      v70 = v7;
      v26 = sub_AB5F20();
      v79 = v27;
      v80 = v26;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_AB5510(&v145);

      v134 = v149;
      v135 = v150;
      v136 = v151;
      v130 = v145;
      v131 = v146;
      v132 = v147;
      v133 = v148;
      if (*(&v146 + 1))
      {
        v145 = v130;
        v146 = v131;
        v149 = v134;
        v150 = v135;
        v151 = v136;
        v147 = v132;
        v148 = v133;
        sub_F8414();
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        sub_12E1C(&v130, &unk_DEF878, &qword_AFD9A8);
        v36 = sub_AB6AA0();
        v37 = v36;
        v69 = v36;
        v127 = 0;
        v38 = JSSearchLandingUpsell.accessoryButtonTitle.getter();
        v67 = v39;
        v68 = v38;
        v40 = v75;
        sub_1040E4(v76, v75, type metadata accessor for JSSearchLandingUpsellCompactContentView);
        v41 = (*(v73 + 80) + 16) & ~*(v73 + 80);
        v42 = swift_allocObject();
        sub_104B8C(v40, v42 + v41, type metadata accessor for JSSearchLandingUpsellCompactContentView);
        v43 = sub_AB5F20();
        v75 = v44;
        v76 = v43;
        KeyPath = swift_getKeyPath();
        v100 = 0;

        v45 = sub_AB5490();
        v46 = v100;
        *&v101 = v87;
        *(&v101 + 1) = v86;
        *&v102 = v85;
        *(&v102 + 1) = v84;
        LOBYTE(v103) = v83;
        *(&v103 + 1) = *v129;
        DWORD1(v103) = *&v129[3];
        *(&v103 + 1) = v17;
        *&v104[0] = v19;
        *(&v104[0] + 1) = v21;
        *&v104[1] = v23;
        BYTE8(v104[1]) = 0;
        *&v105 = v82;
        *(&v105 + 1) = v81;
        *&v106 = v80;
        *(&v106 + 1) = v79;
        LOBYTE(v107) = v37;
        DWORD1(v107) = *&v128[3];
        *(&v107 + 1) = *v128;
        *(&v107 + 1) = v29;
        *&v108[0] = v31;
        *(&v108[0] + 1) = v33;
        *&v108[1] = v35;
        BYTE8(v108[1]) = 0;
        *(v98 + 7) = v105;
        v98[4] = *(v108 + 9);
        *(&v98[3] + 7) = v108[0];
        *(&v98[2] + 7) = v107;
        *(&v98[1] + 7) = v106;
        v48 = v67;
        v47 = v68;
        *&v109 = v68;
        *(&v109 + 1) = v67;
        *&v110 = sub_105428;
        *(&v110 + 1) = v42;
        v50 = v75;
        v49 = v76;
        *&v111 = v76;
        *(&v111 + 1) = v75;
        v51 = KeyPath;
        *&v112 = KeyPath;
        BYTE8(v112) = v100;
        HIDWORD(v112) = *&v99[3];
        *(&v112 + 9) = *v99;
        *&v113 = v45;
        *(&v113 + 1) = v15;
        *&v97[7] = v109;
        *&v97[71] = v113;
        *&v97[55] = v112;
        *&v97[39] = v111;
        *&v97[23] = v110;
        v52 = v77;
        v54 = v71;
        v53 = v72;
        *a2 = v78;
        *(a2 + 8) = v53;
        *(a2 + 16) = v54;
        *(a2 + 24) = v52;
        v55 = v101;
        v56 = v102;
        v57 = v103;
        *(a2 + 89) = *(v104 + 9);
        v58 = v104[0];
        *(a2 + 64) = v57;
        *(a2 + 80) = v58;
        *(a2 + 32) = v55;
        *(a2 + 48) = v56;
        *(a2 + 105) = v98[0];
        v59 = v98[1];
        v60 = v98[2];
        v61 = v98[3];
        *(a2 + 169) = v98[4];
        *(a2 + 153) = v61;
        *(a2 + 137) = v60;
        *(a2 + 121) = v59;
        v62 = *v97;
        *(a2 + 201) = *&v97[16];
        *(a2 + 185) = v62;
        v63 = *&v97[32];
        v64 = *&v97[48];
        v65 = *&v97[64];
        *(a2 + 264) = *&v97[79];
        *(a2 + 249) = v65;
        *(a2 + 233) = v64;
        *(a2 + 217) = v63;
        v114[0] = v47;
        v114[1] = v48;
        v114[2] = sub_105428;
        v114[3] = v42;
        v114[4] = v49;
        v114[5] = v50;
        v114[6] = v51;
        v115 = v46;
        *&v116[3] = *&v99[3];
        *v116 = *v99;
        v117 = v45;
        v118 = v15;

        sub_15F84(&v101, v89, &qword_DEFD18, &qword_AFDF10);
        sub_15F84(&v105, v89, &qword_DEFD20, &qword_AFDF18);
        sub_15F84(&v109, v89, &qword_DEFD28, &qword_AFDF20);
        sub_12E1C(v114, &qword_DEFD28, &qword_AFDF20);
        v119[0] = v82;
        v119[1] = v81;
        v119[2] = v80;
        v119[3] = v79;
        v120 = v69;
        *v121 = *v128;
        *&v121[3] = *&v128[3];
        v122 = v29;
        v123 = v31;
        v124 = v33;
        v125 = v35;
        v126 = 0;
        sub_12E1C(v119, &qword_DEFD20, &qword_AFDF18);
        v89[0] = v87;
        v89[1] = v86;
        v89[2] = v85;
        v89[3] = v84;
        v90 = v83;
        *v91 = *v129;
        *&v91[3] = *&v129[3];
        v92 = v17;
        v93 = v19;
        v94 = v21;
        v95 = v23;
        v96 = 0;
        sub_12E1C(v89, &qword_DEFD18, &qword_AFDF10);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  sub_AB5F00();
  __break(1u);
}

void sub_FF06C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510(v8);

    v1 = v8[0];
    if (v8[0])
    {
      v2 = v8[1];
      v3 = v8[2];
      v4 = v8[3];
      v5 = v8[4];
      v6 = v8[5];

      sub_1051DC(v1, v2, v3, v4, v5, v6);

      v3(v7);
    }
  }

  else
  {
    _s16MusicApplication11EnvironmentCMa_0(0);
    sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);
    sub_AB5F00();
    __break(1u);
  }
}

void sub_FF1B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510(v8);

    v1 = v8[0];
    if (v8[0])
    {
      v2 = v8[1];
      v3 = v8[2];
      v4 = v8[3];
      v5 = v8[4];
      v6 = v8[5];

      sub_1051DC(v1, v2, v3, v4, v5, v6);

      v5(v7);
    }
  }

  else
  {
    _s16MusicApplication11EnvironmentCMa_0(0);
    sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);
    sub_AB5F00();
    __break(1u);
  }
}

void sub_FF2F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510(v8);

    v1 = v8[0];
    if (v8[0])
    {
      v2 = v8[1];
      v3 = v8[2];
      v4 = v8[3];
      v5 = v8[4];
      v6 = v8[5];

      sub_1051DC(v1, v2, v3, v4, v5, v6);

      v1(v7);
    }
  }

  else
  {
    _s16MusicApplication11EnvironmentCMa_0(0);
    sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);
    sub_AB5F00();
    __break(1u);
  }
}

double sub_FF438@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v4);

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_FF4B8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

double sub_FF534@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v6);

  result = *v6;
  v4 = v6[1];
  v5 = v6[2];
  *a2 = v6[0];
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t sub_FF5BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_104094(v2, v3, v4, v5, v6, v7);
  return sub_AB5520();
}

__n128 sub_FF674@<Q0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v9);

  v4 = v9[0];
  result = v9[1];
  v6 = v9[5];
  v5 = v9[6];
  v7 = v9[3];
  v8 = v9[2];
  *(a2 + 64) = v9[4];
  *(a2 + 80) = v6;
  *(a2 + 96) = v5;
  *a2 = v4;
  *(a2 + 16) = result;
  *(a2 + 32) = v8;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_FF724(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[5];
  v11[4] = a1[4];
  v11[5] = v3;
  v11[6] = a1[6];
  v4 = a1[1];
  v11[0] = *a1;
  v11[1] = v4;
  v5 = a1[3];
  v11[2] = a1[2];
  v11[3] = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1[5];
  v10[11] = a1[4];
  v10[12] = v6;
  v10[13] = a1[6];
  v7 = a1[1];
  v10[7] = *a1;
  v10[8] = v7;
  v8 = a1[3];
  v10[9] = a1[2];
  v10[10] = v8;

  sub_15F84(v11, v10, &unk_DEF878, &qword_AFD9A8);
  return sub_AB5520();
}

uint64_t sub_FF7F8()
{
  v1 = OBJC_IVAR____TtC16MusicApplicationP33_B90BA6543340C30087EC01D228CE8DDA11Environment__width;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C0, &qword_AFDB00);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MusicApplicationP33_B90BA6543340C30087EC01D228CE8DDA11Environment__actions;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF990, &qword_AFDB08);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16MusicApplicationP33_B90BA6543340C30087EC01D228CE8DDA11Environment__specs;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF998, &qword_AFDB10);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_FF948()
{
  v1 = v0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF998, &qword_AFDB10);
  v2 = *(v21 - 8);
  __chkstk_darwin();
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF990, &qword_AFDB08);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C0, &qword_AFDB00);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC16MusicApplicationP33_B90BA6543340C30087EC01D228CE8DDA11Environment__width;
  *&v22 = 0;
  sub_AB54D0();
  (*(v10 + 32))(v1 + v13, v12, v9);
  v14 = OBJC_IVAR____TtC16MusicApplicationP33_B90BA6543340C30087EC01D228CE8DDA11Environment__actions;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF868, &qword_AFD9A0);
  sub_AB54D0();
  (*(v6 + 32))(v1 + v14, v8, v5);
  v15 = OBJC_IVAR____TtC16MusicApplicationP33_B90BA6543340C30087EC01D228CE8DDA11Environment__specs;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEF878, &qword_AFD9A8);
  sub_AB54D0();
  (*(v2 + 32))(v1 + v15, v4, v21);
  v16 = OBJC_IVAR____TtC16MusicApplicationP33_B90BA6543340C30087EC01D228CE8DDA11Environment_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v18 = sub_80104(v17);

  *(v1 + v16) = v18;
  return v1;
}

uint64_t sub_FFC54@<X0>(uint64_t a1@<X8>)
{
  v92 = a1;
  v79 = type metadata accessor for JSSearchLandingUpsellRegularContentView(0);
  __chkstk_darwin();
  v81 = (&v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFAB0, &qword_AFDCE0);
  __chkstk_darwin();
  v83 = &v72 - v3;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFAB8, &qword_AFDCE8);
  __chkstk_darwin();
  v82 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &v72 - v5;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFAC0, &qword_AFDCF0);
  __chkstk_darwin();
  v90 = &v72 - v6;
  v73 = type metadata accessor for JSSearchLandingUpsellCompactContentView(0);
  __chkstk_darwin();
  v75 = (&v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFAC8, &qword_AFDCF8);
  __chkstk_darwin();
  v77 = &v72 - v8;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFAD0, &qword_AFDD00);
  __chkstk_darwin();
  v76 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v78 = &v72 - v10;
  v11 = sub_AB6790();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v72 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFAD8, &qword_AFDD08) - 8;
  __chkstk_darwin();
  v16 = &v72 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF9E0, &qword_AFDC10);
  __chkstk_darwin();
  v85 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v72 - v18;
  __chkstk_darwin();
  v21 = &v72 - v20;
  v86 = type metadata accessor for JSSearchLandingUpsellView(0);
  v87 = v1;
  v22 = sub_F7B20(v21);
  (*(v12 + 104))(v19, enum case for UserInterfaceSizeClass.compact(_:), v11, v22);
  (*(v12 + 56))(v19, 0, 1, v11);
  v23 = *(v14 + 56);
  sub_15F84(v21, v16, &qword_DEF9E0, &qword_AFDC10);
  sub_15F84(v19, &v16[v23], &qword_DEF9E0, &qword_AFDC10);
  v24 = *(v12 + 48);
  if (v24(v16, 1, v11) == 1)
  {
    sub_12E1C(v19, &qword_DEF9E0, &qword_AFDC10);
    sub_12E1C(v21, &qword_DEF9E0, &qword_AFDC10);
    if (v24(&v16[v23], 1, v11) == 1)
    {
      sub_12E1C(v16, &qword_DEF9E0, &qword_AFDC10);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_15F84(v16, v85, &qword_DEF9E0, &qword_AFDC10);
  if (v24(&v16[v23], 1, v11) == 1)
  {
    sub_12E1C(v19, &qword_DEF9E0, &qword_AFDC10);
    sub_12E1C(v21, &qword_DEF9E0, &qword_AFDC10);
    (*(v12 + 8))(v85, v11);
LABEL_6:
    sub_12E1C(v16, &qword_DEFAD8, &qword_AFDD08);
    goto LABEL_7;
  }

  v47 = &v16[v23];
  v48 = v72;
  (*(v12 + 32))(v72, v47, v11);
  sub_103D2C(&qword_DEFB18, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v49 = v85;
  v50 = sub_AB91C0();
  v51 = *(v12 + 8);
  v51(v48, v11);
  sub_12E1C(v19, &qword_DEF9E0, &qword_AFDC10);
  sub_12E1C(v21, &qword_DEF9E0, &qword_AFDC10);
  v51(v49, v11);
  sub_12E1C(v16, &qword_DEF9E0, &qword_AFDC10);
  if (v50)
  {
LABEL_10:
    v52 = v87;
    v53 = *(v87 + 8);
    _s16MusicApplication11EnvironmentCMa_0(0);
    sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);
    v54 = v53;
    v55 = sub_AB5F20();
    v57 = v56;
    KeyPath = swift_getKeyPath();
    v59 = v75;
    *(v75 + *(v73 + 24)) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFAE0, &qword_AFDD40);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for JSSearchLandingUpsell(0);
    sub_103D2C(&qword_DEF9B0, type metadata accessor for JSSearchLandingUpsell, &protocol conformance descriptor for JSSearchLandingUpsell);
    *v59 = sub_AB5B50();
    v59[1] = v60;
    v59[2] = v55;
    v59[3] = v57;
    v61 = *(v52 + *(v86 + 24));
    if (v61)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_AB5510(&v93);

      sub_AB7A30();
      sub_AB5E90();
      v62 = v77;
      sub_104B8C(v59, v77, type metadata accessor for JSSearchLandingUpsellCompactContentView);
      v63 = (v62 + *(v74 + 36));
      v64 = v98;
      v63[4] = v97;
      v63[5] = v64;
      v63[6] = v99;
      v65 = v94;
      *v63 = v93;
      v63[1] = v65;
      v66 = v96;
      v63[2] = v95;
      v63[3] = v66;

      v67 = sub_AB5490();
      v68 = v62;
      v69 = v76;
      sub_36B0C(v68, v76, &qword_DEFAC8, &qword_AFDCF8);
      v70 = (v69 + *(v88 + 36));
      *v70 = v67;
      v70[1] = v61;
      v44 = &qword_DEFAD0;
      v45 = &qword_AFDD00;
      v46 = v78;
      sub_36B0C(v69, v78, &qword_DEFAD0, &qword_AFDD00);
      sub_15F84(v46, v90, &qword_DEFAD0, &qword_AFDD00);
      swift_storeEnumTagMultiPayload();
      sub_1048A4();
      sub_104A18();
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_7:
  v25 = v87;
  v26 = *(v87 + 8);
  _s16MusicApplication11EnvironmentCMa_0(0);
  sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);
  v27 = v26;
  v28 = sub_AB5F20();
  v30 = v29;
  v31 = swift_getKeyPath();
  v32 = v81;
  *(v81 + *(v79 + 24)) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFAE0, &qword_AFDD40);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for JSSearchLandingUpsell(0);
  sub_103D2C(&qword_DEF9B0, type metadata accessor for JSSearchLandingUpsell, &protocol conformance descriptor for JSSearchLandingUpsell);
  *v32 = sub_AB5B50();
  v32[1] = v33;
  v32[2] = v28;
  v32[3] = v30;
  v34 = *(v25 + *(v86 + 24));
  if (v34)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510(&v93);

    sub_AB7A30();
    sub_AB5E90();
    v35 = v83;
    sub_104B8C(v32, v83, type metadata accessor for JSSearchLandingUpsellRegularContentView);
    v36 = (v35 + *(v80 + 36));
    v37 = v98;
    v36[4] = v97;
    v36[5] = v37;
    v36[6] = v99;
    v38 = v94;
    *v36 = v93;
    v36[1] = v38;
    v39 = v96;
    v36[2] = v95;
    v36[3] = v39;

    v40 = sub_AB5490();
    v41 = v35;
    v42 = v82;
    sub_36B0C(v41, v82, &qword_DEFAB0, &qword_AFDCE0);
    v43 = (v42 + *(v91 + 36));
    *v43 = v40;
    v43[1] = v34;
    v44 = &qword_DEFAB8;
    v45 = &qword_AFDCE8;
    v46 = v84;
    sub_36B0C(v42, v84, &qword_DEFAB8, &qword_AFDCE8);
    sub_15F84(v46, v90, &qword_DEFAB8, &qword_AFDCE8);
    swift_storeEnumTagMultiPayload();
    sub_1048A4();
    sub_104A18();
LABEL_12:
    sub_AB6610();
    return sub_12E1C(v46, v44, v45);
  }

  sub_AB5F00();
  __break(1u);
LABEL_14:
  result = sub_AB5F00();
  __break(1u);
  return result;
}

void sub_100A88(void *a1)
{
  v35 = sub_AB7440();
  v33 = *(v35 - 8);
  __chkstk_darwin();
  v32 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF9A0, &qword_AFDB18);
  __chkstk_darwin();
  v5 = &v32 - v4;
  v6 = type metadata accessor for JSSearchLandingUpsellView(0) - 8;
  __chkstk_darwin();
  v36 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v1 + qword_DEF910) = 0;
  v8 = qword_DEF928;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED0, &unk_B05CE0);
  swift_allocObject();
  *(v1 + v8) = ArtworkVideoReportingController.init()();
  *(v1 + qword_DEF930) = 0;
  *(v1 + qword_DEF938) = 0;
  _s16MusicApplication11EnvironmentCMa_0(0);
  swift_allocObject();
  v9 = sub_FF948();
  v10 = qword_DEF918;
  *(v1 + qword_DEF918) = v9;
  *(v1 + qword_DEF920) = a1;
  sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);
  v11 = a1;
  v12 = sub_AB5F20();
  v14 = v13;
  type metadata accessor for JSSearchLandingUpsell(0);
  sub_103D2C(&qword_DEF9B0, type metadata accessor for JSSearchLandingUpsell, &protocol conformance descriptor for JSSearchLandingUpsell);
  v34 = v11;
  v15 = v36;
  *v15 = sub_AB5B50();
  v15[1] = v16;
  v17 = *(v6 + 28);
  *(v15 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF9B8, &qword_AFDB50);
  swift_storeEnumTagMultiPayload();
  v18 = (v15 + *(v6 + 32));
  *v18 = v12;
  v18[1] = v14;
  v19 = *(v1 + v10);

  v20 = sub_AB5490();
  sub_1040E4(v15, v5, type metadata accessor for JSSearchLandingUpsellView);
  v21 = &v5[*(v37 + 36)];
  *v21 = v20;
  v21[1] = v19;
  sub_103F0C();
  *&v38 = sub_AB77E0();
  v22 = sub_AB64F0();

  v23 = [v22 traitCollection];
  v24 = [v22 view];

  if (v24)
  {
    v25 = [v24 window];

    (*(v33 + 104))(v32, enum case for Color.RGBColorSpace.sRGBLinear(_:), v35);
    v26 = sub_AB7500();
    swift_getKeyPath();
    swift_getKeyPath();
    v38 = xmmword_AFD910;
    v39 = 0x4018000000000000;
    v40 = v26;
    v42 = 0;
    v43 = 0;
    v41 = 0x401C000000000000;
    v44 = xmmword_AFD920;
    v45 = xmmword_AFD930;
    v46 = 0x3FE5555555555555;
    v47 = v23;
    v48 = v25;
    sub_AB5520();
    v27 = swift_allocObject();
    *(v27 + 16) = v22;
    v28 = swift_allocObject();
    *(v28 + 16) = v22;
    v29 = swift_allocObject();
    *(v29 + 16) = v22;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v38 = sub_104034;
    *(&v38 + 1) = v27;
    v39 = sub_10405C;
    v40 = v28;
    v41 = sub_104084;
    v42 = v29;
    v30 = v22;
    swift_retain_n();
    v31 = v30;
    sub_AB5520();

    sub_10414C(v15, type metadata accessor for JSSearchLandingUpsellView);
  }

  else
  {
    __break(1u);
  }
}

double sub_101048(void *a1)
{
  v2 = sub_AB3430();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_4D39CC();
  if (v6)
  {
    v7 = v6;
    type metadata accessor for JSVerticalStackViewController(0);
    if (swift_dynamicCastClass())
    {
      v8 = sub_A0BB4();

      sub_AB3420();
      v9 = sub_4D39CC();
      if (v9)
      {
        if (swift_dynamicCastClass())
        {
          v10 = sub_A0BB4();

          v11 = *(v10 + 224);

          v12 = sub_13C80(0, &qword_DE7500, UIViewController_ptr);
          v9 = static MPMediaLibraryFilteringOptions.none.getter();
          if (v9 != WeakArray.endIndex.getter(v11, v12, v13, v14))
          {
            v26[1] = v8;
            do
            {
              v19 = WeakArray.subscript.getter(v9, v11, v12, v15);
              if (v19)
              {
                v20 = v19;
                v21 = a1;
                v22 = sub_ABA790();

                if (v22)
                {

                  goto LABEL_17;
                }
              }

              v9 = WeakArray.index(after:)(v9);
            }

            while (v9 != WeakArray.endIndex.getter(v11, v12, v17, v18));

            v9 = 0;
            goto LABEL_17;
          }
        }

        else
        {
        }

        v9 = 0;
      }

LABEL_17:
      v16 = sub_2CD29C(1u, v5, v9, 0);
      (*(v3 + 8))(v5, v2);

      goto LABEL_18;
    }

    v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_18:
  sub_12AFE8();
  v24 = v23;
  JSSearchLandingUpsell.didSelectCloseButton(snapshotImpressions:pageDetailsProvider:)(v16, v23);

  return result;
}

Swift::Void __swiftcall JSSearchLandingUpsellViewController.didMove(toParent:)(UIViewController_optional toParent)
{
  isa = toParent.value.super.super.isa;
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "didMoveToParentViewController:", isa);
  sub_101340();
}

double sub_101340()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF9E8, &qword_AFDC60);
  v3 = *(v2 - 8);
  *&result = __chkstk_darwin().n128_u64[0];
  v6 = &v40 - v5;
  v7 = qword_DEF910;
  if (!*(v0 + qword_DEF910))
  {
    v8 = sub_4D39CC();
    if (v8)
    {
      v9 = v8;
      v40 = sub_4D3DD0();

      v41 = swift_allocObject();
      swift_unknownObjectWeakInit();
      JSSearchLandingUpsell.$tallVideoArtwork.getter();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_36A00(&qword_DEF9F0, &qword_DEF9E8, &qword_AFDC60, &protocol conformance descriptor for Published<A>.Publisher);
      v10 = sub_AB55C0();
      v11 = *(v3 + 8);
      v11(v6, v2);

      *(v1 + qword_DEF938) = v10;

      JSSearchLandingUpsell.$wideVideoArtwork.getter();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = sub_AB55C0();
      v11(v6, v2);

      *(v1 + qword_DEF930) = v12;

      v13 = *(v1 + qword_DEF918);
      v14 = OBJC_IVAR____TtC16MusicApplicationP33_B90BA6543340C30087EC01D228CE8DDA11Environment_artworkComponent;
      v15 = *(v13 + OBJC_IVAR____TtC16MusicApplicationP33_B90BA6543340C30087EC01D228CE8DDA11Environment_artworkComponent);

      v16 = v40;
      v17 = v41;

      v18 = sub_38E490(v15, v16, 0xD000000000000049, 0x8000000000B50F40, sub_1041EC, v17);
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = *(v18 + 40);
      v21 = *(v18 + 48);
      *(v18 + 40) = sub_104400;
      *(v18 + 48) = v19;

      sub_17654(v20, v21);

      v22 = *(v13 + v14);
      LOBYTE(v20) = *(v22 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed);
      *(v22 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) = *(v18 + 56);

      sub_76070(v20);

      v23 = *(v1 + qword_DEF928);
      (*(*v23 + 136))(*(v18 + 56));
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = *(v18 + 64);
      v26 = *(v18 + 72);
      *(v18 + 64) = sub_104408;
      *(v18 + 72) = v24;
      sub_17654(v25, v26);
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = *(v18 + 80);
      v29 = *(v18 + 88);
      *(v18 + 80) = sub_104410;
      *(v18 + 88) = v27;
      sub_17654(v28, v29);
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = *(v18 + 112);
      v32 = *(v18 + 120);
      *(v18 + 112) = sub_104418;
      *(v18 + 120) = v30;
      sub_17654(v31, v32);
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = *(v18 + 128);
      v35 = *(v18 + 136);
      *(v18 + 128) = sub_104420;
      *(v18 + 136) = v33;
      sub_17654(v34, v35);
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v37 = *(v18 + 96);
      v38 = *(v18 + 104);
      *(v18 + 96) = sub_104428;
      *(v18 + 104) = v36;
      sub_17654(v37, v38);

      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(*v23 + 160))(sub_104430, v39);

      *(v1 + v7) = v18;
    }
  }

  return result;
}

void sub_1018A0(void *a1, uint64_t a2, void *a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, "didMoveToParentViewController:", v4);
  sub_101340();
}

Swift::Void __swiftcall JSSearchLandingUpsellViewController.viewDidLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "viewDidLayoutSubviews");
  sub_10195C(0, 0, 1);
  sub_101340();
}

void sub_10195C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v52);

  v59[4] = v56;
  v59[5] = v57;
  v60 = v58;
  v59[0] = v52;
  v59[1] = v53;
  v59[2] = v54;
  v59[3] = v55;
  if (!*(&v53 + 1))
  {
    __break(1u);
    goto LABEL_38;
  }

  v6 = v60;
  v7 = v60;
  v8 = [v4 traitCollection];
  v9 = v8;
  if (v6)
  {
    if (v8)
    {
      sub_13C80(0, &qword_E00AB0, UITraitCollection_ptr);
      v10 = sub_ABA790();

      sub_12E1C(v59, &unk_DEF878, &qword_AFD9A8);
      if (v10)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v9 = v7;
  }

  else if (!v8)
  {
    sub_12E1C(v59, &unk_DEF878, &qword_AFD9A8);
    goto LABEL_12;
  }

  sub_12E1C(v59, &unk_DEF878, &qword_AFD9A8);
LABEL_10:
  v11 = [v4 traitCollection];
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = sub_AB5500();
  if (!*(v13 + 24))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v14 = v12;
  v15 = *(v13 + 96);
  *(v13 + 96) = v11;

  v14(&v52, 0);

LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v45);

  v57 = v50;
  v58 = v51;
  v52 = v45;
  v53 = v46;
  v55 = v48;
  v56 = v49;
  v54 = v47;
  if (!*(&v46 + 1))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v16 = *(&v58 + 1);
  if (*(&v58 + 1))
  {
    v17 = *(&v58 + 1);
  }

  sub_12E1C(&v52, &unk_DEF878, &qword_AFD9A8);
  v18 = [v4 view];
  if (!v18)
  {
    goto LABEL_39;
  }

  v19 = v18;
  v20 = [v18 window];

  if (!v16)
  {
    if (!v20)
    {
      goto LABEL_21;
    }

    goto LABEL_25;
  }

  if (!v20)
  {
    v20 = v16;
LABEL_25:

    goto LABEL_26;
  }

  if (v20 == v16)
  {
LABEL_21:
    if ((a3 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

LABEL_26:
  v23 = [v4 view];
  if (!v23)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v24 = v23;
  v25 = [v23 window];

  swift_getKeyPath();
  swift_getKeyPath();
  v26 = sub_AB5500();
  if (!*(v27 + 24))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v28 = v26;
  v29 = *(v27 + 104);
  *(v27 + 104) = v25;

  v28(&v45, 0);

  if (a3)
  {
LABEL_22:
    v21 = [v4 view];
    if (!v21)
    {
LABEL_45:
      __break(1u);
      return;
    }

    v22 = v21;
    [v21 bounds];
  }

LABEL_29:
  v30 = [v4 view];
  if (!v30)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v31 = v30;
  [objc_opt_self() music_defaultLayoutInsetsInView:v30];

  sub_ABA530();
  v33 = v32;
  sub_AB64B0();
  v35 = v34;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v38);

  v49 = v42;
  v50 = v43;
  v51 = v44;
  v45 = v38;
  v46 = v39;
  v47 = v40;
  v48 = v41;
  if (!*(&v39 + 1))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v36 = *&v45;
  sub_12E1C(&v45, &unk_DEF878, &qword_AFD9A8);
  [v4 preferredContentSize];
  if (v35 + v36 != v37)
  {
    [v4 preferredContentSize];
    [v4 setPreferredContentSize:?];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v38);

  if (*&v38 != v33)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v38);

    if (v33 != *&v38)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *&v38 = v33;

      sub_AB5520();
    }
  }
}

void sub_101FDC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "viewDidLayoutSubviews");
  sub_10195C(0, 0, 1);
  sub_101340();
}

void JSSearchLandingUpsellViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v10[4] = sub_102198;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_CF24C;
  v10[3] = &block_descriptor_33;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

uint64_t sub_102160()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1021E0(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v13.receiver = a1;
  v13.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v8 = v13.receiver;
  objc_msgSendSuper2(&v13, "viewWillTransitionToSize:withTransitionCoordinator:", a5, a2, a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  v12[4] = sub_1069EC;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_CF24C;
  v12[3] = &block_descriptor_29;
  v10 = _Block_copy(v12);
  v11 = v8;

  [a5 animateAlongsideTransition:0 completion:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall JSSearchLandingUpsellViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "traitCollectionDidChange:", isa);
  sub_10195C(0, 0, 1);
}

void sub_102374(void *a1, uint64_t a2, void *a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, "traitCollectionDidChange:", v4);
  sub_10195C(0, 0, 1);
}

void sub_1023F0(int a1)
{
  v2 = v1;
  v81 = a1;
  v3 = sub_AB3820();
  v74 = *(v3 - 8);
  v75 = v3;
  __chkstk_darwin();
  v71 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v9 = &v70 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v72 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v76 = &v70 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v13 = &v70 - v12;
  v14 = sub_AB3430();
  v77 = *(v14 - 8);
  v78 = v14;
  __chkstk_darwin();
  v73 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v70 - v16;
  v18 = sub_4D39CC();
  v82 = v13;
  if (v18)
  {
    v83 = v9;
    type metadata accessor for JSVerticalStackViewController(0);
    if (!swift_dynamicCastClass())
    {

      v18 = 0;
LABEL_18:
      v9 = v83;
      goto LABEL_19;
    }

    v80 = sub_A0BB4();

    sub_AB3420();
    v19 = sub_4D39CC();
    if (v19)
    {
      if (swift_dynamicCastClass())
      {
        v20 = sub_A0BB4();

        v21 = *(v20 + 224);

        v22 = sub_13C80(0, &qword_DE7500, UIViewController_ptr);
        v19 = static MPMediaLibraryFilteringOptions.none.getter();
        if (v19 != WeakArray.endIndex.getter(v21, v22, v23, v24))
        {
          v79 = v5;
          do
          {
            v28 = WeakArray.subscript.getter(v19, v21, v22, v25);
            if (v28)
            {
              v29 = v28;
              v30 = v2;
              v31 = sub_ABA790();

              if (v31)
              {

                goto LABEL_16;
              }
            }

            v19 = WeakArray.index(after:)(v19);
          }

          while (v19 != WeakArray.endIndex.getter(v21, v22, v26, v27));

          v19 = 0;
LABEL_16:
          v5 = v79;
          v13 = v82;
          goto LABEL_17;
        }
      }

      else
      {
      }

      v19 = 0;
    }

LABEL_17:
    v18 = sub_2CD29C(1u, v17, v19, 0);
    (*(v77 + 8))(v17, v78);

    goto LABEL_18;
  }

LABEL_19:
  v32 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v33 = *&v2[qword_DEF920];
  v79 = v32;
  v80 = v33;
  memset(v90, 0, sizeof(v90));
  v91 = 0;
  v92 = xmmword_AF7710;
  PresentationSource.init(viewController:position:)(v2, v90, v89);
  v34 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v87, 0, sizeof(v87));
  v88 = 0;
  (*(*(v34 - 8) + 56))(v13, 1, 1, v34);
  sub_12AFE8();
  v36 = v35;
  v37 = v18;
  v83 = v18;
  if (!v18)
  {
    sub_15F84(v87, &v84, &unk_DE8E30, "\b]\r");
    if (*(&v85 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
      v39 = v9;
      v40 = _s30CollectionViewSelectionHandlerVMa(0);
      v41 = swift_dynamicCast();
      v42 = *(v40 - 8);
      (*(v42 + 56))(v39, v41 ^ 1u, 1, v40);
      v43 = (*(v42 + 48))(v39, 1, v40);
      v9 = v39;
      v44 = v75;
      v45 = v76;
      v46 = v74;
      if (v43 != 1)
      {
        (*(v74 + 16))(v76, &v9[*(v40 + 20)], v75);
        sub_10414C(v9, _s30CollectionViewSelectionHandlerVMa);
        v47 = 0;
LABEL_27:
        (*(v46 + 56))(v45, v47, 1, v44);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong && (v50 = Strong, sub_12B2FC(), v52 = v51, v54 = v53, v50, v52))
        {
          ObjectType = swift_getObjectType();
          (*(v54 + 8))(ObjectType, v54);
          v56 = v46;
          v58 = v57;
          swift_unknownObjectRelease();
          v59 = v45;
          v60 = v72;
          sub_15F84(v59, v72, &unk_DE8E20, &qword_AF7990);
          if ((*(v56 + 48))(v60, 1, v44) == 1)
          {
            sub_12E1C(v60, &unk_DE8E20, &qword_AF7990);
            v84 = 0u;
            v85 = 0u;
            v86 = 0;
          }

          else
          {
            (*(v56 + 32))(v71, v60, v44);
            sub_103D2C(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            sub_ABAD10();
          }

          v61 = swift_getObjectType();
          v62 = v73;
          sub_3B8F68(v61);
          v37 = sub_21CCAC(1, v62, &v84, v61, v58);
          (*(v77 + 8))(v62, v78);
          sub_12E1C(&v84, &qword_DF2BD0, &unk_AFDC00);
          sub_12E1C(v76, &unk_DE8E20, &qword_AF7990);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_12E1C(v45, &unk_DE8E20, &qword_AF7990);
          v37 = 0;
        }

        if (v36)
        {
          goto LABEL_21;
        }

        goto LABEL_35;
      }
    }

    else
    {
      sub_12E1C(&v84, &unk_DE8E30, "\b]\r");
      v48 = _s30CollectionViewSelectionHandlerVMa(0);
      (*(*(v48 - 8) + 56))(v9, 1, 1, v48);
      v44 = v75;
      v45 = v76;
      v46 = v74;
    }

    sub_12E1C(v9, &qword_E037A0, &unk_AF8B30);
    v47 = 1;
    goto LABEL_27;
  }

  if (v35)
  {
LABEL_21:

    v38 = v36;
    goto LABEL_38;
  }

LABEL_35:
  v63 = swift_unknownObjectWeakLoadStrong();

  if (v63)
  {
    sub_12AFE8();
    v38 = v64;
  }

  else
  {
    v38 = 0;
  }

LABEL_38:
  sub_15F28(v89, &v84);
  sub_15F84(v87, (v7 + 104), &unk_DE8E30, "\b]\r");
  v65 = v82;
  sub_15F84(v82, &v7[*(v5 + 28)], &unk_DEA510, "\b]\r");
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 8) = 1;
  *(v7 + 9) = 0;
  *(v7 + 10) = 0;
  *(v7 + 11) = 0;
  v66 = v36;
  sub_2D594(&v84, v7);
  *(v7 + 12) = 0;
  v67 = *v79;
  *(&v85 + 1) = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v84);
  sub_1040E4(v7, boxed_opaque_existential_0, _s23MusicPerformanceContextVMa);
  v69 = v67;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v80, v81 & 1, v37, v38, &v84);
  sub_12E1C(v65, &unk_DEA510, "\b]\r");
  sub_12E1C(v87, &unk_DE8E30, "\b]\r");
  sub_1611C(v89);
  sub_10414C(v7, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v84, &unk_DE8E40, &unk_AF8050);
}

BOOL sub_102E4C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = *(Strong + qword_DEF920), v2, v4 = JSSearchLandingUpsell.tallVideoArtwork.getter(), v3, v4))
  {
    v5 = 1;
  }

  else
  {
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      return 0;
    }

    v7 = v6;
    v8 = *(v6 + qword_DEF920);

    v4 = JSSearchLandingUpsell.wideVideoArtwork.getter();
    v5 = v4 != 0;
  }

  return v5;
}

void sub_102F34(void **a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + qword_DEF920);

    v8 = a3();
    if (v4)
    {
      if (v8)
      {
        type metadata accessor for JSVideoArtwork();
        v9 = v4;
        v10 = sub_ABA790();

        if (v10)
        {
          return;
        }
      }
    }

    else
    {
      if (!v8)
      {
        return;
      }
    }
  }

  else if (!v4)
  {
    return;
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = sub_4D39CC();
    if (v13)
    {
      v14 = v13;
      type metadata accessor for JSVerticalStackViewController(0);
      if (swift_dynamicCastClass())
      {
        v15 = sub_A0BB4();

        if (*(v15 + 81) == 1)
        {
          v17 = sub_4A3ECC(v19);
          if (*v16)
          {
            v18 = v16;

            *v18 = &_swiftEmptySetSingleton;
          }

          (v17)(v19, 0);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

double sub_1030D0(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + qword_DEF918);
    v5 = Strong;

    v6 = *(v4 + OBJC_IVAR____TtC16MusicApplicationP33_B90BA6543340C30087EC01D228CE8DDA11Environment_artworkComponent);

    v7 = *(v6 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed);
    *(v6 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) = a1 & 1;
    sub_76070(v7);
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v10 = *(v8 + qword_DEF928);
    v11 = v8;

    (*(*v10 + 136))(a1 & 1);
  }

  return result;
}

double sub_1031F0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + qword_DEF928);
    v7 = Strong;

    v8[0] = v2;
    v8[1] = v3;
    (*(*v6 + 200))(v8);
  }

  return result;
}

double sub_103294(uint64_t *a1, char a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + qword_DEF928);
    v9 = Strong;

    v10[0] = v4;
    v10[1] = v5;
    (*(*v8 + 192))(v10, a2 & 1);
  }

  return result;
}

double sub_103348(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + qword_DEF928);
    v7 = Strong;

    v8[0] = v2;
    v8[1] = v3;
    (*(*v6 + 224))(v8);
  }

  return result;
}

double sub_1033EC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + qword_DEF928);
    v7 = Strong;

    v8[0] = v2;
    v8[1] = v3;
    (*(*v6 + 208))(v8);
  }

  return result;
}

double sub_103490(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + qword_DEF928);
    v24[0] = v2;
    v24[1] = v3;
    (*(*v7 + 216))(v24);
    v8 = sub_4D39CC();
    if (v8)
    {
      v9 = v8;
      type metadata accessor for JSVerticalStackViewController(0);
      if (swift_dynamicCastClass())
      {
        sub_A0BB4();

        v10 = sub_4D39CC();
        if (v10)
        {
          v11 = v10;
          if (swift_dynamicCastClass())
          {
            v12 = sub_A0BB4();

            v13 = *(v12 + 224);

            v14 = sub_13C80(0, &qword_DE7500, UIViewController_ptr);
            for (i = static MPMediaLibraryFilteringOptions.none.getter(); ; i = WeakArray.index(after:)(v18))
            {
              v18 = i;
              if (i == WeakArray.endIndex.getter(v13, v14, v16, v17))
              {
                break;
              }

              v20 = WeakArray.subscript.getter(v18, v13, v14, v19);
              if (v20)
              {
                v21 = v20;
                v22 = v6;
                v23 = sub_ABA790();

                if (v23)
                {

                  goto LABEL_17;
                }
              }
            }
          }

          else
          {
          }
        }

        v18 = 0;
LABEL_17:
        sub_4A3934(v18);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_103688(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = *(Strong + qword_DEF920);

  v5 = JSSearchLandingUpsell.marketingID.getter();
  return v5;
}

void sub_103720(uint64_t a1)
{
  *(a1 + qword_DEF910) = 0;
  v2 = qword_DEF928;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED0, &unk_B05CE0);
  swift_allocObject();
  *(a1 + v2) = ArtworkVideoReportingController.init()();
  *(a1 + qword_DEF930) = 0;
  *(a1 + qword_DEF938) = 0;
  sub_ABAFD0();
  __break(1u);
}

double sub_103840()
{

  return result;
}

double sub_1038CC(uint64_t a1)
{

  return result;
}

void sub_103958(void *a1)
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_103990(uint64_t a1, void *a2)
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_103A28(uint64_t a1)
{
  sub_363CC();
  if (v1 <= 0x3F)
  {
    sub_104728(319, &qword_DEF860, &qword_DEF868, &qword_AFD9A0, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      sub_104728(319, &qword_DEF870, &unk_DEF878, &qword_AFD9A8, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_103C48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_103C90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_103D2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_103D74(uint64_t a1)
{
  sub_AB5790();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return sub_AB5FB0();
}

uint64_t sub_103E60(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF9E0, &qword_AFDC10);
  __chkstk_darwin();
  sub_15F84(a1, &v4 - v2, &qword_DEF9E0, &qword_AFDC10);
  return sub_AB60D0();
}

unint64_t sub_103F0C()
{
  result = qword_DEF9C0;
  if (!qword_DEF9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEF9A0, &qword_AFDB18);
    sub_103D2C(&qword_DEF9C8, type metadata accessor for JSSearchLandingUpsellView, &unk_AFDC8C);
    sub_36A00(&qword_DEF9D0, &qword_DEF9D8, &qword_AFDB58, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEF9C0);
  }

  return result;
}

uint64_t sub_103FFC()
{

  return swift_deallocObject();
}

uint64_t sub_104094(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1040E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10414C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1041B4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_104254(char *a1, char *a2, double a3, double a4)
{
  v9 = *(v4 + 24);
  v10 = *(v9 + 80);
  v11 = *(v9 + 88);
  *(v9 + 80) = a3;
  *(v9 + 88) = a4;
  sub_75614(v10, v11);
  v12 = *(v9 + 96);
  v13 = *(v9 + 104);
  *(v9 + 96) = a3;
  *(v9 + 104) = a4;
  sub_756F8(v12, v13);
  v14 = *(v9 + 144);
  *(v9 + 144) = 0;
  if (v14)
  {
    v15 = [*(v9 + 112) image];
    sub_788B8(v15);
  }

  if (a2)
  {
    v16 = OBJC_IVAR____TtC11MusicJSCore14JSVideoArtwork_cropStyle;
    swift_beginAccess();
    v17 = *&a2[v16];
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = ICStoreArtworkInfoCropStyleSpecificRectangle;
    }

    v19 = a2;
    v20 = v17;
    v21 = JSVideoArtwork.artworkCatalog(defaultCropStyle:)(v18);

    sub_751F4(v21);
  }

  if (a1)
  {
    v22 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
    swift_beginAccess();
    v23 = *&a1[v22];
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = ICStoreArtworkInfoCropStyleSpecificRectangle;
    }

    v25 = a1;
    v26 = v23;
    v27 = JSArtwork.artworkCatalog(defaultCropStyle:)(v24);

    sub_74EA4(v27);
  }

  sub_76B28(0.0, 0.0, a3, a4);
  return *(v9 + 112);
}

uint64_t sub_10444C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF9F8, &qword_AFDC68);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10451C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF9F8, &qword_AFDC68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1045CC(uint64_t a1)
{
  sub_104694(319);
  if (v1 <= 0x3F)
  {
    sub_104728(319, &qword_DEFA70, &qword_DEF9E0, &qword_AFDC10, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10478C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_104694(uint64_t a1)
{
  if (!qword_DEFA68)
  {
    type metadata accessor for JSSearchLandingUpsell(255);
    sub_103D2C(&qword_DEF9B0, type metadata accessor for JSSearchLandingUpsell, &protocol conformance descriptor for JSSearchLandingUpsell);
    v1 = sub_AB5B80();
    if (!v2)
    {
      atomic_store(v1, &qword_DEFA68);
    }
  }
}

void sub_104728(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10478C(uint64_t a1)
{
  if (!qword_DEFA78)
  {
    _s16MusicApplication11EnvironmentCMa_0(255);
    sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0, &unk_AFDAA0);
    v1 = sub_AB5F30();
    if (!v2)
    {
      atomic_store(v1, &qword_DEFA78);
    }
  }
}

unint64_t sub_1048A4()
{
  result = qword_DEFAE8;
  if (!qword_DEFAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFAD0, &qword_AFDD00);
    sub_10495C();
    sub_36A00(&qword_DEF9D0, &qword_DEF9D8, &qword_AFDB58, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFAE8);
  }

  return result;
}

unint64_t sub_10495C()
{
  result = qword_DEFAF0;
  if (!qword_DEFAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFAC8, &qword_AFDCF8);
    sub_103D2C(&qword_DEFAF8, type metadata accessor for JSSearchLandingUpsellCompactContentView, &unk_AFDE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFAF0);
  }

  return result;
}

unint64_t sub_104A18()
{
  result = qword_DEFB00;
  if (!qword_DEFB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFAB8, &qword_AFDCE8);
    sub_104AD0();
    sub_36A00(&qword_DEF9D0, &qword_DEF9D8, &qword_AFDB58, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFB00);
  }

  return result;
}

unint64_t sub_104AD0()
{
  result = qword_DEFB08;
  if (!qword_DEFB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFAB0, &qword_AFDCE0);
    sub_103D2C(&qword_DEFB10, type metadata accessor for JSSearchLandingUpsellRegularContentView, &unk_AFDDB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFB08);
  }

  return result;
}

uint64_t sub_104B8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_104C24(uint64_t a1)
{
  sub_104694(319);
  if (v1 <= 0x3F)
  {
    sub_10478C(319);
    if (v2 <= 0x3F)
    {
      sub_104CC0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_104CC0(uint64_t a1)
{
  if (!qword_DEFB90)
  {
    sub_AB5790();
    v1 = sub_AB57D0();
    if (!v2)
    {
      atomic_store(v1, &qword_DEFB90);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_85Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFB20, &qword_AFDD48);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_86Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFB20, &qword_AFDD48);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_104EB4()
{
  result = qword_DEFC60;
  if (!qword_DEFC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFC68, "6\\\r");
    sub_1048A4();
    sub_104A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFC60);
  }

  return result;
}

unint64_t sub_104F78()
{
  result = qword_DEFCA8;
  if (!qword_DEFCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFC80, &qword_AFDE60);
    sub_105030();
    sub_36A00(&qword_DE8518, &qword_DE8520, &qword_AF8180, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFCA8);
  }

  return result;
}

unint64_t sub_105030()
{
  result = qword_DEFCB0;
  if (!qword_DEFCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFC78, &qword_AFDE58);
    sub_36A00(&qword_DEFCB8, &qword_DEFC70, &qword_AFDE50, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFCB0);
  }

  return result;
}

unint64_t sub_105114()
{
  result = qword_DEFCC0;
  if (!qword_DEFCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFC90, &qword_AFDE70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFC80, &qword_AFDE60);
    sub_104F78();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFCC0);
  }

  return result;
}

double sub_1051DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
  }

  return result;
}

uint64_t objectdestroy_99Tm(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = v1 + ((*(*v2 + 80) + 16) & ~*(*v2 + 80));

  v4 = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFAE0, &qword_AFDD40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_AB5790();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_105454@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AB6150();
  *a1 = result & 1;
  return result;
}

unint64_t sub_105484()
{
  result = qword_DEFD68;
  if (!qword_DEFD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFD60, &qword_AFDF58);
    sub_10553C();
    sub_36A00(&qword_DE8518, &qword_DE8520, &qword_AF8180, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFD68);
  }

  return result;
}

unint64_t sub_10553C()
{
  result = qword_DEFD70;
  if (!qword_DEFD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFD78, &qword_AFDF60);
    sub_36A00(&qword_DEFD80, &qword_DEFD88, &qword_AFDF68, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFD70);
  }

  return result;
}

unint64_t sub_105638()
{
  result = qword_DEFD90;
  if (!qword_DEFD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFD40, &qword_AFDF38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFD60, &qword_AFDF58);
    sub_105484();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFD90);
  }

  return result;
}

uint64_t sub_105700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFD50, &qword_AFDF48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_105770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFD50, &qword_AFDF48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_105854(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5F8, &qword_AF9930);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_105924(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5F8, &qword_AF9930);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1059D4(uint64_t a1)
{
  sub_105A58();
  if (v1 <= 0x3F)
  {
    sub_814B0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_105A58()
{
  result = qword_DEFE38;
  if (!qword_DEFE38)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_DEFE38);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_105AD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_105B18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_105BB0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_105C0C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_105C80()
{
  result = qword_DEFE70;
  if (!qword_DEFE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFCC8, &qword_AFDE90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFC90, &qword_AFDE70);
    sub_105114();
    swift_getOpaqueTypeConformance2();
    sub_36A00(&qword_DEF9D0, &qword_DEF9D8, &qword_AFDB58, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFE70);
  }

  return result;
}

unint64_t sub_105DBC()
{
  result = qword_DEFE88;
  if (!qword_DEFE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFE88);
  }

  return result;
}

unint64_t sub_105EA4()
{
  result = qword_DEFE98;
  if (!qword_DEFE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFE90, &qword_AFE350);
    sub_105F30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFE98);
  }

  return result;
}

unint64_t sub_105F30()
{
  result = qword_DEFEA0;
  if (!qword_DEFEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFEA8, &qword_AFE358);
    sub_105FE8();
    sub_36A00(&qword_DEFED0, &qword_DFEA90, &qword_B09B60, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFEA0);
  }

  return result;
}

unint64_t sub_105FE8()
{
  result = qword_DEFEB0;
  if (!qword_DEFEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFEB8, &unk_AFE360);
    sub_845D0();
    sub_36A00(&qword_DEFEC0, &qword_DEFEC8, &qword_AFE380, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFEB0);
  }

  return result;
}

unint64_t sub_1060B0()
{
  result = qword_DEFEF0;
  if (!qword_DEFEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFEE0, &qword_AFE3F0);
    swift_getOpaqueTypeConformance2();
    sub_103D2C(&qword_DEB7B8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFEF0);
  }

  return result;
}

unint64_t sub_10619C()
{
  result = qword_DEFF08;
  if (!qword_DEFF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFF00, &qword_AFE408);
    sub_106254();
    sub_36A00(&qword_DEFF50, &qword_DFEB20, &qword_AFE410, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFF08);
  }

  return result;
}

unint64_t sub_106254()
{
  result = qword_DEFF10;
  if (!qword_DEFF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFF18, &qword_AFE418);
    sub_10630C();
    sub_36A00(&qword_DE8518, &qword_DE8520, &qword_AF8180, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFF10);
  }

  return result;
}

unint64_t sub_10630C()
{
  result = qword_DEFF20;
  if (!qword_DEFF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFF28, &qword_AFE420);
    sub_106398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFF20);
  }

  return result;
}

unint64_t sub_106398()
{
  result = qword_DEFF30;
  if (!qword_DEFF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFF38, &qword_AFE428);
    sub_36A00(&qword_DEFF40, &qword_DEFF48, &qword_AFE430, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFF30);
  }

  return result;
}

uint64_t sub_106450@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AB6050();
  *a1 = result & 1;
  return result;
}

unint64_t sub_106504()
{
  result = qword_DEFF60;
  if (!qword_DEFF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFF60);
  }

  return result;
}

uint64_t sub_10659C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFEE0, &qword_AFE3F0);
  sub_1060B0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_106648()
{
  result = qword_DEFF88;
  if (!qword_DEFF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFF90, &qword_AFE4E0);
    sub_106700();
    sub_36A00(&qword_DEB890, &qword_DEB898, &unk_AFB040, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFF88);
  }

  return result;
}

unint64_t sub_106700()
{
  result = qword_DEFF98;
  if (!qword_DEFF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFFA0, &qword_AFE4E8);
    sub_10678C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFF98);
  }

  return result;
}

unint64_t sub_10678C()
{
  result = qword_DEFFA8;
  if (!qword_DEFFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFFB0, &qword_AFE4F0);
    sub_106844();
    sub_36A00(&qword_DEDBF8, &qword_DFE960, &unk_AFC1B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFFA8);
  }

  return result;
}

unint64_t sub_106844()
{
  result = qword_DEFFB8;
  if (!qword_DEFFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFFC0, &qword_AFE4F8);
    sub_1068FC();
    sub_36A00(&qword_DEFFE8, &qword_DEFFF0, &unk_AFE510, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFFB8);
  }

  return result;
}

unint64_t sub_1068FC()
{
  result = qword_DEFFC8;
  if (!qword_DEFFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFFD0, &qword_AFE500);
    sub_36A00(&qword_DEFFD8, &qword_DEFFE0, &qword_AFE508, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFFC8);
  }

  return result;
}

uint64_t TextDrawing.Cache.__allocating_init()()
{
  v0 = swift_allocObject();
  TextDrawing.Cache.init()();
  return v0;
}

void *TextDrawing.Cache.init()()
{
  v1 = v0;
  *(v0 + 24) = 0;
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  *(v0 + 32) = v4;
  sub_109468();
  if (!v5)
  {
    v5 = [objc_opt_self() systemBlueColor];
  }

  *(v0 + 40) = v5;
  _s5CacheC3KeyCMa();
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  *(v6 + 32) = xmmword_AF4EA0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 48) = sub_107D34;
  *(v6 + 72) = xmmword_AF4EB0;
  *(v6 + 88) = 1;
  *(v6 + 96) = 0x4030000000000000;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v6 + 104) = 0;
  *(v0 + 72) = v6;
  v7 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v8 = objc_opt_self();
  v9 = [v8 blackColor];
  v10 = [v8 clearColor];
  _s5CacheC17AttributesWrapperCMa();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  *(v11 + 32) = 0;
  *(v11 + 40) = 4;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 64) = v7;
  *(v0 + 88) = v11;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 16) = *(v0 + 32);
  v12 = *(v0 + 40);
  swift_beginAccess();
  v13 = *(v0 + 24);
  v1[3] = v12;
  v14 = v12;

  v15 = [objc_allocWithZone(NSCache) init];
  v1[8] = v15;
  [v15 setTotalCostLimit:200000];
  v16 = [objc_allocWithZone(NSCache) init];
  v1[10] = v16;
  [v16 setCountLimit:50];
  v17 = UIPresentationControllerPresentationTransitionWillBeginNotification;
  v18 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v19 = v17;

  v1[6] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v19, 0, 1, 1, sub_109918, v18);

  v20 = UIPresentationControllerPresentationTransitionDidEndNotification;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = v20;

  swift_allocObject();
  v1[7] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v22, 0, 1, 1, sub_109920, v21);

  return v1;
}

void sub_106DBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 96);
    v4 = __CFADD__(v3, 1);
    v5 = v3 + 1;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      *(Strong + 96) = v5;
    }
  }
}

double sub_106E1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 96);
    if (v4 && (v5 = v4 - 1, (*(Strong + 96) = v5) != 0) || (*(Strong + 104) & 1) == 0)
    {
    }

    else
    {
      v6 = Strong;
      *(Strong + 104) = 0;
      v7 = [objc_opt_self() defaultCenter];
      if (qword_DE6828 != -1)
      {
        swift_once();
      }

      [v7 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v6];
    }
  }

  return result;
}

void sub_106F0C()
{
  v1 = v0;
  swift_beginAccess();
  if (sub_AB38D0())
  {
    *(v0 + 32) = *(v0 + 16);
    [*(v0 + 64) removeAllObjects];
    [*(v0 + 80) removeAllObjects];
    if (*(v0 + 96))
    {
      *(v0 + 104) = 1;
    }

    else
    {
      v2 = [objc_opt_self() defaultCenter];
      if (qword_DE6828 != -1)
      {
        swift_once();
      }

      [v2 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v1];
    }
  }
}

void TextDrawing.Cache.displayScale.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  sub_106F0C();
}

uint64_t (*TextDrawing.Cache.displayScale.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1070F4;
}

void sub_10710C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    sub_109468();
    if (!v3)
    {
      v3 = [objc_opt_self() systemBlueColor];
    }

    v2 = v3;
  }

  v4 = *(v0 + 40);
  v5 = v1;
  if (v4 == v2)
  {
  }

  else
  {
    v6 = [v4 isEqual:v2];

    if (!v6)
    {
      v7 = *(v0 + 40);
      *(v0 + 40) = v2;
      v2 = v2;

      [*(v0 + 64) removeAllObjects];
      [*(v0 + 80) removeAllObjects];
      if (*(v0 + 96))
      {

        *(v0 + 104) = 1;
        return;
      }

      v8 = [objc_opt_self() defaultCenter];
      if (qword_DE6828 != -1)
      {
        swift_once();
      }

      [v8 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v0];
    }
  }
}

void *TextDrawing.Cache.tintColor.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void TextDrawing.Cache.tintColor.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
  v4 = a1;

  sub_10710C();
}

uint64_t (*TextDrawing.Cache.tintColor.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_107380;
}

uint64_t sub_107398(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id sub_1073E0()
{
  result = [objc_allocWithZone(NSCache) init];
  qword_DEFFF8 = result;
  return result;
}

double TextDrawing.Cache.drawingContextForText(_:labelProperties:allowedSize:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v13 = v6[4];
  v14 = *(v6 + 5);
  v15 = *(v6 + 8);
  v16 = *(v6 + 9);
  v18 = *(v6 + 10);
  v17 = *(v6 + 11);
  v19 = v14;
  sub_108594(a1, a2, a3, v19, v15, v16, v18, v17, v25, a5, a6, v13);

  v20 = v29;
  a4[4] = v28;
  a4[5] = v20;
  v21 = v31;
  a4[6] = v30;
  a4[7] = v21;
  v22 = v25[1];
  *a4 = v25[0];
  a4[1] = v22;
  result = *&v26;
  v24 = v27;
  a4[2] = v26;
  a4[3] = v24;
  return result;
}

void sub_1074F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF4EC0;
  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;
  sub_AB94A0(v1);
  ExplicitRestrictionsController.symbols.unsafeMutableAddressor();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF04D8, &qword_AFE6E8);
  sub_ABAF70();

  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  qword_DF0000 = v0;
}

NSString sub_1075DC()
{
  result = sub_AB9260();
  static TextDrawing.Cache.didInvalidateNotification = result;
  return result;
}

uint64_t *TextDrawing.Cache.didInvalidateNotification.unsafeMutableAddressor()
{
  if (qword_DE6828 != -1)
  {
    swift_once();
  }

  return &static TextDrawing.Cache.didInvalidateNotification;
}

id static TextDrawing.Cache.didInvalidateNotification.getter()
{
  if (qword_DE6828 != -1)
  {
    swift_once();
  }

  v1 = static TextDrawing.Cache.didInvalidateNotification;

  return v1;
}

Swift::Void __swiftcall TextDrawing.Cache.beginCoalescingInvalidationNotifications()()
{
  v1 = *(v0 + 96);
  v2 = __CFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 96) = v3;
  }
}

Swift::Void __swiftcall TextDrawing.Cache.endCoalescingInvalidationNotifications()()
{
  v1 = *(v0 + 96);
  if (!v1 || (v2 = v1 - 1, (*(v0 + 96) = v2) == 0))
  {
    if (*(v0 + 104) == 1)
    {
      *(v0 + 104) = 0;
      v3 = [objc_opt_self() defaultCenter];
      v4 = v3;
      if (qword_DE6828 != -1)
      {
        swift_once();
        v3 = v4;
      }

      [v3 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v0];
    }
  }
}

Swift::Void __swiftcall TextDrawing.Cache.invalidate()()
{
  [*(v0 + 64) removeAllObjects];
  [*(v0 + 80) removeAllObjects];
  if (*(v0 + 96))
  {
    *(v0 + 104) = 1;
  }

  else
  {
    v1 = [objc_opt_self() defaultCenter];
    v2 = v1;
    if (qword_DE6828 != -1)
    {
      swift_once();
      v1 = v2;
    }

    [v1 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v0];
  }
}

id *TextDrawing.Cache.deinit()
{

  return v0;
}

uint64_t TextDrawing.Cache.__deallocating_deinit()
{
  TextDrawing.Cache.deinit();

  return swift_deallocClassInstance();
}

BOOL sub_107998(uint64_t a1)
{
  if (a1)
  {
    _s5CacheC17AttributesWrapperCMa();
    swift_unknownObjectRetain();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      if (v2 == v1)
      {
        swift_unknownObjectRelease();
        return 1;
      }

      else
      {
        v11 = *(v1 + 64);
        v3 = *(v1 + 48);
        v10[1] = *(v1 + 32);
        v10[2] = v3;
        v10[0] = *(v1 + 16);
        v4 = *(v2 + 16);
        v5 = *(v2 + 32);
        v6 = *(v2 + 48);
        v13 = *(v2 + 64);
        v12[1] = v5;
        v12[2] = v6;
        v12[0] = v4;
        sub_109A00(v10, v9);
        sub_109A00(v12, v9);
        v7 = _s16MusicApplication14TextAttributesV2eeoiySbAC_ACtFZ_0(v10, v12);
        sub_109A5C(v12);
        sub_109A5C(v10);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t sub_107AAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

Swift::Int sub_107B00()
{
  v1 = *v0;
  sub_ABB5C0();
  v2 = *(v1 + 32);
  v5 = *(v1 + 16);
  v6 = v2;
  v7 = *(v1 + 48);
  v8 = *(v1 + 64);
  TextAttributes.hash(into:)(v4);
  return sub_ABB610();
}

uint64_t sub_107B60(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *(*v1 + 48);
  v8[1] = *(*v1 + 32);
  v8[2] = v5;
  v9 = *(v3 + 64);
  v8[0] = v4;
  sub_109A00(v8, v7);
  TextAttributes.hash(into:)(a1);
  return sub_109A5C(v8);
}

Swift::Int sub_107BC4(uint64_t a1)
{
  sub_ABB5C0();
  v2 = *(*v1 + 16);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 48);
  v9 = *(*v1 + 64);
  v8[1] = v3;
  v8[2] = v4;
  v8[0] = v2;
  sub_109A00(v8, &v6);
  TextAttributes.hash(into:)(v7);
  sub_109A5C(v8);
  return sub_ABB610();
}

BOOL sub_107C34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == *a2)
  {
    return 1;
  }

  else
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 32);
    v6 = *(v2 + 48);
    v14 = *(v2 + 64);
    v13[1] = v5;
    v13[2] = v6;
    v13[0] = v4;
    v7 = *(v3 + 16);
    v8 = *(v3 + 32);
    v9 = *(v3 + 48);
    v16 = *(v3 + 64);
    v15[1] = v8;
    v15[2] = v9;
    v15[0] = v7;
    sub_109A00(v13, v12);
    sub_109A00(v15, v12);
    v10 = _s16MusicApplication14TextAttributesV2eeoiySbAC_ACtFZ_0(v13, v15);
    sub_109A5C(v15);
    sub_109A5C(v13);
  }

  return v10;
}

uint64_t sub_107CE0()
{
  v1 = v0[6];
  v6[4] = v0[5];
  v6[5] = v1;
  v2 = v0[8];
  v6[6] = v0[7];
  v6[7] = v2;
  v3 = v0[2];
  v6[0] = v0[1];
  v6[1] = v3;
  v4 = v0[4];
  v6[2] = v0[3];
  v6[3] = v4;
  sub_109AB0(v6);
  return swift_deallocClassInstance();
}

id sub_107D34(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(NSAttributedString);
  v3 = sub_AB9260();
  v4 = [v2 initWithString:v3];

  return v4;
}

uint64_t sub_107DDC(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_12;
  }

  _s5CacheC3KeyCMa();
  swift_unknownObjectRetain();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2;
  if (v2 == v1)
  {
    swift_unknownObjectRelease();
    v11 = 1;
    return v11 & 1;
  }

  v4 = *(v1 + 16) == *(v2 + 16) && *(v1 + 24) == *(v2 + 24);
  if (!v4 && (sub_ABB3C0() & 1) == 0 || (v5 = *(v1 + 96), v14[3] = *(v1 + 80), v14[4] = v5, v6 = *(v1 + 64), v14[1] = *(v1 + 48), v14[2] = v6, v14[0] = *(v1 + 32), v8 = v3[3], v7 = v3[4], v9 = v3[6], v15[3] = v3[5], v15[4] = v9, v15[1] = v8, v15[2] = v7, v15[0] = v3[2], sub_2F118(v14, v13), sub_2F118(v15, v13), v10 = _s16MusicApplication19TextLabelPropertiesV2eeoiySbAC_ACtFZ_0(v14, v15), sub_2F174(v15), sub_2F174(v14), (v10 & 1) == 0))
  {
LABEL_11:
    swift_unknownObjectRelease();
LABEL_12:
    v11 = 0;
    return v11 & 1;
  }

  v11 = sub_ABA520();
  swift_unknownObjectRelease();
  return v11 & 1;
}

uint64_t sub_107F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();

  LOBYTE(a4) = a4(a3);
  swift_unknownObjectRelease();

  return a4 & 1;
}

uint64_t sub_107F88()
{

  sub_C7504(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

Swift::Int sub_107FD4()
{
  sub_ABB5C0();
  sub_AB93F0();
  v1 = *(v0 + 80);
  v7 = *(v0 + 64);
  v8 = v1;
  v9 = *(v0 + 96);
  v2 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = v2;
  TextLabelProperties.hash(into:)(v4);
  sub_E21B8(*(v0 + 112), *(v0 + 120));
  return sub_ABB610();
}

void sub_108070(uint64_t a1)
{
  v3 = *v1;

  sub_AB93F0();

  v4 = *(v3 + 48);
  v5 = *(v3 + 80);
  v6 = *(v3 + 96);
  v8[2] = *(v3 + 64);
  v8[3] = v5;
  v8[4] = v6;
  v8[0] = *(v3 + 32);
  v8[1] = v4;
  sub_2F118(v8, &v7);
  TextLabelProperties.hash(into:)(a1);
  sub_2F174(v8);
  sub_E21B8(*(v3 + 112), *(v3 + 120));
}

Swift::Int sub_10810C(uint64_t a1)
{
  sub_ABB5C0();
  v2 = *v1;

  sub_AB93F0();

  v3 = *(v2 + 48);
  v4 = *(v2 + 80);
  v5 = *(v2 + 96);
  v9[2] = *(v2 + 64);
  v9[3] = v4;
  v9[4] = v5;
  v9[0] = *(v2 + 32);
  v9[1] = v3;
  sub_2F118(v9, v7);
  TextLabelProperties.hash(into:)(v8);
  sub_2F174(v9);
  sub_E21B8(*(v2 + 112), *(v2 + 120));
  return sub_ABB610();
}

uint64_t sub_1081CC(void *a1, uint64_t *a2)
{
  v2 = sub_AB92A0();
  v4 = v3;
  if (v2 == sub_AB92A0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_ABB3C0();
  }

  return v7 & 1;
}

uint64_t sub_10825C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v17 = v2;
  v18 = v3;
  v6 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v6 || (sub_ABB3C0()) && (v7 = *(a1 + 80), v15[2] = *(a1 + 64), v15[3] = v7, v15[4] = *(a1 + 96), v8 = *(a1 + 48), v15[0] = *(a1 + 32), v15[1] = v8, v9 = *(a2 + 80), v16[2] = *(a2 + 64), v16[3] = v9, v16[4] = *(a2 + 96), v10 = *(a2 + 48), v16[0] = *(a2 + 32), v16[1] = v10, sub_2F118(v15, v14), sub_2F118(v16, v14), v11 = _s16MusicApplication19TextLabelPropertiesV2eeoiySbAC_ACtFZ_0(v15, v16), sub_2F174(v16), sub_2F174(v15), (v11))
  {
    v12 = sub_ABA520();
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void _s16MusicApplication11TextDrawingV5CacheC019additionalInsetsForC0_4fontSo06UIEdgeG0VSS_So6UIFontCtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  left = UIEdgeInsetsZero.left;
  top = UIEdgeInsetsZero.top;
  v21 = right;
  v22 = bottom;
  if (String.containsExcessiveHeightCharacters.getter(a1, a2))
  {
    if (qword_DE6820 != -1)
    {
      swift_once();
    }

    v8 = qword_DF0000;
    v20[0] = a1;
    v20[1] = a2;
    __chkstk_darwin();
    v19[2] = v20;

    v9 = sub_1B39BC(sub_109BB0, v19, v8);

    if ((v9 & 1) == 0)
    {
      if (qword_DE6818 != -1)
      {
        swift_once();
      }

      v10 = [qword_DEFFF8 objectForKey:a3];
      if (v10)
      {
        v11 = v10;
        UIEdgeInsetsFromString(v10);
      }

      else
      {
        CTFontGetLanguageAwareOutsets();
        v13 = left;
        v12 = top;
        v15 = v21;
        v14 = v22;
        v16 = qword_DEFFF8;
        v25.top = v12;
        v25.left = v13;
        v25.bottom = v14;
        v25.right = v15;
        v17 = NSStringFromUIEdgeInsets(v25);
        if (v17)
        {
          v18 = v17;
          [v16 setObject:v17 forKey:a3];
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

void sub_108594(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSString *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>)
{
  v160 = a7;
  v161 = a9;
  v157 = a4;
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;

  v21 = *(a6 + 80);
  v175[2] = *(a6 + 64);
  v175[3] = v21;
  v175[4] = *(a6 + 96);
  v22 = *(a6 + 48);
  v175[0] = *(a6 + 32);
  v175[1] = v22;
  v23 = *(a3 + 48);
  *(a6 + 64) = *(a3 + 32);
  *(a6 + 80) = v23;
  *(a6 + 96) = *(a3 + 64);
  v24 = *(a3 + 16);
  *(a6 + 32) = *a3;
  *(a6 + 48) = v24;
  sub_2F118(a3, &v163);
  sub_2F174(v175);
  *(a6 + 112) = a10;
  *(a6 + 120) = a11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF04D0, &qword_AFE6E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = UIFontTextStyleSubheadline;
  *(inited + 40) = UIFontTextStyleHeadline;
  v26 = UIFontTextStyleSubheadline;
  v27 = UIFontTextStyleHeadline;
  v28 = [a5 objectForKey:a6];
  if (v28)
  {
    v29 = v28[6];
    v167 = v28[5];
    v168 = v29;
    v30 = v28[8];
    v169 = v28[7];
    v170 = v30;
    v31 = v28[2];
    v163 = v28[1];
    v164 = v31;
    v32 = v28[4];
    v165 = v28[3];
    v166 = v32;
    sub_109B04(&v163, v162);

    v33 = *(&v170 + 1);
    v34 = v170;
    v35 = *(&v169 + 1);
    v36 = *&v169;
    v37 = *(&v167 + 1);
    top = *&v167;
    v39 = *(&v168 + 1);
    v40 = *&v168;
    v41 = *(&v166 + 1);
    v42 = *&v166;
    v44 = *(&v165 + 1);
    v43 = v165;
    v46 = *(&v163 + 1);
    v45 = v163;
    v47 = v164;
    v48 = BYTE8(v164);
LABEL_63:
    LOBYTE(v163) = v48;
    v143 = v161;
    *v161 = v45;
    v143[1] = v46;
    v143[2] = v47;
    *(v143 + 24) = v48;
    v143[4] = v43;
    v143[5] = v44;
    *(v143 + 6) = v42;
    *(v143 + 7) = v41;
    *(v143 + 8) = top;
    *(v143 + 9) = v37;
    *(v143 + 10) = v40;
    *(v143 + 11) = v39;
    *(v143 + 12) = v36;
    *(v143 + 13) = v35;
    v143[14] = v34;
    *(v143 + 15) = v33;
    return;
  }

  v49 = v160;
  v155 = inited;
  v158 = a1;
  v159 = a2;
  v151 = a5;
  v50 = *(a3 + 8);
  v51 = *(a3 + 16);
  v52 = *(a3 + 24);
  v53 = *(a3 + 40);
  if ((v53 & 0x8000000000000000) == 0)
  {
    v54 = *(a3 + 48);
    v55 = *(a3 + 32);
    *&v171 = *a3;
    v56 = v171;
    *(&v171 + 1) = v50;
    LOBYTE(v172) = v51;
    *(&v172 + 1) = v52;
    *&v173 = v55;
    v156 = *&v53;
    BYTE8(v173) = v53;
    v174 = v54;
    v57 = *(a8 + 24);
    object = *(a8 + 16);
    v154 = v57;
    v58 = *(a8 + 64);
    *(a8 + 64) = v54;
    v59 = v172;
    *(a8 + 16) = v171;
    *(a8 + 32) = v59;
    *(a8 + 48) = v173;
    v60 = v56;
    v61 = v50;
    v62 = v54;
    v63 = v60;
    v64 = v61;
    v65 = v62;

    v66 = [v49 objectForKey:a8];
    if (!v66 || (v67 = v66, *&v163 = 0, type metadata accessor for Key(0), sub_109BD0(&qword_DE6EF0, type metadata accessor for Key, &unk_AF674C), sub_AB8FE0(), v67, (v68 = v163) == 0))
    {
      v68 = TextAttributes.toDictionary(tintColor:)(v157);
      _s5CacheC17AttributesWrapperCMa();
      v69 = swift_allocObject();
      v70 = v172;
      *(v69 + 16) = v171;
      *(v69 + 32) = v70;
      *(v69 + 48) = v173;
      *(v69 + 64) = v174;
      sub_2F118(a3, &v163);
      type metadata accessor for Key(0);
      sub_109BD0(&qword_DE6EF0, type metadata accessor for Key, &unk_AF674C);
      isa = sub_AB8FD0().super.isa;
      [v49 setObject:isa forKey:v69];
    }

    v72 = String.applyingCapitalization(_:)(SLOBYTE(v156));
    countAndFlagsBits = v72._countAndFlagsBits;
    v74 = *(a3 + 56);
    object = v72._object;
    v154 = v68;
    if (v74 < 2)
    {
    }

    else
    {

      v75 = v65;
      v76 = [v75 _fontAdjustedForCurrentContentSizeCategory];
      if (v76)
      {
        v77 = v76;

        v75 = v77;
      }

      v78 = [v75 fontDescriptor];

      v79 = [v78 fontAttributes];
      type metadata accessor for AttributeName(0);
      sub_109BD0(&qword_DE78C8, type metadata accessor for AttributeName, &unk_AF74C8);
      v80 = sub_AB8FF0();

      if (*(v80 + 16) && (v81 = sub_2F5AD8(), (v82 & 1) != 0))
      {
        sub_808B0(*(v80 + 56) + 32 * v81, &v163);
      }

      else
      {
        v163 = 0u;
        v164 = 0u;
      }

      if (*(&v164 + 1))
      {
        type metadata accessor for TextStyle(0);
        if (swift_dynamicCast())
        {
          v92 = v162[0];

          *&v163 = v162[0];
          __chkstk_darwin();
          v144[2] = &v163;
          LODWORD(v152) = sub_1B3A68(sub_109B90, v144, v155);

LABEL_25:
          v90 = v65;
          v93 = [v90 _fontAdjustedForCurrentContentSizeCategory];
          *&v53 = v156;
          if (v93)
          {
            v94 = v93;

            v90 = v94;
          }

          sub_2F174(a3);
          v95 = v90;
          goto LABEL_28;
        }
      }

      else
      {

        sub_9BC10(&v163);
      }
    }

    LODWORD(v152) = 0;
    goto LABEL_25;
  }

  sub_2F118(a3, &v163);
  countAndFlagsBits = v51(v158, v159);
  v83 = countAndFlagsBits;
  v84 = [v83 length];
  if (v84 <= 0)
  {

    v90 = 0;
    LODWORD(v152) = 0;
    object = 0;
    v154 = 0;
  }

  else
  {
    v160 = countAndFlagsBits;
    v156 = *&v53;
    v162[0] = 0;
    *&v171 = 0;
    v157 = NSFontAttributeName;
    v85 = v84;
    v86 = swift_allocObject();
    *(v86 + 16) = &v171;
    *(v86 + 24) = v162;
    v87 = swift_allocObject();
    *(v87 + 16) = sub_9B94C;
    *(v87 + 24) = v86;
    *&v165 = sub_109B70;
    *(&v165 + 1) = v87;
    *&v163 = _NSConcreteStackBlock;
    *(&v163 + 1) = 1107296256;
    *&v164 = sub_9B8A0;
    *(&v164 + 1) = &block_descriptor_34;
    v88 = _Block_copy(&v163);

    [v83 enumerateAttribute:v157 inRange:0 options:v85 usingBlock:{0, v88}];

    _Block_release(v88);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_65;
    }

    v90 = v162[0];

    v91 = v90;

    LODWORD(v152) = 0;
    object = 0;
    v154 = 0;
    *&v53 = v156;
    countAndFlagsBits = v160;
  }

LABEL_28:
  v96 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v96 setWantsBaselineOffset:1];
  [v96 setWantsNumberOfLineFragments:1];
  v97 = *(a3 + 56);
  if ((v97 & 0x8000000000000000) == 0)
  {
    [v96 setMaximumNumberOfLines:*(a3 + 56)];
    [v96 setWrapsForTruncationMode:v97 != 1];
    *&v163 = a10;
    v162[0] = 0;
    sub_471A4();
    v98 = sub_AB3900();
    v149 = a10;
    if (v98)
    {
      v99 = 5.99231045e307;
    }

    else
    {
      *&v163 = a10;
      v162[0] = 0xBFF0000000000000;
      sub_7FD28();
      if (sub_AB38E0())
      {
        v99 = 5.99231045e307;
      }

      else
      {
        *&v163 = a10;
        v162[0] = 0x7FD5555555555555;
        if (sub_AB38F0())
        {
          v99 = 5.99231045e307;
        }

        else
        {
          v99 = a10;
        }
      }
    }

    *&v163 = a11;
    v162[0] = 0;
    v100 = sub_AB3900();
    v150 = a11;
    if (v100)
    {
      v101 = 5.99231045e307;
    }

    else
    {
      *&v163 = a11;
      v162[0] = 0xBFF0000000000000;
      sub_7FD28();
      if (sub_AB38E0())
      {
        v101 = 5.99231045e307;
      }

      else
      {
        *&v163 = a11;
        v162[0] = 0x7FD5555555555555;
        if (sub_AB38F0())
        {
          v101 = 5.99231045e307;
        }

        else
        {
          v101 = a11;
        }
      }
    }

    v148 = a3;
    [v96 setCachesLayout:1];
    v157 = v96;
    v160 = countAndFlagsBits;
    if (v53 < 0)
    {
      [countAndFlagsBits boundingRectWithSize:1 options:v96 context:{v99, v101}];
    }

    else
    {

      v102 = v154;

      v103 = sub_AB9260();
      sub_3E856C(v102);
      type metadata accessor for Key(0);
      v104 = v90;
      sub_109BD0(&qword_DE6EF0, type metadata accessor for Key, &unk_AF674C);
      v105 = sub_AB8FD0().super.isa;

      [v103 boundingRectWithSize:1 options:v105 attributes:v96 context:{v99, v101}];

      v90 = v104;
    }

    v147 = v53 >> 63;
    sub_AB3A10();
    if (v99 < v106)
    {
      v106 = v99;
    }

    v145 = v106;
    v107 = a12;
    sub_AB3A10();
    if (v101 < v108)
    {
      v108 = v101;
    }

    if (LOBYTE(v152))
    {
      v41 = v108 + 2.0;
    }

    else
    {
      v41 = v108;
    }

    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v146 = v90;
    if (v90)
    {
      _s16MusicApplication11TextDrawingV5CacheC019additionalInsetsForC0_4fontSo06UIEdgeG0VSS_So6UIFontCtFZ_0(v158, v159, v90);
      top = v114;
      v40 = v113;
      v152 = v115;
      v116 = v160;
      v117 = v157;
      v156 = v112;
      if (v114 != UIEdgeInsetsZero.top || v112 != left || v113 != bottom || v152 != right)
      {
        v33 = v107;
        sub_AB3A10();
        v42 = v145 + v118;
        [v90 ascender];
        [v90 descender];
        sub_AB3A10();
        v120 = v119;
        v121 = [(NSString *)v117 numberOfLineFragments];

        v41 = v120 * v121;
        goto LABEL_62;
      }

      v33 = v107;
    }

    else
    {
      top = UIEdgeInsetsZero.top;
      v156 = left;
      v40 = bottom;
      v152 = right;
      v33 = v107;
      v116 = v160;
      v117 = v157;
    }

    v42 = v145;
LABEL_62:
    [(NSString *)v117 baselineOffset];
    v123 = v122;
    sub_AB3A00();
    v125 = v124;
    [(NSString *)v117 firstBaselineOffset];
    v127 = v125 - v123 + v126;
    sub_AB3A10();
    v36 = v127 + v128;
    sub_AB3A10();
    v35 = v41 - v125 - v129;
    v34 = [(NSString *)v117 numberOfLineFragments];
    v130 = object;
    v131 = v154;
    *&v163 = v116;
    *(&v163 + 1) = object;
    *&v164 = v154;
    BYTE8(v164) = v53 < 0;
    v44 = 1;
    *&v165 = v117;
    *(&v165 + 1) = 1;
    *&v166 = v42;
    *(&v166 + 1) = v41;
    *&v167 = top;
    *(&v167 + 1) = v156;
    v39 = v152;
    *&v168 = v40;
    *(&v168 + 1) = v152;
    *&v169 = v36;
    *(&v169 + 1) = v35;
    *&v170 = v34;
    *(&v170 + 1) = v33;
    _s5CacheC14ContextWrapperCMa();
    v132 = swift_allocObject();
    v133 = v168;
    v132[5] = v167;
    v132[6] = v133;
    v134 = v170;
    v132[7] = v169;
    v132[8] = v134;
    v135 = v164;
    v132[1] = v163;
    v132[2] = v135;
    v136 = v166;
    v132[3] = v165;
    v132[4] = v136;
    _s5CacheC3KeyCMa();
    v137 = swift_allocObject();
    v138 = v159;
    *(v137 + 16) = v158;
    *(v137 + 24) = v138;
    v139 = v148;
    v140 = *(v148 + 48);
    *(v137 + 64) = *(v148 + 32);
    *(v137 + 80) = v140;
    *(v137 + 96) = v139[4];
    v141 = v139[1];
    *(v137 + 32) = *v139;
    *(v137 + 48) = v141;
    *&v141 = v150;
    *(v137 + 112) = v149;
    *(v137 + 120) = v141;

    v142 = v139;
    v46 = v130;
    sub_2F118(v142, v162);
    sub_109B04(&v163, v162);
    v47 = v131;
    v45 = v160;
    [v151 setObject:v132 forKey:v137 cost:sub_AB9420()];

    v48 = v147;
    sub_E1E78(v45, v130, v47, v147);

    v43 = v157;

    v37 = v156;
    goto LABEL_63;
  }

  __break(1u);
LABEL_65:
  __break(1u);
}

void sub_109468()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];
  sub_D5EA8();
  sub_109BD0(&qword_DEE368, sub_D5EA8, &protocol conformance descriptor for NSObject);
  v31 = v1;
  v2 = sub_AB9B40();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_ABAC10();
    sub_AB9BC0();
    v2 = v34;
    v3 = v35;
    v4 = v36;
    v5 = v37;
    v6 = v38;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);

    v5 = 0;
  }

  v30 = v4;
  v10 = (v4 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_23:
      sub_2BB88(v2);

      return;
    }

    while (1)
    {
      v16 = v2;
      v32 = v15;
      v17 = [v15 session];
      v18 = [v17 role];

      v19 = sub_AB92A0();
      v21 = v20;
      if (v19 == sub_AB92A0() && v21 == v22)
      {
        break;
      }

      v24 = sub_ABB3C0();

      if (v24)
      {
        goto LABEL_25;
      }

      v5 = v13;
      v6 = v14;
      v2 = v16;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (sub_ABAC90())
      {
        swift_unknownObjectRetain();
        swift_dynamicCast();
        swift_unknownObjectRelease();
        v15 = v33;
        v13 = v5;
        v14 = v6;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

LABEL_25:
    sub_2BB88(v16);

    objc_opt_self();
    if (!swift_dynamicCastObjCClass() || (v25 = UIWindowScene.mainWindow.getter()) == 0 || (v26 = v25, v27 = [v25 rootViewController], v26, !v27))
    {

      return;
    }

    if (([v27 isViewLoaded] & 1) == 0)
    {

      return;
    }

    v28 = [v27 view];
    if (v28)
    {
      v29 = v28;
      [v28 tintColor];

      return;
    }
  }

  else
  {
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_23;
      }

      v12 = *(v3 + 8 * v13);
      ++v11;
      if (v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1098E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_109BD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_109C20@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_11138C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

NSString sub_109CA4()
{
  result = sub_AB9260();
  qword_E70E40 = result;
  return result;
}

id sub_109CDC()
{
  result = [objc_allocWithZone(type metadata accessor for ModelPlayabilityController()) init];
  qword_E70E48 = result;
  return result;
}

char *sub_109D68()
{
  *&v0[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_playerSubscription] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_hasActiveAccount] = 2;
  v0[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_shouldSkipSubscriptionFetch] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_accountStoreNotificationObserver] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_cellularNetworkingAllowedNotificationObserver] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_cellularNetworkingAllowedVideosNotificationObserver] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_explicitContentRestrictionNotificationObserver] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_fairPlaySubscriptionStatusNotificationObserver] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_subscriptionStatusNotificationObserver] = 0;
  v32.receiver = v0;
  v32.super_class = type metadata accessor for ModelPlayabilityController();
  v1 = objc_msgSendSuper2(&v32, "init");
  v2 = ICActiveUserIdentityDidChangeNotification;
  v3 = objc_opt_self();
  v4 = v1;
  v5 = v2;
  v6 = [v3 defaultIdentityStore];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_accountStoreNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v5, v6, 1, 1, sub_112B6C, v7);

  v8 = MPNetworkObserverIsMusicCellularStreamingAllowedDidChangeNotification;
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 sharedNetworkObserver];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_cellularNetworkingAllowedNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v10, v11, 1, 1, sub_112B74, v12);

  v13 = MPNetworkObserverIsVideoCellularStreamingAllowedDidChangeNotification;
  v14 = [v9 sharedNetworkObserver];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_cellularNetworkingAllowedVideosNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v13, v14, 1, 1, sub_112C1C, v15);

  v16 = MPRestrictionsMonitorAllowsExplicitContentDidChangeNotification;
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 sharedRestrictionsMonitor];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_explicitContentRestrictionNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v18, v19, 1, 1, sub_112C1C, v20);

  v21 = MPCloudServiceStatusControllerFairPlaySubscriptionStatusDidChangeNotification;
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 sharedController];
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_fairPlaySubscriptionStatusNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v23, v24, 1, 1, sub_112C1C, v25);

  v26 = MPCloudServiceStatusControllerSubscriptionStatusDidChangeNotification;
  v27 = [v22 sharedController];
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();

  swift_allocObject();
  *&v4[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_subscriptionStatusNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v26, v27, 1, 1, sub_112C1C, v28);

  *&v4[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_playerSubscription] = 0;

  v29 = [objc_opt_self() sharedMonitor];
  v30 = v4;
  [v29 registerObserver:v30];

  return v30;
}

void sub_10A2E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_DE69F0 != -1)
    {
      swift_once();
    }

    v4 = sub_AB4BC0();
    __swift_project_value_buffer(v4, qword_E71320);
    v5 = v3;
    v6 = sub_AB4BA0();
    v7 = sub_AB9F50();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v8 = 67240706;
      *(v8 + 4) = v5[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_shouldSkipSubscriptionFetch];

      *(v8 + 8) = 2082;
      static ApplicationCapabilities.shared.getter(&v27);
      sub_70C54(&v27);
      if (v28)
      {
        v9 = 1702195828;
      }

      else
      {
        v9 = 0x65736C6166;
      }

      if (v28)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE500000000000000;
      }

      v11 = sub_425E68(v9, v10, &v26);

      *(v8 + 10) = v11;
      *(v8 + 18) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0608, &qword_AFE860);
      v12 = sub_AB9350();
      v14 = sub_425E68(v12, v13, &v26);

      *(v8 + 20) = v14;
      _os_log_impl(&dword_0, v6, v7, "ModelPlayabilityController - ICActiveUserIdentityDidChange received - shouldSkipSubscriptionFetch=%{BOOL,public}d - hasSubscriptionFullCatalogPlaybackCapability=%{public}s - hasActiveAccount=%{public}s", v8, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_13C80(0, &qword_DF0600, ICUserIdentityStore_ptr);
    v15 = static ICUserIdentityStore.activeAccountDSID.getter();
    v16 = v15 != 0;

    v5[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_hasActiveAccount] = v16;
    v17 = v5;
    v18 = sub_AB4BA0();
    v19 = sub_AB9F50();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136446210;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0608, &qword_AFE860);
      v22 = sub_AB9350();
      v24 = sub_425E68(v22, v23, &v26);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_0, v18, v19, "ModelPlayabilityController - ICActiveUserIdentityDidChange received - Updating active account status - hasActiveAccount=%{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
    }

    v25 = [objc_opt_self() defaultCenter];
    if (qword_DE6830 != -1)
    {
      swift_once();
    }

    [v25 postNotificationName:qword_E70E40 object:v17 userInfo:0];
  }
}

void sub_10A6CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_opt_self() defaultCenter];
    if (qword_DE6830 != -1)
    {
      swift_once();
    }

    [v4 postNotificationName:qword_E70E40 object:v3 userInfo:0];
  }
}

id sub_10A7B8()
{
  v1 = [objc_opt_self() sharedMonitor];
  [v1 unregisterObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ModelPlayabilityController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10A950()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85D0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  isa = sub_AB9740().super.isa;
  v6 = [objc_opt_self() propertySetWithProperties:isa];

  qword_DF04E0 = v6;
}

void sub_10AA44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF4EC0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  isa = sub_AB9740().super.isa;
  v3 = [objc_opt_self() propertySetWithProperties:isa];

  qword_DF04E8 = v3;
}

void sub_10AAFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85D0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  isa = sub_AB9740().super.isa;
  v6 = [objc_opt_self() propertySetWithProperties:isa];

  qword_DF04F0 = v6;
}

void sub_10AC20(void *a1)
{
  v2 = v1;
  if (qword_DE6858 != -1)
  {
    swift_once();
  }

  v4 = sub_AB4BC0();
  __swift_project_value_buffer(v4, qword_DF04F8);
  v5 = a1;
  v6 = sub_AB4BA0();
  v7 = sub_AB9F10();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36[0] = v9;
    *v8 = 136446210;
    if (a1)
    {
      v10 = sub_27ECD0(&off_CEF8A0);
      MPModelObject.humanDescription(including:)(v10);
      v12 = v11;
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    aBlock = v12;
    v39 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0, &unk_AF8970);
    v15 = sub_AB9350();
    v17 = sub_425E68(v15, v16, v36);

    *(v8 + 4) = v17;
    _os_log_impl(&dword_0, v6, v7, "calculatePlayabilityStatus - start with model=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
  }

  v18 = [objc_opt_self() sharedMonitor];
  v19 = [v18 networkType];

  v20 = OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_hasActiveAccount;
  v21 = v2[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_hasActiveAccount];
  if (v21 == 2)
  {
    sub_13C80(0, &qword_DF0600, ICUserIdentityStore_ptr);
    v22 = static ICUserIdentityStore.activeAccountDSID.getter();
    LOBYTE(v21) = v22 != 0;

    if (v2[v20] == 2)
    {
      v2[v20] = v22 != 0;
    }
  }

  v44 = 0;
  v45 = 1;
  v23 = objc_opt_self();
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = &v44;
  *(v24 + 32) = v21 & 1;
  *(v24 + 40) = v2;
  *(v24 + 48) = v19;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_112A68;
  *(v25 + 24) = v24;
  v42 = sub_36C08;
  v43 = v25;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_1822E0;
  v41 = &block_descriptor_161;
  v26 = _Block_copy(&aBlock);
  v27 = v5;
  v28 = v2;

  [v23 performWithoutEnforcement:v26];
  _Block_release(v26);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
  }

  else
  {
    v29 = sub_AB4BA0();
    v30 = sub_AB9F10();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37 = v32;
      *v31 = 136446210;
      swift_beginAccess();
      aBlock = v44;
      LOBYTE(v39) = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0610, &qword_AFE868);
      v33 = sub_AB9350();
      v35 = sub_425E68(v33, v34, &v37);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_0, v29, v30, "calculatePlayabilityStatus - final status=%{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
    }

    swift_beginAccess();
  }
}

void sub_10B0F4(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  if (a1)
  {
    v7 = a1;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_self() sharedNetworkObserver];
      if (v10)
      {
        v11 = v10;
        v162 = [v10 isMusicCellularStreamingAllowed];

        v12 = [v9 isExplicitSong];
        v13 = [objc_opt_self() sharedRestrictionsMonitor];
        v14 = [v13 allowsExplicitContent];

        v15 = [v9 localFileAsset];
        v16 = [v9 storeAsset];
        v17 = [v9 homeSharingAsset];
        v173 = v15;
        if (v15)
        {
          v18 = v15;
          if ([v18 isNonPurgeable])
          {
            v19 = [v18 protectionType];

            v167 = v19 == &dword_0 + 2;
            v170 = 1;
            goto LABEL_17;
          }
        }

        v167 = 0;
        v170 = 0;
LABEL_17:
        v165 = v16;
        if (qword_DE6858 != -1)
        {
          swift_once();
        }

        v155 = sub_AB4BC0();
        __swift_project_value_buffer(v155, qword_DF04F8);
        v31 = sub_AB4BA0();
        v32 = sub_AB9F10();
        if (os_log_type_enabled(v31, v32))
        {
          v156 = v17;
          v33 = swift_slowAlloc();
          v183 = swift_slowAlloc();
          *v33 = 67240962;
          *(v33 + 4) = v12;
          *(v33 + 8) = 1026;
          *(v33 + 10) = v14;
          *(v33 + 14) = 2082;
          if (v170)
          {
            v34 = 1702195828;
          }

          else
          {
            v34 = 0x65736C6166;
          }

          v158 = v7;
          if (v170)
          {
            v35 = 0xE400000000000000;
          }

          else
          {
            v35 = 0xE500000000000000;
          }

          v36 = sub_425E68(v34, v35, &v183);

          *(v33 + 16) = v36;
          *(v33 + 24) = 2082;
          if (v167)
          {
            v37 = 1702195828;
          }

          else
          {
            v37 = 0x65736C6166;
          }

          if (v167)
          {
            v38 = 0xE400000000000000;
          }

          else
          {
            v38 = 0xE500000000000000;
          }

          v39 = sub_425E68(v37, v38, &v183);

          *(v33 + 26) = v39;
          v7 = v158;
          _os_log_impl(&dword_0, v31, v32, "calculateIndividualItemStatus - isExplicit=%{BOOL,public}d, isExplicitContentAllowed=%{BOOL,public}d, hasNonPurgeableLocalAsset=%{public}s, hasNonPurgeableSubscriptionLocalAsset=%{public}s", v33, 0x22u);
          swift_arrayDestroy();

          v17 = v156;
        }

        v40 = v165;
        if (v14 & 1 | ((v12 & 1) == 0))
        {
          v41 = v170;
          if (!v165)
          {
            v41 = 1;
          }

          if (v41)
          {
            if (!v167)
            {
              goto LABEL_44;
            }
          }

          else if ((([v165 isRedownloadable] | v167) & 1) == 0)
          {
            goto LABEL_44;
          }

          if (a3 & 1) != 0 || (static ApplicationCapabilities.shared.getter(&v179), sub_70C54(&v179), (v180))
          {
LABEL_44:
            if (v170)
            {
              v43 = v167;
              if (a5)
              {
                v43 = 0;
              }

              if (!v43 || (v44 = [objc_opt_self() sharedController], v45 = objc_msgSend(v44, "lastKnownSubscriptionFairPlayKeyStatus"), v44, !v45) || (v46 = objc_msgSend(v45, "hasOfflinePlaybackKeys"), v45, (v46 & 1) != 0))
              {
LABEL_99:
                v42 = 0;
                goto LABEL_203;
              }

              if (!v165)
              {
                goto LABEL_95;
              }
            }

            else
            {
              if (!v165)
              {
                goto LABEL_95;
              }

              v56 = v165;
              if ([v56 endpointType] == &dword_0 + 3)
              {
                if ([v56 isSubscriptionRequired])
                {
                  static ApplicationCapabilities.shared.getter(&v181);
                  sub_70C54(&v181);
                  if ((v182 & 1) == 0)
                  {
                    v157 = v17;
                    if (qword_DE69F0 != -1)
                    {
                      swift_once();
                    }

                    __swift_project_value_buffer(v155, qword_E71320);
                    v57 = a4;
                    v58 = v7;
                    v59 = sub_AB4BA0();
                    v60 = sub_AB9F50();

                    if (os_log_type_enabled(v59, v60))
                    {
                      v61 = swift_slowAlloc();
                      v62 = swift_slowAlloc();
                      v176 = v62;
                      *v61 = 136446466;
                      v63 = sub_27ECD0(&off_CF0288);
                      MPModelObject.humanDescription(including:)(v63);
                      v65 = v64;
                      v67 = v66;

                      v183 = v65;
                      v184 = v67;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0, &unk_AF8970);
                      v68 = sub_AB9350();
                      v70 = sub_425E68(v68, v69, &v176);

                      *(v61 + 4) = v70;
                      *(v61 + 12) = 1026;
                      static ApplicationCapabilities.shared.getter(&v183);
                      sub_70C54(&v183);

                      *(v61 + 14) = v184 & 1;
                      _os_log_impl(&dword_0, v59, v60, "ModelPlayabilityController - calculateIndividualItemStatus - Subscription required for item=%{public}s - hasSubscriptionFullCatalogPlaybackCapability=%{BOOL,public}d", v61, 0x12u);
                      __swift_destroy_boxed_opaque_existential_0(v62);

                      v40 = v165;
                    }

                    else
                    {
                    }

                    v42 = 7;
                    v17 = v157;
                    goto LABEL_203;
                  }
                }
              }
            }

            if ([v165 isRedownloadable])
            {
LABEL_97:
              if (!(v162 & 1 | ((ICEnvironmentNetworkTypeIsCellular() & 1) == 0)))
              {
                v42 = 3;
                goto LABEL_203;
              }

              if (!a5)
              {
                v42 = 4;
                goto LABEL_203;
              }

              goto LABEL_99;
            }

LABEL_95:
            if (!v17 || ([v17 isAvailable] & 1) == 0)
            {
              if (v165 && ([v165 needsUserUpload] & 1) != 0)
              {
                v42 = 8;
              }

              else
              {
                v42 = 5;
              }

              goto LABEL_203;
            }

            goto LABEL_97;
          }

          v42 = 6;
        }

        else
        {
          v42 = 2;
        }

LABEL_203:
        v136 = sub_AB4BA0();
        v137 = sub_AB9F10();
        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v178 = v139;
          *v138 = 136446210;
          v176 = v42;
          v177 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0610, &qword_AFE868);
          v140 = sub_AB9350();
          v142 = sub_425E68(v140, v141, &v178);

          *(v138 + 4) = v142;
          _os_log_impl(&dword_0, v136, v137, "calculateIndividualItemStatus - final status=%{public}s", v138, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v139);
        }

        *a2 = v42;
        v116 = (a2 + 8);
        goto LABEL_217;
      }

      __break(1u);
      goto LABEL_224;
    }

    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = v20;
      v22 = [objc_opt_self() sharedNetworkObserver];
      if (!v22)
      {
LABEL_224:
        __break(1u);
        goto LABEL_225;
      }

      v23 = v22;
      v164 = [v22 isVideoCellularStreamingAllowed];

      LODWORD(v24) = MPModelTVEpisodeIsRestricted();
      v25 = [v21 localFileAsset];
      v26 = [v21 storeAsset];
      v174 = v25;
      if (v25)
      {
        v27 = v25;
        if ([v27 isNonPurgeable])
        {
          v28 = v24;
          v24 = [v27 protectionType];

          v29 = v24 == 2;
          LODWORD(v24) = v28;
          v30 = v29;
          v171 = v30;
          LODWORD(v25) = 1;
        }

        else
        {

          v171 = 0;
          LODWORD(v25) = 0;
        }
      }

      else
      {
        v171 = 0;
      }

      if (qword_DE6858 != -1)
      {
        swift_once();
      }

      v71 = sub_AB4BC0();
      __swift_project_value_buffer(v71, qword_DF04F8);
      v72 = sub_AB4BA0();
      v73 = sub_AB9F10();
      v168 = v25;
      if (os_log_type_enabled(v72, v73))
      {
        v159 = v71;
        v74 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        *v74 = 67240962;
        *(v74 + 4) = v24;
        *(v74 + 8) = 1026;
        *(v74 + 10) = 0;
        *(v74 + 14) = 2082;
        if (v25)
        {
          v75 = 1702195828;
        }

        else
        {
          v75 = 0x65736C6166;
        }

        v76 = v24;
        if (v25)
        {
          v77 = 0xE400000000000000;
        }

        else
        {
          v77 = 0xE500000000000000;
        }

        v78 = a5;
        v79 = sub_425E68(v75, v77, &v183);

        *(v74 + 16) = v79;
        *(v74 + 24) = 2082;
        if (v171)
        {
          v80 = 1702195828;
        }

        else
        {
          v80 = 0x65736C6166;
        }

        if (v171)
        {
          v24 = 0xE400000000000000;
        }

        else
        {
          v24 = 0xE500000000000000;
        }

        v81 = sub_425E68(v80, v24, &v183);
        LOBYTE(v24) = v76;

        *(v74 + 26) = v81;
        a5 = v78;
        _os_log_impl(&dword_0, v72, v73, "calculateIndividualItemStatus - isExplicit=%{BOOL,public}d, isExplicitContentAllowed=%{BOOL,public}d, hasNonPurgeableLocalAsset=%{public}s, hasNonPurgeableSubscriptionLocalAsset=%{public}s", v74, 0x22u);
        swift_arrayDestroy();

        v71 = v159;
      }

      if ((v24 & 1) == 0)
      {
        if (v26)
        {
          v82 = v168;
        }

        else
        {
          v82 = 1;
        }

        if (v82)
        {
          if (!v171)
          {
            goto LABEL_106;
          }
        }

        else if ((([v26 isRedownloadable] | v171) & 1) == 0)
        {
LABEL_106:
          if (v168)
          {
            v83 = v171;
            if (a5)
            {
              v83 = 0;
            }

            if (v83)
            {
              v84 = [objc_opt_self() sharedController];
              v85 = [v84 lastKnownSubscriptionFairPlayKeyStatus];

              if (v85)
              {
                v86 = [v85 hasOfflinePlaybackKeys];

                if ((v86 & 1) == 0)
                {
                  if (!v26)
                  {
                    goto LABEL_199;
                  }

LABEL_130:
                  if ([v26 isRedownloadable])
                  {
                    if (v164 & 1 | ((ICEnvironmentNetworkTypeIsCellular() & 1) == 0))
                    {
                      if (!a5)
                      {
                        goto LABEL_206;
                      }

                      goto LABEL_196;
                    }

LABEL_200:
                    v114 = 3;
                    goto LABEL_214;
                  }

LABEL_197:
                  if ([v26 needsUserUpload])
                  {
                    v114 = 8;
                    goto LABEL_214;
                  }

LABEL_199:
                  v114 = 5;
                  goto LABEL_214;
                }
              }
            }

LABEL_196:
            v114 = 0;
            goto LABEL_214;
          }

          if (!v26)
          {
            goto LABEL_199;
          }

          v103 = v26;
          if ([v103 endpointType] != &dword_0 + 3 || !objc_msgSend(v103, "isSubscriptionRequired") || (static ApplicationCapabilities.shared.getter(&v181), sub_70C54(&v181), (v182 & 1) != 0))
          {

            goto LABEL_130;
          }

LABEL_187:
          if (qword_DE69F0 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v71, qword_E71320);
          v122 = a4;
          v123 = v7;
          v124 = sub_AB4BA0();
          v125 = sub_AB9F50();

          if (os_log_type_enabled(v124, v125))
          {
            v126 = swift_slowAlloc();
            v127 = swift_slowAlloc();
            v176 = v127;
            *v126 = 136446466;
            v128 = sub_27ECD0(&off_CF0288);
            MPModelObject.humanDescription(including:)(v128);
            v130 = v129;
            v132 = v131;

            v183 = v130;
            v184 = v132;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0, &unk_AF8970);
            v133 = sub_AB9350();
            v135 = sub_425E68(v133, v134, &v176);

            *(v126 + 4) = v135;
            *(v126 + 12) = 1026;
            static ApplicationCapabilities.shared.getter(&v183);
            sub_70C54(&v183);

            *(v126 + 14) = v184 & 1;
            _os_log_impl(&dword_0, v124, v125, "ModelPlayabilityController - calculateIndividualItemStatus - Subscription required for item=%{public}s - hasSubscriptionFullCatalogPlaybackCapability=%{BOOL,public}d", v126, 0x12u);
            __swift_destroy_boxed_opaque_existential_0(v127);
          }

          else
          {
          }

          v114 = 7;
          goto LABEL_214;
        }

        if (a3)
        {
          goto LABEL_106;
        }

        static ApplicationCapabilities.shared.getter(&v179);
        sub_70C54(&v179);
        if (v180)
        {
          goto LABEL_106;
        }

        goto LABEL_174;
      }

LABEL_155:
      v114 = 2;
LABEL_214:
      v147 = sub_AB4BA0();
      v148 = sub_AB9F10();
      if (os_log_type_enabled(v147, v148))
      {
        v149 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v178 = v150;
        *v149 = 136446210;
        v176 = v114;
        v177 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0610, &qword_AFE868);
        v151 = sub_AB9350();
        v153 = sub_425E68(v151, v152, &v178);

        *(v149 + 4) = v153;
        _os_log_impl(&dword_0, v147, v148, "calculateIndividualItemStatus - final status=%{public}s", v149, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v150);
      }

      *a2 = v114;
      v116 = (a2 + 8);
      goto LABEL_217;
    }

    objc_opt_self();
    v47 = swift_dynamicCastObjCClass();
    if (v47)
    {
      v48 = v47;
      v49 = [objc_opt_self() sharedNetworkObserver];
      if (!v49)
      {
LABEL_225:
        __break(1u);
        goto LABEL_226;
      }

      v50 = v49;
      v166 = [v49 isVideoCellularStreamingAllowed];

      LODWORD(v51) = MPModelMovieIsRestricted();
      v52 = [v48 localFileAsset];
      v26 = [v48 storeAsset];
      v174 = v52;
      if (v52)
      {
        v53 = v52;
        if ([v53 isNonPurgeable])
        {
          v54 = v51;
          v51 = [v53 protectionType];

          v29 = v51 == 2;
          LODWORD(v51) = v54;
          v55 = v29;
          v172 = v55;
          LODWORD(v52) = 1;
        }

        else
        {

          v172 = 0;
          LODWORD(v52) = 0;
        }
      }

      else
      {
        v172 = 0;
      }

      if (qword_DE6858 != -1)
      {
        swift_once();
      }

      v71 = sub_AB4BC0();
      __swift_project_value_buffer(v71, qword_DF04F8);
      v104 = sub_AB4BA0();
      v105 = sub_AB9F10();
      v169 = v52;
      if (os_log_type_enabled(v104, v105))
      {
        v161 = v71;
        v106 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        *v106 = 67240962;
        *(v106 + 4) = v51;
        *(v106 + 8) = 1026;
        *(v106 + 10) = 0;
        *(v106 + 14) = 2082;
        if (v52)
        {
          v107 = 1702195828;
        }

        else
        {
          v107 = 0x65736C6166;
        }

        v108 = v51;
        if (v52)
        {
          v109 = 0xE400000000000000;
        }

        else
        {
          v109 = 0xE500000000000000;
        }

        v110 = a5;
        v111 = sub_425E68(v107, v109, &v183);

        *(v106 + 16) = v111;
        *(v106 + 24) = 2082;
        if (v172)
        {
          v112 = 1702195828;
        }

        else
        {
          v112 = 0x65736C6166;
        }

        if (v172)
        {
          v51 = 0xE400000000000000;
        }

        else
        {
          v51 = 0xE500000000000000;
        }

        v113 = sub_425E68(v112, v51, &v183);
        LOBYTE(v51) = v108;

        *(v106 + 26) = v113;
        a5 = v110;
        _os_log_impl(&dword_0, v104, v105, "calculateIndividualItemStatus - isExplicit=%{BOOL,public}d, isExplicitContentAllowed=%{BOOL,public}d, hasNonPurgeableLocalAsset=%{public}s, hasNonPurgeableSubscriptionLocalAsset=%{public}s", v106, 0x22u);
        swift_arrayDestroy();

        v71 = v161;
      }

      if (v51)
      {
        goto LABEL_155;
      }

      if (v26)
      {
        v115 = v169;
      }

      else
      {
        v115 = 1;
      }

      if (v115)
      {
        if (!v172)
        {
          goto LABEL_175;
        }
      }

      else if ((([v26 isRedownloadable] | v172) & 1) == 0)
      {
        goto LABEL_175;
      }

      if ((a3 & 1) == 0)
      {
        static ApplicationCapabilities.shared.getter(&v179);
        sub_70C54(&v179);
        if ((v180 & 1) == 0)
        {
LABEL_174:
          v114 = 6;
          goto LABEL_214;
        }
      }

LABEL_175:
      if (v169)
      {
        v118 = v172;
        if (a5)
        {
          v118 = 0;
        }

        if ((v118 & 1) == 0)
        {
          goto LABEL_196;
        }

        v119 = [objc_opt_self() sharedController];
        v120 = [v119 lastKnownSubscriptionFairPlayKeyStatus];

        if (!v120)
        {
          goto LABEL_196;
        }

        v121 = [v120 hasOfflinePlaybackKeys];

        if (v121)
        {
          goto LABEL_196;
        }

        if (!v26)
        {
          goto LABEL_199;
        }
      }

      else
      {
        if (!v26)
        {
          goto LABEL_199;
        }

        v103 = v26;
        if ([v103 endpointType] == &dword_0 + 3)
        {
          if ([v103 isSubscriptionRequired])
          {
            static ApplicationCapabilities.shared.getter(&v181);
            sub_70C54(&v181);
            if ((v182 & 1) == 0)
            {
              goto LABEL_187;
            }
          }
        }
      }

      if ([v26 isRedownloadable])
      {
        if (v166 & 1 | ((ICEnvironmentNetworkTypeIsCellular() & 1) == 0))
        {
          if (!a5)
          {
LABEL_206:
            v114 = 4;
            goto LABEL_214;
          }

          goto LABEL_196;
        }

        goto LABEL_200;
      }

      goto LABEL_197;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      v87 = [objc_opt_self() sharedNetworkObserver];
      if (!v87)
      {
LABEL_226:
        __break(1u);
        goto LABEL_227;
      }

      v88 = v87;
      v89 = a3;
      v90 = [v87 isMusicCellularStreamingAllowed];

      v91 = ICEnvironmentNetworkTypeIsCellular() ^ 1 | v90;
      if (v91)
      {
        v92 = (4 * (a5 == 0));
      }

      else
      {
        v92 = (&dword_0 + 3);
      }

      if (qword_DE6858 != -1)
      {
        swift_once();
      }

      v93 = v91 & (a5 != 0);
      v94 = sub_AB4BC0();
      __swift_project_value_buffer(v94, qword_DF04F8);
      v95 = a4;
      v96 = sub_AB4BA0();
      v97 = sub_AB9F10();
      if (os_log_type_enabled(v96, v97))
      {
        v160 = v7;
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v179 = v99;
        *v98 = 67240706;
        *(v98 + 4) = v89 & 1;
        *(v98 + 8) = 2082;
        v183 = v92;
        LOBYTE(v184) = v93;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0610, &qword_AFE868);
        v100 = sub_AB9350();
        v102 = sub_425E68(v100, v101, &v179);

        *(v98 + 10) = v102;
        *(v98 + 18) = 1026;
        static ApplicationCapabilities.shared.getter(&v181);
        sub_70C54(&v181);

        *(v98 + 20) = v182 & 1;
        _os_log_impl(&dword_0, v96, v97, "calculatePlayabilityStatus hasActiveAccount=%{BOOL,public}d networkStatus=%{public}s hasSubscriptionFullCatalogPlaybackCapability=%{BOOL,public}d", v98, 0x18u);
        __swift_destroy_boxed_opaque_existential_0(v99);

        v7 = v160;
      }

      else
      {
      }

      if (v89)
      {
        if (v93)
        {
          static ApplicationCapabilities.shared.getter(&v183);
          sub_70C54(&v183);
          v116 = (a2 + 8);
          if ((v184 & 0x80) == 0)
          {
            v92 = (&dword_4 + 3);
            *a2 = 7;
LABEL_169:
            *v116 = 0;
            sub_10CB1C(v7, 0, v92);
            if ((v117 & 1) == 0)
            {
              return;
            }

            *a2 = 0;
            v116 = (a2 + 8);
            goto LABEL_217;
          }

LABEL_222:
          *a2 = 0;
LABEL_217:
          *v116 = 0;
          return;
        }
      }

      else
      {
        v92 = (&dword_4 + 2);
      }

      *a2 = v92;
      v116 = (a2 + 8);
      goto LABEL_169;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      return;
    }

    v143 = [objc_opt_self() sharedNetworkObserver];
    if (!v143)
    {
LABEL_227:
      __break(1u);
      return;
    }

    v144 = v143;
    v145 = [v143 isMusicCellularStreamingAllowed];

    v116 = (a2 + 8);
    if (!ICEnvironmentNetworkTypeIsCellular() || v145)
    {
      if (a5)
      {
        goto LABEL_222;
      }

      v146 = &dword_4;
    }

    else
    {
      v146 = (&dword_0 + 3);
    }

    *a2 = v146;
    *(a2 + 8) = 0;
    sub_10CB1C(v7, 0, v146);
    if (v154)
    {
      goto LABEL_222;
    }
  }
}