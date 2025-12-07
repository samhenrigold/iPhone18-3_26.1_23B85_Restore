uint64_t sub_1A8824440(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1A88C9398() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1A88C9398() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

id IMActionDialEnriched.init(dictionary:)(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1A88C8188();

  v3 = [v1 initWithDictionary_];

  return v3;
}

{
  v2 = v1;
  if (*(a1 + 16))
  {
    v4 = sub_1A85F5F40(0x6D754E656E6F6870, 0xEB00000000726562);
    if (v5)
    {
      sub_1A85F1028(*(a1 + 56) + 32 * v4, v15);
      if (swift_dynamicCast())
      {
        v6 = sub_1A88C82A8();

        if (*(a1 + 16) && (v7 = sub_1A85F5F40(0x6B6361626C6C6166, 0xEB000000006C7255), (v8 & 1) != 0) && (sub_1A85F1028(*(a1 + 56) + 32 * v7, v15), (swift_dynamicCast() & 1) != 0))
        {
          v9 = sub_1A88C82A8();
        }

        else
        {
          v9 = 0;
        }

        if (*(a1 + 16) && (v11 = sub_1A85F5F40(0x7463656A627573, 0xE700000000000000), (v12 & 1) != 0))
        {
          sub_1A85F1028(*(a1 + 56) + 32 * v11, v15);

          if (swift_dynamicCast())
          {
            v13 = sub_1A88C82A8();

LABEL_17:
            v14 = [v2 initWithPhoneNumber:v6 fallbackUrl:v9 subject:v13];

            return v14;
          }
        }

        else
        {
        }

        v13 = 0;
        goto LABEL_17;
      }
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1A8824A98()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303B58, &qword_1A88E4F98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E4F70;
  *(inited + 32) = 0x6D754E656E6F6870;
  *(inited + 40) = 0xEB00000000726562;
  v3 = [v1 phoneNumber];
  v4 = sub_1A88C82E8();
  v6 = v5;

  v7 = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 0x6B6361626C6C6166;
  *(inited + 88) = 0xEB000000006C7255;
  v8 = [v1 fallbackUrl];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1A88C82E8();
    v12 = v11;

    v13 = MEMORY[0x1E69E6158];
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v13 = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v10;
  *(inited + 104) = v12;
  *(inited + 120) = v13;
  *(inited + 128) = 0x7463656A627573;
  *(inited + 136) = 0xE700000000000000;
  v14 = [v1 subject];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1A88C82E8();
    v18 = v17;

    v19 = MEMORY[0x1E69E6158];
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v19 = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v16;
  *(inited + 152) = v18;
  *(inited + 168) = v19;
  v20 = sub_1A8738CF0(inited);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB304A50, &qword_1A88E4FA0);
  swift_arrayDestroy();
  v21 = sub_1A8895CC8(v20);

  return v21;
}

id IMActionDialEnriched.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMActionDialEnriched()
{
  result = qword_1EB3072F0;
  if (!qword_1EB3072F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB3072F0);
  }

  return result;
}

unint64_t sub_1A8824E5C(unint64_t result, char a2)
{
  if (a2 & 1 | (result > 2))
  {
    return 3;
  }

  else
  {
    return result;
  }
}

unint64_t sub_1A8824E78(unint64_t result, char a2)
{
  if (a2 & 1 | (result > 5))
  {
    return 6;
  }

  else
  {
    return result;
  }
}

unint64_t sub_1A8824E94(unint64_t result, char a2)
{
  if (a2 & 1 | (result > 4))
  {
    return 5;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1A8824EB0(uint64_t result, char a2)
{
  if (a2)
  {
    return 7;
  }

  if (result > 2)
  {
    if (result <= 5)
    {
      return result;
    }

    if (result == 64)
    {
      return 6;
    }

    return 7;
  }

  if (result > 2)
  {
    return 7;
  }

  return result;
}

uint64_t RemoteIntentFileTransfer.init(dictionaryRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  *v259 = sub_1A88C82E8();
  *&v259[8] = v5;
  sub_1A88C8D88();
  sub_1A880E9FC(v280, a1, v259);
  sub_1A8717360(v280);
  if (*&v259[24])
  {
    v6 = swift_dynamicCast();
    v7 = *&v258[0];
    if (!v6)
    {
      v7 = 0;
    }

    v257 = v7;
    if (v6)
    {
      v8 = *(&v258[0] + 1);
    }

    else
    {
      v8 = 0;
    }

    v256 = v8;
  }

  else
  {
    sub_1A85EF638(v259, &qword_1EB3057B0, &unk_1A88E27B0);
    v257 = 0;
    v256 = 0;
  }

  *v259 = sub_1A88C82E8();
  *&v259[8] = v9;
  sub_1A88C8D88();
  sub_1A880E9FC(v280, a1, v259);
  sub_1A8717360(v280);
  if (*&v259[24])
  {
    v10 = swift_dynamicCast();
    if (v10)
    {
      v11 = *&v258[0];
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = *(&v258[0] + 1);
    }

    else
    {
      v12 = 0;
    }

    v254 = v12;
    v255 = v11;
  }

  else
  {
    sub_1A85EF638(v259, &qword_1EB3057B0, &unk_1A88E27B0);
    v254 = 0;
    v255 = 0;
  }

  *&v258[0] = sub_1A88C82E8();
  *(&v258[0] + 1) = v13;
  sub_1A88C8D88();
  sub_1A880E9FC(v280, a1, v259);
  sub_1A8717360(v280);
  if (!*&v259[24])
  {
    sub_1A85EF638(v259, &qword_1EB3057B0, &unk_1A88E27B0);
LABEL_23:
    v14 = 11;
    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v14 = sub_1A882CC60(*&v258[0]);
  if (v14 == 11)
  {
    goto LABEL_23;
  }

LABEL_24:
  v253 = v14;
  *v259 = sub_1A88C82E8();
  *&v259[8] = v15;
  sub_1A88C8D88();
  sub_1A880E9FC(v280, a1, v259);
  sub_1A8717360(v280);
  if (*&v259[24])
  {
    v16 = swift_dynamicCast();
    v17 = LOBYTE(v258[0]);
    if (!v16)
    {
      v17 = 2;
    }
  }

  else
  {
    sub_1A85EF638(v259, &qword_1EB3057B0, &unk_1A88E27B0);
    v17 = 2;
  }

  v252 = v17;
  *v259 = sub_1A88C82E8();
  *&v259[8] = v18;
  sub_1A88C8D88();
  sub_1A880E9FC(v280, a1, v259);
  sub_1A8717360(v280);
  if (*&v259[24])
  {
    v19 = swift_dynamicCast();
    if (v19)
    {
      v20 = *&v258[0];
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = *(&v258[0] + 1);
    }

    else
    {
      v21 = 0;
    }

    v250 = v21;
    v251 = v20;
  }

  else
  {
    sub_1A85EF638(v259, &qword_1EB3057B0, &unk_1A88E27B0);
    v250 = 0;
    v251 = 0;
  }

  *v259 = sub_1A88C82E8();
  *&v259[8] = v22;
  sub_1A88C8D88();
  sub_1A880E9FC(v280, a1, v259);
  sub_1A8717360(v280);
  if (*&v259[24])
  {
    v23 = swift_dynamicCast();
    if (v23)
    {
      v24 = *&v258[0];
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v25 = *(&v258[0] + 1);
    }

    else
    {
      v25 = 0;
    }

    v248 = v25;
    v249 = v24;
  }

  else
  {
    sub_1A85EF638(v259, &qword_1EB3057B0, &unk_1A88E27B0);
    v248 = 0;
    v249 = 0;
  }

  *v259 = sub_1A88C82E8();
  *&v259[8] = v26;
  sub_1A88C8D88();
  sub_1A880E9FC(v280, a1, v259);
  sub_1A8717360(v280);
  if (*&v259[24])
  {
    v27 = swift_dynamicCast();
    if (v27)
    {
      v28 = *&v258[0];
    }

    else
    {
      v28 = 0;
    }

    if (v27)
    {
      v29 = *(&v258[0] + 1);
    }

    else
    {
      v29 = 0;
    }

    v246 = v29;
    v247 = v28;
  }

  else
  {
    sub_1A85EF638(v259, &qword_1EB3057B0, &unk_1A88E27B0);
    v246 = 0;
    v247 = 0;
  }

  *v259 = sub_1A88C82E8();
  *&v259[8] = v30;
  sub_1A88C8D88();
  sub_1A880E9FC(v280, a1, v259);
  sub_1A8717360(v280);
  if (*&v259[24])
  {
    v31 = swift_dynamicCast();
    if (v31)
    {
      v32 = *&v258[0];
    }

    else
    {
      v32 = 0;
    }

    if (v31)
    {
      v33 = *(&v258[0] + 1);
    }

    else
    {
      v33 = 0;
    }

    v244 = v33;
    v245 = v32;
  }

  else
  {
    sub_1A85EF638(v259, &qword_1EB3057B0, &unk_1A88E27B0);
    v244 = 0;
    v245 = 0;
  }

  *v259 = sub_1A88C82E8();
  *&v259[8] = v34;
  sub_1A88C8D88();
  sub_1A880E9FC(v280, a1, v259);
  sub_1A8717360(v280);
  if (*&v259[24])
  {
    v35 = swift_dynamicCast();
    v36 = *&v258[0];
    if (!v35)
    {
      v36 = 0;
    }

    v243 = v36;
    v37 = v35 ^ 1;
  }

  else
  {
    sub_1A85EF638(v259, &qword_1EB3057B0, &unk_1A88E27B0);
    v243 = 0;
    v37 = 1;
  }

  v242 = v37;
  *v259 = sub_1A88C82E8();
  *&v259[8] = v38;
  sub_1A88C8D88();
  sub_1A880E9FC(v280, a1, v259);
  sub_1A8717360(v280);
  if (*&v259[24])
  {
    v39 = swift_dynamicCast();
    v40 = *&v258[0];
    if (!v39)
    {
      v40 = 0;
    }

    v241 = v40;
    v41 = v39 ^ 1;
  }

  else
  {
    sub_1A85EF638(v259, &qword_1EB3057B0, &unk_1A88E27B0);
    v241 = 0;
    v41 = 1;
  }

  v240 = v41;
  *v259 = sub_1A88C82E8();
  *&v259[8] = v42;
  sub_1A88C8D88();
  sub_1A880E9FC(v280, a1, &v281);
  sub_1A8717360(v280);
  if (v282)
  {
    v43 = swift_dynamicCast();
    v44 = *v259;
    if (!v43)
    {
      v44 = 0;
    }

    v239 = v44;
    v45 = v43 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v281, &qword_1EB3057B0, &unk_1A88E27B0);
    v239 = 0;
    v45 = 1;
  }

  v238 = v45;
  *&v258[0] = sub_1A88C82E8();
  *(&v258[0] + 1) = v46;
  sub_1A88C8D88();
  sub_1A880E9FC(v280, a1, v259);
  sub_1A8717360(v280);
  if (*&v259[24])
  {
    sub_1A870CCE0(&qword_1EB303320, &qword_1A88E4760);
    if (swift_dynamicCast())
    {
      sub_1A8804D4C(*&v258[0], v283);
      v233 = v283[0];
      v234 = v283[1];
      v231 = v283[2];
      v232 = v283[3];
      v229 = v283[4];
      v230 = v283[5];
      v236 = v285;
      v237 = v284;
      v235 = v286;
      goto LABEL_84;
    }
  }

  else
  {
    sub_1A85EF638(v259, &qword_1EB3057B0, &unk_1A88E27B0);
  }

  v236 = 0;
  v237 = 0;
  v235 = 0;
  v233 = xmmword_1A88EA2E0;
  v234 = 0u;
  v231 = 0u;
  v232 = 0u;
  v229 = 0u;
  v230 = 0u;
LABEL_84:
  v280[0] = sub_1A88C82E8();
  v280[1] = v47;
  sub_1A88C8D88();
  sub_1A880E9FC(&v260, a1, v276);
  sub_1A8717360(&v260);
  if (v277)
  {
    sub_1A870CCE0(&qword_1EB303320, &qword_1A88E4760);
    if (swift_dynamicCast())
    {
      sub_1A8893A78(v278, v258);
      memcpy(v259, v258, sizeof(v259));
      nullsub_12();
      memcpy(v280, v259, sizeof(v280));
      goto LABEL_89;
    }
  }

  else
  {
    sub_1A85EF638(v276, &qword_1EB3057B0, &unk_1A88E27B0);
  }

  sub_1A88270B0(v280);
LABEL_89:
  *v259 = sub_1A88C82E8();
  *&v259[8] = v48;
  sub_1A88C8D88();
  sub_1A880E9FC(v276, a1, &v278);
  sub_1A8717360(v276);
  if (v279)
  {
    sub_1A870CCE0(&qword_1EB303320, &qword_1A88E4760);
    if (swift_dynamicCast())
    {
      sub_1A87A3794(v275, &v260);
      v258[12] = v272;
      v258[13] = v273;
      LODWORD(v258[14]) = v274;
      v258[8] = v268;
      v258[9] = v269;
      v258[10] = v270;
      v258[11] = v271;
      v258[4] = v264;
      v258[5] = v265;
      v258[6] = v266;
      v258[7] = v267;
      v258[0] = v260;
      v258[1] = v261;
      v258[2] = v262;
      v258[3] = v263;
      nullsub_12();
      *&v259[208] = v258[13];
      *&v259[224] = v258[14];
      *&v259[128] = v258[8];
      *&v259[144] = v258[9];
      *&v259[176] = v258[11];
      *&v259[192] = v258[12];
      *&v259[160] = v258[10];
      *&v259[64] = v258[4];
      *&v259[80] = v258[5];
      *&v259[96] = v258[6];
      *&v259[112] = v258[7];
      *v259 = v258[0];
      *&v259[16] = v258[1];
      *&v259[32] = v258[2];
      *&v259[48] = v258[3];
      goto LABEL_94;
    }
  }

  else
  {
    sub_1A85EF638(&v278, &qword_1EB3057B0, &unk_1A88E27B0);
  }

  sub_1A88270E8(v259);
LABEL_94:
  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v49;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v50 = swift_dynamicCast();
    if (v50)
    {
      v51 = v276[0];
    }

    else
    {
      v51 = 0.0;
    }

    if (v50)
    {
      v52 = v276[1];
    }

    else
    {
      v52 = 0.0;
    }

    v227 = v52;
    v228 = v51;
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v227 = 0.0;
    v228 = 0.0;
  }

  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v53;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v54 = swift_dynamicCast();
    if (v54)
    {
      v55 = v276[0];
    }

    else
    {
      v55 = 0.0;
    }

    if (v54)
    {
      v56 = v276[1];
    }

    else
    {
      v56 = 0.0;
    }

    v225 = v56;
    v226 = v55;
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v225 = 0.0;
    v226 = 0.0;
  }

  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v57;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v58 = swift_dynamicCast();
    v59 = v276[0];
    if (!v58)
    {
      v59 = 0.0;
    }

    v224 = v59;
    v60 = v58 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v224 = 0.0;
    v60 = 1;
  }

  v223 = v60;
  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v61;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v62 = swift_dynamicCast();
    v63 = v276[0];
    if (!v62)
    {
      v63 = 0.0;
    }

    v222 = v63;
    v64 = v62 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v222 = 0.0;
    v64 = 1;
  }

  v221 = v64;
  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v65;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v66 = swift_dynamicCast();
    v67 = v276[0];
    if (!v66)
    {
      v67 = 0.0;
    }

    v220 = v67;
    v68 = v66 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v220 = 0.0;
    v68 = 1;
  }

  v219 = v68;
  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v69;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v70 = swift_dynamicCast();
    v71 = LOBYTE(v276[0]);
    if (!v70)
    {
      v71 = 2;
    }
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v71 = 2;
  }

  v218 = v71;
  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v72;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v73 = swift_dynamicCast();
    v74 = LOBYTE(v276[0]);
    if (!v73)
    {
      v74 = 2;
    }
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v74 = 2;
  }

  v217 = v74;
  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v75;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v76 = swift_dynamicCast();
    v77 = LOBYTE(v276[0]);
    if (!v76)
    {
      v77 = 2;
    }
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v77 = 2;
  }

  v216 = v77;
  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v78;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v79 = swift_dynamicCast();
    if (v79)
    {
      v80 = v276[0];
    }

    else
    {
      v80 = 0.0;
    }

    if (v79)
    {
      v81 = v276[1];
    }

    else
    {
      v81 = 0.0;
    }

    v214 = v81;
    v215 = v80;
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v214 = 0.0;
    v215 = 0.0;
  }

  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v82;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v83 = swift_dynamicCast();
    if (v83)
    {
      v84 = v276[0];
    }

    else
    {
      v84 = 0.0;
    }

    if (v83)
    {
      v85 = v276[1];
    }

    else
    {
      v85 = 0.0;
    }

    v212 = v85;
    v213 = v84;
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v212 = 0.0;
    v213 = 0.0;
  }

  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v86;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v87 = swift_dynamicCast();
    if (v87)
    {
      v88 = v276[0];
    }

    else
    {
      v88 = 0.0;
    }

    if (v87)
    {
      v89 = v276[1];
    }

    else
    {
      v89 = 0.0;
    }

    v210 = v89;
    v211 = v88;
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v210 = 0.0;
    v211 = 0.0;
  }

  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v90;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v91 = swift_dynamicCast();
    v92 = LOBYTE(v276[0]);
    if (!v91)
    {
      v92 = 2;
    }
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v92 = 2;
  }

  v209 = v92;
  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v93;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v94 = swift_dynamicCast();
    v95 = LOBYTE(v276[0]);
    if (!v94)
    {
      v95 = 2;
    }
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v95 = 2;
  }

  v208 = v95;
  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v96;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v97 = swift_dynamicCast();
    v98 = LOBYTE(v276[0]);
    if (!v97)
    {
      v98 = 2;
    }
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v98 = 2;
  }

  v207 = v98;
  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v99;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v100 = swift_dynamicCast();
    if (v100)
    {
      v101 = *&v276[0];
    }

    else
    {
      v101 = 0;
    }

    v102 = v100 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v101 = 0;
    v102 = 1;
  }

  v206 = sub_1A8824EB0(v101, v102);
  *&v276[0] = sub_1A88C82E8();
  v276[1] = v103;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    if ((swift_dynamicCast() & (*&v276[0] < 4uLL)) != 0)
    {
      v104 = LODWORD(v276[0]);
    }

    else
    {
      v104 = 4;
    }
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v104 = 4;
  }

  v205 = v104;
  *&v276[0] = sub_1A88C82E8();
  v276[1] = v105;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    if ((swift_dynamicCast() & (*&v276[0] < 4uLL)) != 0)
    {
      v106 = LODWORD(v276[0]);
    }

    else
    {
      v106 = 4;
    }
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v106 = 4;
  }

  v204 = v106;
  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v107;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v108 = swift_dynamicCast();
    v109 = LOBYTE(v276[0]);
    if (!v108)
    {
      v109 = 2;
    }
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v109 = 2;
  }

  v203 = v109;
  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v110;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v111 = swift_dynamicCast();
    v112 = LOBYTE(v276[0]);
    if (!v111)
    {
      v112 = 2;
    }
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v112 = 2;
  }

  v202 = v112;
  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v113;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v114 = swift_dynamicCast();
    v115 = LOBYTE(v276[0]);
    if (!v114)
    {
      v115 = 2;
    }
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v115 = 2;
  }

  v201 = v115;
  *&v276[0] = sub_1A88C82E8();
  v276[1] = v116;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (!*(&v261 + 1))
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
LABEL_211:
    v117 = 26;
    goto LABEL_212;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_211;
  }

  v117 = sub_1A882CC74(*&v276[0]);
  if (v117 == 26)
  {
    goto LABEL_211;
  }

LABEL_212:
  v200 = v117;
  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v118;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v119 = swift_dynamicCast();
    if (v119)
    {
      v120 = v276[0];
    }

    else
    {
      v120 = 0.0;
    }

    if (v119)
    {
      v121 = v276[1];
    }

    else
    {
      v121 = 0.0;
    }

    v197 = v121;
    v198 = v120;
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v197 = 0.0;
    v198 = 0.0;
  }

  v122 = sub_1A870CCE0(&unk_1EB3052E0, &qword_1A88EDCD0);
  v199 = &v190;
  v123 = *(*(v122 - 8) + 64);
  MEMORY[0x1EEE9AC00](v122 - 8);
  v125 = &v190 - v124;
  *&v276[0] = sub_1A88C82E8();
  v276[1] = v126;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_1A88C7418();
      v127 = 0;
      goto LABEL_226;
    }
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
  }

  v127 = 1;
LABEL_226:
  v128 = sub_1A88C7478();
  v129 = *(*(v128 - 8) + 56);
  v130 = v129(v125, v127, 1, v128);
  v196 = &v190;
  MEMORY[0x1EEE9AC00](v130);
  v131 = &v190 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v276[0] = sub_1A88C82E8();
  v276[1] = v132;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_1A88C7418();
      v133 = 0;
      goto LABEL_231;
    }
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
  }

  v133 = 1;
