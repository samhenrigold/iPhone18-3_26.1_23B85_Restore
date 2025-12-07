void sub_1A7C42644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1A7C427AC(uint64_t a1)
{
  v3[9] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!qword_1EB2BBC20)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = sub_1A7C428D0;
    v3[4] = &unk_1E77DD328;
    v3[5] = v3;
    v3[7] = 0;
    v3[8] = 0;
    v3[6] = "/System/Library/PrivateFrameworks/Transparency.framework/Transparency";
    qword_1EB2BBC20 = _sl_dlopen();
  }

  if (!qword_1EB2BBC20)
  {
    sub_1A7E1D988(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("KTVerifierResult");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A7E1D90C();
  }

  qword_1EB2BBBE0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A7C428D0(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1EB2BBC20 = result;
  return result;
}

uint64_t IDSQRProtoAllocBindResponseReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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
      LOBYTE(v104) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v104 & 0x7F) << v5;
      if ((v104 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v13 = v12 & 7;
    if (v13 == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = 96;
        goto LABEL_92;
      case 2u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          LOBYTE(v104) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v104 & 0x7F) << v49;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_175;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v51;
        }

LABEL_175:
        v84 = 88;
        goto LABEL_180;
      case 3u:
        v14 = PBReaderReadString();
        v15 = 184;
        goto LABEL_92;
      case 4u:
        v16 = objc_alloc_init(IDSQRProtoPeerPublishedStream);
        [a1 addPeerPublishedStreams:v16];
        v104 = 0xAAAAAAAAAAAAAAAALL;
        v105 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoPeerPublishedStreamReadFrom(v16, a2))
        {
          goto LABEL_216;
        }

        goto LABEL_153;
      case 5u:
        if (v13 != 2)
        {
          v92 = 0;
          v93 = 0;
          v94 = 0;
          while (1)
          {
            LOBYTE(v104) = 0;
            v95 = [a2 position] + 1;
            if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
            {
              v97 = [a2 data];
              [v97 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v94 |= (v104 & 0x7F) << v92;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v92 += 7;
            v11 = v93++ >= 9;
            if (v11)
            {
              goto LABEL_202;
            }
          }

LABEL_201:
          [a2 hasError];
LABEL_202:
          PBRepeatedUInt32Add();
          goto LABEL_181;
        }

        v104 = 0xAAAAAAAAAAAAAAAALL;
        v105 = 0xAAAAAAAAAAAAAAAALL;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v70 = [a2 position];
          if (v70 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_147;
          }

          v71 = 0;
          v72 = 0;
          v73 = 0;
          while (1)
          {
            v106 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v73 |= (v106 & 0x7F) << v71;
            if ((v106 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v11 = v72++ >= 9;
            if (v11)
            {
              goto LABEL_128;
            }
          }

          [a2 hasError];
LABEL_128:
          PBRepeatedUInt32Add();
        }

      case 6u:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        a1[204] |= 4u;
        while (1)
        {
          LOBYTE(v104) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v104 & 0x7F) << v43;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v11 = v44++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_171;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v45;
        }

LABEL_171:
        v84 = 128;
        goto LABEL_180;
      case 7u:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        a1[204] |= 1u;
        while (1)
        {
          LOBYTE(v104) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v104 & 0x7F) << v55;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v11 = v56++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_179;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v57;
        }

LABEL_179:
        v84 = 92;
        goto LABEL_180;
      case 9u:
        v14 = PBReaderReadData();
        v15 = 168;
LABEL_92:
        v61 = *&a1[v15];
        *&a1[v15] = v14;

        goto LABEL_181;
      case 0xAu:
        if (v13 == 2)
        {
          v104 = 0xAAAAAAAAAAAAAAAALL;
          v105 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v77 = [a2 position];
            if (v77 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v78 = 0;
            v79 = 0;
            v80 = 0;
            while (1)
            {
              v106 = 0;
              v81 = [a2 position] + 1;
              if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
              {
                v83 = [a2 data];
                [v83 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v80 |= (v106 & 0x7F) << v78;
              if ((v106 & 0x80) == 0)
              {
                break;
              }

              v78 += 7;
              v11 = v79++ >= 9;
              if (v11)
              {
                goto LABEL_146;
              }
            }

            [a2 hasError];
LABEL_146:
            PBRepeatedUInt64Add();
          }

LABEL_147:
          PBReaderRecallMark();
        }

        else
        {
          v98 = 0;
          v99 = 0;
          v100 = 0;
          while (1)
          {
            LOBYTE(v104) = 0;
            v101 = [a2 position] + 1;
            if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
            {
              v103 = [a2 data];
              [v103 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v100 |= (v104 & 0x7F) << v98;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v98 += 7;
            v11 = v99++ >= 9;
            if (v11)
            {
              goto LABEL_213;
            }
          }

          [a2 hasError];
LABEL_213:
          PBRepeatedUInt64Add();
        }

        goto LABEL_181;
      case 0xBu:
        v16 = objc_alloc_init(IDSQRProtoQuicConnectionInfo);
        [a1 addQuicConnectionInfo:v16];
        v104 = 0xAAAAAAAAAAAAAAAALL;
        v105 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoQuicConnectionInfoReadFrom(v16, a2))
        {
          goto LABEL_216;
        }

        goto LABEL_153;
      case 0xCu:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        a1[204] |= 8u;
        while (1)
        {
          LOBYTE(v104) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v104 & 0x7F) << v24;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_161;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v26;
        }

LABEL_161:
        v84 = 144;
        goto LABEL_180;
      case 0xFu:
        v16 = objc_alloc_init(IDSQRProtoMaterial);
        [a1 addMaterials:v16];
        v104 = 0xAAAAAAAAAAAAAAAALL;
        v105 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoMaterialReadFrom(v16, a2))
        {
          goto LABEL_216;
        }

        goto LABEL_153;
      case 0x10u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        a1[204] |= 2u;
        while (1)
        {
          LOBYTE(v104) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v104 & 0x7F) << v30;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_165;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v32;
        }

LABEL_165:
        v84 = 104;
        goto LABEL_180;
      case 0x11u:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        a1[204] |= 0x10u;
        while (1)
        {
          LOBYTE(v104) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v104 & 0x7F) << v17;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_157;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_157:
        v84 = 176;
LABEL_180:
        *&a1[v84] = v23;
        goto LABEL_181;
      case 0x15u:
        if (v13 != 2)
        {
          v86 = 0;
          v87 = 0;
          v88 = 0;
          while (1)
          {
            LOBYTE(v104) = 0;
            v89 = [a2 position] + 1;
            if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
            {
              v91 = [a2 data];
              [v91 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v88 |= (v104 & 0x7F) << v86;
            if ((v104 & 0x80) == 0)
            {
              goto LABEL_201;
            }

            v86 += 7;
            v11 = v87++ >= 9;
            if (v11)
            {
              goto LABEL_202;
            }
          }
        }

        v104 = 0xAAAAAAAAAAAAAAAALL;
        v105 = 0xAAAAAAAAAAAAAAAALL;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v63 = [a2 position];
          if (v63 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_147;
          }

          v64 = 0;
          v65 = 0;
          v66 = 0;
          while (1)
          {
            v106 = 0;
            v67 = [a2 position] + 1;
            if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
            {
              v69 = [a2 data];
              [v69 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v66 |= (v106 & 0x7F) << v64;
            if ((v106 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v11 = v65++ >= 9;
            if (v11)
            {
              goto LABEL_107;
            }
          }

          [a2 hasError];
LABEL_107:
          PBRepeatedUInt32Add();
        }

      case 0x19u:
        v16 = objc_alloc_init(IDSQRProtoChannelExperiment);
        [a1 addActiveExperiments:v16];
        v104 = 0xAAAAAAAAAAAAAAAALL;
        v105 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoChannelExperimentReadFrom(v16, a2))
        {
          goto LABEL_216;
        }

        goto LABEL_153;
      case 0x1Cu:
        v16 = objc_alloc_init(IDSQRProtoAllocBindJoinInfo);
        [a1 addJoinedParticipants:v16];
        v104 = 0xAAAAAAAAAAAAAAAALL;
        v105 = 0xAAAAAAAAAAAAAAAALL;
        if (PBReaderPlaceMark() && IDSQRProtoAllocBindJoinInfoReadFrom(v16, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_216;
      case 0x1Du:
        v16 = objc_alloc_init(IDSQRProtoUnAllocBindLeaveInfo);
        [a1 addLeftParticipants:v16];
        v104 = 0xAAAAAAAAAAAAAAAALL;
        v105 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoUnAllocBindLeaveInfoReadFrom(v16, a2))
        {
          goto LABEL_216;
        }

        goto LABEL_153;
      case 0x1Eu:
        v16 = objc_alloc_init(IDSQRProtoParticipantUpdateParticipantModeInfo);
        [a1 addUpdatedParticipants:v16];
        v104 = 0xAAAAAAAAAAAAAAAALL;
        v105 = 0xAAAAAAAAAAAAAAAALL;
        if (PBReaderPlaceMark() && IDSQRProtoParticipantUpdateParticipantModeInfoReadFrom(v16, a2))
        {
LABEL_153:
          PBReaderRecallMark();

LABEL_181:
          v85 = [a2 position];
          if (v85 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_216:

        return 0;
      case 0x1Fu:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        a1[204] |= 0x20u;
        while (1)
        {
          LOBYTE(v104) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v104 & 0x7F) << v36;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            LOBYTE(v42) = 0;
            goto LABEL_167;
          }
        }

        v42 = (v38 != 0) & ~[a2 hasError];
LABEL_167:
        a1[200] = v42;
        goto LABEL_181;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_181;
    }
  }
}

id sub_1A7C4CD98(uint64_t a1)
{
  v2 = MEMORY[0x1E69A6178];
  v3 = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
  v4 = [v2 sessionWithConfiguration:v3 queue:*(a1 + 32) requiresIDSHost:{objc_msgSend(*(a1 + 40), "requiresIDSHost")}];

  return v4;
}

id sub_1A7C4CE18(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69A60B0];
  v3 = a2;
  v4 = [[v2 alloc] initWithRemoteHost:0 delegate:v3];

  return v4;
}

void sub_1A7C4D070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A7C4D08C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_1A7E1DFFC(WeakRetained, v3, 1, 1);
}

void sub_1A7C4D0F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained updateContentsIfPossibleShouldForce:0];
}

void sub_1A7C4D690(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) networkLoader];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1A7C4D778;
  v3[3] = &unk_1E77E2130;
  v3[4] = *(a1 + 32);
  objc_copyWeak(&v4, &location);
  [v2 loadBagIfPossibleWithCompletion:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void sub_1A7C4D754(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A7C4D778(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v8 = *(a1 + 32);
    v7 = (a1 + 32);
    v9 = [v8 config];
    v10 = [v9 logCategory];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1E2C4(v7, v6, v10);
    }
  }

  else
  {
    sub_1A7E1E380(a1, v5);
  }
}

uint64_t IDSQRProtoSessionInfoResponseReadFrom(_BYTE *a1, void *a2)
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
        LOBYTE(v58) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v58 & 0x7F) << v5;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) > 7)
      {
        if (v14 > 9)
        {
          if (v14 == 10)
          {
            v23 = objc_alloc_init(IDSQRProtoParticipantUpdateParticipantModeInfo);
            [a1 addUpdatedParticipants:v23];
            v58 = 0xAAAAAAAAAAAAAAAALL;
            v59 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !IDSQRProtoParticipantUpdateParticipantModeInfoReadFrom(v23, a2))
            {
LABEL_126:

              return 0;
            }

            goto LABEL_87;
          }

          if (v14 == 16)
          {
            v31 = 0;
            v32 = 0;
            v33 = 0;
            a1[96] |= 2u;
            while (1)
            {
              LOBYTE(v58) = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v58 & 0x7F) << v31;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_98;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v33;
            }

LABEL_98:
            v44 = 60;
            goto LABEL_99;
          }
        }

        else
        {
          if (v14 == 8)
          {
            v23 = objc_alloc_init(IDSQRProtoAllocBindJoinInfo);
            [a1 addJoinedParticipants:v23];
            v58 = 0xAAAAAAAAAAAAAAAALL;
            v59 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !IDSQRProtoAllocBindJoinInfoReadFrom(v23, a2))
            {
              goto LABEL_126;
            }

            goto LABEL_87;
          }

          if (v14 == 9)
          {
            v23 = objc_alloc_init(IDSQRProtoUnAllocBindLeaveInfo);
            [a1 addLeftParticipants:v23];
            v58 = 0xAAAAAAAAAAAAAAAALL;
            v59 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !IDSQRProtoUnAllocBindLeaveInfoReadFrom(v23, a2))
            {
              goto LABEL_126;
            }

            goto LABEL_87;
          }
        }
      }

      else if (v14 > 2)
      {
        if (v14 == 3)
        {
          if (v13 != 2)
          {
            v46 = 0;
            v47 = 0;
            v48 = 0;
            while (1)
            {
              LOBYTE(v58) = 0;
              v49 = [a2 position] + 1;
              if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
              {
                v51 = [a2 data];
                [v51 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v48 |= (v58 & 0x7F) << v46;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v11 = v47++ >= 9;
              if (v11)
              {
                goto LABEL_121;
              }
            }

            [a2 hasError];
LABEL_121:
            PBRepeatedUInt64Add();
            goto LABEL_100;
          }

          v58 = 0xAAAAAAAAAAAAAAAALL;
          v59 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v37 = [a2 position];
            if (v37 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v38 = 0;
            v39 = 0;
            v40 = 0;
            while (1)
            {
              v60 = 0;
              v41 = [a2 position] + 1;
              if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
              {
                v43 = [a2 data];
                [v43 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v40 |= (v60 & 0x7F) << v38;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v11 = v39++ >= 9;
              if (v11)
              {
                goto LABEL_84;
              }
            }

            [a2 hasError];
LABEL_84:
            PBRepeatedUInt64Add();
          }

LABEL_90:
          PBReaderRecallMark();
          goto LABEL_100;
        }

        if (v14 == 4)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          a1[96] |= 1u;
          while (1)
          {
            LOBYTE(v58) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v58 & 0x7F) << v24;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_94;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v26;
          }

LABEL_94:
          v44 = 56;
LABEL_99:
          *&a1[v44] = v30;
          goto LABEL_100;
        }
      }

      else
      {
        if (v14 == 1)
        {
          v23 = objc_alloc_init(IDSQRProtoPeerPublishedStream);
          [a1 addPeerPublishedStreams:v23];
          v58 = 0xAAAAAAAAAAAAAAAALL;
          v59 = 0xAAAAAAAAAAAAAAAALL;
          if (!PBReaderPlaceMark() || !IDSQRProtoPeerPublishedStreamReadFrom(v23, a2))
          {
            goto LABEL_126;
          }

LABEL_87:
          PBReaderRecallMark();

          goto LABEL_100;
        }

        if (v14 == 2)
        {
          if (v13 != 2)
          {
            v52 = 0;
            v53 = 0;
            v54 = 0;
            while (1)
            {
              LOBYTE(v58) = 0;
              v55 = [a2 position] + 1;
              if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
              {
                v57 = [a2 data];
                [v57 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v54 |= (v58 & 0x7F) << v52;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v52 += 7;
              v11 = v53++ >= 9;
              if (v11)
              {
                goto LABEL_123;
              }
            }

            [a2 hasError];
LABEL_123:
            PBRepeatedUInt32Add();
            goto LABEL_100;
          }

          v58 = 0xAAAAAAAAAAAAAAAALL;
          v59 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v16 = [a2 position];
            if (v16 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              goto LABEL_90;
            }

            v17 = 0;
            v18 = 0;
            v19 = 0;
            while (1)
            {
              v60 = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v60 & 0x7F) << v17;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                goto LABEL_35;
              }
            }

            [a2 hasError];
LABEL_35:
            PBRepeatedUInt32Add();
          }
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_100:
      v45 = [a2 position];
    }

    while (v45 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoExperimentOverrideReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 5)
      {
        v28 = PBReaderReadString();
        v29 = *(a1 + 16);
        *(a1 + 16) = v28;
      }

      else if (v13 == 2)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v34 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v34 & 0x7F) << v21;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_42;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_42:
        *(a1 + 24) = v27;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v33 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v33 & 0x7F) << v14;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_46;
          }
        }

        v20 = [a2 hasError] ? 0 : v16;
LABEL_46:
        *(a1 + 8) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoErrorIndicationReadFrom(uint64_t a1, void *a2)
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
        v40 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            v42 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v42 & 0x7F) << v31;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_58;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v33;
          }

LABEL_58:
          v38 = 16;
        }

        else
        {
          if (v13 != 2)
          {
LABEL_53:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_68;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 48) |= 4u;
          while (1)
          {
            v41 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v41 & 0x7F) << v21;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_66;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v23;
          }

LABEL_66:
          v38 = 32;
        }

        *(a1 + v38) = v27;
      }

      else
      {
        if (v13 == 3)
        {
          v28 = PBReaderReadString();
          v29 = 40;
LABEL_43:
          v30 = *(a1 + v29);
          *(a1 + v29) = v28;

          goto LABEL_68;
        }

        if (v13 == 4)
        {
          v28 = PBReaderReadString();
          v29 = 24;
          goto LABEL_43;
        }

        if (v13 != 15)
        {
          goto LABEL_53;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          v43 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v43 & 0x7F) << v14;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_62;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_62:
        *(a1 + 8) = v20;
      }

