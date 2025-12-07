void sub_100089870(uint64_t a1, int a2, uint64_t a3)
{
  v33 = a2;
  if (*(a3 + 696) != 1)
  {
    return;
  }

  if (!sub_1000735F4((a1 + 1744), &v33))
  {
    if (qword_1025D4660 != -1)
    {
      sub_101B924F8();
    }

    v5 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v33;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#Actor handleCellInfo called with unexpected inst instance %d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B936F4(&v33);
    }
  }

  *buf = &v33;
  v6 = sub_10008E220((a1 + 1744), &v33, &unk_101C66300, buf);
  v8 = v6;
  v9 = *(a3 + 8);
  *(v6 + 6) = v9;
  if (v9 < 3)
  {
    goto LABEL_12;
  }

  if (v9 == 9)
  {
    *(v6 + 8) = *sub_1006CCAA0(a3, v7);
    *(v8 + 9) = *(sub_1006CCAA0(a3, v21) + 4);
    v8[5] = -1;
    v10 = sub_1006CCAA0(a3, v22);
    goto LABEL_13;
  }

  if (v9 == 7)
  {
LABEL_12:
    *(v6 + 8) = *sub_1006CBCE4(a3);
    *(v8 + 9) = *(sub_1006CBCE4(a3) + 4);
    v8[5] = -1;
    v10 = sub_1006CBCE4(a3);
LABEL_13:
    v11 = *(v10 + 12);
LABEL_14:
    v8[6] = v11;
    v12 = -1;
    goto LABEL_15;
  }

  if (v9 - 3 <= 2)
  {
    v6[4] = -1;
    *(v6 + 10) = *(sub_1006CB140(a3, v7) + 32);
    *(v8 + 11) = *(sub_1006CB140(a3, v23) + 36);
    v11 = *(sub_1006CB140(a3, v24) + 44);
    goto LABEL_14;
  }

  if (v9 == 10)
  {
    *(v6 + 8) = *sub_100681E80(a3, v7);
    *(v8 + 9) = *(sub_100681E80(a3, v28) + 4);
    v8[5] = -1;
    v8[6] = *(sub_100681E80(a3, v29) + 16);
    v12 = *(sub_100681E80(a3, v30) + 32);
  }

  else
  {
    if (v9 != 6)
    {
      goto LABEL_16;
    }

    *(v6 + 8) = *sub_10007513C(a3, v7);
    *(v8 + 9) = *(sub_10007513C(a3, v25) + 4);
    v8[5] = -1;
    v8[6] = *(sub_10007513C(a3, v26) + 12);
    v12 = *(sub_10007513C(a3, v27) + 24);
  }

LABEL_15:
  *(v8 + 46) = v12;
LABEL_16:
  sub_10008E4C4(a1);
  if (qword_1025D4660 != -1)
  {
    sub_101B924F8();
  }

  v13 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v33;
    sub_10008422C(*(v8 + 6), __p);
    if (v32 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    v16 = *(v8 + 8);
    v17 = *(v8 + 9);
    v18 = *(v8 + 10);
    v19 = *(v8 + 11);
    v20 = v8[6];
    *buf = 68290819;
    *&buf[4] = 0;
    v35 = 2082;
    v36 = "";
    v37 = 1026;
    v38 = v14;
    v39 = 2082;
    v40 = v15;
    v41 = 1025;
    v42 = v16;
    v43 = 1025;
    v44 = v17;
    v45 = 1025;
    v46 = v18;
    v47 = 1025;
    v48 = v19;
    v49 = 2049;
    v50 = v20;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Actor cell info updated, inst:%{public}d, RAT:%{public, location:escape_only}s, MCC:%{private}d, MNC:%{private}d, SID:%{private}d, NID:%{private}d, cell ID:%{private}lld}", buf, 0x44u);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_100089C18(uint64_t a1, unsigned int *a2, double a3)
{
  v5 = a1;
  v6 = sub_100089378(*(a1 + 104), *(a1 + 109));
  if ((*(v5 + 111) & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101AED524();
    }

    v18 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "TileDl, preindexskip, request, #CloneMe", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AED5A4();
    }

    v19 = 0;
    return v19 & 1;
  }

  v7 = v6;
  v95 = v5;
  v8 = sub_100088E8C(*a2, *(v5 + 120));
  if (qword_1025D4620 != -1)
  {
    sub_101AED524();
  }

  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    v10 = sub_100085790(*a2);
    *buf = 136446723;
    *&buf[4] = v10;
    *&buf[12] = 2053;
    v106 = sub_100085338(a2);
    *v107 = 2053;
    *&v107[2] = sub_100085314(a2);
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "@TileDl, %{public}s, request, llsw, %{sensitive}.2lf, %{sensitive}.2lf", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AED694(a2);
  }

  v11 = sub_10008535C(v5, a2);
  v12 = sub_1000853E0(v8 + 184, a2);
  v13 = v12;
  v94 = v5 + 8;
  if (!v12 || (v14 = sub_100085520(v8 + 184, a2), !sub_10008AC98(v14, *(v5 + 110))))
  {
    if (v94 == v11)
    {
      v23 = (v5 + 110);
      if ((v13 & *(v5 + 110)) == 1)
      {
        v24 = sub_100085520(v8 + 184, a2);
        if (v7)
        {
          LOBYTE(v17) = 1;
        }

        else
        {
          LOBYTE(v17) = *(v5 + 69);
        }

        if (qword_1025D4620 != -1)
        {
          sub_101AED57C();
        }

        v34 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          (*(*v24 + 16))(buf, v24);
          v35 = v107[1] >= 0 ? buf : *buf;
          *v103 = 67240451;
          *&v103[4] = v17 & 1;
          *&v103[8] = 2081;
          *&v103[10] = v35;
          _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "@TileQueue, unreadable, %{public}d, tileid, %{private}s", v103, 0x12u);
          if ((v107[1] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_75;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D4620 != -1)
        {
          sub_101AED57C();
        }

        v86 = qword_1025D4628;
        (*(*v24 + 16))(v103, v24);
        if (v103[23] >= 0)
        {
          v87 = v103;
        }

        else
        {
          v87 = *v103;
        }

        *v98 = 67240451;
        *&v98[4] = v17 & 1;
        *&v98[8] = 2081;
        *&v98[10] = v87;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v86, 2, "@TileQueue, unreadable, %{public}d, tileid, %{private}s", v98, 18);
        v32 = v88;
        if ((v103[23] & 0x80000000) != 0)
        {
          operator delete(*v103);
        }

        goto LABEL_132;
      }

      if ((v13 & 1) == 0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101AED57C();
        }

        v33 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "@TileQueue, queue, 1", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AED954();
        }

        goto LABEL_76;
      }

      if (qword_1025D4620 != -1)
      {
        sub_101AED57C();
      }

      v25 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v26 = *v23;
        *buf = 67240961;
        *&buf[4] = 1;
        *&buf[8] = 1025;
        *&buf[10] = 0;
        v106 = 2.18053518e-289;
        *v107 = v26;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "@TileQueue, skip, alreadyDownloaded, %{public}d, accessible, %{private}d, inqueue, %{public}d, locked, %{private}d", buf, 0x1Au);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AEDA38(v23);
      }
    }

    else
    {
      v20 = *(v11 + 80);
      if (qword_1025D4620 != -1)
      {
        sub_101AED57C();
      }

      v21 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        (*(*v20 + 16))(buf, v20);
        v22 = v107[1] >= 0 ? buf : *buf;
        *v103 = 136380675;
        *&v103[4] = v22;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "@TileQueue, onlist, tileid, %{private}s", v103, 0xCu);
        if ((v107[1] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AED7EC(v20);
      }
    }

    v93 = 0;
    goto LABEL_87;
  }

  v15 = v94 == v11;
  v16 = sub_100085520(v8 + 184, a2);
  v17 = v15 && sub_100089384(v95, v16, a3);
  if (qword_1025D4620 != -1)
  {
    sub_101AED57C();
  }

  v27 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    (*(*v16 + 16))(buf, v16);
    v28 = v107[1] >= 0 ? buf : *buf;
    *v103 = 67240451;
    *&v103[4] = v17;
    *&v103[8] = 2081;
    *&v103[10] = v28;
    _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "@TileQueue, usable, %{public}d, tileid, %{private}s", v103, 0x12u);
    if ((v107[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if (!sub_10000A100(121, 2))
  {
    goto LABEL_75;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1025D4620 != -1)
  {
    sub_101AED57C();
  }

  v29 = qword_1025D4628;
  (*(*v16 + 16))(v103, v16);
  if (v103[23] >= 0)
  {
    v30 = v103;
  }

  else
  {
    v30 = *v103;
  }

  *v98 = 67240451;
  *&v98[4] = v17;
  *&v98[8] = 2081;
  *&v98[10] = v30;
  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v29, 2, "@TileQueue, usable, %{public}d, tileid, %{private}s", v98, 18);
  v32 = v31;
  if ((v103[23] & 0x80000000) != 0)
  {
    operator delete(*v103);
  }

LABEL_132:
  sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileDownloader::requestTiles(TileId, CFAbsoluteTime)", "%s\n", v32);
  if (v32 != buf)
  {
    free(v32);
  }

LABEL_75:
  v5 = v95;
  if (v17)
  {
LABEL_76:
    sub_1010AB49C(*(v8 + 4), v98);
    v97 = *v98;
    *v98 = 0;
    v5 = v95;
    sub_100FA6D58(v95, &v97, a2, a3);
    v36 = v97;
    v97 = 0;
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }

    if (qword_1025D4620 != -1)
    {
      sub_101AED57C();
      v5 = v95;
    }

    v37 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v38 = sub_100085790(*a2);
      v39 = sub_100085338(a2);
      v40 = sub_100085314(a2);
      v41 = *(v5 + 16);
      *buf = 136446979;
      *&buf[4] = v38;
      *&buf[12] = 2053;
      v106 = v39;
      *v107 = 2053;
      *&v107[2] = v40;
      *&v107[10] = 2050;
      v108 = v41;
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEFAULT, "@TileReq, %{public}s, onlist, llsw, %{sensitive}.2lf, %{sensitive}.2lf, center, size, %{public}ld", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AED538(buf);
      v79 = qword_1025D4628;
      v80 = sub_100085790(*a2);
      v81 = sub_100085338(a2);
      v82 = sub_100085314(a2);
      v83 = *(v95 + 16);
      *v103 = 136446979;
      *&v103[4] = v80;
      *&v103[12] = 2053;
      *&v103[14] = v81;
      *&v103[22] = 2053;
      *&__p.__r_.__value_.__l.__data_ = v82;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 2050;
      *(&__p.__r_.__value_.__r.__words[1] + 2) = v83;
      LODWORD(v89) = 42;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v79, 0, "@TileReq, %{public}s, onlist, llsw, %{sensitive}.2lf, %{sensitive}.2lf, center, size, %{public}ld", v103, v89);
      v85 = v84;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileDownloader::requestTiles(TileId, CFAbsoluteTime)", "%s\n", v84);
      if (v85 != buf)
      {
        free(v85);
      }

      v5 = v95;
    }

    v42 = *v98;
    *v98 = 0;
    if (v42)
    {
      (*(*v42 + 8))(v42);
    }

    v93 = 1;
    goto LABEL_87;
  }

  v93 = 0;
LABEL_87:
  *v103 = *a2;
  *&v103[16] = *(a2 + 2);
  if (*(a2 + 47) < 0)
  {
    sub_100007244(&__p, *(a2 + 3), *(a2 + 4));
    v5 = v95;
  }

  else
  {
    __p = *(a2 + 1);
  }

  v43 = *(v5 + 72);
  if ((v43 & 0x80000000) == 0)
  {
    v44 = -v43;
    v91 = (2 * v43) | 1;
    v92 = -v43;
    v90 = *(v5 + 72);
    do
    {
      v46 = v91;
      v45 = v92;
      do
      {
        if (!(v45 | v44))
        {
          goto LABEL_110;
        }

        *v103 = *a2;
        *&v103[16] = *(a2 + 2);
        std::string::operator=(&__p, a2 + 1);
        v47 = *(v8 + 160);
        v48 = *(v8 + 152);
        *&v47 = v47;
        sub_100085AC4(v103, v44, v45, v48, *&v47);
        v49 = sub_1000852BC(v103);
        v50 = v49 ^ 1;
        if (v49)
        {
          v51 = sub_10008535C(v95, v103);
          v52 = sub_1000853E0(v8 + 184, v103);
          v53 = v94 != v51;
          if (!((*(v95 + 110) | v52) & 1 | v53 | v50 & 1))
          {
            sub_1010AB49C(*(v8 + 4), &v96);
            sub_100FA6D58(v95, &v96, v103, a3);
            v54 = v96;
            v96 = 0;
            if (v54)
            {
              (*(*v54 + 8))(v54);
            }

            if (qword_1025D4620 != -1)
            {
              sub_101AED57C();
            }

            v55 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
            {
              v56 = sub_100085790(*v103);
              v57 = sub_100085338(v103);
              v58 = sub_100085314(v103);
              v59 = *(v95 + 16);
              *buf = 136446979;
              *&buf[4] = v56;
              *&buf[12] = 2053;
              v106 = v57;
              *v107 = 2053;
              *&v107[2] = v58;
              *&v107[10] = 2050;
              v108 = v59;
              _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEFAULT, "@TileReq, %{public}s, onlist, llsw, %{sensitive}.2lf, %{sensitive}.2lf, neighbor, size, %{public}ld", buf, 0x2Au);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101AED538(buf);
              v70 = qword_1025D4628;
              v71 = sub_100085790(*v103);
              v72 = sub_100085338(v103);
              v73 = sub_100085314(v103);
              v74 = *(v95 + 16);
              *v98 = 136446979;
              *&v98[4] = v71;
              *&v98[12] = 2053;
              *&v98[14] = v72;
              v99 = 2053;
              *v100 = v73;
              *&v100[8] = 2050;
              v101 = v74;
              LODWORD(v89) = 42;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v70, 0, "@TileReq, %{public}s, onlist, llsw, %{sensitive}.2lf, %{sensitive}.2lf, neighbor, size, %{public}ld", v98, v89);
              v76 = v75;
              sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileDownloader::requestTiles(TileId, CFAbsoluteTime)", "%s\n", v75);
              if (v76 != buf)
              {
                free(v76);
              }
            }

            v93 = 1;
            goto LABEL_110;
          }
        }

        else
        {
          v52 = 0;
          v53 = 0;
        }

        if (qword_1025D4620 != -1)
        {
          sub_101AED57C();
        }

        v60 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          v61 = sub_100085338(v103);
          v62 = sub_100085314(v103);
          v63 = *(v95 + 110);
          *buf = 134546945;
          *&buf[4] = v61;
          *&buf[12] = 2053;
          v106 = v62;
          *v107 = 1026;
          *&v107[2] = v63;
          *&v107[6] = 1026;
          *&v107[8] = v52;
          LOWORD(v108) = 1026;
          *(&v108 + 2) = v53;
          HIWORD(v108) = 1026;
          v109 = v50;
          _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_DEBUG, "@TileDl, skipneighbor, %{sensitive}.2lf, %{sensitive}.2lf, locked, %{public}d, dled, %{public}d, pending, %{public}d, outbounds, %{public}d", buf, 0x2Eu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AED538(buf);
          v64 = qword_1025D4628;
          v65 = sub_100085338(v103);
          v66 = sub_100085314(v103);
          v67 = *(v95 + 110);
          *v98 = 134546945;
          *&v98[4] = v65;
          *&v98[12] = 2053;
          *&v98[14] = v66;
          v99 = 1026;
          *v100 = v67;
          *&v100[4] = 1026;
          *&v100[6] = v52;
          LOWORD(v101) = 1026;
          *(&v101 + 2) = v53;
          HIWORD(v101) = 1026;
          v102 = v50;
          LODWORD(v89) = 46;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v64, 2, "@TileDl, skipneighbor, %{sensitive}.2lf, %{sensitive}.2lf, locked, %{public}d, dled, %{public}d, pending, %{public}d, outbounds, %{public}d", v98, v89);
          v69 = v68;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileDownloader::requestTiles(TileId, CFAbsoluteTime)", "%s\n", v68);
          if (v69 != buf)
          {
            free(v69);
          }
        }

LABEL_110:
        ++v45;
        --v46;
      }

      while (v46);
    }

    while (v44++ != v90);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v19 = v93;
  return v19 & 1;
}

void sub_10008ABE4(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a23)
  {
    (*(*a23 + 8))(a23, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10008AC98(uint64_t a1, char a2)
{
  v4 = *(a1 + 40);
  (*(*v4 + 16))(v4);
  v5 = sub_100085A44(a1);
  if (a2)
  {
    v5 = (sub_100EDF004(a1) > 2) & v5;
  }

  (*(*v4 + 24))(v4);
  return v5;
}

void sub_10008AD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_10008AD70(uint64_t a1, int *a2, CFDictionaryRef *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101AB6638();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLEmergencyController::onTelephonyNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101AB664C();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLEmergencyController::onTelephonyNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10008AF3C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10008AF3C(uint64_t a1, uint64_t a2, int *a3, CFDictionaryRef *a4)
{
  if (qword_1025D4660 != -1)
  {
    sub_101AB5E80();
  }

  v7 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_100072010(a3);
    sub_1000238CC(v8, __p);
    v9 = __p[23] >= 0 ? __p : *__p;
    *buf = 136446210;
    *&buf[4] = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#EmergCon,EMERGENCY:notification,%{public}s", buf, 0xCu);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AB76CC(a3);
  }

  if (*a4 || (v10 = sub_100072010(a3), CFEqual(@"kCLTelephonyServiceConnectedNotification", v10)) || (v11 = sub_100072010(a3), CFEqual(@"kCLTelephonyServiceDisconnectedNotification", v11)) || (v12 = sub_100072010(a3), CFEqual(@"kCLTelephonyServiceResetNotification", v12)) || (v13 = sub_100072010(a3), CFEqual(@"kCallStatusChangeNotification", v13)) || (v14 = sub_100072010(a3), CFEqual(@"kAtLeastOneVoiceCallInProgress", v14)) || (v15 = sub_100072010(a3), CFEqual(@"kNoVoiceCallInProgress", v15)))
  {
    sub_10008DB8C(*(a1 + 688), a3, a4);
    v16 = sub_100072010(a3);
    if (CFEqual(@"kEmergencyModeChangeNotification", v16))
    {
      if (qword_1025D4660 != -1)
      {
        sub_101AB5F70();
      }

      v17 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
      {
        *__p = 68289282;
        *&__p[8] = 2082;
        *&__p[10] = "";
        *&__p[18] = 2082;
        *&__p[20] = "CLTelephonyService_Type::kEmergencyModeChangeNotification";
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon EMERGENCY:notification, notif:%{public, location:escape_only}s}", __p, 0x1Cu);
      }

      sub_100586DA4(__p, *a4);
      *buf = *__p;
      LODWORD(v189) = *&__p[16];
      sub_100EB6A30(a1, buf, *__p);
      return;
    }

    v18 = sub_100072010(a3);
    if (CFEqual(v18, @"kRegistrationDisplayStatusNotification"))
    {
      *buf = 0u;
      v189 = 0u;
      v190 = 1065353216;
      if (sub_10116CE44(*a4, buf))
      {
        if (qword_1025D4660 != -1)
        {
          sub_101AB5F70();
        }

        v19 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v183.__r_.__value_.__l.__data_) = 0;
          __str.__r_.__value_.__r.__words[0] = &v183;
          v20 = *(sub_100916320(buf, &v183) + 48);
          *__p = 68289539;
          *&__p[8] = 2082;
          *&__p[10] = "";
          *&__p[18] = 1026;
          *&__p[20] = 0;
          *&__p[24] = 1025;
          *&__p[26] = v20;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon,kRegistrationDisplayStatusNotification, sim:%{public}d, inHomeCountry:%{private}d}", __p, 0x1Eu);
        }

        v21 = *(a1 + 688);
        LODWORD(__str.__r_.__value_.__l.__data_) = 0;
        *__p = &__str;
        v22 = sub_100916320(buf, &__str);
        sub_10128BFDC(v21, 0, *(v22 + 48));
        if (qword_1025D4660 != -1)
        {
          sub_101AB5F70();
        }

        v23 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v183.__r_.__value_.__l.__data_) = 0;
          __str.__r_.__value_.__r.__words[0] = &v183;
          v24 = *(sub_100916320(buf, &v183) + 51);
          *__p = 68289283;
          *&__p[8] = 2082;
          *&__p[10] = "";
          *&__p[18] = 1025;
          *&__p[20] = v24;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon,kRegistrationDisplayStatusNotification, isSatelliteSystem:%{private}hhd}", __p, 0x18u);
        }

        v25 = *(a1 + 688);
        LODWORD(__str.__r_.__value_.__l.__data_) = 0;
        *__p = &__str;
        v26 = sub_100916320(buf, &__str);
        sub_10128C18C(v25, 0, *(v26 + 51));
        if (*(a1 + 133) == 1)
        {
          if (qword_1025D4660 != -1)
          {
            sub_101AB5F70();
          }

          v27 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(v183.__r_.__value_.__l.__data_) = 1;
            __str.__r_.__value_.__r.__words[0] = &v183;
            v28 = *(sub_100916320(buf, &v183) + 48);
            *__p = 68289539;
            *&__p[8] = 2082;
            *&__p[10] = "";
            *&__p[18] = 1026;
            *&__p[20] = 1;
            *&__p[24] = 1025;
            *&__p[26] = v28;
            _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon,kRegistrationDisplayStatusNotification, sim:%{public}d, inHomeCountry:%{private}d}", __p, 0x1Eu);
          }

          v29 = *(a1 + 688);
          LODWORD(__str.__r_.__value_.__l.__data_) = 1;
          *__p = &__str;
          v30 = sub_100916320(buf, &__str);
          sub_10128BFDC(v29, 1, *(v30 + 48));
          if (qword_1025D4660 != -1)
          {
            sub_101AB5F70();
          }

          v31 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(v183.__r_.__value_.__l.__data_) = 1;
            __str.__r_.__value_.__r.__words[0] = &v183;
            v32 = *(sub_100916320(buf, &v183) + 51);
            *__p = 68289283;
            *&__p[8] = 2082;
            *&__p[10] = "";
            *&__p[18] = 1025;
            *&__p[20] = v32;
            _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon,kRegistrationDisplayStatusNotification, isSatelliteSystem:%{private}hhd}", __p, 0x18u);
          }

          v33 = *(a1 + 688);
          LODWORD(__str.__r_.__value_.__l.__data_) = 1;
          *__p = &__str;
          v34 = sub_100916320(buf, &__str);
          sub_10128C18C(v33, 1u, *(v34 + 51));
        }

        v35 = *(a1 + 672);
        if (v35)
        {
          v36 = *v35;
          if (*v35)
          {
            LODWORD(__str.__r_.__value_.__l.__data_) = 0;
            *__p = &__str;
            v37 = sub_100916320(buf, &__str);
            sub_100E42FE0(v36, v37 + 24);
          }
        }
      }

      else
      {
        if (qword_1025D4660 != -1)
        {
          sub_101AB5F70();
        }

        v47 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
        {
          *__p = 0;
          _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_ERROR, "#EmergCon,kRegistrationDisplayStatusNotification,error fetching InHomeCountry", __p, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101AB65F4(__p);
          LOWORD(__str.__r_.__value_.__l.__data_) = 0;
          _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4668, 16, "#EmergCon,kRegistrationDisplayStatusNotification,error fetching InHomeCountry", &__str, 2);
          v116 = v115;
          sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v115);
          if (v116 != __p)
          {
            free(v116);
          }
        }
      }

      sub_100103B14(buf);
      return;
    }

    v38 = sub_100072010(a3);
    if (CFEqual(v38, @"kInHomeCountryNotification"))
    {
      *buf = 0u;
      v189 = 0u;
      v190 = 1065353216;
      if (sub_10116CA34(*a4, buf))
      {
        if (qword_1025D4660 != -1)
        {
          sub_101AB5F70();
        }

        v39 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v183.__r_.__value_.__l.__data_) = 0;
          __str.__r_.__value_.__r.__words[0] = &v183;
          v40 = *(sub_100914B54(buf, &v183, &unk_101C66300, &__str) + 20);
          *__p = 68289539;
          *&__p[8] = 2082;
          *&__p[10] = "";
          *&__p[18] = 1026;
          *&__p[20] = 0;
          *&__p[24] = 1025;
          *&__p[26] = v40;
          _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon,kInHomeCountryNotification, sim:%{public}d, inHomeCountry:%{private}d}", __p, 0x1Eu);
        }

        v41 = *(a1 + 688);
        LODWORD(__str.__r_.__value_.__l.__data_) = 0;
        *__p = &__str;
        v42 = sub_100914B54(buf, &__str, &unk_101C66300, __p);
        sub_10128BFDC(v41, 0, *(v42 + 20));
        if (*(a1 + 133) == 1)
        {
          if (qword_1025D4660 != -1)
          {
            sub_101AB5F70();
          }

          v43 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(v183.__r_.__value_.__l.__data_) = 1;
            __str.__r_.__value_.__r.__words[0] = &v183;
            v44 = *(sub_100914B54(buf, &v183, &unk_101C66300, &__str) + 20);
            *__p = 68289539;
            *&__p[8] = 2082;
            *&__p[10] = "";
            *&__p[18] = 1026;
            *&__p[20] = 1;
            *&__p[24] = 1025;
            *&__p[26] = v44;
            _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon,kInHomeCountryNotification, sim:%{public}d, inHomeCountry:%{private}d}", __p, 0x1Eu);
          }

          v45 = *(a1 + 688);
          LODWORD(__str.__r_.__value_.__l.__data_) = 1;
          *__p = &__str;
          v46 = sub_100914B54(buf, &__str, &unk_101C66300, __p);
          sub_10128BFDC(v45, 1, *(v46 + 20));
        }

        goto LABEL_82;
      }

      if (qword_1025D4660 != -1)
      {
        sub_101AB5F70();
      }

      v57 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        *__p = 0;
        _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_ERROR, "#EmergCon,kInHomeCountryNotification,error fetching InHomeCountry", __p, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_82;
      }

      sub_101AB65F4(__p);
      LOWORD(__str.__r_.__value_.__l.__data_) = 0;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4668, 16, "#EmergCon,kInHomeCountryNotification,error fetching InHomeCountry", &__str, 2);
      v122 = v121;
      sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v121);
      if (v122 == __p)
      {
        goto LABEL_82;
      }

LABEL_236:
      free(v122);
