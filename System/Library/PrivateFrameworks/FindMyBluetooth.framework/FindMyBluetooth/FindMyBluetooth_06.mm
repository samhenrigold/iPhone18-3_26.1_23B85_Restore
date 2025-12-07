uint64_t sub_24ACB2D94()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[8];

    return MEMORY[0x2822009F8](sub_24ACB2EE0, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_24ACB2EE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACB2F54(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = *a1;
  return MEMORY[0x2822009F8](sub_24ACB2F7C, v1, 0);
}

uint64_t sub_24ACB2F7C()
{
  v22 = v0;
  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v1 = sub_24ACD0490();
  __swift_project_value_buffer(v1, qword_2814ADDB0);
  v2 = sub_24ACD0470();
  v3 = sub_24ACD0930();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_24AC29E20(0x526E616353746573, 0xEF293A5F28657461, &v21);
    *(v5 + 12) = 2082;
    if (v4 <= 3)
    {
      v15 = 0x6E776F6E6B6E752ELL;
      v16 = 0xE900000000000063;
      v17 = 0x69646F697265702ELL;
      if (v4 != 2)
      {
        v17 = 0x6F72676B6361622ELL;
        v16 = 0xEB00000000646E75;
      }

      if (v4)
      {
        v15 = 0x746C75616665642ELL;
      }

      if (v4 <= 1)
      {
        v13 = v15;
      }

      else
      {
        v13 = v17;
      }

      if (v4 <= 1)
      {
        v14 = 0xE800000000000000;
      }

      else
      {
        v14 = v16;
      }
    }

    else
    {
      v7 = 0xE700000000000000;
      v8 = 0x6D756964656D2ELL;
      v9 = 0xE500000000000000;
      v10 = 0x686769682ELL;
      if (v4 != 7)
      {
        v10 = 2019650862;
        v9 = 0xE400000000000000;
      }

      if (v4 != 6)
      {
        v8 = v10;
        v7 = v9;
      }

      v11 = 0xE400000000000000;
      v12 = 2003790894;
      if (v4 != 4)
      {
        v12 = 0x4C6D756964656D2ELL;
        v11 = 0xEA0000000000776FLL;
      }

      if (v4 <= 5)
      {
        v13 = v12;
      }

      else
      {
        v13 = v8;
      }

      if (v4 <= 5)
      {
        v14 = v11;
      }

      else
      {
        v14 = v7;
      }
    }

    v18 = sub_24AC29E20(v13, v14, &v21);

    *(v5 + 14) = v18;
    _os_log_impl(&dword_24AC18000, v2, v3, "%s %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v6, -1, -1);
    MEMORY[0x24C22DC60](v5, -1, -1);
  }

  [*(*(v0 + 16) + 112) setBleScanRate_];
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_24ACB326C(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_24ACB328C, v1, 0);
}

uint64_t sub_24ACB328C()
{
  v11 = v0;
  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v1 = sub_24ACD0490();
  __swift_project_value_buffer(v1, qword_2814ADDB0);
  v2 = sub_24ACD0470();
  v3 = sub_24ACD0930();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AC29E20(0xD00000000000001ELL, 0x800000024ACDA920, &v10);
    _os_log_impl(&dword_24AC18000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C22DC60](v5, -1, -1);
    MEMORY[0x24C22DC60](v4, -1, -1);
  }

  *(v0 + 16) = 3;
  v6 = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x80000800000;
  *(v0 + 32) = v6;
  *(v0 + 40) = v6;
  *(v0 + 48) = 1;
  *(v0 + 49) = 0;
  *(v0 + 51) = 1;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_24ACB3474;
  v8 = *(v0 + 56);

  return sub_24ACB1AD4(v8, v0 + 16);
}

uint64_t sub_24ACB3474()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[8];

    return MEMORY[0x2822009F8](sub_24ACB35B8, v3, 0);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_24ACB35B8()
{
  swift_bridgeObjectRelease_n();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACB3624()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9EBE8, qword_24ACD7C80);
  swift_allocObject();
  result = sub_24ACD0150();
  qword_2814AEE60 = result;
  return result;
}

uint64_t static CBDiscovery.subscribeToXPCDiscoveryEvents(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v6 = sub_24ACD0490();
  __swift_project_value_buffer(v6, qword_2814ADDB0);
  v7 = sub_24ACD0470();
  v8 = sub_24ACD0930();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_24AC29E20(0xD000000000000023, 0x800000024ACDA980, v14);
    _os_log_impl(&dword_24AC18000, v7, v8, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C22DC60](v10, -1, -1);
    MEMORY[0x24C22DC60](v9, -1, -1);
  }

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v3;
  v11[5] = v3;
  v14[4] = sub_24ACBA638;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_24ACB41B8;
  v14[3] = &block_descriptor_29_0;
  v12 = _Block_copy(v14);

  xpc_set_event_stream_handler("com.apple.bluetooth.discovery", 0, v12);
  _Block_release(v12);
  if (qword_2814ADDD0 != -1)
  {
    swift_once();
  }

  return sub_24ACD0140();
}

void sub_24ACB38C0(void *a1, uint64_t a2, uint64_t a3)
{
  v61[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for DeviceChange(0);
  MEMORY[0x28223BE20](v6);
  v8 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Device(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v60 - v13;
  if (xpc_dictionary_get_string(a1, *MEMORY[0x277D86430]))
  {
    if (sub_24ACD0600() == a2 && v15 == a3)
    {
    }

    else
    {
      v17 = sub_24ACD0C40();

      if ((v17 & 1) == 0)
      {
        return;
      }
    }

    if (qword_2814ADDA8 != -1)
    {
      swift_once();
    }

    v18 = sub_24ACD0490();
    v19 = __swift_project_value_buffer(v18, qword_2814ADDB0);
    swift_unknownObjectRetain();
    v60[1] = v19;
    v20 = sub_24ACD0470();
    v21 = sub_24ACD0930();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v60[0] = v8;
      v24 = v14;
      v25 = v23;
      v61[0] = v23;
      *v22 = 136315138;
      v60[2] = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EBF8, &unk_24ACD7C98);
      v26 = sub_24ACD05A0();
      v28 = sub_24AC29E20(v26, v27, v61);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_24AC18000, v20, v21, "Received accessory discovery %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      v29 = v25;
      v14 = v24;
      v8 = v60[0];
      MEMORY[0x24C22DC60](v29, -1, -1);
      MEMORY[0x24C22DC60](v22, -1, -1);
    }

    v30 = xpc_dictionary_get_dictionary(a1, "device");
    if (v30)
    {
      v31 = v30;
      v32 = objc_allocWithZone(MEMORY[0x277CBE020]);
      v61[0] = 0;
      swift_unknownObjectRetain();
      v33 = [v32 initWithXPCEventRepresentation:v31 error:v61];
      if (v33)
      {
        v34 = v33;
        v35 = v61[0];
        swift_unknownObjectRelease();
        sub_24ACAA80C(v34, v12);
        sub_24ACADDD0(v12, v14);
        if (xpc_dictionary_get_string(a1, "eventType"))
        {
          v37 = sub_24ACD0600();
          v38 = v36;
          if (v37 == 0x6F46656369766564 && v36 == 0xEB00000000646E75 || (sub_24ACD0C40() & 1) != 0)
          {

            if (qword_2814ADDD0 != -1)
            {
              swift_once();
            }

            sub_24ACBA644(v14, v8, type metadata accessor for Device);
LABEL_22:
            swift_storeEnumTagMultiPayload();
            sub_24ACD0130();
            swift_unknownObjectRelease();
            sub_24ACBA6AC(v8, type metadata accessor for DeviceChange);
LABEL_34:
            sub_24ACBA6AC(v14, type metadata accessor for Device);
            return;
          }

          if (v37 == 0x6F4C656369766564 && v38 == 0xEA00000000007473 || (sub_24ACD0C40() & 1) != 0)
          {

            if (qword_2814ADDD0 != -1)
            {
              swift_once();
            }

            v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E898, &qword_24ACD66C0);
            (*(*(v56 - 8) + 16))(v8, v14, v56);
            goto LABEL_22;
          }

          v51 = sub_24ACD0470();
          v57 = sub_24ACD0930();
          if (os_log_type_enabled(v51, v57))
          {
            v53 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v61[0] = v58;
            *v53 = 136315138;
            v59 = sub_24AC29E20(v37, v38, v61);

            *(v53 + 4) = v59;
            _os_log_impl(&dword_24AC18000, v51, v57, "Unsupported event type %s", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v58);
            v55 = v58;
            goto LABEL_31;
          }
        }

        else
        {
          v51 = sub_24ACD0470();
          v52 = sub_24ACD0910();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v61[0] = v54;
            *v53 = 136315138;
            *(v53 + 4) = sub_24AC29E20(0x707954746E657665, 0xE900000000000065, v61);
            _os_log_impl(&dword_24AC18000, v51, v52, "Unable to get event type from %s", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v54);
            v55 = v54;
LABEL_31:
            MEMORY[0x24C22DC60](v55, -1, -1);
            MEMORY[0x24C22DC60](v53, -1, -1);
            swift_unknownObjectRelease();

            goto LABEL_34;
          }
        }

        swift_unknownObjectRelease();
        goto LABEL_34;
      }

      v43 = v61[0];
      v44 = sub_24ACD0220();

      swift_willThrow();
      swift_unknownObjectRelease();
      v45 = v44;
      v39 = sub_24ACD0470();
      v46 = sub_24ACD0910();

      if (!os_log_type_enabled(v39, v46))
      {

        swift_unknownObjectRelease();
        return;
      }

      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138543362;
      v49 = v44;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 4) = v50;
      *v48 = v50;
      _os_log_impl(&dword_24AC18000, v39, v46, "Failed to create CBDevice %{public}@", v47, 0xCu);
      sub_24AC212F4(v48, &qword_27EF9E6A0, &qword_24ACD5590);
      MEMORY[0x24C22DC60](v48, -1, -1);
      MEMORY[0x24C22DC60](v47, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = sub_24ACD0470();
      v40 = sub_24ACD0910();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v61[0] = v42;
        *v41 = 136315138;
        *(v41 + 4) = sub_24AC29E20(0x656369766564, 0xE600000000000000, v61);
        _os_log_impl(&dword_24AC18000, v39, v40, "Unable to get CBDevice dict from %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x24C22DC60](v42, -1, -1);
        MEMORY[0x24C22DC60](v41, -1, -1);
      }
    }
  }
}

uint64_t sub_24ACB41B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t CBDiscovery.deinit()
{
  sub_24AC212F4(v0 + OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_scanContinuation, &unk_27EF9E900, &qword_24ACD3A28);
  v1 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_id;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEA0, &qword_24ACD6AE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t CBDiscovery.__deallocating_deinit()
{
  sub_24AC212F4(v0 + OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_scanContinuation, &unk_27EF9E900, &qword_24ACD3A28);
  v1 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_id;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEA0, &qword_24ACD6AE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24ACB4370(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24ACB9734(a1);
}

uint64_t sub_24ACB4418(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AC214AC;

  return sub_24ACB1AD4(a1, a2);
}

uint64_t sub_24ACB44C0(uint64_t a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AC20274;

  return sub_24ACB2B10(a1, a2);
}

uint64_t sub_24ACB4568(_BYTE *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC20274;

  return sub_24ACB2F54(a1);
}

uint64_t sub_24ACB45FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_id;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEA0, &qword_24ACD6AE0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24ACB46A8@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Device(0);
  v82 = *(v7 - 8);
  v83 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v79 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v79 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v79 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v79 - v20;
  sub_24ACAA80C(*a1, &v79 - v20);
  if (v3)
  {
    if (qword_2814ADDA8 != -1)
    {
      swift_once();
    }

    v22 = sub_24ACD0490();
    __swift_project_value_buffer(v22, qword_2814ADDB0);
    v23 = v3;
    v24 = sub_24ACD0470();
    v25 = sub_24ACD0910();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = a3;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543362;
      v29 = v3;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_24AC18000, v24, v25, "Error creating buffered Device: %{public}@", v27, 0xCu);
      sub_24AC212F4(v28, &qword_27EF9E6A0, &qword_24ACD5590);
      MEMORY[0x24C22DC60](v28, -1, -1);
      v31 = v27;
      a3 = v26;
      MEMORY[0x24C22DC60](v31, -1, -1);
    }

    else
    {
    }

    goto LABEL_17;
  }

  v81 = a3;
  v32 = (a2 + OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_rssiThreshold);
  if ((*(a2 + OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_rssiThreshold + 1) & 1) != 0 || (v33 = *v32) == 0)
  {
    if (qword_2814ADDA8 != -1)
    {
      swift_once();
    }

    v45 = sub_24ACD0490();
    __swift_project_value_buffer(v45, qword_2814ADDB0);
    sub_24ACBA644(v21, v10, type metadata accessor for Device);

    v46 = sub_24ACD0470();
    v47 = sub_24ACD08F0();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v86 = v49;
      *v48 = 136315394;
      v50 = v32[1];
      v84 = *v32;
      v85 = v50;
      v51 = RSSIValue.description.getter();
      v53 = sub_24AC29E20(v51, v52, &v86);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2080;
      v54 = Device.description.getter();
      v56 = v55;
      sub_24ACBA6AC(v10, type metadata accessor for Device);
      v57 = sub_24AC29E20(v54, v56, &v86);

      *(v48 + 14) = v57;
      _os_log_impl(&dword_24AC18000, v46, v47, "No rssiThreshold %s - yield buffered device: %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v49, -1, -1);
      MEMORY[0x24C22DC60](v48, -1, -1);
    }

    else
    {

      sub_24ACBA6AC(v10, type metadata accessor for Device);
    }

    v43 = v21;
    a3 = v81;
    goto LABEL_24;
  }

  v34 = &v21[*(v83 + 28)];
  if ((v34[1] & 1) == 0 && *v34)
  {
    a3 = v81;
    if (v33 < *v34)
    {
      if (qword_2814ADDA8 != -1)
      {
        swift_once();
      }

      v35 = sub_24ACD0490();
      __swift_project_value_buffer(v35, qword_2814ADDB0);
      sub_24ACBA644(v21, v19, type metadata accessor for Device);
      v36 = sub_24ACD0470();
      v37 = sub_24ACD08F0();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v86 = v39;
        *v38 = 136315138;
        v80 = Device.description.getter();
        v41 = v40;
        sub_24ACBA6AC(v19, type metadata accessor for Device);
        v42 = sub_24AC29E20(v80, v41, &v86);

        *(v38 + 4) = v42;
        _os_log_impl(&dword_24AC18000, v36, v37, "yield buffered device: %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x24C22DC60](v39, -1, -1);
        MEMORY[0x24C22DC60](v38, -1, -1);
      }

      else
      {

        sub_24ACBA6AC(v19, type metadata accessor for Device);
      }

      v43 = v21;
LABEL_24:
      sub_24ACADDD0(v43, a3);
      v44 = 0;
      return (*(v82 + 56))(a3, v44, 1, v83);
    }

    if (qword_2814ADDA8 != -1)
    {
      swift_once();
    }

    v71 = sub_24ACD0490();
    __swift_project_value_buffer(v71, qword_2814ADDB0);
    sub_24ACBA644(v21, v16, type metadata accessor for Device);
    v60 = sub_24ACD0470();
    v72 = sub_24ACD0900();
    if (os_log_type_enabled(v60, v72))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v86 = v63;
      *v62 = 136315138;
      v73 = Device.description.getter();
      v75 = v74;
      v79 = v73;
      v80 = type metadata accessor for Device;
      sub_24ACBA6AC(v16, type metadata accessor for Device);
      v76 = sub_24AC29E20(v79, v75, &v86);

      *(v62 + 4) = v76;
      v68 = "Buffered device with out of range RSSI: %s";
      v69 = v72;
      goto LABEL_35;
    }

    v70 = v16;
LABEL_38:
    sub_24ACBA6AC(v70, type metadata accessor for Device);
    v77 = v21;
    v78 = type metadata accessor for Device;
    goto LABEL_39;
  }

  a3 = v81;
  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v59 = sub_24ACD0490();
  __swift_project_value_buffer(v59, qword_2814ADDB0);
  sub_24ACBA644(v21, v13, type metadata accessor for Device);
  v60 = sub_24ACD0470();
  v61 = sub_24ACD0900();
  if (!os_log_type_enabled(v60, v61))
  {

    v70 = v13;
    goto LABEL_38;
  }

  v62 = swift_slowAlloc();
  v63 = swift_slowAlloc();
  v86 = v63;
  *v62 = 136315138;
  v64 = Device.description.getter();
  v66 = v65;
  v79 = v64;
  v80 = type metadata accessor for Device;
  sub_24ACBA6AC(v13, type metadata accessor for Device);
  v67 = sub_24AC29E20(v79, v66, &v86);

  *(v62 + 4) = v67;
  v68 = "Buffered device with unknown RSSI: %s";
  v69 = v61;
