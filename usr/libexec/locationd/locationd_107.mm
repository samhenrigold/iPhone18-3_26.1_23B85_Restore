void sub_1007C5E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_1007C5F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1025D48A0 != -1)
  {
    sub_10193998C();
  }

  v4 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a3 + 2);
    v6[0] = 67109378;
    v6[1] = v5;
    v7 = 2080;
    v8 = sub_100ED73B4(v5);
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "TILE: CLTileFile, sectionId, %d, %s", v6, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101939ACC(a3);
  }
}

void sub_1007C6000(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56) - kCFAbsoluteTimeIntervalSince1970;
  v5 = *(a2 + 192);
  if (v5 < 1)
  {
    v5 = 1209600;
  }

  *(a1 + 184) = *(a2 + 12);
  *(a1 + 52) = vrev64_s32(*(a2 + 16));
  *(a1 + 64) = -1;
  *(a1 + 176) = v4;
  *(a1 + 200) = v5;
  if (qword_1025D48A0 != -1)
  {
    sub_10193998C();
  }

  v6 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a2 + 12);
    v8 = *(a2 + 16);
    v9 = *(a2 + 28);
    v10 = *(a2 + 32);
    v11 = *(a2 + 36);
    v12 = *(a2 + 40);
    v13 = *(a2 + 44);
    v14 = *(a2 + 48);
    v15 = *(a2 + 52);
    v16 = *(a2 + 20);
    v17 = *(a2 + 24);
    v18 = *(a1 + 176);
    v19 = *(a2 + 192);
    HIDWORD(v38) = *(a1 + 200);
    *buf = 67112705;
    v69 = v7;
    v70 = 1029;
    v71 = v8;
    v72 = 1029;
    v73 = v16;
    v74 = 2053;
    v75 = v9;
    v76 = 2053;
    v77 = v10;
    v78 = 2053;
    v79 = v11;
    v80 = 2053;
    v81 = v12;
    v82 = 2048;
    v83 = v13;
    v84 = 2048;
    v85 = v14;
    v86 = 2048;
    v87 = v15;
    v88 = 1024;
    v89 = v17;
    v90 = 2048;
    v91 = v18;
    v92 = 1024;
    v93 = v19;
    v94 = 1024;
    v95 = HIDWORD(v38);
    v96 = 2048;
    v97 = CFAbsoluteTimeGetCurrent() - v18;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "TILE: tile, version, %d, y, %{sensitive}u, x, %{sensitive}u, corner, %{sensitive}.8f, %{sensitive}.8f, deltas, %{sensitive}.2f, %{sensitive}.2f, altitude, %f,  minAltitude, %f, maxAltitude, %f, numOfInputPoints, %d, generationTime, %.1f, expirationAge, %d, %d, age, %.1lf", buf, 0x80u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D48A0 != -1)
    {
      sub_1019398B4();
    }

    v20 = qword_1025D48A8;
    v21 = *(a2 + 12);
    v22 = *(a2 + 16);
    v23 = *(a2 + 28);
    v24 = *(a2 + 32);
    v25 = *(a2 + 36);
    v26 = *(a2 + 40);
    v27 = *(a2 + 44);
    v28 = *(a2 + 48);
    v29 = *(a2 + 52);
    v30 = *(a2 + 20);
    v31 = *(a2 + 24);
    v32 = *(a1 + 176);
    v33 = *(a2 + 192);
    v34 = *(a1 + 200);
    v35 = CFAbsoluteTimeGetCurrent() - v32;
    v39[0] = 67112705;
    v39[1] = v21;
    v40 = 1029;
    v41 = v22;
    v42 = 1029;
    v43 = v30;
    v44 = 2053;
    v45 = v23;
    v46 = 2053;
    v47 = v24;
    v48 = 2053;
    v49 = v25;
    v50 = 2053;
    v51 = v26;
    v52 = 2048;
    v53 = v27;
    v54 = 2048;
    v55 = v28;
    v56 = 2048;
    v57 = v29;
    v58 = 1024;
    v59 = v31;
    v60 = 2048;
    v61 = v32;
    v62 = 1024;
    v63 = v33;
    v64 = 1024;
    v65 = v34;
    v66 = 2048;
    v67 = v35;
    LODWORD(v38) = 128;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v20, 2, "TILE: tile, version, %d, y, %{sensitive}u, x, %{sensitive}u, corner, %{sensitive}.8f, %{sensitive}.8f, deltas, %{sensitive}.2f, %{sensitive}.2f, altitude, %f,  minAltitude, %f, maxAltitude, %f, numOfInputPoints, %d, generationTime, %.1f, expirationAge, %d, %d, age, %.1lf", v39, v38);
    v37 = v36;
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLTileFileWithTraversal::onTraversingTileHeader(const CLTilesManager_Type::TileHeader &)", "%s\n", v36);
    if (v37 != buf)
    {
      free(v37);
    }
  }
}

void sub_1007C63C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40) - kCFAbsoluteTimeIntervalSince1970;
  v5 = *(a2 + 188);
  if ((*(*a1 + 24))(a1))
  {
    v6 = v5;
  }

  else
  {
    v6 = -1;
  }

  v7 = *(a2 + 176);
  *(a1 + 184) = *(a2 + 12);
  *(a1 + 52) = vrev64_s32(*(a2 + 16));
  *(a1 + 64) = v6;
  *(a1 + 176) = v4;
  *(a1 + 200) = v7;
  if (qword_1025D48A0 != -1)
  {
    sub_10193998C();
  }

  v8 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    sub_100B4EFD4((a1 + 48), &__p);
    v9 = (SBYTE1(v64) & 0x80u) == 0 ? &__p : __p;
    *buf = 136315138;
    *v39 = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "TILE: onTraversingTileHeaderKeyLatLon, tileid, %s", buf, 0xCu);
    if (SBYTE1(v64) < 0)
    {
      operator delete(__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101939BF0(a1);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1019398B4();
  }

  v10 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a2 + 12);
    v11 = *(a2 + 16);
    v13 = *(a2 + 20);
    v14 = *(a2 + 24);
    v15 = *(a2 + 28);
    v16 = *(a2 + 32);
    v17 = *(a2 + 36);
    v18 = *(a1 + 176);
    v19 = *(a2 + 176);
    Current = CFAbsoluteTimeGetCurrent();
    v21 = *(a2 + 188);
    v22 = Current - *(a1 + 176);
    LODWORD(__p) = 67111681;
    HIDWORD(__p) = v12;
    v59 = 1029;
    v60 = v11;
    v61 = 1029;
    v62 = v13;
    v63 = 2053;
    v64 = v14;
    v65 = 2053;
    v66 = v15;
    v67 = 2053;
    v68 = v16;
    v69 = 2053;
    v70 = v17;
    v71 = 2048;
    v72 = v18;
    v73 = 1024;
    v74 = v19;
    v75 = 2048;
    v76 = v22;
    v77 = 2048;
    v78 = v21;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "TILE: tile.keylatlon, version, %d, y, %{sensitive}u, x, %{sensitive}u, corner, %{sensitive}.8f, %{sensitive}.8f, deltas, %{sensitive}.2f, %{sensitive}.2f, generationTime, %.1f, expirationAge, %d, age, %.1lf, sec_key, %016llx", &__p, 0x60u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(&__p, 0x65CuLL);
    if (qword_1025D48A0 != -1)
    {
      sub_1019398B4();
    }

    v23 = qword_1025D48A8;
    v25 = *(a2 + 12);
    v24 = *(a2 + 16);
    v26 = *(a2 + 20);
    v28 = *(a2 + 24);
    v27 = *(a2 + 28);
    v30 = *(a2 + 32);
    v29 = *(a2 + 36);
    v31 = *(a1 + 176);
    v32 = *(a2 + 176);
    v33 = CFAbsoluteTimeGetCurrent();
    v34 = *(a2 + 188);
    v35 = v33 - *(a1 + 176);
    *buf = 67111681;
    *v39 = v25;
    *&v39[4] = 1029;
    *&v39[6] = v24;
    v40 = 1029;
    v41 = v26;
    v42 = 2053;
    v43 = v28;
    v44 = 2053;
    v45 = v27;
    v46 = 2053;
    v47 = v30;
    v48 = 2053;
    v49 = v29;
    v50 = 2048;
    v51 = v31;
    v52 = 1024;
    v53 = v32;
    v54 = 2048;
    v55 = v35;
    v56 = 2048;
    v57 = v34;
    _os_log_send_and_compose_impl(2, 0, &__p, 1628, dword_100000000, v23, 2, "TILE: tile.keylatlon, version, %d, y, %{sensitive}u, x, %{sensitive}u, corner, %{sensitive}.8f, %{sensitive}.8f, deltas, %{sensitive}.2f, %{sensitive}.2f, generationTime, %.1f, expirationAge, %d, age, %.1lf, sec_key, %016llx", buf, 96);
    v37 = v36;
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLTileFileWithTraversal::onTraversingTileHeaderKeyLatLon(const CLTilesManager_Type::TileHeaderKeyLatLon &)", "%s\n", v36);
    if (v37 != &__p)
    {
      free(v37);
    }
  }
}

void sub_1007C67D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40) - kCFAbsoluteTimeIntervalSince1970;
  v5 = *(a2 + 176);
  v6 = rand();
  *(a1 + 184) = *(a2 + 12);
  *(a1 + 52) = vrev64_s32(*(a2 + 16));
  *(a1 + 64) = -1;
  *(a1 + 176) = v4;
  *(a1 + 200) = v6 % 86400 + v5;
  if (qword_1025D48A0 != -1)
  {
    sub_10193998C();
  }

  v7 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    sub_100B4EFD4((a1 + 48), v73);
    v8 = SBYTE1(v79);
    v9 = *v73;
    sub_100B4F65C(a1 + 48, &__p);
    v10 = v73;
    if (v8 < 0)
    {
      v10 = v9;
    }

    if ((SBYTE1(v52) & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315394;
    *&buf[4] = v10;
    v66 = 2080;
    v67 = p_p;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "TILE: tile.location, tileid, %s, serverName, %s", buf, 0x16u);
    if (SBYTE1(v52) < 0)
    {
      operator delete(__p);
    }

    if (SBYTE1(v79) < 0)
    {
      operator delete(*v73);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019398DC(v73);
    v24 = qword_1025D48A8;
    sub_100B4EFD4((a1 + 48), &__p);
    v25 = SBYTE1(v52);
    v26 = __p;
    sub_100B4F65C(a1 + 48, buf);
    v27 = &__p;
    if (v25 < 0)
    {
      v27 = v26;
    }

    if (v68 >= 0)
    {
      v28 = buf;
    }

    else
    {
      v28 = *buf;
    }

    v69 = 136315394;
    v70 = v27;
    v71 = 2080;
    v72 = v28;
    _os_log_send_and_compose_impl(2, 0, v73, 1628, dword_100000000, v24, 2, "TILE: tile.location, tileid, %s, serverName, %s", &v69, 22);
    v30 = v29;
    if (v68 < 0)
    {
      operator delete(*buf);
    }

    if (SBYTE1(v52) < 0)
    {
      operator delete(__p);
    }

    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLTileFileWithTraversal::onTraversingTileHeaderLocation(const CLTilesManager_Type::TileHeaderLocation &)", "%s\n", v30);
    if (v30 != v73)
    {
      free(v30);
    }
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1019398B4();
  }

  v12 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a2 + 12);
    v14 = *(a2 + 16);
    v15 = *(a2 + 20);
    v16 = *(a2 + 24);
    v17 = *(a2 + 28);
    v18 = *(a2 + 32);
    v19 = *(a2 + 36);
    v20 = *(a1 + 176);
    v21 = *(a2 + 176);
    Current = CFAbsoluteTimeGetCurrent();
    *v73 = 67111425;
    v23 = Current - *(a1 + 176);
    *&v73[4] = v13;
    v74 = 1029;
    v75 = v14;
    v76 = 1029;
    v77 = v15;
    v78 = 2053;
    v79 = v16;
    v80 = 2053;
    v81 = v17;
    v82 = 2053;
    v83 = v18;
    v84 = 2053;
    v85 = v19;
    v86 = 2048;
    v87 = v20;
    v88 = 1024;
    v89 = v21;
    v90 = 2048;
    v91 = v23;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "TILE: tile.location, version, %d, y, %{sensitive}u, x, %{sensitive}u, corner, %{sensitive}.8f, %{sensitive}.8f, deltas, %{sensitive}.2f, %{sensitive}.2f, generationTime, %.1f, expirationAge, %d, age, %.1lf", v73, 0x56u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(v73, 0x65CuLL);
    if (qword_1025D48A0 != -1)
    {
      sub_1019398B4();
    }

    v31 = qword_1025D48A8;
    v33 = *(a2 + 12);
    v32 = *(a2 + 16);
    v34 = *(a2 + 20);
    v35 = *(a2 + 24);
    v36 = *(a2 + 28);
    v37 = *(a2 + 32);
    v38 = *(a2 + 36);
    v39 = *(a1 + 176);
    v40 = *(a2 + 176);
    v41 = CFAbsoluteTimeGetCurrent();
    LODWORD(__p) = 67111425;
    v42 = v41 - *(a1 + 176);
    HIDWORD(__p) = v33;
    v47 = 1029;
    v48 = v32;
    v49 = 1029;
    v50 = v34;
    v51 = 2053;
    v52 = v35;
    v53 = 2053;
    v54 = v36;
    v55 = 2053;
    v56 = v37;
    v57 = 2053;
    v58 = v38;
    v59 = 2048;
    v60 = v39;
    v61 = 1024;
    v62 = v40;
    v63 = 2048;
    v64 = v42;
    LODWORD(v45) = 86;
    _os_log_send_and_compose_impl(2, 0, v73, 1628, dword_100000000, v31, 2, "TILE: tile.location, version, %d, y, %{sensitive}u, x, %{sensitive}u, corner, %{sensitive}.8f, %{sensitive}.8f, deltas, %{sensitive}.2f, %{sensitive}.2f, generationTime, %.1f, expirationAge, %d, age, %.1lf", &__p, v45);
    v44 = v43;
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLTileFileWithTraversal::onTraversingTileHeaderLocation(const CLTilesManager_Type::TileHeaderLocation &)", "%s\n", v43);
    if (v44 != v73)
    {
      free(v44);
    }
  }
}

void sub_1007C6D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007C6D44(uint64_t a1, char *a2)
{
  if (qword_1025D48A0 != -1)
  {
    sub_10193998C();
  }

  v4 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 1);
    v7 = *(a2 + 3);
    v6 = *(a2 + 4);
    v8[0] = 67109632;
    v8[1] = v5;
    v9 = 1024;
    v10 = v6;
    v11 = 1024;
    v12 = v7;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "TILE: tileMacIndexHeader, headerSizeBytes, %u, tileMacIndexHeader, entrySizeInBytes, %u, numOfEntries, %u", v8, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101939D3C(a2);
  }

  *(a1 + 292) = 0;
}

void sub_1007C6E44(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_1025D48A0 != -1)
  {
    sub_10193998C();
  }

  v4 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 292);
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    v9 = a2[3];
    v10 = a2[4];
    v11 = a2[5];
    v12 = *(a2 + 6);
    v13[0] = 67110912;
    v13[1] = v5;
    v14 = 1024;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 1024;
    v19 = v8;
    v20 = 1024;
    v21 = v9;
    v22 = 1024;
    v23 = v10;
    v24 = 1024;
    v25 = v11;
    v26 = 1024;
    v27 = v12;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "TILE: idx, %3u, mac,%x:%x:%x:%x:%x:%x, offset, %u", v13, 0x32u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101939E38(a1, a2);
  }

  ++*(a1 + 292);
}

void sub_1007C6F90(uint64_t a1, char *a2)
{
  *(a1 + 292) = 0;
  if (qword_1025D48A0 != -1)
  {
    sub_10193998C();
  }

  v3 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a2 + 1);
    v6 = *(a2 + 3);
    v5 = *(a2 + 4);
    v7[0] = 67109632;
    v7[1] = v4;
    v8 = 1024;
    v9 = v5;
    v10 = 1024;
    v11 = v6;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "TILE: tileAccessPointTable, headerSizeBytes, %u, tileAccessPointTable, entrySizeInBytes, %u, numOfEntries, %u", v7, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101939F9C(a2);
  }
}

void sub_1007C7084(uint64_t a1, unsigned __int8 *a2)
{
  v23 = 0;
  v24 = 0;
  sub_100EDF3F8(a1, *(a2 + 6) & 0xFFF, (*(a2 + 6) >> 12) & 0xFFF, &v24, &v23);
  if (qword_1025D48A0 != -1)
  {
    sub_1019398B4();
  }

  v4 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 292);
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    v9 = a2[3];
    v10 = a2[4];
    v11 = a2[5];
    v12 = *(a2 + 6);
    *buf = 67111681;
    v47 = v5;
    v48 = 1024;
    v49 = v6;
    v50 = 1024;
    v51 = v7;
    v52 = 1024;
    v53 = v8;
    v54 = 1024;
    v55 = v9;
    v56 = 1024;
    v57 = v10;
    v58 = 1024;
    v59 = v11;
    v60 = 1024;
    v61 = v12 & 0xFFF;
    v62 = 1024;
    v63 = (v12 >> 12) & 0xFFF;
    v64 = 2053;
    v65 = v24;
    v66 = 2053;
    v67 = v23;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "TILE: mac, %3u, mac,%x:%x:%x:%x:%x:%x, y, %3d, x, %3d, loc, %{sensitive}14.10lf, %{sensitive}14.10lf", buf, 0x4Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D48A0 != -1)
    {
      sub_1019398B4();
    }

    v13 = *(a1 + 292);
    v14 = *a2;
    v15 = a2[1];
    v16 = a2[2];
    v17 = a2[3];
    v18 = a2[4];
    v19 = a2[5];
    v20 = *(a2 + 6);
    v25[0] = 67111681;
    v25[1] = v13;
    v26 = 1024;
    v27 = v14;
    v28 = 1024;
    v29 = v15;
    v30 = 1024;
    v31 = v16;
    v32 = 1024;
    v33 = v17;
    v34 = 1024;
    v35 = v18;
    v36 = 1024;
    v37 = v19;
    v38 = 1024;
    v39 = v20 & 0xFFF;
    v40 = 1024;
    v41 = (v20 >> 12) & 0xFFF;
    v42 = 2053;
    v43 = v24;
    v44 = 2053;
    v45 = v23;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "TILE: mac, %3u, mac,%x:%x:%x:%x:%x:%x, y, %3d, x, %3d, loc, %{sensitive}14.10lf, %{sensitive}14.10lf", v25, 76);
    v22 = v21;
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLTileFileWithTraversal::onTraversingTileAPTableEntry(const CLTilesManager_Type::AccessPointEntry &)", "%s\n", v21);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  ++*(a1 + 292);
}

void *sub_1007C7348(uint64_t a1, FILE *a2, uint64_t a3, void *a4, int a5, int a6)
{
  v11 = (a6 * a5);
  if (qword_1025D48A0 != -1)
  {
    sub_10193998C();
  }

  v12 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a3 + 2);
    *buf = 67109632;
    v30 = v13;
    v31 = 1024;
    v32 = a4;
    v33 = 1024;
    v34 = a5;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "TILE: read data, sectionId, %d, entriesOffset, %u, entriesNumToRead, %u", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D48A0 != -1)
    {
      sub_1019398B4();
    }

    v25 = 1024;
    v26 = a4;
    v27 = 1024;
    v28 = a5;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "TILE: read data, sectionId, %d, entriesOffset, %u, entriesNumToRead, %u", &v24, 20, 67109632);
    v23 = v22;
    sub_100152C7C("Generic", 1, 0, 2, "void *CLTileFileWithTraversal::readDataEntries(FILE *, const CLTilesManager_Type::SectionHeader &, unsigned int, unsigned int, unsigned int)", "%s\n", v22);
    if (v23 != buf)
    {
      free(v23);
    }
  }

  v14 = malloc_type_malloc(v11, 0x100004077774924uLL);
  if (v14)
  {
    v15 = fseek(a2, (a6 * a4), 1);
    if (v15)
    {
      v16 = v15;
      if (qword_1025D48A0 != -1)
      {
        sub_1019398B4();
      }

      v17 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109376;
        v30 = a4;
        v31 = 1024;
        v32 = v16;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "TILE: ERROR: failed to skip entries pre read, %u, ret, %d", buf, 0xEu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10193A098(a4, v16);
      }

LABEL_21:
      free(v14);
      return 0;
    }

    v18 = fread(v14, 1uLL, v11, a2);
    if (v18 != v11)
    {
      v19 = v18;
      if (qword_1025D48A0 != -1)
      {
        sub_1019398B4();
      }

      v20 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109376;
        v30 = v19;
        v31 = 1024;
        v32 = v11;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "TILE: ERROR: failed to read bytes, %u, %u", buf, 0xEu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10193A1A8(v19, v11);
      }

      goto LABEL_21;
    }
  }

  return v14;
}

void sub_1007C81FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int16 *sub_1007C8EF8(uint64_t a1, int *a2, int *a3)
{
  if (qword_1025D45A0 != -1)
  {
    sub_10193A76C();
  }

  v6 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *a2;
    v8 = *a3;
    v9 = *(a3 + 1);
    v10 = *(a3 + 2);
    *buf = 67109888;
    *v35 = v7;
    *&v35[4] = 1024;
    *&v35[6] = v8;
    *v36 = 2048;
    *&v36[2] = v9;
    *v37 = 2048;
    *&v37[2] = v10;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "HR notification %d src %d %f %f", buf, 0x22u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193A780(a2, a3);
  }

  if (*(a1 + 66))
  {
    v11 = *(a1 + 66) + *(a1 + 64) - 1;
    v12 = *(a1 + 68);
    if (v11 < v12)
    {
      v12 = 0;
    }

    v13 = *(a1 + 176 * (v11 - v12) + 112);
    v14 = *(a3 + 5);
    if (vabdd_f64(v14, v13) > 10.0)
    {
      if (qword_1025D45A0 != -1)
      {
        sub_10193A8B0();
      }

      v15 = qword_1025D45A8;
      if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *v35 = 0x8000000101CD1128 & 0x7FFFFFFFFFFFFFFFLL;
        *&v35[8] = 2048;
        *v36 = v13;
        *&v36[8] = 2048;
        *v37 = v14;
        *&v37[8] = 2048;
        v38 = v14 - v13;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "<%s> #Warning, unexpected gap, previousTime,%f,currentTime,%f,gap,%f", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D45A0 != -1)
        {
          sub_10193A8B0();
        }

        v26 = 136315906;
        v27 = 0x8000000101CD1128 & 0x7FFFFFFFFFFFFFFFLL;
        v28 = 2048;
        v29 = v13;
        v30 = 2048;
        v31 = v14;
        v32 = 2048;
        v33 = v14 - v13;
        LODWORD(v25) = 42;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "<%s> #Warning, unexpected gap, previousTime,%f,currentTime,%f,gap,%f", &v26, v25);
        v24 = v23;
        sub_100152C7C("Generic", 1, 0, 2, "void CMDataProvider::Util::logGapIfUnexpected(const T &, const T &, CFTimeInterval, GetTimeOperatorT) [T = CLCatherineNotifier_Type::NotificationData, GetTimeOperatorT = GetTimeOperator]", "%s\n", v23);
        if (v24 != buf)
        {
          free(v24);
        }
      }
    }

    v16 = (*(*a1 + 56))(a1);
    Current = CFAbsoluteTimeGetCurrent();
    v18 = *(a3 + 5);
    if (vabdd_f64(Current, v18) > v16)
    {
      if (qword_1025D45A0 != -1)
      {
        sub_10193A8B0();
      }

      v19 = Current - v18;
      v20 = qword_1025D45A8;
      if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *v35 = 0x8000000101CD1128 & 0x7FFFFFFFFFFFFFFFLL;
        *&v35[8] = 2048;
        *v36 = v18;
        *&v36[8] = 2048;
        *v37 = v19;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "<%s> #Warning, unexpected latency, time,%f,latency,%f", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10193A8D8(v18, v19);
      }
    }
  }

  sub_1007C9340((a1 + 64), a3);
  result = sub_100726B38((a1 + 8872), a2);
  for (i = *(a1 + 32); i != a1 + 24; i = *(i + 8))
  {
    result = (*(**(i + 24) + 16))(*(i + 24), a1);
  }

  return result;
}

unsigned __int16 *sub_1007C9340(unsigned __int16 *result, _OWORD *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[88 * (v3 - v2)];
  v6 = a2[1];
  v5 = a2[2];
  *(v4 + 4) = *a2;
  *(v4 + 12) = v6;
  *(v4 + 20) = v5;
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[4];
  *(v4 + 28) = a2[3];
  *(v4 + 52) = v8;
  *(v4 + 44) = v7;
  *(v4 + 36) = v9;
  v10 = a2[9];
  v11 = a2[10];
  v12 = a2[8];
  *(v4 + 60) = a2[7];
  *(v4 + 84) = v11;
  *(v4 + 76) = v10;
  *(v4 + 68) = v12;
  v13 = result[1];
  v14 = *(result + 1);
  if (v14 <= v13)
  {
    v15 = *result + 1;
    if (v15 < v14)
    {
      LOWORD(v14) = 0;
    }

    *result = v15 - v14;
  }

  else
  {
    result[1] = v13 + 1;
  }

  return result;
}

