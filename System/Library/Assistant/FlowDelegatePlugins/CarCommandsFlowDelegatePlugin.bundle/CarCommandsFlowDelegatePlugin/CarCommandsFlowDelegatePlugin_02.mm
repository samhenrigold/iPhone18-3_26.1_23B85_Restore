uint64_t sub_42644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1039C;

  return sub_4271C(a1, a2, a3, a4);
}

uint64_t sub_4271C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = type metadata accessor for CarNameParameters(0);
  v5[29] = swift_task_alloc();
  v6 = sub_168454();
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();

  return _swift_task_switch(sub_42870);
}

uint64_t sub_42870()
{
  sub_10BA4();
  sub_10B8C();
  sub_481EC();
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_47FC4();
  v5 = sub_168C94();
  if (sub_47EF0(v5))
  {
    if (sub_48568() == 1307)
    {
      v6 = [sub_4847C() parametersByName];
      if (v6)
      {
        v2 = v6;
        v4 = sub_16A5B4();

        v7 = sub_47B4C();
        sub_48224(v7);

        if (*(v3 + 120))
        {
          v8 = sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
          if (sub_47F14(v8))
          {
            v2 = *(v0 + 16);
            v1 = [v2 spokenPhrase];
            sub_16A664();
            sub_485E0();
            sub_485C8();
            sub_48208();
            if (v4)
            {
              sub_485B0();
              sub_4825C();
              if (v0 == 115 && v1 == 0xE100000000000000)
              {

                sub_48458();
              }

              else
              {
                sub_47F38();
                sub_48520();
              }
            }

            goto LABEL_19;
          }

LABEL_18:
          sub_48464();
LABEL_19:
          v17 = sub_47ECC();
          sub_483C8(v17);
          sub_4808C();

          v18 = sub_169064();
          sub_48598(v18);
          sub_169054();
          sub_4817C();
          v19 = sub_47FF0();
          v20(v19);
          v21 = sub_48278([objc_allocWithZone(SAAppsLaunchApp) init]);
          if (v22)
          {
            sub_16A644();
            sub_4808C();
          }

          else
          {
            v1 = 0;
          }

          sub_484C0(v21, "setLaunchId:");

          if (v2)
          {
            v23 = v2;
            sub_48240();
          }

          v24 = sub_48508();
          v25 = sub_47D48(v24);
          if (v26)
          {
            sub_48538(v25, v26);
          }

          sub_47EA8();
          if (v4)
          {
            sub_481D0();
          }

          v27 = sub_47E1C();
          if (v28)
          {
            sub_48550(v27, v28);
          }

          sub_47B78();
          sub_47CE8();
          sub_481B4();
          sub_48198();
          sub_48098();
          v29 = swift_task_alloc();
          v30 = sub_48494(v29);
          *v30 = v31;
          sub_47E08(v30);
          sub_10B0C();

          return sub_15717C(v32);
        }
      }

      else
      {
        sub_48470();
      }

      sub_D188(v1, &qword_1E6A10, &unk_1744D0);
      goto LABEL_18;
    }
  }

  sub_47FA0();
  v10 = swift_task_alloc();
  v11 = sub_48488(v10);
  *v11 = v12;
  v11[1] = sub_42E38;
  sub_484A0();
  sub_10B0C();

  return sub_156570(v13, v14);
}

uint64_t sub_42BB0()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *v2 = *v0;
  sub_484F0(v3);
  sub_10B4C();

  return _swift_task_switch(v4);
}

uint64_t sub_42CA8()
{
  sub_D2DC();
  v1 = sub_480B8();
  sub_10824(v1, v0 + 56);
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 312) = v2;
  *v2 = v3;
  sub_47C88(v2);

  return sub_11A570();
}

uint64_t sub_42D38()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 320) = v0;

  sub_D13C((v3 + 56));
  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_42E38(uint64_t a1)
{
  sub_48638();
  sub_D3A4();
  sub_D358();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  *v5 = *v2;
  sub_484D8(v6);
  if (v1)
  {
    sub_47FD0();

    sub_D37C();
    sub_484AC();

    return v8(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    sub_10B4C();
    sub_484AC();

    return _swift_task_switch(v16);
  }
}

uint64_t sub_42F84()
{
  sub_D2DC();
  v1 = sub_480B8();
  sub_10824(v1, v0 + 16);
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 344) = v2;
  *v2 = v3;
  sub_47C70(v2);

  return sub_11A570();
}

uint64_t sub_43014()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 352) = v0;

  sub_D13C((v3 + 16));
  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_43114()
{
  sub_D2DC();
  sub_480D0(v1, v2, v3, v4);
  v5 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v5);
  v6 = sub_486C4();
  v7 = sub_486AC(v6);
  v8 = sub_48694(v7);
  v9 = sub_4867C(v8);
  v10 = sub_48664(v9);
  v0[28] = v10;
  sub_D414(v10);
  v11 = sub_D3C8();
  v12 = sub_4864C(v11);
  v0[30] = v12;
  sub_10AEC(v12);
  v0[31] = v13;
  v0[32] = sub_D3C8();
  v14 = sub_D388();

  return _swift_task_switch(v14);
}

uint64_t sub_43204()
{
  sub_D2DC();
  sub_480D0(v1, v2, v3, v4);
  v5 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v5);
  v6 = sub_486C4();
  v7 = sub_486AC(v6);
  v8 = sub_48694(v7);
  v9 = sub_4867C(v8);
  v10 = sub_48664(v9);
  v0[28] = v10;
  sub_D414(v10);
  v11 = sub_D3C8();
  v12 = sub_4864C(v11);
  v0[30] = v12;
  sub_10AEC(v12);
  v0[31] = v13;
  v0[32] = sub_D3C8();
  v14 = sub_D388();

  return _swift_task_switch(v14);
}

uint64_t sub_432F4()
{
  sub_10BA4();
  sub_10B8C();
  sub_481EC();
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_47FC4();
  v5 = sub_168C94();
  if (sub_47EF0(v5))
  {
    if (sub_48568() == 1307)
    {
      v6 = [sub_4847C() parametersByName];
      if (v6)
      {
        v2 = v6;
        v4 = sub_16A5B4();

        v7 = sub_47B4C();
        sub_48224(v7);

        if (*(v3 + 120))
        {
          v8 = sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
          if (sub_47F14(v8))
          {
            v2 = *(v0 + 16);
            v1 = [v2 spokenPhrase];
            sub_16A664();
            sub_485E0();
            sub_485C8();
            sub_48208();
            if (v4)
            {
              sub_485B0();
              sub_4825C();
              if (v0 == 115 && v1 == 0xE100000000000000)
              {

                sub_48458();
              }

              else
              {
                sub_47F38();
                sub_48520();
              }
            }

            goto LABEL_19;
          }

LABEL_18:
          sub_48464();
LABEL_19:
          v17 = sub_47ECC();
          sub_483C8(v17);
          sub_4808C();

          v18 = sub_169064();
          sub_48598(v18);
          sub_169054();
          sub_4817C();
          v19 = sub_47FF0();
          v20(v19);
          v21 = sub_48278([objc_allocWithZone(SAAppsLaunchApp) init]);
          if (v22)
          {
            sub_16A644();
            sub_4808C();
          }

          else
          {
            v1 = 0;
          }

          sub_484C0(v21, "setLaunchId:");

          if (v2)
          {
            v23 = v2;
            sub_48240();
          }

          v24 = sub_48508();
          v25 = sub_47D48(v24);
          if (v26)
          {
            sub_48538(v25, v26);
          }

          sub_47EA8();
          if (v4)
          {
            sub_481D0();
          }

          v27 = sub_47E1C();
          if (v28)
          {
            sub_48550(v27, v28);
          }

          sub_47B78();
          sub_47CE8();
          sub_481B4();
          sub_48198();
          sub_48098();
          v29 = swift_task_alloc();
          v30 = sub_48494(v29);
          *v30 = v31;
          sub_47E08(v30);
          sub_10B0C();

          return sub_15717C(v32);
        }
      }

      else
      {
        sub_48470();
      }

      sub_D188(v1, &qword_1E6A10, &unk_1744D0);
      goto LABEL_18;
    }
  }

  sub_47FA0();
  v10 = swift_task_alloc();
  v11 = sub_48488(v10);
  *v11 = v12;
  v11[1] = sub_43AA8;
  sub_484A0();
  sub_10B0C();

  return sub_156570(v13, v14);
}

uint64_t sub_43634()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *v2 = *v0;
  sub_484F0(v3);
  sub_10B4C();

  return _swift_task_switch(v4);
}

uint64_t sub_4372C()
{
  sub_D2DC();
  v1 = sub_480B8();
  sub_10824(v1, v0 + 56);
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 312) = v2;
  *v2 = v3;
  sub_47C88(v2);

  return sub_11A570();
}

uint64_t sub_437BC()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 320) = v0;

  sub_D13C((v3 + 56));
  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_438BC(uint64_t a1, uint64_t a2)
{
  sub_48638();
  sub_D3A4();
  v4 = v2[34];
  v3 = v2[35];
  v5 = v2[29];

  sub_36F84(v5);
  sub_482DC();

  sub_D37C();
  sub_484AC();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_43964()
{
  sub_D3A4();
  sub_48618();

  sub_36F84(v1);
  sub_485F8();

  sub_1677C();

  return v4();
}

uint64_t sub_43A08(uint64_t a1, uint64_t a2)
{
  sub_48638();
  sub_D3A4();
  sub_48618();

  sub_36F84(v3);
  sub_482DC();

  sub_D37C();
  sub_484AC();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_43AA8(uint64_t a1)
{
  sub_48638();
  sub_D3A4();
  sub_D358();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  *v5 = *v2;
  sub_484D8(v6);
  if (v1)
  {
    sub_47FD0();

    sub_D37C();
    sub_484AC();

    return v8(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    sub_10B4C();
    sub_484AC();

    return _swift_task_switch(v16);
  }
}

uint64_t sub_43BF4()
{
  sub_D2DC();
  v1 = sub_480B8();
  sub_10824(v1, v0 + 16);
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 344) = v2;
  *v2 = v3;
  sub_47C70(v2);

  return sub_11A570();
}

uint64_t sub_43C84()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 352) = v0;

  sub_D13C((v3 + 16));
  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_43D84()
{
  sub_D3A4();

  sub_485F8();

  sub_1677C();

  return v1();
}

uint64_t sub_43E18(uint64_t a1, uint64_t a2)
{
  sub_48638();
  sub_D3A4();

  sub_482DC();

  sub_D37C();
  sub_484AC();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_43EA8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_43F64;

  return sub_441D0(a1, a2);
}

uint64_t sub_43F64()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  v3 = sub_120EC();

  return v4(v3);
}

