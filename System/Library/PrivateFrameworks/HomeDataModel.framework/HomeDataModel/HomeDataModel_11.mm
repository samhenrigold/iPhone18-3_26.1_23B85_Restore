uint64_t sub_1D17CB228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1D1E67E1C();
  v6[5] = sub_1D1E67E0C();
  v8 = sub_1D1E67D4C();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D17CB2C4, v8, v7);
}

uint64_t sub_1D17CB2C4()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v0[8] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D17CB374, v2, 0);
}

uint64_t sub_1D17CB374()
{
  sub_1D1E3945C(&unk_1D1E74520, v0[8]);

  v1 = v0[6];
  v2 = v0[7];

  return MEMORY[0x1EEE6DFA0](sub_1D17CB3FC, v1, v2);
}

uint64_t sub_1D17CB3FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D17CB45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D17CB480, 0, 0);
}

uint64_t sub_1D17CB480()
{
  v10 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (!Strong)
  {
LABEL_6:
    v4 = *(v0 + 8);

    return v4();
  }

  if (sub_1D1E67F7C())
  {
LABEL_5:

    goto LABEL_6;
  }

  v2 = sub_1D17D8FA4(&v8, *(v0 + 64));
  *(v0 + 96) = v2;
  *(v0 + 104) = v8;
  v3 = v9;
  *(v0 + 57) = v9;
  if (sub_1D1E67F7C())
  {

    goto LABEL_5;
  }

  if (*(v2 + 2))
  {
    v6 = swift_task_alloc();
    *(v0 + 120) = v6;
    *v6 = v0;
    v6[1] = sub_1D17CB644;

    return sub_1D17CBA9C(v2, v3 == 255);
  }

  else
  {

    if (sub_1D1E67F7C())
    {
      goto LABEL_5;
    }

    if (*(v0 + 57) == 255)
    {
      sub_1D1E67F7C();
      goto LABEL_5;
    }

    v7 = *(v0 + 88);

    return MEMORY[0x1EEE6DFA0](sub_1D17CB818, v7, 0);
  }
}

uint64_t sub_1D17CB644()
{

  return MEMORY[0x1EEE6DFA0](sub_1D17CB75C, 0, 0);
}

uint64_t sub_1D17CB75C(uint64_t a1)
{
  if ((sub_1D1E67F7C() & 1) == 0)
  {
    if (*(v1 + 57) != 255)
    {
      v2 = *(v1 + 88);

      return MEMORY[0x1EEE6DFA0](sub_1D17CB818, v2, 0);
    }

    sub_1D1E67F7C();
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D17CB848(uint64_t a1)
{
  if (*(v1 + 58))
  {
    sub_1D1E67F7C();

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = *(v1 + 57);
    *(v1 + 40) = *(v1 + 104);
    *(v1 + 56) = v4;
    v5 = swift_task_alloc();
    *(v1 + 128) = v5;
    *v5 = v1;
    v5[1] = sub_1D17CB938;

    return sub_1D17CD084(v1 + 40);
  }
}

uint64_t sub_1D17CB938()
{

  return MEMORY[0x1EEE6DFA0](sub_1D17CBA34, 0, 0);
}

uint64_t sub_1D17CBA34(uint64_t a1)
{
  sub_1D1E67F7C();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1D17CBA9C(uint64_t a1, char a2)
{
  *(v3 + 107) = a2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D17CBAC0, v2, 0);
}

uint64_t sub_1D17CBAC0()
{
  v101 = v0;
  v1 = *(*(v0 + 216) + 120);
  sub_1D17D917C((v0 + 105));
  v2 = [v1 streamControl];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 streamState];

    if (v4 >= 4)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }

    v88 = v5;
  }

  else
  {
    v88 = 0;
  }

  v6 = *(v0 + 208);
  v7 = [v1 streamControl];
  v8 = [v7 cameraStream];

  v82 = v1;
  v9 = [v1 snapshotControl];
  v10 = [v9 mostRecentSnapshot];

  v14 = *(v6 + 16);
  if (!v14)
  {
    v15 = 0;
    v86 = 0;
    v17 = 0;
    if (*(*(v0 + 216) + OBJC_IVAR____TtC13HomeDataModel16CameraController_lastStreamAttemptResultedInBusyError))
    {
LABEL_56:
      v17 = 0;
      *(v0 + 105) = 2;
    }

    goto LABEL_60;
  }

  v84 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v89 = *(v0 + 107);
  v85 = *(v0 + 208) + 56;
  v86 = 0;
  v94 = v0;
  v93 = *(v6 + 16);
  while (2)
  {
    v83 = v15;
    LOBYTE(v18) = v88;
    v19 = v10;
LABEL_10:
    v88 = v18;
    v87 = v8;
    v20 = v16;
    v18 = v19;
    v21 = (v85 + 32 * v16);
    while (1)
    {
      if (v20 >= v14)
      {
        __break(1u);
LABEL_64:
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v11, v12, v13);
      }

      if (__OFADD__(v20, 1))
      {
        goto LABEL_64;
      }

      v96 = v18;
      v97 = v20 + 1;
      v98 = v17;
      v18 = *(v21 - 3);
      v8 = *(v21 - 2);
      v22 = *v21;
      v95 = *(v21 - 1);
      sub_1D17D8D68(v18, v8, v95, *v21);
      if (qword_1EC642458 != -1)
      {
        swift_once();
      }

      v23 = sub_1D1E6709C();
      __swift_project_value_buffer(v23, qword_1EC64F3F8);

      v24 = sub_1D1E6707C();
      v25 = sub_1D1E6835C();

      if (os_log_type_enabled(v24, v25))
      {
        v91 = v18;
        v90 = v22;
        v26 = *(v0 + 208);
        v27 = *(v0 + 216);
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v92 = v8;
        v30 = swift_slowAlloc();
        v100[0] = v30;
        *v28 = 138413058;
        *(v28 + 4) = v27;
        *v29 = v27;
        *(v28 + 12) = 2080;

        *(v28 + 14) = sub_1D1B1312C(0xD00000000000001BLL, 0x80000001D1EB97E0, v100);
        *(v28 + 22) = 2080;
        v31 = MEMORY[0x1D3891260](v26, &_s7ContentON);
        v33 = sub_1D1B1312C(v31, v32, v100);
        v22 = v90;

        *(v28 + 24) = v33;
        v18 = v91;
        *(v28 + 32) = 1024;
        *(v28 + 34) = v89;
        _os_log_impl(&dword_1D16EC000, v24, v25, "%@ %s content: %s, processModeAgain: %{BOOL}d", v28, 0x26u);
        sub_1D1741A30(v29, &unk_1EC644000, &unk_1D1E75B00);
        MEMORY[0x1D3893640](v29, -1, -1);
        swift_arrayDestroy();
        v34 = v30;
        v8 = v92;
        v0 = v94;
        MEMORY[0x1D3893640](v34, -1, -1);
        MEMORY[0x1D3893640](v28, -1, -1);
      }

      v17 = v98;
      if (v22 != 1)
      {
        break;
      }

      if (v8)
      {
        swift_getErrorValue();
        v35 = *(v0 + 72);
        v36 = v8;
        v37 = v8;
        v38 = v18;
        v39 = sub_1D17CE2E0(v35);

        if (v98)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v49 = v18;
        v39 = 0;
        if (v98)
        {
LABEL_22:
          swift_getErrorValue();
          v99 = v39;
          v41 = *(v0 + 16);
          v40 = *(v0 + 24);
          v42 = v8;
          v43 = *(v40 - 8);
          v44 = v17;
          v45 = v18;
          v46 = swift_task_alloc();
          (*(v43 + 16))(v46, v41, v40);
          v47 = sub_1D17CE2E0(v40);
          v48 = v45;
          sub_1D17D8DC4(v45, v42, v95, 1);

          (*(v43 + 8))(v46, v40);

          if (v99 & 1) != 0 || (v47)
          {

            v17 = v42;
            v0 = v94;
            v18 = v48;
          }

          else
          {

            v0 = v94;
            v18 = v45;
            v17 = v44;
          }

          goto LABEL_12;
        }
      }

      sub_1D17D8DC4(v18, v8, v95, 1);
      v17 = v8;
LABEL_12:
      ++v20;
      v21 += 32;
      v14 = v93;
      if (v97 == v93)
      {
        v8 = v87;
        v10 = v18;
        v15 = v83;
        goto LABEL_42;
      }
    }

    if (v22)
    {

      v52 = [v82 accessory];
      if (v52)
      {
        v53 = v52;
        v54 = [v52 name];

        v15 = sub_1D1E6781C();
        v86 = v55;
      }

      else
      {
        v15 = 0;
        v86 = 0;
      }

      sub_1D17D917C((v0 + 105));
      v56 = [v82 streamControl];
      if (v56)
      {
        v57 = v56;
        v58 = [v56 streamState];

        if (v58 >= 4)
        {
          v59 = 0;
        }

        else
        {
          v59 = v58;
        }

        v88 = v59;
      }

      else
      {
        v88 = 0;
      }

      v60 = [v82 streamControl];
      v8 = [v60 cameraStream];

      v61 = [v82 snapshotControl];
      v10 = [v61 mostRecentSnapshot];

      v84 = 1;
      v14 = v93;
      v16 = v97;
      if (v97 != v93)
      {
        continue;
      }

LABEL_42:
      if (!v17)
      {
        goto LABEL_54;
      }

LABEL_43:
      *(v0 + 152) = v17;
      v62 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
      type metadata accessor for HMError(0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_50;
      }

      v63 = *(v0 + 160);
      *(v0 + 168) = v63;
      sub_1D17D8E60(&qword_1EC6428A0, type metadata accessor for HMError, &unk_1D1E6E3FC);
      sub_1D1E6651C();
      if (*(v0 + 176) == 4)
      {
        v64 = *(v0 + 216);

        *(v0 + 105) = 1;
        *(v64 + OBJC_IVAR____TtC13HomeDataModel16CameraController_lastStreamAttemptResultedInBusyError) = 0;

        goto LABEL_60;
      }

      *(v0 + 184) = v63;
      sub_1D1E6651C();

      if (*(v0 + 192) == 14)
      {
        v65 = *(v0 + 216);
        *(v0 + 105) = 2;
        *(v65 + OBJC_IVAR____TtC13HomeDataModel16CameraController_lastStreamAttemptResultedInBusyError) = 1;
      }

      else
      {
LABEL_50:
        v66 = *(v0 + 216);

        *(v66 + OBJC_IVAR____TtC13HomeDataModel16CameraController_lastStreamAttemptResultedInBusyError) = 0;
        v67 = v17;

        v68 = v17;
        v69 = sub_1D1E6707C();
        v70 = sub_1D1E6833C();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = *(v0 + 216);
          v72 = v15;
          v73 = swift_slowAlloc();
          v74 = v8;
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v100[0] = v76;
          *v73 = 138412802;
          *(v73 + 4) = v71;
          *v75 = v71;
          *(v73 + 12) = 2080;

          *(v73 + 14) = sub_1D1B1312C(0xD00000000000001BLL, 0x80000001D1EB97E0, v100);
          *(v73 + 22) = 2112;
          v77 = _swift_stdlib_bridgeErrorToNSError();
          *(v73 + 24) = v77;
          v75[1] = v77;
          _os_log_impl(&dword_1D16EC000, v69, v70, "%@ %s unhandled error: %@", v73, 0x20u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
          swift_arrayDestroy();
          v78 = v75;
          v8 = v74;
          v0 = v94;
          MEMORY[0x1D3893640](v78, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v76);
          MEMORY[0x1D3893640](v76, -1, -1);
          v79 = v73;
          v15 = v72;
          MEMORY[0x1D3893640](v79, -1, -1);
        }

        else
        {
        }
      }

      goto LABEL_60;
    }

    break;
  }

  v50 = v8;
  v17 = v95;
  v51 = v95;
  sub_1D17D8DC4(v18, v8, v95, 0);
  v84 = 1;
  v14 = v93;
  v19 = v96;
  v16 = v20 + 1;
  if (v97 != v93)
  {
    goto LABEL_10;
  }

  v88 = v18;
  v10 = v96;
  v15 = v83;
  if (v95)
  {
    goto LABEL_43;
  }

LABEL_54:
  v80 = *(v0 + 216);
  if (*(v80 + OBJC_IVAR____TtC13HomeDataModel16CameraController_lastStreamAttemptResultedInBusyError))
  {
    if ((v84 & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_58;
  }

  if (v84)
  {
LABEL_58:
    v17 = 0;
    *(v80 + OBJC_IVAR____TtC13HomeDataModel16CameraController_lastStreamAttemptResultedInBusyError) = 0;
    goto LABEL_60;
  }

  v17 = 0;
LABEL_60:
  *(v0 + 248) = v10;
  *(v0 + 256) = v17;
  *(v0 + 108) = v88;
  *(v0 + 232) = v15;
  *(v0 + 240) = v86;
  *(v0 + 224) = v8;
  *(v0 + 109) = *(v0 + 105);
  v11 = sub_1D17CC594;
  v12 = 0;
  v13 = 0;

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D17CC594()
{
  sub_1D1E67E1C();
  *(v0 + 264) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17CC628, v2, v1);
}

uint64_t sub_1D17CC628()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);

  v3 = *(v2 + 112);
  if (v1)
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
  }

  else
  {
    swift_getKeyPath();
    *(v0 + 120) = v3;
    sub_1D17D8E60(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
    sub_1D1E66CAC();

    v5 = *(v3 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name);
    v4 = *(v3 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name + 8);
  }

  v6 = *(v0 + 109);
  sub_1D17DCDF4(v5, v4);
  v7 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability;
  v8 = sub_1D17A0574(*(v3 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability), v6);
  v9 = *(v0 + 109);
  if (v8)
  {
    *(v3 + v7) = v9;
  }

  else
  {
    swift_getKeyPath();
    v10 = swift_task_alloc();
    *(v10 + 16) = v3;
    *(v10 + 24) = v9;
    *(v0 + 128) = v3;
    sub_1D17D8E60(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
    sub_1D1E66C9C();
  }

  v11 = *(v0 + 108);
  if (*(v3 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__streamState) != v11)
  {
    swift_getKeyPath();
    v12 = swift_task_alloc();
    *(v12 + 16) = v3;
    *(v12 + 24) = v11;
    *(v0 + 136) = v3;
    sub_1D17D8E60(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
    sub_1D1E66C9C();
  }

  v13 = *(v0 + 248);
  v14 = *(v0 + 216);
  v15 = *(v0 + 224);
  v16 = v13;
  sub_1D17DD18C(v13);
  v17 = v15;
  sub_1D17DD324(v15);
  swift_getKeyPath();
  *(v0 + 144) = v3;
  sub_1D17D8E60(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
  sub_1D1E66CAC();

  v18 = v3 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__mode;
  swift_beginAccess();
  *(v0 + 272) = *v18;
  *(v0 + 280) = *(v18 + 8);
  *(v0 + 110) = *(v18 + 16);
  *(v0 + 288) = CameraController.State.description.getter();
  *(v0 + 296) = v19;

  return MEMORY[0x1EEE6DFA0](sub_1D17CC9BC, v14, 0);
}

uint64_t sub_1D17CC9BC()
{
  v23 = v0;
  if (*(v0 + 107) == 1)
  {
    v1 = *(v0 + 110);
    *(v0 + 88) = *(v0 + 272);
    *(v0 + 104) = v1;
    *(v0 + 106) = *(v0 + 105);
    v2 = swift_task_alloc();
    *(v0 + 304) = v2;
    *v2 = v0;
    v2[1] = sub_1D17CCCF0;
    v3 = *(v0 + 256);

    return sub_1D17CE420(v0 + 88, (v0 + 106), v3);
  }

  else
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v5 = sub_1D1E6709C();
    __swift_project_value_buffer(v5, qword_1EC64F3F8);

    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6835C();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 296);
    if (v8)
    {
      v18 = *(v0 + 288);
      v19 = *(v0 + 256);
      v10 = *(v0 + 216);
      v20 = *(v0 + 248);
      v21 = *(v0 + 224);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v11 = 138412802;
      *(v11 + 4) = v10;
      *v12 = v10;
      *(v11 + 12) = 2080;

      *(v11 + 14) = sub_1D1B1312C(0xD00000000000001BLL, 0x80000001D1EB97E0, &v22);
      *(v11 + 22) = 2080;
      v14 = sub_1D1B1312C(v18, v9, &v22);

      *(v11 + 24) = v14;
      _os_log_impl(&dword_1D16EC000, v6, v7, "%@ %s state: %s", v11, 0x20u);
      sub_1D1741A30(v12, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v12, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v13, -1, -1);
      MEMORY[0x1D3893640](v11, -1, -1);
    }

    else
    {
      v15 = *(v0 + 248);
      v16 = *(v0 + 224);
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1D17CCCF0()
{
  v1 = *(*v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1D17CCE00, v1, 0);
}

uint64_t sub_1D17CCE00()
{
  v20 = v0;
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EC64F3F8);

  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 296);
  if (v4)
  {
    v15 = *(v0 + 288);
    v16 = *(v0 + 256);
    v6 = *(v0 + 216);
    v17 = *(v0 + 248);
    v18 = *(v0 + 224);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v7 = 138412802;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2080;

    *(v7 + 14) = sub_1D1B1312C(0xD00000000000001BLL, 0x80000001D1EB97E0, &v19);
    *(v7 + 22) = 2080;
    v10 = sub_1D1B1312C(v15, v5, &v19);

    *(v7 + 24) = v10;
    _os_log_impl(&dword_1D16EC000, v2, v3, "%@ %s state: %s", v7, 0x20u);
    sub_1D1741A30(v8, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  else
  {
    v11 = *(v0 + 248);
    v12 = *(v0 + 224);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D17CD084(uint64_t a1)
{
  *(v2 + 32) = v1;
  *(v2 + 40) = *a1;
  *(v2 + 90) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1D17CD0B4, v1, 0);
}

uint64_t sub_1D17CD0B4()
{
  v29 = v0;
  v1 = [*(*(v0 + 32) + 120) streamControl];
  if (v1 && (v2 = v1, v3 = [v1 cameraStream], v2, v3))
  {

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  if (*(v0 + 90))
  {
    if (*(v0 + 90) == 2)
    {
      v26 = xmmword_1D1E74330;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v4 = 0;
      LOBYTE(v8) = 0;
      LOBYTE(v9) = 0;
      LOBYTE(v10) = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      LOBYTE(v8) = 0;
      LOBYTE(v9) = 0;
      LOBYTE(v10) = 0;
      v26 = *(v0 + 40);
      v4 = 1;
    }
  }

  else
  {
    v8 = *(v0 + 40);
    v9 = *(v0 + 48) & 1;
    v10 = (*(v0 + 48) >> 1) & 1;
    v26 = xmmword_1D1E74330;
    if (*(v0 + 40))
    {
      v5 = v8 != 1;
      v6 = 1;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v7 = 1;
  }

  *(v0 + 96) = v10;
  *(v0 + 95) = v9;
  *(v0 + 94) = v8;
  *(v0 + 93) = v7;
  *(v0 + 92) = v6;
  *(v0 + 91) = v5;
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC64F3F8);

  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6835C();

  if (os_log_type_enabled(v12, v13))
  {
    v25 = *(v0 + 90);
    v14 = *(v0 + 40);
    v24 = *(v0 + 48);
    v15 = *(v0 + 32);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27[0] = v18;
    *v16 = 138412802;
    *(v16 + 4) = v15;
    *v17 = v15;
    *(v16 + 12) = 2080;

    *(v16 + 14) = sub_1D1B1312C(0x5F28657461647075, 0xEA0000000000293ALL, v27);
    *(v16 + 22) = 2080;
    v27[1] = v14;
    v27[2] = v24;
    v28 = v25;
    v19 = CameraController.Mode.description.getter();
    v21 = sub_1D1B1312C(v19, v20, v27);

    *(v16 + 24) = v21;
    _os_log_impl(&dword_1D16EC000, v12, v13, "%@ %s mode: %s", v16, 0x20u);
    sub_1D1741A30(v17, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v18, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  *(v0 + 16) = v26;
  v22 = swift_task_alloc();
  *(v0 + 56) = v22;
  *v22 = v0;
  v22[1] = sub_1D17CD454;

  return sub_1D17CF6F4(v4, (v0 + 16));
}

uint64_t sub_1D17CD454()
{
  v1 = *v0;
  v2 = *(*v0 + 90);
  v3 = *(*v0 + 41);
  v4 = *v0;

  if (v2)
  {
    v5 = 5;
  }

  else
  {
    v5 = v3;
  }

  *(v1 + 88) = v5;
  v6 = (v1 + 88);
  v7 = swift_task_alloc();
  *(v6 - 3) = v7;
  *v7 = v4;
  v7[1] = sub_1D17CD5AC;
  v8 = v6[5];

  return sub_1D17CFF30(v8, v6);
}

uint64_t sub_1D17CD5AC()
{
  v1 = *v0;
  v2 = *(*v0 + 94);
  v8 = *v0;

  *(v1 + 89) = v2;
  v3 = (v1 + 89);
  v4 = swift_task_alloc();
  *(v3 - 17) = v4;
  *v4 = v8;
  v4[1] = sub_1D17CD6EC;
  v5 = v3[3];
  v6 = v3[2];

  return sub_1D17D0928(v3, v5, v6);
}

uint64_t sub_1D17CD6EC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 80) = v3;
  *v3 = v2;
  v3[1] = sub_1D17CD838;
  v4 = *(v1 + 96);
  v5 = *(v1 + 95);

  return sub_1D17D14B0(v5, v4);
}

uint64_t sub_1D17CD838()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D17CD94C()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManagerTask;
  if (*(v1 + OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManagerTask))
  {

    sub_1D1E67F5C();
  }

  v3 = *(v0 + 16);
  *(v1 + v2) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  sub_1D1E67EDC();
  if (*(v3 + OBJC_IVAR____TtC13HomeDataModel16CameraController_snapshotTimer))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    sub_1D1E67F5C();
  }

  v4 = *(*(v0 + 16) + 120);
  v5 = [v4 streamControl];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 streamState];

    if ((v7 - 1) <= 1)
    {
      v8 = [v4 streamControl];
      [v8 stopStream];
    }
  }

  v9 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManager);
  *(v0 + 24) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D17CDB0C, v9, 0);
}