void sub_1007C93E0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v5 = (a1 + 16);
  v6 = *(a1 + 16);
  sub_1003E66FC(a1 + 8, a2, a3);
  if (qword_1025D45A0 != -1)
  {
    sub_10193A76C();
  }

  v7 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    v8 = *v5;
    *buf = 67109376;
    v11 = v8;
    v12 = 1024;
    v13 = v3;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "fActiveRefCount %d leech %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193AA1C(v5, v3);
  }

  if (!v6 && *v5 == 1)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_10193A8B0();
    }

    v9 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "creating hr dispatcher", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193AB38();
    }

    if (*(a1 + 48))
    {
      operator new();
    }
  }
}

void sub_1007C9620(uint64_t a1, uint64_t a2)
{
  if (sub_1003E6B84(a1 + 8, a2))
  {
    if (*(a1 + 16) != 1)
    {
      sub_10193AC1C(qword_1025D45A0 == -1);
    }

    if (qword_1025D45A0 != -1)
    {
      sub_10193A76C();
    }

    v4 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "removing HR delegate", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193ADE4();
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      (*(*v5 + 120))(v5);
    }
  }

  if (qword_1025D45A0 != -1)
  {
    sub_10193A8B0();
  }

  v6 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "release HR client", v7, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193AEC4();
  }

  sub_1003E6D3C(a1 + 8, a2);
}

double sub_1007C9798(uint64_t a1, int a2)
{
  result = -1.0;
  if (a2 == 1 && *(a1 + 66))
  {
    v3 = *(a1 + 66) + *(a1 + 64) - 1;
    v4 = *(a1 + 68);
    if (v3 < v4)
    {
      v4 = 0;
    }

    return *(a1 + 176 * (v3 - v4) + 112);
  }

  return result;
}

void sub_1007C97DC(void *a1)
{
  sub_1007C989C(a1);

  operator delete();
}

void sub_1007C9830(uint64_t a1)
{
  sub_1007C989C((a1 - 8));

  operator delete();
}

void *sub_1007C989C(void *a1)
{
  *a1 = &off_1024718C8;
  a1[1] = off_102471930;
  if (qword_1025D45A0 != -1)
  {
    sub_10193A76C();
  }

  v2 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "factory stream hr destroyed", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193AFA4(buf);
    v7[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 2, "factory stream hr destroyed", v7, 2);
    v6 = v5;
    sub_100152C7C("Generic", 1, 0, 2, "virtual CMDataProviderFactoryHR::~CMDataProviderFactoryHR()", "%s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v3 = a1[7];
  if (v3)
  {
    sub_100008080(v3);
  }

  a1[1] = off_10244FCF8;
  sub_1001FB750(a1 + 3);
  return a1;
}

void sub_1007C9A68(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void *sub_1007C9AE0(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024719C0;
  sub_1007C9BD8((a1 + 3), a2);
  return a1;
}

void sub_1007C9B5C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024719C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007C9BD8(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1007C9C4C(a1, &v5);
  if (v6)
  {
    sub_100008080(v6);
  }

  return a1;
}

void sub_1007C9C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_1007C9C4C(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = a1 + 24;
  *(a1 + 32) = a1 + 24;
  *(a1 + 40) = 0;
  *a1 = &off_1024718C8;
  *(a1 + 8) = off_102471930;
  v2 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *&result = 0x3200000000;
  *(a1 + 64) = 0x3200000000;
  *(a1 + 8872) = 0x3200000000;
  return result;
}

__n128 sub_1007C9D28(uint64_t a1, uint64_t a2)
{
  *a2 = off_102471A10;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1007C9D60(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t sub_1007C9DA8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007CA294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  if (STACK[0x690])
  {
    sub_100008080(STACK[0x690]);
  }

  _Unwind_Resume(a1);
}

void sub_1007CAA10(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102471AC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const void *sub_1007CAACC(const void *a1)
{
  v2 = sub_100536F74(a1, "CLLocalization", 1, 1);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v3 = (v2 + 16);
  sub_1005658E8(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v5 = sub_100053C00(p_p);
  v6 = v5;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else if (!v5)
  {
    goto LABEL_12;
  }

  v7 = CFGetTypeID(v6);
  if (v7 == CFStringGetTypeID())
  {
    v8 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v6, kCFURLPOSIXPathStyle, 0);
    if (v8)
    {
      *v3 = CFBundleCreate(kCFAllocatorDefault, v8);
      CFRelease(v8);
    }
  }

  CFRelease(v6);
LABEL_12:
  sub_1007CAC2C(a1);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_1007CAC68, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  return a1;
}

const __CFString *sub_1007CAC2C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  result = sub_100055D44(a1, *(a1 + 16));
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1007CAC68(uint64_t a1, uint64_t a2)
{
  if (qword_1025D48A0 != -1)
  {
    sub_10193B164();
  }

  v3 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v5) = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "language changed - refreshing", &v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193B178();
  }

  v5 = a2;
  (*(*a2 + 16))(a2);
  v6 = 256;
  CFPreferencesSynchronize(@".GlobalPreferences", @"mobile", kCFPreferencesAnyHost);
  sub_1007CAC2C(a2);
  return (*(*a2 + 24))(a2);
}

const __CFString *sub_1007CADA0(uint64_t a1, __CFBundle *a2, const __CFString *a3, const __CFString *a4, int a5)
{
  if (qword_102659FB0 != -1)
  {
    sub_10193B150();
  }

  result = sub_100055A24(qword_1026372B0, a2, a4, a5);
  if (!a5 && !result)
  {
    v10 = [(__CFDictionary *)CFBundleGetInfoDictionary(a2) objectForKey:a3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 objectForKey:a4];
      if (v11)
      {
        v12 = v11;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          return [v12 copy];
        }

        if (qword_1025D47A0 != -1)
        {
          sub_10193B290();
        }

        v24 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          sub_1000238CC(a4, __p);
          if (v28 >= 0)
          {
            v25 = __p;
          }

          else
          {
            v25 = __p[0];
          }

          *buf = 68289282;
          v30 = 0;
          v31 = 2082;
          v32 = "";
          v33 = 2082;
          v34 = v25;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:key does not contain a string value, key:%{public, location:escape_only}s}", buf, 0x1Cu);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

          if (qword_1025D47A0 != -1)
          {
            sub_10193B2A4();
          }
        }

        v22 = off_1025D47A8;
        if (!os_signpost_enabled(off_1025D47A8))
        {
          return 0;
        }

        sub_1000238CC(a4, __p);
        if (v28 >= 0)
        {
          v26 = __p;
        }

        else
        {
          v26 = __p[0];
        }

        *buf = 68289282;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2082;
        v34 = v26;
        v17 = "key does not contain a string value";
        v18 = "{msg%{public}.0s:key does not contain a string value, key:%{public, location:escape_only}s}";
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10193B290();
        }

        v20 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          sub_1000238CC(a4, __p);
          if (v28 >= 0)
          {
            v21 = __p;
          }

          else
          {
            v21 = __p[0];
          }

          *buf = 68289282;
          v30 = 0;
          v31 = 2082;
          v32 = "";
          v33 = 2082;
          v34 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:key is not present, key:%{public, location:escape_only}s}", buf, 0x1Cu);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

          if (qword_1025D47A0 != -1)
          {
            sub_10193B2A4();
          }
        }

        v22 = off_1025D47A8;
        if (!os_signpost_enabled(off_1025D47A8))
        {
          return 0;
        }

        sub_1000238CC(a4, __p);
        if (v28 >= 0)
        {
          v23 = __p;
        }

        else
        {
          v23 = __p[0];
        }

        *buf = 68289282;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2082;
        v34 = v23;
        v17 = "key is not present";
        v18 = "{msg%{public}.0s:key is not present, key:%{public, location:escape_only}s}";
      }

      v19 = v22;
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10193B290();
      }

      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        sub_1000238CC(a3, __p);
        if (v28 >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        *buf = 68289282;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2082;
        v34 = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:description dictionary key does not contain a dictionary value, key:%{public, location:escape_only}s}", buf, 0x1Cu);
        if (v28 < 0)
        {
          operator delete(__p[0]);
        }

        if (qword_1025D47A0 != -1)
        {
          sub_10193B2A4();
        }
      }

      v15 = off_1025D47A8;
      if (!os_signpost_enabled(off_1025D47A8))
      {
        return 0;
      }

      sub_1000238CC(a3, __p);
      if (v28 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      *buf = 68289282;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2082;
      v34 = v16;
      v17 = "description dictionary key does not contain a dictionary value";
      v18 = "{msg%{public}.0s:description dictionary key does not contain a dictionary value, key:%{public, location:escape_only}s}";
      v19 = v15;
    }

    _os_signpost_emit_with_name_impl(dword_100000000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v17, v18, buf, 0x1Cu);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

const __CFString *sub_1007CB2E8(void *a1, const __CFString *a2)
{
  v4 = a1[3];
  (*(*a1 + 16))(a1);
  if (!a1[2])
  {
    v6 = 0;
    goto LABEL_12;
  }

  if (!v4)
  {
    sub_1007CAC2C(a1);
  }

  v5 = CFBundleCopyLocalizedStringForLocalization();
  v6 = v5;
  if (v5)
  {
    if (CFStringCompare(v5, a2, 0x100uLL))
    {
      goto LABEL_8;
    }

    CFRelease(v6);
  }

  v6 = CFBundleCopyLocalizedStringForLocalization();
  if (!v6)
  {
LABEL_10:
    v6 = CFBundleCopyLocalizedStringForLocalization();
    goto LABEL_12;
  }

LABEL_8:
  if (CFStringCompare(v6, a2, 0x100uLL) == kCFCompareEqualTo)
  {
    CFRelease(v6);
    goto LABEL_10;
  }

LABEL_12:
  (*(*a1 + 24))(a1);
  return v6;
}

void sub_1007CB43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

const void *sub_1007CB450(uint64_t a1)
{
  v10 = a1;
  (*(*a1 + 16))(a1);
  v11 = 256;
  v2 = CFPreferencesCopyValue(@"AppleLanguages", @".GlobalPreferences", @"mobile", kCFPreferencesAnyHost);
  v3 = v2;
  if (v2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
    CFRetain(ValueAtIndex);
    CFRelease(v3);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10193B164();
    }

    v5 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#Warning could not get apple languages array", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193B2CC(buf);
      v9 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning could not get apple languages array", &v9, 2);
      v8 = v7;
      sub_100152C7C("Generic", 1, 0, 2, "CFStringRef CLLocalization::copyUserPreferredLanguage()", "%s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    ValueAtIndex = 0;
  }

  (*(*a1 + 24))(a1);
  return ValueAtIndex;
}

void sub_1007CB658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007CB6B8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = &off_102471B68;
  *(a1 + 16) = 20;
  *(a1 + 24) = 1;
  *(a1 + 32) = &off_102471CA8;
  *a1 = off_102471E58;
  *(a1 + 40) = 1056964608;
  *(a1 + 48) = 0;
  v4 = a1 + 2528;
  bzero((a1 + 56), 0x9A8uLL);
  *(a1 + 2528) = xmmword_101C8E2B0;
  *(a1 + 2544) = unk_101C8E2C0;
  *(a1 + 2560) = xmmword_101C8E2D0;
  *(v4 + 44) = *(&xmmword_101C8E2D0 + 12);
  *(a1 + 2592) = 0;
  *(a1 + 2600) = a2;
  *(a1 + 2608) = 0;
  v6 = 0;
  sub_100126E84(v7, "RunningFormBypassIsRunning", &v6, 0);
  *(a1 + 2612) = v7[1];
  *(a1 + 2613) = 0;
  nullsub_34();
  *(a1 + 2632) = 0u;
  *(a1 + 2648) = 0u;
  *(a1 + 2616) = 0u;
  *(a1 + 2664) = 0x200000002;
  return a1;
}

void sub_1007CB7C8(_Unwind_Exception *a1)
{
  sub_1007D4B7C(v1 + 43);
  sub_1007D4AD0(v1 + 37);
  sub_100102BC8(v1 + 31);
  sub_100102BC8(v1 + 25);
  sub_1000F8B58(v1 + 19);
  sub_1000F8B58(v1 + 13);
  sub_1000F8B58(v1 + 7);
  _Unwind_Resume(a1);
}

void sub_1007CB814(uint64_t a1)
{
  v4 = 0;
  sub_100126E84(buf, "RunningFormBypassIsRunning", &v4, 0);
  *(a1 + 2612) = buf[1];
  if (qword_1025D44C0 != -1)
  {
    sub_10193B310();
  }

  v2 = qword_1025D44C8;
  if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 2612);
    *buf = 136446466;
    v6 = "RunningFormBypassIsRunning";
    v7 = 1026;
    v8 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "[FormModels] default - %{public}s: %{public}d", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193B338((a1 + 2612));
  }
}

void sub_1007CB928(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  bzero((a1 + 456), 0x818uLL);
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  *(a1 + 96) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 72);
      v2 = (*(a1 + 64) + 8);
      *(a1 + 64) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 85;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 170;
  }

  *(a1 + 88) = v6;
LABEL_8:
  v7 = *(a1 + 112);
  v8 = *(a1 + 120);
  *(a1 + 144) = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = *(a1 + 120);
      v7 = (*(a1 + 112) + 8);
      *(a1 + 112) = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 85;
  }

  else
  {
    if (v9 != 2)
    {
      goto LABEL_15;
    }

    v11 = 170;
  }

  *(a1 + 136) = v11;
LABEL_15:
  v12 = *(a1 + 160);
  v13 = *(a1 + 168);
  *(a1 + 192) = 0;
  v14 = (v13 - v12) >> 3;
  if (v14 >= 3)
  {
    do
    {
      operator delete(*v12);
      v15 = *(a1 + 168);
      v12 = (*(a1 + 160) + 8);
      *(a1 + 160) = v12;
      v14 = (v15 - v12) >> 3;
    }

    while (v14 > 2);
  }

  if (v14 == 1)
  {
    v16 = 85;
  }

  else
  {
    if (v14 != 2)
    {
      goto LABEL_22;
    }

    v16 = 170;
  }

  *(a1 + 184) = v16;
LABEL_22:
  v17 = *(a1 + 208);
  v18 = *(a1 + 216);
  *(a1 + 240) = 0;
  v19 = (v18 - v17) >> 3;
  if (v19 >= 3)
  {
    do
    {
      operator delete(*v17);
      v20 = *(a1 + 216);
      v17 = (*(a1 + 208) + 8);
      *(a1 + 208) = v17;
      v19 = (v20 - v17) >> 3;
    }

    while (v19 > 2);
  }

  if (v19 == 1)
  {
    v21 = 128;
  }

  else
  {
    if (v19 != 2)
    {
      goto LABEL_29;
    }

    v21 = 256;
  }

  *(a1 + 232) = v21;
LABEL_29:
  v22 = *(a1 + 256);
  v23 = *(a1 + 264);
  *(a1 + 288) = 0;
  v24 = (v23 - v22) >> 3;
  if (v24 >= 3)
  {
    do
    {
      operator delete(*v22);
      v25 = *(a1 + 264);
      v22 = (*(a1 + 256) + 8);
      *(a1 + 256) = v22;
      v24 = (v25 - v22) >> 3;
    }

    while (v24 > 2);
  }

  if (v24 == 1)
  {
    v26 = 128;
  }

  else
  {
    if (v24 != 2)
    {
      return;
    }

    v26 = 256;
  }

  *(a1 + 280) = v26;
}

void sub_1007CBB40(uint64_t a1, void *a2, void *a3)
{
  v6 = a2[1];
  v7 = 0x70381C0E070381C1;
  if (a2[2] == v6)
  {
    v8 = a2[5];
    v390 = a2 + 5;
    goto LABEL_11;
  }

  v8 = a2[5];
  v390 = a2 + 5;
  v9 = a2[4];
  v10 = (v6 + 8 * (v9 / 0x49));
  v11 = *v10;
  v12 = *v10 + 56 * (v9 % 0x49);
  v13 = *(v6 + 8 * ((v8 + v9) / 0x49)) + 56 * ((v8 + v9) % 0x49);
  if (v12 == v13)
  {
LABEL_11:
    v14 = 0.0;
    goto LABEL_12;
  }

  v14 = 0.0;
  do
  {
    v15 = *(v12 + 48) - *(v12 + 40);
    if (v15 > 0.0)
    {
      v14 = v14 + v15;
    }

    v12 += 56;
    if (v12 - v11 == 4088)
    {
      v16 = v10[1];
      ++v10;
      v11 = v16;
      v12 = v16;
    }
  }

  while (v12 != v13);
LABEL_12:
  *(a1 + 448) = v14 / v8;
  sub_1007CDBA4(a1);
  v17 = a3[5];
  if (v17)
  {
    v388 = sub_100CDBCEC(*(a1 + 464), *(*(a3[1] + 8 * ((v17 + a3[4] - 1) / 0x16uLL)) + 184 * ((v17 + a3[4] - 1) % 0x16uLL) + 80), *(a1 + 2536));
  }

  else
  {
    v388 = 0;
  }

  v18 = *(a1 + 48) + 1;
  *(a1 + 48) = v18;
  v391 = a2;
  if (*v390 >= 0x101uLL && (v18 & 0xF) == 0)
  {
    *(a1 + 48) = 0;
    memset(v407, 0, 20);
    if (sub_1007CDED4(a2, v407))
    {
      sub_1007CE348((a1 + 104), v407);
    }

    else
    {
      if (qword_1025D44C0 != -1)
      {
        sub_10193B454();
      }

      v19 = qword_1025D44C8;
      if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "[FormModels] Failed to compute axis of rotation", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10193B468();
      }
    }
  }

  if (*(a1 + 464) > 0.0 && *v390 >= 0x201uLL)
  {
    v20 = a2[4] + *v390;
    v21 = a2[1];
    v22 = a2[2];
    v23 = (v21 + 8 * (v20 / 0x49));
    v24 = *v23 + 56 * (v20 % 0x49);
    if (v22 == v21)
    {
      v24 = 0;
    }

    v25 = v24 - *v23;
    v26 = 0x6DB6DB6DB6DB6DB7 * (v25 >> 3);
    if (v25 < 28729)
    {
      v46 = 585 - v26;
      v47 = (585 - v26) / 0x49uLL;
      v29 = &v23[-v47];
      v30 = *v29 + 56 * (73 * v47 - v46) + 4032;
    }

    else
    {
      v27 = v26 - 513;
      v28 = (v26 - 513) / 0x49uLL;
      v29 = &v23[v28];
      v30 = *v29 + 56 * (v27 - 73 * v28);
    }

    *buf = v29;
    *&buf[8] = v30;
    if (v22 == v21)
    {
      v48 = 0;
    }

    else
    {
      v48 = *v23 + 56 * (v20 % 0x49);
    }

    *v402 = v23;
    *&v402[8] = v48;
    sub_1007CE3F8(buf, v402, a1 + 1500, v407);
    sub_1007CE58C((a1 + 56), v407);
    goto LABEL_57;
  }

  *(a1 + 440) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 392) = 0u;
  v31 = *(a1 + 64);
  v32 = *(a1 + 72);
  *(a1 + 96) = 0;
  v33 = (v32 - v31) >> 3;
  if (v33 >= 3)
  {
    do
    {
      operator delete(*v31);
      v34 = *(a1 + 72);
      v31 = (*(a1 + 64) + 8);
      *(a1 + 64) = v31;
      v33 = (v34 - v31) >> 3;
    }

    while (v33 > 2);
  }

  if (v33 == 1)
  {
    v35 = 85;
  }

  else
  {
    if (v33 != 2)
    {
      goto LABEL_38;
    }

    v35 = 170;
  }

  *(a1 + 88) = v35;
LABEL_38:
  v36 = *(a1 + 160);
  v37 = *(a1 + 168);
  *(a1 + 192) = 0;
  v38 = (v37 - v36) >> 3;
  if (v38 >= 3)
  {
    do
    {
      operator delete(*v36);
      v39 = *(a1 + 168);
      v36 = (*(a1 + 160) + 8);
      *(a1 + 160) = v36;
      v38 = (v39 - v36) >> 3;
    }

    while (v38 > 2);
  }

  if (v38 == 1)
  {
    v40 = 85;
    goto LABEL_44;
  }

  if (v38 == 2)
  {
    v40 = 170;
LABEL_44:
    *(a1 + 184) = v40;
  }

  v41 = *(a1 + 208);
  v42 = *(a1 + 216);
  *(a1 + 240) = 0;
  v43 = (v42 - v41) >> 3;
  if (v43 >= 3)
  {
    do
    {
      operator delete(*v41);
      v44 = *(a1 + 216);
      v41 = (*(a1 + 208) + 8);
      *(a1 + 208) = v41;
      v43 = (v44 - v41) >> 3;
    }

    while (v43 > 2);
  }

  if (v43 == 1)
  {
    v45 = 128;
  }

  else
  {
    if (v43 != 2)
    {
      goto LABEL_57;
    }

    v45 = 256;
  }

  *(a1 + 232) = v45;
LABEL_57:
  v49 = *(a1 + 96);
  if (v49 < 2)
  {
    goto LABEL_71;
  }

  v50 = *(a1 + 88);
  v51 = v50 + v49;
  v52 = *(a1 + 64);
  v53 = *(a1 + 72);
  v54 = (v52 + 8 * (v51 / 0xAA));
  v55 = *v54 + 24 * (v51 % 0xAA);
  if (v53 == v52)
  {
    v55 = 0;
  }

  v56 = v55 - *v54;
  v57 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 3);
  if (v56 < 25)
  {
    v63 = 170 - v57;
    v64 = (170 - v57) / 0xAA;
    v60 = &v54[-v64];
    v61 = *v60;
    v62 = *v60 + 24 * (170 * v64 - v63) + 4056;
  }

  else
  {
    v58 = v57 - 1;
    v59 = (v57 - 1) / 0xAA;
    v60 = &v54[v59];
    v61 = *v60;
    v62 = *v60 + 24 * (v58 - 170 * v59);
  }

  v65 = v62 - v61;
  v66 = 0xAAAAAAAAAAAAAAABLL * ((v62 - v61) >> 3);
  if (v65 < 25)
  {
    v67 = v60[-((170 - v66) / 0xAA)] + 24 * (170 * ((170 - v66) / 0xAA) - (170 - v66)) + 4056;
  }

  else
  {
    v67 = v60[(v66 - 1) / 0xAA] + 24 * ((v66 - 1) % 0xAA);
  }

  v68 = *(v67 + 8);
  v392 = *(v62 + 8);
  if (v68 <= 0.0 && *(v62 + 8) > 0.0)
  {
    *(a1 + 392) = *(a1 + 416);
    *(a1 + 408) = *(a1 + 432);
    *(a1 + 416) = *v62;
    *(a1 + 424) = 0;
    *(a1 + 432) = 0;
    goto LABEL_69;
  }

  if (v68 < 0.0 || v392 >= 0.0 || *(a1 + 392) <= 0.0 || *(a1 + 408) <= 0.0 || *(a1 + 416) <= 0.0 || *(a1 + 432) <= 0.0)
  {
    goto LABEL_69;
  }

  v336 = v62;
  v415 = 0;
  v414 = 0u;
  v413 = 0u;
  v412 = 0u;
  v411 = 0u;
  v410 = 0u;
  memset(buf, 0, sizeof(buf));
  v137 = (v52 + 8 * (v50 / 0xAA));
  if (v53 == v52)
  {
    v138 = 0;
    v139 = 0;
  }

  else
  {
    v138 = (*v137 + 24 * (v50 % 0xAA));
    v139 = (*v54 + 24 * (v51 % 0xAA));
  }

  v151 = a2;
  v152 = sub_1007CE63C(v137, v138, v54, v139, (a1 + 400));
  v154 = v153;
  v155 = *(a1 + 88) + *(a1 + 96);
  v156 = *(a1 + 64);
  v157 = (v156 + 8 * (v155 / 0xAA));
  if (*(a1 + 72) == v156)
  {
    v158 = 0;
  }

  else
  {
    v158 = (*v157 + 24 * (v155 % 0xAA));
  }

  v159 = v152;
  v160 = sub_1007CE724(v152, v153, v157, v158, (a1 + 424));
  v364 = v161;
  v162 = a2[4];
  v163 = a2[1];
  v164 = (v163 + 8 * (v162 / 0x49));
  v337 = v154;
  if (a2[2] == v163)
  {
    v165 = 0;
    v168 = 0;
    v167 = (v163 + (((((*v390 + v162) * 0x70381C0E070381C1uLL) >> 64) >> 2) & 0x1FFFFFFFFFFFFFF8));
  }

  else
  {
    v165 = *(v163 + 8 * (v162 / 0x49)) + 56 * (v162 % 0x49);
    v166 = *v390 + v162;
    v167 = (v163 + 8 * (v166 / 0x49));
    v168 = *v167 + 56 * (v166 % 0x49);
  }

  v363 = sub_1007CE808(v164, v165, v167, v168, (a1 + 400));
  v170 = v169;
  v171 = *(a1 + 2664);
  if (v171 == 1)
  {
    if (*(a1 + 2668) != 1)
    {
LABEL_169:
      v172 = sub_1007CE9B8(v159, v154, v160, v364, a1);
      goto LABEL_172;
    }
  }

  else if (v171 || *(a1 + 2668))
  {
    goto LABEL_169;
  }

  v172 = sub_1007CE904(v159, v154, v160, v364, a1);
