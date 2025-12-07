uint64_t sub_230CF32E8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_230CF3320()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_230CF3F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void RemotePairing.getPairedDevices(completion:)(void (*a1)(void), uint64_t a2)
{
  v44 = a2;
  v45 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59EE0, &qword_230CF6530);
  MEMORY[0x28223BE20]();
  v3 = &v43 - v2;
  v58 = sub_230CF5D54();
  v54 = *(v58 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59EE8, &qword_230CF6538);
  MEMORY[0x28223BE20]();
  v52 = &v43 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59EF0, &qword_230CF6540);
  MEMORY[0x28223BE20]();
  v51 = &v43 - v7;
  v8 = sub_230CF5E54();
  v53 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_230CF5E04();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20]();
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230CF5DA4();
  v15 = sub_230CF5D94();
  v16 = sub_230CF5D74();
  v59 = v5;
  v57 = v11;
  v48 = v10;
  v43 = v15;
  v50 = v8;
  v60 = MEMORY[0x277D84F90];
  v56 = *(v16 + 16);
  if (v56)
  {
    v17 = 0;
    v49 = (v53 + 6);
    v47 = (v53 + 4);
    v46 = v53 + 1;
    ++v54;
    v55 = v12 + 16;
    v53 = (v12 + 8);
    v18 = v57;
    v19 = v59;
    while (v17 < *(v16 + 16))
    {
      v20 = v16;
      (*(v12 + 16))(v14, v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v17, v18);
      sub_230CF5DE4();
      v21 = objc_allocWithZone(DSPairedComputer);
      v22 = sub_230CF5E94();

      v23 = [v21 initWithDeviceName_];

      if (!v23)
      {
        goto LABEL_28;
      }

      sub_230CF5DD4();
      v24 = v58;
      if (v25)
      {
        v26 = sub_230CF5E94();
      }

      else
      {
        v26 = 0;
      }

      [v23 setSerialNumber_];

      sub_230CF5DF4();
      if (v27)
      {
        v28 = sub_230CF5E94();
      }

      else
      {
        v28 = 0;
      }

      [v23 setModel_];

      sub_230CF5DF4();
      if (v29)
      {
        v30 = sub_230CF5E24();
        (*(*(v30 - 8) + 56))(v52, 1, 1, v30);
        v31 = v51;
        sub_230CF5E34();
        v32 = v50;
        if ((*v49)(v31, 1, v50) == 1)
        {
          sub_230CF49B0(v31);
        }

        else
        {
          v33 = v48;
          (*v47)(v48, v31, v32);
          sub_230CF5E44();
          if (v34)
          {
            v35 = sub_230CF5E94();
            v33 = v48;
          }

          else
          {
            v35 = 0;
          }

          [v23 setMarketingName_];

          (*v46)(v33, v32);
        }

        v19 = v59;
      }

      sub_230CF5DC4();
      sub_230CF5D44();
      (*v54)(v19, v24);
      v36 = sub_230CF5E94();

      [v23 setRemotePairingFrameworkIdentifier_];

      sub_230CF5DB4();
      v37 = sub_230CF5D24();
      v38 = *(v37 - 8);
      v39 = 0;
      if ((*(v38 + 48))(v3, 1, v37) != 1)
      {
        v39 = sub_230CF5D14();
        (*(v38 + 8))(v3, v37);
      }

      [v23 setDatePaired_];

      v40 = v23;
      MEMORY[0x23191C460]();
      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_230CF5EE4();
      }

      ++v17;
      sub_230CF5EF4();

      v18 = v57;
      (*v53)(v14, v57);
      v16 = v20;
      v19 = v59;
      if (v56 == v17)
      {
        v41 = v45;
        v42 = v43;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v42 = v43;
    v41 = v45;
LABEL_26:

    v41(0);
  }
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

uint64_t sub_230CF49B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59EF0, &qword_230CF6540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_230CF4AAC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_230CF5D04();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t RemotePairing.removeAllPairedDevices()()
{
  sub_230CF5DA4();
  v0 = sub_230CF5D94();
  sub_230CF5D84();

  return 0;
}

uint64_t sub_230CF4BE4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id RemotePairing.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemotePairing.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RemotePairing.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_230CF4DDC(void (**a1)(const void *, void))
{
  v40 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59EE0, &qword_230CF6530);
  MEMORY[0x28223BE20]();
  v2 = &v40 - v1;
  v3 = sub_230CF5D54();
  v46 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59EE8, &qword_230CF6538);
  MEMORY[0x28223BE20]();
  v7 = &v40 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59EF0, &qword_230CF6540);
  MEMORY[0x28223BE20]();
  v9 = &v40 - v8;
  v53 = sub_230CF5E54();
  v45 = *(v53 - 8);
  MEMORY[0x28223BE20]();
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_230CF5E04();
  v55 = *(v12 - 8);
  MEMORY[0x28223BE20]();
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230CF5DA4();
  v15 = sub_230CF5D94();
  v16 = sub_230CF5D74();
  v17 = v40;
  v54 = v12;
  v43 = v11;
  v56 = MEMORY[0x277D84F90];
  v52 = *(v16 + 16);
  if (v52)
  {
    v18 = 0;
    v20 = v54;
    v19 = v55;
    v50 = v7;
    v51 = v55 + 16;
    v42 = (v45 + 4);
    v41 = v45 + 1;
    ++v46;
    v47 = v16;
    v44 = (v45 + 6);
    v45 = (v55 + 8);
    v48 = v15;
    v49 = v9;
    while (v18 < *(v16 + 16))
    {
      (*(v19 + 16))(v14, v16 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v18, v20);
      sub_230CF5DE4();
      v21 = objc_allocWithZone(DSPairedComputer);
      v22 = sub_230CF5E94();

      v23 = [v21 initWithDeviceName_];

      if (!v23)
      {
        goto LABEL_26;
      }

      sub_230CF5DD4();
      if (v24)
      {
        v25 = sub_230CF5E94();
      }

      else
      {
        v25 = 0;
      }

      [v23 setSerialNumber_];

      sub_230CF5DF4();
      if (v26)
      {
        v27 = sub_230CF5E94();
      }

      else
      {
        v27 = 0;
      }

      [v23 setModel_];

      sub_230CF5DF4();
      if (v28)
      {
        v29 = sub_230CF5E24();
        (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
        sub_230CF5E34();
        v30 = v53;
        if ((*v44)(v9, 1, v53) == 1)
        {
          sub_230CF49B0(v9);
        }

        else
        {
          v31 = v43;
          (*v42)(v43, v9, v30);
          sub_230CF5E44();
          if (v32)
          {
            v33 = sub_230CF5E94();
            v31 = v43;
          }

          else
          {
            v33 = 0;
          }

          [v23 setMarketingName_];

          (*v41)(v31, v53);
        }
      }

      sub_230CF5DC4();
      sub_230CF5D44();
      v34 = v3;
      (*v46)(v5, v3);
      v35 = sub_230CF5E94();

      [v23 setRemotePairingFrameworkIdentifier_];

      sub_230CF5DB4();
      v36 = sub_230CF5D24();
      v37 = *(v36 - 8);
      v38 = 0;
      if ((*(v37 + 48))(v2, 1, v36) != 1)
      {
        v38 = sub_230CF5D14();
        (*(v37 + 8))(v2, v36);
      }

      [v23 setDatePaired_];

      v39 = v23;
      MEMORY[0x23191C460]();
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_230CF5EE4();
      }

      ++v18;
      sub_230CF5EF4();

      v20 = v54;
      (*v45)(v14, v54);
      v3 = v34;
      v9 = v49;
      v7 = v50;
      v16 = v47;
      v15 = v48;
      v19 = v55;
      if (v52 == v18)
      {
        v17 = v40;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    _Block_release(v40);
    __break(1u);
  }

  else
  {
LABEL_24:

    v17[2](v17, 0);
  }
}

void _s15DSRemotePairing06RemoteB0C21removeSelectedDevices_27invokingCompletionHandlerOn10completionySaySo16DSPairedComputerCG_So17OS_dispatch_queueCSgys5Error_pSgctF_0(unint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F00, &qword_230CF6578);
  MEMORY[0x28223BE20]();
  v36 = &v28 - v6;
  v35 = sub_230CF5E14();
  v29 = *(v35 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_230CF5E64();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20]();
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_230CF5E84();
  v14 = *(v13 - 1);
  MEMORY[0x28223BE20]();
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_20:
    if (sub_230CF5F34())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_230CF5DA4();
    v13 = sub_230CF5D94();
    v34 = a2;
    if (v17)
    {
      v14 = sub_230CF5F34();
      if (!v14)
      {
LABEL_17:

        return;
      }
    }

    else
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_17;
      }
    }

    v12 = 0;
    v32 = a1 & 0xFFFFFFFFFFFFFF8;
    v33 = a1 & 0xC000000000000001;
    v31 = *MEMORY[0x277D46108];
    v18 = v29++;
    v30 = (v18 + 13);
    while (1)
    {
      if (v33)
      {
        v16 = a1;
        v19 = MEMORY[0x23191C4D0](v12, a1);
      }

      else
      {
        if (v12 >= *(v32 + 16))
        {
          goto LABEL_19;
        }

        v16 = a1;
        v19 = *(a1 + 8 * v12 + 32);
      }

      a1 = v19;
      a2 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v20 = [v19 remotePairingFrameworkIdentifier];
      if (!v20)
      {
        break;
      }

      v21 = v20;
      sub_230CF5EA4();

      v9 = v36;
      sub_230CF5D34();

      v22 = sub_230CF5D54();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v9, 1, v22) == 1)
      {
        goto LABEL_24;
      }

      (*(v23 + 32))(v8, v9, v22);
      v10 = v35;
      (*v30)(v8, v31, v35);
      v17 = swift_allocObject();
      *(v17 + 16) = v37;
      *(v17 + 24) = v38;

      sub_230CF5D64();

      (*v29)(v8, v10);
      ++v12;
      a1 = v16;
      if (a2 == v14)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (a2)
  {
    v24 = v13;
    v25 = swift_allocObject();
    v26 = v38;
    *(v25 + 16) = v37;
    *(v25 + 24) = v26;
    aBlock[4] = sub_230CF5BBC;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_230CF4BE4;
    aBlock[3] = &block_descriptor;
    v27 = _Block_copy(aBlock);

    sub_230CF5E74();
    v39 = MEMORY[0x277D84F90];
    sub_230CF5C00();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F10, &qword_230CF6580);
    sub_230CF5C58();
    sub_230CF5F14();
    MEMORY[0x23191C4B0](0, v16, v12, v27);
    _Block_release(v27);
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v24);

    return;
  }

LABEL_25:
  __break(1u);
}

unint64_t sub_230CF5B40()
{
  result = qword_27DB59EF8;
  if (!qword_27DB59EF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DB59EF8);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_230CF5C00()
{
  result = qword_27DB59F08;
  if (!qword_27DB59F08)
  {
    sub_230CF5E64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB59F08);
  }

  return result;
}

unint64_t sub_230CF5C58()
{
  result = qword_27DB59F18;
  if (!qword_27DB59F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB59F10, &qword_230CF6580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB59F18);
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