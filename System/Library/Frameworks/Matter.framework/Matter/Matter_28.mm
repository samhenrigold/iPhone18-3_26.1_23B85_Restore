void sub_2393E0F90(_BYTE *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    *v22 = "CASESession";
    *&v22[8] = 2080;
    v23 = "OnResponseTimeout";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (a2)
  {
    if (a1[104] == 1 && *sub_2393E088C(a1 + 104, v5) == a2)
    {
      v9 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = (*(*a1 + 48))(a1) >> 32;
        v11 = (*(*a1 + 48))(a1);
        (*(*a1 + 48))(a1);
        v12 = a1[696];
        *buf = 67109888;
        *v22 = v10;
        *&v22[4] = 1024;
        *&v22[6] = v11;
        LOWORD(v23) = 1024;
        *(&v23 + 2) = v13;
        HIWORD(v23) = 1024;
        v24 = v12;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "CASESession timed out while waiting for a response from peer <%08X%08X, %d>. Current state was %u", buf, 0x1Au);
      }

      v14 = sub_2393D5398(1u);
      if (v14)
      {
        v15 = (*(*a1 + 48))(a1) >> 32;
        v16 = (*(*a1 + 48))(a1);
        (*(*a1 + 48))(a1);
        sub_2393D5320(11, 1, "CASESession timed out while waiting for a response from peer <%08X%08X, %d>. Current state was %u", v15, v16, v17, a1[696]);
      }

      v18 = sub_23948B4CC(v14);
      if (os_signpost_enabled(v18))
      {
        ++dword_27DF77748;
        *buf = 67109120;
        *v22 = dword_27DF77748;
        _os_signpost_emit_with_name_impl(&dword_238DAE000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CASETimeout", "%u", buf, 8u);
      }

      sub_2393EFD90(a1 + 32, v19);
      sub_2393DFAD4(a1, 0x24200000032, "src/protocols/secure_channel/CASESession.cpp");
    }

    else
    {
      v6 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "CASESession::OnResponseTimeout exchange doesn't match", buf, 2u);
      }

      v7 = sub_2393D5398(1u);
      if (v7)
      {
        sub_2393D5320(11, 1, "CASESession::OnResponseTimeout exchange doesn't match");
      }
    }
  }

  else
  {
    v8 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "CASESession::OnResponseTimeout was called by null exchange", buf, 2u);
    }

    v7 = sub_2393D5398(1u);
    if (v7)
    {
      sub_2393D5320(11, 1, "CASESession::OnResponseTimeout was called by null exchange");
    }
  }

  v20 = sub_23948B4CC(v7);
  if (os_signpost_enabled(v20))
  {
    *buf = 136315394;
    *v22 = "CASESession";
    *&v22[8] = 2080;
    v23 = "OnResponseTimeout";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }
}

uint64_t sub_2393E13E4(uint64_t a1, unsigned int a2)
{
  if (a2 > 9)
  {
    return 0;
  }

  else
  {
    return byte_2395C2557[a2];
  }
}

unint64_t sub_2393E1404(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 696);
  if (v4 == 7)
  {
    v16[0] = v17;
    *&v16[1] = xmmword_2395C2210;
    sub_2393D5CDC(v16, (a1 + 628), 0x20uLL);
    sub_2393D5CDC(v16, (a1 + 596), 0x10uLL);
    if (v16[1] < v16[2])
    {
      v5 = 0x26D00000000;
      goto LABEL_7;
    }

    v12 = *(*(a1 + 544) + 40);
    sub_238DB6950(v16, a1 + 400, *(a1 + 432));
    v14 = v17;
    v15 = 48;
    v8 = *(a1 + 40);
    v9 = a2;
    v10 = v12;
    v11 = 1;
  }

  else
  {
    if (v4 != 6)
    {
      v5 = 0x27600000000;
      v6 = 3;
      return v5 & 0xFFFFFFFF00000000 | v6;
    }

    v16[0] = v17;
    *&v16[1] = xmmword_2395C2210;
    sub_2393D5CDC(v16, (a1 + 520), 0x10uLL);
    sub_2393D5CDC(v16, (a1 + 488), 0x20uLL);
    if (v16[1] < v16[2])
    {
      v5 = 0x25C00000000;
LABEL_7:
      v6 = 25;
      return v5 & 0xFFFFFFFF00000000 | v6;
    }

    v7 = *(*(a1 + 544) + 40);
    sub_238DB6950(v16, a1 + 400, *(a1 + 432));
    v14 = v17;
    v15 = 48;
    v8 = *(a1 + 40);
    v9 = a2;
    v10 = v7;
    v11 = 0;
  }

  v5 = sub_23949148C(v9, v10, v16, &v14, v11, v8);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v5 & 0xFFFFFFFF00000000 | v6;
}

unint64_t sub_2393E15D4(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0x10000;
  v2 = (*(**(a1 + 480) + 192))(*(a1 + 480), *(a1 + 560), v11);
  v3 = v2;
  if (v2)
  {
    v4 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = sub_2393C9138();
      *buf = 136315138;
      v14 = v5;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Failed to obtain IPK for initiating: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v6 = sub_2393C9138();
      sub_2393D5320(11, 1, "Failed to obtain IPK for initiating: %s", v6);
    }

    v7 = v2 & 0xFFFFFFFF00000000;
  }

  else if (HIBYTE(v12) - 4 > 0xFFFFFFFC)
  {
    v3 = 0;
    v7 = 0;
    if (HIBYTE(v12) <= 1u)
    {
      v9 = 0;
    }

    else
    {
      v9 = HIBYTE(v12) - 2;
    }

    *(a1 + 520) = *&v11[3 * v9 + 1];
  }

  else
  {
    v8 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Found invalid IPK keyset for initiator.", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(11, 1, "Found invalid IPK keyset for initiator.");
    }

    v7 = 0x28800000000;
    v3 = 172;
  }

  return v7 | v3;
}

void sub_2393E17CC(uint64_t a1, void *a2, int a3)
{
  v39 = *MEMORY[0x277D85DE8];
  if (*a2 != *(a1 + 184))
  {
    return;
  }

  sub_2393E97D4(*a2 + 8, __str, 0x4CuLL);
  v6 = sub_2393D9044(0xBu);
  v7 = v6;
  if (a3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = __str;
      *&buf[12] = 2080;
      *&buf[14] = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Connection establishment failed with peer at %s: %s", buf, 0x16u);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_32;
    }

    v9 = "Connection establishment failed with peer at %s: %s";
LABEL_31:
    v25 = sub_2393C9138();
    sub_2393D5320(11, 1, v9, __str, v25);
LABEL_32:
    v26 = sub_2393E088C((a1 + 104), v8);
    sub_238EA6DC0(*v26, buf, v27);
    v29 = sub_2394953AC(*buf);
    v30 = *(v29 + 32);
    if (v30)
    {
      sub_2393E9744(v30, v28);
      *(v29 + 32) = 0;
    }

    (*(**buf + 32))(*buf);
    if (*(a1 + 72) == 1)
    {
      *&buf[8] = *sub_238DE36B8((a1 + 72), v31);
      (*(**&buf[8] + 24))(*&buf[8]);
      v32 = 1;
    }

    else
    {
      v32 = 0;
    }

    buf[0] = v32;
    v33 = sub_238DE36B8(buf, v31);
    v35 = sub_239495304(*v33);
    v36 = *(v35 + 32);
    if (v36)
    {
      sub_2393E9744(v36, v34);
      *(v35 + 32) = 0;
    }

    if (buf[0] == 1)
    {
      (*(**&buf[8] + 32))(*&buf[8]);
    }

    sub_2393DF69C(a1);
    return;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = __str;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "TCP Connection established with %s before session establishment", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(11, 3, "TCP Connection established with %s before session establishment", __str);
  }

  v11 = sub_2393E088C((a1 + 104), v10);
  sub_238EA6DC0(*v11, buf, v12);
  v14 = sub_2394953AC(*buf);
  v15 = *(v14 + 32);
  if (v15 != *a2)
  {
    if (*a2)
    {
      v16 = sub_2393E967C(*a2, v13);
      v15 = *(v14 + 32);
      if (!v15)
      {
LABEL_15:
        *(v14 + 32) = v16;
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0;
      if (!v15)
      {
        goto LABEL_15;
      }
    }

    sub_2393E9744(v15, v13);
    goto LABEL_15;
  }

LABEL_16:
  (*(**buf + 32))(*buf);
  if (*(a1 + 72) == 1)
  {
    *&buf[8] = *sub_238DE36B8((a1 + 72), v17);
    (*(**&buf[8] + 24))(*&buf[8]);
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  buf[0] = v18;
  v19 = sub_238DE36B8(buf, v17);
  v21 = sub_239495304(*v19);
  v22 = *(v21 + 32);
  if (v22 != *a2)
  {
    if (*a2)
    {
      v23 = sub_2393E967C(*a2, v20);
      v22 = *(v21 + 32);
      if (!v22)
      {
LABEL_23:
        *(v21 + 32) = v23;
        goto LABEL_24;
      }
    }

    else
    {
      v23 = 0;
      if (!v22)
      {
        goto LABEL_23;
      }
    }

    sub_2393E9744(v22, v20);
    goto LABEL_23;
  }

LABEL_24:
  if (buf[0] == 1)
  {
    (*(**&buf[8] + 32))(*&buf[8]);
  }

  if (sub_2393E08AC(a1))
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v24 = sub_2393C9138();
      *buf = 136315394;
      *&buf[4] = __str;
      *&buf[12] = 2080;
      *&buf[14] = v24;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Sigma1 failed to peer %s: %s", buf, 0x16u);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_32;
    }

    v9 = "Sigma1 failed to peer %s: %s";
    goto LABEL_31;
  }
}

void sub_2393E1C6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 184);
  if (v3 == a2)
  {
    sub_2393E9744(v3, a2);
    *(a1 + 184) = 0;
    v4 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "TCP Connection for this session has closed", v5, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(11, 3, "TCP Connection for this session has closed");
    }
  }
}

uint64_t sub_2393E1D10@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (result + 40);
  if ((*(result + 40) & 1) != 0 && (v5 = sub_238DE36B8((result + 40), a2), result = (*(**v5 + 16))(*v5), result == 2))
  {
    v7 = sub_238DE36B8(v4, v6);
    result = sub_239495304(*v7);
    v8 = *(result + 92);
    *a3 = 1;
    *(a3 + 2) = v8;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

_BYTE *sub_2393E1D9C(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_239531094();
  }

  return a1 + 4;
}

unint64_t sub_2393E1DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, char **a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a6[1] < 0x10)
  {
    return 0x8AB00000019;
  }

  v8 = *(*(a1 + 544) + 40);
  v21 = 0;
  v22 = 0;
  v20 = v8;
  v9 = sub_2393E87C0(a1, a2, a3, a4, a5, &v20);
  if (v9 || (v9 = sub_2393F7A34(0, 0, 0, 0, &v21, *a5, a5[1], 0, *a6, 16), v9))
  {
    v16 = v9 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_238DB8498(a6, 0x10uLL, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22);
    LODWORD(v9) = 0;
    v16 = 0;
  }

  (*(*v20 + 40))(v20, &v21);
  sub_2393F9144(&v21, 16);
  return v16 | v9;
}

unint64_t sub_2393E1F04(uint64_t *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  v5 = os_signpost_enabled(v4);
  if (v5)
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    v15 = 2080;
    v16 = "EncodeSigma1";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (*(a2 + 80))
  {
    sub_2393D9C18(0xF3uLL, 0x26u, buf);
    v5 = *a1;
    if (*a1)
    {
      sub_2393D96C8(v5);
    }

    v6 = *buf;
    *a1 = *buf;
    if (v6)
    {
      sub_2393C7B90(buf);
      v17[1] = 0;
      v17[2] = 0;
      v17[0] = &unk_284BB83A8;
      v18 = 0;
      sub_238EA16C4(v17, a1, 0);
      sub_2393C7BF0(buf, v17, 0xFFFFFFFF);
      v13 = -1;
      v7 = sub_2393C8CE0(buf, 0x100uLL, 21, &v13);
      if (v7)
      {
        goto LABEL_12;
      }

      v7 = sub_2393C8364(buf, 1uLL, *a2, *(a2 + 8));
      if (v7)
      {
        goto LABEL_12;
      }

      v7 = sub_2393C818C(buf, 2uLL, *(a2 + 16));
      if (v7)
      {
        goto LABEL_12;
      }

      v7 = sub_2393C8364(buf, 3uLL, *(a2 + 24), *(a2 + 32));
      if (v7)
      {
        goto LABEL_12;
      }

      v7 = sub_2393C83AC(buf, 4uLL, (*(a2 + 80) + 8), 65);
      if (v7)
      {
        goto LABEL_12;
      }

      v12 = *(a2 + 88);
      if (!v12)
      {
        v8 = 0x35200000000;
        LODWORD(v7) = 47;
        goto LABEL_13;
      }

      if ((v7 = sub_2393EFE24(5uLL, v12, buf), v7) || *(a2 + 40) == 1 && ((v7 = sub_2393C8364(buf, 6uLL, *(a2 + 48), *(a2 + 56)), v7) || (v7 = sub_2393C8364(buf, 7uLL, *(a2 + 64), *(a2 + 72)), v7)) || (v7 = sub_2393C8DE0(buf, v13), v7) || (v7 = sub_238DD2EFC(buf, a1), v7))
      {
LABEL_12:
        v8 = v7 & 0xFFFFFFFF00000000;
      }

      else
      {
        v8 = 0;
        LODWORD(v7) = 0;
      }

LABEL_13:
      v5 = sub_2393B8400(v17);
      v9 = v7;
      goto LABEL_16;
    }

    v8 = 0x34400000000;
    v9 = 11;
  }

  else
  {
    v8 = 0x33800000000;
    v9 = 47;
  }

LABEL_16:
  v10 = sub_23948B4CC(v5);
  if (os_signpost_enabled(v10))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    v15 = 2080;
    v16 = "EncodeSigma1";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v9 | v8;
}

unint64_t sub_2393E2244(uint64_t a1, void *a2)
{
  v26[3] = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    *&buf[12] = 2080;
    *&buf[14] = "HandleSigma1_and_SendSigma2";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  sub_2393E25C0(a1, a2, v26);
  if (v26[0])
  {
    v6 = sub_2393E2C30(v26, v5);
    v7 = *v6;
  }

  else
  {
    v6 = sub_2393E2C54(v26, v5);
    if (*v6 == 1)
    {
      v20 = 0;
      *buf = 0;
      *&buf[8] = 0;
      v22 = &buf[16];
      v23 = 16;
      v7 = sub_2393E38D8(a1, buf);
      if (!v7)
      {
        v7 = sub_2393E3B24(&v20, buf);
        if (!v7)
        {
          v16 = 0;
          v17 = "core_dev_case_session_sigma2_resume";
          v19 = 0;
          sub_23948BD20(&v16);
          v15 = sub_2393E3DFC(a1, &v20);
          v7 = v15;
          if (v15)
          {
            v16 = 1;
            v17 = "core_dev_case_session_sigma2_resume";
            v18 = v15;
            v19 = 3;
            sub_23948BD20(&v16);
          }

          else
          {
            (*(**(a1 + 120) + 16))(*(a1 + 120));
          }
        }
      }
    }

    else
    {
      if (*v6)
      {
        v9 = 0;
        v8 = 0;
        goto LABEL_20;
      }

      v20 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v7 = sub_2393E2C74(a1, buf);
      if (!v7)
      {
        v7 = sub_2393E340C(&v20, buf);
        if (!v7)
        {
          v16 = 0;
          v17 = "core_dev_case_session_sigma2";
          v19 = 0;
          sub_23948BD20(&v16);
          v14 = sub_2393E3654(a1, &v20);
          v7 = v14;
          if (v14)
          {
            v16 = 1;
            v17 = "core_dev_case_session_sigma2";
            v18 = v14;
            v19 = 3;
            sub_23948BD20(&v16);
          }

          else
          {
            (*(**(a1 + 120) + 16))(*(a1 + 120));
          }
        }
      }

      if (v24)
      {
        j__free(v24);
      }
    }

    v6 = v20;
    if (v20)
    {
      sub_2393D96C8(v20);
    }
  }

  v8 = HIDWORD(v7);
  v9 = v7;
  if (v7)
  {
    v10 = a1 + 32;
    v11 = (a1 + 104);
    if (v7 == 16)
    {
      sub_2393E3ED8(v10, v11, 1);
      *(a1 + 696) = 0;
      v9 = 16;
    }

    else
    {
      sub_2393E3ED8(v10, v11, 2);
      *(a1 + 696) = 0;
    }
  }

LABEL_20:
  v12 = sub_23948B4CC(v6);
  if (os_signpost_enabled(v12))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    *&buf[12] = 2080;
    *&buf[14] = "HandleSigma1_and_SendSigma2";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v9 | (v8 << 32);
}

void sub_2393E25C0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v6))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    *&buf[12] = 2080;
    *&buf[14] = "HandleSigma1";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v7 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Received Sigma1 msg", buf, 2u);
  }

  v8 = sub_2393D5398(2u);
  if (v8)
  {
    sub_2393D5320(11, 2, "Received Sigma1 msg");
  }

  v9 = sub_23948B4CC(v8);
  v10 = os_signpost_enabled(v9);
  if (v10)
  {
    ++dword_27DF7774C;
    *buf = 67109120;
    *&buf[4] = dword_27DF7774C;
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Sigma1", "%u", buf, 8u);
  }

  if (*(a1 + 552))
  {
    sub_238DB6950(buf, *(*a2 + 8), *(*a2 + 24));
    v10 = sub_2393F7FF0((a1 + 192), *buf, *&buf[8]);
    if (v10)
    {
      *a3 = 1;
      a3[1] = v10;
      a3[2] = v11;
    }

    else
    {
      sub_2393C5AAC(v36);
      v37 = 0;
      sub_238DD2F90(v36, a2);
      *buf = 0;
      *&buf[8] = 0;
      v44[0] = 0;
      v44[1] = 0;
      v45 = 0;
      *__src = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0;
      v50 = sub_239476060();
      v51 = v12;
      v52 = 0;
      v54 = 0;
      v56 = 0;
      v58 = 1;
      v13 = sub_2393E4964(v36, buf);
      if (v13)
      {
        *a3 = 1;
        a3[1] = v13;
        a3[2] = v14;
      }

      else
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *v38 = 67109120;
          *&v38[4] = *&buf[16];
          _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "Peer (Initiator) assigned session ID %d", v38, 8u);
        }

        if (sub_2393D5398(3u))
        {
          sub_2393D5320(11, 3, "Peer (Initiator) assigned session ID %d", *&buf[16]);
        }

        v16 = *&buf[16];
        *(a1 + 176) = 1;
        *(a1 + 178) = v16;
        if (v49 == 1)
        {
          *(a1 + 144) = v50;
          *(a1 + 152) = v51;
          v17 = v52;
          *(a1 + 156) = v52;
          if (v17 == 1)
          {
            *(a1 + 158) = v53;
          }

          v18 = v54;
          *(a1 + 160) = v54;
          if (v18 == 1)
          {
            *(a1 + 162) = v55;
          }

          v19 = v56;
          *(a1 + 164) = v56;
          if (v19 == 1)
          {
            *(a1 + 168) = v57;
          }

          *(a1 + 172) = v58;
          v20 = sub_2393E088C((a1 + 104), v15);
          sub_238EA6DC0(*v20, v38, v21);
          v22 = sub_2394953AC(*v38);
          v23 = *(a1 + 144);
          *(v22 + 120) = *(a1 + 152);
          *(v22 + 112) = v23;
          LODWORD(v23) = *(a1 + 156);
          *(v22 + 124) = v23;
          if (v23 == 1)
          {
            *(v22 + 126) = *(a1 + 158);
          }

          v24 = *(a1 + 160);
          *(v22 + 128) = v24;
          if (v24 == 1)
          {
            *(v22 + 130) = *(a1 + 162);
          }

          v25 = *(a1 + 164);
          *(v22 + 132) = v25;
          if (v25 == 1)
          {
            *(v22 + 136) = *(a1 + 168);
          }

          *(v22 + 140) = *(a1 + 172);
          (*(**v38 + 32))(*v38);
        }

        if (v45 == 1 && __src[1] == 16 && (sub_2393E99A4(v38, __src[0]), !sub_2393E45C8(a1, *v38, v47, *(&v47 + 1), *buf, *&buf[8])))
        {
          if (*&buf[8])
          {
            memmove((a1 + 628), *buf, *&buf[8]);
          }

          if (__src[1])
          {
            memmove((a1 + 596), __src[0], __src[1]);
          }

          *a3 = 0;
          *(a3 + 8) = 1;
        }

        else
        {
          v26 = v48;
          *(a1 + 320) = *v48;
          v28 = *(v26 + 32);
          v27 = *(v26 + 48);
          v29 = *(v26 + 16);
          *(a1 + 384) = *(v26 + 64);
          *(a1 + 352) = v28;
          *(a1 + 368) = v27;
          *(a1 + 336) = v29;
          v31 = sub_2393E41F4(a1, v44, buf);
          if (v31)
          {
            v32 = v30;
            if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
            {
              *v38 = 0;
              _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "CASE failed to match destination ID with local fabrics", v38, 2u);
            }

            if (sub_2393D5398(1u))
            {
              sub_2393D5320(11, 1, "CASE failed to match destination ID with local fabrics");
            }

            sub_2393D90A4(0xBu, OS_LOG_TYPE_INFO, v44);
            if (sub_2393D5398(3u))
            {
              sub_2393D8AB8(11, 3, v44);
            }

            *a3 = 1;
            a3[1] = v31;
            a3[2] = v32;
          }

          else
          {
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              v33 = *(a1 + 560);
              v34 = *(a1 + 576);
              *v38 = 67109632;
              *&v38[4] = v33;
              v39 = 1024;
              v40 = HIDWORD(v34);
              v41 = 1024;
              v42 = v34;
              _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "CASE matched destination ID: fabricIndex %u, NodeID 0x%08X%08X", v38, 0x14u);
            }

            if (sub_2393D5398(2u))
            {
              sub_2393D5320(11, 2, "CASE matched destination ID: fabricIndex %u, NodeID 0x%08X%08X", *(a1 + 560), HIDWORD(*(a1 + 576)), *(a1 + 576));
            }

            *a3 = 0;
            *(a3 + 8) = 0;
          }
        }
      }

      v10 = v37;
      if (v37)
      {
        sub_2393D96C8(v37);
      }
    }
  }

  else
  {
    *a3 = 1;
    a3[1] = 0x3FE00000003;
    a3[2] = "src/protocols/secure_channel/CASESession.cpp";
  }

  v35 = sub_23948B4CC(v10);
  if (os_signpost_enabled(v35))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    *&buf[12] = 2080;
    *&buf[14] = "HandleSigma1";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v35, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }
}

void *sub_2393E2C30(void *a1, uint64_t a2)
{
  if (*a1 != 1)
  {
    sub_23953111C();
  }

  return a1 + 1;
}

void *sub_2393E2C54(void *a1, uint64_t a2)
{
  if (*a1)
  {
    sub_23953111C();
  }

  return a1 + 1;
}