LABEL_35:
  _os_log_impl(&dword_24AC18000, v60, v69, v68, v62, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v63);
  MEMORY[0x24C22DC60](v63, -1, -1);
  MEMORY[0x24C22DC60](v62, -1, -1);

  v77 = v21;
  v78 = v80;
LABEL_39:
  sub_24ACBA6AC(v77, v78);
LABEL_17:
  v44 = 1;
  return (*(v82 + 56))(a3, v44, 1, v83);
}

uint64_t DeviceChange.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E898, &qword_24ACD66C0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - v3;
  v5 = type metadata accessor for Device(0);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DeviceChange(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24ACBA644(v0, v10, type metadata accessor for DeviceChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_24ACADDD0(v10, v7);
      strcpy(v20, ".discovered(");
      BYTE5(v20[1]) = 0;
      HIWORD(v20[1]) = -5120;
      v12 = Device.description.getter();
      MEMORY[0x24C22CD50](v12);

      v13 = v20[0];
      sub_24ACBA6AC(v7, type metadata accessor for Device);
    }

    else
    {
      (*(v2 + 32))(v4, v10, v1);
      v20[0] = 0x2874736F6C2ELL;
      v20[1] = 0xE600000000000000;
      sub_24AC2B6A8(&qword_27EF9E930, &qword_27EF9E898, &qword_24ACD66C0, MEMORY[0x277D088C8]);
      v18 = sub_24ACD0C20();
      MEMORY[0x24C22CD50](v18);

      v13 = v20[0];
      (*(v2 + 8))(v4, v1);
    }
  }

  else
  {
    v14 = *v10;
    strcpy(v20, ".buffered(");
    BYTE3(v20[1]) = 0;
    HIDWORD(v20[1]) = -369098752;
    v15 = MEMORY[0x24C22CE70](v14, v5);
    v17 = v16;

    MEMORY[0x24C22CD50](v15, v17);

    return v20[0];
  }

  return v13;
}

uint64_t CBDiscovery.Config.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  sub_24ACD0A20();
  MEMORY[0x24C22CD50](0x657361436573755BLL, 0xEA0000000000203ALL);
  v4 = 0x800000024ACD9E10;
  if (v1 == 2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0;
  }

  if (v1 != 2)
  {
    v4 = 0xE000000000000000;
  }

  v6 = 0xEF686365654C7265;
  v7 = 0x66667542706F612ELL;
  if (v1)
  {
    v7 = 0xD000000000000011;
    v6 = 0x800000024ACD9E30;
  }

  if (v1 <= 1)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v1 <= 1)
  {
    v9 = v6;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x24C22CD50](v8, v9);

  MEMORY[0x24C22CD50](0xD000000000000012, 0x800000024ACDA9B0);
  v10 = CBDiscovery.DiscoveryFlags.description.getter();
  MEMORY[0x24C22CD50](v10);

  MEMORY[0x24C22CD50](0xD000000000000012, 0x800000024ACDA9D0);
  v11 = MEMORY[0x24C22CE70](v2, &type metadata for CBDiscovery.DiscoveryType);
  MEMORY[0x24C22CD50](v11);

  MEMORY[0x24C22CD50](0x79654B626F6F203BLL, 0xEA00000000002073);
  v12 = type metadata accessor for CBDiscovery.OOBKeyInfo(0);
  v13 = MEMORY[0x24C22CE70](v3, v12);
  MEMORY[0x24C22CD50](v13);

  MEMORY[0x24C22CD50](93, 0xE100000000000000);
  return 0;
}

uint64_t CBDiscovery.UseCase.description.getter()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x66667542706F612ELL;
  }
}

uint64_t sub_24ACB5590(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3 ^ *v4;
    if (v5)
    {
      break;
    }

    ++v3;
    ++v4;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t sub_24ACB5604(uint64_t a1, uint64_t a2)
{
  v86[2] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for CBDiscovery.OOBKeyInfo(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v77 = &v75 - v9;
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16))
  {
    return 0;
  }

  if (!v10 || a1 == a2)
  {
    return 1;
  }

  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = a1 + v11;
  v13 = a2 + v11;
  v78 = *(v8 + 72);
  v14 = v77;
  while (1)
  {
    sub_24ACBA644(v12, v14, type metadata accessor for CBDiscovery.OOBKeyInfo);
    v79 = v12;
    sub_24ACBA644(v13, v7, type metadata accessor for CBDiscovery.OOBKeyInfo);
    if ((sub_24ACD0050() & 1) == 0)
    {
LABEL_138:
      sub_24ACBA6AC(v7, type metadata accessor for CBDiscovery.OOBKeyInfo);
      sub_24ACBA6AC(v14, type metadata accessor for CBDiscovery.OOBKeyInfo);
      return 0;
    }

    v15 = *(v4 + 20);
    v16 = *(v14 + v15);
    v17 = *(v14 + v15 + 8);
    v18 = &v7[v15];
    v20 = *v18;
    v19 = v18[1];
    v21 = v17 >> 62;
    v22 = v19 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v16)
      {
        v23 = 0;
      }

      else
      {
        v23 = v17 == 0xC000000000000000;
      }

      if (v23 && v19 >> 62 == 3 && !v20 && v19 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_32:
      v26 = 0;
      if (v22 <= 1)
      {
        goto LABEL_30;
      }

      goto LABEL_33;
    }

    if (v21 > 1)
    {
      if (v21 != 2)
      {
        goto LABEL_32;
      }

      v28 = *(v16 + 16);
      v27 = *(v16 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v29)
      {
        goto LABEL_142;
      }

      if (v22 <= 1)
      {
        goto LABEL_30;
      }
    }

    else if (v21)
    {
      LODWORD(v26) = HIDWORD(v16) - v16;
      if (__OFSUB__(HIDWORD(v16), v16))
      {
        goto LABEL_143;
      }

      v26 = v26;
      if (v22 <= 1)
      {
LABEL_30:
        if (v22)
        {
          LODWORD(v30) = HIDWORD(v20) - v20;
          if (__OFSUB__(HIDWORD(v20), v20))
          {
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
          }

          v30 = v30;
        }

        else
        {
          v30 = BYTE6(v19);
        }

        goto LABEL_39;
      }
    }

    else
    {
      v26 = BYTE6(v17);
      if (v22 <= 1)
      {
        goto LABEL_30;
      }
    }

LABEL_33:
    if (v22 != 2)
    {
      if (v26)
      {
        goto LABEL_138;
      }

LABEL_6:
      sub_24ACBA6AC(v7, type metadata accessor for CBDiscovery.OOBKeyInfo);
      sub_24ACBA6AC(v14, type metadata accessor for CBDiscovery.OOBKeyInfo);
      goto LABEL_7;
    }

    v32 = *(v20 + 16);
    v31 = *(v20 + 24);
    v29 = __OFSUB__(v31, v32);
    v30 = v31 - v32;
    if (v29)
    {
      goto LABEL_141;
    }

LABEL_39:
    if (v26 != v30)
    {
      goto LABEL_138;
    }

    if (v26 < 1)
    {
      goto LABEL_6;
    }

    if (v21 <= 1)
    {
      break;
    }

    if (v21 != 2)
    {
      memset(v86, 0, 14);
      if (v22 == 2)
      {
        v64 = *(v20 + 16);
        v75 = *(v20 + 24);
        v37 = sub_24ACD01C0();
        if (v37)
        {
          v65 = sub_24ACD01F0();
          if (__OFSUB__(v64, v65))
          {
            goto LABEL_157;
          }

          v37 += v64 - v65;
        }

        v29 = __OFSUB__(v75, v64);
        v33 = v75 - v64;
        if (v29)
        {
          goto LABEL_149;
        }

        v38 = sub_24ACD01E0();
        if (!v37)
        {
          goto LABEL_167;
        }
      }

      else
      {
        if (v22 != 1)
        {
LABEL_92:
          v80 = v20;
          v81 = v19;
          v82 = BYTE2(v19);
          v83 = BYTE3(v19);
          v84 = BYTE4(v19);
          v61 = BYTE6(v19);
          v85 = BYTE5(v19);
          v62 = v86;
          v63 = &v80;
          goto LABEL_135;
        }

        v33 = (v20 >> 32) - v20;
        if (v20 >> 32 < v20)
        {
          goto LABEL_148;
        }

        v58 = sub_24ACD01C0();
        if (!v58)
        {
          goto LABEL_165;
        }

        v59 = v58;
        v60 = sub_24ACD01F0();
        if (__OFSUB__(v20, v60))
        {
          goto LABEL_152;
        }

        v37 = v20 - v60 + v59;
        v38 = sub_24ACD01E0();
        if (!v37)
        {
          goto LABEL_166;
        }
      }

      goto LABEL_114;
    }

    v76 = v19;
    v39 = v7;
    v40 = v4;
    v41 = *(v16 + 16);
    v42 = sub_24ACD01C0();
    if (v42)
    {
      v43 = sub_24ACD01F0();
      if (__OFSUB__(v41, v43))
      {
        goto LABEL_145;
      }

      v42 += v41 - v43;
    }

    v4 = v40;
    sub_24ACD01E0();
    v7 = v39;
    if (v22 == 2)
    {
      v68 = *(v20 + 16);
      v75 = *(v20 + 24);
      v47 = sub_24ACD01C0();
      if (v47)
      {
        v69 = sub_24ACD01F0();
        if (__OFSUB__(v68, v69))
        {
          goto LABEL_159;
        }

        v47 += v68 - v69;
        v14 = v77;
      }

      else
      {
        v14 = v77;
      }

      v29 = __OFSUB__(v75, v68);
      v72 = v75 - v68;
      if (v29)
      {
        goto LABEL_154;
      }

      result = sub_24ACD01E0();
      if (result >= v72)
      {
        v50 = v72;
      }

      else
      {
        v50 = result;
      }

      if (!v42)
      {
        goto LABEL_177;
      }

      if (!v47)
      {
        goto LABEL_176;
      }
    }

    else
    {
      v44 = BYTE6(v76);
      if (v22 != 1)
      {
        v14 = v77;
        v86[0] = v20;
        LODWORD(v86[1]) = v76;
        WORD2(v86[1]) = WORD2(v76);
        if (!v42)
        {
          goto LABEL_164;
        }

LABEL_108:
        v61 = v44;
        v63 = v86;
        v62 = v42;
        goto LABEL_135;
      }

      v45 = v20;
      v46 = (v20 >> 32) - v20;
      v14 = v77;
      if (v20 >> 32 < v20)
      {
        goto LABEL_151;
      }

      v47 = sub_24ACD01C0();
      if (v47)
      {
        v48 = sub_24ACD01F0();
        if (__OFSUB__(v45, v48))
        {
          goto LABEL_161;
        }

        v47 += v45 - v48;
      }

      result = sub_24ACD01E0();
      if (result >= v46)
      {
        v50 = v46;
      }

      else
      {
        v50 = result;
      }

      if (!v42)
      {
        goto LABEL_175;
      }

      if (!v47)
      {
        goto LABEL_174;
      }
    }

LABEL_133:
    if (v42 == v47)
    {
      goto LABEL_6;
    }

    v61 = v50;
    v62 = v42;
    v63 = v47;
LABEL_135:
    v74 = memcmp(v62, v63, v61);
    sub_24ACBA6AC(v7, type metadata accessor for CBDiscovery.OOBKeyInfo);
    sub_24ACBA6AC(v14, type metadata accessor for CBDiscovery.OOBKeyInfo);
    if (v74)
    {
      return 0;
    }

LABEL_7:
    v13 += v78;
    v12 = v79 + v78;
    if (!--v10)
    {
      return 1;
    }
  }

  if (v21)
  {
    v76 = v19;
    v51 = v7;
    v52 = v4;
    v53 = v16;
    if (v16 > v16 >> 32)
    {
      goto LABEL_144;
    }

    v42 = sub_24ACD01C0();
    if (v42)
    {
      v54 = sub_24ACD01F0();
      if (__OFSUB__(v53, v54))
      {
        goto LABEL_146;
      }

      v42 += v53 - v54;
    }

    v4 = v52;
    result = sub_24ACD01E0();
    v7 = v51;
    if (v22 == 2)
    {
      v70 = *(v20 + 16);
      v75 = *(v20 + 24);
      v47 = sub_24ACD01C0();
      if (v47)
      {
        v71 = sub_24ACD01F0();
        if (__OFSUB__(v70, v71))
        {
          goto LABEL_160;
        }

        v47 += v70 - v71;
        v14 = v77;
      }

      else
      {
        v14 = v77;
      }

      v29 = __OFSUB__(v75, v70);
      v73 = v75 - v70;
      if (v29)
      {
        goto LABEL_156;
      }

      result = sub_24ACD01E0();
      if (result >= v73)
      {
        v50 = v73;
      }

      else
      {
        v50 = result;
      }

      if (!v42)
      {
        goto LABEL_173;
      }

      if (!v47)
      {
        goto LABEL_172;
      }
    }

    else
    {
      v44 = BYTE6(v76);
      if (v22 != 1)
      {
        v14 = v77;
        v86[0] = v20;
        LODWORD(v86[1]) = v76;
        WORD2(v86[1]) = WORD2(v76);
        if (!v42)
        {
          goto LABEL_169;
        }

        goto LABEL_108;
      }

      v55 = v20;
      v56 = (v20 >> 32) - v20;
      v14 = v77;
      if (v20 >> 32 < v20)
      {
        goto LABEL_155;
      }

      v47 = sub_24ACD01C0();
      if (v47)
      {
        v57 = sub_24ACD01F0();
        if (__OFSUB__(v55, v57))
        {
          goto LABEL_162;
        }

        v47 += v55 - v57;
      }

      result = sub_24ACD01E0();
      if (result >= v56)
      {
        v50 = v56;
      }

      else
      {
        v50 = result;
      }

      if (!v42)
      {
        goto LABEL_171;
      }

      if (!v47)
      {
        goto LABEL_170;
      }
    }

    goto LABEL_133;
  }

  v86[0] = v16;
  LOWORD(v86[1]) = v17;
  BYTE2(v86[1]) = BYTE2(v17);
  BYTE3(v86[1]) = BYTE3(v17);
  BYTE4(v86[1]) = BYTE4(v17);
  BYTE5(v86[1]) = BYTE5(v17);
  if (!v22)
  {
    goto LABEL_92;
  }

  if (v22 != 1)
  {
    v66 = *(v20 + 16);
    v75 = *(v20 + 24);
    v37 = sub_24ACD01C0();
    if (v37)
    {
      v67 = sub_24ACD01F0();
      if (__OFSUB__(v66, v67))
      {
        goto LABEL_158;
      }

      v37 += v66 - v67;
    }

    v29 = __OFSUB__(v75, v66);
    v33 = v75 - v66;
    if (v29)
    {
      goto LABEL_150;
    }

    v38 = sub_24ACD01E0();
    if (!v37)
    {
      goto LABEL_163;
    }

    goto LABEL_114;
  }

  v33 = (v20 >> 32) - v20;
  if (v20 >> 32 < v20)
  {
    goto LABEL_147;
  }

  v34 = sub_24ACD01C0();
  if (!v34)
  {
    goto LABEL_168;
  }

  v35 = v34;
  v36 = sub_24ACD01F0();
  if (__OFSUB__(v20, v36))
  {
    goto LABEL_153;
  }

  v37 = v20 - v36 + v35;
  v38 = sub_24ACD01E0();
  if (v37)
  {
LABEL_114:
    if (v38 >= v33)
    {
      v61 = v33;
    }

    else
    {
      v61 = v38;
    }

    v62 = v86;
    v63 = v37;
    goto LABEL_135;
  }

  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  sub_24ACD01E0();
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  result = sub_24ACD01E0();
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
  return result;
}