LABEL_68:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoPutMaterialErrorIndicationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(IDSQRProtoMaterialOwner);
        objc_storeStrong((a1 + 16), v20);
        v23[0] = 0xAAAAAAAAAAAAAAAALL;
        v23[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoMaterialOwnerReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        *(a1 + 8) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoMaterialOwnerReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v35[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35[0] & 0x7F) << v5;
        if ((v35[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        if ((v12 & 7) == 2)
        {
          v35[0] = 0xAAAAAAAAAAAAAAAALL;
          v35[1] = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v21 = [a2 position];
            if (v21 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              v36 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v36 & 0x7F) << v22;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                goto LABEL_42;
              }
            }

            [a2 hasError];
LABEL_42:
            PBRepeatedInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          while (1)
          {
            LOBYTE(v35[0]) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v35[0] & 0x7F) << v28;
            if ((v35[0] & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              goto LABEL_60;
            }
          }

          [a2 hasError];
LABEL_60:
          PBRepeatedInt32Add();
        }
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v35[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v35[0] & 0x7F) << v13;
          if ((v35[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_48:
        *(a1 + 32) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A7C56344(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = +[IDSFoundationLog GlobalLink_oversize];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
    v4 = *(a1 + 32);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "self participant-id: %@, all participant-ids:%@.", &v5, 0x16u);
  }
}

uint64_t IDSQRProtoAllocBindRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  v5 = &OBJC_IVAR___IDSMessageSendMetric__metrics;
  v6 = &OBJC_IVAR___IDSMessageSendMetric__metrics;
  v7 = &OBJC_IVAR___IDSMessageSendMetric__metrics;
  v8 = &OBJC_IVAR___IDSMessageSendMetric__metrics;
  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      LOBYTE(v91) = 0;
      v12 = [a2 position] + 1;
      if (v12 >= [a2 position] && (v13 = objc_msgSend(a2, "position") + 1, v13 <= objc_msgSend(a2, "length")))
      {
        v14 = [a2 data];
        [v14 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v11 |= (v91 & 0x7F) << v9;
      if ((v91 & 0x80) == 0)
      {
        break;
      }

      v9 += 7;
      v15 = v10++ >= 9;
      if (v15)
      {
        v16 = 0;
        goto LABEL_16;
      }
    }

    v16 = [a2 hasError] ? 0 : v11;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v16 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v16 >> 3))
    {
      case 1u:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + v5[841]) |= 0x20u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v91 & 0x7F) << v17;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v15 = v18++ >= 9;
          if (v15)
          {
            v23 = 0;
LABEL_151:
            v80 = v6[842];
            goto LABEL_170;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

        goto LABEL_151;
      case 2u:
        v31 = PBReaderReadString();
        v32 = v7[843];
        goto LABEL_136;
      case 3u:
        v31 = PBReaderReadString();
        v32 = v8[844];
        goto LABEL_136;
      case 4u:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + v5[841]) |= 1u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v49 |= (v91 & 0x7F) << v47;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v15 = v48++ >= 9;
          if (v15)
          {
            v53 = 0;
            goto LABEL_155;
          }
        }

        if ([a2 hasError])
        {
          v53 = 0;
        }

        else
        {
          v53 = v49;
        }

LABEL_155:
        *(a1 + 32) = v53;
        goto LABEL_171;
      case 5u:
        if ((v16 & 7) == 2)
        {
          v91 = 0xAAAAAAAAAAAAAAAALL;
          v92 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v34 = [a2 position];
            if (v34 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v35 = 0;
            v36 = 0;
            v37 = 0;
            while (1)
            {
              v93 = 0;
              v38 = [a2 position] + 1;
              if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
              {
                v40 = [a2 data];
                [v40 getBytes:&v93 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v37 |= (v93 & 0x7F) << v35;
              if ((v93 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v15 = v36++ >= 9;
              if (v15)
              {
                goto LABEL_61;
              }
            }

            [a2 hasError];
LABEL_61:
            PBRepeatedUInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v82 = v5;
          v83 = v7;
          v84 = v6;
          v85 = 0;
          v86 = 0;
          v87 = 0;
          while (1)
          {
            LOBYTE(v91) = 0;
            v88 = [a2 position] + 1;
            if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
            {
              v90 = [a2 data];
              [v90 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v87 |= (v91 & 0x7F) << v85;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v85 += 7;
            v15 = v86++ >= 9;
            if (v15)
            {
              goto LABEL_184;
            }
          }

          [a2 hasError];
LABEL_184:
          PBRepeatedUInt32Add();
          v6 = v84;
          v7 = v83;
          v5 = v82;
          v8 = &OBJC_IVAR___IDSMessageSendMetric__metrics;
        }

        goto LABEL_171;
      case 6u:
        v24 = objc_alloc_init(IDSQRProtoSubscribedStream);
        [a1 addSubscribedStreams:v24];
        v91 = 0xAAAAAAAAAAAAAAAALL;
        v92 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoSubscribedStreamReadFrom(v24, a2))
        {
          goto LABEL_187;
        }

        goto LABEL_139;
      case 7u:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + v5[841]) |= 0x80u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v91 & 0x7F) << v54;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v15 = v55++ >= 9;
          if (v15)
          {
            LOBYTE(v60) = 0;
            goto LABEL_157;
          }
        }

        v60 = (v56 != 0) & ~[a2 hasError];
LABEL_157:
        *(a1 + 192) = v60;
        goto LABEL_171;
      case 8u:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        *(a1 + v5[841]) |= 4u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v64 = [a2 position] + 1;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v63 |= (v91 & 0x7F) << v61;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v15 = v62++ >= 9;
          if (v15)
          {
            v23 = 0;
            goto LABEL_161;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v63;
        }

LABEL_161:
        v80 = 104;
        goto LABEL_170;
      case 9u:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        *(a1 + v5[841]) |= 2u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v76 = [a2 position] + 1;
          if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
          {
            v78 = [a2 data];
            [v78 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v75 |= (v91 & 0x7F) << v73;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v15 = v74++ >= 9;
          if (v15)
          {
            v23 = 0;
            goto LABEL_169;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v75;
        }

LABEL_169:
        v80 = 56;
        goto LABEL_170;
      case 0xAu:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + v5[841]) |= 8u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v91 & 0x7F) << v67;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v15 = v68++ >= 9;
          if (v15)
          {
            v23 = 0;
            goto LABEL_165;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v69;
        }

LABEL_165:
        v80 = 108;
        goto LABEL_170;
      case 0xBu:
        v24 = objc_alloc_init(IDSQRProtoQuicConnectionInfo);
        [a1 addQuicConnectionInfo:v24];
        v91 = 0xAAAAAAAAAAAAAAAALL;
        v92 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoQuicConnectionInfoReadFrom(v24, a2))
        {
          goto LABEL_187;
        }

        goto LABEL_139;
      case 0xCu:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + v5[841]) |= 0x40u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v91 & 0x7F) << v41;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v15 = v42++ >= 9;
          if (v15)
          {
            v23 = 0;
            goto LABEL_147;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v43;
        }

LABEL_147:
        v80 = 168;
        goto LABEL_170;
      case 0xDu:
        v24 = objc_alloc_init(IDSQRProtoMaterial);
        objc_storeStrong((a1 + 64), v24);
        goto LABEL_110;
      case 0xEu:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + v5[841]) |= 0x10u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v91 & 0x7F) << v25;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v15 = v26++ >= 9;
          if (v15)
          {
            v23 = 0;
            goto LABEL_143;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v27;
        }

LABEL_143:
        v80 = 128;
LABEL_170:
        *(a1 + v80) = v23;
        goto LABEL_171;
      case 0xFu:
        v24 = objc_alloc_init(IDSQRProtoMaterial);
        [a1 addMaterials:v24];
LABEL_110:
        v91 = 0xAAAAAAAAAAAAAAAALL;
        v92 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoMaterialReadFrom(v24, a2))
        {
          goto LABEL_187;
        }

        goto LABEL_139;
      case 0x10u:
        v31 = PBReaderReadData();
        v32 = 120;
        goto LABEL_136;
      case 0x11u:
        v31 = PBReaderReadData();
        v32 = 40;
        goto LABEL_136;
      case 0x12u:
        v31 = PBReaderReadData();
        v32 = 136;
LABEL_136:
        v79 = *(a1 + v32);
        *(a1 + v32) = v31;

        goto LABEL_171;
      case 0x15u:
        v24 = objc_alloc_init(IDSQRProtoCallModeUpdateInfo);
        objc_storeStrong((a1 + 48), v24);
        v91 = 0xAAAAAAAAAAAAAAAALL;
        v92 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoCallModeUpdateInfoReadFrom(v24, a2))
        {
          goto LABEL_187;
        }

        goto LABEL_139;
      case 0x16u:
        v24 = objc_alloc_init(IDSQRProtoPluginControlRequest);
        [a1 addFastPluginRequests:v24];
        v91 = 0xAAAAAAAAAAAAAAAALL;
        v92 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoPluginControlRequestReadFrom(v24, a2))
        {
          goto LABEL_187;
        }

        goto LABEL_139;
      case 0x17u:
        v24 = objc_alloc_init(IDSQRProtoAllocBindStaleLink);
        [a1 addStaleLinks:v24];
        v91 = 0xAAAAAAAAAAAAAAAALL;
        v92 = 0xAAAAAAAAAAAAAAAALL;
        if (PBReaderPlaceMark() && IDSQRProtoAllocBindStaleLinkReadFrom(v24, a2))
        {
          goto LABEL_139;
        }

        goto LABEL_187;
      case 0x19u:
        v24 = objc_alloc_init(IDSQRProtoAllocBindTestOption);
        objc_storeStrong((a1 + 184), v24);
        v91 = 0xAAAAAAAAAAAAAAAALL;
        v92 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoAllocBindTestOptionReadFrom(v24, a2))
        {
          goto LABEL_187;
        }

        goto LABEL_139;
      case 0x1Au:
        v24 = objc_alloc_init(IDSQRProtoSessionExperiment);
        [a1 addSessionExperiments:v24];
        v91 = 0xAAAAAAAAAAAAAAAALL;
        v92 = 0xAAAAAAAAAAAAAAAALL;
        if (PBReaderPlaceMark() && IDSQRProtoSessionExperimentReadFrom(v24, a2))
        {
LABEL_139:
          PBReaderRecallMark();

LABEL_171:
          v81 = [a2 position];
          if (v81 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_187:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_171;
    }
  }
}