uint64_t sub_1D17CDB0C()
{
  v1 = *(v0 + 16);
  sub_1D17CDB9C();

  return MEMORY[0x1EEE6DFA0](sub_1D17CDB74, v1, 0);
}

uint64_t sub_1D17CDB9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  sub_1D1E67EDC();
  sub_1D1E67EDC();
  v2 = *(*v0 + 144);
  swift_beginAccess();
  v8 = v2;
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    while (v6 < *(v3 + 16))
    {
      v7 = v6 + 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
      sub_1D1E67F5C();

      v6 = v7;
      if (v4 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    *(v1 + v8) = MEMORY[0x1E69E7CC0];

    *(v1 + *(*v1 + 160)) = 1;
  }

  return result;
}

uint64_t CameraController.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManagerTask;
  if (*(v1 + OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManagerTask))
  {

    sub_1D1E67F5C();
  }

  *(v1 + v9) = 0;

  v10 = *(v6 + 16);
  v21 = OBJC_IVAR____TtC13HomeDataModel16CameraController_updates;
  v10(v8, v1 + OBJC_IVAR____TtC13HomeDataModel16CameraController_updates, v5);
  sub_1D1E67EDC();
  v11 = *(v6 + 8);
  v11(v8, v5);
  if (*(v1 + OBJC_IVAR____TtC13HomeDataModel16CameraController_snapshotTimer))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    sub_1D1E67F5C();
  }

  if ((*(v1 + OBJC_IVAR____TtC13HomeDataModel16CameraController_wasReset) & 1) == 0)
  {
    v12 = [*(v1 + 120) streamControl];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 streamState];

      if ((v14 - 1) <= 1)
      {
        v15 = [*(v1 + 120) streamControl];
        [v15 stopStream];
      }
    }
  }

  v16 = sub_1D1E67E7C();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  v17 = *(v1 + OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManager);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;

  sub_1D17C6EF0(0, 0, v4, &unk_1D1E74368, v18);

  v11((v1 + v21), v5);

  sub_1D1741A30(v1 + OBJC_IVAR____TtC13HomeDataModel16CameraController_previousSnapshotCallTime, &qword_1EC642570, &qword_1D1E6C6A0);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1D17CE0E4()
{
  sub_1D17CDB9C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D17CE144(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D17CE0C4(a1, v4, v5, v6);
}

uint64_t CameraController.__deallocating_deinit()
{
  CameraController.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

void CameraController.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void CameraController.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1D17CE2E0(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HMError(0);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v5[1];
    sub_1D17D8E60(&qword_1EC6428A0, type metadata accessor for HMError, &unk_1D1E6E3FC);
    sub_1D1E6651C();

    return v5[0] == 4;
  }

  return result;
}

uint64_t sub_1D17CE420(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 80) = *a1;
  *(v4 + 33) = *(a1 + 16);
  *(v4 + 34) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D17CE458, v3, 0);
}

uint64_t sub_1D17CE458()
{
  v78 = v0;
  if (*(v0 + 34) > 2u)
  {
    goto LABEL_2;
  }

  if (*(v0 + 34))
  {
    if (*(v0 + 34) == 1)
    {
LABEL_2:
      if (qword_1EC642458 != -1)
      {
        swift_once();
      }

      v1 = sub_1D1E6709C();
      __swift_project_value_buffer(v1, qword_1EC64F3F8);

      v2 = sub_1D1E6707C();
      v3 = sub_1D1E6835C();

      if (os_log_type_enabled(v2, v3))
      {
        v4 = *(v0 + 34);
        v5 = *(v0 + 72);
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v76 = v8;
        *v6 = 138412802;
        *(v6 + 4) = v5;
        *v7 = v5;
        *(v6 + 12) = 2080;

        v9 = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EB9800, &v76);
        v10 = 0xEC000000656C6261;
        *(v6 + 14) = v9;
        v11 = 0x6863616552746F6ELL;
        *(v6 + 22) = 2080;
        v12 = 0xEE00797469766974;
        v13 = 0x6341746365746564;
        v14 = 0xE700000000000000;
        v15 = 0x646C6F436F6F74;
        if (v4 != 5)
        {
          v15 = 0x746F486F6F74;
          v14 = 0xE600000000000000;
        }

        if (v4 != 4)
        {
          v13 = v15;
          v12 = v14;
        }

        v16 = 0xE400000000000000;
        v17 = 2037609826;
        if (v4 != 2)
        {
          v17 = 0xD000000000000012;
          v16 = 0x80000001D1EB5AA0;
        }

        if (v4 != 1)
        {
          v11 = v17;
          v10 = v16;
        }

        if (v4 <= 3)
        {
          v18 = v11;
        }

        else
        {
          v18 = v13;
        }

        if (v4 <= 3)
        {
          v19 = v10;
        }

        else
        {
          v19 = v12;
        }

        v20 = sub_1D1B1312C(v18, v19, &v76);

        *(v6 + 24) = v20;
        _os_log_impl(&dword_1D16EC000, v2, v3, "%@ %s returning due to unavailability: %s", v6, 0x20u);
        sub_1D1741A30(v7, &unk_1EC644000, &unk_1D1E75B00);
        MEMORY[0x1D3893640](v7, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v8, -1, -1);
        MEMORY[0x1D3893640](v6, -1, -1);
      }

      goto LABEL_20;
    }

    if (!*(v0 + 33))
    {
      if (qword_1EC642458 != -1)
      {
        swift_once();
      }

      v44 = sub_1D1E6709C();
      __swift_project_value_buffer(v44, qword_1EC64F3F8);

      v45 = sub_1D1E6707C();
      v46 = sub_1D1E6835C();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = *(v0 + 88);
        v48 = *(v0 + 72);
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v75 = v74;
        *v49 = 138412802;
        *(v49 + 4) = v48;
        *v50 = v48;
        *(v49 + 12) = 2080;

        *(v49 + 14) = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EB9800, &v75);
        *(v49 + 22) = 2080;
        v51 = sub_1D18D4FC0(qword_1F4D5F418);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F58, &unk_1D1E74CE0);
        swift_arrayDestroy();
        v52 = sub_1D17DC554(v51, v47);

        *(v0 + 56) = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F60, &qword_1D1E746D0);
        sub_1D17D8EA8(&qword_1EC643F68, &qword_1EC643F60, &qword_1D1E746D0, MEMORY[0x1E69E5DE8]);
        sub_1D17D8EF0();
        v53 = sub_1D1E67B0C();
        v55 = v54;

        v76 = 91;
        v77 = 0xE100000000000000;
        MEMORY[0x1D3890F70](v53, v55);

        MEMORY[0x1D3890F70](93, 0xE100000000000000);
        v56 = sub_1D1B1312C(v76, v77, &v75);

        *(v49 + 24) = v56;
        _os_log_impl(&dword_1D16EC000, v45, v46, "%@ %s returning due to busy availability, options: %s", v49, 0x20u);
        sub_1D1741A30(v50, &unk_1EC644000, &unk_1D1E75B00);
        MEMORY[0x1D3893640](v50, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v74, -1, -1);
        MEMORY[0x1D3893640](v49, -1, -1);
      }

      v21 = (*(v0 + 88) >> 2) & 1;
      v22 = 3000000000000000000;
      goto LABEL_22;
    }
  }

  if (sub_1D17D1CD4())
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v25 = sub_1D1E6709C();
    __swift_project_value_buffer(v25, qword_1EC64F3F8);

    v26 = sub_1D1E6707C();
    v27 = sub_1D1E6835C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 72);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v76 = v31;
      *v29 = 138412546;
      *(v29 + 4) = v28;
      *v30 = v28;
      *(v29 + 12) = 2080;

      *(v29 + 14) = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EB9800, &v76);
      _os_log_impl(&dword_1D16EC000, v26, v27, "%@ %s returning due to in progress stream update", v29, 0x16u);
      sub_1D1741A30(v30, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1D3893640](v31, -1, -1);
      MEMORY[0x1D3893640](v29, -1, -1);
    }

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    v33 = *(v0 + 64);
    if (v33)
    {
      v34 = v33;
      if (qword_1EC642458 != -1)
      {
        swift_once();
      }

      v35 = sub_1D1E6709C();
      __swift_project_value_buffer(v35, qword_1EC64F3F8);

      v36 = v33;
      v2 = sub_1D1E6707C();
      v37 = sub_1D1E6835C();

      if (!os_log_type_enabled(v2, v37))
      {

        goto LABEL_21;
      }

      v38 = *(v0 + 72);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v76 = v41;
      *v39 = 138412802;
      *(v39 + 4) = v38;
      *v40 = v38;
      *(v39 + 12) = 2080;

      *(v39 + 14) = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EB9800, &v76);
      *(v39 + 22) = 2112;
      v42 = v33;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 24) = v43;
      v40[1] = v43;
      _os_log_impl(&dword_1D16EC000, v2, v37, "%@ %s returning due to error %@", v39, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v40, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1D3893640](v41, -1, -1);
      MEMORY[0x1D3893640](v39, -1, -1);

LABEL_20:
LABEL_21:
      LOBYTE(v21) = 0;
      v22 = 5000000000000000000;
LABEL_22:
      *(v0 + 40) = v22;
      *(v0 + 48) = 0;
      v23 = swift_task_alloc();
      *(v0 + 96) = v23;
      *v23 = v0;
      v23[1] = sub_1D17CEF94;

      return sub_1D17CF6F4(v21, (v0 + 40));
    }

    v57 = *(*(v0 + 72) + 120);
    v58 = [v57 streamControl];
    if (v58 && (v59 = v58, v60 = [v58 streamState], v59, v60 == 2) && (v61 = objc_msgSend(v57, sel_streamControl)) != 0 && (v62 = v61, v63 = objc_msgSend(v61, sel_cameraStream), v62, v63))
    {
      v64 = *(v0 + 72);
      v65 = [v63 audioStreamSetting];

      v66 = 0;
      v67 = 0;
      v68 = v65 == 2;
      if (v65 == 3)
      {
        v68 = 2;
      }

      v69 = v68 | (*(v64 + OBJC_IVAR____TtC13HomeDataModel16CameraController_currentStreamingResolution) << 8);
      v70 = 1;
    }

    else
    {
      v69 = 0;
      v70 = 0;
      v67 = 2;
      v66 = 1;
    }

    *(v0 + 37) = v67;
    *(v0 + 36) = v70;
    *(v0 + 35) = v66;
    *(v0 + 104) = v69;
    v71 = *(v0 + 72);
    v72 = [v57 streamControl];
    *(v0 + 112) = [v72 cameraStream];

    v73 = *(v71 + OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider);
    *(v0 + 120) = v73;

    return MEMORY[0x1EEE6DFA0](sub_1D17CF088, v73, 0);
  }
}

uint64_t sub_1D17CEF94()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D17CF088()
{
  v1 = *(v0 + 120);
  *(v0 + 128) = *(v1 + 120);
  *(v0 + 38) = *(v1 + 128);
  return MEMORY[0x1EEE6DFA0](sub_1D17CF0B4, v1, 0);
}

uint64_t sub_1D17CF0B4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 72);
  *(v0 + 136) = *(v1 + 136);
  *(v0 + 39) = *(v1 + 144);
  return MEMORY[0x1EEE6DFA0](sub_1D17CF0E4, v2, 0);
}

uint64_t sub_1D17CF0E4()
{
  v39 = v0;
  v1 = *(v0 + 33);
  if (v1 != 2 && v1 != 1)
  {
    v5 = *(v0 + 88);
    if ((v5 & 1) == 0)
    {
      if ((v5 & 2) == 0)
      {
        v6 = *(v0 + 39);
        v7 = *(v0 + 38);
LABEL_29:
        if (*(v0 + 36) != 1)
        {
          goto LABEL_35;
        }

        v12 = *(v0 + 104);
        v34 = *(v0 + 80);
        v35 = 0;
        v36 = v12;
        v37 = 0;
        v38 = 0;
        if ((_s13HomeDataModel16CameraControllerC4ModeO2eeoiySbAE_AEtFZ_0(&v34, &v36) & 1) == 0)
        {
          goto LABEL_35;
        }

        if (*(*(v0 + 72) + OBJC_IVAR____TtC13HomeDataModel16CameraController_snapshotTimer))
        {

          isCancelled = swift_task_isCancelled();

          if ((isCancelled & v7 & v6 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        else if ((v7 & v6) != 1)
        {
          goto LABEL_35;
        }

LABEL_8:

        v3 = *(v0 + 8);

        return v3();
      }

      v7 = *(v0 + 38);
      goto LABEL_24;
    }

    v8 = *(v0 + 112);
    v9 = *(v0 + 38);
    if (v8)
    {
      v10 = [v8 audioDownlinkToken];
      if ((v9 & 1) == 0)
      {
        v7 = *(v0 + 128) == v10;
        if ((v5 & 2) != 0)
        {
          v11 = *(v0 + 112);
          goto LABEL_25;
        }

        goto LABEL_23;
      }
    }

    else if (*(v0 + 38))
    {
      if ((v5 & 2) == 0)
      {
        v6 = *(v0 + 39);
        v7 = 1;
        goto LABEL_29;
      }

      v11 = 0;
      v6 = 1;
      v7 = 1;
      if (*(v0 + 39))
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    v7 = 0;
    if ((v5 & 2) != 0)
    {
LABEL_24:
      v11 = *(v0 + 112);
      if (v11)
      {
LABEL_25:
        v11 = [v11 audioUplinkToken];
        v6 = 0;
        if (*(v0 + 39))
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      v6 = 1;
      if (*(v0 + 39))
      {
        goto LABEL_29;
      }

LABEL_28:
      v6 = (*(v0 + 136) == v11) & ~v6;
      goto LABEL_29;
    }

LABEL_23:
    v6 = *(v0 + 39);
    goto LABEL_29;
  }

  v2 = *(v0 + 35) != 1 || *(v0 + 38) == 0;
  if (!v2 && (*(v0 + 39) & 1) != 0)
  {
    goto LABEL_8;
  }

LABEL_35:
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v14 = sub_1D1E6709C();
  __swift_project_value_buffer(v14, qword_1EC64F3F8);

  v15 = sub_1D1E6707C();
  v16 = sub_1D1E6835C();

  if (os_log_type_enabled(v15, v16))
  {
    v33 = *(v0 + 37);
    v32 = *(v0 + 104);
    v31 = *(v0 + 33);
    v17 = *(v0 + 80);
    v30 = *(v0 + 88);
    v18 = *(v0 + 72);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v34 = v21;
    *v19 = 138413058;
    *(v19 + 4) = v18;
    *v20 = v18;
    *(v19 + 12) = 2080;

    *(v19 + 14) = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EB9800, &v34);
    *(v19 + 22) = 2080;
    v36 = v17;
    v37 = v30;
    v38 = v31;
    v22 = CameraController.Mode.description.getter();
    v24 = sub_1D1B1312C(v22, v23, &v34);

    *(v19 + 24) = v24;
    *(v19 + 32) = 2080;
    v36 = v32;
    v37 = 0;
    v38 = v33;
    v25 = CameraController.Mode.description.getter();
    v27 = sub_1D1B1312C(v25, v26, &v34);

    *(v19 + 34) = v27;
    _os_log_impl(&dword_1D16EC000, v15, v16, "%@ %s mode: %s, derived: %s", v19, 0x2Au);
    sub_1D1741A30(v20, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v20, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v21, -1, -1);
    MEMORY[0x1D3893640](v19, -1, -1);
  }

  v28 = *(v0 + 33);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v28;
  v29 = swift_task_alloc();
  *(v0 + 144) = v29;
  *v29 = v0;
  v29[1] = sub_1D17CF584;

  return sub_1D17CD084(v0 + 16);
}

uint64_t sub_1D17CF584()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D17CF694, v1, 0);
}

uint64_t sub_1D17CF694()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D17CF6F4(char a1, _OWORD *a2)
{
  *(v3 + 40) = v2;
  *(v3 + 152) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v3 + 48) = swift_task_alloc();
  v5 = sub_1D1E68A8C();
  *(v3 + 56) = v5;
  v6 = *(v5 - 8);
  *(v3 + 64) = v6;
  *(v3 + 72) = *(v6 + 64);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v7 = sub_1D1E669FC();
  *(v3 + 96) = v7;
  *(v3 + 104) = *(v7 - 8);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1D17CF8B8, v2, 0);
}

