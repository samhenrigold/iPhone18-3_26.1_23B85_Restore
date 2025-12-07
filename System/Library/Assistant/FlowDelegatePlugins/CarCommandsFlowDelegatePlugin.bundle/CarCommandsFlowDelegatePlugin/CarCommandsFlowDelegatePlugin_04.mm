uint64_t sub_7CBFC()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 208) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v3 + 216) = v9;
    *v9 = v5;
    v9[1] = sub_7CD94;
    v10 = *(v3 + 192);
    v11 = *(v3 + 249);
    v12 = *(v3 + 112);
    v13 = *(v3 + 120);
    v14 = *(v3 + 104);

    return sub_7D36C(v10, v14, v12, v13, v11);
  }
}

uint64_t sub_7CD94()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 224) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_7CE90()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v6[3];
  v16 = v6[4];
  sub_D084(v6, v7);
  v0[5] = v4;
  v0[6] = sub_52248(&qword_1E7118, &type metadata accessor for CarCommandsSnippetsPluginModel, &protocol conformance descriptor for CarCommandsSnippetsPluginModel);
  v8 = sub_10888(v0 + 2);
  (*(v2 + 16))(v8, v3, v4);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v9 = swift_allocObject();
  v0[29] = v9;
  *(v9 + 16) = xmmword_16D440;
  *(v9 + 32) = v1;
  v10 = sub_168E14();
  sub_5370(v5, 1, 1, v10);
  v11 = v1;
  sub_67D38(0xD00000000000002ELL, 0x8000000000185DF0, v5);
  sub_D188(v5, &qword_1E5F78, &unk_16D400);
  v12 = swift_task_alloc();
  v0[30] = v12;
  *v12 = v0;
  v12[1] = sub_50DB8;
  v13 = v0[21];
  v14 = v0[12];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v14, v0 + 2, v9, v13, v7, v16);
}

uint64_t sub_7D078(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 169) = a5;
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 64) = a2;
  *(v5 + 168) = a1;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();
  sub_16A164();
  *(v5 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_7D164);
}

uint64_t sub_7D164()
{
  v1 = *(v0 + 80);
  if (*(v0 + 168) == 2)
  {
    type metadata accessor for CarCommandsGetLockStatusCATsSimple(0);
    sub_16A154();
    *(v0 + 120) = sub_52464();
    if (v1)
    {
      sub_99C94();
    }

    v2 = *(v0 + 96);
    v3 = sub_16A0C4();
    v4 = sub_5243C();
    sub_5370(v4, v5, v6, v3);
    sub_16A6E4();
    sub_5370(v2, 0, 1, v3);
    v7 = swift_task_alloc();
    *(v0 + 128) = v7;
    *v7 = v0;
    v7[1] = sub_51338;
    v8 = sub_5242C(*(v0 + 104));

    return sub_4E288(v8, v9, v10);
  }

  else
  {
    type metadata accessor for CarCommandsSetLockStatusCATsSimple(0);
    sub_16A154();
    *(v0 + 144) = sub_52464();
    if (v1)
    {
      sub_99C94();
    }

    sub_16A0C4();
    v12 = sub_5243C();
    sub_5370(v12, v13, v14, v15);
    v16 = swift_task_alloc();
    *(v0 + 152) = v16;
    *v16 = v0;
    v16[1] = sub_51528;
    v17 = sub_5242C(*(v0 + 88));

    return sub_FD750(v17, v18);
  }
}

uint64_t sub_7D36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 101) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  *(v5 + 48) = swift_task_alloc();
  sub_16A164();
  *(v5 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_7D43C);
}

uint64_t sub_7D43C()
{
  sub_1696C();
  v1 = v0[5];
  type metadata accessor for CarCommandsCATsSimple(0);
  sub_16A154();
  v0[8] = sub_52464();
  if (v1)
  {
    sub_99C94();
  }

  sub_16A0C4();
  v2 = sub_5243C();
  sub_5370(v2, v3, v4, v5);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_7D528;
  sub_5242C(v0[6]);

  return sub_DD72C();
}

uint64_t sub_7D528()
{
  sub_1696C();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v9 + 80) = v8;
  *(v9 + 88) = v0;

  sub_D188(v5, &qword_1E6300, &qword_16ECE0);

  sub_10B4C();

  return _swift_task_switch(v10);
}

uint64_t sub_7D678()
{
  v1 = *(v0 + 40);
  *(v0 + 96) = 0;
  sub_16A134();
  *(v0 + 97) = 1;
  sub_16A134();
  *(v0 + 98) = 3;
  sub_16A134();
  *(v0 + 99) = 4;
  sub_16A134();
  *(v0 + 100) = 2;
  sub_16A134();
  if (v1)
  {
    v2 = *(v0 + 40);

    v3 = [v2 spokenPhrase];
    sub_16A664();
  }

  else
  {
  }

  v4 = *(v0 + 16);
  sub_16A264();

  v5 = enum case for CarCommandsSnippetsPluginModel.lockStatusModel(_:);
  v6 = sub_16A284();
  (*(*(v6 - 8) + 104))(v4, v5, v6);

  sub_D37C();

  return v7();
}

uint64_t sub_7D848()
{
  sub_D2DC();
  v0[7] = v1;
  v0[8] = v2;
  sub_16A164();
  v0[9] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_7DA18()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 96) = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  sub_10B4C();

  return _swift_task_switch(v6);
}

void sub_7DB24()
{
  sub_D084(*(v0 + 64), *(*(v0 + 64) + 24));
  sub_16A134();
  *(v0 + 40) = sub_16A354();
  *(v0 + 48) = sub_52248(&qword_1E7400, &type metadata accessor for CarCommandsToggleSnippetUpdateFailure, &protocol conformance descriptor for CarCommandsToggleSnippetUpdateFailure);
  sub_10888((v0 + 16));
  sub_16A344();
  sub_168F04();

  sub_D13C((v0 + 16));

  sub_7DDB4();

  __asm { BRAA            X0, X16 }
}

_BYTE *storeEnumTagSinglePayload for LockStatusSnippetFactory.LockStatusSnippetParameters(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x7DD7CLL);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_7DDE4()
{
  v1 = *(v0 + 16);
  sub_16ACF4(37);

  v2 = v1;
  v3 = [v2 description];
  v4 = sub_16A664();
  v6 = v5;

  v13._countAndFlagsBits = v4;
  v13._object = v6;
  sub_16A744(v13);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v7 = *(v0 + 16);
  v8 = sub_16A584();
  sub_9DA0(v8, qword_1E65C0);
  v9 = sub_16A9A4();
  sub_386D8(v9, 0x1000uLL, 0xD0000000000000B7, 0x8000000000185ED0, 0xD000000000000018, 0x8000000000185F90, 21, 0xD000000000000023, 0x8000000000185FB0);

  sub_16A544();
  [v7 trunkStatus];
  sub_16A534();
  sub_30AEC();

  return v10();
}

uint64_t sub_7DFAC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_612B8;

  return SESetTrunkStatusIntentHandler.resolveTrunkStatus(for:)(v6);
}

uint64_t SESetTrunkStatusIntentHandler.resolveCarName(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_7E080()
{
  v1 = v0[2];
  sub_16ACF4(33);

  v2 = v1;
  v3 = [v2 description];
  v4 = sub_16A664();
  v6 = v5;

  v16._countAndFlagsBits = v4;
  v16._object = v6;
  sub_16A744(v16);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v7 = v0[2];
  v8 = sub_16A584();
  sub_9DA0(v8, qword_1E65C0);
  v9 = sub_16A9A4();
  sub_386D8(v9, 0x1000uLL, 0xD0000000000000B7, 0x8000000000185ED0, 0xD000000000000014, 0x8000000000185FE0, 26, 0xD00000000000001FLL, 0x8000000000186000);

  v0[4] = [v7 carName];
  sub_3024C(&unk_16DB68);
  v14 = v10;
  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v12 = sub_615AC(v11);

  return v14(v12, 5);
}

uint64_t sub_7E290(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_60398;

  return SESetTrunkStatusIntentHandler.resolveCarName(for:)(v6);
}

uint64_t SESetTrunkStatusIntentHandler.confirm(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_7E368()
{
  if (sub_32170())
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v1 = sub_16A584();
    sub_9DA0(v1, qword_1E65C0);
    v2 = sub_16A9A4();
    sub_386D8(v2, 0x1000uLL, 0xD0000000000000B7, 0x8000000000185ED0, 0xD000000000000010, 0x8000000000186020, 33, 0xD000000000000057, 0x8000000000186040);
    sub_16A4F4();
    sub_16A4E4();
    sub_30AEC();

    return v3();
  }

  else
  {
    *(v0 + 32) = [*(v0 + 16) carName];
    sub_3024C(&unk_16DB60);
    v8 = v5;
    v6 = swift_task_alloc();
    *(v0 + 40) = v6;
    *v6 = v0;
    v7 = sub_615AC(v6);

    return v8(v7, 3, 0);
  }
}

uint64_t sub_7E524()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_D254();
  *v4 = v3;
  *(v6 + 56) = v5;
  *(v6 + 48) = v7;

  return _swift_task_switch(sub_7E634);
}

uint64_t sub_7E634()
{
  sub_D2DC();
  sub_16A4F4();
  sub_16A4E4();
  sub_30AEC();

  return v0();
}

uint64_t sub_7E6D8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SESetTrunkStatusIntentHandler.confirm(intent:)(v6);
}

uint64_t SESetTrunkStatusIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_7E7B0()
{
  if (sub_32170())
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v1 = sub_16A584();
    sub_9DA0(v1, qword_1E65C0);
    v2 = sub_16A9A4();
    sub_386D8(v2, 0x1000uLL, 0xD0000000000000B7, 0x8000000000185ED0, 0x6928656C646E6168, 0xEF293A746E65746ELL, 54, 0xD000000000000057, 0x8000000000186040);
    sub_16A4F4();
    sub_16A4E4();
    sub_30AEC();

    return v3();
  }

  else
  {
    v5 = v0[2];
    v6 = sub_32170();
    v7 = [v5 carName];
    v0[4] = v7;
    sub_3024C(&unk_16DB58);
    v10 = v8;
    v9 = swift_task_alloc();
    v0[5] = v9;
    *v9 = v0;
    v9[1] = sub_7E988;

    return v10(!v6, v7, 3);
  }
}

uint64_t sub_7E988()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_D254();
  *v4 = v3;
  *(v6 + 56) = v5;
  *(v6 + 48) = v7;

  return _swift_task_switch(sub_7EA98);
}

uint64_t sub_7EA98()
{
  sub_D2DC();
  sub_16A4F4();
  sub_16A4E4();
  sub_30AEC();

  return v0();
}

uint64_t sub_7EB3C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SESetTrunkStatusIntentHandler.handle(intent:)(v6);
}

id SESetTrunkStatusIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SESetTrunkStatusIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_7ECAC()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_120FC(v1);

  return v4(v3);
}

uint64_t sub_7ED3C()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_120FC(v1);

  return v4(v3);
}

uint64_t sub_7EDCC()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_120FC(v1);

  return v4(v3);
}

uint64_t sub_7EE5C()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_120FC(v1);

  return v4(v3);
}

uint64_t sub_7EF08(uint64_t a1)
{
  *(v2 + 552) = v1;
  *(v2 + 544) = a1;
  sub_10B4C();
  return _swift_task_switch(v3);
}

uint64_t sub_7EF38()
{
  sub_10824(*(v0 + 544), v0 + 128);
  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E8E10, &qword_171098);
  if (swift_dynamicCast())
  {
    sub_D124((v0 + 168), v0 + 88);
    v1 = sub_D084((v0 + 88), *(v0 + 112));
    v2 = sub_8ED6C(v1);
    *(v0 + 672) = v2;
    if (v2 == 2)
    {
      if (qword_1E58E8 != -1)
      {
        sub_9ED4(&qword_1E58E8);
      }

      v3 = sub_16A584();
      sub_9DA0(v3, qword_1E65C0);
      sub_16A9A4();
      sub_807E8();
      sub_386D8(v4, v5, v6, v7, v8, v9, 23, v10, v18);
      v11 = swift_task_alloc();
      *(v0 + 656) = v11;
      *v11 = v0;
      sub_80814(v11);

      return sub_12F9C4();
    }

    else
    {
      sub_D084((*(v0 + 552) + 8), *(*(v0 + 552) + 32));
      v17 = swift_task_alloc();
      *(v0 + 560) = v17;
      *v17 = v0;
      v17[1] = sub_7F2B4;

      return sub_13AB58(v0 + 248, 1);
    }
  }

  else
  {
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0;
    sub_D188(v0 + 168, &qword_1E8E18, &unk_1710A0);
    type metadata accessor for CarCommandsError(0);
    sub_11D28();
    swift_allocError();
    v14 = v13;
    sub_16ACF4(77);
    *(v0 + 528) = 0;
    *(v0 + 536) = 0xE000000000000000;
    v20._countAndFlagsBits = 0xD000000000000016;
    v20._object = 0x8000000000184C00;
    sub_16A744(v20);
    sub_16AD84();
    v21._countAndFlagsBits = 0xD000000000000035;
    v21._object = 0x8000000000186240;
    sub_16A744(v21);
    v15 = *(v0 + 536);
    *v14 = *(v0 + 528);
    v14[1] = v15;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D37C();

    return v16();
  }
}

uint64_t sub_7F2B4()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 568) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_7F3AC()
{
  sub_D124((v0 + 248), v0 + 208);
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  sub_D084((v0 + 208), v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  *(v0 + 576) = v3;
  *v3 = v0;
  v3[1] = sub_7F4E4;

  return v5(v0 + 368, v1, v2);
}

uint64_t sub_7F4E4()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 584) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_7F5DC()
{
  v1 = swift_task_alloc();
  *(v0 + 592) = v1;
  *v1 = v0;
  v2 = sub_80814(v1);

  return (sub_9A334)(v2);
}

uint64_t sub_7F684()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[51] = v1;
  v2[52] = v4;
  v2[53] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 600) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_7F780()
{
  v1 = *(v0 + 392);
  if (!v1)
  {
    sub_D188(v0 + 368, &qword_1E83D0, &qword_174EE0);
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0;
    goto LABEL_10;
  }

  v2 = *(v0 + 400);
  sub_D084((v0 + 368), *(v0 + 392));
  (*(v2 + 32))(v1, v2);
  sub_D13C((v0 + 368));
  if (!*(v0 + 352))
  {
LABEL_10:
    sub_D188(v0 + 328, &qword_1E8E20, &unk_1710B0);
    goto LABEL_12;
  }

  sub_D124((v0 + 328), v0 + 288);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  sub_D084((v0 + 288), v3);
  if ((*(v4 + 32))(v3, v4))
  {
    v5 = *(v0 + 312);
    v6 = *(v0 + 320);
    sub_D084((v0 + 288), v5);
    if ((*(v6 + 40))(v5, v6) >= 1)
    {
      v7 = *(v0 + 552);
      v8 = sub_D084((v7 + 48), *(v7 + 72));
      sub_5758(&qword_1E83E0, &unk_170410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_16D9A0;
      v10 = *(v0 + 312);
      v11 = *(v0 + 320);
      v12 = sub_D084((v0 + 288), v10);
      *(inited + 56) = v10;
      *(inited + 64) = *(v11 + 8);
      v13 = sub_10888((inited + 32));
      v14.n128_f64[0] = (*(*(v10 - 8) + 16))(v13, v12, v10);
      v15 = sub_948E4(inited, *v8, v14);
      swift_setDeallocating();
      sub_EFFF4();
      v16 = v15[2];

      if (v16)
      {
        v17 = *(v0 + 312);
        v18 = *(v0 + 320);
        v19 = *(v0 + 672);
        sub_D084((v0 + 288), v17);
        (*(v18 + 16))(v19 & 1, v17, v18);
        v20 = swift_task_alloc();
        *(v0 + 608) = v20;
        *v20 = v0;
        v20[1] = sub_7FC40;

        return sub_8045C();
      }

      else
      {
        v32 = *(v7 + 72);
        v33 = *(*(v0 + 552) + 80);
        sub_D084((v7 + 48), v32);
        v34 = *(v33 + 8);
        v37 = (*(v34 + 40) + **(v34 + 40));
        v35 = swift_task_alloc();
        *(v0 + 624) = v35;
        *v35 = v0;
        v35[1] = sub_7FD9C;

        return v37(v32, v34);
      }
    }
  }

  sub_D13C((v0 + 288));
LABEL_12:
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v22 = sub_16A584();
  sub_9DA0(v22, qword_1E65C0);
  sub_16A9A4();
  sub_807E8();
  sub_386D8(v23, v24, v25, v26, v27, v28, 40, v29, v36);
  v30 = swift_task_alloc();
  *(v0 + 640) = v30;
  *v30 = v0;
  v31 = sub_80814(v30);

  return (sub_12F9C4)(v31);
}

uint64_t sub_7FC40()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[54] = v1;
  v2[55] = v4;
  v2[56] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 616) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_7FD3C()
{
  sub_D2DC();
  sub_80828();
  sub_D13C((v0 + 88));
  v1 = sub_302B8();

  return v2(v1);
}

