id sub_100521AC4(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254EA20))
  {
    if ([objc_msgSend(a2 "serialized")] != 20)
    {
      sub_1018B2F10();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

uint64_t sub_100521C60(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t sub_100521F14(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v35 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 2)
      {
        if (v12 == 3)
        {
          *(a1 + 24) |= 4u;
          v33 = 0;
          v27 = [a2 position] + 4;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 4, v28 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v30 = v33;
          v31 = 20;
LABEL_61:
          *(a1 + v31) = v30;
          goto LABEL_62;
        }

        if (v12 != 4)
        {
LABEL_34:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_62;
        }

        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v36 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v36 & 0x7F) << v15;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v10 = v16++ >= 9;
          if (v10)
          {
            v20 = 0;
            goto LABEL_51;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v17;
        }

LABEL_51:
        v29 = 8;
      }

      else
      {
        if (v12 != 1)
        {
          if (v12 != 2)
          {
            goto LABEL_34;
          }

          *(a1 + 24) |= 2u;
          v34 = 0;
          v13 = [a2 position] + 4;
          if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v30 = v34;
          v31 = 12;
          goto LABEL_61;
        }

        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          v37 = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v37 & 0x7F) << v22;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v10 = v23++ >= 9;
          if (v10)
          {
            v20 = 0;
            goto LABEL_55;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v24;
        }

LABEL_55:
        v29 = 16;
      }

      *(a1 + v29) = v20;
LABEL_62:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100522F24(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v53) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v53 & 0x7F) << v5;
        if ((v53 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = (v11 >> 3);
      if (v12 <= 4)
      {
        if ((v11 >> 3) > 2u)
        {
          if (v12 == 3)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 68) |= 0x20u;
            while (1)
            {
              LOBYTE(v53) = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v53 & 0x7F) << v37;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v10 = v38++ >= 9;
              if (v10)
              {
                v20 = 0;
                goto LABEL_113;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v39;
            }

LABEL_113:
            v50 = 60;
            goto LABEL_114;
          }

          if (v12 == 4)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 68) |= 4u;
            while (1)
            {
              LOBYTE(v53) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v53 & 0x7F) << v21;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v10 = v22++ >= 9;
              if (v10)
              {
                v26 = 0;
                goto LABEL_101;
              }
            }

            if ([a2 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v23;
            }

LABEL_101:
            v51 = 24;
            goto LABEL_119;
          }
        }

        else
        {
          if (v12 == 1)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            *(a1 + 68) |= 0x40u;
            while (1)
            {
              LOBYTE(v53) = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v34 |= (v53 & 0x7F) << v32;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v10 = v33++ >= 9;
              if (v10)
              {
                v20 = 0;
                goto LABEL_109;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v34;
            }

LABEL_109:
            v50 = 64;
            goto LABEL_114;
          }

          if (v12 == 2)
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 68) |= 0x10u;
            while (1)
            {
              LOBYTE(v53) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v53 & 0x7F) << v15;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v10 = v16++ >= 9;
              if (v10)
              {
                v20 = 0;
                goto LABEL_97;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v17;
            }

LABEL_97:
            v50 = 56;
            goto LABEL_114;
          }
        }
      }

      else if ((v11 >> 3) <= 6u)
      {
        if (v12 == 5)
        {
          *(a1 + 68) |= 1u;
          v53 = 0;
          v43 = [a2 position] + 8;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v53;
          goto LABEL_122;
        }

        if (v12 == 6)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 68) |= 8u;
          while (1)
          {
            LOBYTE(v53) = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v53 & 0x7F) << v27;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v10 = v28++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_105;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v29;
          }

LABEL_105:
          v50 = 40;
LABEL_114:
          *(a1 + v50) = v20;
          goto LABEL_122;
        }
      }

      else
      {
        switch(v12)
        {
          case 7u:
            v42 = objc_alloc_init(TRANSITPbLocationFingerprintsV1);

            *(a1 + 32) = v42;
            v53 = 0;
            v54 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_101073EEC(v42, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_79;
          case 8u:
            v45 = 0;
            v46 = 0;
            v47 = 0;
            *(a1 + 68) |= 2u;
            while (1)
            {
              LOBYTE(v53) = 0;
              v48 = [a2 position] + 1;
              if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v47 |= (v53 & 0x7F) << v45;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v10 = v46++ >= 9;
              if (v10)
              {
                v26 = 0;
                goto LABEL_118;
              }
            }

            if ([a2 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v47;
            }

LABEL_118:
            v51 = 16;
LABEL_119:
            *(a1 + v51) = v26;
            goto LABEL_122;
          case 9u:
            v13 = objc_alloc_init(TRANSITPbLocationFingerprints);

            *(a1 + 48) = v13;
            v53 = 0;
            v54 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_1007DAC20(v13, a2);
            if (!result)
            {
              return result;
            }

LABEL_79:
            PBReaderRecallMark();
            goto LABEL_122;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_122:
      v52 = [a2 position];
    }

    while (v52 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_100524654(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 32) + 25) = 1;
  v3 = *(a1 + 32);
  if ((v3[7] != 0) != a2)
  {
    sub_1018B34E8(v3, a2);
  }

  return [v3 _doSigningWhenReady];
}

uint64_t sub_100524D3C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018B37B0();
    }

    v3 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#Warning MESCAL: churn failure: signing disabled", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B37C4();
    }

    v4 = *(*(a1 + 32) + 56);
    if (v4)
    {
      sub_100329B60(v4);
      *(*(a1 + 32) + 56) = 0;
    }
  }

  return (*(*(a1 + 40) + 16))();
}

id sub_100524E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = _NSConcreteStackBlock;
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 8);
  v6[1] = 3221225472;
  v6[2] = sub_100524E8C;
  v6[3] = &unk_10245C340;
  v6[4] = a3;
  v6[5] = a2;
  v7 = v3;
  return [v4 async:v6];
}

id sub_100524E8C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018B38CC();
    }

    v2 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v3 = [*(a1 + 32) description];
      *buf = 68289282;
      v15 = 2082;
      v16 = "";
      v17 = 2114;
      v18 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MESCAL: could not load store URL bag, error:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_1018B3094();
      }
    }

    v4 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v5 = [*(a1 + 32) description];
      *buf = 68289282;
      *&buf[4] = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2114;
      v18 = v5;
      _os_signpost_emit_with_name_impl(dword_100000000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MESCAL: could not load store URL bag", "{msg%{public}.0s:MESCAL: could not load store URL bag, error:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    return (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = [*(a1 + 40) objectForKey:@"loc-sign-sap-version"];
    if (!v7)
    {
      v7 = [*(a1 + 40) objectForKey:@"sign-sap-version"];
    }

    *(*(a1 + 48) + 64) = [v7 copy];
    v8 = [*(a1 + 40) objectForKey:@"loc-sign-sap-setup-cert"];
    if (!v8)
    {
      v8 = [*(a1 + 40) objectForKey:@"sign-sap-setup-cert"];
    }

    *(*(a1 + 48) + 72) = [v8 copy];
    v9 = [*(a1 + 40) objectForKey:@"loc-sign-sap-setup"];
    if (!v9)
    {
      v9 = [*(a1 + 40) objectForKey:@"sign-sap-setup"];
    }

    *(*(a1 + 48) + 80) = [v9 copy];
    v10 = [NSURLRequest requestWithURL:[NSURL URLWithString:*(*(a1 + 48) + 72)]];
    v11 = [*(a1 + 48) _mescalSignerNSURLSession];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100525150;
    v12[3] = &unk_10245C318;
    v13 = *(a1 + 48);
    [objc_msgSend(v11 dataTaskWithRequest:v10 completionHandler:{v12), "resume"}];
    return [v11 finishTasksAndInvalidate];
  }
}

id sub_100525150(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018B37B0();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 136446210;
      *&v17[4] = [objc_msgSend(a4 "description")];
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning MESCAL: signer cert download did fail, dude: %{public}s", v17, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B38E0(a4);
    }

    return (*(*(a1 + 40) + 16))();
  }

  v8 = [NSPropertyListSerialization propertyListWithData:a2 options:0 format:0 error:0];
  v9 = [v8 objectForKey:@"sign-sap-setup-cert"];
  if (!v9)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018B38CC();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *v17 = 68289282;
      *&v17[8] = 2082;
      v14 = v8 ? "Y" : "N";
      *&v17[10] = "";
      v18 = 2082;
      v19 = v14;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MESCAL: could not extract data from cert download, dict:%{public, location:escape_only}s}", v17, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_1018B3094();
      }
    }

    v15 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *v17 = 68289282;
      *&v17[8] = 2082;
      if (v8)
      {
        v16 = "Y";
      }

      else
      {
        v16 = "N";
      }

      *&v17[10] = "";
      v18 = 2082;
      v19 = v16;
      _os_signpost_emit_with_name_impl(dword_100000000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MESCAL: could not extract data from cert download", "{msg%{public}.0s:MESCAL: could not extract data from cert download, dict:%{public, location:escape_only}s}", v17, 0x1Cu);
    }

    return (*(*(a1 + 40) + 16))();
  }

  v10 = v9;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);

  return [v11 _churnMescalExchangeData:v10 withCompletion:v12];
}

id sub_10052583C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018B37B0();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136446210;
      *v18 = [objc_msgSend(a4 "description")];
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning MESCAL: exchange data up/download did fail, dude: %{public}s", &v17, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B3CA8(a4);
    }

    return (*(*(a1 + 40) + 16))();
  }

  v8 = [NSPropertyListSerialization propertyListWithData:a2 options:0 format:0 error:0];
  v9 = [v8 objectForKey:@"sign-sap-setup-buffer"];
  if (!v9)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018B38CC();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v14 = v8 ? "Y" : "N";
      v17 = 68289282;
      *v18 = 0;
      *&v18[4] = 2082;
      *&v18[6] = "";
      v19 = 2082;
      v20 = v14;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MESCAL: could not extract data from exchange download, dict:%{public, location:escape_only}s}", &v17, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_1018B3094();
      }
    }

    v15 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      if (v8)
      {
        v16 = "Y";
      }

      else
      {
        v16 = "N";
      }

      v17 = 68289282;
      *v18 = 0;
      *&v18[4] = 2082;
      *&v18[6] = "";
      v19 = 2082;
      v20 = v16;
      _os_signpost_emit_with_name_impl(dword_100000000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MESCAL: could not extract data from exchange download", "{msg%{public}.0s:MESCAL: could not extract data from exchange download, dict:%{public, location:escape_only}s}", &v17, 0x1Cu);
    }

    return (*(*(a1 + 40) + 16))();
  }

  v10 = v9;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);

  return [v11 _churnMescalExchangeData:v10 withCompletion:v12];
}

uint64_t sub_100525B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *a1 = off_10245C3D8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0x4034000000000000;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (qword_1025D4790 != -1)
  {
    sub_1018B3DA8();
  }

  v4 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v13 = 2082;
    *&v13[2] = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLGNSSStateQueryAssertion,CLGNSSStateQueryAssertion,init}", buf, 0x12u);
  }

  sub_10001CAF4(buf);
  v5 = *(a1 + 80);
  v11 = 0.0;
  v6 = sub_1000B9370(*buf, "CLGNSSStateQueryAssertionPeriodicity_s", &v11);
  v7 = v11;
  if (!v6)
  {
    v7 = v5;
  }

  *(a1 + 80) = v7;
  if (*v13)
  {
    sub_100008080(*v13);
  }

  if (qword_1025D4790 != -1)
  {
    sub_100249B74();
  }

  v8 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 80);
    *buf = 68289282;
    *&buf[4] = 0;
    *v13 = 2082;
    *&v13[2] = "";
    v14 = 2050;
    v15 = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLGNSSStateQueryAssertion,CLGNSSStateQueryAssertion,init, fResponsePeriodicity:%{public}0.3f}", buf, 0x1Cu);
  }

  return a1;
}

uint64_t sub_100525DC0(uint64_t a1)
{
  *a1 = off_10245C3D8;
  if (qword_1025D4790 != -1)
  {
    sub_1018B3DA8();
  }

  v2 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLGNSSStateQueryAssertion,CLGNSSStateQueryAssertion,Deinit}", v6, 0x12u);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    [v3 invalidate];

    *(a1 + 96) = 0;
  }

  v4 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_100143A80(a1);
  return a1;
}

void sub_100525EFC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_100525F0C(uint64_t a1)
{
  sub_100525DC0(a1);

  operator delete();
}

void sub_100525F44(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4790 != -1)
  {
    sub_1018B3DA8();
  }

  v4 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    LODWORD(v13[0]) = 0;
    WORD2(v13[0]) = 2082;
    *(v13 + 6) = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGNSSStateQueryAssertion,handleMessage}", buf, 0x12u);
    if (qword_1025D4790 != -1)
    {
      sub_100249B74();
    }
  }

  v5 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CLConnectionMessage::name(*a2);
    if (*(v6 + 23) >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = *v6;
    }

    *buf = 136380675;
    v13[0] = v7;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#CLGNSSStateQueryAssertion,daemon,message,%{private}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B3DBC(a2);
  }

  v8 = CLConnectionMessage::name(*a2);
  if (*(v8 + 23) < 0 && *(v8 + 8) == 37 && !memcmp(*v8, "kCLConnectionMessageBBGnssStatusQuery", 0x25uLL))
  {
    v9 = *a2;
    v10 = *(a2 + 8);
    v11[0] = v9;
    v11[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100526138(a1, v11);
  }
}

void sub_100526118(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005271AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10052893C(uint64_t a1, __int128 *a2)
{
  *a1 = &off_10245C4B8;
  v4 = *a2;
  *(a1 + 24) = *(a2 + 2);
  *(a1 + 8) = v4;
  if (*(a2 + 47) < 0)
  {
    sub_100007244((a1 + 32), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 48) = *(a2 + 5);
    *(a1 + 32) = v5;
  }

  *(a1 + 56) = *(a2 + 12);
  *(a1 + 64) = 0;
  if ((atomic_load_explicit(&qword_102656C60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102656C60))
  {
    v7 = 0;
    sub_100126E84(&unk_102656C58, "ResumeRemindersModelDebugLogging", &v7, 0);
    __cxa_guard_release(&qword_102656C60);
  }

  *(a1 + 64) = byte_102656C59;
  return a1;
}

void sub_100528A28(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_102656C60);
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(a1);
}

void sub_100528A50(uint64_t a1, double *a2)
{
  *buf = 5;
  v17 = 0;
  v18 = 0;
  __p = 0;
  sub_1004579D4(&__p, buf, &v28, 1uLL);
  v41 = 0;
  *v40 = xmmword_101C78400;
  memset(&v40[2], 0, 135);
  v42 = xmmword_101C78400;
  v43 = 0;
  v44 = 0;
  memset(v45, 0, sizeof(v45));
  v46 = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0u;
  v50 = xmmword_101C78400;
  v51 = 0;
  v52 = 0;
  v53 = 0xFFEFFFFFFFFFFFFFLL;
  v64 = 0;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  memset(v63, 0, sizeof(v63));
  v65 = 0u;
  v66 = 0xFFEFFFFFFFFFFFFFLL;
  v67 = 0;
  v68 = 0;
  v73 = 0;
  v74 = 0;
  v79 = 0;
  v71 = 0u;
  memset(v72, 0, sizeof(v72));
  v69 = 0u;
  v70 = 0u;
  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  memset(v78, 0, sizeof(v78));
  v80 = 0xFFEFFFFFFFFFFFFFLL;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  *v101 = 0xFFEFFFFFFFFFFFFFLL;
  memset(&v101[8], 0, 64);
  v102 = 0xFFEFFFFFFFFFFFFFLL;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0xFFEFFFFFFFFFFFFFLL;
  v108 = 0u;
  v109 = 0x80000000800000;
  v110 = 0u;
  v111 = xmmword_101C78410;
  v112 = 0x80000000800000;
  v113 = 0u;
  v114 = 0u;
  v115 = 0;
  v116 = 0xFFEFFFFFFFFFFFFFLL;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0;
  v124 = 0xFFEFFFFFFFFFFFFFLL;
  v125 = 0;
  v126 = 0;
  v127 = 0xFFEFFFFFFFFFFFFFLL;
  v128 = 7;
  v129 = 0xFFEFFFFFFFFFFFFFLL;
  v130 = 0;
  v132 = 0;
  v131 = 0u;
  if (sub_1000C2B7C(a2, &__p, v40))
  {
    v35 = *v101;
    v36 = *&v101[16];
    v37 = *&v101[32];
    v38 = *&v101[48];
    v39 = *&v101[64];
    if (*v101 > *(a1 + 24))
    {
      if ((atomic_load_explicit(&qword_102656C78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102656C78))
      {
        *buf = 0;
        sub_1004861C8(&byte_102656C68, "ResumeRemindersClassificationOverride", buf, 0);
        __cxa_guard_release(&qword_102656C78);
      }

      if (byte_102656C68 == 1)
      {
        *&v36 = dword_102656C6C;
      }

      if (qword_1025D43F0 != -1)
      {
        sub_1018B4AE8();
      }

      v4 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
      {
        v5 = (a1 + 32);
        if (*(a1 + 55) < 0)
        {
          v5 = *v5;
        }

        *buf = 136315906;
        v28 = v5;
        v29 = 2048;
        v30 = v35;
        v31 = 2048;
        v32 = v36;
        v33 = 2048;
        v34 = *(&v36 + 2);
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "[resume reminders] model %s, adding tier2 entry,startTime,%f,type,%zu,confidence,%f", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D43F0 != -1)
        {
          sub_1018B4AE8();
        }

        v11 = (a1 + 32);
        if (*(a1 + 55) < 0)
        {
          v11 = *v11;
        }

        v19 = 136315906;
        v20 = v11;
        v21 = 2048;
        v22 = v35;
        v23 = 2048;
        v24 = v36;
        v25 = 2048;
        v26 = *(&v36 + 2);
        LODWORD(v14) = 42;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43F8, 2, "[resume reminders] model %s, adding tier2 entry,startTime,%f,type,%zu,confidence,%f", &v19, v14, v15, *&__p);
        v13 = v12;
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLWorkoutResumeReminders::DefaultActivityModel::update(const CLWorkoutPredictorInputs &)", "%s\n", v12);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      sub_100529078((a1 + 72), &v35);
    }
  }

  else
  {
    if (qword_1025D43F0 != -1)
    {
      sub_1018B4AE8();
    }

    v6 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
    {
      v7 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v7 = *v7;
      }

      *buf = 136315138;
      v28 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "[resume reminders] model %s, failed to get tier2 source", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D43F0 != -1)
      {
        sub_1018B4AE8();
      }

      v8 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v8 = *v8;
      }

      LODWORD(v35) = 136315138;
      *(&v35 + 4) = v8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43F8, 16, "[resume reminders] model %s, failed to get tier2 source", &v35);
      v10 = v9;
      sub_100152C7C("Generic", 1, 0, 0, "virtual void CLWorkoutResumeReminders::DefaultActivityModel::update(const CLWorkoutPredictorInputs &)", "%s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }
}

void sub_100529034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  __cxa_guard_abort(&qword_102656C78);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100529078(unint64_t *a1, uint64_t a2)
{
  sub_10052C66C(a1, a2);
  v3 = a1[5];
  if (v3 >= 0x78)
  {
    ++a1[4];
    a1[5] = v3 - 1;

    sub_10052C908(a1, 1);
  }
}

uint64_t sub_1005290DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47[0] = off_10245C610;
  v47[1] = a1;
  v47[3] = v47;
  sub_10052972C((a1 + 72), "\b", v47, v28);
  sub_10052CC9C(v47);
  v46[0] = off_10245C610;
  v46[1] = a1;
  v46[3] = v46;
  sub_10052972C((a1 + 72), qword_101C7D528, v46, v27);
  sub_10052CC9C(v46);
  v45[0] = off_10245C610;
  v45[1] = a1;
  v45[3] = v45;
  sub_10052972C((a1 + 72), qword_101C7D540, v45, v26);
  sub_10052CC9C(v45);
  if (*(a1 + 64) == 1)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_1018B4AE8();
    }

    v4 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 8);
      sub_10000EC00(&v25, "ActivityTentative");
      sub_1005297E0(&v25.__r_.__value_.__l.__data_, v28 + 8, &v29);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v29;
      }

      else
      {
        v7 = v29.__r_.__value_.__r.__words[0];
      }

      sub_10000EC00(&v23, "ActivityConfident");
      sub_1005297E0(&v23.__r_.__value_.__l.__data_, v27 + 8, &v24);
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v24;
      }

      else
      {
        v8 = v24.__r_.__value_.__r.__words[0];
      }

      sub_10000EC00(&v21, "ActivityRetraction");
      sub_1005297E0(&v21.__r_.__value_.__l.__data_, v26 + 8, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136316162;
      v36 = v5;
      v37 = 2048;
      v38 = v6;
      v39 = 2080;
      v40 = v7;
      v41 = 2080;
      v42 = v8;
      v43 = 2080;
      v44 = p_p;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "[resume reminders] model,%s,workout,%zu,%s,%s,%s", buf, 0x34u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D43F0 != -1)
      {
        sub_1018B4AE8();
      }

      v11 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v11 = *v11;
      }

      v12 = qword_1025D43F8;
      v13 = *(a1 + 8);
      sub_10000EC00(&v24, "ActivityTentative");
      v14 = &v25;
      sub_1005297E0(&v24.__r_.__value_.__l.__data_, v28 + 8, &v25);
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = v25.__r_.__value_.__r.__words[0];
      }

      sub_10000EC00(&__p, "ActivityConfident");
      v15 = &v23;
      sub_1005297E0(&__p.__r_.__value_.__l.__data_, v27 + 8, &v23);
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = v23.__r_.__value_.__r.__words[0];
      }

      sub_10000EC00(v19, "ActivityRetraction");
      sub_1005297E0(v19, v26 + 8, &v21);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v21;
      }

      else
      {
        v16 = v21.__r_.__value_.__r.__words[0];
      }

      LODWORD(v29.__r_.__value_.__l.__data_) = 136316162;
      *(v29.__r_.__value_.__r.__words + 4) = v11;
      WORD2(v29.__r_.__value_.__r.__words[1]) = 2048;
      *(&v29.__r_.__value_.__r.__words[1] + 6) = v13;
      HIWORD(v29.__r_.__value_.__r.__words[2]) = 2080;
      v30 = v14;
      v31 = 2080;
      v32 = v15;
      v33 = 2080;
      v34 = v16;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v12, 2, "[resume reminders] model,%s,workout,%zu,%s,%s,%s", &v29, 52, v19[0], v19[1], v20);
      v18 = v17;
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20) < 0)
      {
        operator delete(v19[0]);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      sub_100152C7C("Generic", 1, 0, 2, "virtual Result CLWorkoutResumeReminders::DefaultActivityModel::run() const", "%s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  return sub_100529F0C(a1, (a1 + 72), v28, v27, v26, a2);
}

void sub_10052960C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10052972C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  *a4 = *(a2 + 4);
  v6 = *a2;
  v7 = a2[1];
  sub_10052CB04(v9, a3);
  sub_10052C968(a1, v6, v7, v9, (a4 + 2));
  return sub_10052CC9C(v9);
}

void sub_1005297C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10052CC9C(va);
  _Unwind_Resume(a1);
}