LABEL_172:
  v382 = v173;
  if (v172 >= v160 && (v172 != v160 || v173 >= v364) || v173 == v154)
  {
    if (qword_1025D44C0 != -1)
    {
      sub_10193B310();
    }

    v175 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_ERROR))
    {
      v176 = *(a1 + 2664);
      v177 = *(a1 + 2668);
      *v407 = 67240448;
      *&v407[4] = v176;
      *&v407[8] = 1026;
      *&v407[10] = v177;
      _os_log_impl(dword_100000000, v175, OS_LOG_TYPE_ERROR, "[FormModels] Unable to determine swing extrema. Verify correct watch orientation: Wrist=%{public}d, Crown=%{public}d", v407, 0xEu);
    }

    v151 = a2;
    if (sub_10000A100(121, 0))
    {
      sub_10193B554((a1 + 2664), a1);
      v151 = a2;
    }
  }

  else
  {
    v415 = 1;
  }

  v178 = 0;
  v179 = *(a1 + 64);
  v180 = -1.79769313e308;
  v181 = 1.79769313e308;
  v182 = 0.0;
  v183 = v159;
  v184 = v337;
LABEL_184:
  v185 = v184 - 510;
  while (1)
  {
    if (*(a1 + 72) == v179)
    {
      v187 = 0;
    }

    else
    {
      v186 = *(a1 + 96) + *(a1 + 88);
      v187 = *(v179 + 8 * (v186 / 0xAA)) + 24 * (v186 % 0xAA);
    }

    if (v184 == v187 || v184 == v364)
    {
      break;
    }

    v174 = *v184;
    if (*v184 >= *v382)
    {
      v188 = fabsf(*(v184 + 2));
      v189 = *(v184 + 3);
      if (v180 < v189)
      {
        v180 = *(v184 + 3);
      }

      if (v181 > v189)
      {
        v181 = *(v184 + 3);
      }

      v174 = v188;
      v182 = v182 + v174;
      ++v178;
    }

    v184 += 3;
    v185 += 3;
    if (*v183 == v185)
    {
      v190 = v183[1];
      ++v183;
      v184 = v190;
      goto LABEL_184;
    }
  }

  v332 = v182;
  v334 = v181;
  v335 = v180;
  v400 = 0;
  __p = 0;
  v401 = 0;
  *v407 = v159;
  *&v407[8] = v337;
  *v402 = v160;
  *&v402[8] = v364;
  sub_1007CEA6C(v407, v402, &__p, v174);
  v333 = v178;
  if (v364 == v337)
  {
    v191 = 0;
    v192 = v159;
  }

  else
  {
    v193 = 170 * (v160 - v159);
    v194 = *v160;
    v192 = v159;
    v191 = v193 - 0x5555555555555555 * ((v364 - v194) >> 3) + 0x5555555555555555 * ((v337 - *v159) >> 3);
  }

  v195 = *(a1 + 136);
  v196 = *(a1 + 112);
  v197 = (v196 + 8 * (v195 / 0xAA));
  if (*(a1 + 120) == v196)
  {
    v198 = 0;
  }

  else
  {
    v198 = (*v197 + 24 * (v195 % 0xAA));
  }

  v398[0] = v196 + 8 * (v195 / 0xAA);
  v398[1] = v198;
  v199 = v151[1];
  if (v151[2] == v199)
  {
    v201 = 0;
  }

  else
  {
    v200 = v151[5] + v151[4];
    v201 = *(v199 + 8 * (v200 / 0x49)) + 56 * (v200 % 0x49);
  }

  if (v201 == v170)
  {
    v202 = 0.0;
  }

  else
  {
    v202 = *(v170 + 40);
  }

  if (v191 < 1)
  {
    v309.i32[0] = *(a1 + 2536);
    v318 = *(a1 + 448);
    v319 = -1.0;
    v203 = -1.79769313e308;
    v204 = 1.79769313e308;
    v316 = v337;
    goto LABEL_307;
  }

  v383 = 0;
  v356 = 0;
  v203 = -1.79769313e308;
  v204 = 1.79769313e308;
  v389 = 0.0;
  v205 = 0.0;
  v343 = 0.0;
  v344 = 0.0;
  v206 = 0.0;
  v340 = 0.0;
  v341 = 0.0;
  v207 = 0.0;
  v208 = 0.0;
  v349 = 0.0;
  v350 = -1.79769313e308;
  v353 = -1.79769313e308;
  v354 = 1.79769313e308;
  v209 = 0.0;
  v342 = 0.0;
  v345 = v191;
  v331 = v191 & ~(v191 >> 63);
  v338 = 0.0;
  v339 = 0.0;
  v210 = 0.0;
  v347 = 0.0;
  v348 = 0.0;
  v211 = 0.0;
  v355 = -1.79769313e308;
  v212 = 0.0;
  v381 = 0.0;
  v346 = 0.0;
  v351 = 0.0;
  v352 = 0.0;
  v384 = v337;
  do
  {
    v377 = v208;
    v379 = v209;
    v380 = v207;
    v397 = *(v170 + 40);
    v213 = sub_10011E6AC(v170);
    v214 = *(a1 + 136) + *(a1 + 144);
    v215 = *(a1 + 112);
    v216 = (v215 + 8 * (v214 / 0xAA));
    v387 = v213;
    v386 = v217;
    v385 = v218;
    v373 = v210;
    v374 = v211;
    v370 = v206;
    v372 = v212;
    if (*(a1 + 120) == v215)
    {
      v219 = 0;
    }

    else
    {
      v219 = *v216 + 24 * (v214 % 0xAA);
    }

    v220 = *(v170 + 28);
    v221 = *(v170 + 32);
    v222 = *(v170 + 36);
    v223 = v397;
    if (v219 == v198 || (v224 = 170 * (v216 - v197) - 0x5555555555555555 * ((v219 - *v216) >> 3) + 0x5555555555555555 * ((v198 - *v197) >> 3)) == 0)
    {
      v229 = *(v170 + 36);
      v227 = *(v170 + 32);
      v228 = *(v170 + 28);
    }

    else
    {
      v376 = v192;
      do
      {
        v225 = v224 >> 1;
        *v407 = v197;
        *&v407[8] = v198;
        sub_1000C9AF4(v407, v224 >> 1);
        v226 = *&v407[8];
        if (**&v407[8] < *(a1 + 400))
        {
          v198 = (*&v407[8] + 24);
          *&v407[8] += 24;
          v197 = *v407;
          if (v226 + 24 - **v407 == 4080)
          {
            v197 = (*v407 + 8);
            v198 = *(*v407 + 8);
          }

          v225 = v224 + ~v225;
        }

        v224 = v225;
      }

      while (v225);
      v228 = *(v170 + 28);
      v227 = *(v170 + 32);
      v229 = *(v170 + 36);
      v192 = v376;
    }

    v375 = v203;
    v230 = 0;
    v360 = vabds_f32(v222, v385 * (((v385 * v222) + (v386 * v221)) + (v387 * v220)));
    v361 = v222;
    v362 = fabsf(v221);
    v231 = v223 - v202;
    v232 = v198[2];
    v233 = v198[3];
    v234 = v198[4];
    v235 = ((v234 * v229) + (v233 * v227)) + (v232 * v228);
    v368 = fabsf(((v385 * (v234 * v235)) + (v386 * (v233 * v235))) + (v387 * (v232 * v235)));
    v358 = 1.0 - v368;
    v359 = v232 * v235;
    v236 = *(v170 + 16);
    v237 = *(v170 + 20);
    v238 = *(v170 + 24);
    v239 = ((v385 * v238) + (v386 * v237)) + (v387 * v236);
    v357 = v236 - (v387 * v239);
    *v402 = v357;
    *&v402[4] = v237 - (v386 * v239);
    *&v402[8] = v238 - (v385 * v239);
    v240 = 0.0;
    do
    {
      v240 = v240 + (*&v402[v230] * *&v402[v230]);
      v230 += 4;
    }

    while (v230 != 12);
    v366 = v384[2];
    v365 = v384[3];
    v241 = v384[4];
    if ((atomic_load_explicit(byte_102659FD0, memory_order_acquire) & 1) == 0)
    {
      sub_10193B678();
    }

    v242 = sub_10065C438(*&qword_102659FD8, *(&qword_102659FD8 + 1), *&dword_102659FE0, v387, v386, v385);
    v243 = fabsf(v237);
    v244 = vabds_f32(v241, v241 * (((v385 * v241) + (v365 * v386)) + (v366 * v387)));
    v245 = (*&v242 * 57.296);
    v246 = v368;
    if (v231 <= 0.0)
    {
      v247 = 0.0;
    }

    else
    {
      v247 = v231 * (v370 + v368) * 0.5;
    }

    v371 = v243;
    if (v231 <= 0.0)
    {
      v248 = 0.0;
    }

    else
    {
      v248 = v231 * (v377 + v371) * 0.5;
    }

    v378 = v239;
    v249 = v231 * (v379 + v239) * 0.5;
    if (v231 <= 0.0)
    {
      v249 = 0.0;
    }

    v250 = v381 + v249;
    if (v231 <= 0.0)
    {
      v251 = 0.0;
    }

    else
    {
      v251 = v231 * (v380 + v245) * 0.5;
    }

    v252 = v244;
    v381 = v381 + v249;
    v253 = fabs(v250);
    v367 = v245;
    v369 = v368;
    if (v397 >= *v382)
    {
      v264 = fabsf(v357);
      v265 = v231 * (v340 + v245) * 0.5;
      if (v231 <= 0.0)
      {
        v265 = 0.0;
      }

      v348 = v348 + v265;
      v266 = (v339 + v362) * v231 * 0.5;
      if (v231 <= 0.0)
      {
        v266 = 0.0;
      }

      v352 = v352 + v266;
      v344 = v344 + v264;
      ++v356;
      v267 = v231 * (v341 + v253) * 0.5;
      if (v231 <= 0.0)
      {
        v267 = 0.0;
      }

      v347 = v347 + v267;
      v339 = v362;
      v340 = v245;
      v341 = v253;
    }

    else
    {
      v254 = fabsf(sqrtf(v240));
      v255 = (v359 * v358);
      if (v355 >= v255)
      {
        v256 = v355;
      }

      else
      {
        v256 = (v359 * v358);
      }

      v257 = v354;
      if (v354 > v255)
      {
        v257 = (v359 * v358);
      }

      v354 = v257;
      v355 = v256;
      v258 = v350;
      if (v350 < v360)
      {
        v258 = v360;
      }

      v350 = v258;
      v259 = v353;
      if (v353 < v361)
      {
        v259 = v361;
      }

      v353 = v259;
      v260 = v254;
      v261 = v231 * (v338 + v254) * 0.5;
      if (v231 <= 0.0)
      {
        v261 = 0.0;
      }

      v351 = v351 + v261;
      v262 = v231 * (v343 + v246) * 0.5;
      if (v231 <= 0.0)
      {
        v262 = 0.0;
      }

      v349 = v349 + v262;
      v263 = v231 * (v342 + v253) * 0.5;
      if (v231 <= 0.0)
      {
        v263 = 0.0;
      }

      v346 = v346 + v263;
      v338 = v260;
      v342 = v253;
      v343 = v246;
    }

    v203 = v375;
    v268 = 0;
    v210 = v373 + v247;
    v212 = v372 + v248;
    v211 = v374 + v251;
    v389 = v389 + v252;
    v269 = v383 + 1;
    v270 = *(v170 + 16);
    v271 = *(v170 + 20);
    v272 = *(v170 + 24);
    v273 = ((v385 * v272) + (v271 * v386)) + (v270 * v387);
    *&v393 = v270 - (v387 * v273);
    *(&v393 + 1) = v271 - (v386 * v273);
    *(&v393 + 2) = v272 - (v385 * v273);
    v274 = 0.0;
    do
    {
      v274 = v274 + (*(&v393 + v268) * *(&v393 + v268));
      v268 += 4;
    }

    while (v268 != 12);
    v275 = 0;
    v276 = sqrtf(v274);
    v277 = 0.0;
    do
    {
      v277 = v277 + (*(v170 + 28 + v275) * *(v170 + 28 + v275));
      v275 += 4;
    }

    while (v275 != 12);
    v278 = sqrtf(v277);
    if (v204 > v278)
    {
      v204 = v278;
    }

    v279 = (v385 * *(v170 + 36)) + (*(v170 + 32) * v386);
    if (v375 < (v279 + (*(v170 + 28) * v387)))
    {
      v203 = (v279 + (*(v170 + 28) * v387));
    }

    memset(v396, 0, 12);
    v280 = *(a1 + 136) + *(a1 + 144);
    v281 = *(a1 + 112);
    v282 = (v281 + 8 * (v280 / 0xAA));
    if (*(a1 + 120) == v281)
    {
      v283 = 0;
    }

    else
    {
      v283 = (*v282 + 24 * (v280 % 0xAA));
    }

    if ((sub_1007CEE2C(v398, v397, v282, v283, v396) & 1) == 0)
    {
      if (qword_1025D44C0 != -1)
      {
        sub_10193B310();
      }

      v284 = qword_1025D44C8;
      if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_ERROR))
      {
        *v407 = 0;
        _os_log_impl(dword_100000000, v284, OS_LOG_TYPE_ERROR, "[FormModels] Failed to get primary axis of rotation", v407, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10193B6C0(v407);
        v395[0] = 0;
        LODWORD(v329) = 2;
        _os_log_send_and_compose_impl(2, 0, v407, 1628, dword_100000000, qword_1025D44C8, 16, "[FormModels] Failed to get primary axis of rotation", v395, *&v329);
        v302 = v301;
        sub_100152C7C("Generic", 1, 0, 0, "void CLRunning::FormModels::feedDeviceMotion(const DeviceMotionQueue &, const StepQueue &)", "%s\n", v301);
        if (v302 != v407)
        {
          free(v302);
        }
      }
    }

    v285 = __p + 12 * v383;
    v286 = (vmuls_lane_f32(*(v170 + 36), *(v396 + 4), 1) + (*(v396 + 1) * *(v170 + 32))) + (*v396 * *(v170 + 28));
    v287 = *v396 * v286;
    v288 = vmul_n_f32(*(v396 + 4), v286);
    v289 = *(v285 + 4);
    v290.i32[0] = vdup_lane_s32(v288, 1).u32[0];
    v290.f32[1] = v287;
    v291.i32[0] = vdup_lane_s32(v289, 1).u32[0];
    v291.i32[1] = *v285;
    v292 = (*(v170 + 24) * 9.8067) - ((v287 * *v289.i32) - (*v288.i32 * *v285));
    *v407 = vsub_f32(vmul_f32(*(v170 + 16), vdup_n_s32(0x411CE80Au)), vmla_f32(vmul_f32(v289, vneg_f32(v290)), v291, v288));
    *&v407[8] = v292;
    v293 = *(a1 + 192);
    if (v293)
    {
      v294 = v293 + *(a1 + 184) - 1;
      v295 = *(a1 + 160);
      if (*(v295[v294 / 0xAA] + 3 * (v294 % 0xAA)) - v397 > 0.1)
      {
        v296 = *(a1 + 168);
        *(a1 + 192) = 0;
        v297 = (v296 - v295) >> 3;
        if (v297 >= 3)
        {
          do
          {
            operator delete(*v295);
            v298 = *(a1 + 168);
            v295 = (*(a1 + 160) + 8);
            *(a1 + 160) = v295;
            v297 = (v298 - v295) >> 3;
          }

          while (v297 > 2);
        }

        if (v297 == 1)
        {
          v299 = 85;
        }

        else
        {
          if (v297 != 2)
          {
            goto LABEL_290;
          }

          v299 = 170;
        }

        *(a1 + 184) = v299;
      }
    }

LABEL_290:
    sub_1007CF040((a1 + 152), &v397, v407);
    v384 += 6;
    if ((v384 - *v192) == 4080)
    {
      v300 = v192[1];
      ++v192;
      v384 = v300;
    }

    v170 += 56;
    if (v170 - *v363 == 4088)
    {
      v170 = v363[1];
      ++v363;
    }

    v205 = v205 + v276;
    ++v383;
    v207 = v367;
    v206 = v369;
    v202 = v397;
    v208 = v371;
    v209 = v378;
  }

  while (v269 != v345);
  *&v306 = v347 + v346;
  *&v307 = v346;
  *(&v412 + 4) = __PAIR64__(v307, v306);
  v308 = v347;
  *(&v412 + 3) = v308;
  v309 = *(a1 + 2536);
  *buf = vrev64_s32(v309);
  v310 = 0.0;
  v311 = 0.0;
  if (v333 > 0)
  {
    v311 = v332 / v333;
  }

  *&v314 = v335 - v334;
  *&v410 = __PAIR64__(v314, LODWORD(v311));
  v315 = v355 - v354;
  v303 = v350;
  *&buf[28] = v303;
  *&buf[16] = v315;
  *&buf[12] = v349;
  *&buf[8] = v210;
  v304 = v212;
  *(&v410 + 2) = v304;
  v305 = v348;
  *(&v411 + 2) = v305;
  v316 = v337;
  if (v356 >= 1)
  {
    v310 = v344 / v356;
  }

  *&buf[24] = v310;
  *&buf[20] = v351;
  v312 = v353;
  *(&v410 + 3) = v312;
  v313 = v352;
  *&v411 = v313;
  *(&v411 + 1) = v211;
  if (v345)
  {
    v317 = v389 / v345;
  }

  else
  {
    v317 = 0.0;
  }

  *&v413 = v317;
  v318 = *(a1 + 448);
  *(&v413 + 1) = *v382 + v318;
  v319 = sqrt(v205 / v331);
LABEL_307:
  v320 = *v309.i32 * 100.0;
  *&v393 = v320;
  *(&v393 + 1) = v319;
  v321 = v204;
  *&v394 = v204;
  *(&v394 + 1) = v203;
  v322 = v203;
  v323 = *v316 + v318;
  v324 = v318 + *v364;
  if (v324 - v323 > 0.0)
  {
    v325 = 2.0 / (v324 - v323);
    *(&v413 + 1) = v325;
  }

  v396[0] = 0.0;
  if (sub_1007CF13C(&v393, v396))
  {
    *v407 = v396[0];
    *&v407[8] = v324;
    *&v407[16] = v393;
    v408 = v394;
    sub_1007CF1E8((a1 + 344), v407);
  }

  else
  {
    if (qword_1025D44C0 != -1)
    {
      sub_10193B310();
    }

    v326 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_ERROR))
    {
      *v407 = 134218752;
      *&v407[4] = v320;
      *&v407[12] = 2048;
      *&v407[14] = v319;
      *&v407[22] = 2048;
      *&v407[24] = v321;
      LOWORD(v408) = 2048;
      *(&v408 + 2) = v322;
      _os_log_impl(dword_100000000, v326, OS_LOG_TYPE_ERROR, "[FormModels] Invalid StrideLength features (%.f,%.f,%.f,%.f)", v407, 0x2Au);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193B6C0(v407);
      *v402 = 134218752;
      *&v402[4] = v320;
      *&v402[12] = 2048;
      *&v402[14] = v319;
      v403 = 2048;
      v404 = v321;
      v405 = 2048;
      v406 = v322;
      LODWORD(v329) = 42;
      _os_log_send_and_compose_impl(2, 0, v407, 1628, dword_100000000, qword_1025D44C8, 16, "[FormModels] Invalid StrideLength features (%.f,%.f,%.f,%.f)", COERCE_DOUBLE(v402), v329, v330, *&v331);
      v328 = v327;
      sub_100152C7C("Generic", 1, 0, 0, "void CLRunning::FormModels::feedDeviceMotion(const DeviceMotionQueue &, const StepQueue &)", "%s\n", v327);
      if (v328 != v407)
      {
        free(v328);
      }
    }
  }

  *&v414 = v323;
  *(&v414 + 1) = v324;
  sub_1007CF298((a1 + 296), buf);
  if (__p)
  {
    v400 = __p;
    operator delete(__p);
  }

  v62 = v336;
LABEL_69:
  if (*(a1 + 432) < v392)
  {
    *(a1 + 432) = v392;
    *(a1 + 424) = *v62;
  }

LABEL_71:
  v69 = *(a1 + 192);
  if (v69 >= 0x101)
  {
    v70 = (a1 + 328);
    v71 = &unk_102659000;
    v72 = &unk_102659000;
    do
    {
      if (!*(a1 + 336))
      {
        break;
      }

      v73 = *(a1 + 304);
      v74 = *(a1 + 312) == v73 ? 0 : *(v73 + 8 * (v70->i64[0] / 0x22uLL)) + 120 * (v70->i64[0] % 0x22uLL);
      v75 = *(a1 + 184);
      v76 = v75 / 0xAA;
      v77 = *(a1 + 160);
      if (*(a1 + 168) == v77)
      {
        v81 = 0;
        *v407 = v77 + 8 * (v75 / 0xAA);
        *&v407[8] = 0;
        v80 = (v77 + 8 * ((v75 + v69) / 0xAA));
      }

      else
      {
        v78 = *(v77 + 8 * v76);
        *v407 = v77 + 8 * v76;
        *&v407[8] = v78 + 24 * (v75 % 0xAA);
        v79 = v75 + v69;
        v80 = (v77 + 8 * (v79 / 0xAA));
        v81 = *v80 + 24 * (v79 % 0xAA);
      }

      *buf = v80;
      *&buf[8] = v81;
      sub_1007CF39C(v407, buf, a1 + 472, v402);
      v82 = *(*(*(a1 + 160) + 8 * ((*(a1 + 184) + 128) / 0xAAuLL)) + 24 * ((*(a1 + 184) + 128) % 0xAAuLL));
      v83 = v391[1];
      if (v391[2] == v83)
      {
        v87 = 0;
      }

      else
      {
        v84 = v391[4];
        v85 = ((v84 * v7) >> 64) >> 5;
        v86 = v84 - 73 * v85;
        v87 = (*(v83 + 8 * v85) + 56 * v86);
        v88 = *v390 + v84;
        v89 = ((v88 * v7) >> 64) >> 5;
        v90 = v88 - 73 * v89;
        if ((*(v83 + 8 * v89) + 56 * v90) != v87)
        {
          v91 = v72;
          v92 = v7;
          v93 = v90 + 73 * ((8 * v89 - 8 * v85) >> 3);
          v94 = v93 - v86;
          if (v93 == v86)
          {
            v7 = v92;
          }

          else
          {
            v95 = v71;
            v96 = v83 + 8 * v85;
            do
            {
              v97 = v94 >> 1;
              *v407 = v96;
              *&v407[8] = v87;
              sub_1007D4114(v407, v94 >> 1);
              v98 = *&v407[8];
              if (*(*&v407[8] + 40) < v82)
              {
                v87 = (*&v407[8] + 56);
                *&v407[8] += 56;
                v96 = *v407;
                if (v98 + 56 - **v407 == 4088)
                {
                  v96 = *v407 + 8;
                  v87 = *(*v407 + 8);
                }

                v97 = v94 + ~v97;
              }

              v94 = v97;
            }

            while (v97);
            v7 = v92;
            v71 = v95;
          }

          v72 = v91;
        }
      }

      v99 = sub_10011E6AC(v87);
      v102 = v82 + *(a1 + 448);
      if (v102 > *(v74 + 88))
      {
        v103 = ((v101 * *&v402[16]) + (*&v402[12] * v100)) + (*&v402[8] * v99);
        v104 = fabsf(v103);
        v105 = v71[504];
        if (v105 <= 0.0)
        {
          v106 = v104;
        }

        else
        {
          v106 = v104;
          v107 = v82 - v105;
          if (v107 <= 0.0)
          {
            v108 = 0.0;
          }

          else
          {
            v108 = v107 * (v72[503] + v106) * 0.5;
          }

          *&qword_102659FC8 = *&qword_102659FC8 + v108;
          *&v109 = v103;
          if (*&qword_1025D8730 < *&v109)
          {
            qword_1025D8730 = v109;
          }

          if (*&qword_1025D8738 > *&v109)
          {
            qword_1025D8738 = v109;
          }
        }

        v72[503] = v106;
        v71[504] = v82;
      }

      if (v102 >= *(v74 + 104))
      {
        v110 = *&qword_102659FC8;
        v111 = *&qword_1025D8730 - *&qword_1025D8738;
        *(v74 + 60) = v111;
        *(v74 + 64) = v110;
        v112 = sub_1007CF514(a1, v74);
        if (qword_1025D44C0 != -1)
        {
          sub_10193B310();
        }

        v113 = (v112 * 0.001);
        v114 = qword_1025D44C8;
        if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
        {
          v115 = *(v74 + 96);
          v116 = v82 + *(a1 + 448);
          *v407 = 134349824;
          *&v407[4] = v115;
          *&v407[12] = 2050;
          *&v407[14] = v116;
          *&v407[22] = 2050;
          *&v407[24] = v82;
          LOWORD(v408) = 2048;
          *(&v408 + 2) = v113;
          _os_log_impl(dword_100000000, v114, OS_LOG_TYPE_DEBUG, "[FormModels] VerticalOscillationEvent,startTime,%{public}.2f,endTime,%{public}.2f,timestamp,%{public}.2f,displacement,%.3f", v407, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(v407, 0x65CuLL);
          if (qword_1025D44C0 != -1)
          {
            sub_10193B310();
          }

          v117 = *(v74 + 96);
          v118 = v82 + *(a1 + 448);
          *buf = 134349824;
          *&buf[4] = v117;
          *&buf[12] = 2050;
          *&buf[14] = v118;
          *&buf[22] = 2050;
          *&buf[24] = v82;
          LOWORD(v410) = 2048;
          *(&v410 + 2) = v113;
          LODWORD(v329) = 42;
          _os_log_send_and_compose_impl(2, 0, v407, 1628, dword_100000000, qword_1025D44C8, 2, "[FormModels] VerticalOscillationEvent,startTime,%{public}.2f,endTime,%{public}.2f,timestamp,%{public}.2f,displacement,%.3f", buf, *&v329);
          v120 = v119;
          sub_100152C7C("Generic", 1, 0, 2, "void CLRunning::FormModels::feedDeviceMotion(const DeviceMotionQueue &, const StepQueue &)", "%s\n", v119);
          if (v120 != v407)
          {
            free(v120);
          }
        }

        *v70 = vaddq_s64(*v70, xmmword_101C66230);
        sub_1007D56B8(a1 + 296, 1);
        if (*(a1 + 336))
        {
          v74 = *(*(a1 + 304) + 8 * (*(a1 + 328) / 0x22uLL)) + 120 * (*(a1 + 328) % 0x22uLL);
        }

        if (*(v74 + 112) == 1)
        {
          *v407 = v82;
          *&v407[8] = v113;
          sub_1007CF6D8((a1 + 248), v407);
        }

        qword_1025D8730 = 0xFFEFFFFFFFFFFFFFLL;
        qword_1025D8738 = 0x7FEFFFFFFFFFFFFFLL;
        v72[503] = 0.0;
        v71[504] = 0.0;
        qword_102659FC8 = 0;
      }

      *(a1 + 184) = vaddq_s64(*(a1 + 184), xmmword_101C66230);
      sub_10027E208(a1 + 152, 1);
      v69 = *(a1 + 192);
    }

    while (v69 > 0x100);
  }

  v121 = *(a1 + 2608) + 1;
  *(a1 + 2608) = v121;
  v122 = v121 & 7;
  if (*v390 >= 0x80uLL && v122 == 0)
  {
    v124 = v391[4] + *v390;
    v125 = ((v124 * v7) >> 64) >> 5;
    v126 = v391[1];
    v127 = v391[2];
    v128 = (v126 + 8 * v125);
    v129 = *v128;
    v130 = *v128 + 56 * (v124 - 73 * v125);
    if (v127 == v126)
    {
      v130 = 0;
    }

    v131 = v130 - v129;
    v132 = 0x6DB6DB6DB6DB6DB7 * ((v130 - v129) >> 3);
    if (v131 < 7169)
    {
      v140 = 200 - v132;
      v141 = ((v140 * v7) >> 64) >> 5;
      v135 = &v128[-v141];
      v136 = (*v135 + 56 * (73 * v141 - v140) + 4032);
    }

    else
    {
      v133 = v132 - 128;
      v134 = ((v133 * v7) >> 64) >> 5;
      v135 = &v128[v134];
      v136 = (*v135 + 56 * (v133 - 73 * v134));
    }

    v142 = (v129 + 56 * (v124 - 73 * v125));
    if (v127 == v126)
    {
      v143 = 0;
    }

    else
    {
      v143 = v142;
    }

    sub_1007D58EC(v407, v135, v136, v128, v143);
    *(a1 + 2608) = 0;
    if ((v388 & 1) != 0 || *(a1 + 2612) == 1)
    {
      sub_1007CF798(a1, v407);
    }

    sub_1005A842C(v407);
  }

  v144 = *(a1 + 96);
  if (v144 >= 0x101)
  {
    do
    {
      *(a1 + 96) = v144 - 1;
      ++*(a1 + 88);
      sub_10027E208(a1 + 56, 1);
      v144 = *(a1 + 96);
    }

    while (v144 > 0x100);
  }

  v145 = *(a1 + 144);
  if (v145 >= 0x51)
  {
    do
    {
      *(a1 + 144) = v145 - 1;
      ++*(a1 + 136);
      sub_10027E208(a1 + 104, 1);
      v145 = *(a1 + 144);
    }

    while (v145 > 0x50);
  }

  v146 = *(a1 + 240);
  if (v146 >= 0x101)
  {
    do
    {
      *(a1 + 240) = v146 - 1;
      ++*(a1 + 232);
      sub_100014444(a1 + 200, 1);
      v146 = *(a1 + 240);
    }

    while (v146 > 0x100);
  }

  v147 = *(a1 + 288);
  if (v147 >= 0x23)
  {
    do
    {
      ++*(a1 + 280);
      *(a1 + 288) = v147 - 1;
      sub_100014444(a1 + 248, 1);
      v147 = *(a1 + 288);
    }

    while (v147 > 0x22);
  }

  v148 = *(a1 + 384);
  if (v148 >= 0x23)
  {
    do
    {
      ++*(a1 + 376);
      *(a1 + 384) = v148 - 1;
      sub_10047C698(a1 + 344, 1);
      v148 = *(a1 + 384);
    }

    while (v148 > 0x22);
  }

  v149 = *(a1 + 2656);
  if (v149 >= 0x441)
  {
    do
    {
      v150 = *(a1 + 2648);
      *(a1 + 2656) = v149 - 1;
      *(a1 + 2648) = v150 + 1;
      sub_1007D5E78(a1 + 2616, 1);
      v149 = *(a1 + 2656);
    }

    while (v149 > 0x440);
  }
}

