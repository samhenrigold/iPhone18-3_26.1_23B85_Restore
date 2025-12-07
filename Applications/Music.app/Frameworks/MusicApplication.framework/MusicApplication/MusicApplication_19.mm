uint64_t sub_1A2AC0()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E71120);
  __swift_project_value_buffer(v0, qword_E71120);
  return static Logger.music(_:)(0x656E6961746E6F43, 0xEF6C696174654472);
}

uint64_t sub_1A2DB0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

double block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

BOOL sub_1A2E24(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_1A3038();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    sub_1A3038();
    if (v11)
    {
      v22 = a3;
      if ((v8 != v10 || v9 != v11) && (sub_ABB3C0() & 1) == 0)
      {
        goto LABEL_17;
      }

      sub_1A33BC(&MPModelRelationshipSongArtist, &selRef_artist, &selRef_name);
      v21 = v12;
      v14 = v13;
      sub_1A33BC(&MPModelRelationshipSongArtist, &selRef_artist, &selRef_name);
      if (v14)
      {
        if (v16)
        {
          if (v21 == v15 && v14 == v16)
          {

LABEL_17:
            sub_36A48();
            v19 = sub_ABAAC0();

            return v19 == -1;
          }

          v18 = sub_ABB3C0();

          if (v18)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }
      }

      else if (!v16)
      {
        goto LABEL_17;
      }

LABEL_15:
      v17 = sub_1A3268(a1, a2, v22, &MPModelRelationshipSongArtist, &selRef_artist, &selRef_name);

      return v17;
    }

    return 0;
  }

  else
  {
    return 0;
  }
}

void sub_1A3038()
{
  v1 = [v0 type];
  if (v1 == &dword_0 + 3)
  {
    v15 = [v0 movie];
    if (!v15)
    {
      return;
    }

    v16 = v15;
    v17 = [v15 hasLoadedValueForKey:MPModelPropertyMovieTitle];

    if (!v17)
    {
      return;
    }

    v18 = [v0 movie];
    if (!v18)
    {
      return;
    }

    v6 = v18;
    v7 = [v18 title];
    if (v7)
    {
LABEL_13:
      v12 = v7;
      sub_AB92A0();

      v13 = sub_AB9260();
      v14 = [v13 copyWithoutInsignificantPrefixAndCharacters];

      if (v14)
      {
        sub_AB92A0();
      }

      else
      {
        __break(1u);
      }

      return;
    }

LABEL_19:

    return;
  }

  if (v1 == &dword_0 + 2)
  {
    v8 = [v0 tvEpisode];
    if (!v8)
    {
      return;
    }

    v9 = v8;
    v10 = [v8 hasLoadedValueForKey:MPModelPropertyTVEpisodeTitle];

    if (!v10)
    {
      return;
    }

    v11 = [v0 tvEpisode];
    if (!v11)
    {
      return;
    }

    v6 = v11;
    v7 = [v11 title];
    if (v7)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  if (v1 == &dword_0 + 1)
  {
    v2 = [v0 song];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 hasLoadedValueForKey:MPModelPropertySongTitle];

      if (v4)
      {
        v5 = [v0 song];
        if (v5)
        {
          v6 = v5;
          v7 = [v5 title];
          if (!v7)
          {
            goto LABEL_19;
          }

          goto LABEL_13;
        }
      }
    }
  }
}

BOOL sub_1A3268(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4, const char **a5, SEL *a6)
{
  sub_1A33BC(a4, a5, a6);
  if (!v13)
  {
    return 0;
  }

  v14 = v12;
  v15 = v13;
  sub_1A33BC(a4, a5, a6);
  if (v17)
  {
    if (v14 == v16 && v15 == v17 || (sub_ABB3C0() & 1) != 0)
    {
      v18 = sub_1A2E24(a1, a2, a3);

      return v18;
    }

    else
    {
      sub_36A48();
      v20 = sub_ABAAC0();

      return v20 == -1;
    }
  }

  else
  {

    return 0;
  }
}

void sub_1A33BC(uint64_t *a1, const char **a2, SEL *a3)
{
  v7 = [v3 song];
  if (v7)
  {
    v8 = *a1;
    v9 = v7;
    v10 = [v7 hasLoadedValueForKey:v8];

    if (v10)
    {
      v11 = [v3 song];
      if (v11)
      {
        v12 = *a2;
        v13 = v11;
        v14 = [v11 v12];

        if (v14)
        {
          v15 = [v14 *a3];
          if (v15)
          {
            v16 = v15;
            sub_AB92A0();

            v17 = sub_AB9260();
            v18 = [v17 copyWithoutInsignificantPrefixAndCharacters];

            if (v18)
            {
              sub_AB92A0();
            }

            else
            {
              __break(1u);
            }
          }

          else
          {
          }
        }
      }
    }
  }
}

uint64_t sub_1A34F8(uint64_t a1, uint64_t a2, int a3)
{
  v25 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230, "|,\r");
  __chkstk_darwin();
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v23[-v6];
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v13 = &v23[-v12];
  sub_1A3798(v7);
  v14 = *(v9 + 48);
  if (v14(v7, 1, v8) == 1)
  {
    v15 = v7;
LABEL_5:
    sub_12E1C(v15, &unk_E01230, "|,\r");
    v18 = 0;
    return v18 & 1;
  }

  v24 = a3;
  v16 = v7;
  v17 = *(v9 + 32);
  v17(v13, v16, v8);
  sub_1A3798(v5);
  if (v14(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v13, v8);
    v15 = v5;
    goto LABEL_5;
  }

  v17(v11, v5, v8);
  v19 = (v9 + 8);
  if (v24)
  {
    v20 = sub_AB3390();
  }

  else
  {
    v20 = sub_AB3380();
  }

  v18 = v20;
  v21 = *v19;
  (*v19)(v11, v8);
  v21(v13, v8);
  return v18 & 1;
}

uint64_t sub_1A3798@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_AB2DC0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF43E0, &unk_B03B20);
  __chkstk_darwin();
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin().n128_u64[0];
  v12 = &v25 - v11;
  v13 = [v2 song];
  if (v13 && (v14 = v13, v15 = [v13 hasLoadedValueForKey:MPModelRelationshipSongAlbum], v14, v15))
  {
    v16 = [v2 song];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 album];

      if (v18)
      {
        v19 = [v18 releaseDateComponents];
        if (v19)
        {
          v20 = v19;
          sub_AB2D70();

          (*(v5 + 56))(v9, 0, 1, v4);
        }

        else
        {
          (*(v5 + 56))(v9, 1, 1, v4);
        }

        sub_D321C(v9, v12);
        if (!(*(v5 + 48))(v12, 1, v4))
        {
          (*(v5 + 16))(v7, v12, v4);
          sub_12E1C(v12, &qword_DF43E0, &unk_B03B20);

          sub_AB2D90();
          return (*(v5 + 8))(v7, v4);
        }

        sub_12E1C(v12, &qword_DF43E0, &unk_B03B20);
      }
    }

    v24 = sub_AB3430();
    return (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
  }

  else
  {
    v21 = sub_AB3430();
    v22 = *(*(v21 - 8) + 56);

    return v22(a1, 1, 1, v21);
  }
}

uint64_t sub_1A3B04()
{

  return swift_deallocObject();
}

uint64_t sub_1A3B64(void **__dst, id *__src, id *a3, unint64_t a4, uint64_t (*a5)(id, id))
{
  v6 = v5;
  v7 = a3;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    v16 = a4;
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      memmove(a4, __dst, 8 * v11);
    }

    v55 = &v16[v11];
    if (v9 < 8 || __src >= v7)
    {
LABEL_20:
      v27 = v8;
      goto LABEL_53;
    }

    v17 = __src;
    while (1)
    {
      v18 = v17;
      v19 = v6;
      v20 = v16;
      v21 = *v16;
      v22 = *v17;
      v23 = v21;
      v24 = a5(v22, v23);
      if (v19)
      {

        v41 = v20;
        v42 = v55 - v20 + 7;
        if (v55 - v20 >= 0)
        {
          v42 = v55 - v20;
        }

        v43 = v42 >> 3;
        if (v8 < v20 || v8 >= (v20 + (v42 & 0xFFFFFFFFFFFFFFF8)))
        {
          memmove(v8, v20, 8 * v43);
        }

        else if (v8 != v20)
        {
          v44 = 8 * v43;
          v45 = v8;
          goto LABEL_59;
        }

        return 1;
      }

      v25 = v24;

      if ((v25 & 1) == 0)
      {
        break;
      }

      v26 = v18;
      v17 = v18 + 1;
      v16 = v20;
      if (v8 != v18)
      {
        goto LABEL_17;
      }

LABEL_18:
      ++v8;
      v6 = 0;
      if (v16 >= v55 || v17 >= v7)
      {
        goto LABEL_20;
      }
    }

    v26 = v20;
    v16 = v20 + 1;
    v17 = v18;
    if (v8 == v20)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v8 = *v26;
    goto LABEL_18;
  }

  v27 = __src;
  if (a4 != __src || &__src[v14] <= a4)
  {
    v28 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v28;
  }

  v52 = a4;
  v55 = (a4 + 8 * v14);
  if (v12 < 8 || v27 <= v8)
  {
    v16 = a4;
    goto LABEL_53;
  }

  v29 = -a4;
  v50 = -a4;
LABEL_27:
  v53 = v6;
  v51 = v27;
  v30 = v27 - 1;
  v31 = v55;
  v32 = v55 + v29;
  --v7;
  while (1)
  {
    v33 = *--v31;
    v34 = v30;
    v35 = *v30;
    v36 = v33;
    v37 = v35;
    v38 = a5(v36, v37);

    if (v53)
    {
      break;
    }

    v39 = v7 + 1;
    if (v38)
    {
      v40 = v34;
      if (v39 != v51)
      {
        *v7 = *v34;
      }

      v16 = v52;
      v6 = 0;
      if (v55 <= v52 || (v27 = v40, v29 = v50, v40 <= v8))
      {
        v27 = v40;
        goto LABEL_53;
      }

      goto LABEL_27;
    }

    if (v39 != v55)
    {
      *v7 = *v31;
    }

    v32 -= 8;
    --v7;
    v55 = v31;
    v30 = v34;
    if (v31 <= v52)
    {
      v55 = v31;
      v27 = v51;
      v16 = v52;
LABEL_53:
      v48 = v55 - v16 + 7;
      if (v55 - v16 >= 0)
      {
        v48 = v55 - v16;
      }

      if (v27 >= v16 && v27 < (v16 + (v48 & 0xFFFFFFFFFFFFFFF8)) && v27 == v16)
      {
        return 1;
      }

      v44 = 8 * (v48 >> 3);
      v45 = v27;
      v41 = v16;
LABEL_59:
      memmove(v45, v41, v44);
      return 1;
    }
  }

  if (v32 >= 0)
  {
    v46 = v32;
  }

  else
  {
    v46 = v32 + 7;
  }

  v47 = v46 >> 3;
  v45 = v51;
  v41 = v52;
  if (v51 < v52 || v51 >= (v52 + (v46 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v51, v52, 8 * v47);
    return 1;
  }

  if (v51 != v52)
  {
    v44 = 8 * v47;
    goto LABEL_59;
  }

  return 1;
}

char *sub_1A3F30(char *a1, void *a2, char a3, _BYTE *a4)
{
  ObjectType = swift_getObjectType();
  *&a4[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_containerStoreItemMetadataDidChangeNotificationObserver] = 0;
  *&a4[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_containerEntriesDidUpdateNotificationObserver] = 0;
  *&a4[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_underlyingResponseInvalidationObserver] = 0;
  a4[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_useUnderlyingResponseForPlayback] = 0;
  *&a4[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_underlyingResponse] = a2;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = a2;
  }

  v10 = a2;
  v11 = [v8 representedObjectResults];

  if (!v11)
  {
    v11 = [objc_allocWithZone(MPSectionedCollection) init];
  }

  *&a4[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_storeItemMetadataResults] = v11;
  v32.receiver = a4;
  v32.super_class = ObjectType;
  result = objc_msgSendSuper2(&v32, "initWithRequest:", a1);
  if (result)
  {
    v13 = result;
    v14 = v10;
    v15 = v13;
    v16 = [v14 results];
    [v15 setResults:v16];

    v30 = a1;
    v17 = *&a1[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel];
    v18 = v17;
    v19 = *JSContainerDetail.NotificationName.storeItemMetadataDidChange.unsafeMutableAddressor();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v21 = v15;
    v22 = v18;
    *&v21[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_containerStoreItemMetadataDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v19, v17, 1, 1, sub_AAF10, v20);

    v23 = *JSContainerDetail.NotificationName.entriesDidUpdate.unsafeMutableAddressor();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    v25 = v22;
    *&v21[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_containerEntriesDidUpdateNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v23, v17, 1, 1, sub_AADB4, v24);

    v26 = MPModelResponseDidInvalidateNotification;
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = v14;
    v29 = v26;

    swift_allocObject();
    *&v21[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_underlyingResponseInvalidationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v29, v14, 1, 1, sub_AAF10, v27);

    LOBYTE(v27) = [v28 isValid];

    if ((v27 & 1) == 0)
    {
      [v21 _invalidate];
    }

    v21[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_useUnderlyingResponseForPlayback] = a3 & 1;
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1A42E4(char *a1, void *a2, char a3, _BYTE *a4)
{
  ObjectType = swift_getObjectType();
  *&a4[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_containerStoreItemMetadataDidChangeNotificationObserver] = 0;
  *&a4[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_containerEntriesDidUpdateNotificationObserver] = 0;
  *&a4[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_underlyingResponseInvalidationObserver] = 0;
  a4[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_useUnderlyingResponseForPlayback] = 0;
  *&a4[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_underlyingResponse] = a2;
  v29 = a2;
  v8 = a2;
  v9 = [v8 representedObjectResults];
  if (!v9)
  {
    v9 = [objc_allocWithZone(MPSectionedCollection) init];
  }

  *&a4[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_storeItemMetadataResults] = v9;
  v31.receiver = a4;
  v31.super_class = ObjectType;
  result = objc_msgSendSuper2(&v31, "initWithRequest:", a1);
  if (result)
  {
    v11 = result;
    v12 = v8;
    v13 = v11;
    v14 = [v12 results];
    [v13 setResults:v14];

    v28 = a1;
    v15 = *&a1[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel];
    v16 = v15;
    v17 = *JSContainerDetail.NotificationName.storeItemMetadataDidChange.unsafeMutableAddressor();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v19 = v13;
    v20 = v16;
    *&v19[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_containerStoreItemMetadataDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, v15, 1, 1, sub_AAF10, v18);

    v21 = *JSContainerDetail.NotificationName.entriesDidUpdate.unsafeMutableAddressor();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    v23 = v20;
    *&v19[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_containerEntriesDidUpdateNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v21, v15, 1, 1, sub_AAF10, v22);

    v24 = MPModelResponseDidInvalidateNotification;
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = v12;
    v27 = v24;

    swift_allocObject();
    *&v19[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_underlyingResponseInvalidationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v27, v29, 1, 1, sub_AAF10, v25);

    LOBYTE(v25) = [v26 isValid];

    if ((v25 & 1) == 0)
    {
      [v19 _invalidate];
    }

    v19[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_useUnderlyingResponseForPlayback] = a3 & 1;
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A4668(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC16MusicApplication38JSContainerDetailModelRequestOperation_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *&v3[v8] = UnfairLock.init()();
  [a1 copy];
  sub_ABAB50();
  type metadata accessor for JSContainerDetailModelRequest();
  swift_dynamicCast();
  *&v3[OBJC_IVAR____TtC16MusicApplication38JSContainerDetailModelRequestOperation_request] = v12;
  swift_unknownObjectRelease();
  v9 = &v3[OBJC_IVAR____TtC16MusicApplication38JSContainerDetailModelRequestOperation_responseHandler];
  *v9 = a2;
  *(v9 + 1) = a3;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "init");
}

unint64_t sub_1A4764()
{
  result = qword_DF43C0;
  if (!qword_DF43C0)
  {
    sub_AB2A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF43C0);
  }

  return result;
}

uint64_t sub_1A47BC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_1A47F4(void *a1)
{
  v2 = sub_AB9260();
  [a1 setGlobalPlaylistID:v2];
}

uint64_t sub_1A4850()
{

  return swift_deallocObject();
}

uint64_t sub_1A48C8()
{

  return swift_deallocObject();
}

uint64_t sub_1A495C()
{

  return swift_deallocObject();
}

void sub_1A49D0(SEL *a1)
{
  v2 = *(v1 + 16);
  v3 = [*(v1 + 24) *a1];
  v4 = *v2;
  *v2 = v3;
}

uint64_t sub_1A4A34(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v5 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      String.insensitiveCompareString()();
      String.insensitiveCompareString()();
      sub_36A48();
      v6 = sub_ABAB20();
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1A4B10(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = [a1 type];
  if (v6 == &dword_0 + 3)
  {
    v35 = [a1 movie];
    if (v35)
    {
      v20 = v35;
      if ([v35 hasLoadedValueForKey:MPModelPropertyMovieTitle])
      {
        v34 = [v20 title];
        if (!v34)
        {
LABEL_26:

          v40 = 1;
          return v40 & 1;
        }

LABEL_18:
        v36 = v34;
        v37 = sub_AB92A0();
        v39 = v38;

        v40 = sub_1A4A34(a2, a3, v37, v39);

        return v40 & 1;
      }

LABEL_22:
    }

LABEL_23:
    v40 = 0;
    return v40 & 1;
  }

  if (v6 == &dword_0 + 2)
  {
    v33 = [a1 tvEpisode];
    if (v33)
    {
      v20 = v33;
      if ([v33 hasLoadedValueForKey:MPModelPropertyTVEpisodeTitle])
      {
        v34 = [v20 title];
        if (!v34)
        {
          goto LABEL_26;
        }

        goto LABEL_18;
      }

      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (v6 != &dword_0 + 1)
  {
    v40 = 1;
    return v40 & 1;
  }

  v42 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_AF4EC0;
  *(v7 + 32) = sub_AB92A0();
  *(v7 + 40) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF4EC0;
  *(v11 + 32) = sub_AB92A0();
  *(v11 + 40) = v12;
  isa = sub_AB9740().super.isa;
  v14 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v14;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80, &unk_AF87C0);
  v15 = objc_allocWithZone(MPPropertySet);
  v16 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v17 = sub_AB8FD0().super.isa;

  v18 = [v15 initWithProperties:v16 relationships:v17];

  v19 = [a1 song];
  if (!v19)
  {

    goto LABEL_23;
  }

  v20 = v19;
  if (([v19 hasLoadedValuesForPropertySet:v18] & 1) == 0)
  {

    goto LABEL_22;
  }

  v21 = [v20 title];
  if (!v21)
  {

    goto LABEL_26;
  }

  v22 = v21;
  v23 = sub_AB92A0();
  v25 = v24;

  v26 = [v20 artist];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 name];
    if (!v28)
    {

      v40 = 1;
      return v40 & 1;
    }

    v29 = v28;
    v30 = sub_AB92A0();
    v32 = v31;

    if ((sub_1A4A34(a2, v42, v23, v25) & 1) == 0)
    {
      v40 = sub_1A4A34(a2, v42, v30, v32);

      return v40 & 1;
    }
  }

  else
  {
  }

  v40 = 1;
  return v40 & 1;
}

void sub_1A4FB8(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(id, id))
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_89:
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_91;
    }

    goto LABEL_129;
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 >= v7)
    {
      goto LABEL_20;
    }

    v101 = v7;
    v13 = *v6;
    v14 = *(v13 + 8 * v9);
    v9 = *(v13 + 8 * v12);
    v15 = v14;
    v16 = a5(v9, v15);
    if (v5)
    {

      return;
    }

    v17 = v16;

    v18 = v11 + 2;
    v97 = v11;
    v19 = 8 * v11;
    v20 = (v13 + v19 + 16);
    while (1)
    {
      v21 = v101;
      if (v101 == v18)
      {
        break;
      }

      v22 = *(v20 - 1);
      v9 = *v20;
      v23 = v22;
      LODWORD(v22) = a5(v9, v23);

      ++v18;
      ++v20;
      if ((v17 ^ v22))
      {
        v21 = v18 - 1;
        break;
      }
    }

    v6 = a3;
    v8 = a4;
    if ((v17 & 1) == 0)
    {
      goto LABEL_18;
    }

    v24 = v97;
    if (v21 < v97)
    {
      goto LABEL_123;
    }

    if (v97 < v21)
    {
      v25 = 8 * v21 - 8;
      v26 = v21;
      do
      {
        if (v24 != --v26)
        {
          v27 = *a3;
          if (!*a3)
          {
            goto LABEL_127;
          }

          v28 = *(v27 + v19);
          *(v27 + v19) = *(v27 + v25);
          *(v27 + v25) = v28;
        }

        ++v24;
        v25 -= 8;
        v19 += 8;
      }

      while (v24 < v26);
LABEL_18:
      v12 = v21;
      v11 = v97;
      goto LABEL_20;
    }

    v12 = v21;
    v11 = v97;