void sub_1005297E0(const void **a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  v7 = &v59;
  sub_100070148(&v59, v6 + 2);
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v59.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, "M,");
  std::to_string(&v58, *(a2 + 16));
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v58;
  }

  else
  {
    v9 = v58.__r_.__value_.__r.__words[0];
  }

  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v58.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&v59, v9, size);
  v60 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 23) >= 0)
  {
    v12 = *(a1 + 23);
  }

  else
  {
    v12 = a1[1];
  }

  v13 = &v58;
  sub_100070148(&v58, v12 + 2);
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = v58.__r_.__value_.__r.__words[0];
  }

  if (v12)
  {
    if (*(a1 + 23) >= 0)
    {
      v14 = a1;
    }

    else
    {
      v14 = *a1;
    }

    memmove(v13, v14, v12);
  }

  strcpy(v13 + v12, "N,");
  std::to_string(&v57, *(a2 + 24));
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v57;
  }

  else
  {
    v15 = v57.__r_.__value_.__r.__words[0];
  }

  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v57.__r_.__value_.__l.__size_;
  }

  v17 = std::string::append(&v58, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 23) >= 0)
  {
    v19 = *(a1 + 23);
  }

  else
  {
    v19 = a1[1];
  }

  v20 = &v57;
  sub_100070148(&v57, v19 + 5);
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = v57.__r_.__value_.__r.__words[0];
  }

  if (v19)
  {
    if (*(a1 + 23) >= 0)
    {
      v21 = a1;
    }

    else
    {
      v21 = *a1;
    }

    memmove(v20, v21, v19);
  }

  strcpy(v20 + v19, "Time,");
  std::to_string(&v56, *a2);
  if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v56;
  }

  else
  {
    v22 = v56.__r_.__value_.__r.__words[0];
  }

  if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v56.__r_.__value_.__l.__size_;
  }

  v24 = std::string::append(&v57, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v58.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v58.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 23) >= 0)
  {
    v26 = *(a1 + 23);
  }

  else
  {
    v26 = a1[1];
  }

  v27 = &v56;
  sub_100070148(&v56, v26 + 8);
  if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = v56.__r_.__value_.__r.__words[0];
  }

  if (v26)
  {
    if (*(a1 + 23) >= 0)
    {
      v28 = a1;
    }

    else
    {
      v28 = *a1;
    }

    memmove(v27, v28, v26);
  }

  strcpy(v27 + v26, "Matches,");
  std::to_string(&v55, *(a2 + 8));
  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v55;
  }

  else
  {
    v29 = v55.__r_.__value_.__r.__words[0];
  }

  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v55.__r_.__value_.__l.__size_;
  }

  v31 = std::string::append(&v56, v29, v30);
  v32 = *&v31->__r_.__value_.__l.__data_;
  v57.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&v57.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  v33 = SHIBYTE(v60.__r_.__value_.__r.__words[2]);
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v34 = v60.__r_.__value_.__l.__size_;
  }

  v35 = &v52;
  sub_100070148(&v52, v34 + 1);
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v35 = v52.__r_.__value_.__r.__words[0];
  }

  if (v34)
  {
    if (v33 >= 0)
    {
      v36 = &v60;
    }

    else
    {
      v36 = v60.__r_.__value_.__r.__words[0];
    }

    memmove(v35, v36, v34);
  }

  *(&v35->__r_.__value_.__l.__data_ + v34) = 44;
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &v59;
  }

  else
  {
    v37 = v59.__r_.__value_.__r.__words[0];
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = v59.__r_.__value_.__l.__size_;
  }

  v39 = std::string::append(&v52, v37, v38);
  v40 = *&v39->__r_.__value_.__l.__data_;
  v53.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
  *&v53.__r_.__value_.__l.__data_ = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  v41 = std::string::append(&v53, ",", 1uLL);
  v42 = *&v41->__r_.__value_.__l.__data_;
  v54.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
  *&v54.__r_.__value_.__l.__data_ = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = &v58;
  }

  else
  {
    v43 = v58.__r_.__value_.__r.__words[0];
  }

  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v44 = v58.__r_.__value_.__l.__size_;
  }

  v45 = std::string::append(&v54, v43, v44);
  v46 = *&v45->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  v47 = std::string::append(&v55, ",", 1uLL);
  v48 = *&v47->__r_.__value_.__l.__data_;
  v56.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
  *&v56.__r_.__value_.__l.__data_ = v48;
  v47->__r_.__value_.__l.__size_ = 0;
  v47->__r_.__value_.__r.__words[2] = 0;
  v47->__r_.__value_.__r.__words[0] = 0;
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49 = &v57;
  }

  else
  {
    v49 = v57.__r_.__value_.__r.__words[0];
  }

  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v50 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v50 = v57.__r_.__value_.__l.__size_;
  }

  v51 = std::string::append(&v56, v49, v50);
  *a3 = *v51;
  v51->__r_.__value_.__l.__size_ = 0;
  v51->__r_.__value_.__r.__words[2] = 0;
  v51->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v33 & 0x80000000) == 0)
    {
      return;
    }

LABEL_127:
    operator delete(v60.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v59.__r_.__value_.__l.__data_);
  if (v33 < 0)
  {
    goto LABEL_127;
  }
}

void sub_100529D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (*(v49 - 137) < 0)
  {
    operator delete(*(v49 - 160));
  }

  if (*(v49 - 105) < 0)
  {
    operator delete(*(v49 - 128));
  }

  if (*(v49 - 73) < 0)
  {
    operator delete(*(v49 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_100529E78(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    JUMPOUT(0x100529E4CLL);
  }

  JUMPOUT(0x100529E50);
}

void sub_100529EAC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (*(v34 - 137) < 0)
  {
    JUMPOUT(0x100529E5CLL);
  }

  JUMPOUT(0x100529E60);
}

void sub_100529EE0()
{
  if (*(v0 - 137) < 0)
  {
    operator delete(*(v0 - 160));
  }

  if (*(v0 - 105) < 0)
  {
    JUMPOUT(0x100529E6CLL);
  }

  JUMPOUT(0x100529E70);
}

uint64_t sub_100529F0C@<X0>(uint64_t result@<X0>, void *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0xBFF0000000000000;
  *(a6 + 24) = 0;
  v7 = a2[5];
  if (v7)
  {
    v8 = result;
    v9 = *(result + 56);
    if (v9 == 1)
    {
      v19 = *(*(a2[1] + 8 * ((v7 + a2[4] - 1) / 0x38uLL)) + 72 * ((v7 + a2[4] - 1) % 0x38uLL));
      v20 = *(result + 8);
      v21 = a5[1];
      v27 = *a5;
      v28 = v21;
      v29 = a5[2];
      v25 = 0;
      v26 = 0;
      v24 = 0;
      sub_10052CD1C(&v24, &v27, v30, 1uLL);
      v16 = v24;
      if (v24 == v25)
      {
LABEL_13:
        v23 = 0;
        v20 = 0;
      }

      else
      {
        v22 = v24;
        while (*(v22 + 8) == -1.0)
        {
          v22 += 48;
          if (v22 == v25)
          {
            goto LABEL_13;
          }
        }

        v23 = *v22;
        v19 = *(v22 + 8);
      }

      *a6 = v20;
      *(a6 + 8) = v23;
      *(a6 + 16) = v19;
      *(a6 + 24) = 0;
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v9)
      {
        goto LABEL_17;
      }

      v10 = *(*(a2[1] + 8 * ((v7 + a2[4] - 1) / 0x38uLL)) + 72 * ((v7 + a2[4] - 1) % 0x38uLL));
      v11 = *(result + 8);
      v12 = a4[1];
      v27 = *a4;
      v28 = v12;
      v13 = *a3;
      v14 = a3[1];
      v29 = a4[2];
      v30[0] = v13;
      v15 = a3[2];
      v30[1] = v14;
      v30[2] = v15;
      v25 = 0;
      v26 = 0;
      v24 = 0;
      sub_10052CD1C(&v24, &v27, &v31, 2uLL);
      v16 = v24;
      if (v24 == v25)
      {
LABEL_8:
        v11 = 0;
        v18 = 0;
      }

      else
      {
        v17 = v24;
        while (*(v17 + 8) == -1.0)
        {
          v17 += 48;
          if (v17 == v25)
          {
            goto LABEL_8;
          }
        }

        v18 = *v17;
        v10 = *(v17 + 8);
      }

      *a6 = v11;
      *(a6 + 8) = v18;
      *(a6 + 16) = v10;
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    v25 = v16;
    operator delete(v16);
LABEL_17:
    result = (*(*v8 + 16))(v8);
    *(a6 + 24) = result;
  }

  return result;
}

uint64_t sub_10052A174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47[0] = off_10245C6A0;
  v47[3] = v47;
  sub_10052972C((a1 + 72), qword_101C7D558, v47, v28);
  sub_10052CC9C(v47);
  v46[0] = off_10245C6A0;
  v46[3] = v46;
  sub_10052972C((a1 + 72), qword_101C7D570, v46, v27);
  sub_10052CC9C(v46);
  v45[0] = off_10245C6A0;
  v45[3] = v45;
  sub_10052972C((a1 + 72), qword_101C7D540, v45, v26);
  sub_10052CC9C(v45);
  if (*(a1 + 64) == 1)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_1018B4AE8();
    }

    v4 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 16);
      sub_10000EC00(&v25, "WalkingTentative");
      sub_1005297E0(&v25.__r_.__value_.__l.__data_, v28 + 8, &v29);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v29;
      }

      else
      {
        v7 = v29.__r_.__value_.__r.__words[0];
      }

      sub_10000EC00(&v23, "WalkingConfident");
      sub_1005297E0(&v23.__r_.__value_.__l.__data_, v27 + 8, &v24);
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v24;
      }

      else
      {
        v8 = v24.__r_.__value_.__r.__words[0];
      }

      sub_10000EC00(&v21, "WalkingRetraction");
      sub_1005297E0(&v21.__r_.__value_.__l.__data_, v26 + 8, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136316162;
      v36 = v5;
      v37 = 2048;
      v38 = v6;
      v39 = 2080;
      v40 = v7;
      v41 = 2080;
      v42 = v8;
      v43 = 2080;
      v44 = p_p;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "[resume reminders] model,%s,workout,%zu,%s,%s,%s", buf, 0x34u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D43F0 != -1)
      {
        sub_1018B4AE8();
      }

      v11 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v11 = *v11;
      }

      v12 = qword_1025D43F8;
      v13 = *(a1 + 16);
      sub_10000EC00(&v24, "WalkingTentative");
      v14 = &v25;
      sub_1005297E0(&v24.__r_.__value_.__l.__data_, v28 + 8, &v25);
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = v25.__r_.__value_.__r.__words[0];
      }

      sub_10000EC00(&__p, "WalkingConfident");
      v15 = &v23;
      sub_1005297E0(&__p.__r_.__value_.__l.__data_, v27 + 8, &v23);
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = v23.__r_.__value_.__r.__words[0];
      }

      sub_10000EC00(v19, "WalkingRetraction");
      sub_1005297E0(v19, v26 + 8, &v21);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v21;
      }

      else
      {
        v16 = v21.__r_.__value_.__r.__words[0];
      }

      LODWORD(v29.__r_.__value_.__l.__data_) = 136316162;
      *(v29.__r_.__value_.__r.__words + 4) = v11;
      WORD2(v29.__r_.__value_.__r.__words[1]) = 2048;
      *(&v29.__r_.__value_.__r.__words[1] + 6) = v13;
      HIWORD(v29.__r_.__value_.__r.__words[2]) = 2080;
      v30 = v14;
      v31 = 2080;
      v32 = v15;
      v33 = 2080;
      v34 = v16;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v12, 2, "[resume reminders] model,%s,workout,%zu,%s,%s,%s", &v29, 52, v19[0], v19[1], v20);
      v18 = v17;
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20) < 0)
      {
        operator delete(v19[0]);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      sub_100152C7C("Generic", 1, 0, 2, "virtual Result CLWorkoutResumeReminders::WalkModel::run() const", "%s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  return sub_100529F0C(a1, (a1 + 72), v28, v27, v26, a2);
}

void sub_10052A6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

void sub_10052A7C4(uint64_t a1, uint64_t a2)
{
  *buf = 3;
  v20 = 0;
  v21 = 0;
  __p = 0;
  sub_1004579D4(&__p, buf, &v31, 1uLL);
  v39 = 0;
  *v38 = xmmword_101C78400;
  memset(&v38[2], 0, 135);
  v40 = xmmword_101C78400;
  v41 = 0;
  v42 = 0;
  memset(v43, 0, sizeof(v43));
  v44 = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0u;
  v48 = xmmword_101C78400;
  v49 = 0;
  v50 = 0;
  v51 = 0xFFEFFFFFFFFFFFFFLL;
  v62 = 0;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  memset(v61, 0, sizeof(v61));
  v63 = 0u;
  v64 = 0xFFEFFFFFFFFFFFFFLL;
  v65 = 0;
  v66 = 0;
  v71 = 0;
  v72 = 0;
  v77 = 0;
  v69 = 0u;
  memset(v70, 0, sizeof(v70));
  v67 = 0u;
  v68 = 0u;
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  memset(v76, 0, sizeof(v76));
  v78 = 0xFFEFFFFFFFFFFFFFLL;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0xFFEFFFFFFFFFFFFFLL;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0xFFEFFFFFFFFFFFFFLL;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0xFFEFFFFFFFFFFFFFLL;
  v110 = 0u;
  v111 = 0x80000000800000;
  v112 = 0u;
  v113 = xmmword_101C78410;
  v114 = 0x80000000800000;
  v115 = 0u;
  v116 = 0u;
  v117 = 0;
  v118 = 0xFFEFFFFFFFFFFFFFLL;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0;
  v126 = 0xFFEFFFFFFFFFFFFFLL;
  v127 = 0;
  v128 = 0;
  v129 = 0xFFEFFFFFFFFFFFFFLL;
  v130 = 7;
  v131 = 0xFFEFFFFFFFFFFFFFLL;
  v132 = 0;
  v134 = 0;
  v133 = 0u;
  if (sub_1000C2B7C(a2, &__p, v38))
  {
    if (*(&v48 + 1) <= *(a1 + 24))
    {
      goto LABEL_19;
    }

    if (qword_1025D43F0 != -1)
    {
      sub_1018B4AE8();
    }

    v4 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v5 = *v5;
      }

      *buf = 136315906;
      v31 = v5;
      v32 = 2048;
      v33 = *(&v48 + 1);
      v34 = 2048;
      v35 = *(&v45 + 1);
      v36 = 2048;
      v37 = v46;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "[resume reminders] model %s, adding hr entry,startTime,%f,bpm,%f,confidence,%f", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D43F0 != -1)
      {
        sub_1018B4AE8();
      }

      v14 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v14 = *v14;
      }

      v22 = 136315906;
      v23 = v14;
      v24 = 2048;
      v25 = *(&v48 + 1);
      v26 = 2048;
      v27 = *(&v45 + 1);
      v28 = 2048;
      v29 = v46;
      LODWORD(v17) = 42;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43F8, 2, "[resume reminders] model %s, adding hr entry,startTime,%f,bpm,%f,confidence,%f", &v22, v17, v18, *&__p);
      v16 = v15;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLWorkoutResumeReminders::HRModel::update(const CLWorkoutPredictorInputs &)", "%s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    sub_10052AD68((a1 + 72), &v45);
  }

  else
  {
    if (qword_1025D43F0 != -1)
    {
      sub_1018B4AE8();
    }

    v6 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
    {
      v7 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v7 = *v7;
      }

      *buf = 136315138;
      v31 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "[resume reminders] model %s, failed to get hr source", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D43F0 != -1)
      {
        sub_1018B4AE8();
      }

      v11 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v11 = *v11;
      }

      v22 = 136315138;
      v23 = v11;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43F8, 16, "[resume reminders] model %s, failed to get hr source", &v22);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 0, "virtual void CLWorkoutResumeReminders::HRModel::update(const CLWorkoutPredictorInputs &)", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v8 = *(a2 + 328);
  v9 = *(a2 + 344);
  v10 = *(a2 + 360);
  *(a1 + 164) = *(a2 + 372);
  *(a1 + 152) = v10;
  *(a1 + 136) = v9;
  *(a1 + 120) = v8;
LABEL_19:
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }
}

void sub_10052AD3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10052AD68(unint64_t *a1, uint64_t a2)
{
  sub_10052CF28(a1, a2);
  v3 = a1[5];
  if (v3 >= 0x78)
  {
    ++a1[4];
    a1[5] = v3 - 1;

    sub_1000AACB0(a1, 1);
  }
}

uint64_t sub_10052ADCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29[0] = off_10245C720;
  v29[1] = a1;
  v29[3] = v29;
  sub_10052B180((a1 + 72), qword_101C7D588, v29, v19);
  sub_10052D4E4(v29);
  v28[0] = off_10245C720;
  v28[1] = a1;
  v28[3] = v28;
  sub_10052B180((a1 + 72), qword_101C7D540, v28, v18);
  sub_10052D4E4(v28);
  if (*(a1 + 64) == 1)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_1018B4AE8();
    }

    v4 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 8);
      sub_10000EC00(&v17, "HRConfident");
      sub_1005297E0(&v17.__r_.__value_.__l.__data_, v19 + 8, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v23 = v5;
      v24 = 2048;
      v25 = v6;
      v26 = 2080;
      v27 = p_p;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "[resume reminders] model,%s,workout,%zu,%s", buf, 0x20u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D43F0 != -1)
      {
        sub_1018B4AE8();
      }

      v9 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v9 = *v9;
      }

      v10 = qword_1025D43F8;
      v11 = *(a1 + 8);
      sub_10000EC00(v15, "HRConfident");
      sub_1005297E0(v15, v19 + 8, &v17);
      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v17;
      }

      else
      {
        v12 = v17.__r_.__value_.__r.__words[0];
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315650;
      *(__p.__r_.__value_.__r.__words + 4) = v9;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v11;
      HIWORD(__p.__r_.__value_.__r.__words[2]) = 2080;
      v21 = v12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v10, 2, "[resume reminders] model,%s,workout,%zu,%s", &__p, 32, v15[0]);
      v14 = v13;
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (v16 < 0)
      {
        operator delete(v15[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "virtual Result CLWorkoutResumeReminders::HRModel::run() const", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  return sub_10052B234(a1, (a1 + 72), v19, v19, v18, a2);
}

void sub_10052B12C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10052B180@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  *a4 = *(a2 + 4);
  v6 = *a2;
  v7 = a2[1];
  sub_10052D304(v9, a3);
  sub_10052D194(a1, v6, v7, v9, (a4 + 2));
  return sub_10052D4E4(v9);
}

void sub_10052B218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10052D4E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10052B234@<X0>(uint64_t result@<X0>, void *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0xBFF0000000000000;
  *(a6 + 24) = 0;
  v7 = a2[5];
  if (v7)
  {
    v8 = result;
    v9 = *(result + 56);
    if (v9 == 1)
    {
      v19 = *(*(a2[1] + (((v7 + a2[4] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) + (((v7 + a2[4] - 1) & 0x3F) << 6) + 40);
      v20 = *(result + 8);
      v21 = a5[1];
      v27 = *a5;
      v28 = v21;
      v29 = a5[2];
      v25 = 0;
      v26 = 0;
      v24 = 0;
      sub_10052CD1C(&v24, &v27, v30, 1uLL);
      v16 = v24;
      if (v24 == v25)
      {
LABEL_13:
        v23 = 0;
        v20 = 0;
      }

      else
      {
        v22 = v24;
        while (*(v22 + 8) == -1.0)
        {
          v22 += 48;
          if (v22 == v25)
          {
            goto LABEL_13;
          }
        }

        v23 = *v22;
        v19 = *(v22 + 8);
      }

      *a6 = v20;
      *(a6 + 8) = v23;
      *(a6 + 16) = v19;
      *(a6 + 24) = 0;
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v9)
      {
        goto LABEL_17;
      }

      v10 = *(*(a2[1] + (((v7 + a2[4] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) + (((v7 + a2[4] - 1) & 0x3F) << 6) + 40);
      v11 = *(result + 8);
      v12 = a4[1];
      v27 = *a4;
      v28 = v12;
      v13 = *a3;
      v14 = a3[1];
      v29 = a4[2];
      v30[0] = v13;
      v15 = a3[2];
      v30[1] = v14;
      v30[2] = v15;
      v25 = 0;
      v26 = 0;
      v24 = 0;
      sub_10052CD1C(&v24, &v27, &v31, 2uLL);
      v16 = v24;
      if (v24 == v25)
      {
LABEL_8:
        v11 = 0;
        v18 = 0;
      }

      else
      {
        v17 = v24;
        while (*(v17 + 8) == -1.0)
        {
          v17 += 48;
          if (v17 == v25)
          {
            goto LABEL_8;
          }
        }

        v18 = *v17;
        v10 = *(v17 + 8);
      }

      *a6 = v11;
      *(a6 + 8) = v18;
      *(a6 + 16) = v10;
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    v25 = v16;
    operator delete(v16);
LABEL_17:
    result = (*(*v8 + 16))(v8);
    *(a6 + 24) = result;
  }

  return result;
}

const void **sub_10052B46C(const void **a1, const void *a2, uint64_t a3, double a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = a2;
  a1[4] = 96;
  a1[5] = 0x7FEFFFFFFFFFFFFFLL;
  sub_10052B4CC(a1, a3, a4);
  return a1;
}

void sub_10052B4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10052C310(va);
  _Unwind_Resume(a1);
}

void sub_10052B4CC(const void **a1, uint64_t a2, double a3)
{
  if (a1[4] == a2)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_1018B4B94();
    }

    v4 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "[resume reminders] already selected workout %ld", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B4BA8(a2);
    }

    return;
  }

  a1[4] = a2;
  sub_10052BFD8(a1);
  if ((a2 - 27) < 0x45)
  {
LABEL_9:
    *buf = a2;
    *&buf[8] = 0;
    v7 = a3;
    sub_10000EC00(__p, "HRModel");
    v9 = 0;
    operator new();
  }

  if (a2 <= 9)
  {
    if (a2 > 4)
    {
      if ((a2 - 5) < 4)
      {
        goto LABEL_9;
      }

      if (a2 == 9)
      {
        *buf = vdupq_n_s64(9uLL);
        v7 = a3;
        sub_10000EC00(__p, "DefaultActivityModel");
        v9 = 0;
        sub_10052C044();
      }

      return;
    }

    if ((a2 - 1) >= 2)
    {
      if ((a2 - 3) < 2)
      {
        *buf = a2;
        *&buf[8] = 4;
        v7 = a3;
        sub_10000EC00(__p, "DefaultActivityModel");
        v9 = 0;
        sub_10052C044();
      }

      return;
    }

LABEL_23:
    *buf = a2;
    *&buf[8] = 1;
    v7 = a3;
    sub_10000EC00(__p, "WalkModel");
    v9 = 0;
    operator new();
  }

  if (a2 <= 0x18)
  {
    if (((1 << a2) & 0xF06000) != 0)
    {
      goto LABEL_9;
    }

    if (((1 << a2) & 0x1078000) != 0)
    {
      goto LABEL_23;
    }

    if (a2 == 19)
    {
      *buf = vdupq_n_s64(0x13uLL);
      v7 = a3;
      sub_10000EC00(__p, "DefaultActivityModel");
      v9 = 0;
      sub_10052C044();
    }
  }

  if ((a2 - 10) < 2)
  {
    goto LABEL_9;
  }

  if (a2 == 12)
  {
    *buf = vdupq_n_s64(0xCuLL);
    v7 = a3;
    sub_10000EC00(__p, "DefaultActivityModel");
    v9 = 0;
    sub_10052C044();
  }
}

void sub_10052BB7C(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  v25 = a11;
  a11 = 0;
  if (v25)
  {
    sub_1018B4B60();
  }

  sub_1018B4B10(&a10);
  v26 = exception_object;
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(v26);
}

void **sub_10052BD24(void **a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v2 != v3)
  {
    v4 = *v2;
    *v2 = 0;
    if (v4)
    {
      (*(*v4 + 32))(v4);
    }

    ++v2;
  }

  v6 = a1;
  sub_10052C310(&v6);
  return a1;
}

double *sub_10052BDAC@<X0>(double *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xBFF0000000000000;
  *(a2 + 24) = 0;
  v3 = *result;
  v4 = *(result + 1);
  if (*result != v4)
  {
    v5 = result;
    v6 = 0;
    do
    {
      (***v3)(*v3, *(v5 + 3));
      result = (*(**v3 + 8))(v9);
      if (*&v9[8] >= v6)
      {
        *a2 = *v9;
        *(a2 + 12) = *&v9[12];
        v6 = *(a2 + 8);
      }

      if ((v6 - 1) <= 1)
      {
        v7 = *(a2 + 16);
        if (v7 >= v5[5])
        {
          v7 = v5[5];
        }

        v5[5] = v7;
      }

      ++v3;
    }

    while (v3 != v4);
    if (v6)
    {
      v8 = v5[5];
    }

    else
    {
      v5[5] = 1.79769313e308;
      v8 = 1.79769313e308;
    }

    if (v8 == 1.79769313e308)
    {
      v8 = *(a2 + 16);
    }

    *(a2 + 16) = v8;
  }

  return result;
}

void sub_10052BEE0(uint64_t **a1, uint64_t a2)
{
  v2 = a2;
  if (qword_1025D43F0 != -1)
  {
    sub_1018B4B94();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "[resume reminders] setting detection mode to %d", v8, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B4CBC(v2);
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    v7 = *v5++;
    *(v7 + 56) = v2;
  }
}

void *sub_10052BFD8(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 32))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t sub_10052C0E0(uint64_t a1)
{
  *a1 = off_10245C4F0;
  sub_10052C514((a1 + 72));
  *a1 = &off_10245C4B8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_10052C150(uint64_t a1)
{
  *a1 = off_10245C4F0;
  sub_10052C514((a1 + 72));
  *a1 = &off_10245C4B8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  operator delete();
}

uint64_t sub_10052C1E0(uint64_t a1)
{
  *a1 = off_10245C560;
  sub_10052C5C0((a1 + 72));
  *a1 = &off_10245C4B8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_10052C250(uint64_t a1)
{
  *a1 = off_10245C560;
  sub_10052C5C0((a1 + 72));
  *a1 = &off_10245C4B8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  operator delete();
}

void sub_10052C310(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10052BFD8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

char *sub_10052C364(const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = *a1;
    v9 = v5 - *a1;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      sub_10028C64C();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v19[4] = a1;
    if (v13)
    {
      sub_10045E858(a1, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = (v14 + 1);
    memcpy(0, v8, v9);
    v16 = *a1;
    *a1 = 0;
    a1[1] = v7;
    v17 = a1[2];
    a1[2] = 0;
    v19[2] = v16;
    v19[3] = v17;
    v19[0] = v16;
    v19[1] = v16;
    sub_10052C468(v19);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 8;
  }

  a1[1] = v7;
  return v7 - 8;
}

uint64_t sub_10052C468(uint64_t a1)
{
  sub_10052C4A0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_10052C4A0(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 32))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_10052C514(void *a1)
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
    v5 = 28;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 56;
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

uint64_t sub_10052C5C0(void *a1)
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
    v5 = 32;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 64;
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

__n128 sub_10052C66C(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 56 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10052C734(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x38)) + 72 * (v7 % 0x38);
  *v8 = *a2;
  result = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 32) = v10;
  *(v8 + 48) = v11;
  *(v8 + 16) = result;
  ++a1[5];
  return result;
}

void sub_10052C734(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x38;
  v3 = v1 - 56;
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

void sub_10052C8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10052C908(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x38)
  {
    a2 = 1;
  }

  if (v2 < 0x70)
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
    *(a1 + 32) -= 56;
  }

  return v4 ^ 1u;
}

double sub_10052C968@<D0>(void *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0xBFF0000000000000;
  *(a5 + 8) = 0;
  v10 = a1[4];
  v9 = a1[5];
  *(a5 + 32) = v9 >= a3;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  v11 = v10 + v9;
  v12 = (v10 + v9) / 0x38;
  v13 = a1[1];
  v14 = a1[2];
  v15 = (v13 + 8 * v12);
  if (v14 == v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = *v15 + 72 * (v11 - 56 * v12);
  }

  if (a3 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = a3;
  }

  for (i = v17 - 1; ; --i)
  {
    v19 = v14 == v13 ? 0 : *(v13 + 8 * (a1[4] / 0x38uLL)) + 72 * (a1[4] % 0x38uLL);
    if (v19 == v16)
    {
      break;
    }

    v20 = v16;
    if (v16 == *v15)
    {
      v20 = *(v15 - 1) + 4032;
    }

    v21 = *(a4 + 24);
    if (!v21)
    {
      sub_1000CF05C();
    }

    v22 = *(a5 + 8) + (*(*v21 + 48))(v21, v20 - 72);
    *(a5 + 8) = v22;
    if (a2 <= v22)
    {
      if (v16 == *v15)
      {
        v16 = *(v15 - 1) + 4032;
      }

      result = *(v16 - 72);
      *a5 = result;
      return result;
    }

    if (!i)
    {
      return result;
    }

    if (v16 == *v15)
    {
      v24 = *--v15;
      v16 = v24 + 4032;
    }

    v16 -= 72;
    v13 = a1[1];
    v14 = a1[2];
  }

  return result;
}

uint64_t sub_10052CB04(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10052CC0C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10245C610;
  a2[1] = v2;
  return result;
}

uint64_t sub_10052CC50(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10052CC9C(uint64_t a1)
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

uint64_t *sub_10052CD1C(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_10052CD9C(result, a4);
  }

  return result;
}

void sub_10052CD80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10052CD9C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_10052CDE8(a1, a2);
  }

  sub_10028C64C();
}

