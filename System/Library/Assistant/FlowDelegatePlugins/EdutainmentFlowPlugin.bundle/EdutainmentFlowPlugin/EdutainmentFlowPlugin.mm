uint64_t sub_1854(uint64_t a1, id *a2)
{
  result = sub_17CD4();
  *a2 = 0;
  return result;
}

uint64_t sub_18CC(uint64_t a1, id *a2)
{
  v3 = sub_17CE4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_194C@<X0>(uint64_t *a1@<X8>)
{
  sub_17CF4();
  v2 = sub_17CC4();

  *a1 = v2;
  return result;
}

void sub_19C8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1A18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_17CF4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A44(uint64_t a1)
{
  v2 = sub_1B90(&qword_24D48, type metadata accessor for FileAttributeKey, &unk_19750);
  v3 = sub_1B90(&unk_24D50, type metadata accessor for FileAttributeKey, &unk_1954C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1B90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_17CC4();

  *a2 = v3;
  return result;
}

uint64_t sub_1C20(uint64_t a1)
{
  v2 = sub_1B90(&qword_24D38, type metadata accessor for FileProtectionType, &unk_196C0);
  v3 = sub_1B90(&qword_24D40, type metadata accessor for FileProtectionType, &unk_19660);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1D6C()
{
  sub_17CF4();
  v0 = sub_17DC4();

  return v0;
}

uint64_t sub_1DA8(uint64_t a1)
{
  sub_17CF4();
  sub_17D74();
}

Swift::Int sub_1DFC(uint64_t a1)
{
  sub_17CF4();
  sub_18154();
  sub_17D74();
  v1 = sub_18174();

  return v1;
}

uint64_t sub_1E70(void *a1, uint64_t *a2)
{
  v2 = sub_17CF4();
  v4 = v3;
  if (v2 == sub_17CF4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_18134();
  }

  return v7 & 1;
}

uint64_t sub_1FB0(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_17C04();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_2074, 0, 0);
}

uint64_t sub_2074()
{
  v1 = *(v0 + 96);
  sub_30B8(&unk_25180, qword_197F8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_197A0;
  *(v2 + 32) = v1;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v3 = v1;
  sub_17AB4();

  sub_31F4(v0 + 16, &qword_25198, &qword_19818);
  if (qword_24C88 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 96);
  v5 = sub_17C54();
  *(v0 + 144) = sub_3080(v5, qword_27B90);
  v6 = v4;
  v7 = sub_17C44();
  v8 = sub_17E64();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 96);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&dword_0, v7, v8, "submitting addViews command: %@", v10, 0xCu);
    sub_31F4(v11, &unk_251A0, &qword_19820);
  }

  v13 = sub_17C44();
  v14 = sub_17E54();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "submit addViews command and nlContextUpdate", v15, 2u);
  }

  v17 = *(v0 + 128);
  v16 = *(v0 + 136);
  v19 = *(v0 + 112);
  v18 = *(v0 + 120);

  v20 = v19[10];
  v21 = v19[11];
  sub_3100(v19 + 7, v20);
  *(v0 + 80) = v18;
  *(v0 + 88) = &protocol witness table for AceOutput;
  v22 = sub_3190((v0 + 56));
  (*(v17 + 16))(v22, v16, v18);
  v23 = swift_task_alloc();
  *(v0 + 152) = v23;
  *v23 = v0;
  v23[1] = sub_2384;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 56, v20, v21);
}

uint64_t sub_2384()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_251C;
  }

  else
  {
    sub_3144((v2 + 56));
    v3 = sub_24A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_24A0()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_251C()
{
  sub_3144(v0 + 7);
  v1 = sub_17C44();
  v2 = sub_17E74();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "submit commands failed.", v3, 2u);
  }

  (*(v0[16] + 8))(v0[17], v0[15]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2624()
{
  v1[12] = v0;
  sub_30B8(&qword_25190, &qword_19810);
  v1[13] = swift_task_alloc();
  v2 = sub_17C04();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v3 = sub_17B54();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_2778, 0, 0);
}

uint64_t sub_2778()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 104);
  sub_17B44();
  sub_17B04();
  sub_17AF4();
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  sub_17AB4();
  sub_31F4(v0 + 16, &qword_25198, &qword_19818);
  sub_31F4(v4, &qword_25190, &qword_19810);
  if (qword_24C88 != -1)
  {
    swift_once();
  }

  v5 = sub_17C54();
  *(v0 + 160) = sub_3080(v5, qword_27B90);
  v6 = sub_17C44();
  v7 = sub_17E54();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "submit nlContextUpdate.", v8, 2u);
  }

  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v11 = *(v0 + 112);
  v12 = *(v0 + 96);

  v13 = v12[10];
  v14 = v12[11];
  sub_3100(v12 + 7, v13);
  *(v0 + 80) = v11;
  *(v0 + 88) = &protocol witness table for AceOutput;
  v15 = sub_3190((v0 + 56));
  (*(v10 + 16))(v15, v9, v11);
  v16 = swift_task_alloc();
  *(v0 + 168) = v16;
  *v16 = v0;
  v16[1] = sub_2A0C;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 56, v13, v14);
}

uint64_t sub_2A0C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_2BE4;
  }

  else
  {
    sub_3144((v2 + 56));
    v3 = sub_2B28;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_2B28()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2BE4()
{
  sub_3144(v0 + 7);
  v1 = sub_17C44();
  v2 = sub_17E74();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "submit nlContextUpdate failed.", v3, 2u);
  }

  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2D24()
{
  sub_3144((v0 + 16));
  sub_3144((v0 + 56));

  return _swift_deallocClassInstance(v0, 96, 7);
}

void sub_2D88(uint64_t a1, unint64_t a2)
{
  if (qword_24C88 != -1)
  {
    swift_once();
  }

  v4 = sub_17C54();
  sub_3080(v4, qword_27B90);

  v5 = sub_17C44();
  v6 = sub_17E64();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_15ECC(a1, a2, v18);
    _os_log_impl(&dword_0, v5, v6, "startRequest: %s", v7, 0xCu);
    sub_3144(v8);
  }

  v9 = [objc_allocWithZone(SAStartRequest) init];
  [v9 setOrigin:SAInputOriginServerGeneratedValue];
  v10 = sub_17CC4();
  [v9 setUtterance:v10];

  v11 = [objc_allocWithZone(SASendCommands) init];
  sub_30B8(&unk_25180, qword_197F8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_197A0;
  *(v12 + 32) = v9;
  v13 = v9;
  sub_30B8(&unk_25730, &qword_1A630);
  isa = sub_17E04().super.isa;

  [v11 setCommands:isa];

  sub_17A94();
  sub_3100(v18, v18[3]);
  sub_17B74();
  sub_3144(v18);
  v15 = sub_17C44();
  v16 = sub_17E54();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "submit SAStartRequest ", v17, 2u);
  }
}

uint64_t sub_3080(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_30B8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_3100(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_3144(void *a1)
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

uint64_t *sub_3190(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_31F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_30B8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_3254(uint64_t a1)
{
  v2 = sub_17BD4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_17BE4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v41 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_17BB4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_24C88 != -1)
  {
    swift_once();
  }

  v12 = sub_17C54();
  v13 = sub_3080(v12, qword_27B90);
  v14 = *(v9 + 16);
  v40 = a1;
  v14(v11, a1, v8);
  v38 = v13;
  v15 = sub_17C44();
  v16 = sub_17E64();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v35 = v6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v36 = v3;
    v20 = v19;
    v42 = v19;
    *v18 = 136315138;
    v21 = sub_17B94();
    v37 = v5;
    v22 = v2;
    v24 = v23;
    (*(v9 + 8))(v11, v8);
    v25 = sub_15ECC(v21, v24, &v42);
    v2 = v22;
    v5 = v37;

    *(v18 + 4) = v25;
    _os_log_impl(&dword_0, v15, v16, "edutainment input is: %s", v18, 0xCu);
    sub_3144(v20);
    v3 = v36;

    v6 = v35;
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v26 = v41;
  sub_17BA4();
  if ((*(v6 + 88))(v26, v5) == enum case for Parse.directInvocation(_:))
  {
    (*(v6 + 96))(v26, v5);
    v27 = v39;
    (*(v3 + 32))(v39, v26, v2);
    v28 = sub_1357C();
    if (v28)
    {
      sub_49E0(v28);

      (*(v3 + 8))(v27, v2);
      return 1;
    }

    (*(v3 + 8))(v27, v2);
  }

  else
  {
    v30 = v6;
    v31 = sub_17C44();
    v32 = sub_17E84();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "please use directInvocaion instead.", v33, 2u);
    }

    (*(v30 + 8))(v26, v5);
  }

  return 0;
}

uint64_t sub_3710(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_3730, 0, 0);
}

uint64_t sub_3730()
{
  v53 = v0;
  v1 = v0[5];
  v2 = *(v1 + 16);
  v0[6] = v2;
  v3 = *(v1 + 24);
  v0[7] = v3;
  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (v4)
    {
      v19 = qword_24C88;

      if (v19 != -1)
      {
        swift_once();
      }

      v20 = sub_17C54();
      sub_3080(v20, qword_27B90);
      v21 = sub_17C44();
      v22 = sub_17E54();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_0, v21, v22, "step2: push play/resume flow", v23, 2u);
      }

      v24 = v0[5];

      v25 = *(v24 + 88);
      type metadata accessor for EdutainmentGameFlow();
      v26 = swift_allocObject();
      if (v2)
      {
        sub_68E0(v2, v3);

        v0[3] = sub_1413C(v3 & 0x3FFFFFFFFFFFFFFFLL, v25);
        sub_68FC(&qword_25330, type metadata accessor for EdutainmentGameFlow, &unk_1A738);
      }

      else
      {
        *(v26 + 64) = 0u;
        *(v26 + 80) = 0u;
        *(v26 + 32) = 0u;
        *(v26 + 48) = 0u;
        *(v26 + 16) = 0u;
        *(v26 + 120) = v3 & 0x3FFFFFFFFFFFFFFFLL;
        *(v26 + 96) = 0;
        *(v26 + 104) = v25;
        *(v26 + 112) = 0;
        v0[2] = v26;
        sub_68E0(v2, v3);
        sub_68FC(&qword_25330, type metadata accessor for EdutainmentGameFlow, &unk_1A738);
      }

      sub_17AD4();

      sub_62E8(v2, v3);
    }

    else
    {
      sub_68E0(v2, v3);
      v5 = qword_24C88;

      if (v5 != -1)
      {
        swift_once();
      }

      v6 = sub_17C54();
      sub_3080(v6, qword_27B90);
      v7 = sub_17C44();
      v8 = sub_17E54();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_0, v7, v8, "step1: initialize", v9, 2u);
      }

      sub_4C50(v2);
      sub_17AC4();
      sub_62E8(v2, v3);
      sub_62E8(v2, v3);
    }

    goto LABEL_43;
  }

  if (v4 == 2)
  {
    if (qword_24C88 != -1)
    {
      swift_once();
    }

    v10 = sub_17C54();
    sub_3080(v10, qword_27B90);
    v11 = sub_17C44();
    v12 = sub_17E54();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "user ends game and flow completes1", v13, 2u);
    }

    if ((v2 & 1) == 0)
    {
      v29 = v0[5];
      v30 = *(v29 + 80);
      if (v30)
      {
        *(v29 + 80) = 0;
        if (qword_24C90 != -1)
        {
          swift_once();
        }

        if (qword_27BA8)
        {
          sub_65FC(v30, qword_27BA8, &unk_21330, sub_6998, &unk_21348);
        }
      }

      v31 = v0[6];
      v32 = v0[7];
      sub_17AE4();
      sub_62E8(v31, v32);
      goto LABEL_43;
    }

    v14 = sub_17C44();
    v15 = sub_17E64();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "update NLContextUpdate", v16, 2u);
    }

    v17 = swift_task_alloc();
    v0[9] = v17;
    *v17 = v0;
    v18 = sub_42A0;
  }

  else
  {
    if (!(v2 | v3 ^ 0xC000000000000000))
    {
      sub_17AC4();
LABEL_43:
      v33 = v0[1];

      return v33();
    }

    if (v3 == 0xC000000000000000 && v2 == 1)
    {
      if (qword_24C88 != -1)
      {
        swift_once();
      }

      v35 = sub_17C54();
      sub_3080(v35, qword_27B90);
      v36 = sub_17C44();
      v37 = sub_17E54();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_0, v36, v37, "user is answering and flow completes", v38, 2u);
      }

      v17 = swift_task_alloc();
      v0[8] = v17;
      *v17 = v0;
      v18 = sub_4134;
    }

    else
    {
      if (v3 != 0xC000000000000000 || v2 != 2)
      {
        if (qword_24C88 != -1)
        {
          swift_once();
        }

        v39 = sub_17C54();
        sub_3080(v39, qword_27B90);

        v40 = sub_17C44();
        v41 = sub_17E54();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v52 = v43;
          *v42 = 136315138;
          v44 = *(v1 + 24);
          v45 = v44 >> 62;
          if ((v44 >> 62) > 1)
          {
            if (v45 == 2)
            {
              v46 = 0xEE00656D61672073;
              v47 = 0x646E652072657375;
            }

            else
            {
              v49 = *(v1 + 16);
              if (__PAIR128__(0xC000000000000000, 1) >= __PAIR128__(v44, v49))
              {
                if (v49 | v44 ^ 0xC000000000000000)
                {
                  v47 = 0xD000000000000011;
                  v46 = 0x8000000000018CA0;
                }

                else
                {
                  v46 = 0xEF7475706E692072;
                  v47 = 0x657375206465656ELL;
                }
              }

              else if (v44 == 0xC000000000000000 && v49 == 2)
              {
                v46 = 0x8000000000018C70;
                v47 = 0xD00000000000002CLL;
              }

              else if (v44 == 0xC000000000000000 && v49 == 3)
              {
                v46 = 0xEF7465792074726FLL;
                v47 = 0x7070757320746F6ELL;
              }

              else
              {
                v46 = 0xEB00000000726F72;
                v47 = 0x7265207475706E69;
              }
            }
          }

          else if (v45)
          {
            v46 = 0xEF656D6167207961;
            v47 = 0x6C70207472617473;
          }

          else
          {
            v46 = 0xEA0000000000657ALL;
            v47 = 0x696C616974696E69;
          }

          v48 = sub_15ECC(v47, v46, &v52);

          *(v42 + 4) = v48;
          _os_log_impl(&dword_0, v40, v41, "%s and flow completes", v42, 0xCu);
          sub_3144(v43);
        }

        sub_17AE4();
        goto LABEL_43;
      }

      v17 = swift_task_alloc();
      v0[10] = v17;
      *v17 = v0;
      v18 = sub_448C;
    }
  }

  v17[1] = v18;

  return sub_2624();
}

uint64_t sub_4134()
{

  return _swift_task_switch(sub_4230, 0, 0);
}

uint64_t sub_4230(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[7];
  sub_17AE4();
  sub_62E8(v2, v3);
  v4 = v1[1];

  return v4();
}

uint64_t sub_42A0()
{

  return _swift_task_switch(sub_439C, 0, 0);
}

uint64_t sub_439C(uint64_t a1)
{
  v2 = v1[5];
  v3 = *(v2 + 80);
  if (v3)
  {
    *(v2 + 80) = 0;
    if (qword_24C90 != -1)
    {
      swift_once();
    }

    if (qword_27BA8)
    {
      sub_65FC(v3, qword_27BA8, &unk_21330, sub_6998, &unk_21348);
    }
  }

  v4 = v1[6];
  v5 = v1[7];
  sub_17AE4();
  sub_62E8(v4, v5);
  v6 = v1[1];

  return v6();
}

uint64_t sub_448C()
{

  return _swift_task_switch(sub_4588, 0, 0);
}

uint64_t sub_4588(uint64_t a1)
{
  sub_17AE4();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_45E8(uint64_t a1, uint64_t a2)
{
  if (qword_24C88 != -1)
  {
    swift_once();
  }

  v3 = sub_17C54();
  sub_3080(v3, qword_27B90);
  v4 = sub_17C44();
  v5 = sub_17E54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "step3: complete playing flow", v6, 2u);
  }

  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  *(a2 + 16) = xmmword_19830;

  return sub_62E8(v7, v8);
}