void sub_1007CDB50(_Unwind_Exception *a1)
{
  v2 = STACK[0x238];
  if (STACK[0x238])
  {
    STACK[0x240] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1007CDBA4(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1[5];
  if (v4)
  {
    v5 = v1[4];
    v6 = v1[1];
    v7 = *(*(v6 + 8 * ((v4 + v5 - 1) / 0x16)) + 184 * ((v4 + v5 - 1) % 0x16) + 8);
    if (*v2 != v7)
    {
      if (v1[2] == v6)
      {
        v8 = 0;
        v11 = 0;
        v10 = (v6 + ((2 * (((v5 + v4) * 0x2E8BA2E8BA2E8BA3uLL) >> 64)) & 0x7FFFFFFFFFFFFFF8));
      }

      else
      {
        v8 = *(v6 + 8 * (v5 / 0x16)) + 184 * (v5 % 0x16);
        v9 = v5 + v4;
        v10 = (v6 + 8 * (v9 / 0x16));
        v11 = *v10 + 184 * (v9 % 0x16);
      }

      v13 = sub_1007D15F8((v6 + 8 * (v5 / 0x16)), v8, v10, v11);
      if (v13 <= 0.0)
      {
        bzero(__src, 0x404uLL);
        bzero(v20, 0x404uLL);
      }

      else
      {
        sub_1007D1DD4(v12);
        memset(v18, 0, 512);
        sub_1007D1DD4(v14);
        memset(v17, 0, 512);
        sub_1007D1DD4(v15);
        for (i = 0; i != 1028; i += 4)
        {
          *&__src[i] = *(v18 + i) + *(v17 + i);
        }
      }

      *v3 = v7;
      v3[1] = v13;
      memcpy(v3 + 2, __src, 0x404uLL);
      memcpy(v3 + 1044, v20, 0x404uLL);
    }
  }

  else
  {

    bzero(v2, 0x818uLL);
  }
}

BOOL sub_1007CDED4(void *a1, uint64_t a2)
{
  v2 = a1[5];
  if (v2 >= 0x100)
  {
    v53 = a1[5];
    __p = 0;
    v61 = 0;
    v62 = 0;
    v58 = 0;
    v59 = 0.0;
    v4 = a1[4] + v2;
    v5 = a1[1];
    v6 = a1[2];
    v7 = (v5 + 8 * (v4 / 0x49));
    v8 = *v7;
    v9 = *v7 + 56 * (v4 % 0x49);
    if (v6 == v5)
    {
      v9 = 0;
    }

    v10 = v9 - v8;
    v11 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v8) >> 3);
    if (v10 < 14337)
    {
      v15 = 328 - v11;
      v13 = &v7[-(v15 / 0x49)];
      v14 = *v13 + 56 * (73 * (v15 / 0x49) - v15) + 4032;
    }

    else
    {
      v12 = v11 - 256;
      v13 = &v7[v12 / 0x49];
      v14 = *v13 + 56 * (v12 % 0x49);
    }

    while (1)
    {
      if (v6 == v5)
      {
        v17 = 0;
      }

      else
      {
        v16 = a1[5] + a1[4];
        v17 = *(v5 + 8 * (v16 / 0x49)) + 56 * (v16 % 0x49);
      }

      if (v14 == v17)
      {
        break;
      }

      v18 = v61;
      if (v61 >= v62)
      {
        v21 = 0xAAAAAAAAAAAAAAABLL * ((v61 - __p) >> 2);
        v22 = v21 + 1;
        if (v21 + 1 > 0x1555555555555555)
        {
          sub_10028C64C();
        }

        if (0x5555555555555556 * ((v62 - __p) >> 2) > v22)
        {
          v22 = 0x5555555555555556 * ((v62 - __p) >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v62 - __p) >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v23 = 0x1555555555555555;
        }

        else
        {
          v23 = v22;
        }

        if (v23)
        {
          sub_1007D4324(&__p, v23);
        }

        v24 = 4 * ((v61 - __p) >> 2);
        v25 = *(v14 + 28);
        *(v24 + 8) = *(v14 + 36);
        *v24 = v25;
        v20 = 12 * v21 + 12;
        v26 = (12 * v21 - (v61 - __p));
        memcpy((v24 - (v61 - __p)), __p, v61 - __p);
        v27 = __p;
        __p = v26;
        v61 = v20;
        v62 = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        v19 = *(v14 + 28);
        *(v61 + 2) = *(v14 + 36);
        *v18 = v19;
        v20 = v18 + 12;
      }

      v28 = 0;
      v61 = v20;
      do
      {
        v29 = sub_10011AF6C(v14 + 28, v28);
        v30 = sub_10011AF30(&v58, v28);
        *v30 = v29 + *v30;
        ++v28;
      }

      while (v28 != 3);
      v14 += 56;
      if (v14 - *v13 == 4088)
      {
        v31 = v13[1];
        ++v13;
        v14 = v31;
      }

      v5 = a1[1];
      v6 = a1[2];
    }

    v56 = vmul_f32(v58, vdup_n_s32(0x3B800000u));
    v57 = v59 * 0.0039062;
    sub_1007D1C88(&__p, &v56, &v54);
    v32 = a1[4] + a1[5];
    v33 = a1[1];
    v34 = (v33 + 8 * (v32 / 0x49));
    v35 = *v34;
    v36 = *v34 + 56 * (v32 % 0x49);
    if (a1[2] == v33)
    {
      v36 = 0;
    }

    v37 = v36 - v35;
    v38 = 0x6DB6DB6DB6DB6DB7 * ((v36 - v35) >> 3);
    if (v37 < 7169)
    {
      v44 = 200 - v38;
      v45 = (200 - v38) / 0x49uLL;
      v41 = &v34[-v45];
      v42 = *v41;
      v43 = *v41 + 56 * (73 * v45 - v44) + 4032;
    }

    else
    {
      v39 = v38 - 128;
      v40 = (v38 - 128) / 0x49uLL;
      v41 = &v34[v40];
      v42 = *v41;
      v43 = *v41 + 56 * (v39 - 73 * v40);
    }

    v46 = v54;
    v47 = v55;
    v48 = v43 - v42;
    v49 = 0x6DB6DB6DB6DB6DB7 * ((v43 - v42) >> 3);
    if (v48 < -55)
    {
      v50 = v41[-((71 - v49) / 0x49uLL)] + 56 * (73 * ((71 - v49) / 0x49uLL) - (71 - v49)) + 4032;
    }

    else
    {
      v50 = v41[(v49 + 1) / 0x49uLL] + 56 * ((v49 + 1) % 0x49uLL);
    }

    *a2 = (*(v43 + 40) + *(v50 + 40)) * 0.5;
    *(a2 + 8) = v46;
    *(a2 + 16) = v47;
    if (__p)
    {
      v61 = __p;
      operator delete(__p);
    }

    v2 = v53;
  }

  return v2 > 0xFF;
}

void sub_1007CE320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1007CE348(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 170 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1007D4C28(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  result = *a2;
  v8[1].n128_u64[0] = a2[1].n128_u64[0];
  *v8 = result;
  ++a1[5];
  return result;
}

void sub_1007CE3F8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = v8 - **a1;
  v10 = 0x6DB6DB6DB6DB6DB7 * (v9 >> 3);
  if (v9 < -7167)
  {
    v11 = v7[-((-56 - v10) / 0x49uLL)] + 56 * (73 * ((-56 - v10) / 0x49uLL) - (-56 - v10)) + 4032;
  }

  else
  {
    v11 = v7[(v10 + 128) / 0x49uLL] + 56 * ((v10 + 128) % 0x49uLL);
  }

  v12 = 0;
  v18 = *(v11 + 40);
  LODWORD(v19) = 0;
  while (v8 != *(a2 + 8))
  {
    for (i = 0; i != 3; ++i)
    {
      v14 = sub_10011AF6C(v8 + 16, i);
      v15 = *(a3 + 4 * v12);
      v16 = sub_10011AF30(&v18 + 8, i);
      *v16 = *v16 + (v14 * v15);
    }

    v8 += 56;
    if (v8 - *v7 == 4088)
    {
      v17 = v7[1];
      ++v7;
      v8 = v17;
    }

    if (++v12 == 257)
    {
      *a4 = v18;
      *(a4 + 16) = v19;
      return;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
}

__n128 sub_1007CE58C(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 170 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1007D4DFC(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  result = *a2;
  v8[1].n128_u64[0] = a2[1].n128_u64[0];
  *v8 = result;
  ++a1[5];
  return result;
}

void *sub_1007CE63C(void *a1, double *a2, void *a3, double *a4, double *a5)
{
  v5 = a2;
  v6 = a1;
  if (a4 != a2)
  {
    v7 = 170 * (a3 - a1) - 0x5555555555555555 * ((a4 - *a3) >> 3) + 0x5555555555555555 * ((a2 - *a1) >> 3);
    if (v7)
    {
      do
      {
        v9 = v7 >> 1;
        v12 = v6;
        v13 = v5;
        sub_1000C9AF4(&v12, v7 >> 1);
        v10 = v13;
        if (*v13 < *a5)
        {
          v5 = v13 + 3;
          v13 += 3;
          v6 = v12;
          if ((v10 - *v12 + 24) == 4080)
          {
            v6 = v12 + 1;
            v5 = v12[1];
          }

          v9 = v7 + ~v9;
        }

        v7 = v9;
      }

      while (v9);
    }
  }

  return v6;
}

void *sub_1007CE724(void *a1, double *a2, void *a3, double *a4, double *a5)
{
  v5 = a2;
  v6 = a1;
  if (a4 != a2)
  {
    v7 = 170 * (a3 - a1) - 0x5555555555555555 * ((a4 - *a3) >> 3) + 0x5555555555555555 * ((a2 - *a1) >> 3);
    if (v7)
    {
      do
      {
        v9 = v7 >> 1;
        v11 = v6;
        v12 = v5;
        sub_1000C9AF4(&v11, v7 >> 1);
        if (*v12 < *a5)
        {
          v6 = v11;
          v5 = v12 + 3;
          if ((v12 - *v11 + 24) == 4080)
          {
            v6 = v11 + 1;
            v5 = v11[1];
          }

          v9 = v7 + ~v9;
        }

        v7 = v9;
      }

      while (v9);
    }
  }

  return v6;
}

void *sub_1007CE808(void *a1, uint64_t a2, void *a3, uint64_t a4, double *a5)
{
  v5 = a2;
  v6 = a1;
  if (a4 != a2)
  {
    v7 = 73 * (a3 - a1) + 0x6DB6DB6DB6DB6DB7 * ((a4 - *a3) >> 3) - 0x6DB6DB6DB6DB6DB7 * ((a2 - *a1) >> 3);
    if (v7)
    {
      do
      {
        v9 = v7 >> 1;
        v12 = v6;
        v13 = v5;
        sub_1007D4114(&v12, v7 >> 1);
        v10 = v13;
        if (*(v13 + 40) < *a5)
        {
          v5 = v13 + 56;
          v13 += 56;
          v6 = v12;
          if (v10 + 56 - *v12 == 4088)
          {
            v6 = v12 + 1;
            v5 = v12[1];
          }

          v9 = v7 + ~v9;
        }

        v7 = v9;
      }

      while (v9);
    }
  }

  return v6;
}

uint64_t *sub_1007CE904(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != a4)
  {
    v5 = *result;
    v6 = a2;
    v7 = result;
    while (1)
    {
      v6 += 24;
      if (v6 - v5 == 4080)
      {
        v8 = v7[1];
        ++v7;
        v5 = v8;
        v6 = v8;
      }

      if (v6 == a4)
      {
        return result;
      }

      v9 = *(a2 + 8);
      v10 = *(a5 + 2664);
      if (v10 == 1)
      {
        if (*(a5 + 2668) != 1)
        {
LABEL_10:
          v11 = *(v6 + 8);
          goto LABEL_19;
        }
      }

      else
      {
        if (v10)
        {
          goto LABEL_13;
        }

        if (*(a5 + 2668))
        {
          goto LABEL_10;
        }
      }

      v9 = -v9;
LABEL_13:
      v11 = *(v6 + 8);
      if (v10 == 1)
      {
        if (*(a5 + 2668) == 1)
        {
          goto LABEL_18;
        }
      }

      else if (!v10 && !*(a5 + 2668))
      {
LABEL_18:
        v11 = -v11;
      }

LABEL_19:
      if (v9 <= v11)
      {
        result = v7;
        a2 = v6;
      }
    }
  }

  return result;
}

uint64_t *sub_1007CE9B8(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != a4)
  {
    v5 = *result;
    v6 = a2;
    v7 = result;
    while (1)
    {
      v6 += 24;
      if (v6 - v5 == 4080)
      {
        v8 = v7[1];
        ++v7;
        v5 = v8;
        v6 = v8;
      }

      if (v6 == a4)
      {
        return result;
      }

      v9 = *(v6 + 8);
      v10 = *(a5 + 2664);
      if (v10 == 1)
      {
        if (*(a5 + 2668) != 1)
        {
LABEL_10:
          v11 = *(a2 + 8);
          goto LABEL_19;
        }
      }

      else
      {
        if (v10)
        {
          goto LABEL_13;
        }

        if (*(a5 + 2668))
        {
          goto LABEL_10;
        }
      }

      v9 = -v9;
LABEL_13:
      v11 = *(a2 + 8);
      if (v10 == 1)
      {
        if (*(a5 + 2668) == 1)
        {
          goto LABEL_18;
        }
      }

      else if (!v10 && !*(a5 + 2668))
      {
LABEL_18:
        v11 = -v11;
      }

LABEL_19:
      if (v9 <= v11)
      {
        result = v7;
        a2 = v6;
      }
    }
  }

  return result;
}

BOOL sub_1007CEA6C(uint64_t ***a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4 != v5)
  {
    v42 = *(a2 + 8);
    v8 = 0;
    __p = 0;
    v45 = 0;
    v46 = 0;
    v9 = *a1;
    v10 = **a1;
    v11 = 0;
    v12 = 0.0;
    v13 = vdup_n_s32(0x409CE80Au);
    v14 = 0.0;
    v43 = v4;
    v15 = 0;
    do
    {
      v16 = v4 - v10;
      v17 = 0xAAAAAAAAAAAAAAABLL * (v4 - v10);
      if (v16 < 25)
      {
        v18 = &v9[-((170 - v17) / 0xAA)][3 * (170 * ((170 - v17) / 0xAA) - (170 - v17)) + 507];
      }

      else
      {
        v18 = &v9[(v17 - 1) / 0xAA][3 * ((v17 - 1) % 0xAA)];
      }

      v19 = *v4 - *v18;
      v15 = vadd_f32(v15, vmul_f32(vmul_n_f32(vadd_f32(*(v18 + 8), v4[1]), v19), v13));
      v12 = v12 + (((*(v18 + 16) + *(v4 + 4)) * v19) * 4.9033);
      if (v8 >= v46)
      {
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v8 - __p) >> 2);
        v21 = v20 + 1;
        if (v20 + 1 > 0x1555555555555555)
        {
          sub_10028C64C();
        }

        if (0x5555555555555556 * ((v46 - __p) >> 2) > v21)
        {
          v21 = 0x5555555555555556 * ((v46 - __p) >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v46 - __p) >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v22 = 0x1555555555555555;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          sub_1007D4324(&__p, v22);
        }

        v23 = 4 * ((v8 - __p) >> 2);
        *v23 = v15;
        *(v23 + 8) = v12;
        v8 = (12 * v20 + 12);
        memcpy((12 * v20 - (v45 - __p)), __p, v45 - __p);
        v24 = __p;
        __p = (12 * v20 - (v45 - __p));
        v45 = v8;
        v46 = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v8 = v15;
        v8[1].f32[0] = v12;
        v8 = (v8 + 12);
      }

      v45 = v8;
      v4 += 3;
      v10 = *v9;
      if (v4 - *v9 == 4080)
      {
        v25 = v9[1];
        ++v9;
        v10 = v25;
        v4 = v25;
      }

      v11 = vadd_f32(v11, v15);
      v14 = v14 + v12;
    }

    while (v4 != *(a2 + 8));
    v26 = __p;
    if (v8 != __p)
    {
      *&a4 = (0xAAAAAAAAAAAAAAABLL * ((v8 - __p) >> 2));
      v27 = vdiv_f32(v11, vdup_lane_s32(*&a4, 0));
      v28 = v14 / *&a4;
      v29 = *(a3 + 8);
      do
      {
        v30 = vsub_f32(*v26, v27);
        v31 = v26[1].f32[0] - v28;
        v32 = *(a3 + 16);
        if (v29 >= v32)
        {
          v33 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *a3) >> 2);
          v34 = v33 + 1;
          if (v33 + 1 > 0x1555555555555555)
          {
            sub_10028C64C();
          }

          v35 = 0xAAAAAAAAAAAAAAABLL * ((v32 - *a3) >> 2);
          if (2 * v35 > v34)
          {
            v34 = 2 * v35;
          }

          if (v35 >= 0xAAAAAAAAAAAAAAALL)
          {
            v36 = 0x1555555555555555;
          }

          else
          {
            v36 = v34;
          }

          if (v36)
          {
            sub_1007D4324(a3, v36);
          }

          v37 = 4 * ((v29 - *a3) >> 2);
          *v37 = v30;
          *(v37 + 8) = v31;
          v29 = 12 * v33 + 12;
          v38 = *(a3 + 8) - *a3;
          v39 = 12 * v33 - v38;
          memcpy((v37 - v38), *a3, v38);
          v40 = *a3;
          *a3 = v39;
          *(a3 + 8) = v29;
          *(a3 + 16) = 0;
          if (v40)
          {
            operator delete(v40);
          }
        }

        else
        {
          *v29 = v30;
          *(v29 + 8) = v31;
          v29 += 12;
        }

        *(a3 + 8) = v29;
        v26 = (v26 + 12);
      }

      while (v26 != v8);
      v26 = __p;
    }

    v5 = v42;
    v4 = v43;
    if (v26)
    {
      v45 = v26;
      operator delete(v26);
    }
  }

  return v4 != v5;
}

void sub_1007CEE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007CEE2C(void *a1, double a2, uint64_t a3, double *a4, uint64_t a5)
{
  v5 = a1[1];
  if (v5 == a4)
  {
    return 0;
  }

  v8 = *a1;
  v9 = v5 - **a1;
  v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
  if (v9 < -23)
  {
    v15 = 168 - v10;
    v16 = 168 - v10;
    v12 = &v8[-((168 - v10) / 0xAA)];
    v13 = *v12;
    v14 = (*v12 + 24 * (170 * (v16 / 0xAA) - v15) + 4056);
  }

  else
  {
    v11 = v10 + 1;
    v12 = &v8[(v10 + 1) / 0xAA];
    v13 = *v12;
    v14 = (*v12 + 24 * (v11 % 0xAA));
  }

  if (v14 != a4)
  {
    while (*v14 <= a2)
    {
      v5 = v14;
      v8 = v12;
      v17 = v14 - v13;
      v18 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 3);
      if (v17 < -23)
      {
        v21 = 168 - v18;
        v22 = (168 - v18) / 0xAA;
        v12 = &v8[-v22];
        v13 = *v12;
        v14 = (*v12 + 24 * (170 * v22 - v21) + 4056);
      }

      else
      {
        v19 = v18 + 1;
        v20 = (v18 + 1) / 0xAA;
        v12 = &v8[v20];
        v13 = *v12;
        v14 = (*v12 + 24 * (v19 - 170 * v20));
      }

      if (v14 == a4)
      {
        goto LABEL_14;
      }
    }

    *a1 = v8;
    a1[1] = v5;
    if (*v5 <= a2)
    {
      for (i = 0; i != 3; ++i)
      {
        v26 = *v5;
        v27 = *sub_10011AF30((v5 + 1), i);
        v28 = *v14;
        v29 = sub_10011AF30((v14 + 1), i);
        *&v26 = sub_1000A1DCC(v26, v27, v28, *v29, a2);
        *sub_10011AF30(a5, i) = LODWORD(v26);
      }

      return 1;
    }

    return 0;
  }

LABEL_14:
  *a1 = v8;
  a1[1] = v5;
  v24 = *(v5 + 1);
  *(a5 + 8) = *(v5 + 4);
  *a5 = v24;
  return 1;
}

uint64_t sub_1007CF040(unint64_t *a1, void *a2, uint64_t *a3)
{
  v6 = a1[2];
  v7 = a1[1];
  v8 = 170 * ((v6 - v7) >> 3) - 1;
  if (v6 == v7)
  {
    v8 = 0;
  }

  v9 = a1[5] + a1[4];
  if (v8 == v9)
  {
    sub_1007D4FD0(a1);
    v7 = a1[1];
    v9 = a1[5] + a1[4];
  }

  v10 = *(v7 + 8 * (v9 / 0xAA)) + 24 * (v9 % 0xAA);
  v11 = *(a3 + 2);
  v12 = *a3;
  *v10 = *a2;
  *(v10 + 8) = v12;
  *(v10 + 16) = v11;
  v13 = a1[4];
  v14 = a1[5] + 1;
  a1[5] = v14;
  v15 = v13 + v14;
  v16 = a1[1];
  v17 = (v16 + 8 * (v15 / 0xAA));
  v18 = *v17 + 24 * (v15 % 0xAA);
  if (a1[2] == v16)
  {
    v18 = 0;
  }

  if (v18 == *v17)
  {
    v18 = *(v17 - 1) + 4080;
  }

  return v18 - 24;
}

