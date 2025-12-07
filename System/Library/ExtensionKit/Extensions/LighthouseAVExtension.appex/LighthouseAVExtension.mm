Swift::Int sub_1000014D8()
{
  sub_1000045A8();
  sub_100004468();
  return sub_1000045B8();
}

Swift::Int sub_10000154C(uint64_t a1)
{
  sub_1000045A8();
  sub_100004468();
  return sub_1000045B8();
}

uint64_t sub_1000015A0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100008558;
  v7._object = v3;
  v5 = sub_100004528(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100001624()
{
  v0 = sub_100004428();
  sub_100003FB0(v0, qword_10000C430);
  sub_100002FA4(v0, qword_10000C430);
  return sub_100004418();
}

uint64_t sub_1000016A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[36] = a2;
  v3[37] = a3;
  v3[35] = a1;
  v4 = sub_100004428();
  v3[38] = v4;
  v3[39] = *(v4 - 8);
  v3[40] = swift_task_alloc();
  v5 = sub_100004358();
  v3[41] = v5;
  v3[42] = *(v5 - 8);
  v3[43] = swift_task_alloc();
  v6 = sub_1000042F8();
  v3[44] = v6;
  v3[45] = *(v6 - 8);
  v3[46] = swift_task_alloc();
  v7 = sub_100004308();
  v3[47] = v7;
  v3[48] = *(v7 - 8);
  v3[49] = swift_task_alloc();
  v8 = sub_100004268();
  v3[50] = v8;
  v3[51] = *(v8 - 8);
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  sub_100002F18(&qword_10000C010, &qword_1000049B8);
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  sub_100002F18(&qword_10000C018, &qword_1000049C0);
  v3[56] = swift_task_alloc();
  v9 = sub_100002F18(&qword_10000C020, &qword_1000049C8);
  v3[57] = v9;
  v3[58] = *(v9 - 8);
  v3[59] = swift_task_alloc();

  return _swift_task_switch(sub_1000019C4, 0, 0);
}

uint64_t sub_1000019C4()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  *(v0 + 480) = sub_1000043E8();
  *(v0 + 488) = v3;
  *(v0 + 508) = os_variant_has_internal_diagnostics();
  *(v0 + 264) = v2;
  *(v0 + 272) = v1;
  v4 = swift_task_alloc();
  *(v0 + 496) = v4;
  v5 = sub_100002EC4();
  v6 = sub_100002F60(&qword_10000C028, &protocol conformance descriptor for EvaluationJobDescription);
  v7 = sub_100002F60(&qword_10000C030, &protocol conformance descriptor for EvaluationJobDescription);
  *v4 = v0;
  v4[1] = sub_100001AF4;
  v8 = *(v0 + 448);
  v9 = *(v0 + 376);
  v10 = *(v0 + 280);

  return MLHostExtension.loadConfig<A>(context:)(v8, v10, &type metadata for LighthouseAVExtension, v9, v5, v6, v7);
}

uint64_t sub_100001AF4()
{

  return _swift_task_switch(sub_100001BF0, 0, 0);
}