uint64_t IDSQRProtoPutMaterialMaterialsReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(IDSQRProtoMaterial);
        [a1 addMaterials:v13];
        v16[0] = 0xAAAAAAAAAAAAAAAALL;
        v16[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoMaterialReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1A7C5B828(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v8 = a2;
  v9 = a1;
  _IMLogString_V();
  v10 = _IMLogEventString_V();

  return v10;
}

uint64_t _IDSLog(int a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (IMShouldLog())
  {
    v11 = _IMLogString_V();
  }

  else
  {
    v11 = 0;
  }

  if (_IMWillLog())
  {
    _IMAlwaysLogV();
  }

  return v11;
}

uint64_t _IDSLogEvent(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = sub_1A7C5B828(a1, v9, v10, a4, a5);
  if (_IMWillLog())
  {
    _IMAlwaysLogV();
  }

  return v11;
}

uint64_t _IDSLogTransport_V(void *a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  if (IMShouldLog())
  {
    v9 = _IMLogString_V();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t _IDSLogTransport(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  if (IMShouldLog())
  {
    v14 = _IMLogString_V();
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t _IDSIsLoggingProfileInstalled()
{
  v0 = IMCopyAppValueForKey();
  if (v0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v1 = [v0 BOOLValue];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_1A7C5BD68()
{
  v0 = os_log_create("com.apple.IDS", "CloudKit");
  v1 = qword_1EB2BBF80;
  qword_1EB2BBF80 = v0;
}

void sub_1A7C5BDF0()
{
  v0 = os_log_create("com.apple.IDS", "accountIdentity");
  v1 = qword_1EB2B87B0;
  qword_1EB2B87B0 = v0;
}

void sub_1A7C5BE78()
{
  v0 = os_log_create("com.apple.IDS", "groupCrypto");
  v1 = qword_1EB2BBF90;
  qword_1EB2BBF90 = v0;
}

void sub_1A7C5BEBC()
{
  v0 = os_log_create("com.apple.IDS", "Delivery");
  v1 = qword_1EB2B87A0;
  qword_1EB2B87A0 = v0;
}

void sub_1A7C5BF00()
{
  v0 = os_log_create("com.apple.IDS", "Delivery-oversized");
  v1 = qword_1EB2B8780;
  qword_1EB2B8780 = v0;
}

void sub_1A7C5BF88()
{
  v0 = os_log_create("com.apple.IDS", "Delivery-KeyTransparency");
  v1 = qword_1EB2B8790;
  qword_1EB2B8790 = v0;
}

void sub_1A7C5C010()
{
  v0 = os_log_create("com.apple.IDS", "IDQuery");
  v1 = qword_1EB2B85D8;
  qword_1EB2B85D8 = v0;
}

void sub_1A7C5C054()
{
  v0 = os_log_create("com.apple.IDS", "UTunPeer");
  v1 = qword_1EB2B8878;
  qword_1EB2B8878 = v0;
}

void sub_1A7C5C098()
{
  v0 = os_log_create("com.apple.IDS", "UTunConnection");
  v1 = qword_1EB2B8888;
  qword_1EB2B8888 = v0;
}

void sub_1A7C5C0DC()
{
  v0 = os_log_create("com.apple.IDS", "LocalDeliveryQueue");
  v1 = qword_1EB2BBFA0;
  qword_1EB2BBFA0 = v0;
}

void sub_1A7C5C120()
{
  v0 = os_log_create("com.apple.IDS", "SPConnection");
  v1 = qword_1EB2B8598;
  qword_1EB2B8598 = v0;
}

void sub_1A7C5C1A8()
{
  v0 = os_log_create("com.apple.IDS", "OTRController");
  v1 = qword_1EB2BBFB0;
  qword_1EB2BBFB0 = v0;
}

void sub_1A7C5C230()
{
  v0 = os_log_create("com.apple.IDS", "Encryption");
  v1 = qword_1EB2BBFC0;
  qword_1EB2BBFC0 = v0;
}

void sub_1A7C5C2B8()
{
  v0 = os_log_create("com.apple.Transport", "BTLink");
  v1 = qword_1EB2BBFD0;
  qword_1EB2BBFD0 = v0;
}

void sub_1A7C5C2FC()
{
  v0 = os_log_create("com.apple.Transport", "UTun");
  v1 = qword_1EB2B8568;
  qword_1EB2B8568 = v0;
}

void sub_1A7C5C384()
{
  v0 = os_log_create("com.apple.IDS", "DeliveryController");
  v1 = qword_1EB2BBFE0;
  qword_1EB2BBFE0 = v0;
}

void sub_1A7C5C40C()
{
  v0 = os_log_create("com.apple.Registration", "StewieProvisioning");
  v1 = qword_1EB2B8578;
  qword_1EB2B8578 = v0;
}

void sub_1A7C5C494()
{
  v0 = os_log_create("com.apple.Transport", "StewieMessaging");
  v1 = qword_1EB2B8588;
  qword_1EB2B8588 = v0;
}

void sub_1A7C5C51C()
{
  v0 = os_log_create("com.apple.IDS", "IDSOffGridMessenger");
  v1 = qword_1EB2BB5C0;
  qword_1EB2BB5C0 = v0;
}

void sub_1A7C5C560()
{
  v0 = os_log_create("com.apple.IDS", "IDSOffGridStateManager");
  v1 = qword_1EB2BBC28;
  qword_1EB2BBC28 = v0;
}

void sub_1A7C5C5E8()
{
  v0 = os_log_create("com.apple.IDS", "IDSOffGridStateManager-oversize");
  v1 = qword_1EB2B8998;
  qword_1EB2B8998 = v0;
}

void sub_1A7C5C62C()
{
  v0 = os_log_create("com.apple.IDS", "IDSSKStatusClient");
  v1 = qword_1EB2B8978;
  qword_1EB2B8978 = v0;
}

void sub_1A7C5C6B4()
{
  v0 = os_log_create("com.apple.IDS", "Opportunistic");
  v1 = qword_1EB2B85E8;
  qword_1EB2B85E8 = v0;
}

void sub_1A7C5C73C()
{
  v0 = os_log_create("com.apple.IDS", "BonjourDeliveryController");
  v1 = qword_1EB2BBFF0;
  qword_1EB2BBFF0 = v0;
}

void sub_1A7C5C7C4()
{
  v0 = os_log_create("com.apple.IDS", "utilities");
  v1 = qword_1ED5DF700;
  qword_1ED5DF700 = v0;
}

void sub_1A7C5C84C()
{
  v0 = os_log_create("com.apple.Transport", "IPsecLink");
  v1 = qword_1EB2BC000;
  qword_1EB2BC000 = v0;
}

void sub_1A7C5C890()
{
  v0 = os_log_create("com.apple.IDS", "xpc");
  v1 = qword_1ED5DF788;
  qword_1ED5DF788 = v0;
}

void sub_1A7C5C918()
{
  v0 = os_log_create("com.apple.Transport", "IDSSession");
  v1 = qword_1EB2BC010;
  qword_1EB2BC010 = v0;
}

void sub_1A7C5C9A0()
{
  v0 = os_log_create("com.apple.Transport", "IDSDSession");
  v1 = qword_1EB2B8A08;
  qword_1EB2B8A08 = v0;
}

void sub_1A7C5CA28()
{
  v0 = os_log_create("com.apple.Transport", "GroupStatusNotification-oversize");
  v1 = qword_1EB2BC020;
  qword_1EB2BC020 = v0;
}

void sub_1A7C5CAB0()
{
  v0 = os_log_create("com.apple.Transport", "QRAllocator");
  v1 = qword_1EB2B88F8;
  qword_1EB2B88F8 = v0;
}

void sub_1A7C5CB38()
{
  v0 = os_log_create("com.apple.Transport", "QRAllocator-oversized");
  v1 = qword_1EB2B88E8;
  qword_1EB2B88E8 = v0;
}

void sub_1A7C5CBC0()
{
  v0 = os_log_create("com.apple.Transport", "Stun");
  v1 = qword_1EB2B88A8;
  qword_1EB2B88A8 = v0;
}

void sub_1A7C5CC48()
{
  v0 = os_log_create("com.apple.Transport", "SME");
  v1 = qword_1EB2BC030;
  qword_1EB2BC030 = v0;
}

void sub_1A7C5CCD0()
{
  v0 = os_log_create("com.apple.Transport", "SME-oversize");
  v1 = qword_1EB2BC040;
  qword_1EB2BC040 = v0;
}

void sub_1A7C5CD58()
{
  v0 = os_log_create("com.apple.Transport", "Metrics");
  v1 = qword_1EB2B8948;
  qword_1EB2B8948 = v0;
}

void sub_1A7C5CDE0()
{
  v0 = os_log_create("com.apple.Transport", "GL");
  v1 = qword_1EB2B8A58;
  qword_1EB2B8A58 = v0;
}

void sub_1A7C5CE68()
{
  v0 = os_log_create("com.apple.Transport", "GL-oversize");
  v1 = qword_1EB2B8A48;
  qword_1EB2B8A48 = v0;
}

void sub_1A7C5CEF0()
{
  v0 = os_log_create("com.apple.Transport", "FTGL");
  v1 = qword_1EB2BC050;
  qword_1EB2BC050 = v0;
}

void sub_1A7C5CF78()
{
  v0 = os_log_create("com.apple.Transport", "GFTGL");
  v1 = qword_1EB2B8A68;
  qword_1EB2B8A68 = v0;
}

void sub_1A7C5D000()
{
  v0 = os_log_create("com.apple.Transport", "NonFTGL");
  v1 = qword_1EB2B8918;
  qword_1EB2B8918 = v0;
}

void sub_1A7C5D088()
{
  v0 = os_log_create("com.apple.Transport", "SessionController");
  v1 = qword_1EB2B88B8;
  qword_1EB2B88B8 = v0;
}

void sub_1A7C5D110()
{
  v0 = os_log_create("com.apple.IDS", "RealTimeEncryption");
  v1 = qword_1EB2BB580;
  qword_1EB2BB580 = v0;
}

void sub_1A7C5D198()
{
  v0 = os_log_create("com.apple.IDS", "RealTimeEncryption-oversize");
  v1 = qword_1EB2B88C8;
  qword_1EB2B88C8 = v0;
}

void sub_1A7C5D220()
{
  v0 = os_log_create("com.apple.IDS", "StableEncryption");
  v1 = qword_1EB2BC060;
  qword_1EB2BC060 = v0;
}

void sub_1A7C5D2A8()
{
  v0 = os_log_create("com.apple.IDS", "GroupSessionDataCryptor");
  v1 = qword_1EB2B8A38;
  qword_1EB2B8A38 = v0;
}

void sub_1A7C5D2EC()
{
  v0 = os_log_create("com.apple.IDS", "IDSDMessageStore");
  v1 = qword_1EB2B89B8;
  qword_1EB2B89B8 = v0;
}

void sub_1A7C5D330()
{
  v0 = os_log_create("com.apple.Registration", "KeyTransparency");
  v1 = qword_1EB2BB590;
  qword_1EB2BB590 = v0;
}

void sub_1A7C5D3B8()
{
  v0 = os_log_create("com.apple.Registration", "FeatureToggler");
  v1 = qword_1EB2BC070;
  qword_1EB2BC070 = v0;
}

void sub_1A7C5D3FC()
{
  v0 = os_log_create("com.apple.magnetpacketlog", "IDS");
  v1 = qword_1ED5DF770;
  qword_1ED5DF770 = v0;
}

void sub_1A7C5D484()
{
  v0 = os_log_create("com.apple.Transport", "IDSUDPLink");
  v1 = qword_1EB2B8958;
  qword_1EB2B8958 = v0;
}

void sub_1A7C5D50C()
{
  v0 = os_log_create("com.apple.Transport", "IDSNWLink");
  v1 = qword_1EB2B89A8;
  qword_1EB2B89A8 = v0;
}

void sub_1A7C5D594()
{
  v0 = os_log_create("com.apple.Transport", "QRProto");
  v1 = qword_1EB2BC080;
  qword_1EB2BC080 = v0;
}

void sub_1A7C5D61C()
{
  v0 = os_log_create("com.apple.Transport", "QRProto-oversize");
  v1 = qword_1EB2B88D8;
  qword_1EB2B88D8 = v0;
}

void sub_1A7C5D6A4()
{
  v0 = os_log_create("com.apple.IDS", "IDSInterface");
  v1 = qword_1EB2BC090;
  qword_1EB2BC090 = v0;
}

void sub_1A7C5D72C()
{
  v0 = os_log_create("com.apple.IDS", "ConnectivityMonitor");
  v1 = qword_1EB2BC0A0;
  qword_1EB2BC0A0 = v0;
}

void sub_1A7C5D7B4()
{
  v0 = os_log_create("com.apple.IDS", "TransportLevelAgent");
  v1 = qword_1EB2B8898;
  qword_1EB2B8898 = v0;
}

void sub_1A7C5D7F8()
{
  v0 = os_log_create("com.apple.IDS", "Multiplexer");
  v1 = qword_1EB2B8938;
  qword_1EB2B8938 = v0;
}

void sub_1A7C5D880()
{
  v0 = os_log_create("com.apple.IDS", "IDSServerMessaging");
  v1 = qword_1EB2BC0B0;
  qword_1EB2BC0B0 = v0;
}

void sub_1A7C5D908()
{
  v0 = os_log_create("com.apple.IDS", "ClientChannel");
  v1 = qword_1EB2B8AB8;
  qword_1EB2B8AB8 = v0;
}

void sub_1A7C5D990()
{
  v0 = os_log_create("com.apple.IDS", "IDSNexusAgent");
  v1 = qword_1EB2B8AA8;
  qword_1EB2B8AA8 = v0;
}

void sub_1A7C5DA18()
{
  v0 = os_log_create("com.apple.IDS", "IDSNexusManager");
  v1 = qword_1EB2B8A98;
  qword_1EB2B8A98 = v0;
}

void sub_1A7C5DAA0()
{
  v0 = os_log_create("com.apple.IDS", "IDSFirewall");
  v1 = qword_1EB2B89E0;
  qword_1EB2B89E0 = v0;
}

void sub_1A7C5DB28()
{
  v0 = os_log_create("com.apple.IDS", "NWPathUtils");
  v1 = qword_1EB2BC0C0;
  qword_1EB2BC0C0 = v0;
}

void sub_1A7C5DBB0()
{
  v0 = os_log_create("com.apple.IDS", "GroupSessionKV");
  v1 = qword_1EB2BC0D0;
  qword_1EB2BC0D0 = v0;
}

void sub_1A7C5DC38()
{
  v0 = os_log_create("com.apple.IDS", "System");
  v1 = qword_1EB2BC0E0;
  qword_1EB2BC0E0 = v0;
}

void sub_1A7C5DCC0()
{
  v0 = os_log_create("com.apple.IDS", "SimulatorProxy");
  v1 = qword_1EB2BC0F0;
  qword_1EB2BC0F0 = v0;
}

void sub_1A7C5DD48()
{
  v0 = os_log_create("com.apple.IDS", "ContactsUtilities");
  v1 = qword_1EB2B8A88;
  qword_1EB2B8A88 = v0;
}

void sub_1A7C5DDD0()
{
  v0 = os_log_create("com.apple.IDS", "IDSPinnedIdentity");
  v1 = qword_1EB2BB5B0;
  qword_1EB2BB5B0 = v0;
}

void sub_1A7C5DE14()
{
  v0 = os_log_create(*MEMORY[0x1E69A6548], "PeerLookup_DBCache");
  v1 = qword_1EB2B8908;
  qword_1EB2B8908 = v0;
}

void sub_1A7C5DEA0()
{
  v0 = os_log_create("com.apple.IDS", "DiagnosticInfoHandler");
  v1 = qword_1EB2B8A78;
  qword_1EB2B8A78 = v0;
}

uint64_t IDSQRProtoUnAllocBindRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(IDSQRProtoMaterial);
        objc_storeStrong((a1 + 8), v20);
        v23[0] = 0xAAAAAAAAAAAAAAAALL;
        v23[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoMaterialReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        *(a1 + 16) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t (*sub_1A7C5E8D0())(void, void)
{
  result = MEMORY[0x1AC5631C0]("PLShouldLogRegisteredEvent", @"PowerLog");
  off_1EB2B8968 = result;
  return result;
}

uint64_t (*sub_1A7C5E900())(void, void, void, void)
{
  result = MEMORY[0x1AC5631C0]("PLLogTimeSensitiveRegisteredEvent", @"PowerLog");
  off_1EB2B8988 = result;
  return result;
}

uint64_t IDSQRProtoInfoRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoPutMaterialPutMaterialReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_1A7C61208(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = a4;
  [v5 pnrReqList];

  (*(*(a1 + 40) + 16))();
}

uint64_t IDSQRProtoSessionInfoSessionInfoReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSDebuggingShouldFakePhoneNumberChallenge()
{
  v0 = [MEMORY[0x1E69A60F0] sharedInstance];
  v1 = [v0 isInternalInstall];

  if (!v1)
  {
    return 0;
  }

  result = IMGetDomainBoolForKey();
  if (result)
  {
    v3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "*********** Faking phone number challenge, switch is ON !! ***********", v4, 2u);
    }

    return 1;
  }

  return result;
}

uint64_t IDSDebuggingShouldFakeEmailChallenge()
{
  v0 = [MEMORY[0x1E69A60F0] sharedInstance];
  v1 = [v0 isInternalInstall];

  if (!v1)
  {
    return 0;
  }

  result = IMGetDomainBoolForKey();
  if (result)
  {
    v3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "*********** Faking email challenge, switch is ON !! ***********", v4, 2u);
    }

    return 1;
  }

  return result;
}

uint64_t IDSDebuggingFakeIdentityRegeneration()
{
  v0 = [MEMORY[0x1E69A60F0] sharedInstance];
  v1 = [v0 isInternalInstall];

  if (!v1)
  {
    return 0;
  }

  result = IMGetDomainBoolForKey();
  if (result)
  {
    v3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "*********** Faking identity regeneration, switch is ON !! ***********", v4, 2u);
    }

    return 1;
  }

  return result;
}

uint64_t IDSDebuggingShouldForcePhoneRepairTimer()
{
  v0 = [MEMORY[0x1E69A60F0] sharedInstance];
  v1 = [v0 isInternalInstall];

  if (!v1)
  {
    return 0;
  }

  result = IMGetDomainBoolForKey();
  if (result)
  {
    v3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "*********** Override phone repair timer, switch is ON !! ***********", v4, 2u);
    }

    return 1;
  }

  return result;
}

double IDSDebuggingPhoneRepairTimerOverride()
{
  v0 = [MEMORY[0x1E69A60F0] sharedInstance];
  v1 = [v0 isInternalInstall];

  v2 = 0.0;
  if (v1 && IDSDebuggingShouldForcePhoneRepairTimer())
  {
    return IMGetDomainIntForKey();
  }

  return v2;
}

uint64_t IDSDebuggingShouldOverrideGDRResponseCode()
{
  v0 = [MEMORY[0x1E69A60F0] sharedInstance];
  v1 = [v0 isInternalInstall];

  if (!v1)
  {
    return 0;
  }

  result = IMGetDomainBoolForKey();
  if (result)
  {
    v3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "*********** Faking GDR response code, switch is ON !! ***********", v4, 2u);
    }

    return 1;
  }

  return result;
}

uint64_t IDSDebuggingGDRReponseCodeOverride()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69A60F0] sharedInstance];
  v1 = [v0 isInternalInstall];

  if (!v1)
  {
    return 0;
  }

  v2 = IMGetDomainIntForKey();
  if (v2 >= 1)
  {
    v3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = v2;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "*********** Override GDR response code to %ld !! ***********", &v5, 0xCu);
    }
  }

  return v2;
}

uint64_t IDSDebuggingShouldPrintBagData()
{
  v0 = [MEMORY[0x1E69A60F0] sharedInstance];
  v1 = [v0 isInternalInstall];

  if (!v1)
  {
    return 0;
  }

  result = IMGetDomainBoolForKey();
  if (result)
  {
    v3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "*********** Printing bag data, switch is ON !! ***********", v4, 2u);
    }

    return 1;
  }

  return result;
}

uint64_t IDSQRProtoStatsStatsReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

id IDSGetUUIDDataFromNSUUID(void *a1)
{
  v2[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2[0] = 0xAAAAAAAAAAAAAAAALL;
    v2[1] = 0xAAAAAAAAAAAAAAAALL;
    [a1 getUUIDBytes:v2];
    a1 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v2 length:16];
  }

  return a1;
}

uint64_t IDSEncryptionTypeFromEncryptionTypeString(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 isEqualToString:@"otr"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"pair"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"pair-ec"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"pair-tetra"])
  {
    v2 = 5;
  }

  else
  {
    if (([v1 isEqualToString:@"none"] & 1) == 0)
    {
      if ([v1 isEqualToString:@"engram"])
      {
        v2 = 3;
        goto LABEL_15;
      }

      if ([v1 isEqualToString:@"paddy"])
      {
        v2 = 6;
        goto LABEL_15;
      }

      if (v1)
      {
        v4 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v21 = v1;
          _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_ERROR, "Invalid encryption type found -- ignoring {encryptionType: %@}", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSWarnV(@"IDSFoundation", @"Invalid encryption type found -- ignoring {encryptionType: %@}", v5, v6, v7, v8, v9, v10, v1);
          _IDSLogV(0, @"IDSFoundation", @"Warning", @"Invalid encryption type found -- ignoring {encryptionType: %@}", v11, v12, v13, v14, v1);
          _IDSLogTransport(@"Warning", @"IDS", @"Invalid encryption type found -- ignoring {encryptionType: %@}", v15, v16, v17, v18, v19, v1);
        }
      }
    }

    v2 = 2;
  }

LABEL_15:

  return v2;
}

uint64_t _IDSDaemonIsRunning(uint64_t a1, uint64_t a2)
{
  if (qword_1EB2BC100 != -1)
  {
    sub_1A7E1EDE4();
  }

  return byte_1EB2BC10C;
}

void sub_1A7C62BB8()
{
  IMUserScopedNotification();
  v0 = im_primary_queue();
  im_notify_register_dispatch();

  byte_1EB2BC10C = 0;
}

uint64_t IDSIsScreenSharingRegistrationServiceType(__CFString *a1)
{
  if (@"com.apple.private.alloy.invitation.screensharing" == a1)
  {
    return 1;
  }

  else
  {
    return [(__CFString *)a1 isEqualToString:?];
  }
}

uint64_t IDSIsCallingRegistrationServiceType(__CFString *a1)
{
  if (@"Calling" == a1)
  {
    return 1;
  }

  else
  {
    return [(__CFString *)a1 isEqualToString:?];
  }
}

uint64_t IDSIsFaceTimeRegistrationServiceType(__CFString *a1)
{
  if (@"FaceTime" == a1)
  {
    return 1;
  }

  else
  {
    return [(__CFString *)a1 isEqualToString:?];
  }
}

uint64_t IDSIsMultiwayRegistrationServiceType(__CFString *a1)
{
  if (@"Multiway" == a1)
  {
    return 1;
  }

  else
  {
    return [(__CFString *)a1 isEqualToString:?];
  }
}

uint64_t IDSIsAnyFaceTimeRelatedRegistrationServiceType(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (@"Multiway" == v1 || ([(__CFString *)v1 isEqualToString:?]& 1) != 0 || @"FaceTime" == v2 || ([(__CFString *)v2 isEqualToString:?]& 1) != 0 || @"Calling" == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(__CFString *)v2 isEqualToString:?];
  }

  return v3;
}

uint64_t IDSIsiMessageRegistrationServiceType(__CFString *a1)
{
  if (@"iMessage" == a1)
  {
    return 1;
  }

  else
  {
    return [(__CFString *)a1 isEqualToString:?];
  }
}

uint64_t IDSIsFaceTimeOriMessageRegistration(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (@"FaceTime" == v1 || ([(__CFString *)v1 isEqualToString:?]& 1) != 0 || @"iMessage" == v2 || ([(__CFString *)v2 isEqualToString:?]& 1) != 0 || @"Calling" == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(__CFString *)v2 isEqualToString:?];
  }

  return v3;
}

__CFString *_StringForIDSRegistrationType(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E77E2470[a1];
  }
}

__CFString *_UIStringForIDSRegistrationServiceType(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (@"iMessage" == v1 || [(__CFString *)v1 isEqualToString:?])
  {

    v3 = @"iMessage";
  }

  else if (@"Calling" == v2 || ([(__CFString *)v2 isEqualToString:?]& 1) != 0 || @"FaceTime" == v2 || ([(__CFString *)v2 isEqualToString:?]& 1) != 0 || @"Multiway" == v2 || [(__CFString *)v2 isEqualToString:?])
  {

    v3 = @"FaceTime";
  }

  else
  {
    v5 = [(__CFString *)v2 hasPrefix:@"com.apple.private.alloy.itunes"];

    if (v5)
    {
      v3 = @"iTunes";
    }

    else
    {
      v3 = @"iCloud";
    }
  }

  return v3;
}

__CFString *_IDSServiceFromRegistrationServiceType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToIgnoringCase:@"iMessage"])
  {
    v2 = @"com.apple.madrid";
  }

  else if ([v1 isEqualToIgnoringCase:@"FaceTime"])
  {
    v2 = @"com.apple.ess";
  }

  else if ([v1 isEqualToIgnoringCase:@"Calling"])
  {
    v2 = @"com.apple.private.ac";
  }

  else if ([v1 isEqualToIgnoringCase:@"Multiway"])
  {
    v2 = @"com.apple.private.alloy.facetime.multi";
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

__CFString *_KeychainRegistrationServiceTypeForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToIgnoringCase:@"com.apple.Calling"] & 1) != 0 || (objc_msgSend(v1, "isEqualToIgnoringCase:", @"Calling"))
  {
    v2 = @"com.apple.private.ac";
  }

  else
  {
    v2 = _IDSRegistrationServiceTypeForString(v1);
  }

  return v2;
}