uint64_t sub_24ACB5FA8()
{
  v1 = *v0;
  v2 = 0x65736143657375;
  v3 = 0x7379654B626F6FLL;
  v4 = 0x657461526E616373;
  if (v1 != 4)
  {
    v4 = 0x6572685469737372;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7265766F63736964;
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

uint64_t sub_24ACB6088@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ACBCAF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24ACB60C8(uint64_t a1)
{
  v2 = sub_24ACBA70C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ACB6104(uint64_t a1)
{
  v2 = sub_24ACBA70C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CBDiscovery.Config.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E938, &qword_24ACD6B60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v20 = *(v1 + 2);
  v21 = v9;
  v19 = *(v1 + 3);
  v23 = v1[32];
  LODWORD(v9) = *(v1 + 33);
  v17 = v1[35];
  v18 = v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_24ACBA70C();
  v10 = v4;
  sub_24ACD0D80();
  LOBYTE(v22) = v8;
  v24 = 0;
  sub_24ACBA760();
  sub_24ACD0BE0();
  if (!v2)
  {
    v12 = v19;
    v11 = v20;
    v13 = v23;
    v14 = v18;
    v22 = v21;
    v24 = 1;
    sub_24ACBA7B4();
    sub_24ACD0BF0();
    v22 = v11;
    v24 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E958, &qword_24ACD6B68);
    sub_24ACBA9AC(&qword_27EF9E960, sub_24ACBA808, MEMORY[0x277D83948]);
    sub_24ACD0BF0();
    v22 = v12;
    v24 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E970, &qword_24ACD6B70);
    sub_24ACBAA78(&qword_27EF9E978, &qword_27EF9E980, &protocol conformance descriptor for CBDiscovery.OOBKeyInfo, MEMORY[0x277D83948]);
    sub_24ACD0BF0();
    LOBYTE(v22) = v13;
    v24 = 4;
    sub_24ACBA85C();
    sub_24ACD0BF0();
    LOWORD(v22) = v14;
    BYTE2(v22) = v17;
    v24 = 5;
    sub_24ACBA8B0();
    sub_24ACD0BE0();
  }

  return (*(v5 + 8))(v7, v10);
}

uint64_t CBDiscovery.Config.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E998, &qword_24ACD6B78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_24ACBA70C();
  sub_24ACD0D70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  sub_24ACBA904();
  sub_24ACD0BA0();
  v9 = v18;
  v19 = 1;
  sub_24ACBA958();
  sub_24ACD0BB0();
  v10 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E958, &qword_24ACD6B68);
  v19 = 2;
  sub_24ACBA9AC(&qword_27EF9E9B0, sub_24ACBAA24, MEMORY[0x277D83978]);
  sub_24ACD0BB0();
  v16 = v10;
  v17 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E970, &qword_24ACD6B70);
  v19 = 3;
  sub_24ACBAA78(&qword_27EF9E9C0, &qword_27EF9E9C8, &protocol conformance descriptor for CBDiscovery.OOBKeyInfo, MEMORY[0x277D83978]);
  sub_24ACD0BB0();
  v15 = v18;
  v19 = 4;
  sub_24ACBAB5C();
  sub_24ACD0BB0();
  LOBYTE(v10) = v18;
  v19 = 5;
  sub_24ACBABB0();
  sub_24ACD0BA0();
  (*(v6 + 8))(v8, v5);
  v11 = v18;
  v12 = BYTE2(v18);
  *a2 = v9;
  v13 = v17;
  *(a2 + 8) = v16;
  *(a2 + 16) = v13;
  *(a2 + 24) = v15;
  *(a2 + 32) = v10;
  *(a2 + 33) = v11;
  *(a2 + 35) = v12;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_24ACB6910(uint64_t a1)
{
  v2 = sub_24ACBAD00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ACB694C(uint64_t a1)
{
  v2 = sub_24ACBAD00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ACB6988()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6566667542706F61;
  }
}

uint64_t sub_24ACB69F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ACBCD0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24ACB6A2C(uint64_t a1)
{
  v2 = sub_24ACBAC04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ACB6A68(uint64_t a1)
{
  v2 = sub_24ACBAC04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ACB6AA4(uint64_t a1)
{
  v2 = sub_24ACBAC58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ACB6AE0(uint64_t a1)
{
  v2 = sub_24ACBAC58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ACB6B1C(uint64_t a1)
{
  v2 = sub_24ACBACAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ACB6B58(uint64_t a1)
{
  v2 = sub_24ACBACAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CBDiscovery.UseCase.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E9E0, &qword_24ACD6B80);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E9E8, &qword_24ACD6B88);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E9F0, &qword_24ACD6B90);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E9F8, &qword_24ACD6B98);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_24ACBAC04();
  sub_24ACD0D80();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_24ACBACAC();
      v9 = v21;
      sub_24ACD0BD0();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_24ACBAC58();
      v9 = v24;
      sub_24ACD0BD0();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_24ACBAD00();
    sub_24ACD0BD0();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t CBDiscovery.UseCase.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA20, &qword_24ACD6BA0);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA28, &qword_24ACD6BA8);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA30, &qword_24ACD6BB0);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA38, &qword_24ACD6BB8);
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_24ACBAC04();
  v13 = v43;
  sub_24ACD0D70();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = sub_24ACD0BC0();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_24ACBACAC();
          v27 = v34;
          sub_24ACD0B80();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_24ACBAC58();
          v31 = v34;
          sub_24ACD0B80();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_24ACBAD00();
        v29 = v34;
        sub_24ACD0B80();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return __swift_destroy_boxed_opaque_existential_0(v24);
    }
  }

  v21 = sub_24ACD0A70();
  swift_allocError();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA40, &unk_24ACD6BC0);
  *v23 = &type metadata for CBDiscovery.UseCase;
  sub_24ACD0B90();
  sub_24ACD0A60();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return __swift_destroy_boxed_opaque_existential_0(v24);
}

uint64_t sub_24ACB750C()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x66667542706F612ELL;
  }
}

uint64_t CBDiscovery.DiscoveryFlags.description.getter()
{
  v1 = *v0;
  if ((*v0 & 0x80000000000) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((v1 & 0x200000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_24AC1CF00(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_24AC1CF00((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x756269727474612ELL;
  *(v5 + 5) = 0xEB00000000736574;
  if ((v1 & 0x200000000) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_24AC1CF00((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x697373722ELL;
    *(v8 + 5) = 0xE500000000000000;
  }

LABEL_12:
  if ((v1 & 0x10000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_24AC1CF00((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    strcpy(v11 + 32, ".objectSetup");
    v11[45] = 0;
    *(v11 + 23) = -5120;
    if ((v1 & 0x800000) == 0)
    {
LABEL_14:
      if ((v1 & 0x2000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else if ((v1 & 0x800000) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_24AC1CF00((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x676E69726961702ELL;
  *(v14 + 5) = 0xE800000000000000;
  if ((v1 & 0x2000000) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_24AC1CF00((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x4F6E65657263732ELL;
    *(v17 + 5) = 0xEA00000000006666;
  }

LABEL_31:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9DC88, &qword_24ACD33A0);
  sub_24AC2B6A8(&qword_2814AD030, &unk_27EF9DC88, &qword_24ACD33A0, MEMORY[0x277D83958]);
  v18 = sub_24ACD0540();
  v20 = v19;

  MEMORY[0x24C22CD50](v18, v20);

  MEMORY[0x24C22CD50](93, 0xE100000000000000);
  return 91;
}

unint64_t CBDiscovery.DiscoveryType.description.getter()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_24ACB7A64()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x6341794D646E6966;
  }
}

uint64_t sub_24ACB7AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6341794D646E6966 && a2 == 0xEF79726F73736563;
  if (v6 || (sub_24ACD0C40() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024ACDAAE0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24ACD0C40();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24ACB7B9C(uint64_t a1)
{
  v2 = sub_24ACBAD54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ACB7BD8(uint64_t a1)
{
  v2 = sub_24ACBAD54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ACB7C14(uint64_t a1)
{
  v2 = sub_24ACBADFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ACB7C50(uint64_t a1)
{
  v2 = sub_24ACBADFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ACB7C8C(uint64_t a1)
{
  v2 = sub_24ACBADA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ACB7CC8(uint64_t a1)
{
  v2 = sub_24ACBADA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CBDiscovery.DiscoveryType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA48, &qword_24ACD6BD0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA50, &qword_24ACD6BD8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA58, &qword_24ACD6BE0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_24ACBAD54();
  sub_24ACD0D80();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_24ACBADA8();
    v14 = v18;
    sub_24ACD0BD0();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_24ACBADFC();
    sub_24ACD0BD0();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t CBDiscovery.DiscoveryType.hashValue.getter()
{
  v1 = *v0;
  sub_24ACD0D10();
  MEMORY[0x24C22D480](v1);
  return sub_24ACD0D50();
}

uint64_t CBDiscovery.DiscoveryType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA78, &qword_24ACD6BE8);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA80, &qword_24ACD6BF0);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9EA88, &qword_24ACD6BF8);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_24ACBAD54();
  v13 = v31;
  sub_24ACD0D70();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_24ACD0BC0();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_24ACD0A70();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA40, &unk_24ACD6BC0);
    *v21 = &type metadata for CBDiscovery.DiscoveryType;
    sub_24ACD0B90();
    sub_24ACD0A60();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_24ACBADA8();
    sub_24ACD0B80();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_24ACBADFC();
    sub_24ACD0B80();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

unint64_t sub_24ACB84AC()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t CBDiscovery.OOBKeyInfo.btAddress.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24ACD0090();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CBDiscovery.OOBKeyInfo.irkData.getter()
{
  v1 = v0 + *(type metadata accessor for CBDiscovery.OOBKeyInfo(0) + 20);
  v2 = *v1;
  sub_24AC46630(*v1, *(v1 + 8));
  return v2;
}

uint64_t CBDiscovery.OOBKeyInfo.description.getter()
{
  sub_24ACD0A20();

  strcpy(v8, "[btAddress: ");
  BYTE5(v8[1]) = 0;
  HIWORD(v8[1]) = -5120;
  sub_24ACD0090();
  sub_24ACBAB14(&qword_27EF9E080, MEMORY[0x277D088D0], MEMORY[0x277D088E8]);
  v1 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v1);

  MEMORY[0x24C22CD50](0x7461446B7269203BLL, 0xEB00000000203A61);
  result = type metadata accessor for CBDiscovery.OOBKeyInfo(0);
  v3 = (v0 + *(result + 20));
  v4 = *v3;
  v5 = v3[1] >> 62;
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_9;
    }

    v6 = v4 + 16;
    v4 = *(v4 + 16);
    if (!__OFSUB__(*(v6 + 8), v4))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v5)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(v4), v4))
  {
LABEL_9:
    v7 = sub_24ACD0C20();
    MEMORY[0x24C22CD50](v7);

    MEMORY[0x24C22CD50](0x5D736574796220, 0xE700000000000000);
    return v8[0];
  }

  __break(1u);
  return result;
}

uint64_t CBDiscovery.OOBKeyInfo.init(btAddress:irkData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24ACD0090();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for CBDiscovery.OOBKeyInfo(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

BOOL static CBDiscovery.OOBKeyInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_24ACD0050() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CBDiscovery.OOBKeyInfo(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *v7;
  v9 = v7[1];

  return sub_24ACB94C0(v5, v6, v8, v9);
}

uint64_t sub_24ACB8820()
{
  if (*v0)
  {
    return 0x617461446B7269;
  }

  else
  {
    return 0x7365726464417462;
  }
}

uint64_t sub_24ACB8860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7365726464417462 && a2 == 0xE900000000000073;
  if (v6 || (sub_24ACD0C40() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461446B7269 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24ACD0C40();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24ACB8944(uint64_t a1)
{
  v2 = sub_24ACBAE50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ACB8980(uint64_t a1)
{
  v2 = sub_24ACBAE50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CBDiscovery.OOBKeyInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA98, &qword_24ACD6C00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_24ACBAE50();
  sub_24ACD0D80();
  LOBYTE(v13) = 0;
  sub_24ACD0090();
  sub_24ACBAB14(&qword_27EF9EAA8, MEMORY[0x277D088D0], MEMORY[0x277D088D8]);
  sub_24ACD0BF0();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for CBDiscovery.OOBKeyInfo(0) + 20));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    sub_24AC46630(v13, v10);
    sub_24ACBAEA4();
    sub_24ACD0BF0();
    sub_24AC46698(v13, v14);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CBDiscovery.OOBKeyInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_24ACD0090();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EAB8, &qword_24ACD6C08);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for CBDiscovery.OOBKeyInfo(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_24ACBAE50();
  sub_24ACD0D70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  LOBYTE(v28) = 0;
  sub_24ACBAB14(&qword_27EF9EAC0, MEMORY[0x277D088D0], MEMORY[0x277D088E0]);
  v15 = v27;
  v16 = v25;
  sub_24ACD0BB0();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v5, v15);
  v29 = 1;
  sub_24ACBAEF8();
  sub_24ACD0BB0();
  (*(v26 + 8))(v9, v16);
  v18 = v21;
  *(v21 + *(v22 + 20)) = v28;
  sub_24ACBA644(v18, v23, type metadata accessor for CBDiscovery.OOBKeyInfo);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_24ACBA6AC(v18, type metadata accessor for CBDiscovery.OOBKeyInfo);
}

BOOL sub_24ACB8F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_24ACD0050() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *v9;
  v11 = v9[1];

  return sub_24ACB94C0(v7, v8, v10, v11);
}

uint64_t sub_24ACB8FC8()
{
  v0 = sub_24ACD0490();
  __swift_allocate_value_buffer(v0, qword_2814AEE10);
  __swift_project_value_buffer(v0, qword_2814AEE10);
  return sub_24ACD0480();
}

uint64_t sub_24ACB9048@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_24ACD01C0();
    if (v10)
    {
      v11 = sub_24ACD01F0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_24ACD01E0();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_24ACD01C0();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_24ACD01F0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_24ACD01E0();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_24ACB9278(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_24ACB9408(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_24AC46698(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_24ACB9048(v13, a3, a4, &v12);
  v10 = v4;
  sub_24AC46698(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_24ACB9408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_24ACD01C0();
  v11 = result;
  if (result)
  {
    result = sub_24ACD01F0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_24ACD01E0();
  sub_24ACB9048(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_24ACB94C0(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_24AC46630(a3, a4);
          return sub_24ACB9278(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s15FindMyBluetooth11CBDiscoveryC6ConfigV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  v6 = *(a1 + 3);
  v7 = a1[32];
  v8 = *(a1 + 33);
  v9 = a1[35];
  v10 = *a2;
  v12 = *(a2 + 1);
  v11 = *(a2 + 2);
  v13 = *(a2 + 3);
  v14 = a2[32];
  v15 = *(a2 + 33);
  v16 = a2[35];
  if (v3 != 3)
  {
    if (v10 == 3)
    {
      return 0;
    }

    result = 0;
    if (v3 != v10)
    {
      return result;
    }

LABEL_6:
    if (v5 != v12)
    {
      return result;
    }

    if ((sub_24ACB5590(v4, v11) & 1) != 0 && (sub_24ACB5604(v6, v13) & 1) != 0 && dword_24ACD7D80[v7] == dword_24ACD7D80[v14])
    {
      if (v9)
      {
        if (v16)
        {
          return 1;
        }
      }

      else if ((v16 & 1) == 0)
      {
        if ((v8 & 0x100) != 0)
        {
          v18 = 0;
        }

        else
        {
          v18 = v8;
        }

        if ((v15 & 0x100) != 0)
        {
          if (!v18)
          {
            return 1;
          }
        }

        else if (v18 == v15)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  result = 0;
  if (v10 == 3)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_24ACB9734(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E8F0, &qword_24ACD6AE8);
  *(v1 + 40) = swift_task_alloc();
  v3 = type metadata accessor for Device(0);
  *(v1 + 48) = v3;
  *(v1 + 56) = *(v3 - 8);
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *a1;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  type metadata accessor for CentralManager(0);
  swift_allocObject();
  v6 = swift_task_alloc();
  *(v1 + 96) = v6;
  *v6 = v1;
  v6[1] = sub_24ACB98DC;

  return sub_24AC81DE4(0, (v1 + 16));
}

uint64_t sub_24ACB98DC(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_24ACB9A08, 0, 0);
}

uint64_t sub_24ACB9A08()
{

  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_24ACB9B04;

  return MEMORY[0x28215EB08]();
}

uint64_t sub_24ACB9B04()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24ACBA21C;
  }

  else
  {

    v2 = sub_24ACB9C54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ACB9C54()
{
  v49 = v0;
  v48[1] = *MEMORY[0x277D85DE8];
  v1 = v0[11];
  v2 = objc_opt_self();
  v0[4] = 0;
  v3 = [v2 devicesWithDiscoveryFlags:v1 error:v0 + 4];
  v4 = v0[4];
  if (v3)
  {
    v5 = v3;
    sub_24AC2B8F8(0, &qword_2814ACFA8, 0x277CBE020);
    v6 = sub_24ACD0700();
    v7 = v4;

    if (v6 >> 62)
    {
      goto LABEL_32;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24ACD0B30())
    {
      v9 = 0;
      v10 = v0[7];
      v46 = v6 & 0xFFFFFFFFFFFFFF8;
      v47 = v6 & 0xC000000000000001;
      v45 = (v10 + 56);
      v11 = MEMORY[0x277D84F90];
      v41 = v10;
      v44 = (v10 + 48);
      v12 = v0[15];
      v40 = v6;
      v43 = i;
      while (v47)
      {
        v13 = MEMORY[0x24C22D1B0](v9, v6);
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_30;
        }

LABEL_10:
        v15 = v0[9];
        v16 = v13;
        sub_24ACAA80C(v16, v15);
        if (v12)
        {
          if (qword_2814ADDA8 != -1)
          {
            swift_once();
          }

          v17 = sub_24ACD0490();
          __swift_project_value_buffer(v17, qword_2814ADDB0);
          v18 = v12;
          v19 = sub_24ACD0470();
          v20 = sub_24ACD0910();

          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            v42 = v11;
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v48[0] = v23;
            *v21 = 136315394;
            *(v21 + 4) = sub_24AC29E20(0x2873656369766564, 0xEE00293A68746977, v48);
            *(v21 + 12) = 2114;
            v24 = v12;
            v25 = _swift_stdlib_bridgeErrorToNSError();
            *(v21 + 14) = v25;
            *v22 = v25;
            _os_log_impl(&dword_24AC18000, v19, v20, "%s Failed to init Device with error: %{public}@", v21, 0x16u);
            sub_24AC212F4(v22, &qword_27EF9E6A0, &qword_24ACD5590);
            v26 = v22;
            v11 = v42;
            MEMORY[0x24C22DC60](v26, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v23);
            MEMORY[0x24C22DC60](v23, -1, -1);
            v27 = v21;
            v6 = v40;
            MEMORY[0x24C22DC60](v27, -1, -1);
          }

          else
          {
          }

          v28 = 1;
          i = v43;
        }

        else
        {
          sub_24ACADDD0(v0[9], v0[5]);
          v28 = 0;
        }

        v30 = v0[5];
        v29 = v0[6];
        (*v45)(v30, v28, 1, v29);

        if ((*v44)(v30, 1, v29) == 1)
        {
          sub_24AC212F4(v0[5], &unk_27EF9E8F0, &qword_24ACD6AE8);
        }

        else
        {
          v31 = v0[10];
          v32 = v0[8];
          sub_24ACADDD0(v0[5], v31);
          sub_24ACADDD0(v31, v32);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_24AC1D768(0, v11[2] + 1, 1, v11);
          }

          v34 = v11[2];
          v33 = v11[3];
          if (v34 >= v33 >> 1)
          {
            v11 = sub_24AC1D768((v33 > 1), v34 + 1, 1, v11);
          }

          v35 = v0[8];
          v11[2] = v34 + 1;
          sub_24ACADDD0(v35, v11 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v34);
        }

        v12 = 0;
        ++v9;
        if (v14 == i)
        {
          goto LABEL_34;
        }
      }

      if (v9 >= *(v46 + 16))
      {
        goto LABEL_31;
      }

      v13 = *(v6 + 8 * v9 + 32);
      v14 = v9 + 1;
      if (!__OFADD__(v9, 1))
      {
        goto LABEL_10;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      ;
    }

    v11 = MEMORY[0x277D84F90];
LABEL_34:

    v39 = v0[1];

    return v39(v11);
  }

  else
  {
    v36 = v4;
    sub_24ACD0220();

    swift_willThrow();

    v37 = v0[1];

    return v37();
  }
}

uint64_t sub_24ACBA21C()
{
  v16 = v0;
  v15[1] = *MEMORY[0x277D85DE8];

  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_2814ADDB0);
  v3 = v1;
  v4 = sub_24ACD0470();
  v5 = sub_24ACD0910();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15[0] = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AC29E20(0x2873656369766564, 0xEE00293A68746977, v15);
    *(v7 + 12) = 2114;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_24AC18000, v4, v5, "%s Invalid power state. Error: %{public}@", v7, 0x16u);
    sub_24AC212F4(v8, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C22DC60](v9, -1, -1);
    MEMORY[0x24C22DC60](v7, -1, -1);
  }

  v12 = *(v0 + 120);
  type metadata accessor for CentralManager.Error(0);
  sub_24ACBAB14(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24ACBA644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ACBA6AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24ACBA70C()
{
  result = qword_27EF9E940;
  if (!qword_27EF9E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E940);
  }

  return result;
}

unint64_t sub_24ACBA760()
{
  result = qword_27EF9E948;
  if (!qword_27EF9E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E948);
  }

  return result;
}

unint64_t sub_24ACBA7B4()
{
  result = qword_27EF9E950;
  if (!qword_27EF9E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E950);
  }

  return result;
}

unint64_t sub_24ACBA808()
{
  result = qword_27EF9E968;
  if (!qword_27EF9E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E968);
  }

  return result;
}

unint64_t sub_24ACBA85C()
{
  result = qword_27EF9E988;
  if (!qword_27EF9E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E988);
  }

  return result;
}

unint64_t sub_24ACBA8B0()
{
  result = qword_27EF9E990;
  if (!qword_27EF9E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E990);
  }

  return result;
}

unint64_t sub_24ACBA904()
{
  result = qword_27EF9E9A0;
  if (!qword_27EF9E9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E9A0);
  }

  return result;
}

unint64_t sub_24ACBA958()
{
  result = qword_27EF9E9A8;
  if (!qword_27EF9E9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E9A8);
  }

  return result;
}

uint64_t sub_24ACBA9AC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9E958, &qword_24ACD6B68);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24ACBAA24()
{
  result = qword_27EF9E9B8;
  if (!qword_27EF9E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E9B8);
  }

  return result;
}

uint64_t sub_24ACBAA78(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9E970, &qword_24ACD6B70);
    sub_24ACBAB14(a2, type metadata accessor for CBDiscovery.OOBKeyInfo, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24ACBAB14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24ACBAB5C()
{
  result = qword_27EF9E9D0;
  if (!qword_27EF9E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E9D0);
  }

  return result;
}

unint64_t sub_24ACBABB0()
{
  result = qword_27EF9E9D8;
  if (!qword_27EF9E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E9D8);
  }

  return result;
}

unint64_t sub_24ACBAC04()
{
  result = qword_27EF9EA00;
  if (!qword_27EF9EA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EA00);
  }

  return result;
}

unint64_t sub_24ACBAC58()
{
  result = qword_27EF9EA08;
  if (!qword_27EF9EA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EA08);
  }

  return result;
}

unint64_t sub_24ACBACAC()
{
  result = qword_27EF9EA10;
  if (!qword_27EF9EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EA10);
  }

  return result;
}

unint64_t sub_24ACBAD00()
{
  result = qword_27EF9EA18;
  if (!qword_27EF9EA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EA18);
  }

  return result;
}

unint64_t sub_24ACBAD54()
{
  result = qword_27EF9EA60;
  if (!qword_27EF9EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EA60);
  }

  return result;
}

unint64_t sub_24ACBADA8()
{
  result = qword_27EF9EA68;
  if (!qword_27EF9EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EA68);
  }

  return result;
}

unint64_t sub_24ACBADFC()
{
  result = qword_27EF9EA70;
  if (!qword_27EF9EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EA70);
  }

  return result;
}

unint64_t sub_24ACBAE50()
{
  result = qword_27EF9EAA0;
  if (!qword_27EF9EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EAA0);
  }

  return result;
}

unint64_t sub_24ACBAEA4()
{
  result = qword_27EF9EAB0;
  if (!qword_27EF9EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EAB0);
  }

  return result;
}

unint64_t sub_24ACBAEF8()
{
  result = qword_27EF9EAC8;
  if (!qword_27EF9EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EAC8);
  }

  return result;
}

uint64_t sub_24ACBAF4C(void *a1)
{
  a1[1] = sub_24ACBAB14(&qword_2814ADD90, type metadata accessor for CBDiscovery, &protocol conformance descriptor for CBDiscovery);
  a1[2] = sub_24ACBAB14(&qword_2814ADD98, type metadata accessor for CBDiscovery, &protocol conformance descriptor for CBDiscovery);
  result = sub_24ACBAB14(&qword_2814ADDA0, type metadata accessor for CBDiscovery, &protocol conformance descriptor for CBDiscovery);
  a1[3] = result;
  return result;
}

unint64_t sub_24ACBB040()
{
  result = qword_27EF9EAD0;
  if (!qword_27EF9EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EAD0);
  }

  return result;
}

unint64_t sub_24ACBB098()
{
  result = qword_27EF9EAD8;
  if (!qword_27EF9EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EAD8);
  }

  return result;
}

unint64_t sub_24ACBB134()
{
  result = qword_27EF9EAF0;
  if (!qword_27EF9EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EAF0);
  }

  return result;
}

