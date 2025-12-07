void sub_100003250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003268(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = [MTRecencyUtil upNextForPodcastUuid:v2 excludeExplicit:0 ctx:*(a1 + 40)];

  v4 = [v3 episodeUuid];
  v5 = [*(a1 + 32) nextEpisodeUuid];
  v6 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) uuid];
    v8 = [v3 episodeUuid];
    [v3 modifiedDate];
    v14 = 138543874;
    v15 = v7;
    v16 = 2114;
    v17 = v8;
    v18 = 2050;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "UpNext result from update cursor position for podcast %{public}@: episodeUuid: %{public}@ at %{public}f", &v14, 0x20u);
  }

  v10 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v3 episodeUuid];
    v14 = 138543618;
    v15 = v5;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "UpNext result updating podcast nextEpisodeUuid from %{public}@ to %{public}@", &v14, 0x16u);
  }

  if (v5 != v4 && ([v5 isEqualToString:v4] & 1) == 0)
  {
    v12 = [*(a1 + 40) episodeForUuid:v4];
    v13 = [*(a1 + 40) episodeForUuid:v5];
    if ([v13 listenNowEpisode])
    {
      [v13 setListenNowEpisode:0];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    if (v12 && ([v12 listenNowEpisode] & 1) == 0)
    {
      [v12 setListenNowEpisode:1];
      *(*(*(a1 + 48) + 8) + 24) = 1;
      [v3 modifiedDate];
      [*(a1 + 32) setModifiedDate:?];
    }
  }

  if (*(a1 + 56) == 1 && *(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) saveInCurrentBlock];
  }
}

void sub_100003660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003678(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003690(uint64_t a1)
{
  v5 = [*(a1 + 32) podcastForFeedUrl:*(a1 + 40)];
  v2 = [v5 uuid];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100003858(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:kMTEpisodeEntityName];
  v3 = [*(a1 + 32) uuid];
  v4 = [MTEpisode predicateForEpisodesWithSeasonNumbersOnPodcastUuid:v3];
  [v2 setPredicate:v4];

  [v2 setFetchLimit:1];
  v5 = *(a1 + 40);
  v8 = 0;
  v6 = [v5 executeFetchRequest:v2 error:&v8];
  v7 = v8;
  *(*(*(a1 + 48) + 8) + 24) = [v6 count] != 0;

  [v7 logAndThrow:0];
}

uint64_t sub_100003C24(uint64_t a1, uint64_t a2)
{
  sub_100004600(&qword_100014C10, &qword_10000D078);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10000D010;
  *(v4 + 32) = (*(a2 + 8))(a1, a2);
  *(v4 + 40) = v5;
  (*(a2 + 16))(&v9, a1, a2);
  if (v10)
  {
    sub_10000485C(&v9, v11);
    v6 = v12;
    v7 = v13;
    sub_100004874(v11, v12);
    *&v9 = sub_100003C24(v6, v7);
    sub_1000048B8(v4);
    v4 = v9;
    sub_1000049AC(v11);
  }

  else
  {
    sub_1000047F4(&v9);
  }

  return v4;
}

id sub_100003D2C(char a1)
{
  v2 = v1;
  v4 = sub_100004600(&qword_1000149A0, &qword_10000D070);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = *v2;
  v8 = objc_allocWithZone(CLSContext);
  v9 = sub_10000B7A4();
  v10 = sub_10000B7A4();
  v11 = [v8 initWithType:v7 identifier:v9 title:v10];

  [v11 setAssignable:*(v2 + 40)];
  [v11 setDisplayOrder:v2[6]];
  v12 = type metadata accessor for CLSContextMetadata(0);
  sub_100004784(v2 + *(v12 + 36), v6);
  v13 = sub_10000B6E4();
  v14 = *(v13 - 8);
  v16 = 0;
  if ((*(v14 + 48))(v6, 1, v13) != 1)
  {
    sub_10000B6D4(v15);
    v16 = v17;
    (*(v14 + 8))(v6, v13);
  }

  [v11 setUniversalLinkURL:v16];

  if (a1)
  {
    v18 = (*(v2 + *(v12 + 40)))();
    [v11 setThumbnail:v18];
  }

  return v11;
}

void sub_100003F38(void *a1, int a2)
{
  v3 = v2;
  v56 = a2;
  v55 = type metadata accessor for CLSContextMetadata(0);
  v5 = __chkstk_darwin(v55);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v55 - v8);
  v10 = sub_10000B794();
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v55 - v14;
  v16 = sub_100004600(&qword_1000149A0, &qword_10000D070);
  __chkstk_darwin(v16 - 8);
  v18 = &v55 - v17;
  v19 = [a1 identifier];
  v20 = sub_10000B7B4();
  v22 = v21;

  if (v20 == *(v3 + 8) && v22 == *(v3 + 16))
  {
  }

  else
  {
    v23 = sub_10000B984();

    if ((v23 & 1) == 0)
    {
      sub_100004648();
      sub_10000B8E4();
      sub_100004694(v3, v7);
      v43 = a1;
      v44 = sub_10000B784();
      v45 = sub_10000B8A4();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v46 = 136315394;
        v47 = [v43 identifier];
        v48 = sub_10000B7B4();
        v50 = v49;

        v51 = sub_1000055F0(v48, v50, &v60);

        *(v46 + 4) = v51;
        *(v46 + 12) = 2080;
        v52 = *(v7 + 1);
        v53 = *(v7 + 2);

        sub_1000046F8(v7);
        v54 = sub_1000055F0(v52, v53, &v60);

        *(v46 + 14) = v54;
        _os_log_impl(&_mh_execute_header, v44, v45, "Unable to update context identifier from %s to %s", v46, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000046F8(v7);
      }

      (*(v57 + 8))(v13, v58);
      return;
    }
  }

  if ([a1 type] == *v3)
  {
    v24 = sub_10000B7A4();
    [a1 setTitle:v24];

    [a1 setAssignable:*(v3 + 40)];
    [a1 setDisplayOrder:*(v3 + 48)];
    v25 = v55;
    sub_100004784(v3 + *(v55 + 36), v18);
    v26 = sub_10000B6E4();
    v27 = *(v26 - 8);
    v29 = 0;
    if ((*(v27 + 48))(v18, 1, v26) != 1)
    {
      sub_10000B6D4(v28);
      v29 = v30;
      (*(v27 + 8))(v18, v26);
    }

    [a1 setUniversalLinkURL:v29];

    if (v56)
    {
      v31 = (*(v3 + *(v25 + 40)))();
      [a1 setThumbnail:v31];
    }
  }

  else
  {
    sub_100004648();
    sub_10000B8E4();
    sub_100004694(v3, v9);
    v32 = a1;
    v33 = sub_10000B784();
    v34 = sub_10000B8A4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v35 = 136315394;
      v59 = [v32 type];
      type metadata accessor for CLSContextType(0);
      v36 = sub_10000B7C4();
      v38 = sub_1000055F0(v36, v37, &v60);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2080;
      v59 = *v9;
      v39 = sub_10000B7C4();
      v41 = v40;
      sub_1000046F8(v9);
      v42 = sub_1000055F0(v39, v41, &v60);

      *(v35 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v33, v34, "Unable to update context type from %s to %s", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000046F8(v9);
    }

    (*(v57 + 8))(v15, v58);
  }
}