__CFString *_IDSRegistrationServiceIdentifierFromServiceType(void *a1)
{
  v1 = a1;
  if ([(__CFString *)v1 length])
  {
    if (@"iMessage" == v1 || ([(__CFString *)v1 isEqualToString:?]& 1) != 0)
    {
      v2 = @"com.apple.madrid";
    }

    else if (@"Calling" == v1 || ([(__CFString *)v1 isEqualToString:?]& 1) != 0)
    {
      v2 = @"com.apple.private.ac";
    }

    else if (@"FaceTime" == v1 || ([(__CFString *)v1 isEqualToString:?]& 1) != 0)
    {
      v2 = @"com.apple.ess";
    }

    else if (@"Multiway" == v1 || ([(__CFString *)v1 isEqualToString:?]& 1) != 0)
    {
      v2 = @"com.apple.private.alloy.facetime.multi";
    }

    else
    {
      v2 = v1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _IDSRegistrationKeychainItemNameForIdentifierAndName(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v3, v4];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

void _IDSAppleRegistrationCopyKeyPair(void *a1, CFTypeRef *a2, CFTypeRef *a3, id *a4, _BYTE *a5, _BYTE *a6)
{
  v80 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = v11;
  if (a2 && a3 && a4 && a5 && a6)
  {
    v73 = a4;
    v13 = _IDSRegistrationKeychainItemNameForIdentifierAndName(v11, @"identity-rsa-public-key");
    IMGetKeychainData();
    v14 = 0;

    v15 = _IDSRegistrationKeychainItemNameForIdentifierAndName(v12, @"identity-rsa-private-key");
    v16 = IMGetKeychainData();
    v74 = 0;

    if ((v16 & 1) == 0)
    {
      v17 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, " ** No private key found, generating one", buf, 2u);
      }
    }

    v18 = _IDSRegistrationKeychainItemNameForIdentifierAndName(v12, @"identity-rsa-key-pair-signature-v1");
    v19 = IMGetKeychainData();
    v72 = 0;

    if ((v19 & 1) == 0)
    {
      v20 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v12;
        _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, " ** No signature found, generating one [Identifier: %@]", buf, 0xCu);
      }
    }

    if (*a6 == 1)
    {
      v21 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "Waiting for keychain upgrade to be complete before loading key pair", buf, 2u);
      }

      goto LABEL_93;
    }

    *a6 = 0;
    if (!v74)
    {
      goto LABEL_52;
    }

    [v74 bytes];
    [v74 length];
    RSAPrivateKey = SecKeyCreateRSAPrivateKey();
    *a3 = RSAPrivateKey;
    if (RSAPrivateKey)
    {
      v23 = SecKeyCopyPublicBytes();
      if (v23)
      {
        v24 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *&buf[4] = v23;
          *&buf[8] = 2112;
          *&buf[10] = v12;
          _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, " => Error loading publicKey: %d [Identifier: %@]", buf, 0x12u);
        }
      }
    }

    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v72 encoding:4];
    v26 = *v73;
    *v73 = v25;

    if (*a2)
    {
      Size = SecKeyGetSize();
      v28 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v12;
        *&buf[12] = 2048;
        *&buf[14] = Size;
        _os_log_impl(&dword_1A7AD9000, v28, OS_LOG_TYPE_DEFAULT, " => Loaded Identity public key [Identifier: %@] (Key Size: %lu)", buf, 0x16u);
      }

      if (Size <= 0x7FF)
      {
        v29 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          sub_1A7E1EDF8();
        }

        if (*a3)
        {
          CFRelease(*a3);
          *a3 = 0;
        }
      }
    }

    else
    {
      v30 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v12;
        _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, " ** No Identity public key found [Identifier: %@]", buf, 0xCu);
      }
    }

    v31 = [*v73 length];
    v32 = [MEMORY[0x1E69A6138] registration];
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    if (v31)
    {
      if (!v33)
      {
        goto LABEL_40;
      }

      v34 = *v73;
      *buf = 138412546;
      *&buf[4] = v34;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      v35 = " => Loaded Identity key pair signature: %@ [Identifier: %@]";
      v36 = v32;
      v37 = 22;
    }

    else
    {
      if (!v33)
      {
        goto LABEL_40;
      }

      *buf = 138412290;
      *&buf[4] = v12;
      v35 = " ** No Identity key pair signature found [Identifier: %@]";
      v36 = v32;
      v37 = 12;
    }

    _os_log_impl(&dword_1A7AD9000, v36, OS_LOG_TYPE_DEFAULT, v35, buf, v37);
LABEL_40:

    if (*a3)
    {
      v38 = SecKeyGetSize();
      v39 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v12;
        *&buf[12] = 2048;
        *&buf[14] = v38;
        _os_log_impl(&dword_1A7AD9000, v39, OS_LOG_TYPE_DEFAULT, " => Loaded Identity private key  [Identifier: %@](Key Size: %lu)", buf, 0x16u);
      }

      if (v38 <= 0x7FF)
      {
        v40 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
        {
          sub_1A7E1EDF8();
        }

        if (*a2)
        {
          CFRelease(*a2);
          *a2 = 0;
        }

        *a5 = 0;
LABEL_79:
        if (*a2)
        {
          if (*a3 && *v73)
          {
            goto LABEL_94;
          }

          CFRelease(*a2);
          *a2 = 0;
        }

        v71 = v14;
        if (*a3)
        {
          CFRelease(*a3);
          *a3 = 0;
        }

        v55 = MEMORY[0x1E695DF20];
        v56 = *MEMORY[0x1E697ADA8];
        v57 = *MEMORY[0x1E697AD68];
        v58 = *MEMORY[0x1E695E4C0];
        v59 = *MEMORY[0x1E697AD18];
        v60 = [MEMORY[0x1E696AD98] numberWithInt:2048];
        v21 = [v55 dictionaryWithObjectsAndKeys:{v56, v57, v58, v59, v60, *MEMORY[0x1E697AD50], 0}];

        Pair = SecKeyGeneratePair(v21, a2, a3);
        v62 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          v63 = *a2;
          v64 = *a3;
          *buf = 134218754;
          *&buf[4] = v63;
          *&buf[12] = 2048;
          *&buf[14] = v64;
          v76 = 2112;
          v77 = v12;
          v78 = 2048;
          v79 = Pair;
          _os_log_impl(&dword_1A7AD9000, v62, OS_LOG_TYPE_DEFAULT, " Generated public key: %p   private key: %p  [Identifier: %@]  result: %ld", buf, 0x2Au);
        }

        v14 = v71;
        if (*a2 && *a3)
        {
          v65 = MEMORY[0x1AC5635A0]();
          if (CFDictionaryGetValue(v65, *MEMORY[0x1E697B3C0]))
          {
            v66 = _IDSRegistrationKeychainItemNameForIdentifierAndName(v12, @"identity-rsa-private-key");
            IMSetKeychainData();

            v67 = [MEMORY[0x1E696AEC0] stringGUID];
            v68 = *v73;
            *v73 = v67;

            v69 = [*v73 dataUsingEncoding:4];
            v70 = _IDSRegistrationKeychainItemNameForIdentifierAndName(v12, @"identity-rsa-key-pair-signature-v1");
            IMSetKeychainData();

            v14 = v71;
          }

          if (v65)
          {
            CFRelease(v65);
          }
        }

LABEL_93:

LABEL_94:
        goto LABEL_95;
      }
    }

    else
    {
      v41 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v12;
        _os_log_impl(&dword_1A7AD9000, v41, OS_LOG_TYPE_DEFAULT, " ** No Identity private key found [Identifier: %@]", buf, 0xCu);
      }
    }

LABEL_52:
    v42 = *a2;
    *a5 = 0;
    if (v42 && *a3)
    {
      *buf = 0;
      v43 = [@"KeyVerificationData" dataUsingEncoding:4];

      v44 = *MEMORY[0x1E697B1C0];
      Signature = SecKeyCreateSignature(*a3, *MEMORY[0x1E697B1C0], v43, buf);
      if (*buf)
      {
        CFRelease(*buf);
      }

      else if (!SecKeyVerifySignature(*a2, v44, v43, Signature, buf) || *buf)
      {
        if (*a2)
        {
          CFRelease(*a2);
          *a2 = 0;
        }

        if (*a3)
        {
          CFRelease(*a3);
          *a3 = 0;
        }

        v46 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
        {
          sub_1A7E1EE60(buf, v46);
        }
      }

      if (v43)
      {
        CFRelease(v43);
      }

      if (Signature)
      {
        CFRelease(Signature);
      }

      if (*a2 && *a3 && ![*v73 length])
      {
        *a5 = 1;
        v47 = [MEMORY[0x1E696AEC0] stringGUID];
        v48 = *v73;
        *v73 = v47;

        v49 = [*v73 dataUsingEncoding:4];
        v50 = _IDSRegistrationKeychainItemNameForIdentifierAndName(v12, @"identity-rsa-key-pair-signature-v1");
        v51 = IMSetKeychainData();

        if ((v51 & 1) == 0)
        {
          v52 = [MEMORY[0x1E69A6138] warning];
          if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
          {
            sub_1A7E1EEF8();
          }
        }

        v53 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v54 = *v73;
          *buf = 138412546;
          *&buf[4] = v54;
          *&buf[12] = 2112;
          *&buf[14] = v12;
          _os_log_impl(&dword_1A7AD9000, v53, OS_LOG_TYPE_DEFAULT, " => We have good public and private keys, generating and migrating identity key pair signature: %@ [Identifier: %@]", buf, 0x16u);
        }
      }
    }

    goto LABEL_79;
  }

LABEL_95:
}

void sub_1A7C640E8()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"tel:", @"mailto:", @"token:", @"self-token:", @"accessory:", @"device:", @"urn:ck:", @"urn:biz:", @"__IDS_DEFAULT_PAIRED_DEVICE__", @"____--SENTINEL--SELF--ALIAS--V0--____", @"pseud:", @"temp:", @"dev:", 0}];
  v1 = qword_1EB2BBC38;
  qword_1EB2BBC38 = v0;
}

id _IDSCopyIDForOptionalTokenWithURI(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length])
  {
    v5 = _IDSCopyIDForTokenWithURI(v3, v4);
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

id _IDSCopyIDForAccessory(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if ([v1 hasPrefix:@"accessory:"])
    {
      v2 = v1;
    }

    else
    {
      v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"accessory:%@", v1];
    }

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id _IDSCopyIDForBusinessID(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 lowercaseString];

    if ([v2 hasPrefix:@"urn:biz:"])
    {
      v3 = v2;
      v1 = v3;
    }

    else
    {
      v4 = [v2 hasPrefix:@"biz:"];
      v5 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (v4)
      {
        v6 = [v5 initWithFormat:@"%@%@", @"urn:", v2];
      }

      else
      {
        v6 = [v5 initWithFormat:@"%@%@", @"urn:biz:", v2];
      }

      v3 = v6;
      v1 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void IDSFetchPhoneNumber()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = _IDSCopyMyPhoneNumbers(1);
  v1 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 138412290;
    v3 = v0;
    _os_log_impl(&dword_1A7AD9000, v1, OS_LOG_TYPE_DEFAULT, "Phone numbers: %@", &v2, 0xCu);
  }
}

uint64_t _IDSFZIDTypeFromIDSIDType(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return -1;
  }

  else
  {
    return qword_1A7E40EB0[a1];
  }
}

uint64_t _IDSIDSIDTypeFromFZIDType(unint64_t a1)
{
  if (a1 > 5)
  {
    return -1;
  }

  else
  {
    return qword_1A7E40F08[a1];
  }
}

__CFString *IDSAccountKeyForServerKey(void *a1)
{
  v1 = a1;
  if ([(__CFString *)v1 isEqualToString:@"handles"])
  {
    v2 = IDSAuthenticationDictionaryKeyHandles;
LABEL_16:
    v3 = *v2;
    goto LABEL_17;
  }

  if ([(__CFString *)v1 isEqualToString:@"email-address"])
  {
    v2 = IDSAuthenticationDictionaryKeyEmailAddress;
    goto LABEL_16;
  }

  if ([(__CFString *)v1 isEqualToString:@"auth-token"])
  {
    v2 = IDSAuthenticationDictionaryKeyAuthToken;
    goto LABEL_16;
  }

  if ([(__CFString *)v1 isEqualToString:@"self-handle"])
  {
    v2 = IDSAuthenticationDictionaryKeySelfHandle;
    goto LABEL_16;
  }

  if ([(__CFString *)v1 isEqualToString:@"invitation-context"])
  {
    v2 = IDSAuthenticationDictionaryKeyInvitationContext;
    goto LABEL_16;
  }

  if ([(__CFString *)v1 isEqualToString:@"apple-id"])
  {
    v2 = IDSAuthenticationDictionaryKeyAppleID;
    goto LABEL_16;
  }

  if ([(__CFString *)v1 isEqualToString:@"profile-id"]|| [(__CFString *)v1 isEqualToString:@"realm-user-id"])
  {
    v2 = IDSAuthenticationDictionaryKeyProfileID;
    goto LABEL_16;
  }

  if ([(__CFString *)v1 isEqualToString:@"account-exists"])
  {
    v2 = IDSAuthenticationDictionaryKeyAccountExists;
    goto LABEL_16;
  }

  if ([(__CFString *)v1 isEqualToString:@"status"])
  {
    v2 = IDSAuthenticationDictionaryKeyStatus;
    goto LABEL_16;
  }

  if ([(__CFString *)v1 isEqualToString:@"alert"])
  {
    v2 = IDSAuthenticationDictionaryKeyAlert;
    goto LABEL_16;
  }

  v6 = [MEMORY[0x1E69A6138] warning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E1F200();
  }

  v3 = v1;
LABEL_17:
  v4 = v3;

  return v3;
}

uint64_t IDSAuthenticationDelegateShouldStoreKey(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  [MEMORY[0x1E695DEC8] arrayWithObjects:{@"auth-token", @"auth-token", 0}];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v9 + 1) + 8 * v6) caseInsensitiveCompare:v1])
        {
          v7 = 0;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

void IDSAuthenticationDelegateUpdateTimeOfLastRequestPost()
{
  v0 = [MEMORY[0x1E69A6180] sharedDefaults];
  v6 = [v0 appValueForKey:@"AuthenticationDelegateResponseTime"];

  v1 = sub_1A7C648E4();
  if (v6)
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || [v1 compare:v6] == -1)
  {
    v3 = [MEMORY[0x1E69A6180] sharedDefaults];
    v4 = MEMORY[0x1E696AD98];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v5 = [v4 numberWithDouble:?];
    [v3 setAppValue:v5 forKey:@"AuthenticationDelegateRequestPostedTime"];
  }
}

id sub_1A7C648E4()
{
  v0 = [MEMORY[0x1E69A6180] sharedDefaults];
  v1 = [v0 appValueForKey:@"AuthenticationDelegateRequestPostedTime"];

  return v1;
}

id IDSAuthenticationDelegateUpdateTimeOfLastAuthenticationResponseAndGetDelta()
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v1 = v0;
  v2 = [MEMORY[0x1E69A6180] sharedDefaults];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:v1];
  [v2 setAppValue:v3 forKey:@"AuthenticationDelegateResponseTime"];

  v4 = sub_1A7C648E4();
  if (v4)
  {
    v5 = [MEMORY[0x1E69A6180] sharedDefaults];
    [v5 removeAppValueForKey:@"AuthenticationDelegateRequestPostedTime"];

    v6 = MEMORY[0x1E696AD98];
    [v4 doubleValue];
    v8 = [v6 numberWithDouble:v1 - v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1A7C64A40(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if ([v4 isEqual:@"password"])
  {
    v6 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      v7 = "  => password : REDACTED";
      v8 = v6;
      v9 = 2;
LABEL_7:
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, v7, &v13, v9);
    }
  }

  else
  {
    v10 = [v4 isEqual:@"message"];
    v6 = [MEMORY[0x1E69A6138] registration];
    v11 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v11)
      {
        v13 = 138543362;
        v14 = v5;
        v7 = "ServerErrorDetail: %{public}@";
        v8 = v6;
        v9 = 12;
        goto LABEL_7;
      }
    }

    else if (v11)
    {
      v12 = [IDSLogFormatter descriptionForObject:v5 options:6];
      v13 = 138412546;
      v14 = v4;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "  => %@ : %@", &v13, 0x16u);
    }
  }
}

id IDSParseAuthDictionaryForServiceData(void *a1)
{
  v1 = [a1 objectForKey:@"service-data"];
  IDSParseAuthDictionary(v1);
  objc_claimAutoreleasedReturnValue();

  return v1;
}

id IDSParseAuthDictionary(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"handles", @"email-address", @"auth-token", @"self-handle", @"invitation-context", @"apple-id", @"realm-user-id", 0}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v1 objectForKey:v7];

        if (!v8)
        {
          v9 = [MEMORY[0x1E69A6138] warning];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v16 = v7;
            _os_log_error_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_ERROR, "Missing keys in the authentication dictionary service keys.  Please file! [%@]", buf, 0xCu);
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v4);
  }

  return v1;
}