unint64_t sub_2393E2C74(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  v5 = os_signpost_enabled(v4);
  v7 = &off_23958D000;
  if (v5)
  {
    *buf = 136315394;
    v58 = "CASESession";
    v59 = 2080;
    v60 = "PrepareSigma2";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (!*(a1 + 552))
  {
    v14 = 3;
    v13 = 1163;
    goto LABEL_14;
  }

  if (*(a1 + 128) != 1)
  {
    v14 = 3;
    v13 = 1164;
    goto LABEL_14;
  }

  v5 = sub_2393E1D10(a1 + 32, v6, buf);
  if (buf[0] != 1)
  {
    v14 = 3;
    v13 = 1165;
    goto LABEL_14;
  }

  sub_2393E1D10(a1 + 32, v8, buf);
  *(a2 + 32) = sub_238E0A934(buf, v9)->super.isa;
  v5 = sub_2393D52C4(0x190uLL);
  if (!v5)
  {
    v14 = 11;
    v13 = 1169;
    goto LABEL_14;
  }

  v10 = v5;
  v11 = sub_2393D52C4(0x190uLL);
  if (v11)
  {
    v38 = v11;
    sub_238DB9BD8(&v51, v10, 400);
    v12 = sub_2394A8274(*(a1 + 552), *(a1 + 560), &v51);
    if (v12)
    {
      v13 = HIDWORD(v12);
LABEL_22:
      v14 = v12;
LABEL_23:
      v5 = v38;
      goto LABEL_24;
    }

    sub_238DB9BD8(&v49, v38, 400);
    v12 = sub_2394A847C(*(a1 + 552), *(a1 + 560), &v49);
    if (v12)
    {
      v13 = HIDWORD(v12);
      goto LABEL_22;
    }

    v12 = sub_2393F888C(a2, 0x20uLL);
    if (v12)
    {
      goto LABEL_21;
    }

    v17 = sub_2394AAF6C(*(a1 + 552));
    *(a1 + 392) = v17;
    if (!v17)
    {
      LODWORD(v12) = 11;
      v13 = 1185;
      goto LABEL_22;
    }

    v12 = (*(*v17 + 48))(v17, 0);
    if (v12 || (*(a2 + 40) = (*(**(a1 + 392) + 40))(*(a1 + 392)), v12 = (*(**(a1 + 392) + 32))(*(a1 + 392), a1 + 312, a1 + 400), v12))
    {
LABEL_21:
      v13 = HIDWORD(v12);
      goto LABEL_22;
    }

    v47 = buf;
    v48 = 145;
    v53[0] = a2;
    v53[1] = 32;
    v18 = (*(**(a1 + 392) + 40))(*(a1 + 392));
    v39 = (a1 + 520);
    v40 = 16;
    v19 = sub_2393E4BE0(a1, v53, v18, &v39, &v47);
    if (v19)
    {
      v13 = HIDWORD(v19);
      v14 = v19;
      goto LABEL_23;
    }

    v20 = *(*(a1 + 544) + 40);
    v56[0] = 0;
    v56[1] = 0;
    v55 = v20;
    sub_238DB6950(v53, v47, v48);
    v39 = "Sigma2NCASE_Sigma2NSigma3NCASE_Sigma3NN4chip11CASESessionE";
    v40 = 6;
    v21 = (*(**(*(a1 + 544) + 40) + 56))(*(*(a1 + 544) + 40), a1 + 400, v53, &v39, v56);
    v22 = v21;
    if (v21)
    {
      v13 = HIDWORD(v21);
      sub_2393E99C0(&v55);
      v14 = v22;
      v7 = &off_23958D000;
      goto LABEL_23;
    }

    v54 = 0;
    v23 = sub_2393D52C4(0x3B4uLL);
    if (!v23)
    {
      v29 = 11;
      v13 = 1211;
      goto LABEL_58;
    }

    v24 = v23;
    sub_238DB9BD8(&v39, v23, 948);
    sub_238DB6950(&v45, v49, v50);
    sub_238DB6950(v44, v51, v52);
    v25 = (*(**(a1 + 392) + 40))(*(a1 + 392));
    (*(**(a1 + 392) + 40))(*(a1 + 392));
    sub_238DB6950(v43, v25 + 8, 65);
    v26 = sub_238DB6950(v42, a1 + 320, 65);
    v27 = sub_2393E4D5C(v26, &v45, v44, v43, v42, &v39);
    v28 = v27;
    if (v27)
    {
      v13 = HIDWORD(v27);
      j__free(v24);
      v29 = v28;
      goto LABEL_58;
    }

    v30 = *(a1 + 552);
    v31 = *(a1 + 560);
    sub_238DB6950(&v45, v39, v40);
    v32 = sub_2394AB310(v30, v31, v45, v46, v53);
    j__free(v24);
    if (v32)
    {
      v29 = v32;
      v13 = HIDWORD(v32);
      goto LABEL_58;
    }

    v33 = v50 + v52 + v54;
    sub_2393C56C0((a2 + 48), v33 + 50);
    if (!*(a2 + 48))
    {
      v29 = 11;
      v13 = 1228;
      goto LABEL_58;
    }

    sub_2393C7B90(&v39);
    sub_2393C7BB8(&v39, *(a2 + 48), v33 + 34);
    LODWORD(v44[0]) = -1;
    v34 = sub_2393C8CE0(&v39, 0x100uLL, 21, v44);
    if (v34)
    {
      v13 = HIDWORD(v34);
    }

    else
    {
      sub_238DB6950(&v45, v49, v50);
      v34 = sub_2393C8364(&v39, 1uLL, v45, v46);
      if (!v34)
      {
        if (!v52 || (sub_238DB6950(&v45, v51, v52), v34 = sub_2393C8364(&v39, 2uLL, v45, v46), !v34))
        {
          j__free(v10);
          v51 = 0;
          v52 = 0;
          j__free(v38);
          v49 = 0;
          v50 = 0;
          v34 = sub_2393C83AC(&v39, 3uLL, v53, v54);
          if (!v34)
          {
            v34 = sub_2393F888C((a1 + 612), 0x10uLL);
            if (!v34)
            {
              v34 = sub_2393C8364(&v39, 4uLL, (a1 + 612), 0x10uLL);
              if (!v34)
              {
                v34 = sub_2393C8DE0(&v39, v44[0]);
                if (!v34)
                {
                  v34 = sub_2393C7CB8(&v39);
                  if (!v34)
                  {
                    v35 = v41;
                    *(a2 + 56) = v41 + 16;
                    v34 = sub_2393F7A34(*(a2 + 48), v35, 0, 0, v56, "NCASE_Sigma2NSigma3NCASE_Sigma3NN4chip11CASESessionE", 0xDuLL, *(a2 + 48), (*(a2 + 48) + v35), 16);
                    if (!v34)
                    {
                      v37 = sub_2393E1D9C((a1 + 128), v36);
                      v10 = 0;
                      v38 = 0;
                      v13 = 0;
                      LODWORD(v34) = 0;
                      *(a2 + 64) = v37;
                      goto LABEL_57;
                    }
                  }
                }
              }
            }
          }

          v10 = 0;
          v38 = 0;
        }
      }

      v13 = HIDWORD(v34);
    }

LABEL_57:
    v29 = v34;
LABEL_58:
    sub_2393F9144(v53, 64);
    sub_2393E99C0(&v55);
    v14 = v29;
    v7 = &off_23958D000;
    v5 = v38;
    if (!v38)
    {
LABEL_25:
      if (!v10)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }

LABEL_24:
    j__free(v5);
    goto LABEL_25;
  }

  v13 = 1172;
  v14 = 11;
LABEL_26:
  j__free(v10);
LABEL_14:
  v15 = sub_23948B4CC(v5);
  if (os_signpost_enabled(v15))
  {
    *buf = *(v7 + 285);
    v58 = "CASESession";
    v59 = 2080;
    v60 = "PrepareSigma2";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v14 | (v13 << 32);
}

unint64_t sub_2393E340C(void *a1, uint64_t a2)
{
  if (!*(a2 + 40))
  {
    v8 = 0x50100000000;
LABEL_21:
    v9 = 47;
    return v8 | v9;
  }

  if (!*(a2 + 48))
  {
    v8 = 0x50200000000;
LABEL_24:
    v9 = 3;
    return v8 | v9;
  }

  v3 = *(a2 + 56);
  if (v3 < 0x11)
  {
    v8 = 0x50400000000;
    goto LABEL_24;
  }

  if (!*(a2 + 64))
  {
    v8 = 0x50500000000;
    goto LABEL_21;
  }

  sub_2393D9C18(v3 + 171, 0x26u, v12);
  if (*a1)
  {
    sub_2393D96C8(*a1);
  }

  v5 = v12[0];
  *a1 = v12[0];
  if (v5)
  {
    sub_2393C7B90(v12);
    v13[1] = 0;
    v13[2] = 0;
    v13[0] = &unk_284BB83A8;
    v14 = 0;
    sub_238EA16C4(v13, a1, 0);
    sub_2393C7BF0(v12, v13, 0xFFFFFFFF);
    v11 = -1;
    v6 = sub_2393C8CE0(v12, 0x100uLL, 21, &v11);
    if (v6)
    {
      goto LABEL_18;
    }

    v6 = sub_2393C83AC(v12, 1uLL, a2, 32);
    if (v6)
    {
      goto LABEL_18;
    }

    v6 = sub_2393C818C(v12, 2uLL, *(a2 + 32));
    if (v6)
    {
      goto LABEL_18;
    }

    v6 = sub_2393C83AC(v12, 3uLL, (*(a2 + 40) + 8), 65);
    if (v6)
    {
      goto LABEL_18;
    }

    v6 = sub_2393C83AC(v12, 4uLL, *(a2 + 48), *(a2 + 56));
    if (v6)
    {
      goto LABEL_18;
    }

    v7 = *(a2 + 48);
    if (v7)
    {
      j__free(v7);
      *(a2 + 48) = 0;
    }

    v6 = sub_2393EFE24(5uLL, *(a2 + 64), v12);
    if (v6 || (v6 = sub_2393C8DE0(v12, v11), v6) || (v6 = sub_238DD2EFC(v12, a1), v6))
    {
LABEL_18:
      v8 = v6 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v6) = 0;
      v8 = 0;
    }

    sub_2393B8400(v13);
    v9 = v6;
  }

  else
  {
    v8 = 0x50F00000000;
    v9 = 11;
  }

  return v8 | v9;
}

unint64_t sub_2393E3654(uint64_t a1, uint64_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v4))
  {
    *v15 = 136315394;
    *&v15[4] = "CASESession";
    *&v15[12] = 2080;
    *&v15[14] = "SendSigma2";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", v15, 0x16u);
  }

  sub_238DB6950(v15, *(*a2 + 8), *(*a2 + 24));
  v5 = sub_2393F7FF0((a1 + 192), *v15, *&v15[8]);
  v7 = v5;
  if (v5 || (v8 = *sub_2393E088C((a1 + 104), v6), *v15 = 1, v5 = sub_239470478(v8, 0, 49, a2, v15), v7 = v5, v5))
  {
    v9 = v7 & 0xFFFFFFFF00000000;
  }

  else
  {
    *(a1 + 696) = 2;
    v12 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "Sent Sigma2 msg", v15, 2u);
    }

    v13 = sub_2393D5398(2u);
    if (v13)
    {
      sub_2393D5320(11, 2, "Sent Sigma2 msg");
    }

    v14 = sub_23948B4CC(v13);
    v5 = os_signpost_enabled(v14);
    if (v5)
    {
      ++dword_27DF77750;
      *v15 = 67109120;
      *&v15[4] = dword_27DF77750;
      _os_signpost_emit_with_name_impl(&dword_238DAE000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Sigma2", "%u", v15, 8u);
    }

    v9 = 0;
    LODWORD(v7) = 0;
  }

  v10 = sub_23948B4CC(v5);
  if (os_signpost_enabled(v10))
  {
    *v15 = 136315394;
    *&v15[4] = "CASESession";
    *&v15[12] = 2080;
    *&v15[14] = "SendSigma2";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", v15, 0x16u);
  }

  return v7 | v9;
}

unint64_t sub_2393E38D8(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  v5 = os_signpost_enabled(v4);
  if (v5)
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    *&buf[12] = 2080;
    *&buf[14] = "PrepareSigma2Resume";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (*(a1 + 128) == 1)
  {
    v5 = sub_2393E1D10(a1 + 32, v6, buf);
    if (buf[0] == 1)
    {
      sub_2393E1D10(a1 + 32, v7, buf);
      *(a2 + 48) = sub_238E0A934(buf, v8)->super.isa;
      v5 = sub_2393F888C((a1 + 612), 0x10uLL);
      v9 = v5;
      if (v5 || (*a2 = a1 + 612, *(a2 + 8) = 16, *buf = a1 + 628, *&buf[8] = 32, v16[0] = a1 + 612, v16[1] = 16, v15[0] = "Sigma2_ResumeNCASE_SigmaS2Sigma2NCASE_Sigma2NSigma3NCASE_Sigma3NN4chip11CASESessionE", v15[1] = 13, v14[0] = "NCASE_SigmaS2Sigma2NCASE_Sigma2NSigma3NCASE_Sigma3NN4chip11CASESessionE", v14[1] = 13, v5 = sub_2393E1DBC(a1, buf, v16, v15, v14, (a2 + 32)), v9 = v5, v5))
      {
        v11 = v9 & 0xFFFFFFFF00000000;
      }

      else
      {
        v5 = sub_2393E1D9C((a1 + 128), v10);
        v11 = 0;
        LODWORD(v9) = 0;
        *(a2 + 56) = v5;
      }

      goto LABEL_11;
    }

    v11 = 0x44700000000;
  }

  else
  {
    v11 = 0x44400000000;
  }

  LODWORD(v9) = 3;
LABEL_11:
  v12 = sub_23948B4CC(v5);
  if (os_signpost_enabled(v12))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    *&buf[12] = 2080;
    *&buf[14] = "PrepareSigma2Resume";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v9 | v11;
}

unint64_t sub_2393E3B24(uint64_t *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  v5 = os_signpost_enabled(v4);
  if (v5)
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    v15 = 2080;
    v16 = "EncodeSigma2Resume";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (*(a2 + 56))
  {
    sub_2393D9C18(0x66uLL, 0x26u, buf);
    v5 = *a1;
    if (*a1)
    {
      sub_2393D96C8(v5);
    }

    v6 = *buf;
    *a1 = *buf;
    if (v6)
    {
      sub_2393C7B90(buf);
      v17[1] = 0;
      v17[2] = 0;
      v17[0] = &unk_284BB83A8;
      v18 = 0;
      sub_238EA16C4(v17, a1, 0);
      sub_2393C7BF0(buf, v17, 0xFFFFFFFF);
      v13 = -1;
      v7 = sub_2393C8CE0(buf, 0x100uLL, 21, &v13);
      if (v7 || (v7 = sub_2393C8364(buf, 1uLL, *a2, *(a2 + 8)), v7) || (sub_238DB6950(v12, *(a2 + 32), *(a2 + 40)), v7 = sub_2393C8364(buf, 2uLL, v12[0], v12[1]), v7) || (v7 = sub_2393C818C(buf, 3uLL, *(a2 + 48)), v7) || (v7 = sub_2393EFE24(4uLL, *(a2 + 56), buf), v7) || (v7 = sub_2393C8DE0(buf, v13), v7) || (v7 = sub_238DD2EFC(buf, a1), v7))
      {
        v8 = v7 & 0xFFFFFFFF00000000;
      }

      else
      {
        v8 = 0;
        LODWORD(v7) = 0;
      }

      v5 = sub_2393B8400(v17);
      v9 = v7;
    }

    else
    {
      v8 = 0x46300000000;
      v9 = 11;
    }
  }

  else
  {
    v8 = 0x45A00000000;
    v9 = 47;
  }

  v10 = sub_23948B4CC(v5);
  if (os_signpost_enabled(v10))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    v15 = 2080;
    v16 = "EncodeSigma2Resume";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v9 | v8;
}

unint64_t sub_2393E3DFC(uint64_t a1, uint64_t *a2)
{
  v4 = *sub_2393E088C((a1 + 104), a2);
  v10 = 1;
  v5 = sub_239470478(v4, 0, 51, a2, &v10);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    *(a1 + 696) = 5;
    v7 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Sent Sigma2Resume msg", v9, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(11, 2, "Sent Sigma2Resume msg");
    }

    LODWORD(v5) = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void sub_2393E3ED8(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = a3;
  v27[2] = *MEMORY[0x277D85DE8];
  v5 = a3 != 0;
  v6 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = *(*sub_2393E088C(a2, v7) + 112);
    *buf = 67109376;
    *&buf[4] = v3;
    LOWORD(v25) = 1024;
    *(&v25 + 2) = v8;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "Sending status report. Protocol code %d, exchange %d", buf, 0xEu);
  }

  if (sub_2393D5398(3u))
  {
    v10 = sub_2393E088C(a2, v9);
    sub_2393D5320(11, 3, "Sending status report. Protocol code %d, exchange %d", v3, *(*v10 + 112));
  }

  sub_23946FC6C(v20, v5, 0, v3);
  v11 = sub_23946FEFC(v20);
  sub_2393D9C18(v11, 0x26u, &v19);
  if (v19)
  {
    v12 = *(v19 + 1);
    v13 = v12 + *(v19 + 3);
    v14 = sub_2393D980C(v19);
    *buf = v13;
    v25 = v14;
    v26 = 0;
    if (!v12)
    {
      v25 = 0;
    }

    v27[0] = v19;
    v19 = 0;
    sub_23946FE8C(v20, buf);
    sub_2393D9FF8(buf, v27, &v18);
    if (v18)
    {
      v16 = *sub_2393E088C(a2, v15);
      *v22 = 0;
      if (sub_239470478(v16, 0, 64, &v18, v22))
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v17 = sub_2393C9138();
          *v22 = 136315138;
          v23 = v17;
          _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Failed to send status report message: %s", v22, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(11, 1, "Failed to send status report message: %s");
        }
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v22 = 0;
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Failed to allocate status report message", v22, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(11, 1, "Failed to allocate status report message");
      }
    }

    if (v18)
    {
      sub_2393D96C8(v18);
    }

    if (v27[0])
    {
      sub_2393D96C8(v27[0]);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Failed to allocate status report message", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(11, 1, "Failed to allocate status report message");
    }
  }

  if (v19)
  {
    sub_2393D96C8(v19);
  }

  if (v21)
  {
    sub_2393D96C8(v21);
  }
}

unint64_t sub_2393E41F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = sub_23948B4CC(a1);
  v6 = os_signpost_enabled(v5);
  v7 = &off_23958D000;
  if (v6)
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    v44 = 2080;
    v45 = "FindLocalNodeFromDestinationId";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v8 = *(a1 + 552);
  if (v8)
  {
    v6 = sub_238DCCCDC(*(a1 + 552), v39);
    if (v40 != v41 && (v41 != 16 || v40 != 16 || v39[0] != v8))
    {
LABEL_14:
      v14 = sub_238DC7C7C(v39, v9);
      v15 = *v14;
      v16 = *(v14 + 8);
      *buf = &unk_284BB9138;
      v6 = sub_2394A8620(*(a1 + 552), *(v14 + 137), buf);
      v11 = v6;
      if (v6)
      {
        v10 = v6 & 0xFFFFFFFF00000000;
        goto LABEL_9;
      }

      v38 = 0x10000;
      v6 = (*(**(a1 + 480) + 192))(*(a1 + 480), *(v14 + 137), v36);
      if (!v6 && HIBYTE(v38) - 1 <= 2)
      {
        v17 = 0;
        v18 = v37;
        while (1)
        {
          __s1 = &v42;
          __n = 32;
          __src = v18;
          __len = 16;
          v30 = &buf[8];
          v31 = 65;
          v6 = sub_2393DDF84(&__src, a3, &v30, v16, v15, &__s1);
          if (!v6 && __n == *(a2 + 8))
          {
            if (!__n)
            {
              break;
            }

            v6 = memcmp(__s1, *a2, __n);
            if (!v6)
            {
              break;
            }
          }

          ++v17;
          v18 += 24;
          if (v17 >= HIBYTE(v38))
          {
            goto LABEL_23;
          }
        }

        v6 = a1 + 520;
        v30 = (a1 + 520);
        v31 = 16;
        v21 = __len;
        if (__len <= 0x10)
        {
          memmove(v6, __src, __len);
          v6 = sub_238DB8498(&v30, v21, v22, v23, v24, v25, v26, v27, v28, v37, &buf[8], a2, v30);
        }

        v10 = 0;
        v11 = 0;
        *(a1 + 560) = *(v14 + 137);
        *(a1 + 576) = v15;
        goto LABEL_9;
      }

LABEL_23:
      v19 = v40;
      while (1)
      {
        if (v19 < v41)
        {
          v40 = ++v19;
        }

        if (v19 == v41)
        {
          break;
        }

        v20 = v39[0] + 152 * v19;
        if (*(v20 + 137) && (*v20 - 1) < 0xFFFFFFEFFFFFFFFFLL)
        {
          if (v41 != 16 || v19 != 16 || v39[0] != v8)
          {
            goto LABEL_14;
          }

          break;
        }
      }
    }

    v10 = 0x3DD00000000;
    v11 = 16;
LABEL_9:
    v7 = &off_23958D000;
    goto LABEL_11;
  }

  v10 = 0x3AD00000000;
  v11 = 3;
LABEL_11:
  v12 = sub_23948B4CC(v6);
  if (os_signpost_enabled(v12))
  {
    *buf = *(v7 + 285);
    *&buf[4] = "CASESession";
    v44 = 2080;
    v45 = "FindLocalNodeFromDestinationId";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v11 | v10;
}

unint64_t sub_2393E45C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  v20[0] = a3;
  v20[1] = a4;
  v19[0] = a5;
  v19[1] = a6;
  v8 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    v22 = 2080;
    v23 = "TryResumeSession";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v9 = *(a1 + 536);
  if (!v9)
  {
    v10 = 0x3E400000000;
LABEL_11:
    v11 = 3;
    goto LABEL_12;
  }

  if (!*(a1 + 552))
  {
    v10 = 0x3E500000000;
    goto LABEL_11;
  }

  *buf = 0;
  buf[8] = 0;
  v9 = (*(*v9 + 24))(v9, a2, buf, a1 + 400, a1 + 584);
  if (v9 || (v18[0] = a2, v18[1] = 16, v17[0] = "Sigma1_ResumeNCASE_SigmaS1Sigma2_ResumeNCASE_SigmaS2Sigma2NCASE_Sigma2NSigma3NCASE_Sigma3NN4chip11CASESessionE", v17[1] = 13, v16[0] = "NCASE_SigmaS1Sigma2_ResumeNCASE_SigmaS2Sigma2NCASE_Sigma2NSigma3NCASE_Sigma3NN4chip11CASESessionE", v16[1] = 13, v9 = sub_2393E4824(a1, v20, v19, v18, v17, v16), v9))
  {
    v10 = v9 & 0xFFFFFFFF00000000;
  }

  else
  {
    v14 = sub_2394A7FC0(*(a1 + 552), buf[8]);
    if (v14)
    {
      v15 = v14;
      v10 = 0;
      v9 = 0;
      *(a1 + 560) = buf[8];
      *(a1 + 568) = *buf;
      *(a1 + 576) = *v15;
    }

    else
    {
      v10 = 0x3F000000000;
      v9 = 3;
    }
  }

  v11 = v9;
LABEL_12:
  v12 = sub_23948B4CC(v9);
  if (os_signpost_enabled(v12))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    v22 = 2080;
    v23 = "TryResumeSession";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v11 | v10;
}

unint64_t sub_2393E4824(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (a2[1] != 16)
  {
    return 0x8B900000019;
  }

  v8 = *(*(a1 + 544) + 40);
  v15[0] = 0;
  v15[1] = 0;
  v14 = v8;
  v9 = sub_2393E87C0(a1, a3, a4, a5, a5, &v14);
  v10 = v9;
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFF00000000;
  }

  else
  {
    v13 = sub_2393F7C50(0, 0, 0, 0, *a2, a2[1], v15, *a6, a6[1], 0);
    if (v13)
    {
      v10 = v13;
    }

    else
    {
      v10 = 0;
    }

    if (v13)
    {
      v11 = v13 & 0xFFFFFFFF00000000;
    }

    else
    {
      v11 = 0;
    }
  }

  (*(*v14 + 40))(v14, v15);
  sub_2393F9144(v15, 16);
  return v11 | v10;
}

unint64_t sub_2393E4964(uint64_t a1, uint64_t a2)
{
  v11 = 21;
  v4 = sub_2393C7114(a1, 21, 256);
  if (!v4)
  {
    v4 = sub_2393C6A2C(a1, &v11);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C6FD0(a1, 1);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C76AC(a1, a2);
    if (v4)
    {
      goto LABEL_6;
    }

    if (*(a2 + 8) != 32)
    {
      LODWORD(v4) = 84;
      v5 = 0x94300000000;
      return v5 | v4;
    }

    v4 = sub_2393C6FD0(a1, 2);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C5F70(a1, (a2 + 16));
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C6FD0(a1, 3);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C76AC(a1, (a2 + 24));
    if (v4)
    {
      goto LABEL_6;
    }

    if (*(a2 + 32) != 32)
    {
      LODWORD(v4) = 84;
      v5 = 0x94A00000000;
      return v5 | v4;
    }

    v4 = sub_2393C6FD0(a1, 4);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C76AC(a1, (a2 + 80));
    if (v4)
    {
      goto LABEL_6;
    }

    if (*(a2 + 88) != 65)
    {
      LODWORD(v4) = 84;
      v5 = 0x94E00000000;
      return v5 | v4;
    }

    v4 = sub_2393C6B34(a1);
    if (v4)
    {
LABEL_18:
      v7 = 0;
      v8 = 0;
      goto LABEL_19;
    }

    v10 = *(a1 + 16);
    if (v10 == 5)
    {
      v4 = sub_2393EFF04(5, a1, a2 + 100);
      if (v4)
      {
        goto LABEL_6;
      }

      *(a2 + 96) = 1;
      v4 = sub_2393C6B34(a1);
      if (v4)
      {
        goto LABEL_18;
      }

      v10 = *(a1 + 16);
    }

    v7 = v10 == 6;
    if (v10 == 6)
    {
      v4 = sub_2393C76AC(a1, (a2 + 48));
      if (v4)
      {
        goto LABEL_6;
      }

      if (*(a2 + 56) != 16)
      {
        LODWORD(v4) = 84;
        v5 = 0x96300000000;
        return v5 | v4;
      }

      v4 = sub_2393C6B34(a1);
      if (v4)
      {
        v8 = 0;
        v7 = 1;
        goto LABEL_19;
      }

      v10 = *(a1 + 16);
    }

    if (v10 != 7)
    {
      v8 = 0;
      goto LABEL_21;
    }

    v4 = sub_2393C76AC(a1, (a2 + 64));
    if (v4)
    {
LABEL_6:
      v5 = v4 & 0xFFFFFFFF00000000;
      return v5 | v4;
    }

    if (*(a2 + 72) != 16)
    {
      LODWORD(v4) = 84;
      v5 = 0x96C00000000;
      return v5 | v4;
    }

    v4 = sub_2393C6B34(a1);
    v8 = 1;
LABEL_19:
    if (v4 == 33 || !v4)
    {
LABEL_21:
      v4 = sub_2393C6A98(a1, v11);
      if (!v4)
      {
        if (v8 & v7)
        {
          v9 = 1;
        }

        else
        {
          if ((v8 | v7))
          {
            LODWORD(v4) = 43;
            v5 = 0x98300000000;
            return v5 | v4;
          }

          v9 = 0;
        }

        v5 = 0;
        LODWORD(v4) = 0;
        *(a2 + 40) = v9;
        return v5 | v4;
      }

      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v5 = v4 & 0xFFFFFFFF00000000;
  return v5 | v4;
}

unint64_t sub_2393E4BE0(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  bzero(*a5, *(a5 + 8));
  v10 = *(a5 + 8);
  v18 = *a5;
  v19 = v10;
  v20 = 0;
  if (!v18)
  {
    v19 = 0;
  }

  sub_2393D5CDC(&v18, *a4, *(a4 + 8));
  sub_2393D5CDC(&v18, *a2, 0x20uLL);
  sub_2393D5CDC(&v18, (a3 + 8), 0x41uLL);
  v16 = &v21;
  v17 = 32;
  v11 = sub_2393F80A0((a1 + 192), &v16);
  if (v11)
  {
    v12 = v11 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_2393D5CDC(&v18, v16, v17);
    if (v19 >= v20)
    {
      v13 = sub_2393E8774(a5, 0, v20);
      LODWORD(v11) = 0;
      v12 = 0;
      *a5 = v13;
      *(a5 + 8) = v14;
    }

    else
    {
      v12 = 0x87E00000000;
      LODWORD(v11) = 25;
    }
  }

  return v12 | v11;
}

unint64_t sub_2393E4D5C(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2393C7B90(v23);
  HIDWORD(v22) = -1;
  sub_2393C7BB8(v23, *a6, *(a6 + 8));
  v11 = sub_2393C8CE0(v23, 0x100uLL, 21, &v22 + 1);
  if (v11 || (v11 = sub_2393C8364(v23, 1uLL, *a2, *(a2 + 8)), v11) || (v14 = a3[1]) != 0 && (v11 = sub_2393C8364(v23, 2uLL, *a3, v14), v11) || (v11 = sub_2393C8364(v23, 3uLL, *a4, *(a4 + 8)), v11) || (v11 = sub_2393C8364(v23, 4uLL, *a5, *(a5 + 8)), v11) || (v11 = sub_2393C8DE0(v23, SHIDWORD(v22)), v11) || (v11 = sub_2393C7CB8(v23), v11))
  {
    v12 = v11 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_238DB8498(a6, v25, v15, v16, v17, v18, v19, v20, v21, v22, v23[0], v23[1], v24);
    LODWORD(v11) = 0;
    v12 = 0;
  }

  return v12 | v11;
}

unint64_t sub_2393E4E74(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    *v55 = "CASESession";
    *&v55[8] = 2080;
    *&v55[10] = "HandleSigma2Resume";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v5 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Received Sigma2Resume msg", buf, 2u);
  }

  v6 = sub_2393D5398(3u);
  if (v6)
  {
    sub_2393D5320(11, 3, "Received Sigma2Resume msg");
  }

  v7 = sub_23948B4CC(v6);
  if (os_signpost_enabled(v7))
  {
    ++dword_27DF77754;
    *buf = 67109120;
    *v55 = dword_27DF77754;
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Sigma2Resume", "%u", buf, 8u);
  }

  *buf = 1;
  *&v55[4] = "core_dev_case_session_sigma1";
  *&v55[12] = 0;
  v55[16] = 3;
  sub_23948BD20(buf);
  sub_2393C5AAC(buf);
  v56 = 0;
  sub_238DD2F90(buf, a2);
  v37 = 0u;
  v38 = 0u;
  v39 = sub_239476060();
  v40 = v8;
  v41 = 0;
  v43 = 0;
  v45 = 0;
  v47 = 1;
  v49 = 0;
  v9 = sub_2393E5594(buf, &v37);
  if (v9 || (*&v50 = a1 + 628, *(&v50 + 1) = 32, v36[0] = "Sigma2_ResumeNCASE_SigmaS2Sigma2NCASE_Sigma2NSigma3NCASE_Sigma3NN4chip11CASESessionE", v36[1] = 13, v35[0] = "NCASE_SigmaS2Sigma2NCASE_Sigma2NSigma3NCASE_Sigma3NN4chip11CASESessionE", v35[1] = 13, v9 = sub_2393E4824(a1, &v38, &v50, &v37, v36, v35), v9))
  {
    sub_2393E3ED8(a1 + 32, (a1 + 104), 2);
  }

  else
  {
    if (v49 == 1)
    {
      *(a1 + 144) = v39;
      *(a1 + 152) = v40;
      v14 = v41;
      *(a1 + 156) = v41;
      if (v14 == 1)
      {
        *(a1 + 158) = v42;
      }

      v15 = v43;
      *(a1 + 160) = v43;
      if (v15 == 1)
      {
        *(a1 + 162) = v44;
      }

      v16 = v45;
      *(a1 + 164) = v45;
      if (v16 == 1)
      {
        *(a1 + 168) = v46;
      }

      *(a1 + 172) = v47;
      v17 = sub_2393E088C((a1 + 104), v10);
      sub_238EA6DC0(*v17, &v50, v18);
      v19 = sub_2394953AC(v50);
      v20 = *(a1 + 144);
      *(v19 + 120) = *(a1 + 152);
      *(v19 + 112) = v20;
      LODWORD(v20) = *(a1 + 156);
      *(v19 + 124) = v20;
      if (v20 == 1)
      {
        *(v19 + 126) = *(a1 + 158);
      }

      v21 = *(a1 + 160);
      *(v19 + 128) = v21;
      if (v21 == 1)
      {
        *(v19 + 130) = *(a1 + 162);
      }

      v22 = *(a1 + 164);
      *(v19 + 132) = v22;
      if (v22 == 1)
      {
        *(v19 + 136) = *(a1 + 168);
      }

      *(v19 + 140) = *(a1 + 172);
      (*(*v50 + 32))(v50);
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v23 = (*(*a1 + 48))(a1) >> 32;
      v24 = (*(*a1 + 48))(a1);
      (*(*a1 + 48))(a1);
      *&v50 = __PAIR64__(v23, 67109888);
      WORD4(v50) = 1024;
      *(&v50 + 10) = v24;
      HIWORD(v50) = 1024;
      v51 = v25;
      v52 = 1024;
      v53 = v48;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Peer <%08X%08X, %d> assigned session ID %d", &v50, 0x1Au);
    }

    if (sub_2393D5398(3u))
    {
      v26 = (*(*a1 + 48))(a1) >> 32;
      v27 = (*(*a1 + 48))(a1);
      (*(*a1 + 48))(a1);
      sub_2393D5320(11, 3, "Peer <%08X%08X, %d> assigned session ID %d", v26, v27, v28, v48);
    }

    v29 = v48;
    *(a1 + 176) = 1;
    *(a1 + 178) = v29;
    v30 = *(a1 + 536);
    if (v30)
    {
      *&v50 = (*(*a1 + 48))(a1);
      BYTE8(v50) = v31;
      sub_2393E99A4(v36, v37);
      if ((*(*v30 + 32))(v30, &v50, v36[0], a1 + 400, a1 + 584))
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v32 = sub_2393C9138();
          LODWORD(v50) = 136315138;
          *(&v50 + 4) = v32;
          _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Unable to save session resumption state: %s", &v50, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          v33 = sub_2393C9138();
          sub_2393D5320(11, 1, "Unable to save session resumption state: %s", v33);
        }
      }
    }

    LODWORD(v50) = 2;
    *(&v50 + 1) = "core_dev_case_session_sigma_finished";
    LOBYTE(v52) = 0;
    sub_23948BD20(&v50);
    sub_2393E3ED8(a1 + 32, (a1 + 104), 0);
    *(a1 + 696) = 7;
    sub_2393EF9A4(a1 + 32, v34);
  }

  v11 = v56;
  if (v56)
  {
    sub_2393D96C8(v56);
  }

  v12 = sub_23948B4CC(v11);
  if (os_signpost_enabled(v12))
  {
    *buf = 136315394;
    *v55 = "CASESession";
    *&v55[8] = 2080;
    *&v55[10] = "HandleSigma2Resume";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v9;
}