uint64_t sub_44120(uint64_t a1, uint64_t a2)
{
  result = sub_478F4(&qword_1E69E8, a2, type metadata accessor for ActivateSignalRCHFlowStrategy, &unk_16E578);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_44178(uint64_t a1, uint64_t a2)
{
  result = sub_478F4(&qword_1E69F8, a2, type metadata accessor for ActivateSignalRCHFlowStrategy, &unk_16E5C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_441D0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_168A24();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_44294);
}

uint64_t sub_44408()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_44600()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_447F8()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_449F4()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_44C00()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_44E0C()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_45004()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_451FC()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_453F8()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_455F0()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_457EC()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_459E4()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_45BDC()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_45DE8()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_45FF4()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_461EC()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_463E8()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_465E0()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_467D8()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_469D0()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_46BDC()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_46DD8()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_46FD4()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_471CC()
{
  v0 = sub_16A1B4();
  if (!v1)
  {
    goto LABEL_8;
  }

  if (v0 == 0xD000000000000012 && v1 == 0x800000000017F6B0)
  {
    goto LABEL_14;
  }

  v3 = sub_16AE54();

  if ((v3 & 1) == 0)
  {
LABEL_8:
    v5 = sub_16A1B4();
    if (!v6)
    {
      v4 = 0;
      return v4 & 1;
    }

    if (v5 != 0xD00000000000002CLL || v6 != 0x80000000001821B0)
    {
      v4 = sub_16AE54();
LABEL_15:

      return v4 & 1;
    }

LABEL_14:
    v4 = 1;
    goto LABEL_15;
  }

  v4 = 1;
  return v4 & 1;
}

uint64_t sub_47304(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_47358(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_16A164();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for FeatureFlagHelper();
  v27[3] = v8;
  v27[4] = &off_1D9AF0;
  v27[0] = a2;
  type metadata accessor for ActivateSignalConfirmIntentFlowStrategy(0);
  v9 = swift_allocObject();
  v10 = sub_2F8D0(v27, v8);
  __chkstk_darwin(v10);
  v12 = (v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v26[3] = v8;
  v26[4] = &off_1D9AF0;
  v26[0] = v14;
  v15 = (v9 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin39ActivateSignalConfirmIntentFlowStrategy_commonPatterns);
  v16 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v17 = sub_16A094();
  v15[3] = v16;
  v15[4] = &off_1DA7E8;
  *v15 = v17;
  sub_10824(a1, v25);
  sub_10824(v26, v24);
  v18 = sub_2F8D0(v24, v24[3]);
  __chkstk_darwin(v18);
  (*(v20 + 16))(v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1668CC();
  v22 = v21;
  sub_D13C(a1);
  sub_D13C(v26);
  sub_D13C(v24);
  sub_D13C(v27);
  return v22;
}

uint64_t sub_47600()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_47640(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_16A164();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for FeatureFlagHelper();
  v27[3] = v8;
  v27[4] = &off_1D9AF0;
  v27[0] = a2;
  type metadata accessor for ActivateSignalHandleIntentFlowStrategy(0);
  v9 = swift_allocObject();
  v10 = sub_2F8D0(v27, v8);
  __chkstk_darwin(v10);
  v12 = (v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v26[3] = v8;
  v26[4] = &off_1D9AF0;
  v26[0] = v14;
  v15 = (v9 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38ActivateSignalHandleIntentFlowStrategy_commonPatterns);
  v16 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v17 = sub_16A094();
  v15[3] = v16;
  v15[4] = &off_1DA7E8;
  *v15 = v17;
  *(v9 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38ActivateSignalHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
  sub_10824(a1, v25);
  sub_10824(v26, v24);
  v18 = sub_2F8D0(v24, v24[3]);
  __chkstk_darwin(v18);
  (*(v20 + 16))(v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1668CC();
  v22 = v21;
  sub_D13C(a1);
  sub_D13C(v26);
  sub_D13C(v24);
  sub_D13C(v27);
  return v22;
}

uint64_t sub_478F4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_4796C(uint64_t a1)
{
  sub_5370(v3, v1, 1, a1);
  sub_5370(v2 + v4[7], 1, 1, a1);
  sub_5370(v2 + v4[8], 1, 1, a1);
  sub_5370(v2 + v4[9], 1, 1, a1);

  return sub_16304(v3, v2);
}

void sub_479F8(os_log_type_t a1)
{

  sub_386D8(a1, 2uLL, 0xD000000000000085, v3 | 0x8000000000000000, 0xD000000000000028, (v2 | 0x8000000000000000), 33, 0xD000000000000026, v1);
}

void sub_47A74(os_log_type_t a1)
{

  sub_386D8(a1, 2uLL, v4 + 66, v2 | 0x8000000000000000, 0xD00000000000003FLL, (v1 | 0x8000000000000000), 38, 0xD00000000000003FLL, v3);
}

void sub_47AD4(os_log_type_t a1)
{

  sub_386D8(a1, 2uLL, v4 + 66, v2 | 0x8000000000000000, 0xD00000000000003FLL, (v1 | 0x8000000000000000), 43, v4 + 29, v3);
}

uint64_t sub_47B78()
{
  v3 = v1[29];
  v4 = v1[27];
  sub_5370(v1[24], v2, 1, v0);

  return sub_16304(v4, v3);
}

uint64_t sub_47BCC(uint64_t a1)
{

  return SiriKitIntentHandler.init<A>(app:intentHandler:intent:)(v2, v1, a1, v3);
}

uint64_t sub_47BF0()
{

  return sub_16A584();
}

uint64_t sub_47C48()
{

  return sub_16A0C4();
}

uint64_t sub_47CA0(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_47CC4()
{

  return sub_16AE54();
}

uint64_t sub_47CE8()
{
  *(v0 + v3[5]) = 0;
  *(v0 + v3[6]) = v1;
  v5 = v0 + v3[7];

  return sub_16304(v2, v5);
}

uint64_t sub_47D14()
{

  return sub_16A584();
}

uint64_t sub_47D48(uint64_t a1)
{
  sub_5370(v2, v1, 1, a1);

  return sub_16AAE4();
}

double sub_47D98()
{
  result = 0.0;
  *(v0 + 184) = 0u;
  *(v0 + 168) = 0u;
  return result;
}

double sub_47DA8()
{
  result = 0.0;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  return result;
}

uint64_t sub_47DC8(uint64_t result)
{
  *(v1 + 312) = result;
  *(v1 + 216) = result;
  return result;
}

uint64_t sub_47E1C()
{
  sub_5370(*(v1 + 200), v2, 1, v0);

  return sub_16A1B4();
}

uint64_t sub_47E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_47E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[33] = a4;
  v5[34] = v4;
  v5[31] = a2;
  v5[32] = a3;
  v5[30] = a1;

  return sub_16A164();
}

uint64_t sub_47EA8()
{
  v4 = *(v1 + 208);

  return sub_5370(v4, v2, 1, v0);
}

uint64_t sub_47ECC()
{
  *(v1 + 272) = v0;

  return sub_169074();
}

uint64_t sub_47EF0(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_47F14(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_47F38()
{

  return sub_16AE54();
}

uint64_t sub_47F5C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;

  return sub_168A24();
}

uint64_t sub_47F84()
{

  return sub_471CC();
}

uint64_t sub_47FD0()
{
}

double sub_48000()
{

  return sub_13F658(v0, (v1 + 168), v1 + 96);
}

double sub_4801C(uint64_t a1)
{

  return sub_13F530(a1, 0xE700000000000000, v1, (v2 + 136));
}

uint64_t sub_48038(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_48054()
{
}

uint64_t sub_48070()
{
}

uint64_t sub_480D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = result;
  return result;
}

uint64_t sub_48134(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_48154(uint64_t a1, uint64_t a2)
{
  sub_9DA0(a1, a2);

  return sub_16A9A4();
}

uint64_t sub_4817C()
{
}

uint64_t sub_48198()
{
  v4 = v0 + *(v2 + 36);

  return sub_16304(v1, v4);
}

uint64_t sub_481B4()
{
  v4 = v0 + *(v2 + 32);

  return sub_16304(v1, v4);
}

uint64_t sub_481D0()
{

  return sub_16A6E4();
}

uint64_t sub_481EC()
{
  *(v0 + 128) = *(v0 + 160);

  return swift_errorRetain();
}

uint64_t sub_48208()
{
}

double sub_48224(uint64_t a1)
{

  return sub_13F530(a1, 0xE700000000000000, v2, v1);
}

uint64_t sub_48240()
{

  return sub_99C94();
}

uint64_t sub_4825C()
{
}

uint64_t sub_48278(uint64_t a1)
{
  *(v1 + 280) = a1;

  return sub_16A1B4();
}

uint64_t sub_48294()
{

  return static SiriKitIntentExecutionBehavior.embeddedIntentHandler(intentHandler:)(v0);
}

uint64_t sub_482AC(uint64_t a1)
{

  return sub_16A154();
}

uint64_t sub_482C4()
{

  return sub_16A094();
}

uint64_t sub_482DC()
{
}

uint64_t sub_48308()
{
}

uint64_t sub_48320(unint64_t *a1)
{

  return sub_47304(a1, v2, v1);
}

uint64_t sub_48338()
{

  return sub_5758(v1, v0);
}

uint64_t sub_48350()
{
}

uint64_t sub_48368()
{

  return sub_15B48(v0, v1);
}

uint64_t sub_48380()
{

  return sub_16AC84();
}

uint64_t sub_48398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_16A5B4();
}

uint64_t sub_483B0()
{

  return sub_99C94();
}

uint64_t sub_483C8(uint64_t a1)
{

  return swift_allocObject();
}

void sub_483E0()
{
}

uint64_t sub_483F8()
{

  return sub_16A5D4();
}

uint64_t sub_48410(uint64_t a1)
{
  *(v1 + 392) = a1;
  *(v1 + 400) = v2;
}

uint64_t sub_48428(uint64_t a1)
{
  *(v1 + 360) = a1;
  *(v1 + 368) = v2;
}

uint64_t sub_48440(uint64_t a1)
{
  *(v1 + 288) = a1;

  return type metadata accessor for CarNameParameters(0);
}

double sub_48470()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

id sub_484C0(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_484D8(uint64_t a1)
{
  *(v2 + 336) = a1;
}

uint64_t sub_484F0(uint64_t a1)
{
  *(v2 + 296) = a1;
  *(v2 + 304) = v3;
}

uint64_t sub_48508()
{

  return sub_16A0C4();
}

uint64_t sub_48520()
{
}

uint64_t sub_48538(uint64_t a1, uint64_t a2)
{

  return sub_16A6E4();
}

uint64_t sub_48550(uint64_t a1, uint64_t a2)
{

  return sub_16A6E4();
}

uint64_t sub_48568()
{
  *(v0 + 264) = *(v0 + 136);

  return CommandFailure.errorCode.getter();
}

uint64_t sub_48580()
{
}

uint64_t sub_48598(uint64_t a1)
{

  return sub_168444();
}

uint64_t sub_485B0()
{

  return sub_16A5D4();
}

uint64_t sub_485C8()
{

  return sub_15B48(v0, v1);
}

void sub_485E0()
{
}

uint64_t sub_485F8()
{
}

uint64_t sub_48618()
{
}

uint64_t sub_4864C(uint64_t a1)
{
  *(v1 + 232) = a1;

  return sub_168454();
}

uint64_t sub_48664(uint64_t a1)
{
  *(v1 + 216) = a1;

  return type metadata accessor for CarNameParameters(0);
}

uint64_t sub_4867C(uint64_t a1)
{
  *(v1 + 208) = a1;

  return swift_task_alloc();
}

uint64_t sub_48694(uint64_t a1)
{
  *(v1 + 200) = a1;

  return swift_task_alloc();
}

uint64_t sub_486AC(uint64_t a1)
{
  *(v1 + 192) = a1;

  return swift_task_alloc();
}

uint64_t sub_486C4()
{

  return swift_task_alloc();
}

void sub_486DC(void *a1@<X8>)
{
}

CarCommandsFlowDelegatePlugin::CarCommandsUseCase_optional __swiftcall CarCommandsUseCase.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_16AE64();

  if (v1 >= 0x1E)
  {
    return 30;
  }

  else
  {
    return v1;
  }
}

unint64_t CarCommandsUseCase.rawValue.getter(char a1)
{
  result = 0x536B636F4C746567;
  switch(a1)
  {
    case 1:
      return 0x536B636F4C746573;
    case 2:
      return 0x6574617669746361;
    case 3:
      return 0x7265776F50746567;
    case 4:
      return 0xD000000000000010;
    case 5:
      return 0x6B6E757254746573;
    case 6:
      v3 = 9;
      goto LABEL_22;
    case 7:
      return 0x6F72666544746573;
    case 8:
      return 0x6F69646152746573;
    case 9:
      return 0x616D696C43746573;
    case 10:
      return 0x616D696C43746567;
    case 11:
      return 0x65706D6554746573;
    case 12:
      return 0x434178614D746573;
    case 13:
      return 0x6B6E757254746567;
    case 14:
      return 0x5374616553746573;
    case 15:
      v3 = 11;
      goto LABEL_22;
    case 16:
      v3 = 5;
LABEL_22:
      result = v3 | 0xD000000000000010;
      break;
    case 17:
      result = 0x65536E6146746573;
      break;
    case 18:
      result = 0x6D756C6F56746573;
      break;
    case 19:
      result = 0x4D6F747541746573;
      break;
    case 20:
      result = 0x616D696C43746573;
      break;
    case 21:
      result = 0x4D746E6556746573;
      break;
    case 22:
      result = 0x6E496E6146746573;
      break;
    case 23:
    case 27:
      result = 0xD000000000000011;
      break;
    case 24:
      result = 0xD000000000000018;
      break;
    case 25:
      result = 0x507261436E65706FLL;
      break;
    case 26:
      result = 0xD000000000000010;
      break;
    case 28:
      result = 0x6E776F6E6B6E75;
      break;
    case 29:
      result = 0x7265646E7573696DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_48B70()
{
  result = qword_1E6AC8;
  if (!qword_1E6AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E6AC8);
  }

  return result;
}

CarCommandsFlowDelegatePlugin::CarCommandsUseCase_optional sub_48BDC@<W0>(Swift::String *a1@<X0>, CarCommandsFlowDelegatePlugin::CarCommandsUseCase_optional *a2@<X8>)
{
  result.value = CarCommandsUseCase.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t sub_48C0C@<X0>(unint64_t *a1@<X8>)
{
  result = CarCommandsUseCase.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_48C3C()
{
  result = qword_1E6AD0;
  if (!qword_1E6AD0)
  {
    sub_37130(&qword_1E6AD8, &qword_16E890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E6AD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarCommandsUseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE3)
  {
    if (a2 + 29 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 29) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 30;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v5 = v6 - 30;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CarCommandsUseCase(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE2)
  {
    v6 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
        JUMPOUT(0x48E04);
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
          *result = a2 + 29;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for CarCommandsSetAutoModeCATsSimple(uint64_t a1)
{
  result = qword_1E6AE0;
  if (!qword_1E6AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_48EC8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return _swift_task_switch(sub_48EEC);
}

uint64_t sub_48EEC()
{
  v1 = *(v0 + 48);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v2 = swift_allocObject();
  *(v2 + 32) = 0x64656C62616E65;
  *(v2 + 40) = 0xE700000000000000;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = v1;
  v5 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_16D9A0;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_49014;

  return v5(0xD00000000000002CLL, 0x80000000001822C0, v2);
}

uint64_t sub_49014(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_4916C);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_4916C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_49224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16A164();
  sub_5B1C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v11 - 8);
  sub_57A0(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_16A0D4();
  (*(v7 + 8))(a2, v3);
  sub_5810(a1);
  return v13;
}

uint64_t sub_49380(uint64_t a1, uint64_t a2)
{
  sub_16A164();
  sub_5B1C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16A0E4();
  (*(v5 + 8))(a2, v2);
  return v9;
}

unint64_t sub_49488(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D1D10;
  v6._object = a2;
  v4 = sub_16ADE4(v3, v6);

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_494D4(char a1)
{
  result = 0x7473756A6461;
  switch(a1)
  {
    case 1:
      result = 0x74736575516B7361;
      break;
    case 2:
      result = 0x65736F6C63;
      break;
    case 3:
      result = 1953069157;
      break;
    case 4:
      result = 1801678700;
      break;
    case 5:
      result = 1852141679;
      break;
    case 6:
      result = 1802658160;
      break;
    case 7:
      result = 0x66664F6E727574;
      break;
    case 8:
      result = 0x6E4F6E727574;
      break;
    case 9:
      result = 1702257011;
      break;
    case 10:
      result = 0x61636F4C646E6573;
      break;
    case 11:
      result = 0x6B636F6C6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_4963C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_49488(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_4966C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_494D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for CarCommandsVerbNLv3Value(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CarCommandsVerbNLv3Value(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x497ECLL);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_49828()
{
  result = qword_1E6B30;
  if (!qword_1E6B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E6B30);
  }

  return result;
}

uint64_t sub_4988C(uint64_t a1, uint64_t a2)
{
  v4 = sub_49A18();
  v5 = sub_49A6C();
  v6 = sub_49AC0();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_49904()
{
  result = qword_1E6B38;
  if (!qword_1E6B38)
  {
    sub_37130(&qword_1E6B40, &qword_16E9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E6B38);
  }

  return result;
}

unint64_t sub_4996C()
{
  result = qword_1E6B48;
  if (!qword_1E6B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E6B48);
  }

  return result;
}

unint64_t sub_499C4()
{
  result = qword_1E6B50;
  if (!qword_1E6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E6B50);
  }

  return result;
}

unint64_t sub_49A18()
{
  result = qword_1E6B58;
  if (!qword_1E6B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E6B58);
  }

  return result;
}

unint64_t sub_49A6C()
{
  result = qword_1E6B60;
  if (!qword_1E6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E6B60);
  }

  return result;
}

unint64_t sub_49AC0()
{
  result = qword_1E6B68;
  if (!qword_1E6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E6B68);
  }

  return result;
}

uint64_t sub_49B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_16A204();
  v4[6] = v5;
  sub_10AEC(v5);
  v4[7] = v6;
  v4[8] = swift_task_alloc();
  v7 = sub_16A1F4();
  v4[9] = v7;
  sub_10AEC(v7);
  v4[10] = v8;
  v4[11] = swift_task_alloc();
  v9 = sub_16A224();
  v4[12] = v9;
  sub_10AEC(v9);
  v4[13] = v10;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_49C78);
}

uint64_t sub_49C78()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];

  *v1 = sub_49F74(v7);
  (*(v2 + 104))(v1, enum case for AppSupportQuery.AllowedSiriAuthorizationStatuses.only(_:), v3);
  (*(v5 + 104))(v4, enum case for AppSupportQuery.AllowedExtensionPointIdentifiers.all(_:), v6);
  sub_16A214();
  v11 = (&async function pointer to dispatch thunk of AppSupportService.findApps(matching:) + async function pointer to dispatch thunk of AppSupportService.findApps(matching:));
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_49DD8;
  v9 = v0[14];

  return v11(v9);
}

uint64_t sub_49DD8(uint64_t a1)
{
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_49ED8);
}

uint64_t sub_49ED8()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];
  v2 = v0[16];

  return v1(v2);
}

void *sub_49F74(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_108E64(*(a1 + 16), 0);
  v4 = sub_1485D8(&v6, v3 + 4, v2, a1);
  sub_4A004(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

id sub_4A00C()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin49GetSignalActivationStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin49GetSignalActivationStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin49GetSignalActivationStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      swift_once();
    }

    v5 = sub_ECCCC(v4);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_4A0A8()
{
  sub_D2DC();
  v1[37] = v2;
  v1[38] = v0;
  v1[36] = v3;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = type metadata accessor for SignalActivationParameters(0);
  v1[42] = sub_D3C8();
  v4 = sub_D388();

  return _swift_task_switch(v4);
}

uint64_t sub_4A170()
{
  v58 = v0;
  sub_10824(v0[38] + 16, (v0 + 2));
  sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1E6DC0, &qword_16ECE8);
  sub_169094();
  sub_D2604();

  sub_D13C(v0 + 2);
  v1 = 0x8000000000182560;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  v0[31] = 0xD0000000000000AALL;
  v0[32] = 0x80000000001824B0;
  v0[33] = 47;
  v0[34] = 0xE100000000000000;
  sub_D030();
  v4 = sub_16AB34();
  v5 = sub_15AE4(v4);
  v7 = v6;

  if (v7)
  {
    v59._countAndFlagsBits = 32;
    v59._object = 0xE100000000000000;
    sub_16A744(v59);
    v60._countAndFlagsBits = 0xD000000000000025;
    v60._object = 0x8000000000182560;
    sub_16A744(v60);
    v8 = v5;
    v1 = v7;
  }

  else
  {
    v8 = 0xD000000000000025;
  }

  v56 = v8;
  v57._countAndFlagsBits = 58;
  v57._object = 0xE100000000000000;
  v0[35] = 26;
  v61._countAndFlagsBits = sub_16AE24();
  sub_16A744(v61);

  sub_16A744(v57);

  v9._countAndFlagsBits = sub_378D0(0x8002uLL);
  if (v9._object)
  {
    v57._countAndFlagsBits = 32;
    v57._object = 0xE100000000000000;
    sub_16A744(v9);

    v62._countAndFlagsBits = 32;
    v62._object = 0xE100000000000000;
    sub_16A744(v62);
  }

  v10 = sub_16A574();
  if (os_log_type_enabled(v10, v3))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v57._countAndFlagsBits = v12;
    *v11 = 136315138;
    v13 = sub_15BC8(v56, v1, &v57._countAndFlagsBits);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_0, v10, v3, "%s", v11, 0xCu);
    sub_D13C(v12);
  }

  else
  {
  }

  v14 = v0[38];
  swift_beginAccess();
  sub_D084((v14 + 136), *(v14 + 160));
  if (sub_11B5C0())
  {
    sub_169094();
    sub_16A1B4();
    v16 = v15;

    v0[43] = v16;
    if (!v16)
    {
      type metadata accessor for CarCommandsError(0);
      sub_4BE94(&qword_1E92F0, type metadata accessor for CarCommandsError, &unk_17A85C);
      swift_allocError();
      *v25 = 0xD00000000000002DLL;
      v25[1] = 0x8000000000182590;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_D37C();
      sub_D2C0();

      __asm { BRAA            X1, X16 }
    }

    v17 = sub_1690A4();
    v0[44] = [v17 carName];

    v18 = sub_169084();
    v19 = [v18 carSignal];

    if (v19)
    {
      [v19 unsignedIntegerValue];
    }

    v49 = sub_169084();
    v50 = [v49 signalActivated];

    sub_16484(0, &qword_1E6310, NSNumber_ptr);
    v51.super.super.isa = sub_16AAB4(1).super.super.isa;
    isa = v51.super.super.isa;
    if (v50)
    {
      sub_16AAD4();
    }

    else
    {
    }

    v53 = v0[38];
    type metadata accessor for SignalStatusSnippetFactory();
    swift_beginAccess();
    sub_10824(v53 + 184, (v0 + 17));
    v54 = swift_task_alloc();
    v0[45] = v54;
    *v54 = v0;
    v54[1] = sub_4A99C;
    sub_D2C0();

    return sub_126E58();
  }

  else
  {
    v20 = sub_1690A4();
    v0[47] = v20;
    v21 = sub_169084();
    v0[48] = v21;
    v22 = [v20 carName];
    if (v22)
    {
      v23 = v22;
      sub_99C94();

      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    v28 = v0[40];
    v29 = sub_16A0C4();
    sub_5370(v28, v24, 1, v29);
    v30 = [v21 signalActivated];
    sub_16484(0, &qword_1E6310, NSNumber_ptr);
    v31.super.super.isa = sub_16AAB4(1).super.super.isa;
    if (v30)
    {
      v32 = sub_16AAD4();
    }

    else
    {
      v32 = 0;
    }

    v33 = [v21 carSignal];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 unsignedIntegerValue];

      v36 = v35 == &dword_0 + 2;
    }

    else
    {
      v36 = 0;
    }

    sub_169094();
    sub_16A1B4();
    v38 = v37;

    if (v38)
    {
      sub_16A6E4();

      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v41 = v0[41];
    v40 = v0[42];
    v43 = v0[39];
    v42 = v0[40];
    v44 = v0[38];
    sub_5370(v43, v39, 1, v29);
    sub_16304(v42, v40);
    *(v40 + v41[5]) = v32 & 1;
    *(v40 + v41[6]) = v36;
    sub_16304(v43, v40 + v41[7]);
    sub_D084((v44 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin49GetSignalActivationStatusHandleIntentFlowStrategy_commonPatterns), *(v44 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin49GetSignalActivationStatusHandleIntentFlowStrategy_commonPatterns + 24));
    v45 = swift_task_alloc();
    v0[49] = v45;
    *v45 = v0;
    v45[1] = sub_4AB40;
    sub_D2C0();

    return sub_156C3C(v46);
  }
}

uint64_t sub_4A99C()
{
  v2 = *v1;
  v3 = *v1;
  sub_D254();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 368) = v0;

  v6 = *(v2 + 352);
  sub_D13C((v3 + 136));

  if (v0)
  {

    return _swift_task_switch(sub_4AF4C);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_4AB40()
{
  sub_D2DC();
  sub_D358();
  *(v2 + 400) = v1;
  *(v2 + 408) = v0;

  if (v0)
  {
    v3 = sub_4AE14;
  }

  else
  {
    v3 = sub_4AC4C;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_4AC4C()
{
  sub_D2DC();
  v1 = *(v0 + 304);
  swift_beginAccess();
  sub_10824(v1 + 184, v0 + 96);
  v2 = swift_task_alloc();
  *(v0 + 416) = v2;
  *v2 = v0;
  v2[1] = sub_4AD08;

  return sub_11A570();
}

uint64_t sub_4AD08()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v3 + 424) = v0;

  sub_D13C((v3 + 96));
  if (v0)
  {
    v6 = sub_4AFC4;
  }

  else
  {
    v6 = sub_4AEA4;
  }

  return _swift_task_switch(v6);
}

uint64_t sub_4AE14()
{
  sub_1696C();
  v1 = *(v0 + 376);
  v2 = *(v0 + 336);

  sub_4BE38(v2);

  sub_D37C();

  return v3();
}

uint64_t sub_4AEA4()
{
  sub_1696C();
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  v3 = *(v0 + 336);
  v4 = *(v0 + 288);

  sub_4BE38(v3);
  sub_D250((v0 + 56), v4);

  sub_D37C();

  return v5();
}

uint64_t sub_4AF4C()
{
  sub_1696C();

  sub_D37C();

  return v0();
}

uint64_t sub_4AFC4()
{
  sub_1696C();
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  v3 = *(v0 + 336);

  sub_4BE38(v3);

  sub_D37C();

  return v4();
}

void sub_4B05C()
{
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin49GetSignalActivationStatusHandleIntentFlowStrategy_commonPatterns));
  v1 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin49GetSignalActivationStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
}

void *sub_4B09C()
{
  v0 = sub_3D044();
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin49GetSignalActivationStatusHandleIntentFlowStrategy_commonPatterns));

  return v0;
}

uint64_t sub_4B0E4()
{
  v0 = sub_4B09C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for GetSignalActivationStatusHandleIntentFlowStrategy(uint64_t a1)
{
  result = qword_1E6BA0;
  if (!qword_1E6BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4B1D8(uint64_t a1)
{
  result = sub_4BE94(&qword_1E6DB0, type metadata accessor for GetSignalActivationStatusHandleIntentFlowStrategy, &unk_16EB98);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_4B234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  SignalActivationStatusHandleIntentFlowStrategy = type metadata accessor for GetSignalActivationStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, SignalActivationStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_4B2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  SignalActivationStatusHandleIntentFlowStrategy = type metadata accessor for GetSignalActivationStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, SignalActivationStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_4B3C4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10A9C;

  return sub_4B484(a1);
}

uint64_t sub_4B484(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_168414();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_4BEDC);
}

uint64_t sub_4B544()
{
  sub_D2DC();
  v2 = sub_4BEF4(v1);
  sub_4BEE0(v2);
  *(v0 + 40) = v3;
  *(v0 + 48) = sub_D3C8();
  v4 = sub_D388();

  return _swift_task_switch(v4);
}

uint64_t sub_4B5DC()
{
  sub_D2DC();
  v2 = sub_4BEF4(v1);
  sub_4BEE0(v2);
  *(v0 + 40) = v3;
  *(v0 + 48) = sub_D3C8();
  v4 = sub_D388();

  return _swift_task_switch(v4);
}

uint64_t sub_4B674()
{
  if (*(*(v0[3] + 224) + 16) == 1)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v1 = sub_16A584();
    sub_9DA0(v1, qword_1E65C0);
    v2 = sub_16A9A4();
    sub_386D8(v2, 2uLL, 0xD00000000000008DLL, 0x8000000000182350, 0xD000000000000025, 0x80000000001823E0, 13, 0xD000000000000049, 0x8000000000182460);
    sub_168BB4();
    sub_168BA4();
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];
    v6 = v0[2];
    v7 = sub_16A584();
    sub_9DA0(v7, qword_1E65C0);
    v8 = sub_16A9A4();
    sub_386D8(v8, 2uLL, 0xD00000000000008DLL, 0x8000000000182350, 0xD000000000000025, 0x80000000001823E0, 17, 0xD000000000000047, 0x8000000000182410);
    sub_168404();
    sub_1683D4();
    (*(v4 + 8))(v3, v5);
    v9 = [objc_allocWithZone(SAUIAddViews) init];
    v10 = sub_16A644();
    [v9 setAceId:v10];

    v11 = [objc_allocWithZone(SAAceView) init];
    v12 = sub_16A644();

    [v11 setRefId:v12];

    sub_5758(&qword_1EA2B0, &qword_16DFB0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_16D440;
    *(v13 + 32) = v11;
    sub_16484(0, &qword_1E6DB8, SAAceView_ptr);
    v14 = v11;
    isa = sub_16A7C4().super.isa;

    [v9 setViews:isa];

    [v9 setDialogPhase:SAUIDialogPhaseClarificationValue];
    [v9 setTemporary:1];
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_16D440;
    *(v16 + 32) = v9;
    v6[3] = sub_169434();
    v6[4] = &protocol witness table for AceOutput;
    sub_10888(v6);
    v17 = v9;
    sub_169424();
  }

  sub_D37C();

  return v18();
}

uint64_t sub_4BA30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_4A0A8();
}

uint64_t sub_4BADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  SignalActivationStatusHandleIntentFlowStrategy = type metadata accessor for GetSignalActivationStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, SignalActivationStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_4BBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  SignalActivationStatusHandleIntentFlowStrategy = type metadata accessor for GetSignalActivationStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, SignalActivationStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_4BC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  SignalActivationStatusHandleIntentFlowStrategy = type metadata accessor for GetSignalActivationStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_1039C;

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, SignalActivationStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_4BD34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_36648;

  return sub_44408();
}

uint64_t sub_4BE38(uint64_t a1)
{
  v2 = type metadata accessor for SignalActivationParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4BE94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_4BEF4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;

  return sub_168414();
}

uint64_t sub_4BF0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  sub_D084(v3 + 5, v3[8]);
  v6 = sub_5A52C(a1, v4);
  switch(v4)
  {
    case 1u:
      v30 = v3[3];
      v31 = v3[4];
      sub_4C840();
      sub_4C818();
      v33 = v32(v30, v31);
      if (v33 <= a1)
      {
        v35 = a1;
      }

      else
      {
        v35 = v33;
      }

      if (v34 <= a1)
      {
        v16 = v34;
      }

      else
      {
        v16 = v35;
      }

      goto LABEL_26;
    case 2u:
      v29 = sub_4C40C(a1);
      goto LABEL_19;
    case 3u:
      v29 = sub_4C52C(a1);
LABEL_19:
      v16 = v29;
      goto LABEL_26;
    case 4u:
      v17 = v6;
      switch(a1)
      {
        case 1:
          sub_4C7D4();
          v51 = sub_4C7F8();
          v53 = v52(v51);
          v54 = v3[3];
          v55 = v3[4];
          sub_4C840();
          sub_4C818();
          v57 = v56(v54, v55);
          if (v58 <= 0)
          {
            v16 = v58;
          }

          else
          {
            v16 = v57 & ~(v57 >> 63);
          }

          if (v53)
          {
            return v16;
          }

          goto LABEL_26;
        case 2:
        case 3:
        case 4:
          sub_4C824();
          v40 = sub_4C808();
          v42 = v41(v40);
          sub_4C608(v17, 0, 10, v42, v43);
          goto LABEL_19;
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
          sub_4C824();
          v18 = sub_4C808();
          v20 = v19(v18);
          v22 = v21;
          v23 = v3[3];
          v24 = v3[4];
          sub_D084(v3, v23);
          v25 = (*(v24 + 16))(v23, v24);
          sub_4C608(v17, 0, 10, v20, v22);
          v27 = v25 + v26;
          if (__OFADD__(v25, v26))
          {
            goto LABEL_46;
          }

          if (v20 <= v27)
          {
            v28 = v25 + v26;
          }

          else
          {
            v28 = v20;
          }

          if (v27 >= v22)
          {
            v16 = v22;
          }

          else
          {
            v16 = v28;
          }

          goto LABEL_26;
        default:
          sub_4C7D4();
          v44 = sub_4C7F8();
          v46 = v45(v44);
          v47 = v3[3];
          v48 = v3[4];
          sub_4C840();
          if (!v46)
          {
            v59 = (*(v48 + 8))(v47, v48);
            v61 = v60;
            sub_4C608(2, 0, 10, v59, v60);
            if (v59 <= v62)
            {
              v63 = v62;
            }

            else
            {
              v63 = v59;
            }

            if (v62 >= v61)
            {
              v16 = v61;
            }

            else
            {
              v16 = v63;
            }

            goto LABEL_26;
          }

          v16 = (*(v48 + 16))(v47, v48);
          sub_4C824();
          v49 = sub_4C808();
          if ((v50(v49) & 1) == 0)
          {
            goto LABEL_26;
          }

          break;
      }

      return v16;
    default:
      v7 = v3[3];
      v8 = v3[4];
      sub_4C840();
      v9 = (*(v8 + 16))(v7, v8);
      v10 = a1 + v9;
      if (__OFADD__(a1, v9))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        JUMPOUT(0x4C3C4);
      }

      sub_4C7D4();
      v11 = sub_4C7F8();
      v13 = v12(v11);
      if (v13 <= v10)
      {
        v15 = v10;
      }

      else
      {
        v15 = v13;
      }

      if (v10 >= v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = v15;
      }

LABEL_26:
      sub_16ACF4(16);
      v64._countAndFlagsBits = 0x20676E6974746553;
      v64._object = 0xE800000000000000;
      sub_16A744(v64);
      sub_16AD84();
      v65._countAndFlagsBits = 544175136;
      v65._object = 0xE400000000000000;
      sub_16A744(v65);
      v66._countAndFlagsBits = sub_16AE24();
      sub_16A744(v66);

      if (qword_1E58E8 != -1)
      {
        swift_once();
      }

      v36 = sub_16A584();
      v37 = sub_9DA0(v36, qword_1E65C0);
      v38 = sub_16A9A4();
      sub_386D8(v38, 0x400000uLL, 0xD00000000000007ELL, 0x80000000001825C0, 0x2865747563657865, 0xEB00000000293A5FLL, 49, 0, 0xE000000000000000);

      sub_4C824();
      (*(v37 + 24))(v16, 0xE000000000000000, v37);
      return v16;
  }
}

