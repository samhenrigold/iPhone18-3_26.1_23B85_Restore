uint64_t sub_239496E3C(uint64_t a1, uint64_t *a2, uint64_t **a3)
{
  v51 = *MEMORY[0x277D85DE8];
  if (*(a1 + 176) == 1)
  {
    if (*a3)
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 5540;
      v38 = 0;
      v39 = 0;
      v6 = (*(**a2 + 16))();
      switch(v6)
      {
        case 1:
          v16 = sub_2394953AC(*a2);
          *(v16 + 96) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
          v12 = (v16 + 64);
          break;
        case 2:
          v15 = sub_239495304(*a2);
          *(v15 + 128) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
          v12 = (v15 + 96);
          break;
        case 4:
          v7 = sub_2394954A8(*a2);
          v8 = sub_2394A7FC0(*(a1 + 32), *(v7 + 24));
          if (v8)
          {
            v9 = *(v8 + 8);
            v10 = *(v7 + 44);
            *v44 = (v9 >> 8) | 0xFD00000000000000;
            v34 = sub_2393CFE14(5, 64, v44, v10 | (v9 << 24));
            v35 = v11;
            v36 = 1;
            v37 = 5540;
            v38 = 0;
            v12 = &v34;
            v39 = 0;
            break;
          }

          v13 = 0x1A100000000;
          goto LABEL_10;
        default:
          v13 = 0x1B800000000;
          v14 = 172;
          return v14 | v13;
      }

      sub_2393D9BEC(*a3, v11);
      v17 = *a3;
      v33 = v17;
      if (!v17)
      {
        v18 = 444;
        v19 = 47;
        goto LABEL_68;
      }

      if (*v17)
      {
        v18 = 445;
        v19 = 24;
LABEL_67:
        sub_2393D96C8(v17);
        goto LABEL_68;
      }

      if ((*(**a2 + 16))() == 4)
      {
        sub_2393D0378(v44);
        v32 = 0;
        if (sub_2393D03DC(v44))
        {
          v20 = 0;
          do
          {
            sub_2393D049C(v44, v50, 0x10uLL);
            if (sub_2393D067C(v44))
            {
              if (sub_2393D0574(v44))
              {
                sub_2393D0448(v44, buf);
                v32 = *buf;
                if (!sub_2393D0B8C(&v32, v40))
                {
                  v21 = sub_2393D9044(1u);
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315138;
                    v49 = v50;
                    _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_INFO, "Interface %s has a link local address", buf, 0xCu);
                  }

                  if (sub_2393D5398(3u))
                  {
                    sub_2393D5320(1, 3, "Interface %s has a link local address", v50);
                  }

                  sub_2393D9ED8(&v33, &v31);
                  if (!v31)
                  {
                    v19 = 47;
                    v18 = 468;
                    goto LABEL_65;
                  }

                  if (*v31)
                  {
                    sub_2393D96C8(v31);
                    v19 = 24;
                    v18 = 469;
                    goto LABEL_65;
                  }

                  v38 = v32;
                  v22 = *(a1 + 248);
                  if (v22)
                  {
                    if (sub_23949BF4C(v22))
                    {
                      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315138;
                        v49 = v50;
                        _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "Failed to send Multicast message on interface %s", buf, 0xCu);
                      }

                      if (sub_2393D5398(1u))
                      {
                        sub_2393D5320(1, 1, "Failed to send Multicast message on interface %s");
                      }
                    }

                    else
                    {
                      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                      {
                        *buf = 136315138;
                        v49 = v50;
                        _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_INFO, "Successfully send Multicast message on interface %s", buf, 0xCu);
                      }

                      if (sub_2393D5398(3u))
                      {
                        sub_2393D5320(1, 3, "Successfully send Multicast message on interface %s");
                      }
                    }
                  }

                  if (v31)
                  {
                    sub_2393D96C8(v31);
                  }

                  v12 = &v34;
                  v20 = 1;
                }
              }
            }
          }

          while ((sub_2393D03DC(v44) & 1) != 0);
          if ((v20 & 1) == 0)
          {
            goto LABEL_47;
          }

          v18 = 0;
          v19 = 0;
LABEL_65:
          sub_2393D0384(v44);
LABEL_66:
          v17 = v33;
          if (v33)
          {
            goto LABEL_67;
          }

LABEL_68:
          v13 = v18 << 32;
          v14 = v19;
          return v14 | v13;
        }

LABEL_47:
        v23 = sub_2393D9044(1u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *v50 = 0;
          _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "No valid Interface found.. Sending to the default one.. ", v50, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(1, 1, "No valid Interface found.. Sending to the default one.. ");
        }

        sub_2393D0384(v44);
      }

      v24 = *(a1 + 248);
      if (v24)
      {
        v25 = sub_23949BF4C(v24);
        v19 = v25;
        v18 = HIDWORD(v25);
        if (v25)
        {
          memset(v47, 0, sizeof(v47));
          v45 = 0u;
          v46 = 0u;
          *v44 = 0u;
          sub_2393E97D4(v12, v44, 0x4CuLL);
          v26 = sub_2393D9044(1u);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = sub_2393C9138();
            *v40 = 136315394;
            v41 = v44;
            v42 = 2080;
            v43 = v27;
            _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_ERROR, "SendMessage() to %s failed: %s", v40, 0x16u);
          }

          if (sub_2393D5398(1u))
          {
            v28 = sub_2393C9138();
            sub_2393D5320(1, 1, "SendMessage() to %s failed: %s", v44, v28);
          }
        }
      }

      else
      {
        v29 = sub_2393D9044(1u);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *v44 = 0;
          _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_ERROR, "The transport manager is not initialized. Unable to send the message", v44, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(1, 1, "The transport manager is not initialized. Unable to send the message");
        }

        v19 = 3;
        v18 = 515;
      }

      goto LABEL_66;
    }

    v13 = 0x19600000000;
LABEL_10:
    v14 = 47;
    return v14 | v13;
  }

  v13 = 0x19500000000;
  v14 = 3;
  return v14 | v13;
}

uint64_t sub_23949750C(uint64_t a1, unint64_t *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(1u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *a2;
    v6 = HIDWORD(*a2);
    v7 = *(a2 + 8);
    *buf = 67109632;
    *&buf[4] = v6;
    LOWORD(v11) = 1024;
    *(&v11 + 2) = v5;
    HIWORD(v11) = 1024;
    v12 = v7;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "Expiring all sessions for node <%08X%08X, %d>!!", buf, 0x14u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(1, 3, "Expiring all sessions for node <%08X%08X, %d>!!", HIDWORD(*a2), *a2, *(a2 + 8));
  }

  *buf = a2;
  v11 = &v9;
  return sub_2393D6A10((a1 + 128), buf, sub_23949B29C);
}

uint64_t sub_239497630(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(1u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "Expiring all sessions for fabric 0x%x!!", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(1, 3, "Expiring all sessions for fabric 0x%x!!", a2);
  }

  v7 = a2;
  *buf = &v7;
  v9 = &v6;
  return sub_2393D6A10((a1 + 128), buf, sub_23949B310);
}

uint64_t sub_23949772C(uint64_t a1, unint64_t *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(1u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *a2;
    v6 = HIDWORD(*a2);
    v7 = *(a2 + 8);
    *buf = 67109632;
    *&buf[4] = v6;
    v18 = 1024;
    v19 = v5;
    v20 = 1024;
    v21 = v7;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "Expiring all sessions to peer <%08X%08X, %d> that are on the same logical fabric!!", buf, 0x14u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(1, 3, "Expiring all sessions to peer <%08X%08X, %d> that are on the same logical fabric!!", HIDWORD(*a2), *a2, *(a2 + 8));
  }

  *buf = &unk_284BB9138;
  v8 = sub_2394A7FC0(*(a1 + 32), *(a2 + 8));
  v15 = v8;
  if (v8)
  {
    v14[0] = sub_2394A7848(v8, buf);
    v14[1] = v9;
    if (LODWORD(v14[0]))
    {
      sub_2395350F4();
    }

    v16[0] = a1;
    v16[1] = v14;
    v16[2] = buf;
    v16[3] = &v15;
    v16[4] = a2;
    v16[5] = &v13;
    sub_2393D6A10((a1 + 128), v16, sub_23949B348);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v11 = 0x10500000000;
    v10 = 113;
  }

  return v11 | v10;
}

uint64_t sub_2394978D0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v15 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(1u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = v2;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "Expiring all sessions on the same logical fabric as fabric 0x%x!!", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(1, 3, "Expiring all sessions on the same logical fabric as fabric 0x%x!!", v2);
  }

  *buf = &unk_284BB9138;
  v5 = sub_2394A7FC0(*(a1 + 32), v2);
  v12 = v5;
  if (v5)
  {
    v11[0] = sub_2394A7848(v5, buf);
    v11[1] = v6;
    if (LODWORD(v11[0]))
    {
      sub_23953518C();
    }

    v13[0] = a1;
    v13[1] = v11;
    v13[2] = buf;
    v13[3] = &v12;
    v13[4] = &v10;
    sub_2393D6A10((a1 + 128), v13, sub_23949B45C);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v8 = 0x13900000000;
    v7 = 113;
  }

  return v8 | v7;
}

uint64_t sub_239497A44(uint64_t a1)
{
  v2 = sub_2393D9044(1u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Expiring all PASE sessions", v4, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(1, 3, "Expiring all PASE sessions");
  }

  return sub_2393D6A10((a1 + 128), &v5, sub_23949B55C);
}

uint64_t sub_239497AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return sub_2393D6A10((a1 + 128), v4, sub_23949B5AC);
}

uint64_t sub_239497B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return sub_2393D6A10((a1 + 128), v4, sub_23949B690);
}

void *sub_239497B60@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(result + 44) == 1)
  {
    return sub_239493F20((result + 13), a2, *a3, a3[1], a4);
  }

  *a4 = 0;
  return result;
}

unint64_t sub_239497B84(uint64_t a1, void **a2, __int16 a3, uint64_t a4, __int16 a5, char a6, __int128 *a7, int a8)
{
  sub_239476008(&v34);
  v30 = sub_239476060();
  LOWORD(v31) = v16;
  if (v34 == 1)
  {
    v17 = sub_238DD173C(&v34, v16);
  }

  else
  {
    v17 = &v30;
  }

  LOBYTE(v29) = a6;
  sub_239493D5C((a1 + 104), 1, a3, 0, a4, 0, 0, a5, v32, v29, v17);
  if (v32[0] == 1)
  {
    v19 = sub_238EA9094(v32, v18);
    v20 = sub_239495304(*v19);
    v21 = *a7;
    *(v20 + 112) = *(a7 + 4);
    *(v20 + 96) = v21;
    *(v20 + 116) = *(a7 + 5);
    *(v20 + 120) = *(a7 + 3);
    v30 = "Test secret for key derivation.";
    v31 = 32;
    v22 = *(a1 + 40);
    v34 = 0;
    v35 = 0;
    v23 = sub_23949148C(v20 + 176, v22, &v30, &v34, 0, a8);
    if (v23)
    {
      v24 = v23 & 0xFFFFFFFF00000000;
    }

    else
    {
      *(v20 + 264) = 2;
      *(v20 + 272) = 0;
      *(v20 + 280) = 0;
      v34 = v20 + 280;
      LODWORD(v35) = 0;
      sub_2393F030C(&v34, 0x20uLL);
      v27 = sub_238EA9094(v32, v26);
      sub_239495C6C(a2, v27);
      LODWORD(v23) = 0;
      v24 = 0;
    }

    v25 = v23;
    if (v32[0])
    {
      (*(*v33 + 32))(v33);
    }
  }

  else
  {
    v24 = 0x25F00000000;
    v25 = 11;
  }

  return v24 | v25;
}

unint64_t sub_239497D54(uint64_t a1, void **a2, __int16 a3, __int16 a4, uint64_t a5, uint64_t a6, char a7, __int128 *a8, unsigned __int8 a9, uint64_t a10)
{
  v18 = *a10;
  v19 = *(a10 + 8);
  sub_239476008(&v38);
  v34 = sub_239476060();
  LOWORD(v35) = v20;
  if (v38 == 1)
  {
    v21 = sub_238DD173C(&v38, v20);
  }

  else
  {
    v21 = &v34;
  }

  LOBYTE(v33) = a7;
  sub_239493D5C((a1 + 104), 2, a3, a5, a6, v18, v19, a4, v36, v33, v21);
  if (v36[0] == 1)
  {
    v23 = sub_238EA9094(v36, v22);
    v24 = sub_239495304(*v23);
    v25 = *a8;
    *(v24 + 112) = *(a8 + 4);
    *(v24 + 96) = v25;
    *(v24 + 116) = *(a8 + 5);
    *(v24 + 120) = *(a8 + 3);
    v34 = "Test secret for key derivation.";
    v35 = 32;
    v26 = *(a1 + 40);
    v38 = 0;
    v39 = 0;
    v27 = sub_23949148C(v24 + 176, v26, &v34, &v38, 0, a9);
    if (v27)
    {
      v28 = v27 & 0xFFFFFFFF00000000;
    }

    else
    {
      *(v24 + 264) = 2;
      *(v24 + 272) = 0;
      *(v24 + 280) = 0;
      v38 = v24 + 280;
      LODWORD(v39) = 0;
      sub_2393F030C(&v38, 0x20uLL);
      v31 = sub_238EA9094(v36, v30);
      sub_239495C6C(a2, v31);
      LODWORD(v27) = 0;
      v28 = 0;
    }

    v29 = v27;
    if (v36[0])
    {
      (*(*v37 + 32))(v37);
    }
  }

  else
  {
    v28 = 0x27400000000;
    v29 = 11;
  }

  return v28 | v29;
}

void sub_239497F3C(uint64_t a1, __int128 *a2, uint64_t **a3, const void **a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (sub_2394BE758(&v11, a3))
  {
    v8 = sub_2393D9044(1u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_2393C9138();
      *buf = 136315138;
      v18 = v9;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failed to decode packet header: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v10 = sub_2393C9138();
      sub_2393D5320(1, 1, "Failed to decode packet header: %s", v10);
    }
  }

  else if (v15 || BYTE2(v15))
  {
    if (BYTE2(v15) == 1)
    {
      sub_2394980C4(a1, &v11, a2, a3);
    }

    else
    {
      sub_239498AD8(a1, &v11, a2, a3, a4);
    }
  }

  else
  {
    sub_239499444(a1, &v11, a2, a3, a4);
  }
}

void sub_2394980C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v73 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    *&buf[4] = "SessionManager";
    *&buf[12] = 2080;
    *&buf[14] = "Group Message Dispatch";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v9 = (*a4)[2];
  v62[0] = 0;
  v63 = 0;
  v66 = 0;
  v65 = 16;
  v64 = -1;
  v58 = 0;
  v59[0] = 0;
  v59[16] = 0;
  v59[32] = 0;
  v60 = 0;
  v61 = 0;
  v57 = 0;
  v10 = sub_2394B4FC8();
  if (v10)
  {
    v11 = *(a2 + 47);
    if ((v11 & 2) != 0)
    {
      if (*(a2 + 46) != 1 || ((~v11 & 5) != 0 || (*(a2 + 48) & 0x40) == 0) && ((~v11 & 6) != 0 || (*(a2 + 48) & 0x40) != 0))
      {
        v23 = sub_2393D9044(1u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "Invalid condition found in packet header", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(1, 1, "Invalid condition found in packet header");
        }
      }

      else
      {
        v53 = 0;
        v56 = 0;
        v12 = (*(*v10 + 216))(v10, *(a2 + 44));
        if (v12)
        {
          v13 = v12;
          v14 = (*a4)[3];
          v15 = (*(a2 + 44) | *(a2 + 46)) != 0;
          if (v14 < 16 * ((*(a2 + 44) | *(a2 + 46)) != 0) || (v16 = 16 * ((*(a2 + 44) | *(a2 + 46)) != 0), v17 = (*a4)[1], v52 = 0, sub_2394BF070(&v72, a2, (v17 + v14 - v16), 16 * v15, &v52)) || v52 != v16)
          {
LABEL_64:
            (*(*v13 + 32))(v13);
            goto LABEL_35;
          }

          if ((*(*v13 + 24))(v13, &v53))
          {
            do
            {
              *&buf[8] = 0u;
              v68 = 0u;
              v70 = 0;
              v71 = v56;
              sub_2393D9ED8(a4, v44);
              if (v57)
              {
                sub_2393D96C8(v57);
              }

              v57 = *v44;
              if (!*v44)
              {
                v27 = sub_2393D9044(1u);
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  *v44 = 0;
                  _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_ERROR, "Failed to clone Groupcast message buffer. Discarding.", v44, 2u);
                }

                if (sub_2393D5398(1u))
                {
LABEL_62:
                  sub_2393D5320(1, 1, "Failed to clone Groupcast message buffer. Discarding.");
                }

LABEL_63:
                sub_239491488(buf);
                goto LABEL_64;
              }

              v18 = *(a2 + 48);
              v19 = sub_23949A5FC(a2, &v58, v62, v18 >> 7, &v57, &v72, &v53);
              v20 = v19;
              if ((v18 & 0x80) == 0 || v19)
              {
                sub_239491488(buf);
                if (v20)
                {
LABEL_48:
                  (*(*v13 + 32))(v13);
                  if (*a4)
                  {
                    sub_2393D96C8(*a4);
                  }

                  *a4 = v57;
                  v57 = 0;
                  if (BYTE2(v60) != 1 || (~HIBYTE(v60) & 5) != 0 || (v61 & 0x40) == 0)
                  {
                    if ((v65 & 4) != 0)
                    {
                      v34 = sub_2393D9044(1u);
                      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_238DAE000, v34, OS_LOG_TYPE_ERROR, "Unexpected ACK requested for group message", buf, 2u);
                      }

                      if (sub_2393D5398(1u))
                      {
                        sub_2393D5320(1, 1, "Unexpected ACK requested for group message");
                      }
                    }

                    else
                    {
                      v51 = 0;
                      v28 = sub_23949631C(byte_27DF796D0);
                      v29 = v54;
                      v31 = sub_238DE36B8(v59, v30);
                      if (sub_23949200C(v28, v29, *v31, (v61 >> 6) & 1, &v51))
                      {
                        v32 = sub_2393D9044(1u);
                        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_238DAE000, v32, OS_LOG_TYPE_ERROR, "Group Counter Tables full or invalid NodeId/FabricIndex after decryption of message, dropping everything", buf, 2u);
                        }

                        if (sub_2393D5398(1u))
                        {
                          sub_2393D5320(1, 1, "Group Counter Tables full or invalid NodeId/FabricIndex after decryption of message, dropping everything");
                        }
                      }

                      else if (v55)
                      {
                        v35 = sub_2393D9044(1u);
                        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_238DAE000, v35, OS_LOG_TYPE_ERROR, "Received Group Msg with key policy Cache and Sync, but MCSP is not implemented", buf, 2u);
                        }

                        if (sub_2393D5398(1u))
                        {
                          sub_2393D5320(1, 1, "Received Group Msg with key policy Cache and Sync, but MCSP is not implemented");
                        }
                      }

                      else if (sub_23949A7B0(v51, v58))
                      {
                        v36 = sub_2393D9044(1u);
                        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                        {
                          v37 = sub_2393C9138();
                          *buf = 136315138;
                          *&buf[4] = v37;
                          _os_log_impl(&dword_238DAE000, v36, OS_LOG_TYPE_ERROR, "Message counter verify failed, err = %s", buf, 0xCu);
                        }

                        if (sub_2393D5398(1u))
                        {
                          sub_2393C9138();
                          sub_2393D5320(1, 1, "Message counter verify failed, err = %s");
                        }
                      }

                      else
                      {
                        sub_23949AAA4(v51, v58);
                        if (*(a1 + 232))
                        {
                          v39 = v53;
                          v40 = v54;
                          v41 = *sub_238DE36B8(v59, v38);
                          v45[0] = v45;
                          v45[1] = v45;
                          v47 = 0;
                          v48 = 0;
                          *v44 = &unk_284BBC090;
                          v49 = v39;
                          v50 = v41;
                          v46 = v40;
                          *buf = 0;
                          *&buf[8] = v62;
                          *&buf[16] = &v58;
                          *&v68 = v44;
                          *(&v68 + 1) = a3;
                          sub_238DB6950(&v69, (*a4)[1], (*a4)[2]);
                          v70 = v9;
                          sub_23948BB30(buf);
                          v42 = *(a1 + 232);
                          *buf = v44;
                          (*(*v44 + 24))(v44);
                          (*(*v42 + 16))(v42, &v58, v62, buf, 1, a4);
                          (*(**buf + 32))(*buf);
                          sub_23949B23C(v44);
                        }

                        else
                        {
                          v43 = sub_2393D9044(1u);
                          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 0;
                            _os_log_impl(&dword_238DAE000, v43, OS_LOG_TYPE_ERROR, "Received GROUP message was not processed.", buf, 2u);
                          }

                          if (sub_2393D5398(1u))
                          {
                            sub_2393D5320(1, 1, "Received GROUP message was not processed.");
                          }
                        }
                      }
                    }
                  }

                  goto LABEL_35;
                }
              }

              else
              {
                sub_2393D9ED8(a4, v44);
                if (v57)
                {
                  sub_2393D96C8(v57);
                }

                v57 = *v44;
                if (!*v44)
                {
                  v33 = sub_2393D9044(1u);
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                  {
                    *v44 = 0;
                    _os_log_impl(&dword_238DAE000, v33, OS_LOG_TYPE_ERROR, "Failed to clone Groupcast message buffer. Discarding.", v44, 2u);
                  }

                  if (sub_2393D5398(1u))
                  {
                    goto LABEL_62;
                  }

                  goto LABEL_63;
                }

                v21 = sub_23949A5FC(a2, &v58, v62, 0, &v57, &v72, &v53);
                sub_239491488(buf);
                if (v21)
                {
                  goto LABEL_48;
                }
              }
            }

            while (((*(*v13 + 24))(v13, &v53) & 1) != 0);
          }

          (*(*v13 + 32))(v13);
          v22 = sub_2393D9044(1u);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "Failed to decrypt group message. Discarding everything", buf, 2u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(1, 1, "Failed to decrypt group message. Discarding everything");
          }
        }

        else
        {
          v26 = sub_2393D9044(1u);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_ERROR, "Failed to retrieve Groups iterator. Discarding everything", buf, 2u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(1, 1, "Failed to retrieve Groups iterator. Discarding everything");
          }
        }
      }
    }
  }

LABEL_35:
  v24 = v57;
  if (v57)
  {
    sub_2393D96C8(v57);
  }

  v25 = sub_23948B4CC(v24);
  if (os_signpost_enabled(v25))
  {
    *buf = 136315394;
    *&buf[4] = "SessionManager";
    *&buf[12] = 2080;
    *&buf[14] = "Group Message Dispatch";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v25, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }
}

