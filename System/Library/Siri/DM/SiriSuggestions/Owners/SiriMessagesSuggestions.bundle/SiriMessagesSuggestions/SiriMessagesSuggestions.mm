uint64_t sub_165C()
{
  sub_8DCC();
  swift_allocObject();
  sub_8DBC();
  v0 = sub_8D8C();

  if (v0)
  {
    if (sub_1804(v0))
    {
      v1 = sub_8DEC();

      v2 = sub_1F90(1701667182, 0xE400000000000000, v1);

      if (v2)
      {
        result = sub_2A90(v2);
        if (result)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            sub_924C();
          }

          else
          {
            if (!*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
              return result;
            }
          }

          v4 = sub_8DDC();
          v6 = v5;

          if (v6)
          {
            v7 = sub_33FC(&qword_106B0, &qword_98D0);
            v8 = sub_36D0(v7);
            v8[1] = xmmword_9660;
            *(v8 + 7) = &type metadata for String;
            *(v8 + 4) = v4;
            *(v8 + 5) = v6;
LABEL_13:

            goto LABEL_14;
          }
        }

        else
        {
        }
      }
    }

    v8 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v8 = &_swiftEmptyArrayStorage;
LABEL_14:
  sub_36E8();

  return v9(v8);
}

uint64_t sub_1804(uint64_t a1)
{
  sub_915C();
  sub_36A4();
  v62 = v3;
  v63 = v2;
  __chkstk_darwin(v2);
  v61 = &v58[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = sub_912C();
  sub_36A4();
  v60 = v5;
  v7 = __chkstk_darwin(v6);
  v9 = &v58[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v64 = &v58[-v10];
  v11 = sub_33FC(&qword_106B8, &qword_98D8);
  __chkstk_darwin(v11 - 8);
  v13 = &v58[-v12];
  v14 = sub_913C();
  sub_36A4();
  v16 = v15;
  __chkstk_darwin(v17);
  v19 = &v58[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_33FC(&qword_106C0, &qword_98E0);
  v21 = __chkstk_darwin(v20);
  v23 = &v58[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v25 = &v58[-v24];
  if (qword_10440 != -1)
  {
    swift_once();
  }

  *v19 = a1;
  (*(v16 + 104))(v19, enum case for RRQuery.usoReference(_:), v14);
  v26 = sub_916C();
  sub_3444(v13, 1, 1, v26);

  sub_90BC();
  sub_34A4(v13, &qword_106B8, &qword_98D8);
  (*(v16 + 8))(v19, v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_3550(v25, v23);
    v27 = sub_917C();
    v28 = *(v27 - 8);
    if ((*(v28 + 88))(v23, v27) == enum case for RRResult.foundMatch(_:))
    {
      (*(v28 + 96))(v23, v27);
      v29 = v60;
      v31 = v64;
      v30 = v65;
      (*(v60 + 32))(v64, v23, v65);
      if (qword_10480 != -1)
      {
        sub_3678(&qword_10480);
      }

      v32 = sub_910C();
      sub_346C(v32, static Logger.suggestions);
      (*(v29 + 16))(v9, v31, v30);

      v33 = sub_90EC();
      v34 = sub_921C();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v66 = a1;
        v67 = v36;
        *v35 = 136315394;
        sub_8DFC();
        v59 = v34;

        v37 = sub_91AC();
        v39 = sub_2AB4(v37, v38, &v67);

        *(v35 + 4) = v39;
        *(v35 + 12) = 2080;
        sub_35C0(&qword_106C8, 255, &type metadata accessor for RRCandidate, &protocol conformance descriptor for RRCandidate);
        v40 = sub_928C();
        v42 = v41;
        v43 = sub_36F4();
        v20(v43, v65);
        v44 = sub_2AB4(v40, v42, &v67);
        v30 = v65;

        *(v35 + 14) = v44;
        _os_log_impl(&dword_0, v33, v59, "#ReferenceResolution: found SRR match for %s, match=%s", v35, 0x16u);
        swift_arrayDestroy();
        sub_36B8(v36);
        v45 = v35;
        v31 = v64;
        sub_36B8(v45);
      }

      else
      {

        v55 = sub_36F4();
        v20(v55, v30);
      }

      v56 = v61;
      sub_911C();
      v54 = sub_914C();
      (*(v62 + 8))(v56, v63);
      v20(v31, v30);
      goto LABEL_17;
    }

    (*(v28 + 8))(v23, v27);
  }

  if (qword_10480 != -1)
  {
    sub_3678(&qword_10480);
  }

  v46 = sub_910C();
  sub_346C(v46, static Logger.suggestions);

  v47 = sub_90EC();
  v48 = sub_921C();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v66 = a1;
    v67 = v50;
    *v49 = 136315138;
    sub_8DFC();

    v51 = sub_91AC();
    v53 = sub_2AB4(v51, v52, &v67);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_0, v47, v48, "#ReferenceResolution: found no SRR match for %s", v49, 0xCu);
    sub_3504(v50);
    sub_36B8(v50);
    sub_36B8(v49);
  }

  v54 = 0;
LABEL_17:
  sub_34A4(v25, &qword_106C0, &qword_98E0);
  return v54;
}

uint64_t sub_1F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_3024(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1FE0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_309C(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2054()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_2088()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_3670;

  return sub_1648();
}

uint64_t sub_212C()
{
  sub_8DAC();
  swift_allocObject();
  sub_8D9C();
  v0 = sub_8D8C();

  if (v0)
  {
    if (sub_1804(v0))
    {

      v1 = sub_33FC(&qword_106B0, &qword_98D0);
      v2 = sub_36D0(v1);
      *(v2 + 16) = xmmword_9660;
      *(v2 + 56) = &type metadata for Bool;
      *(v2 + 32) = 1;
    }

    else
    {
      v8 = sub_33FC(&qword_106B0, &qword_98D0);
      v2 = sub_36D0(v8);
      *(v2 + 16) = xmmword_9660;
      *(v2 + 56) = &type metadata for Bool;
      *(v2 + 32) = 0;
    }
  }

  else
  {
    if (qword_10480 != -1)
    {
      sub_3678(&qword_10480);
    }

    v3 = sub_910C();
    sub_346C(v3, static Logger.suggestions);
    v4 = sub_90EC();
    v5 = sub_921C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "#ResolveGenericReferenceEntity: Unable to create agent entity", v6, 2u);
      sub_36B8(v6);
    }

    v7 = sub_33FC(&qword_106B0, &qword_98D0);
    v2 = sub_36D0(v7);
    *(v2 + 16) = xmmword_9660;
    *(v2 + 56) = &type metadata for Bool;
    *(v2 + 32) = 0;
  }

  sub_36E8();

  return v9(v2);
}

