id PHDefaultLog(uint64_t a1)
{
  if (PHDefaultLog_onceToken != -1)
  {
    PHDefaultLog_cold_1();
  }

  v2 = PHDefaultLog_PHDefaultLog;

  return v2;
}

uint64_t __PHDefaultLog_block_invoke()
{
  PHDefaultLog_PHDefaultLog = os_log_create("com.apple.calls.mobilephone", "Default");

  return MEMORY[0x2821F96F8]();
}

id PHOversizedLog(uint64_t a1)
{
  if (PHOversizedLog_onceToken != -1)
  {
    PHOversizedLog_cold_1();
  }

  v2 = PHOversizedLog_PHOversizedLog;

  return v2;
}

uint64_t __PHOversizedLog_block_invoke()
{
  PHOversizedLog_PHOversizedLog = os_log_create("com.apple.calls.mobilephone", "Oversized");

  return MEMORY[0x2821F96F8]();
}

id PHOversizedLogQueue(uint64_t a1)
{
  if (PHOversizedLogQueue_onceToken != -1)
  {
    PHOversizedLogQueue_cold_1();
  }

  v2 = PHOversizedLogQueue_PHOversizedLogQueue;

  return v2;
}

void __PHOversizedLogQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFFFFFE, 0);
  v0 = dispatch_queue_create("com.apple.calls.mobilephone.logging", v2);
  v1 = PHOversizedLogQueue_PHOversizedLogQueue;
  PHOversizedLogQueue_PHOversizedLogQueue = v0;
}

void sub_23C146ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23C14CA2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

uint64_t sub_23C14CF8C()
{
  v20 = sub_23C14EE88();
  v0 = *(v20 - 8);
  MEMORY[0x28223BE20]();
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [objc_allocWithZone(MEMORY[0x277D79778]) init];
  v3 = [v21 accounts];
  sub_23C14D1F4();
  v4 = sub_23C14EF98();

  if (v4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23C14F018())
  {
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v18 = v4 & 0xFFFFFFFFFFFFFF8;
    v19 = v0 + 1;
    v8 = 0x278BB3000uLL;
    while (1)
    {
      if (v7)
      {
        v9 = MEMORY[0x23EEC91D0](v6, v4);
      }

      else
      {
        if (v6 >= *(v18 + 16))
        {
          goto LABEL_15;
        }

        v9 = *(v4 + 8 * v6 + 32);
      }

      v0 = v9;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v9 *(v8 + 3368)])
      {
        v11 = v4;
        v12 = i;
        v13 = v8;
        v14 = [v0 UUID];
        sub_23C14EE78();

        v15 = sub_23C14EE68();
        (*v19)(v2, v20);
        v16 = [v21 isPasscodeChangeSupportedForAccountUUID_];

        v8 = v13;
        i = v12;
        v4 = v11;

        if (v16)
        {

          return 1;
        }
      }

      else
      {
      }

      ++v6;
      if (v10 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return 0;
}

unint64_t sub_23C14D1F4()
{
  result = qword_27E1F02F8;
  if (!qword_27E1F02F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1F02F8);
  }

  return result;
}

unint64_t sub_23C14D278()
{
  result = qword_27E1F0300;
  if (!qword_27E1F0300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F0300);
  }

  return result;
}

uint64_t sub_23C14D2E8(uint64_t a1)
{
  sub_23C14EED8();
  MEMORY[0x28223BE20]();
  sub_23C14EBA4();
  v2 = [objc_allocWithZone(MEMORY[0x277D3FAD8]) init];
  [v2 setProperty:a1 forKey:*MEMORY[0x277D40038]];
  sub_23C14EEC8();
  return sub_23C14EE98();
}

