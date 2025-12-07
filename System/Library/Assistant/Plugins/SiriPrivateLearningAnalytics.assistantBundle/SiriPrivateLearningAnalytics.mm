uint64_t sub_14DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a1;
  v5 = sub_2918();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2A48();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_8248 != -1)
  {
    swift_once();
  }

  v13 = sub_2AF8();
  sub_2180(v13, qword_8250);
  v14 = sub_2AD8();
  v15 = sub_2B18();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = v10;
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "Running SiriPrivateLearningAnalytics maintenance plugin", v16, 2u);
    v10 = v24;
  }

  if (qword_8228 != -1)
  {
    swift_once();
  }

  v17 = sub_2A78();
  v18 = sub_2180(v17, qword_8230);
  sub_2A38();
  v19 = sub_21B8(v18, "runMaintenance", 14, 2, v12);
  (*(v10 + 8))(v12, v9);
  (*(v6 + 104))(v8, enum case for PrivateLearningPluginRunContext.maintenance(_:), v5);
  v20 = swift_allocObject();
  v21 = v25;
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = a2;
  v20[5] = v3;

  sub_24B8(v21, a2);
  v22 = v3;
  sub_2928();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v37 = a2;
  v50 = sub_2908();
  v5 = *(v50 - 8);
  v6 = __chkstk_darwin(v50);
  v49 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v48 = v36 - v8;
  v47 = sub_2968();
  __chkstk_darwin(v47);
  v46 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v36[0] = v11;
  v36[1] = a1;
  v12 = 0;
  if (v11)
  {
    v14 = *(v9 + 16);
    v13 = v9 + 16;
    v45 = v14;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v16 = *(v13 + 56);
    v44 = enum case for PrivateLearningPluginResult.success(_:);
    v42 = (v5 + 8);
    v43 = (v5 + 104);
    v40 = v16;
    v41 = (v13 - 8);
    v18 = v48;
    v17 = v49;
    while (1)
    {
      v52 = v12;
      v19 = v46;
      v20 = v47;
      v21 = v13;
      v45(v46, v15, v47);
      sub_2958();
      v22 = v50;
      (*v43)(v17, v44, v50);
      v51 = sub_28F8();
      v23 = *v42;
      (*v42)(v17, v22);
      v23(v18, v22);
      v24 = v20;
      v25 = v52;
      (*v41)(v19, v24);
      v26 = (v51 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v12 = v25 + v26;
      if (v27)
      {
        break;
      }

      v15 += v40;
      --v11;
      v13 = v21;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    if (qword_8248 == -1)
    {
      goto LABEL_6;
    }
  }

  swift_once();
LABEL_6:
  v28 = sub_2AF8();
  sub_2180(v28, qword_8250);

  v29 = sub_2AD8();
  v30 = sub_2B18();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134218240;
    *(v31 + 4) = v36[0];

    *(v31 + 12) = 2048;
    *(v31 + 14) = v12;
    _os_log_impl(&dword_0, v29, v30, "SiriPrivateLearningAnalytics maintenance plugin run %ld plugin(s) with %ld failure(s)", v31, 0x16u);
  }

  else
  {
  }

  v33 = v38;
  v32 = v39;
  v34 = v37;
  sub_24C8();
  return sub_1BFC(v34, v33, v32);
}

uint64_t sub_1BFC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v18 = a3;
  v19 = a2;
  v3 = sub_2A88();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2A48();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_8228 != -1)
  {
    swift_once();
  }

  v11 = sub_2A78();
  sub_2180(v11, qword_8230);
  v12 = sub_2A68();
  sub_2A98();
  v13 = sub_2B38();
  if (sub_2B58())
  {

    sub_2AC8();

    if ((*(v4 + 88))(v6, v3) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v14 = "";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_2A28();
    _os_signpost_emit_with_name_impl(&dword_0, v12, v13, v16, "runMaintenance", v14, v15, 2u);
  }

  result = (*(v8 + 8))(v10, v7);
  if (v19)
  {
    return v19(result);
  }

  return result;
}