LABEL_20:
    v29 = v6[1];
    if (v12 >= v29)
    {
      goto LABEL_132;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_119;
    }

    if (v12 - v11 >= v8)
    {
      goto LABEL_132;
    }

    v30 = v11 + v8;
    if (__OFADD__(v11, v8))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    if (v30 >= v29)
    {
      v30 = v6[1];
    }

    if (v30 < v11)
    {
      goto LABEL_122;
    }

    if (v12 == v30)
    {
LABEL_132:
      if (v12 < v11)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v79 = *v6;
      v80 = v79 + 8 * v12 - 8;
      v98 = v11;
      v81 = v11 - v12;
      v94 = v30;
      do
      {
        v102 = v12;
        v82 = *(v79 + 8 * v12);
        v83 = v81;
        v95 = v80;
        do
        {
          v84 = *v80;
          v9 = v82;
          v85 = v84;
          v86 = a5(v9, v85);
          if (v5)
          {

            return;
          }

          v87 = v86;

          if ((v87 & 1) == 0)
          {
            break;
          }

          if (!v79)
          {
            goto LABEL_125;
          }

          v88 = *v80;
          v82 = *(v80 + 8);
          *v80 = v82;
          *(v80 + 8) = v88;
          v80 -= 8;
        }

        while (!__CFADD__(v83++, 1));
        v12 = v102 + 1;
        v80 = v95 + 8;
        --v81;
      }

      while (v102 + 1 != v94);
      v12 = v94;
      v6 = a3;
      v11 = v98;
      if (v94 < v98)
      {
        goto LABEL_118;
      }
    }

    v31 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_6A6C0(0, *(v10 + 2) + 1, 1, v10);
    }

    v33 = *(v10 + 2);
    v32 = *(v10 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v10 = sub_6A6C0((v32 > 1), v33 + 1, 1, v10);
    }

    *(v10 + 2) = v34;
    v35 = &v10[16 * v33];
    *(v35 + 4) = v31;
    *(v35 + 5) = v12;
    v36 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    v9 = v12;
    if (v33)
    {
      break;
    }

LABEL_3:
    v7 = v6[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_89;
    }
  }

  while (1)
  {
    v37 = v34 - 1;
    if (v34 >= 4)
    {
      v42 = &v10[16 * v34 + 32];
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_105;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_106;
      }

      v49 = &v10[16 * v34];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_108;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_111;
      }

      if (v53 >= v45)
      {
        v71 = &v10[16 * v37 + 32];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_117;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

    if (v34 == 3)
    {
      v38 = *(v10 + 4);
      v39 = *(v10 + 5);
      v48 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      v41 = v48;
LABEL_48:
      if (v41)
      {
        goto LABEL_107;
      }

      v54 = &v10[16 * v34];
      v56 = *v54;
      v55 = *(v54 + 1);
      v57 = __OFSUB__(v55, v56);
      v58 = v55 - v56;
      v59 = v57;
      if (v57)
      {
        goto LABEL_110;
      }

      v60 = &v10[16 * v37 + 32];
      v62 = *v60;
      v61 = *(v60 + 1);
      v48 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v48)
      {
        goto LABEL_113;
      }

      if (__OFADD__(v58, v63))
      {
        goto LABEL_114;
      }

      if (v58 + v63 >= v40)
      {
        if (v40 < v63)
        {
          v37 = v34 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_62;
    }

    v64 = &v10[16 * v34];
    v66 = *v64;
    v65 = *(v64 + 1);
    v48 = __OFSUB__(v65, v66);
    v58 = v65 - v66;
    v59 = v48;
LABEL_62:
    if (v59)
    {
      goto LABEL_109;
    }

    v67 = &v10[16 * v37];
    v69 = *(v67 + 4);
    v68 = *(v67 + 5);
    v48 = __OFSUB__(v68, v69);
    v70 = v68 - v69;
    if (v48)
    {
      goto LABEL_112;
    }

    if (v70 < v58)
    {
      goto LABEL_3;
    }

LABEL_69:
    v75 = v37 - 1;
    if (v37 - 1 >= v34)
    {
      break;
    }

    if (!*v6)
    {
      goto LABEL_124;
    }

    v76 = *&v10[16 * v75 + 32];
    v77 = *&v10[16 * v37 + 40];
    sub_1A3B64((*v6 + 8 * v76), (*v6 + 8 * *&v10[16 * v37 + 32]), (*v6 + 8 * v77), v36, a5);
    if (v5)
    {
      goto LABEL_99;
    }

    if (v77 < v76)
    {
      goto LABEL_103;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_163DA4(v10);
    }

    if (v75 >= *(v10 + 2))
    {
      goto LABEL_104;
    }

    v78 = &v10[16 * v75];
    *(v78 + 4) = v76;
    *(v78 + 5) = v77;
    sub_163D18(v37);
    v34 = *(v10 + 2);
    if (v34 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  v10 = sub_163DA4(v10);
LABEL_91:
  v90 = *(v10 + 2);
  if (v90 < 2)
  {
LABEL_99:
  }

  else
  {
    while (*v6)
    {
      v91 = *&v10[16 * v90];
      v92 = *&v10[16 * v90 + 24];
      sub_1A3B64((*v6 + 8 * v91), (*v6 + 8 * *&v10[16 * v90 + 16]), (*v6 + 8 * v92), v9, a5);
      if (v5)
      {
        goto LABEL_99;
      }

      if (v92 < v91)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_163DA4(v10);
      }

      if (v90 - 2 >= *(v10 + 2))
      {
        goto LABEL_116;
      }

      v93 = &v10[16 * v90];
      *v93 = v91;
      *(v93 + 1) = v92;
      sub_163D18(v90 - 1);
      v90 = *(v10 + 2);
      if (v90 <= 1)
      {
        goto LABEL_99;
      }
    }

LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
  }
}

void sub_1A5630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(id, id))
{
  if (a3 != a2)
  {
    v7 = *a4;
    v8 = *a4 + 8 * a3 - 8;
    v9 = a1 - a3;
LABEL_4:
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    v19 = v8;
    while (1)
    {
      v11 = *v8;
      v12 = v10;
      v13 = v11;
      v14 = a5(v12, v13);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = *(v8 + 8);
        *v8 = v10;
        *(v8 + 8) = v15;
        v8 -= 8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 8;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1A5728(uint64_t *a1, uint64_t (*a2)(id, id))
{
  v4 = a1[1];
  v5 = sub_ABB2B0(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
        v8 = sub_AB97D0();
        *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v10[1] = v7;
      sub_1A4FB8(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1A5630(0, v4, 1, a1, a2);
  }
}

uint64_t sub_1A585C(uint64_t *a1, uint64_t (*a2)(id, id))
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1643F4(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1A5728(v8, a2);
  return sub_ABAEA0();
}

BOOL sub_1A5984(void *a1, void *a2)
{
  v4 = *(v2 + 16);
  v5 = [a1 position];
  v6 = [a2 position];
  if (v4)
  {
    return v5 < v6;
  }

  else
  {
    return v6 < v5;
  }
}

uint64_t sub_1A59E4()
{

  return swift_deallocObject();
}

uint64_t sub_1A5A38()
{

  return swift_deallocObject();
}

uint64_t sub_1A5A94()
{

  return swift_deallocObject();
}

uint64_t sub_1A5AE8()
{

  return swift_deallocObject();
}

unint64_t sub_1A5B54()
{
  result = qword_DF43E8;
  if (!qword_DF43E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF43E8);
  }

  return result;
}

unint64_t sub_1A5BAC()
{
  result = qword_DF43F0;
  if (!qword_DF43F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF43F0);
  }

  return result;
}

void sub_1A5D14(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication25JSModelGridSectionBuilder_initializedProperties;
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication25JSModelGridSectionBuilder_initializedProperties) == 2)
  {
    v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication25JSModelGridSectionBuilder_requestedProperties);
    v5 = [v4 properties];
    v6 = sub_AB9B40();

    v7 = sub_AB92A0();
    v9 = sub_4DFDA8(v7, v8, v6);
    v11 = v10;
    v13 = v12;

    v37 = v13 != -1;
    sub_F01A0(v9, v11, v13);
    v14 = sub_AB92A0();
    v16 = sub_4DFDA8(v14, v15, v6);
    v18 = v17;
    v20 = v19;
    v21 = ~v19 != 0;

    sub_F01A0(v16, v18, v20);
    v22 = sub_AB92A0();
    v24 = sub_4DFDA8(v22, v23, v6);
    v26 = v25;
    v28 = v27;
    v29 = ~v27 != 0;

    sub_F01A0(v24, v26, v28);
    v30 = v37 | (v21 << 8);
    v31 = v1 + v3;
    *(v31 + 2) = v29;
    *v31 = v30;
  }

  v32 = [objc_opt_self() emptyIdentifierSet];
  __chkstk_darwin();
  v36[2] = v1;
  v36[3] = a1;
  v33 = objc_allocWithZone(MusicModelGridSection);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1A6388;
  *(v34 + 24) = v36;
  aBlock[4] = sub_57B84;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_61;
  v35 = _Block_copy(aBlock);

  [v33 initWithIdentifiers:v32 block:v35];
  _Block_release(v35);

  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
  }
}

void sub_1A6010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();
  v6 = OBJC_IVAR____TtC16MusicApplication25JSModelGridSectionBuilder_initializedProperties;
  v7 = *(a2 + OBJC_IVAR____TtC16MusicApplication25JSModelGridSectionBuilder_initializedProperties) | (*(a2 + OBJC_IVAR____TtC16MusicApplication25JSModelGridSectionBuilder_initializedProperties + 2) << 16);
  if (*(a2 + OBJC_IVAR____TtC16MusicApplication25JSModelGridSectionBuilder_initializedProperties) == 2)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v8 = v5;
  if (*(a2 + OBJC_IVAR____TtC16MusicApplication25JSModelGridSectionBuilder_initializedProperties))
  {
    v9 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_isRankedList;
    swift_beginAccess();
    [v8 setRankedList:*(a3 + v9)];
    v7 = *(a2 + v6) | (*(a2 + v6 + 2) << 16);
  }

  if (v7 == 2)
  {
    goto LABEL_12;
  }

  if ((v7 & 0x100) != 0)
  {
    swift_beginAccess();

    v10 = sub_AB9260();

    [v8 setTitle:v10];

    v7 = *(a2 + v6) | (*(a2 + v6 + 2) << 16);
  }

  if (v7 == 2)
  {
    goto LABEL_13;
  }

  if ((v7 & 0x10000) != 0)
  {
    v11 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_uniformCellType;
    swift_beginAccess();
    [v8 setUniformCellType:qword_B02058[*(a3 + v11)]];
  }
}

id sub_1A61F0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSModelGridSectionBuilder();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for JSModelGridSectionBuilder.InitializedProperties(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for JSModelGridSectionBuilder.InitializedProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

double block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

BOOL static PromotionalParallaxPreferredHeightStyle.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  sub_7FD28();
  return sub_AB38E0() & 1;
}

char *sub_1A6440(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &ObjectType - v12;
  v14 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_additionalContentStackView;
  type metadata accessor for PromotionalParallaxContentStackView();
  *&v5[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundArtworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v17 = sub_80104(v16);

  *&v5[v15] = v17;
  v18 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundArtworkCachingReference;
  type metadata accessor for Artwork.CachingReference();
  *&v5[v18] = swift_allocObject();
  *&v5[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_baseHeight] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_collapsedBaseHeight] = 0;
  v19 = &v5[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_didInvalidatePreferredBaseHeight];
  *v19 = 0;
  v19[1] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle] = 0;
  v20 = &v5[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_preferredHeightStyle];
  *v20 = 0;
  v20[8] = 1;
  v21 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkComponent;
  *&v5[v21] = sub_1A9F5C();
  v22 = &v5[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_normalizedContentOffset];
  *v22 = 0;
  v22[1] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_pageHeaderContentView] = 0;
  v23 = &v5[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_title];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v5[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_subtitle];
  *v24 = 0;
  v24[1] = 0;
  v25 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayColor;
  if (qword_DE6C58 != -1)
  {
    swift_once();
  }

  v26 = qword_E71898;
  *&v5[v25] = qword_E71898;
  *&v5[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayAlpha] = 0;
  v27 = &v5[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_videoLooperDidChangeHandler];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v5[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_videoLooperDidFailHandler];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v5[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_isPlayingDidChangeHandler];
  *v29 = 0;
  v29[1] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_isVideoArtworkAllowed] = 0;
  v30 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_bottomHairlineView;
  v31 = objc_allocWithZone(UIView);
  v32 = v26;
  v33 = [v31 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_DE6C70 != -1)
  {
    swift_once();
  }

  [v33 setBackgroundColor:{qword_E718B0, ObjectType}];
  [v33 setHidden:1];
  *&v5[v30] = v33;
  v34 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_gradientView;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_AF82E0;
  *(v35 + 32) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.32];
  *(v35 + 40) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.16];
  *(v35 + 48) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.0];
  static Gradient.vertical(colors:locations:interpolations:)(v35, 0, 0, v91);

  v36 = objc_allocWithZone(type metadata accessor for Gradient.View());
  *&v5[v34] = Gradient.View.init(configuration:)(v91);
  *&v5[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkShadowView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_titleCompositingView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_collapsedTitleCompositingView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_subtitleCompositingView] = 0;
  v37 = &v5[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_cachedAdditionalContentStackViewSizeContext];
  *(v37 + 1) = 0;
  *(v37 + 2) = 0;
  *v37 = 0;
  v37[24] = 1;
  v38 = &v5[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_visualState];
  *v38 = xmmword_AF8620;
  v38[16] = 2;
  v39 = *&v5[v21];
  v40 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_89FAC(v39 + v40, v13);
  sub_89FAC(v39 + v40, v11);
  swift_beginAccess();

  sub_8A01C(v13, v39 + v40);
  swift_endAccess();
  sub_75AE8(v11);
  sub_12E1C(v11, &unk_DFFBC0, &unk_AF85C0);
  sub_12E1C(v13, &unk_DFFBC0, &unk_AF85C0);

  v90.receiver = v5;
  v90.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v90, "initWithFrame:", a1, a2, a3, a4);
  [v41 setClipsToBounds:1];
  v42 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundArtworkComponent;
  v43 = *&v41[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundArtworkComponent];
  *(v43 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isReusable) = 0;
  *(v43 + 24) = 0x78616C6C61726150;
  *(v43 + 32) = 0xEF6B726F77747241;

  *(*&v41[v42] + 16) = *&v41[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundArtworkCachingReference];

  v44 = *&v41[v42];
  v45 = *(v44 + 144);
  *(v44 + 144) = 2;
  if (v45 != 2)
  {
    v46 = *(v44 + 112);

    v47 = [v46 image];
    sub_788B8(v47);
  }

  v48 = *&v41[v42];
  v49 = objc_allocWithZone(UIColor);

  v50 = [v49 initWithWhite:0.0 alpha:0.08];
  v51 = *(v48 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_foregroundOverlayColor);
  *(v48 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_foregroundOverlayColor) = v50;
  v52 = v50;

  sub_781B8();

  v53 = *&v41[v42];
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = (v53 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v56 = *(v53 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v57 = *(v53 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);
  *v55 = sub_1AB898;
  v55[1] = v54;
  v58 = v41;

  sub_17654(v56, v57);

  v59 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkComponent;
  v60 = *&v58[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkComponent];
  v61 = 76.0;
  if (v58[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle] == 1)
  {
    v61 = 128.0;
  }

  v62 = *(v60 + 80);
  v63 = *(v60 + 88);
  *(v60 + 80) = v61;
  *(v60 + 88) = v61;

  sub_75614(v62, v63);

  v64 = UIView.Border.artwork.unsafeMutableAddressor();
  v65 = *v64;
  v66 = *(v64 + 8);
  v67 = v64[2];
  v68 = v67;
  sub_75E64(v65, v66, v67);

  v69 = *&v58[v59];
  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = (v69 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v72 = *(v69 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v73 = *(v69 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);
  *v71 = sub_1AB86C;
  v71[1] = v70;

  sub_17654(v72, v73);

  v74 = *&v58[v59];
  v75 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v76 = (v74 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
  v77 = *(v74 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
  v78 = *(v74 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler + 8);
  *v76 = sub_1AB888;
  v76[1] = v75;

  sub_17654(v77, v78);

  v79 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_additionalContentStackView;
  v80 = *&v58[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_additionalContentStackView];
  v81 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v82 = v80;

  v83 = &v82[OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_layoutInvalidationHandler];
  v84 = *&v82[OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_layoutInvalidationHandler];
  v85 = *&v82[OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_layoutInvalidationHandler + 8];
  *v83 = sub_1AB890;
  v83[1] = v81;

  sub_17654(v84, v85);

  v86 = *(*&v41[v42] + 112);
  [v58 addSubview:v86];
  v87 = *(*&v58[v59] + 112);
  [v58 addSubview:v87];
  [v58 addSubview:*&v58[v79]];
  [v58 addSubview:*&v58[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_gradientView]];
  [v58 addSubview:*&v58[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_bottomHairlineView]];

  return v58;
}

double sub_1A6DE0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(Strong + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle) && *(Strong + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle) == 1)
    {
    }

    else
    {
      v4 = sub_ABB3C0();

      if ((v4 & 1) == 0)
      {
LABEL_7:

        return result;
      }
    }

    if (*(*&v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkComponent] + 64))
    {
      goto LABEL_7;
    }

    sub_81464();
    v5 = *&v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_title];
    v6 = *&v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_title + 8];

    v7 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v5, v6, [v3 effectiveUserInterfaceLayoutDirection], 0);

    sub_74EA4(v7);
  }

  return result;
}

void sub_1A6F4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = &Strong[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_cachedAdditionalContentStackViewSizeContext];
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = 0;
    v3[24] = 1;
    v10 = *&Strong[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_baseHeight];
    v9.receiver = Strong;
    v9.super_class = type metadata accessor for PromotionalParallaxContentView();
    v4 = v9.receiver;
    objc_msgSendSuper2(&v9, "frame");
    Width = CGRectGetWidth(v11);
    v6 = [v4 traitCollection];

    sub_1A70C4(v6, Width);
    if (sub_AB38D0())
    {
      v7 = *&v4[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_didInvalidatePreferredBaseHeight];
      if (v7)
      {
        v8 = *&v4[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_didInvalidatePreferredBaseHeight + 8];

        v7(v4);
        sub_17654(v7, v8);
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 1) = 0;
      *(v3 + 2) = 0;
      v3[24] = 1;
      [v4 setNeedsLayout];
    }
  }
}

double sub_1A70C4(id a1, double a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle;
  if (v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_preferredHeightStyle + 8])
  {
    if (v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle])
    {
      if (v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle] == 1)
      {
        if ([a1 horizontalSizeClass] == &dword_0 + 2)
        {
          Width = 138.0;
        }

        else
        {
          Width = 220.0;
        }

        if ([a1 horizontalSizeClass] == &dword_0 + 2)
        {
          v8 = 226.0;
        }

        else
        {
          v8 = 0.0;
        }
      }

      else
      {
        [v2 bounds];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v17 = [a1 horizontalSizeClass];
        v55.origin.x = v10;
        v55.origin.y = v12;
        v55.size.width = v14;
        v55.size.height = v16;
        Width = CGRectGetWidth(v55);
        v8 = 0.0;
        if (v17 == &dword_0 + 2)
        {
          [a1 displayScale];
          sub_AB3A00();
          Width = v18;
        }
      }
    }

    else
    {
      v53 = a2;
      v51 = 0x4074000000000000;
      sub_471A4();
      if (sub_AB3900())
      {
        Width = 218.0;
      }

      else
      {
        Width = 240.0;
      }

      v8 = 0.0;
    }
  }

  else
  {
    Width = *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_preferredHeightStyle];
    v8 = 0.0;
  }

  v19 = a2;
  if ([a1 horizontalSizeClass] == &dword_0 + 2)
  {
    [v3 music_inheritedLayoutInsets];
    v22 = 76.0;
    if (v3[v6] == 1)
    {
      v22 = 128.0;
    }

    v19 = a2 - v22 - (v20 + v21);
  }

  v23 = &v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_cachedAdditionalContentStackViewSizeContext];
  if ((v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_cachedAdditionalContentStackViewSizeContext + 24] & 1) != 0 || (v24 = v23[1], v52 = v19, v54 = *(v23 + 2), sub_7FD28(), (sub_AB38E0() & 1) == 0))
  {
    [*&v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_additionalContentStackView] sizeThatFits:{v19, 0.0, *&v52, v54}];
    v24 = v25;
  }

  v26 = Width + v24;
  if (Width + v24 > v8 || v8 <= 0.0)
  {
    v8 = Width + v24;
  }

  v28 = *&v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_titleCompositingView];
  if (v28)
  {
    v29 = v28;
    [v3 music_inheritedLayoutInsets];
    v31 = v30;
    [v3 music_inheritedLayoutInsets];
    [v29 sizeThatFits:{a2 - (v31 + v32), 0.0}];
    v34 = v33;

    v8 = v8 + v34;
  }

  v35 = v3[v6];
  v36 = [v3 window];
  v37 = [v36 windowScene];

  if (v35 == 1)
  {
    v38 = 0.0;
    if (v37)
    {
      v39 = [v37 statusBarManager];
      if (v39)
      {
        v40 = v39;
        [v39 statusBarFrame];
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v48 = v47;

        v56.origin.x = v42;
        v56.origin.y = v44;
        v56.size.width = v46;
        v56.size.height = v48;
        Height = CGRectGetHeight(v56);

        if (Height <= 20.0)
        {
          v38 = 0.0;
        }

        else
        {
          v38 = Height + -20.0;
        }
      }

      else
      {
      }
    }
  }

  else
  {

    v38 = 0.0;
  }

  return v8 + v38;
}