LABEL_231:
  v129(v131, v133, 1, v128);
  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v134;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v135 = swift_dynamicCast();
    if (v135)
    {
      v136 = v276[0];
    }

    else
    {
      v136 = 0.0;
    }

    if (v135)
    {
      v137 = v276[1];
    }

    else
    {
      v137 = 0.0;
    }

    v194 = v137;
    v195 = v136;
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v194 = 0.0;
    v195 = 0.0;
  }

  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v138;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v139 = swift_dynamicCast();
    if (v139)
    {
      v140 = v276[0];
    }

    else
    {
      v140 = 0.0;
    }

    if (v139)
    {
      v141 = v276[1];
    }

    else
    {
      v141 = 0.0;
    }

    v192 = v141;
    v193 = v140;
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v192 = 0.0;
    v193 = 0.0;
  }

  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v142;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v143 = swift_dynamicCast();
    if (v143)
    {
      v144 = v276[0];
    }

    else
    {
      v144 = 0.0;
    }

    if (v143)
    {
      v145 = v276[1];
    }

    else
    {
      v145 = 0.0;
    }

    v190 = v145;
    v191 = v144;
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v190 = 0.0;
    v191 = 0.0;
  }

  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v146;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v147 = swift_dynamicCast();
    if (v147)
    {
      v148 = v276[0];
    }

    else
    {
      v148 = 0.0;
    }

    if (v147)
    {
      v149 = v276[1];
    }

    else
    {
      v149 = 0.0;
    }
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v148 = 0.0;
    v149 = 0.0;
  }

  *&v260 = sub_1A88C82E8();
  *(&v260 + 1) = v150;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);
  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    v151 = swift_dynamicCast();
    if (v151)
    {
      v152 = v276[0];
    }

    else
    {
      v152 = 0.0;
    }

    if (v151)
    {
      v153 = v276[1];
    }

    else
    {
      v153 = 0.0;
    }
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v152 = 0.0;
    v153 = 0.0;
  }

  *&v276[0] = sub_1A88C82E8();
  v276[1] = v154;
  sub_1A88C8D88();
  sub_1A880E9FC(v258, a1, &v260);

  sub_1A8717360(v258);
  if (*(&v261 + 1))
  {
    if ((swift_dynamicCast() & (*&v276[0] < 3uLL)) != 0)
    {
      v155 = LOBYTE(v276[0]);
    }

    else
    {
      v155 = 3;
    }
  }

  else
  {
    sub_1A85EF638(&v260, &qword_1EB3057B0, &unk_1A88E27B0);
    v155 = 3;
  }

  v157 = v255;
  v156 = v256;
  *a3 = v257;
  *(a3 + 8) = v156;
  v158 = v254;
  *(a3 + 16) = v157;
  *(a3 + 24) = v158;
  *(a3 + 32) = v253;
  *(a3 + 33) = v252;
  v159 = v250;
  *(a3 + 40) = v251;
  *(a3 + 48) = v159;
  v160 = v248;
  *(a3 + 56) = v249;
  *(a3 + 64) = v160;
  v161 = v246;
  *(a3 + 72) = v247;
  *(a3 + 80) = v161;
  v162 = v244;
  *(a3 + 88) = v245;
  *(a3 + 96) = v162;
  *(a3 + 104) = v243;
  *(a3 + 112) = v242;
  *(a3 + 120) = v241;
  *(a3 + 128) = v240;
  *(a3 + 130) = v239;
  *(a3 + 132) = v238;
  v163 = v234;
  *(a3 + 136) = v233;
  *(a3 + 152) = v163;
  v164 = v232;
  *(a3 + 168) = v231;
  *(a3 + 184) = v164;
  v165 = v230;
  *(a3 + 200) = v229;
  *(a3 + 216) = v165;
  v166 = v236;
  *(a3 + 232) = v237;
  *(a3 + 240) = v166;
  *(a3 + 248) = v235;
  memcpy((a3 + 256), v280, 0x128uLL);
  *(a3 + 776) = *&v259[224];
  v167 = *&v259[208];
  *(a3 + 744) = *&v259[192];
  *(a3 + 760) = v167;
  v168 = *&v259[144];
  *(a3 + 680) = *&v259[128];
  *(a3 + 696) = v168;
  v169 = *&v259[176];
  *(a3 + 712) = *&v259[160];
  *(a3 + 728) = v169;
  v170 = *&v259[80];
  *(a3 + 616) = *&v259[64];
  *(a3 + 632) = v170;
  v171 = *&v259[112];
  *(a3 + 648) = *&v259[96];
  *(a3 + 664) = v171;
  v172 = *&v259[16];
  *(a3 + 552) = *v259;
  *(a3 + 568) = v172;
  v173 = *&v259[48];
  *(a3 + 584) = *&v259[32];
  *(a3 + 600) = v173;
  v174 = v227;
  *(a3 + 784) = v228;
  *(a3 + 792) = v174;
  v175 = v225;
  *(a3 + 800) = v226;
  *(a3 + 808) = v175;
  *(a3 + 816) = v224;
  *(a3 + 824) = v223;
  *(a3 + 832) = v222;
  *(a3 + 840) = v221;
  *(a3 + 848) = v220;
  LOBYTE(v175) = v218;
  *(a3 + 856) = v219;
  *(a3 + 857) = LOBYTE(v175);
  LOBYTE(v175) = v216;
  *(a3 + 858) = v217;
  *(a3 + 859) = LOBYTE(v175);
  v176 = v214;
  *(a3 + 864) = v215;
  *(a3 + 872) = v176;
  v177 = v212;
  *(a3 + 880) = v213;
  *(a3 + 888) = v177;
  v178 = v210;
  *(a3 + 896) = v211;
  *(a3 + 904) = v178;
  LOBYTE(v178) = v208;
  *(a3 + 912) = v209;
  *(a3 + 913) = LOBYTE(v178);
  LOBYTE(v178) = v206;
  *(a3 + 914) = v207;
  *(a3 + 915) = LOBYTE(v178);
  LOBYTE(v178) = v204;
  *(a3 + 916) = v205;
  *(a3 + 917) = LOBYTE(v178);
  LOBYTE(v178) = v202;
  *(a3 + 918) = v203;
  *(a3 + 919) = LOBYTE(v178);
  LOBYTE(v178) = v200;
  *(a3 + 920) = v201;
  *(a3 + 921) = LOBYTE(v178);
  v179 = v197;
  *(a3 + 928) = v198;
  *(a3 + 936) = v179;
  v180 = type metadata accessor for RemoteIntentFileTransfer(0);
  sub_1A8720F5C(v125, a3 + v180[40]);
  result = sub_1A8720F5C(v131, a3 + v180[41]);
  v182 = (a3 + v180[42]);
  v183 = v194;
  *v182 = v195;
  v182[1] = v183;
  v184 = (a3 + v180[43]);
  v185 = v192;
  *v184 = v193;
  v184[1] = v185;
  v186 = (a3 + v180[44]);
  v187 = v190;
  *v186 = v191;
  v186[1] = v187;
  v188 = (a3 + v180[45]);
  *v188 = v148;
  v188[1] = v149;
  v189 = (a3 + v180[46]);
  *v189 = v152;
  v189[1] = v153;
  *(a3 + v180[47]) = v155;
  return result;
}

double sub_1A88270B0(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_1A88EA2E0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  return result;
}

double sub_1A88270E8(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_1A88EA2E0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  return result;
}

uint64_t type metadata accessor for RemoteIntentFileTransfer(uint64_t a1)
{
  result = qword_1EB3073B0;
  if (!qword_1EB3073B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t RemoteIntentFileTransfer.dictionaryRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v230 = MEMORY[0x1E69E7CC8];
  *v223 = sub_1A88C82E8();
  *&v223[8] = v4;
  v5 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v6 = v2[1];
  if (v6)
  {
    v7 = *v3;
    *&v223[24] = v5;
    *v223 = v7;
    *&v223[8] = v6;
    sub_1A85E99B0(v223, v231);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v205 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v231, v233, isUniquelyReferenced_nonNull_native);
    sub_1A8717360(v233);
    v230 = v205;
  }

  else
  {
    sub_1A88BEFF8(v233, v223);
    sub_1A85EF638(v223, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v233);
  }

  *v223 = sub_1A88C82E8();
  *&v223[8] = v9;
  sub_1A88C8D88();
  v10 = v3[3];
  if (v10)
  {
    v11 = v3[2];
    *&v223[24] = v5;
    *v223 = v11;
    *&v223[8] = v10;
    sub_1A85E99B0(v223, v231);

    v12 = swift_isUniquelyReferenced_nonNull_native();
    *&v205 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v231, v233, v12);
    sub_1A8717360(v233);
    v230 = v205;
  }

  else
  {
    sub_1A88BEFF8(v233, v223);
    sub_1A85EF638(v223, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v233);
  }

  *v223 = sub_1A88C82E8();
  *&v223[8] = v13;
  sub_1A88C8D88();
  v14 = *(v3 + 32);
  v15 = MEMORY[0x1E69E6530];
  if (v14 == 11)
  {
    sub_1A88BEFF8(v233, v223);
    sub_1A85EF638(v223, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v233);
  }

  else
  {
    *&v223[24] = MEMORY[0x1E69E6530];
    *v223 = v14 - 1;
    sub_1A85E99B0(v223, v231);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *&v205 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v231, v233, v16);
    sub_1A8717360(v233);
    v230 = v205;
  }

  *v223 = sub_1A88C82E8();
  *&v223[8] = v17;
  sub_1A88C8D88();
  v18 = *(v3 + 33);
  v19 = MEMORY[0x1E69E6370];
  if (v18 == 2)
  {
    sub_1A88BEFF8(v233, v223);
    sub_1A85EF638(v223, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v233);
  }

  else
  {
    *&v223[24] = MEMORY[0x1E69E6370];
    v223[0] = v18 & 1;
    sub_1A85E99B0(v223, v231);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    *&v205 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v231, v233, v20);
    sub_1A8717360(v233);
    v230 = v205;
  }

  *v223 = sub_1A88C82E8();
  *&v223[8] = v21;
  sub_1A88C8D88();
  v22 = v3[6];
  if (v22)
  {
    v23 = v3[5];
    *&v223[24] = v5;
    *v223 = v23;
    *&v223[8] = v22;
    sub_1A85E99B0(v223, v231);

    v24 = swift_isUniquelyReferenced_nonNull_native();
    *&v205 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v231, v233, v24);
    sub_1A8717360(v233);
    v230 = v205;
  }

  else
  {
    sub_1A88BEFF8(v233, v223);
    sub_1A85EF638(v223, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v233);
  }

  *v223 = sub_1A88C82E8();
  *&v223[8] = v25;
  sub_1A88C8D88();
  v26 = v3[8];
  if (v26)
  {
    v27 = v3[7];
    *&v223[24] = v5;
    *v223 = v27;
    *&v223[8] = v26;
    sub_1A85E99B0(v223, v231);

    v28 = swift_isUniquelyReferenced_nonNull_native();
    *&v205 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v231, v233, v28);
    sub_1A8717360(v233);
    v230 = v205;
  }

  else
  {
    sub_1A88BEFF8(v233, v223);
    sub_1A85EF638(v223, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v233);
  }

  *v223 = sub_1A88C82E8();
  *&v223[8] = v29;
  sub_1A88C8D88();
  v30 = v3[10];
  if (v30)
  {
    v31 = v3[9];
    *&v223[24] = v5;
    *v223 = v31;
    *&v223[8] = v30;
    sub_1A85E99B0(v223, v231);

    v32 = swift_isUniquelyReferenced_nonNull_native();
    *&v205 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v231, v233, v32);
    sub_1A8717360(v233);
    v230 = v205;
  }

  else
  {
    sub_1A88BEFF8(v233, v223);
    sub_1A85EF638(v223, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v233);
  }

  *v223 = sub_1A88C82E8();
  *&v223[8] = v33;
  sub_1A88C8D88();
  v34 = v3[12];
  if (v34)
  {
    v35 = v3[11];
    *&v223[24] = v5;
    *v223 = v35;
    *&v223[8] = v34;
    sub_1A85E99B0(v223, v231);

    v36 = swift_isUniquelyReferenced_nonNull_native();
    *&v205 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v231, v233, v36);
    sub_1A8717360(v233);
    v230 = v205;
  }

  else
  {
    sub_1A88BEFF8(v233, v223);
    sub_1A85EF638(v223, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v233);
  }

  *v223 = sub_1A88C82E8();
  *&v223[8] = v37;
  sub_1A88C8D88();
  if (v3[14])
  {
    sub_1A88BEFF8(v233, v223);
    sub_1A85EF638(v223, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v233);
  }

  else
  {
    v38 = v3[13];
    *&v223[24] = v15;
    *v223 = v38;
    sub_1A85E99B0(v223, v231);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    *&v205 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v231, v233, v39);
    sub_1A8717360(v233);
    v230 = v205;
  }

  *v223 = sub_1A88C82E8();
  *&v223[8] = v40;
  sub_1A88C8D88();
  if (v3[16])
  {
    sub_1A88BEFF8(v233, v223);
    sub_1A85EF638(v223, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v233);
  }

  else
  {
    v41 = v3[15];
    *&v223[24] = v15;
    *v223 = v41;
    sub_1A85E99B0(v223, v231);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    *&v205 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v231, v233, v42);
    sub_1A8717360(v233);
    v230 = v205;
  }

  *v233 = sub_1A88C82E8();
  *&v233[8] = v43;
  sub_1A88C8D88();
  if (*(v3 + 132))
  {
    sub_1A88BEFF8(v229, v233);
    sub_1A85EF638(v233, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v229);
  }

  else
  {
    v44 = *(v3 + 65);
    v228 = MEMORY[0x1E69E75F8];
    LOWORD(v227) = v44;
    sub_1A85E99B0(&v227, v233);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    *v223 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v233, v229, v45);
    sub_1A8717360(v229);
    v230 = *v223;
  }

  *v233 = sub_1A88C82E8();
  *&v233[8] = v46;
  v47 = sub_1A88C8D88();
  v49 = v3[18];
  if (v49 == 1)
  {
    sub_1A88BEFF8(v226, v233);
    sub_1A85EF638(v233, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v226);
  }

  else
  {
    v234 = v3[17];
    v235 = v49;
    v50 = *(v3 + 25);
    v51 = *(v3 + 29);
    v240 = *(v3 + 27);
    v241 = v51;
    v242 = *(v3 + 248);
    v52 = *(v3 + 21);
    v236 = *(v3 + 19);
    v237 = v52;
    v238 = *(v3 + 23);
    v239 = v50;
    v53 = sub_1A88041B8(v47, v48);
    v225 = sub_1A870CCE0(&qword_1EB303320, &qword_1A88E4760);
    *&v224 = v53;
    sub_1A85E99B0(&v224, v233);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    *v223 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v233, v226, v54);
    sub_1A8717360(v226);
    v230 = *v223;
  }

  *v233 = sub_1A88C82E8();
  *&v233[8] = v55;
  sub_1A88C8D88();
  memcpy(v223, v3 + 32, sizeof(v223));
  if (sub_1A860ACA0(v223) == 1)
  {
    sub_1A88BEFF8(v222, v233);
    sub_1A85EF638(v233, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v222);
  }

  else
  {
    v56 = memcpy(v233, v223, sizeof(v233));
    v58 = sub_1A88925A8(v56, v57);
    v221 = sub_1A870CCE0(&qword_1EB303320, &qword_1A88E4760);
    *&v220 = v58;
    sub_1A85E99B0(&v220, v231);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    *&v205 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v231, v222, v59);
    sub_1A8717360(v222);
    v230 = v205;
  }

  *&v231[0] = sub_1A88C82E8();
  *(&v231[0] + 1) = v60;
  sub_1A88C8D88();
  v61 = *(v3 + 95);
  v217 = *(v3 + 93);
  v218 = v61;
  v219 = *(v3 + 194);
  v62 = *(v3 + 87);
  v213 = *(v3 + 85);
  v214 = v62;
  v63 = *(v3 + 91);
  v215 = *(v3 + 89);
  v216 = v63;
  v64 = *(v3 + 79);
  v209 = *(v3 + 77);
  v210 = v64;
  v65 = *(v3 + 83);
  v211 = *(v3 + 81);
  v212 = v65;
  v66 = *(v3 + 71);
  v205 = *(v3 + 69);
  v206 = v66;
  v67 = *(v3 + 75);
  v207 = *(v3 + 73);
  v208 = v67;
  v68 = sub_1A860ACA0(&v205);
  if (v68 == 1)
  {
    sub_1A88BEFF8(v204, v231);
    sub_1A85EF638(v231, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v204);
  }

  else
  {
    v231[12] = v217;
    v231[13] = v218;
    v232 = v219;
    v231[8] = v213;
    v231[9] = v214;
    v231[11] = v216;
    v231[10] = v215;
    v231[4] = v209;
    v231[5] = v210;
    v231[6] = v211;
    v231[7] = v212;
    v231[0] = v205;
    v231[1] = v206;
    v231[2] = v207;
    v231[3] = v208;
    v70 = sub_1A87A2A24(v68, v69);
    v203 = sub_1A870CCE0(&qword_1EB303320, &qword_1A88E4760);
    *&v202 = v70;
    sub_1A85E99B0(&v202, v201);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v200 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v201, v204, v71);
    sub_1A8717360(v204);
    v230 = v200;
  }

  *&v202 = sub_1A88C82E8();
  *(&v202 + 1) = v72;
  sub_1A88C8D88();
  v73 = v3[99];
  if (v73)
  {
    v74 = v3[98];
    v203 = v5;
    *&v202 = v74;
    *(&v202 + 1) = v73;
    sub_1A85E99B0(&v202, v201);

    v75 = swift_isUniquelyReferenced_nonNull_native();
    v200 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v201, v204, v75);
    sub_1A8717360(v204);
    v230 = v200;
  }

  else
  {
    sub_1A88BEFF8(v204, &v202);
    sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v204);
  }

  *&v202 = sub_1A88C82E8();
  *(&v202 + 1) = v76;
  sub_1A88C8D88();
  v77 = v3[101];
  if (v77)
  {
    v78 = v3[100];
    v203 = v5;
    *&v202 = v78;
    *(&v202 + 1) = v77;
    sub_1A85E99B0(&v202, v201);

    v79 = swift_isUniquelyReferenced_nonNull_native();
    v200 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v201, v204, v79);
    sub_1A8717360(v204);
    v230 = v200;
  }

  else
  {
    sub_1A88BEFF8(v204, &v202);
    sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v204);
  }

  *&v202 = sub_1A88C82E8();
  *(&v202 + 1) = v80;
  sub_1A88C8D88();
  v81 = MEMORY[0x1E69E7360];
  if (v3[103])
  {
    sub_1A88BEFF8(v204, &v202);
    sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v204);
  }

  else
  {
    v82 = v3[102];
    v203 = MEMORY[0x1E69E7360];
    *&v202 = v82;
    sub_1A85E99B0(&v202, v201);
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v200 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v201, v204, v83);
    sub_1A8717360(v204);
    v230 = v200;
  }

  *&v202 = sub_1A88C82E8();
  *(&v202 + 1) = v84;
  sub_1A88C8D88();
  if (v3[105])
  {
    sub_1A88BEFF8(v204, &v202);
    sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v204);
  }

  else
  {
    v85 = v3[104];
    v203 = v81;
    *&v202 = v85;
    sub_1A85E99B0(&v202, v201);
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v200 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v201, v204, v86);
    sub_1A8717360(v204);
    v230 = v200;
  }

  *&v202 = sub_1A88C82E8();
  *(&v202 + 1) = v87;
  sub_1A88C8D88();
  if (v3[107])
  {
    sub_1A88BEFF8(v204, &v202);
    sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v204);
  }

  else
  {
    v88 = v3[106];
    v203 = v81;
    *&v202 = v88;
    sub_1A85E99B0(&v202, v201);
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v200 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v201, v204, v89);
    sub_1A8717360(v204);
    v230 = v200;
  }

  *&v202 = sub_1A88C82E8();
  *(&v202 + 1) = v90;
  sub_1A88C8D88();
  v91 = *(v3 + 857);
  if (v91 == 2)
  {
    sub_1A88BEFF8(v204, &v202);
    sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v204);
  }

  else
  {
    v203 = v19;
    LOBYTE(v202) = v91 & 1;
    sub_1A85E99B0(&v202, v201);
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v200 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v201, v204, v92);
    sub_1A8717360(v204);
    v230 = v200;
  }

  *&v202 = sub_1A88C82E8();
  *(&v202 + 1) = v93;
  sub_1A88C8D88();
  v94 = *(v3 + 858);
  if (v94 == 2)
  {
    sub_1A88BEFF8(v204, &v202);
    sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v204);
  }

  else
  {
    v203 = v19;
    LOBYTE(v202) = v94 & 1;
    sub_1A85E99B0(&v202, v201);
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v200 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v201, v204, v95);
    sub_1A8717360(v204);
    v230 = v200;
  }

  *&v202 = sub_1A88C82E8();
  *(&v202 + 1) = v96;
  sub_1A88C8D88();
  v97 = *(v3 + 859);
  if (v97 == 2)
  {
    sub_1A88BEFF8(v204, &v202);
    sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v204);
  }

  else
  {
    v203 = v19;
    LOBYTE(v202) = v97 & 1;
    sub_1A85E99B0(&v202, v201);
    v98 = swift_isUniquelyReferenced_nonNull_native();
    v200 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v201, v204, v98);
    sub_1A8717360(v204);
    v230 = v200;
  }

  *&v202 = sub_1A88C82E8();
  *(&v202 + 1) = v99;
  v100 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v101 = v3[109];
  if (v101)
  {
    v102 = v3[108];
    v203 = v100;
    *&v202 = v102;
    *(&v202 + 1) = v101;
    sub_1A85E99B0(&v202, v201);

    v103 = swift_isUniquelyReferenced_nonNull_native();
    v200 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v201, v204, v103);
    sub_1A8717360(v204);
    v230 = v200;
  }

  else
  {
    sub_1A88BEFF8(v204, &v202);
    sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v204);
  }

  *&v202 = sub_1A88C82E8();
  *(&v202 + 1) = v104;
  sub_1A88C8D88();
  v105 = v3[111];
  if (v105)
  {
    v106 = v3[110];
    v203 = v100;
    *&v202 = v106;
    *(&v202 + 1) = v105;
    sub_1A85E99B0(&v202, v201);

    v107 = swift_isUniquelyReferenced_nonNull_native();
    v200 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v201, v204, v107);
    sub_1A8717360(v204);
    v230 = v200;
  }

  else
  {
    sub_1A88BEFF8(v204, &v202);
    sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v204);
  }

  *&v202 = sub_1A88C82E8();
  *(&v202 + 1) = v108;
  sub_1A88C8D88();
  v109 = v3[113];
  if (v109)
  {
    v110 = v3[112];
    v203 = v100;
    *&v202 = v110;
    *(&v202 + 1) = v109;
    sub_1A85E99B0(&v202, v201);

    v111 = swift_isUniquelyReferenced_nonNull_native();
    v200 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v201, v204, v111);
    sub_1A8717360(v204);
    v230 = v200;
  }

  else
  {
    sub_1A88BEFF8(v204, &v202);
    sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v204);
  }

  *&v202 = sub_1A88C82E8();
  *(&v202 + 1) = v112;
  sub_1A88C8D88();
  v113 = *(v3 + 912);
  if (v113 == 2)
  {
    sub_1A88BEFF8(v204, &v202);
    sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v204);
  }

  else
  {
    v203 = v19;
    LOBYTE(v202) = v113 & 1;
    sub_1A85E99B0(&v202, v201);
    v114 = swift_isUniquelyReferenced_nonNull_native();
    v200 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v201, v204, v114);
    sub_1A8717360(v204);
    v230 = v200;
  }

  *&v202 = sub_1A88C82E8();
  *(&v202 + 1) = v115;
  sub_1A88C8D88();
  v116 = *(v3 + 913);
  if (v116 == 2)
  {
    sub_1A88BEFF8(v204, &v202);
    sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v204);
  }

  else
  {
    v203 = v19;
    LOBYTE(v202) = v116 & 1;
    sub_1A85E99B0(&v202, v201);
    v117 = swift_isUniquelyReferenced_nonNull_native();
    v200 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v201, v204, v117);
    sub_1A8717360(v204);
    v230 = v200;
  }

  *&v202 = sub_1A88C82E8();
  *(&v202 + 1) = v118;
  sub_1A88C8D88();
  v119 = *(v3 + 914);
  if (v119 == 2)
  {
    sub_1A88BEFF8(v204, &v202);
    sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v204);
  }

  else
  {
    v203 = v19;
    LOBYTE(v202) = v119 & 1;
    sub_1A85E99B0(&v202, v201);
    v120 = swift_isUniquelyReferenced_nonNull_native();
    v200 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v201, v204, v120);
    sub_1A8717360(v204);
    v230 = v200;
  }

  *&v202 = sub_1A88C82E8();
  *(&v202 + 1) = v121;
  sub_1A88C8D88();
  v122 = *(v3 + 915);
  if (*(v3 + 915) > 3u)
  {
    if (*(v3 + 915) > 5u)
    {
      if (v122 != 6)
      {
        sub_1A88BEFF8(v204, &v202);
        sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
        sub_1A8717360(v204);
        goto LABEL_99;
      }

      v122 = 64;
    }

    else if (v122 == 4)
    {
      v122 = 4;
    }

    else
    {
      v122 = 5;
    }
  }

  else if (*(v3 + 915) > 1u)
  {
    if (v122 == 2)
    {
      v122 = 2;
    }

    else
    {
      v122 = 3;
    }
  }

  else if (*(v3 + 915))
  {
    v122 = 1;
  }

  v203 = v15;
  *&v202 = v122;
  sub_1A85E99B0(&v202, v201);
  v123 = swift_isUniquelyReferenced_nonNull_native();
  v200 = v230;
  v230 = 0x8000000000000000;
  sub_1A87AC424(v201, v204, v123);
  sub_1A8717360(v204);
  v230 = v200;