id IDSAccountPropertiesFromAuthenticationDictionary(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = [v1 allKeys];
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          if (IDSAuthenticationDelegateShouldStoreKey(v8))
          {
            v9 = [v1 objectForKey:v8];
            if (v9)
            {
              v10 = IDSAccountKeyForServerKey(v8);
              if (v10)
              {
                [v2 setObject:v9 forKey:v10];
              }
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFDictionary *IDSAccountInfoFromAuthenticationDictionary(void *a1)
{
  v1 = MEMORY[0x1E695DF90];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = IDSParseAuthDictionaryForServiceData(v2);

  v5 = IDSAccountPropertiesFromAuthenticationDictionary(v4);
  v6 = [v5 objectForKey:@"self-handle"];
  v7 = [v6 objectForKey:@"uri"];

  v8 = [v5 objectForKey:@"handles"];
  v9 = [v8 __imArrayByApplyingBlock:&unk_1F1AAB6A0];

  v10 = [v5 objectForKey:@"profile-id"];
  if (v10)
  {
    CFDictionarySetValue(v3, @"AuthID", v10);
  }

  v11 = [v5 objectForKey:@"apple-id"];
  if (v11)
  {
    CFDictionarySetValue(v3, @"AppleID", v11);
  }

  if ([v7 length])
  {
    v12 = v7 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    CFDictionarySetValue(v3, @"SelfHandle", v7);
  }

  if ([v9 count] && v9)
  {
    CFDictionarySetValue(v3, @"VettedAliases", v9);
  }

  return v3;
}

id sub_1A7C65194(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKey:@"uri"];
  v4 = [v2 objectForKey:@"status"];

  LODWORD(v2) = [v4 intValue];
  if (v2 == 5051)
  {
    v5 = [v3 _stripFZIDPrefix];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id IDSPrintedCapabilities(__int16 a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v3 = v2;
  if (a1)
  {
    [v2 appendString:@"    * kIDSListenerCapConsumesLaunchOnDemandIncomingMessages\n"];
  }

  if ((a1 & 2) != 0)
  {
    [v3 appendString:@"    * kIDSListenerCapConsumesLaunchOnDemandOutgoingMessageUpdates\n"];
  }

  if ((a1 & 4) != 0)
  {
    [v3 appendString:@"    * kIDSListenerCapConsumesLaunchOnDemandSessionMessages\n"];
  }

  if ((a1 & 8) != 0)
  {
    [v3 appendString:@"    * kIDSListenerCapConsumesLaunchOnDemandIncomingData\n"];
  }

  if ((a1 & 0x10) != 0)
  {
    [v3 appendString:@"    * kIDSListenerCapConsumesLaunchOnDemandIncomingProtobuf\n"];
  }

  if ((a1 & 0x800) != 0)
  {
    [v3 appendString:@"    * kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates\n"];
  }

  return v3;
}

id IDSPrettyListOfEnabledCapabilities(__int16 a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"IncomingMessages"];
  }

  if ((a1 & 2) != 0)
  {
    [v3 addObject:@"OutgoingMessageUpdates"];
  }

  if ((a1 & 4) != 0)
  {
    [v3 addObject:@"SessionMessages"];
  }

  if ((a1 & 8) != 0)
  {
    [v3 addObject:@"IncomingData"];
  }

  if ((a1 & 0x10) != 0)
  {
    [v3 addObject:@"IncomingProtobuf"];
  }

  if ((a1 & 0x800) != 0)
  {
    [v3 addObject:@"InvitationUpdates"];
  }

  if ((a1 & 0x20) != 0)
  {
    [v3 addObject:@"IncomingResource"];
  }

  if ((a1 & 0x40) != 0)
  {
    [v3 addObject:@"Engram"];
  }

  if ((a1 & 0x80) != 0)
  {
    [v3 addObject:@"NetworkAvailableHint"];
  }

  if ((a1 & 0x100) != 0)
  {
    [v3 addObject:@"AccessoryReportMessages"];
  }

  if ((a1 & 0x200) != 0)
  {
    [v3 addObject:@"GroupSessionParticipantUpdates"];
  }

  if ((a1 & 0x400) != 0)
  {
    [v3 addObject:@"PendingMessageUpdates"];
  }

  if ((a1 & 0x1000) != 0)
  {
    [v3 addObject:@"PendingResource"];
  }

  v4 = [v3 copy];

  return v4;
}

uint64_t IDSDataProtectionClassFromDataProtectionClassString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToIgnoringCase:@"a"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToIgnoringCase:@"c"])
  {
    v2 = 0;
  }

  else
  {
    [v1 isEqualToIgnoringCase:@"d"];
    v2 = 2;
  }

  return v2;
}

void _IDSsetTestOverridesForProfile(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v4 = a2;
  IMSetDomainValueForKey();
  IMSetDomainValueForKey();

  IMSetDomainValueForKey();
}

id sub_1A7C65694(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a1;
  v14 = bswap64([a2 unsignedLongLongValue]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v8 = [v6 dataUsingEncoding:4];

  v9 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:8];
  [v7 appendData:v9];

  v10 = [v5 dataUsingEncoding:4];

  [v7 appendData:v10];
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  macOut[0] = v11;
  macOut[1] = v11;
  CCHmac(2u, [v8 bytes], objc_msgSend(v8, "length"), objc_msgSend(v7, "bytes"), objc_msgSend(v7, "length"), macOut);
  v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:macOut length:32];

  return v12;
}

id sub_1A7C65824()
{
  v0 = MEMORY[0x1AC562F80](@"com.apple.ids", @"kIDSTestOverridesKey");
  v1 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v0 options:0 error:0];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v1 encoding:4];

  return v2;
}

id _IDStestOverrideSignatureHeader(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a2;
  v11 = a1;
  v12 = sub_1A7C65694(a3, v9, a5);
  v13 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v14 = [v11 stringValue];

  [v13 appendString:v14];
  [v13 appendString:@":"];
  [v13 appendString:v10];

  [v13 appendString:@":"];
  v15 = [v9 stringValue];

  [v13 appendString:v15];
  [v13 appendString:@":"];
  v16 = [v12 _CUTStringFromBaseData];
  [v13 appendString:v16];

  return v13;
}

uint64_t IDSIsRunningOnN2xAWatch(uint64_t a1, uint64_t a2)
{
  if (qword_1EB2BBBD0 != -1)
  {
    sub_1A7E1F268();
  }

  return byte_1EB2B89D0;
}

uint64_t sub_1A7C65A2C()
{
  result = MGIsDeviceOneOfType();
  byte_1EB2B89D0 = result;
  return result;
}

BOOL IDSCommandIsGroupSessionCommand(void *a1)
{
  v1 = a1;
  v2 = [v1 integerValue] == 207 || objc_msgSend(v1, "integerValue") == 208 || objc_msgSend(v1, "integerValue") == 211 || objc_msgSend(v1, "integerValue") == 210 || objc_msgSend(v1, "integerValue") == 209 || objc_msgSend(v1, "integerValue") == 239 || objc_msgSend(v1, "integerValue") == 206;

  return v2;
}

BOOL IDSCommandIsUserInteractiveCommand(void *a1)
{
  v1 = a1;
  v2 = [v1 integerValue] == 1 || objc_msgSend(v1, "integerValue") == 2 || objc_msgSend(v1, "integerValue") == 3 || objc_msgSend(v1, "integerValue") == 4 || objc_msgSend(v1, "integerValue") == 100 || objc_msgSend(v1, "integerValue") == 104 || objc_msgSend(v1, "integerValue") == 117 || objc_msgSend(v1, "integerValue") == 118 || objc_msgSend(v1, "integerValue") == 122 || objc_msgSend(v1, "integerValue") == 195 || objc_msgSend(v1, "integerValue") == 196 || objc_msgSend(v1, "integerValue") == 207 || objc_msgSend(v1, "integerValue") == 209 || objc_msgSend(v1, "integerValue") == 227 || objc_msgSend(v1, "integerValue") == 232 || objc_msgSend(v1, "integerValue") == 233 || objc_msgSend(v1, "integerValue") == 234 || objc_msgSend(v1, "integerValue") == 235 || objc_msgSend(v1, "integerValue") == 236 || objc_msgSend(v1, "integerValue") == 237 || objc_msgSend(v1, "integerValue") == 238 || objc_msgSend(v1, "integerValue") == 239 || objc_msgSend(v1, "integerValue") == 242 || objc_msgSend(v1, "integerValue") == 243 || objc_msgSend(v1, "integerValue") == 245 || objc_msgSend(v1, "integerValue") == 246 || objc_msgSend(v1, "integerValue") == 247 || objc_msgSend(v1, "integerValue") == 248 || objc_msgSend(v1, "integerValue") == 249;

  return v2;
}

uint64_t IDSIsVirtualMachine(uint64_t a1, uint64_t a2)
{
  if (qword_1EB2BB5C8[0] != -1)
  {
    sub_1A7E1F27C();
  }

  return byte_1EB2BC111;
}

uint64_t sub_1A7C65D9C()
{
  v19 = 0;
  v18 = 4;
  result = sysctlbyname("kern.hv_vmm_present", &v19, &v18, 0, 0);
  if (result)
  {
    v1 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1A7AD9000, v1, OS_LOG_TYPE_ERROR, "Unable to tell if device is a VM", &v17, 2u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      _IDSWarnV(@"IDSFoundation", @"Unable to tell if device is a VM", v2, v3, v4, v5, v6, v7, v17);
      _IDSLogV(0, @"IDSFoundation", @"Warning", @"Unable to tell if device is a VM", v8, v9, v10, v11, v17);
      return _IDSLogTransport(@"Warning", @"IDS", @"Unable to tell if device is a VM", v12, v13, v14, v15, v16, v17);
    }
  }

  else
  {
    byte_1EB2BC111 = v19 != 0;
  }

  return result;
}

uint64_t IDSAssertNonFatalErrnoWithSource(uint64_t result, const char *a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if ((result - 23) <= 1)
  {
    v4 = "-";
    if (a2)
    {
      v4 = a2;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fatal errno %d for [%s] at %s:%d", result, v4, a3, a4];
    IDSNetworkingLogDump([v5 UTF8String], 0x14u);
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v24 = v5;
      v25 = 1024;
      v26 = 5;
      _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_ERROR, "Fatal error encountered %@, aborting in %d seconds", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV(@"IDSFoundation", @"Fatal error encountered %@, aborting in %d seconds", v7, v8, v9, v10, v11, v12, v5);
      _IDSLogV(0, @"IDSFoundation", @"Warning", @"Fatal error encountered %@, aborting in %d seconds", v13, v14, v15, v16, v5);
      _IDSLogTransport(@"Warning", @"IDS", @"Fatal error encountered %@, aborting in %d seconds", v17, v18, v19, v20, v21, v5);
    }

    sleep(5u);
    v22 = v5;
    qword_1EB2B8418 = [v5 UTF8String];
    if (isRunningTests())
    {
      throwsIDSAbortException();
    }

    abort();
  }

  return result;
}

uint64_t isRunningTests()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 environment];
  v2 = [v1 objectForKeyedSubscript:@"XCTestConfigurationFilePath"];
  if (v2)
  {

    v3 = 1;
  }

  else
  {
    v3 = os_parse_boot_arg_string();
  }

  return v3;
}

void throwsIDSAbortException()
{
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:@"IDSAbort" reason:@"IDSAbort called!" userInfo:0];
  objc_exception_throw(v0);
}

void IDSCheckFileDescriptorUsageWithSource(uint64_t a1, uint64_t a2, int a3)
{
  v6 = socket(2, 2, 0);
  v7 = __error();
  if (v6 <= 0)
  {
    v14 = *v7;
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Too many file descriptors detected at %s:%d!", a1, a2];
    v15 = v20;
    IDSAssertNonFatalErrnoWithSource(v14, [v20 UTF8String], "/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSFoundationUtils.m", 1964);
  }

  else
  {
    close(v6);
    if (v6 >= 0xB4)
    {
      v8 = arc4random_uniform(0x64u);
      v9 = +[IDSAutoBugCapture isSupported];
      v10 = v8 < 5 ? 1 : a3;
      if (v9 && v10)
      {
        if (qword_1EB2BC128 != -1)
        {
          sub_1A7E1F290();
        }

        os_unfair_lock_lock(&dword_1EB2BC120);
        v11 = qword_1EB2BC118;
        if (qword_1EB2BC118 && ([MEMORY[0x1E695DF00] date], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "compare:", v12), v12, v13 == 1))
        {

          os_unfair_lock_unlock(&dword_1EB2BC120);
        }

        else
        {
          v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:259200.0];
          v17 = qword_1EB2BC118;
          qword_1EB2BC118 = v16;

          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Number of file descriptors passed high watermark in %s!", a1];
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = sub_1A7C66454;
          v21[3] = &unk_1E77E23E0;
          v19 = v18;
          v22 = v19;
          [IDSAutoBugCapture triggerCaptureWithEvent:207 context:v19 completion:v21];

          os_unfair_lock_unlock(&dword_1EB2BC120);
        }
      }
    }
  }
}

void sub_1A7C66454(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = +[IDSFoundationLog System];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "Finished capturing AutoBugCapture diagnostics for %@", &v4, 0xCu);
  }
}

void IDSInternalAlertSimple(void *a1, void *a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v32 = v8;
    v33 = 2112;
    v34 = v9;
    v35 = 2112;
    v36 = v10;
    _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "Raising alert for [%@] [%@] [%@]", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"IDSFoundationUtils", @"IDS", @"Raising alert for [%@] [%@] [%@]", v12, v13, v14, v15, v16, v8);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"IDSFoundationUtils", @"Raising alert for [%@] [%@] [%@]", v17, v18, v19, v20, v8);
      }
    }
  }

  v21 = im_primary_queue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A7C6673C;
  block[3] = &unk_1E77E0DC8;
  v27 = v7;
  v28 = v8;
  v29 = v9;
  v30 = v10;
  v22 = v10;
  v23 = v9;
  v24 = v8;
  v25 = v7;
  dispatch_async(v21, block);
}

void sub_1A7C6673C(void *a1)
{
  v2 = [MEMORY[0x1E69A60F0] sharedInstance];
  v3 = [v2 isInternalInstall];

  if (v3)
  {
    v9 = [MEMORY[0x1E695DF00] date];
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v4 setDateFormat:@"YYYY-MM-dd"];
    v5 = [v4 dateFromString:a1[4]];

    [v9 timeIntervalSinceDate:v5];
    if (v6 < 0.0)
    {
      v7 = [MEMORY[0x1E69A6188] userNotificationWithIdentifier:a1[5] title:a1[6] message:a1[7] defaultButton:@"OK" alternateButton:0 otherButton:0];
      v8 = [MEMORY[0x1E69A6190] sharedInstance];
      [v8 addUserNotification:v7 listener:0];
    }
  }
}

uint64_t IDSDeviceTypeFromProductName(void *a1)
{
  v1 = a1;
  if ([v1 rangeOfString:@"iPod"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v1 rangeOfString:@"iPad"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v1 rangeOfString:@"iPhone"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v1 rangeOfString:@"Mac"] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([v1 rangeOfString:@"AppleTV"] == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([v1 rangeOfString:@"Watch"] == 0x7FFFFFFFFFFFFFFFLL)
            {
              if ([v1 rangeOfString:@"AudioAccessory"] == 0x7FFFFFFFFFFFFFFFLL)
              {
                if ([v1 rangeOfString:@"Browser"] == 0x7FFFFFFFFFFFFFFFLL)
                {
                  if ([v1 rangeOfString:@"xrOS"] == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v2 = 0;
                  }

                  else
                  {
                    v2 = 9;
                  }
                }

                else
                {
                  v2 = 8;
                }
              }

              else
              {
                v2 = 7;
              }
            }

            else
            {
              v2 = 6;
            }
          }

          else
          {
            v2 = 5;
          }
        }

        else
        {
          v2 = 1;
        }
      }

      else
      {
        v2 = 2;
      }
    }

    else
    {
      v2 = 4;
    }
  }

  else
  {
    v2 = 3;
  }

  return v2;
}

id sub_1A7C669B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = MEMORY[0x1E696ACD0];
  v6 = a4;
  v7 = [[v5 alloc] initForReadingFromData:v6 error:0];

  [v7 setDecodingFailurePolicy:0];
  v8 = [v7 decodeObjectOfClass:a3 forKey:*MEMORY[0x1E696A508]];
  [v7 finishDecoding];

  return v8;
}

uint64_t sub_1A7C66A58(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [a1 lockForReading];
  v4[2](v4);

  return [a1 unlock];
}

uint64_t sub_1A7C66AB0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [a1 lockForWriting];
  v4[2](v4);

  return [a1 unlock];
}

id sub_1A7C66B08(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E695DEF0];
  v4 = a3;
  v5 = [[v3 alloc] initWithBase64EncodedString:v4 options:0];

  return v5;
}

void sub_1A7C66C58(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a3;
  if (IMShouldLog())
  {
    IMLogString_V();
  }
}

void sub_1A7C66CCC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a3;
  if (IMShouldLog())
  {
    IMLogString_V();
  }
}

uint64_t sub_1A7C66FD4(uint64_t a1)
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEBUG, "URL Loading service disconnected", &v18, 2u);
  }

  v3 = os_log_shim_legacy_logging_enabled();
  if (v3)
  {
    sub_1A7C66C58(v3, v4, @"URL Loading service disconnected", v5, v6, v7, v8, v9, v18);
    sub_1A7C66CCC(v10, v11, @"URL Loading service disconnected", v12, v13, v14, v15, v16, v18);
    if (_IMWillLog())
    {
      _IMAlwaysLog();
    }
  }

  return [*(a1 + 32) _disconnected];
}