uint64_t sub_1A7634(uint64_t a1, uint64_t a2, char a3)
{
  [v3 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *&v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_collapsedBaseHeight];
  v15 = *&v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_baseHeight];
  if (a3)
  {
    v16 = *&v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_normalizedContentOffset + 8];
    v17 = v16;
  }

  else
  {
    v17 = *&a2;
    v16 = *&v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_normalizedContentOffset + 8];
  }

  v18 = &v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_visualState];
  swift_beginAccess();
  if (v14 <= 0.0 || v14 >= v15)
  {
    goto LABEL_8;
  }

  v26.origin.x = v7;
  v26.origin.y = v9;
  v26.size.width = v11;
  v26.size.height = v13;
  CGRectGetHeight(v26);
  sub_471A4();
  if (sub_AB3900())
  {
    *v18 = 0;
    *(v18 + 1) = 0;
    goto LABEL_11;
  }

  v27.origin.x = v7;
  v27.origin.y = v9;
  v27.size.width = v11;
  v27.size.height = v13;
  CGRectGetHeight(v27);
  if (sub_AB38F0())
  {
LABEL_8:
    *v18 = xmmword_AF8620;
LABEL_11:
    v20 = 2;
    goto LABEL_12;
  }

  sub_7FD28();
  if (sub_AB38E0())
  {
    return swift_endAccess();
  }

  if (v17 < v16)
  {
    v28.origin.x = v7;
    v28.origin.y = v9;
    v28.size.width = v11;
    v28.size.height = v13;
    v22 = CGRectGetHeight(v28) - v14;
    v29.origin.x = v7;
    v29.origin.y = v9;
    v29.size.width = v11;
    v29.size.height = v13;
    Height = CGRectGetHeight(v29);
    *v18 = v22;
    *(v18 + 1) = v15 - Height;
    v18[16] = 0;
    return swift_endAccess();
  }

  if (v16 >= v17)
  {
    return swift_endAccess();
  }

  v30.origin.x = v7;
  v30.origin.y = v9;
  v30.size.width = v11;
  v30.size.height = v13;
  v24 = v15 - CGRectGetHeight(v30);
  v31.origin.x = v7;
  v31.origin.y = v9;
  v31.size.width = v11;
  v31.size.height = v13;
  v25 = CGRectGetHeight(v31);
  *v18 = v24;
  *(v18 + 1) = v25 - v14;
  v20 = 1;
LABEL_12:
  v18[16] = v20;
  return swift_endAccess();
}

void sub_1A7890()
{
  v1 = v0;
  v276.receiver = v0;
  v276.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v276, "layoutSubviews");
  v2 = &selRef__authenticateReturningError_;
  [v0 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [v0 traitCollection];
  [v11 displayScale];
  v261 = v12;
  [v0 music_inheritedLayoutInsets];
  v271 = v6;
  v272 = v4;
  rect = v8;
  v263 = v13;
  v15 = UIEdgeInsetsInsetRect(v4, v6, v8, v10, v14, v13);
  v244 = v16;
  v245 = v15;
  v255 = v17;
  v251 = v18;
  v19 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_titleCompositingView;
  v20 = *&v0[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_titleCompositingView];
  if (v20)
  {
    v277 = 0x3FF0000000000000uLL;
    v278 = 0;
    v279 = 0x3FF0000000000000uLL;
    *&v280 = 0;
    [v20 setTransform:&v277];
  }

  v21 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_collapsedTitleCompositingView;
  v22 = *&v0[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_collapsedTitleCompositingView];
  if (v22)
  {
    v277 = 0x3FF0000000000000uLL;
    v278 = 0;
    v279 = 0x3FF0000000000000uLL;
    *&v280 = 0;
    [v22 setTransform:&v277];
  }

  v23 = *&v0[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundArtworkComponent];
  v282.origin.x = v4;
  v282.origin.y = v6;
  v282.size.width = v8;
  v282.size.height = v10;
  Width = CGRectGetWidth(v282);
  v25 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_baseHeight;
  v26 = *&v0[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_baseHeight];
  v28 = v23[10];
  v27 = v23[11];
  v23[10] = Width;
  *(v23 + 11) = v26;
  sub_75614(v28, v27);
  v283.origin.x = v4;
  v283.origin.y = v6;
  v283.size.width = v8;
  v268 = v10;
  v283.size.height = v10;
  v29 = CGRectGetWidth(v283);
  [v0 bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [v11 horizontalSizeClass];
  v284.origin.x = v31;
  v284.origin.y = v33;
  v284.size.width = v35;
  v284.size.height = v37;
  v39 = CGRectGetWidth(v284);
  if (v38 == &dword_0 + 2)
  {
    [v11 displayScale];
    sub_AB3A00();
  }

  v41 = v23[12];
  v40 = v23[13];
  v23[12] = v29;
  v23[13] = v39;
  sub_756F8(v41, v40);
  v42 = sub_76368(0, 0, 1);
  v44 = v43;
  v247 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkComponent;

  v45 = sub_76368(0, 0, 1);
  v269 = v46;

  if (v42 <= 0.0)
  {
    v264 = &v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle];
    LOBYTE(v51) = v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle];
    v47 = v268;
    if (v51 != 1)
    {
      v56 = 76.0;
      v253 = v268;
      x = v4;
      v262 = v271;
      v48 = v8;
      v52 = v269;
      goto LABEL_26;
    }

    x = v4;
    v262 = v6;
    height = v268;
    v48 = v8;
    v52 = v269;
  }

  else
  {
    v285.origin.y = v6;
    v285.origin.x = v4;
    v285.size.width = v8;
    v47 = v268;
    v285.size.height = v268;
    if (*&v1[v25] < CGRectGetHeight(v285))
    {
      v286.origin.y = v6;
      v286.origin.x = v4;
      v286.size.width = v8;
      v286.size.height = v268;
      v44 = v44 + CGRectGetHeight(v286) - *&v1[v25];
    }

    v230 = v44;
    sub_ABA470();
    v48 = v287.size.width;
    height = v287.size.height;
    x = v287.origin.x;
    MinY = CGRectGetMinY(v287);
    if (MinY > 0.0)
    {
      MinY = 0.0;
    }

    v262 = MinY;
    v264 = &v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle];
    LODWORD(v51) = v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle];
    if (!v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle])
    {
      v57 = *&v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_normalizedContentOffset + 8];
      if (v57 < 0.0)
      {
        v57 = 0.0;
      }

      v54 = v57 * 0.25;
      v52 = v269;
      goto LABEL_24;
    }

    v52 = v269;
    if (v51 != 1)
    {
      v53 = *&v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_normalizedContentOffset + 8];
      if (v53 < 0.0)
      {
        v53 = 0.0;
      }

      v54 = v53 / 1.15;
LABEL_24:
      v253 = height;
      v262 = v262 + v54;
      *&v55 = 76.0;
      goto LABEL_25;
    }
  }

  v253 = height;
  *&v55 = 40.0;
LABEL_25:
  v56 = *&v55;
LABEL_26:
  v259 = v45;
  v58 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_collapsedBaseHeight;
  v59 = *&v1[v25] - *&v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_collapsedBaseHeight];
  v60 = *&v1[v19];
  v61 = 0.0;
  if (v60)
  {
    v62 = *&v1[v21];
    v63 = 1.0;
    v265 = 1.0;
    v248 = 0.0;
    if (v62)
    {
      v51 = v60;
      v64 = v62;
      [v51 sizeThatFits:{0.0, 0.0}];
      v66 = 1.0 / v65;
      [v64 sizeThatFits:{0.0, 0.0}];
      v265 = v66 * v67;
      v248 = (1.0 - v66 * v67) / (*&v1[v25] - *&v1[v58]);
      [v64 sizeThatFits:{v255, v251}];
      v2 = &selRef__authenticateReturningError_;
      v69 = 1.0 / v68;
      [v51 sizeThatFits:{v255, v251}];
      v63 = v69 * v70;
      v71 = 1.0 - v69 * v70;
      v72 = *&v1[v25];
      v73 = *&v1[v58];

      LOBYTE(v51) = *v264;
      v61 = v71 / (v72 - v73);
      v47 = v268;
      v52 = v269;
    }
  }

  else
  {
    v63 = 1.0;
    v265 = 1.0;
    v248 = 0.0;
  }

  v242 = v61;
  v266 = v63;
  v74 = v52 - v56;
  v257 = v59 * 0.5;
  p_name = &JSDateDescriptor.name;
  v76 = [v11 horizontalSizeClass];
  v77 = v56;
  if (v51 != 1)
  {
    v288.size.height = v253;
    v288.origin.x = x;
    v288.origin.y = v262;
    v288.size.width = v48;
    MaxY = CGRectGetMaxY(v288);
    v289.origin.y = v271;
    v289.origin.x = v272;
    v289.size.width = rect;
    v289.size.height = v47;
    v80 = CGRectGetMaxY(v289);
    if (v80 >= MaxY)
    {
      v80 = MaxY;
    }

    v78 = v80 - v263 - v52;
    goto LABEL_36;
  }

  if (v76 == &dword_0 + 2)
  {
    v78 = 84.0;
LABEL_36:
    v81 = v78;
    goto LABEL_37;
  }

  v125 = *v264;
  v126 = [v1 window];
  v127 = [v126 windowScene];

  if (v125 == 1)
  {
    v78 = 21.0;
    if (v127)
    {
      v128 = [v127 statusBarManager];
      if (v128)
      {
        v129 = v128;
        [v128 statusBarFrame];
        v131 = v130;
        v133 = v132;
        v135 = v134;
        v240 = v136;

        v299.origin.x = v131;
        v299.origin.y = v133;
        v299.size.width = v135;
        v299.size.height = v240;
        v137 = CGRectGetHeight(v299);

        if (v137 <= 20.0)
        {
          v78 = 21.0;
        }

        else
        {
          v78 = v137 + -20.0 + 21.0;
        }
      }

      else
      {
      }
    }
  }

  else
  {

    v78 = 21.0;
  }

  v172 = *v264;
  v173 = [v1 window];
  v174 = [v173 windowScene];

  if (v172 != 1)
  {

    v81 = 42.0;
    v2 = &selRef__authenticateReturningError_;
    p_name = (&JSDateDescriptor + 24);
    goto LABEL_37;
  }

  v2 = &selRef__authenticateReturningError_;
  p_name = (&JSDateDescriptor + 24);
  if (!v174)
  {
    goto LABEL_126;
  }

  v175 = [v174 statusBarManager];
  if (!v175)
  {

LABEL_126:
    v81 = 42.0;
    goto LABEL_37;
  }

  v176 = v175;
  [v175 statusBarFrame];
  v178 = v177;
  v180 = v179;
  v238 = v182;
  v241 = v181;

  v311.origin.x = v178;
  v311.origin.y = v180;
  v311.size.height = v238;
  v311.size.width = v241;
  v183 = CGRectGetHeight(v311);

  if (v183 <= 20.0)
  {
    v81 = 42.0;
  }

  else
  {
    v81 = v183 + -20.0 + 42.0;
  }

  p_name = (&JSDateDescriptor + 24);
LABEL_37:
  v82 = v74 / v59;
  v83 = &v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_visualState];
  v84 = (v81 - v78) / (*&v1[v25] - *&v1[v58]);
  swift_beginAccess();
  v250 = v48;
  if (!*(v83 + 16))
  {
    v86 = *v83;
    v85 = v83[1];
    *&v277 = *v83;
    goto LABEL_41;
  }

  if (*(v83 + 16) != 1)
  {
    v93 = v259;
    v92 = v269;
    if (*v83 == 0)
    {
      v94 = 1.0;
      v89 = 0.0;
      v93 = v77;
      v92 = v77;
      goto LABEL_48;
    }

    v123 = *v264;
    v124 = [v11 p_name[439]];
    if (v123 == 1)
    {
      if (v124 == &dword_0 + 2)
      {
        v265 = 1.0;
        v78 = v81;
        goto LABEL_123;
      }

      if (v124 == &dword_0 + 1)
      {
        v298.origin.y = v271;
        v298.origin.x = v272;
        v298.size.width = rect;
        v298.size.height = v47;
        v78 = v81 + CGRectGetHeight(v298) - *&v1[v25];
        v265 = 1.0;
LABEL_123:
        v94 = v266;
        v89 = 1.0;
        goto LABEL_48;
      }
    }

    v310.origin.y = v271;
    v310.origin.x = v272;
    v310.size.width = rect;
    v310.size.height = v47;
    CGRectGetHeight(v310);
    sub_AB39F0();
    v78 = v81 + v171;
    v89 = 1.0;
    v265 = 1.0;
    v94 = v266;
    goto LABEL_48;
  }

  v85 = *v83;
  v86 = v83[1];
  *&v277 = v86;
LABEL_41:
  *&v274 = v257;
  sub_471A4();
  v87 = sub_AB3900();
  v47 = v268;
  v88 = 1.0 - fabs(1.0 / v257 * v86 + -1.0);
  if (v87)
  {
    v89 = v88;
  }

  else
  {
    v89 = 1.0;
  }

  v90 = v82 * v85;
  v91 = v265;
  if (1.0 - v248 * v85 > v265)
  {
    v91 = 1.0 - v248 * v85;
  }

  v265 = v91;
  v92 = v269 - v90;
  v93 = v259 - v90;
  v78 = v81 - v84 * v85;
  v94 = v266 + v242 * v85;
  if (v94 < 1.0)
  {
    v94 = 1.0;
  }

LABEL_48:
  v267 = v94;
  if (*v264 != 1)
  {
    v258 = v78;
    v270 = v92;
    v97 = v2;
    v98 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_gradientView;
    v99 = *&v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_gradientView];
    v293.origin.x = v272;
    v293.origin.y = v271;
    v293.size.width = rect;
    v293.size.height = v47;
    MinX = CGRectGetMinX(v293);
    v294.origin.x = v272;
    v294.origin.y = v271;
    v294.size.width = rect;
    v294.size.height = v47;
    v101 = CGRectGetMinY(v294);
    v256 = 0.0;
    if (*&v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_normalizedContentOffset + 8] > 0.0)
    {
      v102 = *&v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_normalizedContentOffset + 8];
    }

    else
    {
      v102 = 0.0;
    }

    v295.origin.x = v272;
    v295.origin.y = v271;
    v295.size.width = rect;
    v295.size.height = v47;
    v103 = CGRectGetWidth(v295);
    v296.origin.x = v272;
    v296.origin.y = v271;
    v296.size.width = rect;
    v296.size.height = v47;
    v104 = CGRectGetHeight(v296);
    if (v104 <= 174.0)
    {
      v105 = v104;
    }

    else
    {
      v105 = 174.0;
    }

    [v99 setFrame:{MinX, v101 + v102, v103, v105}];
    [v99 frame];
    v106 = CGRectGetHeight(v297);
    v107 = *&v1[v98];
    v108 = 88.0 / v106;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA9B0, &qword_AF9000);
    v109 = swift_allocObject();
    *(v109 + 16) = xmmword_AF8820;
    *(v109 + 32) = 0;
    *(v109 + 40) = v108;
    *(v109 + 48) = 0x3FF0000000000000;
    v110 = v21;
    v111 = v11;
    v112 = v19;
    v113 = &v107[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
    swift_beginAccess();
    v114 = *(v113 + 3);
    v115 = *v113;
    v116 = *(v113 + 1);
    *&v275.c = *(v113 + 2);
    *&v275.tx = v114;
    v274 = v115;
    *&v275.a = v116;
    v117 = v107;
    sub_8A334(&v274, &v277);
    v19 = v112;
    v11 = v111;
    v21 = v110;

    v277 = v274;
    v279 = *&v275.b;
    v280 = *&v275.d;
    ty = v275.ty;
    v278 = v109;
    Gradient.View.typedConfiguration.setter(&v277);

    v252 = 0.0;
    v246 = 0.0;
    v235 = 0.0;
    v236 = 0.0;
    v233 = 0.0;
    v234 = 0.0;
    v232 = 0.0;
    v239 = 0.0;
    v243 = 0.0;
    v237 = 0.0;
    v249 = 0.0;
    v118 = 0.0;
    v119 = 0.0;
    v120 = 0.0;
    v121 = v250;
    v122 = &selRef__authenticateReturningError_;
    goto LABEL_101;
  }

  if ([v11 p_name[439]] == &dword_0 + 2)
  {
    v290.origin.y = v244;
    v290.origin.x = v245;
    v290.size.width = v255;
    v290.size.height = v251;
    MaxX = CGRectGetMaxX(v290);
    v291.origin.x = 0.0;
    v291.origin.y = v78;
    v291.size.width = v93;
    v291.size.height = v92;
    v96 = MaxX - CGRectGetWidth(v291);
    v292.origin.x = v96;
    v292.origin.y = v78;
    v292.size.width = v93;
    v292.size.height = v92;
    v255 = v255 - (CGRectGetWidth(v292) + 20.0);
  }

  else
  {
    v231 = v92;
    sub_ABA470();
    v96 = v138;
    v78 = v139;
    v93 = v140;
    v92 = v141;
  }

  v121 = v250;
  v258 = v78;
  v300.origin.x = v96;
  v300.origin.y = v78;
  v300.size.width = v93;
  v300.size.height = v92;
  v142 = CGRectGetMaxY(v300);
  v143 = *&v1[v19];
  v263 = v96;
  v260 = v93;
  if (v143)
  {
    v144 = v143;
    if ([v11 p_name[439]] == &dword_0 + 2)
    {
      [*&v144[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel] _firstBaselineOffsetFromTop];
      v142 = 128.0 - v145;
    }

    [v144 sizeThatFits:{v255, v251, *&v231}];
    v249 = v146;
    v301.origin.x = v245;
    v301.origin.y = v244;
    v301.size.width = v255;
    v301.size.height = v251;
    v243 = CGRectGetMinX(v301);
    v302.origin.x = v245;
    v302.origin.y = v244;
    v302.size.width = v255;
    v302.size.height = v251;
    v239 = CGRectGetWidth(v302);
    if ([v11 p_name[439]] == &dword_0 + 2)
    {
      v237 = v142;
      v147 = *&v1[v21];
      if (v147)
      {
LABEL_75:
        v148 = v147;
        [v148 sizeThatFits:{v255, v251}];
        v150 = v149;
        v303.origin.x = v245;
        v303.origin.y = v244;
        v303.size.width = v255;
        v303.size.height = v251;
        CGRectGetMinX(v303);
        v304.origin.x = v263;
        v304.origin.y = v78;
        v304.size.width = v93;
        v304.size.height = v92;
        CGRectGetMaxY(v304);
        [*&v148[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel] _firstBaselineOffsetFromTop];
        v305.origin.x = v245;
        v305.origin.y = v244;
        v305.size.width = v255;
        v305.size.height = v251;
        CGRectGetWidth(v305);
        v47 = v268;
        sub_ABA470();
        v234 = v152;
        v235 = v151;
        v232 = v154;
        v233 = v153;
        [v144 setAlpha:{v89, v150}];
        [v148 setAlpha:fabs(v89 + -1.0)];
        [v1 bringSubviewToFront:v148];

LABEL_79:
        v306.size.width = v239;
        v306.origin.x = v243;
        v306.origin.y = v237;
        v306.size.height = v249;
        v156 = CGRectGetMaxY(v306);
        [*&v144[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel] _baselineOffsetFromBottom];
        v142 = v156 - v157;
        v158 = *&v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_subtitleCompositingView];
        if (v158)
        {
          v159 = v158;
          [v159 sizeThatFits:{v255, v251}];
          v236 = v160;
          v307.origin.x = v245;
          v307.origin.y = v244;
          v307.size.width = v255;
          v307.size.height = v251;
          v161 = CGRectGetMinX(v307);
          v162 = OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel;
          [*&v159[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel] _firstBaselineOffsetFromTop];
          v164 = v142;
          v165 = v92;
          v166 = v47;
          v167 = v164 + 36.0 - v163;
          v308.origin.x = v245;
          v308.origin.y = v244;
          v308.size.width = v255;
          v308.size.height = v251;
          v309.size.width = CGRectGetWidth(v308);
          v256 = v161;
          v309.origin.x = v161;
          v252 = v167;
          v309.origin.y = v167;
          v47 = v166;
          v92 = v165;
          v246 = v309.size.width;
          v309.size.height = v236;
          v168 = CGRectGetMaxY(v309);
          [*&v159[v162] _baselineOffsetFromBottom];
          v170 = v169;

          v142 = v168 - v170;
        }

        else
        {

          v256 = 0.0;
          v252 = 0.0;
          v246 = 0.0;
          v236 = 0.0;
        }

        p_name = &JSDateDescriptor.name;
        v121 = v250;
        v2 = &selRef__authenticateReturningError_;
        goto LABEL_93;
      }
    }

    else
    {
      [*&v144[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel] _firstBaselineOffsetFromTop];
      v237 = v142 + 44.0 - v155;
      v147 = *&v1[v21];
      if (v147)
      {
        goto LABEL_75;
      }
    }

    v234 = 0.0;
    v235 = 0.0;
    v232 = 0.0;
    v233 = 0.0;
    v47 = v268;
    goto LABEL_79;
  }

  v256 = 0.0;
  v252 = 0.0;
  v246 = 0.0;
  v235 = 0.0;
  v236 = 0.0;
  v233 = 0.0;
  v234 = 0.0;
  v232 = 0.0;
  v239 = 0.0;
  v243 = 0.0;
  v237 = 0.0;
  v249 = 0.0;
LABEL_93:
  v270 = v92;
  v312.origin.y = v271;
  v312.origin.x = v272;
  v312.size.width = rect;
  v312.size.height = v47;
  v184 = CGRectGetWidth(v312);
  if ([v11 p_name[439]] == &dword_0 + 2)
  {
    [v1 music_inheritedLayoutInsets];
    v187 = 76.0;
    if (*v264 == 1)
    {
      v187 = 128.0;
    }

    v184 = v184 - v187 - (v185 + v186);
  }

  v188 = &v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_cachedAdditionalContentStackViewSizeContext];
  if ((v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_cachedAdditionalContentStackViewSizeContext + 24] & 1) != 0 || (v119 = v188[1], v118 = *v188, *&v277 = v188[2], *&v274 = v184, sub_7FD28(), (sub_AB38E0() & 1) == 0))
  {
    [*&v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_additionalContentStackView] sizeThatFits:{v184, 0.0, *&v231}];
    v118 = v189;
    v119 = v190;
    v313.origin.y = v271;
    v313.origin.x = v272;
    v313.size.width = rect;
    v313.size.height = v268;
    v191 = CGRectGetWidth(v313);
    *v188 = v118;
    v188[1] = v119;
    v188[2] = v191;
    *(v188 + 24) = 0;
  }

  v97 = v2;
  v120 = v142 + 20.0;
  v122 = &selRef__authenticateReturningError_;
  [*&v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_gradientView] setFrame:{0.0, 0.0, 0.0, 0.0, *&v231}];
  v93 = v260;