LABEL_99:
  *&v202 = sub_1A88C82E8();
  *(&v202 + 1) = v124;
  sub_1A88C8D88();
  v125 = *(v3 + 916);
  if (v125 == 4)
  {
    sub_1A88BEFF8(v204, &v202);
    sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v204);
  }

  else
  {
    v203 = v15;
    *&v202 = v125;
    sub_1A85E99B0(&v202, v201);
    v126 = swift_isUniquelyReferenced_nonNull_native();
    v200 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v201, v204, v126);
    sub_1A8717360(v204);
    v230 = v200;
  }

  *&v202 = sub_1A88C82E8();
  *(&v202 + 1) = v127;
  sub_1A88C8D88();
  v128 = *(v3 + 917);
  if (v128 == 4)
  {
    sub_1A88BEFF8(v204, &v202);
    sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v204);
  }

  else
  {
    v203 = v15;
    *&v202 = v128;
    sub_1A85E99B0(&v202, v201);
    v129 = swift_isUniquelyReferenced_nonNull_native();
    v200 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v201, v204, v129);
    sub_1A8717360(v204);
    v230 = v200;
  }

  *&v202 = sub_1A88C82E8();
  *(&v202 + 1) = v130;
  sub_1A88C8D88();
  v131 = *(v3 + 918);
  if (v131 == 2)
  {
    sub_1A88BEFF8(v204, &v202);
    sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v204);
  }

  else
  {
    v203 = v19;
    LOBYTE(v202) = v131 & 1;
    sub_1A85E99B0(&v202, v201);
    v132 = swift_isUniquelyReferenced_nonNull_native();
    v200 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v201, v204, v132);
    sub_1A8717360(v204);
    v230 = v200;
  }

  *&v202 = sub_1A88C82E8();
  *(&v202 + 1) = v133;
  sub_1A88C8D88();
  v134 = *(v3 + 919);
  if (v134 == 2)
  {
    sub_1A88BEFF8(v204, &v202);
    sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v204);
  }

  else
  {
    v203 = v19;
    LOBYTE(v202) = v134 & 1;
    sub_1A85E99B0(&v202, v201);
    v135 = swift_isUniquelyReferenced_nonNull_native();
    v200 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v201, v204, v135);
    sub_1A8717360(v204);
    v230 = v200;
  }

  *&v202 = sub_1A88C82E8();
  *(&v202 + 1) = v136;
  sub_1A88C8D88();
  v137 = *(v3 + 920);
  if (v137 == 2)
  {
    sub_1A88BEFF8(v204, &v202);
    sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v204);
  }

  else
  {
    v203 = v19;
    LOBYTE(v202) = v137 & 1;
    sub_1A85E99B0(&v202, v201);
    v138 = swift_isUniquelyReferenced_nonNull_native();
    v200 = v230;
    v230 = 0x8000000000000000;
    sub_1A87AC424(v201, v204, v138);
    sub_1A8717360(v204);
    v230 = v200;
  }

  *&v202 = sub_1A88C82E8();
  *(&v202 + 1) = v139;
  sub_1A88C8D88();
  v140 = -1;
  switch(*(v3 + 921))
  {
    case 1:
      v140 = 1;
      goto LABEL_141;
    case 2:
      v140 = 3;
      goto LABEL_141;
    case 3:
      v140 = 4;
      goto LABEL_141;
    case 4:
      v140 = 8;
      goto LABEL_141;
    case 5:
      v140 = 9;
      goto LABEL_141;
    case 6:
      v140 = 10;
      goto LABEL_141;
    case 7:
      v140 = 11;
      goto LABEL_141;
    case 8:
      v140 = 12;
      goto LABEL_141;
    case 9:
      v140 = 13;
      goto LABEL_141;
    case 0xA:
      v140 = 14;
      goto LABEL_141;
    case 0xB:
      v140 = 15;
      goto LABEL_141;
    case 0xC:
      v140 = 16;
      goto LABEL_141;
    case 0xD:
      v140 = 17;
      goto LABEL_141;
    case 0xE:
      v140 = 18;
      goto LABEL_141;
    case 0xF:
      v140 = 19;
      goto LABEL_141;
    case 0x10:
      v140 = 20;
      goto LABEL_141;
    case 0x11:
      v140 = 21;
      goto LABEL_141;
    case 0x12:
      v140 = 22;
      goto LABEL_141;
    case 0x13:
      v140 = 23;
      goto LABEL_141;
    case 0x14:
      v140 = 24;
      goto LABEL_141;
    case 0x15:
      v140 = 25;
      goto LABEL_141;
    case 0x16:
      v140 = 26;
      goto LABEL_141;
    case 0x17:
      v140 = 27;
      goto LABEL_141;
    case 0x18:
      v140 = 28;
      goto LABEL_141;
    case 0x19:
      v140 = 29;
      goto LABEL_141;
    case 0x1A:
      sub_1A88BEFF8(v204, &v202);
      sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
      sub_1A8717360(v204);
      goto LABEL_142;
    default:
LABEL_141:
      v203 = v15;
      *&v202 = v140;
      sub_1A85E99B0(&v202, v201);
      v141 = swift_isUniquelyReferenced_nonNull_native();
      v200 = v230;
      v230 = 0x8000000000000000;
      sub_1A87AC424(v201, v204, v141);
      sub_1A8717360(v204);
      v230 = v200;

LABEL_142:
      *&v202 = sub_1A88C82E8();
      *(&v202 + 1) = v142;
      sub_1A88C8D88();
      v143 = v3[117];
      if (v143)
      {
        v144 = v3[116];
        v203 = v100;
        *&v202 = v144;
        *(&v202 + 1) = v143;
        sub_1A85E99B0(&v202, v201);

        v145 = swift_isUniquelyReferenced_nonNull_native();
        v200 = v230;
        v230 = 0x8000000000000000;
        sub_1A87AC424(v201, v204, v145);
        sub_1A8717360(v204);
        v230 = v200;
      }

      else
      {
        sub_1A88BEFF8(v204, &v202);
        sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
        sub_1A8717360(v204);
      }

      *&v202 = sub_1A88C82E8();
      *(&v202 + 1) = v146;
      sub_1A88C8D88();
      v147 = sub_1A870CCE0(&unk_1EB3052E0, &qword_1A88EDCD0);
      v148 = *(*(v147 - 8) + 64);
      MEMORY[0x1EEE9AC00](v147 - 8);
      v150 = &v198 - v149;
      v199 = type metadata accessor for RemoteIntentFileTransfer(0);
      sub_1A8728D80(v3 + *(v199 + 160), v150, &unk_1EB3052E0, &qword_1A88EDCD0);
      v151 = sub_1A88C7478();
      v152 = *(v151 - 8);
      v153 = *(v152 + 48);
      v154 = v153(v150, 1, v151);
      v155 = MEMORY[0x1E69E63B0];
      if (v154 == 1)
      {
        sub_1A85EF638(v150, &unk_1EB3052E0, &qword_1A88EDCD0);
        sub_1A88BEFF8(v204, &v202);
        sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
        sub_1A8717360(v204);
      }

      else
      {
        sub_1A88C7428();
        v203 = v155;
        *&v202 = v156;
        (*(v152 + 8))(v150, v151);
        sub_1A85E99B0(&v202, v201);
        v157 = swift_isUniquelyReferenced_nonNull_native();
        v200 = v230;
        v230 = 0x8000000000000000;
        sub_1A87AC424(v201, v204, v157);
        sub_1A8717360(v204);
        v230 = v200;
      }

      *&v202 = sub_1A88C82E8();
      *(&v202 + 1) = v158;
      v159 = sub_1A88C8D88();
      MEMORY[0x1EEE9AC00](v159);
      v160 = v199;
      sub_1A8728D80(v3 + *(v199 + 164), &v198 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0), &unk_1EB3052E0, &qword_1A88EDCD0);
      if (v153(&v198 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v151) == 1)
      {
        sub_1A85EF638(&v198 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0), &unk_1EB3052E0, &qword_1A88EDCD0);
        sub_1A88BEFF8(v204, &v202);
        sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
        sub_1A8717360(v204);
      }

      else
      {
        sub_1A88C7428();
        v203 = MEMORY[0x1E69E63B0];
        *&v202 = v161;
        (*(v152 + 8))(&v198 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0), v151);
        sub_1A85E99B0(&v202, v201);
        v162 = swift_isUniquelyReferenced_nonNull_native();
        v200 = v230;
        v230 = 0x8000000000000000;
        sub_1A87AC424(v201, v204, v162);
        sub_1A8717360(v204);
        v230 = v200;
      }

      v163 = MEMORY[0x1E69E6530];
      *&v202 = sub_1A88C82E8();
      *(&v202 + 1) = v164;
      v165 = MEMORY[0x1E69E6158];
      sub_1A88C8D88();
      v166 = (v3 + v160[42]);
      v167 = v166[1];
      if (v167)
      {
        v168 = *v166;
        v203 = v165;
        *&v202 = v168;
        *(&v202 + 1) = v167;
        sub_1A85E99B0(&v202, v201);

        v169 = swift_isUniquelyReferenced_nonNull_native();
        v200 = v230;
        v230 = 0x8000000000000000;
        sub_1A87AC424(v201, v204, v169);
        sub_1A8717360(v204);
        v230 = v200;
      }

      else
      {
        sub_1A88BEFF8(v204, &v202);
        sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
        sub_1A8717360(v204);
      }

      *&v202 = sub_1A88C82E8();
      *(&v202 + 1) = v170;
      v171 = MEMORY[0x1E69E6158];
      sub_1A88C8D88();
      v172 = (v3 + v160[43]);
      v173 = v172[1];
      if (v173)
      {
        v174 = *v172;
        v203 = v171;
        *&v202 = v174;
        *(&v202 + 1) = v173;
        sub_1A85E99B0(&v202, v201);

        v175 = swift_isUniquelyReferenced_nonNull_native();
        v200 = v230;
        v230 = 0x8000000000000000;
        sub_1A87AC424(v201, v204, v175);
        sub_1A8717360(v204);
        v230 = v200;
      }

      else
      {
        sub_1A88BEFF8(v204, &v202);
        sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
        sub_1A8717360(v204);
      }

      *&v202 = sub_1A88C82E8();
      *(&v202 + 1) = v176;
      v177 = MEMORY[0x1E69E6158];
      sub_1A88C8D88();
      v178 = (v3 + v160[44]);
      v179 = v178[1];
      if (v179)
      {
        v180 = *v178;
        v203 = v177;
        *&v202 = v180;
        *(&v202 + 1) = v179;
        sub_1A85E99B0(&v202, v201);

        v181 = swift_isUniquelyReferenced_nonNull_native();
        v200 = v230;
        v230 = 0x8000000000000000;
        sub_1A87AC424(v201, v204, v181);
        sub_1A8717360(v204);
        v230 = v200;
      }

      else
      {
        sub_1A88BEFF8(v204, &v202);
        sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
        sub_1A8717360(v204);
      }

      *&v202 = sub_1A88C82E8();
      *(&v202 + 1) = v182;
      v183 = MEMORY[0x1E69E6158];
      sub_1A88C8D88();
      v184 = (v3 + v160[45]);
      v185 = v184[1];
      if (v185)
      {
        v186 = *v184;
        v203 = v183;
        *&v202 = v186;
        *(&v202 + 1) = v185;
        sub_1A85E99B0(&v202, v201);

        v187 = swift_isUniquelyReferenced_nonNull_native();
        v200 = v230;
        v230 = 0x8000000000000000;
        sub_1A87AC424(v201, v204, v187);
        sub_1A8717360(v204);
        v230 = v200;
      }

      else
      {
        sub_1A88BEFF8(v204, &v202);
        sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
        sub_1A8717360(v204);
      }

      *&v202 = sub_1A88C82E8();
      *(&v202 + 1) = v188;
      v189 = MEMORY[0x1E69E6158];
      sub_1A88C8D88();
      v190 = (v3 + v160[46]);
      v191 = v190[1];
      if (v191)
      {
        v192 = *v190;
        v203 = v189;
        *&v202 = v192;
        *(&v202 + 1) = v191;
        sub_1A85E99B0(&v202, v201);

        v193 = swift_isUniquelyReferenced_nonNull_native();
        v200 = v230;
        v230 = 0x8000000000000000;
        sub_1A87AC424(v201, v204, v193);
        sub_1A8717360(v204);
        v230 = v200;
      }

      else
      {
        sub_1A88BEFF8(v204, &v202);
        sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
        sub_1A8717360(v204);
      }

      *&v202 = sub_1A88C82E8();
      *(&v202 + 1) = v194;
      sub_1A88C8D88();
      v195 = *(v3 + v160[47]);
      if (v195 == 3)
      {
        sub_1A88BEFF8(v204, &v202);
        sub_1A85EF638(&v202, &qword_1EB3057B0, &unk_1A88E27B0);
        sub_1A8717360(v204);
      }

      else
      {
        v203 = v163;
        *&v202 = v195;
        sub_1A85E99B0(&v202, v201);
        v196 = swift_isUniquelyReferenced_nonNull_native();
        v200 = v230;
        v230 = 0x8000000000000000;
        sub_1A87AC424(v201, v204, v196);
        sub_1A8717360(v204);
        v230 = v200;
      }

      return v230;
  }
}

uint64_t sub_1A8829970(char a1)
{
  result = 1684632935;
  switch(a1)
  {
    case 1:
      result = 0x476567617373656DLL;
      break;
    case 2:
    case 38:
      result = 0x726566736E617274;
      break;
    case 3:
      result = 0x696D6F636E497369;
      break;
    case 4:
      result = 0x656D616E656C6966;
      break;
    case 5:
      result = 0x65707954656D696DLL;
      break;
    case 6:
      v3 = 1416197237;
      goto LABEL_30;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x7461657243736668;
      break;
    case 9:
      v3 = 1416849000;
LABEL_30:
      result = v3 | 0x65707900000000;
      break;
    case 10:
      result = 0x7367616C46736668;
      break;
    case 11:
    case 33:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x5572656B63697473;
      break;
    case 13:
      result = 0x7475626972747461;
      break;
    case 14:
      result = 0x726550726568746FLL;
      break;
    case 15:
      result = 0x49746E756F636361;
      break;
    case 16:
      result = 0x42746E6572727563;
      break;
    case 17:
      result = 0x7479426C61746F74;
      break;
    case 18:
      result = 0xD000000000000013;
      break;
    case 19:
    case 32:
      result = 0xD000000000000015;
      break;
    case 20:
      result = 0x6469567875417369;
      break;
    case 21:
      result = 0x6E65657263537369;
      break;
    case 22:
    case 30:
      result = 0xD000000000000016;
      break;
    case 23:
      result = 0xD000000000000023;
      break;
    case 24:
      result = 0xD000000000000024;
      break;
    case 25:
      result = 0x616D497875417369;
      break;
    case 26:
      result = 0x656B636974537369;
      break;
    case 27:
      result = 0x6174744165646968;
      break;
    case 28:
      result = 0x7453636E79536B63;
      break;
    case 29:
      result = 0xD000000000000013;
      break;
    case 31:
      result = 0x7463657269447369;
      break;
    case 34:
      result = 0x616552726F727265;
      break;
    case 35:
      result = 0xD000000000000010;
      break;
    case 36:
      result = 0x7461447472617473;
      break;
    case 37:
      result = 0x4464657461657263;
      break;
    case 39:
      result = 0x4C52556C61636F6CLL;
      break;
    case 40:
      result = 0x7461506C61636F6CLL;
      break;
    case 41:
      result = 0xD00000000000001CLL;
      break;
    case 42:
      result = 0x54786F62646E6173;
      break;
    case 43:
      result = 0x6552657461647075;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A8829E5C()
{
  v1 = *v0;
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](v1 - 1);
  return sub_1A88C9578();
}

uint64_t sub_1A8829ED4(uint64_t a1)
{
  v2 = *v1;
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](v2 - 1);
  return sub_1A88C9578();
}

uint64_t sub_1A8829F18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A882CC60(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A882A188()
{
  v1 = *v0;
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](qword_1A88F2D68[v1]);
  return sub_1A88C9578();
}

uint64_t sub_1A882A210(uint64_t a1)
{
  v2 = *v1;
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](qword_1A88F2D68[v2]);
  return sub_1A88C9578();
}

uint64_t sub_1A882A25C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A882DD58(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A882A374()
{
  v1 = *v0;
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](qword_1A88F2DA0[v1]);
  return sub_1A88C9578();
}

uint64_t sub_1A882A3FC(uint64_t a1)
{
  v2 = *v1;
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](qword_1A88F2DA0[v2]);
  return sub_1A88C9578();
}