uint64_t sub_1D17CF8B8()
{
  v64 = v0;
  if (*(v0 + 152) != 1 || (v1 = [*(*(v0 + 40) + 120) accessory]) != 0 && (v2 = v1, v3 = objc_msgSend(v1, sel_isDemoAccessory), v2, (v3 & 1) != 0))
  {
    if (!*(*(v0 + 40) + OBJC_IVAR____TtC13HomeDataModel16CameraController_snapshotTimer))
    {
      goto LABEL_21;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    sub_1D1E67F5C();
    goto LABEL_20;
  }

  v4 = *(v0 + 40);
  v5 = OBJC_IVAR____TtC13HomeDataModel16CameraController_snapshotTimer;
  if (!*(v4 + OBJC_IVAR____TtC13HomeDataModel16CameraController_snapshotTimer))
  {
LABEL_17:
    v61 = v5;
    v62 = v4;
    v14 = *(v0 + 144);
    v15 = *(v0 + 128);
    v16 = *(v0 + 96);
    v17 = *(v0 + 104);
    v18 = *(v0 + 40);
    v19 = v18 + OBJC_IVAR____TtC13HomeDataModel16CameraController_currentSnapshotInterval;
    *v19 = *(v0 + 136);
    *(v19 + 8) = v14;
    *(v19 + 16) = 0;
    v20 = sub_1D1E6931C();
    v22 = v21 * 1.0e-18 + v20;
    v23 = OBJC_IVAR____TtC13HomeDataModel16CameraController_previousSnapshotCallTime;
    swift_beginAccess();
    sub_1D1741C08(v18 + v23, v15, &qword_1EC642570, &qword_1D1E6C6A0);
    v24 = (*(v17 + 48))(v15, 1, v16);
    v25 = 0.0;
    if (v24 != 1)
    {
      v26 = *(v0 + 120);
      v28 = *(v0 + 104);
      v27 = *(v0 + 112);
      v29 = *(v0 + 96);
      (*(v28 + 32))(v26, *(v0 + 128), v29);
      _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
      sub_1D1E669DC();
      v31 = v30;
      v32 = *(v28 + 8);
      v32(v27, v29);
      v32(v26, v29);
      v25 = v22 - v31;
    }

    v60 = v24 == 1;
    v34 = *(v0 + 136);
    v33 = *(v0 + 144);
    v54 = v34;
    v55 = v33;
    v35 = *(v0 + 88);
    v36 = *(v0 + 64);
    v56 = *(v0 + 80);
    v57 = *(v0 + 72);
    v38 = *(v0 + 48);
    v37 = *(v0 + 56);
    sub_1D1E68A7C();
    v39 = CameraController.description.getter();
    v58 = v40;
    v59 = v39;
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    v42[2] = v41;
    v42[3] = v34;
    v42[4] = v33;
    sub_1D1E67E3C();
    v43 = sub_1D1E67E7C();
    (*(*(v43 - 8) + 56))(v38, 0, 1, v43);
    (*(v36 + 16))(v56, v35, v37);
    v44 = (*(v36 + 80) + 56) & ~*(v36 + 80);
    v45 = (v57 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v45 + 23) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    *(v47 + 24) = 0;
    *(v47 + 32) = v25;
    *(v47 + 40) = v60;
    *(v47 + 48) = v22;
    (*(v36 + 32))(v47 + v44, v56, v37);
    v48 = (v47 + v45);
    *v48 = v59;
    v48[1] = v58;
    v49 = (v47 + v46);
    *v49 = v54;
    v49[1] = v55;
    v50 = (v47 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v50 = &unk_1D1E74618;
    v50[1] = v42;
    v51 = sub_1D1B02368(0, 0, v38, &unk_1D1E74628, v47);
    (*(v36 + 8))(v35, v37);
    *(v62 + v61) = v51;
LABEL_20:

    goto LABEL_21;
  }

  isCancelled = swift_task_isCancelled();

  if ((isCancelled & 1) != 0 || (*(*(v0 + 40) + OBJC_IVAR____TtC13HomeDataModel16CameraController_currentSnapshotInterval + 16) & 1) != 0 || (sub_1D1E6937C() & 1) == 0)
  {
    if (*(v4 + v5))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
      sub_1D1E67F5C();
    }

    goto LABEL_17;
  }

  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v7 = sub_1D1E6709C();
  __swift_project_value_buffer(v7, qword_1EC64F3F8);

  v8 = sub_1D1E6707C();
  v9 = sub_1D1E6835C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 40);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v63 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2080;

    *(v11 + 14) = sub_1D1B1312C(0xD000000000000021, 0x80000001D1EB9780, &v63);
    _os_log_impl(&dword_1D16EC000, v8, v9, "%@ %s returning early because snapshots are being taken", v11, 0x16u);
    sub_1D1741A30(v12, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D3893640](v13, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

LABEL_21:

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_1D17CFF30(char a1, _BYTE *a2)
{
  *(v3 + 16) = v2;
  *(v3 + 50) = a1;
  *(v3 + 51) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D17CFF5C, v2, 0);
}

uint64_t sub_1D17CFF5C()
{
  v39 = v0;
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EC64F3F8);

  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 50);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v37 = v8;
    *v6 = 138412802;
    *(v6 + 4) = v4;
    *v7 = v4;
    *(v6 + 12) = 2080;

    *(v6 + 14) = sub_1D1B1312C(0xD000000000000020, 0x80000001D1EB9710, &v37);
    *(v6 + 22) = 1024;
    *(v6 + 24) = v5;
    _os_log_impl(&dword_1D16EC000, v2, v3, "%@ %s enable: %{BOOL}d", v6, 0x1Cu);
    sub_1D1741A30(v7, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  if (*(v0 + 50) == 1)
  {
    if (sub_1D17D1D7C())
    {
      *(v0 + 49) = *(v0 + 51);
      v9 = swift_task_alloc();
      *(v0 + 24) = v9;
      *v9 = v0;
      v9[1] = sub_1D17D064C;

      return sub_1D17D1E34((v0 + 49));
    }

    if (*(v0 + 51) != 5 && (sub_1D17D2BD4() & 1) != 0)
    {
      v12 = *(v0 + 51);
      v13 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_currentStreamingResolution);
      if (v13 == 5 || v12 != v13)
      {
        *(v0 + 48) = v12;
        v14 = swift_task_alloc();
        *(v0 + 32) = v14;
        *v14 = v0;
        v14[1] = sub_1D17D0740;

        return sub_1D17D23D4((v0 + 48));
      }
    }

LABEL_21:

    v15 = sub_1D1E6707C();
    v16 = sub_1D1E6835C();

    if (!os_log_type_enabled(v15, v16))
    {
LABEL_43:

      v34 = *(v0 + 8);

      return v34();
    }

    v17 = 0xED0000676E696D61;
    v18 = 0x6572747320746F6ELL;
    v19 = *(v0 + 16);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v20 = 138413058;
    *(v20 + 4) = v19;
    *v21 = v19;
    *(v20 + 12) = 2080;

    *(v20 + 14) = sub_1D1B1312C(0xD000000000000020, 0x80000001D1EB9710, &v36);
    *(v20 + 22) = 2080;
    v22 = [*(v19 + 120) streamControl];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 streamState];

      if (v24 == 3)
      {
        v17 = 0xE800000000000000;
        v25 = 0x6970706F7473;
        goto LABEL_29;
      }

      if (v24 == 2)
      {
        v18 = 0x6E696D6165727473;
        v17 = 0xE900000000000067;
      }

      else if (v24 == 1)
      {
        v17 = 0xE800000000000000;
        v25 = 0x697472617473;
LABEL_29:
        v18 = v25 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
      }
    }

    v26 = *(v0 + 16);
    v27 = sub_1D1B1312C(v18, v17, &v36);

    *(v20 + 24) = v27;
    *(v20 + 32) = 2080;
    v28 = *(v26 + OBJC_IVAR____TtC13HomeDataModel16CameraController_currentStreamingResolution);
    if (v28 == 5)
    {
      v29 = 0xE300000000000000;
      v30 = 7104878;
    }

    else
    {
      v37 = 0;
      v38 = 0xE000000000000000;
      if (v28 <= 1)
      {
        v31 = 0xE800000000000000;
        if (v28)
        {
          v32 = 0x6465636E61686E65;
        }

        else
        {
          v32 = 0x647261646E617473;
        }
      }

      else if (v28 == 2)
      {
        v31 = 0xE400000000000000;
        v32 = 1751607656;
      }

      else if (v28 == 3)
      {
        v31 = 0xE900000000000068;
        v32 = 0x676968206C6C7566;
      }

      else
      {
        v31 = 0xEA00000000006867;
        v32 = 0x6968206172746C75;
      }

      MEMORY[0x1D3890F70](v32, v31);

      v30 = v37;
      v29 = v38;
    }

    v33 = sub_1D1B1312C(v30, v29, &v36);

    *(v20 + 34) = v33;
    _os_log_impl(&dword_1D16EC000, v15, v16, "%@ %s no-op,\nstreamState: %s,\ncurrentStreamingResolution: %s", v20, 0x2Au);
    sub_1D1741A30(v21, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v21, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v35, -1, -1);
    MEMORY[0x1D3893640](v20, -1, -1);
    goto LABEL_43;
  }

  if ((sub_1D17D2BD4() & 1) == 0)
  {
    goto LABEL_21;
  }

  v11 = swift_task_alloc();
  *(v0 + 40) = v11;
  *v11 = v0;
  v11[1] = sub_1D17D0834;

  return sub_1D17D2C88();
}

uint64_t sub_1D17D064C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D17D0740()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D17D0834()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D17D0928(_BYTE *a1, char a2, char a3)
{
  *(v4 + 160) = v3;
  *(v4 + 226) = a3;
  *(v4 + 225) = a2;
  *(v4 + 227) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1D17D0958, v3, 0);
}

uint64_t sub_1D17D0958()
{
  v25 = v0;
  v1 = *(*(v0 + 160) + 120);
  *(v0 + 168) = v1;
  v2 = [v1 streamControl];
  if (!v2 || (v3 = v2, v4 = [v2 cameraStream], *(v0 + 176) = v4, v3, !v4))
  {
LABEL_7:
    v9 = *(v0 + 8);

    return v9();
  }

  v5 = *(v0 + 227);
  if ([v4 audioStreamSetting] == (v5 + 1) || (v6 = objc_msgSend(v1, sel_accessory)) != 0 && (v7 = v6, v8 = objc_msgSend(v6, sel_isDemoAccessory), v7, (v8 & 1) != 0))
  {

    goto LABEL_7;
  }

  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  *(v0 + 184) = __swift_project_value_buffer(v11, qword_1EC64F3F8);

  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6835C();

  if (os_log_type_enabled(v12, v13))
  {
    v23 = *(v0 + 227);
    v14 = *(v0 + 160);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v15 = 138412802;
    *(v15 + 4) = v14;
    *v16 = v14;
    *(v15 + 12) = 2080;

    *(v15 + 14) = sub_1D1B1312C(0xD00000000000002FLL, 0x80000001D1EB96C0, &v24);
    *(v15 + 22) = 2080;
    *(v0 + 224) = v23;
    v18 = sub_1D1E6789C();
    v20 = sub_1D1B1312C(v18, v19, &v24);

    *(v15 + 24) = v20;
    _os_log_impl(&dword_1D16EC000, v12, v13, "%@ %s setting: %s", v15, 0x20u);
    sub_1D1741A30(v16, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v17, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  v21 = *(v0 + 227);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1D17D0D38;
  v22 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D17B04C8;
  *(v0 + 104) = &block_descriptor_2;
  *(v0 + 112) = v22;
  [v4 updateAudioStreamSetting:v21 + 1 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D17D0D38()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  v3 = *(v1 + 160);
  if (v2)
  {
    v4 = sub_1D17D1258;
  }

  else
  {
    v4 = sub_1D17D0E58;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D17D0E58()
{
  *(v0 + 152) = MEMORY[0x1E69E7CC0];
  v1 = (v0 + 152);
  if (*(v0 + 225) == 1)
  {
    v2 = [*(v0 + 168) microphoneControl];
    if (v2)
    {
      v3 = v2;
      MEMORY[0x1D3891220]();
      if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D1E67C5C();
      }

      sub_1D1E67CAC();
    }
  }

  if (*(v0 + 226) == 1)
  {
    v4 = [*(v0 + 168) speakerControl];
    if (v4)
    {
      v5 = v4;
      MEMORY[0x1D3891220]();
      if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D1E67C5C();
      }

      sub_1D1E67CAC();
    }
  }

  sub_1D17D8E60(&qword_1EC643F38, type metadata accessor for CameraController, &protocol conformance descriptor for CameraController);
  v6 = swift_allocObject();
  *(v0 + 200) = v6;
  swift_weakInit();
  v7 = swift_task_alloc();
  *(v0 + 208) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 216) = v8;
  *v8 = v0;
  v8[1] = sub_1D17D10A0;

  return MEMORY[0x1EEE6DDE8]();
}

uint64_t sub_1D17D10A0()
{
  v1 = *(*v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D17D11F0, v1, 0);
}

uint64_t sub_1D17D11F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D17D1258(uint64_t a1)
{
  v20 = v1;
  v2 = *(v1 + 192);
  swift_willThrow();

  v3 = v2;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 192);
    v18 = *(v1 + 176);
    v7 = *(v1 + 160);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19[0] = v10;
    *v8 = 138412802;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2080;

    *(v8 + 14) = sub_1D1B1312C(0xD00000000000002FLL, 0x80000001D1EB96C0, v19);
    *(v8 + 22) = 2080;
    *(v1 + 144) = v6;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v12 = sub_1D1E6789C();
    v14 = sub_1D1B1312C(v12, v13, v19);

    *(v8 + 24) = v14;
    _os_log_impl(&dword_1D16EC000, v4, v5, "%@ %s failed to update %s", v8, 0x20u);
    sub_1D1741A30(v9, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  else
  {
    v15 = *(v1 + 192);
  }

  v16 = *(v1 + 8);

  return v16();
}

uint64_t sub_1D17D14B0(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 89) = a2;
  *(v3 + 88) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D17D14D8, v2, 0);
}

uint64_t sub_1D17D14D8()
{
  v24 = v0;
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EC64F3F8);

  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 89);
    v6 = *(v0 + 88);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v7 = 138413058;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;

    *(v7 + 14) = sub_1D1B1312C(0xD00000000000002ELL, 0x80000001D1EB9620, &v23);
    *(v7 + 22) = 1024;
    *(v7 + 24) = v6;
    *(v7 + 28) = 1024;
    *(v7 + 30) = v5;
    _os_log_impl(&dword_1D16EC000, v2, v3, "%@ %s enableIncoming: %{BOOL}d, enableOutgoing: %{BOOL}d", v7, 0x22u);
    sub_1D1741A30(v8, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  if (*(v0 + 88) == 1)
  {
    v10 = [*(*(v0 + 16) + 120) streamControl];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 cameraStream];
      *(v0 + 24) = v12;

      if (v12)
      {
        v13 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider);
        *(v0 + 32) = v13;
        *(v0 + 40) = [v12 audioDownlinkToken];
        v14 = sub_1D17D188C;
LABEL_13:
        v18 = v14;
        v19 = v13;
LABEL_22:

        return MEMORY[0x1EEE6DFA0](v18, v19, 0);
      }
    }
  }

  if (*(v0 + 89) == 1)
  {
    v15 = [*(*(v0 + 16) + 120) streamControl];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 cameraStream];
      *(v0 + 48) = v17;

      if (v17)
      {
        v13 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider);
        *(v0 + 56) = v13;
        *(v0 + 64) = [v17 audioUplinkToken];
        v14 = sub_1D17D1A6C;
        goto LABEL_13;
      }
    }
  }

  if ((*(v0 + 88) & 1) == 0)
  {
    v19 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider);
    *(v0 + 72) = v19;
    v22 = sub_1D17D1BB8;
LABEL_21:
    v18 = v22;
    goto LABEL_22;
  }

  if ((*(v0 + 89) & 1) == 0)
  {
    v19 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider);
    *(v0 + 80) = v19;
    v22 = sub_1D17D1C70;
    goto LABEL_21;
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1D17D188C()
{
  v1 = *(v0 + 16);
  sub_1D17D4858(0, *(v0 + 40));

  return MEMORY[0x1EEE6DFA0](sub_1D17D18FC, v1, 0);
}

uint64_t sub_1D17D18FC()
{
  if (*(v0 + 89) == 1)
  {
    v1 = [*(*(v0 + 16) + 120) streamControl];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 cameraStream];
      *(v0 + 48) = v3;

      if (v3)
      {
        v4 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider);
        *(v0 + 56) = v4;
        *(v0 + 64) = [v3 audioUplinkToken];
        v5 = sub_1D17D1A6C;
        v6 = v4;
LABEL_13:

        return MEMORY[0x1EEE6DFA0](v5, v6, 0);
      }
    }
  }

  if ((*(v0 + 88) & 1) == 0)
  {
    v6 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider);
    *(v0 + 72) = v6;
    v9 = sub_1D17D1BB8;
LABEL_12:
    v5 = v9;
    goto LABEL_13;
  }

  if ((*(v0 + 89) & 1) == 0)
  {
    v6 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider);
    *(v0 + 80) = v6;
    v9 = sub_1D17D1C70;
    goto LABEL_12;
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D17D1A6C()
{
  v1 = *(v0 + 16);
  sub_1D17D4858(1, *(v0 + 64));

  return MEMORY[0x1EEE6DFA0](sub_1D17D1ADC, v1, 0);
}

uint64_t sub_1D17D1ADC()
{
  if (*(v0 + 88))
  {
    if (*(v0 + 89))
    {
      v1 = *(v0 + 8);

      return v1();
    }

    v3 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider);
    *(v0 + 80) = v3;
    v4 = sub_1D17D1C70;
  }

  else
  {
    v3 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider);
    *(v0 + 72) = v3;
    v4 = sub_1D17D1BB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D17D1BB8()
{
  v1 = *(v0 + 16);
  sub_1D17D4B60(0);

  return MEMORY[0x1EEE6DFA0](sub_1D17D1C28, v1, 0);
}

uint64_t sub_1D17D1C28()
{
  if (*(v0 + 89))
  {
    return (*(v0 + 8))();
  }

  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider);
  *(v0 + 80) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D17D1C70, v2, 0);
}

uint64_t sub_1D17D1C70()
{
  sub_1D17D4B60(1);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D17D1CD4()
{
  v1 = *(v0 + 120);
  v2 = [v1 streamControl];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 streamState];

    if (v4 == 1)
    {
      return 1;
    }
  }

  result = [v1 streamControl];
  if (result)
  {
    v6 = result;
    v7 = [result streamState];

    return v7 == 3;
  }

  return result;
}

uint64_t sub_1D17D1D7C()
{
  if (sub_1D17D1CD4())
  {
    return 0;
  }

  v1 = *(v0 + 120);
  v2 = [v1 streamControl];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 streamState];

    if ((v4 - 1) < 3)
    {
      return 0;
    }
  }

  v6 = [v1 accessory];
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  v8 = [v6 isDemoAccessory];

  return v8 ^ 1;
}

uint64_t sub_1D17D1E34(_BYTE *a1)
{
  *(v2 + 48) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  *(v2 + 56) = v4;
  *(v2 + 64) = *(v4 - 8);
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 41) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1D17D1F0C, v1, 0);
}

uint64_t sub_1D17D1F0C()
{
  v38 = v0;
  v1 = [*(*(v0 + 48) + 120) streamControl];
  if (v1)
  {
    v2 = v1;
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v3 = sub_1D1E6709C();
    __swift_project_value_buffer(v3, qword_1EC64F3F8);

    v4 = sub_1D1E6707C();
    v5 = sub_1D1E6835C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 41);
      v7 = *(v0 + 48);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v34;
      *v8 = 138412802;
      *(v8 + 4) = v7;
      *v9 = v7;
      *(v8 + 12) = 2080;

      *(v8 + 14) = sub_1D1B1312C(0xD000000000000012, 0x80000001D1EB9740, &v35);
      *(v8 + 22) = 2080;
      if (v6 == 5)
      {
        v10 = 0xE300000000000000;
        v11 = 7104878;
      }

      else
      {
        v12 = *(v0 + 41);
        v13 = 0x647261646E617473;
        v36 = 0;
        v37 = 0xE000000000000000;
        v14 = 0xE400000000000000;
        v15 = 1751607656;
        v16 = 0xE900000000000068;
        v17 = 0x676968206C6C7566;
        if (v12 != 3)
        {
          v17 = 0x6968206172746C75;
          v16 = 0xEA00000000006867;
        }

        if (v12 != 2)
        {
          v15 = v17;
          v14 = v16;
        }

        if (v12)
        {
          v13 = 0x6465636E61686E65;
        }

        if (v12 <= 1)
        {
          v18 = v13;
        }

        else
        {
          v18 = v15;
        }

        if (v12 <= 1)
        {
          v19 = 0xE800000000000000;
        }

        else
        {
          v19 = v14;
        }

        MEMORY[0x1D3890F70](v18, v19);

        v11 = v36;
        v10 = v37;
      }

      v20 = sub_1D1B1312C(v11, v10, &v35);

      *(v8 + 24) = v20;
      _os_log_impl(&dword_1D16EC000, v4, v5, "%@ %s resolution: %s", v8, 0x20u);
      sub_1D1741A30(v9, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v9, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v34, -1, -1);
      MEMORY[0x1D3893640](v8, -1, -1);
    }

    v21 = *(v0 + 41);
    v22 = [objc_allocWithZone(MEMORY[0x1E696CB20]) init];
    v23 = [objc_allocWithZone(MEMORY[0x1E696CB28]) init];
    if (v21 != 5)
    {
      LOBYTE(v36) = *(v0 + 41);
      CameraController.Resolution.videoResolutions.getter();
      sub_1D1784EBC(v24);

      sub_1D17D8AE4();
      sub_1D17D8E60(&qword_1EC643568, sub_1D17D8AE4, MEMORY[0x1E69E81B8]);
      v25 = sub_1D1E6815C();

      [v23 setResolutions_];
    }

    v26 = *(v0 + 41);
    v28 = *(v0 + 64);
    v27 = *(v0 + 72);
    v29 = *(v0 + 48);
    v30 = *(v0 + 56);
    [v22 setVideoPreferences_];
    [v22 setShouldTakeOwnershipOfExistingStream_];
    *(v29 + OBJC_IVAR____TtC13HomeDataModel16CameraController_currentStreamingResolution) = v26;
    [v2 startStreamWithPreferences_];
    v31 = [v2 cameraStream];
    *(v0 + 16) = 1;
    *(v0 + 24) = v31;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0x80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
    sub_1D1E67ECC();

    (*(v28 + 8))(v27, v30);
  }

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1D17D23D4(_BYTE *a1)
{
  *(v2 + 144) = v1;
  *(v2 + 176) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1D17D23FC, v1, 0);
}

