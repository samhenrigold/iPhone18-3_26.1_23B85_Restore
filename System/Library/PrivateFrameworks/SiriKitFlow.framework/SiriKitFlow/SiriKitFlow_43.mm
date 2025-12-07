uint64_t sub_1DCF6C990(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1DCF6CA48()
{
  OUTLINED_FUNCTION_66();
  swift_getWitnessTable();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCF6CAD8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF6CB20, 0, 0);
}

void sub_1DCF6CB20()
{
  OUTLINED_FUNCTION_125();
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  *(v0 + 64) = v2;
  v3 = *(v1 + 24);
  *(v0 + 72) = v3;
  v4 = *(v1 + 32);
  *(v0 + 33) = v4;
  switch(v4 >> 5)
  {
    case 0u:
      v5 = OUTLINED_FUNCTION_17_44();
      sub_1DCF6EBE0(v5, v6, v7);
      sub_1DD0DCF8C();
    case 1u:
      v15 = OUTLINED_FUNCTION_17_44();
      sub_1DCF6EBE0(v15, v16, v17);
      sub_1DD0DCF8C();
    case 3u:
      sub_1DCBB12F4(v2, v3, v4 & 0x1F);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v8 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v8, qword_1EDE57E00);
      v9 = sub_1DD0DD8EC();
      v10 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = OUTLINED_FUNCTION_50_0();
        *v11 = 0;
        _os_log_impl(&dword_1DCAFC000, v9, v10, "RouteConfirmIntentResponseFlow is complete.", v11, 2u);
        MEMORY[0x1E12A8390](v11, -1, -1);
      }

      v12 = OUTLINED_FUNCTION_17_44();
      sub_1DCB3C730(v12, v13, v14);

      goto LABEL_23;
    case 5u:
      v18 = v2 == 1 && v3 == 0;
      if (!v18 || v4 != 160)
      {
        goto LABEL_20;
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v19 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v19, qword_1EDE57E00);
      v20 = sub_1DD0DD8EC();
      v21 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v22);
        OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v23, v24, "RouteConfirmIntentResponseFlow is cancelled.");
        OUTLINED_FUNCTION_62();
        sub_1DCB3C730(1, 0, 0xA0u);
      }

LABEL_23:
      static ExecuteResponse.complete()();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_117();

      __asm { BRAA            X1, X16 }

      return;
    default:
LABEL_20:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v25 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v25, qword_1EDE57E00);
      sub_1DD0DCF8C();
  }
}

uint64_t sub_1DCF6CFEC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCF6D0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[28] = *v3;
  v4[29] = type metadata accessor for SiriKitEventPayload(0);
  v4[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF6D190, 0, 0);
}

uint64_t sub_1DCF6D190()
{
  OUTLINED_FUNCTION_125();
  switch([*(v1 + 208) _intentResponseCode])
  {
    case 0uLL:
    case 5uLL:
    case 7uLL:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v3 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v3, qword_1EDE57E00);
      v4 = sub_1DD0DD8EC();
      v5 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_23(v5))
      {
        v6 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v6);
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v7, v8, "Confirm routing is rendering failure handling intent dialog and exiting.");
        OUTLINED_FUNCTION_62();
      }

      v9 = *(v1 + 216);
      v55 = *(v1 + 200);

      __swift_project_boxed_opaque_existential_1((v9 + *(*v9 + 112)), *(v9 + *(*v9 + 112) + 24));
      v10 = swift_task_alloc();
      *(v1 + 280) = v10;
      *(v10 + 16) = v9;
      *(v10 + 24) = v55;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v1 + 288) = v11;
      *v11 = v12;
      v11[1] = sub_1DCF6D7E4;
      OUTLINED_FUNCTION_88_1();

      return sub_1DCB63BBC(v13, v14, v15, v16, v17);
    case 1uLL:
    case 3uLL:
    case 4uLL:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v20 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v20, qword_1EDE57E00);
      v21 = sub_1DD0DD8EC();
      v22 = sub_1DD0DE6DC();
      if (!OUTLINED_FUNCTION_23(v22))
      {
        goto LABEL_23;
      }

      v23 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v23);
      v26 = "RouteConfirmIntentResponseFlow transitioning to confirmIntent";
      break;
    case 2uLL:
    case 6uLL:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v27 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v27, qword_1EDE57E00);
      v28 = sub_1DD0DD8EC();
      v29 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v29))
      {
        v30 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v30);
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v31, v32, "Confirm routing to continue in app");
        OUTLINED_FUNCTION_62();
      }

      v33 = *(v1 + 216);
      v34 = *(v1 + 200);

      sub_1DCF6F074();
      v35 = swift_allocError();
      v37 = *(v33 + 16);
      v36 = *(v33 + 24);
      *(v33 + 16) = v35;
      *(v33 + 24) = 1;
      v38 = *(v33 + 32);
      *(v33 + 32) = 0x80;
      sub_1DCB3C730(v37, v36, v38);
      *(v1 + 248) = *(v34 + 16);
      *(v1 + 256) = *(v34 + 24);
      sub_1DD0DCF8C();
    case 8uLL:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v39 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v39, qword_1EDE57E00);
      v21 = sub_1DD0DD8EC();
      v40 = sub_1DD0DE6DC();
      if (!OUTLINED_FUNCTION_23(v40))
      {
        goto LABEL_23;
      }

      v41 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v41);
      v26 = "Confirm routing to confirm intent due to intent response";
      break;
    default:
      v47 = [OUTLINED_FUNCTION_18_46() _intentResponseCode];
      type metadata accessor for RouteConfirmIntentResponseFlow.RouteConfirmIntentError(0, *(v0 + 80), *(v0 + 88), v48);
      OUTLINED_FUNCTION_0_108();
      WitnessTable = swift_getWitnessTable();
      v50 = OUTLINED_FUNCTION_240(WitnessTable);
      *v51 = v47;
      *(v51 + 8) = 0;
      *(v51 + 16) = 16;
      v53 = *(v2 + 16);
      v52 = *(v2 + 24);
      *(v2 + 16) = v50;
      *(v2 + 24) = 0;
      v54 = *(v2 + 32);
      *(v2 + 32) = 0x80;
      sub_1DCB3C730(v53, v52, v54);
      static ExecuteResponse.complete()();

      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_88_1();

      __asm { BRAA            X1, X16 }

      return result;
  }

  OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v24, v25, v26);
  OUTLINED_FUNCTION_62();
LABEL_23:
  v43 = *(v1 + 208);
  v42 = *(v1 + 216);
  v44 = *(v1 + 200);

  *(v42 + 16) = v44;
  *(v42 + 24) = v43;
  *(v42 + 32) = 32;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF6D658()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v4 = *(v3 + 256);
  v5 = *v0;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v8 + 272) = v7;

  v9 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCF6D7E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 296) = v0;

  if (v0)
  {
    v7 = sub_1DCF6DDF0;
  }

  else
  {

    v7 = sub_1DCF6D8EC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCF6D8EC()
{
  sub_1DCAFF9E8((v1 + 56), v1 + 16);
  v2 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  if (sub_1DCB651D0(v2))
  {
    if (qword_1EDE4F6A8 != -1)
    {
      swift_once();
    }

    v3 = *(v1 + 200);
    v4 = [*(v3 + 24) typeName];
    sub_1DD0DDFBC();

    *(v1 + 304) = *(v3 + 16);
    *(v1 + 136) = 0u;
    *(v1 + 152) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 128) = 0;
    *(v1 + 96) = 0u;
    sub_1DD0DCF8C();
  }

  [OUTLINED_FUNCTION_18_46() _intentResponseCode];
  type metadata accessor for RouteConfirmIntentResponseFlow.RouteConfirmIntentError(0, *(v0 + 80), *(v0 + 88), v5);
  OUTLINED_FUNCTION_0_108();
  WitnessTable = swift_getWitnessTable();
  v7 = OUTLINED_FUNCTION_240(WitnessTable);
  OUTLINED_FUNCTION_13_68(v7, v8);
  static ExecuteResponse.complete()();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  OUTLINED_FUNCTION_29();

  return v9();
}

uint64_t sub_1DCF6DBF8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  sub_1DCB16D50(v2 + 96, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB16D50(v2 + 136, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF6DD48()
{
  OUTLINED_FUNCTION_39();
  [OUTLINED_FUNCTION_18_46() _intentResponseCode];
  type metadata accessor for RouteConfirmIntentResponseFlow.RouteConfirmIntentError(0, *(v0 + 80), *(v0 + 88), v2);
  OUTLINED_FUNCTION_0_108();
  WitnessTable = swift_getWitnessTable();
  v4 = OUTLINED_FUNCTION_240(WitnessTable);
  OUTLINED_FUNCTION_13_68(v4, v5);
  static ExecuteResponse.complete()();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCF6DDF0()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 296);
  v2 = *(v0 + 216);

  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  v5 = *(v2 + 32);
  *(v2 + 32) = 0x80;
  sub_1DCB3C730(v3, v4, v5);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCF6DE84(uint64_t a1, void *a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  v4[10] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCB3D2C0, 0, 0);
}

uint64_t sub_1DCF6DEF8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *a2;
  v4[6] = *a2;
  v6 = *(v5 + 80);
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF6DFF4, 0, 0);
}

void sub_1DCF6DFF4()
{
  v1 = v0[4];
  (*(v0[8] + 16))(v0[9], v0[3] + *(*v0[3] + 104), v0[7]);
  v0[10] = *(v1 + 16);
  v0[11] = *(v1 + 24);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF6E17C()
{
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = v5[11];
  v7 = v5[9];
  v8 = v5[8];
  v9 = v5[7];
  v10 = *v1;
  OUTLINED_FUNCTION_27();
  *v11 = v10;
  *(v3 + 104) = v0;

  (*(v8 + 8))(v7, v9);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCF6E35C, 0, 0);
  }

  else
  {

    v12 = *(v10 + 8);

    return v12();
  }
}

uint64_t sub_1DCF6E35C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

void sub_1DCF6E3F8(__int128 *a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  v3 = v1;
  sub_1DCF6E438(&v2);
}

void sub_1DCF6E438(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 32);
  if ((v3 & 0xE0) != 0x40)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v9 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v9, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  if (!v6)
  {
    sub_1DCF6EBE0(*(v2 + 16), *(v2 + 24), v3);
    sub_1DCBB12F4(v4, v5, 0);
    sub_1DCB3BBC0(v5);
    sub_1DCB3C730(v7, v8, v3);
    sub_1DCBB1310(v4, v5, 0);
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    v3 = *(v2 + 32);
  }

  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  *(v2 + 32) = v6 | 0x60;
  sub_1DCBB12F4(v4, v5, v6);

  sub_1DCB3C730(v7, v8, v3);
}

unint64_t sub_1DCF6E750(uint64_t a1)
{
  v2 = *v1;
  switch((*(v1 + 16) >> 3) & 3)
  {
    case 1:
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](0xD000000000000054, 0x80000001DD125BD0);
      type metadata accessor for RouteConfirmIntentResponseFlow.State(0, *(a1 + 16), *(a1 + 24), v9);
      v10 = sub_1DCF6E98C();
      MEMORY[0x1E12A6780](v10);

      result = 0;
      break;
    case 2:
      v11 = 0;
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](0xD000000000000037, 0x80000001DD125B90);
      type metadata accessor for INIntentResponseCode(0);
      sub_1DD0DEDBC();
      goto LABEL_12;
    case 3:
      result = 0xD00000000000003DLL;
      break;
    default:
      v3 = 0xEC00000064656966;
      v4 = 0x69636570736E752ELL;
      if (v2 == 5)
      {
        v4 = 0x6572756C6961662ELL;
        v3 = 0xE800000000000000;
      }

      if (v2 == 7)
      {
        v5 = 0x49656C646E61682ELL;
      }

      else
      {
        v5 = v4;
      }

      if (v2 == 7)
      {
        v6 = 0xEC0000007070416ELL;
      }

      else
      {
        v6 = v3;
      }

      sub_1DD0DEC1C();

      v11 = 0xD00000000000002FLL;
      MEMORY[0x1E12A6780](v5, v6);

      MEMORY[0x1E12A6780](46, 0xE100000000000000);
LABEL_12:
      result = v11;
      break;
  }

  return result;
}

unint64_t sub_1DCF6E98C()
{
  v1 = *(v0 + 16);
  result = 0x646574726174732ELL;
  switch(v1 >> 5)
  {
    case 1u:
      result = 0x6D7269666E6F632ELL;
      break;
    case 2u:
      result = 0xD000000000000020;
      break;
    case 3u:
      result = 0x74656C706D6F632ELL;
      break;
    case 4u:
      if (*(v0 + 8))
      {
        result = 0x64656C646E61682ELL;
      }

      else
      {
        result = 0x6C646E61686E752ELL;
      }

      break;
    case 5u:
      if (v1 == 160 && *v0 == 0)
      {
        result = 0x6C616974696E692ELL;
      }

      else
      {
        result = 0x6C6C65636E61632ELL;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t *sub_1DCF6EAD8()
{
  v1 = *v0;
  sub_1DCB3C730(v0[2], v0[3], *(v0 + 32));
  OUTLINED_FUNCTION_66();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(v2 + 104));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v3 + 112)));
  OUTLINED_FUNCTION_66();

  return v0;
}

uint64_t sub_1DCF6EB88()
{
  sub_1DCF6EAD8();

  return swift_deallocClassInstance();
}

id sub_1DCF6EBE0(id result, uint64_t a2, unsigned __int8 a3)
{
  switch(a3 >> 5)
  {
    case 0:
    case 1:
      sub_1DD0DCF8C();
    case 2:

      sub_1DD0DCF8C();
    case 3:
      v3 = a3 & 0x1F;

      result = sub_1DCBB12F4(result, a2, v3);
      break;
    case 4:

      result = result;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCF6ECFC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3B && *(a1 + 17))
    {
      v2 = *a1 + 58;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 16) >> 2) & 7))) ^ 0x3F;
      if (v2 >= 0x3A)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DCF6ED48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3A)
  {
    *(result + 16) = 0;
    *result = a2 - 59;
    *(result + 8) = 0;
    if (a3 >= 0x3B)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3B)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1DCF6ED9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1DCF6EDC8(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    v2 = *(result + 16) & 3 | (32 * a2);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    v2 = -96;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_1DCF6EEA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCF6CAD8(a1);
}

uint64_t sub_1DCF6EF64(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCF6EFDC()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_65_0(v3);

  return sub_1DCF6DEF8(v5, v6, v7, v1);
}

unint64_t sub_1DCF6F074()
{
  result = qword_1ECCAAF80[0];
  if (!qword_1ECCAAF80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCAAF80);
  }

  return result;
}

id sub_1DCF6F0D0(id result, uint64_t a2, char a3)
{
  if ((a3 & 0x18) == 8)
  {
    return sub_1DCF6EBE0(result, a2, a3 & 0xE7);
  }

  return result;
}

void sub_1DCF6F0F8(void *a1, void *a2, char a3)
{
  if ((a3 & 0x18) == 8)
  {
    sub_1DCB3C730(a1, a2, a3 & 0xE7);
  }
}

uint64_t sub_1DCF6F110(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  v6 = OUTLINED_FUNCTION_68();
  v7(v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t *sub_1DCF6F188(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  a4(*a2, v8, v9);
  v10 = *a1;
  v11 = a1[1];
  *a1 = v7;
  a1[1] = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v9;
  a5(v10, v11, v12);
  return a1;
}

uint64_t *sub_1DCF6F20C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = a1[1];
  *a1 = *a2;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  a4(v6, v7, v8);
  return a1;
}

uint64_t sub_1DCF6F258(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 5 && *(a1 + 17))
    {
      v2 = *a1 + 4;
    }

    else
    {
      v2 = (*(a1 + 16) & 4 | (*(a1 + 16) >> 3) & 3) ^ 7;
      if (v2 >= 4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DCF6F2A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 4)
  {
    *(result + 16) = 0;
    *result = a2 - 5;
    *(result + 8) = 0;
    if (a3 >= 5)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 5)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (8 * ((3 * a2) & 3)) | 4;
    }
  }

  return result;
}

uint64_t sub_1DCF6F2F0(uint64_t a1)
{
  v1 = (*(a1 + 16) >> 3) & 3;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DCF6F31C(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 16) & 0xE3 | (8 * a2);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    v2 = 24;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_1DCF6F344(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCF6F3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  v7 = v4[8];
  v8 = v5[9];
  v9 = v5[10];
  v10 = v5[11];
  v11 = *(v5 + 112);
  if (v11 == 2)
  {
    v23 = OUTLINED_FUNCTION_20_34();
    sub_1DCF349BC(v23, v24, v25, v10);
  }

  else if (v11 == 3)
  {
    v22 = v7;
  }

  else
  {
    v12 = v5[12];
    v13 = v5[13];
    if (v11 != 4 || v7 != 1 || (v9 | v8 | v10 | v12 | v13) != 0)
    {
      v16 = type metadata accessor for RouteResolutionResultFlow.ResolutionResultProcessingError(0, *(v6 + 80), *(v6 + 88), a4);
      OUTLINED_FUNCTION_1_117();
      WitnessTable = swift_getWitnessTable();
      OUTLINED_FUNCTION_34(v16, WitnessTable);
      *v18 = v7;
      *(v18 + 8) = v8;
      *(v18 + 16) = v9;
      *(v18 + 24) = v10;
      *(v18 + 32) = v12;
      *(v18 + 40) = v13;
      *(v18 + 48) = v11 | 0x80;
      v19 = OUTLINED_FUNCTION_20_34();
      sub_1DCB903F8(v19, v20, v21, v10, v12, v13, v11);
    }
  }

  return OUTLINED_FUNCTION_20_34();
}

void sub_1DCF6F538(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1DCF6F640();
}

uint64_t sub_1DCF6F680(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB924B0;

  return sub_1DCB8FDD8(a1);
}

uint64_t sub_1DCF6F71C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 400) = v3;

  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DCF6F804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_111();
  sub_1DCF6FCFC();
}

uint64_t sub_1DCF6F894()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 416) = v3;

  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DCF6F97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_111();
  sub_1DCF7065C();
}

uint64_t sub_1DCF6FA0C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 448) = v3;

  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DCF6FAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  v10 = OUTLINED_FUNCTION_3_111();
  sub_1DCB9218C(v10);
}

uint64_t sub_1DCF6FB84()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 464) = v3;

  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DCF6FC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  v10 = OUTLINED_FUNCTION_3_111();
  sub_1DCB9218C(v10);
}

void sub_1DCF6FD3C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v6 = v4;
  sub_1DCF6FD7C(&v5, a2, a3, a4);
}

void sub_1DCF6FD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  v25 = v4[8];
  v7 = v4[10];
  v8 = v4[11];
  v9 = v4[12];
  v10 = v4[13];
  v11 = *(v4 + 112);
  if (v11 == 1)
  {
    sub_1DD0DCF8C();
  }

  v12 = v5[9];
  type metadata accessor for RouteResolutionResultFlow.ResolutionResultProcessingError(0, *(v6 + 80), *(v6 + 88), a4);
  swift_getWitnessTable();
  v13 = swift_allocError();
  *v14 = v25;
  *(v14 + 8) = v12;
  v15 = v12;
  *(v14 + 16) = v7;
  *(v14 + 24) = v8;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  *(v14 + 48) = v11 | 0x80;
  v16 = v5[8];
  v17 = v5[9];
  v24 = v5[10];
  v18 = v8;
  v19 = v5[11];
  v20 = v5[12];
  v21 = v5[13];
  v5[8] = v13;
  *(v5 + 9) = 0u;
  *(v5 + 11) = 0u;
  v5[13] = 0;
  v22 = v7;
  v23 = *(v5 + 112);
  *(v5 + 112) = 3;
  sub_1DCB903F8(v25, v15, v22, v18, v9, v10, v11);

  sub_1DCB17238(v16, v17, v24, v19, v20, v21, v23);
}