uint64_t sub_1A882A448@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A882CC74(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A882A5F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A882DDB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A882A628(uint64_t a1)
{
  v2 = sub_1A882CC98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A882A664(uint64_t a1)
{
  v2 = sub_1A882CC98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteIntentFileTransfer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB3072F8, &qword_1A88F24A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A882CC98();
  sub_1A88C95C8();
  v64[0] = 0;
  sub_1A88C91C8();
  if (!v2)
  {
    v64[0] = 1;
    sub_1A88C91C8();
    v64[0] = *(v3 + 32);
    v61[0] = 2;
    sub_1A882CCEC();
    sub_1A88C9228();
    v64[0] = 3;
    sub_1A88C91D8();
    v64[0] = 4;
    sub_1A88C91C8();
    v64[0] = 5;
    sub_1A88C91C8();
    v64[0] = 6;
    sub_1A88C91C8();
    v64[0] = 7;
    sub_1A88C91C8();
    v64[0] = 8;
    sub_1A88C9208();
    v64[0] = 9;
    sub_1A88C9208();
    v75[0] = 10;
    sub_1A88C9258();
    v73[4] = *(v3 + 200);
    v73[5] = *(v3 + 216);
    v73[6] = *(v3 + 232);
    v74 = *(v3 + 248);
    v73[0] = *(v3 + 136);
    v73[1] = *(v3 + 152);
    v73[2] = *(v3 + 168);
    v73[3] = *(v3 + 184);
    v69 = *(v3 + 200);
    v70 = *(v3 + 216);
    v71 = *(v3 + 232);
    v72 = *(v3 + 248);
    v65 = *(v3 + 136);
    v66 = *(v3 + 152);
    v67 = *(v3 + 168);
    v68 = *(v3 + 184);
    v64[303] = 11;
    sub_1A8728D80(v73, v64, &qword_1EB307310, &qword_1A88F24B0);
    sub_1A882CD40();
    sub_1A88C9228();
    v62[4] = v69;
    v62[5] = v70;
    v62[6] = v71;
    v63 = v72;
    v62[0] = v65;
    v62[1] = v66;
    v62[2] = v67;
    v62[3] = v68;
    sub_1A85EF638(v62, &qword_1EB307310, &qword_1A88F24B0);
    memcpy(v64, (v3 + 256), 0x128uLL);
    memcpy(v61, (v3 + 256), sizeof(v61));
    v60[303] = 12;
    sub_1A8728D80(v64, v60, &qword_1EB307320, &qword_1A88F24B8);
    sub_1A882CD94();
    sub_1A88C9228();
    memcpy(v60, v61, 0x128uLL);
    sub_1A85EF638(v60, &qword_1EB307320, &qword_1A88F24B8);
    v10 = *(v3 + 728);
    v11 = *(v3 + 760);
    v57 = *(v3 + 744);
    v58 = v11;
    v12 = *(v3 + 664);
    v13 = *(v3 + 696);
    v53 = *(v3 + 680);
    v54 = v13;
    v14 = *(v3 + 696);
    v15 = *(v3 + 728);
    v55 = *(v3 + 712);
    v56 = v15;
    v16 = *(v3 + 600);
    v17 = *(v3 + 632);
    v49 = *(v3 + 616);
    v50 = v17;
    v18 = *(v3 + 632);
    v19 = *(v3 + 664);
    v51 = *(v3 + 648);
    v52 = v19;
    v20 = *(v3 + 568);
    v46[0] = *(v3 + 552);
    v46[1] = v20;
    v21 = *(v3 + 600);
    v23 = *(v3 + 552);
    v22 = *(v3 + 568);
    v47 = *(v3 + 584);
    v48 = v21;
    v24 = *(v3 + 760);
    v43 = v57;
    v44 = v24;
    v39 = v53;
    v40 = v14;
    v41 = v55;
    v42 = v10;
    v35 = v49;
    v36 = v18;
    v37 = v51;
    v38 = v12;
    v31 = v23;
    v32 = v22;
    v59 = *(v3 + 776);
    v45 = *(v3 + 776);
    v33 = v47;
    v34 = v16;
    v30 = 13;
    sub_1A8728D80(v46, v28, &qword_1EB307330, &qword_1A88F24C0);
    sub_1A882CDE8();
    sub_1A88C9228();
    v28[12] = v43;
    v28[13] = v44;
    v29 = v45;
    v28[8] = v39;
    v28[9] = v40;
    v28[10] = v41;
    v28[11] = v42;
    v28[4] = v35;
    v28[5] = v36;
    v28[6] = v37;
    v28[7] = v38;
    v28[0] = v31;
    v28[1] = v32;
    v28[2] = v33;
    v28[3] = v34;
    sub_1A85EF638(v28, &qword_1EB307330, &qword_1A88F24C0);
    v27 = 14;
    sub_1A88C91C8();
    v27 = 15;
    sub_1A88C91C8();
    v27 = 16;
    sub_1A88C9248();
    v27 = 17;
    sub_1A88C9248();
    v27 = 18;
    sub_1A88C9248();
    v27 = 19;
    sub_1A88C91D8();
    v27 = 20;
    sub_1A88C91D8();
    v27 = 21;
    sub_1A88C91D8();
    v27 = 22;
    sub_1A88C91C8();
    v27 = 23;
    sub_1A88C91C8();
    v27 = 24;
    sub_1A88C91C8();
    v27 = 25;
    sub_1A88C91D8();
    v27 = 26;
    sub_1A88C91D8();
    v27 = 27;
    sub_1A88C91D8();
    v27 = *(v3 + 915);
    v26 = 28;
    sub_1A882CE3C();
    sub_1A88C9228();
    v27 = *(v3 + 916);
    v26 = 29;
    sub_1A882CE90();
    sub_1A88C9228();
    v27 = *(v3 + 917);
    v26 = 30;
    sub_1A87A36EC();
    sub_1A88C9228();
    v27 = 31;
    sub_1A88C91D8();
    v27 = 32;
    sub_1A88C91D8();
    v27 = 33;
    sub_1A88C91D8();
    v27 = *(v3 + 921);
    v26 = 34;
    sub_1A882CEE4();
    sub_1A88C9228();
    v27 = 35;
    sub_1A88C91C8();
    v76 = type metadata accessor for RemoteIntentFileTransfer(0);
    v27 = 36;
    sub_1A88C7478();
    sub_1A8720F18(&qword_1EB303500, MEMORY[0x1EEE78878]);
    sub_1A88C9228();
    v27 = 37;
    sub_1A88C9228();
    v27 = 38;
    sub_1A88C91C8();
    v27 = 39;
    sub_1A88C91C8();
    v27 = 40;
    sub_1A88C91C8();
    v27 = 41;
    sub_1A88C91C8();
    v27 = 42;
    sub_1A88C91C8();
    v27 = *(v3 + *(v76 + 188));
    v26 = 43;
    sub_1A882CF38();
    sub_1A88C9228();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RemoteIntentFileTransfer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a2;
  v171 = sub_1A870CCE0(&qword_1EB307360, &qword_1A88F24C8);
  v4 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v6 = &v159[-v5];
  v7 = type metadata accessor for RemoteIntentFileTransfer(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v159[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a1[3];
  v201 = a1;
  sub_1A870C278(a1, v10);
  sub_1A882CC98();
  v170 = v6;
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(v201);
  }

  v167 = v7;
  v168 = v9;
  LOBYTE(v200[0]) = 0;
  v11 = sub_1A88C9058();
  v13 = v168;
  *v168 = v11;
  *(v13 + 1) = v14;
  LOBYTE(v200[0]) = 1;
  *(v13 + 2) = sub_1A88C9058();
  *(v13 + 3) = v15;
  LOBYTE(v175) = 2;
  sub_1A882CF8C();
  sub_1A88C90B8();
  v13[32] = v200[0];
  LOBYTE(v200[0]) = 3;
  v13[33] = sub_1A88C9068();
  LOBYTE(v200[0]) = 4;
  *(v13 + 5) = sub_1A88C9058();
  *(v13 + 6) = v28;
  LOBYTE(v200[0]) = 5;
  *(v13 + 7) = sub_1A88C9058();
  *(v13 + 8) = v29;
  LOBYTE(v200[0]) = 6;
  *(v13 + 9) = sub_1A88C9058();
  *(v13 + 10) = v30;
  LOBYTE(v200[0]) = 7;
  v31 = sub_1A88C9058();
  v32 = v168;
  *(v168 + 11) = v31;
  *(v32 + 12) = v33;
  LOBYTE(v200[0]) = 8;
  v34 = sub_1A88C9098();
  v166 = 0;
  v36 = v168;
  *(v168 + 13) = v34;
  v36[112] = v35 & 1;
  LOBYTE(v200[0]) = 9;
  v37 = v166;
  v38 = sub_1A88C9098();
  v166 = v37;
  if (v37 || (v40 = v168, *(v168 + 15) = v38, v40[128] = v39 & 1, LOBYTE(v200[0]) = 10, v41 = v166, v42 = sub_1A88C90E8(), (v166 = v41) != 0) || (v43 = v168, *(v168 + 65) = v42, v43[132] = BYTE2(v42) & 1, v191 = 11, sub_1A882CFE0(), v44 = v166, sub_1A88C90B8(), (v166 = v44) != 0))
  {
    (*(v4 + 8))(v170, v171);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v160 = 0;
    v161 = 0;
    LODWORD(v164) = 0;
    LODWORD(v163) = 0;
    LODWORD(v171) = 0;
    LODWORD(v170) = 0;
    LODWORD(v169) = 0;
    LODWORD(v165) = 0;
    *v162 = 1;
LABEL_4:
    sub_1A85F1084(v201);
    v16 = v168;

    if (v162[0])
    {
    }

    v27 = v167;
    if (v45)
    {
      v17 = *(v16 + 216);
      v200[4] = *(v16 + 200);
      v200[5] = v17;
      v200[6] = *(v16 + 232);
      LOBYTE(v200[7]) = v16[248];
      v18 = *(v16 + 152);
      v200[0] = *(v16 + 136);
      v200[1] = v18;
      v19 = *(v16 + 184);
      v200[2] = *(v16 + 168);
      v200[3] = v19;
      result = sub_1A85EF638(v200, &qword_1EB307310, &qword_1A88F24B0);
      if (v46)
      {
        goto LABEL_21;
      }
    }

    else if (v46)
    {
LABEL_21:
      memcpy(v200, v16 + 256, 0x128uLL);
      result = sub_1A85EF638(v200, &qword_1EB307320, &qword_1A88F24B8);
      if ((v47 & 1) == 0)
      {
LABEL_22:
        if (v161)
        {
LABEL_23:

          if ((v160 & 1) == 0)
          {
LABEL_24:
            if (v164)
            {
LABEL_25:

              if ((v163 & 1) == 0)
              {
LABEL_26:
                if (*&v162[4])
                {
LABEL_27:

                  if ((v171 & 1) == 0)
                  {
LABEL_28:
                    if (v170)
                    {
LABEL_29:
                      result = sub_1A85EF638(&v16[v27[40]], &unk_1EB3052E0, &qword_1A88EDCD0);
                      if ((v169 & 1) == 0)
                      {
LABEL_30:
                        if (!v165)
                        {
                          return result;
                        }
                      }

LABEL_15:
                      result = sub_1A85EF638(&v16[v27[41]], &unk_1EB3052E0, &qword_1A88EDCD0);
                      if ((v165 & 1) == 0)
                      {
                        return result;
                      }
                    }

LABEL_14:
                    if (!v169)
                    {
                      goto LABEL_30;
                    }

                    goto LABEL_15;
                  }

LABEL_13:

                  if (v170)
                  {
                    goto LABEL_29;
                  }

                  goto LABEL_14;
                }

LABEL_12:
                if (!v171)
                {
                  goto LABEL_28;
                }

                goto LABEL_13;
              }

LABEL_11:

              if (v162[4])
              {
                goto LABEL_27;
              }

              goto LABEL_12;
            }

LABEL_10:
            if (!v163)
            {
              goto LABEL_26;
            }

            goto LABEL_11;
          }

LABEL_9:

          if (v164)
          {
            goto LABEL_25;
          }

          goto LABEL_10;
        }

LABEL_8:
        if (!v160)
        {
          goto LABEL_24;
        }

        goto LABEL_9;
      }

LABEL_7:
      LODWORD(v200[14]) = *(v16 + 194);
      v20 = *(v16 + 760);
      v200[12] = *(v16 + 744);
      v200[13] = v20;
      v21 = *(v16 + 696);
      v200[8] = *(v16 + 680);
      v200[9] = v21;
      v22 = *(v16 + 728);
      v200[10] = *(v16 + 712);
      v200[11] = v22;
      v23 = *(v16 + 632);
      v200[4] = *(v16 + 616);
      v200[5] = v23;
      v24 = *(v16 + 664);
      v200[6] = *(v16 + 648);
      v200[7] = v24;
      v25 = *(v16 + 568);
      v200[0] = *(v16 + 552);
      v200[1] = v25;
      v26 = *(v16 + 600);
      v200[2] = *(v16 + 584);
      v200[3] = v26;
      result = sub_1A85EF638(v200, &qword_1EB307330, &qword_1A88F24C0);
      if (v161)
      {
        goto LABEL_23;
      }

      goto LABEL_8;
    }

    if (!v47)
    {
      goto LABEL_22;
    }

    goto LABEL_7;
  }

  v48 = v197;
  v49 = v168;
  *(v168 + 200) = v196;
  *(v49 + 216) = v48;
  *(v49 + 232) = v198;
  v50 = v193;
  *(v49 + 136) = v192;
  *(v49 + 152) = v50;
  v51 = v195;
  *(v49 + 168) = v194;
  v49[248] = v199;
  *(v49 + 184) = v51;
  v190 = 12;
  sub_1A882D034();
  v52 = v166;
  sub_1A88C90B8();
  v166 = v52;
  if (v52)
  {
    (*(v4 + 8))(v170, v171);
    v46 = 0;
    v47 = 0;
    v160 = 0;
    v161 = 0;
    LODWORD(v164) = 0;
    LODWORD(v163) = 0;
    LODWORD(v171) = 0;
    LODWORD(v170) = 0;
    LODWORD(v169) = 0;
    LODWORD(v165) = 0;
    *v162 = 1;
    v45 = 1;
    goto LABEL_4;
  }

  memcpy(v168 + 256, v200, 0x128uLL);
  v174 = 13;
  sub_1A882D088();
  v53 = v166;
  sub_1A88C90B8();
  v166 = v53;
  if (v53)
  {
    (*(v4 + 8))(v170, v171);
    v47 = 0;
    v160 = 0;
    v161 = 0;
    LODWORD(v164) = 0;
    LODWORD(v163) = 0;
    LODWORD(v171) = 0;
    LODWORD(v170) = 0;
    LODWORD(v169) = 0;
    LODWORD(v165) = 0;
    *v162 = 1;
    v45 = 1;
    v46 = 1;
    goto LABEL_4;
  }

  v54 = v168;
  v55 = v168 + 552;
  *(v168 + 194) = v189;
  v56 = v188;
  *(v54 + 744) = v187;
  *(v54 + 760) = v56;
  v57 = v184;
  *(v54 + 680) = v183;
  *(v54 + 696) = v57;
  v58 = v186;
  *(v54 + 712) = v185;
  *(v54 + 728) = v58;
  v59 = v180;
  *(v54 + 616) = v179;
  *(v54 + 632) = v59;
  v60 = v182;
  *(v54 + 648) = v181;
  *(v54 + 664) = v60;
  v61 = v176;
  *(v54 + 552) = v175;
  *(v54 + 568) = v61;
  v62 = v178;
  *(v54 + 584) = v177;
  *(v54 + 600) = v62;
  v173 = 14;
  v63 = v166;
  v64 = sub_1A88C9058();
  v166 = v63;
  if (v63)
  {
    (*(v4 + 8))(v170, v171);
    v160 = 0;
    v161 = 0;
    LODWORD(v164) = 0;
    LODWORD(v163) = 0;
    LODWORD(v171) = 0;
    LODWORD(v170) = 0;
    LODWORD(v169) = 0;
    LODWORD(v165) = 0;
    *v162 = 1;
    v45 = 1;
    v46 = 1;
    v47 = 1;
    goto LABEL_4;
  }

  v66 = v168;
  *(v168 + 98) = v64;
  *(v66 + 99) = v65;
  v173 = 15;
  v67 = v166;
  v68 = sub_1A88C9058();
  v166 = v67;
  if (v67)
  {
    (*(v4 + 8))(v170, v171);
    LODWORD(v164) = 0;
    LODWORD(v163) = 0;
    LODWORD(v171) = 0;
    LODWORD(v170) = 0;
    LODWORD(v169) = 0;
    LODWORD(v165) = 0;
    *v162 = 1;
    v45 = 1;
    v46 = 1;
    v47 = 1;
    v160 = 0;
    v161 = 1;
    goto LABEL_4;
  }

  v70 = v168;
  *(v168 + 100) = v68;
  *(v70 + 101) = v69;
  v173 = 16;
  v71 = v166;
  v72 = sub_1A88C90D8();
  v166 = v71;
  if (v71 || (v74 = v168, *(v168 + 102) = v72, v74[824] = v73 & 1, v173 = 17, v75 = v166, v76 = sub_1A88C90D8(), (v166 = v75) != 0) || (v78 = v168, *(v168 + 104) = v76, v78[840] = v77 & 1, v173 = 18, v79 = v166, v80 = sub_1A88C90D8(), (v166 = v79) != 0) || (v82 = v168, *(v168 + 106) = v80, v82[856] = v81 & 1, v173 = 19, v83 = v166, v84 = sub_1A88C9068(), (v166 = v83) != 0) || (v168[857] = v84, v173 = 20, v85 = v166, v86 = sub_1A88C9068(), (v166 = v85) != 0) || (v168[858] = v86, v173 = 21, v87 = v166, v88 = sub_1A88C9068(), (v166 = v87) != 0) || (v168[859] = v88, v173 = 22, v89 = v166, v90 = sub_1A88C9058(), (v166 = v89) != 0))
  {
    (*(v4 + 8))(v170, v171);
    LODWORD(v164) = 0;
    LODWORD(v163) = 0;
    LODWORD(v171) = 0;
    LODWORD(v170) = 0;
    LODWORD(v169) = 0;
    LODWORD(v165) = 0;
    *v162 = 1;
    v45 = 1;
    v46 = 1;
    v47 = 1;
    v160 = 1;
    v161 = 1;
    goto LABEL_4;
  }

  v92 = v168;
  *(v168 + 108) = v90;
  *(v92 + 109) = v91;
  v173 = 23;
  v93 = v166;
  v94 = sub_1A88C9058();
  v166 = v93;
  if (v93)
  {
    (*(v4 + 8))(v170, v171);
    LODWORD(v163) = 0;
    LODWORD(v171) = 0;
    LODWORD(v170) = 0;
    LODWORD(v169) = 0;
    LODWORD(v165) = 0;
    *v162 = 1;
    v45 = 1;
    v46 = 1;
    v47 = 1;
    v160 = 1;
    v161 = 1;
    LODWORD(v164) = 1;
    goto LABEL_4;
  }

  v96 = v168;
  *(v168 + 110) = v94;
  *(v96 + 111) = v95;
  v173 = 24;
  v97 = v166;
  v98 = sub_1A88C9058();
  v166 = v97;
  if (v97)
  {
    (*(v4 + 8))(v170, v171);
    LODWORD(v171) = 0;
    LODWORD(v170) = 0;
    LODWORD(v169) = 0;
    LODWORD(v165) = 0;
    *v162 = 1;
    v45 = 1;
    v46 = 1;
    v47 = 1;
    v160 = 1;
    v161 = 1;
    LODWORD(v164) = 1;
    LODWORD(v163) = 1;
    goto LABEL_4;
  }

  v100 = v168;
  *(v168 + 112) = v98;
  *(v100 + 113) = v99;
  v173 = 25;
  v101 = v166;
  v102 = sub_1A88C9068();
  v166 = v101;
  if (v101 || (v168[912] = v102, v173 = 26, v103 = v166, v104 = sub_1A88C9068(), (v166 = v103) != 0) || (v168[913] = v104, v173 = 27, v105 = v166, v106 = sub_1A88C9068(), (v166 = v105) != 0) || (v168[914] = v106, v172 = 28, sub_1A882D0DC(), v107 = v166, sub_1A88C90B8(), (v166 = v107) != 0) || (v168[915] = v173, v172 = 29, sub_1A882D130(), v108 = v166, sub_1A88C90B8(), (v166 = v108) != 0) || (v168[916] = v173, v172 = 30, sub_1A87A52C0(), v109 = v166, sub_1A88C90B8(), (v166 = v109) != 0) || (v168[917] = v173, v173 = 31, v110 = v166, v111 = sub_1A88C9068(), (v166 = v110) != 0) || (v168[918] = v111, v173 = 32, v112 = v166, v113 = sub_1A88C9068(), (v166 = v112) != 0) || (v168[919] = v113, v173 = 33, v114 = v166, v115 = sub_1A88C9068(), (v166 = v114) != 0) || (v168[920] = v115, v172 = 34, sub_1A882D184(), v116 = v166, sub_1A88C90B8(), (v166 = v116) != 0) || (v168[921] = v173, v173 = 35, v117 = v166, v118 = sub_1A88C9058(), (v166 = v117) != 0))
  {
    (*(v4 + 8))(v170, v171);
    LODWORD(v171) = 0;
    LODWORD(v170) = 0;
    LODWORD(v169) = 0;
    LODWORD(v165) = 0;
    v161 = 1;
    *v162 = 1;
    v45 = 1;
    v46 = 1;
    v47 = 1;
    v160 = 1;
    LODWORD(v164) = 1;
    LODWORD(v163) = 1;
    *&v162[4] = 1;
    goto LABEL_4;
  }

  v120 = v168;
  *(v168 + 116) = v118;
  *(v120 + 117) = v119;
  v121 = sub_1A870CCE0(&unk_1EB3052E0, &qword_1A88EDCD0);
  v165 = v159;
  MEMORY[0x1EEE9AC00](v121 - 8);
  *&v162[4] = v122;
  v123 = &v159[-v122];
  v124 = sub_1A88C7478();
  v173 = 36;
  v125 = sub_1A8720F18(&qword_1EB303510, MEMORY[0x1EEE78898]);
  v163 = v124;
  v164 = v125;
  v126 = v166;
  sub_1A88C90B8();
  v166 = v126;
  if (v126)
  {
    (*(v4 + 8))(v170, v171);
    LODWORD(v170) = 0;
    LODWORD(v169) = 0;
    LODWORD(v165) = 0;
    v161 = 1;
    *v162 = 1;
    v45 = 1;
    v46 = 1;
    v47 = 1;
    v160 = 1;
    LODWORD(v164) = 1;
    LODWORD(v163) = 1;
    *&v162[4] = 1;
    LODWORD(v171) = 1;
    goto LABEL_4;
  }

  v127 = sub_1A8720F5C(v123, &v168[v167[40]]);
  v165 = v159;
  MEMORY[0x1EEE9AC00](v127);
  v128 = &v159[-*&v162[4]];
  v173 = 37;
  v129 = v166;
  sub_1A88C90B8();
  v166 = v129;
  if (v129)
  {
    (*(v4 + 8))(v170, v171);
    LODWORD(v169) = 0;
    LODWORD(v165) = 0;
    v161 = 1;
    *v162 = 1;
    v45 = 1;
    v46 = 1;
    v47 = 1;
    v160 = 1;
    LODWORD(v164) = 1;
    LODWORD(v163) = 1;
    *&v162[4] = 1;
    LODWORD(v171) = 1;
    LODWORD(v170) = 1;
    goto LABEL_4;
  }

  sub_1A8720F5C(v128, &v168[v167[41]]);
  v130 = v166;
  v173 = 38;
  v131 = sub_1A88C9058();
  v166 = v130;
  if (v130)
  {
    (*(v4 + 8))(v170, v171);
    LODWORD(v165) = 0;
    v161 = 1;
    *v162 = 1;
    v45 = 1;
    v46 = 1;
    v47 = 1;
    v160 = 1;
    LODWORD(v164) = 1;
    LODWORD(v163) = 1;
    *&v162[4] = 1;
    LODWORD(v171) = 1;
    LODWORD(v170) = 1;
    LODWORD(v169) = 1;
    goto LABEL_4;
  }

  v133 = &v168[v167[42]];
  *v133 = v131;
  v133[1] = v132;
  v173 = 39;
  v134 = v166;
  v135 = sub_1A88C9058();
  v166 = v134;
  if (v134)
  {
    (*(v4 + 8))(v170, v171);
    v161 = 1;
    *v162 = 1;
    v45 = 1;
    v46 = 1;
    v47 = 1;
    v160 = 1;
    LODWORD(v164) = 1;
    LODWORD(v163) = 1;
    *&v162[4] = 1;
    LODWORD(v171) = 1;
    LODWORD(v170) = 1;
    LODWORD(v169) = 1;
    LODWORD(v165) = 1;
    goto LABEL_4;
  }

  v137 = &v168[v167[43]];
  *v137 = v135;
  v137[1] = v136;
  v173 = 40;
  v138 = v166;
  v139 = sub_1A88C9058();
  v166 = v138;
  if (v138 || (v141 = &v168[v167[44]], *v141 = v139, v141[1] = v140, v173 = 41, v142 = v166, v143 = sub_1A88C9058(), v142))
  {
    (*(v4 + 8))(v170, v171);
    sub_1A85F1084(v201);
    v149 = v168;

    v200[4] = *(v149 + 200);
    v200[5] = *(v149 + 216);
    v200[6] = *(v149 + 232);
    LOBYTE(v200[7]) = v149[248];
    v200[0] = *(v149 + 136);
    v200[1] = *(v149 + 152);
    v200[2] = *(v149 + 168);
    v200[3] = *(v149 + 184);
    sub_1A85EF638(v200, &qword_1EB307310, &qword_1A88F24B0);
    memcpy(v200, v149 + 256, 0x128uLL);
    sub_1A85EF638(v200, &qword_1EB307320, &qword_1A88F24B8);
    v150 = *(v55 + 13);
    v200[12] = *(v55 + 12);
    v200[13] = v150;
    LODWORD(v200[14]) = *(v55 + 56);
    v151 = *(v55 + 9);
    v200[8] = *(v55 + 8);
    v200[9] = v151;
    v152 = *(v55 + 11);
    v200[10] = *(v55 + 10);
    v200[11] = v152;
    v153 = *(v55 + 5);
    v200[4] = *(v55 + 4);
    v200[5] = v153;
    v154 = *(v55 + 7);
    v200[6] = *(v55 + 6);
    v200[7] = v154;
    v155 = *(v55 + 1);
    v200[0] = *v55;
    v200[1] = v155;
    v156 = *(v55 + 3);
    v200[2] = *(v55 + 2);
    v200[3] = v156;
    sub_1A85EF638(v200, &qword_1EB307330, &qword_1A88F24C0);

    v157 = v167;
    sub_1A85EF638(&v149[v167[40]], &unk_1EB3052E0, &qword_1A88EDCD0);
    sub_1A85EF638(&v149[v157[41]], &unk_1EB3052E0, &qword_1A88EDCD0);

    if (!v166)
    {
    }
  }

  else
  {
    v145 = &v168[v167[45]];
    *v145 = v143;
    v145[1] = v144;
    v173 = 42;
    v146 = sub_1A88C9058();
    v147 = &v168[v167[46]];
    *v147 = v146;
    v147[1] = v148;
    v172 = 43;
    sub_1A882D1D8();
    sub_1A88C90B8();
    (*(v4 + 8))(v170, v171);
    v158 = v168;
    v168[v167[47]] = v173;
    sub_1A8820DCC(v158, v169);
    sub_1A85F1084(v201);
    return sub_1A8820EA0(v158);
  }

  return result;
}

uint64_t static IMFileTransfer.parse(remoteIntentRepresentation:)(uint64_t a1, uint64_t a2)
{
  RemoteIntentFileTransfer.dictionaryRepresentation.getter(a1, a2);
  v2 = [objc_allocWithZone(IMFileTransfer) init];
  v3 = sub_1A88C8188();

  [v2 _updateWithDictionaryRepresentation_];

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {
    sub_1A882D22C();
    swift_allocError();
    *v5 = 0xD000000000000056;
    v5[1] = 0x80000001A891DD30;
    swift_willThrow();

    return 0;
  }

  return result;
}

id IMFileTransfer.remoteIntentRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  result = [v1 _dictionaryRepresentation];
  if (result)
  {
    v4 = result;
    v5 = sub_1A88C81A8();

    return RemoteIntentFileTransfer.init(dictionaryRepresentation:)(v5, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A882CBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = static IMFileTransfer.parse(remoteIntentRepresentation:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_1A882CBD4@<X0>(uint64_t a1@<X8>)
{
  result = [*v1 _dictionaryRepresentation];
  if (result)
  {
    v4 = result;
    v5 = sub_1A88C81A8();

    return RemoteIntentFileTransfer.init(dictionaryRepresentation:)(v5, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A882CC60(uint64_t a1)
{
  if ((a1 + 1) < 0xB)
  {
    return a1 + 1;
  }

  else
  {
    return 11;
  }
}

uint64_t sub_1A882CC74(uint64_t a1)
{
  if ((a1 + 1) > 0x1E)
  {
    return 26;
  }

  else
  {
    return byte_1A88F2E70[a1 + 1];
  }
}

unint64_t sub_1A882CC98()
{
  result = qword_1EB307300;
  if (!qword_1EB307300)
  {
    result = swift_getWitnessTable(byte_1A88F2D14, &type metadata for RemoteIntentFileTransfer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB307300);
  }

  return result;
}

unint64_t sub_1A882CCEC()
{
  result = qword_1EB307308;
  if (!qword_1EB307308)
  {
    result = swift_getWitnessTable(aMZfln, &type metadata for RemoteIntentFileTransferState, v0, v1);
    atomic_store(result, &qword_1EB307308);
  }

  return result;
}

unint64_t sub_1A882CD40()
{
  result = qword_1EB307318;
  if (!qword_1EB307318)
  {
    result = swift_getWitnessTable(aQ_22, &type metadata for RemoteIntentTranscoderUserInfo, v0, v1);
    atomic_store(result, &qword_1EB307318);
  }

  return result;
}

unint64_t sub_1A882CD94()
{
  result = qword_1EB307328;
  if (!qword_1EB307328)
  {
    result = swift_getWitnessTable(aU_6, &type metadata for RemoteIntentStickerUserInfo, v0, v1);
    atomic_store(result, &qword_1EB307328);
  }

  return result;
}

unint64_t sub_1A882CDE8()
{
  result = qword_1EB307338;
  if (!qword_1EB307338)
  {
    result = swift_getWitnessTable(a9_9, &type metadata for RemoteIntentFileTransferAttributionInfo, v0, v1);
    atomic_store(result, &qword_1EB307338);
  }

  return result;
}

unint64_t sub_1A882CE3C()
{
  result = qword_1EB307340;
  if (!qword_1EB307340)
  {
    result = swift_getWitnessTable(byte_1A88F2CC4, &type metadata for RemoteIntentFileTransferCKSyncState, v0, v1);
    atomic_store(result, &qword_1EB307340);
  }

  return result;
}

unint64_t sub_1A882CE90()
{
  result = qword_1EB307348;
  if (!qword_1EB307348)
  {
    result = swift_getWitnessTable(byte_1A88F2C9C, &type metadata for RemoteIntentFileTransferCommSafetyState, v0, v1);
    atomic_store(result, &qword_1EB307348);
  }

  return result;
}

unint64_t sub_1A882CEE4()
{
  result = qword_1EB307350;
  if (!qword_1EB307350)
  {
    result = swift_getWitnessTable(aZf_8, &type metadata for RemoteIntentFileTransferErrorReason, v0, v1);
    atomic_store(result, &qword_1EB307350);
  }

  return result;
}

unint64_t sub_1A882CF38()
{
  result = qword_1EB307358;
  if (!qword_1EB307358)
  {
    result = swift_getWitnessTable(a5Zf, &type metadata for RemoteIntentFileTransferUpdateReason, v0, v1);
    atomic_store(result, &qword_1EB307358);
  }

  return result;
}

unint64_t sub_1A882CF8C()
{
  result = qword_1EB307368;
  if (!qword_1EB307368)
  {
    result = swift_getWitnessTable(byte_1A88F2BFC, &type metadata for RemoteIntentFileTransferState, v0, v1);
    atomic_store(result, &qword_1EB307368);
  }

  return result;
}

unint64_t sub_1A882CFE0()
{
  result = qword_1EB307370;
  if (!qword_1EB307370)
  {
    result = swift_getWitnessTable(aLzfl, &type metadata for RemoteIntentTranscoderUserInfo, v0, v1);
    atomic_store(result, &qword_1EB307370);
  }

  return result;
}

unint64_t sub_1A882D034()
{
  result = qword_1EB307378;
  if (!qword_1EB307378)
  {
    result = swift_getWitnessTable(byte_1A88F8DDC, &type metadata for RemoteIntentStickerUserInfo, v0, v1);
    atomic_store(result, &qword_1EB307378);
  }

  return result;
}

unint64_t sub_1A882D088()
{
  result = qword_1EB307380;
  if (!qword_1EB307380)
  {
    result = swift_getWitnessTable(byte_1A88E91F8, &type metadata for RemoteIntentFileTransferAttributionInfo, v0, v1);
    atomic_store(result, &qword_1EB307380);
  }

  return result;
}

unint64_t sub_1A882D0DC()
{
  result = qword_1EB307388;
  if (!qword_1EB307388)
  {
    result = swift_getWitnessTable(byte_1A88F2BD4, &type metadata for RemoteIntentFileTransferCKSyncState, v0, v1);
    atomic_store(result, &qword_1EB307388);
  }

  return result;
}

unint64_t sub_1A882D130()
{
  result = qword_1EB307390;
  if (!qword_1EB307390)
  {
    result = swift_getWitnessTable(byte_1A88F2BAC, &type metadata for RemoteIntentFileTransferCommSafetyState, v0, v1);
    atomic_store(result, &qword_1EB307390);
  }

  return result;
}

unint64_t sub_1A882D184()
{
  result = qword_1EB307398;
  if (!qword_1EB307398)
  {
    result = swift_getWitnessTable(aDzf, &type metadata for RemoteIntentFileTransferErrorReason, v0, v1);
    atomic_store(result, &qword_1EB307398);
  }

  return result;
}

unint64_t sub_1A882D1D8()
{
  result = qword_1EB3073A0;
  if (!qword_1EB3073A0)
  {
    result = swift_getWitnessTable(aUdzf, &type metadata for RemoteIntentFileTransferUpdateReason, v0, v1);
    atomic_store(result, &qword_1EB3073A0);
  }

  return result;
}

unint64_t sub_1A882D22C()
{
  result = qword_1EB3073A8;
  if (!qword_1EB3073A8)
  {
    result = swift_getWitnessTable(aIF_0, &type metadata for RemoteIntentRepresentableError, v0, v1);
    atomic_store(result, &qword_1EB3073A8);
  }

  return result;
}

uint64_t sub_1A882D280(uint64_t a1)
{
  *(a1 + 8) = sub_1A8820490(&qword_1EB304DE0, protocol conformance descriptor for RemoteIntentFileTransfer);
  result = sub_1A8820490(&qword_1EB304DD8, protocol conformance descriptor for RemoteIntentFileTransfer);
  *(a1 + 16) = result;
  return result;
}

void sub_1A882D310(uint64_t a1)
{
  sub_1A87C9CBC(319, &qword_1EB303528, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1A87C9CBC(319, &qword_1EB3073C0, &type metadata for RemoteIntentFileTransferState);
    if (v2 <= 0x3F)
    {
      sub_1A87C9CBC(319, &qword_1EB305EA8, MEMORY[0x1E69E6370]);
      if (v3 <= 0x3F)
      {
        sub_1A87C9CBC(319, &qword_1EB3073C8, MEMORY[0x1E69E6530]);
        if (v4 <= 0x3F)
        {
          sub_1A87C9CBC(319, &qword_1EB3073D0, MEMORY[0x1E69E75F8]);
          if (v5 <= 0x3F)
          {
            sub_1A87C9CBC(319, &qword_1EB3073D8, &type metadata for RemoteIntentTranscoderUserInfo);
            if (v6 <= 0x3F)
            {
              sub_1A87C9CBC(319, &qword_1EB3073E0, &type metadata for RemoteIntentStickerUserInfo);
              if (v7 <= 0x3F)
              {
                sub_1A87C9CBC(319, &qword_1EB3073E8, &type metadata for RemoteIntentFileTransferAttributionInfo);
                if (v8 <= 0x3F)
                {
                  sub_1A87C9CBC(319, &qword_1EB305EA0, MEMORY[0x1E69E7360]);
                  if (v9 <= 0x3F)
                  {
                    sub_1A87C9CBC(319, &qword_1EB3073F0, &type metadata for RemoteIntentFileTransferCKSyncState);
                    if (v10 <= 0x3F)
                    {
                      sub_1A87C9CBC(319, &qword_1EB3073F8, &type metadata for RemoteIntentFileTransferCommSafetyState);
                      if (v11 <= 0x3F)
                      {
                        sub_1A87C9CBC(319, &qword_1EB307400, &type metadata for RemoteIntentFileTransferPreviewGenerationState);
                        if (v12 <= 0x3F)
                        {
                          sub_1A87C9CBC(319, &qword_1EB307408, &type metadata for RemoteIntentFileTransferErrorReason);
                          if (v13 <= 0x3F)
                          {
                            sub_1A85ED6EC(319);
                            if (v14 <= 0x3F)
                            {
                              sub_1A87C9CBC(319, &qword_1EB307410, &type metadata for RemoteIntentFileTransferUpdateReason);
                              if (v15 <= 0x3F)
                              {
                                swift_cvw_initStructMetadataWithLayoutString();
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

uint64_t getEnumTagSinglePayload for RemoteIntentFileTransferErrorReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteIntentFileTransferErrorReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteIntentFileTransferState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteIntentFileTransferState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteIntentFileTransfer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD5)
  {
    goto LABEL_17;
  }

  if (a2 + 43 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 43) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 43;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 43;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 43;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2C;
  v8 = v6 - 44;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteIntentFileTransfer.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 43 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 43) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD5)
  {
    v4 = 0;
  }

  if (a2 > 0xD4)
  {
    v5 = ((a2 - 213) >> 8) + 1;
    *result = a2 + 43;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 43;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A882DA44()
{
  result = qword_1EB307418;
  if (!qword_1EB307418)
  {
    result = swift_getWitnessTable(byte_1A88F274C, &type metadata for RemoteIntentFileTransfer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB307418);
  }

  return result;
}

unint64_t sub_1A882DA9C()
{
  result = qword_1EB307420;
  if (!qword_1EB307420)
  {
    result = swift_getWitnessTable(aFzfls, &type metadata for RemoteIntentFileTransferState, v0, v1);
    atomic_store(result, &qword_1EB307420);
  }

  return result;
}

unint64_t sub_1A882DAF4()
{
  result = qword_1EB307428;
  if (!qword_1EB307428)
  {
    result = swift_getWitnessTable(byte_1A88F288C, &type metadata for RemoteIntentFileTransferCKSyncState, v0, v1);
    atomic_store(result, &qword_1EB307428);
  }

  return result;
}

unint64_t sub_1A882DB4C()
{
  result = qword_1EB307430;
  if (!qword_1EB307430)
  {
    result = swift_getWitnessTable(byte_1A88F292C, &type metadata for RemoteIntentFileTransferCommSafetyState, v0, v1);
    atomic_store(result, &qword_1EB307430);
  }

  return result;
}

unint64_t sub_1A882DBA4()
{
  result = qword_1EB307438;
  if (!qword_1EB307438)
  {
    result = swift_getWitnessTable(aDzf8q, &type metadata for RemoteIntentFileTransferPreviewGenerationState, v0, v1);
    atomic_store(result, &qword_1EB307438);
  }

  return result;
}

unint64_t sub_1A882DBFC()
{
  result = qword_1EB307440;
  if (!qword_1EB307440)
  {
    result = swift_getWitnessTable(byte_1A88F2A6C, &type metadata for RemoteIntentFileTransferErrorReason, v0, v1);
    atomic_store(result, &qword_1EB307440);
  }

  return result;
}

unint64_t sub_1A882DC54()
{
  result = qword_1EB307448;
  if (!qword_1EB307448)
  {
    result = swift_getWitnessTable(aCzf, &type metadata for RemoteIntentFileTransferUpdateReason, v0, v1);
    atomic_store(result, &qword_1EB307448);
  }

  return result;
}

unint64_t sub_1A882DCAC()
{
  result = qword_1EB307450;
  if (!qword_1EB307450)
  {
    result = swift_getWitnessTable(a5tzf, &type metadata for RemoteIntentFileTransfer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB307450);
  }

  return result;
}

unint64_t sub_1A882DD04()
{
  result = qword_1EB307458;
  if (!qword_1EB307458)
  {
    result = swift_getWitnessTable(aMpzf, &type metadata for RemoteIntentFileTransfer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB307458);
  }

  return result;
}

uint64_t sub_1A882DD58(uint64_t result)
{
  if (result > 2)
  {
    if (result <= 5)
    {
      return result;
    }

    if (result == 64)
    {
      return 6;
    }

    return 7;
  }

  if (result > 2)
  {
    return 7;
  }

  return result;
}

uint64_t sub_1A882DDB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632935 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x476567617373656DLL && a2 == 0xEB00000000444955 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xED00006574617453 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696D6F636E497369 && a2 == 0xEA0000000000676ELL || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65707954656D696DLL && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65707954697475 && a2 == 0xE700000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A891DD90 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461657243736668 && a2 == 0xEA0000000000726FLL || (sub_1A88C9398() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65707954736668 && a2 == 0xE700000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7367616C46736668 && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A891DDB0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x5572656B63697473 && a2 == 0xEF6F666E49726573 || (sub_1A88C9398() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEF6F666E496E6F69 || (sub_1A88C9398() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x726550726568746FLL && a2 == 0xEB000000006E6F73 || (sub_1A88C9398() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_1A88C9398() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x42746E6572727563 && a2 == 0xEC00000073657479 || (sub_1A88C9398() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7479426C61746F74 && a2 == 0xEA00000000007365 || (sub_1A88C9398() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A891DDD0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A891DDF0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6469567875417369 && a2 == 0xEA00000000006F65 || (sub_1A88C9398() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x6E65657263537369 && a2 == 0xEC000000746F6873 || (sub_1A88C9398() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A891DE10 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001A891DE30 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001A891DE60 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x616D497875417369 && a2 == 0xEA00000000006567 || (sub_1A88C9398() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x656B636974537369 && a2 == 0xE900000000000072 || (sub_1A88C9398() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6174744165646968 && a2 == 0xEE00746E656D6863 || (sub_1A88C9398() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x7453636E79536B63 && a2 == 0xEB00000000657461 || (sub_1A88C9398() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A891DE90 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A891AA70 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0x7463657269447369 && a2 == 0xEB0000000079726FLL || (sub_1A88C9398() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A891DEB0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A891DED0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x616552726F727265 && a2 == 0xEB000000006E6F73 || (sub_1A88C9398() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A891DEF0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0x4464657461657263 && a2 == 0xEB00000000657461 || (sub_1A88C9398() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xEF4C525561746144 || (sub_1A88C9398() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0x4C52556C61636F6CLL && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0x7461506C61636F6CLL && a2 == 0xE900000000000068 || (sub_1A88C9398() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A891DF10 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0x54786F62646E6173 && a2 == 0xEC0000006E656B6FLL || (sub_1A88C9398() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0x6552657461647075 && a2 == 0xEC0000006E6F7361)
  {

    return 43;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 43;
    }

    else
    {
      return 44;
    }
  }
}

unint64_t sub_1A882EB38()
{
  result = qword_1EB307460;
  if (!qword_1EB307460)
  {
    result = swift_getWitnessTable(byte_1A88F2774, &type metadata for RemoteIntentFileTransferState, v0, v1);
    atomic_store(result, &qword_1EB307460);
  }

  return result;
}

unint64_t sub_1A882EB8C()
{
  result = qword_1EB307468;
  if (!qword_1EB307468)
  {
    result = swift_getWitnessTable(aGzfS, &type metadata for RemoteIntentFileTransferCKSyncState, v0, v1);
    atomic_store(result, &qword_1EB307468);
  }

  return result;
}

unint64_t sub_1A882EBE0()
{
  result = qword_1EB307470;
  if (!qword_1EB307470)
  {
    result = swift_getWitnessTable(byte_1A88F28B4, &type metadata for RemoteIntentFileTransferCommSafetyState, v0, v1);
    atomic_store(result, &qword_1EB307470);
  }

  return result;
}

unint64_t sub_1A882EC34()
{
  result = qword_1EB307478;
  if (!qword_1EB307478)
  {
    result = swift_getWitnessTable(byte_1A88F2954, &type metadata for RemoteIntentFileTransferPreviewGenerationState, v0, v1);
    atomic_store(result, &qword_1EB307478);
  }

  return result;
}

unint64_t sub_1A882EC88()
{
  result = qword_1EB307480;
  if (!qword_1EB307480)
  {
    result = swift_getWitnessTable(aMezf, &type metadata for RemoteIntentFileTransferErrorReason, v0, v1);
    atomic_store(result, &qword_1EB307480);
  }

  return result;
}

unint64_t sub_1A882ECDC()
{
  result = qword_1EB307488;
  if (!qword_1EB307488)
  {
    result = swift_getWitnessTable(byte_1A88F2A94, &type metadata for RemoteIntentFileTransferUpdateReason, v0, v1);
    atomic_store(result, &qword_1EB307488);
  }

  return result;
}

id IMRichCardLayout.init(dictionary:)(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1A88C8188();

  v3 = [v1 initWithDictionary_];

  return v3;
}

{
  v2 = v1;
  if (*(a1 + 16))
  {
    v4 = sub_1A85F5F40(0x7461746E6569726FLL, 0xEB000000006E6F69);
    if (v5)
    {
      sub_1A85F1028(*(a1 + 56) + 32 * v4, v27);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16))
        {
          v6 = sub_1A85F5F40(0x696C416567616D69, 0xEE00746E656D6E67);
          if (v7)
          {
            sub_1A85F1028(*(a1 + 56) + 32 * v6, v27);
            if (swift_dynamicCast())
            {
              if (*(a1 + 16) && (v8 = sub_1A85F5F40(0x797453656C746974, 0xEA0000000000656CLL), (v9 & 1) != 0) && (sub_1A85F1028(*(a1 + 56) + 32 * v8, v27), sub_1A870CCE0(&unk_1EB3091D0, &qword_1A88EAC10), (swift_dynamicCast() & 1) != 0))
              {
                v10 = objc_allocWithZone(IMRichCardStyle);
                v11 = sub_1A88C8188();

                v12 = [v10 initWithDictionary_];
              }

              else
              {
                v12 = 0;
              }

              if (*(a1 + 16) && (v14 = sub_1A85F5F40(0xD000000000000010, 0x80000001A891DF30), (v15 & 1) != 0) && (sub_1A85F1028(*(a1 + 56) + 32 * v14, v27), sub_1A870CCE0(&unk_1EB3091D0, &qword_1A88EAC10), (swift_dynamicCast() & 1) != 0))
              {
                v16 = objc_allocWithZone(IMRichCardStyle);
                v17 = sub_1A88C8188();

                v18 = [v16 initWithDictionary_];
              }

              else
              {
                v18 = 0;
              }

              if (*(a1 + 16))
              {
                v19 = sub_1A85F5F40(0x6874646977, 0xE500000000000000);
                if (v20 & 1) != 0 && (sub_1A85F1028(*(a1 + 56) + 32 * v19, v27), (swift_dynamicCast()))
                {
                  v21 = v26;
                }

                else
                {
                  v21 = -1;
                }

                if (*(a1 + 16))
                {
                  v22 = sub_1A85F5F40(0x6C79745364726163, 0xEC0000006C725565);
                  if (v23)
                  {
                    sub_1A85F1028(*(a1 + 56) + 32 * v22, v27);

                    if (swift_dynamicCast())
                    {
                      v24 = sub_1A88C82A8();

LABEL_31:
                      v25 = [v2 initWithOrientation:v26 imageAlignment:v26 width:v21 titleStyle:v12 descriptionStyle:v18 cardStyleUrl:v24];

                      return v25;
                    }

LABEL_30:
                    v24 = 0;
                    goto LABEL_31;
                  }
                }
              }

              else
              {
                v21 = -1;
              }

              goto LABEL_30;
            }
          }
        }
      }
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1A882F3A4()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303B58, &qword_1A88E4F98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88EA810;
  *(inited + 32) = 0x7461746E6569726FLL;
  *(inited + 40) = 0xEB000000006E6F69;
  v3 = [v1 orientation];
  v4 = MEMORY[0x1E69E6530];
  *(inited + 48) = v3;
  *(inited + 72) = v4;
  strcpy((inited + 80), "imageAlignment");
  *(inited + 95) = -18;
  *(inited + 96) = [v1 imageAlignment];
  *(inited + 120) = v4;
  *(inited + 128) = 0x6874646977;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = [v1 width];
  *(inited + 168) = v4;
  *(inited + 176) = 0x797453656C746974;
  *(inited + 184) = 0xEA0000000000656CLL;
  v5 = [v1 titleStyle];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 dictionaryRepresentation];

    v8 = sub_1A88C81A8();
    v5 = sub_1A870CCE0(&unk_1EB3091D0, &qword_1A88EAC10);
  }

  else
  {
    v8 = 0;
    *(inited + 200) = 0;
    *(inited + 208) = 0;
  }

  *(inited + 192) = v8;
  *(inited + 216) = v5;
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x80000001A891DF30;
  v9 = [v1 descriptionStyle];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 dictionaryRepresentation];

    v12 = sub_1A88C81A8();
    v9 = sub_1A870CCE0(&unk_1EB3091D0, &qword_1A88EAC10);
  }

  else
  {
    v12 = 0;
    *(inited + 248) = 0;
    *(inited + 256) = 0;
  }

  *(inited + 240) = v12;
  *(inited + 264) = v9;
  strcpy((inited + 272), "cardStyleUrl");
  *(inited + 285) = 0;
  *(inited + 286) = -5120;
  v13 = [v1 cardStyleUrl];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1A88C82E8();
    v17 = v16;

    v18 = MEMORY[0x1E69E6158];
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v18 = 0;
    *(inited + 304) = 0;
  }

  *(inited + 288) = v15;
  *(inited + 296) = v17;
  *(inited + 312) = v18;
  v19 = sub_1A8738CF0(inited);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB304A50, &qword_1A88E4FA0);
  swift_arrayDestroy();
  v20 = sub_1A8895CC8(v19);

  return v20;
}

uint64_t IMRichCardLayout.isEqual(_:)(uint64_t a1)
{
  sub_1A87303E8(a1, v24);
  if (v25)
  {
    type metadata accessor for IMRichCardLayout();
    if (swift_dynamicCast())
    {
      v2 = [v1 orientation];
      if (v2 != [v23 orientation])
      {
        goto LABEL_19;
      }

      v3 = [v1 imageAlignment];
      if (v3 != [v23 imageAlignment])
      {
        goto LABEL_19;
      }

      v4 = [v1 width];
      if (v4 != [v23 width])
      {
        goto LABEL_19;
      }

      v5 = [v1 titleStyle];
      v6 = [v23 titleStyle];
      v7 = v6;
      if (v5)
      {
        if (!v6)
        {
          goto LABEL_16;
        }

        type metadata accessor for IMRichCardStyle(0);
        v8 = sub_1A88C8BA8();

        if ((v8 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (v6)
      {
        goto LABEL_18;
      }

      v5 = [v1 descriptionStyle];
      v9 = [v23 descriptionStyle];
      v7 = v9;
      if (v5)
      {
        if (v9)
        {
          type metadata accessor for IMRichCardStyle(0);
          v10 = sub_1A88C8BA8();

          if (v10)
          {
LABEL_22:
            v13 = [v1 cardStyleUrl];
            if (v13)
            {
              v14 = v13;
              v15 = sub_1A88C82E8();
              v17 = v16;
            }

            else
            {
              v15 = 0;
              v17 = 0;
            }

            v18 = [v23 cardStyleUrl];
            if (v18)
            {
              v19 = v18;
              v20 = sub_1A88C82E8();
              v22 = v21;

              if (!v17)
              {

                if (!v22)
                {
                  v11 = 1;
                  return v11 & 1;
                }

                goto LABEL_20;
              }

              if (v22)
              {
                if (v15 != v20 || v17 != v22)
                {
                  v11 = sub_1A88C9398();

                  return v11 & 1;
                }

                goto LABEL_33;
              }
            }

            else if (!v17)
            {
LABEL_33:

              v11 = 1;
              return v11 & 1;
            }

            goto LABEL_20;
          }

LABEL_19:

          goto LABEL_20;
        }

LABEL_16:

        goto LABEL_19;
      }

      if (!v9)
      {
        goto LABEL_22;
      }

LABEL_18:

      goto LABEL_19;
    }
  }

  else
  {
    sub_1A860169C(v24);
  }

LABEL_20:
  v11 = 0;
  return v11 & 1;
}

uint64_t IMRichCardLayout.hash.getter()
{
  v1 = v0;
  sub_1A88C9588();
  MEMORY[0x1AC56FE00]([v0 orientation]);
  MEMORY[0x1AC56FE00]([v0 imageAlignment]);
  MEMORY[0x1AC56FE00]([v0 width]);
  v2 = [v0 titleStyle];
  if (v2)
  {
    v3 = v2;
    sub_1A88C9548();
    v4 = v3;
    sub_1A88C8BB8();
  }

  else
  {
    sub_1A88C9548();
  }

  v5 = [v1 descriptionStyle];
  if (v5)
  {
    v6 = v5;
    sub_1A88C9548();
    v7 = v6;
    sub_1A88C8BB8();
  }

  else
  {
    sub_1A88C9548();
  }

  v8 = [v1 cardStyleUrl];
  if (v8)
  {
    v9 = v8;
    sub_1A88C82E8();

    sub_1A88C9548();
    sub_1A88C8268();
  }

  else
  {
    sub_1A88C9548();
  }

  return sub_1A88C9568();
}

id IMRichCardLayout.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMRichCardLayout()
{
  result = qword_1EB3074C0;
  if (!qword_1EB3074C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB3074C0);
  }

  return result;
}

id static IMFeatureFlags.test(withFeature:enabled:block:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  aBlock[4] = sub_1A882FFA0;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A882FFA8;
  aBlock[3] = &unk_1F1BB49A0;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [v8 testWithFeature:a1 enabled:a2 & 1 block:v10 error:aBlock];
  _Block_release(v10);
  if (v11)
  {
    return aBlock[0];
  }

  v13 = aBlock[0];
  sub_1A88C7168();

  return swift_willThrow();
}

uint64_t sub_1A882FFA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

uint64_t DaemonBroadcastEntity.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DaemonBroadcastEntity.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1A88300B8()
{
  v0 = sub_1A88C6DC8();
  sub_1A85EFC04(v0, qword_1EB3074C8);
  sub_1A85EF0E4(v0, qword_1EB3074C8);
  v1 = sub_1A88C7188();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A88C7178();
  v3 = sub_1A870CCE0(&qword_1EB303270, &qword_1A88F2EB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  (*(v2 + 56))(&v6 - v4, 1, 1, v1);
  return sub_1A88C6DB8();
}

uint64_t static DaemonBroadcastEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB3022B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C6DC8();
  v3 = sub_1A85EF0E4(v2, qword_1EB3074C8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t DaemonBroadcastEntity.displayRepresentation.getter()
{
  v0 = sub_1A870CCE0(&qword_1EB303268, &unk_1A88E2D00);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1A88C7188();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A88C7178();
  v5 = sub_1A870CCE0(&qword_1EB303270, &qword_1A88F2EB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  (*(v4 + 56))(&v9 - v6, 1, 1, v3);
  v7 = sub_1A88C6D58();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  return sub_1A88C6D68();
}

uint64_t sub_1A88304C0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1A88304CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB3022B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C6DC8();
  v3 = sub_1A85EF0E4(v2, qword_1EB3074C8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A8830574(uint64_t a1)
{
  v2 = sub_1A8728DE8();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1A88305C0()
{
  v0 = sub_1A870CCE0(&qword_1EB303268, &unk_1A88E2D00);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1A88C7188();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A88C7178();
  v5 = sub_1A870CCE0(&qword_1EB303270, &qword_1A88F2EB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  (*(v4 + 56))(&v9 - v6, 1, 1, v3);
  v7 = sub_1A88C6D58();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  return sub_1A88C6D68();
}

uint64_t sub_1A8830788(uint64_t a1)
{
  v2 = sub_1A8830B00();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

unint64_t sub_1A8830814(uint64_t a1)
{
  result = sub_1A883083C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A883083C()
{
  result = qword_1EB3074E0;
  if (!qword_1EB3074E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DaemonBroadcastEntity, &type metadata for DaemonBroadcastEntity, v0, v1);
    atomic_store(result, &qword_1EB3074E0);
  }

  return result;
}

unint64_t sub_1A8830894()
{
  result = qword_1EB3005D8;
  if (!qword_1EB3005D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DaemonBroadcastEntity, &type metadata for DaemonBroadcastEntity, v0, v1);
    atomic_store(result, &qword_1EB3005D8);
  }

  return result;
}

unint64_t sub_1A88308EC()
{
  result = qword_1EB3005B8;
  if (!qword_1EB3005B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DaemonBroadcastEntity, &type metadata for DaemonBroadcastEntity, v0, v1);
    atomic_store(result, &qword_1EB3005B8);
  }

  return result;
}

unint64_t sub_1A8830944()
{
  result = qword_1EB300590;
  if (!qword_1EB300590)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DaemonBroadcastEntity, &type metadata for DaemonBroadcastEntity, v0, v1);
    atomic_store(result, &qword_1EB300590);
  }

  return result;
}

unint64_t sub_1A883099C()
{
  result = qword_1EB3074E8;
  if (!qword_1EB3074E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DaemonBroadcastEntityQuery, &type metadata for DaemonBroadcastEntityQuery, v0, v1);
    atomic_store(result, &qword_1EB3074E8);
  }

  return result;
}

unint64_t sub_1A8830A00()
{
  result = qword_1EB3005B0;
  if (!qword_1EB3005B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DaemonBroadcastEntity, &type metadata for DaemonBroadcastEntity, v0, v1);
    atomic_store(result, &qword_1EB3005B0);
  }

  return result;
}

unint64_t sub_1A8830A54()
{
  result = qword_1EB3005A8;
  if (!qword_1EB3005A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DaemonBroadcastEntity, &type metadata for DaemonBroadcastEntity, v0, v1);
    atomic_store(result, &qword_1EB3005A8);
  }

  return result;
}

unint64_t sub_1A8830AA8()
{
  result = qword_1EB3005C0;
  if (!qword_1EB3005C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DaemonBroadcastEntity, &type metadata for DaemonBroadcastEntity, v0, v1);
    atomic_store(result, &qword_1EB3005C0);
  }

  return result;
}

unint64_t sub_1A8830B00()
{
  result = qword_1EB3005A0;
  if (!qword_1EB3005A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DaemonBroadcastEntity, &type metadata for DaemonBroadcastEntity, v0, v1);
    atomic_store(result, &qword_1EB3005A0);
  }

  return result;
}

unint64_t sub_1A8830B58()
{
  result = qword_1EB3074F0;
  if (!qword_1EB3074F0)
  {
    v3 = sub_1A870CD28(&qword_1EB3074F8, &qword_1A88F3060);
    result = swift_getWitnessTable(MEMORY[0x1E695A578], v3, v0, v1);
    atomic_store(result, &qword_1EB3074F0);
  }

  return result;
}

unint64_t sub_1A8830BC0()
{
  result = qword_1EB300598;
  if (!qword_1EB300598)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DaemonBroadcastEntity, &type metadata for DaemonBroadcastEntity, v0, v1);
    atomic_store(result, &qword_1EB300598);
  }

  return result;
}

unint64_t sub_1A8830C18()
{
  result = qword_1EB307500;
  if (!qword_1EB307500)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DaemonBroadcastEntityQuery, &type metadata for DaemonBroadcastEntityQuery, v0, v1);
    atomic_store(result, &qword_1EB307500);
  }

  return result;
}

unint64_t sub_1A8830C70()
{
  result = qword_1EB307508;
  if (!qword_1EB307508)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DaemonBroadcastEntityQuery, &type metadata for DaemonBroadcastEntityQuery, v0, v1);
    atomic_store(result, &qword_1EB307508);
  }

  return result;
}

uint64_t sub_1A8830D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A8830DEC;

  return MEMORY[0x1EEDB2EC0](a1, a2, a3, a4);
}

uint64_t sub_1A8830DEC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_1A8830EF0()
{
  result = qword_1EB307510;
  if (!qword_1EB307510)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DaemonBroadcastEntityQuery, &type metadata for DaemonBroadcastEntityQuery, v0, v1);
    atomic_store(result, &qword_1EB307510);
  }

  return result;
}

unint64_t sub_1A8830F48()
{
  result = qword_1EB307518;
  if (!qword_1EB307518)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_1A870CD28(&qword_1EB307520, qword_1A88F31A0);
    v4[0] = sub_1A8830AA8();
    result = swift_getWitnessTable(MEMORY[0x1E695A7F8], v3, v4);
    atomic_store(result, &qword_1EB307518);
  }

  return result;
}

uint64_t sub_1A8830FCC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1A883099C();
  *v5 = v2;
  v5[1] = sub_1A8714B6C;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

uint64_t sub_1A8831080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A8716570;

  return MEMORY[0x1EEDB3B80](a1, a2, a3);
}

uint64_t type metadata accessor for RemoteIntentMessageSummaryInfo(uint64_t a1)
{
  result = qword_1EB307528;
  if (!qword_1EB307528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A88311DC(uint64_t a1)
{
  sub_1A87C9CBC(319, &qword_1EB303528, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1A88313E4();
    if (v2 <= 0x3F)
    {
      sub_1A87C9CBC(319, &qword_1EB3073C8, MEMORY[0x1E69E6530]);
      if (v3 <= 0x3F)
      {
        sub_1A87C9CBC(319, &qword_1EB305EA8, MEMORY[0x1E69E6370]);
        if (v4 <= 0x3F)
        {
          sub_1A8831434(319, &qword_1EB307540, &qword_1EB307548, &unk_1A88F32D0);
          if (v5 <= 0x3F)
          {
            sub_1A87C9CBC(319, &qword_1EB307550, &type metadata for RemoteIntentMessageEditHistory);
            if (v6 <= 0x3F)
            {
              sub_1A87C9CBC(319, &qword_1EB307558, &type metadata for RemoteIntentMessageOriginalTextRanges);
              if (v7 <= 0x3F)
              {
                sub_1A8831434(319, &qword_1EB305E98, &qword_1EB303100, &qword_1A88E2A90);
                if (v8 <= 0x3F)
                {
                  sub_1A85ED6EC(319);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1A88313E4()
{
  if (!qword_1EB307538)
  {
    v0 = sub_1A88C8BE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB307538);
    }
  }
}

void sub_1A8831434(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1A870CD28(a3, a4);
    v5 = sub_1A88C8BE8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A8831488(char a1)
{
  result = 0x7972616D6D7573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0x54746E65746E6F63;
      break;
    case 3:
      result = 0x75426E6967756C70;
      break;
    case 4:
    case 12:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0x526E656542736168;
      break;
    case 9:
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD00000000000001FLL;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0x7473694874696465;
      break;
    case 15:
      result = 0xD000000000000018;
      break;
    case 16:
    case 22:
      result = 0xD000000000000020;
      break;
    case 17:
      result = 0xD000000000000023;
      break;
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 19:
      result = 0x65746174536D6D63;
      break;
    case 20:
      result = 0x74657373416D6D63;
      break;
    case 21:
    case 24:
      result = 0xD000000000000015;
      break;
    case 23:
      result = 0xD000000000000025;
      break;
    case 25:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A883177C(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB307588, &qword_1A88F3358);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A8835804();
  sub_1A88C95C8();
  LOBYTE(v13) = 0;
  sub_1A88C91C8();
  if (!v2)
  {
    v9 = v3[3];
    v13 = v3[2];
    v14 = v9;
    v15 = 1;
    sub_1A88359C0(v13, v9);
    sub_1A871CE08();
    sub_1A88C9228();
    sub_1A871CD4C(v13, v14);
    LOBYTE(v13) = 2;
    sub_1A88C9208();
    LOBYTE(v13) = 3;
    sub_1A88C91C8();
    LOBYTE(v13) = 4;
    sub_1A88C91C8();
    LOBYTE(v13) = 5;
    sub_1A88C91C8();
    LOBYTE(v13) = 6;
    sub_1A88C91C8();
    LOBYTE(v13) = 7;
    sub_1A88C91D8();
    LOBYTE(v13) = 8;
    sub_1A88C91D8();
    LOBYTE(v13) = 9;
    sub_1A88C91C8();
    LOBYTE(v13) = 10;
    sub_1A88C91D8();
    LOBYTE(v13) = 11;
    sub_1A88C91C8();
    v13 = v3[20];
    v15 = 12;
    sub_1A870CCE0(&qword_1EB307548, &unk_1A88F32D0);
    sub_1A88359D4(&qword_1EB307590, MEMORY[0x1E69E6818], MEMORY[0x1E69E6300]);
    sub_1A88C9228();
    v13 = v3[21];
    v15 = 13;
    sub_1A88C9228();
    v13 = v3[22];
    v15 = 14;
    sub_1A8835A40();
    sub_1A88C9228();
    v13 = v3[23];
    v15 = 15;
    sub_1A8835A94();
    sub_1A88C9228();
    v13 = v3[24];
    v15 = 16;
    sub_1A88C9228();
    v13 = v3[25];
    v15 = 17;
    sub_1A88C9228();
    v13 = v3[26];
    v15 = 18;
    sub_1A870CCE0(&qword_1EB303100, &qword_1A88E2A90);
    sub_1A8716048(&qword_1EB303120, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1A88C9228();
    LOBYTE(v13) = 19;
    sub_1A88C9208();
    LOBYTE(v13) = 20;
    sub_1A88C9208();
    LOBYTE(v13) = 21;
    sub_1A88C91D8();
    v12 = type metadata accessor for RemoteIntentMessageSummaryInfo(0);
    LOBYTE(v13) = 22;
    sub_1A88C7478();
    sub_1A8720F18(&qword_1EB303500, MEMORY[0x1EEE78878]);
    sub_1A88C9228();
    v13 = *(v3 + *(v12 + 108));
    v15 = 23;
    sub_1A88C9228();
    LOBYTE(v13) = 24;
    sub_1A88C91C8();
    LOBYTE(v13) = 25;
    sub_1A88C91D8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A8831E50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = sub_1A870CCE0(&qword_1EB307560, &qword_1A88F3350);
  v5 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v7 = v44 - v6 + 4;
  v8 = type metadata accessor for RemoteIntentMessageSummaryInfo(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 4;
  v11 = a1[3];
  v48 = a1;
  sub_1A870C278(a1, v11);
  sub_1A8835804();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(v48);
  }

  *&v44[1] = a2;
  v45 = v10;
  v46 = v5;
  LOBYTE(v49) = 0;
  v12 = sub_1A88C9058();
  v13 = v45;
  *v45 = v12;
  *(v13 + 1) = v14;
  v50 = 1;
  sub_1A871C858();
  sub_1A88C90B8();
  *(v13 + 1) = v49;
  LOBYTE(v49) = 2;
  v43 = 0;
  *(v13 + 4) = sub_1A88C9098();
  v13[40] = v15 & 1;
  LOBYTE(v49) = 3;
  *(v13 + 6) = sub_1A88C9058();
  *(v13 + 7) = v16;
  LOBYTE(v49) = 4;
  *(v13 + 8) = sub_1A88C9058();
  *(v13 + 9) = v17;
  LOBYTE(v49) = 5;
  *(v13 + 10) = sub_1A88C9058();
  *(v13 + 11) = v18;
  LOBYTE(v49) = 6;
  *(v13 + 12) = sub_1A88C9058();
  *(v13 + 13) = v19;
  LOBYTE(v49) = 7;
  v45[112] = sub_1A88C9068();
  LOBYTE(v49) = 8;
  v45[113] = sub_1A88C9068();
  LOBYTE(v49) = 9;
  v20 = sub_1A88C9058();
  v21 = v45;
  *(v45 + 15) = v20;
  *(v21 + 16) = v22;
  LOBYTE(v49) = 10;
  v45[136] = sub_1A88C9068();
  LOBYTE(v49) = 11;
  v23 = sub_1A88C9058();
  v24 = v45;
  *(v45 + 18) = v23;
  *(v24 + 19) = v25;
  sub_1A870CCE0(&qword_1EB307548, &unk_1A88F32D0);
  v50 = 12;
  sub_1A88359D4(&qword_1EB307570, MEMORY[0x1E69E6840], MEMORY[0x1E69E6330]);
  sub_1A88C90B8();
  *(v45 + 20) = v49;
  v50 = 13;
  sub_1A88C90B8();
  *(v45 + 21) = v49;
  v50 = 14;
  sub_1A8835858();
  sub_1A88C90B8();
  *(v45 + 22) = v49;
  v50 = 15;
  sub_1A88358AC();
  sub_1A88C90B8();
  *(v45 + 23) = v49;
  v50 = 16;
  sub_1A88C90B8();
  *(v45 + 24) = v49;
  v50 = 17;
  sub_1A88C90B8();
  *(v45 + 25) = v49;
  sub_1A870CCE0(&qword_1EB303100, &qword_1A88E2A90);
  v50 = 18;
  sub_1A8716048(&qword_1EB303108, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1A88C90B8();
  *(v45 + 26) = v49;
  LOBYTE(v49) = 19;
  v26 = sub_1A88C9098();
  v27 = v45;
  *(v45 + 27) = v26;
  v27[224] = v28 & 1;
  LOBYTE(v49) = 20;
  v29 = sub_1A88C9098();
  v30 = v45;
  *(v45 + 29) = v29;
  v30[240] = v31 & 1;
  LOBYTE(v49) = 21;
  v45[241] = sub_1A88C9068();
  v32 = sub_1A870CCE0(&unk_1EB3052E0, &qword_1A88EDCD0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = v44 - v33 + 4;
  sub_1A88C7478();
  LOBYTE(v49) = 22;
  sub_1A8720F18(&qword_1EB303510, MEMORY[0x1EEE78898]);
  sub_1A88C90B8();
  sub_1A8720F5C(v34, &v45[v8[26]]);
  v50 = 23;
  sub_1A88C90B8();
  *&v45[v8[27]] = v49;
  LOBYTE(v49) = 24;
  v35 = sub_1A88C9058();
  v36 = &v45[v8[28]];
  *v36 = v35;
  v36[1] = v37;
  LOBYTE(v49) = 25;
  v38 = sub_1A88C9068();
  (*(v46 + 8))(v7, v47);
  v39 = v8[29];
  v40 = *&v44[1];
  v41 = v45;
  v45[v39] = v38;
  sub_1A8835900(v41, v40);
  sub_1A85F1084(v48);
  return sub_1A8835964(v41);
}

uint64_t sub_1A8832DD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A8835C00(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A8832E08(uint64_t a1)
{
  v2 = sub_1A8835804();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8832E44(uint64_t a1)
{
  v2 = sub_1A8835804();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8832EB0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v194 = sub_1A88C82E8();
  v195 = v5;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v6 = sub_1A8602F10(&v193), (v7 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v6, &v194);
    sub_1A8717360(&v193);
    v8 = swift_dynamicCast();
    if (v8)
    {
      v9 = v191;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v192;
    }

    else
    {
      v10 = 0;
    }

    v189 = v10;
    v190 = v9;
  }

  else
  {
    sub_1A8717360(&v193);
    v189 = 0;
    v190 = 0;
  }

  v194 = sub_1A88C82E8();
  v195 = v11;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v12 = sub_1A8602F10(&v193), (v13 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v12, &v194);
    sub_1A8717360(&v193);
    v14 = swift_dynamicCast();
    v15 = v191;
    if (!v14)
    {
      v15 = 0;
    }

    v188 = v15;
    v16 = 0xF000000000000000;
    if (v14)
    {
      v16 = v192;
    }
  }

  else
  {
    sub_1A8717360(&v193);
    v188 = 0;
    v16 = 0xF000000000000000;
  }

  v187 = v16;
  v194 = sub_1A88C82E8();
  v195 = v17;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v18 = sub_1A8602F10(&v193), (v19 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v18, &v194);
    sub_1A8717360(&v193);
    v20 = swift_dynamicCast();
    v21 = v191;
    if (!v20)
    {
      v21 = 0;
    }

    v186 = v21;
    v22 = v20 ^ 1;
  }

  else
  {
    sub_1A8717360(&v193);
    v186 = 0;
    v22 = 1;
  }

  v185 = v22;
  v194 = sub_1A88C82E8();
  v195 = v23;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v24 = sub_1A8602F10(&v193), (v25 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v24, &v194);
    sub_1A8717360(&v193);
    v26 = swift_dynamicCast();
    if (v26)
    {
      v27 = v191;
    }

    else
    {
      v27 = 0;
    }

    if (v26)
    {
      v28 = v192;
    }

    else
    {
      v28 = 0;
    }

    v183 = v28;
    v184 = v27;
  }

  else
  {
    sub_1A8717360(&v193);
    v183 = 0;
    v184 = 0;
  }

  v194 = sub_1A88C82E8();
  v195 = v29;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v30 = sub_1A8602F10(&v193), (v31 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v30, &v194);
    sub_1A8717360(&v193);
    v32 = swift_dynamicCast();
    if (v32)
    {
      v33 = v191;
    }

    else
    {
      v33 = 0;
    }

    if (v32)
    {
      v34 = v192;
    }

    else
    {
      v34 = 0;
    }

    v181 = v34;
    v182 = v33;
  }

  else
  {
    sub_1A8717360(&v193);
    v181 = 0;
    v182 = 0;
  }

  v194 = sub_1A88C82E8();
  v195 = v35;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v36 = sub_1A8602F10(&v193), (v37 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v36, &v194);
    sub_1A8717360(&v193);
    v38 = swift_dynamicCast();
    v39 = v191;
    if (!v38)
    {
      v39 = 0;
    }

    v180 = v39;
    if (v38)
    {
      v40 = v192;
    }

    else
    {
      v40 = 0;
    }

    v179 = v40;
  }

  else
  {
    sub_1A8717360(&v193);
    v180 = 0;
    v179 = 0;
  }

  v194 = sub_1A88C82E8();
  v195 = v41;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v42 = sub_1A8602F10(&v193), (v43 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v42, &v194);
    sub_1A8717360(&v193);
    v44 = swift_dynamicCast();
    v45 = v191;
    if (!v44)
    {
      v45 = 0;
    }

    v178 = v45;
    if (v44)
    {
      v46 = v192;
    }

    else
    {
      v46 = 0;
    }

    v177 = v46;
  }

  else
  {
    sub_1A8717360(&v193);
    v178 = 0;
    v177 = 0;
  }

  v194 = sub_1A88C82E8();
  v195 = v47;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v48 = sub_1A8602F10(&v193), (v49 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v48, &v194);
    sub_1A8717360(&v193);
    v50 = swift_dynamicCast();
    v51 = v191;
    if (!v50)
    {
      v51 = 2;
    }
  }

  else
  {
    sub_1A8717360(&v193);
    v51 = 2;
  }

  v176 = v51;
  v194 = sub_1A88C82E8();
  v195 = v52;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v53 = sub_1A8602F10(&v193), (v54 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v53, &v194);
    sub_1A8717360(&v193);
    v55 = swift_dynamicCast();
    v56 = v191;
    if (!v55)
    {
      v56 = 2;
    }
  }

  else
  {
    sub_1A8717360(&v193);
    v56 = 2;
  }

  v175 = v56;
  v194 = sub_1A88C82E8();
  v195 = v57;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v58 = sub_1A8602F10(&v193), (v59 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v58, &v194);
    sub_1A8717360(&v193);
    v60 = swift_dynamicCast();
    v61 = v191;
    if (!v60)
    {
      v61 = 0;
    }

    v174 = v61;
    if (v60)
    {
      v62 = v192;
    }

    else
    {
      v62 = 0;
    }

    v173 = v62;
  }

  else
  {
    sub_1A8717360(&v193);
    v174 = 0;
    v173 = 0;
  }

  v194 = sub_1A88C82E8();
  v195 = v63;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v64 = sub_1A8602F10(&v193), (v65 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v64, &v194);
    sub_1A8717360(&v193);
    v66 = swift_dynamicCast();
    v67 = v191;
    if (!v66)
    {
      v67 = 2;
    }
  }

  else
  {
    sub_1A8717360(&v193);
    v67 = 2;
  }

  v172 = v67;
  v194 = sub_1A88C82E8();
  v195 = v68;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v69 = sub_1A8602F10(&v193), (v70 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v69, &v194);
    sub_1A8717360(&v193);
    v71 = swift_dynamicCast();
    v72 = v191;
    if (!v71)
    {
      v72 = 0;
    }

    v171 = v72;
    if (v71)
    {
      v73 = v192;
    }

    else
    {
      v73 = 0;
    }

    v170 = v73;
  }

  else
  {
    sub_1A8717360(&v193);
    v171 = 0;
    v170 = 0;
  }

  v194 = sub_1A88C82E8();
  v195 = v74;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v75 = sub_1A8602F10(&v193), (v76 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v75, &v194);
    sub_1A8717360(&v193);
    sub_1A870CCE0(&qword_1EB307548, &unk_1A88F32D0);
    v77 = swift_dynamicCast();
    v78 = v191;
    if (!v77)
    {
      v78 = 0;
    }

    v169 = v78;
  }

  else
  {
    sub_1A8717360(&v193);
    v169 = 0;
  }

  v194 = sub_1A88C82E8();
  v195 = v79;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v80 = sub_1A8602F10(&v193), (v81 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v80, &v194);
    sub_1A8717360(&v193);
    sub_1A870CCE0(&qword_1EB307548, &unk_1A88F32D0);
    v82 = swift_dynamicCast();
    v83 = v191;
    if (!v82)
    {
      v83 = 0;
    }

    v168 = v83;
  }

  else
  {
    sub_1A8717360(&v193);
    v168 = 0;
  }

  v191 = sub_1A88C82E8();
  v192 = v84;
  sub_1A88C8D88();
  if (!*(a1 + 16) || (v85 = sub_1A8602F10(&v193), (v86 & 1) == 0))
  {
    sub_1A8717360(&v193);
    goto LABEL_113;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v85, &v194);
  sub_1A8717360(&v193);
  sub_1A870CCE0(&qword_1EB303320, &qword_1A88E4760);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_113:
    v167 = 0;
    goto LABEL_114;
  }

  v167 = sub_1A881B848(v191);
LABEL_114:
  v191 = sub_1A88C82E8();
  v192 = v87;
  sub_1A88C8D88();
  if (!*(a1 + 16) || (v88 = sub_1A8602F10(&v193), (v89 & 1) == 0))
  {
    sub_1A8717360(&v193);
    goto LABEL_119;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v88, &v194);
  sub_1A8717360(&v193);
  sub_1A870CCE0(&qword_1EB303320, &qword_1A88E4760);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_119:
    v90 = sub_1A8602DD4(MEMORY[0x1E69E7CC0]);
    goto LABEL_120;
  }

  v90 = v191;
LABEL_120:
  v166 = sub_1A87C622C(v90);
  v194 = sub_1A88C82E8();
  v195 = v91;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v92 = sub_1A8602F10(&v193), (v93 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v92, &v194);
    sub_1A8717360(&v193);
    sub_1A870CCE0(&qword_1EB307548, &unk_1A88F32D0);
    v94 = swift_dynamicCast();
    v95 = v191;
    if (!v94)
    {
      v95 = 0;
    }

    v165 = v95;
  }

  else
  {
    sub_1A8717360(&v193);
    v165 = 0;
  }

  v194 = sub_1A88C82E8();
  v195 = v96;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v97 = sub_1A8602F10(&v193), (v98 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v97, &v194);
    sub_1A8717360(&v193);
    sub_1A870CCE0(&qword_1EB307548, &unk_1A88F32D0);
    v99 = swift_dynamicCast();
    v100 = v191;
    if (!v99)
    {
      v100 = 0;
    }

    v164 = v100;
  }

  else
  {
    sub_1A8717360(&v193);
    v164 = 0;
  }

  v194 = sub_1A88C82E8();
  v195 = v101;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v102 = sub_1A8602F10(&v193), (v103 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v102, &v194);
    sub_1A8717360(&v193);
    sub_1A870CCE0(&qword_1EB303100, &qword_1A88E2A90);
    v104 = swift_dynamicCast();
    v105 = v191;
    if (!v104)
    {
      v105 = 0;
    }

    v163 = v105;
  }

  else
  {
    sub_1A8717360(&v193);
    v163 = 0;
  }

  v194 = sub_1A88C82E8();
  v195 = v106;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v107 = sub_1A8602F10(&v193), (v108 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v107, &v194);
    sub_1A8717360(&v193);
    v109 = swift_dynamicCast();
    v110 = v191;
    if (!v109)
    {
      v110 = 0;
    }

    v162 = v110;
    v111 = v109 ^ 1;
  }

  else
  {
    sub_1A8717360(&v193);
    v162 = 0;
    v111 = 1;
  }

  v161 = v111;
  v194 = sub_1A88C82E8();
  v195 = v112;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v113 = sub_1A8602F10(&v193), (v114 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v113, &v194);
    sub_1A8717360(&v193);
    v115 = swift_dynamicCast();
    if (v115)
    {
      v116 = v191;
    }

    else
    {
      v116 = 0;
    }

    v117 = v115 ^ 1;
  }

  else
  {
    sub_1A8717360(&v193);
    v116 = 0;
    v117 = 1;
  }

  v194 = sub_1A88C82E8();
  v195 = v118;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v119 = sub_1A8602F10(&v193), (v120 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v119, &v194);
    sub_1A8717360(&v193);
    if (swift_dynamicCast())
    {
      v121 = v191;
    }

    else
    {
      v121 = 2;
    }
  }

  else
  {
    sub_1A8717360(&v193);
    v121 = 2;
  }

  v122 = sub_1A870CCE0(&unk_1EB3052E0, &qword_1A88EDCD0);
  MEMORY[0x1EEE9AC00](v122 - 8);
  v124 = &v160 - v123;
  v191 = sub_1A88C82E8();
  v192 = v125;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v126 = sub_1A8602F10(&v193), (v127 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v126, &v194);
    sub_1A8717360(&v193);
    v128 = sub_1A88C7478();
    v129 = swift_dynamicCast();
    (*(*(v128 - 8) + 56))(v124, v129 ^ 1u, 1, v128);
  }

  else
  {
    sub_1A8717360(&v193);
    v130 = sub_1A88C7478();
    (*(*(v130 - 8) + 56))(v124, 1, 1, v130);
  }

  v194 = sub_1A88C82E8();
  v195 = v131;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v132 = sub_1A8602F10(&v193), (v133 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v132, &v194);
    sub_1A8717360(&v193);
    sub_1A870CCE0(&qword_1EB303100, &qword_1A88E2A90);
    if (swift_dynamicCast())
    {
      v134 = v191;
    }

    else
    {
      v134 = 0;
    }
  }

  else
  {
    sub_1A8717360(&v193);
    v134 = 0;
  }

  v194 = sub_1A88C82E8();
  v195 = v135;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v136 = sub_1A8602F10(&v193), (v137 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v136, &v194);
    sub_1A8717360(&v193);
    v138 = swift_dynamicCast();
    if (v138)
    {
      v139 = v191;
    }

    else
    {
      v139 = 0;
    }

    if (v138)
    {
      v140 = v192;
    }

    else
    {
      v140 = 0;
    }
  }

  else
  {
    sub_1A8717360(&v193);
    v139 = 0;
    v140 = 0;
  }

  v194 = sub_1A88C82E8();
  v195 = v141;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v142 = sub_1A8602F10(&v193), (v143 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v142, &v194);
    sub_1A8717360(&v193);

    if (swift_dynamicCast())
    {
      v144 = v191;
    }

    else
    {
      v144 = 2;
    }
  }

  else
  {

    sub_1A8717360(&v193);
    v144 = 2;
  }

  v145 = v189;
  *a3 = v190;
  *(a3 + 8) = v145;
  v146 = v187;
  *(a3 + 16) = v188;
  *(a3 + 24) = v146;
  *(a3 + 32) = v186;
  *(a3 + 40) = v185;
  v147 = v183;
  *(a3 + 48) = v184;
  *(a3 + 56) = v147;
  v148 = v181;
  *(a3 + 64) = v182;
  *(a3 + 72) = v148;
  v149 = v179;
  *(a3 + 80) = v180;
  *(a3 + 88) = v149;
  v150 = v177;
  *(a3 + 96) = v178;
  *(a3 + 104) = v150;
  *(a3 + 112) = v176;
  *(a3 + 113) = v175;
  v151 = v173;
  *(a3 + 120) = v174;
  *(a3 + 128) = v151;
  *(a3 + 136) = v172;
  v152 = v170;
  *(a3 + 144) = v171;
  *(a3 + 152) = v152;
  v153 = v168;
  *(a3 + 160) = v169;
  *(a3 + 168) = v153;
  v154 = v166;
  *(a3 + 176) = v167;
  *(a3 + 184) = v154;
  v155 = v164;
  *(a3 + 192) = v165;
  *(a3 + 200) = v155;
  v156 = v162;
  *(a3 + 208) = v163;
  *(a3 + 216) = v156;
  *(a3 + 224) = v161;
  *(a3 + 232) = v116;
  *(a3 + 240) = v117;
  *(a3 + 241) = v121;
  v157 = type metadata accessor for RemoteIntentMessageSummaryInfo(0);
  result = sub_1A8720F5C(v124, a3 + v157[26]);
  *(a3 + v157[27]) = v134;
  v159 = (a3 + v157[28]);
  *v159 = v139;
  v159[1] = v140;
  *(a3 + v157[29]) = v144;
  return result;
}

uint64_t sub_1A88342C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v112 = MEMORY[0x1E69E7CC8];
  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v4;
  v5 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v6 = v2[1];
  if (v6)
  {
    v7 = *v3;
    v110 = v5;
    *&v109 = v7;
    *(&v109 + 1) = v6;
    sub_1A85E99B0(&v109, v108);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, isUniquelyReferenced_nonNull_native);
    sub_1A8717360(v111);
    v112 = v107;
  }

  else
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v9;
  sub_1A88C8D88();
  v10 = v3[3];
  if (v10 >> 60 == 15)
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  else
  {
    v11 = v3[2];
    v110 = MEMORY[0x1E6969088];
    *&v109 = v11;
    *(&v109 + 1) = v10;
    sub_1A85E99B0(&v109, v108);
    sub_1A871DFB8(v11, v10);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v12);
    sub_1A8717360(v111);
    v112 = v107;
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v13;
  sub_1A88C8D88();
  v14 = MEMORY[0x1E69E6530];
  if (v3[5])
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  else
  {
    v15 = v3[4];
    v110 = MEMORY[0x1E69E6530];
    *&v109 = v15;
    sub_1A85E99B0(&v109, v108);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v16);
    sub_1A8717360(v111);
    v112 = v107;
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v17;
  v18 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v19 = v3[7];
  if (v19)
  {
    v20 = v3[6];
    v110 = v18;
    *&v109 = v20;
    *(&v109 + 1) = v19;
    sub_1A85E99B0(&v109, v108);

    v21 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v21);
    sub_1A8717360(v111);
    v112 = v107;
  }

  else
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v22;
  sub_1A88C8D88();
  v23 = v3[9];
  if (v23)
  {
    v24 = v3[8];
    v110 = v18;
    *&v109 = v24;
    *(&v109 + 1) = v23;
    sub_1A85E99B0(&v109, v108);

    v25 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v25);
    sub_1A8717360(v111);
    v112 = v107;
  }

  else
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v26;
  sub_1A88C8D88();
  v27 = v3[11];
  if (v27)
  {
    v28 = v3[10];
    v110 = v18;
    *&v109 = v28;
    *(&v109 + 1) = v27;
    sub_1A85E99B0(&v109, v108);

    v29 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v29);
    sub_1A8717360(v111);
    v112 = v107;
  }

  else
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v30;
  sub_1A88C8D88();
  v31 = v3[13];
  if (v31)
  {
    v32 = v3[12];
    v110 = v18;
    *&v109 = v32;
    *(&v109 + 1) = v31;
    sub_1A85E99B0(&v109, v108);

    v33 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v33);
    sub_1A8717360(v111);
    v112 = v107;
  }

  else
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v34;
  sub_1A88C8D88();
  v35 = *(v3 + 112);
  v36 = MEMORY[0x1E69E6370];
  if (v35 == 2)
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  else
  {
    v110 = MEMORY[0x1E69E6370];
    LOBYTE(v109) = v35 & 1;
    sub_1A85E99B0(&v109, v108);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v37);
    sub_1A8717360(v111);
    v112 = v107;
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v38;
  sub_1A88C8D88();
  v39 = *(v3 + 113);
  if (v39 == 2)
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  else
  {
    v110 = v36;
    LOBYTE(v109) = v39 & 1;
    sub_1A85E99B0(&v109, v108);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v40);
    sub_1A8717360(v111);
    v112 = v107;
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v41;
  sub_1A88C8D88();
  v42 = v3[16];
  if (v42)
  {
    v43 = v3[15];
    v110 = v18;
    *&v109 = v43;
    *(&v109 + 1) = v42;
    sub_1A85E99B0(&v109, v108);

    v44 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v44);
    sub_1A8717360(v111);
    v112 = v107;
  }

  else
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v45;
  sub_1A88C8D88();
  v46 = *(v3 + 136);
  if (v46 == 2)
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  else
  {
    v110 = v36;
    LOBYTE(v109) = v46 & 1;
    sub_1A85E99B0(&v109, v108);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v47);
    sub_1A8717360(v111);
    v112 = v107;
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v48;
  sub_1A88C8D88();
  v49 = v3[19];
  if (v49)
  {
    v50 = v3[18];
    v110 = v18;
    *&v109 = v50;
    *(&v109 + 1) = v49;
    sub_1A85E99B0(&v109, v108);

    v51 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v51);
    sub_1A8717360(v111);
    v112 = v107;
  }

  else
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v52;
  sub_1A88C8D88();
  v53 = v3[20];
  if (v53)
  {
    v110 = sub_1A870CCE0(&qword_1EB307548, &unk_1A88F32D0);
    *&v109 = v53;
    sub_1A85E99B0(&v109, v108);

    v54 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v54);
    sub_1A8717360(v111);
    v112 = v107;
  }

  else
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v55;
  sub_1A88C8D88();
  v56 = v3[21];
  if (v56)
  {
    v110 = sub_1A870CCE0(&qword_1EB307548, &unk_1A88F32D0);
    *&v109 = v56;
    sub_1A85E99B0(&v109, v108);

    v57 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v57);
    sub_1A8717360(v111);
    v112 = v107;
  }

  else
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v58;
  sub_1A88C8D88();
  v59 = v3[22];
  if (v59)
  {
    v60 = sub_1A881ADEC(v59);
    v110 = sub_1A870CCE0(&qword_1EB303320, &qword_1A88E4760);
    *&v109 = v60;
    sub_1A85E99B0(&v109, v108);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v61);
    sub_1A8717360(v111);
    v112 = v107;
  }

  else
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v62;
  sub_1A88C8D88();
  v63 = v3[23];
  if (v63)
  {
    v64 = sub_1A87C5C00(v63);
    v110 = sub_1A870CCE0(&qword_1EB303320, &qword_1A88E4760);
    *&v109 = v64;
    sub_1A85E99B0(&v109, v108);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v65);
    sub_1A8717360(v111);
    v112 = v107;
  }

  else
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v66;
  sub_1A88C8D88();
  v67 = v3[24];
  if (v67)
  {
    v110 = sub_1A870CCE0(&qword_1EB307548, &unk_1A88F32D0);
    *&v109 = v67;
    sub_1A85E99B0(&v109, v108);

    v68 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v68);
    sub_1A8717360(v111);
    v112 = v107;
  }

  else
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v69;
  sub_1A88C8D88();
  v70 = v3[25];
  if (v70)
  {
    v110 = sub_1A870CCE0(&qword_1EB307548, &unk_1A88F32D0);
    *&v109 = v70;
    sub_1A85E99B0(&v109, v108);

    v71 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v71);
    sub_1A8717360(v111);
    v112 = v107;
  }

  else
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v72;
  sub_1A88C8D88();
  v73 = v3[26];
  if (v73)
  {
    v110 = sub_1A870CCE0(&qword_1EB303100, &qword_1A88E2A90);
    *&v109 = v73;
    sub_1A85E99B0(&v109, v108);

    v74 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v74);
    sub_1A8717360(v111);
    v112 = v107;
  }

  else
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v75;
  sub_1A88C8D88();
  if (v3[28])
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  else
  {
    v76 = v3[27];
    v110 = v14;
    *&v109 = v76;
    sub_1A85E99B0(&v109, v108);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v77);
    sub_1A8717360(v111);
    v112 = v107;
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v78;
  sub_1A88C8D88();
  if (v3[30])
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  else
  {
    v79 = v3[29];
    v110 = v14;
    *&v109 = v79;
    sub_1A85E99B0(&v109, v108);
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v80);
    sub_1A8717360(v111);
    v112 = v107;
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v81;
  sub_1A88C8D88();
  v82 = *(v3 + 241);
  if (v82 == 2)
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  else
  {
    v110 = v36;
    LOBYTE(v109) = v82 & 1;
    sub_1A85E99B0(&v109, v108);
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v83);
    sub_1A8717360(v111);
    v112 = v107;
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v84;
  sub_1A88C8D88();
  v85 = sub_1A870CCE0(&unk_1EB3052E0, &qword_1A88EDCD0);
  MEMORY[0x1EEE9AC00](v85 - 8);
  v87 = &v106 - v86;
  v88 = type metadata accessor for RemoteIntentMessageSummaryInfo(0);
  sub_1A8721348(v3 + v88[26], v87);
  v89 = sub_1A88C7478();
  v90 = *(v89 - 8);
  if ((*(v90 + 48))(v87, 1, v89) == 1)
  {
    sub_1A85EF638(v87, &unk_1EB3052E0, &qword_1A88EDCD0);
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  else
  {
    v110 = v89;
    v91 = sub_1A871E00C(&v109);
    (*(v90 + 32))(v91, v87, v89);
    sub_1A85E99B0(&v109, v108);
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v92);
    sub_1A8717360(v111);
    v112 = v107;
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v93;
  sub_1A88C8D88();
  v94 = *(v3 + v88[27]);
  if (v94)
  {
    v110 = sub_1A870CCE0(&qword_1EB303100, &qword_1A88E2A90);
    *&v109 = v94;
    sub_1A85E99B0(&v109, v108);

    v95 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v95);
    sub_1A8717360(v111);
    v112 = v107;
  }

  else
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v96;
  v97 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v98 = (v3 + v88[28]);
  v99 = v98[1];
  if (v99)
  {
    v100 = *v98;
    v110 = v97;
    *&v109 = v100;
    *(&v109 + 1) = v99;
    sub_1A85E99B0(&v109, v108);

    v101 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v101);
    sub_1A8717360(v111);
    v112 = v107;
  }

  else
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
  }

  *&v109 = sub_1A88C82E8();
  *(&v109 + 1) = v102;
  sub_1A88C8D88();
  v103 = *(v3 + v88[29]);
  if (v103 == 2)
  {
    sub_1A88BEFF8(v111, &v109);
    sub_1A85EF638(&v109, &qword_1EB3057B0, &unk_1A88E27B0);
    sub_1A8717360(v111);
    return v112;
  }

  else
  {
    v110 = v36;
    LOBYTE(v109) = v103 & 1;
    sub_1A85E99B0(&v109, v108);
    v105 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v112;
    sub_1A87AC424(v108, v111, v105);
    sub_1A8717360(v111);
    return v107;
  }
}