uint64_t sub_4C40C(uint64_t a1)
{
  sub_D084(v1, v1[3]);
  v3 = sub_4C808();
  v5 = v4(v3);
  v6 = v1[3];
  v7 = v1[4];
  sub_D084(v1, v6);
  sub_4C818();
  v8(v6, v7);
  v10 = v9;
  v11 = v1[3];
  v12 = v1[4];
  sub_D084(v1, v11);
  sub_4C818();
  result = v13(v11, v12);
  if (__OFSUB__(v10, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_4C6D4((a1 / 100.0) * (v10 - result));
  v15 = v5 + result;
  if (__OFADD__(v5, result))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_4C7D4();
  v16 = sub_4C7F8();
  v18 = v17(v16);
  if (v18 <= v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = v18;
  }

  if (v15 >= v19)
  {
    return v19;
  }

  else
  {
    return v20;
  }
}

uint64_t sub_4C52C(uint64_t a1)
{
  v3 = a1 / 100.0;
  sub_D084(v1, v1[3]);
  v4 = sub_4C808();
  v6 = v5(v4);
  v7 = sub_4C6D4(v3 * v6);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = (a1 >> 63) | 1;
  }

  sub_4C7D4();
  v9 = sub_4C7F8();
  result = v10(v9);
  v12 = __OFADD__(result, v8);
  v13 = result + v8;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_4C7D4();
    v14 = sub_4C7F8();
    v16 = v15(v14);
    if (v16 <= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v16;
    }

    if (v13 >= v17)
    {
      return v17;
    }

    else
    {
      return v18;
    }
  }

  return result;
}