void sub_1DCF7069C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DCAFC000, v5, v6, "RouteResolutionResultFlow received a result from a prompting flow", v7, 2u);
    MEMORY[0x1E12A8390](v7, -1, -1);
  }

  v9 = v1 + 8;
  v10 = v1[8];
  v11 = v1[10];
  v29 = v1[11];
  v12 = v1[13];
  v13 = *(v1 + 112);
  if (v13 == 1)
  {
    sub_1DD0DCF8C();
  }

  v14 = v1[9];
  v15 = v1[12];
  type metadata accessor for RouteResolutionResultFlow.ResolutionResultProcessingError(0, *(v3 + 80), *(v3 + 88), v8);
  swift_getWitnessTable();
  v16 = swift_allocError();
  *v17 = v10;
  *(v17 + 8) = v14;
  v18 = v14;
  *(v17 + 16) = v11;
  *(v17 + 24) = v29;
  v19 = v15;
  *(v17 + 32) = v15;
  *(v17 + 40) = v12;
  *(v17 + 48) = v13 | 0x80;
  v20 = v1[8];
  v21 = v1[9];
  v22 = v10;
  v23 = v1[10];
  v24 = v2[11];
  v25 = v2;
  v26 = v2[12];
  v28 = v25[13];
  v25[8] = v16;
  *(v9 + 1) = 0u;
  *(v9 + 3) = 0u;
  v9[5] = 0;
  v27 = *(v25 + 112);
  *(v25 + 112) = 3;
  sub_1DCB903F8(v22, v18, v11, v29, v19, v12, v13);

  sub_1DCB17238(v20, v21, v23, v24, v26, v28, v27);
}

void sub_1DCF70DB4(void *a1, id a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 == 2)
  {
  }

  else if (a4 <= 1u)
  {
  }
}

uint64_t sub_1DCF70E38(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 49))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DCF70E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCF70ECC(uint64_t a1)
{
  if (*(a1 + 48) <= 3u)
  {
    return *(a1 + 48);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1DCF70EE4(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1DCF70FC0@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = sub_1DCF6F3E4(a2, a3, a4, a5);
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_1DCF70FF4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCF71054()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1DCB924B0;

  return sub_1DCF6F680(v2);
}

void sub_1DCF710E8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 >> 6 == 2)
  {
    sub_1DCB903F8(a1, a2, a3, a4, a5, a6, a7 & 0x3F);
  }

  else if (!(a7 >> 6))
  {
  }
}

void sub_1DCF71144(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 >> 6 == 2)
  {
    sub_1DCB17238(a1, a2, a3, a4, a5, a6, a7 & 0x3F);
  }

  else if (!(a7 >> 6))
  {
  }
}

uint64_t sub_1DCF71180(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = *(a2 + 48);
  a4(*a2, v6, v7, v8, v9, v10, v11);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  return a1;
}

uint64_t *sub_1DCF71230(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  v13 = *(a2 + 48);
  OUTLINED_FUNCTION_27_35();
  v14();
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v18 = a1[3];
  v19 = a1[4];
  v20 = a1[5];
  *a1 = v7;
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v11;
  a1[5] = v12;
  v21 = *(a1 + 48);
  *(a1 + 48) = v13;
  a5(v15, v16, v17, v18, v19, v20, v21);
  return a1;
}

uint64_t *sub_1DCF712E4(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a2 + 48);
  v7 = *a1;
  v9 = a1[1];
  v8 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v13 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 1) = v13;
  *(a1 + 2) = *(a2 + 32);
  v14 = *(a1 + 48);
  *(a1 + 48) = v6;
  a4(v7, v9, v8, v10, v11, v12, v14);
  return a1;
}

uint64_t sub_1DCF71344(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1E && *(a1 + 49))
    {
      v2 = *a1 + 29;
    }

    else
    {
      v2 = ((*(a1 + 48) >> 1) & 0x1C | (*(a1 + 48) >> 6)) ^ 0x1F;
      if (v2 >= 0x1D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DCF71390(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 30;
    if (a3 >= 0x1E)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t initializeWithCopy for ResolutionProcessingOutcome(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1DCF349BC(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for ResolutionProcessingOutcome(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1DCF349BC(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v10 = *(a1 + 24);
  *(a1 + 24) = v6;
  sub_1DCF70DB4(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for ResolutionProcessingOutcome(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v8 = *(a1 + 24);
  *(a1 + 24) = v4;
  sub_1DCF70DB4(v5, v7, v6, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for ResolutionProcessingOutcome(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 25))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ResolutionProcessingOutcome(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCF715E8(uint64_t a1)
{
  if (*(a1 + 24) <= 2u)
  {
    return *(a1 + 24);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1DCF71600(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1DCF71630(uint64_t result, uint64_t a2, void (*a3)(uint64_t *, uint64_t))
{
  v6 = *(result + 16);
  v7 = (result + 32);
  if (v6)
  {
    while (1)
    {
      v8 = *v7;

      a3(&v8, a2);
      if (v3)
      {
        break;
      }

      ++v7;
      if (!--v6)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1DCF716C8(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  for (i = (result + 40); v3; --v3)
  {
    v6 = *(i - 1);
    v5 = *i;
    v7 = *a2;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DCB34108(0, *(v7 + 16) + 1, 1, v7);
      v7 = v12;
      *a2 = v12;
    }

    v10 = *(v7 + 16);
    v9 = *(v7 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_1DCB34108(v9 > 1, v10 + 1, 1, v7);
      v7 = v13;
      *a2 = v13;
    }

    *(v7 + 16) = v10 + 1;
    v11 = v7 + 16 * v10;
    *(v11 + 32) = v6;
    *(v11 + 40) = v5;

    i += 2;
  }

  return result;
}

id sub_1DCF717D0()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  qword_1EDE49288 = result;
  return result;
}

id sub_1DCF71804(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1DD0DDF8C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() applicationProxyForIdentifier_];

  return v3;
}

id sub_1DCF71874()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69C7710]) init];
  sub_1DCB2C534(0, 0xE000000000000000, v0, &selRef_setAppName_);
  sub_1DCB2C534(0, 0xE000000000000000, v0, &selRef_setDisplayAppName_);
  v1 = sub_1DD0DDE9C();
  sub_1DCF7323C(v1, v0);
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7AB8]) init];
  v3 = OUTLINED_FUNCTION_86();
  sub_1DCF731E4(v3, v4, v2);
  [v0 setAppIdentifyingInfo_];

  return v0;
}

id sub_1DCF71954(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DD0DAE6C();
  v4 = [v2 initWithURL_];

  v5 = sub_1DD0DAECC();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_1DCF719F0(uint64_t a1, void *a2)
{
  v22 = a2;
  v3 = sub_1DD0DD85C();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DD0DD88C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4EC80 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_1EDE57DD0);
  (*(v8 + 16))(v11, v12, v7);
  sub_1DD0DD84C();
  v13 = swift_slowAlloc();
  *v13 = 0;
  v14 = sub_1DD0DD87C();
  v15 = sub_1DD0DE7FC();
  v16 = sub_1DD0DD83C();
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v14, v15, v16, "AppNameMapCreate", "", v13, 2u);
  sub_1DCF72F50(a1, v22, &v25);
  v17 = sub_1DD0DE7EC();
  v18 = sub_1DD0DD83C();
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v14, v17, v18, "AppNameMapCreate", "", v13, 2u);

  v19 = v25;
  MEMORY[0x1E12A8390](v13, -1, -1);
  (*(v23 + 8))(v6, v24);
  (*(v8 + 8))(v11, v7);
  return v19;
}

uint64_t sub_1DCF71C8C(uint64_t a1)
{
  result = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  if (*(a1 + 24))
  {
    sub_1DCB192E4(a1, v8);
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB80, &qword_1DD0E7AE8);
      if (swift_dynamicCast())
      {
        sub_1DCF71630(v7, &v10, sub_1DCF72D7C);

        return v10;
      }
    }

    else
    {
      sub_1DCC8BC14(v8);
    }

    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v3 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v3, qword_1EDE57E00);
    v4 = sub_1DD0DD8EC();
    v5 = sub_1DD0DE6CC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DCAFC000, v4, v5, "App alternativeAppNamesParser input not a map", v6, 2u);
      MEMORY[0x1E12A8390](v6, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1DCF71E18(uint64_t a1)
{
  v9 = MEMORY[0x1E69E7CC0];
  sub_1DCB192E4(a1, v7);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB80, &qword_1DD0E7AE8);
    if (swift_dynamicCast())
    {
      sub_1DCF71630(v6, &v9, sub_1DCF72A5C);

      return v9;
    }
  }

  else
  {
    sub_1DCC8BC14(v7);
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "App urlTypesSchemesParser <NIL> input", v5, 2u);
    MEMORY[0x1E12A8390](v5, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

id sub_1DCF71F94(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69C7A90]) init];
  sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (sub_1DCF73178(0xD000000000000016, 0x80000001DD125DD0, ObjCClassFromMetadata, a2))
  {
    sub_1DD0DEA6C();
    swift_unknownObjectRelease();
    sub_1DCB0DF6C(v42, v40);
    if (!swift_dynamicCast())
    {
      if (qword_1EDE4F900 == -1)
      {
LABEL_28:
        v26 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v26, qword_1EDE57E00);
        v27 = sub_1DD0DD8EC();
        v28 = sub_1DD0DE6CC();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_1DCAFC000, v27, v28, "App siriSupportParser entitlement not a number", v29, 2u);
          MEMORY[0x1E12A8390](v29, -1, -1);
        }

        goto LABEL_44;
      }

LABEL_49:
      swift_once();
      goto LABEL_28;
    }

    if ([v39 BOOLValue])
    {
      sub_1DCB192E4(a1, v40);
      if (v41)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
        if (swift_dynamicCast())
        {
          sub_1DCB90D40();

          if (v41)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
            if (swift_dynamicCast())
            {
              v6 = 0;
              v7 = v39[2];
              v8 = MEMORY[0x1E69E7CC0];
LABEL_9:
              v9 = &v39[2 * v6 + 5];
              while (1)
              {
                if (v7 == v6)
                {

                  v37 = sub_1DD0DE2DC();
                  [v4 setUseCases_];

                  __swift_destroy_boxed_opaque_existential_1Tm(v42);

                  return v4;
                }

                if (v6 >= v7)
                {
                  break;
                }

                v10 = v6 + 1;
                if (__OFADD__(v6, 1))
                {
                  goto LABEL_48;
                }

                v12 = *(v9 - 1);
                v11 = *v9;
                v13 = HIBYTE(*v9) & 0xF;
                if ((*v9 & 0x2000000000000000) == 0)
                {
                  v13 = v12 & 0xFFFFFFFFFFFFLL;
                }

                ++v6;
                v9 += 2;
                if (v13)
                {
                  swift_bridgeObjectRetain_n();
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1DCB34108(0, *(v8 + 16) + 1, 1, v8);
                    v8 = v18;
                  }

                  v14 = *(v8 + 16);
                  v15 = *(v8 + 24);
                  v16 = v14 + 1;
                  if (v14 >= v15 >> 1)
                  {
                    v38 = v14 + 1;
                    v19 = v8;
                    v20 = *(v8 + 16);
                    sub_1DCB34108(v15 > 1, v14 + 1, 1, v19);
                    v14 = v20;
                    v16 = v38;
                    v8 = v21;
                  }

                  *(v8 + 16) = v16;
                  v17 = v8 + 16 * v14;
                  *(v17 + 32) = v12;
                  *(v17 + 40) = v11;

                  v6 = v10;
                  goto LABEL_9;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }
          }

          else
          {
            sub_1DCC8BC14(v40);
          }

          if (qword_1EDE4F900 != -1)
          {
            swift_once();
          }

          v35 = sub_1DD0DD8FC();
          __swift_project_value_buffer(v35, qword_1EDE57E00);
          v31 = sub_1DD0DD8EC();
          v32 = sub_1DD0DE6CC();
          if (!os_log_type_enabled(v31, v32))
          {
LABEL_43:

LABEL_44:
            __swift_destroy_boxed_opaque_existential_1Tm(v42);
            return v4;
          }

          v33 = swift_slowAlloc();
          *v33 = 0;
          v34 = "App siriSupportParser Intents is not an Array";
LABEL_42:
          _os_log_impl(&dword_1DCAFC000, v31, v32, v34, v33, 2u);
          MEMORY[0x1E12A8390](v33, -1, -1);
          goto LABEL_43;
        }
      }

      else
      {
        sub_1DCC8BC14(v40);
      }

      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v30 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v30, qword_1EDE57E00);
      v31 = sub_1DD0DD8EC();
      v32 = sub_1DD0DE6CC();
      if (!os_log_type_enabled(v31, v32))
      {
        goto LABEL_43;
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "App siriSupportParser <NIL> input";
      goto LABEL_42;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v42);
  }

  else if (*(a1 + 24))
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v22 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v22, qword_1EDE57E00);
    v23 = sub_1DD0DD8EC();
    v24 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DCAFC000, v23, v24, "App siriSupportParser intents declared without an entitlement", v25, 2u);
      MEMORY[0x1E12A8390](v25, -1, -1);
    }
  }

  return v4;
}

void sub_1DCF72570(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7AB8]) init];
  if (!*MEMORY[0x1E695E4F0])
  {
    __break(1u);
    goto LABEL_33;
  }

  v3 = v2;
  if ([a1 objectForInfoDictionaryKey_])
  {
    sub_1DD0DEA6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (*(&v13 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_1DCF731E4(v10, v11, v3);
      if (*MEMORY[0x1E695E148])
      {
        if ([a1 objectForInfoDictionaryKey_])
        {
          sub_1DD0DEA6C();
          swift_unknownObjectRelease();
        }

        else
        {
          v12 = 0u;
          v13 = 0u;
        }

        v14 = v12;
        v15 = v13;
        if (*(&v13 + 1))
        {
          if (swift_dynamicCast())
          {
            v8 = sub_1DD0DDF8C();

            goto LABEL_22;
          }
        }

        else
        {
          sub_1DCC8BC14(&v14);
        }

        v8 = 0;
LABEL_22:
        [v3 setVersion_];

        if (*MEMORY[0x1E695E500])
        {
          if ([a1 objectForInfoDictionaryKey_])
          {
            sub_1DD0DEA6C();
            swift_unknownObjectRelease();
          }

          else
          {
            v12 = 0u;
            v13 = 0u;
          }

          v14 = v12;
          v15 = v13;
          if (*(&v13 + 1))
          {
            if (swift_dynamicCast())
            {
              v9 = sub_1DD0DDF8C();

LABEL_31:
              [v3 setBuildNumber_];

              sub_1DCB2C534(v10, v11, v3, &selRef_setClientIdentifier_);
              return;
            }
          }

          else
          {
            sub_1DCC8BC14(&v14);
          }

          v9 = 0;
          goto LABEL_31;
        }

        goto LABEL_34;
      }

LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }
  }

  else
  {
    sub_1DCC8BC14(&v14);
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DCAFC000, v5, v6, "App appIdentifyingInfoParser cannot parse BundleId", v7, 2u);
    MEMORY[0x1E12A8390](v7, -1, -1);
  }
}

id sub_1DCF728BC(void *a1)
{
  sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_1DCF73178(0xD000000000000023, 0x80000001DD125DA0, ObjCClassFromMetadata, a1);
  if (v3)
  {
    sub_1DD0DEA6C();
    swift_unknownObjectRelease();
    sub_1DCB0DF6C(v11, v10);
    if (swift_dynamicCast())
    {
      v4 = v9;
      v3 = [v9 BOOLValue];
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v5 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v5, qword_1EDE57E00);
      v4 = sub_1DD0DD8EC();
      v6 = sub_1DD0DE6CC();
      if (os_log_type_enabled(v4, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1DCAFC000, v4, v6, "App universalSearchParser entitlement not a number", v7, 2u);
        MEMORY[0x1E12A8390](v7, -1, -1);
      }

      v3 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  return v3;
}

void sub_1DCF72A5C(uint64_t *a1, uint64_t *a2)
{
  if (*MEMORY[0x1E695E190])
  {
    sub_1DD0DDFBC();
    sub_1DCB90D40();

    if (v16[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
      if (swift_dynamicCast())
      {
        if (*(v17 + 16))
        {
          sub_1DCF716C8(v17, a2);

          return;
        }

        if (qword_1EDE4F900 != -1)
        {
          swift_once();
        }

        v12 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v12, qword_1EDE57E00);

        v4 = sub_1DD0DD8EC();
        v5 = sub_1DD0DE6CC();

        if (!os_log_type_enabled(v4, v5))
        {
          goto LABEL_12;
        }

        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v16[0] = v7;
        *v6 = 136315138;
        v13 = sub_1DD0DDE7C();
        v15 = sub_1DCB10E9C(v13, v14, v16);

        *(v6 + 4) = v15;
        v11 = "App urlTypesSchemesParser empty urlTypeSchemes %s";
        goto LABEL_11;
      }
    }

    else
    {
      sub_1DCC8BC14(v16);
    }

    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v3 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v3, qword_1EDE57E00);

    v4 = sub_1DD0DD8EC();
    v5 = sub_1DD0DE6CC();

    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_12;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16[0] = v7;
    *v6 = 136315138;
    v8 = sub_1DD0DDE7C();
    v10 = sub_1DCB10E9C(v8, v9, v16);

    *(v6 + 4) = v10;
    v11 = "App urlTypesSchemesParser invalid urlTypeSchemes %s";
LABEL_11:
    _os_log_impl(&dword_1DCAFC000, v4, v5, v11, v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A8390](v7, -1, -1);
    MEMORY[0x1E12A8390](v6, -1, -1);
LABEL_12:

    return;
  }

  __break(1u);
}

unint64_t sub_1DCF72D7C(unint64_t result, void *a2)
{
  v2 = *result;
  if (*(*result + 16))
  {
    result = sub_1DCB21038(0xD000000000000015, 0x80000001DD125D60);
    if (v3)
    {
      sub_1DCB0DF6C(*(v2 + 56) + 32 * result, v10);
      result = swift_dynamicCast();
      if (result)
      {
        v4 = HIBYTE(v9) & 0xF;
        if ((v9 & 0x2000000000000000) == 0)
        {
          v4 = *v8 & 0xFFFFFFFFFFFFLL;
        }

        if (!v4)
        {
        }

        v5 = [objc_allocWithZone(MEMORY[0x1E69C7AA0]) init];
        v6 = sub_1DD0DDF8C();

        [v5 setPhrase_];

        sub_1DCB90D40();
        if (v11)
        {
          if (swift_dynamicCast())
          {
            v7 = sub_1DD0DDF8C();

LABEL_13:
            [v5 setPronunciation_];

            MEMORY[0x1E12A6920]();
            sub_1DCBBF95C();
            return sub_1DD0DE3AC();
          }
        }

        else
        {
          sub_1DCC8BC14(v10);
        }

        v7 = 0;
        goto LABEL_13;
      }
    }
  }

  return result;
}

uint64_t sub_1DCF72F50@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_1DD0DDE9C();
  v5 = result;
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_14:
    *a3 = v5;
    return result;
  }

  v7 = (a1 + 40);
  while (1)
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DD0E07C0;
    *(v10 + 32) = v8;
    *(v10 + 40) = v9;
    swift_bridgeObjectRetain_n();
    v11 = sub_1DCF735F8(v10, 0, a2);
    if (!v12)
    {
      goto LABEL_10;
    }

    v26 = v11;
    v27 = v12;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_1DCB21038(v8, v9);
    if (__OFADD__(v5[2], (v14 & 1) == 0))
    {
      break;
    }

    v15 = v13;
    v16 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2810, &qword_1DD0F4B30);
    result = sub_1DD0DEDCC();
    if (result)
    {
      result = sub_1DCB21038(v8, v9);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_17;
      }

      v15 = result;
    }

    if (v16)
    {

      v18 = (v5[7] + 16 * v15);
      *v18 = v26;
      v18[1] = v27;
LABEL_10:

      goto LABEL_13;
    }

    v5[(v15 >> 6) + 8] |= 1 << v15;
    v19 = (v5[6] + 16 * v15);
    *v19 = v8;
    v19[1] = v9;
    v20 = (v5[7] + 16 * v15);
    *v20 = v26;
    v20[1] = v27;
    v21 = v5[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_16;
    }

    v5[2] = v23;
LABEL_13:
    v7 += 2;
    if (!--v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1DD0DF12C();
  __break(1u);
  return result;
}

id sub_1DCF73178(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1DD0DDF8C();

  v7 = [a4 entitlementValueForKey:v6 ofClass:a3];

  return v7;
}

void sub_1DCF731E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setBundleId_];
}

void sub_1DCF7323C(uint64_t a1, void *a2)
{
  v3 = sub_1DD0DDE4C();

  [a2 setAppNameMap_];
}