unint64_t sub_1A8835804()
{
  result = qword_1EB307568;
  if (!qword_1EB307568)
  {
    result = swift_getWitnessTable(byte_1A88F3424, &type metadata for RemoteIntentMessageSummaryInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB307568);
  }

  return result;
}

unint64_t sub_1A8835858()
{
  result = qword_1EB307578;
  if (!qword_1EB307578)
  {
    result = swift_getWitnessTable(byte_1A88F1CD8, &type metadata for RemoteIntentMessageEditHistory, v0, v1);
    atomic_store(result, &qword_1EB307578);
  }

  return result;
}

unint64_t sub_1A88358AC()
{
  result = qword_1EB307580;
  if (!qword_1EB307580)
  {
    result = swift_getWitnessTable(byte_1A88EB4D0, &type metadata for RemoteIntentMessageOriginalTextRanges, v0, v1);
    atomic_store(result, &qword_1EB307580);
  }

  return result;
}

uint64_t sub_1A8835900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteIntentMessageSummaryInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8835964(uint64_t a1)
{
  v2 = type metadata accessor for RemoteIntentMessageSummaryInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A88359C0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A871DFB8(result, a2);
  }

  return result;
}

uint64_t sub_1A88359D4(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_1A870CD28(&qword_1EB307548, &unk_1A88F32D0);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A8835A40()
{
  result = qword_1EB307598;
  if (!qword_1EB307598)
  {
    result = swift_getWitnessTable(byte_1A88F1CB0, &type metadata for RemoteIntentMessageEditHistory, v0, v1);
    atomic_store(result, &qword_1EB307598);
  }

  return result;
}

unint64_t sub_1A8835A94()
{
  result = qword_1EB3075A0;
  if (!qword_1EB3075A0)
  {
    result = swift_getWitnessTable(byte_1A88EB4A8, &type metadata for RemoteIntentMessageOriginalTextRanges, v0, v1);
    atomic_store(result, &qword_1EB3075A0);
  }

  return result;
}

unint64_t sub_1A8835AFC()
{
  result = qword_1EB3075A8;
  if (!qword_1EB3075A8)
  {
    result = swift_getWitnessTable(aMzzf, &type metadata for RemoteIntentMessageSummaryInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB3075A8);
  }

  return result;
}

unint64_t sub_1A8835B54()
{
  result = qword_1EB3075B0;
  if (!qword_1EB3075B0)
  {
    result = swift_getWitnessTable(byte_1A88F336C, &type metadata for RemoteIntentMessageSummaryInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB3075B0);
  }

  return result;
}

unint64_t sub_1A8835BAC()
{
  result = qword_1EB3075B8;
  if (!qword_1EB3075B8)
  {
    result = swift_getWitnessTable(byte_1A88F3394, &type metadata for RemoteIntentMessageSummaryInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB3075B8);
  }

  return result;
}

uint64_t sub_1A8835C00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A891E0E0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x75426E6967756C70 && a2 == 0xEE004449656C646ELL || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A891E100 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A891E120 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A891E140 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A891E160 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x526E656542736168 && a2 == 0xEE00646569727465 || (sub_1A88C9398() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A891E180 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A891E1A0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001A891E1C0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A891E1E0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A891E200 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7473694874696465 && a2 == 0xEB0000000079726FLL || (sub_1A88C9398() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A891E220 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001A891E240 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001A891E270 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A891E2A0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x65746174536D6D63 && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x74657373416D6D63 && a2 == 0xEE0074657366664FLL || (sub_1A88C9398() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A891E2C0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001A891E2E0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001A891E310 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A891E340 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001A891E360 == a2)
  {

    return 25;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 25;
    }

    else
    {
      return 26;
    }
  }
}

IMChip_optional __swiftcall IMChip.init(dictionary:)(Swift::OpaquePointer dictionary)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1A88C8188();

  v3 = [v1 initWithDictionary_];

  v7 = v3;
  result.value.chip = v5;
  result.value.type = v4;
  result.value.super.isa = v7;
  result.is_nil = v6;
  return result;
}