uint64_t sub_1D17D23FC()
{
  v25 = v0;
  v1 = [*(*(v0 + 144) + 120) streamControl];
  if (v1 && (v2 = v1, v3 = [v1 cameraStream], *(v0 + 152) = v3, v2, v3))
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v4 = sub_1D1E6709C();
    *(v0 + 160) = __swift_project_value_buffer(v4, qword_1EC64F3F8);

    v5 = sub_1D1E6707C();
    v6 = sub_1D1E6835C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 176);
      v8 = *(v0 + 144);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v9 = 138412802;
      *(v9 + 4) = v8;
      *v10 = v8;
      *(v9 + 12) = 2080;

      *(v9 + 14) = sub_1D1B1312C(0xD000000000000018, 0x80000001D1EB9760, &v24);
      v11 = 0x647261646E617473;
      *(v9 + 22) = 2080;
      v12 = 0xE400000000000000;
      v13 = 1751607656;
      v14 = 0xE900000000000068;
      v15 = 0x676968206C6C7566;
      if (v7 != 3)
      {
        v15 = 0x6968206172746C75;
        v14 = 0xEA00000000006867;
      }

      if (v7 != 2)
      {
        v13 = v15;
        v12 = v14;
      }

      if (v7)
      {
        v11 = 0x6465636E61686E65;
      }

      if (v7 <= 1)
      {
        v16 = v11;
      }

      else
      {
        v16 = v13;
      }

      if (v7 <= 1)
      {
        v17 = 0xE800000000000000;
      }

      else
      {
        v17 = v12;
      }

      v18 = sub_1D1B1312C(v16, v17, &v24);

      *(v9 + 24) = v18;
      _os_log_impl(&dword_1D16EC000, v5, v6, "%@ %s resolution: %s", v9, 0x20u);
      sub_1D1741A30(v10, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v10, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v23, -1, -1);
      MEMORY[0x1D3893640](v9, -1, -1);
    }

    v19 = *(v0 + 176);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1D17D27F0;
    v20 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1D17B04C8;
    *(v0 + 104) = &block_descriptor_92;
    *(v0 + 112) = v20;
    [v3 updateMaximumVideoResolutionQuality:v19 + 1 completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1D17D27F0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  v3 = *(v1 + 144);
  if (v2)
  {
    v4 = sub_1D17D2980;
  }

  else
  {
    v4 = sub_1D17D2910;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D17D2910()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  *(v2 + OBJC_IVAR____TtC13HomeDataModel16CameraController_currentStreamingResolution) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D17D2980(uint64_t a1)
{
  v20 = v1;
  v2 = *(v1 + 168);
  swift_willThrow();

  v3 = v2;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 168);
    v7 = *(v1 + 144);
    v18 = *(v1 + 152);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19[0] = v10;
    *v8 = 138412802;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2080;

    *(v8 + 14) = sub_1D1B1312C(0xD000000000000018, 0x80000001D1EB9760, v19);
    *(v8 + 22) = 2080;
    *(v1 + 80) = v6;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v12 = sub_1D1E6789C();
    v14 = sub_1D1B1312C(v12, v13, v19);

    *(v8 + 24) = v14;
    _os_log_impl(&dword_1D16EC000, v4, v5, "%@ %s failed to update %s", v8, 0x20u);
    sub_1D1741A30(v9, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  else
  {
    v15 = *(v1 + 168);
  }

  v16 = *(v1 + 8);

  return v16();
}

uint64_t sub_1D17D2BD4()
{
  if (sub_1D17D1CD4())
  {
    return 0;
  }

  v1 = *(v0 + 120);
  result = [v1 streamControl];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = [result streamState];

  if (v4 != 2)
  {
    return 0;
  }

  v5 = [v1 accessory];
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = [v5 isDemoAccessory];

  return v7 ^ 1;
}

uint64_t sub_1D17D2C88()
{
  v1[6] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17D2D54, v0, 0);
}

uint64_t sub_1D17D2D54()
{
  v17 = v0;
  v1 = [*(*(v0 + 48) + 120) streamControl];
  if (v1)
  {
    v2 = v1;
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v3 = sub_1D1E6709C();
    __swift_project_value_buffer(v3, qword_1EC64F3F8);

    v4 = sub_1D1E6707C();
    v5 = sub_1D1E6835C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 48);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v7 = 138412546;
      *(v7 + 4) = v6;
      *v8 = v6;
      *(v7 + 12) = 2080;

      *(v7 + 14) = sub_1D1B1312C(0x65727453706F7473, 0xEC00000029286D61, &v16);
      _os_log_impl(&dword_1D16EC000, v4, v5, "%@ %s", v7, 0x16u);
      sub_1D1741A30(v8, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1D3893640](v9, -1, -1);
      MEMORY[0x1D3893640](v7, -1, -1);
    }

    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = *(v0 + 56);
    *(*(v0 + 48) + OBJC_IVAR____TtC13HomeDataModel16CameraController_currentStreamingResolution) = 5;
    [v2 stopStream];
    v13 = [v2 cameraStream];
    *(v0 + 16) = 3;
    *(v0 + 24) = v13;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0x80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
    sub_1D1E67ECC();

    (*(v11 + 8))(v10, v12);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D17D3008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17D30B4, 0, 0);
}

void sub_1D17D30B4()
{
  v1 = **(v0 + 80);
  if (v1 >> 62)
  {
    v24 = **(v0 + 80);
    v25 = sub_1D1E6873C();
    v1 = v24;
    v2 = v25;
    if (!v25)
    {
LABEL_18:

      v23 = *(v0 + 8);

      v23();
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_18;
    }
  }

  if (v2 >= 1)
  {
    v27 = **(v0 + 72);
    v26 = v1 & 0xC000000000000001;
    v3 = v1;

    v4 = v3;
    v5 = 0;
    v28 = v2;
    v29 = v3;
    while (1)
    {
      v30 = v5;
      if (v26)
      {
        v8 = MEMORY[0x1D3891EF0](v5, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v5 + 32);
      }

      v9 = v8;
      v11 = *(v0 + 96);
      v10 = *(v0 + 104);
      v12 = *(v0 + 88);
      v13 = sub_1D1E67E7C();
      v14 = *(v13 - 8);
      (*(v14 + 56))(v10, 1, 1, v13);
      v15 = swift_allocObject();
      v15[2] = 0;
      v16 = v15 + 2;
      v15[3] = 0;
      v15[4] = v12;
      v15[5] = v9;
      sub_1D1741C08(v10, v11, &unk_1EC6442C0, &qword_1D1E741A0);
      LODWORD(v10) = (*(v14 + 48))(v11, 1, v13);

      v17 = v9;
      v18 = *(v0 + 96);
      if (v10 == 1)
      {
        sub_1D1741A30(*(v0 + 96), &unk_1EC6442C0, &qword_1D1E741A0);
        if (!*v16)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1D1E67E6C();
        (*(v14 + 8))(v18, v13);
        if (!*v16)
        {
LABEL_14:
          v19 = 0;
          v21 = 0;
          goto LABEL_15;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v19 = sub_1D1E67D4C();
      v21 = v20;
      swift_unknownObjectRelease();
LABEL_15:
      v22 = swift_allocObject();
      *(v22 + 16) = &unk_1D1E745B0;
      *(v22 + 24) = v15;

      if (v21 | v19)
      {
        v6 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v19;
        *(v0 + 40) = v21;
      }

      else
      {
        v6 = 0;
      }

      v5 = v30 + 1;
      v7 = *(v0 + 104);
      *(v0 + 48) = 1;
      *(v0 + 56) = v6;
      *(v0 + 64) = v27;
      swift_task_create();

      sub_1D1741A30(v7, &unk_1EC6442C0, &qword_1D1E741A0);
      v4 = v29;
      if (v28 == v30 + 1)
      {

        goto LABEL_18;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1D17D3444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D17D3464, 0, 0);
}

uint64_t sub_1D17D3464()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1D17D3554;
    v3 = v0[6];

    return sub_1D17D3664(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1D17D3554()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D17D3664(uint64_t a1)
{
  v2[206] = v1;
  v2[205] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v2[207] = swift_task_alloc();
  v3 = sub_1D1E66A7C();
  v2[208] = v3;
  v2[209] = *(v3 - 8);
  v2[210] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17D3760, v1, 0);
}

uint64_t sub_1D17D3760()
{
  v1 = v0[205];
  v2 = swift_allocObject();
  v0[211] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  swift_asyncLet_begin();
  v4 = swift_allocObject();
  v0[212] = v4;
  *(v4 + 16) = v3;
  v5 = v3;
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEB8](v0 + 2, v0 + 218, sub_1D17D3874, v0 + 162);
}

uint64_t sub_1D17D38B8()
{
  v36 = v0;
  v1 = *(v0 + 1745);
  v2 = *(v0 + 1592);
  *(v0 + 1336) = sub_1D18D7C70(MEMORY[0x1E69E7CC0]);
  *(v0 + 1344) = 0;
  *(v0 + 1352) = 2;
  if (v1 == 1)
  {
    v3 = [*(v0 + 1640) mute];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 service];

      if (v5)
      {
        v6 = *(v0 + 1680);
        v7 = *(v0 + 1672);
        v8 = *(v0 + 1664);
        v9 = [v5 uniqueIdentifier];
        sub_1D1E66A5C();

        sub_1D1BECA54(0, 84, v6, (v0 + 1336));
        (*(v7 + 8))(v6, v8);
      }
    }
  }

  if (v2 <= 49)
  {
    v10 = [*(v0 + 1640) volume];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 service];

      if (v12)
      {
        v13 = *(v0 + 1680);
        v14 = *(v0 + 1672);
        v15 = *(v0 + 1664);
        v16 = [v12 uniqueIdentifier];
        sub_1D1E66A5C();

        sub_1D1BECC0C(50, 170, v13, (v0 + 1336));
        (*(v14 + 8))(v13, v15);
      }
    }
  }

  if (*(*(v0 + 1336) + 16))
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v17 = sub_1D1E6709C();
    __swift_project_value_buffer(v17, qword_1EC64F3F8);

    v18 = sub_1D1E6707C();
    v19 = sub_1D1E6835C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 1648);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33[0] = v23;
      *v21 = 138412802;
      *(v21 + 4) = v20;
      *v22 = v20;
      *(v21 + 12) = 2080;

      *(v21 + 14) = sub_1D1B1312C(0xD000000000000011, 0x80000001D1EB96F0, v33);
      *(v21 + 22) = 2080;
      swift_beginAccess();
      v24 = *(v0 + 1344);
      v25 = *(v0 + 1352);
      v33[1] = *(v0 + 1336);
      v34 = v24;
      v35 = v25;

      v26 = CharacteristicValueSet.description.getter();
      v28 = v27;

      v29 = sub_1D1B1312C(v26, v28, v33);

      *(v21 + 24) = v29;
      _os_log_impl(&dword_1D16EC000, v18, v19, "%@ %s writing characteristics: %s", v21, 0x20u);
      sub_1D1741A30(v22, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v22, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v23, -1, -1);
      MEMORY[0x1D3893640](v21, -1, -1);
    }

    *(v0 + 1704) = sub_1D1E67E1C();
    *(v0 + 1712) = sub_1D1E67E0C();
    v31 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D17D3D94, v31, v30);
  }

  else
  {

    return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1592, sub_1D17D3D3C, v0 + 1552);
  }
}

uint64_t sub_1D17D3D94()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1648);

  return MEMORY[0x1EEE6DFA0](sub_1D17D3E2C, v1, 0);
}

uint64_t sub_1D17D3E2C(uint64_t a1)
{
  *(v1 + 1720) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17D3EB8, v3, v2);
}

uint64_t sub_1D17D3EB8()
{
  v1 = *(v0 + 1648);

  *(v0 + 1728) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D17D3F30, v1, 0);
}

uint64_t sub_1D17D3F30()
{
  swift_beginAccess();
  v1 = *(v0 + 1344);
  v2 = *(v0 + 1352);
  *(v0 + 1464) = *(v0 + 1336);
  *(v0 + 1472) = v1;
  *(v0 + 1480) = v2;

  v3 = swift_task_alloc();
  *(v0 + 1736) = v3;
  *v3 = v0;
  v3[1] = sub_1D17D4008;
  v4 = *(v0 + 1656);

  return DataModel.write(characteristicValueSet:home:)(v4, (v0 + 1464), 0);
}

uint64_t sub_1D17D4008()
{
  v1 = *(*v0 + 1656);
  v2 = *(*v0 + 1648);

  sub_1D1741A30(v1, &unk_1EC649E30, &unk_1D1E91250);

  return MEMORY[0x1EEE6DFA0](sub_1D17D4168, v2, 0);
}

uint64_t sub_1D17D4168()
{

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1592, sub_1D17D41D4, v0 + 1424);
}

uint64_t sub_1D17D422C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D17D42B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D17D42D8, 0, 0);
}

uint64_t sub_1D17D42D8()
{
  v1 = [*(v0 + 56) mute];
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_1D17D43CC;

    return HMCharacteristic.fetchedValue()(v0 + 16);
  }

  else
  {
    **(v0 + 48) = 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1D17D43CC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D17D44C8, 0, 0);
}

uint64_t sub_1D17D44C8()
{
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 80);
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
  }

  v1 = 0;
LABEL_6:
  **(v0 + 48) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D17D4588(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D17D45A8, 0, 0);
}

uint64_t sub_1D17D45A8()
{
  v1 = [*(v0 + 64) volume];
  *(v0 + 72) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_1D17D469C;

    return HMCharacteristic.fetchedValue()(v0 + 16);
  }

  else
  {
    **(v0 + 56) = 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1D17D469C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D17D4798, 0, 0);
}

uint64_t sub_1D17D4798()
{
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 48);
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
  }

  v1 = 0;
LABEL_6:
  **(v0 + 56) = v1;
  v2 = *(v0 + 8);

  return v2();
}

void sub_1D17D4858(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = 120;
  if (a1)
  {
    v6 = 136;
  }

  v7 = 128;
  if (a1)
  {
    v7 = 144;
  }

  if ((*(v2 + v7) & 1) == 0)
  {
    v8 = *(v2 + v6);
    if (v8 == a2)
    {
      return;
    }

    v9 = *(v2 + 112);
    if (v9)
    {
      v10 = v9;
      v11 = sub_1D17EB4C0();
      [v11 unregisterPowerSpectrumForStreamToken_];

      swift_beginAccess();
      sub_1D1AE0748(v8);
      swift_endAccess();
    }
  }

  sub_1D17D6C50();
  v12 = *(v3 + 112);
  if (v12)
  {
    v13 = v12;
    v14 = sub_1D17EB4C0();
    [v14 registerPowerSpectrumForStreamToken_];

    swift_beginAccess();
    sub_1D1763C3C(&v23, a2);
    swift_endAccess();
  }

  sub_1D17D6DC0(a1 & 1, a2, 0, 0, 0);
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v15 = sub_1D1E6709C();
  __swift_project_value_buffer(v15, qword_1EC64F3F8);
  v16 = sub_1D1E6707C();
  v17 = sub_1D1E6835C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v22[0] = v19;
    *v18 = 136315906;
    *(v18 + 4) = sub_1D1B1312C(0xD000000000000028, 0x80000001D1EB9650, v22);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1D1B1312C(0xD00000000000001BLL, 0x80000001D1EB9680, v22);
    *(v18 + 22) = 2080;
    if (a1)
    {
      v20 = 0x676E696F6774756FLL;
    }

    else
    {
      v20 = 0x676E696D6F636E69;
    }

    v21 = sub_1D1B1312C(v20, 0xE800000000000000, v22);

    *(v18 + 24) = v21;
    *(v18 + 32) = 2048;
    *(v18 + 34) = a2;
    _os_log_impl(&dword_1D16EC000, v16, v17, "%s-%s source: %s, token: %ld", v18, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v19, -1, -1);
    MEMORY[0x1D3893640](v18, -1, -1);
  }
}

void sub_1D17D4B60(char a1)
{
  v2 = 120;
  if (a1)
  {
    v2 = 136;
  }

  v3 = 128;
  if (a1)
  {
    v3 = 144;
  }

  if ((*(v1 + v3) & 1) == 0)
  {
    v4 = v1;
    v6 = *(v1 + v2);
    v7 = *(v1 + 112);
    if (v7)
    {
      v8 = v7;
      v9 = sub_1D17EB4C0();
      [v9 unregisterPowerSpectrumForStreamToken_];

      swift_beginAccess();
      sub_1D1AE0748(v6);
      swift_endAccess();
    }

    sub_1D17D6DC0(a1 & 1, 0, 1, 0, 0);
    if (*(v4 + 128) == 1 && (*(v4 + 144) & 1) != 0)
    {
      v10 = *(v4 + 112);
      *(v4 + 112) = 0;
    }

    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v11 = sub_1D1E6709C();
    __swift_project_value_buffer(v11, qword_1EC64F3F8);
    v12 = sub_1D1E6707C();
    v13 = sub_1D1E6835C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18[0] = v15;
      *v14 = 136315906;
      *(v14 + 4) = sub_1D1B1312C(0xD000000000000028, 0x80000001D1EB9650, v18);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_1D1B1312C(0xD000000000000014, 0x80000001D1EB96A0, v18);
      *(v14 + 22) = 2080;
      if (a1)
      {
        v16 = 0x676E696F6774756FLL;
      }

      else
      {
        v16 = 0x676E696D6F636E69;
      }

      v17 = sub_1D1B1312C(v16, 0xE800000000000000, v18);

      *(v14 + 24) = v17;
      *(v14 + 32) = 2048;
      *(v14 + 34) = v6;
      _os_log_impl(&dword_1D16EC000, v12, v13, "%s-%s source: %s, token: %ld", v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v15, -1, -1);
      MEMORY[0x1D3893640](v14, -1, -1);
    }
  }
}

uint64_t CameraController.description.getter()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = 91;
  v15[1] = 0xE100000000000000;
  v5 = *(v0 + 120);
  v6 = [v5 accessory];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 name];

    v9 = sub_1D1E6781C();
    v11 = v10;
  }

  else
  {
    v11 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x1D3890F70](v9, v11);

  MEMORY[0x1D3890F70](47, 0xE100000000000000);
  v12 = [v5 uniqueIdentifier];
  sub_1D1E66A5C();

  sub_1D17D8E60(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v13 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v13);

  (*(v2 + 8))(v4, v1);
  MEMORY[0x1D3890F70](93, 0xE100000000000000);
  return v15[0];
}

uint64_t sub_1D17D5004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D17D5028, 0, 0);
}

uint64_t sub_1D17D5028()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    *(v0 + 40) = *(v0 + 64);

    return MEMORY[0x1EEE6DFA0](sub_1D17D50E8, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1D17D50E8()
{
  sub_1D17D51B4((v0 + 40));

  return MEMORY[0x1EEE6DFA0](sub_1D17D5154, 0, 0);
}

uint64_t sub_1D17D5154()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D17D51B4(uint64_t *a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - v6;
  v8 = sub_1D1E669FC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  v15 = OBJC_IVAR____TtC13HomeDataModel16CameraController_previousSnapshotCallTime;
  swift_beginAccess();
  v37 = v15;
  sub_1D1741C08(v2 + v15, v7, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D1741A30(v7, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_10:
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v28 = sub_1D1E6709C();
    __swift_project_value_buffer(v28, qword_1EC64F3F8);

    v29 = sub_1D1E6707C();
    v30 = sub_1D1E6835C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v39[0] = v33;
      *v31 = 138412546;
      *(v31 + 4) = v2;
      *v32 = v2;
      *(v31 + 12) = 2080;

      *(v31 + 14) = sub_1D1B1312C(0xD000000000000022, 0x80000001D1EB97B0, v39);
      _os_log_impl(&dword_1D16EC000, v29, v30, "%@ %s taking snapshot", v31, 0x16u);
      sub_1D1741A30(v32, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1D3893640](v33, -1, -1);
      MEMORY[0x1D3893640](v31, -1, -1);
    }

    v34 = v38;
    _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
    (*(v9 + 56))(v34, 0, 1, v8);
    v35 = v37;
    swift_beginAccess();
    sub_1D17B648C(v34, v2 + v35);
    swift_endAccess();
    v36 = [*(v2 + 120) snapshotControl];
    [v36 takeSnapshot];

    return;
  }

  (*(v9 + 32))(v14, v7, v8);
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  sub_1D1E669DC();
  v17 = v16;
  v18 = *(v9 + 8);
  v18(v12, v8);
  v19 = sub_1D1E6931C();
  if (v20 * 1.0e-18 + v19 <= v17)
  {
    v18(v14, v8);
    goto LABEL_10;
  }

  v38 = v8;
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v21 = sub_1D1E6709C();
  __swift_project_value_buffer(v21, qword_1EC64F3F8);

  v22 = sub_1D1E6707C();
  v23 = sub_1D1E6835C();

  v24 = v14;
  if (os_log_type_enabled(v22, v23))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v39[0] = v27;
    *v25 = 138412546;
    *(v25 + 4) = v2;
    *v26 = v2;
    *(v25 + 12) = 2080;

    *(v25 + 14) = sub_1D1B1312C(0xD000000000000022, 0x80000001D1EB97B0, v39);
    _os_log_impl(&dword_1D16EC000, v22, v23, "%@ %s returning early because enough time hasn't elapsed", v25, 0x16u);
    sub_1D1741A30(v26, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1D3893640](v27, -1, -1);
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v18(v24, v38);
}

uint64_t sub_1D17D57A8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 72) = v13;
  *(v9 + 80) = v14;
  *(v9 + 56) = v12;
  *(v9 + 40) = a8;
  *(v9 + 48) = a9;
  *(v9 + 32) = a7;
  *(v9 + 24) = a1;
  *(v9 + 168) = a6;
  *(v9 + 16) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F40, &qword_1D1E74630);
  *(v9 + 88) = swift_task_alloc();
  *(v9 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F48, &qword_1D1E74638);
  *(v9 + 104) = swift_task_alloc();
  *(v9 + 112) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F50, &qword_1D1E74640);
  *(v9 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17D58E0, 0, 0);
}

uint64_t sub_1D17D58E0()
{
  v19 = v0;
  if ((*(v0 + 168) & 1) != 0 || *(v0 + 16) >= *(v0 + 24))
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v6 = sub_1D1E6709C();
    __swift_project_value_buffer(v6, qword_1EC64F3F8);

    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6835C();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = *(v0 + 40);
      v9 = *(v0 + 48);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_1D1B1312C(v10, v9, &v18);
      *(v11 + 12) = 2080;
      v13 = sub_1D1E6932C();
      v15 = sub_1D1B1312C(v13, v14, &v18);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_1D16EC000, v7, v8, "%s starting periodic snapshots, interval: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v12, -1, -1);
      MEMORY[0x1D3893640](v11, -1, -1);
    }

    v17 = (*(v0 + 72) + **(v0 + 72));
    v16 = swift_task_alloc();
    *(v0 + 144) = v16;
    *v16 = v0;
    v16[1] = sub_1D17D6038;

    return v17();
  }

  else
  {
    v1 = sub_1D1E693AC();
    v3 = v2;
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_1D17D5C04;

    return sub_1D1A014C4(v1, v3, 0, 0, 1);
  }
}

uint64_t sub_1D17D5C04()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D17D5D64, 0, 0);
  }
}