uint64_t sub_100001BF0()
{
  v91 = v0;
  v1 = v0[57];
  v2 = v0[58];
  v3 = v0[56];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_1000030A0(v3, &qword_10000C018, &qword_1000049C0);
    if (qword_10000C0A0 != -1)
    {
      swift_once();
    }

    sub_100002FA4(v0[38], qword_10000C430);
    v4 = sub_100004408();
    v5 = sub_1000044A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Unable to parse config. Exiting early.", v6, 2u);
    }

    v90[3] = &type metadata for PluginAssetError;
    v90[4] = sub_100002FDC();
    v7 = objc_allocWithZone(sub_100004398());
    v87 = sub_100004378();
  }

  else
  {
    v9 = v0[54];
    v8 = v0[55];
    v10 = v0[50];
    v11 = v0[51];
    (*(v2 + 32))(v0[59], v3, v1);
    sub_100004298();
    swift_allocObject();
    sub_100004288();
    sub_100004278();
    sub_100003030(v8, v9);
    v12 = (*(v11 + 48))(v9, 1, v10);
    v13 = v0[54];
    if (v12 == 1)
    {

      sub_1000030A0(v13, &qword_10000C010, &qword_1000049B8);
      if (qword_10000C0A0 != -1)
      {
        swift_once();
      }

      sub_100002FA4(v0[38], qword_10000C430);
      v14 = sub_100004408();
      v15 = sub_1000044C8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "No data or no job description available to run evaluation.", v16, 2u);
      }
    }

    else
    {
      v18 = v0[52];
      v17 = v0[53];
      v19 = v0[50];
      v20 = v0[51];
      v22 = v0[48];
      v21 = v0[49];
      v23 = v0[46];
      v24 = v0[45];
      v85 = v0[47];
      v88 = v0[44];
      (*(v20 + 32))(v17, v13, v19);
      (*(v20 + 16))(v18, v17, v19);
      sub_1000042C8();
      swift_allocObject();
      sub_1000042B8();
      sub_1000043D8();
      v25 = sub_1000042A8();
      (*(v22 + 8))(v21, v85);
      sub_1000042E8();
      sub_1000042D8();
      (*(v24 + 8))(v23, v88);
      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = v0[42];
        v28 = *(v27 + 16);
        v27 += 16;
        v82 = v28;
        v29 = v25 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
        v80 = (v0[39] + 8);
        v81 = *(v27 + 56);
        v79 = (v27 - 8);
        v30 = &_swiftEmptyDictionarySingleton;
        do
        {
          v86 = v26;
          v89 = v30;
          if (*(v0 + 508))
          {
            v44 = 1001;
          }

          else
          {
            v44 = 5001;
          }

          v83 = v44;
          v84 = v29;
          v82(v0[43]);
          sub_100002F18(&qword_10000C040, &qword_1000049D0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1000048C0;
          *(inited + 32) = 0x614E63697274656DLL;
          *(inited + 40) = 0xEA0000000000656DLL;
          sub_100004318();
          v46 = sub_100004458();

          *(inited + 48) = v46;
          *(inited + 56) = 0x615663697274656DLL;
          *(inited + 64) = 0xEB0000000065756CLL;
          sub_100004328();
          *(inited + 72) = sub_100004488();
          *(inited + 80) = 0xD000000000000012;
          *(inited + 88) = 0x8000000100004B90;
          sub_100004348();
          v47 = sub_100004458();

          *(inited + 96) = v47;
          *(inited + 104) = 0x5573656C706D6173;
          *(inited + 112) = 0xEB00000000646573;
          sub_100004338();
          *(inited + 120) = sub_100004498();
          *(inited + 128) = 0xD000000000000011;
          *(inited + 136) = 0x8000000100004BB0;
          *(inited + 144) = sub_100004458();
          *(inited + 152) = 0xD000000000000010;
          *(inited + 160) = 0x8000000100004BD0;
          *(inited + 168) = sub_100004458();
          *(inited + 176) = 0xD000000000000011;
          *(inited + 184) = 0x8000000100004BF0;
          *(v0 + 126) = v83;
          sub_100004538();
          v48 = sub_100004458();

          *(inited + 192) = v48;
          v49 = sub_100003D60(inited);
          swift_setDeallocating();
          sub_100002F18(&qword_10000C048, &qword_1000049D8);
          swift_arrayDestroy();
          sub_1000043F8();

          v50 = sub_100004408();
          v51 = sub_1000044A8();

          v52 = os_log_type_enabled(v50, v51);
          v53 = v0[40];
          v54 = v0[38];
          if (v52)
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v90[0] = v56;
            *v55 = 136315138;
            sub_100003F08(0, &qword_10000C058, NSObject_ptr);
            v57 = sub_100004448();
            v59 = sub_100003100(v57, v58, v90);

            *(v55 + 4) = v59;
            _os_log_impl(&_mh_execute_header, v50, v51, "Submitting %s.", v55, 0xCu);
            sub_100003EBC(v56);
          }

          (*v80)(v53, v54);
          v31 = v0[43];
          v32 = v0[41];
          v33 = sub_100004458();
          v34 = swift_allocObject();
          *(v34 + 16) = v49;
          v0[31] = sub_100003E9C;
          v0[32] = v34;
          v0[27] = _NSConcreteStackBlock;
          v0[28] = 1107296256;
          v0[29] = sub_1000027E8;
          v0[30] = &unk_100008660;
          v35 = _Block_copy(v0 + 27);

          AnalyticsSendEventLazy();
          _Block_release(v35);

          v36 = sub_100004318();
          v38 = v37;
          sub_100004328();
          isa = sub_100004488().super.super.isa;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v90[0] = v89;
          sub_100003A7C(isa, v36, v38, isUniquelyReferenced_nonNull_native);

          v41 = v90[0];
          sub_100004338();
          v42 = sub_100004498().super.super.isa;
          v43 = swift_isUniquelyReferenced_nonNull_native();
          v90[0] = v41;
          sub_100003A7C(v42, 0x5573656C706D6173, 0xEB00000000646573, v43);
          v30 = v90[0];
          (*v79)(v31, v32);
          v29 = v84 + v81;
          v26 = v86 - 1;
        }

        while (v86 != 1);
      }

      else
      {
      }

      if (qword_10000C0A0 != -1)
      {
        swift_once();
      }

      sub_100002FA4(v0[38], qword_10000C430);
      v60 = sub_100004408();
      v61 = sub_1000044B8();
      v62 = os_log_type_enabled(v60, v61);
      v63 = v0[53];
      v64 = v0[50];
      v65 = v0[51];
      if (v62)
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v90[0] = v67;
        *v66 = 136315138;
        sub_100003F08(0, &qword_10000C050, NSNumber_ptr);

        v68 = sub_100004448();
        v70 = v69;

        v71 = sub_100003100(v68, v70, v90);

        *(v66 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v60, v61, "Metrics to report: %s", v66, 0xCu);
        sub_100003EBC(v67);
      }

      (*(v65 + 8))(v63, v64);
    }

    v73 = v0[58];
    v72 = v0[59];
    v74 = v0[57];
    v75 = v0[55];
    v76 = objc_allocWithZone(sub_100004398());
    v87 = sub_100004388();

    sub_1000030A0(v75, &qword_10000C010, &qword_1000049B8);
    (*(v73 + 8))(v72, v74);
  }

  v77 = v0[1];

  return v77(v87);
}

