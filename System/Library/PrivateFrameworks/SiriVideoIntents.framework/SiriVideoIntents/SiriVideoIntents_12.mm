unint64_t sub_2697ABB80()
{
  result = qword_280324BD0;
  if (!qword_280324BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BD0);
  }

  return result;
}

unint64_t sub_2697ABBD4()
{
  result = qword_280324BD8;
  if (!qword_280324BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BD8);
  }

  return result;
}

unint64_t sub_2697ABC28()
{
  result = qword_280324BE0;
  if (!qword_280324BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BE0);
  }

  return result;
}

unint64_t sub_2697ABC7C()
{
  result = qword_280324BE8;
  if (!qword_280324BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BE8);
  }

  return result;
}

unint64_t sub_2697ABCD0()
{
  result = qword_280324BF0;
  if (!qword_280324BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BF0);
  }

  return result;
}

unint64_t sub_2697ABD24()
{
  result = qword_280324BF8;
  if (!qword_280324BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BF8);
  }

  return result;
}

unint64_t sub_2697ABD78()
{
  result = qword_280324C00;
  if (!qword_280324C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324C00);
  }

  return result;
}

unint64_t sub_2697ABDCC()
{
  result = qword_280324C08;
  if (!qword_280324C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324C08);
  }

  return result;
}

unint64_t sub_2697ABE20()
{
  result = qword_280324C10;
  if (!qword_280324C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324C10);
  }

  return result;
}

unint64_t sub_2697ABE74()
{
  result = qword_280324C18;
  if (!qword_280324C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324C18);
  }

  return result;
}

unint64_t sub_2697ABEC8()
{
  result = qword_280324C20;
  if (!qword_280324C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324C20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_29(uint64_t a1, uint64_t a2)
{

  return sub_269853BB4();
}

uint64_t OUTLINED_FUNCTION_13_18()
{
}

void *OUTLINED_FUNCTION_15_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_269853D54();
}

void *OUTLINED_FUNCTION_17_15(uint64_t a1)
{

  return sub_269853D54();
}

uint64_t sub_2697AC034()
{
  if (qword_280322628 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaNLIntent(0);
  sub_2696DAEF8();
  sub_269853D54();
  if (v4 == 7)
  {
    v0 = 0;
  }

  else if (sub_2697A9738(v4) == 0x6C65636E6163 && v1 == 0xE600000000000000)
  {

    v0 = 1;
  }

  else
  {
    v0 = sub_269855584();
  }

  return v0 & 1;
}

uint64_t sub_2697AC1D8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  swift_allocObject();
  OUTLINED_FUNCTION_2_27();
  result = sub_269853BB4();
  *a5 = result;
  return result;
}

uint64_t sub_2697AC230()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324820, &unk_269860990);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2698580D0;
  if (qword_280322640 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D868;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  *(v0 + 64) = OUTLINED_FUNCTION_0_41(&qword_280324830);
  *(v0 + 32) = v1;
  v2 = qword_280322648;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_28033D870;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324C38, &qword_269861AE0);
  *(v0 + 104) = OUTLINED_FUNCTION_0_41(&qword_280324C40);
  *(v0 + 72) = v3;

  v4 = OUTLINED_FUNCTION_2_27();

  return MEMORY[0x2821C0790](v4, 0xEB000000006E6F73, 1, v0);
}

uint64_t _s13MediaNLPersonV10PersonRoleOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s13MediaNLPersonV10PersonRoleOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        break;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2697AC584()
{
  result = qword_280324C58;
  if (!qword_280324C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324C58);
  }

  return result;
}

uint64_t sub_2697AC5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_269853D94();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  *(a3 + *(_s13MediaNLPersonVMa(0) + 20)) = a2;
}

unint64_t sub_2697AC668(uint64_t a1, uint64_t a2)
{
  v2 = sub_2698553E4();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2697AC6C0(char a1)
{
  result = 0x726F746361;
  switch(a1)
  {
    case 1:
      result = 0x726F7461657263;
      break;
    case 2:
      result = 0x726F746365726964;
      break;
    case 3:
      result = 0x6174537473657567;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x72656375646F7270;
      break;
    case 6:
      result = 0x72656B616DLL;
      break;
    case 7:
      result = 0x726574697277;
      break;
    case 8:
      result = 0x6574636172616863;
      break;
    case 9:
      result = 0x6669636570736E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2697AC7F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2697AC668(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2697AC824@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2697AC6C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2697AC860(uint64_t a1, uint64_t a2)
{
  v4 = sub_2697ACB04();
  v5 = sub_2697ACB58();
  v6 = sub_2697ACBAC();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_2697AC91C()
{
  result = qword_280324C70;
  if (!qword_280324C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324C70);
  }

  return result;
}

unint64_t sub_2697AC974()
{
  result = qword_280324C78;
  if (!qword_280324C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324C78);
  }

  return result;
}

uint64_t sub_2697AC9CC(uint64_t a1)
{
  v2 = sub_2697ACAC0(&qword_2803247A0, &unk_269861C70);

  return MEMORY[0x2821C1928](a1, v2);
}

uint64_t sub_2697ACA34(uint64_t a1)
{
  v2 = sub_2697ACAC0(&qword_2803247A0, &unk_269861C70);

  return MEMORY[0x2821C1920](a1, v2);
}

uint64_t sub_2697ACAC0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s13MediaNLPersonVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2697ACB04()
{
  result = qword_280324C80;
  if (!qword_280324C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324C80);
  }

  return result;
}

unint64_t sub_2697ACB58()
{
  result = qword_280324C88;
  if (!qword_280324C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324C88);
  }

  return result;
}

unint64_t sub_2697ACBAC()
{
  result = qword_280324C90;
  if (!qword_280324C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324C90);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_41(unint64_t *a1)
{
  v4 = MEMORY[0x277D5E430];

  return sub_269693204(a1, v1, v2, v4);
}

uint64_t sub_2697ACC48(uint64_t result, void *a2, void *a3)
{
  v6 = result;
  v7 = 0;
  v8 = *(result + 16);
  do
  {
    if (v8 == v7)
    {
      break;
    }

    v9 = *(_s13MediaNLPersonVMa(0) - 8);
    result = sub_2697ACEBC(v6 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++, a2, a3);
  }

  while (!v3);
  return result;
}

uint64_t sub_2697ACD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_269853CE4();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_269853CE4();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

char *sub_2697ACDE0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_269750050();
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return MEMORY[0x26D646120](v3, a1);
  }

  result = sub_269855324();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_2697ACE74(uint64_t a1)
{
  v3 = 0;
  v2 = MEMORY[0x277D84F90];
  sub_2697ACC48(a1, &v2, &v3);
  return v2;
}

uint64_t sub_2697ACEBC(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for Person();
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_2697C01B0(0, 0, 0, 0xE000000000000000);
  if (qword_280322640 != -1)
  {
    swift_once();
  }

  _s13MediaNLPersonVMa(0);
  sub_2697AD190();
  sub_269853D54();
  if (v12)
  {
    v6 = sub_269854A64();
  }

  else
  {
    v6 = 0;
  }

  [v5 setName_];

  if (qword_280322648 != -1)
  {
    swift_once();
  }

  sub_269853D54();
  switch(v11)
  {
    case 1:
      v7 = [v5 setRole_];
      break;
    case 2:
      v7 = [v5 setRole_];
      break;
    case 3:
      v7 = [v5 setRole_];
      break;
    case 4:

      v9 = sub_2697ACDE0(v8);

      if (!v9)
      {
        goto LABEL_9;
      }

      [v5 setRole_];

      break;
    case 5:
      v7 = [v5 setRole_];
      break;
    case 6:
      v7 = [v5 setRole_];
      break;
    case 7:
      v7 = [v5 setRole_];
      break;
    case 8:
      v7 = [v5 setRole_];
      break;
    case 9:
    case 10:
LABEL_9:
      v7 = [v5 setRole_];
      break;
    default:
      v7 = [v5 setRole_];
      break;
  }

  MEMORY[0x26D645B90](v7);
  sub_26977E48C();
  result = sub_269854CF4();
  if (__OFADD__(*a3, 1))
  {
    __break(1u);
  }

  else
  {
    ++*a3;
  }

  return result;
}

unint64_t sub_2697AD190()
{
  result = qword_2803249B0;
  if (!qword_2803249B0)
  {
    _s13MediaNLPersonVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803249B0);
  }

  return result;
}

uint64_t sub_2697AD1E8()
{
  v0 = sub_2698548D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() ams_sharedAccountStore];
  v5 = [v4 ams_activeiCloudAccount];
  if (v5 && (v6 = sub_2697AD4D4(v5), v7))
  {
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v10 = [v4 ams_activeiTunesAccount];
    if (v10)
    {
      v8 = sub_2697AD4D4(v10);
      v9 = v11;
    }

    else
    {

      v8 = 0;
      v9 = 0;
    }
  }

  v12 = qword_280322700;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v0, qword_281571B38);
  (*(v1 + 16))(v3, v13, v0);
  v14 = sub_2698548B4();
  v15 = sub_269854F14();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = v4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136315138;
    v24 = v0;
    v19 = v8;
    if (v9)
    {
      v20 = v9;
    }

    else
    {
      v8 = 7104878;
      v20 = 0xE300000000000000;
    }

    v21 = sub_26974F520(v8, v20, &v26);

    *(v17 + 4) = v21;
    v8 = v19;
    _os_log_impl(&dword_269684000, v14, v15, "AccountProvider.getSpeakingUserDSID() returned:%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x26D647170](v18, -1, -1);
    MEMORY[0x26D647170](v17, -1, -1);

    (*(v1 + 8))(v3, v24);
  }

  else
  {

    (*(v1 + 8))(v3, v0);
  }

  return v8;
}

uint64_t sub_2697AD4D4(void *a1)
{
  v2 = [a1 ams_altDSID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_269854A94();

  return v3;
}

id sub_2697AD554(uint64_t a1)
{
  v1 = sub_2698548D4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedAVSystemController];
  if (result)
  {
    v6 = result;

    sub_2697F1EE0(v7);
    v8 = sub_269854E34();

    v9 = sub_269854A64();
    v10 = [v6 allowAppsToInitiatePlayback:v8 clientType:v9 isTemporary:1];

    if (v10)
    {
      if (qword_2803226E0 != -1)
      {
        swift_once();
      }

      v11 = __swift_project_value_buffer(v1, qword_28033D910);
      (*(v2 + 16))(v4, v11, v1);
      v12 = sub_2698548B4();
      v13 = sub_269854F24();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 67109120;
        *(v14 + 4) = v10;
        _os_log_impl(&dword_269684000, v12, v13, "AVAllowBackgroundPlayback.allowAppsToInitiateBackgroundPlayback() failed to allow app to initiate in background with error %d", v14, 8u);
        MEMORY[0x26D647170](v14, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
    }

    return (v10 == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2697AD808(SEL *a1)
{
  v3 = [objc_opt_self() appInfoWithApplicationRecord_];
  if (!v3)
  {
    return MEMORY[0x277D84FA0];
  }

  v4 = v3;
  v5 = [v3 *a1];

  v6 = sub_269854E44();
  return v6;
}

id sub_2697AD89C()
{
  v1 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v1, qword_281571B38);
  v35 = *(v3 + 16);
  v36 = v10;
  v35(v9);
  v11 = v0;
  v12 = sub_2698548B4();
  v13 = sub_269854F14();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v34 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v33 = v7;
    v17 = v16;
    *&v40[0] = v16;
    *v15 = 136315138;
    v18 = sub_2697AE148(v11);
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v18 = 7104878;
      v20 = 0xE300000000000000;
    }

    v21 = sub_26974F520(v18, v20, v40);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_269684000, v12, v13, "supportsBackgroundPlayback checking for %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v7 = v33;
    OUTLINED_FUNCTION_10();
    v3 = v34;
    OUTLINED_FUNCTION_10();
  }

  v22 = *(v3 + 8);
  v22(v9, v1);
  v23 = [v11 infoDictionary];
  v24 = sub_269854A64();
  sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
  v25 = [v23 objectForKey:v24 ofClass:swift_getObjCClassFromMetadata()];

  if (v25)
  {
    sub_269855154();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40[0] = v38;
  v40[1] = v39;
  if (*(&v39 + 1))
  {
    if (swift_dynamicCast())
    {
      v26 = v37;
      v27 = [v37 BOOLValue];

      return v27;
    }
  }

  else
  {
    sub_2696D3BE8(v40);
  }

  (v35)(v7, v36, v1);
  v28 = sub_2698548B4();
  v29 = sub_269854F14();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_269684000, v28, v29, "supportsBackgroundPlayback didn't find the necessary plist key", v30, 2u);
    OUTLINED_FUNCTION_10();
  }

  v22(v7, v1);
  return 0;
}

id sub_2697ADC80()
{
  v1 = [objc_opt_self() appInfoWithApplicationRecord_];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 supportsMultiwindow];

  return v3;
}

uint64_t sub_2697ADD38()
{
  v1 = [v0 localizedName];
  v2 = sub_269854A94();

  return v2;
}

void sub_2697ADE90(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v13 = sub_2697B68FC(a1, a2, 0);
  if (v13)
  {
    v21 = v13;
    if ([v13 appProtectionHidden])
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      v19 = v21;
    }

    else
    {
      *(a3 + 24) = sub_26969329C(0, &qword_2815718D0, 0x277CC1E70);
      *(a3 + 32) = &off_287A413D0;
      *a3 = v21;
    }
  }

  else
  {
    if (qword_2803226E0 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v6, qword_28033D910);
    (*(v8 + 16))(v11, v14, v6);

    v15 = sub_2698548B4();
    v16 = sub_269854F24();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_26974F520(a1, a2, &v22);
      _os_log_impl(&dword_269684000, v15, v16, "Error creating LSApplicationRecord: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    (*(v8 + 8))(v11, v6);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

uint64_t sub_2697AE148(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_269854A94();

  return v3;
}

id sub_2697AE1AC(uint64_t a1, unint64_t a2)
{
  v5 = sub_2698548D4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v39 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_2697ADE90(a1, a2, v44);
  if (!v44[3])
  {
    sub_2697AE76C(v44);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242C0, &qword_26985F300);
  sub_2697AE7D4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_280322700);
    }

    __swift_project_value_buffer(v5, qword_281571B38);
    OUTLINED_FUNCTION_1_35();
    v27(v9);

    v28 = sub_2698548B4();
    v29 = sub_269854F24();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_26974F520(a1, a2, v44);
      _os_log_impl(&dword_269684000, v28, v29, "CarPlaySupportProvider.hasCarPlaySupport ApplicationRecord for %s not found.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    (*(v6 + 8))(v9, v5);
    return 0;
  }

  v15 = v43;
  v16 = [objc_opt_self() declarationForAppRecord_];
  if (!v16)
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_280322700);
    }

    __swift_project_value_buffer(v5, qword_281571B38);
    OUTLINED_FUNCTION_1_35();
    v33(v12);

    v34 = sub_2698548B4();
    v35 = sub_269854F04();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = v15;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v44[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_26974F520(a1, a2, v44);
      _os_log_impl(&dword_269684000, v34, v35, "CarPlaySupportProvider.hasCarPlaySupport unable to get CarPlayAppDeclaration for %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    else
    {
    }

    (*(v6 + 8))(v12, v5);
    return 0;
  }

  v17 = v16;
  v41 = a1;
  v18 = [objc_allocWithZone(MEMORY[0x277CF8A28]) init];
  [v18 setGeoSupported_];
  v42 = v18;
  v19 = [v18 effectivePolicyForAppDeclaration_];
  v20 = [v19 isCarPlaySupported];

  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  __swift_project_value_buffer(v5, qword_281571B38);
  OUTLINED_FUNCTION_1_35();
  v21(v14);

  v22 = sub_2698548B4();
  v23 = sub_269854F14();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v40 = v15;
    v26 = v25;
    v44[0] = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_26974F520(v41, a2, v44);
    *(v24 + 12) = 1024;
    *(v24 + 14) = v20;
    _os_log_impl(&dword_269684000, v22, v23, "CarPlaySupportProvider support for %s = %{BOOL}d", v24, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  (*(v6 + 8))(v14, v5);
  return v20;
}

uint64_t sub_2697AE76C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803263B0, &unk_26985D0B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2697AE7D4()
{
  result = qword_2815718D0;
  if (!qword_2815718D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2815718D0);
  }

  return result;
}

uint64_t sub_2697AE828()
{
  sub_2698538C4();
  type metadata accessor for CarSessionProvider();
  v0 = swift_allocObject();
  v1 = v11;
  v2 = v12;
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  (*(v7 + 16))(v5 - v4);
  v8 = sub_2697B1354(v6, v0, v1, v2);
  result = __swift_destroy_boxed_opaque_existential_0(v10);
  qword_28033D888 = v8;
  return result;
}