uint64_t sub_1007CF13C(float64_t *a1, double *a2)
{
  v2.f64[0] = *a1;
  if (*a1 == -1.0)
  {
    return 0;
  }

  v3 = a1[1];
  if (v3 == -1.0)
  {
    return 0;
  }

  v4.f64[0] = a1[2];
  if (v4.f64[0] == -1.0)
  {
    return 0;
  }

  v5 = a1[3];
  if (v5 == -1.0)
  {
    return 0;
  }

  v7 = 0;
  v9 = 0xC0013D70A3D70A3DLL;
  v2.f64[1] = v3;
  v4.f64[1] = v5;
  v10 = vmulq_f64(v2, xmmword_101C8E290);
  v11 = vmulq_f64(v4, xmmword_101C8E2A0);
  v8 = 0.0;
  do
  {
    v8 = v8 + *(&v9 + v7);
    v7 += 8;
  }

  while (v7 != 40);
  *a2 = v8;
  return 1;
}

__n128 sub_1007CF1E8(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 85 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1007D51A4(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x55)) + 48 * (v7 % 0x55);
  result = *a2;
  v10 = *(a2 + 32);
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 32) = v10;
  *v8 = result;
  ++a1[5];
  return result;
}

uint64_t sub_1007CF298(unint64_t *a1, __int128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 34 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1007D5378(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x22)) + 120 * (v7 % 0x22);
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  *(v8 + 32) = a2[2];
  *(v8 + 48) = v11;
  *v8 = v9;
  *(v8 + 16) = v10;
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  *(v8 + 112) = *(a2 + 14);
  *(v8 + 80) = v13;
  *(v8 + 96) = v14;
  *(v8 + 64) = v12;
  v15 = a1[4];
  v16 = a1[5] + 1;
  a1[5] = v16;
  v17 = v15 + v16;
  v18 = a1[1];
  v19 = (v18 + 8 * (v17 / 0x22));
  v20 = *v19 + 120 * (v17 % 0x22);
  if (a1[2] == v18)
  {
    v20 = 0;
  }

  if (v20 == *v19)
  {
    v20 = *(v19 - 1) + 4080;
  }

  return v20 - 120;
}

void sub_1007CF39C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = v8 - **a1;
  v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
  if (v9 < -3071)
  {
    v11 = (v7[-((41 - v10) / 0xAA)] + 24 * (170 * ((41 - v10) / 0xAA) - (41 - v10)) + 4056);
  }

  else
  {
    v11 = (v7[(v10 + 128) / 0xAA] + 24 * ((v10 + 128) % 0xAA));
  }

  v12 = 0;
  v18 = *v11;
  LODWORD(v19) = 0;
  while (v8 != *(a2 + 8))
  {
    for (i = 0; i != 3; ++i)
    {
      v14 = *sub_10011AF30(v8 + 8, i);
      v15 = *(a3 + 4 * v12);
      v16 = sub_10011AF30(&v18 + 8, i);
      *v16 = *v16 + (v14 * v15);
    }

    v8 += 24;
    if (v8 - *v7 == 4080)
    {
      v17 = v7[1];
      ++v7;
      v8 = v17;
    }

    if (++v12 == 257)
    {
      *a4 = v18;
      *(a4 + 16) = v19;
      return;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
}

float sub_1007CF514(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = 0;
    v5 = 0.0;
    do
    {
      v5 = v5 + sub_1007D554C(a1, a2, v4++);
      v6 = *(a1 + 16);
    }

    while (v4 < v6);
    if (v6)
    {
      return v5 + *(a1 + 40);
    }
  }

  else
  {
    v5 = 0.0;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_10193B704();
  }

  v8 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: this->fForestSize > 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMRandomForestXGBoostedRegression.h, line 49,fForestSize is 0.", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D48A0 != -1)
    {
      sub_10193B718();
    }

    v11[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: this->fForestSize > 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMRandomForestXGBoostedRegression.h, line 49,fForestSize is 0.", v11, 2);
    v10 = v9;
    sub_100152C7C("Generic", 1, 0, 0, "float CMRandomForestXGBoostedRegression<22>::evaluateForest(const float (&)[NFeat]) const [NFeat = 22]", "%s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  return v5 + *(a1 + 40);
}

uint64_t sub_1007CF6D8(unint64_t *a1, _OWORD *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1007D5718(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  v8 = a1[4];
  v9 = a1[5] + 1;
  a1[5] = v9;
  v10 = v8 + v9;
  v11 = a1[1];
  v12 = (v11 + 8 * (v10 >> 8));
  v13 = *v12 + 16 * v10;
  if (a1[2] == v11)
  {
    v13 = 0;
  }

  if (v13 == *v12)
  {
    v13 = *(v12 - 1) + 4096;
  }

  return v13 - 16;
}

uint64_t sub_1007CF798(uint64_t a1, void *a2)
{
  if (a2[5] < 0x80uLL)
  {
    if (qword_1025D44C0 != -1)
    {
      sub_10193B454();
    }

    v29 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "[FormController] Has not received enough DeviceMotion samples", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_10193B740();
    return 0;
  }

  v4 = (a1 + 2664);
  nullsub_34();
  sub_101045080(buf);
  v5 = v111[16];
  if ((v111[16] & 1) == 0)
  {
    if (qword_1025D44C0 != -1)
    {
      sub_10193B310();
    }

    v31 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "[FormController] GroundContactTime - Classification Failed!", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_10193B82C();
    return 0;
  }

  v7 = *buf;
  v6 = *v111;
  v8 = *&v111[8];
  if (![*v111 count])
  {
    if (qword_1025D44C0 != -1)
    {
      sub_10193B310();
    }

    v32 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "[FormController] Initial contact prediction failed", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_10193BC04();
    return 0;
  }

  if (![v8 count])
  {
    if (qword_1025D44C0 != -1)
    {
      sub_10193B310();
    }

    v33 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "[FormController] Toe off prediction failed", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_10193BB18();
    return 0;
  }

  if (![v7 count])
  {
    if (qword_1025D44C0 != -1)
    {
      sub_10193B310();
    }

    v34 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "[FormController] Ground contact time prediction failed", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_10193BA2C();
    return 0;
  }

  [objc_msgSend(v7 objectAtIndexedSubscript:{0), "doubleValue"}];
  v10 = v9;
  [objc_msgSend(v6 objectAtIndexedSubscript:{0), "doubleValue"}];
  v12 = v11;
  [objc_msgSend(v8 objectAtIndexedSubscript:{0), "doubleValue"}];
  v13 = v12 * 0.119790152 + 0.838394225;
  v15 = v14 * 0.10670507 + 1.08953965;
  if (v13 < v15)
  {
    v84[0] = 0;
    v84[1] = 0x3F80000000000000;
    v16 = a2[4];
    v17 = v16 / 0x49;
    v18 = a2[1];
    v19 = a2[2];
    v20 = (v18 + 8 * (v16 / 0x49));
    v21 = v16 % 0x49;
    v22 = 56 * (v16 % 0x49);
    *&v84[5] = v13 + *(*v20 + v22 + 40);
    v84[6] = 0;
    v83[0] = 0.0;
    v83[1] = 0.0078125;
    v23 = *v20 + v22;
    v83[5] = v15 + *(v23 + 40);
    v83[6] = 0.0;
    if (v19 == v18)
    {
      v23 = 0;
      v28 = 0;
      LOBYTE(v85[0]) = 0;
    }

    else
    {
      v24 = a2[5] + v16;
      v25 = v24 / 0x49;
      v24 %= 0x49uLL;
      v26 = *(v18 + 8 * v25) + 56 * v24;
      LOBYTE(v85[0]) = 0;
      v27 = 73 * ((8 * v25 - 8 * v17) >> 3) - v21 + v24;
      if (v26 == v23)
      {
        v28 = 0;
      }

      else
      {
        v28 = v27;
      }
    }

    v36 = sub_1007D45EC(v20, v23, v84, v28);
    v38 = v36;
    v39 = v37;
    v40 = a2[4] + a2[5];
    v41 = a2[1];
    v42 = (v41 + 8 * (v40 / 0x49));
    if (a2[2] == v41)
    {
      v43 = 0;
    }

    else
    {
      v43 = *v42 + 56 * (v40 % 0x49);
    }

    v44 = sub_1007D4694(v36, v37, v42, v43, v83);
    v46 = v45;
    v47 = 0.0;
    if (v39 != v45)
    {
      v48 = v44;
      v49 = 0.0;
      v50 = v38;
      v51 = v39;
      do
      {
        sub_101045120(v51, buf);
        v51 += 56;
        if (v51 - *v50 == 4088)
        {
          v52 = v50[1];
          ++v50;
          v51 = v52;
        }

        v49 = v49 + *&v113[6];
      }

      while (v51 != v46);
      v53 = 73 * (v48 - v38) + 0x6DB6DB6DB6DB6DB7 * ((v46 - *v48) >> 3) - 0x6DB6DB6DB6DB6DB7 * ((v39 - *v38) >> 3);
      if (v53)
      {
        v47 = v49 / v53;
      }

      else
      {
        v47 = 0.0;
      }
    }

    v55 = *v4;
    if (*v4 != 2)
    {
      if (v55 == 1)
      {
        if (v47 > 0.0)
        {
          goto LABEL_64;
        }

        goto LABEL_69;
      }

      if (v55)
      {
        v57 = 0;
        v56 = 0;
        goto LABEL_70;
      }
    }

    if (v47 < 0.0)
    {
LABEL_64:
      v56 = 2;
      v57 = 1;
LABEL_70:
      v54 = v10 * 0.0446596108 + 0.251163363;
      v69 = v54;
      v58 = a2[1];
      v59 = a2[4];
      v60 = a2[5];
      v61 = *(*(v58 + 8 * (v59 / 0x49)) + 56 * (v59 % 0x49) + 40);
      v70 = v13 + v61;
      v71 = v15 + v61;
      v72 = v13;
      v73 = v15;
      v62 = *(a1 + 448);
      v74 = v61 + v62;
      v75 = v62 + *(*(v58 + 8 * ((v59 + v60 - 1) / 0x49)) + 56 * ((v59 + v60 - 1) % 0x49) + 40);
      v76 = v47;
      v77 = v56;
      v78 = v5;
      v79 = v57;
      v80 = 1;
      v63 = *(a1 + 2668);
      v81 = v55;
      v82 = v63;
      sub_1007D4024((a1 + 2616), &v69);
      if (qword_1025D44C0 != -1)
      {
        sub_10193B310();
      }

      v64 = qword_1025D44C8;
      if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67112192;
        *&buf[4] = v78;
        *v111 = 2048;
        *&v111[2] = v69;
        *&v111[10] = 2048;
        *&v111[12] = v70;
        v112 = 2048;
        *v113 = v71;
        *&v113[8] = 2048;
        v114 = v72;
        v115 = 2048;
        v116 = v73;
        v117 = 2048;
        v118 = v74;
        v119 = 1024;
        v120 = v77;
        v121 = 1024;
        v122 = v79;
        v123 = 1024;
        v124 = v80;
        v125 = 1024;
        v126 = v81;
        v127 = 1024;
        v128 = v82;
        v129 = 2048;
        v130 = v76;
        _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_DEBUG, "[FormController] GCT Prediction,isSuccessful,%d,groundContactTime,%.2f,initialContactTime,%.2f,toeOffTime,%.2f,relativeInitialContactTime,%.2f,relativeToeOffTime,%.2f,windowStartTime,%.2f,stepSide,%d,isValidSide,%d,isValidToeOff,%d,wristOrientation,%d,crownOrientation,%d, meanRotationZ, %.2f", buf, 0x6Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D44C0 != -1)
        {
          sub_10193B310();
        }

        v85[0] = 67112192;
        v85[1] = v78;
        v86 = 2048;
        v87 = v69;
        v88 = 2048;
        v89 = v70;
        v90 = 2048;
        v91 = v71;
        v92 = 2048;
        v93 = v72;
        v94 = 2048;
        v95 = v73;
        v96 = 2048;
        v97 = v74;
        v98 = 1024;
        v99 = v77;
        v100 = 1024;
        v101 = v79;
        v102 = 1024;
        v103 = v80;
        v104 = 1024;
        v105 = v81;
        v106 = 1024;
        v107 = v82;
        v108 = 2048;
        v109 = v76;
        LODWORD(v68) = 108;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44C8, 2, "[FormController] GCT Prediction,isSuccessful,%d,groundContactTime,%.2f,initialContactTime,%.2f,toeOffTime,%.2f,relativeInitialContactTime,%.2f,relativeToeOffTime,%.2f,windowStartTime,%.2f,stepSide,%d,isValidSide,%d,isValidToeOff,%d,wristOrientation,%d,crownOrientation,%d, meanRotationZ, %.2f", v85, v68, v69, v70, v71, v72, v73, LODWORD(v74), LODWORD(v75), LODWORD(v76), v77, v81, v83[0]);
        v67 = v66;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRunning::FormModels::calculateGroundContactTime(const DeviceMotionQueue &)", "%s\n", v66);
        if (v67 != buf)
        {
          free(v67);
        }
      }

      if (sub_1007D2134(a1, v65))
      {
        sub_101599404(&v69, buf);
        if (qword_102637F48 != -1)
        {
          sub_10193BA04();
        }

        if (qword_102637F50)
        {
          operator new();
        }

        PB::Base::~Base(buf);
      }

      return 1;
    }

LABEL_69:
    v57 = 1;
    v56 = 1;
    goto LABEL_70;
  }

  if (qword_1025D44C0 != -1)
  {
    sub_10193B310();
  }

  v35 = qword_1025D44C8;
  if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "[FormController] Just rejected a step prediction, TO before IC prediction", buf, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10193B918();
    return 0;
  }

  return result;
}

void sub_1007D01B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  PB::Base::~Base(va);
  _Unwind_Resume(a1);
}

void sub_1007D01E8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    v6 = 0;
LABEL_17:
    v12 = 0.0;
    goto LABEL_18;
  }

  v6 = 0;
  v7 = 0.0;
  do
  {
    v8 = *(v4 + 64);
    if (v8 >= 1)
    {
      v9 = *(v4 + 48) - *(v4 + 8);
      if (v9 > 0.0 && *(v4 + 112) * 5.12 / v9 >= 0.5)
      {
        v7 = v7 + *(v4 + 56) / v8 - *(v4 + 104);
        ++v6;
      }
    }

    v4 += 120;
  }

  while (v4 != v5);
  if (v6 <= 0)
  {
    goto LABEL_17;
  }

  v10 = v7 / v6;
  if (v10 <= 2.0)
  {
    if (v10 >= -2.0)
    {
      v12 = v7 / v6;
    }

    else
    {
      if (qword_1025D44C0 != -1)
      {
        sub_10193B454();
      }

      v16 = qword_1025D44C8;
      if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v30 = v10;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "[FormModels] StrideLength: Below min bias offset (%.2f)", buf, 0xCu);
      }

      v12 = -2.0;
      if (sub_10000A100(121, 0))
      {
        sub_10193BCF0();
      }
    }
  }

  else
  {
    if (qword_1025D44C0 != -1)
    {
      sub_10193B454();
    }

    v11 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v30 = v10;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "[FormModels] StrideLength: Above max bias offset (%.2f)", buf, 0xCu);
    }

    v12 = 2.0;
    if (sub_10000A100(121, 0))
    {
      sub_10193BDE8();
    }
  }

LABEL_18:
  if (qword_1025D44C0 != -1)
  {
    sub_10193B310();
  }

  v13 = qword_1025D44C8;
  if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 2592);
    v15 = 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 3);
    *buf = 134218752;
    v30 = v14;
    v31 = 2048;
    v32 = v12;
    v33 = 1026;
    v34 = v6;
    v35 = 2050;
    v36 = v15;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "[FormModels] StrideLengthCalibration,prevStrideLengthBiasOffset,%.2f,newStrideLengthBiasOffset,%.2f,validCalibrationsCount,%{public}d,totalCalibrationTracks,%{public}lu,", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D44C0 != -1)
    {
      sub_10193B310();
    }

    v17 = *(a1 + 2592);
    v18 = 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 3);
    v21 = 134218752;
    v22 = v17;
    v23 = 2048;
    v24 = v12;
    v25 = 1026;
    v26 = v6;
    v27 = 2050;
    v28 = v18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44C8, 2, "[FormModels] StrideLengthCalibration,prevStrideLengthBiasOffset,%.2f,newStrideLengthBiasOffset,%.2f,validCalibrationsCount,%{public}d,totalCalibrationTracks,%{public}lu,", &v21, 38);
    v20 = v19;
    sub_100152C7C("Generic", 1, 0, 2, "void CLRunning::FormModels::feedCalibrationTracks(const std::vector<CLStrideCalEntry> &)", "%s\n", v19);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  *(a1 + 2592) = v12;
}

void sub_1007D05BC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = a2[5];
  if (v5)
  {
    v54 = a4 + -3.1225;
    v53 = a4 + -3.1225 + -5.12;
    v8 = a2[4];
    v9 = v8 / 0x16;
    v10 = a2[1];
    v11 = (v10 + 8 * (v8 / 0x16));
    if (a2[2] == v10)
    {
      v20 = 0;
      v21 = 0;
      buf[0] = 0;
    }

    else
    {
      v12 = 8 * v9;
      v13 = *(v10 + 8 * v9);
      v14 = v8 % 0x16;
      v15 = v13 + 184 * (v8 % 0x16);
      v16 = v8 + v5;
      v17 = v16 / 0x16;
      v16 %= 0x16uLL;
      v18 = *(v10 + 8 * v17) + 184 * v16;
      buf[0] = 0;
      v19 = v16 + 22 * ((8 * v17 - v12) >> 3) - v14;
      v20 = v15;
      if (v18 == v15)
      {
        v21 = 0;
      }

      else
      {
        v21 = v19;
      }
    }

    v22 = sub_1007D41C8(v11, v20, &v53, v21);
    v24 = v22;
    v25 = v23;
    v26 = a2[4] + a2[5];
    v27 = a2[1];
    v28 = (v27 + 8 * (v26 / 0x16));
    if (a2[2] == v27)
    {
      v29 = 0;
    }

    else
    {
      v29 = *v28 + 184 * (v26 % 0x16);
    }

    buf[0] = 0;
    if (v29 == v23)
    {
      v30 = 0;
    }

    else
    {
      v30 = 22 * (v28 - v22) - 0x2C8590B21642C859 * ((v29 - *v28) >> 3) + 0x2C8590B21642C859 * ((v23 - *v22) >> 3);
    }

    v31 = sub_1007D41C8(v22, v23, &v54, v30);
    v33 = v32;
    v34 = a2[4];
    v35 = a2[1];
    v36 = a2[2];
    v37 = (v35 + 8 * (v34 / 0x16));
    if (v36 == v35)
    {
      v38 = 0;
    }

    else
    {
      v38 = *v37 + 184 * (v34 % 0x16);
    }

    if (v38 == v33)
    {
      v42 = &v54;
    }

    else
    {
      v39 = v33 - *v31;
      v40 = 0xD37A6F4DE9BD37A7 * (v39 >> 3);
      if (v39 < 185)
      {
        v41 = v31[-((22 - v40) / 0x16)] + 184 * (22 * ((22 - v40) / 0x16) - (22 - v40)) + 3864;
      }

      else
      {
        v41 = v31[(v40 - 1) / 0x16] + 184 * ((v40 - 1) % 0x16);
      }

      v42 = (v41 + 8);
    }

    if (v36 == v35)
    {
      v43 = 0;
    }

    else
    {
      v43 = *v37 + 184 * (v34 % 0x16);
    }

    v44 = *v42;
    sub_1007D0A1C(a1, v37, v43, v24, v25, v31, v33, (a1 + 248), &v50);
    if ((v52 - 1) < 2)
    {
      v46 = a2[5] + a2[4] - 1;
      v47 = *(a2[1] + 8 * (v46 / 0x16)) + 184 * (v46 % 0x16);
      if (sub_100CDBCEC(*(v47 + 88), *(v47 + 80), *(a1 + 2536)))
      {
        v45 = 1;
      }

      else
      {
        v45 = 3;
      }
    }

    else if (v52 == 3)
    {
      v45 = 2;
    }

    else if (v52 == 4)
    {
      v45 = 512;
    }

    else
    {
      v45 = 0;
    }

    v48 = sub_100BE4D0C(v51, 0.001);
    if (v48 < 0.0 || v48 > 0.25)
    {
      if (qword_1025D44C0 != -1)
      {
        sub_10193B310();
      }

      v49 = qword_1025D44C8;
      if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v56 = v48;
        _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_INFO, "[FormModels] #warning: VerticalOscillation value out of range (%.2f)", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10193BEE0();
      }

      v45 |= 8u;
    }

    *a3 = v45;
    *(a3 + 8) = v48;
    *(a3 + 16) = v50;
    *(a3 + 32) = v44;
  }

  else
  {
    *a3 = 32;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
  }
}

void sub_1007D0A1C(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v12 = a5;
  v13 = a4;
  if (a4 < a6 || a4 == a6 && a5 < a7)
  {
    if (a8[5])
    {
      *a9 = 0;
      *(a9 + 8) = 0;
      *(a9 + 16) = 0;
      v17 = a8[4];
      v18 = a8[1];
      v19 = (v18 + 8 * (v17 >> 8));
      if (a8[2] == v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = *v19 + 16 * v17;
      }

      if (a5 == a7)
      {
        v23 = a9;
        *a9 = 0;
        *(a9 + 8) = 0;
LABEL_52:
        v46 = 3;
LABEL_53:
        *(v23 + 24) = v46;
        return;
      }

      v24 = 0;
      v25 = 0;
      v48 = 1;
      v49 = 0;
      v26 = 0.0;
      v27 = 0.0;
      v28 = 0.0;
      do
      {
        if (v12 != a3)
        {
          v29 = v12 - *v13;
          v30 = 0xD37A6F4DE9BD37A7 * (v29 >> 3);
          if (v29 < -183)
          {
            v34 = 20 - v30;
            v32 = &v13[-(v34 / 0x16)];
            v33 = *v32 + 184 * (22 * (v34 / 0x16) - v34) + 3864;
          }

          else
          {
            v31 = v30 + 1;
            v32 = &v13[v31 / 0x16];
            v33 = *v32 + 184 * (v31 % 0x16);
          }

          v27 = sub_1007D15F8(a2, a3, v32, v33);
          v35 = *(v12 + 80);
          v28 = v28 + v35;
          ++v25;
          v49 = (*(v12 + 160) & 0xFD) == 1;
          if (sub_100CDBCEC(v27, v35, *(result + 2536)))
          {
            sub_1007D2024(v13, v12);
            v37 = a8[1];
            v38 = v20;
            v39 = v19;
LABEL_31:
            v40 = v38;
            while (1)
            {
              v41 = a8[2] == v37 ? 0 : *(v37 + 8 * ((a8[5] + a8[4]) >> 8)) + 16 * (*(a8 + 40) + *(a8 + 32));
              if (v40 == v41)
              {
                break;
              }

              v42 = *v40 + *(result + 448);
              if (v42 >= *(v36 + 8) && v42 < *(v12 + 8))
              {
                v26 = v26 + v40[1];
                ++v24;
                v19 = v39;
                v20 = v38;
              }

              v40 += 2;
              v38 += 2;
              if ((*v39 + 4096) == v38)
              {
                v44 = v39[1];
                ++v39;
                v38 = v44;
                goto LABEL_31;
              }
            }

            v48 = 0;
          }
        }

        v12 += 184;
        if (v12 - *v13 == 4048)
        {
          v45 = v13[1];
          ++v13;
          v12 = v45;
        }
      }

      while (v12 != a7);
      v23 = a9;
      *a9 = v27;
      if (v25 <= 0)
      {
        *(a9 + 8) = 0;
      }

      else
      {
        *(a9 + 8) = v28 / v25;
      }

      if (v48)
      {
        goto LABEL_52;
      }

      if (v24 <= 0)
      {
        v46 = 2;
        goto LABEL_53;
      }

      if (v49)
      {
        v46 = 4;
        goto LABEL_53;
      }

      *(a9 + 16) = v26 / v24;
      *(a9 + 24) = 0;
    }

    else
    {
      if (qword_1025D44C0 != -1)
      {
        sub_10193B454();
      }

      v21 = qword_1025D44C8;
      if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "[FormModels] computeMeanBetween - Not enough metrics in window", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10193C0C4();
      }

      *a9 = 0;
      *(a9 + 8) = 0;
      *(a9 + 16) = 0;
      *(a9 + 24) = 2;
    }
  }

  else
  {
    if (qword_1025D44C0 != -1)
    {
      sub_10193B454();
    }

    v22 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_INFO))
    {
      *v52 = 0;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_INFO, "[FormModels] computeMeanBetween - Invalid pedometer range", v52, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193BFE0();
    }

    *a9 = 0;
    *(a9 + 8) = 0;
    *(a9 + 16) = 0;
    *(a9 + 24) = 1;
  }
}