uint64_t sub_1DCF732B4(void *a1)
{
  v1 = [a1 localizedInfoDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDE6C();

  return v3;
}

void sub_1DCF73320(uint64_t a1, void *a2)
{
  sub_1DCB10E5C(0, &qword_1EDE461A8, 0x1E69C7AA0);
  v3 = sub_1DD0DE2DC();

  [a2 setAppNameSynonyms_];
}

void sub_1DCF733A4(uint64_t a1, void *a2)
{
  v3 = sub_1DD0DE2DC();

  [a2 setSupportedSchemes_];
}

uint64_t sub_1DCF73410(void *a1)
{
  v2 = [a1 localizedName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD0DDFBC();

  return v3;
}

uint64_t sub_1DCF73480(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_1DCB10E5C(0, a3, a4);
  v8 = sub_1DD0DE2EC();

  return v8;
}

uint64_t sub_1DCF734F4(void *a1)
{
  v1 = [a1 supportedSchemes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DE2EC();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for SAAppInfoFactory(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1DCF735F8(uint64_t a1, char a2, void *a3)
{
  v5 = sub_1DD0DE2DC();

  v6 = [a3 localizedNameWithPreferredLocalizations:v5 useShortNameOnly:a2 & 1];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_1DD0DDFBC();

  return v7;
}

id static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  v16 = [objc_allocWithZone(MEMORY[0x1E69C9F00]) init];
  sub_1DD0DB03C();
  v17 = sub_1DD0DAFFC();
  v19 = v18;
  (*(v10 + 8))(v15, v8);
  sub_1DCB2C534(v17, v19, v16, &selRef_setCardId_);
  sub_1DCF73D88(a1, v16);
  if (a4)
  {
    v20 = [objc_allocWithZone(MEMORY[0x1E69C7BA8]) init];
    sub_1DCF73DF4(a3, a4, v20);
    v21 = static SACardSnippet.makeFromCard(card:shouldGenerateAceId:sash:referencedCommands:)(v16, 1, v20, a5);

    v16 = v20;
  }

  else
  {
    v21 = static SACardSnippet.makeFromCard(card:shouldGenerateAceId:sash:referencedCommands:)(v16, 1, 0, a5);
  }

  return v21;
}

id static SACardSnippet.makeFromCard(card:shouldGenerateAceId:sash:referencedCommands:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  v16 = [objc_allocWithZone(MEMORY[0x1E69C7770]) init];
  v17 = [objc_allocWithZone(MEMORY[0x1E69CA5E0]) initWithFacade_];
  v18 = v17;
  if (v17)
  {
    v32 = v8;
    v19 = a2;
    v20 = a3;
    v21 = a4;
    v22 = sub_1DCB3BE6C(v17);
    if (v23 >> 60 == 15)
    {
      v24 = 0;
    }

    else
    {
      v25 = v22;
      v26 = v23;
      v24 = sub_1DD0DAEFC();
      sub_1DCB2C520(v25, v26);
    }

    a4 = v21;
    a3 = v20;
    a2 = v19;
    v8 = v32;
  }

  else
  {
    v24 = 0;
  }

  [v16 setCardData_];

  if (a2)
  {
    v27 = v16;
    sub_1DD0DB03C();
    v28 = sub_1DD0DAFFC();
    v30 = v29;
    (*(v10 + 8))(v15, v8);
    sub_1DCB2C534(v28, v30, v27, &selRef_setAceId_);
  }

  if (a3)
  {
    [v16 setSash_];
  }

  if (sub_1DCB08B14(a4))
  {
    sub_1DCF73D10(a4, v16);
  }

  return v16;
}

id static SACardSnippet.makeFromCardSectionsWithIntentData(cardSections:intent:intentResponse:shouldGenerateAceId:)(uint64_t a1, void *a2, void *a3, char a4)
{
  v8 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  v16 = [objc_allocWithZone(MEMORY[0x1E69C9F00]) init];
  sub_1DD0DB03C();
  v17 = sub_1DD0DAFFC();
  v19 = v18;
  (*(v10 + 8))(v15, v8);
  sub_1DCB2C534(v17, v19, v16, &selRef_setCardId_);
  sub_1DCF73D88(a1, v16);
  v20 = sub_1DCB3BE6C([a2 backingStore]);
  v22 = 0;
  if (v21 >> 60 != 15)
  {
    v23 = v20;
    v24 = v21;
    v22 = sub_1DD0DAEFC();
    sub_1DCB2C520(v23, v24);
  }

  [v16 setIntentMessageData_];

  v25 = [a2 typeName];
  v26 = sub_1DD0DDFBC();
  v28 = v27;

  sub_1DCB2C534(v26, v28, v16, &selRef_setIntentMessageName_);
  if (!a3)
  {
    [v16 setIntentResponseMessageData_];
    goto LABEL_11;
  }

  result = [a3 backingStore];
  if (result)
  {
    v30 = sub_1DCB3BE6C(result);
    if (v31 >> 60 == 15)
    {
      v32 = 0;
    }

    else
    {
      v33 = v30;
      v34 = v31;
      v32 = sub_1DD0DAEFC();
      sub_1DCB2C520(v33, v34);
    }

    [v16 setIntentResponseMessageData_];

    sub_1DCF74F3C(a3);
    if (v35)
    {
      v36 = sub_1DD0DDF8C();

LABEL_12:
      [v16 setIntentResponseMessageName_];

      v37 = static SACardSnippet.makeFromCard(card:shouldGenerateAceId:sash:referencedCommands:)(v16, a4 & 1, 0, MEMORY[0x1E69E7CC0]);
      return v37;
    }

LABEL_11:
    v36 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_1DCF73D10(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
  v3 = sub_1DD0DE2DC();
  [a2 setReferencedCommands_];
}

void sub_1DCF73D88(uint64_t a1, void *a2)
{
  sub_1DCF73E4C();
  v3 = sub_1DD0DE2DC();
  [a2 setCardSections_];
}

void sub_1DCF73DF4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setApplicationBundleIdentifier_];
}

unint64_t sub_1DCF73E4C()
{
  result = qword_1EDE46208;
  if (!qword_1EDE46208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE46208);
  }

  return result;
}

uint64_t sub_1DCF73E90(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v7 = *(a1 + 24);
    v18 = MEMORY[0x1E69E7CC0];
    sub_1DD0DED0C();
    v8 = (v3 + 32);
    for (i = v4 - 1; ; --i)
    {
      memcpy(__dst, v8, 0xD9uLL);
      memcpy(v16, v8, 0xD9uLL);
      if (*(v7 + 16))
      {
        sub_1DCCE4A84(__dst, v15);
        v10 = sub_1DCB21038(0x79726F6765746163, 0xE800000000000000);
        if (v11)
        {
          v12 = (*(v7 + 56) + 16 * v10);
          v14 = *v12;
          v13 = v12[1];

          goto LABEL_8;
        }
      }

      else
      {
        sub_1DCCE4A84(__dst, v15);
      }

      v14 = 0;
      v13 = 0;
LABEL_8:
      sub_1DCF73FF4(v16, a2 & 1, v14, v13);

      sub_1DCCE4AE0(__dst);
      sub_1DD0DECDC();
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      sub_1DD0DECEC();
      if (!i)
      {
        return v18;
      }

      v8 += 224;
    }
  }

  return result;
}

id sub_1DCF73FF4(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v36[1] = a3;
  v40 = a2;
  v6 = sub_1DD0DB04C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[2];
  v41 = a1[3];
  v42 = v11;
  v12 = a1[5];
  v14 = a1[6];
  v13 = a1[7];
  v36[2] = a1[4];
  v37 = v14;
  v43 = v12;
  v44 = v13;
  v15 = a1[9];
  v36[0] = a1[8];
  v38 = v15;
  v39 = *(a1 + 80);
  v16 = [objc_allocWithZone(MEMORY[0x1E69C77A0]) init];
  sub_1DD0DB03C();
  v17 = sub_1DD0DAFFC();
  v19 = v18;
  v20 = *(v7 + 8);
  v20(v10, v6);
  sub_1DCB4D8E8(v17, v19, v16);

  v21 = sub_1DD0DDF8C();
  [v16 setDialogIdentifier_];

  if (a4)
  {
    v22 = sub_1DD0DDF8C();
  }

  else
  {
    v22 = 0;
  }

  [v16 setDialogCategory_];

  [v16 setSpokenOnly_];
  [v16 setCanUseServerTTS_];
  v23 = [objc_allocWithZone(MEMORY[0x1E69C77B0]) init];
  sub_1DD0DB03C();
  v24 = sub_1DD0DAFFC();
  v26 = v25;
  v20(v10, v6);
  sub_1DCB4D8E8(v24, v26, v23);
  sub_1DCB72D80(v42, v41, v23);
  if (v43)
  {
    v27 = sub_1DD0DDF8C();
  }

  else
  {
    v27 = 0;
  }

  [v23 setSpeakableTextOverride_];

  [v16 setContent_];
  v28 = v44;
  if (v44)
  {
    v29 = [objc_allocWithZone(MEMORY[0x1E69C77B0]) init];
    sub_1DD0DB03C();
    v30 = sub_1DD0DAFFC();
    v32 = v31;
    v20(v10, v6);
    sub_1DCB4D8E8(v30, v32, v29);

    sub_1DCB72D80(v37, v28, v29);
    if (v38)
    {
      v33 = sub_1DD0DDF8C();
    }

    else
    {
      v33 = 0;
    }

    [v29 setSpeakableTextOverride_];

    v34 = v29;
    [v16 setCaption_];
  }

  return v16;
}

id sub_1DCF74350(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = [objc_allocWithZone(MEMORY[0x1E69C7A50]) init];
  if (a4 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1DD0DAEFC();
  }

  [v11 setSessionHandoffData_];

  v13 = [objc_allocWithZone(MEMORY[0x1E69C7828]) init];
  [v13 setHandoffPayload_];
  sub_1DCF746EC(a1, a2, v13);
  sub_1DCF74744(a1, a2, v13);
  if (a6)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v14 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v14, qword_1EDE57E00);

    v15 = sub_1DD0DD8EC();
    v16 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1DCB10E9C(a5, a6, &v22);
      _os_log_impl(&dword_1DCAFC000, v15, v16, "Making handoff command with MultiUser target device : %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1E12A8390](v18, -1, -1);
      MEMORY[0x1E12A8390](v17, -1, -1);
    }

    v19 = [objc_allocWithZone(MEMORY[0x1E69C79B8]) init];
    sub_1DCF7479C(a5, a6, v19);
    v20 = v19;
    [v13 setTargetDevice_];
  }

  return v13;
}

id sub_1DCF745B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = sub_1DD0DE01C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD0DE00C();
  v15 = sub_1DD0DDFCC();
  v17 = v16;
  (*(v11 + 8))(v14, v10);
  v18 = sub_1DCF74350(a1, a2, v15, v17, a5, a6);
  sub_1DCB2C520(v15, v17);
  return v18;
}

void sub_1DCF746EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setLockScreenText_];
}

void sub_1DCF74744(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setNotificationText_];
}

void sub_1DCF7479C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setAssistantId_];
}

char *static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v54 - v11;
  v13 = sub_1DD0DB04C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1DD0DD1BC();
  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = v18;
  v9 = [objc_allocWithZone(MEMORY[0x1E69C7860]) init];
  sub_1DD0DB03C();
  v20 = sub_1DD0DAFFC();
  v22 = v21;
  (*(v14 + 8))(v17, v13);
  sub_1DCB4D8E8(v20, v22, v9);
  v23 = [objc_allocWithZone(MEMORY[0x1E69C7878]) init];
  v12 = [a2 typeName];
  v24 = sub_1DD0DDFBC();
  v26 = v25;

  sub_1DCB2C534(v24, v26, v23, &selRef_setTypeName_);
  v27 = sub_1DCB3BE6C([a2 backingStore]);
  if (v28 >> 60 == 15)
  {
    v29 = 0;
  }

  else
  {
    v12 = v27;
    v30 = v28;
    v29 = sub_1DD0DAEFC();
    sub_1DCB2C520(v12, v30);
  }

  [v23 setData_];

  [v9 setHandledIntent_];
  v31 = [objc_allocWithZone(MEMORY[0x1E69C7878]) init];
  if (!a3 || (v32 = sub_1DCF74F3C(a3), !v33))
  {

    v33 = 0x80000001DD125F00;
    v32 = 0xD00000000000001DLL;
  }

  sub_1DCB2C534(v32, v33, v31, &selRef_setTypeName_);
  if (a3)
  {
    v34 = [a3 backingStore];
    if (v34)
    {
      v35 = sub_1DCB3BE6C(v34);
      if (v36 >> 60 == 15)
      {
        a3 = 0;
      }

      else
      {
        v37 = v35;
        v38 = v36;
        a3 = sub_1DD0DAEFC();
        sub_1DCB2C520(v37, v38);
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_17:
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v44 = sub_1DD0DD8FC();
    v45 = __swift_project_value_buffer(v44, qword_1EDE57E00);
    v46 = *(v44 - 8);
    (*(v46 + 16))(v12, v45, v44);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v44);
    sub_1DCBCF6C8(v12, v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v44) == 1)
    {
      sub_1DCBCF738(v9);
    }

    else
    {
      v47 = sub_1DD0DD8EC();
      v48 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v55 = v50;
        *v49 = 136315650;
        v51 = sub_1DD0DEC3C();
        v53 = sub_1DCB10E9C(v51, v52, &v55);

        *(v49 + 4) = v53;
        *(v49 + 12) = 2048;
        *(v49 + 14) = 21;
        *(v49 + 22) = 2080;
        *(v49 + 24) = sub_1DCB10E9C(0xD000000000000022, 0x80000001DD125E40, &v55);
        _os_log_impl(&dword_1DCAFC000, v47, v48, "FatalError at %s:%lu - %s", v49, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v50, -1, -1);
        MEMORY[0x1E12A8390](v49, -1, -1);
      }

      (*(v46 + 8))(v9, v44);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000022, 0x80000001DD125E40);
  }

LABEL_13:
  [v31 setData_];

  [v9 setHandledIntentResponse_];
  sub_1DCB2C534(v54, v19, v9, &selRef_setAppId_);

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v39 = qword_1EDE57E18;
  v40 = sub_1DD0DE6CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1DD0E07C0;
  *(v41 + 56) = sub_1DCF74EA0();
  *(v41 + 64) = sub_1DCF74EE4();
  *(v41 + 32) = v9;
  v42 = v9;
  sub_1DD0DD7EC("launchAppCmd %@", 15, 2, &dword_1DCAFC000, v39, v40, v41);

  return v42;
}

unint64_t sub_1DCF74EA0()
{
  result = qword_1EDE460F0;
  if (!qword_1EDE460F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE460F0);
  }

  return result;
}

unint64_t sub_1DCF74EE4()
{
  result = qword_1EDE460E0;
  if (!qword_1EDE460E0)
  {
    sub_1DCF74EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE460E0);
  }

  return result;
}

uint64_t sub_1DCF74F3C(void *a1)
{
  v1 = [a1 _payloadResponseTypeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDFBC();

  return v3;
}

id sub_1DCF74FA0(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = [a1 givenName];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_0_109(v4, v5, v6, &selRef_setFirstName_);
  v7 = [a1 phoneticGivenName];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_0_109(v8, v9, v10, &selRef_setFirstNamePhonetic_);
  v11 = [a1 middleName];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_0_109(v12, v13, v14, &selRef_setMiddleName_);
  v15 = [a1 familyName];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_0_109(v16, v17, v18, &selRef_setLastName_);
  v19 = [a1 phoneticFamilyName];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_0_109(v20, v21, v22, &selRef_setLastNamePhonetic_);
  v23 = [a1 nickname];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_0_109(v24, v25, v26, &selRef_setNickName_);

  return v2;
}

uint64_t sub_1DCF75120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1DCC6E534(v5);
  if (!v11)
  {
    if (!a2)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (!a2)
  {
    goto LABEL_19;
  }

  if (v10 == a1 && v11 == a2)
  {

    goto LABEL_12;
  }

  v13 = sub_1DD0DF0AC();

  if ((v13 & 1) == 0)
  {
LABEL_10:
    v14 = 0;
    return v14 & 1;
  }

LABEL_12:
  v15 = sub_1DCC6E540(v5);
  v14 = a4 == 0;
  if (v16)
  {
    if (a4)
    {
      if (v15 == a3 && v16 == a4)
      {
        v14 = 1;
      }

      else
      {
        v14 = sub_1DD0DF0AC();
      }

      goto LABEL_21;
    }

LABEL_19:
    v14 = 0;
LABEL_21:
  }

  return v14 & 1;
}

id sub_1DCF75218(__int128 *a1, char a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v6 = sub_1DD0DB04C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[1];
  v30 = *a1;
  v31 = v11;
  v32 = a1[2];
  v12 = *(a1 + 6);
  v13 = *(a1 + 7);
  v14 = *(a1 + 8);
  v15 = objc_allocWithZone(MEMORY[0x1E69C7AF0]);
  v16 = [v15 init];
  sub_1DD0DB03C();
  v17 = sub_1DD0DAFFC();
  v19 = v18;
  (*(v7 + 8))(v10, v6);
  sub_1DCB4D8E8(v17, v19, v16);

  sub_1DCB10E5C(0, &unk_1EDE46088, 0x1E69C77A0);
  v26[0] = v30;
  v26[1] = v31;
  v26[2] = v32;
  v27 = v12;
  v28 = v13;
  v29 = v14;
  v20 = sub_1DCF73E90(v26, a2);
  sub_1DCF75450(v20, v16);
  sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
  v21 = sub_1DD0DE8CC();
  [v16 setListenAfterSpeaking_];

  if (v13 >= 3)
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E69C7B80]) init];
    sub_1DD0BEDA0(v12, v13, v22);
    [v16 setListenAfterSpeakingBehavior_];
  }

  if (v25)
  {
    [v16 setRequestEndBehavior_];
  }

  return v16;
}

void sub_1DCF75450(uint64_t a1, void *a2)
{
  sub_1DCB10E5C(0, &unk_1EDE46088, 0x1E69C77A0);
  v3 = sub_1DD0DE2DC();

  [a2 setDialogs_];
}

uint64_t sub_1DCF754D4(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = sub_1DCB08B14(a3);
  v7 = 0;
  v37 = a3 & 0xC000000000000001;
  v38 = result;
  v36 = a3 & 0xFFFFFFFFFFFFFF8;
  v8 = MEMORY[0x1E69E7CC0];
  v31 = a3;
  v34 = a3 + 32;
  while (1)
  {
    if (v7 == v38)
    {
      return v8;
    }

    if (v37)
    {
      result = MEMORY[0x1E12A72C0](v7, v31);
    }

    else
    {
      if (v7 >= *(v36 + 16))
      {
        goto LABEL_42;
      }

      result = *(v34 + 8 * v7);
    }

    v9 = result;
    v10 = __OFADD__(v7, 1);
    v11 = v7 + 1;
    if (v10)
    {
      break;
    }

    v43 = result;
    v12 = v4;
    a1(&v42, &v43);
    if (v4)
    {

      return v8;
    }

    v13 = v42;
    if (v42 >> 62)
    {
      v14 = sub_1DD0DEB3C();
    }

    else
    {
      v14 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v8 >> 62;
    if (v8 >> 62)
    {
      result = sub_1DD0DEB3C();
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = result + v14;
    if (__OFADD__(result, v14))
    {
      goto LABEL_43;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v40 = v14;
    if (result)
    {
      if (!v15)
      {
        v17 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_18:
      sub_1DD0DEB3C();
      goto LABEL_19;
    }

    if (v15)
    {
      goto LABEL_18;
    }

LABEL_19:
    result = sub_1DD0DEC7C();
    v8 = result;
    v17 = result & 0xFFFFFFFFFFFFFF8;
LABEL_20:
    v39 = v11;
    v18 = *(v17 + 16);
    v19 = (*(v17 + 24) >> 1) - v18;
    v20 = v17 + 8 * v18;
    if (v13 >> 62)
    {
      v22 = sub_1DD0DEB3C();
      if (v22)
      {
        v23 = v22;
        result = sub_1DD0DEB3C();
        v33 = result;
        if (v19 < result)
        {
          goto LABEL_46;
        }

        if (v23 < 1)
        {
          goto LABEL_48;
        }

        v32 = v8;
        OUTLINED_FUNCTION_1_8();
        sub_1DCBF7DC0(&qword_1ECCAB138, &qword_1ECCAB130, &qword_1DD104A20, v24);
        for (i = 0; i != v23; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB130, &qword_1DD104A20);
          v26 = sub_1DCBC99D8(v41, i, v13);
          v28 = *v27;
          v26(v41, 0);
          *(v20 + 32 + 8 * i) = v28;
        }

        v8 = v32;
        v4 = v12;
        v21 = v33;
        goto LABEL_30;
      }
    }

    else
    {
      v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        if (v19 < v21)
        {
          goto LABEL_47;
        }

        sub_1DCB10E5C(0, &qword_1EDE46118, 0x1E69C7B08);
        swift_arrayInitWithCopy();
LABEL_30:

        if (v21 < v40)
        {
          goto LABEL_44;
        }

        if (v21 > 0)
        {
          v29 = *(v17 + 16);
          v10 = __OFADD__(v29, v21);
          v30 = v29 + v21;
          if (v10)
          {
            goto LABEL_45;
          }

          *(v17 + 16) = v30;
        }

        goto LABEL_35;
      }
    }

    if (v40 > 0)
    {
      goto LABEL_44;
    }

LABEL_35:
    v7 = v39;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

void sub_1DCF75840(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, unsigned __int8 *a7, unint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 *a14, char a15, uint8_t *a16, uint64_t a17, uint64_t a18, void *a19, unsigned __int8 a20, void *a21, unsigned __int8 a22, char a23, unsigned __int8 a24, char a25, unsigned __int8 a26, char a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v30, v31);
  OUTLINED_FUNCTION_16();
  sub_1DD0DCC3C();
}

id sub_1DCF77328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(MEMORY[0x1E69C7AF8]) init];

  sub_1DCB673E0(v10);
  sub_1DCB6BBC0(a3, v9);
  sub_1DCB6BB04(a1, a2, v9);
  if (a5)
  {
    [v9 setRequestEndBehavior_];
  }

  return v9;
}

uint64_t sub_1DCF773E0()
{
  v0 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_16();
  v7 = v6 - v5;
  sub_1DD0DB03C();
  v8 = sub_1DD0DAFFC();
  (*(v2 + 8))(v7, v0);
  return v8;
}

uint64_t sub_1DCF774A8@<X0>(char a1@<W1>, char a2@<W2>, char *a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t *a7@<X8>)
{
  v8 = *a3;
  v10 = a6 & 1;
  result = sub_1DCCE2358(a1, 0, a2, v8, a4, a5, &v10);
  *a7 = result;
  return result;
}

uint64_t sub_1DCF774FC(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (sub_1DD0DEB3C())
    {
      goto LABEL_3;
    }

    return 0x3E6C696E3CLL;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0x3E6C696E3CLL;
  }

LABEL_3:
  sub_1DCB35460(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1E12A72C0](0, a1);
  }

  else
  {
    v2 = *(a1 + 32);
  }

  v3 = v2;
  v4 = [v2 description];

  v5 = sub_1DD0DDFBC();
  return v5;
}

