uint64_t sub_101495038(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F40620))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101495084(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    if (a2)
    {
      v38 = NSLocalizedDescriptionKey;
      v39 = @"Message is nil";
      v9 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v9];
    }

    goto LABEL_11;
  }

  if ([v5 conversationID] >= 0x100)
  {
    if (a2)
    {
      v36 = NSLocalizedDescriptionKey;
      v37 = @"Invalid ConversationID";
      v10 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v10];
    }

    goto LABEL_11;
  }

  v7 = [v6 sequenceNum];
  if (v7 < 0 || +[CTStewieEmergencyTextMessage maxSequenceNum]< v7)
  {
    if (a2)
    {
      v34 = NSLocalizedDescriptionKey;
      v35 = @"Invalid SequenceNum";
      v8 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v8];
    }

LABEL_11:
    *a3 = 0;
    *(a3 + 80) = 0;
    goto LABEL_12;
  }

  v11 = [v6 text];

  if (!v11)
  {
    if (a2)
    {
      v32 = NSLocalizedDescriptionKey;
      v33 = @"Text is missing";
      v15 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v15];
    }

    goto LABEL_11;
  }

  v12 = [v6 text];
  v13 = [v12 lengthOfBytesUsingEncoding:4];

  if (!v13 || v13 > +[CTStewieEmergencyTextMessage maxLengthInBytesForOutgoingText])
  {
    if (a2)
    {
      v30 = NSLocalizedDescriptionKey;
      v31 = @"Invalid text length";
      v14 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v14];
    }

    goto LABEL_11;
  }

  memset(v29, 0, sizeof(v29));
  __p[0] = 512;
  v25 = 0x300000001;
  v24 = off_101EE4118;
  v26 = &unk_101EE41C8;
  v28 = 0uLL;
  __p[1] = 0;
  BYTE2(__p[0]) = [v6 conversationID];
  WORD2(__p[0]) = [v6 sequenceNum];
  v16 = [v6 text];
  v17 = v16;
  v18 = [v16 UTF8String];

  v22 = 0;
  v23 = 0uLL;
  sub_100837690(&v22, v18, &v13[v18], v13);
  if (__p[1])
  {
    *&v28 = __p[1];
    operator delete(__p[1]);
  }

  v19 = v22;
  v20 = v23;
  *a3 = off_101EE42B0;
  *a3 = off_101EE42B0;
  *(a3 + 8) = v25;
  *(a3 + 16) = &unk_101EE4328;
  *a3 = &off_101EE43D0;
  *a3 = off_101EE4118;
  *(a3 + 16) = &unk_101EE41C8;
  *(a3 + 24) = __p[0];
  *(a3 + 28) = WORD2(__p[0]);
  *(a3 + 32) = v19;
  *(a3 + 40) = v20;
  v28 = 0uLL;
  __p[1] = 0;
  v21 = *v29;
  *(a3 + 48) = *(&v20 + 1);
  *(a3 + 56) = v21;
  *(a3 + 64) = *&v29[8];
  *(a3 + 80) = 1;
LABEL_12:
}

void sub_1014956F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10149945C(va);

  _Unwind_Resume(a1);
}

void sub_101495780(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    if (a2)
    {
      v32 = NSLocalizedDescriptionKey;
      v33 = @"Message is nil";
      v20 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v20];
    }

    goto LABEL_20;
  }

  if ([v5 conversationID] >= 0x100)
  {
    if (a2)
    {
      v30 = NSLocalizedDescriptionKey;
      v31 = @"Invalid ConversationID";
      v21 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v21];
    }

LABEL_20:
    *a3 = 0;
    *(a3 + 64) = 0;
    goto LABEL_21;
  }

  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v26 = 0x100000001;
  v25 = off_101EE3DD8;
  v27 = &unk_101EE3E88;
  LODWORD(v28[0]) = 33554688;
  LOBYTE(v28[1]) = 0;
  BYTE2(v28[0]) = [v6 conversationID];
  v7 = [v6 serializedQuestionnaireAnswers];
  v8 = v7 == 0;

  if (!v8)
  {
    v9 = [v6 serializedQuestionnaireAnswers];
    v10 = v9;
    v11 = [v9 bytes];
    v12 = [v6 serializedQuestionnaireAnswers];
    v13 = v12;
    v14 = [v12 bytes];
    v15 = [v6 serializedQuestionnaireAnswers];
    v16 = [v15 length];
    __p = 0uLL;
    v24 = 0;
    sub_1000DCF88(&__p, v11, &v16[v14], &v16[v14] - v11);
    sub_1001E9734(&v28[1], &__p);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }
  }

  v17 = [v6 notifyOption];
  v18 = 2 * (v17 != 1);
  if (v17 == 3)
  {
    v18 = 1;
  }

  if (v18 == 2)
  {
    LOBYTE(v18) = 0;
  }

  BYTE3(v28[0]) = v18;
  *a3 = v22;
  *(a3 + *(v22 - 48)) = off_101EE3F70;
  *(a3 + 8) = v26;
  *(a3 + 16) = &unk_101EE3FE8;
  *a3 = &off_101EE4090;
  *a3 = off_101EE3DD8;
  *(a3 + 16) = &unk_101EE3E88;
  *(a3 + 24) = v28[0];
  *(a3 + 32) = 0;
  *(a3 + 56) = 0;
  v19 = v29;
  if (v29 == 1)
  {
    *(a3 + 32) = *&v28[1];
    *(a3 + 48) = v28[3];
    memset(&v28[1], 0, 24);
    *(a3 + 56) = 1;
  }

  *(a3 + 64) = 1;
  v25 = off_101EE3DD8;
  v27 = &unk_101EE3E88;
  if (v19 && v28[1])
  {
    v28[2] = v28[1];
    operator delete(v28[1]);
  }

LABEL_21:
}

void sub_101495D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (__p)
  {
    operator delete(__p);
  }

  sub_10149955C(va);
  _Unwind_Resume(a1);
}

void sub_101495DE0(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    if (a2)
    {
      v29 = NSLocalizedDescriptionKey;
      v30 = @"Message is nil";
      v19 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v19];
    }

    goto LABEL_11;
  }

  v7 = [v5 encryptedData];
  if (!v7 || ([v6 encryptedData], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v7, !v9))
  {
    if (a2)
    {
      v27 = NSLocalizedDescriptionKey;
      v28 = @"Data provided is either nil or empty";
      v18 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v18];
    }

LABEL_11:
    *a3 = 0;
    *(a3 + 56) = 0;
    goto LABEL_12;
  }

  __p = 1024;
  v23 = 0x500000004;
  v22 = off_101EDD378;
  v24 = &unk_101EDD428;
  memset(__p_8, 0, sizeof(__p_8));
  v10 = [v6 encryptedData];
  v11 = v10;
  v12 = [v10 bytes];
  v13 = [v6 encryptedData];
  v14 = v13;
  v15 = [v13 bytes];
  v16 = [v6 encryptedData];
  v17 = [v16 length];
  v20 = 0uLL;
  v21 = 0;
  sub_1000DCF88(&v20, v12, &v17[v15], &v17[v15] - v12);
  if (*__p_8)
  {
    *&__p_8[8] = *__p_8;
    operator delete(*__p_8);
  }

  *__p_8 = v20;
  *&__p_8[16] = v21;
  v21 = 0;
  v20 = 0uLL;

  *a3 = off_101EDD510;
  *a3 = off_101EDD510;
  *(a3 + 8) = v23;
  *(a3 + 16) = &unk_101EDD588;
  *a3 = &off_101EDD630;
  *a3 = off_101EDD378;
  *(a3 + 16) = &unk_101EDD428;
  *(a3 + 24) = __p;
  *(a3 + 32) = *__p_8;
  *(a3 + 48) = *&__p_8[16];
  *(a3 + 56) = 1;
LABEL_12:
}

void sub_101496328(void *a1@<X0>, void *a2@<X1>, __n128 *a3@<X8>)
{
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    if (a2)
    {
      v37 = NSLocalizedDescriptionKey;
      v38 = @"Message is nil";
      v9 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v9];
    }

    goto LABEL_11;
  }

  if ([v5 conversationID] >= 0x100)
  {
    if (a2)
    {
      v35 = NSLocalizedDescriptionKey;
      v36 = @"Invalid ConversationID";
      v10 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v10];
    }

    goto LABEL_11;
  }

  v7 = [v6 sequenceNum];
  if (v7 < 0 || +[CTStewieEmergencyTextMessage maxSequenceNum]< v7)
  {
    if (a2)
    {
      v33 = NSLocalizedDescriptionKey;
      v34 = @"Invalid SequenceNum";
      v8 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v8];
    }

LABEL_11:
    a3->n128_u8[0] = 0;
    a3[5].n128_u8[0] = 0;
    goto LABEL_12;
  }

  if ([v6 providerId] >= 0x8000)
  {
    if (a2)
    {
      v31 = NSLocalizedDescriptionKey;
      v32 = @"Invalid providerId";
      v15 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v15];
    }

    goto LABEL_11;
  }

  v11 = [v6 text];

  if (!v11)
  {
    if (a2)
    {
      v29 = NSLocalizedDescriptionKey;
      v30 = @"Text is missing";
      v16 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v16];
    }

    goto LABEL_11;
  }

  v12 = [v6 text];
  v13 = [v12 lengthOfBytesUsingEncoding:4];

  if (!v13 || v13 > +[CTStewieRoadsideTextMessage maxLengthInBytesForOutgoingText])
  {
    if (a2)
    {
      v27 = NSLocalizedDescriptionKey;
      v28 = @"Invalid text length";
      v14 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v14];
    }

    goto LABEL_11;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  *__p = 0u;
  v22 = 0u;
  sub_10149683C(&v22);
  BYTE10(v23) = [v6 conversationID];
  WORD6(v23) = [v6 providerId];
  HIWORD(v23) = [v6 sequenceNum];
  v17 = [v6 text];
  v18 = v17;
  v19 = [v17 UTF8String];

  v20 = 0uLL;
  v21 = 0;
  sub_100837690(&v20, v19, &v13[v19], v13);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = v20;
  *&v25 = v21;
  sub_101499750(a3, &v22);
  sub_1014969BC(&v22);
LABEL_12:
}

void sub_1014967A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1014969BC(va);

  _Unwind_Resume(a1);
}

uint64_t sub_10149683C(uint64_t result)
{
  *result = off_101F5B0A8;
  *result = off_101F5B0A8;
  *(result + 8) = 8;
  *(result + 12) = 8;
  *(result + 16) = &unk_101F5B120;
  *result = &off_101F5B1C8;
  *result = off_101F5AF10;
  *(result + 16) = &unk_101F5AFC0;
  *(result + 24) = 1792;
  *(result + 26) = 0;
  *(result + 60) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 28) = 0;
  *(result + 44) = 0;
  *(result + 36) = 0;
  *(result + 49) = 0;
  return result;
}

void *sub_1014969BC(void *a1)
{
  *a1 = off_101F5AF10;
  *a1 = off_101F5AF10;
  a1[2] = &unk_101F5AFC0;
  v2 = a1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_101496ABC(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    if (a2)
    {
      v44 = NSLocalizedDescriptionKey;
      v45 = @"Message is nil";
      v26 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v26];
    }

    goto LABEL_30;
  }

  if ([v5 conversationID] >= 0x100)
  {
    if (a2)
    {
      v42 = NSLocalizedDescriptionKey;
      v43 = @"Invalid ConversationID";
      v27 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v27];
    }

    goto LABEL_30;
  }

  if ([v6 providerId] >= 0x8000)
  {
    if (a2)
    {
      v40 = NSLocalizedDescriptionKey;
      v41 = @"Invalid providerId";
      v28 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v28];
    }

    goto LABEL_30;
  }

  v7 = [v6 phoneNumber];
  if (v7)
  {
    v8 = [v6 phoneNumber];
    v9 = sub_10149733C(v8, 0);

    if ((v9 & 1) == 0)
    {
      if (a2)
      {
        v38 = NSLocalizedDescriptionKey;
        v39 = @"phoneNumber is invalid. Phone number can only contain digits and must be of length <= 15";
        v29 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v29];
      }

LABEL_30:
      *a3 = 0;
      *(a3 + 96) = 0;
      goto LABEL_31;
    }
  }

  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v34 = 0x600000008;
  v33 = off_101F5ABD0;
  v35 = &unk_101F5AC80;
  LOWORD(v36[0]) = 1536;
  LOBYTE(v36[1]) = 0;
  LOBYTE(v36[5]) = 0;
  BYTE2(v36[0]) = [v6 conversationID];
  WORD2(v36[0]) = [v6 providerId];
  BYTE6(v36[0]) = [v6 isPayPerUse];
  v10 = [v6 serializedQuestionnaireAnswers];
  v11 = v10 == 0;

  if (!v11)
  {
    v12 = [v6 serializedQuestionnaireAnswers];
    v13 = v12;
    v14 = [v12 bytes];
    v15 = [v6 serializedQuestionnaireAnswers];
    v16 = v15;
    v17 = [v15 bytes];
    v18 = [v6 serializedQuestionnaireAnswers];
    v19 = [v18 length];
    __p = 0uLL;
    v32 = 0;
    sub_1000DCF88(&__p, v14, &v19[v17], &v19[v17] - v14);
    sub_1001E9734(&v36[5], &__p);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }
  }

  v20 = [v6 phoneNumber];
  v21 = v20 == 0;

  if (!v21)
  {
    v22 = [v6 phoneNumber];
    v23 = v22;
    __p.n128_u64[0] = [v22 UTF8String];
    sub_100184AD0(&v36[1], &__p);
  }

  *a3 = off_101F5AD68;
  *a3 = off_101F5AD68;
  *(a3 + 8) = v34;
  *(a3 + 16) = v30;
  *(a3 + 16 + *(v30 - 48)) = &off_101F5AE88;
  *a3 = off_101F5ABD0;
  *(a3 + 16) = &unk_101F5AC80;
  *(a3 + 24) = v36[0];
  *(a3 + 27) = *(v36 + 3);
  *(a3 + 32) = 0;
  *(a3 + 56) = 0;
  v24 = v36[4];
  if (LOBYTE(v36[4]) == 1)
  {
    *(a3 + 32) = *&v36[1];
    *(a3 + 48) = v36[3];
    memset(&v36[1], 0, 24);
    *(a3 + 56) = 1;
  }

  *(a3 + 64) = 0;
  *(a3 + 88) = 0;
  v25 = v37;
  if (v37 == 1)
  {
    *(a3 + 64) = *&v36[5];
    *(a3 + 80) = v36[7];
    memset(&v36[5], 0, 24);
    *(a3 + 88) = 1;
  }

  *(a3 + 96) = 1;
  v33 = off_101F5ABD0;
  v35 = &unk_101F5AC80;
  if (v25 && v36[5])
  {
    v36[6] = v36[5];
    operator delete(v36[5]);
    v24 = v36[4];
  }

  if ((v24 & 1) != 0 && SHIBYTE(v36[3]) < 0)
  {
    operator delete(v36[1]);
  }

LABEL_31:
}

id sub_10149733C(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 && [v3 hasPrefix:@"+"])
  {
    v5 = [v4 substringFromIndex:1];

    v4 = v5;
  }

  if (v4 && [v4 length] && objc_msgSend(v4, "length") <= 0xF)
  {
    v6 = +[NSCharacterSet decimalDigitCharacterSet];
    v7 = [NSCharacterSet characterSetWithCharactersInString:v4];
    v8 = [v6 isSupersetOfSet:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_101497438(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 myShortHandle];
    v8 = sub_101497A9C(v7);

    if (v8)
    {
      v9 = [v6 otherShortHandle];
      v10 = sub_101497A9C(v9);

      if (v10)
      {
        if ([v6 partNumber] - 1 >= 4)
        {
          if (a2)
          {
            v33 = NSLocalizedDescriptionKey;
            v34 = @"Invalid partNumber";
            v20 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
            *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v20];
          }
        }

        else if ([v6 totalParts] - 1 >= 4)
        {
          if (a2)
          {
            v31 = NSLocalizedDescriptionKey;
            v32 = @"Invalid totalParts";
            v21 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
            *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v21];
          }
        }

        else
        {
          v11 = [v6 payload];
          if (v11 && ([v6 payload], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "length"), v12, v11, v13))
          {
            v14 = [v6 payload];
            v15 = [v14 length];

            if (v15 < 0x94)
            {
              v25 = 0u;
              v26 = 0u;
              *__p = 0u;
              memset(v23, 0, sizeof(v23));
              sub_101497B00(v23);
            }

            if (a2)
            {
              v27 = NSLocalizedDescriptionKey;
              v28 = @"Payload is too big";
              v16 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
              *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v16];
            }
          }

          else if (a2)
          {
            v29 = NSLocalizedDescriptionKey;
            v30 = @"Payload is missing";
            v22 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
            *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v22];
          }
        }
      }

      else if (a2)
      {
        v35 = NSLocalizedDescriptionKey;
        v36 = @"Invalid otherShortHandle";
        v19 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v19];
      }
    }

    else if (a2)
    {
      v37 = NSLocalizedDescriptionKey;
      v38 = @"Invalid myShortHandle";
      v18 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v18];
    }
  }

  else if (a2)
  {
    v39 = NSLocalizedDescriptionKey;
    v40 = @"Message is nil";
    v17 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v17];
  }

  *a3 = 0;
  a3[112] = 0;
}

BOOL sub_101497A9C(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 unsignedLongLongValue];
    v3 = [v2 unsignedLongLongValue] >> 57 == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_101497B00(uint64_t a1)
{
  *a1 = off_101EF2120;
  *a1 = off_101EF2120;
  *(a1 + 8) = 16;
  *(a1 + 12) = 13;
  *(a1 + 16) = &unk_101EF2198;
  *a1 = &off_101EF2240;
  *a1 = off_101EF1F88;
  *(a1 + 16) = &unk_101EF2038;
  *(a1 + 24) = 2560;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  operator new();
}

void sub_101497CE4(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_101497D04(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    if (a2)
    {
      v51 = NSLocalizedDescriptionKey;
      v52 = @"Message is nil";
      v14 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v14];
    }

    goto LABEL_11;
  }

  v7 = [v5 shortHandles];
  if (!v7 || ([v6 shortHandles], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7, !v9))
  {
    if (a2)
    {
      v49 = NSLocalizedDescriptionKey;
      v50 = @"Short handles are missing";
      v13 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v13];
    }

    goto LABEL_11;
  }

  v10 = [v6 shortHandles];
  v11 = [v10 count];

  if (v11 >= 0x18)
  {
    if (a2)
    {
      v47 = NSLocalizedDescriptionKey;
      v48 = @"Too many short handles";
      v12 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v12];
    }

LABEL_11:
    *a3 = 0;
    *(a3 + 56) = 0;
    goto LABEL_12;
  }

  __p = 0;
  v43 = 0uLL;
  v15 = [v6 shortHandles];
  v16 = [v15 count];
  if (v16)
  {
    if (!(v16 >> 61))
    {
      sub_10006A8B4(&__p, v16);
    }

    sub_1000CE3D4();
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = [v6 shortHandles];
  v37 = v17;
  v18 = [v17 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v18)
  {
    v19 = *v39;
    while (2)
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v38 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || !sub_101497A9C(v21))
        {
          if (a2)
          {
            v44 = NSLocalizedDescriptionKey;
            v45 = @"Invalid shortHandle";
            v36 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
            *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v36];
          }

          *a3 = 0;
          *(a3 + 56) = 0;

          if (__p)
          {
            *&v43 = __p;
            operator delete(__p);
          }

          goto LABEL_12;
        }

        v22 = [v21 unsignedLongLongValue];
        v23 = v43;
        if (v43 >= *(&v43 + 1))
        {
          v25 = __p;
          v26 = v43 - __p;
          v27 = (v43 - __p) >> 3;
          v28 = v27 + 1;
          if ((v27 + 1) >> 61)
          {
            sub_1000CE3D4();
          }

          v29 = *(&v43 + 1) - __p;
          if ((*(&v43 + 1) - __p) >> 2 > v28)
          {
            v28 = v29 >> 2;
          }

          v30 = v29 >= 0x7FFFFFFFFFFFFFF8;
          v31 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v30)
          {
            v31 = v28;
          }

          if (v31)
          {
            sub_10006A8B4(&__p, v31);
          }

          *(8 * v27) = v22;
          v24 = 8 * v27 + 8;
          memcpy(0, v25, v26);
          v32 = __p;
          __p = 0;
          v43 = v24;
          if (v32)
          {
            operator delete(v32);
          }

          v17 = v37;
        }

        else
        {
          *v43 = v22;
          v24 = v23 + 8;
        }

        *&v43 = v24;
      }

      v18 = [v17 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v33 = __p;
  v34 = v43;
  __p = 0;
  v35 = *(&v43 + 1);
  v43 = 0uLL;
  *a3 = off_101EF26C8;
  *a3 = off_101EF26C8;
  *(a3 + 8) = 0xE00000010;
  *(a3 + 16) = &unk_101EF2740;
  *a3 = &off_101EF27E8;
  *a3 = off_101EF2530;
  *(a3 + 16) = &unk_101EF25E0;
  *(a3 + 24) = 2816;
  *(a3 + 32) = v33;
  *(a3 + 40) = v34;
  *(a3 + 48) = v35;
  *(a3 + 56) = 1;
LABEL_12:
}

