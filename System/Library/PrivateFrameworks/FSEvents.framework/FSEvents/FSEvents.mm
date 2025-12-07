void __FSEventStreamSetDispatchQueue_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 188))
  {
    if (!*(v1 + 189))
    {
      process_dir_events(*(result + 40), v1);
    }
  }
}

void process_dir_events(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2[49];
  v4 = a2[50];
  v6 = a2[9];
  timeout.tv_sec = 0;
  timeout.tv_nsec = 0;
  v7 = kevent(a1, 0, 0, v4, v6, &timeout);
  if ((v7 & 0x80000000) != 0)
  {
    v38 = __error();
    v39 = *v38;
    v41 = fsevent_default_log(v38, v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      process_dir_events_cold_1(v39);
    }
  }

  else if (v7)
  {
    for (i = v7; i; --i)
    {
      if (v4->udata < 0)
      {
        udata = v4->udata & 0x7FFFFFFF;
      }

      else
      {
        udata = v4->udata;
      }

      if (udata < 0 || udata >= v6 || (v11 = v5 + 32 * udata, v7 = *(v11 + 4), (v7 & 0x80000000) != 0) || (v12 = *(v11 + 24)) == 0)
      {
        v22 = fsevent_default_log(v7, v8);
        v7 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
        if (v7)
        {
          if (udata >= v6)
          {
            v28 = 0;
            v27 = -1;
          }

          else
          {
            v26 = v5 + 32 * udata;
            v27 = *(v26 + 4);
            v28 = *(v26 + 24);
          }

          buf.st_dev = 136316162;
          *&buf.st_mode = "process_dir_events";
          WORD2(buf.st_ino) = 2048;
          *(&buf.st_ino + 6) = udata;
          HIWORD(buf.st_gid) = 1024;
          buf.st_rdev = v6;
          *(&buf.st_rdev + 2) = 1024;
          *(&buf.st_rdev + 6) = v27;
          WORD1(buf.st_atimespec.tv_sec) = 2048;
          *(&buf.st_atimespec.tv_sec + 4) = v28;
          p_buf = &buf;
          v19 = v22;
          v20 = "%s: index in event (%ld) not valid (%d max; fdtbl %d name %p)";
          v21 = 44;
          goto LABEL_39;
        }
      }

      else
      {
        if (*v11)
        {
          v7 = watch_path("process_dir_events", a1, v12, v4, v5 + 32 * udata, udata);
          if (v7)
          {
            v23 = fsevent_default_log(v7, v8);
            v7 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
            if (v7)
            {
              v36 = *(v11 + 24);
              buf.st_dev = 136315394;
              *&buf.st_mode = "process_dir_events";
              WORD2(buf.st_ino) = 2080;
              *(&buf.st_ino + 6) = v36;
              _os_log_error_impl(&dword_24A91B000, v23, OS_LOG_TYPE_ERROR, "%s: creation: watch_path() failed for '%s'", &buf, 0x16u);
            }
          }

          if (*v11)
          {
            goto LABEL_17;
          }

          root_dir_event_callback(a2, udata, 32);
          if ((*v11 & 8) == 0)
          {
            goto LABEL_17;
          }

          v7 = watch_all_parents("process_dir_events", a1, *(v11 + 24), v5 + 32 * udata, udata);
          if (!v7)
          {
            goto LABEL_17;
          }

          v24 = fsevent_default_log(v7, v8);
          v7 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
          if (!v7)
          {
            goto LABEL_17;
          }

          v25 = *(v11 + 24);
          buf.st_dev = 136315394;
          *&buf.st_mode = "process_dir_events";
          WORD2(buf.st_ino) = 2080;
          *(&buf.st_ino + 6) = v25;
          p_buf = &buf;
          v19 = v24;
          v20 = "%s: creation: watch_all_parents() failed for '%s'";
LABEL_51:
          v21 = 22;
          goto LABEL_39;
        }

        fflags = v4->fflags;
        if ((fflags & 0x22) == 0)
        {
          if ((fflags & 1) == 0)
          {
            goto LABEL_17;
          }

          root_dir_event_callback(a2, udata, 32);
          v7 = watch_path("process_dir_events", a1, *(v11 + 24), v4, v5 + 32 * udata, udata);
          if (v7)
          {
            v29 = fsevent_default_log(v7, v8);
            v7 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
            if (v7)
            {
              v37 = *(v11 + 24);
              buf.st_dev = 136315394;
              *&buf.st_mode = "process_dir_events";
              WORD2(buf.st_ino) = 2080;
              *(&buf.st_ino + 6) = v37;
              _os_log_error_impl(&dword_24A91B000, v29, OS_LOG_TYPE_ERROR, "%s: delete: watch_path() failed for '%s'", &buf, 0x16u);
            }
          }

          if ((*v11 & 8) == 0)
          {
            goto LABEL_17;
          }

          v7 = watch_all_parents("process_dir_events", a1, *(v11 + 24), v5 + 32 * udata, udata);
          if (!v7)
          {
            goto LABEL_17;
          }

          v30 = fsevent_default_log(v7, v8);
          v7 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
          if (!v7)
          {
            goto LABEL_17;
          }

          v31 = *(v11 + 24);
          buf.st_dev = 136315394;
          *&buf.st_mode = "process_dir_events";
          WORD2(buf.st_ino) = 2080;
          *(&buf.st_ino + 6) = v31;
          p_buf = &buf;
          v19 = v30;
          v20 = "%s: delete: watch_all_parents() failed for '%s'";
          goto LABEL_51;
        }

        memset(&buf, 0, sizeof(buf));
        v14 = fcntl(v7, 50, __s1);
        if (!v14)
        {
          if (!strcmp(__s1, *(v11 + 24)))
          {
            v7 = lstat(__s1, &buf);
            if (!v7)
            {
              goto LABEL_17;
            }
          }

          root_dir_event_callback(a2, udata, 32);
          if ((*v11 & 4) != 0)
          {
            free(*(v11 + 24));
            v7 = strdup(__s1);
            *(v11 + 24) = v7;
          }

          else
          {
            v7 = watch_path("process_dir_events", a1, *(v11 + 24), v4, v5 + 32 * udata, udata);
            if (v7)
            {
              v32 = fsevent_default_log(v7, v8);
              v7 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
              if (v7)
              {
                v33 = *(v11 + 24);
                *v43 = 136315394;
                v44 = "process_dir_events";
                v45 = 2080;
                v46 = v33;
                _os_log_error_impl(&dword_24A91B000, v32, OS_LOG_TYPE_ERROR, "%s: rename: watch_path() failed for '%s'", v43, 0x16u);
              }
            }
          }

          if ((*v11 & 8) == 0)
          {
            goto LABEL_17;
          }

          v7 = watch_all_parents("process_dir_events", a1, *(v11 + 24), v5 + 32 * udata, udata);
          if (!v7)
          {
            goto LABEL_17;
          }

          v34 = fsevent_default_log(v7, v8);
          v7 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
          if (!v7)
          {
            goto LABEL_17;
          }

          v35 = *(v11 + 24);
          *v43 = 136315394;
          v44 = "process_dir_events";
          v45 = 2080;
          v46 = v35;
          p_buf = v43;
          v19 = v34;
          v20 = "%s: rename: watch_all_parents() failed for '%s'";
          goto LABEL_51;
        }

        v16 = fsevent_default_log(v14, v15);
        v7 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
        if (v7)
        {
          v17 = *(v11 + 4);
          *v43 = 136315394;
          v44 = "process_dir_events";
          v45 = 1024;
          LODWORD(v46) = v17;
          p_buf = v43;
          v19 = v16;
          v20 = "%s: failed to get the new path for fd %d";
          v21 = 18;
LABEL_39:
          _os_log_error_impl(&dword_24A91B000, v19, OS_LOG_TYPE_ERROR, v20, p_buf, v21);
        }
      }

LABEL_17:
      ++v4;
    }
  }
}

uint64_t watch_path(const char *a1, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = 0;
  v68 = *MEMORY[0x277D85DE8];
  memset(&v55, 0, sizeof(v55));
  v11 = -1;
  memset(&v54, 0, sizeof(v54));
  v12 = 1;
  v13 = 0xFFFFFFFFLL;
  v14 = 1;
  while (1)
  {
    v15 = v10;
    v10 = v12;
    realpath_DARWIN_EXTSN(a3, &__s);
    if (v66)
    {
      v16 = 0;
      while (1)
      {
        v17 = open(&__s, 0x8000);
        if ((v17 & 0x80000000) == 0)
        {
          break;
        }

        __error();
        my_dirname(&__s, v67);
        realpath_DARWIN_EXTSN(v67, &__s);
        ++v16;
        if (!v66)
        {
          goto LABEL_8;
        }
      }

      v11 = v17;
LABEL_11:
      v13 = 0;
      goto LABEL_12;
    }

    v16 = 0;
    if (v11 < 0)
    {
LABEL_8:
      v18 = open(&__s, 0x8000);
      v11 = v18;
      if ((v18 & 0x80000000) != 0)
      {
        v41 = fsevent_default_log(v18, v19);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          watch_path_cold_2();
        }

        v43 = __error();
        v45 = fsevent_default_log(v43, v44);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          watch_path_cold_3();
        }

        v33 = __error();
        v13 = *v33;
        goto LABEL_47;
      }

      goto LABEL_11;
    }

LABEL_12:
    fcntl(v11, 2, 1);
    if (v14 || (v20 = open(&__s, 0), v20 < 0))
    {
      v24 = v15;
    }

    else
    {
      v21 = v20;
      fstat(v11, &v55);
      fstat(v21, &v54);
      close(v21);
      v22 = close(v11);
      if (v55.st_ino == v54.st_ino)
      {
        v46 = fsevent_default_log(v22, v23);
        v33 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
        if (v33)
        {
          watch_path_cold_1();
        }

        v11 = -1;
        goto LABEL_47;
      }

      v24 = v15;
      v11 = -1;
    }

    *a4 = v11;
    *(a4 + 8) = 0x270021FFFCLL;
    *(a4 + 16) = 0;
    *(a4 + 24) = a6;
    v25 = kevent(a2, a4, 1, 0, 0, 0);
    v13 = v25;
    if ((v25 & 0x80000000) != 0)
    {
      v27 = fsevent_default_log(v25, v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v50 = *(a5 + 24);
        v37 = __error();
        v38 = strerror(*v37);
        *buf = 136316162;
        v57 = a1;
        v58 = 2080;
        p_s = "watch_path";
        v60 = 1024;
        v61 = v11;
        v62 = 2080;
        *v63 = v50;
        *&v63[8] = 2080;
        v64[0] = v38;
        _os_log_error_impl(&dword_24A91B000, v27, OS_LOG_TYPE_ERROR, "%s: %s: error trying to add kqueue for fd %d (%s; %s)", buf, 0x30u);
      }
    }

    v28 = *(a5 + 4);
    if ((v28 & 0x80000000) == 0)
    {
      *a4 = v28;
      *(a4 + 8) = 0x270002FFFCLL;
      *(a4 + 16) = 0;
      *(a4 + 24) = a6;
      v29 = kevent(a2, a4, 1, 0, 0, 0);
      v13 = v29;
      if ((v29 & 0x80000000) != 0)
      {
        v31 = fsevent_default_log(v29, v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v51 = *(a5 + 4);
          v39 = __error();
          v40 = strerror(*v39);
          *buf = 136315906;
          v57 = a1;
          v58 = 2080;
          p_s = "watch_path";
          v60 = 1024;
          v61 = v51;
          v62 = 2080;
          *v63 = v40;
          _os_log_error_impl(&dword_24A91B000, v31, OS_LOG_TYPE_ERROR, "%s: %s: error removing fd %d from kqueue (%s)", buf, 0x26u);
        }
      }

      close(*(a5 + 4));
    }

    v32 = *a5 & 0xFFFFFFFE;
    if (v16)
    {
      ++v32;
    }

    *a5 = v32;
    *(a5 + 4) = v11;
    v33 = open(&__s, 0);
    v35 = v33;
    if ((v33 & 0x80000000) != 0)
    {
      break;
    }

    fstat(v11, &v55);
    fstat(v35, &v54);
    v33 = close(v35);
    if (v55.st_ino == v54.st_ino)
    {
      goto LABEL_41;
    }

    v36 = fsevent_default_log(v33, v34);
    v33 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (v33)
    {
      *buf = 136315394;
      v57 = "watch_path";
      v58 = 2080;
      p_s = &__s;
      _os_log_error_impl(&dword_24A91B000, v36, OS_LOG_TYPE_ERROR, "%s: watching path(%s) renamed while registering watchroot", buf, 0x16u);
    }

LABEL_32:
    v14 = v35 >= 0;
    v12 = v10 + 1;
    if (v10 == 1000)
    {
      v10 = 1001;
      goto LABEL_47;
    }
  }

  if ((*a5 & 5) != 4)
  {
    goto LABEL_32;
  }

  v33 = fcntl(*(a5 + 4), 50, buf);
  if (!v33)
  {
    free(*(a5 + 24));
    v33 = strdup(buf);
    *(a5 + 24) = v33;
  }

LABEL_41:
  if (v24 != 999 && (v11 & 0x80000000) == 0)
  {
    return 0;
  }

LABEL_47:
  v47 = fsevent_default_log(v33, v34);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    v49 = strerror(v13);
    *buf = 136316418;
    v57 = "watch_path";
    v58 = 2080;
    p_s = a3;
    v60 = 1024;
    v61 = v11;
    v62 = 1024;
    *v63 = v10;
    *&v63[4] = 1024;
    *&v63[6] = v13;
    LOWORD(v64[0]) = 2080;
    *(v64 + 2) = v49;
    _os_log_error_impl(&dword_24A91B000, v47, OS_LOG_TYPE_ERROR, "%s: watching path (%s) fd(%d) retry (%d) failed (%d):(%s)", buf, 0x32u);
  }

  return v13;
}