uint64_t sub_2697AE928()
{
  v7 = sub_269854F94();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_269854F74();
  MEMORY[0x28223BE20](v3);
  v4 = sub_269854994();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_2696ADFE4();
  sub_269854974();
  v8 = MEMORY[0x277D84F90];
  sub_2697B1758(&qword_2815718E8, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324D40, &unk_269862100);
  sub_269693204(&qword_281571900, &unk_280324D40, &unk_269862100, MEMORY[0x277D83970]);
  sub_269855174();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_269854FB4();
  qword_280324CA0 = result;
  return result;
}

uint64_t sub_2697AEB90()
{
  OUTLINED_FUNCTION_2_7();
  v1[2] = v0;
  v2 = sub_2698548D4();
  OUTLINED_FUNCTION_9_26(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_28();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2697AEC44()
{
  OUTLINED_FUNCTION_34();
  if ((OUTLINED_FUNCTION_22_13() & 1) == 0)
  {
    if (qword_2803226E8 != -1)
    {
      OUTLINED_FUNCTION_0_30(&qword_2803226E8);
    }

    __swift_project_value_buffer(*(v0 + 24), qword_28033D928);
    v4 = OUTLINED_FUNCTION_2_8();
    v5(v4);
    v6 = sub_2698548B4();
    v7 = sub_269854F24();
    if (OUTLINED_FUNCTION_55_2(v7))
    {
      v8 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_64_1(v8);
      OUTLINED_FUNCTION_7_31(&dword_269684000, v9, v10, "CarSessionProvider.getVideoPlaybackSupported N/A (not in CarPlay mode)");
      OUTLINED_FUNCTION_31_6();
    }

    v11 = OUTLINED_FUNCTION_7_21();
    v12(v11);

    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_27_12();

    __asm { BRAA            X2, X16 }
  }

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_17_16(v1);
  OUTLINED_FUNCTION_27_12();

  return sub_2697AF858();
}

uint64_t sub_2697AEDB8()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;
  *(v6 + 64) = v5;

  v7 = OUTLINED_FUNCTION_2_28();

  return MEMORY[0x2822009F8](v7);
}

void sub_2697AEEB4()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = [*(v0 + 64) configuration];
    [v2 videoPlaybackSupported];
  }

  else
  {
    if (qword_2803226E8 != -1)
    {
      OUTLINED_FUNCTION_0_30(&qword_2803226E8);
    }

    __swift_project_value_buffer(*(v0 + 24), qword_28033D928);
    v3 = OUTLINED_FUNCTION_2_8();
    v4(v3);
    v5 = sub_2698548B4();
    v6 = sub_269854F24();
    if (OUTLINED_FUNCTION_55_2(v6))
    {
      v7 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_64_1(v7);
      OUTLINED_FUNCTION_7_31(&dword_269684000, v8, v9, "CarSessionProvider.getVideoPlaybackSupported deviceState is CarPlay, but CARSession config is nil");
      OUTLINED_FUNCTION_31_6();
    }

    v10 = OUTLINED_FUNCTION_7_21();
    v11(v10);
  }

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_27_12();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2697AF000()
{
  OUTLINED_FUNCTION_2_7();
  v1[2] = v0;
  v2 = sub_2698548D4();
  OUTLINED_FUNCTION_9_26(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_28();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2697AF0B4()
{
  OUTLINED_FUNCTION_34();
  if ((OUTLINED_FUNCTION_22_13() & 1) == 0)
  {
    if (qword_2803226E8 != -1)
    {
      OUTLINED_FUNCTION_0_30(&qword_2803226E8);
    }

    __swift_project_value_buffer(*(v0 + 24), qword_28033D928);
    v4 = OUTLINED_FUNCTION_2_8();
    v5(v4);
    v6 = sub_2698548B4();
    v7 = sub_269854F24();
    if (OUTLINED_FUNCTION_55_2(v7))
    {
      v8 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_64_1(v8);
      OUTLINED_FUNCTION_7_31(&dword_269684000, v9, v10, "CarSessionProvider.getVideoPlaybackAvailable N/A (not in CarPlay mode)");
      OUTLINED_FUNCTION_31_6();
    }

    v11 = OUTLINED_FUNCTION_7_21();
    v12(v11);

    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_27_12();

    __asm { BRAA            X2, X16 }
  }

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_17_16(v1);
  OUTLINED_FUNCTION_27_12();

  return sub_2697AF858();
}

uint64_t sub_2697AF228()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;
  *(v6 + 64) = v5;

  v7 = OUTLINED_FUNCTION_2_28();

  return MEMORY[0x2822009F8](v7);
}

void sub_2697AF324()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = [*(v0 + 64) videoPlaybackAvailable];
    if (v2)
    {
      v3 = v2;
      [v2 BOOLValue];
    }

    else
    {
    }
  }

  else
  {
    if (qword_2803226E8 != -1)
    {
      OUTLINED_FUNCTION_0_30(&qword_2803226E8);
    }

    __swift_project_value_buffer(*(v0 + 24), qword_28033D928);
    v4 = OUTLINED_FUNCTION_2_8();
    v5(v4);
    v6 = sub_2698548B4();
    v7 = sub_269854F24();
    if (OUTLINED_FUNCTION_55_2(v7))
    {
      v8 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_64_1(v8);
      OUTLINED_FUNCTION_7_31(&dword_269684000, v9, v10, "CarSessionProvider.getVideoPlaybackAvailable deviceState is CarPlay, but CARSession config is nil");
      OUTLINED_FUNCTION_31_6();
    }

    v11 = OUTLINED_FUNCTION_7_21();
    v12(v11);
  }

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_27_12();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2697AF47C(void *a1)
{
  v2 = v1;
  v4 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30(&qword_2803226E8);
  }

  v11 = __swift_project_value_buffer(v4, qword_28033D928);
  (*(v6 + 16))(v10, v11, v4);
  v12 = a1;
  v13 = sub_2698548B4();
  v14 = sub_269854F04();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_269684000, v13, v14, "CarSessionProvider sessionDidConnect %@", v15, 0xCu);
    sub_269698048(v16, &qword_280324D50, &qword_26985D530);
    MEMORY[0x26D647170](v16, -1, -1);
    MEMORY[0x26D647170](v15, -1, -1);
  }

  result = (*(v6 + 8))(v10, v4);
  *(v2 + 160) = 1;
  return result;
}

uint64_t sub_2697AF6AC()
{
  v2 = v0;
  v3 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30(&qword_2803226E8);
  }

  v10 = __swift_project_value_buffer(v3, qword_28033D928);
  (*(v5 + 16))(v9, v10, v3);
  v11 = sub_2698548B4();
  v12 = sub_269854F04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_64_1(v13);
    _os_log_impl(&dword_269684000, v11, v12, "CarSessionProvider sessionDidDisconnect", v1, 2u);
    OUTLINED_FUNCTION_31_6();
  }

  result = (*(v5 + 8))(v9, v3);
  *(v2 + 160) = 0;
  return result;
}

uint64_t sub_2697AF858()
{
  OUTLINED_FUNCTION_2_7();
  v1[2] = v0;
  v2 = sub_2698548D4();
  OUTLINED_FUNCTION_9_26(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_28();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2697AF918()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[2];
  if (*(v1 + 160))
  {
    v2 = [*(v1 + 152) currentSession];

    OUTLINED_FUNCTION_28_2();

    return v3(v2);
  }

  else
  {
    if (qword_2803226E8 != -1)
    {
      OUTLINED_FUNCTION_0_30(&qword_2803226E8);
    }

    v5 = v0[7];
    v6 = v0[3];
    v7 = v0[4];
    v8 = __swift_project_value_buffer(v6, qword_28033D928);
    v0[8] = v8;
    v9 = *(v7 + 16);
    v0[9] = v9;
    v0[10] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v5, v8, v6);
    v10 = sub_2698548B4();
    v11 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v11))
    {
      v12 = OUTLINED_FUNCTION_16_2();
      *v12 = 0;
      _os_log_impl(&dword_269684000, v10, v6, "CarSessionProvider.getVideoPlaybackAvailable deviceState is CarPlay but never received session connection event, waiting for session init", v12, 2u);
      MEMORY[0x26D647170](v12, -1, -1);
    }

    v13 = v0[7];
    v14 = v0[3];
    v15 = v0[4];

    v16 = *(v15 + 8);
    v0[11] = v16;
    v16(v13, v14);
    v17 = swift_task_alloc();
    v0[12] = v17;
    *v17 = v0;
    OUTLINED_FUNCTION_17_16(v17);

    return sub_2697AFD6C();
  }
}

uint64_t sub_2697AFB00()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;
  *(v6 + 104) = v5;

  v7 = OUTLINED_FUNCTION_2_28();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2697AFBFC()
{
  OUTLINED_FUNCTION_34();
  v3 = *(v1 + 72);
  v4 = *(v1 + 64);
  v5 = *(v1 + 24);
  if (*(v1 + 104) == 1)
  {
    v6 = (v1 + 48);
    v3(*(v1 + 48), v4, v5);
    v7 = sub_2698548B4();
    v8 = sub_269854F04();
    if (OUTLINED_FUNCTION_19_5(v8))
    {
      v9 = "CarSessionProvider.getVideoPlaybackAvailable successfully init'd CARSession within timeout";
LABEL_6:
      v11 = *v6;
      v12 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_64_1(v12);
      _os_log_impl(&dword_269684000, v7, v0, v9, v2, 2u);
      OUTLINED_FUNCTION_31_6();
      goto LABEL_8;
    }
  }

  else
  {
    v6 = (v1 + 40);
    v3(*(v1 + 40), v4, v5);
    v7 = sub_2698548B4();
    v10 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v10))
    {
      v9 = "CarSessionProvider.getVideoPlaybackAvailable timed or error'd out waiting for CARSession init; CARSessionStatus may report incorrect state";
      goto LABEL_6;
    }
  }

  v11 = *v6;
LABEL_8:
  v13 = *(v1 + 88);
  v14 = *(v1 + 24);

  v13(v11, v14);
  v15 = [*(*(v1 + 16) + 152) currentSession];

  OUTLINED_FUNCTION_28_2();

  return v16(v15);
}

uint64_t sub_2697AFD6C()
{
  OUTLINED_FUNCTION_2_7();
  *(v1 + 16) = v0;
  *(v1 + 24) = swift_getObjectType();
  v2 = OUTLINED_FUNCTION_2_28();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2697AFDD0()
{
  OUTLINED_FUNCTION_8_5();
  v2 = sub_2697B1758(&qword_280324D10, v1, type metadata accessor for CarSessionProvider, &unk_269862068);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  v6 = *(v0 + 16);
  *(v3 + 16) = v6;
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_2697AFEFC;

  return MEMORY[0x282200600](v0 + 48, &type metadata for CarSessionProvider.CarSessionInitResult, &type metadata for CarSessionProvider.CarSessionInitResult, v6, v2, &unk_2698620A8, v3, &type metadata for CarSessionProvider.CarSessionInitResult);
}

uint64_t sub_2697AFEFC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_2697B0018);
}

uint64_t sub_2697B003C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D18, &unk_2698620B0);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697B0148);
}

uint64_t sub_2697B0148()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[3];
  sub_269854DB4();
  OUTLINED_FUNCTION_25_12();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v5[5] = v2;
  sub_2697B0C50(v1, &unk_2698620C8, v5);
  sub_269698048(v1, &qword_280324D20, &qword_269860000);
  OUTLINED_FUNCTION_25_12();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  sub_2697B0C50(v1, &unk_2698620D8, v6);
  sub_269698048(v1, &qword_280324D20, &qword_269860000);
  v0[10] = *v3;
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_27_12();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2697B02A0()
{
  OUTLINED_FUNCTION_2_7();
  sub_269854D64();
  v1 = sub_269693204(&qword_280324D28, &qword_280324D18, &unk_2698620B0, MEMORY[0x277D856C0]);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_2697B0388;
  v3 = *(v0 + 48);

  return MEMORY[0x282200308](v0 + 96, v3, v1);
}

uint64_t sub_2697B0388()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_13();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;

  if (v0)
  {
    v8 = v3[7];
    v7 = v3[8];
    v9 = v3[6];

    (*(v8 + 8))(v7, v9);
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2697B04B0()
{
  OUTLINED_FUNCTION_2_7();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  *(v0 + 97) = *(v0 + 96);
  (*(v2 + 8))(v1, v3);
  v4 = OUTLINED_FUNCTION_2_28();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2697B0528()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 97);
  v2 = *(v0 + 16);
  sub_269854D74();
  if (v1 == 3)
  {
    v3 = 2;
  }

  else
  {
    v3 = v1;
  }

  *v2 = v3;

  OUTLINED_FUNCTION_7_7();

  return v4();
}

uint64_t sub_2697B05BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2697B05E0);
}

uint64_t sub_2697B05E0()
{
  OUTLINED_FUNCTION_2_7();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_2697B06C8;
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822007B8](v3, v4, v5, 0xD000000000000021, v6, v7, v1, v8);
}

uint64_t sub_2697B06C8()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  OUTLINED_FUNCTION_7_7();

  return v3();
}

uint64_t sub_2697B07C4(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v3 = sub_269854954();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_269854994();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324D30, &unk_2698620F0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - v11;
  if (qword_280322658 != -1)
  {
    swift_once();
  }

  v17[1] = qword_280324CA0;
  (*(v10 + 16))(v12, a1, v9);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v18;
  (*(v10 + 32))(v14 + v13, v12, v9);
  aBlock[4] = sub_2697B16D0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2696A8DD0;
  aBlock[3] = &block_descriptor_15;
  v15 = _Block_copy(aBlock);

  sub_269854974();
  v21 = MEMORY[0x277D84F90];
  sub_2697B1758(&qword_281571918, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
  sub_269693204(&qword_281571908, &unk_2803228A0, &qword_2698577D0, MEMORY[0x277D83970]);
  sub_269855174();
  MEMORY[0x26D645EA0](0, v8, v5, v15);
  _Block_release(v15);
  (*(v20 + 8))(v5, v3);
  (*(v6 + 8))(v8, v19);
}

uint64_t sub_2697B0BA8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 152);

    [v2 waitForSessionInitialization];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324D30, &unk_2698620F0);
  return sub_269854D54();
}

uint64_t sub_2697B0C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  sub_2697B12E4(a1, v19 - v9);
  v11 = sub_269854DB4();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_269698048(v10, &qword_280324D20, &qword_269860000);
  }

  else
  {
    sub_269854DA4();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v12 = sub_269854D34();
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = *v4;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = (v14 | v12);
  if (v14 | v12)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v12;
    v20[3] = v14;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v15;
  swift_task_create();
}

uint64_t sub_2697B0E30(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2697B0ECC;

  return MEMORY[0x282200480](50000000);
}

uint64_t sub_2697B0ECC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2697B0FD0()
{
  **(v0 + 16) = 0;
  OUTLINED_FUNCTION_7_7();
  return v1();
}

void sub_2697B0FF8()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_2697B1048()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2697B1078()
{
  sub_2697B1048();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2697B10F0()
{
  OUTLINED_FUNCTION_8_5();
  v2 = v1;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_10_20(v7);
  *v8 = v9;
  v8[1] = sub_2696DAF80;

  return sub_2697B003C(v4, v2, v6, v5);
}

uint64_t sub_2697B1198()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_10_20(v4);
  *v5 = v6;
  v5[1] = sub_2696DAF80;
  v7 = OUTLINED_FUNCTION_19_12();

  return sub_2697B05BC(v7, v8, v1, v3, v2);
}

uint64_t sub_2697B1244()
{
  OUTLINED_FUNCTION_8_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_10_20(v0);
  *v1 = v2;
  v1[1] = sub_2696DA938;
  v3 = OUTLINED_FUNCTION_19_12();

  return sub_2697B0E30(v3);
}

uint64_t sub_2697B12E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id *sub_2697B1354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  swift_defaultActor_initialize();
  *(a2 + 160) = 0;
  sub_2696A73F8(v11, a2 + 112);
  *(a2 + 152) = [objc_allocWithZone(MEMORY[0x277CF89F8]) init];
  v10.receiver = a2;
  v10.super_class = type metadata accessor for CarSessionProvider();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  [v8[19] addSessionObserver_];
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v8;
}

uint64_t sub_2697B1434(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2697B1528;

  return v5(v2 + 32);
}

uint64_t sub_2697B1528()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_7_7();

  return v8();
}

uint64_t sub_2697B1624()
{
  OUTLINED_FUNCTION_8_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_10_20(v0);
  *v1 = v2;
  v1[1] = sub_2696DA938;
  v3 = OUTLINED_FUNCTION_19_12();

  return v4(v3);
}