void sub_10052CDE8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_10052CEDC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10052CF28(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 8 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10052CFC0(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v7 & 0x3F) << 6);
  result = *a2;
  v10 = *(a2 + 16);
  v11 = *(a2 + 48);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = v11;
  *v8 = result;
  *(v8 + 16) = v10;
  ++a1[5];
  return result;
}

void sub_10052CFC0(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x40;
  v3 = v1 - 64;
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

void sub_10052D148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_10052D194@<D0>(void *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0xBFF0000000000000;
  *(a5 + 8) = 0;
  v10 = a1[4];
  v9 = a1[5];
  *(a5 + 32) = v9 >= a3;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  v11 = v10 + v9;
  v12 = (v10 + v9) >> 6;
  v13 = a1[1];
  v14 = a1[2];
  v15 = (v13 + 8 * v12);
  if (v14 == v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = *v15 + ((v11 & 0x3F) << 6);
  }

  if (a3 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = a3;
  }

  for (i = v17 - 1; ; --i)
  {
    v19 = v14 == v13 ? 0 : *(v13 + ((a1[4] >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((a1[4] & 0x3FLL) << 6);
    if (v19 == v16)
    {
      break;
    }

    v20 = v16;
    if (v16 == *v15)
    {
      v20 = *(v15 - 1) + 4096;
    }

    v21 = *(a4 + 24);
    if (!v21)
    {
      sub_1000CF05C();
    }

    v22 = *(a5 + 8) + (*(*v21 + 48))(v21, v20 - 64);
    *(a5 + 8) = v22;
    if (a2 <= v22)
    {
      if (v16 == *v15)
      {
        v16 = *(v15 - 1) + 4096;
      }

      result = *(v16 - 24);
      *a5 = result;
      return result;
    }

    if (!i)
    {
      return result;
    }

    if (v16 == *v15)
    {
      v24 = *--v15;
      v16 = v24 + 4096;
    }

    v16 -= 64;
    v13 = a1[1];
    v14 = a1[2];
  }

  return result;
}

uint64_t sub_10052D304(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10052D40C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10245C720;
  a2[1] = v2;
  return result;
}

BOOL sub_10052D438(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = (v2[37] - *(a2 + 8)) / (v2[37] - v2[36]);
  return (sub_100161F00(v3, v2[35]) * v2[34]) > 4.4021;
}

uint64_t sub_10052D498(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10052D4E4(uint64_t a1)
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

void sub_10052D6C4(uint64_t a1)
{
  if (qword_1025D4680 != -1)
  {
    sub_1018B510C();
  }

  v2 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGLS,GNSSLocationService,invalidation handler", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B5120();
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  if (v4)
  {

    v3 = *(a1 + 32);
  }

  *(v3 + 40) = 0;
}

void sub_10052D774(uint64_t a1)
{
  if (qword_1025D4680 != -1)
  {
    sub_1018B510C();
  }

  v2 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGLS,GNSSLocationService,interruption handler", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B51FC();
  }

  *(*(a1 + 32) + 9) = 1;
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  if (v4)
  {
    [v4 invalidate];

    v3 = *(a1 + 32);
  }

  *(v3 + 40) = 0;
}

void sub_10052D938(uint64_t a1, _BYTE *a2)
{
  if (qword_1025D4680 != -1)
  {
    sub_1018B510C();
  }

  v4 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67240192;
    v5[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLGLS,reconfigureRavenIfNeeded,completed,success,%{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B5490(a2);
  }

  *(*(a1 + 32) + 9) = 0;
}

void sub_10052DA20(id a1, NSError *a2)
{
  if (a2)
  {
    if (qword_1025D4680 != -1)
    {
      sub_1018B510C();
    }

    v3 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_ERROR))
    {
      v4 = 138543362;
      v5 = [(NSError *)a2 localizedDescription];
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "CLGLS,getSynchronousRemoteObjectProxy error %{public}@", &v4, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B55A0(a2);
    }
  }
}

uint64_t sub_10052DCE0(uint64_t a1)
{
  [*(a1 + 32) reset];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_10052E3EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10052E500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_10245C858;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  sub_10061F1A0();
}

void sub_10052E8D8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v18 = v15[5];
  v15[5] = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18, a2, a3, a4, a5, a6, a7, a8);
  }

  v19 = v15[4];
  v15[4] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19, a2, a3, a4, a5, a6, a7, a8);
  }

  v20 = v15[3];
  v15[3] = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20, a2, a3, a4, a5, a6, a7, a8);
  }

  v21 = v15[2];
  v15[2] = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21, a2, a3, a4, a5, a6, a7, a8);
  }

  v22 = *v16;
  *v16 = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_10052EA18(uint64_t a1, _DWORD *a2, int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018B6070();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018B6084();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006DAB30(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10052EBF4(uint64_t a1, _DWORD *a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(a4[4] "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018B6070();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onManagerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018B6084();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onManagerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006DAE4C(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10052EDD0(uint64_t a1, int *a2, unsigned __int8 *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018B6070();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onCompanionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018B6084();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onCompanionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006DB2A4(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10052EFAC(uint64_t a1, _DWORD *a2, int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018B6070();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onDataProtectionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018B6084();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onDataProtectionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006DB620(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10052F188(uint64_t a1, int *a2, void **a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018B6070();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onTelephonyNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018B6084();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onTelephonyNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006DB688(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

id sub_10052F364(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 56) "vendor")];

  return [v1 syncgetReachability];
}

id sub_10052F3D4(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 56) "vendor")];
  if (byte_102656C97 >= 0)
  {
    v2 = &qword_102656C80;
  }

  else
  {
    v2 = qword_102656C80;
  }

  v3 = [NSString stringWithUTF8String:v2];

  return [v1 resetNotificationConsumedForIdentifier:v3];
}

void *sub_10052F444(void *a1)
{
  *a1 = off_10245C858;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[1];
  a1[1] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

void sub_10052F574(void *a1)
{
  *a1 = off_10245C858;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[1];
  a1[1] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  operator delete();
}

void sub_10052F77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 + 4096;
  if (*(a3 + 6432) == 1)
  {
    v5 = *(a3 + 6456) <= 0 && *(a3 + 6460) <= 0;
    v6 = v5 && *(a3 + 6464) < 1;
    if (!v6 && *(a3 + 818) == 1)
    {
      v7 = (a3 + 5064);
      if (sub_100072814(a3 + 5064))
      {
        v8 = *(a3 + 5112);
        v45 = *(a3 + 5096);
        v46[0] = v8;
        *(v46 + 12) = *(a3 + 5124);
        v9 = *(a3 + 5080);
        v43 = *v7;
        v44 = v9;
        v10 = *(a3 + 5196);
        v40 = *(a3 + 5180);
        v41 = v10;
        v42 = *(a3 + 5212);
        v11 = *(a3 + 5164);
        v38 = *(a3 + 5148);
        v39 = v11;
        v12 = *(a3 + 6440);
        sub_1001EAAC8(a3 + 5064, __src);
        if (qword_1025D4630 != -1)
        {
          sub_1018B61C4();
        }

        v13 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(v3 + 1044);
          *buf = 134349312;
          *&buf[4] = v12;
          *&buf[12] = 2050;
          *&buf[14] = v14;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "@WifiFlow, reissue, time, %{public}.1f, last, %{public}.1f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018B61EC(buf);
          v20 = *(v3 + 1044);
          v47 = 134349312;
          v48 = v12;
          v49 = 2050;
          v50 = v20;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@WifiFlow, reissue, time, %{public}.1f, last, %{public}.1f", &v47, 22);
          v22 = v21;
          sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::NotifyClients::HandleEvent::operator()(const Events::Client::UpdateTimer &, EventInputOutput &) const", "%s\n", v21);
          if (v22 != buf)
          {
            free(v22);
          }
        }

        v52 = v45;
        *v53 = v46[0];
        *&v53[12] = *(v46 + 12);
        *buf = v43;
        *&buf[16] = v44;
        v54 = v12;
        v56 = v39;
        v57 = v40;
        v58 = v41;
        v59 = v42;
        v55 = v38;
        memcpy(v60, __src, sizeof(v60));
        v61 = v30;
        v62 = v31;
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v67 = v36;
        v68[0] = v37[0];
        *(v68 + 9) = *(v37 + 9);
        v63 = v32;
        v64 = v33;
        v65 = v34;
        v66 = v35;
        sub_1001E40AC(a3 + 2088, buf);
        if (v62)
        {
          sub_100008080(v62);
        }

        ++*(*(a3 + 6480) + 244);
        *(a3 + 6512) = sub_1001E8388(a3 + 6500);
        *(v3 + 2424) = v15;
        if (qword_1025D4630 != -1)
        {
          sub_1018B61C4();
        }

        v16 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
        {
          v17 = sub_100189408(*(a3 + 6512));
          v18 = sub_100189408(*(a3 + 6500));
          *buf = 136446466;
          *&buf[4] = v17;
          *&buf[12] = 2082;
          *&buf[14] = v18;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "@WifiFlow, inter-locreq state update per update timer event, staging, %{public}s, current, %{public}s", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018B61EC(buf);
          v23 = qword_1025D4638;
          v24 = sub_100189408(*(a3 + 6512));
          v25 = sub_100189408(*(a3 + 6500));
          v47 = 136446466;
          v48 = v24;
          v49 = 2082;
          v50 = v25;
          LODWORD(v28) = 22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v23, 1, "@WifiFlow, inter-locreq state update per update timer event, staging, %{public}s, current, %{public}s", &v47, v28);
          v27 = v26;
          sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::NotifyClients::HandleEvent::operator()(const Events::Client::UpdateTimer &, EventInputOutput &) const", "%s\n", v26);
          if (v27 != buf)
          {
            free(v27);
          }
        }

        if (v31)
        {
          sub_100008080(v31);
        }
      }

      else
      {
        if (qword_1025D4630 != -1)
        {
          sub_1018B60AC();
        }

        v19 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "@WifiFlow, reissue, invalid location, #CloneMe", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018B60C0();
        }
      }
    }
  }
}

void sub_10052FC70(_Unwind_Exception *a1)
{
  if (STACK[0x228])
  {
    sub_100008080(STACK[0x228]);
  }

  _Unwind_Resume(a1);
}

void sub_10052FCB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 6432) == 1)
  {
    v4 = *(a3 + 6456) <= 0 && *(a3 + 6460) <= 0;
    v5 = v4 && *(a3 + 6464) < 1;
    if (!v5 && *(a3 + 816) == 1)
    {
      sub_10052FE90(a3, 1);
      (*(**a1 + 24))(&v16);
      v8 = v16;
      if (!v19)
      {
        v8 = 0;
      }

      sub_1002D95F8(*(a2 + 48), v8 | (v19 << 8), v14);
      v9 = *(a2 + 24);
      v10 = *(a3 + 6480);
      if (v9)
      {
        if (SHIBYTE(v15) < 0)
        {
          sub_100007244(__p, v14[0], v14[1]);
        }

        else
        {
          *__p = *v14;
          v13 = v15;
        }

        sub_1002F43F8(v10, __p, *(a3 + 1572));
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v21 = v14;
        v11 = sub_1002DDE28((v10 + 176), v14, &unk_101C66300, &v21, &v20);
        ++*(v11 + 14);
      }

      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }

      if (v19 == 1)
      {
        if (v17)
        {
          v18 = v17;
          operator delete(v17);
        }
      }
    }
  }
}

void sub_10052FE38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a26 == 1)
  {
    if (a23)
    {
      operator delete(a23);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10052FE90(uint64_t a1, int a2)
{
  if (*(a1 + 1572) && *(a1 + 1436) > 0.0)
  {
    v3 = *(a1 + 1528);
    v37 = *(a1 + 1512);
    v38 = v3;
    v39[0] = *(a1 + 1544);
    *(v39 + 12) = *(a1 + 1556);
    v4 = *(a1 + 1464);
    v33 = *(a1 + 1448);
    v34 = v4;
    v5 = *(a1 + 1496);
    v35 = *(a1 + 1480);
    v36 = v5;
    v6 = *(a1 + 1432);
    v31 = *(a1 + 1416);
    v32 = v6;
    sub_1001EAAC8(a1 + 1416, __src);
    v49 = v37;
    v50 = v38;
    v51[0] = v39[0];
    *(v51 + 12) = *(v39 + 12);
    v45 = v33;
    v46 = v34;
    v47 = v35;
    v48 = v36;
    *buf = v31;
    *&buf[16] = v32;
    memcpy(v52, __src, sizeof(v52));
    v53 = v23;
    v54 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v59 = v29;
    v60[0] = v30[0];
    *(v60 + 9) = *(v30 + 9);
    v55 = v25;
    v56 = v26;
    v57 = v27;
    v58 = v28;
    sub_1001E40AC(a1 + 2088, buf);
    if (v54)
    {
      sub_100008080(v54);
    }

    ++*(*(a1 + 6480) + 244);
    *(a1 + 6512) = sub_1001E8388(a1 + 6500);
    *(a1 + 6520) = v7;
    if (qword_1025D4630 != -1)
    {
      sub_1018B61C4();
    }

    v8 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      v9 = sub_100189408(*(a1 + 6512));
      v10 = sub_100189408(*(a1 + 6500));
      *buf = 136446466;
      *&buf[4] = v9;
      *&buf[12] = 2082;
      *&buf[14] = v10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "@WifiFlow, inter-locreq state update, staging, %{public}s, current, %{public}s", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B61EC(buf);
      v17 = qword_1025D4638;
      v18 = sub_100189408(*(a1 + 6512));
      v19 = sub_100189408(*(a1 + 6500));
      v40 = 136446466;
      v41 = v18;
      v42 = 2082;
      v43 = v19;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v17, 1, "@WifiFlow, inter-locreq state update, staging, %{public}s, current, %{public}s", &v40, 22);
      v21 = v20;
      sub_100152C7C("Generic", 1, 0, 2, "static void CL::Wifi1::Policies::NotifyClients::HandleEvent::processLocationComputation(EventInputOutput &, BOOL)", "%s\n", v20);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    if (v24)
    {
      sub_100008080(v24);
    }
  }

  else if (a2)
  {
    ++*(*(a1 + 6480) + 248);
    if (*(a1 + 1624) == 1)
    {
      if (*(a1 + 1623) < 0)
      {
        sub_100007244(buf, *(a1 + 1600), *(a1 + 1608));
      }

      else
      {
        *buf = *(a1 + 1600);
        *&buf[16] = *(a1 + 1616);
      }

      v11 = (a1 + 2056);
      if (*(a1 + 2080) == 1)
      {
        if (*(a1 + 2079) < 0)
        {
          operator delete(*v11);
        }

        *v11 = *buf;
        *(a1 + 2072) = *&buf[16];
      }

      else
      {
        *v11 = *buf;
        *(a1 + 2072) = *&buf[16];
        *(a1 + 2080) = 1;
      }

      if ((*(a1 + 1624) & 1) == 0)
      {
        sub_100173BA0();
      }

      v12 = *(a1 + 6480);
      *buf = a1 + 1600;
      v13 = sub_1002DDE28((v12 + 264), (a1 + 1600), &unk_101C66300, buf, __src);
      ++*(v13 + 14);
    }

    else
    {
      sub_10000EC00(__src, "NA");
      if ((__src[23] & 0x80000000) != 0)
      {
        sub_100007244(buf, *__src, *&__src[8]);
      }

      else
      {
        *buf = *__src;
        *&buf[16] = *&__src[16];
      }

      v14 = (a1 + 2056);
      if (*(a1 + 2080) == 1)
      {
        if (*(a1 + 2079) < 0)
        {
          operator delete(*v14);
        }

        *v14 = *buf;
        *(a1 + 2072) = *&buf[16];
        buf[23] = 0;
        buf[0] = 0;
      }

      else
      {
        *v14 = *buf;
        *(a1 + 2072) = *&buf[16];
        memset(buf, 0, 24);
        *(a1 + 2080) = 1;
      }

      if ((__src[23] & 0x80000000) != 0)
      {
        operator delete(*__src);
      }

      if (qword_1025D4630 != -1)
      {
        sub_1018B61C4();
      }

      v15 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "WifiCalc, did we forget to set failureReason?", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B6230();
      }
    }
  }

  result = sub_100071CA0();
  if (result)
  {
    sub_10004FD18();
    *__src = sub_100187E48((a1 + 6096));
    sub_10004345C(buf, "wifiLocType", __src);
    sub_1001E8460(buf, "apsInSolution", (a1 + 1572));
    sub_100116D68(buf, "hAcc", (a1 + 1436));
    sub_100071CAC(buf, "locationd");
    return sub_100005DA4();
  }

  return result;
}

void sub_1005303F8(_Unwind_Exception *a1)
{
  if (STACK[0x228])
  {
    sub_100008080(STACK[0x228]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100530468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 6432) == 1 && (*(a3 + 6456) > 0 || *(a3 + 6460) > 0 || *(a3 + 6464) >= 1))
  {
    return sub_10052FE90(a3, 1);
  }

  return result;
}

void sub_1005304A4(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (*(a3 + 6432) == 1 && *(a3 + 6468) >= 1)
  {
    __src = 0;
    v55 = 0uLL;
    v6 = *(a3 + 1640);
    v7 = *(a3 + 1648);
    if (v6 != v7)
    {
      v8 = 0;
      v9 = 0x6F96F96F96F96F97;
      do
      {
        a4.n128_u64[0] = *(v6 + 20);
        if (a4.n128_f64[0] >= 0.0)
        {
          if (v8 >= *(&v55 + 1))
          {
            v16 = __src;
            v17 = v8 - __src;
            v18 = ((v8 - __src) >> 2) * v9;
            v19 = v18 + 1;
            if ((v18 + 1) > 0x1A41A41A41A41A4)
            {
              sub_10028C64C();
            }

            v20 = v9;
            v21 = ((*(&v55 + 1) - __src) >> 2) * v9;
            if (2 * v21 > v19)
            {
              v19 = 2 * v21;
            }

            if (v21 >= 0xD20D20D20D20D2)
            {
              v22 = 0x1A41A41A41A41A4;
            }

            else
            {
              v22 = v19;
            }

            if (v22)
            {
              sub_100238948(&__src, v22);
            }

            v23 = 156 * v18;
            v24 = *(v6 + 16);
            *v23 = *v6;
            *(v23 + 16) = v24;
            v25 = *(v6 + 32);
            v26 = *(v6 + 48);
            v27 = *(v6 + 80);
            *(v23 + 64) = *(v6 + 64);
            *(v23 + 80) = v27;
            *(v23 + 32) = v25;
            *(v23 + 48) = v26;
            v28 = *(v6 + 96);
            v29 = *(v6 + 112);
            v30 = *(v6 + 128);
            *(v23 + 140) = *(v6 + 140);
            *(v23 + 112) = v29;
            *(v23 + 128) = v30;
            *(v23 + 96) = v28;
            v8 = 156 * v18 + 156;
            v31 = (v23 - v17);
            memcpy((v23 - v17), v16, v17);
            v32 = __src;
            __src = v31;
            v55 = v8;
            if (v32)
            {
              operator delete(v32);
            }

            v9 = v20;
          }

          else
          {
            v10 = *(v6 + 16);
            *v8 = *v6;
            *(v8 + 16) = v10;
            v11 = *(v6 + 32);
            v12 = *(v6 + 48);
            v13 = *(v6 + 80);
            *(v8 + 64) = *(v6 + 64);
            *(v8 + 80) = v13;
            *(v8 + 32) = v11;
            *(v8 + 48) = v12;
            a4 = *(v6 + 96);
            v14 = *(v6 + 112);
            v15 = *(v6 + 128);
            *(v8 + 140) = *(v6 + 140);
            *(v8 + 112) = v14;
            *(v8 + 128) = v15;
            *(v8 + 96) = a4;
            v8 += 156;
          }

          *&v55 = v8;
        }

        v6 += 184;
      }

      while (v6 != v7);
      v33 = __src;
      if (__src != v8)
      {
        sub_1005317F8(__src, v8, 126 - 2 * __clz(((v8 - __src) >> 2) * v9), 1, a4);
        v34 = __src;
        if (__src != v55)
        {
          v35 = *(__src + 76);
          do
          {
            v36 = v35;
            if (!sub_100020608(*(v34 + 4), *(v34 + 12)))
            {
              if (qword_1025D4630 != -1)
              {
                sub_1018B61C4();
              }

              v37 = qword_1025D4638;
              if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_FAULT))
              {
                v38 = LocationLogEncryptionDataSize();
                v39 = LocationLogEncryptionEncryptData();
                *buf = 68289538;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                *&buf[18] = 1040;
                *&buf[20] = v38;
                *&buf[24] = 2098;
                *&buf[26] = v39;
                _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid batched location, location:%{public, location:Encrypted_CLClientLocation}.*P}", buf, 0x22u);
                if (qword_1025D4630 != -1)
                {
                  sub_1018B61C4();
                }
              }

              v40 = qword_1025D4638;
              if (os_signpost_enabled(qword_1025D4638))
              {
                v41 = LocationLogEncryptionDataSize();
                v42 = LocationLogEncryptionEncryptData();
                *buf = 68289538;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                *&buf[18] = 1040;
                *&buf[20] = v41;
                *&buf[24] = 2098;
                *&buf[26] = v42;
                _os_signpost_emit_with_name_impl(dword_100000000, v40, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid batched location", "{msg%{public}.0s:Invalid batched location, location:%{public, location:Encrypted_CLClientLocation}.*P}", buf, 0x22u);
              }
            }

            v35 = *(v34 + 76);
            if (v36 > v35)
            {
              if (qword_1025D4630 != -1)
              {
                sub_1018B61C4();
              }

              v43 = qword_1025D4638;
              if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_FAULT))
              {
                *buf = 68289539;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                *&buf[18] = 2049;
                *&buf[20] = v36;
                *&buf[28] = 2049;
                *&buf[30] = v35;
                _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Batched locations are supposed to be ordered from oldest to more recent, t0:%{private}f, t1:%{private}f}", buf, 0x26u);
                if (qword_1025D4630 != -1)
                {
                  sub_1018B61C4();
                }
              }

              v44 = qword_1025D4638;
              if (os_signpost_enabled(qword_1025D4638))
              {
                *buf = 68289539;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                *&buf[18] = 2049;
                *&buf[20] = v36;
                *&buf[28] = 2049;
                *&buf[30] = v35;
                _os_signpost_emit_with_name_impl(dword_100000000, v44, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Batched locations are supposed to be ordered from oldest to more recent", "{msg%{public}.0s:Batched locations are supposed to be ordered from oldest to more recent, t0:%{private}f, t1:%{private}f}", buf, 0x26u);
              }
            }

            v34 += 156;
          }

          while (v34 != v55);
        }

        if (qword_1025D4630 != -1)
        {
          sub_1018B61C4();
        }

        v45 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
        {
          v46 = 0xD37A6F4DE9BD37A7 * ((*(a3 + 1648) - *(a3 + 1640)) >> 3);
          *buf = 134349312;
          *&buf[4] = 0x6F96F96F96F96F97 * ((v55 - __src) >> 2);
          *&buf[12] = 2050;
          *&buf[14] = v46;
          _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEBUG, "WsbCalc, filter, live, %{public}lu, groups, %{public}lu", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018B61EC(buf);
          v51 = 0xD37A6F4DE9BD37A7 * ((*(a3 + 1648) - *(a3 + 1640)) >> 3);
          v56 = 134349312;
          v57 = 0x6F96F96F96F96F97 * ((v55 - __src) >> 2);
          v58 = 2050;
          v59 = v51;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "WsbCalc, filter, live, %{public}lu, groups, %{public}lu", &v56, 22);
          v53 = v52;
          sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::NotifyClients::HandleEvent::operator()(const Events::Wifi::Wsb &, EventInputOutput &) const", "%s\n", v52);
          if (v53 != buf)
          {
            free(v53);
          }
        }

        v47 = *(a3 + 6480);
        v48 = __src;
        v49 = *(v47 + 252);
        *&buf[8] = v55;
        v50.i32[0] = 1;
        v50.i32[1] = -1762037865 * ((v55 - __src) >> 2);
        *(v47 + 252) = vadd_s32(v49, v50);
        v55 = 0uLL;
        __src = 0;
        *buf = v48;
        sub_100530BE8(a3 + 2904, buf);
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        v33 = __src;
      }

      if (v33)
      {
        *&v55 = v33;
        operator delete(v33);
      }
    }
  }
}