uint64_t sub_1D17D5D64()
{
  v17 = v0;
  v1 = v0[17];
  sub_1D1E67F9C();
  if (v1)
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v4 = sub_1D1E6709C();
    __swift_project_value_buffer(v4, qword_1EC64F3F8);

    v5 = sub_1D1E6707C();
    v6 = sub_1D1E6835C();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[5];
      v7 = v0[6];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_1D1B1312C(v8, v7, v16);
      *(v9 + 12) = 2080;
      v11 = sub_1D1E6932C();
      v13 = sub_1D1B1312C(v11, v12, v16);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_1D16EC000, v5, v6, "%s starting periodic snapshots, interval: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v10, -1, -1);
      MEMORY[0x1D3893640](v9, -1, -1);
    }

    v15 = (v0[9] + *v0[9]);
    v14 = swift_task_alloc();
    v0[18] = v14;
    *v14 = v0;
    v14[1] = sub_1D17D6038;

    return v15();
  }
}

uint64_t sub_1D17D6038()
{

  return MEMORY[0x1EEE6DFA0](sub_1D17D6134, 0, 0);
}

uint64_t sub_1D17D6134()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[4];
  v6 = sub_1D1E68A8C();
  (*(*(v6 - 8) + 16))(v1, v5, v6);
  v7 = (v1 + *(v2 + 36));
  *v7 = v4;
  v7[1] = v3;
  v8 = v1 + *(v2 + 40);
  *v8 = xmmword_1D1E74340;
  *(v8 + 16) = 0;
  sub_1D1E66F7C();
  sub_1D1741A30(v1, &qword_1EC643F48, &qword_1D1E74638);
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_1D17D6278;
  v10 = v0[14];
  v11 = v0[11];

  return MEMORY[0x1EEDEE7F8](v11, v10);
}

uint64_t sub_1D17D6278()
{

  return MEMORY[0x1EEE6DFA0](sub_1D17D6374, 0, 0);
}

uint64_t sub_1D17D6374()
{
  v1 = v0[11];
  v2 = sub_1D1E68A6C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[15];
    v4 = &qword_1EC643F50;
    v5 = &qword_1D1E74640;
LABEL_5:
    sub_1D1741A30(v3, v4, v5);

    v7 = v0[1];

    return v7();
  }

  if (sub_1D1E67F7C())
  {
    v6 = v0[11];
    sub_1D1741A30(v0[15], &qword_1EC643F50, &qword_1D1E74640);
    v4 = &qword_1EC643F40;
    v5 = &qword_1D1E74630;
    v3 = v6;
    goto LABEL_5;
  }

  v10 = (v0[9] + *v0[9]);
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_1D17D6558;

  return v10();
}

uint64_t sub_1D17D6558()
{

  return MEMORY[0x1EEE6DFA0](sub_1D17D6654, 0, 0);
}

uint64_t sub_1D17D6654()
{
  sub_1D1741A30(v0[11], &qword_1EC643F40, &qword_1D1E74630);
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_1D17D6278;
  v2 = v0[14];
  v3 = v0[11];

  return MEMORY[0x1EEDEE7F8](v3, v2);
}

void CameraController.id.getter()
{
  v1 = [*(v0 + 120) uniqueIdentifier];
  sub_1D1E66A5C();
}

void sub_1D17D681C()
{
  v1 = [*(*v0 + 120) uniqueIdentifier];
  sub_1D1E66A5C();
}

uint64_t type metadata accessor for CameraController(uint64_t a1)
{
  result = qword_1EC643EE8;
  if (!qword_1EC643EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D17D68D4(uint64_t a1)
{
  sub_1D17D6B38();
  if (v1 <= 0x3F)
  {
    sub_1D17B77BC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of CameraController.reset()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x168);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D17C4CF0;

  return v5();
}

void sub_1D17D6B38()
{
  if (!qword_1EC643EF8)
  {
    v0 = sub_1D1E67EEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC643EF8);
    }
  }
}

uint64_t sub_1D17D6B88()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_1D18D7A60(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F90, &unk_1D1E746F0);
  v3 = swift_allocObject();
  *(v3 + 48) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = v2;
  *(v0 + 160) = v3;
  *(v0 + 168) = 10;
  *(v0 + 176) = 0;
  v4 = sub_1D18D7A60(v1);
  v5 = swift_allocObject();
  *(v5 + 48) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = v4;
  *(v0 + 184) = v5;
  *(v0 + 192) = 10;
  *(v0 + 200) = 0;
  return v0;
}

uint64_t sub_1D17D6C50()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - v4;
  if (!*(v0 + 112))
  {
    v6 = objc_allocWithZone(type metadata accessor for PowerSpectrumMeter(0));
    v7 = sub_1D17EB684(6, 0.0666666667);
    v8 = *(v0 + 112);
    *(v0 + 112) = v7;
    v9 = v7;

    v10 = sub_1D1E67E7C();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v9;
    v12[5] = v11;
    *(v1 + 152) = sub_1D17C6EF0(0, 0, v5, &unk_1D1E74578, v12);
  }

  return result;
}

uint64_t sub_1D17D6DC0(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    *(v5 + 136) = a2;
    *(v5 + 144) = a3 & 1;
    v8 = swift_beginAccess();
    v9 = *(v5 + 184);
    v20 = a4;
    v21 = a5;
    MEMORY[0x1EEE9AC00](v8);
    os_unfair_lock_lock((v9 + 48));
    sub_1D17D8550((v9 + 16), &v19);
    os_unfair_lock_unlock((v9 + 48));
    v10 = v19;
    MEMORY[0x1EEE9AC00](v11);
    v18 = &v20;
    v12 = sub_1D17D867C;
  }

  else
  {
    *(v5 + 120) = a2;
    *(v5 + 128) = a3 & 1;
    v13 = swift_beginAccess();
    v14 = *(v5 + 160);
    v20 = a4;
    v21 = a5;
    MEMORY[0x1EEE9AC00](v13);
    os_unfair_lock_lock((v14 + 48));
    sub_1D17D8F70((v14 + 16), &v19);
    os_unfair_lock_unlock((v14 + 48));
    v10 = v19;
    MEMORY[0x1EEE9AC00](v15);
    v18 = &v20;
    v12 = sub_1D17D8F88;
  }

  sub_1D1D39098(v12, &v17, v10);

  return swift_endAccess();
}

uint64_t sub_1D17D6F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F30, &qword_1D1E74588);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17D7058, 0, 0);
}

uint64_t sub_1D17D7058()
{
  v1 = v0[8];
  v0[7] = v1;
  type metadata accessor for PowerSpectrumMeter(0);
  sub_1D17D8E60(&qword_1EC6445C0, type metadata accessor for PowerSpectrumMeter, &unk_1D1E75930);
  v2 = v1;
  sub_1D1E6801C();
  swift_beginAccess();
  sub_1D17D8EA8(&qword_1EC6445B0, &qword_1EC643F30, &qword_1D1E74588, MEMORY[0x1E69E8690]);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1D17D71C4;

  return MEMORY[0x1EEE6D8D0](v0 + 5, 0, 0);
}

uint64_t sub_1D17D71C4()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D17D72D4, 0, 0);
  }

  return result;
}

uint64_t sub_1D17D72D4()
{
  v1 = v0[6];
  v0[14] = v0[5];
  v0[15] = v1;
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    v0[16] = Strong;
    if (Strong)
    {

      return MEMORY[0x1EEE6DFA0](sub_1D17D73C8, Strong, 0);
    }

    (*(v0[11] + 8))(v0[12], v0[10]);
  }

  else
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D17D73C8()
{
  sub_1D17D7528(*(v0 + 112), *(v0 + 120));

  return MEMORY[0x1EEE6DFA0](sub_1D17D7440, 0, 0);
}

uint64_t sub_1D17D7440()
{

  sub_1D17D8EA8(&qword_1EC6445B0, &qword_1EC643F30, &qword_1D1E74588, MEMORY[0x1E69E8690]);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1D17D71C4;

  return MEMORY[0x1EEE6D8D0](v0 + 40, 0, 0);
}

uint64_t sub_1D17D7528(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1D178D0B4(0, v4, 0);
    v5 = v29;
    v7 = (a2 + 32);
    v8 = *(v29 + 16);
    do
    {
      v9 = (fmaxf(*v7, -115.0) + 115.0) * 0.011765;
      if (*v7 >= -30.0)
      {
        v10 = 1.0;
      }

      else
      {
        v10 = v9;
      }

      if ((LODWORD(v10) & 0x7FFFFF) != 0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v10;
      }

      if ((~LODWORD(v10) & 0x7F800000) != 0)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      v29 = v5;
      v13 = *(v5 + 24);
      if (v8 >= v13 >> 1)
      {
        sub_1D178D0B4((v13 > 1), v8 + 1, 1);
        v5 = v29;
      }

      *(v5 + 16) = v8 + 1;
      *(v5 + 4 * v8 + 32) = v12;
      ++v7;
      ++v8;
      --v4;
    }

    while (v4);
  }

  if ((*(v2 + 128) & 1) == 0 && *(v2 + 120) == a1)
  {
    v14 = v5;
    v15 = swift_beginAccess();
    v16 = *(v2 + 160);
    v27 = 0;
    v28 = v14;
    MEMORY[0x1EEE9AC00](v15);
    os_unfair_lock_lock((v16 + 48));
    sub_1D17D8F70((v16 + 16), &v26);
    os_unfair_lock_unlock((v16 + 48));
    v17 = v26;
    MEMORY[0x1EEE9AC00](v18);
    v25 = &v27;
LABEL_21:
    sub_1D1D39098(sub_1D17D8F88, &v24, v17);

    return swift_endAccess();
  }

  if ((*(v2 + 144) & 1) == 0 && *(v2 + 136) == a1)
  {
    v19 = sub_1D17D7874(v5, &unk_1F4D61830);

    v20 = swift_beginAccess();
    v21 = *(v2 + 184);
    v27 = 1;
    v28 = v19;
    MEMORY[0x1EEE9AC00](v20);
    os_unfair_lock_lock((v21 + 48));
    sub_1D17D8F70((v21 + 16), &v26);
    os_unfair_lock_unlock((v21 + 48));
    v17 = v26;
    MEMORY[0x1EEE9AC00](v22);
    v25 = &v27;
    goto LABEL_21;
  }
}

uint64_t sub_1D17D7874(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v27 = MEMORY[0x1E69E7CC0];
  sub_1D178D0B4(0, v6, 0);
  result = v27;
  v26 = v4;
  v24 = a1;
  v25 = a2;
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = (a2 + 32);
    v10 = v6;
    v11 = v5;
    v12 = v5;
    while (v4)
    {
      if (!v11)
      {
        goto LABEL_23;
      }

      v13 = *v8;
      v14 = *v9;
      v28 = result;
      v16 = *(result + 16);
      v15 = *(result + 24);
      if (v16 >= v15 >> 1)
      {
        v23 = v12;
        sub_1D178D0B4((v15 > 1), v16 + 1, 1);
        v12 = v23;
        result = v28;
      }

      --v11;
      *(result + 16) = v16 + 1;
      *(result + 4 * v16 + 32) = v13 * v14;
      --v4;
      ++v9;
      ++v8;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v5;
LABEL_13:
  if (v26 > v12)
  {
    while (v6 < v26)
    {
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      if (v12 != v6)
      {
        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v18 = *(v24 + 32 + 4 * v6);
        v19 = *(v25 + 32 + 4 * v6);
        v29 = result;
        v21 = *(result + 16);
        v20 = *(result + 24);
        if (v21 >= v20 >> 1)
        {
          v22 = v12;
          sub_1D178D0B4((v20 > 1), v21 + 1, 1);
          v12 = v22;
          result = v29;
        }

        *(result + 16) = v21 + 1;
        *(result + 4 * v21 + 32) = v18 * v19;
        ++v6;
        if (v17 != v26)
        {
          continue;
        }
      }

      return result;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D17D7A50(os_unfair_lock_s *a1, uint64_t a2, char a3)
{
  v25 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F28, &unk_1D1E74560);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0);
  v26 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F78, &qword_1D1E746D8);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  if (a3)
  {
    (*(v13 + 104))(&v25 - v17, *MEMORY[0x1E69E8650], v12);
  }

  else
  {
    *v16 = v25;
    (*(v13 + 104))(v16, *MEMORY[0x1E69E8640], v12);
    (*(v13 + 32))(v18, v16, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F80, &unk_1D1E746E0);
  v19 = sub_1D1E67E8C();
  MEMORY[0x1EEE9AC00](v19);
  *(&v25 - 2) = v11;

  os_unfair_lock_lock(a1 + 12);
  sub_1D17D8F44(&a1[4], &v29);
  os_unfair_lock_unlock(a1 + 12);
  v20 = v29;
  v21 = v30;
  v22 = v31;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v20;
  sub_1D1E67EAC();
  v29 = v21;
  v30 = v22;
  sub_1D1E67ECC();
  (*(v27 + 8))(v8, v28);
  (*(v13 + 8))(v18, v12);
  return (*(v26 + 8))(v11, v9);
}

uint64_t sub_1D17D7DE8(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F88, &unk_1D1E97C60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - v6;
  os_unfair_lock_lock(a2 + 12);
  sub_1D17D7EAC(&a2[4], a3, v7);
  os_unfair_lock_unlock(a2 + 12);
  return sub_1D1741A30(v7, &qword_1EC643F88, &unk_1D1E97C60);
}

uint64_t sub_1D17D7EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1D17420B0(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(a1 + 24);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D1734858();
    }

    v10 = *(v9 + 56);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0);
    v12 = *(v11 - 8);
    (*(v12 + 32))(a3, v10 + *(v12 + 72) * v7, v11);
    sub_1D174F3D0(v7, v9);
    *(a1 + 24) = v9;
    return (*(v12 + 56))(a3, 0, 1, v11);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0);
    return (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
  }
}

uint64_t sub_1D17D8030@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F88, &unk_1D1E97C60);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = a1[2];
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    a1[2] = v10 + 1;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0);
    v12 = *(v11 - 8);
    (*(v12 + 16))(v9, a2, v11);
    (*(v12 + 56))(v9, 0, 1, v11);
    sub_1D1B0CBA8(v9, v10);
    v14 = *a1;
    v13 = a1[1];
    *a3 = v10;
    a3[1] = v14;
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_1D17D817C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = a3;
  if (*a2)
  {
    v4 = sub_1D17D823C;
  }

  else
  {
    v4 = sub_1D17D81B4;
  }

  return MEMORY[0x1EEE6DFA0](v4, a3, 0);
}

uint64_t sub_1D17D81B4()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  sub_1D17D7A50(*(v1 + 160), *(v1 + 168), *(v1 + 176));
  swift_endAccess();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D17D823C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  sub_1D17D7A50(*(v1 + 184), *(v1 + 192), *(v1 + 200));
  swift_endAccess();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D17D82C4(uint64_t a1, _BYTE *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D17C4BFC;

  return sub_1D17D817C(a1, a2, v2);
}

uint64_t sub_1D17D837C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D17CB228(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D17D8444(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D17CB45C(a1, v5, v4);
}

uint64_t sub_1D17D84EC@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];

  *a1 = v6;
  a1[1] = v5;
  *a3 = a1[3];
}

uint64_t sub_1D17D856C(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F28, &unk_1D1E74560);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = a2[1];
  v9[0] = *a2;
  v9[1] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0);
  sub_1D1E67ECC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D17D8698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = *a4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4BFC;

  return sub_1D17D6F8C(a1, a2, a3, v10, a5);
}

uint64_t sub_1D17D8760(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D17D8698(a1, v4, v5, v1 + 4, v6);
}

uint64_t sub_1D17D8844(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D17C4CF0;

  return sub_1D17D3008(a1, a2, v7, v6);
}

uint64_t sub_1D17D88F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D17C4CF0;

  return sub_1D17D3444(v2, v3, v5, v4);
}

uint64_t sub_1D17D89A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return sub_1D17D42B8(a1, v4);
}

uint64_t sub_1D17D8A44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D17D4588(a1, v4);
}

unint64_t sub_1D17D8AE4()
{
  result = qword_1EC643058;
  if (!qword_1EC643058)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC643058);
  }

  return result;
}

uint64_t sub_1D17D8B30()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D17C4CF0;

  return sub_1D17D5004(v2, v3, v4);
}

uint64_t sub_1D17D8BD8(uint64_t a1)
{
  v3 = *(sub_1D1E68A8C() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v14 = *(v1 + 16);
  v13 = *(v1 + 24);
  v12 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D17C4CF0;

  return sub_1D17D57A8(v6, a1, v14, v13, v12, v5, v1 + v4, v8, v9);
}

id sub_1D17D8D68(id result, id a2, void *a3, char a4)
{
  v4 = a2;
  if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }
  }

  else
  {
    result = a2;
    v4 = a3;
  }

  v5 = result;

  return v4;
}

void sub_1D17D8DC4(id a1, id a2, void *a3, char a4)
{
  v4 = a2;
  if (a4)
  {
    if (a4 != 1)
    {
      return;
    }
  }

  else
  {
    a1 = a2;
    v4 = a3;
  }
}

uint64_t sub_1D17D8E60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D17D8EA8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D17D8EF0()
{
  result = qword_1EC643F70;
  if (!qword_1EC643F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643F70);
  }

  return result;
}

char *sub_1D17D8FA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v15 = 0;
    v16 = 0;
    v3 = (a2 + 56);
    v4 = MEMORY[0x1E69E7CC0];
    v14 = -1;
    do
    {
      v6 = *(v3 - 3);
      v5 = *(v3 - 2);
      v7 = *(v3 - 1);
      v8 = *v3;
      if (v8 < 0)
      {
        sub_1D17D8D68(*(v3 - 3), *(v3 - 2), *(v3 - 1), v8 & 0x7F);
        sub_1D17D8D68(v6, v5, v7, v8 & 0x7F);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1D177D62C(0, *(v4 + 2) + 1, 1, v4);
        }

        v10 = *(v4 + 2);
        v9 = *(v4 + 3);
        if (v10 >= v9 >> 1)
        {
          v4 = sub_1D177D62C((v9 > 1), v10 + 1, 1, v4);
        }

        sub_1D17D9114(v6, v5, v7, v8);
        *(v4 + 2) = v10 + 1;
        v11 = &v4[32 * v10];
        *(v11 + 4) = v6;
        *(v11 + 5) = v5;
        *(v11 + 6) = v7;
        v11[56] = v8 & 0x7F;
      }

      else
      {
        v15 = *(v3 - 2);
        v16 = *(v3 - 3);
        v14 = *(v3 - 1);
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    v14 = -1;
  }

  *a1 = v16;
  *(a1 + 8) = v15;
  *(a1 + 16) = v14;
  return v4;
}

void sub_1D17D9114(void *a1, void *a2, void *a3, char a4)
{
  if (a4 < 0)
  {
    sub_1D17D8DC4(a1, a2, a3, a4 & 0x7F);
  }
}

char *CameraController.__allocating_init(cameraProfile:)(void *a1)
{
  v3[0] = 0;
  v3[1] = 0;
  v4 = 2;
  type metadata accessor for CameraController(0);
  swift_allocObject();
  return sub_1D17CA954(a1, v3);
}

void sub_1D17D917C(char *a1@<X8>)
{
  v3 = [v1 accessory];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isReachable];

    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v1 userSettings];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 isCameraManuallyDisabled];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v1 userSettings];
  if (v10 && (v11 = v10, v12 = [v10 currentAccessMode], v11, v12 <= 3))
  {
    v13 = qword_1D1E74C98[v12];
  }

  else
  {
    v13 = 0;
  }

  if (v6)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  if ((v6 | v9))
  {
    goto LABEL_43;
  }

  if (v13 == 1)
  {
    v14 = 3;
    goto LABEL_43;
  }

  if (v13 == 2)
  {
    v14 = 4;
    goto LABEL_43;
  }

  v15 = [v1 accessory];
  if (!v15)
  {
LABEL_42:
    v14 = 0;
    goto LABEL_43;
  }

  v16 = v15;
  v17 = [v15 services];

  sub_1D17DAA94();
  v18 = sub_1D1E67C1C();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_40:
  v19 = sub_1D1E6873C();
  if (!v19)
  {
LABEL_41:

    goto LABEL_42;
  }

LABEL_22:
  v20 = 0;
  while (1)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1D3891EF0](v20, v18);
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v21 = *(v18 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if ([v21 hasOperatingState] && objc_msgSend(v22, sel_lastKnownOperatingState) == 2 && (objc_msgSend(v22, sel_hasOperatingStateAbnormalReasons) & 1) != 0)
    {
      break;
    }

    ++v20;
    if (v23 == v19)
    {
      goto LABEL_41;
    }
  }

  if (([v22 lastKnownOperatingStateAbnormalReasons] & 2) != 0)
  {

    v14 = 5;
  }

  else
  {
    v24 = [v22 lastKnownOperatingStateAbnormalReasons];

    if ((v24 & 4) != 0)
    {
      v14 = 6;
    }

    else
    {
      v14 = 1;
    }
  }

LABEL_43:
  *a1 = v14;
}

