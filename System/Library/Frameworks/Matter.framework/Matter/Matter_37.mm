BOOL sub_23945BB8C(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  if (sub_239403848(a1, "    Signature Algorithm: ") < 1 || sub_2393FD954(a1, *a2) < 1)
  {
    return 0;
  }

  if (sub_2394509E8(*a2) != 912 || (result = sub_23945B2B4(a1, a2, 9u), result))
  {
    if (a3)
    {

      return sub_239465534(a1, a3, 9u);
    }

    else
    {
      return sub_239403848(a1, "\n") > 0;
    }
  }

  return result;
}

uint64_t sub_23945BC5C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_239467004(a2, 0, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (!*v3)
  {
LABEL_16:
    v10 = 1;
    goto LABEL_19;
  }

  v5 = (v3 + 1);
  v6 = v3 + 2;
  v7 = v3 + 1;
  while (1)
  {
    v8 = *(v6 - 1);
    if (!*(v6 - 1))
    {
      break;
    }

    if (v8 == 47)
    {
      if (*v6 - 65 > 0x19 || (v9 = v6[1], v9 != 61) && ((v9 - 65) > 0x19 || v6[2] != 61))
      {
        v8 = 47;
        goto LABEL_15;
      }

      break;
    }

LABEL_15:
    ++v6;
    ++v7;
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  if (v7 - v5 == sub_239403738(a1, v5, v7 - v5))
  {
    if (!*(v6 - 1))
    {
      goto LABEL_16;
    }

    if (sub_239403738(a1, ", ", 2) == 2)
    {
      v8 = *(v6 - 1);
      v5 = v6;
      goto LABEL_15;
    }
  }

  sub_2394170F4(11, 0, 7, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/t_x509.c", 325);
  v10 = 0;
LABEL_19:
  sub_239450144(v4);
  return v10;
}

uint64_t sub_23945BD94(uint64_t a1, uint64_t a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (*a2)
    {
      sub_239404AE0(a1, "%*sTrusted Uses:\n%*s", a3, "", a3 + 2, "");
      if (sub_239431484(*a2))
      {
        v6 = 0;
        v7 = 0;
        do
        {
          if (v7)
          {
            sub_239403848(a1, ", ");
          }

          v8 = sub_239457528(*a2, v6);
          sub_239451134(__s, 80, v8, 0);
          sub_239403848(a1, __s);
          ++v6;
          v9 = sub_239431484(*a2);
          v7 = 1;
        }

        while (v6 < v9);
      }

      sub_239403848(a1, "\n");
    }

    else
    {
      sub_239404AE0(a1, "%*sNo Trusted Uses.\n", a3, "");
    }

    if (*(a2 + 8))
    {
      sub_239404AE0(a1, "%*sRejected Uses:\n%*s", a3, "", a3 + 2, "");
      if (sub_239431484(*(a2 + 8)))
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if (v11)
          {
            sub_239403848(a1, ", ");
          }

          v12 = sub_239457528(*(a2 + 8), v10);
          sub_239451134(__s, 80, v12, 0);
          sub_239403848(a1, __s);
          ++v10;
          v13 = sub_239431484(*(a2 + 8));
          v11 = 1;
        }

        while (v10 < v13);
      }

      sub_239403848(a1, "\n");
    }

    else
    {
      sub_239404AE0(a1, "%*sNo Rejected Uses.\n", a3, "");
    }

    v14 = *(a2 + 16);
    if (v14)
    {
      sub_239404AE0(a1, "%*sAlias: %.*s\n", a3, "", *v14, *(v14 + 8));
    }

    if (*(a2 + 24))
    {
      sub_239404AE0(a1, "%*sKey Id: ", a3, "");
      v15 = *(a2 + 24);
      if (*v15 >= 1)
      {
        v16 = 0;
        do
        {
          if (v16)
          {
            v17 = ":";
          }

          else
          {
            v17 = "";
          }

          sub_239404AE0(a1, "%s%02X", v17, *(*(v15 + 1) + v16++));
          v15 = *(a2 + 24);
        }

        while (v16 < *v15);
      }

      sub_239403738(a1, "\n", 1);
    }
  }

  return 1;
}

unint64_t *sub_23945C048(uint64_t a1, int **a2, unint64_t *a3)
{
  v12 = a3;
  if (!*a2)
  {
    goto LABEL_4;
  }

  v5 = sub_239463CC0(*(*a2 + 1), **a2);
  if (!v5)
  {
    sub_239450144(0);
    goto LABEL_11;
  }

  v6 = v5;
  v7 = sub_2394631D4("keyid", v5, &v12);
  sub_239450144(v6);
  if (v7)
  {
LABEL_4:
    v8 = a2[1];
    if (v8)
    {
      v9 = sub_23945C7F0(0, v8, v12);
      if (!v9)
      {
        goto LABEL_11;
      }

      v12 = v9;
    }

    v10 = a2[2];
    if (!v10 || sub_239463720("serial", v10, &v12))
    {
      return v12;
    }
  }

LABEL_11:
  if (!a3)
  {
    sub_239457574(v12, sub_23945C444, sub_239463380);
  }

  return 0;
}

void *sub_23945C134(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (sub_239431484(a3))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = sub_239457528(a3, v4);
      v8 = v7[1];
      if (!strcmp(v8, "keyid"))
      {
        v10 = v7[2];
        if (v10)
        {
          if (!strcmp(v10, "always"))
          {
            v6 = 2;
          }

          else
          {
            v6 = 1;
          }
        }

        else
        {
          v6 = 1;
        }
      }

      else
      {
        if (strcmp(v8, "issuer"))
        {
          sub_2394170F4(20, 0, 159, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_akey.c", 160);
          sub_2394171A0(2u, v15, v16, v17, v18, v19, v20, v21, "name=");
          return 0;
        }

        v9 = v7[2];
        if (v9)
        {
          if (!strcmp(v9, "always"))
          {
            v5 = 2;
          }

          else
          {
            v5 = 1;
          }
        }

        else
        {
          v5 = 1;
        }
      }

      if (++v4 >= sub_239431484(a3))
      {
        goto LABEL_18;
      }
    }
  }

  v6 = 0;
  v5 = 0;
LABEL_18:
  if (!a2)
  {
    goto LABEL_29;
  }

  v11 = *(a2 + 8);
  if (v11)
  {
    if (v6)
    {
      v12 = sub_239466114(*(a2 + 8), 82, 0xFFFFFFFFLL);
      if ((v12 & 0x80000000) != 0 || (v13 = sub_239466138(v11, v12)) == 0)
      {
        v14 = 0;
      }

      else
      {
        v14 = sub_239460968(v13);
      }

      if (v6 == 2 && !v14)
      {
        v23 = 155;
        v24 = 183;
        goto LABEL_30;
      }
    }

    else
    {
      v14 = 0;
    }

    v25 = v5 != 0;
    if (v14)
    {
      v25 = 0;
    }

    if (v5 == 2 || v25)
    {
      v30 = sub_239465C18(v11);
      v29 = sub_23946DE60(v30);
      sub_239465D40(v11);
      v31 = sub_2393FC990();
      v27 = v31;
      if (v29 && v31)
      {
        v32 = sub_23945C468();
        if (v32)
        {
          v26 = v32;
          v33 = sub_2394574D8();
          if (v33)
          {
            v28 = v33;
            v34 = sub_23945FF04();
            if (v34)
            {
              v35 = v34;
              if (sub_2394579D0(v28, v34))
              {
                *v35 = 4;
                v35[1] = v29;
                goto LABEL_41;
              }
            }
          }
        }
      }

      else
      {
        sub_2394170F4(20, 0, 154, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_akey.c", 192);
      }
    }

    else
    {
      v26 = sub_23945C468();
      v27 = 0;
      v28 = 0;
      v29 = 0;
      if (v26)
      {
LABEL_41:
        v26[1] = v28;
        v26[2] = v27;
        *v26 = v14;
        return v26;
      }
    }

    sub_23946DE54(v29);
    sub_239402ECC(v27);
    sub_239402ECC(v14);
    return 0;
  }

  if (*a2 != 1)
  {
LABEL_29:
    v23 = 140;
    v24 = 170;
LABEL_30:
    sub_2394170F4(20, 0, v23, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_akey.c", v24);
    return 0;
  }

  return sub_23945C468();
}

unint64_t *sub_23945C484(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = sub_2394574D8();
  if (!v5 || !sub_239431484(a3))
  {
    return v5;
  }

  v6 = 0;
  while (1)
  {
    v7 = sub_239457528(a3, v6);
    if (sub_239463EE4(v7[1], "email"))
    {
      v8 = v7[2];
      if (v8)
      {
        if (!strcmp(v8, "copy"))
        {
          v12 = a2;
          v13 = v5;
          v14 = 0;
          goto LABEL_15;
        }
      }
    }

    if (!sub_239463EE4(v7[1], "email"))
    {
      break;
    }

    v10 = v7[2];
    if (!v10 || strcmp(v10, "move"))
    {
      break;
    }

    v12 = a2;
    v13 = v5;
    v14 = 1;
LABEL_15:
    if (!sub_23945D1FC(v12, v13, v14))
    {
      goto LABEL_19;
    }

LABEL_16:
    if (++v6 >= sub_239431484(a3))
    {
      return v5;
    }
  }

  v11 = sub_23945CE0C(0, v9, a2, v7, 0);
  if (v11 && sub_2394579D0(v5, v11))
  {
    goto LABEL_16;
  }

  sub_23945FF10(v11);
LABEL_19:
  sub_239457574(v5, sub_23945D334, sub_23945FF10);
  return 0;
}

unint64_t *sub_23945C5F0(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = sub_2394574D8();
  if (!v5 || !sub_239431484(a3))
  {
    return v5;
  }

  v6 = 0;
  while (1)
  {
    v7 = sub_239457528(a3, v6);
    if (!sub_239463EE4(v7[1], "issuer") || (v9 = v7[2]) == 0 || strcmp(v9, "copy"))
    {
      v10 = sub_23945CE0C(0, v8, a2, v7, 0);
      if (!v10 || !sub_2394579D0(v5, v10))
      {
        sub_23945FF10(v10);
        goto LABEL_26;
      }

      goto LABEL_9;
    }

    if (!a2)
    {
      goto LABEL_23;
    }

    if (*a2 != 1)
    {
      v11 = *(a2 + 8);
      if (!v11)
      {
LABEL_23:
        sub_2394170F4(20, 0, 141, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_alt.c", 305);
        goto LABEL_26;
      }

      v12 = sub_239466114(v11, 85, 0xFFFFFFFFLL);
      if ((v12 & 0x80000000) == 0)
      {
        break;
      }
    }

LABEL_9:
    if (++v6 >= sub_239431484(a3))
    {
      return v5;
    }
  }

  v13 = sub_239466138(*(a2 + 8), v12);
  if (!v13 || (v14 = sub_239460968(v13)) == 0)
  {
    sub_2394170F4(20, 0, 136, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_alt.c", 318);
    v15 = 0;
    goto LABEL_25;
  }

  v15 = v14;
  if (!sub_239431484(v14))
  {
LABEL_21:
    sub_23945FF40(v15);
    goto LABEL_9;
  }

  v16 = 0;
  while (1)
  {
    v17 = sub_239457528(v15, v16);
    if (!sub_2394579D0(v5, v17))
    {
      break;
    }

    sub_23945754C(v15, v16++, 0);
    if (v16 >= sub_239431484(v15))
    {
      goto LABEL_21;
    }
  }

LABEL_25:
  sub_23945FF40(v15);
LABEL_26:
  sub_239457574(v5, sub_23945D334, sub_23945FF10);
  return 0;
}

unint64_t *sub_23945C7F0(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  if (sub_239431484(a2))
  {
    v5 = 0;
    v6 = a3;
    while (1)
    {
      v7 = sub_239457528(a2, v5);
      v8 = sub_23945C8C8(v7, v7, v6);
      if (!(a3 | v8))
      {
        break;
      }

      v6 = v8;
      if (v8)
      {
        if (++v5 < sub_239431484(a2))
        {
          continue;
        }
      }

      return v6;
    }

    sub_239457574(v6, sub_23945D1F0, sub_239463380);
    return 0;
  }

  v6 = a3;
  if (a3)
  {
    return v6;
  }

  return sub_2394574D8();
}

unint64_t *sub_23945C8C8(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v3 = *a2;
  if (*a2 <= 3)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v5 = *(a2 + 8);
        v6 = "DNS";
        goto LABEL_21;
      }

      if (v3 != 3)
      {
        return v16;
      }

      v4 = "X400Name";
    }

    else
    {
      if (v3)
      {
        if (v3 != 1)
        {
          return v16;
        }

        v5 = *(a2 + 8);
        v6 = "email";
        goto LABEL_21;
      }

      v4 = "othername";
    }

LABEL_18:
    v7 = "<unsupported>";
    goto LABEL_32;
  }

  if (v3 <= 5)
  {
    if (v3 == 4)
    {
      result = sub_239467004(*(a2 + 8), __str, 256);
      if (!result)
      {
        return result;
      }

      v4 = "DirName";
      goto LABEL_31;
    }

    if (v3 != 5)
    {
      return v16;
    }

    v4 = "EdiPartyName";
    goto LABEL_18;
  }

  switch(v3)
  {
    case 6:
      v5 = *(a2 + 8);
      v6 = "URI";
LABEL_21:
      if (!sub_239463368(v6, v5, &v16))
      {
        return 0;
      }

      return v16;
    case 7:
      v9 = *(a2 + 8);
      v10 = *(v9 + 1);
      v11 = *v9;
      if (v11 == 16)
      {
        __str[0] = 0;
        v13 = *v10;
        v12 = v10 + 3;
        snprintf(v15, 5uLL, "%X", __rev16(v13));
        sub_239450834(__str, v15, 0x100uLL);
        v14 = 7;
        do
        {
          sub_239450834(__str, ":", 0x100uLL);
          snprintf(v15, 5uLL, "%X", __rev16(*(v12 - 1)));
          sub_239450834(__str, v15, 0x100uLL);
          v12 += 2;
          --v14;
        }

        while (v14);
      }

      else
      {
        if (v11 != 4)
        {
          v4 = "IP Address";
          v7 = "<invalid>";
LABEL_32:
          if (sub_2394631D4(v4, v7, &v16))
          {
            return v16;
          }

          return 0;
        }

        snprintf(__str, 0x100uLL, "%d.%d.%d.%d", *v10, v10[1], v10[2], v10[3]);
      }

      v4 = "IP Address";
LABEL_31:
      v7 = __str;
      goto LABEL_32;
    case 8:
      sub_2393FD94C(__str, 256, *(a2 + 8));
      v4 = "Registered ID";
      goto LABEL_31;
  }

  return v16;
}

uint64_t sub_23945CB3C(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 > 3)
  {
    if (v4 <= 5)
    {
      if (v4 == 4)
      {
        sub_239404AE0(a1, "DirName: ");
        sub_239459710(a1, *(a2 + 8), 0, 8520479);
      }

      else
      {
        sub_239404AE0(a1, "EdiPartyName:<unsupported>");
      }

      return 1;
    }

    if (v4 != 6)
    {
      if (v4 == 7)
      {
        v5 = *(a2 + 8);
        v6 = *(v5 + 1);
        v7 = *v5;
        if (v7 == 16)
        {
          sub_239404AE0(a1, "IP Address");
          v8 = 0;
          do
          {
            sub_239404AE0(a1, ":%X", __rev16(*(v6 + v8)));
            v8 += 2;
          }

          while (v8 != 16);
          sub_239403848(a1, "\n");
        }

        else if (v7 == 4)
        {
          sub_239404AE0(a1, "IP Address:%d.%d.%d.%d");
        }

        else
        {
          sub_239404AE0(a1, "IP Address:<invalid>");
        }
      }

      else if (v4 == 8)
      {
        sub_239404AE0(a1, "Registered ID");
        sub_2393FD954(a1, *(a2 + 8));
      }

      return 1;
    }

    sub_239404AE0(a1, "URI:");
LABEL_18:
    sub_2393FE2C0(a1, *(a2 + 8));
    return 1;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      sub_239404AE0(a1, "X400Name:<unsupported>");
      return 1;
    }

    sub_239404AE0(a1, "DNS:");
    goto LABEL_18;
  }

  if (!v4)
  {
    sub_239404AE0(a1, "othername:<unsupported>");
    return 1;
  }

  if (v4 == 1)
  {
    sub_239404AE0(a1, "email:");
    goto LABEL_18;
  }

  return 1;
}

unint64_t *sub_23945CD20(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = sub_2394574D8();
  if (v5 && sub_239431484(a3))
  {
    v6 = 0;
    while (1)
    {
      v7 = sub_239457528(a3, v6);
      v9 = sub_23945CE0C(0, v8, a2, v7, 0);
      if (!v9 || !sub_2394579D0(v5, v9))
      {
        break;
      }

      if (++v6 >= sub_239431484(a3))
      {
        return v5;
      }
    }

    sub_23945FF10(v9);
    sub_239457574(v5, sub_23945D334, sub_23945FF10);
    return 0;
  }

  return v5;
}