void sub_100530B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100530BE8(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_10007057C(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a2 = 0uLL;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_100530C4C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[205];
  v4 = a3[206];
  if (v3 != v4)
  {
    v6 = 0;
    __src = 0;
    v40 = 0uLL;
    do
    {
      if (*(v3 + 20) >= 0.0)
      {
        if (v6 >= *(&v40 + 1))
        {
          v14 = __src;
          v15 = v6 - __src;
          v16 = 0x6F96F96F96F96F97 * ((v6 - __src) >> 2);
          v17 = v16 + 1;
          if ((v16 + 1) > 0x1A41A41A41A41A4)
          {
            sub_10028C64C();
          }

          if (0xDF2DF2DF2DF2DF2ELL * ((*(&v40 + 1) - __src) >> 2) > v17)
          {
            v17 = 0xDF2DF2DF2DF2DF2ELL * ((*(&v40 + 1) - __src) >> 2);
          }

          if ((0x6F96F96F96F96F97 * ((*(&v40 + 1) - __src) >> 2)) >= 0xD20D20D20D20D2)
          {
            v18 = 0x1A41A41A41A41A4;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            sub_100238948(&__src, v18);
          }

          v19 = (4 * ((v6 - __src) >> 2));
          v20 = *(v3 + 16);
          *v19 = *v3;
          v19[1] = v20;
          v21 = *(v3 + 32);
          v22 = *(v3 + 48);
          v23 = *(v3 + 80);
          v19[4] = *(v3 + 64);
          v19[5] = v23;
          v19[2] = v21;
          v19[3] = v22;
          v24 = *(v3 + 96);
          v25 = *(v3 + 112);
          v26 = *(v3 + 128);
          *(v19 + 140) = *(v3 + 140);
          v19[7] = v25;
          v19[8] = v26;
          v19[6] = v24;
          v6 = (156 * v16 + 156);
          v27 = (156 * v16 - v15);
          memcpy(v19 - v15, v14, v15);
          v28 = __src;
          __src = v27;
          v40 = v6;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          v7 = *(v3 + 16);
          *v6 = *v3;
          v6[1] = v7;
          v8 = *(v3 + 32);
          v9 = *(v3 + 48);
          v10 = *(v3 + 80);
          v6[4] = *(v3 + 64);
          v6[5] = v10;
          v6[2] = v8;
          v6[3] = v9;
          v11 = *(v3 + 96);
          v12 = *(v3 + 112);
          v13 = *(v3 + 128);
          *(v6 + 140) = *(v3 + 140);
          v6[7] = v12;
          v6[8] = v13;
          v6[6] = v11;
          v6 = (v6 + 156);
        }

        *&v40 = v6;
      }

      v3 += 184;
    }

    while (v3 != v4);
    v29 = __src;
    if (__src != v6)
    {
      if (qword_1025D4630 != -1)
      {
        sub_1018B61C4();
      }

      v30 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        v31 = 0xD37A6F4DE9BD37A7 * ((a3[206] - a3[205]) >> 3);
        *buf = 134349312;
        *&buf[4] = 0x6F96F96F96F96F97 * ((v40 - __src) >> 2);
        *&buf[12] = 2050;
        *&buf[14] = v31;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "WsbCalc, filter, reproc, %{public}lu, groups, %{public}lu", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B61EC(buf);
        v36 = 0xD37A6F4DE9BD37A7 * ((a3[206] - a3[205]) >> 3);
        v41 = 134349312;
        v42 = 0x6F96F96F96F96F97 * ((v40 - __src) >> 2);
        v43 = 2050;
        v44 = v36;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "WsbCalc, filter, reproc, %{public}lu, groups, %{public}lu", &v41, 22);
        v38 = v37;
        sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::NotifyClients::HandleEvent::operator()(const Events::ReprocessWifiScanBuffer &, EventInputOutput &) const", "%s\n", v37);
        if (v38 != buf)
        {
          free(v38);
        }
      }

      v32 = a3[810];
      v33 = __src;
      v34 = *(v32 + 252);
      *&buf[8] = v40;
      v35.i32[0] = 1;
      v35.i32[1] = -1762037865 * ((v40 - __src) >> 2);
      *(v32 + 252) = vadd_s32(v34, v35);
      v40 = 0uLL;
      __src = 0;
      *buf = v33;
      sub_100530BE8((a3 + 363), buf);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      v29 = __src;
    }

    if (v29)
    {
      *&v40 = v29;
      operator delete(v29);
    }
  }
}