Class sub_1000027E8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_100003F08(0, &qword_10000C058, NSObject_ptr);
    v4.super.isa = sub_100004438().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_100002884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100004264;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_100002934(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000029DC;

  return sub_1000016A0(a1, v5, v4);
}

uint64_t sub_1000029DC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100002AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100002BBC;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100002BBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002CB0(uint64_t a1)
{
  v2 = sub_100002EC4();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100002D78();
  sub_100004368();
  return 0;
}

unint64_t sub_100002D78()
{
  result = qword_10000C000;
  if (!qword_10000C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C000);
  }

  return result;
}

__n128 sub_100002DCC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002DD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100002E20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100002EC4()
{
  result = qword_10000C008;
  if (!qword_10000C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C008);
  }

  return result;
}

uint64_t sub_100002F18(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002F60(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100004308();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002FA4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100002FDC()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

uint64_t sub_100003030(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002F18(&qword_10000C010, &qword_1000049B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000030A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002F18(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100003100(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000031CC(v11, 0, 0, 1, a1, a2);
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
    sub_100003F50(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003EBC(v11);
  return v7;
}

unint64_t sub_1000031CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000032D8(a5, a6);
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
    result = sub_1000044E8();
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

char *sub_1000032D8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100003324(a1, a2);
  sub_100003454(&off_100008590);
  return v3;
}

char *sub_100003324(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100003540(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000044E8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100004478();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003540(v10, 0);
        result = sub_1000044D8();
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

uint64_t sub_100003454(uint64_t result)
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

  result = sub_1000035B4(result, v11, 1, v3);
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

void *sub_100003540(uint64_t a1, uint64_t a2)
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

  sub_100002F18(&qword_10000C060, &qword_1000049E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000035B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002F18(&qword_10000C060, &qword_1000049E0);
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

unint64_t sub_1000036A8(uint64_t a1, uint64_t a2)
{
  sub_1000045A8();
  sub_100004468();
  v4 = sub_1000045B8();

  return sub_100003720(a1, a2, v4);
}

unint64_t sub_100003720(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100004548())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1000037D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002F18(&qword_10000C070, &unk_1000049F0);
  v35 = v4;
  result = sub_100004508();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1000045A8();
      sub_100004468();
      result = sub_1000045B8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100003A7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000036A8(a2, a3);
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
      sub_1000037D8(v16, a4 & 1);
      v11 = sub_1000036A8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_100004558();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100003BF4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

id sub_100003BF4()
{
  v1 = v0;
  sub_100002F18(&qword_10000C070, &unk_1000049F0);
  v2 = *v0;
  v3 = sub_1000044F8();
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

        result = v20;
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

unint64_t sub_100003D60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002F18(&qword_10000C068, &qword_1000049E8);
    v3 = sub_100004518();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000036A8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_100003E64()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003EA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003EBC(void *a1)
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

uint64_t sub_100003F08(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100003F50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100003FB0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t getEnumTagSinglePayload for PluginAssetError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PluginAssetError(_WORD *result, int a2, int a3)
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

unint64_t sub_100004108()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100004160()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

unint64_t sub_1000041B8()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

unint64_t sub_100004210()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}