void root_dir_event_callback(uint64_t a1, int a2, int a3)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v6 = caller_path(*(*(a1 + 80) + 8 * a2), *(*(a1 + 88) + 4 * a2));
  v29 = v6;
  v28 = a3;
  v32[0] = 0;
  v7 = *(a1 + 184);
  if ((v7 & 0x40) != 0)
  {
    v8 = *MEMORY[0x277CBECE8];
    v9 = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x277CBECE8], v6);
    if (v9)
    {
      v11 = v9;
      values = v9;
      keys = @"path";
      cf = CFDictionaryCreate(v8, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (cf)
      {
        v13 = CFArrayCreate(v8, &cf, 1, MEMORY[0x277CBF128]);
        if (v13)
        {
          v15 = v13;
          (*(a1 + 16))(a1, *(a1 + 32), 1, v13, &v28, v32);
          CFRelease(v15);
        }

        else
        {
          v25 = fsevent_default_log(0, v14);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            root_dir_event_callback_cold_1();
          }
        }

        CFRelease(cf);
      }

      else
      {
        v23 = fsevent_default_log(0, v12);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          root_dir_event_callback_cold_2();
        }
      }

      v21 = v11;
      goto LABEL_22;
    }

    v22 = fsevent_default_log(0, v10);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_13:
    root_dir_event_callback_cold_3();
    return;
  }

  if ((v7 & 1) == 0)
  {
    v3(a1, *(a1 + 32), 1, &v29, &v28, v32);
    return;
  }

  v16 = *MEMORY[0x277CBECE8];
  cf = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x277CBECE8], v6);
  if (!cf)
  {
    v24 = fsevent_default_log(0, v17);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_13;
  }

  v18 = CFArrayCreate(v16, &cf, 1, MEMORY[0x277CBF128]);
  if (v18)
  {
    v20 = v18;
    (*(a1 + 16))(a1, *(a1 + 32), 1, v18, &v28, v32);
    CFRelease(v20);
    v21 = cf;
LABEL_22:
    CFRelease(v21);
    return;
  }

  v26 = fsevent_default_log(0, v19);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    root_dir_event_callback_cold_1();
  }
}

const char *caller_path(const char *a1, char a2)
{
  v2 = a1;
  if (!(a2 & 3 | strncmp(a1, "/System/Volumes/Data/", 0x15uLL)))
  {
    if (!strncmp(v2 + 20, "/Device/", 8uLL))
    {
      v2 += 27;
    }

    else
    {
      v2 += 20;
    }
  }

  return v2;
}

CFArrayRef FSEventStreamCopyPathsBeingWatched(ConstFSEventStreamRef streamRef)
{
  if (!streamRef)
  {
    v15 = fsevent_default_log(0, v1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamCopyPathsBeingWatched_cold_4();
    }

    return 0;
  }

  v3 = malloc_type_calloc(*(streamRef + 9), 8uLL, 0x6004044C4A2DFuLL);
  if (!v3)
  {
    v16 = fsevent_default_log(0, v4);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamCopyPathsBeingWatched_cold_3();
    }

    return 0;
  }

  v5 = v3;
  v6 = *(streamRef + 9);
  v7 = *MEMORY[0x277CBECE8];
  if (v6 >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = CFStringCreateWithFileSystemRepresentation(v7, *(*(streamRef + 10) + 8 * v8));
      if (!v9)
      {
        break;
      }

      v5[v8++] = v9;
      v6 = *(streamRef + 9);
      if (v6 <= v8)
      {
        goto LABEL_7;
      }
    }

    v17 = fsevent_default_log(0, v10);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamCopyPathsBeingWatched_cold_2();
    }

    goto LABEL_20;
  }

LABEL_7:
  v11 = CFArrayCreate(v7, v5, v6, MEMORY[0x277CBF128]);
  if (!v11)
  {
    v18 = fsevent_default_log(0, v12);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamCopyPathsBeingWatched_cold_1();
    }

LABEL_20:
    if (*(streamRef + 9) >= 1)
    {
      v19 = 0;
      do
      {
        v20 = v5[v19];
        if (!v20)
        {
          break;
        }

        CFRelease(v20);
        ++v19;
      }

      while (*(streamRef + 9) > v19);
    }

    free(v5);
    return 0;
  }

  v13 = v11;
  if (*(streamRef + 9) >= 1)
  {
    v14 = 0;
    do
    {
      CFRelease(v5[v14++]);
    }

    while (*(streamRef + 9) > v14);
  }

  free(v5);
  return v13;
}

uint64_t watch_all_parents(uint64_t a1, uint64_t kq, char *__s, uint64_t a4, uint64_t a5)
{
  v8 = kq;
  v42 = *MEMORY[0x277D85DE8];
  memset(&changelist, 0, sizeof(changelist));
  v10 = *(a4 + 16);
  if (v10)
  {
    v11 = *(a4 + 8);
    if (v11 >= 1)
    {
      for (i = 0; i < v11; ++i)
      {
        if ((*(*(a4 + 16) + 4 * i) & 0x80000000) == 0)
        {
          changelist.ident = *(*(a4 + 16) + 4 * i);
          *&changelist.filter = 0x200002FFFCLL;
          changelist.data = 0;
          changelist.udata = (a5 | 0x80000000);
          kevent(v8, &changelist, 1, 0, 0, 0);
          close(*(*(a4 + 16) + 4 * i));
          v11 = *(a4 + 8);
        }
      }

      v10 = *(a4 + 16);
    }

    free(v10);
    *(a4 + 16) = 0;
    *(a4 + 8) = 0;
  }

  if (__s && *__s)
  {
    my_dirname(__s, __sa);
    v13 = v41;
    realpath_DARWIN_EXTSN(__sa, v41);
    v14 = 0;
    do
    {
      while (1)
      {
        v16 = *v13++;
        v15 = v16;
        if (v16 != 47)
        {
          break;
        }

        ++v14;
      }
    }

    while (v15);
    v19 = malloc_type_malloc(4 * v14, 0x100004052888210uLL);
    *(a4 + 16) = v19;
    if (v19)
    {
      v20 = 0;
      v21 = v14;
      *(a4 + 8) = v14;
      do
      {
        v22 = open(v41, 0x8000);
        *(*(a4 + 16) + 4 * v20) = v22;
        if ((v22 & 0x80000000) == 0)
        {
          fcntl(v22, 2, 1);
          changelist.ident = *(*(a4 + 16) + 4 * v20);
          *&changelist.filter = 0x200021FFFCLL;
          changelist.data = 0;
          changelist.udata = (a5 | 0x80000000);
          v23 = kevent(v8, &changelist, 1, 0, 0, 0);
          if ((v23 & 0x80000000) != 0)
          {
            v25 = fsevent_default_log(v23, v24);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v26 = *(*(a4 + 16) + 4 * v20);
              v27 = __error();
              v28 = strerror(*v27);
              *buf = 136316162;
              v31 = a1;
              v32 = 2080;
              v33 = "watch_all_parents";
              v34 = 1024;
              v35 = v26;
              v36 = 2080;
              v37 = v41;
              v38 = 2080;
              v39 = v28;
              _os_log_error_impl(&dword_24A91B000, v25, OS_LOG_TYPE_ERROR, "%s: %s: error trying to add kqueue for fd %d (%s; %s)", buf, 0x30u);
            }
          }
        }

        __strcpy_chk();
        my_dirname(__sa, v41);
        result = 0;
        ++v20;
      }

      while (v20 < v21 && v41[1]);
    }

    else
    {
      return 12;
    }
  }

  else
  {
    v17 = fsevent_default_log(v10, kq);
    result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (result)
    {
      watch_all_parents_cold_1();
      return 0;
    }
  }

  return result;
}

char *my_dirname(char *__s, char *a2)
{
  if (__s && *__s && (v4 = strrchr(__s, 47)) != 0)
  {
    if (v4 > __s)
    {
      while (*v4 == 47)
      {
        if (--v4 <= __s)
        {
          v4 = __s;
          break;
        }
      }
    }

    v5 = v4 - __s;
    if (v4 - __s > 1023)
    {
      strncpy(a2, __s, 0x3FFuLL);
      a2[1023] = 0;
    }

    else
    {
      v6 = v5 + 1;
      strncpy(a2, __s, v5 + 1);
      a2[v6] = 0;
    }
  }

  else
  {
    strcpy(a2, "./");
  }

  return a2;
}

void receive_and_dispatch_rcv_msg(uint64_t a1)
{
  v1 = a1;
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85FA0];
  v3 = MEMORY[0x28223BE20](a1);
  v4 = (v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v6 = (v15 - v5);
  v7 = mach_msg(v4, 50331910, 0, v2, v1, 0, 0);
  if (!v7)
  {
LABEL_8:
    v10 = (v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
    goto LABEL_9;
  }

  if (v7 != 268451844)
  {
    v14 = fsevent_default_log(v7, v8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      receive_and_dispatch_rcv_msg_cold_2();
    }

    goto LABEL_8;
  }

  v9 = v4->msgh_size + 68;
  v10 = malloc_type_malloc(v9, 0x1000040504FFAC1uLL);
  v11 = mach_msg(v10, 262, 0, v9, v1, 0, 0);
  if (v11)
  {
    v13 = fsevent_default_log(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      receive_and_dispatch_rcv_msg_cold_1();
    }
  }

LABEL_9:
  *v6 = 0;
  v6[1] = v2;
  FSEventsD2F_server(v10, v6);
  if (v10 != v4)
  {
    free(v10);
  }
}

uint64_t FSEventsD2F_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  if (a1[5] == 67000)
  {
    _Xcallback_rpc(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    *(a2 + 32) = -303;
  }

  return result;
}

void _Xcallback_rpc(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 4 && *(a1 + 4) == 120)
  {
    if (*(a1 + 39) == 1 && *(a1 + 55) == 1 && *(a1 + 71) == 1 && *(a1 + 87) == 1)
    {
      v3 = *(a1 + 40) >> 2;
      if (v3 == *(a1 + 104))
      {
        v4 = *(a1 + 56) >> 2;
        if (v4 == *(a1 + 108))
        {
          v5 = *(a1 + 72) >> 3;
          if (v5 == *(a1 + 112) && *(a1 + 88) == *(a1 + 116))
          {
            *(a2 + 32) = implementation_callback_rpc(*(a1 + 12), *(a1 + 100), *(a1 + 28), v3, *(a1 + 44), v4, *(a1 + 60), v5, *(a1 + 76), *(a1 + 88));
            mig_deallocate(*(a1 + 76), *(a1 + 88));
            *(a1 + 76) = 0;
            *(a1 + 88) = 0;
            mig_deallocate(*(a1 + 60), *(a1 + 72));
            *(a1 + 60) = 0;
            *(a1 + 72) = 0;
            mig_deallocate(*(a1 + 44), *(a1 + 56));
            *(a1 + 44) = 0;
            *(a1 + 56) = 0;
            mig_deallocate(*(a1 + 28), *(a1 + 40));
            *(a1 + 28) = 0;
            *(a1 + 40) = 0;
            return;
          }
        }
      }
    }

    v6 = -300;
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
}

uint64_t implementation_callback_rpc(_BOOL8 a1, uint64_t a2, uint64_t a3, int a4, _BYTE *a5, int a6, void *a7, int a8, char *a9, int a10)
{
  v15 = a2;
  v165 = *MEMORY[0x277D85DE8];
  valuePtr = a1;
  if (a2 != a4)
  {
    v16 = fsevent_default_log(a1, a2);
    a1 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (a1)
    {
      implementation_callback_rpc_cold_1();
    }
  }

  if (v15 != a6)
  {
    v17 = fsevent_default_log(a1, a2);
    a1 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (a1)
    {
      implementation_callback_rpc_cold_2();
    }
  }

  if (v15 == a8 || (v18 = fsevent_default_log(a1, a2), !(a1 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))))
  {
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_84:
    v76 = fsevent_default_log(a1, a2);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_18();
    }

    return 4294967278;
  }

  implementation_callback_rpc_cold_3();
  if (!v15)
  {
    goto LABEL_84;
  }

LABEL_10:
  v19 = *MEMORY[0x277CBECE8];
  v20 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  if (!v20)
  {
    v38 = fsevent_default_log(0, v21);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_17();
    }

    return 4294967279;
  }

  v22 = v20;
  pthread_mutex_lock(&FSEvents_streamDict_mutex);
  Value = CFDictionaryGetValue(FSEvents_streamDict, v22);
  pthread_mutex_unlock(&FSEvents_streamDict_mutex);
  CFRelease(v22);
  if (!Value)
  {
    v40 = fsevent_default_log(v24, v25);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_16();
    }

    return 4294967286;
  }

  v26 = 0;
  v27 = 0;
  LODWORD(v28) = 0;
  LODWORD(v155) = a10;
  v154 = a9;
  v150 = v15;
  do
  {
    v29 = *&a5[v26];
    v30 = (v29 << 8) & 0x1000;
    if ((v29 & 0x20) != 0)
    {
      v30 = 4096;
    }

    v31 = vandq_s8(vshlq_u32(vdupq_n_s32(v29), xmmword_24A926750), xmmword_24A926760);
    v32 = vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
    v33 = v32.i32[0] | v29 & 0x100000 | v32.i32[1] | (v29 >> 4) & 0x40000 | (((v29 >> 19) & 1) << 21) | (v29 << 8) & 0x400F00 | v30 & 0xFFFFFFF8 | (v29 >> 29);
    if ((v29 & 0x40) != 0)
    {
      v33 |= 0xA000u;
    }

    v34 = (v29 << 6) & 0x8000;
    if ((v29 & 0x400) != 0)
    {
      v34 = 0x8000;
    }

    *&a5[v26] = (v29 >> 2) & 0x80000 | (((v29 >> 8) & 1) << 14) | (((v29 >> 7) & 1) << 8) | v34 | v33;
    if ((v33 & 6) != 0)
    {
      v35 = *(Value + 18);
      v27 = 1;
    }

    else
    {
      v35 = 1;
    }

    v28 = (v35 + v28);
    v26 += 4;
  }

  while (4 * v15 != v26);
  v36 = *(Value + 46);
  if ((v36 & 0x40) != 0)
  {
    v37 = malloc_type_calloc(v28, 8uLL, 0x100004000313F17uLL);
    if ((*(Value + 46) & 0x100) != 0)
    {
      goto LABEL_25;
    }

LABEL_33:
    v153 = 0;
    goto LABEL_34;
  }

  v37 = 0;
  if ((v36 & 0x100) == 0)
  {
    goto LABEL_33;
  }

LABEL_25:
  v153 = malloc_type_calloc(v28, 4uLL, 0x100004052888210uLL);