void sub_101498458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_101498504(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    if (a2)
    {
      v55 = NSLocalizedDescriptionKey;
      v56 = @"Message is nil";
      v11 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v11];
    }

    goto LABEL_21;
  }

  v7 = [v5 context];

  if (!v7)
  {
    if (a2)
    {
      v53 = NSLocalizedDescriptionKey;
      v54 = @"Context is missing";
      v12 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v12];
    }

    goto LABEL_21;
  }

  v8 = [v6 context];
  v9 = sub_100018A64([v8 slotID]);

  if ((v9 - 3) <= 0xFFFFFFFD)
  {
    if (a2)
    {
      v51 = NSLocalizedDescriptionKey;
      v52 = @"Invalid context slotID";
      v10 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v10];
    }

LABEL_21:
    *a3 = 0;
    a3[96] = 0;
    goto LABEL_22;
  }

  v13 = [v6 destinationPhoneNumber];
  if (!v13 || ([v6 destinationPhoneNumber], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, !v15))
  {
    if (a2)
    {
      v49 = NSLocalizedDescriptionKey;
      v50 = @"destinationPhoneNumber is missing";
      v19 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v19];
    }

    goto LABEL_21;
  }

  v16 = [v6 destinationPhoneNumber];
  v17 = sub_10149733C(v16, 1);

  if ((v17 & 1) == 0)
  {
    if (a2)
    {
      v47 = NSLocalizedDescriptionKey;
      v48 = @"destinationPhoneNumber is invalid";
      v20 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v20];
    }

    goto LABEL_21;
  }

  if (([v6 codecID] & 0x8000000000000000) != 0 || objc_msgSend(v6, "codecID") >= 0x10)
  {
    if (a2)
    {
      v45 = NSLocalizedDescriptionKey;
      v46 = @"Invalid codecID";
      v18 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v18];
    }

    goto LABEL_21;
  }

  v21 = [v6 textPayload];
  if (!v21 || ([v6 textPayload], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "length"), v22, v21, !v23))
  {
    if (a2)
    {
      v43 = NSLocalizedDescriptionKey;
      v44 = @"textPayload is missing";
      v27 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v27];
    }

    goto LABEL_21;
  }

  v24 = [v6 textPayload];
  v25 = [v24 length];

  if (v25 >= 0x8F)
  {
    if (a2)
    {
      v41 = NSLocalizedDescriptionKey;
      v42 = @"textPayload is too big";
      v26 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v26];
    }

    goto LABEL_21;
  }

  memset(v40, 0, sizeof(v40));
  v38 = 0u;
  v39 = 0u;
  sub_101498C70(&v38);
  HIDWORD(v39) = v9;
  v28 = [v6 destinationPhoneNumber];
  LOBYTE(v40[0]) = [v28 hasPrefix:@"+"];

  v29 = [v6 destinationPhoneNumber];
  v30 = v29;
  sub_100016890((v40 + 8), [v29 UTF8String]);

  if (LOBYTE(v40[0]) == 1)
  {
    std::string::erase((v40 + 8), 0, 1uLL);
  }

  LOBYTE(v40[2]) = [v6 codecID];
  v31 = [v6 textPayload];
  v32 = v31;
  v33 = [v31 bytes];

  v34 = [v6 textPayload];
  v35 = [v34 length];
  v36 = 0uLL;
  v37 = 0;
  sub_1000DCF88(&v36, v33, &v35[v33], v35);
  if (*(&v40[2] + 1))
  {
    *&v40[3] = *(&v40[2] + 1);
    operator delete(*(&v40[2] + 1));
  }

  *(&v40[2] + 8) = v36;
  *(&v40[3] + 1) = v37;
  v37 = 0;
  v36 = 0uLL;

  BYTE1(v40[0]) = [v6 notifyDowngrade];
  sub_101499BB4(a3, &v38);
  sub_100F2A104(&v38);
LABEL_22:
}

uint64_t sub_101498C70(uint64_t result)
{
  *result = off_101EF2CD0;
  *result = off_101EF2CD0;
  *(result + 8) = 32;
  *(result + 12) = 18;
  *(result + 16) = &unk_101EF2D48;
  *result = &off_101EF2DF0;
  *result = off_101EF2B38;
  *(result + 16) = &unk_101EF2BE8;
  *(result + 24) = 3328;
  *(result + 28) = 0;
  *(result + 32) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 64) = 0;
  return result;
}

id sub_101498DF4(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  sub_1001E0090(__p, *(a1 + 40), *(a1 + 48), *(a1 + 48) - *(a1 + 40));
  if (v11 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = [NSString stringWithCString:v4 encoding:4];
  v6 = [CTStewieEmergencyTextMessage alloc];
  if (*(a1 + 28) == 1)
  {
    v7 = 3;
  }

  else
  {
    v7 = *(a1 + 28) == 0;
  }

  v8 = [v6 initIncomingTextMessageWithConversationID:*(a1 + 26) sequenceNum:*(a1 + 30) emergencyText:v5 notifyOption:v7 error:a2];

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void sub_101498ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_101498EF8(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  sub_1001E0090(__p, *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = [NSString stringWithCString:v4 encoding:4];
  v6 = [[CTStewieRoadsideTextMessage alloc] initIncomingTextMessageWithConversationID:*(a1 + 26) providerId:*(a1 + 28) sequenceNum:*(a1 + 32) text:v5 error:a2];

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_101498FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_101498FE8(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(NSMutableArray);
  v5 = *(a1 + 64);
  for (i = *(a1 + 72); v5 != i; v5 += 2)
  {
    v7 = *v5;
    v8 = *(v5 + 8);
    v9 = [CTStewieIMessageLiteSummaryPendingCount alloc];
    v10 = [NSNumber numberWithUnsignedLongLong:v7];
    v11 = [v9 initWithOtherShortHandle:v10 pendingCount:v8 error:0];
    [v4 addObject:v11];
  }

  v12 = [[CTStewieIMessageLiteSummaryMessage alloc] initWithPendingIMessageLiteTotalCount:*(a1 + 30) pendingCounts:v4 error:a2];

  return v12;
}

id sub_101499114(uint64_t a1, uint64_t a2)
{
  v2 = [[CTStewieSatSmsSummaryMessage alloc] initWithPendingSatSmsTotalCount:*(a1 + 31) error:a2];

  return v2;
}

id sub_101499160(uint64_t a1, uint64_t a2)
{
  v4 = [NSData dataWithBytes:*(a1 + 88) length:*(a1 + 96) - *(a1 + 88)];
  v5 = [CTStewieIMessageLiteMessageIncoming alloc];
  v6 = [NSNumber numberWithUnsignedLongLong:*(a1 + 32)];
  v7 = *(a1 + 40);
  v8 = *(a1 + 41);
  v9 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48)];
  v10 = [NSNumber numberWithUnsignedLongLong:*(a1 + 56)];
  LOBYTE(v13) = *(a1 + 80);
  v11 = [v5 initWithTimestamp:v6 pendingTotalCount:v7 pendingCount:v8 myShortHandle:v9 otherShortHandle:v10 partNumber:*(a1 + 64) totalParts:*(a1 + 72) payload:v4 isRelay:v13 error:a2];

  return v11;
}

id sub_1014992AC(uint64_t a1, uint64_t a2)
{
  v21 = [NSData dataWithBytes:*(a1 + 112) length:*(a1 + 120) - *(a1 + 112)];
  v4 = [CTStewieSatSmsMessageIncoming alloc];
  v5 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:sub_10000FD54(*(a1 + 40))];
  v6 = [NSNumber numberWithUnsignedLongLong:*(a1 + 32)];
  v7 = *(a1 + 44);
  v8 = *(a1 + 45);
  v9 = [NSString alloc];
  if (*(a1 + 103) >= 0)
  {
    v10 = a1 + 80;
  }

  else
  {
    v10 = *(a1 + 80);
  }

  v11 = [v9 initWithUTF8String:v10];
  v12 = *(a1 + 104);
  v13 = [NSString alloc];
  v16 = *(a1 + 136);
  v15 = a1 + 136;
  v14 = v16;
  if (*(v15 + 23) >= 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  v18 = [v13 initWithUTF8String:v17];
  v19 = [v4 initWithContext:v5 timestamp:v6 pendingTotalCount:v7 pendingCount:v8 sourcePhoneNumber:v11 codecID:v12 textPayload:v21 uniqueID:v18 error:a2];

  return v19;
}

void *sub_10149945C(void *a1)
{
  *a1 = off_101EE4118;
  *a1 = off_101EE4118;
  a1[2] = &unk_101EE41C8;
  v2 = a1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_10149955C(uint64_t a1)
{
  *a1 = off_101EE3DD8;
  *a1 = off_101EE3DD8;
  *(a1 + 16) = &unk_101EE3E88;
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      *(a1 + 40) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

void *sub_10149965C(void *a1)
{
  *a1 = off_101EDD378;
  *a1 = off_101EDD378;
  a1[2] = &unk_101EDD428;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

__n128 sub_101499750(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = off_101F5B0A8;
  a1->n128_u64[0] = off_101F5B0A8;
  a1->n128_u64[1] = a2->n128_u64[1];
  a1[1].n128_u64[0] = &unk_101F5B120;
  a1->n128_u64[0] = &off_101F5B1C8;
  a1->n128_u64[0] = off_101F5AF10;
  a1[1].n128_u64[0] = &unk_101F5AFC0;
  *(&a1[1] + 8) = a2[1].n128_u64[1];
  *(&a1[2] + 8) = 0uLL;
  a1[2] = a2[2];
  a1[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[2] = 0uLL;
  a2[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = a2[3].n128_u64[1];
  result = a2[4];
  a1[4] = result;
  a2[4] = 0uLL;
  a1[5].n128_u8[0] = 1;
  return result;
}

uint64_t sub_1014998E8(uint64_t a1)
{
  *a1 = off_101F5ABD0;
  *a1 = off_101F5ABD0;
  *(a1 + 16) = &unk_101F5AC80;
  if (*(a1 + 88) == 1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      *(a1 + 72) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

uint64_t sub_101499A04(uint64_t result, uint64_t a2)
{
  *result = off_101EF2120;
  *result = off_101EF2120;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = &unk_101EF2198;
  *result = &off_101EF2240;
  *result = off_101EF1F88;
  *(result + 16) = &unk_101EF2038;
  v2 = *(a2 + 24);
  v3 = *(a2 + 40);
  *(result + 49) = *(a2 + 49);
  *(result + 40) = v3;
  *(result + 24) = v2;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = 0;
  *(result + 72) = *(a2 + 72);
  v4 = *(a2 + 96);
  *(result + 88) = *(a2 + 88);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  v5 = *(a2 + 104);
  *(result + 96) = v4;
  *(result + 104) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 112) = 1;
  return result;
}

__n128 sub_101499BB4(uint64_t a1, uint64_t a2)
{
  *a1 = off_101EF2CD0;
  *a1 = off_101EF2CD0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = &unk_101EF2D48;
  *a1 = &off_101EF2DF0;
  *a1 = off_101EF2B38;
  *(a1 + 16) = &unk_101EF2BE8;
  v2 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v2;
  v3 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v3;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  result = *(a2 + 72);
  *(a1 + 72) = result;
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a1 + 96) = 1;
  return result;
}

double sub_101499D64@<D0>(_OWORD *a1@<X8>)
{
  sub_100E989C8(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

void sub_101499DA0(NanoPreferencesSyncFactoryInterface *a1)
{
  NanoPreferencesSyncFactoryInterface::~NanoPreferencesSyncFactoryInterface(a1);

  operator delete();
}

void sub_101499DF8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F40680;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101499E74(uint64_t a1)
{
  *a1 = off_101F406E0;
  if (*(a1 + 8))
  {
    v2 = **(a1 + 48);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = (a1 + 24);
      if (*(a1 + 47) < 0)
      {
        v3 = *v3;
      }

      v6 = 136446210;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I WiFi assertion released for '%{public}s'", &v6, 0xCu);
    }
  }

  sub_100534838((a1 + 48));
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

void sub_101499F74(uint64_t a1)
{
  sub_101499E74(a1);

  operator delete();
}

void sub_10149A218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, std::__shared_weak_count *a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    (*(a11->isa + 1))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

WiFiManagerInterface *sub_10149A30C(uint64_t a1)
{
  *a1 = off_101F40700;
  v2 = *(a1 + 184);
  if (v2)
  {
    [v2 suspend];
    [*(a1 + 184) invalidate];
  }

  if (*(a1 + 216) == 1)
  {
    sub_10000501C(__p, "~WiFiManagerImpl");
    sub_10149A434(a1, __p);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100005978((a1 + 256));
  sub_10048662C((a1 + 248));
  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  sub_100083940((a1 + 208));

  v3 = *(a1 + 160);
  if (v3)
  {
    do
    {
      v4 = *v3;
      v5 = v3[4];
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v6 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  std::mutex::~mutex((a1 + 80));
  v7 = *(a1 + 72);
  if (v7)
  {
    sub_100004A34(v7);
  }

  return sub_1014587CC(a1);
}

const void **sub_10149A434(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 248);
  if (v3)
  {
    if (!SCDynamicStoreSetNotificationKeys(v3, 0, 0))
    {
      v5 = *(a1 + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Failed to clear dynamic store notification key", v12, 2u);
      }
    }

    if (!SCDynamicStoreSetDispatchQueue(*(a1 + 248), 0))
    {
      v6 = *(a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Failed to clear dynamic store dispatch queue", v12, 2u);
      }
    }

    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      *v12 = 136446210;
      *&v12[4] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I WoW monitoring disabled successfully for '%{public}s'", v12, 0xCu);
    }

    v9 = *(a1 + 248);
    *(a1 + 248) = 0;
    *v12 = v9;
    sub_10048662C(v12);
  }

  v10 = *(a1 + 256);
  *(a1 + 256) = 0;
  *v12 = v10;
  return sub_100005978(v12);
}

void sub_10149A5BC(uint64_t a1)
{
  sub_10149A30C(a1);

  operator delete();
}

void sub_10149A5F4(uint64_t a1, NSObject **a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_10149A6A0;
  v4[3] = &unk_101F40758;
  v3 = *a2;
  v4[4] = a1;
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(group);
  }

  sub_10149F148((a1 + 8), v4);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void sub_10149A6A0(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, *(*(a1 + 32) + 48));
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000501C(buf, "/cc/events/dump_state");
  operator new();
}

void sub_10149ACA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if ((v34 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_10149AE28(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 192))
    {
      v3 = "enabled";
    }

    else
    {
      v3 = "disabled";
    }

    *buf = 136315138;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I WoW is %s", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 216) == 1)
    {
      if (*(a1 + 248))
      {
        v4 = "enabled";
      }

      else
      {
        v4 = "requested";
      }
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I WoW monitoring is %s", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = asStringBool(*(a1 + 264));
    v6 = subscriber::asString();
    *buf = 136315394;
    v15 = v5;
    v16 = 2080;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I CarrierMobileHotspot usage: active=%s sim=%s", buf, 0x16u);
  }

  std::mutex::lock((a1 + 80));
  for (i = *(a1 + 160); i; i = *i)
  {
    v8 = i[4];
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = v9;
        if (i[3])
        {
          v11 = *(a1 + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = asString();
            shared_owners = v10->__shared_owners_;
            *buf = 136315394;
            v15 = v12;
            v16 = 2048;
            v17 = shared_owners;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I WiFiManagerClient type '%s' (%lu refs)", buf, 0x16u);
          }
        }

        sub_100004A34(v10);
      }
    }
  }

  std::mutex::unlock((a1 + 80));
}

void sub_10149B0B4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  if (a3 == a4)
  {
    sub_10000501C(&__p, "");
  }

  else if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "";
    if (!a2)
    {
      v7 = "un";
    }

    v8 = (a1 + 224);
    if (*(a1 + 247) < 0)
    {
      v8 = *v8;
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    v22 = 2080;
    v23 = v8;
    v24 = 2080;
    v25 = p_p;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I WiFi: %savailable. Interface name changed from '%s' -> '%s'", buf, 0x20u);
  }

  v10 = (a1 + 224);
  v11 = *(a1 + 247);
  if (v11 < 0)
  {
    if (!*(a1 + 232))
    {
      goto LABEL_36;
    }
  }

  else if (!*(a1 + 247))
  {
    goto LABEL_36;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v13 = *(a1 + 232);
    if (v11 >= 0)
    {
      v13 = *(a1 + 247);
    }

    if (v13 != size || (v11 >= 0 ? (v14 = (a1 + 224)) : (v14 = *v10), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v15 = &__p) : (v15 = __p.__r_.__value_.__r.__words[0]), memcmp(v14, v15, size)))
    {
      if (*(a1 + 216) == 1)
      {
        sub_10000501C(buf, "Interface change. Tearing down WoW monitoring on previous interface");
        sub_10149A434(a1, buf);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(*buf);
        }

        LOBYTE(v11) = *(a1 + 247);
      }
    }
  }

LABEL_36:
  if ((v11 & 0x80u) == 0)
  {
    v16 = v11;
  }

  else
  {
    v16 = *(a1 + 232);
  }

  v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  if (v16 != v17 || ((v11 & 0x80u) == 0 ? (v18 = (a1 + 224)) : (v18 = *v10), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v19 = &__p) : (v19 = __p.__r_.__value_.__r.__words[0]), memcmp(v18, v19, v16)))
  {
    std::string::operator=((a1 + 224), &__p);
    if (*(a1 + 216) == 1)
    {
      if ((*(a1 + 247) & 0x8000000000000000) != 0)
      {
        if (!*(a1 + 232))
        {
          goto LABEL_55;
        }
      }

      else if (!*(a1 + 247))
      {
        goto LABEL_55;
      }

      sub_10149B760(a1);
    }
  }

LABEL_55:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_10149B33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_10149B37C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void sub_10149B3D0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 40);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void sub_10149B420(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10149B520(uint64_t a1, __int128 *a2)
{
  __dst = 0uLL;
  v7 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v7 = *(a2 + 2);
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_10149B634;
  v3[3] = &unk_101EA6B50;
  v3[4] = a1;
  if (SHIBYTE(v7) < 0)
  {
    sub_100005F2C(__p, __dst, *(&__dst + 1));
  }

  else
  {
    *__p = __dst;
    v5 = v7;
  }

  sub_10149F148((a1 + 8), v3);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__dst);
  }
}

void sub_10149B618(_Unwind_Exception *exception_object)
{
  if (*(v1 - 25) < 0)
  {
    operator delete(*(v1 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_10149B634(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 216))
  {
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v4 = *v4;
      }

      v7 = 136446210;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I WoW monitoring already enabled. requested by: '%{public}s'", &v7, 0xCu);
    }
  }

  else
  {
    *(v2 + 216) = 1;
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v6 = *v6;
      }

      v7 = 136446210;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Requested to enable WoW monitoring for '%{public}s'", &v7, 0xCu);
    }

    sub_10149B760(v2);
  }
}

void sub_10149B760(uint64_t a1)
{
  v2 = *(a1 + 247);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 247))
    {
      goto LABEL_3;
    }

LABEL_7:
    v3 = *(a1 + 40);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf.version) = 0;
    v4 = "#I Missing interface name";
    goto LABEL_9;
  }

  if (!*(a1 + 232))
  {
    goto LABEL_7;
  }

LABEL_3:
  if (*(a1 + 248))
  {
    v3 = *(a1 + 40);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf.version) = 0;
    v4 = "#I WoW monitoring has already been setup";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, &buf, 2u);
    return;
  }

  ifname = 0;
  if ((v2 & 0x80000000) != 0)
  {
    sub_100005F2C(__p, *(a1 + 224), *(a1 + 232));
  }

  else
  {
    *__p = *(a1 + 224);
    v22 = *(a1 + 240);
  }

  if (SHIBYTE(v22) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v26 = v22;
  }

  values = 0;
  if (SHIBYTE(v26) < 0)
  {
    sub_100005F2C(&buf, __dst, *(&__dst + 1));
  }

  else
  {
    *&buf.version = __dst;
    buf.retain = v26;
  }

  *v27 = 0;
  if (ctu::cf::convert_copy())
  {
    v5 = values;
    values = *v27;
    v17[0] = v5;
    sub_100005978(v17);
  }

  if (SHIBYTE(buf.retain) < 0)
  {
    operator delete(buf.version);
  }

  ifname = values;
  values = 0;
  sub_100005978(&values);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, ifname, @"ActiveDuringSleepSupported");
  v7 = *(a1 + 256);
  *(a1 + 256) = NetworkInterfaceEntity;
  buf.version = v7;
  sub_100005978(&buf);
  values = *(a1 + 256);
  buf.version = 0;
  memset(&buf.retain, 0, 24);
  buf.info = a1;
  store = 0;
  store = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.CommCenter:WakeOnWifiChange", sub_10149BF7C, &buf);
  if (!store)
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      __dst = 0uLL;
      v26 = 0;
      ctu::cf::assign();
      *v17 = __dst;
      v18 = v26;
      v11 = v17;
      if (SHIBYTE(v26) < 0)
      {
        v11 = v17[0];
      }

      *v27 = 136315138;
      *&v27[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Failed to create dynamic store for key '%s'", v27, 0xCu);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(v17[0]);
      }
    }

    goto LABEL_52;
  }

  v16 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  if (SCDynamicStoreSetNotificationKeys(store, v16, 0))
  {
    if (SCDynamicStoreSetDispatchQueue(store, *(a1 + 24)))
    {
      sub_100DAA5FC((a1 + 248), &store);
      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        __dst = 0uLL;
        v26 = 0;
        ctu::cf::assign();
        *v17 = __dst;
        v18 = v26;
        v9 = v17;
        if (SHIBYTE(v26) < 0)
        {
          v9 = v17[0];
        }

        *v27 = 136315138;
        *&v27[4] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I WoW monitoring enabled successfully for key '%s'", v27, 0xCu);
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }
      }

      sub_10149BF8C(a1, 0);
      goto LABEL_51;
    }

    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      __dst = 0uLL;
      v26 = 0;
      ctu::cf::assign();
      *v17 = __dst;
      v18 = v26;
      v15 = v17;
      if (SHIBYTE(v26) < 0)
      {
        v15 = v17[0];
      }

      *v27 = 136315138;
      *&v27[4] = v15;
      v14 = "#I Failed to set dynamic store dispatch queue for key '%s'";
