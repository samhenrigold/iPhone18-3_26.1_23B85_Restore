uint64_t Embedder.embeddingModel.getter(uint64_t a1)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_10001D574();
}

uint64_t sub_100001D04()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() service];
  v1[1] = 0;
  v1[2] = 0;
  *v1 = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t MADTextEmbedder.init(version:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100001DAC, 0, 0);
}

uint64_t sub_100001DAC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  *v3 = [objc_opt_self() service];
  v3[1] = v1;
  v3[2] = v2;
  v4 = v0[1];

  return v4();
}

uint64_t MADTextEmbedder.embed(text:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  *(v3 + 56) = *v2;
  *(v3 + 64) = *(v2 + 8);
  return _swift_task_switch(sub_100001E6C, 0, 0);
}

uint64_t sub_100001E6C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 24) = *(v0 + 64);
  sub_10000210C(&qword_100028260, &unk_10001EA90);
  v3 = swift_allocObject();
  *(v0 + 80) = v3;
  *(v3 + 16) = xmmword_10001DFC0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_100001F60;

  return MADTextEmbedder.embed(texts:)(v3);
}

uint64_t sub_100001F60(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_100002080, 0, 0);
}

void sub_100002080()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    if (!*(v1 + 16))
    {
      __break(1u);
      return;
    }

    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  v3(v2);
}

uint64_t sub_10000210C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t MADTextEmbedder.embed(texts:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v1 + 1);
  return _swift_task_switch(sub_100002180, 0, 0);
}

uint64_t sub_100002180()
{
  v1 = *(v0 + 48);
  v7 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = sub_10000210C(&qword_100028268, &qword_10001E048);
  *v4 = v0;
  v4[1] = sub_1000022A4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0x6574286465626D65, 0xED0000293A737478, sub_100002C34, v3, v5);
}

uint64_t sub_1000022A4()
{

  return _swift_task_switch(sub_1000023BC, 0, 0);
}

uint64_t sub_1000023BC()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v2 = sub_10001D2B4();
    sub_1000047E8(v2, qword_10002A138);
    v3 = sub_10001D294();
    v4 = sub_10001D734();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed at generating embeddings.", v5, 2u);
    }
  }

  v6 = *(v0 + 8);

  return v6(v1);
}

void sub_1000024DC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v52 = a1;
  v8 = sub_10000210C(&qword_100028320, &qword_10001E258);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v48 - v11;
  v13 = [objc_allocWithZone(MADTextEmbeddingRequest) init];
  [v13 setExtendedContextLength:1];
  if (!a4)
  {
    goto LABEL_8;
  }

  v50 = a4;
  v51 = v9;
  v14 = a2;
  v16 = sub_10001D584();
  v17 = v15;
  if (v16 == 3425357 && v15 == 0xE300000000000000 || (sub_10001D8E4() & 1) != 0)
  {

    [v13 setVersion:4];
LABEL_6:
    a2 = v14;
LABEL_7:
    v9 = v51;
LABEL_8:
    sub_10000210C(&qword_100028328, &unk_10001E260);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10001DFD0;
    *(v18 + 32) = v13;
    sub_100006478(0, &qword_100028330, MADTextRequest_ptr);
    v19 = v13;
    isa = sub_10001D664().super.isa;

    v21 = sub_10001D664().super.isa;
    (*(v9 + 16))(v12, v52, v8);
    v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v23 = swift_allocObject();
    (*(v9 + 32))(v23 + v22, v12, v8);
    *(v23 + ((v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;
    v58 = sub_1000059B0;
    v59 = v23;
    aBlock = _NSConcreteStackBlock;
    v55 = 1107296256;
    v56 = sub_100003698;
    v57 = &unk_100025328;
    v24 = _Block_copy(&aBlock);
    v25 = v19;

    [a2 performRequests:isa text:v21 identifier:0 completionHandler:v24];
    _Block_release(v24);

    return;
  }

  if (v16 == 3490893 && v17 == 0xE300000000000000 || (sub_10001D8E4() & 1) != 0)
  {

    [v13 setVersion:5];
    goto LABEL_6;
  }

  if (v16 == 3556429 && v17 == 0xE300000000000000 || (v49 = sub_10001D8E4(), v26 = v50, , , (v49 & 1) != 0))
  {

    [v13 setVersion:7];
    a2 = v14;
    goto LABEL_7;
  }

  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = a3 & 0xFFFFFFFFFFFFLL;
    a2 = v14;
    if ((a3 & 0xFFFFFFFFFFFFLL) != 0)
    {
      if ((v26 & 0x1000000000000000) == 0)
      {
        if ((a3 & 0x1000000000000000) != 0)
        {
          v28 = ((v26 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v28 = sub_10001D7B4();
        }

        v9 = v51;
        v29 = *v28;
        if (v29 == 43)
        {
          if (v27 >= 1)
          {
            if (v28)
            {
              v30 = v27 - 1;
              if (v27 != 1)
              {
                v31 = 0;
                v37 = v28 + 1;
                while (1)
                {
                  v38 = *v37 - 48;
                  if (v38 > 9)
                  {
                    goto LABEL_79;
                  }

                  if (!is_mul_ok(v31, 0xAuLL))
                  {
                    goto LABEL_79;
                  }

                  v34 = __CFADD__(10 * v31, v38);
                  v31 = 10 * v31 + v38;
                  if (v34)
                  {
                    goto LABEL_79;
                  }

                  ++v37;
                  if (!--v30)
                  {
                    goto LABEL_85;
                  }
                }
              }
            }

LABEL_80:
            v31 = 0;
            v44 = v27 == 1;
            goto LABEL_82;
          }

          goto LABEL_93;
        }

        if (v29 != 45)
        {
          if (v28 && v27)
          {
            v31 = 0;
            while (1)
            {
              v41 = *v28 - 48;
              if (v41 > 9)
              {
                goto LABEL_79;
              }

              if (!is_mul_ok(v31, 0xAuLL))
              {
                goto LABEL_79;
              }

              v34 = __CFADD__(10 * v31, v41);
              v31 = 10 * v31 + v41;
              if (v34)
              {
                goto LABEL_79;
              }

              ++v28;
              if (!--v27)
              {
                LOBYTE(v30) = 0;
                goto LABEL_85;
              }
            }
          }

          v31 = 0;
          v44 = v27 == 0;
LABEL_82:
          LOBYTE(v30) = v44;
LABEL_85:
          v53 = v30;
          v45 = v30;

          if (v45)
          {
            goto LABEL_8;
          }

LABEL_86:
          [v13 setVersion:v31];
          goto LABEL_8;
        }

        if (v27 >= 1)
        {
          if (v28)
          {
            v30 = v27 - 1;
            if (v27 != 1)
            {
              v31 = 0;
              v32 = v28 + 1;
              while (1)
              {
                v33 = *v32 - 48;
                if (v33 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v31, 0xAuLL))
                {
                  break;
                }

                v34 = 10 * v31 >= v33;
                v31 = 10 * v31 - v33;
                if (!v34)
                {
                  break;
                }

                ++v32;
                if (!--v30)
                {
                  goto LABEL_85;
                }
              }

LABEL_79:
              v31 = 0;
              LOBYTE(v30) = 1;
              goto LABEL_85;
            }
          }

          goto LABEL_80;
        }

        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

LABEL_88:
      v31 = sub_100005A80(a3, v26, 10);
      v47 = v46;

      v9 = v51;
      if (v47)
      {
        goto LABEL_8;
      }

      goto LABEL_86;
    }

LABEL_87:

    goto LABEL_7;
  }

  a2 = v14;
  if ((v26 & 0xF00000000000000) == 0)
  {
    goto LABEL_87;
  }

  if ((v26 & 0x1000000000000000) != 0)
  {
    goto LABEL_88;
  }

  v30 = HIBYTE(v26) & 0xF;
  aBlock = a3;
  v55 = v26 & 0xFFFFFFFFFFFFFFLL;
  if (a3 != 43)
  {
    v9 = v51;
    if (a3 != 45)
    {
      if (v30)
      {
        v31 = 0;
        p_aBlock = &aBlock;
        while (1)
        {
          v43 = *p_aBlock - 48;
          if (v43 > 9)
          {
            break;
          }

          if (!is_mul_ok(v31, 0xAuLL))
          {
            break;
          }

          v34 = __CFADD__(10 * v31, v43);
          v31 = 10 * v31 + v43;
          if (v34)
          {
            break;
          }

          p_aBlock = (p_aBlock + 1);
          if (!--v30)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_79;
    }

    if (v30)
    {
      if (--v30)
      {
        v31 = 0;
        v35 = &aBlock + 1;
        while (1)
        {
          v36 = *v35 - 48;
          if (v36 > 9)
          {
            break;
          }

          if (!is_mul_ok(v31, 0xAuLL))
          {
            break;
          }

          v34 = 10 * v31 >= v36;
          v31 = 10 * v31 - v36;
          if (!v34)
          {
            break;
          }

          ++v35;
          if (!--v30)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_79;
    }

    goto LABEL_92;
  }

  v9 = v51;
  if (v30)
  {
    if (--v30)
    {
      v31 = 0;
      v39 = &aBlock + 1;
      while (1)
      {
        v40 = *v39 - 48;
        if (v40 > 9)
        {
          break;
        }

        if (!is_mul_ok(v31, 0xAuLL))
        {
          break;
        }

        v34 = __CFADD__(10 * v31, v40);
        v31 = 10 * v31 + v40;
        if (v34)
        {
          break;
        }

        ++v39;
        if (!--v30)
        {
          goto LABEL_85;
        }
      }
    }

    goto LABEL_79;
  }

LABEL_94:
  __break(1u);
}

void sub_100002C40(int a1, uint64_t a2, int a3, id a4)
{
  if (!a2)
  {
    if (a1 == -1 || (v10 = [a4 embeddingResults]) == 0)
    {
      if (qword_100028248 != -1)
      {
        swift_once();
      }

      v22 = sub_10001D2B4();
      sub_1000047E8(v22, qword_10002A138);
      v23 = sub_10001D294();
      v24 = sub_10001D734();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "No results returned by MAD service.", v25, 2u);
      }

      v35 = 0;
      goto LABEL_37;
    }

    v11 = v10;
    sub_100006478(0, &qword_100028338, MADTextEmbeddingResult_ptr);
    v12 = sub_10001D674();

    if (v12 >> 62)
    {
      v13 = sub_10001D7C4();
      if (v13)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_11:
        if (v13 < 1)
        {
          __break(1u);
          return;
        }

        v14 = 0;
        v15 = _swiftEmptyArrayStorage;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v16 = sub_10001D7A4();
          }

          else
          {
            v16 = *(v12 + 8 * v14 + 32);
          }

          v17 = v16;
          sub_100003168();
          if (v18)
          {
            v19 = v18;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_100004820(0, v15[2] + 1, 1, v15);
            }

            v21 = v15[2];
            v20 = v15[3];
            if (v21 >= v20 >> 1)
            {
              v15 = sub_100004820((v20 > 1), v21 + 1, 1, v15);
            }

            v15[2] = v21 + 1;
            v15[v21 + 4] = v19;
          }

          else
          {
          }

          ++v14;
        }

        while (v13 != v14);
        goto LABEL_31;
      }
    }

    v15 = _swiftEmptyArrayStorage;
LABEL_31:
    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v26 = sub_10001D2B4();
    sub_1000047E8(v26, qword_10002A138);

    v27 = sub_10001D294();
    v28 = sub_10001D724();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35 = v30;
      *v29 = 136315138;
      v31 = sub_10001D684();
      v33 = v32;

      v34 = sub_100004CF4(v31, v33, &v35);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Found result: %s", v29, 0xCu);
      sub_100005490(v30);
    }

    else
    {
    }

    v35 = v15;
LABEL_37:
    sub_10000210C(&qword_100028320, &qword_10001E258);
    sub_10001D6C4();
    return;
  }

  swift_errorRetain();
  if (qword_100028248 != -1)
  {
    swift_once();
  }

  v4 = sub_10001D2B4();
  sub_1000047E8(v4, qword_10002A138);
  swift_errorRetain();
  v5 = sub_10001D294();
  v6 = sub_10001D734();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed at calling MAD service: %@", v7, 0xCu);
    sub_1000064C0(v8, &qword_100028340, &qword_10001E850);
  }

  v35 = 0;
  sub_10000210C(&qword_100028320, &qword_10001E258);
  sub_10001D6C4();
}