void **sub_23945CE0C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(a4 + 16);
  if (!v5)
  {
    sub_2394170F4(20, 0, 137, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_alt.c", 542);
    return 0;
  }

  v9 = *(a4 + 8);
  if (!sub_239463EE4(v9, "email"))
  {
    if (sub_239463EE4(v9, "URI"))
    {
      v10 = 6;
      goto LABEL_17;
    }

    if (sub_239463EE4(v9, "DNS"))
    {
      v10 = 2;
      goto LABEL_17;
    }

    if (sub_239463EE4(v9, "RID"))
    {
      v10 = 8;
      goto LABEL_17;
    }

    if (sub_239463EE4(v9, "IP"))
    {
      v10 = 7;
      goto LABEL_17;
    }

    if (sub_239463EE4(v9, "dirName"))
    {
      v10 = 4;
      goto LABEL_17;
    }

    if (sub_239463EE4(v9, "otherName"))
    {
      v10 = 0;
      goto LABEL_17;
    }

    sub_2394170F4(20, 0, 160, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_alt.c", 562);
    sub_2394171A0(2u, v43, v44, v45, v46, v47, v48, v49, "name=");
    return 0;
  }

  v10 = 1;
LABEL_17:
  v11 = a1;
  if (a1 || (v11 = sub_23945FF04()) != 0)
  {
    if (v10 <= 5)
    {
      if ((v10 - 1) >= 2)
      {
        if (v10)
        {
          if (v10 == 4)
          {
            v12 = sub_23946DE48();
            if (v12)
            {
              v13 = sub_23945E07C(a3, v5);
              if (v13)
              {
                if (sub_239464C30(v12, v13, 4097))
                {
                  *v11 = 4;
LABEL_42:
                  v11[1] = v12;
                  return v11;
                }
              }

              else
              {
                sub_2394170F4(20, 0, 153, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_alt.c", 617);
                sub_2394171A0(2u, v35, v36, v37, v38, v39, v40, v41, "section=");
              }
            }

            sub_23946DE54(v12);
            v17 = 105;
            v18 = 510;
          }

          else
          {
            v17 = 161;
            v18 = 522;
          }
        }

        else
        {
          v19 = strchr(v5, 59);
          if (v19)
          {
            v20 = v19;
            v21 = sub_23945FEBC();
            if (v21)
            {
              v12 = v21;
              v22 = sub_23945071C(v5, v20 - v5);
              if (v22)
              {
                v23 = v22;
                sub_2393FDCD8(*v12);
                *v12 = sub_239450E0C(v23, 0);
                sub_239450144(v23);
                if (*v12)
                {
                  sub_2394030C4(v12[1]);
                  v24 = sub_239458844(v20 + 1, a3);
                  v12[1] = v24;
                  if (v24)
                  {
                    *v11 = 0;
                    goto LABEL_42;
                  }
                }
              }

              sub_23945FEC8(v12);
            }
          }

          v17 = 148;
          v18 = 517;
        }

        sub_2394170F4(20, 0, v17, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_alt.c", v18);
        goto LABEL_55;
      }

      goto LABEL_29;
    }

    if (v10 == 8)
    {
      v16 = sub_239450E0C(v5, 0);
      if (v16)
      {
        *v11 = 8;
        v11[1] = v16;
        return v11;
      }

      v26 = 101;
      v27 = 485;
      goto LABEL_49;
    }

    if (v10 != 7)
    {
LABEL_29:
      v14 = sub_239402FA8();
      if (v14)
      {
        v15 = strlen(v5);
        if (sub_2393FF8AC(v14, v5, v15))
        {
          *v11 = v10;
          v11[1] = v14;
          return v11;
        }
      }

      sub_2393FFA58(v14);
LABEL_55:
      if (!a1)
      {
        sub_23945FF10(v11);
      }

      return 0;
    }

    *v11 = 7;
    if (a5)
    {
      v25 = sub_239464A5C(v5);
    }

    else
    {
      v25 = sub_2394649C8(v5);
    }

    v11[1] = v25;
    if (!v25)
    {
      v26 = 100;
      v27 = 502;
LABEL_49:
      sub_2394170F4(20, 0, v26, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_alt.c", v27);
      sub_2394171A0(2u, v28, v29, v30, v31, v32, v33, v34, "value=");
      goto LABEL_55;
    }
  }

  return v11;
}

uint64_t sub_23945D1FC(uint64_t a1, unint64_t *a2, int a3)
{
  if (a1)
  {
    if (*a1 == 1)
    {
      return 1;
    }

    if (*(a1 + 16))
    {
      v6 = sub_239465D34(*(a1 + 16));
      goto LABEL_8;
    }

    v7 = *(a1 + 24);
    if (v7)
    {
      v6 = sub_2394673B4(v7);
LABEL_8:
      v8 = v6;
      v9 = -1;
      while (1)
      {
        v10 = sub_23946B424(v8, 0x30u, v9);
        if ((v10 & 0x80000000) != 0)
        {
          return 1;
        }

        v9 = v10;
        v11 = sub_23946B39C(v8, v10);
        v12 = sub_23946B390(v11);
        v13 = sub_2393FF9A4(v12);
        if (a3)
        {
          sub_23946B480(v8, v9);
          sub_23946DE14(v11);
          --v9;
        }

        if (!v13)
        {
          goto LABEL_17;
        }

        v14 = sub_23945FF04();
        v15 = v14;
        if (!v14)
        {
          goto LABEL_18;
        }

        v14[1] = v13;
        *v14 = 1;
        if (!sub_2394579D0(a2, v14))
        {
          v13 = 0;
          goto LABEL_18;
        }
      }
    }
  }

  sub_2394170F4(20, 0, 145, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_alt.c", 383);
  v13 = 0;
LABEL_17:
  v15 = 0;
LABEL_18:
  sub_23945FF10(v15);
  sub_239402ECC(v13);
  return 0;
}

unint64_t *sub_23945D340(uint64_t a1, unsigned int *a2, unint64_t *a3)
{
  v5 = a3;
  sub_2394633D4("CA", *a2, &v5);
  sub_239463720("pathlen", *(a2 + 1), &v5);
  return v5;
}

uint64_t *sub_23945D398(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = sub_239402AC0(byte_278A81260);
  if (!v4 || !sub_239431484(a3))
  {
    return v4;
  }

  v5 = 0;
  while (1)
  {
    v6 = sub_239457528(a3, v5);
    v7 = v6[1];
    if (*v7 != 67 || *(v7 + 1) != 65 || *(v7 + 2))
    {
      break;
    }

    if (!sub_2394638C0(v6, v4))
    {
      goto LABEL_14;
    }

LABEL_9:
    if (++v5 >= sub_239431484(a3))
    {
      return v4;
    }
  }

  if (!strcmp(v7, "pathlen"))
  {
    if (!sub_239463954(v6, v4 + 1))
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  sub_2394170F4(20, 0, 123, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_bcons.c", 126);
  sub_2394171A0(6u, v8, v9, v10, v11, v12, v13, v14, "section:");
LABEL_14:
  sub_2394026C0(v4, byte_278A81260);
  return 0;
}

unint64_t *sub_23945D510(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v7 = a3;
  v3 = *(a1 + 96);
  if (*(v3 + 8))
  {
    do
    {
      if (sub_2393FC41C(a2, *v3))
      {
        sub_2394631D4(*(v3 + 8), 0, &v7);
      }

      v5 = *(v3 + 32);
      v3 += 24;
    }

    while (v5);
    return v7;
  }

  return a3;
}

void *sub_23945D57C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = sub_239402F28();
  if (v5 && sub_239431484(a3))
  {
    v6 = 0;
    while (1)
    {
      v7 = sub_239457528(a3, v6);
      v8 = *(a1 + 96);
      v9 = *(v8 + 8);
      if (!v9)
      {
        break;
      }

      v10 = v7[1];
      v11 = (v8 + 16);
      while (strcmp(*v11, v10) && strcmp(v9, v10))
      {
        v9 = v11[2];
        v11 += 3;
        if (!v9)
        {
          goto LABEL_14;
        }
      }

      if (!sub_2393FC30C(v5, *(v11 - 4), 1))
      {
        goto LABEL_15;
      }

      if (!*(v11 - 1))
      {
        break;
      }

      if (++v6 >= sub_239431484(a3))
      {
        return v5;
      }
    }

LABEL_14:
    sub_2394170F4(20, 0, 156, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_bitst.c", 123);
    sub_2394171A0(6u, v12, v13, v14, v15, v16, v17, v18, "section:");
LABEL_15:
    sub_239402ECC(v5);
    return 0;
  }

  return v5;
}

uint64_t *sub_23945D6C4(uint64_t a1, __int128 *a2, const char *a3, const char *a4)
{
  v5 = a2;
  v21 = a4;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  if (!a2)
  {
    v18 = 0uLL;
    v19 = 0uLL;
    v5 = &v18;
    *&v20 = 0;
    *(&v20 + 1) = a1;
  }

  v7 = sub_23945D7DC(&v21);
  v8 = sub_23945D848(&v21);
  if (v8)
  {
    return sub_23945D8F8(a3, v21, v7, v8, v5);
  }

  v10 = sub_239450B64(a3);
  result = sub_23945DAB4(a1, v5, v10, v7, v21);
  if (!result)
  {
    sub_2394170F4(20, 0, 110, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_conf.c", 102);
    sub_2394171A0(4u, v11, v12, v13, v14, v15, v16, v17, "name=");
    return 0;
  }

  return result;
}

double sub_23945D7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *a1 = a6;
  return result;
}

uint64_t sub_23945D7DC(const char **a1)
{
  v2 = *a1;
  if (strlen(*a1) < 9 || strncmp(v2, "critical,", 9uLL))
  {
    return 0;
  }

  v4 = v2 + 8;
  do
  {
    v5 = *++v4;
  }

  while (sub_23945046C(v5));
  *a1 = v4;
  return 1;
}

uint64_t sub_23945D848(const char **a1)
{
  v2 = *a1;
  v3 = strlen(*a1);
  if (v3 < 4)
  {
    return 0;
  }

  v4 = v3;
  v5 = 4;
  if (!strncmp(v2, "DER:", 4uLL))
  {
    v6 = 1;
  }

  else
  {
    if (v4 == 4)
    {
      return 0;
    }

    v5 = 5;
    if (strncmp(v2, "ASN1:", 5uLL))
    {
      return 0;
    }

    v6 = 2;
  }

  v7 = &v2[v5 - 1];
  do
  {
    v8 = *++v7;
  }

  while (sub_23945046C(v8));
  *a1 = v7;
  return v6;
}

uint64_t *sub_23945D8F8(const char *a1, char *a2, uint64_t a3, int a4, uint64_t a5)
{
  v7 = a3;
  v26 = 0;
  v9 = sub_239450E0C(a1, 0);
  if (!v9)
  {
    sub_2394170F4(20, 0, 113, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_conf.c", 275);
    v18 = "name=";
LABEL_15:
    sub_2394171A0(2u, v11, v12, v13, v14, v15, v16, v17, v18);
    v10 = 0;
    goto LABEL_16;
  }

  if (a4 == 2)
  {
    v19 = sub_239458844(a2, a5);
    if (!v19)
    {
      goto LABEL_14;
    }

    v20 = v19;
    v27 = 0;
    v21 = sub_2394030AC(v19, &v27);
    sub_2394030C4(v20);
    if ((v21 & 0x80000000) != 0)
    {
      goto LABEL_14;
    }

    v26 = v21;
    v10 = v27;
    if (!v27)
    {
      goto LABEL_14;
    }
  }

  else if (a4 != 1 || (v10 = sub_239463DB0(a2, &v26)) == 0)
  {
LABEL_14:
    sub_2394170F4(20, 0, 116, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_conf.c", 287);
    v18 = "value=";
    goto LABEL_15;
  }

  if (v26 >> 31)
  {
    sub_2394170F4(20, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_conf.c", 293);
LABEL_16:
    v23 = 0;
    goto LABEL_17;
  }

  v22 = sub_239402EC4();
  v23 = v22;
  if (!v22)
  {
LABEL_17:
    v24 = 0;
    goto LABEL_18;
  }

  sub_2393FFA9C(v22, v10, v26);
  v24 = sub_2394683B8(0, v9, v7, v23);
  v10 = 0;
LABEL_18:
  sub_2393FDCD8(v9);
  sub_239402ECC(v23);
  sub_239450144(v10);
  return v24;
}

uint64_t *sub_23945DAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (!a3)
  {
    v14 = 158;
    v15 = 137;
    goto LABEL_10;
  }

  v10 = sub_239460748(a3);
  if (!v10)
  {
    v14 = 157;
    v15 = 141;
    goto LABEL_10;
  }

  v11 = v10;
  if (v10[9])
  {
    if (*a5 != 64)
    {
      v12 = sub_2394639E4(a5);
      v13 = v12;
      if (!v12)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    if (a1)
    {
      v12 = sub_239409ED8(a1, (a5 + 1));
      v13 = 0;
      if (!v12)
      {
        goto LABEL_19;
      }

LABEL_16:
      if (sub_239431484(v12))
      {
        v19 = (*(v11 + 72))(v11, a2, v12);
        sub_239457574(v13, sub_23945E0C8, sub_239463380);
        if (v19)
        {
          goto LABEL_18;
        }

        return 0;
      }

LABEL_19:
      sub_2394170F4(20, 0, 121, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_conf.c", 160);
      sub_239451004(a3);
      sub_2394171A0(4u, v21, v22, v23, v24, v25, v26, v27, "name=");
      sub_239457574(v13, sub_23945E0C8, sub_239463380);
      return 0;
    }

    v14 = 139;
    v15 = 151;
LABEL_10:
    sub_2394170F4(20, 0, v14, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_conf.c", v15);
    return 0;
  }

  v17 = v10[7];
  if (!v17)
  {
    v17 = v10[11];
    if (!v17)
    {
      sub_2394170F4(20, 0, 115, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_conf.c", 187);
      sub_239451004(a3);
      sub_2394171A0(2u, v28, v29, v30, v31, v32, v33, v34, "name=");
      return 0;
    }

    if (!*(a2 + 40))
    {
      v14 = 139;
      v15 = 180;
      goto LABEL_10;
    }
  }

  v18 = v17(v10, a2, a5);
  if (!v18)
  {
    return 0;
  }

  v19 = v18;
LABEL_18:
  v20 = sub_23945DE68(v11, a3, a4, v19);
  sub_2394026C0(v19, *(v11 + 8));
  return v20;
}

uint64_t *sub_23945DD30(uint64_t a1, __int128 *a2, uint64_t a3, char *a4)
{
  v5 = a2;
  v15 = a4;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  if (!a2)
  {
    v12 = 0uLL;
    v13 = 0uLL;
    v5 = &v12;
    *&v14 = 0;
    *(&v14 + 1) = a1;
  }

  v7 = sub_23945D7DC(&v15);
  v8 = sub_23945D848(&v15);
  if (!v8)
  {
    return sub_23945DAB4(a1, v5, a3, v7, v15);
  }

  v9 = v8;
  v10 = sub_239451004(a3);
  return sub_23945D8F8(v10, v15, v7, v9, v5);
}

uint64_t *sub_23945DDE4(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v6 = sub_239460748(a1);
  if (v6)
  {

    return sub_23945DE68(v6, a1, a2, a3);
  }

  else
  {
    sub_2394170F4(20, 0, 157, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_conf.c", 224);
    return 0;
  }
}

uint64_t *sub_23945DE68(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = a2;
  v12 = 0;
  v6 = sub_2394018FC(a4, &v12, *(a1 + 8));
  if (v6 < 0)
  {
    return 0;
  }

  v7 = v6;
  v8 = sub_239402EC4();
  if (!v8)
  {
    sub_239450144(v12);
    return 0;
  }

  v9 = v8;
  sub_2393FFA9C(v8, v12, v7);
  v10 = sub_239468330(0, v5, a3, v9);
  sub_239402ECC(v9);
  return v10;
}

uint64_t sub_23945DF04(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t **a4)
{
  result = sub_239409ED8(a1, a3);
  if (result)
  {
    v8 = result;
    if (sub_239431484(result))
    {
      v9 = 0;
      while (1)
      {
        v10 = sub_239457528(v8, v9);
        v11 = sub_23945D6C4(a1, a2, v10[1], v10[2]);
        if (!v11)
        {
          break;
        }

        v12 = v11;
        if (a4)
        {
          v13 = sub_239468248(a4, v11, -1);
          sub_23946DDD4(v12);
          if (!v13)
          {
            return 0;
          }
        }

        else
        {
          sub_23946DDD4(v11);
        }

        if (++v9 >= sub_239431484(v8))
        {
          return 1;
        }
      }

      sub_23946DDD4(0);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_23945DFD8(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t **a4)
{
  if (a4)
  {
    a4 = (*a4 + 9);
  }

  return sub_23945DF04(a1, a2, a3, a4);
}

uint64_t sub_23945DFE8(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t **a4)
{
  if (a4)
  {
    a4 = (*a4 + 6);
  }

  return sub_23945DF04(a1, a2, a3, a4);
}

uint64_t sub_23945DFF8(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  if (a4)
  {
    v5 = &v9;
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_23945DF04(a1, a2, a3, v5);
  v7 = v6;
  if (a4 && v6)
  {
    v7 = sub_239467744(a4, v9);
    sub_239457574(v9, sub_23945E0D4, sub_23946DDD4);
  }

  return v7;
}

uint64_t sub_23945E07C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {

    return sub_239409ED8(v3, a2);
  }

  else
  {
    sub_2394170F4(20, 0, 147, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_conf.c", 398);
    return 0;
  }
}

uint64_t sub_23945E0E0(uint64_t a1, unint64_t *a2, uint64_t a3, int a4)
{
  v5 = a2;
  if (sub_239431484(a2))
  {
    v6 = 0;
    v7 = a4 + 4;
    v22 = v5;
    do
    {
      v24 = v6;
      v8 = sub_239457528(v5, v6);
      sub_239404AE0(a3, "%*sPolicy: ", a4, "");
      sub_2393FD954(a3, *v8);
      sub_239403848(a3, "\n");
      v9 = v8[1];
      if (v9 && sub_239431484(v8[1]))
      {
        v10 = 0;
        do
        {
          v11 = sub_239457528(v9, v10);
          v12 = sub_2394509E8(*v11);
          if (v12 == 165)
          {
            sub_239404AE0(a3, "%*sUser Notice:\n", a4 + 2, "");
            v13 = v11[1];
            v14 = *v13;
            if (*v13)
            {
              sub_239404AE0(a3, "%*sOrganization: %.*s\n", v7, "", **v14, *(*v14 + 8));
              v15 = sub_239431484(*(v14 + 8));
              v16 = "s";
              if (v15 <= 1)
              {
                v16 = "";
              }

              sub_239404AE0(a3, "%*sNumber%s: ", v7, "", v16);
              if (sub_239431484(*(v14 + 8)))
              {
                v17 = 0;
                do
                {
                  v18 = sub_239457528(*(v14 + 8), v17);
                  if (v17)
                  {
                    sub_239403848(a3, ", ");
                  }

                  if (v18)
                  {
                    v19 = sub_239463540(0, v18);
                    if (!v19)
                    {
                      goto LABEL_26;
                    }

                    v20 = v19;
                    sub_239403848(a3, v19);
                    sub_239450144(v20);
                  }

                  else
                  {
                    sub_239403848(a3, "(null)");
                  }

                  ++v17;
                }

                while (v17 < sub_239431484(*(v14 + 8)));
              }

              sub_239403848(a3, "\n");
            }

            if (v13[1])
            {
              sub_239404AE0(a3, "%*sExplicit Text: %.*s\n");
            }
          }

          else if (v12 == 164)
          {
            sub_239404AE0(a3, "%*sCPS: %.*s\n");
          }

          else
          {
            sub_239404AE0(a3, "%*sUnknown Qualifier: ", v7, "");
            sub_2393FD954(a3, *v11);
            sub_239403848(a3, "\n");
          }

LABEL_26:
          ++v10;
        }

        while (v10 < sub_239431484(v9));
      }

      v6 = v24 + 1;
      v5 = v22;
    }

    while (v24 + 1 < sub_239431484(v22));
  }

  return 1;
}

unint64_t *sub_23945E3B0(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = sub_2394574D8();
  if (!v5)
  {
    return v5;
  }

  v6 = sub_2394639E4(a3);
  v7 = v6;
  if (!v6)
  {
    sub_2394170F4(20, 0, 20, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_cpols.c", 165);
    goto LABEL_99;
  }

  if (!sub_239431484(v6))
  {
LABEL_75:
    sub_239457574(v7, sub_23945EC94, sub_239463380);
    return v5;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = sub_239457528(v7, v9);
    if (v10[2] || (v11 = v10[1]) == 0)
    {
      v52 = 131;
      v53 = 172;
      goto LABEL_78;
    }

    if (strcmp(v10[1], "ia5org"))
    {
      break;
    }

    v8 = 1;
LABEL_74:
    if (++v9 >= sub_239431484(v7))
    {
      goto LABEL_75;
    }
  }

  if (*v11 != 64)
  {
    v49 = sub_239450E0C(v11, 0);
    if (v49)
    {
      v50 = v49;
      v51 = sub_239402AC0(byte_278A81528);
      if (!v51)
      {
        sub_2393FDCD8(v50);
        goto LABEL_99;
      }

      v14 = v51;
      *v51 = v50;
      goto LABEL_73;
    }

    v52 = 129;
    v53 = 196;
LABEL_78:
    sub_2394170F4(20, 0, v52, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_cpols.c", v53);
    sub_2394171A0(6u, v54, v55, v56, v57, v58, v59, v60, "section:");
    goto LABEL_99;
  }

  v12 = sub_23945E07C(a2, (v11 + 1));
  if (!v12)
  {
    v52 = 134;
    v53 = 184;
    goto LABEL_78;
  }

  v13 = v12;
  v94 = v8;
  v14 = sub_239402AC0(byte_278A81528);
  if (!v14)
  {
    goto LABEL_98;
  }

  if (!sub_239431484(v13))
  {
LABEL_71:
    if (!*v14)
    {
      v63 = 142;
      v64 = 292;
LABEL_97:
      sub_2394170F4(20, 0, v63, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_cpols.c", v64);
      goto LABEL_98;
    }

    v8 = v94;
LABEL_73:
    if (!sub_2394579D0(v5, v14))
    {
      goto LABEL_98;
    }

    goto LABEL_74;
  }

  v15 = 0;
  if (v8)
  {
    v16 = 22;
  }

  else
  {
    v16 = 26;
  }

  v91 = v16;
  while (1)
  {
    v17 = sub_239457528(v13, v15);
    v18 = v17[1];
    if (!strcmp(v18, "policyIdentifier"))
    {
      v25 = sub_239450E0C(v17[2], 0);
      if (v25)
      {
        *v14 = v25;
        goto LABEL_28;
      }

      v61 = 129;
      v62 = 233;
      goto LABEL_93;
    }

    if (!sub_239463EE4(v18, "CPS"))
    {
      break;
    }

    if (!*(v14 + 1))
    {
      *(v14 + 1) = sub_2394574D8();
    }

    v19 = sub_239402AC0(byte_278A81598);
    if (!v19)
    {
      goto LABEL_98;
    }

    v20 = v19;
    if (!sub_2394579D0(*(v14 + 1), v19))
    {
      goto LABEL_98;
    }

    v21 = sub_239450F00(0xA4u);
    *v20 = v21;
    if (!v21)
    {
      v63 = 68;
      v64 = 251;
      goto LABEL_97;
    }

    v22 = sub_239402FA8();
    v20[1] = v22;
    if (!v22)
    {
      goto LABEL_98;
    }

    v23 = v22;
    v24 = strlen(v17[2]);
    if (!sub_2393FF8AC(v23, v17[2], v24))
    {
      goto LABEL_98;
    }

LABEL_28:
    if (++v15 >= sub_239431484(v13))
    {
      goto LABEL_71;
    }
  }

  if (!sub_239463EE4(v17[1], "userNotice"))
  {
    v61 = 130;
    v62 = 285;
LABEL_93:
    sub_2394170F4(20, 0, v61, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_cpols.c", v62);
    sub_2394171A0(6u, v72, v73, v74, v75, v76, v77, v78, "section:");
    goto LABEL_98;
  }

  v26 = v17[2];
  if (*v26 != 64)
  {
    v61 = 111;
    v62 = 263;
    goto LABEL_93;
  }

  v27 = sub_23945E07C(a2, (v26 + 1));
  if (!v27)
  {
    v61 = 134;
    v62 = 270;
    goto LABEL_93;
  }

  v92 = v27;
  v90 = a2;
  v93 = sub_239402AC0(byte_278A81598);
  if (!v93)
  {
    goto LABEL_83;
  }

  v28 = sub_239450F00(0xA5u);
  *v93 = v28;
  if (v28)
  {
    v95 = sub_239402AC0(byte_278A81608);
    if (!v95)
    {
      goto LABEL_83;
    }

    v29 = v92;
    v93[1] = v95;
    if (sub_239431484(v92))
    {
      v30 = 0;
      v89 = v7;
      while (1)
      {
        v31 = sub_239457528(v29, v30);
        v32 = v31[1];
        if (!strcmp(v32, "explicitText"))
        {
          break;
        }

        if (!strcmp(v32, "organization"))
        {
          v44 = *v95;
          if (!*v95)
          {
            v44 = sub_239402AC0(byte_278A81678);
            if (!v44)
            {
              goto LABEL_83;
            }

            *v95 = v44;
          }

          *(*v44 + 4) = v91;
          v43 = *v44;
LABEL_58:
          v45 = v31[2];
          v46 = strlen(v45);
          if (!sub_2393FF8AC(v43, v45, v46))
          {
            goto LABEL_83;
          }

          goto LABEL_59;
        }

        if (strcmp(v32, "noticeNumbers"))
        {
          sub_2394170F4(20, 0, 130, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_cpols.c", 373);
          sub_2394171A0(6u, v81, v82, v83, v84, v85, v86, v87, "section:");
          goto LABEL_83;
        }

        v33 = *v95;
        if (!*v95)
        {
          v34 = sub_239402AC0(byte_278A81678);
          if (!v34)
          {
            goto LABEL_83;
          }

          v33 = v34;
          *v95 = v34;
        }

        v35 = sub_2394639E4(v31[2]);
        v36 = v35;
        if (!v35 || !sub_239431484(v35))
        {
          sub_2394170F4(20, 0, 128, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_cpols.c", 362);
          sub_2394171A0(6u, v65, v66, v67, v68, v69, v70, v71, "section:");
LABEL_82:
          sub_239457574(v36, sub_23945EC94, sub_239463380);
          goto LABEL_83;
        }

        v37 = v33[1];
        if (sub_239431484(v36))
        {
          v38 = 0;
          while (1)
          {
            v39 = sub_239457528(v36, v38);
            v40 = sub_23946359C(0, v39[1]);
            if (!v40)
            {
              sub_2394170F4(20, 0, 127, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_cpols.c", 398);
              goto LABEL_81;
            }

            v41 = v40;
            if (!sub_2394579D0(v37, v40))
            {
              break;
            }

            if (++v38 >= sub_239431484(v36))
            {
              goto LABEL_51;
            }
          }

          sub_239402ECC(v41);
LABEL_81:
          v7 = v89;
          goto LABEL_82;
        }

LABEL_51:
        sub_239457574(v36, sub_23945EC94, sub_239463380);
        v7 = v89;
LABEL_59:
        ++v30;
        v29 = v92;
        if (v30 >= sub_239431484(v92))
        {
          goto LABEL_60;
        }
      }

      v42 = sub_239403028();
      v95[1] = v42;
      if (!v42)
      {
        goto LABEL_83;
      }

      v43 = v42;
      goto LABEL_58;
    }

LABEL_60:
    v47 = *v95;
    if (!*v95 || v47[1] && *v47)
    {
      v48 = *(v14 + 1);
      if (!v48)
      {
        v48 = sub_2394574D8();
        *(v14 + 1) = v48;
      }

      a2 = v90;
      if (!sub_2394579D0(v48, v93))
      {
        goto LABEL_98;
      }

      goto LABEL_28;
    }

    v79 = 138;
    v80 = 381;
  }

  else
  {
    v79 = 68;
    v80 = 313;
  }

  sub_2394170F4(20, 0, v79, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_cpols.c", v80);
LABEL_83:
  sub_2394026C0(v93, byte_278A81598);
LABEL_98:
  sub_2394026C0(v14, byte_278A81528);
LABEL_99:
  sub_239457574(v7, sub_23945EC94, sub_239463380);
  sub_239457574(v5, sub_23945ECA0, sub_23945EC40);
  return 0;
}

unint64_t *sub_23945ECAC(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v6 = sub_2394574D8();
  if (v6)
  {
    if (sub_239431484(a3))
    {
      v7 = 0;
      v8 = byte_278A81850;
      v22 = a1;
      do
      {
        v9 = sub_239457528(a3, v7);
        if (v9[2])
        {
          v10 = sub_23945CDF8(a1, a2, v9);
          if (!v10)
          {
            v12 = 0;
            goto LABEL_32;
          }

          v11 = sub_23945FF34();
          v12 = v11;
          if (!v11)
          {
            goto LABEL_32;
          }

          if (!sub_2394579D0(v11, v10))
          {
            goto LABEL_32;
          }

          v10 = sub_239402AC0(v8);
          if (!v10)
          {
            goto LABEL_32;
          }

          if (!sub_2394579D0(v6, v10))
          {
            sub_2394026C0(v10, byte_278A81850);
            goto LABEL_31;
          }

          v13 = sub_239402AC0(byte_278A817C0);
          *v10 = v13;
          if (!v13)
          {
            goto LABEL_31;
          }

          *(v13 + 1) = v12;
          **v10 = 0;
        }

        else
        {
          v12 = sub_23945E07C(a2, v9[1]);
          if (!v12)
          {
            goto LABEL_31;
          }

          v14 = v8;
          v15 = sub_239402AC0(v8);
          if (!v15)
          {
            goto LABEL_29;
          }

          if (sub_239431484(v12))
          {
            v16 = 0;
            do
            {
              v17 = sub_239457528(v12, v16);
              v18 = sub_23945F4E0(v15, a2, v17);
              if (v18 <= 0)
              {
                if (v18 < 0)
                {
                  goto LABEL_29;
                }

                v19 = v17[1];
                if (!strcmp(v19, "reasons"))
                {
                  if (!sub_23945F710(v15 + 1, v17[2]))
                  {
                    goto LABEL_29;
                  }
                }

                else if (!strcmp(v19, "CRLissuer"))
                {
                  sub_23945FF40(*(v15 + 2));
                  v20 = sub_23945F840(a2, v17[2]);
                  *(v15 + 2) = v20;
                  if (!v20)
                  {
                    goto LABEL_29;
                  }
                }
              }
            }

            while (++v16 < sub_239431484(v12));
          }

          v8 = v14;
          a1 = v22;
          if (!sub_2394579D0(v6, v15))
          {
LABEL_29:
            sub_2394026C0(v15, byte_278A81850);
            goto LABEL_30;
          }
        }

        ++v7;
      }

      while (v7 < sub_239431484(a3));
    }
  }

  else
  {
LABEL_30:
    v12 = 0;
LABEL_31:
    v10 = 0;
LABEL_32:
    sub_23945FF10(v10);
    sub_23945FF40(v12);
    sub_239457574(v6, sub_23945F91C, sub_23945F068);
    return 0;
  }

  return v6;
}

uint64_t sub_23945EF3C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (sub_239431484(a2))
  {
    v7 = 0;
    do
    {
      sub_239403848(a3, "\n");
      v8 = sub_239457528(a2, v7);
      if (*v8)
      {
        sub_23945F968(a3, *v8, a4);
      }

      v9 = v8[1];
      if (v9)
      {
        sub_23945FA50(a3, "Reasons", v9, a4);
      }

      if (v8[2])
      {
        sub_239404AE0(a3, "%*sCRL Issuer:\n", a4, "");
        sub_23945FB48(a3, v8[2], a4);
      }

      ++v7;
    }

    while (v7 < sub_239431484(a2));
  }

  return 1;
}

char *sub_23945F0D4(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = sub_239402AC0(byte_278A81960);
  if (v5)
  {
    if (sub_239431484(a3))
    {
      for (i = 0; i < sub_239431484(a3); ++i)
      {
        v7 = sub_239457528(a3, i);
        v8 = v7[1];
        v9 = v7[2];
        v10 = sub_23945F4E0(v5, a2, v7);
        if (v10 <= 0)
        {
          if (v10 < 0)
          {
            goto LABEL_21;
          }

          if (!strcmp(v8, "onlyuser"))
          {
            v11 = v5 + 8;
            goto LABEL_17;
          }

          if (!strcmp(v8, "onlyCA"))
          {
            v11 = v5 + 12;
            goto LABEL_17;
          }

          if (!strcmp(v8, "onlyAA"))
          {
            v11 = v5 + 28;
            goto LABEL_17;
          }

          if (!strcmp(v8, "indirectCRL"))
          {
            v11 = v5 + 24;
LABEL_17:
            if (!sub_2394638C0(v7, v11))
            {
              goto LABEL_21;
            }

            continue;
          }

          if (strcmp(v8, "onlysomereasons"))
          {
            sub_2394170F4(20, 0, 123, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_crld.c", 483);
            sub_2394171A0(6u, v12, v13, v14, v15, v16, v17, v18, "section:");
            goto LABEL_21;
          }

          if (!sub_23945F710(v5 + 2, v9))
          {
            goto LABEL_21;
          }
        }
      }
    }
  }

  else
  {
LABEL_21:
    sub_2394026C0(v5, byte_278A81960);
    return 0;
  }

  return v5;
}

uint64_t sub_23945F2A0(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = *a2;
  if (v7)
  {
    sub_23945F968(a3, v7, a4);
  }

  if (*(a2 + 8) >= 1)
  {
    sub_239404AE0(a3, "%*sOnly User Certificates\n", v4, "");
  }

  if (*(a2 + 12) >= 1)
  {
    sub_239404AE0(a3, "%*sOnly CA Certificates\n", v4, "");
  }

  if (*(a2 + 24) >= 1)
  {
    sub_239404AE0(a3, "%*sIndirect CRL\n", v4, "");
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    sub_23945FA50(a3, "Only Some Reasons", v8, v4);
  }

  if (*(a2 + 28) >= 1)
  {
    sub_239404AE0(a3, "%*sOnly Attribute Certificates\n", v4, "");
  }

  if (!*a2 && *(a2 + 8) <= 0 && *(a2 + 12) <= 0 && *(a2 + 24) <= 0 && !*(a2 + 16) && *(a2 + 28) <= 0)
  {
    sub_239404AE0(a3, "%*s<EMPTY>\n", v4, "");
  }

  return 1;
}

uint64_t sub_23945F414(uint64_t a1, unint64_t *a2)
{
  if (!a1)
  {
    return 1;
  }

  if (*a1 != 1)
  {
    return 1;
  }

  v3 = *(a1 + 8);
  result = sub_23946DE60(a2);
  *(a1 + 16) = result;
  if (!result)
  {
    return result;
  }

  if (sub_239431484(v3))
  {
    v5 = 0;
    do
    {
      v6 = sub_239457528(v3, v5);
      if (!sub_23946B688(*(a1 + 16), v6, -1, v5 == 0))
      {
        goto LABEL_11;
      }
    }

    while (++v5 < sub_239431484(v3));
  }

  if ((sub_23946DE3C(*(a1 + 16), 0) & 0x80000000) == 0)
  {
    return 1;
  }

LABEL_11:
  sub_23946DE54(*(a1 + 16));
  result = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_23945F4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  if (!strncmp(v6, "fullname", 9uLL))
  {
    v8 = *(a3 + 16);
    if (v8)
    {
      v9 = sub_23945F840(a2, v8);
      v10 = 0;
      v11 = 0;
      if (v9)
      {
        goto LABEL_6;
      }

LABEL_17:
      sub_239457574(v11, sub_23945F8F8, sub_23945FF10);
      sub_239457574(v10, sub_23945F904, sub_23946DE14);
      return 0xFFFFFFFFLL;
    }

    v19 = 137;
    v20 = 141;
LABEL_24:
    sub_2394170F4(20, 0, v19, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_crld.c", v20);
    return 0xFFFFFFFFLL;
  }

  if (strcmp(v6, "relativename"))
  {
    return 0;
  }

  v12 = *(a3 + 16);
  if (!v12)
  {
    v19 = 137;
    v20 = 152;
    goto LABEL_24;
  }

  v13 = sub_23945E07C(a2, v12);
  if (!v13)
  {
    v19 = 153;
    v20 = 157;
    goto LABEL_24;
  }

  v14 = v13;
  v15 = sub_23946DE48();
  if (!v15)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = v15;
  v17 = sub_239464C30(v15, v14, 4097);
  v10 = *v16;
  *v16 = 0;
  sub_23946DE54(v16);
  if (!v17)
  {
    goto LABEL_16;
  }

  v11 = sub_239431484(v10);
  if (!v11)
  {
    goto LABEL_17;
  }

  v18 = sub_239431484(v10);
  if (*(sub_239457528(v10, v18 - 1) + 4))
  {
    sub_2394170F4(20, 0, 122, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_crld.c", 173);
LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  v9 = 0;
LABEL_6:
  if (*a1)
  {
    sub_2394170F4(20, 0, 106, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_crld.c", 181);
LABEL_8:
    v11 = v9;
    goto LABEL_17;
  }

  v21 = sub_239402AC0(byte_278A817C0);
  *a1 = v21;
  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = v21;
  if (v9)
  {
    *v21 = 0;
    *(*a1 + 8) = v9;
    return 1;
  }

  else
  {
    result = 1;
    *v22 = 1;
    *(*a1 + 8) = v10;
  }

  return result;
}

uint64_t sub_23945F710(uint64_t *a1, const char *a2)
{
  if (*a1)
  {
    sub_2394170F4(20, 0, 163, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_crld.c", 220);
    return 0;
  }

  v4 = sub_2394639E4(a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (sub_239431484(v4))
  {
    v6 = 0;
    while (1)
    {
      v7 = sub_239457528(v5, v6)[1];
      v8 = *a1;
      if (!*a1)
      {
        v8 = sub_239402F28();
        *a1 = v8;
        if (!v8)
        {
          break;
        }
      }

      v9 = off_278A819B0;
      while (strcmp(*(v9 - 2), v7))
      {
        v10 = *v9;
        v9 += 3;
        if (!v10)
        {
          goto LABEL_16;
        }
      }

      if (!sub_2393FC30C(v8, *(v9 - 8), 1))
      {
        break;
      }

      if (++v6 >= sub_239431484(v5))
      {
        goto LABEL_15;
      }
    }

LABEL_16:
    v2 = 0;
  }

  else
  {
LABEL_15:
    v2 = 1;
  }

  sub_239457574(v5, sub_23945F910, sub_239463380);
  return v2;
}

unint64_t *sub_23945F840(uint64_t a1, const char *a2)
{
  if (*a2 == 64)
  {
    v3 = sub_23945E07C(a1, (a2 + 1));
    v4 = 0;
    if (v3)
    {
LABEL_3:
      v5 = sub_23945CD20(0, a1, v3);
      sub_239457574(v4, sub_23945F910, sub_239463380);
      return v5;
    }
  }

  else
  {
    v3 = sub_2394639E4(a2);
    v4 = v3;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  sub_2394170F4(20, 0, 153, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_crld.c", 121);
  return 0;
}

uint64_t sub_23945F928(int a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1 == 3)
  {
    sub_23946DE54(*(v2 + 16));
  }

  else if (a1 == 1)
  {
    *(v2 + 16) = 0;
  }

  return 1;
}

unint64_t sub_23945F968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (*a2)
  {
    v9 = 0u;
    v10 = 0u;
    v8 = *(a2 + 8);
    sub_239404AE0(a1, "%*sRelative Name:\n%*s", a3, "", a3 + 2, "");
    sub_239459710(a1, &v8, 0, 8520479);
    return sub_239403848(a1, "\n");
  }

  else
  {
    sub_239404AE0(a1, "%*sFull Name:\n", a3, "");
    v7 = *(a2 + 8);

    return sub_23945FB48(a1, v7, v3);
  }
}

uint64_t sub_23945FA50(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  sub_239404AE0(a1, "%*s%s:\n%*s", a4, "", a2, a4 + 2, "");
  v6 = 0;
  v7 = &dword_278A81990;
  v8 = "Unused";
LABEL_2:
  for (i = *v7; ; i = v10)
  {
    if (sub_2393FC41C(a3, i))
    {
      if (v6)
      {
        sub_239403848(a1, ", ");
      }

      sub_239403848(a1, v8);
      v8 = *(v7 + 4);
      v7 += 6;
      v6 = 1;
      if (!v8)
      {
        goto LABEL_11;
      }

      goto LABEL_2;
    }

    v8 = *(v7 + 4);
    if (!v8)
    {
      break;
    }

    v10 = v7[6];
    v7 += 6;
  }

  if (v6)
  {
LABEL_11:
    v11 = "\n";
    goto LABEL_13;
  }

  v11 = "<EMPTY>\n";
LABEL_13:

  return sub_239403848(a1, v11);
}

unint64_t sub_23945FB48(uint64_t a1, unint64_t *a2, int a3)
{
  result = sub_239431484(a2);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      sub_239404AE0(a1, "%*s", a3 + 2, "");
      v8 = sub_239457528(a2, i);
      sub_23945CB3C(a1, v8);
      sub_239403848(a1, "\n");
      result = sub_239431484(a2);
    }
  }

  return result;
}

const char *sub_23945FC04(uint64_t a1, unsigned __int8 **a2)
{
  v4 = sub_2393FD07C(a2);
  v5 = *(a1 + 96);
  v6 = *(v5 + 8);
  if (v6)
  {
    if (v4 == *v5)
    {
LABEL_6:

      return sub_23945030C(v6);
    }

    v7 = (v5 + 32);
    while (1)
    {
      v6 = *v7;
      if (!*v7)
      {
        break;
      }

      v8 = *(v7 - 2);
      v7 += 3;
      if (v4 == v8)
      {
        goto LABEL_6;
      }
    }
  }

  return sub_239463404(a1, a2);
}

unint64_t *sub_23945FC9C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (sub_239431484(a2))
  {
    v5 = 0;
    do
    {
      v6 = sub_239457528(a2, v5);
      sub_2393FD94C(__s, 80, v6);
      sub_2394631D4(0, __s, &v8);
      ++v5;
    }

    while (v5 < sub_239431484(a2));
    return v8;
  }

  return v3;
}

unint64_t *sub_23945FD50(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = sub_2394574D8();
  if (v4 && sub_239431484(a3))
  {
    v5 = 0;
    while (1)
    {
      v6 = sub_239457528(a3, v5);
      v7 = v6[2];
      if (!v7)
      {
        v7 = v6[1];
      }

      v8 = sub_239450E0C(v7, 0);
      if (!v8 || !sub_2394579D0(v4, v8))
      {
        break;
      }

      if (++v5 >= sub_239431484(a3))
      {
        return v4;
      }
    }

    sub_2393FDCD8(v8);
    sub_239457574(v4, sub_23945FEB0, sub_2393FDCD8);
    sub_2394170F4(20, 0, 129, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_extku.c", 147);
    sub_2394171A0(6u, v9, v10, v11, v12, v13, v14, v15, "section:");
    return 0;
  }

  return v4;
}

uint64_t sub_23945FF5C(uint64_t a1, uint64_t a2)
{
  result = 0xFFFFFFFFLL;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v4 = *a1;
  if (*a1 != *a2)
  {
    return result;
  }

  if (v4 <= 4)
  {
    if (v4 <= 2)
    {
      if ((v4 - 1) >= 2)
      {
        if (!v4)
        {
          v5 = *(a1 + 8);
          if (v5)
          {
            v6 = *(a2 + 8);
            if (v6)
            {
              result = sub_239450998(*v5, *v6);
              if (!result)
              {
                v7 = v5[1];
                v8 = v6[1];

                return sub_2393FF264(v7, v8);
              }
            }
          }
        }

        return result;
      }

      goto LABEL_26;
    }

    if (v4 != 3)
    {
      v11 = *(a1 + 8);
      v12 = *(a2 + 8);

      return sub_239465AD0(v11, v12);
    }

LABEL_26:
    v13 = *(a1 + 8);
    v14 = *(a2 + 8);
LABEL_27:

    return sub_2393FFB10(v13, v14);
  }

  if (v4 <= 6)
  {
    if (v4 != 5)
    {
      goto LABEL_26;
    }

    v15 = *(a1 + 8);
    v16 = *(a2 + 8);
    v17 = *v16;
    if (*v15)
    {
      if (!v17 || sub_2393FFB10(*v15, v17))
      {
        return 0xFFFFFFFFLL;
      }
    }

    else if (v17)
    {
      return 0xFFFFFFFFLL;
    }

    v13 = v15[1];
    v14 = v16[1];
    goto LABEL_27;
  }

  if (v4 == 7)
  {

    return sub_2393FDD90();
  }

  else if (v4 == 8)
  {
    v9 = *(a1 + 8);
    v10 = *(a2 + 8);

    return sub_239450998(v9, v10);
  }

  return result;
}

uint64_t sub_2394600FC(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (a2 <= 8)
  {
    *(result + 8) = a3;
  }

  *result = a2;
  return result;
}

uint64_t sub_239460110(uint64_t a1, unsigned int *a2)
{
  v2 = *a1;
  if (a2)
  {
    *a2 = v2;
  }

  if (v2 > 8)
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t sub_239460134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_239402AC0(byte_278A81C18);
  if (result)
  {
    v7 = result;
    sub_2394030C4(*(result + 8));
    *v7 = a2;
    v7[1] = a3;
    *(a1 + 8) = v7;
    result = 1;
    *a1 = 0;
  }

  return result;
}

uint64_t sub_239460190(uint64_t a1, void *a2, void *a3)
{
  if (*a1)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = **(a1 + 8);
  }

  if (a3)
  {
    *a3 = *(*(a1 + 8) + 8);
  }

  return 1;
}

void *sub_2394601C8(uint64_t a1, const void **a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *a2;
  if (!v3)
  {
    return 0;
  }

  v4 = sub_23945004C(v3 + 1);
  v5 = v4;
  if (v4)
  {
    v6 = *a2;
    if (v6)
    {
      memcpy(v4, a2[1], v6);
      v7 = *a2;
    }

    else
    {
      v7 = 0;
    }

    *(v5 + v7) = 0;
  }

  return v5;
}

void *sub_239460234(uint64_t a1, uint64_t a2, char *a3)
{
  if (!a3)
  {
    sub_2394170F4(20, 0, 124, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_ia5.c", 90);
    return 0;
  }

  v4 = sub_239402FA8();
  if (v4)
  {
    v5 = strlen(a3);
    if (!sub_2393FF8AC(v4, a3, v5))
    {
      sub_239402ECC(v4);
      return 0;
    }
  }

  return v4;
}

unint64_t *sub_2394602B0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (sub_239431484(a2))
  {
    v6 = 0;
    v7 = a3;
    while (1)
    {
      v8 = v7;
      v9 = sub_239457528(a2, v6);
      v10 = sub_23945C8C8(a1, v9[1], v7);
      if (!v10)
      {
        break;
      }

      v7 = v10;
      v11 = sub_239457528(v10, v6);
      sub_2393FD94C(__s, 80, *v9);
      v12 = strlen(__s);
      v13 = (strlen(v11[1]) + v12 + 5);
      v14 = sub_23945004C(v13);
      if (!v14)
      {
        v8 = v7;
        break;
      }

      v15 = v14;
      sub_2394507BC(v14, __s, v13);
      sub_239450834(v15, " - ", v13);
      sub_239450834(v15, v11[1], v13);
      sub_239450144(v11[1]);
      v11[1] = v15;
      if (++v6 >= sub_239431484(a2))
      {
        return v7;
      }
    }

    v7 = 0;
    if (!a3)
    {
      if (v8)
      {
        sub_239457574(v8, sub_23946069C, sub_239463380);
        return 0;
      }
    }

    return v7;
  }

  v7 = a3;
  if (a3)
  {
    return v7;
  }

  return sub_2394574D8();
}

unint64_t *sub_2394604A0(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v6 = sub_2394574D8();
  if (v6 && sub_239431484(a3))
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_239457528(a3, v7);
      v9 = sub_239402AC0(byte_278A81EC8);
      if (!v9)
      {
        break;
      }

      v10 = v9;
      if (!sub_2394579D0(v6, v9))
      {
        break;
      }

      v11 = strchr(v8[1], 59);
      if (!v11)
      {
        sub_2394170F4(20, 0, 135, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_info.c", 185);
        break;
      }

      v12 = v11;
      v24[0] = 0;
      v24[1] = v11 + 1;
      v25 = 0;
      v25 = v8[2];
      if (!sub_23945CE0C(v10[1], a1, a2, v24, 0))
      {
        break;
      }

      v13 = sub_23945071C(v8[1], &v12[-v8[1]]);
      if (!v13)
      {
        break;
      }

      v14 = v13;
      v15 = sub_239450E0C(v13, 0);
      *v10 = v15;
      if (!v15)
      {
        sub_2394170F4(20, 0, 101, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_info.c", 200);
        sub_2394171A0(2u, v16, v17, v18, v19, v20, v21, v22, "value=");
        sub_239450144(v14);
        break;
      }

      sub_239450144(v14);
      if (++v7 >= sub_239431484(a3))
      {
        return v6;
      }
    }

    sub_239457574(v6, sub_2394606A8, sub_239460660);
    return 0;
  }

  return v6;
}

uint64_t sub_2394606C0(uint64_t a1)
{
  result = qword_27DF78C00;
  if (qword_27DF78C00 || (result = sub_239457478(sub_239460730), (qword_27DF78C00 = result) != 0))
  {
    result = sub_2394579D0(result, a1);
    if (result)
    {
      sub_239457A78(qword_27DF78C00, sub_239460CD8);
      return 1;
    }
  }

  return result;
}

unint64_t *sub_239460748(int a1)
{
  __key = v5;
  if (a1 < 0)
  {
    return 0;
  }

  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v3 = 0;
  LODWORD(v5[0]) = a1;
  v1 = bsearch(&__key, &off_278A81F18, 0x1FuLL, 8uLL, sub_239460808);
  if (v1)
  {
    return *v1;
  }

  result = qword_27DF78C00;
  if (qword_27DF78C00)
  {
    if (sub_23945784C(qword_27DF78C00, &v3, v5, sub_239460CD8))
    {
      return sub_239457528(qword_27DF78C00, v3);
    }

    return 0;
  }

  return result;
}

unint64_t *sub_239460820(unsigned __int16 **a1)
{
  v1 = sub_2394509E8(*a1);
  if (!v1)
  {
    return 0;
  }

  return sub_239460748(v1);
}

uint64_t sub_23946085C(int a1, void **a2)
{
  v3 = sub_239460748(a1);
  if (v3)
  {
    sub_2394026C0(a2, v3[1]);
    return 1;
  }

  else
  {
    sub_2394170F4(20, 0, 104, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_lib.c", 138);
    return 0;
  }
}

uint64_t sub_2394608B8(int a1, int a2)
{
  v3 = sub_239460748(a2);
  if (v3)
  {
    v4 = v3;
    result = sub_23945004C(0x68uLL);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v7 = *(v4 + 2);
    v8 = *v4;
    *(result + 16) = *(v4 + 1);
    *(result + 32) = v7;
    *result = v8;
    v9 = *(v4 + 3);
    v10 = *(v4 + 4);
    v11 = *(v4 + 5);
    *(result + 96) = v4[12];
    *(result + 64) = v10;
    *(result + 80) = v11;
    *(result + 48) = v9;
    *result = a1;
    if (sub_2394606C0(result))
    {
      return 1;
    }

    sub_239450144(v6);
  }

  else
  {
    sub_2394170F4(20, 0, 114, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_lib.c", 152);
  }

  return 0;
}

unsigned __int8 **sub_239460968(uint64_t a1)
{
  result = sub_239460820(a1);
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 16);
    v5 = *(v4 + 1);
    result = sub_2394004F8(0, &v5, *v4, result[1]);
    if (result)
    {
      if (v5 != *(*(a1 + 16) + 8) + **(a1 + 16))
      {
        sub_2394026C0(result, v3[1]);
        sub_2394170F4(20, 0, 164, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_lib.c", 192);
        return 0;
      }
    }
  }

  return result;
}

unsigned __int8 **sub_239460A04(unint64_t *a1, int a2, int *a3, _DWORD *a4)
{
  if (a1)
  {
    v8 = a4 ? *a4 + 1 : 0;
    v9 = v8 & ~(v8 >> 31);
    if (sub_239431484(a1) > v9)
    {
      v10 = 0;
      while (1)
      {
        v11 = sub_239457528(a1, v9);
        if (sub_2394509E8(*v11) == a2)
        {
          if (a4)
          {
            *a4 = v9;
LABEL_21:
            if (a3)
            {
              *a3 = sub_239468174(v11);
            }

            return sub_239460968(v11);
          }

          if (v10)
          {
            if (!a3)
            {
              return 0;
            }

            v12 = -2;
LABEL_18:
            *a3 = v12;
            return 0;
          }
        }

        else
        {
          v11 = v10;
        }

        ++v9;
        v10 = v11;
        if (v9 >= sub_239431484(a1))
        {
          if (!v11)
          {
            break;
          }

          goto LABEL_21;
        }
      }
    }
  }

  if (a4)
  {
    *a4 = -1;
  }

  if (a3)
  {
    v12 = -1;
    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_239460B2C(uint64_t **a1, uint64_t a2, unint64_t *a3, uint64_t a4, char a5)
{
  v9 = a5 & 0xF;
  if (v9 == 1)
  {
LABEL_2:
    v10 = sub_23945DDE4(a2, a4, a3);
    if (v10)
    {
      v11 = v10;
      v12 = *a1;
      if (*a1 || (v12 = sub_2394574D8()) != 0)
      {
        if (sub_2394579D0(v12, v11))
        {
          *a1 = v12;
          return 1;
        }
      }

      if (v12 != *a1)
      {
        sub_2393FFA58(v12);
      }

      sub_23946DDD4(v11);
      return 0xFFFFFFFFLL;
    }

LABEL_28:
    v18 = 109;
    v19 = 308;
    goto LABEL_29;
  }

  v14 = sub_239467FEC(*a1, a2, -1);
  if ((v14 & 0x80000000) != 0)
  {
    v18 = 114;
    if (v9 != 3 && v9 != 5)
    {
      goto LABEL_2;
    }

    if ((a5 & 0x10) != 0)
    {
      return 0;
    }

LABEL_23:
    v19 = 341;
LABEL_29:
    sub_2394170F4(20, 0, v18, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_lib.c", v19);
    return 0;
  }

  if (!v9)
  {
    v18 = 112;
    if ((a5 & 0x10) != 0)
    {
      return 0;
    }

    goto LABEL_23;
  }

  if (v9 == 4)
  {
    return 1;
  }

  v15 = v14;
  if (v9 == 5)
  {
    v16 = sub_239457700(*a1, v14);
    if (v16)
    {
      sub_23946DDD4(v16);
      return 1;
    }

    return 0xFFFFFFFFLL;
  }

  v20 = sub_23945DDE4(a2, a4, a3);
  if (!v20)
  {
    goto LABEL_28;
  }

  v21 = v20;
  v22 = sub_239457528(*a1, v15);
  sub_23946DDD4(v22);
  if (sub_23945754C(*a1, v15, v21))
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_239460CD8(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  return a1(&v5, &v4);
}

void **sub_239460D08(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v6 = sub_239402AC0(byte_278A82010);
  if (!v6)
  {
    goto LABEL_17;
  }

  if (sub_239431484(a3))
  {
    for (i = 0; i < sub_239431484(a3); ++i)
    {
      v8 = sub_239457528(a3, i);
      v17 = 0;
      v18 = 0;
      v16 = 0;
      v9 = v8[1];
      if (!strncmp(v9, "permitted", 9uLL) && *(v9 + 9))
      {
        v10 = 10;
        v11 = v6;
      }

      else
      {
        if (strncmp(v9, "excluded", 8uLL) || !*(v9 + 8))
        {
          sub_2394170F4(20, 0, 135, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_ncons.c", 142);
LABEL_17:
          v13 = 0;
LABEL_18:
          sub_2394026C0(v6, byte_278A82010);
          sub_2394026C0(v13, byte_278A820A0);
          return 0;
        }

        v10 = 9;
        v11 = (v6 + 1);
      }

      v12 = v8[2];
      v17 = v9 + v10;
      v18 = v12;
      v13 = sub_239402AC0(byte_278A820A0);
      if (!sub_23945CE0C(*v13, a1, a2, &v16, 1))
      {
        goto LABEL_18;
      }

      v14 = *v11;
      if (!*v11)
      {
        v14 = sub_2394574D8();
        *v11 = v14;
        if (!v14)
        {
          goto LABEL_18;
        }
      }

      if (!sub_2394579D0(v14, v13))
      {
        goto LABEL_18;
      }
    }
  }

  return v6;
}

uint64_t sub_239460EAC(uint64_t a1, unint64_t **a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  sub_23946120C(*a2, a3, a4, "Permitted");
  sub_23946120C(a2[1], a3, v4, "Excluded");
  return 1;
}

uint64_t sub_239460F40(uint64_t a1, uint64_t *a2)
{
  v4 = sub_239465D34(a1);
  v5 = sub_23946B400(v4);
  v6 = sub_239431484(*(a1 + 88)) + v5;
  v7 = sub_239431484(*a2);
  v8 = sub_239431484(a2[1]) + v7;
  v9 = !is_mul_ok(v8, v6);
  if (v6 < sub_23946B400(v4) || v8 < sub_239431484(*a2))
  {
    return 1;
  }

  if (v8)
  {
    v10 = v8 * v6 > 0x100000 || v9;
    if (v10)
    {
      return 1;
    }
  }

  if (sub_23946B400(v4) >= 1)
  {
    v19 = v4;
    v18 = 4;
    result = sub_2394610D0(&v18, a2);
    if (result)
    {
      return result;
    }

    LODWORD(v18) = 1;
    v12 = -1;
    while (1)
    {
      v13 = sub_23946B424(v4, 0x30u, v12);
      if (v13 == -1)
      {
        break;
      }

      v12 = v13;
      v14 = sub_23946B39C(v4, v13);
      v19 = sub_23946B390(v14);
      if (*(v19 + 4) != 22)
      {
        return 53;
      }

      result = sub_2394610D0(&v18, a2);
      if (result)
      {
        return result;
      }
    }
  }

  result = sub_239431484(*(a1 + 88));
  if (result)
  {
    v15 = 0;
    do
    {
      v16 = sub_239457528(*(a1 + 88), v15);
      result = sub_2394610D0(v16, a2);
      if (result)
      {
        break;
      }

      ++v15;
      v17 = sub_239431484(*(a1 + 88));
      result = 0;
    }

    while (v15 < v17);
  }

  return result;
}

uint64_t sub_2394610D0(_DWORD *a1, uint64_t a2)
{
  if (sub_239431484(*a2))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = sub_239457528(*a2, v4);
      if (*a1 == **v6)
      {
        if (v6[1] || v6[2])
        {
          return 49;
        }

        if (v5 != 2)
        {
          result = sub_2394613E8(a1, *v6);
          if (result)
          {
            v5 = 1;
            if (result != 47)
            {
              return result;
            }
          }

          else
          {
            v5 = 2;
          }
        }
      }

      ++v4;
    }

    while (v4 < sub_239431484(*a2));
    if (v5 != 1)
    {
      goto LABEL_14;
    }

    return 47;
  }

  else
  {
LABEL_14:
    result = sub_239431484(*(a2 + 8));
    if (result)
    {
      v8 = 0;
      while (1)
      {
        v9 = sub_239457528(*(a2 + 8), v8);
        if (*a1 == **v9)
        {
          if (v9[1] || v9[2])
          {
            return 49;
          }

          result = sub_2394613E8(a1, *v9);
          if (result != 47)
          {
            break;
          }
        }

        if (++v8 >= sub_239431484(*(a2 + 8)))
        {
          return 0;
        }
      }

      if (!result)
      {
        return 48;
      }
    }
  }

  return result;
}

unint64_t sub_23946120C(unint64_t *a1, uint64_t a2, int a3, const char *a4)
{
  if (sub_239431484(a1))
  {
    sub_239404AE0(a2, "%*s%s:\n", a3, "", a4);
  }

  result = sub_239431484(a1);
  if (result)
  {
    v9 = 0;
    v10 = a3 + 2;
    do
    {
      v11 = sub_239457528(a1, v9);
      sub_239404AE0(a2, "%*s", v10, "");
      v12 = *v11;
      if (**v11 == 7)
      {
        v13 = *(v12 + 1);
        v14 = *(v13 + 1);
        v15 = *v13;
        sub_239403848(a2, "IP:");
        if (v15 == 8)
        {
          sub_239404AE0(a2, "%d.%d.%d.%d/%d.%d.%d.%d", *v14);
        }

        else
        {
          if (v15 == 32)
          {
            for (i = 0; ; ++i)
            {
              sub_239404AE0(a2, "%X", __rev16(*v14));
              v17 = "/";
              if (i != 7)
              {
                if (i == 15)
                {
                  goto LABEL_16;
                }

                v17 = ":";
              }

              sub_239403848(a2, v17);
              v14 += 2;
            }
          }

          sub_239404AE0(a2, "IP Address:<invalid>");
        }
      }

      else
      {
        sub_23945CB3C(a2, v12);
      }

LABEL_16:
      sub_239403848(a2, "\n");
      ++v9;
      result = sub_239431484(a1);
    }

    while (v9 < result);
  }

  return result;
}

uint64_t sub_2394613E8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  result = 51;
  if (*a2 <= 3)
  {
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        return result;
      }

      v5 = *(a1 + 8);
      v6 = *(a2 + 8);
      v7 = *(v5 + 1);
      v8 = *v5;
      *&v38 = v7;
      *(&v38 + 1) = v8;
      v9 = *(v6 + 1);
      v10 = *v6;
      v36 = v9;
      v37 = v10;
      if (v10)
      {
        if (*v9 == 46)
        {
LABEL_6:
          v11 = &v38;
LABEL_7:
          v12 = sub_2394616EC(v11, &v36);
          goto LABEL_48;
        }

        if (v8 <= v10 || (LOBYTE(v34) = 0, sub_239407718(&v38, ~v10 + v8)) && sub_239407860(&v38, &v34) && v34 == 46)
        {
          v30 = &v38;
          v31 = &v36;
          goto LABEL_47;
        }

        return 47;
      }

      return 0;
    }

    v16 = *(a1 + 8);
    v17 = *(a2 + 8);
    v18 = *(v16 + 1);
    v19 = *v16;
    *&v38 = v18;
    *(&v38 + 1) = v19;
    v20 = *(v17 + 1);
    v21 = *v17;
    v36 = v20;
    v37 = v21;
    v34 = 0;
    v35 = 0;
    v32 = 0uLL;
    if (sub_239407B8C(&v38, &v34, 64))
    {
      if (sub_239407B8C(&v36, &v32, 64))
      {
        if (*(&v32 + 1) && !sub_239407824(&v32, v34, v35))
        {
          return 47;
        }

        sub_239407718(&v36, 1uLL);
      }

      else if (v37 && *v36 == 46)
      {
        goto LABEL_6;
      }

      sub_239407718(&v38, 1uLL);
      v30 = &v36;
      v31 = &v38;
      goto LABEL_47;
    }

    return 53;
  }

  if (v3 != 6)
  {
    if (v3 != 4)
    {
      return result;
    }

    v13 = *(a1 + 8);
    v14 = *(a2 + 8);
    if (*(v13 + 8) && (sub_23946DE3C(v13, 0) & 0x80000000) != 0 || *(v14 + 8) && (sub_23946DE3C(v14, 0) & 0x80000000) != 0)
    {
      return 17;
    }

    v15 = *(v14 + 32);
    if (v15 > *(v13 + 32) || v15 && memcmp(*(v14 + 24), *(v13 + 24), v15))
    {
      return 47;
    }

    return 0;
  }

  v22 = *(a1 + 8);
  v23 = *(a2 + 8);
  v24 = *(v22 + 1);
  v25 = *v22;
  *&v38 = v24;
  *(&v38 + 1) = v25;
  v26 = *(v23 + 1);
  v27 = *v23;
  v36 = v26;
  v37 = v27;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  if (!sub_239407B8C(&v38, &v34, 58) || !sub_239407718(&v38, 1uLL))
  {
    return 53;
  }

  v28 = sub_239407860(&v38, &v33);
  result = 53;
  if (v28)
  {
    if (v33 == 47)
    {
      v29 = sub_239407860(&v38, &v33);
      result = 53;
      if (v29)
      {
        if (v33 == 47)
        {
          v32 = 0uLL;
          if (!sub_239407B8C(&v38, &v32, 58) && !sub_239407B8C(&v38, &v32, 47))
          {
            v32 = v38;
          }

          if (*(&v32 + 1))
          {
            if (v27 && *v26 == 46)
            {
              v11 = &v32;
              goto LABEL_7;
            }

            v30 = &v36;
            v31 = &v32;
LABEL_47:
            v12 = sub_239461748(v30, v31);
LABEL_48:
            if (v12)
            {
              return 0;
            }

            else
            {
              return 47;
            }
          }

          return 53;
        }
      }
    }
  }

  return result;
}

BOOL sub_2394616EC(__int128 *a1, uint64_t *a2)
{
  v3 = *(a1 + 1);
  v4 = a2[1];
  if (v3 < v4)
  {
    return 0;
  }

  v6 = *a1;
  sub_239407718(&v6, v3 - v4);
  return sub_239461748(&v6, a2);
}

BOOL sub_239461748(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (v2 != a2[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = *a1;
  v6 = *a2;
  do
  {
    v7 = sub_239450458(*(v5 + v4));
    v8 = sub_239450458(*(v6 + v4));
    if (v7 != v8)
    {
      break;
    }

    ++v4;
  }

  while (v4 < a1[1]);
  return v7 == v8;
}

unint64_t *sub_239461858(uint64_t a1, unsigned __int8 ***a2, unint64_t *a3)
{
  v5 = a3;
  sub_239463720("Require Explicit Policy", *a2, &v5);
  sub_239463720("Inhibit Policy Mapping", a2[1], &v5);
  return v5;
}

uint64_t *sub_2394618B0(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = sub_239402AC0(byte_278A82110);
  if (!v4)
  {
    return v4;
  }

  if (sub_239431484(a3))
  {
    for (i = 0; i < sub_239431484(a3); ++i)
    {
      v6 = sub_239457528(a3, i);
      v7 = v6[1];
      if (!strcmp(v7, "requireExplicitPolicy"))
      {
        v9 = v6;
        v8 = v4;
      }

      else
      {
        if (strcmp(v7, "inhibitPolicyMapping"))
        {
          sub_2394170F4(20, 0, 123, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_pcons.c", 128);
          sub_2394171A0(6u, v10, v11, v12, v13, v14, v15, v16, "section:");
LABEL_14:
          sub_2394026C0(v4, byte_278A82110);
          return 0;
        }

        v8 = v4 + 1;
        v9 = v6;
      }

      if (!sub_239463954(v9, v8))
      {
        goto LABEL_14;
      }
    }
  }

  if (!v4[1] && !*v4)
  {
    sub_2394170F4(20, 0, 117, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_pcons.c", 134);
    goto LABEL_14;
  }

  return v4;
}

unint64_t *sub_239461A38(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (sub_239431484(a2))
  {
    v5 = 0;
    do
    {
      v6 = sub_239457528(a2, v5);
      sub_2393FD94C(v10, 80, *v6);
      sub_2393FD94C(__s, 80, v6[1]);
      sub_2394631D4(v10, __s, &v8);
      ++v5;
    }

    while (v5 < sub_239431484(a2));
    return v8;
  }

  return v3;
}

unint64_t *sub_239461B08(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = sub_2394574D8();
  if (v4 && sub_239431484(a3))
  {
    v5 = 0;
    while (1)
    {
      v6 = sub_239457528(a3, v5);
      v7 = v6;
      if (!v6[2] || !v6[1])
      {
        v10 = 126;
        goto LABEL_15;
      }

      v8 = sub_239402AC0(byte_278A821F0);
      if (!v8 || !sub_2394579D0(v4, v8))
      {
        sub_2394026C0(v8, byte_278A821F0);
        goto LABEL_16;
      }

      *v8 = sub_239450E0C(v7[1], 0);
      v9 = sub_239450E0C(v7[2], 0);
      v8[1] = v9;
      if (!*v8 || !v9)
      {
        break;
      }

      if (++v5 >= sub_239431484(a3))
      {
        return v4;
      }
    }

    v10 = 140;
LABEL_15:
    sub_2394170F4(20, 0, 129, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_pmaps.c", v10);
    sub_2394171A0(6u, v11, v12, v13, v14, v15, v16, v17, "section:");
LABEL_16:
    sub_239457574(v4, sub_239461CB0, sub_239461CA4);
    return 0;
  }

  return v4;
}

BOOL sub_239461CBC(uint64_t a1, unsigned __int16 **a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_239460820(a2);
  if (v8)
  {
    v9 = v8;
    v10 = sub_23952C81C(a2);
    v29 = sub_2393FFBF4(v10);
    v11 = sub_2393FFBE4(v10);
    v12 = sub_2394004F8(0, &v29, v11, v9[1]);
    if (!v12)
    {
      return sub_239461FE0(a1, a2, a3, a4, 1);
    }

    v13 = v12;
    v14 = v9[6];
    if (v14)
    {
      v15 = v14(v9, v12);
      v16 = v15;
      if (v15)
      {
        sub_239404AE0(a1, "%*s%s", a4, "", v15);
        v17 = 0;
LABEL_35:
        v19 = 1;
LABEL_40:
        sub_239457574(v17, sub_2394622B8, sub_239463380);
        sub_239450144(v16);
        sub_2394026C0(v13, v9[1]);
        return v19;
      }

      goto LABEL_38;
    }

    v20 = v9[8];
    if (!v20)
    {
      v28 = v9[10];
      if (v28)
      {
        v16 = 0;
        if (!v28(v9, v12, a1, a4))
        {
          v19 = 0;
          v17 = 0;
          goto LABEL_40;
        }

        v17 = 0;
        goto LABEL_35;
      }

      sub_2394170F4(20, 0, 147, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_prn.c", 138);
      v16 = 0;
LABEL_38:
      v17 = 0;
      goto LABEL_39;
    }

    v21 = v20(v9, v12, 0);
    v17 = v21;
    if (!v21)
    {
      v16 = 0;
LABEL_39:
      v19 = 0;
      goto LABEL_40;
    }

    v22 = *(v9 + 1);
    if ((v22 & 4) == 0 || !sub_239431484(v21))
    {
      sub_239404AE0(a1, "%*s", a4, "");
      if (!sub_239431484(v17))
      {
        sub_239403848(a1, "<EMPTY>\n");
      }
    }

    if (!sub_239431484(v17))
    {
LABEL_31:
      v16 = 0;
      goto LABEL_35;
    }

    v23 = 0;
    while (1)
    {
      if ((v22 & 4) != 0)
      {
        sub_239404AE0(a1, "%*s");
      }

      else if (v23)
      {
        sub_239404AE0(a1, ", ");
      }

      v24 = sub_239457528(v17, v23);
      v25 = v24[1];
      v26 = v24[2];
      if (v25)
      {
        if (v26)
        {
          sub_239404AE0(a1, "%s:%s", v24[1], v26);
          if ((v22 & 4) == 0)
          {
            goto LABEL_30;
          }

LABEL_29:
          sub_239403848(a1, "\n");
          goto LABEL_30;
        }

        v27 = a1;
      }

      else
      {
        v27 = a1;
        v25 = v26;
      }

      sub_239403848(v27, v25);
      if ((v22 & 4) != 0)
      {
        goto LABEL_29;
      }

LABEL_30:
      if (++v23 >= sub_239431484(v17))
      {
        goto LABEL_31;
      }
    }
  }

  return sub_239461FE0(a1, a2, a3, a4, 0);
}

BOOL sub_239461FE0(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4, int a5)
{
  v7 = (a3 >> 16) & 0xF;
  if (v7 - 2 < 2)
  {
    v8 = sub_23952C81C(a2);
    v9 = sub_2393FFBF4(v8);
    v10 = sub_2393FFBE4(v8);

    return sub_23940482C(a1, v9, v10, a4);
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      if (a5)
      {
        sub_239404AE0(a1, "%*s<Parse Error>");
      }

      else
      {
        sub_239404AE0(a1, "%*s<Not Supported>");
      }
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2394620BC(uint64_t a1, const char *a2, unint64_t *a3, unint64_t a4, int a5)
{
  if (!sub_239431484(a3))
  {
    return 1;
  }

  if (a2)
  {
    sub_239404AE0(a1, "%*s%s:\n", a5, "", a2);
    a5 += 4;
  }

  if (!sub_239431484(a3))
  {
    return 1;
  }

  v10 = 0;
  while (1)
  {
    v11 = sub_239457528(a3, v10);
    if (a5)
    {
      if (sub_239404AE0(a1, "%*s", a5, "") < 1)
      {
        break;
      }
    }

    v12 = sub_239431484(v11);
    sub_2393FD954(a1, v12);
    v13 = sub_239468174(v11);
    v14 = "critical";
    if (!v13)
    {
      v14 = "";
    }

    if (sub_239404AE0(a1, ": %s\n", v14) < 1)
    {
      break;
    }

    if (!sub_239461CBC(a1, v11, a4, (a5 + 4)))
    {
      sub_239404AE0(a1, "%*s", a5 + 4, "");
      v15 = sub_23952C81C(v11);
      sub_2393FE2C0(a1, v15);
    }

    if (sub_239403738(a1, "\n", 1) <= 0)
    {
      break;
    }

    if (++v10 >= sub_239431484(a3))
    {
      return 1;
    }
  }

  return 0;
}

void *sub_239462258(uint64_t a1, unsigned __int16 **a2, int a3, uint64_t a4)
{
  result = sub_2394042E8();
  if (result)
  {
    v8 = result;
    v9 = sub_239461CBC(result, a2, a3, a4);
    sub_239403520(v8);
    return v9;
  }

  return result;
}

uint64_t sub_2394622C4(uint64_t a1, int a2, int a3)
{
  result = sub_239462398(a1);
  if (result)
  {
    if (a2 == -1)
    {
      return 1;
    }

    else
    {
      v7 = &dword_284BBACA0;
      v8 = 9;
      while (*v7 != a2)
      {
        v7 += 6;
        if (!--v8)
        {
          return 0;
        }
      }

      if (a2 != 7 && a3)
      {
        v9 = *(a1 + 48);
        if ((v9 & 2) != 0 && (*(a1 + 52) & 4) == 0)
        {
          return 0;
        }

        if ((~v9 & 0x2040) != 0 && (*(a1 + 48) & 0x11) != 0x11)
        {
          return 0;
        }
      }

      v10 = *(v7 + 1);

      return v10();
    }
  }

  return result;
}

BOOL sub_239462398(uint64_t a1)
{
  sub_239457D1C((a1 + 144));
  v2 = *(a1 + 48);
  sub_239457D5C((a1 + 144));
  if ((v2 & 0x100) == 0)
  {
    sub_239457D3C((a1 + 144));
    if (*(a1 + 49))
    {
LABEL_98:
      sub_239457D5C((a1 + 144));
      return ((*(a1 + 48) >> 7) & 1) == 0;
    }

    v3 = sub_2394316DC();
    if (!sub_23946CD70(a1, v3, a1 + 104, 0))
    {
      *(a1 + 48) |= 0x80u;
    }

    if (!sub_239467A30(a1))
    {
      *(a1 + 48) |= 0x40u;
    }

    v34 = 0;
    v4 = sub_239466178(a1, 87, &v34, 0);
    if (v4)
    {
      v5 = v4;
      if (*v4)
      {
        *(a1 + 48) |= 0x10u;
      }

      v6 = v4[1];
      if (v6)
      {
        if (*(v6 + 4) == 258 || !*v5)
        {
          v7 = 0;
          *(a1 + 48) |= 0x80u;
        }

        else
        {
          v7 = sub_2393FD028(v6);
        }
      }

      else
      {
        v7 = -1;
      }

      *(a1 + 40) = v7;
      sub_23945D504(v5);
      v8 = 1;
    }

    else
    {
      if (v34 == -1)
      {
        goto LABEL_20;
      }

      v8 = 128;
    }

    *(a1 + 48) |= v8;
LABEL_20:
    v9 = sub_239466178(a1, 83, &v34, 0);
    if (v9)
    {
      if (*v9 < 1)
      {
        *(a1 + 52) = 0;
      }

      else
      {
        v10 = *v9[1];
        *(a1 + 52) = v10;
        if (*v9 >= 2)
        {
          *(a1 + 52) = v10 | (v9[1][1] << 8);
        }
      }

      *(a1 + 48) |= 2u;
      sub_239402ECC(v9);
    }

    else if (v34 != -1)
    {
      *(a1 + 48) |= 0x80u;
    }

    *(a1 + 56) = 0;
    v11 = sub_239466178(a1, 126, &v34, 0);
    if (v11)
    {
      v12 = v11;
      *(a1 + 48) |= 4u;
      if (sub_239431484(v11))
      {
        for (i = 0; i < sub_239431484(v12); ++i)
        {
          v14 = sub_239457528(v12, i);
          v15 = sub_2394509E8(v14);
          if (v15 > 136)
          {
            if (v15 <= 179)
            {
              if (v15 != 137 && v15 != 139)
              {
                continue;
              }

              v16 = 16;
              goto LABEL_53;
            }

            switch(v15)
            {
              case 180:
                v16 = 32;
                goto LABEL_53;
              case 297:
                v16 = 128;
                goto LABEL_53;
              case 910:
                v16 = 256;
                goto LABEL_53;
            }
          }

          else if (v15 <= 130)
          {
            if (v15 == 129)
            {
              v16 = 1;
              goto LABEL_53;
            }

            if (v15 == 130)
            {
              v16 = 2;
              goto LABEL_53;
            }
          }

          else
          {
            switch(v15)
            {
              case 131:
                v16 = 8;
                goto LABEL_53;
              case 132:
                v16 = 4;
                goto LABEL_53;
              case 133:
                v16 = 64;
LABEL_53:
                *(a1 + 56) |= v16;
                break;
            }
          }
        }
      }

      sub_239457574(v12, sub_239462FA4, sub_2393FDCD8);
    }

    else if (v34 != -1)
    {
      *(a1 + 48) |= 0x80u;
    }

    v17 = sub_239466178(a1, 82, &v34, 0);
    *(a1 + 64) = v17;
    if (!v17 && v34 != -1)
    {
      *(a1 + 48) |= 0x80u;
    }

    v18 = sub_239466178(a1, 90, &v34, 0);
    *(a1 + 72) = v18;
    if (!v18 && v34 != -1)
    {
      *(a1 + 48) |= 0x80u;
    }

    v19 = sub_239465D34(a1);
    v20 = sub_239465C18(a1);
    if (!sub_239465AD0(v19, v20))
    {
      *(a1 + 48) |= 0x20u;
      if (!sub_239462A34(a1, *(a1 + 72)))
      {
        v21 = *(a1 + 48);
        if ((v21 & 2) == 0 || (*(a1 + 52) & 4) != 0)
        {
          *(a1 + 48) = v21 | 0x2000;
        }
      }
    }

    v22 = sub_239466178(a1, 85, &v34, 0);
    *(a1 + 88) = v22;
    if (!v22 && v34 != -1)
    {
      *(a1 + 48) |= 0x80u;
    }

    v23 = sub_239466178(a1, 666, &v34, 0);
    *(a1 + 96) = v23;
    if (!v23 && v34 != -1)
    {
      *(a1 + 48) |= 0x80u;
    }

    v35 = 0;
    v24 = sub_239466178(a1, 103, &v35, 0);
    *(a1 + 80) = v24;
    if (v24 || v35 == -1)
    {
      if (!sub_239431484(v24))
      {
        goto LABEL_91;
      }

      v25 = 0;
      while (1)
      {
        v26 = sub_239457528(*(a1 + 80), v25);
        if (*v26 && **v26 == 1)
        {
          v27 = v26;
          if (!sub_239431484(v26[2]))
          {
            goto LABEL_88;
          }

          v28 = 0;
          while (1)
          {
            v29 = sub_239457528(v27[2], v28);
            if (*v29 == 4)
            {
              break;
            }

            if (++v28 >= sub_239431484(v27[2]))
            {
              goto LABEL_88;
            }
          }

          v30 = v29[1];
          if (!v30)
          {
LABEL_88:
            v30 = sub_239465C18(a1);
          }

          if (!sub_23945F414(*v27, v30))
          {
            break;
          }
        }

        if (++v25 >= sub_239431484(*(a1 + 80)))
        {
          goto LABEL_91;
        }
      }
    }

    *(a1 + 48) |= 0x80u;
LABEL_91:
    v34 = 0;
    if (sub_239466108(a1) >= 1)
    {
      while (1)
      {
        v31 = sub_239466138(a1, v34);
        if (sub_239468174(v31) && !sub_2394629C0(v31))
        {
          break;
        }

        v32 = ++v34;
        if (v32 >= sub_239466108(a1))
        {
          goto LABEL_97;
        }
      }

      *(a1 + 48) |= 0x200u;
    }

LABEL_97:
    *(a1 + 48) |= 0x100u;
    goto LABEL_98;
  }

  return ((*(a1 + 48) >> 7) & 1) == 0;
}

int *sub_239462934(int a1)
{
  result = &dword_284BBACA0;
  v3 = 9;
  while (*result != a1)
  {
    result += 6;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_239462964(char *__s2)
{
  v2 = &off_284BBACB0;
  v3 = 9;
  while (strcmp(*v2, __s2))
  {
    v2 += 3;
    if (!--v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *(v2 - 4);
}

BOOL sub_2394629C0(uint64_t a1)
{
  v1 = sub_239431484(a1);
  v2 = sub_2394509E8(v1);
  result = 1;
  if (v2 <= 400)
  {
    if ((v2 - 83) <= 0x2B && ((1 << (v2 - 83)) & 0x80000000055) != 0)
    {
      return result;
    }

    return v2 == 748;
  }

  if (v2 != 401 && v2 != 666 && v2 != 747)
  {
    return v2 == 748;
  }

  return result;
}

uint64_t sub_239462A34(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*a2 && *(a1 + 64) && sub_2393FDD90())
  {
    return 30;
  }

  if (a2[2])
  {
    v5 = sub_239465D40(a1);
    if (sub_2393FC994(v5, a2[2]))
    {
      return 31;
    }
  }

  v6 = a2[1];
  if (v6 && sub_239431484(v6))
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_239457528(v6, v7);
      if (*v8 == 4)
      {
        break;
      }

      if (++v7 >= sub_239431484(v6))
      {
        return 0;
      }
    }

    v9 = v8[1];
    if (v9)
    {
      v10 = sub_239465C18(a1);
      if (sub_239465AD0(v9, v10))
      {
        return 31;
      }
    }
  }

  return 0;
}

uint64_t sub_239462B20(uint64_t a1)
{
  result = sub_239462398(a1);
  if (result)
  {
    v3 = *(a1 + 48);
    if ((v3 & 2) == 0 || (*(a1 + 52) & 4) != 0)
    {
      v4 = (~v3 & 0x2040) == 0;
      v5 = v3 & (v3 >> 4) & 1;
      if (v4)
      {
        return 1;
      }

      else
      {
        return v5;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_239462B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_239465D34(a1);
  v5 = sub_239465C18(a2);
  if (sub_239465AD0(v4, v5))
  {
    return 29;
  }

  if (!sub_239462398(a1) || !sub_239462398(a2))
  {
    return 1;
  }

  v7 = *(a2 + 72);
  if (!v7 || (result = sub_239462A34(a1, v7), !result))
  {
    if ((*(a1 + 48) & 2) == 0 || (*(a1 + 52) & 4) != 0)
    {
      return 0;
    }

    else
    {
      return 32;
    }
  }

  return result;
}

uint64_t sub_239462C44(uint64_t a1)
{
  result = sub_239462398(a1);
  if (result)
  {
    if ((*(a1 + 48) & 2) != 0)
    {
      return *(a1 + 52);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_239462C80(uint64_t a1)
{
  result = sub_239462398(a1);
  if (result)
  {
    if ((*(a1 + 48) & 4) != 0)
    {
      return *(a1 + 56);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_239462CBC(uint64_t a1)
{
  if (sub_239462398(a1))
  {
    return *(a1 + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239462CF0(uint64_t a1)
{
  if (sub_239462398(a1) && (v2 = *(a1 + 72)) != 0)
  {
    return *v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239462D2C(uint64_t a1)
{
  if (sub_239462398(a1) && (v2 = *(a1 + 72)) != 0)
  {
    return *(v2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239462D68(uint64_t a1)
{
  if (sub_239462398(a1) && (v2 = *(a1 + 72)) != 0)
  {
    return *(v2 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239462DA4(uint64_t a1)
{
  if (sub_239462398(a1) && (*(a1 + 48) & 1) != 0)
  {
    return *(a1 + 40);
  }

  else
  {
    return -1;
  }
}

BOOL sub_239462DE0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 48);
  if ((v3 & 4) != 0 && (*(a2 + 56) & 2) == 0)
  {
    return 0;
  }

  result = 1;
  if (!a3 && (v3 & 2) != 0)
  {
    return (*(a2 + 52) & 0x88) != 0;
  }

  return result;
}

BOOL sub_239462E18(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 48);
  if ((v3 & 4) != 0 && (*(a2 + 56) & 1) == 0)
  {
    return 0;
  }

  result = 1;
  if (!a3 && (v3 & 2) != 0)
  {
    return (*(a2 + 52) & 0xA8) != 0;
  }

  return result;
}

uint64_t sub_239462E50(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 48);
  if ((v3 & 4) != 0 && (*(a2 + 56) & 1) == 0)
  {
    return 0;
  }

  result = 1;
  if (!a3 && (v3 & 2) != 0)
  {
    return (*(a2 + 52) >> 5) & 1;
  }

  return result;
}

BOOL sub_239462E80(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 48);
  if ((v3 & 4) != 0 && (*(a2 + 56) & 4) == 0)
  {
    return 0;
  }

  result = 1;
  if (!a3 && (v3 & 2) != 0)
  {
    return (*(a2 + 52) & 0xC0) != 0;
  }

  return result;
}

uint64_t sub_239462EB4(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 48);
  if ((v3 & 4) != 0 && (*(a2 + 56) & 4) == 0)
  {
    return 0;
  }

  result = 1;
  if (!a3 && (v3 & 2) != 0)
  {
    return (*(a2 + 52) >> 5) & 1;
  }

  return result;
}

uint64_t sub_239462EE4(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3 && (*(a2 + 48) & 2) != 0)
  {
    return (*(a2 + 52) >> 1) & 1;
  }

  else
  {
    return 1;
  }
}

BOOL sub_239462F0C(uint64_t a1, _DWORD *a2, int a3)
{
  if (a3)
  {
    return 1;
  }

  v5 = a2[12];
  if ((v5 & 2) != 0)
  {
    result = 0;
    if ((v5 & 4) == 0)
    {
      return result;
    }

    v6 = a2[13];
    if (!v6 || (v6 & 0xFFFFFF3F) != 0)
    {
      return result;
    }
  }

  else if ((v5 & 4) == 0)
  {
    return 0;
  }

  if (a2[14] != 64)
  {
    return 0;
  }

  v7 = sub_239466114(a2, 126, 0xFFFFFFFFLL);
  if ((v7 & 0x80000000) != 0)
  {
    return 1;
  }

  v8 = sub_239466138(a2, v7);
  result = sub_239468174(v8);
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_239462FBC(uint64_t a1, uint64_t a2, const char *a3)
{
  v8 = 0;
  v3 = sub_239463DB0(a3, &v8);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (v8 >> 31)
  {
    sub_2394170F4(20, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_skey.c", 84);
LABEL_6:
    sub_239450144(v4);
    return 0;
  }

  v5 = sub_239402EC4();
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  sub_2393FFA9C(v5, v4, v8);
  return v6;
}

void *sub_23946305C(int a1, uint64_t a2, char *__s1)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = strcmp(__s1, "hash");
  if (!v5)
  {
    v8 = sub_239402EC4();
    if (v8)
    {
      v16 = 0;
      if (!a2)
      {
        goto LABEL_16;
      }

      if (*a2 != 1)
      {
        v9 = *(a2 + 24);
        if (v9)
        {
          v10 = 40;
LABEL_12:
          v11 = *(*(*v9 + v10) + 8);
          if (v11)
          {
            v12 = *(v11 + 1);
            v13 = *v11;
            v14 = sub_2394315BC();
            if (sub_239430E60(v12, v13, v17, &v16, v14) && sub_2393FDD94(v8, v17, v16))
            {
              return v8;
            }

            goto LABEL_18;
          }

          v15 = 136;
LABEL_17:
          sub_2394170F4(20, 0, 144, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_skey.c", v15);
LABEL_18:
          sub_239402ECC(v8);
          return 0;
        }

        v9 = *(a2 + 16);
        if (v9)
        {
          v10 = 48;
          goto LABEL_12;
        }

LABEL_16:
        v15 = 125;
        goto LABEL_17;
      }
    }

    return v8;
  }

  return sub_239462FBC(v5, v6, __s1);
}

uint64_t sub_2394631D4(const char *a1, char *__s, unint64_t **a3)
{
  if (__s)
  {
    v6 = strlen(__s);
  }

  else
  {
    v6 = 0;
  }

  return sub_239463240(a1, __s, v6, __s == 0, a3);
}

uint64_t sub_239463240(const char *a1, _BYTE *a2, size_t a3, int a4, unint64_t **a5)
{
  v9 = *a5;
  if (!a1)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v10 = sub_23945030C(a1);
  if (!v10)
  {
    goto LABEL_14;
  }

  if (!a4)
  {
LABEL_11:
    if (!a3 || !memchr(a2, 0, a3))
    {
      v11 = sub_23945071C(a2, a3);
      if (!v11)
      {
        v12 = 0;
        if (v9)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      goto LABEL_5;
    }

    sub_2394170F4(20, 0, 163, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_utl.c", 104);
LABEL_14:
    v12 = 0;
    v11 = 0;
    goto LABEL_15;
  }

LABEL_4:
  v11 = 0;
LABEL_5:
  v12 = sub_239405E68();
  if (v12)
  {
    if (*a5 || (v13 = sub_2394574D8(), (*a5 = v13) != 0))
    {
      *v12 = 0;
      v12[1] = v10;
      v12[2] = v11;
      if (sub_2394579D0(*a5, v12))
      {
        return 1;
      }
    }
  }

LABEL_15:
  if (!v9)
  {
LABEL_16:
    sub_2393FFA58(*a5);
    *a5 = 0;
  }

LABEL_17:
  sub_239450144(v12);
  sub_239450144(v10);
  sub_239450144(v11);
  return 0;
}

void sub_239463380(void *a1)
{
  if (a1)
  {
    sub_239450144(a1[1]);
    sub_239450144(a1[2]);
    sub_239450144(*a1);

    sub_239450144(a1);
  }
}

uint64_t sub_2394633D4(const char *a1, int a2, unint64_t **a3)
{
  if (a2)
  {
    v4 = "TRUE";
    v5 = 4;
  }

  else
  {
    v4 = "FALSE";
    v5 = 5;
  }

  return sub_239463240(a1, v4, v5, 0, a3);
}

_BYTE *sub_239463404(uint64_t a1, unsigned __int8 **a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = sub_2393FD21C(a2, 0);
  v3 = v2;
  if (v2)
  {
    v4 = sub_239463460(v2);
  }

  else
  {
    v4 = 0;
  }

  sub_239421EC8(v3);
  return v4;
}

_BYTE *sub_239463460(uint64_t *a1)
{
  if (sub_239422114(a1) > 0x1F)
  {
    v3 = sub_23940541C(a1);
    if (!v3)
    {
      return 0;
    }

    v4 = v3;
    v5 = strlen(v3);
    v6 = sub_23945004C(v5 + 3);
    v7 = v6;
    if (v6)
    {
      if (*v4 == 45)
      {
        sub_2394507BC(v6, "-0x", v5 + 3);
        v8 = v4 + 1;
      }

      else
      {
        sub_2394507BC(v6, "0x", v5 + 3);
        v8 = v4;
      }

      sub_239450834(v7, v8, v5 + 3);
    }

    sub_239450144(v4);
    return v7;
  }

  else
  {

    return sub_239405728(a1);
  }
}

_BYTE *sub_239463540(uint64_t a1, unsigned __int8 **a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = sub_2393FD16C(a2, 0);
  v3 = v2;
  if (v2)
  {
    v4 = sub_239463460(v2);
  }

  else
  {
    v4 = 0;
  }

  sub_239421EC8(v3);
  return v4;
}

char *sub_23946359C(uint64_t a1, char *a2)
{
  v2 = a2;
  if (!a2)
  {
    v8 = 126;
    v9 = 237;
LABEL_11:
    sub_2394170F4(20, 0, v8, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_utl.c", v9);
    return v2;
  }

  v3 = sub_239421E8C();
  v12 = v3;
  v4 = *v2;
  if (v4 == 45)
  {
    ++v2;
  }

  if (*v2 == 48 && (v2[1] | 0x20) == 0x78)
  {
    v2 += 2;
    v5 = sub_239405508(&v12, v2);
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (strlen(v2) > 0x2000)
    {
      sub_239421EC8(v3);
      v6 = 127;
      v7 = 265;
LABEL_15:
      sub_2394170F4(20, 0, v6, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_utl.c", v7);
      return 0;
    }

    v5 = sub_23940591C(&v12, v2);
    if (!v5)
    {
LABEL_14:
      sub_239421EC8(v12);
      v6 = 102;
      v7 = 273;
      goto LABEL_15;
    }
  }

  if (v2[v5])
  {
    goto LABEL_14;
  }

  v11 = v4 != 45 || sub_239421914(v12);
  v2 = sub_2393FD084(v12, 0);
  sub_239421EC8(v12);
  if (!v2)
  {
    v8 = 103;
    v9 = 284;
    goto LABEL_11;
  }

  if (!v11)
  {
    *(v2 + 1) |= 0x100u;
  }

  return v2;
}

uint64_t sub_239463720(const char *a1, unsigned __int8 **a2, unint64_t **a3)
{
  if (!a2)
  {
    return 1;
  }

  result = sub_239463540(a1, a2);
  if (result)
  {
    v6 = result;
    v7 = strlen(result);
    v8 = sub_239463240(a1, v6, v7, 0, a3);
    sub_239450144(v6);
    return v8;
  }

  return result;
}

uint64_t sub_239463790(const char *a1, _DWORD *a2)
{
  if (!strcmp(a1, "TRUE") || !strcmp(a1, "true") || ((v4 = *a1, v4 == 121) || v4 == 89) && !a1[1] || !strcmp(a1, "YES") || !strcmp(a1, "yes"))
  {
    *a2 = 255;
    return 1;
  }

  if (!strcmp(a1, "FALSE") || !strcmp(a1, "false"))
  {
    goto LABEL_21;
  }

  if (v4 == 110)
  {
    if (!a1[1])
    {
      goto LABEL_21;
    }

    if (a1[1] == 111)
    {
      goto LABEL_19;
    }
  }

  else if (v4 == 78)
  {
    if (a1[1])
    {
      if (a1[1] != 79)
      {
        goto LABEL_20;
      }

LABEL_19:
      if (a1[2])
      {
        goto LABEL_20;
      }
    }

LABEL_21:
    *a2 = 0;
    return 1;
  }

LABEL_20:
  sub_2394170F4(20, 0, 120, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_utl.c", 319);
  return 0;
}

uint64_t sub_2394638C0(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (sub_239463790(v2, a2))
    {
      return 1;
    }
  }

  else
  {
    sub_2394170F4(20, 0, 120, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_utl.c", 326);
  }

  sub_2394171A0(6u, v3, v4, v5, v6, v7, v8, v9, "section:");
  return 0;
}

uint64_t sub_239463954(uint64_t a1, uint64_t *a2)
{
  v3 = sub_23946359C(a1, *(a1 + 16));
  if (v3)
  {
    v11 = v3;
    sub_239402ECC(*a2);
    *a2 = v11;
    return 1;
  }

  else
  {
    sub_2394171A0(6u, v4, v5, v6, v7, v8, v9, v10, "section:");
    return 0;
  }
}

unint64_t *sub_2394639E4(const char *a1)
{
  v22 = 0;
  v1 = sub_23945030C(a1);
  v2 = v1;
  if (!v1)
  {
    goto LABEL_33;
  }

  v3 = 0;
  v4 = v1 + 1;
  v5 = v1;
  v6 = 1;
  while (1)
  {
    v7 = *(v4 - 1);
    if (v7 <= 0xD && ((1 << v7) & 0x2401) != 0)
    {
      v14 = sub_239463C38(v1);
      v15 = v14;
      if (v6 == 2)
      {
        if (!v14)
        {
          v20 = 126;
          v21 = 421;
          goto LABEL_32;
        }

        v16 = strlen(v14);
        v14 = v3;
        v17 = v15;
        v18 = 0;
      }

      else
      {
        if (!v14)
        {
          v20 = 125;
          v21 = 431;
          goto LABEL_32;
        }

        v17 = 0;
        v16 = 0;
        v18 = 1;
      }

      sub_239463240(v14, v17, v16, v18, &v22);
      sub_239450144(v2);
      return v22;
    }

    if (v6 != 1)
    {
      if (v7 == 44)
      {
        *(v4 - 1) = 0;
        v10 = sub_239463C38(v1);
        if (!v10)
        {
          v20 = 126;
          v21 = 405;
          goto LABEL_32;
        }

        v11 = v10;
        v12 = strlen(v10);
        sub_239463240(v3, v11, v12, 0, &v22);
        v3 = 0;
        v1 = v5 + 1;
LABEL_16:
        v6 = 1;
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (v7 != 44)
    {
      if (v7 != 58)
      {
        goto LABEL_16;
      }

      *(v4 - 1) = 0;
      v9 = sub_239463C38(v1);
      if (!v9)
      {
        v20 = 125;
        v21 = 377;
        goto LABEL_32;
      }

      v3 = v9;
      v1 = v5 + 1;
LABEL_17:
      v6 = 2;
      goto LABEL_20;
    }

    *(v4 - 1) = 0;
    v13 = sub_239463C38(v1);
    if (!v13)
    {
      break;
    }

    v3 = v13;
    v6 = 1;
    sub_239463240(v13, 0, 0, 1, &v22);
    v1 = v4;
LABEL_20:
    ++v5;
    ++v4;
  }

  v20 = 125;
  v21 = 389;
LABEL_32:
  sub_2394170F4(20, 0, v20, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_utl.c", v21);
LABEL_33:
  sub_239450144(v2);
  sub_239457574(v22, sub_239464D2C, sub_239463380);
  return 0;
}

const char *sub_239463C38(const char *a1)
{
  v1 = a1;
  v2 = *a1;
  if (!v2)
  {
    return 0;
  }

  while (sub_23945046C(v2))
  {
    v3 = *++v1;
    v2 = v3;
    if (!v3)
    {
      return 0;
    }
  }

  if (!*v1)
  {
    return 0;
  }

  v4 = strlen(v1);
  while (1)
  {
    v5 = v4 - 1;
    if (v4 == 1)
    {
      break;
    }

    v6 = sub_23945046C(v1[v4 - 1]);
    v4 = v5;
    if (!v6)
    {
      v1[v5 + 1] = 0;
      break;
    }
  }

  if (*v1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239463CC0(uint64_t a1, uint64_t a2)
{
  memset(v8, 0, sizeof(v8));
  if (sub_2394065F4(v8, 3 * a2 + 1))
  {
    if (a2)
    {
      v4 = 0;
      while ((!v4 || sub_239406ACC(v8, 0x3Au)) && sub_239406ACC(v8, a0123456789abcd_3[*(a1 + v4) >> 4]) && sub_239406ACC(v8, a0123456789abcd_3[*(a1 + v4) & 0xF]))
      {
        if (a2 == ++v4)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v6 = 0;
      v7 = 0;
      if (sub_239406ACC(v8, 0) && sub_2394066A4(v8, &v7, &v6))
      {
        return v7;
      }
    }
  }

  sub_239406688(v8);
  return 0;
}

void *sub_239463DB0(const char *a1, void *a2)
{
  v13 = 0;
  if (a1)
  {
    v3 = a1;
    v4 = strlen(a1);
    v5 = sub_23945004C(v4 >> 1);
    v6 = v5;
    if (!v5)
    {
      sub_239450144(0);
      return v6;
    }

    v7 = v5;
    while (2)
    {
      ++v3;
      do
      {
        v8 = *(v3 - 1);
        if (!*(v3 - 1))
        {
          if (a2)
          {
            *a2 = v7 - v6;
          }

          return v6;
        }

        ++v3;
      }

      while (v8 == 58);
      v9 = *(v3 - 1);
      if (!*(v3 - 1))
      {
        sub_2394170F4(20, 0, 146, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_utl.c", 515);
        sub_239450144(v6);
        return 0;
      }

      if (sub_2394503EC(&v13 + 1, v8) && sub_2394503EC(&v13, v9))
      {
        *v7++ = v13 | (16 * HIBYTE(v13));
        continue;
      }

      break;
    }

    sub_239450144(v6);
    v10 = 118;
    v11 = 540;
  }

  else
  {
    v10 = 124;
    v11 = 502;
  }

  sub_2394170F4(20, 0, v10, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/v3_utl.c", v11);
  return 0;
}

BOOL sub_239463EE4(const char *a1, char *__s)
{
  v4 = strlen(__s);
  if (strncmp(a1, __s, v4))
  {
    return 0;
  }

  return !a1[v4] || a1[v4] == 46;
}

uint64_t sub_239463F4C(uint64_t a1)
{
  v2 = sub_239466178(a1, 85, 0, 0);
  v3 = sub_239465D34(a1);
  v4 = sub_239463FC0(v3, v2);
  sub_239457574(v2, sub_239464D38, sub_23945FF10);
  return v4;
}

uint64_t sub_239463FC0(unint64_t **a1, unint64_t *a2)
{
  v11 = 0;
  v4 = -1;
  while (1)
  {
    v5 = sub_23946B424(a1, 0x30u, v4);
    if ((v5 & 0x80000000) != 0)
    {
      break;
    }

    v4 = v5;
    v6 = sub_23946B39C(a1, v5);
    v7 = sub_23946B390(v6);
    if (!sub_23946414C(&v11, v7))
    {
      return 0;
    }
  }

  if (sub_239431484(a2))
  {
    v9 = 0;
    while (1)
    {
      v10 = sub_239457528(a2, v9);
      if (*v10 == 1 && !sub_23946414C(&v11, v10[1]))
      {
        break;
      }

      if (++v9 >= sub_239431484(a2))
      {
        return v11;
      }
    }

    return 0;
  }

  return v11;
}

unint64_t sub_23946408C(uint64_t a1)
{
  v7 = 0;
  v1 = sub_239466178(a1, 177, 0, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = 0;
  if (sub_239431484(v1))
  {
    do
    {
      v4 = sub_239457528(v2, v3);
      if (sub_2394509E8(*v4) == 178)
      {
        v5 = v4[1];
        if (*v5 == 6 && !sub_23946414C(&v7, *(v5 + 8)))
        {
          break;
        }
      }

      ++v3;
    }

    while (v3 < sub_239431484(v2));
    v3 = v7;
  }

  sub_239460690(v2);
  return v3;
}

uint64_t sub_23946414C(uint64_t *a1, int *a2)
{
  if (a2[1] != 22)
  {
    return 1;
  }

  v3 = *(a2 + 1);
  if (!v3)
  {
    return 1;
  }

  v4 = *a2;
  if (!v4 || memchr(*(a2 + 1), 0, *a2))
  {
    return 1;
  }

  if (*a1)
  {
    goto LABEL_10;
  }

  v7 = sub_239457478(sub_239464D50);
  *a1 = v7;
  if (v7)
  {
    v3 = *(a2 + 1);
    v4 = *a2;
LABEL_10:
    v8 = sub_23945071C(v3, v4);
    if (v8)
    {
      sub_239457A78(*a1, sub_239464D5C);
      if (sub_23945784C(*a1, 0, v8, sub_239464D5C))
      {
        sub_239450144(v8);
        return 1;
      }

      if (sub_2394579D0(*a1, v8))
      {
        return 1;
      }
    }

    goto LABEL_16;
  }

  v8 = 0;
LABEL_16:
  sub_239450144(v8);
  sub_239457574(*a1, sub_239464D8C, sub_23946435C);
  result = 0;
  *a1 = 0;
  return result;
}

uint64_t sub_23946428C(void **a1)
{
  v2 = sub_2394674D8(a1);
  v3 = sub_239460A04(v2, 85, 0, 0);
  v4 = sub_2394673B4(a1);
  v5 = sub_239463FC0(v4, v3);
  sub_239457574(v3, sub_239464D38, sub_23945FF10);
  sub_239457574(v2, sub_239464D44, sub_23946DDD4);
  return v5;
}

BOOL sub_239464360(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a1;
  v3 = a2 - (a1[a2 - 1] == 46);
  if (v3 >= 2)
  {
    if (*a1 != 42 || a1[1] != 46)
    {
      goto LABEL_7;
    }

    v2 = a1 + 2;
    v3 -= 2;
  }

  if (v3)
  {
LABEL_7:
    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = v2[v5];
      if (!sub_23945043C(v7))
      {
        if (v7 > 57)
        {
          if (v7 != 58 && v7 != 95)
          {
            return v4;
          }
        }

        else if (v7 == 45)
        {
          if (v5 <= v6)
          {
            return v4;
          }
        }

        else
        {
          if (v7 != 46 || v5 <= v6 || v5 >= v3 - 1)
          {
            return v4;
          }

          v6 = v5 + 1;
        }
      }

      v4 = ++v5 >= v3;
      if (v3 == v5)
      {
        return v4;
      }
    }
  }

  return 0;
}

uint64_t sub_239464470(uint64_t a1, void *__s, size_t __n, uint64_t a4, void *a5)
{
  if (!__s || __n && memchr(__s, 0, __n))
  {
    return 4294967294;
  }

  return sub_23946450C(a1, __s, __n, a4, 2, a5);
}

uint64_t sub_23946450C(uint64_t a1, void *a2, size_t a3, uint64_t a4, int a5, void *a6)
{
  if (a5 == 1)
  {
    v11 = sub_239464D98;
    v12 = 48;
LABEL_8:
    v13 = 1;
    v14 = 22;
    goto LABEL_10;
  }

  if (a5 == 2)
  {
    if ((a4 & 2) != 0)
    {
      v11 = sub_239464E70;
    }

    else
    {
      v11 = sub_239464F08;
    }

    v12 = 13;
    goto LABEL_8;
  }

  v13 = 0;
  v12 = 0;
  v14 = 4;
  v11 = sub_2394651C8;
LABEL_10:
  v15 = sub_239466178(a1, 85, 0, 0);
  if (v15)
  {
    v16 = v15;
    if (sub_239431484(v15))
    {
      v17 = 0;
      while (1)
      {
        v18 = sub_239457528(v16, v17);
        if (*v18 == a5)
        {
          v19 = sub_239465214(v18[1], v14, v11, a4, a5, a2, a3, a6);
          if (v19)
          {
            break;
          }
        }

        if (++v17 >= sub_239431484(v16))
        {
          goto LABEL_16;
        }
      }

      v20 = v19;
    }

    else
    {
LABEL_16:
      v20 = 0;
    }

    sub_23945FF40(v16);
  }

  else
  {
    if (((v13 ^ 1 | ((a4 & 0x20) >> 5)) & 1) == 0)
    {
      v21 = sub_239465D34(a1);
      v22 = -1;
      while (1)
      {
        v23 = sub_23946B424(v21, v12, v22);
        if ((v23 & 0x80000000) != 0)
        {
          break;
        }

        v22 = v23;
        v24 = sub_23946B39C(v21, v23);
        v25 = sub_23946B390(v24);
        v26 = sub_239465214(v25, -1, v11, a4, a5, a2, a3, a6);
        if (v26)
        {
          return v26;
        }
      }
    }

    return 0;
  }

  return v20;
}

uint64_t sub_2394646F4(uint64_t a1, void *__s, size_t __n, uint64_t a4)
{
  if (!__s || __n && memchr(__s, 0, __n))
  {
    return 4294967294;
  }

  return sub_23946450C(a1, __s, __n, a4, 1, 0);
}

uint64_t sub_239464780(uint64_t a1, void *a2, size_t a3, uint64_t a4)
{
  if (a2)
  {
    return sub_23946450C(a1, a2, a3, a4, 7, 0);
  }

  else
  {
    return 4294967294;
  }
}

uint64_t sub_239464798(uint64_t a1, char *a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2 && (v5 = sub_239464824(&v7, a2)) != 0)
  {
    return sub_23946450C(a1, &v7, v5, a3, 7, 0);
  }

  else
  {
    return 4294967294;
  }
}

uint64_t sub_239464824(_OWORD *a1, char *__s)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!strchr(__s, 58))
  {
    return 4 * sub_239464B68(a1, __s);
  }

  v10 = 0;
  __src = 0u;
  v11 = 0xFFFFFFFFLL;
  if (!sub_23940AA90(__s, 58, 0, sub_23946541C, &__src))
  {
    return 0;
  }

  v4 = v11;
  v5 = v10;
  if (v11 == -1)
  {
    if (v10 == 16)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v10 > 15 || SHIDWORD(v11) > 3)
  {
    return 0;
  }

  if (HIDWORD(v11) == 2)
  {
    if (v11 && v10 != v11)
    {
      return 0;
    }

    goto LABEL_19;
  }

  if (HIDWORD(v11) != 3)
  {
    if (!v11 || v10 == v11)
    {
      return 0;
    }

LABEL_19:
    if ((v11 & 0x80000000) == 0)
    {
      if (v11)
      {
        memcpy(a1, &__src, v11);
        v7 = v4;
      }

      else
      {
        v7 = 0;
      }

      v8 = a1 + v7;
      bzero(v8, (16 - v5));
      if (v5 != v4)
      {
        memcpy(&v8[-v5 + 16], &__src + v7, v5 - v4);
      }

      return 16;
    }

LABEL_12:
    *a1 = __src;
    return 16;
  }

  if (v10 <= 0)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t sub_2394649C8(char *__s)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = sub_239464824(&v6, __s);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_239402EC4();
  v4 = v3;
  if (v3 && !sub_2393FDD94(v3, &v6, v2))
  {
    sub_239402ECC(v4);
    return 0;
  }

  return v4;
}

uint64_t sub_239464A5C(char *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = strchr(a1, 47);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_23945030C(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = &v4[v3 - a1];
  *v6 = 0;
  v7 = sub_239464824(v13, v4);
  if (!v7)
  {
    v11 = 0;
LABEL_11:
    sub_239450144(v5);
    sub_239402ECC(v11);
    return 0;
  }

  v8 = v7;
  v9 = sub_239464824((v13 + v7), v6 + 1);
  sub_239450144(v5);
  if (v8 != v9)
  {
    v11 = 0;
LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  v10 = sub_239402EC4();
  v11 = v10;
  if (!v10 || !sub_2393FDD94(v10, v13, 2 * v8))
  {
    goto LABEL_10;
  }

  return v11;
}

BOOL sub_239464B68(_BYTE *a1, _BYTE *a2)
{
  v4 = a2;
  result = sub_239465390(a1, &v4);
  if (result)
  {
    if (*v4 != 46)
    {
      return 0;
    }

    ++v4;
    result = sub_239465390(a1 + 1, &v4);
    if (!result)
    {
      return result;
    }

    if (*v4 != 46)
    {
      return 0;
    }

    ++v4;
    result = sub_239465390(a1 + 2, &v4);
    if (!result)
    {
      return result;
    }

    if (*v4 == 46)
    {
      ++v4;
      result = sub_239465390(a1 + 3, &v4);
      if (result)
      {
        return *v4 == 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_239464C30(_BOOL8 result, unint64_t *a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    if (sub_239431484(a2))
    {
      v6 = 0;
      while (1)
      {
        v7 = sub_239457528(a2, v6);
        v8 = v7[1];
        for (i = v8 + 1; ; ++i)
        {
          v10 = *(i - 1);
          if (v10 <= 0x2D)
          {
            break;
          }

          if (v10 == 58 || v10 == 46)
          {
            goto LABEL_12;
          }

LABEL_11:
          ;
        }

        if (!*(i - 1))
        {
          goto LABEL_14;
        }

        if (v10 != 44)
        {
          goto LABEL_11;
        }

LABEL_12:
        if (*i)
        {
          v8 = i;
        }

LABEL_14:
        v11 = *v8;
        if (v11 == 43)
        {
          v12 = (v8 + 1);
        }

        else
        {
          v12 = v8;
        }

        if (v11 == 43)
        {
          v13 = -1;
        }

        else
        {
          v13 = 0;
        }

        v14 = sub_23946B8E0(v5, v12, a3, v7[2], 0xFFFFFFFFFFFFFFFFLL, -1, v13);
        if (v14)
        {
          if (++v6 < sub_239431484(a2))
          {
            continue;
          }
        }

        return v14 != 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_239464D5C(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  return a1(&v5, &v4);
}

uint64_t sub_239464D98(char *__s1, size_t __n, char *__s2, uint64_t a4)
{
  if (__n != a4)
  {
    return 0;
  }

  v5 = __n;
  v7 = 0;
  v8 = __s2 - 1;
  v9 = __s1 - 1;
  while (__n != v7)
  {
    v10 = v7;
    v11 = v8;
    v12 = v9;
    if (v9[__n] != 64)
    {
      v13 = v8[__n];
      ++v7;
      --v8;
      --v9;
      if (v13 != 64)
      {
        continue;
      }
    }

    result = sub_239464E70(&v12[__n], v10 + 1, &v11[__n], v10 + 1);
    if (!result)
    {
      return result;
    }

    if (v5 - 1 != v10)
    {
      v5 += ~v10;
      return memcmp(__s1, __s2, v5) == 0;
    }

    break;
  }

  if (!v5)
  {
    return 1;
  }

  return memcmp(__s1, __s2, v5) == 0;
}

uint64_t sub_239464E70(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  v4 = a2;
  if (!a2)
  {
    return 1;
  }

  while (1)
  {
    result = *a1;
    if (!*a1)
    {
      break;
    }

    v8 = *a3;
    if (result != v8)
    {
      v9 = sub_239450458(result);
      if (v9 != sub_239450458(v8))
      {
        return 0;
      }
    }

    ++a1;
    ++a3;
    if (!--v4)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_239464F08(char *a1, unint64_t a2, char *a3, unint64_t a4)
{
  if (a4 < 2)
  {
    if (!a2)
    {
      goto LABEL_33;
    }

LABEL_6:
    v8 = 0;
    v9 = 0;
    v10 = 1;
    v11 = a1;
    v12 = a2;
    do
    {
      v13 = *v11;
      if (v13 == 42)
      {
        if (v12 == 1)
        {
          v14 = 1;
          if (v8)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v14 = v11[1] == 46;
          if (v8)
          {
            goto LABEL_33;
          }
        }

        if ((((v10 & 8 | v9) == 0) & v10 & v14) != 1)
        {
          goto LABEL_33;
        }

        v9 = 0;
        v10 &= 0xFFFFFFF6;
        v8 = v11;
      }

      else if (sub_23945043C(v13))
      {
        if ((v10 & 1) != 0 && v12 >= 4 && !sub_23945050C(v11, "xn--", 4))
        {
          v10 = 8;
        }

        v10 &= 0xFFFFFFFA;
      }

      else
      {
        v15 = *v11;
        if (v15 == 45)
        {
          if (v10)
          {
            goto LABEL_33;
          }

          v10 |= 4u;
        }

        else
        {
          if (v15 != 46 || (v10 & 5) != 0)
          {
            goto LABEL_33;
          }

          ++v9;
          v10 = 1;
        }
      }

      ++v11;
      --v12;
    }

    while (v12);
    if ((v10 & 5) != 0 || v9 < 2 || !v8)
    {
      goto LABEL_33;
    }

    v16 = v8 - a1;
    v17 = &a1[a2 + ~v8];
    if (&v8[~v8 + a2] <= a4)
    {
      v19 = a3;
      result = sub_239464E70(a1, v8 - a1, a3, v8 - a1);
      if (!result)
      {
        return result;
      }

      v20 = a4 - v17;
      v21 = &a3[a4 - v17];
      result = sub_239464E70(&v19[a4 - v17], &a1[a2 + ~v8], v8 + 1, &a1[a2 + ~v8]);
      if (!result)
      {
        return result;
      }

      if (v8 == a1 && v8[1] == 46)
      {
        if (a4 == v17)
        {
          return 0;
        }
      }

      else if (a4 >= 4)
      {
        result = sub_23945050C(v19, "xn--", 4);
        if (!result)
        {
          return result;
        }
      }

      v22 = &v19[v16];
      if (v21 == &v19[v16 + 1])
      {
        result = 1;
        if (v20 == v16 || *v22 == 42)
        {
          return result;
        }
      }

      else if (v20 == v16)
      {
        return 1;
      }

      v23 = a4 - a2 + 1;
      while (sub_23945043C(*v22) || *v22 == 45)
      {
        ++v22;
        if (!--v23)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (a2 && *a3 != 46)
  {
    goto LABEL_6;
  }

LABEL_33:

  return sub_239464E70(a1, a2, a3, a4);
}

BOOL sub_2394651C8(const void *a1, size_t __n, void *__s2, uint64_t a4)
{
  if (__n != a4)
  {
    return 0;
  }

  if (__n)
  {
    return memcmp(a1, __s2, __n) == 0;
  }

  return 1;
}

uint64_t sub_239465214(int *a1, int a2, uint64_t (*a3)(void *, size_t, void *, size_t, uint64_t), uint64_t a4, int a5, void *__s2, size_t __n, void *a8)
{
  v9 = *(a1 + 1);
  if (!v9 || !*a1)
  {
    return 0;
  }

  if (a2 < 1)
  {
    v23 = 0;
    v17 = sub_2393FE214(&v23, a1);
    if ((v17 & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    if (a5 == 2)
    {
      v18 = v17;
      if (!sub_239464360(v23, v17))
      {
        v15 = 0;
LABEL_21:
        sub_239450144(v23);
        return v15;
      }
    }

    else
    {
      v18 = v17;
    }

    v20 = a3(v23, v18, __s2, __n, a4);
    v15 = v20;
    if (a8)
    {
      if (v20 >= 1)
      {
        v21 = sub_23945071C(v23, v18);
        *a8 = v21;
        if (!v21)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    goto LABEL_21;
  }

  if (a1[1] != a2)
  {
    return 0;
  }

  if (a2 != 22)
  {
    if (*a1 == __n && (!__n || !memcmp(v9, __s2, __n)))
    {
      v15 = 1;
      if (!a8)
      {
        return v15;
      }

      goto LABEL_23;
    }

    return 0;
  }

  v15 = (a3)();
  if (!a8)
  {
    return v15;
  }

LABEL_23:
  if (v15 >= 1)
  {
    v22 = sub_23945071C(*(a1 + 1), *a1);
    *a8 = v22;
    if (!v22)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v15;
}

BOOL sub_239465390(_BYTE *a1, _BYTE **a2)
{
  v4 = 0;
  LOBYTE(v5) = **a2;
  while (1)
  {
    result = sub_2394503C0(v5);
    if (!result)
    {
      break;
    }

    v7 = *a2;
    v4 = **a2 + 10 * v4 - 48;
    if (v4 > 0xFF)
    {
      return 0;
    }

    *a2 = v7 + 1;
    v5 = v7[1];
    if (v5 == 46 || v5 == 0)
    {
      *a1 = v4;
      return 1;
    }

    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23946541C(char *a1, unint64_t a2, _DWORD *a3)
{
  v5 = a3[4];
  if (v5 == 16)
  {
    return 0;
  }

  v17 = v3;
  v18 = v4;
  v8 = a2;
  if (!a2)
  {
    v12 = a3[5];
    if (v12 == -1)
    {
      a3[5] = v5;
    }

    else if (v12 != v5)
    {
      return 0;
    }

    v15 = a3[6];
    if (v15 <= 2)
    {
      a3[6] = v15 + 1;
      return 1;
    }

    return 0;
  }

  v9 = a1;
  v10 = v5;
  if (a2 >= 5)
  {
    if (v5 <= 12 && !a1[a2])
    {
      result = sub_239464B68(a3 + v5, a1);
      if (!result)
      {
        return result;
      }

      v11 = a3[4] + 4;
      goto LABEL_17;
    }

    return 0;
  }

  v13 = 0;
  while (v8)
  {
    --v8;
    v16 = 0;
    v14 = *v9++;
    result = sub_2394503EC(&v16, v14);
    v13 = v16 | (16 * v13);
    if (!result)
    {
      return result;
    }
  }

  *(a3 + v10) = bswap32(v13) >> 16;
  v11 = a3[4] + 2;
LABEL_17:
  a3[4] = v11;
  return 1;
}

BOOL sub_239465534(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  v5 = 0;
  v6 = 0;
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = v7 & ~(v7 >> 31);
  v10 = v7 - 1;
  while (v9)
  {
    if (v6 + 18 * (v5 / 0x12) || sub_239403738(a1, "\n", 1) >= 1 && sub_239403C00(a1, a3, a3) >= 1)
    {
      v12 = *v8++;
      v11 = v12;
      v13 = ":";
      if (!v10)
      {
        v13 = "";
      }

      --v9;
      --v6;
      ++v5;
      --v10;
      if (sub_239404AE0(a1, "%02x%s", v11, v13) >= 1)
      {
        continue;
      }
    }

    return 0;
  }

  return sub_239403738(a1, "\n", 1) == 1;
}

void **sub_23946565C(void ***a1, unsigned int a2, uint64_t a3, char *a4, uint64_t a5)
{
  v9 = sub_239450F00(a2);
  if (v9)
  {

    return sub_2394656EC(a1, v9, a3, a4, a5);
  }

  else
  {
    sub_2394170F4(11, 0, 129, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_att.c", 73);
    return 0;
  }
}

void **sub_2394656EC(void ***a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v5 = a5;
  v7 = a3;
  if (a1 && (v10 = *a1) != 0 || (v10 = sub_23946D56C()) != 0)
  {
    if (sub_2394657A0(v10, a2) && sub_2394657EC(v10, v7, a4, v5))
    {
      if (a1 && !*a1)
      {
        *a1 = v10;
      }
    }

    else
    {
      if (!a1 || v10 != *a1)
      {
        sub_23946D578(v10);
      }

      return 0;
    }
  }

  return v10;
}

BOOL sub_2394657A0(void ***a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      sub_2393FDCD8(*a1);
      v5 = sub_239450894(a2);
      *a1 = v5;
      return v5 != 0;
    }
  }

  return result;
}

uint64_t sub_2394657EC(uint64_t result, int a2, char *a3, int a4)
{
  if (result)
  {
    if (!a2)
    {
      return 1;
    }

    v7 = result;
    result = sub_2394030B8();
    if (!result)
    {
      return result;
    }

    v8 = result;
    if ((a2 & 0x1000) != 0)
    {
      v11 = sub_2394509E8(*v7);
      v10 = sub_2393FE810(0, a3, a4, a2, v11);
      if (!v10)
      {
        sub_2394170F4(11, 0, 12, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_att.c", 163);
        goto LABEL_15;
      }
    }

    else
    {
      if (a4 == -1)
      {
        if (!sub_2393FF1E8(result, a2, a3))
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }

      v9 = sub_2393FFADC(a2);
      v10 = v9;
      if (!v9 || !sub_2393FF8AC(v9, a3, a4))
      {
        sub_2393FFA58(v10);
LABEL_15:
        sub_2394030C4(v8);
        return 0;
      }
    }

    sub_2393FF0F4(v8, v10);
LABEL_12:
    if (!sub_2394579D0(*(v7 + 8), v8))
    {
      goto LABEL_15;
    }

    return 1;
  }

  return result;
}

void **sub_23946590C(void ***a1, const char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v9 = sub_239450E0C(a2, 0);
  if (v9)
  {
    v10 = v9;
    v11 = sub_2394656EC(a1, v9, a3, a4, a5);
    sub_2393FDCD8(v10);
    return v11;
  }

  else
  {
    sub_2394170F4(11, 0, 111, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_att.c", 120);
    sub_2394171A0(2u, v13, v14, v15, v16, v17, v18, v19, "name=");
    return 0;
  }
}

uint64_t sub_2394659E4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_239465A5C(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (sub_2393FF08C(v4) != a3)
  {
    sub_2394170F4(11, 0, 134, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_att.c", 213);
    return 0;
  }

  return sub_2393FF0B4(v5);
}

unint64_t *sub_239465A5C(uint64_t a1, int a2)
{
  if (!a1 || sub_239431484(*(a1 + 8)) <= a2)
  {
    return 0;
  }

  v4 = *(a1 + 8);

  return sub_239457528(v4, a2);
}

uint64_t sub_239465AD0(uint64_t a1, uint64_t a2)
{
  if ((!*(a1 + 24) || *(a1 + 8)) && (sub_23946DE3C(a1, 0) & 0x80000000) != 0 || (!*(a2 + 24) || *(a2 + 8)) && (sub_23946DE3C(a2, 0) & 0x80000000) != 0)
  {
    return 4294967294;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  result = (v4 - v5);
  if (v4 == v5)
  {
    if (v4)
    {
      v7 = *(a2 + 24);
      v8 = *(a1 + 24);

      return memcmp(v8, v7, v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_239465BA0(uint64_t a1, uint64_t a2)
{
  v2 = bswap64(*(a1 + 52));
  v3 = bswap64(*(a2 + 52));
  if (v2 == v3)
  {
    v2 = bswap64(*(a1 + 60));
    v3 = bswap64(*(a2 + 60));
    if (v2 == v3)
    {
      v2 = bswap64(*(a1 + 68));
      v3 = bswap64(*(a2 + 68));
      if (v2 == v3)
      {
        v2 = bswap64(*(a1 + 76));
        v3 = bswap64(*(a2 + 76));
        if (v2 == v3)
        {
          return 0;
        }
      }
    }
  }

  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t sub_239465C30(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if ((sub_23946DE3C(a1, 0) & 0x80000000) != 0)
  {
    return 0;
  }

  sub_239443030(*(a1 + 24), *(a1 + 32), v3);
  return v3[0];
}

uint64_t sub_239465CB8(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if ((sub_23946DE3C(a1, 0) & 0x80000000) != 0)
  {
    return 0;
  }

  sub_23943B930(*(*(a1 + 16) + 8), **(a1 + 16), v3);
  return v3[0];
}

uint64_t sub_239465D64(unint64_t *a1, unint64_t *a2)
{
  sub_239462398(a1);
  sub_239462398(a2);
  v4 = bswap64(a1[13]);
  v5 = bswap64(a2[13]);
  if (v4 == v5)
  {
    v4 = bswap64(a1[14]);
    v5 = bswap64(a2[14]);
    if (v4 == v5)
    {
      v4 = bswap64(a1[15]);
      v5 = bswap64(a2[15]);
      if (v4 == v5)
      {
        v4 = bswap64(a1[16]);
        v5 = bswap64(a2[16]);
        if (v4 == v5)
        {
          return 0;
        }
      }
    }
  }

  if (v4 < v5)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

unint64_t *sub_239465E08(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 4) | 0x100) != 0x102 || !sub_239431484(a1))
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = sub_239457528(a1, v6);
    if (!sub_2393FC994(*(*v7 + 8), a3) && !sub_239465AD0(*(*v7 + 24), a2))
    {
      break;
    }

    if (++v6 >= sub_239431484(a1))
    {
      return 0;
    }
  }

  return v7;
}

unint64_t *sub_239465EB0(unint64_t *a1, uint64_t a2)
{
  if (!sub_239431484(a1))
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = sub_239457528(a1, v4);
    if (!sub_239465AD0(*(*v5 + 40), a2))
    {
      break;
    }

    if (++v4 >= sub_239431484(a1))
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_239465F28(uint64_t result)
{
  if (result)
  {
    return sub_23946E93C(*(*result + 48));
  }

  return result;
}

uint64_t sub_239465F3C(uint64_t result)
{
  if (result)
  {
    return sub_23946E984(*(*result + 48));
  }

  return result;
}

uint64_t sub_239465F50(uint64_t result)
{
  if (result)
  {
    return *(*(*result + 48) + 8);
  }

  return result;
}

uint64_t sub_239465F64(uint64_t result, uint64_t a2)
{
  if (result)
  {
    result = sub_23946E93C(*(*result + 48));
    if (result)
    {
      v3 = sub_2394178DC(result, a2);
      if (v3 > 0)
      {
        return 1;
      }

      if (v3 == -2)
      {
        v4 = 128;
        v5 = 261;
      }

      else if (v3 == -1)
      {
        v4 = 115;
        v5 = 258;
      }

      else
      {
        if (v3)
        {
          return 0;
        }

        v4 = 116;
        v5 = 255;
      }

      sub_2394170F4(11, 0, v4, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_cmp.c", v5);
      return 0;
    }
  }

  return result;
}

unint64_t *sub_239466020(uint64_t a1)
{
  v1 = sub_2394579F4(a1);
  v2 = v1;
  if (v1 && sub_239431484(v1))
  {
    v3 = 0;
    do
    {
      v4 = sub_239457528(v2, v3);
      sub_239455868(v4);
      ++v3;
    }

    while (v3 < sub_239431484(v2));
  }

  return v2;
}

void sub_2394661F4(void *a1)
{
  if (a1)
  {
    if (*a1)
    {
      v2 = *(*a1 + 8);
      if (v2)
      {
        v2(a1);
      }
    }

    sub_239450144(a1);
  }
}

uint64_t sub_239466248(uint64_t a1)
{
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = *(*a1 + 16);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 1;
  }
}

void *sub_23946626C()
{
  v0 = sub_2394500B0(0xF0uLL);
  v1 = v0;
  if (v0)
  {
    *(v0 + 58) = 1;
    sub_239457CF8((v0 + 1));
    *v1 = sub_239457478(sub_2394662F4);
    v1[26] = sub_2394574D8();
    v2 = sub_23946A484();
    v1[27] = v2;
    if (!*v1 || !v1[26] || !v2)
    {
      sub_239466300(v1);
      return 0;
    }
  }

  return v1;
}

void sub_239466300(uint64_t a1)
{
  if (a1 && sub_239455A20((a1 + 232)))
  {
    j__pthread_rwlock_destroy((a1 + 8));
    sub_239457574(*(a1 + 208), sub_239466F98, sub_2394661F4);
    sub_239457574(*a1, sub_239466FA4, sub_2394663D0);
    sub_23946A4AC(*(a1 + 216));

    sub_239450144(a1);
  }
}

void sub_2394663D0(void *a1)
{
  if (a1)
  {
    sub_2394667D8(a1);

    sub_239450144(a1);
  }
}

unint64_t *sub_239466410(uint64_t a1, void *a2)
{
  v4 = *(a1 + 208);
  if (!sub_239431484(v4))
  {
LABEL_5:
    v7 = sub_2394500B0(0x18uLL);
    v8 = v7;
    if (v7)
    {
      *v7 = a2;
      v7[2] = a1;
      if (*a2 && !(*a2)(v7))
      {
        sub_239450144(v8);
        v8 = 0;
      }

      else if (sub_2394579D0(*(a1 + 208), v8))
      {
        return v8;
      }
    }

    sub_2394661F4(v8);
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = sub_239457528(v4, v5);
    if (*v6 == a2)
    {
      return v6;
    }

    if (++v5 >= sub_239431484(v4))
    {
      goto LABEL_5;
    }
  }
}

uint64_t sub_2394664E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v15[0] = 0;
  v15[1] = 0;
  sub_239457D3C((v7 + 8));
  v8 = *v7;
  v9 = sub_239466A94(*v7, a2, a3, 0);
  if (v9 == -1)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_239457528(v8, v9);
  }

  sub_239457D5C((v7 + 8));
  if (a2 == 2 || !v10)
  {
    if (sub_239431484(*(v7 + 208)))
    {
      v11 = 0;
      while (1)
      {
        v12 = sub_239457528(*(v7 + 208), v11);
        if (*v12)
        {
          v13 = *(*v12 + 24);
          if (v13)
          {
            if (v13(v12, a2) > 0)
            {
              break;
            }
          }
        }

        if (++v11 >= sub_239431484(*(v7 + 208)))
        {
          goto LABEL_12;
        }
      }

      v10 = v15;
    }

    else
    {
LABEL_12:
      if (!v10)
      {
        return 0;
      }
    }
  }

  *a4 = *v10;
  *(a4 + 8) = v10[1];
  sub_239466608(a4);
  return 1;
}

uint64_t sub_239466608(uint64_t result)
{
  if (*result == 2 || *result == 1)
  {
    return sub_239455868(*(result + 8));
  }

  return result;
}

uint64_t sub_239466638(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    v6 = sub_2394500B0(0x10uLL);
    if (v6)
    {
      v7 = v6;
      if (a3)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      *v6 = v8;
      v6[1] = a2;
      sub_239466608(v6);
      sub_239457D3C((a1 + 8));
      v9 = *a1;
      sub_239457A78(*a1, sub_239466FB0);
      v15 = 0;
      if (sub_23945784C(v9, &v15, v7, sub_239466FB0))
      {
        v10 = v15;
        if ((*v7 - 1) >= 2)
        {
          v11 = sub_239457528(v9, v15);
LABEL_18:
          if (v11)
          {
LABEL_19:
            sub_239457D5C((a1 + 8));
            v12 = 1;
            goto LABEL_23;
          }
        }

        else
        {
          while (v10 < sub_239431484(v9))
          {
            v11 = sub_239457528(v9, v10);
            if (sub_239466F50(v11, v7))
            {
              break;
            }

            if (*v7 == 2)
            {
              if (!sub_239465BA0(v11[1], v7[1]))
              {
                goto LABEL_19;
              }
            }

            else
            {
              if (*v7 != 1)
              {
                goto LABEL_18;
              }

              if (!sub_239465D64(v11[1], v7[1]))
              {
                goto LABEL_19;
              }
            }

            ++v10;
          }
        }
      }

      v13 = sub_2394579D0(*a1, v7);
      sub_239457D5C((a1 + 8));
      if (v13)
      {
        return 1;
      }

      v12 = 0;
LABEL_23:
      sub_2394667D8(v7);
      sub_239450144(v7);
      return v12;
    }
  }

  return 0;
}

void sub_2394667D8(uint64_t result)
{
  if (*result == 2)
  {
    sub_23946D6D0(*(result + 8));
  }

  else if (*result == 1)
  {
    sub_23946EDF8(*(result + 8));
  }

  *result = 0;
  *(result + 8) = 0;
}

uint64_t sub_239466824(uint64_t result)
{
  if (result)
  {
    if (*result == 1)
    {
      return *(result + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t *sub_239466844(uint64_t a1)
{
  sub_239457D1C((a1 + 8));
  v2 = sub_239457C24(*a1, sub_239466FE0, sub_2394668C4, sub_239466FA4, sub_2394663D0);
  sub_239457D5C((a1 + 8));
  return v2;
}

void *sub_2394668C4(uint64_t a1)
{
  v2 = sub_2394500B0(0x10uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = *a1;
    v2[1] = *(a1 + 8);
    sub_239466608(v2);
  }

  return v3;
}

unint64_t *sub_239466910(unint64_t ***a1, uint64_t a2)
{
  v4 = sub_2394574D8();
  if (!v4)
  {
    return v4;
  }

  v11 = 0;
  sub_239457D3C((*a1 + 1));
  v5 = sub_239466A94(**a1, 1u, a2, &v11);
  if ((v5 & 0x80000000) != 0)
  {
    v10[0] = 0;
    v10[1] = 0;
    sub_239457D5C((*a1 + 1));
    if (sub_2394664E8(a1, 1, a2, v10))
    {
      sub_2394667D8(v10);
      sub_239457D3C((*a1 + 1));
      v5 = sub_239466A94(**a1, 1u, a2, &v11);
      if ((v5 & 0x80000000) == 0)
      {
        goto LABEL_3;
      }

      sub_239457D5C((*a1 + 1));
    }

    sub_2393FFA58(v4);
    return 0;
  }

LABEL_3:
  if (v11 >= 1)
  {
    v6 = 0;
    v7 = v5;
    while (1)
    {
      v8 = sub_239457528(**a1, v7)[1];
      if (!sub_2394579D0(v4, v8))
      {
        break;
      }

      sub_239455868(v8);
      ++v6;
      ++v7;
      if (v6 >= v11)
      {
        goto LABEL_7;
      }
    }

    sub_239457D5C((*a1 + 1));
    sub_239457574(v4, sub_239466FEC, sub_23946EDF8);
    return 0;
  }

LABEL_7:
  sub_239457D5C((*a1 + 1));
  return v4;
}

uint64_t sub_239466A94(unint64_t *a1, unsigned int a2, uint64_t a3, _DWORD *a4)
{
  v18[43] = *MEMORY[0x277D85DE8];
  v16 = 0;
  memset(v18, 0, 344);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  memset(v17, 0, 88);
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  v15 = a2;
  if (a2 == 2)
  {
    v16 = v17;
    v17[0] = &v11;
    v6 = v12;
  }

  else
  {
    if (a2 != 1)
    {
      return 0xFFFFFFFFLL;
    }

    v16 = v18;
    v18[0] = v13;
    v6 = &v13[2] + 1;
  }

  *v6 = a3;
  v10 = 0;
  sub_239457A78(a1, sub_239466FB0);
  if (!sub_23945784C(a1, &v10, &v15, sub_239466FB0))
  {
    return 0xFFFFFFFFLL;
  }

  if (a4)
  {
    *a4 = 1;
    for (i = v10 + 1; i < sub_239431484(a1); ++i)
    {
      v8 = sub_239457528(a1, i);
      if (sub_239466F50(v8, &v15))
      {
        break;
      }

      ++*a4;
    }
  }

  return v10;
}

unint64_t *sub_239466C34(unint64_t ***a1, uint64_t a2)
{
  v4 = sub_2394574D8();
  if (!v4)
  {
    return v4;
  }

  v11 = 0;
  v10[0] = 0;
  v10[1] = 0;
  if (!sub_2394664E8(a1, 2, a2, v10))
  {
LABEL_10:
    sub_2393FFA58(v4);
    return 0;
  }

  sub_2394667D8(v10);
  sub_239457D3C((*a1 + 1));
  v5 = sub_239466A94(**a1, 2u, a2, &v11);
  if ((v5 & 0x80000000) != 0)
  {
    sub_239457D5C((*a1 + 1));
    goto LABEL_10;
  }

  if (v11 >= 1)
  {
    v6 = 0;
    v7 = v5;
    while (1)
    {
      v8 = sub_239457528(**a1, v7)[1];
      sub_239455868(v8);
      if (!sub_2394579D0(v4, v8))
      {
        break;
      }

      ++v6;
      ++v7;
      if (v6 >= v11)
      {
        goto LABEL_8;
      }
    }

    sub_239457D5C((*a1 + 1));
    sub_23946D6D0(v8);
    sub_239457574(v4, sub_239466FF8, sub_23946D6D0);
    return 0;
  }

LABEL_8:
  sub_239457D5C((*a1 + 1));
  return v4;
}

uint64_t sub_239466D8C(uint64_t *a1, unint64_t ***a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  v6 = sub_239465C18(a3);
  if (!sub_2394664E8(a2, 1, v6, &v15))
  {
    return 0;
  }

  v7 = v16;
  if (sub_239468CB8(a2, a3, v16))
  {
    *a1 = v7;
    return 1;
  }

  else
  {
    sub_2394667D8(&v15);
    sub_239457D3C((*a2 + 1));
    v9 = sub_239466A94(**a2, 1u, v6, 0);
    if (v9 != -1)
    {
      LODWORD(i) = v9;
      if (sub_239431484(**a2) > v9)
      {
        for (i = i; i < sub_239431484(**a2); ++i)
        {
          v11 = sub_239457528(**a2, i);
          if (*v11 != 1)
          {
            break;
          }

          v12 = v11;
          v13 = sub_239465D34(v11[1]);
          if (sub_239465AD0(v6, v13))
          {
            break;
          }

          if (sub_239468CB8(a2, a3, *(v12 + 8)))
          {
            *a1 = *(v12 + 8);
            sub_239466608(v12);
            v8 = 1;
            goto LABEL_13;
          }
        }
      }
    }

    v8 = 0;
LABEL_13:
    sub_239457D5C((*a2 + 1));
  }

  return v8;
}

uint64_t sub_239466F50(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (*a1 - *a2);
  if (*a1 != *a2)
  {
    return v3;
  }

  if (v2 == 2)
  {
    return sub_239465B8C(*(a1 + 1), *(a2 + 8));
  }

  if (v2 != 1)
  {
    return 0;
  }

  return sub_239465B78(*(a1 + 1), *(a2 + 8));
}

uint64_t sub_239466FB0(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  return a1(&v5, &v4);
}

_BYTE *sub_239467004(uint64_t *a1, _BYTE *a2, int a3)
{
  v3 = a2;
  v39 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v6 = sub_239405E68();
    if (!v6)
    {
      goto LABEL_66;
    }

    v7 = v6;
    if (!sub_239405F30(v6, 0xC8uLL))
    {
      v6 = v7;
      goto LABEL_66;
    }

    *v7[1] = 0;
    if (a1)
    {
      v36 = v7;
      v5 = 200;
      goto LABEL_9;
    }

    v3 = v7[1];
    sub_239450144(v7);
    v5 = 200;
LABEL_62:
    sub_2394507BC(v3, "NO X509_NAME", v5);
    return v3;
  }

  v5 = a3;
  if (a3 < 1)
  {
    return 0;
  }

  if (!a1)
  {
    goto LABEL_62;
  }

  v36 = 0;
LABEL_9:
  if (!sub_239431484(*a1))
  {
    v9 = 0;
LABEL_54:
    if (v36)
    {
      v3 = v36[1];
      sub_239450144(v36);
      if (v9)
      {
        return v3;
      }
    }

    else
    {
LABEL_58:
      if (v9)
      {
        return v3;
      }
    }

    *v3 = 0;
    return v3;
  }

  v35 = v5;
  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = sub_239457528(*a1, v9);
    v11 = sub_2394509E8(*v10);
    if (!v11 || (v12 = sub_239451004(v11)) == 0)
    {
      v12 = v37;
      sub_2393FD94C(v37, 80, *v10);
    }

    v13 = strlen(v12);
    v14 = v10[1];
    v15 = *v14;
    if (v15 > 0x100000)
    {
      v33 = 121;
LABEL_64:
      sub_2394170F4(11, 0, 135, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_obj.c", v33);
      v6 = v36;
      goto LABEL_66;
    }

    v16 = v13;
    v17 = v14[1];
    v18 = *(v14 + 1);
    if ((v15 & 3) != 0 || v17 != 27)
    {
      goto LABEL_26;
    }

    v38 = 0uLL;
    if (v15 < 1)
    {
      goto LABEL_27;
    }

    for (i = 0; i != v15; ++i)
    {
      if (*(v18 + i))
      {
        *(&v38 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3))) = 1;
      }
    }

    if (!(DWORD1(v38) | v38 | DWORD2(v38)))
    {
LABEL_27:
      v21 = xmmword_2395D13F0;
    }

    else
    {
LABEL_26:
      *&v21 = 0x100000001;
      *(&v21 + 1) = 0x100000001;
    }

    v38 = v21;
    if (v15 < 1)
    {
      v23 = 0;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      do
      {
        if (*(&v38 & 0xFFFFFFFFFFFFFFF3 | (4 * (v22 & 3))))
        {
          if (*(v18 + v22) - 127 >= 0xFFFFFFA1)
          {
            ++v23;
          }

          else
          {
            v23 += 4;
          }
        }

        ++v22;
      }

      while (v15 != v22);
    }

    v24 = v8 + v13 + v23 + 2;
    if (v24 > 0x100000)
    {
      v33 = 157;
      goto LABEL_64;
    }

    if (!v36)
    {
      v25 = v3;
      if (v24 >= v35)
      {
        goto LABEL_58;
      }

      goto LABEL_42;
    }

    if (!sub_239405F30(v36, (v8 + v13 + v23 + 3)))
    {
      break;
    }

    v25 = v36[1];
LABEL_42:
    v26 = &v25[v8];
    *v26 = 47;
    v27 = v26 + 1;
    if (v16)
    {
      memcpy(v27, v12, v16);
    }

    v28 = &v27[v16];
    *v28 = 61;
    v29 = v28 + 1;
    if (v15 >= 1)
    {
      v30 = 0;
      v31 = *(v10[1] + 8);
      do
      {
        if (*(&v38 & 0xFFFFFFFFFFFFFFF3 | (4 * (v30 & 3))))
        {
          v32 = *(v31 + v30);
          if ((v32 - 127) > 0xFFFFFFA0)
          {
            *v29++ = v32;
          }

          else
          {
            *v29 = 30812;
            v29[2] = a0123456789abcd_4[v32 >> 4];
            v29[3] = a0123456789abcd_4[v32 & 0xF];
            v29 += 4;
          }
        }

        ++v30;
      }

      while (v15 != v30);
    }

    *v29 = 0;
    ++v9;
    v8 = v24;
    if (v9 >= sub_239431484(*a1))
    {
      goto LABEL_54;
    }
  }

  v6 = v36;
LABEL_66:
  sub_2393FFA58(v6);
  return 0;
}

uint64_t sub_2394673C0(uint64_t result)
{
  if (result)
  {
    return sub_23946E984(*(*result + 40));
  }

  return result;
}

uint64_t sub_2394673D4(uint64_t result)
{
  if (result)
  {
    return sub_23946E93C(*(*result + 40));
  }

  return result;
}

uint64_t sub_2394673E8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    result = sub_23946E93C(*(*result + 40));
    if (result)
    {
      v3 = sub_2394178DC(result, a2);
      if (v3 > 0)
      {
        return 1;
      }

      if (v3 == -2)
      {
        if (sub_2393FFBEC(a2) == 408)
        {
          v4 = 15;
          v5 = 113;
        }

        else
        {
          v4 = 128;
          v5 = 115;
        }
      }

      else if (v3 == -1)
      {
        v4 = 115;
        v5 = 109;
      }

      else
      {
        if (v3)
        {
          return 0;
        }

        v4 = 116;
        v5 = 106;
      }

      sub_2394170F4(11, 0, v4, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_req.c", v5);
      return 0;
    }
  }

  return result;
}

void **sub_2394674D8(void **result)
{
  if (result)
  {
    v1 = result;
    if (!*result)
    {
      return 0;
    }

    v2 = sub_239450F00(0xACu);
    if (!v2 || (v3 = sub_23946776C(v1, v2, -1), v3 == -1))
    {
      result = sub_239450F00(0xABu);
      if (!result)
      {
        return result;
      }

      v3 = sub_23946776C(v1, result, -1);
      if (v3 == -1)
      {
        return 0;
      }
    }

    v4 = sub_239467604(v1, v3);
    result = sub_239465A5C(v4, 0);
    if (!result)
    {
      return result;
    }

    if (*result == 16)
    {
      v5 = result[1];
      v6 = *(v5 + 1);
      return sub_2394004F8(0, &v6, *v5, byte_278A82600);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2394675A8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  v5 = sub_239450F00(a2);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  return sub_23946776C(a1, v5, v3);
}

unint64_t *sub_239467604(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = *(*a1 + 48);
  if (!v3 || sub_239431484(v3) <= a2)
  {
    return 0;
  }

  v5 = *(*a1 + 48);

  return sub_239457528(v5, a2);
}

uint64_t sub_239467670(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v3 = a3;
  v8 = 0;
  v5 = sub_2394018FC(a2, &v8, byte_278A82600);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = sub_2394676F0(a1, v3, 16, v8, v5);
  sub_239450144(v8);
  return v6;
}

uint64_t sub_2394676F0(uint64_t a1, unsigned int a2, uint64_t a3, char *a4, uint64_t a5)
{
  v6 = sub_23946565C(0, a2, a3, a4, a5);
  if (v6 && sub_2394678C4(a1, v6))
  {
    return 1;
  }

  sub_23946D578(v6);
  return 0;
}

uint64_t sub_23946776C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(*a1 + 48);
  if (v4)
  {
    LODWORD(v5) = a3;
    v7 = sub_239431484(v4);
    if (v5 < 0)
    {
      LODWORD(v5) = -1;
    }

    v8 = v7;
    for (i = v5 + 1; i < v8; ++i)
    {
      v10 = sub_239457528(*(*a1 + 48), i);
      v5 = (v5 + 1);
      if (!sub_239450998(*v10, a2))
      {
        return v5;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_239467804(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = *(*a1 + 48);
  if (!v3 || sub_239431484(v3) <= a2)
  {
    return 0;
  }

  v5 = *(*a1 + 48);

  return sub_239457700(v5, a2);
}

uint64_t sub_239467870(uint64_t a1, unint64_t *a2)
{
  v3 = sub_23946D584(a2);
  if (v3 && sub_2394678C4(a1, v3))
  {
    return 1;
  }

  sub_23946D578(v3);
  return 0;
}

unint64_t *sub_2394678C4(uint64_t a1, uint64_t a2)
{
  result = *(*a1 + 48);
  if (result)
  {
    return (sub_2394579D0(result, a2) != 0);
  }

  *(*a1 + 48) = sub_2394574D8();
  result = *(*a1 + 48);
  if (result)
  {
    return (sub_2394579D0(result, a2) != 0);
  }

  return result;
}

uint64_t sub_23946791C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v6 = sub_2394656EC(0, a2, a3, a4, a5);
  if (v6 && sub_2394678C4(a1, v6))
  {
    return 1;
  }

  sub_23946D578(v6);
  return 0;
}

uint64_t sub_239467970(uint64_t a1, const char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v6 = sub_23946590C(0, a2, a3, a4, a5);
  if (v6 && sub_2394678C4(a1, v6))
  {
    return 1;
  }

  sub_23946D578(v6);
  return 0;
}

uint64_t sub_2394679C4(uint64_t result, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(result + 16);
  }

  if (a3)
  {
    *a3 = *(result + 8);
  }

  return result;
}

uint64_t sub_2394679EC(uint64_t *a1, void **a2)
{
  sub_23940327C(*a1);
  v4 = *a1;

  return sub_23946EB6C(v4, a2);
}

uint64_t sub_239467A30(uint64_t **a1)
{
  result = **a1;
  if (result)
  {
    return sub_2393FD028(result);
  }

  return result;
}

uint64_t sub_239467A44(uint64_t result, unint64_t a2)
{
  if (result)
  {
    if (a2 < 3)
    {
      v3 = result;
      result = **result;
      if (a2)
      {
        if (result || (**v3 = sub_239402EE8(), (result = **v3) != 0))
        {

          return sub_2393FCD8C(result, a2);
        }
      }

      else
      {
        sub_239402ECC(result);
        **v3 = 0;
        return 1;
      }
    }

    else
    {
      sub_2394170F4(11, 0, 140, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_set.c", 80);
      return 0;
    }
  }

  return result;
}

BOOL sub_239467AF0(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 4) | 0x100) != 0x102)
  {
    sub_2394170F4(12, 0, 191, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_set.c", 102);
    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  if (*(*a1 + 8) != a2)
  {
    v3 = sub_2393FC990();
    if (v3)
    {
      sub_239402ECC(*(*a1 + 8));
      *(*a1 + 8) = v3;
    }
  }

  return v3 != 0;
}

uint64_t sub_239467B88(void *a1, unint64_t *a2)
{
  if (a1 && *a1)
  {
    return sub_23946DE70((*a1 + 24), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239467BA4(void *a1, unint64_t *a2)
{
  if (a1 && *a1)
  {
    return sub_23946DE70((*a1 + 40), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239467BC0(uint64_t result, int *a2)
{
  if (result)
  {
    v2 = result;
    v3 = *(*result + 32);
    if (v3)
    {
      v4 = a2;
      if (*v3 != a2)
      {
        v4 = sub_2393FF9A4(a2);
        if (v4)
        {
          sub_2393FEBA0(**(*v2 + 32));
          **(*v2 + 32) = v4;
        }
      }

      return v4 != 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_239467C54(uint64_t result, int *a2)
{
  if (result)
  {
    v2 = result;
    v3 = *(*result + 32);
    if (v3)
    {
      v4 = a2;
      if (*(v3 + 8) != a2)
      {
        v4 = sub_2393FF9A4(a2);
        if (v4)
        {
          sub_2393FEBA0(*(*(*v2 + 32) + 8));
          *(*(*v2 + 32) + 8) = v4;
        }
      }

      return v4 != 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_239467CE8(uint64_t result, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(*result + 56);
  }

  if (a3)
  {
    *a3 = *(*result + 64);
  }

  return result;
}

uint64_t sub_239467D0C(void *a1, uint64_t a2)
{
  if (a1 && *a1)
  {
    return sub_23946E800(*a1 + 48, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239467D4C(uint64_t a1, uint64_t a2)
{
  if (a2 == -1)
  {
    return 1;
  }

  if (a2)
  {
    v5 = dword_284BBADE0;
    v6 = 6;
    while (*v5 != a2)
    {
      v5 += 6;
      if (!--v6)
      {

        return sub_239467E20(a2, a1);
      }
    }

    v7 = *(v5 + 1);

    return v7();
  }

  else
  {
    result = sub_239467E20(910, a1);
    if (result == 3)
    {
      v4 = sub_239462398(a1);
      result = 3;
      if (v4)
      {
        if ((*(a1 + 49) & 0x20) != 0)
        {
          return 1;
        }

        else
        {
          return 3;
        }
      }
    }
  }

  return result;
}

uint64_t sub_239467E20(int a1, uint64_t a2)
{
  v2 = *(a2 + 136);
  if (!v2)
  {
    return 3;
  }

  if (!sub_239431484(*(v2 + 8)))
  {
LABEL_6:
    if (sub_239431484(*v2))
    {
      v6 = 0;
      while (1)
      {
        v7 = sub_239457528(*v2, v6);
        if (sub_2394509E8(v7) == a1)
        {
          break;
        }

        if (++v6 >= sub_239431484(*v2))
        {
          return 3;
        }
      }

      return 1;
    }

    return 3;
  }

  v4 = 0;
  while (1)
  {
    v5 = sub_239457528(*(v2 + 8), v4);
    if (sub_2394509E8(v5) == a1)
    {
      return 2;
    }

    if (++v4 >= sub_239431484(*(v2 + 8)))
    {
      goto LABEL_6;
    }
  }
}

uint64_t sub_239467EDC(uint64_t a1, uint64_t a2)
{
  v3 = sub_239462398(a2);
  result = 3;
  if (v3)
  {
    if ((*(a2 + 49) & 0x20) != 0)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

BOOL sub_239467F1C(int a1)
{
  v1 = 0;
  do
  {
    v2 = dword_284BBADE0[v1];
    if (v2 == a1)
    {
      break;
    }

    v3 = v1 == 30;
    v1 += 6;
  }

  while (!v3);
  return v2 == a1;
}

uint64_t sub_239467F50(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 136);
  if (v3 && (*v3 || v3[1]))
  {
    v4 = *(a1 + 16);

    return sub_239467E20(v4, a2);
  }

  else
  {
    v6 = sub_239462398(a2);
    result = 3;
    if (v6)
    {
      if ((*(a2 + 49) & 0x20) != 0)
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }
  }

  return result;
}

uint64_t sub_239467FCC(uint64_t result)
{
  if (result)
  {
    return sub_239431484(result);
  }

  return result;
}

uint64_t sub_239467FEC(unint64_t *a1, unsigned int a2, int a3)
{
  v5 = sub_239450F00(a2);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  return sub_239468048(a1, v5, a3);
}

uint64_t sub_239468048(unint64_t *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    LODWORD(v3) = a3;
    v6 = sub_239431484(a1);
    if (v3 < 0)
    {
      LODWORD(v3) = -1;
    }

    v7 = v6;
    for (i = v3 + 1; i < v7; ++i)
    {
      v9 = sub_239457528(a1, i);
      v3 = (v3 + 1);
      if (!sub_239450998(*v9, a2))
      {
        return v3;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_2394680D4(unint64_t *a1, int a2, int a3)
{
  if (a1)
  {
    LODWORD(v3) = a3;
    v5 = a2 != 0;
    v6 = sub_239431484(a1);
    if (v3 < 0)
    {
      LODWORD(v3) = -1;
    }

    v7 = v6;
    for (i = v3 + 1; i < v7; ++i)
    {
      v9 = sub_239457528(a1, i);
      if (v9)
      {
        v10 = *(v9 + 2) > 0;
      }

      else
      {
        v10 = 0;
      }

      v3 = (v3 + 1);
      if (v10 == v5)
      {
        return v3;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

BOOL sub_239468174(_BOOL8 result)
{
  if (result)
  {
    return *(result + 8) > 0;
  }

  return result;
}

unint64_t *sub_239468188(unint64_t *a1, unsigned int a2)
{
  if (!a1 || (a2 & 0x80000000) != 0 || sub_239431484(a1) <= a2)
  {
    return 0;
  }

  return sub_239457528(a1, a2);
}

uint64_t sub_2394681E8(uint64_t *a1, unsigned int a2)
{
  if (!a1 || (a2 & 0x80000000) != 0 || sub_239431484(a1) <= a2)
  {
    return 0;
  }

  return sub_239457700(a1, a2);
}

unint64_t *sub_239468248(unint64_t **a1, unint64_t *a2, int a3)
{
  if (!a1)
  {
    sub_2394170F4(11, 0, 67, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_v3.c", 149);
LABEL_14:
    sub_23946DDD4(0);
    return 0;
  }

  v6 = *a1;
  v7 = *a1;
  if (!*a1)
  {
    v7 = sub_2394574D8();
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v8 = sub_239431484(v7);
  v9 = sub_23946DDF8(a2);
  if (!v9)
  {
    goto LABEL_15;
  }

  if (v8 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v8;
  }

  if (a3 < 0)
  {
    v10 = v8;
  }

  if (!sub_23945761C(v7, v9, v10))
  {
LABEL_15:
    sub_23946DDD4(v9);
    if (!v6)
    {
      sub_2393FFA58(v7);
    }

    return 0;
  }

  if (!*a1)
  {
    *a1 = v7;
  }

  return v7;
}

uint64_t *sub_239468330(void **a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = sub_239450F00(a2);
  if (v7)
  {

    return sub_2394683B8(a1, v7, v5, a4);
  }

  else
  {
    sub_2394170F4(11, 0, 129, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_v3.c", 196);
    return 0;
  }
}

uint64_t *sub_2394683B8(void **a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a1 && (v8 = *a1) != 0 || (v8 = sub_23946DDC8()) != 0)
  {
    if (sub_2394657A0(v8, a2) && (!a3 ? (v9 = -1) : (v9 = 255), *(v8 + 2) = v9, sub_2393FDD94(v8[2], *(a4 + 8), *a4)))
    {
      if (a1 && !*a1)
      {
        *a1 = v8;
      }
    }

    else
    {
      if (!a1 || v8 != *a1)
      {
        sub_23946DDD4(v8);
      }

      return 0;
    }
  }

  return v8;
}

uint64_t sub_239468474(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 255;
    }

    else
    {
      v2 = -1;
    }

    *(result + 8) = v2;
    return 1;
  }

  return result;
}

BOOL sub_239468490(_BOOL8 result, uint64_t a2)
{
  if (result)
  {
    return sub_2393FDD94(*(result + 16), *(a2 + 8), *a2) != 0;
  }

  return result;
}

uint64_t sub_2394684C8(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    v2 = 122;
    v3 = 184;
    goto LABEL_7;
  }

  if (*(a1 + 64))
  {
    v2 = 66;
    v3 = 192;
LABEL_7:
    sub_2394170F4(11, 0, v2, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/x509_vfy.c", v3);
    v5 = 0;
    v6 = 65;
    goto LABEL_8;
  }

  v4 = *(a1 + 32);
  if ((*(v4 + 9) & 0x30) != 0)
  {
    v2 = 66;
    v3 = 202;
    goto LABEL_7;
  }

  v8 = sub_2394574D8();
  *(a1 + 64) = v8;
  if (!v8 || !sub_2394579D0(v8, *(a1 + 8)))
  {
    v10 = 0;
    goto LABEL_16;
  }

  sub_239455868(*(a1 + 8));
  *(a1 + 56) = 1;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = sub_2394579F4(v9);
    if (!v10)
    {
LABEL_16:
      v5 = 0;
      v11 = 0;
LABEL_17:
      v12 = 17;
      goto LABEL_18;
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = sub_239431484(*(a1 + 64));
  v15 = sub_239457528(*(a1 + 64), v14 - 1);
  v16 = *(v4 + 24);
  if (v16 <= 2147483644)
  {
    v17 = v16 + 2;
  }

  else
  {
    v17 = 0x7FFFFFFF;
  }

  if (v17 <= v14)
  {
LABEL_38:
    v19 = v14;
    goto LABEL_39;
  }

  v18 = v15;
  v19 = v14;
  while (1)
  {
    if (!sub_239462398(v18))
    {
      v5 = 0;
      v11 = 0;
      goto LABEL_96;
    }

    if ((*(v18 + 49) & 0x20) != 0)
    {
      goto LABEL_39;
    }

    if ((*(*(a1 + 32) + 9) & 0x80) != 0)
    {
      v20 = sub_239468BC0(a1, v18);
      if (v20)
      {
        break;
      }
    }

    if (!v10)
    {
      goto LABEL_38;
    }

    v21 = sub_239468C30(a1, v10, v18);
    if (!v21)
    {
      goto LABEL_39;
    }

    v18 = v21;
    if (!sub_2394579D0(*(a1 + 64), v21))
    {
      goto LABEL_16;
    }

    sub_239455868(v18);
    sub_239457778(v10, v18);
    ++*(a1 + 56);
    if (v17 == ++v19)
    {
      v19 = v17;
      goto LABEL_39;
    }
  }

  sub_23946EDF8(v20);
LABEL_39:
  v49 = v17;
  v13 = 0;
  v11 = 0;
  v22 = v19;
  while (2)
  {
    v23 = sub_239431484(*(a1 + 64)) - 1;
    v24 = sub_239457528(*(a1 + 64), v23);
    if (!sub_239462398(v24))
    {
LABEL_92:
      v5 = 0;
LABEL_96:
      v12 = 41;
LABEL_18:
      *(a1 + 76) = v12;
      goto LABEL_19;
    }

    if ((*(v24 + 49) & 0x20) == 0)
    {
      v25 = v24;
      goto LABEL_50;
    }

    if (sub_239431484(*(a1 + 64)) == 1)
    {
      v25 = sub_239468BC0(a1, v24);
      if (!v25 || sub_239465D64(v24, v25))
      {
        sub_23946EDF8(v25);
        *(a1 + 80) = v24;
        *(a1 + 72) = v23;
        *(a1 + 76) = 18;
        v26 = (*(a1 + 48))(0, a1);
        if (v26 >= 2)
        {
          goto LABEL_114;
        }

        v13 = 1;
        v27 = v49;
        if (!v26)
        {
          goto LABEL_112;
        }

        v25 = v24;
        goto LABEL_51;
      }

      sub_23946EDF8(v24);
      sub_23945754C(*(a1 + 64), v23, v25);
      *(a1 + 56) = 0;
    }

    else
    {
      v11 = sub_2394579D8(*(a1 + 64));
      --*(a1 + 56);
      --v22;
      v25 = sub_239457528(*(a1 + 64), v19 - 2);
      --v19;
    }

LABEL_50:
    v27 = v49;
LABEL_51:
    if (v19 >= v27)
    {
      goto LABEL_58;
    }

    do
    {
      if (!sub_239462398(v25))
      {
        goto LABEL_92;
      }

      if ((*(v25 + 49) & 0x20) != 0)
      {
        goto LABEL_58;
      }

      v28 = sub_239468BC0(a1, v25);
      if (!v28)
      {
        goto LABEL_58;
      }

      v29 = v28;
      if (!sub_2394579D0(*(a1 + 64), v28))
      {
        sub_23946EDF8(v29);
        goto LABEL_94;
      }

      ++v19;
      v25 = v29;
    }

    while (v27 != v19);
    v19 = v27;
    v25 = v29;
LABEL_58:
    for (i = *(a1 + 56); i < sub_239431484(*(a1 + 64)); ++i)
    {
      v31 = sub_239457528(*(a1 + 64), i);
      v32 = sub_239467D4C(v31, *(*(a1 + 32) + 20));
      if (v32 == 2)
      {
        *(a1 + 80) = v31;
        *(a1 + 72) = i;
        *(a1 + 76) = 28;
        v33 = (*(a1 + 48))(0, a1);
        if (v33 >= 2)
        {
          goto LABEL_114;
        }

        if (!v33)
        {
          goto LABEL_111;
        }
      }

      else if (v32 == 1)
      {
        goto LABEL_103;
      }
    }

    if ((*(*(a1 + 32) + 10) & 8) == 0)
    {
      goto LABEL_77;
    }

    v34 = *(a1 + 56);
    if (v34 >= sub_239431484(*(a1 + 64)))
    {
      v35 = sub_239457528(*(a1 + 64), 0);
      v36 = sub_239465D34(v35);
      v37 = sub_239466910(a1, v36);
      if (v37)
      {
        v38 = v37;
        v48 = v11;
        v39 = 0;
        if (sub_239431484(v37))
        {
          do
          {
            v40 = sub_239457528(v38, v39);
            if (!sub_239465D64(v40, v35))
            {
              break;
            }

            ++v39;
          }

          while (v39 < sub_239431484(v38));
        }

        else
        {
          v40 = 0;
        }

        if (v39 >= sub_239431484(v38))
        {
          sub_239457574(v38, sub_23946A478, sub_23946EDF8);
          v11 = v48;
        }

        else
        {
          sub_239455868(v40);
          sub_239457574(v38, sub_23946A478, sub_23946EDF8);
          v11 = v48;
          if (v40)
          {
            sub_23945754C(*(a1 + 64), 0, v40);
            sub_23946EDF8(v35);
            *(a1 + 56) = 0;
            break;
          }
        }
      }

LABEL_77:
      if ((*(*(a1 + 32) + 9) & 0x1080) == 0)
      {
        v41 = v22 - 2;
        do
        {
          if (v22 < 2)
          {
            goto LABEL_87;
          }

          --v22;
          v42 = sub_239457528(*(a1 + 64), v41);
          v43 = sub_239468BC0(a1, v42);
          --v41;
        }

        while (!v43);
        sub_23946EDF8(v43);
        if (v19 >= v22 + 1)
        {
          v44 = v19 + 1;
          do
          {
            v45 = sub_2394579D8(*(a1 + 64));
            sub_23946EDF8(v45);
            --v44;
          }

          while (v44 > v22 + 1);
          v19 = v22;
        }

        *(a1 + 56) = sub_239431484(*(a1 + 64));
        continue;
      }

LABEL_87:
      if (v13)
      {
        break;
      }

      if (!v11 || !sub_239468CB8(a1, v25, v11))
      {
        if (*(a1 + 56) >= v19)
        {
          v46 = 20;
        }

        else
        {
          v46 = 2;
        }

        *(a1 + 76) = v46;
        *(a1 + 80) = v25;
        --v19;
LABEL_101:
        *(a1 + 72) = v19;
        v47 = (*(a1 + 48))(0, a1);
        if (v47 >= 2)
        {
LABEL_114:
          abort();
        }

        v13 = 1;
        if (v47)
        {
          break;
        }

LABEL_112:
        v5 = 0;
        goto LABEL_20;
      }

      if (sub_2394579D0(*(a1 + 64), v11))
      {
        *(a1 + 56) = v19 + 1;
        *(a1 + 80) = v11;
        *(a1 + 76) = 19;
        v11 = 0;
        goto LABEL_101;
      }

LABEL_94:
      v5 = 0;
      goto LABEL_17;
    }

    break;
  }

LABEL_103:
  if (sub_239468D28(a1) && sub_239468ED8(a1) && sub_239469074(a1) && sub_239469428(a1) && sub_2394696BC(a1) && (v13 || sub_239469890(a1)))
  {
    v13 = 0;
    v5 = 1;
    goto LABEL_20;
  }

LABEL_111:
  v5 = 0;
LABEL_19:
  v13 = 1;
LABEL_20:
  sub_2393FFA58(v10);
  sub_23946EDF8(v11);
  if (v13 && !*(a1 + 76))
  {
    v6 = 1;
LABEL_8:
    *(a1 + 76) = v6;
  }

  return v5;
}