unint64_t sub_24ACBB18C()
{
  result = qword_27EF9EAF8;
  if (!qword_27EF9EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EAF8);
  }

  return result;
}

unint64_t sub_24ACBB228()
{
  result = qword_27EF9EB10;
  if (!qword_27EF9EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB10);
  }

  return result;
}

unint64_t sub_24ACBB280()
{
  result = qword_27EF9EB18;
  if (!qword_27EF9EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB18);
  }

  return result;
}

unint64_t sub_24ACBB2D8()
{
  result = qword_27EF9EB20;
  if (!qword_27EF9EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB20);
  }

  return result;
}

void sub_24ACBB334(uint64_t a1)
{
  sub_24AC210A4(319);
  if (v1 <= 0x3F)
  {
    sub_24ACBBB48(319, &qword_27EF9DEF8, type metadata accessor for CBDiscovery, MEMORY[0x277D088B0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of CBDiscovery.__allocating_init(scanRate:rssiThreshold:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 184) + **(v2 + 184));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AC1DF38;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CBDiscovery.scan(config:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 192) + **(*v2 + 192));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AC214AC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CBDiscovery.registerProximityPairingBuffer(rssiThreshold:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 200) + **(*v2 + 200));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AC214AC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CBDiscovery.setScanRate(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 208) + **(*v1 + 208));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC20274;

  return v6(a1);
}

uint64_t dispatch thunk of CBDiscovery.subscribeToAttributesChanges()(uint64_t a1)
{
  v6 = (*(*v1 + 216) + **(*v1 + 216));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC20274;

  return v6(a1);
}

void sub_24ACBBA60(uint64_t a1)
{
  sub_24ACBBB48(319, &qword_2814AD038, type metadata accessor for Device, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Device(319);
    if (v2 <= 0x3F)
    {
      sub_24ACBBB48(319, &qword_2814AE230, type metadata accessor for Device, MEMORY[0x277D088B0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24ACBBB48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24ACBBBD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ACBBC18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24ACBBCC4(uint64_t a1)
{
  result = sub_24ACD0090();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Controller.Error(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Controller.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CBDiscovery.Config.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CBDiscovery.Config.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24ACBC04C()
{
  result = qword_27EF9EB30;
  if (!qword_27EF9EB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB30);
  }

  return result;
}

unint64_t sub_24ACBC0A4()
{
  result = qword_27EF9EB38;
  if (!qword_27EF9EB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB38);
  }

  return result;
}

unint64_t sub_24ACBC0FC()
{
  result = qword_27EF9EB40;
  if (!qword_27EF9EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB40);
  }

  return result;
}

unint64_t sub_24ACBC154()
{
  result = qword_27EF9EB48;
  if (!qword_27EF9EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB48);
  }

  return result;
}

unint64_t sub_24ACBC1AC()
{
  result = qword_27EF9EB50;
  if (!qword_27EF9EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB50);
  }

  return result;
}

unint64_t sub_24ACBC204()
{
  result = qword_27EF9EB58;
  if (!qword_27EF9EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB58);
  }

  return result;
}

unint64_t sub_24ACBC25C()
{
  result = qword_27EF9EB60;
  if (!qword_27EF9EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB60);
  }

  return result;
}

unint64_t sub_24ACBC2B4()
{
  result = qword_27EF9EB68;
  if (!qword_27EF9EB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB68);
  }

  return result;
}

unint64_t sub_24ACBC30C()
{
  result = qword_27EF9EB70;
  if (!qword_27EF9EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB70);
  }

  return result;
}

unint64_t sub_24ACBC364()
{
  result = qword_27EF9EB78;
  if (!qword_27EF9EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB78);
  }

  return result;
}

unint64_t sub_24ACBC3BC()
{
  result = qword_27EF9EB80;
  if (!qword_27EF9EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB80);
  }

  return result;
}

unint64_t sub_24ACBC414()
{
  result = qword_27EF9EB88;
  if (!qword_27EF9EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB88);
  }

  return result;
}

unint64_t sub_24ACBC46C()
{
  result = qword_27EF9EB90;
  if (!qword_27EF9EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB90);
  }

  return result;
}

unint64_t sub_24ACBC4C4()
{
  result = qword_27EF9EB98;
  if (!qword_27EF9EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB98);
  }

  return result;
}

unint64_t sub_24ACBC51C()
{
  result = qword_27EF9EBA0;
  if (!qword_27EF9EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EBA0);
  }

  return result;
}

unint64_t sub_24ACBC574()
{
  result = qword_27EF9EBA8;
  if (!qword_27EF9EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EBA8);
  }

  return result;
}

unint64_t sub_24ACBC5CC()
{
  result = qword_27EF9EBB0;
  if (!qword_27EF9EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EBB0);
  }

  return result;
}

unint64_t sub_24ACBC624()
{
  result = qword_27EF9EBB8;
  if (!qword_27EF9EBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EBB8);
  }

  return result;
}

unint64_t sub_24ACBC67C()
{
  result = qword_27EF9EBC0;
  if (!qword_27EF9EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EBC0);
  }

  return result;
}

unint64_t sub_24ACBC6D4()
{
  result = qword_27EF9EBC8;
  if (!qword_27EF9EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EBC8);
  }

  return result;
}

unint64_t sub_24ACBC72C()
{
  result = qword_27EF9EBD0;
  if (!qword_27EF9EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EBD0);
  }

  return result;
}

unint64_t sub_24ACBC784()
{
  result = qword_27EF9EBD8;
  if (!qword_27EF9EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EBD8);
  }

  return result;
}