void sub_100003168()
{
  v1 = [v0 embedding];
  v2 = [v1 data];

  v3 = sub_10001CF14();
  v5 = v4;

  v6 = [v0 embedding];
  v7 = [v6 type];

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = [v0 embedding];
    v6 = [v8 count];

    if (qword_100028248 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v9 = sub_10001D2B4();
  sub_1000047E8(v9, qword_10002A138);
  v10 = sub_10001D294();
  v11 = sub_10001D724();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v10, v11, "Embedding type: %lu", v12, 0xCu);
  }

  if (v7 == 2)
  {
    v14 = v5 >> 62;
    if ((v5 >> 62) <= 1)
    {
      if (v14)
      {
        LODWORD(v15) = HIDWORD(v3) - v3;
        if (__OFSUB__(HIDWORD(v3), v3))
        {
LABEL_51:
          __break(1u);
          return;
        }

        v15 = v15;
      }

      else
      {
        v15 = BYTE6(v5);
      }

      goto LABEL_37;
    }

LABEL_20:
    if (v14 == 2)
    {
      v23 = *(v3 + 16);
      v22 = *(v3 + 24);
      _VF = __OFSUB__(v22, v23);
      v15 = v22 - v23;
      if (_VF)
      {
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      v15 = 0;
    }

LABEL_37:
    v36 = v15 / 4;
    sub_1000068E4(v3, v5);
    v27 = sub_10000680C(v36, v3, v5, &type metadata for Float, sub_1000066B8);
    sub_100006520(v3, v5);
    goto LABEL_38;
  }

  if (v7 == 1)
  {
    v13 = v5 >> 62;
    if ((v5 >> 62) <= 1)
    {
      if (!v13)
      {
        v14 = BYTE6(v5);
        goto LABEL_27;
      }

LABEL_24:
      LODWORD(v14) = HIDWORD(v3) - v3;
      if (__OFSUB__(HIDWORD(v3), v3))
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v14 = v14;
      goto LABEL_27;
    }

    if (v13 != 2)
    {
      v14 = 0;
      goto LABEL_27;
    }

    v20 = *(v3 + 16);
    v19 = *(v3 + 24);
    _VF = __OFSUB__(v19, v20);
    v14 = v19 - v20;
    if (!_VF)
    {
LABEL_27:
      v24 = v14;
      sub_1000068E4(v3, v5);
      v25 = sub_10000680C(v24 / 2, v3, v5, &type metadata for Float16, sub_100006574);
      sub_100006520(v3, v5);
      v26 = *(v25 + 16);
      if (v26)
      {
        sub_10000D6EC(0, v26, 0);
        v27 = _swiftEmptyArrayStorage;
        v28 = _swiftEmptyArrayStorage[2];
        v29 = 32;
        do
        {
          _H8 = *(v25 + v29);
          v31 = _swiftEmptyArrayStorage[3];
          if (v28 >= v31 >> 1)
          {
            sub_10000D6EC((v31 > 1), v28 + 1, 1);
          }

          __asm { FCVT            S0, H8 }

          _swiftEmptyArrayStorage[2] = v28 + 1;
          *(&_swiftEmptyArrayStorage[4] + v28) = _S0;
          v29 += 2;
          ++v28;
          --v26;
        }

        while (v26);
      }

      else
      {

        v27 = _swiftEmptyArrayStorage;
      }

LABEL_38:
      v37 = v27[2];
      v38 = 32;
      do
      {
        if (!v37)
        {
          goto LABEL_46;
        }

        v39 = ~*(v27 + v38) & 0x7F800000;
        v38 += 4;
        --v37;
      }

      while (v39);

      v40 = sub_10001D294();
      v41 = sub_10001D734();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Found embedding with nan values. Return zeros embedding.", v42, 2u);
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        if (v6)
        {
          v43 = sub_10001D6A4();
          *(v43 + 16) = v6;
          bzero((v43 + 32), 4 * v6);
        }

LABEL_46:
        sub_100006520(v3, v5);
        return;
      }

      __break(1u);
      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_20;
  }

  v16 = sub_10001D294();
  v17 = sub_10001D734();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Embedding type not supported.", v18, 2u);
  }

  sub_100006520(v3, v5);
}

void sub_100003698(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100003750(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000037F4;

  return MADTextEmbedder.embed(text:)(a1, a2);
}

uint64_t sub_1000037F4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1000038F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100006938;

  return MADTextEmbedder.embed(texts:)(a1);
}

uint64_t EmbedderName.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_100024E88;
  v8._object = a2;
  v6 = sub_10001D804(v5, v8);

  *a3 = v6 != 0;
  return result;
}

Swift::Int sub_100003A14()
{
  sub_10001D984();
  sub_10001D5A4();
  return sub_10001D9A4();
}

Swift::Int sub_100003A98(uint64_t a1)
{
  sub_10001D984();
  sub_10001D5A4();
  return sub_10001D9A4();
}

uint64_t sub_100003AF4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100024EE8;
  v7._object = v3;
  v5 = sub_10001D804(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t generateEmbeddingsFromTexts(textItems:embeddingModelName:embeddingModelVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v6 = sub_10001D284();
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return _swift_task_switch(sub_100003D04, 0, 0);
}

uint64_t sub_100003D04()
{
  v35 = v0;
  if (qword_100028248 != -1)
  {
    swift_once();
  }

  v1 = sub_10001D2B4();
  *(v0 + 208) = sub_1000047E8(v1, qword_10002A138);
  v2 = sub_10001D294();
  v3 = sub_10001D714();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Generating embeddings.", v4, 2u);
  }

  v6 = *(v0 + 144);
  v5 = *(v0 + 152);

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  if (v6 == 0x457478655444414DLL && v5 == 0xEF7265646465626DLL || (sub_10001D8E4() & 1) != 0)
  {
    v7 = [objc_opt_self() service];

    sub_1000064C0(v0 + 16, &qword_100028270, &qword_10001E058);
    v8 = *(v0 + 160);
    v9 = &protocol witness table for MADTextEmbedder;
    v10 = &type metadata for MADTextEmbedder;
  }

  else
  {
    sub_1000064C0(v0 + 16, &qword_100028270, &qword_10001E058);
    v7 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0uLL;
  }

  *(v0 + 16) = v7;
  *(v0 + 24) = v8;
  *(v0 + 40) = v10;
  *(v0 + 48) = v9;
  sub_100004C84(v0 + 16, v0 + 96);
  if (*(v0 + 120))
  {
    v11 = *(v0 + 136);
    sub_100004DC0((v0 + 96), v0 + 56);
    v12 = *(v11 + 16);
    *(v0 + 216) = v12;
    if (v12)
    {
      *(v0 + 224) = _swiftEmptyArrayStorage;
      *(v0 + 232) = 0;
      sub_10001D364();
      v13 = *(v0 + 80);
      v14 = *(v0 + 88);
      sub_100004DD8((v0 + 56), v13);
      v15 = sub_10001D354();
      v17 = v16;
      *(v0 + 240) = v16;
      v33 = (*(v14 + 16) + **(v14 + 16));
      v18 = swift_task_alloc();
      *(v0 + 248) = v18;
      *v18 = v0;
      v18[1] = sub_10000426C;

      return v33(v15, v17, v13, v14);
    }

    sub_1000064C0(v0 + 16, &qword_100028270, &qword_10001E058);
    sub_100005490((v0 + 56));
    v31 = _swiftEmptyArrayStorage;
  }

  else
  {
    v20 = *(v0 + 168);
    sub_1000064C0(v0 + 96, &qword_100028270, &qword_10001E058);

    v21 = sub_10001D294();
    v22 = sub_10001D734();

    if (os_log_type_enabled(v21, v22))
    {
      v24 = *(v0 + 160);
      v23 = *(v0 + 168);
      v26 = *(v0 + 144);
      v25 = *(v0 + 152);
      v27 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_100004CF4(v26, v25, &v34);
      *(v27 + 12) = 2080;
      if (v23)
      {
        v28 = v24;
      }

      else
      {
        v28 = 7104878;
      }

      if (v23)
      {
        v29 = v20;
      }

      else
      {
        v29 = 0xE300000000000000;
      }

      v30 = sub_100004CF4(v28, v29, &v34);

      *(v27 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to create embedder with name %s, version: %s.", v27, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000064C0(v0 + 16, &qword_100028270, &qword_10001E058);
    v31 = 0;
  }

  v32 = *(v0 + 8);

  return v32(v31);
}

uint64_t sub_10000426C(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_10000438C, 0, 0);
}

uint64_t sub_10000438C()
{
  if (!v0[32])
  {

    v16 = sub_10001D294();
    v17 = sub_10001D734();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to generate embedding from text.", v18, 2u);
    }

    sub_1000064C0((v0 + 2), &qword_100028270, &qword_10001E058);
    v8 = 0;
    goto LABEL_11;
  }

  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  sub_10001D274();
  sub_10001D264();
  v5 = v0[10];
  v6 = v0[11];
  sub_100004DD8(v0 + 7, v5);
  (*(v6 + 8))(v5, v6);
  sub_10001D244();
  (*(v4 + 16))(v2, v1, v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v0[28];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_100004AA8(0, v8[2] + 1, 1, v0[28], &qword_100028310, &qword_10001E248, &type metadata accessor for ZeoliteEmbedding);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_100004AA8((v9 > 1), v10 + 1, 1, v8, &qword_100028310, &qword_10001E248, &type metadata accessor for ZeoliteEmbedding);
  }

  v11 = v0[27];
  v12 = v0[24];
  v13 = v0[22];
  v14 = v0[23];
  v15 = v0[29] + 1;
  (*(v14 + 8))(v0[25], v13);
  v8[2] = v10 + 1;
  (*(v14 + 32))(v8 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v10, v12, v13);
  if (v15 == v11)
  {
    sub_1000064C0((v0 + 2), &qword_100028270, &qword_10001E058);
LABEL_11:
    sub_100005490(v0 + 7);

    v19 = v0[1];

    return v19(v8);
  }

  v21 = v0[29] + 1;
  v0[28] = v8;
  v0[29] = v21;
  sub_10001D364();
  v22 = v0[10];
  v23 = v0[11];
  sub_100004DD8(v0 + 7, v22);
  v24 = sub_10001D354();
  v26 = v25;
  v0[30] = v25;
  v28 = (*(v23 + 16) + **(v23 + 16));
  v27 = swift_task_alloc();
  v0[31] = v27;
  *v27 = v0;
  v27[1] = sub_10000426C;

  return v28(v24, v26, v22, v23);
}