uint64_t sub_1DCF775CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1838, &unk_1DD0FC960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DCF7766C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setCorrespondingSessionID_];
}

void sub_1DCF776C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1DD0DDF8C();

  [a4 setProperty:a1 forKey:v6];
}

uint64_t static SAUIAppPunchOut.makeAppStorePunchOutURL(queryItems:)(uint64_t a1)
{
  v1 = sub_1DD0DAB7C();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_16();
  v8 = v7 - v6;
  sub_1DD0DAB6C();
  OUTLINED_FUNCTION_3_114();
  sub_1DD0DAB5C();
  MEMORY[0x1E12A31A0](0, 0xE000000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA1C70, &unk_1DD0F9830);
  sub_1DD0DAB1C();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_2_105(v9, xmmword_1DD0E07C0);
  sub_1DD0DAB0C();

  sub_1DCBB97F4(v10);
  sub_1DD0DAB2C();
  sub_1DD0DAB3C();
  return (*(v3 + 8))(v8, v1);
}

id static SAUIAppPunchOut.makeForApp(app:)()
{
  v0 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_16();
  v7 = v6 - v5;
  v8 = sub_1DD0DD1BC();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = [objc_allocWithZone(MEMORY[0x1E69C7B00]) init];
    sub_1DD0DB03C();
    v13 = sub_1DD0DAFFC();
    v15 = v14;
    (*(v2 + 8))(v7, v0);
    sub_1DCF74E94(v13, v15, v12);

    sub_1DCF7863C(v10, v11, v12);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v16 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v16, qword_1EDE57E00);
    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DCAFC000, v17, v18, "No appIdentifier provided. Cannot create punchout command", v19, 2u);
      MEMORY[0x1E12A8390](v19, -1, -1);
    }

    return 0;
  }

  return v12;
}

id static SAUIAppPunchOut.makeAppStoreSearch()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v29 - v2;
  v4 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  v12 = sub_1DD0DAB7C();
  OUTLINED_FUNCTION_9();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_16();
  v19 = v18 - v17;
  v20 = [objc_allocWithZone(MEMORY[0x1E69C7B00]) init];
  sub_1DD0DAB6C();
  OUTLINED_FUNCTION_3_114();
  sub_1DD0DAB5C();
  MEMORY[0x1E12A31A0](0, 0xE000000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA1C70, &unk_1DD0F9830);
  sub_1DD0DAB1C();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_2_105(v21, xmmword_1DD0E07C0);
  sub_1DD0DAB0C();
  sub_1DD0DAB2C();
  v22 = v20;
  sub_1DD0DB03C();
  v23 = sub_1DD0DAFFC();
  v25 = v24;
  (*(v6 + 8))(v11, v4);
  sub_1DCF74E94(v23, v25, v22);

  sub_1DD0DAB3C();
  v26 = sub_1DD0DAECC();
  v27 = 0;
  if (__swift_getEnumTagSinglePayload(v3, 1, v26) != 1)
  {
    v27 = sub_1DD0DAE6C();
    (*(*(v26 - 8) + 8))(v3, v26);
  }

  [v22 setPunchOutUri_];

  (*(v14 + 8))(v19, v12);
  return v22;
}

void sub_1DCF7863C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();

  [a3 setBundleId_];
}

id sub_1DCF786B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v8 setRedValue_];
  [v8 setGreenValue_];
  [v8 setBlueValue_];
  v9 = a4;
  [v8 setAlpha_];

  return v8;
}

id sub_1DCF787C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1DCB10E5C(0, &qword_1ECCAB1D0, 0x1E69C7B20);
  sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
  v7 = sub_1DD0DE8CC();
  result = sub_1DCF786B8(a2, a3, a3, v7);
  *a4 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ColorFactory(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

id sub_1DCF78960(char *a1)
{
  v1 = *a1;
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7B80]) init];
  if ((v1 & 1) == 0)
  {
    v3 = sub_1DD0DDFBC();
    sub_1DCF789BC(v3, v4, v2);
  }

  return v2;
}

void sub_1DCF789BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();

  [a3 setStartAlertSoundID_];
}

uint64_t sub_1DCF78A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = [objc_allocWithZone(MEMORY[0x1E69C79D0]) init];
  sub_1DCF7933C(a1, a2, v10);
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDE57E18;
  v12 = sub_1DD0DE6DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DD0E07C0;
  *(v13 + 56) = sub_1DCB10E5C(0, &qword_1ECCAB1D8, 0x1E69C79D0);
  *(v13 + 64) = sub_1DCF79460(&unk_1ECCAB1E0, &qword_1ECCAB1D8, 0x1E69C79D0);
  *(v13 + 32) = v10;
  v14 = v10;
  sub_1DD0DD7EC("rollbackRequest: %@", 19, 2, &dword_1DCAFC000, v11, v12, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DD0E15D0;
  *(v15 + 32) = v14;
  v35 = v15;
  v16 = objc_allocWithZone(MEMORY[0x1E69C7AB0]);
  v34 = v14;
  v17 = [v16 init];
  if (a4)
  {
    v18 = a3;
  }

  else
  {
    v18 = 0xD000000000000015;
  }

  if (a4)
  {
    v19 = a4;
  }

  else
  {
    v19 = 0x80000001DD125F70;
  }

  sub_1DCF79394(v18, v19, v17);
  v20 = a5[3];
  v21 = a5[4];
  v22 = __swift_project_boxed_opaque_existential_1(a5, v20);
  [v17 setEyesFree_];
  sub_1DD0DE6DC();
  v23 = OUTLINED_FUNCTION_0_110();
  *(v23 + 16) = xmmword_1DD0E07C0;
  *(v23 + 56) = sub_1DCB10E5C(0, &qword_1ECCAB1F0, 0x1E69C7AB0);
  *(v23 + 64) = sub_1DCF79460(&qword_1ECCAB1F8, &qword_1ECCAB1F0, 0x1E69C7AB0);
  *(v23 + 32) = v17;
  v24 = v17;
  sub_1DD0DD7EC("startRequest: %@", 16, 2, &dword_1DCAFC000, v11, v22, v23);

  v25 = v24;
  MEMORY[0x1E12A6920]();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DD0DE33C();
  }

  sub_1DD0DE3AC();
  v26 = [objc_allocWithZone(MEMORY[0x1E69C7A48]) init];
  sub_1DCC6589C(v35, v26);
  sub_1DD0DE6DC();
  v27 = OUTLINED_FUNCTION_0_110();
  *(v27 + 16) = xmmword_1DD0E07C0;
  *(v27 + 56) = sub_1DCB10E5C(0, &qword_1ECCAB200, 0x1E69C7A48);
  *(v27 + 64) = sub_1DCF79460(&qword_1ECCAB208, &qword_1ECCAB200, 0x1E69C7A48);
  *(v27 + 32) = v26;
  v28 = v26;
  sub_1DD0DD7EC("sendCommands: %@", 16, 2, &dword_1DCAFC000, v11, v35, v27);

  sub_1DCB10E5C(0, &qword_1ECCAB210, 0x1E69C7BD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E15D0;
  *(inited + 32) = v28;
  v30 = v28;
  sub_1DCF78E84(inited, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 0, 0);
  v32 = v31;

  swift_setDeallocating();
  sub_1DCC65718();
  return v32;
}

void sub_1DCF78E84(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_allocWithZone(MEMORY[0x1E69C7BD8]) init];
  v11 = sub_1DCF791F8(a1, a4, a5);
  sub_1DCF14684(v11, v10);
  v12 = sub_1DCF791F8(a2, a4, a5);
  sub_1DCCA5348(v12, v10, &selRef_setFailureCommands_);
  v13 = sub_1DCF791F8(a3, a4, a5);
  sub_1DCCA5348(v13, v10, &selRef_setCancellationCommands_);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v14 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v14, qword_1EDE57E00);
  v15 = v10;
  v16 = sub_1DD0DD8EC();
  v17 = sub_1DD0DE6DC();

  if (!os_log_type_enabled(v16, v17))
  {

    goto LABEL_9;
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  v38 = v37;
  *v18 = 138413058;
  *(v18 + 4) = v15;
  *v19 = v15;
  *(v18 + 12) = 2080;
  v20 = v15;
  v21 = sub_1DCF793F8(v20, &selRef_successCommands);

  if (!v21)
  {

    __break(1u);
    goto LABEL_11;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
  v23 = MEMORY[0x1E12A6960](v21, v22);
  v25 = v24;

  v26 = sub_1DCB10E9C(v23, v25, &v38);

  *(v18 + 14) = v26;
  *(v18 + 22) = 2080;
  v27 = sub_1DCF793F8(v20, &selRef_failureCommands);

  if (!v27)
  {
LABEL_11:

    __break(1u);
    goto LABEL_12;
  }

  v28 = MEMORY[0x1E12A6960](v27, v22);
  v30 = v29;

  v31 = sub_1DCB10E9C(v28, v30, &v38);

  *(v18 + 24) = v31;
  *(v18 + 32) = 2080;
  v32 = sub_1DCF793F8(v20, &selRef_cancellationCommands);

  if (v32)
  {
    v33 = MEMORY[0x1E12A6960](v32, v22);
    v35 = v34;

    v36 = sub_1DCB10E9C(v33, v35, &v38);

    *(v18 + 34) = v36;
    _os_log_impl(&dword_1DCAFC000, v16, v17, "unlockDeviceCommand: %@\nsuccessCommands: %s\nfailureCommands: %s\ncancellationCommands: %s", v18, 0x2Au);
    sub_1DCC3C9EC(v19);
    MEMORY[0x1E12A8390](v19, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v37, -1, -1);
    MEMORY[0x1E12A8390](v18, -1, -1);
LABEL_9:

    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1DCF791F8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    v5 = sub_1DD0DEB3C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v10 = MEMORY[0x1E69E7CC0];
    result = sub_1DD0DED0C();
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1E12A72C0](v7, a1);
        if (!a3)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
        swift_unknownObjectRetain();
        if (!a3)
        {
LABEL_10:
          v9 = 0;
          goto LABEL_11;
        }
      }

      v9 = sub_1DD0DDF8C();
LABEL_11:
      ++v7;
      [v8 setRefId_];

      sub_1DD0DECDC();
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      sub_1DD0DECEC();
      if (v5 == v7)
      {
        return v10;
      }
    }
  }

  return result;
}

void sub_1DCF7933C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setRequestId_];
}

void sub_1DCF79394(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();

  [a3 setUtterance_];
}

uint64_t sub_1DCF793F8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
  v4 = sub_1DD0DE2EC();

  return v4;
}

uint64_t sub_1DCF79460(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DCB10E5C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1DCF794B0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E69C7BE0]) init];
  v9 = sub_1DCF791F8(a1, a3, a4);
  sub_1DCCA5348(v9, v8, &selRef_setSuccessCommands_);
  v10 = sub_1DCF791F8(a2, a3, a4);
  sub_1DCCA5348(v10, v8, &selRef_setFailureCommands_);
  return v8;
}

id static SAUIVisualResponseSnippet.makeVisualSnippet(_:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69C7BF0]) init];
  v2 = sub_1DD0DAEFC();
  [v1 setModelData_];

  return v1;
}

uint64_t ScreentimeCheckFlow.__allocating_init(strategy:outputPublisher:)(uint64_t a1, uint64_t a2)
{
  return sub_1DCF795EC();
}

{
  return sub_1DCF795EC();
}

uint64_t sub_1DCF795EC()
{
  OUTLINED_FUNCTION_18_24();
  swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_19_47();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = OUTLINED_FUNCTION_10_75(v4, v10);
  v6(v5);
  v7 = OUTLINED_FUNCTION_18_47();
  v8 = v0(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v1);
  return v8;
}

void ScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  v8 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1DD104A88;
  v9[5] = 0;
  v9[6] = a1;
  v9[7] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF797E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return ScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse()(a1);
}

void sub_1DCF7988C()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v0[5] = type metadata accessor for RefreshableDeviceState();
  v0[6] = &protocol witness table for RefreshableDeviceState;
  v0[2] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF7996C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 112) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCF79AAC(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v2[28] = swift_task_alloc();
  v3 = swift_task_alloc();
  v2[29] = v3;
  *v3 = v2;
  v3[1] = sub_1DCF79B80;

  return static ResponseTemplates.appDisabledByScreenTime()((v2 + 2));
}

uint64_t sub_1DCF79B80()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCF79C7C()
{
  v9 = v0;
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  memcpy((v0 + 88), (v0 + 16), 0x48uLL);
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  (*(v5 + 96))(v4, v5);
  v6 = type metadata accessor for NLContextUpdate(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v6);
  v7 = type metadata accessor for AceOutput(0);
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0;
  *(v0 + 160) = 0u;
  v3[3] = v7;
  v3[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1Tm(v3);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

uint64_t sub_1DCF79E04()
{
  OUTLINED_FUNCTION_41();
  v21 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = *(v0 + 240);
  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 240);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    *(v0 + 200) = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v10 = sub_1DD0DE02C();
    v12 = sub_1DCB10E9C(v10, v11, &v20);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  swift_willThrow();

  OUTLINED_FUNCTION_29();

  return v18();
}

uint64_t sub_1DCF79FA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return ScreentimeCheckFlowStrategyAsync.makeAppRestrictedByScreentimeResponse()(a1);
}

void sub_1DCF7A050()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v0[5] = type metadata accessor for RefreshableDeviceState();
  v0[6] = &protocol witness table for RefreshableDeviceState;
  v0[2] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF7A130()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 112) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t ScreentimeCheckFlow.init(strategy:outputPublisher:)(uint64_t a1, uint64_t a2)
{
  return sub_1DCF7A290();
}

{
  return sub_1DCF7A290();
}

uint64_t sub_1DCF7A290()
{
  OUTLINED_FUNCTION_18_24();
  __swift_mutable_project_boxed_opaque_existential_1(v2, *(v2 + 24));
  OUTLINED_FUNCTION_19_47();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = OUTLINED_FUNCTION_10_75(v5, v11);
  v7(v6);
  v8 = OUTLINED_FUNCTION_18_47();
  v9 = v0(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v1);
  return v9;
}

uint64_t sub_1DCF7A35C(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF7A370()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[12];
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  if ((*(v3 + 16))(v2, v3))
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v4 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v4, qword_1EDE57E00);
    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v5, v6))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_80();
    }

    v12 = v0[12];

    *(v12 + 16) = 1;
    static ExecuteResponse.complete()();
    OUTLINED_FUNCTION_29();

    return v13();
  }

  else
  {
    *(v0[12] + 16) = 2;
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v15 = sub_1DD0DD8FC();
    v0[13] = __swift_project_value_buffer(v15, qword_1EDE57E00);
    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v16, v17))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
      OUTLINED_FUNCTION_80();
    }

    __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
    OUTLINED_FUNCTION_25_1();
    v27 = (v23 + *v23);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v0[14] = v24;
    *v24 = v25;
    v26 = OUTLINED_FUNCTION_17_46(v24);

    return v27(v26);
  }
}

uint64_t sub_1DCF7A63C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF7A738()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 96);
  v2 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
  v7 = (*(v2 + 8) + **(v2 + 8));
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 128) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_17_46(v3);

  return v7(v5);
}

uint64_t sub_1DCF7A850()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF7A94C()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCF7A9AC()
{
  OUTLINED_FUNCTION_41();
  v15 = v0;
  v1 = *(v0 + 120);
  v2 = v1;
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    OUTLINED_FUNCTION_25_29(4.8149e-34);
    v7 = sub_1DD0DF18C();
    v9 = sub_1DCB10E9C(v7, v8, &v14);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_89(&dword_1DCAFC000, v10, v11, "Unable to make response for screentime-restricted app. Will ignore and Flow should exit. %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {
  }

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v12();
}

uint64_t sub_1DCF7AAF4()
{
  OUTLINED_FUNCTION_41();
  v15 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 136);
  v2 = v1;
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    OUTLINED_FUNCTION_25_29(4.8149e-34);
    v7 = sub_1DD0DF18C();
    v9 = sub_1DCB10E9C(v7, v8, &v14);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_89(&dword_1DCAFC000, v10, v11, "Unable to make response for screentime-restricted app. Will ignore and Flow should exit. %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {
  }

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v12();
}

uint64_t ScreentimeCheckFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  return v0;
}

uint64_t ScreentimeCheckFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF7AD48()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_17(v1);

  return sub_1DCF7A35C(v3);
}

BOOL sub_1DCF7ADD0@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1DCF7A250();
  *a1 = result;
  return result;
}

uint64_t sub_1DCF7ADFC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF7AE1C, 0, 0);
}

uint64_t sub_1DCF7AE1C()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v1 = v0;
  v1[1] = sub_1DCCD0E4C;
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DE38](v2);
}

uint64_t sub_1DCF7AEF8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - v7;
  v9 = a2[5];
  v10 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v9);
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  (*(v10 + 8))(sub_1DCF7B950, v12, v9, v10);
}

uint64_t sub_1DCF7B070()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 24))(v1, v2) & 1;
}

uint64_t sub_1DCF7B0C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF7ADFC(a1);
}

uint64_t sub_1DCF7B18C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[3] = a4;
  v18[4] = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v18);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a4);
  *(a3 + 16) = 0;
  sub_1DCB17CA0(a1, &v15);
  v10 = type metadata accessor for ScreentimeCheckFlowStrategyAsyncAdapter();
  v11 = swift_allocObject();
  sub_1DCAFF9E8(&v15, v11 + 16);
  *(a3 + 48) = v10;
  *(a3 + 56) = &off_1F5872998;
  *(a3 + 24) = v11;
  sub_1DCB17CA0(v18, &v15);
  v12 = type metadata accessor for OutputPublisherAsyncAdapter();
  v13 = swift_allocObject();
  sub_1DCAFF9E8(&v15, v13 + 16);
  v16 = v12;
  v17 = &protocol witness table for OutputPublisherAsyncAdapter;
  *&v15 = v13;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  sub_1DCAFF9E8(&v15, a3 + 64);
  return a3;
}