uint64_t sub_24ACBC7D8(uint64_t a1)
{
  v2 = sub_24ACD0DE0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC20, &qword_24ACD7CD8);
    v9 = sub_24ACD0A00();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_24ACBAB14(&qword_27EF9EC28, MEMORY[0x277CC9FC8], MEMORY[0x277CC9FD0]);
      v16 = sub_24ACD0520();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_24ACBAB14(&unk_27EF9EC30, MEMORY[0x277CC9FC8], MEMORY[0x277CC9FD8]);
          v23 = sub_24ACD0550();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24ACBCAF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736143657375 && a2 == 0xE700000000000000;
  if (v4 || (sub_24ACD0C40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265766F63736964 && a2 == 0xEE007367616C4679 || (sub_24ACD0C40() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265766F63736964 && a2 == 0xEE00736570795479 || (sub_24ACD0C40() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7379654B626F6FLL && a2 == 0xE700000000000000 || (sub_24ACD0C40() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657461526E616373 && a2 == 0xE800000000000000 || (sub_24ACD0C40() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6572685469737372 && a2 == 0xED0000646C6F6873)
  {

    return 5;
  }

  else
  {
    v6 = sub_24ACD0C40();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24ACBCD0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6566667542706F61 && a2 == 0xEE00686365654C72;
  if (v4 || (sub_24ACD0C40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024ACDAAA0 == a2 || (sub_24ACD0C40() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024ACDAAC0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24ACD0C40();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24ACBCE44()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AC214AC;

  return sub_24ACB28EC(v0);
}

uint64_t sub_24ACBCEE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AC214AC;

  return sub_24ACB0EAC(v2, v3, v4);
}

uint64_t sub_24ACBCF94()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC214AC;

  return sub_24ACB028C(v2, v3);
}

uint64_t sub_24ACBD02C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC214AC;

  return sub_24ACAF8DC(v2, v3);
}

uint64_t objectdestroy_124Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24ACBD104()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC214AC;

  return sub_24ACAE9B0(v2, v3);
}

uint64_t sub_24ACBD19C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC214AC;

  return sub_24ACADEDC();
}

uint64_t type metadata accessor for CentralManager.Error(uint64_t a1)
{
  result = qword_27EF9EC48;
  if (!qword_27EF9EC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ACBD2E0(uint64_t a1)
{
  result = sub_24ACD0090();
  if (v2 <= 0x3F)
  {
    result = sub_24ACBD368();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24ACBD368()
{
  result = qword_27EF9EC58;
  if (!qword_27EF9EC58)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_27EF9EC58);
  }

  return result;
}

unint64_t sub_24ACBD398()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC70, &qword_24ACD7ED8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24ACD7E70;
  *(inited + 32) = sub_24ACD0590();
  *(inited + 40) = v2;
  *(inited + 48) = sub_24ACD0040();
  *(inited + 56) = v3;
  *(inited + 64) = sub_24ACD0590();
  *(inited + 72) = v4;
  v5 = (v0 + *(type metadata accessor for PeripheralPairingInfo(0) + 20));
  v6 = *v5;
  v7 = v5[1];
  *(inited + 80) = *v5;
  *(inited + 88) = v7;
  sub_24AC46630(v6, v7);
  v8 = sub_24AC9EE94(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC78, &qword_24ACD7EE0);
  swift_arrayDestroy();
  if (qword_2814AD278 != -1)
  {
    swift_once();
  }

  v9 = sub_24ACD0490();
  __swift_project_value_buffer(v9, qword_2814AD280);

  v10 = sub_24ACD0470();
  v11 = sub_24ACD08F0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v14 = sub_24ACD0510();
    v16 = sub_24AC29E20(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_24AC18000, v10, v11, "PeripheralPairingInfo.dictionaryRepresentation: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C22DC60](v13, -1, -1);
    MEMORY[0x24C22DC60](v12, -1, -1);
  }

  v17 = sub_24AC829BC(v8);

  return v17;
}

uint64_t PeripheralPairingInfo.init(remoteAddress:remoteIRK:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24ACD0090();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for PeripheralPairingInfo(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t type metadata accessor for PeripheralPairingInfo(uint64_t a1)
{
  result = qword_27EF9EC60;
  if (!qword_27EF9EC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PeripheralPairingInfo.remoteAddress.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24ACD0090();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PeripheralPairingInfo.remoteIRK.getter()
{
  v1 = v0 + *(type metadata accessor for PeripheralPairingInfo(0) + 20);
  v2 = *v1;
  sub_24AC46630(*v1, *(v1 + 8));
  return v2;
}

unint64_t PeripheralPairingInfo.description.getter()
{
  sub_24ACD0A20();

  sub_24ACD0090();
  sub_24ACBD85C();
  v0 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v0);

  MEMORY[0x24C22CD50](0x203A4B524920, 0xE600000000000000);
  type metadata accessor for PeripheralPairingInfo(0);
  sub_24AC467AC();
  v1 = sub_24ACD0180();
  MEMORY[0x24C22CD50](v1);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 0xD000000000000010;
}

unint64_t sub_24ACBD85C()
{
  result = qword_27EF9E080;
  if (!qword_27EF9E080)
  {
    sub_24ACD0090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E080);
  }

  return result;
}

uint64_t ScanUseCase.hashValue.getter()
{
  v1 = *v0;
  sub_24ACD0D10();
  MEMORY[0x24C22D480](v1);
  return sub_24ACD0D50();
}

uint64_t ScanUseCase.description.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0xD000000000000014;
    v8 = 0x72656666696E732ELL;
    if (v1 != 10)
    {
      v8 = 0x69646E694674622ELL;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0xD000000000000012;
    if (v1 == 7)
    {
      v9 = 0x536E6F636165622ELL;
    }

    if (v1 == 6)
    {
      v9 = 0x656C65682ELL;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6574704F746F6E2ELL;
    v3 = 0xD000000000000024;
    v4 = 0xD000000000000018;
    if (v1 != 4)
    {
      v4 = 0x696E49726573752ELL;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x6E49646574706F2ELL;
    if (v1 != 1)
    {
      v5 = 0xD000000000000018;
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
}

unint64_t sub_24ACBDB38()
{
  result = qword_27EF9EC80;
  if (!qword_27EF9EC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EC80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScanUseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScanUseCase(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24ACBDCE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void *sub_24ACBDD38()
{
  v1 = 0;
  v2 = *v0;
  v3 = MEMORY[0x277D84F98];
  v4 = MEMORY[0x277D839B0];
  do
  {
    v6 = *(&unk_285E259A0 + v1 + 32);
    if ((v6 & ~v2) == 0)
    {
      v7 = 0xE90000000000003ELL;
      if (v6 <= 3)
      {
        if (v6 == 1)
        {
          goto LABEL_13;
        }

        v8 = 0x4E574F4E4B4E553CLL;
        if (v6 == 2)
        {
          goto LABEL_13;
        }
      }

      else if (v6 == 4 || v6 == 8 || (v8 = 0x4E574F4E4B4E553CLL, v6 == 16))
      {
LABEL_13:
        v8 = sub_24ACD0590();
        v7 = v9;
      }

      v34 = v4;
      LOBYTE(v33) = 1;
      sub_24AC1BFB8(&v33, &v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v3;
      v11 = *__swift_mutable_project_boxed_opaque_existential_0(&v31, v32);
      v29 = v4;
      LOBYTE(v28) = v11;
      v13 = sub_24AC2AB50(v8, v7);
      v14 = v3[2];
      v15 = (v12 & 1) == 0;
      v16 = v14 + v15;
      if (__OFADD__(v14, v15))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        result = sub_24ACD0C80();
        __break(1u);
        return result;
      }

      v17 = v12;
      if (v3[3] < v16)
      {
        sub_24AC5C328(v16, isUniquelyReferenced_nonNull_native);
        v18 = sub_24AC2AB50(v8, v7);
        if ((v17 & 1) != (v19 & 1))
        {
          goto LABEL_30;
        }

        v13 = v18;
        if ((v17 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_2:

        v3 = v30;
        v5 = (v30[7] + 32 * v13);
        __swift_destroy_boxed_opaque_existential_0(v5);
        sub_24AC1BFB8(&v28, v5);
LABEL_3:
        __swift_destroy_boxed_opaque_existential_0(&v31);
        goto LABEL_4;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v12)
        {
          goto LABEL_2;
        }
      }

      else
      {
        sub_24AC5E670();
        if (v17)
        {
          goto LABEL_2;
        }
      }

LABEL_21:
      v3 = v30;
      v20 = *__swift_mutable_project_boxed_opaque_existential_0(&v28, v29);
      v27 = v4;
      LOBYTE(v26) = v20;
      v3[(v13 >> 6) + 8] |= 1 << v13;
      v21 = (v3[6] + 16 * v13);
      *v21 = v8;
      v21[1] = v7;
      sub_24AC1BFB8(&v26, (v3[7] + 32 * v13));
      v22 = v3[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_29;
      }

      v3[2] = v24;
      __swift_destroy_boxed_opaque_existential_0(&v28);
      goto LABEL_3;
    }

LABEL_4:
    v1 += 8;
  }

  while (v1 != 40);
  if (!v3[2])
  {

    return 0;
  }

  return v3;
}

unint64_t sub_24ACBE074()
{
  result = qword_27EF9EC88;
  if (!qword_27EF9EC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EC88);
  }

  return result;
}

unint64_t sub_24ACBE0CC()
{
  result = qword_27EF9EC90;
  if (!qword_27EF9EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EC90);
  }

  return result;
}

unint64_t sub_24ACBE124()
{
  result = qword_27EF9EC98;
  if (!qword_27EF9EC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9ECA0, &qword_24ACD8020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EC98);
  }

  return result;
}

unint64_t sub_24ACBE19C()
{
  result = qword_2814AD8A0;
  if (!qword_2814AD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AD8A0);
  }

  return result;
}

unint64_t sub_24ACBE1F4()
{
  result = qword_2814AD898;
  if (!qword_2814AD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AD898);
  }

  return result;
}

uint64_t sub_24ACBE270(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_24ACBE2AC()
{
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  v0 = type metadata accessor for Controller();
  v1 = sub_24ACBF488(&qword_27EF9ECD0, &protocol conformance descriptor for Controller);
  v2 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v2);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  v3 = MEMORY[0x24C22D370](v0, v1);
  MEMORY[0x24C22CD50](v3);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  sub_24ACBF488(&qword_27EF9ECD8, &protocol conformance descriptor for Controller);
  sub_24ACD0A30();
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_24ACBE40C()
{
  v0 = sub_24ACD0490();
  __swift_allocate_value_buffer(v0, qword_27EF9ECA8);
  v1 = __swift_project_value_buffer(v0, qword_27EF9ECA8);
  if (qword_27EF9DC78 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EFA5E20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t Controller.Error.hashValue.getter()
{
  v1 = *v0;
  sub_24ACD0D10();
  MEMORY[0x24C22D480](v1);
  return sub_24ACD0D50();
}

uint64_t Controller.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = [objc_allocWithZone(MEMORY[0x277CBE010]) init];
  return v0;
}

uint64_t Controller.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = [objc_allocWithZone(MEMORY[0x277CBE010]) init];
  return v0;
}

uint64_t sub_24ACBE5F0(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  type metadata accessor for Device(0);
  v2[21] = swift_task_alloc();
  v3 = sub_24ACD0420();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACBE708, v1, 0);
}

uint64_t sub_24ACBE708()
{
  v55 = v0;
  v54[1] = *MEMORY[0x277D85DE8];
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E898, &qword_24ACD66C0);
  sub_24ACCFFE0();
  v52 = sub_24ACD03C0();
  v5 = v4;
  (*(v1 + 8))(v2, v3);
  if (qword_27EF9DC70 != -1)
  {
LABEL_29:
    swift_once();
  }

  v6 = v0[21];
  v7 = v0[19];
  v8 = sub_24ACD0490();
  __swift_project_value_buffer(v8, qword_27EF9ECA8);
  sub_24ACBF028(v7, v6);
  v9 = sub_24ACD0470();
  v10 = sub_24ACD0930();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[21];
  v53 = v0;
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v54[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_24AC29E20(0x6428726961706E75, 0xEF293A6563697665, v54);
    *(v13 + 12) = 2082;
    v15 = v5;
    v16 = Device.description.getter();
    v18 = v17;
    sub_24ACBF08C(v12);
    v19 = v16;
    v5 = v15;
    v0 = v53;
    v20 = sub_24AC29E20(v19, v18, v54);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_24AC18000, v9, v10, "%s %{public}s!", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v14, -1, -1);
    MEMORY[0x24C22DC60](v13, -1, -1);
  }

  else
  {

    sub_24ACBF08C(v12);
  }

  v21 = objc_opt_self();
  v0[18] = 0;
  v22 = [v21 devicesWithDiscoveryFlags:0x800000 error:v0 + 18];
  v23 = v0[18];
  if (!v22)
  {
    v41 = v23;

    sub_24ACD0220();

LABEL_34:
    swift_willThrow();

    v50 = v0[1];

    return v50();
  }

  v24 = v22;
  sub_24ACBF0E8();
  v25 = sub_24ACD0700();
  v26 = v23;

  if (v25 >> 62)
  {
    v27 = sub_24ACD0B30();
    if (v27)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

  v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
LABEL_31:

    v45 = sub_24ACD0470();
    v46 = sub_24ACD0910();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v54[0] = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_24AC29E20(0x6428726961706E75, 0xEF293A6563697665, v54);
      _os_log_impl(&dword_24AC18000, v45, v46, "%s Missing underlying CBDevice!", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x24C22DC60](v48, -1, -1);
      MEMORY[0x24C22DC60](v47, -1, -1);
    }

    sub_24ACBF14C();
    swift_allocError();
    *v49 = 1;
    goto LABEL_34;
  }

LABEL_8:
  v28 = 0;
  while (1)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x24C22D1B0](v28, v25);
    }

    else
    {
      if (v28 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v29 = *(v25 + 8 * v28 + 32);
    }

    v30 = v29;
    v0[25] = v29;
    v31 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v32 = [v29 identifier];
    if (!v32)
    {
      goto LABEL_9;
    }

    v33 = v32;
    v34 = v5;
    v35 = sub_24ACD0590();
    v37 = v36;

    v38 = v35;
    v5 = v34;
    if (v38 == v52 && v37 == v34)
    {
      break;
    }

    v40 = sub_24ACD0C40();

    v0 = v53;
    if (v40)
    {
      goto LABEL_24;
    }

LABEL_9:

    ++v28;
    if (v31 == v27)
    {
      goto LABEL_31;
    }
  }

  v0 = v53;
LABEL_24:
  v42 = v0[20];

  v43 = *(v42 + 112);
  v0[2] = v0;
  v0[3] = sub_24ACBED80;
  v44 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E910, &unk_24ACD6B30);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24ACB2A64;
  v0[13] = &block_descriptor_1;
  v0[14] = v44;
  [v43 deleteDevice:v30 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24ACBED80()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 160);
  if (v2)
  {
    v4 = sub_24ACBEF78;
  }

  else
  {
    v4 = sub_24ACBEECC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24ACBEECC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACBEF78(uint64_t a1)
{
  v2 = *(v1 + 200);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_24ACBF028(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ACBF08C(uint64_t a1)
{
  v2 = type metadata accessor for Device(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24ACBF0E8()
{
  result = qword_2814ACFA8;
  if (!qword_2814ACFA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814ACFA8);
  }

  return result;
}

unint64_t sub_24ACBF14C()
{
  result = qword_27EF9ECC0;
  if (!qword_27EF9ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9ECC0);
  }

  return result;
}

uint64_t Controller.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24ACBF20C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC20274;

  return sub_24ACBE5F0(a1);
}

uint64_t sub_24ACBF2A0@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for Controller();
  result = sub_24ACD0A40();
  *a3 = result;
  return result;
}

uint64_t sub_24ACBF304()
{
  v0 = sub_24ACD0490();
  __swift_allocate_value_buffer(v0, qword_27EFA5E20);
  __swift_project_value_buffer(v0, qword_27EFA5E20);
  return sub_24ACD0480();
}

unint64_t sub_24ACBF384()
{
  result = qword_27EF9ECC8;
  if (!qword_27EF9ECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9ECC8);
  }

  return result;
}

uint64_t sub_24ACBF3D8(void *a1)
{
  a1[1] = sub_24ACBF488(&qword_27EF9ECD0, &protocol conformance descriptor for Controller);
  a1[2] = sub_24ACBF488(&qword_27EF9ECD8, &protocol conformance descriptor for Controller);
  result = sub_24ACBF488(qword_27EF9ECE0, &protocol conformance descriptor for Controller);
  a1[3] = result;
  return result;
}

uint64_t sub_24ACBF488(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Controller();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of Controller.unpair(device:)(uint64_t a1)
{
  v6 = (*(*v1 + 104) + **(*v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC20274;

  return v6(a1);
}

char *fragment(data:mtu:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_24ACD0240();
  v4 = sub_24ACBF684(v3);

  return v4;
}

char *sub_24ACBF684(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = MEMORY[0x277D84F90];
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDF0, &qword_24ACD8480);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24ACD39E0;
    *(v7 + 32) = v2 == 1;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E3E8, &qword_24ACD50A0);
    v26 = v8;
    v27 = sub_24ACC13DC();
    v24 = v7;
    v9 = __swift_project_boxed_opaque_existential_0(&v24, v8);
    v10 = *v9;
    v11 = *(*v9 + 16);
    if (v11)
    {
      if (v11 <= 0xE)
      {
        memset(__dst, 0, sizeof(__dst));
        v23 = v11;
        memcpy(__dst, (v10 + 32), v11);
        v14 = *__dst;
        v1 = v1 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v23 << 16)) << 32);
        sub_24AC46630(v5, v6);
        v15 = v1;
      }

      else
      {
        sub_24ACD0200();
        swift_allocObject();
        sub_24AC46630(v5, v6);
        v12 = sub_24ACD01B0();
        v13 = v12;
        if (v11 >= 0x7FFFFFFF)
        {
          sub_24ACD0280();
          v14 = swift_allocObject();
          *(v14 + 16) = 0;
          *(v14 + 24) = v11;
          v15 = v13 | 0x8000000000000000;
        }

        else
        {
          v14 = v11 << 32;
          v15 = v12 | 0x4000000000000000;
        }
      }
    }

    else
    {
      sub_24AC46630(v5, v6);
      v14 = 0;
      v15 = 0xC000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_0(&v24);
    v24 = v14;
    v25 = v15;
    sub_24ACD02E0();
    v16 = v24;
    v17 = v25;
    sub_24AC46630(v24, v25);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_24AC1D940(0, *(v3 + 2) + 1, 1, v3);
    }

    v19 = *(v3 + 2);
    v18 = *(v3 + 3);
    if (v19 >= v18 >> 1)
    {
      v3 = sub_24AC1D940((v18 > 1), v19 + 1, 1, v3);
    }

    v4 += 2;
    sub_24AC46698(v5, v6);
    sub_24AC46698(v24, v25);
    *(v3 + 2) = v19 + 1;
    v20 = &v3[16 * v19];
    *(v20 + 4) = v16;
    *(v20 + 5) = v17;
    --v2;
  }

  while (v2);
  return v3;
}