void sub_239498AD8(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4, const void **a5)
{
  v74 = *MEMORY[0x277D85DE8];
  v10 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v10))
  {
    *buf = 136315394;
    *v69 = "SessionManager";
    *&v69[8] = 2080;
    *&v69[10] = "Secure Unicast Message Dispatch";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (*(a3 + 16) != 3 || *a5)
  {
    sub_239494B78(a1 + 104, *(a2 + 44), v66);
    if ((v66[0] & 1) == 0)
    {
      v24 = sub_2393D9044(1u);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a2 + 44);
        *buf = 67109120;
        *v69 = v25;
        _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "Data received on an unknown session (LSID=%d). Dropping it!", buf, 8u);
      }

      v23 = sub_2393D5398(1u);
      if (v23)
      {
        sub_2393D5320(1, 1, "Data received on an unknown session (LSID=%d). Dropping it!");
      }

      goto LABEL_58;
    }

    v12 = sub_238EA9094(v66, v11);
    v13 = sub_239495304(*v12);
    v62 = *a3;
    v14 = *(a3 + 5);
    v63 = *(a3 + 4);
    v64 = v14;
    v65 = *(a3 + 3);
    if (!sub_2393CFBB4(&v62))
    {
      v64 = 0;
    }

    if (!sub_2394BF148(v13 + 96, &v62))
    {
      *(v13 + 96) = v62;
      v16 = v64;
      *(v13 + 112) = v63;
      *(v13 + 116) = v16;
      *(v13 + 120) = v65;
    }

    if (*(a3 + 16) != 3)
    {
      goto LABEL_34;
    }

    v17 = *(v13 + 32);
    if (v17)
    {
      v18 = sub_2393E967C(v17, v15);
      if (v18)
      {
        v19 = v18;
        v20 = *a5;
        if (v18 != *a5)
        {
          v21 = sub_2393D9044(1u);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v69 = v19;
            *&v69[8] = 2048;
            *&v69[10] = v20;
            _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "Unicast data received over %p for wrong connection %p. Dropping it!", buf, 0x16u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(1, 1, "Unicast data received over %p for wrong connection %p. Dropping it!", v19, *a5);
          }

          v23 = sub_2393E9744(v19, v22);
          goto LABEL_58;
        }

        sub_2393E9744(v18, v15);
LABEL_34:
        v28 = *(*a4 + 16);
        v57[0] = 0;
        v58 = 0;
        v61 = 0;
        v60 = 16;
        v59 = -1;
        if (*(a2 + 48) < 0)
        {
          v31 = sub_2393D9044(1u);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v31, OS_LOG_TYPE_ERROR, "Dropping secure unicast message with privacy flag set", buf, 2u);
          }

          v23 = sub_2393D5398(1u);
          if (v23)
          {
            sub_2393D5320(1, 1, "Dropping secure unicast message with privacy flag set");
          }

          goto LABEL_58;
        }

        v51 = 0;
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v23 = sub_2394BE94C(&v51, a4);
        if (!v23)
        {
          if (!*a4)
          {
            v32 = sub_2393D9044(1u);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_238DAE000, v32, OS_LOG_TYPE_ERROR, "Secure transport received Unicast NULL packet, discarding", buf, 2u);
            }

            v23 = sub_2393D5398(1u);
            if (v23)
            {
              sub_2393D5320(1, 1, "Secure transport received Unicast NULL packet, discarding");
            }

            goto LABEL_58;
          }

          if (*(v13 + 56) != 3 && ((*(*v13 + 40))(v13) & 1) == 0)
          {
            v29 = *(v13 + 56);
            if (v29 != 4)
            {
              v40 = sub_2393D9044(1u);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                v41 = sub_2394930D8(v13, v29);
                *buf = 136315138;
                *v69 = v41;
                _os_log_impl(&dword_238DAE000, v40, OS_LOG_TYPE_ERROR, "Secure transport received message on a session in an invalid state (state = '%s')", buf, 0xCu);
              }

              v23 = sub_2393D5398(1u);
              if (v23)
              {
                sub_2394930D8(v13, *(v13 + 56));
                sub_2393D5320(1, 1, "Secure transport received message on a session in an invalid state (state = '%s')");
              }

              goto LABEL_58;
            }
          }

          if (*(v13 + 57) == 2)
          {
            v30 = *(v13 + 72);
          }

          else
          {
            v30 = 0;
          }

          sub_2394917A8(v73, v56, v51, v30);
          if (sub_239492A50(v13 + 176, v73, v57, &v51, a4))
          {
            v33 = sub_2393D9044(1u);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_238DAE000, v33, OS_LOG_TYPE_ERROR, "Secure transport received message, but failed to decode/authenticate it, discarding", buf, 2u);
            }

            v23 = sub_2393D5398(1u);
            if (v23)
            {
              sub_2393D5320(1, 1, "Secure transport received message, but failed to decode/authenticate it, discarding");
            }

            goto LABEL_58;
          }

          v35 = sub_23949A548((v13 + 264), v51);
          if (!v35)
          {
            sub_239492E1C(v13);
            sub_23949A5AC(v13 + 264, v51);
            v39 = 1;
LABEL_81:
            if (*(a1 + 232))
            {
              *buf = 1;
              *&v69[4] = v57;
              *&v69[12] = &v51;
              v70 = v13;
              v71 = a3;
              sub_238DB6950(v72, *(*a4 + 8), *(*a4 + 16));
              v72[2] = v28;
              sub_23948BB30(buf);
              if (*(v13 + 57) == 2)
              {
                v43 = *(v13 + 24);
                v44 = v43 == sub_2394AB418(*(a1 + 32));
                sub_23949A5D8(v13, v44);
              }

              v45 = *(a1 + 232);
              v46 = sub_238EA9094(v66, v42);
              v23 = (*(*v45 + 16))(v45, &v51, v57, v46, v39, a4);
            }

            else
            {
              v49 = sub_2393D9044(1u);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_238DAE000, v49, OS_LOG_TYPE_ERROR, "Received SECURED message was not processed.", buf, 2u);
              }

              v23 = sub_2393D5398(1u);
              if (v23)
              {
                sub_2393D5320(1, 1, "Received SECURED message was not processed.", v50);
              }
            }

            goto LABEL_58;
          }

          if (v35 != 196)
          {
            v47 = sub_2393D9044(1u);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v48 = sub_2393C9138();
              *buf = 136315138;
              *v69 = v48;
              _os_log_impl(&dword_238DAE000, v47, OS_LOG_TYPE_ERROR, "Message counter verify failed, err = %s", buf, 0xCu);
            }

            v23 = sub_2393D5398(1u);
            if (v23)
            {
              sub_2393C9138();
              sub_2393D5320(1, 1, "Message counter verify failed, err = %s");
            }

            goto LABEL_58;
          }

          v36 = sub_2393D9044(1u);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            if (v60)
            {
              v37 = 114;
            }

            else
            {
              v37 = 105;
            }

            *buf = 67109632;
            *v69 = v51;
            *&v69[4] = 1024;
            *&v69[6] = v58;
            *&v69[10] = 1024;
            *&v69[12] = v37;
            _os_log_impl(&dword_238DAE000, v36, OS_LOG_TYPE_INFO, "Received a duplicate message with MessageCounter:%u on exchange %u%c", buf, 0x14u);
          }

          if (sub_2393D5398(3u))
          {
            v38 = 114;
            if ((v60 & 1) == 0)
            {
              v38 = 105;
            }

            sub_2393D5320(1, 3, "Received a duplicate message with MessageCounter:%u on exchange %u%c", v51, v58, v38);
          }

          sub_239492E1C(v13);
          if ((v60 & 4) != 0)
          {
            v39 = 0;
            goto LABEL_81;
          }
        }

LABEL_58:
        if (v66[0] == 1)
        {
          v23 = (*(*v67 + 32))(v67);
        }

        goto LABEL_60;
      }

      v17 = *(v13 + 32);
    }

    if (v17 == *a5)
    {
      goto LABEL_34;
    }

    if (*a5)
    {
      v27 = sub_2393E967C(*a5, v15);
      v17 = *(v13 + 32);
      if (!v17)
      {
LABEL_32:
        *(v13 + 32) = v27;
        goto LABEL_34;
      }
    }

    else
    {
      v27 = 0;
      if (!v17)
      {
        goto LABEL_32;
      }
    }

    sub_2393E9744(v17, v15);
    goto LABEL_32;
  }

  v26 = sub_2393D9044(1u);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_ERROR, "Connection object is missing for received message.", buf, 2u);
  }

  v23 = sub_2393D5398(1u);
  if (v23)
  {
    sub_2393D5320(1, 1, "Connection object is missing for received message.");
  }

LABEL_60:
  v34 = sub_23948B4CC(v23);
  if (os_signpost_enabled(v34))
  {
    *buf = 136315394;
    *v69 = "SessionManager";
    *&v69[8] = 2080;
    *&v69[10] = "Secure Unicast Message Dispatch";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v34, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }
}

void sub_239499444(uint64_t a1, uint64_t a2, __int128 *a3, void **a4, const void **a5)
{
  v92[4] = *MEMORY[0x277D85DE8];
  v10 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v10))
  {
    *buf = 136315394;
    *v90 = "SessionManager";
    *&v90[8] = 2080;
    *&v90[10] = "Unauthenticated Message Dispatch";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (*(a3 + 16) == 3 && !*a5)
  {
    v16 = sub_2393D9044(1u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Connection object is missing for received message.", buf, 2u);
    }

    v12 = sub_2393D5398(1u);
    if (v12)
    {
      sub_2393D5320(1, 1, "Connection object is missing for received message.");
    }

    goto LABEL_19;
  }

  if (*(a2 + 48) < 0)
  {
    v14 = sub_2393D9044(1u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Dropping unauthenticated message with privacy flag set", buf, 2u);
    }

    v12 = sub_2393D5398(1u);
    if (v12)
    {
      sub_2393D5320(1, 1, "Dropping unauthenticated message with privacy flag set");
    }

    goto LABEL_19;
  }

  v11 = (*a4)[2];
  v81 = 0;
  v82 = 0;
  v84 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v12 = sub_2394BE94C(&v81, a4);
  if (v12)
  {
    goto LABEL_19;
  }

  v15 = v82;
  v79[0] = v82;
  if (v82 == 1)
  {
    v80 = v83;
    v77[0] = v84;
    if (v84)
    {
      v78 = v85;
      goto LABEL_30;
    }

    v75[0] = 0;
    v31 = *sub_239289A18(v79, v13);
    *&v71 = sub_239476060();
    WORD4(v71) = v32;
    sub_23949A314((a1 + 48), v31, &v71, a3, buf);
    sub_2393DECA4(v75, buf);
    if (buf[0] == 1)
    {
      (*(**&v90[4] + 32))(*&v90[4]);
    }

    if ((v75[0] & 1) == 0)
    {
      v42 = sub_2393D9044(1u);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v42, OS_LOG_TYPE_ERROR, "UnauthenticatedSession exhausted", buf, 2u);
      }

      v12 = sub_2393D5398(1u);
      if (!v12)
      {
        goto LABEL_95;
      }

      v43 = "UnauthenticatedSession exhausted";
      goto LABEL_48;
    }

LABEL_37:
    v33 = sub_238EA9094(v75, v19);
    v34 = sub_2394953AC(*v33);
    v71 = *a3;
    v35 = *(a3 + 5);
    v72 = *(a3 + 4);
    v73 = v35;
    v74 = *(a3 + 3);
    if (sub_2393CFBB4(&v71))
    {
      v37 = v73;
    }

    else
    {
      v37 = 0;
      v73 = 0;
    }

    *(v34 + 64) = v71;
    *(v34 + 80) = v72;
    *(v34 + 84) = v37;
    *(v34 + 88) = v74;
    if (*(a3 + 16) == 3)
    {
      v44 = *(v34 + 32);
      if (v44 && (v45 = sub_2393E967C(v44, v36)) != 0)
      {
        v47 = *a5;
        if (v45 != *a5)
        {
          v48 = v45;
          v49 = sub_2393D9044(1u);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v90 = v48;
            *&v90[8] = 2048;
            *&v90[10] = v47;
            _os_log_impl(&dword_238DAE000, v49, OS_LOG_TYPE_ERROR, "Unauthenticated data received over %p for wrong connection %p. Dropping it!", buf, 0x16u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(1, 1, "Unauthenticated data received over %p for wrong connection %p. Dropping it!", v48, *a5);
          }

          v12 = sub_2393E9744(v48, v50);
          goto LABEL_95;
        }

        sub_2393E9744(v45, v46);
      }

      else
      {
        sub_23949A9BC((v34 + 32), a5);
      }
    }

    *(v34 + 104) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
    *(v34 + 96) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
    v66[0] = 0;
    v67 = 0;
    v70 = 0;
    v69 = 16;
    v68 = -1;
    v12 = sub_2394BEB24(v66, a4);
    if (v12)
    {
LABEL_95:
      if (v75[0] == 1)
      {
        v12 = (*(*v76 + 32))(v76);
      }

      goto LABEL_19;
    }

    if (sub_23949A4A8(v34 + 144, v81) == 196)
    {
      v59 = sub_2393D9044(1u);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        if (v69)
        {
          v60 = 114;
        }

        else
        {
          v60 = 105;
        }

        *buf = 67109632;
        *v90 = v81;
        *&v90[4] = 1024;
        *&v90[6] = v67;
        *&v90[10] = 1024;
        *&v90[12] = v60;
        _os_log_impl(&dword_238DAE000, v59, OS_LOG_TYPE_INFO, "Received a duplicate message with MessageCounter:%u on exchange %u%c", buf, 0x14u);
      }

      if (sub_2393D5398(3u))
      {
        v61 = 114;
        if ((v69 & 1) == 0)
        {
          v61 = 105;
        }

        sub_2393D5320(1, 3, "Received a duplicate message with MessageCounter:%u on exchange %u%c", v81, v67, v61);
      }

      v62 = 0;
    }

    else
    {
      sub_23949AAA4(v34 + 144, v81);
      v62 = 1;
    }

    if (*(a1 + 232))
    {
      *buf = 2;
      *&v90[4] = v66;
      *&v90[12] = &v81;
      *&v90[20] = v34;
      v91 = a3;
      sub_238DB6950(v92, (*a4)[1], (*a4)[2]);
      v92[2] = v11;
      sub_23948BB30(buf);
      v12 = (*(**(a1 + 232) + 16))(*(a1 + 232), &v81, v66, v33, v62, a4);
      goto LABEL_95;
    }

    v63 = sub_2393D9044(1u);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v63, OS_LOG_TYPE_ERROR, "Received UNSECURED message was not processed.", buf, 2u);
    }

    v12 = sub_2393D5398(1u);
    if (!v12)
    {
      goto LABEL_95;
    }

    v43 = "Received UNSECURED message was not processed.";
LABEL_48:
    sub_2393D5320(1, 1, v43, v64, v65);
    goto LABEL_95;
  }

  v77[0] = v84;
  if (v84)
  {
    v78 = v85;
    v75[0] = 0;
    v18 = sub_239289A18(v77, v13);
    sub_23949A408(a1 + 48, *v18, a3, buf);
    sub_2393DECA4(v75, buf);
    if (buf[0] == 1)
    {
      (*(**&v90[4] + 32))(*&v90[4]);
    }

    if ((v75[0] & 1) == 0)
    {
      v20 = sub_2393D9044(1u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(sub_239289A18(v77, v21) + 1);
        v24 = *sub_239289A18(v77, v23);
        *buf = 67109376;
        *v90 = v22;
        *&v90[4] = 1024;
        *&v90[6] = v24;
        _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_DEFAULT, "Received unknown unsecure packet for initiator 0x%08X%08X", buf, 0xEu);
      }

      v12 = sub_2393D5398(2u);
      if (v12)
      {
        sub_239289A18(v77, v25);
        sub_239289A18(v77, v26);
        sub_2393D5320(1, 2, "Received unknown unsecure packet for initiator 0x%08X%08X");
      }

      goto LABEL_95;
    }

    goto LABEL_37;
  }

LABEL_30:
  v27 = sub_2393D9044(1u);
  if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_63;
  }

  if (v15)
  {
    v29 = *(sub_238DE36B8(v79, v28) + 1);
    if (v79[0])
    {
      v30 = sub_238DE36B8(v79, v28);
      goto LABEL_41;
    }
  }

  else
  {
    v29 = 0;
  }

  v30 = &qword_2395D6900;
LABEL_41:
  v38 = *v30;
  if (v77[0] != 1)
  {
    v40 = 0;
    goto LABEL_61;
  }

  v40 = *(sub_238DE36B8(v77, v28) + 1);
  if ((v77[0] & 1) == 0)
  {
LABEL_61:
    v41 = &qword_2395D6900;
    goto LABEL_62;
  }

  v41 = sub_238DE36B8(v77, v39);
LABEL_62:
  v51 = *v41;
  *buf = 67109888;
  *v90 = v29;
  *&v90[4] = 1024;
  *&v90[6] = v38;
  *&v90[10] = 1024;
  *&v90[12] = v40;
  *&v90[16] = 1024;
  *&v90[18] = v51;
  _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_DEFAULT, "Received malformed unsecure packet with source 0x%08X%08X destination 0x%08X%08X", buf, 0x1Au);
LABEL_63:
  v12 = sub_2393D5398(2u);
  if (v12)
  {
    if (v79[0] == 1)
    {
      v53 = *(sub_238DE36B8(v79, v52) + 1);
      if (v79[0])
      {
        v54 = sub_238DE36B8(v79, v52);
        goto LABEL_69;
      }
    }

    else
    {
      v53 = 0;
    }

    v54 = &qword_2395D6900;
LABEL_69:
    v55 = *v54;
    if (v77[0] == 1)
    {
      v57 = *(sub_238DE36B8(v77, v52) + 1);
      if (v77[0])
      {
        v58 = sub_238DE36B8(v77, v56);
LABEL_74:
        sub_2393D5320(1, 2, "Received malformed unsecure packet with source 0x%08X%08X destination 0x%08X%08X", v53, v55, v57, *v58);
        goto LABEL_19;
      }
    }

    else
    {
      v57 = 0;
    }

    v58 = &qword_2395D6900;
    goto LABEL_74;
  }

LABEL_19:
  v17 = sub_23948B4CC(v12);
  if (os_signpost_enabled(v17))
  {
    *buf = 136315394;
    *v90 = "SessionManager";
    *&v90[8] = 2080;
    *&v90[10] = "Unauthenticated Message Dispatch";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }
}

void sub_239499E38(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_2393E97D4(a2 + 8, __str, 0x4CuLL);
  v3 = sub_2393D9044(1u);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = __str;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "Received TCP connection request from %s.", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(1, 2, "Received TCP connection request from %s.", __str);
  }

  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      v5(a2);
    }
  }
}

void sub_239499F34(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (!*a2)
  {
    return;
  }

  v9 = *(v4 + 56);
  if (v9)
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      v10(a2, a3, a4);
      v11 = *(result + 240);
      if (!v11)
      {
        return;
      }

      v12 = 1;
      goto LABEL_8;
    }
  }

  v11 = *(result + 240);
  if (v11)
  {
    v12 = 0;
LABEL_8:
    v13 = (*(*v11 + 24))(v11, a2, a3, a4);
    if (v12 & 1) != 0 || (v13)
    {
      return;
    }

    v4 = *a2;
  }

  sub_2393E97D4(v4 + 8, __str, 0x4CuLL);
  v14 = sub_2393D9044(1u);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = __str;
    _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "TCP Connection established with peer %s, but no registered handler.", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(1, 2, "TCP Connection established with peer %s, but no registered handler.", __str);
  }
}

uint64_t sub_23949A0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 56);
  if (v8)
  {
    v9 = *(v8 + 24);
    if (v9)
    {
      v9(a2, a3, a4);
    }
  }

  v11[0] = a3;
  v11[1] = a4;
  v12[0] = a2;
  v12[1] = a1;
  v12[2] = v11;
  return sub_2393D6A10((a1 + 128), v12, sub_23949BD58);
}

uint64_t sub_23949A12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a3;
  v5[1] = a4;
  v6[0] = a2;
  v6[1] = a1;
  v6[2] = v5;
  return sub_2393D6A10((a1 + 128), v6, sub_23949BD58);
}

unint64_t sub_23949A174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  sub_2393E97D4(a2, __str, 0x4CuLL);
  v5 = *(a1 + 248);
  v6 = sub_2393D9044(1u);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = __str;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Connecting over TCP with peer at %s.", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(1, 2, "Connecting over TCP with peer at %s.", __str);
    }

    v8 = sub_23949BF74(*(a1 + 248));
    v9 = v8 & 0xFFFFFFFF00000000;
    v10 = v8;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = __str;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "The transport manager is not initialized. Unable to connect to peer at %s.", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(1, 1, "The transport manager is not initialized. Unable to connect to peer at %s.", __str);
    }

    v9 = 0x2D900000000;
    v10 = 3;
  }

  return v10 | v9;
}

void *sub_23949A314@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v13 = 1;
  v11 = 0;
  v12 = a2;
  v14[0] = &v13;
  v14[1] = &v12;
  v14[2] = a4;
  v14[3] = &v11;
  sub_2393D6A10(a1 + 2, v14, sub_23949B72C);
  result = v11;
  if (v11)
  {
    *a5 = 1;
  }

  else
  {
    LODWORD(v12) = 1;
    v14[0] = a2;
    result = sub_23949B780(a1, &v12, v14, a4, a3, a1);
    if (!result)
    {
      *a5 = 0;
      return result;
    }

    *a5 = 1;
  }

  *(a5 + 8) = result;
  return (*(*result + 24))(result);
}

uint64_t sub_23949A408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = 0;
  v7 = 0;
  v8 = a2;
  v10[0] = &v9;
  v10[1] = &v8;
  v10[2] = a3;
  v10[3] = &v7;
  sub_2393D6A10((a1 + 16), v10, sub_23949B72C);
  result = v7;
  if (v7)
  {
    *(a4 + 8) = v7;
    result = (*(*result + 24))(result);
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *a4 = v6;
  return result;
}

uint64_t sub_23949A4A8(uint64_t a1, int a2)
{
  if (*a1 == 2)
  {
    v4 = *(a1 + 8);
    if (a2 == v4 || a2 - v4 < 0)
    {
      if (v4 == a2)
      {
        v5 = 2;
      }

      else
      {
        v5 = (v4 - a2) < 0x21;
      }
    }

    else
    {
      v5 = 3;
    }

    return sub_23949AA1C(a1, v5, a2);
  }

  else
  {
    if (*a1)
    {
      sub_239535224();
    }

    *a1 = 2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 8) = a2;
    v6 = a1 + 16;
    v7 = 0;
    sub_2393F030C(&v6, 0x20uLL);
    return 0;
  }
}

uint64_t sub_23949A548(_DWORD *a1, unsigned int a2)
{
  if (*a1 != 2)
  {
    return 0x8E00000003;
  }

  v3 = a1[2];
  v4 = v3 >= a2;
  if (v3 == a2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v3 - a2 < 0x21;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 3;
  }

  return sub_23949B068(a1, v6, a2);
}

void sub_23949A5AC(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 8);
  v4 = v3 >= a2;
  if (v3 == a2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v3 - a2 < 0x21;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 3;
  }

  sub_23949AADC(a1, v6, a2);
}

uint64_t sub_23949A5D8(uint64_t result, uint64_t a2)
{
  if (*(result + 57) != 2)
  {
    sub_2395352BC();
  }

  *(result + 58) = a2;
  return result;
}

BOOL sub_23949A5FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, unsigned __int16 *a7)
{
  v30 = *MEMORY[0x277D85DE8];
  v11 = *(a7 + 1);
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v29 = v11;
  if (a4)
  {
    v12 = 12;
    if ((*(a1 + 47) & 4) == 0)
    {
      v12 = 4;
    }

    v13 = v12 + 8;
    v14 = v12 | *(a1 + 47) & 2;
    v15 = (*(a1 + 47) & 1) != 0 ? v13 : v14;
    if (sub_239491EC4(v25, *(*a5 + 8) + 4, v15, *(*a5 + 8) + 4, a1, a6))
    {
      goto LABEL_15;
    }
  }

  if (sub_2394BE94C(a2, a5))
  {
    v17 = sub_2393D9044(1u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to decode Groupcast packet header. Discarding.", v24, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(1, 1, "Failed to decode Groupcast packet header. Discarding.");
    }

    goto LABEL_15;
  }

  if (LOWORD(sub_238E0A934((a2 + 40), v16)->super.isa) != *a7)
  {
LABEL_15:
    v22 = 0;
    goto LABEL_16;
  }

  v19 = *(a2 + 48);
  v20 = *a2;
  v21 = sub_238DE36B8((a2 + 8), v18);
  sub_2394917A8(v24, v19, v20, *v21);
  v22 = sub_239492A50(v25, v24, a3, a2, a5) == 0;
LABEL_16:
  sub_239491488(v25);
  return v22;
}

uint64_t sub_23949A7B0(uint64_t a1, int a2)
{
  if (*a1 == 2)
  {
    return sub_23949B0F0(a1, a2);
  }

  if (*a1)
  {
    sub_239535354();
  }

  *a1 = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = a2;
  v3 = a1 + 16;
  v4 = 0;
  sub_2393F030C(&v3, 0x20uLL);
  return 0;
}

uint64_t sub_23949A820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v11[0] = a2;
  v11[1] = a3;
  v10 = a5;
  v8 = 0;
  v9 = 0;
  v12[0] = v11;
  v12[1] = a4;
  v12[2] = &v9;
  v12[3] = &v8;
  v12[4] = &v10;
  sub_2393D6A10((a1 + 128), v12, sub_23949BC40);
  if (v10 == 2)
  {
    result = v9;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  else if (v10 != 1)
  {
    result = v9;
    if (!v9)
    {
      goto LABEL_8;
    }

LABEL_7:
    *a6 = 1;
    *(a6 + 8) = result;
    return (*(*result + 24))(result);
  }

  result = v8;
  if (v8)
  {
    goto LABEL_7;
  }

LABEL_8:
  *a6 = 0;
  return result;
}