LABEL_34:
  if (v15 == 1 && (*a5 & 0x10) != 0)
  {
    if (!Value[190])
    {
      return 0;
    }

    Value[190] = 0;
  }

  if (!Value[188])
  {
    return 4294966297;
  }

  v152 = malloc_type_malloc(8 * v28, 0x10040436913F5uLL);
  if (!v152)
  {
    v71 = fsevent_default_log(0, v41);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_15();
    }

    v45 = 0;
    v39 = 4294967285;
    goto LABEL_215;
  }

  *&v147 = a3;
  v42 = malloc_type_calloc(v28, 4uLL, 0x100004052888210uLL);
  v45 = v42;
  v151 = v37;
  if (!v42)
  {
    v72 = fsevent_default_log(0, v43);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_14();
    }

    v73 = 0;
    v74 = 0;
    v75 = 0;
    v48 = 0;
    v52 = 0;
    v39 = 4294967285;
    goto LABEL_199;
  }

  v148 = v42;
  v143 = 8 * v28;
  if (!v27)
  {
    if (!v28)
    {
      v52 = a7;
      v48 = a5;
      goto LABEL_127;
    }

    v149 = a7;
    v146 = v19;
    v142 = 0;
    v77 = (v147 + 4);
    *&v44 = 136315394;
    v147 = v44;
    v78 = v152;
    v79 = v153;
    v80 = v28;
    v81 = v155;
    while (1)
    {
      if (*(v77 - 1) >= v81)
      {
        v82 = fsevent_default_log(v42, v43);
        v42 = os_log_type_enabled(v82, OS_LOG_TYPE_ERROR);
        v81 = v155;
        if (v42)
        {
          *buf = v147;
          v162 = "implementation_callback_rpc";
          v163 = 2080;
          v164 = "path_offsets[i] < paths_blobCnt";
          _os_log_error_impl(&dword_24A91B000, v82, OS_LOG_TYPE_ERROR, "%s(): failed assertion '%s'\n", buf, 0x16u);
          v81 = v155;
        }
      }

      v83 = *(v77 - 1);
      if (v83 >= v81)
      {
        v84 = "ERROR: failed assertion: path_offsets[i] < paths_blobCnt";
      }

      else
      {
        v84 = v154 + v83;
      }

      *v78 = v84;
      if (v151)
      {
        v42 = strlen(v84);
        v81 = v155;
        v85 = v155;
        if (v28 != 1)
        {
          v85 = v155;
          if (v80 != 1)
          {
            v85 = *v77;
          }
        }

        v86 = v83 + v42 + 1;
        if (v86 == v85)
        {
          v87 = 0;
        }

        else
        {
          if (v86 + 8 > v85)
          {
            goto LABEL_105;
          }

          v87 = *(v154 + v86);
        }

        *v37 = v87;
      }

LABEL_105:
      if (v153)
      {
        v42 = strlen(v84);
        v81 = v155;
        v88 = v155;
        if (v28 != 1)
        {
          v88 = v155;
          if (v80 != 1)
          {
            v88 = *v77;
          }
        }

        v89 = v83 + v42 + 9;
        if (v89 == v88)
        {
          v90 = 0;
LABEL_113:
          *v79 = v90;
          goto LABEL_114;
        }

        if (v89 + 4 <= v88)
        {
          v90 = *(v154 + v89);
          goto LABEL_113;
        }
      }

LABEL_114:
      ++v79;
      v37 = (v37 + 8);
      ++v77;
      ++v78;
      if (!--v80)
      {
        v45 = v148;
        v52 = v149;
        v48 = a5;
        v27 = v142;
        v19 = v146;
        goto LABEL_127;
      }
    }
  }

  v149 = a7;
  v46 = malloc_type_malloc(4 * v28, 0x100004052888210uLL);
  if (!v46)
  {
    v91 = fsevent_default_log(0, v47);
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_6();
    }

    v73 = 0;
    v74 = 0;
    v75 = 0;
    v48 = 0;
    v52 = 0;
    v39 = 4294967281;
    goto LABEL_199;
  }

  v48 = v46;
  v49 = malloc_type_malloc(v143, 0x100004000313F17uLL);
  if (!v49)
  {
    v92 = fsevent_default_log(0, v50);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_5();
    }

    v73 = 0;
    v74 = 0;
    v75 = 0;
    v52 = 0;
    v39 = 4294967280;
    goto LABEL_199;
  }

  v52 = v49;
  v146 = v19;
  v142 = v27;
  v53 = 0;
  v54 = 0;
  *&v145 = v147 + 4;
  *&v51 = 136315394;
  v141 = v51;
  v55 = v150;
  v56 = v155;
  do
  {
    v57 = *&a5[4 * v53];
    v58 = *(v149 + v53);
    if ((v57 & 6) == 0)
    {
      if (*(v147 + 4 * v53) >= v56)
      {
        v144 = fsevent_default_log(v49, v55);
        v49 = os_log_type_enabled(v144, OS_LOG_TYPE_ERROR);
        v56 = v155;
        if (v49)
        {
          *buf = v141;
          v162 = "implementation_callback_rpc";
          v163 = 2080;
          v164 = "path_offsets[i] < paths_blobCnt";
          _os_log_error_impl(&dword_24A91B000, v144, OS_LOG_TYPE_ERROR, "%s(): failed assertion '%s'\n", buf, 0x16u);
          v56 = v155;
        }
      }

      v63 = *(v147 + 4 * v53);
      v64 = v154 + v63;
      if (v63 >= v56)
      {
        v64 = "ERROR: failed assertion: path_offsets[i] < paths_blobCnt";
      }

      v152[v54] = v64;
      if (v151)
      {
        v49 = strlen(v152[v53]);
        v56 = v155;
        v65 = v155;
        if (v28 != 1)
        {
          v65 = v155;
          if (v53 != v28)
          {
            v65 = *(v145 + 4 * v53);
          }
        }

        v66 = v63 + v49 + 1;
        if (v66 == v65)
        {
          v67 = 0;
        }

        else
        {
          if (v66 + 8 > v65)
          {
            goto LABEL_64;
          }

          v67 = *(v154 + v66);
        }

        *(v151 + v54) = v67;
      }

LABEL_64:
      v55 = v150;
      if (v153)
      {
        v49 = strlen(v152[v53]);
        v56 = v155;
        v68 = v155;
        if (v28 != 1)
        {
          v68 = v155;
          if (v53 != v28)
          {
            v68 = *(v145 + 4 * v53);
          }
        }

        v69 = v63 + v49 + 9;
        if (v69 == v68)
        {
          v70 = 0;
          v55 = v150;
LABEL_72:
          v153[v54] = v70;
          goto LABEL_73;
        }

        v55 = v150;
        if (v69 + 4 <= v68)
        {
          v70 = *(v154 + v69);
          goto LABEL_72;
        }
      }

LABEL_73:
      *&v48[4 * v54] = v57;
      v52[v54++] = v58;
      v45 = v148;
      goto LABEL_74;
    }

    v59 = *(Value + 9);
    if (v59 >= 1)
    {
      v60 = 0;
      v61 = v152;
      do
      {
        v62 = v54 + v60;
        v61[v62] = *(*(Value + 10) + 8 * v60);
        v45[v62] = *(*(Value + 11) + 4 * v60);
        *&v48[4 * v62] = v57 | 1;
        v52[v62] = v58;
        ++v60;
      }

      while (v59 != v60);
      v54 += v60;
    }

LABEL_74:
    v53 = v53 + 1;
  }

  while (v53 != v55);
  if (v54 == v28)
  {
    v27 = v142;
    v19 = v146;
    goto LABEL_128;
  }

  v93 = fsevent_default_log(v49, v55);
  v27 = v142;
  v19 = v146;
  if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
  {
    implementation_callback_rpc_cold_4();
  }

LABEL_127:
  v55 = v150;
LABEL_128:
  v94 = 0;
  v95 = *(Value + 21);
  if (v95 == -1)
  {
    v95 = 0;
  }

  do
  {
    if (v52[v94] > v95)
    {
      v95 = v52[v94];
    }

    v94 = v94 + 1;
  }

  while (v55 != v94);
  *(Value + 21) = v95;
  v96 = *(Value + 46);
  if ((v96 & 0x40) == 0)
  {
    if ((v96 & 1) == 0)
    {
      v75 = 0;
      goto LABEL_158;
    }

    v126 = malloc_type_calloc(v28, 8uLL, 0x6004044C4A2DFuLL);
    if (!v126)
    {
      v136 = fsevent_default_log(0, v127);
      if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
      {
        implementation_callback_rpc_cold_13();
      }

      v73 = 0;
      v74 = 0;
      v75 = 0;
      v39 = 4294967284;
      goto LABEL_199;
    }

    v73 = v126;
    if (v28)
    {
      v128 = 0;
      while (1)
      {
        v129 = caller_path(v152[v128], v45[v128]);
        v130 = CFStringCreateWithFileSystemRepresentation(v19, v129);
        if (!v130)
        {
          break;
        }

        v73[v128++] = v130;
        if (v28 == v128)
        {
          goto LABEL_176;
        }
      }

      v137 = fsevent_default_log(0, v131);
      if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
      {
        implementation_callback_rpc_cold_11();
      }

      v74 = 0;
      v75 = 0;
      v39 = 4294967283;
      goto LABEL_199;
    }

LABEL_176:
    v132 = CFArrayCreate(v19, v73, v28, MEMORY[0x277CBF128]);
    if (v132)
    {
      v74 = v132;
      v75 = 0;
LABEL_159:
      if (*(Value + 2) && Value[188] && !Value[189])
      {
        FSEventStreamRetain(Value);
        v117 = *(Value + 46);
        if ((v117 & 0x40) != 0)
        {
          (*(Value + 2))(Value, *(Value + 4), v28, v75, v48, v52);
        }

        else if (v117)
        {
          (*(Value + 2))(Value, *(Value + 4), v28, v74, v48, v52);
        }

        else
        {
          v149 = v75;
          v142 = v27;
          v154 = &v141;
          MEMORY[0x28223BE20](v116);
          if (v143 >= 0x200)
          {
            v119 = 512;
          }

          else
          {
            v119 = v143;
          }

          v155 = (&v141 - ((v118 + 15) & 0xFFFFFFFF0));
          bzero(v155, v119);
          if (v28)
          {
            v120 = v28;
            v121 = v155;
            v122 = v148;
            v123 = v152;
            do
            {
              v125 = *v123++;
              v124 = v125;
              LODWORD(v125) = *v122++;
              *v121 = caller_path(v124, v125);
              v121 = (v121 + 8);
              --v120;
            }

            while (v120);
          }

          (*(Value + 2))(Value, *(Value + 4), v28, v155, v48, v52);
          v27 = v142;
          v45 = v148;
          v75 = v149;
        }

        if (*(Value + 45))
        {
          pthread_mutex_lock((Value + 240));
          pthread_cond_signal((Value + 304));
          pthread_mutex_unlock((Value + 240));
        }

        FSEventStreamRelease(Value);
      }

      v39 = 0;
      goto LABEL_199;
    }

    v138 = fsevent_default_log(0, v133);
    if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_12();
    }

LABEL_181:
    v74 = 0;
    v75 = 0;
    v39 = 4294967282;
    goto LABEL_199;
  }

  Mutable = CFArrayCreateMutable(v19, v55, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    v134 = fsevent_default_log(0, v98);
    if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_10();
    }

    v73 = 0;
    goto LABEL_181;
  }

  v75 = Mutable;
  if (!v28)
  {
LABEL_158:
    v74 = 0;
    v73 = 0;
    goto LABEL_159;
  }

  v146 = v19;
  v100 = 0;
  *&v99 = 136315394;
  v145 = v99;
  v154 = v151;
  v149 = Mutable;
  v150 = v153;
  while (1)
  {
    v101 = v152[v100];
    v102 = v45[v100];
    v155 = CFDictionaryCreateMutable(v146, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v155)
    {
      break;
    }

    v104 = caller_path(v101, v102);
    v105 = CFStringCreateWithFileSystemRepresentation(v146, v104);
    if (v105)
    {
      v107 = v105;
      CFDictionaryAddValue(v155, @"path", v105);
      CFRelease(v107);
      v45 = v148;
      v75 = v149;
    }

    else
    {
      *&v147 = fsevent_default_log(0, v106);
      v45 = v148;
      v75 = v149;
      if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
      {
        *buf = v145;
        v162 = "implementation_callback_rpc";
        v163 = 2080;
        v164 = v104;
        _os_log_error_impl(&dword_24A91B000, v147, OS_LOG_TYPE_ERROR, "%s: ERROR: CFStringCreateWithFileSystemRepresentation('%s') failed", buf, 0x16u);
      }
    }

    if ((*&a5[4 * v100] & 0x77FF00) != 0)
    {
      if (v151 && *v154)
      {
        v108 = CFNumberCreate(v146, kCFNumberSInt64Type, v154);
        if (v108)
        {
          v110 = v108;
          CFDictionaryAddValue(v155, @"fileID", v108);
          CFRelease(v110);
        }

        else
        {
          v111 = fsevent_default_log(0, v109);
          if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
          {
            implementation_callback_rpc_cold_7(v159, &v160, v111);
          }
        }
      }

      if (v153 && *v150)
      {
        v112 = CFNumberCreate(v146, kCFNumberSInt32Type, v150);
        if (v112)
        {
          v114 = v112;
          CFDictionaryAddValue(v155, @"docID", v112);
          CFRelease(v114);
        }

        else
        {
          v115 = fsevent_default_log(0, v113);
          if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
          {
            implementation_callback_rpc_cold_7(v157, &v158, v115);
          }
        }
      }
    }

    CFArraySetValueAtIndex(v75, v100, v155);
    CFRelease(v155);
    ++v100;
    v150 += 4;
    v154 = (v154 + 8);
    if (v28 == v100)
    {
      goto LABEL_158;
    }
  }

  v135 = fsevent_default_log(0, v103);
  if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
  {
    implementation_callback_rpc_cold_9();
  }

  v73 = 0;
  v74 = 0;
  v39 = 4294967281;
  v45 = v148;
  v75 = v149;
LABEL_199:
  free(v152);
  if (v48 && v27)
  {
    free(v48);
  }

  if (v52 && v27)
  {
    free(v52);
  }

  v37 = v151;
  if (v73)
  {
    if (v28)
    {
      v139 = v73;
      do
      {
        if (!*v139)
        {
          break;
        }

        CFRelease(*v139++);
        --v28;
      }

      while (v28);
    }

    free(v73);
  }

  if (v74)
  {
    CFRelease(v74);
  }

  if (v75)
  {
    CFRelease(v75);
  }

LABEL_215:
  if (v37)
  {
    free(v37);
  }

  free(v45);
  return v39;
}

void FSEventStreamRetain(FSEventStreamRef streamRef)
{
  if (streamRef)
  {
    atomic_fetch_add(streamRef, 1u);
  }

  else
  {
    v2 = fsevent_default_log(0, v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamRetain_cold_1();
    }
  }
}