uint64_t type metadata accessor for CLSContextMetadata(uint64_t a1)
{
  result = qword_100014A18;
  if (!qword_100014A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004600(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100004648()
{
  result = qword_100014BD0;
  if (!qword_100014BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014BD0);
  }

  return result;
}

uint64_t sub_100004694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLSContextMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000046F8(uint64_t a1)
{
  v2 = type metadata accessor for CLSContextMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100004754@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100004784(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004600(&qword_1000149A0, &qword_10000D070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000047F4(uint64_t a1)
{
  v2 = sub_100004600(&qword_1000149A8, &qword_10000D080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000485C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100004874(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000048B8(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000081B8(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000049AC(void *a1)
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

__n128 sub_1000049F8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100004A08(uint64_t a1, int a2)
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

uint64_t sub_100004A28(uint64_t result, int a2, int a3)
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

uint64_t sub_100004A78(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004600(&qword_1000149A0, &qword_10000D070);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100004B48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004600(&qword_1000149A0, &qword_10000D070);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100004BF8(uint64_t a1)
{
  type metadata accessor for CLSContextType(319);
  if (v1 <= 0x3F)
  {
    sub_100004CD8(319);
    if (v2 <= 0x3F)
    {
      sub_100004D30();
      if (v3 <= 0x3F)
      {
        sub_100004D80(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100004CD8(uint64_t a1)
{
  if (!qword_100014A28)
  {
    sub_10000B6E4();
    v1 = sub_10000B8F4();
    if (!v2)
    {
      atomic_store(v1, &qword_100014A28);
    }
  }
}

unint64_t sub_100004D30()
{
  result = qword_100014A30;
  if (!qword_100014A30)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100014A30);
  }

  return result;
}

void sub_100004D80(uint64_t a1)
{
  if (!qword_100014A38)
  {
    sub_100004DE4(&unk_100014A40, qword_10000D0D8);
    v1 = sub_10000B8F4();
    if (!v2)
    {
      atomic_store(v1, &qword_100014A38);
    }
  }
}

uint64_t sub_100004DE4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_100004E40(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_100004E8C(uint64_t a1, uint64_t a2)
{
  sub_1000054D8(0, &qword_100014A98, NSPredicate_ptr);
  sub_100004600(&qword_100014AA0, &qword_10000D160);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10000D140;
  *(v5 + 56) = sub_1000054D8(0, &qword_100014AA8, NSString_ptr);
  *(v5 + 64) = sub_1000050BC(&qword_100014AB0, &qword_100014AA8, NSString_ptr);
  *(v5 + 32) = CLSPredicateKeyPathParent;
  *(v5 + 96) = sub_1000054D8(0, &unk_100014BE0, CLSContext_ptr);
  *(v5 + 104) = sub_1000050BC(&qword_100014AB8, &unk_100014BE0, CLSContext_ptr);
  *(v5 + 72) = v2;
  v6 = CLSPredicateKeyPathParent;
  v7 = v2;
  v8 = sub_10000B874();
  v9 = [objc_opt_self() shared];
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = a1;
  v10[4] = a2;
  v13[4] = sub_100005404;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100005410;
  v13[3] = &unk_1000109A0;
  v11 = _Block_copy(v13);
  v12 = v8;

  [v9 contextsMatchingPredicate:v12 completion:v11];
  _Block_release(v11);
}

uint64_t sub_1000050BC(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000054D8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000510C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8 = sub_10000B794();
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v28 = v9;
    sub_1000054D8(0, &qword_100014BD0, OS_os_log_ptr);
    swift_errorRetain();
    sub_10000B8E4();
    swift_errorRetain();
    v12 = a3;
    v13 = sub_10000B784();
    v14 = sub_10000B894();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v27 = a1;
      v16 = v15;
      v17 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = a2;
      v30 = v26;
      *v16 = 138412546;
      *(v16 + 4) = v12;
      *v17 = v12;
      *(v16 + 12) = 2080;
      swift_errorRetain();
      v18 = v12;
      sub_100004600(&qword_100014BC0, &qword_10000D200);
      v19 = sub_10000B7C4();
      v21 = sub_1000055F0(v19, v20, &v30);
      v25 = v8;
      v22 = a4;
      v23 = v21;

      *(v16 + 14) = v23;
      a4 = v22;
      _os_log_impl(&_mh_execute_header, v13, v14, "Error loading contexts for predicate %@ - %s", v16, 0x16u);
      sub_100005BA8(v17);

      sub_1000049AC(v26);

      a1 = v27;

      (*(v28 + 8))(v11, v25);
    }

    else
    {

      (*(v28 + 8))(v11, v8);
    }
  }

  return a4(a1);
}

uint64_t sub_1000053C4()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100005410(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_1000054D8(0, &unk_100014BE0, CLSContext_ptr);
  v5 = sub_10000B854();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1000054C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000054D8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100005520(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100005594(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1000055F0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1000055F0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000056BC(v11, 0, 0, 1, a1, a2);
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
    sub_100005C10(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000049AC(v11);
  return v7;
}

unint64_t sub_1000056BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000057C8(a5, a6);
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
    result = sub_10000B934();
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

char *sub_1000057C8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100005814(a1, a2);
  sub_100005944(&off_100010880);
  return v3;
}

char *sub_100005814(uint64_t a1, unint64_t a2)
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

  v6 = sub_100005A30(v5, 0);
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

  result = sub_10000B934();
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
        v10 = sub_10000B7E4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100005A30(v10, 0);
        result = sub_10000B914();
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

uint64_t sub_100005944(uint64_t result)
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

  result = sub_100005AA4(result, v11, 1, v3);
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

void *sub_100005A30(uint64_t a1, uint64_t a2)
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

  sub_100004600(&qword_100014AC8, &qword_10000D170);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100005AA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004600(&qword_100014AC8, &qword_10000D170);
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

_BYTE **sub_100005B98(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100005BA8(uint64_t a1)
{
  v2 = sub_100004600(&qword_100014AC0, &qword_10000D168);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005C10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005C70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100004600(&qword_1000149A0, &qword_10000D070);
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - v5;
  v7 = type metadata accessor for CLSContextMetadata(0);
  v42 = *(v7 - 1);
  v8 = __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v41 - v11;
  if (([objc_opt_self() isEmpty:{objc_msgSend(v1, "storeTrackId")}] & 1) != 0 || (v13 = objc_msgSend(v1, "title")) == 0)
  {
    v23 = *(v42 + 56);

    return v23(a1, 1, 1, v7);
  }

  else
  {
    v14 = v13;
    v41 = sub_10000B7B4();
    v16 = v15;

    v46[0] = [v2 storeTrackId];
    v17 = sub_10000B974();
    v19 = v18;
    v20 = [v2 podcast];
    v21 = v20;
    if (v20)
    {
      v20 = sub_1000054D8(0, &qword_100014C00, MTPodcast_ptr);
      v22 = &off_100010A10;
    }

    else
    {
      v22 = 0;
      v46[1] = 0;
      v46[2] = 0;
    }

    v46[0] = v21;
    v46[3] = v20;
    v46[4] = v22;
    v10[40] = 1;
    *(v10 + 6) = 0;
    v25 = v7[9];
    v26 = sub_10000B6E4();
    (*(*(v26 - 8) + 56))(&v10[v25], 1, 1, v26);
    v27 = &v10[v7[10]];
    *v27 = sub_100003C1C;
    v27[1] = 0;
    *&v10[v7[11]] = 0;
    *v10 = 14;
    *(v10 + 1) = v17;
    v28 = v41;
    *(v10 + 2) = v19;
    *(v10 + 3) = v28;
    *(v10 + 4) = v16;
    sub_1000065F4(v46, v43);
    v29 = v44;
    if (v44)
    {
      v30 = v45;
      sub_100004874(v43, v44);
      v29 = sub_100003C24(v29, v30);
      sub_1000047F4(v46);
      sub_1000049AC(v43);
    }

    else
    {
      sub_1000047F4(v46);
      sub_1000047F4(v43);
    }

    *&v10[v7[12]] = v29;
    sub_100006664(v10, v12);
    *(v12 + 6) = [v2 episodeNumber];
    sub_100006108(v6);
    sub_1000066C8(v6, &v12[v7[9]]);
    v31 = [v2 uuid];
    if (v31)
    {
      v32 = v31;
      v33 = sub_10000B7B4();
      v35 = v34;

      v36 = CLSContextThumbnailMaximumAllowedDimension;
      v37 = swift_allocObject();
      *(v37 + 16) = v33;
      *(v37 + 24) = v35;
      *(v37 + 32) = v36;
      *(v37 + 40) = v36;
      v38 = sub_100006770;
    }

    else
    {
      v38 = sub_100003C1C;
      v37 = 0;
    }

    v39 = &v12[v7[10]];

    *v39 = v38;
    *(v39 + 1) = v37;
    [v2 pubDate];
    *&v12[v7[11]] = v40;
    sub_100004694(v12, a1);
    (*(v42 + 56))(a1, 0, 1, v7);
    return sub_1000046F8(v12);
  }
}

uint64_t sub_100006108@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10000B794();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000B744();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = [v1 podcast];
  if (v15)
  {
    v16 = v15;
    [v15 storeCollectionId];

    sub_10000B714();
    sub_10000B734();
    [v2 storeTrackId];
    sub_10000B724();
    sub_10000B764();
    (*(v9 + 16))(v12, v14, v8);
    sub_10000B704();
    swift_allocObject();
    sub_10000B6F4();
    sub_10000B754();

    return (*(v9 + 8))(v14, v8);
  }

  else
  {
    sub_1000054D8(0, &qword_100014BD0, OS_os_log_ptr);
    sub_10000B8E4();
    v18 = v1;
    v19 = sub_10000B784();
    v20 = sub_10000B894();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = [v18 storeTrackId];

      _os_log_impl(&_mh_execute_header, v19, v20, "Unable to build share URL, unknown show for episode - %lld", v21, 0xCu);
    }

    else
    {

      v19 = v18;
    }

    (*(v5 + 8))(v7, v4);
    v22 = sub_10000B6E4();
    return (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
  }
}

id sub_100006480(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = objc_opt_self();
  v7 = sub_10000B7A4();
  v8 = [v6 artworkForEpisodeUuid:v7 size:0 triggerDownload:{a3, a4}];

  v9 = [v8 CGImage];
  return v9;
}

id sub_100006580@<X0>(void *a1@<X8>)
{
  result = [*v1 podcast];
  v4 = result;
  if (result)
  {
    result = sub_1000054D8(0, &qword_100014C00, MTPodcast_ptr);
    v5 = &off_100010A10;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t sub_1000065F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004600(&qword_1000149A8, &qword_10000D080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLSContextMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000066C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004600(&qword_1000149A0, &qword_10000D070);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006738()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000677C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10000B744();
  v52 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v47 - v8;
  v10 = sub_100004600(&qword_1000149A0, &qword_10000D070);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = type metadata accessor for CLSContextMetadata(0);
  v53 = *(v13 - 1);
  v14 = __chkstk_darwin(v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v47 - v17;
  if (([objc_opt_self() isEmpty:{objc_msgSend(v2, "storeCollectionId")}] & 1) != 0 || (v19 = objc_msgSend(v2, "title")) == 0)
  {
    v33 = *(v53 + 56);

    return v33(a1, 1, 1, v13);
  }

  else
  {
    v50 = v4;
    v51 = a1;
    v20 = v19;
    v21 = sub_10000B7B4();
    v48 = v22;
    v49 = v21;

    *&v57[0] = [v2 storeCollectionId];
    v23 = sub_10000B974();
    v25 = v24;
    v58 = 0;
    memset(v57, 0, sizeof(v57));
    v16[40] = 1;
    *(v16 + 6) = 0;
    v26 = v13[9];
    v27 = sub_10000B6E4();
    (*(*(v27 - 8) + 56))(&v16[v26], 1, 1, v27);
    v28 = &v16[v13[10]];
    *v28 = sub_100003C1C;
    v28[1] = 0;
    *&v16[v13[11]] = 0;
    *v16 = 0;
    *(v16 + 1) = v23;
    v29 = v48;
    v30 = v49;
    *(v16 + 2) = v25;
    *(v16 + 3) = v30;
    *(v16 + 4) = v29;
    sub_1000065F4(v57, v54);
    v31 = v55;
    if (v55)
    {
      v32 = v56;
      sub_100004874(v54, v55);
      v31 = sub_100003C24(v31, v32);
      sub_1000047F4(v57);
      sub_1000049AC(v54);
    }

    else
    {
      sub_1000047F4(v57);
      sub_1000047F4(v54);
    }

    v35 = v50;
    *&v16[v13[12]] = v31;
    sub_100006664(v16, v18);
    v18[40] = 0;
    sub_10000B714();
    [v2 storeCollectionId];
    sub_10000B734();
    sub_10000B764();
    v36 = v52;
    (*(v52 + 16))(v7, v9, v35);
    sub_10000B704();
    swift_allocObject();
    sub_10000B6F4();
    sub_10000B754();

    (*(v36 + 8))(v9, v35);
    sub_1000066C8(v12, &v18[v13[9]]);
    v37 = [v2 uuid];
    if (v37)
    {
      v38 = v37;
      v39 = sub_10000B7B4();
      v41 = v40;

      v42 = CLSContextThumbnailMaximumAllowedDimension;
      v43 = swift_allocObject();
      *(v43 + 16) = v39;
      *(v43 + 24) = v41;
      *(v43 + 32) = v42;
      *(v43 + 40) = v42;
      v44 = sub_100006E44;
    }

    else
    {
      v44 = sub_100003C1C;
      v43 = 0;
    }

    v45 = &v18[v13[10]];

    *v45 = v44;
    *(v45 + 1) = v43;
    v46 = v51;
    sub_100004694(v18, v51);
    (*(v53 + 56))(v46, 0, 1, v13);
    return sub_1000046F8(v18);
  }
}

id sub_100006CFC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = objc_opt_self();
  v7 = sub_10000B7A4();
  v8 = [v6 artworkForPodcastUuid:v7 size:0 triggerDownload:{a3, a4}];

  v9 = [v8 CGImage];
  return v9;
}

double sub_100006DFC@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_100006E0C()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_100006EDC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_10000B6C4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_100006F40(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100006FD0(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 setFetchBatchSize:10];
  v14 = 0;
  v15 = 0;
  v7 = swift_allocObject();
  v7[2] = &v14;
  v7[3] = v3;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = a3;
  v7[7] = &v15;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10000B3C0;
  *(v8 + 24) = v7;
  v13[4] = sub_10000B3E4;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000080CC;
  v13[3] = &unk_100010B48;
  v9 = _Block_copy(v13);
  v10 = v3;
  v11 = a1;

  [v10 performBlockAndWait:v9];
  _Block_release(v9);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    if (v15)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
      a3 = v14;
    }

    return a3;
  }

  return result;
}

uint64_t sub_1000071B4(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 setFetchBatchSize:10];
  v14 = 0;
  v15 = 0;
  v7 = swift_allocObject();
  v7[2] = &v14;
  v7[3] = v3;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = a3;
  v7[7] = &v15;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10000B534;
  *(v8 + 24) = v7;
  v13[4] = sub_10000B6AC;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000080CC;
  v13[3] = &unk_100010C60;
  v9 = _Block_copy(v13);
  v10 = v3;
  v11 = a1;

  [v10 performBlockAndWait:v9];
  _Block_release(v9);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    if (v15)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
      a3 = v14;
    }

    return a3;
  }

  return result;
}

uint64_t sub_100007398(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 setFetchBatchSize:10];
  v14 = 0;
  v15 = 0;
  v7 = swift_allocObject();
  v7[2] = &v14;
  v7[3] = v3;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = a3;
  v7[7] = &v15;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10000B4AC;
  *(v8 + 24) = v7;
  v13[4] = sub_10000B6AC;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000080CC;
  v13[3] = &unk_100010BE8;
  v9 = _Block_copy(v13);
  v10 = v3;
  v11 = a1;

  [v10 performBlockAndWait:v9];
  _Block_release(v9);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    if (v15)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
      a3 = v14;
    }

    return a3;
  }

  return result;
}

void sub_10000757C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 uuid];
  if (v3)
  {
    v4 = v3;
    v5 = sub_10000B7B4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_100007604(unint64_t a1, uint64_t a2, void *a3)
{
  v24 = a3;
  v26 = a1;
  v4 = type metadata accessor for CLSContextMetadata(0) - 8;
  result = __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = *(v6 + 72);
    v25 = xmmword_10000D010;
    do
    {
      v17 = sub_100004694(v10, v8);
      __chkstk_darwin(v17);
      *(&v23 - 2) = v8;
      v18 = sub_1000079AC(sub_10000B2E0, (&v23 - 4), v26);
      if (v18)
      {
        v19 = v18;
        sub_100003F38(v18, 0);
        v20 = sub_10000B884();
        sub_100004600(&qword_100014AA0, &qword_10000D160);
        v21 = swift_allocObject();
        *(v21 + 16) = v25;
        *(v21 + 56) = sub_1000054D8(0, &unk_100014BE0, CLSContext_ptr);
        *(v21 + 64) = sub_10000B300();
        *(v21 + 32) = v19;
        sub_1000054D8(0, &qword_100014BD0, OS_os_log_ptr);
        v22 = v19;
        v15 = sub_10000B8D4();
        sub_10000B774(v20, &_mh_execute_header, v15, "Updated context - %@", 20, 2, v21);
      }

      else
      {
        v12 = sub_100003D2C(0);
        v13 = sub_10000B884();
        sub_100004600(&qword_100014AA0, &qword_10000D160);
        v14 = swift_allocObject();
        *(v14 + 16) = v25;
        *(v14 + 56) = sub_1000054D8(0, &unk_100014BE0, CLSContext_ptr);
        *(v14 + 64) = sub_10000B300();
        *(v14 + 32) = v12;
        sub_1000054D8(0, &qword_100014BD0, OS_os_log_ptr);
        v15 = v12;
        v16 = sub_10000B8D4();
        sub_10000B774(v13, &_mh_execute_header, v16, "Built context - %@", 18, 2, v14);

        [v24 addChildContext:v15];
      }

      result = sub_1000046F8(v8);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_100007910(id *a1, uint64_t a2)
{
  v3 = [*a1 identifier];
  v4 = sub_10000B7B4();
  v6 = v5;

  if (v4 == *(a2 + 8) && v6 == *(a2 + 16))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10000B984();
  }

  return v8 & 1;
}

void *sub_1000079AC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10000B954())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_10000B924();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
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

id sub_100007B00(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ContextRequestHandler();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100007B58(uint64_t *a1, void *a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, id))
{
  sub_1000054D8(0, &qword_100014C00, MTPodcast_ptr);
  v7 = sub_10000B8B4();
  v8 = v7;
  v22 = a1;
  v23 = a2;
  v9 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
LABEL_21:
    v10 = sub_10000B954();
  }

  else
  {
    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  v24 = &_swiftEmptyArrayStorage;
  while (v10 != v11)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = sub_10000B924();
    }

    else
    {
      if (v11 >= *(v9 + 16))
      {
        goto LABEL_20;
      }

      v12 = *(v8 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    a4(&v25, v12);

    v15 = v26;
    ++v11;
    if (v26)
    {
      v20 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1000081B8(0, *(v24 + 2) + 1, 1, v24);
      }

      v17 = *(v24 + 2);
      v16 = *(v24 + 3);
      v21 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v24 = sub_1000081B8((v16 > 1), v21, 1, v24);
      }

      *(v24 + 2) = v21;
      v18 = &v24[16 * v17];
      *(v18 + 4) = v20;
      *(v18 + 5) = v15;
      v11 = v14;
    }
  }

  *v22 = v24;

  return [v23 reset];
}

id sub_100007D64(uint64_t *a1, void *a2, uint64_t a3, void (*a4)(id), uint64_t a5, uint64_t a6, unint64_t *a7, void *a8)
{
  v44 = a4;
  v45 = a5;
  v37 = a1;
  v11 = sub_100004600(&qword_100014BF8, &qword_10000D208);
  __chkstk_darwin(v11 - 8);
  v13 = &v35 - v12;
  v14 = type metadata accessor for CLSContextMetadata(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v35 - v19;
  sub_1000054D8(0, a7, a8);
  v21 = sub_10000B8B4();
  v22 = v21;
  v38 = v20;
  v39 = v15;
  v42 = v14;
  v43 = v18;
  if (v21 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10000B954())
  {
    v36 = a2;
    if (!i)
    {
      break;
    }

    v24 = 0;
    v40 = v22 & 0xFFFFFFFFFFFFFF8;
    v41 = v22 & 0xC000000000000001;
    v25 = (v39 + 48);
    v26 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v41)
      {
        v27 = sub_10000B924();
      }

      else
      {
        if (v24 >= *(v40 + 16))
        {
          goto LABEL_21;
        }

        v27 = *(v22 + 8 * v24 + 32);
      }

      v28 = v27;
      v29 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        break;
      }

      a2 = i;
      v44(v27);

      if ((*v25)(v13, 1, v42) == 1)
      {
        sub_10000B40C(v13, &qword_100014BF8, &qword_10000D208);
      }

      else
      {
        v30 = v38;
        sub_100006664(v13, v38);
        sub_100006664(v30, v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1000082C4(0, v26[2] + 1, 1, v26);
        }

        v32 = v26[2];
        v31 = v26[3];
        v33 = v43;
        if (v32 >= v31 >> 1)
        {
          v26 = sub_1000082C4((v31 > 1), v32 + 1, 1, v26);
          v33 = v43;
        }

        v26[2] = v32 + 1;
        sub_100006664(v33, v26 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v32);
      }

      ++v24;
      i = a2;
      if (v29 == a2)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v26 = &_swiftEmptyArrayStorage;
LABEL_19:

  *v37 = v26;

  return [v36 reset];
}

Swift::Int sub_1000080FC()
{
  sub_10000B9D4();
  sub_10000B9E4(0);
  return sub_10000B9F4();
}

Swift::Int sub_100008168(uint64_t a1)
{
  sub_10000B9D4();
  sub_10000B9E4(0);
  return sub_10000B9F4();
}

char *sub_1000081B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004600(&qword_100014C10, &qword_10000D078);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000082C4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004600(&qword_100014C08, &unk_10000D210);
  v10 = *(type metadata accessor for CLSContextMetadata(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for CLSContextMetadata(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10000849C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004600(&qword_100014C20, &qword_10000D228);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unsigned __int8 *sub_1000085A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_10000B834();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100009CA8(result, v5);
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
      result = sub_10000B934();
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

Swift::Int sub_100008B2C(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_10000B964(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for CLSContextMetadata(0);
        v6 = sub_10000B864();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for CLSContextMetadata(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100008E60(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100008C58(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100008C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for CLSContextMetadata(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v30 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v30 - v17;
  v32 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v31 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v36 = a3;
    v33 = v24;
    v34 = v23;
    v25 = v23;
    v35 = v21;
    while (1)
    {
      sub_100004694(v24, v18);
      sub_100004694(v21, v14);
      v26 = *(v8 + 44);
      v27 = *&v18[v26];
      v28 = *&v14[v26];
      sub_1000046F8(v14);
      result = sub_1000046F8(v18);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v36 + 1;
        v21 = v35 + v31;
        v23 = v34 - 1;
        v24 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      sub_100006664(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_100006664(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100008E60(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v110 = a1;
  v9 = type metadata accessor for CLSContextMetadata(0);
  v117 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v112 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v120 = &v105 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v105 - v15;
  result = __chkstk_darwin(v14);
  v19 = &v105 - v18;
  v119 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = &_swiftEmptyArrayStorage;
LABEL_94:
    v5 = *v110;
    if (!*v110)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_100009BB0(v22);
      v22 = result;
    }

    v122 = v22;
    v101 = *(v22 + 2);
    if (v101 >= 2)
    {
      while (*v119)
      {
        v102 = *&v22[16 * v101];
        v103 = *&v22[16 * v101 + 24];
        sub_1000096B0(*v119 + *(v117 + 72) * v102, *v119 + *(v117 + 72) * *&v22[16 * v101 + 16], *v119 + *(v117 + 72) * v103, v5);
        if (v6)
        {
        }

        if (v103 < v102)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_100009BB0(v22);
        }

        if (v101 - 2 >= *(v22 + 2))
        {
          goto LABEL_120;
        }

        v104 = &v22[16 * v101];
        *v104 = v102;
        *(v104 + 1) = v103;
        v122 = v22;
        result = sub_100009B24(v101 - 1);
        v22 = v122;
        v101 = *(v122 + 2);
        if (v101 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v121 = result;
  v108 = a4;
  v21 = 0;
  v22 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    if (v24 >= v20)
    {
      v20 = v24;
    }

    else
    {
      v25 = *v119;
      v26 = *(v117 + 72);
      v5 = *v119 + v26 * v24;
      sub_100004694(v5, v19);
      sub_100004694(v25 + v26 * v23, v16);
      v27 = *(v121 + 44);
      v28 = *&v19[v27];
      v29 = *&v16[v27];
      sub_1000046F8(v16);
      result = sub_1000046F8(v19);
      v109 = v23;
      v30 = v23 + 2;
      v118 = v26;
      v31 = v25 + v26 * v30;
      while (v20 != v30)
      {
        sub_100004694(v31, v19);
        sub_100004694(v5, v16);
        v32 = *(v121 + 44);
        v33 = *&v19[v32];
        v34 = *&v16[v32];
        sub_1000046F8(v16);
        result = sub_1000046F8(v19);
        ++v30;
        v31 += v118;
        v5 += v118;
        if (v28 < v29 == v33 >= v34)
        {
          v20 = v30 - 1;
          break;
        }
      }

      v23 = v109;
      if (v28 < v29)
      {
        if (v20 < v109)
        {
          goto LABEL_123;
        }

        if (v109 < v20)
        {
          v106 = v22;
          v107 = v6;
          v35 = v118 * (v20 - 1);
          v36 = v20 * v118;
          v116 = v20;
          v37 = v20;
          v38 = v109;
          v39 = v109 * v118;
          do
          {
            if (v38 != --v37)
            {
              v5 = *v119;
              if (!*v119)
              {
                goto LABEL_129;
              }

              sub_100006664(v5 + v39, v112);
              if (v39 < v35 || v5 + v39 >= v5 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v39 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_100006664(v112, v5 + v35);
            }

            ++v38;
            v35 -= v118;
            v36 -= v118;
            v39 += v118;
          }

          while (v38 < v37);
          v22 = v106;
          v6 = v107;
          v23 = v109;
          v20 = v116;
        }
      }
    }

    v40 = v119[1];
    if (v20 < v40)
    {
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_122;
      }

      if (v20 - v23 < v108)
      {
        if (__OFADD__(v23, v108))
        {
          goto LABEL_124;
        }

        if (v23 + v108 >= v40)
        {
          v41 = v119[1];
        }

        else
        {
          v41 = v23 + v108;
        }

        if (v41 < v23)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v20 != v41)
        {
          break;
        }
      }
    }

    v42 = v20;
    if (v20 < v23)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000849C(0, *(v22 + 2) + 1, 1, v22);
      v22 = result;
    }

    v44 = *(v22 + 2);
    v43 = *(v22 + 3);
    v5 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_10000849C((v43 > 1), v44 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v45 = &v22[16 * v44];
    *(v45 + 4) = v23;
    *(v45 + 5) = v42;
    v46 = *v110;
    if (!*v110)
    {
      goto LABEL_131;
    }

    v113 = v42;
    if (v44)
    {
      while (1)
      {
        v47 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v48 = *(v22 + 4);
          v49 = *(v22 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_52:
          if (v51)
          {
            goto LABEL_110;
          }

          v64 = &v22[16 * v5];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_113;
          }

          v70 = &v22[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_117;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v74 = &v22[16 * v5];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_66:
        if (v69)
        {
          goto LABEL_112;
        }

        v77 = &v22[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_115;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_73:
        v85 = v47 - 1;
        if (v47 - 1 >= v5)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*v119)
        {
          goto LABEL_128;
        }

        v86 = *&v22[16 * v85 + 32];
        v5 = *&v22[16 * v47 + 40];
        sub_1000096B0(*v119 + *(v117 + 72) * v86, *v119 + *(v117 + 72) * *&v22[16 * v47 + 32], *v119 + *(v117 + 72) * v5, v46);
        if (v6)
        {
        }

        if (v5 < v86)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_100009BB0(v22);
        }

        if (v85 >= *(v22 + 2))
        {
          goto LABEL_107;
        }

        v87 = &v22[16 * v85];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        v122 = v22;
        result = sub_100009B24(v47);
        v22 = v122;
        v5 = *(v122 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v22[16 * v5 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_108;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_109;
      }

      v59 = &v22[16 * v5];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_111;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_114;
      }

      if (v63 >= v55)
      {
        v81 = &v22[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_118;
        }

        if (v50 < v84)
        {
          v47 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = v119[1];
    v21 = v113;
    if (v113 >= v20)
    {
      goto LABEL_94;
    }
  }

  v106 = v22;
  v107 = v6;
  v88 = *v119;
  v89 = *(v117 + 72);
  v90 = *v119 + v89 * (v20 - 1);
  v91 = v23;
  v92 = -v89;
  v109 = v91;
  v93 = v91 - v20;
  v111 = v89;
  v5 = v88 + v20 * v89;
  v113 = v41;
LABEL_85:
  v115 = v93;
  v116 = v20;
  v114 = v5;
  v118 = v90;
  v94 = v90;
  v95 = v121;
  while (1)
  {
    sub_100004694(v5, v19);
    sub_100004694(v94, v16);
    v96 = *(v95 + 44);
    v97 = *&v19[v96];
    v98 = *&v16[v96];
    sub_1000046F8(v16);
    result = sub_1000046F8(v19);
    if (v97 >= v98)
    {
LABEL_84:
      v20 = v116 + 1;
      v90 = v118 + v111;
      v93 = v115 - 1;
      v42 = v113;
      v5 = v114 + v111;
      if (v116 + 1 != v113)
      {
        goto LABEL_85;
      }

      v22 = v106;
      v6 = v107;
      v23 = v109;
      if (v113 < v109)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v88)
    {
      break;
    }

    v99 = v120;
    sub_100006664(v5, v120);
    v95 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_100006664(v99, v94);
    v94 += v92;
    v5 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000096B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = type metadata accessor for CLSContextMetadata(0);
  v8 = __chkstk_darwin(v47);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = &v41 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v50 = a1;
  v49 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v44 = v26;
      v45 = a4;
      do
      {
        v42 = v25;
        v28 = a2 + v26;
        while (1)
        {
          if (a2 <= a1)
          {
            v50 = a2;
            v25 = v42;
            goto LABEL_57;
          }

          v30 = a3;
          v43 = v25;
          a3 += v26;
          v31 = v27 + v26;
          sub_100004694(v31, v12);
          v32 = v28;
          v33 = v28;
          v34 = v12;
          v35 = v46;
          sub_100004694(v33, v46);
          v36 = *(v47 + 44);
          v37 = *(v34 + v36);
          v38 = *(v35 + v36);
          v39 = v35;
          v12 = v34;
          sub_1000046F8(v39);
          sub_1000046F8(v34);
          if (v37 < v38)
          {
            break;
          }

          v25 = v31;
          if (v30 < v27 || a3 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v31;
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
              v25 = v31;
            }
          }

          v27 = v25;
          v29 = v31 > v45;
          v26 = v44;
          if (!v29)
          {
            goto LABEL_55;
          }
        }

        if (v30 < a2 || a3 >= a2)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v44;
        }

        else
        {
          v40 = v30 == a2;
          a2 = v32;
          v26 = v44;
          if (!v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v25 = v43;
      }

      while (v27 > v45);
    }

LABEL_55:
    v50 = a2;
LABEL_57:
    v48 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v48 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        sub_100004694(a2, v12);
        v21 = v46;
        sub_100004694(a4, v46);
        v22 = *(v47 + 44);
        v23 = *&v12[v22];
        v24 = *(v21 + v22);
        sub_1000046F8(v21);
        sub_1000046F8(v12);
        if (v23 >= v24)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v50 = a1;
      }

      while (a4 < v19 && a2 < a3);
    }
  }

  sub_100009BC4(&v50, &v49, &v48);
  return 1;
}

uint64_t sub_100009B24(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100009BB0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100009BC4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for CLSContextMetadata(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_100009CA8(uint64_t a1, unint64_t a2)
{
  v2 = sub_10000B844();
  v6 = sub_100009D28(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100009D28(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_10000B904();
    if (!v9 || (v10 = v9, v11 = sub_100005A30(v9, 0), v12 = sub_100009E80(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_10000B7D4();

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
      return sub_10000B7D4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_10000B934();
LABEL_4:

  return sub_10000B7D4();
}

unint64_t sub_100009E80(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_10000A0A0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_10000B814();
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
          result = sub_10000B934();
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

    result = sub_10000A0A0(v12, a6, a7);
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

    result = sub_10000B7F4();
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

unint64_t sub_10000A0A0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_10000B824();
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
    v5 = sub_10000B804();
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

void *sub_10000A11C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000A13C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000A13C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004600(&qword_100014C08, &unk_10000D210);
  v10 = *(type metadata accessor for CLSContextMetadata(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for CLSContextMetadata(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10000A328()
{
  v1 = objc_opt_self();
  if ([v1 canExtensionOpenDatabase])
  {
    v2 = [v1 sharedInstance];
    v3 = [v2 resetableImportContext];

    v4 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
    v5 = [objc_opt_self() predicateForNotHiddenNotImplicitlyFollowedPodcasts];
    [v4 setPredicate:v5];

    v0 = sub_100006FD0(v4, sub_100006FAC, 0);
  }

  else
  {
    sub_10000B368();
    swift_allocError();
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_10000A47C(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
  v5 = [objc_opt_self() predicateForPodcastStoreId:a1];
  [v4 setPredicate:v5];

  v6 = sub_1000071B4(v4, sub_10000757C, 0);
  if (!v1)
  {
    if (v6)
    {
      if (*(v6 + 16))
      {
        v2 = *(v6 + 32);

        return v2;
      }
    }

    return 0;
  }

  return v2;
}

id sub_10000A594(uint64_t a1)
{
  v4 = objc_opt_self();
  if ([v4 canExtensionOpenDatabase])
  {
    v2 = [v4 sharedInstance];
    v5 = [v2 resetableImportContext];

    sub_10000A47C(a1);
    if (v1)
    {
    }

    else if (v6)
    {
      v8 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
      v9 = objc_opt_self();
      v10 = sub_10000B7A4();

      v11 = [v9 predicateForUserEpisodesOnPodcastUuid:v10 ctx:v5];

      [v8 setPredicate:v11];
      v2 = sub_100007398(v8, sub_1000075E0, 0);
    }

    else
    {

      return 0;
    }
  }

  else
  {
    sub_10000B368();
    swift_allocError();
    swift_willThrow();
  }

  return v2;
}

void *sub_10000A75C(void *a1)
{
  v2 = v1;
  v65 = sub_100004600(&qword_100014C18, &qword_10000D220);
  v4 = __chkstk_darwin(v65);
  v64 = (v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v63 = v58 - v6;
  v7 = type metadata accessor for CLSContextMetadata(0);
  v66 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 identifier];
  v11 = sub_10000B7B4();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  v15 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
  }

  if ((v13 & 0x1000000000000000) != 0)
  {
    v69 = 0;
    v19 = sub_1000085A0(v11, v13, 10);
    v37 = v57;
    goto LABEL_63;
  }

  if ((v13 & 0x2000000000000000) != 0)
  {
    v67 = v11;
    v68 = v13 & 0xFFFFFFFFFFFFFFLL;
    if (v11 == 43)
    {
      if (v14)
      {
        if (--v14)
        {
          v19 = 0;
          v29 = &v67 + 1;
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              break;
            }

            v31 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              break;
            }

            v19 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              break;
            }

            ++v29;
            if (!--v14)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_86:
      __break(1u);
LABEL_87:
      v2 = sub_10000A314(v2);
      goto LABEL_67;
    }

    if (v11 != 45)
    {
      if (v14)
      {
        v19 = 0;
        v34 = &v67;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          v36 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v36 + v35;
          if (__OFADD__(v36, v35))
          {
            break;
          }

          v34 = (v34 + 1);
          if (!--v14)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v14)
    {
      if (--v14)
      {
        v19 = 0;
        v23 = &v67 + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v25 - v24;
          if (__OFSUB__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v14)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_84;
  }

  if ((v11 & 0x1000000000000000) != 0)
  {
    v17 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v17 = sub_10000B934();
  }

  v18 = *v17;
  if (v18 == 43)
  {
    if (v15 < 1)
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v14 = v15 - 1;
    if (v15 != 1)
    {
      v19 = 0;
      if (v17)
      {
        v26 = v17 + 1;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            goto LABEL_61;
          }

          v28 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            goto LABEL_61;
          }

          v19 = v28 + v27;
          if (__OFADD__(v28, v27))
          {
            goto LABEL_61;
          }

          ++v26;
          if (!--v14)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_53;
    }

LABEL_61:
    v19 = 0;
    LOBYTE(v14) = 1;
    goto LABEL_62;
  }

  if (v18 != 45)
  {
    if (v15)
    {
      v19 = 0;
      if (v17)
      {
        while (1)
        {
          v32 = *v17 - 48;
          if (v32 > 9)
          {
            goto LABEL_61;
          }

          v33 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            goto LABEL_61;
          }

          v19 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            goto LABEL_61;
          }

          ++v17;
          if (!--v15)
          {
            goto LABEL_53;
          }
        }
      }

      goto LABEL_53;
    }

    goto LABEL_61;
  }

  if (v15 < 1)
  {
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v14 = v15 - 1;
  if (v15 == 1)
  {
    goto LABEL_61;
  }

  v19 = 0;
  if (v17)
  {
    v20 = v17 + 1;
    while (1)
    {
      v21 = *v20 - 48;
      if (v21 > 9)
      {
        goto LABEL_61;
      }

      v22 = 10 * v19;
      if ((v19 * 10) >> 64 != (10 * v19) >> 63)
      {
        goto LABEL_61;
      }

      v19 = v22 - v21;
      if (__OFSUB__(v22, v21))
      {
        goto LABEL_61;
      }

      ++v20;
      if (!--v14)
      {
        goto LABEL_62;
      }
    }
  }

LABEL_53:
  LOBYTE(v14) = 0;
LABEL_62:
  v69 = v14;
  v37 = v14;
LABEL_63:

  if (v37)
  {
    return result;
  }

  result = sub_10000A594(v19);
  if (v1)
  {
    return result;
  }

  v2 = result;
  if (!result)
  {
    return result;
  }

  v58[0] = a1;
  v11 = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_87;
  }

LABEL_67:
  v39 = v2[2];
  v62 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v61 = v2 + v62;
  v67 = (v2 + v62);
  v68 = v39;
  sub_100008B2C(&v67);
  v58[1] = v11;
  v40 = v2[2];
  if (v40)
  {
    v67 = &_swiftEmptyArrayStorage;
    sub_10000A11C(0, v40, 0);
    v41 = 0;
    v42 = v67;
    v43 = v2[2];
    v59 = v2;
    v60 = v43;
    while (v60 != v41)
    {
      if (v41 >= v2[2])
      {
        goto LABEL_79;
      }

      v44 = v65;
      v45 = *(v65 + 48);
      v46 = *(v66 + 72);
      v47 = v9;
      v48 = v63;
      sub_100004694(&v61[v46 * v41], &v63[v45]);
      v49 = v64;
      *v64 = v41;
      v50 = *(v44 + 48);
      v51 = &v48[v45];
      v9 = v47;
      sub_100006664(v51, v49 + v50);
      sub_100004694(v49 + v50, v47);
      *(v47 + 48) = v41;
      sub_10000B40C(v49, &qword_100014C18, &qword_10000D220);
      v67 = v42;
      v53 = v42[2];
      v52 = v42[3];
      if (v53 >= v52 >> 1)
      {
        sub_10000A11C((v52 > 1), v53 + 1, 1);
        v42 = v67;
      }

      ++v41;
      v42[2] = v53 + 1;
      sub_100006664(v47, v42 + v62 + v53 * v46);
      v2 = v59;
      if (v40 == v41)
      {

        goto LABEL_76;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
  }

  v42 = &_swiftEmptyArrayStorage;
LABEL_76:
  v54 = swift_allocObject();
  v55 = v58[0];
  *(v54 + 16) = v42;
  *(v54 + 24) = v55;
  v56 = v55;
  sub_100004E8C(sub_10000B6C0, v54);
}

void sub_10000AD88(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [a1 identifierPath];
  v8 = sub_10000B854();

  v9 = *(v8 + 16);

  if (v9 == 2)
  {
    sub_10000A75C(a1);
    if (v3)
    {
      return;
    }

    v18 = [objc_opt_self() shared];
    v25 = a2;
    v26 = a3;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v19 = &unk_100010A80;
  }

  else
  {
    if (v9 != 1)
    {
      return;
    }

    sub_1000054D8(0, &qword_100014BD8, NSObject_ptr);
    v10 = objc_opt_self();
    v11 = [v10 shared];
    v12 = [v11 mainAppContext];

    v13 = sub_10000B8C4();
    if (v13)
    {
      v14 = sub_10000A328();
      if (v3)
      {
        return;
      }

      if (v14)
      {
        v15 = v14;
        v16 = swift_allocObject();
        *(v16 + 16) = v15;
        *(v16 + 24) = a1;
        v17 = a1;
        sub_100004E8C(sub_10000B2D8, v16);
      }
    }

    v18 = [v10 shared];
    v25 = a2;
    v26 = a3;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v19 = &unk_100010AA8;
  }

  v23 = sub_100006F40;
  v24 = v19;
  v20 = _Block_copy(&v21);

  [v18 saveWithCompletion:{v20, v21, v22}];
  _Block_release(v20);
}

uint64_t sub_10000B024(void *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  sub_10000AD88(a1, sub_10000B260, v4);
  a2[2](a2, 0);
}

uint64_t sub_10000B228()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10000B268()
{
  result = qword_100014BC8;
  if (!qword_100014BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014BC8);
  }

  return result;
}

uint64_t sub_10000B2BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000B300()
{
  result = qword_100014AB8;
  if (!qword_100014AB8)
  {
    sub_1000054D8(255, &unk_100014BE0, CLSContext_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014AB8);
  }

  return result;
}

unint64_t sub_10000B368()
{
  result = qword_100014BF0;
  if (!qword_100014BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014BF0);
  }

  return result;
}

uint64_t sub_10000B40C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004600(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000B46C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B4EC()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t getEnumTagSinglePayload for ClassKitError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ClassKitError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10000B634()
{
  result = qword_100014C30;
  if (!qword_100014C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014C30);
  }

  return result;
}