uint64_t AsyncSequence<>.reassemble()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ReassemblingAsyncSequence(0, a1, a2, a4);
  v4[5] = v7;
  v8 = *(v7 - 8);
  v4[6] = v8;
  v4[7] = v8;
  v9 = swift_task_alloc();
  v4[8] = v9;
  v4[9] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[10] = v10;
  *v10 = v4;
  v10[1] = sub_24ACBFA58;

  return sub_24ACBFFD4(v9, a1, a2);
}

uint64_t sub_24ACBFA58()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24ACBFED4;
  }

  else
  {
    v2 = sub_24ACBFB6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ACBFB6C()
{
  v1 = v0[8];
  v2 = v0[7];
  v3 = v0[5];
  (*(v0[6] + 16))(v0[9], v1, v3);
  v4 = *(v2 + 8);
  v0[12] = v4;
  v0[13] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v3);
  v5 = swift_task_alloc();
  v0[14] = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v0;
  v5[1] = sub_24ACBFC9C;
  v7 = v0[5];

  return MEMORY[0x282200320](v0 + 2, 0, 0, v7, WitnessTable, v0 + 4);
}

uint64_t sub_24ACBFC9C()
{

  if (v0)
  {
    v1 = sub_24ACBFF40;
  }

  else
  {
    v1 = sub_24ACBFDAC;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24ACBFDAC()
{
  (*(v0 + 96))(*(v0 + 72), *(v0 + 40));
  v1 = *(v0 + 24);
  if (v1 >> 60 == 15)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24ACC0164();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 16);

    v5 = *(v0 + 8);

    return v5(v4, v1);
  }
}

uint64_t sub_24ACBFED4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACBFF40()
{
  (*(v0 + 96))(*(v0 + 72), *(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACBFFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(a2 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC008C, 0, 0);
}

uint64_t sub_24ACC008C()
{
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];
  (*(v0[6] + 16))(v1, v0[5], v2);
  sub_24ACC01BC(v1, v2, v3);

  v4 = v0[1];

  return v4();
}

unint64_t sub_24ACC0164()
{
  result = qword_27EF9E050;
  if (!qword_27EF9E050)
  {
    type metadata accessor for CentralManager.Error(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E050);
  }

  return result;
}

uint64_t sub_24ACC01BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ReassemblingAsyncSequence(0, v10, v11, v12);
  *(a4 + *(v13 + 36)) = xmmword_24ACD8380;
  *(a4 + *(v13 + 40)) = 0;
  (*(v7 + 16))(v9, a1, a2);
  sub_24ACD0870();
  return (*(v7 + 8))(a1, a2);
}

uint64_t ReassemblingAsyncSequence.next()(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_24ACC02F4, 0, 0);
}

uint64_t sub_24ACC02F4()
{
  if (*(*(v0 + 40) + *(*(v0 + 32) + 40)))
  {
    v1 = *(v0 + 8);

    return v1(0, 0xF000000000000000);
  }

  else
  {
    *(v0 + 48) = xmmword_24ACD39F0;
    sub_24ACD0850();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *v5 = v0;
    v5[1] = sub_24ACC04AC;

    return MEMORY[0x282200308](v0 + 16, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_24ACC04AC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24ACC0A84;
  }

  else
  {
    v2 = sub_24ACC05C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ACC05C0()
{
  v1 = sub_24AC46684(v0[6], v0[7]);
  v5 = v0[2];
  v4 = v0[3];
  if (v4 >> 60 == 15)
  {
    goto LABEL_12;
  }

  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
LABEL_9:
      sub_24AC46684(v0[2], v0[3]);
      goto LABEL_11;
    }

    if (*(v5 + 16) == *(v5 + 24))
    {
LABEL_11:
      sub_24AC46684(v5, v4);
LABEL_12:
      v9 = 0;
      v10 = 0xF000000000000000;
      goto LABEL_13;
    }
  }

  else
  {
    if (!v6)
    {
      if ((v4 & 0xFF000000000000) != 0)
      {
        v7 = v0[2];
        v8 = BYTE6(v4);
        goto LABEL_31;
      }

      goto LABEL_9;
    }

    if (v5 == v5 >> 32)
    {
      goto LABEL_11;
    }
  }

  v1 = sub_24AC4661C(v0[2], v0[3]);
  if (v6 == 2)
  {
    v14 = *(v5 + 16);
    v13 = *(v5 + 24);
    v8 = v13 - v14;
    if (__OFSUB__(v13, v14))
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    if (v14 > 0)
    {
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    if (v13 < 1)
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v1 = sub_24ACD01C0();
    if (!v1)
    {
LABEL_90:
      __break(1u);
      return MEMORY[0x282200308](v1, v2, v3);
    }

    v15 = v1;
    v1 = sub_24ACD01F0();
    v16 = -v1;
    if (!__OFSUB__(0, v1))
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v5 < 0x100000000 || v5 > 0)
  {
    goto LABEL_86;
  }

  v1 = sub_24ACD01C0();
  if (!v1)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v15 = v1;
  v1 = sub_24ACD01F0();
  v16 = -v1;
  if (__OFSUB__(0, v1))
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v8 = HIDWORD(v5) - v5;
LABEL_30:
  v7 = *(v15 + v16);
LABEL_31:
  v17 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v17 < 0)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      v18 = v5 >> 32;
      v19 = v5;
    }

    else
    {
      v19 = *(v5 + 16);
      v18 = *(v5 + 24);
    }

    v1 = sub_24AC4661C(v5, v4);
    if (v18 < v19)
    {
      goto LABEL_78;
    }

    if (v6 == 2)
    {
      v20 = *(v5 + 16);
      v21 = *(v5 + 24);
    }

    else
    {
      v20 = v5;
      v21 = v5 >> 32;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v18 = BYTE6(v4);
    v21 = BYTE6(v4);
  }

  if (v21 < v19 || v19 < v20)
  {
    goto LABEL_79;
  }

  v22 = v19 - v18;
  if (__OFSUB__(v19, v18))
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v23 = -v17;
  if (v22 > 0 || v22 <= v23)
  {
    v1 = v18 - v17;
    if (__OFADD__(v18, v23))
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (v6 == 2)
    {
      v24 = *(v5 + 16);
      v25 = *(v5 + 24);
    }

    else if (v6 == 1)
    {
      v24 = v5;
      v25 = v5 >> 32;
    }

    else
    {
      v24 = 0;
      v25 = BYTE6(v4);
    }

    if (v25 < v1 || v1 < v24)
    {
      goto LABEL_82;
    }

    if (v6)
    {
      if (v6 == 1)
      {
        v2 = v5 >> 32;
        goto LABEL_65;
      }

      goto LABEL_64;
    }

LABEL_63:
    v2 = BYTE6(v4);
    goto LABEL_65;
  }

  if (!v6)
  {
    v1 = 0;
    goto LABEL_63;
  }

  if (v6 != 2)
  {
    v1 = v5;
    v2 = v5 >> 32;
    goto LABEL_65;
  }

  v1 = *(v5 + 16);
LABEL_64:
  v2 = *(v5 + 24);
LABEL_65:
  if (v2 < v1)
  {
    __break(1u);
    goto LABEL_76;
  }

  v27 = v0[4];
  v26 = v0[5];
  v28 = sub_24ACD02A0();
  v30 = v29;
  sub_24AC46684(v5, v4);
  v31 = (v26 + *(v27 + 36));
  sub_24ACD02E0();
  sub_24AC46684(v5, v4);
  sub_24AC46698(v28, v30);
  if ((v7 & 1) == 0)
  {
    v32 = v0[9];
    v0[6] = v5;
    v0[7] = v4;
    sub_24ACD0850();
    if (v32)
    {
      sub_24AC46684(v5, v4);
      v33 = v0[1];

      return v33();
    }

    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v38 = swift_task_alloc();
    v0[8] = v38;
    *v38 = v0;
    v38[1] = sub_24ACC04AC;
    v1 = (v0 + 2);
    v2 = AssociatedTypeWitness;
    v3 = AssociatedConformanceWitness;

    return MEMORY[0x282200308](v1, v2, v3);
  }

  sub_24AC46684(v5, v4);
  v34 = *v31;
  v35 = v31[1];
  sub_24AC46630(v34, v35);
  v10 = v35;
  v9 = v34;
LABEL_13:
  v11 = v0[1];

  return v11(v9, v10);
}

uint64_t sub_24ACC0A84()
{
  sub_24AC46684(v0[6], v0[7]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24ACC0AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ReassemblingAsyncSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_24ACC0B48(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24ACC0BE0;

  return ReassemblingAsyncSequence.next()(a2);
}

uint64_t sub_24ACC0BE0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_24ACC0CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_24ACC0DD0;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_24ACC0DD0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_24ACC0F10(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24ACC0FA8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
    if (v10 <= 3)
    {
      v11 = ((a2 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = *&a1[v10];
        if (*&a1[v10])
        {
          goto LABEL_20;
        }
      }

      else
      {
        v14 = *&a1[v10];
        if (v14)
        {
          goto LABEL_20;
        }
      }
    }

    else if (v13)
    {
      v14 = a1[v10];
      if (a1[v10])
      {
LABEL_20:
        v15 = (v14 - 1) << (8 * v10);
        if (v10 <= 3)
        {
          v16 = *a1;
        }

        else
        {
          v15 = 0;
          v16 = *a1;
        }

        v20 = v8 + (v16 | v15);
        return (v20 + 1);
      }
    }
  }

  if (v7 < 0xFE)
  {
    v19 = *((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v19 >= 2)
    {
      v20 = (v19 + 2147483646) & 0x7FFFFFFF;
      return (v20 + 1);
    }

    return 0;
  }

  v17 = *(v6 + 48);

  return v17(a1);
}

void sub_24ACC1150(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v10 >= a3)
  {
    v14 = 0;
    if (v10 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v11 <= 3)
    {
      v12 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v10 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v11] = 0;
      }

      else if (v14)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v8 < 0xFE)
      {
        *((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 16) = a2 + 1;
      }

      else
      {
        v17 = *(v7 + 56);

        v17(a1, a2);
      }

      return;
    }
  }

  v15 = ~v10 + a2;
  bzero(a1, v11);
  if (v11 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v11] = v16;
  }
}

_BYTE *sub_24ACC1348@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_24ACC1440(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_24ACC14F8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_24ACC1574(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_24ACC13DC()
{
  result = qword_27EF9ED68;
  if (!qword_27EF9ED68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9E3E8, &qword_24ACD50A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9ED68);
  }

  return result;
}

uint64_t sub_24ACC1440(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
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

uint64_t sub_24ACC14F8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_24ACD0200();
  swift_allocObject();
  result = sub_24ACD01B0();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_24ACD0280();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_24ACC1574(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_24ACD0200();
  swift_allocObject();
  result = sub_24ACD01B0();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t ScanMode.description.getter()
{
  v1 = *v0;
  if (v0[1])
  {
    v5 = 0x657361436573752ELL;
    v2 = ScanUseCase.description.getter();
  }

  else
  {
    sub_24ACD0A20();

    v5 = 0xD000000000000014;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
    v2 = MEMORY[0x24C22CE70](v1, v3);
  }

  MEMORY[0x24C22CD50](v2);

  MEMORY[0x24C22CD50](41, 0xE100000000000000);
  return v5;
}

FindMyBluetooth::TransportType_optional __swiftcall TransportType.init(rawValue:)(FindMyBluetooth::TransportType_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= FindMyBluetooth_TransportType_unknownDefault)
  {
    value = FindMyBluetooth_TransportType_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

uint64_t TransportType.description.getter()
{
  v1 = 0x63697373616C632ELL;
  if (*v0 != 1)
  {
    v1 = 0x72656E45776F6C2ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E752ELL;
  }
}

unint64_t sub_24ACC1778()
{
  result = qword_27EF9ED70;
  if (!qword_27EF9ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9ED70);
  }

  return result;
}

uint64_t sub_24ACC17D4()
{
  v1 = 0x63697373616C632ELL;
  if (*v0 != 1)
  {
    v1 = 0x72656E45776F6C2ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E752ELL;
  }
}

uint64_t CharacteristicUUID.init(uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24ACD0420();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t CharacteristicUUID.init(stringLiteral:)@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC40, &qword_24ACD8620);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_24ACD03B0();
  v7 = sub_24ACD0420();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v8 + 32))(a3, v6, v7);
  }

  return result;
}