uint64_t sub_23C14D3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F0320, &qword_23C1501C8);
  v3[9] = swift_task_alloc();
  v4 = sub_23C14EF18();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = sub_23C14EED8();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = type metadata accessor for PhoneSettingsSpecifierIdentifiers.Action(0);
  v3[18] = swift_task_alloc();
  v6 = sub_23C14EEF8();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v7 = sub_23C14EE58();
  v3[23] = v7;
  v3[24] = *(v7 - 8);
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F0328, &qword_23C1501D0);
  v3[26] = swift_task_alloc();
  v8 = sub_23C14EE48();
  v3[27] = v8;
  v3[28] = *(v8 - 8);
  v3[29] = swift_task_alloc();
  sub_23C14EFC8();
  v3[30] = sub_23C14EFB8();
  v10 = sub_23C14EFA8();

  return MEMORY[0x2822009F8](sub_23C14D6E4, v10, v9);
}

uint64_t sub_23C14D6E4()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v6 = v0[24];

  sub_23C14EF48();
  sub_23C14EE18();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v7 = v0[22];
    v8 = v0[19];
    v9 = v0[20];
    sub_23C14EAF8(v0[26], &qword_27E1F0328, &qword_23C1501D0);
    sub_23C14EF38();
    sub_23C14EF68();
    (*(v9 + 8))(v7, v8);
    goto LABEL_41;
  }

  (*(v0[28] + 32))(v0[29], v0[26], v0[27]);
  sub_23C14EF38();
  v0[2] = sub_23C14EE28();
  v0[3] = v10;
  v0[4] = 47;
  v0[5] = 0xE100000000000000;
  sub_23C14E7CC();
  v11 = sub_23C14EFF8();

  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = -v13;
    v16 = v11 + 40;
    v17 = MEMORY[0x277D84F90];
    do
    {
      v18 = (v16 + 16 * v14++);
      while (1)
      {
        if ((v14 - 1) >= *(v11 + 16))
        {
          __break(1u);
          return result;
        }

        v19 = *(v18 - 1);
        v20 = *v18;
        v21 = HIBYTE(*v18) & 0xF;
        if ((*v18 & 0x2000000000000000) == 0)
        {
          v21 = v19 & 0xFFFFFFFFFFFFLL;
        }

        if (v21)
        {
          if (v19 != 0xD000000000000015 || 0x800000023C150DF0 != v20)
          {
            result = sub_23C14F038();
            if ((result & 1) == 0)
            {
              break;
            }
          }
        }

        ++v14;
        v18 += 2;
        if (v15 + v14 == 1)
        {
          goto LABEL_23;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v82 = v17;
      if ((result & 1) == 0)
      {
        result = sub_23C14E820(0, *(v17 + 2) + 1, 1);
      }

      v16 = v11 + 40;
      v24 = *(v17 + 2);
      v23 = *(v17 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v27 = v24 + 1;
        v77 = v24;
        result = sub_23C14E820((v23 > 1), v24 + 1, 1);
        v25 = v27;
        v24 = v77;
        v16 = v11 + 40;
        v17 = v82;
      }

      *(v17 + 2) = v25;
      v26 = &v17[16 * v24];
      *(v26 + 4) = v19;
      *(v26 + 5) = v20;
    }

    while (v15 + v14);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

LABEL_23:

  v28 = *(v17 + 2);
  if (v28)
  {
    goto LABEL_24;
  }

  sub_23C14EE38();
  if (v48)
  {
    v49 = v0[8];

    v50 = sub_23C14EF88();

    [v49 setSpecifierIdentifierToScrollAndHighlight_];

LABEL_40:
    v52 = v0[28];
    v51 = v0[29];
    v53 = v0[27];
    v55 = v0[20];
    v54 = v0[21];
    v56 = v0[19];
    sub_23C14EF68();
    (*(v55 + 8))(v54, v56);
    (*(v52 + 8))(v51, v53);
    goto LABEL_41;
  }

  v28 = *(v17 + 2);
  if (!v28)
  {

    goto LABEL_40;
  }

LABEL_24:
  v29 = v0[15];
  v30 = (v29 + 32);
  v31 = (v0[11] + 48);
  v80 = (v29 + 8);
  while (1)
  {
    v33 = *(v17 + 4);
    v32 = *(v17 + 5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v28 - 1) > *(v17 + 3) >> 1)
    {
      v17 = sub_23C14E94C(isUniquelyReferenced_nonNull_native, v28, 1, v17);
    }

    sub_23C14EAA4((v17 + 32));
    v35 = *(v17 + 2);
    memmove(v17 + 32, v17 + 48, 16 * v35 - 16);
    *(v17 + 2) = v35 - 1;

    v36 = sub_23C14EA58(v33, v32);
    if (v36 == 15 || (v37 = v36, (sub_23C14DE8C(v36) & 1) == 0))
    {

LABEL_39:

      goto LABEL_40;
    }

    sub_23C14E0AC(v37);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      break;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v58 = v0[28];
      v78 = v0[27];
      v81 = v0[29];
      v59 = v0[20];
      v60 = v0[18];
      v73 = v0[21];
      v75 = v0[19];
      v61 = v0[11];
      v62 = v0[12];
      v63 = v0[10];

      (*(v61 + 32))(v62, v60, v63);
      sub_23C14EF58();
      (*(v61 + 8))(v62, v63);
      (*(v59 + 8))(v73, v75);
      (*(v58 + 8))(v81, v78);
      goto LABEL_41;
    }

    v39 = v0[8];
    v40 = sub_23C14EF88();

    [v39 setSpecifierIdentifierToScrollAndSelect_];

LABEL_25:
    v28 = *(v17 + 2);
    if (!v28)
    {
      goto LABEL_39;
    }
  }

  v41 = v0[18];
  v42 = v0[16];
  v43 = v0[14];
  v44 = v0[9];
  v45 = v0[10];

  (*v30)(v42, v41, v43);
  sub_23C14EEB8();
  if ((*v31)(v44, 1, v45) == 1)
  {
    v46 = v0[16];
    v47 = v0[14];
    sub_23C14EAF8(v0[9], &qword_27E1F0320, &qword_23C1501C8);
    sub_23C14EB58(&qword_27E1F0338, MEMORY[0x277D40250], MEMORY[0x277D40258]);
    sub_23C14EEE8();
    (*v80)(v46, v47);
    goto LABEL_25;
  }

  v64 = v0[28];
  v76 = v0[27];
  v79 = v0[29];
  v66 = v0[20];
  v65 = v0[21];
  v72 = v0[16];
  v74 = v0[19];
  v67 = v0[13];
  v71 = v0[14];
  v69 = v0[10];
  v68 = v0[11];
  v70 = v0[9];

  (*(v68 + 32))(v67, v70, v69);
  sub_23C14EF58();
  (*(v68 + 8))(v67, v69);
  (*v80)(v72, v71);
  (*(v66 + 8))(v65, v74);
  (*(v64 + 8))(v79, v76);