uint64_t FSEvents_connect(uint64_t a1)
{
  pthread_mutex_lock(&FSEvents_f2d_public_port_mutex);
  if (FSEvents_f2d_public_port)
  {
    pthread_mutex_unlock(&FSEvents_f2d_public_port_mutex);
    return 0;
  }

  else
  {
    v1 = bootstrap_look_up2();
    v2 = pthread_mutex_unlock(&FSEvents_f2d_public_port_mutex);
    if (v1)
    {
      v4 = fsevent_default_log(v2, v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        FSEvents_connect_cold_1();
      }
    }
  }

  return v1;
}

CFUUIDRef FSEventsCopyUUIDForDevice(dev_t dev)
{
  v11 = *MEMORY[0x277D85DE8];
  if (dev <= 0)
  {
    v3 = fsevent_default_log(*&dev, v1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      FSEventsCopyUUIDForDevice_cold_1();
    }
  }

  if (FSEvents_connect("FSEventsCopyUUIDForDevice"))
  {
    return 0;
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  f2d_get_server_uuid_rpc(FSEvents_f2d_public_port, dev, v9);
  if (LODWORD(v9[0]) == 1429032782 && *(v9 + 3) == 1145656661)
  {
    return 0;
  }

  v7 = CFStringCreateWithBytes(0, v9, 36, 0x600u, 0);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v4 = CFUUIDCreateFromString(0, v7);
  CFRelease(v8);
  return v4;
}

uint64_t f2d_get_server_uuid_rpc(int a1, int a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  *&msg[20] = 0u;
  memset(v14, 0, sizeof(v14));
  v13 = 0u;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  *&msg[32] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x101D200000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v6 = *&msg[12];
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(msg, 3162115, 0x24u, 0x50u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&msg[20] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&msg[20] == 66102)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 72)
          {
            if (!*&msg[8])
            {
              v8 = *&msg[32];
              if (!*&msg[32])
              {
                v11 = *v14;
                *a3 = v13;
                *(a3 + 16) = v11;
                *(a3 + 32) = *&v14[16];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v9 = 1;
            }

            else
            {
              v9 = *&msg[32] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

void FSEventStreamRelease(FSEventStreamRef streamRef)
{
  if (streamRef)
  {
    if (atomic_fetch_add(streamRef, 0xFFFFFFFF) <= 1)
    {
      if ((*streamRef & 0x80000000) != 0)
      {
        v3 = fsevent_default_log(streamRef, v1);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          FSEventStreamRelease_cold_1();
        }
      }

      else
      {

        _FSEventStreamDeallocate(streamRef, v1);
      }
    }
  }

  else
  {
    v2 = fsevent_default_log(0, v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamRelease_cold_2();
    }
  }
}

_DWORD *_FSEventStreamCreate(const char *a1, uint64_t Default, uint64_t a3, __int128 *a4, int a5, CFArrayRef theArray, uint64_t a7, uint64_t a8, int a9)
{
  v95[127] = *MEMORY[0x277D85DE8];
  if ((a9 & 0x41) == 0x40)
  {
    v10 = fsevent_default_log(a1, Default);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_9();
    }

    return 0;
  }

  v16 = Default;
  Count = CFArrayGetCount(theArray);
  if (*MEMORY[0x277CBECE8] == v16)
  {
    v16 = CFAllocatorGetDefault();
  }

  v18 = MEMORY[0x24C2204A0](v16, 456, 0x10F0040DD1F3337, 0);
  if (!v18)
  {
    v60 = fsevent_default_log(0, v19);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_8();
    }

    return 0;
  }

  v20 = v18;
  *(v18 + 448) = 0;
  *(v18 + 416) = 0u;
  *(v18 + 432) = 0u;
  *(v18 + 384) = 0u;
  *(v18 + 400) = 0u;
  *(v18 + 352) = 0u;
  *(v18 + 368) = 0u;
  *(v18 + 320) = 0u;
  *(v18 + 336) = 0u;
  *(v18 + 288) = 0u;
  *(v18 + 304) = 0u;
  *(v18 + 256) = 0u;
  *(v18 + 272) = 0u;
  *(v18 + 224) = 0u;
  *(v18 + 240) = 0u;
  *(v18 + 192) = 0u;
  *(v18 + 208) = 0u;
  *(v18 + 160) = 0u;
  *(v18 + 176) = 0u;
  *(v18 + 128) = 0u;
  *(v18 + 144) = 0u;
  *(v18 + 96) = 0u;
  *(v18 + 112) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 80) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 8) = v16;
  CFRetain(v16);
  *(v20 + 16) = a3;
  if (a4)
  {
    v21 = *a4;
    v22 = a4[1];
    *(v20 + 56) = *(a4 + 4);
    *(v20 + 40) = v22;
    *(v20 + 24) = v21;
  }

  v78 = a7;
  v23 = *(v20 + 40);
  if (v23)
  {
    v23(*(v20 + 32));
  }

  *(v20 + 64) = a5;
  *(v20 + 72) = Count;
  *(v20 + 80) = MEMORY[0x24C2204A0](v16, 8 * Count, 0x10040436913F5, 0);
  *(v20 + 88) = MEMORY[0x24C2204A0](v16, 4 * Count, 0x100004052888210, 0);
  v25 = *(v20 + 80);
  if (!v25)
  {
    v61 = fsevent_default_log(0, v24);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_7();
    }

    goto LABEL_89;
  }

  bzero(v25, 8 * Count);
  bzero(*(v20 + 88), 4 * Count);
  if ((a9 & 4) == 0)
  {
    v80 = a1;
    *(v20 + 408) = -1;
    goto LABEL_14;
  }

  v62 = kqueue();
  *(v20 + 408) = v62;
  if ((v62 & 0x80000000) != 0)
  {
    v68 = fsevent_default_log(v62, v63);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_3();
    }

    goto LABEL_89;
  }

  v64 = MEMORY[0x24C2204A0](v16, 32 * Count, 0x101004048259AEFLL, 0);
  *(v20 + 392) = v64;
  if (!v64)
  {
    v69 = fsevent_default_log(0, v65);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_2();
    }

    goto LABEL_89;
  }

  bzero(v64, 32 * Count);
  v66 = MEMORY[0x24C2204A0](v16, 32 * Count, 0x108004019856BD9, 0);
  *(v20 + 400) = v66;
  if (!v66)
  {
    v73 = fsevent_default_log(0, v67);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_1();
    }

LABEL_89:
    _FSEventStreamDeallocate(v20, v55);
    return 0;
  }

  v80 = a1;
  bzero(v66, 32 * Count);
LABEL_14:
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      TypeID = CFStringGetTypeID();
      v29 = CFGetTypeID(ValueAtIndex);
      if (TypeID != v29)
      {
        v70 = fsevent_default_log(v29, v30);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          _FSEventStreamCreate_cold_4();
        }

        goto LABEL_89;
      }

      FileSystemRepresentation = CFStringGetFileSystemRepresentation(ValueAtIndex, buffer, 1024);
      if (!FileSystemRepresentation)
      {
        v71 = fsevent_default_log(FileSystemRepresentation, v32);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          _FSEventStreamCreate_cold_6();
        }

        goto LABEL_89;
      }

      if (a5)
      {
        v33 = 1000;
        while (1)
        {
          v34 = getfsstat(0, 0, 2);
          if (v34 < 0)
          {
            goto LABEL_33;
          }

          v35 = 2168 * (v34 + 1);
          v36 = malloc_type_malloc(2168 * (v34 + 1), 0x100004087E0324AuLL);
          if (!v36)
          {
            goto LABEL_33;
          }

          v37 = v36;
          v38 = getfsstat(v36, v35, 2);
          if ((v38 & 0x80000000) == 0)
          {
            break;
          }

          free(v37);
          if (!--v33)
          {
            goto LABEL_33;
          }
        }

        if (!v38)
        {
LABEL_33:
          v39 = buffer;
          __strlcpy_chk();
LABEL_34:
          *(*(v20 + 88) + 4 * i) |= 2u;
          goto LABEL_35;
        }

        v40 = v38;
        f_mntonname = v37->f_mntonname;
        while (*(f_mntonname - 10) != a5)
        {
          f_mntonname += 2168;
          if (!--v40)
          {
            v39 = buffer;
            __strlcpy_chk();
LABEL_64:
            free(v37);
            goto LABEL_34;
          }
        }

        snprintf(__s, 0x400uLL, "%s/%s", f_mntonname, buffer);
        if (realpath_DARWIN_EXTSN(__s, __s1))
        {
          v58 = strlen(f_mntonname);
          if (__s1[v58] == 47)
          {
            v39 = &__s1[v58 + 1];
          }

          else
          {
            v39 = &__s1[v58];
          }

          goto LABEL_64;
        }

        free(v37);
      }

      else
      {
        v39 = __s1;
        if (fsevent_realpath(buffer, __s1))
        {
          goto LABEL_35;
        }
      }

      if (buffer[0] == 47)
      {
        v39 = buffer;
        __strlcpy_chk();
      }

      else
      {
        v39 = __s1;
        getcwd(__s1, 0x400uLL);
        __strlcat_chk();
        __strlcat_chk();
      }

LABEL_35:
      v42 = (strlen(v39) + 1);
      *(*(v20 + 80) + 8 * i) = MEMORY[0x24C2204A0](v16, v42, 1425393460, 0);
      v44 = *(*(v20 + 80) + 8 * i);
      if (!v44)
      {
        v72 = fsevent_default_log(0, v43);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          _FSEventStreamCreate_cold_5();
        }

        goto LABEL_89;
      }

      strlcpy(v44, v39, v42);
      if (*buffer == 0x2F6D65747379532FLL && v95[0] == 0x2F73656D756C6F56 && *(v95 + 5) == 0x2F617461442F7365)
      {
        *(*(v20 + 88) + 4 * i) |= 1u;
        if ((a9 & 4) == 0)
        {
          continue;
        }
      }

      else if ((a9 & 4) == 0)
      {
        continue;
      }

      v47 = *(v20 + 392);
      v48 = v47 + 32 * i;
      *(v48 + 4) = -1;
      if (!*(v20 + 64) || __s1[0] == 47)
      {
        *(v48 + 24) = strdup(__s1);
      }

      else
      {
        if (!realpath_DARWIN_EXTSN(*(*(v20 + 80) + 8 * i), __s))
        {
          getcwd(__s, 0x400uLL);
          v49 = strlen(__s);
          __s[v49] = 47;
          strlcpy(&__s[v49 + 1], *(*(v20 + 80) + 8 * i), 1024 - (v49 + 1));
        }

        *(*(v20 + 392) + 32 * i + 24) = strdup(__s);
        v47 = *(v20 + 392);
      }

      v50 = (v47 + 32 * i);
      *v50 = 8;
      v51 = watch_path(v80, *(v20 + 408), __s1, *(v20 + 400) + 32 * i, v50, i);
      if (v51)
      {
        v53 = v51;
        v54 = fsevent_default_log(v51, v52);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v59 = strerror(v53);
          *__s = 136316674;
          v82 = v80;
          v83 = 2080;
          v84 = "_FSEventStreamCreate";
          v85 = 2080;
          v86 = v39;
          v87 = 2080;
          *v88 = __s1;
          *&v88[8] = 1024;
          *&v88[10] = i;
          v89 = 1024;
          v90 = v53;
          v91 = 2080;
          v92 = v59;
          _os_log_error_impl(&dword_24A91B000, v54, OS_LOG_TYPE_ERROR, "%s: %s: ERROR: watch_path() failed for srcPath='%s' resolvedPath='%s' index=%d (%d):(%s)", __s, 0x40u);
        }

        if ((v53 - 23) < 2)
        {
          goto LABEL_89;
        }
      }

      v56 = watch_all_parents(v80, *(v20 + 408), __s1, *(v20 + 392) + 32 * i, i);
      if (v56)
      {
        v74 = v56;
        v75 = fsevent_default_log(v56, v57);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          v77 = strerror(v74);
          *__s = 136316162;
          v82 = v80;
          v83 = 2080;
          v84 = "_FSEventStreamCreate";
          v85 = 2080;
          v86 = v39;
          v87 = 1024;
          *v88 = v74;
          *&v88[4] = 2080;
          *&v88[6] = v77;
          _os_log_error_impl(&dword_24A91B000, v75, OS_LOG_TYPE_ERROR, "%s: %s: ERROR: watch_all_parents() failed for '%s' (%d):(%s)", __s, 0x30u);
        }

        goto LABEL_89;
      }
    }
  }

  *(v20 + 168) = v78;
  *(v20 + 176) = a8;
  *(v20 + 184) = a9;
  *(v20 + 188) = 0;
  *(v20 + 190) = v78 != -1;
  *(v20 + 216) = 0;
  *(v20 + 360) = 0;
  *(v20 + 432) = 0;
  *(v20 + 192) = 0;
  *(v20 + 200) = 0;
  *v20 = 1;
  return v20;
}