uint64_t CameraController.Availability.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C62616C69617661;
  v3 = 0x646C6F436F6F74;
  if (v1 != 5)
  {
    v3 = 0x746F486F6F74;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x6341746365746564;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6863616552746F6ELL;
  if (v1 != 1)
  {
    v5 = 2037609826;
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

void CameraController.Resolution.videoResolutions.getter()
{
  v1 = *v0;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      if (qword_1EC642148 != -1)
      {
        swift_once();
      }

      if (*(qword_1EC6BE080 + 16))
      {
        sub_1D174218C();
        if (v4)
        {
          goto LABEL_25;
        }

        goto LABEL_35;
      }

      __break(1u);
    }

    else
    {
      if (v1 != 3)
      {
        if (qword_1EC642148 == -1)
        {
LABEL_19:
          if (*(qword_1EC6BE080 + 16))
          {
            sub_1D174218C();
            if (v5)
            {
              goto LABEL_25;
            }

            goto LABEL_37;
          }

          __break(1u);
LABEL_31:
          swift_once();
          goto LABEL_10;
        }

LABEL_29:
        swift_once();
        goto LABEL_19;
      }

      if (qword_1EC642148 == -1)
      {
LABEL_5:
        if (*(qword_1EC6BE080 + 16))
        {
          sub_1D174218C();
          if (v2)
          {
            goto LABEL_25;
          }

          goto LABEL_36;
        }

        __break(1u);
        goto LABEL_29;
      }
    }

    swift_once();
    goto LABEL_5;
  }

  if (*v0)
  {
    if (qword_1EC642148 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

  if (qword_1EC642148 != -1)
  {
    goto LABEL_31;
  }

LABEL_10:
  if (*(qword_1EC6BE080 + 16))
  {
    sub_1D174218C();
    if (v3)
    {

      return;
    }

    goto LABEL_38;
  }

  __break(1u);
LABEL_33:
  swift_once();
LABEL_23:
  if (!*(qword_1EC6BE080 + 16))
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_1D174218C();
  if (v6)
  {
LABEL_25:

    CameraController.Resolution.videoResolutions.getter();
    sub_1D17A3CF8(v7);
    return;
  }

LABEL_39:
  __break(1u);
}

uint64_t CameraController.StreamState.description.getter()
{
  v1 = 0x6572747320746F6ELL;
  v2 = 0x6E696D6165727473;
  if (*v0 != 2)
  {
    v2 = 0x676E6970706F7473;
  }

  if (*v0)
  {
    v1 = 0x676E697472617473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t CameraController.StreamState.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D17D98A4()
{
  v1 = 0x6572747320746F6ELL;
  v2 = 0x6E696D6165727473;
  if (*v0 != 2)
  {
    v2 = 0x676E6970706F7473;
  }

  if (*v0)
  {
    v1 = 0x676E697472617473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

BOOL static CameraController.AudioMode.< infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = v3 == 1 || v2 != 1;
  v6 = v2 != 2 && v5;
  return v3 == 2 || v6;
}

uint64_t CameraController.AudioMode.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1D1E68C2C();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t CameraController.AudioMode.rawValue.getter()
{
  v1 = 0x676E696D6F636E69;
  if (*v0 != 1)
  {
    v1 = 0x7463657269646962;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646574756DLL;
  }
}

uint64_t sub_1D17D9A24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x676E696D6F636E69;
  if (v2 != 1)
  {
    v4 = 0x7463657269646962;
    v3 = 0xED00006C616E6F69;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x646574756DLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x676E696D6F636E69;
  if (*a2 != 1)
  {
    v8 = 0x7463657269646962;
    v7 = 0xED00006C616E6F69;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x646574756DLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D1E6904C();
  }

  return v11 & 1;
}

uint64_t sub_1D17D9B3C()
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D17D9BE8(uint64_t a1)
{
  sub_1D1E678EC();
}

uint64_t sub_1D17D9C80(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

void sub_1D17D9D34(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x676E696D6F636E69;
  if (v2 != 1)
  {
    v5 = 0x7463657269646962;
    v4 = 0xED00006C616E6F69;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x646574756DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

BOOL sub_1D17D9D9C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = v3 == 1 || v2 != 1;
  v6 = v2 != 2 && v5;
  return v3 == 2 || v6;
}

BOOL sub_1D17D9DC8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (v2 == 2)
  {
    return 0;
  }

  v4 = *a2;
  v6 = v2 != 1 && v4 == 1;
  return v4 == 2 || v6;
}

BOOL sub_1D17D9DFC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (v2 == 2)
  {
    return 0;
  }

  v4 = *a1;
  v6 = v2 != 1 && v4 == 1;
  return v4 == 2 || v6;
}

BOOL sub_1D17D9E30(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = v2 == 1 || v3 != 1;
  v6 = v3 != 2 && v5;
  return v2 == 2 || v6;
}

uint64_t CameraController.Availability.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1D1E68C2C();

  v6 = 7;
  if (v4 < 7)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1D17D9EE0(uint64_t a1)
{
  sub_1D1E678EC();
}

void sub_1D17DA014(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6C62616C69617661;
  v5 = 0xE700000000000000;
  v6 = 0x646C6F436F6F74;
  if (v2 != 5)
  {
    v6 = 0x746F486F6F74;
    v5 = 0xE600000000000000;
  }

  v7 = 0x80000001D1EB5AA0;
  v8 = 0xD000000000000012;
  if (v2 != 3)
  {
    v8 = 0x6341746365746564;
    v7 = 0xEE00797469766974;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC000000656C6261;
  v10 = 0x6863616552746F6ELL;
  if (v2 != 1)
  {
    v10 = 2037609826;
    v9 = 0xE400000000000000;
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

uint64_t CameraController.AccessMode.description.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x6120746365746564;
  v4 = 0x6D6165727473;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 6710895;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t CameraController.AccessMode.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 5;
  if (result < 5)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void CameraController.Resolution.init(size:displayScale:)(BOOL *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v4 = a2 * a4 * (a3 * a4);
  if (v4 >= 2560000.0)
  {
    *a1 = 4;
  }

  else if (v4 >= 2073600.0)
  {
    *a1 = 3;
  }

  else if (v4 >= 921600.0)
  {
    *a1 = 2;
  }

  else
  {
    *a1 = v4 >= 307200.0;
  }
}

uint64_t CameraController.Resolution.description.getter()
{
  v1 = *v0;
  v2 = 0x647261646E617473;
  v3 = 1751607656;
  v4 = 0x676968206C6C7566;
  if (v1 != 3)
  {
    v4 = 0x6968206172746C75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6465636E61686E65;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D17DA2F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643FE0, &qword_1D1E74C88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E74700;
  *(inited + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D1E74710;
  *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v1 + 40) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v1 + 48) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v1 + 56) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v1 + 64) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v1 + 72) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v1 + 80) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v1 + 88) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v1 + 96) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v1 + 104) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D1E74720;
  *(v2 + 32) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v2 + 40) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(inited + 56) = v2;
  *(inited + 64) = 2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D1E74730;
  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v3 + 40) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v3 + 48) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v3 + 56) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v3 + 64) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v3 + 72) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v3 + 80) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(inited + 72) = v3;
  *(inited + 80) = 3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D1E74740;
  *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v4 + 72) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v4 + 80) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v4 + 88) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(inited + 88) = v4;
  *(inited + 96) = 4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D1E74720;
  *(v5 + 32) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(v5 + 40) = [objc_allocWithZone(MEMORY[0x1E696CB30]) initWithVideoResolutionType_];
  *(inited + 104) = v5;
  v6 = sub_1D18D7C48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643FE8, &qword_1D1E74C90);
  result = swift_arrayDestroy();
  qword_1EC6BE080 = v6;
  return result;
}

uint64_t sub_1D17DA748()
{
  v1 = *v0;
  v2 = 0x647261646E617473;
  v3 = 1751607656;
  v4 = 0x676968206C6C7566;
  if (v1 != 3)
  {
    v4 = 0x6968206172746C75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6465636E61686E65;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1D17DA7E8()
{
  result = qword_1EC643F98;
  if (!qword_1EC643F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643F98);
  }

  return result;
}

unint64_t sub_1D17DA86C()
{
  result = qword_1EC643FB0;
  if (!qword_1EC643FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643FB0);
  }

  return result;
}

uint64_t sub_1D17DA8F0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D17DA948()
{
  result = qword_1EC643FC8;
  if (!qword_1EC643FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643FC8);
  }

  return result;
}

unint64_t sub_1D17DA99C()
{
  result = qword_1EC643FD0;
  if (!qword_1EC643FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643FD0);
  }

  return result;
}

unint64_t sub_1D17DA9F0()
{
  result = qword_1EC643FD8;
  if (!qword_1EC643FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643FD8);
  }

  return result;
}

unint64_t sub_1D17DAA94()
{
  result = qword_1EE079BD0;
  if (!qword_1EE079BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE079BD0);
  }

  return result;
}

Swift::Void __swiftcall CameraController.cameraStreamControlDidStartStream(_:)(HMCameraStreamControl a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  v8 = [(objc_class *)a1.super.super.isa streamState];
  if (v8 >= 4)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  if (qword_1EC642460 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC64F410);

  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6835C();

  if (os_log_type_enabled(v11, v12))
  {
    v21 = v5;
    isa = a1.super.super.isa;
    v24 = v4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25[0] = v15;
    *v13 = 138412802;
    *(v13 + 4) = v2;
    *v14 = v2;
    *(v13 + 12) = 2080;

    *(v13 + 14) = sub_1D1B1312C(0xD000000000000025, 0x80000001D1EB9840, v25);
    *(v13 + 22) = 2080;
    v22 = v9;
    if (v9 > 1u)
    {
      if (v9 == 2)
      {
        v16 = 0xE900000000000067;
        v17 = 0x6E696D6165727473;
        goto LABEL_16;
      }

      v16 = 0xE800000000000000;
      v18 = 0x6970706F7473;
    }

    else
    {
      if (!v9)
      {
        v16 = 0xED0000676E696D61;
        v17 = 0x6572747320746F6ELL;
LABEL_16:
        v19 = sub_1D1B1312C(v17, v16, v25);

        *(v13 + 24) = v19;
        _os_log_impl(&dword_1D16EC000, v11, v12, "%@ %s stream state: %s", v13, 0x20u);
        sub_1D179F28C(v14);
        MEMORY[0x1D3893640](v14, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v15, -1, -1);
        MEMORY[0x1D3893640](v13, -1, -1);

        a1.super.super.isa = isa;
        v4 = v24;
        v5 = v21;
        LOBYTE(v9) = v22;
        goto LABEL_17;
      }

      v16 = 0xE800000000000000;
      v18 = 0x697472617473;
    }

    v17 = v18 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
    goto LABEL_16;
  }

LABEL_17:
  v20 = [(objc_class *)a1.super.super.isa cameraStream];
  v25[0] = v9;
  v25[1] = v20;
  v25[2] = 0;
  v26 = 0x80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  sub_1D1E67ECC();
  (*(v5 + 8))(v7, v4);
}

uint64_t CameraController.cameraStreamControl(_:didStopStreamWithError:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - v8;
  v10 = [a1 streamState];
  if (v10 >= 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if (!a2)
  {
    if (qword_1EC642460 != -1)
    {
      swift_once();
    }

    v22 = sub_1D1E6709C();
    __swift_project_value_buffer(v22, qword_1EC64F410);

    v23 = sub_1D1E6707C();
    v24 = sub_1D1E6835C();

    if (!os_log_type_enabled(v23, v24))
    {

      goto LABEL_31;
    }

    v41 = v9;
    v43 = a1;
    v44 = v7;
    v45 = v6;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v11;
    v11 = swift_slowAlloc();
    v47[0] = v11;
    *v25 = 138412802;
    *(v25 + 4) = v3;
    *v26 = v3;
    *(v25 + 12) = 2080;

    *(v25 + 14) = sub_1D1B1312C(0xD00000000000002ELL, 0x80000001D1EB9870, v47);
    *(v25 + 22) = 2080;
    v42 = v27;
    if (v27 > 1u)
    {
      if (v27 == 2)
      {
        v28 = 0x6E696D6165727473;
        v29 = 0xE900000000000067;
        goto LABEL_30;
      }

      v29 = 0xE800000000000000;
      v36 = 0x6970706F7473;
    }

    else
    {
      if (!v27)
      {
        v28 = 0x6572747320746F6ELL;
        v29 = 0xED0000676E696D61;
LABEL_30:
        v9 = v41;
        v37 = sub_1D1B1312C(v28, v29, v47);

        *(v25 + 24) = v37;
        _os_log_impl(&dword_1D16EC000, v23, v24, "%@ %s stream state: %s", v25, 0x20u);
        sub_1D179F28C(v26);
        MEMORY[0x1D3893640](v26, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v11, -1, -1);
        MEMORY[0x1D3893640](v25, -1, -1);

        v7 = v44;
        v6 = v45;
        LOBYTE(v11) = v42;
        a1 = v43;
        goto LABEL_31;
      }

      v29 = 0xE800000000000000;
      v36 = 0x697472617473;
    }

    v28 = v36 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
    goto LABEL_30;
  }

  v12 = a2;
  if (qword_1EC642460 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6709C();
  __swift_project_value_buffer(v13, qword_1EC64F410);
  v14 = a2;

  v15 = sub_1D1E6707C();
  v16 = sub_1D1E6833C();

  if (os_log_type_enabled(v15, v16))
  {
    v41 = v9;
    v43 = a1;
    v44 = v7;
    v45 = v6;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v17 = 138413058;
    *(v17 + 4) = v3;
    *v18 = v3;
    *(v17 + 12) = 2080;

    *(v17 + 14) = sub_1D1B1312C(0xD00000000000002ELL, 0x80000001D1EB9870, v47);
    *(v17 + 22) = 2080;
    v42 = v11;
    if (v11 > 1u)
    {
      if (v11 == 2)
      {
        v20 = 0x6E696D6165727473;
        v21 = 0xE900000000000067;
        goto LABEL_26;
      }

      v21 = 0xE800000000000000;
      v30 = 0x6970706F7473;
    }

    else
    {
      if (!v11)
      {
        v20 = 0x6572747320746F6ELL;
        v21 = 0xED0000676E696D61;
LABEL_26:
        v31 = sub_1D1B1312C(v20, v21, v47);

        *(v17 + 24) = v31;
        *(v17 + 32) = 2080;
        v46 = a2;
        v32 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
        v33 = sub_1D1E6789C();
        v35 = sub_1D1B1312C(v33, v34, v47);

        *(v17 + 34) = v35;
        _os_log_impl(&dword_1D16EC000, v15, v16, "%@ %s stream state: %s error: %s", v17, 0x2Au);
        sub_1D179F28C(v18);
        MEMORY[0x1D3893640](v18, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v19, -1, -1);
        MEMORY[0x1D3893640](v17, -1, -1);

        v7 = v44;
        v6 = v45;
        LOBYTE(v11) = v42;
        a1 = v43;
        v9 = v41;
        goto LABEL_31;
      }

      v21 = 0xE800000000000000;
      v30 = 0x697472617473;
    }

    v20 = v30 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
    goto LABEL_26;
  }

LABEL_31:
  v38 = [a1 cameraStream];
  v47[0] = v11;
  v47[1] = v38;
  v47[2] = a2;
  v48 = 0x80;
  v39 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  sub_1D1E67ECC();
  return (*(v7 + 8))(v9, v6);
}

Swift::Void __swiftcall CameraController.cameraSnapshotControlDidUpdateMostRecentSnapshot(_:)(HMCameraSnapshotControl a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v27 - v6);
  v8 = [(objc_class *)a1.super.super.isa mostRecentSnapshot];
  if (v8)
  {
    v9 = v8;
    if (qword_1EC642460 != -1)
    {
      swift_once();
    }

    v10 = sub_1D1E6709C();
    __swift_project_value_buffer(v10, qword_1EC64F410);

    v11 = v9;
    v12 = sub_1D1E6707C();
    v13 = sub_1D1E6835C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v28 = v7;
      v15 = v14;
      v16 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29[0] = v27;
      *v15 = 138412802;
      *(v15 + 4) = v2;
      *v16 = v2;
      *(v15 + 12) = 2080;

      *(v15 + 14) = sub_1D1B1312C(0xD000000000000034, 0x80000001D1EB98A0, v29);
      *(v15 + 22) = 2112;
      *(v15 + 24) = v11;
      v16[1] = v9;
      v17 = v11;
      _os_log_impl(&dword_1D16EC000, v12, v13, "%@ %s snapshot: %@", v15, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v16, -1, -1);
      v18 = v27;
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1D3893640](v18, -1, -1);
      v19 = v15;
      v7 = v28;
      MEMORY[0x1D3893640](v19, -1, -1);
    }

    v29[1] = 0;
    v29[2] = 0;
    v29[0] = v9;
    v30 = -127;
    v20 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
    sub_1D1E67ECC();

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    if (qword_1EC642460 != -1)
    {
      swift_once();
    }

    v21 = sub_1D1E6709C();
    __swift_project_value_buffer(v21, qword_1EC64F410);

    v28 = sub_1D1E6707C();
    v22 = sub_1D1E6833C();

    if (os_log_type_enabled(v28, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29[0] = v25;
      *v23 = 138412546;
      *(v23 + 4) = v2;
      *v24 = v2;
      *(v23 + 12) = 2080;

      *(v23 + 14) = sub_1D1B1312C(0xD000000000000034, 0x80000001D1EB98A0, v29);
      _os_log_impl(&dword_1D16EC000, v28, v22, "%@ %s no snapshot present", v23, 0x16u);
      sub_1D179F28C(v24);
      MEMORY[0x1D3893640](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1D3893640](v25, -1, -1);
      MEMORY[0x1D3893640](v23, -1, -1);
    }

    else
    {
      v26 = v28;
    }
  }
}

uint64_t CameraController.cameraUserSettingsDidUpdate(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - v6;
  v8 = [a1 currentAccessMode];
  v9 = [a1 isCameraManuallyDisabled];
  if (qword_1EC642460 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC64F410);

  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6835C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = v9;
    v14 = v13;
    v15 = swift_slowAlloc();
    v28 = v15;
    v16 = swift_slowAlloc();
    v30 = v16;
    *v14 = 138413058;
    *(v14 + 4) = v2;
    *v15 = v2;
    v31 = v7;
    v32[0] = v16;
    *(v14 + 12) = 2080;

    *(v14 + 14) = sub_1D1B1312C(0xD00000000000001FLL, 0x80000001D1EB98E0, v32);
    v17 = 0xE400000000000000;
    *(v14 + 22) = 2080;
    v18 = 1701736302;
    v19 = 0x80000001D1EB9820;
    v20 = 0xEF79746976697463;
    v21 = 0x6120746365746564;
    if (v8 != 3)
    {
      v21 = 1701736302;
      v20 = 0xE400000000000000;
    }

    if (v8 == 2)
    {
      v21 = 0xD000000000000011;
    }

    else
    {
      v19 = v20;
    }

    if (v8 == 1)
    {
      v18 = 0x6D6165727473;
      v17 = 0xE600000000000000;
    }

    if (!v8)
    {
      v18 = 6710895;
      v17 = 0xE300000000000000;
    }

    if (v8 <= 1)
    {
      v22 = v18;
    }

    else
    {
      v22 = v21;
    }

    if (v8 <= 1)
    {
      v23 = v17;
    }

    else
    {
      v23 = v19;
    }

    v24 = sub_1D1B1312C(v22, v23, v32);

    *(v14 + 24) = v24;
    v7 = v31;
    *(v14 + 32) = 1024;
    *(v14 + 34) = v29;
    _os_log_impl(&dword_1D16EC000, v11, v12, "%@ %s updating accessMode: %s, isManuallyDisabled: %{BOOL}d", v14, 0x26u);
    v25 = v28;
    sub_1D179F28C(v28);
    MEMORY[0x1D3893640](v25, -1, -1);
    v26 = v30;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v26, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  memset(v32, 0, sizeof(v32));
  v33 = -126;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  sub_1D1E67ECC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D17DBE7C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

uint64_t sub_1D17DBEDC(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - v8;
  if (a2)
  {
    v10 = a2;
    if (qword_1EC642460 != -1)
    {
      swift_once();
    }

    v11 = sub_1D1E6709C();
    __swift_project_value_buffer(v11, qword_1EC64F410);
    v12 = a2;

    v13 = sub_1D1E6707C();
    v14 = sub_1D1E6833C();

    if (!os_log_type_enabled(v13, v14))
    {

      goto LABEL_12;
    }

    v15 = swift_slowAlloc();
    v44 = v9;
    v16 = v15;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v42 = a1;
    v19 = v18;
    v46[0] = v18;
    *v16 = 138412802;
    *(v16 + 4) = v3;
    *v17 = v3;
    *(v16 + 12) = 2080;
    v43 = v7;
    v20 = v6;

    *(v16 + 14) = sub_1D1B1312C(0xD000000000000027, 0x80000001D1EB9920, v46);
    *(v16 + 22) = 2080;
    v45 = a2;
    v21 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v22 = sub_1D1E6789C();
    v24 = sub_1D1B1312C(v22, v23, v46);

    *(v16 + 24) = v24;
    v6 = v20;
    v7 = v43;
    _os_log_impl(&dword_1D16EC000, v13, v14, "%@ %s error: %s", v16, 0x20u);
    sub_1D179F28C(v17);
    MEMORY[0x1D3893640](v17, -1, -1);
    swift_arrayDestroy();
    v25 = v19;
    a1 = v42;
    MEMORY[0x1D3893640](v25, -1, -1);
    v26 = v16;
    v9 = v44;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  else
  {
    if (qword_1EC642460 != -1)
    {
      swift_once();
    }

    v27 = sub_1D1E6709C();
    __swift_project_value_buffer(v27, qword_1EC64F410);
    v28 = a1;

    v13 = sub_1D1E6707C();
    v29 = sub_1D1E6835C();

    if (os_log_type_enabled(v13, v29))
    {
      v30 = swift_slowAlloc();
      v44 = v9;
      v31 = v30;
      v32 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v46[0] = v42;
      *v31 = 138412802;
      *(v31 + 4) = v3;
      *v32 = v3;
      v43 = v6;
      *(v31 + 12) = 2080;

      *(v31 + 14) = sub_1D1B1312C(0xD000000000000027, 0x80000001D1EB9920, v46);
      *(v31 + 22) = 2080;
      v45 = a1;
      v33 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644130, &qword_1D1E74CD8);
      v34 = sub_1D1E6789C();
      v36 = sub_1D1B1312C(v34, v35, v46);

      *(v31 + 24) = v36;
      v6 = v43;
      _os_log_impl(&dword_1D16EC000, v13, v29, "%@ %s snapshot: %s", v31, 0x20u);
      sub_1D179F28C(v32);
      MEMORY[0x1D3893640](v32, -1, -1);
      v37 = v42;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v37, -1, -1);
      v38 = v31;
      v9 = v44;
      MEMORY[0x1D3893640](v38, -1, -1);
    }
  }

LABEL_12:
  v46[0] = a1;
  v46[1] = a2;
  v46[2] = 0;
  v47 = -127;
  v39 = a2;
  v40 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  sub_1D1E67ECC();
  return (*(v7 + 8))(v9, v6);
}