LABEL_82:
      sub_1004906DC(buf);
      return;
    }

    v48 = sub_100072010(a3);
    if (CFEqual(v48, @"kDataStatusNotification"))
    {
      *buf = 0u;
      v189 = 0u;
      v190 = 1065353216;
      if (sub_10116D15C(*a4, buf))
      {
        if (qword_1025D4660 != -1)
        {
          sub_101AB5F70();
        }

        v49 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v183.__r_.__value_.__l.__data_) = 0;
          __str.__r_.__value_.__r.__words[0] = &v183;
          v50 = *(sub_1006E20E0(buf, &v183, &unk_101C66300, &__str) + 52);
          *__p = 68289538;
          *&__p[8] = 2082;
          *&__p[10] = "";
          *&__p[18] = 1026;
          *&__p[20] = 0;
          *&__p[24] = 1026;
          *&__p[26] = v50;
          _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#EmergCon,kDataStatusNotification, inst:%{public}d, InHomeCountry:%{public}d}", __p, 0x1Eu);
        }

        v51 = *(a1 + 688);
        LODWORD(__str.__r_.__value_.__l.__data_) = 0;
        *__p = &__str;
        v52 = sub_1006E20E0(buf, &__str, &unk_101C66300, __p);
        sub_10128BFDC(v51, 0, *(v52 + 52));
        if (*(a1 + 133) == 1)
        {
          if (qword_1025D4660 != -1)
          {
            sub_101AB5F70();
          }

          v53 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v183.__r_.__value_.__l.__data_) = 1;
            __str.__r_.__value_.__r.__words[0] = &v183;
            v54 = *(sub_1006E20E0(buf, &v183, &unk_101C66300, &__str) + 52);
            *__p = 68289538;
            *&__p[8] = 2082;
            *&__p[10] = "";
            *&__p[18] = 1026;
            *&__p[20] = 1;
            *&__p[24] = 1026;
            *&__p[26] = v54;
            _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#EmergCon,kDataStatusNotification, inst:%{public}d, InHomeCountry:%{public}d}", __p, 0x1Eu);
          }

          v55 = *(a1 + 688);
          LODWORD(__str.__r_.__value_.__l.__data_) = 1;
          *__p = &__str;
          v56 = sub_1006E20E0(buf, &__str, &unk_101C66300, __p);
          sub_10128BFDC(v55, 1, *(v56 + 52));
        }

        goto LABEL_82;
      }

      if (qword_1025D4660 != -1)
      {
        sub_101AB5F70();
      }

      v64 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        *__p = 0;
        _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_ERROR, "#EmergCon,kDataStatusNotification,error fetching InHomeCountry", __p, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_82;
      }

      sub_101AB65F4(__p);
      LOWORD(__str.__r_.__value_.__l.__data_) = 0;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4668, 16, "#EmergCon,kDataStatusNotification,error fetching InHomeCountry", &__str, 2);
      v122 = v125;
      sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v125);
      if (v122 == __p)
      {
        goto LABEL_82;
      }

      goto LABEL_236;
    }

    v58 = sub_100072010(a3);
    if (CFEqual(v58, @"kPhoneNumberStatusNotification"))
    {
      *buf = 0u;
      v189 = 0u;
      v190 = 1065353216;
      if (sub_10116E824(*a4, buf))
      {
        *__p = 0;
        if (sub_1000735F4(buf, __p))
        {
          if (qword_1025D4660 != -1)
          {
            sub_101AB5F70();
          }

          v59 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(v183.__r_.__value_.__l.__data_) = 0;
            __str.__r_.__value_.__r.__words[0] = &v183;
            v60 = sub_100916A24(buf, &v183, &unk_101C66300, &__str);
            v61 = v60 + 3;
            if (*(v60 + 47) < 0)
            {
              v61 = *v61;
            }

            *__p = 136380675;
            *&__p[4] = v61;
            _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEBUG, "#EmergCon,kPhoneNumberStatusNotification,phoneNumberOne,%{private}s", __p, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AB65F4(__p);
            v134 = qword_1025D4668;
            v181 = 0;
            v183.__r_.__value_.__r.__words[0] = &v181;
            v135 = sub_100916A24(buf, &v181, &unk_101C66300, &v183);
            v136 = v135 + 3;
            if (*(v135 + 47) < 0)
            {
              v136 = *v136;
            }

            LODWORD(__str.__r_.__value_.__l.__data_) = 136380675;
            *(__str.__r_.__value_.__r.__words + 4) = v136;
            _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v134, 2, "#EmergCon,kPhoneNumberStatusNotification,phoneNumberOne,%{private}s", &__str, 12);
            v138 = v137;
            sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v137);
            if (v138 != __p)
            {
              free(v138);
            }
          }

          v62 = *(a1 + 688);
          LODWORD(__str.__r_.__value_.__l.__data_) = 0;
          *__p = &__str;
          v63 = sub_100916A24(buf, &__str, &unk_101C66300, __p);
          if (*(v63 + 47) < 0)
          {
            sub_100007244(__dst, v63[3], v63[4]);
          }

          else
          {
            *__dst = *(v63 + 3);
            v180 = v63[5];
          }

          sub_10128D628(v62, 0, __dst);
          if (SHIBYTE(v180) < 0)
          {
            operator delete(__dst[0]);
          }
        }

        if (*(a1 + 133) == 1)
        {
          *__p = 1;
          if (sub_1000735F4(buf, __p))
          {
            if (qword_1025D4660 != -1)
            {
              sub_101AB5F70();
            }

            v85 = qword_1025D4668;
            if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(v183.__r_.__value_.__l.__data_) = 1;
              __str.__r_.__value_.__r.__words[0] = &v183;
              v86 = sub_100916A24(buf, &v183, &unk_101C66300, &__str);
              v87 = v86 + 3;
              if (*(v86 + 47) < 0)
              {
                v87 = *v87;
              }

              *__p = 136380675;
              *&__p[4] = v87;
              _os_log_impl(dword_100000000, v85, OS_LOG_TYPE_DEBUG, "#EmergCon,kPhoneNumberStatusNotification,phoneNumberTwo,%{private}s", __p, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101AB65F4(__p);
              v150 = qword_1025D4668;
              v181 = 1;
              v183.__r_.__value_.__r.__words[0] = &v181;
              v151 = sub_100916A24(buf, &v181, &unk_101C66300, &v183);
              v152 = v151 + 3;
              if (*(v151 + 47) < 0)
              {
                v152 = *v152;
              }

              LODWORD(__str.__r_.__value_.__l.__data_) = 136380675;
              *(__str.__r_.__value_.__r.__words + 4) = v152;
              LODWORD(v176) = 12;
              _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v150, 2, "#EmergCon,kPhoneNumberStatusNotification,phoneNumberTwo,%{private}s", &__str, v176);
              v154 = v153;
              sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v153);
              if (v154 != __p)
              {
                free(v154);
              }
            }

            v88 = *(a1 + 688);
            LODWORD(__str.__r_.__value_.__l.__data_) = 1;
            *__p = &__str;
            v89 = sub_100916A24(buf, &__str, &unk_101C66300, __p);
            if (*(v89 + 47) < 0)
            {
              sub_100007244(v177, v89[3], v89[4]);
            }

            else
            {
              *v177 = *(v89 + 3);
              v178 = v89[5];
            }

            sub_10128D628(v88, 1u, v177);
            if (SHIBYTE(v178) < 0)
            {
              operator delete(v177[0]);
            }
          }
        }
      }

      else
      {
        if (qword_1025D4660 != -1)
        {
          sub_101AB5F70();
        }

        v67 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
        {
          *__p = 0;
          _os_log_impl(dword_100000000, v67, OS_LOG_TYPE_ERROR, "#EmergCon,kPhoneNumberStatusNotification,error fetching phone numbers", __p, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101AB65F4(__p);
          LOWORD(__str.__r_.__value_.__l.__data_) = 0;
          _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4668, 16, "#EmergCon,kPhoneNumberStatusNotification,error fetching phone numbers", &__str, 2);
          v69 = v68;
          sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v68);
          if (v69 != __p)
          {
            free(v69);
          }
        }
      }

      sub_100103B14(buf);
    }

    else
    {
      v65 = sub_100072010(a3);
      if (CFEqual(v65, @"kAltAccountConfiguredNotification"))
      {
        buf[0] = 0;
        if (sub_10116E980(*a4, buf))
        {
          if (qword_1025D4660 != -1)
          {
            sub_101AB5F70();
          }

          v66 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
          {
            *__p = 67174657;
            *&__p[4] = buf[0];
            _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_DEBUG, "#EmergCon,kAltAccountConfiguredNotification,isAltAccountConfigured,%{private}d", __p, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AB78F4();
          }

          sub_10128E834(*(a1 + 688), buf[0]);
        }

        else
        {
          if (qword_1025D4660 != -1)
          {
            sub_101AB5F70();
          }

          v84 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
          {
            *__p = 0;
            _os_log_impl(dword_100000000, v84, OS_LOG_TYPE_ERROR, "#EmergCon,kAltAccountConfiguredNotification,error fetching alt account configuration", __p, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101AB7808();
          }
        }
      }

      else
      {
        v70 = sub_100072010(a3);
        if (CFEqual(v70, @"kSimStatusChangeNotification"))
        {
          if (qword_1025D4660 != -1)
          {
            sub_101AB5F70();
          }

          v71 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
          {
            *__p = 68289282;
            *&__p[8] = 2082;
            *&__p[10] = "";
            *&__p[18] = 2082;
            *&__p[20] = "CLTelephonyService_Type::kSimStatusChangeNotification";
            _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon EMERGENCY:notification, notif:%{public, location:escape_only}s}", __p, 0x1Cu);
          }

          *buf = 0u;
          v189 = 0u;
          v190 = 1065353216;
          if (sub_10116D8D4(*a4, buf))
          {
            memset(&__str, 0, sizeof(__str));
            memset(&v183, 0, sizeof(v183));
            v181 = 0;
            *__p = &v181;
            v72 = sub_1009166D0(buf, &v181, &unk_101C66300, __p);
            std::string::operator=(&__str, v72 + 1);
            v181 = 0;
            *__p = &v181;
            v73 = sub_1009166D0(buf, &v181, &unk_101C66300, __p);
            std::string::operator=(&v183, v73 + 2);
            if (qword_1025D4660 != -1)
            {
              sub_101AB5F70();
            }

            v74 = qword_1025D4668;
            if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
            {
              p_str = &__str;
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_str = __str.__r_.__value_.__r.__words[0];
              }

              v76 = &v183;
              if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v76 = v183.__r_.__value_.__r.__words[0];
              }

              *__p = 68289795;
              *&__p[8] = 2082;
              *&__p[10] = "";
              *&__p[18] = 1026;
              *&__p[20] = 0;
              *&__p[24] = 2081;
              *&__p[26] = p_str;
              *&__p[34] = 2081;
              v186 = v76;
              _os_log_impl(dword_100000000, v74, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon,kSimStatusChangeNotification, sim:%{public}d, imsi:%{private, location:escape_only}s, imei:%{private, location:escape_only}s}", __p, 0x2Cu);
            }

            sub_10128CA68(*(a1 + 688), 0, &__str, &v183);
            v181 = 0;
            *__p = &v181;
            v77 = sub_100916A24((a1 + 312), &v181, &unk_101C66300, __p);
            std::string::operator=(v77 + 1, &__str);
            if (*(a1 + 133) == 1)
            {
              v181 = 1;
              *__p = &v181;
              v78 = sub_1009166D0(buf, &v181, &unk_101C66300, __p);
              std::string::operator=(&__str, v78 + 1);
              v181 = 1;
              *__p = &v181;
              v79 = sub_1009166D0(buf, &v181, &unk_101C66300, __p);
              std::string::operator=(&v183, v79 + 2);
              if (qword_1025D4660 != -1)
              {
                sub_101AB5F70();
              }

              v80 = qword_1025D4668;
              if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
              {
                v81 = &__str;
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v81 = __str.__r_.__value_.__r.__words[0];
                }

                v82 = &v183;
                if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v82 = v183.__r_.__value_.__r.__words[0];
                }

                *__p = 68289795;
                *&__p[8] = 2082;
                *&__p[10] = "";
                *&__p[18] = 1026;
                *&__p[20] = 1;
                *&__p[24] = 2081;
                *&__p[26] = v81;
                *&__p[34] = 2081;
                v186 = v82;
                _os_log_impl(dword_100000000, v80, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon,kSimStatusChangeNotification, sim:%{public}d, imsi:%{private, location:escape_only}s, imei:%{private, location:escape_only}s}", __p, 0x2Cu);
              }

              sub_10128CA68(*(a1 + 688), 1, &__str, &v183);
              v181 = 1;
              *__p = &v181;
              v83 = sub_100916A24((a1 + 312), &v181, &unk_101C66300, __p);
              std::string::operator=(v83 + 1, &__str);
            }

            if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v183.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            if (qword_1025D4660 != -1)
            {
              sub_101AB5F70();
            }

            v96 = qword_1025D4668;
            if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
            {
              *__p = 0;
              _os_log_impl(dword_100000000, v96, OS_LOG_TYPE_ERROR, "#EmergCon,kSimStatusChangeNotification,error fetching imsi and imei", __p, 2u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_101AB65F4(__p);
              LOWORD(__str.__r_.__value_.__l.__data_) = 0;
              _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4668, 16, "#EmergCon,kSimStatusChangeNotification,error fetching imsi and imei", &__str, 2);
              v157 = v156;
              sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v156);
              if (v157 != __p)
              {
                free(v157);
              }
            }
          }

          sub_1009165FC(buf);
        }

        else
        {
          v93 = sub_100072010(a3);
          if (CFEqual(v93, @"kCellInfoNotification"))
          {
            *buf = 0u;
            v189 = 0u;
            v190 = 1065353216;
            if (sub_100065478(*a4, buf))
            {
              sub_10008DB94(a1, 0, buf);
              if (sub_1000649A0(v94, v95))
              {
                sub_10008DB94(a1, 1, buf);
              }
            }

            else
            {
              if (qword_1025D4660 != -1)
              {
                sub_101AB5F70();
              }

              v104 = qword_1025D4668;
              if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
              {
                *__p = 0;
                _os_log_impl(dword_100000000, v104, OS_LOG_TYPE_ERROR, "#EmergCon,#ci,kCellInfoNotification,error fetching cell info", __p, 2u);
              }

              if (sub_10000A100(121, 0))
              {
                sub_101AB65F4(__p);
                LOWORD(__str.__r_.__value_.__l.__data_) = 0;
                _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4668, 16, "#EmergCon,#ci,kCellInfoNotification,error fetching cell info", &__str, 2);
                v163 = v162;
                sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v162);
                if (v163 != __p)
                {
                  free(v163);
                }
              }
            }

            sub_100075100(buf);
          }

          else
          {
            v97 = sub_100072010(a3);
            if (CFEqual(v97, @"kSmsSentNotification"))
            {
              *buf = 0;
              v182 = 0;
              LODWORD(__str.__r_.__value_.__l.__data_) = 0;
              LODWORD(v183.__r_.__value_.__l.__data_) = -1;
              v181 = -1;
              if (sub_10116E478(*a4, buf, &v182, &__str, &v183, &v181))
              {
                if (qword_1025D4660 != -1)
                {
                  sub_101AB5F70();
                }

                v98 = qword_1025D4668;
                if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
                {
                  v99 = [*buf slotID];
                  *__p = 68290306;
                  *&__p[8] = 2082;
                  *&__p[10] = "";
                  *&__p[18] = 1026;
                  *&__p[20] = v99;
                  *&__p[24] = 1026;
                  *&__p[26] = v182;
                  *&__p[30] = 1026;
                  *&__p[32] = __str.__r_.__value_.__l.__data_;
                  LOWORD(v186) = 1026;
                  *(&v186 + 2) = v183.__r_.__value_.__l.__data_;
                  HIWORD(v186) = 1026;
                  v187 = v181;
                  _os_log_impl(dword_100000000, v98, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon,kSmsSentNotification, inst:%{public}d, success:%{public}hhd, messageID:%{public}d, sendError:%{public}d, modemError:%{public}d}", __p, 0x30u);
                }

                v100 = *(a1 + 688);
                v101 = [*buf slotID];
                v103 = sub_1000646B0(v101, v102);
                sub_10128C7D0(v100, v103, v182, LODWORD(__str.__r_.__value_.__l.__data_), LODWORD(v183.__r_.__value_.__l.__data_), v181);
              }

              else
              {
                if (qword_1025D4660 != -1)
                {
                  sub_101AB5F70();
                }

                v114 = qword_1025D4668;
                if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
                {
                  *__p = 0;
                  _os_log_impl(dword_100000000, v114, OS_LOG_TYPE_ERROR, "#EmergCon,kSmsSentNotification,error fetching SMS info", __p, 2u);
                }

                if (sub_10000A100(121, 0))
                {
                  sub_101AB79F0();
                }
              }
            }

            else
            {
              v105 = sub_100072010(a3);
              if (CFEqual(v105, @"kSubscriberMccAndMncNotification"))
              {
                *buf = 0u;
                v189 = 0u;
                v190 = 1065353216;
                if (sub_10009404C(*a4, buf))
                {
                  LODWORD(__str.__r_.__value_.__l.__data_) = 0;
                  *__p = &__str;
                  v106 = *(sub_10009422C(buf, &__str, &unk_101C66300, __p) + 5);
                  LODWORD(__str.__r_.__value_.__l.__data_) = 0;
                  *__p = &__str;
                  v107 = *(sub_10009422C(buf, &__str, &unk_101C66300, __p) + 6);
                  LODWORD(__str.__r_.__value_.__l.__data_) = 0;
                  *__p = &__str;
                  v108 = *(sub_10009422C(buf, &__str, &unk_101C66300, __p) + 28);
                  if (qword_1025D4660 != -1)
                  {
                    sub_101AB5F70();
                  }

                  v109 = qword_1025D4668;
                  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
                  {
                    *__p = 68290050;
                    *&__p[8] = 2082;
                    *&__p[10] = "";
                    *&__p[18] = 1026;
                    *&__p[20] = 0;
                    *&__p[24] = 1026;
                    *&__p[26] = v106;
                    *&__p[30] = 1026;
                    *&__p[32] = v107;
                    LOWORD(v186) = 1026;
                    *(&v186 + 2) = v108;
                    _os_log_impl(dword_100000000, v109, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon,kSubscriberMccAndMncNotification, sim:%{public}d, mcc:%{public}d, mnc:%{public}d, is3DigitMnc:%{public}hhd}", __p, 0x2Au);
                  }

                  sub_10128CC30(*(a1 + 688), 0, v106, v107);
                  LODWORD(__str.__r_.__value_.__l.__data_) = 0;
                  *__p = &__str;
                  *(sub_10006BEC4((a1 + 352), &__str, &unk_101C66300, __p) + 5) = v106;
                  LODWORD(__str.__r_.__value_.__l.__data_) = 0;
                  *__p = &__str;
                  *(sub_10006BEC4((a1 + 392), &__str, &unk_101C66300, __p) + 5) = v107;
                  if (*(a1 + 133) == 1)
                  {
                    LODWORD(__str.__r_.__value_.__l.__data_) = 1;
                    *__p = &__str;
                    v110 = *(sub_10009422C(buf, &__str, &unk_101C66300, __p) + 5);
                    LODWORD(__str.__r_.__value_.__l.__data_) = 1;
                    *__p = &__str;
                    v111 = *(sub_10009422C(buf, &__str, &unk_101C66300, __p) + 6);
                    LODWORD(__str.__r_.__value_.__l.__data_) = 1;
                    *__p = &__str;
                    v112 = *(sub_10009422C(buf, &__str, &unk_101C66300, __p) + 28);
                    if (qword_1025D4660 != -1)
                    {
                      sub_101AB5F70();
                    }

                    v113 = qword_1025D4668;
                    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
                    {
                      *__p = 68290050;
                      *&__p[8] = 2082;
                      *&__p[10] = "";
                      *&__p[18] = 1026;
                      *&__p[20] = 1;
                      *&__p[24] = 1026;
                      *&__p[26] = v110;
                      *&__p[30] = 1026;
                      *&__p[32] = v111;
                      LOWORD(v186) = 1026;
                      *(&v186 + 2) = v112;
                      _os_log_impl(dword_100000000, v113, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon,kSubscriberMccAndMncNotification, sim:%{public}d, mcc:%{public}d, mnc:%{public}d, is3DigitMnc:%{public}hhd}", __p, 0x2Au);
                    }

                    sub_10128CC30(*(a1 + 688), 1, v110, v111);
                    LODWORD(__str.__r_.__value_.__l.__data_) = 1;
                    *__p = &__str;
                    *(sub_10006BEC4((a1 + 352), &__str, &unk_101C66300, __p) + 5) = v110;
                    LODWORD(__str.__r_.__value_.__l.__data_) = 1;
                    *__p = &__str;
                    *(sub_10006BEC4((a1 + 392), &__str, &unk_101C66300, __p) + 5) = v111;
                  }
                }

                else
                {
                  if (qword_1025D4660 != -1)
                  {
                    sub_101AB5F70();
                  }

                  v120 = qword_1025D4668;
                  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
                  {
                    *__p = 0;
                    _os_log_impl(dword_100000000, v120, OS_LOG_TYPE_ERROR, "#EmergCon,kSubscriberMccAndMncNotification,error fetching MCC and MNC", __p, 2u);
                  }

                  if (sub_10000A100(121, 0))
                  {
                    sub_101AB65F4(__p);
                    LOWORD(__str.__r_.__value_.__l.__data_) = 0;
                    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4668, 16, "#EmergCon,kSubscriberMccAndMncNotification,error fetching MCC and MNC", &__str, 2);
                    v165 = v164;
                    sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v164);
                    if (v165 != __p)
                    {
                      free(v165);
                    }
                  }
                }

                sub_1004906DC(buf);
              }

              else
              {
                v117 = sub_100072010(a3);
                if (CFEqual(@"kCLTelephonyServiceDisconnectedNotification", v117))
                {
                  if (qword_1025D4660 != -1)
                  {
                    sub_101AB5F70();
                  }

                  v118 = qword_1025D4668;
                  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
                  {
                    *__p = 68289282;
                    *&__p[8] = 2082;
                    *&__p[10] = "";
                    *&__p[18] = 2082;
                    *&__p[20] = "CLTelephonyService_Type::kDisconnectedNotification";
                    _os_log_impl(dword_100000000, v118, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#EmergCon EMERGENCY:notification, notif:%{public, location:escape_only}s}", __p, 0x1Cu);
                  }

                  *(a1 + 48) = 0;
                  sub_100EB6F4C(a1, 0, v119);
                  *(a1 + 92) = 0;
                  *(a1 + 96) = 0x400000000;
                  *(a1 + 104) = 256;
                  *(a1 + 106) = 0;
                  *(a1 + 108) = 255;
                  sub_100EB52FC(a1);
                }

                else
                {
                  v123 = sub_100072010(a3);
                  if (CFEqual(@"kLinkQualityNotification", v123))
                  {
                    v124 = *(a1 + 672);
                    if (v124 && *v124)
                    {
                      sub_100E43360(*v124, *a4);
                    }
                  }

                  else
                  {
                    v126 = sub_100072010(a3);
                    if (CFEqual(@"kCLCellularTransmitStateNotification", v126))
                    {
                      if (qword_1025D4660 != -1)
                      {
                        sub_101AB5F70();
                      }

                      v127 = qword_1025D4668;
                      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
                      {
                        *__p = 0;
                        _os_log_impl(dword_100000000, v127, OS_LOG_TYPE_DEBUG, "#EmergencyBiome, Biome RRC notification", __p, 2u);
                      }

                      if (sub_10000A100(121, 2))
                      {
                        sub_101AB7ADC();
                      }

                      memset(__p, 0, 24);
                      v128 = sub_100005548(buf, *a4);
                      __str.__r_.__value_.__s.__data_[0] = 0;
                      v129 = *(a1 + 672);
                      if (v129 && *v129)
                      {
                        if (sub_10001CBC0(v128, @"kCLCellularTransmitStateNotification", &__str))
                        {
                          v130 = **(a1 + 672);
                          if (__str.__r_.__value_.__s.__data_[0] == 1)
                          {
                            v131 = v130 + 4;
                          }

                          else
                          {
                            v131 = v130 + 3;
                          }
                        }

                        else
                        {
                          v131 = (**(a1 + 672) + 48);
                        }

                        std::string::operator=(__p, v131);
                        sub_100E4357C(**(a1 + 672), __p);
                      }

                      sub_100005DA4();
                      if ((__p[23] & 0x80000000) != 0)
                      {
                        operator delete(*__p);
                      }
                    }

                    else
                    {
                      v132 = sub_100072010(a3);
                      if (CFEqual(@"kStewieSupportNotification", v132))
                      {
                        buf[0] = 0;
                        if (sub_10116FB9C(*a4, buf))
                        {
                          if (qword_1025D4660 != -1)
                          {
                            sub_101AB5F70();
                          }

                          v133 = qword_1025D4668;
                          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
                          {
                            *__p = 67240192;
                            *&__p[4] = buf[0];
                            _os_log_impl(dword_100000000, v133, OS_LOG_TYPE_DEBUG, "#EmergCon,kStewieSupportNotification,supported,%{public}d", __p, 8u);
                          }

                          if (sub_10000A100(121, 2))
                          {
                            sub_101AB7CAC();
                          }

                          sub_10128E840(*(a1 + 688), buf[0]);
                        }

                        else
                        {
                          if (qword_1025D4660 != -1)
                          {
                            sub_101AB5F70();
                          }

                          v155 = qword_1025D4668;
                          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
                          {
                            *__p = 0;
                            _os_log_impl(dword_100000000, v155, OS_LOG_TYPE_ERROR, "#EmergCon,kStewieSupportNotification,error fetching Stewie support", __p, 2u);
                          }

                          if (sub_10000A100(121, 0))
                          {
                            sub_101AB7BC0();
                          }
                        }
                      }

                      else
                      {
                        v139 = sub_100072010(a3);
                        if (CFEqual(v139, @"kImsRegStatusNotification"))
                        {
                          *buf = 0u;
                          v189 = 0u;
                          v190 = 1065353216;
                          if (sub_10116FCB4(*a4, buf))
                          {
                            if (qword_1025D4660 != -1)
                            {
                              sub_101AB5F70();
                            }

                            v140 = qword_1025D4668;
                            if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
                            {
                              LODWORD(v183.__r_.__value_.__l.__data_) = 0;
                              *__p = &v183;
                              v141 = *(sub_100916CF0(buf, &v183, &unk_101C66300, __p) + 20);
                              LODWORD(__str.__r_.__value_.__l.__data_) = 67240192;
                              HIDWORD(__str.__r_.__value_.__r.__words[0]) = v141;
                              _os_log_impl(dword_100000000, v140, OS_LOG_TYPE_DEBUG, "#EmergCon, Received kImsRegStatusNotification with sms reg status %{public}d", &__str, 8u);
                            }

                            if (sub_10000A100(121, 2))
                            {
                              sub_101AB65F4(__p);
                              v168 = qword_1025D4668;
                              v181 = 0;
                              __str.__r_.__value_.__r.__words[0] = &v181;
                              v169 = *(sub_100916CF0(buf, &v181, &unk_101C66300, &__str) + 20);
                              LODWORD(v183.__r_.__value_.__l.__data_) = 67240192;
                              HIDWORD(v183.__r_.__value_.__r.__words[0]) = v169;
                              _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v168, 2, "#EmergCon, Received kImsRegStatusNotification with sms reg status %{public}d", &v183, 8);
                              v171 = v170;
                              sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v170);
                              if (v171 != __p)
                              {
                                free(v171);
                              }
                            }

                            v142 = *(a1 + 688);
                            LODWORD(__str.__r_.__value_.__l.__data_) = 0;
                            *__p = &__str;
                            v143 = sub_100916CF0(buf, &__str, &unk_101C66300, __p);
                            sub_10128EAB4(v142, 0, v143 + 20);
                            if (sub_1000649A0(v144, v145))
                            {
                              if (qword_1025D4660 != -1)
                              {
                                sub_101AB5F70();
                              }

                              v146 = qword_1025D4668;
                              if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
                              {
                                LODWORD(v183.__r_.__value_.__l.__data_) = 1;
                                *__p = &v183;
                                v147 = *(sub_100916CF0(buf, &v183, &unk_101C66300, __p) + 20);
                                LODWORD(__str.__r_.__value_.__l.__data_) = 67240192;
                                HIDWORD(__str.__r_.__value_.__r.__words[0]) = v147;
                                _os_log_impl(dword_100000000, v146, OS_LOG_TYPE_DEBUG, "#EmergCon, Received kImsRegStatusNotification with sms reg status %{public}d", &__str, 8u);
                              }

                              if (sub_10000A100(121, 2))
                              {
                                sub_101AB65F4(__p);
                                v172 = qword_1025D4668;
                                v181 = 1;
                                __str.__r_.__value_.__r.__words[0] = &v181;
                                v173 = *(sub_100916CF0(buf, &v181, &unk_101C66300, &__str) + 20);
                                LODWORD(v183.__r_.__value_.__l.__data_) = 67240192;
                                HIDWORD(v183.__r_.__value_.__r.__words[0]) = v173;
                                LODWORD(v176) = 8;
                                _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v172, 2, "#EmergCon, Received kImsRegStatusNotification with sms reg status %{public}d", &v183, v176);
                                v175 = v174;
                                sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v174);
                                if (v175 != __p)
                                {
                                  free(v175);
                                }
                              }

                              v148 = *(a1 + 688);
                              LODWORD(__str.__r_.__value_.__l.__data_) = 1;
                              *__p = &__str;
                              v149 = sub_100916CF0(buf, &__str, &unk_101C66300, __p);
                              sub_10128EAB4(v148, 1u, v149 + 20);
                            }
                          }

                          else
                          {
                            if (qword_1025D4660 != -1)
                            {
                              sub_101AB5F70();
                            }

                            v161 = qword_1025D4668;
                            if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
                            {
                              *__p = 0;
                              _os_log_impl(dword_100000000, v161, OS_LOG_TYPE_ERROR, "#EmergCon,#ci,kImsRegStatusNotification,error fetching cell info", __p, 2u);
                            }

                            if (sub_10000A100(121, 0))
                            {
                              sub_101AB65F4(__p);
                              LOWORD(__str.__r_.__value_.__l.__data_) = 0;
                              _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4668, 16, "#EmergCon,#ci,kImsRegStatusNotification,error fetching cell info", &__str, 2);
                              v167 = v166;
                              sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyController::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v166);
                              if (v167 != __p)
                              {
                                free(v167);
                              }
                            }
                          }

                          sub_1004906DC(buf);
                        }

                        else
                        {
                          v158 = sub_100072010(a3);
                          if (CFEqual(v158, @"kVoiceLinkQualityNotification"))
                          {
                            if (qword_1025D4660 != -1)
                            {
                              sub_101AB5F70();
                            }

                            v159 = qword_1025D4668;
                            if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
                            {
                              v160 = *a4;
                              *__p = 138543362;
                              *&__p[4] = v160;
                              _os_log_impl(dword_100000000, v159, OS_LOG_TYPE_DEBUG, "#EmergCon, Received kVoiceLinkQualityNotification with vlqm %{public}@", __p, 0xCu);
                            }

                            if (sub_10000A100(121, 2))
                            {
                              sub_101AB7DA8();
                            }

                            if (sub_101170084(*a4, (a1 + 472)))
                            {
                              sub_10128E5C0(*(a1 + 688), a1 + 472);
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    if (qword_1025D4660 != -1)
    {
      sub_101AB5F70();
    }

    v90 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
    {
      v91 = sub_100072010(a3);
      sub_1000238CC(v91, __p);
      v92 = __p[23] >= 0 ? __p : *__p;
      *buf = 136446210;
      *&buf[4] = v92;
      _os_log_impl(dword_100000000, v90, OS_LOG_TYPE_ERROR, "#EmergCon,dropping %{public}s,empty data", buf, 0xCu);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AB7E9C(a3);
    }
  }
}

void sub_10008DB94(uint64_t a1, int a2, float *a3)
{
  v28 = a2;
  v26 = 0;
  v25 = 0;
  v27 = 0;
  LOBYTE(v18) = 0;
  v24 = 0;
  *v29 = &v28;
  if (!sub_100065670(a3, &v28, &unk_101C66300, v29)[3])
  {
    if (qword_1025D4660 != -1)
    {
      sub_101AB5F70();
    }

    v11 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = v28;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#EmergCon,#ci,kCellInfoNotification,received nil CellInfo from CT for sim %d", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_32;
    }

    sub_101AB65F4(buf);
    *v29 = 67109120;
    *&v29[4] = v28;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4668, 2, "#EmergCon,#ci,kCellInfoNotification,received nil CellInfo from CT for sim %d", v29);
    v13 = v12;
    sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyController::processCellInfoNotification(SimInstance, std::unordered_map<SimInstance, CLCTCellInfo> &)", "%s\n", v12);
LABEL_48:
    if (v13 != buf)
    {
      free(v13);
    }

    goto LABEL_32;
  }

  sub_1000658D0(v28, a3, &v25);
  sub_100065934(&v25, buf);
  sub_1000659B0(&v18, buf);
  if (v39 == 1)
  {
    if (v38 < 0)
    {
      operator delete(__p);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }
  }

  if ((v24 & 1) == 0)
  {
    if (qword_1025D4660 != -1)
    {
      sub_101AB5F70();
    }

    v14 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#EmergCon,#ci,kCellInfoNotification,serving cell missing", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_32;
    }

    sub_101AB65F4(buf);
    *v29 = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4668, 2, "#EmergCon,#ci,kCellInfoNotification,serving cell missing", v29, 2, v18);
    v13 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyController::processCellInfoNotification(SimInstance, std::unordered_map<SimInstance, CLCTCellInfo> &)", "%s\n", v17);
    goto LABEL_48;
  }

  if (qword_1025D4660 != -1)
  {
    sub_101AB5F70();
  }

  v5 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = 0x66FD0EB66FD0EB67 * ((v26 - v25) >> 3);
    v33 = 1024;
    v34 = v28;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#EmergCon,#ci,kCellInfoNotification,cellcount,%lu,sim %d", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AB65F4(buf);
    *v29 = 134218240;
    *&v29[4] = 0x66FD0EB66FD0EB67 * ((v26 - v25) >> 3);
    v30 = 1024;
    v31 = v28;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4668, 2, "#EmergCon,#ci,kCellInfoNotification,cellcount,%lu,sim %d", v29, 18);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyController::processCellInfoNotification(SimInstance, std::unordered_map<SimInstance, CLCTCellInfo> &)", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  sub_100089870(*(a1 + 688), v28, &v18);
  v6 = v19;
  *v29 = &v28;
  *(sub_10006BEC4((a1 + 272), &v28, &unk_101C66300, v29) + 5) = v6;
  v8 = *(a1 + 672);
  if (v8 && *v8)
  {
    sub_10008F3E8(*v8, &v18);
  }

  if (v19 < 3)
  {
    goto LABEL_19;
  }

  if (v19 == 9)
  {
    v9 = *sub_1006CCAA0(&v18, v7);
    *v29 = &v28;
    v10 = sub_10006BEC4((a1 + 432), &v28, &unk_101C66300, v29);
    goto LABEL_20;
  }

  if (v19 == 7)
  {
LABEL_19:
    v9 = *sub_1006CBCE4(&v18);
    *v29 = &v28;
    v10 = sub_10006BEC4((a1 + 432), &v28, &unk_101C66300, v29);
LABEL_20:
    *(v10 + 5) = v9;
    goto LABEL_32;
  }

  if (v19 - 3 > 2)
  {
    if (v19 == 10)
    {
      v9 = *sub_100681E80(&v18, v7);
      *v29 = &v28;
      v10 = sub_10006BEC4((a1 + 432), &v28, &unk_101C66300, v29);
      goto LABEL_20;
    }

    if (v19 == 6)
    {
      v9 = *sub_10007513C(&v18, v7);
      *v29 = &v28;
      v10 = sub_10006BEC4((a1 + 432), &v28, &unk_101C66300, v29);
      goto LABEL_20;
    }
  }

  else
  {
    *v29 = &v28;
    *(sub_10006BEC4((a1 + 432), &v28, &unk_101C66300, v29) + 5) = -1;
  }