unint64_t sub_2393E5594(uint64_t a1, uint64_t a2)
{
  v7 = 21;
  v4 = sub_2393C7114(a1, 21, 256);
  if (!v4)
  {
    v4 = sub_2393C6A2C(a1, &v7);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C6FD0(a1, 1);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C76AC(a1, a2);
    if (v4)
    {
      goto LABEL_6;
    }

    if (*(a2 + 8) != 16)
    {
      LODWORD(v4) = 84;
      v5 = 0x57E00000000;
      return v5 | v4;
    }

    v4 = sub_2393C6FD0(a1, 2);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C76AC(a1, (a2 + 16));
    if (v4)
    {
      goto LABEL_6;
    }

    if (*(a2 + 24) != 16)
    {
      LODWORD(v4) = 84;
      v5 = 0x58300000000;
      return v5 | v4;
    }

    v4 = sub_2393C6FD0(a1, 3);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C5F70(a1, (a2 + 64));
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C6B34(a1);
    if (v4)
    {
      goto LABEL_15;
    }

    if (*(a1 + 16) == 4)
    {
      v4 = sub_2393EFF04(4, a1, a2 + 32);
      if (v4)
      {
LABEL_6:
        v5 = v4 & 0xFFFFFFFF00000000;
        return v5 | v4;
      }

      *(a2 + 66) = 1;
      v4 = sub_2393C6B34(a1);
      if (v4)
      {
LABEL_15:
        if (v4 != 33)
        {
          goto LABEL_6;
        }
      }
    }

    v4 = sub_2393C6A98(a1, v7);
    if (!v4)
    {
      v5 = 0;
      return v5 | v4;
    }

    goto LABEL_6;
  }

  v5 = v4 & 0xFFFFFFFF00000000;
  return v5 | v4;
}

unint64_t sub_2393E5700(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v4))
  {
    v10 = 136315394;
    *v11 = "CASESession";
    *&v11[8] = 2080;
    *&v11[10] = "HandleSigma2_and_SendSigma3";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v10, 0x16u);
  }

  v5 = sub_2393E5904(a1, a2);
  v10 = 1;
  *&v11[4] = "core_dev_case_session_sigma1";
  *&v11[12] = v5;
  v11[16] = 3;
  sub_23948BD20(&v10);
  if (!v5)
  {
    v10 = 0;
    *&v11[4] = "core_dev_case_session_sigma3";
    v11[16] = 0;
    sub_23948BD20(&v10);
    sub_2393E62B4(a1);
  }

  sub_2393E3ED8(a1 + 32, (a1 + 104), 2);
  *(a1 + 696) = 0;
  v7 = sub_23948B4CC(v6);
  if (os_signpost_enabled(v7))
  {
    v10 = 136315394;
    *v11 = "CASESession";
    *&v11[8] = 2080;
    *&v11[10] = "HandleSigma2_and_SendSigma3";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v10, 0x16u);
  }

  return v5;
}

unint64_t sub_2393E5904(uint64_t a1, void *a2)
{
  v78[2] = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    *&buf[12] = 2080;
    *&buf[14] = "HandleSigma2";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v5 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Received Sigma2 msg", buf, 2u);
  }

  v6 = sub_2393D5398(2u);
  if (v6)
  {
    sub_2393D5320(11, 2, "Received Sigma2 msg");
  }

  if (!*(a1 + 392))
  {
    v17 = 0x5B800000000;
    v18 = 172;
    goto LABEL_25;
  }

  v7 = *(*a2 + 8);
  if (!v7)
  {
    v17 = 0x5BC00000000;
    v18 = 13;
    goto LABEL_25;
  }

  v6 = *(a1 + 552);
  if (!v6)
  {
    v17 = 0x5C000000000;
    v18 = 3;
    goto LABEL_25;
  }

  v8 = *(*a2 + 24);
  v6 = sub_2394A7FC0(v6, *(a1 + 560));
  if (!v6)
  {
    v17 = 0x5C200000000;
    v18 = 3;
    goto LABEL_25;
  }

  v9 = *(v6 + 8);
  sub_2393C5AAC(v65);
  v66 = 0;
  sub_238DD2F90(v65, a2);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v54 = sub_239476060();
  v55 = v10;
  v56 = 0;
  v58 = 0;
  v60 = 0;
  v62 = 1;
  v64 = 0;
  v11 = sub_2393E6778(v65, &v48);
  if (!v11)
  {
    v12 = v49;
    *(a1 + 320) = *v49;
    v14 = *(v12 + 32);
    v13 = *(v12 + 48);
    v15 = *(v12 + 16);
    *(a1 + 384) = *(v12 + 64);
    *(a1 + 352) = v14;
    *(a1 + 368) = v13;
    *(a1 + 336) = v15;
    v11 = (*(**(a1 + 392) + 32))(*(a1 + 392), a1 + 312, a1 + 400);
    if (!v11)
    {
      v21 = *(*(a1 + 544) + 40);
      v78[0] = 0;
      v78[1] = 0;
      v77 = v21;
      v72 = buf;
      v73 = 145;
      v47[0] = a1 + 520;
      v47[1] = 16;
      v11 = sub_2393E4BE0(a1, &v48, a1 + 312, v47, &v72);
      if (v11 || (sub_238DB6950(v47, v72, v73), *v67 = "Sigma2NCASE_Sigma2NSigma3NCASE_Sigma3NN4chip11CASESessionE", v68 = 6, v11 = (*(**(*(a1 + 544) + 40) + 56))(*(*(a1 + 544) + 40), a1 + 400, v47, v67, v78), v11) || (sub_238DB6950(buf, v7, v8), v11 = sub_2393F7FF0((a1 + 192), *buf, *&buf[8]), v11))
      {
        v16 = v11;
LABEL_32:
        (*(*v77 + 40))(v77, v78);
        sub_2393F9144(v78, 16);
        goto LABEL_14;
      }

      v22 = sub_2393F7C50(v52, *(&v52 + 1), 0, 0, v53, *(&v53 + 1), v78, "NCASE_Sigma2NSigma3NCASE_Sigma3NN4chip11CASESessionE", 13, v52);
      v11 = v22;
      if (v22)
      {
        v16 = v22;
        goto LABEL_32;
      }

      v51 = v50;
      v50 = 0uLL;
      v23 = *(&v52 + 1);
      sub_2393C5AAC(v47);
      sub_2393C5ADC(v47, v51, v23);
      v76[8] = 0;
      memset(buf, 0, sizeof(buf));
      __src = 0u;
      v24 = sub_2393E699C(v47, buf);
      v11 = v24;
      if (v24)
      {
        v16 = v24;
      }

      else
      {
        v72 = &unk_284BB9138;
        *v67 = 0;
        v46[0] = 0;
        v45[0] = 0;
        v25 = sub_2393E6B40(a1);
        v11 = v25;
        if (v25)
        {
          v16 = v25;
        }

        else
        {
          v26 = sub_2394A79FC(*(a1 + 552), *(a1 + 560), *buf, *&buf[8], *&buf[16], *&buf[24], a1 + 440, v46, v45, v67, &v72, 0);
          v11 = v26;
          if (v26)
          {
            v16 = v26;
          }

          else
          {
            if (v9 == v45[0])
            {
              if (*(a1 + 568) == *v67)
              {
                v27 = *&buf[8] + *&buf[24];
                v44 = sub_2393D52C4(*&buf[8] + *&buf[24] + 148);
                if (v44)
                {
                  sub_238DB9BD8(v46, v44, v27 + 148);
                  sub_238DB6950(v67, a1 + 320, 65);
                  v28 = (*(**(a1 + 392) + 40))(*(a1 + 392));
                  (*(**(a1 + 392) + 40))(*(a1 + 392));
                  v29 = sub_238DB6950(v45, v28 + 8, 65);
                  v11 = sub_2393E4D5C(v29, buf, &buf[16], v67, v45, v46);
                  if (!v11)
                  {
                    v11 = sub_2393F8AC4(&v72, v46[0], v46[1], v76);
                    if (!v11)
                    {
                      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
                      {
                        v30 = (*(*a1 + 48))(a1) >> 32;
                        v31 = (*(*a1 + 48))(a1);
                        (*(*a1 + 48))(a1);
                        *v67 = 67109888;
                        *&v67[4] = v30;
                        LOWORD(v68) = 1024;
                        *(&v68 + 2) = v31;
                        HIWORD(v68) = 1024;
                        v69 = v32;
                        v70 = 1024;
                        v71 = v63;
                        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Peer <%08X%08X, %d> assigned session ID %d", v67, 0x1Au);
                      }

                      if (sub_2393D5398(3u))
                      {
                        v33 = (*(*a1 + 48))(a1) >> 32;
                        v34 = (*(*a1 + 48))(a1);
                        (*(*a1 + 48))(a1);
                        sub_2393D5320(11, 3, "Peer <%08X%08X, %d> assigned session ID %d", v33, v34, v35, v63);
                      }

                      v36 = v63;
                      *(a1 + 176) = 1;
                      *(a1 + 178) = v36;
                      if (*(&__src + 1))
                      {
                        memmove((a1 + 612), __src, *(&__src + 1));
                      }

                      v11 = sub_2394A052C(buf, a1 + 584);
                      if (!v11)
                      {
                        if (v64 == 1)
                        {
                          *(a1 + 144) = v54;
                          *(a1 + 152) = v55;
                          v38 = v56;
                          *(a1 + 156) = v56;
                          if (v38 == 1)
                          {
                            *(a1 + 158) = v57;
                          }

                          v39 = v58;
                          *(a1 + 160) = v58;
                          if (v39 == 1)
                          {
                            *(a1 + 162) = v59;
                          }

                          v40 = v60;
                          *(a1 + 164) = v60;
                          if (v40 == 1)
                          {
                            *(a1 + 168) = v61;
                          }

                          *(a1 + 172) = v62;
                          v41 = sub_2393E088C((a1 + 104), v37);
                          sub_238EA6DC0(*v41, v67, v42);
                          v43 = sub_2394953AC(*v67);
                          sub_2393E96A8(v43 + 112, (a1 + 144));
                          (*(**v67 + 32))(*v67);
                        }

                        v11 = 0;
                      }
                    }
                  }

                  j__free(v44);
                  v16 = v11;
                }

                else
                {
                  v11 = 0x60400000000;
                  v16 = 11;
                }

                goto LABEL_57;
              }

              v11 = 0x5F900000000;
            }

            else
            {
              v11 = 0x5F600000000;
            }

            v16 = 84;
          }
        }
      }

LABEL_57:
      sub_2393F9144(v76, 64);
      goto LABEL_32;
    }
  }

  v16 = v11;
LABEL_14:
  if (v51)
  {
    j__free(v51);
    *&v51 = 0;
  }

  if (v50)
  {
    j__free(v50);
  }

  v17 = v11 & 0xFFFFFFFF00000000;
  v6 = v66;
  if (v66)
  {
    sub_2393D96C8(v66);
  }

  v18 = v16;
LABEL_25:
  v19 = sub_23948B4CC(v6);
  if (os_signpost_enabled(v19))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    *&buf[12] = 2080;
    *&buf[14] = "HandleSigma2";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v18 | v17;
}

void sub_2393E62B4(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v2))
  {
    buf[0] = 136315394;
    *&buf[1] = "CASESession";
    v5 = 2080;
    v6 = "SendSigma3";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v3 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "Sending Sigma3", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(11, 3, "Sending Sigma3");
  }

  sub_2393E6D80(a1, sub_2393E6E58, sub_2393E7048, 0);
}

unint64_t sub_2393E6778(uint64_t a1, uint64_t a2)
{
  v12 = 21;
  v4 = sub_2393C7114(a1, 21, 256);
  if (!v4)
  {
    v4 = sub_2393C6A2C(a1, &v12);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C6FD0(a1, 1);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C76AC(a1, a2);
    if (v4)
    {
      goto LABEL_6;
    }

    if (*(a2 + 8) != 32)
    {
      LODWORD(v4) = 84;
      v5 = 0x62C00000000;
      return v5 | v4;
    }

    v4 = sub_2393C6FD0(a1, 2);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C5F70(a1, (a2 + 128));
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C6FD0(a1, 3);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C76AC(a1, (a2 + 16));
    if (v4)
    {
      goto LABEL_6;
    }

    if (*(a2 + 24) != 65)
    {
      LODWORD(v4) = 84;
      v5 = 0x63500000000;
      return v5 | v4;
    }

    v4 = sub_2393C6FD0(a1, 4);
    if (v4)
    {
      goto LABEL_6;
    }

    v7 = sub_2393C5CB8(a1);
    if (v7 > 0x406)
    {
      LODWORD(v4) = 35;
      v5 = 0x64400000000;
      return v5 | v4;
    }

    v8 = v7;
    if (v7 < 0x11)
    {
      LODWORD(v4) = 35;
      v5 = 0x64500000000;
      return v5 | v4;
    }

    sub_2393C56C0((a2 + 32), v7);
    v9 = *(a2 + 32);
    if (!v9)
    {
      LODWORD(v4) = 11;
      v5 = 0x64600000000;
      return v5 | v4;
    }

    *(a2 + 40) = v8;
    v4 = sub_2393C6430(a1, v9, v8);
    if (v4)
    {
      goto LABEL_6;
    }

    v10 = v8 - 16;
    sub_238DB9BD8(&v11, *(a2 + 32), v10);
    *(a2 + 64) = v11;
    sub_238DB6950(&v11, *(a2 + 32) + v10, 16);
    *(a2 + 80) = v11;
    v4 = sub_2393C6B34(a1);
    if (v4)
    {
      goto LABEL_24;
    }

    if (*(a1 + 16) == 5)
    {
      v4 = sub_2393EFF04(5, a1, a2 + 96);
      if (v4)
      {
LABEL_6:
        v5 = v4 & 0xFFFFFFFF00000000;
        return v5 | v4;
      }

      *(a2 + 130) = 1;
      v4 = sub_2393C6B34(a1);
      if (v4)
      {
LABEL_24:
        if (v4 != 33)
        {
          goto LABEL_6;
        }
      }
    }

    v4 = sub_2393C6A98(a1, v12);
    if (!v4)
    {
      v5 = 0;
      return v5 | v4;
    }

    goto LABEL_6;
  }

  v5 = v4 & 0xFFFFFFFF00000000;
  return v5 | v4;
}

unint64_t sub_2393E699C(uint64_t a1, uint64_t a2)
{
  v8 = 21;
  v4 = sub_2393C7114(a1, 21, 256);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393C6A2C(a1, &v8);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393C6FD0(a1, 1);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393C76AC(a1, a2);
  if (v4)
  {
    goto LABEL_5;
  }

  if (*(a2 + 8) > 0x190uLL)
  {
    v5 = 0x66E00000000;
    goto LABEL_23;
  }

  v4 = sub_2393C6B34(a1);
  if (v4)
  {
    goto LABEL_5;
  }

  v7 = *(a1 + 16);
  if (v7 == 2)
  {
    v4 = sub_2393C76AC(a1, (a2 + 16));
    if (v4)
    {
      goto LABEL_5;
    }

    if (*(a2 + 24) <= 0x190uLL)
    {
      v4 = sub_2393C7114(a1, 16, 3);
      if (v4)
      {
        goto LABEL_5;
      }

      v7 = *(a1 + 16);
      goto LABEL_14;
    }

    v5 = 0x67400000000;
LABEL_23:
    LODWORD(v4) = 84;
    return v4 | v5;
  }

LABEL_14:
  if (v7 != 3)
  {
    v5 = 0x67900000000;
    LODWORD(v4) = 36;
    return v4 | v5;
  }

  if (sub_2393C5CB8(a1) != 64)
  {
    v5 = 0x67C00000000;
    LODWORD(v4) = 35;
    return v4 | v5;
  }

  *(a2 + 112) = 64;
  v4 = sub_2393C6430(a1, (a2 + 48), 0x40uLL);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393C6FD0(a1, 4);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393C76AC(a1, (a2 + 32));
  if (v4)
  {
    goto LABEL_5;
  }

  if (*(a2 + 40) != 16)
  {
    v5 = 0x68500000000;
    goto LABEL_23;
  }

  v4 = sub_2393C6A98(a1, v8);
  if (!v4)
  {
    v5 = 0;
    LODWORD(v4) = 0;
    return v4 | v5;
  }

LABEL_5:
  v5 = v4 & 0xFFFFFFFF00000000;
  return v4 | v5;
}

uint64_t sub_2393E6B40(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ((*(*off_27DF765E8 + 6))(off_27DF765E8, &v11))
  {
    v2 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = sub_2393C9138();
      *buf = 136315138;
      v13 = v3;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "The device does not support GetClock_RealTimeMS() API: %s.  Falling back to Last Known Good UTC Time", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v5 = sub_2393C9138();
      sub_2393D5320(11, 1, "The device does not support GetClock_RealTimeMS() API: %s.  Falling back to Last Known Good UTC Time", v5);
    }

    v6 = *(a1 + 552);
    if (v6)
    {
      if (*(v6 + 2632))
      {
        v7 = sub_2393BE2E0((v6 + 2632), v4);
        v8 = 0;
        v9 = 0;
        *(a1 + 448) = *v7;
        *(a1 + 440) = 1;
      }

      else
      {
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "Failed to retrieve Last Known Good UTC Time", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(11, 1, "Failed to retrieve Last Known Good UTC Time");
        }

        v8 = 0;
        v9 = 0;
      }
    }

    else
    {
      v8 = 0x8EF00000000;
      v9 = 3;
    }
  }

  else
  {
    *buf = 0;
    if (sub_2393D8A84(v11 / 0x3E8, buf))
    {
      v8 = 0;
      v9 = 0;
      *(a1 + 448) = *buf;
      *(a1 + 440) = 0;
    }

    else
    {
      v8 = 0x5A00000000;
      v9 = 134;
    }
  }

  return v9 | v8;
}

void sub_2393E6D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2393D52C4(0x110uLL);
  if (v9)
  {
    *v9 = 0u;
    v9[1] = 0u;
    *(v9 + 4) = a1;
    *(v9 + 5) = a2;
    *(v9 + 6) = a3;
    *(v9 + 7) = a4;
    *(v9 + 80) = 0;
    *(v9 + 33) = 0;
    v9[7] = 0u;
    v9[8] = 0u;
    *(v9 + 152) = 0u;
    *(v9 + 168) = 0u;
    *(v9 + 184) = 0u;
  }

  operator new();
}

unint64_t sub_2393E6E58(unsigned __int8 *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *a1;
    sub_238DB6950(v16, *(a1 + 4), *(a1 + 5));
    v4 = (*(*v2 + 96))(v2, v3, v16, a1 + 112);
    if (v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    v6 = *a1;
    sub_238DB6950(v16, *(a1 + 4), *(a1 + 5));
    v4 = sub_2394AB310(v5, v6, v16[0], v16[1], (a1 + 112));
    if (v4)
    {
      goto LABEL_8;
    }
  }

  v7 = *(a1 + 13) + *(a1 + 10) + *(a1 + 22);
  *(a1 + 7) = v7 + 14;
  sub_2393C56C0(a1 + 6, v7 + 30);
  if (!*(a1 + 6))
  {
    v8 = 0x6F400000000;
    LODWORD(v4) = 11;
    return v8 | v4;
  }

  sub_2393C7B90(v16);
  v15 = -1;
  sub_2393C7BB8(v16, *(a1 + 6), *(a1 + 7));
  v4 = sub_2393C8CE0(v16, 0x100uLL, 21, &v15);
  if (!v4)
  {
    sub_238DB6950(&v13, *(a1 + 12), *(a1 + 13));
    v4 = sub_2393C8364(v16, 1uLL, v13, v14);
    if (!v4)
    {
      v10 = *(a1 + 10);
      if (!v10 || (sub_238DB6950(&v13, *(a1 + 9), v10), v4 = sub_2393C8364(v16, 2uLL, v13, v14), !v4))
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          j__free(v11);
          *(a1 + 8) = 0;
        }

        *(a1 + 9) = 0;
        *(a1 + 10) = 0;
        v12 = *(a1 + 11);
        if (v12)
        {
          j__free(v12);
          *(a1 + 11) = 0;
        }

        *(a1 + 12) = 0;
        *(a1 + 13) = 0;
        v4 = sub_2393C83AC(v16, 3uLL, a1 + 112, *(a1 + 44));
        if (!v4)
        {
          v4 = sub_2393C8DE0(v16, v15);
          if (!v4)
          {
            v4 = sub_2393C7CB8(v16);
            if (!v4)
            {
              LODWORD(v4) = 0;
              v8 = 0;
              *(a1 + 7) = v17;
              return v8 | v4;
            }
          }
        }
      }
    }
  }

LABEL_8:
  v8 = v4 & 0xFFFFFFFF00000000;
  return v8 | v4;
}

unint64_t sub_2393E7048(uint64_t a1, void *a2, unint64_t a3, const char *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v7 = *(*(a1 + 544) + 40);
  v31[0] = 0;
  v31[1] = 0;
  v30 = v7;
  if (a2[2] && *(a1 + 696) != 8)
  {
    sub_23953124C();
  }

  if (a3)
  {
    v8 = a3;
    v9 = HIDWORD(a3);
    goto LABEL_8;
  }

  *buf = &v32;
  v24 = 48;
  v28[0] = a1 + 520;
  v28[1] = 16;
  v10 = sub_2393E7668(a1, v28, buf);
  if (v10)
  {
    goto LABEL_7;
  }

  sub_238DB6950(v28, *buf, v24);
  v27[0] = "Sigma3NCASE_Sigma3NN4chip11CASESessionE";
  v27[1] = 6;
  v10 = (*(**(*(a1 + 544) + 40) + 56))(*(*(a1 + 544) + 40), a1 + 400, v28, v27, v31);
  if (v10)
  {
    goto LABEL_7;
  }

  v15 = sub_2393F7A34(a2[6], a2[7], 0, 0, v31, "NCASE_Sigma3NN4chip11CASESessionE", 0xDuLL, a2[6], (a2[6] + a2[7]), 16);
  v8 = v15;
  if (v15)
  {
    a4 = v16;
    v9 = HIDWORD(v15);
  }

  else
  {
    sub_2393D9C18(a2[7] + 26, 0x26u, buf);
    v29 = *buf;
    if (*buf)
    {
      sub_2393C7B90(buf);
      v25[1] = 0;
      v25[2] = 0;
      v25[0] = &unk_284BB83A8;
      v26 = 0;
      LODWORD(v28[0]) = -1;
      sub_238EA16C4(v25, &v29, 0);
      sub_2393C7BF0(buf, v25, 0xFFFFFFFF);
      v18 = sub_2393C8CE0(buf, 0x100uLL, 21, v28);
      if (v18 || (v18 = sub_2393C83AC(buf, 1uLL, a2[6], (*(a2 + 14) + 16)), v18) || (v18 = sub_2393C8DE0(buf, v28[0]), v18) || (v18 = sub_238DD2EFC(buf, &v29), v18))
      {
        a4 = v17;
        v9 = HIDWORD(v18);
        sub_2393B8400(v25);
        v8 = v18;
      }

      else
      {
        sub_2393B8400(v25);
        sub_238DB6950(buf, *(v29 + 1), *(v29 + 3));
        v10 = sub_2393F7FF0((a1 + 192), *buf, v24);
        if (v10 || (v19 = *sub_2393E088C((a1 + 104), v11), *buf = 1, v10 = sub_239470478(v19, 0, 50, &v29, buf), v10))
        {
LABEL_7:
          a4 = v11;
          v9 = HIDWORD(v10);
          v8 = v10;
          goto LABEL_8;
        }

        v20 = sub_2393D9044(0xBu);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_DEFAULT, "Sent Sigma3 msg", buf, 2u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(11, 2, "Sent Sigma3 msg");
        }

        *buf = a1 + 488;
        v24 = 32;
        v21 = sub_2393F817C((a1 + 192), buf);
        a4 = v22;
        v9 = HIDWORD(v21);
        v8 = v21;
        if (!v21)
        {
          *(a1 + 696) = 3;
        }
      }
    }

    else
    {
      v8 = 11;
      v9 = 1845;
      a4 = "src/protocols/secure_channel/CASESession.cpp";
    }
  }