uint64_t sub_2697B16D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324D30, &unk_2698620F0);
  v1 = *(v0 + 16);

  return sub_2697B0BA8(v1);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2697B1758(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

_BYTE *storeEnumTagSinglePayload for CarSessionProvider.CarSessionInitResult(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2697B1880()
{
  result = qword_280324D58;
  if (!qword_280324D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324D58);
  }

  return result;
}

void OUTLINED_FUNCTION_7_31(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_22_13()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 112), *(*(v0 + 16) + 136));

  return sub_269852D04();
}

uint64_t OUTLINED_FUNCTION_25_12()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

void sub_2697B19D0()
{
  v0 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_27();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  OUTLINED_FUNCTION_33_0(v0, qword_281571B38);
  v2 = OUTLINED_FUNCTION_148();
  v3(v2);
  v4 = sub_2698548B4();
  v5 = sub_269854F14();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_16_2();
    *v6 = 0;
    _os_log_impl(&dword_269684000, v4, v5, "sending com.apple.siri.video.pluginWarmup", v6, 2u);
    OUTLINED_FUNCTION_10();
  }

  v7 = OUTLINED_FUNCTION_7_16();
  v8(v7);
  OUTLINED_FUNCTION_8_1();
  v9 = sub_269854A64();
  aBlock[4] = sub_2697B3B38;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_0_42();
  aBlock[2] = v10;
  aBlock[3] = &block_descriptor_78;
  v11 = _Block_copy(aBlock);
  AnalyticsSendEventLazy();
  _Block_release(v11);
}

void sub_2697B1BA4()
{
  OUTLINED_FUNCTION_19_1();
  v4 = OUTLINED_FUNCTION_21_15();
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_27();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  OUTLINED_FUNCTION_33_0(v4, qword_281571B38);
  v8 = OUTLINED_FUNCTION_148();
  v9(v8);
  v10 = sub_2698548B4();
  v11 = sub_269854F14();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_30_12();
    OUTLINED_FUNCTION_25_13(v12, 3.8521e-34);
    OUTLINED_FUNCTION_24_13();
    _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
    OUTLINED_FUNCTION_10();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_8_1();
  v18 = sub_269854A64();
  OUTLINED_FUNCTION_51_4();
  v19 = swift_allocObject();
  v19[2] = v0;
  v19[3] = v3;
  v19[4] = v2;
  OUTLINED_FUNCTION_3_35(v19);
  v22[1] = 1107296256;
  OUTLINED_FUNCTION_0_42();
  v22[2] = v20;
  v22[3] = &block_descriptor_39;
  v21 = _Block_copy(v22);

  OUTLINED_FUNCTION_25_2();
  AnalyticsSendEventLazy();
  _Block_release(v21);

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2697B1D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D60, &unk_269862218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26985A2C0;
  *(inited + 32) = 0x65636E6174736E69;
  *(inited + 40) = 0xE800000000000000;
  sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
  *(inited + 48) = sub_269855044();
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x800000026987FA40;
  v7 = a1;

  sub_2697B4758(&v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
  sub_2697B47C4();
  sub_269854A44();

  v5 = sub_269854A64();

  *(inited + 72) = v5;
  *(inited + 80) = 0x6F70736552737475;
  *(inited + 88) = 0xEF65646F4365736ELL;
  *(inited + 96) = sub_269854E84();
  *(inited + 104) = 0x6F70736552737475;
  *(inited + 112) = 0xEF656D695465736ELL;
  *(inited + 120) = sub_269855654();
  sub_26969329C(0, &qword_2815718B8, 0x277D82BB8);
  return sub_269854A04();
}

void sub_2697B1F68()
{
  OUTLINED_FUNCTION_19_1();
  v4 = OUTLINED_FUNCTION_21_15();
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_27();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  OUTLINED_FUNCTION_33_0(v4, qword_281571B38);
  v8 = OUTLINED_FUNCTION_148();
  v9(v8);
  v10 = sub_2698548B4();
  v11 = sub_269854F14();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = OUTLINED_FUNCTION_25_13(v12, 3.8522e-34);
    *(v13 + 22) = v14;
    *(v13 + 24) = v0;
    OUTLINED_FUNCTION_24_13();
    _os_log_impl(v15, v16, v17, v18, v19, 0x20u);
    OUTLINED_FUNCTION_10();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_8_1();
  v20 = sub_269854A64();
  OUTLINED_FUNCTION_51_4();
  v21 = swift_allocObject();
  v21[2] = v3;
  v21[3] = v2;
  v21[4] = v0;
  OUTLINED_FUNCTION_3_35(v21);
  v24[1] = 1107296256;
  OUTLINED_FUNCTION_0_42();
  v24[2] = v22;
  v24[3] = &block_descriptor_90;
  v23 = _Block_copy(v24);

  OUTLINED_FUNCTION_7_16();
  AnalyticsSendEventLazy();
  _Block_release(v23);

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2697B214C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D60, &unk_269862218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26985A2C0;
  *(inited + 32) = 0x65636E6174736E69;
  *(inited + 40) = 0xE800000000000000;
  sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
  *(inited + 48) = sub_269855044();
  strcpy((inited + 56), "resultsCount");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = sub_269854E84();
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x800000026987FCC0;
  *(inited + 96) = sub_269854E84();
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x800000026987F9D0;
  *(inited + 120) = sub_269855654();
  sub_26969329C(0, &qword_2815718B8, 0x277D82BB8);
  return sub_269854A04();
}

void sub_2697B22A4()
{
  OUTLINED_FUNCTION_19_1();
  v4 = OUTLINED_FUNCTION_21_15();
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_27();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  OUTLINED_FUNCTION_33_0(v4, qword_281571B38);
  v8 = OUTLINED_FUNCTION_148();
  v9(v8);

  v10 = sub_2698548B4();
  v11 = sub_269854F14();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_30_12();
    v13 = swift_slowAlloc();
    v23[0] = v13;
    *v12 = 134218242;
    *(v12 + 4) = v3;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_26974F520(v2, v0, v23);
    OUTLINED_FUNCTION_24_13();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_8_1();
  v19 = sub_269854A64();
  OUTLINED_FUNCTION_51_4();
  v20 = swift_allocObject();
  v20[2] = v3;
  v20[3] = v2;
  v20[4] = v0;
  OUTLINED_FUNCTION_3_35(v20);
  v23[1] = 1107296256;
  OUTLINED_FUNCTION_0_42();
  v23[2] = v21;
  v23[3] = &block_descriptor_45;
  v22 = _Block_copy(v23);

  OUTLINED_FUNCTION_25_2();
  AnalyticsSendEventLazy();
  _Block_release(v22);

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2697B24D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D60, &unk_269862218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26985C7B0;
  *(inited + 32) = 0x65636E6174736E69;
  *(inited + 40) = 0xE800000000000000;
  sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
  *(inited + 48) = sub_269855044();
  *(inited + 56) = 1953460339;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = sub_269854E84();
  strcpy((inited + 80), "intentHandler");
  *(inited + 94) = -4864;
  *(inited + 96) = sub_269854A64();
  sub_26969329C(0, &qword_2815718B8, 0x277D82BB8);
  return sub_269854A04();
}

void sub_2697B2608(uint64_t a1)
{
  OUTLINED_FUNCTION_39_3();
  v2 = v1;
  v3 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_27();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  __swift_project_value_buffer(v3, qword_281571B38);
  v5 = OUTLINED_FUNCTION_9_27();
  v6(v5);
  v7 = sub_2698548B4();
  v8 = sub_269854F14();
  if (OUTLINED_FUNCTION_23_14(v8))
  {
    v9 = OUTLINED_FUNCTION_27_2();
    *v9 = 134217984;
    *(v9 + 4) = v2;
    OUTLINED_FUNCTION_13_19(&dword_269684000, v10, v11, "sending com.apple.siri.video.playUmcId with time %lld");
    OUTLINED_FUNCTION_10();
  }

  v12 = OUTLINED_FUNCTION_25_2();
  v13(v12);
  OUTLINED_FUNCTION_8_1();
  v14 = sub_269854A64();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  OUTLINED_FUNCTION_1_36(v15);
  v17[1] = 1107296256;
  OUTLINED_FUNCTION_0_42();
  v17[2] = v16;
  v17[3] = &block_descriptor_84;
  _Block_copy(v17);
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_7_16();
  AnalyticsSendEventLazy();
  _Block_release(v2);

  OUTLINED_FUNCTION_38_10();
}

void sub_2697B27C0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_39_3();
  v4 = OUTLINED_FUNCTION_29_12();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_27();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  __swift_project_value_buffer(v4, qword_281571B38);
  v6 = OUTLINED_FUNCTION_7_32();
  v7(v6);
  v8 = sub_2698548B4();
  v9 = sub_269854F14();
  if (OUTLINED_FUNCTION_22_14(v9))
  {
    v10 = OUTLINED_FUNCTION_30_12();
    OUTLINED_FUNCTION_8_30(v10, 3.8521e-34);
    OUTLINED_FUNCTION_15_21();
    _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
    OUTLINED_FUNCTION_16_9();
  }

  v16 = OUTLINED_FUNCTION_14_19();
  v17(v16);
  OUTLINED_FUNCTION_8_1();
  v18 = sub_269854A64();
  v19 = OUTLINED_FUNCTION_34_7(&unk_287A418D8);
  *(v19 + 16) = v3;
  *(v19 + 24) = v2;
  OUTLINED_FUNCTION_1_36(v19);
  v21[1] = 1107296256;
  OUTLINED_FUNCTION_0_42();
  v21[2] = v20;
  v21[3] = &block_descriptor_57;
  _Block_copy(v21);
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_7_16();
  AnalyticsSendEventLazy();
  _Block_release(v2);

  OUTLINED_FUNCTION_38_10();
}

void sub_2697B2964(uint64_t a1)
{
  OUTLINED_FUNCTION_39_3();
  v2 = v1;
  v3 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_27();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  __swift_project_value_buffer(v3, qword_281571B38);
  v5 = OUTLINED_FUNCTION_9_27();
  v6(v5);
  v7 = sub_2698548B4();
  v8 = sub_269854F14();
  if (OUTLINED_FUNCTION_23_14(v8))
  {
    v9 = OUTLINED_FUNCTION_27_2();
    *v9 = 134217984;
    *(v9 + 4) = v2;
    OUTLINED_FUNCTION_13_19(&dword_269684000, v10, v11, "sending com.apple.siri.video.addToWatchListUmcId with time %lld");
    OUTLINED_FUNCTION_10();
  }

  v12 = OUTLINED_FUNCTION_25_2();
  v13(v12);
  OUTLINED_FUNCTION_8_1();
  v14 = sub_269854A64();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  OUTLINED_FUNCTION_1_36(v15);
  v17[1] = 1107296256;
  OUTLINED_FUNCTION_0_42();
  v17[2] = v16;
  v17[3] = &block_descriptor_51;
  _Block_copy(v17);
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_7_16();
  AnalyticsSendEventLazy();
  _Block_release(v2);

  OUTLINED_FUNCTION_38_10();
}

uint64_t sub_2697B2B1C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D60, &unk_269862218);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_19_13(inited, xmmword_2698580D0);
  sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
  sub_269855044();
  OUTLINED_FUNCTION_19();
  inited[3].n128_u64[0] = v2;
  inited[3].n128_u64[1] = 0xD000000000000015;
  inited[4].n128_u64[0] = v3;
  inited[4].n128_u64[1] = sub_269855654();
  sub_26969329C(0, &qword_2815718B8, 0x277D82BB8);
  return sub_269854A04();
}

void sub_2697B2BF8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_39_3();
  v4 = OUTLINED_FUNCTION_29_12();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_27();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  __swift_project_value_buffer(v4, qword_281571B38);
  v6 = OUTLINED_FUNCTION_7_32();
  v7(v6);
  v8 = sub_2698548B4();
  v9 = sub_269854F14();
  if (OUTLINED_FUNCTION_22_14(v9))
  {
    v10 = OUTLINED_FUNCTION_30_12();
    OUTLINED_FUNCTION_8_30(v10, 3.8521e-34);
    OUTLINED_FUNCTION_15_21();
    _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
    OUTLINED_FUNCTION_16_9();
  }

  v16 = OUTLINED_FUNCTION_14_19();
  v17(v16);
  OUTLINED_FUNCTION_8_1();
  v18 = sub_269854A64();
  v19 = OUTLINED_FUNCTION_34_7(&unk_287A41798);
  *(v19 + 16) = v3;
  *(v19 + 24) = v2;
  OUTLINED_FUNCTION_1_36(v19);
  v21[1] = 1107296256;
  OUTLINED_FUNCTION_0_42();
  v21[2] = v20;
  v21[3] = &block_descriptor_33;
  _Block_copy(v21);
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_7_16();
  AnalyticsSendEventLazy();
  _Block_release(v2);

  OUTLINED_FUNCTION_38_10();
}

uint64_t sub_2697B2D9C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D60, &unk_269862218);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_19_13(inited, xmmword_26985C7B0);
  sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
  inited[3].n128_u64[0] = sub_269855044();
  strcpy(&inited[3].n128_i8[8], "resultsCount");
  inited[4].n128_u8[5] = 0;
  inited[4].n128_u16[3] = -5120;
  sub_269854E84();
  OUTLINED_FUNCTION_19();
  inited[4].n128_u64[1] = v3;
  inited[5].n128_u64[0] = 0xD000000000000015;
  inited[5].n128_u64[1] = v4;
  inited[6].n128_u64[0] = sub_269855654();
  sub_26969329C(0, &qword_2815718B8, 0x277D82BB8);
  return sub_269854A04();
}

void sub_2697B2EA8(uint64_t a1)
{
  OUTLINED_FUNCTION_39_3();
  v2 = v1;
  v3 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_27();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  __swift_project_value_buffer(v3, qword_281571B38);
  v5 = OUTLINED_FUNCTION_9_27();
  v6(v5);
  v7 = sub_2698548B4();
  v8 = sub_269854F14();
  if (OUTLINED_FUNCTION_23_14(v8))
  {
    v9 = OUTLINED_FUNCTION_27_2();
    *v9 = 134217984;
    *(v9 + 4) = v2;
    OUTLINED_FUNCTION_13_19(&dword_269684000, v10, v11, "sending com.apple.siri.video.removeFromWatchListUmcId with time %lld");
    OUTLINED_FUNCTION_10();
  }

  v12 = OUTLINED_FUNCTION_25_2();
  v13(v12);
  OUTLINED_FUNCTION_8_1();
  v14 = sub_269854A64();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  OUTLINED_FUNCTION_1_36(v15);
  v17[1] = 1107296256;
  OUTLINED_FUNCTION_0_42();
  v17[2] = v16;
  v17[3] = &block_descriptor_27;
  _Block_copy(v17);
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_7_16();
  AnalyticsSendEventLazy();
  _Block_release(v2);

  OUTLINED_FUNCTION_38_10();
}

void sub_2697B3060(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_39_3();
  v3 = v2;
  v5 = v4;
  v6 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_27();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  __swift_project_value_buffer(v6, qword_281571B38);
  v8 = OUTLINED_FUNCTION_7_32();
  v9(v8);
  v10 = sub_2698548B4();
  v11 = sub_269854F14();
  if (OUTLINED_FUNCTION_22_14(v11))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_15_21();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    OUTLINED_FUNCTION_16_9();
  }

  v17 = OUTLINED_FUNCTION_14_19();
  v18(v17);
  OUTLINED_FUNCTION_8_1();
  v19 = sub_269854A64();
  v20 = swift_allocObject();
  *(v20 + 16) = v5;
  *(v20 + 17) = v3;
  OUTLINED_FUNCTION_1_36(v20);
  v22[1] = 1107296256;
  OUTLINED_FUNCTION_0_42();
  v22[2] = v21;
  v22[3] = &block_descriptor_16;
  _Block_copy(v22);
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_7_16();
  AnalyticsSendEventLazy();
  _Block_release(v3);

  OUTLINED_FUNCTION_38_10();
}

uint64_t sub_2697B3214(uint64_t a1, char a2)
{
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D60, &unk_269862218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2698580D0;
  *(inited + 32) = 0x65636E6174736E69;
  *(inited + 40) = 0xE800000000000000;
  sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
  *(inited + 48) = sub_269855044();
  *(inited + 56) = 0x746E696F70646E65;
  *(inited + 64) = 0xE800000000000000;
  sub_2697D2248(v3);
  MEMORY[0x26D645A60](58, 0xE100000000000000);
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 1414745936;
    }

    else
    {
      v5 = 0x4554454C4544;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 5522759;
  }

  MEMORY[0x26D645A60](v5, v6);

  v7 = sub_269854A64();

  *(inited + 72) = v7;
  sub_26969329C(0, &qword_2815718B8, 0x277D82BB8);
  return sub_269854A04();
}