LABEL_101:
  sub_76B28(x, v262, v121, v253);

  sub_76B28(v263, v258, v93, v270);

  [*&v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_additionalContentStackView] v122[262]];
  v192 = *&v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayView];
  if (v192)
  {
    [v192 v122[262]];
  }

  v193 = *&v1[v19];
  v194 = v268;
  if (v193)
  {
    [v193 v122[262]];
  }

  v195 = *&v1[v21];
  if (v195)
  {
    [v195 v122[262]];
  }

  v196 = *&v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_subtitleCompositingView];
  if (v196)
  {
    [v196 v122[262]];
  }

  v197 = *&v1[v19];
  if (v197)
  {
    v198 = [v197 layer];
    [v198 setAnchorPoint:{0.5, 0.0}];
  }

  v199 = *&v1[v21];
  if (v199)
  {
    v200 = [v199 layer];
    [v200 setAnchorPoint:{0.5, 0.0}];
  }

  v201 = *&v1[v19];
  if (v201)
  {
    CGAffineTransformMakeScale(&v274, v265, v265);
    [v201 setTransform:&v274];
  }

  v202 = *&v1[v21];
  if (v202)
  {
    CGAffineTransformMakeScale(&v274, v267, v267);
    [v202 setTransform:&v274];
  }

  v314.origin.x = v272;
  v314.origin.y = v271;
  v314.size.width = rect;
  v314.size.height = v268;
  v203 = CGRectGetWidth(v314);
  v315.origin.x = v272;
  v315.origin.y = v271;
  v315.size.width = rect;
  v315.size.height = v268;
  v204 = CGRectGetHeight(v315);
  v316.origin.x = 0.0;
  v316.origin.y = 0.0;
  v316.size.width = v203;
  v316.size.height = 1.0 / v261;
  v205 = CGRectGetHeight(v316);
  v206 = *&v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_bottomHairlineView];
  [v206 v122[262]];
  [v1 bringSubviewToFront:v206];
  v207 = *&v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkShadowView];
  if (v207)
  {
    v208 = *(*&v1[v247] + 112);
    v209 = v207;
    v210 = v208;
    v211 = [v209 layer];
    v212 = v210;
    [v212 v97[56]];
    v214 = v213;
    v216 = v215;
    v218 = v217;
    v220 = v219;
    [v212 v97[56]];
    v221 = CGRectGetWidth(v317) * 0.5;
    [v212 v97[56]];
    v222 = CGRectGetHeight(v318) * 0.5;
    v319.origin.x = v214;
    v319.origin.y = v216;
    v319.size.width = v218;
    v319.size.height = v220;
    v194 = v268;
    v223 = CGPathCreateWithRoundedRect(v319, v221, v222, 0);
    [v211 setShadowPath:v223];

    [v212 frame];
    [v209 v122[262]];
  }

  v224 = *&v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_pageHeaderContentView];
  if (v224)
  {
    v225 = v224;
    v320.origin.x = v272;
    v320.origin.y = v271;
    v320.size.width = rect;
    v320.size.height = v194;
    v226 = CGRectGetWidth(v320);
    sub_3468D8(v11, v226);
    v228 = v227;
    v321.origin.x = v272;
    v321.origin.y = v271;
    v321.size.width = rect;
    v321.size.height = v194;
    v229 = CGRectGetMaxY(v321) - v228;
    v322.origin.x = v272;
    v322.origin.y = v271;
    v322.size.width = rect;
    v322.size.height = v194;
    [v225 v122[262]];

    v11 = v225;
  }
}

void sub_1A8E90(void *a1)
{
  v2 = v1;
  v22.receiver = v2;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, "traitCollectionDidChange:", a1);
  v4 = [v2 traitCollection];
  if (a1)
  {
    v5 = [a1 horizontalSizeClass];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 horizontalSizeClass];
  if (!a1 || v5 != v6)
  {
    sub_1A9138(0, 0);
  }

  v7 = *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_titleCompositingView];
  if (v7)
  {
    v8 = v7;
    v9 = [v4 horizontalSizeClass] != &dword_0 + 2;
    *&v8[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties + 8] = v9;
    sub_38FDFC();
  }

  v10 = *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_collapsedTitleCompositingView];
  if (v10)
  {
    v11 = v10;
    v12 = [v4 horizontalSizeClass] != &dword_0 + 2;
    *&v11[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties + 8] = v12;
    sub_38FDFC();
  }

  v13 = *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_subtitleCompositingView];
  if (v13)
  {
    v14 = v13;
    v15 = [v4 horizontalSizeClass] != &dword_0 + 2;
    *&v14[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties + 8] = v15;
    sub_38FDFC();
  }

  sub_1A9484();
  if (v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle] == 1)
  {
    v16 = *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayView];
    if (v16)
    {
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v18 = v17;
        v19 = v16;
        v20 = [objc_opt_self() effectWithStyle:{4 * (objc_msgSend(v4, "userInterfaceStyle") == &dword_0 + 2)}];
        [v18 setEffect:v20];

        [v4 userInterfaceStyle];
        v21 = sub_AB9260();

        [v18 _setGroupName:v21];

        v4 = v21;
      }
    }
  }
}

double sub_1A9138(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  v7 = [v6 horizontalSizeClass];

  v9 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_collapsedTitleCompositingView;
  v10 = *&v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_collapsedTitleCompositingView];
  if (v7 == &dword_0 + 2)
  {
    *&v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_collapsedTitleCompositingView] = 0;
    if (v10)
    {
      v35 = v10;
      [v10 removeFromSuperview];
      if (*&v3[v9])
      {
        [v3 addSubview:?];
      }
    }

    return result;
  }

  v36 = *&v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_collapsedTitleCompositingView];
  if (v10)
  {
    v11 = *&v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_collapsedTitleCompositingView];
    v12 = a2;
    if (!a2)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v13 = [v3 traitCollection];
  v14 = [v13 horizontalSizeClass];

  v15 = v14 != &dword_0 + 2;
  if (qword_DE6A20 != -1)
  {
    swift_once();
  }

  v16 = qword_E713D0;
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 systemFontOfSize:13.0 weight:UIFontWeightRegular];
  if (qword_DE6A28 != -1)
  {
    v34 = v19;
    swift_once();
    v19 = v34;
  }

  v20 = qword_E713D8;
  LOBYTE(v37) = 0;
  *(&v37 + 1) = v15;
  v38 = v18;
  v39 = v19;
  v40 = 4;
  v41 = 0;
  v42 = 1;
  v43 = qword_E713D8;
  v21 = objc_allocWithZone(type metadata accessor for VibrancyLabelCompositingView());
  v22 = v20;
  v23 = sub_38F7B8(&v37);
  v24 = v23;
  v25 = *&v3[v9];
  *&v3[v9] = v23;
  if (v25)
  {
    v26 = v23;
    v11 = v26;
    if (v24 == v25)
    {

      v12 = a2;
      if (a2)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v27 = v26;
    [v25 removeFromSuperview];
    if (*&v3[v9])
    {
      goto LABEL_19;
    }
  }

  else
  {
    v33 = v23;
    if (v24)
    {
LABEL_19:
      [v3 addSubview:?];
    }
  }

  v11 = v24;
  v12 = a2;
  if (!a2)
  {
LABEL_21:
    a1 = *&v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_title];
  }

LABEL_22:
  v28 = &v11[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text];
  v29 = *&v11[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text];
  v30 = *&v11[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text + 8];
  *v28 = a1;
  *(v28 + 1) = v12;

  v31 = v36;
  sub_38FB24(v29, v30, v32);

  return result;
}

void sub_1A9484()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v1 traitCollection];
  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_baseHeight];
  v20 = v4;
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "frame");
  Width = CGRectGetWidth(v21);
  v18 = sub_1A70C4(v3, Width);
  if (sub_AB38D0())
  {
    goto LABEL_10;
  }

  if (v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle] && v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle] != 1)
  {
  }

  else
  {
    v6 = sub_ABB3C0();

    if ((v6 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v20 = v4;
  [v1 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v3 horizontalSizeClass];
  v22.origin.x = v8;
  v22.origin.y = v10;
  v22.size.width = v12;
  v22.size.height = v14;
  CGRectGetWidth(v22);
  if (v15 == &dword_0 + 2)
  {
    [v3 displayScale];
    sub_AB3A00();
  }

  if (sub_AB38D0())
  {
LABEL_10:
    v16 = *&v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_didInvalidatePreferredBaseHeight];
    if (v16)
    {
      v17 = *&v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_didInvalidatePreferredBaseHeight + 8];

      v16(v1);
      sub_17654(v16, v17);
    }
  }

LABEL_12:
}

void sub_1A9704(unsigned __int8 a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle;
  v4 = v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle];
  v5 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 0x656C69666F7270;
    }

    else
    {
      v6 = 0x747369747261;
    }

    if (v5 == 1)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    if (v4)
    {
LABEL_9:
      if (v4 == 1)
      {
        v8 = 0xE700000000000000;
        if (v6 != 0x656C69666F7270)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v8 = 0xE600000000000000;
        if (v6 != 0x747369747261)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    v6 = 0x746C7561666564;
    if (v4)
    {
      goto LABEL_9;
    }
  }

  v8 = 0xE700000000000000;
  if (v6 != 0x746C7561666564)
  {
LABEL_20:
    v9 = sub_ABB3C0();

    if (v9)
    {
      return;
    }

    v10 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkComponent;
    v11 = *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkComponent];
    v12 = 76.0;
    if (v2[v3] == 1)
    {
      v12 = 128.0;
    }

    v13 = *(v11 + 80);
    v14 = *(v11 + 88);
    *(v11 + 80) = v12;
    *(v11 + 88) = v12;

    sub_75614(v13, v14);

    v15 = [v2 traitCollection];
    v16 = *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_bottomHairlineView];
    if (v2[v3])
    {
      if (v2[v3] == 1)
      {
        [v16 setHidden:0];
        [*&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_gradientView] setHidden:1];
        v17 = objc_opt_self();

        sub_74DD4([v17 systemGray3Color]);

        v18 = *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundArtworkComponent];
        v19 = [v17 clearColor];
        v20 = *(v18 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_foregroundOverlayColor);
        *(v18 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_foregroundOverlayColor) = v19;
        v21 = v19;

        sub_781B8();
        v22 = *&v2[v10];

        v23 = Artwork.Placeholder.person.unsafeMutableAddressor();
        v24 = *v23;
        v25 = v23[1];
        v26 = v23[2];
        v27 = v23[3];
        v28 = *(v23 + 2);
        v29 = *(v22 + 184);
        v30 = *(v22 + 152);
        v80 = *(v22 + 168);
        v81 = v29;
        v79 = v30;
        *(v22 + 152) = v24;
        *(v22 + 160) = v25;
        *(v22 + 168) = v26;
        *(v22 + 176) = v27;
        *(v22 + 184) = v28;
        v31 = v26;
        v32 = v27;
        v33 = v24;
        v34 = v25;
        v35 = v31;
        v36 = v32;
        v37 = v33;
        v38 = v34;
        sub_75948(&v79);
        sub_12E1C(&v79, &unk_DF8690, &unk_AF9900);

        v39 = [objc_opt_self() effectWithStyle:{4 * (objc_msgSend(v15, "userInterfaceStyle", v79, v80, v81) == &dword_0 + 2)}];
        v40 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v39];
        v41 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayView;
        v42 = *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayView];
        *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayView] = v40;
        v43 = v40;
        sub_1AAEA8(v42);

        v44 = *&v2[v41];
        if (v44)
        {
          objc_opt_self();
          v45 = swift_dynamicCastObjCClassUnconditional();
          v46 = v44;
          [v15 userInterfaceStyle];
          v47 = sub_AB9260();

          [v45 _setGroupName:v47];

          [*(*&v2[v10] + 112) frame];
          v52 = [objc_allocWithZone(UIView) initWithFrame:{v48, v49, v50, v51}];
          v53 = *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkShadowView];
          *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkShadowView] = v52;
          v54 = v52;
          sub_1AAF40(v53);

LABEL_33:
          sub_1A7634(0, 0, 1);
          [v2 setNeedsLayout];

          return;
        }

        __break(1u);
        goto LABEL_36;
      }

      [v16 setHidden:1];
      [*&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_gradientView] setHidden:0];
      v64 = objc_opt_self();

      sub_74DD4([v64 clearColor]);

      v65 = *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundArtworkComponent];
      v66 = [v64 clearColor];
      v67 = *(v65 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_foregroundOverlayColor);
      *(v65 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_foregroundOverlayColor) = v66;
      v68 = v66;

      sub_781B8();
      v69 = *&v2[v10];
      v70 = *(v69 + 168);
      v79 = *(v69 + 152);
      v80 = v70;
      v81 = *(v69 + 184);
      *(v69 + 152) = 0u;
      *(v69 + 168) = 0u;
      *(v69 + 184) = 0u;

      sub_75948(&v79);
      sub_12E1C(&v79, &unk_DF8690, &unk_AF9900);

      v71 = objc_allocWithZone(UIView);
      v72 = [v71 initWithFrame:{0.0, 0.0, 0.0, 0.0, v79, v80, v81}];
      v73 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayView;
      v74 = *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayView];
      *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayView] = v72;
      v75 = v72;
      sub_1AAEA8(v74);

      v76 = *&v2[v73];
      if (!v76)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      [v76 setBackgroundColor:*&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayColor]];
      v77 = *&v2[v73];
      if (!v77)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      [v77 setAlpha:*&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayAlpha]];
      v78 = *&v2[v73];
      if (!v78)
      {
LABEL_38:
        __break(1u);
        return;
      }

      [v78 setUserInteractionEnabled:0];
      v53 = *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkShadowView];
      *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkShadowView] = 0;
      v63 = v53;
    }

    else
    {
      [v16 setHidden:1];
      [*&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_gradientView] setHidden:0];
      v55 = objc_opt_self();

      sub_74DD4([v55 clearColor]);

      v56 = *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundArtworkComponent];
      v57 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.08];
      v58 = *(v56 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_foregroundOverlayColor);
      *(v56 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_foregroundOverlayColor) = v57;
      v59 = v57;

      sub_781B8();
      v60 = *&v2[v10];
      v61 = *(v60 + 168);
      v79 = *(v60 + 152);
      v80 = v61;
      v81 = *(v60 + 184);
      *(v60 + 152) = 0u;
      *(v60 + 168) = 0u;
      *(v60 + 184) = 0u;

      sub_75948(&v79);
      sub_12E1C(&v79, &unk_DF8690, &unk_AF9900);

      v62 = *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayView];
      *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayView] = 0;
      sub_1AAEA8(v62);

      v53 = *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkShadowView];
      *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkShadowView] = 0;
      v63 = v53;
    }

    sub_1AAF40(v63);
    goto LABEL_33;
  }

LABEL_16:
  if (v7 != v8)
  {
    goto LABEL_20;
  }
}

uint64_t sub_1A9F5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v1 = &v11[-((v0 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v3 = &v11[-v2];
  type metadata accessor for ArtworkComponentImageView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v5 = sub_80104(v4);

  v6 = UIView.Corner.small.unsafeMutableAddressor();
  v7 = sub_ABA680();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v3, v6, v7);
  (*(v8 + 56))(v3, 0, 1, v7);
  v9 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_89FAC(v5 + v9, v1);
  swift_beginAccess();
  sub_8A01C(v3, v5 + v9);
  swift_endAccess();
  sub_75AE8(v1);
  sub_12E1C(v1, &unk_DFFBC0, &unk_AF85C0);
  sub_12E1C(v3, &unk_DFFBC0, &unk_AF85C0);
  return v5;
}

void sub_1AA154(void *a1)
{
  if (v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle] && v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle] != 1)
  {

    if (!a1)
    {
      goto LABEL_10;
    }

LABEL_7:
    v4 = a1;
    if ([v4 isDescendantOfView:v1])
    {
      [v4 removeFromSuperview];
    }

    goto LABEL_10;
  }

  v3 = sub_ABB3C0();

  if ((v3 & 1) == 0)
  {
    return;
  }

  if (a1)
  {
    goto LABEL_7;
  }

LABEL_10:
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_pageHeaderContentView];
  if (v5)
  {
    v7 = v5;
    [v1 addSubview:?];
    v6 = *&v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayView];
    if (v6)
    {
      [v1 insertSubview:v6 above:v7];
    }

    [v1 setNeedsLayout];
  }
}

void sub_1AA2B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_title + 8];
  if (a2)
  {
    if (v5)
    {
      v6 = *v4 == a1 && v5 == a2;
      if (v6 || (sub_ABB3C0() & 1) != 0)
      {
        return;
      }
    }
  }

  else if (!v5)
  {
    return;
  }

  if (v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle] && v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle] == 1)
  {
  }

  else
  {
    v7 = sub_ABB3C0();

    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  if (*(*&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkComponent] + 64))
  {
    v8 = v4[1];
    if (v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_81464();
    v13 = *v4;
    v14 = v4[1];

    v15 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v13, v14, [v2 effectiveUserInterfaceLayoutDirection], 0);

    sub_74EA4(v15);

    v8 = v4[1];
    if (v8)
    {
LABEL_16:
      v9 = *v4;
      v10 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_titleCompositingView;
      v11 = *&v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_titleCompositingView];
      if (v11)
      {

        v12 = v11;
LABEL_39:
        v44 = v12;
        v37 = &v12[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text];
        v38 = *&v12[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text];
        v39 = *&v12[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text + 8];
        *v37 = v9;
        v37[1] = v8;
        v40 = v11;

        v41 = v40;
        sub_38FB24(v38, v39, v42);

        sub_1A9138(v9, v8);

LABEL_40:

        return;
      }

      v20 = [v3 traitCollection];
      v21 = [v20 horizontalSizeClass];

      v22 = v21 != &dword_0 + 2;
      if (qword_DE6A20 != -1)
      {
        swift_once();
      }

      v23 = qword_E713D0;
      v24 = objc_opt_self();
      v25 = v23;
      v26 = [v24 systemFontOfSize:44.0 weight:UIFontWeightBold];
      if (qword_DE6A28 != -1)
      {
        v43 = v26;
        swift_once();
        v26 = v43;
      }

      v27 = qword_E713D8;
      LOBYTE(v46) = 0;
      *(&v46 + 1) = v22;
      v47 = v25;
      v48 = v26;
      v49 = 4;
      v50 = 0;
      v51 = 2;
      v52 = qword_E713D8;
      v28 = objc_allocWithZone(type metadata accessor for VibrancyLabelCompositingView());
      v29 = v27;
      v30 = sub_38F7B8(&v46);
      v31 = v30;
      v32 = *&v3[v10];
      *&v3[v10] = v30;
      if (v32)
      {
        v33 = v30;
        if (v31 == v32)
        {
          v45 = v33;

          v12 = v45;
          goto LABEL_39;
        }

        v34 = v33;
        [v32 removeFromSuperview];
        v35 = *&v3[v10];
      }

      else
      {
        v36 = v30;
        v35 = v31;
      }

      if (v35)
      {
        [v3 addSubview:?];
      }

      v12 = v31;
      goto LABEL_39;
    }
  }

  v16 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_titleCompositingView;
  v17 = *&v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_titleCompositingView];
  *&v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_titleCompositingView] = 0;
  if (v17)
  {
    [v17 removeFromSuperview];
    if (*&v3[v16])
    {
      [v3 addSubview:?];
    }
  }

  v18 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_collapsedTitleCompositingView;
  v19 = *&v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_collapsedTitleCompositingView];
  *&v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_collapsedTitleCompositingView] = 0;
  if (v19)
  {
    v44 = v19;
    [v19 removeFromSuperview];
    if (*&v3[v18])
    {
      [v3 addSubview:?];
    }

    goto LABEL_40;
  }
}

double sub_1AA73C(uint64_t a1, uint64_t a2, double result)
{
  v4 = &v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_subtitle];
  v5 = *&v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_subtitle + 8];
  if (a2)
  {
    if (v5)
    {
      v6 = *v4 == a1 && v5 == a2;
      if (v6 || (sub_ABB3C0() & 1) != 0)
      {
        return v7;
      }
    }
  }

  else if (!v5)
  {
    return v7;
  }

  if (v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle] && v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle] == 1)
  {
  }

  else
  {
    v8 = sub_ABB3C0();

    if ((v8 & 1) == 0)
    {
      return v7;
    }
  }

  v9 = v4[1];
  if (v9)
  {
    v10 = *v4;
    v11 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_subtitleCompositingView;
    v12 = *&v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_subtitleCompositingView];
    if (v12)
    {

      v13 = v12;
LABEL_36:
      v34 = &v13[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text];
      v35 = *&v13[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text];
      v36 = *&v13[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text + 8];
      *v34 = v10;
      *(v34 + 1) = v9;
      v37 = v12;
      sub_38FB24(v35, v36, v38);

      return v7;
    }

    v16 = [v3 traitCollection];
    v17 = [v16 horizontalSizeClass];

    v18 = v17 != &dword_0 + 2;
    if (qword_DE6A20 != -1)
    {
      swift_once();
    }

    v19 = v3;
    v20 = qword_E713D0;
    v21 = objc_opt_self();
    v22 = v20;
    v23 = [v21 systemFontOfSize:24.0 weight:UIFontWeightRegular];
    if (qword_DE6A28 != -1)
    {
      v39 = v23;
      swift_once();
      v23 = v39;
    }

    v24 = qword_E713D8;
    LOBYTE(v41) = 0;
    *(&v41 + 1) = v18;
    v42 = v22;
    v43 = v23;
    v44 = 4;
    v45 = 0;
    v46 = 1;
    v47 = qword_E713D8;
    v25 = objc_allocWithZone(type metadata accessor for VibrancyLabelCompositingView());
    v26 = v24;
    v27 = sub_38F7B8(&v41);
    v28 = v27;
    v29 = *&v19[v11];
    *&v19[v11] = v27;
    if (v29)
    {
      v30 = v27;
      v13 = v30;
      if (v28 == v29)
      {

        goto LABEL_36;
      }

      v31 = v30;
      [v29 removeFromSuperview];
      v32 = *&v19[v11];
    }

    else
    {
      v33 = v27;
      v32 = v28;
    }

    if (v32)
    {
      [v19 addSubview:?];
    }

    v13 = v28;
    goto LABEL_36;
  }

  v14 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_subtitleCompositingView;
  v15 = *&v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_subtitleCompositingView];
  *&v3[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_subtitleCompositingView] = 0;
  if (v15)
  {
    v40 = v15;
    [v15 removeFromSuperview];
    if (*&v3[v14])
    {
      [v3 addSubview:?];
    }
  }

  return v7;
}