LABEL_49:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, v27, 0xCu);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(v17[0]);
      }
    }
  }

  else
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      __dst = 0uLL;
      v26 = 0;
      ctu::cf::assign();
      *v17 = __dst;
      v18 = v26;
      v13 = v17;
      if (SHIBYTE(v26) < 0)
      {
        v13 = v17[0];
      }

      *v27 = 136315138;
      *&v27[4] = v13;
      v14 = "#I Failed to set dynamic store notification key '%s'";
      goto LABEL_49;
    }
  }

LABEL_51:
  sub_100010250(&v16);
LABEL_52:
  sub_10048662C(&store);
  sub_100005978(&ifname);
}

void sub_10149BC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, const void *a31)
{
  if (*(v31 - 89) < 0)
  {
    operator delete(*(v31 - 112));
  }

  sub_100010250(&a10);
  sub_10048662C(&a14);
  sub_100005978(&a31);
  _Unwind_Resume(a1);
}

void sub_10149BD38(uint64_t a1, __int128 *a2)
{
  __dst = 0uLL;
  v7 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v7 = *(a2 + 2);
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_10149BE4C;
  v3[3] = &unk_101EA6B50;
  v3[4] = a1;
  if (SHIBYTE(v7) < 0)
  {
    sub_100005F2C(__p, __dst, *(&__dst + 1));
  }

  else
  {
    *__p = __dst;
    v5 = v7;
  }

  sub_10149F148((a1 + 8), v3);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__dst);
  }
}

void sub_10149BE30(_Unwind_Exception *exception_object)
{
  if (*(v1 - 25) < 0)
  {
    operator delete(*(v1 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_10149BE4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 216) == 1)
  {
    *(v2 + 216) = 0;
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v4 = *v4;
      }

      v7 = 136446210;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Requested to disable WoW monitoring for '%{public}s'", &v7, 0xCu);
    }

    sub_10149A434(v2, (a1 + 40));
  }

  else
  {
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v6 = *v6;
      }

      v7 = 136446210;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I WoW monitoring already disabled. requested by: '%{public}s'", &v7, 0xCu);
    }
  }
}

const void **sub_10149BF8C(uint64_t a1, const char *a2)
{
  if (a2)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I checkWoWSupport_sync(): triggered by '%s'", buf, 0xCu);
    }
  }

  result = *(a1 + 248);
  if (result)
  {
    v6 = *(a1 + 256);
    if (v6)
    {
      v7 = SCDynamicStoreCopyValue(result, v6);
      v13 = v7;
      v8 = v7 != 0;
      v9 = *(a1 + 217);
      if (v9 != v8)
      {
        v10 = *(a1 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = CSIBOOLAsString(v9);
          v12 = CSIBOOLAsString(v7 != 0);
          *buf = 136315394;
          v15 = v11;
          v16 = 2080;
          v17 = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I WoW support changed from %s to %s", buf, 0x16u);
        }

        *(a1 + 217) = v8;
        sub_100083E9C(&event::data::wakeOnWifiChanged, v7 != 0);
      }

      return sub_10000A1EC(&v13);
    }
  }

  return result;
}

void sub_10149C0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

void sub_10149C11C(uint64_t a1, __int128 *a2)
{
  __dst = 0uLL;
  v7 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v7 = *(a2 + 2);
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_10149C230;
  v3[3] = &unk_101EA6B50;
  v3[4] = a1;
  if (SHIBYTE(v7) < 0)
  {
    sub_100005F2C(__p, __dst, *(&__dst + 1));
  }

  else
  {
    *__p = __dst;
    v5 = v7;
  }

  sub_10149F148((a1 + 8), v3);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__dst);
  }
}

void sub_10149C214(_Unwind_Exception *exception_object)
{
  if (*(v1 - 25) < 0)
  {
    operator delete(*(v1 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_10149C230(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 192))
  {
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v4 = *v4;
      }

      *buf = 136446210;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I WoW already enabled. requested by: '%{public}s'", buf, 0xCu);
    }

    return;
  }

  if (qword_101FCAC18 != -1)
  {
    dispatch_once(&qword_101FCAC18, &stru_101F407E0);
  }

  if (byte_101FCAC12 == 1 && !*(v2 + 184))
  {
    v5 = objc_alloc_init(CWFInterface);
    v6 = *(v2 + 184);
    *(v2 + 184) = v5;

    v7 = *(v2 + 184);
    if (v7)
    {
      [v7 resume];
    }

    else
    {
      v8 = *(v2 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to create CWFInterface", buf, 2u);
      }
    }
  }

  if (*(v2 + 184))
  {
    v9 = [CWFActivity activityWithType:4 reason:@"CTWiFiManager"];
    v10 = *(v2 + 184);
    v20 = 0;
    v11 = [v10 beginActivity:v9 error:&v20];
    v12 = v20;
    if (v11)
    {
      objc_storeStrong((v2 + 192), v9);
      v13 = *(v2 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = (a1 + 40);
        if (*(a1 + 63) < 0)
        {
          v14 = *v14;
        }

        *buf = 136446210;
        v22 = v14;
        v15 = "#I WoW enabled successfully for '%{public}s'";
        v16 = v13;
        v17 = 12;
LABEL_24:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      }
    }

    else
    {
      v18 = *(v2 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = (a1 + 40);
        if (*(a1 + 63) < 0)
        {
          v19 = *v19;
        }

        *buf = 136446466;
        v22 = v19;
        v23 = 2112;
        v24 = v12;
        v15 = "#I Failed to enable WoW for '%{public}s'. Error: %@";
        v16 = v18;
        v17 = 22;
        goto LABEL_24;
      }
    }
  }
}

void sub_10149C4E0(uint64_t a1, __int128 *a2)
{
  __dst = 0uLL;
  v7 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v7 = *(a2 + 2);
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_10149C5F4;
  v3[3] = &unk_101EA6B50;
  v3[4] = a1;
  if (SHIBYTE(v7) < 0)
  {
    sub_100005F2C(__p, __dst, *(&__dst + 1));
  }

  else
  {
    *__p = __dst;
    v5 = v7;
  }

  sub_10149F148((a1 + 8), v3);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__dst);
  }
}

void sub_10149C5D8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 25) < 0)
  {
    operator delete(*(v1 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_10149C5F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = a1 + 40;
  if (*(v2 + 192))
  {
    [*(v2 + 184) endActivity:?];
    v4 = *(v2 + 192);
    *(v2 + 192) = 0;

    v5 = *(v2 + 40);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    if (*(a1 + 63) >= 0)
    {
      v6 = v3;
    }

    else
    {
      v6 = *(a1 + 40);
    }

    v9 = 136446210;
    v10 = v6;
    v7 = "#I WoW disabled successfully for '%{public}s'";
  }

  else
  {
    v5 = *(v2 + 40);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    if (*(a1 + 63) >= 0)
    {
      v8 = v3;
    }

    else
    {
      v8 = *(a1 + 40);
    }

    v9 = 136446210;
    v10 = v8;
    v7 = "#I WoW already disabled. requested by: '%{public}s'";
  }

  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, &v9, 0xCu);
}

void sub_10149C714(uint64_t a1@<X0>, uint64_t *a3@<X8>, uint64_t x2_0@<X2>)
{
  v5 = 0;
  v6 = 0;
  sub_10149C98C(&v5, a1, x2_0);
  if (v5)
  {
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_10149C904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  shared_weak_owners = v11[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    sub_100004A34(shared_weak_owners);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  std::__shared_weak_count::~__shared_weak_count(v11);
  operator delete(v14);
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

void sub_10149C98C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  std::mutex::lock((a2 + 80));
  v6 = *(a2 + 152);
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v3;
    if (v6 <= v3)
    {
      v8 = v3 % *(a2 + 152);
    }
  }

  else
  {
    v8 = (v6 - 1) & v3;
  }

  v9 = *(*(a2 + 144) + 8 * v8);
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = *v9;
  if (!v10)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v3)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= v6)
      {
        v11 %= v6;
      }
    }

    else
    {
      v11 &= v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_17;
    }

LABEL_16:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  if (*(v10 + 16) != v3)
  {
    goto LABEL_16;
  }

  v12 = v10[4];
  if (!v12)
  {
LABEL_17:
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_18;
  }

  v13 = v10[3];
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *a1 = 0;
  v14 = std::__shared_weak_count::lock(v12);
  a1[1] = v14;
  if (!v14 || (*a1 = v13) == 0)
  {
LABEL_18:
    WiFiManagerClientCreate();
    operator new();
  }

  std::__shared_weak_count::__release_weak(v12);
  std::mutex::unlock((a2 + 80));
}

void sub_10149D0B0()
{
  __cxa_end_catch();
  if (v0)
  {
    JUMPOUT(0x10149D0D8);
  }

  JUMPOUT(0x10149D0E0);
}

void sub_10149D0FC(uint64_t a1, Registry **a2, unsigned int *a3)
{
  ServiceMap = Registry::getServiceMap(*a2);
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  v14[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, v14);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  PersonalityIdFromSlotId();
  (*(*v12 + 192))(&v16, v12, v14);
  *a1 = *v20;
  *(a1 + 16) = v21;
  v20[1] = 0;
  v21 = 0;
  v20[0] = 0;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
    if (v13)
    {
      return;
    }
  }

  else if (v13)
  {
    return;
  }

  sub_100004A34(v11);
}

void sub_10149D2C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10149D2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24))
  {
    v9[0] = 0;
    v9[1] = 0;
    v10 = 0;
    v5 = *(a3 + 23);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a3 + 8);
    }

    if (v5)
    {
      std::operator+<char>();
      v6 = std::string::append(&v8, ") ", 2uLL);
      v7 = *&v6->__r_.__value_.__l.__data_;
      v10 = v6->__r_.__value_.__r.__words[2];
      *v9 = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      sub_10000501C(v9, "");
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3321888768;
    v11[2] = sub_10149D4E4;
    v11[3] = &unk_101F40788;
    v11[4] = a1;
    if (SHIBYTE(v10) < 0)
    {
      sub_100005F2C(&__p, v9[0], v9[1]);
    }

    else
    {
      __p = *v9;
      v13 = v10;
    }

    sub_1000DEB68(v14, a2);
    sub_10149F148((a1 + 8), v11);
    sub_1000DC854(v14);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
    }
  }
}

void sub_10149D494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10149D4E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 264) = 0;
  v5 = 0;
  v6 = 0;
  sub_10149C98C(&v5, v2, 0);
  if (v5)
  {
    operator new();
  }

  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v4 = *v4;
    }

    buf = 136446210;
    *buf_4 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#N %{public}s: Could not obtain WiFiManagerClient", &buf, 0xCu);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_10149E19C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  __cxa_end_catch();
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(a17) < 0)
  {
    operator delete(a15);
  }

  JUMPOUT(0x10149E234);
}

