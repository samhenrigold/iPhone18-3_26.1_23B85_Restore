FedAutoEvalPlugin::TaskParametersError_optional __swiftcall TaskParametersError.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_100010990;
  v8._object = object;
  v5 = sub_10000BE60(v4, v8);

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

uint64_t sub_100001920(_BYTE *a1, _BYTE *a2)
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
    v8 = sub_10000BEB0();
  }

  return v8 & 1;
}

Swift::Int sub_1000019E0()
{
  sub_10000BF20();
  sub_10000BD80();

  return sub_10000BF40();
}

uint64_t sub_100001A7C(uint64_t a1)
{
  sub_10000BD80();
}

Swift::Int sub_100001B04(uint64_t a1)
{
  sub_10000BF20();
  sub_10000BD80();

  return sub_10000BF40();
}

uint64_t sub_100001B9C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100010990;
  v8._object = v3;
  v5 = sub_10000BE60(v4, v8);

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

void sub_100001BFC(uint64_t *a1@<X8>)
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

uint64_t sub_100001C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100003300;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_100001D14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100001DBC;

  return sub_100002520(a1);
}

uint64_t sub_100001DBC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100001EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100001F9C;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100001F9C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002090(uint64_t a1)
{
  v2 = sub_1000024CC();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000213C();
  sub_10000B920();
  return 0;
}

unint64_t sub_10000213C()
{
  result = qword_100014130;
  if (!qword_100014130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014130);
  }

  return result;
}

unint64_t sub_100002194()
{
  result = qword_100014138;
  if (!qword_100014138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014138);
  }

  return result;
}

unint64_t sub_1000021EC()
{
  result = qword_100014140;
  if (!qword_100014140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014140);
  }

  return result;
}

unint64_t sub_100002244()
{
  result = qword_100014148;
  if (!qword_100014148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014148);
  }

  return result;
}

unint64_t sub_10000229C()
{
  result = qword_100014150;
  if (!qword_100014150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014150);
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

unint64_t sub_1000024CC()
{
  result = qword_100014158;
  if (!qword_100014158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014158);
  }

  return result;
}

uint64_t sub_100002520(uint64_t a1)
{
  v1[13] = a1;
  v2 = sub_10000BCF0();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v3 = sub_10000BA40();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = sub_100002FE0(&qword_100014160, &qword_10000C540);
  v1[21] = swift_task_alloc();
  v4 = sub_10000BC80();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v5 = sub_10000BA70();
  v1[27] = v5;
  v1[28] = *(v5 - 8);
  v1[29] = swift_task_alloc();
  v6 = sub_10000BA10();
  v1[30] = v6;
  v1[31] = *(v6 - 8);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return _swift_task_switch(sub_1000027B0, 0, 0);
}

uint64_t sub_1000027B0()
{
  (*(v0[31] + 104))(v0[33], enum case for PFLTaskSource.CKProd(_:), v0[30]);
  sub_10000B980();
  sub_10000BA50();

  sub_100003028();
  sub_10000BA60();
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[33];
    v5 = v0[30];
    v6 = v0[31];
    v8 = v0[28];
    v7 = v0[29];
    v9 = v0[27];
    sub_100003124(v3);
    v10 = objc_allocWithZone(sub_10000B940());
    v11 = sub_10000B930();
    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v4, v5);

    v12 = v0[1];

    return v12(v11);
  }

  else
  {
    v30 = v0[33];
    v14 = v0[31];
    v24 = v0[30];
    v25 = v0[32];
    v26 = v0[26];
    v27 = v0[25];
    v28 = v0[24];
    v29 = v0[16];
    v31 = v0[14];
    v32 = v0[15];
    v33 = *(v2 + 32);
    v33();
    sub_100002FE0(&qword_100014178, &qword_10000C548);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10000C330;
    sub_10000BA30();
    sub_10000BA20();
    v0[12] = v15;
    sub_10000326C(&qword_100014180, &type metadata accessor for PFLPluginConsent, &protocol conformance descriptor for PFLPluginConsent);
    sub_100002FE0(&qword_100014188, &unk_10000C550);
    sub_10000318C();
    sub_10000BE00();
    (*(v14 + 16))(v25, v30, v24);
    sub_10000BAB0();
    swift_allocObject();
    v0[34] = sub_10000BAA0();
    v16 = *(v2 + 16);
    v16(v27, v26, v1);
    v16(v28, v27, v1);
    sub_10000BCE0();
    v17 = *(v2 + 8);
    v0[35] = v17;
    v0[36] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v27, v1);
    v0[5] = v31;
    v0[6] = &protocol witness table for TextDataExtractorFactory;
    v18 = sub_1000031F0(v0 + 2);
    (*(v32 + 32))(v18, v29, v31);
    v19 = type metadata accessor for FedAutoEvalPluginRunner(0);
    v20 = swift_allocObject();
    v0[37] = v20;
    v20[2] = 0xD000000000000032;
    v20[3] = 0x800000010000CAE0;
    v20[4] = 0xD000000000000011;
    v20[5] = 0x800000010000C440;
    (v33)(v20 + OBJC_IVAR____TtC17FedAutoEvalPlugin23FedAutoEvalPluginRunner_dataSourceConfig, v28, v1);
    sub_100003254(v0 + 1, v20 + OBJC_IVAR____TtC17FedAutoEvalPlugin23FedAutoEvalPluginRunner_dataExtractorFactory);
    v0[10] = v19;
    v21 = sub_10000326C(&qword_100014198, type metadata accessor for FedAutoEvalPluginRunner, &unk_10000C910);
    v0[7] = v20;
    v0[11] = v21;
    v34 = &async function pointer to dispatch thunk of PFLPlugin.run(context:runner:) + async function pointer to dispatch thunk of PFLPlugin.run(context:runner:);

    v22 = swift_task_alloc();
    v0[38] = v22;
    *v22 = v0;
    v22[1] = sub_100002D94;
    v23 = v0[13];

    return (v34)(v23, v0 + 7);
  }
}

uint64_t sub_100002D94(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 312) = a1;

  sub_1000032B4((v2 + 56));

  return _swift_task_switch(sub_100002E9C, 0, 0);
}

uint64_t sub_100002E9C()
{
  v1 = v0[35];
  v2 = v0[31];
  v11 = v0[30];
  v12 = v0[33];
  v3 = v0[28];
  v4 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[22];

  v1(v6, v7);
  (*(v3 + 8))(v4, v5);
  (*(v2 + 8))(v12, v11);
  v8 = v0[39];

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_100002FE0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003028()
{
  result = qword_100014168;
  if (!qword_100014168)
  {
    sub_1000030DC(&qword_100014160, &qword_10000C540);
    sub_10000326C(&qword_100014170, &type metadata accessor for DataSourceConfig, &protocol conformance descriptor for DataSourceConfig);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014168);
  }

  return result;
}