void FSEventStreamSetDispatchQueue(FSEventStreamRef streamRef, dispatch_queue_t q)
{
  if (streamRef)
  {
    if (q)
    {
      if (!*(streamRef + 48))
      {
        d2f_port = allocate_d2f_port("FSEventStreamSetDispatchQueue", streamRef);
        if (d2f_port)
        {
          v15 = fsevent_default_log(d2f_port, v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            FSEventStreamSetDispatchQueue_cold_1();
          }

          return;
        }

        pthread_mutex_lock(&FSEvents_streamDict_mutex);
        v16 = *MEMORY[0x277CBECE8];
        if (!FSEvents_streamDict)
        {
          FSEvents_streamDict = CFDictionaryCreateMutable(v16, 0, MEMORY[0x277CBF138], 0);
        }

        v17 = CFNumberCreate(v16, kCFNumberIntType, streamRef + 192);
        CFDictionaryAddValue(FSEvents_streamDict, v17, streamRef);
        pthread_mutex_unlock(&FSEvents_streamDict_mutex);
        CFRelease(v17);
      }

      pthread_mutex_init((streamRef + 240), 0);
      pthread_cond_init((streamRef + 304), 0);
      dispatch_retain(q);
      *(streamRef + 44) = q;
      d2f_port_source = create_d2f_port_source(streamRef);
      if (d2f_port_source)
      {
        if ((*(streamRef + 184) & 4) == 0)
        {
          return;
        }

        v6 = *(streamRef + 102);
        v7 = dispatch_source_create(MEMORY[0x277D85D28], v6, 0, *(streamRef + 44));
        if (v7)
        {
          v9 = v7;
          dispatch_set_qos_class_fallback();
          FSEventStreamRetain(streamRef);
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 0x40000000;
          handler[2] = __FSEventStreamSetDispatchQueue_block_invoke;
          handler[3] = &__block_descriptor_tmp_0;
          handler[4] = streamRef;
          v22 = v6;
          dispatch_source_set_event_handler(v9, handler);
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 0x40000000;
          v19[2] = __FSEventStreamSetDispatchQueue_block_invoke_2;
          v19[3] = &__block_descriptor_tmp_24;
          v20 = v6;
          v19[4] = v9;
          v19[5] = streamRef;
          dispatch_source_set_cancel_handler(v9, v19);
          *(streamRef + 54) = v9;
          *(streamRef + 110) = 1;
          return;
        }

        v18 = fsevent_default_log(0, v8);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          FSEventStreamSetDispatchQueue_cold_3();
        }
      }

      else
      {
        v12 = fsevent_default_log(d2f_port_source, v5);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          FSEventStreamSetDispatchQueue_cold_2();
        }
      }

      if (*(streamRef + 54))
      {
        cancel_source(streamRef + 54, streamRef + 110);
        *(streamRef + 102) = -1;
      }

      if (*(streamRef + 45))
      {
        cancel_source(streamRef + 45, streamRef + 92);
        *(streamRef + 48) = 0;
      }
    }

    else
    {
      if (*(streamRef + 45))
      {
        cancel_source(streamRef + 45, streamRef + 92);
        *(streamRef + 48) = 0;
      }

      if (*(streamRef + 47))
      {
        cancel_source(streamRef + 47, streamRef + 96);
        *(streamRef + 49) = 0;
      }

      if ((*(streamRef + 184) & 4) != 0 && *(streamRef + 54))
      {
        cancel_source(streamRef + 54, streamRef + 110);
        *(streamRef + 102) = -1;
      }

      v11 = *(streamRef + 44);
      if (v11)
      {
        dispatch_release(v11);
        *(streamRef + 44) = 0;
      }
    }
  }

  else
  {
    v10 = fsevent_default_log(0, q);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamSetDispatchQueue_cold_4();
    }
  }
}

char *fsevent_realpath(const char *a1, char *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = xmmword_24A926770;
  memset(v7, 0, 512);
  v5 = 0;
  v6 = 32;
  DWORD1(v4) = 0x80000000;
  if (getattrlist(a1, &v4, v7, 0x420uLL, 0x20u) == -1)
  {
    return 0;
  }

  if (!a2)
  {
    return &v7[1] + SDWORD2(v7[1]) + 8;
  }

  strlcpy(a2, &v7[1] + SDWORD2(v7[1]) + 8, 0x400uLL);
  return a2;
}

uint64_t allocate_d2f_port(uint64_t a1, uint64_t a2)
{
  v2 = mach_port_allocate(*MEMORY[0x277D85F48], 1u, (a2 + 192));
  v4 = v2;
  if (v2)
  {
    v5 = fsevent_default_log(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      allocate_d2f_port_cold_1();
    }
  }

  return v4;
}

BOOL create_d2f_port_source(uint64_t a1)
{
  v2 = *(a1 + 192);
  v3 = dispatch_source_create(MEMORY[0x277D85D08], v2, 0, *(a1 + 352));
  if (v3)
  {
    FSEventStreamRetain(a1);
    dispatch_set_qos_class_fallback();
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = __create_d2f_port_source_block_invoke;
    handler[3] = &__block_descriptor_tmp_66;
    v8 = v2;
    dispatch_source_set_event_handler(v3, handler);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 0x40000000;
    v5[2] = __create_d2f_port_source_block_invoke_2;
    v5[3] = &__block_descriptor_tmp_67;
    v6 = v2;
    v5[4] = v3;
    v5[5] = a1;
    dispatch_source_set_cancel_handler(v3, v5);
    *(a1 + 360) = v3;
    *(a1 + 368) = 1;
  }

  return v3 != 0;
}

uint64_t register_with_server(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5, const void **a6, uint64_t a7, uint64_t a8, int a9, _DWORD *a10)
{
  v13 = a5;
  v17 = FSEvents_connect(a2);
  if (v17)
  {
    return v17;
  }

  v74 = a7;
  v19 = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
  if (v19)
  {
    v21 = v19;
    v75 = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
    if (v75)
    {
      v70 = a8;
      v71 = a3;
      v73 = a4;
      v23 = v13;
      if (v13 < 1)
      {
        v24 = 0;
      }

      else
      {
        v24 = 0;
        v25 = v13;
        v26 = a6;
        v27 = v21;
        do
        {
          v28 = *v26++;
          v29 = strlen(v28);
          *v27++ = v29;
          v24 += v29;
          --v25;
        }

        while (v25);
      }

      v32 = v24 + v13;
      v33 = malloc_type_malloc(v24 + v13, 0xBF49D592uLL);
      v35 = v33;
      if (!v33)
      {
        v50 = fsevent_default_log(0, v34);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          register_with_server_cold_5();
        }

        v51 = 0;
        v44 = 0;
        v17 = 4294967293;
        goto LABEL_49;
      }

      v72 = v32;
      v69 = v21;
      v36 = 0;
      if (v13 >= 1)
      {
        v37 = v75;
        v38 = v21;
        do
        {
          *v37++ = v36;
          v39 = *v38++;
          v40 = v39 + 1;
          v41 = *a6++;
          v33 = memcpy(&v35[v36], v41, v40);
          v36 += v40;
          --v23;
        }

        while (v23);
      }

      v42 = v72;
      if (v36 != v72)
      {
        v43 = fsevent_default_log(v33, v34);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          register_with_server_cold_1();
        }
      }

      v44 = *(a1 + 96);
      v45 = v73;
      if (v44)
      {
        if (v44 < 1)
        {
          v46 = 0;
          v21 = v69;
        }

        else
        {
          v46 = 0;
          v47 = (a1 + 104);
          v48 = *(a1 + 96);
          v21 = v69;
          do
          {
            v49 = *v47++;
            v46 += strlen(v49) + 1;
            --v48;
          }

          while (v48);
        }

        v53 = malloc_type_malloc(4 * v44, 0x100004052888210uLL);
        if (!v53)
        {
          v66 = fsevent_default_log(0, v54);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            register_with_server_cold_3();
          }

          v51 = 0;
          v44 = 0;
          v17 = 4294967292;
          goto LABEL_49;
        }

        v51 = v53;
        v55 = malloc_type_malloc(v46, 0x6F28CA70uLL);
        if (!v55)
        {
          v67 = fsevent_default_log(0, v56);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            register_with_server_cold_2();
          }

          v44 = 0;
          v17 = 4294967291;
          goto LABEL_49;
        }

        v44 = v55;
        v52 = *(a1 + 96);
        if (v52 >= 1)
        {
          v68 = v35;
          v57 = 0;
          v58 = v55;
          v59 = 0;
          v60 = a1 + 104;
          do
          {
            v51[v57] = v59;
            v61 = strlen(*(v60 + 8 * v57));
            v62 = v61 + 1;
            memcpy(&v58[v59], *(v60 + 8 * v57), v61 + 1);
            v59 += v62;
            ++v57;
            v52 = *(a1 + 96);
          }

          while (v52 > v57);
          v21 = v69;
          v45 = v73;
          v44 = v58;
          v35 = v68;
        }

        v42 = v72;
      }

      else
      {
        LODWORD(v52) = 0;
        v51 = 0;
        LODWORD(v46) = 0;
        v21 = v69;
      }

      v63 = f2d_register_rpc(FSEvents_f2d_public_port, v71, v45, v13, v75, v13, v35, v42, v52, v51, v52, v44, v46, v70, a9, v74, a10);
      v17 = v63;
      if (v63)
      {
        v65 = fsevent_default_log(v63, v64);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          register_with_server_cold_4();
        }
      }

LABEL_49:
      free(v21);
      free(v75);
      if (v35)
      {
        free(v35);
      }

      if (v51)
      {
        free(v51);
      }

      if (v44)
      {
        free(v44);
      }

      return v17;
    }

    v31 = fsevent_default_log(0, v22);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      register_with_server_cold_6();
    }

    free(v21);
    return 4294967294;
  }

  else
  {
    v30 = fsevent_default_log(0, v20);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      register_with_server_cold_7();
    }

    return 0xFFFFFFFFLL;
  }
}

Boolean FSEventStreamStart(FSEventStreamRef streamRef)
{
  if (!streamRef)
  {
    v5 = fsevent_default_log(0, v1);
    v4 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      return v4;
    }

    FSEventStreamStart_cold_3();
    goto LABEL_20;
  }

  if (*(streamRef + 188))
  {
    v3 = fsevent_default_log(streamRef, v1);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      return v4;
    }

    FSEventStreamStart_cold_1();
    goto LABEL_20;
  }

  if (!*(streamRef + 27) && !*(streamRef + 45))
  {
    v9 = fsevent_default_log(streamRef, v1);
    v4 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      return v4;
    }

    FSEventStreamStart_cold_2();
    goto LABEL_20;
  }

  v6 = *(streamRef + 46);
  if ((v6 & 4) != 0 && !*(streamRef + 54) && !*(streamRef + 52) && !*(streamRef + 53))
  {
LABEL_20:
    LOBYTE(v4) = 0;
    return v4;
  }

  if (!*(streamRef + 49))
  {
    if (!register_with_server(streamRef, "FSEventStreamStart", *(streamRef + 48), *(streamRef + 16), *(streamRef + 18), *(streamRef + 10), *(streamRef + 21), *(streamRef + 22), v6, streamRef + 49))
    {
      *(streamRef + 188) = 1;
      if (*(streamRef + 27))
      {
        context.version = 0;
        context.info = streamRef;
        context.retain = _FSEventStreamRetainAndReturnSelf;
        context.release = FSEventStreamRelease;
        context.copyDescription = FSEventStreamCopyDescription;
        v10 = CFMachPortCreateWithPort(0, *(streamRef + 49), FSEventsClientPortCallback, &context, 0);
        *(streamRef + 26) = v10;
        CFMachPortSetInvalidationCallBack(v10, server_gone_callback);
      }

      else
      {
        v11 = *(streamRef + 45);
        if (v11)
        {
          resume_source(v11, streamRef + 92);
          if (create_f2d_private_port_source(streamRef))
          {
            resume_source(*(streamRef + 47), streamRef + 96);
          }
        }
      }

      goto LABEL_14;
    }

    goto LABEL_20;
  }

LABEL_14:
  v7 = *(streamRef + 52);
  if (v7)
  {
    CFFileDescriptorEnableCallBacks(v7, 1uLL);
  }

  v8 = *(streamRef + 54);
  if (v8)
  {
    resume_source(v8, streamRef + 110);
  }

  LOBYTE(v4) = 1;
  return v4;
}

uint64_t f2d_register_rpc(int a1, int a2, int a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, int a9, uint64_t a10, int a11, uint64_t a12, int a13, uint64_t a14, int a15, uint64_t a16, _DWORD *a17)
{
  v48 = *MEMORY[0x277D85DE8];
  *&msg[20] = 0u;
  *&msg[4] = 0u;
  *&msg[24] = 5;
  *&msg[28] = a2;
  v24 = 1310720;
  v25 = a5;
  v26 = 16777472;
  v27 = 4 * a6;
  v28 = a7;
  v29 = 16777472;
  v30 = a8;
  v31 = a10;
  v32 = 16777472;
  v33 = 4 * a11;
  v34 = a12;
  v35 = 16777472;
  v36 = a13;
  v37 = *MEMORY[0x277D85EF8];
  v38 = a3;
  v39 = a4;
  v40 = a6;
  v41 = a8;
  v42 = a9;
  v43 = a11;
  v44 = a13;
  v45 = a14;
  v46 = a15;
  v47 = a16;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = -2147478253;
  *&msg[16] = 0x101D000000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v19 = *&msg[12];
  }

  else
  {
    v19 = special_reply_port;
  }

  v20 = mach_msg(msg, 3162115, 0xA0u, 0x30u, v19, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) > 0xE || ((1 << (v20 - 2)) & 0x4003) == 0)
  {
    if (!v20)
    {
      if (*&msg[20] == 71)
      {
        v21 = 4294966988;
      }

      else if (*&msg[20] == 66100)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v21 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v21 = 4294966996;
              }

              else
              {
                v21 = *&msg[32];
              }
            }
          }

          else
          {
            v21 = 4294966996;
          }

          goto LABEL_24;
        }

        v21 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 40 && !*&msg[8] && HIWORD(v24) << 16 == 1114112)
        {
          v21 = 0;
          *a17 = *&msg[28];
          return v21;
        }
      }

      else
      {
        v21 = 4294966995;
      }

LABEL_24:
      mach_msg_destroy(msg);
      return v21;
    }

    mig_dealloc_special_reply_port();
  }

  return v21;
}

void resume_source(NSObject *a1, int *a2)
{
  if (a1)
  {
    v3 = *a2;
    if (*a2)
    {
      if (v3 == 2)
      {
        dispatch_resume(a1);
      }

      else if (v3 == 1)
      {
        dispatch_activate(a1);
      }

      *a2 = 3;
    }
  }
}

BOOL create_f2d_private_port_source(uint64_t a1)
{
  v2 = *(a1 + 196);
  v3 = dispatch_source_create(MEMORY[0x277D85D10], v2, 1uLL, *(a1 + 352));
  if (v3)
  {
    FSEventStreamRetain(a1);
    dispatch_set_qos_class_fallback();
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = __create_f2d_private_port_source_block_invoke;
    handler[3] = &__block_descriptor_tmp_54;
    handler[4] = a1;
    dispatch_source_set_event_handler(v3, handler);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 0x40000000;
    v5[2] = __create_f2d_private_port_source_block_invoke_2;
    v5[3] = &__block_descriptor_tmp_55;
    v6 = v2;
    v5[4] = v3;
    v5[5] = a1;
    dispatch_source_set_cancel_handler(v3, v5);
    *(a1 + 376) = v3;
    *(a1 + 384) = 1;
  }

  return v3 != 0;
}

uint64_t fsevent_default_log(uint64_t a1, uint64_t a2)
{
  if (fsevent_default_log_once != -1)
  {
    fsevent_default_log_cold_1();
  }

  return fsevent_default_log_logger;
}