void sub_1007D0E30(float *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = a2[5];
  if (!v4)
  {
    *a3 = 32;
    *(a3 + 48) = 0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0;
    return;
  }

  v94 = a4;
  v93 = a4 + -5.12;
  v6 = a2[4];
  v7 = v6 / 0x16;
  v8 = a2[1];
  v9 = (v8 + 8 * (v6 / 0x16));
  if (a2[2] == v8)
  {
    v19 = 0;
    v20 = 0;
    LOBYTE(v90[0]) = 0;
  }

  else
  {
    v10 = 8 * v7;
    v11 = *(v8 + 8 * v7);
    v12 = v6 % 0x16;
    v13 = v11 + 184 * (v6 % 0x16);
    v14 = v6 + v4;
    v15 = (v6 + v4) / 0x16;
    v16 = v14 - 22 * v15;
    v17 = *(v8 + 8 * v15) + 184 * v16;
    LOBYTE(v90[0]) = 0;
    v18 = v16 + 22 * ((8 * v15 - v10) >> 3) - v12;
    v19 = v13;
    if (v17 == v13)
    {
      v20 = 0;
    }

    else
    {
      v20 = v18;
    }
  }

  v21 = sub_1007D41C8(v9, v19, &v93, v20);
  v23 = v21;
  v24 = v22;
  v25 = a2[4] + a2[5];
  v26 = a2[1];
  v27 = (v26 + 8 * (v25 / 0x16));
  if (a2[2] == v26)
  {
    v28 = 0;
  }

  else
  {
    v28 = *v27 + 184 * (v25 % 0x16);
  }

  LOBYTE(v90[0]) = 0;
  if (v28 == v22)
  {
    v29 = 0;
  }

  else
  {
    v29 = 22 * (v27 - v21) - 0x2C8590B21642C859 * ((v28 - *v27) >> 3) + 0x2C8590B21642C859 * ((v22 - *v21) >> 3);
  }

  v30 = sub_1007D41C8(v21, v22, &v94, v29);
  v87 = v31;
  v32 = a2[1];
  if (a2[2] == v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = *(v32 + 8 * (a2[4] / 0x16uLL)) + 184 * (a2[4] % 0x16uLL);
  }

  if (v33 == v31)
  {
    v37 = &v94;
  }

  else
  {
    v34 = v31 - *v30;
    v35 = 0xD37A6F4DE9BD37A7 * (v34 >> 3);
    if (v34 < 185)
    {
      v36 = v30[-((22 - v35) / 0x16)] + 184 * (22 * ((22 - v35) / 0x16) - (22 - v35)) + 3864;
    }

    else
    {
      v36 = v30[(v35 - 1) / 0x16] + 184 * ((v35 - 1) % 0x16);
    }

    v37 = (v36 + 8);
  }

  v38 = *v37;
  if (v24 == v31)
  {
    goto LABEL_24;
  }

  v84 = *v37;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = *v23;
  v45 = 0.0;
  __asm { FMOV            V0.2D, #-1.0 }

  v86 = _Q0;
  v51 = 0.0;
  v52 = 0.0;
  do
  {
    v53 = v24 - v44;
    v54 = 0xD37A6F4DE9BD37A7 * ((v24 - v44) >> 3);
    if (v53 < -183)
    {
      v55 = v23[-((20 - v54) / 0x16)] + 184 * (v54 - 20 + 22 * ((20 - v54) / 0x16)) + 3864;
    }

    else
    {
      v55 = v23[(v54 + 1) / 0x16] + 184 * ((v54 + 1) % 0x16);
    }

    v56 = a2[4];
    v57 = a2[1];
    if (a2[2] == v57)
    {
      if (!v55)
      {
        break;
      }

      v59 = 0;
      v58 = (v57 + ((2 * ((v56 * 0x2E8BA2E8BA2E8BA3uLL) >> 64)) & 0x7FFFFFFFFFFFFFF8));
    }

    else
    {
      if (v55 == *(v57 + 8 * ((a2[5] + v56) / 0x16)) + 184 * ((a2[5] + v56) % 0x16))
      {
        break;
      }

      v58 = (v57 + 8 * (v56 / 0x16));
      v59 = *v58 + 184 * (v56 % 0x16);
    }

    v88 = v45;
    if (v53 < -367)
    {
      v63 = 19 - v54;
      v61 = &v23[-(v63 / 0x16)];
      v62 = *v61 + 184 * (22 * (v63 / 0x16) - v63) + 3864;
    }

    else
    {
      v60 = v54 + 2;
      v61 = &v23[v60 / 0x16];
      v62 = *v61 + 184 * (v60 % 0x16);
    }

    v64 = *(v24 + 8);
    v65 = *(v24 + 80);
    v66 = sub_1007D15F8(v58, v59, v61, v62);
    v91 = 0u;
    v92 = 0u;
    memset(v90, 0, sizeof(v90));
    DWORD2(v91) = 1000;
    LODWORD(v92) = -1082130432;
    v67 = *(result + 325);
    v68 = 0.0;
    v69 = 0.0;
    if (*(v67 + 80) == 1)
    {
      v70 = sub_1007D18D0(v90, v67, *(v24 + 8));
      v71 = v65 > 0.0 ? v70 : 0;
      if (v71 == 1)
      {
        v69 = sub_100CDBE1C(1.0 / v65 * 2.23693991, *&v91 * 2.23693991);
      }
    }

    if (*(v24 + 176) == 3 && v65 > 0.0)
    {
      v72 = 0.0;
      if (v66 > 0.0)
      {
        v68 = 1.0 / v65;
        v72 = 1.0 / v65 / v66 + 1.0 / v65 / v66;
      }
    }

    else
    {
      v72 = 0.0;
    }

    v73 = sub_100CDBC8C(v66, 1.0 / v68, result[634]);
    v74 = v73;
    v75 = 0;
    v76 = v66 <= 0.0;
    if (v68 <= 0.0)
    {
      v76 = 1;
    }

    if (!v76 && v72 > 0.0)
    {
      v75 = v73 & (v72 < 6.0);
    }

    *buf = v86;
    v96 = v86;
    v103 = 0u;
    v98 = 0;
    v100 = 0u;
    v101 = v72;
    v102 = v68;
    v104 = v64;
    *&v103 = v66;
    v97 = v69;
    v99 = v72;
    v106 = v75;
    v105 = 1;
    sub_1007D1B38(v73, buf);
    if ((*(v24 + 160) & 0xFD) == 1)
    {
      ++v43;
    }

    v45 = v88;
    if (v75)
    {
      v45 = v88 + v72;
    }

    v24 += 184;
    v44 = *v23;
    if (v24 - *v23 == 4048)
    {
      v77 = v23[1];
      ++v23;
      v44 = v77;
      v24 = v77;
    }

    v40 += v74 ^ 1;
    v51 = v51 + v66;
    v52 = v52 + v68;
    v42 += v75;
    ++v41;
  }

  while (v24 != v87);
  if (v42)
  {
    v78 = v45 / v42;
    if (v41)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v78 = 0.0;
    if (v41)
    {
LABEL_62:
      v79 = v52 / v41;
      if (v79 <= 0.0)
      {
        v80 = 0.0;
      }

      else
      {
        v80 = 1.0 / v79;
      }

      v38 = v84;
      if (v42)
      {
        v81 = v51 / v41;
        goto LABEL_69;
      }

      goto LABEL_24;
    }
  }

  v80 = 0.0;
  v81 = 0.0;
  v38 = v84;
  if (v42)
  {
LABEL_69:
    if (v40)
    {
      v82 = 10;
    }

    else
    {
      v82 = 520;
    }

    if (v40 | v43)
    {
      v78 = 0.0;
    }

    else
    {
      v82 = 8;
      if (v78 > 0.0)
      {
        v39 = a3;
        if (v78 <= 6.0)
        {
          v82 = 0;
LABEL_85:
          *v39 = v82;
          *(v39 + 8) = 0;
          *(v39 + 16) = v78;
          *(v39 + 24) = v81;
          *(v39 + 32) = v80;
          goto LABEL_86;
        }

LABEL_75:
        if (qword_1025D44C0 != -1)
        {
          sub_10193B310();
        }

        v83 = qword_1025D44C8;
        if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          *&buf[4] = v78;
          _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_INFO, "[FormModels] #warning: StrideLength value out of range (%.2f)", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10193C1A8();
        }

        v38 = v84;
        goto LABEL_85;
      }
    }

    v39 = a3;
    goto LABEL_75;
  }

LABEL_24:
  v39 = a3;
  *a3 = 1;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
LABEL_86:
  *(v39 + 40) = 0;
  *(v39 + 48) = v38;
}

double sub_1007D15F8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = 0.0;
  if (a4 == a2)
  {
    return v4;
  }

  v9 = a4 - *a3;
  v10 = 0xD37A6F4DE9BD37A7 * (v9 >> 3);
  if ((v10 + 22 * (a3 - a1) + 0x2C8590B21642C859 * ((a2 - *a1) >> 3)) < 4)
  {
    return v4;
  }

  if (v9 <= 184)
  {
    v11 = *(a3[-((22 - v10) / 0x16)] + 184 * (v10 - 22 + 22 * ((22 - v10) / 0x16)) + 3864);
    v12 = v10 - 3;
    goto LABEL_7;
  }

  v11 = *(a3[(v10 - 1) / 0x16] + 184 * ((v10 - 1) % 0x16));
  v12 = v10 - 3;
  if (v9 < 0x229)
  {
LABEL_7:
    v13 = (a3[-((21 - v12) / 0x16)] + 184 * (22 * ((21 - v12) / 0x16) - (21 - v12)) + 3864);
    goto LABEL_8;
  }

  v13 = (a3[v12 / 0x16] + 184 * (v12 % 0x16));
LABEL_8:
  if (v11 - *v13 <= 10.24)
  {
    v14 = sub_1007D1F5C(a1, a2, a3, a4);
    v15 = a4 - *a3;
    v16 = 0xD37A6F4DE9BD37A7 * (v15 >> 3);
    if (v15 < 185)
    {
      v20 = 22 - v16;
      v18 = &a3[-(v20 / 0x16)];
      v19 = *v18 + 184 * (22 * (v20 / 0x16) - v20) + 3864;
    }

    else
    {
      v17 = v16 - 1;
      v18 = &a3[v17 / 0x16];
      v19 = *v18 + 184 * (v17 % 0x16);
    }

    v21 = sub_1007D1F5C(a1, a2, v18, v19);
    v22 = a4 - *a3;
    v23 = 0xD37A6F4DE9BD37A7 * (v22 >> 3);
    if (v22 < 369)
    {
      v27 = 23 - v23;
      v25 = &a3[-(v27 / 0x16)];
      v26 = *v25 + 184 * (22 * (v27 / 0x16) - v27) + 3864;
    }

    else
    {
      v24 = v23 - 2;
      v25 = &a3[v24 / 0x16];
      v26 = *v25 + 184 * (v24 % 0x16);
    }

    v28 = sub_1007D1F5C(a1, a2, v25, v26);
    if (v14 > 0.0 && v21 > 0.0 && v28 > 0.0)
    {
      if (v14 >= v21)
      {
        v29 = v21;
      }

      else
      {
        v29 = v14;
      }

      if (v14 <= v21)
      {
        v30 = v21;
      }

      else
      {
        v30 = v14;
      }

      if (v30 < v28)
      {
        v28 = v30;
      }

      if (v29 <= v28)
      {
        return v28;
      }

      else
      {
        return v29;
      }
    }
  }

  return v4;
}

uint64_t sub_1007D18D0(uint64_t a1, void *a2, double a3)
{
  v5 = (*(*a2 + 24))(a2, a1);
  if ((v5 & 1) == 0)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    DWORD2(v13) = 1000;
    LODWORD(v14) = -1082130432;
    v6 = sub_1007D20C4(a2, &v11);
    if (qword_1025D44C0 != -1)
    {
      sub_10193B310();
    }

    v7 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134350080;
      v26 = a3;
      v27 = 1026;
      v28 = v6;
      v29 = 2050;
      v30 = *(&v11 + 1);
      v31 = 1026;
      v32 = DWORD2(v12);
      v33 = 1026;
      v34 = DWORD2(v13);
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "[FormController] #warning: Elevation lookup failed at t=%{public}.2f. lastEntry={exists,%{public}d,startTime,%{public}.2f,gradeType,%{public}d,source,%{public}d}", buf, 0x28u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D44C0 != -1)
      {
        sub_10193B310();
      }

      v15 = 134350080;
      v16 = a3;
      v17 = 1026;
      v18 = v6;
      v19 = 2050;
      v20 = *(&v11 + 1);
      v21 = 1026;
      v22 = DWORD2(v12);
      v23 = 1026;
      v24 = DWORD2(v13);
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44C8, 0, "[FormController] #warning: Elevation lookup failed at t=%{public}.2f. lastEntry={exists,%{public}d,startTime,%{public}.2f,gradeType,%{public}d,source,%{public}d}", &v15, 40);
      v10 = v9;
      sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLRunning::FormModels::elevationLookup(CFAbsoluteTime, CLElevationChangeEntry &, const CLNatalieInput<CLElevationChangeEntry> &)", "%s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  return v5;
}

void sub_1007D1B38(uint64_t a1, uint64_t *a2)
{
  if (qword_1025D44C0 != -1)
  {
    sub_10193B454();
  }

  v3 = qword_1025D44C8;
  if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
  {
    v5 = a2[12];
    v4 = a2[13];
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    v9 = a2[3];
    v10 = a2[7];
    v11 = a2[8];
    v12 = a2[4];
    v13 = a2[10];
    v14 = a2[11];
    v15 = a2[9];
    v16 = 134351872;
    v17 = v5;
    v18 = 2050;
    v19 = v4;
    v20 = 2048;
    v21 = v10;
    v22 = 2048;
    v23 = v6;
    v24 = 2048;
    v25 = v7;
    v26 = 2048;
    v27 = v8;
    v28 = 2048;
    v29 = v9;
    v30 = 2048;
    v31 = v15;
    v32 = 2048;
    v33 = v11;
    v34 = 2048;
    v35 = v12;
    v36 = 2048;
    v37 = v14;
    v38 = 2048;
    v39 = v13;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "[FormModels] StrideLengthEvent,startTime,%{public}.2f,endTime,%{public}.2f,strideLengthFormBasedUncal,%.3f,heightCM,%.2f,horizontalAccelMagnitudeMeanSqrt,%.2f,rotationRateMagnitudeMin,%.2f,rotationRateGravityProjectionMax,%.2f,strideLengthSpeedBased,%.3f,strideLengthFormBasedCalibrated,%.3f,grade,%.2f,cadence,%.2f,speed,%.2f", &v16, 0x7Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193C2A8(a2);
  }
}

float32_t sub_1007D1C88(uint64_t *a1, float32x2_t *a2, uint64_t a3)
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v4 = *a1;
  if (a1[1] != *a1)
  {
    v7 = 0;
    do
    {
      v8 = (v4 + 12 * v7);
      v9 = v8[1].f32[0] - a2[1].f32[0];
      v19 = vsub_f32(*v8, *a2);
      v20 = v9;
      sub_1007D5ED8(&v19, v17);
      v10 = 0;
      do
      {
        *(&v14 + v10) = sub_1007D5F60(v17, v10) + *(&v14 + v10);
        ++v10;
      }

      while (v10 != 9);
      ++v7;
      v4 = *a1;
    }

    while (v7 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2));
  }

  v17[0] = v14;
  v17[1] = v15;
  v18 = v16;
  v19.i32[0] = sub_1007D5F9C(v17, a3);
  v19.i32[1] = v11;
  v20 = v12;
  *&v17[0] = &v19;
  *(&v17[0] + 1) = a3;
  sub_1007D6564(v17, 0, 1uLL);
  sub_1007D6564(v17, 0, 2uLL);
  sub_1007D6564(v17, 1uLL, 2uLL);
  return v19.f32[0];
}

void sub_1007D1DD4(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v17 = v1 * 0.02;
  v5 = v4 * 0.02;
  bzero(v19, 0x808uLL);
  bzero(v18, 0x808uLL);
  v6 = 0;
  v7 = 0.0;
  v8 = 0.0;
  do
  {
    v9 = ((cosf(v6 * 0.024544) * -0.46) + 0.54);
    v10 = (v6 - 128);
    sub_1010BDB10(v17 * v10);
    v12 = v11 * v9;
    v19[v6] = v12;
    v7 = v7 + v12;
    sub_1010BDB10(v5 * v10);
    v14 = v13 * v9;
    v18[v6] = v14;
    v8 = v8 + v14;
    ++v6;
  }

  while (v6 != 257);
  bzero(v3, 0x404uLL);
  for (i = 0; i != 257; ++i)
  {
    v16 = v18[i] / v8 - v19[i] / v7;
    *(v3 + i) = v16;
  }
}

double sub_1007D1F5C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = 0.0;
  if (a4 != a2 && 22 * (a3 - a1) - 0x2C8590B21642C859 * ((a4 - *a3) >> 3) + 0x2C8590B21642C859 * ((a2 - *a1) >> 3) >= 2)
  {
    v5 = sub_1007D2024(a3, a4);
    v7 = v6;
    sub_1007D2024(v5, v6);
    v9 = *(v7 + 96) - *(v8 + 96);
    if (v9 > 0.0)
    {
      return (*(v7 + 24) - *(v8 + 24)) / v9;
    }
  }

  return v4;
}

void *sub_1007D2024(void *a1, uint64_t a2)
{
  v2 = a2 - *a1;
  v3 = 0xD37A6F4DE9BD37A7 * (v2 >> 3);
  if (v2 < 185)
  {
    return &a1[-((22 - v3) / 0x16)];
  }

  else
  {
    return &a1[(v3 - 1) / 0x16];
  }
}

uint64_t sub_1007D20C4(void *a1, _OWORD *a2)
{
  v2 = a1[4];
  if (a1[5] == v2)
  {
    return 0;
  }

  v3 = a1[7] + a1[8];
  v4 = (v2 + 8 * (v3 >> 6));
  v5 = v3 & 0x3F;
  v6 = *v4 + (v5 << 6);
  if (v6 == *(v2 + ((a1[7] >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((a1[7] & 0x3FLL) << 6))
  {
    return 0;
  }

  if (!v5)
  {
    v6 = *(v4 - 1) + 4096;
  }

  v7 = *(v6 - 64);
  v8 = *(v6 - 48);
  v9 = *(v6 - 16);
  a2[2] = *(v6 - 32);
  a2[3] = v9;
  *a2 = v7;
  a2[1] = v8;
  return 1;
}

uint64_t sub_1007D2134(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 2613) & 1) == 0)
  {
    v3 = sub_100011660(a1, a2);
    sub_100185AC0(v3, &v5);
    sub_10001CB4C(v5, "MotionLoggerLogGaitEvents", (a1 + 2614), 0xFFFFFFFFLL);
    if (v6)
    {
      sub_100008080(v6);
    }

    *(a1 + 2613) = 1;
  }

  return *(a1 + 2614);
}

void sub_1007D21A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007D21B8(uint64_t result, uint64_t a2, _DWORD *a3, void *a4)
{
  v5 = *(a2 + 24);
  if ((v5 - 1) < 2)
  {
    *a3 |= 1u;
    v7 = a4[5] + a4[4] - 1;
    v8 = *(a4[1] + 8 * (v7 / 0x16)) + 184 * (v7 % 0x16);
    result = sub_100CDBCEC(*(v8 + 88), *(v8 + 80), *(result + 2536));
    if (result)
    {
      return result;
    }
  }

  else if (v5 != 3)
  {
    if (v5 != 4)
    {
      return result;
    }

    v6 = 512;
    goto LABEL_7;
  }

  v6 = 2;
LABEL_7:
  *a3 |= v6;
  return result;
}

void *sub_1007D226C@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = a2[5];
  if (v5)
  {
    v7 = result;
    v105 = a4;
    v104 = a4 + -5.12;
    v8 = a2[4];
    v9 = v8 / 0x16;
    v10 = a2[1];
    v11 = (v10 + 8 * (v8 / 0x16));
    if (a2[2] == v10)
    {
      v20 = 0;
      v21 = 0;
      LOBYTE(v100) = 0;
    }

    else
    {
      v12 = 8 * v9;
      v13 = *(v10 + 8 * v9);
      v14 = v8 % 0x16;
      v15 = v13 + 184 * (v8 % 0x16);
      v16 = v8 + v5;
      v17 = v16 / 0x16;
      v16 %= 0x16uLL;
      v18 = *(v10 + 8 * v17) + 184 * v16;
      LOBYTE(v100) = 0;
      v19 = v16 + 22 * ((8 * v17 - v12) >> 3) - v14;
      v20 = v15;
      if (v18 == v15)
      {
        v21 = 0;
      }

      else
      {
        v21 = v19;
      }
    }

    v22 = sub_1007D41C8(v11, v20, &v104, v21);
    v24 = v22;
    v25 = v23;
    v26 = a2[4] + a2[5];
    v27 = a2[1];
    v28 = (v27 + 8 * (v26 / 0x16));
    if (a2[2] == v27)
    {
      v29 = 0;
    }

    else
    {
      v29 = *v28 + 184 * (v26 % 0x16);
    }

    LOBYTE(v100) = 0;
    if (v29 == v23)
    {
      v30 = 0;
    }

    else
    {
      v30 = 22 * (v28 - v22) - 0x2C8590B21642C859 * ((v29 - *v28) >> 3) + 0x2C8590B21642C859 * ((v23 - *v22) >> 3);
    }

    v31 = sub_1007D41C8(v22, v23, &v105, v30);
    v33 = v32 - *v31;
    v34 = 0xD37A6F4DE9BD37A7 * (v33 >> 3);
    if (v33 < -183)
    {
      v38 = 20 - v34;
      v36 = &v31[-(v38 / 0x16)];
      v37 = *v36 + 184 * (22 * (v38 / 0x16) - v38) + 3864;
    }

    else
    {
      v35 = v34 + 1;
      v36 = &v31[v35 / 0x16];
      v37 = *v36 + 184 * (v35 % 0x16);
    }

    v90 = v37;
    v101 = 0u;
    memset(v102, 0, 28);
    v99 = 0u;
    v100 = 0u;
    v103 = 0uLL;
    memset(v98, 0, sizeof(v98));
    v97 = 0u;
    memset(v96, 0, sizeof(v96));
    v39 = v7[328];
    v40 = v7[331];
    v41 = v40 / 0x33;
    v42 = (v39 + 8 * (v40 / 0x33));
    if (v7[329] == v39)
    {
      v51 = 0;
      v52 = 0;
      LOBYTE(v106[0]) = 0;
    }

    else
    {
      v43 = 8 * v41;
      v44 = *(v39 + 8 * v41);
      v45 = v40 % 0x33;
      v46 = v44 + 80 * (v40 % 0x33);
      v47 = v7[332] + v40;
      v48 = v47 / 0x33;
      v47 %= 0x33uLL;
      v49 = *(v39 + 8 * v48) + 80 * v47;
      LOBYTE(v106[0]) = 0;
      v50 = v47 + 51 * ((8 * v48 - v43) >> 3) - v45;
      v51 = v46;
      if (v49 == v46)
      {
        v52 = 0;
      }

      else
      {
        v52 = v50;
      }
    }

    v53 = sub_1007D437C(v42, v51, &v104, v52);
    v55 = v53;
    v56 = v54;
    v57 = v7[331] + v7[332];
    v58 = v7[328];
    v59 = (v58 + 8 * (v57 / 0x33));
    if (v7[329] == v58)
    {
      v60 = 0;
    }

    else
    {
      v60 = *v59 + 80 * (v57 % 0x33);
    }

    LOBYTE(v106[0]) = 0;
    if (v60 == v54)
    {
      v61 = 0;
    }

    else
    {
      v61 = 51 * ((v59 - v53) >> 3) - 0x3333333333333333 * ((v60 - *v59) >> 4) + 0x3333333333333333 * ((v54 - *v53) >> 4);
    }

    v62 = sub_1007D437C(v53, v54, &v105, v61);
    if (sub_1007D2C40(v7, v98, v96, v55, v56, v62, v63))
    {
      v64 = a2[4];
      v65 = a2[1];
      v66 = (v65 + 8 * (v64 / 0x16));
      if (a2[2] == v65)
      {
        v67 = 0;
      }

      else
      {
        v67 = *v66 + 184 * (v64 % 0x16);
      }

      sub_1007D0A1C(v7, v66, v67, v24, v25, v36, v90, v98, v94);
      v69 = a2[4];
      v70 = a2[1];
      v71 = (v70 + 8 * (v69 / 0x16));
      if (a2[2] == v70)
      {
        v72 = 0;
      }

      else
      {
        v72 = *v71 + 184 * (v69 % 0x16);
      }

      sub_1007D0A1C(v7, v71, v72, v24, v25, v36, v90, v96, v91);
      sub_1007D21B8(v7, v94, &v102[24], a2);
      sub_1007D21B8(v7, v91, &v102[24], a2);
      if ((v102[24] & 1) == 0)
      {
        v73 = v95;
        v74 = v93;
        v75 = (v95 + v93) * 0.5;
        v76 = v95 / (v95 + v93);
        *&v103 = v94[0];
        *(&v103 + 1) = v92;
        v77 = v93 / (v95 + v93);
        if (*(&v99 + 1) | *(&v97 + 1))
        {
          v79 = 0.0;
          if (v92 > 0.0)
          {
            v79 = 1.0 / v92;
          }

          if (v79 >= 4.0 || v75 >= 0.15 || v75 <= 0.05 || v79 <= 0.0)
          {
            if (v75 <= 0.4 && v75 > 0.05)
            {
              v78 = 0;
            }

            else
            {
              v78 = 8;
            }
          }

          else
          {
            v78 = 256;
          }
        }

        else
        {
          v78 = 1;
        }

        *(&v100 + 1) = v95;
        *&v101 = v93;
        *(&v101 + 1) = v95 / (v95 + v93);
        *v102 = v93 / (v95 + v93);
        *&v102[8] = v104;
        *&v102[16] = v105;
        *&v102[24] = v78;
        v81 = sub_100BE4D0C(v75, 0.001);
        *&v100 = v81;
        if (qword_1025D44C0 != -1)
        {
          sub_10193B310();
        }

        v82 = qword_1025D44C8;
        if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67241472;
          v118 = v78;
          v119 = 2048;
          v120 = v73;
          v121 = 2048;
          v122 = v74;
          v123 = 2048;
          v124 = v76;
          v125 = 2048;
          v126 = v77;
          v127 = 2048;
          v128 = v81;
          _os_log_impl(dword_100000000, v82, OS_LOG_TYPE_DEBUG, "[FormController] CLGaitEvents::HealthKitResult, groundContactTimeRejectionStatus,%{public}d,leftGroundContactTime,%.2f,rightGroundContactTime,%.2f,leftGroundContactTimePercentage,%.2f,rightGroundContactTimePercentage,%.2f,groundContactTime,%.2f", buf, 0x3Au);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10193B6C0(buf);
          v106[0] = 67241472;
          v106[1] = v78;
          v107 = 2048;
          v108 = v73;
          v109 = 2048;
          v110 = v74;
          v111 = 2048;
          v112 = v76;
          v113 = 2048;
          v114 = v77;
          v115 = 2048;
          v116 = v81;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44C8, 2, "[FormController] CLGaitEvents::HealthKitResult, groundContactTimeRejectionStatus,%{public}d,leftGroundContactTime,%.2f,rightGroundContactTime,%.2f,leftGroundContactTimePercentage,%.2f,rightGroundContactTimePercentage,%.2f,groundContactTime,%.2f", v106, 58);
          v89 = v88;
          sub_100152C7C("Generic", 1, 0, 2, "GroundContactTimeHKResult CLRunning::FormModels::aggregatedGroundContactTimeInWindow(const StepQueue &, CFAbsoluteTime)", "%s\n", v88);
          if (v89 != buf)
          {
            free(v89);
          }
        }

        if (sub_1007D2134(v7, v83))
        {
          sub_1015994D4(&v100, buf);
          if (qword_102637F48 != -1)
          {
            sub_10193BA04();
          }

          if (qword_102637F50)
          {
            operator new();
          }

          PB::Base::~Base(buf);
        }
      }

      v84 = *&v102[16];
      *(a3 + 32) = *v102;
      *(a3 + 48) = v84;
      *(a3 + 64) = v103;
      v85 = v101;
      *a3 = v100;
      *(a3 + 16) = v85;
    }

    else
    {
      if (qword_1025D44C0 != -1)
      {
        sub_10193B310();
      }

      v68 = qword_1025D44C8;
      if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_ERROR, "[FormController] step aggregation failed", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10193B6C0(buf);
        LOWORD(v106[0]) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44C8, 16, "[FormController] step aggregation failed", v106, 2);
        v87 = v86;
        sub_100152C7C("Generic", 1, 0, 0, "GroundContactTimeHKResult CLRunning::FormModels::aggregatedGroundContactTimeInWindow(const StepQueue &, CFAbsoluteTime)", "%s\n", v86);
        if (v87 != buf)
        {
          free(v87);
        }
      }

      *(a3 + 48) = 0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      *(a3 + 56) = 1;
      *(a3 + 64) = 0;
      *(a3 + 72) = 0;
    }

    sub_100102BC8(v96);
    return sub_100102BC8(v98);
  }

  else
  {
    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 56) = 32;
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
  }

  return result;
}