uint64_t sub_1DCF7B2B0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a3 + 88) = a4;
  *(a3 + 96) = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((a3 + 64));
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a4);
  *(a3 + 16) = 0;
  sub_1DCAFF9E8(a1, a3 + 24);
  return a3;
}

unint64_t sub_1DCF7B334(uint64_t a1)
{
  result = sub_1DCF7B35C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCF7B35C()
{
  result = qword_1ECCAB220;
  if (!qword_1ECCAB220)
  {
    type metadata accessor for ScreentimeCheckFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB220);
  }

  return result;
}

uint64_t dispatch thunk of ScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_25_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_29_2(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ScreentimeCheckFlowStrategyAsync.makeAppRestrictedByScreentimeResponse()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_25_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_29_2(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ScreentimeCheckFlow.__allocating_init(strategy:outputPublisher:)()
{
  return (*(v0 + 136))();
}

{
  return (*(v0 + 144))();
}

uint64_t dispatch thunk of ScreentimeCheckFlow.execute()()
{
  v6 = (*(*v0 + 168) + **(*v0 + 168));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_17(v2);

  return v6(v4);
}

_BYTE *storeEnumTagSinglePayload for ScreentimeCheckFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCF7B8F4()
{
  result = qword_1ECCAB228;
  if (!qword_1ECCAB228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB228);
  }

  return result;
}

uint64_t sub_1DCF7B950(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);

  return sub_1DCE66C04(a1);
}

uint64_t sub_1DCF7B9CC(uint64_t a1, char a2)
{
  sub_1DCF7C268(a1);
  v3 = sub_1DCC6A084();

  if (v3 == 2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v3;
  }

  return v4 & 1;
}

NSObject *sub_1DCF7BA1C(void *a1, void *a2)
{
  v5 = [a1 nlParameters];
  v6 = sub_1DD0DDE6C();

  type metadata accessor for ParameterWrapper();
  *(swift_initStackObject() + 16) = v6;
  v7 = sub_1DCC6A1F8(0x69446D6574737973, 0xEF746341676F6C61);
  if (v7)
  {
    v8 = v7;
    *(swift_initStackObject() + 16) = v7;
    sub_1DCF7BE8C();
    if (v2)
    {
    }

    else
    {
      OUTLINED_FUNCTION_0_111();
    }

    swift_setDeallocating();
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v9 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v9, qword_1EDE57E00);
    v8 = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v8, v10))
    {
      v11 = swift_slowAlloc();
      v15 = a2;
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1DCB10E9C(0x69446D6574737973, 0xEF746341676F6C61, &v16);
      _os_log_impl(&dword_1DCAFC000, v8, v10, "No configuration defined for '%s'. Inferring SDA from available context", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      v13 = v12;
      a2 = v15;
      MEMORY[0x1E12A8390](v13, -1, -1);
      MEMORY[0x1E12A8390](v11, -1, -1);
    }

    sub_1DCF7BC7C(a1, a2);
    OUTLINED_FUNCTION_0_111();
  }

  return v8;
}

uint64_t sub_1DCF7BC7C(void *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  v5 = __swift_project_boxed_opaque_existential_1(a2, v3);
  v6 = sub_1DCCEFBC4(sub_1DCF7C200, 0, v3, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  if ([a1 listenAfterSpeaking])
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v7 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v7, qword_1EDE57E00);
    v8 = sub_1DD0DD8EC();
    v9 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DCAFC000, v8, v9, "We are listening so SystemGaveOptions will be used.", v10, 2u);
LABEL_10:
      MEMORY[0x1E12A8390](v10, -1, -1);
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v11 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v11, qword_1EDE57E00);
    v8 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v8, v12))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DCAFC000, v8, v12, "We are not listening so SystemInformed will be used.", v10, 2u);
      goto LABEL_10;
    }
  }

  return v6;
}

void sub_1DCF7BE8C()
{
  sub_1DD0B3E1C();
  if (!v0)
  {
    v3 = v1;
    v4 = v2;
    v5 = v1 == 0x6E496D6574737953 && v2 == 0xEE0064656D726F66;
    if (v5 || (sub_1DD0DF0AC() & 1) != 0)
    {

      sub_1DD0B3C64();
    }

    else
    {
      v6 = v3 == 0xD000000000000011 && 0x80000001DD126090 == v4;
      if (v6 || (sub_1DD0DF0AC() & 1) != 0)
      {

        sub_1DD0B3C64();
      }

      else
      {
        v7 = v3 == 0x72506D6574737953 && v4 == 0xEE00646574706D6FLL;
        if (v7 || (sub_1DD0DF0AC() & 1) != 0)
        {

          sub_1DD0B3E1C();
        }

        else
        {
          v8 = v3 == 0x664F6D6574737953 && v4 == 0xED00006465726566;
          if (v8 || (sub_1DD0DF0AC() & 1) != 0)
          {

            sub_1DCF7B9CC(5, 0);
            sub_1DCC69D70();
          }

          else
          {
            if (qword_1EDE4F900 != -1)
            {
              swift_once();
            }

            v9 = sub_1DD0DD8FC();
            __swift_project_value_buffer(v9, qword_1EDE57E00);

            v10 = sub_1DD0DD8EC();
            v11 = sub_1DD0DE6EC();

            if (os_log_type_enabled(v10, v11))
            {
              v12 = swift_slowAlloc();
              v13 = swift_slowAlloc();
              v15 = v13;
              *v12 = 136315138;
              *(v12 + 4) = sub_1DCB10E9C(v3, v4, &v15);
              _os_log_impl(&dword_1DCAFC000, v10, v11, "Unsupported SDA type provided: '%s'. Not sure what to build. Returning nil", v12, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v13);
              MEMORY[0x1E12A8390](v13, -1, -1);
              MEMORY[0x1E12A8390](v12, -1, -1);
            }

            sub_1DCF7C3AC();
            swift_allocError();
            *v14 = v3;
            v14[1] = v4;
            swift_willThrow();
          }
        }
      }
    }
  }
}

void sub_1DCF7C200(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 eventId];
  v4 = sub_1DD0DDFBC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

unint64_t sub_1DCF7C268(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x746567726174;
      break;
    case 2:
      result = 0x7365697469746E65;
      break;
    case 3:
      result = 0x6465726566666FLL;
      break;
    case 4:
      result = 0x736563696F6863;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DCF7C314(uint64_t a1, uint64_t a2)
{
  sub_1DD0DEC1C();

  MEMORY[0x1E12A6780](a1, a2);
  MEMORY[0x1E12A6780](10535, 0xE200000000000000);
  return 0xD000000000000015;
}

unint64_t sub_1DCF7C3AC()
{
  result = qword_1ECCAB230[0];
  if (!qword_1ECCAB230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCAB230);
  }

  return result;
}

uint64_t SemanticValueConcept.deinit()
{

  return v0;
}

uint64_t SemanticValueConcept.label.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SemanticValueConcept.value.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SemanticValueConcept.conceptType.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *sub_1DCF7C4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = 0x6369746E616D6553;
  v4[7] = 0xEF747065636E6F43;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t SemanticValueConcept.__deallocating_deinit()
{
  SemanticValueConcept.deinit();

  return swift_deallocClassInstance();
}

uint64_t _FlowPlanBody1<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  return (*(v5 + 32))(a3, v7, a2);
}

uint64_t sub_1DCF7C6B0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1DCF7C740(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1DCF7C87C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCF7CA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 48))(a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent(255, AssociatedTypeWitness, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DDAEC();
  swift_getWitnessTable();
  v6 = sub_1DD0DDBFC();

  return v6;
}

unint64_t sub_1DCF7CB78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter(a1, WitnessTable);
}

uint64_t sub_1DCF7CC10(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 FlowMessageOutput.init(message:flowActivity:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a2;
  v4 = *(a2 + 16);
  *a3 = *a2;
  *(a3 + 16) = v4;
  *(a3 + 32) = *(a2 + 32);
  *(a3 + 40) = a1;
  return result;
}

__n128 FlowMessageTransportableOutput.init(message:flowActivity:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DCAFF9E8(a1, a3 + 40);
  result = *a2;
  v6 = *(a2 + 16);
  *a3 = *a2;
  *(a3 + 16) = v6;
  *(a3 + 32) = *(a2 + 32);
  return result;
}

uint64_t sub_1DCF7CCC8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    (**(v4 - 8))(a1, a2);
  }

  else
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    *(a1 + 32) = *(a2 + 32);
  }

  v7 = *(a2 + 40);
  *(a1 + 40) = v7;
  v8 = v7;
  return a1;
}

uint64_t sub_1DCF7CD50(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (!*(a1 + 24))
  {
    if (v4)
    {
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 4);
      (**(v4 - 8))(a1, a2);
      goto LABEL_8;
    }

LABEL_7:
    v5 = *a2;
    v6 = a2[1];
    *(a1 + 32) = *(a2 + 4);
    *a1 = v5;
    *(a1 + 16) = v6;
    goto LABEL_8;
  }

  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(a1, a2);
LABEL_8:
  v7 = *(a2 + 5);
  v8 = *(a1 + 40);
  *(a1 + 40) = v7;
  v9 = v7;

  return a1;
}

uint64_t sub_1DCF7CE04(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  return a1;
}

uint64_t sub_1DCF7CE54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1DCF7CE94(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t destroy for FlowMessageTransportableOutput(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1 + 5);
}

uint64_t initializeWithCopy for FlowMessageTransportableOutput(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    (**(v4 - 8))(a1, a2);
  }

  else
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    *(a1 + 32) = *(a2 + 32);
  }

  v7 = *(a2 + 64);
  *(a1 + 64) = v7;
  (**(v7 - 8))(a1 + 40, a2 + 40);
  return a1;
}

uint64_t assignWithCopy for FlowMessageTransportableOutput(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (!*(a1 + 24))
  {
    if (v4)
    {
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 4);
      (**(v4 - 8))(a1, a2);
      goto LABEL_8;
    }

LABEL_7:
    v5 = *a2;
    v6 = a2[1];
    *(a1 + 32) = *(a2 + 4);
    *a1 = v5;
    *(a1 + 16) = v6;
    goto LABEL_8;
  }

  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(a1, a2);
LABEL_8:
  __swift_assign_boxed_opaque_existential_1((a1 + 40), a2 + 5);
  return a1;
}

uint64_t assignWithTake for FlowMessageTransportableOutput(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 40));
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for FlowMessageTransportableOutput(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
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

uint64_t storeEnumTagSinglePayload for FlowMessageTransportableOutput(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

uint64_t sub_1DCF7D1C4(uint64_t a1)
{
  sub_1DCB17CA0(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2B8, &qword_1DD104F78);
  v1 = swift_dynamicCast();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  return v1;
}

uint64_t sub_1DCF7D248(uint64_t a1)
{
  *(v2 + 904) = v1;
  *(v2 + 896) = a1;
  v3 = OUTLINED_FUNCTION_15_0();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCF7D274()
{
  sub_1DCB17CA0(*(v0 + 896), v0 + 616);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2B8, &qword_1DD104F78);
  if (swift_dynamicCast())
  {
    sub_1DCAFF9E8((v0 + 656), v0 + 576);
    sub_1DCB17CA0(v0 + 576, v0 + 696);
    if (OUTLINED_FUNCTION_8_74(v0 + 336, v1, v2, &type metadata for ExternalActivationRequest))
    {
      v5 = *(v0 + 352);
      *(v0 + 528) = *(v0 + 336);
      *(v0 + 544) = v5;
      *(v0 + 560) = *(v0 + 368);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v6 = sub_1DD0DD8FC();
      *(v0 + 912) = __swift_project_value_buffer(v6, qword_1EDE57E00);
      v7 = sub_1DD0DD8EC();
      v8 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v8))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v9, v10, "Flow submitted an ExternalActivationRequest");
        OUTLINED_FUNCTION_80();
      }

      v11 = *(v0 + 904);

      v12 = v11[5];
      v13 = v11[6];
      __swift_project_boxed_opaque_existential_1(v11 + 2, v12);
      v14 = *(v0 + 568);
      v60 = (*(v13 + 144) + **(v13 + 144));
      v15 = swift_task_alloc();
      *(v0 + 920) = v15;
      *v15 = v0;
      v15[1] = sub_1DCF7DBAC;
      v16 = v14;
      v17 = v12;
      v18 = v13;
      v19 = v60;

      return v19(v16, v17, v18);
    }

    if (OUTLINED_FUNCTION_8_74(v0 + 384, v3, v4, &type metadata for FlowMessageOutput))
    {
      v27 = *(v0 + 400);
      *(v0 + 432) = *(v0 + 384);
      *(v0 + 448) = v27;
      *(v0 + 464) = *(v0 + 416);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v28 = sub_1DD0DD8FC();
      *(v0 + 936) = __swift_project_value_buffer(v28, qword_1EDE57E00);
      sub_1DCF7E5B0(v0 + 432, v0 + 480);
      v29 = sub_1DD0DD8EC();
      v30 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_151();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        v33 = *(v0 + 520);
        sub_1DCF7E60C(v0 + 480);
        *(v31 + 4) = v33;
        *v32 = v33;
        _os_log_impl(&dword_1DCAFC000, v29, v30, "Flow submitted a Message: %@", v31, 0xCu);
        sub_1DCB16D50(v32, qword_1ECCA8AD0, &qword_1DD0E4F90);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        sub_1DCF7E60C(v0 + 480);
      }

      v41 = *(v0 + 472);
      *(v0 + 872) = v41;
      sub_1DD0DD14C();
      v42 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2C8, &unk_1DD104F88);
      if (swift_dynamicCast())
      {
        v43 = *(v0 + 904);
        sub_1DCAFF9E8((v0 + 816), v0 + 776);
        v44 = v43[5];
        v45 = v43[6];
        __swift_project_boxed_opaque_existential_1(v43 + 2, v44);
        OUTLINED_FUNCTION_5_101();
        v61 = (v46 + *v46);
        v47 = swift_task_alloc();
        *(v0 + 944) = v47;
        *v47 = v0;
        v47[1] = sub_1DCF7DE18;
        v16 = v0 + 776;
LABEL_40:
        v17 = v44;
        v18 = v45;
        v19 = v61;

        return v19(v16, v17, v18);
      }

      *(v0 + 848) = 0;
      *(v0 + 816) = 0u;
      *(v0 + 832) = 0u;
      sub_1DCB16D50(v0 + 816, &qword_1ECCAB2D0, &qword_1DD104F98);
      v53 = sub_1DD0DD8EC();
      v54 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_23(v54))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v55, v56, "Message cannot be transported over XPC");
        OUTLINED_FUNCTION_80();
      }

      sub_1DCF7E60C(v0 + 432);
    }

    else
    {
      if (OUTLINED_FUNCTION_8_74(v0 + 96, v25, v26, &type metadata for FlowMessageTransportableOutput))
      {
        memcpy((v0 + 176), (v0 + 96), 0x50uLL);
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
        }

        v34 = sub_1DD0DD8FC();
        *(v0 + 960) = __swift_project_value_buffer(v34, qword_1EDE57E00);
        sub_1DCF7E500(v0 + 176, v0 + 256);
        v35 = sub_1DD0DD8EC();
        v36 = sub_1DD0DE6DC();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = OUTLINED_FUNCTION_151();
          v38 = swift_slowAlloc();
          *v37 = 138412290;
          sub_1DCB17CA0(v0 + 296, v0 + 736);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2C8, &unk_1DD104F88);
          sub_1DD0DD14C();
          v39 = swift_dynamicCast();
          v40 = 0;
          if (v39)
          {
            v40 = *(v0 + 864);
          }

          *(v37 + 4) = v40;
          *v38 = v40;
          sub_1DCF7E55C(v0 + 256);
          _os_log_impl(&dword_1DCAFC000, v35, v36, "Flow submitted a Message: %@", v37, 0xCu);
          sub_1DCB16D50(v38, qword_1ECCA8AD0, &qword_1DD0E4F90);
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_80();
        }

        else
        {

          sub_1DCF7E55C(v0 + 256);
        }

        v57 = *(v0 + 904);
        v44 = v57[5];
        v45 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v44);
        OUTLINED_FUNCTION_5_101();
        v61 = (v58 + *v58);
        v59 = swift_task_alloc();
        *(v0 + 968) = v59;
        *v59 = v0;
        v59[1] = sub_1DCF7E068;
        v16 = v0 + 216;
        goto LABEL_40;
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v48 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v48, qword_1EDE57E00);
      v49 = sub_1DD0DD8EC();
      v50 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_23(v50))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v51, v52, "ServiceBridgeOutputHandler does not support this type of ServiceBridgeOutput yet");
        OUTLINED_FUNCTION_80();
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 576));
    OUTLINED_FUNCTION_1_120();
  }

  else
  {
    *(v0 + 688) = 0;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    sub_1DCB16D50(v0 + 656, &qword_1ECCAB2C0, &qword_1DD104F80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD0E07C0;
    *(inited + 32) = 0x6567617373654DLL;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = 0xD000000000000041;
    *(inited + 56) = 0x80000001DD126170;
    v22 = sub_1DD0DDE9C();
    v23 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1DCF7E450(0xD00000000000001CLL, 0x80000001DD126150, 2000, v22);
    swift_willThrow();
    v24 = *(v0 + 8);
  }

  return v24();
}

uint64_t sub_1DCF7DBAC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 984) = v3;
  *(v1 + 928) = v4;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCF7DC98()
{
  v17 = v0;
  v2 = *(v0 + 928);
  if (*(v0 + 984))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 576));
  }

  else
  {
    v3 = v2;
    v4 = sub_1DD0DD8EC();
    v5 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 928);
      OUTLINED_FUNCTION_151();
      v7 = OUTLINED_FUNCTION_52_0();
      v16 = v7;
      *v1 = 136315138;
      *(v0 + 888) = v6;
      v8 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E48, &qword_1DD0E24D0);
      v9 = sub_1DD0DE02C();
      v11 = sub_1DCB10E9C(v9, v10, &v16);

      *(v1 + 4) = v11;
      OUTLINED_FUNCTION_8_4(&dword_1DCAFC000, v12, v13, "There was an error while submitting ExternalActivationRequest: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 576));
  }

  sub_1DCF7E660(v0 + 528);
  OUTLINED_FUNCTION_1_120();

  return v14();
}

uint64_t sub_1DCF7DE18()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 985) = v3;
  *(v1 + 952) = v4;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCF7DF04()
{
  v17 = v0;
  v2 = *(v0 + 952);
  if ((*(v0 + 985) & 1) == 0)
  {
    v3 = v2;
    v4 = sub_1DD0DD8EC();
    v5 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 952);
      OUTLINED_FUNCTION_151();
      v7 = OUTLINED_FUNCTION_52_0();
      v16 = v7;
      *v1 = 136315138;
      *(v0 + 880) = v6;
      v8 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E48, &qword_1DD0E24D0);
      v9 = sub_1DD0DE02C();
      v11 = sub_1DCB10E9C(v9, v10, &v16);

      *(v1 + 4) = v11;
      OUTLINED_FUNCTION_8_4(&dword_1DCAFC000, v12, v13, "There was an error while posting BridgeMessage: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 776));
  sub_1DCF7E60C(v0 + 432);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 576));
  OUTLINED_FUNCTION_1_120();

  return v14();
}

uint64_t sub_1DCF7E068()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 986) = v3;
  *(v1 + 976) = v4;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCF7E154()
{
  v17 = v0;
  v2 = *(v0 + 976);
  if ((*(v0 + 986) & 1) == 0)
  {
    v3 = v2;
    v4 = sub_1DD0DD8EC();
    v5 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 976);
      OUTLINED_FUNCTION_151();
      v7 = OUTLINED_FUNCTION_52_0();
      v16 = v7;
      *v1 = 136315138;
      *(v0 + 856) = v6;
      v8 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E48, &qword_1DD0E24D0);
      v9 = sub_1DD0DE02C();
      v11 = sub_1DCB10E9C(v9, v10, &v16);

      *(v1 + 4) = v11;
      OUTLINED_FUNCTION_8_4(&dword_1DCAFC000, v12, v13, "There was an error while posting BridgeMessage: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }
  }

  sub_1DCF7E55C(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 576));
  OUTLINED_FUNCTION_1_120();

  return v14();
}

uint64_t sub_1DCF7E2CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCF7E364;

  return sub_1DCF7D248(a1);
}