uint64_t sub_23949A8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v6[0] = &v4;
  v6[1] = &v5;
  sub_2393D6A10((a1 + 128), v6, sub_23949BE68);
  return 0;
}

uint64_t sub_23949A944(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_23949631C(byte_27DF796D0);

  return sub_239492490(v4, a3);
}

uint64_t sub_23949A984(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8) + 1;
  *(a1 + 8) = v2;
  *a2 = v2;
  return 0;
}

uint64_t *sub_23949A9BC(uint64_t *a1, _WORD **a2)
{
  v3 = *a1;
  if (v3 != *a2)
  {
    if (*a2)
    {
      v4 = sub_2393E967C(*a2, a2);
      v3 = *a1;
      if (!*a1)
      {
LABEL_5:
        *a1 = v4;
        return a1;
      }
    }

    else
    {
      v4 = 0;
      if (!v3)
      {
        goto LABEL_5;
      }
    }

    sub_2393E9744(v3, a2);
    goto LABEL_5;
  }

  return a1;
}

uint64_t sub_23949AA1C(uint64_t a1, int a2, int a3)
{
  if (a2 == 2)
  {
    v6 = 0x12F00000000;
    v7 = 196;
  }

  else if (a2 == 1)
  {
    v3 = *(a1 + 8) + ~a3;
    if (v3 >= 0x20)
    {
      abort();
    }

    v4 = *(a1 + 16) >> v3;
    v5 = (v4 & 1) == 0;
    if (v4)
    {
      v6 = 0x13400000000;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = 196;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

void sub_23949AAA4(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  if (a2 == v3 || a2 - v3 < 0)
  {
    if (v3 == a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = (v3 - a2) < 0x21;
    }
  }

  else
  {
    v4 = 3;
  }

  sub_23949AADC(a1, v4, a2);
}

void sub_23949AADC(uint64_t a1, int a2, int a3)
{
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      v4 = *(a1 + 8) + ~a3;
      if (v4 < 0x20)
      {
        *(a1 + 16) |= 1 << v4;
        return;
      }

LABEL_10:
      abort();
    }

    v5 = *(a1 + 8);
    v6 = a3 - v5;
    *(a1 + 8) = a3;
    if ((a3 - v5) < 0x21)
    {
      sub_23949ABA0(a1 + 16, (a3 - v5));
      if ((v6 - 1) >= 0x20)
      {
        goto LABEL_10;
      }

      *(a1 + 16) |= 1 << (v6 - 1);
    }

    else
    {
      v7 = a1 + 16;
      v8 = 0;
      sub_2393F030C(&v7, 0x20uLL);
    }
  }
}

uint64_t sub_23949ABA0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x20)
  {
    v3 = 32;
  }

  else
  {
    v3 = a2;
  }

  v10 = a1;
  v11 = 0;
  v8 = a1;
  v9 = 32 - v3;
  v6 = a1;
  if (a2)
  {
    v7 = 32;
    sub_23949ADB8(&v10, &v8, &v6, v5);
    v10 = a1;
    v11 = 0;
    sub_2393F030C(&v10, v3);
  }

  else
  {
    v7 = 32 - v3;
    sub_23949AC50(&v10, &v8, &v6, v5);
  }

  return a1;
}

unsigned int *sub_23949AC50@<X0>(unsigned int *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 8);
  v7 = v6 + 8 * (*a2 - *result);
  v8 = result[2];
  v9 = v7 - v8;
  if ((v7 - v8) >= 1)
  {
    if (v6)
    {
      if (v9 >= v6)
      {
        v11 = *(a2 + 8);
      }

      else
      {
        v11 = v7 - v8;
      }

      v9 -= v11;
      v12 = (-1 << (v6 - v11)) & (0xFFFFFFFFFFFFFFFFLL >> -v6);
      v13 = **a2 & v12;
      **a3 &= ~v12;
      **a3 |= v13;
      *(a3 + 8) = (*(a3 + 8) - v11) & 0x3F;
    }

    if (v9 >= 0)
    {
      v14 = v9;
    }

    else
    {
      v14 = v9 + 63;
    }

    v15 = v14 >> 6;
    *a3 -= 8 * (v14 >> 6);
    v16 = (*a2 - 8 * (v14 >> 6));
    *a2 = v16;
    if ((v9 + 63) >= 0x7F)
    {
      result = memmove(*a3, v16, 8 * v15);
    }

    if (v9 - (v15 << 6) >= 1)
    {
      v17 = -1 << ((v15 << 6) - v9);
      v18 = (*a2 - 8);
      *a2 = v18;
      v19 = *v18 & v17;
      v20 = *a3;
      *a3 -= 8;
      *(v20 - 1) &= ~v17;
      **a3 |= v19;
      *(a3 + 8) = -v9 & 0x3F;
    }
  }

  *a4 = *a3;
  *(a4 + 8) = *(a3 + 8);
  return result;
}

uint64_t sub_23949ADB8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 8);
  v5 = *(result + 8);
  v6 = v4 + 8 * (*a2 - *result) - v5;
  if (v6 >= 1)
  {
    if (v4)
    {
      if (v6 >= v4)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = v4 + 8 * (*a2 - *result) - v5;
      }

      v6 -= v7;
      v8 = (-1 << (v4 - v7)) & (0xFFFFFFFFFFFFFFFFLL >> -v4) & **a2;
      v9 = *(a3 + 8);
      if (v7 >= v9)
      {
        v10 = *(a3 + 8);
      }

      else
      {
        v10 = v7;
      }

      if (v9)
      {
        **a3 &= ~((-1 << (v9 - v10)) & (0xFFFFFFFFFFFFFFFFLL >> -v9));
        v11 = *(a3 + 8);
        v12 = *(a2 + 8);
        v13 = v8 >> (v12 - v11);
        v14 = v11 > v12;
        v15 = v8 << (v11 - v12);
        if (!v14)
        {
          v15 = v13;
        }

        **a3 |= v15;
        *(a3 + 8) = (*(a3 + 8) - v10) & 0x3F;
        v7 -= v10;
      }

      if (v7 >= 1)
      {
        v16 = *a3;
        *a3 -= 8;
        *(a3 + 8) = -v7 & 0x3F;
        *(v16 - 1) &= ~(-1 << -v7);
        v17 = *(a2 + 8) - v7 - v10;
        *(a2 + 8) = v17;
        **a3 |= v8 << (*(a3 + 8) - v17);
      }
    }

    if (v6 < 64)
    {
      v24 = v6;
    }

    else
    {
      v18 = *(a3 + 8);
      v19 = 64 - v18;
      v20 = 0xFFFFFFFFFFFFFFFFLL >> -v18;
      do
      {
        v21 = (*a2 - 8);
        *a2 = v21;
        v22 = *v21;
        **a3 &= ~v20;
        **a3 |= v22 >> v19;
        v23 = *a3;
        *a3 -= 8;
        *(v23 - 1) &= v20;
        **a3 |= v22 << *(a3 + 8);
        v24 = v6 - 64;
        v14 = v6 > 0x7F;
        v6 -= 64;
      }

      while (v14);
    }

    if (v24 >= 1)
    {
      v25 = (*a2 - 8);
      *a2 = v25;
      v26 = *v25 & (-1 << -v24);
      v27 = *(a3 + 8);
      if (v24 >= v27)
      {
        v28 = *(a3 + 8);
      }

      else
      {
        v28 = v24;
      }

      **a3 &= ~((-1 << (v27 - v28)) & (0xFFFFFFFFFFFFFFFFLL >> -v27));
      **a3 |= v26 >> -*(a3 + 8);
      *(a3 + 8) = (*(a3 + 8) - v28) & 0x3F;
      v29 = v24 - v28;
      if (v24 - v28 >= 1)
      {
        v30 = *a3;
        *a3 -= 8;
        v31 = -v29;
        *(a3 + 8) = v31 & 0x3F;
        *(v30 - 1) &= ~(-1 << v31);
        **a3 |= v26 << (v24 + *(a3 + 8));
      }
    }
  }

  *a4 = *a3;
  *(a4 + 8) = *(a3 + 8);
  return result;
}

uint64_t sub_23949B068(uint64_t a1, int a2, int a3)
{
  if (a2 == 3)
  {
    v6 = 0;
    v7 = 0;
  }

  else if (a2 == 1)
  {
    v3 = *(a1 + 8) + ~a3;
    if (v3 >= 0x20)
    {
      abort();
    }

    v4 = *(a1 + 16) >> v3;
    v5 = (v4 & 1) == 0;
    if (v4)
    {
      v6 = 0x11B00000000;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = 196;
    }
  }

  else
  {
    v6 = 0x12100000000;
    v7 = 196;
  }

  return v7 | v6;
}

uint64_t sub_23949B0F0(_DWORD *a1, int a2)
{
  if (*a1 != 2)
  {
    return 0x6800000003;
  }

  v3 = a1[2];
  if (a2 == v3 || a2 - v3 < 0)
  {
    if (v3 == a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = (v3 - a2) < 0x21;
    }
  }

  else
  {
    v4 = 3;
  }

  return sub_23949B068(a1, v4, a2);
}

void sub_23949B160(uint64_t a1)
{
  sub_23949B23C(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_23949B1CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 21) = 0;
  *(a2 + 1) = 0x80;
  *(a2 + 8) = *(result + 44) | 0xFFFFFFFFFFFF0000;
  *(a2 + 16) = 0;
  *a2 = *(result + 24);
  return result;
}

_DWORD *sub_23949B1F0(_DWORD *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    sub_2395353EC();
  }

  ++*a1;
  return a1 - 10;
}

_DWORD *sub_23949B218(_DWORD *result, uint64_t a2)
{
  if (!*result)
  {
    sub_239535474();
  }

  --*result;
  return result;
}

void *sub_23949B23C(uint64_t a1)
{
  *a1 = &unk_284BBC090;
  sub_2394933FC(a1);
  if (*(a1 + 40))
  {
    sub_2395354FC();
  }

  return sub_239493CBC(a1, v2);
}

uint64_t sub_23949B29C(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 48))(a2) == **a1 && *(*a1 + 8) == v4)
  {
    sub_239493268(a2);
  }

  return 0;
}

uint64_t sub_23949B310(unsigned __int8 **a1, uint64_t a2)
{
  if (*(a2 + 24) == **a1)
  {
    sub_239493268(a2);
  }

  return 0;
}

uint64_t sub_23949B348(uint64_t *a1, uint64_t a2)
{
  v12[10] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v12[0] = &unk_284BB9138;
  if (*(a2 + 57) == 2)
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      v6 = sub_2394A7FC0(*(v2 + 32), v4);
      if (!v6)
      {
        sub_23953562C();
      }

      v7 = v6;
      v8 = sub_2394A7848(v6, v12);
      v9 = a1[1];
      *v9 = v8;
      v9[1] = v10;
      if (*a1[1])
      {
        sub_239535594();
      }

      if (sub_23928F6C0(v12, a1[2]) && *(*a1[3] + 8) == *(v7 + 8) && *(a2 + 72) == *a1[4])
      {
        sub_239493268(a2);
      }
    }
  }

  return 0;
}

uint64_t sub_23949B45C(uint64_t *a1, uint64_t a2)
{
  v12[10] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v12[0] = &unk_284BB9138;
  if (*(a2 + 57) == 2)
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      v6 = sub_2394A7FC0(*(v2 + 32), v4);
      if (!v6)
      {
        sub_23953575C();
      }

      v7 = v6;
      v8 = sub_2394A7848(v6, v12);
      v9 = a1[1];
      *v9 = v8;
      v9[1] = v10;
      if (*a1[1])
      {
        sub_2395356C4();
      }

      if (sub_23928F6C0(v12, a1[2]) && *(*a1[3] + 8) == *(v7 + 8))
      {
        sub_239493268(a2);
      }
    }
  }

  return 0;
}

uint64_t sub_23949B55C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 57) == 1)
  {
    sub_239493268(a2);
  }

  return 0;
}

uint64_t sub_23949B5AC(_BYTE **a1, unsigned __int8 *a2)
{
  if ((*(*a2 + 40))(a2))
  {
    if ((*(*a2 + 48))(a2) == **a1 && (*a1)[8] == v4)
    {
      v5 = a1[1];
      if (*v5 != 1 || *sub_23949B670(v5, v4) == a2[57])
      {
        sub_239493108(a2);
      }
    }
  }

  return 0;
}

_BYTE *sub_23949B670(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952F0D8();
  }

  return a1 + 1;
}

uint64_t sub_23949B690(void *a1, uint64_t a2)
{
  if ((*(*a2 + 48))(a2) == **a1 && *(*a1 + 8) == v4 && *(a2 + 57) == 2)
  {
    v5 = a1[1];
    v6 = *v5;
    *(a2 + 112) = *(v5 + 4);
    *(a2 + 96) = v6;
    *(a2 + 116) = *(v5 + 5);
    *(a2 + 120) = *(v5 + 3);
  }

  return 0;
}

uint64_t sub_23949B72C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 56) != **a1 || *(a2 + 48) != **(a1 + 8) || *(a2 + 80) != *(*(a1 + 16) + 16))
  {
    return 0;
  }

  **(a1 + 24) = a2;
  return 1;
}

void *sub_23949B780(unint64_t *a1, unsigned int *a2, uint64_t *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_2393D52C4(0xB0uLL);
  v13 = v12;
  if (v12)
  {
    sub_23949B860(v12, *a2, *a3, a4, a5);
    *v13 = &unk_284BBC168;
    v13[21] = a6;
    v14 = sub_2393D52C4(0x18uLL);
    if (v14)
    {
      *v14 = v13;
      v14[1] = a1 + 2;
      v14[2] = 0;
      v15 = a1[4];
      v14[2] = v15;
      *(v15 + 8) = v14;
      a1[4] = v14;
      v16 = a1[1];
      v17 = *a1 + 1;
      *a1 = v17;
      if (v17 > v16)
      {
        a1[1] = v17;
      }
    }

    else
    {
      return 0;
    }
  }

  return v13;
}

uint64_t sub_23949B860(uint64_t a1, int a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_284BBC260;
  *(a1 + 48) = a3;
  *(a1 + 56) = a2;
  v7 = *a4;
  *(a1 + 80) = *(a4 + 4);
  *(a1 + 64) = v7;
  *(a1 + 84) = *(a4 + 5);
  *(a1 + 88) = *(a4 + 3);
  *(a1 + 96) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  *(a1 + 104) = 0;
  v8 = *(a5 + 8);
  *(a1 + 112) = *a5;
  *(a1 + 120) = v8;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  *(a1 + 140) = 1;
  *(a1 + 144) = 0;
  return a1;
}

void sub_23949B940(uint64_t a1, uint64_t a2)
{
  sub_23949BBA0(a1, a2);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_23949B980(uint64_t a1)
{
  if (*(a1 + 56))
  {
    return *(a1 + 48);
  }

  else
  {
    return 0;
  }
}

double sub_23949B99C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_23949B9D0(void *a1)
{
  v2 = (*(*off_27DF765E8 + 2))(off_27DF765E8) - a1[13];
  LODWORD(v2) = v2 < *((*(*a1 + 88))(a1) + 8);
  return *((*(*a1 + 88))(a1) + 4 * v2);
}

uint64_t sub_23949BA88(uint64_t a1, int a2)
{
  v2 = *(a1 + 80);
  switch(v2)
  {
    case 3:
      return 30000;
    case 2:
      return 15000;
    case 1:
      return sub_239476070(*(a1 + 116), *(a1 + 112), *(a1 + 104), *(a1 + 120), a2);
  }

  return 0;
}

uint64_t sub_23949BAD4(uint64_t a1, unsigned int a2, int a3)
{
  v5 = *(a1 + 80);
  if (v5 == 3)
  {
    return 30000;
  }

  if (v5 == 2)
  {
    return 15000;
  }

  if (v5 != 1)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  sub_239476008(v14);
  v8 = sub_239476060();
  v12 = v8;
  v13 = v9;
  if (v14[0] == 1)
  {
    v10 = sub_238DD173C(v14, v9);
    LODWORD(v8) = *v10;
    LOWORD(v9) = *(v10 + 4);
  }

  else
  {
    v10 = &v12;
  }

  return sub_239476070(*(v10 + 1), v8, a2, v9, a3);
}

void *sub_23949BBA0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_284BBC260;
  if (*(a1 + 40))
  {
    sub_2395357F4();
  }

  *(a1 + 144) = 0;

  return sub_239493CBC(a1, a2);
}

int *sub_23949BBE8(int *result, uint64_t a2)
{
  if (!*result)
  {
    sub_239535474();
  }

  v3 = *result - 1;
  *result = v3;
  if (!v3)
  {
    v4 = *(*(result - 5) + 128);

    return v4();
  }

  return result;
}

uint64_t sub_23949BC40(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 40))(a2))
  {
    if ((*(*a2 + 48))(a2) == **a1 && *(*a1 + 8) == v4)
    {
      v5 = *(a1 + 8);
      if (*v5 != 1 || *sub_23949B670(v5, v4) == *(a2 + 57))
      {
        if (**(a1 + 32) - 1 <= 1)
        {
          v6 = *(a1 + 24);
          if (!*v6 || *(*v6 + 136) < *(a2 + 136))
          {
            if (*(a2 + 32))
            {
              *v6 = a2;
            }
          }
        }

        v7 = *(a1 + 16);
        if (!*v7 || *(*v7 + 136) < *(a2 + 136))
        {
          *v7 = a2;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_23949BD58(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((*(*a2 + 40))(a2) && a2[4] == *a1)
  {
    v7 = a2;
    (*(*a2 + 24))(a2);
    v5 = *(v4 + 240);
    if (v5)
    {
      (*(*v5 + 16))(v5, *a1, &v7, **(a1 + 16), *(*(a1 + 16) + 8));
    }

    sub_239493268(a2);
    (*(*v7 + 32))(v7);
  }

  return 0;
}

uint64_t sub_23949BE68(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  (*(*a2 + 24))(a2);
  (**a1)(**(a1 + 8), &v4);
  (*(*v4 + 32))(v4);
  return 0;
}

uint64_t sub_23949BF9C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = 0x2B00000000;
    v5 = 3;
  }

  else
  {
    v9 = v2;
    v10 = v3;
    *(a1 + 16) = a2;
    *(a2 + 8) = a1;
    v6 = sub_2393D9044(1u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "TransportMgr initialized", v8, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(1, 3, "TransportMgr initialized");
    }

    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

uint64_t sub_23949C058(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void sub_23949C088(uint64_t a1, uint64_t a2, void **a3)
{
  v13 = *MEMORY[0x277D85DE8];
  sub_23947632C("src/transport/TransportMgrBase.cpp", 68);
  if (**a3)
  {
    sub_2393E97D4(a2, __str, 0x4CuLL);
    v6 = sub_2393D9044(1u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v11 = __str;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "message from %s dropped due to lower layers not ensuring a single packet buffer.", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(1, 1, "message from %s dropped due to lower layers not ensuring a single packet buffer.");
    }
  }

  else
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      v8 = *(*v7 + 16);

      v8();
    }

    else
    {
      sub_2393E97D4(a2, __str, 0x4CuLL);
      v9 = sub_2393D9044(1u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v11 = __str;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "message from %s is dropped since no corresponding handler is set in TransportMgr.", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(1, 1, "message from %s is dropped since no corresponding handler is set in TransportMgr.");
      }
    }
  }
}

_WORD *sub_23949C284(uint64_t a1, _WORD *a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(*v3 + 40);

    return v4();
  }

  else
  {
    result = sub_2393E967C(a2, a2);
    if (result)
    {

      return sub_2393E9744(result, v6);
    }
  }

  return result;
}

uint64_t sub_23949C2F0(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_23949C320(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

unint64_t sub_23949C364(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    LODWORD(v5) = 3;
    LODWORD(v6) = 202;
  }

  else
  {
    v13 = v3;
    v14 = v4;
    v10 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "AccessControl: initializing", v12, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(13, 2, "AccessControl: initializing");
    }

    if (a2)
    {
      v5 = (*(*a2 + 24))(a2);
      v6 = HIDWORD(v5);
      if (!v5)
      {
        LODWORD(v5) = 0;
        *a1 = a2;
        a1[1] = a3;
      }
    }

    else
    {
      LODWORD(v5) = 47;
      LODWORD(v6) = 206;
    }
  }

  return v5 | (v6 << 32);
}

void *sub_23949C470(void *result)
{
  if (*result)
  {
    v1 = result;
    v2 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "AccessControl: finishing", v3, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(13, 2, "AccessControl: finishing");
    }

    result = (*(**v1 + 32))();
    *v1 = 0;
  }

  return result;
}

uint64_t sub_23949C530(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v19 = a3;
  v6 = *a1;
  if (v6)
  {
    v17 = 0;
    v18 = 0;
    v10 = (*(*v6 + 72))(v6, a3, &v18);
    if (!v10)
    {
      v10 = (*(**a1 + 40))(*a1, &v17);
      if (!v10)
      {
        if (v18 + 1 > v17)
        {
          v11 = 0xEB00000000;
          LODWORD(v10) = 25;
          return v11 | v10;
        }

        if (!sub_23949C6F4(a5))
        {
          v11 = 0xED00000000;
          LODWORD(v10) = 47;
          return v11 | v10;
        }

        v16 = 0;
        v10 = (*(**a1 + 96))(*a1, &v16, a5, &v19);
        if (!v10)
        {
          v13 = v16;
          if (a4)
          {
            *a4 = v16;
          }

          v14 = a1[2];
          if (v14)
          {
            v15 = v19;
            do
            {
              (*(*v14 + 16))(v14, a2, v15, v13, a5, 1);
              v14 = v14[1];
            }

            while (v14);
          }

          LODWORD(v10) = 0;
          v11 = 0;
          return v11 | v10;
        }
      }
    }

    v11 = v10 & 0xFFFFFFFF00000000;
    return v11 | v10;
  }

  return 0xE400000003;
}

BOOL sub_23949C6F4(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v14 = 0;
  v12 = 0;
  v13 = 0;
  v2 = (*(**a1 + 24))(*a1, &v15 + 1);
  if (v2 || (v2 = (*(**a1 + 32))(*a1, &v15)) != 0 || (v2 = (*(**a1 + 40))(*a1, &v14)) != 0 || (v2 = (*(**a1 + 72))(*a1, &v13)) != 0 || (v2 = (*(**a1 + 112))(*a1, &v12)) != 0)
  {
    v3 = "unexpected error";
    goto LABEL_6;
  }

  if (!v15)
  {
    v3 = "invalid fabric index";
    goto LABEL_6;
  }

  if (HIBYTE(v15) != 64)
  {
    if (HIBYTE(v15) != 128)
    {
      v3 = "invalid auth mode";
      goto LABEL_6;
    }

    if (v14 == 16)
    {
      v3 = "invalid privilege";
      goto LABEL_6;
    }
  }

  if (v13)
  {
    v8 = 0;
    v3 = "invalid subject";
    while (1)
    {
      *buf = 0;
      v2 = (*(**a1 + 80))(*a1, v8, buf);
      if (v2)
      {
        break;
      }

      if (HIBYTE(v15) == 128)
      {
        if (*buf < 0xFFFFFFFFFFFF0000 || *buf == 0)
        {
          goto LABEL_6;
        }
      }

      else if (HIBYTE(v15) != 64 || (*buf - 1) >= 0xFFFFFFEFFFFFFFFFLL && (*&buf[4] != 4294967293 || !*buf))
      {
        goto LABEL_6;
      }

      if (++v8 >= v13)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
LABEL_38:
    if (!v12)
    {
      return 1;
    }

    v10 = 0;
    v3 = "invalid target";
    while (1)
    {
      *buf = 0;
      v2 = (*(**a1 + 120))(*a1, v10, buf);
      if (v2)
      {
        break;
      }

      v11 = (buf[0] & 7) == 0 || (buf[0] & 6) == 6;
      if (v11 || (buf[0] & 1) != 0 && (*&buf[4] > 0xFFF4FFFF || *&buf[4] >= 0x8000u && (*&buf[4] < 0x10000u || (*&buf[4] + 1024) > 0x3FEu)) || (buf[0] & 2) != 0 && *&buf[8] == 0xFFFF || (buf[0] & 4) != 0 && ((v17[0] & 0xFFFF0000) > 0xFFFE0000 || (v17[0] & 0xC000) == 0xC000))
      {
        goto LABEL_6;
      }

      ++v10;
      result = 1;
      if (v10 >= v12)
      {
        return result;
      }
    }
  }

  v3 = "unexpected error";
LABEL_6:
  v4 = sub_2393D9044(0xDu);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (v2)
  {
    if (v5)
    {
      v6 = sub_2393C9138();
      *buf = 136315394;
      *&buf[4] = v3;
      LOWORD(v17[0]) = 2080;
      *(v17 + 2) = v6;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "AccessControl: %s %s", buf, 0x16u);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      sub_2393C9138();
      sub_2393D5320(13, 1, "AccessControl: %s %s");
      return 0;
    }
  }

  else
  {
    if (v5)
    {
      *buf = 136315138;
      *&buf[4] = v3;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "AccessControl: %s", buf, 0xCu);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      sub_2393D5320(13, 1, "AccessControl: %s");
      return 0;
    }
  }

  return result;
}