void sub_1007D2BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_100102BC8(&a21);
  sub_100102BC8(&a27);
  _Unwind_Resume(a1);
}

uint64_t sub_1007D2C40(void *a1, unint64_t *a2, unint64_t *a3, char *a4, uint64_t *a5, char *a6, uint64_t *a7)
{
  if (a7 == a5 || 51 * ((a6 - a4) >> 3) - 0x3333333333333333 * ((a7 - *a6) >> 4) + 0x3333333333333333 * ((a5 - *a4) >> 4) <= 3)
  {
    if (qword_1025D44C0 != -1)
    {
      sub_10193B454();
    }

    v7 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "[FormController] Insufficient number of samples to aggregate", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193C428();
    }

    return 0;
  }

  else
  {
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    HIDWORD(v64) = sub_1007D35EC(a1, 0, &v79, &v76, a4, a5, a6, a7);
    if (BYTE4(v64))
    {
      v12 = v76;
      v67 = v77;
      if (v76 != v77)
      {
        *&v11 = 67110144;
        v65 = v11;
        v66 = a1;
        do
        {
          v13 = v12[1] + 1;
          v14 = v79;
          v15 = v79 + 48 * v13;
          v16 = v15;
          if (v80 <= v15)
          {
            v16 = (v80 - 48);
          }

          v17 = *v12;
          v18 = v12[2];
          v19 = v16[3];
          __src = 0;
          *v86 = 0;
          *&v86[8] = 0;
          __p = 0;
          v71 = 0;
          v72 = 0;
          v82 = 0;
          v83 = 0;
          v84 = 0;
          v20 = 0xAAAAAAAAAAAAAAABLL * ((48 * v13 - 48 * v17) >> 4);
          sub_1003E4354(&__src, v20);
          sub_1003E4354(&__p, v20);
          sub_1003E4354(&v82, v20);
          if (v17 != v13)
          {
            v21 = &v14[48 * v17];
            do
            {
              v22 = *v86;
              if (*v86 >= *&v86[8])
              {
                v24 = __src;
                v25 = *v86 - __src;
                v26 = (*v86 - __src) >> 3;
                v27 = v26 + 1;
                if ((v26 + 1) >> 61)
                {
                  goto LABEL_96;
                }

                v28 = *&v86[8] - __src;
                if ((*&v86[8] - __src) >> 2 > v27)
                {
                  v27 = v28 >> 2;
                }

                if (v28 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v29 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v29 = v27;
                }

                if (v29)
                {
                  sub_1000B9708(&__src, v29);
                }

                *(8 * v26) = *v21;
                v23 = 8 * v26 + 8;
                memcpy(0, v24, v25);
                v30 = __src;
                __src = 0;
                *v86 = v23;
                *&v86[8] = 0;
                if (v30)
                {
                  operator delete(v30);
                }
              }

              else
              {
                **v86 = *v21;
                v23 = v22 + 8;
              }

              *v86 = v23;
              v31 = v71;
              if (v71 >= v72)
              {
                v33 = __p;
                v34 = v71 - __p;
                v35 = (v71 - __p) >> 3;
                v36 = v35 + 1;
                if ((v35 + 1) >> 61)
                {
                  goto LABEL_96;
                }

                v37 = v72 - __p;
                if ((v72 - __p) >> 2 > v36)
                {
                  v36 = v37 >> 2;
                }

                if (v37 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v38 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v38 = v36;
                }

                if (v38)
                {
                  sub_1000B9708(&__p, v38);
                }

                *(8 * v35) = *(v21 + 1);
                v32 = (8 * v35 + 8);
                memcpy(0, v33, v34);
                v39 = __p;
                __p = 0;
                v71 = v32;
                v72 = 0;
                if (v39)
                {
                  operator delete(v39);
                }
              }

              else
              {
                *v71 = *(v21 + 1);
                v32 = (v31 + 8);
              }

              v71 = v32;
              v40 = v83;
              if (v83 >= v84)
              {
                v42 = v82;
                v43 = v83 - v82;
                v44 = (v83 - v82) >> 3;
                v45 = v44 + 1;
                if ((v44 + 1) >> 61)
                {
LABEL_96:
                  sub_10028C64C();
                }

                v46 = v84 - v82;
                if ((v84 - v82) >> 2 > v45)
                {
                  v45 = v46 >> 2;
                }

                if (v46 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v47 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v47 = v45;
                }

                if (v47)
                {
                  sub_1000B9708(&v82, v47);
                }

                *(8 * v44) = *(v21 + 2);
                v41 = (8 * v44 + 8);
                memcpy(0, v42, v43);
                v48 = v82;
                v82 = 0;
                v83 = v41;
                v84 = 0;
                if (v48)
                {
                  operator delete(v48);
                }
              }

              else
              {
                *v83 = *(v21 + 2);
                v41 = (v40 + 8);
              }

              v83 = v41;
              v21 += 48;
            }

            while (v21 != v15);
          }

          *buf = 0.0;
          *v92 = 0;
          *&v92[8] = 0;
          sub_1002EBFD4(buf, __src, *v86, (*v86 - __src) >> 3);
          v50 = sub_1007D452C(*buf, *v92, v49);
          if (*buf != 0.0)
          {
            *v92 = *buf;
            operator delete(*buf);
          }

          *buf = 0.0;
          *v92 = 0;
          *&v92[8] = 0;
          sub_1002EBFD4(buf, __p, v71, (v71 - __p) >> 3);
          v52 = sub_1007D452C(*buf, *v92, v51);
          if (*buf != 0.0)
          {
            *v92 = *buf;
            operator delete(*buf);
          }

          *buf = 0.0;
          *v92 = 0;
          *&v92[8] = 0;
          sub_1002EBFD4(buf, v82, v83, (v83 - v82) >> 3);
          v54 = sub_1007D452C(*buf, *v92, v53);
          v55 = v66;
          if (*buf != 0.0)
          {
            *v92 = *buf;
            operator delete(*buf);
          }

          if (v82)
          {
            v83 = v82;
            operator delete(v82);
          }

          if (__p)
          {
            v71 = __p;
            operator delete(__p);
          }

          if (__src)
          {
            *v86 = __src;
            operator delete(__src);
          }

          __p = *&v54;
          v71 = *&v50;
          v72 = *&v52;
          v73 = v19;
          v74 = v18;
          v75 = 1;
          if (qword_1025D44C0 != -1)
          {
            sub_10193B310();
          }

          v56 = qword_1025D44C8;
          if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
          {
            *buf = v65;
            *&buf[4] = v75;
            *v92 = 2048;
            *&v92[2] = __p;
            *&v92[10] = 2048;
            *&v92[12] = v71;
            v93 = 2048;
            v94 = v72;
            v95 = 1024;
            v96 = v74;
            _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_DEBUG, "[FormController] AggregatedGCT,isSuccessful,%d,groundContactTime,%.2f,initialContactTime,%.2f,toeOffTime,%.2f,stepSide,%d.", buf, 0x2Cu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10193B6C0(buf);
            LODWORD(__src) = v65;
            HIDWORD(__src) = v75;
            *v86 = 2048;
            *&v86[2] = __p;
            *&v86[10] = 2048;
            *&v86[12] = v71;
            v87 = 2048;
            v88 = v72;
            v89 = 1024;
            v90 = v74;
            LODWORD(v64) = 44;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44C8, 2, "[FormController] AggregatedGCT,isSuccessful,%d,groundContactTime,%.2f,initialContactTime,%.2f,toeOffTime,%.2f,stepSide,%d.", &__src, v64, *&v65, *(&v65 + 1), v66);
            v60 = v59;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRunning::FormModels::aggregateEventsOverStride(std::deque<Timeseries> &, std::deque<Timeseries> &, const std::deque<CLGaitEvents::LoggingModelOutput>::const_iterator, const std::deque<CLGaitEvents::LoggingModelOutput>::const_iterator)", "%s\n", v59);
            if (v60 != buf)
            {
              free(v60);
            }
          }

          if (sub_1007D2134(v55, v57))
          {
            sub_101599484(&__p, buf);
            if (qword_102637F48 != -1)
            {
              sub_10193BA04();
            }

            if (qword_102637F50)
            {
              operator new();
            }

            PB::Base::~Base(buf);
          }

          *buf = v19 - *(v55 + 448);
          v58 = a2;
          if (v74 == 2 || (v58 = a3, v74 == 1))
          {
            sub_1007D3F60(v58, buf, &__p);
          }

          v12 += 3;
        }

        while (v12 != v67);
      }
    }

    else
    {
      if (qword_1025D44C0 != -1)
      {
        sub_10193B310();
      }

      v61 = qword_1025D44C8;
      if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEBUG, "[FormController] Cannot process candidates for aggregation", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10193B6C0(buf);
        LOWORD(__src) = 0;
        LODWORD(v64) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44C8, 2, "[FormController] Cannot process candidates for aggregation", &__src, *&v64);
        v63 = v62;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRunning::FormModels::aggregateEventsOverStride(std::deque<Timeseries> &, std::deque<Timeseries> &, const std::deque<CLGaitEvents::LoggingModelOutput>::const_iterator, const std::deque<CLGaitEvents::LoggingModelOutput>::const_iterator)", "%s\n", v62);
        if (v63 != buf)
        {
          free(v63);
        }
      }
    }

    if (v76)
    {
      v77 = v76;
      operator delete(v76);
    }

    v8 = HIDWORD(v64);
    if (v79)
    {
      v80 = v79;
      operator delete(v79);
    }
  }

  return v8;
}

void sub_1007D351C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007D35EC(void *a1, int a2, void *a3, const void **a4, char *a5, uint64_t *a6, char *a7, uint64_t *a8)
{
  if (a8 == a6)
  {
    LODWORD(v8) = 0;
LABEL_70:
    if (qword_1025D44C0 != -1)
    {
      sub_10193B454();
    }

    v70 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v120 = v8;
      _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_ERROR, "[FormController] GCT Buffer Overload - numSamples: %d", buf, 8u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_10193C514(v8);
      return 0;
    }

    return result;
  }

  v9 = a5;
  v8 = 51 * ((a7 - a5) >> 3) - 0x3333333333333333 * ((a8 - *a7) >> 4) + 0x3333333333333333 * ((a6 - *a5) >> 4);
  if ((v8 - 1) >= 0x440)
  {
    goto LABEL_70;
  }

  v104 = v8 - 1;
  v10 = a3;
  sub_1007D3EA0(a3, v8);
  v11 = a2;
  v13 = a6;
  v12 = a7;
  v14 = a8;
  v114 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = v9;
  v19 = a6;
  v20 = 1;
  v107 = v9;
LABEL_5:
  v106 = 51 * ((v18 - v9) >> 3);
  v21 = v19;
  v112 = v18;
  while (1)
  {
    v22 = v20;
    v23 = v14 - *v12;
    v24 = 0xCCCCCCCCCCCCCCCDLL * (v23 >> 4);
    if (v23 < 81)
    {
      v29 = 51 - v24;
      v30 = (51 - v24) / 0x33;
      v27 = &v12[-8 * v30];
      v28 = *v27 + 80 * (51 * v30 - v29) + 4000;
    }

    else
    {
      v25 = v24 - 1;
      v26 = (v24 - 1) / 0x33;
      v27 = &v12[8 * v26];
      v28 = *v27 + 80 * (v25 - 51 * v26);
    }

    if (v18 >= v27 && (v18 != v27 || v21 >= v28))
    {
      break;
    }

    v32 = v19 - *v18;
    v33 = 0xCCCCCCCCCCCCCCCDLL * (v32 >> 4);
    if (v32 < -79)
    {
      v34 = (*&v18[-8 * ((49 - v33) / 0x33)] + 80 * (v33 - 49 + 51 * ((49 - v33) / 0x33)) + 4000);
    }

    else
    {
      v34 = (*&v18[8 * ((v33 + 1) / 0x33)] + 80 * ((v33 + 1) % 0x33));
    }

    if (v21 == v13)
    {
      v35 = 0;
      if (!v11)
      {
LABEL_23:
        v37 = (v21 + 1);
        ++v34;
        goto LABEL_25;
      }
    }

    else
    {
      v35 = v33 + v106 + 858993459 * ((v13 - *v107) >> 4);
      if (!v11)
      {
        goto LABEL_23;
      }
    }

    if (v11 == 1)
    {
      v37 = (v21 + 2);
      v34 += 2;
    }

    else
    {
      v36 = 0.0;
      v37 = v21;
      if (v11 != 2)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    v36 = *v34 - *v37;
LABEL_26:
    v38 = fabs(v36);
    if (v38 > 0.03)
    {
      ++v20;
    }

    v39 = *(v21 + 16);
    if (v38 <= 0.03)
    {
      ++v17;
      if (v39 == 2)
      {
        v15 = (v15 + 1);
      }

      else if (v39 == 1)
      {
        v16 = (v16 + 1);
      }
    }

    else
    {
      if (v17 >= 1)
      {
        if (v16 > v15)
        {
          v40 = 1;
        }

        else
        {
          v40 = 2;
        }

        if (v16 == v15)
        {
          v41 = v15 != 0;
        }

        else
        {
          v41 = v40;
        }

        v43 = a4[1];
        v42 = a4[2];
        if (v43 >= v42)
        {
          v45 = *a4;
          v46 = v43 - *a4;
          v47 = 0xAAAAAAAAAAAAAAABLL * (v46 >> 2) + 1;
          if (v47 > 0x1555555555555555)
          {
            goto LABEL_116;
          }

          v117 = v20;
          v48 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v45) >> 2);
          if (2 * v48 > v47)
          {
            v47 = 2 * v48;
          }

          if (v48 >= 0xAAAAAAAAAAAAAAALL)
          {
            v49 = 0x1555555555555555;
          }

          else
          {
            v49 = v47;
          }

          if (v49)
          {
            sub_1007D4324(a4, v49);
          }

          v50 = (4 * (v46 >> 2));
          *v50 = v114;
          v50[1] = v35;
          v50[2] = v41;
          v44 = v50 + 3;
          v51 = v50 - v46;
          memcpy(v50 - v46, v45, v46);
          v52 = *a4;
          *a4 = v51;
          a4[1] = v44;
          a4[2] = 0;
          if (v52)
          {
            operator delete(v52);
          }

          v12 = a7;
          v14 = a8;
          v13 = a6;
          v11 = a2;
          v10 = a3;
          v18 = v112;
          v20 = v117;
        }

        else
        {
          *v43 = v114;
          *(v43 + 1) = v35;
          v44 = v43 + 12;
          *(v43 + 2) = v41;
        }

        a4[1] = v44;
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
      v114 = v35 + 1;
    }

    v53 = *(v21 + 1);
    *&v54 = *v21;
    v55 = v21[6];
    v56 = *(v10 + 8);
    v57 = *(v10 + 16);
    if (v56 >= v57)
    {
      v59 = 0xAAAAAAAAAAAAAAABLL * ((v56 - *v10) >> 4);
      v60 = v59 + 1;
      if (v59 + 1 > 0x555555555555555)
      {
        goto LABEL_115;
      }

      v118 = v20;
      v115 = v17;
      v61 = v16;
      v62 = 0xAAAAAAAAAAAAAAABLL * ((v57 - *v10) >> 4);
      if (2 * v62 > v60)
      {
        v60 = 2 * v62;
      }

      if (v62 >= 0x2AAAAAAAAAAAAAALL)
      {
        v63 = 0x555555555555555;
      }

      else
      {
        v63 = v60;
      }

      if (v63)
      {
        sub_1007D44D4(v10, v63);
      }

      v64 = v15;
      v65 = 48 * v59;
      *v65 = v53;
      *(v65 + 16) = v54;
      *(v65 + 24) = v55;
      *(v65 + 32) = v39;
      *(v65 + 36) = 0;
      *(v65 + 40) = v22;
      v58 = 48 * v59 + 48;
      v66 = *(v10 + 8) - *v10;
      v67 = (48 * v59 - v66);
      memcpy(v67, *v10, v66);
      v68 = *v10;
      *v10 = v67;
      *(v10 + 8) = v58;
      *(v10 + 16) = 0;
      if (v68)
      {
        operator delete(v68);
      }

      v12 = a7;
      v14 = a8;
      v13 = a6;
      v11 = a2;
      v15 = v64;
      v16 = v61;
      v17 = v115;
      v10 = a3;
      v18 = v112;
      v20 = v118;
    }

    else
    {
      *(&v54 + 1) = v21[6];
      *v56 = v53;
      *(v56 + 16) = v54;
      *(v56 + 32) = v39;
      *(v56 + 36) = 0;
      *(v56 + 40) = v22;
      v58 = v56 + 48;
    }

    *(v10 + 8) = v58;
    v21 += 10;
    v19 += 10;
    if ((*v18 + 4080) == v19)
    {
      v69 = *(v18 + 1);
      v18 += 8;
      v19 = v69;
      v9 = v107;
      goto LABEL_5;
    }
  }

  v72 = a1[328];
  if (a1[329] == v72)
  {
    v74 = 0;
  }

  else
  {
    v73 = a1[332] + a1[331];
    v74 = *(v72 + 8 * (v73 / 0x33)) + 80 * (v73 % 0x33);
  }

  if (v74 != v14)
  {
    v75 = *(v14 + 1);
    *&v76 = *v14;
    v77 = v14[6];
    v78 = *(v14 + 16);
    v79 = *(v10 + 8);
    v80 = *(v10 + 16);
    if (v79 >= v80)
    {
      v82 = 0xAAAAAAAAAAAAAAABLL * ((v79 - *v10) >> 4);
      v83 = v82 + 1;
      if (v82 + 1 > 0x555555555555555)
      {
LABEL_115:
        sub_10028C64C();
      }

      v84 = v17;
      v85 = 0xAAAAAAAAAAAAAAABLL * ((v80 - *v10) >> 4);
      if (2 * v85 > v83)
      {
        v83 = 2 * v85;
      }

      if (v85 >= 0x2AAAAAAAAAAAAAALL)
      {
        v86 = 0x555555555555555;
      }

      else
      {
        v86 = v83;
      }

      if (v86)
      {
        sub_1007D44D4(v10, v86);
      }

      v87 = 48 * v82;
      *v87 = v75;
      *(v87 + 16) = v76;
      *(v87 + 24) = v77;
      *(v87 + 32) = v78;
      *(v87 + 36) = 1;
      *(v87 + 40) = v20;
      v81 = 48 * v82 + 48;
      v88 = *(v10 + 8) - *v10;
      v89 = 48 * v82 - v88;
      memcpy((v87 - v88), *v10, v88);
      v90 = *v10;
      *v10 = v89;
      *(v10 + 8) = v81;
      *(v10 + 16) = 0;
      if (v90)
      {
        operator delete(v90);
      }

      v17 = v84;
      v10 = a3;
    }

    else
    {
      *(&v76 + 1) = v14[6];
      *v79 = v75;
      *(v79 + 16) = v76;
      *(v79 + 32) = v78;
      *(v79 + 36) = 1;
      *(v79 + 40) = v20;
      v81 = v79 + 48;
    }

    *(v10 + 8) = v81;
  }

  result = 1;
  if (v17 >= 2)
  {
    if (v16 > v15)
    {
      v91 = 1;
    }

    else
    {
      v91 = 2;
    }

    if (v16 == v15)
    {
      v92 = v15 != 0;
    }

    else
    {
      v92 = v91;
    }

    v94 = a4[1];
    v93 = a4[2];
    if (v94 >= v93)
    {
      v96 = *a4;
      v97 = v94 - *a4;
      v98 = 0xAAAAAAAAAAAAAAABLL * (v97 >> 2) + 1;
      if (v98 > 0x1555555555555555)
      {
LABEL_116:
        sub_10028C64C();
      }

      v99 = 0xAAAAAAAAAAAAAAABLL * ((v93 - v96) >> 2);
      if (2 * v99 > v98)
      {
        v98 = 2 * v99;
      }

      if (v99 >= 0xAAAAAAAAAAAAAAALL)
      {
        v100 = 0x1555555555555555;
      }

      else
      {
        v100 = v98;
      }

      if (v100)
      {
        sub_1007D4324(a4, v100);
      }

      v101 = (4 * (v97 >> 2));
      *v101 = v114;
      v101[1] = v104;
      v101[2] = v92;
      v95 = v101 + 3;
      v102 = v101 - v97;
      memcpy(v101 - v97, v96, v97);
      v103 = *a4;
      *a4 = v102;
      a4[1] = v95;
      a4[2] = 0;
      if (v103)
      {
        operator delete(v103);
      }
    }

    else
    {
      *v94 = v114;
      *(v94 + 1) = v104;
      v95 = v94 + 12;
      *(v94 + 2) = v92;
    }

    a4[1] = v95;
    return 1;
  }

  return result;
}

void sub_1007D3EA0(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      sub_1007D44D4(a1, a2);
    }

    sub_10028C64C();
  }
}

uint64_t sub_1007D3F60(unint64_t *a1, void *a2, uint64_t *a3)
{
  v6 = a1[2];
  v7 = a1[1];
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 32 * (v6 - v7) - 1;
  }

  v9 = a1[4];
  v10 = a1[5];
  v11 = v10 + v9;
  if (v8 == v10 + v9)
  {
    sub_1007D5718(a1);
    v9 = a1[4];
    v10 = a1[5];
    v7 = a1[1];
    v11 = v9 + v10;
  }

  v12 = (*(v7 + ((v11 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v11);
  v13 = *a3;
  *v12 = *a2;
  v12[1] = v13;
  v14 = v10 + 1;
  a1[5] = v14;
  v15 = v9 + v14;
  v16 = (v7 + 8 * (v15 >> 8));
  if (v15)
  {
    v17 = *v16 + 16 * v15;
  }

  else
  {
    v17 = *(v16 - 1) + 4096;
  }

  return v17 - 16;
}

__n128 sub_1007D4024(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 51 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1007D6688(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x33)) + 80 * (v7 % 0x33);
  *v8 = *a2;
  result = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *(a2 + 64);
  *(v8 + 48) = *(a2 + 48);
  *(v8 + 64) = v11;
  *(v8 + 16) = result;
  *(v8 + 32) = v10;
  ++a1[5];
  return result;
}

void *sub_1007D4114(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 + 0x6DB6DB6DB6DB6DB7 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 72 - v3;
      v6 = &v2[-(v5 / 0x49)];
      *result = v6;
      v4 = *v6 + 56 * (73 * (v5 / 0x49) - v5) + 4032;
    }

    else
    {
      *result = &v2[v3 / 0x49];
      v4 = v2[v3 / 0x49] + 56 * (v3 % 0x49);
    }

    result[1] = v4;
  }

  return result;
}