LABEL_8:
  v12 = *(a1 + 672);
  *(a1 + 664) = 0u;
  if (v12)
  {
    sub_238EF79DC(v12);
  }

  if (a2[2] && v8)
  {
    sub_2393E3ED8(a1 + 32, (a1 + 104), 2);
    sub_2393EFD90((a1 + 32), v13);
    sub_2393DFAD4(a1, v8 | (v9 << 32), a4);
  }

  (*(*v30 + 40))(v30, v31);
  sub_2393F9144(v31, 16);
  if (v29)
  {
    sub_2393D96C8(v29);
  }

  return v8 | (v9 << 32);
}

unint64_t sub_2393E7470(void *a1)
{
  v1 = atomic_load(a1 + 4);
  if (v1 && a1[5] && a1[7] & 1 | a1[6])
  {
    v3 = a1[1];
    if (v3 && (v3 = std::__shared_weak_count::lock(v3)) != 0)
    {
      v4 = *a1;
    }

    else
    {
      v4 = 0;
    }

    v8 = a1[3];
    a1[2] = v4;
    a1[3] = v3;
    if (v8)
    {
      sub_238EF79DC(v8);
    }

    if (qword_27DF7BD08 != -1)
    {
      sub_2395312BC(v3);
    }

    v9 = sub_2394796B0(algn_27DF7BCB8, sub_2393E9B58, a1);
    v5 = v9;
    v6 = HIDWORD(v9);
    if (v9)
    {
      v10 = a1[3];
      a1[2] = 0;
      a1[3] = 0;
      if (v10)
      {
        sub_238EF79DC(v10);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 3;
    LODWORD(v6) = 224;
  }

  return v5 | (v6 << 32);
}

unint64_t sub_2393E756C(unint64_t *a1)
{
  sub_23947632C("src/protocols/secure_channel/CASESession.cpp", 207);
  v2 = atomic_load(a1 + 4);
  if (v2 && (v3 = a1[5]) != 0 && a1[7] & 1 | a1[6])
  {
    v14 = 0;
    v4 = v3(a1 + 11, &v14);
    a1[8] = v4;
    a1[9] = v5;
    if ((v14 & 1) == 0)
    {
      v8 = atomic_load(a1 + 4);
      v9 = a1[6];
      v10 = a1[7];
      v11 = (v8 + (v10 >> 1));
      if (v10)
      {
        v9 = *(*v11 + v9);
      }

      v4 = v9(v11, a1 + 11, a1[8], a1[9]);
      a1[8] = v4;
      a1[9] = v12;
    }

    v6 = v4 & 0xFFFFFFFF00000000;
    v7 = v4;
  }

  else
  {
    v6 = 0xD100000000;
    v7 = 3;
  }

  return v7 | v6;
}

unint64_t sub_2393E7668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  bzero(*a3, *(a3 + 8));
  v6 = *(a3 + 8);
  v14 = *a3;
  v15 = v6;
  v16 = 0;
  if (!v14)
  {
    v15 = 0;
  }

  sub_2393D5CDC(&v14, *a2, *(a2 + 8));
  v12 = &v17;
  v13 = 32;
  v7 = sub_2393F80A0((a1 + 192), &v12);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_2393D5CDC(&v14, v12, v13);
    if (v15 >= v16)
    {
      v9 = sub_2393E8774(a3, 0, v16);
      LODWORD(v7) = 0;
      v8 = 0;
      *a3 = v9;
      *(a3 + 8) = v10;
    }

    else
    {
      v8 = 0x89000000000;
      LODWORD(v7) = 25;
    }
  }

  return v8 | v7;
}

void sub_2393E7770(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v3))
  {
    buf = 136315394;
    *buf_4 = "CASESession";
    *&buf_4[8] = 2080;
    *&buf_4[10] = "HandleSigma3";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &buf, 0x16u);
  }

  sub_2393C5AAC(v8);
  v4 = *(*(a1 + 544) + 40);
  v12 = 0;
  v13 = 0;
  v11 = v4;
  v5 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Received Sigma3 msg", &buf, 2u);
  }

  v6 = sub_2393D5398(2u);
  if (v6)
  {
    sub_2393D5320(11, 2, "Received Sigma3 msg");
  }

  v7 = sub_23948B4CC(v6);
  if (os_signpost_enabled(v7))
  {
    ++dword_27DF77758;
    buf = 67109120;
    *buf_4 = dword_27DF77758;
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Sigma3", "%u", &buf, 8u);
  }

  buf = 1;
  *&buf_4[4] = "core_dev_case_session_sigma2";
  *&buf_4[12] = 0;
  buf_4[16] = 3;
  sub_23948BD20(&buf);
  sub_2393E7F20(a1, sub_2393E8010, sub_2393E8110, 0);
}

void sub_2393E7F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2393D52C4(0x2B0uLL);
  if (v9)
  {
    *v9 = 0u;
    v9[1] = 0u;
    *(v9 + 4) = a1;
    *(v9 + 5) = a2;
    *(v9 + 6) = a3;
    *(v9 + 7) = a4;
    *(v9 + 80) = 0;
    v9[34] = 0u;
    *(v9 + 78) = 0;
    *(v9 + 88) = 0u;
    *(v9 + 104) = 0u;
    *(v9 + 120) = 0u;
    *(v9 + 17) = 0;
    *(v9 + 81) = -1;
    *(v9 + 336) = 0;
    *(v9 + 674) = 0;
    *(v9 + 85) = 0;
  }

  operator new();
}

unint64_t sub_2393E8010(uint64_t a1)
{
  v7[10] = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6 = 0;
  v7[0] = &unk_284BB9138;
  v2 = sub_2394A7394(*(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 456), *(a1 + 464), a1 + 560, &v6, &v5, (a1 + 552), v7, 0);
  if (v2)
  {
    v3 = v2 & 0xFFFFFFFF00000000;
  }

  else if (*(a1 + 544) == v5)
  {
    v2 = sub_2393F8AC4(v7, *(a1 + 8), *(a1 + 16), a1 + 472);
    v3 = v2 & 0xFFFFFFFF00000000;
    if (!v2)
    {
      LODWORD(v2) = 0;
      v3 = 0;
    }
  }

  else
  {
    v3 = 0x82F00000000;
    LODWORD(v2) = 84;
  }

  return v3 | v2;
}

uint64_t sub_2393E8110(uint64_t a1, uint64_t a2, unint64_t a3, const char *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 696) == 9)
  {
    if (a3)
    {
      v6 = a3;
      v7 = HIDWORD(a3);
    }

    else
    {
      *(a1 + 568) = *(a2 + 552);
      *&buf = a1 + 488;
      *(&buf + 1) = 32;
      v9 = sub_2393F817C((a1 + 192), &buf);
      v6 = v9;
      if (v9)
      {
        a4 = v10;
        v7 = HIDWORD(v9);
      }

      else
      {
        v15 = sub_2394A052C(a2 + 24, a1 + 584);
        a4 = v16;
        v7 = HIDWORD(v15);
        v6 = v15;
        if (!v15)
        {
          v17 = *(a1 + 536);
          if (v17)
          {
            *&buf = (*(*a1 + 48))(a1);
            BYTE8(buf) = v18;
            if ((*(*v17 + 32))(v17, &buf, a1 + 612, a1 + 400, a1 + 584))
            {
              v19 = sub_2393D9044(0xBu);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                v20 = sub_2393C9138();
                LODWORD(buf) = 136315138;
                *(&buf + 4) = v20;
                _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Unable to save session resumption state: %s", &buf, 0xCu);
              }

              if (sub_2393D5398(1u))
              {
                v21 = sub_2393C9138();
                sub_2393D5320(11, 1, "Unable to save session resumption state: %s", v21);
              }
            }
          }

          LODWORD(buf) = 2;
          *(&buf + 1) = "core_dev_case_session_sigma_finished";
          v24 = 0;
          sub_23948BD20(&buf);
          sub_2393E3ED8(a1 + 32, (a1 + 104), 0);
          *(a1 + 696) = 6;
          sub_2393EF9A4(a1 + 32, v22);
        }
      }
    }
  }

  else
  {
    v6 = 3;
    v7 = 2108;
    a4 = "src/protocols/secure_channel/CASESession.cpp";
  }

  v11 = *(a1 + 688);
  *(a1 + 680) = 0u;
  if (v11)
  {
    sub_238EF79DC(v11);
  }

  if (!v6)
  {
    return v7 << 32;
  }

  sub_2393E3ED8(a1 + 32, (a1 + 104), 2);
  sub_2393EFD90((a1 + 32), v12);
  v13 = v6 | (v7 << 32);
  sub_2393DFAD4(a1, v13, a4);
  return v13;
}

unint64_t sub_2393E83AC(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v16 = 21;
  v8 = sub_2393C7114(a1, 21, 256);
  if (v8)
  {
    goto LABEL_4;
  }

  v8 = sub_2393C6A2C(a1, &v16);
  if (v8)
  {
    goto LABEL_4;
  }

  v8 = sub_2393C6FD0(a1, 1);
  if (v8)
  {
    goto LABEL_4;
  }

  v11 = sub_2393C5CB8(a1);
  if (v11 > 0x3F2)
  {
    v9 = 0x7F700000000;
LABEL_14:
    LODWORD(v8) = 35;
    return v9 | v8;
  }

  v12 = v11;
  if (v11 < 0x11)
  {
    v9 = 0x7F800000000;
    goto LABEL_14;
  }

  sub_2393C56C0(a2, v11);
  v13 = *a2;
  if (!*a2)
  {
    v9 = 0x7F900000000;
    LODWORD(v8) = 11;
    return v9 | v8;
  }

  *(a2 + 8) = v12;
  v8 = sub_2393C6430(a1, v13, v12);
  if (!v8)
  {
    v14 = v12 - 16;
    sub_238DB9BD8(&v15, *a2, v14);
    *a3 = v15;
    sub_238DB6950(&v15, *a2 + v14, 16);
    *a4 = v15;
    v8 = sub_2393C6A98(a1, v16);
    if (!v8)
    {
      LODWORD(v8) = 0;
      v9 = 0;
      return v9 | v8;
    }
  }

LABEL_4:
  v9 = v8 & 0xFFFFFFFF00000000;
  return v9 | v8;
}

unint64_t sub_2393E8508(uint64_t a1, uint64_t a2)
{
  v8 = 21;
  v4 = sub_2393C7114(a1, 21, 256);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393C6A2C(a1, &v8);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393C6FD0(a1, 1);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393C76AC(a1, (a2 + 24));
  if (v4)
  {
    goto LABEL_5;
  }

  if (*(a2 + 32) > 0x190uLL)
  {
    v5 = 0x80F00000000;
    goto LABEL_20;
  }

  v4 = sub_2393C6B34(a1);
  if (v4)
  {
    goto LABEL_5;
  }

  v7 = *(a1 + 16);
  if (v7 == 2)
  {
    v4 = sub_2393C76AC(a1, (a2 + 40));
    if (v4)
    {
      goto LABEL_5;
    }

    if (*(a2 + 48) <= 0x190uLL)
    {
      v4 = sub_2393C7114(a1, 16, 3);
      if (v4)
      {
        goto LABEL_5;
      }

      v7 = *(a1 + 16);
      goto LABEL_14;
    }

    v5 = 0x81500000000;
LABEL_20:
    LODWORD(v4) = 84;
    return v4 | v5;
  }

LABEL_14:
  if (v7 != 3)
  {
    v5 = 0x81900000000;
    LODWORD(v4) = 36;
    return v4 | v5;
  }

  if (sub_2393C5CB8(a1) != 64)
  {
    v5 = 0x81B00000000;
    LODWORD(v4) = 35;
    return v4 | v5;
  }

  *(a2 + 536) = 64;
  v4 = sub_2393C6430(a1, (a2 + 472), 0x40uLL);
  if (!v4)
  {
    v4 = sub_2393C6A98(a1, v8);
    if (!v4)
    {
      v5 = 0;
      LODWORD(v4) = 0;
      return v4 | v5;
    }
  }

LABEL_5:
  v5 = v4 & 0xFFFFFFFF00000000;
  return v4 | v5;
}

unint64_t sub_2393E8678(void *a1)
{
  v1 = atomic_load(a1 + 4);
  if (v1 && a1[5] && a1[7] & 1 | a1[6])
  {
    v3 = a1[1];
    if (v3 && (v3 = std::__shared_weak_count::lock(v3)) != 0)
    {
      v4 = *a1;
    }

    else
    {
      v4 = 0;
    }

    v8 = a1[3];
    a1[2] = v4;
    a1[3] = v3;
    if (v8)
    {
      sub_238EF79DC(v8);
    }

    if (qword_27DF7BD08 != -1)
    {
      sub_2395312BC(v3);
    }

    v9 = sub_2394796B0(algn_27DF7BCB8, sub_2393E9EB4, a1);
    v5 = v9;
    v6 = HIDWORD(v9);
    if (v9)
    {
      v10 = a1[3];
      a1[2] = 0;
      a1[3] = 0;
      if (v10)
      {
        sub_238EF79DC(v10);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 3;
    LODWORD(v6) = 224;
  }

  return v5 | (v6 << 32);
}

uint64_t sub_2393E8774(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (!v4)
  {
    sub_239531374();
  }

  if (v5 < a3)
  {
    sub_2395312DC();
  }

  sub_238DB9BD8(&v7, *a1 + a2, a3);
  return v7;
}

uint64_t sub_2393E87C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = xmmword_2395C2210;
  memset(v14, 0, sizeof(v14));
  sub_2393D5CDC(&v12, *a2, *(a2 + 8));
  sub_2393D5CDC(&v12, *a3, *(a3 + 8));
  if (v13 < *(&v13 + 1))
  {
    return 0x8A300000019;
  }

  v11[0] = v14;
  v11[1] = *(&v13 + 1);
  return (*(**(*(a1 + 544) + 40) + 56))(*(*(a1 + 544) + 40), a1 + 400, v11, a4, a6 + 8);
}

uint64_t sub_2393E88C8(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Success status report received. Session was established", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(11, 2, "Success status report received. Session was established");
  }

  v4 = *(a1 + 536);
  if (v4)
  {
    *buf = (*(*a1 + 48))(a1);
    buf[8] = v5;
    if ((*(*v4 + 32))(v4, buf, a1 + 612, a1 + 400, a1 + 584))
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v6 = sub_2393C9138();
        *buf = 136315138;
        *&buf[4] = v6;
        _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "Unable to save session resumption state: %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v7 = sub_2393C9138();
        sub_2393D5320(11, 1, "Unable to save session resumption state: %s", v7);
      }
    }
  }

  v8 = *(a1 + 696);
  if (v8 == 3)
  {
    v9 = 6;
  }

  else
  {
    if (v8 != 5)
    {
      sub_2395314A4();
    }

    v9 = 7;
  }

  *(a1 + 696) = v9;
  return sub_2393EF9A4(a1 + 32, v3);
}

uint64_t sub_2393E8AC0(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (*a4 == 1)
    {
      v10 = *(a1 + 120);
      v11 = sub_2393E088C(a4, a2);
      (*(*v10 + 32))(v10, *v11);
    }

    v8 = 0x92900000000;
    v9 = 219;
  }

  else
  {
    v6 = 0x93100000000;
    v7 = 172;
    if (a3 == 1)
    {
      v6 = 0x92500000000;
      v7 = 201;
    }

    if (a3 == 2)
    {
      v8 = 0x92100000000;
    }

    else
    {
      v8 = v6;
    }

    if (a3 == 2)
    {
      v9 = 84;
    }

    else
    {
      v9 = v7;
    }
  }

  *(a1 + 696) = 0;
  v12 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109378;
    v16 = a3;
    v17 = 2080;
    v18 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "Received error (protocol code %d) during pairing process: %s", buf, 0x12u);
  }

  if (sub_2393D5398(1u))
  {
    v13 = sub_2393C9138();
    sub_2393D5320(11, 1, "Received error (protocol code %d) during pairing process: %s", a3, v13);
  }

  return v9 | v8;
}

uint64_t sub_2393E8C68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    v9 = 0x98C00000000;
    v10 = 47;
    return v10 | v9;
  }

  v6 = (a1 + 104);
  v5 = *(a1 + 104);
  v7 = (a1 + 104);
  if (v5 == 1)
  {
    if (*sub_2393E088C(v7, a2) != a2)
    {
      v9 = 0x99500000000;
      v10 = 47;
      return v10 | v9;
    }
  }

  else
  {
    sub_2393E0838(v7, a2);
  }

  v11 = sub_2393E088C(v6, v8);
  sub_239470428(*v11, 30000);
  if (*a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0x99E00000000;
  }

  if (*a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = 47;
  }

  return v10 | v9;
}

unint64_t sub_2393E8D2C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    *v27 = "CASESession";
    *&v27[8] = 2080;
    *&v27[10] = "OnMessageReceived";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v10 = sub_2393E8C68(a1, a2, v9, a4);
  v12 = v10;
  v13 = *a3;
  if (v10)
  {
    goto LABEL_4;
  }

  v16 = *(a1 + 696);
  v14 = "src/protocols/secure_channel/CASESession.cpp";
  v15 = 2507;
  if (v16 > 2)
  {
    if (v16 != 3)
    {
      if (v16 == 4)
      {
        if (v13 == 64)
        {
          goto LABEL_42;
        }

        if (v13 == 51)
        {
          v10 = sub_2393E4E74(a1, a4);
          goto LABEL_47;
        }

        goto LABEL_30;
      }

      if (v16 != 5)
      {
        goto LABEL_33;
      }
    }

    if (v13 == 64)
    {
      if (v16 == 3)
      {
        v17 = "core_dev_case_session_sigma3";
      }

      else
      {
        v17 = "core_dev_case_session_sigma2_resume";
      }

      v12 = sub_2393E90E8(a1 + 32, a4, 1);
      v14 = v18;
      *buf = 1;
      *&v27[4] = v17;
      goto LABEL_45;
    }

    goto LABEL_32;
  }

  if (!*(a1 + 696))
  {
    if (v13 == 48)
    {
      v10 = sub_2393E2244(a1, a4);
LABEL_47:
      v12 = v10;
LABEL_4:
      v14 = v11;
      goto LABEL_5;
    }

LABEL_32:
    v15 = 2507;
    goto LABEL_33;
  }

  if (v16 != 1)
  {
    if (v16 == 2)
    {
      if (v13 != 64)
      {
        if (v13 == 50)
        {
          sub_2393E7770(a1, a4);
        }

        goto LABEL_32;
      }

      v12 = sub_2393E90E8(a1 + 32, a4, 0);
      v14 = v25;
      *buf = 1;
      v24 = "core_dev_case_session_sigma2";
      goto LABEL_44;
    }

LABEL_33:
    v19 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 696);
      *buf = 67109376;
      *v27 = v13;
      *&v27[4] = 1024;
      *&v27[6] = v20;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Received message (type %d) cannot be handled in %d state.", buf, 0xEu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(11, 1, "Received message (type %d) cannot be handled in %d state.", v13, *(a1 + 696));
    }

    LODWORD(v12) = 42;
    goto LABEL_38;
  }

  if (v13 != 64)
  {
LABEL_30:
    if (v13 == 49)
    {
      v10 = sub_2393E5700(a1, a4);
      goto LABEL_47;
    }

    goto LABEL_32;
  }

LABEL_42:
  v12 = sub_2393E90E8(a1 + 32, a4, 0);
  v14 = v23;
  *buf = 1;
  v24 = "core_dev_case_session_sigma1";
LABEL_44:
  *&v27[4] = v24;
LABEL_45:
  *&v27[12] = v12;
  v27[16] = 3;
  v10 = sub_23948BD20(buf);
LABEL_5:
  v15 = HIDWORD(v12);
  if (!v12)
  {
    v12 = 0;
    goto LABEL_39;
  }

  if (v12 == 42)
  {
    goto LABEL_33;
  }

LABEL_38:
  sub_2393EFD90((a1 + 32), v11);
  v12 = v12;
  sub_2393DFAD4(a1, v12 | (v15 << 32), v14);
LABEL_39:
  v21 = sub_23948B4CC(v10);
  if (os_signpost_enabled(v21))
  {
    *buf = 136315394;
    *v27 = "CASESession";
    *&v27[8] = 2080;
    *&v27[10] = "OnMessageReceived";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v21, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v12 | (v15 << 32);
}

unint64_t sub_2393E90E8(uint64_t a1, _WORD **a2, int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_23946FC58(&v15);
  v14 = *a2;
  *a2 = 0;
  v6 = sub_23946FCAC(&v15, &v14);
  if (v14)
  {
    sub_2393D96C8(v14);
  }

  v14 = 0;
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else if (v16)
  {
    v7 = 0xB000000000;
    LODWORD(v6) = 47;
  }

  else if (v15 || v17 || !a3)
  {
    if (sub_23946FE68(&v15) && (v8 = v18, (v18 & 0x10000) != 0))
    {
      v11 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v21 = v8;
        _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "Received busy status report with minimum wait time: %u ms", buf, 8u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(11, 2, "Received busy status report with minimum wait time: %u ms", v8);
      }

      v9 = v15;
      v10 = v17;
      buf[0] = 1;
      v22 = v8;
    }

    else
    {
      v9 = v15;
      v10 = v17;
      buf[0] = 0;
    }

    v12 = (*(*a1 + 104))(a1, v9, v10, buf);
    LODWORD(v6) = v12;
    v7 = v12 & 0xFFFFFFFF00000000;
  }

  else
  {
    (*(*a1 + 96))(a1);
    v7 = 0;
    LODWORD(v6) = 0;
  }

  if (v19)
  {
    sub_2393D96C8(v19);
  }

  return v6 | v7;
}

uint64_t sub_2393E9314(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  sub_239476008(v15);
  v13 = sub_239476060();
  v14 = v6;
  if (v15[0] == 1)
  {
    v7 = sub_238DD173C(v15, v6);
  }

  else
  {
    v7 = &v13;
  }

  v8 = sub_239476070(a2[1], *a2, 0, *(a2 + 4), v3) + v5;
  v10 = *v7;
  v9 = *(v7 + 1);
  v11 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  return v8 + sub_239476070(v9, v10, v11, *(v7 + 4), 0);
}

uint64_t sub_2393E93F8(uint64_t a1)
{
  v2 = *(a1 + 664);
  if (v2 && (v3 = atomic_load((v2 + 80)), (v3 & 1) != 0))
  {
    v4 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "SendSigma3Helper was unable to schedule the AfterWorkCallback", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(11, 1, "SendSigma3Helper was unable to schedule the AfterWorkCallback");
    }

    sub_2393E9528(*(a1 + 664), v5);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v7 = *(a1 + 680);
  if (v7)
  {
    v8 = atomic_load((v7 + 80));
    if (v8)
    {
      v9 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "HandleSigma3Helper was unable to schedule the AfterWorkCallback", v11, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(11, 1, "HandleSigma3Helper was unable to schedule the AfterWorkCallback");
      }

      sub_2393E9554(*(a1 + 680), v10);
      return 1;
    }
  }

  return result;
}

void sub_2393E9528(uint64_t a1, uint64_t a2)
{
  v3 = atomic_load((a1 + 80));
  if ((v3 & 1) == 0)
  {
    sub_23953153C();
  }

  sub_2393E9D08(a1);
}

void sub_2393E9554(uint64_t a1, uint64_t a2)
{
  v3 = atomic_load((a1 + 80));
  if ((v3 & 1) == 0)
  {
    sub_23953153C();
  }

  sub_2393EA064(a1);
}

void sub_2393E960C(int *result, uint64_t a2)
{
  if (!*result)
  {
    sub_2395315D4();
  }

  v3 = *result - 1;
  *result = v3;
  if (!v3)
  {
    v4 = result - 7;

    sub_239470AB4(v4);
  }
}

int *sub_2393E9648(int *a1)
{
  v1 = *a1;
  if (*a1 == -1)
  {
    sub_23953166C();
  }

  if (!v1)
  {
    sub_239531704();
  }

  *a1 = v1 + 1;
  return a1 - 7;
}

_WORD *sub_2393E967C(_WORD *result, uint64_t a2)
{
  v2 = *result;
  if (v2 == 0xFFFF)
  {
    sub_23953166C();
  }

  *result = v2 + 1;
  return result;
}

uint64_t sub_2393E96A8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  LODWORD(v2) = *(a2 + 12);
  *(result + 12) = v2;
  if (v2 == 1)
  {
    *(result + 14) = *(a2 + 7);
  }

  v3 = *(a2 + 16);
  *(result + 16) = v3;
  if (v3 == 1)
  {
    *(result + 18) = *(a2 + 9);
  }

  v4 = *(a2 + 20);
  *(result + 20) = v4;
  if (v4 == 1)
  {
    *(result + 24) = *(a2 + 6);
  }

  *(result + 28) = *(a2 + 14);
  return result;
}

uint64_t *sub_2393E970C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_27DF765F8, memory_order_acquire) & 1) == 0)
  {
    sub_23953179C();
  }

  return &qword_27DF765F0;
}

uint64_t sub_2393E9744(uint64_t result, uint64_t a2)
{
  if (!*result)
  {
    sub_2395315D4();
  }

  v2 = *result - 1;
  *result = v2;
  if (!v2)
  {
    v3 = *(result + 104);
    if (v3)
    {
      v4 = *(*v3 + 48);

      return v4();
    }

    else
    {
      sub_2393E97BC();
      return sub_2393E97BC();
    }
  }

  return result;
}