double sub_1AAAF0(void *a1, double a2)
{
  v5 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle;
  v6 = v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle];
  v7 = [a1 horizontalSizeClass];
  v8 = 0.0;
  if (v6 == 1)
  {
    if (v7 == &dword_0 + 2)
    {
      v10 = sub_1A70C4(a1, a2);
      v11 = v2[v5];
      v12 = [v2 window];
      v13 = [v12 windowScene];

      if (v11 == 1)
      {
        v14 = 0.0;
        if (v13)
        {
          v15 = [v13 statusBarManager];
          if (v15)
          {
            v16 = v15;
            [v15 statusBarFrame];
            v18 = v17;
            v20 = v19;
            v22 = v21;
            v24 = v23;

            v42.origin.x = v18;
            v42.origin.y = v20;
            v42.size.width = v22;
            v42.size.height = v24;
            Height = CGRectGetHeight(v42);

            if (Height > 20.0)
            {
              v14 = Height + -20.0;
            }
          }

          else
          {
          }
        }
      }

      else
      {

        v14 = 0.0;
      }

      v8 = v10 - v14;
    }

    else if (v7 == &dword_0 + 1)
    {
      v9 = *&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_collapsedTitleCompositingView];
      if (v9)
      {
        v8 = *(v9 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_paddingForExcessiveHeightCharacters) + 86.0;
      }

      else
      {
        v8 = 86.0;
      }
    }
  }

  v26 = v2[v5];
  v27 = [v2 window];
  v28 = [v27 windowScene];

  if (v26 == 1)
  {
    v29 = 0.0;
    if (v28)
    {
      v30 = [v28 statusBarManager];
      if (v30)
      {
        v31 = v30;
        [v30 statusBarFrame];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;

        v43.origin.x = v33;
        v43.origin.y = v35;
        v43.size.width = v37;
        v43.size.height = v39;
        v40 = CGRectGetHeight(v43);

        if (v40 > 20.0)
        {
          v29 = v40 + -20.0;
        }
      }

      else
      {
      }
    }
  }

  else
  {

    v29 = 0.0;
  }

  return v8 + v29;
}

void sub_1AAD6C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_isVideoArtworkAllowed);
  v3 = a1 & 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_isVideoArtworkAllowed) = a1;
  if (v2 != (a1 & 1))
  {
    v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundArtworkComponent);
    v5 = *(v4 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed);
    *(v4 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) = v3;
    sub_76070(v5);
  }
}

void sub_1AADC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundArtworkComponent);
  if (*(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1 && (*(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && *(v1 + 72))
  {
    *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_needsArtworkReload) = 1;
    v2 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
    *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
    if (v2)
    {
      [v2 invalidate];
    }

    v3 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v3)
    {
      v4 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);

      v3(v5);

      sub_17654(v3, v4);
    }
  }
}

id sub_1AAEA8(id result)
{
  v2 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayView;
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayView];
  if (result)
  {
    if (v3 == result)
    {
      return result;
    }
  }

  else if (!v3)
  {
    return result;
  }

  result = [result removeFromSuperview];
  if (*&v1[v2])
  {

    return [v1 insertSubview:? above:?];
  }

  return result;
}

void sub_1AAF40(void *a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkShadowView;
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkShadowView];
  if (a1)
  {
    if (v3 == a1)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  [a1 removeFromSuperview];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = objc_opt_self();
    v6 = v4;
    UIView.Shadow.init(color:opacity:radius:offset:)([v5 blackColor], v7, 0.2, 3.0, 0.0, 3.0);
    UIView.shadow.setter(v7);
    [v1 insertSubview:v6 below:*(*&v1[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkComponent] + 112)];
  }
}

uint64_t sub_1AB1E0(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

void *sub_1AB208()
{
  v1 = *(*(*v0 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundArtworkComponent) + 128);
  v2 = v1;
  return v1;
}

void *sub_1AB240()
{
  v1 = *(*(*v0 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundArtworkComponent) + 120);
  v2 = v1;
  return v1;
}

uint64_t sub_1AB32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t), void *a7, void (*a8)(uint64_t, uint64_t))
{
  v13 = *v8;
  v14 = (v13 + *a5);
  v15 = *v14;
  v16 = v14[1];
  *v14 = a1;
  v14[1] = a2;
  a6(v15, v16);
  v17 = (*(v13 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundArtworkComponent) + *a7);
  v18 = *v17;
  v19 = v17[1];
  *v17 = a1;
  v17[1] = a2;
  a8(a1, a2);

  return a6(v18, v19);
}

void sub_1AB428()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_additionalContentStackView;
  type metadata accessor for PromotionalParallaxContentStackView();
  *(v1 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundArtworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v5 = sub_80104(v4);

  *(v1 + v3) = v5;
  v6 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundArtworkCachingReference;
  type metadata accessor for Artwork.CachingReference();
  *(v1 + v6) = swift_allocObject();
  *(v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_baseHeight) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_collapsedBaseHeight) = 0;
  v7 = (v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_didInvalidatePreferredBaseHeight);
  *v7 = 0;
  v7[1] = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle) = 0;
  v8 = v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_preferredHeightStyle;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkComponent;
  *(v1 + v9) = sub_1A9F5C();
  v10 = (v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_normalizedContentOffset);
  *v10 = 0;
  v10[1] = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_pageHeaderContentView) = 0;
  v11 = (v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_title);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_subtitle);
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayColor;
  if (qword_DE6C58 != -1)
  {
    swift_once();
  }

  v14 = qword_E71898;
  *(v1 + v13) = qword_E71898;
  *(v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayAlpha) = 0;
  v15 = (v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_videoLooperDidChangeHandler);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_videoLooperDidFailHandler);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_isPlayingDidChangeHandler);
  *v17 = 0;
  v17[1] = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_isVideoArtworkAllowed) = 0;
  v18 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_bottomHairlineView;
  v19 = objc_allocWithZone(UIView);
  v20 = v14;
  v21 = [v19 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_DE6C70 != -1)
  {
    swift_once();
  }

  [v21 setBackgroundColor:qword_E718B0];
  [v21 setHidden:1];
  *(v1 + v18) = v21;
  v22 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_gradientView;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_AF82E0;
  *(v23 + 32) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.32];
  *(v23 + 40) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.16];
  *(v23 + 48) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.0];
  static Gradient.vertical(colors:locations:interpolations:)(v23, 0, 0, v27);

  v24 = objc_allocWithZone(type metadata accessor for Gradient.View());
  *(v1 + v22) = Gradient.View.init(configuration:)(v27);
  *(v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkShadowView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_titleCompositingView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_collapsedTitleCompositingView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_subtitleCompositingView) = 0;
  v25 = v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_cachedAdditionalContentStackViewSizeContext;
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  *v25 = 0;
  *(v25 + 24) = 1;
  v26 = v1 + OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_visualState;
  *v26 = xmmword_AF8620;
  *(v26 + 16) = 2;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_1AB834()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_1AB89C(double a1, double a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v10 = v63 - v9;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication12PlaylistCell_title];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication12PlaylistCell_subtitle];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication12PlaylistCell_textComponents];
  *v13 = sub_1AC984();
  v13[1] = v14;
  v13[2] = v15;
  v16 = type metadata accessor for PlaylistCell(0);
  v73.receiver = v4;
  v73.super_class = v16;
  v17 = objc_msgSendSuper2(&v73, "initWithFrame:", a1, a2, a3, a4);
  v18 = UIView.Corner.medium.unsafeMutableAddressor();
  v19 = sub_ABA680();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v10, v18, v19);
  (*(v20 + 56))(v10, 0, 1, v19);
  sub_200394(v10);
  v21 = &v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  type metadata accessor for UIEdgeInsets(0);
  v22 = *v21;
  v23 = *(v21 + 1);
  *v21 = 0x401C000000000000;
  *(v21 + 8) = xmmword_B02150;
  *(v21 + 3) = 0x4030000000000000;
  *v74 = 0x401C000000000000;
  *&v74[8] = xmmword_B02150;
  *&v74[24] = 0x4030000000000000;
  v71 = v22;
  v72 = v23;
  if (sub_AB38D0())
  {
    [v17 setNeedsLayout];
  }

  v24 = vdupq_n_s64(0x4059800000000000uLL);
  *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize] = v24;
  v70 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent;
  v25 = *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v26 = *(v25 + 80);
  v27 = *(v25 + 88);
  *(v25 + 80) = v24;
  sub_75614(v26, v27);
  v28 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v29 = *v28;
  v30 = v28[1];
  v32 = v28[2];
  v31 = v28[3];
  v33 = v28[4];
  v68 = v28[5];
  v34 = v68;
  v69 = v33;
  v35 = &v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v67 = *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v66 = *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
  v65 = *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
  v64 = *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
  v63[2] = *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 32];
  v63[1] = *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 40];
  *v35 = v29;
  *(v35 + 1) = v30;
  *(v35 + 2) = v32;
  *(v35 + 3) = v31;
  *(v35 + 4) = v33;
  *(v35 + 5) = v34;
  v36 = v29;
  v37 = v30;
  v38 = v32;
  v39 = v31;
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v43 = v39;
  sub_2F1C8(v67, v66, v65, v64);
  v44 = v69;
  v45 = *&v17[v70];
  v46 = *(v45 + 168);
  *v74 = *(v45 + 152);
  *&v74[16] = v46;
  v75 = *(v45 + 184);
  *(v45 + 152) = v29;
  *(v45 + 160) = v30;
  *(v45 + 168) = v32;
  *(v45 + 176) = v31;
  v47 = v68;
  *(v45 + 184) = v44;
  *(v45 + 192) = v47;
  v48 = v40;
  v49 = v41;
  v50 = v42;
  v51 = v43;
  v52 = v48;
  v53 = v49;
  v54 = v50;
  v55 = v51;
  sub_75948(v74);
  sub_B2A40(v74);

  v56 = v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 1;
  if ((v56 & 1) == 0)
  {
    [v17 setNeedsLayout];
  }

  v57 = *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];

  v58 = *&v17[OBJC_IVAR____TtC16MusicApplication12PlaylistCell_textComponents + 16];
  if (!(v58 >> 62))
  {
    v59 = *(&dword_10 + (v58 & 0xFFFFFFFFFFFFFF8));
    if (v59)
    {
      goto LABEL_7;
    }

LABEL_15:

    return;
  }

  v59 = sub_ABB060();
  if (!v59)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (v59 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v59; ++i)
    {
      if ((v58 & 0xC000000000000001) != 0)
      {
        v62 = sub_36003C(i, v58, v60);
      }

      else
      {
        v62 = *(v58 + 8 * i + 32);
      }

      TextStackView.add(_:)(v62);
    }
  }
}

double sub_1ABE74(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication12PlaylistCell_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication12PlaylistCell_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication12PlaylistCell_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication12PlaylistCell_textComponents];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1ABF88(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication12PlaylistCell_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication12PlaylistCell_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication12PlaylistCell_textComponents];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

double sub_1AC084(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
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

double sub_1AC118(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication12PlaylistCell_subtitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication12PlaylistCell_subtitle];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication12PlaylistCell_subtitle + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication12PlaylistCell_textComponents + 8];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1AC230(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication12PlaylistCell_subtitle] != result || *&v2[OBJC_IVAR____TtC16MusicApplication12PlaylistCell_subtitle + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication12PlaylistCell_textComponents + 8];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

char *sub_1AC36C(char a1, double a2)
{
  v3 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
  v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled] = a1;
  p_name = (&JSDateDescriptor + 24);
  if (v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView] == 1)
  {
    v5 = a1 & 1;
    v6 = *&v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
    v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
    swift_beginAccess();
    v6[v7] = v5;
    v25 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
    v26 = v6;
    if (v6[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] != v5)
    {
      v6[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = v5;
      v8 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
      swift_beginAccess();
      v9 = *&v6[v8];
      if (v9 >> 62)
      {
        result = sub_ABB060();
        if (!result)
        {
          goto LABEL_20;
        }
      }

      else
      {
        result = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
        if (!result)
        {
          goto LABEL_20;
        }
      }

      v24 = v3;
      v11 = result - 1;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v23 = v6;

      v13 = 0;
      if ((v9 & 0xC000000000000001) == 0)
      {
        goto LABEL_15;
      }

LABEL_7:
      v14 = *(sub_36003C(v13, v9, v12) + 256);
      if (v14)
      {
LABEL_8:
        v15 = v14;
        if (([v15 isHidden] & 1) == 0)
        {
          v16 = v26[v25];
          v17 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
          swift_beginAccess();
          v18 = v15[v17];
          v15[v17] = v16;
          if (v16 != v18)
          {
            v19 = 1.0;
            if (v16)
            {
              UIInterfaceGetContentDisabledAlpha();
            }

            [v15 setAlpha:v19];
          }
        }

        if (v11 != v13)
        {
          goto LABEL_17;
        }
      }

      else
      {
        while (1)
        {

          if (v11 == v13)
          {
            break;
          }

LABEL_17:
          ++v13;
          if ((v9 & 0xC000000000000001) != 0)
          {
            goto LABEL_7;
          }

LABEL_15:
          v20 = *(v9 + 8 * v13 + 32);

          v14 = *(v20 + 256);
          if (v14)
          {
            goto LABEL_8;
          }
        }
      }

      v3 = v24;
      p_name = &JSDateDescriptor.name;
    }
  }

LABEL_20:
  if (v2[v3])
  {
    v21 = 0;
  }

  else
  {
    v21 = 3;
  }

  [v2 setSelectionStyle:v21];
  v22 = 1.0;
  if (v2[v3])
  {
    v22 = 0.5;
  }

  return [*(*&v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent] + 112) p_name[463]];
}

uint64_t sub_1AC654(uint64_t a1)
{
  v2 = v1;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for PlaylistCell(0);
  objc_msgSendSuper2(&v11, "traitCollectionDidChange:", a1);
  v4 = *&v2[OBJC_IVAR____TtC16MusicApplication12PlaylistCell_textComponents];
  v5 = [v2 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = sub_ABA310();
  v8 = sub_ABA330();

  if (v8)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  swift_beginAccess();
  *(v4 + 88) = v9;
  return sub_2EB2A8();
}

double sub_1AC7A0()
{

  return result;
}

id sub_1AC818()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaylistCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PlaylistCell(uint64_t a1)
{
  result = qword_DF4570;
  if (!qword_DF4570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AC984()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle:UIFontTextStyleBody];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v2 = qword_E718D8;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  *&v23[0] = v2;
  *(&v23[0] + 1) = v5;
  v23[1] = xmmword_AF7C20;
  v24 = 0;
  v25 = 0;
  v26 = v1;
  v27 = 2;
  v28 = xmmword_AF9C80;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v6 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v23);
  v16 = v4;
  v15 = v5;
  v14 = v1;
  sub_2F118(v23, v36);

  v7 = [v0 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v8 = qword_E718C8;
  v9 = qword_E718C8;
  v10 = [v3 clearColor];
  *&v17[0] = v8;
  *(&v17[0] + 1) = v10;
  v17[1] = xmmword_AF7C20;
  v18 = 0;
  v19 = 0;
  v20 = v7;
  v21 = 1;
  v22 = xmmword_AF7C30;
  swift_allocObject();
  v11 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF7C50;
  *(v12 + 32) = v6;
  *(v12 + 40) = v11;
  sub_2F118(v17, v36);

  v29[0] = v8;
  v29[1] = v10;
  v30 = xmmword_AF7C20;
  v31 = 0;
  v32 = 0;
  v33 = v7;
  v34 = 1;
  v35 = xmmword_AF7C30;
  sub_2F174(v29);
  v36[0] = v2;
  v36[1] = v5;
  v37 = xmmword_AF7C20;
  v38 = 0;
  v39 = 0;
  v40 = v1;
  v41 = 2;
  v42 = xmmword_AF9C80;
  sub_2F174(v36);
  return v6;
}

double sub_1ACC94(void *a1)
{
  sub_1AC984();
  v3 = v2;
  type metadata accessor for CGSize(0);
  if ((sub_AB38D0() & 1) == 0)
  {
    type metadata accessor for UIEdgeInsets(0);
    sub_AB38D0();
  }

  sub_2F48A4(v3, a1, 0, 0);

  return -1.0;
}

void *sub_1ACDCC(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication12PlaylistCell_textComponents + 16];
  type metadata accessor for CGSize(0);
  v8 = vdupq_n_s64(0x4059800000000000uLL);
  v6 = 0uLL;
  if ((sub_AB38D0() & 1) == 0)
  {
    type metadata accessor for UIEdgeInsets(0);
    v8 = xmmword_B00360;
    v9 = xmmword_B00370;
    v6 = *&UIEdgeInsetsZero.top;
    v7 = *&UIEdgeInsetsZero.bottom;
    sub_AB38D0();
  }

  sub_2F48A4(v4, v3, 0, 0);

  [a1 frame];
  [a1 setFrame:?];
  return a1;
}

void static AlbumCell.preferredHeight(traitCollection:width:isRanked:)(void *a1, uint64_t a2, double a3)
{
  v3 = a2;
  _s16MusicApplication9AlbumCellC20detailTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC06DetailfG0AELLVvpfi_0();
  v6 = v5;
  v9 = v5;

  v7 = v6;
  if (v3)
  {
    v8 = sub_1AF620();
    if (v6 >> 62 && sub_ABB060() < 0)
    {
      __break(1u);
      return;
    }

    sub_1AFC80(0, 0, v8, sub_2BCA0, sub_450324);

    v7 = v9;
  }

  sub_2F48A4(v7, a1, 0, 0);

  if (qword_DE6948 != -1)
  {
    swift_once();
  }

  [a1 displayScale];
  sub_AB3A00();
}

void AlbumCell.layoutStyle.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication9AlbumCell_layoutStyle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_1AD7D0(v4);
}

double AlbumCell.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_title);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_1AE488(v6, v7);

  return result;
}

double AlbumCell.artistName.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication9AlbumCell_artistName];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  v8 = v6 == a1 && v7 == a2;
  if (!v8 && (sub_ABB3C0() & 1) == 0)
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication9AlbumCell_detailTextComponents + 8];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    sub_1ADA6C();
    [v2 setNeedsLayout];
  }

  return result;
}

void AlbumCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC16MusicApplication9AlbumCell_layoutStyle] = 0;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication9AlbumCell_rank];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication9AlbumCell_title];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication9AlbumCell_artistName];
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication9AlbumCell_badgeView] = 0;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication9AlbumCell_detailTextComponents];
  *v13 = _s16MusicApplication9AlbumCellC20detailTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC06DetailfG0AELLVvpfi_0();
  v13[1] = v14;
  v13[2] = v15;
  v16 = &v4[OBJC_IVAR____TtC16MusicApplication9AlbumCell_twoLineTitleTextComponents];
  *v16 = _s16MusicApplication9AlbumCellC26twoLineTitleTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC03TwofghI0AELLVvpfi_0();
  v16[1] = v17;
  *&v4[OBJC_IVAR____TtC16MusicApplication9AlbumCell____lazy_storage___rankedTextComponent] = 0;
  v66.receiver = v4;
  v66.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v66, "initWithFrame:", a1, a2, a3, a4);
  v19 = [v18 layer];
  [v19 setAllowsGroupOpacity:0];

  v20 = [v18 layer];
  [v20 setAllowsGroupBlending:0];

  if (qword_DE6948 != -1)
  {
    swift_once();
  }

  v21 = xmmword_DF4580;
  v22 = qword_DF4590;
  v23 = qword_DF4598;
  v24 = &v18[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  *v24 = v21;
  *(v24 + 2) = v22;
  *(v24 + 3) = v23;
  type metadata accessor for UIEdgeInsets(0);
  v25 = &v18[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  v26 = *&v18[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets + 16];
  v67 = *&v18[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  v68 = v26;
  if (sub_AB38D0())
  {
    v27 = *(v24 + 1);
    *v25 = *v24;
    *(v25 + 1) = v27;
    sub_35D498();
    [v18 setNeedsLayout];
  }

  v28 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v29 = *v28;
  v30 = v28[1];
  v31 = v28[2];
  v32 = v28[3];
  v33 = v28[4];
  v34 = v28[5];
  v64 = v34;
  v65 = v33;
  v35 = &v18[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder];
  swift_beginAccess();
  v62 = *(v35 + 1);
  v63 = *v35;
  v60 = *(v35 + 3);
  v61 = *(v35 + 2);
  *v35 = v29;
  *(v35 + 1) = v30;
  *(v35 + 2) = v31;
  *(v35 + 3) = v32;
  *(v35 + 4) = v33;
  *(v35 + 5) = v34;
  v36 = v29;
  v37 = v30;
  v38 = v31;
  v39 = v32;
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v43 = v39;
  sub_2F1C8(v63, v62, v61, v60);
  v44 = *&v18[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
  v45 = *(v44 + 168);
  v67 = *(v44 + 152);
  v68 = v45;
  v69 = *(v44 + 184);
  *(v44 + 152) = v29;
  *(v44 + 160) = v30;
  *(v44 + 168) = v31;
  *(v44 + 176) = v32;
  *(v44 + 184) = v65;
  *(v44 + 192) = v64;
  v46 = v40;
  v47 = v41;
  v48 = v42;
  v49 = v43;
  v50 = v46;
  v51 = v47;
  v52 = v48;
  v53 = v49;
  sub_75948(&v67);
  sub_B2A40(&v67);

  v54 = *&v18[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
  v55 = *&v18[OBJC_IVAR____TtC16MusicApplication9AlbumCell_detailTextComponents + 16];
  if (!(v55 >> 62))
  {
    v56 = *(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8));
    if (v56)
    {
      goto LABEL_7;
    }

LABEL_15:

    return;
  }

  v56 = sub_ABB060();
  if (!v56)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (v56 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v56; ++i)
    {
      if ((v55 & 0xC000000000000001) != 0)
      {
        v59 = sub_36003C(i, v55, v57);
      }

      else
      {
        v59 = *(v55 + 8 * i + 32);
      }

      TextStackView.add(_:)(v59);
    }
  }
}

Swift::Int MPCPlaybackEngine.Option.hashValue.getter(unsigned __int8 a1)
{
  sub_ABB5C0();
  sub_ABB5D0(a1);
  return sub_ABB610();
}

void sub_1AD7D0(unsigned __int8 a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication9AlbumCell_layoutStyle;
  swift_beginAccess();
  v5 = v2[v4];
  if (v5 != a1)
  {
    if (v2[v4])
    {
      if (v5 != 1)
      {
        v20 = &v2[OBJC_IVAR____TtC16MusicApplication9AlbumCell_title];
        swift_beginAccess();
        v21 = *(v20 + 1);
        v22 = *v20 & 0xFFFFFFFFFFFFLL;
        if ((v21 & 0x2000000000000000) != 0)
        {
          v22 = HIBYTE(v21) & 0xF;
        }

        if (v22)
        {
          sub_1ADA6C();
        }

        goto LABEL_28;
      }

      v6 = *&v2[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
      v7 = &v2[OBJC_IVAR____TtC16MusicApplication9AlbumCell_twoLineTitleTextComponents];
      swift_beginAccess();
      v8 = *(v7 + 1);
      v9 = v6;

      TextStackView.removeAll()();
      if (v8 >> 62)
      {
        v11 = sub_ABB060();
        if (v11)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v11 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
        if (v11)
        {
LABEL_6:
          if (v11 >= 1)
          {
            for (i = 0; i != v11; ++i)
            {
              if ((v8 & 0xC000000000000001) != 0)
              {
                v13 = sub_36003C(i, v8, v10);
              }

              else
              {
                v13 = *(v8 + 8 * i + 32);
              }

              TextStackView.add(_:)(v13);
            }

            goto LABEL_25;
          }

          __break(1u);
LABEL_31:
          __break(1u);
          return;
        }
      }

LABEL_25:

      v23 = *&v2[OBJC_IVAR____TtC16MusicApplication9AlbumCell_detailTextComponents + 8];
      swift_beginAccess();
      *(v23 + 112) = 0;
      *(v23 + 120) = 0xE000000000000000;

      sub_2EB704();
LABEL_28:
      [v2 setNeedsLayout];
      return;
    }

    v14 = *&v2[OBJC_IVAR____TtC16MusicApplication9AlbumCell_detailTextComponents + 16];
    v15 = *&v2[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
    TextStackView.removeAll()();
    if (v14 >> 62)
    {
      v17 = sub_ABB060();
      if (!v17)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v17 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
      if (!v17)
      {
        goto LABEL_27;
      }
    }

    if (v17 < 1)
    {
      goto LABEL_31;
    }

    for (j = 0; j != v17; ++j)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = sub_36003C(j, v14, v16);
      }

      else
      {
        v19 = *(v14 + 8 * j + 32);
      }

      TextStackView.add(_:)(v19);
    }

LABEL_27:

    goto LABEL_28;
  }
}

void sub_1ADA6C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication9AlbumCell_layoutStyle;
  swift_beginAccess();
  if (v1[v2] == 2)
  {
    if (sub_1AE0A4())
    {
      v3 = &v1[OBJC_IVAR____TtC16MusicApplication9AlbumCell_twoLineTitleTextComponents];
      swift_beginAccess();
      v4 = (v3 + 8);
    }

    else
    {
      v4 = &v1[OBJC_IVAR____TtC16MusicApplication9AlbumCell_detailTextComponents + 16];
    }

    v5 = *v4;
    swift_bridgeObjectRetain_n();
    v6 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView;
    swift_beginAccess();

    v9 = sub_12C928(v7, v5, v8);

    if (v9)
    {

      return;
    }

    v10 = *&v1[v6];
    TextStackView.removeAll()();
    if (v5 >> 62)
    {
      v12 = sub_ABB060();
      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v12 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
      if (v12)
      {
LABEL_9:
        if (v12 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v12; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v14 = sub_36003C(i, v5, v11);
          }

          else
          {
            v14 = *(v5 + 8 * i + 32);
          }

          TextStackView.add(_:)(v14);
        }
      }
    }

    [v1 setNeedsLayout];
  }
}

uint64_t AlbumCell.layoutStyle.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication9AlbumCell_layoutStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*AlbumCell.layoutStyle.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC16MusicApplication9AlbumCell_layoutStyle;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1ADD1C;
}

void sub_1ADD1C(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_1AD7D0(v5);

  free(v1);
}

void sub_1ADD64(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = v2 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_rank;
  swift_beginAccess();
  if ((v6[8] & 1) == 0)
  {
    v7 = *v6;
    v8 = sub_1AE040();
    v9 = sub_ABB330();
    v11 = v10;
    swift_beginAccess();
    *(v8 + 112) = v9;
    *(v8 + 120) = v11;

    sub_2EB704();

    if ((a2 & 1) == 0 && v7 == a1)
    {
      goto LABEL_25;
    }

    v12 = OBJC_IVAR____TtC16MusicApplication9AlbumCell_layoutStyle;
    swift_beginAccess();
    if (*(v12 + v3))
    {
      if (*(v12 + v3) != 1)
      {
        v12 = v3;
        if (sub_1AE0A4())
        {
          v12 = (v3 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_twoLineTitleTextComponents);
          swift_beginAccess();
        }

        v20 = v14;
LABEL_12:
        v15 = *(v3 + OBJC_IVAR____TtC16MusicApplication9AlbumCell____lazy_storage___rankedTextComponent);
        if (v14 >> 62 && sub_ABB060() < 0)
        {
          __break(1u);
        }

        else
        {

          sub_1AFC80(0, 0, v15, sub_2BCA0, sub_450324);

          v15 = v20;
          v12 = *(v3 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
          TextStackView.removeAll()();
          if (!(v20 >> 62))
          {
            v17 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
            if (!v17)
            {
LABEL_24:

LABEL_25:
              [v3 setNeedsLayout];
              return;
            }

LABEL_15:
            if (v17 < 1)
            {
              __break(1u);
              return;
            }

            for (i = 0; i != v17; ++i)
            {
              if ((v15 & 0xC000000000000001) != 0)
              {
                v19 = sub_36003C(i, v15, v16);
              }

              else
              {
                v19 = *(v15 + 8 * i + 32);
              }

              TextStackView.add(_:)(v19);
            }

            goto LABEL_24;
          }
        }

        v17 = sub_ABB060();
        if (!v17)
        {
          goto LABEL_24;
        }

        goto LABEL_15;
      }

      v12 = (v3 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_twoLineTitleTextComponents);
      swift_beginAccess();
      v13 = v12[1];
    }

    else
    {
      v13 = *(v3 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_detailTextComponents + 16);
    }

    v20 = v13;

    goto LABEL_12;
  }
}

uint64_t sub_1AE040()
{
  v1 = OBJC_IVAR____TtC16MusicApplication9AlbumCell____lazy_storage___rankedTextComponent;
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication9AlbumCell____lazy_storage___rankedTextComponent))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication9AlbumCell____lazy_storage___rankedTextComponent);
  }

  else
  {
    v2 = sub_1AF620();
    *(v0 + v1) = v2;
  }

  return v2;
}

BOOL sub_1AE0A4()
{
  v1 = OBJC_IVAR____TtC16MusicApplication9AlbumCell_layoutStyle;
  swift_beginAccess();
  if (*(v0 + v1) != 2)
  {
    return 0;
  }

  v2 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView;
  [*(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView) bounds];
  if (v4 == 0.0 && v3 == 0.0)
  {
    return 0;
  }

  v5 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (!v6)
  {
    return 0;
  }

  v7 = (v0 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_title);
  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];
  v10 = OBJC_IVAR____TtC16MusicApplication9AlbumCell_twoLineTitleTextComponents;
  swift_beginAccess();
  v11 = *(v0 + v10);
  swift_beginAccess();
  v12 = v11[3];
  v13 = v11[5];
  v14 = v11[6];
  v28[2] = v11[4];
  v28[3] = v13;
  v28[4] = v14;
  v28[0] = v11[2];
  v28[1] = v12;
  v15 = *(v0 + v2);

  sub_2F118(v28, v27);
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v20 = *(v6 + 32);
  v21 = *(v6 + 64);
  v22 = *(v6 + 72);
  v23 = *(v6 + 80);
  v24 = *(v6 + 88);
  v25 = *(v6 + 40);
  sub_108594(v9, v8, v28, v25, v21, v22, v23, v24, v27, v17, v19, v20);

  sub_2F174(v28);

  sub_109AB0(v27);

  return v27[14] > 1;
}

uint64_t AlbumCell.rank.getter()
{
  v1 = v0 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_rank;
  swift_beginAccess();
  return *v1;
}

void AlbumCell.rank.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_rank;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  sub_1ADD64(v6, v7);
}

void (*AlbumCell.rank.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC16MusicApplication9AlbumCell_rank;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_1AE3F8;
}

void sub_1AE3F8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40) + *(*a1 + 48);
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *v2;
  v6 = *(v2 + 8);
  *v2 = v3;
  *(v2 + 8) = v4;
  sub_1ADD64(v5, v6);

  free(v1);
}

uint64_t sub_1AE488(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication9AlbumCell_title];
  swift_beginAccess();
  result = a1;
  if (*v5 != a1 || *(v5 + 1) != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {

      v8 = String.trim()();

      v9 = *&v2[OBJC_IVAR____TtC16MusicApplication9AlbumCell_detailTextComponents];
      swift_beginAccess();
      v9[7] = v8;

      v10 = v2;
      sub_2EB704();
      v11 = OBJC_IVAR____TtC16MusicApplication9AlbumCell_twoLineTitleTextComponents;
      swift_beginAccess();
      v12 = *&v2[v11];
      swift_beginAccess();
      v12[7] = v8;

      sub_2EB704();

      sub_1ADA6C();
      return [v10 setNeedsLayout];
    }
  }

  return result;
}

void (*AlbumCell.title.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC16MusicApplication9AlbumCell_title;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_1AE688;
}

double sub_1AE6D8(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v11 = v10;
  v12 = &a1[*a4];
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = v9;
  v12[1] = v11;
  v15 = a3;
  v16 = a1;
  a5(v13, v14);

  return result;
}

uint64_t sub_1AE788(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication9AlbumCell_artistName];
  swift_beginAccess();
  result = a1;
  if (*v5 != a1 || *(v5 + 1) != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v8 = *&v2[OBJC_IVAR____TtC16MusicApplication9AlbumCell_detailTextComponents + 8];

      v9 = String.trim()();

      swift_beginAccess();
      v8[7] = v9;

      sub_2EB704();
      sub_1ADA6C();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

void (*AlbumCell.artistName.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC16MusicApplication9AlbumCell_artistName;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_1AE928;
}

void sub_1AE940(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t))
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

double AlbumCell.textStackViewComponentForBadging.getter()
{
  sub_1AF594();

  return result;
}

Swift::Void __swiftcall AlbumCell.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  sub_1ADA6C();
}

__n128 sub_1AEC4C()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_DF4580 = *&UIEdgeInsetsZero.top;
  *&qword_DF4590 = v1;
  return result;
}

Swift::Void __swiftcall AlbumCell.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "traitCollectionDidChange:", isa);
  v3 = [v1 traitCollection];
  v4 = OBJC_IVAR____TtC16MusicApplication9AlbumCell_twoLineTitleTextComponents;
  swift_beginAccess();
  v5 = *&v1[v4];
  v6 = [v3 preferredContentSizeCategory];
  v7 = sub_ABA310();
  v8 = sub_ABA330();

  if (v8)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  swift_beginAccess();
  *(v5 + 88) = v9;
  sub_2EB2A8();
  swift_endAccess();
}

double sub_1AEDDC()
{

  return result;
}

void *sub_1AEF58()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_badgeView);
  v2 = v1;
  return v1;
}

unint64_t sub_1AEF88(unint64_t result, int64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_6ACE4(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_44F2EC(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1AF05C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > v5[3] >> 1)
  {
    if (v6 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_6AA00(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_450100(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_1AF130(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_ABB060();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_ABB060();
  }

  else
  {
    v10 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_2BCA0();

  return sub_450224(v5, v3, 0);
}

id sub_1AF208@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v3 = qword_E718C8;
  v4 = objc_opt_self();
  v5 = v3;
  result = [v4 clearColor];
  *a1 = v3;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  *(a1 + 24) = 4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  return result;
}

uint64_t _s16MusicApplication9AlbumCellC20detailTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC06DetailfG0AELLVvpfi_0()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v1 = qword_E718D8;
  v2 = objc_opt_self();
  v20 = v1;
  v3 = v1;
  *&v35[0] = v1;
  *(&v35[0] + 1) = [v2 clearColor];
  v4 = *(&v35[0] + 1);
  v19 = *(&v35[0] + 1);
  v35[1] = xmmword_AF7C20;
  v36 = 0;
  v37 = 0;
  v38 = v0;
  v39 = 1;
  v40 = xmmword_AF7C30;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v35);
  v18 = v3;
  v17 = v4;
  v15 = v0;
  sub_2F118(v35, v49);

  sub_1AF208(&v21);
  v6 = v21;
  v7 = v22;
  v8 = v23;
  v9 = v24;
  v10 = v25;
  v16 = v0;
  v11 = v26;
  v27 = v21;
  v28 = v22;
  v29 = v23;
  v30 = v24;
  v31 = v25;
  v32 = v26;
  v33 = 1;
  v34 = xmmword_AF7C40;
  swift_allocObject();
  v12 = TextStackView.Component.init(identifier:labelProperties:)(0x747369747261, 0xE600000000000000, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF7C50;
  *(v13 + 32) = v5;
  *(v13 + 40) = v12;
  sub_2F118(&v27, v49);

  v41 = v6;
  v42 = v7;
  v43 = v8;
  v44 = v9;
  v45 = v10;
  v46 = v11;
  v47 = 1;
  v48 = xmmword_AF7C40;
  sub_2F174(&v41);
  v49[0] = v20;
  v49[1] = v19;
  v50 = xmmword_AF7C20;
  v51 = 0;
  v52 = 0;
  v53 = v16;
  v54 = 1;
  v55 = xmmword_AF7C30;
  sub_2F174(v49);
  return v5;
}

uint64_t sub_1AF594()
{
  v1 = OBJC_IVAR____TtC16MusicApplication9AlbumCell_layoutStyle;
  swift_beginAccess();
  if (*(v0 + v1) && (*(v0 + v1) == 1 || sub_1AE0A4()))
  {
    v2 = v0 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_twoLineTitleTextComponents;
    swift_beginAccess();
  }

  else
  {
    v2 = v0 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_detailTextComponents;
  }

  return *v2;
}

uint64_t sub_1AF620()
{
  sub_89F60();
  v0 = sub_ABA580();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v1 = qword_E718D8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  *&v8[0] = v1;
  *(&v8[0] + 1) = v4;
  v8[1] = xmmword_AF7C20;
  v9 = 0;
  v10 = 0;
  v11 = v0;
  v12 = 1;
  v13 = xmmword_B00180;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(1802396018, 0xE400000000000000, v8);
  v14[0] = v1;
  v14[1] = v4;
  v15 = xmmword_AF7C20;
  v16 = 0;
  v17 = 0;
  v18 = v0;
  v19 = 1;
  v20 = xmmword_B00180;
  sub_2F118(v8, v7);
  sub_2F174(v14);
  return v5;
}

uint64_t _s16MusicApplication9AlbumCellC26twoLineTitleTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC03TwofghI0AELLVvpfi_0()
{
  sub_89F60();
  v0 = sub_ABA560();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v1 = qword_E718D8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  *&v9[0] = v1;
  *(&v9[0] + 1) = v4;
  v9[1] = xmmword_AF7C20;
  v10 = 0;
  v11 = 0;
  v12 = v0;
  v13 = 2;
  v14 = xmmword_AF7C30;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x77742D656C746974, 0xEE00656E696C2D6FLL, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF82B0;
  *(v6 + 32) = v5;
  v15[0] = v1;
  v15[1] = v4;
  v16 = xmmword_AF7C20;
  v17 = 0;
  v18 = 0;
  v19 = v0;
  v20 = 2;
  v21 = xmmword_AF7C30;
  sub_2F118(v9, v8);

  sub_2F174(v15);
  return v5;
}

void _s16MusicApplication9AlbumCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_layoutStyle) = 0;
  v1 = v0 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_rank;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_artistName);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_badgeView) = 0;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_detailTextComponents);
  *v4 = _s16MusicApplication9AlbumCellC20detailTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC06DetailfG0AELLVvpfi_0();
  v4[1] = v5;
  v4[2] = v6;
  v7 = (v0 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_twoLineTitleTextComponents);
  *v7 = _s16MusicApplication9AlbumCellC26twoLineTitleTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC03TwofghI0AELLVvpfi_0();
  v7[1] = v8;
  *(v0 + OBJC_IVAR____TtC16MusicApplication9AlbumCell____lazy_storage___rankedTextComponent) = 0;
  sub_ABAFD0();
  __break(1u);
}

unint64_t sub_1AFA30()
{
  result = qword_DF45B8;
  if (!qword_DF45B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF45B8);
  }

  return result;
}