uint64_t sub_1000047E8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_100004820(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000210C(&qword_100028348, &qword_10001E270);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000210C(&qword_100028350, qword_10001E278);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000497C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000210C(&qword_100028298, &qword_10001EA10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_100004AA8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000210C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100004C84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000210C(&qword_100028270, &qword_10001E058);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100004CF4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100005384(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000054DC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005490(v11);
  return v7;
}

uint64_t sub_100004DC0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100004DD8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100004E20()
{
  result = qword_100028278;
  if (!qword_100028278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028278);
  }

  return result;
}

unint64_t sub_100004E78()
{
  result = qword_100028280;
  if (!qword_100028280)
  {
    sub_100004EDC(&qword_100028288, &qword_10001E120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028280);
  }

  return result;
}

uint64_t sub_100004EDC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t dispatch thunk of Embedder.embed(text:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000037F4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of Embedder.embed(texts:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100006938;

  return v9(a1, a2, a3);
}

__n128 sub_100005190(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000051A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000051EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmbedderName(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for EmbedderName(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100005330()
{
  result = qword_100028300;
  if (!qword_100028300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028300);
  }

  return result;
}

unint64_t sub_100005384(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100005538(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10001D7B4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_100005490(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1000054DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100005538(uint64_t a1, unint64_t a2)
{
  v3 = sub_100005584(a1, a2);
  sub_1000056B4(&off_100024E60);
  return v3;
}

void *sub_100005584(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_1000057A0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10001D7B4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10001D5C4();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000057A0(v10, 0);
        result = sub_10001D794();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000056B4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100005814(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000057A0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000210C(&qword_100028318, &qword_10001E250);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100005814(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000210C(&qword_100028318, &qword_10001E250);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100005908()
{
  v1 = sub_10000210C(&qword_100028320, &qword_10001E258);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_1000059B0(int a1, uint64_t a2)
{
  v5 = *(sub_10000210C(&qword_100028320, &qword_10001E258) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100002C40(a1, a2, v2 + v6, v7);
}

uint64_t sub_100005A68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unsigned __int8 *sub_100005A80(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_10001D614();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100006004(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_10001D7B4();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_100006004(uint64_t a1, unint64_t a2)
{
  v2 = sub_10001D624();
  v6 = sub_100006084(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100006084(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_10001D754();
    if (!v9 || (v10 = v9, v11 = sub_1000057A0(v9, 0), v12 = sub_1000061DC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_10001D594();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_10001D594();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_10001D7B4();
LABEL_4:

  return sub_10001D594();
}

unint64_t sub_1000061DC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000063FC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_10001D5F4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_10001D7B4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000063FC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_10001D5D4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1000063FC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_10001D604();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_10001D5E4();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_100006478(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000064C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000210C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006520(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100006574(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  result = *a1;
  v6 = a1[1];
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_22;
    }

    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (v11)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v8 < 1)
    {
      goto LABEL_22;
    }
  }

  else if (v7)
  {
    LODWORD(v8) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v8 = v8;
    if (v8 < 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v8 = BYTE6(a4);
    if (!BYTE6(a4))
    {
LABEL_22:
      v15 = 0;
LABEL_26:
      v17 = v15;
      v18 = *a2 + v15 / 2;
      if (!__OFADD__(*a2, v17 / 2))
      {
        *a2 = v18;
        return result;
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  if (v7)
  {
    if (v7 == 2)
    {
      v12 = *(a3 + 16);
    }

    else
    {
      v12 = a3;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v6 + 0x4000000000000000 < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v13 = 2 * v6;
  if (v8 < v13)
  {
    v13 = v8;
  }

  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    goto LABEL_30;
  }

  if (v14 < v12)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v12 == v14)
  {
    goto LABEL_22;
  }

  if (result)
  {
    v16 = a2;
    result = sub_10001CF04();
    v15 = v14 - v12;
    if (__OFSUB__(v14, v12))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    a2 = v16;
    goto LABEL_26;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1000066B8(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  result = *a1;
  v6 = a1[1];
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_22;
    }

    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (v11)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v8 < 1)
    {
      goto LABEL_22;
    }
  }

  else if (v7)
  {
    LODWORD(v8) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v8 = v8;
    if (v8 < 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v8 = BYTE6(a4);
    if (!BYTE6(a4))
    {
LABEL_22:
      v15 = 0;
LABEL_26:
      v11 = __OFADD__(*a2, v15 / 4);
      v17 = *a2 + v15 / 4;
      if (!v11)
      {
        *a2 = v17;
        return result;
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  if (v7)
  {
    if (v7 == 2)
    {
      v12 = *(a3 + 16);
    }

    else
    {
      v12 = a3;
    }
  }

  else
  {
    v12 = 0;
  }

  if ((v6 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v13 = 4 * v6;
  if (v8 < v13)
  {
    v13 = v8;
  }

  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    goto LABEL_30;
  }

  if (v14 < v12)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v12 == v14)
  {
    goto LABEL_22;
  }

  if (result)
  {
    v16 = a2;
    result = sub_10001CF04();
    v15 = v14 - v12;
    if (__OFSUB__(v14, v12))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    a2 = v16;
    goto LABEL_26;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_10000680C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t *, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  if (result)
  {
    v10 = sub_10001D6A4();
    v10[2] = v9;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = 0;
  v11[0] = v10 + 4;
  v11[1] = v9;
  result = a5(v11, &v12, a2, a3);
  if (v5)
  {
    if (v12 <= v9)
    {
      v10[2] = v12;

      return v10;
    }

    goto LABEL_12;
  }

  if (v12 <= v9)
  {
    v10[2] = v12;
    return v10;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1000068E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000693C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001D284();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  swift_beginAccess();
  v8 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_100004954(0, v8[2] + 1, 1, v8);
    *(a2 + 16) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_100004954((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v4);
  *(a2 + 16) = v8;
  return swift_endAccess();
}

uint64_t ConversationEmbedding.embeddingModel.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

PrivateEvolutionPlugin::ConversationEmbedding __swiftcall ConversationEmbedding.init(conversationId:embedding:embeddingModel:)(Swift::Int64 conversationId, Swift::OpaquePointer embedding, Swift::String_optional embeddingModel)
{
  *v3 = conversationId;
  *(v3 + 8) = embedding;
  *(v3 + 16) = embeddingModel;
  result.embeddingModel = embeddingModel;
  result.embedding = embedding;
  result.conversationId = conversationId;
  return result;
}

uint64_t sub_100006B20()
{
  if (*v0)
  {
    return 0x6E69646465626D65;
  }

  else
  {
    return 0x61737265766E6F63;
  }
}

uint64_t sub_100006B98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100007FBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100006BD8(uint64_t a1)
{
  v2 = sub_100006E48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100006C14(uint64_t a1)
{
  v2 = sub_100006E48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ConversationEmbedding.encode(to:)(void *a1)
{
  v4 = sub_10000210C(&qword_100028358, &unk_10001E290);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v11[1] = v1[2];
  v12 = v8;
  v11[0] = v9;
  sub_100004DD8(a1, a1[3]);
  sub_100006E48();
  sub_10001D9C4();
  v16 = 0;
  sub_10001D8B4();
  if (!v2)
  {
    v13 = v12;
    v15 = 1;
    sub_10000210C(&qword_100028350, qword_10001E278);
    sub_100007118(&qword_100028368, &protocol witness table for Float, &protocol conformance descriptor for <A> [A]);
    sub_10001D8A4();
    v14 = 2;
    sub_10001D894();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_100006E48()
{
  result = qword_100028360;
  if (!qword_100028360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028360);
  }

  return result;
}

uint64_t ConversationEmbedding.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10000210C(&qword_100028370, &qword_10001E2A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - v7;
  sub_100004DD8(a1, a1[3]);
  sub_100006E48();
  sub_10001D9B4();
  if (v2)
  {
    return sub_100005490(a1);
  }

  v18 = 0;
  v9 = sub_10001D884();
  sub_10000210C(&qword_100028350, qword_10001E278);
  v17 = 1;
  sub_100007118(&qword_100028378, &protocol witness table for Float, &protocol conformance descriptor for <A> [A]);
  sub_10001D874();
  v15[0] = v15[1];
  v16 = 2;
  v10 = sub_10001D814();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  v13 = v15[0];
  *a2 = v9;
  a2[1] = v13;
  a2[2] = v10;
  a2[3] = v12;

  sub_100005490(a1);
}

uint64_t sub_100007118(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004EDC(&qword_100028350, qword_10001E278);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t EmbeddingItem.sourceType.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall EmbeddingItem.init(itemId:embedding:embeddingModel:sourceType:)(PrivateEvolutionPlugin::EmbeddingItem *__return_ptr retstr, Swift::Int64 itemId, Swift::OpaquePointer embedding, Swift::String_optional embeddingModel, Swift::String_optional sourceType)
{
  retstr->itemId = itemId;
  retstr->embedding = embedding;
  retstr->embeddingModel = embeddingModel;
  retstr->sourceType = sourceType;
}

Swift::Int sub_10000720C()
{
  v1 = *v0;
  sub_10001D984();
  sub_10001D994(v1);
  return sub_10001D9A4();
}

Swift::Int sub_100007284(uint64_t a1)
{
  v2 = *v1;
  sub_10001D984();
  sub_10001D994(v2);
  return sub_10001D9A4();
}

uint64_t sub_1000072C8()
{
  v1 = 0x64496D657469;
  v2 = 0x6E69646465626D65;
  if (*v0 != 2)
  {
    v2 = 0x7954656372756F73;
  }

  if (*v0)
  {
    v1 = 0x6E69646465626D65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100007354@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000080EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100007388(uint64_t a1)
{
  v2 = sub_100007630();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000073C4(uint64_t a1)
{
  v2 = sub_100007630();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t EmbeddingItem.encode(to:)(void *a1)
{
  v4 = sub_10000210C(&qword_100028380, &qword_10001E2A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v12[3] = v1[2];
  v13 = v8;
  v10 = v1[5];
  v12[1] = v1[4];
  v12[2] = v9;
  v12[0] = v10;
  sub_100004DD8(a1, a1[3]);
  sub_100007630();
  sub_10001D9C4();
  v18 = 0;
  sub_10001D8B4();
  if (!v2)
  {
    v14 = v13;
    v17 = 1;
    sub_10000210C(&qword_100028350, qword_10001E278);
    sub_100007118(&qword_100028368, &protocol witness table for Float, &protocol conformance descriptor for <A> [A]);
    sub_10001D8A4();
    v16 = 2;
    sub_10001D894();
    v15 = 3;
    sub_10001D894();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_100007630()
{
  result = qword_100028388;
  if (!qword_100028388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028388);
  }

  return result;
}

uint64_t EmbeddingItem.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10000210C(&qword_100028390, &qword_10001E2B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_100004DD8(a1, a1[3]);
  sub_100007630();
  sub_10001D9B4();
  if (v2)
  {
    return sub_100005490(a1);
  }

  v25 = 0;
  v9 = sub_10001D884();
  sub_10000210C(&qword_100028350, qword_10001E278);
  v24 = 1;
  sub_100007118(&qword_100028378, &protocol witness table for Float, &protocol conformance descriptor for <A> [A]);
  sub_10001D874();
  v10 = v21;
  v23 = 2;
  v19 = sub_10001D814();
  v20 = v12;
  v22 = 3;
  v13 = sub_10001D814();
  v15 = v14;
  v16 = *(v6 + 8);
  v18 = v13;
  v16(v8, v5);
  *a2 = v9;
  a2[1] = v10;
  v17 = v20;
  a2[2] = v19;
  a2[3] = v17;
  a2[4] = v18;
  a2[5] = v15;

  sub_100005490(a1);
}

__n128 sub_100007994(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000079A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000079E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100007A38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100007A4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100007A94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmbeddingItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EmbeddingItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConversationEmbedding.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConversationEmbedding.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100007DB0()
{
  result = qword_100028398;
  if (!qword_100028398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028398);
  }

  return result;
}

unint64_t sub_100007E08()
{
  result = qword_1000283A0;
  if (!qword_1000283A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000283A0);
  }

  return result;
}

unint64_t sub_100007E60()
{
  result = qword_1000283A8;
  if (!qword_1000283A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000283A8);
  }

  return result;
}

unint64_t sub_100007EB8()
{
  result = qword_1000283B0;
  if (!qword_1000283B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000283B0);
  }

  return result;
}

unint64_t sub_100007F10()
{
  result = qword_1000283B8;
  if (!qword_1000283B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000283B8);
  }

  return result;
}

unint64_t sub_100007F68()
{
  result = qword_1000283C0;
  if (!qword_1000283C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000283C0);
  }

  return result;
}

uint64_t sub_100007FBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEE0064496E6F6974;
  if (v4 || (sub_10001D8E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xE900000000000067 || (sub_10001D8E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xEE006C65646F4D67)
  {

    return 2;
  }

  else
  {
    v6 = sub_10001D8E4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000080EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496D657469 && a2 == 0xE600000000000000;
  if (v4 || (sub_10001D8E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xE900000000000067 || (sub_10001D8E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xEE006C65646F4D67 || (sub_10001D8E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7954656372756F73 && a2 == 0xEA00000000006570)
  {

    return 3;
  }

  else
  {
    v6 = sub_10001D8E4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

PrivateEvolutionPlugin::TaskParametersError_optional __swiftcall TaskParametersError.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_100024F48;
  v8._object = object;
  v5 = sub_10001D804(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t TaskParametersError.rawValue.getter()
{
  if (*v0)
  {
    return 0x4A64696C61766E69;
  }

  else
  {
    return 0x6F5464656C696166;
  }
}

uint64_t sub_100008334(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4A64696C61766E69;
  }

  else
  {
    v3 = 0x6F5464656C696166;
  }

  if (v2)
  {
    v4 = 0xEE0065646F636544;
  }

  else
  {
    v4 = 0xEF617461444E4F53;
  }

  if (*a2)
  {
    v5 = 0x4A64696C61766E69;
  }

  else
  {
    v5 = 0x6F5464656C696166;
  }

  if (*a2)
  {
    v6 = 0xEF617461444E4F53;
  }

  else
  {
    v6 = 0xEE0065646F636544;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10001D8E4();
  }

  return v8 & 1;
}

Swift::Int sub_1000083F4()
{
  sub_10001D984();
  sub_10001D5A4();

  return sub_10001D9A4();
}

uint64_t sub_100008490(uint64_t a1)
{
  sub_10001D5A4();
}

Swift::Int sub_100008518(uint64_t a1)
{
  sub_10001D984();
  sub_10001D5A4();

  return sub_10001D9A4();
}

uint64_t sub_1000085B0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100024F48;
  v8._object = v3;
  v5 = sub_10001D804(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100008610(uint64_t *a1@<X8>)
{
  v2 = 0x6F5464656C696166;
  if (*v1)
  {
    v2 = 0x4A64696C61766E69;
  }

  v3 = 0xEE0065646F636544;
  if (*v1)
  {
    v3 = 0xEF617461444E4F53;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100008678(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = sub_10001D494();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v4 = sub_10001D174();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  v5 = sub_10001D424();
  v2[32] = v5;
  v2[33] = *(v5 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v6 = sub_10001D564();
  v2[38] = v6;
  v2[39] = *(v6 - 8);
  v2[40] = swift_task_alloc();
  sub_10000210C(&qword_100028498, &qword_10001E838);
  v2[41] = swift_task_alloc();
  v7 = sub_10000210C(&qword_1000283F0, qword_10001E790);
  v2[42] = v7;
  v2[43] = *(v7 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v8 = sub_10001D094();
  v2[47] = v8;
  v2[48] = *(v8 - 8);
  v2[49] = swift_task_alloc();
  v9 = sub_10001D0E4();
  v2[50] = v9;
  v2[51] = *(v9 - 8);
  v2[52] = swift_task_alloc();

  return _swift_task_switch(sub_1000089E0, 0, 0);
}

uint64_t sub_1000089E0()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 384);
  sub_10000210C(&qword_1000284A0, &qword_10001E840);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10001E620;
  sub_10001D0D4();
  sub_10001D0C4();
  *(v0 + 184) = v3;
  sub_10000A820(&qword_1000284A8, &type metadata accessor for PFLPluginConsent, &protocol conformance descriptor for PFLPluginConsent);
  sub_10000210C(&qword_1000284B0, &qword_10001E848);
  sub_10000A760(&qword_1000284B8, &qword_1000284B0, &qword_10001E848, &protocol conformance descriptor for [A]);
  sub_10001D764();
  *(v0 + 512) = enum case for PFLTaskSource.CKProd(_:);
  v4 = *(v2 + 104);
  *(v0 + 424) = v4;
  *(v0 + 432) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v4(v1);
  sub_10001D1F4();
  swift_allocObject();
  *(v0 + 440) = sub_10001D1E4();
  v5 = swift_task_alloc();
  *(v0 + 448) = v5;
  v6 = type metadata accessor for PrivateEvolutionPlugin(0);
  v7 = sub_10000A820(&qword_100028490, type metadata accessor for PrivateEvolutionPlugin, &unk_10001E7B0);
  *v5 = v0;
  v5[1] = sub_100008CA0;
  v8 = *(v0 + 328);
  v9 = *(v0 + 192);

  return MLHostExtension.loadConfig<A>(context:)(v8, v9, v6, &type metadata for String, v7, &protocol witness table for String, &protocol witness table for String);
}

uint64_t sub_100008CA0()
{

  return _swift_task_switch(sub_100008D9C, 0, 0);
}

uint64_t sub_100008D9C()
{
  v96 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 328);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = *(v0 + 368);
  if (v5 == 1)
  {
    (*(v2 + 16))(v6, *(v0 + 200), v1);
    if (v4(v3, 1, v1) != 1)
    {
      sub_1000064C0(*(v0 + 328), &qword_100028498, &qword_10001E838);
    }
  }

  else
  {
    (*(v2 + 32))(v6, v3, v1);
  }

  if (qword_100028248 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 360);
  v7 = *(v0 + 368);
  v10 = *(v0 + 336);
  v9 = *(v0 + 344);
  v11 = sub_10001D2B4();
  sub_1000047E8(v11, qword_10002A138);
  v87 = *(v9 + 16);
  v87(v8, v7, v10);
  v12 = sub_10001D294();
  v13 = sub_10001D714();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 360);
  v17 = *(v0 + 336);
  v16 = *(v0 + 344);
  if (v14)
  {
    v18 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v95[0] = v86;
    *v18 = 136315138;
    sub_10000A760(&qword_1000284C8, &qword_1000283F0, qword_10001E790, &protocol conformance descriptor for MLHostParameters<A>);
    v19 = sub_10001D8C4();
    v21 = v20;
    v92 = *(v16 + 8);
    v92(v15, v17);
    v22 = sub_100004CF4(v19, v21, v95);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "Configuration: %s", v18, 0xCu);
    sub_100005490(v86);
  }

  else
  {

    v92 = *(v16 + 8);
    v92(v15, v17);
  }

  v23 = *(v0 + 312);
  v24 = *(v0 + 320);
  v25 = *(v0 + 304);
  sub_10001CFD4();
  sub_10001D554();
  v26 = sub_10001D544();
  v28 = v27;

  *(v0 + 456) = v26;
  *(v0 + 464) = v28;
  (*(v23 + 8))(v24, v25);
  v29 = v28 >> 60;
  if (v28 >> 60 == 15)
  {
    v87(*(v0 + 352), *(v0 + 368), *(v0 + 336));
    v30 = sub_10001D294();
    v31 = sub_10001D734();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 352);
    v34 = *(v0 + 336);
    if (v32)
    {
      v35 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v95[0] = v89;
      *v35 = 136315138;
      sub_10000A760(&qword_1000284C8, &qword_1000283F0, qword_10001E790, &protocol conformance descriptor for MLHostParameters<A>);
      v36 = sub_10001D8C4();
      v38 = v37;
      v39 = v34;
      v40 = v92;
      v92(v33, v39);
      v41 = sub_100004CF4(v36, v38, v95);
      v29 = 15;

      *(v35 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to extract task parameters from config %s", v35, 0xCu);
      sub_100005490(v89);
    }

    else
    {

      v42 = v34;
      v40 = v92;
      v92(v33, v42);
    }

    v43 = *(v0 + 368);
    v44 = *(v0 + 336);
    v95[3] = &type metadata for TaskParametersError;
    v95[4] = sub_10000A70C();
    LOBYTE(v95[0]) = v29 > 0xE;
    v45 = objc_allocWithZone(sub_10001CF84());
    v93 = sub_10001CF74();

    v40(v43, v44);

    v46 = *(v0 + 8);

    return v46(v93);
  }

  else
  {
    sub_10001CE54();
    swift_allocObject();
    sub_10001CE44();
    sub_10000A820(&qword_1000284D0, &type metadata accessor for DataSourceConfig, &protocol conformance descriptor for DataSourceConfig);
    sub_10001CE34();

    v48 = sub_10001D294();
    v49 = sub_10001D714();
    if (os_log_type_enabled(v48, v49))
    {
      v51 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v95[0] = v90;
      *v51 = 136315138;
      swift_beginAccess();
      v52 = sub_10001D3C4();
      v54 = sub_100004CF4(v52, v53, v95);

      *(v51 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v48, v49, "Loaded data source config %s.", v51, 0xCu);
      sub_100005490(v90);
    }

    v55 = *(v0 + 384);
    v56 = *(v0 + 392);
    v57 = *(v0 + 376);
    (*(v0 + 424))(v56, *(v0 + 512), v57);
    sub_10001CFF4();
    sub_10001D144();

    (*(v55 + 8))(v56, v57);
    v58 = *(sub_10001D154() + 16);

    if (v58)
    {
      sub_10001D164();
      v59 = *(v0 + 296);
      v60 = *(v0 + 288);
      v62 = *(v0 + 256);
      v61 = *(v0 + 264);
      swift_beginAccess();
      (*(v61 + 40))(v59, v60, v62);
      v63 = sub_10001D294();
      v64 = sub_10001D714();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v95[0] = v66;
        *v65 = 136315138;
        v67 = sub_10001D3C4();
        v69 = sub_100004CF4(v67, v68, v95);

        *(v65 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v63, v64, "Updated data source config to %s.", v65, 0xCu);
        sub_100005490(v66);
      }
    }

    v70 = *(v0 + 296);
    v71 = *(v0 + 272);
    v72 = *(v0 + 280);
    v73 = *(v0 + 256);
    v74 = *(v0 + 264);
    v75 = *(v0 + 216);
    v88 = *(v0 + 224);
    v91 = *(v0 + 208);
    swift_beginAccess();
    v76 = *(v74 + 16);
    v76(v72, v70, v73);
    v77 = v71;
    v76(v71, v72, v73);
    sub_10001D484();
    v78 = *(v74 + 8);
    *(v0 + 472) = v78;
    *(v0 + 480) = (v74 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v78(v72, v73);
    *(v0 + 40) = v91;
    *(v0 + 48) = &protocol witness table for TextDataExtractorFactory;
    v79 = sub_10000A7BC((v0 + 16));
    (*(v75 + 32))(v79, v88, v91);
    v80 = type metadata accessor for PrivateEvolutionPluginRunner(0);
    v81 = swift_allocObject();
    *(v0 + 488) = v81;
    v81[2] = 0xD000000000000037;
    v81[3] = 0x800000010001F1B0;
    v81[4] = 0xD000000000000016;
    v81[5] = 0x800000010001E730;
    (*(v74 + 32))(v81 + OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_taskParameters, v77, v73);
    v82 = (v81 + OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_chatPromptResponderFactory);
    *v82 = sub_10000A9C8;
    v82[1] = 0;
    sub_100004DC0((v0 + 16), v81 + OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_dataExtractorFactory);
    *(v0 + 80) = v80;
    v83 = sub_10000A820(&qword_1000284D8, type metadata accessor for PrivateEvolutionPluginRunner, &unk_10001E958);
    *(v0 + 56) = v81;
    *(v0 + 88) = v83;
    v94 = (&async function pointer to dispatch thunk of PFLPlugin.run(context:runner:) + async function pointer to dispatch thunk of PFLPlugin.run(context:runner:));

    v84 = swift_task_alloc();
    *(v0 + 496) = v84;
    *v84 = v0;
    v84[1] = sub_100009A48;
    v85 = *(v0 + 192);

    return v94(v85, v0 + 56);
  }
}

uint64_t sub_100009A48(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 504) = a1;

  sub_100005490((v2 + 56));

  return _swift_task_switch(sub_100009B50, 0, 0);
}

uint64_t sub_100009B50()
{
  v11 = v0[59];
  v1 = v0[46];
  v2 = v0[42];
  v3 = v0[43];
  v10 = v0[37];
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[29];
  v6 = v0[30];
  sub_10000A7A8(v0[57], v0[58]);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v1, v2);
  v11(v10, v4);
  v12 = v0[63];

  v8 = v0[1];

  return v8(v12);
}

uint64_t sub_100009CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100006938;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_100009D90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000037F4;

  return sub_100008678(a1);
}

uint64_t sub_100009E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100009F08;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100009F08()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100009FFC(uint64_t a1)
{
  v2 = sub_10000A820(&qword_100028490, type metadata accessor for PrivateEvolutionPlugin, &unk_10001E7B0);

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for PrivateEvolutionPlugin(0);
  sub_10000A820(&qword_1000283C8, type metadata accessor for PrivateEvolutionPlugin, &unk_10001E7F0);
  sub_10001CF64();
  return 0;
}

uint64_t type metadata accessor for PrivateEvolutionPlugin(uint64_t a1)
{
  result = qword_100028450;
  if (!qword_100028450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10000A1A0()
{
  result = qword_1000283D0;
  if (!qword_1000283D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000283D0);
  }

  return result;
}

unint64_t sub_10000A1F8()
{
  result = qword_1000283D8;
  if (!qword_1000283D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000283D8);
  }

  return result;
}

unint64_t sub_10000A250()
{
  result = qword_1000283E0;
  if (!qword_1000283E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000283E0);
  }

  return result;
}

unint64_t sub_10000A2A8()
{
  result = qword_1000283E8;
  if (!qword_1000283E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000283E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaskParametersError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TaskParametersError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000A46C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000210C(&qword_1000283F0, qword_10001E790);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000A4F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000210C(&qword_1000283F0, qword_10001E790);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10000A574(uint64_t a1)
{
  sub_10000A5E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10000A5E0()
{
  if (!qword_100028460)
  {
    v0 = sub_10001CFE4();
    if (!v1)
    {
      atomic_store(v0, &qword_100028460);
    }
  }
}

unint64_t sub_10000A70C()
{
  result = qword_1000284C0;
  if (!qword_1000284C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000284C0);
  }

  return result;
}

uint64_t sub_10000A760(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100004EDC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A7A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100006520(result, a2);
  }

  return result;
}

uint64_t *sub_10000A7BC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000A820(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int sub_10000A868()
{
  v1 = *v0;
  sub_10001D984();
  sub_10001D994(v1 + 9701);
  return sub_10001D9A4();
}

Swift::Int sub_10000A8E8(uint64_t a1)
{
  v2 = *v1;
  sub_10001D984();
  sub_10001D994(v2 + 9701);
  return sub_10001D9A4();
}

uint64_t sub_10000A930@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000F1DC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10000A970(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A000();
  v5 = sub_10001A054();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_10000A9C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10001D464();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001D304();
  (*(v6 + 16))(v8, a1, v5);
  result = sub_10001D2F4();
  if (!v2)
  {
    a2[3] = v9;
    a2[4] = &protocol witness table for LLMInference;
    *a2 = result;
  }

  return result;
}

uint64_t sub_10000AACC()
{
  v1[2] = v0;
  sub_10000210C(&qword_100028698, &qword_10001E9E8);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v2 = sub_10001D4E4();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_10001D424();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10000AC50, 0, 0);
}

uint64_t sub_10000AC50()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[8];
  v4 = v0[9];
  v16 = v0[7];
  v17 = v0[6];
  v18 = v0[5];
  v5 = v0[2];
  v6 = OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_taskParameters;
  v0[14] = OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_taskParameters;
  v7 = *(v4 + 16);
  v0[15] = v7;
  v0[16] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v5 + v6, v3);
  sub_10001D3F4();
  v8 = *(v4 + 8);
  v0[17] = v8;
  v0[18] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v7(v2, v5 + v6, v3);
  sub_10001D404();
  v8(v2, v3);
  sub_10001D2E4();
  (*(v17 + 8))(v16, v18);

  v9 = v0[3];
  v7(v0[11], v5 + v6, v0[8]);
  v10 = sub_10001CF54();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_10000AEF8;
  v12 = v0[11];
  v14 = v0[3];
  v13 = v0[4];

  return sub_10000B76C(v13, v12, v14);
}

uint64_t sub_10000AEF8(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[17];
  v5 = (*v2)[11];
  v6 = (*v2)[8];
  v7 = (*v2)[3];
  v3[20] = a1;
  v3[21] = v1;

  sub_1000064C0(v7, &qword_100028698, &qword_10001E9E8);
  v4(v5, v6);
  if (v1)
  {
    v8 = sub_10000B3B4;
  }

  else
  {
    sub_1000064C0(v3[4], &qword_100028698, &qword_10001E9E8);
    v8 = sub_10000B0CC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10000B0CC()
{
  if (qword_100028248 != -1)
  {
    swift_once();
  }

  v1 = sub_10001D2B4();
  sub_1000047E8(v1, qword_10002A138);

  v2 = sub_10001D294();
  v3 = sub_10001D724();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[20];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "Loaded %ld in ensureDataAvailability", v6, 0xCu);
  }

  else
  {
  }

  v7 = v0[17];
  v8 = v0[15];
  v9 = v0[14];
  v10 = v0[10];
  v11 = v0[8];
  v12 = v0[2];
  v13 = *(v0[20] + 16);

  v8(v10, v12 + v9, v11);
  v14 = sub_10001D3E4();
  v7(v10, v11);
  if (v13 < v14)
  {
    v15 = sub_10001D1D4();
    sub_100019E10(&qword_100028780, &type metadata accessor for PFLError, &protocol conformance descriptor for PFLError);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, enum case for PFLError.dataNotAvailable(_:), v15);
    swift_willThrow();
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_10000B3B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000B46C()
{
  v17 = sub_10001D4E4();
  v16 = *(v17 - 8);
  __chkstk_darwin(v17);
  v15 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10001D424();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_taskParameters;
  v10 = *(v3 + 16);
  v10(&v14 - v7, v0 + OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_taskParameters, v2);
  sub_10001D3F4();
  v11 = *(v3 + 8);
  v11(v8, v2);
  v10(v6, v14 + v9, v2);
  sub_10001D404();
  v11(v6, v2);
  v12 = v15;
  sub_10001D2E4();
  (*(v16 + 8))(v12, v17);
}

void *sub_10000B698(void *result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 0x2000000000000000) >> 62 == 3)
    {
      v2 = 4 * a2;
      if (4 * a2)
      {
        if (v2 <= 14)
        {
          return sub_100010D1C(result, result + v2);
        }

        else
        {
          sub_10001CE74();
          swift_allocObject();
          sub_10001CE64();
          if (v2 >= 0x7FFFFFFF)
          {
            sub_10001CEF4();
            result = swift_allocObject();
            result[2] = 0;
            result[3] = v2;
          }

          else
          {
            return (a2 << 34);
          }
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10000B76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  sub_10000210C(&qword_100028698, &qword_10001E9E8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v5 = sub_10001D424();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_10000B898, 0, 0);
}

uint64_t sub_10000B898()
{
  v56 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[10];
  v5 = OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_taskParameters;
  v6 = *(v3 + 16);
  v6(v1, v4 + OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_taskParameters, v2);
  v7 = sub_10001D3D4();
  v8 = *(v3 + 8);
  v8(v1, v2);
  if (v7)
  {
    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v9 = v0[14];
    v10 = v0[9];
    v11 = sub_10001D2B4();
    v0[19] = sub_1000047E8(v11, qword_10002A138);
    sub_100019CA4(v10, v9, &qword_100028698, &qword_10001E9E8);
    v12 = sub_10001D294();
    v13 = sub_10001D714();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[14];
    if (v14)
    {
      v16 = v0[13];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v55[0] = v18;
      *v17 = 136315138;
      sub_100019CA4(v15, v16, &qword_100028698, &qword_10001E9E8);
      v19 = sub_10001CF54();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v16, 1, v19) == 1)
      {
        sub_1000064C0(v0[13], &qword_100028698, &qword_10001E9E8);
        v21 = 0x800000010001F2B0;
        v22 = 0xD00000000000001CLL;
      }

      else
      {
        v45 = v0[13];
        v22 = sub_10001CF24();
        v21 = v46;
        (*(v20 + 8))(v45, v19);
      }

      sub_1000064C0(v0[14], &qword_100028698, &qword_10001E9E8);
      v47 = sub_100004CF4(v22, v21, v55);

      *(v17 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v12, v13, "Extracting text data from date: %s.", v17, 0xCu);
      sub_100005490(v18);
    }

    else
    {

      sub_1000064C0(v15, &qword_100028698, &qword_10001E9E8);
    }

    sub_100004DD8((v0[10] + OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_dataExtractorFactory), *(v0[10] + OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_dataExtractorFactory + 24));
    sub_10001D474();
    v48 = v0[5];
    v49 = v0[6];
    sub_100004DD8(v0 + 2, v48);
    v50 = swift_task_alloc();
    v0[20] = v50;
    *v50 = v0;
    v50[1] = sub_10000BF38;
    v51 = v0[11];

    return dispatch thunk of Extractor.extract()(v51, v48, v49);
  }

  else
  {
    v53 = v4;
    v54 = v8;
    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v23 = v0[17];
    v24 = v0[15];
    v25 = v0[8];
    v26 = sub_10001D2B4();
    sub_1000047E8(v26, qword_10002A138);
    v6(v23, v25, v24);

    v27 = sub_10001D294();
    v28 = sub_10001D734();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v0[18];
      v52 = v0[17];
      v30 = v0[15];
      v31 = swift_slowAlloc();
      v55[0] = swift_slowAlloc();
      *v31 = 136315394;
      v6(v29, v53 + v5, v30);
      v32 = sub_10001D3C4();
      v34 = v33;
      v54(v29, v30);
      v35 = sub_100004CF4(v32, v34, v55);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v36 = sub_10001D3C4();
      v38 = v37;
      v54(v52, v30);
      v39 = sub_100004CF4(v36, v38, v55);

      *(v31 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v27, v28, "Conflicting data sources from task parameters and recipe.\nTask parameters: %s\nRecipe: %s.", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v40 = v0[17];
      v41 = v0[15];

      v54(v40, v41);
    }

    sub_100019C50();
    swift_allocError();
    *v42 = 11;
    swift_willThrow();

    v43 = v0[1];

    return v43();
  }
}

uint64_t sub_10000BF38(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_10000C3F0;
  }

  else
  {
    v4 = sub_10000C04C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000C04C()
{
  v1 = v0[21];
  sub_100019BD0(v0[11], v0[12]);
  if (v1)
  {
    v2 = v0[21];
    if (*(v2 + 16))
    {

      v3 = sub_10001D294();
      v4 = sub_10001D714();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 134217984;
        *(v5 + 4) = *(v2 + 16);

        _os_log_impl(&_mh_execute_header, v3, v4, "Extracted %ld items.", v5, 0xCu);
      }

      else
      {
      }

      sub_100019BD0(v0[12], v0[7]);
      sub_100005490(v0 + 2);

      v18 = v0[1];

      return v18(v2);
    }
  }

  v6 = sub_10001D294();
  v7 = sub_10001D734();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "No data extracted.", v8, 2u);
  }

  v9 = v0[12];

  sub_100019C50();
  swift_allocError();
  *v10 = 2;
  swift_willThrow();
  sub_1000064C0(v9, &qword_100028698, &qword_10001E9E8);
  swift_errorRetain();
  v11 = sub_10001D294();
  v12 = sub_10001D734();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&_mh_execute_header, v11, v12, "Failed to extract text data with error %@.", v13, 0xCu);
    sub_1000064C0(v14, &qword_100028340, &qword_10001E850);
  }

  swift_willThrow();
  sub_100005490(v0 + 2);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10000C3F0()
{
  swift_errorRetain();
  v1 = sub_10001D294();
  v2 = sub_10001D734();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to extract text data with error %@.", v3, 0xCu);
    sub_1000064C0(v4, &qword_100028340, &qword_10001E850);
  }

  swift_willThrow();
  sub_100005490((v0 + 16));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10000C588(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_10001D284();
    return a2;
  }

  return result;
}

uint64_t sub_10000C610(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_10001D284();
    return a2;
  }

  return result;
}

unint64_t sub_10000C6A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000210C(&qword_1000286C8, &unk_10001EA30);
    v2 = sub_10001D7F4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        sub_10000210C(&qword_100028350, qword_10001E278);
        swift_dynamicCast();
        sub_100019C40(&v22, v24);
        sub_100019C40(v24, v25);
        sub_100019C40(v25, &v23);
        result = sub_10000DE30(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_100005490(v11);
          result = sub_100019C40(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_100019C40(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_10000C904(void *result)
{
  v1 = result[2];
  if (v1 >> 61)
  {
    __break(1u);
  }

  else
  {
    v2 = 4 * v1;
    if (4 * v1)
    {
      if (v2 <= 14)
      {
        return sub_100010D1C(result + 32, result + v2 + 32);
      }

      else
      {
        sub_10001CE74();
        swift_allocObject();
        sub_10001CE64();
        if (v2 >= 0x7FFFFFFF)
        {
          sub_10001CEF4();
          result = swift_allocObject();
          result[2] = 0;
          result[3] = v2;
        }

        else
        {
          return (v1 << 34);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000C9CC(uint64_t a1)
{
  v3 = sub_10001D424();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PrivateEvolutionPluginArgs(0);
  if (*(a1 + *(v7 + 72)) == 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a1 + *(v7 + 72));
  }

  (*(v4 + 16))(v6, v1 + OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_taskParameters, v3);
  v9 = sub_10001D414();
  v11 = v10;
  (*(v4 + 8))(v6, v3);
  v18[0] = v9;
  v18[1] = v11;
  v19._countAndFlagsBits = 95;
  v19._object = 0xE100000000000000;
  sub_10001D5B4(v19);
  if (v8)
  {
    if (v8 == 1)
    {
      v12._countAndFlagsBits = 1819047278;
    }

    else
    {
      v12._countAndFlagsBits = 0xD000000000000011;
    }

    if (v8 == 1)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0x800000010001EFC0;
    }
  }

  else
  {
    v13 = 0xE200000000000000;
    v12._countAndFlagsBits = 25968;
  }

  v12._object = v13;
  sub_10001D5B4(v12);

  result = v18[0];
  v15 = (a1 + *(v7 + 80));
  v16 = v15[1];
  if (v16)
  {
    v17 = *v15;
    v20._countAndFlagsBits = 95;
    v20._object = 0xE100000000000000;
    sub_10001D5B4(v20);
    v21._countAndFlagsBits = v17;
    v21._object = v16;
    sub_10001D5B4(v21);
    return v18[0];
  }

  return result;
}

uint64_t sub_10000CB8C()
{

  v1 = OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_taskParameters;
  v2 = sub_10001D424();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100005490((v0 + OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_dataExtractorFactory));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for PrivateEvolutionPluginRunner(uint64_t a1)
{
  result = qword_100028518;
  if (!qword_100028518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000CCB0(uint64_t a1)
{
  result = sub_10001D424();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000CDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100009F08;

  return PFLTaskRunner.resolveTask(for:taskPreferences:)(a1, a2, a3, a4, a5);
}

uint64_t sub_10000CE6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100009F08;

  return sub_10000AACC();
}

uint64_t sub_10000CEFC()
{
  v1 = sub_10001D044();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_10000CF5C()
{
  v1 = sub_10001D054();
  v2 = *(v0 + 8);
  v3 = v1;

  return v2(v3);
}

uint64_t sub_10000CFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000D084;

  return sub_10001749C(a1, a2, a3);
}

uint64_t sub_10000D084(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_10000D184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001A0A8;

  return PFLTaskRunner.handleNoTasksAvailable(taskPreferences:)(a1, a2, a3);
}

uint64_t sub_10000D234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001A0A8;

  return PFLTaskRunner.handleNoAvailableTasks(taskPreferences:)(a1, a2, a3);
}

id sub_10000D2E4(uint64_t a1, uint64_t a2)
{
  sub_100006478(0, &qword_100028738, NSNumber_ptr);
  isa = sub_10001D664().super.isa;

  v9 = 0;
  v5 = [v2 initWithShape:isa dataType:a2 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    sub_10001CE84();

    swift_willThrow();
  }

  return v5;
}

id sub_10000D3E0(uint64_t a1)
{
  isa = sub_10001D514().super.isa;

  v7 = 0;
  v3 = [v1 initWithDictionary:isa error:&v7];

  if (v3)
  {
    v4 = v7;
  }

  else
  {
    v5 = v7;
    sub_10001CE84();

    swift_willThrow();
  }

  return v3;
}

void sub_10000D4C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_10000210C(&qword_100028310, &qword_10001E248);
      v7 = *(sub_10001D284() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_10001D284();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void *sub_10000D668(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000210C(&qword_100028260, &unk_10001EA90);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_10000D6EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000D76C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000D70C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000DA48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000D72C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000DB4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000D74C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000DC50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000D76C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000210C(&qword_100028298, &qword_10001EA10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_10000D870(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000210C(&qword_100028310, &qword_10001E248);
  v10 = *(sub_10001D284() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10001D284() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10000DA48(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000210C(&qword_1000286B0, &qword_10001EA18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10000DB4C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000210C(&qword_1000286B8, &qword_10001EA20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_10000DC50(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000210C(&qword_100028718, &qword_10001EA80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000210C(&qword_100028708, &qword_10001EA70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10000DD84(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_10000DE30(uint64_t a1, uint64_t a2)
{
  sub_10001D984();
  sub_10001D5A4();
  v4 = sub_10001D9A4();

  return sub_10000DEA8(a1, a2, v4);
}

unint64_t sub_10000DEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10001D8E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10000DF60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000210C(&qword_1000286C0, &qword_10001EA28);
  v34 = v4;
  result = sub_10001D7E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_10001D984();
      sub_10001D5A4();
      result = sub_10001D9A4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10000E208(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000DE30(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10000DF60(v16, a4 & 1);
      v11 = sub_10000DE30(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_10001D924();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10000E384();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *sub_10000E384()
{
  v1 = v0;
  sub_10000210C(&qword_1000286C0, &qword_10001EA28);
  v2 = *v0;
  v3 = sub_10001D7D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10000E4F4()
{
  v1 = sub_10001D284();
  v26 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v29 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v2);
  v30 = &v22 - v5;
  v25 = v0;
  v6 = *v0;
  v7 = *(*v0 + 2);
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    v9 = 0;
    v22 = v7 - 2;
    v23 = (v26 + 40);
    v24 = v26 + 16;
    while (1)
    {
      v31 = 0;
      result = swift_stdlib_random();
      v11 = (v31 * v7) >> 64;
      if (v7 > v31 * v7)
      {
        v12 = -v7 % v7;
        if (v12 > v31 * v7)
        {
          do
          {
            v31 = 0;
            result = swift_stdlib_random();
          }

          while (v12 > v31 * v7);
          v11 = (v31 * v7) >> 64;
        }
      }

      v13 = v9 + v11;
      if (__OFADD__(v9, v11))
      {
        break;
      }

      if (v9 != v13)
      {
        v14 = *(v6 + 2);
        if (v9 >= v14)
        {
          goto LABEL_19;
        }

        v15 = v1;
        v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
        v16 = &v6[v28];
        v17 = *(v26 + 72);
        v18 = *(v26 + 16);
        v27 = v17 * v9;
        result = v18(v30, &v6[v28 + v17 * v9], v15);
        if (v13 >= v14)
        {
          goto LABEL_20;
        }

        v19 = v17 * v13;
        v18(v29, &v16[v17 * v13], v15);
        result = swift_isUniquelyReferenced_nonNull_native();
        v1 = v15;
        if ((result & 1) == 0)
        {
          result = sub_10000F1C8(v6);
          v6 = result;
        }

        if (v9 >= *(v6 + 2))
        {
          goto LABEL_21;
        }

        v20 = &v6[v28];
        v21 = *v23;
        result = (*v23)(&v6[v28 + v27], v29, v15);
        if (v13 >= *(v6 + 2))
        {
          goto LABEL_22;
        }

        result = v21(&v20[v19], v30, v15);
        *v25 = v6;
        v8 = v22;
      }

      --v7;
      if (v9++ == v8)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_10000E7AC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_10001D984();
  sub_10001D5A4();
  v8 = sub_10001D9A4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_10001D8E4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10000EB5C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10000E8FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000210C(&qword_100028770, &unk_10001EAE0);
  result = sub_10001D784();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_10001D984();
      sub_10001D5A4();
      result = sub_10001D9A4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10000EB5C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10000E8FC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000ECDC();
      goto LABEL_16;
    }

    sub_10000EE38(v8 + 1);
  }

  v10 = *v4;
  sub_10001D984();
  sub_10001D5A4();
  result = sub_10001D9A4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_10001D8E4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_10001D914();
  __break(1u);
  return result;
}

void *sub_10000ECDC()
{
  v1 = v0;
  sub_10000210C(&qword_100028770, &unk_10001EAE0);
  v2 = *v0;
  v3 = sub_10001D774();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10000EE38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000210C(&qword_100028770, &unk_10001EAE0);
  result = sub_10001D784();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_10001D984();

      sub_10001D5A4();
      result = sub_10001D9A4();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void *sub_10000F070(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10000F1DC(uint64_t a1)
{
  if ((a1 - 9701) >= 0x11)
  {
    return 17;
  }

  else
  {
    return a1 - 9701;
  }
}

id sub_10000F1F4(uint64_t a1, uint64_t a2)
{
  sub_10001CEA4(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = sub_10001CED4();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    sub_10001CE84();

    swift_willThrow();
    v12 = sub_10001CED4();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

id sub_10000F354(void *a1)
{
  v3 = sub_10001CED4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v73[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v5);
  v10 = &v73[-v9];
  v11 = __chkstk_darwin(v8);
  v76 = &v73[-v12];
  __chkstk_darwin(v11);
  v14 = &v73[-v13];
  v15 = [objc_allocWithZone(MLModelConfiguration) init];
  [v15 setComputeUnits:0];
  sub_100006478(0, &qword_100028760, MLModel_ptr);
  v77 = a1;
  v78 = v4;
  v16 = a1;
  v17 = *(v4 + 16);
  v79 = v3;
  v17(v14, v16, v3);
  v18 = v15;
  v19 = v14;
  v20 = v18;
  v21 = sub_10000F1F4(v19, v18);
  if (v1)
  {

    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v22 = sub_10001D2B4();
    sub_1000047E8(v22, qword_10002A138);
    v23 = v76;
    v24 = v79;
    v17(v76, v77, v79);
    swift_errorRetain();
    v25 = sub_10001D294();
    v26 = sub_10001D734();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v24;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v75 = v20;
      v30 = v29;
      v77 = swift_slowAlloc();
      v80 = v77;
      *v28 = 136315394;
      sub_100019E10(&qword_100028768, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v31 = sub_10001D8C4();
      v33 = v32;
      (*(v78 + 8))(v23, v27);
      v34 = sub_100004CF4(v31, v33, &v80);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2112;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v35;
      *v30 = v35;
      _os_log_impl(&_mh_execute_header, v25, v26, "Model init failed for %s with error: %@.", v28, 0x16u);
      sub_1000064C0(v30, &qword_100028340, &qword_10001E850);
      v20 = v75;

      sub_100005490(v77);
    }

    else
    {

      (*(v78 + 8))(v23, v24);
    }

    sub_100019C50();
    swift_allocError();
    *v43 = 5;
    swift_willThrow();
  }

  else
  {
    v36 = v21;
    v37 = v10;

    if (v36 && (v38 = [v36 program]) != 0)
    {
      v39 = v38;
      v75 = v20;
      v40 = objc_allocWithZone(MLProgramTrainer);
      v80 = 0;
      swift_unknownObjectRetain();
      v41 = [v40 initWithProgram:v39 learningRate:&v80 error:0.0];
      if (v41)
      {
        v20 = v41;
        v42 = v80;

        swift_unknownObjectRelease_n();
      }

      else
      {
        v59 = v80;
        sub_10001CE84();

        swift_willThrow();
        swift_unknownObjectRelease();
        if (qword_100028248 != -1)
        {
          swift_once();
        }

        v60 = sub_10001D2B4();
        sub_1000047E8(v60, qword_10002A138);
        v61 = v79;
        v17(v37, v77, v79);
        swift_errorRetain();
        v62 = sub_10001D294();
        v63 = sub_10001D734();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = v37;
          v65 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v80 = v77;
          *v65 = 136315394;
          sub_100019E10(&qword_100028768, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v74 = v63;
          v66 = sub_10001D8C4();
          v68 = v67;
          (*(v78 + 8))(v64, v61);
          v69 = sub_100004CF4(v66, v68, &v80);

          *(v65 + 4) = v69;
          *(v65 + 12) = 2112;
          swift_errorRetain();
          v70 = _swift_stdlib_bridgeErrorToNSError();
          *(v65 + 14) = v70;
          v71 = v76;
          *v76 = v70;
          _os_log_impl(&_mh_execute_header, v62, v74, "ML program trainer init failed for %s: %@.", v65, 0x16u);
          sub_1000064C0(v71, &qword_100028340, &qword_10001E850);

          sub_100005490(v77);
        }

        else
        {

          (*(v78 + 8))(v37, v61);
        }

        v20 = v75;
        sub_100019C50();
        swift_allocError();
        *v72 = 6;
        swift_willThrow();

        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (qword_100028248 != -1)
      {
        swift_once();
      }

      v44 = sub_10001D2B4();
      sub_1000047E8(v44, qword_10002A138);
      v45 = v7;
      v46 = v79;
      v17(v7, v77, v79);
      v47 = sub_10001D294();
      v48 = sub_10001D734();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v75 = v20;
        v50 = v49;
        v51 = swift_slowAlloc();
        v80 = v51;
        *v50 = 136315138;
        sub_100019E10(&qword_100028768, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v52 = sub_10001D8C4();
        v53 = v45;
        v55 = v54;
        (*(v78 + 8))(v53, v46);
        v56 = sub_100004CF4(v52, v55, &v80);

        *(v50 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v47, v48, "No ML program found for %s.", v50, 0xCu);
        sub_100005490(v51);

        v20 = v75;
      }

      else
      {

        (*(v78 + 8))(v45, v46);
      }

      sub_100019C50();
      swift_allocError();
      *v57 = 6;
      swift_willThrow();
    }
  }

  return v20;
}

unint64_t sub_10000FCEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000210C(&qword_1000286C8, &unk_10001EA30);
    v3 = sub_10001D7F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100019CA4(v4, &v13, &qword_100028710, &qword_10001EA78);
      v5 = v13;
      v6 = v14;
      result = sub_10000DE30(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100019C40(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

NSNumber *sub_10000FE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v91 = a7;
  v102 = a6;
  v101 = a5;
  v98 = a4;
  v97 = a3;
  v96 = sub_10001CE94();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000210C(&qword_100028740, &unk_10001EAB8);
  __chkstk_darwin(v11 - 8);
  v92 = &v89 - v12;
  v13 = sub_10001CED4();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v93 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v99 = &v89 - v17;
  v111 = _swiftEmptyArrayStorage;
  if (qword_100028248 != -1)
  {
    swift_once();
  }

  v100 = v14;
  v18 = sub_10001D2B4();
  v103 = sub_1000047E8(v18, qword_10002A138);
  v19 = sub_10001D294();
  v20 = sub_10001D714();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Producing MLBatchProvider for training.", v21, 2u);
  }

  v22 = sub_10000210C(&qword_100028328, &unk_10001E260);
  v23 = swift_allocObject();
  v109 = xmmword_10001E880;
  *&v23[2].super.super.isa = xmmword_10001E880;
  v24 = *(a1 + 16);
  v23[4].super.super.isa = sub_10001D704().super.super.isa;
  v23[5].super.super.isa = sub_10001D704().super.super.isa;
  v25 = objc_allocWithZone(MLMultiArray);
  v26 = sub_10000D2E4(v23, 65568);
  if (!v7)
  {
    v108 = v26;
    v90 = 0;
    v89 = v13;
    if (v24)
    {
      v27 = 0;
      v28 = *(sub_10001D284() - 8);
      v106 = a1 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
      v105 = *(v28 + 72);
      v29 = &qword_100028738;
      v30 = NSNumber_ptr;
      v104 = v24;
      while (1)
      {
        v31 = sub_10001D254();
        if (*(v31 + 16) != a2)
        {
          break;
        }

        v107 = v31;
        if (a2)
        {
          v32 = 0;
          v110 = (v107 + 32);
          do
          {
            v33 = v32 + 1;
            v34 = a2;
            v35 = swift_allocObject();
            *(v35 + 16) = v109;
            *(v35 + 32) = sub_10001D704();
            *(v35 + 40) = sub_10001D704();
            isa = sub_10001D6D4().super.super.isa;
            sub_100006478(0, v29, v30);
            v37 = v30;
            v38 = v27;
            v39 = v22;
            v40 = v29;
            v41 = sub_10001D664().super.isa;
            a2 = v34;

            [v108 setObject:isa forKeyedSubscript:v41];

            v29 = v40;
            v22 = v39;
            v27 = v38;
            v30 = v37;
            v32 = v33;
          }

          while (v34 != v33);
        }

        ++v27;

        if (v27 == v104)
        {
          goto LABEL_14;
        }
      }

      v48 = v31;

      v49 = sub_10001D294();
      v50 = sub_10001D734();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 134218240;
        *(v51 + 4) = a2;
        *(v51 + 12) = 2048;
        v52 = *(v48 + 16);

        *(v51 + 14) = v52;

        _os_log_impl(&_mh_execute_header, v49, v50, "Wrong embedding size: expected %ld, actual %ld.", v51, 0x16u);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v77 = v108;
      sub_100019C50();
      v23 = swift_allocError();
      *v78 = 3;
      swift_willThrow();
    }

    else
    {
LABEL_14:
      sub_10000210C(&qword_100028748, &unk_10001EAC8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10001DFC0;
      *(inited + 32) = v101;
      *(inited + 40) = v102;
      *(inited + 72) = sub_100006478(0, &qword_100028750, MLMultiArray_ptr);
      v43 = v108;
      *(inited + 48) = v108;

      v44 = v43;
      v45 = sub_10000FCEC(inited);
      swift_setDeallocating();
      sub_1000064C0(inited + 32, &qword_100028710, &qword_10001EA78);
      v46 = objc_allocWithZone(MLDictionaryFeatureProvider);
      v47 = v90;
      sub_10000D3E0(v45);
      v23 = v47;
      if (!v47)
      {
        sub_10001D654();
        if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10001D694();
        }

        sub_10001D6B4();
        v53 = sub_10001D294();
        v54 = sub_10001D724();
        v55 = os_log_type_enabled(v53, v54);
        v56 = v100;
        if (v55)
        {
          v57 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v112 = v110;
          *v57 = 136315138;

          sub_10000210C(&qword_100028758, &qword_10001EAD8);
          v58 = sub_10001D684();
          v60 = v59;

          v61 = sub_100004CF4(v58, v60, &v112);

          *(v57 + 4) = v61;
          _os_log_impl(&_mh_execute_header, v53, v54, "featureProviders: %s.", v57, 0xCu);
          sub_100005490(v110);
        }

        v62 = objc_allocWithZone(MLArrayBatchProvider);

        sub_10000210C(&qword_100028758, &qword_10001EAD8);
        v63 = sub_10001D664().super.isa;

        v64 = [v62 initWithFeatureProviderArray:v63];

        v65 = sub_10001D294();
        v66 = sub_10001D714();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&_mh_execute_header, v65, v66, "Loading MLProgramTrainer for training.", v67, 2u);
        }

        v68 = v89;
        (*(v56 + 56))(v92, 1, 1, v89);
        (*(v95 + 104))(v94, enum case for URL.DirectoryHint.inferFromPath(_:), v96);

        sub_10001CEC4();
        v69 = v93;
        sub_10001CEB4();
        v70 = v69;
        v80 = sub_10000F354(v69);
        v90 = 0;
        v81 = *(v56 + 8);
        v100 = v56 + 8;
        v81(v70, v68);
        v82 = sub_10001D294();
        v83 = sub_10001D714();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&_mh_execute_header, v82, v83, "Perform local Private Evolution step.", v84, 2u);
        }

        v85 = v64;
        v86 = sub_10001D6E4().super.isa;
        v112 = 0;
        v23 = [v80 evaluateUsingTestData:v85 evaluationMetricNames:v86 error:&v112];

        if (v23)
        {
          v87 = v112;
          v81(v99, v89);

          return v23;
        }

        v88 = v112;
        v23 = sub_10001CE84();

        swift_willThrow();
        v81(v99, v89);
      }

      swift_errorRetain();
      v71 = sub_10001D294();
      v72 = sub_10001D734();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v73 = 138412290;
        swift_errorRetain();
        v75 = _swift_stdlib_bridgeErrorToNSError();
        *(v73 + 4) = v75;
        *v74 = v75;
        _os_log_impl(&_mh_execute_header, v71, v72, "Failed to get CoreML Evaluation Results: %@.", v73, 0xCu);
        sub_1000064C0(v74, &qword_100028340, &qword_10001E850);
      }

      sub_100019C50();
      swift_allocError();
      *v76 = 7;
      swift_willThrow();
    }
  }

  return v23;
}

unint64_t sub_100010B1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000210C(&qword_1000286C0, &qword_10001EA28);
    v3 = sub_10001D7F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000DE30(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100010C20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000210C(&qword_100028730, &qword_10001EAB0);
    v3 = sub_10001D7F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000DE30(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100010D1C(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100010DD4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = [a1 evaluationMetrics];
  if (!v7)
  {
    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v36 = sub_10001D2B4();
    sub_1000047E8(v36, qword_10002A138);
    v37 = sub_10001D294();
    v38 = sub_10001D734();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed to get evaluationMetrics from evaluationResults.", v39, 2u);
    }

    sub_100019C50();
    swift_allocError();
    *v40 = 7;
    return swift_willThrow();
  }

  v8 = [v7 featuresAtIndex:0];
  v9 = sub_10001D534();
  v10 = [v8 featureValueForName:v9];

  if (!v10 || (v11 = [v10 multiArrayValue], v10, !v11))
  {
    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v30 = sub_10001D2B4();
    sub_1000047E8(v30, qword_10002A138);

    v31 = sub_10001D294();
    v32 = sub_10001D734();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v111 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_100004CF4(a2, a3, &v111);
      _os_log_impl(&_mh_execute_header, v31, v32, "No output for %s.", v33, 0xCu);
      sub_100005490(v34);
    }

    sub_100019C50();
    swift_allocError();
    *v35 = 7;
    swift_willThrow();
LABEL_70:
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  if (qword_100028248 != -1)
  {
    swift_once();
  }

  v12 = sub_10001D2B4();
  sub_1000047E8(v12, qword_10002A138);
  v13 = v11;
  v14 = sub_10001D294();
  v15 = sub_10001D724();

  v105 = v13;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v105;
    *v17 = v11;
    v18 = v105;
    _os_log_impl(&_mh_execute_header, v14, v15, "Output vector: %@.", v16, 0xCu);
    sub_1000064C0(v17, &qword_100028340, &qword_10001E850);
    v13 = v105;
  }

  v19 = [v13 numberArray];
  sub_100006478(0, &qword_100028738, NSNumber_ptr);
  v20 = sub_10001D674();

  if (v20 >> 62)
  {
    v21 = sub_10001D7C4();
    if (v21)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
LABEL_10:
      v111 = _swiftEmptyArrayStorage;
      sub_10000D6EC(0, v21 & ~(v21 >> 63), 0);
      if (v21 < 0)
      {
LABEL_74:
        __break(1u);
LABEL_75:
        result = sub_10001D924();
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v111;
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v24 = sub_10001D7A4();
        }

        else
        {
          v24 = *(v20 + 8 * v22 + 32);
        }

        v25 = v24;
        [v24 floatValue];
        v27 = v26;

        v111 = v23;
        v29 = v23[2];
        v28 = v23[3];
        if (v29 >= v28 >> 1)
        {
          sub_10000D6EC((v28 > 1), v29 + 1, 1);
          v23 = v111;
        }

        ++v22;
        v23[2] = v29 + 1;
        *(v23 + v29 + 8) = v27;
      }

      while (v21 != v22);

      goto LABEL_31;
    }
  }

  v23 = _swiftEmptyArrayStorage;
LABEL_31:
  v42 = sub_10000B698(v23 + 4, v23[2]);
  v44 = v43;

  sub_1000068E4(v42, v44);
  v45 = sub_10001D294();
  v46 = sub_10001D724();
  sub_100006520(v42, v44);
  v103 = v44;
  v104 = v42;
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v111 = v48;
    *v47 = 136315138;
    sub_1000068E4(v42, v44);
    v49 = sub_10001CEE4();
    v50 = v44;
    v51 = v49;
    v52 = v42;
    v54 = v53;
    sub_100006520(v52, v50);
    v55 = sub_100004CF4(v51, v54, &v111);

    *(v47 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v45, v46, "Output data: %s.", v47, 0xCu);
    sub_100005490(v48);
  }

  v56 = sub_100010B1C(_swiftEmptyArrayStorage);
  v107 = *(a4 + 16);
  if (v107)
  {
    v57 = 0;
    v108 = a4 + 32;
    v106 = v8;
    do
    {
      v58 = (v108 + 16 * v57);
      v59 = *v58;
      v60 = v58[1];

      v110 = v59;
      v61 = sub_10001D534();
      v62 = [v8 featureValueForName:v61];

      if (!v62 || (v63 = [v62 multiArrayValue], v62, !v63))
      {

        v97 = sub_10001D294();
        v98 = sub_10001D734();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v111 = v100;
          *v99 = 136315138;
          v101 = sub_100004CF4(v110, v60, &v111);

          *(v99 + 4) = v101;
          _os_log_impl(&_mh_execute_header, v97, v98, "No metricValue for %s.", v99, 0xCu);
          sub_100005490(v100);
        }

        else
        {
        }

        sub_100019C50();
        swift_allocError();
        *v102 = 7;
        swift_willThrow();

        sub_100006520(v104, v103);

        goto LABEL_70;
      }

      v64 = [v63 numberArray];
      v65 = sub_10001D674();

      if (v65 >> 62)
      {
        v66 = sub_10001D7C4();
        v109 = v63;
        if (!v66)
        {
LABEL_51:

          v68 = _swiftEmptyArrayStorage;
          goto LABEL_52;
        }
      }

      else
      {
        v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v109 = v63;
        if (!v66)
        {
          goto LABEL_51;
        }
      }

      v111 = _swiftEmptyArrayStorage;
      sub_10000D6EC(0, v66 & ~(v66 >> 63), 0);
      if (v66 < 0)
      {
        goto LABEL_72;
      }

      v67 = 0;
      v68 = v111;
      do
      {
        if ((v65 & 0xC000000000000001) != 0)
        {
          v69 = sub_10001D7A4();
        }

        else
        {
          v69 = *(v65 + 8 * v67 + 32);
        }

        v70 = v69;
        [v69 floatValue];
        v72 = v71;

        v111 = v68;
        v74 = v68[2];
        v73 = v68[3];
        if (v74 >= v73 >> 1)
        {
          sub_10000D6EC((v73 > 1), v74 + 1, 1);
          v68 = v111;
        }

        ++v67;
        v68[2] = v74 + 1;
        *(v68 + v74 + 8) = v72;
      }

      while (v66 != v67);

      v8 = v106;
LABEL_52:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111 = v56;
      v76 = sub_10000DE30(v110, v60);
      v78 = v56[2];
      v79 = (v77 & 1) == 0;
      v80 = __OFADD__(v78, v79);
      v81 = v78 + v79;
      if (v80)
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v82 = v77;
      if (v56[3] < v81)
      {
        sub_10000DF60(v81, isUniquelyReferenced_nonNull_native);
        v83 = v60;
        v76 = sub_10000DE30(v110, v60);
        if ((v82 & 1) != (v84 & 1))
        {
          goto LABEL_75;
        }

LABEL_58:
        v56 = v111;
        if (v82)
        {
          goto LABEL_35;
        }

        goto LABEL_59;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v83 = v60;
        goto LABEL_58;
      }

      v88 = v76;
      sub_10000E384();
      v76 = v88;
      v83 = v60;
      v56 = v111;
      if (v82)
      {
LABEL_35:
        *(v56[7] + 8 * v76) = v68;

        goto LABEL_36;
      }

LABEL_59:
      v56[(v76 >> 6) + 8] |= 1 << v76;
      v85 = (v56[6] + 16 * v76);
      *v85 = v110;
      v85[1] = v83;
      *(v56[7] + 8 * v76) = v68;
      v86 = v56[2];
      v80 = __OFADD__(v86, 1);
      v87 = v86 + 1;
      if (v80)
      {
        goto LABEL_73;
      }

      v56[2] = v87;

LABEL_36:
      ++v57;
    }

    while (v57 != v107);
  }

  v89 = sub_10001D294();
  v90 = sub_10001D724();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v111 = v92;
    *v91 = 136315138;

    sub_10000210C(&qword_100028350, qword_10001E278);
    v93 = sub_10001D524();
    v95 = v94;

    v96 = sub_100004CF4(v93, v95, &v111);

    *(v91 + 4) = v96;
    _os_log_impl(&_mh_execute_header, v89, v90, "Output metrics: %s.", v91, 0xCu);
    sub_100005490(v92);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v104;
}

NSObject *sub_100011A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a7;
  v72 = a6;
  v69 = a5;
  v64 = a4;
  v63 = a3;
  v67 = sub_10001D0B4();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v70 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v62 = v10;
  if (v10)
  {
    v11 = *(sub_10001D284() - 8);
    v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    v14 = _swiftEmptyArrayStorage;
    while (1)
    {
      v15 = sub_10001D254();
      if (*(v15 + 16) != a2)
      {

        if (qword_100028248 != -1)
        {
          goto LABEL_51;
        }

        goto LABEL_28;
      }

      v16 = *(v14 + 2);
      v17 = v16 + a2;
      if (__OFADD__(v16, a2))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v17 <= *(v14 + 3) >> 1)
      {
        if (!*(v15 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v16 <= v17)
        {
          v19 = v16 + a2;
        }

        else
        {
          v19 = v16;
        }

        v14 = sub_10000497C(isUniquelyReferenced_nonNull_native, v19, 1, v14);
        if (!*(v15 + 16))
        {
LABEL_3:

          if (a2)
          {
            goto LABEL_46;
          }

          goto LABEL_4;
        }
      }

      v20 = *(v14 + 2);
      if ((*(v14 + 3) >> 1) - v20 < a2)
      {
        goto LABEL_47;
      }

      memcpy(&v14[4 * v20 + 32], (v15 + 32), 4 * a2);

      if (a2)
      {
        v21 = *(v14 + 2);
        v22 = __OFADD__(v21, a2);
        v23 = v21 + a2;
        if (v22)
        {
          goto LABEL_48;
        }

        *(v14 + 2) = v23;
      }

LABEL_4:
      v12 += v13;
      if (!--v10)
      {
        goto LABEL_20;
      }
    }
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_20:
  if (qword_100028248 != -1)
  {
LABEL_49:
    swift_once();
  }

  v24 = sub_10001D2B4();
  v25 = sub_1000047E8(v24, qword_10002A138);

  v26 = sub_10001D294();
  v27 = sub_10001D714();
  v28 = os_log_type_enabled(v26, v27);
  v29 = v70;
  v30 = v68;
  if (v28)
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = *(v14 + 2);

    _os_log_impl(&_mh_execute_header, v26, v27, "Number elements in embeddingsMatrixRowMajor: %ld.", v31, 0xCu);
  }

  else
  {
  }

  sub_10001D194();
  swift_allocObject();
  sub_10001D184();
  sub_10001D124();
  swift_allocObject();
  v32 = sub_10001D134();
  sub_10001D0A4();
  sub_10000210C(&qword_100028260, &unk_10001EA90);
  v33 = swift_allocObject();
  v61 = xmmword_10001DFC0;
  *(v33 + 16) = xmmword_10001DFC0;
  v34 = v72;
  *(v33 + 32) = v69;
  *(v33 + 40) = v34;
  v35 = *(v30 + 16);
  if (v35)
  {
    v59[1] = v32;
    v59[2] = v25;
    v59[0] = sub_10000D668(v35, 0);
    v60 = sub_10000F070(v71, (v59[0] + 32), v35, v30);
    v36 = v71[0];
    v15 = v71[1];

    sub_100019D0C(v36);
    if (v60 != v35)
    {
      __break(1u);
LABEL_51:
      swift_once();
LABEL_28:
      v37 = sub_10001D2B4();
      sub_1000047E8(v37, qword_10002A138);

      v38 = sub_10001D294();
      v39 = sub_10001D734();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 134218240;
        *(v40 + 4) = a2;
        *(v40 + 12) = 2048;
        v41 = *(v15 + 16);

        *(v40 + 14) = v41;

        _os_log_impl(&_mh_execute_header, v38, v39, "Wrong embedding size: expected %ld, actual %ld.", v40, 0x16u);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      sub_100019C50();
      swift_allocError();
      *v48 = 3;
      swift_willThrow();
      return v38;
    }

    v29 = v70;
  }

  else
  {
  }

  v42 = v65;
  sub_10001D104();
  if (v42)
  {

    (*(v66 + 8))(v29, v67);
  }

  else
  {
    (*(v66 + 8))(v29, v67);

    LOBYTE(v71[0]) = 1;
    sub_10001D114();
    sub_10000210C(&qword_1000286E0, &qword_10001EA48);
    inited = swift_initStackObject();
    *(inited + 16) = v61;
    v51 = v69;
    *(inited + 32) = v69;
    v52 = v72;
    *(inited + 40) = v72;
    *(inited + 48) = v14;

    v70 = sub_100010B1C(inited);
    swift_setDeallocating();
    sub_1000064C0(inited + 32, &qword_1000286E8, &qword_10001EA50);
    sub_10000210C(&qword_100028720, &qword_10001EAA0);
    v53 = swift_initStackObject();
    *(v53 + 16) = v61;
    *(v53 + 32) = v51;
    *(v53 + 40) = v52;
    *(v53 + 48) = a2;

    sub_100010C20(v53);
    swift_setDeallocating();
    sub_1000064C0(v53 + 32, &qword_100028728, &qword_10001EAA8);
    v54 = sub_10001D0F4();

    if (*(v54 + 16))
    {
      v38 = *(v54 + 32);

      return v38;
    }

    v55 = sub_10001D294();
    v56 = sub_10001D734();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Empty evaluation results from EspressoMILTrainer.", v57, 2u);
    }

    sub_100019C50();
    swift_allocError();
    *v58 = 7;
    swift_willThrow();
  }

  swift_errorRetain();
  v43 = sub_10001D294();
  v38 = sub_10001D734();

  if (os_log_type_enabled(v43, v38))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412290;
    swift_errorRetain();
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v44 + 4) = v46;
    *v45 = v46;
    _os_log_impl(&_mh_execute_header, v43, v38, "Failed to get Espresso Evaluation Results: %@.", v44, 0xCu);
    sub_1000064C0(v45, &qword_100028340, &qword_10001E850);
  }

  sub_100019C50();
  swift_allocError();
  *v47 = 7;
  swift_willThrow();

  return v38;
}

uint64_t sub_10001243C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2;
  if (*(a1 + 16))
  {
    v8 = sub_10000DE30(a2, a3);
    if (v9)
    {
      v10 = *(*(a1 + 56) + 8 * v8);
      v11 = qword_100028248;

      if (v11 != -1)
      {
        swift_once();
      }

      v12 = sub_10001D2B4();
      sub_1000047E8(v12, qword_10002A138);

      v13 = sub_10001D294();
      v14 = sub_10001D724();

      v78 = a1;
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v79 = v16;
        *v15 = 136315138;
        v17 = sub_10001D684();
        v19 = sub_100004CF4(v17, v18, &v79);

        *(v15 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v13, v14, "Output vector: %s.", v15, 0xCu);
        sub_100005490(v16);
      }

      v20 = sub_10000B698((v10 + 32), *(v10 + 16));
      v22 = v21;

      sub_1000068E4(v20, v22);
      v23 = sub_10001D294();
      v24 = sub_10001D724();
      sub_100006520(v20, v22);
      v76 = v22;
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v79 = v26;
        *v25 = 136315138;
        sub_1000068E4(v20, v22);
        v27 = sub_10001CEE4();
        v28 = v22;
        v29 = v27;
        v31 = v30;
        sub_100006520(v20, v28);
        v32 = sub_100004CF4(v29, v31, &v79);

        *(v25 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v23, v24, "Output data: %s.", v25, 0xCu);
        sub_100005490(v26);
      }

      v33 = v78;
      v77 = v20;
      v5 = sub_100010B1C(_swiftEmptyArrayStorage);
      v34 = *(a4 + 16);
      if (!v34)
      {
LABEL_30:
        v62 = sub_10001D294();
        v63 = sub_10001D724();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v79 = v65;
          *v64 = 136315138;

          sub_10000210C(&qword_100028350, qword_10001E278);
          v66 = sub_10001D524();
          v68 = v67;

          v69 = sub_100004CF4(v66, v68, &v79);

          *(v64 + 4) = v69;
          _os_log_impl(&_mh_execute_header, v62, v63, "Output metrics: %s.", v64, 0xCu);
          sub_100005490(v65);
        }

        return v77;
      }

      v35 = (a4 + 40);
      while (1)
      {
        v37 = *(v35 - 1);
        v36 = *v35;
        v38 = *(v33 + 16);

        if (!v38 || (v39 = sub_10000DE30(v37, v36), (v40 & 1) == 0))
        {

          v70 = sub_10001D294();
          v71 = sub_10001D734();

          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v79 = v73;
            *v72 = 136315138;
            v74 = sub_100004CF4(v37, v36, &v79);

            *(v72 + 4) = v74;
            _os_log_impl(&_mh_execute_header, v70, v71, "No metricValue for %s.", v72, 0xCu);
            sub_100005490(v73);
          }

          else
          {
          }

          sub_100019C50();
          swift_allocError();
          *v75 = 7;
          swift_willThrow();
          sub_100006520(v77, v76);
        }

        v41 = *(*(v33 + 56) + 8 * v39);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79 = v5;
        v4 = sub_10000DE30(v37, v36);
        v44 = v5;
        v45 = v5[2];
        v46 = (v43 & 1) == 0;
        v47 = v45 + v46;
        if (__OFADD__(v45, v46))
        {
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v48 = v43;
        if (v44[3] >= v47)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v43)
            {
              goto LABEL_11;
            }
          }

          else
          {
            sub_10000E384();
            if (v48)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
          sub_10000DF60(v47, isUniquelyReferenced_nonNull_native);
          v49 = sub_10000DE30(v37, v36);
          if ((v48 & 1) != (v50 & 1))
          {
            result = sub_10001D924();
            __break(1u);
            return result;
          }

          v4 = v49;
          if (v48)
          {
LABEL_11:

            v5 = v79;
            *(v79[7] + 8 * v4) = v41;

            goto LABEL_12;
          }
        }

        v5 = v79;
        v79[(v4 >> 6) + 8] |= 1 << v4;
        v51 = (v5[6] + 16 * v4);
        *v51 = v37;
        v51[1] = v36;
        *(v5[7] + 8 * v4) = v41;
        v52 = v5[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_38;
        }

        v5[2] = v54;
LABEL_12:
        v35 += 2;
        --v34;
        v33 = v78;
        if (!v34)
        {
          goto LABEL_30;
        }
      }
    }
  }

  if (qword_100028248 != -1)
  {
LABEL_39:
    swift_once();
  }

  v55 = sub_10001D2B4();
  sub_1000047E8(v55, qword_10002A138);

  v56 = sub_10001D294();
  v57 = sub_10001D734();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v79 = v59;
    *v58 = 136315138;
    *(v58 + 4) = sub_100004CF4(v5, v4, &v79);
    _os_log_impl(&_mh_execute_header, v56, v57, "No output for %s.", v58, 0xCu);
    sub_100005490(v59);
  }

  sub_100019C50();
  swift_allocError();
  *v60 = 7;
  return swift_willThrow();
}

uint64_t sub_100012C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  v5 = sub_10001D284();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  sub_10000210C(&qword_100028698, &qword_10001E9E8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  type metadata accessor for PrivateEvolutionPluginArgs(0);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_100012DB0, 0, 0);
}

uint64_t sub_100012DB0()
{
  v134 = v0;
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 144);
    v3 = v2[9];
    v4 = v2[10];
    v5 = v2[11];
    v6 = v2[12];
    v7 = swift_task_alloc();
    *(v0 + 272) = v7;
    *v7 = v0;
    v7[1] = sub_100013EC4;

    return generateEmbeddingsFromTexts(textItems:embeddingModelName:embeddingModelVersion:)(v1, v3, v4, v5, v6);
  }

  if (qword_100028248 != -1)
  {
    swift_once();
  }

  v122 = sub_10001D2B4();
  sub_1000047E8(v122, qword_10002A138);
  v9 = sub_10001D294();
  v10 = sub_10001D714();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Querying embeddings from Biome.", v11, 2u);
  }

  v13 = *(v0 + 216);
  v12 = *(v0 + 224);
  v15 = *(v0 + 200);
  v14 = *(v0 + 208);
  v16 = *(v0 + 144);

  v126 = v16[10];
  v124 = v16[9];
  v125 = v16[13];
  v17 = sub_10001CF54();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v19(v12, 1, 1, v17);
  v19(v13, 1, 1, v17);
  sub_100019CA4(v12, v14, &qword_100028698, &qword_10001E9E8);
  sub_100019CA4(v13, v15, &qword_100028698, &qword_10001E9E8);
  v20 = *(v18 + 48);
  isa = 0;
  if (v20(v14, 1, v17) != 1)
  {
    v22 = *(v0 + 208);
    isa = sub_10001CF34().super.isa;
    (*(v18 + 8))(v22, v17);
  }

  v23 = *(v0 + 200);
  if (v20(v23, 1, v17) == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_10001CF34().super.isa;
    (*(v18 + 8))(v23, v17);
  }

  v25 = v124;
  v26 = [objc_allocWithZone(BMPublisherOptions) initWithStartDate:isa endDate:v24 maxEvents:0 lastN:0 reversed:0];

  sub_10001D204();
  sub_100019E10(&qword_100028778, &type metadata accessor for Library.Streams.Zeolite.Ledger.Embedding, &protocol conformance descriptor for Library.Streams.Zeolite.Ledger.Embedding);
  v27 = v26;
  sub_10001D214();

  sub_100004DC0((v0 + 56), v0 + 16);
  v28 = swift_allocObject();
  *(v28 + 16) = _swiftEmptyArrayStorage;
  v29 = (v28 + 16);
  sub_100004DD8((v0 + 16), *(v0 + 40));

  sub_10001D2C4();

  swift_beginAccess();
  v30 = *v29;

  sub_100005490((v0 + 16));
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = *(v0 + 176);
    v34 = *(v32 + 16);
    v33 = v32 + 16;
    v123 = (*(v33 + 64) + 32) & ~*(v33 + 64);
    v35 = v30 + v123;
    v129 = *(v33 + 56);
    v131 = v34;
    v36 = (v33 - 8);
    v127 = _swiftEmptyArrayStorage;
    v37 = v125;
    v34(*(v0 + 192), v30 + v123, *(v0 + 168));
    while (1)
    {
      v38 = sub_10001D234();
      if (!v39)
      {
LABEL_16:
        (*v36)(*(v0 + 192), *(v0 + 168));
        goto LABEL_17;
      }

      v40 = v25 == v38 && v39 == v126;
      if (v40)
      {

        if (!v37)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v41 = sub_10001D8E4();

        if ((v41 & 1) == 0)
        {
          goto LABEL_16;
        }

        if (!v37)
        {
LABEL_35:
          v131(*(v0 + 184), *(v0 + 192), *(v0 + 168));
          v48 = v127;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_100004954(0, v127[2] + 1, 1, v127);
          }

          v50 = v48[2];
          v49 = v48[3];
          v127 = v48;
          if (v50 >= v49 >> 1)
          {
            v127 = sub_100004954((v49 > 1), v50 + 1, 1, v48);
          }

          v51 = *(v0 + 184);
          v52 = *(v0 + 168);
          (*v36)(*(v0 + 192), v52);
          v127[2] = v50 + 1;
          (*(v33 + 16))(v127 + v123 + v50 * v129, v51, v52);
          v25 = v124;
          goto LABEL_41;
        }
      }

      v42 = sub_10001D224();
      if (v43)
      {
        v44 = v42;
      }

      else
      {
        v44 = 0;
      }

      if (v43)
      {
        v45 = v43;
      }

      else
      {
        v45 = 0xE000000000000000;
      }

      *(v0 + 120) = v44;
      *(v0 + 128) = v45;
      v46 = swift_task_alloc();
      *(v46 + 16) = v0 + 120;
      v47 = sub_10000DD84(sub_100019DB8, v46, v37);

      if (v47)
      {
        goto LABEL_35;
      }

      (*v36)(*(v0 + 192), *(v0 + 168));
LABEL_41:
      v37 = v125;
LABEL_17:
      v35 += v129;
      if (!--v31)
      {

        v53 = v127;
        goto LABEL_44;
      }

      v131(*(v0 + 192), v35, *(v0 + 168));
    }
  }

  v53 = _swiftEmptyArrayStorage;
LABEL_44:
  v55 = *(v0 + 240);
  v54 = *(v0 + 248);
  v56 = *(v0 + 224);
  v57 = *(v0 + 160);
  v58 = *(v0 + 144);
  sub_1000064C0(*(v0 + 216), &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v56, &qword_100028698, &qword_10001E9E8);
  sub_100019D54(v58, v54);
  sub_100019D54(v58, v55);

  v59 = sub_10001D294();
  v60 = sub_10001D714();

  v61 = os_log_type_enabled(v59, v60);
  v62 = *(v0 + 240);
  v63 = *(v0 + 248);
  v128 = v53;
  if (v61)
  {
    v130 = *(v0 + 152);
    v132 = *(v0 + 160);
    v64 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v133[0] = v57;
    *v64 = 134218754;
    *(v64 + 4) = v53[2];

    *(v64 + 12) = 2080;
    v65 = *(v63 + 72);
    v66 = *(v63 + 80);

    sub_100019B20(v63);
    v67 = sub_100004CF4(v65, v66, v133);

    *(v64 + 14) = v67;
    *(v64 + 22) = 2080;
    *(v64 + 24) = sub_100004CF4(v130, v132, v133);
    *(v64 + 32) = 2080;

    v68 = sub_10001D684();
    v70 = v69;

    sub_100019B20(v62);
    v62 = sub_100004CF4(v68, v70, v133);

    *(v64 + 34) = v62;
    _os_log_impl(&_mh_execute_header, v59, v60, "Number of embeddings queried: %ld. Query params: embeddingModel=%s, useCase=%s, sourceTypes=%s.", v64, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_100019B20(v62);
    sub_100019B20(v63);
  }

  v71 = *(v0 + 144);
  v72 = v53[2];
  v73 = qword_100028248;
  if (v72 < *(v71 + 48))
  {
    if (qword_100028248 != -1)
    {
      swift_once();
      v71 = *(v0 + 144);
    }

    v74 = *(v0 + 232);
    sub_1000047E8(v122, qword_10002A138);
    sub_100019D54(v71, v74);
    v75 = sub_10001D294();
    v76 = sub_10001D734();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 134218240;
      v78 = *(v0 + 232);
      *(v77 + 4) = v128[2];
      *(v77 + 12) = 2048;
      v79 = *(v78 + 48);
      sub_100019B20(v78);
      *(v77 + 14) = v79;
      _os_log_impl(&_mh_execute_header, v75, v76, "Number of data %ld less than the threshold %lu", v77, 0x16u);
    }

    else
    {
      sub_100019B20(*(v0 + 232));
    }

    sub_100019C50();
    swift_allocError();
    *v89 = 2;
    swift_willThrow();

    v90 = *(v0 + 8);

    return v90();
  }

  v40 = v73 == -1;
  v81 = v80;
  if (!v40)
  {
    swift_once();
  }

  sub_1000047E8(v122, qword_10002A138);

  v82 = sub_10001D294();
  v83 = sub_10001D724();
  if (os_log_type_enabled(v82, v83))
  {
    v57 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v133[0] = v84;
    *v57 = 134218242;
    *(v57 + 4) = *(v81 + 16);

    *(v57 + 12) = 2080;
    v85 = v81;
    v86 = sub_10001D684();
    v62 = v87;
    v88 = sub_100004CF4(v86, v87, v133);

    *(v57 + 14) = v88;
    _os_log_impl(&_mh_execute_header, v82, v83, "Embeddings data (count: %ld: %s.", v57, 0x16u);
    sub_100005490(v84);
  }

  else
  {
    v85 = v81;
  }

  v91 = *(*(v0 + 144) + 56);
  if (v91 < 0)
  {
    __break(1u);
    goto LABEL_90;
  }

  v82 = sub_10000C588(v91, v85);
  if (v94)
  {
    v62 = v94;
    v57 = v93;
    v81 = v92;
    sub_10001D8F4();
    swift_unknownObjectRetain_n();
    v97 = swift_dynamicCastClass();
    if (!v97)
    {
      swift_unknownObjectRelease();
      v97 = _swiftEmptyArrayStorage;
    }

    v98 = v97[2];

    if (__OFSUB__(v62 >> 1, v57))
    {
      goto LABEL_91;
    }

    if (v98 != (v62 >> 1) - v57)
    {
      goto LABEL_92;
    }

    v96 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v96)
    {
      goto LABEL_71;
    }

    v96 = _swiftEmptyArrayStorage;
    goto LABEL_70;
  }

  while (1)
  {
    sub_10000D4C8(v82, v92, v93, v94);
    v96 = v95;
LABEL_70:
    swift_unknownObjectRelease();
LABEL_71:
    v81 = *(v0 + 144);
    v133[0] = v96;
    v82 = v133;
    sub_10000E4F4();
    v99 = *(v81 + 64);
    if ((v99 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    swift_unknownObjectRelease();
    v94 = v62;
    v93 = v57;
    v92 = v81;
  }

  v103 = sub_10000C610(v99, v133[0]);
  if ((v102 & 1) == 0)
  {
    goto LABEL_73;
  }

  v106 = v102;
  v107 = v101;
  v108 = v100;
  sub_10001D8F4();
  swift_unknownObjectRetain_n();
  v109 = swift_dynamicCastClass();
  if (!v109)
  {
    swift_unknownObjectRelease();
    v109 = _swiftEmptyArrayStorage;
  }

  v110 = v109[2];

  if (__OFSUB__(v106 >> 1, v107))
  {
    __break(1u);
    goto LABEL_94;
  }

  if (v110 != (v106 >> 1) - v107)
  {
LABEL_94:
    swift_unknownObjectRelease();
    v102 = v106;
    v101 = v107;
    v100 = v108;
LABEL_73:
    sub_10000D4C8(v103, v100, v101, v102);
    v105 = v104;
LABEL_80:
    swift_unknownObjectRelease();
    goto LABEL_81;
  }

  v105 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v105)
  {
    v105 = _swiftEmptyArrayStorage;
    goto LABEL_80;
  }

LABEL_81:

  v111 = sub_10001D294();
  v112 = sub_10001D714();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 134217984;
    *(v113 + 4) = v105[2];

    _os_log_impl(&_mh_execute_header, v111, v112, "Number of sampled embeddings: %ld.", v113, 0xCu);
  }

  else
  {
  }

  v114 = sub_10001D294();
  v115 = sub_10001D724();

  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v133[0] = v117;
    *v116 = 136315138;
    v118 = sub_10001D684();
    v120 = sub_100004CF4(v118, v119, v133);

    *(v116 + 4) = v120;
    _os_log_impl(&_mh_execute_header, v114, v115, "Sampled Embeddings data: %s\n", v116, 0xCu);
    sub_100005490(v117);
  }

  v121 = *(v0 + 8);

  return v121(v105);
}