uint64_t sub_2697B3390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D60, &unk_269862218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2698621A0;
  *(inited + 32) = 0x64657463656C6573;
  *(inited + 40) = 0xEB00000000656E4FLL;
  *(inited + 48) = sub_269854D24();
  *(inited + 56) = 0x726F4E776F6C6562;
  *(inited + 64) = 0xEF64657A696C616DLL;
  *(inited + 72) = sub_269854D24();
  strcpy((inited + 80), "belowAbsolute");
  *(inited + 94) = -4864;
  *(inited + 96) = sub_269854D24();
  *(inited + 104) = 0x65646F4D64616F6CLL;
  *(inited + 112) = 0xEF64656C6961466CLL;
  *(inited + 120) = sub_269854D24();
  strcpy((inited + 128), "noAppAvailable");
  *(inited + 143) = -18;
  sub_269854D24();
  OUTLINED_FUNCTION_19();
  *(inited + 144) = v10;
  *(inited + 152) = 0xD00000000000001FLL;
  *(inited + 160) = v11;
  sub_269854D24();
  OUTLINED_FUNCTION_19();
  *(inited + 168) = v12;
  *(inited + 176) = 0xD000000000000010;
  *(inited + 184) = v13;
  *(inited + 192) = sub_269854D24();
  strcpy((inited + 200), "experimentId");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  if (a8[1])
  {

    v14 = sub_269854A64();

    OUTLINED_FUNCTION_31_11();
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 232) = 0xEC0000006449746ELL;

    v16 = sub_269854A64();
  }

  else
  {
    v17 = sub_269854A64();

    OUTLINED_FUNCTION_31_11();
    *(inited + 216) = v17;
    *(inited + 224) = v18;
    *(inited + 232) = 0xEC0000006449746ELL;
    v16 = sub_269854A64();
  }

  *(inited + 240) = v16;
  *(inited + 248) = 0x6E656D7461657274;
  *(inited + 256) = 0xEB00000000644974;
  OUTLINED_FUNCTION_25_2();
  v19 = sub_269854A64();

  *(inited + 264) = v19;
  sub_26969329C(0, &qword_2815718B8, 0x277D82BB8);
  return sub_269854A04();
}

void sub_2697B3690()
{
  OUTLINED_FUNCTION_19_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_27();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  OUTLINED_FUNCTION_33_0(v11, qword_281571B38);
  v15 = OUTLINED_FUNCTION_148();
  v16(v15);
  v17 = sub_2698548B4();
  v18 = sub_269854F14();
  if (os_log_type_enabled(v17, v18))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_33_10(&dword_269684000, v19, v20, "sending com.apple.siri.video.appSelectionPredictionAccuracy");
    OUTLINED_FUNCTION_10();
  }

  (*(v13 + 8))(v0, v11);
  OUTLINED_FUNCTION_8_1();
  v21 = sub_269854A64();
  v22 = swift_allocObject();
  v23 = v2[1];
  *(v22 + 24) = *v2;
  *(v22 + 16) = v10 & 1;
  *(v22 + 17) = v8 & 1;
  *(v22 + 18) = v6 & 1;
  *(v22 + 19) = v4 & 1;
  *(v22 + 40) = v23;
  *(v22 + 56) = v2[2];
  OUTLINED_FUNCTION_3_35(v22);
  v27[1] = 1107296256;
  OUTLINED_FUNCTION_0_42();
  v27[2] = v24;
  v27[3] = &block_descriptor_69;
  v25 = _Block_copy(v27);
  sub_2697B5228(v2, &v26);

  OUTLINED_FUNCTION_25_2();
  AnalyticsSendEventLazy();
  _Block_release(v25);

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2697B38D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D60, &unk_269862218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269860B70;
  *(inited + 32) = 0xD00000000000001FLL;
  *(inited + 40) = 0x800000026987FB80;
  *(inited + 48) = sub_269854D24();
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x800000026987FBA0;
  *(inited + 72) = sub_269854D24();
  *(inited + 80) = 0xD00000000000001CLL;
  *(inited + 88) = 0x800000026987FBC0;
  *(inited + 96) = sub_269854D24();
  *(inited + 104) = 0xD00000000000001ALL;
  *(inited + 112) = 0x800000026987FBE0;
  *(inited + 120) = sub_269854D24();
  strcpy((inited + 128), "experimentId");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  if (a5[1])
  {

    v7 = sub_269854A64();

    *(inited + 144) = v7;
    strcpy((inited + 152), "deploymentId");
    *(inited + 165) = 0;
    *(inited + 166) = -5120;

    v8 = sub_269854A64();
  }

  else
  {
    v9 = sub_269854A64();

    *(inited + 144) = v9;
    strcpy((inited + 152), "deploymentId");
    *(inited + 165) = 0;
    *(inited + 166) = -5120;
    v8 = sub_269854A64();
  }

  *(inited + 168) = v8;
  *(inited + 176) = 0x6E656D7461657274;
  *(inited + 184) = 0xEB00000000644974;
  v10 = sub_269854A64();

  *(inited + 192) = v10;
  sub_26969329C(0, &qword_2815718B8, 0x277D82BB8);
  return sub_269854A04();
}

uint64_t sub_2697B3B38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D60, &unk_269862218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  *(inited + 32) = 0x65636E6174736E69;
  *(inited + 40) = 0xE800000000000000;
  sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
  *(inited + 48) = sub_269855044();
  sub_26969329C(0, &qword_2815718B8, 0x277D82BB8);
  return sub_269854A04();
}

void sub_2697B3BFC()
{
  OUTLINED_FUNCTION_19_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_27();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  OUTLINED_FUNCTION_33_0(v11, qword_281571B38);
  v15 = OUTLINED_FUNCTION_148();
  v16(v15);
  v17 = sub_2698548B4();
  v18 = sub_269854F14();
  if (os_log_type_enabled(v17, v18))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_33_10(&dword_269684000, v19, v20, "sending com.apple.siri.video.thirdPartyIntents");
    OUTLINED_FUNCTION_10();
  }

  (*(v13 + 8))(v0, v11);
  OUTLINED_FUNCTION_8_1();
  v21 = sub_269854A64();
  v22 = swift_allocObject();
  *(v22 + 16) = v10;
  *(v22 + 24) = v8;
  *(v22 + 32) = v4;
  *(v22 + 40) = v2;
  *(v22 + 48) = v6 & 1;
  OUTLINED_FUNCTION_3_35(v22);
  v25[1] = 1107296256;
  OUTLINED_FUNCTION_0_42();
  v25[2] = v23;
  v25[3] = &block_descriptor_63;
  v24 = _Block_copy(v25);

  AnalyticsSendEventLazy();
  _Block_release(v24);

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2697B3E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D60, &unk_269862218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26985A2C0;
  *(inited + 32) = 0x65636E6174736E69;
  *(inited + 40) = 0xE800000000000000;
  sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
  *(inited + 48) = sub_269855044();
  *(inited + 56) = 0x6C646E7542707061;
  *(inited + 64) = 0xEB00000000644965;
  *(inited + 72) = sub_269854A64();
  strcpy((inited + 80), "intentHandler");
  *(inited + 94) = -4864;
  *(inited + 96) = sub_269854A64();
  *(inited + 104) = 0xD00000000000001CLL;
  *(inited + 112) = 0x800000026987FB20;
  *(inited + 120) = sub_269854D24();
  sub_26969329C(0, &qword_2815718B8, 0x277D82BB8);
  return sub_269854A04();
}

void sub_2697B3FA0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_39_3();
  v4 = OUTLINED_FUNCTION_29_12();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_27();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  __swift_project_value_buffer(v4, qword_281571B38);
  v6 = OUTLINED_FUNCTION_7_32();
  v7(v6);
  v8 = sub_2698548B4();
  v9 = sub_269854F14();
  if (OUTLINED_FUNCTION_22_14(v9))
  {
    v10 = OUTLINED_FUNCTION_30_12();
    OUTLINED_FUNCTION_8_30(v10, 3.8521e-34);
    OUTLINED_FUNCTION_15_21();
    _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
    OUTLINED_FUNCTION_16_9();
  }

  v16 = OUTLINED_FUNCTION_14_19();
  v17(v16);
  OUTLINED_FUNCTION_8_1();
  v18 = sub_269854A64();
  v19 = OUTLINED_FUNCTION_34_7(&unk_287A41AE0);
  *(v19 + 16) = v3;
  *(v19 + 24) = v2;
  OUTLINED_FUNCTION_1_36(v19);
  v21[1] = 1107296256;
  OUTLINED_FUNCTION_0_42();
  v21[2] = v20;
  v21[3] = &block_descriptor_96;
  _Block_copy(v21);
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_7_16();
  AnalyticsSendEventLazy();
  _Block_release(v2);

  OUTLINED_FUNCTION_38_10();
}

uint64_t sub_2697B4144(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D60, &unk_269862218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26985C7B0;
  *(inited + 32) = 0x65636E6174736E69;
  *(inited + 40) = 0xE800000000000000;
  sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
  *(inited + 48) = sub_269855044();
  strcpy((inited + 56), "resultsCount");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = sub_269854E84();
  *(inited + 80) = 0xD000000000000019;
  *(inited + 88) = 0x800000026987FD10;
  *(inited + 96) = sub_269855654();
  sub_26969329C(0, &qword_2815718B8, 0x277D82BB8);
  return sub_269854A04();
}

void sub_2697B426C()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v2 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_27();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  OUTLINED_FUNCTION_33_0(v2, qword_281571B38);
  v4 = OUTLINED_FUNCTION_148();
  v5(v4);
  v6 = sub_2698548B4();
  v7 = sub_269854F44();
  if (OUTLINED_FUNCTION_23_14(v7))
  {
    v8 = OUTLINED_FUNCTION_27_2();
    v9 = swift_slowAlloc();
    v20[0] = v9;
    *v8 = 136315138;
    if (v1)
    {
      v10 = 0x73736563637573;
    }

    else
    {
      v10 = 0x6572756C696166;
    }

    v11 = sub_26974F520(v10, 0xE700000000000000, v20);

    *(v8 + 4) = v11;
    OUTLINED_FUNCTION_13_19(&dword_269684000, v12, v13, "sending a com.apple.siri.video.submitToRemoteResults event with result = %s.");
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_16_9();
    OUTLINED_FUNCTION_10();
  }

  v14 = OUTLINED_FUNCTION_25_2();
  v15(v14);
  OUTLINED_FUNCTION_8_1();
  v16 = sub_269854A64();
  v17 = swift_allocObject();
  *(v17 + 16) = v1 & 1;
  OUTLINED_FUNCTION_3_35(v17);
  v20[1] = 1107296256;
  OUTLINED_FUNCTION_0_42();
  v20[2] = v18;
  v20[3] = &block_descriptor_21;
  v19 = _Block_copy(v20);

  OUTLINED_FUNCTION_7_16();
  AnalyticsSendEventLazy();
  _Block_release(v19);

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2697B4498(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D60, &unk_269862218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  *(inited + 32) = 0x746C75736572;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = sub_269854D24();
  sub_26969329C(0, &qword_2815718B8, 0x277D82BB8);
  return sub_269854A04();
}