LABEL_41:

  v57 = v0[1];

  return v57();
}

id sub_23C14DE8C(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D6EE48]) init];
  v3 = v2;
  switch(a1)
  {
    case 1:
      v4 = [v2 isCallAnnouncementAvailableForPhone];
      goto LABEL_24;
    case 2:
      v5 = [v2 isSIMAvailable];

      if (!v5)
      {
        return v5;
      }

      v7 = [objc_opt_self() sharedInstance];
      if (v7)
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_14:
      v5 = [v3 isShareNameAndPhotosAvailable];

      if (v5)
      {
        v7 = [objc_opt_self() sharedInstance];
        if (!v7)
        {
          __break(1u);
          JUMPOUT(0x23C14E070);
        }

LABEL_16:
        v8 = v7;
        v9 = [v7 deviceType];

        return (v9 == 2);
      }

      return v5;
    case 3:
      goto LABEL_14;
    case 4:
      v4 = [v2 isWiFiCallingAvailable];
      goto LABEL_24;
    case 5:
      v4 = [v2 isRelayPrimaryAvailable];
      goto LABEL_24;
    case 6:
      v4 = [v2 isRespondwithTextAvailable];
      goto LABEL_24;
    case 7:
      v4 = [v2 isCallForwardingAvailable];
      goto LABEL_24;
    case 8:
      v4 = [v2 isCallWaitingAvailable];
      goto LABEL_24;
    case 9:
      v4 = [v2 isCallRecordingAvailable];
      goto LABEL_24;
    case 10:
      v4 = [v2 isShowMyCallerIDAvailable];
      goto LABEL_24;
    case 11:
      v4 = [v2 isCallBlockingAndIdentificationAvailable];
      goto LABEL_24;
    case 12:
      v4 = [v2 isFaceTimeEnabledInSettings];
      goto LABEL_24;
    case 13:
      v4 = [v2 isILClassificationAvailable];
      goto LABEL_24;
    case 14:
      v5 = [v2 isSIMAvailable];

      if (!v5)
      {
        return v5;
      }

      return sub_23C14CF8C();
    default:
      v4 = [v2 isIncomingCallsAvailableForPhone];
LABEL_24:
      v5 = v4;

      return v5;
  }
}