uint64_t sub_1DCF7E364()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_1DCF7E450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1DD0DDF8C();

  if (a4)
  {
    v8 = sub_1DD0DDE4C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

void SiriEnvironment.sessionConfigurationProvider.modify(void *a1)
{
  a1[1] = v1;
  a1[2] = type metadata accessor for SessionConfigurationProvider();
  a1[3] = OUTLINED_FUNCTION_0_113(&qword_1EDE46EA0);
  sub_1DD0DCA7C();
}

uint64_t SessionConfigurationProvider.mock.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

void SessionConfigurationProvider.__allocating_init(storage:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_2();
  swift_allocObject();
  SessionConfigurationProvider.init(storage:)();
}

void SessionConfigurationProvider.init(storage:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2D8, &qword_1DD104FA0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1EEE9AC00](v2, v3);
  v4 = OUTLINED_FUNCTION_4_106();
  OUTLINED_FUNCTION_5_102(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2E0, &qword_1DD104FA8);
  swift_allocObject();
  sub_1DD0DCE9C();
}

void SessionConfigurationProvider.__allocating_init(sessionConfiguration:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_2();
  swift_allocObject();
  SessionConfigurationProvider.init(sessionConfiguration:)(a1);
}

void sub_1DCF7E958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2D8, &qword_1DD104FA0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v6 - v4;
  sub_1DCB70320(a1, &v6 - v4);
  sub_1DCB703F8(v5);
}

void sub_1DCF7EA44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2E8, &qword_1DD105110);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v7 - v4;
  (*(v6 + 16))(&v7 - v4, a1);
  sub_1DCF7EB18(v5);
}

void sub_1DCF7EB18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2E8, &qword_1DD105110);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v7 - v5;
  swift_beginAccess();
  (*(v3 + 16))(v6, a1, v2);
  sub_1DD0DCF8C();
}

uint64_t static FlowLocator.findFlow(forInvocation:)(uint64_t a1)
{
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_1_122(v4, v8);
  v5 = qword_1EDE4F518;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_1EDE4F518);
  }

  v6 = sub_1DCD3B154();
  sub_1DCB29EBC(v1);
  return v6;
}

uint64_t sub_1DCF7ED70(uint64_t a1)
{
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_1_122(v4, v8);
  v5 = qword_1EDE4F518;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_1EDE4F518);
  }

  v6 = sub_1DCD3C84C(v1);
  sub_1DCB29EBC(v1);
  return v6;
}

uint64_t static FlowLocator.findFlowWrapper(forInvocation:)(uint64_t a1)
{
  *(v1 + 16) = type metadata accessor for Parse(0);
  *(v1 + 24) = swift_task_alloc();
  *(v1 + 32) = *a1;
  *(v1 + 48) = *(a1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DCF7EEC0, 0, 0);
}

uint64_t sub_1DCF7EEC0()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  *v3 = v0[4];
  v3[1] = v1;
  v3[2] = v2;
  swift_storeEnumTagMultiPayload();
  v4 = qword_1EDE4F518;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_1EDE4F518);
  }

  v5 = v0[3];
  v6 = sub_1DCD3B154();
  sub_1DCB29EBC(v5);

  v7 = v0[1];

  return v7(v6);
}

double static FlowLocator.findFlowPlugin(supportingTopic:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EDE4F518 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_1EDE4F518);
  }

  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  return sub_1DCD3C748(v6, a2);
}

_BYTE *storeEnumTagSinglePayload for FlowLocator(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t SharingPolicyCheckFlow.__allocating_init(strategy:)(void *a1)
{
  OUTLINED_FUNCTION_12_63();
  v2 = swift_allocObject();
  SharingPolicyCheckFlow.init(strategy:)(a1);
  return v2;
}

{
  return sub_1DCF80550(a1, sub_1DCF80E64);
}

void sub_1DCF7F138(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  v8 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1DD105138;
  v9[5] = 0;
  v9[6] = a1;
  v9[7] = a2;
  sub_1DD0DCF8C();
}

void SharingPolicyCheckFlowStrategy.makeErrorDialog(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  v8 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1DD105138;
  v9[5] = 0;
  v9[6] = a1;
  v9[7] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF7F338(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return SharingPolicyCheckFlowStrategy.makeErrorDialog()(a1);
}

void sub_1DCF7F3F0()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  sub_1DCB4E718(v0 + 56);
  v1 = OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_54_0(v1, &protocol witness table for RefreshableDeviceState);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF7F4C0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 112) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCF7F5F0(uint64_t a1, uint64_t a2)
{
  v2[34] = a1;
  v2[35] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v2[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF7F68C, 0, 0);
}

uint64_t sub_1DCF7F68C()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB17CA0(*(v0 + 280), v0 + 160);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 296) = v1;
  *v1 = v2;
  v1[1] = sub_1DCF7F72C;

  return static ResponseTemplates.unsupportedWhileSharingPolicyIsRestricted(deviceState:)(v0 + 16, v0 + 160);
}

uint64_t sub_1DCF7F72C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 304) = v0;

  sub_1DCB16DB0(v3 + 160, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCF7F840()
{
  v9 = v0;
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);
  memcpy((v0 + 88), (v0 + 16), 0x48uLL);
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  (*(v5 + 96))(v4, v5);
  v6 = type metadata accessor for NLContextUpdate(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v6);
  v7 = type metadata accessor for AceOutput(0);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0;
  *(v0 + 200) = 0u;
  v3[3] = v7;
  v3[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1Tm(v3);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

uint64_t sub_1DCF7F9C8()
{
  v16 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = *(v0 + 304);
  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_151();
    v7 = OUTLINED_FUNCTION_83();
    v15 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1DD0DF18C();
    v10 = sub_1DCB10E9C(v8, v9, &v15);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v11, v12, "Unable to generate default unsupported dialog due to error: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  swift_willThrow();

  OUTLINED_FUNCTION_29();

  return v13();
}

uint64_t sub_1DCF7FB48(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF7F3D0(a1);
}

uint64_t sub_1DCF7FBF4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return SharingPolicyCheckFlowStrategyAsync.makeErrorDialog()(a1);
}

void sub_1DCF7FCAC()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  sub_1DCB4E718(v0 + 56);
  v1 = OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_54_0(v1, &protocol witness table for RefreshableDeviceState);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF7FD90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF7FC8C(a1);
}

uint64_t sub_1DCF7FE3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCF7FE5C, 0, 0);
}

uint64_t sub_1DCF7FE5C()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v3 = v0;
  v3[1] = sub_1DCF7FF60;
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCF7FF60()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCF8007C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - v7;
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  (*(v10 + 8))(sub_1DCF7B950, v12, v9, v10);
}

uint64_t sub_1DCF801F4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF80208()
{

  OUTLINED_FUNCTION_88_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF8023C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF801F4(a1);
}

uint64_t sub_1DCF802D8()
{
  type metadata accessor for SharingPolicyCheckFlow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1FB0, &qword_1DD0E2D90);
  result = sub_1DD0DE02C();
  qword_1EDE4CC68 = result;
  *algn_1EDE4CC70 = v1;
  return result;
}

void sub_1DCF80328()
{
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  sub_1DCB4E718(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v1);
  v0 = qword_1EDE46630;
  qword_1EDE4CCE8 = type metadata accessor for RefreshableDeviceState();
  unk_1EDE4CCF0 = &protocol witness table for RefreshableDeviceState;
  qword_1EDE4CCD0 = v0;
  sub_1DD0DCF8C();
}

uint64_t SharingPolicyCheckFlow.init(strategy:)(void *a1)
{
  *(v1 + 16) = 0;
  if (qword_1EDE4CCC8 != -1)
  {
    OUTLINED_FUNCTION_3_115(&qword_1EDE4CCC8);
  }

  sub_1DCB17CA0(&qword_1EDE4CCD0, v1 + 24);
  if (qword_1EDE4CC80 != -1)
  {
    OUTLINED_FUNCTION_2_106(&qword_1EDE4CC80);
  }

  sub_1DCB17CA0(&qword_1EDE4CC88, v1 + 64);
  v3 = type metadata accessor for DefaultSharingPolicyProvider();
  inited = swift_initStaticObject();
  *(v1 + 128) = v3;
  *(v1 + 136) = &off_1F5872E98;
  *(v1 + 104) = inited;
  sub_1DCB17CA0(a1, &v9);
  v5 = type metadata accessor for AnySharingPolicyCheckFlowStrategy();
  OUTLINED_FUNCTION_88_0();
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  sub_1DCAFF9E8(&v9, v7 + 16);
  *(v6 + 16) = &unk_1DD105168;
  *(v6 + 24) = v7;
  v10 = v5;
  v11 = &off_1F5872E88;
  *&v9 = v6;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_1DCAFF9E8(&v9, v1 + 144);
  return v1;
}

{
  return sub_1DCF80550(a1, sub_1DCF81018);
}

uint64_t sub_1DCF80550(void *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  (*(v12 + 16))(v10 - v9);
  v13 = a2(v11, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v13;
}

void SharingPolicyCheckFlow.__allocating_init(restrictedErrorOutputGenerator:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_88_0();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF80848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF8086C, 0, 0);
}

void sub_1DCF8086C()
{
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  sub_1DCB4E718(v0 + 56);
  v1 = OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_54_0(v1, &protocol witness table for RefreshableDeviceState);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF809AC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 128) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t SharingPolicyCheckFlow.__allocating_init(restrictedErrorOutputGenerator:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE4CCC8 != -1)
  {
    OUTLINED_FUNCTION_3_115(&qword_1EDE4CCC8);
  }

  sub_1DCB17CA0(&qword_1EDE4CCD0, v22);
  if (qword_1EDE4CC80 != -1)
  {
    OUTLINED_FUNCTION_2_106(&qword_1EDE4CC80);
  }

  sub_1DCB17CA0(&qword_1EDE4CC88, v21);
  v4 = type metadata accessor for DefaultSharingPolicyProvider();
  inited = swift_initStaticObject();
  v6 = type metadata accessor for AnySharingPolicyCheckFlowStrategy();
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v20[3] = v4;
  v20[4] = &off_1F5872E98;
  v19 = &off_1F5872E88;
  v20[0] = inited;
  v18 = v6;
  *&v17 = v7;
  OUTLINED_FUNCTION_12_63();
  v8 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v20, v4);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16();
  v13 = (v12 - v11);
  (*(v14 + 16))(v12 - v11);
  v15 = *v13;
  *(v8 + 128) = v4;
  *(v8 + 136) = &off_1F5872E98;
  *(v8 + 104) = v15;
  *(v8 + 16) = 0;
  sub_1DCAFF9E8(v22, v8 + 24);
  sub_1DCAFF9E8(v21, v8 + 64);
  sub_1DCAFF9E8(&v17, v8 + 144);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return v8;
}

uint64_t SharingPolicyCheckFlow.on(input:)()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  v1 = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_151();
    v4 = OUTLINED_FUNCTION_83();
    v6 = v4;
    *v3 = 136315138;
    if (qword_1EDE4CC60 != -1)
    {
      OUTLINED_FUNCTION_5_103(&qword_1EDE4CC60);
    }

    *(v3 + 4) = sub_1DCB10E9C(qword_1EDE4CC68, *algn_1EDE4CC70, &v6);
    _os_log_impl(&dword_1DCAFC000, v1, v2, "%s: This flow handles no input", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  return 0;
}

uint64_t sub_1DCF80E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  v14 = swift_allocObject();
  (*(v8 + 16))(v13, a1, a3);
  v15 = sub_1DCF81018(v13, v14, a3, a4);
  (*(v8 + 8))(a1, a3);
  return v15;
}

uint64_t sub_1DCF80F88()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;

  return sub_1DCF7FE3C(v2, v0 + 16);
}

uint64_t sub_1DCF81018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v13 = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v11);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  *(a2 + 16) = 0;
  if (qword_1EDE4CCC8 != -1)
  {
    swift_once();
  }

  sub_1DCB17CA0(&qword_1EDE4CCD0, a2 + 24);
  if (qword_1EDE4CC80 != -1)
  {
    swift_once();
  }

  sub_1DCB17CA0(&qword_1EDE4CC88, a2 + 64);
  v8 = type metadata accessor for DefaultSharingPolicyProvider();
  inited = swift_initStaticObject();
  *(a2 + 128) = v8;
  *(a2 + 136) = &off_1F5872E98;
  *(a2 + 104) = inited;
  sub_1DCAFF9E8(&v11, a2 + 144);
  return a2;
}

uint64_t sub_1DCF81144()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_17(v4);

  return sub_1DCF80848(v6, v2, v1);
}

unint64_t sub_1DCF811E0(uint64_t a1)
{
  result = sub_1DCF81208();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCF81208()
{
  result = qword_1ECCAB2F0;
  if (!qword_1ECCAB2F0)
  {
    type metadata accessor for SharingPolicyCheckFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB2F0);
  }

  return result;
}

uint64_t dispatch thunk of SharingPolicyCheckFlowStrategy.makeErrorDialog()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_73_0(a1, a2, a3);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_29_2(v4);

  return v7(v6);
}

uint64_t dispatch thunk of SharingPolicyCheckFlowStrategyAsync.makeErrorDialog()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_73_0(a1, a2, a3);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_29_2(v4);

  return v7(v6);
}

uint64_t dispatch thunk of SharingPolicyCheckFlow.__allocating_init(strategy:)()
{
  return (*(v0 + 120))();
}

{
  return (*(v0 + 128))();
}

_BYTE *storeEnumTagSinglePayload for SharingPolicyCheckFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCF815BC()
{
  result = qword_1ECCAB2F8[0];
  if (!qword_1ECCAB2F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCAB2F8);
  }

  return result;
}

uint64_t sub_1DCF81618(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  sub_1DCF82930(a1, a2, a3, v7);
  return v6;
}

uint64_t sub_1DCF81670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1DCB4AE1C;

  return SimpleDisambiguationPromptStrategy.makeRepromptOnEmptyParse(items:)();
}

uint64_t SimpleDisambiguationPromptStrategy.makeRepromptOnEmptyParse(items:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_8();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1(v5);

  return v8(v7);
}

uint64_t sub_1DCF81828(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return SimpleDisambiguationPromptStrategy.makeRepromptOnLowConfidence(items:)();
}

uint64_t SimpleDisambiguationPromptStrategy.makeRepromptOnLowConfidence(items:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCF81944(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AD3C;

  return SimpleDisambiguationPromptStrategy.makeFlowCancelledResponse()();
}

uint64_t SimpleDisambiguationPromptStrategy.makeFlowCancelledResponse()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDCA70();
}

uint64_t sub_1DCF81A60(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return SimpleDisambiguationPromptStrategy.makeErrorResponse(error:)();
}

uint64_t SimpleDisambiguationPromptStrategy.makeErrorResponse(error:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

uint64_t SimpleDisambiguationPromptStrategy.actionForInputWrapper(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  OUTLINED_FUNCTION_24();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF81BB0()
{
  OUTLINED_FUNCTION_42();
  (*(v0[5] + 24))(v0[3], v0[4]);
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t dispatch thunk of SimpleDisambiguationPromptStrategy.parseDisambiguationResult(input:items:)()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_25_1();
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_11_0(v11);
  *v12 = v13;
  v12[1] = sub_1DCB4AE1C;

  return v15(v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of SimpleDisambiguationPromptStrategy.makePromptForDisambiguation(items:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_8();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1(v5);

  return v8(v7);
}

uint64_t dispatch thunk of SimpleDisambiguationPromptStrategy.makeRepromptOnEmptyParse(items:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_8();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1(v5);

  return v8(v7);
}

uint64_t dispatch thunk of SimpleDisambiguationPromptStrategy.makeRepromptOnLowConfidence(items:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_8();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1(v5);

  return v8(v7);
}

uint64_t dispatch thunk of SimpleDisambiguationPromptStrategy.makeFlowCancelledResponse()()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_25_1();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v8[1] = sub_1DCB4AE1C;

  return v11(v5, v3, v1);
}

uint64_t dispatch thunk of SimpleDisambiguationPromptStrategy.makeErrorResponse(error:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_8();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1(v5);

  return v8(v7);
}

uint64_t sub_1DCF8225C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SimpleDisambiguationPromptFlow.State(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DCF82314@<X0>(uint64_t a1@<X8>, uint64_t a2@<X3>)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 88);
  v7 = type metadata accessor for SimpleDisambiguationPromptFlow.State(0, v5, v6, a2);
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v36 - v12;
  v14 = *(v4 + 120);
  swift_beginAccess();
  (*(v9 + 16))(v13, v2 + v14, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 7:
      v28 = OUTLINED_FUNCTION_35_32();
      OUTLINED_FUNCTION_42_30(v28, v29, v30, v31);
      OUTLINED_FUNCTION_28();
      return swift_storeEnumTagMultiPayload();
    case 3:
      v23 = v13[8];
      *a1 = *v13;
      *(a1 + 8) = v23;
      v24 = OUTLINED_FUNCTION_35_32();
      OUTLINED_FUNCTION_42_30(v24, v25, v26, v27);
      OUTLINED_FUNCTION_28();
      return swift_storeEnumTagMultiPayload();
    case 2:
      v17 = OUTLINED_FUNCTION_35_32();
      OUTLINED_FUNCTION_42_30(v17, v18, v19, v20);
      OUTLINED_FUNCTION_2();
      return (*(v21 + 32))(a1, v13);
    default:
      type metadata accessor for SimpleDisambiguationPromptFlow.SimpleDisambiguationPromptFlowError(0, v5, v6, v16);
      OUTLINED_FUNCTION_23_31();
      swift_getWitnessTable();
      *a1 = swift_allocError();
      *(a1 + 8) = 0;
      v32 = OUTLINED_FUNCTION_35_32();
      OUTLINED_FUNCTION_42_30(v32, v33, v34, v35);
      OUTLINED_FUNCTION_28();
      swift_storeEnumTagMultiPayload();
      return (*(v9 + 8))(v13, v7);
  }
}

void sub_1DCF82578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SimpleDisambiguationPromptFlow.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  MEMORY[0x1EEE9AC00](v5, v6);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCF8282C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  v6 = type metadata accessor for SimpleDisambiguationPromptFlow.State(0, *(v3 + 80), *(v3 + 88), v5);
  (*(*(v6 - 8) + 24))(v1 + v4, a1, v6);
  v7 = swift_endAccess();
  sub_1DCF82578(v7, v8, v9, v10);
}

void *sub_1DCF82930(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  type metadata accessor for SimpleDisambiguationPromptFlow.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  swift_storeEnumTagMultiPayload();
  v4[2] = a2;
  v4[3] = a1;
  sub_1DCAFF9E8(a3, (v4 + 4));
  return v4;
}

uint64_t sub_1DCF829D4(uint8_t *a1)
{
  v2 = v1;
  v4 = *v1;
  LOBYTE(v1) = type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v4[10];
  v10 = v4[11];
  v12 = type metadata accessor for SimpleDisambiguationPromptFlow.State(0, v9, v10, v11);
  OUTLINED_FUNCTION_9();
  v14 = v13;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v54 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v53 - v20;
  v22 = v4[15];
  swift_beginAccess();
  (*(v14 + 16))(v21, &v2[v22], v12);
  LODWORD(v22) = swift_getEnumCaseMultiPayload();
  (*(v14 + 8))(v21, v12);
  if (v22 == 5)
  {
    v23 = type metadata accessor for Input(0);
    sub_1DCB2479C(&a1[*(v23 + 20)], v8, type metadata accessor for Parse);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1DCDC578C(v8, type metadata accessor for Parse);
    if (EnumCaseMultiPayload == 10)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v25 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v25, qword_1EDE57E00);
      v26 = sub_1DD0DD8EC();
      v27 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v27))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v28, v29, "SimpleDisambiguationPromptFlow received empty parse. Will handle and re-prompt.");
        OUTLINED_FUNCTION_80();
      }