uint64_t sub_23949CB88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  for (i = *(result + 16); i; i = i[1])
  {
    result = (*(*i + 16))(i, a2, a3, a4, a5, a6);
  }

  return result;
}

unint64_t sub_23949CC14(void *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, void *a5)
{
  v14 = a3;
  if (*a1)
  {
    if (sub_23949C6F4(a5))
    {
      v9 = (*(**a1 + 112))(*a1, a4, a5, &v14);
      if (v9)
      {
        v10 = v9 & 0xFFFFFFFF00000000;
      }

      else
      {
        v11 = a1[2];
        if (v11)
        {
          v12 = v14;
          do
          {
            (*(*v11 + 16))(v11, a2, v12, a4, a5, 3);
            v11 = v11[1];
          }

          while (v11);
        }

        LODWORD(v9) = 0;
        v10 = 0;
      }
    }

    else
    {
      v10 = 0xFF00000000;
      LODWORD(v9) = 47;
    }
  }

  else
  {
    v10 = 0xFE00000000;
    LODWORD(v9) = 3;
  }

  return v10 | v9;
}

unint64_t sub_23949CD3C(uint64_t *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v18 = a3;
  v5 = *a1;
  if (!v5)
  {
    return 0x10700000003;
  }

  if ((byte_27DF7C0A8 & 1) == 0)
  {
    byte_27DF7C0A8 = 1;
    qword_27DF7C0A0 = &unk_284BBC360;
    v5 = *a1;
  }

  v17 = &qword_27DF7C0A0;
  if (a1[2] && (v19 = a3, v5))
  {
    if ((*(*v5 + 104))(v5, a4, &v17, &v19))
    {
      v8 = 0;
    }

    else
    {
      v8 = &v17;
    }

    v5 = *a1;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(*v5 + 120))(v5, a4, &v18);
  v10 = v9;
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (v8)
    {
      v13 = *v8;
      if ((byte_27DF7C0A8 & 1) == 0)
      {
        byte_27DF7C0A8 = 1;
        qword_27DF7C0A0 = &unk_284BBC360;
      }

      if (v13 == &qword_27DF7C0A0)
      {
        v14 = 0;
      }

      else
      {
        v14 = v8;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = a1[2];
    if (v15)
    {
      v16 = v18;
      do
      {
        (*(*v15 + 16))(v15, a2, v16, a4, v14, 2);
        v15 = v15[1];
      }

      while (v15);
    }

    v11 = 0;
    v10 = 0;
  }

  (*(*v17 + 16))(v17);
  return v10 | v11;
}

void *sub_23949CF50(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  result = (a1 + 16);
  v3 = v4;
  if (v4)
  {
    while (v3 != a2)
    {
      v5 = v3;
      v3 = *(v3 + 8);
      if (!v3)
      {
        result = (v5 + 8);
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *result = a2;
    *(a2 + 8) = 0;
  }

  return result;
}

void *sub_23949CF7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  result = (a1 + 16);
  v3 = v4;
  if (v4 == a2)
  {
LABEL_5:
    *result = *(a2 + 8);
    *(a2 + 8) = 0;
  }

  else
  {
    while (v3)
    {
      v5 = v3;
      v3 = *(v3 + 8);
      if (v3 == a2)
      {
        result = (v5 + 8);
        goto LABEL_5;
      }
    }
  }

  return result;
}

unint64_t sub_23949CFB0(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (*a1)
  {
    v4 = 0x15500000000;
    v5 = 47;
    if (a4 - 1 <= 0x1E && ((a4 + 31) & a4) == 0)
    {
      v6 = sub_23949D024(a1, a2, a3, a4);
      v4 = v6 & 0xFFFFFFFF00000000;
      v5 = v6;
    }
  }

  else
  {
    v4 = 0x15400000000;
    v5 = 3;
  }

  return v4 | v5;
}

unint64_t sub_23949D024(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = (*(**a1 + 136))(*a1);
  v9 = v8;
  v10 = HIDWORD(v8);
  v11 = v8;
  if (!v8)
  {
    v9 = 0;
    return v9 | (v10 << 32);
  }

  if (v8 != 45)
  {
    v12 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (v11 == 165)
      {
        v13 = "denied";
      }

      else
      {
        v13 = "error";
      }

      *buf = 136315138;
      *&buf[4] = v13;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "AccessControl: %s (delegate)", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      if (v11 == 165)
      {
        v14 = "denied";
      }

      else
      {
        v14 = "error";
      }

      sub_2393D5320(13, 2, "AccessControl: %s (delegate)", v14);
    }

    return v9 | (v10 << 32);
  }

  if (*(a2 + 1) == 32)
  {
    LODWORD(v10) = 0;
    v9 = 0;
    return v9 | (v10 << 32);
  }

  if ((byte_27DF7C0B8 & 1) == 0)
  {
    byte_27DF7C0B8 = 1;
    qword_27DF7C0B0 = &unk_284BBC418;
  }

  v30 = &qword_27DF7C0B0;
  if (!*a1)
  {
    v9 = 3;
    LODWORD(v10) = 633;
    goto LABEL_90;
  }

  v15 = (*(**a1 + 128))(*a1, &v30, a2);
  v9 = v15;
  if (v15)
  {
    v10 = HIDWORD(v15);
    goto LABEL_90;
  }

  if ((byte_27DF7C0A8 & 1) == 0)
  {
    byte_27DF7C0A8 = 1;
    qword_27DF7C0A0 = &unk_284BBC360;
  }

  v29 = &qword_27DF7C0A0;
  if ((*(*v30 + 24))(v30, &v29))
  {
LABEL_25:
    v16 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_DEFAULT, "AccessControl: denied", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(13, 2, "AccessControl: denied");
    }

    v9 = 165;
    LODWORD(v10) = 515;
    goto LABEL_89;
  }

  v9 = 3;
  LODWORD(v10) = 437;
  while (1)
  {
    v28 = 0;
    v17 = (*(*v29 + 24))(v29, &v28);
    if (v17)
    {
      goto LABEL_87;
    }

    if (v28 != 128 && v28 != 64)
    {
      v9 = 3;
      LODWORD(v10) = 413;
      goto LABEL_89;
    }

    if (v28 != *(a2 + 1))
    {
      goto LABEL_85;
    }

    v27 = 1;
    v17 = (*(*v29 + 40))(v29, &v27);
    if (v17)
    {
      goto LABEL_87;
    }

    if (v27 <= 3u)
    {
      break;
    }

    if (v27 == 4)
    {
      if (a4 == 1 || a4 == 4)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v27 == 8)
      {
        if (a4 > 8)
        {
          goto LABEL_85;
        }

        v18 = 1 << a4;
        v19 = 274;
      }

      else
      {
        if (v27 != 16 || a4 > 0x10)
        {
          goto LABEL_85;
        }

        v18 = 1 << a4;
        v19 = 65814;
      }

      if ((v18 & v19) != 0)
      {
        goto LABEL_54;
      }
    }

LABEL_85:
    if ((*(*v30 + 24))(v30, &v29))
    {
      goto LABEL_25;
    }
  }

  if (v27 == 1)
  {
    if (a4 == 1)
    {
      goto LABEL_54;
    }

    goto LABEL_85;
  }

  if (v27 != 2 || (a4 - 1) >= 2u)
  {
    goto LABEL_85;
  }

LABEL_54:
  v26 = 0;
  v17 = (*(*v29 + 72))(v29, &v26);
  if (v17)
  {
    goto LABEL_87;
  }

  if (v26)
  {
    v20 = 0;
    while (1)
    {
      *buf = 0;
      v17 = (*(*v29 + 80))(v29, v20, buf);
      if (v17)
      {
        goto LABEL_87;
      }

      if ((*buf - 1) > 0xFFFFFFEFFFFFFFFELL)
      {
        if (*&buf[4] == 4294967293)
        {
          if (v28 != 64)
          {
            LODWORD(v10) = 446;
            goto LABEL_89;
          }

          v21 = 0;
          while (1)
          {
            v22 = *(a2 + 16 + v21);
            if (v22)
            {
              if ((*buf - 1) < v22 && HIWORD(v22) == *&buf[2])
              {
                goto LABEL_74;
              }
            }

            v21 += 4;
            if (v21 == 12)
            {
              goto LABEL_72;
            }
          }
        }

        if (*buf < 0xFFFFFFFFFFFF0000)
        {
          LODWORD(v10) = 465;
          goto LABEL_89;
        }

        if (v28 != 128)
        {
          LODWORD(v10) = 455;
          goto LABEL_89;
        }
      }

      else if (v28 != 64)
      {
        goto LABEL_89;
      }

      if (*buf == *(a2 + 8))
      {
        break;
      }

LABEL_72:
      if (++v20 >= v26)
      {
        goto LABEL_85;
      }
    }
  }

LABEL_74:
  v25 = 0;
  v17 = (*(*v29 + 112))(v29, &v25);
  if (v17)
  {
LABEL_87:
    v10 = HIDWORD(v17);
    v9 = v17;
    goto LABEL_89;
  }

  if (v25)
  {
    v23 = 0;
    while (1)
    {
      *buf = 0;
      v17 = (*(*v29 + 120))(v29, v23, buf);
      if (v17)
      {
        goto LABEL_87;
      }

      if (((buf[0] & 1) == 0 || *&buf[4] == *a3) && ((buf[0] & 2) == 0 || *&buf[8] == *(a3 + 4)) && ((buf[0] & 4) == 0 || (*(*a1[1] + 16))(a1[1], v32, *(a3 + 4))))
      {
        break;
      }

      if (++v23 >= v25)
      {
        goto LABEL_85;
      }
    }
  }

  LODWORD(v10) = 0;
  v9 = 0;
LABEL_89:
  (*(*v29 + 16))(v29);
LABEL_90:
  (*(*v30 + 16))(v30);
  return v9 | (v10 << 32);
}

uint64_t *sub_23949D748()
{
  result = qword_27DF7B958;
  if (!qword_27DF7B958)
  {
    result = &qword_27DF7B960;
    if ((byte_27DF7B978 & 1) == 0)
    {
      byte_27DF7B978 = 1;
      qword_27DF7B968 = 0;
      unk_27DF7B970 = 0;
      qword_27DF7B960 = 0;
    }
  }

  return result;
}

void sub_23949D77C(uint64_t a1)
{
  v2 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "AccessControl: setting", v3, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(13, 2, "AccessControl: setting");
  }

  qword_27DF7B958 = a1;
}

uint64_t sub_23949D96C(uint64_t result)
{
  *(result + 7) = 0;
  *result = 0;
  return result;
}

void sub_23949D9A0(uint64_t a1)
{
  if (*(a1 + 10) == 1)
  {
    if (*a1)
    {
      sub_23949DA78(a1);
      j__free(*a1);
      *a1 = 0;
    }
  }
}

uint64_t sub_23949D9EC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = sub_2393D52C4(424 * a2);
    *a1 = v4;
    if (v4)
    {
      *(a1 + 9) = v3;
      *(a1 + 10) = 1;
      sub_23949DA78(a1);
      return 0;
    }

    v6 = 0x4800000000;
    v7 = 11;
  }

  else
  {
    v6 = 0x4600000000;
    v7 = 47;
  }

  sub_23949D9A0(a1);
  return v7 | v6;
}

void sub_23949DA78(uint64_t result)
{
  if (*(result + 9))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      sub_23949DB2C(*result + v2);
      ++v3;
      v2 += 424;
    }

    while (v3 < *(result + 9));
  }

  *(result + 8) = 0;
}

uint64_t sub_23949DAD4(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return 0x5C0000002FLL;
  }

  if (!a3)
  {
    return 0x5D0000002FLL;
  }

  *a1 = a2;
  *(a1 + 9) = a3;
  *(a1 + 10) = 0;
  sub_23949DA78(a1);
  return 0;
}

double sub_23949DB2C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  for (i = 16; i != 176; i += 32)
  {
    v2 = a1 + i;
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 23) = 0;
    *(v2 + 16) = 0;
  }

  v3 = 0;
  do
  {
    v4 = a1 + 176 + v3;
    v3 += 32;
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 23) = 0;
    *(v4 + 16) = 0;
  }

  while (v3 != 160);
  *(a1 + 336) = &unk_2395D6B90;
  *(a1 + 344) = &unk_2395D6B90;
  *(a1 + 352) = 0;
  *(a1 + 360) = &unk_2395D6B90;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = &unk_2395D6B90;
  result = 0.0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  return result;
}

unint64_t sub_23949DBA0(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  sub_2393C5AAC(v9);
  sub_2393C5ADC(v9, a2, a3);
  return sub_23949DC04(a1, v9, a4);
}

unint64_t sub_23949DC04(uint64_t a1, uint64_t a2, char a3)
{
  v13 = *MEMORY[0x277D85DE8];
  sub_23949EC50(v12);
  v6 = sub_2394A2C0C(a2, v12, a3);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else if ((~v12[187] & 0x18) != 0)
  {
    v7 = 0x9000000000;
    LODWORD(v6) = 80;
  }

  else if (v12[186] == 513)
  {
    LODWORD(v8) = *(a1 + 8);
    if (*(a1 + 8))
    {
      v9 = 0;
      v10 = 0;
      while (!sub_23949DD74(v12, *a1 + v9))
      {
        ++v10;
        v8 = *(a1 + 8);
        v9 += 424;
        if (v10 >= v8)
        {
          goto LABEL_9;
        }
      }

      v7 = 0;
      LODWORD(v6) = 0;
    }

    else
    {
LABEL_9:
      if (v8 >= *(a1 + 9))
      {
        v7 = 0xA000000000;
        LODWORD(v6) = 11;
      }

      else
      {
        memcpy((*a1 + 424 * v8), v12, 0x1A8uLL);
        v7 = 0;
        LODWORD(v6) = 0;
        ++*(a1 + 8);
      }
    }
  }

  else
  {
    v7 = 0x9300000000;
    LODWORD(v6) = 23;
  }

  return v6 | v7;
}

BOOL sub_23949DD74(uint64_t a1, uint64_t a2)
{
  result = sub_23949EB88(a1 + 16, a2 + 16);
  if (result)
  {
    result = sub_23949EB88(a1 + 176, a2 + 176);
    if (result)
    {
      v5 = *(a2 + 336);
      v6 = *(a1 + 336);
      v7 = *v6;
      v8 = v6[1];
      v9 = *v5;
      v10 = v5[1];
      v11 = *(v6 + 4);
      v12 = *(v5 + 4);
      v14 = v7 == v9 && v8 == v10 && v11 == v12;
      if (v14 && ((v15 = *(a2 + 344), v16 = *(a1 + 344), v17 = *v16, v18 = v16[1], v19 = *v15, v20 = v15[1], v21 = *(v16 + 4), v22 = *(v15 + 4), v17 == v19) ? (v23 = v18 == v20) : (v23 = 0), v23 ? (v24 = v21 == v22) : (v24 = 0), v24 && *(a1 + 352) == *(a2 + 352) && *(a1 + 356) == *(a2 + 356) && !memcmp(*(a1 + 360), *(a2 + 360), 0x41uLL) && *(a1 + 368) == *(a2 + 368) && *(a1 + 370) == *(a2 + 370) && *(a1 + 372) == *(a2 + 372) && *(a1 + 374) == *(a2 + 374) && *(a1 + 376) == *(a2 + 376) && *(a1 + 378) == *(a2 + 378) && *(a1 + 379) == *(a2 + 379) && !memcmp(*(a1 + 384), *(a2 + 384), 0x40uLL)))
      {
        return *(a1 + 392) == *(a2 + 392) && *(a1 + 400) == *(a2 + 400) && *(a1 + 408) == *(a2 + 408) && *(a1 + 416) == *(a2 + 416);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23949DEEC(uint64_t a1)
{
  if (*(a1 + 8) && *a1)
  {
    v1 = 0;
    v2 = 0;
    --*(a1 + 8);
  }

  else
  {
    v1 = 0xAB00000000;
    v2 = 172;
  }

  return v2 | v1;
}

uint64_t sub_23949DF2C(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    return 0;
  }

  for (result = *a1; ; result += 424)
  {
    v4 = *(result + 336);
    v5 = *v4;
    v6 = v4[1];
    v7 = *(v4 + 4);
    v8 = v5 == **a2 && v6 == *(*a2 + 8);
    if (v8 && v7 == *(*a2 + 16))
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_23949DF74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    return 0;
  }

  if (*a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = *a1 + 424;
  do
  {
    v5 = v3 + 1;
    if (v2 - 1 == v3)
    {
      break;
    }

    ++v3;
    v6 = v4 == a2;
    v4 += 424;
  }

  while (!v6);
  return v5 < v2;
}

unint64_t sub_23949DFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    goto LABEL_9;
  }

  if (*a1 == a2)
  {
    goto LABEL_8;
  }

  v4 = 0;
  v5 = *a1 + 424;
  do
  {
    v6 = v4 + 1;
    if (v3 - 1 == v4)
    {
      break;
    }

    ++v4;
    v7 = v5 == a2;
    v5 += 424;
  }

  while (!v7);
  if (v6 < v3)
  {
LABEL_8:
    *(a3 + 16) = 0;
    v8 = sub_23949E05C(a1, a2, a3, 0);
    v9 = v8 & 0xFFFFFFFF00000000;
    v10 = v8;
  }

  else
  {
LABEL_9:
    v9 = 0xD000000000;
    v10 = 47;
  }

  return v10 | v9;
}

unint64_t sub_23949E05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v56[5] = *MEMORY[0x277D85DE8];
  v54 = 0;
  v53 = 0;
  v8 = sub_23949E8C0(a2 + 16, &v53);
  if (v8)
  {
    goto LABEL_2;
  }

  v11 = *(a2 + 374);
  if ((v11 & 0x20) != 0)
  {
    v8 = 0x10600000000;
    goto LABEL_8;
  }

  if (a4)
  {
    if ((v11 & 0x80) == 0)
    {
      v8 = 0x10C00000000;
LABEL_8:
      v10 = 77;
      return v8 & 0xFFFFFFFF00000000 | v10;
    }

    if ((v11 & 2) == 0 || (*(a2 + 376) & 0x20) == 0)
    {
      v8 = 0x11000000000;
      goto LABEL_8;
    }

    if (v53 - 1 <= 1)
    {
      if ((v11 & 0x40) != 0 && a4 - 1 > *(a2 + 379))
      {
        v8 = 0x11E00000000;
        v10 = 75;
        return v8 & 0xFFFFFFFF00000000 | v10;
      }

      goto LABEL_28;
    }

    v8 = 0x11300000000;
LABEL_37:
    v10 = 157;
    return v8 & 0xFFFFFFFF00000000 | v10;
  }

  if (*(a3 + 24) && ((v11 & 2) == 0 || (*(a3 + 24) & ~*(a2 + 376)) != 0))
  {
    v8 = 0x12B00000000;
    goto LABEL_8;
  }

  if (*(a3 + 26) && ((v11 & 4) == 0 || (*(a3 + 26) & ~*(a2 + 378)) != 0))
  {
    v8 = 0x13400000000;
    goto LABEL_8;
  }

  if (*(a3 + 27) && v53 != *(a3 + 27))
  {
    v8 = 0x13A00000000;
    goto LABEL_37;
  }

LABEL_28:
  if (*a3 == 1)
  {
    if (*(a2 + 356) && (v23 = sub_23949EB1C(a3, v9), v24 = *(a2 + 356), *v23 > v24))
    {
      v25 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v27 = *sub_23949EB1C(a3, v26);
        *buf = 67109376;
        v56[0] = v24;
        LOWORD(v56[1]) = 1024;
        *(&v56[1] + 2) = v27;
        _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_INFO, "Certificate's mNotAfterTime (%u) is before last known good time (%u)", buf, 0xEu);
      }

      if (sub_2393D5398(3u))
      {
        v29 = *(a2 + 356);
        v30 = sub_23949EB1C(a3, v28);
        sub_2393D5320(11, 3, "Certificate's mNotAfterTime (%u) is before last known good time (%u)", v29, *v30);
      }

      v22 = 4;
    }

    else
    {
      v22 = 3;
    }
  }

  else if (*a3)
  {
    v22 = 5;
  }

  else
  {
    v13 = sub_23949EAFC(a3, v9);
    v15 = *(a2 + 352);
    if (*v13 >= v15)
    {
      if (*(a2 + 356) && (v31 = sub_23949EAFC(a3, v14), v32 = *(a2 + 356), *v31 > v32))
      {
        v33 = sub_2393D9044(0xBu);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v35 = *sub_23949EAFC(a3, v34);
          *buf = 67109376;
          v56[0] = v32;
          LOWORD(v56[1]) = 1024;
          *(&v56[1] + 2) = v35;
          _os_log_impl(&dword_238DAE000, v33, OS_LOG_TYPE_INFO, "Certificate's mNotAfterTime (%u) is before current time (%u)", buf, 0xEu);
        }

        if (sub_2393D5398(3u))
        {
          v37 = *(a2 + 356);
          v38 = sub_23949EAFC(a3, v36);
          sub_2393D5320(11, 3, "Certificate's mNotAfterTime (%u) is before current time (%u)", v37, *v38);
        }

        v22 = 2;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v16 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v18 = *sub_23949EAFC(a3, v17);
        *buf = 67109376;
        v56[0] = v15;
        LOWORD(v56[1]) = 1024;
        *(&v56[1] + 2) = v18;
        _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_INFO, "Certificate's mNotBeforeTime (%u) is after current time (%u)", buf, 0xEu);
      }

      if (sub_2393D5398(3u))
      {
        v20 = *(a2 + 352);
        v21 = sub_23949EAFC(a3, v19);
        sub_2393D5320(11, 3, "Certificate's mNotBeforeTime (%u) is after current time (%u)", v20, *v21);
      }

      v22 = 1;
    }
  }

  v39 = *(a3 + 32);
  if (v39)
  {
    v8 = (*(*v39 + 16))(v39, a2, a4, v22);
    if (v8)
    {
LABEL_2:
      v10 = v8;
      return v8 & 0xFFFFFFFF00000000 | v10;
    }
  }

  else if (v22 <= 2 && v22)
  {
    if (v22 == 1)
    {
      v8 = 0x5C600000000;
      v10 = 79;
    }

    else
    {
      v8 = 0x5C900000000;
      v10 = 78;
    }

    return v8 & 0xFFFFFFFF00000000 | v10;
  }

  if ((*(a2 + 374) & 0x100) != 0)
  {
    v8 = 0;
    v10 = 0;
    *(a3 + 16) = a2;
    return v8 & 0xFFFFFFFF00000000 | v10;
  }

  if (sub_23949EB88(a2 + 176, a2 + 16))
  {
    v40 = *(a2 + 336);
    v41 = *(a2 + 344);
    v42 = *v41;
    v43 = v41[1];
    v44 = *v40;
    v45 = v40[1];
    v46 = *(v41 + 4);
    v47 = *(v40 + 4);
    v48 = v42 == v44 && v43 == v45;
    if (v48 && v46 == v47)
    {
      v8 = 0x18C00000000;
      v10 = 87;
      return v8 & 0xFFFFFFFF00000000 | v10;
    }
  }

  if (*(a1 + 8) <= a4)
  {
    v8 = 0x19200000000;
    v10 = 76;
    return v8 & 0xFFFFFFFF00000000 | v10;
  }

  if (!sub_23949E61C(a1, a2 + 176, a2 + 344, a3, (a4 + 1), &v54))
  {
    v8 = sub_23949E790(a2, v54);
    goto LABEL_2;
  }

  v50 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    v51 = sub_2393C9138();
    *buf = 136315138;
    *v56 = v51;
    _os_log_impl(&dword_238DAE000, v50, OS_LOG_TYPE_ERROR, "Failed to find valid cert during chain traversal: %s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    v52 = sub_2393C9138();
    sub_2393D5320(11, 1, "Failed to find valid cert during chain traversal: %s", v52);
  }

  v8 = 0x19A00000000;
  v10 = 74;
  return v8 & 0xFFFFFFFF00000000 | v10;
}