uint64_t sub_10149E248(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    sub_100005F2C((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  return sub_1000DEB68(a1 + 64, a2 + 64);
}

void sub_10149E2A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_10149E2BC(uint64_t a1)
{
  sub_1000DC854(a1 + 64);
  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

uint64_t sub_10149E30C(uint64_t a1, uint64_t *a2)
{
  v17 = a1;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10149F870;
  v18[3] = &unk_101F40B78;
  v18[4] = a1 + 8;
  v18[5] = &v17;
  v19 = objc_retainBlock(v18);
  v4 = *(a1 + 24);
  if (*(a1 + 32))
  {
    v20 = 0;
    *block = _NSConcreteStackBlock;
    *&block[8] = 3221225472;
    *&block[16] = sub_10149F8BC;
    v22 = &unk_101E26940;
    v23 = &v20;
    v24 = &v19;
    dispatch_async_and_wait(v4, block);
  }

  else
  {
    v20 = 0;
    *block = _NSConcreteStackBlock;
    *&block[8] = 3221225472;
    *&block[16] = sub_10149F880;
    v22 = &unk_101E26940;
    v23 = &v20;
    v24 = &v19;
    dispatch_sync(v4, block);
  }

  v5 = v20;

  v6 = HIDWORD(v5);
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = asStringBool(v5 & 1);
    v9 = subscriber::asString();
    *block = 136315394;
    *&block[4] = v8;
    *&block[12] = 2080;
    *&block[14] = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I mobileHotspot: active=%s, sim=%s", block, 0x16u);
    if (v5)
    {
      v7 = *(a1 + 40);
      goto LABEL_8;
    }

    return 0;
  }

  if ((v5 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v10 = *a2;
  v11 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (v11)
    {
      *block = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N mobileHotspot: requested pInfo empty", block, 2u);
    }

    return 1;
  }

  if (v11)
  {
    v12 = asString();
    v13 = subscriber::asString();
    *block = 136315394;
    *&block[4] = v12;
    *&block[12] = 2080;
    *&block[14] = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I mobileHotspot: requested pInfo: type=%s sim=%s", block, 0x16u);
    v10 = *a2;
  }

  if (*(v10 + 49))
  {
    return 1;
  }

  result = 1;
  if (v6 != 3)
  {
    v15 = *(v10 + 52);
    if (v15 != 3 && v15 != HIDWORD(v5))
    {
      if (capabilities::ct::supportsGemini(1))
      {
        if (!v6)
        {
          *block = 0;
          *&block[8] = 0;
          ServiceMap = Registry::getServiceMap(*(a1 + 48));
          sub_101331AE4(block, ServiceMap);
          if (*block && v15 == (*(**block + 792))(*block))
          {
            if (*&block[8])
            {
              sub_100004A34(*&block[8]);
            }

            return 1;
          }

          if (*&block[8])
          {
            sub_100004A34(*&block[8]);
          }
        }

        return 0;
      }

      return 1;
    }
  }

  return result;
}

void sub_10149E64C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10149E66C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_10149E6D4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10149E728(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10149E768(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10149E794(ServiceManager::Service *this)
{
  *this = off_101F40870;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10149E7F0(ServiceManager::Service *this)
{
  *this = off_101F40870;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_10149E870@<X0>(uint64_t *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

__n128 sub_10149E95C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F408F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10149E994(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_10149E9DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10149EA28(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10149EA60(NSObject *a1, NSObject **a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 != 3)
    {
      if (a3 != 2)
      {
LABEL_2:
        *a2 = &off_101F40970;
        *(a2 + 4) = 0;
        return;
      }

      v9 = a2;
      goto LABEL_13;
    }

    v10 = ((*a2)[1].isa & 0x7FFFFFFFFFFFFFFFLL);
    if (v10 == ("N3ctu12DispatchSlotIZZN15WiFiManagerImpl10initializeEN8dispatch13group_sessionEEUb_E3$_0EE" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v10, ("N3ctu12DispatchSlotIZZN15WiFiManagerImpl10initializeEN8dispatch13group_sessionEEUb_E3$_0EE" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }
  }

  else
  {
    v6 = *&a1->isa;
    *a2 = *&a1->isa;
    isa = a1[2].isa;
    a2[2] = isa;
    if (isa)
    {
      atomic_fetch_add_explicit(isa + 2, 1uLL, memory_order_relaxed);
      v8 = *a2;
    }

    else
    {
      v8 = v6;
    }

    dispatch_retain(v8);
    if (a3 == 1)
    {
      v9 = a1;
LABEL_13:

      sub_10149EA28(v9);
    }
  }
}

void sub_10149EB5C(uint64_t a1, char a2, __int128 **a3)
{
  memset(v8, 0, sizeof(v8));
  sub_10004EFD0(v8, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10 = v7;
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v7);
    std::__shared_weak_count::__release_weak(v7);
    std::__shared_weak_count::__release_weak(v7);
    std::__shared_weak_count::__release_weak(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  else
  {
    v10 = 0;
  }

  v9[0] = off_101F40980;
  v9[1] = v6;
  sub_100148664(v5, v9, a2, v8);
}

void sub_10149EC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  sub_100148E4C(&a13);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  a13 = &a10;
  sub_1000087B4(&a13);
  _Unwind_Resume(a1);
}

void sub_10149EC90(void *a1, void *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    v5 = a1[1];
    *a2 = *a1;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = a1[1];
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZZN15WiFiManagerImpl10initializeEN8dispatch13group_sessionEEUb_E3$_0" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZZN15WiFiManagerImpl10initializeEN8dispatch13group_sessionEEUb_E3$_0" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *a2 = &off_101F40990;
    *(a2 + 4) = 0;
    return;
  }

  v6 = a2[1];
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_10149ED6C(uint64_t *a1, int a2, uint64_t *a3)
{
  v4 = a1[1];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *a1;
      if (*a1)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_10149B0B4(v9, a2, *a3, a3[1]);
        sub_100004A34(v8);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10149EDFC(_Unwind_Exception *a1)
{
  sub_100004A34(v1);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void *sub_10149EE18(void *a1)
{
  *a1 = off_101F409B0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10149EE64(void *a1)
{
  *a1 = off_101F409B0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_10149EED0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::lock(v2);
  }

  operator new();
}

void sub_10149EF80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10149F024(void *a1)
{
  *a1 = off_101F40A00;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_10149F070(void *a1)
{
  *a1 = off_101F40A00;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

void sub_10149F148(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = a1[1];
  if (!v4 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    sub_100013CC4();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10149F234;
  block[3] = &unk_101F40A38;
  v12 = v5;
  v13 = v6;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = v3;
  v11 = v9;
  dispatch_async(v8, block);

  if (v13)
  {
    sub_100004A34(v13);
  }

  sub_100004A34(v7);
}

uint64_t sub_10149F244(uint64_t result, uint64_t a2)
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

void sub_10149F260(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t *sub_10149F270(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_1001039A0((*v1 + 200));
  sub_10000501C(&__p, "/cc/events/dump_state");
  ctu::RestModule::unobserveEvent();
  if (v7 < 0)
  {
    operator delete(__p);
  }

  ctu::RestModule::disconnect((v2 + 64));
  sub_1000FF844(&v5);
  return sub_1000049E0(&v4);
}

void sub_10149F2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void sub_10149F340(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F40A78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10149F3BC(uint64_t *a1, uint64_t a2)
{
  v2 = a1;
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete();
  }

  v3 = *a1[3];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v2 + 23) < 0)
    {
      v2 = *v2;
    }

    v4 = 136446210;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %{public}s: WiFiManagerClient returned", &v4, 0xCu);
  }
}

void sub_10149F498(std::__shared_weak_count *this)
{
  this->__vftable = off_101F40AC8;
  if (SHIBYTE(this[2].__vftable) < 0)
  {
    operator delete(this[1].__shared_owners_);
  }

  std::__shared_weak_count::~__shared_weak_count(this);
}

void sub_10149F4F8(std::__shared_weak_count *this)
{
  this->__vftable = off_101F40AC8;
  if (SHIBYTE(this[2].__vftable) < 0)
  {
    operator delete(this[1].__shared_owners_);
  }

  std::__shared_weak_count::~__shared_weak_count(this);

  operator delete();
}

void sub_10149F56C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  v3 = (a1 + 32);
  v4 = **(a1 + 56);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v5 = *v3;
    }

    v6 = 136446210;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %{public}s: WiFiManagerClient returned", &v6, 0xCu);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*v3);
  }
}

uint64_t sub_10149F668(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F40B08))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_10149F6AC(unsigned __int8 *a1, const void *a2)
{
  v3 = **(a1 + 1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = asString();
    v6 = 2048;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I WiFiManagerClient of type '%s' (%p) deleted", &v4, 0x16u);
  }

  CFRelease(a2);
}

void sub_10149F778(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10149F7D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_10149F818(char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_10149F880(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_10149F8BC(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void sub_10149F8F8()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

BOOL sms::Controller::submitNetworkNotificationMetric(uint64_t a1, int a2, int a3, int a4, int a5, int a6, uint64_t a7)
{
  if (a4 == 5 || a5)
  {
    v16 = v7;
    v17 = v8;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = sub_10149FB64;
    v10[3] = &unk_101F40B98;
    v11 = a3;
    v12 = a2;
    v14 = a4;
    v15 = a5;
    v13 = a6;
    v10[4] = a7;
    return sub_10149F9B8(0x800EB, v10);
  }

  return result;
}

BOOL sub_10149F9B8(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v8)
  {
    v6 = 0;
    v7 = 0;
    sub_10001C610(&v6);
    v4 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  else
  {
    v4 = 0;
  }

  sub_10001C0A0(&v8);
  return v4;
}

void sub_10149FAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    sub_100004A34(a7);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

void sub_10149FB64(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 40);
  a2[17] |= 2u;
  a2[4] = v4;
  v5 = subscriber::simSlotAsInstance();
  v6 = a2[17];
  v7 = v6 | 0x80;
  a2[17] = v6 | 0x80;
  a2[15] = v5;
  v8 = *(a1 + 52);
  if (v8 <= 4)
  {
    v9 = dword_101978248[*(a1 + 52)];
    v7 = v6 | 0x84;
    a2[17] = v6 | 0x84;
    a2[5] = v9;
  }

  v10 = *(a1 + 53);
  if (v10 <= 3)
  {
    v7 |= 8u;
    a2[17] = v7;
    a2[12] = v10 + 1;
  }

  v11 = *(a1 + 48);
  if (v11 > 4)
  {
    if (v11 <= 7)
    {
      if (v11 == 5)
      {
        v12 = 6;
      }

      else if (v11 == 6)
      {
        v12 = 7;
      }

      else
      {
        v12 = 8;
      }

      goto LABEL_24;
    }

    if ((v11 - 8) < 2)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = 3;
      }

      else if (v11 == 3)
      {
        v12 = 4;
      }

      else
      {
        v12 = 5;
      }

      goto LABEL_24;
    }

    if (!v11)
    {
      v12 = 1;
      goto LABEL_24;
    }

    if (v11 == 1)
    {
      v7 |= 0x40u;
      a2[17] = v7;
      a2[14] = 2;
LABEL_18:
      v12 = 0;
LABEL_24:
      a2[17] = v7 | 0x40;
      a2[14] = v12;
    }
  }

  if (v8 <= 3 && v8 != 1)
  {
    v13 = *(a1 + 32);
    v14 = *(v13 + 23);
    if ((v14 & 0x80000000) != 0)
    {
      v16 = *(v13 + 8);
      if (v16 >= 7)
      {
        v15 = 7;
      }

      else
      {
        v15 = v16;
      }
    }

    else if (v14 >= 7)
    {
      v15 = 7;
    }

    else
    {
      v15 = v14;
    }

    memset(&__str, 0, sizeof(__str));
    std::string::resize(&__str, v15, 0);
    v18 = *(a1 + 32);
    if (*(v18 + 23) < 0)
    {
      v18 = *v18;
    }

    if (v15)
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      v17 = memmove(p_str, v18, v15);
    }

    v20 = a2[9];
    v21 = a2[8];
    if (v21 >= v20)
    {
      if (v20 == a2[10])
      {
        v17 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 6), v20 + 1);
        v20 = a2[9];
      }

      a2[9] = v20 + 1;
      v23 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v17);
      v24 = *(a2 + 3);
      v25 = a2[8];
      a2[8] = v25 + 1;
      *(v24 + 8 * v25) = v23;
    }

    else
    {
      v22 = *(a2 + 3);
      a2[8] = v21 + 1;
      v23 = *(v22 + 8 * v21);
    }

    std::string::operator=(v23, &__str);
    v26 = *(a1 + 32);
    v27 = *(v26 + 23);
    if (v27 < 0)
    {
      v27 = *(v26 + 8);
    }

    a2[17] |= 0x20u;
    a2[13] = v27;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

void sub_10149FDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sms::Controller::submitSMSSendStartMetric(uint64_t a1, unsigned int a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v82 = a2;
  *v80 = 0u;
  v81 = 0u;
  *v78 = 0u;
  v79 = 0u;
  *buf = &v82;
  v11 = sub_1002D750C(a1 + 2560, &v82, &unk_101802C98, buf)[5];
  MCC::MCC(v78, (v11 + 416));
  MCC::MCC(v80, (v11 + 448));
  MCCAndMNC::getMcc(buf, v78);
  IntValue = MCC::getIntValue(buf);
  if (SBYTE5(v87) < 0)
  {
    operator delete(v84);
  }

  MCCAndMNC::getMnc(buf, v78);
  v13 = MCC::getIntValue(buf);
  if (SBYTE5(v87) < 0)
  {
    operator delete(v84);
  }

  v14 = v82;
  if (v82 == 1)
  {
    v15 = 488;
    goto LABEL_9;
  }

  if (v82 == 2)
  {
    v15 = 1296;
LABEL_9:
    v16 = *(a1 + v15);
    goto LABEL_11;
  }

  v16 = 0;
LABEL_11:
  if (*(a7 + 23) < 0)
  {
    sub_100005F2C(__p, *a7, *(a7 + 8));
  }

  else
  {
    *__p = *a7;
    v77 = *(a7 + 16);
  }

  value_4 = sms::Controller::isEmergencyTextNumberForSlot_sync(a1, v14, __p);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(__p[0]);
  }

  v17 = *(a7 + 23);
  if (v17 >= 0)
  {
    v18 = *(a7 + 23);
  }

  else
  {
    v18 = *(a7 + 8);
  }

  v19 = *(a1 + 199);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a1 + 184);
  }

  if (v18 == v19)
  {
    if (v17 >= 0)
    {
      v21 = a7;
    }

    else
    {
      v21 = *a7;
    }

    if (v20 >= 0)
    {
      v22 = (a1 + 176);
    }

    else
    {
      v22 = *(a1 + 176);
    }

    v23 = memcmp(v21, v22, v18) == 0;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v82);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = asString();
    if (value_4)
    {
      v26 = "Emergency";
    }

    else
    {
      v26 = asString();
    }

    v27 = sms::asString(a5);
    *buf = 67438339;
    *&buf[4] = IntValue;
    LOWORD(v84) = 1029;
    *(&v84 + 2) = v13;
    HIWORD(v84) = 2080;
    v85 = v25;
    v86 = 2080;
    v87 = v26;
    v88 = 2080;
    v89 = v27;
    v90 = 1024;
    v91 = a3;
    v92 = 2048;
    v93 = a4;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I SMS AWD Send Start [mcc: %{sensitive}u mnc: %{sensitive}u regStatus = %s type: %s transport: %s size: %d fragments: %zu ]", buf, 0x3Cu);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v29 = ServiceMap;
  if (v30 < 0)
  {
    v31 = (v30 & 0x7FFFFFFFFFFFFFFFLL);
    v32 = 5381;
    do
    {
      v30 = v32;
      v33 = *v31++;
      v32 = (33 * v32) ^ v33;
    }

    while (v33);
  }

  std::mutex::lock(ServiceMap);
  *buf = v30;
  v34 = sub_100009510(&v29[1].__m_.__sig, buf);
  v50 = v8;
  if (v34)
  {
    v36 = v34[3];
    v35 = v34[4];
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v29);
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v35);
      v37 = 0;
      if (!v36)
      {
        goto LABEL_41;
      }

      goto LABEL_45;
    }
  }

  else
  {
    v36 = 0;
  }

  std::mutex::unlock(v29);
  v35 = 0;
  v37 = 1;
  if (!v36)
  {
LABEL_41:
    v38 = *(a1 + 40);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to get analytics interface for SMS received...", buf, 2u);
    }

    goto LABEL_88;
  }

LABEL_45:
  v75 = 0;
  v39 = xpc_dictionary_create(0, 0, 0);
  v40 = v39;
  if (v39)
  {
    v75 = v39;
  }

  else
  {
    v40 = xpc_null_create();
    v75 = v40;
    if (!v40)
    {
      v41 = xpc_null_create();
      v40 = 0;
      goto LABEL_52;
    }
  }

  if (xpc_get_type(v40) != &_xpc_type_dictionary)
  {
    v41 = xpc_null_create();
LABEL_52:
    v75 = v41;
    goto LABEL_53;
  }

  xpc_retain(v40);
LABEL_53:
  xpc_release(v40);
  v42 = subscriber::simSlotAsInstance();
  v73 = xpc_int64_create(v42);
  if (!v73)
  {
    v73 = xpc_null_create();
  }

  *buf = &v75;
  v84 = "subs_id";
  sub_10000F688(buf, &v73, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v73);
  v73 = 0;
  v71 = xpc_int64_create(a3);
  if (!v71)
  {
    v71 = xpc_null_create();
  }

  *buf = &v75;
  v84 = "wSize";
  sub_10000F688(buf, &v71, &v72);
  xpc_release(v72);
  v72 = 0;
  xpc_release(v71);
  v71 = 0;
  v69 = xpc_int64_create(a4);
  if (!v69)
  {
    v69 = xpc_null_create();
  }

  *buf = &v75;
  v84 = "wNumFrags";
  sub_10000F688(buf, &v69, &v70);
  xpc_release(v70);
  v70 = 0;
  xpc_release(v69);
  v69 = 0;
  if (a5 == 2)
  {
    v43 = 1;
  }

  else
  {
    v43 = 2;
  }

  v67 = xpc_int64_create(v43);
  if (!v67)
  {
    v67 = xpc_null_create();
  }

  *buf = &v75;
  v84 = "transport";
  sub_10000F688(buf, &v67, &v68);
  xpc_release(v68);
  v68 = 0;
  xpc_release(v67);
  v67 = 0;
  *buf = &v82;
  v44 = *(sub_1002D750C(a1 + 2560, &v82, &unk_101802C98, buf)[5] + 294);
  *buf = &v82;
  v45 = sub_1002D750C(a1 + 2560, &v82, &unk_101802C98, buf);
  v46 = sub_1014A082C(v44, *(v45[5] + 288));
  v65 = xpc_int64_create(v46);
  if (!v65)
  {
    v65 = xpc_null_create();
  }

  *buf = &v75;
  v84 = "rat";
  sub_10000F688(buf, &v65, &v66);
  xpc_release(v66);
  v66 = 0;
  xpc_release(v65);
  v65 = 0;
  if (value_4)
  {
    v47 = 6;
  }

  else if ((v50 - 1) > 4)
  {
    v47 = 0;
  }

  else
  {
    v47 = qword_101978288[v50 - 1];
  }

  v63 = xpc_int64_create(v47);
  if (!v63)
  {
    v63 = xpc_null_create();
  }

  *buf = &v75;
  v84 = "smsType";
  sub_10000F688(buf, &v63, &v64);
  xpc_release(v64);
  v64 = 0;
  xpc_release(v63);
  v63 = 0;
  v61 = xpc_int64_create(IntValue);
  if (!v61)
  {
    v61 = xpc_null_create();
  }

  *buf = &v75;
  v84 = "mcc";
  sub_10000F688(buf, &v61, &v62);
  xpc_release(v62);
  v62 = 0;
  xpc_release(v61);
  v61 = 0;
  v59 = xpc_int64_create(v13);
  if (!v59)
  {
    v59 = xpc_null_create();
  }

  *buf = &v75;
  v84 = "mnc";
  sub_10000F688(buf, &v59, &v60);
  xpc_release(v60);
  v60 = 0;
  xpc_release(v59);
  v59 = 0;
  v48 = (v16 - 4);
  if (v48 < 3)
  {
    v49 = v48 + 1;
  }

  else
  {
    v49 = 0;
  }

  v57 = xpc_int64_create(v49);
  if (!v57)
  {
    v57 = xpc_null_create();
  }

  *buf = &v75;
  v84 = "serviceStatus";
  sub_10000F688(buf, &v57, &v58);
  xpc_release(v58);
  v58 = 0;
  xpc_release(v57);
  v57 = 0;
  v55 = xpc_int64_create(v23);
  if (!v55)
  {
    v55 = xpc_null_create();
  }

  *buf = &v75;
  v84 = "is911";
  sub_10000F688(buf, &v55, &v56);
  xpc_release(v56);
  v56 = 0;
  xpc_release(v55);
  v54 = v75;
  v55 = 0;
  if (v75)
  {
    xpc_retain(v75);
  }

  else
  {
    v54 = xpc_null_create();
  }

  (*(*v36 + 16))(v36, "metricCCSMSSendStart", &v54);
  xpc_release(v54);
  v54 = 0;
  xpc_release(v75);
LABEL_88:
  if ((v37 & 1) == 0)
  {
    sub_100004A34(v35);
  }

  if (SHIBYTE(v81) < 0)
  {
    operator delete(v80[1]);
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78[1]);
  }
}

void sub_1014A06B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, xpc_object_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014A082C(char a1, unsigned int a2)
{
  if (a1)
  {
    return 9;
  }

  if (a2 > 0xA)
  {
    return 0;
  }

  return dword_10197825C[a2];
}