LABEL_7:

      v30 = v54;
      OUTLINED_FUNCTION_54_1();
      goto LABEL_8;
    }

    if ((sub_1DCE967E0(a1) & 1) == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v41 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v41, qword_1EDE57E00);
      v42 = sub_1DD0DD8EC();
      v43 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v43))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v44, v45, "SimpleDisambiguationPromptFlow received low confidence input. Treating as misunderstood and will re-prompt.");
        OUTLINED_FUNCTION_80();
      }

      OUTLINED_FUNCTION_22_40();
      OUTLINED_FUNCTION_54_1();
      swift_storeEnumTagMultiPayload();
      sub_1DCF8282C(v42);
    }

    v1 = *(v2 + 2);
    (*(v10 + 24))(&v55, a1, v9, v10);
    if (!v55)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v46 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v46, qword_1EDE57E00);
      v26 = sub_1DD0DD8EC();
      v47 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v47))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v48, v49, "SimpleDisambiguationPromptFlow received cancel action from strategy. Transitioning to cancelled state.");
        OUTLINED_FUNCTION_80();
      }

      goto LABEL_7;
    }

    if (v55 == 1)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v37 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v37, qword_1EDE57E00);
      v30 = sub_1DD0DD8EC();
      v38 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v38))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v39, v40, "SimpleDisambiguationPromptFlow received handle action from strategy. Transitioning to responseReceived state.");
        OUTLINED_FUNCTION_80();
      }

      OUTLINED_FUNCTION_22_40();
      OUTLINED_FUNCTION_54_1();
LABEL_8:
      swift_storeEnumTagMultiPayload();
      sub_1DCF8282C(v30);
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v50 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v50, qword_1EDE57E00);
    v32 = sub_1DD0DD8EC();
    v51 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_22(v51))
    {
      v52 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v52);
      v35 = "SimpleDisambiguationPromptFlow received ignore action from strategy. Ignoring.";
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v31 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v31, qword_1EDE57E00);
    v32 = sub_1DD0DD8EC();
    v33 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_22(v33))
    {
      v34 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v34);
      v35 = "SimpleDisambiguationPromptFlow received input but is not in the promptSent state. Ignoring.";
LABEL_13:
      _os_log_impl(&dword_1DCAFC000, v32, v1, v35, a1, 2u);
      OUTLINED_FUNCTION_62();
    }
  }

  return 0;
}

uint64_t sub_1DCF82FF8()
{
  OUTLINED_FUNCTION_42();
  v1[5] = v2;
  v1[6] = v0;
  v3 = *v0;
  type metadata accessor for Input(0);
  v1[7] = swift_task_alloc();
  v4 = *(v3 + 80);
  v1[8] = v4;
  v5 = *(v3 + 88);
  v1[9] = v5;
  v7 = type metadata accessor for SimpleDisambiguationPromptFlow.State(0, v4, v5, v6);
  v1[10] = v7;
  v1[11] = *(v7 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCF8311C()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[6];
  v5 = *(*v4 + 120);
  swift_beginAccess();
  (*(v3 + 16))(v1, v4 + v5, v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v25 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v25, qword_1EDE57E00);
      v26 = sub_1DD0DD8EC();
      v27 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v27))
      {
        v28 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v28);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v29, v30, v31, v32, v33, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[22] = v34;
      *v34 = v35;
      OUTLINED_FUNCTION_41_0(v34);
      OUTLINED_FUNCTION_73();

      return sub_1DCF85634(v36, v37, v38, v39);
    case 2u:
    case 3u:
      v6 = OUTLINED_FUNCTION_40_31();
      v7(v6);
      goto LABEL_3;
    case 4u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v55 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v55, qword_1EDE57E00);
      v56 = sub_1DD0DD8EC();
      v57 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v57))
      {
        v58 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v58);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v59, v60, v61, v62, v63, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[14] = v64;
      *v64 = v65;
      OUTLINED_FUNCTION_41_0(v64);
      OUTLINED_FUNCTION_73();

      return sub_1DCF84150(v66, v67, v68, v69);
    case 5u:
LABEL_3:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v8 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v8, qword_1EDE57E00);
      sub_1DD0DCF8C();
    case 6u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v70 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v70, qword_1EDE57E00);
      v71 = sub_1DD0DD8EC();
      v72 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v72))
      {
        v73 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v73);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v74, v75, v76, v77, v78, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[20] = v79;
      *v79 = v80;
      OUTLINED_FUNCTION_41_0(v79);
      OUTLINED_FUNCTION_73();

      result = sub_1DCF853CC(v81, v82, v83, v84);
      break;
    case 7u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v40 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v40, qword_1EDE57E00);
      v41 = sub_1DD0DD8EC();
      v42 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v42))
      {
        v43 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v43);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v44, v45, v46, v47, v48, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[16] = v49;
      *v49 = v50;
      OUTLINED_FUNCTION_41_0(v49);
      OUTLINED_FUNCTION_73();

      result = sub_1DCF84444(v51, v52, v53, v54);
      break;
    default:
      sub_1DCC333DC(v0[13], v0[7]);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v9 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v9, qword_1EDE57E00);
      v10 = sub_1DD0DD8EC();
      v11 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v11))
      {
        v12 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v12);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v13, v14, v15, v16, v17, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[18] = v18;
      *v18 = v19;
      v18[1] = sub_1DCF83A94;
      OUTLINED_FUNCTION_73();

      result = sub_1DCF8476C(v20, v21, v22, v23);
      break;
  }

  return result;
}

uint64_t sub_1DCF83840()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF83938()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_38_30();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCF8399C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF83A94()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF83B8C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_24_34();
  OUTLINED_FUNCTION_38_30();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCF83BF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF83CEC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF83DE4()
{
  OUTLINED_FUNCTION_42();
  v0 = OUTLINED_FUNCTION_40_31();
  v1(v0);
  OUTLINED_FUNCTION_38_30();

  OUTLINED_FUNCTION_29();

  return v2();
}

void sub_1DCF83E58()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 120);
  OUTLINED_FUNCTION_5_104();
  v3 = v2;
  sub_1DCF8282C(v0);
}

void sub_1DCF83EEC()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 136);
  OUTLINED_FUNCTION_5_104();
  v3 = v2;
  sub_1DCF8282C(v0);
}

void sub_1DCF83F80()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_24_34();
  v2 = *(v1 + 152);
  OUTLINED_FUNCTION_5_104();
  v3 = v2;
  sub_1DCF8282C(v0);
}

void sub_1DCF84018()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 168);
  OUTLINED_FUNCTION_5_104();
  v3 = v2;
  sub_1DCF8282C(v0);
}

void sub_1DCF840AC()
{
  OUTLINED_FUNCTION_39();
  v2 = OUTLINED_FUNCTION_40_31();
  v3(v2);
  v4 = *(v1 + 184);
  OUTLINED_FUNCTION_5_104();
  v5 = v4;
  sub_1DCF8282C(v0);
}

uint64_t sub_1DCF84150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a1;
  v5[8] = v4;
  v5[9] = type metadata accessor for SimpleDisambiguationPromptFlow.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF84210, 0, 0);
}

uint64_t sub_1DCF84210()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_17_47();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 88) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCF842B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCF843B8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 80);
  swift_storeEnumTagMultiPayload();
  sub_1DCF8282C(v1);
}

uint64_t sub_1DCF84444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a1;
  v5[8] = v4;
  v6 = *v4;
  v7 = *(*v4 + 80);
  v5[9] = v7;
  v8 = *(v6 + 88);
  v5[10] = v8;
  v5[11] = type metadata accessor for SimpleDisambiguationPromptFlow.State(0, v7, v8, a4);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF8450C, 0, 0);
}

uint64_t sub_1DCF8450C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_17_47();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 104) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCF845B0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCF846B4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_42_30(AssociatedTypeWitness, v3, v4, v5);
  OUTLINED_FUNCTION_28();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1DCF8282C(v1);
}

uint64_t sub_1DCF8476C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a2;
  v5[13] = v4;
  v5[11] = a1;
  v6 = *v4;
  v7 = *(*v4 + 80);
  v5[14] = v7;
  v8 = *(v6 + 88);
  v5[15] = v8;
  v5[16] = type metadata accessor for SimpleDisambiguationPromptFlow.State(0, v7, v8, a4);
  v5[17] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v10 = sub_1DD0DE97C();
  v5[19] = v10;
  v5[20] = *(v10 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = *(AssociatedTypeWitness - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF84930, 0, 0);
}

uint64_t sub_1DCF84930()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0[13] + 24);
  OUTLINED_FUNCTION_25_1();
  v10 = (v2 + *v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[26] = v3;
  *v3 = v4;
  v3[1] = sub_1DCF84A44;
  v5 = v0[21];
  v6 = v0[14];
  v7 = v0[15];
  v8 = v0[12];

  return v10(v5, v8, v1, v6, v7);
}

uint64_t sub_1DCF84A44()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCF84B3C()
{
  v2 = v1[21];
  v3 = v1[18];
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    (*(v1[20] + 8))(v2, v1[19]);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v4 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v7);
      _os_log_impl(&dword_1DCAFC000, v5, v6, "SimpleDisambiguationPromptFlow received no chosen item. Returning unanswered.", v0, 2u);
      OUTLINED_FUNCTION_62();
    }

    v9 = v1[17];
    v8 = v1[18];

    type metadata accessor for PromptResult(0, v8, v10, v11);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1DCF8282C(v9);
  }

  (*(v1[22] + 32))(v1[25], v2, v3);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v12 = v1[24];
  v13 = v1[25];
  v14 = v1[22];
  v15 = v1[18];
  v16 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v16, qword_1EDE57E00);
  v17 = *(v14 + 16);
  v17(v12, v13, v15);
  v18 = sub_1DD0DD8EC();
  v19 = sub_1DD0DE6DC();
  v20 = OUTLINED_FUNCTION_23(v19);
  v21 = v1[24];
  v42 = v17;
  if (v20)
  {
    v22 = v1[22];
    v23 = v1[23];
    v24 = v1[18];
    v25 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43 = v41;
    *v25 = 136315138;
    v17(v23, v21, v24);
    v40 = sub_1DD0DE02C();
    v27 = v26;
    (*(v22 + 8))(v21, v24);
    v28 = sub_1DCB10E9C(v40, v27, &v43);

    *(v25 + 4) = v28;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_62();
  }

  else
  {
    v34 = v1[22];
    v35 = v1[18];

    (*(v34 + 8))(v21, v35);
  }

  v37 = v1[17];
  v36 = v1[18];
  v42(v37, v1[25], v36);
  type metadata accessor for PromptResult(0, v36, v38, v39);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1DCF8282C(v37);
}

uint64_t sub_1DCF84F04()
{
  OUTLINED_FUNCTION_41();
  v20 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = v0[27];
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1DD0DF18C();
    v10 = sub_1DCB10E9C(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "SimpleDisambiguationPromptFlow encountered an error while trying to parse user input: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v11 = v0[27];
  v12 = v0[13];
  v14 = v12[7];
  v13 = v12[8];
  __swift_project_boxed_opaque_existential_1(v12 + 4, v14);
  v15 = swift_task_alloc();
  v0[28] = v15;
  *(v15 + 16) = v12;
  *(v15 + 24) = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[29] = v16;
  *v16 = v17;
  v16[1] = sub_1DCF85110;

  return sub_1DCB63BBC((v0 + 2), &unk_1DD105708, v15, v14, v13);
}

uint64_t sub_1DCF85110()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCF85220()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[27];
  v3 = v0[17];
  v2 = v0[18];
  *v3 = v1;
  *(v3 + 8) = 1;
  type metadata accessor for PromptResult(0, v2, v4, v5);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v6 = v1;
  sub_1DCF8282C(v3);
}

uint64_t sub_1DCF85310()
{
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 216);

  swift_willThrow();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCF853CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a1;
  v5[8] = v4;
  v5[9] = type metadata accessor for SimpleDisambiguationPromptFlow.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF8548C, 0, 0);
}

uint64_t sub_1DCF8548C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_17_47();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 88) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCF85530()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF85634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a1;
  v5[8] = v4;
  v5[9] = type metadata accessor for SimpleDisambiguationPromptFlow.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF856F4, 0, 0);
}

uint64_t sub_1DCF856F4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_17_47();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 88) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCF85798(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCF857E0, 0, 0);
}

uint64_t sub_1DCF857E0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_28_33();
  OUTLINED_FUNCTION_25_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 40) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_71(v1);

  return v4(v3);
}

uint64_t sub_1DCF858DC(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCF85924, 0, 0);
}

uint64_t sub_1DCF85924()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_28_33();
  OUTLINED_FUNCTION_25_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 40) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_71(v1);

  return v4(v3);
}

uint64_t sub_1DCF85A20(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCF85A68, 0, 0);
}

uint64_t sub_1DCF85A68()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_28_33();
  OUTLINED_FUNCTION_25_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 40) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_71(v1);

  return v4(v3);
}

uint64_t sub_1DCF85B64(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCF85BAC, 0, 0);
}

uint64_t sub_1DCF85BAC()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[4];
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);
  OUTLINED_FUNCTION_8();
  v9 = (v4 + *v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[5] = v5;
  *v5 = v6;
  v5[1] = sub_1DCBF9B9C;
  v7 = v0[2];

  return v9(v7, v3, v2);
}

uint64_t sub_1DCF85CC0(uint64_t a1, void *a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCF85D0C, 0, 0);
}

uint64_t sub_1DCF85D0C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[5];
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);
  OUTLINED_FUNCTION_8();
  v10 = (v4 + *v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[6] = v5;
  *v5 = v6;
  v5[1] = sub_1DCF85E28;
  v7 = v0[4];
  v8 = v0[2];

  return v10(v8, v7, v3, v2);
}

uint64_t sub_1DCF85E28()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

unint64_t sub_1DCF85F08(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x646574726174732ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      (*(v3 + 8))(v5, a1);
      result = 0x65646E7573696D2ELL;
      break;
    case 2:
      (*(v3 + 8))(v5, a1);
      result = 0x74656C706D6F632ELL;
      break;
    case 3:
      (*(v3 + 8))(v5, a1);
      result = 0x726F7272652ELL;
      break;
    case 4:
      return result;
    case 5:
      result = 0x5374706D6F72702ELL;
      break;
    case 6:
      result = 0x61507974706D652ELL;
      break;
    case 7:
      result = 0x6C6C65636E61632ELL;
      break;
    default:
      (*(v3 + 8))(v5, a1);
      result = 0xD000000000000011;
      break;
  }

  return result;
}

char *sub_1DCF86138()
{
  v1 = *v0;
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = *(*v0 + 120);
  type metadata accessor for SimpleDisambiguationPromptFlow.State(0, *(v1 + 80), *(v1 + 88), v3);
  OUTLINED_FUNCTION_2();
  (*(v4 + 8))(&v0[v2]);
  return v0;
}