uint64_t sub_234C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_3670;

  return sub_2118();
}

uint64_t sub_23F0()
{
  v12 = v0;
  if (qword_10480 != -1)
  {
    sub_3678(&qword_10480);
  }

  v1 = sub_910C();
  sub_346C(v1, static Logger.suggestions);

  v2 = sub_90EC();
  v3 = sub_921C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2AB4(*(v4 + 16), *(v4 + 24), &v11);
    *(v5 + 12) = 1024;
    *(v5 + 14) = 1;
    _os_log_impl(&dword_0, v2, v3, "resolved parameter %s to %{BOOL}d", v5, 0x12u);
    sub_3504(v6);
    sub_36B8(v6);
    sub_36B8(v5);
  }

  v7 = sub_33FC(&qword_106B0, &qword_98D0);
  v8 = sub_36D0(v7);
  *(v8 + 16) = xmmword_9660;
  *(v8 + 56) = &type metadata for Bool;
  *(v8 + 32) = 1;
  sub_36E8();

  return v9();
}

uint64_t sub_258C()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_25E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2678;

  return sub_23D8();
}

uint64_t sub_2678(uint64_t a1)
{

  sub_36E8();

  return v2(a1);
}

uint64_t sub_2920()
{
  sub_90DC();
  result = sub_90CC();
  qword_10A00 = result;
  return result;
}

uint64_t sub_2954(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_4090(a1);
  v5 = v4;
  if (v3 == sub_4090(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_929C();
  }

  return v8 & 1;
}

uint64_t sub_29D8(uint64_t a1, uint64_t a2)
{
  sub_4090(a2);
  sub_91BC();
}

Swift::Int sub_2A2C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_92AC();
  sub_4090(v2);
  sub_91BC();

  return sub_92BC();
}

uint64_t sub_2A90(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return _CocoaArrayWrapper.endIndex.getter(a1);
}