LABEL_32:
  if (v24 == 1)
  {
    if (v23 < 0)
    {
      operator delete(v22);
    }

    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }
  }

  *buf = &v25;
  sub_100072124(buf);
}

void sub_10008E1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000827E4(va);
  STACK[0x310] = &STACK[0x2D0];
  sub_100072124(&STACK[0x310]);
  _Unwind_Resume(a1);
}

uint64_t *sub_10008E220(void *a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_10008E4C4(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 1832;
  v3 = 1;
  v4 = "AML";
  do
  {
    v5 = v3;
    v6 = *(v2 + 8 * v1);
    if (v6)
    {
      (*(*v6 + 136))(v6);
    }

    else
    {
      if (qword_1025D4660 != -1)
      {
        sub_101B924F8();
      }

      v7 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        sub_10000EC00(__p, v4);
        v8 = v19 >= 0 ? __p : __p[0];
        *buf = 136446210;
        *&buf[4] = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#Actor,handleRatChange,pointer was null for %{public}s", buf, 0xCu);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (sub_10000A100(121, 0))
      {
        bzero(__p, 0x65CuLL);
        if (qword_1025D4660 != -1)
        {
          sub_101B924F8();
        }

        v9 = qword_1025D4668;
        sub_10000EC00(buf, v4);
        v10 = buf;
        if (v15 < 0)
        {
          v10 = *buf;
        }

        v16 = 136446210;
        v17 = v10;
        LODWORD(v13) = 12;
        _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v9, 16, "#Actor,handleRatChange,pointer was null for %{public}s", &v16, v13);
        v12 = v11;
        if (v15 < 0)
        {
          operator delete(*buf);
        }

        sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyActor::handleRatChange()", "%s\n", v12);
        if (v12 != __p)
        {
          free(v12);
        }
      }
    }

    v3 = 0;
    v4 = "EED2";
    v1 = 1;
  }

  while ((v5 & 1) != 0);
}

void *sub_10008E72C(void *result)
{
  v1 = result[358];
  if (v1)
  {
    v2 = result;
    v3 = *(result + 364);
    v4 = *sub_100A0AE34((result + 4), v3);
    v5 = sub_100C3DA80((v2 + 14));
    v6 = *(sub_100A0AE34((v2 + 4), *(v2 + 364)) + 160);

    return [v1 handleUpdatesToSim:v3 Rat:v4 WifiEmergency:v5 bandInfo:v6];
  }

  return result;
}

void *sub_10008E7C8(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *sub_1000897E8(a1, &v6, a2);
  if (!result)
  {
    sub_100FAA598();
  }

  return result;
}

void sub_10008E868(uint64_t a1, __CFString *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  [*(v6 + 104) silo];
  if (a3)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#Warning,#ctcl,#cterror,queryServingMccAndMnc,query for serving MCC failed", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101974A04();
    }

LABEL_25:

    return;
  }

  if (!a2 || ![(__CFString *)a2 length])
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Warning,#ctcl,#cterror,queryServingMccAndMnc,query for serving MCC returned nil", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101974BBC();
    }

    goto LABEL_25;
  }

  if ([(__CFString *)a2 length]>= 4)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning,#ctcl,queryServingMccAndMnc,MCC is too many digits,replacing with -1", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101974AE0();
    }

    a2 = @"-1";
  }

  v9 = a2;
  [*(v6 + 16) copyMobileNetworkCode:? completion:?];
}

uint64_t sub_10008EA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = a3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,getSignalStrengthMeasurements:context:%@,err:%@", &v9, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101976CC0();
    }

    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);

    return v8();
  }
}

void sub_10008EBE8(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return;
  }

  v3 = *(a1 + 32);
  v31[0] = 0;
  v37 = 0;
  v38 = 0;
  *buf = &v38;
  if (*(sub_100084258((v3 + 2720), &v38, &unk_101C66300, buf) + 720) == 1)
  {
    v38 = 0;
    *buf = &v38;
    v4 = sub_100084258((v3 + 2720), &v38, &unk_101C66300, buf);
    v5 = sub_1000836F0(v31, (v4 + 3)).n128_u64[0];
  }

  else
  {
    v38 = 1;
    *buf = &v38;
    if (*(sub_100084258((v3 + 2720), &v38, &unk_101C66300, buf) + 720) != 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1016C8BF0();
      }

      v19 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "#warning,#gnssawd,fetchSignalStrengthMeasurementsWithReply Couldn't get current serving cell", buf, 2u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_42;
      }

      sub_1016C8DD8(buf);
      LOWORD(v38) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "#warning,#gnssawd,fetchSignalStrengthMeasurementsWithReply Couldn't get current serving cell", &v38, 2);
      v18 = v20;
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::fetchSignalStrengthMeasurementsWithReply()_block_invoke", "%s\n", v20);
LABEL_30:
      if (v18 != buf)
      {
        free(v18);
      }

      goto LABEL_42;
    }

    v38 = 1;
    *buf = &v38;
    v6 = sub_100084258((v3 + 2720), &v38, &unk_101C66300, buf);
    v5 = sub_1000836F0(v31, (v6 + 3)).n128_u64[0];
  }

  if (v37 != 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v16 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "#warning,#gnssawd,Cellular-AWD,fetchSignalStrengthMeasurementsWithReply Unhandled serving cell", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_42;
    }

    sub_1016C8DD8(buf);
    LOWORD(v38) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "#warning,#gnssawd,Cellular-AWD,fetchSignalStrengthMeasurementsWithReply Unhandled serving cell", &v38, 2);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::fetchSignalStrengthMeasurementsWithReply()_block_invoke", "%s\n", v17);
    goto LABEL_30;
  }

  if (v32 > 0xA)
  {
LABEL_48:
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v26 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_INFO, "#warning,#gnssawd,Cellular-AWD,Unhandled serving cell to obtain cellular signal strength", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_42;
    }

    sub_1016C8DD8(buf);
    LOWORD(v38) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "#warning,#gnssawd,Cellular-AWD,Unhandled serving cell to obtain cellular signal strength", &v38, 2);
    v18 = v27;
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::fetchSignalStrengthMeasurementsWithReply()_block_invoke", "%s\n", v27);
    goto LABEL_30;
  }

  if (((1 << v32) & 0x87) == 0)
  {
    if (((1 << v32) & 0x440) != 0)
    {
      *(v3 + 2640) = [objc_msgSend(a2 rsrp];
      *(v3 + 2636) = [objc_msgSend(a2 "snr")];
      sub_10001CAF4(buf);
      LOBYTE(v38) = 0;
      v21 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", &v38, 0xFFFFFFFFLL);
      v22 = (v21 & v38);
      if (v43)
      {
        sub_100008080(v43);
      }

      if (!v22)
      {
        goto LABEL_41;
      }

      if (qword_1025D4650 != -1)
      {
        sub_1016C8BF0();
      }

      v23 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v24 = *(v3 + 2640);
        v25 = *(v3 + 2636);
        *buf = 67109376;
        *&buf[4] = v24;
        LOWORD(v43) = 1024;
        *(&v43 + 2) = v25;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,5G-LTE,RSRP,%d,SNR,%d", buf, 0xEu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_41;
      }

      sub_1016C8DD8(buf);
      v28 = *(v3 + 2640);
      v29 = *(v3 + 2636);
      v38 = 67109376;
      v39 = v28;
      v40 = 1024;
      v41 = v29;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#gnssawd,Cellular-AWD,5G-LTE,RSRP,%d,SNR,%d", &v38, 14);
      v15 = v30;
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::fetchSignalStrengthMeasurementsWithReply()_block_invoke", "%s\n", v30);
      goto LABEL_55;
    }

    goto LABEL_48;
  }

  *(v3 + 2640) = [objc_msgSend(a2 rscp];
  *(v3 + 2636) = [objc_msgSend(a2 "ecn0")];
  sub_10001CAF4(buf);
  LOBYTE(v38) = 0;
  v7 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", &v38, 0xFFFFFFFFLL);
  v8 = (v7 & v38);
  if (v43)
  {
    sub_100008080(v43);
  }

  if (!v8)
  {
    goto LABEL_41;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1016C8BF0();
  }

  v9 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(v3 + 2640);
    v11 = *(v3 + 2636);
    *buf = 67109376;
    *&buf[4] = v10;
    LOWORD(v43) = 1024;
    *(&v43 + 2) = v11;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,GSM,RSRP,%d,SNR,%d", buf, 0xEu);
  }

  if (!sub_10000A100(121, 2))
  {
    goto LABEL_41;
  }

  sub_1016C8DD8(buf);
  v12 = *(v3 + 2640);
  v13 = *(v3 + 2636);
  v38 = 67109376;
  v39 = v12;
  v40 = 1024;
  v41 = v13;
  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#gnssawd,Cellular-AWD,GSM,RSRP,%d,SNR,%d", &v38, 14);
  v15 = v14;
  sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::fetchSignalStrengthMeasurementsWithReply()_block_invoke", "%s\n", v14);
LABEL_55:
  if (v15 != buf)
  {
    free(v15);
  }

LABEL_41:
  *(v3 + 2468) = *(v3 + 2456);
LABEL_42:
  if (v37 == 1)
  {
    if (v36 < 0)
    {
      operator delete(__p);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }
  }
}

void sub_10008F388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000827E4(va);
  _Unwind_Resume(a1);
}