void sub_4C608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (((a1 - a2) / (a3 - a2)) * (a5 - a4)) + a4;
  if (v5 < 0.0)
  {
    v5 = floorf(v5);
    if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
      goto LABEL_11;
    }

    if (v5 <= -9.2234e18)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    if (v5 < 9.2234e18)
    {
      return;
    }

    __break(1u);
  }

  v6 = ceilf(v5);
  if ((LODWORD(v6) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 <= -9.2234e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v6 >= 9.2234e18)
  {
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_4C6D4(float a1)
{
  v1 = roundf((a1 / 10.0) * 10.0);
  if ((LODWORD(v1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.2234e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_4C730(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_4C770(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_4C824()
{
  v2 = v0[3];

  return sub_D084(v0, v2);
}

void *sub_4C840()
{

  return sub_D084(v0, v1);
}

uint64_t sub_4C858()
{
  v1 = sub_168F64();
  sub_9F48();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow____lazy_storage___unlockFlow;
  if (*(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow____lazy_storage___unlockFlow))
  {
    v8 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow____lazy_storage___unlockFlow);
  }

  else
  {
    sub_5758(&qword_1E6F80, &qword_16EE38);
    sub_1687C4();
    *(swift_allocObject() + 16) = xmmword_16D9A0;
    (*(v3 + 16))(v6, v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow_unlockDevicePolicy, v1);
    sub_1687B4();
    (*(v3 + 8))(v6, v1);
    v8 = sub_168484();

    *(v0 + v7) = v8;
  }

  return v8;
}

uint64_t sub_4CA24(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow_input;
  v10 = sub_1693A4();
  sub_5370(v4 + v9, 1, 1, v10);
  *(v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow____lazy_storage___unlockFlow) = 0;
  *(v4 + 16) = a1;
  sub_D124(a2, v4 + 24);
  sub_D124(a3, v4 + 64);
  v11 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow_unlockDevicePolicy;
  sub_168F64();
  sub_10AFC();
  (*(v12 + 32))(v4 + v11, a4);
  return v4;
}

uint64_t sub_4CAEC(uint64_t a1)
{
  v3 = sub_5758(&qword_1E6F70, &qword_16EE30);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_1693A4();
  sub_10AFC();
  (*(v7 + 16))(v5, a1, v6);
  sub_5370(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow_input;
  swift_beginAccess();
  sub_4DBA0(v5, v1 + v8);
  swift_endAccess();
  return 1;
}

uint64_t sub_4CBE8(uint64_t a1, uint64_t a2)
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  sub_386D8(v3, 2uLL, 0xD00000000000007FLL, 0x80000000001826D0, 0xD000000000000014, 0x8000000000182830, 37, 0xD000000000000025, 0x8000000000182850);
  type metadata accessor for CommonCheckLockScreenFlow(0);
  sub_4DB48();
  return sub_168934();
}

uint64_t sub_4CCF4(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_168F64();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_4CDB4);
}

uint64_t sub_4CDB4()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  sub_10824(v4 + 24, (v0 + 2));
  sub_D084(v0 + 2, v0[5]);
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow_unlockDevicePolicy, v3);
  v5 = sub_168AE4();
  (*(v2 + 8))(v1, v3);
  sub_D13C(v0 + 2);
  if (v5)
  {
    sub_4CEC4();
  }

  else
  {
    sub_4D1D0();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_4CEC4()
{
  v1 = v0;
  v2 = sub_5758(&qword_1E6F70, &qword_16EE30);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_1693A4();
  sub_9F48();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow_input;
  swift_beginAccess();
  sub_4DA70(v1 + v11, v4);
  if (sub_9E2C(v4, 1, v5) == 1)
  {
    sub_4DAE0(v4);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v12 = sub_16A584();
    sub_9DA0(v12, qword_1E65C0);
    v13 = sub_16A9A4();
    sub_386D8(v13, 2uLL, 0xD00000000000007FLL, 0x80000000001826D0, 0xD000000000000011, 0x80000000001827C0, 51, 0xD00000000000001CLL, 0x80000000001827E0);
    return sub_168D54();
  }

  else
  {
    (*(v7 + 32))(v10, v4, v5);

    v15 = sub_168794();

    if (v15)
    {

      sub_168D44();
    }

    else
    {
      if (qword_1E58E8 != -1)
      {
        sub_9ED4(&qword_1E58E8);
      }

      v16 = sub_16A584();
      sub_9DA0(v16, qword_1E65C0);
      v17 = sub_16A9A4();
      sub_386D8(v17, 2uLL, 0xD00000000000007FLL, 0x80000000001826D0, 0xD000000000000011, 0x80000000001827C0, 56, 0xD00000000000002ALL, 0x8000000000182800);
      sub_168D54();
    }

    return (*(v7 + 8))(v10, v5);
  }
}

uint64_t sub_4D1D0()
{
  sub_4C858();
  v1 = swift_allocObject();
  *(v1 + 16) = sub_4DA00;
  *(v1 + 24) = v0;
  sub_1687A4();

  sub_168D34();
}

void sub_4D2B0(char a1)
{
  if (a1)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v1 = sub_16A584();
    sub_9DA0(v1, qword_1E65C0);
    sub_16A9A4();
    sub_4DC10();
    v9 = 70;
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v10 = sub_16A584();
    sub_9DA0(v10, qword_1E65C0);
    sub_16A9A4();
    sub_4DC10();
    v9 = 72;
  }

  sub_386D8(v2, v3, v4, v5, v6, v7, v9, v8, v11);
}

char *sub_4D3B8()
{

  sub_D13C((v0 + 24));
  sub_D13C((v0 + 64));
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow_unlockDevicePolicy;
  sub_168F64();
  sub_10AFC();
  (*(v2 + 8))(v0 + v1);
  sub_4DAE0(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow_input);

  return v0;
}

uint64_t sub_4D448()
{
  sub_4D3B8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for CommonCheckLockScreenFlow(uint64_t a1)
{
  result = qword_1E6DF8;
  if (!qword_1E6DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4D4F4(uint64_t a1)
{
  sub_168F64();
  if (v1 <= 0x3F)
  {
    sub_4D5E4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_4D5E4(uint64_t a1)
{
  if (!qword_1E6E08)
  {
    sub_1693A4();
    v1 = sub_16AB24();
    if (!v2)
    {
      atomic_store(v1, &qword_1E6E08);
    }
  }
}

uint64_t sub_4D664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_4D714;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_4D714(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_4D834(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_4D8D0;

  return sub_4CCF4(a1);
}

uint64_t sub_4D8D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_4D9C4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CommonCheckLockScreenFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_4DA0C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4DA70(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E6F70, &qword_16EE30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4DAE0(uint64_t a1)
{
  v2 = sub_5758(&qword_1E6F70, &qword_16EE30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_4DB48()
{
  result = qword_1E6F78;
  if (!qword_1E6F78)
  {
    type metadata accessor for CommonCheckLockScreenFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E6F78);
  }

  return result;
}

uint64_t sub_4DBA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E6F70, &qword_16EE30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_4DC30(char a1, uint64_t a2)
{
  *(v2 + 128) = a2;
  *(v2 + 200) = a1;
  return _swift_task_switch(sub_4DC54);
}

uint64_t sub_4DC54()
{
  sub_10824(*(v0 + 128), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_4DCF8;
  v2 = *(v0 + 200);

  return sub_13D110(v2, v0 + 16);
}

uint64_t sub_4DCF8()
{
  v2 = *v1;
  sub_D2A4();
  *v3 = v2;
  v2[12] = v1;
  v2[13] = v4;
  v2[14] = v5;
  v2[15] = v0;
  v6 = *v1;
  sub_D2A4();
  *v7 = v6;
  v2[18] = v8;
  v2[19] = v0;

  sub_4E194((v2 + 2));
  if (v0)
  {
    v9 = sub_4E184;
  }

  else
  {
    v9 = sub_4DE14;
  }

  return _swift_task_switch(v9);
}

uint64_t sub_4DE14()
{
  sub_10824(*(v0 + 128), v0 + 56);
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_4DEB8;
  v2 = *(v0 + 200);

  return sub_13D398(v2, v0 + 56);
}

uint64_t sub_4DEB8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  sub_D2A4();
  *v7 = v6;
  v8 = *v3;
  sub_D2A4();
  *v9 = v8;
  v6[21] = v2;

  if (v2)
  {
    sub_4E194((v6 + 7));

    v10 = sub_4E18C;
  }

  else
  {
    v11 = v6[13];
    v6[22] = a2;
    v6[23] = a1;
    v6[24] = v11;
    sub_4E194((v6 + 7));
    v10 = sub_4E008;
  }

  return _swift_task_switch(v10);
}

uint64_t sub_4E008()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[18];
  sub_16484(0, &qword_1EA2C0, SAUIConfirmationOption_ptr);
  v5 = sub_16A664();
  v7 = sub_B7618(v2, v3, v5, v6);
  v8 = sub_16A664();
  v10 = sub_B7618(v1, v4, v8, v9);
  sub_16484(0, &qword_1E6F88, SAUIConfirmationView_ptr);
  v11 = v7;
  v12 = v10;
  v13 = sub_B7704(v11, v12);
  [v13 setCanUseServerTTS:0];
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_16D440;
  *(v14 + 32) = v13;

  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_4E194(uint64_t a1)
{
  v2 = sub_5758(&qword_1E6030, &unk_173620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CarCommandsGetLockStatusCATsSimple(uint64_t a1)
{
  result = qword_1E6F90;
  if (!qword_1E6F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4E288(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_4E338);
}

uint64_t sub_4E338()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  *(v3 + 16) = xmmword_16EE50;
  *(v3 + 32) = 0x656D614E726163;
  *(v3 + 40) = 0xE700000000000000;
  sub_4EA90(v2, v1, &qword_1E6300, &qword_16ECE0);
  v4 = sub_16A0C4();
  if (sub_9E2C(v1, 1, v4) == 1)
  {
    sub_4EAF4(*(v0 + 48), &qword_1E6300, &qword_16ECE0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    sub_10888((v3 + 48));
    sub_4EB50();
    (*(v5 + 32))();
  }

  v6 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8 = *(v0 + 80);
  *(v3 + 80) = 0x64656B636F6CLL;
  *(v3 + 88) = 0xE600000000000000;
  *(v3 + 96) = v8;
  *(v3 + 120) = &type metadata for Bool;
  strcpy((v3 + 128), "appIdentifer");
  *(v3 + 141) = 0;
  *(v3 + 142) = -5120;
  sub_4EA90(v7, v6, &qword_1E6300, &qword_16ECE0);
  if (sub_9E2C(v6, 1, v4) == 1)
  {
    sub_4EAF4(*(v0 + 40), &qword_1E6300, &qword_16ECE0);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v4;
    sub_10888((v3 + 144));
    sub_4EB50();
    (*(v9 + 32))();
  }

  v12 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_4E5D8;

  return v12(0xD00000000000002ELL, 0x80000000001828D0, v3);
}

uint64_t sub_4E5D8(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 72) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_4E740);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_4E740()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_4E80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16A164();
  sub_5B1C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v11 - 8);
  sub_4EA90(a1, &v15 - v12, &qword_1E5B48, &unk_16DDB0);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_16A0D4();
  (*(v7 + 8))(a2, v3);
  sub_4EAF4(a1, &qword_1E5B48, &unk_16DDB0);
  return v13;
}

uint64_t sub_4E988(uint64_t a1, uint64_t a2)
{
  sub_16A164();
  sub_5B1C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16A0E4();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_4EA90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_5758(a3, a4);
  sub_4EB50();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_4EAF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_5758(a2, a3);
  sub_4EB50();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_4EB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[13] = a7;
  v8[14] = v7;
  v9 = sub_4FB90(a1, a2, a3, a4, a5, a6);
  v8[15] = v9;
  sub_10AEC(v9);
  v8[16] = v10;
  v8[17] = sub_D3C8();
  v11 = sub_16A2A4();
  v8[18] = v11;
  sub_10AEC(v11);
  v8[19] = v12;
  v8[20] = sub_D3C8();
  v13 = sub_D388();

  return _swift_task_switch(v13);
}

uint64_t sub_4EC80()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[13];
  v5 = v0[12];

  sub_16A294();
  sub_D084(v4, v4[3]);
  v6 = sub_16A284();
  v0[5] = v6;
  v0[6] = sub_4FB1C();
  v7 = sub_10888(v0 + 2);
  (*(v1 + 16))(v7, v2, v3);
  (*(*(v6 - 8) + 104))(v7, enum case for CarCommandsSnippetsPluginModel.appPunchout(_:), v6);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v8 = swift_allocObject();
  v0[21] = v8;
  *(v8 + 16) = xmmword_16D440;
  *(v8 + 32) = v5;
  v9 = v5;
  sub_4F068(0xD000000000000019, 0x8000000000182980);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_4EE70;
  v11 = sub_4FB7C();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v11);
}

uint64_t sub_4EE70()
{
  sub_D3A4();
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v7 = *v0;
  sub_D254();
  *v4 = v7;

  (*(v2 + 8))(v1, v3);
  sub_D13C((v7 + 16));
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_4EFE0()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_4F068(uint64_t a1, uint64_t a2)
{
  v2 = sub_168B74();
  __chkstk_darwin(v2 - 8);
  sub_168B34();
  return sub_169164();
}

uint64_t sub_4F114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[15] = v17;
  v9[16] = v8;
  v9[13] = a7;
  v9[14] = a8;
  v10 = sub_4FB90(a1, a2, a3, a4, a5, a6);
  v9[17] = v10;
  sub_10AEC(v10);
  v9[18] = v11;
  v9[19] = sub_D3C8();
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v9[20] = swift_task_alloc();
  v9[21] = swift_task_alloc();
  sub_16A164();
  v9[22] = sub_D3C8();
  v12 = sub_16A2A4();
  v9[23] = v12;
  sub_10AEC(v12);
  v9[24] = v13;
  v9[25] = sub_D3C8();
  v14 = sub_D388();

  return _swift_task_switch(v14);
}

uint64_t sub_4F278()
{
  v1 = v0[21];
  v2 = v0[20];

  sub_16A294();
  type metadata accessor for CarCommandsCATsSimple(0);
  sub_16A154();
  v0[26] = sub_16A0F4();
  sub_16A6E4();
  v3 = sub_16A0C4();
  sub_5370(v1, 0, 1, v3);
  sub_16A6E4();
  sub_5370(v2, 0, 1, v3);
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_4F408;

  return sub_DFC94();
}

uint64_t sub_4F408()
{
  sub_D3A4();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 224) = v0;

  v7 = *(v4 + 168);
  v8 = *(v4 + 160);
  if (v0)
  {
    sub_4FAB4(v8);
    sub_4FAB4(v7);
    v9 = sub_4F97C;
  }

  else
  {
    *(v5 + 232) = v3;
    sub_4FAB4(v8);
    sub_4FAB4(v7);
    v9 = sub_4F584;
  }

  return _swift_task_switch(v9);
}

uint64_t sub_4F584()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 184);
  sub_D084(*(v0 + 120), *(*(v0 + 120) + 24));
  v5 = sub_16A284();
  *(v0 + 40) = v5;
  *(v0 + 48) = sub_4FB1C();
  v6 = sub_10888((v0 + 16));
  (*(v2 + 16))(v6, v3, v4);
  (*(*(v5 - 8) + 104))(v6, enum case for CarCommandsSnippetsPluginModel.appPunchout(_:), v5);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v7 = swift_allocObject();
  *(v0 + 240) = v7;
  *(v7 + 16) = xmmword_16D440;
  *(v7 + 32) = v1;
  v8 = v1;
  sub_4F068(0xD000000000000019, 0x8000000000182980);
  v9 = swift_task_alloc();
  *(v0 + 248) = v9;
  *v9 = v0;
  v9[1] = sub_4F740;
  v10 = sub_4FB7C();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v10);
}

uint64_t sub_4F740()
{
  sub_D3A4();
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v7 = *v0;
  sub_D254();
  *v4 = v7;

  (*(v2 + 8))(v1, v3);
  sub_D13C((v7 + 16));
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_4F8B0()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_4F97C()
{
  sub_D3A4();
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_4FA30(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_169194();

  sub_169184();
  return sub_1691D4();
}

uint64_t sub_4FAB4(uint64_t a1)
{
  v2 = sub_5758(&qword_1E6300, &qword_16ECE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_4FB1C()
{
  result = qword_1E7118;
  if (!qword_1E7118)
  {
    sub_16A284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E7118);
  }

  return result;
}

uint64_t sub_4FB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;

  return sub_1691E4();
}

uint64_t sub_4FBB0()
{
  sub_D2DC();
  v1[7] = v2;
  v1[8] = v0;
  sub_16A164();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_4FC3C);
}

uint64_t sub_4FC3C()
{
  sub_D2DC();
  type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  *(v0 + 80) = sub_16A094();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_4FD00;

  return sub_156570(12, _swiftEmptyArrayStorage);
}

uint64_t sub_4FD00()
{
  sub_D2DC();
  v2 = *v1;
  sub_D2A4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 96) = v4;
  *(v2 + 104) = v0;

  if (v0)
  {
    v5 = sub_4FFD4;
  }

  else
  {

    v5 = sub_4FE14;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_4FE14()
{
  sub_D2DC();
  sub_10824(*(v0 + 64) + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin23CommonMisunderstoodFlow_responseGenerator, v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_4FEC4;

  return sub_11A570();
}

uint64_t sub_4FEC4()
{
  sub_D2DC();
  v2 = *v1;
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D2A4();
  *v5 = v4;
  *(v2 + 120) = v0;

  sub_D13C((v2 + 16));
  if (v0)
  {
    v6 = sub_500A0;
  }

  else
  {
    v6 = sub_50038;
  }

  return _swift_task_switch(v6);
}

uint64_t sub_4FFD4()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_50038()
{
  sub_D2DC();

  sub_D37C();

  return v1();
}

uint64_t sub_500A0()
{
  sub_D2DC();

  sub_D37C();

  return v1();
}

uint64_t sub_50104(__int128 *a1, __int128 *a2)
{
  v3 = v2;
  v6 = (v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin23CommonMisunderstoodFlow_featureFlagHelper);
  v7 = type metadata accessor for FeatureFlagHelper();
  v8 = swift_allocObject();
  v6[3] = v7;
  v6[4] = &off_1D9AF0;
  *v6 = v8;
  v9 = (v3 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin23CommonMisunderstoodFlow_responseGenerator);
  v10 = sub_168E34();
  swift_allocObject();
  v11 = sub_168E24();
  v9[3] = v10;
  v9[4] = &protocol witness table for ResponseFactory;
  *v9 = v11;

  return sub_74260(a1, a2);
}

uint64_t sub_501C4()
{
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin23CommonMisunderstoodFlow_featureFlagHelper));
  v1 = (v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin23CommonMisunderstoodFlow_responseGenerator);

  return sub_D13C(v1);
}

uint64_t sub_50204()
{
  v0 = sub_735DC();
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin23CommonMisunderstoodFlow_featureFlagHelper;

  sub_D13C((v2 + v1));
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin23CommonMisunderstoodFlow_responseGenerator));

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for CommonMisunderstoodFlow(uint64_t a1)
{
  result = qword_1E7148;
  if (!qword_1E7148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5032C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_503C8;

  return sub_4FBB0();
}

uint64_t sub_503C8()
{
  sub_D2DC();
  v1 = *v0;
  sub_D2A4();
  *v2 = v1;

  sub_D37C();

  return v3();
}

uint64_t sub_504E4()
{
  sub_D2DC();
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  *(v1 + 249) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  *(v1 + 248) = v6;
  *(v1 + 96) = v7;
  *(v1 + 104) = v8;
  sub_5758(&qword_1E5F78, &unk_16D400);
  *(v1 + 144) = sub_D3C8();
  v9 = sub_1691E4();
  *(v1 + 152) = v9;
  *(v1 + 160) = *(v9 - 8);
  *(v1 + 168) = sub_D3C8();
  v10 = sub_16A284();
  *(v1 + 176) = v10;
  *(v1 + 184) = *(v10 - 8);
  *(v1 + 192) = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v11);
}

uint64_t sub_50628()
{
  v1 = *(v0 + 248);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    v10[1] = sub_50930;
    v11 = *(v0 + 249);
    v12 = *(v0 + 112);
    v13 = *(v0 + 120);
    v14 = *(v0 + 104);
    v15 = *(v0 + 248);

    return sub_51044(v15, v14, v12, v13, v11);
  }

  else
  {
    sub_16ACF4(24);

    sub_5244C();
    v17 = v2;
    v18 = v3;
    v4 = qword_1E7340;
    v5 = off_1E7348;

    v20._countAndFlagsBits = v4;
    v20._object = v5;
    sub_16A744(v20);

    v21._countAndFlagsBits = 0x6873657266657220;
    v21._object = 0xEF74757074754F20;
    sub_16A744(v21);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v6 = *(v0 + 128);
    v7 = sub_16A584();
    sub_9DA0(v7, qword_1E65C0);
    v8 = sub_16A9A4();
    sub_386D8(v8, 2uLL, 0xD000000000000092, 0x8000000000182AA0, 0xD00000000000004CLL, 0x8000000000182B90, 30, v17, v18);

    sub_D084(v6, v6[3]);
    *(v0 + 80) = sub_16A2E4();
    *(v0 + 88) = sub_52248(&qword_1E7408, &type metadata accessor for CarCommandsToggleSnippetUpdateValue, &protocol conformance descriptor for CarCommandsToggleSnippetUpdateValue);
    sub_10888((v0 + 56));

    sub_16A2D4();
    sub_168F04();

    sub_D13C((v0 + 56));

    sub_D37C();

    return v9();
  }
}

uint64_t sub_50930()
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
    v9[1] = sub_50AC8;
    v10 = *(v3 + 192);
    v11 = *(v3 + 249);
    v12 = *(v3 + 112);
    v13 = *(v3 + 120);
    v14 = *(v3 + 104);

    return sub_517FC(v10, v14, v12, v13, v11);
  }
}

uint64_t sub_50AC8()
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

uint64_t sub_50BC4()
{
  v1 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v6[3];
  v18 = v6[4];
  sub_D084(v6, v7);
  v0[5] = v4;
  v0[6] = sub_52248(&qword_1E7118, &type metadata accessor for CarCommandsSnippetsPluginModel, &protocol conformance descriptor for CarCommandsSnippetsPluginModel);
  v8 = sub_10888(v0 + 2);
  (*(v3 + 16))(v8, v2, v4);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v9 = swift_allocObject();
  v0[29] = v9;
  *(v9 + 16) = xmmword_16D440;
  *(v9 + 32) = v1;
  v10 = qword_1E7340;
  v11 = off_1E7348;
  v12 = sub_168E14();
  sub_5370(v5, 1, 1, v12);
  v13 = v1;

  sub_67D38(v10, v11, v5);

  sub_D188(v5, &qword_1E5F78, &unk_16D400);
  v14 = swift_task_alloc();
  v0[30] = v14;
  *v14 = v0;
  v14[1] = sub_50DB8;
  v15 = v0[21];
  v16 = v0[12];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v16, v0 + 2, v9, v15, v7, v18);
}

uint64_t sub_50DB8()
{
  sub_10BC0();
  sub_D3A4();
  sub_D358();
  v2 = v1;
  sub_D2A4();
  *v3 = v2;
  v5 = v4[21];
  v6 = v4[20];
  v7 = v4[19];
  v8 = *v0;
  sub_D254();
  *v9 = v8;

  (*(v6 + 8))(v5, v7);
  sub_D13C((v2 + 16));
  sub_10B4C();
  sub_10BD4();

  return _swift_task_switch(v10);
}

uint64_t sub_50F1C()
{
  sub_1696C();
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);

  (*(v2 + 8))(v1, v3);

  sub_D37C();

  return v4();
}

uint64_t sub_50FC0()
{
  sub_1696C();

  sub_D37C();

  return v1();
}

uint64_t sub_51044(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
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

  return _swift_task_switch(sub_51130);
}

uint64_t sub_51130()
{
  v1 = *(v0 + 80);
  if (*(v0 + 168) == 2)
  {
    type metadata accessor for CarCommandsGetTrunkStatusCATsSimple(0);
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

    return sub_128E14(v8, v9, v10);
  }

  else
  {
    type metadata accessor for CarCommandsSetTrunkStatusCATsSimple(0);
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
    sub_5242C(*(v0 + 88));

    return sub_C33EC();
  }
}

uint64_t sub_51338()
{
  sub_10BC0();
  sub_D3A4();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v6 = *(v5 + 104);
  v7 = *(v5 + 96);
  v8 = *v1;
  sub_D254();
  *v9 = v8;
  *(v10 + 136) = v0;

  sub_D188(v7, &qword_1E6300, &qword_16ECE0);
  sub_D188(v6, &qword_1E6300, &qword_16ECE0);
  sub_10B4C();
  sub_10BD4();

  return _swift_task_switch(v11);
}

uint64_t sub_5149C()
{
  sub_10BC0();
  sub_D3A4();

  sub_302B8();
  sub_10BD4();

  return v2(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_51528()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  v6 = *(v5 + 88);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 160) = v0;

  sub_D188(v6, &qword_1E6300, &qword_16ECE0);
  sub_10B4C();

  return _swift_task_switch(v10);
}

uint64_t sub_51658()
{
  sub_10BC0();
  sub_D3A4();

  sub_302B8();
  sub_10BD4();

  return v2(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_516E4()
{
  sub_10BC0();
  sub_D3A4();

  sub_D37C();
  sub_10BD4();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_51770()
{
  sub_10BC0();
  sub_D3A4();

  sub_D37C();
  sub_10BD4();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_517FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 100) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  *(v5 + 48) = swift_task_alloc();
  sub_16A164();
  *(v5 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_518CC);
}

uint64_t sub_518CC()
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
  v6[1] = sub_519B8;
  sub_5242C(v0[6]);

  return sub_DE7E8();
}

uint64_t sub_519B8()
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

uint64_t sub_51B08()
{
  v1 = *(v0 + 40);
  *(v0 + 96) = 0;
  sub_16A134();
  *(v0 + 97) = 2;
  sub_16A134();
  *(v0 + 98) = 1;
  sub_16A134();
  *(v0 + 99) = 3;
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

  v5 = enum case for CarCommandsSnippetsPluginModel.trunkStatusModel(_:);
  v6 = sub_16A284();
  (*(*(v6 - 8) + 104))(v4, v5, v6);

  sub_D37C();

  return v7();
}

uint64_t sub_51CD4()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_51D38()
{
  sub_D2DC();
  v0[7] = v1;
  v0[8] = v2;
  sub_16A164();
  v0[9] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_51DB8()
{
  sub_16ACF4(31);

  sub_5244C();
  v9 = v1;
  v10 = v2;
  v3 = qword_1E7340;
  v4 = off_1E7348;

  v12._countAndFlagsBits = v3;
  v12._object = v4;
  sub_16A744(v12);

  v13._object = 0x8000000000182B70;
  v13._countAndFlagsBits = 0xD000000000000016;
  sub_16A744(v13);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  sub_386D8(v6, 2uLL, 0xD000000000000092, 0x8000000000182AA0, 0xD00000000000002BLL, 0x8000000000182B40, 56, v9, v10);

  type metadata accessor for CarCommandsCATsSimple(0);
  sub_16A154();
  *(v0 + 80) = sub_16A0F4();
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_51F88;

  return sub_DDC04();
}

uint64_t sub_51F88()
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

uint64_t sub_52094()
{
  sub_D084(*(v0 + 64), *(*(v0 + 64) + 24));

  sub_16A134();
  *(v0 + 40) = sub_16A354();
  *(v0 + 48) = sub_52248(&qword_1E7400, &type metadata accessor for CarCommandsToggleSnippetUpdateFailure, &protocol conformance descriptor for CarCommandsToggleSnippetUpdateFailure);
  sub_10888((v0 + 16));
  sub_16A344();
  sub_168F04();

  sub_D13C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_52248(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for TrunkStatusSnippetFactory.TrunkStatusParameters(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TrunkStatusSnippetFactory.TrunkStatusParameters(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x523F4);
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

uint64_t sub_52464()
{

  return sub_16A0F4();
}

uint64_t sub_52480()
{
  sub_D2DC();
  v1[63] = v2;
  v1[64] = v0;
  v1[62] = v3;
  v4 = sub_168454();
  v1[65] = v4;
  v1[66] = *(v4 - 8);
  v1[67] = sub_D3C8();
  v5 = sub_5758(&qword_1E7630, &qword_173610);
  v1[68] = v5;
  v1[69] = *(v5 - 8);
  v1[70] = sub_D3C8();
  v6 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v6);
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  PowerLevelHandleIntentParemeters = type metadata accessor for GetPowerLevelHandleIntentParemeters(0);
  v1[73] = PowerLevelHandleIntentParemeters;
  sub_D414(PowerLevelHandleIntentParemeters);
  v1[74] = sub_D3C8();
  v8 = type metadata accessor for CarCommandsError(0);
  v1[75] = v8;
  sub_D414(v8);
  v1[76] = sub_D3C8();
  v9 = sub_5758(&qword_1E7638, &qword_16F148);
  sub_D414(v9);
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v10);
}

uint64_t sub_52668()
{
  v102 = v0;
  sub_10824(*(v0 + 512) + 16, v0 + 64);
  sub_D084((v0 + 64), *(v0 + 88));
  sub_5758(&qword_1E7640, &unk_16F150);
  sub_169094();
  sub_D2604();

  sub_D13C((v0 + 64));
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v1 = sub_16A584();
  sub_9DA0(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  *(v0 + 440) = 0xD000000000000096;
  *(v0 + 448) = 0x8000000000182C30;
  *(v0 + 456) = 47;
  *(v0 + 464) = 0xE100000000000000;
  sub_D030();
  v3 = sub_16AB34();
  v4 = sub_15AE4(v3);
  v6 = v5;

  if (v6)
  {
    v103._countAndFlagsBits = 32;
    v103._object = 0xE100000000000000;
    sub_16A744(v103);
    v104._countAndFlagsBits = 0xD000000000000025;
    v104._object = 0x8000000000182560;
    sub_16A744(v104);
    v7 = v4;
    v8 = v6;
  }

  else
  {
    v7 = 0xD000000000000025;
    v8 = 0x8000000000182560;
  }

  v99 = v7;
  v100 = v8;
  v101._countAndFlagsBits = 58;
  v101._object = 0xE100000000000000;
  *(v0 + 472) = 22;
  v105._countAndFlagsBits = sub_16AE24();
  sub_16A744(v105);

  sub_16A744(v101);

  v9._countAndFlagsBits = sub_378D0(0x12uLL);
  if (v9._object)
  {
    v101._countAndFlagsBits = 32;
    v101._object = 0xE100000000000000;
    sub_16A744(v9);

    v106._countAndFlagsBits = 32;
    v106._object = 0xE100000000000000;
    sub_16A744(v106);
  }

  v10 = sub_16A574();
  if (os_log_type_enabled(v10, v2))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v101._countAndFlagsBits = v12;
    *v11 = 136315138;
    v13 = sub_15BC8(v99, v100, &v101._countAndFlagsBits);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_0, v10, v2, "%s", v11, 0xCu);
    sub_D13C(v12);
  }

  else
  {
  }

  v14 = sub_1690A4();
  *(v0 + 640) = v14;
  v15 = sub_169084();
  *(v0 + 648) = v15;
  v92 = sub_169094();
  *(v0 + 656) = v92;
  v91 = v14;
  v93 = v15;
  if (sub_16AA74() == 2)
  {
    v16 = [v15 distanceRemaining];
    v17 = v15;
    v18 = *(v0 + 632);
    v19 = *(v0 + 544);
    if (v16)
    {
      v20 = v16;
      sub_549EC();
      sub_1682E4();

      sub_5370(v18, 0, 1, v19);
      sub_109A0(v18, &qword_1E7638, &qword_16F148);
      v15 = v17;
    }

    else
    {
      sub_5370(*(v0 + 632), 1, 1, *(v0 + 544));
      sub_109A0(v18, &qword_1E7638, &qword_16F148);
      if ((sub_16AA64() & 0x100000000) != 0 && (sub_16AA54() & 0x100000000) != 0)
      {
        v74 = *(v0 + 608);
        v101._countAndFlagsBits = 0;
        v101._object = 0xE000000000000000;
        sub_16ACF4(48);

        sub_54B5C();
        v101._countAndFlagsBits = v76 - 7;
        v101._object = v75;
        *(v0 + 480) = v92;
        sub_16A1C4();
        sub_54888(qword_1E5FA8, &type metadata accessor for App, &protocol conformance descriptor for App);
        v107._countAndFlagsBits = sub_16AE24();
        sub_16A744(v107);

        v108._countAndFlagsBits = 0x206F6E2073616820;
        v108._object = 0xEE00203A61746164;
        sub_16A744(v108);
        v77 = [v15 description];
        v78 = sub_16A664();
        v80 = v79;

        v109._countAndFlagsBits = v78;
        v109._object = v80;
        sub_16A744(v109);

        object = v101._object;
        *v74 = v101._countAndFlagsBits;
        v74[1] = object;
        swift_storeEnumTagMultiPayload();
        sub_54AF0();
        sub_54888(v82, v83, &unk_17A85C);
        sub_54B8C();
        sub_548D0(v74, v84);
        v85 = sub_16A9A4();
        swift_getErrorValue();
        v86 = sub_16AEB4();
        sub_386D8(v85, 0x10uLL, 0xD000000000000096, 0x8000000000182C30, 0xD000000000000025, 0x8000000000182560, 30, v86, v87);

        sub_54B8C();
        sub_548D0(v74, v88);
        swift_willThrow();

        v73 = type metadata accessor for CarCommandsError;
        v72 = v74;
        goto LABEL_46;
      }
    }
  }

  v21 = [v14 carName];
  if (v21)
  {
    v22 = v21;
    sub_99C94();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = *(v0 + 576);
  v25 = sub_16A0C4();
  v26 = 1;
  sub_5370(v24, v23, 1, v25);
  v27 = [v15 distanceRemaining];
  if (v27)
  {
    v28 = v27;
    sub_549EC();
    sub_1682E4();

    v26 = 0;
  }

  v29 = *(v0 + 624);
  v30 = *(v0 + 616);
  v31 = *(v0 + 544);
  sub_5370(v30, v26, 1, v31);
  sub_54934(v30, v29, &qword_1E7638, &qword_16F148);
  v32 = sub_9E2C(v29, 1, v31);
  v33 = *(v0 + 624);
  if (v32)
  {
    sub_109A0(*(v0 + 624), &qword_1E7638, &qword_16F148);
    v34 = 0;
  }

  else
  {
    v35 = *(v0 + 560);
    v97 = v25;
    v36 = *(v0 + 552);
    v37 = *(v0 + 544);
    v38 = *(v0 + 536);
    v39 = *(v0 + 528);
    v40 = *(v0 + 520);
    v41 = *(v0 + 512);
    (*(v36 + 16))(v35, v33, v37);
    sub_109A0(v33, &qword_1E7638, &qword_16F148);
    sub_10824(v41 + 96, v0 + 264);
    sub_D084((v0 + 264), *(v0 + 288));
    sub_168AD4();
    *(v0 + 336) = 0;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    v34 = sub_53C0C(v38, v0 + 304);
    sub_109A0(v0 + 304, &qword_1E6030, &unk_173620);
    (*(v39 + 8))(v38, v40);
    (*(v36 + 8))(v35, v37);
    v25 = v97;
    sub_D13C((v0 + 264));
  }

  *(v0 + 664) = v34;
  if ((sub_16AA54() & 0x100000000) != 0)
  {
    v42 = 0;
  }

  else
  {
    v42 = sub_15DA34();
  }

  v96 = v42;
  *(v0 + 672) = v42;
  if ((sub_16AA64() & 0x100000000) != 0)
  {
    v43 = 0;
  }

  else
  {
    v43 = sub_15DA34();
  }

  v95 = v43;
  *(v0 + 680) = v43;
  v94 = sub_16AA74();
  v44 = sub_16AA44();
  v98 = v34;
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = sub_7706C(v44);
  }

  *(v0 + 688) = v46;
  v47 = *(v0 + 512);
  sub_16A124();
  sub_10824(v47 + 96, v0 + 104);
  v48 = sub_16A114();
  *(v0 + 696) = v48;
  sub_169094();
  sub_16A1B4();
  v50 = v49;

  if (v50)
  {
    sub_16A6E4();

    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

  v52 = *(v0 + 592);
  v53 = *(v0 + 584);
  v54 = *(v0 + 576);
  v55 = *(v0 + 568);
  v56 = *(v0 + 512);
  sub_5370(v55, v51, 1, v25);
  sub_54934(v54, v52, &qword_1E6300, &qword_16ECE0);
  *(v52 + v53[5]) = v98;
  *(v52 + v53[6]) = v96;
  *(v52 + v53[7]) = v95;
  *(v52 + v53[8]) = v94;
  *(v52 + v53[9]) = v46;
  *(v52 + v53[10]) = v48;
  sub_54934(v55, v52 + v53[11], &qword_1E6300, &qword_16ECE0);
  swift_beginAccess();
  sub_D084((v56 + 136), *(v56 + 160));
  if (sub_11B5C0())
  {
    sub_169094();
    sub_16A1B4();
    v58 = v57;

    *(v0 + 704) = v58;
    if (v58)
    {
      v59 = *(v0 + 512);
      type metadata accessor for PowerLevelStatusSnippetFactory();
      v60 = sub_1690A4();
      *(v0 + 712) = [v60 carName];

      *(v0 + 16) = v98;
      *(v0 + 24) = v96;
      *(v0 + 32) = v95;
      *(v0 + 40) = v94;
      *(v0 + 48) = v46;
      *(v0 + 56) = v48;
      swift_beginAccess();
      sub_10824(v59 + 184, v0 + 224);

      v61 = swift_task_alloc();
      *(v0 + 720) = v61;
      *v61 = v0;
      v61[1] = sub_53368;
      sub_54B70();

      return sub_D3870();
    }

    sub_54AF0();
    sub_54888(v67, v68, &unk_17A85C);
    swift_allocError();
    sub_54B5C();
    *v70 = v69 + 8;
    v70[1] = v71;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v72 = sub_54AA0();
LABEL_46:
    sub_54994(v72, v73);
    sub_54ABC();

    sub_D37C();
    sub_54B70();

    __asm { BRAA            X1, X16 }
  }

  sub_D084((*(v0 + 512) + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetPowerLevelHandleIntentFlowStrategy_commonPatterns), *(*(v0 + 512) + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetPowerLevelHandleIntentFlowStrategy_commonPatterns + 24));
  v64 = swift_task_alloc();
  *(v0 + 736) = v64;
  *v64 = v0;
  v64[1] = sub_53608;
  sub_54B70();

  return sub_156CE4(v65);
}

uint64_t sub_53368()
{
  sub_10BA4();
  sub_10B8C();
  v2 = *v1;
  v3 = *v1;
  sub_D254();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 728) = v0;

  v5 = *(v2 + 712);
  sub_D13C((v3 + 224));

  sub_10B4C();
  sub_10B0C();

  return _swift_task_switch(v6);
}

uint64_t sub_5353C()
{
  sub_54B3C();

  v1 = sub_54AA0();
  sub_54994(v1, v2);
  sub_54B08();

  sub_D37C();

  return v3();
}

uint64_t sub_53608()
{
  sub_D2DC();
  sub_D358();
  *(v2 + 744) = v1;
  *(v2 + 752) = v0;

  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_53714()
{
  sub_D2DC();
  v1 = *(v0 + 512);
  swift_beginAccess();
  sub_10824(v1 + 184, v0 + 184);
  v2 = swift_task_alloc();
  *(v0 + 760) = v2;
  *v2 = v0;
  v2[1] = sub_537D0;

  return sub_11A570();
}

uint64_t sub_537D0()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v3 + 768) = v0;

  sub_D13C((v3 + 184));
  sub_10B4C();

  return _swift_task_switch(v6);
}

uint64_t sub_538D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  sub_54B3C();

  v13 = sub_54AA0();
  sub_54994(v13, v14);
  sub_54ABC();

  sub_D37C();
  sub_10B0C();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_53990()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 640);
  v3 = *(v0 + 496);

  v4 = sub_54AA0();
  sub_54994(v4, v5);
  sub_D124((v0 + 144), v3);
  sub_54B08();

  sub_D37C();

  return v6();
}

uint64_t sub_53A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  sub_54B3C();

  v13 = sub_54AA0();
  sub_54994(v13, v14);
  sub_54ABC();

  sub_D37C();
  sub_10B0C();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_53B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = *(v12 + 744);
  v14 = *(v12 + 640);

  v15 = sub_54AA0();
  sub_54994(v15, v16);
  sub_54ABC();

  sub_D37C();
  sub_10B0C();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_53C0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_5758(&qword_1E7630, &qword_173610);
  v33 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v33 - v4;
  v6 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v7 = sub_D414(v6);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = sub_1520B0();
  sub_549EC();
  v11 = objc_opt_self();
  v12 = [v11 kilometers];
  v13 = sub_16AAD4();

  if (v13)
  {
    v34 = a2;
LABEL_5:
    sub_168314();
    v16 = sub_1682F4();
    v17 = sub_16AAD4();

    if ((v17 & 1) == 0)
    {
      v18 = v10;
      sub_168344();
      sub_168314();

      (*(v33 + 8))(v5, v3);
    }

    sub_169FC4();
    swift_allocObject();
    sub_169FB4();
    sub_169F64();

    sub_16A6E4();

    v19 = sub_16A0C4();
    sub_5370(v9, 0, 1, v19);
    sub_169F54();

    sub_109A0(v9, &qword_1E6300, &qword_16ECE0);
    v20 = sub_169F44();

    sub_54A30(v34, &v35);
    if (v36)
    {
      sub_D124(&v35, &v37);
      sub_16A074();
      sub_10824(&v37, &v35);
      v21 = sub_16A064();

      v22 = v21;
      sub_169F24();

      sub_D13C(&v37);
    }

    else
    {

      sub_109A0(&v35, &qword_1E6030, &unk_173620);
    }

    return v20;
  }

  v14 = [v11 miles];
  v15 = sub_16AAD4();

  if (v15)
  {
    v34 = a2;
    goto LABEL_5;
  }

  v37 = 0;
  v38 = 0xE000000000000000;
  sub_16ACF4(17);

  v37 = 0x656C646E61686E55;
  v38 = 0xEF2074696E752064;
  v23 = sub_1682F4();
  v24 = [v23 description];
  v25 = sub_16A664();
  v27 = v26;

  v39._countAndFlagsBits = v25;
  v39._object = v27;
  sub_16A744(v39);

  v28 = v37;
  v29 = v38;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v30 = sub_16A584();
  sub_9DA0(v30, qword_1E65C0);
  v31 = sub_16A9A4();
  sub_386D8(v31, 0x10uLL, 0xD00000000000007BLL, 0x8000000000182CF0, 0xD00000000000002ALL, 0x8000000000182D70, 31, v28, v29);

  return 0;
}