void sms::Controller::submitSMSSendEndMetric(uint64_t a1, unsigned int a2, int a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v10 = a7;
  v11 = a6;
  v13 = a4;
  v147 = a2;
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  buf[0].__locale_ = &v147;
  v15 = sub_1002D750C(a1 + 2560, &v147, &unk_101802C98, buf)[5];
  MCC::MCC(&v143, (v15 + 416));
  MCC::MCC(&v145, (v15 + 448));
  MCCAndMNC::getMcc(buf, &v143);
  value_4 = MCC::getIntValue(buf);
  if (SHIBYTE(buf[3].__locale_) < 0)
  {
    operator delete(buf[1].__locale_);
  }

  MCCAndMNC::getMnc(buf, &v143);
  value = MCC::getIntValue(buf);
  if (SHIBYTE(buf[3].__locale_) < 0)
  {
    operator delete(buf[1].__locale_);
  }

  if (v147 == 1)
  {
    v16 = 488;
    goto LABEL_9;
  }

  if (v147 == 2)
  {
    v16 = 1296;
LABEL_9:
    v81 = *(a1 + v16);
    goto LABEL_11;
  }

  v81 = 0;
LABEL_11:
  v141 = 0uLL;
  v142 = 0;
  MessageCenterModel::getBundleIdForDefaultCarrierMessagingApp((a1 + 80), &v141);
  memset(&v140, 0, sizeof(v140));
  sub_10000501C(&v140, "no error");
  if (v11 <= 3)
  {
    if (v11 != 1)
    {
      if (v11 != 2)
      {
        if (v11 != 3)
        {
          goto LABEL_24;
        }

        v17 = sms::asString();
        goto LABEL_23;
      }

      if (v10 > 126)
      {
        switch(v10)
        {
          case 287:
            v17 = "IBI_SMS_NETWORK_FAILURE_UNSPECIFIED";
            goto LABEL_23;
          case 288:
            v17 = "IBI_SMS_NO_SERVICE";
            goto LABEL_23;
          case 289:
            v17 = "IBI_SMS_MS_ACCESS_CLASS_BARRED";
            goto LABEL_23;
          case 290:
            v17 = "IBI_SMS_NETWORK_NO_RESOURCE";
            goto LABEL_23;
          case 291:
            v17 = "IBI_SMS_SERVICE_BUSY";
            goto LABEL_23;
          case 292:
            v17 = "IBI_SMS_MS_FAILURE_UNSPECIFIED";
            goto LABEL_23;
          case 293:
          case 294:
          case 295:
          case 300:
          case 301:
          case 302:
          case 303:
          case 304:
          case 305:
          case 306:
          case 307:
          case 308:
          case 309:
          case 310:
          case 311:
          case 312:
          case 313:
          case 314:
          case 315:
          case 316:
          case 317:
          case 318:
          case 319:
          case 320:
          case 321:
          case 322:
          case 323:
          case 324:
          case 325:
          case 326:
          case 327:
          case 328:
          case 329:
          case 330:
          case 331:
          case 332:
          case 333:
          case 334:
          case 335:
          case 336:
          case 337:
          case 338:
          case 339:
          case 371:
          case 372:
          case 398:
          case 400:
          case 402:
          case 404:
          case 405:
          case 406:
          case 407:
          case 408:
          case 409:
          case 410:
          case 411:
          case 412:
          case 413:
          case 414:
          case 415:
          case 416:
          case 417:
          case 418:
          case 419:
          case 420:
          case 421:
          case 422:
          case 423:
          case 424:
          case 425:
          case 426:
          case 427:
          case 428:
          case 429:
          case 430:
          case 431:
          case 432:
          case 433:
          case 434:
          case 435:
          case 436:
          case 437:
          case 438:
          case 439:
          case 440:
          case 441:
          case 442:
          case 443:
          case 444:
          case 445:
          case 446:
          case 447:
          case 448:
          case 449:
          case 450:
          case 451:
          case 452:
          case 453:
          case 454:
          case 455:
          case 456:
          case 457:
          case 458:
          case 459:
          case 460:
          case 461:
          case 462:
          case 463:
          case 464:
          case 465:
          case 466:
          case 467:
          case 468:
          case 469:
          case 470:
          case 471:
          case 472:
          case 473:
          case 474:
          case 475:
          case 476:
          case 477:
          case 478:
          case 479:
          case 480:
          case 481:
          case 482:
          case 483:
          case 484:
          case 485:
          case 486:
          case 487:
          case 488:
          case 489:
          case 490:
          case 491:
          case 492:
          case 493:
          case 494:
          case 495:
          case 496:
          case 497:
          case 498:
          case 499:
          case 500:
          case 501:
          case 502:
          case 503:
          case 504:
          case 505:
          case 506:
          case 507:
          case 508:
          case 509:
          case 510:
          case 511:
            goto LABEL_250;
          case 296:
            v17 = "IBI_SMS_DUAL_SIM_RADIO_CONFLICT";
            goto LABEL_23;
          case 297:
            v17 = "IBI_SMS_NO_CARRIER_DUAL_SIM_CONFLICT";
            goto LABEL_23;
          case 298:
            v17 = "IBI_SMS_SERV_NOT_ALLOWED_IN_UE_OP_MODE";
            goto LABEL_23;
          case 299:
            v17 = "IBI_SMS_FAILURE_CAUSE_RSRVCC";
            goto LABEL_23;
          case 340:
            v17 = "IBI_SMS_SAPI3_RELEASE";
            goto LABEL_23;
          case 341:
            v17 = "IBI_SMS_LOWER_LAYER_FAILURE";
            goto LABEL_23;
          case 342:
            v17 = "IBI_SMS_MS_AUTH_FAILURE";
            goto LABEL_23;
          case 343:
            v17 = "IBI_SMS_PS_REJECT";
            goto LABEL_23;
          case 344:
            v17 = "IBI_SMS_SERVICE_REJECTED";
            goto LABEL_23;
          case 345:
            v17 = "IBI_SMS_ABORT_BY_NETWORK";
            goto LABEL_23;
          case 346:
            v17 = "IBI_SMS_MS_TIMEOUT";
            goto LABEL_23;
          case 347:
            v17 = "IBI_SMS_MS_DETACH";
            goto LABEL_23;
          case 348:
            v17 = "IBI_SMS_RR_CONN_RELEASE";
            goto LABEL_23;
          case 349:
            v17 = "IBI_SMS_MS_NOT_REGISTERED";
            goto LABEL_23;
          case 350:
            v17 = "IBI_SMS_REEST_FAILURE";
            goto LABEL_23;
          case 351:
            v17 = "IBI_SMS_MS_HANDOVER";
            goto LABEL_23;
          case 352:
            v17 = "IBI_SMS_MS_LINK_ESTAB_FAILURE";
            goto LABEL_23;
          case 353:
            v17 = "IBI_SMS_MS_RA_FAILURE";
            goto LABEL_23;
          case 354:
            v17 = "IBI_SMS_MS_LINK_ABORTION";
            goto LABEL_23;
          case 355:
            v17 = "IBI_SMS_L1_FAILURE";
            goto LABEL_23;
          case 356:
            v17 = "IBI_SMS_IMM_ASS_REJECT";
            goto LABEL_23;
          case 357:
            v17 = "IBI_SMS_PAGING_PENDING";
            goto LABEL_23;
          case 358:
            v17 = "IBI_SMS_ABNORMAL_RELEASE_UNSPECIFIED";
            goto LABEL_23;
          case 359:
            v17 = "IBI_SMS_ABNORMAL_RELEASE_CHANNEL_UNACCEPTABLE";
            goto LABEL_23;
          case 360:
            v17 = "IBI_SMS_ABNORMAL_RELEASE_TIMER_EXPIRED";
            goto LABEL_23;
          case 361:
            v17 = "IBI_SMS_ABNORMAL_RELEASE_NO_ACT_ON_RADIO_PATH";
            goto LABEL_23;
          case 362:
            v17 = "IBI_SMS_MS_PREEMPTIVE_RELEASE";
            goto LABEL_23;
          case 363:
            v17 = "IBI_SMS_UTRAN_CONFIGURATION_UNKNOWN";
            goto LABEL_23;
          case 364:
            v17 = "IBI_SMS_HANDOVER_IMPOSSIBLE";
            goto LABEL_23;
          case 365:
            v17 = "IBI_SMS_CHANNEL_MODE_UNACCEPTABLE";
            goto LABEL_23;
          case 366:
            v17 = "IBI_SMS_FREQUENCY_NOT_IMPLEMENTED";
            goto LABEL_23;
          case 367:
            v17 = "IBI_SMS_ORIGINATOR_TALKER_LEAVING_GROUP_CALL_AREA";
            goto LABEL_23;
          case 368:
            v17 = "IBI_SMS_LOWER_LAYER_FAILURE_FROM_NW";
            goto LABEL_23;
          case 369:
            v17 = "IBI_SMS_CALL_ALREADY_CLEARED";
            goto LABEL_23;
          case 370:
            v17 = "IBI_SMS_SEMANTICALLY_INCORRECT_MSG";
            goto LABEL_23;
          case 373:
            v17 = "IBI_SMS_MSG_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE";
            goto LABEL_23;
          case 374:
            v17 = "IBI_SMS_CONDITIONAL_IE_ERROR";
            goto LABEL_23;
          case 375:
            v17 = "IBI_SMS_NO_CELL_ALLOCATION_AVAILABLE";
            goto LABEL_23;
          case 376:
            v17 = "IBI_SMS_PROTOCOL_ERROR_UNSPECIFIED";
            goto LABEL_23;
          case 377:
            v17 = "IBI_SMS_MS_NORMAL_EVENT";
            goto LABEL_23;
          case 378:
            v17 = "IBI_SMS_MS_UNSPECIFIED";
            goto LABEL_23;
          case 379:
            v17 = "IBI_SMS_PRE_EMPTIVE_RELEASE";
            goto LABEL_23;
          case 380:
            v17 = "IBI_SMS_MS_CONGESTION";
            goto LABEL_23;
          case 381:
            v17 = "IBI_SMS_RE_ESTABLISHMENT_REJECT";
            goto LABEL_23;
          case 382:
            v17 = "IBI_SMS_DIRECTED_SIGCONN_RE_ESTABLISHMENT";
            goto LABEL_23;
          case 383:
            v17 = "IBI_SMS_USER_INACTIVITY";
            goto LABEL_23;
          case 384:
            v17 = "IBI_SMS_MS_CONN_REL_LOWER_LAYER_FAILURE_DL";
            goto LABEL_23;
          case 385:
            v17 = "IBI_SMS_MS_CONN_REL_LOWER_LAYER_FAILURE_UL";
            goto LABEL_23;
          case 386:
            v17 = "IBI_SMS_MS_CELL_BARRED";
            goto LABEL_23;
          case 387:
            v17 = "IBI_SMS_MS_SIGN_CONN_REL";
            goto LABEL_23;
          case 388:
            v17 = "IBI_SMS_NAS_TRIGGERED_ABORT";
            goto LABEL_23;
          case 389:
            v17 = "IBI_SMS_MS_RRC_CONN_ESTABLISHMENT_FAILURE";
            goto LABEL_23;
          case 390:
            v17 = "IBI_SMS_MS_CONN_REJECT_REDIRECTION";
            goto LABEL_23;
          case 391:
            v17 = "IBI_SMS_RESOURCE_CONFLICT";
            goto LABEL_23;
          case 392:
            v17 = "IBI_SMS_MS_L2_CAUSE_SEQUENCE_ERROR";
            goto LABEL_23;
          case 393:
            v17 = "IBI_SMS_MS_L2_CAUSE_T200_EXP_N200_PLUS_1_TIMES";
            goto LABEL_23;
          case 394:
            v17 = "IBI_SMS_MS_L2_CAUSE_UNSOLICITED_DM_RESP_MFES";
            goto LABEL_23;
          case 395:
            v17 = "IBI_SMS_MS_L2_CAUSE_CONTENTION_RESOLUTION";
            goto LABEL_23;
          case 396:
            v17 = "IBI_SMS_MS_L2_CAUSE_NORMAL_CAUSE";
            goto LABEL_23;
          case 397:
            v17 = "IBI_SMS_BAND_CHANGED";
            goto LABEL_23;
          case 399:
            v17 = "IBI_SMS_PLMN_NOT_MATCHING";
            goto LABEL_23;
          case 401:
            v17 = "IBI_SMS_HOFRMUTRAN_REVERT_BACK_SYNC_FAIL";
            goto LABEL_23;
          case 403:
            v17 = "IBI_SMS_RELEASE_OOSA";
            goto LABEL_23;
          case 512:
            v17 = "IBI_SMS_RP_ACK";
            goto LABEL_23;
          case 513:
            v17 = "IBI_SMS_TIMER_EXPIRED";
            goto LABEL_23;
          case 514:
            v17 = "IBI_SMS_FORW_AVAIL_FAILED";
            goto LABEL_23;
          case 515:
            v17 = "IBI_SMS_FORW_AVAIL_ABORTED";
            goto LABEL_23;
          case 516:
            v17 = "IBI_SMS_TP_INVALID_MTI";
            goto LABEL_23;
          case 517:
            v17 = "IBI_SMS_TP_SRF_NOT_IN_PHASE1";
            goto LABEL_23;
          case 518:
            v17 = "IBI_SMS_TP_RDF_NOT_IN_PHASE1";
            goto LABEL_23;
          case 519:
            v17 = "IBI_SMS_TP_RPF_NOT_IN_PHASE1";
            goto LABEL_23;
          case 520:
            v17 = "IBI_SMS_TP_UDHF_NOT_IN_PHASE1";
            goto LABEL_23;
          case 521:
            v17 = "IBI_SMS_TP_MISSING_VALIDITY_PERIOD";
            goto LABEL_23;
          case 522:
            v17 = "IBI_SMS_TP_INVALID_TIME_STAMP";
            goto LABEL_23;
          case 523:
            v17 = "IBI_SMS_TP_MISSING_DEST_ADDRESS";
            goto LABEL_23;
          case 524:
            v17 = "IBI_SMS_TP_INVALID_DEST_ADDRESS";
            goto LABEL_23;
          case 525:
            v17 = "IBI_SMS_TP_MISSING_SC_ADDRESS";
            goto LABEL_23;
          case 526:
            v17 = "IBI_SMS_TP_INVALID_SC_ADDRESS";
            goto LABEL_23;
          case 527:
            v17 = "IBI_SMS_TP_INVALID_ALPHABET";
            goto LABEL_23;
          case 528:
            v17 = "IBI_SMS_TP_INVALID_USER_DATA_LENGTH";
            goto LABEL_23;
          case 529:
            v17 = "IBI_SMS_TP_MISSING_USER_DATA";
            goto LABEL_23;
          case 530:
            v17 = "IBI_SMS_TP_USER_DATA_TOO_LARGE";
            goto LABEL_23;
          case 531:
            v17 = "IBI_SMS_TP_CMD_REQ_NOT_IN_PHASE1";
            goto LABEL_23;
          case 532:
            v17 = "IBI_SMS_TP_INVALID_DEST_ADDR_SPEC_CMDS";
            goto LABEL_23;
          case 533:
            v17 = "IBI_SMS_TP_INVALID_CMD_DATA_LENGTH";
            goto LABEL_23;
          case 534:
            v17 = "IBI_SMS_TP_MISSING_CMD_DATA";
            goto LABEL_23;
          case 535:
            v17 = "IBI_SMS_TP_INVALID_CMD_DATA_TYPE";
            goto LABEL_23;
          case 536:
            v17 = "IBI_SMS_TP_CREATION_OF_MNR_FAILED";
            goto LABEL_23;
          case 537:
            v17 = "IBI_SMS_TP_CREATION_OF_CMM_FAILED";
            goto LABEL_23;
          case 538:
            v17 = "IBI_SMS_TP_MT_CONNECTION_LOST";
            goto LABEL_23;
          case 539:
            v17 = "IBI_SMS_TP_PENDING_MO_SMS";
            goto LABEL_23;
          case 540:
            v17 = "IBI_SMS_REJ_BY_SMS_CONTROL";
            goto LABEL_23;
          case 541:
            v17 = "IBI_SMS_NO_ERROR";
            goto LABEL_23;
          case 542:
            v17 = "IBI_SMS_NO_ERROR_NO_ICON_DISPLAY";
            goto LABEL_23;
          case 543:
            v17 = "IBI_SMS_FDN_FAILED";
            goto LABEL_23;
          case 544:
            v17 = "IBI_SMS_FDN_SCA_FAILED";
            goto LABEL_23;
          case 545:
            v17 = "IBI_SMS_FDN_DA_FAILED";
            goto LABEL_23;
          case 546:
            v17 = "IBI_SMS_BDN_FAILED";
            goto LABEL_23;
          case 547:
            v17 = "IBI_SMS_PP_UNSPECIFIED";
            goto LABEL_23;
          case 548:
            v17 = "IBI_SMS_UNDEFINED_RESULT";
            goto LABEL_23;
          default:
            if (v10 == 127)
            {
              v17 = "IBI_SMS_INTERWORKING";
            }

            else
            {
              if (v10 != 0x7FFFFFFF)
              {
                goto LABEL_250;
              }

              v17 = "IBISmsSendResult_ARM41_INT_ENFORCE";
            }

            break;
        }

        goto LABEL_23;
      }

      if (v10 > 40)
      {
        if (v10 > 94)
        {
          if (v10 <= 97)
          {
            if (v10 == 95)
            {
              v17 = "IBI_SMS_SEMANT_INCORRECT_MSG";
            }

            else if (v10 == 96)
            {
              v17 = "IBI_SMS_INVALID_MANDATORY_INFO";
            }

            else
            {
              v17 = "IBI_SMS_MSG_TYPE_NON_EXISTENT";
            }

            goto LABEL_23;
          }

          switch(v10)
          {
            case 'b':
              v17 = "IBI_SMS_MSG_NOT_COMPATIBLE";
              goto LABEL_23;
            case 'c':
              v17 = "IBI_SMS_IE_NON_EXISTENT";
              goto LABEL_23;
            case 'o':
              v17 = "IBI_SMS_PROTOCOLL_ERROR";
              goto LABEL_23;
          }
        }

        else if (v10 > 49)
        {
          switch(v10)
          {
            case '2':
              v17 = "IBI_SMS_FACILITY_NOT_SUBSCRIBED";
              goto LABEL_23;
            case 'E':
              v17 = "IBI_SMS_REQ_FACILITY_NON_IMPL";
              goto LABEL_23;
            case 'Q':
              v17 = "IBI_SMS_INVALID_REFERENCE_VALUE";
              goto LABEL_23;
          }
        }

        else
        {
          switch(v10)
          {
            case ')':
              v17 = "IBI_SMS_TEMPORARY_FAILURE";
              goto LABEL_23;
            case '*':
              v17 = "IBI_SMS_CONGESTION";
              goto LABEL_23;
            case '/':
              v17 = "IBI_SMS_RESOURCES_UNAVAILABLE";
              goto LABEL_23;
          }
        }
      }

      else if (v10 > 21)
      {
        if (v10 > 28)
        {
          switch(v10)
          {
            case 29:
              v17 = "IBI_SMS_FACILITY_REJECTED";
              goto LABEL_23;
            case 30:
              v17 = "IBI_SMS_UNKNOWN_SUBSCRIBER";
              goto LABEL_23;
            case 38:
              v17 = "IBI_SMS_NETWORK_OUT_OF_ORDER";
              goto LABEL_23;
          }
        }

        else
        {
          switch(v10)
          {
            case 22:
              v17 = "IBI_SMS_MEMORY_CAPACITY_EXCEEDED";
              goto LABEL_23;
            case 27:
              v17 = "IBI_SMS_DEST_OUT_OF_SERVICE";
              goto LABEL_23;
            case 28:
              v17 = "IBI_SMS_UNIDENTIFIED_SUBSCRIBER";
              goto LABEL_23;
          }
        }
      }

      else if (v10 > 15)
      {
        switch(v10)
        {
          case 16:
            v17 = "IBI_SMS_NORMAL_CALL_CLEARING";
            goto LABEL_23;
          case 17:
            v17 = "IBI_SMS_CP_NETWORK_FAILURE";
            goto LABEL_23;
          case 21:
            v17 = "IBI_SMS_TRANSFER_REJECTED";
            goto LABEL_23;
        }
      }

      else
      {
        switch(v10)
        {
          case 1:
            v17 = "IBI_SMS_UNASSIGNED_NUMBER";
            goto LABEL_23;
          case 8:
            v17 = "IBI_SMS_OP_DETERMINED_BARRING";
            goto LABEL_23;
          case 10:
            v17 = "IBI_SMS_CALL_BARRED";
            goto LABEL_23;
        }
      }

LABEL_250:
      v17 = "???";
      goto LABEL_23;
    }

    gsmToCsiErrorWithCode();
    v17 = asString();
LABEL_23:
    sub_100016890(&v140, v17);
    goto LABEL_24;
  }

  if ((v11 - 5) < 3)
  {
    v17 = sms::asString();
    goto LABEL_23;
  }

  if (v11 != 4)
  {
    goto LABEL_24;
  }

  v162 = 0;
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  __src = 0u;
  memset(buf, 0, sizeof(buf));
  sub_10000C320(buf);
  std::ostream::operator<<();
  if ((BYTE8(v152) & 0x10) != 0)
  {
    v78 = v152;
    if (v152 < *(&__src + 1))
    {
      *&v152 = *(&__src + 1);
      v78 = *(&__src + 1);
    }

    locale = __src;
    goto LABEL_198;
  }

  if ((BYTE8(v152) & 8) != 0)
  {
    locale = buf[5].__locale_;
    v78 = buf[7].__locale_;
LABEL_198:
    v19 = v78 - locale;
    if ((v78 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    v18 = v13;
    if (v19 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v78 - locale;
    if (v19)
    {
      memmove(&__dst, locale, v19);
    }

    goto LABEL_204;
  }

  v18 = v13;
  v19 = 0;
  *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_204:
  __dst.__r_.__value_.__s.__data_[v19] = 0;
  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v140.__r_.__value_.__l.__data_);
  }

  v140 = __dst;
  buf[2].__locale_ = v80;
  v13 = v18;
  if (SHIBYTE(v151) < 0)
  {
    operator delete(*(&v150 + 1));
  }

  std::locale::~locale(&buf[4]);
  std::iostream::~basic_iostream();
  std::ios::~ios();
LABEL_24:
  v20 = v147;
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(&v137, *a5, *(a5 + 1));
  }

  else
  {
    v137 = *a5;
    v138 = *(a5 + 2);
  }

  isEmergencyTextNumberForSlot_sync = sms::Controller::isEmergencyTextNumberForSlot_sync(a1, v20, &v137);
  if (SHIBYTE(v138) < 0)
  {
    operator delete(v137);
  }

  v22 = *(a5 + 23);
  if (v22 >= 0)
  {
    v23 = *(a5 + 23);
  }

  else
  {
    v23 = *(a5 + 1);
  }

  v24 = *(a1 + 199);
  v25 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a1 + 184);
  }

  if (v23 == v24)
  {
    if (v22 >= 0)
    {
      v26 = a5;
    }

    else
    {
      v26 = *a5;
    }

    if (v25 >= 0)
    {
      v27 = (a1 + 176);
    }

    else
    {
      v27 = *(a1 + 176);
    }

    v85 = memcmp(v26, v27, v23) == 0;
  }

  else
  {
    v85 = 0;
  }

  v28 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v147);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = asString();
    if (isEmergencyTextNumberForSlot_sync)
    {
      v30 = "Emergency";
    }

    else
    {
      v30 = asString();
    }

    v31 = sms::asString(a3);
    v32 = sms::asString();
    v33 = &v140;
    if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v33 = v140.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf[0].__locale_) = 67438339;
    HIDWORD(buf[0].__locale_) = value_4;
    LOWORD(buf[1].__locale_) = 1029;
    *(&buf[1].__locale_ + 2) = value;
    HIWORD(buf[1].__locale_) = 2080;
    buf[2].__locale_ = v29;
    LOWORD(buf[3].__locale_) = 2080;
    *(&buf[3].__locale_ + 2) = v30;
    WORD1(buf[4].__locale_) = 2080;
    *(&buf[4].__locale_ + 4) = v31;
    WORD2(buf[5].__locale_) = 2080;
    *(&buf[5].__locale_ + 6) = v32;
    HIWORD(buf[6].__locale_) = 2080;
    buf[7].__locale_ = v33;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I SMS AWD Send End [mcc: %{sensitive}u mnc: %{sensitive}u regStatus = %s type: %s transport: %s errorGroup: %s error: %s]", buf, 0x40u);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v35 = ServiceMap;
  if (v36 < 0)
  {
    v37 = (v36 & 0x7FFFFFFFFFFFFFFFLL);
    v38 = 5381;
    do
    {
      v36 = v38;
      v39 = *v37++;
      v38 = (33 * v38) ^ v39;
    }

    while (v39);
  }

  std::mutex::lock(ServiceMap);
  buf[0].__locale_ = v36;
  v40 = sub_100009510(&v35[1].__m_.__sig, buf);
  if (v40)
  {
    v42 = v40[3];
    v41 = v40[4];
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v35);
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v41);
      v43 = 0;
      if (!v42)
      {
        goto LABEL_56;
      }

LABEL_60:
      __dst.__r_.__value_.__r.__words[0] = 0;
      v45 = xpc_dictionary_create(0, 0, 0);
      v46 = v45;
      if (v45)
      {
        __dst.__r_.__value_.__r.__words[0] = v45;
      }

      else
      {
        v46 = xpc_null_create();
        __dst.__r_.__value_.__r.__words[0] = v46;
        if (!v46)
        {
          v47 = xpc_null_create();
          v46 = 0;
          goto LABEL_70;
        }
      }

      if (xpc_get_type(v46) == &_xpc_type_dictionary)
      {
        xpc_retain(v46);
        goto LABEL_71;
      }

      v47 = xpc_null_create();
LABEL_70:
      __dst.__r_.__value_.__r.__words[0] = v47;
LABEL_71:
      xpc_release(v46);
      v48 = subscriber::simSlotAsInstance();
      v135 = xpc_int64_create(v48);
      if (!v135)
      {
        v135 = xpc_null_create();
      }

      buf[0].__locale_ = &__dst;
      buf[1].__locale_ = "subs_id";
      sub_10000F688(buf, &v135, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v135);
      v135 = 0;
      v133 = xpc_int64_create(v11);
      if (!v133)
      {
        v133 = xpc_null_create();
      }

      buf[0].__locale_ = &__dst;
      buf[1].__locale_ = "errorGroup";
      sub_10000F688(buf, &v133, &v134);
      xpc_release(v134);
      v134 = 0;
      xpc_release(v133);
      v133 = 0;
      v131 = xpc_int64_create(v10);
      if (!v131)
      {
        v131 = xpc_null_create();
      }

      buf[0].__locale_ = &__dst;
      buf[1].__locale_ = "errorCode";
      sub_10000F688(buf, &v131, &v132);
      xpc_release(v132);
      v132 = 0;
      xpc_release(v131);
      v131 = 0;
      if (isEmergencyTextNumberForSlot_sync)
      {
        v49 = 6;
      }

      else if ((v13 - 1) > 4)
      {
        v49 = 0;
      }

      else
      {
        v49 = qword_101978288[v13 - 1];
      }

      v129 = xpc_int64_create(v49);
      if (!v129)
      {
        v129 = xpc_null_create();
      }

      buf[0].__locale_ = &__dst;
      buf[1].__locale_ = "smsType";
      sub_10000F688(buf, &v129, &v130);
      xpc_release(v130);
      v130 = 0;
      xpc_release(v129);
      v129 = 0;
      if (a3 == 2)
      {
        v50 = 1;
      }

      else
      {
        v50 = 2;
      }

      v127 = xpc_int64_create(v50);
      if (!v127)
      {
        v127 = xpc_null_create();
      }

      buf[0].__locale_ = &__dst;
      buf[1].__locale_ = "transport";
      sub_10000F688(buf, &v127, &v128);
      xpc_release(v128);
      v128 = 0;
      xpc_release(v127);
      v127 = 0;
      buf[0].__locale_ = &v147;
      v51 = *(sub_1002D750C(a1 + 2560, &v147, &unk_101802C98, buf)[5] + 294);
      buf[0].__locale_ = &v147;
      v52 = sub_1002D750C(a1 + 2560, &v147, &unk_101802C98, buf);
      v53 = sub_1014A082C(v51, *(v52[5] + 288));
      v125 = xpc_int64_create(v53);
      if (!v125)
      {
        v125 = xpc_null_create();
      }

      buf[0].__locale_ = &__dst;
      buf[1].__locale_ = "rat";
      sub_10000F688(buf, &v125, &v126);
      xpc_release(v126);
      v126 = 0;
      xpc_release(v125);
      v125 = 0;
      v123 = xpc_int64_create(value_4);
      if (!v123)
      {
        v123 = xpc_null_create();
      }

      buf[0].__locale_ = &__dst;
      buf[1].__locale_ = "mcc";
      sub_10000F688(buf, &v123, &v124);
      xpc_release(v124);
      v124 = 0;
      xpc_release(v123);
      v123 = 0;
      v121 = xpc_int64_create(value);
      if (!v121)
      {
        v121 = xpc_null_create();
      }

      buf[0].__locale_ = &__dst;
      buf[1].__locale_ = "mnc";
      sub_10000F688(buf, &v121, &v122);
      xpc_release(v122);
      v122 = 0;
      xpc_release(v121);
      v121 = 0;
      v54 = (v81 - 4);
      if (v54 < 3)
      {
        v55 = v54 + 1;
      }

      else
      {
        v55 = 0;
      }

      v119 = xpc_int64_create(v55);
      if (!v119)
      {
        v119 = xpc_null_create();
      }

      buf[0].__locale_ = &__dst;
      buf[1].__locale_ = "serviceStatus";
      sub_10000F688(buf, &v119, &v120);
      xpc_release(v120);
      v120 = 0;
      xpc_release(v119);
      v119 = 0;
      v117 = xpc_BOOL_create(v85);
      if (!v117)
      {
        v117 = xpc_null_create();
      }

      buf[0].__locale_ = &__dst;
      buf[1].__locale_ = "is911";
      sub_10000F688(buf, &v117, &v118);
      xpc_release(v118);
      v118 = 0;
      xpc_release(v117);
      v117 = 0;
      if (v142 >= 0)
      {
        v56 = &v141;
      }

      else
      {
        v56 = v141;
      }

      v115 = xpc_string_create(v56);
      if (!v115)
      {
        v115 = xpc_null_create();
      }

      buf[0].__locale_ = &__dst;
      buf[1].__locale_ = "bundleId";
      sub_10000F688(buf, &v115, &v116);
      xpc_release(v116);
      v116 = 0;
      xpc_release(v115);
      v115 = 0;
      if (SHIBYTE(v142) < 0)
      {
        sub_100005F2C(&v111, v141, *(&v141 + 1));
      }

      else
      {
        v111 = v141;
        v112 = v142;
      }

      isThirdPartyMessagingApp = MessageCenterModel::isThirdPartyMessagingApp(&v111);
      v113 = xpc_BOOL_create(isThirdPartyMessagingApp);
      if (!v113)
      {
        v113 = xpc_null_create();
      }

      buf[0].__locale_ = &__dst;
      buf[1].__locale_ = "isThirdParty";
      sub_10000F688(buf, &v113, &v114);
      xpc_release(v114);
      v114 = 0;
      xpc_release(v113);
      v113 = 0;
      if (SHIBYTE(v112) < 0)
      {
        operator delete(v111);
      }

      v110 = __dst.__r_.__value_.__r.__words[0];
      if (__dst.__r_.__value_.__r.__words[0])
      {
        xpc_retain(__dst.__r_.__value_.__l.__data_);
      }

      else
      {
        v110 = xpc_null_create();
      }

      (*(*v42 + 16))(v42, "metricCCSMSSendEnd", &v110);
      xpc_release(v110);
      v110 = 0;
      xpc_release(__dst.__r_.__value_.__l.__data_);
      v109 = 0;
      v58 = xpc_dictionary_create(0, 0, 0);
      v59 = v58;
      if (v58)
      {
        v109 = v58;
      }

      else
      {
        v59 = xpc_null_create();
        v109 = v59;
        if (!v59)
        {
          v60 = xpc_null_create();
          v59 = 0;
          goto LABEL_124;
        }
      }

      if (xpc_get_type(v59) == &_xpc_type_dictionary)
      {
        xpc_retain(v59);
        goto LABEL_125;
      }

      v60 = xpc_null_create();