void sub_100531044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10053108C(uint64_t a1, int *a2, uint64_t a3)
{
  if (qword_1025D4630 != -1)
  {
    sub_1018B60AC();
  }

  v5 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    *buf = 67240192;
    *&buf[4] = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@WifiFlow, alsreply, aps, error, tag, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B6334(a2);
  }

  if ((*(a3 + 6456) > 0 || *(a3 + 6460) > 0 || *(a3 + 6464) >= 1) && sub_1000B9750((a3 + 6096)))
  {
    sub_10000EC00(__p, "alsError");
    if (SHIBYTE(v11) < 0)
    {
      sub_100007244(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      v13 = v11;
    }

    v7 = (a3 + 2056);
    if (*(a3 + 2080) == 1)
    {
      if (*(a3 + 2079) < 0)
      {
        operator delete(*v7);
      }

      *v7 = *buf;
      *(a3 + 2072) = v13;
      HIBYTE(v13) = 0;
      buf[0] = 0;
    }

    else
    {
      *v7 = *buf;
      *(a3 + 2072) = v13;
      v13 = 0;
      memset(buf, 0, sizeof(buf));
      *(a3 + 2080) = 1;
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    v8 = *(a3 + 6480);
    ++*(v8 + 248);
    sub_10000EC00(buf, "alsError");
    __p[0] = buf;
    v9 = sub_10018576C((v8 + 264), buf, &unk_101C66300, __p);
    ++*(v9 + 56);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_1005312A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005312E0(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*(a3 + 6456) >= 1 && *a2 != 0)
  {
    sub_10000EC00(__p, "wifiPoweredOff");
    if (SHIBYTE(v9) < 0)
    {
      sub_100007244(__dst, __p[0], __p[1]);
    }

    else
    {
      *__dst = *__p;
      v11 = v9;
    }

    v5 = (a3 + 2056);
    if (*(a3 + 2080) == 1)
    {
      if (*(a3 + 2079) < 0)
      {
        operator delete(*v5);
      }

      *v5 = *__dst;
      *(a3 + 2072) = v11;
      HIBYTE(v11) = 0;
      LOBYTE(__dst[0]) = 0;
    }

    else
    {
      *v5 = *__dst;
      *(a3 + 2072) = v11;
      __dst[1] = 0;
      v11 = 0;
      __dst[0] = 0;
      *(a3 + 2080) = 1;
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }

    v6 = *(a3 + 6480);
    ++*(v6 + 248);
    sub_10000EC00(__dst, "wifiPoweredOff");
    __p[0] = __dst;
    v7 = sub_10018576C((v6 + 264), __dst, &unk_101C66300, __p);
    ++*(v7 + 56);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_100531420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100531450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 6435) & 1) == 0)
  {
    sub_10000EC00(__p, "wifiPoweredOff");
    if (SHIBYTE(v8) < 0)
    {
      sub_100007244(__dst, __p[0], __p[1]);
    }

    else
    {
      *__dst = *__p;
      v10 = v8;
    }

    v4 = (a3 + 2056);
    if (*(a3 + 2080) == 1)
    {
      if (*(a3 + 2079) < 0)
      {
        operator delete(*v4);
      }

      *v4 = *__dst;
      *(a3 + 2072) = v10;
      HIBYTE(v10) = 0;
      LOBYTE(__dst[0]) = 0;
    }

    else
    {
      *v4 = *__dst;
      *(a3 + 2072) = v10;
      __dst[1] = 0;
      v10 = 0;
      __dst[0] = 0;
      *(a3 + 2080) = 1;
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }

    v5 = *(a3 + 6480);
    ++*(v5 + 248);
    sub_10000EC00(__dst, "wifiPoweredOff");
    __p[0] = __dst;
    v6 = sub_10018576C((v5 + 264), __dst, &unk_101C66300, __p);
    ++*(v6 + 56);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_100531588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005315B8(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v5 = *a2;
  v4 = (a2 + 8);
  switch(v5 ^ (v5 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x1A:
    case 0x1C:
      v6 = a1[1];
      if (!v6)
      {
        return;
      }

      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_36;
    case 4:
      v7 = a1[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      sub_1005312E0(a1, v4, a2);
      goto LABEL_34;
    case 7:
      v11 = 0;
      v8 = *a1;
      v9 = a1[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v11 = v9;
      }

      v10 = v8;
      sub_10052FCB8(&v10, v4, a2);
      if (v9)
      {
        sub_100008080(v9);
      }

      return;
    case 8:
      v7 = a1[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      sub_1005304A4(a1, v4, a2, a3);
      goto LABEL_34;
    case 0x13:
      v7 = a1[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      sub_10053108C(a1, v4, a2);
      goto LABEL_34;
    case 0x14:
      v7 = a1[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      sub_100530468(a1, v4, a2);
      goto LABEL_34;
    case 0x18:
      v7 = a1[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      if (*(a2 + 6432) == 1 && *(a2 + 817) == 1)
      {
        sub_10052FE90(a2, *(a2 + 1665));
      }

      goto LABEL_34;
    case 0x19:
      v7 = a1[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      sub_100531450(a1, v4, a2);
      goto LABEL_34;
    case 0x1B:
      v7 = a1[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      sub_10052F77C(a1, v4, a2);
      goto LABEL_34;
    case 0x1D:
      v7 = a1[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      sub_100530C4C(a1, v4, a2);
LABEL_34:
      if (!v7)
      {
        return;
      }

      v6 = v7;
LABEL_36:

      sub_100008080(v6);
      return;
    default:
      sub_10053508C();
  }
}

void sub_10053178C(_Unwind_Exception *exception_object)
{
  v2 = v1;
  if (v2)
  {
    sub_100008080(v2);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1005317F8(double *a1, double *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v8 = (a2 - 156);
  v9 = a2 - 39;
  v10 = (a2 - 468);
  v357 = a2 - 49;
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = a2 - v11;
    v13 = 0x6F96F96F96F96F97 * ((a2 - v11) >> 2);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result.n128_f64[0] = *(a2 - 10);
        if (result.n128_f64[0] < *(v11 + 76))
        {
          v424 = *v11;
          v456 = *(v11 + 1);
          v552 = *(v11 + 4);
          v581 = *(v11 + 5);
          v488 = *(v11 + 2);
          v520 = *(v11 + 3);
          *&v668[12] = *(v11 + 140);
          v639 = *(v11 + 7);
          *v668 = *(v11 + 8);
          v610 = *(v11 + 12);
          v250 = *(a2 - 140);
          *v11 = *(a2 - 156);
          *(v11 + 1) = v250;
          v251 = *(a2 - 124);
          v252 = *(a2 - 108);
          v253 = *(a2 - 76);
          *(v11 + 4) = *(a2 - 92);
          *(v11 + 5) = v253;
          *(v11 + 2) = v251;
          *(v11 + 3) = v252;
          v254 = *(a2 - 60);
          v255 = *(a2 - 44);
          v256 = *(a2 - 28);
          *(v11 + 140) = *(a2 - 1);
          *(v11 + 7) = v255;
          *(v11 + 8) = v256;
          *(v11 + 6) = v254;
          *(a2 - 140) = v456;
          *(a2 - 156) = v424;
          *(a2 - 76) = v581;
          *(a2 - 92) = v552;
          *(a2 - 108) = v520;
          *(a2 - 124) = v488;
          result = v610;
          *(a2 - 1) = *&v668[12];
          *(a2 - 28) = *v668;
          *(a2 - 44) = v639;
          *(a2 - 60) = v610;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      result.n128_f64[0] = sub_100533730(v11, (v11 + 156), (v11 + 39), (a2 - 156));
      return result;
    }

    if (v13 == 5)
    {

      result.n128_f64[0] = sub_100533C0C(v11, (v11 + 156), (v11 + 39), (v11 + 468), (a2 - 156));
      return result;
    }

LABEL_9:
    if (v12 <= 3743)
    {
      v266 = (v11 + 156);
      v268 = v11 == a2 || v266 == a2;
      if (a4)
      {
        if (!v268)
        {
          v269 = 0;
          v270 = v11;
          do
          {
            v271 = v266;
            result.n128_f64[0] = v270[29];
            if (result.n128_f64[0] < *(v270 + 76))
            {
              v426 = *v266;
              *&v522[12] = *(v266 + 60);
              v490 = *(v266 + 2);
              *v522 = *(v266 + 3);
              v458 = *(v266 + 1);
              v388 = *(v270 + 17);
              v394 = *(v270 + 18);
              v398 = *(v270 + 38);
              v376 = *(v270 + 15);
              v382 = *(v270 + 16);
              v272 = v269;
              while (1)
              {
                v273 = v11 + v272;
                v274 = (v11 + v272 + 156);
                v275 = *(v11 + v272 + 112);
                *(v273 + 252) = *(v11 + v272 + 96);
                v276 = *(v11 + v272 + 128);
                v274[7] = v275;
                v274[8] = v276;
                *(v274 + 140) = *(v11 + v272 + 140);
                v277 = *(v11 + v272 + 48);
                *(v273 + 188) = *(v11 + v272 + 32);
                *(v273 + 204) = v277;
                v278 = *(v11 + v272 + 80);
                *(v273 + 220) = *(v11 + v272 + 64);
                *(v273 + 236) = v278;
                v279 = *(v11 + v272 + 16);
                *(v273 + 156) = *(v11 + v272);
                *(v273 + 172) = v279;
                if (!v272)
                {
                  break;
                }

                v272 -= 156;
                if (result.n128_f64[0] >= *(v273 - 10))
                {
                  v280 = v11 + v272 + 156;
                  goto LABEL_129;
                }
              }

              v280 = v11;
LABEL_129:
              *v280 = v426;
              *(v280 + 60) = *&v522[12];
              *(v280 + 32) = v490;
              *(v280 + 48) = *v522;
              *(v280 + 16) = v458;
              *(v280 + 76) = result.n128_u64[0];
              *(v280 + 100) = v382;
              result.n128_u64[0] = v388;
              *(v280 + 116) = v388;
              *(v280 + 132) = v394;
              *(v280 + 148) = v398;
              *(v280 + 84) = v376;
            }

            v266 = (v271 + 156);
            v269 += 156;
            v270 = v271;
          }

          while ((v271 + 156) != a2);
        }
      }

      else if (!v268)
      {
        do
        {
          v340 = v266;
          result.n128_f64[0] = a1[29];
          if (result.n128_f64[0] < *(a1 + 76))
          {
            v431 = *v266;
            *&v527[12] = *(v266 + 60);
            v495 = *(v266 + 2);
            *v527 = *(v266 + 3);
            v463 = *(v266 + 1);
            v391 = *(a1 + 17);
            v397 = *(a1 + 18);
            v400 = *(a1 + 38);
            v379 = *(a1 + 15);
            v385 = *(a1 + 32);
            v341 = v266;
            do
            {
              v342 = *(v341 - 44);
              *(v341 + 6) = *(v341 - 60);
              *(v341 + 7) = v342;
              *(v341 + 8) = *(v341 - 28);
              *(v341 + 140) = *(v341 - 1);
              v343 = *(v341 - 108);
              *(v341 + 2) = *(v341 - 124);
              *(v341 + 3) = v343;
              v344 = *(v341 - 76);
              *(v341 + 4) = *(v341 - 92);
              *(v341 + 5) = v344;
              v345 = *(v341 - 140);
              *v341 = *(v341 - 156);
              *(v341 + 1) = v345;
              v346 = *(v341 - 236);
              v341 = (v341 - 156);
            }

            while (result.n128_f64[0] < v346);
            *v341 = v431;
            *(v341 + 2) = v495;
            *(v341 + 3) = *v527;
            *(v341 + 1) = v463;
            *(v341 + 60) = *&v527[12];
            *(v341 + 76) = result.n128_f64[0];
            *(v341 + 84) = v379;
            result = v385;
            *(v341 + 148) = v400;
            *(v341 + 132) = v397;
            *(v341 + 116) = v391;
            *(v341 + 100) = v385;
          }

          v266 = (v266 + 156);
          a1 = v340;
        }

        while ((v340 + 156) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v281 = (v13 - 2) >> 1;
        v282 = v281;
        do
        {
          v283 = v282;
          if (v281 >= v282)
          {
            v284 = (2 * v282) | 1;
            v285 = v11 + 156 * v284;
            if (2 * v282 + 2 < v13 && *(v285 + 76) < *(v285 + 29))
            {
              v285 += 156;
              v284 = 2 * v282 + 2;
            }

            v286 = v11 + 156 * v282;
            v287 = *(v286 + 76);
            if (*(v285 + 76) >= v287)
            {
              v427 = *v286;
              *&v523[12] = *(v286 + 60);
              v491 = *(v286 + 2);
              *v523 = *(v286 + 3);
              v459 = *(v286 + 1);
              v399 = *(v286 + 148);
              v389 = *(v286 + 116);
              v395 = *(v286 + 132);
              v383 = *(v286 + 100);
              v377 = *(v286 + 84);
              do
              {
                v288 = v286;
                v286 = v285;
                v289 = *(v285 + 1);
                *v288 = *v285;
                v288[1] = v289;
                v290 = *(v285 + 2);
                v291 = *(v285 + 3);
                v292 = *(v285 + 5);
                v288[4] = *(v285 + 4);
                v288[5] = v292;
                v288[2] = v290;
                v288[3] = v291;
                v293 = *(v285 + 6);
                v294 = *(v285 + 7);
                v295 = *(v285 + 8);
                *(v288 + 140) = *(v285 + 140);
                v288[7] = v294;
                v288[8] = v295;
                v288[6] = v293;
                if (v281 < v284)
                {
                  break;
                }

                v296 = 2 * v284;
                v284 = (2 * v284) | 1;
                v285 = v11 + 156 * v284;
                v297 = v296 + 2;
                if (v297 < v13 && *(v285 + 76) < *(v285 + 29))
                {
                  v285 += 156;
                  v284 = v297;
                }
              }

              while (*(v285 + 76) >= v287);
              *v286 = v427;
              *(v286 + 60) = *&v523[12];
              *(v286 + 2) = v491;
              *(v286 + 3) = *v523;
              *(v286 + 1) = v459;
              *(v286 + 76) = v287;
              *(v286 + 100) = v383;
              *(v286 + 116) = v389;
              *(v286 + 132) = v395;
              *(v286 + 148) = v399;
              *(v286 + 84) = v377;
            }
          }

          v282 = v283 - 1;
        }

        while (v283);
        v298 = 0x6F96F96F96F96F97 * (v12 >> 2);
        do
        {
          v299 = 0;
          v428 = *v11;
          v460 = *(v11 + 1);
          v554 = *(v11 + 4);
          v583 = *(v11 + 5);
          v492 = *(v11 + 2);
          v524 = *(v11 + 3);
          *&v670[12] = *(v11 + 140);
          v641 = *(v11 + 7);
          *v670 = *(v11 + 8);
          v612 = *(v11 + 12);
          v300 = v11;
          do
          {
            v301 = v300;
            v302 = (v300 + 156 * v299);
            v300 = (v302 + 156);
            v303 = 2 * v299;
            v299 = (2 * v299) | 1;
            v304 = v303 + 2;
            if (v304 < v298 && v302[29] < *(v302 + 388))
            {
              v300 = v302 + 39;
              v299 = v304;
            }

            v305 = *(v300 + 1);
            *v301 = *v300;
            *(v301 + 1) = v305;
            v306 = *(v300 + 2);
            v307 = *(v300 + 3);
            v308 = *(v300 + 5);
            *(v301 + 4) = *(v300 + 4);
            *(v301 + 5) = v308;
            *(v301 + 2) = v306;
            *(v301 + 3) = v307;
            v309 = *(v300 + 6);
            v310 = *(v300 + 7);
            v311 = *(v300 + 8);
            *(v301 + 140) = *(v300 + 140);
            *(v301 + 7) = v310;
            *(v301 + 8) = v311;
            *(v301 + 6) = v309;
          }

          while (v299 <= ((v298 - 2) >> 1));
          a2 = (a2 - 156);
          if (v300 == a2)
          {
            *v300 = v428;
            *(v300 + 1) = v460;
            *(v300 + 4) = v554;
            *(v300 + 5) = v583;
            *(v300 + 2) = v492;
            *(v300 + 3) = v524;
            result = v612;
            *(v300 + 140) = *&v670[12];
            *(v300 + 7) = v641;
            *(v300 + 8) = *v670;
            *(v300 + 6) = v612;
          }

          else
          {
            v312 = *(a2 + 1);
            *v300 = *a2;
            *(v300 + 1) = v312;
            v313 = *(a2 + 2);
            v314 = *(a2 + 3);
            v315 = *(a2 + 5);
            *(v300 + 4) = *(a2 + 4);
            *(v300 + 5) = v315;
            *(v300 + 2) = v313;
            *(v300 + 3) = v314;
            v316 = *(a2 + 6);
            v317 = *(a2 + 7);
            v318 = *(a2 + 8);
            *(v300 + 140) = *(a2 + 140);
            *(v300 + 7) = v317;
            *(v300 + 8) = v318;
            *(v300 + 6) = v316;
            *a2 = v428;
            *(a2 + 1) = v460;
            *(a2 + 4) = v554;
            *(a2 + 5) = v583;
            *(a2 + 2) = v492;
            *(a2 + 3) = v524;
            result = v612;
            *(a2 + 140) = *&v670[12];
            *(a2 + 7) = v641;
            *(a2 + 8) = *v670;
            *(a2 + 6) = v612;
            v319 = v300 - v11 + 156;
            if (v319 >= 157)
            {
              v320 = (0x6F96F96F96F96F97 * (v319 >> 2) - 2) >> 1;
              v321 = v11 + 156 * v320;
              result.n128_f64[0] = *(v300 + 76);
              if (*(v321 + 76) < result.n128_f64[0])
              {
                v378 = *v300;
                *&v396[12] = *(v300 + 60);
                v390 = *(v300 + 2);
                *v396 = *(v300 + 3);
                v384 = *(v300 + 1);
                v367 = *(v300 + 116);
                v370 = *(v300 + 132);
                v373 = *(v300 + 148);
                v361 = *(v300 + 84);
                v364 = *(v300 + 100);
                do
                {
                  v322 = v300;
                  v300 = v321;
                  v323 = *(v321 + 1);
                  *v322 = *v321;
                  *(v322 + 1) = v323;
                  v324 = *(v321 + 2);
                  v325 = *(v321 + 3);
                  v326 = *(v321 + 5);
                  *(v322 + 4) = *(v321 + 4);
                  *(v322 + 5) = v326;
                  *(v322 + 2) = v324;
                  *(v322 + 3) = v325;
                  v327 = *(v321 + 6);
                  v328 = *(v321 + 7);
                  v329 = *(v321 + 8);
                  *(v322 + 140) = *(v321 + 140);
                  *(v322 + 7) = v328;
                  *(v322 + 8) = v329;
                  *(v322 + 6) = v327;
                  if (!v320)
                  {
                    break;
                  }

                  v320 = (v320 - 1) >> 1;
                  v321 = v11 + 156 * v320;
                }

                while (*(v321 + 76) < result.n128_f64[0]);
                *v300 = v378;
                *(v300 + 60) = *&v396[12];
                *(v300 + 2) = v390;
                *(v300 + 3) = *v396;
                *(v300 + 1) = v384;
                *(v300 + 76) = result.n128_f64[0];
                *(v300 + 100) = v364;
                result = v367;
                *(v300 + 116) = v367;
                *(v300 + 132) = v370;
                *(v300 + 148) = v373;
                *(v300 + 84) = v361;
              }
            }
          }
        }

        while (v298-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = v11 + 156 * (v13 >> 1);
    v16 = *(a2 - 10);
    if (v12 >= 0x4E01)
    {
      v17 = *(v15 + 76);
      if (v17 >= *(v11 + 76))
      {
        if (v16 < v17)
        {
          v403 = *v15;
          v435 = *(v15 + 1);
          v531 = *(v15 + 4);
          v560 = *(v15 + 5);
          v467 = *(v15 + 2);
          v499 = *(v15 + 3);
          *&v647[12] = *(v15 + 140);
          v618 = *(v15 + 7);
          *v647 = *(v15 + 8);
          v589 = *(v15 + 6);
          v33 = *(a2 - 140);
          *v15 = *v8;
          *(v15 + 1) = v33;
          v34 = *(a2 - 124);
          v35 = *(a2 - 108);
          v36 = *(a2 - 76);
          *(v15 + 4) = *(a2 - 92);
          *(v15 + 5) = v36;
          *(v15 + 2) = v34;
          *(v15 + 3) = v35;
          v37 = *(a2 - 60);
          v38 = *(a2 - 44);
          v39 = *(a2 - 28);
          *(v15 + 140) = *(a2 - 1);
          *(v15 + 7) = v38;
          *(v15 + 8) = v39;
          *(v15 + 6) = v37;
          *v8 = v403;
          *(a2 - 140) = v435;
          *(a2 - 92) = v531;
          *(a2 - 76) = v560;
          *(a2 - 124) = v467;
          *(a2 - 108) = v499;
          *(a2 - 1) = *&v647[12];
          *(a2 - 44) = v618;
          *(a2 - 28) = *v647;
          *(a2 - 60) = v589;
          if (*(v15 + 76) < *(v11 + 76))
          {
            v404 = *v11;
            v436 = *(v11 + 1);
            v532 = *(v11 + 4);
            v561 = *(v11 + 5);
            v468 = *(v11 + 2);
            v500 = *(v11 + 3);
            *&v648[12] = *(v11 + 140);
            v619 = *(v11 + 7);
            *v648 = *(v11 + 8);
            v590 = *(v11 + 6);
            v40 = *(v15 + 1);
            *v11 = *v15;
            *(v11 + 1) = v40;
            v41 = *(v15 + 2);
            v42 = *(v15 + 3);
            v43 = *(v15 + 5);
            *(v11 + 4) = *(v15 + 4);
            *(v11 + 5) = v43;
            *(v11 + 2) = v41;
            *(v11 + 3) = v42;
            v44 = *(v15 + 6);
            v45 = *(v15 + 7);
            v46 = *(v15 + 8);
            *(v11 + 140) = *(v15 + 140);
            *(v11 + 7) = v45;
            *(v11 + 8) = v46;
            *(v11 + 6) = v44;
            *v15 = v404;
            *(v15 + 1) = v436;
            *(v15 + 4) = v532;
            *(v15 + 5) = v561;
            *(v15 + 2) = v468;
            *(v15 + 3) = v500;
            *(v15 + 140) = *&v648[12];
            *(v15 + 7) = v619;
            *(v15 + 8) = *v648;
            *(v15 + 6) = v590;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v401 = *v11;
          v433 = *(v11 + 1);
          v529 = *(v11 + 4);
          v558 = *(v11 + 5);
          v465 = *(v11 + 2);
          v497 = *(v11 + 3);
          *&v645[12] = *(v11 + 140);
          v616 = *(v11 + 7);
          *v645 = *(v11 + 8);
          v587 = *(v11 + 6);
          v18 = *(a2 - 140);
          *v11 = *v8;
          *(v11 + 1) = v18;
          v19 = *(a2 - 124);
          v20 = *(a2 - 108);
          v21 = *(a2 - 76);
          *(v11 + 4) = *(a2 - 92);
          *(v11 + 5) = v21;
          *(v11 + 2) = v19;
          *(v11 + 3) = v20;
          v22 = *(a2 - 60);
          v23 = *(a2 - 44);
          v24 = *(a2 - 28);
          *(v11 + 140) = *(a2 - 1);
          *(v11 + 7) = v23;
          *(v11 + 8) = v24;
          *(v11 + 6) = v22;
          goto LABEL_26;
        }

        v407 = *v11;
        v439 = *(v11 + 1);
        v535 = *(v11 + 4);
        v564 = *(v11 + 5);
        v471 = *(v11 + 2);
        v503 = *(v11 + 3);
        *&v651[12] = *(v11 + 140);
        v622 = *(v11 + 7);
        *v651 = *(v11 + 8);
        v593 = *(v11 + 6);
        v61 = *(v15 + 1);
        *v11 = *v15;
        *(v11 + 1) = v61;
        v62 = *(v15 + 2);
        v63 = *(v15 + 3);
        v64 = *(v15 + 5);
        *(v11 + 4) = *(v15 + 4);
        *(v11 + 5) = v64;
        *(v11 + 2) = v62;
        *(v11 + 3) = v63;
        v65 = *(v15 + 6);
        v66 = *(v15 + 7);
        v67 = *(v15 + 8);
        *(v11 + 140) = *(v15 + 140);
        *(v11 + 7) = v66;
        *(v11 + 8) = v67;
        *(v11 + 6) = v65;
        *v15 = v407;
        *(v15 + 1) = v439;
        *(v15 + 4) = v535;
        *(v15 + 5) = v564;
        *(v15 + 2) = v471;
        *(v15 + 3) = v503;
        *(v15 + 140) = *&v651[12];
        *(v15 + 7) = v622;
        *(v15 + 8) = *v651;
        *(v15 + 6) = v593;
        if (*(a2 - 10) < *(v15 + 76))
        {
          v401 = *v15;
          v433 = *(v15 + 1);
          v529 = *(v15 + 4);
          v558 = *(v15 + 5);
          v465 = *(v15 + 2);
          v497 = *(v15 + 3);
          *&v645[12] = *(v15 + 140);
          v616 = *(v15 + 7);
          *v645 = *(v15 + 8);
          v587 = *(v15 + 6);
          v68 = *(a2 - 140);
          *v15 = *v8;
          *(v15 + 1) = v68;
          v69 = *(a2 - 124);
          v70 = *(a2 - 108);
          v71 = *(a2 - 76);
          *(v15 + 4) = *(a2 - 92);
          *(v15 + 5) = v71;
          *(v15 + 2) = v69;
          *(v15 + 3) = v70;
          v72 = *(a2 - 60);
          v73 = *(a2 - 44);
          v74 = *(a2 - 28);
          *(v15 + 140) = *(a2 - 1);
          *(v15 + 7) = v73;
          *(v15 + 8) = v74;
          *(v15 + 6) = v72;
LABEL_26:
          *v8 = v401;
          *(a2 - 140) = v433;
          *(a2 - 92) = v529;
          *(a2 - 76) = v558;
          *(a2 - 124) = v465;
          *(a2 - 108) = v497;
          *(a2 - 1) = *&v645[12];
          *(a2 - 44) = v616;
          *(a2 - 28) = *v645;
          *(a2 - 60) = v587;
        }
      }

      v75 = (v11 + 156);
      v76 = (v11 + 156 * v14);
      v77 = v76 - 156;
      v78 = *(v76 - 10);
      v79 = *(a2 - 236);
      if (v78 >= v11[29])
      {
        if (v79 < v78)
        {
          v409 = *v77;
          v441 = *(v76 - 140);
          v537 = *(v76 - 92);
          v566 = *(v76 - 76);
          v473 = *(v76 - 124);
          v505 = *(v76 - 108);
          *&v653[12] = *(v76 - 1);
          v624 = *(v76 - 44);
          *v653 = *(v76 - 28);
          v595 = *(v76 - 60);
          v87 = *(a2 - 37);
          *v77 = *v9;
          *(v76 - 140) = v87;
          v88 = *(a2 - 35);
          v89 = *(a2 - 33);
          v90 = *(a2 - 29);
          *(v76 - 92) = *(a2 - 31);
          *(v76 - 76) = v90;
          *(v76 - 124) = v88;
          *(v76 - 108) = v89;
          v91 = *(a2 - 27);
          v92 = *(a2 - 25);
          v93 = *(a2 - 23);
          *(v76 - 1) = *(a2 - 172);
          *(v76 - 44) = v92;
          *(v76 - 28) = v93;
          *(v76 - 60) = v91;
          *v9 = v409;
          *(a2 - 37) = v441;
          *(a2 - 31) = v537;
          *(a2 - 29) = v566;
          *(a2 - 35) = v473;
          *(a2 - 33) = v505;
          *(a2 - 172) = *&v653[12];
          *(a2 - 25) = v624;
          *(a2 - 23) = *v653;
          *(a2 - 27) = v595;
          if (*(v76 - 10) < v11[29])
          {
            v538 = *(v11 + 220);
            v567 = *(v11 + 236);
            v474 = *(v11 + 188);
            v506 = *(v11 + 204);
            *&v654[12] = *(v11 + 37);
            v625 = *(v11 + 268);
            *v654 = *(v11 + 284);
            v596 = *(v11 + 252);
            v410 = *v75;
            v442 = *(v11 + 172);
            v94 = *(v76 - 140);
            *v75 = *v77;
            *(v11 + 172) = v94;
            v95 = *(v76 - 124);
            v96 = *(v76 - 108);
            v97 = *(v76 - 76);
            *(v11 + 220) = *(v76 - 92);
            *(v11 + 236) = v97;
            *(v11 + 188) = v95;
            *(v11 + 204) = v96;
            v98 = *(v76 - 60);
            v99 = *(v76 - 44);
            v100 = *(v76 - 28);
            *(v11 + 37) = *(v76 - 1);
            *(v11 + 268) = v99;
            *(v11 + 284) = v100;
            *(v11 + 252) = v98;
            *v77 = v410;
            *(v76 - 140) = v442;
            *(v76 - 92) = v538;
            *(v76 - 76) = v567;
            *(v76 - 124) = v474;
            *(v76 - 108) = v506;
            *(v76 - 1) = *&v654[12];
            *(v76 - 44) = v625;
            *(v76 - 28) = *v654;
            *(v76 - 60) = v596;
          }
        }
      }

      else
      {
        if (v79 < v78)
        {
          v536 = *(v11 + 220);
          v565 = *(v11 + 236);
          v472 = *(v11 + 188);
          v504 = *(v11 + 204);
          *&v652[12] = *(v11 + 37);
          v623 = *(v11 + 268);
          *v652 = *(v11 + 284);
          v594 = *(v11 + 252);
          v408 = *v75;
          v440 = *(v11 + 172);
          v80 = *(a2 - 37);
          *v75 = *v9;
          *(v11 + 172) = v80;
          v81 = *(a2 - 35);
          v82 = *(a2 - 33);
          v83 = *(a2 - 29);
          *(v11 + 220) = *(a2 - 31);
          *(v11 + 236) = v83;
          *(v11 + 188) = v81;
          *(v11 + 204) = v82;
          v84 = *(a2 - 27);
          v85 = *(a2 - 25);
          v86 = *(a2 - 23);
          *(v11 + 37) = *(a2 - 172);
          *(v11 + 268) = v85;
          *(v11 + 284) = v86;
          *(v11 + 252) = v84;
          goto LABEL_38;
        }

        v540 = *(v11 + 220);
        v569 = *(v11 + 236);
        v476 = *(v11 + 188);
        v508 = *(v11 + 204);
        *&v656[12] = *(v11 + 37);
        v627 = *(v11 + 268);
        *v656 = *(v11 + 284);
        v598 = *(v11 + 252);
        v412 = *v75;
        v444 = *(v11 + 172);
        v115 = *(v76 - 140);
        *v75 = *v77;
        *(v11 + 172) = v115;
        v116 = *(v76 - 124);
        v117 = *(v76 - 108);
        v118 = *(v76 - 76);
        *(v11 + 220) = *(v76 - 92);
        *(v11 + 236) = v118;
        *(v11 + 188) = v116;
        *(v11 + 204) = v117;
        v119 = *(v76 - 60);
        v120 = *(v76 - 44);
        v121 = *(v76 - 28);
        *(v11 + 37) = *(v76 - 1);
        *(v11 + 268) = v120;
        *(v11 + 284) = v121;
        *(v11 + 252) = v119;
        *v77 = v412;
        *(v76 - 140) = v444;
        *(v76 - 92) = v540;
        *(v76 - 76) = v569;
        *(v76 - 124) = v476;
        *(v76 - 108) = v508;
        *(v76 - 1) = *&v656[12];
        *(v76 - 44) = v627;
        *(v76 - 28) = *v656;
        *(v76 - 60) = v598;
        if (*(a2 - 236) < *(v76 - 10))
        {
          v408 = *v77;
          v440 = *(v76 - 140);
          v536 = *(v76 - 92);
          v565 = *(v76 - 76);
          v472 = *(v76 - 124);
          v504 = *(v76 - 108);
          *&v652[12] = *(v76 - 1);
          v623 = *(v76 - 44);
          *v652 = *(v76 - 28);
          v594 = *(v76 - 60);
          v122 = *(a2 - 37);
          *v77 = *v9;
          *(v76 - 140) = v122;
          v123 = *(a2 - 35);
          v124 = *(a2 - 33);
          v125 = *(a2 - 29);
          *(v76 - 92) = *(a2 - 31);
          *(v76 - 76) = v125;
          *(v76 - 124) = v123;
          *(v76 - 108) = v124;
          v126 = *(a2 - 27);
          v127 = *(a2 - 25);
          v128 = *(a2 - 23);
          *(v76 - 1) = *(a2 - 172);
          *(v76 - 44) = v127;
          *(v76 - 28) = v128;
          *(v76 - 60) = v126;
LABEL_38:
          *v9 = v408;
          *(a2 - 37) = v440;
          *(a2 - 31) = v536;
          *(a2 - 29) = v565;
          *(a2 - 35) = v472;
          *(a2 - 33) = v504;
          *(a2 - 172) = *&v652[12];
          *(a2 - 25) = v623;
          *(a2 - 23) = *v652;
          *(a2 - 27) = v594;
        }
      }

      v129 = (v11 + 39);
      v130 = v11 + 156 * v14;
      v131 = (v130 + 156);
      v132 = *(v130 + 29);
      v133 = *v357;
      if (v132 >= *(v11 + 388))
      {
        if (v133 < v132)
        {
          v414 = *v131;
          v446 = *(v130 + 172);
          v542 = *(v130 + 220);
          v571 = *(v130 + 236);
          v478 = *(v130 + 188);
          v510 = *(v130 + 204);
          *&v658[12] = *(v130 + 296);
          v629 = *(v130 + 268);
          *v658 = *(v130 + 284);
          v600 = *(v130 + 252);
          v141 = *(a2 - 452);
          *v131 = *v10;
          *(v130 + 172) = v141;
          v142 = *(a2 - 436);
          v143 = *(a2 - 420);
          v144 = *(a2 - 388);
          *(v130 + 220) = *(a2 - 404);
          *(v130 + 236) = v144;
          *(v130 + 188) = v142;
          *(v130 + 204) = v143;
          v145 = *(a2 - 372);
          v146 = *(a2 - 356);
          v147 = *(a2 - 340);
          *(v130 + 296) = *(a2 - 41);
          *(v130 + 268) = v146;
          *(v130 + 284) = v147;
          *(v130 + 252) = v145;
          *v10 = v414;
          *(a2 - 452) = v446;
          *(a2 - 404) = v542;
          *(a2 - 388) = v571;
          *(a2 - 436) = v478;
          *(a2 - 420) = v510;
          *(a2 - 41) = *&v658[12];
          *(a2 - 356) = v629;
          *(a2 - 340) = *v658;
          *(a2 - 372) = v600;
          if (*(v130 + 29) < *(v11 + 388))
          {
            v543 = *(v11 + 47);
            v572 = *(v11 + 49);
            v479 = *(v11 + 43);
            v511 = *(v11 + 45);
            *&v659[12] = *(v11 + 452);
            v630 = *(v11 + 53);
            *v659 = *(v11 + 55);
            v601 = *(v11 + 51);
            v415 = *v129;
            v447 = *(v11 + 41);
            v148 = *(v130 + 172);
            *v129 = *v131;
            *(v11 + 41) = v148;
            v149 = *(v130 + 188);
            v150 = *(v130 + 204);
            v151 = *(v130 + 236);
            *(v11 + 47) = *(v130 + 220);
            *(v11 + 49) = v151;
            *(v11 + 43) = v149;
            *(v11 + 45) = v150;
            v152 = *(v130 + 252);
            v153 = *(v130 + 268);
            v154 = *(v130 + 284);
            *(v11 + 452) = *(v130 + 296);
            *(v11 + 53) = v153;
            *(v11 + 55) = v154;
            *(v11 + 51) = v152;
            *v131 = v415;
            *(v130 + 172) = v447;
            *(v130 + 220) = v543;
            *(v130 + 236) = v572;
            *(v130 + 188) = v479;
            *(v130 + 204) = v511;
            *(v130 + 296) = *&v659[12];
            *(v130 + 268) = v630;
            *(v130 + 284) = *v659;
            *(v130 + 252) = v601;
          }
        }
      }

      else
      {
        if (v133 < v132)
        {
          v541 = *(v11 + 47);
          v570 = *(v11 + 49);
          v477 = *(v11 + 43);
          v509 = *(v11 + 45);
          *&v657[12] = *(v11 + 452);
          v628 = *(v11 + 53);
          *v657 = *(v11 + 55);
          v599 = *(v11 + 51);
          v413 = *v129;
          v445 = *(v11 + 41);
          v134 = *(a2 - 452);
          *v129 = *v10;
          *(v11 + 41) = v134;
          v135 = *(a2 - 436);
          v136 = *(a2 - 420);
          v137 = *(a2 - 388);
          *(v11 + 47) = *(a2 - 404);
          *(v11 + 49) = v137;
          *(v11 + 43) = v135;
          *(v11 + 45) = v136;
          v138 = *(a2 - 372);
          v139 = *(a2 - 356);
          v140 = *(a2 - 340);
          *(v11 + 452) = *(a2 - 41);
          *(v11 + 53) = v139;
          *(v11 + 55) = v140;
          *(v11 + 51) = v138;
          goto LABEL_47;
        }

        v544 = *(v11 + 47);
        v573 = *(v11 + 49);
        v480 = *(v11 + 43);
        v512 = *(v11 + 45);
        *&v660[12] = *(v11 + 452);
        v631 = *(v11 + 53);
        *v660 = *(v11 + 55);
        v602 = *(v11 + 51);
        v416 = *v129;
        v448 = *(v11 + 41);
        v155 = *(v130 + 172);
        *v129 = *v131;
        *(v11 + 41) = v155;
        v156 = *(v130 + 188);
        v157 = *(v130 + 204);
        v158 = *(v130 + 236);
        *(v11 + 47) = *(v130 + 220);
        *(v11 + 49) = v158;
        *(v11 + 43) = v156;
        *(v11 + 45) = v157;
        v159 = *(v130 + 252);
        v160 = *(v130 + 268);
        v161 = *(v130 + 284);
        *(v11 + 452) = *(v130 + 296);
        *(v11 + 53) = v160;
        *(v11 + 55) = v161;
        *(v11 + 51) = v159;
        *v131 = v416;
        *(v130 + 172) = v448;
        *(v130 + 220) = v544;
        *(v130 + 236) = v573;
        *(v130 + 188) = v480;
        *(v130 + 204) = v512;
        *(v130 + 296) = *&v660[12];
        *(v130 + 268) = v631;
        *(v130 + 284) = *v660;
        *(v130 + 252) = v602;
        if (*v357 < *(v130 + 29))
        {
          v413 = *v131;
          v445 = *(v130 + 172);
          v541 = *(v130 + 220);
          v570 = *(v130 + 236);
          v477 = *(v130 + 188);
          v509 = *(v130 + 204);
          *&v657[12] = *(v130 + 296);
          v628 = *(v130 + 268);
          *v657 = *(v130 + 284);
          v599 = *(v130 + 252);
          v162 = *(a2 - 452);
          *v131 = *v10;
          *(v130 + 172) = v162;
          v163 = *(a2 - 436);
          v164 = *(a2 - 420);
          v165 = *(a2 - 388);
          *(v130 + 220) = *(a2 - 404);
          *(v130 + 236) = v165;
          *(v130 + 188) = v163;
          *(v130 + 204) = v164;
          v166 = *(a2 - 372);
          v167 = *(a2 - 356);
          v168 = *(a2 - 340);
          *(v130 + 296) = *(a2 - 41);
          *(v130 + 268) = v167;
          *(v130 + 284) = v168;
          *(v130 + 252) = v166;
LABEL_47:
          *v10 = v413;
          *(a2 - 452) = v445;
          *(a2 - 404) = v541;
          *(a2 - 388) = v570;
          *(a2 - 436) = v477;
          *(a2 - 420) = v509;
          *(a2 - 41) = *&v657[12];
          *(a2 - 356) = v628;
          *(a2 - 340) = *v657;
          *(a2 - 372) = v599;
        }
      }

      v169 = *(v15 + 76);
      v170 = *(v130 + 29);
      if (v169 >= *(v77 + 76))
      {
        if (v170 < v169)
        {
          v418 = *v15;
          v450 = *(v15 + 1);
          v546 = *(v15 + 4);
          v575 = *(v15 + 5);
          v482 = *(v15 + 2);
          v514 = *(v15 + 3);
          *&v662[12] = *(v15 + 140);
          v633 = *(v15 + 7);
          *v662 = *(v15 + 8);
          v604 = *(v15 + 6);
          v175 = *(v130 + 236);
          *(v15 + 4) = *(v130 + 220);
          *(v15 + 5) = v175;
          v176 = *(v130 + 204);
          *(v15 + 2) = *(v130 + 188);
          *(v15 + 3) = v176;
          *(v15 + 140) = *(v130 + 296);
          v177 = *(v130 + 284);
          *(v15 + 7) = *(v130 + 268);
          *(v15 + 8) = v177;
          *(v15 + 6) = *(v130 + 252);
          v178 = *(v130 + 172);
          *v15 = *v131;
          *(v15 + 1) = v178;
          *v131 = v418;
          *(v130 + 172) = v450;
          *(v130 + 220) = v546;
          *(v130 + 236) = v575;
          *(v130 + 188) = v482;
          *(v130 + 204) = v514;
          *(v130 + 296) = *&v662[12];
          *(v130 + 268) = v633;
          *(v130 + 284) = *v662;
          *(v130 + 252) = v604;
          if (*(v15 + 76) < *(v77 + 76))
          {
            v419 = *v77;
            v451 = *(v77 + 1);
            v547 = *(v77 + 4);
            v576 = *(v77 + 5);
            v483 = *(v77 + 2);
            v515 = *(v77 + 3);
            *&v663[12] = *(v77 + 140);
            v634 = *(v77 + 7);
            *v663 = *(v77 + 8);
            v605 = *(v77 + 6);
            v179 = *(v15 + 5);
            *(v77 + 4) = *(v15 + 4);
            *(v77 + 5) = v179;
            v180 = *(v15 + 3);
            *(v77 + 2) = *(v15 + 2);
            *(v77 + 3) = v180;
            *(v77 + 140) = *(v15 + 140);
            v181 = *(v15 + 8);
            *(v77 + 7) = *(v15 + 7);
            *(v77 + 8) = v181;
            *(v77 + 6) = *(v15 + 6);
            v182 = *(v15 + 1);
            *v77 = *v15;
            *(v77 + 1) = v182;
            *v15 = v419;
            *(v15 + 1) = v451;
            *(v15 + 4) = v547;
            *(v15 + 5) = v576;
            *(v15 + 2) = v483;
            *(v15 + 3) = v515;
            *(v15 + 140) = *&v663[12];
            *(v15 + 7) = v634;
            *(v15 + 8) = *v663;
            *(v15 + 6) = v605;
          }
        }
      }

      else
      {
        if (v170 < v169)
        {
          v417 = *v77;
          v449 = *(v77 + 1);
          v545 = *(v77 + 4);
          v574 = *(v77 + 5);
          v481 = *(v77 + 2);
          v513 = *(v77 + 3);
          *&v661[12] = *(v77 + 140);
          v632 = *(v77 + 7);
          *v661 = *(v77 + 8);
          v603 = *(v77 + 6);
          v171 = *(v130 + 236);
          *(v77 + 4) = *(v130 + 220);
          *(v77 + 5) = v171;
          v172 = *(v130 + 204);
          *(v77 + 2) = *(v130 + 188);
          *(v77 + 3) = v172;
          *(v77 + 140) = *(v130 + 296);
          v173 = *(v130 + 284);
          *(v77 + 7) = *(v130 + 268);
          *(v77 + 8) = v173;
          *(v77 + 6) = *(v130 + 252);
          v174 = *(v130 + 172);
          *v77 = *v131;
          *(v77 + 1) = v174;
          goto LABEL_56;
        }

        v420 = *v77;
        v452 = *(v77 + 1);
        v548 = *(v77 + 4);
        v577 = *(v77 + 5);
        v484 = *(v77 + 2);
        v516 = *(v77 + 3);
        *&v664[12] = *(v77 + 140);
        v635 = *(v77 + 7);
        *v664 = *(v77 + 8);
        v606 = *(v77 + 6);
        v183 = *(v15 + 5);
        *(v77 + 4) = *(v15 + 4);
        *(v77 + 5) = v183;
        v184 = *(v15 + 3);
        *(v77 + 2) = *(v15 + 2);
        *(v77 + 3) = v184;
        *(v77 + 140) = *(v15 + 140);
        v185 = *(v15 + 8);
        *(v77 + 7) = *(v15 + 7);
        *(v77 + 8) = v185;
        *(v77 + 6) = *(v15 + 6);
        v186 = *(v15 + 1);
        *v77 = *v15;
        *(v77 + 1) = v186;
        *v15 = v420;
        *(v15 + 1) = v452;
        *(v15 + 4) = v548;
        *(v15 + 5) = v577;
        *(v15 + 2) = v484;
        *(v15 + 3) = v516;
        *(v15 + 140) = *&v664[12];
        *(v15 + 7) = v635;
        *(v15 + 8) = *v664;
        *(v15 + 6) = v606;
        if (*(v130 + 29) < *(v15 + 76))
        {
          v417 = *v15;
          v449 = *(v15 + 1);
          v545 = *(v15 + 4);
          v574 = *(v15 + 5);
          v481 = *(v15 + 2);
          v513 = *(v15 + 3);
          *&v661[12] = *(v15 + 140);
          v632 = *(v15 + 7);
          *v661 = *(v15 + 8);
          v603 = *(v15 + 6);
          v187 = *(v130 + 236);
          *(v15 + 4) = *(v130 + 220);
          *(v15 + 5) = v187;
          v188 = *(v130 + 204);
          *(v15 + 2) = *(v130 + 188);
          *(v15 + 3) = v188;
          *(v15 + 140) = *(v130 + 296);
          v189 = *(v130 + 284);
          *(v15 + 7) = *(v130 + 268);
          *(v15 + 8) = v189;
          *(v15 + 6) = *(v130 + 252);
          v190 = *(v130 + 172);
          *v15 = *v131;
          *(v15 + 1) = v190;
LABEL_56:
          *v131 = v417;
          *(v130 + 172) = v449;
          *(v130 + 220) = v545;
          *(v130 + 236) = v574;
          *(v130 + 188) = v481;
          *(v130 + 204) = v513;
          *(v130 + 296) = *&v661[12];
          *(v130 + 268) = v632;
          *(v130 + 284) = *v661;
          *(v130 + 252) = v603;
        }
      }

      v421 = *v11;
      v453 = *(v11 + 1);
      v549 = *(v11 + 4);
      v578 = *(v11 + 5);
      v485 = *(v11 + 2);
      v517 = *(v11 + 3);
      *&v665[12] = *(v11 + 140);
      v636 = *(v11 + 7);
      *v665 = *(v11 + 8);
      v607 = *(v11 + 6);
      v191 = *(v15 + 1);
      *v11 = *v15;
      *(v11 + 1) = v191;
      v192 = *(v15 + 2);
      v193 = *(v15 + 3);
      v194 = *(v15 + 5);
      *(v11 + 4) = *(v15 + 4);
      *(v11 + 5) = v194;
      *(v11 + 2) = v192;
      *(v11 + 3) = v193;
      v195 = *(v15 + 6);
      v196 = *(v15 + 7);
      v197 = *(v15 + 8);
      *(v11 + 140) = *(v15 + 140);
      *(v11 + 7) = v196;
      *(v11 + 8) = v197;
      *(v11 + 6) = v195;
      *v15 = v421;
      *(v15 + 1) = v453;
      *(v15 + 4) = v549;
      *(v15 + 5) = v578;
      *(v15 + 2) = v485;
      *(v15 + 3) = v517;
      *(v15 + 140) = *&v665[12];
      *(v15 + 7) = v636;
      *(v15 + 8) = *v665;
      *(v15 + 6) = v607;
      goto LABEL_58;
    }

    v25 = *(v11 + 76);
    if (v25 >= *(v15 + 76))
    {
      if (v16 < v25)
      {
        v405 = *v11;
        v437 = *(v11 + 1);
        v533 = *(v11 + 4);
        v562 = *(v11 + 5);
        v469 = *(v11 + 2);
        v501 = *(v11 + 3);
        *&v649[12] = *(v11 + 140);
        v620 = *(v11 + 7);
        *v649 = *(v11 + 8);
        v591 = *(v11 + 6);
        v47 = *(a2 - 140);
        *v11 = *v8;
        *(v11 + 1) = v47;
        v48 = *(a2 - 124);
        v49 = *(a2 - 108);
        v50 = *(a2 - 76);
        *(v11 + 4) = *(a2 - 92);
        *(v11 + 5) = v50;
        *(v11 + 2) = v48;
        *(v11 + 3) = v49;
        v51 = *(a2 - 60);
        v52 = *(a2 - 44);
        v53 = *(a2 - 28);
        *(v11 + 140) = *(a2 - 1);
        *(v11 + 7) = v52;
        *(v11 + 8) = v53;
        *(v11 + 6) = v51;
        *v8 = v405;
        *(a2 - 140) = v437;
        *(a2 - 92) = v533;
        *(a2 - 76) = v562;
        *(a2 - 124) = v469;
        *(a2 - 108) = v501;
        *(a2 - 1) = *&v649[12];
        *(a2 - 44) = v620;
        *(a2 - 28) = *v649;
        *(a2 - 60) = v591;
        if (*(v11 + 76) < *(v15 + 76))
        {
          v406 = *v15;
          v438 = *(v15 + 1);
          v534 = *(v15 + 4);
          v563 = *(v15 + 5);
          v470 = *(v15 + 2);
          v502 = *(v15 + 3);
          *&v650[12] = *(v15 + 140);
          v621 = *(v15 + 7);
          *v650 = *(v15 + 8);
          v592 = *(v15 + 6);
          v54 = *(v11 + 1);
          *v15 = *v11;
          *(v15 + 1) = v54;
          v55 = *(v11 + 2);
          v56 = *(v11 + 3);
          v57 = *(v11 + 5);
          *(v15 + 4) = *(v11 + 4);
          *(v15 + 5) = v57;
          *(v15 + 2) = v55;
          *(v15 + 3) = v56;
          v58 = *(v11 + 6);
          v59 = *(v11 + 7);
          v60 = *(v11 + 8);
          *(v15 + 140) = *(v11 + 140);
          *(v15 + 7) = v59;
          *(v15 + 8) = v60;
          *(v15 + 6) = v58;
          *v11 = v406;
          *(v11 + 1) = v438;
          *(v11 + 4) = v534;
          *(v11 + 5) = v563;
          *(v11 + 2) = v470;
          *(v11 + 3) = v502;
          *(v11 + 140) = *&v650[12];
          *(v11 + 7) = v621;
          *(v11 + 8) = *v650;
          *(v11 + 6) = v592;
        }
      }

      goto LABEL_58;
    }

    if (v16 < v25)
    {
      v402 = *v15;
      v434 = *(v15 + 1);
      v530 = *(v15 + 4);
      v559 = *(v15 + 5);
      v466 = *(v15 + 2);
      v498 = *(v15 + 3);
      *&v646[12] = *(v15 + 140);
      v617 = *(v15 + 7);
      *v646 = *(v15 + 8);
      v588 = *(v15 + 6);
      v26 = *(a2 - 140);
      *v15 = *v8;
      *(v15 + 1) = v26;
      v27 = *(a2 - 124);
      v28 = *(a2 - 108);
      v29 = *(a2 - 76);
      *(v15 + 4) = *(a2 - 92);
      *(v15 + 5) = v29;
      *(v15 + 2) = v27;
      *(v15 + 3) = v28;
      v30 = *(a2 - 60);
      v31 = *(a2 - 44);
      v32 = *(a2 - 28);
      *(v15 + 140) = *(a2 - 1);
      *(v15 + 7) = v31;
      *(v15 + 8) = v32;
      *(v15 + 6) = v30;
LABEL_35:
      *v8 = v402;
      *(a2 - 140) = v434;
      *(a2 - 92) = v530;
      *(a2 - 76) = v559;
      *(a2 - 124) = v466;
      *(a2 - 108) = v498;
      *(a2 - 1) = *&v646[12];
      *(a2 - 44) = v617;
      *(a2 - 28) = *v646;
      *(a2 - 60) = v588;
      goto LABEL_58;
    }

    v411 = *v15;
    v443 = *(v15 + 1);
    v539 = *(v15 + 4);
    v568 = *(v15 + 5);
    v475 = *(v15 + 2);
    v507 = *(v15 + 3);
    *&v655[12] = *(v15 + 140);
    v626 = *(v15 + 7);
    *v655 = *(v15 + 8);
    v597 = *(v15 + 6);
    v101 = *(v11 + 1);
    *v15 = *v11;
    *(v15 + 1) = v101;
    v102 = *(v11 + 2);
    v103 = *(v11 + 3);
    v104 = *(v11 + 5);
    *(v15 + 4) = *(v11 + 4);
    *(v15 + 5) = v104;
    *(v15 + 2) = v102;
    *(v15 + 3) = v103;
    v105 = *(v11 + 6);
    v106 = *(v11 + 7);
    v107 = *(v11 + 8);
    *(v15 + 140) = *(v11 + 140);
    *(v15 + 7) = v106;
    *(v15 + 8) = v107;
    *(v15 + 6) = v105;
    *v11 = v411;
    *(v11 + 1) = v443;
    *(v11 + 4) = v539;
    *(v11 + 5) = v568;
    *(v11 + 2) = v475;
    *(v11 + 3) = v507;
    *(v11 + 140) = *&v655[12];
    *(v11 + 7) = v626;
    *(v11 + 8) = *v655;
    *(v11 + 6) = v597;
    if (*(a2 - 10) < *(v11 + 76))
    {
      v402 = *v11;
      v434 = *(v11 + 1);
      v530 = *(v11 + 4);
      v559 = *(v11 + 5);
      v466 = *(v11 + 2);
      v498 = *(v11 + 3);
      *&v646[12] = *(v11 + 140);
      v617 = *(v11 + 7);
      *v646 = *(v11 + 8);
      v588 = *(v11 + 6);
      v108 = *(a2 - 140);
      *v11 = *v8;
      *(v11 + 1) = v108;
      v109 = *(a2 - 124);
      v110 = *(a2 - 108);
      v111 = *(a2 - 76);
      *(v11 + 4) = *(a2 - 92);
      *(v11 + 5) = v111;
      *(v11 + 2) = v109;
      *(v11 + 3) = v110;
      v112 = *(a2 - 60);
      v113 = *(a2 - 44);
      v114 = *(a2 - 28);
      *(v11 + 140) = *(a2 - 1);
      *(v11 + 7) = v113;
      *(v11 + 8) = v114;
      *(v11 + 6) = v112;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v198 = *(v11 + 76);
LABEL_61:
      v199 = 0;
      v374 = *v11;
      v371 = *(v11 + 148);
      *&v392[12] = *(v11 + 60);
      v386 = *(v11 + 2);
      *v392 = *(v11 + 3);
      v380 = *(v11 + 1);
      v365 = *(v11 + 116);
      v368 = *(v11 + 132);
      v359 = *(v11 + 84);
      v362 = *(v11 + 100);
      do
      {
        v200 = *(v11 + v199 + 232);
        v199 += 156;
      }

      while (v200 < v198);
      v201 = (v11 + v199);
      v202 = a2;
      if (v199 == 156)
      {
        v205 = a2;
        while (v201 < v205)
        {
          v203 = (v205 - 156);
          v206 = *(v205 - 10);
          v205 = (v205 - 156);
          if (v206 < v198)
          {
            goto LABEL_71;
          }
        }

        v203 = v205;
      }

      else
      {
        do
        {
          v203 = (v202 - 156);
          v204 = *(v202 - 10);
          v202 = (v202 - 156);
        }

        while (v204 >= v198);
      }

LABEL_71:
      v11 = v201;
      if (v201 < v203)
      {
        v207 = v203;
        do
        {
          v422 = *v11;
          v454 = *(v11 + 1);
          v550 = *(v11 + 4);
          v579 = *(v11 + 5);
          v486 = *(v11 + 2);
          v518 = *(v11 + 3);
          *&v666[12] = *(v11 + 140);
          v637 = *(v11 + 7);
          *v666 = *(v11 + 8);
          v608 = *(v11 + 6);
          v208 = *(v207 + 1);
          *v11 = *v207;
          *(v11 + 1) = v208;
          v209 = *(v207 + 2);
          v210 = *(v207 + 3);
          v211 = *(v207 + 5);
          *(v11 + 4) = *(v207 + 4);
          *(v11 + 5) = v211;
          *(v11 + 2) = v209;
          *(v11 + 3) = v210;
          v212 = *(v207 + 6);
          v213 = *(v207 + 7);
          v214 = *(v207 + 8);
          *(v11 + 140) = *(v207 + 140);
          *(v11 + 7) = v213;
          *(v11 + 8) = v214;
          *(v11 + 6) = v212;
          *v207 = v422;
          *(v207 + 1) = v454;
          *(v207 + 4) = v550;
          *(v207 + 5) = v579;
          *(v207 + 2) = v486;
          *(v207 + 3) = v518;
          *(v207 + 140) = *&v666[12];
          *(v207 + 7) = v637;
          *(v207 + 8) = *v666;
          *(v207 + 6) = v608;
          do
          {
            v215 = v11[29];
            v11 = (v11 + 156);
          }

          while (v215 < v198);
          do
          {
            v216 = *(v207 - 10);
            v207 = (v207 - 156);
          }

          while (v216 >= v198);
        }

        while (v11 < v207);
      }

      v217 = (v11 - 156);
      if ((v11 - 156) != a1)
      {
        v218 = *(v11 - 140);
        *a1 = *v217;
        *(a1 + 1) = v218;
        v219 = *(v11 - 124);
        v220 = *(v11 - 108);
        v221 = *(v11 - 76);
        *(a1 + 4) = *(v11 - 92);
        *(a1 + 5) = v221;
        *(a1 + 2) = v219;
        *(a1 + 3) = v220;
        v222 = *(v11 - 60);
        v223 = *(v11 - 44);
        v224 = *(v11 - 28);
        *(a1 + 140) = *(v11 - 1);
        *(a1 + 7) = v223;
        *(a1 + 8) = v224;
        *(a1 + 6) = v222;
      }

      *v217 = v374;
      *(v11 - 124) = v386;
      *(v11 - 108) = *v392;
      *(v11 - 140) = v380;
      *(v11 - 6) = *&v392[12];
      *(v11 - 10) = v198;
      *(v11 - 9) = v359;
      result = v362;
      *(v11 - 1) = v371;
      *(v11 - 3) = v368;
      *(v11 - 5) = v365;
      *(v11 - 7) = v362;
      if (v201 < v203)
      {
        goto LABEL_82;
      }

      v225 = sub_100534368(a1, (v11 - 156));
      if (sub_100534368(v11, a2))
      {
        a2 = (v11 - 156);
        if (!v225)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v225)
      {
LABEL_82:
        result.n128_u64[0] = sub_1005317F8(a1, (v11 - 156), a3, a4 & 1, result).n128_u64[0];
        a4 = 0;
      }
    }

    else
    {
      v198 = *(v11 + 76);
      if (*(v11 - 10) < v198)
      {
        goto LABEL_61;
      }

      v375 = *v11;
      *&v393[12] = *(v11 + 60);
      v387 = *(v11 + 2);
      *v393 = *(v11 + 3);
      v381 = *(v11 + 1);
      v372 = *(v11 + 148);
      v366 = *(v11 + 116);
      v369 = *(v11 + 132);
      v360 = *(v11 + 84);
      v363 = *(v11 + 100);
      if (v198 >= *(a2 - 10))
      {
        v228 = v11 + 156;
        do
        {
          v11 = v228;
          if (v228 >= a2)
          {
            break;
          }

          v229 = *(v228 + 76);
          v228 += 156;
        }

        while (v198 >= v229);
      }

      else
      {
        v226 = v11;
        do
        {
          v11 = (v226 + 156);
          v227 = v226[29];
          v226 = (v226 + 156);
        }

        while (v198 >= v227);
      }

      v230 = a2;
      if (v11 < a2)
      {
        v231 = a2;
        do
        {
          v230 = (v231 - 156);
          v232 = *(v231 - 10);
          v231 = (v231 - 156);
        }

        while (v198 < v232);
      }

      while (v11 < v230)
      {
        v423 = *v11;
        v455 = *(v11 + 1);
        v551 = *(v11 + 4);
        v580 = *(v11 + 5);
        v487 = *(v11 + 2);
        v519 = *(v11 + 3);
        *&v667[12] = *(v11 + 140);
        v638 = *(v11 + 7);
        *v667 = *(v11 + 8);
        v609 = *(v11 + 6);
        v233 = *(v230 + 1);
        *v11 = *v230;
        *(v11 + 1) = v233;
        v234 = *(v230 + 2);
        v235 = *(v230 + 3);
        v236 = *(v230 + 5);
        *(v11 + 4) = *(v230 + 4);
        *(v11 + 5) = v236;
        *(v11 + 2) = v234;
        *(v11 + 3) = v235;
        v237 = *(v230 + 6);
        v238 = *(v230 + 7);
        v239 = *(v230 + 8);
        *(v11 + 140) = *(v230 + 140);
        *(v11 + 7) = v238;
        *(v11 + 8) = v239;
        *(v11 + 6) = v237;
        *v230 = v423;
        *(v230 + 1) = v455;
        *(v230 + 4) = v551;
        *(v230 + 5) = v580;
        *(v230 + 2) = v487;
        *(v230 + 3) = v519;
        *(v230 + 140) = *&v667[12];
        *(v230 + 7) = v638;
        *(v230 + 8) = *v667;
        *(v230 + 6) = v609;
        do
        {
          v240 = v11[29];
          v11 = (v11 + 156);
        }

        while (v198 >= v240);
        do
        {
          v241 = *(v230 - 10);
          v230 = (v230 - 156);
        }

        while (v198 < v241);
      }

      v242 = (v11 - 156);
      if ((v11 - 156) != a1)
      {
        v243 = *(v11 - 140);
        *a1 = *v242;
        *(a1 + 1) = v243;
        v244 = *(v11 - 124);
        v245 = *(v11 - 108);
        v246 = *(v11 - 76);
        *(a1 + 4) = *(v11 - 92);
        *(a1 + 5) = v246;
        *(a1 + 2) = v244;
        *(a1 + 3) = v245;
        v247 = *(v11 - 60);
        v248 = *(v11 - 44);
        v249 = *(v11 - 28);
        *(a1 + 140) = *(v11 - 1);
        *(a1 + 7) = v248;
        *(a1 + 8) = v249;
        *(a1 + 6) = v247;
      }

      a4 = 0;
      *v242 = v375;
      *(v11 - 124) = v387;
      *(v11 - 108) = *v393;
      *(v11 - 140) = v381;
      *(v11 - 6) = *&v393[12];
      *(v11 - 10) = v198;
      *(v11 - 9) = v360;
      result = v363;
      *(v11 - 1) = v372;
      *(v11 - 3) = v369;
      *(v11 - 5) = v366;
      *(v11 - 7) = v363;
    }
  }

  v257 = (v11 + 156);
  result.n128_f64[0] = v11[29];
  v258 = *(a2 - 10);
  if (result.n128_f64[0] >= *(v11 + 76))
  {
    if (v258 < result.n128_f64[0])
    {
      v555 = *(v11 + 220);
      v584 = *(v11 + 236);
      v493 = *(v11 + 188);
      v525 = *(v11 + 204);
      *&v671[12] = *(v11 + 37);
      v642 = *(v11 + 268);
      *v671 = *(v11 + 284);
      v613 = *(v11 + 252);
      v429 = *v257;
      v461 = *(v11 + 172);
      v331 = *(a2 - 140);
      *v257 = *v8;
      *(v11 + 172) = v331;
      v332 = *(a2 - 124);
      v333 = *(a2 - 108);
      v334 = *(a2 - 76);
      *(v11 + 220) = *(a2 - 92);
      *(v11 + 236) = v334;
      *(v11 + 188) = v332;
      *(v11 + 204) = v333;
      result = *(a2 - 60);
      v335 = *(a2 - 44);
      v336 = *(a2 - 28);
      *(v11 + 37) = *(a2 - 1);
      *(v11 + 268) = v335;
      *(v11 + 284) = v336;
      *(v11 + 252) = result;
      *v8 = v429;
      *(a2 - 140) = v461;
      *(a2 - 92) = v555;
      *(a2 - 76) = v584;
      *(a2 - 124) = v493;
      *(a2 - 108) = v525;
      *(a2 - 1) = *&v671[12];
      *(a2 - 44) = v642;
      *(a2 - 28) = *v671;
      *(a2 - 60) = v613;
      result.n128_f64[0] = v11[29];
      if (result.n128_f64[0] < *(v11 + 76))
      {
        v430 = *v11;
        v462 = *(v11 + 1);
        v556 = *(v11 + 4);
        v585 = *(v11 + 5);
        v494 = *(v11 + 2);
        v526 = *(v11 + 3);
        *&v672[12] = *(v11 + 140);
        v643 = *(v11 + 7);
        *v672 = *(v11 + 8);
        v614 = *(v11 + 6);
        v337 = *(v11 + 236);
        *(v11 + 4) = *(v11 + 220);
        *(v11 + 5) = v337;
        result = *(v11 + 204);
        *(v11 + 2) = *(v11 + 188);
        *(v11 + 3) = result;
        *(v11 + 140) = *(v11 + 37);
        v338 = *(v11 + 284);
        *(v11 + 7) = *(v11 + 268);
        *(v11 + 8) = v338;
        *(v11 + 6) = *(v11 + 252);
        v339 = *(v11 + 172);
        *v11 = *v257;
        *(v11 + 1) = v339;
        *(v11 + 252) = v614;
        *(v11 + 268) = v643;
        *(v11 + 284) = *v672;
        *(v11 + 37) = *&v672[12];
        *(v11 + 188) = v494;
        *(v11 + 204) = v526;
        *(v11 + 220) = v556;
        *(v11 + 236) = v585;
        result.n128_u64[0] = v430;
        *v257 = v430;
        *(v11 + 172) = v462;
      }
    }
  }

  else
  {
    if (v258 >= result.n128_f64[0])
    {
      v432 = *v11;
      v464 = *(v11 + 1);
      v557 = *(v11 + 4);
      v586 = *(v11 + 5);
      v496 = *(v11 + 2);
      v528 = *(v11 + 3);
      *&v673[12] = *(v11 + 140);
      v644 = *(v11 + 7);
      *v673 = *(v11 + 8);
      v615 = *(v11 + 6);
      v347 = *(v11 + 236);
      *(v11 + 4) = *(v11 + 220);
      *(v11 + 5) = v347;
      result = *(v11 + 204);
      *(v11 + 2) = *(v11 + 188);
      *(v11 + 3) = result;
      *(v11 + 140) = *(v11 + 37);
      v348 = *(v11 + 284);
      *(v11 + 7) = *(v11 + 268);
      *(v11 + 8) = v348;
      *(v11 + 6) = *(v11 + 252);
      v349 = *(v11 + 172);
      *v11 = *v257;
      *(v11 + 1) = v349;
      *(v11 + 252) = v615;
      *(v11 + 268) = v644;
      *(v11 + 284) = *v673;
      *(v11 + 37) = *&v673[12];
      *(v11 + 188) = v496;
      *(v11 + 204) = v528;
      *(v11 + 220) = v557;
      *(v11 + 236) = v586;
      *v257 = v432;
      *(v11 + 172) = v464;
      result.n128_f64[0] = *(a2 - 10);
      if (result.n128_f64[0] >= v11[29])
      {
        return result;
      }

      v553 = *(v11 + 220);
      v582 = *(v11 + 236);
      v489 = *(v11 + 188);
      v521 = *(v11 + 204);
      *&v669[12] = *(v11 + 37);
      v640 = *(v11 + 268);
      *v669 = *(v11 + 284);
      v611 = *(v11 + 252);
      v425 = *v257;
      v457 = *(v11 + 172);
      v350 = *(a2 - 140);
      *v257 = *v8;
      *(v11 + 172) = v350;
      v351 = *(a2 - 124);
      v352 = *(a2 - 108);
      v353 = *(a2 - 76);
      *(v11 + 220) = *(a2 - 92);
      *(v11 + 236) = v353;
      *(v11 + 188) = v351;
      *(v11 + 204) = v352;
      v354 = *(a2 - 60);
      v355 = *(a2 - 44);
      v356 = *(a2 - 28);
      *(v11 + 37) = *(a2 - 1);
      *(v11 + 268) = v355;
      *(v11 + 284) = v356;
      *(v11 + 252) = v354;
    }

    else
    {
      v425 = *v11;
      v457 = *(v11 + 1);
      v553 = *(v11 + 4);
      v582 = *(v11 + 5);
      v489 = *(v11 + 2);
      v521 = *(v11 + 3);
      *&v669[12] = *(v11 + 140);
      v640 = *(v11 + 7);
      *v669 = *(v11 + 8);
      v611 = *(v11 + 12);
      v259 = *(a2 - 140);
      *v11 = *v8;
      *(v11 + 1) = v259;
      v260 = *(a2 - 124);
      v261 = *(a2 - 108);
      v262 = *(a2 - 76);
      *(v11 + 4) = *(a2 - 92);
      *(v11 + 5) = v262;
      *(v11 + 2) = v260;
      *(v11 + 3) = v261;
      v263 = *(a2 - 60);
      v264 = *(a2 - 44);
      v265 = *(a2 - 28);
      *(v11 + 140) = *(a2 - 1);
      *(v11 + 7) = v264;
      *(v11 + 8) = v265;
      *(v11 + 6) = v263;
    }

    *v8 = v425;
    *(a2 - 140) = v457;
    *(a2 - 92) = v553;
    *(a2 - 76) = v582;
    *(a2 - 124) = v489;
    *(a2 - 108) = v521;
    result = v611;
    *(a2 - 1) = *&v669[12];
    *(a2 - 44) = v640;
    *(a2 - 28) = *v669;
    *(a2 - 60) = v611;
  }

  return result;
}

double sub_100533730(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v4 = *(a2 + 76);
  v5 = *(a3 + 76);
  if (v4 >= *(a1 + 76))
  {
    if (v5 < v4)
    {
      v106 = a2[6];
      v113 = a2[7];
      *v120 = a2[8];
      *&v120[12] = *(a2 + 140);
      v78 = a2[2];
      v85 = a2[3];
      v92 = a2[4];
      v99 = a2[5];
      v64 = *a2;
      v71 = a2[1];
      v13 = a3[1];
      *a2 = *a3;
      a2[1] = v13;
      v14 = a3[2];
      v15 = a3[3];
      v16 = a3[5];
      a2[4] = a3[4];
      a2[5] = v16;
      a2[2] = v14;
      a2[3] = v15;
      v17 = a3[6];
      v18 = a3[7];
      v19 = a3[8];
      *(a2 + 140) = *(a3 + 140);
      a2[7] = v18;
      a2[8] = v19;
      a2[6] = v17;
      a3[6] = v106;
      a3[7] = v113;
      a3[8] = *v120;
      *(a3 + 140) = *&v120[12];
      a3[2] = v78;
      a3[3] = v85;
      a3[4] = v92;
      a3[5] = v99;
      *a3 = v64;
      a3[1] = v71;
      if (*(a2 + 76) < *(a1 + 76))
      {
        v107 = a1[6];
        v114 = a1[7];
        *v121 = a1[8];
        *&v121[12] = *(a1 + 140);
        v79 = a1[2];
        v86 = a1[3];
        v93 = a1[4];
        v100 = a1[5];
        v65 = *a1;
        v72 = a1[1];
        v20 = a2[1];
        *a1 = *a2;
        a1[1] = v20;
        v21 = a2[2];
        v22 = a2[3];
        v23 = a2[5];
        a1[4] = a2[4];
        a1[5] = v23;
        a1[2] = v21;
        a1[3] = v22;
        v24 = a2[6];
        v25 = a2[7];
        v26 = a2[8];
        *(a1 + 140) = *(a2 + 140);
        a1[7] = v25;
        a1[8] = v26;
        a1[6] = v24;
        a2[6] = v107;
        a2[7] = v114;
        a2[8] = *v121;
        *(a2 + 140) = *&v121[12];
        a2[2] = v79;
        a2[3] = v86;
        a2[4] = v93;
        a2[5] = v100;
        *a2 = v65;
        a2[1] = v72;
      }
    }
  }

  else
  {
    if (v5 < v4)
    {
      v105 = a1[6];
      v112 = a1[7];
      *v119 = a1[8];
      *&v119[12] = *(a1 + 140);
      v77 = a1[2];
      v84 = a1[3];
      v91 = a1[4];
      v98 = a1[5];
      v63 = *a1;
      v70 = a1[1];
      v6 = a3[1];
      *a1 = *a3;
      a1[1] = v6;
      v7 = a3[2];
      v8 = a3[3];
      v9 = a3[5];
      a1[4] = a3[4];
      a1[5] = v9;
      a1[2] = v7;
      a1[3] = v8;
      v10 = a3[6];
      v11 = a3[7];
      v12 = a3[8];
      *(a1 + 140) = *(a3 + 140);
      a1[7] = v11;
      a1[8] = v12;
      a1[6] = v10;
LABEL_9:
      a3[6] = v105;
      a3[7] = v112;
      a3[8] = *v119;
      *(a3 + 140) = *&v119[12];
      a3[2] = v77;
      a3[3] = v84;
      a3[4] = v91;
      a3[5] = v98;
      *a3 = v63;
      a3[1] = v70;
      goto LABEL_10;
    }

    v108 = a1[6];
    v115 = a1[7];
    *v122 = a1[8];
    *&v122[12] = *(a1 + 140);
    v80 = a1[2];
    v87 = a1[3];
    v94 = a1[4];
    v101 = a1[5];
    v66 = *a1;
    v73 = a1[1];
    v27 = a2[1];
    *a1 = *a2;
    a1[1] = v27;
    v28 = a2[2];
    v29 = a2[3];
    v30 = a2[5];
    a1[4] = a2[4];
    a1[5] = v30;
    a1[2] = v28;
    a1[3] = v29;
    v31 = a2[6];
    v32 = a2[7];
    v33 = a2[8];
    *(a1 + 140) = *(a2 + 140);
    a1[7] = v32;
    a1[8] = v33;
    a1[6] = v31;
    a2[6] = v108;
    a2[7] = v115;
    a2[8] = *v122;
    *(a2 + 140) = *&v122[12];
    a2[2] = v80;
    a2[3] = v87;
    a2[4] = v94;
    a2[5] = v101;
    *a2 = v66;
    a2[1] = v73;
    if (*(a3 + 76) < *(a2 + 76))
    {
      v105 = a2[6];
      v112 = a2[7];
      *v119 = a2[8];
      *&v119[12] = *(a2 + 140);
      v77 = a2[2];
      v84 = a2[3];
      v91 = a2[4];
      v98 = a2[5];
      v63 = *a2;
      v70 = a2[1];
      v34 = a3[1];
      *a2 = *a3;
      a2[1] = v34;
      v35 = a3[2];
      v36 = a3[3];
      v37 = a3[5];
      a2[4] = a3[4];
      a2[5] = v37;
      a2[2] = v35;
      a2[3] = v36;
      v38 = a3[6];
      v39 = a3[7];
      v40 = a3[8];
      *(a2 + 140) = *(a3 + 140);
      a2[7] = v39;
      a2[8] = v40;
      a2[6] = v38;
      goto LABEL_9;
    }
  }

LABEL_10:
  result = *(a4 + 76);
  if (result < *(a3 + 76))
  {
    v109 = a3[6];
    v116 = a3[7];
    *v123 = a3[8];
    *&v123[12] = *(a3 + 140);
    v81 = a3[2];
    v88 = a3[3];
    v95 = a3[4];
    v102 = a3[5];
    v67 = *a3;
    v74 = a3[1];
    v42 = a4[1];
    *a3 = *a4;
    a3[1] = v42;
    v43 = a4[2];
    v44 = a4[3];
    v45 = a4[5];
    a3[4] = a4[4];
    a3[5] = v45;
    a3[2] = v43;
    a3[3] = v44;
    v46 = a4[6];
    v47 = a4[7];
    v48 = a4[8];
    *(a3 + 140) = *(a4 + 140);
    a3[7] = v47;
    a3[8] = v48;
    a3[6] = v46;
    a4[6] = v109;
    a4[7] = v116;
    a4[8] = *v123;
    *(a4 + 140) = *&v123[12];
    a4[2] = v81;
    a4[3] = v88;
    a4[4] = v95;
    a4[5] = v102;
    *a4 = v67;
    a4[1] = v74;
    result = *(a3 + 76);
    if (result < *(a2 + 76))
    {
      v110 = a2[6];
      v117 = a2[7];
      *v124 = a2[8];
      *&v124[12] = *(a2 + 140);
      v82 = a2[2];
      v89 = a2[3];
      v96 = a2[4];
      v103 = a2[5];
      v68 = *a2;
      v75 = a2[1];
      v49 = a3[1];
      *a2 = *a3;
      a2[1] = v49;
      v50 = a3[2];
      v51 = a3[3];
      v52 = a3[5];
      a2[4] = a3[4];
      a2[5] = v52;
      a2[2] = v50;
      a2[3] = v51;
      v53 = a3[6];
      v54 = a3[7];
      v55 = a3[8];
      *(a2 + 140) = *(a3 + 140);
      a2[7] = v54;
      a2[8] = v55;
      a2[6] = v53;
      a3[6] = v110;
      a3[7] = v117;
      a3[8] = *v124;
      *(a3 + 140) = *&v124[12];
      a3[2] = v82;
      a3[3] = v89;
      a3[4] = v96;
      a3[5] = v103;
      *a3 = v68;
      a3[1] = v75;
      result = *(a2 + 76);
      if (result < *(a1 + 76))
      {
        v111 = a1[6];
        v118 = a1[7];
        *v125 = a1[8];
        *&v125[12] = *(a1 + 140);
        v83 = a1[2];
        v90 = a1[3];
        v97 = a1[4];
        v104 = a1[5];
        v69 = *a1;
        v76 = a1[1];
        v56 = a2[1];
        *a1 = *a2;
        a1[1] = v56;
        v57 = a2[2];
        v58 = a2[3];
        v59 = a2[5];
        a1[4] = a2[4];
        a1[5] = v59;
        a1[2] = v57;
        a1[3] = v58;
        v60 = a2[6];
        v61 = a2[7];
        v62 = a2[8];
        *(a1 + 140) = *(a2 + 140);
        a1[7] = v61;
        a1[8] = v62;
        a1[6] = v60;
        a2[6] = v111;
        a2[7] = v118;
        a2[8] = *v125;
        *(a2 + 140) = *&v125[12];
        a2[2] = v83;
        a2[3] = v90;
        a2[4] = v97;
        a2[5] = v104;
        result = *&v69;
        *a2 = v69;
        a2[1] = v76;
      }
    }
  }

  return result;
}

double sub_100533C0C(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v5 = *(a2 + 76);
  v6 = *(a3 + 76);
  if (v5 >= *(a1 + 76))
  {
    if (v6 < v5)
    {
      v159 = a2[6];
      v170 = a2[7];
      *v181 = a2[8];
      *&v181[12] = *(a2 + 140);
      v115 = a2[2];
      v126 = a2[3];
      v137 = a2[4];
      v148 = a2[5];
      v93 = *a2;
      v104 = a2[1];
      v14 = a3[1];
      *a2 = *a3;
      a2[1] = v14;
      v15 = a3[2];
      v16 = a3[3];
      v17 = a3[5];
      a2[4] = a3[4];
      a2[5] = v17;
      a2[2] = v15;
      a2[3] = v16;
      v18 = a3[6];
      v19 = a3[7];
      v20 = a3[8];
      *(a2 + 140) = *(a3 + 140);
      a2[7] = v19;
      a2[8] = v20;
      a2[6] = v18;
      a3[6] = v159;
      a3[7] = v170;
      a3[8] = *v181;
      *(a3 + 140) = *&v181[12];
      a3[2] = v115;
      a3[3] = v126;
      a3[4] = v137;
      a3[5] = v148;
      *a3 = v93;
      a3[1] = v104;
      if (*(a2 + 76) < *(a1 + 76))
      {
        v160 = a1[6];
        v171 = a1[7];
        *v182 = a1[8];
        *&v182[12] = *(a1 + 140);
        v116 = a1[2];
        v127 = a1[3];
        v138 = a1[4];
        v149 = a1[5];
        v94 = *a1;
        v105 = a1[1];
        v21 = a2[1];
        *a1 = *a2;
        a1[1] = v21;
        v22 = a2[2];
        v23 = a2[3];
        v24 = a2[5];
        a1[4] = a2[4];
        a1[5] = v24;
        a1[2] = v22;
        a1[3] = v23;
        v25 = a2[6];
        v26 = a2[7];
        v27 = a2[8];
        *(a1 + 140) = *(a2 + 140);
        a1[7] = v26;
        a1[8] = v27;
        a1[6] = v25;
        a2[6] = v160;
        a2[7] = v171;
        a2[8] = *v182;
        *(a2 + 140) = *&v182[12];
        a2[2] = v116;
        a2[3] = v127;
        a2[4] = v138;
        a2[5] = v149;
        *a2 = v94;
        a2[1] = v105;
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      v158 = a1[6];
      v169 = a1[7];
      *v180 = a1[8];
      *&v180[12] = *(a1 + 140);
      v114 = a1[2];
      v125 = a1[3];
      v136 = a1[4];
      v147 = a1[5];
      v92 = *a1;
      v103 = a1[1];
      v7 = a3[1];
      *a1 = *a3;
      a1[1] = v7;
      v8 = a3[2];
      v9 = a3[3];
      v10 = a3[5];
      a1[4] = a3[4];
      a1[5] = v10;
      a1[2] = v8;
      a1[3] = v9;
      v11 = a3[6];
      v12 = a3[7];
      v13 = a3[8];
      *(a1 + 140) = *(a3 + 140);
      a1[7] = v12;
      a1[8] = v13;
      a1[6] = v11;
LABEL_9:
      a3[6] = v158;
      a3[7] = v169;
      a3[8] = *v180;
      *(a3 + 140) = *&v180[12];
      a3[2] = v114;
      a3[3] = v125;
      a3[4] = v136;
      a3[5] = v147;
      *a3 = v92;
      a3[1] = v103;
      goto LABEL_10;
    }

    v161 = a1[6];
    v172 = a1[7];
    *v183 = a1[8];
    *&v183[12] = *(a1 + 140);
    v117 = a1[2];
    v128 = a1[3];
    v139 = a1[4];
    v150 = a1[5];
    v95 = *a1;
    v106 = a1[1];
    v28 = a2[1];
    *a1 = *a2;
    a1[1] = v28;
    v29 = a2[2];
    v30 = a2[3];
    v31 = a2[5];
    a1[4] = a2[4];
    a1[5] = v31;
    a1[2] = v29;
    a1[3] = v30;
    v32 = a2[6];
    v33 = a2[7];
    v34 = a2[8];
    *(a1 + 140) = *(a2 + 140);
    a1[7] = v33;
    a1[8] = v34;
    a1[6] = v32;
    a2[6] = v161;
    a2[7] = v172;
    a2[8] = *v183;
    *(a2 + 140) = *&v183[12];
    a2[2] = v117;
    a2[3] = v128;
    a2[4] = v139;
    a2[5] = v150;
    *a2 = v95;
    a2[1] = v106;
    if (*(a3 + 76) < *(a2 + 76))
    {
      v158 = a2[6];
      v169 = a2[7];
      *v180 = a2[8];
      *&v180[12] = *(a2 + 140);
      v114 = a2[2];
      v125 = a2[3];
      v136 = a2[4];
      v147 = a2[5];
      v92 = *a2;
      v103 = a2[1];
      v35 = a3[1];
      *a2 = *a3;
      a2[1] = v35;
      v36 = a3[2];
      v37 = a3[3];
      v38 = a3[5];
      a2[4] = a3[4];
      a2[5] = v38;
      a2[2] = v36;
      a2[3] = v37;
      v39 = a3[6];
      v40 = a3[7];
      v41 = a3[8];
      *(a2 + 140) = *(a3 + 140);
      a2[7] = v40;
      a2[8] = v41;
      a2[6] = v39;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 76) < *(a3 + 76))
  {
    v162 = a3[6];
    v173 = a3[7];
    *v184 = a3[8];
    *&v184[12] = *(a3 + 140);
    v118 = a3[2];
    v129 = a3[3];
    v140 = a3[4];
    v151 = a3[5];
    v96 = *a3;
    v107 = a3[1];
    v42 = a4[1];
    *a3 = *a4;
    a3[1] = v42;
    v43 = a4[2];
    v44 = a4[3];
    v45 = a4[5];
    a3[4] = a4[4];
    a3[5] = v45;
    a3[2] = v43;
    a3[3] = v44;
    v46 = a4[6];
    v47 = a4[7];
    v48 = a4[8];
    *(a3 + 140) = *(a4 + 140);
    a3[7] = v47;
    a3[8] = v48;
    a3[6] = v46;
    a4[6] = v162;
    a4[7] = v173;
    a4[8] = *v184;
    *(a4 + 140) = *&v184[12];
    a4[2] = v118;
    a4[3] = v129;
    a4[4] = v140;
    a4[5] = v151;
    *a4 = v96;
    a4[1] = v107;
    if (*(a3 + 76) < *(a2 + 76))
    {
      v163 = a2[6];
      v174 = a2[7];
      *v185 = a2[8];
      *&v185[12] = *(a2 + 140);
      v119 = a2[2];
      v130 = a2[3];
      v141 = a2[4];
      v152 = a2[5];
      v97 = *a2;
      v108 = a2[1];
      v49 = a3[1];
      *a2 = *a3;
      a2[1] = v49;
      v50 = a3[2];
      v51 = a3[3];
      v52 = a3[5];
      a2[4] = a3[4];
      a2[5] = v52;
      a2[2] = v50;
      a2[3] = v51;
      v53 = a3[6];
      v54 = a3[7];
      v55 = a3[8];
      *(a2 + 140) = *(a3 + 140);
      a2[7] = v54;
      a2[8] = v55;
      a2[6] = v53;
      a3[6] = v163;
      a3[7] = v174;
      a3[8] = *v185;
      *(a3 + 140) = *&v185[12];
      a3[2] = v119;
      a3[3] = v130;
      a3[4] = v141;
      a3[5] = v152;
      *a3 = v97;
      a3[1] = v108;
      if (*(a2 + 76) < *(a1 + 76))
      {
        v164 = a1[6];
        v175 = a1[7];
        *v186 = a1[8];
        *&v186[12] = *(a1 + 140);
        v120 = a1[2];
        v131 = a1[3];
        v142 = a1[4];
        v153 = a1[5];
        v98 = *a1;
        v109 = a1[1];
        v56 = a2[1];
        *a1 = *a2;
        a1[1] = v56;
        v57 = a2[2];
        v58 = a2[3];
        v59 = a2[5];
        a1[4] = a2[4];
        a1[5] = v59;
        a1[2] = v57;
        a1[3] = v58;
        v60 = a2[6];
        v61 = a2[7];
        v62 = a2[8];
        *(a1 + 140) = *(a2 + 140);
        a1[7] = v61;
        a1[8] = v62;
        a1[6] = v60;
        a2[6] = v164;
        a2[7] = v175;
        a2[8] = *v186;
        *(a2 + 140) = *&v186[12];
        a2[2] = v120;
        a2[3] = v131;
        a2[4] = v142;
        a2[5] = v153;
        *a2 = v98;
        a2[1] = v109;
      }
    }
  }

  result = *(a5 + 76);
  if (result < *(a4 + 76))
  {
    v165 = a4[6];
    v176 = a4[7];
    *v187 = a4[8];
    *&v187[12] = *(a4 + 140);
    v121 = a4[2];
    v132 = a4[3];
    v143 = a4[4];
    v154 = a4[5];
    v99 = *a4;
    v110 = a4[1];
    v64 = a5[1];
    *a4 = *a5;
    a4[1] = v64;
    v65 = a5[2];
    v66 = a5[3];
    v67 = a5[5];
    a4[4] = a5[4];
    a4[5] = v67;
    a4[2] = v65;
    a4[3] = v66;
    v68 = a5[6];
    v69 = a5[7];
    v70 = a5[8];
    *(a4 + 140) = *(a5 + 140);
    a4[7] = v69;
    a4[8] = v70;
    a4[6] = v68;
    a5[6] = v165;
    a5[7] = v176;
    a5[8] = *v187;
    *(a5 + 140) = *&v187[12];
    a5[2] = v121;
    a5[3] = v132;
    a5[4] = v143;
    a5[5] = v154;
    *a5 = v99;
    a5[1] = v110;
    result = *(a4 + 76);
    if (result < *(a3 + 76))
    {
      v166 = a3[6];
      v177 = a3[7];
      *v188 = a3[8];
      *&v188[12] = *(a3 + 140);
      v122 = a3[2];
      v133 = a3[3];
      v144 = a3[4];
      v155 = a3[5];
      v100 = *a3;
      v111 = a3[1];
      v71 = a4[1];
      *a3 = *a4;
      a3[1] = v71;
      v72 = a4[2];
      v73 = a4[3];
      v74 = a4[5];
      a3[4] = a4[4];
      a3[5] = v74;
      a3[2] = v72;
      a3[3] = v73;
      v75 = a4[6];
      v76 = a4[7];
      v77 = a4[8];
      *(a3 + 140) = *(a4 + 140);
      a3[7] = v76;
      a3[8] = v77;
      a3[6] = v75;
      a4[6] = v166;
      a4[7] = v177;
      a4[8] = *v188;
      *(a4 + 140) = *&v188[12];
      a4[2] = v122;
      a4[3] = v133;
      a4[4] = v144;
      a4[5] = v155;
      *a4 = v100;
      a4[1] = v111;
      result = *(a3 + 76);
      if (result < *(a2 + 76))
      {
        v167 = a2[6];
        v178 = a2[7];
        *v189 = a2[8];
        *&v189[12] = *(a2 + 140);
        v123 = a2[2];
        v134 = a2[3];
        v145 = a2[4];
        v156 = a2[5];
        v101 = *a2;
        v112 = a2[1];
        v78 = a3[1];
        *a2 = *a3;
        a2[1] = v78;
        v79 = a3[2];
        v80 = a3[3];
        v81 = a3[5];
        a2[4] = a3[4];
        a2[5] = v81;
        a2[2] = v79;
        a2[3] = v80;
        v82 = a3[6];
        v83 = a3[7];
        v84 = a3[8];
        *(a2 + 140) = *(a3 + 140);
        a2[7] = v83;
        a2[8] = v84;
        a2[6] = v82;
        a3[6] = v167;
        a3[7] = v178;
        a3[8] = *v189;
        *(a3 + 140) = *&v189[12];
        a3[2] = v123;
        a3[3] = v134;
        a3[4] = v145;
        a3[5] = v156;
        *a3 = v101;
        a3[1] = v112;
        result = *(a2 + 76);
        if (result < *(a1 + 76))
        {
          v168 = a1[6];
          v179 = a1[7];
          *v190 = a1[8];
          *&v190[12] = *(a1 + 140);
          v124 = a1[2];
          v135 = a1[3];
          v146 = a1[4];
          v157 = a1[5];
          v102 = *a1;
          v113 = a1[1];
          v85 = a2[1];
          *a1 = *a2;
          a1[1] = v85;
          v86 = a2[2];
          v87 = a2[3];
          v88 = a2[5];
          a1[4] = a2[4];
          a1[5] = v88;
          a1[2] = v86;
          a1[3] = v87;
          v89 = a2[6];
          v90 = a2[7];
          v91 = a2[8];
          *(a1 + 140) = *(a2 + 140);
          a1[7] = v90;
          a1[8] = v91;
          a1[6] = v89;
          a2[6] = v168;
          a2[7] = v179;
          a2[8] = *v190;
          *(a2 + 140) = *&v190[12];
          a2[2] = v124;
          a2[3] = v135;
          a2[4] = v146;
          a2[5] = v157;
          result = *&v102;
          *a2 = v102;
          a2[1] = v113;
        }
      }
    }
  }

  return result;
}

BOOL sub_100534368(uint64_t a1, __int128 *a2)
{
  v2 = 0x6F96F96F96F96F97 * ((a2 - a1) >> 2);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v11 = (a1 + 156);
      v12 = (a2 - 156);
      v13 = *(a1 + 232);
      v14 = *(a2 - 10);
      if (v13 >= *(a1 + 76))
      {
        if (v14 < v13)
        {
          v226 = *(a1 + 252);
          v241 = *(a1 + 268);
          *v256 = *(a1 + 284);
          *&v256[12] = *(a1 + 296);
          v164 = *(a1 + 188);
          v180 = *(a1 + 204);
          v196 = *(a1 + 220);
          v211 = *(a1 + 236);
          v132 = *v11;
          v148 = *(a1 + 172);
          v40 = *(a2 - 140);
          *v11 = *v12;
          *(a1 + 172) = v40;
          v41 = *(a2 - 124);
          v42 = *(a2 - 108);
          v43 = *(a2 - 76);
          *(a1 + 220) = *(a2 - 92);
          *(a1 + 236) = v43;
          *(a1 + 188) = v41;
          *(a1 + 204) = v42;
          v44 = *(a2 - 60);
          v45 = *(a2 - 44);
          v46 = *(a2 - 28);
          *(a1 + 296) = *(a2 - 1);
          *(a1 + 268) = v45;
          *(a1 + 284) = v46;
          *(a1 + 252) = v44;
          *(a2 - 60) = v226;
          *(a2 - 44) = v241;
          *(a2 - 28) = *v256;
          *(a2 - 1) = *&v256[12];
          *(a2 - 124) = v164;
          *(a2 - 108) = v180;
          *(a2 - 92) = v196;
          *(a2 - 76) = v211;
          *v12 = v132;
          *(a2 - 140) = v148;
          if (*(a1 + 232) < *(a1 + 76))
          {
            v227 = *(a1 + 96);
            v242 = *(a1 + 112);
            *v257 = *(a1 + 128);
            *&v257[12] = *(a1 + 140);
            v165 = *(a1 + 32);
            v181 = *(a1 + 48);
            v197 = *(a1 + 64);
            v212 = *(a1 + 80);
            v133 = *a1;
            v149 = *(a1 + 16);
            v47 = *(a1 + 268);
            *(a1 + 96) = *(a1 + 252);
            *(a1 + 112) = v47;
            *(a1 + 128) = *(a1 + 284);
            *(a1 + 140) = *(a1 + 296);
            v48 = *(a1 + 204);
            *(a1 + 32) = *(a1 + 188);
            *(a1 + 48) = v48;
            v49 = *(a1 + 236);
            *(a1 + 64) = *(a1 + 220);
            *(a1 + 80) = v49;
            v50 = *(a1 + 172);
            *a1 = *v11;
            *(a1 + 16) = v50;
            *(a1 + 252) = v227;
            *(a1 + 268) = v242;
            *(a1 + 284) = *v257;
            *(a1 + 296) = *&v257[12];
            *(a1 + 188) = v165;
            *(a1 + 204) = v181;
            *(a1 + 220) = v197;
            *(a1 + 236) = v212;
            result = 1;
            *v11 = v133;
            v11[1] = v149;
            return result;
          }
        }

        return 1;
      }

      if (v14 >= v13)
      {
        v232 = *(a1 + 96);
        v247 = *(a1 + 112);
        *v262 = *(a1 + 128);
        *&v262[12] = *(a1 + 140);
        v170 = *(a1 + 32);
        v186 = *(a1 + 48);
        v202 = *(a1 + 64);
        v217 = *(a1 + 80);
        v138 = *a1;
        v154 = *(a1 + 16);
        v68 = *(a1 + 268);
        *(a1 + 96) = *(a1 + 252);
        *(a1 + 112) = v68;
        *(a1 + 128) = *(a1 + 284);
        *(a1 + 140) = *(a1 + 296);
        v69 = *(a1 + 204);
        *(a1 + 32) = *(a1 + 188);
        *(a1 + 48) = v69;
        v70 = *(a1 + 236);
        *(a1 + 64) = *(a1 + 220);
        *(a1 + 80) = v70;
        v71 = *(a1 + 172);
        *a1 = *v11;
        *(a1 + 16) = v71;
        *(a1 + 252) = v232;
        *(a1 + 268) = v247;
        *(a1 + 284) = *v262;
        *(a1 + 296) = *&v262[12];
        *(a1 + 188) = v170;
        *(a1 + 204) = v186;
        *(a1 + 220) = v202;
        *(a1 + 236) = v217;
        *v11 = v138;
        *(a1 + 172) = v154;
        if (*(a2 - 10) >= *(a1 + 232))
        {
          return 1;
        }

        v223 = *(a1 + 252);
        v238 = *(a1 + 268);
        *v253 = *(a1 + 284);
        *&v253[12] = *(a1 + 296);
        v161 = *(a1 + 188);
        v177 = *(a1 + 204);
        v193 = *(a1 + 220);
        v208 = *(a1 + 236);
        v129 = *v11;
        v145 = *(a1 + 172);
        v72 = *(a2 - 140);
        *v11 = *v12;
        *(a1 + 172) = v72;
        v73 = *(a2 - 124);
        v74 = *(a2 - 108);
        v75 = *(a2 - 76);
        *(a1 + 220) = *(a2 - 92);
        *(a1 + 236) = v75;
        *(a1 + 188) = v73;
        *(a1 + 204) = v74;
        v76 = *(a2 - 60);
        v77 = *(a2 - 44);
        v78 = *(a2 - 28);
        *(a1 + 296) = *(a2 - 1);
        *(a1 + 268) = v77;
        *(a1 + 284) = v78;
        *(a1 + 252) = v76;
      }

      else
      {
        v223 = *(a1 + 96);
        v238 = *(a1 + 112);
        *v253 = *(a1 + 128);
        *&v253[12] = *(a1 + 140);
        v161 = *(a1 + 32);
        v177 = *(a1 + 48);
        v193 = *(a1 + 64);
        v208 = *(a1 + 80);
        v129 = *a1;
        v145 = *(a1 + 16);
        v15 = *(a2 - 140);
        *a1 = *v12;
        *(a1 + 16) = v15;
        v16 = *(a2 - 124);
        v17 = *(a2 - 108);
        v18 = *(a2 - 76);
        *(a1 + 64) = *(a2 - 92);
        *(a1 + 80) = v18;
        *(a1 + 32) = v16;
        *(a1 + 48) = v17;
        v19 = *(a2 - 60);
        v20 = *(a2 - 44);
        v21 = *(a2 - 28);
        *(a1 + 140) = *(a2 - 1);
        *(a1 + 112) = v20;
        *(a1 + 128) = v21;
        *(a1 + 96) = v19;
      }

LABEL_56:
      v12[6] = v223;
      v12[7] = v238;
      v12[8] = *v253;
      *(v12 + 140) = *&v253[12];
      v12[2] = v161;
      v12[3] = v177;
      v12[4] = v193;
      v12[5] = v208;
      result = 1;
      *v12 = v129;
      v12[1] = v145;
      return result;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_100533C0C(a1, (a1 + 156), (a1 + 312), (a1 + 468), (a2 - 156));
      return 1;
    }

    v12 = (a1 + 156);
    v31 = (a1 + 312);
    v32 = *(a1 + 232);
    v33 = *(a1 + 76);
    v34 = (a1 + 388);
    v35 = *(a1 + 388);
    if (v32 >= v33)
    {
      if (v35 < v32)
      {
        v230 = *(a1 + 252);
        v245 = *(a1 + 268);
        *v260 = *(a1 + 284);
        *&v260[12] = *(a1 + 296);
        v168 = *(a1 + 188);
        v184 = *(a1 + 204);
        v200 = *(a1 + 220);
        v215 = *(a1 + 236);
        v136 = *v12;
        v152 = *(a1 + 172);
        v60 = *(a1 + 424);
        *(a1 + 252) = *(a1 + 408);
        *(a1 + 268) = v60;
        *(a1 + 284) = *(a1 + 440);
        *(a1 + 296) = *(a1 + 452);
        v61 = *(a1 + 360);
        *(a1 + 188) = *(a1 + 344);
        *(a1 + 204) = v61;
        v62 = *(a1 + 392);
        *(a1 + 220) = *(a1 + 376);
        *(a1 + 236) = v62;
        v63 = *(a1 + 328);
        *v12 = *v31;
        *(a1 + 172) = v63;
        *(a1 + 408) = v230;
        *(a1 + 424) = v245;
        *(a1 + 440) = *v260;
        *(a1 + 452) = *&v260[12];
        *(a1 + 344) = v168;
        *(a1 + 360) = v184;
        *(a1 + 376) = v200;
        *(a1 + 392) = v215;
        v55 = *(a1 + 232) < v33;
        *v31 = v136;
        *(a1 + 328) = v152;
        if (v55)
        {
          v231 = *(a1 + 96);
          v246 = *(a1 + 112);
          *v261 = *(a1 + 128);
          *&v261[12] = *(a1 + 140);
          v169 = *(a1 + 32);
          v185 = *(a1 + 48);
          v201 = *(a1 + 64);
          v216 = *(a1 + 80);
          v137 = *a1;
          v153 = *(a1 + 16);
          v64 = *(a1 + 268);
          *(a1 + 96) = *(a1 + 252);
          *(a1 + 112) = v64;
          *(a1 + 128) = *(a1 + 284);
          *(a1 + 140) = *(a1 + 296);
          v65 = *(a1 + 204);
          *(a1 + 32) = *(a1 + 188);
          *(a1 + 48) = v65;
          v66 = *(a1 + 236);
          *(a1 + 64) = *(a1 + 220);
          *(a1 + 80) = v66;
          v67 = *(a1 + 172);
          *a1 = *v12;
          *(a1 + 16) = v67;
          *(a1 + 252) = v231;
          *(a1 + 268) = v246;
          *(a1 + 284) = *v261;
          *(a1 + 296) = *&v261[12];
          *(a1 + 188) = v169;
          *(a1 + 204) = v185;
          *(a1 + 220) = v201;
          *(a1 + 236) = v216;
          *v12 = v137;
          *(a1 + 172) = v153;
        }
      }

      goto LABEL_51;
    }

    if (v35 >= v32)
    {
      v234 = *(a1 + 96);
      v249 = *(a1 + 112);
      *v264 = *(a1 + 128);
      *&v264[12] = *(a1 + 140);
      v173 = *(a1 + 32);
      v189 = *(a1 + 48);
      v204 = *(a1 + 64);
      v219 = *(a1 + 80);
      v141 = *a1;
      v157 = *(a1 + 16);
      v99 = *(a1 + 268);
      *(a1 + 96) = *(a1 + 252);
      *(a1 + 112) = v99;
      *(a1 + 128) = *(a1 + 284);
      *(a1 + 140) = *(a1 + 296);
      v100 = *(a1 + 204);
      *(a1 + 32) = *(a1 + 188);
      *(a1 + 48) = v100;
      v101 = *(a1 + 236);
      *(a1 + 64) = *(a1 + 220);
      *(a1 + 80) = v101;
      v102 = *(a1 + 172);
      *a1 = *v12;
      *(a1 + 16) = v102;
      *(a1 + 252) = v234;
      *(a1 + 268) = v249;
      *(a1 + 284) = *v264;
      *(a1 + 296) = *&v264[12];
      *(a1 + 188) = v173;
      *(a1 + 204) = v189;
      *(a1 + 220) = v204;
      *(a1 + 236) = v219;
      v55 = v35 < *(a1 + 232);
      *v12 = v141;
      *(a1 + 172) = v157;
      if (!v55)
      {
LABEL_51:
        if (*(a2 - 10) >= *v34)
        {
          return 1;
        }

        v107 = (a2 - 156);
        v235 = *(a1 + 408);
        v250 = *(a1 + 424);
        *v265 = *(a1 + 440);
        *&v265[12] = *(a1 + 452);
        v174 = *(a1 + 344);
        v190 = *(a1 + 360);
        v205 = *(a1 + 376);
        v220 = *(a1 + 392);
        v142 = *v31;
        v158 = *(a1 + 328);
        v108 = *(a2 - 140);
        *v31 = *(a2 - 156);
        *(a1 + 328) = v108;
        v109 = *(a2 - 124);
        v110 = *(a2 - 108);
        v111 = *(a2 - 76);
        *(a1 + 376) = *(a2 - 92);
        *(a1 + 392) = v111;
        *(a1 + 344) = v109;
        *(a1 + 360) = v110;
        v112 = *(a2 - 60);
        v113 = *(a2 - 44);
        v114 = *(a2 - 28);
        *(a1 + 452) = *(a2 - 1);
        *(a1 + 424) = v113;
        *(a1 + 440) = v114;
        *(a1 + 408) = v112;
        v107[6] = v235;
        v107[7] = v250;
        v107[8] = *v265;
        *(v107 + 140) = *&v265[12];
        v107[2] = v174;
        v107[3] = v190;
        v107[4] = v205;
        v107[5] = v220;
        *v107 = v142;
        v107[1] = v158;
        if (*v34 >= *(a1 + 232))
        {
          return 1;
        }

        v236 = *(a1 + 252);
        v251 = *(a1 + 268);
        *v266 = *(a1 + 284);
        *&v266[12] = *(a1 + 296);
        v175 = *(a1 + 188);
        v191 = *(a1 + 204);
        v206 = *(a1 + 220);
        v221 = *(a1 + 236);
        v143 = *v12;
        v159 = *(a1 + 172);
        v115 = *(a1 + 424);
        *(a1 + 252) = *(a1 + 408);
        *(a1 + 268) = v115;
        *(a1 + 284) = *(a1 + 440);
        *(a1 + 296) = *(a1 + 452);
        v116 = *(a1 + 360);
        *(a1 + 188) = *(a1 + 344);
        *(a1 + 204) = v116;
        v117 = *(a1 + 392);
        *(a1 + 220) = *(a1 + 376);
        *(a1 + 236) = v117;
        v118 = *(a1 + 328);
        *v12 = *v31;
        *(a1 + 172) = v118;
        *(a1 + 408) = v236;
        *(a1 + 424) = v251;
        *(a1 + 440) = *v266;
        *(a1 + 452) = *&v266[12];
        *(a1 + 344) = v175;
        *(a1 + 360) = v191;
        *(a1 + 376) = v206;
        *(a1 + 392) = v221;
        v55 = *(a1 + 232) < *(a1 + 76);
        *v31 = v143;
        *(a1 + 328) = v159;
        if (!v55)
        {
          return 1;
        }

        v223 = *(a1 + 96);
        v238 = *(a1 + 112);
        *v253 = *(a1 + 128);
        *&v253[12] = *(a1 + 140);
        v161 = *(a1 + 32);
        v177 = *(a1 + 48);
        v193 = *(a1 + 64);
        v208 = *(a1 + 80);
        v129 = *a1;
        v145 = *(a1 + 16);
        v119 = *(a1 + 268);
        *(a1 + 96) = *(a1 + 252);
        *(a1 + 112) = v119;
        *(a1 + 128) = *(a1 + 284);
        *(a1 + 140) = *(a1 + 296);
        v120 = *(a1 + 204);
        *(a1 + 32) = *(a1 + 188);
        *(a1 + 48) = v120;
        v121 = *(a1 + 236);
        *(a1 + 64) = *(a1 + 220);
        *(a1 + 80) = v121;
        v122 = *(a1 + 172);
        *a1 = *v12;
        *(a1 + 16) = v122;
        goto LABEL_56;
      }

      v225 = *(a1 + 252);
      v240 = *(a1 + 268);
      *v255 = *(a1 + 284);
      *&v255[12] = *(a1 + 296);
      v163 = *(a1 + 188);
      v179 = *(a1 + 204);
      v195 = *(a1 + 220);
      v210 = *(a1 + 236);
      v131 = *v12;
      v147 = *(a1 + 172);
      v103 = *(a1 + 424);
      *(a1 + 252) = *(a1 + 408);
      *(a1 + 268) = v103;
      *(a1 + 284) = *(a1 + 440);
      *(a1 + 296) = *(a1 + 452);
      v104 = *(a1 + 360);
      *(a1 + 188) = *(a1 + 344);
      *(a1 + 204) = v104;
      v105 = *(a1 + 392);
      *(a1 + 220) = *(a1 + 376);
      *(a1 + 236) = v105;
      v106 = *(a1 + 328);
      *v12 = *v31;
      *(a1 + 172) = v106;
    }

    else
    {
      v225 = *(a1 + 96);
      v240 = *(a1 + 112);
      *v255 = *(a1 + 128);
      *&v255[12] = *(a1 + 140);
      v163 = *(a1 + 32);
      v179 = *(a1 + 48);
      v195 = *(a1 + 64);
      v210 = *(a1 + 80);
      v131 = *a1;
      v147 = *(a1 + 16);
      v36 = *(a1 + 424);
      *(a1 + 96) = *(a1 + 408);
      *(a1 + 112) = v36;
      *(a1 + 128) = *(a1 + 440);
      *(a1 + 140) = *(a1 + 452);
      v37 = *(a1 + 360);
      *(a1 + 32) = *(a1 + 344);
      *(a1 + 48) = v37;
      v38 = *(a1 + 392);
      *(a1 + 64) = *(a1 + 376);
      *(a1 + 80) = v38;
      v39 = *(a1 + 328);
      *a1 = *v31;
      *(a1 + 16) = v39;
    }

    *(a1 + 408) = v225;
    *(a1 + 424) = v240;
    *(a1 + 440) = *v255;
    *(a1 + 452) = *&v255[12];
    *(a1 + 344) = v163;
    *(a1 + 360) = v179;
    *(a1 + 376) = v195;
    *(a1 + 392) = v210;
    *v31 = v131;
    *(a1 + 328) = v147;
    goto LABEL_51;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 10) < *(a1 + 76))
    {
      v222 = *(a1 + 96);
      v237 = *(a1 + 112);
      *v252 = *(a1 + 128);
      *&v252[12] = *(a1 + 140);
      v160 = *(a1 + 32);
      v176 = *(a1 + 48);
      v192 = *(a1 + 64);
      v207 = *(a1 + 80);
      v128 = *a1;
      v144 = *(a1 + 16);
      v3 = *(a2 - 140);
      *a1 = *(a2 - 156);
      *(a1 + 16) = v3;
      v4 = *(a2 - 124);
      v5 = *(a2 - 108);
      v6 = *(a2 - 76);
      *(a1 + 64) = *(a2 - 92);
      *(a1 + 80) = v6;
      *(a1 + 32) = v4;
      *(a1 + 48) = v5;
      v7 = *(a2 - 60);
      v8 = *(a2 - 44);
      v9 = *(a2 - 28);
      *(a1 + 140) = *(a2 - 1);
      *(a1 + 112) = v8;
      *(a1 + 128) = v9;
      *(a1 + 96) = v7;
      *(a2 - 60) = v222;
      *(a2 - 44) = v237;
      *(a2 - 28) = *v252;
      *(a2 - 1) = *&v252[12];
      *(a2 - 124) = v160;
      *(a2 - 108) = v176;
      *(a2 - 92) = v192;
      *(a2 - 76) = v207;
      *(a2 - 156) = v128;
      result = 1;
      *(a2 - 140) = v144;
      return result;
    }

    return 1;
  }

LABEL_13:
  v22 = (a1 + 312);
  v23 = (a1 + 156);
  v24 = *(a1 + 232);
  v25 = *(a1 + 76);
  v26 = *(a1 + 388);
  if (v24 >= v25)
  {
    if (v26 < v24)
    {
      v228 = *(a1 + 252);
      v243 = *(a1 + 268);
      *v258 = *(a1 + 284);
      *&v258[12] = *(a1 + 296);
      v166 = *(a1 + 188);
      v182 = *(a1 + 204);
      v198 = *(a1 + 220);
      v213 = *(a1 + 236);
      v134 = *v23;
      v150 = *(a1 + 172);
      v51 = *(a1 + 424);
      *(a1 + 252) = *(a1 + 408);
      *(a1 + 268) = v51;
      *(a1 + 284) = *(a1 + 440);
      *(a1 + 296) = *(a1 + 452);
      v52 = *(a1 + 360);
      *(a1 + 188) = *(a1 + 344);
      *(a1 + 204) = v52;
      v53 = *(a1 + 392);
      *(a1 + 220) = *(a1 + 376);
      *(a1 + 236) = v53;
      v54 = *(a1 + 328);
      *v23 = *v22;
      *(a1 + 172) = v54;
      *(a1 + 408) = v228;
      *(a1 + 424) = v243;
      *(a1 + 440) = *v258;
      *(a1 + 452) = *&v258[12];
      *(a1 + 344) = v166;
      *(a1 + 360) = v182;
      *(a1 + 376) = v198;
      *(a1 + 392) = v213;
      v55 = *(a1 + 232) < v25;
      *v22 = v134;
      *(a1 + 328) = v150;
      if (v55)
      {
        v229 = *(a1 + 96);
        v244 = *(a1 + 112);
        *v259 = *(a1 + 128);
        *&v259[12] = *(a1 + 140);
        v167 = *(a1 + 32);
        v183 = *(a1 + 48);
        v199 = *(a1 + 64);
        v214 = *(a1 + 80);
        v135 = *a1;
        v151 = *(a1 + 16);
        v56 = *(a1 + 268);
        *(a1 + 96) = *(a1 + 252);
        *(a1 + 112) = v56;
        *(a1 + 128) = *(a1 + 284);
        *(a1 + 140) = *(a1 + 296);
        v57 = *(a1 + 204);
        *(a1 + 32) = *(a1 + 188);
        *(a1 + 48) = v57;
        v58 = *(a1 + 236);
        *(a1 + 64) = *(a1 + 220);
        *(a1 + 80) = v58;
        v59 = *(a1 + 172);
        *a1 = *v23;
        *(a1 + 16) = v59;
        *(a1 + 252) = v229;
        *(a1 + 268) = v244;
        *(a1 + 284) = *v259;
        *(a1 + 296) = *&v259[12];
        *(a1 + 188) = v167;
        *(a1 + 204) = v183;
        *(a1 + 220) = v199;
        *(a1 + 236) = v214;
        *v23 = v135;
        *(a1 + 172) = v151;
      }
    }
  }

  else
  {
    if (v26 < v24)
    {
      v224 = *(a1 + 96);
      v239 = *(a1 + 112);
      *v254 = *(a1 + 128);
      *&v254[12] = *(a1 + 140);
      v162 = *(a1 + 32);
      v178 = *(a1 + 48);
      v194 = *(a1 + 64);
      v209 = *(a1 + 80);
      v130 = *a1;
      v146 = *(a1 + 16);
      v27 = *(a1 + 424);
      *(a1 + 96) = *(a1 + 408);
      *(a1 + 112) = v27;
      *(a1 + 128) = *(a1 + 440);
      *(a1 + 140) = *(a1 + 452);
      v28 = *(a1 + 360);
      *(a1 + 32) = *(a1 + 344);
      *(a1 + 48) = v28;
      v29 = *(a1 + 392);
      *(a1 + 64) = *(a1 + 376);
      *(a1 + 80) = v29;
      v30 = *(a1 + 328);
      *a1 = *v22;
      *(a1 + 16) = v30;
LABEL_35:
      *(a1 + 408) = v224;
      *(a1 + 424) = v239;
      *(a1 + 440) = *v254;
      *(a1 + 452) = *&v254[12];
      *(a1 + 344) = v162;
      *(a1 + 360) = v178;
      *(a1 + 376) = v194;
      *(a1 + 392) = v209;
      *v22 = v130;
      *(a1 + 328) = v146;
      goto LABEL_36;
    }

    v233 = *(a1 + 96);
    v248 = *(a1 + 112);
    *v263 = *(a1 + 128);
    *&v263[12] = *(a1 + 140);
    v171 = *(a1 + 32);
    v187 = *(a1 + 48);
    v203 = *(a1 + 64);
    v218 = *(a1 + 80);
    v139 = *a1;
    v155 = *(a1 + 16);
    v79 = *(a1 + 268);
    *(a1 + 96) = *(a1 + 252);
    *(a1 + 112) = v79;
    *(a1 + 128) = *(a1 + 284);
    *(a1 + 140) = *(a1 + 296);
    v80 = *(a1 + 204);
    *(a1 + 32) = *(a1 + 188);
    *(a1 + 48) = v80;
    v81 = *(a1 + 236);
    *(a1 + 64) = *(a1 + 220);
    *(a1 + 80) = v81;
    v82 = *(a1 + 172);
    *a1 = *v23;
    *(a1 + 16) = v82;
    *(a1 + 252) = v233;
    *(a1 + 268) = v248;
    *(a1 + 284) = *v263;
    *(a1 + 296) = *&v263[12];
    *(a1 + 188) = v171;
    *(a1 + 204) = v187;
    *(a1 + 220) = v203;
    *(a1 + 236) = v218;
    v55 = v26 < *(a1 + 232);
    *v23 = v139;
    *(a1 + 172) = v155;
    if (v55)
    {
      v224 = *(a1 + 252);
      v239 = *(a1 + 268);
      *v254 = *(a1 + 284);
      *&v254[12] = *(a1 + 296);
      v162 = *(a1 + 188);
      v178 = *(a1 + 204);
      v194 = *(a1 + 220);
      v209 = *(a1 + 236);
      v130 = *v23;
      v146 = *(a1 + 172);
      v83 = *(a1 + 424);
      *(a1 + 252) = *(a1 + 408);
      *(a1 + 268) = v83;
      *(a1 + 284) = *(a1 + 440);
      *(a1 + 296) = *(a1 + 452);
      v84 = *(a1 + 360);
      *(a1 + 188) = *(a1 + 344);
      *(a1 + 204) = v84;
      v85 = *(a1 + 392);
      *(a1 + 220) = *(a1 + 376);
      *(a1 + 236) = v85;
      v86 = *(a1 + 328);
      *v23 = *v22;
      *(a1 + 172) = v86;
      goto LABEL_35;
    }
  }

LABEL_36:
  v87 = (a1 + 468);
  if ((a1 + 468) == a2)
  {
    return 1;
  }

  v88 = 0;
  v89 = 0;
  while (1)
  {
    v90 = *(v87 + 76);
    if (v90 < *(v22 + 76))
    {
      v172 = v87[2];
      *v188 = v87[3];
      *&v188[12] = *(v87 + 60);
      v140 = *v87;
      v156 = v87[1];
      v125 = *(v87 + 116);
      v126 = *(v87 + 132);
      v127 = *(v87 + 148);
      v91 = v88;
      v123 = *(v87 + 84);
      v124 = *(v87 + 100);
      while (1)
      {
        v92 = (a1 + v91 + 468);
        v93 = *(a1 + v91 + 424);
        v92[6] = *(a1 + v91 + 408);
        v92[7] = v93;
        v92[8] = *(a1 + v91 + 440);
        *(a1 + v91 + 608) = *(a1 + v91 + 452);
        v94 = *(a1 + v91 + 360);
        v92[2] = *(a1 + v91 + 344);
        v92[3] = v94;
        v95 = *(a1 + v91 + 392);
        v92[4] = *(a1 + v91 + 376);
        v92[5] = v95;
        v96 = *(a1 + v91 + 328);
        *v92 = *(a1 + v91 + 312);
        v92[1] = v96;
        if (v91 == -312)
        {
          break;
        }

        v97 = *(a1 + v91 + 232);
        v91 -= 156;
        if (v90 >= v97)
        {
          v98 = a1 + v91 + 468;
          goto LABEL_44;
        }
      }

      v98 = a1;
LABEL_44:
      *(v98 + 32) = v172;
      *(v98 + 48) = *v188;
      *(v98 + 60) = *&v188[12];
      *v98 = v140;
      *(v98 + 16) = v156;
      *(v98 + 76) = v90;
      *(v98 + 100) = v124;
      *(v98 + 116) = v125;
      *(v98 + 132) = v126;
      *(v98 + 148) = v127;
      ++v89;
      *(v98 + 84) = v123;
      if (v89 == 8)
      {
        return (v87 + 156) == a2;
      }
    }

    v22 = v87;
    v88 += 156;
    v87 = (v87 + 156);
    if (v87 == a2)
    {
      return 1;
    }
  }
}