uint64_t sub_54118()
{
  v0 = sub_3D044();
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetPowerLevelHandleIntentFlowStrategy_commonPatterns));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for GetPowerLevelHandleIntentFlowStrategy(uint64_t a1)
{
  result = qword_1E7438;
  if (!qword_1E7438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_54224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  PowerLevelHandleIntentFlowStrategy = type metadata accessor for GetPowerLevelHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, PowerLevelHandleIntentFlowStrategy, a4);
}

uint64_t sub_542EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  PowerLevelHandleIntentFlowStrategy = type metadata accessor for GetPowerLevelHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, PowerLevelHandleIntentFlowStrategy, a4);
}

uint64_t sub_543B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_4B544();
}

uint64_t sub_54474()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_52480();
}

uint64_t sub_54520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  PowerLevelHandleIntentFlowStrategy = type metadata accessor for GetPowerLevelHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, PowerLevelHandleIntentFlowStrategy, a4);
}

uint64_t sub_545E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  PowerLevelHandleIntentFlowStrategy = type metadata accessor for GetPowerLevelHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, PowerLevelHandleIntentFlowStrategy, a4);
}

uint64_t sub_546B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  PowerLevelHandleIntentFlowStrategy = type metadata accessor for GetPowerLevelHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_1039C;

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, PowerLevelHandleIntentFlowStrategy, a4);
}

uint64_t sub_54778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  PowerLevelHandleIntentFlowStrategy = type metadata accessor for GetPowerLevelHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_36648;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, PowerLevelHandleIntentFlowStrategy, a4);
}