os_log_t __fsevent_default_log_block_invoke()
{
  result = os_log_create("com.apple.fsevents", "client");
  fsevent_default_log_logger = result;
  return result;
}

atomic_uint *_FSEventStreamRetainAndReturnSelf(atomic_uint *a1, uint64_t a2)
{
  if (a1)
  {
    atomic_fetch_add(a1, 1u);
  }

  else
  {
    v3 = fsevent_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamRetainAndReturnSelf_cold_1();
    }
  }

  return a1;
}

CFStringRef FSEventStreamCopyDescription(ConstFSEventStreamRef streamRef)
{
  if (!streamRef)
  {
    v19 = fsevent_default_log(0, v1);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamCopyDescription_cold_2();
    }

    return 0;
  }

  v3 = malloc_type_malloc((*(streamRef + 18) << 10) + 1024, 0x68187881uLL);
  if (!v3)
  {
    v20 = fsevent_default_log(0, v4);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamCopyDescription_cold_1();
    }

    return 0;
  }

  v5 = v3;
  v6 = &v3[sprintf(v3, "FSEventStreamRef @ %p:\n", streamRef)];
  v7 = &v6[sprintf(v6, "   allocator = %p\n", *(streamRef + 1))];
  v8 = &v7[sprintf(v7, "   callback = %p\n", *(streamRef + 2))];
  v9 = &v8[sprintf(v8, "   context = {%lu, %p, %p, %p, %p}\n", *(streamRef + 3), *(streamRef + 4), *(streamRef + 5), *(streamRef + 6), *(streamRef + 7))];
  v10 = &v9[sprintf(v9, "   numPathsToWatch = %lu\n", *(streamRef + 9))];
  v11 = &v10[sprintf(v10, "   pathsToWatch = %p\n", *(streamRef + 10))];
  if (*(streamRef + 9) >= 1)
  {
    v12 = 0;
    do
    {
      v11 += sprintf(v11, "        pathsToWatch[%d] = '%s'\n", v12, *(*(streamRef + 10) + 8 * v12));
      ++v12;
    }

    while (*(streamRef + 9) > v12);
  }

  v13 = &v11[sprintf(v11, "   latestEventId = %lld\n", *(streamRef + 21))];
  v14 = &v13[sprintf(v13, "   latency = %llu (microseconds)\n", *(streamRef + 22))];
  v15 = &v14[sprintf(v14, "   flags = 0x%08x\n", *(streamRef + 46))];
  v16 = sprintf(v15, "\trunLoop = %p\n", *(streamRef + 28));
  sprintf(&v15[v16], "\trunLoopMode = %p\n", *(streamRef + 29));
  v17 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v5, 0x8000100u);
  free(v5);
  return v17;
}

void FSEventsClientPortCallback(uint64_t a1, uint64_t a2)
{
  v2 = fsevent_default_log(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    FSEventsClientPortCallback_cold_1();
  }
}

void FSEventStreamStop(FSEventStreamRef streamRef)
{
  if (streamRef)
  {
    if (*(streamRef + 188))
    {
      if (*(streamRef + 49))
      {
        v3 = *(streamRef + 45);
        if (v3 && *(streamRef + 92) == 3)
        {
          dispatch_suspend(v3);
          *(streamRef + 92) = 2;
        }

        v4 = *(streamRef + 47);
        if (v4)
        {
          cancel_source(streamRef + 47, streamRef + 96);
          *(streamRef + 49) = 0;
        }

        v5 = *(streamRef + 26);
        if (v5)
        {
          CFMachPortSetInvalidationCallBack(v5, 0);
          CFMachPortInvalidate(*(streamRef + 26));
          CFRelease(*(streamRef + 26));
          *(streamRef + 26) = 0;
        }

        if (!v4)
        {
          dispose_f2d_private_port(*(streamRef + 49));
          *(streamRef + 49) = 0;
        }

        v6 = *(streamRef + 52);
        if (v6)
        {
          CFFileDescriptorDisableCallBacks(v6, 1uLL);
        }

        v7 = *(streamRef + 54);
        if (v7)
        {
          if (*(streamRef + 110) == 3)
          {
            dispatch_suspend(v7);
            *(streamRef + 110) = 2;
          }
        }

        *(streamRef + 188) = 0;
      }

      else
      {
        v9 = fsevent_default_log(streamRef, v1);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          FSEventStreamStop_cold_1();
        }
      }
    }
  }

  else
  {
    v8 = fsevent_default_log(0, v1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamStop_cold_2();
    }
  }
}

void dispose_f2d_private_port(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = f2d_unregister_rpc(result);
    if (v2)
    {
      v4 = fsevent_default_log(v2, v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        dispose_f2d_private_port_cold_1();
      }
    }

    else
    {
      v5 = mach_port_deallocate(*MEMORY[0x277D85F48], v1);
      if (v5)
      {
        v7 = v5;
        v8 = fsevent_default_log(v5, v6);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          dispose_f2d_private_port_cold_2(v7);
        }
      }
    }
  }
}

FSEventStreamEventId FSEventStreamGetLatestEventId(ConstFSEventStreamRef streamRef)
{
  if (streamRef)
  {
    return *(streamRef + 21);
  }

  v3 = fsevent_default_log(streamRef, v1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    FSEventStreamGetLatestEventId_cold_1();
  }

  return 0;
}

dev_t FSEventStreamGetDeviceBeingWatched(ConstFSEventStreamRef streamRef)
{
  if (streamRef)
  {
    return *(streamRef + 16);
  }

  v3 = fsevent_default_log(streamRef, v1);
  result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (result)
  {
    FSEventStreamGetDeviceBeingWatched_cold_1();
    return 0;
  }

  return result;
}

FSEventStreamRef FSEventStreamCreateRelativeToDevice(CFAllocatorRef allocator, FSEventStreamCallback callback, FSEventStreamContext *context, dev_t deviceToWatch, CFArrayRef pathsToWatchRelativeToDevice, FSEventStreamEventId sinceWhen, CFTimeInterval latency, FSEventStreamCreateFlags flags)
{
  if (deviceToWatch > 0)
  {
    return _FSEventStreamCreate("FSEventStreamCreateRelativeToDevice", allocator, callback, &context->version, deviceToWatch, pathsToWatchRelativeToDevice, sinceWhen, (latency * 1000000.0), flags);
  }

  v9 = fsevent_default_log(allocator, callback);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    FSEventStreamCreateRelativeToDevice_cold_1();
  }

  return 0;
}

void _FSEventStreamDeallocate(char *ptr, uint64_t a2)
{
  if (ptr)
  {
    v2 = ptr;
    if (*ptr)
    {
      v3 = fsevent_default_log(ptr, a2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        _FSEventStreamDeallocate_cold_1();
      }
    }

    else
    {
      if (ptr[188])
      {
        v5 = fsevent_default_log(ptr, a2);
        ptr = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
        if (ptr)
        {
          _FSEventStreamDeallocate_cold_2();
        }
      }

      if (*(v2 + 27) || *(v2 + 45))
      {
        v6 = fsevent_default_log(ptr, a2);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          _FSEventStreamDeallocate_cold_3();
        }
      }

      v7 = *(v2 + 1);
      if (v7)
      {
        v8 = *(v2 + 10);
        if (v8)
        {
          v9 = *(v2 + 9);
          *(v2 + 9) = 0;
          if (v9 >= 1)
          {
            v10 = 0;
            v11 = v9 & 0x7FFFFFFF;
            do
            {
              v12 = *(*(v2 + 10) + 8 * v10);
              if (v12)
              {
                CFAllocatorDeallocate(v7, v12);
              }

              v13 = *(v2 + 49);
              if (v13)
              {
                v14 = *(v13 + 32 * v10 + 24);
                if (v14)
                {
                  free(v14);
                  v13 = *(v2 + 49);
                }

                v15 = v13 + 32 * v10;
                v16 = *(v15 + 16);
                if (v16)
                {
                  if (*(v15 + 8) >= 1)
                  {
                    v17 = 0;
                    do
                    {
                      close(*(*(v13 + 32 * v10 + 16) + 4 * v17++));
                      v13 = *(v2 + 49);
                      v18 = v13 + 32 * v10;
                    }

                    while (v17 < *(v18 + 8));
                    v16 = *(v18 + 16);
                  }

                  free(v16);
                  v13 = *(v2 + 49);
                }

                close(*(v13 + 32 * v10 + 4));
              }

              ++v10;
            }

            while (v10 != v11);
            v8 = *(v2 + 10);
          }

          CFAllocatorDeallocate(v7, v8);
          CFAllocatorDeallocate(v7, *(v2 + 11));
          v19 = *(v2 + 49);
          if (v19)
          {
            CFAllocatorDeallocate(v7, v19);
          }

          v20 = *(v2 + 50);
          if (v20)
          {
            CFAllocatorDeallocate(v7, v20);
          }
        }

        for (i = 104; i != 168; i += 8)
        {
          v22 = *&v2[i];
          if (v22)
          {
            free(v22);
            *&v2[i] = 0;
          }
        }

        *(v2 + 12) = 0;
        v23 = *(v2 + 44);
        if (v23)
        {
          dispatch_release(v23);
        }

        v24 = *(v2 + 6);
        if (v24)
        {
          v24(*(v2 + 4));
        }

        *(v2 + 56) = 0;
        *(v2 + 26) = 0u;
        *(v2 + 27) = 0u;
        *(v2 + 24) = 0u;
        *(v2 + 25) = 0u;
        *(v2 + 22) = 0u;
        *(v2 + 23) = 0u;
        *(v2 + 20) = 0u;
        *(v2 + 21) = 0u;
        *(v2 + 18) = 0u;
        *(v2 + 19) = 0u;
        *(v2 + 16) = 0u;
        *(v2 + 17) = 0u;
        *(v2 + 14) = 0u;
        *(v2 + 15) = 0u;
        *(v2 + 12) = 0u;
        *(v2 + 13) = 0u;
        *(v2 + 10) = 0u;
        *(v2 + 11) = 0u;
        *(v2 + 8) = 0u;
        *(v2 + 9) = 0u;
        *(v2 + 6) = 0u;
        *(v2 + 7) = 0u;
        *(v2 + 4) = 0u;
        *(v2 + 5) = 0u;
        *(v2 + 2) = 0u;
        *(v2 + 3) = 0u;
        *v2 = 0u;
        *(v2 + 1) = 0u;
        CFAllocatorDeallocate(v7, v2);
        CFRelease(v7);
      }
    }
  }

  else
  {
    v4 = fsevent_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamDeallocate_cold_4();
    }
  }
}

void FSEventStreamScheduleWithRunLoop(FSEventStreamRef streamRef, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  if (streamRef)
  {
    if (runLoop)
    {
      v6 = (streamRef + 192);
      if (*(streamRef + 48))
      {
LABEL_4:
        v7 = _createAndAddRunLoopSource("FSEventStreamScheduleWithRunLoop", streamRef, runLoop, runLoopMode);
        if (v7)
        {
          v9 = fsevent_default_log(v7, v8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            FSEventStreamScheduleWithRunLoop_cold_2();
          }

          mach_port_deallocate(*MEMORY[0x277D85F48], *v6);
          *v6 = 0;
        }

        else
        {
          *(streamRef + 28) = CFRetain(runLoop);
          *(streamRef + 29) = CFStringCreateCopy(0, runLoopMode);
          if ((*(streamRef + 184) & 4) != 0)
          {
            context.version = 0;
            context.info = streamRef;
            context.retain = _FSEventStreamRetainAndReturnSelf;
            context.release = FSEventStreamRelease;
            context.copyDescription = FSEventStreamCopyDescription;
            v15 = CFFileDescriptorCreate(0, *(streamRef + 102), 1u, cffd_callback, &context);
            *(streamRef + 52) = v15;
            if (v15)
            {
              RunLoopSource = CFFileDescriptorCreateRunLoopSource(0, v15, 0);
              *(streamRef + 53) = RunLoopSource;
              if (RunLoopSource)
              {
                CFRunLoopAddSource(runLoop, RunLoopSource, *MEMORY[0x277CBF058]);
              }

              else
              {
                v22 = fsevent_default_log(0, v18);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  FSEventStreamScheduleWithRunLoop_cold_3();
                }

                CFFileDescriptorInvalidate(*(streamRef + 52));
                CFRelease(*(streamRef + 52));
                *(streamRef + 52) = 0;
              }
            }

            else
            {
              v21 = fsevent_default_log(0, v16);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                FSEventStreamScheduleWithRunLoop_cold_4();
              }
            }
          }
        }

        return;
      }

      d2f_port = allocate_d2f_port("FSEventStreamScheduleWithRunLoop", streamRef);
      if (!d2f_port)
      {
        pthread_mutex_lock(&FSEvents_streamDict_mutex);
        v19 = *MEMORY[0x277CBECE8];
        if (!FSEvents_streamDict)
        {
          FSEvents_streamDict = CFDictionaryCreateMutable(v19, 0, MEMORY[0x277CBF138], 0);
        }

        v20 = CFNumberCreate(v19, kCFNumberIntType, v6);
        CFDictionaryAddValue(FSEvents_streamDict, v20, streamRef);
        pthread_mutex_unlock(&FSEvents_streamDict_mutex);
        CFRelease(v20);
        goto LABEL_4;
      }

      v14 = fsevent_default_log(d2f_port, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        FSEventStreamScheduleWithRunLoop_cold_1();
      }
    }

    else
    {
      v11 = fsevent_default_log(streamRef, 0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        FSEventStreamScheduleWithRunLoop_cold_5();
      }
    }
  }

  else
  {
    v10 = fsevent_default_log(0, runLoop);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamScheduleWithRunLoop_cold_6();
    }
  }
}

uint64_t _createAndAddRunLoopSource(uint64_t a1, uint64_t a2, CFRunLoopRef rl, CFRunLoopMode mode)
{
  v5 = *(a2 + 192);
  if (!v5)
  {
    v10 = fsevent_default_log(a1, v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _createAndAddRunLoopSource_cold_4();
    }

    return 5;
  }

  if (*(a2 + 200))
  {
    v8 = *(a2 + 216);
    if (!v8)
    {
      v9 = fsevent_default_log(a1, 0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        _createAndAddRunLoopSource_cold_1();
      }

      return 5;
    }

LABEL_11:
    CFRunLoopAddSource(rl, v8, mode);
    return 0;
  }

  memset(&v18, 0, sizeof(v18));
  v11 = CFMachPortCreateWithPort(0, v5, FSEventsClientProcessMessageCallback, &v18, 0);
  *(a2 + 200) = v11;
  if (v11)
  {
    RunLoopSource = CFMachPortCreateRunLoopSource(*MEMORY[0x277CBECE8], v11, 0);
    *(a2 + 216) = RunLoopSource;
    if (RunLoopSource)
    {
      v8 = RunLoopSource;
      goto LABEL_11;
    }

    v17 = fsevent_default_log(0, v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      _createAndAddRunLoopSource_cold_2();
    }

    CFMachPortInvalidate(*(a2 + 200));
    CFRelease(*(a2 + 200));
    *(a2 + 200) = 0;
  }

  else
  {
    v16 = fsevent_default_log(0, v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      _createAndAddRunLoopSource_cold_3();
    }
  }

  mach_port_deallocate(*MEMORY[0x277D85F48], *(a2 + 196));
  *(a2 + 196) = 0;
  return 5;
}