void sub_1A7C6781C(uint64_t a1, void *a2)
{
  v237 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1AC5658A0]();
  v5 = [*(*(a1 + 32) + 24) copy];
  if (v4 == MEMORY[0x1E69E9E98])
  {
    v110 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
    {
      v111 = *(a1 + 32);
      v112 = v111[1];
      *buf = 138412546;
      *v233 = v112;
      *&v233[8] = 2048;
      v234 = v111;
      _os_log_impl(&dword_1A7AD9000, v110, OS_LOG_TYPE_DEFAULT, "Loaded disconnected for request: %@  (%p)", buf, 0x16u);
    }

    v113 = os_log_shim_legacy_logging_enabled();
    if (v113)
    {
      sub_1A7C66C58(v113, v114, @"Loaded disconnected for request: %@  (%p)", v115, v116, v117, v118, v119, *(*(a1 + 32) + 8));
      v228 = *(a1 + 32);
      sub_1A7C66CCC(v120, v121, @"Loaded disconnected for request: %@  (%p)", v122, v123, v124, v125, v126, *(v228 + 8));
      if (_IMWillLog())
      {
        v223 = *(*(a1 + 32) + 8);
        v228 = *(a1 + 32);
        _IMAlwaysLog();
      }
    }

    v127 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
    {
      v128 = *(*(a1 + 32) + 8);
      *buf = 138412290;
      *v233 = v128;
      _os_log_impl(&dword_1A7AD9000, v127, OS_LOG_TYPE_ERROR, "Remote loader crashed for request: %@", buf, 0xCu);
    }

    v129 = os_log_shim_legacy_logging_enabled();
    if (v129)
    {
      v136 = sub_1A7C68524(v129, v130, @"Remote loader crashed for request: %@", v131, v132, v133, v134, v135, *(*(a1 + 32) + 8));
      sub_1A7C68570(v136, v137, @"Remote loader crashed for request: %@", v138, v139, v140, v141, v142, *(*(a1 + 32) + 8));
      _IDSWarnV(@"IDSRemoteURLClient", @"Remote loader crashed for request: %@", v143, v144, v145, v146, v147, v148, *(*(a1 + 32) + 8));
    }

    [*(a1 + 32) _disconnected];
    if (*(*(a1 + 32) + 40))
    {
      v149 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v149, OS_LOG_TYPE_DEFAULT, "           Cancelled, not retrying or notifying of failure!", buf, 2u);
      }

      v150 = os_log_shim_legacy_logging_enabled();
      if (v150)
      {
        sub_1A7C66C58(v150, v151, @"           Cancelled, not retrying or notifying of failure!", v152, v153, v154, v155, v156, v225);
        sub_1A7C66CCC(v157, v158, @"           Cancelled, not retrying or notifying of failure!", v159, v160, v161, v162, v163, v226);
        if (_IMWillLog())
        {
          _IMAlwaysLog();
        }
      }
    }

    else if (*(*(a1 + 32) + 44) > 4)
    {
      v207 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v207, OS_LOG_TYPE_DEFAULT, "Not retrying, calling completion block", buf, 2u);
      }

      v208 = os_log_shim_legacy_logging_enabled();
      if (v208)
      {
        sub_1A7C66C58(v208, v209, @"Not retrying, calling completion block", v210, v211, v212, v213, v214, v225);
        sub_1A7C66CCC(v215, v216, @"Not retrying, calling completion block", v217, v218, v219, v220, v221, v227);
        if (_IMWillLog())
        {
          _IMAlwaysLog();
        }
      }

      if (v5)
      {
        v222 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69A6048] code:-1 userInfo:0];
        (v5)[2](v5, 0, 0, 0, v222, 0);
      }
    }

    else
    {
      v165 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
      {
        v166 = *(*(a1 + 32) + 44);
        *buf = 67109376;
        *v233 = v166;
        *&v233[4] = 1024;
        *&v233[6] = 5;
        _os_log_impl(&dword_1A7AD9000, v165, OS_LOG_TYPE_DEFAULT, " => Retrying... (%d/%d) retries", buf, 0xEu);
      }

      v167 = os_log_shim_legacy_logging_enabled();
      if (v167)
      {
        sub_1A7C66C58(v167, v168, @" => Retrying... (%d/%d) retries", v169, v170, v171, v172, v173, *(*(a1 + 32) + 44));
        sub_1A7C66CCC(v174, v175, @" => Retrying... (%d/%d) retries", v176, v177, v178, v179, v180, *(*(a1 + 32) + 44));
        if (_IMWillLog())
        {
          _IMAlwaysLog();
        }
      }

      v181 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v181, OS_LOG_TYPE_ERROR))
      {
        v182 = *(*(a1 + 32) + 44);
        *buf = 67109376;
        *v233 = v182;
        *&v233[4] = 1024;
        *&v233[6] = 5;
        _os_log_impl(&dword_1A7AD9000, v181, OS_LOG_TYPE_ERROR, " => Retrying... (%d/%d) retries", buf, 0xEu);
      }

      v183 = os_log_shim_legacy_logging_enabled();
      if (v183)
      {
        v190 = sub_1A7C68524(v183, v184, @" => Retrying... (%d/%d) retries", v185, v186, v187, v188, v189, *(*(a1 + 32) + 44));
        sub_1A7C68570(v190, v191, @" => Retrying... (%d/%d) retries", v192, v193, v194, v195, v196, *(*(a1 + 32) + 44));
        _IDSWarnV(@"IDSRemoteURLClient", @" => Retrying... (%d/%d) retries", v197, v198, v199, v200, v201, v202, *(*(a1 + 32) + 44));
      }

      v203 = *(a1 + 32);
      v204 = *(v203 + 44);
      *(v203 + 44) = v204 + 1;
      v205 = dispatch_time(0, 2000000000 * v204);
      v206 = im_primary_queue();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A7C685BC;
      block[3] = &unk_1E77E0818;
      block[4] = *(a1 + 32);
      dispatch_after(v205, v206, block);
    }
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v7[1];
      v9 = [v7 bundleIdentifierForDataUsage];
      v10 = *(a1 + 32);
      *buf = 138412802;
      *v233 = v8;
      *&v233[8] = 2112;
      v234 = v9;
      v235 = 2048;
      v236 = v10;
      _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "Loaded completed for request: %@  (Data usage identifier: %@) (%p)", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v11 = *(a1 + 32);
      v12 = v11[1];
      v13 = [v11 bundleIdentifierForDataUsage];
      sub_1A7C66C58(v13, v14, @"Loaded completed for request: %@  (Data usage identifier: %@) (%p)", v15, v16, v17, v18, v19, v12);

      v20 = *(*(a1 + 32) + 8);
      v229 = [*(a1 + 32) bundleIdentifierForDataUsage];
      sub_1A7C66CCC(v229, v21, @"Loaded completed for request: %@  (Data usage identifier: %@) (%p)", v22, v23, v24, v25, v26, v20);

      if (_IMWillLog())
      {
        v27 = *(a1 + 32);
        v28 = v27[1];
        v230 = [v27 bundleIdentifierForDataUsage];
        v223 = v28;
        _IMAlwaysLog();
      }
    }

    objc_opt_class();
    v29 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
    objc_opt_class();
    v30 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
    int64 = xpc_dictionary_get_int64(v3, *MEMORY[0x1E69A6618]);
    v32 = IMGetXPCDataFromDictionary();
    v33 = IMGetXPCDictionaryFromDictionary();
    v34 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v233 = v29;
      _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "           Response: %@", buf, 0xCu);
    }

    v35 = os_log_shim_legacy_logging_enabled();
    if (v35)
    {
      sub_1A7C66C58(v35, v36, @"           Response: %@", v37, v38, v39, v40, v41, v29);
      sub_1A7C66CCC(v42, v43, @"           Response: %@", v44, v45, v46, v47, v48, v29);
      if (_IMWillLog())
      {
        v223 = v29;
        _IMAlwaysLog();
      }
    }

    v49 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v233 = int64;
      _os_log_impl(&dword_1A7AD9000, v49, OS_LOG_TYPE_DEFAULT, "        Status Code: %d", buf, 8u);
    }

    v50 = os_log_shim_legacy_logging_enabled();
    if (v50)
    {
      sub_1A7C66C58(v50, v51, @"        Status Code: %d", v52, v53, v54, v55, v56, int64);
      sub_1A7C66CCC(v57, v58, @"        Status Code: %d", v59, v60, v61, v62, v63, int64);
      if (_IMWillLog())
      {
        v223 = int64;
        _IMAlwaysLog();
      }
    }

    v64 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = [v32 length];
      *buf = 67109120;
      *v233 = v65;
      _os_log_impl(&dword_1A7AD9000, v64, OS_LOG_TYPE_DEFAULT, " Result Data Length: %d", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v66 = [v32 length];
      sub_1A7C66C58(v66, v67, @" Result Data Length: %d", v68, v69, v70, v71, v72, v66);
      v73 = [v32 length];
      sub_1A7C66CCC(v73, v74, @" Result Data Length: %d", v75, v76, v77, v78, v79, v73);
      if (_IMWillLog())
      {
        v223 = [v32 length];
        _IMAlwaysLog();
      }
    }

    v80 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v233 = v30;
      _os_log_impl(&dword_1A7AD9000, v80, OS_LOG_TYPE_DEFAULT, "              Error: %@", buf, 0xCu);
    }

    v81 = os_log_shim_legacy_logging_enabled();
    if (v81)
    {
      sub_1A7C66C58(v81, v82, @"              Error: %@", v83, v84, v85, v86, v87, v30);
      sub_1A7C66CCC(v88, v89, @"              Error: %@", v90, v91, v92, v93, v94, v30);
      if (_IMWillLog())
      {
        v223 = v30;
        _IMAlwaysLog();
      }
    }

    if (*(*(a1 + 32) + 40) == 1)
    {
      v95 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v95, OS_LOG_TYPE_DEFAULT, "           Cancelled, not calling out!", buf, 2u);
      }

      v96 = os_log_shim_legacy_logging_enabled();
      if (v96)
      {
        sub_1A7C66C58(v96, v97, @"           Cancelled, not calling out!", v98, v99, v100, v101, v102, v223);
        sub_1A7C66CCC(v103, v104, @"           Cancelled, not calling out!", v105, v106, v107, v108, v109, v224);
        if (_IMWillLog())
        {
          _IMAlwaysLog();
        }
      }
    }

    else if (v5)
    {
      (v5)[2](v5, v29, int64, v32, v30, v33);
    }
  }

  v164 = objc_opt_self();
}

void sub_1A7C68A4C()
{
  v0 = objc_alloc_init(IDSWRMExchange);
  v1 = qword_1ED5DF730;
  qword_1ED5DF730 = v0;
}

void sub_1A7C68D50(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1A7C69114(uint64_t a1)
{
  [*(a1 + 32) _stopXPCConnection];
  [*(a1 + 32) _startXPCConnection];
  [*(a1 + 32) _registerWithWRM];
  [*(a1 + 32) _restartSubscriptionIfNeeded];
  v2 = [*(a1 + 32) _newSubscribeStatusUpdateMessage];
  [*(a1 + 32) _sendXPCMessage:v2];
}

void *sub_1A7C69900(uint64_t a1)
{
  result = [*(a1 + 32) _restartClient];
  ++*(*(a1 + 32) + 80);
  return result;
}

void sub_1A7C699E0(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!*(v2 + 16))
  {
    [v2 _startXPCConnection];
    v2 = *(a1 + 32);
  }

  if (*(v2 + 48))
  {
    if (*(v2 + 16) && *(a1 + 40))
    {
      v3 = MEMORY[0x1AC5657E0]();
      v4 = MEMORY[0x1AC5657E0](*(a1 + 40));
      v5 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v11 = v3;
        v12 = 2080;
        v13 = v4;
        _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "Send to con = %s, message = \n %s", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"IDSWRMExchange", @"Send to con = %s, message = \n %s", v6, v7, v8, v9, v3);
        }
      }

      xpc_connection_send_message(*(*(a1 + 32) + 16), *(a1 + 40));
      free(v3);
      free(v4);
    }
  }

  else
  {

    [v2 _registerWithWRM];
  }
}

void sub_1A7C6A100(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 67109120;
    v13 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "Subscribe to WRM for link recommendations of type: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog(0))
  {
    _IDSLogV(0, @"IDSFoundation", @"IDSWRMExchange", @"Subscribe to WRM for link recommendations of type: %d", v4, v5, v6, v7, *(a1 + 40));
  }

  v8 = *(a1 + 40);
  if (v8 != 2)
  {
    v10 = *(a1 + 32);
    v9 = (a1 + 32);
    *(v10 + 40) = v8;
    v11 = [*v9 _newSubscribeMessage];
    [*v9 _sendXPCMessage:v11];
    *(*v9 + 49) = 1;
  }
}

void sub_1A7C6A400(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 40);
    *buf = 67109120;
    v15 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "Unsubscribe from WRM for link recommendations of type: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog(0))
  {
    _IDSLogV(0, @"IDSFoundation", @"IDSWRMExchange", @"Unsubscribe from WRM for link recommendations of type: %d", v4, v5, v6, v7, *(*(a1 + 32) + 40));
  }

  v8 = *(a1 + 32);
  if (v8[5] != 2)
  {
    v9 = [v8 _newUnsubscribeMessage];
    v11 = *(a1 + 32);
    v10 = (a1 + 32);
    [v11 _sendXPCMessage:v9];
    *(*v10 + 49) = 0;
    [*v10 _setRecommendedLinkType:2];
    *(*v10 + 5) = 2;
    v12 = *(*v10 + 13);
    *(*v10 + 13) = 0;

    v13 = *(*v10 + 14);
    *(*v10 + 14) = 0;
  }
}

uint64_t sub_1A7C6B030(uint64_t a1)
{
  [*(a1 + 32) _sendMetricReport];
  [*(a1 + 32) _sendXPCMessage:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _restartSubscriptionIfNeeded];
}

void *IDSOSNexusManagerCreate(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x40uLL, 0x10300403B4764B1uLL);
  if (!v2)
  {
    return v2;
  }

  v3 = malloc_type_malloc(4 * *(a1 + 88), 0x100004052888210uLL);
  v2[6] = v3;
  if (!v3)
  {
LABEL_20:
    IDSOSNexusManagerDestroy(v2);
    return 0;
  }

  v4 = os_nexus_attr_create();
  *v2 = v4;
  if (!v4)
  {
    v10 = "os_nexus_attr_create";
LABEL_19:
    perror(v10);
    goto LABEL_20;
  }

  if (*(a1 + 8))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      os_nexus_attr_set();
      ++v6;
      v5 += 16;
    }

    while (v6 < *(a1 + 8));
  }

  v7 = os_nexus_controller_create();
  v2[1] = v7;
  if (!v7)
  {
    v10 = "os_nexus_controller_create";
    goto LABEL_19;
  }

  if (os_nexus_controller_register_provider())
  {
    v10 = "os_nexus_controller_register_provider";
    goto LABEL_19;
  }

  if (os_nexus_controller_alloc_provider_instance())
  {
    v10 = "os_nexus_controller_alloc_provider_instance";
    goto LABEL_19;
  }

  if (*(a1 + 88))
  {
    v8 = 0;
    v9 = 0;
    v10 = "os_nexus_controller_bind_provider_instance";
    while (1)
    {
      v11 = *(a1 + 80);
      if (os_nexus_controller_bind_provider_instance())
      {
        break;
      }

      v12 = *(v11 + v8);
      v13 = v2[6];
      v14 = *(v2 + 14);
      *(v2 + 14) = v14 + 1;
      *(v13 + 2 * v14) = v12;
      ++v9;
      v8 += 48;
      if (v9 >= *(a1 + 88))
      {
        return v2;
      }
    }

    goto LABEL_19;
  }

  return v2;
}

void IDSOSNexusManagerDestroy(void *a1)
{
  if (a1)
  {
    if (*a1)
    {
      os_nexus_attr_destroy();
    }

    if (a1[1])
    {
      if (*(a1 + 14))
      {
        v2 = 0;
        do
        {
          if (os_nexus_controller_unbind_provider_instance())
          {
            perror("os_nexus_controller_unbind_provider_instance");
          }

          ++v2;
        }

        while (v2 < *(a1 + 14));
      }

      v3 = a1[6];
      if (v3)
      {
        free(v3);
      }

      if (os_nexus_controller_free_provider_instance())
      {
        perror("os_nexus_controller_free_provider_instance");
      }

      if (os_nexus_controller_deregister_provider())
      {
        perror("os_nexus_controller_deregister_provider");
      }

      os_nexus_controller_destroy();
    }

    free(a1);
  }
}

void sub_1A7C6BCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7C6BCC8(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cache];
  v3 = [v2 dualSIMEnabled];

  if (v3)
  {
    goto LABEL_18;
  }

  v4 = *(*(a1 + 32) + 16);
  v15 = 0;
  v5 = [v4 getDualSimCapability:&v15];
  v6 = v15;
  v7 = [MEMORY[0x1E69A6138] registration];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v17 = v6;
      v9 = "Failed loading dual SIM cap { dualSIMError: %@ }";
LABEL_10:
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
    }
  }

  else if (v8)
  {
    if (v5 > 4)
    {
      v10 = @"Enabled";
    }

    else
    {
      v10 = off_1E77E26E0[v5];
    }

    *buf = 138412290;
    v17 = v10;
    v9 = "Loaded dual SIM cap { cap: %@ }";
    goto LABEL_10;
  }

  if (v5 == 4 || v5 == 2)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v13 = [*(a1 + 32) cache];
  [v13 setDualSIMEnabled:v12];

LABEL_18:
  v14 = [*(a1 + 32) cache];
  *(*(*(a1 + 40) + 8) + 24) = [v14 dualSIMEnabled] == 1;
}

void sub_1A7C6BF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7C6BF24(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cache];
  v3 = [v2 isAnySIMUsable];

  if (!v3)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = *(a1 + 32);
    v21 = 0;
    v5 = [v4 _unlocked_currentSIMsWithError:&v21];
    v19 = v21;
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v22 + 1) + 8 * i) context];
          v11 = *(*(a1 + 32) + 16);
          v20 = 0;
          v12 = [v11 getPNRContext:v10 outError:&v20];
          v13 = v20;
          v14 = [MEMORY[0x1E69A6138] registration];
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          if (v12)
          {
            if (v15)
            {
              *buf = 138412546;
              v27 = v12;
              v28 = 2112;
              v29 = v10;
              _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "Checking PNRContext isReady { PNRContext: %@, ctx: %@ }", buf, 0x16u);
            }

            if ([v12 isReady])
            {
              v16 = [*(a1 + 32) cache];
              [v16 setIsAnySIMUsable:1];

              goto LABEL_17;
            }
          }

          else
          {
            if (v15)
            {
              *buf = 138412546;
              v27 = v10;
              v28 = 2112;
              v29 = v13;
              _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "Failed loading PNRContext { ctx: %@, PNRErr: %@ }", buf, 0x16u);
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v7);
    }