void sub_10008F3E8(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v40 = 0;
  if ((*(a2 + 696) & 1) == 0)
  {
    if (qword_1025D4660 != -1)
    {
      sub_101AA324C();
    }

    v5 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#EmergencyBiome, no serving cell", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AA3260(buf);
      LOWORD(v41[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4668, 2, "#EmergencyBiome, no serving cell", v41, 2, __p[0], __p[1], v40);
      v35 = v34;
      sub_100152C7C("Generic", 1, 0, 2, "void CLCellularBiomePublisherHelper::onRatNotification(const std::optional<CLCell> &)", "%s\n", v34);
      if (v35 != buf)
      {
        free(v35);
      }
    }

    goto LABEL_10;
  }

  sub_100075160(a2, buf);
  v40 = v43;
  *__p = *buf;
  if (SHIBYTE(v43) < 0)
  {
    if (__p[1] != 7)
    {
      v4 = HIBYTE(v43);
LABEL_34:
      if (__p[1] != 3)
      {
LABEL_41:
        if (__p[1] != 5)
        {
          goto LABEL_50;
        }

        v17 = 1;
        v18 = __p[0];
        goto LABEL_45;
      }

      v12 = 1;
      v13 = __p[0];
      goto LABEL_36;
    }

    v3 = __p[0];
    v4 = HIBYTE(v43);
  }

  else
  {
    if (HIBYTE(v43) != 7)
    {
      v4 = HIBYTE(v43);
      goto LABEL_31;
    }

    v3 = __p;
    v4 = 7;
  }

  v9 = *v3;
  v10 = *(v3 + 3);
  if (v9 == 1852534357 && v10 == 1853321070)
  {
    v6 = 0;
    goto LABEL_13;
  }

  if (v43 < 0)
  {
    goto LABEL_34;
  }

LABEL_31:
  if (v4 != 3)
  {
    goto LABEL_43;
  }

  v12 = 0;
  v13 = __p;
LABEL_36:
  v14 = *v13;
  v15 = *(v13 + 2);
  if (v14 == 21319 && v15 == 77)
  {
    v6 = 1;
    goto LABEL_13;
  }

  if (v12)
  {
    goto LABEL_41;
  }

LABEL_43:
  if (v4 != 5)
  {
LABEL_52:
    if (v4 != 4)
    {
      goto LABEL_58;
    }

    v22 = 0;
    v23 = __p;
LABEL_54:
    if (*v23 != 1095582787)
    {
      if (v22)
      {
        goto LABEL_56;
      }

LABEL_58:
      if (v4 != 3)
      {
        goto LABEL_10;
      }

      v26 = 0;
      v24 = __p;
      v25 = 1;
      goto LABEL_60;
    }

LABEL_67:
    v6 = 2;
    goto LABEL_13;
  }

  v17 = 0;
  v18 = __p;
LABEL_45:
  v19 = *v18;
  v20 = *(v18 + 4);
  if (v19 == 1296319315 && v20 == 65)
  {
    goto LABEL_67;
  }

  if (!v17)
  {
    goto LABEL_52;
  }

LABEL_50:
  if (__p[1] == 4)
  {
    v22 = 1;
    v23 = __p[0];
    goto LABEL_54;
  }

LABEL_56:
  if (__p[1] != 3)
  {
LABEL_65:
    if (__p[1] != 3)
    {
      goto LABEL_10;
    }

    v30 = __p[0];
    goto LABEL_73;
  }

  v24 = __p[0];
  v25 = v4 == 3;
  v26 = 1;
LABEL_60:
  v27 = *v24;
  v28 = *(v24 + 2);
  if (v27 == 21580 && v28 == 69)
  {
    v6 = 3;
    goto LABEL_13;
  }

  if (v26)
  {
    goto LABEL_65;
  }

  if (!v25)
  {
    goto LABEL_10;
  }

  v30 = __p;
LABEL_73:
  v31 = *v30;
  v32 = *(v30 + 2);
  if (v31 == 21326 && v32 == 65)
  {
    v6 = 4;
    goto LABEL_13;
  }

LABEL_10:
  if (sub_100030AF8(__p, "NR"))
  {
    v6 = 5;
  }

  else
  {
    v6 = 6;
  }

LABEL_13:
  if (v6 != *(a1 + 120))
  {
    *(a1 + 120) = v6;
    [*(a1 + 136) sendEvent:{objc_msgSend([BMDeviceCellularQualityStatus alloc], "initWithStarting:rat:deviceRegistrationState:quality:rrcStatus:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1), *(a1 + 120), *(a1 + 124), +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *(a1 + 128)), *(a1 + 132))}];
    if (qword_1025D4660 != -1)
    {
      sub_101AA32A4();
    }

    v7 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 120);
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#EmergencyBiome, Biome donation, rat, %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AA3260(buf);
      v36 = *(a1 + 120);
      v41[0] = 67109120;
      v41[1] = v36;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4668, 2, "#EmergencyBiome, Biome donation, rat, %d", v41);
      v38 = v37;
      sub_100152C7C("Generic", 1, 0, 2, "void CLCellularBiomePublisherHelper::onRatNotification(const std::optional<CLCell> &)", "%s\n", v37);
      if (v38 != buf)
      {
        free(v38);
      }
    }
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10008F91C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008F950(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t sub_10008F96C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_102470D00[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

uint64_t sub_10008F9D4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  sub_10008FA0C(a1, a2);
  return a1;
}

uint64_t sub_10008FA0C(uint64_t a1, uint64_t a2)
{
  result = sub_10008F96C(a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_102486090[v5])(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

uint64_t sub_10008FA70(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t *sub_10008FB08(void *a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_10008FD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100A73194(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008FD6C(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(result + 24) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return sub_10008F96C(result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (*(&off_102488C50 + v4))(v6);
    }
  }

  return result;
}

uint64_t *sub_10008FDDC(uint64_t *result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  if (*(*result + 24))
  {
    result = sub_10008F96C(*result);
    *v4 = *a3;
    v4[6] = 0;
  }

  else
  {
    *a2 = *a3;
  }

  return result;
}

uint64_t sub_10008FE28(uint64_t a1, uint64_t a2)
{
  sub_10008F9D4(v5, a2);
  if (v5[6])
  {
    v2 = 1;
  }

  else
  {
    v2 = v5[0] >= 0x3E8u;
  }

  v3 = !v2;
  sub_10008F96C(v5);
  return v3;
}

uint64_t sub_10008FE78(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102488F50;
  a2[1] = v2;
  return result;
}

uint64_t sub_10008FEA0(uint64_t a1, uint64_t a2)
{
  sub_10008F9D4(v5, a2);
  if (v5[6])
  {
    v2 = 1;
  }

  else
  {
    v2 = v5[0] >= 0xDu;
  }

  v3 = !v2;
  sub_10008F96C(v5);
  return v3;
}

uint64_t sub_10008FEEC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102489850;
  a2[1] = v2;
  return result;
}

void sub_10008FF14(uint64_t a1@<X1>, void *a2@<X8>)
{
  v15 = 0uLL;
  v16 = 0;
  if ((a1 - 1000) > 0xFFFFFC18)
  {
    [[NSNumber numberWithInt:?]];
    v4 = TUISOCountryCodeForMCC();
    if (v4)
    {
      sub_10000EC00(buf, [v4 UTF8String]);
      v15 = *buf;
      v16 = v20;
      if (qword_1025D4870 != -1)
      {
        sub_1019D3ECC();
      }

      v5 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        v6 = &v15;
        if (v16 < 0)
        {
          v6 = v15;
        }

        *buf = 136446210;
        *&buf[4] = v6;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#ca,getCountryCode,%{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019D3EF4(buf);
        v10 = &v15;
        if (v16 < 0)
        {
          v10 = v15;
        }

        v17 = 136446210;
        v18 = v10;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 2, "#ca,getCountryCode,%{public}s", &v17, 12);
        v12 = v11;
        sub_100152C7C("Generic", 1, 0, 2, "std::string CLAnalyticsLogger::getCountryCode(int)", "%s\n", v11);
        if (v12 != buf)
        {
          free(v12);
        }
      }

      *a2 = v15;
      a2[2] = v16;
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_10023F764();
      }

      v7 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#ca,getCountryCode,InvalidCountryCode", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019D3EF4(buf);
        LOWORD(v17) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 2, "#ca,getCountryCode,InvalidCountryCode", &v17, 2, v15, v16);
        v14 = v13;
        sub_100152C7C("Generic", 1, 0, 2, "std::string CLAnalyticsLogger::getCountryCode(int)", "%s\n", v13);
        if (v14 != buf)
        {
          free(v14);
        }
      }

      sub_10000EC00(a2, "InvalidCountryCode");
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_10023F764();
    }

    v3 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#ca,getCountryCode,InvalidMCC", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019D3EF4(buf);
      LOWORD(v17) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 2, "#ca,getCountryCode,InvalidMCC", &v17, 2, v15, v16);
      v9 = v8;
      sub_100152C7C("Generic", 1, 0, 2, "std::string CLAnalyticsLogger::getCountryCode(int)", "%s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    sub_10000EC00(a2, "InvalidMCC");
  }
}

void sub_100090320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100090364(uint64_t a1, uint64_t a2)
{
  sub_10008F9D4(&v4, a2);
  v2 = v6;
  if (v6 == 6)
  {
    if (SHIBYTE(v5) < 0)
    {
      sub_100007244(__p, v4, *(&v4 + 1));
    }

    else
    {
      *__p = v4;
      v8 = v5;
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10008F96C(&v4);
  return v2 == 6;
}

void *sub_1000903FC(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_100007244(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

uint64_t sub_100090428(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024893D0;
  a2[1] = v2;
  return result;
}

__n128 sub_10009044C(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  *(a2 + 8) = 0uLL;
  a2->n128_u64[0] = 0;
  return result;
}

uint64_t sub_100090470(uint64_t a1)
{
  result = *(a1 + 280);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1000904F8(uint64_t a1, sqlite3_int64 *a2, uint64_t a3)
{
  if (sub_100023B68(a1 + 64))
  {
    sub_10000FF38(v33, "CLLocationDatabase::getLocation", 0);
    sub_10003848C(v31);
    v4 = sub_100038730(&v32, "SELECT ", 7);
    v5 = sub_100038730(v4, "Timestamp", 9);
    v6 = sub_100038730(v5, ", ", 2);
    v7 = sub_100038730(v6, "Latitude", 8);
    v8 = sub_100038730(v7, ", ", 2);
    v9 = sub_100038730(v8, "Longitude", 9);
    v10 = sub_100038730(v9, ", ", 2);
    v11 = sub_100038730(v10, "HorizontalAccuracy", 18);
    v12 = sub_100038730(v11, ", ", 2);
    v13 = sub_100038730(v12, "Altitude", 8);
    v14 = sub_100038730(v13, ", ", 2);
    v15 = sub_100038730(v14, "VerticalAccuracy", 16);
    v16 = sub_100038730(v15, ", ", 2);
    v17 = sub_100038730(v16, "Speed", 5);
    v18 = sub_100038730(v17, ", ", 2);
    v19 = sub_100038730(v18, "Course", 6);
    v20 = sub_100038730(v19, ", ", 2);
    v21 = sub_100038730(v20, "Confidence", 10);
    v22 = sub_100038730(v21, " FROM ", 6);
    (*(*a1 + 16))(__p, a1);
    if ((v35 & 0x80u) == 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    if ((v35 & 0x80u) == 0)
    {
      v24 = v35;
    }

    else
    {
      v24 = __p[1];
    }

    v25 = sub_100038730(v22, v23, v24);
    v26 = sub_100038730(v25, " WHERE ", 7);
    v27 = sub_100038730(v26, "ROWID", 5);
    sub_100038730(v27, "=?", 2);
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }

    sub_100073518(v31, __p);
    if ((v35 & 0x80u) == 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = __p[0];
    }

    sub_1000388D8(a1 + 64, v28);
  }

  if (qword_1025D4850 != -1)
  {
    sub_1018F3224();
  }

  v29 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call getLocation() without a backing database in CLLocationDatabase!", __p, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F3550();
  }

  return 0;
}

void sub_100090B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (v54)
  {
    (*(*v54 + 8))(v54, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_10026C504(&a12);
  sub_10001A420(&a47);
  _Unwind_Resume(a1);
}

char *sub_100090C14@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[255] < 0)
  {
    return sub_100007244(a2, *(result + 29), *(result + 30));
  }

  *a2 = *(result + 232);
  *(a2 + 16) = *(result + 31);
  return result;
}

double sub_100090C3C(uint64_t a1, std::string *this, std::string *__str)
{
  if (*(a1 + 24) == 6)
  {

    std::string::operator=(this, __str);
  }

  else
  {
    v6[2] = v3;
    v6[3] = v4;
    v6[0] = a1;
    v6[1] = __str;
    *&result = sub_100A733D8(v6).n128_u64[0];
  }

  return result;
}

void sub_100090C88(uint64_t a1, int *a2, void **a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 56) "silo")];
  if (qword_1025D47F0 != -1)
  {
    dispatch_once(&qword_1025D47F0, &stru_102502540);
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v39 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLNearbydInterfaceManager::onTelephonyNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      dispatch_once(&qword_1025D47F0, &stru_102502540);
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v55 = 2082;
      v56 = "activity";
      v57 = 2050;
      v58 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNearbydInterfaceManager::onTelephonyNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v39 = 0;
  }

  v9 = sub_100072010(a2);
  v10 = CFEqual(v9, @"kCellInfoNotification");
  v11 = *a3;
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v49 = 0;
    v48 = 0;
    v50 = 0;
    v42[0] = 0;
    v47 = 0;
    memset(v40, 0, sizeof(v40));
    v41 = 1065353216;
    if (!sub_100065478(v11, v40))
    {
      if (qword_1025D47A0 != -1)
      {
        dispatch_once(&qword_1025D47A0, &stru_102502520);
      }

      v17 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "#NearbydIfMgr,#ci,kCellInfoNotification,[3]:error fetching cell info", buf, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_80;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D47A0 != -1)
      {
        dispatch_once(&qword_1025D47A0, &stru_102502520);
      }

      *v51 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 16, "#NearbydIfMgr,#ci,kCellInfoNotification,[3]:error fetching cell info", v51, 2);
      v19 = v18;
      sub_100152C7C("Generic", 1, 0, 0, "void CLNearbydInterfaceManager::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v18);
      goto LABEL_35;
    }

    *buf = 0;
    *v51 = buf;
    if (sub_1000646F8(v40, buf, &unk_101C66300, v51)[3])
    {
      sub_1000658D0(0, v40, &v48);
      sub_100065934(&v48, buf);
      sub_1000659B0(v42, buf);
      if (v63 == 1)
      {
        if (v62 < 0)
        {
          operator delete(__p);
        }

        if (v59)
        {
          v60 = v59;
          operator delete(v59);
        }
      }

      if (v47)
      {
        if (qword_1025D47A0 != -1)
        {
          dispatch_once(&qword_1025D47A0, &stru_102502520);
        }

        v13 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          *&buf[4] = 0x66FD0EB66FD0EB67 * ((v49 - v48) >> 3);
          *&buf[12] = 1024;
          *&buf[14] = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#ci,kCellInfoNotification,[1]:cellcount,%lu,sim %d", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D47A0 != -1)
          {
            dispatch_once(&qword_1025D47A0, &stru_102502520);
          }

          *v51 = 134218240;
          *&v51[4] = 0x66FD0EB66FD0EB67 * ((v49 - v48) >> 3);
          v52 = 1024;
          v53 = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#NearbydIfMgr,#ci,kCellInfoNotification,[1]:cellcount,%lu,sim %d", v51, 18);
          v32 = v31;
          sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v31);
          if (v32 != buf)
          {
            free(v32);
          }
        }

        v14 = sub_100091A48(v42);
        sub_100091AC4(a4, 0, v14);
LABEL_50:
        v24 = v49;
        v25 = v48;
        while (v24 != v25)
        {
          v24 -= 696;
          sub_1000720CC(v24);
        }

        v49 = v25;
        if (!sub_1000649A0(v15, v16))
        {
LABEL_80:
          sub_100075100(v40);
          if (v47 == 1)
          {
            if (v46 < 0)
            {
              operator delete(v45);
            }

            if (v43)
            {
              v44 = v43;
              operator delete(v43);
            }
          }

          *buf = &v48;
          sub_100072124(buf);
          goto LABEL_86;
        }

        *buf = 1;
        *v51 = buf;
        if (sub_1000646F8(v40, buf, &unk_101C66300, v51)[3])
        {
          sub_1000658D0(1, v40, &v48);
          sub_100065934(&v48, buf);
          sub_1000659B0(v42, buf);
          if (v63 == 1)
          {
            if (v62 < 0)
            {
              operator delete(__p);
            }

            if (v59)
            {
              v60 = v59;
              operator delete(v59);
            }
          }

          if (v47)
          {
            if (qword_1025D47A0 != -1)
            {
              dispatch_once(&qword_1025D47A0, &stru_102502520);
            }

            v26 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218240;
              *&buf[4] = 0x66FD0EB66FD0EB67 * ((v49 - v48) >> 3);
              *&buf[12] = 1024;
              *&buf[14] = 1;
              _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#ci,kCellInfoNotification,[1]:cellcount,%lu,sim %d", buf, 0x12u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47A0 != -1)
              {
                dispatch_once(&qword_1025D47A0, &stru_102502520);
              }

              *v51 = 134218240;
              *&v51[4] = 0x66FD0EB66FD0EB67 * ((v49 - v48) >> 3);
              v52 = 1024;
              v53 = 1;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#NearbydIfMgr,#ci,kCellInfoNotification,[1]:cellcount,%lu,sim %d", v51, 18);
              v35 = v34;
              sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v34);
              if (v35 != buf)
              {
                free(v35);
              }
            }

            v27 = sub_100091A48(v42);
            sub_100091AC4(a4, 1u, v27);
            goto LABEL_80;
          }

          if (qword_1025D47A0 != -1)
          {
            dispatch_once(&qword_1025D47A0, &stru_102502520);
          }

          v30 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#ci,kCellInfoNotification,[0]:serving cell missing", buf, 2u);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_80;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1025D47A0 != -1)
          {
            dispatch_once(&qword_1025D47A0, &stru_102502520);
          }

          *v51 = 0;
          LODWORD(v37) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#NearbydIfMgr,#ci,kCellInfoNotification,[0]:serving cell missing", v51, v37);
          v19 = v36;
          sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v36);
        }

        else
        {
          if (qword_1025D47A0 != -1)
          {
            dispatch_once(&qword_1025D47A0, &stru_102502520);
          }

          v28 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            *&buf[4] = 1;
            _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#ci,kCellInfoNotification,[2]:received nil CellInfo from CT for sim %d", buf, 8u);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_80;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1025D47A0 != -1)
          {
            dispatch_once(&qword_1025D47A0, &stru_102502520);
          }

          *v51 = 67109120;
          *&v51[4] = 1;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#NearbydIfMgr,#ci,kCellInfoNotification,[2]:received nil CellInfo from CT for sim %d", v51);
          v19 = v29;
          sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v29);
        }

LABEL_35:
        if (v19 != buf)
        {
          free(v19);
        }

        goto LABEL_80;
      }

      if (qword_1025D47A0 != -1)
      {
        dispatch_once(&qword_1025D47A0, &stru_102502520);
      }

      v23 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#ci,kCellInfoNotification,[0]:serving cell missing", buf, 2u);
      }

      v15 = sub_10000A100(121, 2);
      if (!v15)
      {
        goto LABEL_50;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D47A0 != -1)
      {
        dispatch_once(&qword_1025D47A0, &stru_102502520);
      }

      *v51 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#NearbydIfMgr,#ci,kCellInfoNotification,[0]:serving cell missing", v51, 2);
      v22 = v33;
      v15 = sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v33);
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        dispatch_once(&qword_1025D47A0, &stru_102502520);
      }

      v20 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *&buf[4] = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#ci,kCellInfoNotification,[2]:received nil CellInfo from CT for sim %d", buf, 8u);
      }

      v15 = sub_10000A100(121, 2);
      if (!v15)
      {
        goto LABEL_50;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D47A0 != -1)
      {
        dispatch_once(&qword_1025D47A0, &stru_102502520);
      }

      *v51 = 67109120;
      *&v51[4] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#NearbydIfMgr,#ci,kCellInfoNotification,[2]:received nil CellInfo from CT for sim %d", v51);
      v22 = v21;
      v15 = sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v21);
    }

    if (v22 != buf)
    {
      free(v22);
    }

    goto LABEL_50;
  }

LABEL_86:
  sub_1000932B0(a4, 0, 1);
  sub_1000932B0(a4, 1, 1);
  if (v39 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000919BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, os_activity_scope_state_s);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  sub_100075100(va1);
  sub_1000827E4(va2);
  STACK[0x360] = &STACK[0x320];
  sub_100072124(&STACK[0x360]);
  if (v10 == 1)
  {
    os_activity_scope_leave(va);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100091A48(uint64_t a1)
{
  if (*a1 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = *(a1 + 8);
  if (v1 < 3)
  {
    return *(a1 + 12);
  }

  if (v1 == 9)
  {
    return *(a1 + 44);
  }

  if (v1 == 7)
  {
    return *(a1 + 12);
  }

  if (v1 - 3 <= 2)
  {
    v3 = *(a1 + 88);
    if (*(a1 + 96) != v3)
    {
      return *v3;
    }

    return 0xFFFFFFFFLL;
  }

  if (v1 != 10)
  {
    if (v1 == 6)
    {
      return *(a1 + 512);
    }

    return 0xFFFFFFFFLL;
  }

  return *(a1 + 600);
}

void sub_100091AC4(uint64_t a1, unsigned int a2, int a3)
{
  v89 = a2;
  if (*a1 != 1 || *(a1 + 1) != 1 || a3 && (*(a1 + 96) & 1) != 0)
  {
    return;
  }

  memset(&v88, 0, sizeof(v88));
  if (a3 == 901)
  {
    LODWORD(v5) = 14;
    *(&v88.__r_.__value_.__s + 23) = 14;
    v6 = "_SPL::MCC::901";
    goto LABEL_9;
  }

  if (!a3)
  {
    LODWORD(v5) = 14;
    *(&v88.__r_.__value_.__s + 23) = 14;
    v6 = "_SPL::MCC::000";
LABEL_9:
    v88.__r_.__value_.__r.__words[0] = *v6;
    *(v88.__r_.__value_.__r.__words + 6) = *(v6 + 6);
    goto LABEL_80;
  }

  v7 = a3;
  v8 = *(a1 + 144);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = a3;
      if (v8 <= a3)
      {
        v10 = a3 % v8;
      }
    }

    else
    {
      v10 = (v8 - 1) & a3;
    }

    v11 = *(*(a1 + 136) + 8 * v10);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == a3)
        {
          if (*(i + 4) == a3)
          {
            if (qword_1025D47A0 != -1)
            {
              dispatch_once(&qword_1025D47A0, &stru_102502520);
            }

            v59 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
            {
              v60 = i + 3;
              if (*(i + 47) < 0)
              {
                v60 = *v60;
              }

              *buf = 67109378;
              *&buf[4] = a3;
              *&buf[8] = 2080;
              *&buf[10] = v60;
              _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#toCountryIso,mcc:%d,isCountryCode:%s", buf, 0x12u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47A0 != -1)
              {
                dispatch_once(&qword_1025D47A0, &stru_102502520);
              }

              v77 = i + 3;
              if (*(i + 47) < 0)
              {
                v77 = *v77;
              }

              LODWORD(__str.__r_.__value_.__l.__data_) = 67109378;
              HIDWORD(__str.__r_.__value_.__r.__words[0]) = a3;
              LOWORD(__str.__r_.__value_.__r.__words[1]) = 2080;
              *(&__str.__r_.__value_.__r.__words[1] + 2) = v77;
              LODWORD(v87) = 18;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#NearbydIfMgr,#toCountryIso,mcc:%d,isCountryCode:%s", &__str, v87);
              v79 = v78;
              sub_100152C7C("Generic", 1, 0, 2, "std::string CLNearbydInterfaceManager::toCountryIso(int)", "%s\n", v78);
              if (v79 != buf)
              {
                free(v79);
              }
            }

            if (*(i + 47) < 0)
            {
              sub_100007244(&__dst, i[3], i[4]);
            }

            else
            {
              __dst = *(i + 1);
            }

            goto LABEL_77;
          }
        }

        else
        {
          if (v9.u32[0] > 1uLL)
          {
            if (v13 >= v8)
            {
              v13 %= v8;
            }
          }

          else
          {
            v13 &= v8 - 1;
          }

          if (v13 != v10)
          {
            break;
          }
        }
      }
    }
  }

  snprintf(&__str, 0x20uLL, "%d", a3);
  CFStringCreateWithCString(kCFAllocatorDefault, &__str, 0x8000100u);
  v90 = 0;
  v14 = _CTServerConnectionCopyISOForMCC();
  v15 = 0;
  memset(&__dst, 0, sizeof(__dst));
  if (v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = v90 == 0;
  }

  if (!v16)
  {
    sub_100006044(&__dst, [objc_msgSend(0 "uppercaseString")]);
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      if (qword_1025D47A0 != -1)
      {
        dispatch_once(&qword_1025D47A0, &stru_102502520);
      }

      v21 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#toCountryIsoNonCached,mcc=%d,countryCode,empty", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D47A0 != -1)
        {
          dispatch_once(&qword_1025D47A0, &stru_102502520);
        }

        v99 = 67109120;
        v100 = a3;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#NearbydIfMgr,#toCountryIsoNonCached,mcc=%d,countryCode,empty", &v99);
        v76 = v75;
        sub_100152C7C("Generic", 1, 0, 2, "std::string CLNearbydInterfaceManager::toCountryIsoNonCached(int)", "%s\n", v75);
        if (v76 != buf)
        {
          free(v76);
        }
      }
    }

    if (qword_1025D47A0 != -1)
    {
      dispatch_once(&qword_1025D47A0, &stru_102502520);
    }

    v22 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      p_dst = &__dst;
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      *buf = 67109378;
      *&buf[4] = a3;
      *&buf[8] = 2080;
      *&buf[10] = p_dst;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#toCountryIsoNonCached,mcc:%d,isCountryCode:%s,fromCache", buf, 0x12u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_54;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      dispatch_once(&qword_1025D47A0, &stru_102502520);
    }

    v73 = &__dst;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v73 = __dst.__r_.__value_.__r.__words[0];
    }

    v99 = 67109378;
    v100 = a3;
    v101 = 2080;
    v102 = v73;
    LODWORD(v87) = 18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#NearbydIfMgr,#toCountryIsoNonCached,mcc:%d,isCountryCode:%s,fromCache", &v99, v87);
    v19 = v74;
    sub_100152C7C("Generic", 1, 0, 2, "std::string CLNearbydInterfaceManager::toCountryIsoNonCached(int)", "%s\n", v74);
LABEL_176:
    if (v19 != buf)
    {
      free(v19);
    }

    goto LABEL_54;
  }

  if (qword_1025D47A0 != -1)
  {
    dispatch_once(&qword_1025D47A0, &stru_102502520);
  }

  v17 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *&buf[4] = v14;
    *&buf[8] = 1024;
    *&buf[10] = HIDWORD(v14);
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "#NearbydIfMgr,#toCountryIsoNonCached,_CTServerConnectionCopyISOForMCC failed,domain,%d,error,%d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      dispatch_once(&qword_1025D47A0, &stru_102502520);
    }

    v99 = 67109376;
    v100 = v14;
    v101 = 1024;
    LODWORD(v102) = HIDWORD(v14);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 16, "#NearbydIfMgr,#toCountryIsoNonCached,_CTServerConnectionCopyISOForMCC failed,domain,%d,error,%d", &v99, 14);
    v19 = v18;
    sub_100152C7C("Generic", 1, 0, 0, "std::string CLNearbydInterfaceManager::toCountryIsoNonCached(int)", "%s\n", v18);
    goto LABEL_176;
  }

LABEL_54:
  *buf = a3;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100007244(&buf[8], __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    v24 = *buf;
    v7 = *buf;
  }

  else
  {
    *&buf[8] = __dst;
    v24 = a3;
  }

  v25 = *(a1 + 144);
  if (!*&v25)
  {
    goto LABEL_74;
  }

  v26 = vcnt_s8(v25);
  v26.i16[0] = vaddlv_u8(v26);
  if (v26.u32[0] > 1uLL)
  {
    v27 = v7;
    if (*&v25 <= v7)
    {
      v27 = v7 % *&v25;
    }
  }

  else
  {
    v27 = (*&v25 - 1) & v7;
  }

  v28 = *(*(a1 + 136) + 8 * v27);
  if (!v28 || (v29 = *v28) == 0)
  {
LABEL_74:
    operator new();
  }

  while (1)
  {
    v30 = v29[1];
    if (v30 == v7)
    {
      break;
    }

    if (v26.u32[0] > 1uLL)
    {
      if (v30 >= *&v25)
      {
        v30 %= *&v25;
      }
    }

    else
    {
      v30 &= *&v25 - 1;
    }

    if (v30 != v27)
    {
      goto LABEL_74;
    }

LABEL_73:
    v29 = *v29;
    if (!v29)
    {
      goto LABEL_74;
    }
  }

  if (*(v29 + 4) != v24)
  {
    goto LABEL_73;
  }

  if ((buf[31] & 0x80000000) != 0)
  {
    operator delete(*&buf[8]);
  }

LABEL_77:
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  v88 = __dst;
  v5 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
LABEL_80:
  if ((v5 & 0x80u) == 0)
  {
    v31 = v5;
  }

  else
  {
    v31 = v88.__r_.__value_.__l.__size_;
  }

  if (v31)
  {
    v32 = sub_100093368((a1 + 8), v89);
    if (!v32)
    {
      if ((v5 & 0x80) != 0)
      {
        sub_100007244(&__str, v88.__r_.__value_.__l.__data_, v88.__r_.__value_.__l.__size_);
      }

      else
      {
        __str = v88;
      }

      LOBYTE(v92) = 1;
      v95 = 0;
      v96 = 0;
      v94 = 0;
      v97 = sub_1000081AC();
      *buf = &v89;
      v46 = sub_1018028BC((a1 + 8), v89, buf);
      std::string::operator=(v46 + 1, &__str);
      v46[2].__r_.__value_.__s.__data_[0] = v92;
      if (&v46[1] != &__str)
      {
        sub_1018024F0(&v46[2].__r_.__value_.__l.__size_, v94, v95, 0xAAAAAAAAAAAAAAABLL * ((v95 - v94) >> 3));
      }

      *&v46[3].__r_.__value_.__l.__size_ = v97;
      if (qword_1025D47A0 != -1)
      {
        dispatch_once(&qword_1025D47A0, &stru_102502520);
      }

      v47 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        p_str = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        *buf = 67109634;
        *&buf[4] = v89;
        *&buf[8] = 2080;
        *&buf[10] = p_str;
        *&buf[18] = 1024;
        *&buf[20] = v92;
        _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#setIsoCountryFromMcc, did not find instance=%d - added it as new instance with iso=%s, sendIt=%d", buf, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D47A0 != -1)
        {
          dispatch_once(&qword_1025D47A0, &stru_102502520);
        }

        v70 = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v70 = __str.__r_.__value_.__r.__words[0];
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 67109634;
        HIDWORD(__dst.__r_.__value_.__r.__words[0]) = v89;
        LOWORD(__dst.__r_.__value_.__r.__words[1]) = 2080;
        *(&__dst.__r_.__value_.__r.__words[1] + 2) = v70;
        WORD1(__dst.__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(__dst.__r_.__value_.__r.__words[2]) = v92;
        LODWORD(v87) = 24;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#NearbydIfMgr,#setIsoCountryFromMcc, did not find instance=%d - added it as new instance with iso=%s, sendIt=%d", &__dst, v87, LODWORD(v88.__r_.__value_.__l.__data_));
        v72 = v71;
        sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::setIsoCountryFromMcc(SimInstance, int)", "%s\n", v71);
        if (v72 != buf)
        {
          free(v72);
        }
      }

      *buf = &v94;
      sub_1001E56E8(buf);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      goto LABEL_149;
    }

    v33 = v32;
    v34 = (v32 + 3);
    v35 = *(v32 + 47);
    v36 = v35;
    if ((v35 & 0x80u) != 0)
    {
      v35 = v32[4];
    }

    if (v35 == v31)
    {
      v37 = v36 >= 0 ? v32 + 3 : v34->__r_.__value_.__r.__words[0];
      v38 = (v5 & 0x80u) == 0 ? &v88 : v88.__r_.__value_.__r.__words[0];
      if (!memcmp(v37, v38, v31))
      {
        if (*(v33 + 48) == 1)
        {
          if (sub_1000081AC() - *(v33 + 10) < 600.0)
          {
            if (qword_1025D47A0 != -1)
            {
              dispatch_once(&qword_1025D47A0, &stru_102502520);
            }

            v49 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
            {
              v50 = v33[10];
              v51 = *(v33 + 48);
              *buf = 134218240;
              *&buf[4] = v50;
              *&buf[12] = 1024;
              *&buf[14] = v51;
              _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#setIsoCountryFromMcc,isoCountryCode is not new - waiting for kMinIntervalBetweenIDSMessages to expire before sending another IDS message,timestamp=%.1f, sendIt=%d", buf, 0x12u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47A0 != -1)
              {
                dispatch_once(&qword_1025D47A0, &stru_102502520);
              }

              v80 = v33[10];
              v81 = *(v33 + 48);
              LODWORD(__str.__r_.__value_.__l.__data_) = 134218240;
              *(__str.__r_.__value_.__r.__words + 4) = v80;
              WORD2(__str.__r_.__value_.__r.__words[1]) = 1024;
              *(&__str.__r_.__value_.__r.__words[1] + 6) = v81;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#NearbydIfMgr,#setIsoCountryFromMcc,isoCountryCode is not new - waiting for kMinIntervalBetweenIDSMessages to expire before sending another IDS message,timestamp=%.1f, sendIt=%d", COERCE_DOUBLE(&__str), 18);
              v83 = v82;
              sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::setIsoCountryFromMcc(SimInstance, int)", "%s\n", v82);
              if (v83 != buf)
              {
                free(v83);
              }
            }

            v52 = 0;
            goto LABEL_150;
          }

          *(v33 + 10) = sub_1000081AC();
          if (qword_1025D47A0 != -1)
          {
            dispatch_once(&qword_1025D47A0, &stru_102502520);
          }

          v61 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
          {
            v62 = v33[10];
            v63 = *(v33 + 48);
            *buf = 134218240;
            *&buf[4] = v62;
            *&buf[12] = 1024;
            *&buf[14] = v63;
            _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#setIsoCountryFromMcc,isoCountryCode is not new but kMinIntervalBetweenIDSMessages has expired, send another IDS message,timestamp=%.1f, sendIt=%d", buf, 0x12u);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_149;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1025D47A0 != -1)
          {
            dispatch_once(&qword_1025D47A0, &stru_102502520);
          }

          v84 = v33[10];
          v85 = *(v33 + 48);
          LODWORD(__str.__r_.__value_.__l.__data_) = 134218240;
          *(__str.__r_.__value_.__r.__words + 4) = v84;
          WORD2(__str.__r_.__value_.__r.__words[1]) = 1024;
          *(&__str.__r_.__value_.__r.__words[1] + 6) = v85;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#NearbydIfMgr,#setIsoCountryFromMcc,isoCountryCode is not new but kMinIntervalBetweenIDSMessages has expired, send another IDS message,timestamp=%.1f, sendIt=%d", COERCE_DOUBLE(&__str), 18);
          v45 = v86;
          sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::setIsoCountryFromMcc(SimInstance, int)", "%s\n", v86);
        }

        else
        {
          *(v33 + 10) = sub_1000081AC();
          if (qword_1025D47A0 != -1)
          {
            dispatch_once(&qword_1025D47A0, &stru_102502520);
          }

          v53 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
          {
            v54 = v33[10];
            v55 = *(v33 + 48);
            *buf = 134218240;
            *&buf[4] = v54;
            *&buf[12] = 1024;
            *&buf[14] = v55;
            _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#setIsoCountryFromMcc,isoCountryCode is not new - setting its timestamp to current time,timestamp=%.1f, sendIt=%d", buf, 0x12u);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_149;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1025D47A0 != -1)
          {
            dispatch_once(&qword_1025D47A0, &stru_102502520);
          }

          v56 = v33[10];
          v57 = *(v33 + 48);
          LODWORD(__str.__r_.__value_.__l.__data_) = 134218240;
          *(__str.__r_.__value_.__r.__words + 4) = v56;
          WORD2(__str.__r_.__value_.__r.__words[1]) = 1024;
          *(&__str.__r_.__value_.__r.__words[1] + 6) = v57;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#NearbydIfMgr,#setIsoCountryFromMcc,isoCountryCode is not new - setting its timestamp to current time,timestamp=%.1f, sendIt=%d", COERCE_DOUBLE(&__str), 18);
          v45 = v58;
          sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::setIsoCountryFromMcc(SimInstance, int)", "%s\n", v58);
        }

LABEL_103:
        if (v45 != buf)
        {
          free(v45);
        }

        goto LABEL_149;
      }
    }

    std::string::operator=(v34, &v88);
    *(v33 + 10) = sub_1000081AC();
    *(v33 + 48) = 1;
    if (qword_1025D47A0 != -1)
    {
      dispatch_once(&qword_1025D47A0, &stru_102502520);
    }

    v39 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v40 = v33[10];
      v41 = *(v33 + 48);
      *buf = 67109888;
      *&buf[4] = v89;
      *&buf[8] = 1024;
      *&buf[10] = a3;
      *&buf[14] = 2048;
      *&buf[16] = v40;
      *&buf[24] = 1024;
      *&buf[26] = v41;
      _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#setIsoCountryFromMcc,Updated existing mccEntry,instance=%d,mcc=%d,timestamp=%.1f,sendIt=%d", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D47A0 != -1)
      {
        dispatch_once(&qword_1025D47A0, &stru_102502520);
      }

      v42 = v33[10];
      v43 = *(v33 + 48);
      __str.__r_.__value_.__r.__words[0] = __PAIR64__(v89, 67109888);
      LOWORD(__str.__r_.__value_.__r.__words[1]) = 1024;
      *(&__str.__r_.__value_.__r.__words[1] + 2) = a3;
      HIWORD(__str.__r_.__value_.__r.__words[1]) = 2048;
      __str.__r_.__value_.__r.__words[2] = v42;
      v92 = 1024;
      v93 = v43;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#NearbydIfMgr,#setIsoCountryFromMcc,Updated existing mccEntry,instance=%d,mcc=%d,timestamp=%.1f,sendIt=%d", &__str, 30, *&v88.__r_.__value_.__l.__data_, LODWORD(v88.__r_.__value_.__r.__words[1]));
      v45 = v44;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::setIsoCountryFromMcc(SimInstance, int)", "%s\n", v44);
      goto LABEL_103;
    }

LABEL_149:
    v52 = 1;
LABEL_150:
    *buf = &v89;
    if ((v52 & sub_1018028BC((a1 + 8), v89, buf)[6]) == 1)
    {
      if (qword_1025D47A0 != -1)
      {
        dispatch_once(&qword_1025D47A0, &stru_102502520);
      }

      v64 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = &v89;
        v65 = *(sub_1018028BC((a1 + 8), v89, buf) + 48);
        LODWORD(__str.__r_.__value_.__l.__data_) = 67109120;
        HIDWORD(__str.__r_.__value_.__r.__words[0]) = v65;
        _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#setIsoCountryFromMcc, calling sendIsoCountryToWatch(instance),sendIt=%d", &__str, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D47A0 != -1)
        {
          dispatch_once(&qword_1025D47A0, &stru_102502520);
        }

        v66 = off_1025D47A8;
        __str.__r_.__value_.__r.__words[0] = &v89;
        v67 = *(sub_1018028BC((a1 + 8), v89, &__str) + 48);
        LODWORD(__dst.__r_.__value_.__l.__data_) = 67109120;
        HIDWORD(__dst.__r_.__value_.__r.__words[0]) = v67;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v66, 2, "#NearbydIfMgr,#setIsoCountryFromMcc, calling sendIsoCountryToWatch(instance),sendIt=%d", &__dst);
        v69 = v68;
        sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::setIsoCountryFromMcc(SimInstance, int)", "%s\n", v68);
        if (v69 != buf)
        {
          free(v69);
        }
      }

      sub_101801E74(a1, v89);
    }
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }
}