uint64_t sub_2393E97D4(uint64_t a1, char *__str, size_t __size)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0uLL;
  v11 = 0;
  v7 = *(a1 + 20);
  v6 = (a1 + 20);
  if (v7 && sub_2393D00D4(v6, &v10 + 1, 0x10uLL))
  {
    v10 = *"%(err)";
    v11 = 0;
  }

  v8 = *(a1 + 16);
  if (v8 > 2)
  {
    switch(v8)
    {
      case 3u:
        sub_2393CF6CC(a1, v12, 0x2Eu);
        if (sub_2393CFA1C(a1))
        {
          return snprintf(__str, __size, "TCP:%s%s:%d");
        }

        else
        {
          return snprintf(__str, __size, "TCP:[%s%s]:%d");
        }

      case 4u:
        return snprintf(__str, __size, "Wi-Fi PAF");
      case 5u:
        return snprintf(__str, __size, "NFC:%d");
      default:
        return snprintf(__str, __size, "ERROR");
    }
  }

  else
  {
    if (!*(a1 + 16))
    {
      return snprintf(__str, __size, "UNDEFINED");
    }

    if (v8 != 1)
    {
      if (v8 == 2)
      {
        return snprintf(__str, __size, "BLE");
      }

      return snprintf(__str, __size, "ERROR");
    }

    sub_2393CF6CC(a1, v12, 0x2Eu);
    if (sub_2393CFA1C(a1))
    {
      return snprintf(__str, __size, "UDP:%s%s:%d");
    }

    else
    {
      return snprintf(__str, __size, "UDP:[%s%s]:%d");
    }
  }
}

void *sub_2393E99A4(void *result, uint64_t a2)
{
  *result = a2;
  if (!a2)
  {
    sub_23953189C();
  }

  return result;
}

void *sub_2393E99C0(void *a1)
{
  v2 = a1 + 1;
  (*(**a1 + 40))(*a1, a1 + 1);
  sub_2393F9144(v2, 16);
  return a1;
}

void sub_2393E9A24(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_2393E9A5C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = sub_2393E9AD0(v1);

    j__free(v2);
  }
}

uint64_t sub_2393E9A90(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB87C0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_2393E9AD0(void *a1)
{
  sub_2393F9144((a1 + 25), 64);
  v2 = a1[22];
  if (v2)
  {
    j__free(v2);
    a1[22] = 0;
  }

  v3 = a1[19];
  if (v3)
  {
    j__free(v3);
    a1[19] = 0;
  }

  v4 = a1[17];
  if (v4)
  {
    j__free(v4);
    a1[17] = 0;
  }

  v5 = a1[14];
  if (v5)
  {
    j__free(v5);
    a1[14] = 0;
  }

  v6 = a1[3];
  if (v6)
  {
    sub_238EF79DC(v6);
  }

  v7 = a1[1];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  return a1;
}

void sub_2393E9B58(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (!atomic_load((a1 + 32)))
  {
    goto LABEL_12;
  }

  v16 = 0;
  v5 = (*(a1 + 40))(a1 + 88, &v16);
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  if (v16)
  {
    goto LABEL_12;
  }

  if (!atomic_load((a1 + 32)))
  {
    goto LABEL_12;
  }

  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
  if (qword_27DF7BD08 != -1)
  {
    sub_239531934(v5);
  }

  v11 = sub_2394796B0(algn_27DF7BCB8, sub_2393E9D08, a1);
  if (v11)
  {
    v12 = v10;
    v13 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = sub_2393C9138();
      *buf = 136315138;
      v18 = v14;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "Failed to Schedule the AfterWorkCallback on foreground thread: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v15 = sub_2393C9138();
      sub_2393D5320(11, 1, "Failed to Schedule the AfterWorkCallback on foreground thread: %s", v15);
    }

    *(a1 + 64) = v11;
    *(a1 + 72) = v12;
    v1 = *(a1 + 24);
    *(a1 + 16) = v9;
    *(a1 + 24) = v8;
    atomic_store(1u, (a1 + 80));
LABEL_12:
    if (!v1)
    {
      return;
    }

    goto LABEL_13;
  }

  v1 = v8;
  if (!v8)
  {
    return;
  }

LABEL_13:
  sub_238EF79DC(v1);
}

void sub_2393E9D08(void *a1)
{
  sub_23947632C("src/protocols/secure_channel/CASESession.cpp", 303);
  v2 = a1[2];
  v3 = a1[3];
  a1[2] = 0;
  a1[3] = 0;
  if (v2)
  {
    v4 = v3;
    goto LABEL_6;
  }

  v5 = a1[1];
  if (v5)
  {
    v4 = std::__shared_weak_count::lock(v5);
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = 0;
  if (v3)
  {
LABEL_5:
    sub_238EF79DC(v3);
  }

LABEL_6:
  v6 = atomic_load(a1 + 4);
  if (v6)
  {
    v7 = a1[6];
    v8 = a1[7];
    v9 = (v6 + (v8 >> 1));
    if (v8)
    {
      v7 = *(*v9 + v7);
    }

    v7(v9, a1 + 11, a1[8], a1[9]);
  }

  if (v4)
  {

    sub_238EF79DC(v4);
  }
}

void sub_2393E9DFC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_2393F9144((v1 + 70), 64);
    v2 = v1[11];
    if (v2)
    {
      j__free(v2);
      v1[11] = 0;
    }

    v3 = v1[3];
    if (v3)
    {
      sub_238EF79DC(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    j__free(v1);
  }
}

uint64_t sub_2393E9E74(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB8820))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_2393E9EB4(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (!atomic_load((a1 + 32)))
  {
    goto LABEL_12;
  }

  v16 = 0;
  v5 = (*(a1 + 40))(a1 + 88, &v16);
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  if (v16)
  {
    goto LABEL_12;
  }

  if (!atomic_load((a1 + 32)))
  {
    goto LABEL_12;
  }

  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
  if (qword_27DF7BD08 != -1)
  {
    sub_239531934(v5);
  }

  v11 = sub_2394796B0(algn_27DF7BCB8, sub_2393EA064, a1);
  if (v11)
  {
    v12 = v10;
    v13 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = sub_2393C9138();
      *buf = 136315138;
      v18 = v14;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "Failed to Schedule the AfterWorkCallback on foreground thread: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v15 = sub_2393C9138();
      sub_2393D5320(11, 1, "Failed to Schedule the AfterWorkCallback on foreground thread: %s", v15);
    }

    *(a1 + 64) = v11;
    *(a1 + 72) = v12;
    v1 = *(a1 + 24);
    *(a1 + 16) = v9;
    *(a1 + 24) = v8;
    atomic_store(1u, (a1 + 80));
LABEL_12:
    if (!v1)
    {
      return;
    }

    goto LABEL_13;
  }

  v1 = v8;
  if (!v8)
  {
    return;
  }

LABEL_13:
  sub_238EF79DC(v1);
}

void sub_2393EA064(void *a1)
{
  sub_23947632C("src/protocols/secure_channel/CASESession.cpp", 303);
  v2 = a1[2];
  v3 = a1[3];
  a1[2] = 0;
  a1[3] = 0;
  if (v2)
  {
    v4 = v3;
    goto LABEL_6;
  }

  v5 = a1[1];
  if (v5)
  {
    v4 = std::__shared_weak_count::lock(v5);
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = 0;
  if (v3)
  {
LABEL_5:
    sub_238EF79DC(v3);
  }

LABEL_6:
  v6 = atomic_load(a1 + 4);
  if (v6)
  {
    v7 = a1[6];
    v8 = a1[7];
    v9 = (v6 + (v8 >> 1));
    if (v8)
    {
      v7 = *(*v9 + v7);
    }

    v7(v9, a1 + 11, a1[8], a1[9]);
  }

  if (v4)
  {

    sub_238EF79DC(v4);
  }
}

uint64_t sub_2393EA170(uint64_t a1)
{
  result = (*(*a1 + 96))(a1);
  if (!result)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2393EA1B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v10 = (*(*a1 + 72))(a1);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if (v11)
  {
    v13 = v11 & 0xFFFFFFFF00000000;
  }

  else
  {
    v14 = (*(*a1 + 16))(a1, a3, v19, a4, a5);
    if (v14)
    {
      v13 = v14 & 0xFFFFFFFF00000000;
    }

    else
    {
      v16 = v19[0] != *a2 || v19[1] != a2[1];
      v17 = !v16;
      if (v16)
      {
        v13 = 0x2700000000;
      }

      else
      {
        v13 = 0;
      }

      if (v17)
      {
        LODWORD(v14) = 0;
      }

      else
      {
        LODWORD(v14) = 16;
      }
    }

    v12 = v14;
  }

  return v12 | v13;
}

uint64_t sub_2393EA304(uint64_t a1)
{
  result = (*(*a1 + 72))(a1);
  if (!result)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2393EA348(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v45 = *MEMORY[0x277D85DE8];
  do
  {
    v11 = &v35[v10];
    v11[1] = 0;
    *(v11 + 16) = 0;
    v10 += 2;
  }

  while (v10 != 96);
  v12 = (*(*a1 + 56))(a1, v35);
  if (v12)
  {
LABEL_4:
    v13 = v12 & 0xFFFFFFFF00000000;
    return v12 | v13;
  }

  if (!v35[0])
  {
    goto LABEL_14;
  }

  v15 = &v35[2];
  v16 = v35[0];
  do
  {
    if (*(v15 - 1) == *a2 && *v15 == *(a2 + 8))
    {
      v43 = 0;
      v33 = 0;
      v34 = 0;
      if ((*(*a1 + 96))(a1, a2, v44, v42, &v33))
      {
        v19 = sub_2393D9044(0xBu);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = *a2;
          v31 = HIDWORD(*a2);
          v21 = sub_2393C9138();
          *buf = 67109634;
          v37 = v31;
          v38 = 1024;
          v39 = v20;
          v40 = 2080;
          v41 = v21;
          _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "LoadState failed; unable to fully delete session resumption record for node %08X%08X: %s", buf, 0x18u);
        }

        if (!sub_2393D5398(1u))
        {
          goto LABEL_33;
        }

        v22 = "LoadState failed; unable to fully delete session resumption record for node %08X%08X: %s";
      }

      else
      {
        if (!(*(*a1 + 80))(a1, v44))
        {
          goto LABEL_33;
        }

        v23 = sub_2393D9044(0xBu);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = *a2;
          v32 = HIDWORD(*a2);
          v25 = sub_2393C9138();
          *buf = 67109634;
          v37 = v32;
          v38 = 1024;
          v39 = v24;
          v40 = 2080;
          v41 = v25;
          _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "DeleteLink failed; unable to fully delete session resumption record for node %08X%08X: %s", buf, 0x18u);
        }

        if (!sub_2393D5398(1u))
        {
          goto LABEL_33;
        }

        v22 = "DeleteLink failed; unable to fully delete session resumption record for node %08X%08X: %s";
      }

      v26 = *a2;
      v27 = HIDWORD(*a2);
      v28 = sub_2393C9138();
      sub_2393D5320(11, 1, v22, v27, v26, v28);
LABEL_33:
      v29 = (*(*a1 + 88))(a1, a2, a3, a4, a5);
      LODWORD(v12) = v29;
      if (v29)
      {
        v13 = v29 & 0xFFFFFFFF00000000;
      }

      else
      {
        v30 = (*(*a1 + 64))(a1, a3, a2);
        if (v30)
        {
          v13 = v30 & 0xFFFFFFFF00000000;
        }

        else
        {
          v13 = 0;
        }

        if (v30)
        {
          LODWORD(v12) = v30;
        }

        else
        {
          LODWORD(v12) = 0;
        }
      }

      sub_2393F9144(v42, 32);
      return v12 | v13;
    }

    v15 += 16;
    --v16;
  }

  while (v16);
  if (v35[0] == 48)
  {
    v12 = sub_2393EA83C(a1, &v35[1]);
    if (v12)
    {
      goto LABEL_4;
    }

    v12 = (*(*a1 + 56))(a1, v35);
    if (v12)
    {
      goto LABEL_4;
    }
  }

LABEL_14:
  v12 = (*(*a1 + 88))(a1, a2, a3, a4, a5);
  if (v12)
  {
    goto LABEL_4;
  }

  v12 = (*(*a1 + 64))(a1, a3, a2);
  if (v12)
  {
    goto LABEL_4;
  }

  v17 = &v35[2 * v35[0]++];
  v17[1] = *a2;
  *(v17 + 16) = *(a2 + 8);
  v18 = (*(*a1 + 48))(a1, v35);
  if (v18)
  {
    v13 = v18 & 0xFFFFFFFF00000000;
  }

  else
  {
    v13 = 0;
  }

  if (v18)
  {
    LODWORD(v12) = v18;
  }

  else
  {
    LODWORD(v12) = 0;
  }

  return v12 | v13;
}

unint64_t sub_2393EA83C(uint64_t a1, uint64_t *a2)
{
  v4 = 0;
  v55 = *MEMORY[0x277D85DE8];
  do
  {
    v5 = &v46[v4];
    v5[1] = 0;
    *(v5 + 16) = 0;
    v4 += 2;
  }

  while (v4 != 96);
  v6 = (*(*a1 + 56))(a1, v46);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFF00000000;
    return v6 | v7;
  }

  v53 = 0;
  v44 = 0;
  v45 = 0;
  v8 = (*(*a1 + 96))(a1, a2, v54, v52, &v44);
  if (v8 != 160)
  {
    if (v8)
    {
      v15 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *a2;
        v17 = HIDWORD(*a2);
        v18 = sub_2393C9138();
        *buf = 67109634;
        *v49 = v17;
        *&v49[4] = 1024;
        *&v49[6] = v16;
        v50 = 2080;
        v51 = v18;
        _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Unable to load session resumption state during session deletion for node %08X%08X: %s", buf, 0x18u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_18;
      }

      v14 = "Unable to load session resumption state during session deletion for node %08X%08X: %s";
    }

    else
    {
      v9 = (*(*a1 + 80))(a1, v54);
      if (!v9 || v9 == 160)
      {
        goto LABEL_18;
      }

      v10 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *a2;
        v12 = HIDWORD(*a2);
        v13 = sub_2393C9138();
        *buf = 67109634;
        *v49 = v12;
        *&v49[4] = 1024;
        *&v49[6] = v11;
        v50 = 2080;
        v51 = v13;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Unable to delete session resumption link for node %08X%08X: %s", buf, 0x18u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_18;
      }

      v14 = "Unable to delete session resumption link for node %08X%08X: %s";
    }

    v19 = *a2;
    v20 = HIDWORD(*a2);
    v21 = sub_2393C9138();
    sub_2393D5320(11, 1, v14, v20, v19, v21);
  }

LABEL_18:
  v22 = (*(*a1 + 104))(a1, a2);
  if (v22 && v22 != 160)
  {
    v23 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *a2;
      v25 = HIDWORD(*a2);
      v26 = sub_2393C9138();
      *buf = 67109634;
      *v49 = v25;
      *&v49[4] = 1024;
      *&v49[6] = v24;
      v50 = 2080;
      v51 = v26;
      _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "Unable to delete session resumption state for node %08X%08X: %s", buf, 0x18u);
    }

    if (sub_2393D5398(1u))
    {
      v27 = *a2;
      v28 = HIDWORD(*a2);
      v29 = sub_2393C9138();
      sub_2393D5320(11, 1, "Unable to delete session resumption state for node %08X%08X: %s", v28, v27, v29);
    }
  }

  v30 = v46[0];
  if (!v46[0])
  {
    goto LABEL_42;
  }

  v31 = 0;
  v32 = *a2;
  v33 = *(a2 + 8);
  v34 = &v47;
  v35 = 1;
  do
  {
    if (v31)
    {
      *(v34 - 2) = *v34;
      *(v34 - 8) = *(v34 + 8);
      v31 = 1;
      v30 = v46[0];
    }

    else if (*(v34 - 2) == v32 && *(v34 - 8) == v33)
    {
      if (v35 < v30)
      {
        *(v34 - 2) = *v34;
        *(v34 - 8) = *(v34 + 8);
        v30 = v46[0];
      }

      v46[0] = --v30;
      v31 = 1;
    }

    else
    {
      v31 = 0;
    }

    v34 += 2;
  }

  while (v35++ < v30);
  if (v31)
  {
    if ((*(*a1 + 48))(a1, v46))
    {
      v37 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = sub_2393C9138();
        *buf = 136315138;
        *v49 = v38;
        _os_log_impl(&dword_238DAE000, v37, OS_LOG_TYPE_ERROR, "Unable to save session resumption index: %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(11, 1, "Unable to save session resumption index: %s");
      }
    }
  }

  else
  {
LABEL_42:
    v39 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = *a2;
      v41 = HIDWORD(*a2);
      v42 = sub_2393C9138();
      *buf = 67109634;
      *v49 = v41;
      *&v49[4] = 1024;
      *&v49[6] = v40;
      v50 = 2080;
      v51 = v42;
      _os_log_impl(&dword_238DAE000, v39, OS_LOG_TYPE_ERROR, "Unable to find session resumption state for node in index%08X%08X: %s", buf, 0x18u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(11, 1, "Unable to find session resumption state for node in index%08X%08X: %s");
    }
  }

  sub_2393F9144(v52, 32);
  v7 = 0;
  LODWORD(v6) = 0;
  return v6 | v7;
}

uint64_t sub_2393EAE38(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = 0;
  v50 = *MEMORY[0x277D85DE8];
  v41 = 0uLL;
  do
  {
    v5 = &v40[v4];
    v5[1] = 0;
    *(v5 + 16) = 0;
    v4 += 2;
  }

  while (v4 != 96);
  result = (*(*a1 + 56))(a1, v40);
  if (!result)
  {
    v7 = v40[0];
    if (v40[0])
    {
      v8 = 0;
      v9 = 0;
      v10 = 16 * v40[0] - 16;
      v34 = a2;
      v35 = v3;
      do
      {
        v48 = 0;
        v36 = 0;
        v37 = 0;
        v11 = &v40[-2 * v9];
        if (LOBYTE(v11[v8 + 2]) == a2)
        {
          v12 = v40 + v8 * 8 - 16 * v9;
          v13 = (*(*v3 + 96))(v3, v12 + 8, v49, v44, &v36);
          v38 = v13;
          v39 = v14;
          v15 = &v41;
          if (!v41)
          {
            v15 = &v38;
          }

          v41 = *v15;
          if (v13)
          {
            v16 = sub_2393D9044(0xBu);
            a2 = v34;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v17 = sub_2393C9138();
              LODWORD(buf) = 67109378;
              HIDWORD(buf) = v34;
              LOWORD(v43[0]) = 2080;
              *(v43 + 2) = v17;
              _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Session resumption cache deletion partially failed for fabric index %u, unable to load node state: %s", &buf, 0x12u);
            }

            if (sub_2393D5398(1u))
            {
              sub_2393C9138();
              sub_2393D5320(11, 1, "Session resumption cache deletion partially failed for fabric index %u, unable to load node state: %s");
            }
          }

          else
          {
            v18 = (*(*v3 + 80))(v3, v49);
            v38 = v18;
            v39 = v19;
            if (v41)
            {
              v20 = &v41;
            }

            else
            {
              v20 = &v38;
            }

            v41 = *v20;
            if (v18)
            {
              v21 = sub_2393D9044(0xBu);
              a2 = v34;
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                v22 = sub_2393C9138();
                LODWORD(buf) = 67109378;
                HIDWORD(buf) = v34;
                LOWORD(v43[0]) = 2080;
                *(v43 + 2) = v22;
                _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "Session resumption cache deletion partially failed for fabric index %u, unable to delete node link: %s", &buf, 0x12u);
              }

              if (sub_2393D5398(1u))
              {
                sub_2393C9138();
                sub_2393D5320(11, 1, "Session resumption cache deletion partially failed for fabric index %u, unable to delete node link: %s");
              }
            }

            else
            {
              v23 = (*(*v3 + 104))(v3, v12 + 8);
              v38 = v23;
              v39 = v24;
              v25 = &v41;
              if (!v41)
              {
                v25 = &v38;
              }

              v41 = *v25;
              if (v23)
              {
                v26 = sub_2393D9044(0xBu);
                a2 = v34;
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  v27 = sub_2393C9138();
                  LODWORD(buf) = 67109378;
                  HIDWORD(buf) = v34;
                  LOWORD(v43[0]) = 2080;
                  *(v43 + 2) = v27;
                  _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_ERROR, "Session resumption cache is in an inconsistent state!  Unable to delete node state during attempted deletion of fabric index %u: %s", &buf, 0x12u);
                }

                if (sub_2393D5398(1u))
                {
                  sub_2393C9138();
                  sub_2393D5320(11, 1, "Session resumption cache is in an inconsistent state!  Unable to delete node state during attempted deletion of fabric index %u: %s");
                }
              }

              else
              {
                ++v9;
                a2 = v34;
                if (v7 != 1)
                {
                  memmove(&v11[v8 + 1], &v11[v8 + 3], v10);
                }
              }
            }
          }

          v3 = v35;
        }

        sub_2393F9144(v44, 32);
        v10 -= 16;
        v8 += 2;
        --v7;
      }

      while (v7);
      if (v9)
      {
        v40[0] -= v9;
        v28 = (*(*v3 + 48))(v3, v40);
        buf = v28;
        v43[0] = v29;
        p_buf = &v41;
        if (!v41)
        {
          p_buf = &buf;
        }

        v41 = *p_buf;
        if (v28)
        {
          v31 = sub_2393D9044(0xBu);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = sub_2393C9138();
            *v44 = 67109378;
            v45 = a2;
            v46 = 2080;
            v47 = v32;
            _os_log_impl(&dword_238DAE000, v31, OS_LOG_TYPE_ERROR, "Session resumption cache is in an inconsistent state!  Unable to save session resumption index during attempted deletion of fabric index %u: %s", v44, 0x12u);
          }

          if (sub_2393D5398(1u))
          {
            v33 = sub_2393C9138();
            sub_2393D5320(11, 1, "Session resumption cache is in an inconsistent state!  Unable to save session resumption index during attempted deletion of fabric index %u: %s", a2, v33);
          }
        }
      }
    }

    return v41;
  }

  return result;
}

void *sub_2393EB3DC(void *a1)
{
  *a1 = &unk_284BB88D8;
  a1[1] = &unk_284BB8968;
  v2 = a1 + 2;
  a1[2] = &unk_284BB89B8;
  sub_2393EB49C(a1);
  sub_2393F7EB8(a1 + 212);
  a1[21] = &unk_284BB8F80;
  sub_2393F9D1C(a1 + 42);
  sub_2393F7EB8(a1 + 51);
  sub_2393DF88C(v2, v3);
  return a1;
}

void sub_2393EB49C(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v2))
  {
    v7 = 136315394;
    v8 = "PASESession";
    v9 = 2080;
    v10 = "Clear";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v7, 0x16u);
  }

  *(a1 + 1648) = 0;
  *(a1 + 1632) = 0u;
  *(a1 + 1616) = 0u;
  *(a1 + 1600) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1552) = 0u;
  *(a1 + 164) = 0;
  sub_2393F9D1C((a1 + 168));
  sub_2393F7EF4((a1 + 1696));
  *(a1 + 1816) = 0;
  *(a1 + 1820) = 0;
  v4 = *(a1 + 1824);
  if (v4)
  {
    j__free(v4);
    *(a1 + 1824) = 0;
  }

  *(a1 + 1872) = 0;
  v5 = sub_2393F01F8(a1 + 16, v3);
  v6 = sub_23948B4CC(v5);
  if (os_signpost_enabled(v6))
  {
    v7 = 136315394;
    v8 = "PASESession";
    v9 = 2080;
    v10 = "Clear";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v7, 0x16u);
  }
}

void sub_2393EB63C(void *a1)
{
  sub_2393EB3DC(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_2393EB674(uint64_t a1)
{
  sub_2393EB3DC((a1 - 8));

  JUMPOUT(0x23EE77B60);
}

void sub_2393EB6B0(uint64_t a1)
{
  sub_2393EB3DC((a1 - 16));

  JUMPOUT(0x23EE77B60);
}

void sub_2393EB6EC(uint64_t a1)
{
  sub_2393F0264(a1 + 16);

  sub_2393EB49C(a1);
}

void sub_2393EB728(uint64_t a1)
{
  v1 = a1 - 16;
  sub_2393F0264(a1);

  sub_2393EB49C(v1);
}

unint64_t sub_2393EB770(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC(a1);
  v9 = os_signpost_enabled(v8);
  if (v9)
  {
    *buf = 136315394;
    *&buf[4] = "PASESession";
    v24 = 2080;
    v25 = "Init";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (!a2[5])
  {
    v12 = 0xA200000000;
    goto LABEL_11;
  }

  if (!a4)
  {
    v12 = 0xA300000000;
    goto LABEL_11;
  }

  sub_2393EB49C(a1);
  v9 = sub_2393F7F38((a1 + 1696));
  v10 = v9;
  if (v9 || (v9 = sub_2393F7FF0((a1 + 1696), "CHIP PAKE V1 Commissioning", 26), v10 = v9, v9) || (*(a1 + 104) = a4, *buf = 0, buf[8] = 0, v9 = sub_2393EF4FC((a1 + 16), a2, buf), v10 = v9, v9))
  {
    v12 = v10 & 0xFFFFFFFF00000000;
    goto LABEL_12;
  }

  v9 = sub_2393E1D10(a1 + 16, v11, buf);
  if (buf[0] == 1)
  {
    v15 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      sub_2393E1D10(a1 + 16, v16, v22);
      isa_low = LOWORD(sub_238E0A934(v22, v17)->super.isa);
      *buf = 67109120;
      *&buf[4] = isa_low;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_INFO, "Assigned local session key ID %u", buf, 8u);
    }

    v9 = sub_2393D5398(3u);
    if (v9)
    {
      sub_2393E1D10(a1 + 16, v19, buf);
      v21 = sub_238E0A934(buf, v20);
      sub_2393D5320(11, 3, "Assigned local session key ID %u", LOWORD(v21->super.isa));
    }

    if (!(a3 >> 27))
    {
      v12 = 0;
      LODWORD(v10) = 0;
      *(a1 + 1652) = a3;
      goto LABEL_12;
    }

    v12 = 0xB000000000;
LABEL_11:
    LODWORD(v10) = 47;
    goto LABEL_12;
  }

  v12 = 0xAD00000000;
  LODWORD(v10) = 3;
LABEL_12:
  v13 = sub_23948B4CC(v9);
  if (os_signpost_enabled(v13))
  {
    *buf = 136315394;
    *&buf[4] = "PASESession";
    v24 = 2080;
    v25 = "Init";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v10 | v12;
}

unint64_t sub_2393EBA44(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, char *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v10))
  {
    v15 = 136315394;
    v16 = "PASESession";
    v17 = 2080;
    v18 = "GeneratePASEVerifier";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v15, 0x16u);
  }

  if (!a4 || (v11 = sub_2394902F0(a5), v12 = v11, !v11))
  {
    v11 = sub_2393F2748(a1, a2, a3, *a5);
    v12 = v11;
  }

  v13 = sub_23948B4CC(v11);
  if (os_signpost_enabled(v13))
  {
    v15 = 136315394;
    v16 = "PASESession";
    v17 = 2080;
    v18 = "GeneratePASEVerifier";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v15, 0x16u);
  }

  return v12;
}