uint64_t CameraController.StreamingOptions.description.getter()
{
  v1 = *v0;
  v2 = sub_1D18D4FC0(qword_1F4D5F418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F58, &unk_1D1E74CE0);
  swift_arrayDestroy();
  sub_1D17DC554(v2, v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F60, &qword_1D1E746D0);
  sub_1D17DC838();
  sub_1D17D8EF0();
  v3 = sub_1D1E67B0C();
  v5 = v4;

  MEMORY[0x1D3890F70](v3, v5);

  MEMORY[0x1D3890F70](93, 0xE100000000000000);
  return 91;
}

unint64_t *sub_1D17DC554(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1D17DC6C0(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1D17DC7B0(v10, v6, v4, a2);
  result = MEMORY[0x1D3893640](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

unint64_t *sub_1D17DC6C0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if ((*(*(a3 + 48) + 8 * v12) & ~a4) == 0)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_1D188AF90(result, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_1D188AF90(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1D17DC7B0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1D17DC6C0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t sub_1D17DC838()
{
  result = qword_1EC643F68;
  if (!qword_1EC643F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643F60, &qword_1D1E746D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643F68);
  }

  return result;
}

unint64_t sub_1D17DC8A0()
{
  result = qword_1EC6441A0;
  if (!qword_1EC6441A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6441A0);
  }

  return result;
}

unint64_t sub_1D17DC8F8()
{
  result = qword_1EC6441A8;
  if (!qword_1EC6441A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6441A8);
  }

  return result;
}

unint64_t sub_1D17DC94C()
{
  result = qword_1EC6441B0;
  if (!qword_1EC6441B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6441B0);
  }

  return result;
}

unint64_t sub_1D17DC9A4()
{
  result = qword_1EC6441B8;
  if (!qword_1EC6441B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6441B8);
  }

  return result;
}

double static CameraController.SnapshotInterval.frequent.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 3.86219022e-108;
  *a1 = xmmword_1D1E74F30;
  return result;
}

double static CameraController.SnapshotInterval.default.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 1.89253894e26;
  *a1 = xmmword_1D1E74330;
  return result;
}

double static CameraController.SnapshotInterval.infrequent.getter@<D0>(_OWORD *a1@<X8>)
{
  result = -9.63067605e-257;
  *a1 = xmmword_1D1E74F40;
  return result;
}

double static CameraController.SnapshotInterval.extended.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 1.23674724e130;
  *a1 = xmmword_1D1E74F50;
  return result;
}

uint64_t CameraController.SnapshotInterval.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E6938C();
  return sub_1D1E6926C();
}

uint64_t sub_1D17DCAC8()
{
  sub_1D1E6920C();
  sub_1D1E6938C();
  return sub_1D1E6926C();
}

uint64_t sub_1D17DCB1C(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E6938C();
  return sub_1D1E6926C();
}

unint64_t sub_1D17DCBF8()
{
  result = qword_1EC6441C0;
  if (!qword_1EC6441C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6441C0);
  }

  return result;
}

__n128 CameraController.State.mode.getter@<Q0>(__n128 *a1@<X8>)
{
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
  sub_1D1E66CAC();

  v3 = (v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__mode);
  swift_beginAccess();
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t CameraController.State.name.getter()
{
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
  sub_1D1E66CAC();

  v1 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name);

  return v1;
}

uint64_t sub_1D17DCDF4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name);
  v6 = *(v2 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name) == a1 && *(v2 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name + 8) == a2;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
    sub_1D1E66C9C();
  }
}

uint64_t sub_1D17DCF60(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability;
  result = sub_1D17A0574(*(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability), *a1);
  if (result)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
    sub_1D1E66C9C();
  }

  return result;
}

unsigned __int8 *sub_1D17DD07C(unsigned __int8 *result)
{
  if (*(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__streamState) != *result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
    sub_1D1E66C9C();
  }

  return result;
}

void sub_1D17DD18C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__snapshot;
  v5 = *(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__snapshot);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
    sub_1D1E66C9C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D1741B10(0, &qword_1EC644240, 0x1E696CB10);
  v6 = v5;
  v7 = a1;
  v8 = sub_1D1E684FC();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1D17DD324(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__stream;
  v5 = *(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__stream);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
    sub_1D1E66C9C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D1741B10(0, &qword_1EC644238, 0x1E696CB18);
  v6 = v5;
  v7 = a1;
  v8 = sub_1D1E684FC();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t CameraController.State.description.getter()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0x203A656D616ELL, 0xE600000000000000);
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
  sub_1D1E66CAC();

  v1 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name);
  v2 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name + 8);

  MEMORY[0x1D3890F70](v1, v2);

  v3 = 0xE800000000000000;
  MEMORY[0x1D3890F70](0x203A65646F6D202CLL, 0xE800000000000000);
  swift_getKeyPath();
  sub_1D1E66CAC();

  swift_beginAccess();
  v4 = CameraController.Mode.description.getter();
  MEMORY[0x1D3890F70](v4);

  MEMORY[0x1D3890F70](0x203A6F6D6564202CLL, 0xE800000000000000);
  if (*(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_isDemoCamera))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_isDemoCamera))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v5, v6);

  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EB9950);
  swift_getKeyPath();
  sub_1D1E66CAC();

  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0x6D6165727473202CLL, 0xEF203A6574617453);
  swift_getKeyPath();
  sub_1D1E66CAC();

  if (*(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__streamState) > 1u)
  {
    if (*(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__streamState) == 2)
    {
      v3 = 0xE900000000000067;
      v7 = 0x6E696D6165727473;
      goto LABEL_15;
    }

    v8 = 0x6970706F7473;
LABEL_14:
    v7 = v8 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
    goto LABEL_15;
  }

  if (*(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__streamState))
  {
    v8 = 0x697472617473;
    goto LABEL_14;
  }

  v3 = 0xED0000676E696D61;
  v7 = 0x6572747320746F6ELL;
LABEL_15:
  MEMORY[0x1D3890F70](v7, v3);

  MEMORY[0x1D3890F70](0x6D61657274730A2CLL, 0xEA0000000000203ALL);
  swift_getKeyPath();
  sub_1D1E66CAC();

  v9 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__stream);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6441F8, &qword_1D1E75140);
  v10 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v10);

  MEMORY[0x1D3890F70](0x687370616E73202CLL, 0xEC000000203A746FLL);
  swift_getKeyPath();
  sub_1D1E66CAC();

  v11 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__snapshot);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644130, &qword_1D1E74CD8);
  v12 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v12);

  return 0;
}

uint64_t CameraController.State.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_identifier;
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void (*sub_1D17DD9E8(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__mode;
  v5[11] = v8;
  v5[12] = v9;
  swift_beginAccess();
  return sub_1D17DDAE4;
}

void sub_1D17DDAE4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[11];
  if ((a2 & 1) == 0)
  {
    v5 = v3[9];
    v6 = v3[10];
    v7 = v3[8];
    v8 = v7 + v3[12];
    swift_getKeyPath();
    v3[7] = v7;
    sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
    sub_1D1E66CAC();

    v9 = *(v8 + 16);
    *v3 = *v8;
    v3[2] = v9;
    *(v3 + 24) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
    sub_1D1E67ECC();
    (*(v6 + 8))(v4, v5);
  }

  free(v4);

  free(v3);
}

__n128 sub_1D17DDC34@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
  sub_1D1E66CAC();

  v4 = (v3 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__mode);
  swift_beginAccess();
  v5 = v4[1].n128_u8[0];
  result = *v4;
  *a2 = *v4;
  a2[1].n128_u8[0] = v5;
  return result;
}

uint64_t sub_1D17DDD04(__int128 *a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = v1;
  return CameraController.State.mode.setter(&v3);
}

uint64_t type metadata accessor for CameraController.State(uint64_t a1)
{
  result = qword_1EC644218;
  if (!qword_1EC644218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CameraController.State.mode.setter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 16);
  v10 = (v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__mode);
  swift_beginAccess();
  v11 = *(v10 + 16);
  v15 = *v10;
  LOBYTE(v16) = v11;
  v18[0] = v7;
  v18[1] = v8;
  v19 = v9;
  if (_s13HomeDataModel16CameraControllerC4ModeO2eeoiySbAE_AEtFZ_0(&v15, v18))
  {
    *v10 = v7;
    *(v10 + 1) = v8;
    *(v10 + 16) = v9;
    swift_getKeyPath();
    *&v15 = v1;
    sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
    sub_1D1E66CAC();

    v12 = *(v10 + 16);
    v15 = *v10;
    v16 = v12;
    v17 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
    sub_1D1E67ECC();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v15 - 4) = v1;
    *(&v15 - 3) = v7;
    *(&v15 - 2) = v8;
    *(&v15 - 8) = v9;
    *&v15 = v1;
    sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
    sub_1D1E66C9C();
  }
}

uint64_t sub_1D17DE048(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12 = (a1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__mode);
  swift_beginAccess();
  *v12 = a2;
  *(v12 + 1) = a3;
  *(v12 + 16) = a4;
  swift_getKeyPath();
  *&v15 = a1;
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
  sub_1D1E66CAC();

  v13 = *(v12 + 16);
  v15 = *v12;
  v16 = v13;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  sub_1D1E67ECC();
  return (*(v9 + 8))(v11, v8);
}

uint64_t (*CameraController.State.mode.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D17DD9E8(v4);
  return sub_1D17DE34C;
}

void sub_1D17DE34C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1D1E66CBC();

  free(v1);
}

void *sub_1D17DE408(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
  sub_1D1E66CAC();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_1D17DE4B0@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
  sub_1D1E66CAC();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

uint64_t sub_1D17DE574@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
  sub_1D1E66CAC();

  v4 = *(v3 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name + 8);
  *a2 = *(v3 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name);
  a2[1] = v4;
}

uint64_t sub_1D17DE62C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1D17DCDF4(v1, v2);
}

uint64_t sub_1D17DE6F0@<X0>(void *a2@<X1>, _BYTE *a3@<X8>)
{
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
  sub_1D1E66CAC();

  *a3 = *(v3 + *a2);
  return result;
}

uint64_t sub_1D17DE7B4@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
  sub_1D1E66CAC();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_1D17DE8C0(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v38 = a5;
  v39 = a4;
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  v14 = a2[1];
  *(v5 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__snapshot) = 0;
  *(v5 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__stream) = 0;
  LOBYTE(a2) = *(a2 + 16);
  v16 = (v5 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name);
  v37 = 0;
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  *(v5 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability) = 1;
  *(v5 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__streamState) = 0;
  sub_1D1E66CDC();
  v17 = v5 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__mode;
  *v17 = v15;
  *(v17 + 8) = v14;
  *(v17 + 16) = a2;
  v18 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  (*(v11 + 32))(v5 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_identifier, v13, v10);
  v19 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_updates;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  v21 = *(v20 - 8);
  v22 = v5 + v19;
  v23 = v38;
  (*(v21 + 16))(v22, a3, v20);
  v24 = (v5 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_waveformStreamProvider);
  *v24 = v39;
  v24[1] = v23;

  v25 = [a1 accessory];
  if (!v25)
  {
    *(v5 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_isDemoCamera) = 0;
    goto LABEL_6;
  }

  v26 = v25;
  v27 = [v25 isDemoAccessory];

  *(v6 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_isDemoCamera) = v27;
  if (!v27)
  {
LABEL_6:
    (*(v21 + 8))(a3, v20);

    return v6;
  }

  v28 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability;
  if (*(v6 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability) > 2u || *(v6 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability))
  {
    v30 = sub_1D1E6904C();

    if (v30)
    {
      *(v6 + v28) = 0;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v36 - 2) = v6;
      *(&v36 - 8) = 0;
      v40 = v6;
      sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
      v32 = a3;
      v33 = v37;
      sub_1D1E66C9C();
      v37 = v33;
      a3 = v32;
    }
  }

  else
  {

    *(v6 + v28) = 0;
  }

  v34 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__streamState;
  if (*(v6 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__streamState) == 2)
  {
    (*(v21 + 8))(a3, v20);

    *(v6 + v34) = 2;
  }

  else
  {
    v35 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v35);
    *(&v36 - 2) = v6;
    *(&v36 - 8) = 2;
    v40 = v6;
    sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
    sub_1D1E66C9C();

    (*(v21 + 8))(a3, v20);
  }

  return v6;
}

uint64_t CameraController.State.deinit()
{
  v1 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_identifier;
  v2 = sub_1D1E66A7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_updates;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State___observationRegistrar;
  v6 = sub_1D1E66CEC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t CameraController.State.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_identifier;
  v2 = sub_1D1E66A7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_updates;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State___observationRegistrar;
  v6 = sub_1D1E66CEC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_1D17DF130@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D1E6887C();
  *a1 = result;
  return result;
}

void *CameraController.State.source.getter()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
  sub_1D1E66CAC();

  v2 = v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__mode;
  swift_beginAccess();
  if (!*(v2 + 16))
  {
    swift_getKeyPath();
    sub_1D1E66CAC();

    v3 = *(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__stream);
    if (v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(v2 + 16) == 1)
  {
LABEL_5:
    swift_getKeyPath();
    sub_1D1E66CAC();

    v3 = *(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__snapshot);
    if (!v3)
    {
      return v3;
    }

LABEL_6:
    v4 = v3;
    return v3;
  }

  return 0;
}

void *CameraController.State.aspectRatio.getter()
{
  result = CameraController.State.source.getter();
  v1 = result;
  if (result)
  {
    [result aspectRatio];
    v3 = v2;

    return v3;
  }

  return result;
}

uint64_t CameraController.State.dateOfLastSnapshot.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
  sub_1D1E66CAC();

  v3 = *(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__snapshot);
  if (v3)
  {
    v4 = [v3 captureDate];
    sub_1D1E669BC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D1E669FC();
  return (*(*(v6 - 8) + 56))(a1, v5, 1, v6);
}

uint64_t CameraController.State.isSourceSnapshot.getter()
{
  result = CameraController.State.source.getter();
  if (result)
  {

    v2 = CameraController.State.source.getter();
    swift_getKeyPath();
    sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
    sub_1D1E66CAC();

    v3 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__snapshot);
    if (v2)
    {
      if (v3)
      {

        return v2 == v3;
      }

      else
      {
        v4 = 0;

        return 0;
      }
    }

    else if (v3)
    {
      return 0;
    }

    else
    {
      v5 = 0;
      return 1;
    }
  }

  return result;
}

uint64_t CameraController.State.statusString.getter()
{
  v1 = 0xD00000000000001DLL;
  swift_getKeyPath();
  sub_1D17DFD88(&qword_1EC643F20, type metadata accessor for CameraController.State, &protocol conformance descriptor for CameraController.State);
  sub_1D1E66CAC();

  if (*(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__streamState) == 2)
  {
    v2 = "HFCameraErrorNotReachable";
    v1 = 0xD000000000000014;
    return static String.hfLocalized(_:)(v1, v2 | 0x8000000000000000);
  }

  swift_getKeyPath();
  sub_1D1E66CAC();

  result = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability);
  if (*(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability) > 2u)
  {
    if (*(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability) <= 4u)
    {
      if (result == 3)
      {
        v2 = "gOptionDetectActivity";
        v1 = 0xD00000000000001ALL;
      }

      else
      {
        v2 = "HFCameraErrorExtremeColdTitle";
        v1 = 0xD000000000000025;
      }

      return static String.hfLocalized(_:)(v1, v2 | 0x8000000000000000);
    }

    if (result == 5)
    {
      v4 = "HFCameraErrorExtremeColdTitle";
    }

    else
    {
      v4 = "HFCameraErrorExtremeHeatTitle";
    }

    goto LABEL_16;
  }

  if (*(v0 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability))
  {
    if (result != 1)
    {
      v2 = "HFCameraStreamingOptionOff";
      v1 = 0xD000000000000011;
      return static String.hfLocalized(_:)(v1, v2 | 0x8000000000000000);
    }

    v1 = 0xD000000000000019;
    v4 = "HFCameraErrorNotReachable";
LABEL_16:
    v2 = (v4 - 32);
    return static String.hfLocalized(_:)(v1, v2 | 0x8000000000000000);
  }

  return result;
}

uint64_t CameraController.State.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D17DFD88(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_1D1E676EC();
}

uint64_t CameraController.State.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D17DFD88(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D17DF818()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D17DFD88(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D17DF8B8(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D17DFD88(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_1D1E676EC();
}

uint64_t sub_1D17DF940(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D17DFD88(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t CameraController.State.waveform(for:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 65) = *a2;
  sub_1D1E67E1C();
  *(v3 + 32) = sub_1D1E67E0C();
  v5 = sub_1D1E67D4C();
  *(v3 + 40) = v5;
  *(v3 + 48) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D17DFA7C, v5, v4);
}

uint64_t sub_1D17DFA7C()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State_waveformStreamProvider);
  *(v0 + 64) = *(v0 + 65);
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1D17DFB90;
  v3 = *(v0 + 16);

  return v5(v3, v0 + 64);
}

uint64_t sub_1D17DFB90()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1D17DFCB0, v3, v2);
}

uint64_t sub_1D17DFCB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D17DFD88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D17DFDD8(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D17D6B38();
    if (v2 <= 0x3F)
    {
      sub_1D1E66CEC();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_1D17DFF40()
{
  result = qword_1EC644228;
  if (!qword_1EC644228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644230, &qword_1D1E752E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644228);
  }

  return result;
}

void sub_1D17DFFA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__stream);
  *(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__stream) = v2;
  v4 = v2;
}

void sub_1D17DFFE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__snapshot);
  *(v1 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__snapshot) = v2;
  v4 = v2;
}

uint64_t sub_1D17E0024()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name);
  *v2 = v0[3];
  v2[1] = v1;
}

void CameraController.Mode.streamingOptions.getter(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  if (*(v1 + 16))
  {
    v2 = 0;
  }

  *a1 = v2;
}

void CameraController.Mode.audioMode.getter(char *a1@<X8>)
{
  v2 = *v1;
  if (v1[16])
  {
    v2 = 3;
  }

  *a1 = v2;
}

void CameraController.Mode.resolution.getter(char *a1@<X8>)
{
  v2 = *(v1 + 1);
  if (*(v1 + 16))
  {
    v2 = 5;
  }

  *a1 = v2;
}

uint64_t CameraController.Mode.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  if (!*(v1 + 16))
  {
    MEMORY[0x1D3892850](0);
    sub_1D1E678EC();

    sub_1D1E6922C();
    if ((v3 & 0xFF00) != 0x500)
    {
      MEMORY[0x1D3892850](BYTE1(v3));
    }

    v5 = v2;
    return MEMORY[0x1D3892850](v5);
  }

  if (*(v1 + 16) != 1)
  {
    v5 = 2;
    return MEMORY[0x1D3892850](v5);
  }

  MEMORY[0x1D3892850](1);

  return sub_1D1E6938C();
}

uint64_t CameraController.Mode.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1D1E6920C();
  CameraController.Mode.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D17E02A0()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1D1E6920C();
  CameraController.Mode.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D17E02F8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_1D1E6920C();
  CameraController.Mode.hash(into:)(v4);
  return sub_1D1E6926C();
}

uint64_t sub_1D17E0348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 24) < 0)
  {
    v7 = 0x3A746E65746E6F63;
    v5 = sub_1D17E03F0();
  }

  else
  {
    v7 = 0x203A65646F6DLL;
    v5 = CameraController.Mode.description.getter();
  }

  MEMORY[0x1D3890F70](v5);

  return v7;
}