uint64_t sub_54888(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_548D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_54934(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_5758(a3, a4);
  sub_10AFC();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_54994(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10AFC();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_549EC()
{
  result = qword_1E7648;
  if (!qword_1E7648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E7648);
  }

  return result;
}

uint64_t sub_54A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E6030, &unk_173620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_54ABC()
{
}

uint64_t sub_54B08()
{
}

void sub_54B3C()
{
  v2 = *(v0 + 648);
}

uint64_t sub_54B8C()
{

  return swift_allocError();
}

uint64_t type metadata accessor for CarCommandsSetLockStatusCATs(uint64_t a1)
{
  result = qword_1E7650;
  if (!qword_1E7650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_54C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_16A164();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v9 - 8);
  sub_57A0(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_16A084();
  (*(v6 + 8))(a2, v5);
  sub_5810(a1);
  return v11;
}

void sub_54E00(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = a1;
  v2 = sub_5758(&qword_1E76A0, &qword_172B00);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - v4;
  sub_55158();
  v6 = sub_1682F4();
  v7 = objc_opt_self();
  v8 = [v7 celsius];
  v9 = sub_16AAD4();

  if ((v9 & 1) == 0)
  {
    v10 = sub_1682F4();
    v11 = [v7 kelvin];
    v12 = sub_16AAD4();

    if ((v12 & 1) == 0)
    {
      v17 = [v7 fahrenheit];
      sub_168344();

      sub_168314();
      v19 = v18;
      v20 = *(v3 + 8);
      v13 = v20(v5, v2);
      v21 = round(v19);
      if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v21 > -9.22337204e18)
      {
        if (v21 < 9.22337204e18)
        {
          v22 = [v7 fahrenheit];
          sub_168344();

          sub_168314();
          v24 = v23;
          v13 = v20(v5, v2);
          v25 = round(v24);
          if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v25 > -9.22337204e18)
            {
              if (v25 < 9.22337204e18)
              {
                v26 = v21;
                v27 = v25;
                if (v31 == 3)
                {
                  v28 = __OFADD__(v26, v27);
                  v26 += v27;
                  if (!v28)
                  {
                    goto LABEL_21;
                  }

                  __break(1u);
                }

                if (!__OFSUB__(v26, v27))
                {
LABEL_21:
                  v29 = [v7 fahrenheit];
                  sub_168304();
                  sub_551B4();
                  return;
                }

LABEL_28:
                __break(1u);
LABEL_29:
                static Measurement<>.+ infix(_:_:)(v13);
                return;
              }

LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      __break(1u);
      goto LABEL_24;
    }
  }

  if (v31 == 3)
  {
    sub_5519C();
    sub_551B4();

    goto LABEL_29;
  }

  sub_5519C();
  sub_551B4();

  static Measurement<>.- infix(_:_:)(v15);
}

unint64_t sub_55158()
{
  result = qword_1E76A8;
  if (!qword_1E76A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E76A8);
  }

  return result;
}

uint64_t sub_55230()
{
  v1 = sub_5758(&qword_1E66C0, &qword_16FE00);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = qword_1E76B0;
  if (*(v0 + qword_1E76B0))
  {
    v5 = *(v0 + qword_1E76B0);
  }

  else
  {
    v6 = sub_16A884();
    sub_5370(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v0;

    v5 = sub_64240(0, 0, v3, &unk_16F408, v7);
    *(v0 + v4) = v5;
  }

  return v5;
}

uint64_t sub_55348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v4 + 16) = a1;
  v5 = *a4;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  v9 = type metadata accessor for CarCommandsAppResolutionFlowStrategy(0, *(v5 + 416), v7, v8);
  WitnessTable = swift_getWitnessTable();
  *v6 = v4;
  v6[1] = sub_55430;

  return sub_BE1C(v9, WitnessTable);
}

uint64_t sub_55430()
{
  sub_D2DC();
  sub_D358();
  *(v1 + 32) = v0;

  v2 = sub_D388();

  return _swift_task_switch(v2);
}

uint64_t sub_55520()
{
  **(v0 + 16) = *(v0 + 32);
  sub_D37C();
  return v1();
}

uint64_t sub_5554C()
{
  sub_D2DC();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  sub_168B74();
  v1[13] = sub_D3C8();
  v4 = sub_1691E4();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = sub_D3C8();
  sub_16A164();
  v1[17] = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_55644()
{
  sub_1696C();
  sub_168FB4();
  sub_168F74();
  v1 = sub_168F94();

  if (v1)
  {
    type metadata accessor for CarCommandsCATPatternsExecutor(0);
    sub_16A154();
    v0[18] = sub_16A094();
    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_557B8;

    return sub_156570(19, _swiftEmptyArrayStorage);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[24] = v4;
    *v4 = v0;
    v4[1] = sub_55C50;

    return sub_5554C();
  }
}

uint64_t sub_557B8()
{
  sub_D2DC();
  sub_D358();
  *(v2 + 160) = v1;
  *(v2 + 168) = v0;

  if (v0)
  {
    v3 = sub_55B50;
  }

  else
  {

    v3 = sub_558CC;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_558CC()
{
  v1 = v0[12];
  swift_beginAccess();
  sub_10824(v1 + 184, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  sub_D084(v0 + 2, v2);
  sub_168B34();
  sub_169164();
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_559F0;
  v5 = v0[20];
  v6 = v0[16];
  v7 = v0[10];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v7, v5, v6, v2, v3);
}

uint64_t sub_559F0()
{
  sub_1696C();
  sub_D358();
  v3 = v2[16];
  v4 = v2[15];
  v5 = v2[14];
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 184) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = sub_55D94;
  }

  else
  {
    v9 = sub_55BD0;
  }

  return _swift_task_switch(v9);
}

uint64_t sub_55B50()
{
  sub_1696C();

  sub_D37C();

  return v0();
}

uint64_t sub_55BD0()
{
  sub_D2DC();

  sub_D13C((v0 + 16));

  sub_D37C();

  return v1();
}

uint64_t sub_55C50()
{
  sub_1696C();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_55D94()
{
  sub_1696C();

  sub_D13C((v0 + 16));

  sub_D37C();

  return v1();
}

uint64_t sub_55E1C()
{
  sub_D2DC();
  v1[24] = v2;
  v1[25] = v0;
  v1[26] = *v0;
  v3 = sub_1693E4();
  v1[27] = v3;
  v1[28] = *(v3 - 8);
  v1[29] = sub_D3C8();
  v4 = sub_D388();

  return _swift_task_switch(v4);
}

uint64_t sub_55EF0()
{
  v1 = v0[25];
  sub_16ACF4(29);

  sub_D434();
  v53 = v2;
  v3 = v1 + qword_1F0AE0;
  v56._countAndFlagsBits = *(v1 + qword_1F0AE0);
  v0[30] = v56._countAndFlagsBits;
  v4 = *(v3 + 8);
  v0[31] = v4;
  countAndFlagsBits = v56._countAndFlagsBits;
  v56._object = v4;
  sub_16A744(v56);
  sub_57C30();
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[27];
  v8 = sub_16A584();
  v0[32] = sub_9DA0(v8, qword_1E65C0);
  sub_16A9A4();
  sub_57C10();
  sub_57C04();
  sub_386D8(v9, v10, v11, v12, v13, v14, 35, 0xD00000000000001ALL, v53);

  sub_169384();
  sub_86E4(v6, &_swiftEmptySetSingleton, v0 + 15);
  (*(v5 + 8))(v6, v7);
  if (!v0[18])
  {
    sub_57A80((v0 + 15));
    sub_16A9A4();
    sub_57C10();
    sub_57C04();
    sub_386D8(v33, v34, v35, v36, v37, v38, 38, v39, 0x8000000000182F10);
    sub_168FB4();
    sub_168F74();
    goto LABEL_10;
  }

  sub_D124((v0 + 15), (v0 + 10));
  v15 = v0[13];
  v16 = v0[14];
  sub_D084(v0 + 10, v15);
  v17 = (*(v16 + 16))(v15, v16);
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    v21 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v21 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v22 = v0[26];
      sub_16ACF4(21);

      sub_D434();
      v54 = v23;
      v57._countAndFlagsBits = v19;
      v57._object = v20;
      sub_16A744(v57);
      sub_57C30();
      sub_16A9A4();
      sub_57C04();
      sub_386D8(v24, v25, v26, v27, v28, v29, 44, 0xD000000000000012, v54);

      v32 = type metadata accessor for CarCommandsAppResolutionFlowStrategy(0, *(v22 + 416), v30, v31);
      sub_57BD8(v32);
      sub_BB40(v19, v20);

      sub_D13C(v0 + 10);
LABEL_10:

      v40 = sub_120EC();

      return v41(v40);
    }
  }

  sub_16ACF4(64);
  v58._countAndFlagsBits = 0xD00000000000003DLL;
  v58._object = 0x8000000000182F30;
  sub_16A744(v58);
  v59._countAndFlagsBits = countAndFlagsBits;
  v59._object = v4;
  sub_16A744(v59);
  sub_57C30();
  sub_16A9A4();
  sub_57C04();
  sub_386D8(v43, v44, v45, v46, v47, v48, 48, 0, 0xE000000000000000);

  v49 = sub_55230();
  v0[33] = v49;
  v50 = swift_task_alloc();
  v0[34] = v50;
  v51 = sub_5758(&qword_1E77D0, &unk_179A60);
  *v50 = v0;
  v50[1] = sub_563B4;

  return Task<>.value.getter(v0 + 22, v49, v51);
}

uint64_t sub_563B4()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  v3 = sub_D388();

  return _swift_task_switch(v3);
}

uint64_t sub_564B4()
{
  v87 = v0 + 160;
  v1 = *(v0 + 176);
  sub_9F6C();
  sub_16ACF4(18);

  sub_16A1C4();
  v94._countAndFlagsBits = sub_16A7E4();
  sub_16A744(v94);

  sub_57C30();
  sub_16A9A4();
  sub_57C04();
  sub_386D8(v2, v3, v4, v5, v6, v7, 51, 0x6574726F70707553, 0xEF3A737070612064);

  v8 = sub_11B48C();
  v9 = 0;
  v10 = v1 & 0xC000000000000001;
  v11 = (v1 & 0xFFFFFFFFFFFFFF8);
  sub_D434();
  v86 = v12;
LABEL_2:
  for (i = v9; v8 != i; ++i)
  {
    if (v10)
    {
      sub_16AD04();
    }

    else
    {
      if (i >= v11[2])
      {
        goto LABEL_37;
      }
    }

    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      sub_16AD04();
      goto LABEL_19;
    }

    v14 = sub_16A1B4();
    if (v15)
    {
      v16 = v14;
      v17 = v15;
      sub_5758(&qword_1E5F70, &unk_16F3F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_16D3A0;
      *(inited + 32) = 0xD000000000000012;
      *(inited + 40) = v86;
      *(inited + 48) = 0x6C7070612E6D6F63;
      *(inited + 56) = 0xEF64737361702E65;
      v89[20] = v16;
      v89[21] = v17;
      v19 = swift_task_alloc();
      *(v19 + 16) = v87;
      v85 = sub_100D74(sub_D010, v19, inited);
      swift_setDeallocating();
      sub_EFFB0();

      if (v85)
      {
      }

      else
      {
        sub_16AD34();
        sub_16AD64();
        sub_16AD74();
        sub_16AD44();
      }

      goto LABEL_2;
    }
  }

  v11 = v89;

  sub_16ACF4(20);

  sub_D434();
  v90 = v20;
  v95._countAndFlagsBits = sub_16A7E4();
  sub_16A744(v95);

  sub_57C30();
  sub_16A9A4();
  sub_57C04();
  sub_386D8(v21, v22, v23, v24, v25, v26, 60, 0xD000000000000011, v90);

  v27 = sub_11B48C();

  if (v27)
  {
    if (v27 != 1)
    {
      v57 = sub_11B48C();

      if (sub_11B48C() < v57)
      {

        sub_16A7B4();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_16A7F4();
        }

        sub_16A814();
      }

      v58 = v89[31];
      v59 = v89[30];
      sub_9F6C();
      sub_16ACF4(53);
      v97._countAndFlagsBits = 0x20646E756F46;
      v97._object = 0xE600000000000000;
      sub_16A744(v97);
      v89[23] = sub_11B48C();

      v98._countAndFlagsBits = sub_16AE24();
      sub_16A744(v98);

      v99._countAndFlagsBits = 0xD00000000000001ALL;
      v99._object = 0x8000000000182F90;
      sub_16A744(v99);
      v100._countAndFlagsBits = v59;
      v100._object = v58;
      sub_16A744(v100);
      v101._object = 0x8000000000182FB0;
      v101._countAndFlagsBits = 0xD000000000000011;
      sub_16A744(v101);
      sub_16A9A4();
      sub_57C20();
      sub_57C04();
      sub_386D8(v60, v61, v62, v63, v64, v65, 83, 0xD000000000000011, v90);

      sub_168FB4();
      sub_168F84();
      goto LABEL_28;
    }

    if (sub_11B48C())
    {
      sub_1487EC();
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        goto LABEL_38;
      }

LABEL_19:

      v28 = sub_16A1B4();
      v30 = v29;

      if (v30)
      {
        v31 = v11[31];
        v32 = v11[30];
        v88 = v11[26];
        sub_9F6C();
        sub_16ACF4(47);

        sub_D434();
        v91 = v33;
        v96._countAndFlagsBits = v32;
        v96._object = v31;
        sub_16A744(v96);
        sub_57C30();
        sub_16A9A4();
        sub_57C20();
        sub_57C04();
        sub_386D8(v34, v35, v36, v37, v38, v39, 73, 0xD00000000000002CLL, v91);

        v42 = type metadata accessor for CarCommandsAppResolutionFlowStrategy(0, *(v88 + 416), v40, v41);
        sub_57BD8(v42);
        sub_BB40(v28, v30);
LABEL_28:

        goto LABEL_33;
      }
    }

    else
    {
    }

    sub_16A9A4();
    sub_57C10();
    sub_57C04();
    sub_386D8(v75, v76, v77, v78, v79, v80, 76, v81, 0x8000000000182FD0);
  }

  else
  {

    v43 = sub_11B48C();

    v44 = v89[32];
    if (v43 == 1)
    {
      v45 = v89[26];
      sub_16A9A4();
      sub_57C10();
      sub_57C04();
      sub_386D8(v46, v47, v48, v49, v50, v51, 65, v52, 0x8000000000183060);
      v55 = type metadata accessor for CarCommandsAppResolutionFlowStrategy(0, *(v45 + 416), v53, v54);
      v56 = sub_57BD8(v55);
      sub_BB0C(v44, v56);
      goto LABEL_33;
    }

    v67 = v89[30];
    v66 = v89[31];
    sub_9F6C();
    sub_16ACF4(45);

    sub_D434();
    v92 = v68;
    v102._countAndFlagsBits = v67;
    v102._object = v66;
    sub_16A744(v102);
    sub_57C30();
    sub_16A9A4();
    sub_57C20();
    sub_57C04();
    sub_386D8(v69, v70, v71, v72, v73, v74, 68, 0xD00000000000002ALL, v92);
  }

  sub_168FB4();
  sub_168F74();
LABEL_33:
  sub_D13C(v11 + 10);

  v82 = sub_120EC();

  return v83(v82);
}

uint64_t sub_56D04()
{
}

void *sub_56D58()
{
  v0 = sub_3D044();

  return v0;
}

uint64_t sub_56DB4()
{
  v0 = sub_56D58();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_56E20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_43F64;

  return sub_55E1C();
}

uint64_t sub_56EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10A9C;

  return AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionSuccessfulResponse(app:)(a1, a2, a3, a4);
}

uint64_t sub_56F7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_5554C();
}

uint64_t sub_57028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10A9C;

  return AppResolutionOnDeviceFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t sub_57144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  swift_getWitnessTable();
  *v4 = v3;
  v4[1] = sub_10A9C;

  return sub_B93C();
}

uint64_t sub_57220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10A9C;

  return AppConfirmationStrategyAsync.makeRepromptOnEmptyParse(app:)(a1, a2, a3, a4);
}

uint64_t sub_572E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10A9C;

  return AppConfirmationStrategyAsync.makeRepromptOnLowConfidence(app:)(a1, a2, a3, a4);
}

uint64_t sub_573A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10A9C;

  return AppConfirmationStrategyAsync.makeConfirmationRejectedResponse(app:)(a1, a2, a3, a4);
}

uint64_t sub_5746C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10A9C;

  return AppConfirmationStrategyAsync.makeConfirmationCancelledResponse(app:)(a1, a2, a3, a4);
}

uint64_t sub_57530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1039C;

  return AppConfirmationStrategyAsync.makeConfirmationErrorResponse(error:app:)(a1, a2, a3, a4, a5);
}

uint64_t sub_57654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  swift_getWitnessTable();
  *v4 = v3;
  v4[1] = sub_10A9C;

  return sub_A2A8();
}

uint64_t sub_57730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10A9C;

  return AppDisambiguationStrategyAsync.makeRepromptOnEmptyParse(apps:)(a1, a2, a3, a4);
}

uint64_t sub_577F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10A9C;

  return AppDisambiguationStrategyAsync.makeRepromptOnLowConfidence(apps:)(a1, a2, a3, a4);
}

uint64_t sub_578B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10A9C;

  return AppDisambiguationStrategyAsync.makeDisambiguationCancelResponse(apps:)(a1, a2, a3, a4);
}

uint64_t sub_5797C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10A9C;

  return AppDisambiguationStrategyAsync.makeDisambiguationErrorResponse(error:apps:)(a1, a2, a3, a4, a5);
}

uint64_t sub_57A80(uint64_t a1)
{
  v2 = sub_5758(&qword_1E5F80, &unk_16E7E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_57AE8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_57B28()
{
  sub_1696C();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1039C;

  return sub_55348(v3, v4, v5, v6);
}

uint64_t sub_57BD8(uint64_t a1)
{

  return swift_getWitnessTable();
}

void sub_57C30()
{
  v1._countAndFlagsBits = 46;
  v1._object = 0xE100000000000000;

  sub_16A744(v1);
}

id sub_57C48()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38GetTrunkStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38GetTrunkStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38GetTrunkStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      swift_once();
    }

    v5 = sub_BF964(v4);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_57CE4()
{
  sub_D2DC();
  v1[37] = v2;
  v1[38] = v0;
  v1[36] = v3;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = type metadata accessor for GetTrunkStatusParameters(0);
  v1[42] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v4);
}

uint64_t sub_57DB8()
{
  v48 = v0;
  sub_10824(v0[38] + 16, (v0 + 2));
  sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1E7A20, &qword_16F5B8);
  sub_169094();
  sub_D2604();

  sub_D13C(v0 + 2);
  v1 = 0x8000000000182560;
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  v0[31] = 0xD000000000000094;
  v0[32] = 0x8000000000183110;
  v0[33] = 47;
  v0[34] = 0xE100000000000000;
  sub_D030();
  v4 = sub_16AB34();
  v5 = sub_15AE4(v4);
  v7 = v6;

  if (v7)
  {
    v49._countAndFlagsBits = 32;
    v49._object = 0xE100000000000000;
    sub_16A744(v49);
    v50._countAndFlagsBits = 0xD000000000000025;
    v50._object = 0x8000000000182560;
    sub_16A744(v50);
    v8 = v5;
    v1 = v7;
  }

  else
  {
    v8 = 0xD000000000000025;
  }

  v46 = v8;
  v47._countAndFlagsBits = 58;
  v47._object = 0xE100000000000000;
  v0[35] = 26;
  v51._countAndFlagsBits = sub_16AE24();
  sub_16A744(v51);

  sub_16A744(v47);

  v9._countAndFlagsBits = sub_378D0(0x10002uLL);
  if (v9._object)
  {
    v47._countAndFlagsBits = 32;
    v47._object = 0xE100000000000000;
    sub_16A744(v9);

    v52._countAndFlagsBits = 32;
    v52._object = 0xE100000000000000;
    sub_16A744(v52);
  }

  v10 = sub_16A574();
  if (os_log_type_enabled(v10, v3))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v47._countAndFlagsBits = v12;
    *v11 = 136315138;
    v13 = sub_15BC8(v46, v1, &v47._countAndFlagsBits);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_0, v10, v3, "%s", v11, 0xCu);
    sub_D13C(v12);
  }

  else
  {
  }

  v14 = v0[38];
  swift_beginAccess();
  sub_D084((v14 + 136), *(v14 + 160));
  if (sub_11B5C0())
  {
    sub_169094();
    sub_16A1B4();
    v16 = v15;

    v0[43] = v16;
    if (!v16)
    {
      type metadata accessor for CarCommandsError(0);
      sub_59360(&qword_1E92F0, type metadata accessor for CarCommandsError, &unk_17A85C);
      swift_allocError();
      *v29 = 0xD00000000000002DLL;
      v29[1] = 0x8000000000182590;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_D37C();
      sub_D2C0();

      __asm { BRAA            X1, X16 }
    }

    v17 = v0[38];
    type metadata accessor for TrunkStatusSnippetFactory();
    v18 = sub_1690A4();
    v0[44] = [v18 carName];

    v19 = sub_169084();
    [v19 trunkStatus];

    swift_beginAccess();
    sub_10824(v17 + 184, (v0 + 17));
    v20 = swift_task_alloc();
    v0[45] = v20;
    *v20 = v0;
    v20[1] = sub_584A8;
    sub_D2C0();

    return sub_504E4();
  }

  else
  {
    v23 = sub_1690A4();
    v0[47] = v23;
    v24 = sub_169084();
    v25 = [v24 trunkStatus];

    v26 = [v23 carName];
    if (v26)
    {
      v27 = v26;
      sub_99C94();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v32 = v0[40];
    v33 = sub_16A0C4();
    v34 = 1;
    sub_5370(v32, v28, 1, v33);
    sub_169094();
    sub_16A1B4();
    v36 = v35;

    if (v36)
    {
      sub_16A6E4();

      v34 = 0;
    }

    v37 = v25 == &dword_0 + 2;
    v39 = v0[41];
    v38 = v0[42];
    v41 = v0[39];
    v40 = v0[40];
    v42 = v0[38];
    sub_5370(v41, v34, 1, v33);
    sub_16304(v40, v38);
    *(v38 + *(v39 + 20)) = v37;
    sub_16304(v41, v38 + *(v39 + 24));
    sub_D084((v42 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38GetTrunkStatusHandleIntentFlowStrategy_commonPatterns), *(v42 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38GetTrunkStatusHandleIntentFlowStrategy_commonPatterns + 24));
    v43 = swift_task_alloc();
    v0[48] = v43;
    *v43 = v0;
    v43[1] = sub_58648;
    sub_D2C0();

    return sub_1574C0(v44);
  }
}