void sub_2697B4540(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_1();
  v4 = sub_269854A64();
  v5 = OUTLINED_FUNCTION_34_7(&unk_287A419C8);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v8[4] = sub_2697B5298;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  OUTLINED_FUNCTION_0_42();
  v8[2] = v6;
  v8[3] = &block_descriptor_75;
  v7 = _Block_copy(v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

uint64_t sub_2697B461C(char a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D60, &unk_269862218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2698580D0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x800000026987FC30;
  sub_2696C75E0(a1);
  v4 = sub_269854A64();

  *(inited + 48) = v4;
  *(inited + 56) = 0x7250656369766564;
  *(inited + 64) = 0xEF7974696D69786FLL;
  sub_2698547B4();
  *(inited + 72) = sub_269854E84();
  sub_26969329C(0, &qword_2815718B8, 0x277D82BB8);
  return sub_269854A04();
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2697B4758(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2697E2400(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2697B4828(v6);
  *a1 = v2;
  return result;
}

unint64_t sub_2697B47C4()
{
  result = qword_280322880;
  if (!qword_280322880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280322878, &qword_2698587A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280322880);
  }

  return result;
}

uint64_t sub_2697B4828(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_269855534();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_269854CE4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2697B49E4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2697B491C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2697B491C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_269855584();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2697B49E4(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_269855584();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_269855584()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_269855584() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26977BE84();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_26977BE84();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_2697B5018((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_2697B4EEC(&v91, *result, a3);
LABEL_102:
}

uint64_t sub_2697B4EEC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2697E18A4(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_2697B5018((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_2697B5018(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_26968E61C(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_269855584() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_26968E61C(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_269855584() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_2697B5228(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D68, qword_269862228);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_36(uint64_t result)
{
  *(v2 - 80) = v1;
  *(v2 - 72) = result;
  *(v2 - 112) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_35(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_8_30(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v3;
  *(result + 12) = 2048;
  *(result + 14) = v2;
  return result;
}

void OUTLINED_FUNCTION_13_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

__n128 *OUTLINED_FUNCTION_19_13(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x65636E6174736E69;
  result[2].n128_u64[1] = 0xE800000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_15()
{

  return sub_2698548D4();
}

BOOL OUTLINED_FUNCTION_22_14(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_23_14(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_25_13(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v3;
  *(result + 12) = 2048;
  *(result + 14) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_11()
{
}

uint64_t OUTLINED_FUNCTION_29_12()
{

  return sub_2698548D4();
}

uint64_t OUTLINED_FUNCTION_30_12()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_33_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_34_7(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t EncryptionProvider.encodeRouteIds(_:)()
{
  OUTLINED_FUNCTION_2_7();
  v0[19] = v1;
  v2 = sub_2698548D4();
  OUTLINED_FUNCTION_4_28(v2);
  v0[21] = v3;
  v0[22] = swift_task_alloc();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2697B56C8()
{
  v23 = v0;
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  __swift_project_value_buffer(v0[20], qword_281571B38);
  v2 = OUTLINED_FUNCTION_7_33();
  v3(v2);

  v4 = sub_2698548B4();
  v5 = sub_269854F04();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[20];
  if (v6)
  {
    v10 = v0[19];
    v1 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v1 = 136315138;
    v12 = MEMORY[0x26D645BC0](v10, MEMORY[0x277D837D0]);
    v14 = sub_26974F520(v12, v13, &v22);

    *(v1 + 4) = v14;
    OUTLINED_FUNCTION_119(&dword_269684000, v15, v16, "Encoding routeIds: %s");
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_6_33();
  v17 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
  v0[23] = v17;
  v18 = sub_269854CA4();
  v0[24] = v18;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_2697B5938;
  v19 = swift_continuation_init();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D70, &qword_2698622A8);
  OUTLINED_FUNCTION_0_43(v20);
  v0[11] = 1107296256;
  v0[12] = sub_2697B5A08;
  v0[13] = &block_descriptor_17;
  v0[14] = v19;
  [v17 encodeHashedRouteUIDs:v18 completion:v7];

  return MEMORY[0x282200938](v4);
}

uint64_t sub_2697B5938()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2697B5A08(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v3 = sub_269854CB4();
  return sub_2697B5A54(v2, v3);
}

uint64_t EncryptionProvider.decodeRouteIds(_:)()
{
  OUTLINED_FUNCTION_2_7();
  v0[19] = v1;
  v2 = sub_2698548D4();
  OUTLINED_FUNCTION_4_28(v2);
  v0[21] = v3;
  v0[22] = swift_task_alloc();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2697B5B20()
{
  v23 = v0;
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  __swift_project_value_buffer(v0[20], qword_281571B38);
  v2 = OUTLINED_FUNCTION_7_33();
  v3(v2);

  v4 = sub_2698548B4();
  v5 = sub_269854F04();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[20];
  if (v6)
  {
    v10 = v0[19];
    v1 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v1 = 136315138;
    v12 = MEMORY[0x26D645BC0](v10, MEMORY[0x277D837D0]);
    v14 = sub_26974F520(v12, v13, &v22);

    *(v1 + 4) = v14;
    OUTLINED_FUNCTION_119(&dword_269684000, v15, v16, "Decoding routeIds: %s");
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_6_33();
  v17 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
  v0[23] = v17;
  v18 = sub_269854CA4();
  v0[24] = v18;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_2697B5D90;
  v19 = swift_continuation_init();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D78, &qword_2698622B8);
  OUTLINED_FUNCTION_0_43(v20);
  v0[11] = 1107296256;
  v0[12] = sub_2697B5EE0;
  v0[13] = &block_descriptor_3;
  v0[14] = v19;
  [v17 decodeHashedRouteUIDs:v18 completion:v7];

  return MEMORY[0x282200938](v4);
}

uint64_t sub_2697B5D90()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2697B5E60()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2697B5EE0(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v3 = sub_2698549E4();
  return sub_2697B5A54(v2, v3);
}

uint64_t sub_2697B5F38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2697B6094;

  return EncryptionProvider.encodeRouteIds(_:)();
}

uint64_t sub_2697B5FCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DF218;

  return EncryptionProvider.decodeRouteIds(_:)();
}

uint64_t OUTLINED_FUNCTION_0_43(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriVideoFeatureKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_2697B61E4()
{
  result = qword_280324D80;
  if (!qword_280324D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324D80);
  }

  return result;
}

const char *sub_2697B624C(char a1)
{
  result = "live_tune_in_cdtvc";
  switch(a1)
  {
    case 1:
      result = "sports_tune_in_cdtvc";
      break;
    case 2:
      result = "watchlist_on_client";
      break;
    case 3:
      result = "third_party_app_intents";
      break;
    case 4:
      result = "video_watchos_cdtvc";
      break;
    default:
      return result;
  }

  return result;
}

void sub_2697B62D0()
{
  v44[9] = *MEMORY[0x277D85DE8];
  v1 = [objc_allocWithZone(MEMORY[0x277D46FB0]) init];
  sub_2697B69D8(&unk_287A394F0, v1);
  [v1 setValues_];
  v44[0] = 0;
  v38 = [objc_opt_self() predicateMatchingProcessTypeApplication];
  v39 = v1;
  v2 = [objc_opt_self() statesForPredicate:v38 withDescriptor:v1 error:v44];
  v3 = v44[0];
  if (v2)
  {
    v4 = v2;
    sub_2697B6B78();
    v5 = sub_269854CB4();
    v6 = v3;

    v7 = 0;
  }

  else
  {
    v8 = v44[0];
    v9 = sub_269851BD4();

    swift_willThrow();
    v7 = 0;
    v5 = MEMORY[0x277D84F90];
  }

  v43[2] = v5;
  v43[3] = sub_2697B67A0;
  v43[4] = 0;
  v43[5] = sub_2697B6B3C;
  v43[6] = 0;
  v43[7] = sub_2697B6B48;
  v43[8] = 0;
  v10 = sub_26975004C();
  v11 = 0;
  v12 = v5 & 0xC000000000000001;
  v13 = v5 & 0xFFFFFFFFFFFFFF8;
  v40 = v5;
  v14 = v5 + 32;
  v15 = &selRef_invalidate;
  v41 = v14;
  while (1)
  {
    if (v11 == v10)
    {
      v11 = v10;
      goto LABEL_37;
    }

    if (v12)
    {
      v16 = MEMORY[0x26D646120](v11, v40);
    }

    else
    {
      if (v11 >= *(v13 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v16 = *(v14 + 8 * v11);
    }

    v0 = v16;
    if ([v16 v15[117]] == 4)
    {
      v17 = sub_2697B6A44(v0);
      if (v17)
      {
        break;
      }
    }

LABEL_24:
    if (__OFADD__(v11++, 1))
    {
      goto LABEL_43;
    }
  }

  v18 = v17;
  if (!*(v17 + 16))
  {

    goto LABEL_24;
  }

  v42 = v7;
  sub_269855674();
  sub_269854B34();
  v19 = sub_2698556C4();
  v20 = ~(-1 << *(v18 + 32));
  do
  {
    v21 = v19 & v20;
    if (((*(v18 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
    {

      v14 = v41;
      v7 = v42;
LABEL_34:
      v15 = &selRef_invalidate;
      goto LABEL_24;
    }

    v22 = (*(v18 + 48) + 16 * v21);
    if (*v22 == 0xD00000000000001FLL && 0x800000026987A200 == v22[1])
    {
      break;
    }

    v24 = sub_269855584();
    v19 = v21 + 1;
  }

  while ((v24 & 1) == 0);

  v25 = [v0 process];
  v15 = &selRef_invalidate;
  if (!v25)
  {

    v14 = v41;
    v7 = v42;
    goto LABEL_24;
  }

  v26 = v25;
  v27 = [v25 bundle];

  v7 = v42;
  if (!v27 || (v28 = sub_2697B6AA4(v27), !v29))
  {

    v14 = v41;
    goto LABEL_24;
  }

  v30 = v28;
  v31 = v29;
  objc_allocWithZone(MEMORY[0x277CC1E70]);

  v32 = sub_2697B68FC(v30, v31, 0);
  v34 = v32;
  if (!v32 || (v35 = [v32 developerType], v34, v35 != 3))
  {

    v14 = v41;
    goto LABEL_34;
  }

LABEL_44:

LABEL_37:
  if (v11 == sub_2697B6B14() || ((sub_269750050(), v12) ? (v36 = MEMORY[0x26D646120](v11, v40)) : (v36 = *(v41 + 8 * v11)), v37 = v36, v43[0] = v36, sub_2697B67A0(v43, v44), v37, v44[1]))
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_2697B67A0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if ([*a1 taskState] != 4)
  {
    goto LABEL_9;
  }

  v4 = sub_2697B6A44(v3);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = sub_269807CB4(0xD00000000000001FLL, 0x800000026987A200, v4);

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [v3 process];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 bundle];

  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = sub_2697B6AA4(v8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v9;
  v12 = v10;
  v13 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v14 = sub_2697B68FC(v11, v12, 0);
  v15 = v14;
  if (!v14 || (v16 = [v14 developerType], v15, v16 != 3))
  {

LABEL_9:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  *a2 = v11;
  a2[1] = v12;
}

id sub_2697B68FC(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_269854A64();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_269851BD4();

    swift_willThrow();
  }

  return v6;
}

void sub_2697B69D8(uint64_t a1, void *a2)
{
  v3 = sub_269854CA4();

  [a2 setEndowmentNamespaces_];
}

uint64_t sub_2697B6A44(void *a1)
{
  v1 = [a1 endowmentNamespaces];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_269854E44();

  return v3;
}

uint64_t sub_2697B6AA4(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_269854A94();

  return v3;
}

uint64_t sub_2697B6B14()
{
  if (*v0 >> 62)
  {
    return sub_269855324();
  }

  else
  {
    return *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_2697B6B48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26981A154(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_2697B6B78()
{
  result = qword_280324D88;
  if (!qword_280324D88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280324D88);
  }

  return result;
}

uint64_t sub_2697B6BCC()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];
  v2 = v1;
  if (!v1)
  {
    v3 = [v0 ams_localiTunesAccount];
    if (!v3)
    {
LABEL_7:

      return 0;
    }

    v2 = v3;
  }

  v4 = v1;
  v5 = [v2 ams_storefront];

  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = sub_269854A94();

  return v6;
}

uint64_t sub_2697B6CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = sub_2698548D4();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697B6DA8);
}

uint64_t sub_2697B6DA8()
{
  v1 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  v0[25] = v1;
  if (v1)
  {
    v2 = v1;
    sub_2697B74AC();

    v4 = sub_2697B72E0(v3);
    v0[26] = v4;
    v5 = sub_269854A64();
    v0[27] = v5;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_2697B70BC;
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D98, qword_2698625F0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2697B736C;
    v0[13] = &block_descriptor_18;
    v0[14] = v6;
    [v2 openApplication:v5 withOptions:v4 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v8 = v0[23];
    v7 = v0[24];
    v9 = v0[22];
    v10 = __swift_project_value_buffer(v9, qword_281571B38);
    (*(v8 + 16))(v7, v10, v9);
    v11 = sub_2698548B4();
    v12 = sub_269854F24();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      MEMORY[0x26D647170](v13, -1, -1);
    }

    v15 = v0[23];
    v14 = v0[24];
    v16 = v0[22];

    (*(v15 + 8))(v14, v16);
    sub_2696BAE9C();
    swift_allocError();
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *v17 = 15;
    *(v17 + 24) = 3;
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_2697B70BC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_2697B7254;
  }

  else
  {
    v2 = sub_2697B71CC;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2697B71CC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  v3 = *(v0 + 144);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_2697B7254(uint64_t a1)
{
  v2 = v1[27];
  v4 = v1[25];
  v3 = v1[26];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

id sub_2697B72E0(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_2698549D4();
  }

  else
  {
    v1 = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() optionsWithDictionary_];

  return v2;
}

uint64_t *sub_2697B736C(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_2697B73FC(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_2697B7468(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2697B73FC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

unint64_t sub_2697B74AC()
{
  result = qword_280324D90;
  if (!qword_280324D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280324D90);
  }

  return result;
}

uint64_t sub_2697B752C(void *a1, char a2)
{
  sub_2698548D4();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2698542C4();
  OUTLINED_FUNCTION_8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2697B788C();
  v11 = a1;
  v12 = sub_2697B78D0(v11, 0);
  [v12 _setDonatedBySiri_];
  sub_269854EC4();
  *(swift_allocObject() + 16) = v11;
  v13 = v11;
  sub_2698542B4();

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_2697B788C()
{
  result = qword_280324DA0;
  if (!qword_280324DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280324DA0);
  }

  return result;
}

id sub_2697B78D0(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:a1 response:a2];

  return v4;
}

uint64_t sub_2697B792C(void *a1, char a2, void *a3)
{
  v6 = sub_2698548D4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  if (a2)
  {
    if (qword_2803226E8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v6, qword_28033D928);
    (*(v7 + 16))(v10, v13, v6);
    v14 = a3;
    sub_2697B7D04(a1, 1);
    v15 = sub_2698548B4();
    v16 = sub_269854F24();

    sub_2697B7D10(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32 = a1;
      v33 = v19;
      *v17 = 138412546;
      *(v17 + 4) = v14;
      *v18 = v14;
      *(v17 + 12) = 2080;
      v20 = v14;
      sub_2697B7D04(a1, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
      v21 = sub_269854AE4();
      v23 = sub_26974F520(v21, v22, &v33);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_269684000, v15, v16, "SiriRemembersProvider couldn't donate intent %@ to Siri Remembers %s", v17, 0x16u);
      sub_2697B7D1C(v18);
      MEMORY[0x26D647170](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x26D647170](v19, -1, -1);
      MEMORY[0x26D647170](v17, -1, -1);
    }

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    if (qword_2803226E8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v6, qword_28033D928);
    (*(v7 + 16))(v12, v25, v6);
    v26 = a3;
    v27 = sub_2698548B4();
    v28 = sub_269854F14();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&dword_269684000, v27, v28, "SiriRemembersProvider successfully donated intent %@ to Siri Remembers", v29, 0xCu);
      sub_2697B7D1C(v30);
      MEMORY[0x26D647170](v30, -1, -1);
      MEMORY[0x26D647170](v29, -1, -1);
    }

    return (*(v7 + 8))(v12, v6);
  }
}

id sub_2697B7D04(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_2697B7D10(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_2697B7D1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D50, &qword_26985D530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2697B7D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2697B7DB8);
}

uint64_t sub_2697B7DB8()
{
  sub_2698539B4();
  swift_allocObject();

  v0[5] = sub_2698539A4();
  v1 = swift_task_alloc();
  v0[6] = v1;
  sub_269853984();
  *v1 = v0;
  v1[1] = sub_2697B7EE0;
  v2 = v0[2];

  return MEMORY[0x2822008A0](v2);
}

uint64_t sub_2697B7EE0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2697B8058;
  }

  else
  {
    v2 = sub_2697B7FF4;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2697B7FF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2697B8058()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2697B80BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324DA8, &qword_269862720);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_269853994();
}

uint64_t sub_2697B821C(uint64_t a1)
{
  v2 = sub_269853A24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269853984();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324DB0, &qword_269862728);
  MEMORY[0x28223BE20](v10);
  v12 = v17 - v11;
  sub_2697B84FC(a1, v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(v3 + 32);
    v13(v5, v12, v2);
    sub_2697B856C();
    v14 = swift_allocError();
    v13(v15, v5, v2);
    v17[1] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324DA8, &qword_269862720);
    return sub_269854D44();
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324DA8, &qword_269862720);
    return sub_269854D54();
  }
}

uint64_t sub_2697B8480(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324DA8, &qword_269862720);

  return sub_2697B821C(a1);
}

uint64_t sub_2697B84FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324DB0, &qword_269862728);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2697B856C()
{
  result = qword_280324DB8;
  if (!qword_280324DB8)
  {
    sub_269853A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324DB8);
  }

  return result;
}

void sub_2697B85E4()
{
  v0 = sub_2698548D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_281571B38);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2698548B4();
  v6 = sub_269854F04();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269684000, v5, v6, "Donating tip for remote playback event", v7, 2u);
    MEMORY[0x26D647170](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  v8 = [objc_opt_self() discoverabilitySignal];
  v9 = [v8 source];

  v10 = sub_269854A04();
  v11 = objc_allocWithZone(MEMORY[0x277CF1938]);
  v12 = sub_2697B8858(0xD00000000000002ELL, 0x800000026987FF00, 0x6C7070612E6D6F63, 0xEE00697269732E65, 0, 0, v10);
  [v9 sendEvent_];
}

id sub_2697B8858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_269854A64();

  v11 = sub_269854A64();

  if (!a6)
  {
    v12 = 0;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = sub_269854A64();

  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_2698549D4();

LABEL_6:
  v14 = [v7 initWithIdentifier:v10 bundleID:v11 context:v12 userInfo:v13];

  return v14;
}

uint64_t sub_2697B8974()
{
  v0 = sub_2698548D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803226E8 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_28033D928);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2698548B4();
  v6 = sub_269854F24();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269684000, v5, v6, "TvProfileSelector.updateActiveProfileOnTV called on unsupported platform", v7, 2u);
    MEMORY[0x26D647170](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

id sub_2697B8B00()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    OUTLINED_FUNCTION_8_1();
    v2 = sub_269854A64();
    v3 = OUTLINED_FUNCTION_4_29();
    v1 = [v3 v4];
  }

  return v1;
}

uint64_t sub_2697B8B5C(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_2_29();
  if (v1)
  {
    sub_269707020(a1, v3);
    v6 = sub_269851D34();
    OUTLINED_FUNCTION_3_36(v6);
    if (!v7)
    {
      sub_269851CD4();
      OUTLINED_FUNCTION_1_37();
      (*(v8 + 8))(v3, v2);
    }

    OUTLINED_FUNCTION_8_1();
    v9 = sub_269854A64();
    OUTLINED_FUNCTION_18_1(v9, sel_setValue_forKey_);
    swift_unknownObjectRelease();
  }

  return sub_269698048(a1, &unk_280322D50, &unk_2698583F0);
}

uint64_t sub_2697B8C88@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_269854A64();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_269855154();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    v6 = sub_269851D34();
    v7 = swift_dynamicCast() ^ 1;
    v8 = a2;
    v9 = v6;
  }

  else
  {
    sub_269698048(v13, &qword_280322F88, qword_26985AB90);
    v9 = sub_269851D34();
    v8 = a2;
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v8, v7, 1, v9);
}

uint64_t sub_2697B8DB0(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_2_29();
  if (v1)
  {
    sub_269707020(a1, v3);
    v6 = sub_269851D34();
    OUTLINED_FUNCTION_3_36(v6);
    if (!v7)
    {
      sub_269851CD4();
      OUTLINED_FUNCTION_1_37();
      (*(v8 + 8))(v3, v2);
    }

    OUTLINED_FUNCTION_8_1();
    v9 = sub_269854A64();
    OUTLINED_FUNCTION_18_1(v9, sel_setValue_forKey_);
    swift_unknownObjectRelease();
  }

  return sub_269698048(a1, &unk_280322D50, &unk_2698583F0);
}

uint64_t sub_2697B8EDC@<X0>(uint64_t (*a1)(uint64_t *)@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 16))
  {
    v6 = *(v2 + 16);
    return a1(&v6);
  }

  else
  {
    v5 = sub_269851D34();

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v5);
  }
}

uint64_t sub_2697B8F6C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_269854A64();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_269855154();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    v6 = sub_269851D34();
    v7 = swift_dynamicCast() ^ 1;
    v8 = a2;
    v9 = v6;
  }

  else
  {
    sub_269698048(v13, &qword_280322F88, qword_26985AB90);
    v9 = sub_269851D34();
    v8 = a2;
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v8, v7, 1, v9);
}

uint64_t sub_2697B9094(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_2_29();
  if (v1)
  {
    sub_269707020(a1, v3);
    v6 = sub_269851D34();
    OUTLINED_FUNCTION_3_36(v6);
    if (!v7)
    {
      sub_269851CD4();
      OUTLINED_FUNCTION_1_37();
      (*(v8 + 8))(v3, v2);
    }

    OUTLINED_FUNCTION_8_1();
    v9 = sub_269854A64();
    OUTLINED_FUNCTION_18_1(v9, sel_setValue_forKey_);
    swift_unknownObjectRelease();
  }

  return sub_269698048(a1, &unk_280322D50, &unk_2698583F0);
}

id sub_2697B91A8()
{
  if (!AFIsInternalInstall())
  {
    return 0;
  }

  v1 = *(v0 + 16);
  if (v1)
  {
    OUTLINED_FUNCTION_8_1();
    v2 = sub_269854A64();
    v3 = OUTLINED_FUNCTION_4_29();
    v1 = [v3 v4];
  }

  return v1;
}

uint64_t sub_2697B9214()
{
  if (!AFIsInternalInstall())
  {
    return 0;
  }

  v1 = *(v0 + 16);
  if (v1)
  {
    OUTLINED_FUNCTION_8_1();
    v2 = sub_269854A64();
    v3 = OUTLINED_FUNCTION_4_29();
    v5 = [v3 v4];

    if (v5)
    {
      v1 = sub_269854A94();

      return v1;
    }

    return 0;
  }

  return v1;
}

uint64_t sub_2697B92B0()
{
  if (!AFIsInternalInstall())
  {
    return 0;
  }

  v1 = *(v0 + 16);
  if (v1)
  {
    OUTLINED_FUNCTION_8_1();
    v2 = sub_269854A64();
    v3 = OUTLINED_FUNCTION_4_29();
    v5 = [v3 v4];

    if (v5)
    {
      v1 = sub_269854A94();

      return v1;
    }

    return 0;
  }

  return v1;
}

uint64_t sub_2697B934C()
{
  if (!AFIsInternalInstall())
  {
    return 0;
  }

  v1 = *(v0 + 16);
  if (v1)
  {
    OUTLINED_FUNCTION_8_1();
    v2 = sub_269854A64();
    v3 = OUTLINED_FUNCTION_4_29();
    v5 = [v3 v4];

    if (v5)
    {
      v1 = sub_269854A94();

      return v1;
    }

    return 0;
  }

  return v1;
}

id sub_2697B93E8()
{
  if (!AFIsInternalInstall())
  {
    return 0;
  }

  v1 = *(v0 + 16);
  if (v1)
  {
    OUTLINED_FUNCTION_8_1();
    v2 = sub_269854A64();
    v3 = OUTLINED_FUNCTION_4_29();
    v1 = [v3 v4];
  }

  return v1;
}

id sub_2697B9454()
{
  if (!AFIsInternalInstall())
  {
    return 0;
  }

  v1 = *(v0 + 16);
  if (v1)
  {
    OUTLINED_FUNCTION_8_1();
    v2 = sub_269854A64();
    v3 = OUTLINED_FUNCTION_4_29();
    v1 = [v3 v4];
  }

  return v1;
}

id sub_2697B94C0()
{
  if (!AFIsInternalInstall())
  {
    return 0;
  }

  v1 = *(v0 + 16);
  if (v1)
  {
    OUTLINED_FUNCTION_8_1();
    v2 = sub_269854A64();
    v3 = OUTLINED_FUNCTION_4_29();
    v1 = [v3 v4];
  }

  return v1;
}

uint64_t sub_2697B9550()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  *(v0 + 16) = sub_2697B95B0(0xD000000000000014, 0x800000026987F1A0);
  return v0;
}

id sub_2697B95B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_269854A64();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_2697B9684(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2697B969C()
{
  v1 = [objc_opt_self() sharedSettings];
  v2 = [v1 optedIn];

  if (v2)
  {
    OUTLINED_FUNCTION_1_38();
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = sub_2697B9BB8;

    return sub_2697D8100();
  }

  else
  {
    sub_2697B9A20();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2697B97D8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2697B97F0()
{
  v1 = [objc_opt_self() sharedSettings];
  v2 = [v1 optedIn];

  if (v2)
  {
    OUTLINED_FUNCTION_1_38();
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = sub_2697B992C;

    return sub_2697D88FC();
  }

  else
  {
    sub_2697B9A20();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2697B992C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2697B9A20()
{
  result = qword_280324DC0;
  if (!qword_280324DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324DC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WatchListError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2697B9B64()
{
  result = qword_280324DC8;
  if (!qword_280324DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324DC8);
  }

  return result;
}

void *OUTLINED_FUNCTION_1_38()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  result = __swift_project_boxed_opaque_existential_1(*(v0 + 72), *(*(v0 + 72) + 24));
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ContentResolutionError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_2697B9CCC()
{
  result = qword_280324DD0;
  if (!qword_280324DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324DD0);
  }

  return result;
}

uint64_t sub_2697B9D20(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2697B9D40(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2697B9D78()
{
  sub_2697B9E4C();
  result = sub_269854A04();
  qword_28033D890 = result;
  return result;
}

uint64_t sub_2697B9DB8()
{
  sub_2697B9DF8();
  result = sub_269854A04();
  qword_28033D898 = result;
  return result;
}

unint64_t sub_2697B9DF8()
{
  result = qword_280324DD8;
  if (!qword_280324DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324DD8);
  }

  return result;
}

unint64_t sub_2697B9E4C()
{
  result = qword_280324DE0;
  if (!qword_280324DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324DE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContentResolutionParameters.ContentType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContentResolutionParameters.ContentSort(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        break;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2697BA06C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2697BA0AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentResolutionParameters.Role(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContentResolutionParameters.Role(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        break;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for ContentResolutionParameters(uint64_t a1)
{
  result = qword_280324DE8;
  if (!qword_280324DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2697BA2D4(uint64_t a1)
{
  sub_2697BA5B8(319, &qword_280323CE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2697BA5B8(319, &qword_280324DF8, &type metadata for ContentResolutionParameters.EpisodeReference, MEMORY[0x277D83D88]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_2697BA5B8(319, &qword_280324E00, &type metadata for ContentResolutionParameters.SeasonReference, MEMORY[0x277D83D88]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_2697BA5B8(319, &qword_280324E08, &type metadata for ContentResolutionParameters.ContentType, MEMORY[0x277D83D88]);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_2697BA5B8(319, &qword_280324E10, &type metadata for ContentResolutionParameters.ContentSort, MEMORY[0x277D83D88]);
    if (v8 > 0x3F)
    {
      return v4;
    }

    sub_2697BA5B8(319, &qword_280324E18, &type metadata for ContentResolutionParameters.Person, MEMORY[0x277D83940]);
    if (v9 > 0x3F)
    {
      return v4;
    }

    sub_2697BA560(319);
    if (v10 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_2697BA5B8(319, &qword_280324E20, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      v2 = v11;
      if (v12 <= 0x3F)
      {
        sub_2697BA5B8(319, &qword_280324E28, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        v2 = v13;
        if (v14 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_2697BA560(uint64_t a1)
{
  if (!qword_281571B28)
  {
    sub_269851D34();
    v1 = sub_2698550A4();
    if (!v2)
    {
      atomic_store(v1, &qword_281571B28);
    }
  }
}

void sub_2697BA5B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2697BA608(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2697BA664(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_2697BA6C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2697BA71C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_2697BA780()
{
  result = qword_280324E30;
  if (!qword_280324E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324E30);
  }

  return result;
}

unint64_t sub_2697BA7D8()
{
  result = qword_280324E38;
  if (!qword_280324E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324E38);
  }

  return result;
}

unint64_t sub_2697BA830()
{
  result = qword_280324E40;
  if (!qword_280324E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324E40);
  }

  return result;
}

void sub_2697BA894(unint64_t a1, void *a2, uint64_t a3)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = sub_269855314() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v4 = ~v7;
    v3 = a1 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(a1 + 64);
    v6 = a1;
  }

  v10 = 0;
  v21 = v6;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v10;
    v12 = v5;
    v13 = v10;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v6 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_23:
      sub_26968E614(v21);

      return;
    }

    while (1)
    {
      v24 = a2;
      v18 = a2;
      swift_getAtKeyPath();

      sub_269694CBC();
      v19 = sub_269855034();
      if (v23)
      {
        v20 = sub_269855064();

        if (v20)
        {
          LOBYTE(v24) = 1;
          swift_setAtWritableKeyPath();
        }
      }

      else
      {
      }

      v10 = v13;
      v5 = v14;
      v6 = v21;
      if ((v21 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_269855334())
      {
        v17 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803247C8, &qword_269860938);
        swift_dynamicCast();
        v23 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324E48, &qword_269862D80);
        swift_dynamicCast();
        v13 = v10;
        v14 = v5;
        if (v24)
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_2697BAB34(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v52 = &v50 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 88) = MEMORY[0x277D84F90];
  v15 = type metadata accessor for ContentResolutionParameters(0);
  v16 = v15[13];
  v17 = sub_269851D34();
  OUTLINED_FUNCTION_0_44(a2 + v16);
  v51 = v15[14];
  OUTLINED_FUNCTION_0_44(a2 + v51);
  *(a2 + v15[17]) = 2;
  *(a2 + v15[18]) = 2;
  *(a2 + v15[19]) = 2;
  *(a2 + v15[20]) = 2;
  *(a2 + v15[21]) = 2;
  *(a2 + v15[22]) = 2;
  *a2 = sub_26977E46C(a1);
  *(a2 + 8) = v18;
  if (qword_280322660 != -1)
  {
    swift_once();
  }

  *(a2 + 80) = sub_26981D434([a1 type], qword_28033D890);
  if (qword_280322668 != -1)
  {
    swift_once();
  }

  *(a2 + 81) = sub_26981D480([a1 sort], qword_28033D898);
  v19 = sub_269746C54(a1);
  v21 = v20;
  [a1 episodeReference];
  *(a2 + 48) = sub_2697B9D20(v19, v21);
  *(a2 + 56) = v22;
  v23 = sub_269746C60(a1);
  v25 = v24;
  [a1 seasonReference];
  *(a2 + 64) = sub_2697B9D40(v23, v25);
  *(a2 + 72) = v26;
  *(a2 + 96) = sub_2696CD57C(a1, &selRef_genre);
  *(a2 + 104) = v27;
  v28 = [a1 releaseDateRange];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 startDate];

    if (v30)
    {
      sub_269851D14();

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    __swift_storeEnumTagSinglePayload(v12, v31, 1, v17);
    sub_26969C680(v12, v14);
  }

  else
  {
    OUTLINED_FUNCTION_0_44(v14);
  }

  sub_2696B6234(v14, a2 + v16);
  v32 = [a1 releaseDateRange];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 endDate];

    v35 = v52;
    if (v34)
    {
      v36 = v50;
      sub_269851D14();

      v37 = 0;
    }

    else
    {
      v37 = 1;
      v36 = v50;
    }

    __swift_storeEnumTagSinglePayload(v36, v37, 1, v17);
    sub_26969C680(v36, v35);
  }

  else
  {
    v35 = v52;
    OUTLINED_FUNCTION_0_44(v52);
  }

  v38 = (a2 + v15[15]);
  sub_2696B6234(v35, a2 + v51);
  *v38 = sub_2696CD57C(a1, &selRef_studio);
  v38[1] = v39;
  v40 = [a1 recommendedAge];
  v41 = v40;
  if (v40)
  {
    v42 = [v40 integerValue];
  }

  else
  {
    v42 = 0;
  }

  v43 = a2 + v15[16];
  *v43 = v42;
  *(v43 + 8) = v41 == 0;
  v44 = [a1 attributes];
  if (v44)
  {
    v45 = qword_280322670;
    v46 = v44;
    if (v45 != -1)
    {
      swift_once();
    }

    v47 = v46;

    sub_2697BA894(v48, v47, a2);
  }

  v49 = sub_2697856BC(a1);
  if (v49)
  {
    sub_2697BB034(v49);
  }
}

void sub_2697BB034(uint64_t a1)
{
  v2 = sub_26975004C();
  v3 = 0;
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v2 == v3)
    {

      *(v17 + 88) = v18;
      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26D646120](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v7 = sub_2696CD57C(v4, &selRef_name);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v11 = [v5 role];

      if (v11 >= 9)
      {
        v12 = 8;
      }

      else
      {
        v12 = byte_269862F32[v11];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26977CBAC();
        v18 = v15;
      }

      v13 = *(v18 + 16);
      if (v13 >= *(v18 + 24) >> 1)
      {
        sub_26977CBAC();
        v18 = v16;
      }

      *(v18 + 16) = v13 + 1;
      v14 = v18 + 24 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v10;
      *(v14 + 48) = v12;
      v3 = v6;
    }

    else
    {

      ++v3;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_2697BB1E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324E50, &unk_269862D88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269858BC0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = swift_getKeyPath();
  *(inited + 72) = swift_getKeyPath();
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = swift_getKeyPath();
  *(inited + 96) = swift_getKeyPath();
  *(inited + 104) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803247C8, &qword_269860938);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324E48, &qword_269862D80);
  result = sub_269854A04();
  qword_28033D8A0 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_44(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t sub_2697BB34C()
{
  OUTLINED_FUNCTION_2_7();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_2698548D4();
  v1[6] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[7] = v5;
  v1[8] = OUTLINED_FUNCTION_37_0();
  v1[9] = swift_task_alloc();
  v6 = sub_269851D34();
  v1[10] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[11] = v7;
  v1[12] = OUTLINED_FUNCTION_4_7();
  type metadata accessor for ContentResolutionParameters(0);
  v1[13] = OUTLINED_FUNCTION_4_7();
  v8 = sub_269854824();
  v1[14] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[15] = v9;
  v1[16] = OUTLINED_FUNCTION_37_0();
  v1[17] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2697BB4C8()
{
  if (qword_280322710 != -1)
  {
    OUTLINED_FUNCTION_2_18(&qword_280322710);
  }

  v1 = sub_269854854();
  OUTLINED_FUNCTION_34_8(v1, qword_28033D958);
  v2 = sub_269854844();
  sub_269854FF4();
  if (OUTLINED_FUNCTION_39_4())
  {
    v3 = OUTLINED_FUNCTION_16_2();
    v4 = OUTLINED_FUNCTION_38_11(v3);
    OUTLINED_FUNCTION_10_21(&dword_269684000, v5, v6, v4, "contentResolverResolveAll", "enableTelemetry=YES");
    OUTLINED_FUNCTION_10();
  }

  v7 = v0[16];
  v8 = v0[17];
  v9 = v0[14];
  v10 = v0[15];
  v11 = v0[13];
  v12 = v0[5];
  v13 = v0[3];

  (*(v10 + 16))(v7, v8, v9);
  v14 = sub_269854894();
  OUTLINED_FUNCTION_68_0(v14);
  v0[18] = OUTLINED_FUNCTION_24_9();
  (*(v10 + 8))(v8, v9);
  sub_2697BAB34(v13, v11);
  sub_269851D24();
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v15 = swift_task_alloc();
  v0[19] = v15;
  *v15 = v0;
  v15[1] = sub_2697BB684;
  OUTLINED_FUNCTION_44_4(v0[13]);

  return sub_2697D5254();
}

uint64_t sub_2697BB684()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v4;
  *(v2 + 168) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2697BB78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  v17 = v15[20];
  v18 = v15[4];

  sub_269771B1C(v18, v17);
  OUTLINED_FUNCTION_33_11();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  v19 = v15[6];
  __swift_project_value_buffer(v19, qword_281571B38);
  v20 = OUTLINED_FUNCTION_30_13();
  v21(v20);

  swift_unknownObjectRetain();
  v22 = sub_2698548B4();
  v23 = sub_269854F14();
  v24 = v14 >> 1;
  if (os_log_type_enabled(v22, v23))
  {
    *OUTLINED_FUNCTION_30_12() = 134218240;
    if (__OFSUB__(v24, v16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_25_14();
    *(v25 + 4) = v26;
    swift_unknownObjectRelease();
    *(v19 + 12) = 2048;
    sub_26975004C();

    OUTLINED_FUNCTION_24_14();
    OUTLINED_FUNCTION_36_8(&dword_269684000, v27, v28, "Total content items returned: %ld - limited from %ld");
    OUTLINED_FUNCTION_10();
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease();
  }

  (*(v15[7] + 8))(v15[9], v15[6]);
  if ((v14 & 1) == 0)
  {
    swift_unknownObjectRetain();
LABEL_9:
    OUTLINED_FUNCTION_35_11();
    v22 = v29;
    goto LABEL_16;
  }

  sub_2698555A4();
  OUTLINED_FUNCTION_11_16();
  swift_unknownObjectRetain_n();
  v30 = swift_dynamicCastClass();
  if (!v30)
  {
    swift_unknownObjectRelease();
    v30 = MEMORY[0x277D84F90];
  }

  v31 = *(v30 + 16);

  if (__OFSUB__(v24, v16))
  {
    goto LABEL_21;
  }

  if (v31 != v24 - v16)
  {
LABEL_22:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  swift_dynamicCastClass();
  OUTLINED_FUNCTION_11_16();
  swift_unknownObjectRelease();
  if (v22)
  {
    goto LABEL_17;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_16:
  swift_unknownObjectRelease();
LABEL_17:
  v32 = v15[18];
  v34 = v15[12];
  v33 = v15[13];
  v36 = v15[10];
  v35 = v15[11];
  v47 = v15[9];
  v48 = v15[8];
  sub_2696C9DAC();
  OUTLINED_FUNCTION_11_16();
  swift_unknownObjectRelease();
  (*(v35 + 8))(v34, v36);
  OUTLINED_FUNCTION_6_34();
  sub_2697BEBCC(v33, v37);
  sub_2697BDCCC(v32, "contentResolverResolveAll");

  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_116();

  return v41(v38, v39, v40, v41, v42, v43, v44, v45, v47, v48, v22, a12, a13, a14);
}

uint64_t sub_2697BBA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_6();
  a20 = v22;
  v25 = v22[13];
  (*(v22[11] + 8))(v22[12], v22[10]);
  OUTLINED_FUNCTION_6_34();
  sub_2697BEBCC(v25, v26);
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  v27 = v22[21];
  __swift_project_value_buffer(v22[6], qword_281571B38);
  v28 = OUTLINED_FUNCTION_11_4();
  v29(v28);
  v30 = v27;
  v31 = sub_2698548B4();
  v32 = sub_269854F14();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = v22[21];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    a10 = v35;
    *v34 = 136315138;
    v22[2] = v33;
    v36 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v37 = sub_269854AE4();
    v39 = sub_26974F520(v37, v38, &a10);

    *(v34 + 4) = v39;
    OUTLINED_FUNCTION_49_5();
    _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v45 = OUTLINED_FUNCTION_22_3();
  v46(v45);
  v47 = v22[18];
  swift_willThrow();
  sub_2697BDCCC(v47, "contentResolverResolveAll");

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2697BBCB0()
{
  OUTLINED_FUNCTION_2_7();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_2698548D4();
  v1[7] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[8] = v5;
  v1[9] = OUTLINED_FUNCTION_37_0();
  v1[10] = swift_task_alloc();
  v6 = sub_269851D34();
  v1[11] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[12] = v7;
  v1[13] = OUTLINED_FUNCTION_4_7();
  v8 = sub_269854824();
  v1[14] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[15] = v9;
  v1[16] = OUTLINED_FUNCTION_37_0();
  v1[17] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2697BBE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  if (qword_280322710 != -1)
  {
LABEL_25:
    OUTLINED_FUNCTION_2_18(&qword_280322710);
  }

  v15 = sub_269854854();
  OUTLINED_FUNCTION_34_8(v15, qword_28033D958);
  v16 = sub_269854844();
  sub_269854FF4();
  if (OUTLINED_FUNCTION_39_4())
  {
    v17 = OUTLINED_FUNCTION_16_2();
    v18 = OUTLINED_FUNCTION_38_11(v17);
    OUTLINED_FUNCTION_10_21(&dword_269684000, v19, v20, v18, "contentResolverResolveAll", "enableTelemetry=YES");
    OUTLINED_FUNCTION_10();
  }

  v21 = v14[17];
  v22 = v14[14];
  v23 = v14[15];
  v24 = v14[4];

  v25 = OUTLINED_FUNCTION_13_20();
  v26(v25);
  v27 = sub_269854894();
  OUTLINED_FUNCTION_68_0(v27);
  v51 = v14;
  v14[18] = OUTLINED_FUNCTION_24_9();
  (*(v23 + 8))(v21, v22);
  v28 = sub_26975004C();
  v29 = 0;
  v14 = (v24 & 0xC000000000000001);
  v30 = v24 & 0xFFFFFFFFFFFFFF8;
  v31 = v24 + 32;
  v52 = MEMORY[0x277D84F90];
  while (v28 != v29)
  {
    if (v14)
    {
      v32 = MEMORY[0x26D646120](v29, v51[4]);
    }

    else
    {
      if (v29 >= *(v30 + 16))
      {
        goto LABEL_24;
      }

      v32 = *(v31 + 8 * v29);
    }

    v33 = v32;
    v34 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v35 = sub_2697BEB10(v32);
    if (v36)
    {
      v37 = v35;
      v38 = v36;
      v39 = sub_2697BEB74(v33);
      if (!v39)
      {

        goto LABEL_13;
      }

      v51[2] = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
      sub_2697B47C4();
      v40 = sub_269854A44();
      v50 = v41;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26977CE54();
        v52 = v44;
      }

      v42 = *(v52 + 16);
      if (v42 >= *(v52 + 24) >> 1)
      {
        sub_26977CE54();
        v52 = v45;
      }

      *(v52 + 16) = v42 + 1;
      v43 = (v52 + 32 * v42);
      v43[4] = v37;
      v43[5] = v38;
      v43[6] = v40;
      v43[7] = v50;
      v29 = v34;
    }

    else
    {
LABEL_13:

      ++v29;
    }
  }

  v46 = v51[6];
  v51[19] = sub_26980C11C(v52);
  sub_269851D24();
  __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  v47 = swift_task_alloc();
  v51[20] = v47;
  *v47 = v51;
  v47[1] = sub_2697BC11C;
  OUTLINED_FUNCTION_116();

  return sub_2697D680C();
}

uint64_t sub_2697BC11C()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_3_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_13();
  *v5 = v4;
  *(v7 + 168) = v6;
  *(v7 + 176) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2697BC244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  v17 = v15[21];
  v18 = v15[5];

  sub_269771B1C(v18, v17);
  OUTLINED_FUNCTION_33_11();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  v19 = v15[7];
  __swift_project_value_buffer(v19, qword_281571B38);
  v20 = OUTLINED_FUNCTION_30_13();
  v21(v20);

  swift_unknownObjectRetain();
  v22 = sub_2698548B4();
  v23 = sub_269854F14();
  v24 = v14 >> 1;
  if (os_log_type_enabled(v22, v23))
  {
    *OUTLINED_FUNCTION_30_12() = 134218240;
    if (__OFSUB__(v24, v16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_25_14();
    *(v25 + 4) = v26;
    swift_unknownObjectRelease();
    *(v19 + 12) = 2048;
    sub_26975004C();

    OUTLINED_FUNCTION_24_14();
    OUTLINED_FUNCTION_36_8(&dword_269684000, v27, v28, "Total content items returned: %ld - limited from %ld");
    OUTLINED_FUNCTION_10();
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease();
  }

  (*(v15[8] + 8))(v15[10], v15[7]);
  if ((v14 & 1) == 0)
  {
    swift_unknownObjectRetain();
LABEL_9:
    OUTLINED_FUNCTION_35_11();
    v22 = v29;
    goto LABEL_16;
  }

  sub_2698555A4();
  OUTLINED_FUNCTION_11_16();
  swift_unknownObjectRetain_n();
  v30 = swift_dynamicCastClass();
  if (!v30)
  {
    swift_unknownObjectRelease();
    v30 = MEMORY[0x277D84F90];
  }

  v31 = *(v30 + 16);

  if (__OFSUB__(v24, v16))
  {
    goto LABEL_21;
  }

  if (v31 != v24 - v16)
  {
LABEL_22:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  swift_dynamicCastClass();
  OUTLINED_FUNCTION_11_16();
  swift_unknownObjectRelease();
  if (v22)
  {
    goto LABEL_17;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_16:
  swift_unknownObjectRelease();
LABEL_17:
  v46 = v22;
  v32 = v15[18];
  v33 = v15[12];
  v34 = v15[13];
  v35 = v15[11];
  v45 = sub_2696C9DAC();
  swift_unknownObjectRelease();
  (*(v33 + 8))(v34, v35);
  sub_2697BDCCC(v32, "contentResolverResolveAll");

  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_116();

  return v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, v45, v46, a12, a13, a14);
}

uint64_t sub_2697BC500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_6();
  a20 = v22;
  (*(v22[12] + 8))(v22[13], v22[11]);
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  v25 = v22[22];
  __swift_project_value_buffer(v22[7], qword_281571B38);
  v26 = OUTLINED_FUNCTION_11_4();
  v27(v26);
  v28 = v25;
  v29 = sub_2698548B4();
  v30 = sub_269854F14();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = v22[22];
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    a10 = v33;
    *v32 = 136315138;
    v22[3] = v31;
    v34 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v35 = sub_269854AE4();
    v37 = sub_26974F520(v35, v36, &a10);

    *(v32 + 4) = v37;
    OUTLINED_FUNCTION_49_5();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v43 = OUTLINED_FUNCTION_22_3();
  v44(v43);
  v45 = v22[18];
  swift_willThrow();
  sub_2697BDCCC(v45, "contentResolverResolveAll");

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2697BC73C()
{
  OUTLINED_FUNCTION_2_7();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_2698548D4();
  v1[6] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[7] = v5;
  v1[8] = OUTLINED_FUNCTION_4_7();
  v6 = sub_269851D34();
  v1[9] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_4_7();
  v8 = sub_269854824();
  v1[12] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_37_0();
  v1[15] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2697BC888()
{
  if (qword_280322710 != -1)
  {
    OUTLINED_FUNCTION_2_18(&qword_280322710);
  }

  v1 = sub_269854854();
  OUTLINED_FUNCTION_34_8(v1, qword_28033D958);
  v2 = sub_269854844();
  sub_269854FF4();
  if (OUTLINED_FUNCTION_39_4())
  {
    v3 = OUTLINED_FUNCTION_16_2();
    v4 = OUTLINED_FUNCTION_38_11(v3);
    OUTLINED_FUNCTION_10_21(&dword_269684000, v5, v6, v4, "contentResolverLookup", "enableTelemetry=YES");
    OUTLINED_FUNCTION_10();
  }

  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[5];

  v11 = OUTLINED_FUNCTION_13_20();
  v12(v11);
  v13 = sub_269854894();
  OUTLINED_FUNCTION_68_0(v13);
  v0[16] = OUTLINED_FUNCTION_24_9();
  (*(v9 + 8))(v7, v8);
  sub_269851D24();
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v14 = swift_task_alloc();
  v0[17] = v14;
  *v14 = v0;
  v14[1] = sub_2697BCA34;
  v15 = OUTLINED_FUNCTION_44_4(v0[3]);

  return sub_2697BCE98(v15, v16);
}

uint64_t sub_2697BCA34()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_23_15();
  v4 = v3;
  OUTLINED_FUNCTION_3_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_6_13();
  *v7 = v6;
  *(v4 + 144) = v0;

  if (!v0)
  {
    *(v4 + 152) = v1;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2697BCB40()
{
  v1 = v0[16];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = sub_2696C9DAC();
  (*(v3 + 8))(v2, v4);
  sub_2697BDCCC(v1, "contentResolverLookup");

  OUTLINED_FUNCTION_32_9();
  v7 = v0[19];

  return v6(v7, v5);
}

uint64_t sub_2697BCC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_6();
  a20 = v22;
  (*(v22[10] + 8))(v22[11], v22[9]);
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  v25 = v22[18];
  __swift_project_value_buffer(v22[6], qword_281571B38);
  v26 = OUTLINED_FUNCTION_11_4();
  v27(v26);

  v28 = v25;
  v29 = sub_2698548B4();
  v30 = sub_269854F14();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = v22[18];
    v32 = v22[7];
    a9 = v22[8];
    v33 = v22[6];
    v35 = v22[3];
    v34 = v22[4];
    v36 = OUTLINED_FUNCTION_30_12();
    a10 = swift_slowAlloc();
    *v36 = 136315394;
    *(v36 + 4) = sub_26974F520(v35, v34, &a10);
    *(v36 + 12) = 2080;
    v22[2] = v31;
    v37 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v38 = sub_269854AE4();
    v40 = sub_26974F520(v38, v39, &a10);

    *(v36 + 14) = v40;
    OUTLINED_FUNCTION_49_5();
    _os_log_impl(v41, v42, v43, v44, v45, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v32 + 8))(a9, v33);
  }

  else
  {

    v46 = OUTLINED_FUNCTION_22_3();
    v47(v46);
  }

  v48 = v22[16];
  swift_willThrow();
  sub_2697BDCCC(v48, "contentResolverLookup");

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2697BCE98(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2697BCEBC);
}

uint64_t sub_2697BCEBC()
{
  OUTLINED_FUNCTION_8_5();
  v2 = v0[2];
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_269857710;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2697BCF9C;

  return sub_2697D6C58();
}

uint64_t sub_2697BCF9C()
{
  OUTLINED_FUNCTION_2_7();
  v2 = *v1;
  OUTLINED_FUNCTION_3_6();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v4;
  *(v2 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2697BD0A8()
{
  OUTLINED_FUNCTION_8_5();
  if (sub_26975004C())
  {
    v1 = *(v0 + 56) & 0xC000000000000001;
    sub_269750050();
    if (v1)
    {
      v2 = MEMORY[0x26D646120](0, *(v0 + 56));
    }

    else
    {
      v2 = *(*(v0 + 56) + 32);
    }

    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {

    sub_2696BAE9C();
    swift_allocError();
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 8;
    *(v5 + 24) = 3;
    swift_willThrow();
    OUTLINED_FUNCTION_7_7();

    return v6();
  }
}

uint64_t sub_2697BD1D4()
{
  OUTLINED_FUNCTION_2_7();

  OUTLINED_FUNCTION_7_7();

  return v0();
}

uint64_t sub_2697BD230()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_269851D34();
  v1[5] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2697BD2D8()
{
  OUTLINED_FUNCTION_2_7();
  v1 = v0[4];
  sub_269851D24();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_2697BD380;
  OUTLINED_FUNCTION_44_4(v0[2]);

  return sub_2697D7198();
}

uint64_t sub_2697BD380()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_23_15();
  v4 = v3;
  OUTLINED_FUNCTION_3_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_6_13();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2697BD48C()
{
  v1 = sub_2697BD5C0(*(v0 + 80), *(v0 + 24));

  v2 = sub_2696C9DAC();
  v3 = OUTLINED_FUNCTION_22_3();
  v4(v3);

  OUTLINED_FUNCTION_32_9();

  return v5(v1, v2);
}

uint64_t sub_2697BD548()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0[6] + 8))(v0[7], v0[5]);

  OUTLINED_FUNCTION_7_7();

  return v1();
}

unint64_t *sub_2697BD5C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  if (*(a2 + 16))
  {
    MEMORY[0x28223BE20](v8);
    v22[-2] = a2;
    v12 = sub_2697BE048(a1, sub_2697BDFB0, &v22[-4]);
    if (*(a1 + 16) != v12[2])
    {
      if (qword_280322700 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_280322700);
      }

      v13 = __swift_project_value_buffer(v4, qword_281571B38);
      (*(v6 + 16))(v11, v13, v4);

      v14 = sub_2698548B4();
      v15 = sub_269854F14();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = OUTLINED_FUNCTION_30_12();
        v17 = swift_slowAlloc();
        v22[0] = v17;
        *v16 = 134218242;
        *(v16 + 4) = *(a1 + 16) - v12[2];

        *(v16 + 12) = 2080;
        v18 = MEMORY[0x26D645BC0](a2, MEMORY[0x277D837D0]);
        v20 = sub_26974F520(v18, v19, v22);

        *(v16 + 14) = v20;
        _os_log_impl(&dword_269684000, v14, v15, "We filtered out %ld playables because of channelId missmatch. Requested channels ids: %s", v16, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v17);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();
      }

      else
      {
      }

      (*(v6 + 8))(v11, v4);
    }

    return v12;
  }

  else
  {
  }

  return a1;
}

uint64_t sub_2697BD868()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_269854824();
  v1[5] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_37_0();
  v1[8] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2697BD91C()
{
  if (qword_280322710 != -1)
  {
    OUTLINED_FUNCTION_2_18(&qword_280322710);
  }

  v1 = sub_269854854();
  OUTLINED_FUNCTION_34_8(v1, qword_28033D958);
  v2 = sub_269854844();
  sub_269854FF4();
  if (OUTLINED_FUNCTION_39_4())
  {
    v3 = OUTLINED_FUNCTION_16_2();
    v4 = OUTLINED_FUNCTION_38_11(v3);
    OUTLINED_FUNCTION_10_21(&dword_269684000, v5, v6, v4, "contentResolverWatchListResolve", "enableTelemetry=YES");
    OUTLINED_FUNCTION_10();
  }

  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[4];

  v11 = OUTLINED_FUNCTION_13_20();
  v12(v11);
  v13 = sub_269854894();
  OUTLINED_FUNCTION_68_0(v13);
  v0[9] = OUTLINED_FUNCTION_24_9();
  (*(v9 + 8))(v7, v8);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v14 = swift_task_alloc();
  v0[10] = v14;
  *v14 = v0;
  v14[1] = sub_2697BDAA0;
  OUTLINED_FUNCTION_44_4(v0[2]);

  return sub_2697D8FA4();
}

uint64_t sub_2697BDAA0()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_23_15();
  v4 = v3;
  OUTLINED_FUNCTION_3_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_6_13();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2697BDBAC()
{
  OUTLINED_FUNCTION_8_5();
  sub_2697BDCCC(v0[9], "contentResolverWatchListResolve");

  v1 = v0[1];
  v2 = v0[12];

  return v1(v2);
}

uint64_t sub_2697BDC40()
{
  OUTLINED_FUNCTION_8_5();
  sub_2697BDCCC(*(v0 + 72), "contentResolverWatchListResolve");

  OUTLINED_FUNCTION_7_7();

  return v1();
}

uint64_t sub_2697BDCCC(uint64_t a1, const char *a2)
{
  v2 = sub_269854864();
  OUTLINED_FUNCTION_8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  v9 = sub_269854824();
  OUTLINED_FUNCTION_8();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v15 = v14 - v13;
  if (qword_280322710 != -1)
  {
    OUTLINED_FUNCTION_2_18(&qword_280322710);
  }

  v16 = sub_269854854();
  __swift_project_value_buffer(v16, qword_28033D958);
  v17 = sub_269854844();
  sub_269854874();
  v18 = sub_269854FE4();
  if (sub_269855074())
  {

    sub_2698548A4();

    if ((*(v4 + 88))(v8, v2) == *MEMORY[0x277D85B00])
    {
      v19 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v8, v2);
      v19 = "";
    }

    v20 = OUTLINED_FUNCTION_16_2();
    *v20 = 0;
    v21 = sub_269854804();
    _os_signpost_emit_with_name_impl(&dword_269684000, v17, v18, v21, a2, v19, v20, 2u);
    OUTLINED_FUNCTION_10();
  }

  return (*(v11 + 8))(v15, v9);
}

BOOL sub_2697BDF14(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3[1])
  {
    MEMORY[0x28223BE20](a1);
    return sub_2698337D4();
  }

  else
  {
    return 0;
  }
}

unint64_t *sub_2697BDFB8(unint64_t *result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v9 = sub_2697BE1CC(v8, a2, a3, a4);

    return v9;
  }

  return result;
}

unint64_t *sub_2697BE048(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, char *), unint64_t *a3)
{
  v6 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_2697BDFB8(v12, v8, v6, a2, a3);
      MEMORY[0x26D647170](v12, -1, -1);
      return a3;
    }
  }

  MEMORY[0x28223BE20](a1);
  v9 = (v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_26980F698(0, v8, v9);
  v10 = sub_2697BE1CC(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

uint64_t sub_2697BE1CC(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
{
  v25 = a2;
  v29 = a4;
  v26 = a1;
  v5 = _s8PlayableVMa(0);
  v28 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v9 = 0;
  v30 = a3;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v20 = v17 | (v9 << 6);
    v21 = (v30[6] + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    sub_2697BE3D4(v30[7] + *(v28 + 72) * v20, v8);

    LOBYTE(v22) = v29(v22, v23, v8);
    sub_2697BEBCC(v8, _s8PlayableVMa);

    if (v22)
    {
      *(v26 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        return sub_2697BE438(v26, v25, v27, v30);
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      return sub_2697BE438(v26, v25, v27, v30);
    }

    v19 = v11[v9];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2697BE3D4(uint64_t a1, uint64_t a2)
{
  v4 = _s8PlayableVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2697BE438(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = _s8PlayableVMa(0);
  v41 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v9);
  v40 = &v37 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v39 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324E58, &qword_269862FA0);
  result = sub_2698553C4();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v17 = v39;
  v38 = a4;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[7];
    v23 = (a4[6] + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v26 = v40;
    v43 = *(v41 + 72);
    sub_2697BE3D4(v22 + v43 * v21, v40);
    sub_2697BE740(v26, v17);
    sub_269855674();

    sub_269854B34();
    result = sub_2698556C4();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      v17 = v39;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    v17 = v39;
LABEL_25:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v13 + 48) + 16 * v30);
    *v35 = v25;
    v35[1] = v24;
    result = sub_2697BE740(v17, *(v13 + 56) + v30 * v43);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v38;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = a1[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2697BE740(uint64_t a1, uint64_t a2)
{
  v4 = _s8PlayableVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2697BE7A4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v49 = a1;
  sub_269853904();
  OUTLINED_FUNCTION_8();
  v55 = v7;
  v9 = MEMORY[0x28223BE20](v8);
  v56 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v51 = &v45 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v50 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324E60, qword_269867A70);
  result = sub_2698553C4();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v49;
  }

  v16 = 0;
  v47 = result;
  v48 = v55 + 16;
  v17 = v55 + 32;
  v18 = result + 64;
  v19 = v50;
  v46 = a4;
  while (v15)
  {
    v20 = v19;
    v21 = v17;
    v22 = __clz(__rbit64(v15));
    v52 = (v15 - 1) & v15;
LABEL_16:
    v25 = v22 | (v16 << 6);
    v26 = a4[7];
    v27 = (a4[6] + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    v30 = v55;
    v54 = *(v55 + 72);
    v31 = v51;
    (*(v55 + 16))(v51, v26 + v54 * v25, v20);
    v32 = *(v30 + 32);
    v33 = v31;
    v17 = v21;
    v32(v56, v33, v20);
    v14 = v47;
    sub_269855674();

    v53 = v28;
    sub_269854B34();
    result = sub_2698556C4();
    v34 = -1 << *(v14 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v18 + 8 * (v35 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v34) >> 6;
      v19 = v50;
      while (++v36 != v39 || (v38 & 1) == 0)
      {
        v40 = v36 == v39;
        if (v36 == v39)
        {
          v36 = 0;
        }

        v38 |= v40;
        v41 = *(v18 + 8 * v36);
        if (v41 != -1)
        {
          v37 = __clz(__rbit64(~v41)) + (v36 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v18 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
    v19 = v50;
LABEL_25:
    *(v18 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    v42 = (*(v14 + 48) + 16 * v37);
    v43 = v54;
    *v42 = v53;
    v42[1] = v29;
    result = (v32)(*(v14 + 56) + v37 * v43, v56, v19);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v46;
    v15 = v52;
    if (!a3)
    {
      return v14;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v24 = v49[v16];
    ++v23;
    if (v24)
    {
      v20 = v19;
      v21 = v17;
      v22 = __clz(__rbit64(v24));
      v52 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2697BEB10(void *a1)
{
  v1 = [a1 key];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_269854A94();

  return v3;
}

uint64_t sub_2697BEB74(void *a1)
{
  v1 = [a1 values];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_269854CB4();

  return v3;
}

uint64_t sub_2697BEBCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void OUTLINED_FUNCTION_10_21(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, v7, a4, a5, a6, v8, 2u);
}

uint64_t OUTLINED_FUNCTION_24_14()
{
  *(v0 + 14) = v1;
}

uint64_t OUTLINED_FUNCTION_34_8(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_269854814();
}

void OUTLINED_FUNCTION_35_11()
{

  sub_2697E0BB4(v0, v3, v2, v1);
}

void OUTLINED_FUNCTION_36_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_38_11(_WORD *a1)
{
  *a1 = 0;

  return sub_269854804();
}

uint64_t OUTLINED_FUNCTION_39_4()
{

  return sub_269855074();
}

_BYTE *storeEnumTagSinglePayload for LiveServiceResolutionError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2697BEE78()
{
  result = qword_280324E68;
  if (!qword_280324E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324E68);
  }

  return result;
}

unint64_t sub_2697BEECC(char a1)
{
  result = 0xD00000000000002FLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000002ALL;
      break;
    case 2:
      result = 0xD00000000000002DLL;
      break;
    case 3:
      result = 0xD000000000000027;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2697BEF68()
{
  result = qword_280324E70;
  if (!qword_280324E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324E70);
  }

  return result;
}

uint64_t sub_2697BEFBC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_2698548D4();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_269851D34();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697BF0DC);
}

uint64_t sub_2697BF0DC(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_269851D24();
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v3 = swift_task_alloc();
  *(v1 + 96) = v3;
  *v3 = v1;
  v3[1] = sub_2697BF18C;

  return sub_2697D984C();
}

uint64_t sub_2697BF18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  *(*v5 + 104) = v4;

  if (v4)
  {
    v11 = sub_2697BF468;
  }

  else
  {
    v10[14] = a4;
    v10[15] = a2;
    v10[16] = a1;
    v10[17] = a3;
    v11 = sub_2697BF2D4;
  }

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_2697BF2D4()
{
  v1 = v0[13];
  v2 = sub_2697BF6B8(v0[16], v0[15], v0[17], v0[14]);

  if (v1)
  {
    sub_2697BEE78();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();

    (*(v0[10] + 8))(v0[11], v0[9]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[9];
    v9 = sub_2696C9DAC();
    (*(v7 + 8))(v6, v8);

    v10 = v0[1];

    return v10(v2, v9);
  }
}

uint64_t sub_2697BF468()
{
  v25 = v0;
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  v1 = v0[13];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = __swift_project_value_buffer(v4, qword_281571B38);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2698548B4();
  v8 = sub_269854F24();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[13];
    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[6];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    v0[2] = v9;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v16 = sub_269854AE4();
    v18 = sub_26974F520(v16, v17, &v24);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_269684000, v7, v8, "Resolution error occured: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x26D647170](v14, -1, -1);
    MEMORY[0x26D647170](v13, -1, -1);

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[6];

    (*(v20 + 8))(v19, v21);
  }

  swift_willThrow();
  (*(v0[10] + 8))(v0[11], v0[9]);

  v22 = v0[1];

  return v22();
}

uint64_t sub_2697BF6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v20[1] = a3;
  v20[2] = a4;
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = *(a1 + 16);
    result = MEMORY[0x277D84F90];
    if (v12)
    {
      v26 = MEMORY[0x277D84F90];
      sub_2698552A4();
      v14 = (a1 + 32);
      for (i = v12 - 1; ; --i)
      {
        memcpy(__dst, v14, 0x80uLL);
        memcpy(v23, v14, sizeof(v23));
        sub_2697C0244(__dst, v21);
        sub_2697BF970(v23, a2, &v22, &v24);
        if (v5)
        {
          memcpy(v21, v23, sizeof(v21));
          sub_2697C02A0(v21);
        }

        v5 = 0;
        memcpy(v21, v23, sizeof(v21));
        sub_2697C02A0(v21);
        sub_269855284();
        sub_2698552B4();
        sub_2698552C4();
        sub_269855294();
        if (!i)
        {
          break;
        }

        v14 += 128;
      }

      return v26;
    }
  }

  else
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    v16 = __swift_project_value_buffer(v8, qword_281571B38);
    (*(v9 + 16))(v11, v16, v8);
    v17 = sub_2698548B4();
    v18 = sub_269854F14();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_269684000, v17, v18, "UTS returned zero items", v19, 2u);
      MEMORY[0x26D647170](v19, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_2697BF970(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X5>, void *a4@<X8>)
{
  v70 = a3;
  v67 = a4;
  v81 = a2;
  v5 = sub_2698548D4();
  v71 = *(v5 - 8);
  v72 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v69 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v64 = v62 - v9;
  MEMORY[0x28223BE20](v8);
  v68 = v62 - v10;
  v11 = a1[13];
  v12 = a1[14];
  v62[1] = a1[12];
  v63 = v12;
  v65 = a1[15];
  v66 = v11;
  type metadata accessor for LiveService();
  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v14 = sub_2697C01B0(0, 0, 0, 0xE000000000000000);
  v15 = sub_269854A64();
  [v14 setLiveServiceId_];

  v16 = sub_269854A64();
  [v14 setName_];

  v17 = sub_269854A64();
  [v14 setChannelId_];

  if (!v81 || (v18 = *(v81 + 16), v19 = (v81 + 32), v86 = v14, !v18))
  {
LABEL_12:
    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v27 = v72;
    v28 = __swift_project_value_buffer(v72, qword_281571B38);
    v29 = v71;
    v30 = v69;
    (*(v71 + 16))(v69, v28, v27);
    v31 = sub_2698548B4();
    v32 = sub_269854F24();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_269684000, v31, v32, "Missing necessary channel associated with request live service.", v33, 2u);
      MEMORY[0x26D647170](v33, -1, -1);
    }

    (*(v29 + 8))(v30, v27);
    sub_2697BEE78();
    v34 = swift_allocError();
    *v35 = 0;
    swift_willThrow();

    goto LABEL_42;
  }

  while (1)
  {
    memcpy(v83, v19, 0x80uLL);
    v20 = v83[0];

    sub_2697926F8(v83, &v82);
    v21 = sub_2697C02F4(v14);
    if (!v22)
    {
      sub_269792754(v83);

      goto LABEL_11;
    }

    v76 = v83[5];
    v23 = v83[6];
    v24 = *(&v83[7] + 1);
    v74 = *&v83[4];
    v75 = *&v83[7];
    v80 = *(&v83[4] + 1);
    v78 = BYTE10(v83[3]);
    v79 = BYTE9(v83[3]);
    LODWORD(v81) = BYTE8(v83[3]);
    v25 = v20 == v21 && v22 == *(&v20 + 1);
    v73 = *(&v83[2] + 1);
    v77 = *&v83[3];
    if (v25)
    {
      break;
    }

    v26 = sub_269855584();

    if (v26)
    {
      goto LABEL_18;
    }

    sub_269792754(v83);
    v14 = v86;
LABEL_11:
    v19 += 128;
    if (!--v18)
    {
      goto LABEL_12;
    }
  }

LABEL_18:
  if (*(&v23 + 1) >= 2uLL)
  {
    v83[8] = v76;
    v83[9] = v23;
    v84 = v75;
    v85 = v24;

    v46 = sub_2697C367C();

    v47 = v86;
    [v86 setAppImage_];
    v49 = v71;
    v48 = v72;
    if (v77)
    {

      v50 = sub_269854A64();
    }

    else
    {
      v50 = 0;
    }

    v51 = v81;
    v52 = v80;
    [v47 setAppName_];

    v53 = sub_269854D24();
    [v47 setIsInstalled_];

    v54 = sub_269854D24();
    [v47 setIsSubscribed_];

    if (v52)
    {

      v55 = sub_269854A64();
    }

    else
    {
      v55 = 0;
    }

    [v47 setAppStoreUrl_];

    sub_269792754(v83);
    if (v51)
    {
      if (v65)
      {
        sub_2697C0358(v63, v65, v47);
LABEL_45:

        *v67 = v47;
        return;
      }

      if (qword_280322700 != -1)
      {
        swift_once();
      }

      v57 = __swift_project_value_buffer(v48, qword_281571B38);
      (*(v49 + 16))(v64, v57, v48);
      v58 = sub_2698548B4();
      v59 = sub_269854F24();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_269684000, v58, v59, "Missing required URL for AppleTV+ service.", v60, 2u);
        MEMORY[0x26D647170](v60, -1, -1);
      }

      (*(v49 + 8))(v64, v48);
LABEL_41:
      sub_2697BEE78();
      v34 = swift_allocError();
      *v61 = 1;
      swift_willThrow();

      goto LABEL_42;
    }

    if (v66)
    {
      if (v66 == 1)
      {
        goto LABEL_41;
      }

      v56 = sub_269854A64();
    }

    else
    {
      v56 = 0;
    }

    [v47 setPlayPunchoutUrl_];

    goto LABEL_45;
  }

  sub_269792754(v83);
  v37 = v71;
  v36 = v72;
  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v36, qword_281571B38);
  v39 = v68;
  (*(v37 + 16))(v68, v38, v36);
  v40 = sub_2698548B4();
  v41 = sub_269854F24();
  v42 = os_log_type_enabled(v40, v41);
  v43 = v86;
  if (v42)
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_269684000, v40, v41, "Missing necessary app image", v44, 2u);
    MEMORY[0x26D647170](v44, -1, -1);
  }

  (*(v37 + 8))(v39, v36);
  sub_2697BEE78();
  v34 = swift_allocError();
  *v45 = 3;
  swift_willThrow();

LABEL_42:
  *v70 = v34;
}

id sub_2697C01B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = sub_269854A64();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_269854A64();

  v7 = [v4 initWithIdentifier:v5 displayString:v6];

  return v7;
}

uint64_t sub_2697C02F4(void *a1)
{
  v1 = [a1 channelId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_269854A94();

  return v3;
}

void sub_2697C0358(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();
  [a3 setPlayPunchoutUrl_];
}

uint64_t sub_2697C03C4(char a1)
{
  sub_269855674();
  MEMORY[0x26D646580](a1 & 1);
  return sub_2698556C4();
}

void sub_2697C0414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x26D645A60](95, 0xE100000000000000);
  MEMORY[0x26D645A60](a3, a4);
}

uint64_t sub_2697C0478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_269855584(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_269855584();
    }
  }

  return result;
}