void *sub_46E4()
{
  v1 = v0;
  v2 = v0[10];
  if (!v2)
  {
    goto LABEL_25;
  }

  v3 = *(v2 + 90);
  if (v3 > 2)
  {
    if (v3 != 3 && v3 != 4)
    {
      goto LABEL_25;
    }
  }

  else if (!*(v2 + 90))
  {

    goto LABEL_10;
  }

  v4 = sub_18134();

  if ((v4 & 1) == 0)
  {
LABEL_24:

    goto LABEL_25;
  }

LABEL_10:
  v5 = *(v2 + 104);
  if (v5 < 2)
  {
    goto LABEL_24;
  }

  if (!((v5 & 0x2000000000000000) != 0 ? HIBYTE(v5) & 0xF : *(v2 + 96) & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_24;
  }

  if (qword_24C90 != -1)
  {
    swift_once();
  }

  v7 = qword_27BA8;
  if (qword_27BA8)
  {

    sub_65FC(v8, v7, &unk_212E0, sub_64DC, &unk_212F8);
  }

  v1[10] = 0;

  if (qword_24C88 != -1)
  {
    swift_once();
  }

  v9 = sub_17C54();
  sub_3080(v9, qword_27B90);
  v10 = sub_17C44();
  v11 = sub_17E64();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "deinit", v12, 2u);
  }

LABEL_25:
  sub_62E8(v1[2], v1[3]);
  sub_65AC(v1[4], v1[5], v1[6], v1[7], v1[8], v1[9]);

  sub_3144(v1 + 12);
  return v1;
}

uint64_t sub_4988()
{
  sub_46E4();

  return _swift_deallocClassInstance(v0, 136, 7);
}

uint64_t sub_49E0(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = v2[7];
  v14 = v2[8];
  v15 = v2[9];
  v2[4] = v4;
  v2[5] = v5;
  v2[6] = v6;
  v2[7] = v7;
  v2[8] = v9;
  v2[9] = v8;

  sub_65AC(v10, v11, v12, v13, v14, v15);
  v16 = 1 << *(a1 + 90);
  if ((v16 & 0xD) != 0)
  {
    if (qword_24C88 != -1)
    {
      swift_once();
    }

    v17 = sub_17C54();
    sub_3080(v17, qword_27B90);

    v18 = sub_17C44();
    v19 = sub_17E64();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136315138;
      sub_30B8(&qword_25310, qword_19A00);
      v22 = sub_17F14();
      v24 = sub_15ECC(v22, v23, &v31);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_0, v18, v19, "edutainment new clientAction = %s", v20, 0xCu);
      sub_3144(v21);
    }

    v25 = v2[2];
    v26 = v2[3];
    v2[2] = a1;
    v2[3] = 0;

    return sub_62E8(v25, v26);
  }

  else
  {
    if ((v16 & 0x30) != 0)
    {
      v28 = v2[2];
      v29 = v2[3];
      v30 = xmmword_19850;
    }

    else
    {
      sub_5B34(a1);
      v28 = v2[2];
      v29 = v2[3];
      v30 = xmmword_19840;
    }

    *(v2 + 1) = v30;

    return sub_62E8(v28, v29);
  }
}

uint64_t sub_4C50(unint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = v1[5];
    if (v3)
    {
      v4 = a1;
      v5 = v1[4];
      v6 = v1[8];
      v7 = v2[9];
      v8 = v2[6];
      v9 = v2[7];
      v86[5] = v2[4];
      v86[6] = v3;
      v86[7] = v8;
      v86[8] = v9;
      v86[9] = v6;
      v86[10] = v7;
      v10 = *(a1 + 90);

      v80 = v5;
      sub_6304(v5, v3, v8, v9, v6, v7);
      if (qword_24C88 != -1)
      {
        swift_once();
      }

      v11 = sub_17C54();
      sub_3080(v11, qword_27B90);
      v12 = sub_17C44();
      v13 = sub_17E64();
      v85 = v3;
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v86[0] = v15;
        *v14 = 136315138;
        sub_30B8(&qword_25310, qword_19A00);
        v16 = sub_17F14();
        v18 = v4;
        v19 = sub_15ECC(v16, v17, v86);

        *(v14 + 4) = v19;
        v4 = v18;
        _os_log_impl(&dword_0, v12, v13, "edutainment clientAction = %s", v14, 0xCu);
        sub_3144(v15);
      }

      if (v2[10])
      {
        v20 = v2[10];
      }

      else
      {

        v20 = v4;
      }

      sub_3100(v2 + 12, v2[15]);

      if (sub_17AA4())
      {

        v28 = sub_17C44();
        v29 = sub_17E54();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_0, v28, v29, "device is locked, so play game directly.", v30, 2u);
        }

        if (v10 > 2)
        {
          if (v10 != 3 && v10 != 4)
          {
LABEL_37:
            v41 = sub_17C44();
            v42 = sub_17E64();
            if (os_log_type_enabled(v41, v42))
            {
              v43 = swift_slowAlloc();
              *v43 = 0;
              _os_log_impl(&dword_0, v41, v42, "device is locked, server clientAction is update or end", v43, 2u);
            }

LABEL_66:

            v73 = v2[2];
            v74 = v2[3];
            *(v2 + 1) = xmmword_19860;
            return sub_62E8(v73, v74);
          }
        }

        else if (v10 > 1)
        {

LABEL_41:
          v44 = sub_17C44();
          v45 = sub_17E64();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 0;
            _os_log_impl(&dword_0, v44, v45, "device is locked, server clientAction is resume", v46, 2u);
          }

          v47 = v2[2];
          v48 = v2[3];
          v2[2] = 0;
          v2[3] = v20 | 0x4000000000000000;
          return sub_62E8(v47, v48);
        }

        v40 = sub_18134();

        if ((v40 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_41;
      }

      v31 = sub_17C44();
      v32 = sub_17E64();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v86[0] = v77;
        *v33 = 136315138;
        v34 = sub_B9A8();
        v36 = v10;
        v37 = v20;
        v38 = v4;
        v39 = sub_15ECC(v34, v35, v86);

        *(v33 + 4) = v39;
        v4 = v38;
        v20 = v37;
        v10 = v36;
        _os_log_impl(&dword_0, v31, v32, "edutainment game state = %s", v33, 0xCu);
        sub_3144(v77);
      }

      if (*(v20 + 32) == v80 && v85 == *(v20 + 40) || (sub_18134() & 1) != 0 || *(v20 + 104) == 1)
      {

        if (v10 <= 2)
        {
          goto LABEL_29;
        }
      }

      else
      {

        v49 = sub_17C44();
        v50 = sub_17E64();

        if (os_log_type_enabled(v49, v50))
        {
          v81 = v10;
          v51 = swift_slowAlloc();
          v78 = v50;
          v52 = swift_slowAlloc();
          v86[0] = v52;
          *v51 = 136315138;
          log = v49;
          v53 = sub_6A68();
          v55 = v54;

          v56 = sub_15ECC(v53, v55, v86);

          *(v51 + 4) = v56;
          v49 = log;
          _os_log_impl(&dword_0, log, v78, "edutainment newGame = %s", v51, 0xCu);
          sub_3144(v52);

          v10 = v81;
        }

        else
        {
        }

        if (qword_24C90 != -1)
        {
          swift_once();
        }

        v57 = qword_27BA8;
        if (qword_27BA8)
        {

          sub_65FC(v58, v57, &unk_212E0, sub_64DC, &unk_212F8);
        }

        v2[10] = v4;

        if (v10 <= 2)
        {
LABEL_29:
          if (v10 > 1)
          {
            goto LABEL_56;
          }

LABEL_54:
          v59 = sub_18134();

          if (v59)
          {
LABEL_58:
            if (qword_24C90 != -1)
            {
              swift_once();
            }

            if (qword_27BA8)
            {
              v82 = v10;
              v84 = v20;
              v62 = v2[4];
              v61 = v2[5];
              v64 = v2[6];
              v63 = v2[7];
              v66 = v2[8];
              v65 = v2[9];
              if (v61)
              {
                v67 = swift_allocObject();
                v67[2] = v62;
                v67[3] = v61;
                v67[4] = v64;
                v67[5] = v63;
                v67[6] = v66;
                v67[7] = v65;
                v68 = &off_213F8;
                v69 = &type metadata for EdutainmentGame;
              }

              else
              {
                v67 = 0;
                v69 = 0;
                v68 = 0;
                v86[1] = 0;
                v86[2] = 0;
              }

              v86[0] = v67;
              v86[3] = v69;
              v86[4] = v68;
              v83 = *(v4 + 176);
              v79 = *(v4 + 184);
              v75 = swift_allocObject();
              *(v75 + 16) = v2;
              *(v75 + 24) = v82;
              *(v75 + 32) = v4;
              *(v75 + 40) = v84;

              sub_6304(v62, v61, v64, v63, v66, v65);

              sub_15560(v86, v83, v79, sub_639C, v75);

              return sub_63AC(v86);
            }

            else
            {
            }
          }

          if (v10 == 3)
          {
LABEL_56:

            goto LABEL_58;
          }

          v60 = sub_18134();

          if (v60)
          {
            goto LABEL_58;
          }

LABEL_63:
          v70 = sub_17C44();
          v71 = sub_17E54();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            *v72 = 0;
            _os_log_impl(&dword_0, v70, v71, "update edutainment gameState", v72, 2u);
          }

          v2[10] = v4;
          goto LABEL_66;
        }
      }

      if (v10 != 3 && v10 != 4)
      {
        goto LABEL_63;
      }

      goto LABEL_54;
    }
  }

  if (qword_24C88 != -1)
  {
    swift_once();
  }

  v21 = sub_17C54();
  sub_3080(v21, qword_27B90);
  v22 = sub_17C44();
  v23 = sub_17E74();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "invalid game state", v24, 2u);
  }

  v25 = v2[2];
  v26 = v2[3];
  *(v2 + 1) = xmmword_19870;

  return sub_62E8(v25, v26);
}

uint64_t sub_586C(uint64_t a1, void *a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    a2[10] = a4;

    v19 = a2[2];
    v20 = a2[3];
    a2[2] = 0;
    a2[3] = a5 | 0x4000000000000000;

    v21 = v19;
    v22 = v20;
    goto LABEL_15;
  }

  v9 = qword_24C88;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_17C54();
  sub_3080(v10, qword_27B90);

  v11 = sub_17C44();
  v12 = sub_17E64();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136315138;
    v15 = sub_B9A8();
    v17 = sub_15ECC(v15, v16, &v26);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_0, v11, v12, "edutainment storedGameState = %s", v13, 0xCu);
    sub_3144(v14);
  }

  if (a3 <= 2u)
  {
    goto LABEL_11;
  }

  if (a3 == 3)
  {

    v23 = a4;
  }

  else
  {
    v23 = a1;
    if (a3 == 4)
    {
LABEL_11:
      v24 = sub_18134();

      if (v24)
      {
        v23 = a4;
      }

      else
      {
        v23 = a1;
      }
    }
  }

  a2[10] = v23;
  swift_retain_n();

  v21 = a2[2];
  v22 = a2[3];
  a2[2] = 1;
  a2[3] = v23 | 0x4000000000000000;
LABEL_15:

  return sub_62E8(v21, v22);
}

void sub_5B34(uint64_t a1)
{
  sub_3100(v1 + 12, v1[15]);
  if (sub_17AA4())
  {
    if (qword_24C88 != -1)
    {
      swift_once();
    }

    v3 = sub_17C54();
    sub_3080(v3, qword_27B90);
    oslog = sub_17C44();
    v4 = sub_17E54();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, oslog, v4, "Device is locked when user end game", v5, 2u);
    }
  }

  else
  {
    v1[10] = a1;
  }
}

uint64_t sub_5C94(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_5CB0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_5CBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 16))
  {
    return (*a1 + 125);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_5D18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_5D78(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3);
    result[1] = 0xC000000000000000;
  }

  return result;
}

uint64_t sub_5DB0()
{
  v1 = v0[1];
  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 == 2)
    {
      return 0x646E652072657375;
    }

    else
    {
      v4 = *v0;
      v5 = v1 == 0xC000000000000000 && v4 == 3;
      v6 = 0x7070757320746F6ELL;
      if (!v5)
      {
        v6 = 0x7265207475706E69;
      }

      if (v1 == 0xC000000000000000 && v4 == 2)
      {
        v8 = 0xD00000000000002CLL;
      }

      else
      {
        v8 = v6;
      }

      if (v4 | v1 ^ 0xC000000000000000)
      {
        v9 = 0xD000000000000011;
      }

      else
      {
        v9 = 0x657375206465656ELL;
      }

      if (__PAIR128__(0xC000000000000000, 1) >= *v0)
      {
        return v9;
      }

      else
      {
        return v8;
      }
    }
  }

  else if (v2)
  {
    return 0x6C70207472617473;
  }

  else
  {
    return 0x696C616974696E69;
  }
}

uint64_t sub_5F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_5FF8;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_5FF8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_6150(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_61EC;

  return sub_3710(a1);
}

uint64_t sub_61EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_62E8(uint64_t result, unint64_t a2)
{
  if ((a2 >> 62) <= 1)
  {
  }

  return v2;
}

void sub_6304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_6354()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_63AC(uint64_t a1)
{
  v2 = sub_30B8(&qword_25308, &qword_199F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6414()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_645C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_64C4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_64E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_6500()
{
  result = qword_25328;
  if (!qword_25328)
  {
    sub_6564(&qword_25320, &qword_1A7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25328);
  }

  return result;
}

uint64_t sub_6564(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_65AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_65FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_17C74();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_17C94();
  v13 = *(v20 - 8);
  __chkstk_darwin(v20);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[3] = type metadata accessor for GameState();
  v24[4] = &off_21880;
  v24[0] = a1;
  v19 = *(a2 + 24);
  sub_645C(v24, v23);
  v16 = swift_allocObject();
  sub_64C4(v23, v16 + 16);
  *(v16 + 56) = a2;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1551C;
  aBlock[3] = a5;
  v17 = _Block_copy(aBlock);

  sub_17C84();
  v21 = &_swiftEmptyArrayStorage;
  sub_68FC(&qword_25318, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_30B8(&qword_25320, &qword_1A7F0);
  sub_6500();
  sub_17F34();
  sub_17EB4();
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v20);

  return sub_3144(v24);
}

uint64_t sub_68E0(uint64_t result, unint64_t a2)
{
  if ((a2 >> 62) <= 1)
  {
  }

  return v2;
}

uint64_t sub_68FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_6944()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 16) = xmmword_19830;
  return sub_62E8(v1, v2);
}