void sub_1000931E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000932B0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v6 = sub_100093368((a1 + 8), a2);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if (a3)
  {
    if (*(v6 + 47) < 0)
    {
      if (!v6[4])
      {
        goto LABEL_8;
      }
    }

    else if (!*(v6 + 47))
    {
      goto LABEL_8;
    }

    if (sub_1000081AC() - *(v6 + 10) < *&qword_1026358F0)
    {
      return;
    }
  }

LABEL_8:
  if (std::string::compare(v7 + 1, "_SPL::MCC::000"))
  {

    sub_100091AC4(a1, v4, 0);
  }
}

uint64_t *sub_100093368(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_10009341C(uint64_t a1, __CFString *a2, uint64_t a3)
{
  v6 = *(a1 + 48);
  [*(v6 + 104) silo];
  if (a3)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#Warning,#ctcl,#cterror,queryServingMccAndMnc,query for serving MNC failed,replacing with -1", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101974C98();
    }
  }

  else if (a2 && [(__CFString *)a2 length])
  {
    if ([(__CFString *)a2 length]< 4)
    {
      goto LABEL_24;
    }

    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning,#ctcl,queryServingMccAndMnc,MNC is too many digits,replacing with -1", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101974D74();
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning,#ctcl,#cterror,queryServingMccAndMnc,query for serving MNC returned nil,replacing with -1", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101974E50();
    }
  }

  a2 = @"-1";
LABEL_24:
  if (sub_10009388C(*(a1 + 32), *(a1 + 40), a2))
  {
    v10 = a2;
    sub_100093B1C(buf, *(a1 + 40), a2);
    v11 = [*(a1 + 32) slotID];
    v25 = sub_1000646B0(v11, v12);
    *v26 = &v25;
    v13 = sub_10009422C((v6 + 328), &v25, &unk_101C66300, v26);
    *(v13 + 20) = *buf;
    *(v13 + 28) = buf[8];
    if (qword_1025D4650 != -1)
    {
      sub_10196F27C();
    }

    v14 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 32);
      v16 = [*(a1 + 40) UTF8String];
      v17 = [(__CFString *)a2 UTF8String];
      *buf = 138478339;
      *&buf[4] = v15;
      v32 = 2082;
      v33 = v16;
      v34 = 2082;
      v35 = v17;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#ctcl,queryServingMccAndMnc,context,%{private}@,mcc,%{public}s,mnc,%{public}s", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_10196F27C();
      }

      v19 = qword_1025D4658;
      v20 = *(a1 + 32);
      v21 = [*(a1 + 40) UTF8String];
      v22 = [(__CFString *)a2 UTF8String];
      *v26 = 138478339;
      *&v26[4] = v20;
      v27 = 2082;
      v28 = v21;
      v29 = 2082;
      v30 = v22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v19, 2, "#ctcl,queryServingMccAndMnc,context,%{private}@,mcc,%{public}s,mnc,%{public}s", v26, 32);
      v24 = v23;
      sub_100152C7C("Generic", 1, 0, 2, "void CLCoreTelephonyClient::queryServingMccAndMnc(CTXPCServiceSubscriptionContext *)_block_invoke", "%s\n", v23);
      if (v24 != buf)
      {
        free(v24);
      }
    }

    [*(v6 + 112) sendNotificationToClients:@"kServingMccAndMncNotification" notificationData:sub_100093F6C((v6 + 328))];
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196F27C();
    }

    v18 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#Warning,#ctcl,#cterror,queryServingMccAndMnc,MCC and MNC invalid", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101974F2C();
    }
  }
}

uint64_t sub_10009388C(void *a1, void *a2, void *a3)
{
  if (a1 && a2 && a3 && [a2 length] && objc_msgSend(a3, "length"))
  {
    if ([a1 slotID] - 1 < 2)
    {
      return 1;
    }

    if (qword_1025D4600 != -1)
    {
      sub_101B4BE38();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v18) = [a1 slotID];
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,areMccAndMncValid,invalidSlot,%d", buf, 8u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101B4D6C0(a1);
      return 0;
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101B4BE38();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v18 = a1;
      v19 = 2048;
      v20 = a2;
      v21 = 2048;
      v22 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,areMccAndMncValid,invalid,context,%p,mccString,%p,mncString,%p", buf, 0x20u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_101B4CB70();
      }

      v11 = 134218496;
      v12 = a1;
      v13 = 2048;
      v14 = a2;
      v15 = 2048;
      v16 = a3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 16, "#ctcl,#cterror,areMccAndMncValid,invalid,context,%p,mccString,%p,mncString,%p", &v11, 32);
      v10 = v9;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLCoreTelephonyUtils::areMccAndMncValid(CTXPCServiceSubscriptionContext *, NSString *, NSString *)", "%s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_100093B1C(uint64_t a1, void *a2, void *a3)
{
  *a1 = -1;
  *(a1 + 8) = 0;
  if (a2 && a3)
  {
    *a1 = [a2 integerValue];
    *(a1 + 4) = [a3 integerValue];
    if ([a3 length] == 3)
    {
      *(a1 + 8) = 1;
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C7FD0();
    }

    v5 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#clct,CLCTMccAndMnc, mcc or mnc is nil", v7, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CC284();
    }
  }

  return a1;
}

NSDictionary *sub_100093C04(unsigned int *a1)
{
  v3[0] = @"kMccKey";
  v4[0] = [NSNumber numberWithInt:*a1];
  v3[1] = @"kMncKey";
  v4[1] = [NSNumber numberWithInt:a1[1]];
  v3[2] = @"kIs3DigitMnc";
  v4[2] = [NSNumber numberWithBool:*(a1 + 8)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

void sub_100093CC8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x4BDA12F684BDA2)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_100093D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      *(a4 + 60) = *(v6 + 60);
      *(a4 + 32) = v8;
      *(a4 + 48) = v9;
      *(a4 + 16) = v7;
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 88) = 0;
      *(a4 + 88) = *(v6 + 88);
      *(a4 + 104) = *(v6 + 104);
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      *(v6 + 88) = 0;
      v10 = *(v6 + 176);
      v12 = *(v6 + 128);
      v11 = *(v6 + 144);
      *(a4 + 160) = *(v6 + 160);
      *(a4 + 176) = v10;
      *(a4 + 128) = v12;
      *(a4 + 144) = v11;
      v13 = *(v6 + 240);
      v15 = *(v6 + 192);
      v14 = *(v6 + 208);
      *(a4 + 224) = *(v6 + 224);
      *(a4 + 240) = v13;
      *(a4 + 192) = v15;
      *(a4 + 208) = v14;
      v17 = *(v6 + 272);
      v16 = *(v6 + 288);
      v18 = *(v6 + 256);
      *(a4 + 300) = *(v6 + 300);
      *(a4 + 272) = v17;
      *(a4 + 288) = v16;
      *(a4 + 256) = v18;
      *(a4 + 112) = *(v6 + 112);
      v19 = *(v6 + 320);
      *(a4 + 336) = *(v6 + 336);
      *(a4 + 320) = v19;
      *(v6 + 328) = 0;
      *(v6 + 336) = 0;
      *(v6 + 320) = 0;
      v20 = *(v6 + 440);
      v22 = *(v6 + 392);
      v21 = *(v6 + 408);
      *(a4 + 424) = *(v6 + 424);
      *(a4 + 440) = v20;
      *(a4 + 392) = v22;
      *(a4 + 408) = v21;
      v23 = *(v6 + 344);
      v24 = *(v6 + 376);
      *(a4 + 360) = *(v6 + 360);
      *(a4 + 376) = v24;
      *(a4 + 344) = v23;
      v26 = *(v6 + 472);
      v25 = *(v6 + 488);
      v27 = *(v6 + 456);
      *(a4 + 504) = *(v6 + 504);
      *(a4 + 472) = v26;
      *(a4 + 488) = v25;
      *(a4 + 456) = v27;
      v28 = *(v6 + 512);
      v29 = *(v6 + 528);
      v30 = *(v6 + 560);
      *(a4 + 544) = *(v6 + 544);
      *(a4 + 560) = v30;
      *(a4 + 512) = v28;
      *(a4 + 528) = v29;
      v31 = *(v6 + 576);
      v32 = *(v6 + 592);
      v33 = *(v6 + 624);
      *(a4 + 608) = *(v6 + 608);
      *(a4 + 624) = v33;
      *(a4 + 576) = v31;
      *(a4 + 592) = v32;
      v34 = *(v6 + 640);
      v35 = *(v6 + 656);
      v36 = *(v6 + 672);
      *(a4 + 688) = *(v6 + 688);
      *(a4 + 656) = v35;
      *(a4 + 672) = v36;
      *(a4 + 640) = v34;
      *(a4 + 696) = *(v6 + 696);
      v37 = *(v6 + 716);
      *(a4 + 700) = *(v6 + 700);
      *(a4 + 716) = v37;
      v38 = *(v6 + 732);
      v39 = *(v6 + 748);
      v40 = *(v6 + 780);
      *(a4 + 764) = *(v6 + 764);
      *(a4 + 780) = v40;
      *(a4 + 732) = v38;
      *(a4 + 748) = v39;
      v41 = *(v6 + 796);
      v42 = *(v6 + 812);
      v43 = *(v6 + 828);
      *(a4 + 840) = *(v6 + 840);
      *(a4 + 812) = v42;
      *(a4 + 828) = v43;
      *(a4 + 796) = v41;
      *(a4 + 856) = *(v6 + 856);
      v6 += 864;
      a4 += 864;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_1000720CC(v5);
      v5 += 864;
    }
  }
}

void sub_100093EE8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 864;
        sub_1000720CC(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

id sub_100093F6C(void *a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v8 = 0;
  v9 = &v8;
  v3 = sub_10009422C(a1, &v8, &unk_101C66300, &v9);
  v4 = [v2 setObject:sub_100093C04(v3 + 5) forKey:@"kSlotOne"];
  if (sub_1000649A0(v4, v5))
  {
    v8 = 1;
    v9 = &v8;
    v6 = sub_10009422C(a1, &v8, &unk_101C66300, &v9);
    [v2 setObject:sub_100093C04(v6 + 5) forKey:@"kSlotTwo"];
  }

  return v2;
}

uint64_t sub_10009404C(void *a1, void *a2)
{
  v4 = [a1 objectForKey:@"kSlotOne"];
  if (!v4)
  {
    if (qword_1025D4660 != -1)
    {
      sub_101B4C13C();
    }

    v10 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "#ctcl couldn't get Sim Status Change information for SIM 1", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B4D88C();
    }

    return 0;
  }

  sub_100094468(buf, v4);
  v13 = 0;
  v16 = &v13;
  v5 = sub_10009422C(a2, &v13, &unk_101C66300, &v16);
  *(v5 + 20) = *buf;
  *(v5 + 28) = v15;
  if (!sub_1000649A0(v5, v6))
  {
    return 1;
  }

  v7 = [a1 objectForKey:@"kSlotTwo"];
  if (!v7)
  {
    if (qword_1025D4660 != -1)
    {
      sub_101B4C030();
    }

    v11 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "#ctcl couldn't get Sim Status Change information for SIM 2", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B4D7B0();
    }

    return 0;
  }

  sub_100094468(buf, v7);
  v8 = 1;
  v13 = 1;
  v16 = &v13;
  v9 = sub_10009422C(a2, &v13, &unk_101C66300, &v16);
  *(v9 + 20) = *buf;
  *(v9 + 28) = v15;
  return v8;
}

uint64_t *sub_10009422C(void *a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t sub_10009446C(uint64_t a1, const __CFDictionary *a2)
{
  *a1 = -1;
  v3 = (a1 + 4);
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  sub_100005548(v14, a2);
  if ((sub_1000052CC(v14, @"kMccKey", a1) & 1) == 0)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v8 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "#clct,CLCTMccMnc, couldn't get value for mcc", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_21;
    }

    sub_1018C7FE4(buf);
    v13[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTMccMnc, couldn't get value for mcc", v13, 2);
    v7 = v9;
    sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTMccAndMnc::CLCTMccAndMnc(CFDictionaryRef)", "%s\n", v9);
LABEL_23:
    if (v7 != buf)
    {
      free(v7);
    }

    goto LABEL_21;
  }

  if ((sub_1000052CC(v14, @"kMncKey", v3) & 1) == 0)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v10 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "#clct,CLCTMccMnc, couldn't get value for mnc", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_21;
    }

    sub_1018C7FE4(buf);
    v13[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTMccMnc, couldn't get value for mnc", v13, 2);
    v7 = v12;
    sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTMccAndMnc::CLCTMccAndMnc(CFDictionaryRef)", "%s\n", v12);
    goto LABEL_23;
  }

  if ((sub_10001CBC0(v14, @"kIs3DigitMnc", v4) & 1) == 0)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v5 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#clct,CLCTMccMnc, couldn't get value for is3DigitMnc", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C7FE4(buf);
      v13[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTMccMnc, couldn't get value for is3DigitMnc", v13, 2);
      v7 = v6;
      sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTMccAndMnc::CLCTMccAndMnc(CFDictionaryRef)", "%s\n", v6);
      goto LABEL_23;
    }
  }

LABEL_21:
  sub_100005DA4();
  return a1;
}

void sub_100094834(uint64_t a1, int a2, unint64_t a3, char a4)
{
  v8 = HIDWORD(a3);
  v9 = sub_100075080(a2, 1);
  if (a3 == -1 && v8 == 0xFFFFFFFF)
  {
    if (qword_1025D4870 != -1)
    {
      sub_101A54038();
    }

    v10 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *v18 = 0;
      *&v18[4] = 2082;
      *&v18[6] = "";
      v19 = 1026;
      v20 = a2;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLConfig,handleServingMccMncChange,operator mcc and mnc are invalid, inst:%{public}d}", buf, 0x18u);
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_101A54038();
    }

    v11 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68290050;
      *v18 = 0;
      *&v18[4] = 2082;
      *&v18[6] = "";
      v19 = 1026;
      v20 = a2;
      v21 = 1026;
      v22 = a3;
      v23 = 1026;
      v24 = v8;
      v25 = 1026;
      v26 = a4 & 1;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLConfig,handleServingMccMncChange,operator mcc and mnc updated, inst:%{public}d, MCC:%{public}d, MNC:%{public}d, is3DigitMnc:%{public}hhd}", buf, 0x2Au);
    }

    for (i = *(a1 + 272); i; i = *i)
    {
      v13 = i[3];
      if (v13)
      {
        (*(*v13 + 64))(v13, v9, a3, v8, a4 & 1);
      }

      else
      {
        if (qword_1025D4870 != -1)
        {
          sub_100248578();
        }

        v14 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
        {
          v16 = [(__CFString *)sub_100CCA5D4(*(i + 4) UTF8String];
          *buf = 136446210;
          *v18 = v16;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "#CLConfig,%{public}s,handleServingMccMncChange,pointer for component was null", buf, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101A551CC();
        }
      }
    }
  }
}

uint64_t sub_100094AF0(uint64_t a1, int a2, int a3, int a4, char a5)
{
  v16 = a2;
  *buf = &v16;
  v9 = sub_10008608C((a1 + 248), &v16, &unk_101C66300, buf);
  *(v9 + 12) = a3;
  *(v9 + 13) = a4;
  *buf = &v16;
  result = sub_100094C70((a1 + 288), &v16, &unk_101C66300, buf);
  v11 = *(result + 20);
  v12 = *(result + 24);
  *(result + 20) = a3;
  *(result + 24) = a4;
  *(result + 28) = a5;
  if (v11 != a3 || v12 != a4)
  {
    if (qword_1025D4870 != -1)
    {
      sub_101BCE390();
    }

    v14 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 16) UTF8String];
      *buf = 136446210;
      *&buf[4] = v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#CLConfig,%{public}s,handleMccMncChange,MCC/MNC changed", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BCEAFC();
    }

    result = sub_100CCD30C(a1);
    if (result)
    {
      sub_101357AB0(a1);
      sub_101357724(a1);
      return sub_101355FDC(a1);
    }
  }

  return result;
}

uint64_t *sub_100094C70(void *a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

NSDictionary *sub_100094EAC(uint64_t a1)
{
  v2 = @"outcome";
  v3 = [NSString stringWithUTF8String:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
}

uint64_t sub_100094F30(uint64_t *a1, uint64_t a2, _DWORD *a3, _OWORD *a4, _BYTE *a5)
{
  v5 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 5);
  v6 = v5 + 1;
  if (v5 + 1 > 0x4BDA12F684BDA1)
  {
    sub_10028C64C();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 5) > v6)
  {
    v6 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 5);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 5) >= 0x25ED097B425ED0)
  {
    v12 = 0x4BDA12F684BDA1;
  }

  else
  {
    v12 = v6;
  }

  v61 = a1;
  if (v12)
  {
    sub_100093CC8(a1, v12);
  }

  v13 = 864 * v5;
  v58 = 0;
  v59 = v13;
  v60 = 864 * v5;
  v14 = *(a2 + 16);
  v15 = *(a2 + 32);
  v16 = *(a2 + 48);
  *(v13 + 60) = *(a2 + 60);
  *(v13 + 32) = v15;
  *(v13 + 48) = v16;
  *(v13 + 16) = v14;
  *v13 = *a2;
  *(v13 + 80) = *(a2 + 80);
  v17 = 864 * v5;
  *(v17 + 88) = 0;
  *(v13 + 96) = 0;
  *(v13 + 104) = 0;
  sub_10038EB38((v17 + 88), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
  *(v13 + 112) = *(a2 + 112);
  v18 = *(a2 + 128);
  v19 = *(a2 + 144);
  v20 = *(a2 + 176);
  *(v13 + 160) = *(a2 + 160);
  *(v13 + 176) = v20;
  *(v13 + 128) = v18;
  *(v13 + 144) = v19;
  v21 = *(a2 + 192);
  v22 = *(a2 + 208);
  v23 = *(a2 + 240);
  *(v13 + 224) = *(a2 + 224);
  *(v13 + 240) = v23;
  *(v13 + 192) = v21;
  *(v13 + 208) = v22;
  v24 = *(a2 + 256);
  v25 = *(a2 + 272);
  v26 = *(a2 + 288);
  *(v13 + 300) = *(a2 + 300);
  *(v13 + 272) = v25;
  *(v13 + 288) = v26;
  *(v13 + 256) = v24;
  if (*(a2 + 343) < 0)
  {
    sub_100007244((v13 + 320), *(a2 + 320), *(a2 + 328));
  }

  else
  {
    v27 = *(a2 + 320);
    *(v13 + 336) = *(a2 + 336);
    *(v13 + 320) = v27;
  }

  v28 = *(a2 + 344);
  v29 = *(a2 + 376);
  *(v13 + 360) = *(a2 + 360);
  *(v13 + 376) = v29;
  *(v13 + 344) = v28;
  v30 = *(a2 + 392);
  v31 = *(a2 + 408);
  v32 = *(a2 + 440);
  *(v13 + 424) = *(a2 + 424);
  *(v13 + 440) = v32;
  *(v13 + 392) = v30;
  *(v13 + 408) = v31;
  v33 = *(a2 + 456);
  v34 = *(a2 + 472);
  v35 = *(a2 + 488);
  *(v13 + 504) = *(a2 + 504);
  *(v13 + 472) = v34;
  *(v13 + 488) = v35;
  *(v13 + 456) = v33;
  v36 = *(a2 + 512);
  v37 = *(a2 + 528);
  v38 = *(a2 + 560);
  *(v13 + 544) = *(a2 + 544);
  *(v13 + 560) = v38;
  *(v13 + 512) = v36;
  *(v13 + 528) = v37;
  v39 = *(a2 + 576);
  v40 = *(a2 + 592);
  v41 = *(a2 + 624);
  *(v13 + 608) = *(a2 + 608);
  *(v13 + 624) = v41;
  *(v13 + 576) = v39;
  *(v13 + 592) = v40;
  v42 = *(a2 + 640);
  v43 = *(a2 + 656);
  v44 = *(a2 + 672);
  *(v13 + 688) = *(a2 + 688);
  *(v13 + 656) = v43;
  *(v13 + 672) = v44;
  *(v13 + 640) = v42;
  *(v13 + 696) = *a3;
  v45 = a4[1];
  *(v13 + 700) = *a4;
  *(v13 + 716) = v45;
  v46 = a4[2];
  v47 = a4[3];
  v48 = a4[5];
  *(v13 + 764) = a4[4];
  *(v13 + 780) = v48;
  *(v13 + 732) = v46;
  *(v13 + 748) = v47;
  v49 = a4[6];
  v50 = a4[7];
  v51 = a4[8];
  *(v13 + 840) = *(a4 + 140);
  *(v13 + 812) = v50;
  *(v13 + 828) = v51;
  *(v13 + 796) = v49;
  *(v13 + 856) = *a5;
  *&v60 = v60 + 864;
  v52 = a1[1];
  v53 = v59 + *a1 - v52;
  sub_100093D24(a1, *a1, v52, v53);
  v54 = *a1;
  *a1 = v53;
  v55 = a1[2];
  v57 = v60;
  *(a1 + 1) = v60;
  *&v60 = v54;
  *(&v60 + 1) = v55;
  v58 = v54;
  v59 = v54;
  sub_100095214(&v58);
  return v57;
}