uint64_t type metadata accessor for AlbumCell(uint64_t a1)
{
  result = qword_DF45E8;
  if (!qword_DF45E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AFB78(uint64_t result, int64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_6B0F0(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  sub_450504(result, a2, 1, a3, a4);
  *v4 = v6;
}

uint64_t sub_1AFC80(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a4;
    v6 = a3;
    v8 = a2;
    v10 = a1;
    v11 = *v7;
    v12 = *v7 >> 62;
    v18 = a5;
    if (!v12)
    {
      result = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_ABB060();
  if (result < v8)
  {
    goto LABEL_15;
  }

LABEL_4:
  v14 = v8 - v10;
  if (__OFSUB__(v8, v10))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = 1 - v14;
  if (__OFSUB__(1, v14))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v12)
  {
    v16 = sub_ABB060();
  }

  else
  {
    v16 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
  }

  v17 = __OFADD__(v16, v15);
  result = v16 + v15;
  if (v17)
  {
    goto LABEL_18;
  }

  v9(result, 1);

  return v18(v10, v8, 1, v6);
}

id sub_1AFD88(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[qword_DF4608] = 0;
  *&v1[qword_DF4610] = 0;
  *&v1[qword_DF4600] = a1;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v10, "init");
  swift_beginAccess();
  v6 = v5;

  v7 = sub_AB9260();

  [v6 setTitle:v7];

  v8 = &v4[OBJC_IVAR____TtC11MusicJSCore25JSSocialProfileCollection_delegate];
  swift_beginAccess();
  *(v8 + 1) = &off_CFFCF8;
  swift_unknownObjectWeakAssign();

  return v6;
}

void sub_1AFEC8(uint64_t a1)
{
  *(a1 + qword_DF4608) = 0;
  *(a1 + qword_DF4610) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_1AFF3C()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "viewDidLoad");
  v2 = [v0 navigationItem];
  v3 = [v1 parentViewController];
  if (v3)
  {
    v4 = v3;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v5 = v4;
      v6 = [v5 navigationItem];

      v4 = [v5 parentViewController];
      v2 = v6;
      if (!v4)
      {
        goto LABEL_8;
      }
    }
  }

  v6 = v2;
LABEL_8:
  v7 = [v6 rightBarButtonItems];
  if (v7)
  {
    v8 = v7;
    sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
    v9 = sub_AB9760();
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v23 = v9;
  v10 = *&v1[qword_DF4600];
  v11 = OBJC_IVAR____TtC11MusicJSCore25JSSocialProfileCollection_collectionStyle;
  swift_beginAccess();
  if (*(v10 + v11))
  {
    if (*(v10 + v11) == 1)
    {
      sub_1B02D0();
      sub_AB9730();
      if (*(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v23 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
    }

    else
    {
      if (qword_DE67A8 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E05300, &unk_AFA030);
      UnfairLock.locked<A>(_:)(sub_90048);
      v19 = v13[6];
      v20 = v13[7];
      v21 = v13[8];
      v22 = v14;
      v15[2] = v13[2];
      v16 = v13[3];
      v17 = v13[4];
      v18 = v13[5];
      v15[0] = v13[0];
      v15[1] = v13[1];
      if (sub_90064(v15) != 1)
      {
        if (BYTE10(v16) == 1)
        {
          sub_1B0440();
          sub_AB9730();
          if (*(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v23 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_AB97A0();
          }

          sub_AB97F0();
        }

        sub_12E1C(v13, &unk_E05300, &unk_AFA030);
      }
    }
  }

  sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
  isa = sub_AB9740().super.isa;

  [v6 setRightBarButtonItems:isa];
}

objc_class *sub_1B02D0()
{
  v1 = qword_DF4608;
  v2 = *(v0 + qword_DF4608);
  if (v2)
  {
    v3 = *(v0 + qword_DF4608);
  }

  else
  {
    sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
    v4 = (*(v0 + qword_DF4600) + OBJC_IVAR____TtC11MusicJSCore25JSSocialProfileCollection_approveAllButtonTitle);
    swift_beginAccess();
    v6 = *v4;
    v5 = v4[1];
    sub_13C80(0, &unk_E05310, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v7 = v0;
    v12.is_nil = sub_ABA7D0();
    v15.value._countAndFlagsBits = v6;
    v15.value._object = v5;
    v12.value.super.isa = 0;
    v13.value.super.super.isa = 0;
    v8.super.super.isa = sub_AB9FA0(v15, v12, v13, v14).super.super.isa;
    v9 = *(v0 + v1);
    *(v7 + v1) = v8;
    v3 = v8.super.super.isa;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

objc_class *sub_1B0440()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v1 = qword_DF4610;
  v2 = *(v0 + qword_DF4610);
  if (v2)
  {
    v3 = *(v0 + qword_DF4610);
  }

  else
  {
    sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
    sub_AB91E0();
    sub_AB3550();
    v4 = sub_AB9320();
    v6 = v5;
    sub_13C80(0, &unk_E05310, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = v0;
    v12.is_nil = sub_ABA7D0();
    v15.value._countAndFlagsBits = v4;
    v15.value._object = v6;
    v12.value.super.isa = 0;
    v13.value.super.super.isa = 0;
    v8.super.super.isa = sub_AB9FA0(v15, v12, v13, v14).super.super.isa;
    v9 = *(v0 + v1);
    *(v7 + v1) = v8;
    v3 = v8.super.super.isa;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_1B0648(void *a1)
{
  v1 = a1;
  sub_1AFF3C();
}

char *sub_1B0690()
{
  v0 = [objc_allocWithZone(type metadata accessor for SocialProfileCollectionViewTableLayout()) init];
  [v0 _setShowsAdditionalSeparators:0];
  *&v0[OBJC_IVAR____TtC16MusicApplicationP33_D07372EB1E7BFF940D6ACB726B7DD12B38SocialProfileCollectionViewTableLayout_delegate + 8] = &off_CFFCC8;
  swift_unknownObjectWeakAssign();
  isa = sub_AB9740().super.isa;
  [v0 _setFloatingElementKinds:isa];

  sub_1B0748(v0);
  return v0;
}

void sub_1B0748(void *a1)
{
  v25 = [v1 traitCollection];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [v1 view];
  if (!v13)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 music_inheritedLayoutInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = UIEdgeInsetsInsetRect_1(v6, v8, v10, v12, v16, v18, v20, v22);
  sub_B2768(v25, v23);
  [a1 setRowHeight:v24];
  [a1 invalidateLayout];
}

void sub_1B089C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF8600;
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
  isa = sub_AB9740().super.isa;
  v7 = objc_opt_self();
  v8 = [v7 propertySetWithProperties:isa];

  if (qword_DE6D58 != -1)
  {
    swift_once();
  }

  v9 = qword_E71A80;
  v10 = [v8 propertySetByCombiningWithPropertySet:v9];

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF85F0;
  *(v11 + 32) = sub_AB92A0();
  *(v11 + 40) = v12;
  *(v11 + 48) = sub_AB92A0();
  *(v11 + 56) = v13;
  v14 = sub_AB9740().super.isa;
  v15 = [v7 propertySetWithProperties:v14];

  v16 = [v10 propertySetByCombiningWithPropertySet:v15];
  qword_DF45F8 = v16;
}

void sub_1B0ACC()
{
  v1 = *&v0[qword_DF4600];
  v2 = type metadata accessor for JSSocialProfileCollectionModelRequest();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC16MusicApplication37JSSocialProfileCollectionModelRequest_previousResponse] = 0;
  *&v3[OBJC_IVAR____TtC16MusicApplication37JSSocialProfileCollectionModelRequest_profileCollection] = v1;
  v17.receiver = v3;
  v17.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v17, "init");
  sub_13C80(0, &qword_DED7C0, MPModelSocialPerson_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v5;
  v9 = [v7 kindWithModelClass:ObjCClassFromMetadata];
  [v8 setItemKind:v9];

  if (qword_DE6950 != -1)
  {
    swift_once();
  }

  [v8 setItemProperties:qword_DF45F8];

  v10 = *&v0[qword_DFE2F0];
  v11 = *&v8[OBJC_IVAR____TtC16MusicApplication37JSSocialProfileCollectionModelRequest_previousResponse];
  *&v8[OBJC_IVAR____TtC16MusicApplication37JSSocialProfileCollectionModelRequest_previousResponse] = v10;
  v12 = v10;

  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  v16[4] = sub_1B4D84;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_151E0;
  v16[3] = &block_descriptor_62;
  v14 = _Block_copy(v16);
  v15 = v0;

  [v8 performWithResponseHandler:v14];
  _Block_release(v14);
}

double sub_1B0CE0(void *a1)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1B4DE4, v3);

  return result;
}

void sub_1B0DB0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      type metadata accessor for JSSocialProfileCollectionModelResponse();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = a2;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = v4;
    sub_3B4724(v5);
  }
}

double sub_1B0E4C(_BYTE *a1, void *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v7 = v70 - v6 + 48;
  if (*(v2 + qword_DFE2F0) && (type metadata accessor for JSSocialProfileCollectionModelResponse(), (v8 = swift_dynamicCastClass()) != 0) && (v9 = *(v8 + OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_jsResults), isa = sub_AB3770().super.isa, v11 = [v9 itemAtIndexPath:isa], v9, isa, v11))
  {
    type metadata accessor for JSSocialProfileCollectionItem();
    v12 = swift_dynamicCastClass();
    v13 = v12;
    if (v12)
    {
      v14 = (v12 + OBJC_IVAR____TtC11MusicJSCore29JSSocialProfileCollectionItem_title);
      swift_beginAccess();
      v15 = v14[1];
      if (v15)
      {
        v16 = *v14;

        goto LABEL_11;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = [a2 name];
  if (v17)
  {
    v18 = v17;
    v16 = sub_AB92A0();
    v15 = v19;
  }

  else
  {

    v16 = 0;
    v15 = 0xE000000000000000;
  }

LABEL_11:
  v20 = &a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_name];
  v21 = *&a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_name];
  v22 = *&a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_name + 8];
  *v20 = v16;
  v20[1] = v15;
  sub_B0EFC(v21, v22);

  v69 = v13;
  if (v13 && (v23 = &v13[OBJC_IVAR____TtC11MusicJSCore29JSSocialProfileCollectionItem_subtitle], swift_beginAccess(), (v24 = v23[1]) != 0))
  {
    v25 = *v23;
  }

  else
  {
    v26 = [a2 handle];
    if (v26)
    {
      v27 = v26;
      v25 = sub_AB92A0();
      v24 = v28;
    }

    else
    {

      v25 = 0;
      v24 = 0xE000000000000000;
    }
  }

  v29 = &a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_subtitle];
  v30 = *&a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_subtitle];
  v31 = *&a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_subtitle + 8];
  *v29 = v25;
  v29[1] = v24;
  sub_B10C0(v30, v31);

  v32 = sub_272C0C();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v70[0] = v32;
  v70[1] = v33;
  v70[2] = v35;
  v71 = v37;
  __chkstk_darwin();
  *(&v69 - 2) = v70;
  if (sub_1B3B10(sub_1B4B08, (&v69 - 4), &off_CEFE10))
  {
    sub_7FCC4(v32);
    v32 = 0;
    v34 = 0;
    v36 = 0;
    v38 = 0;
  }

  sub_206880(v32, v34, v36, v38);
  sub_7FCC4(v32);
  sub_ABA670();
  v39 = sub_ABA680();
  v40 = 1;
  (*(*(v39 - 8) + 56))(v7, 0, 1, v39);
  sub_200394(v7);
  v41 = *(v3 + qword_DF4600);
  v42 = OBJC_IVAR____TtC11MusicJSCore25JSSocialProfileCollection_collectionStyle;
  swift_beginAccess();
  if (*(v41 + v42) == 1)
  {
    v43 = a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_layoutStyle];
    a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_layoutStyle] = 1;
    v44 = 1;
    if (v43)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v45 = *&a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_relationshipButtonController];
  v46 = *(v45 + 88);
  *(v45 + 88) = a2;
  if (!v46)
  {

    v49 = a2;
    goto LABEL_26;
  }

  sub_13C80(0, &qword_DED7C0, MPModelSocialPerson_ptr);

  v47 = a2;
  v46 = v46;
  v48 = sub_ABA790();

  if ((v48 & 1) == 0)
  {
LABEL_26:
    sub_49E994();
    sub_49EB38(512);
  }

  v40 = 0;
  v44 = 0;
  v50 = a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_layoutStyle];
  a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_layoutStyle] = 0;
  if (v50)
  {
LABEL_28:
    [a1 setNeedsLayout];
    v44 = v40;
  }

LABEL_29:
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  *(v52 + 24) = v44;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_1B4BB4;
  *(v53 + 24) = v52;
  v54 = &a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_approveRequestHandler];
  v55 = *&a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_approveRequestHandler];
  v56 = *&a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_approveRequestHandler + 8];
  *v54 = sub_1B4BFC;
  v54[1] = v53;

  sub_17654(v55, v56);
  v57 = swift_allocObject();
  *(v57 + 16) = sub_1B4BB4;
  *(v57 + 24) = v52;
  v58 = &a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_declineRequestHandler];
  v59 = *&a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_declineRequestHandler];
  v60 = *&a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_declineRequestHandler + 8];
  *v58 = sub_1B4C2C;
  v58[1] = v57;

  sub_17654(v59, v60);
  v61 = OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_relationshipButtonController;
  *(*&a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_relationshipButtonController] + 48) = &off_CFFCD8;
  swift_unknownObjectWeakAssign();
  *(*&a1[v61] + 16) = 0;

  sub_49E994();

  v62 = *&a1[v61];
  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = swift_allocObject();
  *(v65 + 16) = v63;
  *(v65 + 24) = v64;
  v66 = *(v62 + 56);
  v67 = *(v62 + 64);
  *(v62 + 56) = sub_1B4C9C;
  *(v62 + 64) = v65;

  sub_17654(v66, v67);

  return result;
}

void sub_1B1538(int a1, void *a2, uint64_t a3, char a4)
{
  v79 = a1;
  v6 = sub_AB7CC0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = (&v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_AB3820();
  v80 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v72 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((a4 & 1) == 0)
    {

      return;
    }

    v16 = Strong;
    [v16 loadViewIfNeeded];
    v17 = *&v16[qword_DFE2F8];
    if (v17)
    {
      v18 = [v17 indexPathForCell:a2];
      if (!v18)
      {

LABEL_18:
        return;
      }

      v19 = v18;
      sub_AB3790();

      (*(v80 + 32))(v14, v12, v10);
      v20 = qword_DFE2F0;
      if (!*&v16[qword_DFE2F0])
      {
        goto LABEL_15;
      }

      v78 = v7;
      v21 = type metadata accessor for JSSocialProfileCollectionModelResponse();
      v22 = swift_dynamicCastClass();
      if (!v22)
      {
        goto LABEL_15;
      }

      v76 = v21;
      v77 = v20;
      v23 = [v22 results];
      if (v23)
      {
        v24 = v23;
        isa = sub_AB3770().super.isa;
        v26 = [v24 itemAtIndexPath:isa];

        if (v26)
        {
          objc_opt_self();
          v27 = swift_dynamicCastObjCClass();
          if (v27)
          {
            v73 = v27;
            v28 = v16;
            v29 = a2;
            v30 = [v29 _collectionView];
            v31 = v29;
            v75 = v26;
            if (v30)
            {
              v32 = v30;
              v74 = v28;
              v33 = sub_AB9260();
              v34 = NSSelectorFromString(v33);

              if ([v32 respondsToSelector:v34])
              {
                v35 = [v32 _currentTouch];
                if (v35)
                {
                  v36 = v35;
                  [v35 locationInView:v29];
                  v38 = v37;
                  v40 = v39;

                  v94.size.width = 0.0;
                  v94.size.height = 0.0;
                  v94.origin.x = v38;
                  v94.origin.y = v40;
                  v95 = CGRectInset(v94, -20.0, -20.0);
                  x = v95.origin.x;
                  y = v95.origin.y;
                  width = v95.size.width;
                  height = v95.size.height;

                  v45 = height;
                  v46 = width;
                  v47 = y;
                  v48 = x;
                  v28 = v74;
                  goto LABEL_23;
                }
              }

              v31 = v32;
              v28 = v74;
            }

            [v29 bounds];
LABEL_23:
            v92[0] = v29;
            *&v92[1] = v48;
            *&v92[2] = v47;
            *&v92[3] = v46;
            *&v92[4] = v45;
            v93 = 0;
            PresentationSource.Position.init(source:permittedArrowDirections:)(v92, 15, v84);
            v88[0] = v84[0];
            v88[1] = v84[1];
            v89 = v85;
            v90 = v86;
            v91 = v87;
            v49 = v28;
            v50 = v29;
            v74 = v49;
            PresentationSource.init(viewController:position:)(v49, v88, v83);
            if (qword_DE6BE8 != -1)
            {
              swift_once();
            }

            v51 = qword_E71820;
            sub_15F28(v83, v82);
            sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
            *v9 = sub_ABA150();
            v52 = v78;
            (*(v78 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
            v53 = sub_AB7CF0();
            v55 = *(v52 + 8);
            v54 = v52 + 8;
            v55(v9, v6);
            if (v53)
            {
              v56 = *(v51 + 2);
              sub_15F84(v82, v81, &unk_DEA520, &unk_AFDBF0);
              v57 = swift_allocObject();
              v58 = v73;
              *(v57 + 16) = v51;
              *(v57 + 24) = v58;
              sub_111814(v81, v57 + 32);
              *(v57 + 128) = v56;
              v59 = v79 & 1;
              *(v57 + 136) = v79 & 1;
              *(v57 + 144) = 0;
              *(v57 + 152) = 0;
              v60 = v56;
              v53 = v51;
              v51 = v60;

              swift_unknownObjectRetain();
              v61 = sub_43D968(v58);
              v62 = v59;
              v28 = v51;
              sub_43E588(v62, v51, v58, sub_1998B4, v57);
              if (((v61 ^ sub_43D968(v58)) & 1) == 0)
              {
                v54 = v77;
LABEL_30:
                sub_12E1C(v82, &unk_DEA520, &unk_AFDBF0);

                v63 = *&v16[v54];
                v64 = v63;
                v65 = v74;

                if (v63)
                {
                  v66 = swift_dynamicCastClass();
                  if (!v66)
                  {
                    swift_unknownObjectRelease();

                    goto LABEL_43;
                  }

                  v67 = *(v66 + OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_jsResults);

                  v68 = sub_AB3770().super.isa;
                  v69 = [v67 itemAtIndexPath:v68];

                  if (v69)
                  {
                    type metadata accessor for JSSocialProfileCollectionItem();
                    if (swift_dynamicCastClass())
                    {
                      v70 = [v65 view];

                      if (v70)
                      {
                        v71 = [v70 window];

                        if (!v71 || (v16 = [v71 windowScene], v71, !v16))
                        {

                          swift_unknownObjectRelease();
                          sub_1611C(v83);
                          (*(v80 + 8))(v14, v10);
                          swift_unknownObjectRelease();
                          return;
                        }

                        if (v79)
                        {
                          sub_414EE4(v16);
                        }

                        else
                        {
                          sub_414D08(v16);
                        }

                        swift_unknownObjectRelease();
                        sub_1611C(v83);
                        (*(v80 + 8))(v14, v10);
                        swift_unknownObjectRelease();
                        goto LABEL_18;
                      }

LABEL_50:
                      __break(1u);
                      return;
                    }

                    swift_unknownObjectRelease();

                    swift_unknownObjectRelease();
                    goto LABEL_43;
                  }
                }

                swift_unknownObjectRelease();

LABEL_43:
                sub_1611C(v83);
                goto LABEL_16;
              }

              v51 = [objc_opt_self() defaultCenter];
              v54 = v77;
              if (qword_DE6BF8 == -1)
              {
LABEL_28:
                [v51 postNotificationName:qword_E71830 object:v53];

                goto LABEL_30;
              }
            }

            else
            {
              __break(1u);
            }

            swift_once();
            goto LABEL_28;
          }

          swift_unknownObjectRelease();
LABEL_16:
          (*(v80 + 8))(v14, v10);
          return;
        }

LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_50;
  }
}

void sub_1B1DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v26[-v7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (!v11)
    {

      return;
    }

    v12 = v11;
    v13 = v10;
    [v13 loadViewIfNeeded];
    v14 = *&v13[qword_DFE2F8];
    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = [v14 indexPathForCell:v12];
    if (!v15)
    {

      return;
    }

    v16 = v15;
    sub_AB3790();

    (*(v4 + 32))(v8, v6, v3);
    v17 = *&v13[qword_DFE2F0];
    v18 = v17;

    if (v17)
    {
      type metadata accessor for JSSocialProfileCollectionModelResponse();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {

LABEL_19:
        (*(v4 + 8))(v8, v3);
        return;
      }

      v20 = *(v19 + OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_jsResults);

      isa = sub_AB3770().super.isa;
      v22 = [v20 itemAtIndexPath:isa];

      if (v22)
      {
        type metadata accessor for JSSocialProfileCollectionItem();
        if (swift_dynamicCastClass())
        {
          v23 = [v12 window];
          if (v23)
          {
            v24 = v23;
            v25 = [v23 windowScene];

            if (v25)
            {
              sub_414EFC(v25);

              (*(v4 + 8))(v8, v3);
              swift_unknownObjectRelease();

              return;
            }
          }

          (*(v4 + 8))(v8, v3);
          swift_unknownObjectRelease();
          goto LABEL_15;
        }

        swift_unknownObjectRelease();
        goto LABEL_19;
      }
    }

    (*(v4 + 8))(v8, v3);
LABEL_15:
  }
}

uint64_t sub_1B213C()
{
  v1 = *(v0 + qword_DF4600);
  v2 = OBJC_IVAR____TtC11MusicJSCore25JSSocialProfileCollection_collectionStyle;
  swift_beginAccess();
  if (*(v1 + v2) && *(v1 + v2) != 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_ABB3C0();
  }

  return v3 & 1;
}

uint64_t sub_1B2208(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v10 = *&a1[qword_DF4600];
  v11 = OBJC_IVAR____TtC11MusicJSCore25JSSocialProfileCollection_collectionStyle;
  swift_beginAccess();
  if (*(v10 + v11) && *(v10 + v11) != 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_ABB3C0();
  }

  v13 = *(v7 + 8);
  v14 = a4;
  v15 = a1;
  v13(v9, v6);

  return v12 & 1;
}

char *sub_1B23A8(char *result, void *a2)
{
  v3 = *&v2[qword_DFE2F0];
  if (v3)
  {
    type metadata accessor for JSSocialProfileCollectionModelResponse();
    result = swift_dynamicCastClass();
    if (result)
    {
      v5 = result;
      v6 = v2;
      v7 = v3;
      result = [v5 results];
      if (result)
      {
        v8 = result;
        isa = sub_AB3770().super.isa;
        [v8 itemAtIndexPath:isa];

        objc_opt_self();
        v10 = swift_dynamicCastObjCClass();
        if (v10 && (v11 = v10, v12 = sub_AB3770().super.isa, v13 = [a2 cellForItemAtIndexPath:v12], v12, v13))
        {
          v14 = v13;
          sub_D5958(v22);
          v15 = v23;
          v16 = v24;
          v17 = v25;

          v26[0] = v22[0];
          v26[1] = v22[1];
          v27 = v15;
          v28 = v16;
          v29 = v17;
          PresentationSource.init(viewController:position:)(v6, v26, v21);
          if (qword_DE6BE8 != -1)
          {
            swift_once();
          }

          sub_15F28(v21, v20);
          sub_43EFE8(v11, v20, 0, 0);
          sub_12E1C(v20, &unk_DEA520, &unk_AFDBF0);
          v18 = *&v5[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_jsResults];
          v19 = sub_AB3770().super.isa;
          [v18 itemAtIndexPath:v19];

          type metadata accessor for JSSocialProfileCollectionItem();
          if (swift_dynamicCastClass())
          {
            JSSocialProfileCollectionItem.didRemoveFollower()();

            sub_1611C(v21);
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
            sub_1611C(v21);
          }

          return swift_unknownObjectRelease();
        }

        else
        {

          return swift_unknownObjectRelease();
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_1B2664(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a6;
  v15 = a1;
  sub_1B23A8(v12, v13);
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_1B2774(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  v17 = sub_1B4FA4();

  (*(v10 + 8))(v12, v9);
  return v17;
}

void sub_1B28B0(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v13 = sub_AB3820();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a1;
  sub_1B5074(v17, v16, v8, v7);

  (*(v14 + 8))(v16, v13);
}

void sub_1B29E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_DE6BE8 != -1)
    {
      swift_once();
    }

    memset(v7, 0, sizeof(v7));
    v8 = 1;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    sub_43DC18(v7, 0, 0);
    sub_12E1C(v7, &unk_DEA520, &unk_AFDBF0);
    v4 = [v3 navigationController];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 popViewControllerAnimated:1];

      v3 = v5;
    }
  }
}

void sub_1B2B00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1B2B54();
  }
}

id sub_1B2B54()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  v1 = [v0 isEditing];
  v2 = sub_1B0440();
  sub_AB91E0();
  sub_AB3550();
  if (v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  sub_AB9320();
  v4 = sub_AB9260();

  [v2 setTitle:v4];

  [*&v0[qword_DF4610] setStyle:v3];
  return [v0 setEditing:v1 ^ 1 animated:1];
}

void sub_1B2D30()
{
  v1 = *(v0 + qword_DF4610);
}

void sub_1B2D80(uint64_t a1)
{
  v2 = *(a1 + qword_DF4610);
}

uint64_t type metadata accessor for JSSocialProfileCollectionViewController(uint64_t a1)
{
  result = qword_DF4640;
  if (!qword_DF4640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B2EAC(uint64_t a1, id *a2)
{
  v3 = [*a2 artworkCatalog];
  v4 = *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
  *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v3;
  v5 = v3;

  sub_74EA4(v3);
  sub_B0D4C();
}

void sub_1B2F50()
{
  v1 = *v0;
  [*v0 loadViewIfNeeded];
  v2 = *&v1[qword_DFE2F8];
  if (v2)
  {
    v3 = v2;
    [v3 music_inheritedLayoutInsets];
    v4 = [v1 traitCollection];
    [v3 bounds];
  }

  else
  {
    __break(1u);
  }
}

void sub_1B3060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1B02D0();
  v4 = sub_AB9260();
  [(objc_class *)v3 setTitle:v4];
}

void sub_1B30D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_AB9260();
  [v3 setTitle:v4];
}

id sub_1B312C(uint64_t a1)
{
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v3 + 16))(&aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);

  v8 = sub_AB9260();

  aBlock[4] = sub_1B4EB8;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B351C;
  aBlock[3] = &block_descriptor_89;
  v9 = _Block_copy(aBlock);
  v10 = [objc_opt_self() contextualActionWithStyle:1 title:v8 handler:v9];
  _Block_release(v9);

  return v10;
}