unint64_t sub_23949E61C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, void *a6)
{
  *a6 = 0;
  if (a5)
  {
    v6 = 74;
  }

  else
  {
    v6 = 83;
  }

  if (*(a1 + 8))
  {
    v10 = 0;
    v11 = 0;
    v12 = 430;
    while (1)
    {
      v13 = *a1;
      v14 = *a1 + v10;
      if (sub_23949EB88(v14 + 16, a2))
      {
        v15 = *(v14 + 336);
        v16 = *v15;
        v17 = v15[1];
        v18 = *(v15 + 4);
        v19 = v16 == **a3 && v17 == *(*a3 + 8);
        if (v19 && v18 == *(*a3 + 16))
        {
          v21 = sub_23949E05C(a1, v14, a4, a5);
          v6 = v21;
          v12 = HIDWORD(v21);
          if (!v21)
          {
            break;
          }
        }
      }

      ++v11;
      v10 += 424;
      if (v11 >= *(a1 + 8))
      {
        return v6 | (v12 << 32);
      }
    }

    *a6 = v13 + v10;
  }

  else
  {
    v12 = 430;
  }

  return v6 | (v12 << 32);
}

uint64_t sub_23949E74C(uint64_t a1, uint64_t a2)
{
  result = 0xE10000002FLL;
  if (a1)
  {
    if (a2)
    {
      return sub_23949E790(a1, a2);
    }
  }

  return result;
}

uint64_t sub_23949E790(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 374) & 0x200) != 0)
  {
    if (*(a1 + 372) == 513)
    {
      v17 = 64;
      v18 = &unk_284BB9138;
      v4 = *(a1 + 384);
      v5 = v4[3];
      v7 = *v4;
      v6 = v4[1];
      v16[2] = v4[2];
      v16[3] = v5;
      v16[0] = v7;
      v16[1] = v6;
      v8 = *(a2 + 360);
      v19 = *v8;
      v10 = v8[2];
      v9 = v8[3];
      v11 = *(v8 + 64);
      v20 = v8[1];
      v21 = v10;
      v23 = v11;
      v22 = v9;
      v12 = sub_2393F8B68(&v18, a1 + 392, 32, v16);
      v13 = v12;
      v14 = v12 & 0xFFFFFFFF00000000;
      sub_2393F9144(v16, 64);
      v3 = v13;
      if (v13)
      {
        v2 = v14;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = 0xE800000000;
      v3 = 23;
    }
  }

  else
  {
    v2 = 0xE700000000;
    v3 = 47;
  }

  return v2 | v3;
}

uint64_t sub_23949E8C0(uint64_t a1, _BYTE *a2)
{
  v4 = 0;
  v5 = 24;
  while (*(a1 + v5))
  {
    ++v4;
    v5 += 32;
    if (v4 == 5)
    {
      goto LABEL_13;
    }
  }

  if (v4 == 1)
  {
    if (*(a1 + 24) == 769 && (*(a1 + 26) & 1) == 0 && sub_23949EDC8(a1, &off_278A83080))
    {
      LOBYTE(v6) = 5;
LABEL_52:
      v12 = 0;
      v10 = 0;
      *a2 = v6;
      return v10 | v12;
    }

    v4 = 1;
LABEL_13:
    *a2 = 0;
  }

  else
  {
    *a2 = 0;
    if (!v4)
    {
      LOBYTE(v6) = 0;
      goto LABEL_52;
    }
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = a1 + 16;
  v10 = 89;
  do
  {
    v11 = *(v9 + 8);
    if (v11 <= 0x313)
    {
      switch(v11)
      {
        case 0x311u:
          if (v6)
          {
            v12 = 0x28400000000;
            return v10 | v12;
          }

          if ((*v9 - 1) >= 0xFFFFFFEFFFFFFFFFLL)
          {
            v12 = 0x28500000000;
            v10 = 92;
            return v10 | v12;
          }

          v6 = 3;
          break;
        case 0x312u:
          if (v6)
          {
            v12 = 0x28A00000000;
            return v10 | v12;
          }

          v6 = 4;
          break;
        case 0x313u:
          if (v6)
          {
            v12 = 0x27800000000;
            return v10 | v12;
          }

          v6 = 2;
          break;
      }
    }

    else if (*(v9 + 8) > 0x315u)
    {
      if (v11 == 790)
      {
        if (HIDWORD(*v9))
        {
          v12 = 0x29700000000;
          return v10 | v12;
        }

        if (!*v9)
        {
          v12 = 0x29800000000;
          return v10 | v12;
        }

        v7 = 1;
      }

      else if (v11 == 791)
      {
        if (v6)
        {
          v12 = 0x27E00000000;
          return v10 | v12;
        }

        v6 = 6;
      }
    }

    else if (v11 == 788)
    {
      if (v6)
      {
        v12 = 0x27200000000;
        return v10 | v12;
      }

      v6 = 1;
    }

    else if (v11 == 789)
    {
      if (v8)
      {
        v12 = 0x29100000000;
        return v10 | v12;
      }

      if (!*v9)
      {
        v12 = 0x29200000000;
        return v10 | v12;
      }

      v8 = 1;
    }

    v9 += 32;
    --v4;
  }

  while (v4);
  if (v6 == 3)
  {
    if (v8)
    {
      LOBYTE(v6) = 3;
      goto LABEL_52;
    }

    v12 = 0x29F00000000;
  }

  else if (v7)
  {
    v12 = 0x2A300000000;
  }

  else
  {
    if (((v6 == 6) & v8) == 0)
    {
      goto LABEL_52;
    }

    v12 = 0x2A800000000;
  }

  v10 = 89;
  return v10 | v12;
}

void *sub_23949EAFC(void *a1, uint64_t a2)
{
  if (*a1)
  {
    sub_23953588C();
  }

  return a1 + 1;
}

void *sub_23949EB1C(void *a1, uint64_t a2)
{
  if (*a1 != 1)
  {
    sub_23953588C();
  }

  return a1 + 1;
}

uint64_t sub_23949EB40(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 > 5)
  {
    return 0x5CC000000ACLL;
  }

  else
  {
    return qword_2395D6C08[a3] | qword_2395D6BD8[a3];
  }
}

BOOL sub_23949EB88(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = 0;
  v5 = (a1 + 24);
  do
  {
    v6 = *v5;
    v5 += 16;
    if (!v6)
    {
      if (v4)
      {
        v7 = -v4;
        goto LABEL_7;
      }

      return 0;
    }

    --v4;
  }

  while (v4 != -5);
  v7 = 5;
LABEL_7:
  v8 = 0;
  v9 = (a2 + 24);
  while (1)
  {
    v10 = *v9;
    v9 += 16;
    if (!v10)
    {
      break;
    }

    if (++v8 == 5)
    {
      goto LABEL_12;
    }
  }

  LODWORD(v8) = v8;
LABEL_12:
  if (v7 != v8)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  v11 = v7 - 1;
  do
  {
    result = sub_23949ED6C(v3, v2);
    v14 = v11-- != 0;
    if (!result)
    {
      break;
    }

    v3 += 32;
    v2 += 32;
  }

  while (v14);
  return result;
}

uint64_t sub_23949EC50(uint64_t result)
{
  v1 = 0;
  *result = 0;
  *(result + 8) = 0;
  do
  {
    v2 = result + v1;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 40) = 0;
    v1 += 32;
  }

  while (v1 != 160);
  for (i = 16; i != 176; i += 32)
  {
    v4 = result + i;
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 23) = 0;
    *(v4 + 16) = 0;
  }

  for (j = 0; j != 160; j += 32)
  {
    v6 = result + j;
    *(v6 + 176) = 0;
    *(v6 + 184) = 0;
    *(v6 + 200) = 0;
  }

  for (k = 176; k != 336; k += 32)
  {
    v8 = result + k;
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 23) = 0;
    *(v8 + 16) = 0;
  }

  *(result + 336) = &unk_2395D6B90;
  *(result + 344) = &unk_2395D6B90;
  *(result + 360) = &unk_2395D6B90;
  *(result + 374) = 0;
  *(result + 378) = 0;
  *(result + 384) = &unk_2395D6B90;
  return result;
}

uint64_t sub_23949ECF0(uint64_t result)
{
  for (i = 0; i != 160; i += 32)
  {
    v2 = result + i;
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 24) = 0;
  }

  v3 = 0;
  do
  {
    v4 = result + v3;
    v3 += 32;
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 23) = 0;
    *(v4 + 16) = 0;
  }

  while (v3 != 160);
  return result;
}

uint64_t sub_23949ED30(uint64_t result)
{
  v1 = 0;
  do
  {
    v2 = result + v1;
    v1 += 32;
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 23) = 0;
    *(v2 + 16) = 0;
  }

  while (v1 != 160);
  return result;
}

uint64_t sub_23949ED54(uint64_t result)
{
  *result = -1;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

BOOL sub_23949ED6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (*(a1 + 24))
  {
    v3 = v2 == 0xFFFF;
  }

  else
  {
    v3 = 1;
  }

  if (v3 || v2 != *(a2 + 24) || *(a1 + 26) != *(a2 + 26))
  {
    return 0;
  }

  if ((v2 - 785) > 6)
  {
    return sub_23949EDC8(a1, a2);
  }

  return *(a1 + 16) == *(a2 + 16);
}

BOOL sub_23949EDC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (v2)
  {
    return memcmp(*a1, *a2, v2) == 0;
  }

  return 1;
}

uint64_t sub_23949EE18(uint64_t a1)
{
  v1 = 0;
  v2 = (a1 + 24);
  do
  {
    v3 = *v2;
    v2 += 16;
    if (!v3)
    {
      break;
    }

    ++v1;
  }

  while (v1 != 5);
  return v1;
}

uint64_t sub_23949EE3C(uint64_t a1, int a2, unint64_t a3)
{
  v3 = 0;
  v4 = (a1 + 26);
  v5 = 11;
  while (*(v4 - 1))
  {
    ++v3;
    v4 += 32;
    if (v3 == 5)
    {
      v6 = 0x23100000000;
      return v5 | v6;
    }
  }

  if (v3 > 4)
  {
    v6 = 0x23100000000;
    v5 = 11;
  }

  else
  {
    if ((a2 - 785) > 6)
    {
      v6 = 0x23200000000;
    }

    else
    {
      if (a2 != 790 || !HIDWORD(a3))
      {
        v6 = 0;
        v5 = 0;
        *(v4 - 1) = a2;
        *(v4 - 10) = a3;
        *v4 = 0;
        return v5 | v6;
      }

      v6 = 0x23600000000;
    }

    v5 = 47;
  }

  return v5 | v6;
}

uint64_t sub_23949EEE8(uint64_t a1, uint64_t a2)
{
  if (!sub_239221020(a2))
  {
    return 0x2420000002FLL;
  }

  v4 = 0;
  v5 = 11;
  while (1)
  {
    v6 = *(a2 + v4);
    if (v6)
    {
      break;
    }

LABEL_10:
    v4 += 4;
    if (v4 == 12)
    {
      v5 = 0;
      v9 = 0;
      return v9 | v5;
    }
  }

  v7 = 0;
  for (i = (a1 + 26); *(i - 1); i += 32)
  {
    if (++v7 == 5)
    {
      return 0x2310000000BLL;
    }
  }

  if (v7 <= 4)
  {
    *(i - 1) = 790;
    *(i - 10) = v6;
    *i = 0;
    goto LABEL_10;
  }

  v9 = 0x23100000000;
  return v9 | v5;
}

uint64_t sub_23949EFB4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = 0;
  v6 = a1 + 24;
  v7 = 11;
  while (*v6)
  {
    ++v5;
    v6 += 32;
    if (v5 == 5)
    {
      v8 = 0x25300000000;
      return v7 | v8;
    }
  }

  if (v5 > 4)
  {
    v8 = 0x25300000000;
    v7 = 11;
  }

  else
  {
    if ((a2 - 785) < 7)
    {
      v8 = 0x25400000000;
LABEL_12:
      v7 = 47;
      return v7 | v8;
    }

    if (!a2)
    {
      v8 = 0x25500000000;
      goto LABEL_12;
    }

    v8 = 0;
    v7 = 0;
    *v6 = a2;
    *(v6 - 24) = a3;
    *(v6 - 16) = a4;
    *(v6 + 2) = a5;
  }

  return v7 | v8;
}

uint64_t sub_23949F054(uint64_t a1, void *a2)
{
  v2 = 0;
  v3 = (a1 + 24);
  while (1)
  {
    v4 = *v3;
    v3 += 16;
    if (!v4)
    {
      break;
    }

    if (++v2 == 5)
    {
      *a2 = 0;
      goto LABEL_6;
    }
  }

  *a2 = 0;
  if (!v2)
  {
LABEL_20:
    v13 = 0x2CB00000000;
    v7 = 89;
    return v7 | v13;
  }

LABEL_6:
  v5 = 0;
  v6 = 0;
  v7 = 89;
  while (2)
  {
    v8 = (a1 + 24 + 32 * v5++);
    while (1)
    {
      v9 = *v8 - 785;
      v10 = v9 > 6;
      v11 = (1 << v9) & 0x4F;
      if (!v10 && v11 != 0)
      {
        break;
      }

      ++v5;
      v8 += 16;
      if (v5 - v2 == 1)
      {
        if ((v6 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    if ((v6 & 1) == 0)
    {
      *a2 = *(v8 - 1);
      v6 = 1;
      if (v5 != v2)
      {
        continue;
      }

LABEL_19:
      v13 = 0;
      v7 = 0;
      return v7 | v13;
    }

    break;
  }

  v13 = 0x2C100000000;
  return v7 | v13;
}

uint64_t sub_23949F134(uint64_t a1, void *a2)
{
  v2 = 0;
  v3 = (a1 + 24);
  while (1)
  {
    v4 = *v3;
    v3 += 16;
    if (!v4)
    {
      break;
    }

    if (++v2 == 5)
    {
      *a2 = 0;
      goto LABEL_6;
    }
  }

  *a2 = 0;
  if (!v2)
  {
    v8 = 0x2E400000000;
    v7 = 89;
    return v7 | v8;
  }

LABEL_6:
  v5 = 0;
  v6 = (a1 + 24);
  v7 = 89;
  do
  {
    if (*v6 == 789)
    {
      if (v5)
      {
        v8 = 0x2DB00000000;
        return v7 | v8;
      }

      v5 = *(v6 - 1);
      if (!v5)
      {
        v8 = 0x2DC00000000;
        return v7 | v8;
      }

      *a2 = v5;
    }

    v6 += 16;
    --v2;
  }

  while (v2);
  v8 = 0x2E400000000;
  v7 = 89;
  if (v5)
  {
    v8 = 0;
    v7 = 0;
  }

  return v7 | v8;
}

unint64_t sub_23949F1EC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = 0;
  v6 = (a1 + 24);
  while (1)
  {
    v7 = *v6;
    v6 += 16;
    if (!v7)
    {
      break;
    }

    if (++v5 == 5)
    {
      LODWORD(v8) = 5;
      goto LABEL_6;
    }
  }

  LODWORD(v8) = v5;
LABEL_6:
  v13 = 0;
  result = sub_2393C8CE0(a2, a3, 23, &v13);
  if (!result)
  {
    if (v8)
    {
      v8 = v8;
      v10 = a1 + 16;
      do
      {
        v11 = *(v10 + 8);
        if (*(v10 + 10))
        {
          v12 = v11 | 0x80;
        }

        else
        {
          v12 = *(v10 + 8);
        }

        if ((v11 - 785) > 6)
        {
          result = sub_2393C85FC(a2, v12, *(v10 - 16), *(v10 - 8));
          if (result)
          {
            return result;
          }
        }

        else
        {
          result = sub_2393C8154(a2, v12, *v10);
          if (result)
          {
            return result;
          }
        }

        v10 += 32;
        --v8;
      }

      while (v8);
    }

    return sub_2393C8DE0(a2, v13);
  }

  return result;
}

unint64_t sub_23949F2D4(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a2) != 23)
  {
    v4 = 0x30E00000000;
    v5 = 38;
    return v4 & 0xFFFFFFFF00000000 | v5;
  }

  v13 = 0;
  v4 = sub_2393C6A2C(a2, &v13);
  if (v4)
  {
LABEL_3:
    v5 = v4;
    return v4 & 0xFFFFFFFF00000000 | v5;
  }

  v5 = 36;
  while (1)
  {
    v4 = sub_2393C6B34(a2);
    if (v4)
    {
      break;
    }

    v7 = *(a2 + 16);
    if (v7 > 0xFF)
    {
      v4 = 0x31800000000;
      return v4 & 0xFFFFFFFF00000000 | v5;
    }

    v8 = v7 & 0x7F | 0x300;
    if ((v7 & 0x7F) - 17 < 5)
    {
LABEL_10:
      *&v12 = 0;
      if ((v7 & 0x80) != 0)
      {
        v4 = 0x32E00000000;
        return v4 & 0xFFFFFFFF00000000 | v5;
      }

      v4 = sub_2393C5F2C(a2, &v12);
      if (v4)
      {
        goto LABEL_3;
      }

      v9 = v12;
      if (v8 == 789)
      {
        if (!v12)
        {
          v4 = 0x33600000000;
LABEL_38:
          v5 = 47;
          return v4 & 0xFFFFFFFF00000000 | v5;
        }
      }

      else if (v8 == 785 && (v12 - 1) >= 0xFFFFFFEFFFFFFFFFLL)
      {
        v4 = 0x33200000000;
        v5 = 92;
        return v4 & 0xFFFFFFFF00000000 | v5;
      }

      v10 = a1;
      v11 = v7 & 0x7F | 0x300;
      goto LABEL_23;
    }

    if (v8 == 790)
    {
      LODWORD(v12) = 0;
      if ((v7 & 0x80) != 0)
      {
        v4 = 0x33E00000000;
        return v4 & 0xFFFFFFFF00000000 | v5;
      }

      v4 = sub_2393C5FC8(a2, &v12);
      if (v4)
      {
        goto LABEL_3;
      }

      v9 = v12;
      if (!v12)
      {
        v4 = 0x34200000000;
        goto LABEL_38;
      }

      v10 = a1;
      v11 = 790;
LABEL_23:
      v4 = sub_23949EE3C(v10, v11, v9);
      if (v4)
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v8 == 791)
      {
        goto LABEL_10;
      }

      v12 = 0uLL;
      v4 = sub_2393C61E0(a2, &v12);
      if (v4)
      {
        goto LABEL_3;
      }

      v4 = sub_23949EFB4(a1, v7 & 0x7F | 0x300, v12, *(&v12 + 1), (v7 & 0x80) != 0);
      if (v4)
      {
        goto LABEL_3;
      }
    }
  }

  if (v4 != 33)
  {
    goto LABEL_3;
  }

  v4 = sub_2393C6A98(a2, v13);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v4 & 0xFFFFFFFF00000000 | v5;
}

unint64_t sub_23949F4C8(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v18 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 24);
  while (1)
  {
    v6 = *v5;
    v5 += 16;
    if (!v6)
    {
      break;
    }

    if (++v4 == 5)
    {
      v7 = 5;
      goto LABEL_6;
    }
  }

  v7 = v4;
LABEL_6:
  v8 = sub_2393F77A4(a2, 0, 0x10u);
  if (!v8)
  {
    if (v7)
    {
      v9 = v7;
      v10 = a1 + 16;
      while (1)
      {
        v8 = sub_2393F77A4(a2, 0, 0x11u);
        if (v8)
        {
          goto LABEL_31;
        }

        v11 = *(v10 + 8);
        if ((v11 - 785) < 5)
        {
          goto LABEL_11;
        }

        if (v11 != 790)
        {
          break;
        }

        v12 = v17;
        v8 = sub_2393D5FC4(*v10, v17, 0x10uLL, 1u);
        if (v8)
        {
          goto LABEL_31;
        }

        v13 = 12;
        v14 = 8;
LABEL_13:
        v8 = sub_2393F77A4(a2, 0, 0x10u);
        if (v8)
        {
          goto LABEL_31;
        }

        v8 = sub_2393F5C58(a2, v11);
        if (v8)
        {
          goto LABEL_31;
        }

        if (v14 >> 16)
        {
          v15 = 0x38B00000000;
          LODWORD(v8) = 80;
          return v15 | v8;
        }

        v8 = sub_2393F714C(a2, v13, v12, v14);
        if (v8)
        {
          goto LABEL_31;
        }

        v8 = sub_2393F77B0(a2);
        if (v8)
        {
          goto LABEL_31;
        }

        v8 = sub_2393F77B0(a2);
        if (v8)
        {
          goto LABEL_31;
        }

        v10 += 32;
        if (!--v9)
        {
          goto LABEL_30;
        }
      }

      if (v11 != 791)
      {
        v12 = *(v10 - 16);
        v14 = *(v10 - 8);
        if (v11 == 784)
        {
          v13 = 22;
        }

        else if (*(v10 + 10))
        {
          v13 = 19;
        }

        else
        {
          v13 = 12;
        }

        goto LABEL_13;
      }

LABEL_11:
      v12 = v17;
      v8 = sub_2393D5F58(*v10, v17, 0x10uLL, 1u);
      if (v8)
      {
        goto LABEL_31;
      }

      v13 = 12;
      v14 = 16;
      goto LABEL_13;
    }

LABEL_30:
    v8 = sub_2393F77B0(a2);
  }

LABEL_31:
  v15 = v8 & 0xFFFFFFFF00000000;
  return v15 | v8;
}