LABEL_124:
      v109 = v60;
LABEL_125:
      xpc_release(v59);
      v107 = xpc_BOOL_create(v11 == 0);
      if (!v107)
      {
        v107 = xpc_null_create();
      }

      buf[0].__locale_ = &v109;
      buf[1].__locale_ = "IsSuccess";
      sub_10000F688(buf, &v107, &v108);
      xpc_release(v108);
      v108 = 0;
      xpc_release(v107);
      v107 = 0;
      v105 = xpc_string_create("SMS");
      if (!v105)
      {
        v105 = xpc_null_create();
      }

      buf[0].__locale_ = &v109;
      buf[1].__locale_ = "MessageType";
      sub_10000F688(buf, &v105, &v106);
      xpc_release(v106);
      v106 = 0;
      xpc_release(v105);
      v105 = 0;
      sub_10000501C(&__dst, "SMS_");
      v61 = asString();
      v62 = strlen(v61);
      v63 = std::string::append(&__dst, v61, v62);
      v64 = *&v63->__r_.__value_.__l.__data_;
      buf[2] = v63->__r_.__value_.__r.__words[2];
      *&buf[0].__locale_ = v64;
      v63->__r_.__value_.__l.__size_ = 0;
      v63->__r_.__value_.__r.__words[2] = 0;
      v63->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(buf[2].__locale_) >= 0)
      {
        v65 = buf;
      }

      else
      {
        v65 = buf[0].__locale_;
      }

      v103 = xpc_string_create(v65);
      if (!v103)
      {
        v103 = xpc_null_create();
      }

      v98.__r_.__value_.__r.__words[0] = &v109;
      v98.__r_.__value_.__l.__size_ = "MessageSubtype";
      sub_10000F688(&v98, &v103, &v104);
      xpc_release(v104);
      v104 = 0;
      xpc_release(v103);
      v103 = 0;
      if (SHIBYTE(buf[2].__locale_) < 0)
      {
        operator delete(buf[0].__locale_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v101 = xpc_BOOL_create(1);
      if (!v101)
      {
        v101 = xpc_null_create();
      }

      buf[0].__locale_ = &v109;
      buf[1].__locale_ = "IsOutgoingMessage";
      sub_10000F688(buf, &v101, &v102);
      xpc_release(v102);
      v102 = 0;
      xpc_release(v101);
      v101 = 0;
      sub_10000501C(&v98, "_");
      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v66 = &v140;
      }

      else
      {
        v66 = v140.__r_.__value_.__r.__words[0];
      }

      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v140.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v140.__r_.__value_.__l.__size_;
      }

      v68 = std::string::insert(&v98, 0, v66, size);
      v69 = *&v68->__r_.__value_.__l.__data_;
      __dst.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
      *&__dst.__r_.__value_.__l.__data_ = v69;
      v68->__r_.__value_.__l.__size_ = 0;
      v68->__r_.__value_.__r.__words[2] = 0;
      v68->__r_.__value_.__r.__words[0] = 0;
      v70 = sms::asString();
      v71 = strlen(v70);
      v72 = std::string::append(&__dst, v70, v71);
      v73 = *&v72->__r_.__value_.__l.__data_;
      buf[2] = v72->__r_.__value_.__r.__words[2];
      *&buf[0].__locale_ = v73;
      v72->__r_.__value_.__l.__size_ = 0;
      v72->__r_.__value_.__r.__words[2] = 0;
      v72->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(buf[2].__locale_) >= 0)
      {
        v74 = buf;
      }

      else
      {
        v74 = buf[0].__locale_;
      }

      v99 = xpc_string_create(v74);
      if (!v99)
      {
        v99 = xpc_null_create();
      }

      v97[0] = &v109;
      v97[1] = "ErrorReason";
      sub_10000F688(v97, &v99, &v100);
      xpc_release(v100);
      v100 = 0;
      xpc_release(v99);
      v99 = 0;
      if (SHIBYTE(buf[2].__locale_) < 0)
      {
        operator delete(buf[0].__locale_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      v95 = xpc_BOOL_create(v85);
      if (!v95)
      {
        v95 = xpc_null_create();
      }

      buf[0].__locale_ = &v109;
      buf[1].__locale_ = "IsEmergency";
      sub_10000F688(buf, &v95, &v96);
      xpc_release(v96);
      v96 = 0;
      xpc_release(v95);
      v95 = 0;
      if (v142 >= 0)
      {
        v75 = &v141;
      }

      else
      {
        v75 = v141;
      }

      v93 = xpc_string_create(v75);
      if (!v93)
      {
        v93 = xpc_null_create();
      }

      buf[0].__locale_ = &v109;
      buf[1].__locale_ = "bundleId";
      sub_10000F688(buf, &v93, &v94);
      xpc_release(v94);
      v94 = 0;
      xpc_release(v93);
      v93 = 0;
      if (SHIBYTE(v142) < 0)
      {
        sub_100005F2C(v89, v141, *(&v141 + 1));
      }

      else
      {
        *v89 = v141;
        v90 = v142;
      }

      v76 = MessageCenterModel::isThirdPartyMessagingApp(v89);
      v91 = xpc_BOOL_create(v76);
      if (!v91)
      {
        v91 = xpc_null_create();
      }

      buf[0].__locale_ = &v109;
      buf[1].__locale_ = "isThirdParty";
      sub_10000F688(buf, &v91, &v92);
      xpc_release(v92);
      v92 = 0;
      xpc_release(v91);
      v91 = 0;
      if (SHIBYTE(v90) < 0)
      {
        operator delete(v89[0]);
        if ((a10 & 1) == 0)
        {
LABEL_179:
          v86 = v109;
          if (v109)
          {
            xpc_retain(v109);
          }

          else
          {
            v86 = xpc_null_create();
          }

          (*(*v42 + 16))(v42, "UnifiedCTMessage", &v86);
          xpc_release(v86);
          v86 = 0;
          xpc_release(v109);
          goto LABEL_183;
        }
      }

      else if ((a10 & 1) == 0)
      {
        goto LABEL_179;
      }

      Registry::getTimerService(buf, *(a1 + 80));
      v77 = (**buf[0].__locale_)(buf[0].__locale_);
      if (buf[1].__locale_)
      {
        sub_100004A34(buf[1].__locale_);
      }

      if (v77 >= a9)
      {
        v87 = xpc_double_create(((v77 - a9) / 1000000) / 1000.0);
        if (!v87)
        {
          v87 = xpc_null_create();
        }

        buf[0].__locale_ = &v109;
        buf[1].__locale_ = "SendDuration";
        sub_10000F688(buf, &v87, &v88);
        xpc_release(v88);
        v88 = 0;
        xpc_release(v87);
        v87 = 0;
      }

      goto LABEL_179;
    }
  }

  else
  {
    v42 = 0;
  }

  std::mutex::unlock(v35);
  v41 = 0;
  v43 = 1;
  if (v42)
  {
    goto LABEL_60;
  }

LABEL_56:
  v44 = *(a1 + 40);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Failed to get analytics interface for SMS received...", buf, 2u);
  }

LABEL_183:
  if ((v43 & 1) == 0)
  {
    sub_100004A34(v41);
  }

  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v140.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v142) < 0)
  {
    operator delete(v141);
  }

  if (SHIBYTE(v146) < 0)
  {
    operator delete(*(&v145 + 1));
  }

  if (SHIBYTE(v144) < 0)
  {
    operator delete(*(&v143 + 1));
  }
}

void sub_1014A22E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sms::Controller::submitSMSReceivedMetric(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  if (a5 > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_1019782B0[a5];
  }

  sms::Controller::submitSMSReceivedMetric(a1, a2, a3, a4, v6, a6, 0);
}

void sms::Controller::submitSMSReceivedMetric(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v8 = a5;
  v112 = a2;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  *&buf = &v112;
  v12 = sub_1002D750C(a1 + 2560, &v112, &unk_101802C98, &buf)[5];
  MCC::MCC(&v108, (v12 + 416));
  MCC::MCC(&v110, (v12 + 448));
  MCCAndMNC::getMcc(&buf, &v108);
  value_4 = MCC::getIntValue(&buf);
  if (SBYTE5(v116) < 0)
  {
    operator delete(*(&buf + 1));
  }

  MCCAndMNC::getMnc(&buf, &v108);
  IntValue = MCC::getIntValue(&buf);
  if (SBYTE5(v116) < 0)
  {
    operator delete(*(&buf + 1));
  }

  if (v112 == 1)
  {
    v14 = 488;
    goto LABEL_9;
  }

  if (v112 == 2)
  {
    v14 = 1296;
LABEL_9:
    v15 = *(a1 + v14);
    goto LABEL_11;
  }

  v15 = 0;
LABEL_11:
  v106 = 0uLL;
  v107 = 0;
  MessageCenterModel::getBundleIdForDefaultCarrierMessagingApp((a1 + 80), &v106);
  v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v112);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = asString();
    v18 = sms::asString(a6);
    if (v8 - 1 > 0xC)
    {
      v19 = "kCommCenterSMSTypeUnknown";
    }

    else
    {
      v19 = off_101F40BB8[v8 - 1];
    }

    LODWORD(buf) = 67438595;
    DWORD1(buf) = value_4;
    WORD4(buf) = 1029;
    *(&buf + 10) = IntValue;
    HIWORD(buf) = 2080;
    v114 = v17;
    v115 = 2080;
    v116 = v19;
    v117 = 2080;
    v118 = v18;
    v119 = 1024;
    v120 = a3;
    v121 = 2048;
    v122 = a4;
    v123 = 1024;
    v124 = a7;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I SMS AWD received [mcc: %{sensitive}u mnc: %{sensitive}u regStatus = %s type: %s transport: %s sz: %d numOfFrags: %zu is911: %d]", &buf, 0x42u);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v21 = ServiceMap;
  if (v22 < 0)
  {
    v23 = (v22 & 0x7FFFFFFFFFFFFFFFLL);
    v24 = 5381;
    do
    {
      v22 = v24;
      v25 = *v23++;
      v24 = (33 * v24) ^ v25;
    }

    while (v25);
  }

  std::mutex::lock(ServiceMap);
  *&buf = v22;
  v26 = sub_100009510(&v21[1].__m_.__sig, &buf);
  v53 = v15;
  value = IntValue;
  if (v26)
  {
    v27 = v26[3];
    v28 = v26[4];
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v21);
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v28);
      v29 = 0;
      if (!v27)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v27 = 0;
  }

  std::mutex::unlock(v21);
  v28 = 0;
  v29 = 1;
  if (!v27)
  {
LABEL_22:
    v30 = *(a1 + 40);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to get analytics interface for SMS received...", &buf, 2u);
    }

    goto LABEL_124;
  }

LABEL_26:
  v71.__r_.__value_.__r.__words[0] = 0;
  v31 = xpc_dictionary_create(0, 0, 0);
  v32 = v31;
  if (v31)
  {
    v71.__r_.__value_.__r.__words[0] = v31;
  }

  else
  {
    v32 = xpc_null_create();
    v71.__r_.__value_.__r.__words[0] = v32;
    if (!v32)
    {
      v33 = xpc_null_create();
      v32 = 0;
      goto LABEL_33;
    }
  }

  if (xpc_get_type(v32) == &_xpc_type_dictionary)
  {
    xpc_retain(v32);
    goto LABEL_34;
  }

  v33 = xpc_null_create();
LABEL_33:
  v71.__r_.__value_.__r.__words[0] = v33;
LABEL_34:
  xpc_release(v32);
  v34 = subscriber::simSlotAsInstance();
  v104 = xpc_int64_create(v34);
  if (!v104)
  {
    v104 = xpc_null_create();
  }

  *&buf = &v71;
  *(&buf + 1) = "subs_id";
  sub_10000F688(&buf, &v104, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v104);
  v104 = 0;
  v102 = xpc_int64_create(a3);
  if (!v102)
  {
    v102 = xpc_null_create();
  }

  *&buf = &v71;
  *(&buf + 1) = "wSize";
  sub_10000F688(&buf, &v102, &v103);
  xpc_release(v103);
  v103 = 0;
  xpc_release(v102);
  v102 = 0;
  v100 = xpc_int64_create(a4);
  if (!v100)
  {
    v100 = xpc_null_create();
  }

  *&buf = &v71;
  *(&buf + 1) = "wNumFrags";
  sub_10000F688(&buf, &v100, &v101);
  xpc_release(v101);
  v101 = 0;
  xpc_release(v100);
  v100 = 0;
  v98 = xpc_int64_create(v8);
  if (!v98)
  {
    v98 = xpc_null_create();
  }

  *&buf = &v71;
  *(&buf + 1) = "smsType";
  sub_10000F688(&buf, &v98, &v99);
  xpc_release(v99);
  v99 = 0;
  xpc_release(v98);
  v98 = 0;
  if (a6 == 2)
  {
    v35 = 1;
  }

  else
  {
    v35 = 2;
  }

  v96 = xpc_int64_create(v35);
  if (!v96)
  {
    v96 = xpc_null_create();
  }

  *&buf = &v71;
  *(&buf + 1) = "transport";
  sub_10000F688(&buf, &v96, &v97);
  xpc_release(v97);
  v97 = 0;
  xpc_release(v96);
  v96 = 0;
  *&buf = &v112;
  v36 = *(sub_1002D750C(a1 + 2560, &v112, &unk_101802C98, &buf)[5] + 294);
  *&buf = &v112;
  v37 = sub_1002D750C(a1 + 2560, &v112, &unk_101802C98, &buf);
  v38 = sub_1014A082C(v36, *(v37[5] + 288));
  v94 = xpc_int64_create(v38);
  if (!v94)
  {
    v94 = xpc_null_create();
  }

  *&buf = &v71;
  *(&buf + 1) = "rat";
  sub_10000F688(&buf, &v94, &v95);
  xpc_release(v95);
  v95 = 0;
  xpc_release(v94);
  v94 = 0;
  v92 = xpc_int64_create(value_4);
  if (!v92)
  {
    v92 = xpc_null_create();
  }

  *&buf = &v71;
  *(&buf + 1) = "mcc";
  sub_10000F688(&buf, &v92, &v93);
  xpc_release(v93);
  v93 = 0;
  xpc_release(v92);
  v92 = 0;
  v90 = xpc_int64_create(value);
  if (!v90)
  {
    v90 = xpc_null_create();
  }

  *&buf = &v71;
  *(&buf + 1) = "mnc";
  sub_10000F688(&buf, &v90, &v91);
  xpc_release(v91);
  v91 = 0;
  xpc_release(v90);
  v90 = 0;
  v39 = (v53 - 4);
  if (v39 < 3)
  {
    v40 = v39 + 1;
  }

  else
  {
    v40 = 0;
  }

  v88 = xpc_int64_create(v40);
  if (!v88)
  {
    v88 = xpc_null_create();
  }

  *&buf = &v71;
  *(&buf + 1) = "serviceStatus";
  sub_10000F688(&buf, &v88, &v89);
  xpc_release(v89);
  v89 = 0;
  xpc_release(v88);
  v88 = 0;
  v86 = xpc_BOOL_create(a7);
  if (!v86)
  {
    v86 = xpc_null_create();
  }

  *&buf = &v71;
  *(&buf + 1) = "is911";
  sub_10000F688(&buf, &v86, &v87);
  xpc_release(v87);
  v87 = 0;
  xpc_release(v86);
  v86 = 0;
  if (v107 >= 0)
  {
    v41 = &v106;
  }

  else
  {
    v41 = v106;
  }

  v84 = xpc_string_create(v41);
  if (!v84)
  {
    v84 = xpc_null_create();
  }

  *&buf = &v71;
  *(&buf + 1) = "bundleId";
  sub_10000F688(&buf, &v84, &v85);
  xpc_release(v85);
  v85 = 0;
  xpc_release(v84);
  v84 = 0;
  if (SHIBYTE(v107) < 0)
  {
    sub_100005F2C(&__p, v106, *(&v106 + 1));
  }

  else
  {
    __p = v106;
    v81 = v107;
  }

  isThirdPartyMessagingApp = MessageCenterModel::isThirdPartyMessagingApp(&__p);
  v82 = xpc_BOOL_create(isThirdPartyMessagingApp);
  if (!v82)
  {
    v82 = xpc_null_create();
  }

  *&buf = &v71;
  *(&buf + 1) = "isThirdParty";
  sub_10000F688(&buf, &v82, &v83);
  xpc_release(v83);
  v83 = 0;
  xpc_release(v82);
  v82 = 0;
  if (SHIBYTE(v81) < 0)
  {
    operator delete(__p);
  }

  v79 = v71.__r_.__value_.__r.__words[0];
  if (v71.__r_.__value_.__r.__words[0])
  {
    xpc_retain(v71.__r_.__value_.__l.__data_);
  }

  else
  {
    v79 = xpc_null_create();
  }

  (*(*v27 + 16))(v27, "metricCCSMSReceived", &v79);
  xpc_release(v79);
  v79 = 0;
  xpc_release(v71.__r_.__value_.__l.__data_);
  v78 = 0;
  v43 = xpc_dictionary_create(0, 0, 0);
  v44 = v43;
  if (v43)
  {
    v78 = v43;
  }

  else
  {
    v44 = xpc_null_create();
    v78 = v44;
    if (!v44)
    {
      v45 = xpc_null_create();
      v44 = 0;
      goto LABEL_82;
    }
  }

  if (xpc_get_type(v44) != &_xpc_type_dictionary)
  {
    v45 = xpc_null_create();
LABEL_82:
    v78 = v45;
    goto LABEL_83;
  }

  xpc_retain(v44);