unint64_t sub_2393EBBD0(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v2))
  {
    *buf = 136315394;
    *&buf[4] = "PASESession";
    *&buf[12] = 2080;
    *&buf[14] = "SetupSpake2p";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  memset(buf, 0, 32);
  v8 = buf;
  v9 = 32;
  v3 = sub_2393F817C((a1 + 1696), &v8);
  v4 = v3;
  if (v3)
  {
    v5 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    v3 = sub_2393F15A8(a1 + 168, v8, v9);
    if (v3)
    {
      v5 = v3 & 0xFFFFFFFF00000000;
    }

    else
    {
      v5 = 0;
    }

    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = sub_23948B4CC(v3);
  if (os_signpost_enabled(v6))
  {
    *buf = 136315394;
    *&buf[4] = "PASESession";
    *&buf[12] = 2080;
    *&buf[14] = "SetupSpake2p";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v4 | v5;
}

uint64_t sub_2393EBD6C(uint64_t a1, void *a2, const void *a3, int a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  v7 = *(a5 + 8);
  if (!v7)
  {
    v21 = 47;
    v15 = 212;
    return v21 | (v15 << 32);
  }

  if (!*a5)
  {
    v21 = 47;
    v15 = 213;
    return v21 | (v15 << 32);
  }

  if ((v7 - 16) > 0x10)
  {
    v21 = 47;
    v15 = 215;
    return v21 | (v15 << 32);
  }

  v13 = sub_2393EB770(a1, a2, 0, a7);
  v14 = v13;
  v15 = HIDWORD(v13);
  if (v13)
  {
LABEL_16:
    sub_2393EB49C(a1);
    v21 = v14;
    return v21 | (v15 << 32);
  }

  *(a1 + 24) = 1;
  v16 = *(a5 + 8);
  if (v16 >> 16)
  {
    v15 = 224;
    v14 = 47;
    goto LABEL_16;
  }

  *(a1 + 1820) = v16;
  v17 = *(a1 + 1824);
  if (v17)
  {
    j__free(v17);
    *(a1 + 1824) = 0;
    LOWORD(v16) = *(a1 + 1820);
  }

  v18 = sub_2393D52C4(v16);
  *(a1 + 1824) = v18;
  if (!v18)
  {
    v15 = 234;
    v14 = 11;
    goto LABEL_16;
  }

  memmove(v18, *a5, *(a1 + 1820));
  memmove((a1 + 1552), a3, 0x61uLL);
  *(a1 + 1816) = a4;
  *(a1 + 164) = 8193;
  *(a1 + 1872) = 0;
  v26 = sub_239476060();
  v27 = v19;
  if (*a6 == 1)
  {
    v20 = sub_238DD173C(a6, v19);
  }

  else
  {
    v20 = &v26;
  }

  v23 = *(v20 + 2);
  v24 = *v20;
  *(a1 + 112) = 1;
  *(a1 + 116) = v24;
  *(a1 + 124) = v23;
  v25 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_INFO, "Waiting for PBKDF param request", &v26, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(11, 3, "Waiting for PBKDF param request");
  }

  v21 = 0;
  return v21 | (v15 << 32);
}

unint64_t sub_2393EBF78(uint64_t a1, void *a2, unsigned int a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = sub_23948B4CC(a1);
  v13 = os_signpost_enabled(v12);
  if (v13)
  {
    *buf = 136315394;
    *&buf[4] = "PASESession";
    v34 = 2080;
    v35 = "Pair";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (a5)
  {
    v14 = sub_2393EB770(a1, a2, a3, a6);
    if (v14 || ((*(a1 + 24) = 0, sub_2393E0838(a1 + 88, a5), v17 = sub_2393E088C((a1 + 88), v16), sub_238EA6DC0(*v17, buf, v18), v19 = sub_2394953AC(*buf), *(v19 + 104) = (*(*off_27DF765E8 + 2))(off_27DF765E8), *(v19 + 96) = (*(*off_27DF765E8 + 2))(off_27DF765E8), (*(**buf + 32))(*buf), v21 = sub_2393E088C((a1 + 88), v20), sub_239470428(*v21, 2000), *buf = sub_239476060(), *&buf[8] = v22, *a4 != 1) ? (v23 = buf) : (v23 = sub_238DD173C(a4, v22)), v24 = *(v23 + 2), v25 = *v23, *(a1 + 112) = 1, *(a1 + 116) = v25, *(a1 + 124) = v24, v14 = sub_2393EC380(a1), v14))
    {
      if ((*(a1 + 88) & 1) == 0)
      {
        sub_239470A14(a5);
      }

      sub_2393EB49C(a1);
      v26 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = sub_2393C9138();
        *buf = 136315138;
        *&buf[4] = v27;
        _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_ERROR, "Failed during PASE session pairing request: %s", buf, 0xCu);
      }

      v15 = HIDWORD(v14);
      v28 = sub_2393D5398(1u);
      if (v28)
      {
        v29 = sub_2393C9138();
        sub_2393D5320(11, 1, "Failed during PASE session pairing request: %s", v29);
      }

      v30 = sub_23948B4CC(v28);
      v13 = os_signpost_enabled(v30);
      if (v13)
      {
        ++dword_27DF7775C;
        *buf = 67109120;
        *&buf[4] = dword_27DF7775C;
        _os_signpost_emit_with_name_impl(&dword_238DAE000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PASEFail", "%u", buf, 8u);
      }
    }

    else
    {
      v13 = (*(**(a1 + 104) + 16))(*(a1 + 104));
      v15 = HIDWORD(v14);
      LODWORD(v14) = 0;
    }
  }

  else
  {
    LODWORD(v14) = 47;
    LODWORD(v15) = 259;
  }

  v31 = sub_23948B4CC(v13);
  if (os_signpost_enabled(v31))
  {
    *buf = 136315394;
    *&buf[4] = "PASESession";
    v34 = 2080;
    v35 = "Pair";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v31, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v14 | (v15 << 32);
}

unint64_t sub_2393EC380(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v2))
  {
    *buf = 136315394;
    v30 = "PASESession";
    v31 = 2080;
    v32 = "SendPBKDFParamRequest";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v4 = sub_2393E1D10(a1 + 16, v3, buf);
  if (buf[0] != 1)
  {
    v5 = 3;
    v6 = 348;
    goto LABEL_18;
  }

  v4 = sub_2393F888C((a1 + 1657), 0x20uLL);
  v5 = v4;
  if (v4)
  {
    v6 = HIDWORD(v4);
    goto LABEL_18;
  }

  sub_2393D9C18(0x6DuLL, 0x26u, &v25);
  if (!v25)
  {
    v6 = 360;
    v5 = 11;
    goto LABEL_18;
  }

  sub_2393C7B90(buf);
  v33[1] = 0;
  v33[2] = 0;
  v33[0] = &unk_284BB83A8;
  v34 = 0;
  sub_238EA16C4(v33, &v25, 0);
  sub_2393C7BF0(buf, v33, 0xFFFFFFFF);
  v24 = -1;
  v7 = sub_2393C8CE0(buf, 0x100uLL, 21, &v24);
  v5 = v7;
  if (v7)
  {
    v6 = HIDWORD(v7);
    goto LABEL_16;
  }

  v8 = sub_2393C83AC(buf, 1uLL, (a1 + 1657), 32);
  if (v8)
  {
    goto LABEL_15;
  }

  sub_2393E1D10(a1 + 16, v9, v26);
  v11 = sub_238E0A934(v26, v10);
  v8 = sub_2393C818C(buf, 2uLL, LOWORD(v11->super.isa));
  if (v8)
  {
    goto LABEL_15;
  }

  v8 = sub_2393C818C(buf, 3uLL, 0);
  if (v8)
  {
    goto LABEL_15;
  }

  v8 = sub_2393C7E38(buf, 4uLL, *(a1 + 1656));
  if (v8)
  {
    goto LABEL_15;
  }

  if (*(a1 + 112) == 1)
  {
    v15 = sub_2393E1D9C((a1 + 112), v12);
    v8 = sub_2393EFE24(5uLL, v15, buf);
    if (!v8)
    {
      v8 = sub_2393C8DE0(buf, v24);
      if (!v8)
      {
        v8 = sub_238DD2EFC(buf, &v25);
        if (!v8)
        {
          sub_238DB6950(v26, *(v25 + 1), *(v25 + 3));
          v8 = sub_2393F7FF0((a1 + 1696), *v26, v27);
          if (!v8)
          {
            v17 = *sub_2393E088C((a1 + 88), v16);
            *v26 = 1;
            v8 = sub_239470478(v17, 0, 32, &v25, v26);
            if (!v8)
            {
              *(a1 + 164) = 8449;
              v19 = sub_2393E1D9C((a1 + 112), v18);
              v20 = *v19;
              v21 = *(v19 + 1);
              v22 = *(v19 + 4);
              v23 = sub_2393D9044(0xBu);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *v26 = 67109632;
                *&v26[4] = v20;
                LOWORD(v27) = 1024;
                *(&v27 + 2) = v21;
                HIWORD(v27) = 1024;
                v28 = v22;
                _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_DEFAULT, "Sent PBKDF param request [II:%ums AI:%ums AT:%ums)", v26, 0x14u);
              }

              if (sub_2393D5398(2u))
              {
                sub_2393D5320(11, 2, "Sent PBKDF param request [II:%ums AI:%ums AT:%ums)", v20, v21, v22);
              }

              v6 = 0;
              v5 = 0;
              goto LABEL_16;
            }
          }
        }
      }
    }

LABEL_15:
    v6 = HIDWORD(v8);
    v5 = v8;
    goto LABEL_16;
  }

  v5 = 3;
  v6 = 373;
LABEL_16:
  sub_2393B8400(v33);
  v4 = v25;
  if (v25)
  {
    sub_2393D96C8(v25);
  }

LABEL_18:
  v13 = sub_23948B4CC(v4);
  if (os_signpost_enabled(v13))
  {
    *buf = 136315394;
    v30 = "PASESession";
    v31 = 2080;
    v32 = "SendPBKDFParamRequest";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v5 | (v6 << 32);
}

void sub_2393EC7B4(_BYTE *a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v20 = "PASESession";
    v21 = 2080;
    v22 = "OnResponseTimeout";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (a2)
  {
    if (a1[88] != 1 || *sub_2393E088C(a1 + 88, v5) == a2)
    {
      v8 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = *sub_2393ECAEC(a1 + 164, v9);
        *buf = 67109120;
        LODWORD(v20) = v10;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "PASESession timed out while waiting for a response from the peer. Expected message type was %u", buf, 8u);
      }

      v11 = a1 + 16;
      v12 = sub_2393D5398(1u);
      if (v12)
      {
        v14 = sub_2393ECAEC(a1 + 164, v13);
        sub_2393D5320(11, 1, "PASESession timed out while waiting for a response from the peer. Expected message type was %u", *v14);
      }

      v15 = sub_23948B4CC(v12);
      if (os_signpost_enabled(v15))
      {
        ++dword_27DF77760;
        *buf = 67109120;
        LODWORD(v20) = dword_27DF77760;
        _os_signpost_emit_with_name_impl(&dword_238DAE000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PASETimeout", "%u", buf, 8u);
      }

      sub_2393EFD90(v11, v16);
      sub_2393EB49C(a1);
      v7 = sub_2393EFDEC(v11);
    }

    else
    {
      v6 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "PASESession::OnResponseTimeout exchange doesn't match", buf, 2u);
      }

      v7 = sub_2393D5398(1u);
      if (v7)
      {
        sub_2393D5320(11, 1, "PASESession::OnResponseTimeout exchange doesn't match");
      }
    }
  }

  else
  {
    v17 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "PASESession::OnResponseTimeout was called by null exchange", buf, 2u);
    }

    v7 = sub_2393D5398(1u);
    if (v7)
    {
      sub_2393D5320(11, 1, "PASESession::OnResponseTimeout was called by null exchange");
    }
  }

  v18 = sub_23948B4CC(v7);
  if (os_signpost_enabled(v18))
  {
    *buf = 136315394;
    v20 = "PASESession";
    v21 = 2080;
    v22 = "OnResponseTimeout";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }
}

_BYTE *sub_2393ECAEC(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_239531094();
  }

  return a1 + 1;
}

unint64_t sub_2393ECB14(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 1872) != 1)
  {
    return 0x13B00000003;
  }

  v4 = *(*(a1 + 80) + 40);
  v11 = v4;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v5 = sub_2393F23EC(a1 + 168, v4, v12);
  v6 = v5;
  if (v5)
  {
    v7 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v10[0] = 0;
    v10[1] = 0;
    v9 = sub_23949158C(a2, v4, v12, v10, 0, *(a1 + 24));
    if (v9)
    {
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }

    if (v9)
    {
      v7 = v9 & 0xFFFFFFFF00000000;
    }

    else
    {
      v7 = 0;
    }
  }

  (*(*v11 + 48))(v11, v12);
  sub_2393F9144(v12, 33);
  return v7 | v6;
}

uint64_t sub_2393ECC5C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_2393C6B34(a3);
  if (!v6)
  {
    if (*(a3 + 16) != *a2)
    {
      v7 = 0;
      return v6 & 0xFFFFFFFF00000000 | v7;
    }

    result = sub_2393EFF04(*(a3 + 16), a3, a1 + 128);
    if (result)
    {
      return result;
    }

    v10 = sub_2393E088C((a1 + 88), v9);
    sub_238EA6DC0(*v10, &v13, v11);
    v12 = sub_2394953AC(v13);
    sub_2393ECD2C(v12, (a1 + 128));
    (*(*v13 + 32))(v13);
    v6 = sub_2393C6B34(a3);
  }

  v7 = v6;
  return v6 & 0xFFFFFFFF00000000 | v7;
}

uint64_t sub_2393ECD2C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 120) = *(a2 + 4);
  *(result + 112) = v2;
  LODWORD(v2) = *(a2 + 12);
  *(result + 124) = v2;
  if (v2 == 1)
  {
    *(result + 126) = *(a2 + 7);
  }

  v3 = *(a2 + 16);
  *(result + 128) = v3;
  if (v3 == 1)
  {
    *(result + 130) = *(a2 + 9);
  }

  v4 = *(a2 + 20);
  *(result + 132) = v4;
  if (v4 == 1)
  {
    *(result + 136) = *(a2 + 6);
  }

  *(result + 140) = *(a2 + 14);
  return result;
}

unint64_t sub_2393ECD90(uint64_t a1, void *a2, char a3)
{
  sub_238EA16C4(a1 + 64, a2, a3);

  return sub_2393C7BF0(a1, a1 + 64, 0xFFFFFFFF);
}