unint64_t sub_23949F6CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2393F5CEC(a2, a2);
  if (v4)
  {
    goto LABEL_2;
  }

  if (*a2 || *(a2 + 1) != 16)
  {
    v5 = 0x3A100000000;
    goto LABEL_52;
  }

  v4 = sub_2393F5F1C(a2);
  if (v4)
  {
LABEL_2:
    v5 = v4;
LABEL_53:
    v23 = v5 & 0xFFFFFFFF00000000;
    return v23 | v4;
  }

  LODWORD(v4) = 773;
  v7 = 774;
  while (1)
  {
    if (sub_2393F5CEC(a2, v6))
    {
      v25 = sub_2393F5CEC(a2, v8);
      v4 = v25;
      if (v25)
      {
        if (v25 == 768)
        {
          v5 = sub_2393F602C();
          LODWORD(v4) = v5;
          goto LABEL_53;
        }

        goto LABEL_2;
      }

      v5 = 0x3F400000000;
LABEL_52:
      LODWORD(v4) = 773;
      goto LABEL_53;
    }

    if (*a2)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a2 + 1) == 17;
    }

    if (!v9)
    {
      v5 = 0x3A600000000;
      goto LABEL_53;
    }

    v5 = sub_2393F5F1C(a2);
    if (v5)
    {
      goto LABEL_61;
    }

    v5 = sub_2393F5CEC(a2, v10);
    if (v5)
    {
      goto LABEL_61;
    }

    v5 = 0x3A900000000;
    if (*a2 || *(a2 + 1) != 16)
    {
      goto LABEL_53;
    }

    v5 = sub_2393F5F1C(a2);
    if (v5)
    {
      goto LABEL_61;
    }

    v27 = 0;
    v5 = sub_2393F5CEC(a2, v11);
    if (v5)
    {
      goto LABEL_61;
    }

    v5 = 0x3AE00000000;
    if (*a2 || *(a2 + 1) != 6)
    {
      goto LABEL_53;
    }

    v5 = sub_2393F5BA0(a2, &v27);
    if (v5)
    {
      goto LABEL_61;
    }

    if (sub_2393F5B1C(v27) != 768)
    {
      v14 = 0x3AF00000000;
      goto LABEL_68;
    }

    v5 = sub_2393F5CEC(a2, v12);
    if (v5)
    {
      goto LABEL_61;
    }

    if (*a2)
    {
      v14 = 0x3BA00000000;
      goto LABEL_77;
    }

    v13 = *(a2 + 1);
    v14 = 0x3BA00000000;
    if (v13 > 0x16 || ((1 << v13) & 0x481000) == 0)
    {
      goto LABEL_77;
    }

    v15 = v27;
    if (v13 != 12 && (v27 - 792) > 0xFFF8u)
    {
      break;
    }

    if (v27 - 785 >= 5)
    {
      if (v27 == 790)
      {
        LODWORD(v26[0]) = 0;
        if (sub_2393D6198(*(a2 + 8), *(a2 + 16), v26) == 4)
        {
          v17 = LODWORD(v26[0]);
          if (LOWORD(v26[0]))
          {
            v16 = v27;
            goto LABEL_44;
          }

          v14 = 0x3DE00000000;
LABEL_76:
          v7 = 89;
          goto LABEL_77;
        }

        v14 = 0x3DC00000000;
LABEL_72:
        v7 = 773;
        goto LABEL_77;
      }

      if (v27 != 791)
      {
        v18 = v13 == 19;
        sub_238DB9BD8(v26, *(a2 + 8), *(a2 + 16));
        v14 = sub_23949EFB4(a1, v15, v26[0], v26[1], v18);
        if (v14)
        {
          goto LABEL_69;
        }

        goto LABEL_45;
      }
    }

    v26[0] = 0;
    if (sub_2393D6110(*(a2 + 8), *(a2 + 16), v26) != 8)
    {
      v14 = 0x3C900000000;
      goto LABEL_72;
    }

    v16 = v27;
    v17 = v26[0];
    if (v27 == 789)
    {
      if (v26[0])
      {
        goto LABEL_44;
      }

      v14 = 0x3D100000000;
      goto LABEL_76;
    }

    if (v27 == 785 && (v26[0] - 1) >= 0xFFFFFFEFFFFFFFFFLL)
    {
      v14 = 0x3CD00000000;
      v7 = 92;
      goto LABEL_77;
    }

LABEL_44:
    v14 = sub_23949EE3C(a1, v16, v17);
    if (v14)
    {
LABEL_69:
      v7 = v14;
      goto LABEL_77;
    }

LABEL_45:
    v5 = sub_2393F5CEC(a2, v19);
    if (v5 != 768)
    {
      if (!v5)
      {
        v5 = 0x3EA00000000;
        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v4) = v5;
      goto LABEL_53;
    }

    v5 = sub_2393F602C();
    if (v5)
    {
      goto LABEL_61;
    }

    v21 = sub_2393F5CEC(a2, v20);
    if (v21 != 768)
    {
      if (v21)
      {
        v23 = v21 & 0xFFFFFFFF00000000;
        LODWORD(v4) = v21;
      }

      else
      {
        v23 = 0x3EE00000000;
        LODWORD(v4) = 774;
      }

      return v23 | v4;
    }

    v5 = sub_2393F5CEC(a2, v22);
    if (v5 != 768)
    {
      if (!v5)
      {
        v5 = 0x3F100000000;
        goto LABEL_53;
      }

      goto LABEL_61;
    }

    v5 = sub_2393F602C();
    if (v5)
    {
      goto LABEL_61;
    }
  }

  v14 = 0x3BF00000000;
LABEL_68:
  v7 = 773;
LABEL_77:
  v23 = v14 & 0xFFFFFFFF00000000;
  LODWORD(v4) = v7;
  return v23 | v4;
}

uint64_t sub_23949FA9C(unsigned __int8 *a1, _DWORD *a2)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v12 = v4 == 9999 && v5 == 12 && v6 == 31 && v7 == 23;
  if (v12 && v8 == 59 && v9 == 59)
  {
    result = 0;
    *a2 = 0;
  }

  else if (sub_2393D88C0(v4, v5, v6, v7, v8, v9, a2))
  {
    return 0;
  }

  else
  {
    return 0x42C00000306;
  }

  return result;
}

uint64_t sub_23949FB2C(unsigned int a1, uint64_t a2)
{
  if (a1)
  {
    sub_2393D895C(a1, a2, (a2 + 2), (a2 + 3), (a2 + 4), (a2 + 5), (a2 + 6));
  }

  else
  {
    *a2 = 9999;
    *(a2 + 2) = 991371020;
    *(a2 + 6) = 59;
  }

  return 0;
}

unint64_t sub_23949FB88(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  sub_23949EC50(v11);
  v8 = v11;
  v10 = 1;
  sub_23949DB2C(v11);
  v9 = 0;
  v2 = sub_23949DBA0(&v8, *a1, *(a1 + 8), 1);
  if (v2 || (v2 = sub_23949FD04(v11, 1), v2))
  {
    v3 = v2 & 0xFFFFFFFF00000000;
    goto LABEL_4;
  }

  if (!sub_23949EB88(&v12, &v13))
  {
    v3 = 0x46B00000000;
    goto LABEL_15;
  }

  if (*v14 != *v15 || *(v14 + 8) != *(v15 + 8) || *(v14 + 16) != *(v15 + 16))
  {
    v3 = 0x46D00000000;
LABEL_15:
    LODWORD(v2) = 157;
    goto LABEL_4;
  }

  if ((v16 & 0x80) != 0)
  {
    if ((v16 & 0x40) != 0 && v18 > 1u)
    {
      v3 = 0x47200000000;
    }

    else
    {
      if ((v17 & 0x20) != 0)
      {
        v7 = sub_23949E790(v11, v11);
        LODWORD(v2) = v7;
        v3 = v7 & 0xFFFFFFFF00000000;
        goto LABEL_4;
      }

      v3 = 0x47500000000;
    }
  }

  else
  {
    v3 = 0x46F00000000;
  }

  LODWORD(v2) = 77;
LABEL_4:
  sub_23949D9A0(&v8);
  return v2 | v3;
}

unint64_t sub_23949FD04(uint64_t a1, int a2)
{
  v6 = 0;
  v3 = sub_23949E8C0(a1 + 16, &v6);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (v6 == a2)
    {
      LODWORD(v3) = 0;
    }

    else
    {
      LODWORD(v3) = 157;
    }

    if (v6 == a2)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0x45800000000;
    }
  }

  return v4 | v3;
}

uint64_t sub_23949FD74(_BYTE *a1, uint64_t a2, char *a3, unsigned int a4)
{
  if (a2)
  {
    if (a3)
    {
      v5 = *a1 == 0;
      if (*a1)
      {
        v6 = a1;
      }

      else
      {
        v6 = a1 + 1;
      }

      v7 = a2 - v5;
      v8 = a4 - (a2 - v5);
      if (a4 >= (a2 - v5))
      {
        if (!v7 || *v6)
        {
          bzero(a3, a4 - (a2 - v5));
          memcpy(&a3[v8], v6, v7);
          v10 = 0;
          v9 = 0;
          return v9 | v10;
        }

        v9 = 0x48D00000000;
      }

      else
      {
        v9 = 0x48900000000;
      }
    }

    else
    {
      v9 = 0x47D00000000;
    }

    v10 = 47;
  }

  else
  {
    v9 = 0x47C00000000;
    v10 = 47;
  }

  return v9 | v10;
}

unint64_t sub_23949FE4C(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  if (v4 < 0x49)
  {
    return 0x49800000019;
  }

  v19 = v2;
  v20 = v3;
  sub_2393F6DA8(v17, *a2, v4);
  v7 = sub_23949FEE8(a1, v17);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFF00000000;
  }

  else
  {
    v10 = sub_2393F6DCC(v17);
    sub_238DB8498(a2, v10, v11, v12, v13, v14, v15, v16, v17[0], v17[1], v17[2], v17[3], v18);
    LODWORD(v7) = 0;
    v8 = 0;
  }

  return v8 | v7;
}