void sub_1000951E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v10 = *v7;
  if (*v7)
  {
    *(v8 + 96) = v10;
    operator delete(v10);
  }

  sub_100095214(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100095214(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 864;
    sub_1000720CC(i - 864);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100095264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      *v9 = *(a2 + v7);
      v10 = *(a2 + v7 + 16);
      v11 = *(a2 + v7 + 32);
      v12 = *(a2 + v7 + 48);
      *(v9 + 60) = *(a2 + v7 + 60);
      *(v9 + 32) = v11;
      *(v9 + 48) = v12;
      *(v9 + 16) = v10;
      v13 = *(a2 + v7 + 80);
      *(a4 + v7 + 88) = 0;
      v14 = (a4 + v7 + 88);
      *(v14 - 2) = v13;
      v14[1] = 0;
      v14[2] = 0;
      sub_10038EB38(v14, *(a2 + v7 + 88), *(a2 + v7 + 96), (*(a2 + v7 + 96) - *(a2 + v7 + 88)) >> 2);
      *(v9 + 112) = *(a2 + v7 + 112);
      v15 = *(a2 + v7 + 128);
      v16 = *(a2 + v7 + 144);
      v17 = *(a2 + v7 + 176);
      *(v9 + 160) = *(a2 + v7 + 160);
      *(v9 + 176) = v17;
      *(v9 + 128) = v15;
      *(v9 + 144) = v16;
      v18 = *(a2 + v7 + 192);
      v19 = *(a2 + v7 + 208);
      v20 = *(a2 + v7 + 240);
      *(v9 + 224) = *(a2 + v7 + 224);
      *(v9 + 240) = v20;
      *(v9 + 192) = v18;
      *(v9 + 208) = v19;
      v21 = *(a2 + v7 + 256);
      v22 = *(a2 + v7 + 272);
      v23 = *(a2 + v7 + 288);
      *(v9 + 300) = *(a2 + v7 + 300);
      *(v9 + 272) = v22;
      *(v9 + 288) = v23;
      *(v9 + 256) = v21;
      if (*(a2 + v7 + 343) < 0)
      {
        sub_100007244((v9 + 320), *(v8 + 320), *(a2 + v7 + 328));
      }

      else
      {
        v24 = *(v8 + 320);
        *(v9 + 336) = *(v8 + 336);
        *(v9 + 320) = v24;
      }

      v25 = a4 + v7;
      v26 = (a4 + v7 + 344);
      v27 = *(v8 + 344);
      v28 = *(v8 + 376);
      v26[1] = *(v8 + 360);
      v26[2] = v28;
      *v26 = v27;
      v29 = *(v8 + 392);
      v30 = *(v8 + 408);
      v31 = *(v8 + 440);
      v26[5] = *(v8 + 424);
      v26[6] = v31;
      v26[3] = v29;
      v26[4] = v30;
      v32 = *(v8 + 456);
      v33 = *(v8 + 472);
      v34 = *(v8 + 488);
      *(v25 + 504) = *(v8 + 504);
      v26[8] = v33;
      v26[9] = v34;
      v26[7] = v32;
      v35 = *(v8 + 512);
      v36 = *(v8 + 528);
      v37 = *(v8 + 560);
      *(v25 + 544) = *(v8 + 544);
      *(v25 + 560) = v37;
      *(v25 + 512) = v35;
      *(v25 + 528) = v36;
      v38 = *(v8 + 576);
      v39 = *(v8 + 592);
      v40 = *(v8 + 624);
      *(v25 + 608) = *(v8 + 608);
      *(v25 + 624) = v40;
      *(v25 + 576) = v38;
      *(v25 + 592) = v39;
      v41 = *(v8 + 640);
      v42 = *(v8 + 656);
      v43 = *(v8 + 672);
      *(v25 + 688) = *(v8 + 688);
      *(v25 + 656) = v42;
      *(v25 + 672) = v43;
      *(v25 + 640) = v41;
      *(v25 + 696) = *(v8 + 696);
      v44 = (a4 + v7 + 700);
      v45 = *(v8 + 716);
      *v44 = *(v8 + 700);
      v44[1] = v45;
      v46 = *(v8 + 732);
      v47 = *(v8 + 748);
      v48 = *(v8 + 780);
      v44[4] = *(v8 + 764);
      v44[5] = v48;
      v44[2] = v46;
      v44[3] = v47;
      v49 = *(v8 + 796);
      v50 = *(v8 + 812);
      v51 = *(v8 + 828);
      *(v44 + 140) = *(v8 + 840);
      v44[7] = v50;
      v44[8] = v51;
      v44[6] = v49;
      *(v25 + 856) = *(v8 + 856);
      v7 += 864;
    }

    while (v8 + 864 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_100095448(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + v2 + 88);
  if (v4)
  {
    *(v1 + v2 + 96) = v4;
    operator delete(v4);
  }

  if (v2)
  {
    v5 = v1 + v2 - 864;
    v6 = -v2;
    do
    {
      sub_1000720CC(v5);
      v5 -= 864;
      v6 += 864;
    }

    while (v6);
  }

  _Unwind_Resume(exception_object);
}

void sub_100095494(__int128 *a1, char *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v231 = (a2 - 864);
    v5 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v5;
          v6 = a2 - v5;
          v7 = 0x84BDA12F684BDA13 * ((a2 - v5) >> 5);
          if (v7 > 2)
          {
            switch(v7)
            {
              case 3uLL:
                sub_1006831B0(v5, (v5 + 54), v231);
                return;
              case 4uLL:
                sub_1006835D8(v5, (v5 + 54), (v5 + 108), v231);
                return;
              case 5uLL:
                sub_100683898(v5, (v5 + 54), (v5 + 108), (v5 + 162), v231);
                return;
            }
          }

          else
          {
            if (v7 < 2)
            {
              return;
            }

            if (v7 == 2)
            {
              if (sub_100682FBC(v231, v5))
              {
                sub_10068470C(v5, v231);
                v148 = *(v5 + 174);
                *(v5 + 174) = *(a2 - 42);
                *(a2 - 42) = v148;
                v149 = *(v5 + 780);
                *&v237[16] = *(v5 + 764);
                *v238 = v149;
                v150 = *(v5 + 748);
                v236 = *(v5 + 732);
                *v237 = v150;
                *(v240 + 12) = *(v5 + 840);
                v151 = *(v5 + 828);
                v239 = *(v5 + 812);
                v240[0] = v151;
                *&v238[16] = *(v5 + 796);
                v152 = *(v5 + 716);
                v234 = *(v5 + 700);
                v235 = v152;
                v153 = *(a2 - 148);
                *(v5 + 700) = *(a2 - 164);
                *(v5 + 716) = v153;
                v154 = *(a2 - 132);
                v155 = *(a2 - 116);
                v156 = *(a2 - 84);
                *(v5 + 764) = *(a2 - 100);
                *(v5 + 780) = v156;
                *(v5 + 732) = v154;
                *(v5 + 748) = v155;
                v157 = *(a2 - 68);
                v158 = *(a2 - 52);
                v159 = *(a2 - 36);
                *(v5 + 840) = *(a2 - 24);
                *(v5 + 812) = v158;
                *(v5 + 828) = v159;
                *(v5 + 796) = v157;
                v160 = v234;
                *(a2 - 148) = v235;
                *(a2 - 164) = v160;
                v161 = v236;
                v162 = *v237;
                v163 = *&v237[16];
                *(a2 - 84) = *v238;
                *(a2 - 100) = v163;
                *(a2 - 116) = v162;
                *(a2 - 132) = v161;
                v164 = *&v238[16];
                v165 = v239;
                v166 = v240[0];
                *(a2 - 24) = *(v240 + 12);
                *(a2 - 36) = v166;
                *(a2 - 52) = v165;
                *(a2 - 68) = v164;
                LOBYTE(v148) = *(v5 + 856);
                *(v5 + 856) = *(a2 - 8);
                *(a2 - 8) = v148;
              }

              return;
            }
          }

          if (v6 <= 20735)
          {
            if (a4)
            {
              if (v5 != a2)
              {
                v167 = (v5 + 54);
                if (v5 + 54 != a2)
                {
                  v168 = 0;
                  v169 = v5;
                  do
                  {
                    v170 = v167;
                    if (sub_100682FBC(v167, v169))
                    {
                      v234 = *v170;
                      v171 = v170[1];
                      v172 = v170[2];
                      v173 = v170[3];
                      *&v237[12] = *(v170 + 60);
                      v236 = v172;
                      *v237 = v173;
                      v235 = v171;
                      *v238 = *(v169 + 944);
                      *&v238[8] = *(v169 + 952);
                      *&v238[24] = *(v169 + 968);
                      *(v169 + 968) = 0;
                      *(v169 + 952) = 0u;
                      v174 = *(v169 + 976);
                      v175 = *(v169 + 992);
                      v176 = *(v169 + 1024);
                      v177 = *(v169 + 1040);
                      v240[1] = *(v169 + 1008);
                      v241 = v176;
                      v239 = v174;
                      v240[0] = v175;
                      v178 = *(v169 + 1056);
                      v179 = *(v169 + 1088);
                      v180 = *(v169 + 1104);
                      v244 = *(v169 + 1072);
                      v245 = v179;
                      v242 = v177;
                      v243 = v178;
                      v181 = *(v169 + 1120);
                      v182 = *(v169 + 1136);
                      *(v249 + 12) = *(v169 + 1164);
                      v183 = *(v169 + 1152);
                      v248 = v182;
                      v249[0] = v183;
                      v246 = v180;
                      v247 = v181;
                      __p = *(v169 + 1184);
                      v251 = *(v169 + 1200);
                      *(v169 + 1184) = 0;
                      *(v169 + 1200) = 0;
                      *(v169 + 1192) = 0;
                      v184 = *(v169 + 1352);
                      v260 = *(v169 + 1336);
                      v261 = v184;
                      v262 = *(v169 + 1368);
                      v185 = *(v169 + 1288);
                      v256 = *(v169 + 1272);
                      v257 = v185;
                      v186 = *(v169 + 1320);
                      v258 = *(v169 + 1304);
                      v259 = v186;
                      v187 = *(v169 + 1224);
                      v252 = *(v169 + 1208);
                      v253 = v187;
                      v188 = *(v169 + 1256);
                      v254 = *(v169 + 1240);
                      v255 = v188;
                      v189 = *(v169 + 1520);
                      v271 = *(v169 + 1504);
                      v272 = v189;
                      v273 = *(v169 + 1536);
                      v274 = *(v169 + 1552);
                      v190 = *(v169 + 1456);
                      v267 = *(v169 + 1440);
                      v268 = v190;
                      v191 = *(v169 + 1488);
                      v269 = *(v169 + 1472);
                      v270 = v191;
                      v192 = *(v169 + 1392);
                      v263 = *(v169 + 1376);
                      v264 = v192;
                      v193 = *(v169 + 1424);
                      v265 = *(v169 + 1408);
                      v266 = v193;
                      v275 = *(v169 + 1560);
                      v194 = *(v169 + 1676);
                      v282 = *(v169 + 1660);
                      v283 = v194;
                      *v284 = *(v169 + 1692);
                      *&v284[12] = *(v169 + 1704);
                      v195 = *(v169 + 1612);
                      v278 = *(v169 + 1596);
                      v279 = v195;
                      v196 = *(v169 + 1644);
                      v280 = *(v169 + 1628);
                      v281 = v196;
                      v197 = *(v169 + 1580);
                      v276 = *(v169 + 1564);
                      v277 = v197;
                      v198 = v168;
                      v285 = *(v169 + 1720);
                      while (1)
                      {
                        sub_100684ADC(v5 + v198 + 864, v5 + v198);
                        if (!v198)
                        {
                          break;
                        }

                        v199 = sub_100682FBC(&v234, v5 + v198 - 864);
                        v198 -= 864;
                        if (!v199)
                        {
                          v200 = v5 + v198 + 864;
                          goto LABEL_81;
                        }
                      }

                      v200 = v5;
LABEL_81:
                      sub_100684ADC(v200, &v234);
                      if (SHIBYTE(v251) < 0)
                      {
                        operator delete(__p);
                      }

                      if (*&v238[8])
                      {
                        *&v238[16] = *&v238[8];
                        operator delete(*&v238[8]);
                      }
                    }

                    v167 = (v170 + 54);
                    v168 += 864;
                    v169 = v170;
                  }

                  while (v170 + 54 != a2);
                }
              }
            }

            else if (v5 != a2)
            {
              v201 = (v5 + 54);
              if (v5 + 54 != a2)
              {
                do
                {
                  v202 = v201;
                  if (sub_100682FBC(v201, a1))
                  {
                    v234 = *v202;
                    v203 = v202[1];
                    v204 = v202[2];
                    v205 = v202[3];
                    *&v237[12] = *(v202 + 60);
                    v236 = v204;
                    *v237 = v205;
                    v235 = v203;
                    *v238 = *(a1 + 236);
                    *&v238[8] = *(a1 + 952);
                    *&v238[24] = *(a1 + 121);
                    *(a1 + 121) = 0;
                    *(a1 + 952) = 0u;
                    v206 = a1[61];
                    v207 = a1[62];
                    v208 = a1[64];
                    v209 = a1[65];
                    v240[1] = a1[63];
                    v241 = v208;
                    v239 = v206;
                    v240[0] = v207;
                    v210 = a1[66];
                    v211 = a1[68];
                    v212 = a1[69];
                    v244 = a1[67];
                    v245 = v211;
                    v242 = v209;
                    v243 = v210;
                    v213 = a1[70];
                    v214 = a1[71];
                    *(v249 + 12) = *(a1 + 1164);
                    v215 = a1[72];
                    v248 = v214;
                    v249[0] = v215;
                    v246 = v212;
                    v247 = v213;
                    __p = a1[74];
                    v251 = *(a1 + 150);
                    *(a1 + 148) = 0;
                    *(a1 + 150) = 0;
                    *(a1 + 149) = 0;
                    v216 = *(a1 + 1352);
                    v260 = *(a1 + 1336);
                    v261 = v216;
                    v262 = *(a1 + 342);
                    v217 = *(a1 + 1288);
                    v256 = *(a1 + 1272);
                    v257 = v217;
                    v218 = *(a1 + 1320);
                    v258 = *(a1 + 1304);
                    v259 = v218;
                    v219 = *(a1 + 1224);
                    v252 = *(a1 + 1208);
                    v253 = v219;
                    v220 = *(a1 + 1256);
                    v254 = *(a1 + 1240);
                    v255 = v220;
                    v221 = a1[95];
                    v271 = a1[94];
                    v272 = v221;
                    v273 = a1[96];
                    v274 = *(a1 + 388);
                    v222 = a1[91];
                    v267 = a1[90];
                    v268 = v222;
                    v223 = a1[93];
                    v269 = a1[92];
                    v270 = v223;
                    v224 = a1[87];
                    v263 = a1[86];
                    v264 = v224;
                    v225 = a1[89];
                    v265 = a1[88];
                    v266 = v225;
                    v275 = *(a1 + 390);
                    v226 = *(a1 + 1676);
                    v282 = *(a1 + 1660);
                    v283 = v226;
                    *v284 = *(a1 + 1692);
                    *&v284[12] = *(a1 + 1704);
                    v227 = *(a1 + 1612);
                    v278 = *(a1 + 1596);
                    v279 = v227;
                    v228 = *(a1 + 1644);
                    v280 = *(a1 + 1628);
                    v281 = v228;
                    v229 = *(a1 + 1580);
                    v276 = *(a1 + 1564);
                    v277 = v229;
                    v285 = *(a1 + 1720);
                    do
                    {
                      sub_100684ADC((a1 + 54), a1);
                      a1 -= 54;
                    }

                    while (sub_100682FBC(&v234, a1));
                    sub_100684ADC((a1 + 54), &v234);
                    if (SHIBYTE(v251) < 0)
                    {
                      operator delete(__p);
                    }

                    if (*&v238[8])
                    {
                      *&v238[16] = *&v238[8];
                      operator delete(*&v238[8]);
                    }
                  }

                  v201 = (v202 + 54);
                  a1 = v202;
                }

                while (v202 + 54 != a2);
              }
            }

            return;
          }

          if (!a3)
          {
            sub_100683C34(v5, a2, a2);
            return;
          }

          v8 = v7 >> 1;
          v9 = &v5[54 * (v7 >> 1)];
          if (v6 <= 0x1B000)
          {
            sub_1006831B0(&a1[54 * (v7 >> 1)], a1, v231);
          }

          else
          {
            sub_1006831B0(a1, &a1[54 * (v7 >> 1)], v231);
            v10 = 54 * v8;
            sub_1006831B0((a1 + 54), &a1[v10 - 54], (a2 - 1728));
            sub_1006831B0((a1 + 108), &a1[v10 + 54], (a2 - 2592));
            sub_1006831B0(&a1[v10 - 54], v9, &a1[v10 + 54]);
            sub_10068470C(a1, v9);
            v11 = *(a1 + 174);
            *(a1 + 174) = *(v9 + 696);
            *(v9 + 696) = v11;
            v12 = *(a1 + 780);
            *&v237[16] = *(a1 + 764);
            *v238 = v12;
            v13 = *(a1 + 748);
            v236 = *(a1 + 732);
            *v237 = v13;
            *(v240 + 12) = *(a1 + 840);
            v14 = *(a1 + 828);
            v239 = *(a1 + 812);
            v240[0] = v14;
            *&v238[16] = *(a1 + 796);
            v15 = *(a1 + 716);
            v234 = *(a1 + 700);
            v235 = v15;
            v16 = *(v9 + 716);
            *(a1 + 700) = *(v9 + 700);
            *(a1 + 716) = v16;
            v17 = *(v9 + 732);
            v18 = *(v9 + 748);
            v19 = *(v9 + 780);
            *(a1 + 764) = *(v9 + 764);
            *(a1 + 780) = v19;
            *(a1 + 732) = v17;
            *(a1 + 748) = v18;
            v20 = *(v9 + 796);
            v21 = *(v9 + 812);
            v22 = *(v9 + 828);
            *(a1 + 840) = *(v9 + 840);
            *(a1 + 812) = v21;
            *(a1 + 828) = v22;
            *(a1 + 796) = v20;
            v23 = v235;
            *(v9 + 700) = v234;
            *(v9 + 716) = v23;
            v24 = v236;
            v25 = *v237;
            v26 = *v238;
            *(v9 + 764) = *&v237[16];
            *(v9 + 780) = v26;
            *(v9 + 732) = v24;
            *(v9 + 748) = v25;
            v27 = *&v238[16];
            v28 = v239;
            v29 = v240[0];
            *(v9 + 840) = *(v240 + 12);
            *(v9 + 812) = v28;
            *(v9 + 828) = v29;
            *(v9 + 796) = v27;
            LOBYTE(v11) = *(a1 + 856);
            *(a1 + 856) = *(v9 + 856);
            *(v9 + 856) = v11;
          }

          --a3;
          if ((a4 & 1) != 0 || sub_100682FBC((a1 - 54), a1))
          {
            break;
          }

          v234 = *a1;
          v91 = a1[1];
          v92 = a1[2];
          v93 = a1[3];
          *&v237[12] = *(a1 + 60);
          v236 = v92;
          *v237 = v93;
          v235 = v91;
          *v238 = *(a1 + 20);
          *&v238[8] = *(a1 + 88);
          *&v238[24] = *(a1 + 13);
          *(a1 + 12) = 0;
          *(a1 + 13) = 0;
          *(a1 + 11) = 0;
          v239 = a1[7];
          v94 = a1[8];
          v95 = a1[9];
          v96 = a1[11];
          v241 = a1[10];
          v242 = v96;
          v240[0] = v94;
          v240[1] = v95;
          v97 = a1[12];
          v98 = a1[13];
          v99 = a1[15];
          v245 = a1[14];
          v246 = v99;
          v243 = v97;
          v244 = v98;
          v100 = a1[16];
          v101 = a1[17];
          v102 = a1[18];
          *(v249 + 12) = *(a1 + 300);
          v248 = v101;
          v249[0] = v102;
          v247 = v100;
          v103 = a1[20];
          v251 = *(a1 + 42);
          __p = v103;
          *(a1 + 41) = 0;
          *(a1 + 42) = 0;
          *(a1 + 40) = 0;
          v104 = *(a1 + 440);
          v106 = *(a1 + 392);
          v105 = *(a1 + 408);
          v257 = *(a1 + 424);
          v258 = v104;
          v255 = v106;
          v256 = v105;
          v107 = *(a1 + 344);
          v108 = *(a1 + 376);
          v253 = *(a1 + 360);
          v254 = v108;
          v252 = v107;
          v110 = *(a1 + 472);
          v109 = *(a1 + 488);
          v111 = *(a1 + 456);
          v262 = *(a1 + 126);
          v260 = v110;
          v261 = v109;
          v259 = v111;
          v112 = a1[32];
          v113 = a1[33];
          v114 = a1[35];
          v265 = a1[34];
          v266 = v114;
          v263 = v112;
          v264 = v113;
          v115 = a1[36];
          v116 = a1[37];
          v117 = a1[39];
          v269 = a1[38];
          v270 = v117;
          v267 = v115;
          v268 = v116;
          v118 = a1[40];
          v119 = a1[41];
          v120 = a1[42];
          v274 = *(a1 + 172);
          v272 = v119;
          v273 = v120;
          v271 = v118;
          v275 = *(a1 + 174);
          v121 = *(a1 + 716);
          v276 = *(a1 + 700);
          v277 = v121;
          v122 = *(a1 + 780);
          v124 = *(a1 + 732);
          v123 = *(a1 + 748);
          v280 = *(a1 + 764);
          v281 = v122;
          v278 = v124;
          v279 = v123;
          v126 = *(a1 + 812);
          v125 = *(a1 + 828);
          v127 = *(a1 + 796);
          *&v284[12] = *(a1 + 840);
          v283 = v126;
          *v284 = v125;
          v282 = v127;
          v285 = *(a1 + 856);
          if (sub_100682FBC(&v234, v231))
          {
            v5 = a1;
            do
            {
              v5 += 54;
            }

            while (!sub_100682FBC(&v234, v5));
          }

          else
          {
            v128 = (a1 + 54);
            do
            {
              v5 = v128;
              if (v128 >= a2)
              {
                break;
              }

              v129 = sub_100682FBC(&v234, v128);
              v128 = (v5 + 54);
            }

            while (!v129);
          }

          v130 = a2;
          if (v5 < a2)
          {
            v130 = a2;
            do
            {
              v130 -= 54;
            }

            while (sub_100682FBC(&v234, v130));
          }

          while (v5 < v130)
          {
            sub_10068470C(v5, v130);
            v131 = *(v5 + 174);
            *(v5 + 174) = *(v130 + 174);
            *(v130 + 174) = v131;
            v132 = *(v5 + 812);
            v292 = *(v5 + 796);
            v293 = v132;
            v294[0] = *(v5 + 828);
            *(v294 + 12) = *(v5 + 840);
            v133 = *(v5 + 748);
            v288 = *(v5 + 732);
            v289 = v133;
            v134 = *(v5 + 780);
            v290 = *(v5 + 764);
            v291 = v134;
            v135 = *(v5 + 716);
            v286 = *(v5 + 700);
            v287 = v135;
            v136 = *(v130 + 716);
            *(v5 + 700) = *(v130 + 700);
            *(v5 + 716) = v136;
            v137 = *(v130 + 732);
            v138 = *(v130 + 748);
            v139 = *(v130 + 780);
            *(v5 + 764) = *(v130 + 764);
            *(v5 + 780) = v139;
            *(v5 + 732) = v137;
            *(v5 + 748) = v138;
            v140 = *(v130 + 796);
            v141 = *(v130 + 812);
            v142 = *(v130 + 828);
            *(v5 + 840) = *(v130 + 840);
            *(v5 + 812) = v141;
            *(v5 + 828) = v142;
            *(v5 + 796) = v140;
            v143 = v293;
            *(v130 + 796) = v292;
            *(v130 + 812) = v143;
            *(v130 + 828) = v294[0];
            *(v130 + 840) = *(v294 + 12);
            v144 = v289;
            *(v130 + 732) = v288;
            *(v130 + 748) = v144;
            v145 = v291;
            *(v130 + 764) = v290;
            *(v130 + 780) = v145;
            v146 = v287;
            *(v130 + 700) = v286;
            *(v130 + 716) = v146;
            LOBYTE(v131) = *(v5 + 856);
            *(v5 + 856) = *(v130 + 856);
            *(v130 + 856) = v131;
            do
            {
              v5 += 54;
            }

            while (!sub_100682FBC(&v234, v5));
            do
            {
              v130 -= 54;
            }

            while (sub_100682FBC(&v234, v130));
          }

          if (v5 - 54 != a1)
          {
            sub_100684ADC(a1, (v5 - 54));
          }

          sub_100684ADC((v5 - 54), &v234);
          if (SHIBYTE(v251) < 0)
          {
            operator delete(__p);
          }

          if (*&v238[8])
          {
            *&v238[16] = *&v238[8];
            operator delete(*&v238[8]);
          }

          a4 = 0;
        }

        v30 = 0;
        v234 = *a1;
        v31 = a1[1];
        v32 = a1[2];
        v33 = a1[3];
        *&v237[12] = *(a1 + 60);
        v236 = v32;
        *v237 = v33;
        v235 = v31;
        *v238 = *(a1 + 20);
        *&v238[8] = *(a1 + 88);
        *&v238[24] = *(a1 + 13);
        *(a1 + 12) = 0;
        *(a1 + 13) = 0;
        *(a1 + 11) = 0;
        v239 = a1[7];
        v34 = a1[8];
        v35 = a1[9];
        v36 = a1[11];
        v241 = a1[10];
        v242 = v36;
        v240[0] = v34;
        v240[1] = v35;
        v37 = a1[12];
        v38 = a1[13];
        v39 = a1[15];
        v245 = a1[14];
        v246 = v39;
        v243 = v37;
        v244 = v38;
        v40 = a1[16];
        v41 = a1[17];
        v42 = a1[18];
        *(v249 + 12) = *(a1 + 300);
        v248 = v41;
        v249[0] = v42;
        v247 = v40;
        v43 = a1[20];
        v251 = *(a1 + 42);
        __p = v43;
        *(a1 + 41) = 0;
        *(a1 + 42) = 0;
        *(a1 + 40) = 0;
        v44 = *(a1 + 440);
        v46 = *(a1 + 392);
        v45 = *(a1 + 408);
        v257 = *(a1 + 424);
        v258 = v44;
        v255 = v46;
        v256 = v45;
        v47 = *(a1 + 344);
        v48 = *(a1 + 376);
        v253 = *(a1 + 360);
        v254 = v48;
        v252 = v47;
        v50 = *(a1 + 472);
        v49 = *(a1 + 488);
        v51 = *(a1 + 456);
        v262 = *(a1 + 126);
        v260 = v50;
        v261 = v49;
        v259 = v51;
        v52 = a1[32];
        v53 = a1[33];
        v54 = a1[35];
        v265 = a1[34];
        v266 = v54;
        v263 = v52;
        v264 = v53;
        v55 = a1[36];
        v56 = a1[37];
        v57 = a1[39];
        v269 = a1[38];
        v270 = v57;
        v267 = v55;
        v268 = v56;
        v58 = a1[40];
        v59 = a1[41];
        v60 = a1[42];
        v274 = *(a1 + 172);
        v272 = v59;
        v273 = v60;
        v271 = v58;
        v275 = *(a1 + 174);
        v61 = *(a1 + 716);
        v276 = *(a1 + 700);
        v277 = v61;
        v62 = *(a1 + 780);
        v64 = *(a1 + 732);
        v63 = *(a1 + 748);
        v280 = *(a1 + 764);
        v281 = v62;
        v278 = v64;
        v279 = v63;
        v66 = *(a1 + 812);
        v65 = *(a1 + 828);
        v67 = *(a1 + 796);
        *&v284[12] = *(a1 + 840);
        v283 = v66;
        *v284 = v65;
        v282 = v67;
        v285 = *(a1 + 856);
        do
        {
          v68 = sub_100682FBC(&a1[v30 + 54], &v234);
          v30 += 54;
        }

        while (v68);
        v69 = &a1[v30];
        v70 = a2;
        if (v30 == 54)
        {
          v70 = a2;
          do
          {
            if (v69 >= v70)
            {
              break;
            }

            v70 -= 864;
          }

          while (!sub_100682FBC(v70, &v234));
        }

        else
        {
          do
          {
            v70 -= 864;
          }

          while (!sub_100682FBC(v70, &v234));
        }

        if (v69 >= v70)
        {
          v89 = (v69 - 864);
        }

        else
        {
          v71 = &a1[v30];
          v72 = v70;
          do
          {
            sub_10068470C(v71, v72);
            v73 = *(v71 + 174);
            *(v71 + 174) = *(v72 + 696);
            *(v72 + 696) = v73;
            v74 = *(v71 + 812);
            v292 = *(v71 + 796);
            v293 = v74;
            v294[0] = *(v71 + 828);
            *(v294 + 12) = *(v71 + 840);
            v75 = *(v71 + 748);
            v288 = *(v71 + 732);
            v289 = v75;
            v76 = *(v71 + 780);
            v290 = *(v71 + 764);
            v291 = v76;
            v77 = *(v71 + 716);
            v286 = *(v71 + 700);
            v287 = v77;
            v78 = *(v72 + 716);
            *(v71 + 700) = *(v72 + 700);
            *(v71 + 716) = v78;
            v79 = *(v72 + 732);
            v80 = *(v72 + 748);
            v81 = *(v72 + 780);
            *(v71 + 764) = *(v72 + 764);
            *(v71 + 780) = v81;
            *(v71 + 732) = v79;
            *(v71 + 748) = v80;
            v82 = *(v72 + 796);
            v83 = *(v72 + 812);
            v84 = *(v72 + 828);
            *(v71 + 840) = *(v72 + 840);
            *(v71 + 812) = v83;
            *(v71 + 828) = v84;
            *(v71 + 796) = v82;
            v85 = v293;
            *(v72 + 796) = v292;
            *(v72 + 812) = v85;
            *(v72 + 828) = v294[0];
            *(v72 + 840) = *(v294 + 12);
            v86 = v289;
            *(v72 + 732) = v288;
            *(v72 + 748) = v86;
            v87 = v291;
            *(v72 + 764) = v290;
            *(v72 + 780) = v87;
            v88 = v287;
            *(v72 + 700) = v286;
            *(v72 + 716) = v88;
            LOBYTE(v73) = *(v71 + 856);
            *(v71 + 856) = *(v72 + 856);
            *(v72 + 856) = v73;
            do
            {
              v71 += 54;
            }

            while (sub_100682FBC(v71, &v234));
            do
            {
              v72 -= 864;
            }

            while (!sub_100682FBC(v72, &v234));
          }

          while (v71 < v72);
          v89 = v71 - 54;
        }

        if (v89 != a1)
        {
          sub_100684ADC(a1, v89);
        }

        sub_100684ADC(v89, &v234);
        if (SHIBYTE(v251) < 0)
        {
          operator delete(__p);
        }

        if (*&v238[8])
        {
          *&v238[16] = *&v238[8];
          operator delete(*&v238[8]);
        }

        if (v69 >= v70)
        {
          break;
        }

LABEL_41:
        sub_100095494(a1, v89, a3, a4 & 1);
        a4 = 0;
        v5 = v89 + 54;
      }

      v90 = sub_1006842B4(a1, v89);
      v5 = v89 + 54;
      if (sub_1006842B4((v89 + 54), a2))
      {
        break;
      }

      if (!v90)
      {
        goto LABEL_41;
      }
    }

    a2 = v89;
    if (!v90)
    {
      continue;
    }

    break;
  }
}