unint64_t sub_2AB4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2B78(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_3608(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_3504(v11);
  return v7;
}

unint64_t sub_2B78(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2C78(a5, a6);
    *a1 = v9;
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
    result = sub_925C();
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

char *sub_2C78(uint64_t a1, unint64_t a2)
{
  v3 = sub_2CC4(a1, a2);
  sub_2DDC(&off_C7B8);
  return v3;
}

char *sub_2CC4(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_91DC())
  {
    result = sub_2EC0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_923C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_925C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_2DDC(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2F30(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2EC0(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_33FC(&qword_106D0, &qword_98E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2F30(char *result, int64_t a2, char a3, char *a4)
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
    sub_33FC(&qword_106D0, &qword_98E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_3024(uint64_t a1, uint64_t a2)
{
  sub_92AC();
  sub_91BC();
  v4 = sub_92BC();

  return sub_3124(a1, a2, v4);
}

unint64_t sub_309C(uint64_t a1)
{
  v1 = a1;
  sub_92AC();
  sub_4090(v1);
  sub_91BC();

  v2 = sub_92BC();

  return sub_31D8(v1, v2);
}

unint64_t sub_3124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_929C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_31D8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD00000000000001ELL;
      v8 = &unk_9CE0;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD000000000000026;
          v8 = "messages_ReadItLongMessageHint";
          break;
        case 2:
          v7 = 0xD000000000000012;
          v8 = "ultilingualMessageHint";
          break;
        case 3:
          v7 = 0xD000000000000025;
          v8 = "messages_ReplyHint";
          break;
        case 4:
          v7 = 0xD000000000000013;
          v8 = "ltilingualMessageHint";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD00000000000001ELL;
      v11 = &unk_9CE0;
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000026;
          v11 = "messages_ReadItLongMessageHint";
          break;
        case 2:
          v10 = 0xD000000000000012;
          v11 = "ultilingualMessageHint";
          break;
        case 3:
          v10 = 0xD000000000000025;
          v11 = "messages_ReplyHint";
          break;
        case 4:
          v10 = 0xD000000000000013;
          v11 = "ltilingualMessageHint";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_929C();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_33FC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_346C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_34A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_33FC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_3504(void *a1)
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

uint64_t sub_3550(uint64_t a1, uint64_t a2)
{
  v4 = sub_33FC(&qword_106C0, &qword_98E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_35C0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3608(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_3678(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_36B8(uint64_t a1)
{
}

uint64_t sub_36D0(uint64_t a1)
{

  return swift_allocObject();
}

Swift::Int sub_3708(uint64_t a1)
{
  v1 = a1;
  sub_92AC();
  sub_38F0(v1);
  sub_91BC();

  return sub_92BC();
}

uint64_t sub_376C()
{
  v0 = sub_8D7C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = AFSystemRootDirectory();
  sub_919C();

  sub_8D3C();

  sub_8D5C();
  v8 = *(v1 + 8);
  v8(v4, v0);
  sub_8D5C();
  return (v8)(v6, v0);
}

unint64_t sub_38F0(char a1)
{
  result = 0xD00000000000001ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000026;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000025;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_399C(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_33FC(&qword_106D8, &qword_9920);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_9660;
  sub_8F3C();
  v2 = sub_8F2C();
  IsConciseResolver = type metadata accessor for IsConciseResolver();
  v4 = swift_allocObject();
  *(v4 + 16) = 0x7369636E6F437369;
  *(v4 + 24) = 0xE900000000000065;
  v7 = IsConciseResolver;
  v8 = sub_3AA0();
  *&v6 = v4;
  sub_3AF8(&v6, v1 + 48);
  *(v1 + 32) = 0x7369636E6F437369;
  *(v1 + 40) = 0xE900000000000065;
  *(v1 + 88) = v2;
  return v1;
}

unint64_t sub_3AA0()
{
  result = qword_106E0;
  if (!qword_106E0)
  {
    type metadata accessor for IsConciseResolver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_106E0);
  }

  return result;
}

uint64_t sub_3AF8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_3B10(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_C7E0;
  v6._object = a2;
  v4 = sub_927C(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_3B68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_3B10(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_3B98@<X0>(unint64_t *a1@<X8>)
{
  result = sub_38F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_3BEC()
{
  sub_33FC(&qword_106E8, &qword_9928);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_9910;
  *(inited + 32) = 0;
  *(inited + 40) = &_swiftEmptyArrayStorage;
  *(inited + 48) = 1;
  *(inited + 56) = &_swiftEmptyArrayStorage;
  *(inited + 64) = 2;
  *(inited + 72) = &_swiftEmptyArrayStorage;
  *(inited + 80) = 3;
  *(inited + 88) = &_swiftEmptyArrayStorage;
  *(inited + 96) = 4;
  *(inited + 104) = &_swiftEmptyArrayStorage;
  sub_33FC(&qword_106F0, &unk_9930);
  sub_3CB8();
  result = sub_918C();
  qword_10A08 = result;
  return result;
}

unint64_t sub_3CB8()
{
  result = qword_106F8;
  if (!qword_106F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_106F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnnounceNotificationHints(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AnnounceNotificationHints(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x3E70);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_3EBC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_3ED4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_3EE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_3F28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_3F8C()
{
  result = qword_10700;
  if (!qword_10700)
  {
    sub_3FF0(&qword_10708, ">\n");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10700);
  }

  return result;
}

uint64_t sub_3FF0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_403C()
{
  result = qword_10710;
  if (!qword_10710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10710);
  }

  return result;
}

uint64_t sub_4094(char a1)
{
  v2 = sub_8E4C();
  __chkstk_darwin(v2 - 8);
  sub_8548(0, &qword_10968, INSendMessageIntent_ptr);
  sub_8E3C();
  *(swift_allocObject() + 16) = a1;
  return sub_8E5C();
}

uint64_t sub_4164(uint64_t a1, char a2)
{
  v3 = sub_33FC(&qword_10970, &qword_9C68);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_8E8C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  sub_8E7C();
  if (sub_8100(v5, 1, v6) == 1)
  {
    sub_8418(v5, &qword_10970, &qword_9C68);
    return 0;
  }

  (*(v7 + 32))(v12, v5, v6);
  (*(v7 + 16))(v10, v12, v6);
  if ((*(v7 + 88))(v10, v6) != enum case for SiriSuggestions.Intent.inIntent(_:))
  {
    v18 = *(v7 + 8);
    v18(v12, v6);
    v18(v10, v6);
    return 0;
  }

  (*(v7 + 96))(v10, v6);
  v13 = *v10;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {

    (*(v7 + 8))(v12, v6);
    return 0;
  }

  v15 = sub_8470(v14, &selRef_attachments, &qword_10978, INSendMessageAttachment_ptr);
  if (v15)
  {
    v16 = sub_2A90(v15);

    (*(v7 + 8))(v12, v6);
    result = v16 > 0;
    if (a2)
    {
      return result;
    }

    return result ^ 1;
  }

  (*(v7 + 8))(v12, v6);

  result = 0;
  if ((a2 & 1) == 0)
  {
    return result ^ 1;
  }

  return result;
}

uint64_t sub_444C()
{
  sub_8EAC();
  swift_allocObject();
  result = sub_8EBC();
  qword_10718 = result;
  return result;
}

uint64_t sub_452C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = sub_33FC(&qword_109C8, &qword_9CA0);
  v4 = swift_allocObject();
  *a2 = v4;
  return sub_502C(a1, (v4 + 16));
}

uint64_t sub_458C()
{
  v0 = sub_8548(0, &qword_109A0, INIntent_ptr);

  return static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)(&unk_9C88, 0, v0);
}

uint64_t sub_45EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_460C, 0, 0);
}

uint64_t sub_460C()
{
  v55 = v0;
  if (qword_10480 != -1)
  {
LABEL_39:
    sub_3678(&qword_10480);
  }

  v1 = sub_910C();
  sub_346C(v1, static Logger.suggestions);
  v2 = sub_90EC();
  v3 = sub_920C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#MessagesOwnerDefinitionFactory: running contactsTransformer", v4, 2u);
    sub_36B8(v4);
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = v5;
  v7 = *(v0 + 24);
  v8 = sub_8470(v6, &selRef_recipients, &qword_109C0, INPerson_ptr);
  if (!v8)
  {

    goto LABEL_23;
  }

  v9 = v8;
  v10 = sub_2A90(v8);
  if (v10 <= 0 || v10 > 3)
  {

LABEL_23:
    v22 = *(v0 + 16);
    v23 = &enum case for IntentParameter.ignore(_:);
    goto LABEL_24;
  }

  v11 = v10;
  v52 = v6;
  v53 = v0;
  v12 = sub_2A8C(v9);
  v13 = 0;
  v14 = v9 & 0xC000000000000001;
  v0 = v11;
  while (v12 != v13)
  {
    if (v14)
    {
      v15 = sub_924C();
    }

    else
    {
      if (v13 >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_38;
      }

      v15 = *(v9 + 8 * v13 + 32);
    }

    v16 = v15;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v17 = sub_84E4(v15);
    v19 = v18;

    if (v19)
    {

      v20 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v20 = v17 & 0xFFFFFFFFFFFFLL;
      }

      ++v13;
      if (v20)
      {
        continue;
      }
    }

    v0 = v53;
    v21 = *(v53 + 24);

    goto LABEL_23;
  }

  v54 = &_swiftEmptyArrayStorage;
  sub_8230(0, v0, 0);
  v28 = 0;
  v29 = &_swiftEmptyArrayStorage;
  do
  {
    if (v14)
    {
      v30 = sub_924C();
    }

    else
    {
      v30 = *(v9 + 8 * v28 + 32);
    }

    v31 = v30;
    v32 = [v30 displayName];
    v33 = sub_919C();
    v35 = v34;

    v54 = v29;
    v37 = v29[2];
    v36 = v29[3];
    if (v37 >= v36 >> 1)
    {
      sub_8230((v36 > 1), v37 + 1, 1);
      v29 = v54;
    }

    ++v28;
    v29[2] = v37 + 1;
    v38 = &v29[2 * v37];
    v38[4] = v33;
    v38[5] = v35;
  }

  while (v0 != v28);
  v0 = v53;
  v39 = *(v53 + 24);

  v40 = v39;

  v41 = sub_90EC();
  v42 = sub_921C();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = *(v53 + 24);
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v54 = v46;
    *v44 = 136315394;
    v47 = sub_91FC();
    v49 = sub_2AB4(v47, v48, &v54);

    *(v44 + 4) = v49;
    v0 = v53;
    *(v44 + 12) = 2112;
    *(v44 + 14) = v52;
    *v45 = v52;
    v50 = v43;
    _os_log_impl(&dword_0, v41, v42, "#MessagesOwnerDefinitionFactory: returning contactNames %s from intent %@", v44, 0x16u);
    sub_8418(v45, &qword_109A8, &qword_9C80);
    sub_36B8(v45);
    sub_3504(v46);
    sub_36B8(v46);
    sub_36B8(v44);
  }

  v22 = *(v0 + 16);
  v51 = *(v0 + 24);
  v22[3] = sub_33FC(&qword_109B0, &qword_9C90);

  *v22 = v29;
  v23 = &enum case for IntentParameter.directAssignment(_:);
LABEL_24:
  v24 = *v23;
  sub_8EFC();
  sub_85D0();
  (*(v25 + 104))(v22, v24);
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_4AE8()
{
  v0 = sub_8548(0, &qword_109A0, INIntent_ptr);

  return static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)(&unk_9C78, 0, v0);
}

uint64_t sub_4B48(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_4B68, 0, 0);
}

uint64_t sub_4B68()
{
  v39 = v0;
  if (qword_10480 != -1)
  {
    sub_3678(&qword_10480);
  }

  v1 = sub_910C();
  sub_346C(v1, static Logger.suggestions);
  v2 = sub_90EC();
  v3 = sub_920C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#MessagesOwnerDefinitionFactory: running groupNameTransformer", v4, 2u);
    sub_36B8(v4);
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    v23 = *(v0 + 16);
    v29 = enum case for IntentParameter.ignore(_:);
LABEL_11:
    sub_8EFC();
    sub_85D0();
    (*(v30 + 104))(v23, v29);
    goto LABEL_13;
  }

  v6 = v5;
  v7 = *(v0 + 24);
  v8 = [v6 speakableGroupName];
  v9 = *(v0 + 24);
  if (v8)
  {
    v10 = v8;
    v11 = v9;
    v12 = v10;
    v13 = sub_90EC();
    v14 = sub_921C();

    if (os_log_type_enabled(v13, v14))
    {
      v36 = *(v0 + 24);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v37;
      *v15 = 136315394;
      v17 = [v12 spokenPhrase];
      v18 = sub_919C();
      v20 = v19;

      v21 = sub_2AB4(v18, v20, &v38);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2112;
      *(v15 + 14) = v6;
      *v16 = v6;
      v22 = v36;
      _os_log_impl(&dword_0, v13, v14, "#MessagesOwnerDefinitionFactory: returning groupName %s from intent %@", v15, 0x16u);
      sub_8418(v16, &qword_109A8, &qword_9C80);
      sub_36B8(v16);
      sub_3504(v37);
      sub_36B8(v37);
      sub_36B8(v15);
    }

    v23 = *(v0 + 16);
    v24 = *(v0 + 24);
    v25 = [v12 spokenPhrase];
    v26 = sub_919C();
    v28 = v27;

    v23[3] = &type metadata for String;
    *v23 = v26;
    v23[1] = v28;
    v29 = enum case for IntentParameter.directAssignment(_:);
    goto LABEL_11;
  }

  v31 = *(v0 + 16);
  v32 = enum case for IntentParameter.ignore(_:);
  sub_8EFC();
  sub_85D0();
  (*(v33 + 104))(v31, v32);

LABEL_13:
  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_4EF8()
{
  sub_8F3C();
  if (qword_10460 != -1)
  {
    swift_once();
  }

  sub_83B4(&unk_10A10, v1);
  result = sub_8F1C();
  qword_10748 = result;
  return result;
}

uint64_t sub_4F90()
{
  sub_8F3C();
  if (qword_10468 != -1)
  {
    swift_once();
  }

  sub_83B4(&unk_10A38, v1);
  result = sub_8F1C();
  qword_10750 = result;
  return result;
}

uint64_t sub_502C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_3608(a1, v22);
  sub_33FC(&qword_109D0, &qword_9CA8);
  if (swift_dynamicCast())
  {
    v3 = v21;
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  v4 = v3[2];
  if (v4)
  {
    v19 = a2;
    v5 = &_swiftEmptyArrayStorage;
    v6 = (v3 + 4);
    while (1)
    {
      sub_3608(v6, v22);
      sub_3608(v22, &v21);
      sub_8548(0, &qword_109C0, INPerson_ptr);
      if (swift_dynamicCast())
      {
        sub_84E4(v20);
        if (v7)
        {

          v8 = [v20 displayName];
          v9 = sub_919C();
          v11 = v10;

          sub_3504(v22);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_8128(0, *(v5 + 2) + 1, 1, v5);
          }

          v13 = *(v5 + 2);
          v12 = *(v5 + 3);
          if (v13 >= v12 >> 1)
          {
            v5 = sub_8128((v12 > 1), v13 + 1, 1, v5);
          }

          *(v5 + 2) = v13 + 1;
          v14 = &v5[16 * v13];
          *(v14 + 4) = v9;
          *(v14 + 5) = v11;
          goto LABEL_15;
        }
      }

      sub_3504(v22);
LABEL_15:
      v6 += 32;
      if (!--v4)
      {

        a2 = v19;
        goto LABEL_18;
      }
    }
  }

  v5 = &_swiftEmptyArrayStorage;
LABEL_18:
  if (*(v5 + 2))
  {
    v15 = *(v5 + 4);
    v16 = *(v5 + 5);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  sub_33FC(&qword_109D8, &qword_9CB0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_9660;
  *(v17 + 32) = v15;
  *(v17 + 40) = v16;
  result = sub_33FC(&qword_109E0, &qword_9CB8);
  a2[3] = result;
  *a2 = v17;
  return result;
}

uint64_t sub_52A0(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = sub_8ECC();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_5364, 0, 0);
}

uint64_t sub_5364()
{
  if (qword_10450 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = qword_10718;
  v0[13] = sub_8EAC();
  v0[14] = sub_836C(&qword_10938, 255, &type metadata accessor for DomainOwner, &protocol conformance descriptor for DomainOwner);
  v0[10] = v2;

  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_54E8;

  return v5(v0 + 10);
}

uint64_t sub_54E8(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 216) = a1;

  sub_3504((v2 + 80));

  return _swift_task_switch(sub_55F0, 0, 0);
}

uint64_t sub_55F0()
{
  v1 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  sub_33FC(&qword_10940, &qword_9C48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_9AA0;
  sub_909C();
  v7 = sub_8EDC();
  v0[18] = v7;
  v0[19] = sub_836C(&qword_10948, 255, &type metadata accessor for CoreSignalTypes, &protocol conformance descriptor for CoreSignalTypes);
  v8 = sub_8024(v0 + 15);
  (*(*(v7 - 8) + 104))(v8, enum case for CoreSignalTypes.app(_:), v7);
  *(inited + 32) = sub_906C();
  *(inited + 40) = sub_905C();
  *(inited + 48) = sub_907C();
  *(inited + 56) = sub_908C();
  sub_5A28(v1, inited);
  swift_setDeallocating();
  sub_7F88();
  *v2 = 0xD00000000000001ELL;
  v2[1] = 0x8000000000009FD0;
  (*(v3 + 104))(v2, enum case for DialogDetails.catId(_:), v4);
  *(swift_task_alloc() + 16) = v5;
  sub_901C();

  (*(v3 + 8))(v2, v4);
  v9 = 0;
  do
  {
    v10 = *(&off_C878 + v9++ + 32);
    v11 = 0xD00000000000001ELL;
    v12 = &unk_9CE0;
    switch(v10)
    {
      case 1:
        v11 = 0xD000000000000026;
        v12 = "messages_ReadItLongMessageHint";
        break;
      case 2:
        v11 = 0xD000000000000012;
        v12 = "ultilingualMessageHint";
        break;
      case 3:
        v11 = 0xD000000000000025;
        v12 = "messages_ReplyHint";
        break;
      case 4:
        v11 = 0xD000000000000013;
        v12 = "ltilingualMessageHint";
        break;
      default:
        break;
    }

    v17._object = (v12 | 0x8000000000000000);
    v17._countAndFlagsBits = v11;
    sub_91CC(v17);

    *(swift_task_alloc() + 16) = v10;
    sub_900C();
  }

  while (v9 != 5);
  sub_33FC(&qword_10950, &qword_9C50);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_9660;
  sub_902C();

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_5A28(uint64_t a1, uint64_t a2)
{
  v13 = a2;
  v4 = sub_8ECC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = 0xD000000000000021;
  v7[1] = 0x800000000000A050;
  v8 = enum case for DialogDetails.catId(_:);
  v9 = *(v5 + 104);
  v9(v7, enum case for DialogDetails.catId(_:), v4);
  v12 = v2;
  v16 = v2;
  v17 = a2;
  v18 = v2;
  sub_901C();
  v10 = *(v5 + 8);
  v10(v7, v4);
  *v7 = 0xD000000000000023;
  v7[1] = 0x800000000000A0A0;
  v9(v7, v8, v4);
  v14 = v12;
  v15 = v13;
  sub_901C();

  return (v10)(v7, v4);
}

uint64_t sub_5C34(void *a1, uint64_t a2)
{
  v48 = a2;
  v3 = a1[5];
  v47 = *(a1 + 3);
  sub_7FE0(a1, v47);
  sub_33FC(&qword_10958, &qword_9C58);
  v4 = sub_8E9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_9AB0;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v9, enum case for DeviceType.iPhone(_:), v4);
  v10(v9 + v6, enum case for DeviceType.iPad(_:), v4);
  v56 = v47;
  v57 = v3;
  sub_8024(v55);
  sub_8FBC();

  v11 = v57;
  v47 = v56;
  sub_7FE0(v55, v56);
  if (qword_10488 != -1)
  {
    swift_once();
  }

  v53 = v47;
  v54 = v11;
  sub_8024(v52);
  sub_8F9C();
  v13 = v53;
  v46 = v13 >> 64;
  v12 = v13;
  v43 = v53;
  v44 = sub_7FE0(v52, v53);
  *&v47 = &v41;
  v45 = *(v12 - 8);
  __chkstk_darwin(v44);
  v42 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_33FC(&qword_10940, &qword_9C48);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_9AA0;
  sub_909C();
  v16 = sub_8EDC();
  v50 = v16;
  v17 = sub_836C(&qword_10948, 255, &type metadata accessor for CoreSignalTypes, &protocol conformance descriptor for CoreSignalTypes);
  v51 = v17;
  v18 = sub_8024(v49);
  v19 = enum case for CoreSignalTypes.app(_:);
  v20 = *(*(v16 - 8) + 104);
  v20(v18, enum case for CoreSignalTypes.app(_:), v16);
  *(v15 + 32) = sub_906C();
  v50 = v16;
  v51 = v17;
  v21 = sub_8024(v49);
  v20(v21, v19, v16);
  *(v15 + 40) = sub_906C();
  v50 = v16;
  v51 = v17;
  v22 = sub_8024(v49);
  v20(v22, v19, v16);
  *(v15 + 48) = sub_906C();
  v50 = v16;
  v51 = v17;
  v23 = sub_8024(v49);
  v20(v23, v19, v16);
  *(v15 + 56) = sub_906C();
  v24 = v42;
  v25 = v43;
  sub_8E2C();

  (*(v45 + 8))(v24, v25);
  sub_3504(v52);
  sub_3504(v55);
  v26 = a1[3];
  v27 = sub_7FE0(a1, v26);
  v28 = *(v26 - 8);
  __chkstk_darwin(v27);
  v30 = &v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v56 = sub_8E6C();
  *(&v56 + 1) = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_8024(v55);
  sub_4094(1);
  sub_8F8C();
  (*(v28 + 8))(v30, v26);
  sub_3504(v55);
  v31 = a1[3];
  v32 = sub_7FE0(a1, v31);
  v33 = *(v31 - 8);
  __chkstk_darwin(v32);
  v35 = &v41 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_33FC(&qword_10960, &qword_9C60);
  v36 = sub_8EEC();
  v37 = *(v36 - 8);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_9660;
  (*(v37 + 104))(v39 + v38, enum case for DeliveryVehicle.siriHelp(_:), v36);
  sub_8FDC();

  return (*(v33 + 8))(v35, v31);
}

uint64_t sub_638C(uint64_t a1, unsigned int a2)
{
  v26 = a2;
  *&v27 = sub_8D7C();
  v3 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 40);
  v24 = *(a1 + 24);
  v28 = a1;
  *&v25 = sub_7FE0(a1, v24);
  sub_33FC(&qword_10958, &qword_9C58);
  v7 = sub_8E9C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_9AB0;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, enum case for DeviceType.iPhone(_:), v7);
  v13(v12 + v9, enum case for DeviceType.iPad(_:), v7);
  v14 = v26;
  v36 = v24;
  v37 = v6;
  sub_8024(v35);
  sub_8FBC();

  v15 = v37;
  v25 = v36;
  sub_7FE0(v35, v36);
  sub_376C();
  sub_8D6C();
  (*(v3 + 8))(v5, v27);
  v33 = v25;
  v34 = v15;
  sub_8024(v32);
  sub_8F9C();

  v16 = v34;
  v27 = v33;
  sub_7FE0(v32, v33);
  sub_38F0(v14);
  v30 = v27;
  v31 = v16;
  sub_8024(v29);
  sub_8FCC();

  v17 = v30;
  v18 = sub_7FE0(v29, v30);
  v19 = *(v17 - 8);
  __chkstk_darwin(v18);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10448 != -1)
  {
    swift_once();
  }

  sub_1FE0(v14, qword_10A08);
  sub_8E2C();

  (*(v19 + 8))(v21, v17);
  sub_3504(v29);
  sub_3504(v32);
  sub_3504(v35);
  v22 = sub_399C(v14);
  sub_67E8(v22, v28);
}

uint64_t sub_67E8(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  for (i = result + 48; v3; --v3)
  {
    sub_8084(a2, v10);
    v5 = v11;
    v6 = sub_7FE0(v10, v11);
    v7 = *(v5 - 8);
    __chkstk_darwin(v6);
    v9 = v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_8FFC();
    (*(v7 + 8))(v9, v5);
    result = sub_3504(v10);
    i += 64;
  }

  return result;
}

uint64_t sub_6928(void *a1, uint64_t a2, uint64_t a3)
{
  sub_6FE0(a1);
  v4 = a1[3];
  v5 = sub_7FE0(a1, v4);
  v6 = *(v4 - 8);
  __chkstk_darwin(v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10498 != -1)
  {
    swift_once();
  }

  sub_8E0C();
  (*(v6 + 8))(v8, v4);
  v9 = a1[3];
  v10 = sub_7FE0(a1, v9);
  v11 = *(v9 - 8);
  __chkstk_darwin(v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_8E6C();
  v42 = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_8024(v40);
  sub_4094(0);
  sub_8F8C();
  (*(v11 + 8))(v13, v9);
  sub_3504(v40);
  v14 = a1[3];
  v39[1] = a1[5];
  v39[0] = sub_7FE0(a1, v14);
  v39[2] = v39;
  v15 = *(v14 - 8);
  __chkstk_darwin(v39[0]);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_33FC(&qword_10960, &qword_9C60);
  v18 = sub_8EEC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_9AB0;
  v23 = v22 + v21;
  v24 = *(v19 + 104);
  v24(v23, enum case for DeliveryVehicle.siriHelp(_:), v18);
  v24(v23 + v20, enum case for DeliveryVehicle.siriAutoComplete(_:), v18);
  sub_8FDC();

  (*(v15 + 8))(v17, v14);
  v25 = a1[3];
  v26 = sub_7FE0(a1, v25);
  v27 = *(v25 - 8);
  __chkstk_darwin(v26);
  v29 = v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10458 != -1)
  {
    swift_once();
  }

  sub_83B4(qword_10720, v40);
  if (qword_10470 != -1)
  {
    swift_once();
  }

  sub_8FEC();
  sub_8418(v40, &qword_10990, &qword_9C70);
  (*(v27 + 8))(v29, v25);
  v30 = a1[3];
  v31 = sub_7FE0(a1, v30);
  v32 = *(v30 - 8);
  __chkstk_darwin(v31);
  v34 = v39 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for NoOpResolver();
  v36 = swift_allocObject();
  *(v36 + 16) = 0x6D614E70756F7267;
  *(v36 + 24) = 0xE900000000000065;
  v41 = v35;
  v42 = sub_836C(&qword_10998, v37, type metadata accessor for NoOpResolver, &unk_9BB8);
  v40[0] = v36;
  if (qword_10478 != -1)
  {
    swift_once();
  }

  sub_8FEC();
  (*(v32 + 8))(v34, v30);
  return sub_8418(v40, &qword_10990, &qword_9C70);
}

uint64_t sub_6FE0(uint64_t a1)
{
  v52 = sub_8F6C();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v3 = (&v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(a1 + 40);
  v51 = *(a1 + 24);
  sub_7FE0(a1, v51);
  if (qword_10490 != -1)
  {
    swift_once();
  }

  v63 = v51;
  v64 = v4;
  sub_8024(&v62);
  sub_8FBC();
  v5 = v64;
  v51 = v63;
  sub_7FE0(&v62, v63);
  if (qword_10488 != -1)
  {
    swift_once();
  }

  *v61 = v51;
  *&v61[16] = v5;
  sub_8024(&v60);
  sub_8F9C();
  v6 = *v61;
  v51 = *&v61[8];
  v39 = sub_7FE0(&v60, *v61);
  v41 = sub_33FC(&qword_10940, &qword_9C48);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_9AC0;
  v49 = sub_909C();
  *(v7 + 32) = sub_908C();
  v44 = sub_33FC(&qword_10960, &qword_9C60);
  v43 = sub_8EEC();
  v8 = *(v43 - 8);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v40 = *(v8 + 72);
  v9 = v40;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_9660;
  v48 = enum case for DeliveryVehicle.siriHelp(_:);
  v42 = *(v8 + 104);
  v42(v11 + v10);
  *v3 = v11;
  v47 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v12 = v50;
  v13 = v50[13];
  v45 = v50 + 13;
  v46 = v13;
  v14 = v3;
  v15 = v3;
  v16 = v52;
  v13(v14);
  v58 = v6;
  v59 = v51;
  sub_8024(v57);
  sub_8E1C();

  v17 = v12[1];
  v17(v15, v16);
  v18 = v17;
  v19 = v58;
  v39 = (v10 + 2 * v9);
  v51 = v59;
  v50 = sub_7FE0(v57, v58);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_9AD0;
  v21 = sub_8EDC();
  v55 = v21;
  *&v56 = sub_836C(&qword_10948, 255, &type metadata accessor for CoreSignalTypes, &protocol conformance descriptor for CoreSignalTypes);
  v22 = sub_8024(v54);
  (*(*(v21 - 8) + 104))(v22, enum case for CoreSignalTypes.app(_:), v21);
  *(v20 + 32) = sub_906C();
  *(v20 + 40) = sub_905C();
  *(v20 + 48) = sub_907C();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_9AB0;
  v24 = v23 + v10;
  v25 = v23 + v10;
  v26 = v43;
  v27 = v42;
  (v42)(v25, enum case for DeliveryVehicle.assistantSuggestions(_:), v43);
  (v27)(v24 + v40, v48, v26);
  *v15 = v23;
  v28 = v52;
  v46(v15, v47, v52);
  v55 = v19;
  v56 = v51;
  sub_8024(v54);
  sub_8E1C();

  v18(v15, v28);
  v29 = v55;
  v30 = sub_7FE0(v54, v55);
  v31 = *(v29 - 8);
  __chkstk_darwin(v30);
  v33 = &v38 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for MessagesSuggestionsAssetProvider();
  v35 = swift_allocObject();
  v53[3] = v34;
  v53[4] = sub_836C(&qword_10988, v36, type metadata accessor for MessagesSuggestionsAssetProvider, &unk_9BE0);
  v53[0] = v35;
  sub_8FAC();
  (*(v31 + 8))(v33, v29);
  sub_3504(v53);
  sub_3504(v54);
  sub_3504(v57);
  sub_3504(&v60);
  return sub_3504(&v62);
}

uint64_t sub_7754(void *a1)
{
  v2 = sub_8E4C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6FE0(a1);
  v6 = a1[3];
  v7 = sub_7FE0(a1, v6);
  v8 = *(v6 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8548(0, &qword_10980, INSearchForMessagesIntent_ptr);
  sub_8E3C();
  sub_8F7C();
  (*(v3 + 8))(v5, v2);
  (*(v8 + 8))(v10, v6);
  v11 = a1[3];
  v24[1] = a1[5];
  v12 = sub_7FE0(a1, v11);
  v13 = *(v11 - 8);
  __chkstk_darwin(v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_33FC(&qword_10960, &qword_9C60);
  v16 = sub_8EEC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_9AE0;
  v21 = v20 + v19;
  v22 = *(v17 + 104);
  v22(v21, enum case for DeliveryVehicle.siriHelp(_:), v16);
  v22(v21 + v18, enum case for DeliveryVehicle.siriAutoComplete(_:), v16);
  v22(v21 + 2 * v18, enum case for DeliveryVehicle.assistantSuggestions(_:), v16);
  sub_8FDC();

  return (*(v13 + 8))(v15, v11);
}

uint64_t sub_7B0C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_7BB0;

  return sub_52A0(a1, a2);
}

uint64_t sub_7BB0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_7CAC()
{
  v0 = sub_33FC(&qword_109E8, &qword_9CC0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v10 - v4;
  strcpy(&v10 - v4, "com.apple.siri");
  (&v10 - v4)[15] = -18;
  v6 = enum case for Image.appIcon(_:);
  v7 = sub_903C();
  sub_85D0();
  (*(v8 + 104))(v5, v6, v7);
  sub_3444(v5, 0, 1, v7);
  sub_3444(v3, 1, 1, v7);
  return sub_904C();
}

uint64_t sub_7E6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_85CC;

  return sub_7E2C();
}

uint64_t sub_7F88()
{
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

void *sub_7FE0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_8024(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_8084(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_8128(char *result, int64_t a2, char a3, char *a4)
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
    sub_33FC(&qword_109B8, &qword_9C98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_8230(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_8250(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_8250(char *result, int64_t a2, char a3, char *a4)
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
    sub_33FC(&qword_109B8, &qword_9C98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_836C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_83B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_8418(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_33FC(a2, a3);
  sub_85D0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_8470(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_8548(0, a3, a4);
  v8 = sub_91EC();

  return v8;
}

uint64_t sub_84E4(void *a1)
{
  v1 = [a1 contactIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_919C();

  return v3;
}

uint64_t sub_8548(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_8588()
{
  if (*(v0 + 40))
  {
    sub_3504((v0 + 16));
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t Logger.suggestions.unsafeMutableAddressor()
{
  if (qword_10480 != -1)
  {
    sub_3678(&qword_10480);
  }

  v0 = sub_910C();

  return sub_346C(v0, static Logger.suggestions);
}

uint64_t sub_8634()
{
  v0 = sub_910C();
  sub_875C(v0, static Logger.suggestions);
  sub_346C(v0, static Logger.suggestions);
  return sub_90FC();
}

uint64_t static Logger.suggestions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10480 != -1)
  {
    sub_3678(&qword_10480);
  }

  v2 = sub_910C();
  v3 = sub_346C(v2, static Logger.suggestions);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_875C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_87C0()
{
  result = sub_87E4();
  qword_10A78 = result;
  unk_10A80 = v1;
  return result;
}

uint64_t sub_87E4()
{
  v0 = sub_8D7C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v18 - v5;
  v7 = AFSystemRootDirectory();
  sub_919C();

  sub_8D3C();

  sub_8D5C();
  v8 = *(v1 + 8);
  v8(v4, v0);
  sub_8548(0, &qword_109F0, NSBundle_ptr);
  (*(v1 + 16))(v4, v6, v0);
  v9 = sub_8A98(v4);
  if (v9 && (v10 = sub_8CCC(v9), v11))
  {
    v18[0] = v10;
    v18[1] = v11;

    v19._countAndFlagsBits = 0x74616C706D65542FLL;
    v19._object = 0xEA00000000007365;
    sub_91CC(v19);

    v12 = v18[0];
  }

  else
  {
    if (qword_10480 != -1)
    {
      swift_once();
    }

    v13 = sub_910C();
    sub_346C(v13, static Logger.suggestions);
    v14 = sub_90EC();
    v15 = sub_922C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "#Constants failed to find SiriMessagesFlow resource path", v16, 2u);
    }

    v12 = 0;
  }

  v8(v6, v0);
  return v12;
}

id sub_8A98(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_8D4C(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4];

  v7 = sub_8D7C();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

uint64_t sub_8B34()
{
  sub_33FC(&qword_10958, &qword_9C58);
  v0 = sub_8E9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_9AE0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for DeviceType.iPhone(_:), v0);
  v6(v5 + v2, enum case for DeviceType.iPad(_:), v0);
  result = (v6)(v5 + 2 * v2, enum case for DeviceType.mac(_:), v0);
  qword_10A88 = v4;
  return result;
}

uint64_t sub_8C68()
{
  sub_8548(0, &qword_10968, INSendMessageIntent_ptr);
  sub_33FC(&qword_109F8, &unk_9CF0);
  result = sub_91AC();
  qword_10A90 = result;
  *algn_10A98 = v1;
  return result;
}

uint64_t sub_8CCC(void *a1)
{
  v2 = [a1 resourcePath];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_919C();

  return v3;
}