uint64_t sub_1D17E03F0()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (!*(v0 + 24))
  {
    v6 = *(v0 + 16);
    sub_1D1E6884C();

    v7 = 0xED0000676E696D61;
    strcpy(v18, "stream(state: ");
    HIBYTE(v18[1]) = -18;
    v8 = 0x6572747320746F6ELL;
    v9 = 0xE900000000000067;
    v10 = 0x6E696D6165727473;
    if (v2 != 2)
    {
      v10 = 0x676E6970706F7473;
      v9 = 0xE800000000000000;
    }

    if (v2)
    {
      v8 = 0x676E697472617473;
      v7 = 0xE800000000000000;
    }

    if (v2 <= 1u)
    {
      v11 = v8;
    }

    else
    {
      v11 = v10;
    }

    if (v2 <= 1u)
    {
      v12 = v7;
    }

    else
    {
      v12 = v9;
    }

    MEMORY[0x1D3890F70](v11, v12);

    MEMORY[0x1D3890F70](0x6D6165727473202CLL, 0xEA0000000000203ALL);
    v13 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6441F8, &qword_1D1E75140);
    v14 = sub_1D1E6789C();
    MEMORY[0x1D3890F70](v14);

    MEMORY[0x1D3890F70](0x3A726F727265202CLL, 0xE900000000000020);
    v5 = v6;
    goto LABEL_15;
  }

  if (*(v0 + 24) == 1)
  {
    sub_1D1E6884C();

    v18[0] = 0xD000000000000013;
    v18[1] = 0x80000001D1EB9B30;
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644130, &qword_1D1E74CD8);
    v4 = sub_1D1E6789C();
    MEMORY[0x1D3890F70](v4);

    MEMORY[0x1D3890F70](0x3A726F727265202CLL, 0xE900000000000020);
    v5 = v1;
LABEL_15:
    v15 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644250, &qword_1D1E75500);
    v16 = sub_1D1E6789C();
    MEMORY[0x1D3890F70](v16);

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    return v18[0];
  }

  return 0x6968747972657665;
}

unint64_t CameraController.Mode.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      return 1701736302;
    }

    sub_1D1E6884C();

    v19 = 0xD000000000000013;
    v3 = sub_1D1E6932C();
  }

  else
  {
    if (BYTE1(v2) == 5)
    {
      v5 = 0xE300000000000000;
      v6 = 7104878;
    }

    else
    {
      v8 = 0x647261646E617473;
      v9 = 0xE400000000000000;
      v10 = 1751607656;
      v11 = 0xE900000000000068;
      v12 = 0x676968206C6C7566;
      if (BYTE1(v2) != 3)
      {
        v12 = 0x6968206172746C75;
        v11 = 0xEA00000000006867;
      }

      if (BYTE1(v2) != 2)
      {
        v10 = v12;
        v9 = v11;
      }

      if (BYTE1(v2))
      {
        v8 = 0x6465636E61686E65;
      }

      if (BYTE1(v2) <= 1u)
      {
        v13 = v8;
      }

      else
      {
        v13 = v10;
      }

      if (BYTE1(v2) <= 1u)
      {
        v14 = 0xE800000000000000;
      }

      else
      {
        v14 = v9;
      }

      MEMORY[0x1D3890F70](v13, v14);

      v6 = 0;
      v5 = 0xE000000000000000;
    }

    v19 = 0;
    sub_1D1E6884C();
    MEMORY[0x1D3890F70](0x61286D6165727473, 0xEE00203A6F696475);
    sub_1D1E68ABC();
    MEMORY[0x1D3890F70](0x756C6F736572202CLL, 0xEE00203A6E6F6974);
    MEMORY[0x1D3890F70](v6, v5);

    MEMORY[0x1D3890F70](0x6E6F6974706F202CLL, 0xEB00000000203A73);
    v15 = sub_1D18D4FC0(qword_1F4D5F418);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F58, &unk_1D1E74CE0);
    swift_arrayDestroy();
    sub_1D17DC554(v15, v1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F60, &qword_1D1E746D0);
    sub_1D17DC838();
    sub_1D17D8EF0();
    v16 = sub_1D1E67B0C();
    v18 = v17;

    MEMORY[0x1D3890F70](v16, v18);

    MEMORY[0x1D3890F70](93, 0xE100000000000000);
    v3 = 91;
    v4 = 0xE100000000000000;
  }

  MEMORY[0x1D3890F70](v3, v4);

  MEMORY[0x1D3890F70](41, 0xE100000000000000);
  return v19;
}

BOOL sub_1D17E0A08(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return (_s13HomeDataModel16CameraControllerC4ModeO1loiySbAE_AEtFZ_0(&v5, &v7) & 1) == 0;
}

BOOL sub_1D17E0A58(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return (_s13HomeDataModel16CameraControllerC4ModeO1loiySbAE_AEtFZ_0(&v7, &v5) & 1) == 0;
}

uint64_t sub_1D17E0AA8(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return _s13HomeDataModel16CameraControllerC4ModeO1loiySbAE_AEtFZ_0(&v5, &v7) & 1;
}

uint64_t _s13HomeDataModel16CameraControllerC4ModeO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    v8 = *a1;
    if (*a1)
    {
      if (v8 == 1)
      {
        v9 = 0x676E696D6F636E69;
      }

      else
      {
        v9 = 0x7463657269646962;
      }

      if (v8 == 1)
      {
        v10 = 0xE800000000000000;
      }

      else
      {
        v10 = 0xED00006C616E6F69;
      }

      v11 = *a2;
      if (*a2)
      {
LABEL_16:
        if (v11 == 1)
        {
          v12 = 0x676E696D6F636E69;
        }

        else
        {
          v12 = 0x7463657269646962;
        }

        if (v11 == 1)
        {
          v13 = 0xE800000000000000;
        }

        else
        {
          v13 = 0xED00006C616E6F69;
        }

        if (v9 != v12)
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v10 = 0xE500000000000000;
      v9 = 0x646574756DLL;
      v11 = *a2;
      if (*a2)
      {
        goto LABEL_16;
      }
    }

    v13 = 0xE500000000000000;
    if (v9 != 0x646574756DLL)
    {
      goto LABEL_34;
    }

LABEL_32:
    if (v10 == v13)
    {

      goto LABEL_35;
    }

LABEL_34:
    v15 = sub_1D1E6904C();

    if ((v15 & 1) == 0)
    {
      return 0;
    }

LABEL_35:
    v16 = v5 & 0xFF00;
    if ((v3 & 0xFF00) == 0x500)
    {
      if (v16 != 1280)
      {
        return 0;
      }
    }

    else if (v16 == 1280 || ((v5 ^ v3) & 0xFF00) != 0)
    {
      return 0;
    }

    return v2 == v4;
  }

  if (*(a1 + 16) != 1)
  {
    return v6 == 2 && (v4 | v5) == 0;
  }

  if (v6 != 1)
  {
    return 0;
  }

  return sub_1D1E6937C();
}

uint64_t _s13HomeDataModel16CameraControllerC4ModeO1loiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    v7 = *a1;
    v8 = *a2;
    v9 = 0xE800000000000000;
    v10 = 0x676E696D6F636E69;
    if (v7 != 1)
    {
      v10 = 0x7463657269646962;
      v9 = 0xED00006C616E6F69;
    }

    if (*a1)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x646574756DLL;
    }

    if (v7)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v13 = 0xE800000000000000;
    v14 = 0x676E696D6F636E69;
    if (v8 != 1)
    {
      v14 = 0x7463657269646962;
      v13 = 0xED00006C616E6F69;
    }

    if (*a2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x646574756DLL;
    }

    if (*a2)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    if (v11 == v15 && v12 == v16)
    {
    }

    else
    {
      v17 = sub_1D1E6904C();

      if ((v17 & 1) == 0)
      {
        if (v8 == 2)
        {
          return 1;
        }

        goto LABEL_45;
      }
    }

    if ((v2 & 0xFF00) != 0x500)
    {
      return BYTE1(v4) != 5 && BYTE1(v2) < BYTE1(v4);
    }

    result = 1;
    if (BYTE1(v4) != 5 || v8 == 2)
    {
      return result;
    }

LABEL_45:
    if (v7 != 2)
    {
      v6 = v8 != 1 && v7 == 1;
      return !v6;
    }

    return 0;
  }

  if (v3 != 1)
  {
    if (*(a2 + 16))
    {
      goto LABEL_11;
    }

    return 1;
  }

  if (!*(a2 + 16))
  {
    return 1;
  }

  if (*(a2 + 16) != 1)
  {
LABEL_11:
    v6 = v3 == 1;
    return !v6;
  }

  return sub_1D1E6934C();
}

unint64_t sub_1D17E0EDC()
{
  result = qword_1EC644248;
  if (!qword_1EC644248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644248);
  }

  return result;
}

uint64_t _s4ModeOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s4ModeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D17E0FBC(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D17E0FD4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel16CameraControllerC7ContentO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_1D17E1024(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 25))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 24) >> 1) & 0x3E | (*(a1 + 24) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D17E1078(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1D17E1108(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D17E1150(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1D17E1198(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t CamerasModel.currentHomeIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel, &protocol conformance descriptor for CamerasModel);
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__currentHomeIdentifier;
  swift_beginAccess();
  return sub_1D17783E0(v5 + v3, a1);
}

uint64_t sub_1D17E1290@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel, &protocol conformance descriptor for CamerasModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__currentHomeIdentifier;
  swift_beginAccess();
  return sub_1D17783E0(v3 + v4, a2);
}

uint64_t sub_1D17E1358(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D17783E0(a1, &v6 - v3);
  return sub_1D17E1438(v4);
}

uint64_t type metadata accessor for CamerasModel(uint64_t a1)
{
  result = qword_1EC6442A0;
  if (!qword_1EC6442A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D17E1438(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__currentHomeIdentifier;
  swift_beginAccess();
  sub_1D17783E0(v1 + v6, v5);
  v7 = sub_1D17E60E8(v5, a1);
  sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel, &protocol conformance descriptor for CamerasModel);
    sub_1D1E66C9C();
  }

  else
  {
    swift_beginAccess();
    sub_1D17E695C(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_1D1741A30(a1, &qword_1EC642590, qword_1D1E71260);
}

uint64_t sub_1D17E161C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__currentHomeIdentifier;
  swift_beginAccess();
  sub_1D17E695C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t CamerasModel.homesToCameraControllers.getter()
{
  swift_getKeyPath();
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel, &protocol conformance descriptor for CamerasModel);
  sub_1D1E66CAC();

  swift_beginAccess();
}

uint64_t sub_1D17E1748@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel, &protocol conformance descriptor for CamerasModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D17E183C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
  swift_beginAccess();

  v5 = sub_1D18539C8(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel, &protocol conformance descriptor for CamerasModel);
    sub_1D1E66C9C();
  }
}

uint64_t sub_1D17E198C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

id CamerasModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D17E1BB4()
{
  result = [objc_allocWithZone(type metadata accessor for CamerasModel(0)) init];
  qword_1EC644258 = result;
  return result;
}

id static CamerasModel.shared.getter()
{
  if (qword_1EC642150 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC644258;

  return v1;
}

uint64_t CamerasModel.subscript.getter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10[-v5];
  swift_getKeyPath();
  v13 = v1;
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel, &protocol conformance descriptor for CamerasModel);
  sub_1D1E66CAC();

  v7 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__currentHomeIdentifier;
  swift_beginAccess();
  sub_1D17783E0(v2 + v7, v6);
  v11 = v2;
  v12 = a1;
  v8 = sub_1D17BE6B4(sub_1D17E1F24);
  sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);
  return v8;
}

uint64_t sub_1D17E1DB0@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  swift_getKeyPath();
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel, &protocol conformance descriptor for CamerasModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (!*(v6 + 16))
  {
    goto LABEL_7;
  }

  v7 = sub_1D1742188();
  if ((v8 & 1) == 0 || (v9 = *(*(v6 + 56) + 8 * v7), , , !*(v9 + 16)) || (v10 = sub_1D1742188(), (v11 & 1) == 0))
  {

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  v13 = *(v12 + 112);

LABEL_8:
  *a2 = v13;
  return result;
}

uint64_t CamerasModel.subscript.getter()
{
  swift_getKeyPath();
  v11 = v0;
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel, &protocol conformance descriptor for CamerasModel);
  sub_1D1E66CAC();

  v1 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
  swift_beginAccess();
  v2 = *(v11 + v1);
  if (*(v2 + 16))
  {

    v3 = sub_1D1742188();
    if (v4)
    {
      v5 = *(*(v2 + 56) + 8 * v3);

      if (*(v5 + 16))
      {
        v6 = sub_1D1742188();
        if (v7)
        {
          v8 = *(*(v5 + 56) + 8 * v6);

          v9 = *(v8 + 112);

          return v9;
        }
      }
    }
  }

  return 0;
}

unint64_t CamerasModel.cameraControllersForCurrentHome.getter()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v17 - v7;
  swift_getKeyPath();
  v18 = v0;
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel, &protocol conformance descriptor for CamerasModel);
  sub_1D1E66CAC();

  v9 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__currentHomeIdentifier;
  swift_beginAccess();
  sub_1D17783E0(v1 + v9, v8);
  if ((*(v3 + 48))(v8, 1, v2) != 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    swift_getKeyPath();
    v17[0] = v1;
    sub_1D1E66CAC();

    v10 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
    swift_beginAccess();
    v11 = *(v1 + v10);
    if (*(v11 + 16))
    {

      v12 = sub_1D1742188();
      if (v13)
      {
        v14 = *(*(v11 + 56) + 8 * v12);
        v15 = *(v3 + 8);

        v15(v5, v2);

        return v14;
      }
    }

    (*(v3 + 8))(v5, v2);
  }

  return sub_1D18D8BB4(MEMORY[0x1E69E7CC0]);
}

unint64_t CamerasModel.camerasForCurrentHome.getter()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v17 - v7;
  swift_getKeyPath();
  v18 = v0;
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel, &protocol conformance descriptor for CamerasModel);
  sub_1D1E66CAC();

  v9 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__currentHomeIdentifier;
  swift_beginAccess();
  sub_1D17783E0(v1 + v9, v8);
  if ((*(v3 + 48))(v8, 1, v2) != 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    swift_getKeyPath();
    v17[2] = v1;
    sub_1D1E66CAC();

    v10 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
    swift_beginAccess();
    v11 = *(v1 + v10);
    if (*(v11 + 16))
    {

      v12 = sub_1D1742188();
      if (v13)
      {
        v14 = *(*(v11 + 56) + 8 * v12);

        v15 = sub_1D17E5D98(v14);

        (*(v3 + 8))(v5, v2);
        return v15;
      }
    }

    (*(v3 + 8))(v5, v2);
  }

  return sub_1D18D8BD8(MEMORY[0x1E69E7CC0]);
}

uint64_t _s13HomeDataModel07CamerasC0C15setupForTesting4withySo13HMHomeManagerC_tF_0(void *a1)
{
  v69 = sub_1D1E66A7C();
  v64 = *(v69 - 8);
  v2 = MEMORY[0x1EEE9AC00](v69);
  v56 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v70 = &v52 - v4;
  v53 = a1;
  v5 = [a1 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v6 = sub_1D1E67C1C();

  v7 = sub_1D18D8B90(MEMORY[0x1E69E7CC0]);
  if (v6 >> 62)
  {
    goto LABEL_70;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
LABEL_3:
    v9 = 0;
    v58 = v6 & 0xFFFFFFFFFFFFFF8;
    v59 = v6 & 0xC000000000000001;
    v57 = v6 + 32;
    v63 = v64 + 16;
    v68 = (v64 + 8);
    v54 = v8;
    v55 = v6;
    while (1)
    {
      if (v59)
      {
        v15 = MEMORY[0x1D3891EF0](v9, v6);
        v16 = __OFADD__(v9, 1);
        v17 = v9 + 1;
        if (v16)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v9 >= *(v58 + 16))
        {
          goto LABEL_68;
        }

        v15 = *(v57 + 8 * v9);
        v16 = __OFADD__(v9, 1);
        v17 = v9 + 1;
        if (v16)
        {
          goto LABEL_67;
        }
      }

      v61 = v17;
      v62 = v7;
      v60 = v15;
      v18 = [v15 accessories];
      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v19 = sub_1D1E67C1C();

      v71[0] = MEMORY[0x1E69E7CC0];
      if (v19 >> 62)
      {
        break;
      }

      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_10;
      }

LABEL_37:
      v7 = MEMORY[0x1E69E7CC0];
LABEL_38:

      v30 = sub_1D18D8BB4(MEMORY[0x1E69E7CC0]);
      if (v7 >> 62)
      {
        v31 = sub_1D1E6873C();
        if (!v31)
        {
          goto LABEL_4;
        }

LABEL_40:
        v32 = 0;
        v66 = v7 & 0xFFFFFFFFFFFFFF8;
        v67 = v7 & 0xC000000000000001;
        v65 = v7;
        while (2)
        {
          if (v67)
          {
            v34 = MEMORY[0x1D3891EF0](v32, v7);
          }

          else
          {
            if (v32 >= *(v66 + 16))
            {
              goto LABEL_64;
            }

            v34 = *(v7 + 8 * v32 + 32);
          }

          v7 = v34;
          v35 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_63;
          }

          v36 = [v34 uniqueIdentifier];
          sub_1D1E66A5C();

          v71[0] = 0;
          v71[1] = 0;
          v72 = 2;
          type metadata accessor for CameraController(0);
          swift_allocObject();
          v7 = v7;
          v37 = sub_1D17CA954(v7, v71);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v71[0] = v30;
          v6 = v30;
          v40 = sub_1D1742188();
          v41 = v30[2];
          v42 = (v39 & 1) == 0;
          v43 = v41 + v42;
          if (__OFADD__(v41, v42))
          {
            goto LABEL_65;
          }

          v44 = v39;
          if (v30[3] >= v43)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v30 = v71[0];
              if ((v39 & 1) == 0)
              {
                goto LABEL_54;
              }
            }

            else
            {
              sub_1D1737C58();
              v30 = v71[0];
              if ((v44 & 1) == 0)
              {
                goto LABEL_54;
              }
            }
          }

          else
          {
            sub_1D172655C(v43, isUniquelyReferenced_nonNull_native);
            v45 = sub_1D1742188();
            if ((v44 & 1) != (v46 & 1))
            {
              result = sub_1D1E690FC();
              __break(1u);
              return result;
            }

            v40 = v45;
            v30 = v71[0];
            if ((v44 & 1) == 0)
            {
LABEL_54:
              v30[(v40 >> 6) + 8] |= 1 << v40;
              v47 = v64;
              v6 = v69;
              v48 = v70;
              (*(v64 + 16))(v30[6] + *(v64 + 72) * v40, v70, v69);
              *(v30[7] + 8 * v40) = v37;

              (*(v47 + 8))(v48, v6);
              v49 = v30[2];
              v16 = __OFADD__(v49, 1);
              v50 = v49 + 1;
              if (v16)
              {
                goto LABEL_66;
              }

              v30[2] = v50;
              goto LABEL_42;
            }
          }

          v33 = v30[7];
          v6 = *(v33 + 8 * v40);
          *(v33 + 8 * v40) = v37;

          (*v68)(v70, v69);
LABEL_42:
          ++v32;
          v7 = v65;
          if (v35 == v31)
          {
            goto LABEL_4;
          }

          continue;
        }
      }

      v31 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
        goto LABEL_40;
      }

LABEL_4:

      v10 = v60;
      v11 = [v60 uniqueIdentifier];
      v12 = v56;
      sub_1D1E66A5C();

      v13 = v62;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v71[0] = v13;
      sub_1D1753AF4(v30, v12, v14);
      (*v68)(v12, v69);

      v7 = v71[0];
      v6 = v55;
      v9 = v61;
      if (v61 == v54)
      {
        goto LABEL_71;
      }
    }

    v20 = sub_1D1E6873C();
    if (!v20)
    {
      goto LABEL_37;
    }

LABEL_10:
    v21 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v22 = v7;
      v23 = v21;
      while (1)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1D3891EF0](v23, v19);
        }

        else
        {
          if (v23 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v24 = *(v19 + 8 * v23 + 32);
        }

        v6 = v24;
        v21 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        v25 = [v24 cameraProfiles];
        if (!v25)
        {
          goto LABEL_13;
        }

        v7 = v25;
        sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
        v26 = sub_1D1E67C1C();

        v27 = v26;
        if (!(v26 >> 62))
        {
          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          goto LABEL_12;
        }

        v7 = v26;
        v28 = sub_1D1E6873C();
        v27 = v26;
        if (v28)
        {
          break;
        }

LABEL_12:

LABEL_13:

        ++v23;
        if (v21 == v20)
        {
          v7 = v22;
          goto LABEL_38;
        }
      }

      if ((v27 & 0xC000000000000001) == 0)
      {
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v29 = *(v27 + 32);
          goto LABEL_27;
        }

LABEL_69:
        __break(1u);
LABEL_70:
        v8 = sub_1D1E6873C();
        if (!v8)
        {
          break;
        }

        goto LABEL_3;
      }

      MEMORY[0x1D3891EF0](0);
LABEL_27:

      v6 = v71;
      MEMORY[0x1D3891220]();
      if (*((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D1E67C5C();
      }

      sub_1D1E67CAC();
      v7 = v71[0];
      if (v21 == v20)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_71:

  sub_1D17E183C(v7);
  return sub_1D17E2D84(v53);
}