uint64_t sub_6958()
{
  sub_3144((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

__n128 sub_69B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_69C4(uint64_t a1, int a2)
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

uint64_t sub_6A0C(uint64_t result, int a2, int a3)
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

uint64_t sub_6A68()
{
  sub_17D84(*v0);
  v4._countAndFlagsBits = 2592;
  v4._object = 0xE200000000000000;
  sub_17D84(v4);
  sub_17D84(v0[1]);
  v5._countAndFlagsBits = 2592;
  v5._object = 0xE200000000000000;
  sub_17D84(v5);

  v6._countAndFlagsBits = 0x79726F6765746163;
  v6._object = 0xE90000000000003ALL;
  sub_17D84(v6);

  if (v0[2]._object)
  {
    countAndFlagsBits = v0[2]._countAndFlagsBits;
    object = v0[2]._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v7._countAndFlagsBits = countAndFlagsBits;
  v7._object = object;
  sub_17D84(v7);

  v8._countAndFlagsBits = 0x6C75636966666964;
  v8._object = 0xEB000000003A7974;
  sub_17D84(v8);

  return 0x3A656D616ELL;
}

uint64_t sub_6BCC()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_6BFC()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_6C2C(unsigned __int8 a1)
{
  v1 = a1;
  v2 = 0xE400000000000000;
  v3 = 2036427888;
  v4 = 0xE300000000000000;
  v5 = 6581861;
  if (a1 != 5)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = 1885956979;
  if (a1 != 3)
  {
    v6 = 1953393000;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE400000000000000;
  }

  v7 = 0x656D75736572;
  if (a1 != 1)
  {
    v7 = 0x726577736E61;
  }

  if (a1)
  {
    v3 = v7;
    v2 = 0xE600000000000000;
  }

  if (a1 <= 2u)
  {
    v8._countAndFlagsBits = v3;
  }

  else
  {
    v8._countAndFlagsBits = v5;
  }

  if (v1 <= 2)
  {
    v9 = v2;
  }

  else
  {
    v9 = v4;
  }

  v8._object = v9;
  sub_17D84(v8);

  v11._countAndFlagsBits = 39;
  v11._object = 0xE100000000000000;
  sub_17D84(v11);
  return 39;
}

uint64_t sub_6D34(unsigned __int8 a1)
{
  v1 = a1;
  v2 = 0xE600000000000000;
  v3 = 0x657461647075;
  v4 = 0xE600000000000000;
  v5 = 0x656D75736572;
  v6 = 0x8000000000018A30;
  v7 = 0xD000000000000013;
  if (a1 != 3)
  {
    v7 = 0x6E776F6E6B6E75;
    v6 = 0xE700000000000000;
  }

  if (a1 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (a1)
  {
    v3 = 6581861;
    v2 = 0xE300000000000000;
  }

  if (a1 <= 1u)
  {
    v8._countAndFlagsBits = v3;
  }

  else
  {
    v8._countAndFlagsBits = v5;
  }

  if (v1 <= 1)
  {
    v9 = v2;
  }

  else
  {
    v9 = v4;
  }

  v8._object = v9;
  sub_17D84(v8);

  v11._countAndFlagsBits = 39;
  v11._object = 0xE100000000000000;
  sub_17D84(v11);
  return 39;
}

__n128 sub_6E18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_6E3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_6E84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_6EE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6E61656C6F6F62;
  if (v2 != 1)
  {
    v4 = 0x6D726F6665657266;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656C7069746C756DLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6E61656C6F6F62;
  if (*a2 != 1)
  {
    v8 = 0x6D726F6665657266;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C7069746C756DLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_18134();
  }

  return v11 & 1;
}

Swift::Int sub_6FEC()
{
  sub_18154();
  sub_17D74();

  return sub_18174();
}

uint64_t sub_7090(uint64_t a1)
{
  sub_17D74();
}

Swift::Int sub_7120(uint64_t a1)
{
  sub_18154();
  sub_17D74();

  return sub_18174();
}

unint64_t sub_71C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_79E8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_71F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6E61656C6F6F62;
  if (v2 != 1)
  {
    v5 = 0x6D726F6665657266;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C7069746C756DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_7318(uint64_t a1)
{
  sub_17D74();
}

unint64_t sub_7428@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_7A34(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_7458(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x79726F6765746163;
  v5 = 0xE400000000000000;
  v6 = 1701869940;
  if (v2 != 5)
  {
    v6 = 0x6C75636966666964;
    v5 = 0xEA00000000007974;
  }

  v7 = 0x80000000000189A0;
  v8 = 0xD000000000000012;
  if (v2 != 3)
  {
    v8 = 1953393000;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6E6F697473657571;
  if (v2 != 1)
  {
    v10 = 0x73726577736E61;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_7530()
{
  v1 = *v0;
  v2 = 0x79726F6765746163;
  v3 = 1701869940;
  if (v1 != 5)
  {
    v3 = 0x6C75636966666964;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 1953393000;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E6F697473657571;
  if (v1 != 1)
  {
    v5 = 0x73726577736E61;
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

unint64_t sub_7604@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_7A34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_7644(uint64_t a1)
{
  v2 = sub_7EF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7680(uint64_t a1)
{
  v2 = sub_7EF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_76BC(void *a1)
{
  v3 = v1;
  v5 = sub_30B8(&qword_25358, &qword_19BA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_3100(a1, a1[3]);
  sub_7EF0();
  sub_18194();
  LOBYTE(v11) = 0;
  sub_180F4();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_180F4();
    v11 = *(v3 + 32);
    HIBYTE(v10) = 2;
    sub_30B8(&qword_25348, &qword_19BA0);
    sub_7FAC(&qword_25360, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_18114();
    LOBYTE(v11) = 3;
    sub_18104();
    LOBYTE(v11) = 4;
    sub_180F4();
    LOBYTE(v11) = *(v3 + 64);
    HIBYTE(v10) = 5;
    sub_8018();
    sub_18114();
    LOBYTE(v11) = 6;
    sub_180F4();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_7974@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_7A80(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_79E8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_20C60;
  v6._object = a2;
  v4 = sub_18034(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_7A34(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_20CC8;
  v6._object = a2;
  v4 = sub_18034(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_7A80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_30B8(&qword_25338, &qword_19B98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  sub_3100(a1, a1[3]);
  sub_7EF0();
  sub_18184();
  if (v2)
  {
    sub_3144(a1);
  }

  else
  {
    LOBYTE(v41[0]) = 0;
    v9 = sub_18084();
    v11 = v10;
    v34 = v9;
    LOBYTE(v41[0]) = 1;
    v12 = sub_18084();
    *(&v33 + 1) = v13;
    *&v33 = v12;
    sub_30B8(&qword_25348, &qword_19BA0);
    LOBYTE(v35) = 2;
    sub_7FAC(&qword_25350, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_180A4();
    v32 = v41[0];
    LOBYTE(v41[0]) = 3;
    v14 = sub_18094();
    LOBYTE(v41[0]) = 4;
    v29 = sub_18084();
    v30 = v14;
    v31 = v15;
    v45 = 6;
    v16 = sub_18084();
    v17 = *(v6 + 8);
    v18 = v16;
    v28 = v19;
    v17(v8, v5);
    *&v35 = v34;
    v20 = v33;
    *(&v35 + 1) = v11;
    v21 = *(&v33 + 1);
    v36 = v33;
    v22 = v32;
    *&v37 = v32;
    *(&v37 + 1) = v30;
    *&v38 = v29;
    *(&v38 + 1) = v31;
    LOBYTE(v39) = 2;
    v23 = v28;
    *(&v39 + 1) = v18;
    v40 = v28;
    sub_7F44(&v35, v41);
    sub_3144(a1);
    v41[0] = v34;
    v41[1] = v11;
    v41[2] = v20;
    v41[3] = v21;
    v41[4] = v22;
    v41[5] = v30;
    v41[6] = v29;
    v41[7] = v31;
    v42 = 2;
    v43 = v18;
    v44 = v23;
    result = sub_7F7C(v41);
    v25 = v38;
    *(a2 + 32) = v37;
    *(a2 + 48) = v25;
    *(a2 + 64) = v39;
    *(a2 + 80) = v40;
    v26 = v36;
    *a2 = v35;
    *(a2 + 16) = v26;
  }

  return result;
}

unint64_t sub_7EF0()
{
  result = qword_25340;
  if (!qword_25340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25340);
  }

  return result;
}

uint64_t sub_7FAC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_6564(&qword_25348, &qword_19BA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_8018()
{
  result = qword_25368;
  if (!qword_25368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25368);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameState.UserAction(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GameState.UserAction(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for EdutainmentQuestion.QuestionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EdutainmentQuestion.QuestionType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_8330()
{
  result = qword_25370;
  if (!qword_25370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25370);
  }

  return result;
}

unint64_t sub_8388()
{
  result = qword_25378;
  if (!qword_25378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25378);
  }

  return result;
}

unint64_t sub_83E0()
{
  result = qword_25380;
  if (!qword_25380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25380);
  }

  return result;
}

unint64_t sub_8438()
{
  result = qword_25388;
  if (!qword_25388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25388);
  }

  return result;
}

unint64_t sub_848C()
{
  result = qword_25390;
  if (!qword_25390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25390);
  }

  return result;
}

__n128 sub_84E8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_84F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_8550(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_85B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_30B8(&qword_253A8, &qword_19EE0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_3100(a1, a1[3]);
  sub_9068();
  sub_18194();
  v14 = 0;
  sub_180B4();
  if (!v5)
  {
    v13 = 1;
    sub_180B4();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_8748(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0x7377656956646461;
  }

  if (v2)
  {
    v4 = 0xEC0000006E6F734ALL;
  }

  else
  {
    v4 = 0x80000000000189E0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 0x7377656956646461;
  }

  if (*a2)
  {
    v6 = 0x80000000000189E0;
  }

  else
  {
    v6 = 0xEC0000006E6F734ALL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18134();
  }

  return v8 & 1;
}

Swift::Int sub_87FC()
{
  sub_18154();
  sub_17D74();

  return sub_18174();
}

uint64_t sub_888C(uint64_t a1)
{
  sub_17D74();
}

Swift::Int sub_8908(uint64_t a1)
{
  sub_18154();
  sub_17D74();

  return sub_18174();
}

uint64_t sub_8994@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_20D90;
  v8._object = v3;
  v5 = sub_18034(v4, v8);

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

void sub_89F4(unint64_t *a1@<X8>)
{
  v2 = 0x80000000000189E0;
  v3 = 0x7377656956646461;
  if (*v1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xEC0000006E6F734ALL;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_8A40()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x7377656956646461;
  }
}

uint64_t sub_8A88@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_20D90;
  v9._object = a2;
  v6 = sub_18034(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_8AF8(uint64_t a1)
{
  v2 = sub_9068();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8B34(uint64_t a1)
{
  v2 = sub_9068();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_8B70@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_8E9C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_8BC0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_17D44();
  __chkstk_darwin(v4 - 8);
  sub_17934();
  swift_allocObject();
  sub_17924();
  sub_9344();
  v5 = sub_17914();
  v7 = v6;

  sub_17D34();
  v8._countAndFlagsBits = sub_17D14();
  if (v8._object)
  {
    sub_17D84(v8);

    v15._countAndFlagsBits = 39;
    v15._object = 0xE100000000000000;
    sub_17D84(v15);
    sub_92F0(v5, v7);
    return 39;
  }

  else
  {
    if (qword_24C80 != -1)
    {
      swift_once();
    }

    v11 = sub_17C54();
    sub_3080(v11, qword_27B78);
    v12 = sub_17C44();
    v13 = sub_17E74();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "Failed to decode ConversationData into JSON String.", v14, 2u);
    }

    v9 = 1280070990;

    sub_92F0(v5, v7);
  }

  return v9;
}

uint64_t sub_8E9C(void *a1)
{
  v3 = sub_30B8(&qword_25398, &qword_19ED8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_3100(a1, a1[3]);
  sub_9068();
  sub_18184();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_18044();
    v10 = 1;
    sub_18044();
    (*(v4 + 8))(v6, v3);
  }

  sub_3144(a1);
  return v7;
}

unint64_t sub_9068()
{
  result = qword_253A0;
  if (!qword_253A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_253A0);
  }

  return result;
}

const unsigned __int8 *sub_90BC(sqlite3_stmt *a1, int a2)
{
  v4 = sub_17D44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sqlite3_column_type(a1, a2) == 5)
  {
    return 0;
  }

  result = sqlite3_column_text(a1, a2);
  if (!result)
  {
    return result;
  }

  sub_17DA4();
  sub_17D34();
  v9 = sub_17D04();
  v11 = v10;

  (*(v5 + 8))(v7, v4);
  if (v11 >> 60 == 15)
  {
    return 0;
  }

  sub_17904();
  swift_allocObject();
  sub_178F4();
  sub_9288();
  sub_178E4();
  sub_92DC(v9, v11);

  return v12[2];
}

unint64_t sub_9288()
{
  result = qword_253B0;
  if (!qword_253B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_253B0);
  }

  return result;
}

uint64_t sub_92DC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_92F0(result, a2);
  }

  return result;
}

uint64_t sub_92F0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_9344()
{
  result = qword_253B8;
  if (!qword_253B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_253B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConversationData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConversationData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_94F8()
{
  result = qword_253C0;
  if (!qword_253C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_253C0);
  }

  return result;
}

unint64_t sub_9550()
{
  result = qword_253C8;
  if (!qword_253C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_253C8);
  }

  return result;
}

unint64_t sub_95A8()
{
  result = qword_253D0;
  if (!qword_253D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_253D0);
  }

  return result;
}

uint64_t sub_95FC()
{
  v1 = v0;
  sqlite3_close(*(v0 + 16));
  if (qword_24C80 != -1)
  {
    swift_once();
  }

  v2 = sub_17C54();
  sub_3080(v2, qword_27B78);
  v3 = sub_17C44();
  v4 = sub_17E54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Closed database.", v5, 2u);
  }

  return v1;
}

uint64_t sub_96E4()
{
  sub_95FC();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_973C()
{
  result = sub_9760();
  qword_27B50 = result;
  qword_27B58 = v1;
  return result;
}

uint64_t sub_9760()
{
  v0 = sub_17984();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v42 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v42 - v9;
  __chkstk_darwin(v8);
  v12 = &v42 - v11;
  v13 = objc_opt_self();
  v14 = [v13 defaultManager];
  v15 = [v14 URLsForDirectory:5 inDomains:1];

  v16 = sub_17E14();
  if (*(v16 + 16))
  {
    (*(v1 + 16))(v10, v16 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    (*(v1 + 32))(v12, v10, v0);
    sub_17964();
    v17 = [v13 defaultManager];
    sub_17954(v18);
    v20 = v19;
    sub_30B8(&qword_254C8, &qword_1A078);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A040;
    *(inited + 32) = NSFileProtectionKey;
    v43 = v12;
    type metadata accessor for FileProtectionType(0);
    *(inited + 64) = v22;
    *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v23 = NSFileProtectionKey;
    v24 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    sub_B438(inited);
    swift_setDeallocating();
    sub_A7BC(inited + 32);
    type metadata accessor for FileAttributeKey(0);
    sub_A824();
    isa = sub_17CA4().super.isa;

    v44 = 0;
    v26 = [v17 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:isa error:&v44];

    if (v26)
    {
      v27 = v44;
      sub_17964();
      v28 = sub_17974();
      v29 = *(v1 + 8);
      v29(v4, v0);
      v29(v7, v0);
      v29(v43, v0);
      return v28;
    }

    v35 = v43;
    v36 = v44;
    sub_17944();

    swift_willThrow();

    if (qword_24C80 != -1)
    {
      swift_once();
    }

    v37 = sub_17C54();
    sub_3080(v37, qword_27B78);
    v38 = sub_17C44();
    v39 = sub_17E74();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "Failed to create edutainment directory.", v40, 2u);
    }

    v41 = *(v1 + 8);
    v41(v7, v0);
    v41(v35, v0);
  }

  else
  {

    if (qword_24C80 != -1)
    {
      swift_once();
    }

    v31 = sub_17C54();
    sub_3080(v31, qword_27B78);
    v32 = sub_17C44();
    v33 = sub_17E74();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "Failed to get user document directory.", v34, 2u);
    }
  }

  return 0;
}

uint64_t sub_9D00()
{
  result = sub_9D20();
  qword_27B60 = result;
  return result;
}

uint64_t sub_9D20()
{
  v0 = sub_17C34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_17EE4();
  if (qword_24C70 != -1)
  {
    swift_once();
  }

  sub_17C24();
  sub_17C14();
  v4 = *(v1 + 8);
  v4(v3, v0);
  if (qword_24C60 != -1)
  {
    swift_once();
  }

  if (qword_27B58)
  {
    v5 = sub_A39C(qword_27B50, qword_27B58);
  }

  else
  {
    v5 = 0;
  }

  sub_17ED4();
  sub_17C24();
  sub_17C14();
  v4(v3, v0);
  return v5;
}

sqlite3_stmt *sub_9EFC()
{
  ppStmt = 0;
  v1 = *(v0 + 16);
  v2 = sub_17D64();
  v3 = sqlite3_prepare_v2(v1, (v2 + 32), -1, &ppStmt, 0);

  if (!v3)
  {
    return ppStmt;
  }

  if (qword_24C80 != -1)
  {
    swift_once();
  }

  v4 = sub_17C54();
  sub_3080(v4, qword_27B78);

  v5 = sub_17C44();
  v6 = sub_17E74();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    if (sqlite3_errmsg(v1))
    {
      v9 = sub_17D94();
      v11 = v10;
    }

    else
    {
      v11 = 0x8000000000018D00;
      v9 = 0xD00000000000001DLL;
    }

    v13 = sub_15ECC(v9, v11, &v14);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_0, v5, v6, "%s", v7, 0xCu);
    sub_3144(v8);
  }

  return 0;
}

BOOL sub_A0E8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_9EFC();
  if (v6)
  {
    v7 = v6;
    v8 = sqlite3_step(v6);
    v9 = v8 == 101;
    if (v8 == 101)
    {
      if (qword_24C80 != -1)
      {
        swift_once();
      }

      v10 = sub_17C54();
      sub_3080(v10, qword_27B78);

      v11 = sub_17C44();
      v12 = sub_17E54();

      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_16;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_15ECC(a1, a2, &v24);
      _os_log_impl(&dword_0, v11, v12, "Execution succeeded: %s", v13, 0xCu);
      sub_3144(v14);
    }

    else
    {
      if (qword_24C80 != -1)
      {
        swift_once();
      }

      v15 = sub_17C54();
      sub_3080(v15, qword_27B78);

      v11 = sub_17C44();
      v16 = sub_17E74();

      if (!os_log_type_enabled(v11, v16))
      {
        goto LABEL_16;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      if (sqlite3_errmsg(*(v3 + 16)))
      {
        v19 = sub_17D94();
        v21 = v20;
      }

      else
      {
        v21 = 0x8000000000018D00;
        v19 = 0xD00000000000001DLL;
      }

      v22 = sub_15ECC(v19, v21, &v24);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_0, v11, v16, "%s", v17, 0xCu);
      sub_3144(v18);
    }

LABEL_16:

    sqlite3_finalize(v7);
    return v9;
  }

  return 0;
}

uint64_t sub_A39C(uint64_t a1, unint64_t a2)
{
  if (qword_24C80 != -1)
  {
    swift_once();
  }

  v4 = sub_17C54();
  sub_3080(v4, qword_27B78);

  v5 = sub_17C44();
  v6 = sub_17E54();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    ppDb = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_15ECC(a1, a2, &ppDb);
    _os_log_impl(&dword_0, v5, v6, "Opening DB %s.", v7, 0xCu);
    sub_3144(v8);
  }

  ppDb = 0;
  v9 = sub_17D64();
  v10 = sqlite3_open((v9 + 32), &ppDb);

  v11 = ppDb;
  if (v10)
  {
    if (sqlite3_errmsg(ppDb))
    {
      v12 = sub_17D94();
      v14 = v13;
      v15 = sub_17C44();
      v16 = sub_17E74();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v28 = v18;
        *v17 = 136315138;
        v19 = sub_15ECC(v12, v14, &v28);

        *(v17 + 4) = v19;
        _os_log_impl(&dword_0, v15, v16, "%s", v17, 0xCu);
        sub_3144(v18);

LABEL_19:

        goto LABEL_20;
      }

LABEL_20:

      return 0;
    }

    v15 = sub_17C44();
    v25 = sub_17E74();
    if (!os_log_type_enabled(v15, v25))
    {
      goto LABEL_20;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "No error message from SQLite.";
LABEL_18:
    _os_log_impl(&dword_0, v15, v25, v27, v26, 2u);
    goto LABEL_19;
  }

  if (!ppDb)
  {
    v15 = sub_17C44();
    v25 = sub_17E74();
    if (!os_log_type_enabled(v15, v25))
    {
      goto LABEL_20;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Null DB pointer.";
    goto LABEL_18;
  }

  v20 = sub_17C44();
  v21 = sub_17E54();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_15ECC(a1, a2, &v28);
    _os_log_impl(&dword_0, v20, v21, "Open DB %s succeeded.", v22, 0xCu);
    sub_3144(v23);
  }

  type metadata accessor for SqlDatabase();
  result = swift_allocObject();
  *(result + 16) = v11;
  return result;
}

uint64_t sub_A7BC(uint64_t a1)
{
  v2 = sub_30B8(&qword_254D0, &unk_1A080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_A824()
{
  result = qword_24D48;
  if (!qword_24D48)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24D48);
  }

  return result;
}

uint64_t sub_A87C()
{
  sub_30B8(&qword_254D8, &qword_1A0D0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x70756F726724;
  *(inited + 16) = xmmword_1A090;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 0xD000000000000026;
  *(inited + 56) = 0x8000000000018D40;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x7373616C6324;
  *(inited + 120) = &type metadata for String;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0xD00000000000001ALL;
  *(inited + 104) = 0x8000000000018D70;
  sub_B560(inited);
  swift_setDeallocating();
  sub_30B8(&qword_254E0, &qword_1A0D8);
  swift_arrayDestroy();
  if (v0[13] != 1)
  {
    v2 = v0[15];
    if (v2)
    {
      v3 = v0[14];
      v19 = &type metadata for String;
      *&v18 = v3;
      *(&v18 + 1) = v2;
      sub_B690(&v18, v17);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_B0D8(v17, 0xD000000000000011, 0x8000000000018D90, isUniquelyReferenced_nonNull_native);
    }
  }

  if (qword_24C88 != -1)
  {
    swift_once();
  }

  v5 = sub_17C54();
  sub_3080(v5, qword_27B90);
  v6 = sub_17C44();
  v7 = sub_17E64();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v18 = v9;
    *v8 = 136315138;

    v10 = sub_17CB4();
    v12 = v11;

    v13 = sub_15ECC(v10, v12, &v18);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_0, v6, v7, "attachment is:%s", v8, 0xCu);
    sub_3144(v9);
  }

  v15 = sub_AB58(v14);
  swift_bridgeObjectRelease_n();
  return v15;
}

uint64_t sub_AB58(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_30B8(&qword_254F0, &qword_1A0E8);
    v2 = sub_18014();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_B6A0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_B690(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_B690(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_B690(v31, v32);
    result = sub_17F44(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_B690(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_AE20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_30B8(&qword_254E8, &qword_1A0E0);
  v33 = v4;
  result = sub_18004();
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
        sub_B690(v24, v34);
      }

      else
      {
        sub_B6A0(v24, v34);
      }

      sub_18154();
      sub_17D74();
      result = sub_18174();
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
      result = sub_B690(v34, (*(v7 + 56) + 32 * v15));
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

_OWORD *sub_B0D8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_12790(a2, a3);
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
      sub_B294();
      v11 = v19;
      goto LABEL_8;
    }

    sub_AE20(v16, a4 & 1);
    v11 = sub_12790(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_18144();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_3144(v22);

    return sub_B690(a1, v22);
  }

  else
  {
    sub_B228(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_B228(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_B690(a4, (a5[7] + 32 * a1));
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

void *sub_B294()
{
  v1 = v0;
  sub_30B8(&qword_254E8, &qword_1A0E0);
  v2 = *v0;
  v3 = sub_17FF4();
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
        sub_B6A0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_B690(v25, (*(v4 + 56) + v22));
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

unint64_t sub_B438(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_30B8(&qword_254F8, &unk_1A0F0);
    v3 = sub_18014();
    v4 = a1 + 32;

    while (1)
    {
      sub_B6FC(v4, &v11, &qword_254D0, &unk_1A080);
      v5 = v11;
      result = sub_12850(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_B690(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_B560(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_30B8(&qword_254E8, &qword_1A0E0);
    v3 = sub_18014();
    v4 = a1 + 32;

    while (1)
    {
      sub_B6FC(v4, &v13, &qword_254E0, &qword_1A0D8);
      v5 = v13;
      v6 = v14;
      result = sub_12790(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_B690(&v15, (v3[7] + 32 * result));
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

_OWORD *sub_B690(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_B6A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_B6FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_30B8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_B780()
{
  result = qword_25500;
  if (!qword_25500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_25500);
  }

  return result;
}

uint64_t sub_B7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_B780();
  result = sub_17F04();
  *a4 = result;
  return result;
}

uint64_t *sub_B88C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_B91C(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_17C54();
  sub_B88C(v8, a2);
  sub_3080(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_17C64();
}

uint64_t sub_B9A8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  v5._countAndFlagsBits = v1;
  v5._object = v2;
  sub_17D84(v5);

  v6._countAndFlagsBits = 2592;
  v6._object = 0xE200000000000000;
  sub_17D84(v6);
  sub_30B8(&qword_25310, qword_19A00);
  v7._countAndFlagsBits = sub_17D54();
  sub_17D84(v7);

  v8._countAndFlagsBits = 2592;
  v8._object = 0xE200000000000000;
  sub_17D84(v8);

  v9._countAndFlagsBits = 0x3A736920776F6C66;
  v9._object = 0xE800000000000000;
  sub_17D84(v9);

  strcpy(&v4, "gameContent:");
  BYTE5(v4._object) = 0;
  HIWORD(v4._object) = -5120;
  sub_30B8(&qword_25670, &qword_1A448);
  v10._countAndFlagsBits = sub_17F14();
  sub_17D84(v10);

  sub_17D84(v4);

  return 0x3A656D6167;
}

uint64_t sub_BB50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 6581861;
    }

    else
    {
      v3 = 0x657461647075;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x656D75736572;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000013;
    v4 = 0x8000000000018A30;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E75;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 6581861;
    }

    else
    {
      v6 = 0x657461647075;
    }

    if (a2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE600000000000000;
    if (v3 != 0x656D75736572)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x8000000000018A30;
    if (v3 != 0xD000000000000013)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x6E776F6E6B6E75)
    {
LABEL_31:
      v7 = sub_18134();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_BCD8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 6581861;
  if (a1 != 5)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = 1885956979;
  if (a1 != 3)
  {
    v6 = 1953393000;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE400000000000000;
  }

  v7 = 0x656D75736572;
  if (a1 != 1)
  {
    v7 = 0x726577736E61;
  }

  if (a1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v7 = 2036427888;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v10 = 0xE600000000000000;
      if (a2 == 1)
      {
        if (v8 != 0x656D75736572)
        {
          goto LABEL_39;
        }
      }

      else if (v8 != 0x726577736E61)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v10 = 0xE400000000000000;
      if (v8 != 2036427888)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v10 = 0xE300000000000000;
      if (v8 != 6581861)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v10 = 0xE700000000000000;
      if (v8 != 0x6E776F6E6B6E75)
      {
LABEL_39:
        v11 = sub_18134();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v10 = 0xE400000000000000;
    if (a2 == 3)
    {
      if (v8 != 1885956979)
      {
        goto LABEL_39;
      }
    }

    else if (v8 != 1953393000)
    {
      goto LABEL_39;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_39;
  }

  v11 = 1;
LABEL_40:

  return v11 & 1;
}

uint64_t sub_BEB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE400000000000000;
    v12 = 0xE500000000000000;
    v13 = 0x6C6576656CLL;
    if (a1 != 2)
    {
      v13 = 0xD000000000000018;
      v12 = 0x8000000000018A50;
    }

    v14 = 0x79726F6765746163;
    if (a1)
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v14 = 1701667182;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x8000000000018A90;
    v5 = 0xE600000000000000;
    v6 = 0x656C61636F6CLL;
    if (a1 != 7)
    {
      v6 = 0x5464657461647075;
      v5 = 0xEB00000000656D69;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0x6974634172657375;
    v8 = 0xEA00000000006E6FLL;
    if (a1 != 4)
    {
      v7 = 0x6341746E65696C63;
      v8 = 0xEC0000006E6F6974;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE500000000000000;
        if (v9 != 0x6C6576656CLL)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0x8000000000018A50;
        if (v9 != 0xD000000000000018)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE800000000000000;
      if (v9 != 0x79726F6765746163)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (v9 != 1701667182)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xEA00000000006E6FLL;
      if (v9 != 0x6974634172657375)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xEC0000006E6F6974;
      if (v9 != 0x6341746E65696C63)
      {
LABEL_52:
        v16 = sub_18134();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0x8000000000018A90;
    if (v9 != 0xD000000000000010)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xE600000000000000;
    if (v9 != 0x656C61636F6CLL)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xEB00000000656D69;
    if (v9 != 0x5464657461647075)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_C1A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE400000000000000;
    v12 = 0xE500000000000000;
    v13 = 0x6C6576656CLL;
    if (a1 != 2)
    {
      v13 = 0x6174537472617473;
      v12 = 0xEA00000000006574;
    }

    v14 = 0x79726F6765746163;
    if (a1)
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v14 = 1701667182;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x656C706D6F437369;
    v4 = 0xEB00000000646574;
    v5 = 0x5464657461657263;
    v6 = 0xEB00000000656D69;
    if (a1 != 7)
    {
      v5 = 0x6E6F697461727564;
      v6 = 0xE800000000000000;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0xE500000000000000;
    v8 = 0x65726F6373;
    if (a1 != 4)
    {
      v8 = 0xD000000000000013;
      v7 = 0x8000000000018B30;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v17 = 0xE500000000000000;
        if (v9 != 0x6C6576656CLL)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v17 = 0xEA00000000006574;
        if (v9 != 0x6174537472617473)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v17 = 0xE800000000000000;
      if (v9 != 0x79726F6765746163)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v17 = 0xE400000000000000;
      if (v9 != 1701667182)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v17 = 0xE500000000000000;
      if (v9 != 0x65726F6373)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v17 = 0x8000000000018B30;
      if (v9 != 0xD000000000000013)
      {
LABEL_52:
        v18 = sub_18134();
        goto LABEL_53;
      }
    }
  }

  else
  {
    if (a2 == 6)
    {
      v15 = 0x656C706D6F437369;
      v16 = 6579572;
    }

    else
    {
      if (a2 != 7)
      {
        v17 = 0xE800000000000000;
        if (v9 != 0x6E6F697461727564)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v15 = 0x5464657461657263;
      v16 = 6647145;
    }

    v17 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v9 != v15)
    {
      goto LABEL_52;
    }
  }

LABEL_50:
  if (v10 != v17)
  {
    goto LABEL_52;
  }

  v18 = 1;
LABEL_53:

  return v18 & 1;
}

uint64_t sub_C46C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 1701869940;
  if (a1 == 5)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x6C75636966666964;
    v5 = 0xEA00000000007974;
  }

  v6 = 0xD000000000000012;
  v7 = 0x80000000000189A0;
  if (a1 != 3)
  {
    v6 = 1953393000;
    v7 = 0xE400000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6E6F697473657571;
  if (a1 != 1)
  {
    v9 = 0x73726577736E61;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x79726F6765746163;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x6E6F697473657571)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x73726577736E61)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x79726F6765746163)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701869940)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xEA00000000007974;
      if (v10 != 0x6C75636966666964)
      {
LABEL_40:
        v13 = sub_18134();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0x80000000000189A0;
    if (v10 != 0xD000000000000012)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1953393000)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

Swift::Int sub_C680(uint64_t a1, unsigned __int8 a2)
{
  sub_18154();
  sub_17D74();

  return sub_18174();
}

Swift::Int sub_C79C(uint64_t a1, unsigned __int8 a2)
{
  sub_18154();
  sub_17D74();

  return sub_18174();
}

uint64_t sub_C8B0(uint64_t a1)
{
  sub_17D74();
}

unint64_t sub_C9A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_FDC4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_C9D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 2036427888;
  v5 = 0xE300000000000000;
  v6 = 6581861;
  if (v2 != 5)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v7 = 1885956979;
  if (v2 != 3)
  {
    v7 = 1953393000;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  v8 = 0x656D75736572;
  if (v2 != 1)
  {
    v8 = 0x726577736E61;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int sub_CB44()
{
  sub_18154();
  sub_17D74();

  return sub_18174();
}

uint64_t sub_CC1C(uint64_t a1)
{
  sub_17D74();
}

Swift::Int sub_CCE0(uint64_t a1)
{
  sub_18154();
  sub_17D74();

  return sub_18174();
}

unint64_t sub_CDB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_FE10(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_CDE4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x657461647075;
  v5 = 0xE600000000000000;
  v6 = 0x656D75736572;
  v7 = 0x8000000000018A30;
  v8 = 0xD000000000000013;
  if (v2 != 3)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 6581861;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_CF28()
{

  sub_DD74(v0[12], v0[13], v0[14], v0[15]);

  return _swift_deallocClassInstance(v0, 185, 7);
}

uint64_t getEnumTagSinglePayload for GameState.ClientAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GameState.ClientAction(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_D114()
{
  result = qword_25600;
  if (!qword_25600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25600);
  }

  return result;
}

unint64_t sub_D16C()
{
  result = qword_25608;
  if (!qword_25608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25608);
  }

  return result;
}

unint64_t sub_D1C0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1701667182;
    v6 = 0x6C6576656CLL;
    if (a1 != 2)
    {
      v6 = 0xD000000000000018;
    }

    if (a1)
    {
      v5 = 0x79726F6765746163;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000010;
    v2 = 0x656C61636F6CLL;
    if (a1 != 7)
    {
      v2 = 0x5464657461647075;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6974634172657375;
    if (a1 != 4)
    {
      v3 = 0x6341746E65696C63;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_D2EC(void *a1)
{
  v3 = v1;
  v5 = sub_30B8(&qword_25630, &qword_1A420);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  sub_3100(a1, a1[3]);
  sub_DD20();
  sub_18194();
  LOBYTE(v11[0]) = 0;

  sub_180F4();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    LOBYTE(v11[0]) = 1;

    sub_180F4();

    LOBYTE(v11[0]) = 2;

    sub_180B4();

    LOBYTE(v11[0]) = 3;
    sub_180D4();
    LOBYTE(v11[0]) = *(v3 + 89);
    v12 = 4;
    sub_DE64();
    sub_180E4();
    LOBYTE(v11[0]) = *(v3 + 90);
    v12 = 5;
    sub_DEB8();
    sub_180E4();
    v9 = *(v3 + 112);
    v11[0] = *(v3 + 96);
    v11[1] = v9;
    v12 = 6;
    sub_9344();
    sub_180E4();
    LOBYTE(v11[0]) = 7;

    sub_180B4();

    LOBYTE(v11[0]) = 8;
    sub_180D4();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t *sub_D640(void *a1)
{
  v3 = v1;
  v24[1] = *v1;
  v5 = sub_30B8(&qword_25610, &qword_1A418);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - v7;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 64) = 0;
  *(v1 + 88) = 1;
  *(v1 + 89) = 1287;
  *(v1 + 96) = xmmword_1A100;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  *(v1 + 152) = 1;
  *(v1 + 168) = 0;
  *(v1 + 176) = 0;
  *(v1 + 160) = 0;
  *(v1 + 184) = 1;
  sub_3100(a1, a1[3]);
  sub_DD20();
  sub_18184();
  if (v2)
  {

    sub_DD74(*(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120));

    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v25) = 0;
    v9 = v5;
    *(v1 + 32) = sub_18084();
    *(v1 + 40) = v10;
    LOBYTE(v25) = 1;
    *(v1 + 48) = sub_18084();
    *(v1 + 56) = v12;
    LOBYTE(v25) = 2;
    *(v1 + 64) = sub_18044();
    *(v1 + 72) = v13;

    LOBYTE(v25) = 3;
    *(v1 + 80) = sub_18064();
    *(v1 + 88) = v14 & 1;
    v27 = 4;
    sub_DDBC();
    sub_18074();
    *(v1 + 89) = v25;
    v27 = 5;
    sub_DE10();
    sub_18074();
    *(v1 + 90) = v25;
    v27 = 6;
    sub_9288();
    sub_18074();
    v15 = *(v1 + 96);
    v16 = *(v1 + 104);
    v17 = *(v1 + 112);
    v18 = *(v1 + 120);
    v19 = v26;
    *(v1 + 96) = v25;
    *(v1 + 112) = v19;
    sub_DD74(v15, v16, v17, v18);
    LOBYTE(v25) = 7;
    *(v1 + 128) = sub_18044();
    *(v1 + 136) = v20;

    LOBYTE(v25) = 8;
    v21 = sub_18064();
    v23 = v22;
    (*(v6 + 8))(v8, v9);
    *(v3 + 144) = v21;
    *(v3 + 152) = v23 & 1;
  }

  sub_3144(a1);
  return v3;
}

uint64_t sub_DA78()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_DAAC()
{
  v1 = *(*v0 + 48);

  return v1;
}

Swift::Int sub_DAEC()
{
  v1 = *v0;
  sub_18154();
  sub_16698(v3, v1);
  return sub_18174();
}

Swift::Int sub_DB3C(uint64_t a1)
{
  v2 = *v1;
  sub_18154();
  sub_16698(v4, v2);
  return sub_18174();
}

unint64_t sub_DB80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_FF04(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_DBB0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_D1C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_DBF8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_FF04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_DC2C(uint64_t a1)
{
  v2 = sub_DD20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_DC68(uint64_t a1)
{
  v2 = sub_DD20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t *sub_DCA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_D640(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_DD20()
{
  result = qword_25618;
  if (!qword_25618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25618);
  }

  return result;
}

void sub_DD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

unint64_t sub_DDBC()
{
  result = qword_25620;
  if (!qword_25620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25620);
  }

  return result;
}

unint64_t sub_DE10()
{
  result = qword_25628;
  if (!qword_25628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25628);
  }

  return result;
}

unint64_t sub_DE64()
{
  result = qword_25638;
  if (!qword_25638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25638);
  }

  return result;
}

unint64_t sub_DEB8()
{
  result = qword_25640;
  if (!qword_25640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25640);
  }

  return result;
}

uint64_t sub_DF0C()
{
  v1 = v0;
  v2 = 1280070990;
  sub_30B8(&qword_25678, &qword_1A450);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A110;
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v43 = (&stru_20 + 7);
  v44 = 0xE100000000000000;

  v45._countAndFlagsBits = v4;
  v45._object = v5;
  sub_17D84(v45);

  v46._countAndFlagsBits = 39;
  v46._object = 0xE100000000000000;
  sub_17D84(v46);
  *(v3 + 56) = &type metadata for String;
  v6 = sub_108C8();
  *(v3 + 64) = v6;
  *(v3 + 32) = 39;
  *(v3 + 40) = 0xE100000000000000;
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v43 = (&stru_20 + 7);
  v44 = 0xE100000000000000;

  v47._countAndFlagsBits = v7;
  v47._object = v8;
  sub_17D84(v47);

  v48._countAndFlagsBits = 39;
  v48._object = 0xE100000000000000;
  sub_17D84(v48);
  *(v3 + 96) = &type metadata for String;
  *(v3 + 104) = v6;
  *(v3 + 72) = 39;
  *(v3 + 80) = 0xE100000000000000;
  v9 = *(v0 + 72);
  if (v9)
  {
    v10 = *(v0 + 64);
    v43 = (&stru_20 + 7);
    v44 = 0xE100000000000000;

    v49._countAndFlagsBits = v10;
    v49._object = v9;
    sub_17D84(v49);
    v50._countAndFlagsBits = 39;
    v50._object = 0xE100000000000000;
    sub_17D84(v50);

    v12 = 39;
    v11 = 0xE100000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
    v12 = 1280070990;
  }

  *(v3 + 136) = &type metadata for String;
  *(v3 + 144) = v6;
  *(v3 + 112) = v12;
  *(v3 + 120) = v11;
  if (*(v0 + 88))
  {
    v13 = 0xE400000000000000;
    v14 = 1280070990;
  }

  else
  {
    v43 = *(v0 + 80);
    v14 = sub_18124();
  }

  *(v3 + 176) = &type metadata for String;
  *(v3 + 184) = v6;
  *(v3 + 152) = v14;
  *(v3 + 160) = v13;
  v15 = *(v0 + 89);
  if (v15 == 7)
  {
    v16 = 0xE400000000000000;
    v17 = 1280070990;
  }

  else
  {
    v17 = sub_6C2C(v15);
  }

  *(v3 + 216) = &type metadata for String;
  *(v3 + 224) = v6;
  *(v3 + 192) = v17;
  *(v3 + 200) = v16;
  v18 = *(v0 + 90);
  if (v18 == 5)
  {
    v19 = 0xE400000000000000;
    v20 = 1280070990;
  }

  else
  {
    v20 = sub_6D34(v18);
  }

  *(v3 + 256) = &type metadata for String;
  *(v3 + 264) = v6;
  *(v3 + 232) = v20;
  *(v3 + 240) = v19;
  v21 = *(v0 + 104);
  if (v21 == 1)
  {
    v22 = 0xE400000000000000;
    v23 = 1280070990;
  }

  else
  {
    v25 = *(v1 + 112);
    v24 = *(v1 + 120);
    v26 = *(v1 + 96);

    v23 = sub_8BC0(v26, v21, v25, v24);
    v22 = v27;
    v28 = v26;
    v2 = 1280070990;
    sub_DD74(v28, v21, v25, v24);
  }

  *(v3 + 296) = &type metadata for String;
  *(v3 + 304) = v6;
  *(v3 + 272) = v23;
  *(v3 + 280) = v22;
  v29 = *(v1 + 136);
  if (v29)
  {
    v30 = *(v1 + 128);
    v43 = (&stru_20 + 7);
    v44 = 0xE100000000000000;

    v51._countAndFlagsBits = v30;
    v51._object = v29;
    sub_17D84(v51);
    v52._countAndFlagsBits = 39;
    v52._object = 0xE100000000000000;
    sub_17D84(v52);

    v32 = 39;
    v31 = 0xE100000000000000;
  }

  else
  {
    v31 = 0xE400000000000000;
    v32 = 1280070990;
  }

  *(v3 + 336) = &type metadata for String;
  *(v3 + 344) = v6;
  *(v3 + 312) = v32;
  *(v3 + 320) = v31;
  if (*(v1 + 152))
  {
    v33 = 0xE400000000000000;
  }

  else
  {
    v43 = *(v1 + 144);
    v2 = sub_18124();
  }

  *(v3 + 376) = &type metadata for String;
  *(v3 + 384) = v6;
  *(v3 + 352) = v2;
  *(v3 + 360) = v33;
  v34 = sub_17D24();
  v36 = v35;
  if (qword_24C80 != -1)
  {
    swift_once();
  }

  v37 = sub_17C54();
  sub_3080(v37, qword_27B78);

  v38 = sub_17C44();
  v39 = sub_17E64();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43 = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_15ECC(v34, v36, &v43);
    _os_log_impl(&dword_0, v38, v39, "Insert statement: %s", v40, 0xCu);
    sub_3144(v41);
  }

  return v34;
}

uint64_t sub_E370()
{
  v1 = v0;
  v2 = 1280070990;
  sub_30B8(&qword_25678, &qword_1A450);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A110;
  v4 = *(v0 + 72);
  if (v4)
  {
    v5 = *(v0 + 64);
    v42 = (&stru_20 + 7);
    v43 = 0xE100000000000000;

    v44._countAndFlagsBits = v5;
    v44._object = v4;
    sub_17D84(v44);
    v45._countAndFlagsBits = 39;
    v45._object = 0xE100000000000000;
    sub_17D84(v45);

    v7 = 39;
    v6 = 0xE100000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
    v7 = 1280070990;
  }

  *(v3 + 56) = &type metadata for String;
  v8 = sub_108C8();
  *(v3 + 64) = v8;
  *(v3 + 32) = v7;
  *(v3 + 40) = v6;
  if (*(v1 + 88))
  {
    v9 = 0xE400000000000000;
    v10 = 1280070990;
  }

  else
  {
    v42 = *(v1 + 80);
    v10 = sub_18124();
  }

  *(v3 + 96) = &type metadata for String;
  *(v3 + 104) = v8;
  *(v3 + 72) = v10;
  *(v3 + 80) = v9;
  v11 = *(v1 + 89);
  if (v11 == 7)
  {
    v12 = 0xE400000000000000;
    v13 = 1280070990;
  }

  else
  {
    v13 = sub_6C2C(v11);
  }

  *(v3 + 136) = &type metadata for String;
  *(v3 + 144) = v8;
  *(v3 + 112) = v13;
  *(v3 + 120) = v12;
  v14 = *(v1 + 90);
  if (v14 == 5)
  {
    v15 = 0xE400000000000000;
    v16 = 1280070990;
  }

  else
  {
    v16 = sub_6D34(v14);
  }

  *(v3 + 176) = &type metadata for String;
  *(v3 + 184) = v8;
  *(v3 + 152) = v16;
  *(v3 + 160) = v15;
  v17 = *(v1 + 104);
  if (v17 == 1)
  {
    v18 = 0xE400000000000000;
    v19 = 1280070990;
  }

  else
  {
    v21 = *(v1 + 112);
    v20 = *(v1 + 120);
    v22 = *(v1 + 96);

    v19 = sub_8BC0(v22, v17, v21, v20);
    v18 = v23;
    v2 = 1280070990;
    sub_DD74(v22, v17, v21, v20);
  }

  *(v3 + 216) = &type metadata for String;
  *(v3 + 224) = v8;
  *(v3 + 192) = v19;
  *(v3 + 200) = v18;
  v24 = *(v1 + 136);
  if (v24)
  {
    v25 = *(v1 + 128);
    v42 = (&stru_20 + 7);
    v43 = 0xE100000000000000;

    v46._countAndFlagsBits = v25;
    v46._object = v24;
    sub_17D84(v46);
    v47._countAndFlagsBits = 39;
    v47._object = 0xE100000000000000;
    sub_17D84(v47);

    v27 = 39;
    v26 = 0xE100000000000000;
  }

  else
  {
    v26 = 0xE400000000000000;
    v27 = 1280070990;
  }

  *(v3 + 256) = &type metadata for String;
  *(v3 + 264) = v8;
  *(v3 + 232) = v27;
  *(v3 + 240) = v26;
  if (*(v1 + 152))
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v42 = *(v1 + 144);
    v2 = sub_18124();
  }

  *(v3 + 296) = &type metadata for String;
  *(v3 + 304) = v8;
  *(v3 + 272) = v2;
  *(v3 + 280) = v28;
  v29 = *(v1 + 32);
  v30 = *(v1 + 40);
  v42 = (&stru_20 + 7);
  v43 = 0xE100000000000000;

  v48._countAndFlagsBits = v29;
  v48._object = v30;
  sub_17D84(v48);

  v49._countAndFlagsBits = 39;
  v49._object = 0xE100000000000000;
  sub_17D84(v49);
  *(v3 + 336) = &type metadata for String;
  *(v3 + 344) = v8;
  *(v3 + 312) = 39;
  *(v3 + 320) = 0xE100000000000000;
  v32 = *(v1 + 48);
  v31 = *(v1 + 56);
  v42 = (&stru_20 + 7);
  v43 = 0xE100000000000000;

  v50._countAndFlagsBits = v32;
  v50._object = v31;
  sub_17D84(v50);

  v51._countAndFlagsBits = 39;
  v51._object = 0xE100000000000000;
  sub_17D84(v51);
  *(v3 + 376) = &type metadata for String;
  *(v3 + 384) = v8;
  *(v3 + 352) = 39;
  *(v3 + 360) = 0xE100000000000000;
  v33 = sub_17D24();
  v35 = v34;
  if (qword_24C80 != -1)
  {
    swift_once();
  }

  v36 = sub_17C54();
  sub_3080(v36, qword_27B78);

  v37 = sub_17C44();
  v38 = sub_17E64();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v42 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_15ECC(v33, v35, &v42);
    _os_log_impl(&dword_0, v37, v38, "Update statement: %s", v39, 0xCu);
    sub_3144(v40);
  }

  return v33;
}

unint64_t sub_E7E0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  sub_17F64(41);

  v9[0] = 0xD000000000000025;
  v9[1] = 0x8000000000019230;
  v10._countAndFlagsBits = v1;
  v10._object = v2;
  sub_17D84(v10);
  v11._countAndFlagsBits = 15143;
  v11._object = 0xE200000000000000;
  sub_17D84(v11);

  if (qword_24C80 != -1)
  {
    swift_once();
  }

  v3 = sub_17C54();
  sub_3080(v3, qword_27B78);

  v4 = sub_17C44();
  v5 = sub_17E64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_15ECC(0xD000000000000025, 0x8000000000019230, v9);
    _os_log_impl(&dword_0, v4, v5, "Delete statement: %s", v6, 0xCu);
    sub_3144(v7);
  }

  return 0xD000000000000025;
}

double sub_E998@<D0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = sqlite3_column_type(a1, 0);
  if (v40 == 5)
  {
    v38 = 0;
  }

  else
  {
    v38 = sqlite3_column_int(a1, 0);
  }

  if (sqlite3_column_type(a1, 1) == 5 || !sqlite3_column_text(a1, 1))
  {
    v39 = 0;
    v43 = 0;
  }

  else
  {
    v39 = sub_17DA4();
    v43 = v4;
  }

  if (sqlite3_column_type(a1, 2) == 5 || !sqlite3_column_text(a1, 2))
  {
    v35 = 0;
    v6 = 0;
  }

  else
  {
    v35 = sub_17DA4();
    v6 = v5;
  }

  if (sqlite3_column_type(a1, 3) == 5 || !sqlite3_column_text(a1, 3))
  {
    v37 = 0;
    v8 = 0;
  }

  else
  {
    v37 = sub_17DA4();
    v8 = v7;
  }

  v9 = sqlite3_column_type(a1, 4);
  if (v9 == 5)
  {
    v36 = 0;
  }

  else
  {
    v36 = sqlite3_column_int(a1, 4);
  }

  v10 = 0x6E776F6E6B6E75;
  if (sqlite3_column_type(a1, 5) == 5 || !sqlite3_column_text(a1, 5))
  {
    v12 = 0xE700000000000000;
    v11 = 0x6E776F6E6B6E75;
  }

  else
  {
    v11 = sub_17DA4();
  }

  v34 = sub_FDC4(v11, v12);
  if (sqlite3_column_type(a1, 6) == 5 || !sqlite3_column_text(a1, 6))
  {
    v13 = 0xE700000000000000;
  }

  else
  {
    v10 = sub_17DA4();
  }

  v33 = sub_FE10(v10, v13);
  v14 = sub_90BC(a1, 7);
  v41 = v15;
  v42 = v16;
  v18 = v17;
  if (sqlite3_column_type(a1, 8) == 5 || !sqlite3_column_text(a1, 8))
  {
    v32 = 0;
    v20 = 0;
  }

  else
  {
    v32 = sub_17DA4();
    v20 = v19;
  }

  v21 = sqlite3_column_type(a1, 9);
  if (v21 == 5)
  {
    v22 = 0;
    if (!v43)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v22 = sqlite3_column_int(a1, 9);
    if (!v43)
    {
      goto LABEL_36;
    }
  }

  if (v6)
  {
    v23 = v6;
    v31 = v21 == 5;
    v24 = v9 == 5;
    v25 = v18;
    v26 = v8;
    v27 = v23;
    v28 = type metadata accessor for GameState();
    v29 = swift_allocObject();
    *(v29 + 168) = 0;
    *(v29 + 176) = 0;
    *(v29 + 160) = 0;
    *(v29 + 184) = 1;
    *(v29 + 32) = v39;
    *(v29 + 40) = v43;
    *(v29 + 48) = v35;
    *(v29 + 56) = v27;
    *(v29 + 64) = v37;
    *(v29 + 72) = v26;
    *(v29 + 80) = v36;
    *(v29 + 88) = v24;
    *(v29 + 89) = v34;
    *(v29 + 90) = v33;
    *(v29 + 96) = v14;
    *(v29 + 104) = v41;
    *(v29 + 112) = v42;
    *(v29 + 120) = v25;
    *(v29 + 128) = v32;
    *(v29 + 136) = v20;

    *(v29 + 144) = v22;
    *(v29 + 152) = v31;
    *(v29 + 16) = v38;
    *(v29 + 24) = v40 == 5;
    *(a2 + 24) = v28;
    *(a2 + 32) = &off_21898;
    *a2 = v29;
    return result;
  }

LABEL_36:

  sub_DD74(v14, v41, v42, v18);

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

BOOL sub_ED50()
{
  v0 = sub_17C34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_17EE4();
  if (qword_24C70 != -1)
  {
    swift_once();
  }

  sub_17C24();
  sub_17C14();
  v4 = *(v1 + 8);
  v4(v3, v0);
  v5 = sub_E370();
  v7 = sub_A0E8(v5, v6);

  if (v7)
  {
    if (qword_24C80 != -1)
    {
      swift_once();
    }

    v8 = sub_17C54();
    sub_3080(v8, qword_27B78);
    v9 = sub_17C44();
    v10 = sub_17E54();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "Update succeeded.", v11, 2u);
    }
  }

  sub_17ED4();
  sub_17C24();
  sub_17C14();
  v4(v3, v0);
  return v7;
}

uint64_t sub_EFB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_17C34();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_17EE4();
  if (qword_24C70 != -1)
  {
    swift_once();
  }

  sub_17C24();
  sub_17C14();
  v8 = *(v5 + 8);
  v8(v7, v4);
  if (sub_A0E8(0xD00000000000014FLL, 0x8000000000019010) && (v9 = sub_DF0C(), v11 = sub_A0E8(v9, v10), , v11))
  {
    *(v2 + 16) = sqlite3_last_insert_rowid(*(a1 + 16));
    *(v2 + 24) = 0;
    if (qword_24C80 != -1)
    {
      swift_once();
    }

    v12 = sub_17C54();
    sub_3080(v12, qword_27B78);
    v13 = sub_17C44();
    v14 = sub_17E54();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "Insert succeeded.", v15, 2u);
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  sub_17ED4();
  sub_17C24();
  sub_17C14();
  v8(v7, v4);
  return v16;
}

uint64_t sub_F268(uint64_t a1)
{
  v2 = v1;
  v4 = sub_17C34();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_17EE4();
  if (qword_24C70 != -1)
  {
    swift_once();
  }

  sub_17C24();
  sub_17C14();
  v8 = *(v5 + 8);
  v8(v7, v4);
  if (*(v1 + 24) == 1 && (sub_F5C4(a1) & 1) == 0)
  {
    if (qword_24C80 != -1)
    {
      swift_once();
    }

    v17 = sub_17C54();
    sub_3080(v17, qword_27B78);
    v13 = sub_17C44();
    v18 = sub_17E74();
    if (!os_log_type_enabled(v13, v18))
    {
      v16 = 0;
      goto LABEL_18;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v13, v18, "Failed to delete data because it's not in database yet.", v19, 2u);
    v16 = 0;
    goto LABEL_15;
  }

  v9 = sub_E7E0();
  v11 = sub_A0E8(v9, v10);

  if (v11)
  {
    *(v2 + 16) = 0;
    *(v2 + 24) = 1;
    if (qword_24C80 != -1)
    {
      swift_once();
    }

    v12 = sub_17C54();
    sub_3080(v12, qword_27B78);
    v13 = sub_17C44();
    v14 = sub_17E54();
    if (!os_log_type_enabled(v13, v14))
    {
      v16 = 1;
      goto LABEL_18;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "Delete succeeded.", v15, 2u);
    v16 = 1;
LABEL_15:

LABEL_18:

    goto LABEL_19;
  }

  v16 = 0;
LABEL_19:
  sub_17ED4();
  sub_17C24();
  sub_17C14();
  v8(v7, v4);
  return v16;
}

uint64_t sub_F5C4(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v8 = v3;

  sub_FF50(v4, v5, v7, v6);

  v9 = sub_9EFC();

  if (!v9)
  {
    goto LABEL_30;
  }

  v10 = sqlite3_step(v9);
  if (v10 == 101)
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  else
  {
    if (v10 != 100)
    {
      if (qword_24C80 != -1)
      {
        swift_once();
      }

      v26 = sub_17C54();
      sub_3080(v26, qword_27B78);

      v27 = sub_17C44();
      v28 = sub_17E74();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v42[0] = v30;
        *v29 = 136315138;
        if (sqlite3_errmsg(*(a1 + 16)))
        {
          v31 = sub_17D94();
          v33 = v32;
        }

        else
        {
          v33 = 0x8000000000018D00;
          v31 = 0xD00000000000001DLL;
        }

        v34 = sub_15ECC(v31, v33, v42);

        *(v29 + 4) = v34;
        _os_log_impl(&dword_0, v27, v28, "%s", v29, 0xCu);
        sub_3144(v30);
      }

      sqlite3_finalize(v9);
      goto LABEL_30;
    }

    v11 = &_swiftEmptyArrayStorage;
    v35 = xmmword_1A100;
    do
    {
      if (sqlite3_column_type(v9, 0) != 5)
      {
        v17 = sqlite3_column_int(v9, 0);
        v18 = swift_allocObject();
        *(v18 + 16) = 0;
        *(v18 + 24) = 1;
        *(v18 + 144) = 0;
        *(v18 + 152) = 1;
        *(v18 + 168) = 0;
        *(v18 + 176) = 0;
        *(v18 + 160) = 0;
        *(v18 + 184) = 1;
        *(v18 + 32) = 0x656C676E6953;
        *(v18 + 40) = 0xE600000000000000;
        *(v18 + 48) = 0;
        *(v18 + 56) = 0xE000000000000000;
        *(v18 + 64) = 0;
        *(v18 + 72) = 0;
        *(v18 + 80) = 0;
        *(v18 + 88) = 1;
        *(v18 + 89) = 1287;
        *(v18 + 112) = 0u;
        *(v18 + 128) = 0u;
        *(v18 + 96) = v35;

        *(v18 + 144) = 0;
        *(v18 + 152) = 1;
        *(v18 + 16) = v17;
        *(v18 + 24) = 0;
        v40 = v8;
        v41 = &off_21898;
        *&v39 = v18;
        sub_64C4(&v39, v42);
        sub_645C(v42, &v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_FBE4(0, v11[2] + 1, 1, v11);
        }

        v20 = v11[2];
        v19 = v11[3];
        if (v20 >= v19 >> 1)
        {
          v11 = sub_FBE4((v19 > 1), v20 + 1, 1, v11);
        }

        sub_3144(v42);
        v12 = sub_10874(&v39, v40);
        __chkstk_darwin(v12);
        v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v15 + 16))(v14);
        v16 = *v14;
        v37 = v8;
        v38 = &off_21898;
        *&v36 = v16;
        v11[2] = v20 + 1;
        sub_64C4(&v36, &v11[5 * v20 + 4]);
        sub_3144(&v39);
      }
    }

    while (sqlite3_step(v9) == 100);
  }

  sqlite3_finalize(v9);
  v21 = sub_FADC(v11);

  if (!v21)
  {
LABEL_30:
    v25 = 0;
    return v25 & 1;
  }

  if (!(v21 >> 62))
  {
    result = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

  result = sub_17FE4();
  if (!result)
  {
LABEL_29:

    goto LABEL_30;
  }

LABEL_16:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v23 = sub_17F74();
    goto LABEL_19;
  }

  if (*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
  {
    v23 = *(v21 + 32);

LABEL_19:

    v24 = *(v23 + 24);

    v25 = v24 ^ 1;
    return v25 & 1;
  }

  __break(1u);
  return result;
}

void *sub_FADC(uint64_t a1)
{
  v6 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_17FB4();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_645C(i, v5);
    sub_30B8(&qword_25668, &unk_1A438);
    type metadata accessor for GameState();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_17F94();
    sub_17FC4();
    sub_17FD4();
    sub_17FA4();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void *sub_FBE4(void *result, int64_t a2, char a3, void *a4)
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
    sub_30B8(&qword_25660, &qword_1A430);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_30B8(&qword_25668, &unk_1A438);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_FD2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_3190(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_64C4(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_FDC4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_20DE0;
  v6._object = a2;
  v4 = sub_18034(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_FE10(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_20EA8;
  v6._object = a2;
  v4 = sub_18034(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_FE5C()
{
  result = qword_25648;
  if (!qword_25648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25648);
  }

  return result;
}

unint64_t sub_FEB0()
{
  result = qword_25650;
  if (!qword_25650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25650);
  }

  return result;
}

unint64_t sub_FF04(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_20F40;
  v6._object = a2;
  v4 = sub_18034(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_FF50(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return 0xD00000000000003ALL;
  }

  if (!a4)
  {
    goto LABEL_7;
  }

  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_17F64(98);
    v11._countAndFlagsBits = 0xD000000000000027;
    v11._object = 0x8000000000018E70;
    sub_17D84(v11);
    v12._countAndFlagsBits = a1;
    v12._object = a2;
    sub_17D84(v12);
    v13._countAndFlagsBits = 0xD000000000000013;
    v13._object = 0x8000000000018ED0;
    sub_17D84(v13);
    v9._countAndFlagsBits = a3;
    v9._object = a4;
  }

  else
  {
LABEL_7:
    sub_17F64(77);
    v14._countAndFlagsBits = 0xD000000000000027;
    v14._object = 0x8000000000018E70;
    sub_17D84(v14);
    v9._countAndFlagsBits = a1;
    v9._object = a2;
  }

  sub_17D84(v9);
  v15._object = 0x8000000000018EA0;
  v15._countAndFlagsBits = 0xD000000000000024;
  sub_17D84(v15);
  return 0;
}

uint64_t sub_100B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v63 = a1;
  v9 = sub_17C34();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_17EE4();
  if (qword_24C70 != -1)
  {
    swift_once();
  }

  v13 = qword_27B68;
  sub_17C24();
  v61 = v13;
  sub_17C14();
  v15 = *(v10 + 8);
  v14 = v10 + 8;
  v62 = v9;
  v60 = v15;
  v15(v12, v9);
  if (qword_24C80 != -1)
  {
    swift_once();
  }

  v16 = sub_17C54();
  sub_3080(v16, qword_27B78);

  v17 = sub_17C44();
  v18 = sub_17E64();

  v19 = os_log_type_enabled(v17, v18);
  v64 = v14;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v68[0] = v21;
    *v20 = 136315138;
    v58 = a2;
    v59 = a5;
    if (a3)
    {
      v22 = a2;
    }

    else
    {
      v22 = 7104878;
    }

    v23 = v12;
    v24 = a4;
    if (a3)
    {
      v25 = a3;
    }

    else
    {
      v25 = 0xE300000000000000;
    }

    v26 = sub_15ECC(v22, v25, v68);
    a4 = v24;
    v12 = v23;
    a2 = v58;

    *(v20 + 4) = v26;
    a5 = v59;
    _os_log_impl(&dword_0, v17, v18, "read data from DB, game= %s", v20, 0xCu);
    sub_3144(v21);
  }

  v27 = sub_FF50(a2, a3, a4, a5);
  v29 = v28;
  v30 = sub_17C44();
  v31 = sub_17E64();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v68[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_15ECC(v27, v29, v68);
    _os_log_impl(&dword_0, v30, v31, "read data from DB, queryStatement= %s", v32, 0xCu);
    sub_3144(v33);
  }

  v34 = v63;
  v35 = sub_9EFC();

  if (!v35)
  {
    goto LABEL_41;
  }

  v36 = sqlite3_step(v35);
  if (v36 == 101)
  {
    v37 = &_swiftEmptyArrayStorage;
  }

  else
  {
    if (v36 != 100)
    {

      v50 = sub_17C44();
      v51 = sub_17E74();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v68[0] = v53;
        *v52 = 136315138;
        if (sqlite3_errmsg(*(v34 + 16)))
        {
          v54 = sub_17D94();
          v56 = v55;
        }

        else
        {
          v56 = 0x8000000000018D00;
          v54 = 0xD00000000000001DLL;
        }

        v57 = sub_15ECC(v54, v56, v68);

        *(v52 + 4) = v57;
        _os_log_impl(&dword_0, v50, v51, "%s", v52, 0xCu);
        sub_3144(v53);
      }

      sqlite3_finalize(v35);
      goto LABEL_41;
    }

    v37 = &_swiftEmptyArrayStorage;
    do
    {
      sub_E998(v35, &v65);
      if (v66)
      {
        sub_64C4(&v65, v68);
        sub_645C(v68, &v65);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = sub_FBE4(0, v37[2] + 1, 1, v37);
          v69 = v37;
        }

        v40 = v37[2];
        v39 = v37[3];
        if (v40 >= v39 >> 1)
        {
          v37 = sub_FBE4((v39 > 1), v40 + 1, 1, v37);
          v69 = v37;
        }

        sub_3144(v68);
        v41 = v66;
        v42 = v67;
        v43 = sub_10874(&v65, v66);
        __chkstk_darwin(v43);
        v45 = &v58 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v46 + 16))(v45);
        sub_FD2C(v40, v45, &v69, v41, v42);
        sub_3144(&v65);
      }

      else
      {
        sub_1080C(&v65);
      }
    }

    while (sqlite3_step(v35) == 100);
  }

  sqlite3_finalize(v35);
  v47 = sub_FADC(v37);

  if (!v47)
  {
LABEL_41:
    v49 = 0;
    goto LABEL_42;
  }

  if (!(v47 >> 62))
  {
    result = *(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_31;
    }

LABEL_44:

    v49 = 0;
    goto LABEL_42;
  }

  result = sub_17FE4();
  if (!result)
  {
    goto LABEL_44;
  }

LABEL_31:
  if ((v47 & 0xC000000000000001) != 0)
  {
    v49 = sub_17F74();
    goto LABEL_34;
  }

  if (*(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8)))
  {
    v49 = *(v47 + 32);

LABEL_34:

LABEL_42:
    sub_17ED4();
    sub_17C24();
    sub_17C14();
    v60(v12, v62);
    return v49;
  }

  __break(1u);
  return result;
}

uint64_t sub_1080C(uint64_t a1)
{
  v2 = sub_30B8(&qword_25658, &qword_1A428);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10874(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_108C8()
{
  result = qword_25680;
  if (!qword_25680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25680);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GameState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10A70()
{
  result = qword_25688;
  if (!qword_25688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25688);
  }

  return result;
}

unint64_t sub_10AC8()
{
  result = qword_25690;
  if (!qword_25690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25690);
  }

  return result;
}

unint64_t sub_10B20()
{
  result = qword_25698;
  if (!qword_25698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25698);
  }

  return result;
}

void sub_10B74()
{
  sub_17B44();
  sub_17B04();
  sub_17AF4();
  sub_17B34();
  sub_17B24();
  sub_30B8(&unk_25180, qword_197F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_197A0;
  sub_A87C();
  v1 = objc_allocWithZone(SABaseAceObject);
  isa = sub_17CA4().super.isa;

  v3 = [v1 initWithDictionary:isa];

  if (v3)
  {
    *(v0 + 32) = v3;
    sub_17B14();
  }

  else
  {
    __break(1u);
  }
}

id sub_10C9C()
{
  v1 = sub_17A04();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_17D44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 104) < 2uLL)
  {
    goto LABEL_4;
  }

  sub_17D34();
  v9 = sub_17D04();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  if (v11 >> 60 == 15)
  {

LABEL_4:
    if (qword_24C88 != -1)
    {
      swift_once();
    }

    v12 = sub_17C54();
    sub_3080(v12, qword_27B90);
    v13 = sub_17C44();
    v14 = sub_17E54();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "no addViewsJson from storage", v15, 2u);
    }

    return 0;
  }

  v17 = objc_opt_self();
  isa = sub_179A4().super.isa;
  v87[0] = 0;
  v19 = [v17 JSONObjectWithData:isa options:4 error:v87];

  if (!v19)
  {
    v46 = v87[0];

    sub_17944();

    swift_willThrow();
    if (qword_24C88 != -1)
    {
      swift_once();
    }

    v47 = sub_17C54();
    sub_3080(v47, qword_27B90);
    v48 = sub_17C44();
    v49 = sub_17E74();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_0, v48, v49, "parse addViewsJson to addViews failed", v50, 2u);
    }

    sub_92DC(v9, v11);

    return 0;
  }

  v85 = v9;
  v20 = v87[0];
  sub_17F24();
  swift_unknownObjectRelease();
  sub_30B8(&unk_256A0, &unk_1A600);
  if (swift_dynamicCast())
  {
    v21 = v86[0];
  }

  else
  {
    v21 = 0;
  }

  v22 = &SAClientBoundCommand__prots;
  v23 = [objc_allocWithZone(SAUIAddViews) init];
  sub_12AA0(v21);
  if (!v24)
  {

    sub_92DC(v85, v11);

    return 0;
  }

  v25 = v24;
  v84 = [objc_allocWithZone(SAUIAssistantUtteranceView) init];
  if (v21 && *(v21 + 16))
  {

    v26 = sub_12790(0x676F6C616964, 0xE600000000000000);
    if ((v27 & 1) == 0)
    {

LABEL_45:
      v22 = &SAClientBoundCommand__prots;
      goto LABEL_46;
    }

    sub_B6A0(*(v21 + 56) + 32 * v26, v87);

    v22 = &SAClientBoundCommand__prots;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_46;
    }

    v28 = v86[0];
    if (qword_24C88 != -1)
    {
      swift_once();
    }

    v29 = sub_17C54();
    sub_3080(v29, qword_27B90);

    v30 = sub_17C44();
    v31 = sub_17E64();
    v32 = v28;
    v33 = v31;
    v83 = v32;

    LODWORD(v82) = v33;
    if (os_log_type_enabled(v30, v33))
    {
      v34 = swift_slowAlloc();
      v81 = v34;
      v80 = swift_slowAlloc();
      v87[0] = v80;
      *v34 = 136315138;
      v35 = sub_17CB4();
      v79 = v30;
      v37 = sub_15ECC(v35, v36, v87);

      v38 = v81;
      *(v81 + 1) = v37;
      v30 = v79;
      _os_log_impl(&dword_0, v79, v82, "parse result - dialogJson is: %s", v38, 0xCu);
      sub_3144(v80);
    }

    v82 = v84;
    sub_179F4();
    sub_179E4();
    v39 = v4;
    v40 = v82;
    (*(v2 + 8))(v39, v1);
    v41 = sub_17CC4();

    [v40 setAceId:v41];

    v42 = v83;
    if (v83[2] && (v43 = sub_12790(0xD000000000000010, 0x8000000000019260), (v44 & 1) != 0) && (sub_B6A0(v42[7] + 32 * v43, v87), (swift_dynamicCast() & 1) != 0))
    {
      v45 = sub_17CC4();
    }

    else
    {
      v45 = 0;
    }

    [v40 setDialogIdentifier:v45];

    if (v42[2] && (v51 = sub_12790(0x746E65746E6F63, 0xE700000000000000), (v52 & 1) != 0))
    {
      sub_B6A0(v42[7] + 32 * v51, v87);

      if (swift_dynamicCast())
      {
        v53 = v86[1];

        v54 = sub_17CC4();

LABEL_41:
        [v40 setText:v54];

        v55 = v40;
        if (v53)
        {
          v56 = sub_17CC4();
        }

        else
        {
          v56 = 0;
        }

        [v40 setSpeakableText:v56];

        sub_12808(0, &qword_256B8, NSNumber_ptr);
        v57 = sub_17EF4(1).super.super.isa;
        [v40 setListenAfterSpeaking:v57];

        goto LABEL_45;
      }
    }

    else
    {
    }

    v54 = 0;
    v53 = 0;
    goto LABEL_41;
  }

LABEL_46:
  v58 = [objc_allocWithZone(SAUISash) v22[333].count];
  v59 = v25;
  result = [v59 sash];
  if (result)
  {
    v60 = result;

    v61 = [v60 title];

    [v58 setTitle:v61];
    v62 = sub_17CC4();
    [v58 setApplicationBundleIdentifier:v62];

    [v59 setSash:v58];
    v87[0] = &_swiftEmptyArrayStorage;
    v63 = v84;
    sub_17DF4();
    if (*(&dword_10 + (v87[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v87[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_17E34();
    }

    sub_17E44();
    v64 = v59;
    sub_17DF4();
    if (*(&dword_10 + (v87[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v87[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_17E34();
    }

    sub_17E44();
    sub_12808(0, &qword_256B0, SAAceView_ptr);
    v65 = sub_17E04().super.isa;

    [v23 setViews:v65];

    [v23 setImmersiveExperience:1];
    [v23 setDialogPhase:SAUIDialogPhaseSummaryValue];
    if (qword_24C88 != -1)
    {
      swift_once();
    }

    v66 = sub_17C54();
    sub_3080(v66, qword_27B90);
    v67 = v23;
    v68 = sub_17C44();
    v69 = sub_17E64();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v86[0] = v71;
      *v70 = 136315138;
      v72 = [v67 debugDescription];
      v73 = sub_17CF4();
      v83 = v64;
      v84 = v63;
      v74 = v73;
      v76 = v75;

      v77 = sub_15ECC(v74, v76, v86);

      *(v70 + 4) = v77;
      _os_log_impl(&dword_0, v68, v69, "addViewsCommand is: %s", v70, 0xCu);
      sub_3144(v71);

      sub_92DC(v85, v11);
    }

    else
    {
      sub_92DC(v85, v11);
    }

    return v67;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_118FC()
{
  v1 = sub_17A04();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_17D44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 104) < 2uLL || (, sub_17D34(), v9 = sub_17D04(), v11 = v10, , (*(v6 + 8))(v8, v5), v11 >> 60 == 15))
  {
    if (qword_24C88 != -1)
    {
      swift_once();
    }

    v12 = sub_17C54();
    sub_3080(v12, qword_27B90);
    v13 = sub_17C44();
    v14 = sub_17E54();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "no addViewsJson from storage", v15, 2u);
    }

    return 0;
  }

  v17 = objc_opt_self();
  v18 = v9;
  v19 = v17;
  v79 = v18;
  isa = sub_179A4().super.isa;
  v82[0] = 0;
  v21 = [v19 JSONObjectWithData:isa options:4 error:v82];

  if (!v21)
  {
    v41 = v82[0];
    sub_17944();

    swift_willThrow();
    if (qword_24C88 != -1)
    {
      swift_once();
    }

    v42 = sub_17C54();
    sub_3080(v42, qword_27B90);
    v43 = sub_17C44();
    v44 = sub_17E74();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v43, v44, "parse addViewsJson to addViews failed", v45, 2u);
    }

    sub_92DC(v79, v11);

    return 0;
  }

  v22 = v82[0];
  sub_17F24();
  swift_unknownObjectRelease();
  sub_30B8(&unk_256A0, &unk_1A600);
  v23 = swift_dynamicCast();
  v24 = v80;
  v25 = [objc_allocWithZone(SAUIAddViews) init];
  v26 = [objc_allocWithZone(SAUIAssistantUtteranceView) init];
  if (v23 && v24)
  {
    if (*(v24 + 16) && (v27 = sub_12790(0x6944656D75736572, 0xEC000000676F6C61), (v28 & 1) != 0))
    {
      sub_B6A0(*(v24 + 56) + 32 * v27, v82);

      if (swift_dynamicCast())
      {
        v29 = v80;
        if (qword_24C88 != -1)
        {
          swift_once();
        }

        v30 = sub_17C54();
        sub_3080(v30, qword_27B90);

        v31 = sub_17C44();
        v32 = sub_17E64();

        v33 = os_log_type_enabled(v31, v32);
        v78 = v29;
        if (v33)
        {
          v34 = swift_slowAlloc();
          v77 = v31;
          v35 = v34;
          v75 = v34;
          v76 = swift_slowAlloc();
          v82[0] = v76;
          *v35 = 136315138;
          v36 = sub_17CB4();
          LOBYTE(v35) = v32;
          v38 = sub_15ECC(v36, v37, v82);

          v39 = v75;
          *(v75 + 4) = v38;
          v40 = v77;
          _os_log_impl(&dword_0, v77, v35, "parse result - dialogJson is: %s", v39, 0xCu);
          sub_3144(v76);
        }

        else
        {
        }

        v61 = v26;
        sub_179F4();
        sub_179E4();
        (*(v2 + 8))(v4, v1);
        v62 = sub_17CC4();

        [v61 setAceId:v62];

        v63 = v78;
        if (*(v78 + 16) && (v64 = sub_12790(0xD000000000000010, 0x8000000000019260), (v65 & 1) != 0) && (sub_B6A0(*(v63 + 56) + 32 * v64, v82), (swift_dynamicCast() & 1) != 0))
        {
          v66 = sub_17CC4();
        }

        else
        {
          v66 = 0;
        }

        [v61 setDialogIdentifier:v66];

        if (*(v63 + 16) && (v67 = sub_12790(0x746E65746E6F63, 0xE700000000000000), (v68 & 1) != 0))
        {
          sub_B6A0(*(v63 + 56) + 32 * v67, v82);

          if (swift_dynamicCast())
          {
            v69 = v81;

            v70 = sub_17CC4();

LABEL_42:
            [v61 setText:v70];

            v71 = v61;
            if (v69)
            {
              v72 = sub_17CC4();
            }

            else
            {
              v72 = 0;
            }

            [v61 setSpeakableText:v72];

            sub_12808(0, &qword_256B8, NSNumber_ptr);
            v73 = sub_17EF4(1).super.super.isa;
            [v61 setListenAfterSpeaking:v73];

            goto LABEL_25;
          }
        }

        else
        {
        }

        v70 = 0;
        v69 = 0;
        goto LABEL_42;
      }
    }

    else
    {
    }
  }

LABEL_25:
  sub_30B8(&unk_25180, qword_197F8);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_197A0;
  *(v46 + 32) = v26;
  sub_12808(0, &qword_256B0, SAAceView_ptr);
  v47 = v26;
  v48 = sub_17E04().super.isa;

  [v25 setViews:v48];

  [v25 setImmersiveExperience:1];
  [v25 setDialogPhase:SAUIDialogPhaseCompletionValue];
  if (qword_24C88 != -1)
  {
    swift_once();
  }

  v49 = sub_17C54();
  sub_3080(v49, qword_27B90);
  v50 = v25;
  v51 = sub_17C44();
  v52 = sub_17E64();
  v53 = v50;

  if (os_log_type_enabled(v51, v52))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v82[0] = v55;
    *v54 = 136315138;
    v56 = [v53 debugDescription];
    v57 = sub_17CF4();
    v59 = v58;

    v60 = sub_15ECC(v57, v59, v82);

    *(v54 + 4) = v60;
    _os_log_impl(&dword_0, v51, v52, "addViewsCommand is: %s", v54, 0xCu);
    sub_3144(v55);
  }

  sub_92DC(v79, v11);

  return v53;
}

void sub_12380(uint64_t *a1, void *a2)
{
  v4 = sub_17A04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  v9 = [objc_allocWithZone(SAStartRequest) init];
  sub_179F4();
  sub_179E4();
  (*(v5 + 8))(v7, v4);
  v10 = sub_17CC4();

  [v9 setAceId:v10];

  if (*(v8 + 16) && (v11 = sub_12790(0x636E617265747475, 0xE900000000000065), (v12 & 1) != 0) && (sub_B6A0(*(v8 + 56) + 32 * v11, v25), (swift_dynamicCast() & 1) != 0))
  {
    v13 = sub_17CC4();
  }

  else
  {
    v13 = 0;
  }

  [v9 setUtterance:v13];

  v14 = [objc_allocWithZone(SASendCommands) init];
  sub_30B8(&unk_25180, qword_197F8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_197A0;
  *(v15 + 32) = v9;
  v16 = v9;
  sub_30B8(&unk_25730, &qword_1A630);
  isa = sub_17E04().super.isa;

  [v14 setCommands:isa];

  v18 = *(v8 + 16);
  v19 = v14;
  if (v18 && (v20 = sub_12790(0x6449656361, 0xE500000000000000), (v21 & 1) != 0) && (sub_B6A0(*(v8 + 56) + 32 * v20, v25), (swift_dynamicCast() & 1) != 0))
  {
    v22 = sub_17CC4();
  }

  else
  {
    v22 = 0;
  }

  [v19 setAceId:v22];

  v23 = v19;
  sub_17DF4();
  if (*(&dword_10 + (*a2 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a2 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_17E34();
  }

  sub_17E44();
}

uint64_t sub_12708(uint64_t result, void *a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 32); ; ++i)
    {
      v6 = *i;

      sub_12380(&v6, a2);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t sub_12790(uint64_t a1, uint64_t a2)
{
  sub_18154();
  sub_17D74();
  v4 = sub_18174();

  return sub_128E4(a1, a2, v4);
}

uint64_t sub_12808(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_12850(uint64_t a1)
{
  sub_17CF4();
  sub_18154();
  sub_17D74();
  v2 = sub_18174();

  return sub_1299C(a1, v2);
}

unint64_t sub_128E4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_18134())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1299C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_17CF4();
      v8 = v7;
      if (v6 == sub_17CF4() && v8 == v9)
      {
        break;
      }

      v11 = sub_18134();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

void sub_12AA0(uint64_t a1)
{
  v2 = [objc_allocWithZone(SACardSnippet) init];
  if (a1)
  {
    if (*(a1 + 16))
    {
      v3 = v2;
      v4 = sub_12790(0x74657070696E73, 0xE700000000000000);
      if (v5)
      {
        sub_B6A0(*(a1 + 56) + 32 * v4, v43);
        sub_30B8(&unk_256A0, &unk_1A600);
        if (swift_dynamicCast())
        {
          v6 = v42;
          if (qword_24C88 != -1)
          {
            swift_once();
          }

          v7 = sub_17C54();
          sub_3080(v7, qword_27B90);

          v8 = sub_17C44();
          v9 = sub_17E64();

          if (os_log_type_enabled(v8, v9))
          {
            v10 = swift_slowAlloc();
            v11 = swift_slowAlloc();
            v43[0] = v11;
            *v10 = 136315138;
            v12 = sub_17CB4();
            v14 = sub_15ECC(v12, v13, v43);

            *(v10 + 4) = v14;
            _os_log_impl(&dword_0, v8, v9, "parse result - snippetJson is: %s", v10, 0xCu);
            sub_3144(v11);
          }

          if (*(v6 + 16))
          {
            v15 = sub_12790(0x6174614464726163, 0xE800000000000000);
            if (v16)
            {
              sub_B6A0(*(v6 + 56) + 32 * v15, v43);
              if (swift_dynamicCast())
              {
                if (*(v6 + 16))
                {
                  v17 = sub_12790(0xD000000000000012, 0x8000000000019280);
                  if (v18)
                  {
                    sub_B6A0(*(v6 + 56) + 32 * v17, v43);
                    sub_30B8(&qword_256C0, &unk_1A610);
                    if (swift_dynamicCast())
                    {
                      v43[0] = &_swiftEmptyArrayStorage;
                      sub_12708(v42, v43);

                      sub_30B8(&qword_256C8, &unk_1A620);
                      isa = sub_17E04().super.isa;
                      [v3 setReferencedCommands:isa];

                      v20 = v3;
                      v21 = sub_17C44();
                      v22 = sub_17E64();
                      if (os_log_type_enabled(v21, v22))
                      {
                        v23 = swift_slowAlloc();
                        v40 = swift_slowAlloc();
                        v42 = v40;
                        buf = v23;
                        *v23 = 136315138;
                        v24 = [v20 referencedCommands];

                        if (!v24)
                        {
                          __break(1u);
                          return;
                        }

                        sub_17E14();

                        v25 = sub_17E24();
                        v27 = v26;

                        v28 = sub_15ECC(v25, v27, &v42);

                        *(buf + 4) = v28;
                        _os_log_impl(&dword_0, v21, v22, "referencedCommands are: %s", buf, 0xCu);
                        sub_3144(v40);
                      }

                      else
                      {
                      }
                    }
                  }
                }

                v32 = sub_17994();
                v34 = v33;

                if (v34 >> 60 == 15)
                {
                  v35 = 0;
                }

                else
                {
                  v35 = sub_179A4().super.isa;
                  sub_92DC(v32, v34);
                }

                [v3 setCardData:v35];

                v36 = [objc_allocWithZone(SAUISash) init];
                if (*(v6 + 16) && (v37 = sub_12790(0x6C74695468736173, 0xE900000000000065), (v38 & 1) != 0))
                {
                  sub_B6A0(*(v6 + 56) + 32 * v37, v43);

                  if (swift_dynamicCast())
                  {
                    v39 = sub_17CC4();

LABEL_32:
                    [v36 setTitle:v39];

                    [v3 setSash:v36];
                    return;
                  }
                }

                else
                {
                }

                v39 = 0;
                goto LABEL_32;
              }
            }
          }

          v29 = sub_17C44();
          v30 = sub_17E74();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 0;
            _os_log_impl(&dword_0, v29, v30, "parse error - snippet cardData is empty", v31, 2u);
          }
        }
      }
    }
  }
}

void *sub_13114(uint64_t a1, unint64_t a2)
{
  v4 = sub_17D44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameState();
  sub_17D34();
  v8 = sub_17D04();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  if (v10 >> 60 == 15)
  {
    if (qword_24C88 != -1)
    {
      swift_once();
    }

    v11 = sub_17C54();
    sub_3080(v11, qword_27B90);

    v12 = sub_17C44();
    v13 = sub_17E54();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_15ECC(a1, a2, &v18);
      _os_log_impl(&dword_0, v12, v13, "no invalid data for String= %s", v14, 0xCu);
      sub_3144(v15);
    }

    return 0;
  }

  else
  {
    sub_17904();
    swift_allocObject();
    sub_178F4();
    sub_14030();
    sub_178E4();
    sub_92DC(v8, v10);

    return v18;
  }
}

void *sub_1357C()
{
  v0 = sub_179D4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v74[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_17C34();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v74[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_17EE4();
  if (qword_24C78 != -1)
  {
    swift_once();
  }

  v8 = qword_27B70;
  sub_17C24();
  sub_17C14();
  v88 = *(v5 + 8);
  v88(v7, v4);
  v9 = sub_17BC4();
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  if (!*(v9 + 16))
  {

LABEL_16:
    if (qword_24C88 != -1)
    {
      swift_once();
    }

    v28 = sub_17C54();
    sub_3080(v28, qword_27B90);
    v24 = sub_17C44();
    v25 = sub_17E54();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_21;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "no domainData";
    goto LABEL_20;
  }

  v11 = sub_12790(0x74617453656D6167, 0xE900000000000065);
  if ((v12 & 1) == 0 || (sub_B6A0(*(v10 + 56) + 32 * v11, v91), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_24C88 != -1)
    {
      swift_once();
    }

    v23 = sub_17C54();
    sub_3080(v23, qword_27B90);
    v24 = sub_17C44();
    v25 = sub_17E54();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_21;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "no game info from server";
LABEL_20:
    _os_log_impl(&dword_0, v24, v25, v27, v26, 2u);

LABEL_21:

    v29 = 0;
LABEL_22:
    sub_17ED4();
    sub_17C24();
    sub_17C14();
    v88(v7, v4);
    return v29;
  }

  v82 = v0;
  v83 = v1;
  v13 = v90;
  v86 = v89;
  if (qword_24C88 != -1)
  {
    swift_once();
  }

  v81 = v3;
  v14 = sub_17C54();
  v15 = sub_3080(v14, qword_27B90);

  v16 = sub_17C44();
  v17 = sub_17E64();

  v18 = os_log_type_enabled(v16, v17);
  v85 = v8;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v80 = v15;
    v21 = v20;
    v91[0] = v20;
    *v19 = 136315138;
    v22 = v86;
    *(v19 + 4) = sub_15ECC(v86, v13, v91);
    _os_log_impl(&dword_0, v16, v17, "serverGameStateStr is: %s", v19, 0xCu);
    sub_3144(v21);
    v15 = v80;
  }

  else
  {

    v22 = v86;
  }

  v84 = v13;
  v29 = sub_13114(v22, v13);
  if (*(v10 + 16) && (v31 = sub_12790(0x6E697265646E6572, 0xEA00000000007367), (v32 & 1) != 0) && (sub_B6A0(*(v10 + 56) + 32 * v31, v91), (swift_dynamicCast() & 1) != 0))
  {
    v33 = v90;
    v79 = v89;

    v34 = sub_17C44();
    v35 = sub_17E64();

    v36 = os_log_type_enabled(v34, v35);
    v87 = v33;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v80 = v15;
      v38 = v37;
      v39 = swift_slowAlloc();
      v91[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_15ECC(v79, v33, v91);
      _os_log_impl(&dword_0, v34, v35, "renderingsJson from Server is: %s", v38, 0xCu);
      sub_3144(v39);

      v15 = v80;
    }

    v40 = v79;
  }

  else
  {
    v41 = sub_17C44();
    v42 = sub_17E54();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "no addViews from server", v43, 2u);
    }

    v40 = 0;
    v87 = 0;
  }

  if (*(v10 + 16))
  {
    v44 = sub_12790(0x6B6361626C6C6166, 0xEF74736575716552);
    if (v45)
    {
      sub_B6A0(*(v10 + 56) + 32 * v44, v91);
      if (swift_dynamicCast())
      {
        v78 = v89;
        v79 = v40;
        v46 = v90;

        v47 = sub_17C44();
        v48 = sub_17E64();

        v75 = v48;
        v76 = v47;
        v49 = os_log_type_enabled(v47, v48);
        v77 = v46;
        if (v49)
        {
          v50 = swift_slowAlloc();
          v80 = v15;
          v51 = v50;
          v52 = swift_slowAlloc();
          v91[0] = v52;
          *v51 = 136315138;
          *(v51 + 4) = sub_15ECC(v78, v46, v91);
          v53 = v76;
          _os_log_impl(&dword_0, v76, v75, "fallbackRequest from Server is: %s", v51, 0xCu);
          sub_3144(v52);
        }

        else
        {
        }

        v40 = v79;
        if (v29)
        {
          v54 = v77;
          v29[20] = v78;
          v29[21] = v54;
        }
      }
    }
  }

  if (*(v10 + 16) && (v55 = sub_12790(0x72754464696C6176, 0xED00006E6F697461), (v56 & 1) != 0))
  {
    sub_B6A0(*(v10 + 56) + 32 * v55, v91);

    if (swift_dynamicCast())
    {
      v57 = v89;
      v58 = sub_17C44();
      v59 = sub_17E64();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 134217984;
        *(v60 + 4) = v57;
        _os_log_impl(&dword_0, v58, v59, "validDuration from Server is: %ld", v60, 0xCu);
      }

      if (v29)
      {
        v29[22] = v57;
        *(v29 + 184) = 0;
        v61 = v87;
        goto LABEL_51;
      }

LABEL_55:

      goto LABEL_22;
    }
  }

  else
  {
  }

  v61 = v87;
  if (!v29)
  {
    goto LABEL_55;
  }

LABEL_51:

  v62 = v81;
  sub_179C4();
  sub_179B4();
  v64 = v63;
  v65 = v63;
  result = (*(v83 + 8))(v62, v82);
  if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_58;
  }

  if (v64 <= -9.22337204e18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v87 = v61;
  if (v64 < 9.22337204e18)
  {
    v66 = v40;
    v29[18] = v64;
    *(v29 + 152) = 0;

    v67 = v29[12];
    v68 = v29[13];
    v69 = v29[14];
    v70 = v29[15];
    v72 = v86;
    v71 = v87;
    v29[12] = v66;
    v29[13] = v71;
    v73 = v84;
    v29[14] = v72;
    v29[15] = v73;

    sub_DD74(v67, v68, v69, v70);

    goto LABEL_22;
  }

LABEL_59:
  __break(1u);
  return result;
}

unint64_t sub_14030()
{
  result = qword_25740;
  if (!qword_25740)
  {
    type metadata accessor for GameState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25740);
  }

  return result;
}

unint64_t sub_14088()
{
  result = qword_25750;
  if (!qword_25750)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_25750);
  }

  return result;
}

uint64_t sub_140D4(uint64_t a1)
{
  v2 = sub_30B8(&unk_251A0, &qword_19820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1413C(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 120) = a1;
  *(v2 + 96) = 0;
  *(v2 + 104) = a2;
  v3 = *(a1 + 90);
  if (v3 <= 2)
  {
    goto LABEL_4;
  }

  if (v3 == 3)
  {

    goto LABEL_7;
  }

  if (v3 == 4)
  {
LABEL_4:
    v4 = sub_18134();

    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    v5 = 2;
    goto LABEL_8;
  }

LABEL_5:
  v5 = 1;
LABEL_8:
  *(v2 + 112) = v5;
  return v2;
}

uint64_t sub_1424C(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  sub_30B8(&qword_25190, &qword_19810);
  v2[37] = swift_task_alloc();

  return _swift_task_switch(sub_142E8, 0, 0);
}

uint64_t sub_142E8()
{
  if (*(*(v0 + 288) + 112))
  {
    if (*(*(v0 + 288) + 112) == 1)
    {
      if (qword_24C88 != -1)
      {
        swift_once();
      }

      v1 = sub_17C54();
      sub_3080(v1, qword_27B90);
      v2 = sub_17C44();
      v3 = sub_17E54();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&dword_0, v2, v3, "resume game", v4, 2u);
      }

      v5 = *(v0 + 288);

      v6 = *(v5 + 32);
      *(v0 + 16) = *(v5 + 16);
      *(v0 + 32) = v6;
      v7 = *(v5 + 48);
      v8 = *(v5 + 64);
      v9 = *(v5 + 80);
      *(v0 + 96) = *(v5 + 96);
      *(v0 + 64) = v8;
      *(v0 + 80) = v9;
      *(v0 + 48) = v7;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 80) = 0u;
      *(v5 + 96) = 0;
      *(v5 + 16) = 0u;
      *(v5 + 32) = 0u;
      sub_31F4(v0 + 16, &qword_25868, &unk_1A790);
      v10 = sub_10C9C();
      *(v0 + 320) = v10;
      if (v10)
      {
        v11 = *(v0 + 296);
        v12 = v10;
        [v10 setRefId:0];
        sub_10B74();
        v13 = sub_17B54();
        (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
        v14 = swift_task_alloc();
        *(v0 + 328) = v14;
        *v14 = v0;
        v14[1] = sub_14AD8;
        v15 = *(v0 + 296);
        v16 = v12;
LABEL_21:

        return sub_1FB0(v16, v15);
      }
    }

    else
    {
      if (qword_24C88 != -1)
      {
        swift_once();
      }

      v29 = sub_17C54();
      sub_3080(v29, qword_27B90);
      v30 = sub_17C44();
      v31 = sub_17E54();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_0, v30, v31, "ask user whether to resume game", v32, 2u);
      }

      v33 = *(v0 + 288);

      v34 = *(v33 + 16);
      *(v0 + 120) = *(v33 + 32);
      *(v0 + 104) = v34;
      v35 = *(v33 + 48);
      v36 = *(v33 + 64);
      v37 = *(v33 + 80);
      *(v0 + 184) = *(v33 + 96);
      *(v0 + 168) = v37;
      *(v0 + 152) = v36;
      *(v0 + 136) = v35;
      *(v33 + 48) = 0u;
      *(v33 + 64) = 0u;
      *(v33 + 80) = 0u;
      *(v33 + 96) = 0;
      *(v33 + 16) = 0u;
      *(v33 + 32) = 0u;
      sub_31F4(v0 + 104, &qword_25868, &unk_1A790);
      v38 = sub_118FC();
      *(v0 + 304) = v38;
      if (v38)
      {
        v39 = *(v0 + 296);
        v40 = v38;
        [v38 setRefId:0];
        sub_17B44();
        sub_17B04();
        sub_17AF4();
        v41 = sub_17B54();
        (*(*(v41 - 8) + 56))(v39, 0, 1, v41);
        v42 = swift_task_alloc();
        *(v0 + 312) = v42;
        *v42 = v0;
        v42[1] = sub_14940;
        v15 = *(v0 + 296);
        v16 = v40;
        goto LABEL_21;
      }
    }

    v44 = sub_17C44();
    v45 = sub_17E74();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_29;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "no invalid addViews";
    goto LABEL_28;
  }

  if (qword_24C88 != -1)
  {
    swift_once();
  }

  v17 = sub_17C54();
  sub_3080(v17, qword_27B90);
  v18 = sub_17C44();
  v19 = sub_17E54();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "request to start a new game", v20, 2u);
  }

  v21 = *(v0 + 288);

  v22 = *(v21 + 32);
  *(v0 + 192) = *(v21 + 16);
  *(v0 + 208) = v22;
  v23 = *(v21 + 48);
  v24 = *(v21 + 64);
  v25 = *(v21 + 80);
  *(v0 + 272) = *(v21 + 96);
  *(v0 + 240) = v24;
  *(v0 + 256) = v25;
  *(v0 + 224) = v23;
  *(v21 + 48) = 0u;
  *(v21 + 64) = 0u;
  *(v21 + 80) = 0u;
  *(v21 + 96) = 0;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  sub_31F4(v0 + 192, &qword_25868, &unk_1A790);
  v26 = *(v21 + 120);
  v27 = *(v26 + 168);
  if (!v27)
  {
    v44 = sub_17C44();
    v45 = sub_17E74();
    if (!os_log_type_enabled(v44, v45))
    {
LABEL_29:

      goto LABEL_30;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "no invalid machineUtterance from server";
LABEL_28:
    _os_log_impl(&dword_0, v44, v45, v47, v46, 2u);

    goto LABEL_29;
  }

  v28 = *(v26 + 160);

  sub_2D88(v28, v27);

LABEL_30:
  sub_17AE4();

  v48 = *(v0 + 8);

  return v48();
}