uint64_t sub_23949FEE8(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  result = sub_2393F77A4(a2, 0, 0x10u);
  if (!result)
  {
    v8 = v10;
    v9 = 33;
    sub_2393E99A4(&v5, a1);
    v6 = v5;
    v7 = 32;
    result = sub_2393F2B20(&v6, &v8);
    if (!result)
    {
      result = sub_2393F6EB4(a2, 0, 2, 0, v8, v9);
      if (!result)
      {
        v8 = v10;
        v9 = 33;
        sub_2393E99A4(&v5, a1 + 32);
        v6 = v5;
        v7 = 32;
        result = sub_2393F2B20(&v6, &v8);
        if (!result)
        {
          result = sub_2393F6EB4(a2, 0, 2, 0, v8, v9);
          if (!result)
          {
            return sub_2393F77B0(a2);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2394A0004(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 104) != 97)
  {
    return 0x4C50000002FLL;
  }

  v22[3] = v2;
  v22[4] = v3;
  sub_238DC45B4(v22, a1);
  sub_2393E99A4(&v21, a1 + 65);
  sub_2393F6DA8(v19, *a2, a2[1]);
  result = sub_2393F77A4(v19, 0, 0x10u);
  if (!result)
  {
    result = sub_2393F6DE8(v19, 1uLL);
    if (!result)
    {
      result = sub_2393F7164(v19, v21, 0x20u);
      if (!result)
      {
        result = sub_2393F77A4(v19, 128, 0);
        if (!result)
        {
          result = sub_2393F5C58(v19, 1025);
          if (!result)
          {
            result = sub_2393F77B0(v19);
            if (!result)
            {
              result = sub_2393F77A4(v19, 128, 1u);
              if (!result)
              {
                result = sub_2393F7438(v19, 0, v22[0], 0x41u);
                if (!result)
                {
                  result = sub_2393F77B0(v19);
                  if (!result)
                  {
                    v7 = sub_2393F77B0(v19);
                    v18 = v8;
                    v9 = v7;
                    if (!v7)
                    {
                      v10 = sub_2393F6DCC(v19);
                      sub_238DB8498(a2, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19[0], v19[1], v20);
                    }

                    return v9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2394A0148(uint64_t a1, void *a2, void *a3)
{
  v3 = 0x4EE00000000;
  v4 = 47;
  if (a2 && a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = 0;
      v11 = (a1 + 40);
      do
      {
        v12 = *v11;
        v11 += 16;
        if (!v12)
        {
          break;
        }

        ++v10;
      }

      while (v10 != 5);
      if (v5 >= v10)
      {
        break;
      }

      v13 = a1 + 16 + 32 * v5;
      v14 = *(v13 + 24);
      if (v14 == 789)
      {
        v8 = *(v13 + 16);
        v7 = 1;
      }

      else if (v14 == 785)
      {
        v9 = *(v13 + 16);
        v6 = 1;
      }

      ++v5;
    }

    if (v6 & v7)
    {
      v3 = 0;
      v4 = 0;
      *a2 = v9;
      *a3 = v8;
    }

    else
    {
      v3 = 0x50500000000;
      v4 = 216;
    }
  }

  return v4 | v3;
}

unint64_t sub_2394A0210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unint64_t *a6, void *a7)
{
  v25[9] = *MEMORY[0x277D85DE8];
  v18[0] = a1;
  v18[1] = a2;
  v17[0] = a3;
  v17[1] = a4;
  v24 = &unk_284BB9138;
  __src = &unk_2395D6B90;
  v10 = sub_2394A0354(v18, &__src);
  if (v10 || (v18[2] = &unk_284BB9138, v19 = *__src, v12 = *(__src + 2), v11 = *(__src + 3), v13 = *(__src + 64), v20 = *(__src + 1), v21 = v12, v23 = v13, v22 = v11, memmove(v25, __src, 0x41uLL), v10 = sub_2394A03F4(v17, a7, a6), v10) || (v10 = sub_2393F3360(&v24, *a6, a5), v10))
  {
    v14 = v10 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v10) = 0;
    v14 = 0;
  }

  return v14 | v10;
}

unint64_t sub_2394A0354(uint64_t *a1, void *a2)
{
  v7[53] = *MEMORY[0x277D85DE8];
  sub_23949EC50(v7);
  v4 = sub_2394A2BA8(*a1, a1[1], v7, 0);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = 0;
    LODWORD(v4) = 0;
    *a2 = v7[45];
  }

  return v4 | v5;
}

unint64_t sub_2394A03F4(uint64_t *a1, void *a2, void *a3)
{
  v7[53] = *MEMORY[0x277D85DE8];
  sub_23949EC50(v7);
  result = sub_2394A2BA8(*a1, a1[1], v7, 0);
  if (!result)
  {
    return sub_2394A0148(v7, a2, a3);
  }

  return result;
}

unint64_t sub_2394A0484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v7 = 0;
  result = sub_2394A0210(a1, a2, a3, a4, a5, &v7, a6);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2394A04BC(uint64_t a1, void *a2)
{
  v2 = 0;
  while (1)
  {
    v3 = 0;
    v4 = (a1 + 40);
    do
    {
      v5 = *v4;
      v4 += 16;
      if (!v5)
      {
        break;
      }

      ++v3;
    }

    while (v3 != 5);
    if (v2 >= v3)
    {
      break;
    }

    v6 = a1 + 16 + 32 * v2++;
    if (*(v6 + 24) == 789)
    {
      result = 0;
      *a2 = *(v6 + 16);
      return result;
    }
  }

  return 0x52E000000D8;
}

unint64_t sub_2394A052C(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23949EC50(v9);
  v6 = v9;
  v8 = 1;
  sub_23949DB2C(v9);
  v7 = 0;
  v4 = sub_23949DBA0(&v6, *a1, *(a1 + 8), 0);
  if (!v4)
  {
    v4 = sub_2394A05EC(v9, a2);
  }

  sub_23949D9A0(&v6);
  return v4;
}

unint64_t sub_2394A05EC(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  v4 = a1 + 16;
  v5 = sub_23949E8C0(a1 + 16, &v18);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else if (v18 == 3)
  {
    v7 = 0;
    v8 = 0;
    LODWORD(v5) = 25;
    while (1)
    {
      v9 = 0;
      v10 = (a1 + 40);
      do
      {
        v11 = *v10;
        v10 += 16;
        if (!v11)
        {
          break;
        }

        ++v9;
      }

      while (v9 != 5);
      if (v7 >= v9)
      {
        break;
      }

      v12 = v4 + 32 * v7;
      if (*(v12 + 24) == 790)
      {
        if (v8 == 3)
        {
          v6 = 0x54E00000000;
          return v6 | v5;
        }

        v13 = *(v12 + 16);
        if (HIDWORD(v13))
        {
          v6 = 0x54F00000000;
          goto LABEL_15;
        }

        v14 = v8++;
        *(a2 + 4 * v14) = v13;
      }

      ++v7;
    }

    if (v8 <= 2u)
    {
      bzero((a2 + 4 * (v8 & 0x3F)), 12 - 4 * (v8 & 0x3F));
    }

    v15 = sub_239221020(a2);
    v6 = 0x55900000000;
    v16 = !v15;
    if (v15)
    {
      LODWORD(v5) = 0;
    }

    else
    {
      LODWORD(v5) = 89;
    }

    if (!v16)
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0x54300000000;
LABEL_15:
    LODWORD(v5) = 47;
  }

  return v6 | v5;
}

unint64_t sub_2394A0738(uint64_t *a1, void *a2)
{
  v5[53] = *MEMORY[0x277D85DE8];
  sub_23949EC50(v5);
  result = sub_2394A2BA8(*a1, a1[1], v5, 0);
  if (!result)
  {
    return sub_2394A04BC(v5, a2);
  }

  return result;
}

unint64_t sub_2394A07C0(uint64_t *a1, _DWORD *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  sub_23949EC50(v7);
  v4 = sub_2394A2BA8(*a1, a1[1], v7, 0);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = 0;
    LODWORD(v4) = 0;
    *a2 = v7[88];
  }

  return v4 | v5;
}

unint64_t sub_2394A0860(uint64_t *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_23949EC50(v7);
  v4 = sub_2394A2BA8(*a1, a1[1], v7, 0);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else if ((v8 & 0x10) != 0)
  {
    v5 = 0;
    LODWORD(v4) = 0;
    *a2 = v7[42];
  }

  else
  {
    v5 = 0x58000000000;
    LODWORD(v4) = 216;
  }

  return v4 | v5;
}

unint64_t sub_2394A091C(uint64_t *a1, _OWORD *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  sub_23949EC50(v12);
  v4 = sub_2394A2BA8(*a1, a1[1], v12, 0);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = 0;
    LODWORD(v4) = 0;
    v6 = v12[8];
    a2[6] = v12[7];
    a2[7] = v6;
    v7 = v12[10];
    a2[8] = v12[9];
    a2[9] = v7;
    v8 = v12[4];
    a2[2] = v12[3];
    a2[3] = v8;
    v9 = v12[6];
    a2[4] = v12[5];
    a2[5] = v9;
    v10 = v12[2];
    *a2 = v12[1];
    a2[1] = v10;
  }

  return v4 | v5;
}

unint64_t sub_2394A09DC(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  if (HIDWORD(v2))
  {
    v8 = 0x59200000000;
    LODWORD(v5) = 47;
  }

  else
  {
    sub_2393F5CB4(&v10, *a1, v2);
    v5 = sub_2393F5CEC(&v10, v4);
    if (!v5)
    {
      v5 = 0x59700000305;
      if (!v10 && v11 == 16)
      {
        v5 = sub_2393F5F1C(&v10);
        if (!v5)
        {
          v5 = sub_2393F5CEC(&v10, v6);
          if (!v5)
          {
            v5 = 0x59B00000305;
            if (!v10 && v11 == 16)
            {
              v5 = sub_2393F5F1C(&v10);
              if (!v5)
              {
                v5 = sub_2393F5CEC(&v10, v7);
                if (!v5)
                {
                  v5 = 0x59E00000305;
                  if (v10 == 128 && !v11)
                  {
                    v5 = sub_2393F5CEC(&v10, "src/credentials/CHIPCert.cpp");
                    if (!v5)
                    {
                      v5 = 0x5A100000305;
                      if (!v10 && v11 == 2)
                      {
                        v5 = sub_2393F5CEC(&v10, "src/credentials/CHIPCert.cpp");
                        if (!v5)
                        {
                          v5 = 0x5A400000305;
                          if (!v10 && v11 == 16)
                          {
                            v5 = sub_2393F5CEC(&v10, "src/credentials/CHIPCert.cpp");
                            if (!v5)
                            {
                              v5 = 0x5A700000305;
                              if (!v10 && v11 == 16)
                              {
                                v5 = sub_2393F5CEC(&v10, "src/credentials/CHIPCert.cpp");
                                if (!v5)
                                {
                                  v5 = 0x5AA00000305;
                                  if (!v10 && v11 == 16)
                                  {
                                    v5 = sub_23949F6CC(a2, &v10);
                                    if (!v5)
                                    {
                                      v5 = sub_2393F602C();
                                      if (!v5)
                                      {
                                        v5 = sub_2393F602C();
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
          }
        }
      }
    }

    v8 = v5 & 0xFFFFFFFF00000000;
  }

  return v5 | v8;
}

uint64_t sub_2394A0BD0(uint64_t result)
{
  v1 = 0;
  do
  {
    v2 = result + v1;
    v1 += 32;
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 23) = 0;
    *(v2 + 16) = 0;
  }

  while (v1 != 160);
  v3 = 0;
  v4 = result + 24;
  while (*v4)
  {
    ++v3;
    v4 += 32;
    if (v3 == 5)
    {
      goto LABEL_6;
    }
  }

  if (v3 > 4)
  {
LABEL_6:
    sub_239535914();
  }

  *v4 = 769;
  *(v4 - 24) = "*";
  *(v4 - 16) = 1;
  *(v4 + 2) = 0;
  return result;
}

unint64_t sub_2394A0C4C(uint64_t *a1)
{
  v5[53] = *MEMORY[0x277D85DE8];
  sub_23949EC50(v5);
  v2 = sub_2394A2BA8(*a1, a1[1], v5, 1);
  if (v2)
  {
    v3 = v2 & 0xFFFFFFFF00000000;
  }

  else
  {
    v2 = sub_2394A0CE8(v5);
    v3 = v2 & 0xFFFFFFFF00000000;
    if (!v2)
    {
      v3 = 0;
      LODWORD(v2) = 0;
    }
  }

  return v2 | v3;
}

unint64_t sub_2394A0CE8(uint64_t a1)
{
  v2 = sub_23949FD04(a1, 5);
  if (v2)
  {
LABEL_2:
    v3 = v2 & 0xFFFFFFFF00000000;
    return v3 | v2;
  }

  if (!sub_23949EDC8(a1, &xmmword_278A83090))
  {
    v3 = 0x5E400000000;
    goto LABEL_9;
  }

  if (*(a1 + 352) != 1)
  {
    v3 = 0x5E500000000;
    goto LABEL_9;
  }

  if (*(a1 + 356))
  {
    v3 = 0x5E600000000;
LABEL_9:
    LODWORD(v2) = 157;
    return v3 | v2;
  }

  if (!sub_23949EB88(a1 + 176, a1 + 16))
  {
    v3 = 0x5E700000000;
    goto LABEL_9;
  }

  v5 = *(a1 + 374);
  if ((v5 & 0x81) != 1)
  {
    v3 = 0x5EB00000000;
    goto LABEL_9;
  }

  v3 = 0x5EE00000000;
  LODWORD(v2) = 157;
  if ((v5 & 2) != 0 && *(a1 + 376) == 1)
  {
    v3 = 0x5F100000000;
    LODWORD(v2) = 157;
    if ((v5 & 4) != 0 && *(a1 + 378) == 3)
    {
      v2 = sub_23949E790(a1, a1);
      if (!v2)
      {
        LODWORD(v2) = 0;
        v3 = 0;
        return v3 | v2;
      }

      goto LABEL_2;
    }
  }

  return v3 | v2;
}

unint64_t sub_2394A0E10(uint64_t *a1, uint64_t a2)
{
  v8[8] = *MEMORY[0x277D85DE8];
  sub_23949EC50(v7);
  v4 = sub_2394A2BA8(*a1, a1[1], v7, 1);
  if (v4 || (v4 = sub_2394A0CE8(v7), v4))
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v4 = sub_2394A0ECC(v8, a2);
    v5 = v4 & 0xFFFFFFFF00000000;
    if (!v4)
    {
      v5 = 0;
      LODWORD(v4) = 0;
    }
  }

  return v4 | v5;
}

unint64_t sub_2394A0ECC(int8x16_t **a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = sub_2393F7E10(*a1, 0x41uLL, &v7);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    v4 = 0;
    LODWORD(v3) = 0;
    v5 = v7;
    *(a2 + 16) = v8;
    *a2 = v5;
  }

  return v3 | v4;
}

unint64_t sub_2394A0F60(uint64_t *a1, uint64_t a2)
{
  v8[8] = *MEMORY[0x277D85DE8];
  sub_23949EC50(v7);
  v4 = sub_2394A2BA8(*a1, a1[1], v7, 0);
  if (v4 || (v4 = sub_23949FD04(v7, 5), v4))
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v4 = sub_2394A0ECC(v8, a2);
    v5 = v4 & 0xFFFFFFFF00000000;
    if (!v4)
    {
      v5 = 0;
      LODWORD(v4) = 0;
    }
  }

  return v4 | v5;
}

unint64_t sub_2394A1020(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 8);
  if (v2)
  {
    if (!HIDWORD(v2))
    {
      v27 = 0;
      v5 = sub_2393D52C4(0xF4uLL);
      if (v5)
      {
        v6 = v5;
        sub_2393F6DA8(v22, v5, 244);
        v7 = (*(*a1 + 40))(a1);
        v8 = sub_2394AD9BC(v7, v22);
        if (v8 || (v9 = sub_2393F6DCC(v22), v8 = (*(*a1 + 24))(a1, v6, v9, v26), v8))
        {
          j__free(v6);
        }

        else
        {
          j__free(v6);
          sub_2393C7B90(v22);
          v12 = sub_2393C7BB8(v22, *a2, *(a2 + 8));
          v13 = (*(*a1 + 40))(a1, v12);
          sub_238DC45B4(&v21, v13 + 8);
          v25 = 0;
          v8 = sub_2393C8CE0(v22, 0x100uLL, 21, &v25);
          if (!v8)
          {
            v8 = sub_2393C8364(v22, 9uLL, v21, 0x41uLL);
            if (!v8)
            {
              v8 = sub_2393C8364(v22, 0xBuLL, v26, 0x40uLL);
              if (!v8)
              {
                v8 = sub_2393C8DE0(v22, v25);
                if (!v8)
                {
                  sub_238DB8498(a2, v24, v14, v15, v16, v17, v18, v19, v21, v22[0], v22[1], v22[2], v23);
                  v10 = 0;
                  LODWORD(v8) = 0;
                  goto LABEL_16;
                }
              }
            }
          }
        }

        v10 = v8 & 0xFFFFFFFF00000000;
      }

      else
      {
        v10 = 0x61500000000;
        LODWORD(v8) = 11;
      }

LABEL_16:
      sub_2393F9144(v26, 64);
      v11 = v8;
      return v11 | v10;
    }

    v10 = 0x62F00000000;
  }

  else
  {
    v10 = 0x62E00000000;
  }

  v11 = 47;
  return v11 | v10;
}

uint64_t sub_2394A12D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*a1 || *(a1 + 1) != 3)
  {
    LODWORD(v6) = 773;
    LODWORD(v8) = 402;
    return v6 | (v8 << 32);
  }

  v6 = sub_2393F6100(a1);
  if (v6)
  {
    goto LABEL_5;
  }

  v6 = sub_2393F5CEC(a1, v7);
  if (v6)
  {
    goto LABEL_5;
  }

  LODWORD(v6) = 773;
  LODWORD(v8) = 405;
  if (*a1 || *(a1 + 1) != 16)
  {
    return v6 | (v8 << 32);
  }

  v6 = sub_2393F5F1C(a1);
  if (v6)
  {
    goto LABEL_5;
  }

  v6 = sub_2393F5CEC(a1, v10);
  if (v6)
  {
    goto LABEL_5;
  }

  LODWORD(v6) = 773;
  LODWORD(v8) = 408;
  if (*a1 || *(a1 + 1) != 2)
  {
    return v6 | (v8 << 32);
  }

  sub_238DB6950(&v21, *(a1 + 8), *(a1 + 16));
  result = sub_23949FD74(v21, v22, v23, 0x20u);
  if (result)
  {
    return result;
  }

  v6 = sub_2393F5CEC(a1, v11);
  if (v6)
  {
LABEL_5:
    v8 = HIDWORD(v6);
    return v6 | (v8 << 32);
  }

  LODWORD(v6) = 773;
  LODWORD(v8) = 413;
  if (*a1 || *(a1 + 1) != 2)
  {
    return v6 | (v8 << 32);
  }

  sub_238DB6950(&v21, *(a1 + 8), *(a1 + 16));
  result = sub_23949FD74(v21, v22, v24, 0x20u);
  if (!result)
  {
    v13 = sub_2393F5CEC(a1, v12);
    if (!v13)
    {
      LODWORD(v6) = 773;
      LODWORD(v8) = 417;
      return v6 | (v8 << 32);
    }

    v14 = v13;
    if (v13 != 768)
    {
      goto LABEL_24;
    }

    v15 = sub_2393F602C();
    if (v15)
    {
      v14 = v15;
LABEL_24:
      LODWORD(v6) = v14;
      v8 = HIDWORD(v14);
      return v6 | (v8 << 32);
    }

    v17 = sub_2393F5CEC(a1, v16);
    if (!v17)
    {
      LODWORD(v6) = 773;
      LODWORD(v8) = 419;
      return v6 | (v8 << 32);
    }

    v14 = v17;
    if (v17 != 768)
    {
      goto LABEL_24;
    }

    v18 = sub_2393F602C();
    v20 = HIDWORD(v18);
    v19 = v18;
    if (v18 || (result = sub_2393C83AC(a2, a3, v23, 64), !result))
    {
      LODWORD(v8) = v20;
      LODWORD(v6) = v19;
      return v6 | (v8 << 32);
    }
  }

  return result;
}

unint64_t sub_2394A1510(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_2393C7B90(v33);
  if (!a2)
  {
    v14 = 0x22F00000000;
LABEL_10:
    LODWORD(v6) = 47;
    return v6 | v14;
  }

  if (HIDWORD(a2))
  {
    v14 = 0x23000000000;
    goto LABEL_10;
  }

  sub_2393F5CB4(&v36, a1, a2);
  sub_2393C7BB8(v33, *a3, *(a3 + 8));
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v6 = sub_2393C8CE0(v33, 0x100uLL, 21, &v41);
  if (!v6)
  {
    v6 = sub_2393F5CEC(&v36, v7);
    if (!v6)
    {
      v6 = 0x1B600000305;
      if (!v36 && v37 == 16)
      {
        v6 = sub_2393F5F1C(&v36);
        if (v6)
        {
          goto LABEL_5;
        }

        v6 = sub_2393F5CEC(&v36, v16);
        if (v6)
        {
          goto LABEL_5;
        }

        v6 = 0x1BA00000305;
        if (!v36 && v37 == 16)
        {
          v6 = sub_2393F5F1C(&v36);
          if (v6)
          {
            goto LABEL_5;
          }

          v6 = sub_2393F5CEC(&v36, v17);
          if (v6)
          {
            goto LABEL_5;
          }

          v6 = 0x1BD00000305;
          if (v36 == 128 && !v37)
          {
            v6 = sub_2393F5F1C(&v36);
            if (v6)
            {
              goto LABEL_5;
            }

            v6 = sub_2393F5CEC(&v36, v18);
            if (v6)
            {
              goto LABEL_5;
            }

            v6 = 0x1C000000305;
            if (!v36 && v37 == 2)
            {
              v6 = sub_2393F6188(&v36, &v43);
              if (v6)
              {
                goto LABEL_5;
              }

              if (v43 == 2)
              {
                v6 = sub_2393F5CEC(&v36, v19);
                if (v6)
                {
                  if (v6 != 768)
                  {
                    goto LABEL_5;
                  }

                  v6 = sub_2393F602C();
                  if (v6)
                  {
                    goto LABEL_5;
                  }

                  v6 = sub_2393F5CEC(&v36, v20);
                  if (v6)
                  {
                    goto LABEL_5;
                  }

                  v6 = 0x1C900000305;
                  if (!v36 && v37 == 2)
                  {
                    v6 = sub_2393C83AC(v33, 1uLL, v38, v39);
                    if (v6)
                    {
                      goto LABEL_5;
                    }

                    v6 = sub_2393F5CEC(&v36, v21);
                    if (v6)
                    {
                      goto LABEL_5;
                    }

                    v6 = 0x1CF00000305;
                    if (!v36 && v37 == 16)
                    {
                      v6 = sub_2393F5F1C(&v36);
                      if (v6)
                      {
                        goto LABEL_5;
                      }

                      v6 = sub_2393F5CEC(&v36, v22);
                      if (v6)
                      {
                        goto LABEL_5;
                      }

                      v6 = 0x1D200000305;
                      if (!v36 && v37 == 6)
                      {
                        v6 = sub_2393F5BA0(&v36, &v42);
                        if (v6)
                        {
                          goto LABEL_5;
                        }

                        if (v42 == 513)
                        {
                          v6 = sub_2393C8140(v33, 2uLL, 1u);
                          if (v6)
                          {
                            goto LABEL_5;
                          }

                          v6 = sub_2393F5CEC(&v36, v23);
                          if (v6)
                          {
                            if (v6 != 768)
                            {
                              goto LABEL_5;
                            }

                            v6 = sub_2393F602C();
                            if (v6)
                            {
                              goto LABEL_5;
                            }

                            v6 = sub_2394A1A88(&v36, v33, 3uLL);
                            if (v6)
                            {
                              goto LABEL_5;
                            }

                            v6 = sub_2394A1B04(&v36, v33);
                            if (v6)
                            {
                              goto LABEL_5;
                            }

                            v6 = sub_2394A1A88(&v36, v33, 6uLL);
                            if (v6)
                            {
                              goto LABEL_5;
                            }

                            v6 = sub_2394A1CC0(&v36, v33);
                            if (v6)
                            {
                              goto LABEL_5;
                            }

                            v6 = sub_2393F5CEC(&v36, v24);
                            if (!v6 && v36 == 128)
                            {
                              switch(v37)
                              {
                                case 1:
                                  v6 = 0x1F000000306;
                                  goto LABEL_90;
                                case 2:
                                  v6 = 0x1F700000306;
                                  goto LABEL_90;
                                case 3:
                                  v6 = sub_2393F5F1C(&v36);
                                  if (v6)
                                  {
                                    goto LABEL_5;
                                  }

                                  v6 = sub_2394A1F58(&v36, v33);
                                  if (v6)
                                  {
                                    goto LABEL_5;
                                  }

                                  v6 = sub_2393F5CEC(&v36, v26);
                                  if (!v6)
                                  {
                                    v6 = 0x20200000305;
                                    goto LABEL_90;
                                  }

                                  if (v6 != 768)
                                  {
                                    goto LABEL_5;
                                  }

                                  v6 = sub_2393F602C();
                                  if (v6)
                                  {
                                    goto LABEL_5;
                                  }

                                  v6 = sub_2393F5CEC(&v36, v27);
                                  break;
                              }
                            }

                            if (v6 != 768)
                            {
                              goto LABEL_5;
                            }

                            v6 = sub_2393F5CEC(&v36, v25);
                            if (v6)
                            {
                              if (v6 != 768)
                              {
                                goto LABEL_5;
                              }

                              v6 = sub_2393F602C();
                              if (v6)
                              {
                                goto LABEL_5;
                              }

                              v6 = sub_2393F5CEC(&v36, v28);
                              if (v6)
                              {
                                goto LABEL_5;
                              }

                              v6 = 0x21000000305;
                              if (!v36 && v37 == 16)
                              {
                                v6 = sub_2393F5F1C(&v36);
                                if (v6)
                                {
                                  goto LABEL_5;
                                }

                                v40 = 0;
                                v6 = sub_2393F5CEC(&v36, v29);
                                if (v6)
                                {
                                  goto LABEL_5;
                                }

                                v6 = 0x21500000305;
                                if (v36)
                                {
                                  goto LABEL_5;
                                }

                                if (v37 != 6)
                                {
                                  goto LABEL_5;
                                }

                                v6 = sub_2393F5BA0(&v36, &v40);
                                if (v6)
                                {
                                  goto LABEL_5;
                                }

                                if (v40 != v42)
                                {
                                  v6 = 0x21800000306;
                                  goto LABEL_5;
                                }

                                v6 = sub_2393F5CEC(&v36, v30);
                                if (v6)
                                {
                                  if (v6 != 768)
                                  {
                                    goto LABEL_5;
                                  }

                                  v6 = sub_2393F602C();
                                  if (v6)
                                  {
                                    goto LABEL_5;
                                  }

                                  v6 = sub_2393F5CEC(&v36, v31);
                                  if (v6)
                                  {
                                    goto LABEL_5;
                                  }

                                  v6 = 0x21D00000305;
                                  if (!v36 && v37 == 3)
                                  {
                                    v6 = sub_2394A12D0(&v36, v33, 0xBuLL);
                                    if (v6)
                                    {
                                      goto LABEL_5;
                                    }

                                    v6 = sub_2393F5CEC(&v36, v32);
                                    if (v6)
                                    {
                                      if (v6 == 768)
                                      {
                                        v6 = sub_2393F602C();
                                        if (!v6)
                                        {
                                          v6 = sub_2393C8DE0(v33, v41);
                                        }
                                      }

                                      goto LABEL_5;
                                    }

                                    v6 = 0x22100000305;
                                  }
                                }

                                else
                                {
                                  v6 = 0x21A00000305;
                                }
                              }
                            }

                            else
                            {
                              v6 = 0x20C00000305;
                            }
                          }

                          else
                          {
                            v6 = 0x1D900000305;
                          }
                        }

                        else
                        {
                          v6 = 0x1D400000306;
                        }
                      }
                    }
                  }
                }

                else
                {
                  v6 = 0x1C500000305;
                }
              }

              else
              {
                v6 = 0x1C300000306;
              }
            }
          }
        }
      }

LABEL_90:
      v14 = v6 & 0x3FF00000000;
      return v6 | v14;
    }
  }

LABEL_5:
  if (v6 || (v6 = sub_2393C7CB8(v33), v6))
  {
    v14 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_238DB8498(a3, v35, v8, v9, v10, v11, v12, v13, v33[0], v33[1], v33[2], v33[3], v34);
    v14 = 0;
    LODWORD(v6) = 0;
  }

  return v6 | v14;
}

unint64_t sub_2394A1A88(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_23949ECF0(v8);
  v6 = sub_23949F6CC(v8, a1);
  if (!v6)
  {
    v6 = sub_23949F1EC(v8, a2, a3);
  }

  nullsub_56();
  return v6;
}

unint64_t sub_2394A1B04(_BYTE *a1, uint64_t a2)
{
  v4 = sub_2393F5CEC(a1, a2);
  if (v4)
  {
    goto LABEL_2;
  }

  if (*a1 || a1[1] != 16)
  {
    v5 = 0x3F00000000;
    goto LABEL_10;
  }

  v4 = sub_2393F5F1C(a1);
  if (!v4)
  {
    v4 = sub_2393F5CEC(a1, v6);
    if (!v4)
    {
      if (*a1)
      {
LABEL_8:
        v5 = 0x4100000000;
        goto LABEL_10;
      }

      v13 = 0;
      v9 = a1[1];
      if (v9 == 24)
      {
        v4 = sub_2393F6438(a1, v14);
      }

      else
      {
        if (v9 != 23)
        {
          goto LABEL_8;
        }

        v4 = sub_2393F6364(a1, v14);
      }

      v5 = v4;
      if (v4)
      {
        goto LABEL_11;
      }

      v4 = sub_23949FA9C(v14, &v13 + 1);
      if (v4)
      {
LABEL_19:
        v7 = v4 & 0xFFFFFFFF00000000;
        return v7 | v4;
      }

      v4 = sub_2393F5CEC(a1, v10);
      if (!v4)
      {
        if (*a1)
        {
LABEL_22:
          v5 = 0x4400000000;
          goto LABEL_10;
        }

        v11 = a1[1];
        if (v11 == 24)
        {
          v4 = sub_2393F6438(a1, v14);
        }

        else
        {
          if (v11 != 23)
          {
            goto LABEL_22;
          }

          v4 = sub_2393F6364(a1, v14);
        }

        v5 = v4;
        if (v4)
        {
          goto LABEL_11;
        }

        v4 = sub_23949FA9C(v14, &v13);
        if (!v4)
        {
          if ((v13 - 1) < HIDWORD(v13))
          {
            v7 = 0x4A00000000;
            LODWORD(v4) = 773;
            return v7 | v4;
          }

          v4 = sub_2393C81D4(a2, 4uLL, HIDWORD(v13));
          if (!v4)
          {
            v4 = sub_2393C81D4(a2, 5uLL, v13);
            if (!v4)
            {
              v4 = sub_2393F5CEC(a1, v12);
              if (v4)
              {
                if (v4 == 768)
                {
                  v4 = sub_2393F602C();
                }

                goto LABEL_2;
              }

              v5 = 0x5000000000;
LABEL_10:
              LODWORD(v4) = 773;
              goto LABEL_11;
            }
          }
        }

        goto LABEL_19;
      }
    }
  }

LABEL_2:
  v5 = v4;
LABEL_11:
  v7 = v5 & 0xFFFFFFFF00000000;
  return v7 | v4;
}

unint64_t sub_2394A1CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2393F5CEC(a1, a2);
  if (v4)
  {
    goto LABEL_2;
  }

  if (*a1 || *(a1 + 1) != 16)
  {
    v5 = 0x5C00000000;
    goto LABEL_20;
  }

  v4 = sub_2393F5F1C(a1);
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = sub_2393F5CEC(a1, v6);
  if (v4)
  {
    goto LABEL_2;
  }

  v5 = 0x6000000000;
  LODWORD(v4) = 773;
  if (*a1 || *(a1 + 1) != 16)
  {
    return v5 & 0xFFFFFFFF00000000 | v4;
  }

  v4 = sub_2393F5F1C(a1);
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = sub_2393F5CEC(a1, v7);
  if (v4)
  {
    goto LABEL_2;
  }

  v5 = 0x6300000000;
  LODWORD(v4) = 773;
  if (*a1 || *(a1 + 1) != 6)
  {
    return v5 & 0xFFFFFFFF00000000 | v4;
  }

  v16 = 0;
  v4 = sub_2393F5BA0(a1, &v16 + 1);
  if (v4)
  {
    goto LABEL_2;
  }

  if (HIWORD(v16) != 257)
  {
    v5 = 0x6600000000;
LABEL_23:
    LODWORD(v4) = 774;
    return v5 & 0xFFFFFFFF00000000 | v4;
  }

  v4 = sub_2393C8140(a2, 7uLL, 1u);
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = sub_2393F5CEC(a1, v8);
  if (v4)
  {
    goto LABEL_2;
  }

  if (*a1)
  {
LABEL_18:
    v5 = 0x7B00000000;
    goto LABEL_20;
  }

  v10 = *(a1 + 1);
  if (v10 == 5)
  {
    v5 = 0x7800000000;
    goto LABEL_23;
  }

  if (v10 == 16)
  {
    v5 = 0x7400000000;
    goto LABEL_23;
  }

  if (v10 != 6)
  {
    goto LABEL_18;
  }

  v4 = sub_2393F5BA0(a1, &v16);
  if (v4)
  {
LABEL_2:
    v5 = v4;
    return v5 & 0xFFFFFFFF00000000 | v4;
  }

  if (sub_2393F5B1C(v16) != 1024)
  {
    v5 = 0x8000000000;
    goto LABEL_23;
  }

  v4 = sub_2393C8140(a2, 8uLL, v16);
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = sub_2393F5CEC(a1, v11);
  if (!v4)
  {
    v5 = 0x8500000000;
    goto LABEL_20;
  }

  if (v4 != 768)
  {
    goto LABEL_2;
  }

  v4 = sub_2393F602C();
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = sub_2393F5CEC(a1, v12);
  if (v4)
  {
    goto LABEL_2;
  }

  v5 = 0x8800000000;
  LODWORD(v4) = 773;
  if (!*a1 && *(a1 + 1) == 3)
  {
    v13 = *(a1 + 16);
    if (!v13)
    {
      v5 = 0x8B00000000;
      goto LABEL_20;
    }

    v14 = *(a1 + 8);
    if (*v14)
    {
      v5 = 0x8E00000000;
      goto LABEL_20;
    }

    v4 = sub_2393C83AC(a2, 9uLL, v14 + 1, (v13 - 1));
    if (!v4)
    {
      v4 = sub_2393F5CEC(a1, v15);
      if (v4)
      {
        if (v4 == 768)
        {
          v4 = sub_2393F602C();
        }

        goto LABEL_2;
      }

      v5 = 0x9500000000;
LABEL_20:
      LODWORD(v4) = 773;
      return v5 & 0xFFFFFFFF00000000 | v4;
    }

    goto LABEL_2;
  }

  return v5 & 0xFFFFFFFF00000000 | v4;
}

unint64_t sub_2394A1F58(unsigned __int8 *a1, uint64_t a2)
{
  v13 = 0;
  v4 = sub_2393C8CE0(a2, 0xAuLL, 23, &v13);
  if (v4)
  {
    goto LABEL_3;
  }

  v4 = sub_2393F5CEC(a1, v5);
  if (v4)
  {
    goto LABEL_3;
  }

  if (*a1 || a1[1] != 16)
  {
    v6 = 0x17600000000;
LABEL_135:
    LODWORD(v4) = 773;
    return v6 & 0xFFFFFFFF00000000 | v4;
  }

  v4 = sub_2393F5F1C(a1);
  if (v4)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v4 = sub_2393F5CEC(a1, v8);
    if (v4)
    {
      break;
    }

    v20 = 0;
    v19 = 0;
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v4 = sub_2393F60B0(a1, &v17, &v16);
    if (v4)
    {
      goto LABEL_20;
    }

    v6 = 0xA800000000;
    if (*a1 || a1[1] != 16)
    {
      goto LABEL_135;
    }

    v4 = sub_2393F5F1C(a1);
    if (v4)
    {
      goto LABEL_20;
    }

    v4 = sub_2393F5CEC(a1, v8);
    if (v4)
    {
      goto LABEL_20;
    }

    v6 = 0xAB00000000;
    if (*a1 || a1[1] != 6)
    {
      goto LABEL_135;
    }

    v4 = sub_2393F5BA0(a1, &v19);
    if (v4)
    {
      goto LABEL_20;
    }

    if (v19 != 0xFFFF && sub_2393F5B1C(v19) != 1280)
    {
      v6 = 0xB000000000;
      goto LABEL_135;
    }

    v4 = sub_2393F5CEC(a1, v8);
    if (v4)
    {
      goto LABEL_20;
    }

    if (*a1)
    {
      goto LABEL_143;
    }

    v10 = a1[1];
    if (v10 == 1)
    {
      v4 = sub_2393F62C0(a1, &v18);
      if (v4)
      {
        goto LABEL_20;
      }

      if (!v18)
      {
        v6 = 0xB900000000;
        goto LABEL_135;
      }

      v4 = sub_2393F5CEC(a1, v8);
      if (v4)
      {
        goto LABEL_20;
      }

      if (*a1)
      {
        goto LABEL_143;
      }

      v10 = a1[1];
    }

    if (v10 != 4)
    {
LABEL_143:
      v6 = 0xC200000000;
      goto LABEL_135;
    }

    v4 = sub_2393F6100(a1);
    if (v4)
    {
      goto LABEL_20;
    }

    if (v19 > 0x502u)
    {
      switch(v19)
      {
        case 0x503u:
          if (!v18)
          {
            v6 = 0x13E00000000;
            goto LABEL_135;
          }

          v4 = sub_2393C8CE0(a2, 3uLL, 22, &v20);
          if (v4)
          {
            goto LABEL_20;
          }

          v4 = sub_2393F5CEC(a1, v8);
          if (v4)
          {
            goto LABEL_20;
          }

          v6 = 0x14400000000;
          if (*a1 || a1[1] != 16)
          {
            goto LABEL_135;
          }

          v4 = sub_2393F5F1C(a1);
          if (v4)
          {
            goto LABEL_20;
          }

          while (1)
          {
            v4 = sub_2393F5CEC(a1, v8);
            if (v4)
            {
              break;
            }

            LOWORD(v14) = 0;
            v4 = sub_2393F5BA0(a1, &v14);
            if (v4)
            {
              goto LABEL_20;
            }

            if (v14 == 0xFFFF)
            {
              v6 = 0x14C00000000;
              LODWORD(v4) = 774;
              goto LABEL_118;
            }

            if (sub_2393F5B1C(v14) != 1536)
            {
              v6 = 0x14D00000000;
              goto LABEL_117;
            }

            v4 = sub_2393C8140(a2, 0x100uLL, v14);
            if (v4)
            {
              goto LABEL_20;
            }
          }

          if (v4 != 768)
          {
            goto LABEL_20;
          }

          v4 = sub_2393F5CEC(a1, v8);
          if (v4 != 768)
          {
            if (v4)
            {
              goto LABEL_20;
            }

            v6 = 0x15700000000;
            goto LABEL_135;
          }

          v4 = sub_2393F602C();
          if (v4)
          {
            goto LABEL_20;
          }

          v4 = sub_2393C8DE0(a2, v20);
          if (v4)
          {
            goto LABEL_20;
          }

LABEL_108:
          v4 = sub_2393F5CEC(a1, v8);
          if (v4 == 768)
          {
            v4 = sub_2393F602C();
            if (!v4)
            {
              v4 = sub_2393F5CEC(a1, v8);
              if (v4 == 768)
              {
                v4 = sub_2393F602C();
              }

              else if (!v4)
              {
                v6 = 0x16700000000;
                goto LABEL_135;
              }
            }
          }

          else if (!v4)
          {
            v6 = 0x16500000000;
            goto LABEL_135;
          }

          goto LABEL_20;
        case 0x504u:
          if (v18)
          {
            v6 = 0xE200000000;
            goto LABEL_135;
          }

          v4 = sub_2393F5CEC(a1, v8);
          if (v4)
          {
            goto LABEL_20;
          }

          v6 = 0xE600000000;
          if (*a1 || a1[1] != 4)
          {
            goto LABEL_135;
          }

          if (*(a1 + 4) != 20)
          {
            v6 = 0xE800000000;
            goto LABEL_135;
          }

          v4 = sub_2393C83AC(a2, 4uLL, *(a1 + 1), 20);
          if (v4)
          {
            goto LABEL_20;
          }

          goto LABEL_108;
        case 0x505u:
          if (v18)
          {
            v6 = 0xC700000000;
            goto LABEL_135;
          }

          v4 = sub_2393F5CEC(a1, v8);
          if (v4)
          {
            goto LABEL_20;
          }

          v6 = 0xCA00000000;
          if (*a1 || a1[1] != 16)
          {
            goto LABEL_135;
          }

          v4 = sub_2393F5F1C(a1);
          if (v4)
          {
            goto LABEL_20;
          }

          v4 = sub_2393F5CEC(a1, v8);
          if (v4)
          {
            goto LABEL_20;
          }

          v6 = 0xD200000000;
          if (*a1 != 128 || a1[1])
          {
            goto LABEL_135;
          }

          if (a1[20])
          {
            v6 = 0xD400000000;
            goto LABEL_135;
          }

          if (*(a1 + 4) != 20)
          {
            v6 = 0xD500000000;
            goto LABEL_135;
          }

          v4 = sub_2393C83AC(a2, 5uLL, *(a1 + 1), 20);
          if (v4)
          {
            goto LABEL_20;
          }

          if (sub_2393F5CEC(a1, v8) != 768)
          {
            v6 = 0xDB00000000;
            goto LABEL_135;
          }

          v4 = sub_2393F5CEC(a1, v11);
          if (v4 != 768)
          {
            if (!v4)
            {
              v6 = 0xDD00000000;
              goto LABEL_135;
            }

            goto LABEL_20;
          }

LABEL_124:
          v4 = sub_2393F602C();
          if (!v4)
          {
            goto LABEL_108;
          }

          goto LABEL_20;
      }

LABEL_106:
      v4 = sub_2393C83AC(a2, 6uLL, v17, v16);
      if (!v4)
      {
        v4 = sub_2393F5CEC(a1, v8);
        if (!v4)
        {
          goto LABEL_108;
        }
      }

      goto LABEL_20;
    }

    if (v19 == 1281)
    {
      if (!v18)
      {
        v6 = 0x10800000000;
        goto LABEL_135;
      }

      v4 = sub_2393F5CEC(a1, v8);
      if (v4)
      {
        goto LABEL_20;
      }

      v6 = 0x10B00000000;
      if (*a1 || a1[1] != 16)
      {
        goto LABEL_135;
      }

      v4 = sub_2393F5F1C(a1);
      if (v4)
      {
        goto LABEL_20;
      }

      v15 = 0;
      v14 = -1;
      if (!sub_2393F5CEC(a1, v8) && !*a1)
      {
        v12 = a1[1];
        if (v12 == 1)
        {
          v4 = sub_2393F62C0(a1, &v15);
          if (v4)
          {
            goto LABEL_20;
          }

          if (!v15)
          {
            v6 = 0x11700000000;
            goto LABEL_117;
          }

          if (!sub_2393F5CEC(a1, v8) && !*a1)
          {
            v12 = a1[1];
            goto LABEL_94;
          }
        }

        else
        {
LABEL_94:
          if (v12 == 2)
          {
            v4 = sub_2393F6188(a1, &v14);
            if (v4)
            {
              goto LABEL_20;
            }

            if (v14 > 0xFF)
            {
              v6 = 0x12200000000;
              goto LABEL_117;
            }

            if (!v15)
            {
              v6 = 0x12500000000;
LABEL_117:
              LODWORD(v4) = 773;
LABEL_118:
              v8 = "src/credentials/CHIPCertFromX509.cpp";
              goto LABEL_21;
            }
          }
        }
      }

      v4 = sub_2393C8CE0(a2, 1uLL, 21, &v20);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = sub_2393C7E38(a2, 1uLL, v15);
      if (v4)
      {
        goto LABEL_20;
      }

      if (v14 != -1)
      {
        v4 = sub_2393C8140(a2, 2uLL, v14);
        if (v4)
        {
          goto LABEL_20;
        }
      }

      v4 = sub_2393C8DE0(a2, v20);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = sub_2393F5CEC(a1, v8);
      if (v4 != 768)
      {
        if (!v4)
        {
          v6 = 0x13900000000;
          goto LABEL_135;
        }

        goto LABEL_20;
      }

      goto LABEL_124;
    }

    if (v19 != 1282)
    {
      goto LABEL_106;
    }

    if (!v18)
    {
      v6 = 0xF000000000;
      goto LABEL_135;
    }

    v4 = sub_2393F5CEC(a1, v8);
    if (!v4)
    {
      v6 = 0xF300000000;
      if (*a1 || a1[1] != 3)
      {
        goto LABEL_135;
      }

      LODWORD(v14) = 0;
      v4 = sub_2393F650C(a1, &v14);
      if (!v4)
      {
        if (WORD1(v14))
        {
          v6 = 0xF800000000;
          goto LABEL_117;
        }

        if (v14 > 0xFF)
        {
          v6 = 0x10000000000;
          goto LABEL_117;
        }

        v4 = sub_2393C81D4(a2, 2uLL, v14);
        if (!v4)
        {
          goto LABEL_108;
        }
      }
    }

LABEL_20:
    v6 = v4;
LABEL_21:
    if (v4)
    {
      return v6 & 0xFFFFFFFF00000000 | v4;
    }
  }

  if (v4 != 768)
  {
    goto LABEL_3;
  }

  v4 = sub_2393F5CEC(a1, v9);
  if (!v4)
  {
    v6 = 0x18300000000;
    goto LABEL_135;
  }

  if (v4 == 768)
  {
    v4 = sub_2393F602C();
    if (!v4)
    {
      v4 = sub_2393C8DE0(a2, v13);
    }
  }

LABEL_3:
  v6 = v4;
  return v6 & 0xFFFFFFFF00000000 | v4;
}

unint64_t sub_2394A2688(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  sub_2393C5AAC(v20);
  sub_23949DD70(v21);
  sub_2393C5ADC(v20, a1, a2);
  sub_2393F6DA8(v18, *a3, a3[1]);
  sub_23949DB2C(v21);
  v6 = sub_2394A277C(v20, v18, v18, v21);
  v7 = v6;
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    v9 = sub_2393F6DCC(v18);
    sub_238DB8498(a3, v9, v10, v11, v12, v13, v14, v15, v17, v18[0], v18[1], v18[2], v19);
    v8 = 0;
    v7 = 0;
  }

  nullsub_56();
  return v7 | v8;
}

unint64_t sub_2394A277C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (sub_2393C5C40(a1) != -1 || (v8 = sub_2393C6B34(a1), !v8))
  {
    v8 = sub_2393C7078(a1, 21, 256);
    if (!v8)
    {
      v17 = 0;
      v8 = sub_2393C6A2C(a1, &v17);
      if (!v8)
      {
        v8 = sub_2393F77A4(a2, 0, 0x10u);
        if (!v8)
        {
          sub_2393C6B34(a1);
          if (*(a1 + 16) == 9)
          {
            if (!sub_2393C7078(a1, 16, 9) && !sub_2394A2ED0(a1, (a4 + 360)))
            {
              *a4 = xmmword_278A83090;
              *(a4 + 372) = 513;
              sub_2394A0BD0(a4 + 176);
              *(a4 + 352) = 1;
              sub_2394A0BD0(a4 + 16);
              *(a4 + 368) = 16843777;
              v9 = *(a4 + 374);
              *(a4 + 376) = 1;
              *(a4 + 374) = v9 | 7;
              *(a4 + 378) = 3;
              if (*a3)
              {
                v18 = &unk_284BB9138;
                v10 = *(a4 + 360);
                v19 = *v10;
                v12 = v10[2];
                v11 = v10[3];
                v13 = *(v10 + 64);
                v20 = v10[1];
                v21 = v12;
                v23 = v13;
                v22 = v11;
                sub_2394AD9BC(&v18, a3);
              }
            }

LABEL_33:
            v8 = sub_2393F77A4(a2, 0, 0x10u);
            if (!v8)
            {
              v8 = sub_2393F5C58(a2, *(a4 + 372));
              if (!v8)
              {
                v8 = sub_2393F77B0(a2);
                if (!v8)
                {
                  v8 = sub_2394A2E2C(a1, a2, a4);
                  if (!v8)
                  {
                    v8 = sub_2393F77B0(a2);
                    if (!v8)
                    {
                      v16 = sub_2393C6AE0(a1);
                      if (v16)
                      {
                        return v16;
                      }

                      v16 = sub_2393C6A98(a1, v17);
                      if (v16)
                      {
                        return v16;
                      }
                    }
                  }
                }
              }
            }

            return v8;
          }

          v8 = sub_2393F77A4(a3, 0, 0x10u);
          if (!v8)
          {
            v8 = sub_2393F77A4(a3, 128, 0);
            if (!v8)
            {
              v8 = sub_2393F6DE8(a3, 2uLL);
              if (!v8)
              {
                v8 = sub_2393F77B0(a3);
                if (!v8)
                {
                  v8 = sub_2393C7078(a1, 16, 1);
                  if (!v8)
                  {
                    v8 = sub_2393C60CC(a1, a4);
                    if (!v8)
                    {
                      v8 = sub_2393F6EB4(a3, 0, 2, 0, *a4, *(a4 + 8));
                      if (!v8)
                      {
                        v8 = sub_2393F77A4(a3, 0, 0x10u);
                        if (!v8)
                        {
                          LOBYTE(v18) = 0;
                          v8 = sub_2393C6FD0(a1, 2);
                          if (!v8)
                          {
                            v8 = sub_2393C5ED0(a1, &v18);
                            if (!v8)
                            {
                              v15 = v18 | 0x200;
                              *(a4 + 372) = v18 | 0x200;
                              v8 = sub_2393F5C58(a3, v15);
                              if (!v8)
                              {
                                v8 = sub_2393F77B0(a3);
                                if (!v8)
                                {
                                  v8 = sub_2393C7114(a1, 23, 3);
                                  if (!v8)
                                  {
                                    v8 = sub_2394A2DC8(a1, a3, a4 + 176);
                                    if (!v8)
                                    {
                                      v8 = sub_2394A2F60(a1, a3, a4);
                                      if (!v8)
                                      {
                                        v8 = sub_2393C7114(a1, 23, 6);
                                        if (!v8)
                                        {
                                          v8 = sub_2394A2DC8(a1, a3, a4 + 16);
                                          if (!v8)
                                          {
                                            v8 = sub_2394A3070(a1, a3, a4);
                                            if (!v8)
                                            {
                                              v8 = sub_2394A31E0(a1, a3, a4);
                                              if (!v8)
                                              {
                                                v8 = sub_2393F77B0(a3);
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
                  }
                }
              }
            }
          }

          if (!v8)
          {
            goto LABEL_33;
          }
        }
      }
    }
  }

  return v8;
}

unint64_t sub_2394A2BA8(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  sub_2393C5AAC(v9);
  sub_2393C5ADC(v9, a1, a2);
  return sub_2394A2C0C(v9, a3, a4);
}

unint64_t sub_2394A2C0C(uint64_t a1, uint64_t a2, char a3)
{
  sub_2393F6DBC(v14);
  sub_23949DB2C(a2);
  if (a3)
  {
    v9 = sub_2393D52C4(0x20FuLL);
    if (!v9)
    {
      v8 = 0x2A600000000;
      LODWORD(v7) = 11;
      return v7 | v8;
    }

    v10 = v9;
    sub_2393F6DA8(v13, v9, 527);
    v7 = sub_2394A277C(a1, v14, v13, a2);
    if (!v7)
    {
      if (*(a2 + 372) != 513)
      {
        v8 = 0x2AD00000000;
        LODWORD(v7) = 23;
        goto LABEL_15;
      }

      v11 = sub_2393F6DCC(v13);
      v7 = sub_2393F7E10(v10, v11, (a2 + 392));
      if (!v7)
      {
        *(a2 + 374) |= 0x200u;
        j__free(v10);
        goto LABEL_11;
      }
    }

    v8 = v7 & 0xFFFFFFFF00000000;
LABEL_15:
    j__free(v10);
    return v7 | v8;
  }

  v6 = sub_2394A277C(a1, v14, v14, a2);
  LODWORD(v7) = v6;
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFF00000000;
    return v7 | v8;
  }

LABEL_11:
  if ((a3 & 2) != 0)
  {
    v8 = 0;
    LODWORD(v7) = 0;
    *(a2 + 374) |= 0x100u;
  }

  else
  {
    v8 = 0;
    LODWORD(v7) = 0;
  }

  return v7 | v8;
}

unint64_t sub_2394A2D7C(uint64_t a1, uint64_t a2)
{
  sub_2393F6DBC(v5);
  sub_23949ED30(a2);
  return sub_2394A2DC8(a1, v5, a2);
}

unint64_t sub_2394A2DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23949F2D4(a3, a1);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_23949F4C8(a3, a2);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

unint64_t sub_2394A2E2C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v6 = sub_2393C7114(a1, 16, 11);
  if (!v6)
  {
    v6 = sub_2394A3B1C(a1, (a3 + 384));
    if (!v6)
    {
      v7 = *a2;
      if (!*a2)
      {
        LODWORD(v6) = 0;
        return v7 | v6;
      }

      v6 = sub_2393F7918(a2, 0, 3u, 1);
      if (!v6)
      {
        v6 = sub_23949FEE8(*(a3 + 384), a2);
        if (!v6)
        {
          v6 = sub_2393F77B0(a2);
        }
      }
    }
  }

  v7 = v6 & 0xFFFFFFFF00000000;
  return v7 | v6;
}

unint64_t sub_2394A2ED0(uint64_t a1, void *a2)
{
  v8 = 0;
  v4 = sub_2393C6160(a1, &v8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else if (sub_2393C5CB8(a1) == 65)
  {
    sub_238DC45B4(&v7, v8);
    LODWORD(v4) = 0;
    v5 = 0;
    *a2 = v7;
  }

  else
  {
    v5 = 0x1DA00000000;
    LODWORD(v4) = 43;
  }

  return v5 | v4;
}

unint64_t sub_2394A2F60(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_2393F77A4(a2, 0, 0x10u);
  if (v6)
  {
    goto LABEL_13;
  }

  v6 = sub_2393C6FD0(a1, 4);
  if (v6)
  {
    goto LABEL_13;
  }

  v7 = (a3 + 352);
  v6 = sub_2393C5FC8(a1, (a3 + 352));
  if (v6)
  {
    goto LABEL_13;
  }

  v6 = sub_23949FB2C(*v7, &v11);
  if (v6)
  {
    goto LABEL_13;
  }

  v6 = sub_2393F75FC(a2, &v11);
  if (v6)
  {
    goto LABEL_13;
  }

  v6 = sub_2393C6FD0(a1, 5);
  if (v6)
  {
    goto LABEL_13;
  }

  v8 = (a3 + 356);
  v6 = sub_2393C5FC8(a1, v8);
  if (v6)
  {
    goto LABEL_13;
  }

  v6 = sub_23949FB2C(*v8, &v11);
  if (v6)
  {
    goto LABEL_13;
  }

  v6 = sub_2393F75FC(a2, &v11);
  if (v6)
  {
    goto LABEL_13;
  }

  if (*v8 - 1 >= *v7)
  {
    v6 = sub_2393F77B0(a2);
LABEL_13:
    v9 = v6 & 0xFFFFFFFF00000000;
    return v9 | v6;
  }

  v9 = 0x4C00000000;
  LODWORD(v6) = 80;
  return v9 | v6;
}

unint64_t sub_2394A3070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2393C6FD0(a1, 7);
  if (!v6)
  {
    v11 = 0;
    v6 = sub_2393C5ED0(a1, &v11 + 1);
    if (!v6)
    {
      v9 = HIBYTE(v11);
      *(a3 + 370) = HIBYTE(v11) | 0x100;
      if (v9 != 1)
      {
        v7 = 0x5E00000000;
        LODWORD(v6) = 80;
        return v7 | v6;
      }

      v6 = sub_2393C6FD0(a1, 8);
      if (!v6)
      {
        v6 = sub_2393C5ED0(a1, &v11);
        if (!v6)
        {
          v10 = v11;
          *(a3 + 368) = v11 | 0x400;
          if (v10 != 1)
          {
            v7 = 0x6400000000;
            LODWORD(v6) = 81;
            return v7 | v6;
          }

          v6 = sub_2393F77A4(a2, 0, 0x10u);
          if (!v6)
          {
            v6 = sub_2393F77A4(a2, 0, 0x10u);
            if (!v6)
            {
              v6 = sub_2393F5C58(a2, *(a3 + 370));
              if (!v6)
              {
                v6 = sub_2393F5C58(a2, *(a3 + 368));
                if (!v6)
                {
                  v6 = sub_2393F77B0(a2);
                  if (!v6)
                  {
                    v6 = sub_2393C7114(a1, 16, 9);
                    if (!v6)
                    {
                      v6 = sub_2394A2ED0(a1, (a3 + 360));
                      if (!v6)
                      {
                        v6 = sub_2393F7438(a2, 0, *(a3 + 360), 0x41u);
                        if (!v6)
                        {
                          v6 = sub_2393F77B0(a2);
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

  v7 = v6 & 0xFFFFFFFF00000000;
  return v7 | v6;
}

uint64_t sub_2394A31E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_2393C7114(a1, 23, 10);
  if (v6)
  {
    return v6;
  }

  v25 = 0;
  v6 = sub_2393C6A2C(a1, &v25);
  if (v6)
  {
    return v6;
  }

  v6 = sub_2393F77A4(a2, 128, 3u);
  if (v6)
  {
    return v6;
  }

  v6 = sub_2393F77A4(a2, 0, 0x10u);
  if (v6)
  {
    return v6;
  }

  v8 = 80;
  while (1)
  {
    v9 = sub_2393C6B34(a1);
    v6 = v9;
    if (v9)
    {
      break;
    }

    v10 = *(a1 + 16);
    if (v10 > 0xFF)
    {
      v13 = 0x15D00000000;
      v8 = 36;
      return v13 | v8;
    }

    if (v10 != 6)
    {
      v11 = sub_2393F77A4(a2, 0, 0x10u);
      if (v11)
      {
        goto LABEL_25;
      }

      v11 = sub_2393F5C58(a2, v10 | 0x500u);
      if (v11)
      {
        goto LABEL_25;
      }

      if ((v10 - 1) <= 2)
      {
        v11 = sub_2393F6F40(a2, 1);
        if (v11)
        {
          goto LABEL_25;
        }
      }

      v11 = sub_2393F7918(a2, 0, 4u, 0);
      if (v11)
      {
        goto LABEL_25;
      }

      v13 = 0x18F00000000;
      if (v10 <= 2u)
      {
        if (v10 != 1)
        {
          if (v10 != 2)
          {
            return v13 | v8;
          }

          v11 = sub_2394A377C(a1, a2, a3);
          if (v11)
          {
            goto LABEL_25;
          }

          goto LABEL_43;
        }

        v11 = sub_2394A3824(a1, a2, a3);
        if (!v11)
        {
LABEL_43:
          v11 = sub_2393F77B0(a2);
          if (!v11)
          {
            v11 = sub_2393F77B0(a2);
          }
        }
      }

      else
      {
        switch(v10)
        {
          case 3u:
            v11 = sub_2394A3974(a1, a2, a3);
            if (!v11)
            {
              goto LABEL_43;
            }

            break;
          case 4u:
            v11 = sub_2394A36EC(a1, a2, a3);
            if (!v11)
            {
              goto LABEL_43;
            }

            break;
          case 5u:
            v11 = sub_2394A3638(a1, a2, a3);
            if (v11)
            {
              break;
            }

            goto LABEL_43;
          default:
            return v13 | v8;
        }
      }

LABEL_25:
      v15 = HIDWORD(v11);
      goto LABEL_26;
    }

    v30 = 0uLL;
    v11 = sub_2393C7078(a1, 16, 6);
    if (v11)
    {
      goto LABEL_25;
    }

    v11 = sub_2393C60CC(a1, &v30);
    if (v11)
    {
      goto LABEL_25;
    }

    sub_2393F5CB4(&v28, v30, *(&v30 + 1));
    v11 = sub_2393F5CEC(&v28, v12);
    if (v11)
    {
      goto LABEL_17;
    }

    v13 = 0x13400000000;
    if (v28 || v29 != 16)
    {
      goto LABEL_77;
    }

    v11 = sub_2393F5F1C(&v28);
    if (v11 || (v27 = 0, v26 = 0, v11 = sub_2393F5CEC(&v28, v14), v11))
    {
LABEL_17:
      v15 = HIDWORD(v11);
      goto LABEL_18;
    }

    if (v28)
    {
      LODWORD(v11) = 773;
      v15 = 313;
      goto LABEL_18;
    }

    LODWORD(v11) = 773;
    v15 = 313;
    if (v29 != 6)
    {
      goto LABEL_18;
    }

    v11 = sub_2393F5BA0(&v28, &v27);
    if (v11)
    {
      goto LABEL_17;
    }

    if (v27 != -1)
    {
      v15 = 315;
      LODWORD(v11) = 774;
      goto LABEL_26;
    }

    v17 = sub_2393F5CEC(&v28, v16);
    if (v17)
    {
      goto LABEL_52;
    }

    if (!v28 && v29 == 1)
    {
      v17 = sub_2393F62C0(&v28, &v26);
      if (v17)
      {
        goto LABEL_52;
      }

      if (v26)
      {
        *(a3 + 374) |= 0x20u;
      }

      v17 = sub_2393F5CEC(&v28, v20);
      if (v17)
      {
LABEL_52:
        v19 = v17;
LABEL_53:
        LODWORD(v11) = v19;
        v15 = HIDWORD(v19);
        goto LABEL_18;
      }
    }

    v21 = sub_2393F5CEC(&v28, v18);
    if (v21 != 768)
    {
      v19 = v21;
      if (!v21)
      {
        v13 = 0x14B00000000;
LABEL_77:
        v8 = 773;
        return v13 | v8;
      }

      goto LABEL_53;
    }

    v22 = sub_2393F602C();
    v15 = HIDWORD(v22);
    v24 = v22;
    if (!v22)
    {
      if (*(&v30 + 1) >> 16)
      {
        v15 = 333;
        LODWORD(v11) = 773;
        goto LABEL_26;
      }

      v11 = sub_2393F771C(a2, v30, WORD4(v30));
      if (v11)
      {
        goto LABEL_25;
      }
    }

    LODWORD(v11) = v24;
LABEL_18:
    if (!v11)
    {
      v11 = 0;
      goto LABEL_25;
    }

LABEL_26:
    if (v11)
    {
      return v11 | (v15 << 32);
    }
  }

  if (v9 == 33)
  {
    v6 = sub_2393F77B0(a2);
    if (!v6)
    {
      v6 = sub_2393F77B0(a2);
      if (!v6)
      {
        v23 = sub_2393C6A98(a1, v25);
        if (v23)
        {
          return v23;
        }
      }
    }
  }

  return v6;
}

uint64_t sub_2394A3638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 374) |= 0x10u;
  result = sub_2393F77A4(a2, 0, 0x10u);
  if (!result)
  {
    result = sub_2393C7078(a1, 16, 5);
    if (!result)
    {
      result = sub_2394A3A70(a1, (a3 + 344));
      if (!result)
      {
        result = sub_2393F717C(a2, 128, 0, *(a3 + 344), 0x14u);
        if (!result)
        {

          return sub_2393F77B0(a2);
        }
      }
    }
  }

  return result;
}

unint64_t sub_2394A36EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 374) |= 8u;
  v6 = sub_2393C7078(a1, 16, 4);
  if (v6 || (v6 = sub_2394A3A70(a1, (a3 + 336)), v6))
  {
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    v6 = sub_2393F7164(a2, *(a3 + 336), 0x14u);
    v7 = v6 & 0xFFFFFFFF00000000;
    if (!v6)
    {
      LODWORD(v6) = 0;
      v7 = 0;
    }
  }

  return v7 | v6;
}