uint64_t sub_1B3424(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, char *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [v9 collectionView];

    if (v10)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1B23A8(a6, v10);
        a3(1);

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v10 = v9;
    }
  }

  return (a3)(0);
}

void sub_1B351C(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v9 = a2;
  v10 = a3;
  v6(v9, v10, sub_1B4F8C, v8);
}

id sub_1B37D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SocialProfileCollectionViewTableLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1B3870(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = *(*(a3 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v8)))));
      v15 = v12;
      sub_9AEAC(v12);
      v13 = a1(&v15);
      sub_9AE98(v12);
      if (v3 || (v13 & 1) != 0)
      {
        break;
      }

      v8 &= v8 - 1;
      v10 = v11;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        goto LABEL_12;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B39BC(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B3A68(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B3B10(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = (a3 + 56);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;
      v14[0] = v7;
      v14[1] = v8;
      v14[2] = v9;
      v15 = v10;
      sub_7FCB4(v7);
      v11 = v16(v14);
      sub_7FCC4(v7);
      if (v3)
      {
        break;
      }

      v6 += 32;
      v12 = v5-- == 0;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_1B3C54(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 2);
      v14[0] = *(v7 - 3);
      v14[1] = v10;
      v14[2] = v8;
      v14[3] = v9;

      v11 = (a1)(v14);

      if (v3)
      {
        break;
      }

      v12 = v6-- == 0;
      v7 += 4;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_1B3D48(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3, uint64_t (*a4)(unint64_t, uint64_t))
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v5 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  if (v5)
  {
    do
    {
      v6 = 0;
      v17 = a4;
      v18 = a3 & 0xC000000000000001;
      v7 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v18)
        {
          v8 = a3;
          v9 = v17(v6, a3);
        }

        else
        {
          if (v6 >= *(v7 + 16))
          {
            goto LABEL_14;
          }

          v8 = a3;
          v9 = *(a3 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v20 = v9;
        v12 = a1(&v20);

        if (!v4 && (v12 & 1) == 0)
        {
          ++v6;
          a3 = v8;
          if (v11 != v5)
          {
            continue;
          }
        }

        return v12 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v13 = a4;
      v14 = a3;
      v15 = sub_ABB060();
      a3 = v14;
      a4 = v13;
      v5 = v15;
    }

    while (v15);
  }

  v12 = 0;
  return v12 & 1;
}

BOOL sub_1B3E80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  switch(a1)
  {
    case 0:
      return !a5;
    case 1:
      return a5 == 1;
    case 2:
      return a5 == 2;
  }

  if (a5 < 3)
  {
    return 0;
  }

  sub_13C80(0, &qword_DFA720, NSObject_ptr);
  if ((sub_ABA790() & 1) == 0)
  {
    return 0;
  }

  if ((a4 & 1) == 0)
  {
    return (a8 & 1) == 0 && *&a2 == *&a6 && *&a3 == *&a7;
  }

  return (a8 & 1) != 0;
}

void sub_1B3FE4(uint64_t a1)
{
  v2 = v1;
  v100 = a1;
  v3 = sub_AB3430();
  v98 = *(v3 - 8);
  __chkstk_darwin();
  v97 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB3820();
  v99 = *(v5 - 8);
  __chkstk_darwin();
  v95 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v11 = &v82 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v96 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v82 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v16 = &v82 - v15;
  v17 = *&v1[qword_DFE2F0];
  if (!v17)
  {
    return;
  }

  type metadata accessor for JSSocialProfileCollectionModelResponse();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    return;
  }

  v92 = v3;
  v93 = v16;
  v19 = *(v18 + OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_jsResults);
  v20 = v17;
  isa = sub_AB3770().super.isa;
  v22 = [v19 itemAtIndexPath:isa];

  type metadata accessor for JSSocialProfileCollectionItem();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v91 = v22;
    v24 = OBJC_IVAR____TtC11MusicJSCore29JSSocialProfileCollectionItem_profile;
    v94 = v23;
    swift_beginAccess();
    v25 = *&v94[v24];
    if (!v25)
    {

      swift_unknownObjectRelease();
      return;
    }

    v87 = v20;
    v88 = v7;
    sub_13C80(0, &qword_DF4BC8, MPStoreModelSocialPersonBuilder_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v90 = v25;
    v27 = [ObjCClassFromMetadata allSupportedProperties];
    if (v27)
    {
      v28 = v27;
      v29 = type metadata accessor for JSModelSocialPersonProfileBuilder();
      v30 = objc_allocWithZone(v29);
      v30[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_initializedProperties] = 2;
      *&v30[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties] = v28;
      v31 = objc_allocWithZone(MPStoreModelSocialPersonBuilder);
      v32 = v28;
      v33 = [v31 initWithRequestedPropertySet:v32];
      if (v33)
      {
        *&v30[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_storePlatformPersonBuilder] = v33;
        v106.receiver = v30;
        v106.super_class = v29;
        v34 = objc_msgSendSuper2(&v106, "init");

        v35 = [objc_opt_self() activeAccount];
        v85 = v34;
        sub_21B8E0(v90, v35);
        v89 = v36;

        v37 = JSSegueCoordinator.shared.unsafeMutableAddressor();
        [v2 loadViewIfNeeded];
        v38 = *&v2[qword_DFE2F8];
        if (v38)
        {
          v86 = qword_DFE2F8;
          v84 = v37;
          v39 = v38;
          v40 = sub_AB3770().super.isa;
          v41 = [v39 cellForItemAtIndexPath:v40];

          if (v41)
          {
            sub_D5958(v107);
            v82 = v107[1];
            v83 = v107[0];
            v42 = v108;
            v43 = v109;
            v44 = v110;

            v46 = v82;
            v45 = v83;
          }

          else
          {
            v42 = 0;
            v44 = 0;
            v45 = 0uLL;
            v43 = 255;
            v46 = 0uLL;
          }

          v111[0] = v45;
          v111[1] = v46;
          v112 = v42;
          v113 = v43;
          v114 = v44;
          v47 = v2;
          PresentationSource.init(viewController:position:)(v47, v111, v105);
          *&v83 = v89;
          [v47 loadViewIfNeeded];
          if (*&v2[v86])
          {
            v48 = _s30CollectionViewSelectionHandlerVMa(0);
            v104[3] = v48;
            v104[4] = &off_CF7E60;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v104);
            v50 = *(v99 + 16);
            v50(boxed_opaque_existential_0 + *(v48 + 20), v100, v5);
            swift_unknownObjectWeakInit();
            v51 = type metadata accessor for PlaybackIntentDescriptor(0);
            (*(*(v51 - 8) + 56))(v93, 1, 1, v51);
            sub_15F84(v104, &v101, &unk_DE8E30, "\b]\r");
            if (*(&v102 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
              v52 = swift_dynamicCast();
              v53 = *(v48 - 8);
              (*(v53 + 56))(v11, v52 ^ 1u, 1, v48);
              if ((*(v53 + 48))(v11, 1, v48) != 1)
              {
                v50(v14, &v11[*(v48 + 20)], v5);
                sub_2D6C0(v11, _s30CollectionViewSelectionHandlerVMa);
                v54 = 0;
                goto LABEL_21;
              }
            }

            else
            {
              sub_12E1C(&v101, &unk_DE8E30, "\b]\r");
              (*(*(v48 - 8) + 56))(v11, 1, 1, v48);
            }

            sub_12E1C(v11, &qword_E037A0, &unk_AF8B30);
            v54 = 1;
LABEL_21:
            v55 = v92;
            v56 = v99;
            (*(v99 + 56))(v14, v54, 1, v5);
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong && (v58 = Strong, sub_12B2FC(), v60 = v59, v62 = v61, v58, v60))
            {
              ObjectType = swift_getObjectType();
              (*(v62 + 8))(ObjectType, v62);
              v65 = v64;
              swift_unknownObjectRelease();
              v66 = v96;
              sub_15F84(v14, v96, &unk_DE8E20, &qword_AF7990);
              if ((*(v56 + 48))(v66, 1, v5) == 1)
              {
                sub_12E1C(v66, &unk_DE8E20, &qword_AF7990);
                v101 = 0u;
                v102 = 0u;
                v103 = 0;
              }

              else
              {
                (*(v56 + 32))(v95, v66, v5);
                sub_2D668();
                sub_ABAD10();
              }

              v68 = v98;
              v69 = swift_getObjectType();
              v70 = v97;
              sub_3B8F68(v69);
              v67 = sub_21CCAC(1, v70, &v101, v69, v65);
              (*(v68 + 8))(v70, v55);
              sub_12E1C(&v101, &qword_DF2BD0, &unk_AFDC00);
              sub_12E1C(v14, &unk_DE8E20, &qword_AF7990);
              swift_unknownObjectRelease();
            }

            else
            {
              sub_12E1C(v14, &unk_DE8E20, &qword_AF7990);
              v67 = 0;
            }

            v71 = swift_unknownObjectWeakLoadStrong();
            v72 = v84;
            if (v71)
            {
              v73 = v71;
              sub_12AFE8();
              v75 = v74;
            }

            else
            {
              v75 = 0;
            }

            sub_15F28(v105, &v101);
            sub_15F84(v104, (v9 + 104), &unk_DE8E30, "\b]\r");
            v76 = v88;
            v77 = v93;
            sub_15F84(v93, &v9[*(v88 + 28)], &unk_DEA510, "\b]\r");
            *v9 = 0u;
            *(v9 + 1) = 0u;
            *(v9 + 2) = 0u;
            *(v9 + 3) = 0u;
            *(v9 + 8) = 1;
            *(v9 + 9) = 0;
            *(v9 + 10) = 0;
            *(v9 + 11) = 0;
            sub_2D594(&v101, v9);
            *(v9 + 12) = v89;
            v78 = *v72;
            *(&v102 + 1) = v76;
            v79 = __swift_allocate_boxed_opaque_existential_0(&v101);
            sub_2D604(v9, v79);
            v80 = v83;
            v81 = v78;
            JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v94, 0, v67, v75, &v101);

            sub_12E1C(v77, &unk_DEA510, "\b]\r");
            sub_1611C(v105);
            sub_2D6C0(v9, _s23MusicPerformanceContextVMa);

            sub_12E1C(&v101, &unk_DE8E40, &unk_AF8050);

            sub_12E1C(v104, &unk_DE8E30, "\b]\r");
            swift_unknownObjectRelease();

            return;
          }

LABEL_36:
          __break(1u);
          return;
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_35;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1B4B44()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1B4B7C()
{

  return swift_deallocObject();
}

uint64_t sub_1B4BC4()
{

  return swift_deallocObject();
}

uint64_t sub_1B4C5C()
{

  return swift_deallocObject();
}

uint64_t sub_1B4CA4()
{

  if (*(v0 + 96) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v1 = *(v0 + 80);
    if (v1 != 255)
    {
      sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
    }

    if (*(v0 + 96))
    {
    }

    if (*(v0 + 112))
    {
    }
  }

  if (*(v0 + 144))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B4D4C()
{

  return swift_deallocObject();
}

double block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1B4DA4()
{

  return swift_deallocObject();
}

uint64_t sub_1B4DF4()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B4EB8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(sub_AB3820() - 8);
  v10 = *(v4 + 16);
  v11 = (v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80)));

  return sub_1B3424(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_1B4F54()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B4FA4()
{
  v1 = *(v0 + qword_DF4600);
  v2 = OBJC_IVAR____TtC11MusicJSCore25JSSocialProfileCollection_collectionStyle;
  swift_beginAccess();
  if (*(v1 + v2) && *(v1 + v2) != 1)
  {

    return 1;
  }

  else
  {
    v3 = sub_ABB3C0();

    return v3 & 1;
  }
}

void sub_1B5074(void *a1, uint64_t a2, char a3, char a4)
{
  isa = sub_AB3770().super.isa;
  v9 = [a1 cellForItemAtIndexPath:isa];

  if (v9)
  {
    type metadata accessor for SocialPersonHorizontalCell(0);
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      *(v8 + OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_isFollowButtonHidden) = a3;
      [*(*(v8 + OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_relationshipButtonController) + 160) setHidden:a4 & 1];
    }
  }
}

void *sub_1B5174(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v30 = *(a1 + 16);
    sub_6D5A0(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_ABABC0();
    v5 = v30;
    v6 = 0;
    v7 = *(a1 + 36);
    v31 = v7;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v9 = v4 >> 6;
      v10 = 1 << v4;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_39;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_40;
      }

      ++v6;
      v11 = v4 & 0x3F;
      v12 = 0xEA00000000007365;
      v13 = 0x6974697669746361;
      switch(*(*(a1 + 48) + v4))
      {
        case 1:
          v12 = 0xE600000000000000;
          v13 = 0x736D75626C61;
          break;
        case 2:
          v12 = 0xE700000000000000;
          v13 = 0x73747369747261;
          break;
        case 3:
          v12 = 0xE800000000000000;
          v13 = 0x73726F7461727563;
          break;
        case 4:
          v12 = 0xE500000000000000;
          v13 = 0x73676E6F73;
          break;
        case 5:
          v12 = 0xE800000000000000;
          v13 = 0x736E6F6974617473;
          break;
        case 6:
          v13 = 0x75632D656C707061;
          v12 = 0xEE0073726F746172;
          break;
        case 7:
          v13 = 0x6169726F74696465;
          v12 = 0xEF736D6574692D6CLL;
          break;
        case 8:
          v13 = 0x6F6D2D636973756DLL;
          v14 = 1936025974;
          goto LABEL_25;
        case 9:
          v13 = 0x69762D636973756DLL;
          v14 = 1936680292;
LABEL_25:
          v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 0xA:
          v13 = 0x6F736970652D7674;
          v12 = 0xEB00000000736564;
          break;
        case 0xB:
          v12 = 0xE800000000000000;
          v13 = 0x73776F68732D7674;
          break;
        case 0xC:
          v13 = 0x646564616F6C7075;
          v12 = 0xEF736F656469762DLL;
          break;
        case 0xD:
          v13 = 0x6C2D64726F636572;
          v12 = 0xED0000736C656261;
          break;
        case 0xE:
          v13 = 0x702D6C6169636F73;
          v12 = 0xEF73656C69666F72;
          break;
        case 0xF:
          v12 = 0xE900000000000073;
          v13 = 0x7473696C79616C70;
          break;
        default:
          break;
      }

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        v28 = v6;
        v29 = v4;
        sub_6D5A0((v15 > 1), v16 + 1, 1);
        v6 = v28;
        v5 = v30;
        v7 = v31;
        v4 = v29;
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v13;
      v17[5] = v12;
      v8 = 1 << *(a1 + 32);
      if (v4 >= v8)
      {
        goto LABEL_41;
      }

      v18 = *(v3 + 8 * v9);
      if ((v18 & v10) == 0)
      {
        goto LABEL_42;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_43;
      }

      v19 = v18 & (-2 << v11);
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (a1 + 64 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            v25 = v6;
            sub_E1798(v4, v31, 0);
            v5 = v30;
            v7 = v31;
            v6 = v25;
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        v26 = v6;
        sub_E1798(v4, v31, 0);
        v5 = v30;
        v7 = v31;
        v6 = v26;
      }

LABEL_4:
      v4 = v8;
      if (v6 == v5)
      {
        return _swiftEmptyArrayStorage;
      }
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
    JUMPOUT(0x1B55E4);
  }

  return _swiftEmptyArrayStorage;
}

void sub_1B5624(uint64_t a1)
{
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0, &qword_AF7AF0) - 8);
  __chkstk_darwin();
  v21 = (v19 - v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    v19[1] = v1;
    v26 = _swiftEmptyArrayStorage;
    sub_ABAEC0();
    v25 = a1 + 56;
    v5 = sub_ABABC0();
    v6 = 0;
    v7 = *(a1 + 36);
    v20 = a1 + 64;
    v23 = a1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v24 = v6;
      v10 = v21;
      sub_15F84(*(a1 + 48) + *(v22 + 72) * v5, v21, &unk_DFEEE0, &qword_AF7AF0);
      v11 = *v10;
      sub_12E1C(v10, &unk_DFEEE0, &qword_AF7AF0);
      sub_ABAE90();
      sub_ABAED0();
      a1 = v23;
      sub_ABAEE0();
      sub_ABAEA0();
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v12 = *(v25 + 8 * v9);
      if ((v12 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v13 = v12 & (-2 << (v5 & 0x3F));
      if (v13)
      {
        v8 = __clz(__rbit64(v13)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = v9 << 6;
        v15 = v9 + 1;
        v16 = (v20 + 8 * v9);
        while (v15 < (v8 + 63) >> 6)
        {
          v18 = *v16++;
          v17 = v18;
          v14 += 64;
          ++v15;
          if (v18)
          {
            sub_E1798(v5, v7, 0);
            v8 = __clz(__rbit64(v17)) + v14;
            goto LABEL_18;
          }
        }

        sub_E1798(v5, v7, 0);
LABEL_18:
        a1 = v23;
      }

      v6 = v24 + 1;
      v5 = v8;
      if (v24 + 1 == v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}

void *sub_1B5904(unint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FB8, &unk_B02820);
  __chkstk_darwin();
  v5 = (&v34 - v4);
  v6 = type metadata accessor for Search.Item(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v46 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = &v34 - v9;
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v11 = 0;
    v44 = a1 & 0xFFFFFFFFFFFFFF8;
    v45 = a1 & 0xC000000000000001;
    v34 = a1;
    v42 = (v7 + 56);
    v40 = a1 + 32;
    v41 = (v7 + 48);
    v47 = _swiftEmptyArrayStorage;
    v37 = v5;
    v38 = a2;
    v35 = v7;
    v36 = v6;
    v43 = i;
    while (v45)
    {
      v12 = sub_361248(v11, v34);
      v13 = __OFADD__(v11++, 1);
      if (v13)
      {
        goto LABEL_28;
      }

LABEL_9:
      v48 = v12;
      v14 = [v48 identifiers];
      a1 = *a2;
      if ((*a2 & 0xC000000000000001) == 0)
      {
        if (*(a1 + 16))
        {
          sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);
          v19 = *(a1 + 40);

          v20 = sub_ABA780(v19);
          v21 = -1 << *(a1 + 32);
          v22 = v20 & ~v21;
          if ((*(a1 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
          {
            v23 = ~v21;
            while (1)
            {
              v24 = *(*(a1 + 48) + 8 * v22);
              v25 = sub_ABA790();

              if (v25)
              {
                break;
              }

              v22 = (v22 + 1) & v23;
              if (((*(a1 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
              {
                goto LABEL_17;
              }
            }

            v17 = v48;

            v18 = 1;
            v5 = v37;
            a2 = v38;
            v7 = v35;
            v6 = v36;
            goto LABEL_19;
          }

LABEL_17:

          v5 = v37;
          a2 = v38;
          v7 = v35;
          v6 = v36;
        }

LABEL_18:
        sub_1B0E0(&v49, v14);

        v17 = v48;
        *v5 = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v18 = 0;
        goto LABEL_19;
      }

      v15 = v14;
      v16 = sub_ABACA0();

      if ((v16 & 1) == 0)
      {
        goto LABEL_18;
      }

      v17 = v48;

      v18 = 1;
LABEL_19:
      (*v42)(v5, v18, 1, v6);

      v26 = (*v41)(v5, 1, v6) == 1;
      v27 = v43;
      if (v26)
      {
        sub_12E1C(v5, &qword_DF4FB8, &unk_B02820);
      }

      else
      {
        v28 = v39;
        sub_1D3168(v5, v39);
        sub_1D3168(v28, v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_6B884(0, v47[2] + 1, 1, v47);
        }

        v30 = v47[2];
        v29 = v47[3];
        a1 = v30 + 1;
        if (v30 >= v29 >> 1)
        {
          v47 = sub_6B884((v29 > 1), v30 + 1, 1, v47);
        }

        v31 = v46;
        v32 = v47;
        v47[2] = a1;
        sub_1D3168(v31, v32 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v30);
      }

      if (v11 == v27)
      {
        return v47;
      }
    }

    if (v11 >= *(v44 + 16))
    {
      goto LABEL_29;
    }

    v12 = *(v40 + 8 * v11);
    v13 = __OFADD__(v11++, 1);
    if (!v13)
    {
      goto LABEL_9;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void sub_1B5DCC(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_1BA50(&v10, *(*(a1 + 48) + ((v8 << 10) | (16 * v9)) + 8));
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

double sub_1B5EB4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

void *sub_1B5EF8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_361248(j, a3);
      }

      else
      {
        if (j >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}