id IMChip.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16))
  {
    v4 = sub_1A85F5F40(1701869940, 0xE400000000000000);
    if (v5)
    {
      sub_1A85F1028(*(a1 + 56) + 32 * v4, v13);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16) && (v6 = sub_1A85F5F40(1885956195, 0xE400000000000000), (v7 & 1) != 0))
        {
          sub_1A85F1028(*(a1 + 56) + 32 * v6, v13);

          sub_1A870CCE0(&unk_1EB3091D0, &qword_1A88EAC10);
          if (swift_dynamicCast())
          {
            v8 = sub_1A88C8188();

LABEL_12:
            v10 = [objc_opt_self() chipWithType:v12 dictionary:v8];

            v11 = [v2 initWithType:v12 chip:v10];
            swift_unknownObjectRelease();
            return v11;
          }
        }

        else
        {
        }

        v8 = 0;
        goto LABEL_12;
      }
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1A8836778()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303B58, &qword_1A88E4F98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E2770;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  v3 = [v1 type];
  v4 = MEMORY[0x1E69E6530];
  *(inited + 48) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 1885956195;
  *(inited + 88) = 0xE400000000000000;
  v5 = [v1 chip];
  if (v5)
  {
    v6 = [v5 dictionaryRepresentation];
    swift_unknownObjectRelease();
    v7 = sub_1A88C81A8();

    v5 = sub_1A870CCE0(&unk_1EB3091D0, &qword_1A88EAC10);
  }

  else
  {
    v7 = 0;
    *(inited + 104) = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v7;
  *(inited + 120) = v5;
  v8 = sub_1A8738CF0(inited);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB304A50, &qword_1A88E4FA0);
  swift_arrayDestroy();
  v9 = sub_1A8895CC8(v8);

  return v9;
}