LABEL_83:
  xpc_release(v44);
  v76 = xpc_BOOL_create(1);
  if (!v76)
  {
    v76 = xpc_null_create();
  }

  *&buf = &v78;
  *(&buf + 1) = "IsSuccess";
  sub_10000F688(&buf, &v76, &v77);
  xpc_release(v77);
  v77 = 0;
  xpc_release(v76);
  v76 = 0;
  v74 = xpc_string_create("SMS");
  if (!v74)
  {
    v74 = xpc_null_create();
  }

  *&buf = &v78;
  *(&buf + 1) = "MessageType";
  sub_10000F688(&buf, &v74, &v75);
  xpc_release(v75);
  v75 = 0;
  xpc_release(v74);
  v74 = 0;
  sub_10000501C(&v71, "SMS_");
  if (v8 > 0xD)
  {
LABEL_133:
    v46 = "???";
  }

  else
  {
    v46 = "kMMSProvisioning";
    switch(v8)
    {
      case 5u:
        break;
      case 6u:
        v46 = "kEmergency";
        break;
      case 7u:
        v46 = "kCellBroadcast";
        break;
      case 8u:
        v46 = "kWapPush";
        break;
      case 9u:
        v46 = "kTypeClass0";
        break;
      case 0xAu:
        v46 = "kSimDownload";
        break;
      case 0xBu:
        goto LABEL_133;
      case 0xCu:
        v46 = "kDataPlan";
        break;
      case 0xDu:
        v46 = "kSUPLInit";
        break;
      default:
        v46 = asString();
        break;
    }
  }

  v47 = strlen(v46);
  v48 = std::string::append(&v71, v46, v47);
  v49 = *&v48->__r_.__value_.__l.__data_;
  v114 = v48->__r_.__value_.__r.__words[2];
  buf = v49;
  v48->__r_.__value_.__l.__size_ = 0;
  v48->__r_.__value_.__r.__words[2] = 0;
  v48->__r_.__value_.__r.__words[0] = 0;
  if (v114 >= 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf;
  }

  v72 = xpc_string_create(p_buf);
  if (!v72)
  {
    v72 = xpc_null_create();
  }

  v70[0] = &v78;
  v70[1] = "MessageSubtype";
  sub_10000F688(v70, &v72, &v73);
  xpc_release(v73);
  v73 = 0;
  xpc_release(v72);
  v72 = 0;
  if (SHIBYTE(v114) < 0)
  {
    operator delete(buf);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  v68 = xpc_BOOL_create(0);
  if (!v68)
  {
    v68 = xpc_null_create();
  }

  *&buf = &v78;
  *(&buf + 1) = "IsOutgoingMessage";
  sub_10000F688(&buf, &v68, &v69);
  xpc_release(v69);
  v69 = 0;
  xpc_release(v68);
  v68 = 0;
  v66 = xpc_string_create("NoError");
  if (!v66)
  {
    v66 = xpc_null_create();
  }

  *&buf = &v78;
  *(&buf + 1) = "ErrorReason";
  sub_10000F688(&buf, &v66, &v67);
  xpc_release(v67);
  v67 = 0;
  xpc_release(v66);
  v66 = 0;
  v64 = xpc_BOOL_create(a7);
  if (!v64)
  {
    v64 = xpc_null_create();
  }

  *&buf = &v78;
  *(&buf + 1) = "IsEmergency";
  sub_10000F688(&buf, &v64, &v65);
  xpc_release(v65);
  v65 = 0;
  xpc_release(v64);
  v64 = 0;
  if (v107 >= 0)
  {
    v51 = &v106;
  }

  else
  {
    v51 = v106;
  }

  v62 = xpc_string_create(v51);
  if (!v62)
  {
    v62 = xpc_null_create();
  }

  *&buf = &v78;
  *(&buf + 1) = "bundleId";
  sub_10000F688(&buf, &v62, &v63);
  xpc_release(v63);
  v63 = 0;
  xpc_release(v62);
  v62 = 0;
  if (SHIBYTE(v107) < 0)
  {
    sub_100005F2C(__dst, v106, *(&v106 + 1));
  }

  else
  {
    *__dst = v106;
    v59 = v107;
  }

  v52 = MessageCenterModel::isThirdPartyMessagingApp(__dst);
  v60 = xpc_BOOL_create(v52);
  if (!v60)
  {
    v60 = xpc_null_create();
  }

  *&buf = &v78;
  *(&buf + 1) = "isThirdParty";
  sub_10000F688(&buf, &v60, &v61);
  xpc_release(v61);
  v61 = 0;
  xpc_release(v60);
  v60 = 0;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__dst[0]);
  }

  v57 = v78;
  if (v78)
  {
    xpc_retain(v78);
  }

  else
  {
    v57 = xpc_null_create();
  }

  (*(*v27 + 16))(v27, "UnifiedCTMessage", &v57);
  xpc_release(v57);
  v57 = 0;
  xpc_release(v78);
LABEL_124:
  if ((v29 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  if (SHIBYTE(v107) < 0)
  {
    operator delete(v106);
  }

  if (SHIBYTE(v111) < 0)
  {
    operator delete(*(&v110 + 1));
  }

  if (SHIBYTE(v109) < 0)
  {
    operator delete(*(&v108 + 1));
  }
}

void sub_1014A3454(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sms::Controller::incrementMTSMSRecvFailedCounter(Registry **this)
{
  ServiceMap = Registry::getServiceMap(this[10]);
  v2 = ServiceMap;
  v3 = "N3awd7metrics14MetricCountersE";
  if (("N3awd7metrics14MetricCountersE" & 0x8000000000000000) != 0)
  {
    v4 = ("N3awd7metrics14MetricCountersE" & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v12 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v12);
  if (!v7)
  {
    v9 = 0;
LABEL_9:
    std::mutex::unlock(v2);
    v8 = 0;
    v10 = 1;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = v7[3];
  v8 = v7[4];
  if (!v8)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v2);
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v8);
  v10 = 0;
  if (v9)
  {
LABEL_10:
    v11 = sub_100AFFD90(v9);
    sub_100B009C0(v11);
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }
}

void sub_1014A37F0(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sms::Controller::incrementMTSMSRecvSuccessCounter(Registry **this)
{
  ServiceMap = Registry::getServiceMap(this[10]);
  v2 = ServiceMap;
  v3 = "N3awd7metrics14MetricCountersE";
  if (("N3awd7metrics14MetricCountersE" & 0x8000000000000000) != 0)
  {
    v4 = ("N3awd7metrics14MetricCountersE" & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v12 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v12);
  if (!v7)
  {
    v9 = 0;
LABEL_9:
    std::mutex::unlock(v2);
    v8 = 0;
    v10 = 1;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = v7[3];
  v8 = v7[4];
  if (!v8)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v2);
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v8);
  v10 = 0;
  if (v9)
  {
LABEL_10:
    v11 = sub_100AFFD88(v9);
    sub_100B009C0(v11);
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }
}

void sub_1014A38FC(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void CarrierBundleHandler::prepareBundleMetric(CarrierBundleHandler *this)
{
  v2 = this;
  sub_1014A39A0(&v2, 1, 1);
  sub_1014A39A0(&v2, 2, 1);
  sub_1014A39A0(&v2, 4, 1);
  sub_1014A39A0(&v2, 3, 1);
  if (capabilities::ct::supportsGemini(v1))
  {
    sub_1014A39A0(&v2, 1, 2);
    sub_1014A39A0(&v2, 2, 2);
  }
}

void sub_1014A39A0(uint64_t *a1, int a2, int a3)
{
  v5 = *a1;
  sub_100004AA0(&v13, (*a1 + 8));
  v7 = v13;
  v6 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  if ((a2 - 2) > 2)
  {
    v8 = 524503;
  }

  else
  {
    v8 = dword_1019782C4[(a2 - 2)];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1174405120;
  v9[2] = sub_1014A4E98;
  v9[3] = &unk_101F40C40;
  v9[4] = v5;
  v9[5] = v7;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a3;
  v12 = a2;
  sub_10079D8A0(v8, v9);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_1014A3AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  _Unwind_Resume(exception_object);
}

void CarrierBundleHandler::submitBundleStateMetric_sync(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  ServiceMap = Registry::getServiceMap(*(a1 + 104));
  v9 = ServiceMap;
  if (v10 < 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  *buf = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, buf);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      if (!v16)
      {
        goto LABEL_7;
      }

LABEL_11:
      v52 = v17;
      v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a4);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = asString();
        *buf = 136315138;
        *&buf[4] = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I CA: Submitting the state of %s", buf, 0xCu);
      }

      v81 = 0;
      v21 = xpc_dictionary_create(0, 0, 0);
      v22 = v21;
      if (v21)
      {
        v81 = v21;
      }

      else
      {
        v22 = xpc_null_create();
        v81 = v22;
        if (!v22)
        {
          v23 = xpc_null_create();
          v22 = 0;
          goto LABEL_20;
        }
      }

      if (xpc_get_type(v22) == &_xpc_type_dictionary)
      {
        xpc_retain(v22);
        goto LABEL_21;
      }

      v23 = xpc_null_create();
LABEL_20:
      v81 = v23;
LABEL_21:
      xpc_release(v22);
      v24 = subscriber::simSlotAsInstance();
      v79 = xpc_int64_create(v24);
      if (!v79)
      {
        v79 = xpc_null_create();
      }

      *buf = &v81;
      *&buf[8] = "subs_id";
      sub_10000F688(buf, &v79, &v80);
      xpc_release(v80);
      v80 = 0;
      xpc_release(v79);
      v79 = 0;
      v25 = a2[25];
      if (v25)
      {
        Value = CFDictionaryGetValue(v25, qword_101FCB6F0);
        v27 = Value;
        if (Value)
        {
          v28 = CFGetTypeID(Value);
          if (v28 == CFStringGetTypeID())
          {
            v56[0] = v27;
            sub_1000481D4(&__str);
            std::string::basic_string(buf, &__str, 0, 7uLL, &v57);
            if ((SBYTE7(v83) & 0x80u) == 0)
            {
              v29 = buf;
            }

            else
            {
              v29 = *buf;
            }

            v77 = xpc_string_create(v29);
            if (!v77)
            {
              v77 = xpc_null_create();
            }

            v57.__r_.__value_.__r.__words[0] = &v81;
            v57.__r_.__value_.__l.__size_ = "imsi_prefix";
            sub_10000F688(&v57, &v77, &v78);
            xpc_release(v78);
            v78 = 0;
            xpc_release(v77);
            v77 = 0;
            if (SBYTE7(v83) < 0)
            {
              operator delete(*buf);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      v30 = *(a2 + 23);
      if (v30 < 0)
      {
        v30 = a2[1];
      }

      if (!v30)
      {
        v44 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a4);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = asString();
          *buf = 136315138;
          *&buf[4] = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#N State of %s is not valid", buf, 0xCu);
        }

        goto LABEL_122;
      }

      v31 = sub_100ECBB48(v5);
      v74 = xpc_string_create(v31);
      if (!v74)
      {
        v74 = xpc_null_create();
      }

      *buf = &v81;
      *&buf[8] = "bundle_type";
      sub_10000F688(buf, &v74, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v74);
      v74 = 0;
      (*(**(a1 + 88) + 120))(buf);
      if ((SBYTE7(v83) & 0x80u) == 0)
      {
        v32 = buf;
      }

      else
      {
        v32 = *buf;
      }

      v72 = xpc_string_create(v32);
      if (!v72)
      {
        v72 = xpc_null_create();
      }

      __str.__r_.__value_.__r.__words[0] = &v81;
      __str.__r_.__value_.__l.__size_ = "matching_bundle_name";
      sub_10000F688(&__str, &v72, &v73);
      xpc_release(v73);
      v73 = 0;
      xpc_release(v72);
      v72 = 0;
      if (SBYTE7(v83) < 0)
      {
        operator delete(*buf);
      }

      (*(**(a1 + 88) + 120))(buf);
      if ((SBYTE7(v83) & 0x80u) == 0)
      {
        v33 = buf;
      }

      else
      {
        v33 = *buf;
      }

      v70 = xpc_string_create(v33);
      if (!v70)
      {
        v70 = xpc_null_create();
      }

      __str.__r_.__value_.__r.__words[0] = &v81;
      __str.__r_.__value_.__l.__size_ = "resolved_bundle_name";
      sub_10000F688(&__str, &v70, &v71);
      xpc_release(v71);
      v71 = 0;
      xpc_release(v70);
      v70 = 0;
      if (SBYTE7(v83) < 0)
      {
        operator delete(*buf);
      }

      (*(**(a1 + 88) + 120))(buf);
      if ((SBYTE7(v83) & 0x80u) == 0)
      {
        v34 = buf;
      }

      else
      {
        v34 = *buf;
      }

      v68 = xpc_string_create(v34);
      if (!v68)
      {
        v68 = xpc_null_create();
      }

      __str.__r_.__value_.__r.__words[0] = &v81;
      __str.__r_.__value_.__l.__size_ = "carrier_plist_name";
      sub_10000F688(&__str, &v68, &v69);
      xpc_release(v69);
      v69 = 0;
      xpc_release(v68);
      v68 = 0;
      if (SBYTE7(v83) < 0)
      {
        operator delete(*buf);
      }

      if (*(a2 + 119) >= 0)
      {
        v35 = (a2 + 12);
      }

      else
      {
        v35 = a2[12];
      }

      v66 = xpc_string_create(v35);
      if (!v66)
      {
        v66 = xpc_null_create();
      }

      *buf = &v81;
      *&buf[8] = "bundle_version";
      sub_10000F688(buf, &v66, &v67);
      xpc_release(v67);
      v67 = 0;
      xpc_release(v66);
      v66 = 0;
      sub_10000BB50(buf, kSysCBDir);
      v36 = ctu::starts_with();
      v64 = xpc_BOOL_create(v36);
      if (!v64)
      {
        v64 = xpc_null_create();
      }

      *buf = &v81;
      *&buf[8] = "is_embedded";
      sub_10000F688(buf, &v64, &v65);
      xpc_release(v65);
      v65 = 0;
      xpc_release(v64);
      v64 = 0;
      if (v5 != 1)
      {
        goto LABEL_122;
      }

      sub_1000481D4(buf);
      v37 = *(a2 + 23);
      if (v37 >= 0)
      {
        v38 = *(a2 + 23);
      }

      else
      {
        v38 = a2[1];
      }

      v39 = BYTE7(v83);
      v40 = SBYTE7(v83);
      if (SBYTE7(v83) < 0)
      {
        v39 = *&buf[8];
      }

      if (v38 == v39)
      {
        if (v37 >= 0)
        {
          v41 = a2;
        }

        else
        {
          v41 = *a2;
        }

        if ((SBYTE7(v83) & 0x80u) == 0)
        {
          v42 = buf;
        }

        else
        {
          v42 = *buf;
        }

        v43 = memcmp(v41, v42, v38) == 0;
        if ((v40 & 0x80000000) == 0)
        {
LABEL_82:
          if (v43)
          {
            goto LABEL_88;
          }

          goto LABEL_122;
        }
      }

      else
      {
        v43 = 0;
        if ((SBYTE7(v83) & 0x80000000) == 0)
        {
          goto LABEL_82;
        }
      }

      operator delete(*buf);
      if (v43)
      {
LABEL_88:
        v46 = CarrierBundleHandler::evaluateGsmaSettingsSwitchState_sync(a1, a4);
        if (v46 == 2)
        {
          v47 = 2;
        }

        else
        {
          v47 = v46 == 1;
        }

        v62 = xpc_int64_create(v47);
        if (!v62)
        {
          v62 = xpc_null_create();
        }

        *buf = &v81;
        *&buf[8] = "gsma_switch_state";
        sub_10000F688(buf, &v62, &v63);
        xpc_release(v63);
        v63 = 0;
        xpc_release(v62);
        v62 = 0;
        memset(&__str, 0, sizeof(__str));
        (*(**(a1 + 88) + 120))(buf);
        getGSMAOverlayKey(&__str);
        if (SBYTE7(v83) < 0)
        {
          operator delete(*buf);
        }

        v48 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v86 = 0;
          v84 = 0u;
          v85 = 0u;
          *buf = 0u;
          v83 = 0u;
          ctu::partition();
          v60 = xpc_BOOL_create(1);
          if (!v60)
          {
            v60 = xpc_null_create();
          }

          v57.__r_.__value_.__r.__words[0] = &v81;
          v57.__r_.__value_.__l.__size_ = "gsma_settings_applied";
          sub_10000F688(&v57, &v60, &v61);
          xpc_release(v61);
          v61 = 0;
          xpc_release(v60);
          v60 = 0;
          std::string::basic_string(&v57, buf, 2uLL, 0xFFFFFFFFFFFFFFFFLL, v56);
          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v50 = &v57;
          }

          else
          {
            v50 = v57.__r_.__value_.__r.__words[0];
          }

          v58 = xpc_string_create(v50);
          if (!v58)
          {
            v58 = xpc_null_create();
          }

          v56[0] = &v81;
          v56[1] = "gsma_matched_config_name";
          sub_10000F688(v56, &v58, &v59);
          xpc_release(v59);
          v59 = 0;
          xpc_release(v58);
          v58 = 0;
          if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v57.__r_.__value_.__l.__data_);
          }

          if (v86 >= 0)
          {
            v51 = &v85;
          }

          else
          {
            v51 = v85;
          }

          v54 = xpc_string_create(v51);
          if (!v54)
          {
            v54 = xpc_null_create();
          }

          v57.__r_.__value_.__r.__words[0] = &v81;
          v57.__r_.__value_.__l.__size_ = "gsma_bundle_version";
          sub_10000F688(&v57, &v54, &v55);
          xpc_release(v55);
          v55 = 0;
          xpc_release(v54);
          v54 = 0;
          if (SHIBYTE(v86) < 0)
          {
            operator delete(v85);
          }

          if (SHIBYTE(v84) < 0)
          {
            operator delete(*(&v83 + 1));
          }

          if (SBYTE7(v83) < 0)
          {
            operator delete(*buf);
          }

          v48 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        if (v48 < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

LABEL_122:
      v53 = v81;
      if (v81)
      {
        xpc_retain(v81);
        v17 = v52;
      }

      else
      {
        v17 = v52;
        v53 = xpc_null_create();
      }

      (*(*v16 + 16))(v16, "commCenterBundleDetails", &v53);
      xpc_release(v53);
      v53 = 0;
      xpc_release(v81);
      goto LABEL_126;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
  if (v16)
  {
    goto LABEL_11;
  }

LABEL_7:
  v18 = *(a1 + 40);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid Analytics Interface. Not submitting metric.", buf, 2u);
  }

LABEL_126:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }
}

void sub_1014A45A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void CarrierBundleHandler::submitBundleStateMetric_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 - 1) <= 5)
  {
    v10[5] = v3;
    v10[6] = v4;
    v9 = a2 | (a3 << 32);
    v10[0] = &v9;
    v8 = sub_101075F04((a1 + 136), &v9, &unk_101802C98, v10);
    CarrierBundleHandler::submitBundleStateMetric_sync(a1, (v8 + 40), a2, a3);
  }
}

void CarrierBundleHandler::submitBundleScheduleMetric_sync(CarrierBundleHandler *this)
{
  ServiceMap = Registry::getServiceMap(*(this + 13));
  v3 = ServiceMap;
  if (v4 < 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  *&buf = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &buf);
  if (!v8)
  {
    v10 = 0;
LABEL_9:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    if (!v10)
    {
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  v11 = 0;
  if (!v10)
  {
    goto LABEL_26;
  }

LABEL_10:
  v12 = *(this + 5);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(this + 52);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Submit metric for update schedule set to %@", &buf, 0xCu);
  }

  AbsoluteTime = CFDateGetAbsoluteTime(*(this + 52));
  Current = CFAbsoluteTimeGetCurrent();
  v22 = 0;
  v16 = xpc_dictionary_create(0, 0, 0);
  v17 = v16;
  if (v16)
  {
    v22 = v16;
  }

  else
  {
    v17 = xpc_null_create();
    v22 = v17;
    if (!v17)
    {
      v18 = xpc_null_create();
      v17 = 0;
      goto LABEL_19;
    }
  }

  if (xpc_get_type(v17) != &_xpc_type_dictionary)
  {
    v18 = xpc_null_create();
LABEL_19:
    v22 = v18;
    goto LABEL_20;
  }

  xpc_retain(v17);
LABEL_20:
  xpc_release(v17);
  v20 = xpc_int64_create((AbsoluteTime - Current) / 86400);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  *&buf = &v22;
  *(&buf + 1) = "next_bundle_update_check_in_days";
  sub_10000F688(&buf, &v20, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v20);
  v19 = v22;
  v20 = 0;
  if (v22)
  {
    xpc_retain(v22);
  }

  else
  {
    v19 = xpc_null_create();
  }

  (*(*v10 + 16))(v10, "commCenterBundleUpdateCheckSchedule", &v19);
  xpc_release(v19);
  v19 = 0;
  xpc_release(v22);
LABEL_26:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1014A4A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, xpc_object_t a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void CarrierBundleHandler::submitLegacyDesktopHostUpdateMetric_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 104));
  v7 = ServiceMap;
  if (v8 < 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  *buf = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, buf);
  if (!v12)
  {
    v14 = 0;
LABEL_9:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    if (!v14)
    {
      goto LABEL_33;
    }

    goto LABEL_10;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
  if (!v14)
  {
    goto LABEL_33;
  }

LABEL_10:
  v16 = *(a1 + 40);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Submitting metric for older desktop host update mechanism", buf, 2u);
  }

  v31 = 0;
  v17 = xpc_dictionary_create(0, 0, 0);
  v18 = v17;
  if (v17)
  {
    v31 = v17;
  }

  else
  {
    v18 = xpc_null_create();
    v31 = v18;
    if (!v18)
    {
      v19 = xpc_null_create();
      v18 = 0;
      goto LABEL_19;
    }
  }

  if (xpc_get_type(v18) != &_xpc_type_dictionary)
  {
    v19 = xpc_null_create();
LABEL_19:
    v31 = v19;
    goto LABEL_20;
  }

  xpc_retain(v18);