unint64_t CharacteristicUUID.debugDescription.getter()
{
  sub_24ACD0A20();

  v0 = sub_24ACD03C0();
  MEMORY[0x24C22CD50](v0);

  MEMORY[0x24C22CD50](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t CharacteristicUUID.hash(into:)(uint64_t a1)
{
  sub_24ACD0420();
  sub_24ACC1EB0(&qword_2814AE200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_24ACD0530();
}

uint64_t CharacteristicUUID.hashValue.getter()
{
  sub_24ACD0D10();
  sub_24ACD0420();
  sub_24ACC1EB0(&qword_2814AE200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24ACD0530();
  return sub_24ACD0D50();
}

unint64_t sub_24ACC1B6C()
{
  sub_24ACD0A20();

  v0 = sub_24ACD03C0();
  MEMORY[0x24C22CD50](v0);

  MEMORY[0x24C22CD50](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t sub_24ACC1BFC()
{
  sub_24ACD0D10();
  sub_24ACD0420();
  sub_24ACC1EB0(&qword_2814AE200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24ACD0530();
  return sub_24ACD0D50();
}

uint64_t sub_24ACC1C84(uint64_t a1)
{
  sub_24ACD0420();
  sub_24ACC1EB0(&qword_2814AE200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_24ACD0530();
}

uint64_t sub_24ACC1D08(uint64_t a1)
{
  sub_24ACD0D10();
  sub_24ACD0420();
  sub_24ACC1EB0(&qword_2814AE200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24ACD0530();
  return sub_24ACD0D50();
}

uint64_t type metadata accessor for CharacteristicUUID(uint64_t a1)
{
  result = qword_27EF9ED90;
  if (!qword_27EF9ED90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ACC1EB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24ACC1EF8@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC40, &qword_24ACD8620);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  sub_24ACD03B0();
  v6 = sub_24ACD0420();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v7 + 32))(a2, v5, v6);
  }

  return result;
}

uint64_t sub_24ACC203C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24AC6FB34(a1, a2);
  v7 = sub_24ACC26C8(v6);
  if ((v7 & 0x100) != 0 || (BluetoothManufacturerAdvertisementData.PayloadType.init(rawValue:)(v7), v8 = v23, v23 == 8))
  {

    sub_24ACC36E8();
    swift_allocError();
    v10 = 1;
LABEL_4:
    *v9 = v10;
    swift_willThrow();
    return sub_24AC46698(a1, a2);
  }

  sub_24ACC2754(v6, &v23);

  v12 = v24;
  if (v24 >> 60 == 15)
  {
    sub_24ACC36E8();
    swift_allocError();
    v10 = 2;
    goto LABEL_4;
  }

  v13 = v23;
  v14 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v16 = *(v23 + 16);
      v15 = *(v23 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v18 >= 2)
      {
        goto LABEL_14;
      }
    }

LABEL_18:
    sub_24ACC36E8();
    swift_allocError();
    v22 = 3;
    goto LABEL_19;
  }

  if (!v14)
  {
    if (BYTE6(v24) < 2uLL)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (__OFSUB__(HIDWORD(v23), v23))
  {
LABEL_22:
    __break(1u);
    return result;
  }

  if (HIDWORD(v23) - v23 < 2)
  {
    goto LABEL_18;
  }

LABEL_14:
  v19 = sub_24ACD02B0();
  BluetoothManufacturerAdvertisementData.SubType.init(rawValue:)(v19);
  v20 = v23;
  if (v23 == 10)
  {
    sub_24ACC36E8();
    swift_allocError();
    v22 = 2;
LABEL_19:
    *v21 = v22;
    swift_willThrow();
    sub_24AC46698(a1, a2);
    return sub_24AC46684(v13, v12);
  }

  result = sub_24AC46698(a1, a2);
  *a3 = v8;
  *(a3 + 1) = v20;
  *(a3 + 8) = v13;
  *(a3 + 16) = v12;
  return result;
}

uint64_t BluetoothManufacturerAdvertisementData.description.getter()
{
  sub_24ACD0A20();
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  sub_24ACC23F8();
  v0 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v0);

  MEMORY[0x24C22CD50](0x64616F6C79617020, 0xED00003A65707954);
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](0x6570795462757320, 0xE90000000000003ALL);
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](0x6C79615077617220, 0xEC0000003A64616FLL);
  sub_24AC467AC();
  v1 = sub_24ACD0180();
  MEMORY[0x24C22CD50](v1);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_24ACC23F8()
{
  result = qword_27EF9EDA0;
  if (!qword_27EF9EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EDA0);
  }

  return result;
}

uint64_t BluetoothManufacturerAdvertisementData.Error.hashValue.getter()
{
  v1 = *v0;
  sub_24ACD0D10();
  MEMORY[0x24C22D480](v1);
  return sub_24ACD0D50();
}

FindMyBluetooth::BluetoothManufacturerAdvertisementData::PayloadType_optional __swiftcall BluetoothManufacturerAdvertisementData.PayloadType.init(rawValue:)(FindMyBluetooth::BluetoothManufacturerAdvertisementData::PayloadType_optional rawValue)
{
  value = rawValue.value;
  if ((rawValue.value & 0xF8) != 0)
  {
    value = FindMyBluetooth_BluetoothManufacturerAdvertisementData_PayloadType_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

FindMyBluetooth::BluetoothManufacturerAdvertisementData::SubType_optional __swiftcall BluetoothManufacturerAdvertisementData.SubType.init(rawValue:)(FindMyBluetooth::BluetoothManufacturerAdvertisementData::SubType_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= FindMyBluetooth_BluetoothManufacturerAdvertisementData_SubType_unknownDefault)
  {
    value = FindMyBluetooth_BluetoothManufacturerAdvertisementData_SubType_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

uint64_t BluetoothManufacturerAdvertisementData.rawPayload.getter()
{
  v1 = *(v0 + 8);
  sub_24AC46630(v1, *(v0 + 16));
  return v1;
}

uint64_t sub_24ACC26C8(uint64_t a1)
{
  v2 = sub_24ACD09A0();
  v3 = v2;
  v4 = 1 << *(a1 + 32);
  if (v2 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_24ACC34CC(v2, *(a1 + 36), 0, a1);
  }

  return v5 | ((v3 == v4) << 8);
}

uint64_t sub_24ACC2754@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24ACD09A0();
  if (result == 1 << *(a1 + 32))
  {
    v5 = 0;
    v6 = 0xF000000000000000;
  }

  else
  {
    sub_24ACC3470(result, *(a1 + 36), a1, &v7);
    v6 = *(&v7 + 1);
    v5 = v7;
    sub_24AC46630(v7, *(&v7 + 1));
    result = sub_24AC46698(v5, v6);
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_24ACC27F4()
{
  v1 = 0x65707954627573;
  if (*v0 != 1)
  {
    v1 = 0x6F6C796150776172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5464616F6C796170;
  }
}

uint64_t sub_24ACC285C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ACC351C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24ACC2884(uint64_t a1)
{
  v2 = sub_24ACC2AF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ACC28C0(uint64_t a1)
{
  v2 = sub_24ACC2AF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BluetoothManufacturerAdvertisementData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EDA8, &qword_24ACD87A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v17 = v1[1];
  v9 = *(v1 + 1);
  v13 = *(v1 + 2);
  v14 = v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_24ACC2AF8();
  sub_24ACD0D80();
  LOBYTE(v15) = v8;
  v18 = 0;
  sub_24ACC2B4C();
  sub_24ACD0BF0();
  if (!v2)
  {
    v11 = v13;
    v10 = v14;
    LOBYTE(v15) = v17;
    v18 = 1;
    sub_24ACC2BA0();
    sub_24ACD0BF0();
    v15 = v10;
    v16 = v11;
    v18 = 2;
    sub_24AC46630(v10, v11);
    sub_24ACBAEA4();
    sub_24ACD0BF0();
    sub_24AC46698(v15, v16);
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24ACC2AF8()
{
  result = qword_27EF9EDB0;
  if (!qword_27EF9EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EDB0);
  }

  return result;
}

unint64_t sub_24ACC2B4C()
{
  result = qword_27EF9EDB8;
  if (!qword_27EF9EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EDB8);
  }

  return result;
}

unint64_t sub_24ACC2BA0()
{
  result = qword_27EF9EDC0;
  if (!qword_27EF9EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EDC0);
  }

  return result;
}

uint64_t BluetoothManufacturerAdvertisementData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EDC8, &qword_24ACD87A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_24ACC2AF8();
  sub_24ACD0D70();
  if (!v2)
  {
    v14 = 0;
    sub_24ACC2E10();
    sub_24ACD0BB0();
    v9 = v13;
    v14 = 1;
    sub_24ACC2E64();
    sub_24ACD0BB0();
    v11 = v13;
    v14 = 2;
    sub_24ACBAEF8();
    sub_24ACD0BB0();
    (*(v6 + 8))(v8, v5);
    v12 = v13;
    *a2 = v9;
    *(a2 + 1) = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_24ACC2E10()
{
  result = qword_27EF9EDD0;
  if (!qword_27EF9EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EDD0);
  }

  return result;
}

unint64_t sub_24ACC2E64()
{
  result = qword_27EF9EDD8;
  if (!qword_27EF9EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EDD8);
  }

  return result;
}

unint64_t sub_24ACC2EBC()
{
  result = qword_27EF9EDE0;
  if (!qword_27EF9EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EDE0);
  }

  return result;
}

unint64_t sub_24ACC2F14()
{
  result = qword_27EF9EDE8;
  if (!qword_27EF9EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EDE8);
  }

  return result;
}

unint64_t sub_24ACC2F6C()
{
  result = qword_27EF9EDF0;
  if (!qword_27EF9EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EDF0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
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

uint64_t sub_24ACC3010(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && a1[24])
  {
    return (*a1 + 249);
  }

  v3 = *a1;
  v4 = v3 >= 8;
  v5 = v3 - 8;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24ACC3054(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 7;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BluetoothManufacturerAdvertisementData.PayloadType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BluetoothManufacturerAdvertisementData.PayloadType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BluetoothManufacturerAdvertisementData.SubType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BluetoothManufacturerAdvertisementData.SubType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24ACC336C()
{
  result = qword_27EF9EDF8;
  if (!qword_27EF9EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EDF8);
  }

  return result;
}

unint64_t sub_24ACC33C4()
{
  result = qword_27EF9EE00;
  if (!qword_27EF9EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EE00);
  }

  return result;
}

unint64_t sub_24ACC341C()
{
  result = qword_27EF9EE08;
  if (!qword_27EF9EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EE08);
  }

  return result;
}

uint64_t sub_24ACC3470@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v4 = *(*(a3 + 56) + 16 * result);
    *a4 = v4;
    return sub_24AC46630(v4, *(&v4 + 1));
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_24ACC34CC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_24ACC351C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5464616F6C796170 && a2 == 0xEB00000000657079;
  if (v4 || (sub_24ACD0C40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65707954627573 && a2 == 0xE700000000000000 || (sub_24ACD0C40() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6C796150776172 && a2 == 0xEA00000000006461)
  {

    return 2;
  }

  else
  {
    v6 = sub_24ACD0C40();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_24ACC3640()
{
  result = qword_27EF9EE10;
  if (!qword_27EF9EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EE10);
  }

  return result;
}

unint64_t sub_24ACC3694()
{
  result = qword_27EF9EE18;
  if (!qword_27EF9EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EE18);
  }

  return result;
}

unint64_t sub_24ACC36E8()
{
  result = qword_27EF9EE20;
  if (!qword_27EF9EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EE20);
  }

  return result;
}

void MockCentralManager.setMockBehavior(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v4;
  sub_24AC56E10(v2, v3, v4);
  sub_24AC56E90(v6, v7, v8);
}

uint64_t sub_24ACC37E4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC3884, a1, 0);
}

uint64_t sub_24ACC3884()
{
  v1 = *(v0 + 72);
  *(v0 + 88) = swift_weakLoadStrong();

  return MEMORY[0x2822009F8](sub_24ACC3900, v1, 0);
}

uint64_t sub_24ACC3900()
{
  v1 = v0[11];
  if (!v1)
  {
LABEL_4:
    type metadata accessor for CentralManager.Error(0);
    sub_24ACCF6A4(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v2 = v0[1];

    return v2();
  }

  if (v1 != v0[9])
  {

    goto LABEL_4;
  }

  v4 = v0[8];

  return MEMORY[0x2822009F8](sub_24ACC3A40, v4, 0);
}

uint64_t sub_24ACC3A40()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  *(v1 + v3) = 2;

  return MEMORY[0x2822009F8](sub_24ACC3AD4, v2, 0);
}

uint64_t sub_24ACC3AD4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + 176);
  *(v3 + 176) = 0x8000000000000000;
  sub_24AC639D0(v2, v2 + v4, isUniquelyReferenced_nonNull_native);
  *(v3 + 176) = v11;
  swift_endAccess();
  v6 = sub_24ACD07C0();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v7 = sub_24ACCF6A4(&qword_27EF9E508, type metadata accessor for MockCentralManager, ")-V70[");
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = v7;
  v8[4] = v3;
  v8[5] = v2;
  swift_retain_n();

  sub_24AC7F080(0, 0, v1, &unk_24ACD9190, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24ACC3CA4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC3D44, a1, 0);
}

uint64_t sub_24ACC3D44()
{
  v1 = *(v0 + 48);
  *(v0 + 64) = swift_weakLoadStrong();

  return MEMORY[0x2822009F8](sub_24ACC3DC0, v1, 0);
}

uint64_t sub_24ACC3DC0()
{
  v1 = v0[8];
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v0[6];
  if (v1 != v2)
  {

LABEL_4:
    type metadata accessor for CentralManager.Error(0);
    sub_24ACCF6A4(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_5:

    v3 = v0[1];
    goto LABEL_6;
  }

  swift_beginAccess();
  if (!*(*(v2 + 176) + 16) || (v5 = v0[5], v6 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id, , sub_24AC2AC60(v5 + v6), LOBYTE(v5) = v7, , (v5 & 1) == 0))
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24ACCF6A4(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_5;
  }

  v8 = v0[7];
  v10 = v0[5];
  v9 = v0[6];
  v11 = sub_24ACD07C0();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = sub_24ACCF6A4(&qword_27EF9E508, type metadata accessor for MockCentralManager, ")-V70[");
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v12;
  v13[4] = v9;
  v13[5] = v10;
  swift_retain_n();

  sub_24AC7F080(0, 0, v8, &unk_24ACD9170, v13);

  v3 = v0[1];
LABEL_6:

  return v3();
}

uint64_t sub_24ACC40B8()
{
  v1 = *(v0 + 40);
  sub_24ACD0A20();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  *(v0 + 32) = v1;
  v2 = type metadata accessor for CentralManager(0);
  v3 = sub_24ACCF6A4(&qword_2814AD858, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  v4 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v4);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v5 = MEMORY[0x24C22D370](v2, v3);
  MEMORY[0x24C22CD50](v5);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  sub_24AC2B6A8(&qword_2814AE258, &qword_27EF9E120, &qword_24ACD4550, MEMORY[0x277D088C8]);
  v6 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v6);

  MEMORY[0x24C22CD50](0x206574617473202CLL, 0xEA0000000000203DLL);
  sub_24AC81B94((v0 + 32));
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 8);

  return v9(v7, v8);
}

uint64_t sub_24ACC4320()
{
  v1 = *(v0 + 56);
  sub_24ACD0A20();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  *(v0 + 16) = v1;
  v2 = type metadata accessor for MockCentralManager(0);
  v3 = sub_24ACCF6A4(&qword_27EF9E6E0, type metadata accessor for MockCentralManager, &protocol conformance descriptor for MockCentralManager);
  v4 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v4);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v5 = MEMORY[0x24C22D370](v2, v3);
  MEMORY[0x24C22CD50](v5);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  sub_24AC2B6A8(&qword_2814AE258, &qword_27EF9E120, &qword_24ACD4550, MEMORY[0x277D088C8]);
  v6 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v6);

  MEMORY[0x24C22CD50](0x206574617473202CLL, 0xEA0000000000203DLL);
  v7 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  swift_beginAccess();
  *(v0 + 64) = *(v1 + v7);
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 8);

  return v10(v8, v9);
}

uint64_t sub_24ACC457C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE70, &qword_24ACD8DA8);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v18 = v9;
    v19 = v8;
    v20 = a3;
    v13 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    while (1)
    {
      sub_24AC2B5DC(v13, v11, &qword_27EF9EE70, &qword_24ACD8DA8);
      v15 = a1(v11);
      if (v3)
      {
        return sub_24AC212F4(v11, &qword_27EF9EE70, &qword_24ACD8DA8);
      }

      if (v15)
      {
        break;
      }

      sub_24AC212F4(v11, &qword_27EF9EE70, &qword_24ACD8DA8);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v20;
        goto LABEL_10;
      }
    }

    a3 = v20;
    sub_24ACCF804(v11, v20);
    v16 = 0;
LABEL_10:
    v9 = v18;
    v8 = v19;
  }

  else
  {
    v16 = 1;
  }

  return (*(v9 + 56))(a3, v16, 1, v8);
}

uint64_t sub_24ACC4738()
{
  _s15FindMyBluetooth30PairingManagerAccessControllerCMa_0();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = swift_weakInit();
  qword_27EF9EE28 = v0;
  return result;
}

uint64_t MockCentralManager.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24ACC4818@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_24ACC486C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

id sub_24ACC491C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  return sub_24AC56E10(v4, v5, v6);
}

void sub_24ACC497C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = (*a2 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v4;
  sub_24AC56E10(v2, v3, v4);
  sub_24AC56E90(v6, v7, v8);
}

id sub_24ACC4A14@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  return sub_24AC56E10(v4, v5, v6);
}

__n128 sub_24ACC4A70(__int128 *a1)
{
  v8 = *a1;
  v2 = *(a1 + 2);
  v3 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *v3 = v8;
  v3[2] = v2;
  sub_24AC56E90(v4, v5, v6);
  return result;
}

uint64_t static MockCentralManager.pairingCentralManager.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC1E290;

  return sub_24ACCE14C();
}

uint64_t MockCentralManager.__allocating_init(options:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
  *(v1 + 25) = 5;
  type metadata accessor for MockCentralManager(0);
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v1;
  v3[1] = sub_24AC81CE8;

  return MockCentralManager.init(options:initialState:)(v3, (v1 + 25));
}

uint64_t MockCentralManager.__allocating_init(options:initialState:)(uint64_t a1, _BYTE *a2)
{
  swift_allocObject();
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC1DF38;

  return MockCentralManager.init(options:initialState:)(v4, a2);
}

uint64_t MockCentralManager.init(options:initialState:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = v2;
  sub_24ACD0420();
  *(v3 + 24) = swift_task_alloc();
  *(v3 + 32) = *a2;

  return MEMORY[0x2822009F8](sub_24ACC4DF0, 0, 0);
}

uint64_t sub_24ACC4DF0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 152) = 1;
  v3 = MEMORY[0x277D84F98];
  *(v2 + 160) = MEMORY[0x277D84F98];
  *(v2 + 168) = v3;
  *(v2 + 176) = v3;
  *(v2 + 184) = v3;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStream;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E578, qword_24ACD8D30);
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStreamContinuation;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
  (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
  sub_24ACD0410();
  type metadata accessor for CentralManager(0);
  sub_24ACD0000();
  v8 = (v2 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior);
  *v8 = 10000000000000000;
  v8[1] = 0;
  v8[2] = 0;
  *(v2 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_isPairingCentralManager) = 0;
  *(v2 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state) = v1;

  v9 = *(v0 + 8);
  v10 = *(v0 + 16);

  return v9(v10);
}

uint64_t sub_24ACC4F98(char a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 16) = v3;
  *(v4 + 32) = a1;
  sub_24ACD0420();
  *(v4 + 24) = swift_task_alloc();
  *(v4 + 33) = *a3;

  return MEMORY[0x2822009F8](sub_24ACC5038, 0, 0);
}

uint64_t sub_24ACC5038()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 152) = 1;
  v4 = MEMORY[0x277D84F98];
  *(v2 + 160) = MEMORY[0x277D84F98];
  *(v2 + 168) = v4;
  *(v2 + 176) = v4;
  *(v2 + 184) = v4;
  v5 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStream;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E578, qword_24ACD8D30);
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStreamContinuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  sub_24ACD0410();
  type metadata accessor for CentralManager(0);
  sub_24ACD0000();
  v9 = (v2 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior);
  *v9 = 10000000000000000;
  v9[1] = 0;
  v9[2] = 0;
  *(v2 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_isPairingCentralManager) = v3;
  *(v2 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state) = v1;

  v10 = *(v0 + 8);
  v11 = *(v0 + 16);

  return v10(v11);
}

uint64_t sub_24ACC5208(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E568, &qword_24ACD8D60);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC52D4, v1, 0);
}