uint64_t sub_7FD9C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[57] = v1;
  v2[58] = v4;
  v2[59] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 632) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_7FE98()
{
  sub_D2DC();
  sub_80828();
  sub_D13C((v0 + 88));
  v1 = sub_302B8();

  return v2(v1);
}

uint64_t sub_7FEF8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[60] = v1;
  v2[61] = v4;
  v2[62] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 648) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_7FFF4()
{
  sub_D2DC();
  sub_D13C((v0 + 208));
  sub_D13C((v0 + 88));
  v1 = sub_302B8();

  return v2(v1);
}

uint64_t sub_80058()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[63] = v1;
  v2[64] = v4;
  v2[65] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 664) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_80154()
{
  sub_D2DC();
  sub_D13C((v0 + 88));
  v1 = sub_302B8();

  return v2(v1);
}

uint64_t sub_801B0()
{
  sub_D2DC();
  sub_D13C((v0 + 88));
  sub_D37C();

  return v1();
}

uint64_t sub_8020C()
{
  sub_D2DC();

  sub_D13C((v0 + 88));
  v1 = sub_302B8();

  return v2(v1);
}

uint64_t sub_80270()
{
  sub_D2DC();

  sub_D13C((v0 + 88));
  sub_D37C();

  return v1();
}

uint64_t sub_802D4()
{
  sub_D2DC();
  sub_D13C((v0 + 208));
  sub_D13C((v0 + 88));
  sub_D37C();

  return v1();
}

uint64_t sub_80338()
{
  sub_D2DC();
  sub_D13C((v0 + 208));
  sub_D13C((v0 + 88));
  sub_D37C();

  return v1();
}

uint64_t sub_8039C()
{
  sub_D2DC();
  sub_80828();
  sub_D13C((v0 + 88));
  sub_D37C();

  return v1();
}

uint64_t sub_803FC()
{
  sub_D2DC();
  sub_80828();
  sub_D13C((v0 + 88));
  sub_D37C();

  return v1();
}

uint64_t sub_8045C()
{
  sub_D2DC();
  *(v0 + 48) = v1;
  sub_16A164();
  *(v0 + 16) = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v2);
}

uint64_t sub_804E4()
{
  sub_D2DC();
  type metadata accessor for CarCommandsSetSteeringWheelTemperatureCATsSimple(0);
  sub_16A154();
  *(v0 + 24) = sub_16A0F4();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_805A4;
  v2 = *(v0 + 48);

  return sub_C0B30(v2);
}

uint64_t sub_805A4(uint64_t a1)
{
  sub_D358();
  v5 = v4;
  v6 = *v2;
  sub_D254();
  *v7 = v6;
  *(v5 + 40) = v1;

  if (v1)
  {
    sub_10B4C();

    return _swift_task_switch(v8);
  }

  else
  {

    v9 = *(v6 + 8);

    return v9(a1);
  }
}

uint64_t sub_806F0()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_80754(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_3E08C;

  return sub_7EF08(a1);
}

uint64_t sub_80828()
{
  sub_D13C((v0 + 208));

  return sub_D13C((v0 + 288));
}

uint64_t sub_808A0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_8527C(-1);
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return sub_8527C((*a1 | (v4 << 8)) - 13);
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

      return sub_8527C((*a1 | (v4 << 8)) - 13);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_8527C((*a1 | (v4 << 8)) - 13);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_8527C(v8);
}