uint64_t sub_23C14E0AC(char a1)
{
  sub_23C14EFE8();
  MEMORY[0x28223BE20]();
  switch(a1)
  {
    case 2:
    case 3:
    case 4:
    case 7:
    case 8:
    case 10:
    case 11:
    case 14:
      type metadata accessor for PhoneSettingsSpecifierIdentifiers.Action(0);

      result = swift_storeEnumTagMultiPayload();
      break;
    default:
      sub_23C14EFD8();
      sub_23C14EF08();
      type metadata accessor for PhoneSettingsSpecifierIdentifiers.Action(0);
      result = swift_storeEnumTagMultiPayload();
      break;
  }

  return result;
}

uint64_t sub_23C14E2B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F0308, &qword_23C1501B0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20]();
  v4 = &v9 - v3;
  v5 = *v0;
  *(swift_allocObject() + 16) = v5;
  sub_23C14EEA8();
  sub_23C14EB58(&qword_27E1F0310, MEMORY[0x277D40248], MEMORY[0x277D40240]);
  v6 = v5;
  sub_23C14EF78();
  *(swift_allocObject() + 16) = v6;
  sub_23C14E6D4();
  v7 = v6;
  sub_23C14EF28();
  return (*(v2 + 8))(v4, v1);
}

id sub_23C14E46C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277D3FA50]) init];
  *a1 = result;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23C14E4F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23C14E530(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23C14E5E0;

  return sub_23C14D3C4(a1, a2, v6);
}

uint64_t sub_23C14E5E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_23C14E6D4()
{
  result = qword_27E1F0318;
  if (!qword_27E1F0318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F0308, &qword_23C1501B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F0318);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for PhoneSettingsSpecifierIdentifiers.Action(uint64_t a1)
{
  result = qword_27E1F0350;
  if (!qword_27E1F0350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23C14E7CC()
{
  result = qword_27E1F0330;
  if (!qword_27E1F0330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F0330);
  }

  return result;
}

char *sub_23C14E820(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C14E840(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23C14E840(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F0340, &qword_23C1501D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23C14E94C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F0340, &qword_23C1501D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_23C14EA58(uint64_t a1, uint64_t a2)
{
  v2 = sub_23C14F028();

  if (v2 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23C14EAF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23C14EB58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23C14EBA4()
{
  result = qword_27E1F0348;
  if (!qword_27E1F0348)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1F0348);
  }

  return result;
}

void sub_23C14EC44(uint64_t a1)
{
  sub_23C14ECF0(319, &qword_27E1F0360, MEMORY[0x277D40250]);
  if (v1 <= 0x3F)
  {
    sub_23C14ECF0(319, &qword_27E1F0368, MEMORY[0x277D4D798]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_23C14ECF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23C14ED4C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F0308, &qword_23C1501B0);
  sub_23C14E6D4();
  return swift_getOpaqueTypeConformance2();
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}