uint64_t sub_24ACC52D4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  swift_allocObject();
  swift_weakInit();
  (*(v2 + 104))(v1, *MEMORY[0x277D85778], v3);
  sub_24ACD0820();

  v4 = v0[1];

  return v4();
}

uint64_t sub_24ACC53D0(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  v3 = *(v2 - 8);
  v35 = v2;
  v36 = v3;
  v37 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v28 - v6;
  v7 = sub_24ACD0420();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v38 = &v28 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  sub_24ACD0410();
  v15 = *(v8 + 16);
  v29 = v7;
  v30 = v15;
  v15(v11, v13, v7);
  v16 = *(v8 + 80);
  v33 = v8;
  v31 = v16 | 7;
  v17 = swift_allocObject();
  *(v17 + 16) = Strong;
  v32 = *(v8 + 32);
  v32(v17 + ((v16 + 24) & ~v16), v11, v7);

  v18 = v34;
  v19 = v35;
  sub_24ACD07E0();
  v20 = sub_24ACD07C0();
  (*(*(v20 - 8) + 56))(v39, 1, 1, v20);
  v21 = v36;
  (*(v36 + 16))(v40, v18, v19);
  v22 = v29;
  v30(v11, v38, v29);
  v23 = v21;
  v24 = (*(v21 + 80) + 40) & ~*(v21 + 80);
  v25 = (v37 + v16 + v24) & ~v16;
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 4) = Strong;
  (*(v23 + 32))(&v26[v24], v40, v19);
  v32(&v26[v25], v11, v22);

  sub_24AC7ED6C(0, 0, v39, &unk_24ACD9138, v26);

  return (*(v33 + 8))(v38, v22);
}

uint64_t sub_24ACC57B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24ACD0420();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_24ACD07C0();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_24AC7ED6C(0, 0, v10, &unk_24ACD9150, v13);
}

uint64_t sub_24ACC5994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6E8, &qword_24ACD9140);
  v5[8] = swift_task_alloc();
  v6 = sub_24ACD0420();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC5A90, 0, 0);
}

uint64_t sub_24ACC5A90()
{
  v1 = *(v0 + 48);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24ACC5B44, v1, 0);
  }

  else
  {
    **(v0 + 40) = 1;

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24ACC5B44()
{
  v1 = v0[11];
  v2 = v0[8];
  (*(v0[10] + 16))(v1, v0[7], v0[9]);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  swift_beginAccess();
  sub_24AC7F70C(v2, v1);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24ACC5C44, 0, 0);
}

uint64_t sub_24ACC5C44()
{
  **(v0 + 40) = *(v0 + 48) == 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACC5CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6E8, &qword_24ACD9140);
  v6[9] = swift_task_alloc();
  v7 = sub_24ACD0420();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC5DBC, 0, 0);
}

uint64_t sub_24ACC5DBC()
{
  v1 = *(v0 + 48);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24ACC5E70, v1, 0);
  }

  else
  {
    **(v0 + 40) = 1;

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24ACC5E70()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[7];
  (*(v0[11] + 16))(v1, v0[8], v0[10]);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v3, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  swift_beginAccess();
  sub_24AC7F70C(v2, v1);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24ACC5FB0, 0, 0);
}

uint64_t sub_24ACC5FB0()
{
  **(v0 + 40) = *(v0 + 48) == 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACC602C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a1;
  v5[6] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE40, &qword_24ACD8D70);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC60FC, v4, 0);
}

uint64_t sub_24ACC60FC()
{
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  swift_beginAccess();
  if (*(v1 + v2) < 5u)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24ACCF6A4(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    *v3 = *(v1 + v2);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v5 = v0[1];
    goto LABEL_7;
  }

  v4 = v0[8];
  if (*(v4 + 128))
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24ACCF6A4(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    goto LABEL_5;
  }

  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  v10 = v0[6];
  v9 = v0[7];
  *(v4 + 128) = 1;
  *(v4 + 136) = v10;
  *(v4 + 144) = v9;
  *(v4 + 152) = 0;
  v11 = swift_task_alloc();
  v11[2] = v4;
  v11[3] = v10;
  v11[4] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE48, &qword_24ACD8D78);
  (*(v7 + 104))(v6, *MEMORY[0x277D858A0], v8);
  sub_24ACD08D0();

  v5 = v0[1];
LABEL_7:

  return v5();
}

uint64_t sub_24ACC6354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EEA8, &qword_24ACD90F8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - v13;
  v15 = sub_24ACD07C0();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v8 + 16))(v11, a1, v7);
  v16 = sub_24ACCF6A4(&qword_27EF9E508, type metadata accessor for MockCentralManager, ")-V70[");
  v17 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = v16;
  *(v19 + 4) = a2;
  (*(v8 + 32))(&v19[v17], v11, v7);
  v20 = &v19[v18];
  v21 = v24;
  *v20 = a3;
  *(v20 + 1) = v21;
  swift_retain_n();
  sub_24AC7F080(0, 0, v14, &unk_24ACD9108, v19);
}

uint64_t sub_24ACC65A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EEA8, &qword_24ACD90F8);
  v7[25] = v9;
  v10 = *(v9 - 8);
  v7[26] = v10;
  v7[27] = *(v10 + 64);
  v7[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EEB0, &qword_24ACD9110);
  v7[31] = v11;
  v7[32] = *(v11 - 8);
  v7[33] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v7[34] = v12;
  v13 = *(v12 - 8);
  v7[35] = v13;
  v7[36] = *(v13 + 64);
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE58, &qword_24ACD8D90);
  v7[40] = v14;
  v7[41] = *(v14 - 8);
  v7[42] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EEB8, &qword_24ACD9118);
  v7[43] = v15;
  v7[44] = *(v15 - 8);
  v7[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC6888, a4, 0);
}

void sub_24ACC6888()
{
  v1 = v0[21];
  v2 = *(v1 + 112);
  v0[46] = v2;
  if (v2)
  {
    v0[47] = *(v1 + 120);

    v5 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[48] = v3;
    *v3 = v0;
    v3[1] = sub_24ACC69A0;
    v4 = v0[42];

    v5(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24ACC69A0()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *(*v1 + 368);
  *(*v1 + 392) = v0;

  sub_24AC1BFC8(v4, v3);
  v5 = *(v2 + 168);
  if (v0)
  {
    v6 = sub_24ACC757C;
  }

  else
  {
    v6 = sub_24ACC6B08;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24ACC6B08()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  sub_24ACD0800();
  (*(v2 + 8))(v1, v3);
  v0[50] = sub_24ACCF6A4(&qword_27EF9E508, type metadata accessor for MockCentralManager, ")-V70[");
  swift_beginAccess();
  v4 = v0[50];
  v5 = v0[21];
  v6 = swift_task_alloc();
  v0[51] = v6;
  *v6 = v0;
  v6[1] = sub_24ACC6C40;
  v7 = v0[43];

  return MEMORY[0x2822005A8](v0 + 17, v5, v4, v7, v0 + 18);
}

uint64_t sub_24ACC6C40()
{
  v2 = *v1;

  v3 = *(v2 + 168);
  if (v0)
  {
    v4 = sub_24ACC7658;
  }

  else
  {
    v4 = sub_24ACC6D54;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24ACC6D54()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v68 = *(v0 + 400);
    v2 = *(v0 + 312);
    v72 = *(v0 + 304);
    v65 = *(v0 + 288);
    v3 = *(v0 + 272);
    v59 = *(v0 + 264);
    v61 = *(v0 + 256);
    v70 = *(v0 + 248);
    v73 = *(v0 + 240);
    v69 = *(v0 + 232);
    v64 = *(v0 + 224);
    v63 = *(v0 + 208);
    v56 = *(v0 + 200);
    v66 = *(v0 + 184);
    v67 = *(v0 + 192);
    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    v57 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id;
    v58 = *(v0 + 280);
    v6 = *(v58 + 16);
    v6(v2, v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id, v3);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = *(v5 + 168);
    v55 = v2;
    sub_24AC639D0(v1, v2, isUniquelyReferenced_nonNull_native);
    v54 = *(v58 + 8);
    v54(v2, v3);
    *(v5 + 168) = v74;
    swift_endAccess();
    *(v0 + 120) = v1;
    *(v0 + 128) = 0;

    sub_24ACD0890();
    (*(v61 + 8))(v59, v70);
    v6(v72, v1 + v57, v3);
    v60 = sub_24ACD07C0();
    v62 = *(v60 - 8);
    (*(v62 + 56))(v73, 1, 1, v60);
    v71 = v6;
    v6(v2, v72, v3);
    (*(v63 + 16))(v64, v4, v56);
    v8 = (*(v58 + 80) + 56) & ~*(v58 + 80);
    v9 = (v65 + *(v63 + 80) + v8) & ~*(v63 + 80);
    v10 = swift_allocObject();
    *(v10 + 2) = v5;
    *(v10 + 3) = v68;
    *(v10 + 4) = v66;
    *(v10 + 5) = v67;
    *(v10 + 6) = v5;
    (*(v58 + 32))(&v10[v8], v55, v3);
    (*(v63 + 32))(&v10[v9], v64, v56);
    sub_24AC2B5DC(v73, v69, &qword_27EF9DF00, &qword_24ACD3BC8);
    LODWORD(v3) = (*(v62 + 48))(v69, 1);
    swift_retain_n();

    v11 = *(v0 + 232);
    if (v3 == 1)
    {
      sub_24AC212F4(*(v0 + 232), &qword_27EF9DF00, &qword_24ACD3BC8);
    }

    else
    {
      sub_24ACD07B0();
      (*(v62 + 8))(v11, v60);
    }

    v15 = *(v10 + 2);
    swift_unknownObjectRetain();

    if (v15)
    {
      swift_getObjectType();
      v16 = sub_24ACD0740();
      v18 = v17;
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    sub_24AC212F4(*(v0 + 240), &qword_27EF9DF00, &qword_24ACD3BC8);
    if (v18 | v16)
    {
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v16;
      *(v0 + 40) = v18;
    }

    v19 = *(v0 + 168);
    v20 = swift_task_create();
    if (*(*(v19 + 160) + 16))
    {
      v21 = *(v0 + 304);

      sub_24AC2AC60(v21);
      if (v22)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC00, &qword_24ACD4690);
        sub_24ACD0830();
      }

      else
      {
      }
    }

    v23 = *(v0 + 296);
    v24 = *(v0 + 168);
    v71(v23, *(v0 + 304), *(v0 + 272));
    swift_beginAccess();

    v25 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v24 + 160);
    *(v0 + 160) = v26;
    *(v24 + 160) = 0x8000000000000000;
    v27 = sub_24AC2AC60(v23);
    v29 = *(v26 + 16);
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v23) = v28;
      if (*(v26 + 24) < v32)
      {
        v33 = *(v0 + 296);
        sub_24AC5DCB4(v32, v25);
        v27 = sub_24AC2AC60(v33);
        if ((v23 & 1) != (v34 & 1))
        {

          return sub_24ACD0C80();
        }

LABEL_24:
        v35 = *(v0 + 160);
        if (v23)
        {
LABEL_25:
          *(v35[7] + 8 * v27) = v20;

          goto LABEL_30;
        }

LABEL_28:
        v37 = *(v0 + 296);
        v38 = *(v0 + 272);
        v39 = *(v0 + 280);
        v35[(v27 >> 6) + 8] |= 1 << v27;
        v40 = v27;
        v41 = (v71)(v35[6] + *(v39 + 72) * v27, v37, v38);
        *(v35[7] + 8 * v40) = v20;
        v46 = v35[2];
        v31 = __OFADD__(v46, 1);
        v47 = v46 + 1;
        if (v31)
        {
          __break(1u);
          return MEMORY[0x2822005A8](v41, v42, v43, v44, v45);
        }

        v35[2] = v47;
LABEL_30:
        v48 = *(v0 + 304);
        v49 = *(v0 + 272);
        v50 = *(v0 + 168);
        v54(*(v0 + 296), v49);
        *(v50 + 160) = v35;
        swift_endAccess();

        v54(v48, v49);
        v51 = *(v0 + 400);
        v52 = *(v0 + 168);
        v53 = swift_task_alloc();
        *(v0 + 408) = v53;
        *v53 = v0;
        v53[1] = sub_24ACC6C40;
        v44 = *(v0 + 344);
        v45 = v0 + 144;
        v41 = v0 + 136;
        v42 = v52;
        v43 = v51;

        return MEMORY[0x2822005A8](v41, v42, v43, v44, v45);
      }

      if (v25)
      {
        goto LABEL_24;
      }
    }

    v36 = v27;
    sub_24AC5F4C8();
    v27 = v36;
    v35 = *(v0 + 160);
    if (v23)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v12 = *(v0 + 168);
  (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
  *(v0 + 152) = 0;
  sub_24ACD08A0();
  *(v12 + 128) = 0;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_24ACC757C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACC7658()
{
  (*(v0[44] + 8))(v0[45], v0[43]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24ACC774C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EEB0, &qword_24ACD9110);
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v8[18] = v11;
  v8[19] = *(v11 - 8);
  v8[20] = swift_task_alloc();
  v12 = sub_24ACD0AF0();
  v8[21] = v12;
  v8[22] = *(v12 - 8);
  v8[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC78E8, a6, 0);
}

uint64_t sub_24ACC78E8(uint64_t a1)
{
  sub_24ACD0CB0();
  v2 = swift_task_alloc();
  v1[24] = v2;
  *v2 = v1;
  v2[1] = sub_24ACC79A8;
  v4 = v1[10];
  v3 = v1[11];

  return sub_24AC59658(v4, v3, 0, 0, 1);
}

uint64_t sub_24ACC79A8()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  v5 = *(*v1 + 168);
  *(*v1 + 200) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_24ACC7D10;
  }

  else
  {
    v7 = sub_24ACC7B30;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24ACC7B30(uint64_t a1)
{
  v2 = *(v1 + 200);
  sub_24ACD0850();
  if (!v2)
  {
    v3 = *(v1 + 96);
    swift_beginAccess();
    v4 = *(v3 + 168);
    if (*(v4 + 16))
    {
      v5 = *(v1 + 104);

      v6 = sub_24AC2AC60(v5);
      if (v7)
      {
        v9 = *(v1 + 152);
        v8 = *(v1 + 160);
        v10 = *(v1 + 136);
        v11 = *(v1 + 144);
        v12 = *(v1 + 128);
        v13 = *(v1 + 104);
        v17 = *(v1 + 120);
        v14 = *(*(v4 + 56) + 8 * v6);

        (*(v9 + 16))(v8, v13, v11);
        swift_beginAccess();
        sub_24AC7F4EC(0, v8);
        swift_endAccess();
        *(v1 + 64) = v14;
        *(v1 + 72) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EEA8, &qword_24ACD90F8);
        sub_24ACD0890();
        (*(v12 + 8))(v10, v17);
      }

      else
      {
      }
    }
  }

  v15 = *(v1 + 8);

  return v15();
}

uint64_t sub_24ACC7D10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACC7D94(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 112);
  v4 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;

  return sub_24AC1BFC8(v3, v4);
}

uint64_t sub_24ACC7DE0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE50, &qword_24ACD8D88);
  v2[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE58, &qword_24ACD8D90);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC7EE4, v1, 0);
}

uint64_t sub_24ACC7EE4()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  result = swift_beginAccess();
  if (*(v1 + v2) >= 5u)
  {
    v6 = v0[7];
    v7 = *(v6 + 112);
    v0[12] = v7;
    v0[13] = *(v6 + 120);
    if (v7)
    {

      v10 = (v7 + *v7);
      v8 = swift_task_alloc();
      v0[14] = v8;
      *v8 = v0;
      v8[1] = sub_24ACC80F8;
      v9 = v0[11];

      return v10(v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24ACCF6A4(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    *v4 = *(v1 + v2);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  return result;
}

uint64_t sub_24ACC80F8()
{
  v2 = *v1;
  v3 = *v1;
  v2[15] = v0;

  v4 = v2[13];
  v5 = v2[12];
  if (v0)
  {
    v6 = v2[7];
    sub_24AC1BFC8(v5, v4);

    return MEMORY[0x2822009F8](sub_24ACC8800, v6, 0);
  }

  else
  {
    sub_24AC1BFC8(v5, v4);
    v7 = swift_task_alloc();
    v2[16] = v7;
    v8 = sub_24AC2B6A8(&qword_27EF9EE60, &qword_27EF9EE58, &qword_24ACD8D90, MEMORY[0x277D858E0]);
    *v7 = v3;
    v7[1] = sub_24ACC82E0;
    v9 = v2[9];

    return MEMORY[0x28215ED78](v9, v8);
  }
}