unint64_t sub_2393ECDD4(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v20 = "PASESession";
    v21 = 2080;
    v22 = "HandlePBKDFParamRequest";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  sub_2393C5AAC(buf);
  v23 = 0;
  v14 = 0;
  v15 = 21;
  v13 = 0;
  v5 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v17 = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Received PBKDF param request", v17, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(11, 3, "Received PBKDF param request");
  }

  sub_238DB6950(v17, *(*a2 + 8), *(*a2 + 24));
  v6 = sub_2393F7FF0((a1 + 1696), *v17, v18);
  if (!v6)
  {
    sub_238DD2F90(buf, a2);
    v6 = sub_2393C7114(buf, 21, 256);
    if (!v6)
    {
      v6 = sub_2393C6A2C(buf, &v15);
      if (!v6)
      {
        v6 = sub_2393C6FD0(buf, 1);
        if (!v6)
        {
          if (sub_2393C5CB8(buf) != 32)
          {
            v7 = 422;
            LODWORD(v6) = 35;
            goto LABEL_12;
          }

          v6 = sub_2393C6430(buf, v17, 0x20uLL);
          if (!v6)
          {
            v6 = sub_2393C6FD0(buf, 2);
            if (!v6)
            {
              v6 = sub_2393C5F70(buf, &v14 + 1);
              if (!v6)
              {
                if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
                {
                  *v16 = 67109120;
                  *&v16[4] = HIWORD(v14);
                  _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Peer assigned session ID %d", v16, 8u);
                }

                if (sub_2393D5398(3u))
                {
                  sub_2393D5320(11, 3, "Peer assigned session ID %d", HIWORD(v14));
                }

                v11 = HIWORD(v14);
                *(a1 + 160) = 1;
                *(a1 + 162) = v11;
                v6 = sub_2393C6FD0(buf, 3);
                if (!v6)
                {
                  v6 = sub_2393C5F70(buf, &v14);
                  if (!v6)
                  {
                    if (v14)
                    {
                      v7 = 433;
                      LODWORD(v6) = 56;
                      goto LABEL_12;
                    }

                    v6 = sub_2393C6FD0(buf, 4);
                    if (!v6)
                    {
                      v6 = sub_2393C5CE4(buf, &v13);
                      if (!v6)
                      {
                        *v16 = 5;
                        v12 = sub_2393ECC5C(a1, v16, buf);
                        LODWORD(v6) = v12;
                        if (v12 && v12 != 33)
                        {
                          v7 = HIDWORD(v12);
                          goto LABEL_12;
                        }

                        v6 = sub_2393C6A98(buf, v15);
                        if (!v6)
                        {
                          v6 = sub_2393ED22C(a1, v17, 0x20uLL, v13);
                          if (!v6)
                          {
                            (*(**(a1 + 104) + 16))(*(a1 + 104));
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

  v7 = HIDWORD(v6);
  if (v6)
  {
LABEL_12:
    sub_2393E3ED8(a1 + 16, (a1 + 88), 2);
    v6 = v6;
    goto LABEL_14;
  }

  v6 = 0;
LABEL_14:
  v8 = v23;
  if (v23)
  {
    sub_2393D96C8(v23);
  }

  v9 = sub_23948B4CC(v8);
  if (os_signpost_enabled(v9))
  {
    *buf = 136315394;
    v20 = "PASESession";
    v21 = 2080;
    v22 = "HandlePBKDFParamRequest";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v6 | (v7 << 32);
}

unint64_t sub_2393ED22C(uint64_t a1, char *a2, unint64_t a3, char a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    v29 = "PASESession";
    v30 = 2080;
    v31 = "SendPBKDFParamResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v10 = sub_2393E1D10(a1 + 16, v9, buf);
  if (buf[0] != 1)
  {
    v11 = 3;
    v12 = 468;
    goto LABEL_18;
  }

  v10 = sub_2393F888C((a1 + 1657), 0x20uLL);
  v11 = v10;
  if (v10)
  {
    v12 = HIDWORD(v10);
    goto LABEL_18;
  }

  sub_2393D9C18(*(a1 + 1820) + 152, 0x26u, &v27);
  if (!v27)
  {
    v12 = 481;
    v11 = 11;
    goto LABEL_18;
  }

  sub_2393C7B90(buf);
  v32[1] = 0;
  v32[2] = 0;
  v32[0] = &unk_284BB83A8;
  v33 = 0;
  sub_238EA16C4(v32, &v27, 0);
  sub_2393C7BF0(buf, v32, 0xFFFFFFFF);
  v26 = -1;
  v13 = sub_2393C8CE0(buf, 0x100uLL, 21, &v26);
  v11 = v13;
  if (v13)
  {
    v12 = HIDWORD(v13);
    goto LABEL_16;
  }

  v14 = sub_2393C8364(buf, 1uLL, a2, a3);
  if (v14)
  {
    goto LABEL_14;
  }

  v14 = sub_2393C83AC(buf, 2uLL, (a1 + 1657), 32);
  if (v14)
  {
    goto LABEL_14;
  }

  sub_2393E1D10(a1 + 16, v15, v25);
  v17 = sub_238E0A934(v25, v16);
  v14 = sub_2393C818C(buf, 3uLL, LOWORD(v17->super.isa));
  if (v14)
  {
    goto LABEL_14;
  }

  if ((a4 & 1) == 0)
  {
    LODWORD(v25[0]) = 0;
    v14 = sub_2393C8CE0(buf, 4uLL, 21, v25);
    if (v14 || (v14 = sub_2393C81D4(buf, 1uLL, *(a1 + 1816)), v14) || (v14 = sub_2393C83AC(buf, 2uLL, *(a1 + 1824), *(a1 + 1820)), v14))
    {
      v12 = HIDWORD(v14);
      goto LABEL_15;
    }

    v14 = sub_2393C8DE0(buf, v25[0]);
    if (v14)
    {
LABEL_14:
      v12 = HIDWORD(v14);
LABEL_15:
      v11 = v14;
      goto LABEL_16;
    }
  }

  if (*(a1 + 112) == 1)
  {
    v21 = sub_2393E1D9C((a1 + 112), v18);
    v14 = sub_2393EFE24(5uLL, v21, buf);
    if (!v14)
    {
      v14 = sub_2393C8DE0(buf, v26);
      if (!v14)
      {
        v14 = sub_238DD2EFC(buf, &v27);
        if (!v14)
        {
          sub_238DB6950(v25, *(v27 + 1), *(v27 + 3));
          v14 = sub_2393F7FF0((a1 + 1696), v25[0], v25[1]);
          if (!v14)
          {
            v14 = sub_2393EBBD0(a1);
            if (!v14)
            {
              v23 = *sub_2393E088C((a1 + 88), v22);
              LOWORD(v25[0]) = 1;
              v14 = sub_239470478(v23, 0, 33, &v27, v25);
              if (!v14)
              {
                v24 = sub_2393D9044(0xBu);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                {
                  LOWORD(v25[0]) = 0;
                  _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_INFO, "Sent PBKDF param response", v25, 2u);
                }

                if (sub_2393D5398(3u))
                {
                  sub_2393D5320(11, 3, "Sent PBKDF param response");
                }

                v12 = 0;
                v11 = 0;
                *(a1 + 164) = 8705;
                goto LABEL_16;
              }
            }
          }
        }
      }
    }

    goto LABEL_14;
  }

  v11 = 3;
  v12 = 504;
LABEL_16:
  sub_2393B8400(v32);
  v10 = v27;
  if (v27)
  {
    sub_2393D96C8(v27);
  }

LABEL_18:
  v19 = sub_23948B4CC(v10);
  if (os_signpost_enabled(v19))
  {
    *buf = 136315394;
    v29 = "PASESession";
    v30 = 2080;
    v31 = "SendPBKDFParamResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v11 | (v12 << 32);
}

unint64_t sub_2393ED6A4(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v27 = "PASESession";
    v28 = 2080;
    v29 = "HandlePBKDFParamResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  sub_2393C5AAC(buf);
  v30 = 0;
  v19 = 21;
  v18 = 0;
  v17 = 0uLL;
  memset(v21, 0, sizeof(v21));
  v5 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v22 = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Received PBKDF param response", v22, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(11, 3, "Received PBKDF param response");
  }

  sub_238DB6950(v22, *(*a2 + 8), *(*a2 + 24));
  v6 = sub_2393F7FF0((a1 + 1696), *v22, v23);
  if (!v6)
  {
    sub_238DD2F90(buf, a2);
    v6 = sub_2393C7114(buf, v19, 256);
    if (!v6)
    {
      v6 = sub_2393C6A2C(buf, &v19);
      if (!v6)
      {
        v6 = sub_2393C6FD0(buf, 1);
        if (!v6)
        {
          v6 = sub_2393C6430(buf, v22, 0x20uLL);
          if (!v6)
          {
            if (*v22 != *(a1 + 1657) || v23 != *(a1 + 1665) || v24 != *(a1 + 1673) || v25 != *(a1 + 1681))
            {
              v7 = 549;
              LODWORD(v6) = 56;
              goto LABEL_13;
            }

            v6 = sub_2393C6FD0(buf, 2);
            if (!v6)
            {
              if (sub_2393C5CB8(buf) == 32)
              {
                v6 = sub_2393C6430(buf, v22, 0x20uLL);
                if (v6)
                {
                  goto LABEL_12;
                }

                v6 = sub_2393C6FD0(buf, 3);
                if (v6)
                {
                  goto LABEL_12;
                }

                v6 = sub_2393C5F70(buf, &v18);
                if (v6)
                {
                  goto LABEL_12;
                }

                if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
                {
                  *v20 = 67109120;
                  *&v20[4] = v18;
                  _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Peer assigned session ID %d", v20, 8u);
                }

                if (sub_2393D5398(3u))
                {
                  sub_2393D5320(11, 3, "Peer assigned session ID %d", v18);
                }

                v14 = v18;
                *(a1 + 160) = 1;
                *(a1 + 162) = v14;
                if (*(a1 + 1656) == 1)
                {
                  *v20 = 5;
                  v15 = sub_2393ECC5C(a1, v20, buf);
                  v6 = v15;
                  if (v15 == 33 || !v15)
                  {
                    sub_238DB6950(&v17, *(a1 + 1824), *(a1 + 1820));
LABEL_44:
                    v6 = sub_2393C6A98(buf, v19);
                    if (!v6)
                    {
                      v6 = sub_2393EBBD0(a1);
                      if (!v6)
                      {
                        v6 = sub_2393F2940(*(a1 + 1816), &v17, *(a1 + 1652), v21, 0x50u);
                        if (!v6)
                        {
                          v6 = sub_2393F1874(a1 + 168, 0, 0, 0, 0, v21, 40, &v21[2] + 8, 40);
                          if (!v6)
                          {
                            v6 = sub_2393EDC38(a1);
                          }
                        }
                      }
                    }

                    goto LABEL_12;
                  }

LABEL_62:
                  v7 = HIDWORD(v6);
                  goto LABEL_13;
                }

                v6 = sub_2393C6FD0(buf, 4);
                if (v6)
                {
                  goto LABEL_12;
                }

                v6 = sub_2393C6A2C(buf, &v19);
                if (v6)
                {
                  goto LABEL_12;
                }

                v6 = sub_2393C6FD0(buf, 1);
                if (v6)
                {
                  goto LABEL_12;
                }

                v6 = sub_2393C5FC8(buf, (a1 + 1816));
                if (v6)
                {
                  goto LABEL_12;
                }

                v6 = sub_2393C6FD0(buf, 2);
                if (v6)
                {
                  goto LABEL_12;
                }

                if (sub_2393C5CB8(buf) >= 0x10 && sub_2393C5CB8(buf) <= 0x20)
                {
                  v6 = sub_2393C60CC(buf, &v17);
                  if (v6)
                  {
                    goto LABEL_12;
                  }

                  v6 = sub_2393C6A98(buf, v19);
                  if (v6)
                  {
                    goto LABEL_12;
                  }

                  *v20 = 5;
                  v16 = sub_2393ECC5C(a1, v20, buf);
                  v6 = v16;
                  if (v16 == 33 || !v16)
                  {
                    goto LABEL_44;
                  }

                  goto LABEL_62;
                }

                v7 = 584;
              }

              else
              {
                v7 = 553;
              }

              LODWORD(v6) = 35;
              goto LABEL_13;
            }
          }
        }
      }
    }
  }

LABEL_12:
  v7 = HIDWORD(v6);
  if (v6)
  {
LABEL_13:
    sub_2393E3ED8(a1 + 16, (a1 + 88), 2);
    v6 = v6;
    goto LABEL_15;
  }

  v6 = 0;
LABEL_15:
  v8 = v30;
  if (v30)
  {
    sub_2393D96C8(v30);
  }

  v9 = sub_23948B4CC(v8);
  if (os_signpost_enabled(v9))
  {
    *buf = 136315394;
    v27 = "PASESession";
    v28 = 2080;
    v29 = "HandlePBKDFParamResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v6 | (v7 << 32);
}

unint64_t sub_2393EDC38(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v2))
  {
    *buf = 136315394;
    v19 = "PASESession";
    v20 = 2080;
    v21 = "SendMsg1";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  sub_2393D9C18(0x47uLL, 0x26u, &v16);
  if (v16)
  {
    sub_2393C7B90(buf);
    v22[1] = 0;
    v22[2] = 0;
    v22[0] = &unk_284BB83A8;
    v23 = 0;
    sub_238EA16C4(v22, &v16, 0);
    sub_2393C7BF0(buf, v22, 0xFFFFFFFF);
    v15 = -1;
    v4 = sub_2393C8CE0(buf, 0x100uLL, 21, &v15);
    v5 = v4;
    if (v4)
    {
      v6 = HIDWORD(v4);
    }

    else
    {
      v14 = 65;
      v7 = sub_2393F1998(a1 + 168, 0, 0, v17, &v14);
      if (v7)
      {
        v6 = HIDWORD(v7);
      }

      else if (v14 == 65)
      {
        v7 = sub_2393C8364(buf, 1uLL, v17, 0x41uLL);
        if (v7 || (v7 = sub_2393C8DE0(buf, v15), v7) || (v7 = sub_238DD2EFC(buf, &v16), v7) || (v9 = *sub_2393E088C((a1 + 88), v8), *v13 = 1, v7 = sub_239470478(v9, 0, 34, &v16, v13), v7))
        {
          v6 = HIDWORD(v7);
        }

        else
        {
          v12 = sub_2393D9044(0xBu);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *v13 = 0;
            _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "Sent spake2p msg1", v13, 2u);
          }

          if (sub_2393D5398(3u))
          {
            sub_2393D5320(11, 3, "Sent spake2p msg1");
          }

          v6 = 0;
          LODWORD(v7) = 0;
          *(a1 + 164) = 8961;
        }
      }

      else
      {
        LODWORD(v7) = 172;
        v6 = 640;
      }

      v5 = v7;
    }

    sub_2393B8400(v22);
    v3 = v16;
    if (v16)
    {
      sub_2393D96C8(v16);
    }
  }

  else
  {
    v6 = 628;
    v5 = 11;
  }

  v10 = sub_23948B4CC(v3);
  if (os_signpost_enabled(v10))
  {
    *buf = 136315394;
    v19 = "PASESession";
    v20 = 2080;
    v21 = "SendMsg1";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v5 | (v6 << 32);
}

uint64_t sub_2393EDF84(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v32 = "PASESession";
    v33 = 2080;
    v34 = "HandleMsg1_and_SendMsg2";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v30 = 65;
  v29 = 32;
  v5 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Received spake2p msg1", buf, 2u);
  }

  v6 = sub_2393D5398(3u);
  if (v6)
  {
    sub_2393D5320(11, 3, "Received spake2p msg1");
  }

  v7 = sub_23948B4CC(v6);
  if (os_signpost_enabled(v7))
  {
    *buf = 136315394;
    v32 = "PASESession";
    v33 = 2080;
    v34 = "Pake1";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  sub_2393C5AAC(v27);
  v28 = 0;
  v26 = 21;
  v25 = 0;
  sub_238DD2F90(v27, a2);
  v8 = sub_2393C7114(v27, 21, 256);
  if (v8)
  {
    goto LABEL_12;
  }

  v8 = sub_2393C6A2C(v27, &v26);
  if (v8)
  {
    goto LABEL_12;
  }

  v8 = sub_2393C6FD0(v27, 1);
  if (v8)
  {
    goto LABEL_12;
  }

  if (sub_2393C5CB8(v27) != 65)
  {
    v9 = 680;
    LODWORD(v8) = 35;
    goto LABEL_13;
  }

  v8 = sub_2393C6160(v27, &v25);
  if (v8 || (v8 = sub_2393C6A98(v27, v26), v8) || (v8 = sub_2393F1748(a1 + 168, 0, 0, 0, 0, a1 + 1552, 32, a1 + 1584, 65), v8) || (v8 = sub_2393F1998(a1 + 168, v25, 65, v38, &v30), v8))
  {
LABEL_12:
    v9 = HIDWORD(v8);
    if (!v8)
    {
      v10 = 0;
      goto LABEL_15;
    }

LABEL_13:
    sub_2393E3ED8(a1 + 16, (a1 + 88), 2);
    v10 = v8;
LABEL_15:
    v11 = v9 << 32;
    goto LABEL_16;
  }

  if (v30 == 65)
  {
    v8 = sub_2393F1B24((a1 + 168), v25, 65, v37, &v29);
    if (!v8)
    {
      if (*a2)
      {
        sub_2393D96C8(*a2);
      }

      *a2 = 0;
      sub_2393D9C18(v30 + v29 + 10, 0x26u, &v24);
      if (!v24)
      {
        v9 = 697;
        LODWORD(v8) = 11;
        goto LABEL_13;
      }

      sub_2393C7B90(buf);
      v35[1] = 0;
      v35[2] = 0;
      v35[0] = &unk_284BB83A8;
      v36 = 0;
      sub_2393ECD90(buf, &v24, 0);
      v23 = -1;
      v8 = sub_2393C8CE0(buf, 0x100uLL, 21, &v23);
      if (v8 || (v8 = sub_2393C8364(buf, 1uLL, v38, 0x41uLL), v8) || (v8 = sub_2393C8364(buf, 2uLL, v37, v29), v8) || (v8 = sub_2393C8DE0(buf, v23), v8) || (v8 = sub_238DD2EFC(buf, &v24), v8) || (v21 = *sub_2393E088C((a1 + 88), v17), v22 = 1, v8 = sub_239470478(v21, 0, 35, &v24, &v22), v8))
      {
        v18 = 10;
      }

      else
      {
        v18 = 0;
        *(a1 + 164) = 9217;
      }

      sub_2393B8400(v35);
      if (v24)
      {
        sub_2393D96C8(v24);
      }

      if (v18 != 10)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Sent spake2p msg2", buf, 2u);
        }

        v19 = sub_2393D5398(3u);
        if (v19)
        {
          sub_2393D5320(11, 3, "Sent spake2p msg2");
        }

        v20 = sub_23948B4CC(v19);
        if (os_signpost_enabled(v20))
        {
          ++dword_27DF77764;
          *buf = 67109120;
          LODWORD(v32) = dword_27DF77764;
          _os_signpost_emit_with_name_impl(&dword_238DAE000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Pake2", "%u", buf, 8u);
        }
      }
    }

    goto LABEL_12;
  }

  v11 = 0x2B100000000;
  v10 = 172;
LABEL_16:
  v12 = v28;
  if (v28)
  {
    sub_2393D96C8(v28);
  }

  v13 = sub_23948B4CC(v12);
  v14 = os_signpost_enabled(v13);
  if (v14)
  {
    *buf = 136315394;
    v32 = "PASESession";
    v33 = 2080;
    v34 = "Pake1";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v15 = sub_23948B4CC(v14);
  if (os_signpost_enabled(v15))
  {
    *buf = 136315394;
    v32 = "PASESession";
    v33 = 2080;
    v34 = "HandleMsg1_and_SendMsg2";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v11 | v10;
}

unint64_t sub_2393EE5C8(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v28 = "PASESession";
    v29 = 2080;
    v30 = "HandleMsg2_and_SendMsg3";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v26 = 32;
  v5 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Received spake2p msg2", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(11, 3, "Received spake2p msg2");
  }

  sub_2393C5AAC(v24);
  v25 = 0;
  v23 = 21;
  v21 = 0;
  v22 = 0;
  sub_238DD2F90(v24, a2);
  v6 = sub_2393C7114(v24, 21, 256);
  v7 = v6;
  if (v6)
  {
    v8 = HIDWORD(v6);
LABEL_12:
    sub_2393E3ED8(a1 + 16, (a1 + 88), 2);
    v10 = v7;
    goto LABEL_38;
  }

  v9 = sub_2393C6A2C(v24, &v23);
  if (v9 || (v9 = sub_2393C6FD0(v24, 1), v9))
  {
LABEL_11:
    v8 = HIDWORD(v9);
    v7 = v9;
    goto LABEL_12;
  }

  if (sub_2393C5CB8(v24) != 65)
  {
    v8 = 755;
LABEL_44:
    v7 = 35;
    goto LABEL_12;
  }

  v9 = sub_2393C6160(v24, &v22);
  if (v9)
  {
    goto LABEL_11;
  }

  v9 = sub_2393C6FD0(v24, 2);
  if (v9)
  {
    goto LABEL_11;
  }

  if (sub_2393C5CB8(v24) != 32)
  {
    v8 = 760;
    goto LABEL_44;
  }

  v9 = sub_2393C6160(v24, &v21);
  if (v9)
  {
    goto LABEL_11;
  }

  v9 = sub_2393C6A98(v24, v23);
  if (v9)
  {
    goto LABEL_11;
  }

  v9 = sub_2393F1B24((a1 + 168), v22, 65, v33, &v26);
  if (v9)
  {
    goto LABEL_11;
  }

  v9 = sub_2393F2200(a1 + 168, v21, 32);
  if (v9)
  {
    goto LABEL_11;
  }

  if (*a2)
  {
    sub_2393D96C8(*a2);
  }

  *a2 = 0;
  sub_2393D9C18(v26 + 6, 0x26u, &v20);
  if (!v20)
  {
    v8 = 778;
    v7 = 11;
    goto LABEL_12;
  }

  sub_2393C7B90(buf);
  v31[1] = 0;
  v31[2] = 0;
  v31[0] = &unk_284BB83A8;
  v32 = 0;
  sub_2393ECD90(buf, &v20, 0);
  v19 = -1;
  v11 = sub_2393C8CE0(buf, 0x100uLL, 21, &v19);
  if (v11 || (v11 = sub_2393C8364(buf, 1uLL, v33, v26), v11) || (v11 = sub_2393C8DE0(buf, v19), v11) || (v11 = sub_238DD2EFC(buf, &v20), v11) || (v17 = *sub_2393E088C((a1 + 88), v12), v18 = 1, v11 = sub_239470478(v17, 0, 36, &v20, &v18), v11))
  {
    v13 = 10;
  }

  else
  {
    v13 = 0;
    *(a1 + 164) = 16385;
  }

  v8 = HIDWORD(v11);
  sub_2393B8400(v31);
  if (v20)
  {
    sub_2393D96C8(v20);
  }

  if (v13 != 10)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Sent spake2p msg3", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(11, 3, "Sent spake2p msg3");
    }
  }

  v7 = v11;
  if (v11)
  {
    goto LABEL_12;
  }

  v10 = 0;
LABEL_38:
  v14 = v25;
  if (v25)
  {
    sub_2393D96C8(v25);
  }

  v15 = sub_23948B4CC(v14);
  if (os_signpost_enabled(v15))
  {
    *buf = 136315394;
    v28 = "PASESession";
    v29 = 2080;
    v30 = "HandleMsg2_and_SendMsg3";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v10 | (v8 << 32);
}

unint64_t sub_2393EEAA8(_BYTE *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v18 = "PASESession";
    v19 = 2080;
    v20 = "HandleMsg3";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v5 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Received spake2p msg3", buf, 2u);
  }

  v6 = sub_2393D5398(3u);
  if (v6)
  {
    sub_2393D5320(11, 3, "Received spake2p msg3");
  }

  v7 = sub_23948B4CC(v6);
  if (os_signpost_enabled(v7))
  {
    ++dword_27DF77768;
    *buf = 67109120;
    LODWORD(v18) = dword_27DF77768;
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Pake3", "%u", buf, 8u);
  }

  a1[164] = 0;
  sub_2393C5AAC(buf);
  v21 = 0;
  v16 = 21;
  v15 = 0;
  sub_238DD2F90(buf, a2);
  v8 = sub_2393C7114(buf, 21, 256);
  if (v8)
  {
    goto LABEL_12;
  }

  v8 = sub_2393C6A2C(buf, &v16);
  if (v8)
  {
    goto LABEL_12;
  }

  v8 = sub_2393C6FD0(buf, 1);
  if (v8)
  {
    goto LABEL_12;
  }

  if (sub_2393C5CB8(buf) != 32)
  {
    v9 = 0x33C00000000;
    v10 = 24;
    goto LABEL_13;
  }

  v8 = sub_2393C6160(buf, &v15);
  if (v8 || (v8 = sub_2393C6A98(buf, v16), v8) || (v8 = sub_2393F2200((a1 + 168), v15, 32), v8))
  {
LABEL_12:
    v9 = v8 & 0xFFFFFFFF00000000;
    v10 = v8;
LABEL_13:
    sub_2393E3ED8((a1 + 16), a1 + 88, 2);
    v8 = v9;
    goto LABEL_14;
  }

  sub_2393E3ED8((a1 + 16), a1 + 88, 0);
  a1[1872] = 1;
  sub_2393EF9A4((a1 + 16), v14);
  v10 = 0;
LABEL_14:
  v11 = v21;
  if (v21)
  {
    sub_2393D96C8(v21);
  }

  v12 = sub_23948B4CC(v11);
  if (os_signpost_enabled(v12))
  {
    *buf = 136315394;
    v18 = "PASESession";
    v19 = 2080;
    v20 = "HandleMsg3";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v8 | v10;
}

uint64_t sub_2393EEDF8(uint64_t a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    v4 = 864;
  }

  else
  {
    v4 = 868;
  }

  if (a3 == 2)
  {
    v5 = 56;
  }

  else
  {
    v5 = 172;
  }

  v6 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109378;
    v10 = a3;
    v11 = 2080;
    v12 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Received error (protocol code %d) during PASE process: %s", buf, 0x12u);
  }

  if (sub_2393D5398(1u))
  {
    v7 = sub_2393C9138();
    sub_2393D5320(11, 1, "Received error (protocol code %d) during PASE process: %s", a3, v7);
  }

  return v5 | (v4 << 32);
}

uint64_t sub_2393EEF2C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  if (a2)
  {
    v8 = (a1 + 88);
    v7 = *(a1 + 88);
    v9 = (a1 + 88);
    if (v7 == 1)
    {
      if (*sub_2393E088C(v9, a2) != a2)
      {
        v11 = 0x37800000000;
LABEL_20:
        v12 = 47;
        return v12 | v11;
      }
    }

    else
    {
      sub_2393E0838(v9, a2);
    }

    v13 = sub_2393E088C(v8, v10);
    sub_238EA6DC0(*v13, &v28, v14);
    v15 = (*(*v28 + 16))(v28);
    (*(*v28 + 32))(v28);
    if (v15 == 1)
    {
      v17 = sub_2393E088C(v8, v16);
      sub_239470428(*v17, 30000);
      if (!*a4)
      {
        v11 = 0x38800000000;
        goto LABEL_20;
      }

      v20 = *(a1 + 164);
      v19 = (a1 + 164);
      if (v20)
      {
        v21 = sub_2393ECAEC(v19, v18);
        v22 = *(a3 + 2);
        v23 = *(a3 + 3);
        v24 = *a3;
        if (!*(a3 + 2) && !*(a3 + 3) && v24 == *v21)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v22 = *(a3 + 2);
        v23 = *(a3 + 3);
        v24 = *a3;
      }

      v11 = 0x38B00000000;
      v12 = 42;
      if (!v22 && !v23 && v24 == 64)
      {
LABEL_25:
        v11 = 0;
        v12 = 0;
      }
    }

    else
    {
      v25 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_ERROR, "PASESession received PBKDFParamRequest over encrypted session.  Ignoring.", v27, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(11, 1, "PASESession received PBKDFParamRequest over encrypted session.  Ignoring.");
      }

      v11 = 0x38300000000;
      v12 = 3;
    }
  }

  else
  {
    v11 = 0x36F00000000;
    v12 = 47;
  }

  return v12 | v11;
}

unint64_t sub_2393EF160(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    v23 = "PASESession";
    v24 = 2080;
    v25 = "OnMessageReceived";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v9 = sub_2393EEF2C(a1, a2, a3, a4);
  v11 = v9;
  if (!v9)
  {
    v12 = *a3;
    v13 = 963;
    LODWORD(v11) = 42;
    if (v12 > 34)
    {
      switch(v12)
      {
        case '#':
          v9 = sub_2393EE5C8(a1, a4);
          break;
        case '$':
          v9 = sub_2393EEAA8(a1, a4);
          break;
        case '@':
          v14 = a1[164] == 1 && *sub_2393ECAEC(a1 + 164, v10) == 64;
          v9 = sub_2393E90E8((a1 + 16), a4, v14);
          break;
        default:
          goto LABEL_22;
      }
    }

    else
    {
      switch(v12)
      {
        case ' ':
          v9 = sub_2393ECDD4(a1, a4);
          break;
        case '!':
          v9 = sub_2393ED6A4(a1, a4);
          break;
        case '""':
          v9 = sub_2393EDF84(a1, a4);
          break;
        default:
          goto LABEL_22;
      }
    }

    v11 = v9;
  }

  v13 = HIDWORD(v11);
  if (!v11)
  {
    v11 = 0;
    goto LABEL_30;
  }

LABEL_22:
  sub_2393EFD90(a1 + 16, v10);
  sub_2393EB49C(a1);
  v15 = sub_2393D9044(0xBu);
  v11 = v11;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = sub_2393C9138();
    *buf = 136315138;
    v23 = v16;
    _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Failed during PASE session setup: %s", buf, 0xCu);
  }

  v17 = sub_2393D5398(1u);
  if (v17)
  {
    v18 = sub_2393C9138();
    sub_2393D5320(11, 1, "Failed during PASE session setup: %s", v18);
  }

  v19 = sub_23948B4CC(v17);
  if (os_signpost_enabled(v19))
  {
    ++dword_27DF7776C;
    *buf = 67109120;
    LODWORD(v23) = dword_27DF7776C;
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PASEFail", "%u", buf, 8u);
  }

  v9 = sub_2393EFDEC((a1 + 16));
LABEL_30:
  v20 = sub_23948B4CC(v9);
  if (os_signpost_enabled(v20))
  {
    *buf = 136315394;
    v23 = "PASESession";
    v24 = 2080;
    v25 = "OnMessageReceived";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v11 | (v13 << 32);
}

uint64_t sub_2393EF4FC(void *a1, void *a2, uint64_t *a3)
{
  v6 = (*(*a1 + 56))(a1);
  sub_239497B60(a2, v6, a3, &v12);
  if (v12 == 1)
  {
    v8 = sub_238EA9094(&v12, v7);
    if (sub_239495B98(a1 + 2, v8))
    {
      v9 = 0;
      v10 = 0;
      a1[8] = a2;
    }

    else
    {
      v9 = 0x2400000000;
      v10 = 172;
    }
  }

  else
  {
    v9 = 0x2300000000;
    v10 = 11;
  }

  if (v12 == 1)
  {
    (*(*v13 + 32))(v13);
  }

  return v10 | v9;
}

unint64_t sub_2393EF60C(uint64_t *a1, __int128 *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = sub_238DE36B8(a1 + 40, a2);
  v5 = sub_239495304(*v4);
  v6 = (*(*a1 + 88))(a1, v5 + 176);
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    v9 = sub_2393EF97C(a1, v7);
    v10 = *a2;
    *(v5 + 112) = *(a2 + 4);
    *(v5 + 96) = v10;
    *(v5 + 116) = *(a2 + 5);
    *(v5 + 120) = *(a2 + 3);
    *(v5 + 264) = 2;
    *(v5 + 272) = 0;
    *(v5 + 280) = 0;
    *buf = v5 + 280;
    *v27 = 0;
    sub_2393F030C(buf, 0x20uLL);
    *buf = (*(*a1 + 72))(a1);
    v27[0] = v11;
    v24 = (*(*a1 + 64))(a1);
    v25 = v12;
    v13 = (*(*a1 + 80))(a1);
    sub_239492BE0(v5, buf, &v24, v13, v14, v9, a1 + 14);
    v15 = sub_2393D9044(1u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = (*(*a1 + 64))(a1) >> 32;
      v17 = (*(*a1 + 64))(a1);
      (*(*a1 + 64))(a1);
      v18 = *(v5 + 92);
      *buf = 67110144;
      *&buf[4] = v16;
      *v27 = 1024;
      *&v27[2] = v17;
      v28 = 1024;
      v29 = v19;
      v30 = 1024;
      v31 = v18;
      v32 = 1024;
      v33 = v9;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_INFO, "New secure session activated for device <%08X%08X, %d>, LSID:%d PSID:%d!", buf, 0x20u);
    }

    if (sub_2393D5398(3u))
    {
      v20 = (*(*a1 + 64))(a1) >> 32;
      v21 = (*(*a1 + 64))(a1);
      (*(*a1 + 64))(a1);
      sub_2393D5320(1, 3, "New secure session activated for device <%08X%08X, %d>, LSID:%d PSID:%d!", v20, v21, v22, *(v5 + 92), v9);
    }

    v8 = 0;
    LODWORD(v6) = 0;
  }

  return v6 | v8;
}

uint64_t sub_2393EF97C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 144);
  v2 = (a1 + 144);
  if ((v3 & 1) == 0)
  {
    sub_239531A9C();
  }

  return LOWORD(sub_238E0A934(v2, a2)->super.isa);
}

uint64_t sub_2393EF9A4(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = sub_2393E088C((a1 + 72), a2);
  sub_238EA6DC0(*v3, &v41, v4);
  v5 = sub_2394953AC(v41);
  v37 = *(v5 + 64);
  v6 = *(v5 + 84);
  v38 = *(v5 + 80);
  v39 = v6;
  v40 = *(v5 + 88);
  (*(*v41 + 32))(v41);
  v8 = v38;
  if (v38 != 3)
  {
    goto LABEL_12;
  }

  v9 = sub_2393E088C((a1 + 72), v7);
  sub_238EA6DC0(*v9, &v41, v10);
  v11 = *(sub_2394953AC(v41) + 32);
  if (v11)
  {
    v13 = sub_2393E967C(v11, v12);
  }

  else
  {
    v13 = 0;
  }

  (*(*v41 + 32))(v41);
  v15 = sub_238DE36B8((a1 + 40), v14);
  v16 = sub_239495304(*v15);
  v17 = *(v16 + 32);
  if (v17 != v13)
  {
    if (v13)
    {
      v18 = sub_2393E967C(v13, v7);
      v17 = *(v16 + 32);
      if (!v17)
      {
LABEL_9:
        *(v16 + 32) = v18;
        goto LABEL_10;
      }
    }

    else
    {
      v18 = 0;
      if (!v17)
      {
        goto LABEL_9;
      }
    }

    sub_2393E9744(v17, v7);
    goto LABEL_9;
  }

LABEL_10:
  if (v13)
  {
    sub_2393E9744(v13, v7);
  }

LABEL_12:
  sub_2393EFD90(a1, v7);
  v20 = sub_2393EF60C(a1, &v37);
  if (v20)
  {
    result = *(a1 + 88);
    if (result)
    {
      *(a1 + 88) = 0;
      return (*(*result + 8))(result, v20, v19, 1);
    }
  }

  else
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      sub_239531B34();
    }

    v41 = 0u;
    v42 = 0u;
    v43 = 0;
    LOWORD(v41) = -32744;
    BYTE2(v42) = v8;
    v22 = sub_238DE36B8((a1 + 40), v19);
    BYTE1(v42) = *(sub_239495304(*v22) + 57);
    v24 = sub_238DE36B8((a1 + 40), v23);
    WORD2(v42) = *(sub_239495304(*v24) + 92);
    v26 = sub_238DE36B8((a1 + 40), v25);
    *(&v41 + 1) = (*(**v26 + 48))(*v26);
    v28 = sub_238DE36B8((a1 + 40), v27);
    (*(**v28 + 48))(*v28);
    LOBYTE(v42) = v29;
    if (qword_27DF7BD08 != -1)
    {
      sub_239531BCC();
    }

    if (sub_239479EA8(&byte_27DF7BCA8, &v41))
    {
      v31 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *v35 = 0;
        _os_log_impl(&dword_238DAE000, v31, OS_LOG_TYPE_ERROR, "Failed to post Secure Session established event", v35, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(11, 1, "Failed to post Secure Session established event");
      }
    }

    v32 = *(a1 + 88);
    *(a1 + 88) = 0;
    if (*(a1 + 40) == 1)
    {
      v36 = *sub_238DE36B8((a1 + 40), v30);
      (*(*v36 + 24))(v36);
      v33 = 1;
    }

    else
    {
      v33 = 0;
    }

    v35[0] = v33;
    v34 = sub_238DE36B8(v35, v30);
    result = (*(*v32 + 24))(v32, v34);
    if (v35[0] == 1)
    {
      return (*(*v36 + 32))(v36);
    }
  }

  return result;
}

void sub_2393EFD90(_BYTE *result, uint64_t a2)
{
  v2 = result + 72;
  if (result[72] == 1)
  {
    *(*sub_2393E088C(result + 72, a2) + 40) = 0;
    if (*v2 == 1)
    {
      sub_2393E960C((*(result + 10) + 28), v4);
    }

    *v2 = 0;
  }
}

uint64_t sub_2393EFDEC(uint64_t a1)
{
  result = *(a1 + 88);
  if (result)
  {
    *(a1 + 88) = 0;
    return (*(*result + 8))();
  }

  return result;
}