uint64_t sub_584A8()
{
  v2 = *v1;
  v3 = *v1;
  sub_D254();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 368) = v0;

  v6 = *(v2 + 352);
  sub_D13C((v3 + 136));

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = *(v5 + 8);

    return v8();
  }
}

uint64_t sub_58648()
{
  sub_D2DC();
  sub_D358();
  *(v2 + 392) = v1;
  *(v2 + 400) = v0;

  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_58750()
{
  sub_D2DC();
  v1 = *(v0 + 304);
  swift_beginAccess();
  sub_10824(v1 + 184, v0 + 96);
  v2 = swift_task_alloc();
  *(v0 + 408) = v2;
  *v2 = v0;
  v2[1] = sub_5880C;

  return sub_11A570();
}

uint64_t sub_5880C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v3 + 416) = v0;

  sub_D13C((v3 + 96));
  sub_10B4C();

  return _swift_task_switch(v6);
}

uint64_t sub_58914()
{
  sub_1696C();
  v1 = *(v0 + 336);

  sub_59304(v1);

  sub_D37C();

  return v2();
}

uint64_t sub_589A0()
{
  sub_1696C();
  v1 = *(v0 + 392);
  v2 = *(v0 + 336);
  v3 = *(v0 + 288);

  sub_59304(v2);
  sub_D250((v0 + 56), v3);

  sub_D37C();

  return v4();
}

uint64_t sub_58A44()
{
  sub_1696C();
  v1 = *(v0 + 392);
  v2 = *(v0 + 336);

  sub_59304(v2);

  sub_D37C();

  return v3();
}

void sub_58AD8()
{
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38GetTrunkStatusHandleIntentFlowStrategy_commonPatterns));
  v1 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38GetTrunkStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
}

void *sub_58B18()
{
  v0 = sub_3D044();
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38GetTrunkStatusHandleIntentFlowStrategy_commonPatterns));

  return v0;
}

uint64_t sub_58B60()
{
  v0 = sub_58B18();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for GetTrunkStatusHandleIntentFlowStrategy(uint64_t a1)
{
  result = qword_1E7808;
  if (!qword_1E7808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_58C54(uint64_t a1)
{
  result = sub_59360(&qword_1E7A18, type metadata accessor for GetTrunkStatusHandleIntentFlowStrategy, &unk_16F4D8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_58CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  TrunkStatusHandleIntentFlowStrategy = type metadata accessor for GetTrunkStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, TrunkStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_58D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  TrunkStatusHandleIntentFlowStrategy = type metadata accessor for GetTrunkStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, TrunkStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_58E3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_4B544();
}

uint64_t sub_58EFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_57CE4();
}

uint64_t sub_58FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  TrunkStatusHandleIntentFlowStrategy = type metadata accessor for GetTrunkStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, TrunkStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_59070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  TrunkStatusHandleIntentFlowStrategy = type metadata accessor for GetTrunkStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, TrunkStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_59138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  TrunkStatusHandleIntentFlowStrategy = type metadata accessor for GetTrunkStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_1039C;

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, TrunkStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_59200()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_36648;

  return sub_44600();
}

uint64_t sub_59304(uint64_t a1)
{
  TrunkStatusParameters = type metadata accessor for GetTrunkStatusParameters(0);
  (*(*(TrunkStatusParameters - 8) + 8))(a1, TrunkStatusParameters);
  return a1;
}

uint64_t sub_59360(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_593A8(char *a1, char a2)
{
  v4 = v2;
  type metadata accessor for CarCommandsError(0);
  sub_10AFC();
  __chkstk_darwin(v7);
  sub_5A0F8();
  if ((a2 & 0xF0) != 0x50)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v11 = sub_16A584();
    sub_9DA0(v11, qword_1E65C0);
    v12 = sub_16A9A4();
    sub_386D8(v12, 0x4000uLL, 0xD0000000000000A0, 0x80000000001831B0, 0xD000000000000018, 0x8000000000183260, 10, 0xD000000000000026, 0x8000000000183280);
    goto LABEL_18;
  }

  sub_86E4(a1, &_swiftEmptySetSingleton, v28);
  if (!v28[3])
  {
    sub_109A0(v28, &qword_1E5F80, &unk_16E7E0);
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    goto LABEL_15;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E7A30, &unk_16F5D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    goto LABEL_15;
  }

  if (!*(&v30 + 1))
  {
LABEL_15:
    sub_109A0(&v29, &qword_1E7A28, &qword_16F5D0);
    sub_1693E4();
    sub_10AFC();
    (*(v13 + 16))(v3, a1);
    swift_storeEnumTagMultiPayload();
    v14 = sub_11D28();
    sub_5A144(v14);
    sub_548D0(v3, v15);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v16 = sub_16A584();
    sub_9DA0(v16, qword_1E65C0);
    v17 = sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    sub_5A130();
    sub_386D8(v17, 0x4000uLL, v18, 0x80000000001831B0, 0xD000000000000018, 0x8000000000183260, 16, v19, v27);

    sub_5A09C(v3);
LABEL_18:
    v20 = v2;
    return v4;
  }

  sub_D124(&v29, v32);
  v8 = v33;
  v9 = v34;
  sub_D084(v32, v33);
  if ((a2 & 0xF) != 0)
  {
    if ((a2 & 0xF) == 1)
    {
      v10 = (*(v9 + 16))(v8, v9);
      if (!v10)
      {
        v10 = [v4 enabled];
      }

      [v4 setEnabled:v10];
    }

    else
    {
      v10 = (*(v9 + 24))(v8, v9);
      if (!v10)
      {
        v10 = [v4 isSetCarActivationStatusRequest];
      }

      [v4 setIsSetCarActivationStatusRequest:v10];
    }
  }

  else
  {
    v22 = (*(*(v9 + 8) + 8))(v8);
    if (v23)
    {
      v24 = v22;
      v25 = v23;
      sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
      v10 = sub_99BFC(v24, v25);
    }

    else
    {
      v10 = 0;
    }

    [v4 setCarName:v10];
  }

  v26 = v4;
  sub_D13C(v32);
  return v4;
}

id sub_59804(uint64_t a1, char a2)
{
  type metadata accessor for CarCommandsError(0);
  sub_10AFC();
  __chkstk_darwin(v6);
  sub_5A0F8();
  if ((a2 & 0xF0) == 0x50)
  {
    if ((a2 & 0xF) == 0)
    {
      sub_16138(a1, v34);
      sub_5758(&qword_1E5FA0, &qword_172DD0);
      if (swift_dynamicCast())
      {
        v14 = v33;
        if (v33)
        {
          sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
          v14 = sub_99BFC(v32, v33);
        }
      }

      else
      {
        v14 = 0;
      }

      [v31 setCarName:v14];
      goto LABEL_20;
    }

    if ((a2 & 0xF) == 1)
    {
      v7 = sub_16138(a1, v34);
      if (sub_5A110(v7, v8, v9, &type metadata for Bool))
      {
        v10 = [objc_allocWithZone(NSNumber) initWithBool:v32];
        [v31 setEnabled:v10];
      }

      sub_16138(a1, v34);
      v11 = sub_16484(0, &qword_1E6310, NSNumber_ptr);
      if (sub_5A110(v11, v12, v13, v11))
      {
        v14 = v32;
        [v31 setEnabled:v32];
LABEL_20:
      }
    }

    else
    {
      v22 = sub_16138(a1, v34);
      if (sub_5A110(v22, v23, v24, &type metadata for Bool))
      {
        v25 = [objc_allocWithZone(NSNumber) initWithBool:v32];
        [v31 setIsSetCarActivationStatusRequest:v25];
      }

      sub_16138(a1, v34);
      v26 = sub_16484(0, &qword_1E6310, NSNumber_ptr);
      if (sub_5A110(v26, v27, v28, v26))
      {
        v14 = v32;
        [v31 setIsSetCarActivationStatusRequest:v32];
        goto LABEL_20;
      }
    }
  }

  else
  {
    v34[0] = a2;
    *v2 = sub_16A694();
    v2[1] = v15;
    swift_storeEnumTagMultiPayload();
    v16 = sub_11D28();
    sub_5A144(v16);
    sub_548D0(v2, v17);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v18 = sub_16A584();
    sub_9DA0(v18, qword_1E65C0);
    v19 = sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    sub_5A130();
    sub_386D8(v19, 0x1000uLL, v20, 0x80000000001831B0, 0xD000000000000018, 0x8000000000183260, 35, v21, v30);

    sub_5A09C(v2);
  }

  return v31;
}

double sub_59B80@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 0xF0) == 0x50)
  {
    if ((a1 & 0xF) != 0)
    {
      if ((a1 & 0xF) == 1)
      {
        v4 = [v2 enabled];
      }

      else
      {
        v4 = [v2 isSetCarActivationStatusRequest];
      }

      v9 = v4;
      if (v9)
      {
        v6 = v9;
        v7 = &qword_1E6310;
        v8 = NSNumber_ptr;
        goto LABEL_10;
      }
    }

    else
    {
      v5 = [v2 carName];
      if (v5)
      {
        v6 = v5;
        v7 = &qword_1E6378;
        v8 = INSpeakableString_ptr;
LABEL_10:
        *(a2 + 24) = sub_16484(0, v7, v8);
        *a2 = v6;
        return result;
      }
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id sub_59C58(char *a1)
{
  type metadata accessor for CarCommandsError(0);
  sub_10AFC();
  __chkstk_darwin(v4);
  sub_5A0F8();
  sub_86E4(a1, &_swiftEmptySetSingleton, v31);
  if (v31[3])
  {
    sub_5758(&qword_1E5F90, &qword_170270);
    sub_5758(&qword_1E7A30, &unk_16F5D8);
    if (swift_dynamicCast())
    {
      if (*(&v33 + 1))
      {
        sub_D124(&v32, v35);
        v5 = [objc_allocWithZone(v1) init];
        v7 = v36;
        v6 = v37;
        sub_D084(v35, v36);
        v8 = *(v6 + 8);
        v9 = *(v8 + 8);
        v10 = v5;
        v11 = v9(v7, v8);
        if (v12)
        {
          v13 = v11;
          v14 = v12;
          sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
          v15 = sub_99BFC(v13, v14);
        }

        else
        {
          v15 = 0;
        }

        [v10 setCarName:v15];

        v24 = v36;
        v25 = v37;
        sub_D084(v35, v36);
        v26 = (*(v25 + 16))(v24, v25);
        [v10 setEnabled:v26];

        v27 = v36;
        v28 = v37;
        sub_D084(v35, v36);
        v29 = (*(v28 + 24))(v27, v28);
        [v10 setIsSetCarActivationStatusRequest:v29];

        sub_1693E4();
        sub_10AFC();
        (*(v30 + 8))(a1);
        sub_D13C(v35);
        return v10;
      }
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }
  }

  else
  {
    sub_109A0(v31, &qword_1E5F80, &unk_16E7E0);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
  }

  sub_109A0(&v32, &qword_1E7A28, &qword_16F5D0);
  v16 = sub_1693E4();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v2, a1, v16);
  swift_storeEnumTagMultiPayload();
  sub_11D28();
  swift_allocError();
  sub_548D0(v2, v18);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v19 = sub_16A584();
  sub_9DA0(v19, qword_1E65C0);
  v20 = sub_16A9A4();
  swift_getErrorValue();
  v21 = sub_16AEB4();
  sub_386D8(v20, 0x4000uLL, 0xD0000000000000A0, 0x80000000001831B0, 0x293A5F2874696E69, 0xE800000000000000, 76, v21, v22);

  (*(v17 + 8))(a1, v16);
  sub_5A09C(v2);
  return 0;
}

uint64_t sub_5A09C(uint64_t a1)
{
  v2 = type metadata accessor for CarCommandsError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5A110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_5A144(uint64_t a1)
{

  return swift_allocError();
}

uint64_t type metadata accessor for CarCommandsCATs(uint64_t a1)
{
  result = qword_1E7A38;
  if (!qword_1E7A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5A244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_16A164();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v9 - 8);
  sub_57A0(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_16A084();
  (*(v6 + 8))(a2, v5);
  sub_5810(a1);
  return v11;
}

uint64_t sub_5A3CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_168454();

  return sub_9E2C(a1, a2, v4);
}

uint64_t sub_5A428(uint64_t a1, uint64_t a2)
{
  v4 = sub_168454();

  return sub_5370(a1, a2, a2, v4);
}

uint64_t type metadata accessor for LocalizedMeasurementUnitProvider(uint64_t a1)
{
  result = qword_1E7AE0;
  if (!qword_1E7AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5A4C0(uint64_t a1)
{
  result = sub_168454();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_5A52C(uint64_t result, unsigned __int8 a2)
{
  if (a2 >= 4u)
  {
    return qword_16F6D0[result];
  }

  return result;
}

uint64_t type metadata accessor for CarCommandsActivateSignalCATs(uint64_t a1)
{
  result = qword_1E7B18;
  if (!qword_1E7B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5A638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_16A164();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v9 - 8);
  sub_57A0(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_16A084();
  (*(v6 + 8))(a2, v5);
  sub_5810(a1);
  return v11;
}

void sub_5A7AC()
{
  v1 = [v0 remainingRange];
  v2 = [v1 distanceMiles];

  sub_549EC();
  sub_1682E4();
}

id sub_5A838()
{
  v1 = [v0 remainingRange];
  v2 = [v1 hidden];

  return v2;
}

id sub_5A888()
{
  result = [v0 car];
  if (result)
  {
    v2 = result;
    v3 = [result fuel];

    if (v3)
    {
      v4 = [v3 fuelLevel];

      v5 = [v4 fuelLevelState];
      return (v5 - 1 < 2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_5A9A4(char *a1, char a2)
{
  v3 = v2;
  if ((a2 & 0xF0) != 0x40)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v10 = sub_16A584();
    sub_9DA0(v10, qword_1E65C0);
    sub_16A9A4();
    sub_5B31C();
    sub_5B2E8();
    v18 = 18;
    goto LABEL_17;
  }

  sub_86E4(a1, &_swiftEmptySetSingleton, v29);
  if (!v29[3])
  {
    sub_109A0(v29, &qword_1E5F80, &unk_16E7E0);
    sub_5B330();
    v32 = 0;
    goto LABEL_14;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  v5 = sub_5758(&qword_1E7B70, &qword_16F800);
  if ((sub_5B2F8(v5, v6) & 1) == 0)
  {
    v32 = 0;
    sub_5B330();
    goto LABEL_14;
  }

  if (!v31)
  {
LABEL_14:
    sub_109A0(&v30, &qword_1E7B68, &qword_16F7F8);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v19 = sub_16A584();
    sub_9DA0(v19, qword_1E65C0);
    sub_16A9A4();
    sub_5B31C();
    sub_5B2E8();
    v18 = 23;
LABEL_17:
    sub_386D8(v11, v12, v13, v14, v15, v16, v18, v17, v28);
    v20 = v3;
    return v3;
  }

  sub_D124(&v30, v33);
  v7 = v34;
  v8 = v35;
  sub_D084(v33, v34);
  if (a2)
  {
    v9 = (*(v8 + 16))(v7, v8);
    if (!v9)
    {
      v9 = [v3 isGetCarActivationStatusRequest];
    }

    [v3 setIsGetCarActivationStatusRequest:v9];
  }

  else
  {
    v22 = (*(*(v8 + 8) + 8))(v7);
    if (v23)
    {
      v24 = v22;
      v25 = v23;
      sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
      v26 = sub_99BFC(v24, v25);
    }

    else
    {
      v26 = [v3 carName];
    }

    v9 = v26;
    [v3 setCarName:v26];
  }

  v27 = v3;
  sub_D13C(v33);
  return v3;
}

id sub_5AC9C(uint64_t a1, char a2)
{
  type metadata accessor for CarCommandsError(0);
  sub_10AFC();
  __chkstk_darwin(v4);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a2 & 0xF0) == 0x40)
  {
    if (a2)
    {
      sub_16138(a1, v28);
      sub_16484(0, &qword_1E6310, NSNumber_ptr);
      if (sub_5B33C())
      {
        v7 = v26;
        v8 = v27;
      }

      else
      {
        v21 = [v26 isGetCarActivationStatusRequest];
        v7 = v26;
        v8 = v21;
      }

      [v7 setIsGetCarActivationStatusRequest:v8];
    }

    else
    {
      sub_16138(a1, v28);
      sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
      if (sub_5B33C())
      {
        v20 = v26;
        v8 = v27;
      }

      else
      {
        v22 = [v26 carName];
        v20 = v26;
        v8 = v22;
      }

      [v20 setCarName:v8];
    }
  }

  else
  {
    v28[0] = a2;
    *v6 = sub_16A694();
    v6[1] = v9;
    swift_storeEnumTagMultiPayload();
    sub_11D28();
    swift_allocError();
    sub_548D0(v6, v10);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v11 = sub_16A584();
    sub_9DA0(v11, qword_1E65C0);
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v25 = v12;
    sub_5B2E8();
    sub_386D8(v13, v14, v15, v16, v17, v18, 40, v19, v25);

    sub_5A09C(v6);
  }

  v23 = v26;

  return v23;
}

double sub_5AF3C@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 0xF0) == 0x40)
  {
    if (a1)
    {
      v4 = [v2 isGetCarActivationStatusRequest];
      if (v4)
      {
        v5 = v4;
        v6 = &qword_1E6310;
        v7 = NSNumber_ptr;
LABEL_7:
        *(a2 + 24) = sub_16484(0, v6, v7);
        *a2 = v5;
        return result;
      }
    }

    else
    {
      v8 = [v2 carName];
      if (v8)
      {
        v5 = v8;
        v6 = &qword_1E6378;
        v7 = INSpeakableString_ptr;
        goto LABEL_7;
      }
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id sub_5AFEC(char *a1)
{
  sub_86E4(a1, &_swiftEmptySetSingleton, v24);
  if (v24[3])
  {
    sub_5758(&qword_1E5F90, &qword_170270);
    v3 = sub_5758(&qword_1E7B70, &qword_16F800);
    if (sub_5B2F8(v3, v4))
    {
      if (v26)
      {
        sub_D124(&v25, v28);
        v5 = [objc_allocWithZone(v1) init];
        v7 = v29;
        v6 = v30;
        sub_D084(v28, v29);
        v8 = *(v6 + 8);
        v9 = *(v8 + 8);
        v10 = v5;
        v11 = v9(v7, v8);
        if (v12)
        {
          v13 = v11;
          v14 = v12;
          sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
          v15 = sub_99BFC(v13, v14);
        }

        else
        {
          v15 = 0;
        }

        [v10 setCarName:v15];

        v20 = v29;
        v21 = v30;
        sub_D084(v28, v29);
        v22 = (*(v21 + 16))(v20, v21);
        [v10 setIsGetCarActivationStatusRequest:v22];

        sub_1693E4();
        sub_10AFC();
        (*(v23 + 8))(a1);
        sub_D13C(v28);
        return v10;
      }
    }

    else
    {
      v27 = 0;
      sub_5B330();
    }
  }

  else
  {
    sub_109A0(v24, &qword_1E5F80, &unk_16E7E0);
    sub_5B330();
    v27 = 0;
  }

  sub_109A0(&v25, &qword_1E7B68, &qword_16F7F8);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v16 = sub_16A584();
  sub_9DA0(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_386D8(v17, 0x2000uLL, 0xD0000000000000A0, 0x8000000000183340, 0x293A5F2874696E69, 0xE800000000000000, 67, 0xD000000000000016, 0x8000000000182F10);
  sub_1693E4();
  sub_10AFC();
  (*(v18 + 8))(a1);
  return 0;
}

uint64_t sub_5B2F8(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_5B33C()
{

  return swift_dynamicCast();
}

uint64_t sub_5B35C()
{
  v2 = v0;
  sub_5BAFC(v0, &selRef_name);
  if (v3 || (sub_5BAFC(v0, &selRef_callsign), v4))
  {
LABEL_3:
    sub_16A6E4();
  }

  v6 = [v0 frequency];
  if (v6)
  {
    v7 = v6;
    sub_D9524();
    v9 = v8;

    if (v9)
    {
      v10 = sub_5B5D4([v2 band]);
      v12 = v11;
      v13 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        v14 = v10;
        v22._countAndFlagsBits = 32;
        v22._object = 0xE100000000000000;
        sub_16A744(v22);
        v23._countAndFlagsBits = v14;
        v23._object = v12;
        sub_16A744(v23);
      }

      goto LABEL_3;
    }
  }

  sub_5BB5C();
  sub_16ACF4(49);

  v15 = [v2 description];
  v16 = sub_16A664();
  v18 = v17;

  v24._countAndFlagsBits = v16;
  v24._object = v18;
  sub_16A744(v24);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v19 = sub_16A584();
  sub_9DA0(v19, qword_1E65C0);
  v20 = sub_16A9A4();
  sub_386D8(v20, 2uLL, 0xD000000000000088, 0x80000000001833F0, 0xD000000000000019, (v1 | 0x8000000000000000), 33, 0xD00000000000002FLL, 0x8000000000183500);

  return sub_16A6E4();
}

uint64_t sub_5B5D4(uint64_t a1)
{
  v1 = a1 - 1;
  result = 19782;
  switch(v1)
  {
    case 0:
      result = 19777;
      break;
    case 1:
      return result;
    case 2:
      result = 19800;
      break;
    case 3:
      result = 4342084;
      break;
    case 4:
      result = 0x4241444D46;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_5B65C()
{
  v3 = v0;
  v4 = [v0 frequency];
  v5 = v4;
  if (!v4)
  {
    return 0;
  }

  [v4 floatValue];
  v7 = v6;

  v8 = &off_1E2000;
  v9 = sub_5B994([v0 band]);
  v10 = sub_BE77C(v9);
  v12 = v11;
  if (v10 == 28006 && v11 == 0xE200000000000000)
  {
    goto LABEL_16;
  }

  v1 = sub_16AE54();

  if (v1)
  {
    goto LABEL_17;
  }

  v1 = 6447460;
  v14 = sub_5B994([v3 band]);
  v15 = sub_BE77C(v14);
  v12 = v16;
  if (v15 == 6447460 && v16 == 0xE300000000000000)
  {
LABEL_16:

LABEL_17:
    v19 = v7 * 1000.0;
    if (COERCE_INT(fabs(v7 * 1000.0)) > 2139095039)
    {
      __break(1u);
    }

    else if (v19 > -9.2234e18)
    {
      if (v19 < 9.2234e18)
      {
        v8 = 0xD000000000000013;
        v1 = v19;
        sub_5BB5C();
        sub_16ACF4(45);

        v20 = [v3 frequency];
        sub_5758(&qword_1E7B78, &qword_16F808);
        v23._countAndFlagsBits = sub_16A694();
        sub_16A744(v23);

        v24._object = 0x8000000000183550;
        v24._countAndFlagsBits = 0xD000000000000013;
        sub_16A744(v24);
        v25._countAndFlagsBits = sub_16AE24();
        sub_16A744(v25);

        v12 = 0xD000000000000016;
        v3 = 0x8000000000183530;
        if (qword_1E58E8 == -1)
        {
LABEL_21:
          v21 = sub_16A584();
          sub_9DA0(v21, qword_1E65C0);
          v22 = sub_16A9A4();
          sub_386D8(v22, 1uLL, v8 + 117, v2 | 0x8000000000000000, 0x636E657571657266, 0xEE005A484B6E4979, 44, v12, v3);

          return v1;
        }

LABEL_27:
        sub_9ED4(&qword_1E58E8);
        goto LABEL_21;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_26;
  }

  v1 = sub_16AE54();

  if (v1)
  {
    goto LABEL_17;
  }

  if ((LODWORD(v7) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v7 <= -9.2234e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v7 < 9.2234e18)
  {
    return v7;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_5B994(uint64_t a1)
{
  result = 1;
  switch(a1)
  {
    case 0:
      if (qword_1E58E8 != -1)
      {
        sub_9ED4(&qword_1E58E8);
      }

      v3 = sub_16A584();
      sub_9DA0(v3, qword_1E65C0);
      v4 = sub_16A9A4();
      sub_386D8(v4, 0x800uLL, 0xD000000000000088, 0x80000000001833F0, 0xD000000000000015, 0x8000000000183480, 79, 0xD000000000000034, 0x80000000001834A0);
      result = 5;
      break;
    case 1:
      return result;
    case 2:
      result = 0;
      break;
    case 3:
      result = 2;
      break;
    case 4:
      result = 3;
      break;
    case 5:
      result = 4;
      break;
    default:
      sub_16AE84();
      __break(1u);
      JUMPOUT(0x5BACCLL);
  }

  return result;
}

uint64_t sub_5BAFC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_16A664();

  return v4;
}

uint64_t sub_5BB70(uint64_t a1, char a2)
{
  *(v3 + 912) = v2;
  *(v3 + 1016) = a2;
  *(v3 + 904) = a1;
  return _swift_task_switch(sub_5BB98);
}

uint64_t sub_5C2A4()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 944) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_5C39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_375FC();
  sub_10B8C();
  sub_61420((v12 + 768));
  sub_615A0();
  sub_31144(v14, v15, &qword_1E6368, &qword_16DAA0);
  if (*(v12 + 552))
  {
    sub_612DC();
    v39 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = sub_614A0(v17);
    *v18 = v19;
    sub_6139C(v18);
    sub_375E4();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, v39);
  }

  else
  {
    sub_D188(v12 + 528, &qword_1E6368, &qword_16DAA0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    sub_30B94();
    v29 = sub_61400();
    v30 = sub_48154(v29, qword_1E65C0);
    sub_61360(v30);

    sub_D188(v12 + 368, &qword_1E6368, &qword_16DAA0);
    sub_D188(v12 + 328, &qword_1E6358, &unk_16DA90);
    sub_613B4();
    sub_375E4();

    return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
  }
}

uint64_t sub_5C580()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 960) = v0;

  if (!v0)
  {
    sub_615E4();
  }

  sub_3021C();

  return _swift_task_switch(v7);
}

uint64_t sub_5C68C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 976) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_5C784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_375FC();
  sub_10B8C();
  sub_61420((v12 + 688));
  sub_615D8();
  sub_31144(v14, v15, &qword_1E6368, &qword_16DAA0);
  if (*(v12 + 552))
  {
    sub_612DC();
    v39 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = sub_614A0(v17);
    *v18 = v19;
    sub_6139C(v18);
    sub_375E4();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, v39);
  }

  else
  {
    sub_D188(v12 + 528, &qword_1E6368, &qword_16DAA0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    sub_30B94();
    v29 = sub_61400();
    v30 = sub_48154(v29, qword_1E65C0);
    sub_61360(v30);

    sub_D188(v12 + 368, &qword_1E6368, &qword_16DAA0);
    sub_D188(v12 + 328, &qword_1E6358, &unk_16DA90);
    sub_613B4();
    sub_375E4();

    return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
  }
}

uint64_t sub_5C968()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 992) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_5CA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_375FC();
  sub_10B8C();
  sub_61420((v12 + 608));
  sub_615CC();
  sub_31144(v14, v15, &qword_1E6368, &qword_16DAA0);
  if (*(v12 + 552))
  {
    sub_612DC();
    v39 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = sub_614A0(v17);
    *v18 = v19;
    sub_6139C(v18);
    sub_375E4();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, v39);
  }

  else
  {
    sub_D188(v12 + 528, &qword_1E6368, &qword_16DAA0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    sub_30B94();
    v29 = sub_61400();
    v30 = sub_48154(v29, qword_1E65C0);
    sub_61360(v30);

    sub_D188(v12 + 368, &qword_1E6368, &qword_16DAA0);
    sub_D188(v12 + 328, &qword_1E6358, &unk_16DA90);
    sub_613B4();
    sub_375E4();

    return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
  }
}

uint64_t sub_5CC44()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 1008) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_5CD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_375FC();
  sub_10B8C();
  sub_61420((v12 + 448));
  sub_615C0();
  sub_31144(v14, v15, &qword_1E6368, &qword_16DAA0);
  if (*(v12 + 552))
  {
    sub_612DC();
    v39 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = sub_614A0(v17);
    *v18 = v19;
    sub_6139C(v18);
    sub_375E4();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, v39);
  }

  else
  {
    sub_D188(v12 + 528, &qword_1E6368, &qword_16DAA0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    sub_30B94();
    v29 = sub_61400();
    v30 = sub_48154(v29, qword_1E65C0);
    sub_61360(v30);

    sub_D188(v12 + 368, &qword_1E6368, &qword_16DAA0);
    sub_D188(v12 + 328, &qword_1E6358, &unk_16DA90);
    sub_613B4();
    sub_375E4();

    return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
  }
}

uint64_t sub_5CF20(uint64_t a1, char a2)
{
  *(v3 + 912) = v2;
  *(v3 + 1016) = a2;
  *(v3 + 904) = a1;
  return sub_D2B0();
}

uint64_t sub_5D64C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 944) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_5D744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_375FC();
  sub_10B8C();
  sub_61420((v12 + 768));
  sub_615A0();
  sub_31144(v14, v15, &qword_1E6368, &qword_16DAA0);
  if (*(v12 + 552))
  {
    sub_612DC();
    v39 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = sub_614A0(v17);
    *v18 = v19;
    sub_6139C(v18);
    sub_375E4();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, v39);
  }

  else
  {
    sub_D188(v12 + 528, &qword_1E6368, &qword_16DAA0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    sub_30B94();
    v29 = sub_61400();
    v30 = sub_48154(v29, qword_1E65C0);
    sub_61360(v30);

    sub_D188(v12 + 368, &qword_1E6368, &qword_16DAA0);
    sub_D188(v12 + 328, &qword_1E6358, &unk_16DA90);
    sub_613B4();
    sub_375E4();

    return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
  }
}

uint64_t sub_5DC2C()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 960) = v0;

  if (!v0)
  {
    sub_615E4();
  }

  sub_3021C();

  return _swift_task_switch(v7);
}

uint64_t sub_5DD38()
{
  sub_D2DC();
  v1 = *(v0 + 928);

  sub_D188(v0 + 368, &qword_1E6368, &qword_16DAA0);
  sub_D188(v0 + 328, &qword_1E6358, &unk_16DA90);
  sub_D13C((v0 + 488));
  v2 = *(v0 + 8);
  v3 = *(v0 + 1017) | 0x300u;

  return v2(v3, v1);
}

uint64_t sub_5E0F8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 976) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_5E1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_375FC();
  sub_10B8C();
  sub_61420((v12 + 688));
  sub_615D8();
  sub_31144(v14, v15, &qword_1E6368, &qword_16DAA0);
  if (*(v12 + 552))
  {
    sub_612DC();
    v39 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = sub_614A0(v17);
    *v18 = v19;
    sub_6139C(v18);
    sub_375E4();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, v39);
  }

  else
  {
    sub_D188(v12 + 528, &qword_1E6368, &qword_16DAA0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    sub_30B94();
    v29 = sub_61400();
    v30 = sub_48154(v29, qword_1E65C0);
    sub_61360(v30);

    sub_D188(v12 + 368, &qword_1E6368, &qword_16DAA0);
    sub_D188(v12 + 328, &qword_1E6358, &unk_16DA90);
    sub_613B4();
    sub_375E4();

    return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
  }
}