id sub_1F5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalyticsServiceMaintenance();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1FC4()
{
  v0 = sub_2AF8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2A78();
  sub_283C(v4, qword_8230);
  sub_2180(v4, qword_8230);
  if (qword_8248 != -1)
  {
    swift_once();
  }

  v5 = sub_2180(v0, qword_8250);
  (*(v1 + 16))(v3, v5, v0);
  return sub_2A58();
}

uint64_t sub_2100()
{
  v0 = sub_2AF8();
  sub_283C(v0, qword_8250);
  sub_2180(v0, qword_8250);
  return sub_2AE8();
}

uint64_t sub_2180(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21B8(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = sub_2A48();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_2B08();
  v14 = [v12 BOOLForKey:v13];

  v15 = sub_2A68();
  v16 = sub_2B48();
  result = sub_2B58();
  if (v14)
  {
    if ((result & 1) == 0)
    {
LABEL_21:

      (*(v9 + 16))(v11, a5, v8);
      sub_2AB8();
      swift_allocObject();
      return sub_2AA8();
    }

    if (a4)
    {
LABEL_10:
      if (!(a2 >> 32))
      {
        if ((a2 & 0xFFFFF800) == 0xD800)
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        if (a2 >> 16 <= 0x10)
        {
          a2 = v21;
          goto LABEL_14;
        }

        goto LABEL_24;
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (a2)
    {
LABEL_14:
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_2A28();
      v20 = "";
LABEL_20:
      _os_signpost_emit_with_name_impl(&dword_0, v15, v16, v19, a2, v20, v18, 2u);

      goto LABEL_21;
    }

    __break(1u);
  }

  if ((result & 1) == 0)
  {
    goto LABEL_21;
  }

  if ((a4 & 1) == 0)
  {
    if (!a2)
    {
      __break(1u);
      goto LABEL_10;
    }

LABEL_19:
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_2A28();
    v20 = "enableTelemetry=YES";
    goto LABEL_20;
  }

  if (a2 >> 32)
  {
    goto LABEL_23;
  }

  if ((a2 & 0xFFFFF800) != 0xD800)
  {
    if (a2 >> 16 > 0x10)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    a2 = &v22;
    goto LABEL_19;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_245C()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_24B8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24C8()
{
  sub_29F8();
  swift_allocObject();
  sub_29E8();
  sub_29B8();
  v0 = sub_2988();
  swift_allocObject();
  v1 = sub_2998();
  if (v1)
  {
    v17 = v0;
    v18 = &protocol witness table for InferredGroundTruthStoreCoreData;
    v16[0] = v1;

    sub_29D8();
    sub_27F0(v16);
    sub_2978();
  }

  else
  {
    if (qword_8248 != -1)
    {
      swift_once();
    }

    v2 = sub_2AF8();
    sub_2180(v2, qword_8250);
    v3 = sub_2AD8();
    v4 = sub_2B28();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "SiriPrivateLearningAnalytics maintenance couldn't check ground truth store size", v5, 2u);
    }

    v6 = sub_2AD8();
    v7 = sub_2B28();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "SiriPrivateLearningAnalytics maintenance could not load ground truth store to evaluate contact references", v8, 2u);
    }
  }

  sub_29A8();
  v9 = sub_2A08();
  swift_allocObject();
  v10 = sub_2A18();
  if (v10)
  {
    v17 = v9;
    v18 = &protocol witness table for PICSStoreCoreData;
    v16[0] = v10;

    sub_29C8();

    return sub_27F0(v16);
  }

  else
  {
    if (qword_8248 != -1)
    {
      swift_once();
    }

    v12 = sub_2AF8();
    sub_2180(v12, qword_8250);
    v13 = sub_2AD8();
    v14 = sub_2B28();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "SiriPrivateLearningAnalytics maintenance could not load pics store to evaluate contact references", v15, 2u);
    }
  }
}

uint64_t sub_27F0(void *a1)
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

uint64_t *sub_283C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_28A0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_28B0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}