void cffd_callback(__CFFileDescriptor *a1, int a2, FSEventStreamRef streamRef)
{
  FSEventStreamRetain(streamRef);
  NativeDescriptor = CFFileDescriptorGetNativeDescriptor(a1);
  process_dir_events(NativeDescriptor, streamRef);
  if (*streamRef >= 2 && *(streamRef + 188))
  {
    CFFileDescriptorEnableCallBacks(a1, 1uLL);
  }

  FSEventStreamRelease(streamRef);
}

void FSEventStreamUnscheduleFromRunLoop(FSEventStreamRef streamRef, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  if (streamRef)
  {
    if (runLoop)
    {
      v5 = *(streamRef + 27);
      if (v5)
      {
        CFRunLoopRemoveSource(runLoop, v5, runLoopMode);
        v7 = *(streamRef + 53);
        if (v7)
        {
          CFRunLoopRemoveSource(runLoop, v7, runLoopMode);
        }

        _FSEventStreamUnscheduleFromRunLoops(streamRef);
      }

      else
      {
        v10 = fsevent_default_log(streamRef, 0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          FSEventStreamUnscheduleFromRunLoop_cold_1();
        }
      }
    }

    else
    {
      v9 = fsevent_default_log(streamRef, 0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        FSEventStreamUnscheduleFromRunLoop_cold_2();
      }
    }
  }

  else
  {
    v8 = fsevent_default_log(0, runLoop);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamUnscheduleFromRunLoop_cold_3();
    }
  }
}

void _FSEventStreamUnscheduleFromRunLoops(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 224) = 0;
  }

  v3 = *(a1 + 232);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 232) = 0;
  }
}

void __FSEventStreamSetDispatchQueue_block_invoke_2(uint64_t a1)
{
  close(*(a1 + 48));
  dispatch_release(*(a1 + 32));
  v2 = *(a1 + 40);

  FSEventStreamRelease(v2);
}

FSEventStreamEventId FSEventStreamFlushAsync(FSEventStreamRef streamRef)
{
  v8 = 0;
  if (streamRef)
  {
    if (*(streamRef + 188))
    {
      if (*(streamRef + 25))
      {
        v2 = f2d_flush_rpc(*(streamRef + 49), &v8);
        if (v2)
        {
          v4 = fsevent_default_log(v2, v3);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            FSEventStreamFlushAsync_cold_1();
          }
        }
      }
    }

    else
    {
      v6 = fsevent_default_log(streamRef, v1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        FSEventStreamFlushAsync_cold_2();
      }
    }
  }

  else
  {
    v5 = fsevent_default_log(0, v1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamFlushAsync_cold_3();
    }
  }

  return v8;
}

void FSEventStreamFlushSync(FSEventStreamRef streamRef)
{
  v21 = 0;
  if (streamRef)
  {
    if (*(streamRef + 188))
    {
      if (*(streamRef + 25) || *(streamRef + 45))
      {
        v3 = *(streamRef + 28);
        if (v3 || *(streamRef + 45))
        {
          v4 = *(streamRef + 27);
          if (v4 || *(streamRef + 45))
          {
            if (v3)
            {
              CFRunLoopAddSource(v3, v4, @"com.apple.FSEvents");
              v20 = 0;
                ;
              }
            }

            else
            {
              pthread_mutex_lock((streamRef + 240));
              while (*(streamRef + 190))
              {
                v7 = pthread_cond_wait((streamRef + 304), (streamRef + 240));
                if (v7)
                {
                  v9 = fsevent_default_log(v7, v8);
                  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                  {
                    FSEventStreamFlushSync_cold_1();
                  }

                  break;
                }
              }

              pthread_mutex_unlock((streamRef + 240));
            }

            v10 = f2d_flush_rpc(*(streamRef + 49), &v21);
            if (v10)
            {
              v12 = fsevent_default_log(v10, v11);
              v10 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
              if (v10)
              {
                FSEventStreamFlushSync_cold_2();
              }
            }

            if (!v21)
            {
              goto LABEL_46;
            }

            if (v21 > 0)
            {
              *(streamRef + 56) = v21;
              v20 = 0;
              if (*(streamRef + 28))
              {
                  ;
                }
              }

              else
              {
                pthread_mutex_lock((streamRef + 240));
                while (*(streamRef + 21) < *(streamRef + 56))
                {
                  v16 = pthread_cond_wait((streamRef + 304), (streamRef + 240));
                  if (v16)
                  {
                    v18 = fsevent_default_log(v16, v17);
                    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                    {
                      FSEventStreamFlushSync_cold_4();
                    }

                    break;
                  }
                }

                pthread_mutex_unlock((streamRef + 240));
              }

              *(streamRef + 56) = 0;
LABEL_46:
              v19 = *(streamRef + 28);
              if (v19)
              {
                CFRunLoopRemoveSource(v19, *(streamRef + 27), @"com.apple.FSEvents");
              }

              return;
            }

            v13 = fsevent_default_log(v10, v11);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              FSEventStreamFlushSync_cold_3();
            }
          }

          else
          {
            v15 = fsevent_default_log(v3, 0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              FSEventStreamFlushSync_cold_5();
            }
          }
        }

        else
        {
          v14 = fsevent_default_log(0, v1);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            FSEventStreamFlushSync_cold_6();
          }
        }
      }
    }

    else
    {
      v6 = fsevent_default_log(streamRef, v1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        FSEventStreamFlushSync_cold_7();
      }
    }
  }

  else
  {
    v5 = fsevent_default_log(0, v1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamFlushSync_cold_8();
    }
  }
}

uint64_t _runRunLoopOnceForFlushSync(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = CFRunLoopRunInMode(@"com.apple.FSEvents", 5.0, 1u);
  v10 = v8;
  if (v8 <= 2)
  {
    if (v8 == 1)
    {
      v14 = fsevent_default_log(v8, v9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        _runRunLoopOnceForFlushSync_cold_2();
      }

      return 1;
    }

    if (v8 == 2)
    {
      v11 = fsevent_default_log(v8, v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        _runRunLoopOnceForFlushSync_cold_1();
      }

      return 1;
    }

LABEL_9:
    v13 = fsevent_default_log(v8, v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315906;
      v19 = a1;
      v20 = 2048;
      v21 = a2;
      v22 = 2080;
      v23 = "UNKNOWN";
      v24 = 1024;
      v25 = v10;
      _os_log_error_impl(&dword_24A91B000, v13, OS_LOG_TYPE_ERROR, "%s(streamRef = %p): ERROR: CFRunLoopRunInMode() => %s (%d)", &v18, 0x26u);
    }

    return 1;
  }

  if (v8 != 3)
  {
    if (v8 == 4)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v15 = *a3;
  if ((*a3 & ~(-1 << *a4)) == 0)
  {
    v16 = fsevent_default_log(v8, v9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = (*a3 + 1) * 5.0;
      v18 = 136316162;
      v19 = a1;
      v20 = 2048;
      v21 = a2;
      v22 = 2080;
      v23 = "The run loop timed out.";
      v24 = 1024;
      v25 = 3;
      v26 = 2048;
      v27 = v17;
      _os_log_error_impl(&dword_24A91B000, v16, OS_LOG_TYPE_ERROR, "%s(streamRef = %p): WARNING: CFRunLoopRunInMode() => %s (%d) (%.2f seconds)", &v18, 0x30u);
    }

    ++*a4;
    v15 = *a3;
  }

  result = 0;
  *a3 = v15 + 1;
  return result;
}

void FSEventStreamInvalidate(FSEventStreamRef streamRef)
{
  if (streamRef)
  {
    if (*(streamRef + 27) || *(streamRef + 45))
    {
      if (*(streamRef + 188))
      {
        v3 = fsevent_default_log(streamRef, v1);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          FSEventStreamInvalidate_cold_1();
        }
      }

      *(streamRef + 189) = 1;
      _FSEventStreamUnscheduleFromRunLoops(streamRef);
      v4 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, streamRef + 192);
      pthread_mutex_lock(&FSEvents_streamDict_mutex);
      CFDictionaryRemoveValue(FSEvents_streamDict, v4);
      pthread_mutex_unlock(&FSEvents_streamDict_mutex);
      CFRelease(v4);
      v5 = *(streamRef + 25);
      if (v5)
      {
        CFMachPortInvalidate(v5);
        CFRelease(*(streamRef + 25));
        *(streamRef + 25) = 0;
        v6 = *(streamRef + 26);
        if (v6)
        {
          CFMachPortSetInvalidationCallBack(v6, 0);
          CFRelease(*(streamRef + 26));
          *(streamRef + 26) = 0;
        }

        v7 = *(streamRef + 27);
        if (v7)
        {
          CFRelease(v7);
          *(streamRef + 27) = 0;
        }
      }

      if (*(streamRef + 45))
      {
        cancel_source(streamRef + 45, streamRef + 92);
      }

      else
      {
        dispose_d2f_port(*(streamRef + 48));
      }

      *(streamRef + 48) = 0;
      if (*(streamRef + 47))
      {
        cancel_source(streamRef + 47, streamRef + 96);
        *(streamRef + 49) = 0;
      }

      if ((*(streamRef + 184) & 4) != 0)
      {
        v9 = *(streamRef + 52);
        if (v9)
        {
          CFFileDescriptorInvalidate(v9);
          CFRelease(*(streamRef + 52));
          *(streamRef + 52) = 0;
          v10 = *(streamRef + 53);
          if (v10)
          {
            CFRelease(v10);
            *(streamRef + 53) = 0;
          }
        }

        if (*(streamRef + 54))
        {
          cancel_source(streamRef + 54, streamRef + 110);
          *(streamRef + 102) = -1;
        }
      }
    }

    else
    {
      v11 = fsevent_default_log(streamRef, v1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        FSEventStreamInvalidate_cold_2();
      }
    }
  }

  else
  {
    v8 = fsevent_default_log(0, v1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamInvalidate_cold_3();
    }
  }
}

void dispose_d2f_port(uint64_t name)
{
  if (name)
  {
    v1 = mach_port_mod_refs(*MEMORY[0x277D85F48], name, 1u, -1);
    if (v1)
    {
      v3 = v1;
      v4 = fsevent_default_log(v1, v2);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        dispose_d2f_port_cold_1(v3);
      }
    }
  }
}

FSEventStreamEventId FSEventsGetCurrentEventId(void)
{
  v2 = 0;
  v0 = FSEvents_connect("FSEventsGetCurrentEventId");
  result = 0;
  if (!v0)
  {
    f2d_get_current_event_id_rpc(FSEvents_f2d_public_port, &v2);
    return v2;
  }

  return result;
}

FSEventStreamEventId FSEventsGetLastEventIdForDeviceBeforeTime(dev_t dev, CFAbsoluteTime time)
{
  v6 = 0;
  v4 = FSEvents_connect("FSEventsGetLastEventIdForDeviceBeforeTime");
  result = 0;
  if (!v4)
  {
    f2d_get_last_event_for_device_before_time_rpc(FSEvents_f2d_public_port, dev, time, &v6);
    return v6;
  }

  return result;
}

Boolean FSEventStreamSetExclusionPaths(FSEventStreamRef streamRef, CFArrayRef pathsToExclude)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(streamRef + 188))
  {
    return 0;
  }

  Count = CFArrayGetCount(pathsToExclude);
  *(streamRef + 12) = Count;
  if (Count && Count <= 8)
  {
    if (Count >= 1)
    {
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(pathsToExclude, v6);
        TypeID = CFStringGetTypeID();
        if (TypeID != CFGetTypeID(ValueAtIndex) || !CFStringGetFileSystemRepresentation(ValueAtIndex, buffer, 1024))
        {
          break;
        }

        if (*(streamRef + 16) || !fsevent_realpath(buffer, __s1))
        {
          __strlcpy_chk();
        }

        *(streamRef + v6++ + 13) = strdup(__s1);
        if (*(streamRef + 12) <= v6)
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  else
  {
    result = 0;
    *(streamRef + 12) = 0;
  }

  return result;
}

Boolean FSEventsPurgeEventsForDeviceUpToEventId(dev_t dev, FSEventStreamEventId eventId)
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = 0;
  if (FSEvents_connect("FSEventsPurgeEventsForDeviceUpToEventId"))
  {
    goto LABEL_2;
  }

  v18[0] = 0;
  v5 = getfsstat(0, 0, 2);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = v5;
    v7 = 2168 * v5;
    v8 = malloc_type_malloc(2168 * v5, 0x100004087E0324AuLL);
    if (v8)
    {
      v9 = v8;
      v10 = getfsstat(v8, v7, 2);
      if ((v10 & 0x80000000) == 0)
      {
        v11 = v10 >= v6 ? v6 : v10;
        if (v11)
        {
          f_mntonname = v9->f_mntonname;
          while (*(f_mntonname - 10) != dev)
          {
            f_mntonname += 2168;
            if (!--v11)
            {
              goto LABEL_15;
            }
          }

          __strlcpy_chk();
        }
      }

LABEL_15:
      free(v9);
    }
  }

  syslog(2, "dev %d (%s) : purging events up to event id %lld", dev, v18, eventId);
  v13 = f2d_purge_events_for_device_up_to_event_id_rpc(FSEvents_f2d_public_port, dev, eventId, &v17);
  if (!v13)
  {
    return v17 == 0;
  }

  v15 = fsevent_default_log(v13, v14);
  v4 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    FSEventsPurgeEventsForDeviceUpToEventId_cold_1();
LABEL_2:
    LOBYTE(v4) = 0;
  }

  return v4;
}