uint64_t sub_5E6D8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 992) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_5E7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_375FC();
  sub_10B8C();
  sub_61420((v12 + 608));
  sub_615CC();
  sub_31144(v14, v15, &qword_1E6368, &qword_16DAA0);
  if (*(v12 + 552))
  {
    sub_612DC();
    v39 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = sub_614A0(v17);
    *v18 = v19;
    sub_6139C(v18);
    sub_375E4();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, v39);
  }

  else
  {
    sub_D188(v12 + 528, &qword_1E6368, &qword_16DAA0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    sub_30B94();
    v29 = sub_61400();
    v30 = sub_48154(v29, qword_1E65C0);
    sub_61360(v30);

    sub_D188(v12 + 368, &qword_1E6368, &qword_16DAA0);
    sub_D188(v12 + 328, &qword_1E6358, &unk_16DA90);
    sub_613B4();
    sub_375E4();

    return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
  }
}

uint64_t sub_5ECB8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 1008) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_5EDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_375FC();
  sub_10B8C();
  sub_61420((v12 + 448));
  sub_615C0();
  sub_31144(v14, v15, &qword_1E6368, &qword_16DAA0);
  if (*(v12 + 552))
  {
    sub_612DC();
    v39 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = sub_614A0(v17);
    *v18 = v19;
    sub_6139C(v18);
    sub_375E4();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, v39);
  }

  else
  {
    sub_D188(v12 + 528, &qword_1E6368, &qword_16DAA0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    sub_30B94();
    v29 = sub_61400();
    v30 = sub_48154(v29, qword_1E65C0);
    sub_61360(v30);

    sub_D188(v12 + 368, &qword_1E6368, &qword_16DAA0);
    sub_D188(v12 + 328, &qword_1E6358, &unk_16DA90);
    sub_613B4();
    sub_375E4();

    return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
  }
}

uint64_t sub_5F298(uint64_t a1, char a2)
{
  *(v3 + 912) = v2;
  *(v3 + 1016) = a2;
  *(v3 + 904) = a1;
  return sub_D2B0();
}

uint64_t sub_5F9C4(uint64_t a1, char a2)
{
  *(v3 + 912) = v2;
  *(v3 + 1016) = a2;
  *(v3 + 904) = a1;
  return sub_D2B0();
}

uint64_t SEGetSignalActivationStatusIntentHandler.resolveCarName(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_60104()
{
  sub_1696C();
  *(v0 + 32) = [*(v0 + 16) carName];
  v1 = sub_37484();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = sub_615AC(v1);

  return v4(v2, 6);
}

uint64_t sub_601B4()
{
  sub_D2DC();
  v2 = v1;
  sub_D358();
  v4 = *(v3 + 32);
  v5 = *v0;
  sub_D254();
  *v6 = v5;

  sub_30AEC();

  return v7(v2);
}

uint64_t sub_602D4(void *a1, void *aBlock, void *a3)
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

  return SEGetSignalActivationStatusIntentHandler.resolveCarName(for:)(v6);
}

uint64_t sub_60398()
{
  sub_1696C();
  v2 = v1;
  sub_D358();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v0;
  sub_D254();
  *v8 = v7;

  (v4)[2](v4, v2);
  _Block_release(v4);

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_60500()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v1 = *(v0 + 16);
  v2 = sub_16A584();
  v3 = sub_48154(v2, qword_1E65C0);
  sub_386D8(v3, 0x28000uLL, 0xD0000000000000C2, 0x8000000000183570, 0xD000000000000016, 0x8000000000183640, 23, 0xD000000000000015, 0x8000000000183660);
  v4 = [v1 carSignal];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = &dword_0 + 1;
  }

  sub_16A374();
  v7 = [swift_getObjCClassFromMetadata() successWithResolvedValue:v6];
  sub_30AEC();

  return v8();
}

uint64_t sub_60678(void *a1, void *aBlock, void *a3)
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

  return SEGetSignalActivationStatusIntentHandler.resolveCarSignal(for:)(v6);
}

uint64_t SEGetSignalActivationStatusIntentHandler.confirm(intent:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_D2B0();
}

uint64_t sub_6074C()
{
  sub_1696C();
  v1 = [*(v0 + 40) carName];
  *(v0 + 56) = v1;
  v2 = sub_37484();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_6080C;

  return v4(v1, 0, 1);
}

uint64_t sub_6080C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *(v1 + 32) = v3;
  *(v1 + 24) = v4;
  *(v1 + 16) = v0;
  v6 = *(v5 + 56);
  v7 = *v0;
  sub_D254();
  *v8 = v7;
  *(v10 + 72) = v9;

  sub_10B4C();

  return _swift_task_switch(v11);
}

uint64_t sub_60918()
{
  sub_D2DC();
  sub_16A564();
  sub_16A554();
  sub_30AEC();

  return v0();
}

uint64_t sub_609BC(void *a1, void *aBlock, void *a3)
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

  return SEGetSignalActivationStatusIntentHandler.confirm(intent:)(v6);
}

uint64_t SEGetSignalActivationStatusIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_60A94()
{
  sub_1696C();
  *(v0 + 32) = [*(v0 + 16) carName];
  v1 = sub_37484();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = sub_615AC(v1);

  return v4(v2, 0);
}

uint64_t sub_60B44()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 32);
  v5 = *v0;
  sub_D254();
  *v6 = v5;
  *(v8 + 56) = v7;
  *(v8 + 48) = v9;

  sub_10B4C();

  return _swift_task_switch(v10);
}

uint64_t sub_60C48()
{
  v1 = *(v0 + 56);
  switch(v1 >> 8)
  {
    case 3u:
      v2 = *(v0 + 48);
      v3 = *(v0 + 16);
      sub_16A564();
      v4 = v2;
      v5 = sub_16A554();
      v6 = [objc_allocWithZone(NSNumber) initWithBool:v1 & 1];
      [v5 setSignalActivated:v6];

      v7 = [v3 carSignal];
      [v5 setCarSignal:v7];

      break;
    default:
      sub_16A564();
      v5 = sub_16A554();
      break;
  }

  sub_30AEC();

  return v8(v5);
}

uint64_t sub_60E10(void *a1, void *aBlock, void *a3)
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

  return SEGetSignalActivationStatusIntentHandler.handle(intent:)(v6);
}

id SEGetSignalActivationStatusIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SEGetSignalActivationStatusIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_60F80()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_12078;
  v3 = sub_301AC();

  return v4(v3);
}

uint64_t sub_61020()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_12078;
  v3 = sub_301AC();

  return v4(v3);
}

uint64_t sub_610C0()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_12078;
  v3 = sub_301AC();

  return v4(v3);
}

uint64_t sub_61160()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_11F8C;
  v3 = sub_301AC();

  return v4(v3);
}

unint64_t sub_61200()
{
  result = qword_1E6348;
  if (!qword_1E6348)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E6348);
  }

  return result;
}

id sub_61244(uint64_t a1, uint64_t a2)
{
  sub_614D8();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_16A644();

  v4 = [v2 initWithActivityType:v3];

  return v4;
}

uint64_t sub_612DC()
{
  sub_D250((v0 + 528), v0 + 488);
  v1 = *(v0 + 520);
  sub_D084((v0 + 488), *(v0 + 512));
  return v1 + 24;
}