BOOL IMChip.isEqual(_:)(uint64_t a1)
{
  sub_1A87303E8(a1, v6);
  if (v7)
  {
    type metadata accessor for IMChip();
    if (swift_dynamicCast())
    {
      v2 = [v1 type];
      v3 = [v5 type];

      return v2 == v3;
    }
  }

  else
  {
    sub_1A860169C(v6);
  }

  return 0;
}

uint64_t IMChip.hash.getter()
{
  sub_1A88C9588();
  MEMORY[0x1AC56FE00]([v0 type]);
  return sub_1A88C9568();
}

IMChip __swiftcall IMChip.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.chip = v3;
  result.type = v2;
  result.super.isa = v1;
  return result;
}

unint64_t type metadata accessor for IMChip()
{
  result = qword_1EB3075D0;
  if (!qword_1EB3075D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB3075D0);
  }

  return result;
}

id sub_1A8836CB8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (!a1)
  {
    v2 = off_1E7824778;
    goto LABEL_7;
  }

  if (a1 == 1)
  {
    v2 = off_1E7824768;
LABEL_7:
    v4 = objc_allocWithZone(*v2);
    v5 = sub_1A88C8188();
    v6 = [v4 initWithDictionary_];

    return v6;
  }

  return 0;
}

uint64_t sub_1A8836D78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74736575716572;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x74736575716572;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1A88C9398();
  }

  return v8 & 1;
}