LABEL_17:

    if (v19)
    {
      v17 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v19;
        _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "Failed loading SIMs { ctxError: %@ }", buf, 0xCu);
      }
    }
  }

  v18 = [*(a1 + 32) cache];
  *(*(*(a1 + 40) + 8) + 24) = [v18 isAnySIMUsable] == 1;
}

void sub_1A7C6C2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7C6C2D8(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cache];
  v3 = [v2 isAnySIMInserted];

  if (!v3)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v4 = *(a1 + 32);
    v22 = 0;
    v5 = [v4 _unlocked_currentSIMsWithError:&v22];
    v20 = v22;
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      v9 = *MEMORY[0x1E6965438];
      do
      {
        v10 = 0;
        do
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [*(*(&v23 + 1) + 8 * v10) context];
          v12 = *(*(a1 + 32) + 16);
          v21 = 0;
          v13 = [v12 getSIMStatus:v11 error:&v21];
          v14 = v21;
          v15 = [MEMORY[0x1E69A6138] registration];
          v16 = v15;
          if (v13)
          {
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v28 = v13;
              _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "Loaded initial SIM status { SIMStatus: %@ }", buf, 0xCu);
            }

            if (([v13 isEqualToString:v9] & 1) == 0)
            {
              v17 = [*(a1 + 32) cache];
              [v17 setIsAnySIMInserted:1];

              goto LABEL_17;
            }
          }

          else
          {
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v28 = v14;
              _os_log_error_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_ERROR, "Unable to read SIM status { SIMStatusError: %@ }", buf, 0xCu);
            }
          }

          ++v10;
        }

        while (v7 != v10);
        v7 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v7);
    }

LABEL_17:

    if (v20)
    {
      v18 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v20;
        _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "Unable to locate subscriptions to check SIM status { error: %@ }", buf, 0xCu);
      }
    }
  }

  v19 = [*(a1 + 32) cache];
  *(*(*(a1 + 40) + 8) + 24) = [v19 isAnySIMInserted] == 1;
}

uint64_t (*sub_1A7C6C874())(void, void, void)
{
  result = MEMORY[0x1AC5631C0]("_CTServerConnectionCreate", @"CoreTelephony");
  off_1EB2BC138 = result;
  return result;
}

uint64_t (*sub_1A7C6C8A4())(void, void)
{
  result = MEMORY[0x1AC5631C0]("_CTServerConnectionIsPhoneNumberRegistrationSupported", @"CoreTelephony");
  off_1EB2BC148 = result;
  return result;
}

void sub_1A7C6D2BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

IDSCTSIM *sub_1A7C6D308(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v12 = 0;
    goto LABEL_25;
  }

  v5 = [MEMORY[0x1E6965090] contextWithXPCContextInfo:v3];
  v6 = [v5 labelID];

  if (v6)
  {
    v7 = [v5 label];
    if ([v7 isEqualToString:@"Provisioning"])
    {
      v8 = [v5 labelID];
      v9 = [v8 isEqualToString:@"00000000-0000-0000-0000-000000000000"];

      if (v9)
      {
        v10 = [MEMORY[0x1E69A6138] sms];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v22 = v3;
          v11 = "Hiding provisioning SIM { context: %@ }";
LABEL_10:
          _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
          goto LABEL_11;
        }

        goto LABEL_11;
      }
    }

    else
    {
    }

    v13 = [*(a1 + 32) coreTelephonyClient];
    v20 = 0;
    v14 = [v13 getPNRSupportStatus:v5 outError:&v20];
    v10 = v20;

    if (v10 || !v14)
    {
      v16 = [MEMORY[0x1E69A6138] sms];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v22 = v5;
        v23 = 2112;
        v24 = v10;
        v25 = 2112;
        v26 = v14;
        _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "Failed to get PNRSupportStatus { context: %@, error: %@, PNRSupportStatus: %@ }", buf, 0x20u);
      }
    }

    else
    {
      if ([v14 isSupported])
      {
        v15 = 0;
LABEL_22:
        v12 = [[IDSCTSIM alloc] initWithContext:v5 optionsNeeded:v15];
        goto LABEL_23;
      }

      v15 = [*(a1 + 32) _filterOptionsNeededForPNRSupportStatus:v14];
      if (v15)
      {
        goto LABEL_22;
      }

      v18 = [MEMORY[0x1E69A6138] sms];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 48);
        *buf = 138412802;
        v22 = v5;
        v23 = 2048;
        v24 = v19;
        v25 = 2112;
        v26 = v14;
        _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "Sim is not supported { context: %@, filterOptions: %lu, supportStatus: %@ }", buf, 0x20u);
      }
    }

    v12 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v10 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v5;
    v11 = "Sim is missing a labelID { context: %@ }";
    goto LABEL_10;
  }

LABEL_11:
  v12 = 0;
LABEL_24:

LABEL_25:

  return v12;
}

IDSCTSIM *sub_1A7C6D648(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 labelID];

  if (v3)
  {
    v4 = [v2 label];
    if ([v4 isEqualToString:@"Provisioning"])
    {
      v5 = [v2 labelID];
      v6 = [v5 isEqualToString:@"00000000-0000-0000-0000-000000000000"];

      if (v6)
      {
        v7 = [MEMORY[0x1E69A6138] sms];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 138412290;
          v11 = v2;
          v8 = "Hiding provisioning SIM { subscription: %@ }";
LABEL_13:
          _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, v8, &v10, 0xCu);
          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else
    {
    }

    if ([v2 isSimHidden])
    {
      v7 = [MEMORY[0x1E69A6138] sms];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v2;
        v8 = "Ignoring hidden SIM { subscription: %@ }";
        goto LABEL_13;
      }

LABEL_14:

      v3 = 0;
      goto LABEL_15;
    }

    if ([v2 isSimDataOnly])
    {
      v7 = [MEMORY[0x1E69A6138] sms];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v2;
        v8 = "Ignoring data only SIM { subscription: %@ }";
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    v3 = [[IDSCTSIM alloc] initWithContext:v2 optionsNeeded:0];
  }

LABEL_15:

  return v3;
}

void sub_1A7C6DA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A7C6DA4C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A7C6DA64(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v10 = 0;
  v4 = [v2 _unlocked_currentSIMsWithFilterOptions:v3 error:&v10];
  v5 = v10;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

uint64_t sub_1A7C6E1AC(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v3 hasPrefix:@"+"])
  {
    v5 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"+"];
    v6 = [v3 stringByRemovingCharactersFromSet:v5];

    v3 = v6;
  }

  v7 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "** Checking numbers for rereg { oldNumber: %@, currentNumber: %@}", &v10, 0x16u);
  }

  if ([v4 length] && objc_msgSend(v3, "length"))
  {
    v8 = [IDSCTAdapter isPhoneNumber:v3 equivalentToExistingPhoneNumber:v4]^ 1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

void sub_1A7C6ECBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[IDSCTSIM alloc] initWithContext:*(a1 + 32) optionsNeeded:0];
  [v3 SIM:v4 didUpdateRegistrationState:*(a1 + 40) != 0];
}

IDSCTSIM *sub_1A7C6EE7C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[IDSCTSIM alloc] initWithContext:v2 optionsNeeded:0];

  return v3;
}

void sub_1A7C6EFA0(uint64_t a1)
{
  v1 = [*(a1 + 32) cache];
  [v1 setDualSIMEnabled:0];
}

void sub_1A7C6F0B0(uint64_t a1)
{
  v1 = [*(a1 + 32) cache];
  [v1 setIsAnySIMInserted:0];
}

void sub_1A7C6F208(uint64_t a1)
{
  v2 = objc_alloc_init(IDSCTAdapterCache);
  [*(a1 + 32) setCache:v2];
}

void sub_1A7C6F3D0(uint64_t a1)
{
  v2 = [*(a1 + 32) cache];
  [v2 setSupportsIdentification:0];

  v3 = [*(a1 + 32) cache];
  [v3 setIsAnySIMUsable:0];
}

void sub_1A7C6F6C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[IDSCTSIM alloc] initWithContext:*(a1 + 32) optionsNeeded:0];
  [v3 SIM:v4 didDeactivateWithInfo:*(a1 + 40)];
}

void sub_1A7C6F808(uint64_t a1)
{
  v1 = [*(a1 + 32) cache];
  [v1 setDoesAnySIMSupportsSimultaneousVoiceAndDataRightNow:0];
}

void sub_1A7C6FB6C()
{
  v0 = objc_alloc_init(IDSStunConnectionDataController);
  v1 = qword_1ED5DF738;
  qword_1ED5DF738 = v0;
}

id tokenForStunCandidatePair(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23 = v5;
  v24 = v5;
  v21 = v5;
  v22 = v5;
  v19 = v5;
  v20 = v5;
  *__str = v5;
  v18 = v5;
  *v9 = v5;
  v10 = v5;
  v11 = v5;
  v12 = v5;
  v13 = v5;
  v14 = v5;
  v15 = v5;
  v16 = v5;
  v6 = a3;
  SAToIPPortString(__str, 0x80uLL, a1);
  SAToIPPortString(v9, 0x80uLL, a2);
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s-%s-%@", __str, v9, v6];

  return v7;
}

id channelForStunCandidatePair(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22 = v5;
  v23 = v5;
  v20 = v5;
  v21 = v5;
  v18 = v5;
  v19 = v5;
  *__str = v5;
  v17 = v5;
  v14 = v5;
  v15 = v5;
  v12 = v5;
  v13 = v5;
  v10 = v5;
  v11 = v5;
  *v8 = v5;
  v9 = v5;
  SAToIPPortString(__str, 0x80uLL, a1);
  SAToIPPortString(v8, 0x80uLL, a2);
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s-%s-%04x", __str, v8, __rev16(a3)];

  return v6;
}

void sub_1A7C73B70(uint64_t a1, void *a2)
{
  v2 = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A7C73BFC;
  v4[3] = &unk_1E77E0188;
  v5 = v2;
  v3 = v2;
  IDSTransportThreadAddBlock(v4);
}

uint64_t sub_1A7C74D88(uint64_t result)
{
  if (result > 402)
  {
    if (result == 403)
    {
      return 7;
    }

    if (result == 508)
    {
      return 1;
    }

    if (result != 600)
    {
      return 6;
    }

    return 3;
  }

  switch(result)
  {
    case 0:
      return result;
    case 0x190:
      return 3;
    case 0x191:
      return 5;
  }

  return 6;
}

void sub_1A7C754D8(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = sub_1A7C75548;
  v1[3] = &unk_1E77E0138;
  v1[4] = *(a1 + 32);
  IDSTransportThreadAddBlock(v1);
}

void sub_1A7C75A54(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = sub_1A7C75AC4;
  v1[3] = &unk_1E77E0138;
  v1[4] = *(a1 + 32);
  IDSTransportThreadAddBlock(v1);
}

void sub_1A7C76028(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = sub_1A7C76098;
  v1[3] = &unk_1E77E0138;
  v1[4] = *(a1 + 32);
  IDSTransportThreadAddBlock(v1);
}

void sub_1A7C76800(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = sub_1A7C76870;
  v1[3] = &unk_1E77E0138;
  v1[4] = *(a1 + 32);
  IDSTransportThreadAddBlock(v1);
}

void sub_1A7C76FD8(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = sub_1A7C77048;
  v1[3] = &unk_1E77E0138;
  v1[4] = *(a1 + 32);
  IDSTransportThreadAddBlock(v1);
}

void sub_1A7C78BF0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = +[IDSFoundationLog GlobalLink_oversize];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v5[0] = 67109378;
    v5[1] = v3;
    v6 = 2112;
    v7 = v4;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "updated participantID map for link %d:%@", v5, 0x12u);
  }
}

void sub_1A7C7C324(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A7C7C1F8);
  }

  _Unwind_Resume(a1);
}

void sub_1A7C7D8B4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A7C7D648);
  }

  _Unwind_Resume(a1);
}

void sub_1A7C7D8E8(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) removeProtoRequest:*(a1 + 40)])
  {
    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 134218240;
      v16 = v3;
      v17 = 1024;
      v18 = 10;
      _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "get material request %llu timed out after %d seconds.", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"get material request %llu timed out after %d seconds.", v4, v5, v6, v7, v8, *(a1 + 40));
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"get material request %llu timed out after %d seconds.", v9, v10, v11, v12, *(a1 + 40));
        }
      }
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
    [WeakRetained candidatePair:*(a1 + 32) protoRequestDidTimeOut:*(a1 + 40)];

    v14 = GLUCreateQRStunMessageEventWithEventSubType(242, 0x27u, *(a1 + 32), 0, 10.0);
    if (v14)
    {
      [*(a1 + 32) _notifyQREventAdded:v14];
    }
  }
}

void sub_1A7C7DE4C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A7C7DBE0);
  }

  _Unwind_Resume(a1);
}

void sub_1A7C7DE80(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) removeProtoRequest:*(a1 + 40)])
  {
    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 134218240;
      v17 = v3;
      v18 = 1024;
      v19 = 10;
      _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "put material request %llu timed out after %d seconds.", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"put material request %llu timed out after %d seconds.", v4, v5, v6, v7, v8, *(a1 + 40));
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"put material request %llu timed out after %d seconds.", v9, v10, v11, v12, *(a1 + 40));
        }
      }
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
    [WeakRetained candidatePair:*(a1 + 32) protoRequestDidTimeOut:*(a1 + 40)];

    v14 = GLUCreateQRStunMessageEventWithEventSubType(244, 0x28u, *(a1 + 32), 0, 10.0);
    if (v14)
    {
      [*(a1 + 32) _notifyQREventAdded:v14];
    }

    v15 = objc_loadWeakRetained((*(a1 + 32) + 48));
    [v15 candidatePair:*(a1 + 32) didReceivePutMaterialResponse:0 forTxId:*(a1 + 40)];
  }
}

void sub_1A7C7E40C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A7C7E1A0);
  }

  _Unwind_Resume(a1);
}

void sub_1A7C7E440(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) removeProtoRequest:*(a1 + 40)])
  {
    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 134218240;
      v16 = v3;
      v17 = 1024;
      v18 = 10;
      _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "CallModeUpdate request %llu timed out after %d seconds.", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"CallModeUpdate request %llu timed out after %d seconds.", v4, v5, v6, v7, v8, *(a1 + 40));
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"CallModeUpdate request %llu timed out after %d seconds.", v9, v10, v11, v12, *(a1 + 40));
        }
      }
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
    [WeakRetained candidatePair:*(a1 + 32) protoRequestDidTimeOut:*(a1 + 40)];

    v14 = GLUCreateQRStunMessageEventWithEventSubType(250, 0x28u, *(a1 + 32), 0, 10.0);
    if (v14)
    {
      [*(a1 + 32) _notifyQREventAdded:v14];
    }
  }
}

void sub_1A7C7F1B0(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = sub_1A7C7F220;
  v1[3] = &unk_1E77E0138;
  v1[4] = *(a1 + 32);
  IDSTransportThreadAddBlock(v1);
}

void sub_1A7C7FAAC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A7C7F998);
  }

  _Unwind_Resume(a1);
}

void sub_1A7C802BC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A7C8008CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A7C835A0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A7C83180);
  }

  _Unwind_Resume(a1);
}

uint64_t stunMessageTypeFromProtoMessageType(int a1, int a2)
{
  v2 = a1 - 1;
  result = 2066;
  switch(v2)
  {
    case 0:
      v4 = a2 == 0;
      v5 = 3808;
      goto LABEL_11;
    case 1:
      v4 = a2 == 0;
      v5 = 4064;
LABEL_11:
      if (v4)
      {
        result = v5;
      }

      else
      {
        result = v5 + 1;
      }

      break;
    case 2:
      return result;
    case 3:
      result = 2064;
      break;
    case 4:
      result = 3812;
      break;
    case 5:
      result = 4068;
      break;
    case 6:
      result = 3815;
      break;
    case 7:
      result = 4071;
      break;
    case 8:
      result = 3831;
      break;
    case 9:
      result = 3816;
      break;
    case 10:
      result = 4072;
      break;
    case 12:
      result = 2067;
      break;
    case 13:
      result = 3825;
      break;
    case 14:
      result = 3813;
      break;
    case 15:
      result = 4069;
      break;
    case 16:
      result = 3829;
      break;
    case 17:
      result = 3811;
      break;
    case 18:
      result = 4067;
      break;
    case 19:
    case 20:
      result = 2049;
      break;
    case 21:
      result = 3810;
      break;
    case 22:
      result = 4066;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

void sub_1A7C8455C(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) removeProtoRequest:*(a1 + 48)])
  {
    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 48);
      *buf = 134218240;
      v20 = v3;
      v21 = 1024;
      v22 = 10;
      _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "info request %llu timed out after %d seconds.", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"info request %llu timed out after %d seconds.", v4, v5, v6, v7, v8, *(a1 + 48));
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"info request %llu timed out after %d seconds.", v9, v10, v11, v12, *(a1 + 48));
        }
      }
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
    [WeakRetained candidatePair:*(a1 + 32) protoRequestDidTimeOut:*(a1 + 48)];

    LOWORD(WeakRetained) = stunMessageTypeFromProtoMessageType(*(a1 + 56), 0);
    GLUtilReportAWDStunMessageEventWithType(WeakRetained, 26, *(a1 + 32), 0.0);
    v14 = GLUCreateQRStunMessageEventWithType(WeakRetained, 26, *(a1 + 32), 0, 10.0);
    if (v14)
    {
      [*(a1 + 32) _notifyQREventAdded:v14];
    }

    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = (a1 + 32);
    [v15 processSessionInfoRequestTimeout:v16];
    v18 = objc_loadWeakRetained((*v17 + 48));
    [v18 disconnectIdleQUICConnectionForCandidatePair:*v17];
  }
}

void sub_1A7C84BB4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A7C84948);
  }

  _Unwind_Resume(a1);
}