void sub_100096320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10056D2F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100096364(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = sub_1000081AC();

  return sub_1000963BC(a1, a2, a3, v6);
}

uint64_t sub_1000963BC(uint64_t a1, uint64_t a2, _OWORD *a3, double a4)
{
  v7 = a4 - *(a1 + 2264);
  if (*(a1 + 2280) != 1 || (v7 > 0.0 ? (v8 = v7 < 2.0) : (v8 = 0), !v8))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018C4718();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 2280);
      *buf = 67240448;
      LODWORD(v68) = v11;
      WORD2(v68) = 2050;
      *(&v68 + 6) = v7;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CellFlow, updateCellRefreshResults, fWaitForNewCellAfterAirplaneMode, %{public}d, airplaneModeDisableAgeSecs, %{public}f", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C4CC0((a1 + 2280), v7);
    }

LABEL_21:
    if (*(a1 + 2281) == 1)
    {
      if (sub_1000974F8(a2, a1 + 160))
      {
        v12 = sub_100073270(a3, a1);
        *(a1 + 2281) = v12;
        v13 = !v12;
      }

      else
      {
        *(a1 + 2281) = 0;
        v13 = 1;
      }
    }

    else
    {
      v13 = 1;
      *(a1 + 2281) = 1;
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018C4910();
    }

    v15 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 2281);
      v17 = sub_1000974F8(a2, a1 + 160);
      v18 = sub_10056CF60(a3, a1);
      *buf = 67240960;
      LODWORD(v68) = v16;
      WORD2(v68) = 1026;
      *(&v68 + 6) = v13 & 1;
      WORD5(v68) = 1026;
      HIDWORD(v68) = v17;
      v69 = 1026;
      v70 = v18;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "CellFlow, skipnotify, %{public}d, retval, %{public}d, cell, %{public}d, latlon, %{public}d,", buf, 0x1Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1018C4910();
      }

      v56 = qword_1025D4628;
      v57 = *(a1 + 2281);
      v60[0] = 67240960;
      v60[1] = v57;
      v61 = 1026;
      v62 = v13 & 1;
      v63 = 1026;
      v64 = sub_1000974F8(a2, a1 + 160);
      v65 = 1026;
      v66 = sub_10056CF60(a3, a1);
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v56, 2, "CellFlow, skipnotify, %{public}d, retval, %{public}d, cell, %{public}d, latlon, %{public}d,", v60, 26);
      v59 = v58;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellLocationRefresh::updateCellRefreshResults(const CLCell &, const CLDaemonLocation &, CFTimeInterval)", "%s\n", v58);
      if (v59 != buf)
      {
        free(v59);
      }
    }

    *(a1 + 160) = *a2;
    v19 = *(a2 + 16);
    v20 = *(a2 + 32);
    v21 = *(a2 + 48);
    *(a1 + 220) = *(a2 + 60);
    *(a1 + 192) = v20;
    *(a1 + 208) = v21;
    *(a1 + 176) = v19;
    *(a1 + 240) = *(a2 + 80);
    if (a1 + 160 != a2)
    {
      sub_100731D80((a1 + 248), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
    }

    *(a1 + 272) = *(a2 + 112);
    v22 = *(a2 + 128);
    v23 = *(a2 + 144);
    v24 = *(a2 + 176);
    *(a1 + 320) = *(a2 + 160);
    *(a1 + 336) = v24;
    *(a1 + 288) = v22;
    *(a1 + 304) = v23;
    v25 = *(a2 + 192);
    v26 = *(a2 + 208);
    v27 = *(a2 + 240);
    *(a1 + 384) = *(a2 + 224);
    *(a1 + 400) = v27;
    *(a1 + 352) = v25;
    *(a1 + 368) = v26;
    v28 = *(a2 + 256);
    v29 = *(a2 + 272);
    v30 = *(a2 + 288);
    *(a1 + 460) = *(a2 + 300);
    *(a1 + 432) = v29;
    *(a1 + 448) = v30;
    *(a1 + 416) = v28;
    std::string::operator=((a1 + 480), (a2 + 320));
    v32 = *(a2 + 360);
    v31 = *(a2 + 376);
    *(a1 + 504) = *(a2 + 344);
    *(a1 + 520) = v32;
    *(a1 + 536) = v31;
    v33 = *(a2 + 440);
    v35 = *(a2 + 392);
    v34 = *(a2 + 408);
    *(a1 + 584) = *(a2 + 424);
    *(a1 + 600) = v33;
    *(a1 + 552) = v35;
    *(a1 + 568) = v34;
    v37 = *(a2 + 472);
    v36 = *(a2 + 488);
    v38 = *(a2 + 456);
    *(a1 + 664) = *(a2 + 504);
    *(a1 + 632) = v37;
    *(a1 + 648) = v36;
    *(a1 + 616) = v38;
    v39 = *(a2 + 640);
    v40 = *(a2 + 656);
    v41 = *(a2 + 672);
    *(a1 + 848) = *(a2 + 688);
    *(a1 + 816) = v40;
    *(a1 + 832) = v41;
    *(a1 + 800) = v39;
    v42 = *(a2 + 576);
    v43 = *(a2 + 592);
    v44 = *(a2 + 624);
    *(a1 + 768) = *(a2 + 608);
    *(a1 + 784) = v44;
    *(a1 + 736) = v42;
    *(a1 + 752) = v43;
    v45 = *(a2 + 512);
    v46 = *(a2 + 528);
    v47 = *(a2 + 560);
    *(a1 + 704) = *(a2 + 544);
    *(a1 + 720) = v47;
    *(a1 + 672) = v45;
    *(a1 + 688) = v46;
    v48 = a3[1];
    *a1 = *a3;
    *(a1 + 16) = v48;
    v49 = a3[2];
    v50 = a3[3];
    v51 = a3[5];
    *(a1 + 64) = a3[4];
    *(a1 + 80) = v51;
    *(a1 + 32) = v49;
    *(a1 + 48) = v50;
    v52 = a3[6];
    v53 = a3[7];
    v54 = a3[8];
    *(a1 + 140) = *(a3 + 140);
    *(a1 + 112) = v53;
    *(a1 + 128) = v54;
    *(a1 + 96) = v52;
    return v13 & 1;
  }

  if (sub_10123EFA4(a2, a1 + 1552))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018C4718();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&v68 = v7;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "CellFlow, updateCellRefreshResults, using new cell after airplane mode, %{public}f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C4EBC();
    }

    *(a1 + 2280) = 0;
    goto LABEL_21;
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018C4718();
  }

  v14 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    *&v68 = v7;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "CellFlow, updateCellRefreshResults, ignoring cell from before airplane mode, %{public}f", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C4DD0();
  }

  AnalyticsSendEventLazy();
  v13 = 0;
  return v13 & 1;
}

uint64_t sub_100096990@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10003848C(v9);
  v4 = *(a1 + 4);
  if (v4 >= 3)
  {
    v5 = "Unknown";
    v6 = 7;
  }

  else
  {
    v5 = off_1024D8978[v4];
    v6 = qword_101D78708[v4];
  }

  sub_100038730(&v10, v5, v6);
  sub_100073518(v9, a2);
  v10 = v7;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100096B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10026C504(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100096B5C(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4620 != -1)
  {
    sub_101A60CCC();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v6 = a2;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "@CellFlow, outcome, %{public}s, UclpMetric", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A617A8();
  }

  return AnalyticsSendEventLazy();
}

NSDictionary *sub_100096C8C(uint64_t a1)
{
  v2[1] = @"outcome";
  v3[0] = @"na";
  v2[0] = @"trigger";
  v3[1] = [NSString stringWithUTF8String:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:2];
}

void sub_100096D2C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v14 = sub_100072814(a2);
  if (v14 && *(a2 + 20) > 0.0)
  {
    v16 = sub_100096EE4(a4, v14, a3, v15, a5);
    v18 = v17;
    if (v17)
    {
      v19 = v16;
      v20 = sub_10009795C(v16, 1, v8, v7, *(a3 + 8) == 6);
      sub_1001EC9FC(v20, a1, a2);
      sub_100065C94(a1 + 160, a3);
      *(a1 + 864) = a4;
      *(a1 + 872) = 1;
      *(a1 + 880) = v19;
      *(a1 + 888) = v18;
      if ((*(a1 + 904) & 1) == 0)
      {
        *(a1 + 904) = 1;
      }

      *(a1 + 896) = v7;
    }

    else
    {
      sub_10009795C(v16, 0, v8, v7, *(a3 + 8) == 6);
      if (*(a1 + 156) == 1)
      {
        *(a1 + 156) = 0;
      }

      if (*(a1 + 872) == 1)
      {
        *(a1 + 872) = 0;
      }

      if (*(a1 + 856) == 1)
      {
        if (*(a1 + 503) < 0)
        {
          operator delete(*(a1 + 480));
        }

        v21 = *(a1 + 248);
        if (v21)
        {
          *(a1 + 256) = v21;
          operator delete(v21);
        }

        *(a1 + 856) = 0;
      }

      if (*(a1 + 888) == 1)
      {
        *(a1 + 888) = 0;
      }

      if (*(a1 + 904) == 1)
      {
        *(a1 + 904) = 0;
      }
    }

    sub_10009709C(a1);
  }
}

uint64_t sub_100096EE4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = (a5 + 8);
  if (vabdd_f64(*(a5 + 8), a1) <= 6.0)
  {
    if (*(a5 + 16) == 1 && *(a3 + 8) == 6)
    {
      v12 = sub_10007513C(a3, a3);
      if (*(a5 + 24) == *v12 && *(a5 + 32) == *(v12 + 8) && *(a5 + 36) == *(v12 + 12) && *a5 >= 1)
      {
        *&result = *a5 * 4.879;
        return result;
      }
    }

    if (*(a5 + 17) == 1 && *(a3 + 8) == 10)
    {
      sub_100681E80(a3, a3);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A8AF54();
    }

    v7 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v8 = vabdd_f64(*v6, a1);
      v15 = 134349056;
      v16 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "ClxMetric,timingadvance,getTimingAdvanceIfRelevantToCurrentCellFix,stale TA, time delta, %{public}.2f, return", &v15, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A8AF90(v6, a1);
    }
  }

  *&result = 0.0;
  return result;
}

void sub_10009709C(_BYTE *result)
{
  if (result[156] == 1 && result[856] == 1 && result[888] == 1)
  {
    sub_100DC0024(result);

    sub_1001F2170(result);
  }
}

void *sub_100097108(void *result, uint64_t a2, double a3, double a4)
{
  if (result[346])
  {
    v7 = result;
    result[347] = a2;
    if (qword_1025D4620 != -1)
    {
      sub_101A60CCC();
    }

    v8 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136446466;
      v10 = a2;
      v11 = 2050;
      v12 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "CellFlow, timer, %{public}s, %{public}.0f", &v9, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A61890(a4);
    }

    v7[347] = a2;
    return sub_100073BF8(v7[346], a3 + a4);
  }

  return result;
}

uint64_t sub_10009722C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x4BDA12F684BDA1)
  {
    sub_10028C64C();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 5);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 5) >= 0x25ED097B425ED0)
  {
    v6 = 0x4BDA12F684BDA1;
  }

  else
  {
    v6 = v3;
  }

  v55 = a1;
  if (v6)
  {
    sub_100093CC8(a1, v6);
  }

  v7 = 864 * v2;
  v52 = 0;
  v53 = v7;
  v54 = 864 * v2;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  *(v7 + 60) = *(a2 + 60);
  *(v7 + 32) = v9;
  *(v7 + 48) = v10;
  *(v7 + 16) = v8;
  *v7 = *a2;
  *(v7 + 80) = *(a2 + 80);
  v11 = 864 * v2;
  *(v11 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  sub_10038EB38((v11 + 88), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
  *(v7 + 112) = *(a2 + 112);
  v12 = *(a2 + 128);
  v13 = *(a2 + 144);
  v14 = *(a2 + 176);
  *(v7 + 160) = *(a2 + 160);
  *(v7 + 176) = v14;
  *(v7 + 128) = v12;
  *(v7 + 144) = v13;
  v15 = *(a2 + 192);
  v16 = *(a2 + 208);
  v17 = *(a2 + 240);
  *(v7 + 224) = *(a2 + 224);
  *(v7 + 240) = v17;
  *(v7 + 192) = v15;
  *(v7 + 208) = v16;
  v18 = *(a2 + 256);
  v19 = *(a2 + 272);
  v20 = *(a2 + 288);
  *(v7 + 300) = *(a2 + 300);
  *(v7 + 272) = v19;
  *(v7 + 288) = v20;
  *(v7 + 256) = v18;
  if (*(a2 + 343) < 0)
  {
    sub_100007244((v7 + 320), *(a2 + 320), *(a2 + 328));
  }

  else
  {
    v21 = *(a2 + 320);
    *(v7 + 336) = *(a2 + 336);
    *(v7 + 320) = v21;
  }

  v22 = *(a2 + 344);
  v23 = *(a2 + 376);
  *(v7 + 360) = *(a2 + 360);
  *(v7 + 376) = v23;
  *(v7 + 344) = v22;
  v24 = *(a2 + 392);
  v25 = *(a2 + 408);
  v26 = *(a2 + 440);
  *(v7 + 424) = *(a2 + 424);
  *(v7 + 440) = v26;
  *(v7 + 392) = v24;
  *(v7 + 408) = v25;
  v27 = *(a2 + 456);
  v28 = *(a2 + 472);
  v29 = *(a2 + 488);
  *(v7 + 504) = *(a2 + 504);
  *(v7 + 472) = v28;
  *(v7 + 488) = v29;
  *(v7 + 456) = v27;
  v30 = *(a2 + 512);
  v31 = *(a2 + 528);
  v32 = *(a2 + 560);
  *(v7 + 544) = *(a2 + 544);
  *(v7 + 560) = v32;
  *(v7 + 512) = v30;
  *(v7 + 528) = v31;
  v33 = *(a2 + 576);
  v34 = *(a2 + 592);
  v35 = *(a2 + 624);
  *(v7 + 608) = *(a2 + 608);
  *(v7 + 624) = v35;
  *(v7 + 576) = v33;
  *(v7 + 592) = v34;
  v36 = *(a2 + 640);
  v37 = *(a2 + 656);
  v38 = *(a2 + 672);
  *(v7 + 688) = *(a2 + 688);
  *(v7 + 656) = v37;
  *(v7 + 672) = v38;
  *(v7 + 640) = v36;
  *(v7 + 696) = *(a2 + 696);
  v39 = *(a2 + 716);
  *(v7 + 700) = *(a2 + 700);
  *(v7 + 716) = v39;
  v40 = *(a2 + 732);
  v41 = *(a2 + 748);
  v42 = *(a2 + 780);
  *(v7 + 764) = *(a2 + 764);
  *(v7 + 780) = v42;
  *(v7 + 732) = v40;
  *(v7 + 748) = v41;
  v43 = *(a2 + 796);
  v44 = *(a2 + 812);
  v45 = *(a2 + 828);
  *(v7 + 840) = *(a2 + 840);
  *(v7 + 812) = v44;
  *(v7 + 828) = v45;
  *(v7 + 796) = v43;
  *(v7 + 856) = *(a2 + 856);
  *&v54 = v54 + 864;
  v46 = a1[1];
  v47 = v53 + *a1 - v46;
  sub_100093D24(a1, *a1, v46, v47);
  v48 = *a1;
  *a1 = v47;
  v49 = a1[2];
  v51 = v54;
  *(a1 + 1) = v54;
  *&v54 = v48;
  *(&v54 + 1) = v49;
  v52 = v48;
  v53 = v48;
  sub_100095214(&v52);
  return v51;
}

void sub_1000974CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v10 = *v7;
  if (*v7)
  {
    *(v8 + 96) = v10;
    operator delete(v10);
  }

  sub_100095214(va);
  _Unwind_Resume(a1);
}

BOOL sub_1000974F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 < 3)
  {
    goto LABEL_6;
  }

  if (v2 == 9)
  {
    if (*(a1 + 44) == *(a2 + 44) && *(a1 + 48) == *(a2 + 48) && *(a1 + 52) == *(a2 + 52))
    {
      v3 = *(a1 + 56);
      v4 = *(a2 + 56);
      return v3 == v4;
    }

    return 0;
  }

  if (v2 == 7)
  {
LABEL_6:
    if (*(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20))
    {
      v3 = *(a1 + 24);
      v4 = *(a2 + 24);
      return v3 == v4;
    }

    return 0;
  }

  if (v2 - 3 <= 2)
  {
    return sub_1006E0D20((a1 + 80), (a2 + 80));
  }

  if (v2 != 10)
  {
    if (v2 == 6 && *(a1 + 512) == *(a2 + 512) && *(a1 + 516) == *(a2 + 516) && *(a1 + 520) == *(a2 + 520))
    {
      v3 = *(a1 + 524);
      v4 = *(a2 + 524);
      return v3 == v4;
    }

    return 0;
  }

  if (*(a1 + 600) != *(a2 + 600) || *(a1 + 604) != *(a2 + 604) || *(a1 + 608) != *(a2 + 608))
  {
    return 0;
  }

  return *(a1 + 616) == *(a2 + 616);
}

void sub_10009763C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  CFAbsoluteTimeGetCurrent();

  sub_100097694((a1 + 2680), v6, v5, v4);
}

void sub_100097694(int32x4_t *a1, __int32 a2, unsigned int a3, unsigned int a4)
{
  v5.i32[0] = 1;
  v5.i32[1] = a2;
  v5.i64[1] = __PAIR64__(a4, a3);
  *a1 = vaddq_s32(*a1, v5);
  if (qword_1025D4620 != -1)
  {
    sub_10016157C();
  }

  v6 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v7 = a1->i32[0];
    v8 = a1->i32[1];
    v9 = a1->i32[2];
    v10 = a1->i32[3];
    *buf = 67240960;
    v25 = v7;
    v26 = 1026;
    v27 = v8;
    v28 = 1026;
    v29 = v9;
    v30 = 1026;
    v31 = v10;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "@Celltileusage, attempt, %{public}d, als, %{public}d, tiles, %{public}d, unknown, %{public}d", buf, 0x1Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_1018E906C();
    }

    v11 = a1->i32[0];
    v12 = a1->i32[1];
    v13 = a1->i32[2];
    v14 = a1->i32[3];
    v17[0] = 67240960;
    v17[1] = v11;
    v18 = 1026;
    v19 = v12;
    v20 = 1026;
    v21 = v13;
    v22 = 1026;
    v23 = v14;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "@Celltileusage, attempt, %{public}d, als, %{public}d, tiles, %{public}d, unknown, %{public}d", v17, 26);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 2, "void CLCellLocationMetrics::locationAttempt(int, int, int, CFAbsoluteTime)", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }
}

uint64_t *sub_100097884(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10009790C(result, a4);
  }

  return result;
}

void sub_1000978EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100093EE8(&a9);
  _Unwind_Resume(a1);
}

void sub_10009790C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x4BDA12F684BDA2)
  {
    sub_100093CC8(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_10009795C(uint64_t a1, int a2, int a3, char a4, int a5)
{
  if (qword_1025D4620 != -1)
  {
    sub_101A8AF54();
  }

  v8 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240704;
    v18 = a2;
    v19 = 1026;
    v20 = a3;
    v21 = 1026;
    v22 = a5;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "ClxMetric,timingadvance,isTAavailable,%{public}d,isRrcConnected,%{public}d, isLte,%{public}d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101A8AF68();
    }

    v12[0] = 67240704;
    v12[1] = a2;
    v13 = 1026;
    v14 = a3;
    v15 = 1026;
    v16 = a5;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "ClxMetric,timingadvance,isTAavailable,%{public}d,isRrcConnected,%{public}d, isLte,%{public}d", v12, 20);
    v11 = v10;
    sub_100152C7C("Generic", 1, 0, 2, "void CellTimingAdvanceMetrics::submitTimingAdvanceAvailabilityMetric(const BOOL, const BOOL, BOOL, BOOL)", "%s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  return AnalyticsSendEventLazy();
}

NSDictionary *sub_100097B88(unsigned __int8 *a1)
{
  v3[0] = @"available";
  v4[0] = [NSNumber numberWithBool:a1[32]];
  v3[1] = @"rrc_connected";
  v4[1] = [NSNumber numberWithBool:a1[33]];
  v3[2] = @"notified";
  v4[2] = [NSNumber numberWithBool:a1[34]];
  v3[3] = @"isLte";
  v4[3] = [NSNumber numberWithBool:a1[35]];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
}

uint64_t sub_100097C68(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 < 3)
  {
    goto LABEL_4;
  }

  if (v2 == 9)
  {
    v3 = *(a1 + 44);
    v4 = *(a1 + 48);
  }

  else
  {
    if (v2 == 7)
    {
LABEL_4:
      v3 = *(a1 + 12);
      v4 = *(a1 + 16);
      goto LABEL_5;
    }

    if (v2 - 3 > 2)
    {
      if (v2 == 10)
      {
        v3 = *(a1 + 600);
        v4 = *(a1 + 604);
      }

      else if (v2 == 6)
      {
        v3 = *(a1 + 512);
        v4 = *(a1 + 516);
      }

      else
      {
        if (qword_1025D48A0 != -1)
        {
          sub_101B7C774();
        }

        v9 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          sub_10123DED0(a1, __p);
          v10 = v12 >= 0 ? __p : *__p;
          *buf = 136315138;
          v14 = v10;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "CELL_LOC: which cell is that, %s", buf, 0xCu);
          if (v12 < 0)
          {
            operator delete(*__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B7CAE4(a1);
        }

        v4 = 0;
        v3 = 0;
      }
    }

    else
    {
      v8 = *(a1 + 88);
      if (*(a1 + 96) == v8)
      {
        v3 = 0xFFFF;
      }

      else
      {
        v3 = *v8;
      }

      v4 = *(a1 + 116);
    }
  }

LABEL_5:
  if (qword_1025D48A0 != -1)
  {
    sub_101B7C838();
  }

  v5 = v4 | (v3 << 16);
  v6 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *__p = 134217984;
    *&__p[4] = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CELL_LOC: sec_key, 0x%016llX", __p, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B7CC14(v5);
  }

  return v5;
}

id sub_100097E90(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v9 = [objc_msgSend(*(a1 - 88) "vendor")];

  return [v9 requestCellTileDownloadByType:a2 lat:a3 lon:a4 seckey:a5];
}