uint64_t sub_1000030DC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003124(uint64_t a1)
{
  v2 = sub_100002FE0(&qword_100014160, &qword_10000C540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000318C()
{
  result = qword_100014190;
  if (!qword_100014190)
  {
    sub_1000030DC(&qword_100014188, &unk_10000C550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014190);
  }

  return result;
}

uint64_t *sub_1000031F0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100003254(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000326C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000032B4(void *a1)
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

uint64_t sub_100003304(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v5 = 0x800000010000CA50;
    v6 = 0xD000000000000012;
    if (a1 == 1)
    {
      v6 = 0x754E656C706D6153;
      v5 = 0xEF73746E6576456DLL;
    }

    if (a1)
    {
      v3 = v6;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2)
    {
      v4 = v5;
    }

    else
    {
      v4 = 0x800000010000CA20;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v4 = 0x800000010000CAB0;
      v3 = 0xD000000000000017;
    }

    else
    {
      v3 = 0x6166654472657355;
      v4 = 0xEF79654B73746C75;
    }
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0xD000000000000017;
    }

    if (v2 == 3)
    {
      v4 = 0x800000010000CA70;
    }

    else
    {
      v4 = 0x800000010000CA90;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v8 = 0x754E656C706D6153;
      }

      else
      {
        v8 = 0xD000000000000012;
      }

      if (a2 == 1)
      {
        v7 = 0xEF73746E6576456DLL;
      }

      else
      {
        v7 = 0x800000010000CA50;
      }

      if (v3 != v8)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v7 = 0x800000010000CA20;
      if (v3 != 0xD000000000000010)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_42;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v7 = 0x800000010000CA70;
      if (v3 != 0xD000000000000013)
      {
        goto LABEL_44;
      }

      goto LABEL_42;
    }

    v9 = "EncodingMorpheusProgram";
LABEL_39:
    v7 = (v9 - 32) | 0x8000000000000000;
    if (v3 != 0xD000000000000017)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (a2 == 5)
  {
    v9 = "ExtractFromLastItemDate";
    goto LABEL_39;
  }

  v7 = 0xEF79654B73746C75;
  if (v3 != 0x6166654472657355)
  {
LABEL_44:
    v10 = sub_10000BEB0();
    goto LABEL_45;
  }

LABEL_42:
  if (v4 != v7)
  {
    goto LABEL_44;
  }

  v10 = 1;
LABEL_45:

  return v10 & 1;
}

Swift::Int sub_10000353C(uint64_t a1, unsigned __int8 a2)
{
  sub_10000BF20();
  sub_10000BD80();

  return sub_10000BF40();
}

uint64_t sub_1000036A0(uint64_t a1)
{
  sub_10000BD80();
}

unint64_t sub_1000037E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000058BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100003810(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xEF73746E6576456DLL;
    v9 = 0x754E656C706D6153;
    if (v2 != 1)
    {
      v9 = 0xD000000000000012;
      v8 = 0x800000010000CA50;
    }

    v10 = v2 == 0;
    if (*v1)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xD000000000000010;
    }

    if (v10)
    {
      v8 = 0x800000010000CA20;
    }

    *a1 = v11;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x800000010000CAB0;
    v4 = 0x6166654472657355;
    if (v2 == 5)
    {
      v4 = 0xD000000000000017;
    }

    else
    {
      v3 = 0xEF79654B73746C75;
    }

    v5 = 0x800000010000CA70;
    v6 = 0xD000000000000013;
    if (v2 != 3)
    {
      v6 = 0xD000000000000017;
      v5 = 0x800000010000CA90;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

unint64_t sub_10000391C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x754E656C706D6153;
    if (v1 != 1)
    {
      v5 = 0xD000000000000012;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v2 = 0x6166654472657355;
    if (v1 == 5)
    {
      v2 = 0xD000000000000017;
    }

    v3 = 0xD000000000000013;
    if (v1 != 3)
    {
      v3 = 0xD000000000000017;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_100003A20@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000058BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100003A60(uint64_t a1)
{
  v2 = sub_10000550C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100003A9C(uint64_t a1)
{
  v2 = sub_10000550C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100003AD8()
{
  v1 = type metadata accessor for FedAutoEvalPluginArgs(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __chkstk_darwin(v2);
  v7 = (&v23 - v6);
  result = __chkstk_darwin(v5);
  v10 = &v23 - v9;
  if (*v0)
  {
    if (v0[1] >= *v0)
    {
      return result;
    }

    if (qword_100014128 != -1)
    {
      swift_once();
    }

    v11 = sub_10000BAE0();
    sub_100004C54(v11, qword_100014E38);
    sub_100004FEC(v0, v10);
    sub_100004FEC(v0, v7);
    v12 = sub_10000BAC0();
    v13 = sub_10000BDE0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134218240;
      v15 = *(v10 + 1);
      sub_100005050(v10);
      *(v14 + 4) = v15;
      *(v14 + 12) = 2048;
      v16 = *v7;
      sub_100005050(v7);
      *(v14 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "sampleNumEvents %lu is more than minimumNumEvents=%lu", v14, 0x16u);
    }

    else
    {
      sub_100005050(v7);
      sub_100005050(v10);
    }

    v21 = 3;
  }

  else
  {
    if (qword_100014128 != -1)
    {
      swift_once();
    }

    v17 = sub_10000BAE0();
    sub_100004C54(v17, qword_100014E38);
    sub_100004FEC(v0, v4);
    v12 = sub_10000BAC0();
    v18 = sub_10000BDE0();
    if (os_log_type_enabled(v12, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      v20 = *v4;
      sub_100005050(v4);
      *(v19 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v12, v18, "minimumNumEvents %lu is not > 0", v19, 0xCu);
    }

    else
    {
      sub_100005050(v4);
    }

    v21 = 1;
  }

  sub_100004C8C();
  swift_allocError();
  *v22 = v21;
  return swift_willThrow();
}

uint64_t sub_100003DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v4 = sub_10000BD60();
  __chkstk_darwin(v4 - 8);
  v55 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10000B870();
  v54 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000BCB0();
  v58 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FedAutoEvalPluginArgs(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v50 - v14;
  v16 = objc_opt_self();
  v59 = a1;
  sub_10000BA90();
  isa = sub_10000BD20().super.isa;

  v60 = 0;
  v18 = [v16 dataWithJSONObject:isa options:0 error:&v60];

  v19 = v60;
  if (v18)
  {
    v20 = sub_10000B890();
    v22 = v21;

    sub_10000B820();
    swift_allocObject();
    sub_10000B810();
    sub_100005614(&qword_1000141B0, type metadata accessor for FedAutoEvalPluginArgs, &unk_10000C5A8);
    sub_10000B800();
    if (!v2)
    {
      v52 = v7;
      sub_100004F20(v20, v22);

      sub_100004F74(v13, v15);
      v32 = v10[7];
      v33 = *&v15[v32];
      v34 = v33[2];
      if (!v34)
      {
LABEL_15:
        v36 = &v15[v10[8]];
        v37 = v58;
        v38 = v52;
        (*(v58 + 16))(v9, v36, v52);
        if ((*(v37 + 88))(v9, v38) == enum case for MorpheusProgramConfig.programFilePath(_:))
        {
          v51 = v36;
          (*(v37 + 96))(v9, v38);
          sub_10000BA80();
          v40 = v39;

          if (!v40)
          {
            sub_100004C8C();
            swift_allocError();
            *v42 = 7;
            swift_willThrow();

            v43 = v10[6];
            v44 = sub_10000BC80();
            (*(*(v44 - 8) + 8))(&v15[v43], v44);

            (*(v37 + 8))(&v15[v10[8]], v52);
          }

          v41 = v56;
          sub_10000B860();

          sub_10000BD50();
          v45 = sub_10000BD40();
          v47 = v46;
          (*(v54 + 8))(v41, v57);
          v49 = v51;
          v48 = v52;
          (*(v37 + 8))(v51, v52);
          *v49 = v45;
          v49[1] = v47;
          (*(v37 + 104))(v49, enum case for MorpheusProgramConfig.program(_:), v48);
        }

        else
        {
          (*(v37 + 8))(v9, v38);
        }

        sub_100003AD8();
        sub_100004FEC(v15, v53);

        return sub_100005050(v15);
      }

      v35 = 0;
      while (1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_100004FD8(v33);
        }

        if (v35 >= v33[2])
        {
          break;
        }

        sub_10000BCD0();
        sub_10000BCC0();
        ++v35;
        *&v15[v32] = v33;
        if (v34 == v35)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

    sub_100004F20(v20, v22);
  }

  else
  {
    v23 = v19;
    sub_10000B850();

    swift_willThrow();
  }

  if (qword_100014128 != -1)
  {
LABEL_22:
    swift_once();
  }

  v24 = sub_10000BAE0();
  sub_100004C54(v24, qword_100014E38);
  swift_errorRetain();
  v25 = sub_10000BAC0();
  v26 = sub_10000BDE0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    swift_errorRetain();
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&_mh_execute_header, v25, v26, "Couldn't form FedAutoEvalPluginArgs: %@", v27, 0xCu);
    sub_100004EB8(v28);
  }

  sub_100004C8C();
  swift_allocError();
  *v30 = 0;
  swift_willThrow();
}

uint64_t type metadata accessor for FedAutoEvalPluginArgs(uint64_t a1)
{
  result = qword_100014218;
  if (!qword_100014218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000466C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_10000BCB0();
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  __chkstk_darwin(v3);
  v37 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000BC80();
  v35 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100002FE0(&qword_100014280, &qword_10000C5D0);
  v36 = *(v39 - 8);
  __chkstk_darwin(v39);
  v10 = &v30 - v9;
  v11 = type metadata accessor for FedAutoEvalPluginArgs(0);
  __chkstk_darwin(v11);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000054C8(a1, a1[3]);
  sub_10000550C();
  v38 = v10;
  v14 = v40;
  sub_10000BF50();
  if (v14)
  {
    return sub_1000032B4(a1);
  }

  v15 = v36;
  v16 = v37;
  v31 = v13;
  v17 = a1;
  v48 = 0;
  v18 = sub_10000BE90();
  v19 = v31;
  *v31 = v18;
  v47 = 1;
  v19[1] = sub_10000BE90();
  v46 = 2;
  sub_100005614(&qword_100014170, &type metadata accessor for DataSourceConfig, &protocol conformance descriptor for DataSourceConfig);
  sub_10000BEA0();
  (*(v35 + 32))(v19 + v11[6], v8, v6);
  sub_100002FE0(&qword_100014290, &qword_10000C5D8);
  v45 = 3;
  sub_100005560();
  sub_10000BEA0();
  v40 = 0;
  *(v19 + v11[7]) = v41;
  v44 = 4;
  sub_100005614(&qword_1000142A8, &type metadata accessor for MorpheusProgramConfig, &protocol conformance descriptor for MorpheusProgramConfig);
  v20 = v16;
  v21 = v33;
  sub_10000BEA0();
  (*(v34 + 32))(v31 + v11[8], v20, v21);
  v43 = 5;
  v22 = sub_10000BE80();
  v23 = v31;
  *(v31 + v11[9]) = v22;
  v42 = 6;
  v24 = sub_10000BE70();
  v37 = v25;
  v26 = v24;
  (*(v15 + 8))(v38, v39);
  v27 = (v23 + v11[10]);
  v28 = v37;
  *v27 = v26;
  v27[1] = v28;
  sub_100004FEC(v23, v32);
  sub_1000032B4(v17);
  return sub_100005050(v23);
}

uint64_t sub_100004C54(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100004C8C()
{
  result = qword_1000141A0;
  if (!qword_1000141A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141A0);
  }

  return result;
}

void *sub_100004CE0(void *result, int64_t a2, char a3, void *a4)
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

  sub_100002FE0(&qword_1000141B8, &qword_10000C588);
  v10 = *(sub_10000BCD0() - 8);
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
  v15 = *(sub_10000BCD0() - 8);
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

uint64_t sub_100004EB8(uint64_t a1)
{
  v2 = sub_100002FE0(&qword_1000141A8, &qword_10000C580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004F20(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100004F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FedAutoEvalPluginArgs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004FEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FedAutoEvalPluginArgs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005050(uint64_t a1)
{
  v2 = type metadata accessor for FedAutoEvalPluginArgs(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000050C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000BC80();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_10000BCB0();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[8];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_100005200(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10000BC80();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v13 = sub_10000BCB0();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_100005328(uint64_t a1)
{
  sub_10000BC80();
  if (v1 <= 0x3F)
  {
    sub_100005424(319);
    if (v2 <= 0x3F)
    {
      sub_10000BCB0();
      if (v3 <= 0x3F)
      {
        sub_10000547C(319, &qword_100014230, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          sub_10000547C(319, &unk_100014238, &type metadata for String);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100005424(uint64_t a1)
{
  if (!qword_100014228)
  {
    sub_10000BCD0();
    v1 = sub_10000BDB0();
    if (!v2)
    {
      atomic_store(v1, &qword_100014228);
    }
  }
}

void sub_10000547C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_10000BDF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_1000054C8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000550C()
{
  result = qword_100014288;
  if (!qword_100014288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014288);
  }

  return result;
}

unint64_t sub_100005560()
{
  result = qword_100014298;
  if (!qword_100014298)
  {
    sub_1000030DC(&qword_100014290, &qword_10000C5D8);
    sub_100005614(&qword_1000142A0, &type metadata accessor for DataProcessingStepConfig, &protocol conformance descriptor for DataProcessingStepConfig);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014298);
  }

  return result;
}

uint64_t sub_100005614(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for FedAutoEvalPluginArgs.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FedAutoEvalPluginArgs.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000057B8()
{
  result = qword_1000142B0;
  if (!qword_1000142B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142B0);
  }

  return result;
}

unint64_t sub_100005810()
{
  result = qword_1000142B8;
  if (!qword_1000142B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142B8);
  }

  return result;
}

unint64_t sub_100005868()
{
  result = qword_1000142C0;
  if (!qword_1000142C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142C0);
  }

  return result;
}

unint64_t sub_1000058BC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000109E0;
  v6._object = a2;
  v4 = sub_10000BE60(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t getEnumTagSinglePayload for FedAutoEvalPluginError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FedAutoEvalPluginError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int sub_100005A6C()
{
  v1 = *v0;
  sub_10000BF20();
  sub_10000BF30(v1 + 9701);
  return sub_10000BF40();
}

Swift::Int sub_100005AEC(uint64_t a1)
{
  v2 = *v1;
  sub_10000BF20();
  sub_10000BF30(v2 + 9701);
  return sub_10000BF40();
}

uint64_t sub_100005B34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100005CCC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100005B78()
{
  result = qword_1000142C8;
  if (!qword_1000142C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142C8);
  }

  return result;
}

uint64_t sub_100005BCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005C24();
  v5 = sub_100005C78();

  return Error<>._code.getter(a1, a2, v4, v5);
}

unint64_t sub_100005C24()
{
  result = qword_1000142D0;
  if (!qword_1000142D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142D0);
  }

  return result;
}

unint64_t sub_100005C78()
{
  result = qword_1000142D8;
  if (!qword_1000142D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142D8);
  }

  return result;
}

uint64_t sub_100005CCC(uint64_t a1)
{
  if ((a1 - 9701) >= 0xF)
  {
    return 15;
  }

  else
  {
    return a1 - 9701;
  }
}

uint64_t sub_100005CE4()
{
  v1[2] = v0;
  sub_100002FE0(&qword_100014428, &qword_10000C990);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v2 = sub_10000BD00();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_10000BC80();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_100005E68, 0, 0);
}

uint64_t sub_100005E68()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[8];
  v4 = v0[9];
  v16 = v0[7];
  v17 = v0[6];
  v18 = v0[5];
  v5 = v0[2];
  v6 = OBJC_IVAR____TtC17FedAutoEvalPlugin23FedAutoEvalPluginRunner_dataSourceConfig;
  v0[14] = OBJC_IVAR____TtC17FedAutoEvalPlugin23FedAutoEvalPluginRunner_dataSourceConfig;
  v7 = *(v4 + 16);
  v0[15] = v7;
  v0[16] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v5 + v6, v3);
  sub_10000BC50();
  v8 = *(v4 + 8);
  v0[17] = v8;
  v0[18] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v7(v2, v5 + v6, v3);
  sub_10000BC60();
  v8(v2, v3);
  sub_10000BB40();
  (*(v17 + 8))(v16, v18);

  v9 = v0[3];
  v7(v0[11], v5 + v6, v0[8]);
  v10 = sub_10000B8C0();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_100006110;
  v12 = v0[11];
  v14 = v0[3];
  v13 = v0[4];

  return sub_100006844(v13, v12, v14);
}

uint64_t sub_100006110(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[17];
  v5 = (*v2)[11];
  v6 = (*v2)[8];
  v7 = (*v2)[3];
  v3[20] = a1;
  v3[21] = v1;

  sub_10000B650(v7, &qword_100014428, &qword_10000C990);
  v4(v5, v6);
  if (v1)
  {
    v8 = sub_100006560;
  }

  else
  {
    sub_10000B650(v3[4], &qword_100014428, &qword_10000C990);
    v8 = sub_1000062E4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000062E4()
{
  if (qword_100014128 != -1)
  {
    swift_once();
  }

  v1 = sub_10000BAE0();
  sub_100004C54(v1, qword_100014E38);

  v2 = sub_10000BAC0();
  v3 = sub_10000BDD0();
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
  v14 = sub_10000BC40();
  v7(v10, v11);
  if (v13 < v14)
  {
    sub_100004C8C();
    swift_allocError();
    *v15 = 9;
    swift_willThrow();
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100006560()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100006618()
{
  v17 = sub_10000BD00();
  v16 = *(v17 - 8);
  __chkstk_darwin(v17);
  v15 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000BC80();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC17FedAutoEvalPlugin23FedAutoEvalPluginRunner_dataSourceConfig;
  v10 = *(v3 + 16);
  v10(&v14 - v7, v0 + OBJC_IVAR____TtC17FedAutoEvalPlugin23FedAutoEvalPluginRunner_dataSourceConfig, v2);
  sub_10000BC50();
  v11 = *(v3 + 8);
  v11(v8, v2);
  v10(v6, v14 + v9, v2);
  sub_10000BC60();
  v11(v6, v2);
  v12 = v15;
  sub_10000BB40();
  (*(v16 + 8))(v12, v17);
}

uint64_t sub_100006844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  sub_100002FE0(&qword_100014428, &qword_10000C990);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v5 = sub_10000BC80();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_100006970, 0, 0);
}

uint64_t sub_100006970()
{
  v56 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[10];
  v5 = OBJC_IVAR____TtC17FedAutoEvalPlugin23FedAutoEvalPluginRunner_dataSourceConfig;
  v6 = *(v3 + 16);
  v6(v1, v4 + OBJC_IVAR____TtC17FedAutoEvalPlugin23FedAutoEvalPluginRunner_dataSourceConfig, v2);
  v7 = sub_10000BC30();
  v8 = *(v3 + 8);
  v8(v1, v2);
  if (v7)
  {
    if (qword_100014128 != -1)
    {
      swift_once();
    }

    v9 = v0[14];
    v10 = v0[9];
    v11 = sub_10000BAE0();
    v0[19] = sub_100004C54(v11, qword_100014E38);
    sub_10000B5E8(v10, v9, &qword_100014428, &qword_10000C990);
    v12 = sub_10000BAC0();
    v13 = sub_10000BDC0();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[14];
    if (v14)
    {
      v16 = v0[13];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v55[0] = v18;
      *v17 = 136315138;
      sub_10000B5E8(v15, v16, &qword_100014428, &qword_10000C990);
      v19 = sub_10000B8C0();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v16, 1, v19) == 1)
      {
        sub_10000B650(v0[13], &qword_100014428, &qword_10000C990);
        v21 = 0x800000010000CBF0;
        v22 = 0xD00000000000001CLL;
      }

      else
      {
        v45 = v0[13];
        v22 = sub_10000B8A0();
        v21 = v46;
        (*(v20 + 8))(v45, v19);
      }

      sub_10000B650(v0[14], &qword_100014428, &qword_10000C990);
      v47 = sub_100008234(v22, v21, v55);

      *(v17 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v12, v13, "Extracting text data from date: %s.", v17, 0xCu);
      sub_1000032B4(v18);
    }

    else
    {

      sub_10000B650(v15, &qword_100014428, &qword_10000C990);
    }

    sub_1000054C8((v0[10] + OBJC_IVAR____TtC17FedAutoEvalPlugin23FedAutoEvalPluginRunner_dataExtractorFactory), *(v0[10] + OBJC_IVAR____TtC17FedAutoEvalPlugin23FedAutoEvalPluginRunner_dataExtractorFactory + 24));
    sub_10000BCA0();
    v48 = v0[5];
    v49 = v0[6];
    sub_1000054C8(v0 + 2, v48);
    v50 = swift_task_alloc();
    v0[20] = v50;
    *v50 = v0;
    v50[1] = sub_100007010;
    v51 = v0[11];

    return dispatch thunk of Extractor.extract()(v51, v48, v49);
  }

  else
  {
    v53 = v4;
    v54 = v8;
    if (qword_100014128 != -1)
    {
      swift_once();
    }

    v23 = v0[17];
    v24 = v0[15];
    v25 = v0[8];
    v26 = sub_10000BAE0();
    sub_100004C54(v26, qword_100014E38);
    v6(v23, v25, v24);

    v27 = sub_10000BAC0();
    v28 = sub_10000BDE0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v0[18];
      v52 = v0[17];
      v30 = v0[15];
      v31 = swift_slowAlloc();
      v55[0] = swift_slowAlloc();
      *v31 = 136315394;
      v6(v29, v53 + v5, v30);
      v32 = sub_10000BC20();
      v34 = v33;
      v54(v29, v30);
      v35 = sub_100008234(v32, v34, v55);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v36 = sub_10000BC20();
      v38 = v37;
      v54(v52, v30);
      v39 = sub_100008234(v36, v38, v55);

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

    sub_100004C8C();
    swift_allocError();
    *v42 = 11;
    swift_willThrow();

    v43 = v0[1];

    return v43();
  }
}

uint64_t sub_100007010(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_100007404;
  }

  else
  {
    v4 = sub_100007124;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100007124()
{
  v1 = v0[21];
  sub_10000B6B0(v0[11], v0[12], &qword_100014428, &qword_10000C990);
  if (v1)
  {
    v2 = v0[21];
    if (*(v2 + 16))
    {

      v3 = sub_10000BAC0();
      v4 = sub_10000BDC0();
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

      sub_10000B6B0(v0[12], v0[7], &qword_100014428, &qword_10000C990);
      sub_1000032B4(v0 + 2);

      v13 = v0[1];

      return v13(v2);
    }
  }

  v6 = sub_10000BAC0();
  v7 = sub_10000BDE0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "No data extracted.", v8, 2u);
  }

  v9 = v0[12];

  sub_100004C8C();
  swift_allocError();
  *v10 = 9;
  swift_willThrow();
  sub_10000B650(v9, &qword_100014428, &qword_10000C990);
  sub_1000032B4(v0 + 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100007404()
{
  sub_1000032B4((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000074B0@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v1 = sub_100002FE0(&qword_100014428, &qword_10000C990);
  __chkstk_darwin(v1 - 8);
  v34 = &v32 - v2;
  v36 = sub_10000B8C0();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002FE0(&qword_100014498, &qword_10000CA00);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_10000B8D0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002FE0(&qword_1000144A0, &qword_10000CA08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000C840;
  *(inited + 32) = 1954047348;
  *(inited + 40) = 0xE400000000000000;
  v12 = sub_10000BBA0();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  v14 = sub_100009078(inited);
  swift_setDeallocating();
  sub_10000B650(inited + 32, &qword_100014488, &qword_10000C9F0);
  sub_10000BBB0();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000B650(v6, &qword_100014498, &qword_10000CA00);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v40 = v7;
    v15 = sub_1000031F0(&v39);
    (*(v8 + 16))(v15, v10, v7);
    sub_10000B57C(&v39, v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v14;
    sub_100008BC4(v38, 0x64496D657469, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    (*(v8 + 8))(v10, v7);
    v14 = v41;
  }

  v17 = sub_10000BB70();
  v19 = v35;
  v20 = v34;
  if (v18)
  {
    v40 = &type metadata for String;
    *&v39 = v17;
    *(&v39 + 1) = v18;
    sub_10000B57C(&v39, v38);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v41 = v14;
    sub_100008BC4(v38, 0xD000000000000015, 0x800000010000CBD0, v21);
    v14 = v41;
  }

  v22 = sub_10000BB60();
  if (v23)
  {
    v40 = &type metadata for String;
    *&v39 = v22;
    *(&v39 + 1) = v23;
    sub_10000B57C(&v39, v38);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v41 = v14;
    sub_100008BC4(v38, 0xD000000000000013, 0x800000010000CBB0, v24);
    v14 = v41;
  }

  sub_10000BB80();
  v25 = v36;
  if ((*(v19 + 48))(v20, 1, v36) == 1)
  {
    sub_10000B650(v20, &qword_100014428, &qword_10000C990);
  }

  else
  {
    v26 = v33;
    (*(v19 + 32))(v33, v20, v25);
    v40 = v25;
    v27 = sub_1000031F0(&v39);
    (*(v19 + 16))(v27, v26, v25);
    sub_10000B57C(&v39, v38);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v41 = v14;
    sub_100008BC4(v38, 1702125924, 0xE400000000000000, v28);
    (*(v19 + 8))(v26, v25);
    v14 = v41;
  }

  result = sub_10000BB90();
  if (result)
  {
    if (*(result + 16))
    {
      v30 = result;
      v40 = sub_100002FE0(&qword_1000144A8, &unk_10000CA10);
      *&v39 = v30;
      sub_10000B57C(&v39, v38);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v14;
      result = sub_100008BC4(v38, 1936154996, 0xE400000000000000, v31);
      v14 = v41;
    }

    else
    {
    }
  }

  *v37 = v14;
  return result;
}

void *sub_100007A48(void *result)
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
        return sub_1000091A8(result + 32, result + v2 + 32);
      }

      else
      {
        sub_10000B840();
        swift_allocObject();
        sub_10000B830();
        if (v2 >= 0x7FFFFFFF)
        {
          sub_10000B880();
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

uint64_t sub_100007B10()
{

  v1 = OBJC_IVAR____TtC17FedAutoEvalPlugin23FedAutoEvalPluginRunner_dataSourceConfig;
  v2 = sub_10000BC80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000032B4((v0 + OBJC_IVAR____TtC17FedAutoEvalPlugin23FedAutoEvalPluginRunner_dataExtractorFactory));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for FedAutoEvalPluginRunner(uint64_t a1)
{
  result = qword_100014310;
  if (!qword_100014310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100007C20(uint64_t a1)
{
  result = sub_10000BC80();
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

uint64_t sub_100007D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100001F9C;

  return PFLTaskRunner.resolveTask(for:taskPreferences:)(a1, a2, a3, a4, a5);
}

uint64_t sub_100007DCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001F9C;

  return sub_100005CE4();
}

uint64_t sub_100007E5C()
{
  v1 = sub_10000B9C0();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_100007EBC()
{
  v1 = sub_10000B9D0();
  v2 = *(v0 + 8);
  v3 = v1;

  return v2(v3);
}

uint64_t sub_100007F1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007FCC;

  return sub_100009260(a1);
}

uint64_t sub_100007FCC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1000080D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000B718;

  return PFLTaskRunner.handleNoTasksAvailable(taskPreferences:)(a1, a2, a3);
}

uint64_t sub_100008184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000B718;

  return PFLTaskRunner.handleNoAvailableTasks(taskPreferences:)(a1, a2, a3);
}

unint64_t sub_100008234(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100008300(v11, 0, 0, 1, a1, a2);
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
    sub_10000B58C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000032B4(v11);
  return v7;
}

unint64_t sub_100008300(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000840C(a5, a6);
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
    result = sub_10000BE20();
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

void *sub_10000840C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100008458(a1, a2);
  sub_100008588(&off_100010AA8);
  return v3;
}

void *sub_100008458(uint64_t a1, unint64_t a2)
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

  v6 = sub_100008674(v5, 0);
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

  result = sub_10000BE20();
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
        v10 = sub_10000BD90();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100008674(v10, 0);
        result = sub_10000BE10();
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

uint64_t sub_100008588(uint64_t result)
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

  result = sub_1000086E8(result, v11, 1, v3);
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

void *sub_100008674(uint64_t a1, uint64_t a2)
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

  sub_100002FE0(&qword_100014478, &qword_10000C9E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000086E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002FE0(&qword_100014478, &qword_10000C9E0);
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

unint64_t sub_1000087DC(uint64_t a1, uint64_t a2)
{
  sub_10000BF20();
  sub_10000BD80();
  v4 = sub_10000BF40();

  return sub_100008854(a1, a2, v4);
}

unint64_t sub_100008854(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000BEB0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10000890C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002FE0(&qword_100014480, &qword_10000C9E8);
  v33 = v4;
  result = sub_10000BE40();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10000B57C(v24, v34);
      }

      else
      {
        sub_10000B58C(v24, v34);
      }

      sub_10000BF20();
      sub_10000BD80();
      result = sub_10000BF40();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10000B57C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_100008BC4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000087DC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100008D80();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10000890C(v16, a4 & 1);
    v11 = sub_1000087DC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_10000BEC0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_1000032B4(v22);

    return sub_10000B57C(a1, v22);
  }

  else
  {
    sub_100008D14(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_100008D14(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000B57C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_100008D80()
{
  v1 = v0;
  sub_100002FE0(&qword_100014480, &qword_10000C9E8);
  v2 = *v0;
  v3 = sub_10000BE30();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000B58C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000B57C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_100008F24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100008F44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100008F44(void *result, int64_t a2, char a3, void *a4)
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
    sub_100002FE0(&qword_100014490, &qword_10000C9F8);
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
    sub_100002FE0(&qword_100014468, &qword_10000C9D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100009078(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002FE0(&qword_100014480, &qword_10000C9E8);
    v3 = sub_10000BE50();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000B5E8(v4, &v13, &qword_100014488, &qword_10000C9F0);
      v5 = v13;
      v6 = v14;
      result = sub_1000087DC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000B57C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_1000091A8(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_100009260(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = sub_10000B8C0();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  v4 = sub_10000BC10();
  v2[34] = v4;
  v2[35] = *(v4 - 8);
  v2[36] = swift_task_alloc();
  v5 = sub_10000BCB0();
  v2[37] = v5;
  v2[38] = *(v5 - 8);
  v2[39] = swift_task_alloc();
  v6 = sub_10000BBC0();
  v2[40] = v6;
  v2[41] = *(v6 - 8);
  v2[42] = swift_task_alloc();
  v7 = sub_10000BC80();
  v2[43] = v7;
  v2[44] = *(v7 - 8);
  v2[45] = swift_task_alloc();
  sub_100002FE0(&qword_100014428, &qword_10000C990);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  sub_100002FE0(&qword_100014430, &qword_10000C998);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v8 = sub_10000BCD0();
  v2[51] = v8;
  v2[52] = *(v8 - 8);
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v9 = sub_100002FE0(&qword_100014438, &qword_10000C9A0);
  v2[56] = v9;
  v2[57] = *(v9 - 8);
  v2[58] = swift_task_alloc();
  sub_100002FE0(&qword_100014440, &qword_10000C9A8);
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = type metadata accessor for FedAutoEvalPluginArgs(0);
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();

  return _swift_task_switch(sub_10000968C, 0, 0);
}

void sub_10000968C()
{
  v94 = v0;
  if (qword_100014128 != -1)
  {
    swift_once();
  }

  v1 = sub_10000BAE0();
  *(v0 + 520) = sub_100004C54(v1, qword_100014E38);
  v2 = sub_10000BAC0();
  v3 = sub_10000BDC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running plugin", v4, 2u);
  }

  v5 = *(v0 + 512);

  sub_100003DD8(v6, v5);
  sub_10000B900();
  sub_10000B910();
  sub_10000B8F0();
  sub_10000B8E0();
  sub_10000BC90();
  sub_100004FEC(*(v0 + 512), *(v0 + 504));
  v7 = sub_10000BAC0();
  v8 = sub_10000BDC0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 504);
  if (v9)
  {
    v11 = *(v0 + 496);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v93[0] = v13;
    *v12 = 136315138;
    sub_100004FEC(v10, v11);
    v14 = sub_10000BD70();
    v16 = v15;
    sub_100005050(v10);
    v17 = sub_100008234(v14, v16, v93);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Args: %s", v12, 0xCu);
    sub_1000032B4(v13);
  }

  else
  {

    sub_100005050(v10);
  }

  v18 = 0;
  v20 = *(v0 + 448);
  v19 = *(v0 + 456);
  v21 = *(v0 + 416);
  v22 = *(*(v0 + 512) + *(*(v0 + 488) + 28));
  *(v0 + 528) = v22;
  v23 = *(v22 + 16);
  v88 = (v19 + 56);
  v89 = (v21 + 16);
  v87 = (v19 + 48);
  v82 = v21;
  v84 = (v21 + 8);
  v85 = (v21 + 32);
  v80 = v22;
  v81 = v20;
  v86 = v23;
  while (1)
  {
    if (v18 == v23)
    {
      v26 = 1;
      v92 = v23;
      v27 = v89;
    }

    else
    {
      v27 = v89;
      if (v18 >= *(v22 + 16))
      {
        __break(1u);
        return;
      }

      v29 = *(v0 + 464);
      v28 = *(v0 + 472);
      v30 = *(v0 + 408);
      v31 = v18 + 1;
      v32 = v22 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v18;
      v33 = *(v20 + 48);
      *v29 = v18;
      (*(v82 + 16))(&v29[v33], v32, v30);
      sub_10000B6B0(v29, v28, &qword_100014438, &qword_10000C9A0);
      v26 = 0;
      v92 = v31;
    }

    v35 = *(v0 + 472);
    v34 = *(v0 + 480);
    v36 = *(v0 + 448);
    (*v88)(v35, v26, 1, v36);
    sub_10000B6B0(v35, v34, &qword_100014440, &qword_10000C9A8);
    if ((*v87)(v34, 1, v36) == 1)
    {
      break;
    }

    v37 = *(v0 + 480);
    v39 = *(v0 + 432);
    v38 = *(v0 + 440);
    v40 = *(v0 + 408);
    v90 = *v37;
    (*v85)(v38, &v37[*(v20 + 48)], v40);
    v41 = *v27;
    (*v27)(v39, v38, v40);
    v42 = sub_10000BAC0();
    v43 = sub_10000BDC0();
    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 432);
    v91 = *(v0 + 440);
    if (v44)
    {
      v46 = *(v0 + 424);
      v47 = *(v0 + 408);
      v48 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v93[0] = v83;
      *v48 = 134218242;
      *(v48 + 4) = v90;
      *(v48 + 12) = 2080;
      v41(v46, v45, v47);
      v49 = v47;
      v50 = sub_10000BD70();
      v52 = v51;
      v53 = *v84;
      v54 = v45;
      v55 = v49;
      (*v84)(v54, v49);
      v56 = sub_100008234(v50, v52, v93);

      *(v48 + 14) = v56;
      v20 = v81;
      _os_log_impl(&_mh_execute_header, v42, v43, "Step %ld: %s", v48, 0x16u);
      sub_1000032B4(v83);
      v22 = v80;

      v53(v91, v55);
    }

    else
    {
      v24 = *(v0 + 408);

      v25 = *v84;
      (*v84)(v45, v24);
      v25(v91, v24);
    }

    v23 = v86;
    v18 = v92;
  }

  v57 = *(v0 + 512);
  v58 = *(v0 + 488);
  v59 = (v57 + v58[10]);
  *(v0 + 536) = *v59;
  v60 = v59[1];
  *(v0 + 544) = v60;
  if (!v60)
  {
    sub_10000BC70();
    v60 = 0;
    v57 = *(v0 + 512);
    v58 = *(v0 + 488);
  }

  *(v0 + 552) = v60;
  v62 = *(v0 + 352);
  v61 = *(v0 + 360);
  v63 = *(v0 + 344);

  sub_10000BBF0();

  v64 = v58[6];
  *(v0 + 616) = v64;
  (*(v62 + 16))(v61, v57 + v64, v63);
  v65 = *(v57 + v58[9]);
  if (v65 == 2 || (v65 & 1) == 0)
  {
    (*(*(v0 + 256) + 56))(*(v0 + 376), 1, 1, *(v0 + 248));
  }

  else
  {
    v66 = *(v0 + 392);
    v67 = *(v0 + 272);
    v68 = *(v0 + 280);
    sub_10000B5E8(*(v0 + 400), v66, &qword_100014430, &qword_10000C998);
    v69 = (*(v68 + 48))(v66, 1, v67);
    v70 = *(v0 + 392);
    v71 = *(v0 + 376);
    if (v69 == 1)
    {
      v72 = *(v0 + 248);
      v73 = *(v0 + 256);
      sub_10000B650(*(v0 + 392), &qword_100014430, &qword_10000C998);
      (*(v73 + 56))(v71, 1, 1, v72);
    }

    else
    {
      v78 = *(v0 + 272);
      v79 = *(v0 + 280);
      sub_10000BBD0();
      (*(v79 + 8))(v70, v78);
    }
  }

  v74 = swift_task_alloc();
  *(v0 + 560) = v74;
  *v74 = v0;
  v74[1] = sub_100009F60;
  v76 = *(v0 + 376);
  v75 = *(v0 + 384);
  v77 = *(v0 + 360);

  sub_100006844(v75, v77, v76);
}

uint64_t sub_100009F60(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[71] = a1;
  v4[72] = v1;

  v5 = v3[45];
  v6 = v3[44];
  v7 = v3[43];
  sub_10000B650(v3[47], &qword_100014428, &qword_10000C990);
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_10000B24C;
  }

  else
  {
    v8 = sub_10000A10C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10000A10C()
{
  v30 = v1;
  v3 = v1[71];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v1[41];
    v28 = _swiftEmptyArrayStorage;
    sub_100008F24(0, v4, 0);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_22;
    }

    v7 = _swiftEmptyArrayStorage;
    v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v9 = v1[72];
    v12 = *(v5 + 16);
    v10 = v5 + 16;
    v11 = v12;
    v27 = *(v10 + 56);
    v12(v1[42], v3 + v8, v1[40]);
    sub_1000074B0(v29);
    v13 = *(v10 - 8);
    if (v9)
    {
      v13(v1[42], v1[40]);
    }

    v23 = v8;
    v25 = v11;
    v26 = v4;
    v13(v1[42], v1[40]);
    v2 = v29[0];
    v4 = _swiftEmptyArrayStorage[2];
    v6 = _swiftEmptyArrayStorage[3];
    v0 = v4 + 1;
    v24 = v13;
    if (v4 >= v6 >> 1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v7[2] = v0;
      v7[v4 + 4] = v2;
      if (v26 == 1)
      {
        break;
      }

      v20 = v3 + v27 + v23;
      v21 = 1;
      while (1)
      {
        v6 = *(v3 + 16);
        if (v21 >= v6)
        {
          break;
        }

        v25(v1[42], v20, v1[40]);
        sub_1000074B0(v29);
        v24(v1[42], v1[40]);
        v2 = v29[0];
        v28 = v7;
        v4 = v7[2];
        v22 = v7[3];
        v0 = v4 + 1;
        if (v4 >= v22 >> 1)
        {
          sub_100008F24((v22 > 1), v4 + 1, 1);
        }

        ++v21;
        v7[2] = v0;
        v7[v4 + 4] = v2;
        v20 += v27;
        if (v26 == v21)
        {
          goto LABEL_10;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      sub_100008F24((v6 > 1), v0, 1);
      v7 = v28;
    }

LABEL_10:
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
  }

  v1[73] = v7;
  v15 = sub_10000BAC0();
  v16 = sub_10000BDD0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Calling data process pipeline", v17, 2u);
  }

  v18 = swift_task_alloc();
  v1[74] = v18;
  *v18 = v1;
  v18[1] = sub_10000A484;
  v19 = v1[66];

  return runPipeline(stepsConfigs:initial:)(v19, v7);
}

uint64_t sub_10000A484(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 600) = a1;
  *(v3 + 608) = v1;

  if (v1)
  {
    v4 = sub_10000B3D0;
  }

  else
  {
    v4 = sub_10000A5C4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000A5C4()
{
  v61 = v0;

  v1 = sub_10000BAC0();
  v2 = sub_10000BDD0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v60[0] = v4;
    *v3 = 136315138;

    sub_100002FE0(&qword_100014468, &qword_10000C9D0);
    v5 = sub_10000BDA0();
    v7 = v6;

    v8 = sub_100008234(v5, v7, v60);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Completed data processing pipeline with data %s", v3, 0xCu);
    sub_1000032B4(v4);
  }

  v10 = *(v0 + 304);
  v9 = *(v0 + 312);
  v11 = *(v0 + 296);
  (*(v10 + 16))(v9, *(v0 + 512) + *(*(v0 + 488) + 32), v11);
  if ((*(v10 + 88))(v9, v11) != enum case for MorpheusProgramConfig.program(_:))
  {
    v14 = *(v0 + 512);
    v18 = *(v0 + 400);
    v19 = *(v0 + 384);
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
    sub_100004C8C();
    swift_allocError();
    *v20 = 14;
    swift_willThrow();
    sub_10000B650(v19, &qword_100014428, &qword_10000C990);
    v17 = v18;
    goto LABEL_7;
  }

  v12 = *(v0 + 608);
  (*(*(v0 + 304) + 96))(*(v0 + 312), *(v0 + 296));
  sub_10000BB30();
  sub_10000BB20();
  v13 = *(v0 + 600);
  if (v12)
  {
    v14 = *(v0 + 512);
    v15 = *(v0 + 400);
    v16 = *(v0 + 384);

    sub_10000B650(v16, &qword_100014428, &qword_10000C990);
    v17 = v15;
LABEL_7:
    sub_10000B650(v17, &qword_100014430, &qword_10000C998);
    v21 = v14;
LABEL_8:
    sub_100005050(v21);

    v22 = *(v0 + 8);

    return v22();
  }

  sub_100002FE0(&qword_100014448, &qword_10000C9B0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10000C840;
  *(v24 + 56) = sub_100002FE0(&qword_100014450, &qword_10000C9B8);
  *(v24 + 32) = v13;

  sub_100009078(_swiftEmptyArrayStorage);
  sub_10000BB10();

  if (!*(v0 + 72))
  {
    sub_10000B650(v0 + 48, &qword_100014458, &qword_10000C9C0);
    v26 = sub_10000BAC0();
    v27 = sub_10000BDD0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No results returned, skip donating", v28, 2u);
    }

    v29 = *(v0 + 512);
    v30 = *(v0 + 400);
    v31 = *(v0 + 384);

    sub_100009078(_swiftEmptyArrayStorage);
    sub_10000B9A0();
    swift_allocObject();
    v59 = sub_10000B990();

    goto LABEL_22;
  }

  v25 = *(v0 + 544);
  sub_10000B57C((v0 + 48), (v0 + 16));
  if (!v25)
  {
    sub_10000BC70();
  }

  v32 = *(v0 + 384);
  v33 = *(v0 + 368);
  v35 = *(v0 + 280);
  v34 = *(v0 + 288);
  v36 = *(v0 + 272);

  sub_10000B8B0();
  sub_10000B5E8(v32, v33, &qword_100014428, &qword_10000C990);
  sub_10000BBE0();
  sub_10000BC00();

  (*(v35 + 8))(v34, v36);
  sub_10000BAF0();
  if ((sub_10000BB00() & 1) == 0)
  {
    sub_10000B58C(v0 + 80, v0 + 112);
    sub_100002FE0(&qword_100014460, &qword_10000C9C8);
    result = swift_dynamicCast();
    if (!result)
    {
LABEL_34:
      v42 = *(v0 + 512);
      v43 = *(v0 + 400);
      v44 = *(v0 + 384);
      sub_100004C8C();
      swift_allocError();
      *v45 = 13;
      swift_willThrow();

      sub_1000032B4((v0 + 80));
      sub_1000032B4((v0 + 16));
      sub_10000B650(v44, &qword_100014428, &qword_10000C990);
      sub_10000B650(v43, &qword_100014430, &qword_10000C998);
      v21 = v42;
      goto LABEL_8;
    }

    v41 = *(v0 + 208);
    if (*(v41 + 16))
    {
      sub_10000B58C(v41 + 32, v0 + 144);
      sub_100002FE0(&qword_100014468, &qword_10000C9D0);
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
LABEL_33:

        goto LABEL_34;
      }

      if (*(v41 + 16) >= 2uLL)
      {
        sub_10000B58C(v41 + 64, v0 + 176);

        sub_100002FE0(&qword_100014470, &qword_10000C9D8);
        if (swift_dynamicCast())
        {
          if (*(*(v0 + 224) + 16))
          {
            sub_100007A48(*(v0 + 224));
          }

          v46 = sub_10000BAC0();
          v47 = sub_10000BDC0();

          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v60[0] = swift_slowAlloc();
            *v48 = 136315394;
            v49 = sub_10000BD30();
            v51 = sub_100008234(v49, v50, v60);

            *(v48 + 4) = v51;
            *(v48 + 12) = 2080;
            v52 = sub_10000BDA0();
            v54 = v53;

            v55 = sub_100008234(v52, v54, v60);

            *(v48 + 14) = v55;
            _os_log_impl(&_mh_execute_header, v46, v47, "Returning from plugin metadata=%s, vector=%s", v48, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v56 = *(v0 + 512);
          v57 = *(v0 + 400);
          v58 = *(v0 + 384);
          sub_10000B9A0();
          swift_allocObject();
          v59 = sub_10000B990();

          sub_1000032B4((v0 + 80));
          sub_1000032B4((v0 + 16));
          sub_10000B650(v58, &qword_100014428, &qword_10000C990);
          sub_10000B650(v57, &qword_100014430, &qword_10000C998);
          sub_100005050(v56);
          goto LABEL_23;
        }

        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v37 = sub_10000BAC0();
  v38 = sub_10000BDD0();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "result is None, skip donating", v39, 2u);
  }

  v29 = *(v0 + 512);
  v30 = *(v0 + 400);
  v31 = *(v0 + 384);

  sub_100009078(_swiftEmptyArrayStorage);
  sub_10000B9A0();
  swift_allocObject();
  v59 = sub_10000B990();

  sub_1000032B4((v0 + 80));
  sub_1000032B4((v0 + 16));
LABEL_22:
  sub_10000B650(v31, &qword_100014428, &qword_10000C990);
  sub_10000B650(v30, &qword_100014430, &qword_10000C998);
  sub_100005050(v29);
LABEL_23:

  v40 = *(v0 + 8);

  return v40(v59);
}

uint64_t sub_10000B24C()
{
  v1 = v0[64];
  sub_10000B650(v0[50], &qword_100014430, &qword_10000C998);
  sub_100005050(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10000B3D0()
{
  v1 = v0[64];
  v2 = v0[50];
  sub_10000B650(v0[48], &qword_100014428, &qword_10000C990);
  sub_10000B650(v2, &qword_100014430, &qword_10000C998);
  sub_100005050(v1);

  v3 = v0[1];

  return v3();
}

_OWORD *sub_10000B57C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000B58C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000B5E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002FE0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000B650(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002FE0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000B6B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002FE0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000B71C()
{
  v0 = sub_10000BAE0();
  sub_10000B79C(v0, qword_100014E38);
  sub_100004C54(v0, qword_100014E38);
  return sub_10000BAD0();
}

uint64_t *sub_10000B79C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}