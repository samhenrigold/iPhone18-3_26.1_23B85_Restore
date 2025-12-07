void sub_100003298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000032B0(uint64_t a1)
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

void sub_1000036A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000036C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000036D8(uint64_t a1)
{
  v5 = [*(a1 + 32) podcastForFeedUrl:*(a1 + 40)];
  v2 = [v5 uuid];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000038A0(uint64_t a1)
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

uint64_t sub_100003D3C@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v44 = sub_100004224(&qword_10000C620, &qword_100005960);
  __chkstk_darwin(v44);
  v43 = &v30 - v1;
  v42 = sub_100004634();
  v47 = *(v42 - 8);
  v2 = __chkstk_darwin(v42);
  v41 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v30 - v4;
  v33 = &v30 - v4;
  v40 = sub_100004674();
  v46 = *(v40 - 8);
  v6 = __chkstk_darwin(v40);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  v36 = &v30 - v9;
  v11 = sub_100004654();
  v39 = *(v11 - 8);
  v12 = v39;
  v13 = __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v30 - v16;
  v38 = &v30 - v16;
  sub_100004644();
  sub_100004664();
  sub_100004624();
  v32 = *(v12 + 16);
  v37 = v15;
  v34 = v11;
  v32(v15, v17, v11);
  v31 = *(v46 + 16);
  v35 = v8;
  v18 = v40;
  v31(v8, v10, v40);
  v30 = *(v47 + 16);
  v19 = v41;
  v20 = v5;
  v21 = v42;
  v30(v41, v20, v42);
  v22 = v43;
  v32(v43, v15, v11);
  v23 = v44;
  v31(&v22[*(v44 + 48)], v8, v18);
  v30(&v22[*(v23 + 64)], v19, v21);
  sub_100004604();
  v24 = *(v47 + 8);
  v25 = v21;
  v24(v33, v21);
  v26 = *(v46 + 8);
  v26(v36, v18);
  v27 = *(v39 + 8);
  v28 = v34;
  v27(v38, v34);
  v24(v19, v25);
  v26(v35, v18);
  return (v27)(v37, v28);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000041A4();
  sub_100004614();
  return 0;
}

unint64_t sub_1000041A4()
{
  result = qword_10000C618;
  if (!qword_10000C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C618);
  }

  return result;
}

uint64_t sub_100004224(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100004270()
{
  result = qword_10000C628;
  if (!qword_10000C628)
  {
    sub_1000042D4(&qword_10000C630, &qword_100005968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C628);
  }

  return result;
}

uint64_t sub_1000042D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000431C()
{
  sub_100004224(&qword_10000C638, qword_1000059D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100005970;
  v1 = sub_1000045F4();
  result = sub_100004568();
  *(v0 + 32) = v1;
  *(v0 + 40) = result;
  static WidgetAppIntentsPackage.includedPackages = v0;
  return result;
}

uint64_t *WidgetAppIntentsPackage.includedPackages.unsafeMutableAddressor()
{
  if (qword_10000C610 != -1)
  {
    swift_once();
  }

  return &static WidgetAppIntentsPackage.includedPackages;
}

uint64_t static WidgetAppIntentsPackage.includedPackages.getter()
{
  if (qword_10000C610 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static WidgetAppIntentsPackage.includedPackages.setter(uint64_t a1)
{
  if (qword_10000C610 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static WidgetAppIntentsPackage.includedPackages = a1;
}

uint64_t (*static WidgetAppIntentsPackage.includedPackages.modify(uint64_t a1))()
{
  if (qword_10000C610 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_100004568()
{
  result = qword_10000C640;
  if (!qword_10000C640)
  {
    sub_1000045F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C640);
  }

  return result;
}