void sub_100097EF8(uint64_t a1, uint64_t a2, float a3)
{
  v5 = *(a2 + 4);
  LOBYTE(a3) = *(a2 + 1);
  v6 = LODWORD(a3);
  v7 = *(a2 + 28);
  v8 = *(a2 + 44);
  v9 = *(a2 + 32);
  if (*(a1 + 360) == 1)
  {
    v10 = *(a1 + 396);
    v11 = v10 * 2.56;
    if (*(a1 + 384) != 1 || v11 < (3600 * *(a1 + 388)))
    {
      v12 = *(a1 + 364) / 3600.0;
      v5 = (v12 * v11);
      v9 = v5 / v12;
      v8 = ((v5 - (v12 * ((v10 - 1) * 2.56))) / v12 * 1000000.0);
      v7 = 1.0 / (v12 * (*(a1 + 376) / 100.0));
      if (*(a1 + 372))
      {
        v6 = *(a1 + 376);
      }

      *(a1 + 396) = v10 + 1;
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  v15 = *(a2 + 48);
  v16 = *(a1 + 352);
  v17 = *(a1 + 653);
  if (v17 == 1)
  {
    if (*(a1 + 652))
    {
      v17 = 1;
    }

    else
    {
      sub_10026D1A4(a1);
      v17 = 0;
      *(a1 + 653) = 0;
    }
  }

  v18 = *(a1 + 664);
  v118 = v7;
  if (v8)
  {
    v19 = *(a1 + 352) + v8 / -1000000.0;
    v20 = *(a1 + 664);
    if (v17)
    {
      v20 = *(a1 + 664);
      if ((*(a1 + 652) & 1) == 0)
      {
        sub_10026D1A4(a1);
        *(a1 + 653) = 0;
        v20 = *(a1 + 664);
      }
    }

    v21 = v19 + v20;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = 1000000.0;
  v23 = sub_100023B30(v13, v14);
  v121 = v9;
  if ((v23 & 0x10000000) != 0)
  {
    v115 = *(a2 + 8);
  }

  else
  {
    v115 = 0;
  }

  v25 = v16 + v18;
  v26 = v15 / 1000000.0;
  v27 = v5;
  if ((sub_100023B30(v23, v24) & 0x10000000) != 0)
  {
    v28 = *(a2 + 12);
  }

  else
  {
    v28 = 0;
  }

  v29 = v16 - v26;
  v30 = v25 - v26;
  v31 = *(a2 + 40);
  memset(&buf[6], 0, 24);
  v32 = *(a2 + 2);
  v34 = *(a2 + 16);
  v33 = *(a2 + 20);
  v35 = *(a2 + 37);
  v36 = *(a2 + 38);
  v37 = *(a1 + 432);
  v38 = *(a1 + 440);
  v39 = v6 / 100.0;
  if (v37 >= v38)
  {
    v42 = *(a1 + 424);
    v43 = 0xD37A6F4DE9BD37A7 * ((v37 - v42) >> 3);
    v44 = v43 + 1;
    if (v43 + 1 > 0x1642C8590B21642)
    {
      sub_10028C64C();
    }

    v45 = 0xD37A6F4DE9BD37A7 * ((v38 - v42) >> 3);
    if (2 * v45 > v44)
    {
      v44 = 2 * v45;
    }

    if (v45 >= 0xB21642C8590B21)
    {
      v46 = 0x1642C8590B21642;
    }

    else
    {
      v46 = v44;
    }

    if (v46)
    {
      sub_100098A50(a1 + 424, v46);
    }

    v47 = 184 * v43;
    *v47 = v29;
    *(v47 + 8) = v30;
    *(v47 + 16) = v21;
    *(v47 + 24) = v27;
    *(v47 + 32) = 0;
    *(v47 + 40) = v39;
    *(v47 + 56) = 0;
    *(v47 + 64) = 0;
    *(v47 + 48) = 0;
    *(v47 + 72) = v115;
    *(v47 + 76) = v28;
    *(v47 + 80) = v118;
    *(v47 + 88) = v31;
    *(v47 + 96) = v121;
    *(v47 + 104) = 0;
    *(v47 + 112) = 0;
    *(v47 + 120) = 0;
    v48 = *buf;
    *(v47 + 136) = *&buf[14];
    *(v47 + 122) = v48;
    *(v47 + 152) = 0x1A00000000;
    *(v47 + 160) = v32;
    *(v47 + 164) = v34;
    *(v47 + 168) = v33;
    *(v47 + 172) = v35;
    *(v47 + 173) = v36;
    *(v47 + 174) = 0;
    *(v47 + 176) = 0;
    v41 = 184 * v43 + 184;
    v49 = *(a1 + 424);
    v50 = *(a1 + 432) - v49;
    v51 = v47 - v50;
    memcpy((v47 - v50), v49, v50);
    v52 = *(a1 + 424);
    *(a1 + 424) = v51;
    *(a1 + 432) = v41;
    *(a1 + 440) = 0;
    if (v52)
    {
      operator delete(v52);
    }
  }

  else
  {
    *v37 = v29;
    *(v37 + 8) = v30;
    *(v37 + 16) = v21;
    *(v37 + 24) = v27;
    *(v37 + 32) = 0;
    *(v37 + 40) = v39;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    *(v37 + 48) = 0;
    *(v37 + 72) = v115;
    *(v37 + 76) = v28;
    *(v37 + 80) = v118;
    *(v37 + 88) = v31;
    *(v37 + 96) = v121;
    *(v37 + 104) = 0;
    *(v37 + 112) = 0;
    *(v37 + 120) = 0;
    v40 = *buf;
    *(v37 + 136) = *&buf[14];
    *(v37 + 122) = v40;
    *(v37 + 152) = 0x1A00000000;
    *(v37 + 160) = v32;
    *(v37 + 164) = v34;
    *(v37 + 168) = v33;
    *(v37 + 172) = v35;
    *(v37 + 173) = v36;
    *(v37 + 174) = 0;
    v41 = v37 + 184;
    *(v37 + 176) = 0;
  }

  *(a1 + 432) = v41;
  v53 = *(a2 + 16);
  if (v53 || *(a2 + 20))
  {
    v54 = *(a1 + 352);
    if (*(a1 + 653) == 1 && (*(a1 + 652) & 1) == 0)
    {
      sub_10026D1A4(a1);
      *(a1 + 653) = 0;
      v53 = *(a2 + 16);
    }

    v55 = v54 + *(a1 + 664);
    v56 = *(a2 + 20);
    v57 = *(a2 + 36);
    v58 = *(a2 + 52);
    v59 = *(a2 + 56);
    LODWORD(v22) = *(a2 + 60);
    v60 = *(a1 + 859);
    v61 = *(a1 + 456);
    v62 = *(a1 + 464);
    if (v61 >= v62)
    {
      v64 = *(a1 + 448);
      v65 = (v61 - v64) >> 6;
      v66 = v65 + 1;
      if ((v65 + 1) >> 58)
      {
        sub_10028C64C();
      }

      v67 = v62 - v64;
      if (v67 >> 5 > v66)
      {
        v66 = v67 >> 5;
      }

      if (v67 >= 0x7FFFFFFFFFFFFFC0)
      {
        v68 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v68 = v66;
      }

      if (v68)
      {
        sub_100098AAC(a1 + 448, v68);
      }

      v69 = v65 << 6;
      *v69 = v54;
      *(v69 + 8) = v55;
      *(v69 + 16) = v53;
      *(v69 + 20) = v56;
      *(v69 + 24) = 0;
      *(v69 + 32) = 0;
      *(v69 + 40) = 0;
      *(v69 + 44) = v57;
      *(v69 + 48) = v59;
      *(v69 + 52) = 0;
      *(v69 + 54) = v58;
      *(v69 + 56) = LODWORD(v22);
      *(v69 + 60) = 0;
      *(v69 + 61) = v60;
      v63 = (v65 << 6) + 64;
      v70 = *(a1 + 448);
      v71 = *(a1 + 456) - v70;
      v72 = v69 - v71;
      memcpy((v69 - v71), v70, v71);
      v73 = *(a1 + 448);
      *(a1 + 448) = v72;
      *(a1 + 456) = v63;
      *(a1 + 464) = 0;
      if (v73)
      {
        operator delete(v73);
      }
    }

    else
    {
      *v61 = v54;
      *(v61 + 8) = v55;
      *(v61 + 16) = v53;
      *(v61 + 20) = v56;
      *(v61 + 24) = 0;
      *(v61 + 32) = 0;
      *(v61 + 40) = 0;
      *(v61 + 44) = v57;
      *(v61 + 48) = v59;
      *(v61 + 52) = 0;
      *(v61 + 54) = v58;
      *(v61 + 56) = LODWORD(v22);
      *(v61 + 60) = 0;
      v63 = v61 + 64;
      *(v61 + 61) = v60;
    }

    *(a1 + 456) = v63;
  }

  v74 = *(a2 + 52);
  v75 = *(a2 + 37);
  if (qword_1025D4270 != -1)
  {
    sub_101ADBE88();
  }

  v76 = qword_1025D4278;
  v77 = os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO);
  if (v77)
  {
    v22 = *(a1 + 352);
    LOBYTE(v79) = *(a2 + 1);
    v122 = *(a2 + 4);
    v116 = *(a2 + 12);
    v119 = *(a2 + 8);
    v111 = *(a2 + 20);
    v112 = *(a2 + 16);
    v80 = v79 / 100.0;
    v81 = *(a2 + 28);
    v82 = *(a2 + 32);
    v83 = *(a2 + 36);
    if (*(a1 + 653) == 1 && (*(a1 + 652) & 1) == 0)
    {
      sub_10026D1A4(a1);
      *(a1 + 653) = 0;
    }

    v84 = v22 + *(a1 + 664);
    v85 = *(a2 + 40);
    v86 = *(*(a1 + 432) - 168);
    v87 = *(a2 + 44);
    v88 = sub_100023B30(v77, v78);
    v89 = *(a1 + 364);
    v273 = v89 > 0;
    v277 = *(a1 + 388);
    *&buf[14] = v122;
    v205 = v119;
    v207 = v116;
    v209 = v112;
    v211 = v111;
    v217 = v83;
    v225 = v86;
    v227 = v87;
    v229 = (v88 >> 28) & 1;
    v231 = *(a2 + 2);
    v233 = *(a2 + 3);
    v235 = v74 & 1;
    v237 = (v74 >> 12) & 1;
    v239 = (v74 >> 2) & 1;
    v241 = (v74 >> 8) & 1;
    v243 = (v74 >> 9) & 1;
    v245 = (v74 >> 10) & 1;
    v247 = (v74 >> 11) & 1;
    v253 = v75 & 1;
    v257 = (v75 >> 2) & 1;
    v261 = (v75 >> 4) & 1;
    v265 = (v75 >> 6) & 1;
    v269 = *(a2 + 38);
    v90 = *(a2 + 60);
    v91 = *(a2 + 56);
    *&buf[4] = v22;
    *&buf[20] = v80;
    v213 = v81;
    v221 = v84;
    v223 = v85;
    v249 = v91;
    v251 = *(a2 + 54);
    v255 = (v75 >> 1) & 1;
    v259 = (v75 >> 3) & 1;
    v263 = (v75 >> 5) & 1;
    v267 = v75 >> 7;
    *&buf[18] = 2048;
    v212 = 2048;
    v214 = 2048;
    v218 = 2048;
    v220 = 2048;
    v222 = 2048;
    v224 = 2048;
    v248 = 2048;
    v270 = 2048;
    v275 = v89;
    *&buf[12] = 1024;
    *&buf[28] = 1024;
    v206 = 1024;
    v208 = 1024;
    v210 = 1024;
    v216 = 1024;
    v226 = 1024;
    v228 = 1024;
    v230 = 1024;
    v232 = 1024;
    v234 = 1024;
    v236 = 1024;
    v238 = 1024;
    v240 = 1024;
    v242 = 1024;
    v244 = 1024;
    v246 = 1024;
    v250 = 1024;
    v252 = 1024;
    v254 = 1024;
    v256 = 1024;
    v258 = 1024;
    v260 = 1024;
    v262 = 1024;
    v264 = 1024;
    v266 = 1024;
    v268 = 1024;
    v272 = 1024;
    v274 = 1024;
    v276 = 1024;
    *buf = 134227968;
    v215 = v82;
    v219 = Current;
    v271 = v90;
    _os_log_impl(dword_100000000, v76, OS_LOG_TYPE_INFO, "Timestamp,%f,StepCount,%d,Stride,%0.2f,Ascended,%d,Descended,%d,ElevationUp,%d,ElevationDown,%d,Pace,%f,ActiveTime,%f,DeltaSteps,%d,locationdGpsTime,%20.20f,startTime,%f,currentCadence,%f,FirstStepTime,%f,RelativeTimeOfLastStep,%d,FloorCountingSupported,%d,pedometerArmConstrainedState,%d,FlightState,%d,FlightFailResetUnknown,%d,FlightFailResetWater,%d,FlightFailResetFrozen,%d,FlightFailInOutTrans,%u,FlightFailElevDelta,%u,FlightFailStepsPerElevRate,%u,FlightsFailElevRate,%u,PressureAmplitude,%f,PressureTemperature,%hd,FalseStepDetectorAccelPoseXHigh,%u,FalseStepDetectorAccelVarXYZLow,%u,FalseStepDetectorGyroNumSamplesSufficient,%u,FalseStepDetectorGyroVarXHigh,%u,FalseStepDetectorConsecutiveRequirement,%u,IsVehicularLowConfidence,%u,IsVehicularHighConfidence,%u,FalseStepDetectorConsistentStepsProtection,%u,FalseStepsSuppressed,%u,AverageFilteredPressure,%f,StepCountCurrentlySimulated,%d,DefaultStepsPerHour,%i,DefaultStepDurationHours,%i", buf, 0x11Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4270 != -1)
    {
      sub_101AD9E64();
    }

    v123 = qword_1025D4278;
    v94 = *(a1 + 352);
    LOBYTE(v22) = *(a2 + 1);
    v117 = *(a2 + 8);
    v120 = *(a2 + 4);
    v95 = *(a2 + 12);
    v96 = *(a2 + 16);
    v97 = *(a2 + 20);
    v98 = *(a2 + 28);
    v99 = *(a2 + 32);
    v100 = *(a2 + 36);
    if (*(a1 + 653) == 1 && (*(a1 + 652) & 1) == 0)
    {
      sub_10026D1A4(a1);
      *(a1 + 653) = 0;
    }

    v101 = *(a1 + 664);
    v102 = *(a2 + 40);
    v103 = *(*(a1 + 432) - 168);
    v104 = *(a2 + 44);
    v105 = sub_100023B30(v92, v93);
    v106 = *(a1 + 364);
    v199 = v106 > 0;
    v203 = *(a1 + 388);
    v159 = *(a2 + 3);
    v163 = (v74 >> 12) & 1;
    v167 = (v74 >> 8) & 1;
    v171 = (v74 >> 10) & 1;
    v179 = v75 & 1;
    v183 = (v75 >> 2) & 1;
    v187 = (v75 >> 4) & 1;
    v191 = (v75 >> 6) & 1;
    v195 = *(a2 + 38);
    v107 = *(a2 + 60);
    v175 = *(a2 + 56);
    v127 = v120;
    v131 = v117;
    v133 = v95;
    v135 = v96;
    v137 = v97;
    v143 = v100;
    v151 = v103;
    v153 = v104;
    v155 = (v105 >> 28) & 1;
    v157 = *(a2 + 2);
    v161 = v74 & 1;
    v165 = (v74 >> 2) & 1;
    v169 = (v74 >> 9) & 1;
    v173 = (v74 >> 11) & 1;
    v177 = *(a2 + 54);
    v181 = (v75 >> 1) & 1;
    v185 = (v75 >> 3) & 1;
    v189 = (v75 >> 5) & 1;
    v193 = v75 >> 7;
    v128 = 2048;
    v138 = 2048;
    v140 = 2048;
    v144 = 2048;
    v146 = 2048;
    v148 = 2048;
    v150 = 2048;
    v174 = 2048;
    v196 = 2048;
    v201 = v106;
    v126 = 1024;
    v130 = 1024;
    v132 = 1024;
    v134 = 1024;
    v136 = 1024;
    v142 = 1024;
    v152 = 1024;
    v154 = 1024;
    v156 = 1024;
    v158 = 1024;
    v160 = 1024;
    v162 = 1024;
    v164 = 1024;
    v166 = 1024;
    v168 = 1024;
    v170 = 1024;
    v172 = 1024;
    v176 = 1024;
    v178 = 1024;
    v180 = 1024;
    v182 = 1024;
    v184 = 1024;
    v186 = 1024;
    v188 = 1024;
    v190 = 1024;
    v192 = 1024;
    v194 = 1024;
    v198 = 1024;
    v200 = 1024;
    v202 = 1024;
    v124 = 134227968;
    v125 = v94;
    v129 = *&v22 / 100.0;
    v139 = v98;
    v141 = v99;
    v145 = Current;
    v147 = v94 + v101;
    v149 = v102;
    v197 = v107;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v123, 1, "Timestamp,%f,StepCount,%d,Stride,%0.2f,Ascended,%d,Descended,%d,ElevationUp,%d,ElevationDown,%d,Pace,%f,ActiveTime,%f,DeltaSteps,%d,locationdGpsTime,%20.20f,startTime,%f,currentCadence,%f,FirstStepTime,%f,RelativeTimeOfLastStep,%d,FloorCountingSupported,%d,pedometerArmConstrainedState,%d,FlightState,%d,FlightFailResetUnknown,%d,FlightFailResetWater,%d,FlightFailResetFrozen,%d,FlightFailInOutTrans,%u,FlightFailElevDelta,%u,FlightFailStepsPerElevRate,%u,FlightsFailElevRate,%u,PressureAmplitude,%f,PressureTemperature,%hd,FalseStepDetectorAccelPoseXHigh,%u,FalseStepDetectorAccelVarXYZLow,%u,FalseStepDetectorGyroNumSamplesSufficient,%u,FalseStepDetectorGyroVarXHigh,%u,FalseStepDetectorConsecutiveRequirement,%u,IsVehicularLowConfidence,%u,IsVehicularHighConfidence,%u,FalseStepDetectorConsistentStepsProtection,%u,FalseStepsSuppressed,%u,AverageFilteredPressure,%f,StepCountCurrentlySimulated,%d,DefaultStepsPerHour,%i,DefaultStepDurationHours,%i", COERCE_DOUBLE(&v124), 282, v110, v111, LODWORD(Current), v114, v120, *&v123);
    v109 = v108;
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMotionCoprocessor::visitStepCountUpdate(const CMMotionCoprocessorReply::StepCountUpdate *)", "%s\n", v108);
    if (v109 != buf)
    {
      free(v109);
    }
  }
}

void sub_100098A50(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1642C8590B21643)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_100098AAC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_100098AF4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 1272);
  if (v2)
  {
    v3 = a2[1];
    v4 = *a2;
    v5 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(v2 + 16))(v2, &v4);
    if (v5)
    {
      sub_100008080(v5);
    }
  }
}

void sub_100098B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100098B6C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_1000A46CC;
  v6[3] = &unk_10246F7B8;
  v5 = *a2;
  v4 = a2[1];
  v6[4] = v2;
  v6[5] = v5;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v3 async:v6];
  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_100098C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100008080(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100098C24(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100098C78(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 1256);
  if (v2)
  {
    v3 = a2[1];
    v4 = *a2;
    v5 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(v2 + 16))(v2, &v4);
    if (v5)
    {
      sub_100008080(v5);
    }
  }
}

void sub_100098CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100098CF0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_100099164;
  v6[3] = &unk_1024E2898;
  v5 = *a2;
  v4 = a2[1];
  v6[4] = v2;
  v6[5] = v5;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v3 async:v6];
  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_100098D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100008080(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100098DA8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

int64x2_t *sub_100098DC4(int64x2_t *result, const char *a2)
{
  v2 = **a2;
  if (v2 != *(*a2 + 8))
  {
    v4 = result;
    do
    {
      memset(__src, 0, 328);
      v5 = v4[18].i64[0];
      if (v5)
      {
        objc_msgSend_updateEntryDistanceAndPace_(v5);
      }

      v11[0] = 1;
      if (sub_10000608C(v4, v11, 1))
      {
        v12 = 1;
        memcpy(v11, __src, 0x148uLL);
        v6 = (*(v4->i64[0] + 152))(v4, &v12, v11, 1, 0xFFFFFFFFLL, 0);
        v8 = sub_1000A23E0(v6, v7);
        sub_100099DAC(v8, &__src[14], &__src[14] + 8);
      }

      v9 = sub_100099E44(v4 + 150, __src);
      sub_10009C564(v4, v9);
      v10.n128_u64[0] = *(v2 + 8);
      result = sub_1000A20A4(&v4[27].i64[1], v10);
      v2 += 184;
    }

    while (v2 != *(*a2 + 8));
  }

  return result;
}

BOOL sub_100098F5C(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current < 441763200.0 || Current > 3628972800.0)
  {
    if ((byte_1026630B4 & 1) == 0)
    {
      byte_1026630B4 = 1;
    }

    if (qword_1025D4200 != -1)
    {
      sub_101B0ADA8();
    }

    v5 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      v7 = 68289282;
      v8 = 2082;
      v9 = "";
      v10 = 1026;
      v11 = Current;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CL database error, CFAbsoluteTimeGetCurrent:%{public}d}", &v7, 0x18u);
      if (qword_1025D4200 != -1)
      {
        sub_101B0ADBC();
      }
    }

    v6 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      v7 = 68289282;
      v8 = 2082;
      v9 = "";
      v10 = 1026;
      v11 = Current;
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CL database error", "{msg%{public}.0s:CL database error, CFAbsoluteTimeGetCurrent:%{public}d}", &v7, 0x18u);
    }

    return 0;
  }

  byte_1026630B4 = 0;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  return sub_100023B68(v3);
}

void sub_100099164(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4[0] = a1[5];
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100098DC4(v2, v4);
  if (v3)
  {

    sub_100008080(v3);
  }
}

void sub_1000991D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009924C(uint64_t a1, int *a2, const void *a3, int a4, int a5)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = *a2;
    v9 = a1 + 64;
    do
    {
      if (*(v6 + 32) >= v8)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < v8));
    }

    while (v6);
    if (v9 == v7 || v8 < *(v9 + 32))
    {
LABEL_9:
      v12 = v13;
      memset(v13, 0, 32);
      sub_100248B84(buf, a2, &v12);
      sub_10047D8C8(v7 - 8, buf);
    }

    if (a4)
    {
      operator new();
    }

    v10 = *(v9 + 72);
    *(v9 + 64) = 0;
    *(v9 + 72) = 0;
    if (v10)
    {
      sub_100008080(v10);
    }

    if (*(v9 + 56))
    {
      sub_10009D84C(a3);
    }
  }
}

void sub_100099724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_101865570(va);
  sub_101864718(v16 - 144);
  _Unwind_Resume(a1);
}

id sub_100099750(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_10137B824(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_100099BA8(a1);
    }

    else
    {
      return 0;
    }
  }
}

void sub_1000997EC(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v39 = v9;
        v10 = sub_100099750(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v38 = v16;
              sub_10009D900(a1, &v38, &v39, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v39 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 28) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 28) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 7))
                {
                  do
                  {
                    v28 = *(v24 + 28);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v38 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_101BD3BF4();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v45 = v19;
                v46 = 1026;
                v47 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_101BD3BF4();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 7);
                v40 = 136446466;
                v41 = v33;
                v42 = 1026;
                v43 = v34;
                LODWORD(v37) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 17, "%{public}s; unknown client %{public}d", &v40, v37);
                v36 = v35;
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLStepCountNotifier_Type::Notification, CLStepCountNotifier_Type::NotificationData>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLStepCountNotifier_Type::Notification, NotificationData_T = CLStepCountNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
                if (v36 != buf)
                {
                  free(v36);
                }
              }
            }
          }

          while (v11 != (v39 + 48));
        }
      }
    }
  }
}

id sub_100099BA8(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101BD686C();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101D81897 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101BD6A78();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101BD686C();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101D81897 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101BD6B74();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

void sub_100099DAC(dispatch_queue_t *a1, uint64_t a2, uint64_t a3)
{
  dispatch_assert_queue_not_V2(*a1);
  v6 = *a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D9F8;
  block[3] = &unk_10245D2F0;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  dispatch_sync(v6, block);
}

int64x2_t *sub_100099E44(int64x2_t *a1, uint64_t a2)
{
  if (qword_1025D4270 != -1)
  {
    sub_101A3472C();
  }

  v4 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a2 + 8);
    v5 = *(a2 + 16);
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    v10 = *(a2 + 64);
    v9 = *(a2 + 72);
    v11 = *(a2 + 56);
    v12 = *(a2 + 192);
    v13 = *(a2 + 200);
    v14 = *(a2 + 224);
    v15 = *(a2 + 208);
    v16 = *(a2 + 216);
    v17 = *(a2 + 88);
    v18 = *(a2 + 104);
    v19 = *(a2 + 24);
    v20 = *(a2 + 168);
    *buf = 134221824;
    v24 = v5;
    v25 = 2048;
    v26 = v6;
    v27 = 1024;
    v28 = v7;
    v29 = 2048;
    v30 = v8;
    v31 = 2048;
    v32 = v9;
    v33 = 2048;
    v34 = v11;
    v35 = 2048;
    v36 = v10;
    v37 = 2048;
    v38 = v12;
    v39 = 2048;
    v40 = v13;
    v41 = 2048;
    v42 = v15;
    v43 = 1024;
    v44 = v14;
    v45 = 2048;
    v46 = v16;
    v47 = 2048;
    v48 = v17;
    v49 = 2048;
    v50 = v18;
    v51 = 2048;
    v52 = v19;
    v53 = 1024;
    v54 = v20;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "StepCount, %f, %f, %d, %f, %f, %f, %f, %f, %f, %f, %u, %f, %f, %f, %f, %d", buf, 0x96u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A34740(a2);
  }

  sub_10009A074(a1, a2);
  a1[49].i64[1] = a1[49].i64[0];
  while (a1[31].i64[1])
  {
    v21 = *(*(a1[29].i64[1] + ((a1[31].i64[0] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (a1[31].i64[0] & 0x1FF));
    if (a1[28].i64[1] == 1)
    {
      if (!sub_100C467C0(a1, a1[49].i64, v21))
      {
        return a1 + 49;
      }
    }

    else if (!sub_10009DB18(a1, a1[49].i64, v21))
    {
      return a1 + 49;
    }

    a1[31] = vaddq_s64(a1[31], xmmword_101C66230);
    sub_1000A2BE8(a1[29].i64, 1);
  }

  return a1 + 49;
}

uint64_t sub_10009A074(void *a1, double *a2)
{
  sub_100C497B8(a1 + 64, a2);
  v7 = *(a2 + 2);
  sub_1000A2B60(a1 + 58, &v7);
  v4 = (*(*a1[80] + 40))(a1[80], *&v7);
  v4.n128_u64[0] = v7;
  sub_10009CE08((a1 + 64), v4);
  v5.n128_u64[0] = v7;
  sub_1000A2418((a1 + 81), v5);
  result = sub_10009DABC(a1);
  if (result)
  {
    return sub_1005540B8(a1[80]);
  }

  return result;
}

void *sub_10009A114(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = *(a1 + 104);
  *(a1 + 104) = a2.n128_u64[0];
  v5 = a2.n128_f64[0] > 0.0;
  if (v4 <= a2.n128_f64[0])
  {
    v5 = 0;
  }

  *(a1 + 120) = v5;
  if (v5)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1019E9DB0();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 104);
      v9 = *(a1 + 121);
      *buf = 136316162;
      v38 = v7;
      v39 = 2048;
      v40 = v8 - v4;
      v41 = 2048;
      v42 = v4;
      v43 = 2048;
      v44 = v8;
      v45 = 1024;
      v46 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1019E9DC4();
      }

      v21 = *(a1 + 8);
      v22 = *(a1 + 104);
      v23 = *(a1 + 121);
      v27 = 136316162;
      v28 = v21;
      v29 = 2048;
      v30 = v22 - v4;
      v31 = 2048;
      v32 = v4;
      v33 = 2048;
      v34 = v22;
      v35 = 1024;
      v36 = v23;
      LODWORD(v26) = 48;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", &v27, v26);
      v25 = v24;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNatalieInput<CLOdometerEntry>::update(CFAbsoluteTime) [Data_T = CLOdometerEntry]", "%s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  if (*(a1 + 80) == 1 && (*(a1 + 121) & 1) == 0 && (*(a1 + 88) < v2 || *(a1 + 120) == 1) && (*(*a1 + 72))(a1))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = (v11 + 8 * (v10 / 0x15));
  if (v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = (*v13 + 192 * (v10 % 0x15));
  }

  v15 = (v11 + 8 * (v10 / 0x15));
LABEL_19:
  v16 = v14;
  while (1)
  {
    v17 = v12 == v11 ? 0 : *(v11 + 8 * ((*(a1 + 64) + v10) / 0x15)) + 192 * ((*(a1 + 64) + v10) % 0x15);
    if (v16 == v17 || vabdd_f64(*(a1 + 104), *v16) <= 1200.0)
    {
      break;
    }

    v16 += 24;
    v14 += 192;
    if ((*v15 + 4032) == v14)
    {
      v18 = v15[1];
      ++v15;
      v14 = v18;
      goto LABEL_19;
    }
  }

  if (v12 == v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = (*v13 + 192 * (v10 % 0x15));
  }

  return sub_10009CB8C((a1 + 24), v13, v19, v15, v14);
}