_BYTE *sub_80928(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result = sub_85274(result, v6);
        break;
      case 2:
        result = sub_85264(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x809E4);
      case 4:
        result = sub_8526C(result, v6);
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
          result = sub_85250(result, a2 + 12);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_80A18(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDD)
  {
    if (a2 + 35 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 35) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 36;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v5 = v6 - 36;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_80AA0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDC)
  {
    v6 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
        JUMPOUT(0x80B6CLL);
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
          *result = a2 + 35;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_80BC0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_8527C(-1);
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
      return sub_8527C((*a1 | (v4 << 8)) - 3);
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

      return sub_8527C((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_8527C((*a1 | (v4 << 8)) - 3);
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

  return sub_8527C(v8);
}

_BYTE *sub_80C44(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = sub_85274(result, v6);
        break;
      case 2:
        result = sub_85264(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x80D00);
      case 4:
        result = sub_8526C(result, v6);
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
          result = sub_85250(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_80D4C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE4)
  {
    if (a2 + 28 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 28) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 29;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v5 = v6 - 29;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_80DD4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE3)
  {
    v6 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
        JUMPOUT(0x80EA0);
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
          *result = a2 + 28;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_80ED4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_80F5C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
        JUMPOUT(0x81028);
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarCommandsCannedActionNLv3Value(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_810E4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
        JUMPOUT(0x811B0);
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
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_81248()
{
  sub_85234();
  v2._rawValue = &off_1D0650;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

void sub_81288(char a1)
{
  switch(a1)
  {
    case 1:
    case 3:
      return;
    case 2:
      sub_85284();
      break;
    case 4:
      sub_85304(17);
      break;
    case 5:
      sub_851E0();
      break;
    default:
      sub_375D8();
      break;
  }
}

unint64_t sub_81354()
{
  sub_85234();
  sub_16AE64();
  sub_852C4();
  if (v0 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v0;
  }
}

void sub_8139C(char a1)
{
  switch(a1)
  {
    case 2:
    case 6:
      sub_852FC();
      break;
    case 3:
    case 7:
      sub_375D8();
      break;
    case 4:
      sub_85318(0x6C6261736964);
      break;
    case 11:
      sub_85258(0x75716572u);
      break;
    case 18:
      sub_852F4();
      break;
    case 20:
      sub_851E0();
      break;
    default:
      return;
  }
}

unint64_t sub_81600()
{
  sub_85234();
  v2._rawValue = &off_1D2380;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v1;
  }
}

void sub_81640(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 5:
      sub_375D8();
      break;
    case 3:
    case 4:
      sub_85304(23);
      break;
    default:
      return;
  }
}

unint64_t sub_81820@<X0>(_BYTE *a1@<X8>)
{
  result = sub_81248();
  *a1 = result;
  return result;
}

void sub_81850()
{
  v1 = sub_85228();
  sub_81288(v1);
  *v0 = v2;
  v0[1] = v3;
}

unint64_t sub_8188C()
{
  result = qword_1E8E38;
  if (!qword_1E8E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8E38);
  }

  return result;
}

unint64_t sub_81934@<X0>(_BYTE *a1@<X8>)
{
  result = sub_81354();
  *a1 = result;
  return result;
}

void sub_81964()
{
  v1 = sub_85228();
  sub_8139C(v1);
  *v0 = v2;
  v0[1] = v3;
}

unint64_t sub_819C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_81600();
  *a1 = result;
  return result;
}

void sub_819F0()
{
  v1 = sub_85228();
  sub_81640(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_81A28(uint64_t a1, uint64_t a2)
{
  v2 = sub_5758(&qword_1E8FA8, &qword_1720D8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  sub_169AB4();
  v8 = sub_169AD4();
  if (sub_9E2C(v7, 1, v8) != 1)
  {
    sub_84718(v7, v5);
    v10 = *(v8 - 8);
    v11 = (*(v10 + 88))(v5, v8);
    if (v11 == enum case for UsoEntity_common_RadioBand.DefinedValues.common_RadioBand_HD(_:))
    {
      v9 = 4;
      goto LABEL_13;
    }

    if (v11 == enum case for UsoEntity_common_RadioBand.DefinedValues.common_RadioBand_XM(_:))
    {
      v9 = 2;
      goto LABEL_13;
    }

    if (v11 == enum case for UsoEntity_common_RadioBand.DefinedValues.common_RadioBand_AM(_:))
    {
      v9 = 1;
      goto LABEL_13;
    }

    if (v11 == enum case for UsoEntity_common_RadioBand.DefinedValues.common_RadioBand_FM(_:))
    {
      v9 = 0;
      goto LABEL_13;
    }

    if (v11 == enum case for UsoEntity_common_RadioBand.DefinedValues.common_RadioBand_DAB(_:))
    {
      v9 = 3;
      goto LABEL_13;
    }

    (*(v10 + 8))(v5, v8);
  }

  v9 = 5;
LABEL_13:
  sub_846B0(v7);
  return v9;
}

uint64_t sub_81C1C(char w0_0, uint64_t a2, uint64_t a3)
{
  sub_81C68(w0_0, a2, a3);
  sub_16A744(v4);

  return 46;
}

void sub_81C68(char a1, uint64_t a2, uint64_t a3)
{
  switch(a1)
  {
    case 8:
      sub_8520C();
      break;
    case 10:
    case 18:
    case 28:
      sub_852F4();
      break;
    case 19:
      sub_85318(0x6C69666F7270);
      break;
    case 20:
      sub_85240();
      break;
    case 22:
    case 23:
      sub_852FC();
      break;
    case 26:
      sub_85310(19);
      break;
    case 33:
      sub_851E0();
      break;
    default:
      return;
  }
}

unint64_t sub_82044()
{
  sub_85234();
  sub_16AE64();
  sub_852C4();
  if (v0 >= 0x24)
  {
    return 36;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_820B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_82044();
  *a1 = result;
  return result;
}

void sub_820E0()
{
  v1 = sub_85228();
  sub_81C68(v1, v2, v3);
  *v0 = v4;
  v0[1] = v5;
}

unint64_t sub_82120()
{
  sub_85234();
  sub_16AE64();
  sub_852C4();
  if (v0 >= 0x1D)
  {
    return 29;
  }

  else
  {
    return v0;
  }
}

void sub_82168(char a1, uint64_t a2, uint64_t a3)
{
  switch(a1)
  {
    case 2:
    case 13:
      sub_375D8();
      break;
    case 6:
    case 9:
      sub_85284();
      break;
    case 17:
      sub_851E0();
      break;
    case 20:
      sub_852FC();
      break;
    case 25:
      sub_851F8();
      break;
    case 27:
      sub_8529C();
      break;
    default:
      return;
  }
}

unint64_t sub_824A4()
{
  sub_85234();
  v2._rawValue = &off_1D0F40;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_824E4(char a1)
{
  result = 7105633;
  switch(a1)
  {
    case 1:
      result = sub_8520C();
      break;
    case 2:
      result = sub_85240();
      break;
    case 3:
      result = sub_851E0();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_8256C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_82120();
  *a1 = result;
  return result;
}

void sub_8259C()
{
  v1 = sub_85228();
  sub_82168(v1, v2, v3);
  *v0 = v4;
  v0[1] = v5;
}

unint64_t sub_825F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_824A4();
  *a1 = result;
  return result;
}

uint64_t sub_82628()
{
  v1 = sub_85228();
  result = sub_824E4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_82664()
{
  result = qword_1E8E50;
  if (!qword_1E8E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8E50);
  }

  return result;
}

unint64_t sub_826EC()
{
  result = qword_1E8E68;
  if (!qword_1E8E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8E68);
  }

  return result;
}

uint64_t sub_82770(char a1)
{
  v2 = 0xE300000000000000;
  v3._countAndFlagsBits = 7105633;
  switch(a1)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3._countAndFlagsBits = 0x726576697264;
      break;
    case 2:
      v2 = 0xE900000000000072;
      v3._countAndFlagsBits = 0x65676E6573736170;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3._countAndFlagsBits = 0x746E6F7266;
      break;
    case 4:
      v3._countAndFlagsBits = 0x66654C746E6F7266;
      goto LABEL_10;
    case 5:
      v2 = 0xEA00000000007468;
      v3._countAndFlagsBits = 0x676952746E6F7266;
      break;
    case 6:
      v2 = 0xE800000000000000;
      v3._countAndFlagsBits = 0x7466654C72616572;
      break;
    case 7:
      v3._countAndFlagsBits = 0x6867695272616572;
LABEL_10:
      v2 = 0xE900000000000074;
      break;
    case 8:
      v2 = 0xE400000000000000;
      v3._countAndFlagsBits = 1918985586;
      break;
    case 9:
      v2 = 0xEC0000007466654CLL;
      goto LABEL_14;
    case 10:
      v2 = 0xED00007468676952;
      goto LABEL_14;
    case 11:
      v2 = 0xE800000000000000;
LABEL_14:
      v3._countAndFlagsBits = 0x776F526472696874;
      break;
    case 12:
      v2 = 0xE700000000000000;
      v3._countAndFlagsBits = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v3._object = v2;
  sub_16A744(v3);

  return 46;
}

void sub_8292C(char a1)
{
  switch(a1)
  {
    case 3:
      sub_8520C();
      break;
    case 4:
    case 7:
      sub_852F4();
      break;
    case 8:
      sub_85240();
      break;
    case 12:
      sub_851E0();
      break;
    default:
      return;
  }
}

unint64_t sub_82A84()
{
  sub_85234();
  v2._rawValue = &off_1D16E0;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_82AE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_82A84();
  *a1 = result;
  return result;
}

void sub_82B18()
{
  v1 = sub_85228();
  sub_8292C(v1);
  *v0 = v2;
  v0[1] = v3;
}

unint64_t sub_82B58()
{
  sub_85234();
  v2._rawValue = &off_1D0700;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_82B98(char a1, uint64_t a2, uint64_t a3)
{
  result = 0x64656B636F6CLL;
  switch(a1)
  {
    case 1:
      v5 = 0x696873616C66;
      goto LABEL_9;
    case 2:
      result = 0x746E656C6973;
      break;
    case 3:
      v5 = 0x69646E756F73;
LABEL_9:
      result = v5 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
      break;
    case 4:
      result = 0x64656B636F6C6E75;
      break;
    case 5:
      result = 1802658160;
      break;
    case 6:
      result = sub_851E0();
      break;
    case 7:
      result = 0x61635F7075746573;
      break;
    case 8:
      result = 7827308;
      break;
    case 9:
      result = 1751607656;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = sub_851F8();
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_82D24()
{
  sub_85234();
  v2._rawValue = &off_1D1248;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_82D64(char a1)
{
  if (!a1)
  {
    return 0x6974616D6F747561;
  }

  if (a1 == 1)
  {
    return 0x6C61756E616DLL;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_82DC8(char a1)
{
  if (a1)
  {
    return 0x6564697374756FLL;
  }

  else
  {
    return 0x656469736E69;
  }
}

unint64_t sub_82DFC()
{
  sub_85234();
  v2._rawValue = &off_1D1060;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_82E3C(char a1)
{
  result = 1701011814;
  switch(a1)
  {
    case 1:
      result = 0x726F6F6C66;
      break;
    case 2:
      result = 0x46646E4165636166;
      break;
    case 3:
      result = 0x65696873646E6977;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_82EF0()
{
  sub_85234();
  v2._rawValue = &off_1D1148;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_82F30(char a1)
{
  result = 0x737569736C6563;
  switch(a1)
  {
    case 1:
      result = 0x6E69766C656BLL;
      break;
    case 2:
      result = 0x65686E6572686166;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_82FC8()
{
  sub_85234();
  v2._rawValue = &off_1D11C8;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_83008(char a1)
{
  result = 0x7265646C6F63;
  switch(a1)
  {
    case 1:
      result = sub_85258(0x646C6F63u);
      break;
    case 2:
      result = 0x72656D726177;
      break;
    case 3:
      result = 0x7473656D726177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_83088(char a1)
{
  if (a1)
  {
    return 1751607656;
  }

  else
  {
    return 7827308;
  }
}

unint64_t sub_830D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_82B58();
  *a1 = result;
  return result;
}

uint64_t sub_83104()
{
  v1 = sub_85228();
  result = sub_82B98(v1, v2, v3);
  *v0 = result;
  v0[1] = v5;
  return result;
}

unint64_t sub_83140()
{
  result = qword_1E8E80;
  if (!qword_1E8E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8E80);
  }

  return result;
}

unint64_t sub_831C8()
{
  result = qword_1E8E98;
  if (!qword_1E8E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8E98);
  }

  return result;
}

unint64_t sub_83270@<X0>(_BYTE *a1@<X8>)
{
  result = sub_82D24();
  *a1 = result;
  return result;
}

uint64_t sub_832A0()
{
  v1 = sub_85228();
  result = sub_82D64(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_832FC@<X0>(_BYTE *a2@<X8>)
{
  result = sub_83D98();
  *a2 = result;
  return result;
}

uint64_t sub_83334()
{
  v1 = sub_85228();
  result = sub_82DC8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_83390@<X0>(_BYTE *a1@<X8>)
{
  result = sub_82DFC();
  *a1 = result;
  return result;
}

unint64_t sub_833C0()
{
  v1 = sub_85228();
  result = sub_82E3C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_8341C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_82EF0();
  *a1 = result;
  return result;
}

unint64_t sub_8344C()
{
  v1 = sub_85228();
  result = sub_82F30(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_834A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_82FC8();
  *a1 = result;
  return result;
}

uint64_t sub_834D8()
{
  v1 = sub_85228();
  result = sub_83008(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_83524@<X0>(_BYTE *a2@<X8>)
{
  result = sub_83D98();
  *a2 = result;
  return result;
}

uint64_t sub_8355C()
{
  v1 = sub_85228();
  result = sub_83088(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_83584(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v4 = a2;
  v5 = a2 >> 8;
  sub_16ACF4(47);

  strcpy(v35, "temperature: ");
  HIWORD(v35[1]) = -4864;
  if (v4 == 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  v32 = v6;
  v7 = sub_5758(&qword_1E8FD0, &qword_172260);
  v36._countAndFlagsBits = sub_852DC(v7, v8, v9, v10, v11, v12, v13, v14, v32);
  sub_16A744(v36);

  v37._countAndFlagsBits = 0x203A74696E750ALL;
  v37._object = 0xE700000000000000;
  sub_16A744(v37);
  LOBYTE(v33) = v2;
  v15 = sub_5758(&qword_1E8FD8, &qword_172268);
  v38._countAndFlagsBits = sub_852DC(v15, v16, v17, v18, v19, v20, v21, v22, v33);
  sub_85320(v38);

  v39._object = 0x8000000000186400;
  v39._countAndFlagsBits = 0xD000000000000015;
  sub_16A744(v39);
  LOBYTE(v34) = v5;
  v23 = sub_5758(&qword_1E8FE0, &qword_172270);
  v40._countAndFlagsBits = sub_852DC(v23, v24, v25, v26, v27, v28, v29, v30, v34);
  sub_85320(v40);

  return v35[0];
}

unint64_t sub_836D8()
{
  sub_85234();
  v2._rawValue = &off_1D2758;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_83718(char a1)
{
  result = 0x726564756F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x7942726564756F6CLL;
      break;
    case 2:
      result = sub_85258(0x64756F6Cu);
      break;
    case 3:
      result = 0x72657465697571;
      break;
    case 4:
      result = sub_85310(16);
      break;
    case 5:
      result = 0x7473657465697571;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_837E4()
{
  sub_85234();
  v2._rawValue = &off_1D2808;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_83824(char a1)
{
  result = 1852399981;
  switch(a1)
  {
    case 1:
      result = 1769105779;
      break;
    case 2:
      result = sub_851F8();
      break;
    case 3:
      result = sub_852B0();
      break;
    case 4:
      result = 0x7265676E6972;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_838D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_836D8();
  *a1 = result;
  return result;
}

uint64_t sub_83904()
{
  v1 = sub_85228();
  result = sub_83718(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_83950@<X0>(_BYTE *a1@<X8>)
{
  result = sub_837E4();
  *a1 = result;
  return result;
}

uint64_t sub_83980()
{
  v1 = sub_85228();
  result = sub_83824(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_839A8(char a1, uint64_t a2, unsigned int a3)
{
  v5 = a3 >> 8;
  sub_16ACF4(46);

  LOBYTE(v31) = a1;
  v6 = sub_5758(&qword_1E8FB8, &qword_172248);
  v33._countAndFlagsBits = sub_852DC(v6, v7, v8, v9, v10, v11, v12, v13, v31);
  sub_16A744(v33);

  v34._object = 0x80000000001863E0;
  v34._countAndFlagsBits = 0xD000000000000012;
  sub_16A744(v34);
  v14 = sub_5758(&qword_1E8FC0, &qword_172250);
  v35._countAndFlagsBits = sub_852DC(v14, v15, v16, v17, v18, v19, v20, v21, a2);
  sub_85320(v35);

  v36._countAndFlagsBits = 0x766974616C65720ALL;
  v36._object = 0xED0000203A797469;
  sub_16A744(v36);
  LOBYTE(v32) = v5;
  v22 = sub_5758(&qword_1E8FC8, &qword_172258);
  v37._countAndFlagsBits = sub_852DC(v22, v23, v24, v25, v26, v27, v28, v29, v32);
  sub_85320(v37);

  return 0x3A6C656E6E616863;
}

unint64_t sub_83AF8()
{
  sub_85234();
  v2._rawValue = &off_1D1960;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_83B38(char a1)
{
  result = 0xD000000000000024;
  switch(a1)
  {
    case 1:
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_83BDC()
{
  sub_85234();
  v2._rawValue = &off_1D12B0;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_83C1C(char a1)
{
  result = 0x6563696F76;
  switch(a1)
  {
    case 1:
      result = sub_85310(21);
      break;
    case 2:
      result = sub_8529C();
      break;
    case 3:
      result = 0x656D756C6F76;
      break;
    case 4:
      result = 0x707954616964656DLL;
      break;
    case 5:
      result = sub_851E0();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_83CD0()
{
  sub_85234();
  v2._rawValue = &off_1D1360;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_83D10(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return sub_852B0();
  }

  if (a1 == 1)
  {
    return 0x656E6F687069;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_83D5C(char a1)
{
  if (a1)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 1702131053;
  }
}

uint64_t sub_83D98()
{
  sub_85234();
  v3._rawValue = v2;
  v6._object = v0;
  sub_16ADE4(v3, v6);
  sub_852C4();
  if (v1 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_83DDC(char a1)
{
  if (a1)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 0x6C6F765F6C6C6163;
  }
}

unint64_t sub_83E60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_83AF8();
  *a1 = result;
  return result;
}

unint64_t sub_83E90()
{
  v1 = sub_85228();
  result = sub_83B38(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_83EEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_83BDC();
  *a1 = result;
  return result;
}

uint64_t sub_83F1C()
{
  v1 = sub_85228();
  result = sub_83C1C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_83F58()
{
  result = qword_1E8EB0;
  if (!qword_1E8EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8EB0);
  }

  return result;
}

unint64_t sub_84000@<X0>(_BYTE *a1@<X8>)
{
  result = sub_83CD0();
  *a1 = result;
  return result;
}

uint64_t sub_84030()
{
  v1 = sub_85228();
  result = sub_83D10(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t sub_8408C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_83D98();
  *a1 = result;
  return result;
}

uint64_t sub_840C4()
{
  v1 = sub_85228();
  result = sub_83D5C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_84100()
{
  result = qword_1E8EC8;
  if (!qword_1E8EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8EC8);
  }

  return result;
}

unint64_t sub_84188()
{
  result = qword_1E8EE0;
  if (!qword_1E8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8EE0);
  }

  return result;
}

uint64_t sub_84230@<X0>(_BYTE *a1@<X8>)
{
  result = sub_83D98();
  *a1 = result;
  return result;
}

uint64_t sub_84268()
{
  v1 = sub_85228();
  result = sub_83DDC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_842A4()
{
  result = qword_1E8EF8;
  if (!qword_1E8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8EF8);
  }

  return result;
}

unint64_t sub_8432C()
{
  result = qword_1E8F10;
  if (!qword_1E8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8F10);
  }

  return result;
}

unint64_t sub_843B4()
{
  result = qword_1E8F28;
  if (!qword_1E8F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8F28);
  }

  return result;
}

unint64_t sub_8443C()
{
  result = qword_1E8F40;
  if (!qword_1E8F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8F40);
  }

  return result;
}

unint64_t sub_844C4()
{
  result = qword_1E8F58;
  if (!qword_1E8F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8F58);
  }

  return result;
}

unint64_t sub_8454C()
{
  result = qword_1E8F70;
  if (!qword_1E8F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8F70);
  }

  return result;
}

unint64_t sub_845D4()
{
  result = qword_1E8F88;
  if (!qword_1E8F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8F88);
  }

  return result;
}

unint64_t sub_8465C()
{
  result = qword_1E8FA0;
  if (!qword_1E8FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8FA0);
  }

  return result;
}

uint64_t sub_846B0(uint64_t a1)
{
  v2 = sub_5758(&qword_1E8FA8, &qword_1720D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_84718(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E8FA8, &qword_1720D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_84788(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_8479C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && a1[18])
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *a1;
      if (v3 <= 5)
      {
        v4 = 5;
      }

      else
      {
        v4 = *a1;
      }

      v5 = v4 - 6;
      if (v3 < 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_847E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_84838(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_8484C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 11))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 10);
      if (v3 <= 2)
      {
        v4 = 2;
      }

      else
      {
        v4 = *(a1 + 10);
      }

      v5 = v4 - 3;
      if (v3 < 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_84898(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 10) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_848FC()
{
  result = qword_1E8FB0;
  if (!qword_1E8FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8FB0);
  }

  return result;
}

uint64_t sub_84950(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_8527C(-1);
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
      return sub_8527C((*a1 | (v4 << 8)) - 4);
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

      return sub_8527C((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_8527C((*a1 | (v4 << 8)) - 4);
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

  return sub_8527C(v8);
}

_BYTE *sub_849D4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = sub_85274(result, v6);
        break;
      case 2:
        result = sub_85264(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x84A90);
      case 4:
        result = sub_8526C(result, v6);
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
          result = sub_85250(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_84AC4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_8527C(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return sub_8527C((*a1 | (v4 << 8)) - 6);
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

      return sub_8527C((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_8527C((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_8527C(v8);
}

_BYTE *sub_84B48(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = sub_85274(result, v6);
        break;
      case 2:
        result = sub_85264(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x84C04);
      case 4:
        result = sub_8526C(result, v6);
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
          result = sub_85250(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_84C38(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_8527C(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return sub_8527C((*a1 | (v4 << 8)) - 5);
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

      return sub_8527C((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_8527C((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_8527C(v8);
}

_BYTE *sub_84CBC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_85274(result, v6);
        break;
      case 2:
        result = sub_85264(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x84D78);
      case 4:
        result = sub_8526C(result, v6);
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
          result = sub_85250(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_84DAC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_8527C(-1);
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
      return sub_8527C((*a1 | (v4 << 8)) - 2);
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

      return sub_8527C((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_8527C((*a1 | (v4 << 8)) - 2);
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

  return sub_8527C(v8);
}

_BYTE *sub_84E30(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = sub_85274(result, v6);
        break;
      case 2:
        result = sub_85264(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x84EECLL);
      case 4:
        result = sub_8526C(result, v6);
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
          result = sub_85250(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for NLSettingsChange(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_84F34(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 4;
      v2 = v3 - 4;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_84F70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_84FC4()
{
  result = qword_1E8FE8;
  if (!qword_1E8FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8FE8);
  }

  return result;
}

unint64_t sub_8501C()
{
  result = qword_1E8FF0;
  if (!qword_1E8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8FF0);
  }

  return result;
}

unint64_t sub_85074()
{
  result = qword_1E8FF8;
  if (!qword_1E8FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8FF8);
  }

  return result;
}

uint64_t sub_850F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_37130(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_85150()
{
  result = qword_1E9010;
  if (!qword_1E9010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E9010);
  }

  return result;
}

uint64_t sub_852C4()
{
}

uint64_t sub_852DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_16A694();
}

void sub_85320(Swift::String a1)
{

  sub_16A744(a1);
}

void *sub_85338(char *a1, char a2)
{
  v3 = v2;
  type metadata accessor for CarCommandsError(0);
  sub_10AFC();
  __chkstk_darwin(v7);
  sub_A138();
  v10 = (v9 - v8);
  if ((a2 & 0xF0) != 0x70)
  {
    LOBYTE(v44[0]) = a2;
    *v10 = sub_16A694();
    v10[1] = v12;
    swift_storeEnumTagMultiPayload();
    v13 = sub_11D28();
    sub_5A144(v13);
    sub_548D0(v10, v14);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v15 = sub_16A584();
    sub_9DA0(v15, qword_1E65C0);
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v16 = sub_860CC();
    v23 = 19;
    goto LABEL_15;
  }

  sub_86E4(a1, &_swiftEmptySetSingleton, v40);
  if (!v40[3])
  {
    sub_109A0(v40, &qword_1E5F80, &unk_16E7E0);
    v41 = 0u;
    v42 = 0u;
    v43 = 0;
    goto LABEL_12;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&unk_1E9020, &qword_172608);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    goto LABEL_12;
  }

  if (!*(&v42 + 1))
  {
LABEL_12:
    sub_109A0(&v41, &qword_1E9018, &qword_172600);
    sub_1693E4();
    sub_10AFC();
    (*(v24 + 16))(v10, a1);
    swift_storeEnumTagMultiPayload();
    v25 = sub_11D28();
    sub_5A144(v25);
    sub_548D0(v10, v26);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v27 = sub_16A584();
    sub_9DA0(v27, qword_1E65C0);
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v16 = sub_860CC();
    v23 = 25;
LABEL_15:
    sub_386D8(v16, v17, v18, v19, v20, v21, v23, v22, v39);

    sub_5A09C(v10);
    v28 = v2;
    return v3;
  }

  sub_D124(&v41, v44);
  v11 = sub_D084(v44, v44[3]);
  switch(a2 & 0xF)
  {
    case 1:
      sub_8E604();
      if (v36 || (sub_5BAF0(v2), v37))
      {
        v32 = sub_16A644();
      }

      else
      {
        v32 = 0;
      }

      [v2 setCallsign:v32];
      goto LABEL_32;
    case 2:
      sub_8E65C();
      if (v33 || (sub_11D80(v2), v34))
      {
        v32 = sub_16A644();
      }

      else
      {
        v32 = 0;
      }

      [v2 setChannel:v32];
      goto LABEL_32;
    case 3:
      v35 = sub_8E698();
      if (!v35)
      {
        v35 = [v3 frequency];
      }

      [v3 setFrequency:v35];

      break;
    case 4:
      sub_8E5EC();
      if (v30 || (sub_5BAE4(v2), v31))
      {
        v32 = sub_16A644();
      }

      else
      {
        v32 = 0;
      }

      [v2 setName:v32];
LABEL_32:

      break;
    default:
      [v2 setBand:sub_8E748(v11)];
      break;
  }

  v38 = v3;
  sub_D13C(v44);
  return v3;
}

id sub_857D4(uint64_t a1, char a2)
{
  type metadata accessor for CarCommandsError(0);
  sub_10AFC();
  __chkstk_darwin(v4);
  sub_A138();
  v7 = (v6 - v5);
  if ((a2 & 0xF0) == 0x70)
  {
    switch(a2 & 0xF)
    {
      case 1:
        sub_86120();
        if (sub_860AC() || (sub_5BAF0(v25), v23))
        {
          v19 = sub_16A644();
        }

        else
        {
          v19 = 0;
        }

        [v25 setCallsign:v19];
        goto LABEL_29;
      case 2:
        sub_86120();
        if (sub_860AC() || (sub_11D80(v25), v20))
        {
          v19 = sub_16A644();
        }

        else
        {
          v19 = 0;
        }

        [v25 setChannel:v19];
        goto LABEL_29;
      case 3:
        sub_86120();
        sub_76D10();
        if (sub_860AC())
        {
          v16 = v25;
          v17 = v26;
        }

        else
        {
          v21 = [v25 frequency];
          v16 = v25;
          v17 = v21;
        }

        [v16 setFrequency:v17];

        break;
      case 4:
        sub_86120();
        if (sub_860AC() || (sub_5BAE4(v25), v18))
        {
          v19 = sub_16A644();
        }

        else
        {
          v19 = 0;
        }

        [v25 setName:v19];
LABEL_29:

        break;
      default:
        sub_86120();
        if (sub_860AC())
        {
          v9 = v25;
          v8 = v26;
        }

        else
        {
          v22 = [v25 band];
          v9 = v25;
          v8 = v22;
        }

        [v9 setBand:v8];
        break;
    }
  }

  else
  {
    *v7 = sub_16A694();
    v7[1] = v10;
    swift_storeEnumTagMultiPayload();
    sub_11D28();
    swift_allocError();
    sub_548D0(v7, v11);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v12 = sub_16A584();
    sub_9DA0(v12, qword_1E65C0);
    v13 = sub_16A9A4();
    swift_getErrorValue();
    v14 = sub_16AEB4();
    sub_386D8(v13, 0x800uLL, 0xD0000000000000A5, 0x8000000000186420, 0xD000000000000018, 0x8000000000183260, 48, v14, v15);

    sub_5A09C(v7);
  }

  return v25;
}

double sub_85BA4@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 0xF0) == 0x70)
  {
    switch(a1 & 0xF)
    {
      case 1:
        v6 = sub_5BAF0(v2);
        if (!v7)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      case 2:
        v6 = sub_11D80(v2);
        if (!v7)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      case 3:
        v8 = [v2 frequency];
        if (!v8)
        {
          goto LABEL_12;
        }

        v9 = v8;
        *(a2 + 24) = sub_76D10();
        *a2 = v9;
        return result;
      case 4:
        v6 = sub_5BAE4(v2);
        if (!v7)
        {
          goto LABEL_12;
        }

LABEL_11:
        *(a2 + 24) = &type metadata for String;
        *a2 = v6;
        *(a2 + 8) = v7;
        break;
      default:
        v4 = [v2 band];
        *(a2 + 24) = &type metadata for IntentRadioBand;
        *a2 = v4;
        break;
    }
  }

  else
  {
LABEL_12:
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

id sub_85CAC(char *a1)
{
  type metadata accessor for CarCommandsError(0);
  sub_10AFC();
  __chkstk_darwin(v3);
  sub_A138();
  v6 = v5 - v4;
  sub_86E4(a1, &_swiftEmptySetSingleton, v28);
  if (v28[3])
  {
    sub_5758(&qword_1E5F90, &qword_170270);
    sub_5758(&unk_1E9020, &qword_172608);
    if (swift_dynamicCast())
    {
      if (*(&v30 + 1))
      {
        sub_D124(&v29, v32);
        v7 = [objc_allocWithZone(v1) init];
        sub_86100();
        v8 = v7;
        [v8 setBand:sub_8E748(v8)];
        sub_86100();
        v9 = sub_8E65C();
        if (v10)
        {
          v11 = sub_16A644();
        }

        else
        {
          v11 = 0;
        }

        sub_86138(v9, "setChannel:");

        sub_86100();
        v20 = sub_8E604();
        if (v21)
        {
          v22 = sub_16A644();
        }

        else
        {
          v22 = 0;
        }

        sub_86138(v20, "setCallsign:");

        sub_86100();
        v23 = sub_8E698();
        sub_86138(v23, "setFrequency:");

        sub_86100();
        v24 = sub_8E5EC();
        if (v25)
        {
          v26 = sub_16A644();
        }

        else
        {
          v26 = 0;
        }

        sub_86138(v24, "setName:");

        sub_1693E4();
        sub_10AFC();
        (*(v27 + 8))(a1);
        sub_D13C(v32);
        return v8;
      }
    }

    else
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
    }
  }

  else
  {
    sub_109A0(v28, &qword_1E5F80, &unk_16E7E0);
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
  }

  sub_109A0(&v29, &qword_1E9018, &qword_172600);
  v12 = sub_1693E4();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v6, a1, v12);
  swift_storeEnumTagMultiPayload();
  sub_11D28();
  swift_allocError();
  sub_548D0(v6, v14);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v15 = sub_16A584();
  sub_9DA0(v15, qword_1E65C0);
  v16 = sub_16A9A4();
  swift_getErrorValue();
  v17 = sub_16AEB4();
  sub_386D8(v16, 0x800uLL, 0xD0000000000000A5, 0x8000000000186420, 0x293A5F2874696E69, 0xE800000000000000, 88, v17, v18);

  (*(v13 + 8))(a1, v12);
  sub_5A09C(v6);
  return 0;
}

uint64_t sub_860AC()
{

  return swift_dynamicCast();
}

uint64_t sub_86120()
{

  return sub_16138(v0, v1 - 128);
}

id sub_86138(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t SEActivateSignalIntentHandler.resolveCarName(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_86164()
{
  sub_1696C();
  *(v0 + 32) = [*(v0 + 16) carName];
  v1 = sub_37484();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = sub_615AC(v1);

  return v4(v2, 2);
}

uint64_t sub_86234(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_60398;

  return SEActivateSignalIntentHandler.resolveCarName(for:)(v6);
}

uint64_t sub_8630C()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v1 = *(v0 + 16);
  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  sub_386D8(v3, 0x20080uLL, 0xD0000000000000B7, 0x80000000001864D0, 0xD000000000000016, 0x8000000000183640, 23, 0xD000000000000015, 0x8000000000183660);
  v4 = [objc_opt_self() successWithResolvedCarSignalOptions:{objc_msgSend(v1, "signals")}];
  sub_30AEC();

  return v5();
}

uint64_t SEActivateSignalIntentHandler.confirm(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_86460()
{
  if ([*(v0 + 16) signals] == &dword_0 + 2)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v1 = sub_16A584();
    sub_9DA0(v1, qword_1E65C0);
    v2 = sub_16A9A4();
    sub_386D8(v2, 0x20080uLL, 0xD0000000000000B7, 0x80000000001864D0, 0xD000000000000010, 0x8000000000186020, 29, 0xD00000000000002CLL, 0x8000000000186590);
    [objc_allocWithZone(INActivateCarSignalIntentResponse) initWithCode:4 userActivity:0];
    sub_30AEC();

    return v3();
  }

  else
  {
    *(v0 + 32) = [*(v0 + 16) carName];
    v5 = sub_37484();
    *(v0 + 40) = v5;
    *v5 = v0;
    v6 = sub_615AC(v5);

    return v7(v6, 0, 0);
  }
}

uint64_t sub_86628()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_D254();
  *v4 = v3;
  *(v6 + 56) = v5;
  *(v6 + 48) = v7;

  return _swift_task_switch(sub_86738);
}

uint64_t sub_867F4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SEActivateSignalIntentHandler.confirm(intent:)(v6);
}

uint64_t SEActivateSignalIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_D2B0();
}

uint64_t sub_868CC()
{
  sub_1696C();
  v1 = [*(v0 + 40) carName];
  *(v0 + 56) = v1;
  v2 = sub_37484();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_8698C;

  return v4(1, v1, 0);
}

uint64_t sub_8698C()
{
  sub_D2DC();
  sub_D358();
  *(v2 + 32) = v1;
  *(v2 + 24) = v3;
  *(v2 + 16) = v0;
  v4 = *(v2 + 56);
  v5 = *v0;
  sub_D254();
  *v6 = v5;
  *(v8 + 72) = v7;

  return _swift_task_switch(sub_86AA4);
}

uint64_t sub_86B60(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SEActivateSignalIntentHandler.handle(intent:)(v6);
}

id SEActivateSignalIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SEActivateSignalIntentHandler();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_86CD0()
{
  sub_1696C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_120FC(v1);

  return v3(v2);
}

uint64_t sub_86D68()
{
  sub_1696C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_120FC(v1);

  return v3(v2);
}

uint64_t sub_86E00()
{
  sub_1696C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_120FC(v1);

  return v3(v2);
}

uint64_t sub_86EA0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_86EC4);
}

uint64_t sub_86EC4()
{
  sub_D2DC();
  v0[5] = (*(v0[3] + 8))(v0[2]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_86F70;

  return sub_E0B3C();
}

uint64_t sub_86F70()
{
  sub_1696C();
  v3 = v2;
  v4 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_870C4);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(v3);
  }
}

uint64_t sub_870C4()
{
  sub_D2DC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_8713C()
{
  v0 = sub_16A164();
  __chkstk_darwin(v0 - 8);
  type metadata accessor for CarCommandsCATsSimple(0);
  sub_16A154();
  return sub_16A0F4();
}

uint64_t sub_871C0()
{
  sub_1696C();
  sub_879D0();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_879BC(v1);

  return sub_86EA0(v3, v4);
}

uint64_t sub_87250()
{
  sub_D2DC();
  sub_87998(&qword_179C90);
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v10 = sub_879AC(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_872D4()
{
  sub_D2DC();
  sub_87998(&qword_179C98);
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v10 = sub_879AC(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_8735C()
{
  sub_D2DC();
  sub_87998(&qword_179CB8);
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v10 = sub_879AC(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_873E0()
{
  sub_D2DC();
  sub_87998(qword_179CC0);
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = sub_31500(v2);
  *v3 = v4;
  v3[1] = sub_87994;

  return v6(v1);
}

uint64_t sub_87474()
{
  sub_D2DC();
  sub_87998(&qword_179CB0);
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v10 = sub_879AC(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_874F8()
{
  sub_D2DC();
  v3 = v2;
  v7 = *v1;

  v5 = *(v7 + 8);
  if (!v0)
  {
    v4 = v3;
  }

  return v5(v4);
}

uint64_t sub_875F4()
{
  sub_D2DC();
  sub_87998(&qword_179C88);
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v10 = sub_879AC(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_87678()
{
  sub_D2DC();
  sub_87998(&qword_179CA8);
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v10 = sub_879AC(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_876FC()
{
  sub_D2DC();
  sub_87998(&qword_179C20);
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v10 = sub_879AC(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_87780()
{
  sub_D2DC();
  sub_87998(&qword_179CA0);
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v10 = sub_879AC(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_87804()
{
  sub_D2DC();
  sub_87998(&qword_179C70);
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v10 = sub_879AC(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_87888()
{
  sub_D2DC();
  sub_87998(&qword_179C78);
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v10 = sub_879AC(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_8790C()
{
  sub_D2DC();
  sub_87998(&qword_179C80);
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v10 = sub_879AC(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

__n128 sub_879DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_879F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_87A30(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_87A8C()
{
  *(v1 + 128) = v0;
  sub_10B4C();
  return _swift_task_switch(v2);
}

uint64_t sub_87AB8()
{
  sub_D2DC();
  sub_D084((*(v0 + 128) + 8), *(*(v0 + 128) + 32));
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_87B60;

  return sub_13AB58(v0 + 16, 5);
}

uint64_t sub_87B60()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v3 + 152) = v8;
    *v8 = v5;
    v8[1] = sub_87CBC;

    return sub_882B0();
  }
}

uint64_t sub_87CBC()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[7] = v1;
  v2[8] = v4;
  v2[9] = v0;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 160) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_87DC0()
{
  v1 = v0[18];
  sub_890A0();
  sub_890C4(v2, v3, v4, v5, v6, v7, v8, v9, v16, v17, v18, v19, v20);
  v22._countAndFlagsBits = 0xD000000000000019;
  v22._object = 0x8000000000186790;
  sub_16A744(v22);
  v0[15] = v1;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v10 = sub_16A584();
  sub_9DA0(v10, qword_1E65C0);
  v11 = sub_16A9A4();
  sub_89068(v11);

  sub_89054(&qword_172F80);
  v12 = swift_task_alloc();
  v0[22] = v12;
  *v12 = v0;
  v13 = sub_89024(v12);

  return v14(v13);
}

uint64_t sub_87F24()
{
  sub_D2DC();
  sub_D13C((v0 + 16));
  sub_30AEC();

  return v1();
}

uint64_t sub_87F84()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[10] = v1;
  v2[11] = v4;
  v2[12] = v0;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 184) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_88088()
{
  sub_D2DC();

  sub_30AEC();

  return v0();
}

uint64_t sub_880E8()
{
  sub_D13C(v0 + 2);
  v1 = v0[20];
  sub_890A0();
  sub_890C4(v2, v3, v4, v5, v6, v7, v8, v9, v16, v17, v18, v19, v20);
  v22._countAndFlagsBits = 0xD000000000000019;
  v22._object = 0x8000000000186790;
  sub_16A744(v22);
  v0[15] = v1;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v10 = sub_16A584();
  sub_9DA0(v10, qword_1E65C0);
  v11 = sub_16A9A4();
  sub_89068(v11);

  sub_89054(&qword_172F80);
  v12 = swift_task_alloc();
  v0[22] = v12;
  *v12 = v0;
  v13 = sub_89024(v12);

  return v14(v13);
}

uint64_t sub_88254()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_882B0()
{
  sub_D2DC();
  v1[15] = v2;
  v1[16] = v0;
  sub_16A164();
  v1[17] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_88338()
{
  v1 = *(v0 + 120);
  v2 = v1[3];
  v3 = v1[4];
  sub_D084(v1, v2);
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_88464;

  return v6(v0 + 56, v2, v3);
}

uint64_t sub_88464()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 152) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_88560()
{
  if (*(v0 + 80))
  {
    sub_D124((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    sub_D084((v0 + 16), v1);
    v11 = (*(v2 + 8) + **(v2 + 8));
    v3 = swift_task_alloc();
    *(v0 + 160) = v3;
    *v3 = v0;
    v3[1] = sub_887C4;

    return v11(v1, v2);
  }

  else
  {
    sub_88FBC(v0 + 56);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v5 = *(v0 + 128);
    v6 = sub_16A584();
    sub_9DA0(v6, qword_1E65C0);
    v7 = sub_16A9A4();
    sub_386D8(v7, 0x10000000uLL, 0xD00000000000007DLL, 0x8000000000186710, 0xD00000000000001CLL, 0x80000000001867B0, 30, 0xD000000000000022, 0x80000000001867D0);
    sub_89054(&qword_179C10);
    v8 = *v5;
    v9 = swift_task_alloc();
    *(v0 + 208) = v9;
    *v9 = v0;
    v9[1] = sub_88C60;

    return v10(v8);
  }
}

uint64_t sub_887C4(uint64_t a1)
{
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v7 = *v2;
  sub_D254();
  *v8 = v7;
  *(v5 + 168) = v1;

  if (!v1)
  {
    *(v5 + 176) = a1;
  }

  sub_10B4C();

  return _swift_task_switch(v9);
}

uint64_t sub_888D8()
{
  v1 = v0;
  v2 = *(v0 + 176);
  v12 = sub_E65F4(0, v2);
  v3 = sub_E65F4(1u, v2);
  v4 = sub_E65F4(2u, v2);
  v5 = sub_E65F4(3u, v2);
  v6 = sub_15B2C(v2) == 1;
  v7 = sub_15B2C(v2) == 2;
  v8 = sub_15B2C(v2) == 3;
  v9 = *(v2 + 16);

  type metadata accessor for CarCommandsGetDoorLockStatusCATsSimple(0);
  sub_16A154();
  *(v0 + 184) = sub_16A0F4();
  v10 = swift_task_alloc();
  *(v1 + 192) = v10;
  *v10 = v1;
  v10[1] = sub_88A7C;

  return sub_DB30C(v12, v3, v4, v5, v6, v7, v8, COERCE__INT64(v9));
}

uint64_t sub_88A7C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v3[12] = v1;
  v3[13] = v5;
  v3[14] = v0;
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  v3[25] = v0;

  if (!v0)
  {
  }

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_88B88()
{
  sub_D2DC();
  sub_D13C((v0 + 16));
  v1 = *(v0 + 104);

  sub_30AEC();

  return v2(v1);
}

uint64_t sub_88BF4()
{
  sub_D2DC();

  sub_D13C((v0 + 16));

  sub_D37C();

  return v1();
}

uint64_t sub_88C60(uint64_t a1)
{
  v4 = *v2;
  sub_D254();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_88D84()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_88DE0()
{
  sub_D2DC();
  sub_D13C((v0 + 16));

  sub_D37C();

  return v1();
}

uint64_t sub_88E44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_88ED0;

  return sub_87A8C();
}

uint64_t sub_88ED0()
{
  sub_D2DC();
  v3 = v2;
  sub_D358();
  v4 = *v1;
  sub_D254();
  *v5 = v4;

  sub_30AEC();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_88FBC(uint64_t a1)
{
  v2 = sub_5758(&qword_1E90C0, &qword_172870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_89068(os_log_type_t a1)
{

  sub_386D8(a1, 0x10000000uLL, v3 + 107, v5 | 0x8000000000000000, 0xD000000000000012, (v4 | 0x8000000000000000), 23, v2, v1);
}

void sub_890A0()
{
  *(v1 + 168) = v0;

  sub_16ACF4(27);
}

unint64_t sub_890D8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D2968;
  v6._object = a2;
  v4 = sub_16ADE4(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_89124(char a1)
{
  result = 1852399981;
  switch(a1)
  {
    case 1:
      result = 0x697461676976616ELL;
      break;
    case 2:
      result = 1769105779;
      break;
    case 3:
      result = 0x656E6F6870;
      break;
    case 4:
      result = 0x7265676E6972;
      break;
    case 5:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_891F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_890D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_89228@<X0>(uint64_t *a1@<X8>)
{
  result = sub_89124(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for VolumeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VolumeType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x893A8);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_893E4()
{
  result = qword_1E90C8;
  if (!qword_1E90C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E90C8);
  }

  return result;
}

uint64_t sub_89438()
{
  v1 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (!v1)
  {
    return 28;
  }

  v2 = v0;

  v3 = sub_1023F8();
  v4 = sub_102188();
  switch(v3)
  {
    case 0:
      if (!v4)
      {
        if (sub_1045B0(v4))
        {
          goto LABEL_74;
        }

        goto LABEL_182;
      }

      if (v4 != 1)
      {
        goto LABEL_182;
      }

      if (sub_1005E4(v4))
      {
        goto LABEL_65;
      }

      if (sub_1039E8())
      {
        goto LABEL_95;
      }

      v26 = sub_104604();
      if (v26 & 1) != 0 || (sub_1045B0(v26))
      {
        goto LABEL_74;
      }

      if (sub_10468C())
      {
        goto LABEL_114;
      }

      v27 = sub_104B2C();
      sub_93E98(v27);
      sub_614D8();

      if (v0)
      {
        v28 = sub_102714();
        if (v28)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_141;
    case 1:
      sub_93ED0();
      if (!v10)
      {
        goto LABEL_182;
      }

      v29 = sub_103570();
      if (sub_82B98(v29, v30, v31) == 0x61635F7075746573 && v32 == 0xED000079616C7072)
      {

        return 25;
      }

      sub_16AE54();
      sub_93EF4();
      v54 = sub_1046F0();
      if (v54)
      {
LABEL_38:

        return 15;
      }

      v55 = sub_1005E4(v54);
      if (v55)
      {
        goto LABEL_76;
      }

      if (sub_100678(v55))
      {
        goto LABEL_99;
      }

      if (sub_10454C() & 1) != 0 || (sub_10468C())
      {
        sub_82B98(*(v1 + 121), v56, v57);
        sub_93F64();
        if (v10 && v58 == 0xE600000000000000)
        {
        }

        else
        {
          sub_375CC();
          v63 = sub_93E2C(v60, v61, v62);

          if ((v63 & 1) == 0)
          {

            return 2;
          }
        }
      }

      if (sub_10468C())
      {
        sub_82B98(*(v1 + 121), v82, v83);
        sub_93F64();
        if (v10 && v84 == 0xE600000000000000)
        {
        }

        else
        {
          sub_375CC();
          sub_93E2C(v86, v87, v88);
          sub_93EF4();
LABEL_90:
        }

        return 4;
      }

      else
      {
        v89 = sub_104B2C();
        sub_93E98(v89);
        sub_93EF4();
        sub_82B98(*(v1 + 121), v90, v91);
        sub_93F64();
        if (v10 && v92 == 0xE800000000000000)
        {
        }

        else
        {
          sub_375CC();
          sub_93FA0(v94, v95, v96);
          sub_93EF4();
        }

        return 5;
      }

    case 2:
    case 6:
      sub_93ED0();
      if (!v10)
      {
        goto LABEL_182;
      }

      if (sub_1046F0())
      {
        goto LABEL_38;
      }

      sub_104B2C();
      sub_93FD0();
      sub_614D8();

      if (v0)
      {
        goto LABEL_31;
      }

      v6 = sub_103A44();
      sub_82168(v6, v7, v8);
      sub_93B6C();
      v10 = v10 && v9 == 0xE800000000000000;
      if (v10)
      {
        goto LABEL_167;
      }

      sub_93BC4();
      sub_93FA0(v11, v12, v13);
      sub_614D8();

      if (v0)
      {
        goto LABEL_31;
      }

      sub_106D20();
      sub_93BE0();
      if (!v10)
      {
        goto LABEL_6;
      }

      sub_93E8C();
      sub_82168(*(v1 + 126), v14, v15);
      v17 = v16;
      sub_93AEC();
      if (v10 && v21 == v19)
      {

        return 11;
      }

      sub_93BF8(v18, v17, v20, v21);
      sub_614D8();

      if ((v2 & 1) == 0 && !sub_100794(v23))
      {
        goto LABEL_126;
      }

      goto LABEL_6;
    case 3:
    case 7:
    case 14:
      sub_93ED0();
      if (v10)
      {
        sub_106D20();
        sub_93BE0();
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_182;
    case 4:
      sub_93ED0();
      if (!v10)
      {
        goto LABEL_182;
      }

      v24 = sub_1046F0();
      if (v24)
      {
        goto LABEL_38;
      }

      if (sub_100678(v24))
      {
        goto LABEL_99;
      }

      if (sub_10468C())
      {
        goto LABEL_90;
      }

      if (sub_10454C())
      {
        goto LABEL_122;
      }

      v66 = sub_104B2C();
      sub_96E4(23, v66);
      sub_614D8();

      if (v2)
      {

        return 14;
      }

      sub_93EDC();
      sub_96E4(22, v66);
      sub_614D8();

      v71 = sub_1051FC();
      if (v71)
      {
        goto LABEL_116;
      }

      if (sub_10549C(v71))
      {
        goto LABEL_122;
      }

      sub_93EDC();
      sub_93FD0();
      sub_614D8();

      if (v2)
      {
        goto LABEL_31;
      }

      v72 = sub_103A44();
      sub_82168(v72, v73, v74);
      sub_93B6C();
      if (v10 && v75 == 0xE800000000000000)
      {
LABEL_167:

        return 22;
      }

      sub_93BC4();
      sub_93FA0(v77, v78, v79);
      sub_614D8();

      if (v2)
      {
LABEL_31:

        return 22;
      }

      sub_93EDC();
      sub_93FD0();
      sub_614D8();

      v81 = v1;
      if (sub_100794(v80) && (v81 = v1, sub_106D20(), sub_93BE0(), v10) || (sub_93EDC(), sub_96E4(6, v81), sub_614D8(), , (v2 & 1) != 0))
      {
LABEL_131:

        return 9;
      }

LABEL_138:
      if (sub_105174())
      {

        return 12;
      }

      if (sub_107140())
      {

        return 20;
      }

      v97 = sub_1043C0();
      if (!v97)
      {

        return 19;
      }

      if (v97 == 1)
      {
        sub_93F2C();
        v98 = 0xE600000000000000;
      }

      else
      {
        v98 = 0xE700000000000000;
        sub_93B08();
      }

      sub_93C44();
      sub_93FE8(v99, v98, v100);
      sub_614D8();

      if (v2)
      {

        return 19;
      }

LABEL_182:
      v101 = sub_8B2B8();

      if (v101)
      {
        return 27;
      }

      else
      {
        return 28;
      }

    case 9:
      if (v4 != 3 || (sub_104BF4() & 1) == 0)
      {
        goto LABEL_182;
      }

      return 25;
    case 10:
      if (v4 != 2)
      {
        goto LABEL_182;
      }

      if (sub_106B74() & 1) != 0 || (sub_106B94())
      {
        goto LABEL_70;
      }

      sub_106080();

      return 23;
    case 12:
      v25 = v4;
      goto LABEL_67;
    case 13:
      sub_93ED0();
      if (!v10)
      {
LABEL_67:
        if (v25 == 2 && ((sub_106B74() & 1) != 0 || (sub_106B94() & 1) != 0))
        {
LABEL_70:

          return 8;
        }

        goto LABEL_182;
      }

      v35 = sub_1005E4(v34);
      if (v35)
      {
LABEL_76:

        return 1;
      }

      if (sub_100678(v35))
      {
LABEL_99:

        return 7;
      }

      v65 = sub_1051FC();
      if (v65)
      {
LABEL_116:

        return 17;
      }

      v67 = sub_10549C(v65);
      if (v67)
      {
LABEL_122:

        return 27;
      }

      if (sub_100794(v67))
      {
        sub_106D20();
        sub_93BE0();
        if (v10)
        {
          goto LABEL_131;
        }
      }

      sub_106D20();
      sub_93BE0();
      if (!v10)
      {
        sub_106D20();
        if ((v68 & 0xFF0000) == 0x20000 || (v68 & 0xFF0000) == 0x30000)
        {
          goto LABEL_6;
        }
      }

      sub_106D20();
      sub_93BE0();
      if (!v10)
      {
        sub_106D20();
        if ((v69 & 0xFE0000) != 0x20000)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_138;
    case 15:
      sub_93ED0();
      if (!v10)
      {
        goto LABEL_182;
      }

      sub_104B2C();
      sub_93FD0();
      sub_614D8();

      if (v0)
      {
        goto LABEL_31;
      }

      v36 = sub_103A44();
      sub_82168(v36, v37, v38);
      sub_93B6C();
      if (v10 && v39 == 0xE800000000000000)
      {
        goto LABEL_167;
      }

      sub_93BC4();
      sub_93FA0(v41, v42, v43);
      sub_614D8();

      if (v0)
      {
        goto LABEL_31;
      }

      sub_93E8C();
      sub_82168(*(v1 + 126), v44, v45);
      v47 = v46;
      sub_93AEC();
      if (v10 && v51 == v49)
      {
      }

      else
      {
        sub_93BF8(v48, v47, v50, v51);
        sub_614D8();

        if ((v2 & 1) == 0)
        {
          goto LABEL_126;
        }
      }

      sub_106D20();
      sub_93BE0();
      if (!v10)
      {
LABEL_6:

        return 11;
      }

LABEL_126:
      sub_100914();
      sub_93C14();
      if (v10)
      {
        goto LABEL_182;
      }

      return 18;
    case 16:
    case 17:

      return 24;
    case 18:
      if (v4)
      {
        if (v4 != 1)
        {
          goto LABEL_182;
        }

        if (sub_1005E4(v4))
        {
LABEL_65:

          return 0;
        }

        if (sub_1039E8())
        {
LABEL_95:

          return 3;
        }

        v64 = sub_104604();
        if ((v64 & 1) == 0 && (sub_1045B0(v64) & 1) == 0)
        {
          if (sub_10468C())
          {
LABEL_114:

            return 6;
          }

          v70 = sub_104B2C();
          sub_93E98(v70);
          sub_614D8();

          if ((v0 & 1) == 0)
          {
LABEL_141:
            if (sub_100794(v28))
            {

              return 10;
            }

            goto LABEL_182;
          }

          goto LABEL_97;
        }
      }

      else if ((sub_1045B0(v4) & 1) == 0)
      {
        v53 = sub_104B2C();
        sub_93E98(v53);
        sub_614D8();

        if ((v0 & 1) == 0)
        {
          goto LABEL_182;
        }

LABEL_97:

        return 13;
      }

LABEL_74:

      return 16;
    default:
      goto LABEL_182;
  }
}

uint64_t sub_8A160(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_16A774();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_8A1C0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    sub_4EB50();
    (*(v7 + 16))(a3, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return sub_5370(a3, v8, 1, v6);
}

uint64_t sub_8A268(uint64_t a1)
{
  v2 = sub_9376C(a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_937CC(a1);
  v9 = v8;
  v11 = v10;
  v12 = sub_93A2C(v2, v4, v6 & 1, v7, v8, v10 & 1);
  sub_93A60(v7, v9, v11 & 1);
  v13 = sub_93F3C();
  if (v12)
  {
    sub_93A60(v13, v14, v15);
    return 0;
  }

  else
  {
    sub_93820(v13, v14, v15, a1);
    v16 = v17;
    v18 = sub_93F3C();
    sub_93A60(v18, v19, v20);
  }

  return v16;
}

double sub_8A324@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_6765C(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_8A460(unint64_t a1, uint64_t a2)
{
  v5 = sub_5758(&qword_1E9190, &qword_172AE0);
  __chkstk_darwin(v5 - 8);
  sub_10B64();
  v98 = v6;
  sub_6CF04();
  __chkstk_darwin(v7);
  v102 = v97 - v8;
  sub_6CF04();
  __chkstk_darwin(v9);
  v101 = v97 - v10;
  v11 = sub_169474();
  sub_9F48();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_10B64();
  v99 = v15;
  sub_6CF04();
  __chkstk_darwin(v16);
  v100 = v97 - v17;
  sub_6CF04();
  v19 = __chkstk_darwin(v18);
  v21 = v97 - v20;
  __chkstk_darwin(v19);
  v23 = v97 - v22;
  v24 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_parse;
  v25 = sub_169414();
  v104 = *(v25 - 8);
  v105 = v25;
  (*(v104 + 16))(v2 + v24, a1);
  v26 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_unitProvider;
  v103 = v2;
  v106 = a2;
  sub_8F558(a2, v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_unitProvider);
  v27 = a1;
  sub_169404();
  v28 = sub_14BFB0();
  v29 = *(v13 + 8);
  v30 = v11;
  v31 = v11;
  v32 = v28;
  v29(v23, v31);
  v107 = v27;
  if (v32)
  {
    type metadata accessor for CarCommandsNlv4Task(0);
    swift_allocObject();

    v34 = sub_1071D8(v33);
    v35 = v103;
    *(v103 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task) = v34;
    v109 = 0;
    v110 = 0xE000000000000000;
    sub_16ACF4(53);
    v111._countAndFlagsBits = 0xD000000000000033;
    v111._object = 0x80000000001869B0;
    sub_16A744(v111);
    v108 = *(v35 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);

    sub_5758(&qword_1E9198, &qword_172AE8);
    v112._countAndFlagsBits = sub_16A694();
    sub_16A744(v112);

    v36 = v109;
    v37 = v110;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v38 = sub_16A584();
    sub_9DA0(v38, qword_1E65C0);
    sub_16A9A4();
    sub_93BD0();
    sub_386D8(v39, v40, v41, v42, v43, v44, 27, v36, v37);

LABEL_26:
    sub_3D344(v106);
    (*(v104 + 8))(v107, v105);
    return v35;
  }

  v97[1] = v26;
  v97[2] = v24;
  sub_169404();
  v45 = sub_169464();
  v29(v21, v30);
  sub_93A98();
  v46 = v101;
  sub_8A1C0(v45, v47, v101);

  v48 = sub_169504();
  sub_941EC(v46);
  v35 = v30;
  if (v49)
  {
    sub_8F5BC(v46);
    v50 = v102;
    v51 = v100;
  }

  else
  {
    sub_1694B4();
    sub_93C30();
    (*(v52 + 8))(v46, v48);
    v50 = v102;
    v51 = v100;
    if (v45)
    {
      v35 = v103;
      *(v103 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task) = 0;
      sub_93C20();
      if (qword_1E58E8 != -1)
      {
        sub_9ED4(&qword_1E58E8);
      }

      v53 = sub_16A584();
      sub_9DA0(v53, qword_1E65C0);
      sub_16A9A4();
      sub_940B4();
      sub_93BD0();
      sub_386D8(v54, v55, v56, v57, v58, v59, 30, v60, v27);
      goto LABEL_26;
    }
  }

  v61 = v51;
  sub_169404();
  v62 = sub_169464();
  v29(v61, v35);
  sub_93A98();
  sub_8A1C0(v62, v63, v50);

  sub_941EC(v50);
  if (v49)
  {
    sub_8F5BC(v50);
    v64 = v99;
  }

  else
  {
    sub_1694C4();
    sub_93C30();
    (*(v65 + 8))(v50, v48);
    v64 = v99;
    if (v62)
    {
      v35 = v103;
      *(v103 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task) = 0;
      sub_93C20();
      if (qword_1E58E8 != -1)
      {
        sub_9ED4(&qword_1E58E8);
      }

      v66 = sub_16A584();
      sub_9DA0(v66, qword_1E65C0);
      sub_16A9A4();
      sub_940B4();
      sub_93BD0();
      sub_386D8(v67, v68, v69, v70, v71, v72, 33, v73, v27);
      goto LABEL_26;
    }
  }

  sub_169404();
  v74 = sub_169464();
  v29(v64, v35);
  sub_93A98();
  v75 = v98;
  sub_8A1C0(v74, v76, v98);

  sub_941EC(v75);
  if (v49)
  {
    sub_8F5BC(v75);
    sub_940F4();
  }

  else
  {
    sub_1694D4();
    sub_93C30();
    (*(v77 + 8))(v75, v48);
    sub_940F4();
    if (v74)
    {
      *(v35 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task) = 0;
      sub_93C20();
      if (qword_1E58E8 != -1)
      {
        sub_9ED4(&qword_1E58E8);
      }

      v78 = sub_16A584();
      sub_9DA0(v78, qword_1E65C0);
      sub_16A9A4();
      sub_940B4();
      sub_93BD0();
      sub_386D8(v79, v80, v81, v82, v83, v84, 36, v85, v27);
      goto LABEL_26;
    }
  }

  sub_93C20();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v87 = sub_16A584();
  sub_9DA0(v87, qword_1E65C0);
  sub_16A9A4();
  sub_940B4();
  sub_93BD0();
  sub_386D8(v88, v89, v90, v91, v92, v93, 38, v94, v27);
  sub_3D344(v106);
  v95 = v105;
  v96 = *(v104 + 8);
  v96(v107, v105);
  v96(&v64[v35], v95);
  sub_3D344(v35 + v48);
  type metadata accessor for CarCommandsNLv4Intent(0);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_8ACB0()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_parse;
  sub_169414();
  sub_4EB50();
  (*(v2 + 8))(v0 + v1);

  sub_3D344(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_unitProvider);
  return v0;
}

uint64_t sub_8AD2C()
{
  sub_8ACB0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for CarCommandsNLv4Intent(uint64_t a1)
{
  result = qword_1E90F8;
  if (!qword_1E90F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8ADD8(uint64_t a1)
{
  result = sub_169414();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LocalizedMeasurementUnitProvider(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_8AEAC(uint64_t (*a1)(void))
{
  v2 = sub_169474();
  sub_9F48();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_5758(&qword_1E9190, &qword_172AE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  sub_169404();
  v11 = sub_169464();
  (*(v4 + 8))(v7, v2);
  sub_93A98();
  sub_8A1C0(v11, v12, v10);

  v13 = sub_169504();
  if (sub_9E2C(v10, 1, v13) == 1)
  {
    sub_8F5BC(v10);
    v14 = 0;
  }

  else
  {
    v14 = a1();
    sub_4EB50();
    (*(v15 + 8))(v10, v13);
  }

  return v14 & 1;
}

uint64_t sub_8B05C@<X0>(uint64_t a1@<X8>)
{
  if (sub_93D08())
  {
    v2 = &enum case for ConfirmationResponse.confirmed(_:);
LABEL_6:
    v3 = *v2;
    v4 = sub_169004();
    sub_4EB50();
    (*(v5 + 104))(a1, v3, v4);
    v6 = a1;
    v7 = 0;
    v8 = 1;
    v9 = v4;
    goto LABEL_7;
  }

  if (sub_93CE4() & 1) != 0 || (sub_93CC0())
  {
    v2 = &enum case for ConfirmationResponse.rejected(_:);
    goto LABEL_6;
  }

  sub_169004();
  v6 = sub_94114();
LABEL_7:

  return sub_5370(v6, v7, v8, v9);
}

void sub_8B21C()
{
  if (*(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    sub_10349C();
    if (!v1)
    {
      sub_10340C();
    }
  }
}

unint64_t sub_8B260(uint64_t a1)
{
  if (!*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 0;
  }

  sub_100914();
  sub_93C14();
  v4 = v4 || v3 == 5;
  if (v4)
  {
    return 0;
  }

  else
  {
    return 0x403010200uLL >> (8 * v2);
  }
}

uint64_t sub_8B364(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (!v3)
  {
    if ((sub_93D08() & 1) == 0 && (sub_93CE4() & 1) == 0)
    {
      v5 = sub_93CC0();
      return v5 & 1;
    }

LABEL_16:
    v5 = 1;
    return v5 & 1;
  }

  sub_93AFC();

  if ((sub_8B66C(v4) & 1) == 0 && (sub_8B7E4(v3) & 1) == 0 && (sub_8B8D8(v3, (v2 & 1) == 0) & 1) == 0)
  {
    if (sub_102440())
    {
      goto LABEL_15;
    }

    if (sub_105294() != 2)
    {
      goto LABEL_15;
    }

    if (sub_1033A0())
    {
      goto LABEL_15;
    }

    if (sub_1051FC())
    {
      goto LABEL_15;
    }

    v6 = sub_104754();
    if (v6 & 1) != 0 || (sub_10549C(v6))
    {
      goto LABEL_15;
    }

    sub_93E8C();
    v8 = sub_102188();
    sub_81288(v8);
    v10 = v9;
    sub_93AEC();
    v15 = v15 && v14 == v12;
    if (!v15)
    {
      sub_93BF8(v11, v10, v13, v14);
      sub_614D8();

      if (v2)
      {
LABEL_15:

        goto LABEL_16;
      }

      sub_81288(*(v3 + 56));
      if (v17 != 0x415F6E6F6D6D6F63 || v16 != 0xEA00000000007070)
      {
        sub_16AE54();
        sub_614D8();
      }

      v19 = sub_1023F8();
      sub_8139C(v19);
      if (v20 != 1852141679 || v21 != 0xE400000000000000)
      {
        sub_941D4(v20, v21, 1852141679);
        sub_614D8();

        goto LABEL_15;
      }
    }

    goto LABEL_16;
  }

  v5 = 0;
  return v5 & 1;
}

uint64_t sub_8B66C(uint64_t a1)
{
  v2 = sub_89438();
  if (CarCommandsUseCase.rawValue.getter(v2) == 0x6F69646152746573 && v3 == 0xEF6E6F6974617453)
  {
  }

  else
  {
    v5 = sub_16AE54();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_8BBC8(a1) & 1) == 0 || (sub_106B74() & 1) != 0 || (sub_106B94())
  {
    return 0;
  }

  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v7 = sub_16A584();
  sub_9DA0(v7, qword_1E65C0);
  v8 = sub_16A9A4();
  sub_386D8(v8, 0x800uLL, 0xD000000000000077, 0x8000000000186850, 0xD000000000000026, 0x8000000000186B90, 316, 0xD000000000000052, 0x8000000000186BC0);
  return 1;
}

uint64_t sub_8B7E4(uint64_t a1)
{
  if ((sub_8BBC8(a1) & 1) == 0 || (sub_103514() & 1) == 0)
  {
    return 0;
  }

  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v1 = sub_16A584();
  sub_9DA0(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  sub_386D8(v2, 0x800uLL, 0xD000000000000077, 0x8000000000186850, 0xD00000000000001BLL, 0x8000000000186B30, 329, 0xD00000000000003ALL, 0x8000000000186B50);
  return 1;
}

uint64_t sub_8BBC8(uint64_t a1)
{
  v1 = sub_1023F8();
  v2 = sub_102188();
  if (v1 == 13 || v1 == 12)
  {
    if (v2 != 2)
    {
      return 0;
    }
  }

  else if (v1 != 10 || v2 != 2)
  {
    return 0;
  }

  return 1;
}

void sub_8BC30(uint64_t a1)
{
  v2 = sub_106C38();
  if (v2 != 5)
  {
    v5 = v2;
    v6 = sub_1023F8();
    sub_8BE90(v6, v5);
    return;
  }

  v3 = sub_106C8C();
  if (!v3)
  {
    v7 = sub_106C18();
    if (v7)
    {
      v8 = v7;
      v9 = sub_1023F8();
      sub_8C0B0(v9, [v8 integerValue]);

      return;
    }

    v11 = sub_1023F8();
    sub_8139C(v11);
    v14 = v13;
    v15 = v12 == 0x6573616572636E69 && v13 == 0xEA00000000007942;
    if (v15)
    {

      return;
    }

    v16 = sub_93B78(v12, v13, 0x6573616572636E69);

    if (v16)
    {
      return;
    }

    sub_8139C(*(a1 + 81));
    sub_93D50();
    if (!v15 || v17 != 0xEA00000000007942)
    {
      sub_93D80();
      sub_93B78(v19, v20, v21);
      sub_48350();
      sub_93C7C();
      sub_8139C(*(a1 + 81));
      sub_93BEC();
      if (v15 && v23 == 0xE600000000000000)
      {

        return;
      }

      sub_93DA8(v22, 0x6573616572636564);
      sub_93AFC();

      if (v14)
      {
        return;
      }

      sub_93C58();
      sub_93BEC();
      if (!v15 || v25 != 0xE700000000000000)
      {
        sub_93DF0();
        sub_93F70(v27, v28, v29);

        return;
      }
    }

    return;
  }

  v4 = v3;
  if (sub_1023F8() - 2 < 2)
  {
    v10 = [v4 integerValue];

    if (__OFSUB__(0, v10))
    {
      __break(1u);
    }
  }

  else
  {
    [v4 integerValue];
  }
}

uint64_t sub_8BE90(char a1, char a2)
{
  sub_93AD0();
  sub_8139C(v8);
  sub_93B6C();
  v10 = v10 && v9 == v4;
  if (v10)
  {

    goto LABEL_20;
  }

  sub_93BC4();
  sub_93D8C(v11, v12, v13);
  sub_93E14();
  if (v3)
  {
LABEL_20:
    v38 = a2;
    v39 = &unk_172B18;
    return v39[v38];
  }

  sub_93E44();
  if (v14 == v2 + 2309 && v15 == v5)
  {

    goto LABEL_23;
  }

  sub_93B78(v14, v15, v2 + 2309);
  sub_93F88();
  if (v4)
  {
LABEL_23:
    v38 = a2;
    v39 = &unk_172B40;
    return v39[v38];
  }

  sub_8139C(a1);
  if (v17 == v2 && v18 == v5)
  {

    goto LABEL_25;
  }

  v20 = sub_93B78(v17, v18, v2);

  if (v20)
  {
LABEL_25:
    v38 = a2;
    v39 = &unk_172B68;
    return v39[v38];
  }

  sub_941B4();
  v50._countAndFlagsBits = 0xD000000000000017;
  v50._object = 0x8000000000186CB0;
  sub_16A744(v50);
  sub_94174(v21, v22, &unk_1D5C10, v23, v24, v25, v26, v27, v40, *v42, *&v42[4], v42[6], a1, v46);
  v51._countAndFlagsBits = 32;
  v51._object = 0xE100000000000000;
  sub_16A744(v51);
  sub_94174(v28, v29, &unk_1D54C0, v30, v31, v32, v33, v34, v41, v43, v44, v45, a2, v47);
  sub_94038(" into a fan intensity");
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v35 = sub_16A584();
  sub_9DA0(v35, qword_1E65C0);
  v36 = sub_16A9A4();
  sub_386D8(v36, 0x100000000uLL, 0xD000000000000077, 0x8000000000186850, 0xD000000000000032, 0x8000000000186C70, 504, v48, v49);

  return 0;
}

int64_t sub_8C0B0(char a1, int64_t a2)
{
  sub_93AD0();
  sub_8139C(v8);
  sub_93B6C();
  v10 = v10 && v9 == v4;
  if (v10)
  {

    return a2;
  }

  sub_93BC4();
  sub_93D8C(v11, v12, v13);
  sub_93E14();
  if ((v3 & 1) == 0)
  {
    sub_93E44();
    if (v14 == v2 + 2309 && v15 == v5)
    {

      return a2;
    }

    sub_93B78(v14, v15, v2 + 2309);
    sub_93F88();
    if ((v4 & 1) == 0)
    {
      sub_8139C(a1);
      v19 = v18;
      if (v17 == v2 && v18 == v5)
      {
      }

      else
      {
        v2 = sub_93B78(v17, v18, v2);

        if ((v2 & 1) == 0)
        {
          v19 = 0xD000000000000015;
          v4 = "NLv4Intent";
          v5 = " into a fan intensity";
          sub_941B4();
          v27._countAndFlagsBits = 0xD000000000000017;
          v27._object = 0x8000000000186CB0;
          sub_16A744(v27);
          sub_16AD84();
          v28._countAndFlagsBits = 32;
          v28._object = 0xE100000000000000;
          sub_16A744(v28);
          v29._countAndFlagsBits = sub_16AE24();
          sub_16A744(v29);

          sub_94038(" into a fan intensity");
          v2 = v25;
          a2 = v26;
          if (qword_1E58E8 == -1)
          {
LABEL_17:
            v21 = sub_16A584();
            sub_9DA0(v21, qword_1E65C0);
            v22 = sub_16A9A4();
            sub_386D8(v22, 0x100000000uLL, v19 + 98, v4 | 0x8000000000000000, v19 + 22, (v5 | 0x8000000000000000), 521, v2, a2);

            return 0;
          }

LABEL_25:
          sub_9ED4(&qword_1E58E8);
          goto LABEL_17;
        }
      }

      v23 = __OFSUB__(0, a2);
      a2 = -a2;
      if (!v23)
      {
        return a2;
      }

      __break(1u);
      goto LABEL_25;
    }
  }

  return a2;
}

uint64_t sub_8C360(uint64_t a1)
{
  if (!*(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 2;
  }

  sub_93C7C();

  v4 = sub_1023F8();
  sub_8139C(v4);
  sub_93BEC();
  v7 = v7 && v6 == 0xE600000000000000;
  if (v7)
  {
    goto LABEL_13;
  }

  sub_93DA8(v5, v1);
  sub_93AFC();

  if (v3)
  {
    goto LABEL_14;
  }

  sub_94080();
  sub_93BEC();
  if (v7 && v9 == 0xE300000000000000)
  {
LABEL_13:
  }

  else
  {
    sub_93BA0(v8);
    sub_93AFC();

    if ((v3 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

LABEL_14:
  sub_93A74();
  v11 = sub_102188();
  sub_81288(v11);
  sub_93B94();
  if (v7 && v13 == v1)
  {
  }

  else
  {
    sub_93AB0(v12);
    v15 = sub_93DFC();
    if ((v1 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if ((sub_1005E4(v15) & 1) == 0)
  {
LABEL_26:

    return 2;
  }

  v16 = sub_103570();
  if (v16)
  {
    v17 = 2 * (v16 != 4);
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

uint64_t sub_8C490()
{
  result = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (result)
  {

    v2 = sub_104B2C();
    v3 = v2;
    v4 = v2 + 56;
    v5 = 1 << v2[32];
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v2 + 7);
    v8 = (v5 + 63) >> 6;
    v81 = 0x800000000017E530;
    v9 = 0;
    v87 = (v2 + 56);
    v90 = v8;

    if (!v7)
    {
      while (1)
      {
LABEL_6:
        v17 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
          JUMPOUT(0x8CECCLL);
        }

        if (v17 >= v8)
        {
          break;
        }

        v7 = *&v4[8 * v17];
        ++v9;
        if (v7)
        {
          v9 = v17;
          goto LABEL_10;
        }
      }

      return 0;
    }

LABEL_10:
    while (1)
    {
      v18 = *(*(v3 + 6) + (__clz(__rbit64(v7)) | (v9 << 6)));
      sub_109B8C(&off_1D0FE8, v10, v11, v12, v13, v14, v15, v16, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156);
      v20 = v19;
      sub_109B8C(&off_1D0FC0, v21, v22, v23, v24, v25, v26, v27, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157);
      v29 = sub_8A35C(v28, v20);
      if (*(v29 + 16))
      {
        sub_16AF14();
        sub_81C68(v18, v30, v31);
        sub_16A6F4();

        sub_16AF54();
        sub_93DE4();
        v34 = v33 & ~v32;
        v99 = v35;
        if ((*(v35 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
        {
          break;
        }
      }

LABEL_107:
      v7 &= v7 - 1;

      v8 = v90;
      v3 = v93;
      v4 = v87;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v96 = ~v32;
    while (1)
    {
      v36 = 0xEE0072656E6F6974;
      v37 = 0x69646E6F43726961;
      switch(*(*(v29 + 48) + v34))
      {
        case 1:
          v37 = 0x756F756769626D61;
          v38 = 0x746867694C73;
          goto LABEL_38;
        case 2:
          v41 = 1768191329;
          goto LABEL_32;
        case 3:
          v37 = 0x756F536F69647561;
          v36 = 0xEB00000000656372;
          break;
        case 4:
          v36 = 0xE300000000000000;
          v37 = 7496035;
          break;
        case 5:
          v37 = 0x436574616D696C63;
          v38 = 0x6C6F72746E6FLL;
LABEL_38:
          v36 = v38 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 6:
          v36 = 0xE600000000000000;
          v37 = 0x656E69676E65;
          break;
        case 7:
          v36 = 0xE300000000000000;
          v37 = 7233894;
          break;
        case 8:
          v36 = 0xE500000000000000;
          v37 = sub_93F0C();
          break;
        case 9:
          v37 = 0x694C6472617A6168;
          v39 = 1937008743;
          goto LABEL_35;
        case 0xA:
          v43 = 1684104552;
          goto LABEL_53;
        case 0xB:
          v36 = 0xE400000000000000;
          v37 = 1685024616;
          break;
        case 0xC:
          v36 = 0xE400000000000000;
          v37 = 1852993384;
          break;
        case 0xD:
          v37 = 0x726F697265746E69;
          v42 = 0x746867694CLL;
          goto LABEL_41;
        case 0xE:
          v36 = 0xE600000000000000;
          v37 = 0x73746867696CLL;
          break;
        case 0xF:
          v36 = 0xE700000000000000;
          v37 = 0x73726F7272696DLL;
          break;
        case 0x10:
          v37 = 0x42676E696B726170;
          v39 = 1701536114;
          goto LABEL_35;
        case 0x11:
          v37 = 0x4C676E696B726170;
          v39 = 1952999273;
LABEL_35:
          v36 = v39 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 0x12:
          v37 = 0x6165537265776F70;
          goto LABEL_54;
        case 0x13:
          v36 = 0xE700000000000000;
          v37 = 0x656C69666F7270;
          break;
        case 0x14:
          v36 = 0xE400000000000000;
          v37 = sub_940C0();
          break;
        case 0x15:
          v36 = 0xE400000000000000;
          v37 = 1952540019;
          break;
        case 0x16:
          v37 = 0x6C6F6F4374616573;
          goto LABEL_51;
        case 0x17:
          v37 = 0x7461654874616573;
LABEL_51:
          v36 = 0xEA00000000007265;
          break;
        case 0x18:
          v36 = 0xE600000000000000;
          v37 = 0x6C616E676973;
          break;
        case 0x19:
          v37 = 0x676E697265657473;
          v40 = 1701144663;
          goto LABEL_33;
        case 0x1A:
          v37 = 0xD000000000000013;
          v36 = v81;
          break;
        case 0x1B:
          v36 = 0xE700000000000000;
          v37 = 0x666F6F726E7573;
          break;
        case 0x1C:
          v43 = 1818845556;
LABEL_53:
          v37 = v43 | 0x6867694C00000000;
LABEL_54:
          v36 = 0xE900000000000074;
          break;
        case 0x1D:
          v36 = 0xE500000000000000;
          v37 = 0x7365726974;
          break;
        case 0x1E:
          v36 = 0xE500000000000000;
          v37 = 0x6B6E757274;
          break;
        case 0x1F:
          v41 = 1769171318;
LABEL_32:
          v37 = v41 | 0x53656C6200000000;
          v40 = 1634625385;
LABEL_33:
          v42 = v40 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_41:
          v36 = v42 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 0x20:
          v37 = 0x6E6769536E727574;
          v36 = 0xEA00000000006C61;
          break;
        case 0x21:
          v36 = 0xE700000000000000;
          v37 = sub_93B08();
          break;
        case 0x22:
          v36 = 0xE600000000000000;
          v37 = 0x776F646E6977;
          break;
        case 0x23:
          v36 = 0xE600000000000000;
          v37 = 0x737265706977;
          break;
        default:
          break;
      }

      v44 = 0x69646E6F43726961;
      v45 = 0xEE0072656E6F6974;
      switch(v18)
      {
        case 1:
          v44 = 0x756F756769626D61;
          v46 = 0x746867694C73;
          goto LABEL_82;
        case 2:
          v49 = 1768191329;
          goto LABEL_76;
        case 3:
          v44 = 0x756F536F69647561;
          v45 = 0xEB00000000656372;
          break;
        case 4:
          v45 = 0xE300000000000000;
          v44 = 7496035;
          break;
        case 5:
          v44 = 0x436574616D696C63;
          v46 = 0x6C6F72746E6FLL;
LABEL_82:
          v45 = v46 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 6:
          v45 = 0xE600000000000000;
          v44 = 0x656E69676E65;
          break;
        case 7:
          v45 = 0xE300000000000000;
          v44 = 7233894;
          break;
        case 8:
          v45 = 0xE500000000000000;
          v44 = 0x746E6F7266;
          break;
        case 9:
          v44 = 0x694C6472617A6168;
          v47 = 1937008743;
          goto LABEL_79;
        case 10:
          v51 = 1684104552;
          goto LABEL_97;
        case 11:
          v45 = 0xE400000000000000;
          v44 = 1685024616;
          break;
        case 12:
          v45 = 0xE400000000000000;
          v44 = 1852993384;
          break;
        case 13:
          v44 = 0x726F697265746E69;
          v50 = 0x746867694CLL;
          goto LABEL_85;
        case 14:
          v45 = 0xE600000000000000;
          v44 = 0x73746867696CLL;
          break;
        case 15:
          v45 = 0xE700000000000000;
          v44 = 0x73726F7272696DLL;
          break;
        case 16:
          v44 = 0x42676E696B726170;
          v47 = 1701536114;
          goto LABEL_79;
        case 17:
          v44 = 0x4C676E696B726170;
          v47 = 1952999273;
LABEL_79:
          v45 = v47 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 18:
          v44 = 0x6165537265776F70;
          goto LABEL_98;
        case 19:
          v45 = 0xE700000000000000;
          v44 = 0x656C69666F7270;
          break;
        case 20:
          v45 = 0xE400000000000000;
          v44 = 1918985586;
          break;
        case 21:
          v45 = 0xE400000000000000;
          v44 = 1952540019;
          break;
        case 22:
          v44 = 0x6C6F6F4374616573;
          goto LABEL_95;
        case 23:
          v44 = 0x7461654874616573;
LABEL_95:
          v45 = 0xEA00000000007265;
          break;
        case 24:
          v45 = 0xE600000000000000;
          v44 = 0x6C616E676973;
          break;
        case 25:
          v44 = 0x676E697265657473;
          v48 = 1701144663;
          goto LABEL_77;
        case 26:
          v44 = 0xD000000000000013;
          v45 = v81;
          break;
        case 27:
          v45 = 0xE700000000000000;
          v44 = 0x666F6F726E7573;
          break;
        case 28:
          v51 = 1818845556;
LABEL_97:
          v44 = v51 | 0x6867694C00000000;
LABEL_98:
          v45 = 0xE900000000000074;
          break;
        case 29:
          v45 = 0xE500000000000000;
          v44 = 0x7365726974;
          break;
        case 30:
          v45 = 0xE500000000000000;
          v44 = 0x6B6E757274;
          break;
        case 31:
          v49 = 1769171318;
LABEL_76:
          v44 = v49 | 0x53656C6200000000;
          v48 = 1634625385;
LABEL_77:
          v50 = v48 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_85:
          v45 = v50 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 32:
          v44 = 0x6E6769536E727574;
          v45 = 0xEA00000000006C61;
          break;
        case 33:
          v45 = 0xE700000000000000;
          v44 = 0x6E776F6E6B6E75;
          break;
        case 34:
          v45 = 0xE600000000000000;
          v44 = 0x776F646E6977;
          break;
        case 35:
          v45 = 0xE600000000000000;
          v44 = 0x737265706977;
          break;
        default:
          break;
      }

      if (v37 == v44 && v36 == v45)
      {

        goto LABEL_112;
      }

      v53 = sub_16AE54();

      if (v53)
      {
        break;
      }

      v34 = (v34 + 1) & v96;
      if (((*(v99 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
      {
        goto LABEL_107;
      }
    }

LABEL_112:

    v54 = sub_1023F8();
    sub_8139C(v54);
    if (v55 != 0x656C62616E65 || v56 != 0xE600000000000000)
    {
      sub_93E2C(v55, v56, 0x656C62616E65);
      sub_9409C();
      sub_940CC();
      sub_8139C(*(v84 + 81));
      if (v58 != 0xEE0072656E6F6974 || v59 != 0xE700000000000000)
      {
        sub_93F70(v58, v59, 0xEE0072656E6F6974);
        sub_9409C();
LABEL_126:

        return 0;
      }
    }

    sub_93D2C();
    v61 = sub_102188();
    sub_81288(v61);
    if (v63 != 0x656C62616E65 || v62 != 0xEE0072656E6F6974)
    {
      sub_16AE54();
      sub_9409C();
      goto LABEL_126;
    }

    sub_109B8C(&off_1D0FE8, v65, v66, v67, v68, v69, v70, v71, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156);
    sub_96E4(v18, v72);
    sub_9409C();
    sub_109B8C(&off_1D0FC0, v73, v74, v75, v76, v77, v78, v79, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158);
    sub_96E4(v18, v80);

    return 2;
  }

  return result;
}

uint64_t sub_8D010()
{
  v3 = *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (!v3)
  {
    return sub_10BEC();
  }

  sub_93F1C();

  v4 = sub_1023F8();
  sub_8139C(v4);
  sub_93D50();
  v6 = v6 && v5 == 0xE600000000000000;
  if (v6)
  {
  }

  else
  {
    sub_93D80();
    sub_93E2C(v7, v8, v9);
    sub_48350();
    if ((v0 & 1) == 0)
    {
LABEL_26:

      return sub_10BEC();
    }
  }

  sub_93A74();
  v10 = sub_102188();
  sub_81288(v10);
  sub_93B94();
  if (v6 && v12 == v0)
  {
  }

  else
  {
    sub_93AB0(v11);
    sub_93DFC();
    if ((v0 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v14 = sub_103570();
  sub_82B98(v14, v15, v16);
  sub_93D50();
  if (v6 && v17 == 0xE800000000000000)
  {
  }

  else
  {
    sub_93D80();
    sub_93FA0(v19, v20, v21);
    sub_48350();
  }

  v22 = sub_104B2C();
  sub_96E4(30, v22);
  sub_93AFC();

  if ((v2 & 1) == 0)
  {
    goto LABEL_26;
  }

  v23 = *(v3 + 121);

  if (v23 != 4)
  {
    if (!v23)
    {
      return 2;
    }

    return sub_10BEC();
  }

  return 1;
}

uint64_t sub_8D17C(uint64_t a1)
{
  if (!*(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 0;
  }

  sub_93A74();

  v4 = sub_102188();
  sub_81288(v4);
  sub_93B94();
  v7 = v7 && v6 == v1;
  if (v7)
  {
  }

  else
  {
    sub_93AB0(v5);
    v8 = sub_93DFC();
    if ((v1 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (!sub_100794(v8))
  {
    v1 = sub_104B2C();
    sub_96E4(6, v1);
    sub_93AFC();

    if ((v3 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v9 = sub_1023F8();
  if (v9 == 4)
  {
    [objc_allocWithZone(NSNumber) initWithBool:0];
    goto LABEL_17;
  }

  if (v9 == 1)
  {
    [objc_allocWithZone(NSNumber) initWithBool:1];
LABEL_17:
    sub_94004();
    return v1;
  }

LABEL_14:

  return 0;
}

BOOL sub_8D278()
{
  if (!*(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 0;
  }

  v2 = 1;
  if ((sub_103994(v1) & 1) == 0)
  {
    sub_1021D0();
    if (!v3 || (, v4 = *(sub_104B2C() + 2), , v4))
    {
      if ((sub_104754() & 1) == 0 || (v5 = *(sub_104B2C() + 2), , v5))
      {
        v2 = 0;
      }
    }
  }

  [objc_allocWithZone(NSNumber) initWithBool:v2];
  sub_94004();
  return v2;
}

uint64_t sub_8D36C(uint64_t a1)
{
  v4 = *(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (!v4)
  {
    return 0;
  }

  sub_93A74();

  v5 = sub_102188();
  sub_81288(v5);
  sub_93B94();
  v8 = v8 && v7 == v1;
  if (v8)
  {

LABEL_10:
    sub_93F1C();
    v9 = sub_1023F8();
    sub_8139C(v9);
    sub_93D50();
    if (!v8 || v10 != 0xE600000000000000)
    {
      sub_93D80();
      sub_93E2C(v12, v13, v14);
      sub_48350();
      if (v1)
      {
LABEL_30:
        [objc_allocWithZone(NSNumber) initWithBool:1];
LABEL_31:
        sub_94004();
        return v1;
      }

      sub_93C58();
      sub_93BEC();
      if (v8 && v15 == 0xE700000000000000)
      {
      }

      else
      {
        sub_93DF0();
        sub_93F70(v17, v18, v19);
        sub_93AFC();

        if ((v3 & 1) == 0)
        {
          if (!sub_E6A8C(*(v4 + 81), &off_1D2AB8))
          {
            goto LABEL_7;
          }

          sub_106D20();
          sub_93BE0();
          if (!v8)
          {
            goto LABEL_30;
          }

          sub_93E8C();
          v20 = sub_103A44();
          sub_82168(v20, v21, v22);
          v1 = v23;
          sub_93AEC();
          if (!v8 || v27 != v25)
          {
            sub_93BF8(v24, v1, v26, v27);
            sub_93AFC();

            if ((v3 & 1) == 0)
            {
              v29 = sub_104B2C();
              sub_9401C(v29);
              sub_93AFC();

              goto LABEL_7;
            }

            goto LABEL_30;
          }

          goto LABEL_29;
        }
      }

      [objc_allocWithZone(NSNumber) initWithBool:0];
      goto LABEL_31;
    }

LABEL_29:

    goto LABEL_30;
  }

  sub_93AB0(v6);
  sub_93DFC();
  if (v1)
  {
    goto LABEL_10;
  }

LABEL_7:

  return 0;
}

uint64_t sub_8D500(uint64_t a1)
{
  v4 = *(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (!v4)
  {
    return 0;
  }

  sub_93A74();

  v5 = sub_102188();
  sub_81288(v5);
  sub_93B94();
  v8 = v8 && v7 == v1;
  if (v8)
  {
  }

  else
  {
    sub_93AB0(v6);
    sub_93DFC();
    if ((v1 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v9 = sub_104B2C();
  sub_9401C(v9);
  sub_93AFC();

  if (v3)
  {
    sub_93F1C();
    v10 = sub_1023F8();
    sub_8139C(v10);
    sub_93D50();
    if (v8 && v11 == 0xE600000000000000)
    {
    }

    else
    {
      sub_93D80();
      sub_93E2C(v13, v14, v15);
      sub_48350();
      if ((v1 & 1) == 0)
      {
        sub_93C58();
        sub_93BEC();
        if (v8 && v16 == 0xE700000000000000)
        {
        }

        else
        {
          sub_93DF0();
          sub_93F70(v18, v19, v20);
          sub_93AFC();

          if ((v3 & 1) == 0)
          {
            if (!sub_E6A8C(*(v4 + 81), &off_1D2AE0))
            {
              goto LABEL_21;
            }

            goto LABEL_24;
          }
        }

        [objc_allocWithZone(NSNumber) initWithBool:0];
        goto LABEL_25;
      }
    }

LABEL_24:
    [objc_allocWithZone(NSNumber) initWithBool:1];
LABEL_25:
    sub_94004();
    return v1;
  }

LABEL_21:

  return 0;
}

uint64_t sub_8D648@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_168454();
  sub_9F48();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {

    v9 = sub_1023F8();
    if (sub_E6A8C(v9, &off_1D2B08))
    {
      sub_106D20();
      sub_93BE0();
      v11 = v11 || v10 == 4;
      if (!v11)
      {
        switch(v10)
        {
          case 1:
            v19 = [objc_opt_self() kelvin];
            goto LABEL_19;
          case 2:
            v19 = [objc_opt_self() fahrenheit];
            goto LABEL_19;
          case 3:
            v20 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_unitProvider;
            sub_16484(0, &qword_1E76A8, NSUnitTemperature_ptr);
            (*(v5 + 16))(v8, v1 + v20, v3);
            sub_16A984();
            goto LABEL_20;
          default:
            v19 = [objc_opt_self() celsius];
LABEL_19:
            v21 = v19;
LABEL_20:
            sub_16484(0, &qword_1E76A8, NSUnitTemperature_ptr);
            sub_168304();

            v22 = sub_5758(&qword_1E76A0, &qword_172B00);
            result = sub_5370(a1, 0, 1, v22);
            break;
        }

        return result;
      }
    }
  }

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v12 = sub_16A584();
  sub_9DA0(v12, qword_1E65C0);
  v13 = sub_16A9A4();
  sub_386D8(v13, 0x4000uLL, 0xD000000000000077, 0x8000000000186850, 0xD000000000000011, 0x800000000017EFB0, 678, 0xD000000000000028, 0x8000000000186C40);
  sub_5758(&qword_1E76A0, &qword_172B00);
  v14 = sub_94114();

  return sub_5370(v14, v15, v16, v17);
}

uint64_t sub_8D970()
{
  v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (!v3)
  {
    return sub_10BEC();
  }

  v4 = sub_1023F8();
  if (!sub_E6A8C(v4, &off_1D2B30))
  {
    goto LABEL_29;
  }

  sub_106D20();
  v6 = (v5 & 0xFF0000) == 0x30000 || BYTE1(v5) == 4;
  if (v6)
  {
    sub_93E8C();
    v7 = sub_103A44();
    sub_82168(v7, v8, v9);
    v11 = v10;
    sub_93AEC();
    if (v6 && v15 == v13)
    {
    }

    else
    {
      sub_93BF8(v12, v11, v14, v15);
      sub_93AFC();

      if ((v1 & 1) == 0)
      {
LABEL_24:
        v20 = sub_104B2C();
        sub_9401C(v20);
        sub_93AFC();

        if (v1)
        {
LABEL_25:
          v21 = *(v3 + 81);
          sub_8DBD0();

          if (v21 == 6)
          {
            return 3;
          }

          if (v21 == 2)
          {
            return 1;
          }

          return sub_10BEC();
        }

        sub_8DBD0();
LABEL_29:

        return sub_10BEC();
      }
    }

    sub_94080();
    sub_93BEC();
    if (v6 && v18 == 0xE300000000000000)
    {
    }

    else
    {
      sub_93BA0(v17);
      sub_93AFC();

      if ((v1 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_24;
  }

  switch(BYTE1(v5))
  {
    case 1:
      sub_94128();
      sub_8139C(*(v3 + 81));
      if (v28 != v2 + 2309 || v29 != 0xEA00000000007942)
      {
        sub_93B78(v28, v29, v2 + 2309);
        sub_93AFC();

        goto LABEL_44;
      }

      goto LABEL_46;
    case 2:
      sub_8DBD0();

      return 3;
    case 3:
      sub_8139C(*(v3 + 81));
      sub_93BEC();
      if (v6 && v23 == 0xEA00000000007942)
      {

LABEL_44:
        sub_8DBD0();

        result = 2;
      }

      else
      {
        sub_93DF0();
        sub_93B78(v25, v26, v27);
        sub_93AFC();

LABEL_46:
        sub_8DBD0();

        result = 4;
      }

      break;
    default:
      sub_8DBD0();

      return 1;
  }

  return result;
}

uint64_t sub_8DBD0()
{
  sub_16ACF4(35);
  v3._object = 0x8000000000186C20;
  v3._countAndFlagsBits = 0xD000000000000010;
  sub_16A744(v3);
  sub_106D20();
  sub_5758(&qword_1E8FE0, &qword_172270);
  v4._countAndFlagsBits = sub_16A694();
  sub_16A744(v4);

  v5._countAndFlagsBits = 0x676E697474657320;
  v5._object = 0xEF203A6E756F4E73;
  sub_16A744(v5);
  sub_103A44();
  sub_16AD84();
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v0 = sub_16A584();
  sub_9DA0(v0, qword_1E65C0);
  v1 = sub_16A9A4();
  sub_386D8(v1, 0x4000uLL, 0xD000000000000077, 0x8000000000186850, 0xD000000000000019, 0x800000000017EFD0, 706, 0, 0xE000000000000000);
}

uint64_t sub_8DD90(uint64_t a1)
{
  if (!*(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return sub_10BEC();
  }

  sub_93A74();

  v3 = sub_102188();
  sub_81288(v3);
  sub_93B94();
  v6 = v6 && v5 == v1;
  if (v6)
  {
  }

  else
  {
    sub_93AB0(v4);
    sub_93DFC();
    if ((v1 & 1) == 0)
    {

      return sub_10BEC();
    }
  }

  v7 = sub_1023F8();
  sub_8139C(v7);
  sub_93BEC();
  if (!v6 || v9 != 0xE300000000000000)
  {
    sub_93BA0(v8);
    sub_93AFC();
  }

  sub_93E8C();
  v11 = sub_103A44();
  sub_82168(v11, v12, v13);
  v15 = v14;
  sub_93AEC();
  if (!v6 || v19 != v17)
  {
    sub_93BF8(v16, v15, v18, v19);
    sub_93AFC();
  }

  sub_106D20();
  v22 = v21;

  if ((v22 & 0xFE0000) == 0x20000)
  {
    return sub_10BEC();
  }

  if ((v22 & 0x10000) != 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_8E0F4(uint64_t a1)
{
  if (!*(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 2;
  }

  sub_93A74();

  v3 = sub_102188();
  sub_81288(v3);
  sub_93B94();
  v6 = v6 && v5 == v1;
  if (v6)
  {
  }

  else
  {
    sub_93AB0(v4);
    v7 = sub_93DFC();
    if ((v1 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v8 = sub_94194(v7);
  sub_82168(v8, v9, v10);
  sub_93D50();
  if (v6 && v11 == 0xE900000000000072)
  {
  }

  else
  {
    sub_93D80();
    sub_93D8C(v13, v14, v15);
    sub_48350();
    if ((v1 & 1) == 0)
    {
LABEL_14:

      return 2;
    }
  }

  v17 = sub_1023F8();

  if (v17 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v17 != 4);
  }
}

uint64_t sub_8E61C(uint64_t (*a1)(void))
{
  if (*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return a1();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_8E65C()
{
  if (!*(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 0;
  }

  result = sub_10601C();
  if (!v2)
  {
    return 0;
  }

  return result;
}

id sub_8E698()
{
  v1 = [objc_allocWithZone(NSNumberFormatter) init];
  if (!*(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task) || (sub_105F54(), !v2))
  {
  }

  v3 = sub_16A644();

  v4 = [v1 numberFromString:v3];

  return v4;
}

uint64_t sub_8E748(uint64_t a1)
{
  if (!*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 0;
  }

  v2 = sub_105FB8(a1);
  if (!v3)
  {
    sub_106080();
    if (!v6)
    {
      return 0;
    }

    v4 = sub_81A28(v5, v6);
    if (v4 > 3u)
    {
      return 0;
    }

    return qword_172B90[v4];
  }

  v4 = sub_81A28(v2, v3);
  if (v4 < 4u)
  {
    return qword_172B90[v4];
  }

  return 0;
}

uint64_t sub_8E7C0()
{
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_104B2C();
  sub_96E4(23, v3);
  sub_93AFC();

  if (v1)
  {

    return 1;
  }

  else
  {
    v5 = *(v2 + 144);

    sub_96E4(22, v5);
    sub_614D8();

    return 0;
  }
}

Class sub_8E868(uint64_t a1)
{
  v4 = *(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (!v4)
  {
    goto LABEL_15;
  }

  sub_93A74();

  v5 = sub_102188();
  sub_81288(v5);
  sub_93B94();
  v8 = v8 && v7 == v1;
  if (v8)
  {
  }

  else
  {
    sub_93AB0(v6);
    sub_93DFC();
    if ((v1 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v9 = sub_104B2C();
  sub_96E4(23, v9);
  sub_93AFC();

  if ((v3 & 1) == 0)
  {
    v10 = *(v4 + 144);

    sub_96E4(22, v10);
    sub_93AFC();

LABEL_14:

LABEL_15:
    sub_16484(0, &qword_1E6310, NSNumber_ptr);
    return sub_16AAA4(0).super.super.isa;
  }

  v11 = sub_1023F8();
  if (v11 == 4)
  {
    [objc_allocWithZone(NSNumber) initWithBool:0];
  }

  else
  {
    if (v11 != 1)
    {

      return 0;
    }

    [objc_allocWithZone(NSNumber) initWithBool:1];
  }

  sub_94004();
  return v9;
}

uint64_t sub_8EADC(uint64_t a1)
{
  if (!*(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 2;
  }

  sub_93A74();

  v3 = sub_102188();
  sub_81288(v3);
  sub_93B94();
  v6 = v6 && v5 == v1;
  if (v6)
  {
  }

  else
  {
    sub_93AB0(v4);
    sub_93DFC();
    if ((v1 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if ((sub_1051FC() & 1) == 0)
  {
    goto LABEL_15;
  }

  v7 = sub_1023F8();
  if (v7 != 13)
  {
    if (v7 != 4)
    {
      if (v7 == 1)
      {

        return 1;
      }

LABEL_17:

      return 2;
    }

LABEL_15:

    return 0;
  }

  v9 = sub_105294();
  if (v9 == 2)
  {
    goto LABEL_17;
  }

  if ((v9 & 1) == 0)
  {

    return 1;
  }

  sub_93E2C(0x6564697374756FLL, 0xE700000000000000, 0x656469736E69);
  sub_94004();

  return v1 & 1;
}

uint64_t sub_8EC20(uint64_t a1)
{
  if (!*(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 2;
  }

  sub_93A74();

  v4 = sub_102188();
  sub_81288(v4);
  sub_93B94();
  v7 = v7 && v6 == v1;
  if (v7)
  {
  }

  else
  {
    sub_93AB0(v5);
    sub_93DFC();
    if ((v1 & 1) == 0)
    {
LABEL_21:

      return 2;
    }
  }

  v8 = sub_1043C0();
  if (v8)
  {
    if (v8 == 1)
    {
      v1 = 0xE600000000000000;
      sub_93F2C();
    }

    else
    {
      v1 = 0xE700000000000000;
      sub_93B08();
    }

    sub_93C44();
    sub_93FE8(v9, v1, v10);
    sub_93AFC();

    if ((v3 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  sub_93C7C();
  v11 = sub_1023F8();
  sub_8139C(v11);
  sub_93BEC();
  if (v7 && v13 == 0xE600000000000000)
  {
    goto LABEL_28;
  }

  sub_93DA8(v12, v1);
  sub_93AFC();

  if (v3)
  {

LABEL_29:
    v3 = 1;
    return v3 & 1;
  }

  sub_94080();
  sub_93BEC();
  if (v7 && v17 == 0xE300000000000000)
  {
LABEL_28:

    goto LABEL_29;
  }

  sub_93BA0(v16);
  sub_614D8();

  return v3 & 1;
}

uint64_t sub_8ED6C(uint64_t a1)
{
  v5 = *(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (!v5)
  {
    return 2;
  }

  sub_93A74();

  v6 = sub_102188();
  sub_81288(v6);
  sub_93B94();
  v9 = v9 && v8 == v1;
  if (v9)
  {
  }

  else
  {
    sub_93AB0(v7);
    sub_93DFC();
    if ((v1 & 1) == 0)
    {
LABEL_7:

      return 2;
    }
  }

  sub_93C7C();
  v11 = sub_1023F8();
  sub_8139C(v11);
  sub_93B94();
  v14 = v9 && v13 == 0xE600000000000000;
  v15 = 105;
  if (!v14)
  {
    sub_93DA8(v12, v3);
    sub_93F88();
    if (v4)
    {
      goto LABEL_29;
    }

    sub_8139C(*(v5 + 81));
    v3 = v17;
    if (v16 != 0x656C6261736964 || v17 != 0xE700000000000000)
    {
      sub_93F70(v16, v17, 0x656C6261736964);
      sub_93F88();
      sub_8139C(*(v5 + 81));
      v3 = v20;
      if (v19 != 0x6573616572636E69 || v20 != 0xEA00000000007942)
      {
        sub_93B78(v19, v20, 0x6573616572636E69);
        sub_93F88();
        sub_8139C(*(v5 + 81));
        v3 = v23;
        if (v22 != 0x6573616572636564 || v23 != 0xEA00000000007942)
        {
          sub_93B78(v22, v23, 0x6573616572636564);
          sub_93F88();
          goto LABEL_7;
        }
      }
    }
  }

LABEL_29:
  sub_8139C(*(v5 + 81));
  sub_93B94();
  if (v9 && v26 == 0xE600000000000000)
  {
LABEL_35:

    goto LABEL_36;
  }

  v28 = sub_93DA8(v25, v3);

  if ((v28 & 1) == 0)
  {
    sub_8139C(*(v5 + 81));
    sub_93D50();
    if (!v9 || v29 != 0xEA00000000007942)
    {
      sub_93D80();
      sub_93B78(v31, v32, v33);
      sub_94004();

      return v15 & 1;
    }

    goto LABEL_35;
  }

LABEL_36:
  v15 = 1;
  return v15 & 1;
}

uint64_t sub_8EF84(uint64_t (*a1)(uint64_t))
{
  if (!*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 2;
  }

  sub_93D5C();

  v5 = sub_102188();
  sub_81288(v5);
  if (v6 == v3 && v7 == v2)
  {
  }

  else
  {
    v9 = sub_93FB8(v6, v7, v3);

    if ((v9 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if ((a1(v10) & 1) == 0)
  {
LABEL_16:

    return 2;
  }

  sub_1023F8();
  sub_94004();
  if (a1 == 1 || a1 == 13)
  {
    return 1;
  }

  if (a1 != 4)
  {
    return 2;
  }

  return 0;
}

unint64_t sub_8F058(uint64_t a1)
{
  if (!*(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 6;
  }

  sub_93A74();

  v3 = sub_102188();
  sub_81288(v3);
  sub_93B94();
  v6 = v6 && v5 == v1;
  if (v6)
  {
  }

  else
  {
    sub_93AB0(v4);
    sub_93DFC();
    if ((v1 & 1) == 0)
    {

      return 6;
    }
  }

  v7 = sub_105AC0();

  if (v7 == 5)
  {
    return 6;
  }

  return sub_F86B8(v7);
}