void FSEventStreamShow(ConstFSEventStreamRef streamRef)
{
  v2 = MEMORY[0x277D85DF8];
  fprintf(*MEMORY[0x277D85DF8], "FSEventStreamRef @ %p:\n", streamRef);
  if (streamRef)
  {
    fprintf(*v2, "   allocator = %p\n", *(streamRef + 1));
    fprintf(*v2, "   callback = %p\n", *(streamRef + 2));
    fprintf(*v2, "   f2d_private_port = 0x%x\n", *(streamRef + 49));
    fprintf(*v2, "   context = {%lu, %p, %p, %p, %p}\n", *(streamRef + 3), *(streamRef + 4), *(streamRef + 5), *(streamRef + 6), *(streamRef + 7));
    fprintf(*v2, "   numPathsToWatch = %lu\n", *(streamRef + 9));
    fprintf(*v2, "   pathsToWatch = %p\n", *(streamRef + 10));
    if (*(streamRef + 9) >= 1)
    {
      v3 = 0;
      do
      {
        fprintf(*v2, "        pathsToWatch[%d] = '%s'\n", v3, *(*(streamRef + 10) + 8 * v3));
        ++v3;
      }

      while (*(streamRef + 9) > v3);
    }

    fprintf(*v2, "   numPathsToExclude = %lu\n", *(streamRef + 12));
    if (*(streamRef + 12) >= 1)
    {
      v4 = 0;
      do
      {
        fprintf(*v2, "        pathsToExclude[%d] = '%s'\n", v4, *(streamRef + v4 + 13));
        ++v4;
      }

      while (*(streamRef + 12) > v4);
    }

    fprintf(*v2, "   latestEventId = %lld\n", *(streamRef + 21));
    fprintf(*v2, "   latency = %llu (microseconds)\n", *(streamRef + 22));
    fprintf(*v2, "   flags = 0x%08x\n", *(streamRef + 46));
    fprintf(*v2, "   runLoop = %p\n", *(streamRef + 28));
    fprintf(*v2, "   runLoopMode = %p\n", *(streamRef + 29));
  }
}

void server_gone_StreamRef_callback(uint64_t a1)
{
  if (a1 && !*(a1 + 189) && (*(a1 + 360) || *(a1 + 224)))
  {
    v2 = *MEMORY[0x277CBECE8];
    v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, (a1 + 192));
    pthread_mutex_lock(&FSEvents_streamDict_mutex);
    CFDictionaryRemoveValue(FSEvents_streamDict, v3);
    pthread_mutex_unlock(&FSEvents_streamDict_mutex);
    CFRelease(v3);
    pthread_mutex_lock(&FSEvents_f2d_public_port_mutex);
    v4 = MEMORY[0x277D85F48];
    mach_port_deallocate(*MEMORY[0x277D85F48], FSEvents_f2d_public_port);
    FSEvents_f2d_public_port = 0;
    pthread_mutex_unlock(&FSEvents_f2d_public_port_mutex);
    v5 = *(a1 + 360);
    if (v5)
    {
      cancel_source((a1 + 360), (a1 + 368));
      *(a1 + 192) = 0;
    }

    v6 = *(a1 + 376);
    if (v6)
    {
      cancel_source((a1 + 376), (a1 + 384));
      *(a1 + 196) = 0;
    }

    v7 = *(a1 + 216);
    if (v7)
    {
      CFRunLoopRemoveSource(*(a1 + 224), v7, *(a1 + 232));
      CFRelease(*(a1 + 216));
      *(a1 + 216) = 0;
    }

    v8 = *(a1 + 208);
    if (v8)
    {
      CFMachPortSetInvalidationCallBack(v8, 0);
      CFMachPortInvalidate(*(a1 + 208));
      CFRelease(*(a1 + 208));
      *(a1 + 208) = 0;
    }

    if (!v6)
    {
      mach_port_deallocate(*v4, *(a1 + 196));
      *(a1 + 196) = 0;
    }

    v9 = *(a1 + 200);
    if (v9)
    {
      CFMachPortInvalidate(v9);
      CFRelease(*(a1 + 200));
      *(a1 + 200) = 0;
    }

    if (!v5)
    {
      dispose_d2f_port(*(a1 + 192));
      *(a1 + 192) = 0;
    }

    v10 = FSEvents_connect("server_gone_StreamRef_callback");
    if (v10)
    {
      v12 = fsevent_default_log(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        server_gone_StreamRef_callback_cold_1();
      }
    }

    else
    {
      d2f_port = allocate_d2f_port("server_gone_StreamRef_callback", a1);
      if (d2f_port)
      {
        v15 = fsevent_default_log(d2f_port, v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          server_gone_StreamRef_callback_cold_2();
        }
      }

      else
      {
        v16 = register_with_server(a1, "server_gone_StreamRef_callback", *(a1 + 192), *(a1 + 64), *(a1 + 72), *(a1 + 80), -1, *(a1 + 176), *(a1 + 184), (a1 + 196));
        if (v16)
        {
          v18 = fsevent_default_log(v16, v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            server_gone_StreamRef_callback_cold_3();
          }
        }

        else
        {
          v19 = CFNumberCreate(v2, kCFNumberIntType, (a1 + 192));
          pthread_mutex_lock(&FSEvents_streamDict_mutex);
          CFDictionaryAddValue(FSEvents_streamDict, v19, a1);
          pthread_mutex_unlock(&FSEvents_streamDict_mutex);
          CFRelease(v19);
          if (v5)
          {
            if (create_d2f_port_source(a1))
            {
              resume_source(*(a1 + 360), (a1 + 368));
            }

            if (create_f2d_private_port_source(a1))
            {
              resume_source(*(a1 + 376), (a1 + 384));
            }
          }

          else if (*(a1 + 224))
          {
            context.version = 0;
            context.info = a1;
            context.retain = _FSEventStreamRetainAndReturnSelf;
            context.release = FSEventStreamRelease;
            context.copyDescription = FSEventStreamCopyDescription;
            v20 = CFMachPortCreateWithPort(0, *(a1 + 196), FSEventsClientPortCallback, &context, 0);
            *(a1 + 208) = v20;
            if (v20)
            {
              CFMachPortSetInvalidationCallBack(v20, server_gone_callback);
              _createAndAddRunLoopSource("server_gone_StreamRef_callback", a1, *(a1 + 224), *(a1 + 232));
            }

            else
            {
              v22 = fsevent_default_log(0, v21);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                server_gone_StreamRef_callback_cold_4();
              }
            }
          }

          FSEventStreamRetain(a1);
          if (*(a1 + 72) >= 1)
          {
            v23 = 0;
            do
            {
              root_dir_event_callback(a1, v23++, 5);
            }

            while (*(a1 + 72) > v23);
          }

          FSEventStreamRelease(a1);
        }
      }
    }
  }
}

void __create_f2d_private_port_source_block_invoke_2(uint64_t a1)
{
  dispose_f2d_private_port(*(a1 + 48));
  dispatch_release(*(a1 + 32));
  v2 = *(a1 + 40);

  FSEventStreamRelease(v2);
}

void cancel_source(dispatch_source_t *a1, int *a2)
{
  v4 = *a1;
  if (v4)
  {
    resume_source(v4, a2);
    dispatch_source_cancel(*a1);
    *a1 = 0;
  }

  *a2 = 0;
}

uint64_t FSEventsClientProcessMessageCallback(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v4 = *MEMORY[0x277D85DE8];
  return FSEventsD2F_server(v1, v3);
}

void __create_d2f_port_source_block_invoke_2(uint64_t a1)
{
  dispose_d2f_port(*(a1 + 48));
  dispatch_release(*(a1 + 32));
  v2 = *(a1 + 40);

  FSEventStreamRelease(v2);
}

uint64_t f2d_flush_rpc(int a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x101D100000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v5 = *&msg[12];
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(msg, 3162115, 0x18u, 0x34u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&msg[20] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&msg[20] == 66101)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v7 = *&msg[32];
              if (!*&msg[32])
              {
                *a2 = v11;
                return v7;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v8 = 1;
            }

            else
            {
              v8 = *&msg[32] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  return v7;
}

uint64_t f2d_get_current_event_id_rpc(int a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x101D300000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v5 = *&msg[12];
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(msg, 3162115, 0x18u, 0x34u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&msg[20] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&msg[20] == 66103)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v7 = *&msg[32];
              if (!*&msg[32])
              {
                *a2 = v11;
                return v7;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v8 = 1;
            }

            else
            {
              v8 = *&msg[32] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  return v7;
}

uint64_t f2d_get_last_event_for_device_before_time_rpc(int a1, int a2, uint64_t a3, void *a4)
{
  *&msg[20] = 0u;
  v13 = 0u;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  *&msg[32] = a2;
  *&v13 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x101D400000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(msg, 3162115, 0x2Cu, 0x34u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 66104)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v9 = *&msg[32];
              if (!*&msg[32])
              {
                *a4 = v13;
                return v9;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v10 = 1;
            }

            else
            {
              v10 = *&msg[32] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  return v9;
}

uint64_t f2d_purge_events_for_device_up_to_event_id_rpc(int a1, int a2, uint64_t a3, _DWORD *a4)
{
  memset(&v13[16], 0, 28);
  *v13 = 0u;
  *&v13[20] = *MEMORY[0x277D85EF8];
  *&v13[28] = a2;
  *&v13[32] = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v13[4] = a1;
  *&v13[8] = special_reply_port;
  v12 = 5395;
  *&v13[12] = 0x101D500000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v12);
    v7 = *&v13[8];
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&v12, 3162115, 0x2Cu, 0x30u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&v13[16] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&v13[16] == 66105)
      {
        if ((v12 & 0x80000000) == 0)
        {
          if (*v13 == 40)
          {
            if (!*&v13[4])
            {
              v9 = *&v13[28];
              if (!*&v13[28])
              {
                *a4 = *&v13[32];
                return v9;
              }

              goto LABEL_23;
            }
          }

          else if (*v13 == 36)
          {
            if (*&v13[4])
            {
              v10 = 1;
            }

            else
            {
              v10 = *&v13[28] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&v13[28];
            }

            goto LABEL_23;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v12);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  return v9;
}

uint64_t f2d_unregister_rpc(int a1)
{
  v8 = 0;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x101D600000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v3 = *&msg[12];
  }

  else
  {
    v3 = special_reply_port;
  }

  v4 = mach_msg(msg, 3162115, 0x18u, 0x2Cu, v3, 0, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_special_reply_port();
      return v5;
    }

    if (*&msg[20] == 71)
    {
      v5 = 4294966988;
    }

    else if (*&msg[20] == 66106)
    {
      v5 = 4294966996;
      if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
      {
        v5 = *&msg[32];
        if (!*&msg[32])
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = 4294966995;
    }

    mach_msg_destroy(msg);
  }

  return v5;
}

void FSEventStreamStart_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamStart_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamStart_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void register_with_server_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void register_with_server_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void register_with_server_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void register_with_server_cold_4()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_16(v0, v1);
  mach_error_string(v2);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
}

void register_with_server_cold_5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void register_with_server_cold_6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void register_with_server_cold_7()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _FSEventStreamRetainAndReturnSelf_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamRelease_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamCopyDescription_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamStop_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamStop_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void dispose_f2d_private_port_cold_1()
{
  OUTLINED_FUNCTION_14();
  mach_error_string(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void dispose_f2d_private_port_cold_2(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

void implementation_callback_rpc_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void implementation_callback_rpc_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void implementation_callback_rpc_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void implementation_callback_rpc_cold_4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void implementation_callback_rpc_cold_7(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "implementation_callback_rpc";
  _os_log_error_impl(&dword_24A91B000, log, OS_LOG_TYPE_ERROR, "%s: ERROR: CFNumberCreate() => NULL\n", buf, 0xCu);
}

void implementation_callback_rpc_cold_11()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamRetain_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamGetLatestEventId_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamGetDeviceBeingWatched_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamCopyPathsBeingWatched_cold_4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _FSEventStreamCreate_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void _FSEventStreamCreate_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void _FSEventStreamCreate_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _FSEventStreamCreate_cold_5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void _FSEventStreamCreate_cold_6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _FSEventStreamCreate_cold_7()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void _FSEventStreamCreate_cold_9()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamCreateRelativeToDevice_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _FSEventStreamDeallocate_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _FSEventStreamDeallocate_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _FSEventStreamDeallocate_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _FSEventStreamDeallocate_cold_4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamScheduleWithRunLoop_cold_1()
{
  OUTLINED_FUNCTION_14();
  mach_error_string(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void FSEventStreamScheduleWithRunLoop_cold_2()
{
  OUTLINED_FUNCTION_14();
  mach_error_string(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void FSEventStreamScheduleWithRunLoop_cold_5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamScheduleWithRunLoop_cold_6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void allocate_d2f_port_cold_1()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_16(v0, v1);
  mach_error_string(v2);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
}

void _createAndAddRunLoopSource_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _createAndAddRunLoopSource_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _createAndAddRunLoopSource_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _createAndAddRunLoopSource_cold_4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamUnscheduleFromRunLoop_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamUnscheduleFromRunLoop_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamUnscheduleFromRunLoop_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamSetDispatchQueue_cold_1()
{
  OUTLINED_FUNCTION_14();
  mach_error_string(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void FSEventStreamSetDispatchQueue_cold_4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void process_dir_events_cold_1(int a1)
{
  strerror(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void FSEventStreamFlushAsync_cold_1()
{
  OUTLINED_FUNCTION_14();
  mach_error_string(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void FSEventStreamFlushAsync_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamFlushAsync_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamFlushSync_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void FSEventStreamFlushSync_cold_2()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_16(v0, v1);
  mach_error_string(v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
}

void FSEventStreamFlushSync_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamFlushSync_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void FSEventStreamFlushSync_cold_5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamFlushSync_cold_6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamFlushSync_cold_7()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamFlushSync_cold_8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _runRunLoopOnceForFlushSync_cold_1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _runRunLoopOnceForFlushSync_cold_2()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void FSEventStreamInvalidate_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamInvalidate_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamInvalidate_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void dispose_d2f_port_cold_1(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

void FSEvents_connect_cold_1()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_16(v0, v1);
  bootstrap_strerror(v2);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void FSEventsCopyUUIDForDevice_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventsPurgeEventsForDeviceUpToEventId_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void server_gone_StreamRef_callback_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void server_gone_StreamRef_callback_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void root_dir_event_callback_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void root_dir_event_callback_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void watch_path_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void watch_path_cold_2()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
}

void watch_path_cold_3()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
}

void watch_all_parents_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void receive_and_dispatch_rcv_msg_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void receive_and_dispatch_rcv_msg_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}