void sub_1A7C84BFC(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) removeProtoRequest:*(a1 + 40)])
  {
    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 134218240;
      v16 = v3;
      v17 = 1024;
      v18 = 10;
      _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "ChannelConfig request %llu timed out after %d seconds.", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"ChannelConfig request %llu timed out after %d seconds.", v4, v5, v6, v7, v8, *(a1 + 40));
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"ChannelConfig request %llu timed out after %d seconds.", v9, v10, v11, v12, *(a1 + 40));
        }
      }
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
    [WeakRetained candidatePair:*(a1 + 32) protoRequestDidTimeOut:*(a1 + 40)];

    v14 = GLUCreateQRStunMessageEventWithEventSubType(250, 0x28u, *(a1 + 32), 0, 10.0);
    if (v14)
    {
      [*(a1 + 32) _notifyQREventAdded:v14];
    }
  }
}

void sub_1A7C85330(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) removeProtoRequest:*(a1 + 48)])
  {
    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 48);
      *buf = 134218240;
      v21 = v3;
      v22 = 1024;
      v23 = 10;
      _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "participant update request %llu timed out after %d seconds.", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"participant update request %llu timed out after %d seconds.", v4, v5, v6, v7, v8, *(a1 + 48));
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"participant update request %llu timed out after %d seconds.", v9, v10, v11, v12, *(a1 + 48));
        }
      }
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
    [WeakRetained candidatePair:*(a1 + 32) protoRequestDidTimeOut:*(a1 + 48)];

    LOWORD(WeakRetained) = stunMessageTypeFromProtoMessageType(*(a1 + 56), 0);
    GLUtilReportAWDStunMessageEventWithType(WeakRetained, 32, *(a1 + 32), 0.0);
    v14 = GLUCreateQRStunMessageEventWithType(WeakRetained, 32, *(a1 + 32), 0, 10.0);
    if (v14)
    {
      [*(a1 + 32) _notifyQREventAdded:v14];
    }

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    Value = 0;
    if (*(a1 + 40) && @"gl-option-participant-update-request-type")
    {
      Value = CFDictionaryGetValue(*(a1 + 40), @"gl-option-participant-update-request-type");
    }

    v17 = [Value intValue];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v17];
    if (v18)
    {
      CFDictionarySetValue(v15, @"ids-stun-attribute-session-state-type", v18);
    }

    CFDictionarySetValue(v15, @"ids-stun-message-type", &unk_1F1B20360);
    v19 = objc_loadWeakRetained((*(a1 + 32) + 48));
    [v19 candidatePair:*(a1 + 32) didReceiveParticipantUpdate:v15 status:2];
  }
}

void sub_1A7C85B28(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) removeProtoRequest:*(a1 + 40)])
  {
    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 134218240;
      v16 = v3;
      v17 = 1024;
      v18 = 10;
      _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "plugin registration request %llu timed out after %d seconds.", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"plugin registration request %llu timed out after %d seconds.", v4, v5, v6, v7, v8, *(a1 + 40));
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"plugin registration request %llu timed out after %d seconds.", v9, v10, v11, v12, *(a1 + 40));
        }
      }
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
    [WeakRetained candidatePair:*(a1 + 32) protoRequestDidTimeOut:*(a1 + 40)];

    LOWORD(WeakRetained) = stunMessageTypeFromProtoMessageType(*(a1 + 48), 0);
    GLUtilReportAWDStunMessageEventWithType(WeakRetained, 26, *(a1 + 32), 0.0);
    v14 = GLUCreateQRStunMessageEventWithType(WeakRetained, 33, *(a1 + 32), 0, 10.0);
    if (v14)
    {
      [*(a1 + 32) _notifyQREventAdded:v14];
    }

    [*(a1 + 32) _removeProtoPluginRegistrationRequest:*(a1 + 40)];
  }
}

void sub_1A7C862DC(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) removeProtoRequest:*(a1 + 48)])
  {
    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 48);
      *buf = 134218240;
      v16 = v3;
      v17 = 1024;
      v18 = 10;
      _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "session-info request %llu timed out after %d seconds.", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"session-info request %llu timed out after %d seconds.", v4, v5, v6, v7, v8, *(a1 + 48));
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"session-info request %llu timed out after %d seconds.", v9, v10, v11, v12, *(a1 + 48));
        }
      }
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
    [WeakRetained candidatePair:*(a1 + 32) protoRequestDidTimeOut:*(a1 + 48)];

    LOWORD(WeakRetained) = stunMessageTypeFromProtoMessageType(*(a1 + 56), 0);
    GLUtilReportAWDStunMessageEventWithType(WeakRetained, 30, *(a1 + 32), 0.0);
    v14 = GLUCreateQRStunMessageEventWithType(WeakRetained, 30, *(a1 + 32), 0, 10.0);
    if (v14)
    {
      [*(a1 + 32) _notifyQREventAdded:v14];
    }

    [*(a1 + 32) processSessionInfoRequestTimeout:*(a1 + 40)];
  }
}

void sub_1A7C86BD4(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) removeProtoRequest:*(a1 + 48)])
  {
    if (*(a1 + 56))
    {
      [*(*(a1 + 32) + 376) removeObjectForKey:*(a1 + 40)];
    }

    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 48);
      v4 = *(a1 + 68);
      *buf = 134218240;
      v19 = v3;
      v20 = 1024;
      v21 = v4;
      _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "stats request %llu timed out after %u seconds.", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"stats request %llu timed out after %u seconds.", v5, v6, v7, v8, v9, *(a1 + 48));
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"stats request %llu timed out after %u seconds.", v10, v11, v12, v13, *(a1 + 48));
        }
      }
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
    [WeakRetained candidatePair:*(a1 + 32) protoRequestDidTimeOut:*(a1 + 48)];

    v15 = stunMessageTypeFromProtoMessageType(*(a1 + 64), 0);
    LOBYTE(v16) = *(a1 + 68);
    v17 = GLUCreateQRStunMessageEventWithType(v15, 41, *(a1 + 32), 0, v16);
    if (v17)
    {
      [*(a1 + 32) _notifyQREventAdded:v17];
    }
  }
}

void sub_1A7C8740C(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) removeProtoRequest:*(a1 + 40)])
  {
    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 134218240;
      v15 = v3;
      v16 = 1024;
      v17 = 10;
      _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "test request %llu timed out after %d seconds.", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"test request %llu timed out after %d seconds.", v4, v5, v6, v7, v8, *(a1 + 40));
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"test request %llu timed out after %d seconds.", v9, v10, v11, v12, *(a1 + 40));
      }
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
    [WeakRetained candidatePair:*(a1 + 32) protoRequestDidTimeOut:*(a1 + 40)];
  }
}

void sub_1A7C8BDC0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A7C8BB40);
  }

  _Unwind_Resume(a1);
}

uint64_t IDSQRProtoDiagnosticDiagnosticReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_1A7C8D74C(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:5316621];
  if (v2)
  {
    v17 = v2;
    v3 = objc_alloc_init(CUTWeakLinkClass());
    v4 = *(a1 + 40);
    if (v4)
    {
      [v3 setEventType:{objc_msgSend(v4, "unsignedIntegerValue")}];
      v5 = *(a1 + 48);
      if (v5)
      {
        [v3 setEventSubType:{objc_msgSend(v5, "unsignedIntegerValue")}];
      }

      v6 = *(a1 + 56);
      if (v6)
      {
        v7 = *(a1 + 144);
        [v6 doubleValue];
        if ((v7 & 1) == 0)
        {
          v8 = IDSAWDLogFuzzTimeTo10sSecondsForHotShip(v8);
        }

        [v3 setDuration:v8];
      }

      v9 = *(a1 + 64);
      if (v9)
      {
        [v3 setResultCode:{objc_msgSend(v9, "unsignedIntegerValue")}];
      }

      v10 = *(a1 + 72);
      if (v10)
      {
        [v3 setProviderType:{objc_msgSend(v10, "unsignedIntegerValue")}];
      }

      v11 = *(a1 + 80);
      if (v11)
      {
        [v3 setTransportType:{objc_msgSend(v11, "unsignedIntegerValue")}];
      }

      v12 = *(a1 + 88);
      if (v12)
      {
        [v3 setInterfaceType:{objc_msgSend(v12, "unsignedIntegerValue")}];
      }

      v13 = *(a1 + 96);
      if (v13)
      {
        [v3 setSkeEnabled:{objc_msgSend(v13, "unsignedIntegerValue")}];
      }

      v14 = *(a1 + 104);
      if (v14)
      {
        [v3 setIsInitiator:{objc_msgSend(v14, "unsignedIntegerValue")}];
      }

      v15 = *(a1 + 112);
      if (v15)
      {
        [v3 setProtocolVersion:{objc_msgSend(v15, "unsignedIntegerValue")}];
      }

      v16 = *(a1 + 120);
      if (v16)
      {
        [v3 setRetryCount:{objc_msgSend(v16, "unsignedIntegerValue")}];
      }

      if (*(a1 + 128))
      {
        [v3 setServiceName:?];
      }

      if (*(a1 + 136))
      {
        [v3 setSubServiceName:?];
      }

      [*(a1 + 32) _submitAWDMetric:v3 withContainer:v17];
    }

    v2 = v17;
  }
}

uint64_t IDSQRProtoSessionParametersReadFrom(uint64_t a1, void *a2)
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
        v40 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 11)
      {
        if (v13 == 10)
        {
          v21 = PBReaderReadData();
          v22 = 24;
        }

        else
        {
          if (v13 != 11)
          {
LABEL_53:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_68;
          }

          v21 = PBReaderReadString();
          v22 = 40;
        }

        v36 = *(a1 + v22);
        *(a1 + v22) = v21;
      }

      else
      {
        if (v13 == 12)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            v42 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v42 & 0x7F) << v23;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_58;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_58:
          v38 = 8;
          goto LABEL_63;
        }

        if (v13 == 13)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            v41 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v41 & 0x7F) << v30;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_62;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v32;
          }

LABEL_62:
          v38 = 16;
LABEL_63:
          *(a1 + v38) = v29;
          goto LABEL_68;
        }

        if (v13 != 14)
        {
          goto LABEL_53;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 48) |= 4u;
        while (1)
        {
          v43 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v43 & 0x7F) << v14;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_67;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_67:
        *(a1 + 32) = v20;
      }

LABEL_68:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoCallModeUpdateResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(IDSQRProtoCallModeUpdateInfo);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0xAAAAAAAAAAAAAAAALL;
        v16[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoCallModeUpdateInfoReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoCallModeUpdateCallModeUpdateReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoCallModeUpdateRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(IDSQRProtoCallModeUpdateInfo);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0xAAAAAAAAAAAAAAAALL;
        v16[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoCallModeUpdateInfoReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A7C903C4(uint64_t a1, uint64_t a2, void *a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x1E699BB90] groupContext];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      *buf = 138478083;
      v18 = v7;
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "No data representation - failed {group: %{private}@, error: %{public}@}", buf, 0x16u);
    }
  }

  else
  {
    [*(a1 + 32) setObject:a2 forKey:@"payload"];
    v8 = [IDSCKModifyRecordsOperation alloc];
    v21[0] = *(a1 + 32);
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v6 = [(IDSCKModifyRecordsOperation *)v8 initWithRecordsToSave:v9 recordIDsToDelete:0];

    [v6 setSavePolicy:2];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = sub_1A7C90594;
    v14 = &unk_1E77E09D0;
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    [v6 setModifyRecordsCompletionBlock:&v11];
    v10 = [*(a1 + 40) database];
    [v10 addOperation:v6];
  }
}

void sub_1A7C90594(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [MEMORY[0x1E699BB90] groupContext];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_INFO, "Received result from CloudKit - Done", buf, 2u);
  }

  v7 = [*(a1 + 32) queue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A7C906A4;
  v10[3] = &unk_1E77DD0F0;
  v8 = *(a1 + 40);
  v11 = v5;
  v12 = v8;
  v9 = v5;
  dispatch_async(v7, v10);
}

void sub_1A7C907E4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A7C90950;
    block[3] = &unk_1E77E2878;
    block[4] = a1[4];
    v13 = v5;
    v14 = a1[5];
    v15 = a1[6];
    dispatch_async(v7, block);

    v8 = v13;
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1A7C909FC;
    v9[3] = &unk_1E77DD0F0;
    v11 = a1[6];
    v10 = v6;
    dispatch_async(v7, v9);

    v8 = v11;
  }
}

void sub_1A7C90950(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A7C909EC;
  v4[3] = &unk_1E77E2850;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 q_groupFromRecord:v2 inContext:v3 completion:v4];
}

uint64_t IDSQRProtoGetMaterialRequestReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(IDSQRProtoMaterialOwner);
        [a1 addMaterialOwners:v13];
        v16[0] = 0xAAAAAAAAAAAAAAAALL;
        v16[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoMaterialOwnerReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A7C92990(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  if (v4 == 1)
  {
    v9 = +[IDSFoundationLog utilities];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1A7E1F834(v3, v9);
    }
  }

  else if (!v4)
  {
    v5 = [v3 value];
    v6 = *(*(a1 + 32) + 8);
    v7 = [*(a1 + 40) rtcType];
    v8 = [*(a1 + 40) dictionaryRepresentation];
    [v5 sendMessageWithCategory:v6 type:v7 payload:v8 error:0];
  }
}

void IDSCopyPacketLog(void *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = NSHomeDirectory();
    v3 = [v2 stringByAppendingString:@"/Library/IdentityServices/PacketLogs/"];

    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v41 = 0;
    [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v41];
    v5 = v41;

    if (v5)
    {
      v6 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = v5;
        _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "Could not get destination directory for packet log: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"Could not get destination directory for packet log: %@", v7, v8, v9, v10, v11, v5);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"Could not get destination directory for packet log: %@", v12, v13, v14, v15, v5);
          }
        }
      }
    }

    else
    {
      v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
      v17 = [v1 lastPathComponent];
      v18 = [v16 URLByAppendingPathComponent:v17];

      v19 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = v18;
        _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "Writing packet log to %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"Writing packet log to %@", v20, v21, v22, v23, v24, v18);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"Writing packet log to %@", v25, v26, v27, v28, v18);
          }
        }
      }

      v29 = [MEMORY[0x1E696AC08] defaultManager];
      v40 = 0;
      [v29 copyItemAtURL:v1 toURL:v18 error:&v40];
      v5 = v40;

      if (v5)
      {
        v30 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v43 = v5;
          _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "Could not copy packet log: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"Could not copy packet log: %@", v31, v32, v33, v34, v35, v5);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"Could not copy packet log: %@", v36, v37, v38, v39, v5);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A7C92FE0(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 32);
  if (v3 != -1)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      IDSTransportThreadRemoveSocket(v3);
      LODWORD(v3) = *(a1 + 32);
    }

    close(v3);
  }

  result = *(a1 + 36);
  if (result != -1)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      IDSTransportThreadRemoveSocket(result);
      LODWORD(result) = *(a1 + 36);
    }

    return close(result);
  }

  return result;
}

uint64_t sub_1A7C93B48()
{
  v0 = *__error();
  result = 14;
  if (v0 <= 53)
  {
    if (v0 <= 48)
    {
      if (v0 == 35)
      {
        return result;
      }

      if (v0 != 39)
      {
        if (v0 == 40)
        {
          return 4;
        }

        return 11;
      }

      return 6;
    }

    if ((v0 - 49) >= 3)
    {
      return 11;
    }

    return 3;
  }

  if (v0 > 56)
  {
    if ((v0 - 64) >= 2)
    {
      if (v0 == 57)
      {
        return 6;
      }

      return 11;
    }

    return 3;
  }

  if (v0 == 54)
  {
    return 2;
  }

  if (v0 != 55)
  {
    return 5;
  }

  return result;
}

uint64_t IDSQRProtoParticipantUpdateIndicationReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v50[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50[0] & 0x7F) << v5;
        if ((v50[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 14)
      {
        if (v13 == 15)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            LOBYTE(v50[0]) = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v50[0] & 0x7F) << v34;
            if ((v50[0] & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              v40 = 0;
              goto LABEL_78;
            }
          }

          if ([a2 hasError])
          {
            v40 = 0;
          }

          else
          {
            v40 = v36;
          }

LABEL_78:
          *(a1 + 32) = v40;
          goto LABEL_91;
        }

        if (v13 == 16)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 48) |= 4u;
          while (1)
          {
            LOBYTE(v50[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v50[0] & 0x7F) << v21;
            if ((v50[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_73;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_73:
          v41 = 44;
          goto LABEL_74;
        }
      }

      else
      {
        if (v13 == 3)
        {
          if ((v12 & 7) == 2)
          {
            v50[0] = 0xAAAAAAAAAAAAAAAALL;
            v50[1] = 0xAAAAAAAAAAAAAAAALL;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v27 = [a2 position];
              if (v27 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v28 = 0;
              v29 = 0;
              v30 = 0;
              while (1)
              {
                v51 = 0;
                v31 = [a2 position] + 1;
                if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
                {
                  v33 = [a2 data];
                  [v33 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v30 |= (v51 & 0x7F) << v28;
                if ((v51 & 0x80) == 0)
                {
                  break;
                }

                v28 += 7;
                v11 = v29++ >= 9;
                if (v11)
                {
                  goto LABEL_56;
                }
              }

              [a2 hasError];
LABEL_56:
              PBRepeatedUInt64Add();
            }

            PBReaderRecallMark();
          }

          else
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            while (1)
            {
              LOBYTE(v50[0]) = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v44 |= (v50[0] & 0x7F) << v42;
              if ((v50[0] & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v11 = v43++ >= 9;
              if (v11)
              {
                goto LABEL_90;
              }
            }

            [a2 hasError];
LABEL_90:
            PBRepeatedUInt64Add();
          }

          goto LABEL_91;
        }

        if (v13 == 4)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            LOBYTE(v50[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v50[0] & 0x7F) << v14;
            if ((v50[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_69;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_69:
          v41 = 40;
LABEL_74:
          *(a1 + v41) = v20;
          goto LABEL_91;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_91:
      v48 = [a2 position];
    }

    while (v48 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}