unint64_t sub_2393EFE24(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a3, a1, 21, &v6);
  if (!result)
  {
    result = sub_2393C81D4(a3, 1uLL, *a2);
    if (!result)
    {
      result = sub_2393C81D4(a3, 2uLL, *(a2 + 4));
      if (!result)
      {
        result = sub_2393C818C(a3, 3uLL, *(a2 + 8));
        if (!result)
        {
          result = sub_2393C818C(a3, 4uLL, 0x13u);
          if (!result)
          {
            result = sub_2393C818C(a3, 5uLL, 0xCu);
            if (!result)
            {
              result = sub_2393C81D4(a3, 6uLL, 0x1050000u);
              if (!result)
              {
                result = sub_2393C818C(a3, 7uLL, 1u);
                if (!result)
                {
                  return sub_2393C8DE0(a3, v6);
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

unint64_t sub_2393EFF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != a1)
  {
    return 0;
  }

  v17 = v3;
  v18 = v4;
  v16 = 21;
  v7 = sub_2393C6A2C(a2, &v16);
  if (!v7)
  {
    v7 = sub_2393C6B34(a2);
    if (v7)
    {
LABEL_6:
      v8 = HIDWORD(v7);
      return v7 | (v8 << 32);
    }

    v10 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "Found MRP parameters in the message", v15, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(11, 3, "Found MRP parameters in the message");
    }

    v11 = *(a2 + 16);
    if (v11 == 1)
    {
      *v15 = 0;
      v7 = sub_2393C5FC8(a2, v15);
      if (v7)
      {
        goto LABEL_6;
      }

      *a3 = *v15;
      v7 = sub_2393C6B34(a2);
      v8 = HIDWORD(v7);
      if (v7)
      {
        goto LABEL_40;
      }

      LODWORD(v11) = *(a2 + 16);
    }

    else
    {
      v8 = 0;
      LODWORD(v7) = 0;
    }

    if (v11 == 2)
    {
      *v15 = 0;
      v7 = sub_2393C5FC8(a2, v15);
      if (v7)
      {
        goto LABEL_6;
      }

      *(a3 + 4) = *v15;
      v7 = sub_2393C6B34(a2);
      v8 = HIDWORD(v7);
      if (v7)
      {
        goto LABEL_40;
      }

      LODWORD(v11) = *(a2 + 16);
    }

    if (v11 == 3)
    {
      *v15 = 0;
      v7 = sub_2393C5F70(a2, v15);
      if (v7)
      {
        goto LABEL_6;
      }

      *(a3 + 8) = *v15;
      v7 = sub_2393C6B34(a2);
      v8 = HIDWORD(v7);
      if (v7)
      {
        goto LABEL_40;
      }

      LODWORD(v11) = *(a2 + 16);
    }

    if (v11 == 4)
    {
      *v15 = 0;
      v7 = sub_2393C5F70(a2, v15);
      if (v7)
      {
        goto LABEL_6;
      }

      v12 = *v15;
      *(a3 + 12) = 1;
      *(a3 + 14) = v12;
      v7 = sub_2393C6B34(a2);
      v8 = HIDWORD(v7);
      if (v7)
      {
        goto LABEL_40;
      }

      LODWORD(v11) = *(a2 + 16);
    }

    if (v11 == 5)
    {
      *v15 = 0;
      v7 = sub_2393C5F70(a2, v15);
      if (v7)
      {
        goto LABEL_6;
      }

      v13 = *v15;
      *(a3 + 16) = 1;
      *(a3 + 18) = v13;
      v7 = sub_2393C6B34(a2);
      v8 = HIDWORD(v7);
      if (v7)
      {
        goto LABEL_40;
      }

      LODWORD(v11) = *(a2 + 16);
    }

    if (v11 != 6)
    {
      goto LABEL_37;
    }

    *v15 = 0;
    v7 = sub_2393C5FC8(a2, v15);
    if (v7)
    {
      goto LABEL_6;
    }

    v14 = *v15;
    *(a3 + 20) = 1;
    *(a3 + 24) = v14;
    v7 = sub_2393C6B34(a2);
    v8 = HIDWORD(v7);
    if (!v7)
    {
      LODWORD(v11) = *(a2 + 16);
LABEL_37:
      if (v11 == 7)
      {
        *v15 = 0;
        v7 = sub_2393C5F70(a2, v15);
        if (v7)
        {
          goto LABEL_6;
        }

        *(a3 + 28) = *v15;
        v7 = sub_2393C6B34(a2);
        v8 = HIDWORD(v7);
      }
    }

LABEL_40:
    if (v7 != 33 && v7)
    {
      return v7 | (v8 << 32);
    }

    v7 = sub_2393C6A98(a2, v16);
    goto LABEL_6;
  }

  v8 = HIDWORD(v7);
  return v7 | (v8 << 32);
}

BOOL sub_2393F01B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v2 = (a1 + 40);
  if (v3 != 1)
  {
    return 0;
  }

  v4 = sub_238DE36B8(v2, a2);
  return *(sub_239495304(*v4) + 56) == 1;
}

void **sub_2393F01F8(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 72);
  if (*(a1 + 72) == 1)
  {
    v4 = sub_2393E088C((a1 + 72), a2);
    sub_239470A64(*v4);
    if (*v3 == 1)
    {
      sub_2393E960C((*(a1 + 80) + 28), a2);
    }

    *v3 = 0;
  }

  result = sub_239495804((a1 + 16), a2);
  *(a1 + 144) = 0;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_2393F0264(uint64_t result)
{
  v1 = result;
  if (*(result + 8))
  {
    v2 = *(result + 64);
    if (v2)
    {
      return (*(**(v2 + 24) + 80))(*(v2 + 24), sub_2393F03C4, result);
    }
  }

  else
  {
    result = *(result + 88);
    if (result)
    {
      *(v1 + 88) = 0;
      return (*(*result + 8))(result, 0x12400000002, "src/protocols/secure_channel/PairingSession.cpp", 1);
    }
  }

  return result;
}

void sub_2393F030C(_DWORD *a1, unint64_t a2)
{
  v2 = a2;
  v4 = a1[2];
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5 &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    v5 = (*a1 + 8);
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = *a1;
    *a1 += 8 * v7;
    *(v8 + 8 * v7) &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t sub_2393F03C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_2393D9044(1u);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "ASYNC CASE Session establishment failed", v5, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(1, 1, "ASYNC CASE Session establishment failed");
  }

  result = *(a2 + 88);
  if (result)
  {
    *(a2 + 88) = 0;
    return (*(*result + 8))(result, 0x13400000002, "src/protocols/secure_channel/PairingSession.cpp", 1);
  }

  return result;
}

unint64_t sub_2393F0490(uint64_t a1, int a2, int a3)
{
  v3 = 0x1000F001F0001uLL >> (a3 - 16);
  if ((a3 - 16) > 0x30)
  {
    LOBYTE(v3) = 0;
  }

  if (a2)
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

uint64_t *sub_2393F04F8@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v4[sub_2393D54A8(a1, 16, v4)] = 0;
  return sub_239296DA0(a2, "g/s/%s", v4);
}

unint64_t sub_2393F0574(uint64_t a1, unint64_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  sub_2393C7B90(v11);
  sub_2393C7BB8(v11, v15, 0x3C6uLL);
  v10 = 0;
  v4 = sub_2393C8CE0(v11, 0x100uLL, 22, &v10);
  if (!v4)
  {
    if (*a2)
    {
      v7 = 0;
      v8 = a2 + 2;
      while (1)
      {
        LODWORD(v13[0]) = 0;
        v4 = sub_2393C8CE0(v11, 0x100uLL, 21, v13);
        if (v4)
        {
          break;
        }

        v4 = sub_2393C8140(v11, 1uLL, *v8);
        if (v4)
        {
          break;
        }

        v4 = sub_2393C8154(v11, 2uLL, *(v8 - 1));
        if (v4)
        {
          break;
        }

        v4 = sub_2393C8DE0(v11, v13[0]);
        if (v4)
        {
          break;
        }

        ++v7;
        v8 += 2;
        if (v7 >= *a2)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v4 = sub_2393C8DE0(v11, v10);
      if (!v4)
      {
        if (HIWORD(v12))
        {
          v5 = 0x4800000000;
          LODWORD(v4) = 25;
          return v4 | v5;
        }

        v9 = *(a1 + 8);
        v13[0] = *"g/sri";
        v13[1] = unk_2395C26A8;
        v14 = 0;
        v4 = (*(*v9 + 24))(v9, v13, v15, v12);
        if (!v4)
        {
          v5 = 0;
          LODWORD(v4) = 0;
          return v4 | v5;
        }
      }
    }
  }

  v5 = v4 & 0xFFFFFFFF00000000;
  return v4 | v5;
}

unint64_t sub_2393F0720(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v18 = 966;
  v3 = *(a1 + 8);
  v19[0] = *"g/sri";
  v19[1] = unk_2395C26A8;
  v20 = 0;
  if ((*(*v3 + 16))(v3, v19, v21, &v18))
  {
    result = 0;
    *a2 = 0;
  }

  else
  {
    sub_2393C5AAC(v19);
    sub_2393C5ADC(v19, v21, v18);
    v5 = sub_2393C7114(v19, 22, 256);
    v6 = v5;
    if (v5)
    {
      v7 = v5 & 0xFFFFFFFF00000000;
    }

    else
    {
      v17 = 0;
      v8 = sub_2393C6A2C(v19, &v17);
      if (!v8)
      {
        v9 = 0;
        v10 = a2 + 2;
        LODWORD(v8) = 11;
        while (1)
        {
          v11 = sub_2393C7114(v19, 21, 256);
          if (v11)
          {
            break;
          }

          if (v9 == 48)
          {
            v7 = 0x6800000000;
            goto LABEL_7;
          }

          v16 = 0;
          v11 = sub_2393C6A2C(v19, &v16);
          if (!v11)
          {
            v15 = 0;
            v12 = sub_2393C6FD0(v19, 1);
            if (v12 || (v12 = sub_2393C5ED0(v19, &v15), v12) || (v14 = 0, v12 = sub_2393C6FD0(v19, 2), v12) || (v12 = sub_2393C5F2C(v19, &v14), v12))
            {
              v8 = v12;
              goto LABEL_6;
            }

            v13 = v15;
            ++v9;
            *(v10 - 1) = v14;
            *v10 = v13;
            v10 += 16;
            v11 = sub_2393C6A98(v19, v16);
            if (!v11)
            {
              continue;
            }
          }

          goto LABEL_24;
        }

        if (v11 != 33)
        {
LABEL_24:
          v7 = v11 & 0xFFFFFFFF00000000;
          LODWORD(v8) = v11;
          goto LABEL_7;
        }

        v8 = sub_2393C6A98(v19, v17);
        if (!v8)
        {
          v8 = sub_2393C6AE0(v19);
          if (!v8)
          {
            v7 = 0;
            LODWORD(v8) = 0;
            *a2 = v9;
            goto LABEL_7;
          }
        }
      }

LABEL_6:
      v7 = v8 & 0xFFFFFFFF00000000;
LABEL_7:
      v6 = v8;
    }

    return v6 | v7;
  }

  return result;
}

unint64_t sub_2393F0968(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  sub_2393C7B90(v12);
  sub_2393C7BB8(v12, v15, 0x13uLL);
  v11 = 0;
  v6 = sub_2393C8CE0(v12, 0x100uLL, 21, &v11);
  if (v6)
  {
    goto LABEL_7;
  }

  v6 = sub_2393C8140(v12, 1uLL, *(a3 + 8));
  if (v6)
  {
    goto LABEL_7;
  }

  v6 = sub_2393C8154(v12, 2uLL, *a3);
  if (v6)
  {
    goto LABEL_7;
  }

  v6 = sub_2393C8DE0(v12, v11);
  if (v6)
  {
    goto LABEL_7;
  }

  v7 = v13;
  if (v13 >= 0x10000)
  {
    sub_239531C00();
  }

  v8 = *(a1 + 8);
  v16[sub_2393D54A8(a2, 16, v16)] = 0;
  sub_239296DA0(v14, "g/s/%s", v16);
  v6 = (*(*v8 + 24))(v8, v14, v15, v7);
  if (v6)
  {
LABEL_7:
    v9 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    v9 = 0;
    LODWORD(v6) = 0;
  }

  return v6 | v9;
}

unint64_t sub_2393F0ACC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 19;
  v4 = *(a1 + 8);
  v16[sub_2393D54A8(a2, 16, v16)] = 0;
  sub_239296DA0(v15, "g/s/%s", v16);
  v5 = (*(*v4 + 16))(v4, v15, v16, &v14);
  v6 = v5;
  if (v5 || (sub_2393C5AAC(v15), sub_2393C5ADC(v15, v16, v14), v5 = sub_2393C7114(v15, 21, 256), v6 = v5, v5) || (v13 = 0, v5 = sub_2393C6A2C(v15, &v13), v6 = v5, v5) || (v12 = 0, v5 = sub_2393C6FD0(v15, 1), v6 = v5, v5) || (v5 = sub_2393C5ED0(v15, &v12), v6 = v5, v5))
  {
    v7 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v11 = 0;
    v9 = sub_2393C6FD0(v15, 2);
    if (v9 || (v9 = sub_2393C5F2C(v15, &v11), v9) || (v9 = sub_2393C6A98(v15, v13), v9) || (v9 = sub_2393C6AE0(v15), v9))
    {
      v7 = v9 & 0xFFFFFFFF00000000;
    }

    else
    {
      v7 = 0;
      LODWORD(v9) = 0;
      v10 = v12;
      *a3 = v11;
      *(a3 + 8) = v10;
    }

    v6 = v9;
  }

  return v6 | v7;
}

uint64_t sub_2393F0C84(uint64_t a1, unsigned __int8 *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v5[sub_2393D54A8(a2, 16, v5)] = 0;
  sub_239296DA0(v4, "g/s/%s", v5);
  result = (*(*v2 + 32))(v2, v4);
  if (!result)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2393F0D3C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  sub_2393C7B90(v18);
  sub_2393C7BB8(v18, v23, 0x4AuLL);
  v17 = 0;
  v10 = sub_2393C8CE0(v18, 0x100uLL, 21, &v17);
  v11 = v10;
  if (v10 || (v10 = sub_2393C8364(v18, 3uLL, a3, 0x10uLL), v11 = v10, v10) || (sub_238DB6950(v20, a4, *(a4 + 32)), v10 = sub_2393C8364(v18, 4uLL, v20[0], v20[1]), v11 = v10, v10))
  {
    v12 = v10 & 0xFFFFFFFF00000000;
  }

  else
  {
    v21 = *a5;
    v22 = *(a5 + 2);
    v14 = sub_2393C8364(v18, 5uLL, &v21, 0xCuLL);
    if (v14)
    {
      goto LABEL_10;
    }

    v14 = sub_2393C8DE0(v18, v17);
    if (v14)
    {
      goto LABEL_10;
    }

    v15 = v19;
    if (v19 >= 0x10000)
    {
      sub_239531CB0();
    }

    v16 = *(a1 + 8);
    sub_239296DA0(v20, "f/%x/s/%08X%08X", *(a2 + 8), 0, HIDWORD(*a2));
    v14 = (*(*v16 + 24))(v16, v20, v23, v15);
    if (v14)
    {
LABEL_10:
      v12 = v14 & 0xFFFFFFFF00000000;
    }

    else
    {
      v12 = 0;
      LODWORD(v14) = 0;
    }

    v11 = v14;
  }

  return v11 | v12;
}

unint64_t sub_2393F0EF8(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4, uint64_t a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v20 = 74;
  v8 = *(a1 + 8);
  sub_239296DA0(v21, "f/%x/s/%08X%08X", *(a2 + 8), 0, HIDWORD(*a2));
  v9 = (*(*v8 + 16))(v8, v21, v22, &v20);
  v10 = v9;
  if (!v9)
  {
    sub_2393C5AAC(v21);
    sub_2393C5ADC(v21, v22, v20);
    v9 = sub_2393C7114(v21, 21, 256);
    v10 = v9;
    if (!v9)
    {
      v19 = 0;
      v9 = sub_2393C6A2C(v21, &v19);
      v10 = v9;
      if (!v9)
      {
        v18 = 0uLL;
        v13 = sub_2393C6FD0(v21, 3);
        if (!v13)
        {
          v13 = sub_2393C60CC(v21, &v18);
          if (!v13)
          {
            if (*(&v18 + 1) != 16)
            {
              v11 = 0xEE00000000;
              LODWORD(v13) = 16;
              goto LABEL_9;
            }

            *a3 = *v18;
            __src = 0uLL;
            v13 = sub_2393C6FD0(v21, 4);
            if (!v13)
            {
              v13 = sub_2393C60CC(v21, &__src);
              if (!v13)
              {
                v14 = *(&__src + 1);
                if (*(&__src + 1) > 0x20uLL)
                {
                  v11 = 0xF400000000;
                  LODWORD(v13) = 25;
                  goto LABEL_9;
                }

                memcpy(a4, __src, *(&__src + 1));
                a4[4] = v14;
                v16 = 0uLL;
                v13 = sub_2393C6FD0(v21, 5);
                if (!v13)
                {
                  v13 = sub_2393C60CC(v21, &v16);
                  if (!v13)
                  {
                    if (*(&v16 + 1) != 12)
                    {
                      v11 = 0xFC00000000;
                      LODWORD(v13) = 35;
                      goto LABEL_9;
                    }

                    v15 = *(v16 + 8);
                    *a5 = *v16;
                    *(a5 + 8) = v15;
                    v13 = sub_2393C6A98(v21, v19);
                    if (!v13)
                    {
                      v13 = sub_2393C6AE0(v21);
                      if (!v13)
                      {
                        LODWORD(v13) = 0;
                        v11 = 0;
                        goto LABEL_9;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v11 = v13 & 0xFFFFFFFF00000000;
LABEL_9:
        v10 = v13;
        return v11 | v10;
      }
    }
  }

  v11 = v9 & 0xFFFFFFFF00000000;
  return v11 | v10;
}

uint64_t sub_2393F1158(uint64_t a1, uint64_t a2)
{
  *&v4[33] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  sub_239296DA0(v4, "f/%x/s/%08X%08X", *(a2 + 8), 0, HIDWORD(*a2));
  result = (*(*v2 + 32))(v2, v4);
  if (!result)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2393F1230(uint64_t a1, uint64_t a2, uint64_t a3, _WORD **a4)
{
  result = 0x2600000003;
  if (*(a3 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a3 + 6) == 0;
  }

  if (v5 && *a3 == 64)
  {
    sub_238EA6DC0(a2, &v15, a2);
    if ((*(*v15 + 16))(v15) == 2)
    {
      sub_23946FC58(v13);
      v12 = *a4;
      *a4 = 0;
      v7 = sub_23946FCAC(v13, &v12);
      if (v12)
      {
        sub_2393D96C8(v12);
      }

      v12 = 0;
      if (v7)
      {
        v8 = v7 & 0xFFFFFFFF00000000;
      }

      else
      {
        LODWORD(v7) = 0;
        if (v13[0])
        {
          v8 = 0;
        }

        else
        {
          v8 = 0;
          if (v13[3] == 3)
          {
            v9 = sub_2393D9044(5u);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *v11 = 0;
              _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Received CloseSession status message, closing session", v11, 2u);
            }

            if (sub_2393D5398(2u))
            {
              sub_2393D5320(5, 2, "Received CloseSession status message, closing session");
            }

            v10 = sub_239495304(v15);
            sub_239493268(v10);
            LODWORD(v7) = 0;
            v8 = 0;
          }
        }
      }

      if (v14)
      {
        sub_2393D96C8(v14);
      }

      v7 = v7;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    (*(*v15 + 32))(v15);
    return v8 | v7;
  }

  return result;
}

unint64_t sub_2393F1458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = a3;
  v6 = (*(*a1 + 184))(a1, v9, 8);
  if (v6 || a2 && (v6 = (*(*a1 + 184))(a1, a2, a3), v6))
  {
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v6) = 0;
    v7 = 0;
  }

  return v7 | v6;
}

double sub_2393F1544(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_284BB8CE8;
  *(a1 + 113) = 0;
  *(a1 + 128) = a4;
  *(a1 + 136) = a3;
  *(a1 + 120) = a2;
  *(a1 + 208) = a1 + 144;
  *(a1 + 216) = a1 + 144 + (a4 >> 1);
  *(a1 + 224) = a1 + 176;
  *(a1 + 232) = a1 + 176 + (a4 >> 1);
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  return result;
}

unint64_t sub_2393F15A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 113))
  {
    (*(*a1 + 24))(a1);
  }

  v6 = (*(*a1 + 176))(a1);
  if (v6 || (v6 = (*(*a1 + 104))(a1, &unk_2395C26F5, 65, *(a1 + 8)), v6) || (v6 = (*(*a1 + 104))(a1, &unk_2395C2736, 65, *(a1 + 16)), v6) || (v6 = sub_2393F1458(a1, a2, a3), v6))
  {
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v6) = 0;
    v7 = 0;
    *(a1 + 113) = 1;
  }

  return v7 | v6;
}

unint64_t sub_2393F16DC(uint64_t a1)
{
  v2 = sub_2393F1458(a1, &unk_2395C26F5, 65);
  if (v2)
  {
    v3 = v2 & 0xFFFFFFFF00000000;
  }

  else
  {
    v2 = sub_2393F1458(a1, &unk_2395C2736, 65);
    v3 = v2 & 0xFFFFFFFF00000000;
    if (!v2)
    {
      LODWORD(v2) = 0;
      v3 = 0;
    }
  }

  return v3 | v2;
}

unint64_t sub_2393F1748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 113) == 1)
  {
    v15 = sub_2393F1458(a1, a4, a5);
    if (v15 || (v15 = sub_2393F1458(a1, a2, a3), v15) || (v15 = sub_2393F16DC(a1), v15) || (v15 = (*(*a1 + 72))(a1, a6, a7, *(a1 + 72)), v15) || (v15 = (*(*a1 + 104))(a1, a8, a9, *(a1 + 48)), v15))
    {
      v16 = v15 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v15) = 0;
      v16 = 0;
      *(a1 + 112) = 512;
    }
  }

  else
  {
    v16 = 0x14300000000;
    LODWORD(v15) = 172;
  }

  return v16 | v15;
}

unint64_t sub_2393F1874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 113) == 1)
  {
    v15 = sub_2393F1458(a1, a2, a3);
    if (v15 || (v15 = sub_2393F1458(a1, a4, a5), v15) || (v15 = sub_2393F16DC(a1), v15) || (v15 = (*(*a1 + 72))(a1, a6, a7, *(a1 + 72)), v15) || (v15 = (*(*a1 + 72))(a1, a8, a9, *(a1 + 80)), v15))
    {
      v16 = v15 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v15) = 0;
      v16 = 0;
      *(a1 + 112) = 513;
    }
  }

  else
  {
    v16 = 0x15400000000;
    LODWORD(v15) = 172;
  }

  return v16 | v15;
}

uint64_t sub_2393F1998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*(a1 + 113) != 2)
  {
    result = 0x167000000ACLL;
    goto LABEL_5;
  }

  if (*a5 < *(a1 + 136))
  {
    result = 0x168000000ACLL;
LABEL_5:
    *a5 = *(a1 + 136);
    return result;
  }

  result = (*(*a1 + 88))(a1, *(a1 + 88), a3);
  if (!result)
  {
    result = 0x176000000ACLL;
    if (*(a1 + 112) == 1)
    {
      v9 = 32;
      v10 = 8;
    }

    else
    {
      if (*(a1 + 112))
      {
        goto LABEL_5;
      }

      v9 = 40;
      v10 = 16;
    }

    if (*(a1 + v10))
    {
      v11 = *(a1 + v9);
      if (v11)
      {
        result = (*(*a1 + 128))(a1, v11, *(a1 + 24), *(a1 + 88));
        if (!result)
        {
          result = (*(*a1 + 112))(a1, v11, a4, *a5);
          if (!result)
          {
            result = 0;
            *(a1 + 113) = 3;
          }
        }
      }

      else
      {
        result = 0x177000000ACLL;
      }
    }

    goto LABEL_5;
  }

  return result;
}

unint64_t sub_2393F1B24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  sub_238DB9BD8(v19, a4, *a5);
  if (*a5 < a1[16])
  {
    v9 = 0x18C000000ACLL;
    goto LABEL_30;
  }

  if (*(a1 + 113) != 3)
  {
    v9 = 0x18D000000ACLL;
    goto LABEL_30;
  }

  if (a1[17] != a3)
  {
    v9 = 0x18E000000ACLL;
    goto LABEL_30;
  }

  v9 = 0x1A4000000ACLL;
  if (!*(a1 + 112))
  {
    v10 = sub_2393F1458(a1, a2, a3);
    if (!v10)
    {
      v10 = (*(*a1 + 112))(a1, a1[5], v20, a1[17]);
      if (!v10)
      {
        v10 = sub_2393F1458(a1, v20, a1[17]);
        if (!v10)
        {
          v11 = 27;
          v12 = 4;
          v13 = 1;
          goto LABEL_18;
        }
      }
    }

LABEL_16:
    v9 = v10;
    goto LABEL_30;
  }

  if (*(a1 + 112) != 1)
  {
    goto LABEL_30;
  }

  v10 = (*(*a1 + 112))(a1, a1[4], v20, a3);
  if (v10)
  {
    goto LABEL_16;
  }

  v10 = sub_2393F1458(a1, v20, a1[17]);
  if (v10)
  {
    goto LABEL_16;
  }

  v10 = sub_2393F1458(a1, a2, a3);
  if (v10)
  {
    goto LABEL_16;
  }

  v11 = 26;
  v12 = 5;
  v13 = 2;
LABEL_18:
  v14 = a1[v13];
  if (v14)
  {
    v15 = a1[v12];
    if (!v15)
    {
      v9 = 0x1A5000000ACLL;
      goto LABEL_30;
    }

    v16 = a1[v11];
    v9 = (*(*a1 + 104))(a1, a2, a3, v15);
    if (!v9)
    {
      v9 = (*(*a1 + 152))(a1, v15);
      if (!v9)
      {
        v9 = (*(*a1 + 96))(a1, a1[13], a1[11], a1[9]);
        if (!v9)
        {
          v9 = (*(*a1 + 136))(a1, v14);
          if (!v9)
          {
            v9 = (*(*a1 + 128))(a1, a1[7], v15, a1[11], v14, a1[13]);
            if (!v9)
            {
              v9 = (*(*a1 + 144))(a1, a1[7]);
              if (!v9)
              {
                if (*(a1 + 112))
                {
                  if (*(a1 + 112) != 1)
                  {
LABEL_34:
                    v9 = (*(*a1 + 144))(a1, a1[8]);
                    if (!v9)
                    {
                      v9 = (*(*a1 + 112))(a1, a1[7], v20, a1[17]);
                      if (!v9)
                      {
                        v9 = sub_2393F1458(a1, v20, a1[17]);
                        if (!v9)
                        {
                          v9 = (*(*a1 + 112))(a1, a1[8], v20, a1[17]);
                          if (!v9)
                          {
                            v9 = sub_2393F1458(a1, v20, a1[17]);
                            if (!v9)
                            {
                              v9 = (*(*a1 + 80))(a1, a1[9], v20, a1[15]);
                              if (!v9)
                              {
                                v9 = sub_2393F1458(a1, v20, a1[15]);
                                if (!v9)
                                {
                                  v9 = sub_2393F2124(a1);
                                  if (!v9)
                                  {
                                    v9 = (*(*a1 + 200))(a1, v16, a1[16] >> 1, a2, a3, v19);
                                    if (!v9)
                                    {
                                      if (v19[1] == a1[16])
                                      {
                                        v9 = 0;
                                        *(a1 + 113) = 4;
                                      }

                                      else
                                      {
                                        v9 = 0x1C5000000ACLL;
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

                    goto LABEL_30;
                  }

                  v9 = (*(*a1 + 96))(a1, a1[13], a1[10], a1[9]);
                  if (v9)
                  {
                    goto LABEL_30;
                  }

                  v17 = (*(*a1 + 128))(a1, a1[8], v15, a1[10], v14, a1[13]);
                }

                else
                {
                  v17 = (*(*a1 + 120))(a1, a1[8], a1[6], a1[11]);
                }

                v9 = v17;
                if (v17)
                {
                  goto LABEL_30;
                }

                goto LABEL_34;
              }
            }
          }
        }
      }
    }
  }

LABEL_30:
  *a5 = a1[16];
  return v9;
}