void *sub_1007D41C8(void *a1, uint64_t a2, double *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = a4;
    do
    {
      v8 = v6 >> 1;
      v11 = a1;
      v12 = a2;
      sub_1007D4270(&v11, v6 >> 1);
      v9 = v12;
      if (*(v12 + 8) < *a3)
      {
        a2 = v12 + 184;
        v12 += 184;
        a1 = v11;
        if (v9 + 184 - *v11 == 4048)
        {
          a1 = v11 + 1;
          a2 = v11[1];
        }

        v8 = v6 + ~v8;
      }

      v6 = v8;
    }

    while (v8);
  }

  return a1;
}

void *sub_1007D4270(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x2C8590B21642C859 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 21 - v3;
      v6 = &v2[-(v5 / 0x16)];
      *result = v6;
      v4 = *v6 + 184 * (22 * (v5 / 0x16) - v5) + 3864;
    }

    else
    {
      *result = &v2[v3 / 0x16];
      v4 = v2[v3 / 0x16] + 184 * (v3 % 0x16);
    }

    result[1] = v4;
  }

  return result;
}

void sub_1007D4324(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_1001D0818();
}

void *sub_1007D437C(void *a1, uint64_t a2, double *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = a4;
    do
    {
      v8 = v6 >> 1;
      v11 = a1;
      v12 = a2;
      sub_1007D4424(&v11, v6 >> 1);
      v9 = v12;
      if (*(v12 + 48) < *a3)
      {
        a2 = v12 + 80;
        v12 += 80;
        a1 = v11;
        if (v9 + 80 - *v11 == 4080)
        {
          a1 = v11 + 1;
          a2 = v11[1];
        }

        v8 = v6 + ~v8;
      }

      v6 = v8;
    }

    while (v8);
  }

  return a1;
}

void *sub_1007D4424(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x3333333333333333 * ((result[1] - **result) >> 4);
    if (v3 < 1)
    {
      v5 = 50 - v3;
      v6 = &v2[-(v5 / 0x33)];
      *result = v6;
      v4 = *v6 + 80 * (51 * (v5 / 0x33) - v5) + 4000;
    }

    else
    {
      *result = &v2[v3 / 0x33];
      v4 = v2[v3 / 0x33] + 80 * (v3 % 0x33);
    }

    result[1] = v4;
  }

  return result;
}

void sub_1007D44D4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1001D0818();
}

double sub_1007D452C(double *a1, double *a2, double a3)
{
  v3 = a2 - a1;
  if (a2 - a1 <= 7)
  {
    sub_1018B144C();
  }

  v4 = a1;
  v5 = (v3 >> 1) & 0x3FFFFFFFFFFFFFF8;
  v6 = (a1 + v5);
  if ((a1 + v5) != a2)
  {
    sub_1003E3EC0(a1, (a1 + v5), a2, a3);
  }

  if ((v3 & 8) != 0)
  {
    return *v6;
  }

  if (v5)
  {
    v7 = v4 + 1;
    if (v4 + 1 != v6)
    {
      v8 = *v4;
      v9 = v4 + 1;
      do
      {
        v10 = *v9++;
        v11 = v10;
        if (v8 < v10)
        {
          v8 = v11;
          v4 = v7;
        }

        v7 = v9;
      }

      while (v9 != v6);
    }
  }

  return *v4 + (*v6 - *v4) * 0.5;
}

void *sub_1007D45EC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = a4;
    do
    {
      v8 = v6 >> 1;
      v11 = a1;
      v12 = a2;
      sub_1007D4114(&v11, v6 >> 1);
      v9 = v12;
      if (*(v12 + 40) <= *(a3 + 40))
      {
        a2 = v12 + 56;
        v12 += 56;
        a1 = v11;
        if (v9 + 56 - *v11 == 4088)
        {
          a1 = v11 + 1;
          a2 = v11[1];
        }

        v8 = v6 + ~v8;
      }

      v6 = v8;
    }

    while (v8);
  }

  return a1;
}

void *sub_1007D4694(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v6 = a1;
  if (a4 != a2)
  {
    v7 = 73 * (a3 - a1) + 0x6DB6DB6DB6DB6DB7 * ((a4 - *a3) >> 3) - 0x6DB6DB6DB6DB6DB7 * ((a2 - *a1) >> 3);
    if (v7)
    {
      do
      {
        v9 = v7 >> 1;
        v11 = v6;
        v12 = v5;
        sub_1007D4114(&v11, v7 >> 1);
        if (*(a5 + 40) > *(v12 + 40))
        {
          v6 = v11;
          v5 = v12 + 56;
          if (v12 + 56 - *v11 == 4088)
          {
            v6 = v11 + 1;
            v5 = v11[1];
          }

          v9 = v7 + ~v9;
        }

        v7 = v9;
      }

      while (v9);
    }
  }

  return v6;
}

uint64_t sub_1007D47A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 16) <= a3)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10193B704();
    }

    v11 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: false, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMRandomForest.h, line 56,Index exceeds ensemble size.", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193C61C();
    }

    if (qword_1025D48A0 != -1)
    {
      sub_10193B718();
    }

    v12 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *v22 = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Error: Index exceeds ensemble size", v22, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193C700();
    }
  }

  else
  {
    v3 = 0;
    v4 = (*(a1 + 8) + 16 * a3);
    while (v3 < v4[1])
    {
      v5 = *v4 + 10 * v3;
      v6 = *(v5 + 4);
      if (v6 >= 0x16)
      {
        if (qword_1025D48A0 != -1)
        {
          sub_10193B704();
        }

        v15 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
        {
          *v21 = 0;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "Assertion failed: false, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMRandomForest.h, line 65,Invalid decision tree, feature index exceeds feature array.", v21, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10193C9AC();
        }

        if (qword_1025D48A0 != -1)
        {
          sub_10193B718();
        }

        v16 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          *v20 = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "Error: Invalid decision tree, feature index exceeds feature array", v20, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10193CA90();
        }

        return -1;
      }

      v7 = *(a2 + 4 * v6);
      if (v7 >= *v5)
      {
        v8 = 8;
      }

      else
      {
        v8 = 6;
      }

      if (v7 <= *v5)
      {
        v9 = 6;
      }

      else
      {
        v9 = 8;
      }

      if (!*(a1 + 24))
      {
        v8 = v9;
      }

      v3 = *(v5 + v8);
      if ((v3 & 0x8000000000000000) != 0)
      {
        return ~v3;
      }
    }

    if (qword_1025D48A0 != -1)
    {
      sub_10193B704();
    }

    v13 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *v19 = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "Assertion failed: false, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMRandomForest.h, line 91,Invalid decision tree, child index exceeds node array.", v19, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193C7E4();
    }

    if (qword_1025D48A0 != -1)
    {
      sub_10193B718();
    }

    v14 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *v18 = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Error: Invalid decision tree, child index exceeds node array", v18, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193C8C8();
    }
  }

  return -1;
}

uint64_t sub_1007D4AD0(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 17;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 34;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1003EE22C(a1);
}

uint64_t sub_1007D4B7C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 42;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 85;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1003EE22C(a1);
}

void sub_1007D4C28(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_10045E858(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10045E430(a1, &v9);
}

void sub_1007D4DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1007D4DFC(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_10045E858(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10045E430(a1, &v9);
}

void sub_1007D4F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1007D4FD0(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_10045E858(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10045E430(a1, &v9);
}

void sub_1007D5158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1007D51A4(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x55;
  v3 = v1 - 85;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_10045E858(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10045E430(a1, &v9);
}

void sub_1007D532C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1007D5378(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x22;
  v3 = v1 - 34;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_10045E858(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10045E430(a1, &v9);
}

void sub_1007D5500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

float sub_1007D554C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a1 + 16))(a1, a2);
  v6 = 0.0;
  if (v5 != -1)
  {
    v7 = (a1[4] + 16 * a3);
    if (v7[1] <= v5)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_10193B704();
      }

      v8 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: false, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMRandomForestRegression.h, line 58,Invalid decision tree, regression index exceeds array length.", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10193CB74();
      }

      if (qword_1025D48A0 != -1)
      {
        sub_10193B718();
      }

      v9 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *v11 = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Error: Invalid decision tree, regression index exceeds array length", v11, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10193CC58();
      }
    }

    else
    {
      return *(*v7 + 4 * v5);
    }
  }

  return v6;
}

uint64_t sub_1007D56B8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x22)
  {
    a2 = 1;
  }

  if (v2 < 0x44)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 34;
  }

  return v4 ^ 1u;
}

void sub_1007D5718(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_10045E858(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10045E430(a1, &v9);
}

void sub_1007D58A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t *sub_1007D58EC(unint64_t *a1, void *a2, __int128 *a3, void *a4, __int128 *a5)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  sub_1007D5934(a1, a2, a3, a4, a5);
  return a1;
}

void *sub_1007D5934(unint64_t *a1, void *a2, __int128 *a3, void *a4, __int128 *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 73 * (a4 - a2) + 0x6DB6DB6DB6DB6DB7 * ((a5 - *a4) >> 3) - 0x6DB6DB6DB6DB6DB7 * ((a3 - *a2) >> 3);
  }

  return sub_1007D5998(a1, a2, a3, v5);
}

void *sub_1007D5998(unint64_t *a1, void *a2, __int128 *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 73 * ((v9 - v8) >> 3) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    sub_1007D5B2C(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 / 0x49));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 56 * (v11 % 0x49);
    v15 = v14;
  }

  v26 = v13;
  v27 = v15;
  result = sub_1007D4114(&v26, a4);
  v17 = v27;
  if (v14 != v27)
  {
    v18 = v26;
    do
    {
      if (v13 == v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 4088;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = v14;
        do
        {
          v21 = *a3;
          v22 = a3[1];
          v23 = a3[2];
          *(v20 + 48) = *(a3 + 6);
          *(v20 + 16) = v22;
          *(v20 + 32) = v23;
          *v20 = v21;
          a3 = (a3 + 56);
          if ((a3 - *a2) == 4088)
          {
            v24 = a2[1];
            ++a2;
            a3 = v24;
          }

          v20 += 56;
        }

        while (v20 != v19);
      }

      a1[5] += 0x6DB6DB6DB6DB6DB7 * ((v19 - v14) >> 3);
      if (v13 == v18)
      {
        break;
      }

      v25 = v13[1];
      ++v13;
      v14 = v25;
    }

    while (v25 != v17);
  }

  return result;
}

void sub_1007D5B2C(unint64_t *a1, unint64_t a2)
{
  v3 = a1[2] - a1[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4 % 0x49)
  {
    v5 = v4 / 0x49 + 1;
  }

  else
  {
    v5 = v4 / 0x49;
  }

  v6 = a1[4];
  if (v5 >= v6 / 0x49)
  {
    v7 = v6 / 0x49;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 / 0x49)
  {
    for (a1[4] = v6 - 73 * v7; v7; --v7)
    {
      v14 = a1[1];
      v16[0] = *v14;
      a1[1] = (v14 + 1);
      sub_10045E430(a1, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = a1[3] - *a1;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = a1;
      if (v12)
      {
        sub_10045E858(a1, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (a1[3] != a1[2])
      {
        operator new();
      }

      operator new();
    }

    for (a1[4] -= 73 * v7; v7; --v7)
    {
      v15 = a1[1];
      v16[0] = *v15;
      a1[1] = (v15 + 1);
      sub_10045E430(a1, v16);
    }
  }
}

void sub_1007D5E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007D5E78(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x33)
  {
    a2 = 1;
  }

  if (v2 < 0x66)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 51;
  }

  return v4 ^ 1u;
}

float *sub_1007D5ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v6 = sub_10011AF6C(a1, v4);
      v7 = v6 * sub_10011AF6C(a1, i);
      result = sub_1004ACF54(a2, v4, i);
      *result = v7;
    }

    ++v4;
  }

  while (v4 != 3);
  return result;
}

float sub_1007D5F60(uint64_t a1, uint8_t *a2)
{
  if (a2 >= 9)
  {
    sub_10193CD3C(a2);
  }

  return *(a1 + 4 * a2);
}

float32_t sub_1007D5F9C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  do
  {
    *sub_1004ACF54(a2, v4, v4) = 1065353216;
    v5 = *sub_1004ACF54(a1, v4, v4);
    *sub_10011AF30(&v70, v4) = v5;
    v6 = *sub_1004ACF54(a1, v4, v4);
    *sub_10011AF30(&v68, v4) = v6;
    *sub_10011AF30(&v66, v4++) = 0;
  }

  while (v4 != 3);
  v7 = 0;
  do
  {
    v8 = 0;
    v9 = 1;
    v10 = 0.0;
    do
    {
      v11 = v9;
      v12 = v8 + 1;
      do
      {
        v13 = sub_1004ACF54(a1, v8, v12);
        v14 = *v13;
        if (*v13 <= 0.0)
        {
          v14 = -*v13;
        }

        v10 = v10 + v14;
        ++v12;
      }

      while (v12 != 3);
      v9 = 0;
      v8 = 1;
    }

    while ((v11 & 1) != 0);
    if (v10 == 0.0)
    {
      break;
    }

    v15 = 0.0;
    if (v7 <= 2)
    {
      v15 = (v10 * 0.2) / 9.0;
    }

    v16 = 0;
    v17 = 0;
    v65 = v7 + 1;
    v18 = 1;
    do
    {
      v19 = v18;
      v20 = (v17 + 1);
      do
      {
        v21 = sub_1004ACF54(a1, v17, v20);
        v22 = *v21;
        if (*v21 <= 0.0)
        {
          v22 = -*v21;
        }

        v23 = v22 * 100.0;
        if (v7 < 4)
        {
          goto LABEL_31;
        }

        v24 = sub_10011AF30(&v70, v17);
        v25 = v23 + *v24;
        if (v25 <= 0.0)
        {
          v26 = -v25;
        }

        else
        {
          v26 = v23 + *v24;
        }

        v27 = sub_10011AF30(&v70, v17);
        v28 = *v27;
        if (*v27 <= 0.0)
        {
          v28 = -*v27;
        }

        if (v26 != v28)
        {
          goto LABEL_31;
        }

        v29 = sub_10011AF30(&v70, v20);
        v30 = v23 + *v29;
        if (v30 <= 0.0)
        {
          v31 = -v30;
        }

        else
        {
          v31 = v23 + *v29;
        }

        v32 = sub_10011AF30(&v70, v20);
        v33 = *v32;
        if (*v32 <= 0.0)
        {
          v33 = -*v32;
        }

        if (v31 == v33)
        {
          *sub_1004ACF54(a1, v17, v20) = 0;
        }

        else
        {
LABEL_31:
          v34 = sub_1004ACF54(a1, v17, v20);
          v35 = *v34;
          if (*v34 <= 0.0)
          {
            v35 = -*v34;
          }

          if (v35 > v15)
          {
            v36 = *sub_10011AF30(&v70, v20);
            v37 = v36 - *sub_10011AF30(&v70, v17);
            v38 = v23 + v37;
            if ((v23 + v37) <= 0.0)
            {
              v38 = -(v23 + v37);
            }

            v39 = -v37;
            if (v37 > 0.0)
            {
              v39 = v37;
            }

            if (v38 == v39)
            {
              v40 = *sub_1004ACF54(a1, v17, v20) / v37;
            }

            else
            {
              v41 = sub_1004ACF54(a1, v17, v20);
              v42 = (v37 * 0.5) / *v41;
              v43 = -v42;
              v44 = v42 < 0.0;
              if (v42 > 0.0)
              {
                v43 = (v37 * 0.5) / *v41;
              }

              v45 = 1.0 / (v43 + sqrtf((v42 * v42) + 1.0));
              if (v44)
              {
                v40 = -v45;
              }

              else
              {
                v40 = v45;
              }
            }

            v46 = 1.0 / sqrtf((v40 * v40) + 1.0);
            v47 = v40 * v46;
            v48 = (v40 * v46) / (v46 + 1.0);
            v49 = v40 * *sub_1004ACF54(a1, v17, v20);
            v50 = sub_10011AF30(&v66, v17);
            *v50 = *v50 - v49;
            v51 = sub_10011AF30(&v66, v20);
            *v51 = v49 + *v51;
            v52 = sub_10011AF30(&v70, v17);
            *v52 = *v52 - v49;
            v53 = sub_10011AF30(&v70, v20);
            *v53 = v49 + *v53;
            *sub_1004ACF54(a1, v17, v20) = 0;
            if (v16)
            {
              v54 = *(a1 + 12);
              v55 = sub_1004ACF54(a1, 0, v20);
              v56 = *v55;
              *(a1 + 12) = v54 - (v47 * (*v55 + (v54 * v48)));
              *sub_1004ACF54(a1, 0, v20) = v56 + (v47 * (v54 - (v56 * v48)));
            }

            if (v17 + 1 < v20)
            {
              do
              {
                v57 = *sub_1004ACF54(a1, v17, 1uLL);
                v58 = *(a1 + 28);
                *sub_1004ACF54(a1, v17, 1uLL) = v57 + (-v47 * (v58 + (v57 * v48)));
                *(a1 + 28) = v58 + (v47 * (v57 - (v58 * v48)));
              }

              while (v20 > 2);
            }

            if (v20 != 2)
            {
              v59 = *sub_1004ACF54(a1, v17, 2uLL);
              v60 = *sub_1004ACF54(a1, v20, 2uLL);
              *sub_1004ACF54(a1, v17, 2uLL) = v59 - (v47 * (v60 + (v59 * v48)));
              *sub_1004ACF54(a1, v20, 2uLL) = v60 + (v47 * (v59 - (v60 * v48)));
            }

            v61 = 0;
            do
            {
              v62 = *sub_1004ACF54(a2, v61, v17);
              v63 = *sub_1004ACF54(a2, v61, v20);
              *sub_1004ACF54(a2, v61, v17) = v62 + (-v47 * (v63 + (v62 * v48)));
              *sub_1004ACF54(a2, v61++, v20) = v63 + (v47 * (v62 - (v63 * v48)));
            }

            while (v61 != 3);
          }
        }

        ++v20;
      }

      while (v20 != 3);
      v18 = 0;
      v16 = 1;
      v17 = 1;
    }

    while ((v19 & 1) != 0);
    v68 = vadd_f32(v66, v68);
    v69 = v67 + v69;
    v70 = v68;
    v71 = v69;
    v67 = 0.0;
    v66 = 0;
    ++v7;
  }

  while (v65 != 10);
  return v70.f32[0];
}

int *sub_1007D6564(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v6 = *sub_10011AF30(*a1, a2);
  result = sub_10011AF30(*a1, a3);
  if (v6 < *result)
  {
    v8 = sub_10011AF30(*a1, a2);
    v9 = sub_10011AF30(*a1, a3);
    v10 = *v8;
    *v8 = *v9;
    *v9 = v10;
    v11 = sub_1004ACF54(a1[1], 0, a2);
    v12 = sub_1004ACF54(a1[1], 0, a3);
    v13 = *v11;
    *v11 = *v12;
    *v12 = v13;
    v14 = sub_1004ACF54(a1[1], 1, a2);
    v15 = sub_1004ACF54(a1[1], 1, a3);
    v16 = *v14;
    *v14 = *v15;
    *v15 = v16;
    v17 = sub_1004ACF54(a1[1], 2, a2);
    result = sub_1004ACF54(a1[1], 2, a3);
    v18 = *v17;
    *v17 = *result;
    *result = v18;
  }

  return result;
}

void sub_1007D6688(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x33;
  v3 = v1 - 51;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_10045E858(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10045E430(a1, &v9);
}

void sub_1007D6810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007D685C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 65793;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0xFFFF;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 136) = _Q0;
  *(a1 + 152) = _Q0;
  *(a1 + 168) = _Q0;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0xBFF0000000000000;
  *(a1 + 204) = 0;
  *(a1 + 196) = 0;
  *(a1 + 212) = 0;
  *(a1 + 216) = 0xBFF0000000000000;
  *(a1 + 224) = 0x7FFFFFFF;
  *(a1 + 244) = 0;
  *(a1 + 228) = 0;
  *(a1 + 236) = 0;
  *(a1 + 252) = 0;
  *(a1 + 256) = 0;
  v20 = 0;
  sub_10001CAF4(&v18);
  v11 = sub_10001CB4C(v18, "HSTUpdateWithGPS", &v20, 0xFFFFFFFFLL);
  if (v19)
  {
    sub_100008080(v19);
  }

  if (v11)
  {
    *a1 = v20;
  }

  sub_10001CAF4(&v18);
  v12 = sub_10001CB4C(v18, "HSTUpdateWithWifi", &v20, 0xFFFFFFFFLL);
  if (v19)
  {
    sub_100008080(v19);
  }

  if (v12)
  {
    *(a1 + 1) = v20;
  }

  sub_10001CAF4(&v18);
  v13 = sub_10001CB4C(v18, "HSTUpdateWithCell", &v20, 0xFFFFFFFFLL);
  if (v19)
  {
    sub_100008080(v19);
  }

  if (v13)
  {
    *(a1 + 2) = v20;
  }

  sub_100175E70((a1 + 24), a3);
  v15 = *a2;
  v14 = a2[1];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(a1 + 16);
  *(a1 + 8) = v15;
  *(a1 + 16) = v14;
  if (v16)
  {
    sub_100008080(v16);
  }

  return a1;
}

void sub_1007D6A00(_Unwind_Exception *a1)
{
  sub_100176170(v1 + 24);
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1007D6A4C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000B1F8(a1, a2);
  sub_10000AED4(v3, &v6);
  v4 = v7;
  *(a1 + 56) = 0;
  if (qword_1025D4600 != -1)
  {
    sub_10193CF9C();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v6.n128_u32[0] = 134217984;
    *(v6.n128_f64 + 4) = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#HST, Turn Detected at time: %.2f", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193D374(v4);
  }
}

void sub_1007D6B6C(uint64_t a1, void *a2)
{
  v3 = sub_100867168(a1, a2);
  *v3 = off_102471EE0;
  *(a1 + 121) = sub_1007D7CC4(v3);
  *(a1 + 122) = sub_1007D6F28();
  *(a1 + 132) = 0;
  *(a1 + 124) = 0;
  sub_10054B43C(a1 + 144, @"com.apple.nanolifestyle.sessiontrackerapp", 1, @"mobile");
  *(a1 + 280) = 0;
  *(a1 + 288) = 0xBFF0000000000000;
  *(a1 + 296) = 0;
  *(a1 + 300) = 0;
  *(a1 + 304) = 0;
  *(a1 + 308) = 0;
  *(a1 + 312) = 0;
  LODWORD(v13) = 0;
  sub_1004861C8((a1 + 320), "OverrideFitnessTrackingChargerWithType", &v13, 0);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_1007D6F84, @"NanoLifestylePrivacyPreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v5, a1, sub_1007D71B0, @"NanoLifestyleSessionTrackerAppPreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v6, a1, sub_1007D73DC, @"NanoLifestyleEnableFitnessDataCollectionSettingDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v7 = (*(*a1 + 216))(a1);
  sub_1008678F8(a1, v7);
  if (objc_opt_class())
  {
    v8 = objc_alloc_init(PDRRegistry);
    *(a1 + 312) = v8;
    [v8 start];
    v9 = +[NSNotificationCenter defaultCenter];
    v10 = *(a1 + 312);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1007D7608;
    v15[3] = &unk_10245B770;
    v15[4] = a1;
    [(NSNotificationCenter *)v9 addObserverForName:PDRDidSetupNotification object:v10 queue:0 usingBlock:v15];
    v11 = +[NSNotificationCenter defaultCenter];
    v12 = *(a1 + 312);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1007D7780;
    v14[3] = &unk_10245B770;
    v14[4] = a1;
    [(NSNotificationCenter *)v11 addObserverForName:PDRDidUnpairNotification object:v12 queue:0 usingBlock:v14];
  }

  sub_10061F1A0();
}

void sub_1007D6EC4(_Unwind_Exception *a1)
{
  v3 = v1[35];
  v1[35] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_10054B4D4((v1 + 18));
  sub_10086763C(v1);
  _Unwind_Resume(a1);
}

id sub_1007D6F28()
{
  result = objc_opt_class();
  if (result)
  {
    v1 = [+[PDRRegistry sharedInstance](PDRRegistry getActiveDevice];

    return [v1 supportsCapability:3319653853];
  }

  return result;
}

void sub_1007D6F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10193D5C8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLFitnessTrackingNotifier::fitnessTrackingStateChanged", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10193D5DC();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFitnessTrackingNotifier::fitnessTrackingStateChanged, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1007D9F00;
  v13[3] = &unk_10244FF80;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  [v12 sync:v13];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1007D71B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10193D5C8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLFitnessTrackingNotifierWatch::nanoLifestyleSessionTrackerAppPreferencesChanged", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10193D5DC();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFitnessTrackingNotifierWatch::nanoLifestyleSessionTrackerAppPreferencesChanged, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1007D9F44;
  v13[3] = &unk_10244FF80;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  [v12 sync:v13];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}