LABEL_20:
  xpc_release(v18);
  v20 = sub_100ECBCE8(a2);
  v29 = xpc_int64_create(v20);
  if (!v29)
  {
    v29 = xpc_null_create();
  }

  *buf = &v31;
  v28 = "bundle_update_check_info_bundle_type";
  sub_10000F688(buf, &v29, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v29);
  v29 = 0;
  if (*(a3 + 23) >= 0)
  {
    v21 = a3;
  }

  else
  {
    v21 = *a3;
  }

  v25 = xpc_string_create(v21);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  *buf = &v31;
  v28 = "bundle_update_check_info_bundle_name_to_check";
  sub_10000F688(buf, &v25, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v25);
  v25 = 0;
  v23 = xpc_BOOL_create(1);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  *buf = &v31;
  v28 = "is_desktop_host_using_legacy_mechanism";
  sub_10000F688(buf, &v23, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v23);
  v22 = v31;
  v23 = 0;
  if (v31)
  {
    xpc_retain(v31);
  }

  else
  {
    v22 = xpc_null_create();
  }

  (*(*v14 + 16))(v14, "commCenterBundleUpdateCheck", &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v31);
LABEL_33:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_1014A4E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 72));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

void sub_1014A4E98(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 0x40000000;
        v7[2] = sub_1014A4FE4;
        v7[3] = &unk_101F40C20;
        v7[4] = v3;
        v8 = *(a1 + 56);
        v9 = *(a1 + 60);
        v12 = 0;
        v13 = 0;
        sub_100004AA0(&v12, (v3 + 8));
        v6 = *(v3 + 24);
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_1014A50FC;
        block[3] = &unk_101F40C78;
        block[5] = v12;
        v11 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        block[4] = v7;
        dispatch_async(v6, block);
        if (v11)
        {
          sub_100004A34(v11);
        }

        if (v13)
        {
          sub_100004A34(v13);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1014A4FE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 40));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = asString();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Received a call back for state of %s", &v4, 0xCu);
  }

  CarrierBundleHandler::submitBundleStateMetric_sync(v2, *(a1 + 44), *(a1 + 40));
}

uint64_t sub_1014A50D0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014A50EC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1014A510C(uint64_t result, uint64_t a2)
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

void sub_1014A5128(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_1014A5138(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return sub_1014A77B4(a1);
}

void sub_1014A518C(uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  operator new();
}

void sub_1014A5850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_object_t a17, uint64_t a18, uint64_t a19, dispatch_object_t a20, dispatch_object_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1002FED80(v27 + 944);
  v31 = *(v27 + 936);
  if (v31)
  {
    sub_100004A34(v31);
  }

  v32 = *(v27 + 920);
  if (v32)
  {
    sub_100004A34(v32);
  }

  if (*(v27 + 904))
  {
    sub_100004A34(*(v27 + 904));
  }

  v33 = *(v27 + 888);
  if (v33)
  {
    sub_100004A34(v33);
  }

  v34 = *(v27 + 872);
  if (v34)
  {
    sub_100004A34(v34);
  }

  sub_1002FED80(v27 + 824);
  sub_1014A7634(v27 + 784);
  sub_1014A76B4(v27 + 744);
  sub_1002FED80(v27 + 704);
  sub_1014A7734(v27 + 664);
  sub_1014A5138(v27 + 584);
  sub_10115F6E4(v27 + 544);
  sub_1014A7834(v27 + 504);
  sub_1002FED80(v27 + 464);
  sub_1002FED80(v30);
  v35 = *(v27 + 408);
  if (v35)
  {
    sub_100004A34(v35);
  }

  ctu::OsLogLogger::~OsLogLogger((v27 + 352));
  v36 = *(v27 + 344);
  if (v36)
  {
    sub_100004A34(v36);
  }

  if (*(v27 + 328) == 1)
  {
    NotifySubscription::~NotifySubscription((v27 + 304));
  }

  NotifySubscription::~NotifySubscription((v27 + 280));

  NotifySubscription::~NotifySubscription((v27 + 248));
  NotifySubscription::~NotifySubscription((v27 + 224));

  NotifySubscription::~NotifySubscription((v27 + 192));
  NotifySubscription::~NotifySubscription((v27 + 168));
  NotifySubscription::~NotifySubscription((v27 + 144));
  NotifySubscription::~NotifySubscription((v27 + 120));
  NotifySubscription::~NotifySubscription((v27 + 96));
  NotifySubscription::~NotifySubscription((v27 + 72));
  NotifySubscription::~NotifySubscription((v27 + 48));
  ctu::OsLogLogger::~OsLogLogger(v29);
  sub_1000C0544(v28);
  SystemObserverInterface::~SystemObserverInterface(v27);
  operator delete();
}

void sub_1014A5ADC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  JUMPOUT(0x1014A5A5CLL);
}

void sub_1014A5AF0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  JUMPOUT(0x1014A5A6CLL);
}

void sub_1014A5B04(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  JUMPOUT(0x1014A5A74);
}

void sub_1014A5B18(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  JUMPOUT(0x1014A5A84);
}

void sub_1014A5B2C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  JUMPOUT(0x1014A5A8CLL);
}

void sub_1014A5B40(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  JUMPOUT(0x1014A5A94);
}

void sub_1014A5B54()
{
  v1 = *(v0 - 160);
  if (v1)
  {
    dispatch_release(v1);
  }

  JUMPOUT(0x1014A5A9CLL);
}

void sub_1014A5B68()
{
  v1 = *(v0 - 152);
  if (v1)
  {
    dispatch_release(v1);
  }

  JUMPOUT(0x1014A5AA4);
}

void sub_1014A5B7C()
{
  v1 = *(v0 - 144);
  if (v1)
  {
    dispatch_release(v1);
  }

  JUMPOUT(0x1014A5AACLL);
}

void sub_1014A5B90()
{
  v1 = *(v0 - 136);
  if (v1)
  {
    dispatch_release(v1);
  }

  JUMPOUT(0x1014A5AB4);
}

void sub_1014A5BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  ctu::OsLogLogger::~OsLogLogger((v22 - 128));
  sub_1000C0544(v21);
  ctu::OsLogContext::~OsLogContext(va);
  JUMPOUT(0x1014A5AC4);
}

void sub_1014A5BD4(uint64_t a1)
{
  *a1 = off_101F40CB8;
  sub_1002FED80(a1 + 944);
  v2 = *(a1 + 936);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 920);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 904);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 888);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 872);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_1002FED80(a1 + 824);
  sub_1014A7634(a1 + 784);
  sub_1014A76B4(a1 + 744);
  sub_1002FED80(a1 + 704);
  sub_1014A7734(a1 + 664);
  sub_1014A5138(a1 + 584);
  sub_10115F6E4(a1 + 544);
  sub_1014A7834(a1 + 504);
  sub_1002FED80(a1 + 464);
  sub_1002FED80(a1 + 416);
  v7 = *(a1 + 408);
  if (v7)
  {
    sub_100004A34(v7);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 352));
  v8 = *(a1 + 344);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (*(a1 + 328) == 1)
  {
    NotifySubscription::~NotifySubscription((a1 + 304));
  }

  NotifySubscription::~NotifySubscription((a1 + 280));

  NotifySubscription::~NotifySubscription((a1 + 248));
  NotifySubscription::~NotifySubscription((a1 + 224));

  NotifySubscription::~NotifySubscription((a1 + 192));
  NotifySubscription::~NotifySubscription((a1 + 168));
  NotifySubscription::~NotifySubscription((a1 + 144));
  NotifySubscription::~NotifySubscription((a1 + 120));
  NotifySubscription::~NotifySubscription((a1 + 96));
  NotifySubscription::~NotifySubscription((a1 + 72));
  NotifySubscription::~NotifySubscription((a1 + 48));
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  SystemObserverInterface::~SystemObserverInterface(a1);
}

void sub_1014A5D60(uint64_t a1)
{
  sub_1014A5BD4(a1);

  operator delete();
}

void sub_1014A5D98(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1014A5E8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 32);
      if (v7)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3321888768;
        block[2] = sub_1014A5F68;
        block[3] = &unk_101F40D18;
        v10 = v7;
        v11 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = v3;
        dispatch_async(*(v7 + 24), block);

        if (v11)
        {
          sub_100004A34(v11);
        }
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1014A5F68(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v2;
  if (v2)
  {
    if ([v2 type] == 30)
    {
      v4 = [v3 info];
      v5 = *(v1 + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Handling event CWFEventTypeKnownNetworkProfileChanged", &v24, 2u);
      }

      if (!v4)
      {
        v22 = *(v1 + 40);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v24) = 0;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Got nil info dictionary when handling CWFEventTypeKnownNetworkProfileChanged", &v24, 2u);
        }

        goto LABEL_30;
      }

      v6 = [*(v1 + 272) currentKnownNetworkProfile];
      v7 = v6;
      if (!v6)
      {
        v23 = *(v1 + 40);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v24) = 0;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Got nil network profile from CWFEventTypeKnownNetworkProfileChanged info dictionary", &v24, 2u);
        }

        goto LABEL_29;
      }

      v8 = [v6 isCaptiveStateDetermined];
      v9 = *(v1 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = CSIBOOLAsString(v8);
        v24 = 136315138;
        v25 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Network profile is captive state determined: %s", &v24, 0xCu);
      }

      if (v8)
      {
        v11 = [v7 isCaptive];
        v12 = [v7 captiveWebsheetLoginDate];

        v13 = *(v1 + 40);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = CSIBOOLAsString(v11);
          v15 = CSIBOOLAsString(v12 != 0);
          v24 = 136315394;
          v25 = v14;
          v26 = 2080;
          v27 = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Network profile is captive: %s, login completed: %s", &v24, 0x16u);
        }

        if (v11)
        {
          if (v12)
          {
            *(v1 + 976) = 0;
            v16 = *(v1 + 968);
            if (v16)
            {
              goto LABEL_28;
            }
          }

          else
          {
            *(v1 + 976) = 1;
            v16 = *(v1 + 968);
            if (v16)
            {
LABEL_28:
              (*(*v16 + 48))(v16, v1 + 976);
            }
          }
        }

        else
        {
          *(v1 + 976) = 0;
          v16 = *(v1 + 968);
          if (v16)
          {
            goto LABEL_28;
          }
        }
      }

LABEL_29:

LABEL_30:
      goto LABEL_31;
    }

    v21 = *(v1 + 40);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24 = 138477827;
      v25 = v3;
      v18 = "Got unregistered CWFEvent %{private}@";
      v19 = v21;
      v20 = 12;
      goto LABEL_20;
    }
  }

  else
  {
    v17 = *(v1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      v18 = "Got nil CWFEvent instance";
      v19 = v17;
      v20 = 2;
LABEL_20:
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v18, &v24, v20);
    }
  }

LABEL_31:
}

uint64_t sub_1014A635C(uint64_t result, uint64_t a2)
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

void sub_1014A6378(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_1014A6388(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014A63A4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1014A63B4(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Got first unlock notification: %d", v6, 8u);
  }

  *(a1 + 736) = a2;
  result = *(a1 + 728);
  if (result)
  {
    return (*(*result + 48))(result, a1 + 736);
  }

  return result;
}

uint64_t sub_1014A6490(uint64_t a1)
{
  result = NotifySubscription::getState((a1 + 304));
  if (v3)
  {
    v4 = result ? 2 : 1;
    if (*(a1 + 576) != v4)
    {
      *(a1 + 576) = v4;
      result = *(a1 + 568);
      if (result)
      {
        v5 = *(*result + 48);

        return v5();
      }
    }
  }

  return result;
}

void sub_1014A6520(uint64_t a1, int a2, char a3)
{
  if (a3)
  {
    if (*(a1 + 816) != a2)
    {
      *(a1 + 816) = a2;
      v3 = *(a1 + 808);
      if (v3)
      {
        v4 = *(*v3 + 48);
        v5 = a1 + 816;
        v6 = *(a1 + 808);

        v4(v6, v5);
      }
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to read thermal pressure level state", v8, 2u);
    }
  }
}

uint64_t sub_1014A65E8(uint64_t a1)
{
  result = sub_10133867C(a1);
  if (*(a1 + 856) != result)
  {
    *(a1 + 856) = result;
    result = *(a1 + 848);
    if (result)
    {
      v3 = *(*result + 48);

      return v3();
    }
  }

  return result;
}

uint64_t sub_1014A6664(uint64_t result, int a2)
{
  if (*(result + 856) != a2)
  {
    *(result + 856) = a2;
    v2 = *(result + 848);
    if (v2)
    {
      return (*(*v2 + 48))(*(result + 848), result + 856);
    }
  }

  return result;
}

uint64_t sub_1014A66AC(uint64_t a1)
{
  v5 = a1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1014AC698;
  v6[3] = &unk_101EA6CB8;
  v6[4] = a1 + 8;
  v6[5] = &v5;
  v7 = objc_retainBlock(v6);
  v2 = *(a1 + 24);
  if (*(a1 + 32))
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1014AC65C;
    v11 = &unk_101E26940;
    v12 = &v14;
    v13 = &v7;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1000589F4;
    v11 = &unk_101E26940;
    v12 = &v14;
    v13 = &v7;
    dispatch_sync(v2, &block);
  }

  v3 = v14;

  return v3 & 1;
}

uint64_t sub_1014A67FC(uint64_t a1)
{
  v5 = a1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1014AC6A8;
  v6[3] = &unk_101EA6CB8;
  v6[4] = a1 + 8;
  v6[5] = &v5;
  v7 = objc_retainBlock(v6);
  v2 = *(a1 + 24);
  if (*(a1 + 32))
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1014AC65C;
    v11 = &unk_101E26940;
    v12 = &v14;
    v13 = &v7;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1000589F4;
    v11 = &unk_101E26940;
    v12 = &v14;
    v13 = &v7;
    dispatch_sync(v2, &block);
  }

  v3 = v14;

  return v3 & 1;
}

uint64_t sub_1014A694C(uint64_t a1)
{
  v5 = a1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1014AC6C0;
  v6[3] = &unk_101EA6CB8;
  v6[4] = a1 + 8;
  v6[5] = &v5;
  v7 = objc_retainBlock(v6);
  v2 = *(a1 + 24);
  if (*(a1 + 32))
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1014AC65C;
    v11 = &unk_101E26940;
    v12 = &v14;
    v13 = &v7;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1000589F4;
    v11 = &unk_101E26940;
    v12 = &v14;
    v13 = &v7;
    dispatch_sync(v2, &block);
  }

  v3 = v14;

  return v3 & 1;
}

void sub_1014A6A9C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1014AC6D8;
  v8[3] = &unk_101F41C10;
  v8[4] = a1 + 8;
  v8[5] = &v7;
  v9 = objc_retainBlock(v8);
  v4 = *(a1 + 24);
  if (*(a1 + 32))
  {
    *(a2 + 32) = 0;
    *&v5 = 0x200000002;
    *(&v5 + 1) = 0x200000002;
    *a2 = v5;
    *(a2 + 16) = v5;
    block = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1014AC750;
    v13 = &unk_101E26940;
    v14 = a2;
    v15 = &v9;
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    *(a2 + 32) = 0;
    *&v6 = 0x200000002;
    *(&v6 + 1) = 0x200000002;
    *a2 = v6;
    *(a2 + 16) = v6;
    block = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1014AC6F8;
    v13 = &unk_101E26940;
    v14 = a2;
    v15 = &v9;
    dispatch_sync(v4, &block);
  }
}

uint64_t sub_1014A6BF0(uint64_t result, int a2, int a3)
{
  v3 = *(result + 496);
  if (v3 != a2 || a3 != 0)
  {
    v7 = result;
    v8 = *(result + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = CSIBOOLAsString(a3);
      v11 = 2080;
      v12 = CSIBOOLAsString(v3 != a2);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Sending the springboard startup event forcefully (%s) or state has changed (%s)", &v9, 0x16u);
    }

    *(v7 + 496) = a2;
    result = *(v7 + 488);
    if (result)
    {
      return (*(*result + 48))(result, v7 + 496);
    }
  }

  return result;
}

void sub_1014A6D10(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 457) != a2)
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315394;
      v4 = asString();
      v5 = 2080;
      v6 = asString();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Internet availability is changing from %s to %s", &v3, 0x16u);
    }
  }
}

void sub_1014A6DE4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 456) != a2)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = asString();
      v6 = 2080;
      v7 = asString();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I WiFi Availability is changing from %s to %s", &v4, 0x16u);
    }

    sub_101338198(a1);
  }
}

uint64_t sub_1014A6EC0(uint64_t **a1, std::string *a2, _DWORD *a3)
{
  *__str = 0u;
  v9 = 0u;
  snprintf(__str, 0x20uLL, "0x%x", *a3);
  sub_10000501C(&__p, __str);
  v5 = sub_10033238C(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_1014A6F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014A6F94(uint64_t a1)
{
  v5 = a1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1014AC834;
  v6[3] = &unk_101ED6280;
  v6[4] = a1 + 8;
  v6[5] = &v5;
  v7 = objc_retainBlock(v6);
  v2 = *(a1 + 24);
  if (*(a1 + 32))
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1014AC880;
    v11 = &unk_101E26940;
    v12 = &v14;
    v13 = &v7;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1014AC844;
    v11 = &unk_101E26940;
    v12 = &v14;
    v13 = &v7;
    dispatch_sync(v2, &block);
  }

  v3 = v14;

  return v3;
}

id sub_1014A70E4(uint64_t a1)
{
  isSubscribed = NotifySubscription::isSubscribed((a1 + 72));
  v3 = *(a1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (isSubscribed)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = CSIBOOLAsString(*(a1 + 536));
    v37 = 136315138;
    v38 = v5;
    v6 = "#I Display on: %s";
    v7 = v3;
    v8 = 12;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    LOWORD(v37) = 0;
    v6 = "#N Could not register for screen blank notification";
    v7 = v3;
    v8 = 2;
  }

  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v37, v8);
LABEL_7:
  v9 = NotifySubscription::isSubscribed((a1 + 280));
  v10 = *(a1 + 40);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = CSIBOOLAsString(*(a1 + 538));
    v37 = 136315138;
    v38 = v12;
    v13 = "#I Coversheet active: %s";
    v14 = v10;
    v15 = 12;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_13;
    }

    LOWORD(v37) = 0;
    v13 = "#N Could not register for coversheet state notification";
    v14 = v10;
    v15 = 2;
  }

  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v37, v15);
LABEL_13:
  v16 = NotifySubscription::isSubscribed((a1 + 224));
  v17 = *(a1 + 40);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (!v18)
    {
      goto LABEL_19;
    }

    v19 = CSIBOOLAsString(*(a1 + 537));
    v37 = 136315138;
    v38 = v19;
    v20 = "#I Display locked: %s";
    v21 = v17;
    v22 = 12;
  }

  else
  {
    if (!v18)
    {
      goto LABEL_19;
    }

    LOWORD(v37) = 0;
    v20 = "#N Could not register for lock status notification";
    v21 = v17;
    v22 = 2;
  }

  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, &v37, v22);
LABEL_19:
  v23 = *(a1 + 40);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = CSIBOOLAsString(*(a1 + 448));
    v37 = 136315138;
    v38 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Battery Saver Mode: %s", &v37, 0xCu);
    v23 = *(a1 + 40);
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v25 = (a1 + 616);
    if (*(a1 + 639) < 0)
    {
      v25 = *v25;
    }

    v37 = 136315138;
    v38 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Wi-Fi MAC Address: %s", &v37, 0xCu);
    v23 = *(a1 + 40);
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v26 = (a1 + 640);
    if (*(a1 + 663) < 0)
    {
      v26 = *v26;
    }

    v37 = 136315138;
    v38 = v26;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Wi-Fi Network Name: %s", &v37, 0xCu);
    v23 = *(a1 + 40);
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v27 = asString();
    v37 = 136315138;
    v38 = v27;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Wi-Fi status: %s", &v37, 0xCu);
    v23 = *(a1 + 40);
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v28 = asString();
    v37 = 136315138;
    v38 = v28;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Internet status: %s", &v37, 0xCu);
    v23 = *(a1 + 40);
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v29 = *(a1 + 696);
    v37 = 67109120;
    LODWORD(v38) = v29;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Starts since boot: %u", &v37, 8u);
    v23 = *(a1 + 40);
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a1 + 736);
    v37 = 67109120;
    LODWORD(v38) = v30;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I First unlock since boot: %d", &v37, 8u);
    v23 = *(a1 + 40);
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v31 = asString();
    v37 = 136315138;
    v38 = v31;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Ringer state: %s", &v37, 0xCu);
    v23 = *(a1 + 40);
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(a1 + 816);
    v37 = 67109120;
    LODWORD(v38) = v32;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Thermal pressure level: %u", &v37, 8u);
  }

  if (sub_1013384F4((a1 + 336)))
  {
    v33 = *(a1 + 40);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = CSIBOOLAsString(*(a1 + 856));
      v37 = 136315138;
      v38 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I In Metro status: %s", &v37, 0xCu);
    }
  }

  sub_100DB6734(a1 + 352);
  result = *(a1 + 216);
  if (result)
  {
    result = [result dumpState];
  }

  v36 = *(a1 + 880);
  if (v36)
  {
    return [*v36 dumpState];
  }

  return result;
}

uint64_t sub_1014A7634(uint64_t a1)
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

uint64_t sub_1014A76B4(uint64_t a1)
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

uint64_t sub_1014A7734(uint64_t a1)
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

uint64_t sub_1014A77B4(uint64_t a1)
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

uint64_t sub_1014A7834(uint64_t a1)
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

void sub_1014A78B8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014A790C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014A794C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1014A7978(ServiceManager::Service *this)
{
  *this = off_101F40ED0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1014A79D4(ServiceManager::Service *this)
{
  *this = off_101F40ED0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}