uint64_t sub_1A8836E14()
{
  sub_1A88C9528();
  sub_1A88C8268();

  return sub_1A88C9578();
}

uint64_t sub_1A8836E8C(uint64_t a1)
{
  sub_1A88C8268();
}

uint64_t sub_1A8836EF0(uint64_t a1)
{
  sub_1A88C9528();
  sub_1A88C8268();

  return sub_1A88C9578();
}

uint64_t sub_1A8836F64@<X0>(char *a2@<X8>)
{
  v3 = sub_1A88C9028();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1A8836FC4(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x74736575716572;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1A8836FF8()
{
  if (*v0)
  {
    return 0x74736575716572;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1A8837028@<X0>(char *a3@<X8>)
{
  v4 = sub_1A88C9028();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1A883708C(uint64_t a1)
{
  v2 = sub_1A8837378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A88370C8(uint64_t a1)
{
  v2 = sub_1A8837378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteIntentRequestEncoding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB3075D8, &qword_1A88F3480);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-1] - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A8837378();
  sub_1A88C95A8();
  if (!v2)
  {
    LOBYTE(v19[0]) = 0;
    v9 = sub_1A88C9108();
    v11 = v10;
    if (qword_1EB3021C0 != -1)
    {
      swift_once();
    }

    v12 = off_1EB305578;
    if (*(off_1EB305578 + 2) && (v13 = sub_1A85F5F40(v9, v11), (v14 & 1) != 0))
    {
      v15 = v13;

      v18 = *(v12[7] + 16 * v15);
      v20 = 1;
      *&v19[3] = v18;
      sub_1A871E00C(v19);
      sub_1A88C9158();
      (*(v6 + 8))(v8, v5);
      sub_1A860D56C(v19, a2);
    }

    else
    {
      sub_1A88375FC();
      swift_allocError();
      *v16 = v9;
      v16[1] = v11;
      swift_willThrow();
      (*(v6 + 8))(v8, v5);
    }
  }

  return sub_1A85F1084(a1);
}

unint64_t sub_1A8837378()
{
  result = qword_1EB3075E0;
  if (!qword_1EB3075E0)
  {
    result = swift_getWitnessTable(aKzf, &type metadata for RemoteIntentRequestEncoding.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB3075E0);
  }

  return result;
}

uint64_t RemoteIntentRequestEncoding.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB3075F0, &qword_1A88F3488);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-1] - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A8837378();
  sub_1A88C95C8();
  sub_1A86061B4(v3, v13);
  sub_1A870C278(v13, v13[3]);
  DynamicType = swift_getDynamicType();
  v10 = v13[4];
  sub_1A85F1084(v13);
  (*(v10 + 48))(DynamicType, v10);
  LOBYTE(v13[0]) = 0;
  sub_1A88C9278();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    sub_1A870C278(v3, v3[3]);
    LOBYTE(v13[0]) = 1;
    sub_1A88C92C8();
    return (*(v6 + 8))(v8, v5);
  }
}

unint64_t sub_1A88375FC()
{
  result = qword_1EB3075E8;
  if (!qword_1EB3075E8)
  {
    result = swift_getWitnessTable(aEizf, &type metadata for RemoteIntentRequestEncoding.DecodingError, v0, v1);
    atomic_store(result, &qword_1EB3075E8);
  }

  return result;
}

unint64_t sub_1A8837650(uint64_t a1)
{
  *(a1 + 8) = sub_1A877B810();
  result = sub_1A877B7BC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A88376B4()
{
  result = qword_1EB3075F8;
  if (!qword_1EB3075F8)
  {
    result = swift_getWitnessTable(byte_1A88F3644, &type metadata for RemoteIntentRequestEncoding.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB3075F8);
  }

  return result;
}

unint64_t sub_1A883770C()
{
  result = qword_1EB307600;
  if (!qword_1EB307600)
  {
    result = swift_getWitnessTable(aUezf_0, &type metadata for RemoteIntentRequestEncoding.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB307600);
  }

  return result;
}

unint64_t sub_1A8837764()
{
  result = qword_1EB307608;
  if (!qword_1EB307608)
  {
    result = swift_getWitnessTable(byte_1A88F35A4, &type metadata for RemoteIntentRequestEncoding.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB307608);
  }

  return result;
}

id sub_1A88377B8()
{
  IMPreviewConstraintsZero(&v12);
  v1 = v12;
  v2 = v14;
  v3 = v15;
  v4 = v16;
  v5 = v17;
  if ((v0->i8[8] & 1) == 0)
  {
    v1 = v0->i64[0];
  }

  v6 = vdup_n_s32(v0[2].u8[0]);
  v7.i64[0] = v6.u32[0];
  v7.i64[1] = v6.u32[1];
  v8 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v7, 0x3FuLL)), v13, v0[1]);
  if ((v0[3].i8[0] & 1) == 0)
  {
    v2 = v0[2].i64[1];
  }

  if (v0[3].i8[1] != 2)
  {
    v3 = v0[3].i8[1];
  }

  if (v0[3].i8[2] != 2)
  {
    v4 = v0[3].i8[2];
  }

  if (v0[3].i8[3] != 2)
  {
    v5 = v0[3].i8[3];
  }

  v12 = v1;
  v13 = v8;
  v14 = v2;
  v15 = v3 & 1;
  v16 = v4 & 1;
  v17 = v5 & 1;
  result = IMPreviewConstraintsDictionaryFromConstraint(&v12);
  if (result)
  {
    v10 = result;
    v11 = sub_1A88C81A8();

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A88378C4(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB307610, &qword_1A88F37C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A8837EC8();
  sub_1A88C95C8();
  *&v10 = *v3;
  BYTE8(v10) = *(v3 + 8);
  v12 = 0;
  sub_1A8837F1C();
  sub_1A88C9228();
  if (!v2)
  {
    v10 = *(v3 + 16);
    v11 = *(v3 + 32);
    v12 = 1;
    type metadata accessor for CGSize(0);
    sub_1A88384E8(&qword_1EB307628, MEMORY[0x1E695EF88]);
    sub_1A88C9228();
    *&v10 = *(v3 + 40);
    BYTE8(v10) = *(v3 + 48);
    v12 = 2;
    sub_1A88C9228();
    LOBYTE(v10) = 3;
    sub_1A88C91D8();
    LOBYTE(v10) = 4;
    sub_1A88C91D8();
    LOBYTE(v10) = 5;
    sub_1A88C91D8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A8837B4C()
{
  v1 = *v0;
  v2 = 0x646957785078616DLL;
  v3 = 0x656B636974537369;
  v4 = 0xD000000000000014;
  if (v1 == 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 0x656C616373;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A8837C10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A8837F70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A8837C38(uint64_t a1)
{
  v2 = sub_1A8837EC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8837C74(uint64_t a1)
{
  v2 = sub_1A8837EC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1A8837CB0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1A8838184(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

__n128 sub_1A8837D18@<Q0>(__n128 *a2@<X8>)
{
  v3 = sub_1A88C8188();

  IMPreviewConstraintsFromDictionary(v3, &v11);
  v4 = v11;
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v10 = v12;

  a2->n128_u64[0] = v4;
  a2->n128_u8[8] = 0;
  result = v10;
  a2[1] = v10;
  a2[2].n128_u8[0] = 0;
  a2[2].n128_u64[1] = v5;
  a2[3].n128_u8[0] = 0;
  a2[3].n128_u8[1] = v6;
  a2[3].n128_u8[2] = v7;
  a2[3].n128_u8[3] = v8;
  return result;
}

__n128 sub_1A8837DE8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A8837E04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 52))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 49);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A8837E64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *(result + 49) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1A8837EC8()
{
  result = qword_1EB307618;
  if (!qword_1EB307618)
  {
    result = swift_getWitnessTable(aIzfD, &type metadata for RemoteIntentPreviewGenerationConstraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB307618);
  }

  return result;
}

unint64_t sub_1A8837F1C()
{
  result = qword_1EB307620;
  if (!qword_1EB307620)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E7DF8], MEMORY[0x1E69E7DE0], v0, v1);
    atomic_store(result, &qword_1EB307620);
  }

  return result;
}

uint64_t sub_1A8837F70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646957785078616DLL && a2 == 0xEA00000000006874;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A891E400 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656B636974537369 && a2 == 0xE900000000000072 || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A891E420 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A891E440 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1A8838184@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB307630, &qword_1A88F37C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A8837EC8();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  v31 = 0;
  sub_1A8838494();
  sub_1A88C90B8();
  v9 = v25;
  v30 = v26;
  type metadata accessor for CGSize(0);
  v31 = 1;
  sub_1A88384E8(&qword_1EB307640, MEMORY[0x1E695EFA0]);
  sub_1A88C90B8();
  v23 = v9;
  v24 = v25;
  v10 = v26;
  v29 = v27;
  v31 = 2;
  sub_1A88C90B8();
  v22 = v10;
  v11 = v24;
  v12 = v25;
  v28 = v26;
  LOBYTE(v25) = 3;
  v21 = sub_1A88C9068();
  LOBYTE(v25) = 4;
  v20 = sub_1A88C9068();
  LOBYTE(v25) = 5;
  v13 = sub_1A88C9068();
  (*(v6 + 8))(v8, v5);
  v14 = v30;
  v15 = v29;
  v16 = v28;
  result = sub_1A85F1084(a1);
  v18 = v22;
  *a2 = v23;
  *(a2 + 8) = v14;
  *(a2 + 16) = v11;
  *(a2 + 24) = v18;
  *(a2 + 32) = v15;
  *(a2 + 40) = v12;
  *(a2 + 48) = v16;
  LOBYTE(v18) = v20;
  *(a2 + 49) = v21;
  *(a2 + 50) = v18;
  *(a2 + 51) = v13;
  return result;
}

unint64_t sub_1A8838494()
{
  result = qword_1EB307638;
  if (!qword_1EB307638)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E7E18], MEMORY[0x1E69E7DE0], v0, v1);
    atomic_store(result, &qword_1EB307638);
  }

  return result;
}

uint64_t sub_1A88384E8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A8838540()
{
  result = qword_1EB307648;
  if (!qword_1EB307648)
  {
    result = swift_getWitnessTable(byte_1A88F386C, &type metadata for RemoteIntentPreviewGenerationConstraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB307648);
  }

  return result;
}

unint64_t sub_1A8838598()
{
  result = qword_1EB307650;
  if (!qword_1EB307650)
  {
    result = swift_getWitnessTable(byte_1A88F37DC, &type metadata for RemoteIntentPreviewGenerationConstraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB307650);
  }

  return result;
}

unint64_t sub_1A88385F0()
{
  result = qword_1EB307658;
  if (!qword_1EB307658)
  {
    result = swift_getWitnessTable(aZf_9, &type metadata for RemoteIntentPreviewGenerationConstraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB307658);
  }

  return result;
}

__n128 sub_1A8838644(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A8838660(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A88386A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A8838704(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A8838724, 0, 0);
}

uint64_t sub_1A8838724()
{
  v1 = v0[20];
  v10 = v0[19];
  v11 = *(v1 + 24);
  v2 = *(v1 + 48);
  v3 = sub_1A88C82A8();
  v0[21] = v3;
  v4 = sub_1A88C85E8();
  v0[22] = v4;
  v5 = sub_1A88C85E8();
  v0[23] = v5;
  v6 = *(v1 + 40);
  v7 = *(v1 + 41);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1A88388C8;
  v8 = swift_continuation_init();
  v0[17] = sub_1A870CCE0(&qword_1EB3076C0, &qword_1A88F3AA8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A8838A28;
  v0[13] = &unk_1F1BB4F58;
  v0[14] = v8;
  [v10 markChatAsSpamWithGUID:v3 chatIdentifiers:v4 style:v11 services:v5 isAutoReport:v6 isJunkReportedToCarrier:v7 reportReason:v2 reply:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A88388C8()
{

  return MEMORY[0x1EEE6DFA0](sub_1A88389A8, 0, 0);
}

uint64_t sub_1A88389A8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1A8838A28(uint64_t a1, uint64_t a2)
{
  **(*(*sub_1A870C278((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

uint64_t sub_1A8838A84(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB3076D8, &qword_1A88F3AC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A8839D5C();
  sub_1A88C95C8();
  LOBYTE(v11) = 0;
  sub_1A88C9278();
  if (!v2)
  {
    v11 = *(v3 + 16);
    HIBYTE(v10) = 1;
    sub_1A870CCE0(&qword_1EB303100, &qword_1A88E2A90);
    sub_1A8716048(&qword_1EB303120, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1A88C92C8();
    LOBYTE(v11) = 2;
    sub_1A88C92F8();
    v11 = *(v3 + 32);
    HIBYTE(v10) = 3;
    sub_1A88C92C8();
    LOBYTE(v11) = 4;
    sub_1A88C9288();
    LOBYTE(v11) = 5;
    sub_1A88C9288();
    LOBYTE(v11) = 6;
    sub_1A88C92B8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A8838D14()
{
  v1 = *v0;
  v2 = 0x4449554774616863;
  v3 = 0xD000000000000017;
  if (v1 != 5)
  {
    v3 = 0x655274726F706572;
  }

  v4 = 0x7365636976726573;
  if (v1 != 3)
  {
    v4 = 0x65526F7475417369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E65644974616863;
  if (v1 != 1)
  {
    v5 = 0x6C79745374616863;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}