uint64_t sub_1DCF861E8()
{
  sub_1DCF86138();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF86270(uint64_t a1)
{
  result = type metadata accessor for Input(319);
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    result = type metadata accessor for PromptResult(319, AssociatedTypeWitness, v4, v5);
    if (v6 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

char *sub_1DCF8635C(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  v195 = sub_1DD0DB04C();
  v210 = *(v195 - 8);
  v217 = *(v210 + 64);
  v192 = sub_1DD0DC76C();
  v203 = *(v192 - 8);
  v191 = v203;
  v3 = *(v203 + 80);
  v189 = sub_1DD0DB1EC();
  v205 = *(v189 - 8);
  v188 = v205;
  v207 = *(v205 + 80) | v3;
  v194 = sub_1DD0DB4BC();
  v201 = *(v194 - 8);
  v216 = v201;
  v196 = *(v201 + 80);
  v193 = sub_1DD0DB3EC();
  __n = *(v193 - 8);
  v4 = __n;
  v5 = *(__n + 80);
  v6 = v196 & 0xF8 | v5 | 7u;
  v7 = sub_1DD0DD12C();
  v199 = *(v7 - 8);
  v186 = v199;
  v187 = v7;
  v8 = *(v199 + 80);
  v185 = sub_1DD0DD08C();
  v183 = *(v185 - 8);
  v9 = v8 | *(v183 + 80);
  v10 = *(v203 + 64);
  v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v184 = v10;
  if (v11 <= v10)
  {
    v11 = *(v203 + 64);
  }

  if (v11 <= *(v205 + 64))
  {
    v11 = *(v205 + 64);
  }

  v12 = v5;
  v202 = *(v201 + 64) + v5;
  v206 = v5;
  v180 = __n;
  v13 = *(__n + 84);
  v14 = *(__n + 64);
  v177 = v14;
  if (!v13)
  {
    ++v14;
  }

  v204 = v14;
  v190 = v202 & ~v5;
  v178 = v14 + 7;
  v15 = (v14 + 7 + v190) & 0xFFFFFFFFFFFFFFF8;
  __na = (v15 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v11 <= __na)
  {
    v11 = (v15 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v16 = v15 + 31;
  if (v11 <= (((((v16 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v11 = (((((v16 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v182 = *(v199 + 64);
  v179 = *(v4 + 84);
  v17 = v13 != 0;
  v18 = v13 - 1;
  if (!v17)
  {
    v18 = 0;
  }

  v176 = v18;
  v181 = *(v216 + 84);
  if (v18 <= v181)
  {
    v18 = *(v216 + 84);
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  v200 = v6 + 16;
  v20 = v196 & 0xF8 | v5 | 7u;
  v21 = (v207 | v9) & 0xF8 | v6;
  v22 = ((v16 + ((v6 + 16 + ((v182 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 <= v22)
  {
    v11 = v22;
  }

  v23 = *(*(v185 - 8) + 64);
  if (v11 > v23)
  {
    v23 = v11;
  }

  if (v23 <= 0x18)
  {
    v24 = 24;
  }

  else
  {
    v24 = v23;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  if (*(v26 + 64) <= 9uLL)
  {
    v27 = 9;
  }

  else
  {
    v27 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v27 + 1 > ((((v24 + ((v217 + v21) & ~v21) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41)
  {
    v28 = v27 + 1;
  }

  else
  {
    v28 = ((((v24 + ((v217 + v21) & ~v21) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  if (v28 <= 9)
  {
    v29 = 9;
  }

  else
  {
    v29 = v28;
  }

  v30 = *(v210 + 80);
  v31 = *(v26 + 80);
  if (((v31 | v30) & 0xF8 | v21) != 7 || ((v207 | v196 | v12 | v9 | v30 | v31) & 0x100000) != 0 || (v29 + 1) > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v32 = a2[v29];
  v33 = v32 - 4;
  if (v32 < 4)
  {
    v35 = a1;
  }

  else
  {
    if (v29 <= 3)
    {
      v34 = v29;
    }

    else
    {
      v34 = 4;
    }

    v35 = a1;
    switch(v34)
    {
      case 1:
        v36 = *a2;
        goto LABEL_48;
      case 2:
        v36 = *a2;
        goto LABEL_48;
      case 3:
        v36 = *a2 | (a2[2] << 16);
        goto LABEL_48;
      case 4:
        v36 = *a2;
LABEL_48:
        if (v29 < 4)
        {
          v36 |= v33 << (8 * v29);
        }

        v32 = v36 + 4;
        break;
      default:
        break;
    }
  }

  v215 = v29;
  v37 = ~v206;
  v38 = ~v20;
  switch(v32)
  {
    case 0u:
      v208 = v24 + 1;
      (*(v210 + 16))(v35, a2, v195);
      v211 = &v35[v217 + 7];
      v39 = (v211 & 0xFFFFFFFFFFFFFFF8);
      v40 = &a2[v217 + 7];
      v41 = (v40 & 0xFFFFFFFFFFFFFFF8);
      v42 = *((v40 & 0xFFFFFFFFFFFFFFF8) + v24);
      v43 = v42 - 10;
      if (v42 < 0xA)
      {
        v45 = v24;
      }

      else
      {
        if (v24 <= 3)
        {
          v44 = v24;
        }

        else
        {
          v44 = 4;
        }

        v45 = v24;
        switch(v44)
        {
          case 1:
            v46 = *v41;
            goto LABEL_93;
          case 2:
            v46 = *v41;
            goto LABEL_93;
          case 3:
            v46 = *v41 | (v41[2] << 16);
            goto LABEL_93;
          case 4:
            v46 = *v41;
LABEL_93:
            if (v24 < 4)
            {
              v42 = (v46 | (v43 << (8 * v24))) + 10;
            }

            else
            {
              v42 = v46 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v42)
      {
        case 0u:
          (*(v191 + 16))(v211 & 0xFFFFFFFFFFFFFFF8, v40 & 0xFFFFFFFFFFFFFFF8, v192);
          *((v211 & 0xFFFFFFFFFFFFFFF8) + v45) = 0;
          goto LABEL_169;
        case 1u:
          (*(v191 + 16))(v211 & 0xFFFFFFFFFFFFFFF8, v40 & 0xFFFFFFFFFFFFFFF8, v192);
          *(((v211 | 7) + v184) & 0xFFFFFFFFFFFFFFF8) = *(((v40 | 7) + v184) & 0xFFFFFFFFFFFFFFF8);
          *((v211 & 0xFFFFFFFFFFFFFFF8) + v45) = 1;
          sub_1DD0DCF8C();
        case 2u:
          *v39 = *v41;
          v39[1] = *(v41 + 1);
          v39[2] = *(v41 + 2);
          *(v39 + v45) = 2;

          goto LABEL_169;
        case 3u:
          *v39 = *v41;
          *(v39 + v45) = 3;
          swift_unknownObjectRetain();
          goto LABEL_169;
        case 4u:
          v66 = v211 & 0xFFFFFFFFFFFFFFF8;
          (*(v188 + 16))(v211 & 0xFFFFFFFFFFFFFFF8, v40 & 0xFFFFFFFFFFFFFFF8, v189);
          v67 = 4;
          goto LABEL_107;
        case 5u:
          v76 = *v41;
          *v39 = *v41;
          *(v39 + v45) = 5;
          goto LABEL_168;
        case 6u:
          (*(v216 + 16))(v211 & 0xFFFFFFFFFFFFFFF8, v40 & 0xFFFFFFFFFFFFFFF8, v194);
          v78 = ((v202 + (v211 & 0xFFFFFFFFFFFFFFF8)) & v37);
          v79 = (&v41[v202] & v37);
          if (__swift_getEnumTagSinglePayload(v79, 1, v193))
          {
            v80 = v204;
            memcpy(v78, v79, v204);
          }

          else
          {
            (*(v4 + 16))(v78, v79, v193);
            __swift_storeEnumTagSinglePayload(v78, 0, 1, v193);
            v80 = v204;
          }

          v111 = &v35[v217 + 7];
          v130 = ((v78 + v80 + 7) & 0xFFFFFFFFFFFFFFF8);
          v131 = ((v79 + v80 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v130 = *v131;
          v130[1] = v131[1];
          v132 = (v130 + 19) & 0xFFFFFFFFFFFFFFF8;
          v133 = (v131 + 19) & 0xFFFFFFFFFFFFFFF8;
          v134 = *v133;
          *(v132 + 4) = *(v133 + 4);
          *v132 = v134;
          *((v211 & 0xFFFFFFFFFFFFFFF8) + v45) = 6;
          goto LABEL_148;
        case 7u:
          (*(v216 + 16))(v211 & 0xFFFFFFFFFFFFFFF8, v40 & 0xFFFFFFFFFFFFFFF8, v194);
          v70 = ((v202 + (v211 & 0xFFFFFFFFFFFFFFF8)) & v37);
          v71 = (&v41[v202] & v37);
          if (__swift_getEnumTagSinglePayload(v71, 1, v193))
          {
            v72 = v204;
            memcpy(v70, v71, v204);
          }

          else
          {
            (*(v4 + 16))(v70, v71, v193);
            __swift_storeEnumTagSinglePayload(v70, 0, 1, v193);
            v72 = v204;
          }

          v106 = ((v70 + v72 + 7) & 0xFFFFFFFFFFFFFFF8);
          v107 = ((v71 + v72 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v106 = *v107;
          v106[1] = v107[1];
          v108 = (v106 + 19) & 0xFFFFFFFFFFFFFFF8;
          v109 = (v107 + 19) & 0xFFFFFFFFFFFFFFF8;
          v110 = *v109;
          *(v108 + 4) = *(v109 + 4);
          *v108 = v110;
          v111 = &v35[v217 + 7];
          v112 = (((v211 | 7) + __na) & 0xFFFFFFFFFFFFFFF8);
          v113 = (((v40 | 7) + __na) & 0xFFFFFFFFFFFFFFF8);
          *v112 = *v113;
          v112[1] = v113[1];
          v114 = ((v112 + 23) & 0xFFFFFFFFFFFFFFF8);
          v115 = ((v113 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v114 = *v115;
          v114[1] = v115[1];
          v116 = ((v114 + 23) & 0xFFFFFFFFFFFFFFF8);
          v117 = ((v115 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v116 = *v117;
          v116[1] = v117[1];
          *((v211 & 0xFFFFFFFFFFFFFFF8) + v45) = 7;

LABEL_148:

          v84 = v24 + 1;
          goto LABEL_171;
        case 8u:
          (*(v186 + 16))(v211 & 0xFFFFFFFFFFFFFFF8, v40 & 0xFFFFFFFFFFFFFFF8, v187);
          v86 = (((v211 | 7) + v182) & 0xFFFFFFFFFFFFFFF8);
          v87 = (((v40 | 7) + v182) & 0xFFFFFFFFFFFFFFF8);
          *v86 = *v87;
          v86[1] = v87[1];
          v88 = ((v86 + v200) & v38);
          v89 = ((v87 + v200) & v38);

          if (v181 != v19)
          {
            v93 = ((v89 + v202) & v37);
            if (v176 == v19)
            {
              v91 = v204;
              v90 = v194;
              if (v179 >= 2 && __swift_getEnumTagSinglePayload((v89 + v202) & v37, v179, v193) >= 2)
              {
                goto LABEL_137;
              }
            }

            else
            {
              v140 = *(((v93 + v178) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v140 >= 0xFFFFFFFF)
              {
                LODWORD(v140) = -1;
              }

              v91 = v204;
              v90 = v194;
              if ((v140 + 1) >= 2)
              {
                goto LABEL_137;
              }
            }

            v94 = v216;
            v92 = v202;
            goto LABEL_156;
          }

          v90 = v194;
          v91 = v204;
          if (__swift_getEnumTagSinglePayload(v89, v181, v194))
          {
LABEL_137:
            memcpy(v88, v89, __na);
            v104 = v190;
LABEL_166:
            v149 = v91;
            goto LABEL_167;
          }

          v92 = v202;
          v93 = ((v89 + v202) & v37);
          v94 = v216;
LABEL_156:
          (*(v94 + 16))(v88, v89, v90);
          v141 = ((v88 + v92) & v37);
          if (__swift_getEnumTagSinglePayload(v93, 1, v193))
          {
            memcpy(v141, v93, v91);
          }

          else
          {
            (*(v180 + 16))(v141, v93, v193);
            __swift_storeEnumTagSinglePayload(v141, 0, 1, v193);
          }

          v104 = v190;
          v144 = ((v141 + v178) & 0xFFFFFFFFFFFFFFF8);
          v145 = ((v93 + v178) & 0xFFFFFFFFFFFFFFF8);
          *v144 = *v145;
          v144[1] = v145[1];
          v146 = (v144 + 19) & 0xFFFFFFFFFFFFFFF8;
          v147 = (v145 + 19) & 0xFFFFFFFFFFFFFFF8;
          v148 = *v147;
          *(v146 + 4) = *(v147 + 4);
          *v146 = v148;

          v149 = v177;
          if (!v179)
          {
            goto LABEL_166;
          }

LABEL_167:
          v150 = (((v104 + v149 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          v151 = ((v88 + v150 + 7) & 0xFFFFFFFFFFFFFFF8);
          v76 = *((v89 + v150 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v151 = v76;
          *((v211 & 0xFFFFFFFFFFFFFFF8) + v45) = 8;
LABEL_168:
          v152 = v76;
LABEL_169:
          v84 = v208;
LABEL_170:
          v111 = &v35[v217 + 7];
LABEL_171:
          v153 = (((v40 | 7) + v84) & 0xFFFFFFFFFFFFFFF8);
          v154 = (((v111 | 7) + v84) & 0xFFFFFFFFFFFFFFF8);
          *v154 = *v153;
          v155 = (v154 + 15) & 0xFFFFFFFFFFFFFFF8;
          v156 = (v153 + 15) & 0xFFFFFFFFFFFFFFF8;
          v157 = *(v156 + 24);

          if (v157 < 0xFFFFFFFF)
          {
            v158 = *v156;
            v159 = *(v156 + 16);
            *(v155 + 32) = *(v156 + 32);
            *v155 = v158;
            *(v155 + 16) = v159;
          }

          else
          {
            *(v155 + 24) = v157;
            *(v155 + 32) = *(v156 + 32);
            (**(v157 - 8))(v155, v156, v157);
          }

          *(v155 + 40) = *(v156 + 40);
          v35[v215] = 0;
          return v35;
        case 9u:
          v66 = v211 & 0xFFFFFFFFFFFFFFF8;
          (*(v183 + 16))(v211 & 0xFFFFFFFFFFFFFFF8, v40 & 0xFFFFFFFFFFFFFFF8, v185);
          v67 = 9;
LABEL_107:
          *(v66 + v45) = v67;
          goto LABEL_169;
        default:
          v84 = v24 + 1;
          memcpy((v211 & 0xFFFFFFFFFFFFFFF8), (v40 & 0xFFFFFFFFFFFFFFF8), v208);
          goto LABEL_170;
      }

    case 1u:
      v209 = v24 + 1;
      (*(v210 + 16))(v35, a2, v195);
      v212 = &v35[v217 + 7];
      v54 = (v212 & 0xFFFFFFFFFFFFFFF8);
      v55 = &a2[v217 + 7];
      v56 = (v55 & 0xFFFFFFFFFFFFFFF8);
      v57 = *((v55 & 0xFFFFFFFFFFFFFFF8) + v24);
      v58 = v57 - 10;
      if (v57 < 0xA)
      {
        v60 = v24;
      }

      else
      {
        if (v24 <= 3)
        {
          v59 = v24;
        }

        else
        {
          v59 = 4;
        }

        v60 = v24;
        switch(v59)
        {
          case 1:
            v61 = *v56;
            goto LABEL_99;
          case 2:
            v61 = *v56;
            goto LABEL_99;
          case 3:
            v61 = *v56 | (v56[2] << 16);
            goto LABEL_99;
          case 4:
            v61 = *v56;
LABEL_99:
            if (v24 < 4)
            {
              v57 = (v61 | (v58 << (8 * v24))) + 10;
            }

            else
            {
              v57 = v61 + 10;
            }

            break;
          default:
            goto LABEL_102;
        }
      }

      break;
    case 2u:
      v47 = a2[v27];
      v48 = v47 - 2;
      if (v47 >= 2)
      {
        if (v27 <= 3)
        {
          v49 = v27;
        }

        else
        {
          v49 = 4;
        }

        switch(v49)
        {
          case 1:
            v50 = *a2;
            goto LABEL_81;
          case 2:
            v50 = *a2;
            goto LABEL_81;
          case 3:
            v50 = *a2 | (a2[2] << 16);
            goto LABEL_81;
          case 4:
            v50 = *a2;
LABEL_81:
            if (v27 < 4)
            {
              v47 = (v50 | (v48 << (8 * v27))) + 2;
            }

            else
            {
              v47 = v50 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v47 == 1)
      {
        v63 = *a2;
        v64 = *a2;
        *v35 = v63;
        v35[8] = a2[8];
        v35[v27] = 1;
      }

      else if (v47)
      {
        memcpy(v35, a2, v27 + 1);
      }

      else
      {
        (*(v26 + 16))(v35, a2, AssociatedTypeWitness);
        v35[v27] = 0;
      }

      v65 = v215;
      v53 = 2;
      goto LABEL_187;
    case 3u:
      v51 = *a2;
      v52 = *a2;
      *v35 = v51;
      v35[8] = a2[8];
      v53 = 3;
      goto LABEL_186;
    default:

      return memcpy(v35, a2, v24 + 1);
  }

LABEL_102:
  switch(v57)
  {
    case 0u:
      (*(v191 + 16))(v212 & 0xFFFFFFFFFFFFFFF8, v55 & 0xFFFFFFFFFFFFFFF8, v192);
      *((v212 & 0xFFFFFFFFFFFFFFF8) + v60) = 0;
      goto LABEL_180;
    case 1u:
      (*(v191 + 16))(v212 & 0xFFFFFFFFFFFFFFF8, v55 & 0xFFFFFFFFFFFFFFF8, v192);
      *(((v212 | 7) + v184) & 0xFFFFFFFFFFFFFFF8) = *(((v55 | 7) + v184) & 0xFFFFFFFFFFFFFFF8);
      *((v212 & 0xFFFFFFFFFFFFFFF8) + v60) = 1;
      sub_1DD0DCF8C();
    case 2u:
      *v54 = *v56;
      v54[1] = *(v56 + 1);
      v54[2] = *(v56 + 2);
      *(v54 + v60) = 2;

      goto LABEL_180;
    case 3u:
      *v54 = *v56;
      *(v54 + v60) = 3;
      swift_unknownObjectRetain();
      goto LABEL_180;
    case 4u:
      v68 = v212 & 0xFFFFFFFFFFFFFFF8;
      (*(v188 + 16))(v212 & 0xFFFFFFFFFFFFFFF8, v55 & 0xFFFFFFFFFFFFFFF8, v189);
      v69 = 4;
      goto LABEL_109;
    case 5u:
      v77 = *v56;
      *v54 = *v56;
      *(v54 + v60) = 5;
      goto LABEL_179;
    case 6u:
      (*(v216 + 16))(v212 & 0xFFFFFFFFFFFFFFF8, v55 & 0xFFFFFFFFFFFFFFF8, v194);
      v81 = ((v202 + (v212 & 0xFFFFFFFFFFFFFFF8)) & v37);
      v82 = (&v56[v202] & v37);
      if (__swift_getEnumTagSinglePayload(v82, 1, v193))
      {
        v83 = v204;
        memcpy(v81, v82, v204);
      }

      else
      {
        (*(v4 + 16))(v81, v82, v193);
        __swift_storeEnumTagSinglePayload(v81, 0, 1, v193);
        v83 = v204;
      }

      v123 = &v35[v217 + 7];
      v135 = ((v81 + v83 + 7) & 0xFFFFFFFFFFFFFFF8);
      v136 = ((v82 + v83 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v135 = *v136;
      v135[1] = v136[1];
      v137 = (v135 + 19) & 0xFFFFFFFFFFFFFFF8;
      v138 = (v136 + 19) & 0xFFFFFFFFFFFFFFF8;
      v139 = *v138;
      *(v137 + 4) = *(v138 + 4);
      *v137 = v139;
      *((v212 & 0xFFFFFFFFFFFFFFF8) + v60) = 6;
      goto LABEL_151;
    case 7u:
      (*(v216 + 16))(v212 & 0xFFFFFFFFFFFFFFF8, v55 & 0xFFFFFFFFFFFFFFF8, v194);
      v73 = ((v202 + (v212 & 0xFFFFFFFFFFFFFFF8)) & v37);
      v74 = (&v56[v202] & v37);
      if (__swift_getEnumTagSinglePayload(v74, 1, v193))
      {
        v75 = v204;
        memcpy(v73, v74, v204);
      }

      else
      {
        (*(v4 + 16))(v73, v74, v193);
        __swift_storeEnumTagSinglePayload(v73, 0, 1, v193);
        v75 = v204;
      }

      v118 = ((v73 + v75 + 7) & 0xFFFFFFFFFFFFFFF8);
      v119 = ((v74 + v75 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v118 = *v119;
      v118[1] = v119[1];
      v120 = (v118 + 19) & 0xFFFFFFFFFFFFFFF8;
      v121 = (v119 + 19) & 0xFFFFFFFFFFFFFFF8;
      v122 = *v121;
      *(v120 + 4) = *(v121 + 4);
      *v120 = v122;
      v123 = &v35[v217 + 7];
      v124 = (((v212 | 7) + __na) & 0xFFFFFFFFFFFFFFF8);
      v125 = (((v55 | 7) + __na) & 0xFFFFFFFFFFFFFFF8);
      *v124 = *v125;
      v124[1] = v125[1];
      v126 = ((v124 + 23) & 0xFFFFFFFFFFFFFFF8);
      v127 = ((v125 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v126 = *v127;
      v126[1] = v127[1];
      v128 = ((v126 + 23) & 0xFFFFFFFFFFFFFFF8);
      v129 = ((v127 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v128 = *v129;
      v128[1] = v129[1];
      *((v212 & 0xFFFFFFFFFFFFFFF8) + v60) = 7;

LABEL_151:

      v85 = v24 + 1;
      goto LABEL_182;
    case 8u:
      (*(v186 + 16))(v212 & 0xFFFFFFFFFFFFFFF8, v55 & 0xFFFFFFFFFFFFFFF8, v187);
      v95 = (((v212 | 7) + v182) & 0xFFFFFFFFFFFFFFF8);
      v96 = (((v55 | 7) + v182) & 0xFFFFFFFFFFFFFFF8);
      *v95 = *v96;
      v95[1] = v96[1];
      v97 = ((v95 + v200) & v38);
      v98 = ((v96 + v200) & v38);

      if (v181 == v19)
      {
        v99 = v194;
        v100 = v204;
        if (!__swift_getEnumTagSinglePayload(v98, v181, v194))
        {
          v101 = v202;
          v102 = ((v98 + v202) & v37);
          v103 = v216;
          goto LABEL_162;
        }

LABEL_141:
        memcpy(v97, v98, __na);
        v105 = v190;
        goto LABEL_177;
      }

      v102 = ((v98 + v202) & v37);
      if (v176 == v19)
      {
        v100 = v204;
        v99 = v194;
        if (v179 >= 2 && __swift_getEnumTagSinglePayload((v98 + v202) & v37, v179, v193) >= 2)
        {
          goto LABEL_141;
        }
      }

      else
      {
        v142 = *(((v102 + v178) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v142 >= 0xFFFFFFFF)
        {
          LODWORD(v142) = -1;
        }

        v100 = v204;
        v99 = v194;
        if ((v142 + 1) >= 2)
        {
          goto LABEL_141;
        }
      }

      v103 = v216;
      v101 = v202;
LABEL_162:
      (*(v103 + 16))(v97, v98, v99);
      v143 = ((v97 + v101) & v37);
      if (__swift_getEnumTagSinglePayload(v102, 1, v193))
      {
        memcpy(v143, v102, v100);
      }

      else
      {
        (*(v180 + 16))(v143, v102, v193);
        __swift_storeEnumTagSinglePayload(v143, 0, 1, v193);
      }

      v105 = v190;
      v160 = ((v143 + v178) & 0xFFFFFFFFFFFFFFF8);
      v161 = ((v102 + v178) & 0xFFFFFFFFFFFFFFF8);
      *v160 = *v161;
      v160[1] = v161[1];
      v162 = (v160 + 19) & 0xFFFFFFFFFFFFFFF8;
      v163 = (v161 + 19) & 0xFFFFFFFFFFFFFFF8;
      v164 = *v163;
      *(v162 + 4) = *(v163 + 4);
      *v162 = v164;

      v165 = v177;
      if (v179)
      {
LABEL_178:
        v166 = (((v105 + v165 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
        v167 = ((v97 + v166 + 7) & 0xFFFFFFFFFFFFFFF8);
        v77 = *((v98 + v166 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v167 = v77;
        *((v212 & 0xFFFFFFFFFFFFFFF8) + v60) = 8;
LABEL_179:
        v168 = v77;
LABEL_180:
        v85 = v209;
LABEL_181:
        v123 = &v35[v217 + 7];
LABEL_182:
        v169 = (((v55 | 7) + v85) & 0xFFFFFFFFFFFFFFF8);
        v170 = (((v123 | 7) + v85) & 0xFFFFFFFFFFFFFFF8);
        *v170 = *v169;
        v171 = (v170 + 15) & 0xFFFFFFFFFFFFFFF8;
        v172 = (v169 + 15) & 0xFFFFFFFFFFFFFFF8;
        v173 = *(v172 + 24);

        if (v173 < 0xFFFFFFFF)
        {
          v174 = *v172;
          v175 = *(v172 + 16);
          *(v171 + 32) = *(v172 + 32);
          *v171 = v174;
          *(v171 + 16) = v175;
        }

        else
        {
          *(v171 + 24) = v173;
          *(v171 + 32) = *(v172 + 32);
          (**(v173 - 8))(v171, v172, v173);
        }

        *(v171 + 40) = *(v172 + 40);
        v53 = 1;
LABEL_186:
        v65 = v215;
LABEL_187:
        v35[v65] = v53;
        return v35;
      }

LABEL_177:
      v165 = v100;
      goto LABEL_178;
    case 9u:
      v68 = v212 & 0xFFFFFFFFFFFFFFF8;
      (*(v183 + 16))(v212 & 0xFFFFFFFFFFFFFFF8, v55 & 0xFFFFFFFFFFFFFFF8, v185);
      v69 = 9;
LABEL_109:
      *(v68 + v60) = v69;
      goto LABEL_180;
    default:
      v85 = v24 + 1;
      memcpy((v212 & 0xFFFFFFFFFFFFFFF8), (v55 & 0xFFFFFFFFFFFFFFF8), v209);
      goto LABEL_181;
  }
}