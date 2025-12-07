uint64_t OUTLINED_FUNCTION_7_1()
{
  sub_261F7D45C(v1, v2);
  sub_261F81D84(v0, v4);
  return v3;
}

double OUTLINED_FUNCTION_7_3()
{
  *(v1 + 8) = v0;
  *(v1 + 16) = v2;
  result = 0.0;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_261F65204()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();

  return OUTLINED_FUNCTION_47();
}

uint64_t OUTLINED_FUNCTION_42(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

id OUTLINED_FUNCTION_42_2@<X0>(uint64_t a1@<X0>, const char *a2@<X8>)
{
  *(v3 - 112) = a1;

  return [v2 a2];
}

uint64_t sub_261F652A8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_43(v2 + 56, a2);
  *(v2 + 56) = 1;
  return sub_26203974C();
}

uint64_t sub_261F65314(uint64_t result)
{
  v1 = *(result + 144) & 0xE7FF | 0x800;
  *result &= 0xFFFFFFFFFFFFFF9uLL;
  *(result + 144) = v1;
  return result;
}

uint64_t sub_261F65340(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_261F653A0(a1);
  }

  return result;
}

void sub_261F653A0(uint64_t a1)
{
  OUTLINED_FUNCTION_96();
  v3 = v1;
  v5 = v4;
  memcpy(v75, v4, 0x92uLL);
  switch(sub_261F658D0(v75))
  {
    case 1u:
      v34 = *sub_261F65858(v75);
      memset(v74, 0, 32);
      v74[32] = 2;
      LOBYTE(v65) = 0;
      memcpy(__dst, v5, sizeof(__dst));
      v35 = *sub_261F65858(__dst);
      v36 = ControlChannelConnectionError.Message.format(code:)(&v65);
      sub_261F65C08(v74);
      v74[0] = 0;
      *&v74[8] = v36;
      memset(&v74[24], 0, 32);
      *&v74[56] = v34;
      sub_261F65C5C();
      OUTLINED_FUNCTION_72_0();
      v37 = swift_allocError();
      v38 = *&v74[48];
      v40 = *v74;
      v39 = *&v74[16];
      v41[2] = *&v74[32];
      v41[3] = v38;
      *v41 = v40;
      v41[1] = v39;
      sub_261F65CB0(v74, &v65);
      v42 = OUTLINED_FUNCTION_72_1();
      sub_261F65D0C(v42);

      v43 = v74;
      goto LABEL_26;
    case 2u:
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      if (*(v3 + 168) != 4)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_162(*(v3 + 152), *(v3 + 136));
      if (v8 != 1 || v7 != 0)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_161();
      __dst[40] = 4;
      sub_261F68720(__dst, v10, v11, v12, v13, v14, v15, v16, v64, v65, v66, v67, v68, v69, v70, SHIDWORD(v70), v71, v72, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96]);
      OUTLINED_FUNCTION_51_1();
      if (v17 < 0)
      {
      }

      else
      {
        OUTLINED_FUNCTION_3_5();
        sub_26203AC0C();
        OUTLINED_FUNCTION_85_0();

        if ((v3 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      sub_261FAF4D4();
LABEL_27:
      OUTLINED_FUNCTION_31_0();
      return;
    case 3u:
      if (qword_27FEF85B0 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      v18 = byte_27FEF90C8;

      v19 = OUTLINED_FUNCTION_72();
      v22 = sub_261F83BA8(v19, v20, v21);

      if (v22)
      {
        sub_26203A4AC();
        if (qword_28108B600 != -1)
        {
          OUTLINED_FUNCTION_0_11();
          swift_once();
        }

        if (OUTLINED_FUNCTION_149())
        {
          OUTLINED_FUNCTION_42_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_27_2();
          v23 = swift_slowAlloc();
          *__dst = v23;
          OUTLINED_FUNCTION_137(4.8751e-34);
          sub_261F67FE4(v24, v25, __dst);
          OUTLINED_FUNCTION_114();
          *(v18 + 4) = v2;
          OUTLINED_FUNCTION_50_1(&dword_261F5B000, v26, v27, "%{public}s: CUNetLinkManager reported the device as unavailable using ARP. Sending control channel message to probe for availability");
          __swift_destroy_boxed_opaque_existential_0Tm(v23);
          v28 = OUTLINED_FUNCTION_9_2();
          MEMORY[0x266724180](v28);
          v29 = OUTLINED_FUNCTION_8_2();
          MEMORY[0x266724180](v29);
        }

        *&v30 = OUTLINED_FUNCTION_161();
        *&__dst[40] = v30;
        *&__dst[56] = v30;
        memset(&__dst[80], 0, 17);
        *&__dst[72] = 0xC000000000000000;
        sub_261FBA7C0(__dst);
        memcpy(v74, __dst, sizeof(v74));
        OUTLINED_FUNCTION_58_1();
        sub_261FABDA0(v31, v32, v33);
      }

      else
      {
        sub_26203A48C();
        if (qword_28108B600 != -1)
        {
          OUTLINED_FUNCTION_0_11();
          swift_once();
        }

        if (OUTLINED_FUNCTION_149())
        {
          OUTLINED_FUNCTION_42_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_27_2();
          v44 = swift_slowAlloc();
          *__dst = v44;
          OUTLINED_FUNCTION_137(4.8751e-34);
          sub_261F67FE4(v45, v46, __dst);
          OUTLINED_FUNCTION_114();
          *(v18 + 4) = v2;
          OUTLINED_FUNCTION_50_1(&dword_261F5B000, v47, v48, "%{public}s: CUNetLinkManager reported the device as unavailable using ARP. Invalidating connection");
          __swift_destroy_boxed_opaque_existential_0Tm(v44);
          v49 = OUTLINED_FUNCTION_9_2();
          MEMORY[0x266724180](v49);
          v50 = OUTLINED_FUNCTION_8_2();
          MEMORY[0x266724180](v50);
        }

        *&__dst[24] = MEMORY[0x277D837D0];
        OUTLINED_FUNCTION_31_2();
        *__dst = 0xD00000000000001FLL;
        *&__dst[8] = v51;
        __dst[32] = 1;
        v74[0] = 0;
        v52 = ControlChannelConnectionError.Message.format(code:)(v74);
        sub_261F65C08(__dst);
        __dst[0] = 0;
        *&__dst[8] = v52;
        memset(&__dst[24], 0, 40);
        sub_261F65C5C();
        OUTLINED_FUNCTION_72_0();
        v53 = swift_allocError();
        OUTLINED_FUNCTION_87_0(v53, v54, v55, v56, v57, v58, v59, v60, v64, v65, v66, v67, v68, v69, v70, v71, v72, *__dst, *&__dst[16], *&__dst[32], *&__dst[48]);
        sub_261F65CB0(v61, v62);
        v63 = OUTLINED_FUNCTION_72_1();
        sub_261F65D0C(v63);

        v43 = __dst;
LABEL_26:
        sub_261F6A70C(v43);
      }

      goto LABEL_27;
    default:
      v6 = sub_261F65858(v75);
      memcpy(__dst, v6, sizeof(__dst));
      sub_261FAA09C();
      goto LABEL_27;
  }
}

uint64_t OUTLINED_FUNCTION_57(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_261F658D0(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (((v1 >> 11) & 2) != 0)
  {
    return ((*a1 >> 2) & 0xFFFFFFFE | *a1 & 1) + 2;
  }

  else
  {
    return (v1 >> 11) & 3;
  }
}

Swift::String __swiftcall ControlChannelConnectionError.Message.format(code:)(RemotePairingDevice::ControlChannelConnectionError::Code code)
{
  v2 = *code;
  sub_261F65B90(v1, v17);
  if (v18)
  {
    if (v18 == 1)
    {
      v3 = 0x206E776F6E6B6E55;
      sub_261F8D184(v17, v16);
      v4 = 0xED0000726F727265;
      switch(v2)
      {
        case 1:
          v3 = 0xD000000000000014;
          v4 = 0x800000026204E610;
          break;
        case 2:
          OUTLINED_FUNCTION_4_7();
          v3 = v6 + 5;
          break;
        case 3:
          OUTLINED_FUNCTION_4_7();
          v3 = v5 | 1;
          break;
        case 4:
          break;
        case 5:
          OUTLINED_FUNCTION_4_7();
          v3 = v7 + 13;
          break;
        default:
          v3 = 0x726F70736E617254;
          v4 = 0xEF726F7272652074;
          break;
      }

      v14 = v3;
      v15 = v4;

      MEMORY[0x266722710](8250, 0xE200000000000000);

      sub_261F681A8(v16, &v14);
      v8 = sub_26203A20C();
      v10 = v9;
      v14 = v3;
      v15 = v4;

      MEMORY[0x266722710](v8, v10);

      __swift_destroy_boxed_opaque_existential_0Tm(v16);
    }

    else
    {
      switch(v2)
      {
        case 2:
        case 3:
        case 5:
          OUTLINED_FUNCTION_3_10();
          break;
        default:
          break;
      }
    }
  }

  v11 = OUTLINED_FUNCTION_47();
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice29ControlChannelConnectionErrorV7MessageO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

unint64_t sub_261F65C5C()
{
  result = qword_28108B7A0;
  if (!qword_28108B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B7A0);
  }

  return result;
}

void sub_261F65D0C(void *a1)
{
  v3 = a1;
  v2 = a1;
  sub_261F65D98(&v3);

  sub_261F6A6D0(a1);
}

void sub_261F65D98(uint64_t a1)
{
  OUTLINED_FUNCTION_96();
  v4 = OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__invalidateCalled;
  if ((v1[OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__invalidateCalled] & 1) == 0)
  {
    v5 = v1;
    v6 = *v3;
    *&v1[OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__transaction] = 0;
    swift_unknownObjectRelease();
    v7 = 0;
    if (v6 >= 5)
    {
      if (v6 == 5)
      {
        sub_261F9D610();
        OUTLINED_FUNCTION_19();
        v7 = swift_allocError();
        sub_261F9BCE0();
        OUTLINED_FUNCTION_151();
        sub_26203AD3C();
      }

      else
      {
        v63 = v6;
        v7 = v6;
      }
    }

    v96 = v7;
    sub_26203A4AC();
    if (qword_28108B600 == -1)
    {
      goto LABEL_4;
    }

    while (1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
LABEL_4:
      v8 = OUTLINED_FUNCTION_152();
      if (os_log_type_enabled(v8, v9))
      {
        OUTLINED_FUNCTION_57_1();
        v10 = swift_slowAlloc();
        OUTLINED_FUNCTION_56();
        *&v107[0] = swift_slowAlloc();
        *v10 = 136446466;
        sub_261F666D8();
        sub_261F67FE4(v11, v12, v107);
        OUTLINED_FUNCTION_61_1();

        *(v10 + 4) = v2;
        *(v10 + 12) = 2080;
        __src[0] = v6;
        sub_261F68250(v6);
        v13 = sub_26203A20C();
        sub_261F67FE4(v13, v14, v107);
        OUTLINED_FUNCTION_61_1();

        *(v10 + 14) = v2;
        OUTLINED_FUNCTION_75_1();
        _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
        OUTLINED_FUNCTION_117();
        swift_arrayDestroy();
        v20 = OUTLINED_FUNCTION_16_3();
        MEMORY[0x266724180](v20);
        v21 = OUTLINED_FUNCTION_9_2();
        MEMORY[0x266724180](v21);
      }

      v22 = OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection_invalidationReason;
      OUTLINED_FUNCTION_88_0(&v5[OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection_invalidationReason], &v113);
      v23 = *&v5[v22];
      *&v5[v22] = v6;
      sub_261F68250(v6);
      sub_261F68710(v23);
      v5[v4] = 1;
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      v32 = *(v5 + 16);
      v31 = *(v5 + 17);
      v33 = *(v5 + 20);
      v34 = v5[168];
      if ((v34 - 1) >= 2)
      {
        if (v34 == 3)
        {
          OUTLINED_FUNCTION_7_2();
          swift_beginAccess();
          sub_261F674BC((v5 + 320), v107, &qword_27FEF99A0, &qword_26203F7D8);
          if (*(&v107[1] + 1))
          {
            sub_261F79740(v107, __src);
            sub_261F6B73C(v32, v31);
            sub_261F66E60(v107, &qword_27FEF99A0, &qword_26203F7D8);
            v6 = __src[3];
            v50 = __src[4];
            __swift_project_boxed_opaque_existential_0Tm(__src, __src[3]);
            (*(v50 + 32))(v6, v50);
            OUTLINED_FUNCTION_1_9();
            OUTLINED_FUNCTION_73_1();
            sub_261F68B30(v51, v52, v53, v54, v33, 3, v55, v56, v92);
            __swift_destroy_boxed_opaque_existential_0Tm(__src);
          }

          else
          {
            sub_261F66E60(v107, &qword_27FEF99A0, &qword_26203F7D8);
          }
        }
      }

      else if (v32)
      {
        *(&v107[1] + 1) = MEMORY[0x277D837D0];
        *&v107[0] = 0xD00000000000001ALL;
        *(&v107[0] + 1) = 0x800000026204E5D0;
        LOBYTE(v107[2]) = 1;
        sub_261F65C5C();
        OUTLINED_FUNCTION_72_0();
        v100 = swift_allocError();
        v6 = v35;
        *v35 = 1;
        LOBYTE(__src[0]) = 1;
        OUTLINED_FUNCTION_2_7();
        OUTLINED_FUNCTION_73_1();
        sub_261F68B30(v36, v37, v38, v39, v33, v34, v40, v41, v92);
        v42 = v96;
        v43 = ControlChannelConnectionError.Message.format(code:)(__src);
        v99 = v33;
        sub_261F65C08(v107);
        *(v6 + 8) = v43;
        *(v6 + 24) = 0u;
        *(v6 + 40) = 0u;
        *(v6 + 56) = v96;
        v107[0] = v100;
        LOBYTE(v107[1]) = 0;
        v32(v107);
        OUTLINED_FUNCTION_1_9();
        OUTLINED_FUNCTION_73_1();
        sub_261F68B30(v44, v45, v46, v47, v33, v34, v48, v49, v93);
        sub_261FB9BAC(*&v107[0], *(&v107[0] + 1), v107[1]);
      }

      else
      {
        OUTLINED_FUNCTION_2_7();
        OUTLINED_FUNCTION_73_1();
        sub_261F68B30(v57, v58, v59, v60, v33, v34, v61, v62, v92);
      }

      *&v107[0] = 6;
      *(v107 + 8) = 0u;
      *(&v107[1] + 8) = 0u;
      BYTE8(v107[2]) = 4;
      sub_261F68720(v107, v24, v25, v26, v27, v28, v29, v30, v92, v94, v95, v96, v97, v98, v99, SHIDWORD(v99), v100, v5, v102, v103, v104, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9]);
      v64 = OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__replyHandlers;
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      v95 = v64;
      v65 = *&v5[v64];
      v68 = *(v65 + 64);
      v67 = v65 + 64;
      v66 = v68;
      v69 = 1 << *(*&v5[v64] + 32);
      v70 = -1;
      if (v69 < 64)
      {
        v70 = ~(-1 << v69);
      }

      v71 = v70 & v66;
      v4 = (v69 + 63) >> 6;
      OUTLINED_FUNCTION_31_2();
      v98 = v72;
      v99 = v73;
      OUTLINED_FUNCTION_31_2();
      v97 = v74;
      v5 = __src + 1;
      v100 = v75;

      v2 = 0;
      for (i = v96; v71; i = v6)
      {
LABEL_24:
        v78 = *(*(v100 + 56) + ((v2 << 10) | (16 * __clz(__rbit64(v71)))));
        v110[3] = MEMORY[0x277D837D0];
        OUTLINED_FUNCTION_151();
        v110[0] = v79;
        v110[1] = v99;
        v111 = 1;
        sub_261F65B90(v110, v108);
        if (v109)
        {
          if (v109 == 1)
          {
            sub_261F8D184(v108, v107);
            sub_261F681A8(v107, __src);
            v80 = i;

            sub_26203A20C();
            v6 = i;
            OUTLINED_FUNCTION_151();
            __src[0] = v81 - 4;
            __src[1] = v97;
            MEMORY[0x266722710]();

            v82 = __src[0];
            v83 = __src[1];
            __swift_destroy_boxed_opaque_existential_0Tm(v107);
          }

          else
          {
            v85 = i;

            OUTLINED_FUNCTION_151();
            v82 = v86 - 6;
            v6 = i;
            v83 = v98;
          }
        }

        else
        {
          v6 = i;
          v83 = *(&v108[0] + 1);
          v82 = *&v108[0];
          v84 = v6;
        }

        v71 &= v71 - 1;
        sub_261F65C08(v110);
        *(__src + 1) = v112[0];
        HIDWORD(__src[0]) = *(v112 + 3);
        LOBYTE(__src[0]) = 1;
        __src[1] = v82;
        __src[2] = v83;
        memset(&__src[3], 0, 32);
        __src[7] = v6;
        sub_261FBA8D4(__src);
        memcpy(__dst, __src, 0x7AuLL);
        v78(__dst);

        memcpy(v107, __dst, 0x7AuLL);
        sub_261FBA8E0(v107);
      }

      while (1)
      {
        v77 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v77 >= v4)
        {

          OUTLINED_FUNCTION_36_1();
          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF99D8, &qword_26203F808);
          sub_26203A10C();
          swift_endAccess();
          v87 = v101[27];
          v88 = v101[28];
          __swift_project_boxed_opaque_existential_0Tm(v101 + 24, v87);
          (*(v88 + 48))(v87, v88);
          sub_261F6A480(0);
          sub_261F6A504(0);
          OUTLINED_FUNCTION_7_2();
          swift_beginAccess();
          v89 = v101[33];
          if (v89)
          {
            v90 = v101[34];

            v89(v91);

            sub_261F665E4(v89, v90);
          }

          else
          {
          }

          goto LABEL_34;
        }

        v71 = *(v67 + 8 * v77);
        ++v2;
        if (v71)
        {
          v2 = v77;
          goto LABEL_24;
        }
      }

      __break(1u);
    }
  }

LABEL_34:
  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261F665E4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_52(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_51(uint64_t a1)
{

  return swift_once();
}

void sub_261F666D8()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_0Tm(v0 + 24, v0[27]);
  v2 = OUTLINED_FUNCTION_72();
  v42 = v3(v2);
  v43 = v4;
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  memcpy(__dst, v0 + 2, 0x61uLL);
  v5 = __dst[6];
  v6 = __dst[7];
  if (__dst[3])
  {
    v38 = *(v0 + 1);
    v39 = v0[4];
    v40 = __dst[3];
    OUTLINED_FUNCTION_92();
    sub_261F674BC(__dst, v37, &qword_27FEF9978, &qword_262045D80);

    sub_261F66E60(&v38, &qword_27FEF9978, &qword_262045D80);
    goto LABEL_3;
  }

  v38 = *(v0 + 1);
  v39 = v0[4];
  v40 = 0;
  OUTLINED_FUNCTION_92();
  v5 = &qword_262045D80;
  sub_261F674BC(__dst, v37, &qword_27FEF9978, &qword_262045D80);
  sub_261F66E60(&v38, &qword_27FEF9978, &qword_262045D80);
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v8 = v0[15];
  if (!v8)
  {
LABEL_10:
    v5 = 0;
    v6 = 0;
    goto LABEL_11;
  }

  v9 = v8;
  CUPairedPeer.udid.getter();
  OUTLINED_FUNCTION_67_1();

  if (v6)
  {
LABEL_3:
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = 0;
LABEL_11:
  __swift_project_boxed_opaque_existential_0Tm(v1 + 24, v1[27]);
  v10 = OUTLINED_FUNCTION_39_1();
  v11(v10);
  if (v40)
  {
    v12 = v41;
    v13 = __swift_project_boxed_opaque_existential_0Tm(&v38, v40);
    v14 = OUTLINED_FUNCTION_39_1();
    v15(v14);
    OUTLINED_FUNCTION_129();
    __swift_destroy_boxed_opaque_existential_0Tm(&v38);
  }

  else
  {
    sub_261F66E60(&v38, &qword_27FEF9980, &qword_26203F7C0);
    v13 = 0;
    v12 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9988, &qword_26203F7C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26203F720;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  *(inited + 48) = v13;
  *(inited + 56) = v12;
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (v1[23])
  {

    v17 = OUTLINED_FUNCTION_108();
    MEMORY[0x266722710](v17);

    v18 = 0x5F6E6F6363;
    v19 = 0xE500000000000000;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v20 = 0;
  *(inited + 64) = v18;
  *(inited + 72) = v19;
  v21 = MEMORY[0x277D84F90];
LABEL_18:
  v22 = v20 - 1;
  v23 = 16 * v20 + 40;
  while (v22 != 2)
  {
    if (++v22 > 2)
    {
      __break(1u);
      return;
    }

    v24 = v23 + 16;
    v25 = *(inited + v23);
    v23 += 16;
    if (v25)
    {
      v26 = *(inited + v24 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_261F67ABC();
        v21 = v29;
      }

      v27 = *(v21 + 16);
      if (v27 >= *(v21 + 24) >> 1)
      {
        sub_261F67ABC();
        v21 = v30;
      }

      v20 = v22 + 1;
      *(v21 + 16) = v27 + 1;
      v28 = v21 + 16 * v27;
      *(v28 + 32) = v26;
      *(v28 + 40) = v25;
      goto LABEL_18;
    }
  }

  swift_setDeallocating();
  sub_261F67ECC(&qword_27FEF9A60, &unk_26203E650);
  v31 = OUTLINED_FUNCTION_22_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
  OUTLINED_FUNCTION_68_1(&qword_28108B318);
  v33 = sub_26203A13C();
  v35 = v34;

  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    MEMORY[0x266722710](v33, v35);

    OUTLINED_FUNCTION_182();
    MEMORY[0x266722710](10272, 0xE200000000000000);
  }
}

void *__swift_project_boxed_opaque_existential_0Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_71_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v31 = *(a29 + 48) + 40 * v29;

  return sub_261F67914(v31);
}

uint64_t sub_261F66BE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_261FC69E8(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t a1)
{

  return sub_26203A8EC();
}

uint64_t OUTLINED_FUNCTION_43(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_7()
{
  v2 = *(v0 - 264);
  v3 = *(v0 - 272);

  return sub_261F665E4(v2, v3);
}

uint64_t OUTLINED_FUNCTION_8_9(uint64_t a1)
{

  return sub_26203A8EC();
}

uint64_t OUTLINED_FUNCTION_8_10(uint64_t result)
{
  *(v2 - 120) = v1;
  *(v2 - 112) = result;
  *(v2 - 152) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_8_11()
{

  return sub_26203A8CC();
}

uint64_t sub_261F66E20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_261F66E60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t CUPairedPeer.udid.getter()
{
  if (sub_261F6752C(v0, &selRef_info))
  {
    OUTLINED_FUNCTION_3_17();
    v26[0] = v2;
    v26[1] = v1;
    v7 = OUTLINED_FUNCTION_20_7(v3, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v4, v5, v6);
    OUTLINED_FUNCTION_12_9(v7, v8, v9, v10, v11, v12, v13);

    v14 = sub_261F67914(v25);
    if (v26[3])
    {
      v15 = OUTLINED_FUNCTION_4_12(v14);
      return OUTLINED_FUNCTION_5_10(v15, v16, v17, v18, v19, v20, v21, v22, v24, v25[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_10();
  }

  sub_261FCB894(v26, &qword_27FEF9870, &qword_26203C960);
  return OUTLINED_FUNCTION_84();
}

uint64_t OUTLINED_FUNCTION_31(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26203AE3C();
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26203AD3C();
}

id OUTLINED_FUNCTION_3_6()
{

  return sub_261FBF774(v0, v1, v2, 0);
}

uint64_t OUTLINED_FUNCTION_3_12()
{

  return sub_26203ABAC();
}

uint64_t OUTLINED_FUNCTION_3_14()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_3_16(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_3_23(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t __dst, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char __src)
{

  return memcpy(&__dst, &__src, 0x93uLL);
}

void OUTLINED_FUNCTION_24_3()
{

  JUMPOUT(0x266722710);
}

void OUTLINED_FUNCTION_1_0()
{

  JUMPOUT(0x266724180);
}

uint64_t OUTLINED_FUNCTION_24_6(uint64_t a1, uint64_t a2)
{

  return sub_26203AB3C();
}

unint64_t sub_261F67388()
{
  sub_26203A77C();
  v0 = OUTLINED_FUNCTION_23_1();

  return sub_261F673C8(v0, v1);
}

unint64_t sub_261F673C8(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_261F67C78(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x266722C30](v8, a1);
    sub_261F67914(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_261F674BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_97(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6_1();
  v5 = OUTLINED_FUNCTION_47();
  v6(v5);
  return v4;
}

void *OUTLINED_FUNCTION_138(void *a1)
{

  return memcpy(a1, (v1 - 224), 0x82uLL);
}

uint64_t sub_261F6752C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_26203A0DC();

  return v4;
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_261F8C34C(va, &a9, v16, v17);
}

unint64_t OUTLINED_FUNCTION_20_1()
{

  return sub_261F67388();
}

void OUTLINED_FUNCTION_18()
{
  v1 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v1;
}

uint64_t OUTLINED_FUNCTION_20_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26203AB3C();
}

uint64_t OUTLINED_FUNCTION_20_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return sub_26203A79C();
}

uint64_t OUTLINED_FUNCTION_79(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_20_9(uint64_t a1)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_20_10()
{
  v2 = *(v0 - 264);
}

void OUTLINED_FUNCTION_12(uint64_t a1@<X8>)
{
  *v1 = v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v1 + 8) = a1;
  *(v1 + 16) = 0;
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_26203972C();
}

uint64_t OUTLINED_FUNCTION_12_3@<X0>(char a1@<W8>)
{
  *(v1 - 88) = a1;

  return sub_26203AB6C();
}

uint64_t OUTLINED_FUNCTION_12_5()
{

  return sub_26203ACEC();
}

double OUTLINED_FUNCTION_12_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_261F678B4(v7, va);
}

uint64_t OUTLINED_FUNCTION_12_12@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

double sub_261F678B4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    return OUTLINED_FUNCTION_25_1();
  }

  v4 = sub_261F67388();
  if ((v5 & 1) == 0)
  {
    return OUTLINED_FUNCTION_25_1();
  }

  v6 = *(a1 + 56) + 32 * v4;

  sub_261F681A8(v6, a2);
  return result;
}

uint64_t OUTLINED_FUNCTION_75_0()
{

  return type metadata accessor for PairedHostInfo(0);
}

uint64_t OUTLINED_FUNCTION_40_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_40_1(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_40_5()
{
}

uint64_t sub_261F67A58@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    v4 = sub_2620396FC();
    v5 = &protocol witness table for RemoteDevice;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

void sub_261F67ABC()
{
  OUTLINED_FUNCTION_66_1();
  if (v4)
  {
    OUTLINED_FUNCTION_51_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_64_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_49_0();
    }
  }

  OUTLINED_FUNCTION_18_3();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B00, &unk_26203E630);
    v7 = OUTLINED_FUNCTION_124();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_66();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_165();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_61(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_61_3(unint64_t *a1)
{

  return sub_2620247CC(a1, &protocol conformance descriptor for ControlChannelConnectionWireProtocolVersion);
}

uint64_t OUTLINED_FUNCTION_46_0(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_62_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_18_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_26203A91C();
}

void OUTLINED_FUNCTION_18_6()
{
  v1 = *(v0 - 160);
  *(v0 - 128) = *(v0 - 168);
  *(v0 - 120) = v1;
}

void OUTLINED_FUNCTION_18_7()
{

  JUMPOUT(0x2667241A0);
}

uint64_t OUTLINED_FUNCTION_45(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_45_1(void *a1)
{

  return memcpy(a1, v1, 0x93uLL);
}

uint64_t OUTLINED_FUNCTION_59(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_59_2()
{
  v1 = v0[146];
  v0[140] = v0[145];
  v0[141] = v1;
}

uint64_t sub_261F67ECC(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_46();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_65_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_65_1()
{

  JUMPOUT(0x266722710);
}

uint64_t sub_261F67F70(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_175()
{

  return sub_261F674BC(v3 - 216, v0 + 24, v1, v2);
}

unint64_t sub_261F67FE4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_261F680A8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_261F681A8(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_261F680A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_261F69424(a5, a6);
    *a1 = v9;
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
    result = sub_26203A82C();
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

uint64_t sub_261F681A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

id sub_261F68250(id result)
{
  if (result >= 6)
  {
    return result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s6ResultOy19RemotePairingDevice08WirelessC7SessionCs5Error_pGIegg_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_68_1(unint64_t *a1)
{
  v4 = MEMORY[0x277D83958];

  return sub_261F67F70(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_68_2()
{

  return sub_26203AD4C();
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_17_3(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  *v23 = a1;

  return sub_261F67FE4(v24, v22, va);
}

uint64_t OUTLINED_FUNCTION_17_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_26203A8CC();
}

uint64_t OUTLINED_FUNCTION_9()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_33(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_3(uint64_t a1, uint64_t a2)
{

  return sub_26203AA9C();
}

_OWORD *OUTLINED_FUNCTION_9_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return sub_261F8D184(&v9, &v8);
}

uint64_t OUTLINED_FUNCTION_9_8()
{
  v2 = *(v0 - 272);
  v3 = *(v0 - 280);

  return sub_261F665E4(v2, v3);
}

uint64_t OUTLINED_FUNCTION_9_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(a11 + 48) + 40 * v11;

  return sub_261F67914(v13);
}

uint64_t OUTLINED_FUNCTION_9_13()
{

  return sub_26203A8CC();
}

uint64_t OUTLINED_FUNCTION_9_15(uint64_t a1, uint64_t a2)
{

  return sub_26203A97C();
}

void sub_261F68710(id result)
{
  if (result != 6)
  {
    sub_261F6A6D0(result);
  }
}

uint64_t OUTLINED_FUNCTION_103(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return sub_26203AC0C();
}

void OUTLINED_FUNCTION_2_13()
{

  JUMPOUT(0x266722710);
}

uint64_t OUTLINED_FUNCTION_2_14(uint64_t result)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = result;
  *(v2 - 136) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_17(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_2_22(uint64_t a1)
{

  return swift_once();
}

void sub_261F68B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void (*a7)(uint64_t, uint64_t), void (*a8)(uint64_t), void (*a9)(uint64_t, uint64_t))
{
  switch(a6)
  {
    case 0:
      a7(a2, a3);
      v9 = OUTLINED_FUNCTION_111();

      a8(v9);
      break;
    case 1:
    case 2:

      (a7)(a1, a2, a3, a4, a5);
      break;
    case 3:

      a9(a1, a2);
      break;
    default:
      return;
  }
}

void sub_261F68C28(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  v12 = v2;
  v13 = v3;
  swift_beginAccess();
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  v9 = *(v1 + 160);
  v10 = *(v1 + 168);
  sub_261F68B30(v5, v6, v7, v8, v9, v10, sub_261F7D45C, sub_261F81D84, sub_261F6B73C);
  sub_261FA9C88(v11);
  sub_261F68B30(v5, v6, v7, v8, v9, v10, sub_261F99050, sub_261F6ADEC, sub_261F6BFFC);
}

Swift::Void __swiftcall OS_dispatch_queue.assertOnQueueHierarchy()()
{
  v1 = sub_26203A07C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_74();
  v7 = (v6 - v5);
  v8 = OS_dispatch_queue.parentQueue.getter();
  if (v8)
  {
    v11 = v8;
    OS_dispatch_queue.assertOnQueueHierarchy()();
  }

  else
  {
    *v7 = v0;
    (*(v3 + 104))(v7, *MEMORY[0x277D85200], v1);
    v9 = v0;
    v10 = sub_26203A0AC();
    (*(v3 + 8))(v7, v1);
    if ((v10 & 1) == 0)
    {
      __break(1u);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_9()
{

  return sub_26203A91C();
}

uint64_t OUTLINED_FUNCTION_0_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_14(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_15(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_20@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  result = a1[1];
  v4 = *(a1 + 16);
  *v1 = v3;
  *(v1 + 8) = result;
  *(v1 + 16) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_30(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_34(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_35(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_36(uint64_t a1)
{

  return swift_once();
}

uint64_t OS_dispatch_queue.parentQueue.getter()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_27FEFA178);
  swift_endAccess();
  if (v1)
  {
    sub_26203A73C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_261F6935C();
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_261F693A0(v6);
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_69_1()
{

  return sub_26203A0FC();
}

uint64_t OUTLINED_FUNCTION_69_2()
{

  return sub_26203AD3C();
}

unint64_t sub_261F6935C()
{
  result = qword_28108CFB0;
  if (!qword_28108CFB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28108CFB0);
  }

  return result;
}

uint64_t sub_261F693A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice24ControlChannelConnectionC5StateO(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

uint64_t sub_261F69424(uint64_t a1, unint64_t a2)
{
  v3 = sub_261F69470(a1, a2);
  sub_261F695F8(&unk_2874891B0);
  return v3;
}

uint64_t sub_261F69470(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_26203A27C())
  {
    result = sub_261F69588(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26203A7AC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_26203A82C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_261F69588(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9918, &qword_26203F700);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_261F695F8(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_261FA3764(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

BOOL sub_261F696DC(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 40);
  v9 = *a2;
  v10 = *v2;
  v11 = *(v2 + 8);
  v13 = *(v2 + 16);
  v12 = *(v2 + 24);
  v14 = *(v2 + 32);
  v15 = *(v2 + 40);
  v133[0] = *a1;
  v133[1] = v3;
  v133[2] = v6;
  v133[3] = v5;
  v133[4] = v7;
  v134 = v8;
  v135 = v10;
  v136 = v11;
  v137 = v13;
  v138 = v12;
  v139 = v14;
  v140 = v15;
  switch(v15)
  {
    case 1:
      if (v8)
      {
        v40 = OUTLINED_FUNCTION_1_6();
        sub_261F69F78(v40, v41, v42, v43, v44, v45);
        v27 = OUTLINED_FUNCTION_0_6();
        v32 = 1;
        goto LABEL_53;
      }

      v52 = "sThroughLockdown";
      v53 = 0;
      switch(v4)
      {
        case 1:
          OUTLINED_FUNCTION_6_4();
          break;
        case 2:
          v53 = 0;
          v52 = "setupManualPairing";
          break;
        case 3:
          v53 = 0;
          v52 = "tionLockdownPairing";
          break;
        default:
          break;
      }

      if (v53 && (v52 | 0x8000000000000000) == 0x800000026204C570)
      {
        v96 = OUTLINED_FUNCTION_1_6();
        sub_261F69F78(v96, v97, v98, v99, v100, 0);
        v73 = 1;
        v101 = OUTLINED_FUNCTION_0_6();
        sub_261F69F78(v101, v102, v103, v104, v105, 1);

        sub_261F6A254(v133);
      }

      else
      {
        v106 = v7;
        v132 = sub_26203AC0C();
        v107 = OUTLINED_FUNCTION_1_6();
        sub_261F69F78(v107, v108, v109, v110, v106, 0);
        v73 = 1;
        v111 = OUTLINED_FUNCTION_0_6();
        sub_261F69F78(v111, v112, v113, v114, v115, 1);

        sub_261F6A254(v133);
        if ((v132 & 1) == 0)
        {
          return 0;
        }
      }

      return v73;
    case 2:
      if (v8)
      {
        v21 = OUTLINED_FUNCTION_1_6();
        sub_261F69F78(v21, v22, v23, v24, v25, v26);
        v27 = OUTLINED_FUNCTION_0_6();
        v32 = 2;
        goto LABEL_53;
      }

      v46 = 0;
      v47 = "sThroughLockdown";
      switch(v4)
      {
        case 1:
          OUTLINED_FUNCTION_6_4();
          break;
        case 2:
          v47 = "setupManualPairing";
          v46 = 1;
          break;
        case 3:
          v46 = 0;
          v47 = "tionLockdownPairing";
          break;
        default:
          break;
      }

      if (v46 && (v47 | 0x8000000000000000) == 0x800000026204C590)
      {
        v76 = OUTLINED_FUNCTION_1_6();
        sub_261F69F78(v76, v77, v78, v79, v80, 0);
        v81 = OUTLINED_FUNCTION_0_6();
        sub_261F69F78(v81, v82, v83, v84, v85, 2);
        goto LABEL_111;
      }

      v86 = v7;
      v131 = sub_26203AC0C();
      v87 = OUTLINED_FUNCTION_1_6();
      sub_261F69F78(v87, v88, v89, v90, v86, 0);
      v91 = OUTLINED_FUNCTION_0_6();
      sub_261F69F78(v91, v92, v93, v94, v95, 2);

      if (v131)
      {
        goto LABEL_112;
      }

      switch(v4)
      {
        case 1:
          OUTLINED_FUNCTION_6_4();
          break;
        case 3:
          goto LABEL_111;
        default:
          break;
      }

      v18 = sub_26203AC0C();
      goto LABEL_91;
    case 3:
      v33 = v8 == 4 && v4 == 5;
      if (!v33 || (OUTLINED_FUNCTION_3_2(), v49))
      {
        v34 = OUTLINED_FUNCTION_1_6();
        sub_261F69F78(v34, v35, v36, v37, v38, v39);
        v27 = OUTLINED_FUNCTION_0_6();
        v32 = 3;
        goto LABEL_53;
      }

      if (!v48)
      {
        v18 = OUTLINED_FUNCTION_2_3();
        v74 = v10;
        v75 = v11;
        goto LABEL_56;
      }

      v50 = v10;
      v51 = v11;
LABEL_27:
      sub_261F6B73C(v50, v51);
      goto LABEL_111;
    case 4:
      if (!(v13 | v11 | v10 | v12 | v14))
      {
        goto LABEL_52;
      }

      v19 = v13 | v11 | v12 | v14;
      if (v10 == 1 && !v19)
      {
        if (v8 == 4)
        {
          v20 = v6 | v3 | v4 | v5 | v7;
          goto LABEL_41;
        }

        goto LABEL_52;
      }

      if (v10 == 2 && !v19)
      {
        if (v8 == 4 && v4 == 1)
        {
          v20 = v6 | v3 | v5 | v7;
LABEL_41:
          if (!v20)
          {
            goto LABEL_112;
          }
        }

LABEL_52:
        v27 = OUTLINED_FUNCTION_1_6();
        goto LABEL_53;
      }

      if (v10 == 3 && !v19)
      {
        if (v8)
        {
          goto LABEL_52;
        }

        v118 = "sThroughLockdown";
        v119 = 1;
        v120 = "sThroughLockdown";
        switch(v4)
        {
          case 1:
            OUTLINED_FUNCTION_6_4();
            break;
          case 2:
            v119 = 0;
            v120 = "setupManualPairing";
            break;
          case 3:
            v119 = 0;
            v120 = "tionLockdownPairing";
            break;
          default:
            break;
        }

        if (v119 && (v120 | 0x8000000000000000) == (v118 | 0x8000000000000000))
        {
LABEL_110:
          OUTLINED_FUNCTION_7_1();
LABEL_111:

          goto LABEL_112;
        }

LABEL_115:
        v124 = sub_26203AC0C();
        OUTLINED_FUNCTION_7_1();

        sub_261F6A254(v133);
        return (v124 & 1) != 0;
      }

      if (v10 != 4 || v19)
      {
        if (v10 != 5 || v19)
        {
          if (v10 == 6 && !v19)
          {
            v60 = OUTLINED_FUNCTION_1_6();
LABEL_32:
            sub_261F69F78(v60, v61, v62, v63, v64, v65);
            goto LABEL_112;
          }

          if (v10 == 7 && !v19)
          {
            if (v8 != 4 || v4 != 3)
            {
              goto LABEL_52;
            }

            OUTLINED_FUNCTION_3_2();
            if (v122)
            {
              goto LABEL_52;
            }

LABEL_104:
            if ((v116 & 1) == 0)
            {
              goto LABEL_111;
            }

            v18 = OUTLINED_FUNCTION_4_1();
            goto LABEL_91;
          }

          if (v8 != 4 || v4 != 2)
          {
            goto LABEL_52;
          }

          OUTLINED_FUNCTION_3_2();
          if (v127)
          {
            goto LABEL_52;
          }

          if (v126)
          {
            goto LABEL_111;
          }

          v18 = OUTLINED_FUNCTION_2_3();
        }

        else
        {
          switch(v8)
          {
            case 0:
              v128 = "sThroughLockdown";
              v129 = 0;
              v130 = "setupManualPairing";
              switch(v4)
              {
                case 1:
                  OUTLINED_FUNCTION_6_4();
                  break;
                case 2:
                  v129 = 0;
                  v128 = "setupManualPairing";
                  break;
                case 3:
                  v129 = 0;
                  v128 = "tionLockdownPairing";
                  break;
                default:
                  break;
              }

              if (!v129 || (v128 | 0x8000000000000000) != ((v130 - 32) | 0x8000000000000000))
              {
                goto LABEL_115;
              }

              goto LABEL_110;
            case 1:
            case 2:
              goto LABEL_86;
            case 3:
              if (v9)
              {
                v50 = v4;
                v51 = v3;
                goto LABEL_27;
              }

              v18 = OUTLINED_FUNCTION_2_3();
              v74 = v4;
              v75 = v3;
              break;
            case 4:
              v20 = v6 | v3 | v5 | v7;
              if (v4 == 2 && !v20 || v4 == 3 && !v20)
              {
                goto LABEL_112;
              }

              if (v4 != 4)
              {
                goto LABEL_52;
              }

              goto LABEL_41;
            default:
              goto LABEL_52;
          }

LABEL_56:
          sub_261F6B73C(v74, v75);
        }

LABEL_91:

        sub_261F6A254(v133);
        return (v18 & 1) != 0;
      }

      if (v8 != 1 && v8 != 2)
      {
        if (v8 != 4)
        {
          goto LABEL_52;
        }

        OUTLINED_FUNCTION_3_2();
        if (v4 == 3 && !v117)
        {
          goto LABEL_112;
        }

        if (v4 != 7 || v117)
        {
          goto LABEL_52;
        }

        goto LABEL_104;
      }

LABEL_86:
      sub_261F7D45C(v4, v3);
LABEL_112:
      sub_261F6A254(v133);
      return 1;
    default:
      if (v8 == 3)
      {
        v54 = OUTLINED_FUNCTION_1_6();
        sub_261F69F78(v54, v55, v56, v57, v58, v59);
        v60 = OUTLINED_FUNCTION_0_6();
        v65 = 0;
        goto LABEL_32;
      }

      if (v8 != 4)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_3_2();
      if (v4 == 2 && !v17)
      {
        if (v16)
        {
          v18 = OUTLINED_FUNCTION_4_1();
          OUTLINED_FUNCTION_5_0();
          goto LABEL_91;
        }

        OUTLINED_FUNCTION_5_0();
        goto LABEL_111;
      }

      if (v4 == 5 && !v17 || v4 == 8 && !v17)
      {
        OUTLINED_FUNCTION_5_0();
        goto LABEL_112;
      }

LABEL_48:
      v67 = OUTLINED_FUNCTION_1_6();
      sub_261F69F78(v67, v68, v69, v70, v71, v72);
      v27 = OUTLINED_FUNCTION_0_6();
      v32 = 0;
LABEL_53:
      sub_261F69F78(v27, v28, v29, v30, v31, v32);
      sub_261F6A254(v133);
      return 0;
  }
}

uint64_t sub_261F69F78(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:
      sub_261F7D45C(a2, a3);

      result = sub_261F81D84(a4, a5);
      break;
    case 1:
    case 2:

      result = sub_261F7D45C(result, a2);
      break;
    case 3:

      result = sub_261F6B73C(result, a2);
      break;
    default:
      return result;
  }

  return result;
}

void OUTLINED_FUNCTION_1_3(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return sub_26203AD3C();
}

void OUTLINED_FUNCTION_1_19(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  sub_261FA447C();
}

uint64_t OUTLINED_FUNCTION_1_21()
{

  return sub_26203AD3C();
}

uint64_t OUTLINED_FUNCTION_1_24(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_261F6A254(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF96C8, &unk_26203E9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_31_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_31_7()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_31_8()
{
  v3 = *(v1 - 304);

  return sub_26202D0F8(v0, v3);
}

uint64_t OUTLINED_FUNCTION_33_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27()
{

  return swift_slowAlloc();
}

void sub_261F6A480(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__encryptionStream);
  *(v1 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__encryptionStream) = a1;
  v2 = a1;
  sub_261F6A4E0(v3);
}

id sub_261F6A4E0(id result)
{
  if (result)
  {
    return [*(v1 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__pairingSession) closeStream_];
  }

  return result;
}

void sub_261F6A504(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__pairingSession);
  *(v1 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__pairingSession) = a1;
  v2 = a1;
  [v3 invalidate];
}

uint64_t sub_261F6A58C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261F6A5C4(uint64_t a1, uint64_t a2)
{
  sub_26203ADDC();
  swift_getWitnessTable();
  HashableByObjectIdentity.hash(into:)();
  return sub_26203AE0C();
}

BOOL sub_261F6A658(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  swift_getWitnessTable();

  return static HashableByObjectIdentity.== infix(_:_:)(v3, v4);
}

void sub_261F6A6D0(id a1)
{
  if (a1 >= 6)
  {
  }
}

uint64_t OUTLINED_FUNCTION_90_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  v5 = *(v3 + a3);
  v6 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  return sub_261F665E4(v5, v6);
}

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice28ControlChannelTransportEventO(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (((v1 >> 11) & 2) != 0)
  {
    return ((*a1 >> 2) & 0xFFFFFFFE | *a1 & 1) + 2;
  }

  else
  {
    return (v1 >> 11) & 3;
  }
}

uint64_t ControlChannelConnection.deinit()
{
  sub_261F6AABC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_1_9();
  sub_261F68B30(v1, v2, v3, v4, v5, v6, sub_261F99050, sub_261F6ADEC, v10);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 192));

  sub_261F665E4(*(v0 + 248), *(v0 + 256));
  sub_261F665E4(*(v0 + 264), *(v0 + 272));
  sub_261F665E4(*(v0 + 280), *(v0 + 288));
  sub_261F665E4(*(v0 + 296), *(v0 + 304));
  sub_261F66E60(v0 + 320, &qword_27FEF99A0, &qword_26203F7D8);
  sub_261F66E60(v0 + 360, &qword_27FEF99A8, &qword_26203F7E0);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 400));
  sub_261F66E60(v0 + 440, &qword_27FEF99B0, &qword_26203F7E8);
  sub_261F66E60(v0 + 480, &qword_27FEF99B8, &qword_26203F7F0);

  sub_261F665E4(*(v0 + 544), *(v0 + 552));
  v7 = OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection_startedAt;
  sub_26203A03C();
  OUTLINED_FUNCTION_6_1();
  (*(v8 + 8))(v0 + v7);

  sub_261F6ADEC(*(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__mdmChallengeData), *(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__mdmChallengeData + 8));
  swift_unknownObjectRelease();

  sub_261F68710(*(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection_invalidationReason));
  return v0;
}

uint64_t ControlChannelConnection.__deallocating_deinit()
{
  ControlChannelConnection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_261F6AABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  if (a4)
  {

    sub_261F6ADEC(a11, a12);
  }
}

uint64_t RemoteXPCControlChannelTransport.__deallocating_deinit()
{
  RemoteXPCControlChannelTransport.deinit();

  return MEMORY[0x2821FE8D8](v0, 60, 7);
}

void *RemoteXPCControlChannelTransport.deinit()
{

  return v0;
}

uint64_t sub_261F6AD48()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_63();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_60(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_261F6ADEC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_261F6BFFC(a1, a2);
  }

  return a1;
}

uint64_t sub_261F6AE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a1 + 32);

  v15(a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_261F6AEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v79 = a5;
  v80 = a4;
  v84 = *MEMORY[0x277D85DE8];
  v10 = sub_26203A07C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v76 = a6;
  v15 = (result + 88);
  v16 = result;
  if (!*(result + 88))
  {
    a2 = sub_26203A48C();
    if (qword_28108B5E0 != -1)
    {
      goto LABEL_59;
    }

    goto LABEL_50;
  }

  v17 = *(result + 80);
  *v13 = v17;
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v18 = v17;
  LOBYTE(v17) = sub_26203A0AC();
  (*(v11 + 8))(v13, v10);
  if ((v17 & 1) == 0)
  {
    goto LABEL_57;
  }

  if (!a2 || !v80)
  {
    __break(1u);
    goto LABEL_62;
  }

  v20 = &unk_28108B000;
  if (!v79)
  {
    goto LABEL_58;
  }

  v72 = v15;
  v73 = v16;
  v21 = 0;
  v78 = ", dropping %d packets";
  v74 = MEMORY[0x277D84F90];
  *&v19 = 138543362;
  v75 = v19;
  v22 = v76;
  while (1)
  {
    if (v22 == v21)
    {
      v54 = v73;
      v55 = v74;
      v56 = v74[2];
      if (v56)
      {
        v57 = (v74 + 4);
        do
        {
          memcpy(__dst, v57, sizeof(__dst));
          memcpy(v82, __dst, sizeof(v82));
          sub_261F6D6B0(__dst, &v81);
          sub_261F6CDE4();
          sub_261F6D70C(__dst);
          v57 += 96;
          --v56;
        }

        while (v56);
      }

      v58 = v72;
      v59 = *v72;
      if (*v72)
      {
        v60 = *(v54 + 96);
        *v72 = 0;
        v58[1] = 0;
        __dst[0] = v55;
        __dst[1] = nullsub_1;
        __dst[2] = 0;
        v59(__dst);
        sub_261F665E4(v59, v60);
      }

LABEL_62:
      __break(1u);
      JUMPOUT(0x261F6B72CLL);
    }

    if (v21 >= v22)
    {
      break;
    }

    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_54;
    }

    a2 = *(v80 + 8 * v21);
    if (!a2)
    {
      __break(1u);
    }

    v24 = *(v79 + 8 * v21);
    if (v24)
    {
      if (v24 <= 0xE)
      {
        *(__dst + 6) = 0;
        __dst[0] = 0;
        BYTE6(__dst[1]) = v24;
        memcpy(__dst, a2, v24);
        v26 = __dst[0];
        v27 = v77 & 0xF00000000000000 | LODWORD(__dst[1]) | ((WORD2(__dst[1]) | (BYTE6(__dst[1]) << 16)) << 32);
        v77 = v27;
      }

      else
      {
        sub_2620393BC();
        swift_allocObject();
        v25 = sub_26203936C();
        a2 = v25;
        if (v24 >= 0x7FFFFFFF)
        {
          sub_2620394AC();
          v26 = swift_allocObject();
          *(v26 + 16) = 0;
          *(v26 + 24) = v24;
          v27 = a2 | 0x8000000000000000;
        }

        else
        {
          v26 = v24 << 32;
          v27 = v25 | 0x4000000000000000;
        }
      }

      switch(v27 >> 62)
      {
        case 1uLL:
          if (__OFSUB__(HIDWORD(v26), v26))
          {
            goto LABEL_55;
          }

          a2 = HIDWORD(v26) - v26;
LABEL_24:
          sub_261F6B73C(v26, v27);
          sub_261F6B73C(v26, v27);
LABEL_25:
          if (a2 <= 39)
          {
            sub_261F6BFFC(v26, v27);
            goto LABEL_27;
          }

          sub_261F6B73C(v26, v27);
          IPv6Header.init(_:)();
          v38 = __dst[0];
          v37 = __dst[1];
          v39 = __dst[2];
          a2 = __dst[3];
          v40 = __dst[4];
          v42 = __dst[5];
          v41 = __dst[6];
          v70 = __dst[1];
          v71 = LOBYTE(__dst[2]);
          if (qword_28108CB70 != -1)
          {
            swift_once();
            v39 = v71;
            v37 = v70;
          }

          if (byte_27FF07DF0)
          {
            __dst[0] = v38;
            __dst[1] = v37;
            LOBYTE(__dst[2]) = v39;
            __dst[3] = a2;
            __dst[4] = v40;
            __dst[5] = v42;
            __dst[6] = v41;
            sub_261F6B73C(a2, v40);
            sub_261F6B73C(v42, v41);
            sub_2620043E4(__dst, v26, v27, v82);
            sub_261F6BFFC(v26, v27);
            v43 = v82[1];
            v67 = v82[0];
          }

          else
          {
            sub_261F6BFFC(v26, v27);
            sub_261F6BFFC(v26, v27);
            v67 = 0;
            v43 = 0xF000000000000000;
          }

          v66 = v43;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v68 = v42;
          v69 = v41;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_261F6C054();
            v74 = v52;
          }

          v45 = v71;
          v46 = v74[2];
          if (v46 >= v74[3] >> 1)
          {
            sub_261F6C054();
            v45 = v71;
            v74 = v53;
          }

          v47 = v74;
          v74[2] = v46 + 1;
          v48 = &v47[12 * v46];
          *(v48 + 8) = 30;
          v49 = v70;
          v48[5] = v38;
          v48[6] = v49;
          *(v48 + 56) = v45;
          LODWORD(v49) = *(__dst + 3);
          *(v48 + 57) = __dst[0];
          *(v48 + 15) = v49;
          v48[8] = a2;
          v48[9] = v40;
          v50 = v69;
          v48[10] = v68;
          v48[11] = v50;
          v51 = v66;
          v48[12] = v67;
          v48[13] = v51;
          v48[14] = v26;
          v48[15] = v27;
          v21 = v23;
          v22 = v76;
          v20 = &unk_28108B000;
          break;
        case 2uLL:
          v29 = *(v26 + 16);
          v28 = *(v26 + 24);
          a2 = v28 - v29;
          if (!__OFSUB__(v28, v29))
          {
            goto LABEL_24;
          }

          goto LABEL_56;
        case 3uLL:
          goto LABEL_27;
        default:
          a2 = BYTE6(v27);
          goto LABEL_25;
      }
    }

    else
    {
      v26 = 0;
      v27 = 0xC000000000000000;
LABEL_27:
      sub_261F9BCE0();
      sub_26203ACEC();
      v82[0] = __dst[0];
      v82[1] = __dst[1];
      sub_261F9D610();
      v30 = swift_allocError();
      sub_26203AD4C();
      swift_willThrow();
      sub_261F6BFFC(v26, v27);
      a2 = sub_26203A48C();
      if (v20[188] != -1)
      {
        swift_once();
      }

      v31 = qword_28108B5F0;
      if (os_log_type_enabled(qword_28108B5F0, a2))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = v75;
        v34 = v30;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 4) = v35;
        *v33 = v35;
        _os_log_impl(&dword_261F5B000, v31, a2, "Discarding packet data as it is not a valid IPv6 packet: %{public}@", v32, 0xCu);
        sub_261FC2F14(v33, qword_27FEF9B90, &qword_262040548);
        v36 = v33;
        v22 = v76;
        MEMORY[0x266724180](v36, -1, -1);
        MEMORY[0x266724180](v32, -1, -1);
      }

      sub_261F6BFFC(v26, v27);

      ++v21;
      v20 = &unk_28108B000;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  swift_once();
LABEL_50:
  v61 = qword_28108B5F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9AA0, &qword_262040540);
  v62 = swift_allocObject();
  v63 = MEMORY[0x277D83B88];
  *(v62 + 16) = xmmword_26203E9E0;
  v64 = MEMORY[0x277D83C10];
  *(v62 + 56) = v63;
  *(v62 + 64) = v64;
  *(v62 + 32) = v76;
  sub_26203969C(a2, &dword_261F5B000, v61, "VirtualInterface: Read handler called without completion handler, dropping %d packets", v65);
}

uint64_t sub_261F6B73C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t IPv6Header.init(_:)()
{
  OUTLINED_FUNCTION_13_6();
  if (v3 < 40)
  {
    sub_261F9BCE0();
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_4_8();

    v4 = OUTLINED_FUNCTION_1_1();
    MEMORY[0x266721A20](v4);
    v5 = OUTLINED_FUNCTION_3_12();
    MEMORY[0x266722710](v5);

    OUTLINED_FUNCTION_2_13();
    v6 = OUTLINED_FUNCTION_3_12();
    MEMORY[0x266722710](v6);

    OUTLINED_FUNCTION_5_8();
    v7 = sub_261F9D610();
    OUTLINED_FUNCTION_14_0(v7);
    OUTLINED_FUNCTION_0_0();
    sub_26203AD4C();
    swift_willThrow();
    v8 = OUTLINED_FUNCTION_1_1();
    return sub_261F6BFFC(v8, v9);
  }

  OUTLINED_FUNCTION_11_5();
  switch(v14)
  {
    case 1:
      v12 = v13;
      break;
    case 2:
      v12 = *(v2 + 16);
      break;
    default:
      break;
  }

  v15 = __OFADD__(v12, 4);
  v16 = v12 + 4;
  if (v15)
  {
    __break(1u);
    goto LABEL_23;
  }

  v17 = v16 + 2;
  if (__OFADD__(v16, 2))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  switch(v11)
  {
    case 1:
      goto LABEL_12;
    case 2:
      v13 = *(v2 + 16);
LABEL_12:
      if (v16 < v13)
      {
        goto LABEL_26;
      }

      if (v11 != 2)
      {
        goto LABEL_18;
      }

      v18 = *(v2 + 24);
      break;
    case 3:
      if (v16 < 0)
      {
        goto LABEL_27;
      }

      if (v17 <= 0)
      {
        goto LABEL_20;
      }

      __break(1u);
LABEL_18:
      v18 = v2 >> 32;
      break;
    default:
      if (v16 < 0)
      {
        goto LABEL_28;
      }

      v18 = BYTE6(v0);
      break;
  }

  if (v18 < v17)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    JUMPOUT(0x261F6B9F0);
  }

LABEL_20:
  if (v16 >= v17)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = OUTLINED_FUNCTION_1_1();
  v30 = sub_261F6BE04(v19, v20, 4);
  v21 = sub_26203950C();
  v22 = OUTLINED_FUNCTION_16_6(8, 24);
  v24 = v23;
  v25 = OUTLINED_FUNCTION_16_6(24, 40);
  v27 = v26;
  v28 = OUTLINED_FUNCTION_1_1();
  result = sub_261F6BFFC(v28, v29);
  *v1 = 40;
  *(v1 + 8) = v30;
  *(v1 + 16) = v21;
  *(v1 + 24) = v22;
  *(v1 + 32) = v24;
  *(v1 + 40) = v25;
  *(v1 + 48) = v27;
  return result;
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_13_4(uint64_t a1, ...)
{

  return sub_26203ADDC();
}

uint64_t OUTLINED_FUNCTION_13_5@<X0>(uint64_t a1@<X8>, void (*a2)(void)@<X2>)
{

  return sub_261FD36BC(v3 + a1, v2, a2);
}

void OUTLINED_FUNCTION_13_6()
{

  JUMPOUT(0x266721A20);
}

_OWORD *OUTLINED_FUNCTION_13_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  v9 = (*(v6 + 56) + 32 * v7);

  return sub_261F8D184(v9, &v11);
}

uint64_t OUTLINED_FUNCTION_13_12()
{

  return sub_26203A91C();
}

uint64_t OUTLINED_FUNCTION_13_13(uint64_t a1, uint64_t a2)
{

  return sub_26203A97C();
}

uint64_t OUTLINED_FUNCTION_13_14(uint64_t a1)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_11_2()
{

  JUMPOUT(0x266722710);
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_11_11(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_16_2(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(*(a5 + 56) + 8 * result) = a4;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_6(uint64_t a1, uint64_t a2)
{

  return sub_2620394FC();
}

uint64_t OUTLINED_FUNCTION_16_7(uint64_t a1, uint64_t a2)
{

  return sub_26203A97C();
}

uint64_t OUTLINED_FUNCTION_16_8(uint64_t a1)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_16_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0x16u);
}

uint64_t sub_261F6BE04(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      v9 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = v9;
      return sub_261F6BF7C(a1, v7, v6, a3);
    case 2uLL:
      v5 = *(a1 + 24);
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v7 = v5;
      return sub_261F6BF7C(a1, v7, v6, a3);
    case 3uLL:
      memset(v10, 0, 14);
      v4 = *(v10 + a3);
      return bswap32(v4) >> 16;
    default:
      v10[0] = a1;
      LOWORD(v10[1]) = a2;
      BYTE2(v10[1]) = BYTE2(a2);
      BYTE3(v10[1]) = BYTE3(a2);
      BYTE4(v10[1]) = BYTE4(a2);
      BYTE5(v10[1]) = BYTE5(a2);
      v4 = *(v10 + a3);
      return bswap32(v4) >> 16;
  }
}

uint64_t sub_261F6BF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_26203937C();
  if (v6)
  {
    v7 = v6;
    result = sub_2620393AC();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v9 = a1 - result + v7;
  }

  else
  {
    v9 = 0;
  }

  result = sub_26203939C();
  if (v9)
  {
    return bswap32(*(v9 + a4)) >> 16;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_261F6BFFC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void sub_261F6C054()
{
  OUTLINED_FUNCTION_66_1();
  if (v4)
  {
    OUTLINED_FUNCTION_51_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_64_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_49_0();
    }
  }

  OUTLINED_FUNCTION_18_3();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9AC8, &qword_262040310);
    v8 = OUTLINED_FUNCTION_103(v7);
    v9 = _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_40_1(v9);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_165();
  if (v1)
  {
    if (v8 != v0 || &v11[96 * v2] <= v10)
    {
      memmove(v10, v11, 96 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_261F6C158(id a1, unint64_t a2, char a3, uint64_t a4, void (*a5)(id, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if (a3)
  {
    v10 = a1;
    v11 = 1;
  }

  else
  {
    v14 = a1;
    v15 = a2;
    sub_261F6B73C(a1, a2);
    sub_261F6C3D8(&v14, a7, a8, &v16);
    sub_261F6BFFC(v14, v15);
    v9 = v16;
    v11 = v17;
  }

  a5(v9, v11);

  sub_261F79EA0(v9, v11);
}

uint64_t sub_261F6C230(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (*(a4 + 16))(a3, a4);
  if (v11 >> 60 == 15)
  {
    v12 = sub_261F6B73C(a1, a2);
  }

  else
  {
    v13 = v10;
    v14 = v11;
    v18 = v10;
    v19 = v11;
    sub_261F6B73C(v10, v11);
    sub_26200BABC(a1, a2);
    v12 = sub_261F6ADEC(v13, v14);
    a1 = v18;
    a2 = v19;
  }

  v18 = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v12);
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = &v18;
  v17[5] = v4;
  sub_261F6C44C(sub_261F6CC04, v17, a1, a2);
  sub_261F6BFFC(a1, a2);
  v15 = v18;
  if (v5)
  {
  }

  return v15;
}

uint64_t sub_261F6C380@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t *a6@<X8>)
{
  result = sub_261F6C230(a1, a2, a3, a4);
  if (v6)
  {
    *a5 = v6;
  }

  else
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_261F6C3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  result = sub_261F6C380(*a1, *(a1 + 8), a2, a3, &v6, &v7);
  *a4 = v7;
  *(a4 + 8) = 0;
  return result;
}

uint64_t sub_261F6C44C(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      if (a3 >> 32 < a3)
      {
        __break(1u);
      }

      v6 = a3;
      return sub_261F6C654(v6, v7, a1);
    case 2uLL:
      v6 = *(a3 + 16);
      v7 = *(a3 + 24);
      return sub_261F6C654(v6, v7, a1);
    case 3uLL:
      v9 = 0;
      v11 = 0;
      v10 = 0;
      v5 = &v9;
      return a1(&v9, v5);
    default:
      v9 = a3;
      LOWORD(v10) = a4;
      BYTE2(v10) = BYTE2(a4);
      HIBYTE(v10) = BYTE3(a4);
      LOBYTE(v11) = BYTE4(a4);
      HIBYTE(v11) = BYTE5(a4);
      v5 = (&v9 + BYTE6(a4));
      return a1(&v9, v5);
  }
}

uint64_t sub_261F6C5A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

unint64_t sub_261F6C5D8()
{
  result = qword_28108B258;
  if (!qword_28108B258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEFA510, &qword_262045938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B258);
  }

  return result;
}

uint64_t sub_261F6C654(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_26203937C();
  v7 = result;
  if (result)
  {
    result = sub_2620393AC();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_26203939C();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

uint64_t sub_261F6C6FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v9 = a1;
  if (a1)
  {
    while (1)
    {
      v10 = a2 - v9;
      if (a2 - v9 < 40)
      {
        break;
      }

      if (sub_261F6C5A4(0, a2 - v9, v9, a2) >= 0x28)
      {
        v11 = 40;
      }

      else
      {
        v11 = a2 - v9;
      }

      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA510, &qword_262045938);
      *(&v58 + 1) = v12;
      v13 = sub_261F6C5D8();
      v59 = v13;
      v14 = swift_allocObject();
      *&v57 = v14;
      v14[2] = 0;
      v14[3] = v11;
      v14[4] = v9;
      v14[5] = a2;
      v56 = *__swift_project_boxed_opaque_existential_0Tm(&v57, v12);
      sub_26203ADAC();
      __swift_destroy_boxed_opaque_existential_0Tm(&v57);
      result = IPv6Header.init(_:)();
      if (v7)
      {
        return result;
      }

      v54 = v61;
      v55 = v60;
      result = v60 + v61;
      if (__OFADD__(v60, v61))
      {
        __break(1u);
        goto LABEL_29;
      }

      v17 = v63;
      v16 = v64;
      v18 = v66;
      v50 = a2 - v9;
      v51 = v65;
      v19 = result - (a2 - v9);
      if (result > a2 - v9)
      {
        sub_261F6BFFC(v63, v64);
        sub_261F6BFFC(v51, v18);
        if (a2 == v9)
        {
          goto LABEL_24;
        }

        v40 = a6;
        v41 = *(a6 + 48);
        result = v19;
        goto LABEL_26;
      }

      v53 = v62;
      v48 = v60 + v61;
      v49 = v9;
      v20 = sub_261F6DE7C(result, v9, a2);
      v22 = v21;
      v24 = v23;
      v67 = 0;
      v26 = v25;
      v63 = v12;
      v64 = v13;
      v27 = swift_allocObject();
      v60 = v27;
      v27[2] = v20;
      v27[3] = v22;
      v27[4] = v24;
      v27[5] = v26;
      v28 = __swift_project_boxed_opaque_existential_0Tm(&v60, v12);
      v29 = v28[1];
      v57 = *v28;
      v58 = v29;
      v30 = v67;
      sub_26203ADAC();
      v67 = v30;
      __swift_destroy_boxed_opaque_existential_0Tm(&v60);
      sub_261F6B73C(v17, v16);
      sub_261F6B73C(v51, v18);
      sub_261F6B73C(v17, v16);
      sub_261F6B73C(v51, v18);
      sub_261F6B73C(v56, *(&v56 + 1));
      if (qword_28108CB70 != -1)
      {
        swift_once();
      }

      if (byte_27FF07DF0 == 1)
      {
        v60 = v55;
        v61 = v54;
        v62 = v53;
        v63 = v17;
        v64 = v16;
        v65 = v51;
        v66 = v18;
        sub_2620043E4(&v60, v56, *(&v56 + 1), &v57);
        v31 = *(&v57 + 1);
        v47 = v57;
      }

      else
      {
        sub_261F6BFFC(v17, v16);
        sub_261F6BFFC(v51, v18);
        sub_261F6BFFC(v56, *(&v56 + 1));
        v47 = 0;
        v31 = 0xF000000000000000;
      }

      v46 = v31;
      v32 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v32;
      v34 = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_261F6C054();
        v32 = v38;
        *a3 = v38;
      }

      v35 = *(v32 + 16);
      if (v35 >= *(v32 + 24) >> 1)
      {
        sub_261F6C054();
        *a3 = v39;
      }

      sub_261F6BFFC(v17, v16);
      sub_261F6BFFC(v51, v18);
      v36 = *a3;
      *(v36 + 16) = v35 + 1;
      v37 = v36 + 96 * v35;
      *(v37 + 32) = 30;
      *(v37 + 40) = v55;
      *(v37 + 48) = v54;
      *(v37 + 56) = v53;
      *(v37 + 64) = v17;
      *(v37 + 72) = v16;
      *(v37 + 80) = v51;
      *(v37 + 88) = v18;
      *(v37 + 96) = v47;
      *(v37 + 104) = v46;
      *(v37 + 112) = v56;
      a2 = v49 + v50;
      v7 = v34;
      v9 = &v48[v49];
      if (!&v48[v49])
      {
        goto LABEL_24;
      }
    }

    if (a2 == v9)
    {
      goto LABEL_24;
    }

    result = 40 - v10;
    if (!__OFSUB__(40, v10))
    {
      v40 = a6;
      v41 = *(a6 + 48);
LABEL_26:
      v41(result, a5, v40);
      v42 = sub_261FDC428(v9, a2);
      return (*(v40 + 24))(v42, v43, a5, v40);
    }

LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_24:
    (*(a6 + 48))(40, a5, a6);
    return (*(a6 + 24))(0, 0xF000000000000000, a5, a6);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_35(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_35_2()
{

  JUMPOUT(0x266722710);
}

_BYTE *OUTLINED_FUNCTION_35_4(_BYTE *a1, uint64_t a2)
{

  return sub_262008160(a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_35_7(uint64_t a1)
{

  return sub_261F66E60(a1, v1, v2);
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

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice12TunnelPacketV23TransportProtocolHeaderOSg(uint64_t a1)
{
  v1 = ((*(a1 + 8) >> 60) >> 1) & 0xFFFFFFF7 | (8 * ((*(a1 + 8) & 0x1000000000000000) != 0));
  v2 = v1 ^ 0xF;
  v3 = 16 - v1;
  if (v2 >= 0xB)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

_OWORD *OUTLINED_FUNCTION_102(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, __int128 a47)
{
  v50 = (*(v48 + 56) + 32 * v47);

  return sub_261F8D184(v50, &a47);
}

uint64_t OUTLINED_FUNCTION_38(uint64_t a1)
{

  return swift_once();
}

double OUTLINED_FUNCTION_38_1()
{
  *(v1 + 8) = v0;
  *(v1 + 16) = v2;
  result = 0.0;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_isEscapingClosureAtFileLocation();
}

uint64_t OUTLINED_FUNCTION_38_3(uint64_t a1)
{

  return swift_weakInit();
}

void sub_261F6CDE4()
{
  OUTLINED_FUNCTION_96();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9B60, &unk_262040530);
  v4 = OUTLINED_FUNCTION_40(v3);
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910);
  v6 = OUTLINED_FUNCTION_40(v5);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v47 - v10;
  sub_262039ACC();
  OUTLINED_FUNCTION_0();
  v13 = MEMORY[0x28223BE20](v12);
  v14 = MEMORY[0x28223BE20](v13);
  v18 = *(v0 + 160);
  if (v18)
  {
    v19 = v2[9];
    if (v19 >> 60 != 15)
    {
      v55 = v17;
      v56 = &v47 - v15;
      v52 = v0;
      v57 = v16;
      v21 = v2[4];
      v20 = v2[5];
      v22 = v14;
      v23 = v2[6];
      v53 = v2[7];
      v54 = v23;
      v24 = v2[8];
      sub_262039B3C();
      OUTLINED_FUNCTION_32_1();
      v25 = v18;
      sub_261F7B690(v24, v19);
      sub_261F6B73C(v21, v20);
      sub_262039ADC();
      if (__swift_getEnumTagSinglePayload(v11, 1, v22) == 1)
      {

        sub_261F7B6A4(v24, v19);
        v26 = v11;
LABEL_7:
        sub_261FC2F14(v26, &qword_27FEFA270, &qword_262041910);
        goto LABEL_17;
      }

      v49 = v25;
      v50 = v19;
      v51 = v24;
      v27 = v57;
      v28 = *(v57 + 4);
      v29 = v56;
      v28();
      OUTLINED_FUNCTION_32_1();
      sub_261F6B73C(v54, v53);
      sub_262039ADC();
      v30 = v22;
      if (__swift_getEnumTagSinglePayload(v9, 1, v22) == 1)
      {

        sub_261F7B6A4(v51, v50);
        v27[1](v29, v22);
        v26 = v9;
        goto LABEL_7;
      }

      (v28)(v55, v9, v22);
      v32 = v50;
      v31 = v51;
      switch(v50 >> 61)
      {
        case 1uLL:
          v54 = v51 >> 16;
          OUTLINED_FUNCTION_8_3();
          sub_26203A7CC();
          OUTLINED_FUNCTION_18();
          MEMORY[0x266722710](0x203A504455, 0xE500000000000000);
          OUTLINED_FUNCTION_4_4();
          sub_26203A8CC();
          OUTLINED_FUNCTION_35_2();
          LOWORD(v58) = v31;
          v39 = sub_26203ABAC();
          MEMORY[0x266722710](v39);
          v31 = v51;

          OUTLINED_FUNCTION_24_3();
          OUTLINED_FUNCTION_3_7();
          sub_26203A8CC();
          OUTLINED_FUNCTION_35_2();
          LOWORD(v58) = v54;
          v32 = v50;
          sub_26203ABAC();
          OUTLINED_FUNCTION_23_2();

          goto LABEL_16;
        case 2uLL:
          v37 = v51 >> 8;
          OUTLINED_FUNCTION_8_3();
          sub_26203A7CC();
          OUTLINED_FUNCTION_18();
          MEMORY[0x266722710](0x203A504D4349, 0xE600000000000000);
          OUTLINED_FUNCTION_4_4();
          sub_26203A8CC();
          OUTLINED_FUNCTION_24_3();
          OUTLINED_FUNCTION_3_7();
          sub_26203A8CC();
          MEMORY[0x266722710](0x3D657079745B20, 0xE700000000000000);
          LOBYTE(v58) = v31;
          OUTLINED_FUNCTION_14_5();
          v38 = sub_26203ABAC();
          MEMORY[0x266722710](v38);

          MEMORY[0x266722710](0x3D65646F6320, 0xE600000000000000);
          LOBYTE(v58) = v37;
          OUTLINED_FUNCTION_14_5();
          goto LABEL_12;
        case 3uLL:
          OUTLINED_FUNCTION_8_3();
          sub_26203A7CC();
          OUTLINED_FUNCTION_18();
          MEMORY[0x266722710](0x6165737261706E55, 0xEC00000020656C62);
          LOBYTE(v58) = v31;
          sub_26203ABAC();
          OUTLINED_FUNCTION_23_2();

          MEMORY[0x266722710](8250, 0xE200000000000000);
          OUTLINED_FUNCTION_4_4();
          sub_26203A8CC();
          OUTLINED_FUNCTION_24_3();
          OUTLINED_FUNCTION_3_7();
          sub_26203A8CC();
          MEMORY[0x266722710](0x3D726F7272655B20, 0xE800000000000000);
          v58 = v32 & 0x1FFFFFFFFFFFFFFFLL;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
          sub_26203A8CC();
          goto LABEL_14;
        case 4uLL:
          OUTLINED_FUNCTION_8_3();
          sub_26203A7CC();
          OUTLINED_FUNCTION_18();
          MEMORY[0x266722710](0x206E776F6E6B6E55, 0xE800000000000000);
          LOBYTE(v58) = v31;
          sub_26203ABAC();
          OUTLINED_FUNCTION_23_2();

          MEMORY[0x266722710](8250, 0xE200000000000000);
          OUTLINED_FUNCTION_4_4();
          sub_26203A8CC();
          OUTLINED_FUNCTION_24_3();
          OUTLINED_FUNCTION_3_7();
          sub_26203A8CC();
          goto LABEL_16;
        default:
          v33 = v51 >> 16;
          v53 = HIDWORD(v51);
          v54 = HIDWORD(v50);
          v48 = HIWORD(v50);
          OUTLINED_FUNCTION_8_3();
          sub_26203A7CC();
          OUTLINED_FUNCTION_18();
          MEMORY[0x266722710](0x203A504354, 0xE500000000000000);
          v27 = v56;
          sub_26203A8CC();
          OUTLINED_FUNCTION_35_2();
          LOWORD(v58) = v51;
          v34 = sub_26203ABAC();
          MEMORY[0x266722710](v34);

          OUTLINED_FUNCTION_24_3();
          v11 = v55;
          sub_26203A8CC();
          OUTLINED_FUNCTION_35_2();
          LOWORD(v58) = v33;
          v30 = v22;
          v31 = v51;
          sub_26203ABAC();
          OUTLINED_FUNCTION_23_2();

          MEMORY[0x266722710](0x3D7367616C665B20, 0xE800000000000000);
          v32 = v50;
          v35 = sub_2620033D4(v48);
          MEMORY[0x266722710](v35);

          MEMORY[0x266722710](0x3D71657320, 0xE500000000000000);
          LODWORD(v58) = v53;
          OUTLINED_FUNCTION_14_5();
          v36 = sub_26203ABAC();
          MEMORY[0x266722710](v36);

          MEMORY[0x266722710](0x3D6B636120, 0xE500000000000000);
          LODWORD(v58) = v32;
          OUTLINED_FUNCTION_14_5();
          sub_26203ABAC();
          OUTLINED_FUNCTION_23_2();

          MEMORY[0x266722710](0x3D776F646E697720, 0xE800000000000000);
          LOWORD(v58) = v54;
LABEL_12:
          sub_26203ABAC();
          OUTLINED_FUNCTION_23_2();

LABEL_14:
          MEMORY[0x266722710](93, 0xE100000000000000);
LABEL_16:
          OUTLINED_FUNCTION_18();
          MEMORY[0x266722710](10, 0xE100000000000000);
          sub_261FDBDF0();
          v41 = v40;
          v43 = v42;
          v44 = *(v52 + 80);
          v45 = v49;
          OS_dispatch_io.write(content:completingOn:completion:)(v41, v43, v44, nullsub_1, 0);

          sub_261F6BFFC(v41, v43);
          sub_261F7B6A4(v31, v32);
          v46 = *(v57 + 1);
          v46(v11, v30);
          v46(v27, v30);
          break;
      }
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_31_0();
}

void sub_261F6D760()
{
  OUTLINED_FUNCTION_96();
  v31 = sub_262039FAC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_9_5();
  sub_262039FEC();
  OUTLINED_FUNCTION_0();
  v32 = v4;
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_74();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_96_0();
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_96_0();
  v11 = *(v10 + 88);
  v13 = type metadata accessor for TunnelEndpoint.Event(0, v9, v11, v12);
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_127();
  v30 = sub_261F6E294();
  OUTLINED_FUNCTION_63();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_262(v17);
  swift_weakInit();
  v18 = OUTLINED_FUNCTION_133_0();
  v19(v18);
  v20 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = v9;
  *(v21 + 3) = v11;
  *(v21 + 4) = v0;
  (*(v15 + 32))(&v21[v20], v1, v13);
  v34[4] = sub_261F78FA8;
  v34[5] = v21;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 1107296256;
  v34[2] = sub_261F78F64;
  v34[3] = &block_descriptor_760;
  v22 = _Block_copy(v34);

  sub_262039FCC();
  OUTLINED_FUNCTION_104_0();
  sub_261F6E4A4(v23, v24, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  OUTLINED_FUNCTION_25_2();
  sub_261F67F70(v25, &qword_27FEFA0B0, &unk_262040690, v26);
  sub_26203A75C();
  v27 = OUTLINED_FUNCTION_210();
  MEMORY[0x266722A20](v27);
  _Block_release(v22);

  v28 = OUTLINED_FUNCTION_99();
  v29(v28, v31);
  (*(v32 + 8))(v7, v33);

  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261F6DAD8()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_63();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_261F6DB0C()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_56_2();
  type metadata accessor for TunnelEndpoint.Event(v1, v2, v3, v4);
  OUTLINED_FUNCTION_249();
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);

  v7 = (v0 + v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
    case 0xCu:
      v8 = OUTLINED_FUNCTION_300();
      goto LABEL_11;
    case 3u:
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + v6));
      v7 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA378, &qword_2620447D0) + 48));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2D0, &qword_262045930);
      OUTLINED_FUNCTION_151_0();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_10;
      }

      type metadata accessor for TunnelMessage(0);
      OUTLINED_FUNCTION_151_0();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA350, &unk_262041920) + 48);
        v30 = sub_262039ACC();
        if (!OUTLINED_FUNCTION_286(v30))
        {
          OUTLINED_FUNCTION_71();
          (*(v31 + 8))(v7 + v29);
        }
      }

      else if (EnumCaseMultiPayload == 1)
      {
        sub_262039ACC();
        OUTLINED_FUNCTION_6_1();
        v23 = *(v22 + 8);
        v24 = OUTLINED_FUNCTION_108();
        v23(v24);
        v25 = type metadata accessor for TunnelInterfaceParameters(0);
        v26 = OUTLINED_FUNCTION_257(*(v25 + 20));
        v23(v26);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9E10, &qword_2620447B0);
        v28 = OUTLINED_FUNCTION_257(*(v27 + 48));
        v23(v28);
      }

      break;
    case 4u:
      v11 = OUTLINED_FUNCTION_56_2();
      type metadata accessor for TunnelEndpoint.State(v11, v12, v13, v14);
      OUTLINED_FUNCTION_151_0();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        break;
      }

      v9 = &qword_27FEFA348;
      v10 = &qword_262044798;
LABEL_8:
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v9, v10) + 48);
      sub_26203965C();
      OUTLINED_FUNCTION_6_1();
      (*(v16 + 8))(v7 + v15);
      break;
    case 5u:

      break;
    case 6u:
    case 8u:
    case 0xAu:
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + v6));
      break;
    case 7u:
    case 9u:
      OUTLINED_FUNCTION_300();

      break;
    case 0xBu:

      v9 = &qword_27FEFA370;
      v10 = &qword_2620447C8;
      goto LABEL_8;
    case 0xDu:
LABEL_10:
      v8 = *v7;
LABEL_11:

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_22_2();

  return MEMORY[0x2821FE8E8](v17, v18, v19);
}

uint64_t sub_261F6DE04@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_26203943C();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x266721900]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x266721920]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

unint64_t sub_261F6DE7C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      v6 = a3 - a2;
    }

    else
    {
      v6 = 0;
    }

    v7 = OUTLINED_FUNCTION_34_2();
    result = sub_261F6C5A4(v7, v8, v9, v10);
    if (!v5 || result >= v5)
    {
      result = sub_261F6DEF8(0, v5, a2, a3);
      v6 = result;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      return OUTLINED_FUNCTION_34_2();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_261F6DEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = a4 - a3;
  if (!a3)
  {
    v6 = 0;
  }

  if (result < 0 || v6 < result)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_261F6DF24(uint64_t a1)
{
  OUTLINED_FUNCTION_243();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for TunnelEndpoint.Event(v5, v6, v7, v7);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_126_0();
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  OUTLINED_FUNCTION_146(v4 + 16, &v14);
  if (swift_weakLoadStrong())
  {
    *v2 = v9;
    v2[1] = v10;
    v2[2] = v11;
    OUTLINED_FUNCTION_98_0();
    swift_storeEnumTagMultiPayload();

    sub_261F6D760();

    v12 = OUTLINED_FUNCTION_98_0();
    v13(v12);
  }

  else
  {
    v10();
  }

  OUTLINED_FUNCTION_22_2();
}

unint64_t OUTLINED_FUNCTION_139(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return sub_261F67FE4(a1, a2, &a65);
}

uint64_t OUTLINED_FUNCTION_22_4()
{

  return swift_slowAlloc();
}

_OWORD *OUTLINED_FUNCTION_22_5(uint64_t a1, uint64_t a2, ...)
{

  return sub_261F8D184(&v5, &v4);
}

uint64_t OUTLINED_FUNCTION_22_9(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_11(uint64_t a1)
{

  return sub_26203A20C();
}

uint64_t OUTLINED_FUNCTION_95(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 248) = 5;
  *(v31 + 144) = 0u;
  *(v31 + 160) = 0u;
  *(v32 - 208) = 4;

  return sub_261F68720(v32 - 248, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

void OUTLINED_FUNCTION_95_0()
{

  JUMPOUT(0x266722710);
}

uint64_t OUTLINED_FUNCTION_179()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_179_0()
{
  *(v0 + 3) = 8;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void OUTLINED_FUNCTION_25(uint64_t a1@<X8>)
{
  *v1 = v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v1 + 8) = a1;
  *(v1 + 16) = 0;
}

double OUTLINED_FUNCTION_25_1()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_3(uint64_t a1, uint64_t a2)
{

  return sub_26203AA2C();
}

uint64_t sub_261F6E4A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_97(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_97_0()
{
  v1 = *(v0 - 256);
  *(v0 - 184) = *(v0 - 248);
  *(v0 - 176) = v1;
  v2 = *(v0 - 232);
  *(v0 - 168) = *(v0 - 240);
  *(v0 - 160) = v2;
}

uint64_t sub_261F6E52C(NSObject *a1)
{
  v1632 = a1;
  v3 = *v1;
  sub_26203A03C();
  OUTLINED_FUNCTION_0();
  v1541 = v5;
  v1542 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v1539 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_88_1();
  v1540 = v8;
  OUTLINED_FUNCTION_9_5();
  v9 = sub_262039FAC();
  v10 = OUTLINED_FUNCTION_40(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_16_10();
  v1538 = v11;
  OUTLINED_FUNCTION_9_5();
  v1617 = sub_26203965C();
  OUTLINED_FUNCTION_0();
  v1616 = v12;
  MEMORY[0x28223BE20](v13);
  v1599 = &i - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_163_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_55_2();
  v1575 = v16;
  OUTLINED_FUNCTION_163_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_55_2();
  v1600 = v18;
  OUTLINED_FUNCTION_163_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_55_2();
  v1574 = v20;
  OUTLINED_FUNCTION_163_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_55_2();
  v1544 = v22;
  OUTLINED_FUNCTION_163_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_55_2();
  v1595 = v24;
  OUTLINED_FUNCTION_163_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_55_2();
  v1576 = v26;
  OUTLINED_FUNCTION_163_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_55_2();
  v1537 = v28;
  v1596 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_44();
  v1555 = v31;
  v32 = *(v3 + 80);
  OUTLINED_FUNCTION_210();
  v33 = sub_26203A6DC();
  v34 = OUTLINED_FUNCTION_40(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_0();
  v1543 = v35;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_43_0();
  v1571 = v37;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_43_0();
  v1536 = v39;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_88_1();
  v1534 = v41;
  OUTLINED_FUNCTION_16();
  v1592 = v42;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_44();
  v1556 = v44;
  OUTLINED_FUNCTION_9_5();
  v1611 = sub_262039ACC();
  OUTLINED_FUNCTION_0();
  v1607 = v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6_0();
  v1554 = v47;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_43_0();
  v1533 = v49;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_43_0();
  v1603 = v51;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_88_1();
  v1570 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2A0, &qword_2620440B0);
  v55 = OUTLINED_FUNCTION_40(v54);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_6_0();
  v1535 = v56;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_43_0();
  v1532 = v58;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_43_0();
  v1557 = v60;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_43_0();
  v1572 = v62;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_43_0();
  v1561 = v64;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_43_0();
  v1581 = v66;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_88_1();
  v1580 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910);
  v70 = OUTLINED_FUNCTION_40(v69);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_6_0();
  v1524 = v71;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_43_0();
  v1558 = v73;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_88_1();
  v1579 = v75;
  v76 = OUTLINED_FUNCTION_9_5();
  v1598 = type metadata accessor for TunnelInterfaceParameters(v76);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_16_10();
  v1602 = v78;
  v79 = OUTLINED_FUNCTION_9_5();
  v1593 = type metadata accessor for TunnelMessage(v79);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_6_0();
  i = v81;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_43_0();
  v1521 = v83;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_43_0();
  v1529 = v85;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_43_0();
  v1528 = v87;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_88_1();
  v1594 = v89;
  v90 = *(v3 + 88);
  OUTLINED_FUNCTION_153();
  v95 = type metadata accessor for TunnelEndpoint.State(v91, v92, v93, v94);
  v1623 = v32;
  v1621 = v90;
  v97 = type metadata accessor for TunnelEndpoint.Event(255, v32, v90, v96);
  OUTLINED_FUNCTION_157();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v1610 = v98;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_44();
  v1633 = v100;
  v1627 = v95;
  v1628 = *(v95 - 8);
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_6_0();
  v1577 = v102;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_43_0();
  v1612 = v104;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_43_0();
  v1613 = v106;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_43_0();
  v1567 = v108;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_43_0();
  v1569 = v110;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_43_0();
  v1591 = v112;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_43_0();
  v1568 = v114;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_43_0();
  v1590 = v116;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_43_0();
  v1566 = v118;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_43_0();
  v1565 = v120;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_43_0();
  v1564 = v122;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_43_0();
  v1563 = v124;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_43_0();
  v1578 = v126;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_43_0();
  v1526 = v128;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_43_0();
  v1546 = v130;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_43_0();
  v1531 = v132;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_43_0();
  v1550 = v134;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v135);
  OUTLINED_FUNCTION_43_0();
  v1525 = v136;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_43_0();
  v1545 = v138;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_43_0();
  v1530 = v140;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_43_0();
  v1549 = v142;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_43_0();
  v1615 = v144;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v145);
  OUTLINED_FUNCTION_88_1();
  v1626 = v146;
  v1608 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2D0, &qword_262045930);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_6_0();
  v1522 = v148;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v149);
  OUTLINED_FUNCTION_43_0();
  v1527 = v150;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v151);
  OUTLINED_FUNCTION_43_0();
  v1523 = v152;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v153);
  OUTLINED_FUNCTION_43_0();
  v1551 = v154;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_43_0();
  v1548 = v156;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v157);
  OUTLINED_FUNCTION_43_0();
  v1560 = v158;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_43_0();
  v1547 = v160;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v161);
  OUTLINED_FUNCTION_43_0();
  v1559 = v162;
  OUTLINED_FUNCTION_29();
  v164 = MEMORY[0x28223BE20](v163);
  v166 = (&i - v165);
  MEMORY[0x28223BE20](v164);
  v168 = &i - v167;
  OUTLINED_FUNCTION_16();
  v170 = v169;
  v172 = *(v171 + 64);
  MEMORY[0x28223BE20](v173);
  v1619 = &i - ((&v172[1].isa + 7) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v174);
  OUTLINED_FUNCTION_55_2();
  v1597 = v175;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v176);
  OUTLINED_FUNCTION_55_2();
  v1573 = v177;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v178);
  OUTLINED_FUNCTION_55_2();
  v1614 = v179;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v180);
  OUTLINED_FUNCTION_55_2();
  v1609 = v181;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v182);
  OUTLINED_FUNCTION_55_2();
  v1562 = v183;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v184);
  OUTLINED_FUNCTION_55_2();
  v1588 = v185;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v186);
  OUTLINED_FUNCTION_55_2();
  v1587 = v187;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v188);
  OUTLINED_FUNCTION_55_2();
  v1589 = v189;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v190);
  OUTLINED_FUNCTION_55_2();
  v1586 = v191;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v192);
  OUTLINED_FUNCTION_55_2();
  v1605 = v193;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v194);
  OUTLINED_FUNCTION_55_2();
  v1585 = v195;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v196);
  OUTLINED_FUNCTION_55_2();
  *&v1604 = v197;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v198);
  OUTLINED_FUNCTION_55_2();
  v1553 = v199;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v200);
  OUTLINED_FUNCTION_55_2();
  v1552 = v201;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v202);
  OUTLINED_FUNCTION_55_2();
  v1584 = v203;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v204);
  OUTLINED_FUNCTION_55_2();
  v1583 = v205;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v206);
  OUTLINED_FUNCTION_55_2();
  v1601 = v207;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v208);
  OUTLINED_FUNCTION_55_2();
  v1618 = v209;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v210);
  OUTLINED_FUNCTION_55_2();
  v1606 = v211;
  OUTLINED_FUNCTION_62_2();
  MEMORY[0x28223BE20](v212);
  OUTLINED_FUNCTION_55_2();
  v1582 = v213;
  OUTLINED_FUNCTION_62_2();
  v215 = MEMORY[0x28223BE20](v214);
  v217 = (&i - v216);
  MEMORY[0x28223BE20](v215);
  OUTLINED_FUNCTION_195();
  v1634 = v1;
  v218 = sub_261F6E294();
  OS_dispatch_queue.assertOnQueueHierarchy()();

  v1625 = v170;
  v219 = *(v170 + 16);
  v1631 = v170 + 16;
  v1630 = v219;
  (v219)(v2, v1632, v97);
  v1629 = v97;
  v220 = 0xEB00000000657375;
  v221 = 0x6150746E65696C63;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_241();
      v225 = v247 - 21;
      goto LABEL_12;
    case 2u:
      v250 = *(v2 + 40);
      OUTLINED_FUNCTION_224();
      OUTLINED_FUNCTION_13_10();
      *&v1641 = v252 - 34;
      *(&v1641 + 1) = v251;
      OUTLINED_FUNCTION_202();
      OUTLINED_FUNCTION_19_6();
      v253 = OUTLINED_FUNCTION_158_0();
      v254(v253);
      OUTLINED_FUNCTION_91_0();
      OUTLINED_FUNCTION_227();
      v255 = OUTLINED_FUNCTION_158_0();
      MEMORY[0x266722710](v255);

      OUTLINED_FUNCTION_95_0();
      if (v250)
      {
        swift_getErrorValue();
        v256 = v250;
        OUTLINED_FUNCTION_158_0();
        sub_26203ACCC();
      }

      v267 = OUTLINED_FUNCTION_11_0();
      goto LABEL_31;
    case 3u:
      v234 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA378, &qword_2620447D0) + 48);
      OUTLINED_FUNCTION_224();
      sub_261FFF604(v2 + v234, v168);
      v235 = OUTLINED_FUNCTION_42_3();
      sub_261F674BC(v235, v236, v237, v238);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v239 = *v166;
        swift_getErrorValue();
        sub_26203ACCC();
      }

      else
      {
        sub_261F66E60(v166, &qword_27FEFA2D0, &qword_262045930);
      }

      OUTLINED_FUNCTION_13_10();
      *&v1641 = v286 - 30;
      *(&v1641 + 1) = v285;
      v288 = *(&v1645 + 1);
      v287 = v1646;
      __swift_project_boxed_opaque_existential_0Tm(&aBlock, *(&v1645 + 1));
      OUTLINED_FUNCTION_19_6();
      v289(v288, v287);
      OUTLINED_FUNCTION_91_0();

      v290 = OUTLINED_FUNCTION_126();
      MEMORY[0x266722710](v290);

      OUTLINED_FUNCTION_95_0();
      v291 = OUTLINED_FUNCTION_122();
      MEMORY[0x266722710](v291);

      MEMORY[0x266722710](23842, 0xE200000000000000);
      v220 = *(&v1641 + 1);
      v221 = v1641;
      sub_261F66E60(v168, &qword_27FEFA2D0, &qword_262045930);
      goto LABEL_33;
    case 4u:
      OUTLINED_FUNCTION_277();
      v261(v2, v1627);
      v220 = 0xEF65636166726574;
      v221 = 0x6E49657461657263;
      goto LABEL_34;
    case 5u:
      v268 = *v2;
      OUTLINED_FUNCTION_13_10();
      *&aBlock = v270 - 16;
      *(&aBlock + 1) = v269;
      *&v1641 = v268[2];
      v271 = sub_26203ABAC();
      MEMORY[0x266722710](v271);

      OUTLINED_FUNCTION_302();

      goto LABEL_22;
    case 6u:
      OUTLINED_FUNCTION_224();
      OUTLINED_FUNCTION_13_10();
      v259 = v258 - 7;
      goto LABEL_25;
    case 7u:
      v278 = *(v2 + 40);
      OUTLINED_FUNCTION_224();
      *&v1641 = sub_261F79C04(51);
      *(&v1641 + 1) = v279;
      OUTLINED_FUNCTION_33_2();
      OUTLINED_FUNCTION_184_0();
      MEMORY[0x266722710]();
      OUTLINED_FUNCTION_202();
      OUTLINED_FUNCTION_19_6();
      v280 = OUTLINED_FUNCTION_158_0();
      v281(v280);
      OUTLINED_FUNCTION_91_0();
      OUTLINED_FUNCTION_227();
      v282 = OUTLINED_FUNCTION_158_0();
      MEMORY[0x266722710](v282);

      MEMORY[0x266722710](0x3D746E756F63202CLL, 0xE800000000000000);
      v283 = *(v278 + 16);

      *&v1639 = v283;
      v284 = sub_26203ABAC();
      MEMORY[0x266722710](v284);
      goto LABEL_27;
    case 8u:
      OUTLINED_FUNCTION_217();
      OUTLINED_FUNCTION_13_10();
      v233 = v241 - 26;
      goto LABEL_10;
    case 9u:

      OUTLINED_FUNCTION_224();
      OUTLINED_FUNCTION_13_10();
      v259 = v272 - 26;
LABEL_25:
      *&v1641 = v259;
      *(&v1641 + 1) = v257;
      v273 = OUTLINED_FUNCTION_101_0();
      __swift_project_boxed_opaque_existential_0Tm(v273, v274);
      v275 = OUTLINED_FUNCTION_6_12();
      v276(v275);
      OUTLINED_FUNCTION_91_0();
      OUTLINED_FUNCTION_185_0();
      v277 = OUTLINED_FUNCTION_42_3();
      MEMORY[0x266722710](v277);
LABEL_27:

      OUTLINED_FUNCTION_302();
      goto LABEL_32;
    case 0xAu:
      OUTLINED_FUNCTION_217();
      OUTLINED_FUNCTION_13_10();
      v233 = v232 - 33;
LABEL_10:
      *&v1641 = v233;
      *(&v1641 + 1) = v231;
      v242 = OUTLINED_FUNCTION_101_0();
      __swift_project_boxed_opaque_existential_0Tm(v242, v243);
      v244 = OUTLINED_FUNCTION_6_12();
      v245(v244);
      OUTLINED_FUNCTION_91_0();
      OUTLINED_FUNCTION_185_0();
      v246 = OUTLINED_FUNCTION_42_3();
      MEMORY[0x266722710](v246);

      OUTLINED_FUNCTION_302();
      v220 = *(&v1641 + 1);
      v221 = v1641;
      sub_261FFEDE8(&aBlock);
      goto LABEL_34;
    case 0xBu:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA370, &qword_2620447C8);
      OUTLINED_FUNCTION_254();
      (v1616[1].isa)(v2 + v240, v1617);
      goto LABEL_14;
    case 0xCu:
      v250 = *(v2 + 40);
      OUTLINED_FUNCTION_224();
      OUTLINED_FUNCTION_13_10();
      *&v1641 = v263 - 30;
      *(&v1641 + 1) = v262;
      OUTLINED_FUNCTION_202();
      OUTLINED_FUNCTION_19_6();
      v264 = OUTLINED_FUNCTION_158_0();
      v265(v264);
      OUTLINED_FUNCTION_91_0();
      OUTLINED_FUNCTION_227();
      v266 = OUTLINED_FUNCTION_158_0();
      MEMORY[0x266722710](v266);

      OUTLINED_FUNCTION_95_0();
      swift_getErrorValue();
      v267 = sub_26203ACCC();
LABEL_31:
      MEMORY[0x266722710](v267);

      MEMORY[0x266722710](23842, 0xE200000000000000);

LABEL_32:
      v220 = *(&v1641 + 1);
      v221 = v1641;
LABEL_33:
      __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
      goto LABEL_34;
    case 0xDu:
      v227 = *v2;
      OUTLINED_FUNCTION_13_10();
      *&aBlock = v229 - 29;
      *(&aBlock + 1) = v228;
      swift_getErrorValue();
      v230 = sub_26203ACCC();
      MEMORY[0x266722710](v230);

      MEMORY[0x266722710](23842, 0xE200000000000000);

      goto LABEL_22;
    case 0xEu:
      OUTLINED_FUNCTION_254();
LABEL_14:
      OUTLINED_FUNCTION_171_0();
      v221 = v249 - 30;
      goto LABEL_34;
    case 0xFu:
      OUTLINED_FUNCTION_254();
      OUTLINED_FUNCTION_171_0();
      v221 = v226 - 32;
      goto LABEL_34;
    case 0x10u:
      OUTLINED_FUNCTION_254();
      OUTLINED_FUNCTION_171_0();
      v221 = v260 - 20;
      goto LABEL_34;
    case 0x11u:
      goto LABEL_34;
    case 0x12u:
      v220 = 0xE600000000000000;
      v221 = 0x6C65636E6163;
      goto LABEL_34;
    default:
      OUTLINED_FUNCTION_241();
      v225 = v224 - 25;
LABEL_12:
      *&aBlock = v225;
      *(&aBlock + 1) = v223;
      LOWORD(v1641) = v222;
      v248 = sub_26203ABAC();
      MEMORY[0x266722710](v248);

      OUTLINED_FUNCTION_302();
LABEL_22:
      v220 = *(&aBlock + 1);
      v221 = aBlock;
LABEL_34:
      OUTLINED_FUNCTION_200();
      v294 = (v293 + *(v292 + 216));
      OUTLINED_FUNCTION_118_0();
      OUTLINED_FUNCTION_36_1();
      swift_beginAccess();
      v295 = v294[1];

      sub_261F79AD8();
      v296 = *v294;
      v297 = OUTLINED_FUNCTION_42_3();
      sub_261F79B18(v297, v298);
      OUTLINED_FUNCTION_228();
      *v294 = v296;
      if (__OFADD__(v295, 1))
      {
        __break(1u);
        goto LABEL_359;
      }

      v299 = v294[2];
      if (!v299)
      {
LABEL_359:
        __break(1u);
        goto LABEL_360;
      }

      v300 = v295 == 0x7FFFFFFFFFFFFFFFLL && v299 == -1;
      if (v300)
      {
        __break(1u);
LABEL_363:
        OUTLINED_FUNCTION_1_20();
        sub_261FFEE7C(v295, v1461);
        goto LABEL_364;
      }

      OUTLINED_FUNCTION_287(v295 + 1);
      OUTLINED_FUNCTION_63_2();
      v301();
      OUTLINED_FUNCTION_123();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v303 = v1627;
      switch(EnumCaseMultiPayload)
      {
        case 2:
        case 12:

          goto LABEL_65;
        case 3:
          v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA378, &qword_2620447D0);
          sub_261F66E60(v217 + *(v330 + 48), &qword_27FEFA2D0, &qword_262045930);
          goto LABEL_65;
        case 4:
          OUTLINED_FUNCTION_277();
          v304 = v217;
          v305 = v303;
          goto LABEL_54;
        case 5:
          v307 = OUTLINED_FUNCTION_123();
          v308(v307);
          goto LABEL_44;
        case 6:
          goto LABEL_52;
        case 7:

          __swift_destroy_boxed_opaque_existential_0Tm(v217);
          goto LABEL_56;
        case 8:
        case 10:
        case 13:
          v304 = OUTLINED_FUNCTION_123();
LABEL_54:
          v306(v304, v305);
          goto LABEL_66;
        case 9:

LABEL_65:
          __swift_destroy_boxed_opaque_existential_0Tm(v217);
          goto LABEL_66;
        case 11:

          v594 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA370, &qword_2620447C8);
          (v1616[1].isa)(v217 + *(v594 + 48), v1617);
          goto LABEL_66;
        case 16:
LABEL_44:
          OUTLINED_FUNCTION_200();
          v311 = (v310 + *(v309 + 232));
          OUTLINED_FUNCTION_118_0();
          OUTLINED_FUNCTION_36_1();
          swift_beginAccess();
          v312 = v311[1];

          sub_261F79AD8();
          v313 = *v311;
          v314 = OUTLINED_FUNCTION_42_3();
          sub_261F79B18(v314, v315);
          OUTLINED_FUNCTION_228();
          *v311 = v313;
          v316 = v312 + 1;
          if (__OFADD__(v312, 1))
          {
            __break(1u);
            goto LABEL_370;
          }

          v317 = v311[2];
          if (!v317)
          {
LABEL_371:
            __break(1u);
LABEL_372:
            __break(1u);
LABEL_373:
            OUTLINED_FUNCTION_0_27();
            swift_once();
LABEL_294:
            v1616 = qword_28108B620;
            v1212 = v1630;
            (v1630)(v1597, v1632, v220);
            v1213 = OUTLINED_FUNCTION_42_3();
            (v1212)(v1213);
            v1214 = swift_allocObject();
            OUTLINED_FUNCTION_28_6(v1214);
            v1216 = v1215;
            v1626 = v1215;
            OUTLINED_FUNCTION_153();
            v1217();
            OUTLINED_FUNCTION_45_2();
            v1621 = swift_allocObject();
            *(v1621 + 16) = 34;
            OUTLINED_FUNCTION_45_2();
            v1610 = swift_allocObject();
            OUTLINED_FUNCTION_139_0(v1610);
            OUTLINED_FUNCTION_46();
            v1218 = swift_allocObject();
            v1219 = v1634;
            v1218[2].isa = sub_261FFF800;
            v1218[3].isa = v1219;
            v1220 = v1218;
            TupleTypeMetadata2 = v1218;
            OUTLINED_FUNCTION_46();
            v1221 = swift_allocObject();
            v1623 = v1221;
            *(v1221 + 16) = sub_261FFEF54;
            *(v1221 + 24) = v1220;
            OUTLINED_FUNCTION_45_2();
            v1628 = swift_allocObject();
            LOBYTE(v1628[2].isa) = 34;
            OUTLINED_FUNCTION_45_2();
            v1622 = swift_allocObject();
            *(v1622 + 16) = 8;
            OUTLINED_FUNCTION_46();
            v1222 = swift_allocObject();
            v1222[2].isa = sub_261FFF808;
            v1222[3].isa = v1216;
            OUTLINED_FUNCTION_46();
            v1223 = swift_allocObject();
            *(v1223 + 16) = sub_261FFF818;
            *(v1223 + 24) = v1222;
            v1224 = v1223;
            v1609 = v1223;
            OUTLINED_FUNCTION_45_2();
            v1633 = swift_allocObject();
            LOBYTE(v1633[2].isa) = 34;
            OUTLINED_FUNCTION_45_2();
            v1617 = swift_allocObject();
            *(v1617 + 16) = 8;
            OUTLINED_FUNCTION_46();
            v1225 = swift_allocObject();
            *(v1225 + 2) = sub_261FFEF44;
            *(v1225 + 3) = v1219;
            OUTLINED_FUNCTION_46();
            v1226 = swift_allocObject();
            *(v1226 + 16) = sub_261FFF818;
            *(v1226 + 24) = v1225;
            v1227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA380, &qword_2620447D8);
            v1228 = OUTLINED_FUNCTION_289(v1227);
            *(v1228 + 16) = xmmword_262044050;
            v1229 = v1621;
            *(v1228 + 32) = sub_261FFEF4C;
            *(v1228 + 40) = v1229;
            v1230 = v1610;
            *(v1228 + 48) = sub_261FFF848;
            *(v1228 + 56) = v1230;
            v1231 = v1623;
            *(v1228 + 64) = sub_261FFEF5C;
            *(v1228 + 72) = v1231;
            v1232 = v1628;
            *(v1228 + 80) = sub_261FFF848;
            *(v1228 + 88) = v1232;
            v1233 = v1622;
            *(v1228 + 96) = sub_261FFF848;
            *(v1228 + 104) = v1233;
            *(v1228 + 112) = sub_261FFF7F0;
            *(v1228 + 120) = v1224;
            v1234 = v1633;
            *(v1228 + 128) = sub_261FFF848;
            *(v1228 + 136) = v1234;
            v1235 = v1617;
            *(v1228 + 144) = sub_261FFF848;
            *(v1228 + 152) = v1235;
            *(v1228 + 160) = sub_261FFF7F0;
            *(v1228 + 168) = v1226;
            swift_retain_n();
            swift_setDeallocating();
            swift_retain_n();

            v1611 = v1222;

            v1614 = v1225;

            v1613 = v1226;

            sub_261FB9814();
            v1236 = v1612;
            if (os_log_type_enabled(v1616, v1612))
            {
              OUTLINED_FUNCTION_30();
              v1237 = swift_slowAlloc();
              OUTLINED_FUNCTION_101();
              v1612 = swift_slowAlloc();
              *&aBlock = v1612;
              OUTLINED_FUNCTION_244();

              *(v1237 + 3) = 8;

              LODWORD(v1621) = v1236;
              v1238 = sub_261F7C884();
              v1240 = v1239;
              v1241 = sub_261F67FE4(v1238, v1239, &aBlock);
              v1242 = v1629;
              v1243 = v1241;

              *(v1237 + 4) = v1243;
              OUTLINED_FUNCTION_272();

              *(v1237 + 12) = 34;

              *(v1237 + 13) = 8;

              OUTLINED_FUNCTION_63_2();
              v1244();
              OUTLINED_FUNCTION_275();
              sub_26203A20C();
              OUTLINED_FUNCTION_74_2();
              sub_261F67FE4(v1245, v1246, v1247);
              OUTLINED_FUNCTION_73_2();

              *(v1237 + 14) = v1240;

              OUTLINED_FUNCTION_52_2();
              v1248 = OUTLINED_FUNCTION_59_0();
              v1249(v1248);
              *(v1237 + 22) = 34;

              *(v1237 + 23) = 8;

              v1250 = v1615;
              sub_261F798CC(v1615);
              sub_26203A20C();
              OUTLINED_FUNCTION_74_2();
              sub_261F67FE4(v1251, v1252, v1253);
              OUTLINED_FUNCTION_70();

              *(v1237 + 24) = v1242;
              OUTLINED_FUNCTION_294();

              OUTLINED_FUNCTION_271();
              _os_log_impl(v1254, v1255, v1256, v1257, v1258, v1259);
              OUTLINED_FUNCTION_273();
              swift_arrayDestroy();
              v1260 = OUTLINED_FUNCTION_29_7();
              MEMORY[0x266724180](v1260);
              v1261 = OUTLINED_FUNCTION_24_5();
              MEMORY[0x266724180](v1261);
            }

            else
            {

              OUTLINED_FUNCTION_272();

              OUTLINED_FUNCTION_52_2();
              v1262(v1619, v1629);
              OUTLINED_FUNCTION_272();

              v1250 = v1615;
            }

            static RemotePairingError.tunnelError.getter();
            v1641 = aBlock;
            *&v1639 = sub_26203ABEC();
            *(&v1639 + 1) = v1263;
            MEMORY[0x266722710](0xD000000000000039, 0x80000002620516C0);
            OUTLINED_FUNCTION_63_2();
            v1264();
            v1265 = sub_26203A20C();
            MEMORY[0x266722710](v1265);

            MEMORY[0x266722710](0xD000000000000015, 0x8000000262051700);
            sub_261F798CC(v1250);
            v1266 = sub_26203A20C();
            MEMORY[0x266722710](v1266);

            OUTLINED_FUNCTION_170_0();
            sub_261F9D610();
            OUTLINED_FUNCTION_72_0();
            swift_allocError();
            sub_261F9BCE0();
            OUTLINED_FUNCTION_113_0();
            sub_26203AD4C();
            return swift_willThrow();
          }

          v318 = v312 == 0x7FFFFFFFFFFFFFFFLL && v317 == -1;
          v303 = v1627;
          if (!v318)
          {
            goto LABEL_62;
          }

          __break(1u);
LABEL_52:
          v319 = OUTLINED_FUNCTION_123();
          v320(v319);
LABEL_56:
          OUTLINED_FUNCTION_200();
          v323 = (v322 + *(v321 + 224));
          OUTLINED_FUNCTION_118_0();
          OUTLINED_FUNCTION_36_1();
          swift_beginAccess();
          v324 = v323[1];

          sub_261F79AD8();
          v325 = *v323;
          v326 = OUTLINED_FUNCTION_42_3();
          sub_261F79B18(v326, v327);
          OUTLINED_FUNCTION_228();
          *v323 = v325;
          v316 = v324 + 1;
          if (__OFADD__(v324, 1))
          {
LABEL_370:
            __break(1u);
            goto LABEL_371;
          }

          v328 = v323[2];
          if (!v328)
          {
            goto LABEL_372;
          }

          v329 = v324 == 0x7FFFFFFFFFFFFFFFLL && v328 == -1;
          v303 = v1627;
          if (v329)
          {
            __break(1u);
LABEL_375:
            OUTLINED_FUNCTION_0_27();
            swift_once();
LABEL_289:
            v1630 = qword_28108B620;
            isa = v303[2].isa;
            v1182 = v1575;
            v1183 = OUTLINED_FUNCTION_123();
            isa(v1183);
            (isa)(v1599, v1182, v221);
            v1184 = (LOBYTE(v303[10].isa) + 16) & ~LOBYTE(v303[10].isa);
            v1185 = swift_allocObject();
            v1632 = v1185;
            (v324)(v1185 + v1184, v1182, v221);
            OUTLINED_FUNCTION_45_2();
            v1186 = swift_allocObject();
            *(v1186 + 16) = 34;
            v1187 = v1186;
            v1631 = v1186;
            OUTLINED_FUNCTION_45_2();
            v1623 = swift_allocObject();
            *(v1623 + 16) = 8;
            OUTLINED_FUNCTION_46();
            v1188 = swift_allocObject();
            v1189 = v1634;
            *(v1188 + 16) = sub_261FFF800;
            *(v1188 + 24) = v1189;
            OUTLINED_FUNCTION_46();
            v1190 = swift_allocObject();
            *(v1190 + 16) = sub_261FFF818;
            *(v1190 + 24) = v1188;
            OUTLINED_FUNCTION_45_2();
            v1191 = swift_allocObject();
            *(v1191 + 16) = 34;
            OUTLINED_FUNCTION_45_2();
            v1192 = swift_allocObject();
            *(v1192 + 16) = 8;
            OUTLINED_FUNCTION_46();
            v1193 = swift_allocObject();
            *(v1193 + 16) = sub_261FFF804;
            *(v1193 + 24) = v1185;
            OUTLINED_FUNCTION_46();
            v1194 = swift_allocObject();
            v1194[2].isa = sub_261FFF818;
            v1194[3].isa = v1193;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA380, &qword_2620447D8);
            v1195 = swift_allocObject();
            *(v1195 + 16) = xmmword_262044040;
            *(v1195 + 32) = sub_261FFF848;
            *(v1195 + 40) = v1187;
            v1196 = v1623;
            *(v1195 + 48) = sub_261FFF848;
            *(v1195 + 56) = v1196;
            *(v1195 + 64) = sub_261FFF7F0;
            *(v1195 + 72) = v1190;
            *(v1195 + 80) = sub_261FFF848;
            *(v1195 + 88) = v1191;
            *(v1195 + 96) = sub_261FFF848;
            *(v1195 + 104) = v1192;
            *(v1195 + 112) = sub_261FFF7F0;
            *(v1195 + 120) = v1194;
            swift_setDeallocating();
            OUTLINED_FUNCTION_290();
            v1626 = v1188;

            v1625 = v1191;

            TupleTypeMetadata2 = v1194;

            sub_261FB9814();
            v1197 = os_log_type_enabled(v1630, v1629);
            v1198 = v1617;
            if (v1197)
            {
              OUTLINED_FUNCTION_57_1();
              v1199 = swift_slowAlloc();
              OUTLINED_FUNCTION_56();
              v1621 = swift_slowAlloc();
              OUTLINED_FUNCTION_261(v1621);
              *v1199 = v1200;
              *(v1199 + 2) = 34;

              *(v1199 + 3) = 8;

              sub_261F7C884();
              OUTLINED_FUNCTION_74_2();
              sub_261F67FE4(v1201, v1202, v1203);
              OUTLINED_FUNCTION_73_2();

              *(v1199 + 4) = v1196;
              OUTLINED_FUNCTION_201();

              *(v1199 + 12) = 34;

              *(v1199 + 13) = 8;

              OUTLINED_FUNCTION_10_8();
              sub_261F6E4A4(v1204, v1205, MEMORY[0x277CC9628]);
              v1206 = v1599;
              sub_26203ABAC();
              OUTLINED_FUNCTION_74_2();
              sub_261F67FE4(v1207, v1208, v1209);
              OUTLINED_FUNCTION_73_2();

              *(v1199 + 14) = v1196;

              v1210 = v1616[1].isa;
              (v1210)(v1206, v1198);
              _os_log_impl(&dword_261F5B000, v1630, v1629, "%{public}s: Received scheduled cancellation event %{public}s but cancellation has since been aborted. Ignoring.", v1199, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_26();
              MEMORY[0x266724180]();
              v1211 = OUTLINED_FUNCTION_32_4();
              MEMORY[0x266724180](v1211);
            }

            else
            {

              OUTLINED_FUNCTION_223();

              v1210 = v1616[1].isa;
              (v1210)(v1599, v1198);
            }

            (v1210)(v1600, v1198);
            v438 = OUTLINED_FUNCTION_54_2();
            return v440(v438, v439);
          }

LABEL_62:
          OUTLINED_FUNCTION_287(v316);
LABEL_66:
          v331 = v1626;
          sub_261F798CC(v1626);
          v332 = v1633 + SLODWORD(TupleTypeMetadata2[6].isa);
          v333 = v1628[4].isa;
          v333();
          OUTLINED_FUNCTION_63_2();
          v334();
          v1626 = v332;
          OUTLINED_FUNCTION_126();
          v335 = &unk_28108B000;
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v336 = v1582;
              OUTLINED_FUNCTION_21_6();
              v337();
              v338 = *v336;
              OUTLINED_FUNCTION_72_2();
              if (swift_getEnumCaseMultiPayload() != 3)
              {
                goto LABEL_221;
              }

              LODWORD(v1633) = v338;
              v1620 = v220;
              v339 = sub_26203A4AC();
              OUTLINED_FUNCTION_265();
              if (!v300)
              {
                OUTLINED_FUNCTION_0_27();
                swift_once();
              }

              v340 = qword_28108B620;
              OUTLINED_FUNCTION_45_2();
              v341 = swift_allocObject();
              OUTLINED_FUNCTION_86_2(v341);
              OUTLINED_FUNCTION_45_2();
              v342 = swift_allocObject();
              OUTLINED_FUNCTION_121_0(v342);
              OUTLINED_FUNCTION_46();
              v343 = swift_allocObject();
              v344 = v1634;
              *(v343 + 16) = sub_261FFF698;
              *(v343 + 24) = v344;
              OUTLINED_FUNCTION_46();
              v335 = swift_allocObject();
              *(v335 + 16) = sub_261FFF818;
              *(v335 + 24) = v343;
              v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA380, &qword_2620447D8);
              v346 = OUTLINED_FUNCTION_167(v345);
              *(v346 + 16) = xmmword_26203F720;
              *(v346 + 32) = sub_261FFF848;
              *(v346 + 40) = v341;
              *(v346 + 48) = sub_261FFF848;
              *(v346 + 56) = v331;
              *(v346 + 64) = sub_261FFF7F0;
              *(v346 + 72) = v335;
              swift_setDeallocating();
              OUTLINED_FUNCTION_299();

              sub_261FB9814();
              if (OUTLINED_FUNCTION_296())
              {
                OUTLINED_FUNCTION_42_1();
                v347 = swift_slowAlloc();
                v1632 = v340;
                v348 = v347;
                OUTLINED_FUNCTION_30();
                v349 = swift_slowAlloc();
                LODWORD(v1631) = v339;
                v350 = v349;
                *&aBlock = v349;
                OUTLINED_FUNCTION_66_2();
                OUTLINED_FUNCTION_179_0();
                sub_261F7C884();
                OUTLINED_FUNCTION_74_2();
                sub_261F67FE4(v351, v352, v353);
                OUTLINED_FUNCTION_65();

                OUTLINED_FUNCTION_178_0();

                _os_log_impl(&dword_261F5B000, v1632, v1631, "%{public}s: Client sending handshake request", v348, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v350);
                v354 = OUTLINED_FUNCTION_32_4();
                MEMORY[0x266724180](v354);
                OUTLINED_FUNCTION_26();
                MEMORY[0x266724180]();
              }

              else
              {
                OUTLINED_FUNCTION_187();
              }

              v728 = v1615;
              swift_storeEnumTagMultiPayload();
              sub_261FF2200(v728);
              sub_261F7B38C();
              if (!*(&v1642 + 1))
              {
                sub_261F66E60(&v1641, &qword_27FEFA288, &qword_262044098);
                *&aBlock = OUTLINED_FUNCTION_292();
                *(&aBlock + 1) = v1488;
                OUTLINED_FUNCTION_33_2();
                MEMORY[0x266722710](v1489 - 10, v1490 | 0x8000000000000000);
                sub_261F798CC(v728);
                OUTLINED_FUNCTION_59_0();
                sub_26203ABDC();
                OUTLINED_FUNCTION_76_0();
                v1491 = OUTLINED_FUNCTION_59_0();
                v1492(v1491);
                OUTLINED_FUNCTION_170_0();
                OUTLINED_FUNCTION_51_2();
                v1478 = 674;
                goto LABEL_397;
              }

              OUTLINED_FUNCTION_237();
              v729 = (v344 + *(*v344 + 160));
              if ((v729[1] & 1) == 0)
              {
                v730 = *v729;

                v731 = v1594;
                *v1594 = v1633;
                *(v731 + 1) = v730;
                *(v731 + 2) = 1;
                swift_storeEnumTagMultiPayload();
                v732 = *(&v1645 + 1);
                v733 = v1646;
                v734 = OUTLINED_FUNCTION_101_0();
                __swift_project_boxed_opaque_existential_0Tm(v734, v735);
                OUTLINED_FUNCTION_63();
                v736 = swift_allocObject();
                OUTLINED_FUNCTION_262(v736);
                swift_weakInit();
                v737 = OUTLINED_FUNCTION_85_1();
                sub_261F79740(v737, v738);
                v739 = OUTLINED_FUNCTION_167(&unk_287491058);
                *(OUTLINED_FUNCTION_28_6(v739) + 32) = v728;
                sub_261F797BC(&v1641, v739 + 40);
                v740 = *(v733 + 24);

                v740(v731, sub_261FFF828, v739, v732, v733);

                OUTLINED_FUNCTION_1_20();
                sub_261FFEE7C(v731, v741);

                __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                v742 = OUTLINED_FUNCTION_9_12();
                return v743(v742);
              }

              OUTLINED_FUNCTION_33_2();
              OUTLINED_FUNCTION_75_2();
              i = 675;
              goto LABEL_398;
            case 1u:
              v445 = v1583;
              OUTLINED_FUNCTION_21_6();
              v446();
              v447 = *v445;
              OUTLINED_FUNCTION_72_2();
              if (swift_getEnumCaseMultiPayload() != 7)
              {
                goto LABEL_221;
              }

              OUTLINED_FUNCTION_153_0();
              sub_261F7B38C();
              if (!*(&v1642 + 1))
              {
                sub_261F66E60(&v1641, &qword_27FEFA288, &qword_262044098);
                *&aBlock = OUTLINED_FUNCTION_231();
                *(&aBlock + 1) = v1484;
                OUTLINED_FUNCTION_65_1();
                OUTLINED_FUNCTION_174_0(v1485);
                OUTLINED_FUNCTION_42_3();
                sub_26203ABDC();
                OUTLINED_FUNCTION_76_0();
                v1486 = OUTLINED_FUNCTION_42_3();
                v1487(v1486);
                OUTLINED_FUNCTION_170_0();
                OUTLINED_FUNCTION_51_2();
                v1478 = 741;
                goto LABEL_397;
              }

              OUTLINED_FUNCTION_237();
              LODWORD(v1631) = v447;
              sub_261FF1B80(v447);
              v448 = v1579;
              sub_261FF19A8();
              v335 = v1611;
              OUTLINED_FUNCTION_150_0(v448, 1, v1611);
              v449 = v1607;
              v450 = v1598;
              v451 = v1580;
              v452 = v1581;
              if (!v300)
              {
                sub_261FF23A0();
                v453 = OUTLINED_FUNCTION_255();
                OUTLINED_FUNCTION_150_0(v453, v454, v450);
                v455 = v1570;
                if (!v300)
                {
                  v456 = v449[2].isa;
                  v457 = v451 + *(v450 + 20);
                  v1633 = v449 + 2;
                  v1632 = v456;
                  (v456)(v1570, v457, v335);
                  sub_261FF23A0();
                  OUTLINED_FUNCTION_150_0(v452, 1, v450);
                  if (!v300)
                  {
                    v458 = v455;
                    v459 = *(v452 + *(v450 + 24));
                    v460 = v450;
                    v461 = v449[4].isa;
                    v462 = v1602;
                    v461(v1602, v1579, v335);
                    v461(v462 + *(v460 + 20), v458, v335);
                    *(v462 + *(v460 + 24)) = v459;
                    sub_261FFEE7C(v1581, type metadata accessor for TunnelInterfaceParameters);
                    sub_261FFEE7C(v1580, type metadata accessor for TunnelInterfaceParameters);
                    v463 = v1561;
                    EnumTagSinglePayload = v1634;
                    sub_261FF23A0();
                    OUTLINED_FUNCTION_150_0(v463, 1, v460);
                    if (!v300)
                    {
                      (v1632)(v1603, v463, v335);
                      OUTLINED_FUNCTION_2_19();
                      sub_261FFEE7C(v463, v465);
                      LODWORD(v1630) = sub_26203A4AC();
                      if (qword_28108B618 == -1)
                      {
LABEL_104:
                        v466 = qword_28108B620;
                        OUTLINED_FUNCTION_45_2();
                        v467 = swift_allocObject();
                        OUTLINED_FUNCTION_86_2(v467);
                        OUTLINED_FUNCTION_45_2();
                        v468 = swift_allocObject();
                        OUTLINED_FUNCTION_139_0(v468);
                        OUTLINED_FUNCTION_46();
                        v469 = swift_allocObject();
                        *(v469 + 16) = sub_261FFF800;
                        *(v469 + 24) = EnumTagSinglePayload;
                        OUTLINED_FUNCTION_46();
                        v470 = EnumTagSinglePayload;
                        v471 = swift_allocObject();
                        *(v471 + 16) = sub_261FFF818;
                        *(v471 + 24) = v469;
                        v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA380, &qword_2620447D8);
                        v473 = OUTLINED_FUNCTION_167(v472);
                        *(v473 + 16) = xmmword_26203F720;
                        *(v473 + 32) = sub_261FFF848;
                        *(v473 + 40) = v467;
                        *(v473 + 48) = sub_261FFF848;
                        *(v473 + 56) = v468;
                        *(v473 + 64) = sub_261FFF7F0;
                        *(v473 + 72) = v471;
                        swift_setDeallocating();
                        swift_retain_n();

                        sub_261FB9814();
                        v474 = v1630;
                        v1628 = v466;
                        if (os_log_type_enabled(v466, v1630))
                        {
                          OUTLINED_FUNCTION_42_1();
                          v475 = swift_slowAlloc();
                          v1620 = v220;
                          v476 = v475;
                          OUTLINED_FUNCTION_30();
                          v466 = v470;
                          v477 = swift_slowAlloc();
                          *&v1641 = v477;
                          OUTLINED_FUNCTION_166_0(258);
                          *(v476 + 3) = 8;

                          v478 = sub_261F7C884();
                          sub_261F67FE4(v478, v479, &v1641);
                          OUTLINED_FUNCTION_142_0();

                          *(v476 + 4) = v467;
                          OUTLINED_FUNCTION_187();

                          _os_log_impl(&dword_261F5B000, v1628, v474, "%{public}s: Server sending handshake response", v476, 0xCu);
                          __swift_destroy_boxed_opaque_existential_0Tm(v477);
                          OUTLINED_FUNCTION_26();
                          MEMORY[0x266724180]();
                          OUTLINED_FUNCTION_26();
                          MEMORY[0x266724180]();
                        }

                        else
                        {
                        }

                        v768 = v1615;
                        swift_storeEnumTagMultiPayload();
                        sub_261FF2200(v768);
                        v769 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9E10, &qword_2620447B0);
                        v770 = v769[12];
                        v771 = v769[16];
                        v772 = v769[20];
                        OUTLINED_FUNCTION_4_13();
                        v1630 = v773;
                        v774 = v1594;
                        sub_261FFEE24(v1602, v1594);
                        v775 = v1611;
                        (v1632)(v774 + v770, v1603, v1611);
                        *(v774 + v771) = v1631;
                        *(v774 + v772) = 1;
                        swift_storeEnumTagMultiPayload();
                        OUTLINED_FUNCTION_236();
                        OUTLINED_FUNCTION_63();
                        v776 = swift_allocObject();
                        OUTLINED_FUNCTION_270(v776);
                        swift_weakInit();
                        v777 = OUTLINED_FUNCTION_85_1();
                        sub_261F79740(v777, v778);
                        v779 = OUTLINED_FUNCTION_167(&unk_287490DD8);
                        *(OUTLINED_FUNCTION_28_6(v779) + 32) = v466;
                        sub_261F797BC(&v1641, v779 + 40);
                        v780 = *(v772 + 24);

                        v780(v774, sub_261FFF5E0, v779, v771, v772);

                        OUTLINED_FUNCTION_1_20();
                        sub_261FFEE7C(v774, v781);
                        (*(v1607 + 8))(v1603, v775);
                        sub_261FFEE7C(v1602, v1630);

LABEL_334:
                        __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                        goto LABEL_335;
                      }

LABEL_377:
                      OUTLINED_FUNCTION_0_27();
                      swift_once();
                      goto LABEL_104;
                    }

                    goto LABEL_388;
                  }

LABEL_387:
                  __break(1u);
LABEL_388:
                  __break(1u);
LABEL_389:
                  __break(1u);
LABEL_390:
                  __break(1u);
                  goto LABEL_391;
                }

LABEL_386:
                __break(1u);
                goto LABEL_387;
              }

              __break(1u);
              goto LABEL_385;
            case 2u:
              v416 = v1606;
              OUTLINED_FUNCTION_21_6();
              v417();
              v1611 = *(v416 + 5);
              OUTLINED_FUNCTION_72_2();
              v418 = swift_getEnumCaseMultiPayload();
              v1620 = v220;
              if (v418 != 8)
              {
                if (v418 == 4)
                {
                  v419 = OUTLINED_FUNCTION_118_0();
                  sub_261F797BC(v419, v420);
                  sub_261F7B38C();
                  if (!v1640)
                  {
                    sub_261F66E60(&v1639, &qword_27FEFA288, &qword_262044098);
                    *&v1641 = OUTLINED_FUNCTION_292();
                    *(&v1641 + 1) = v1501;
                    OUTLINED_FUNCTION_33_2();
                    OUTLINED_FUNCTION_184_0();
                    MEMORY[0x266722710]();
                    OUTLINED_FUNCTION_203();
                    sub_261F798CC(v1502);
                    OUTLINED_FUNCTION_143_0();
                    OUTLINED_FUNCTION_76_0();
                    v1503 = OUTLINED_FUNCTION_71_2();
                    v1504(v1503);
                    OUTLINED_FUNCTION_170_0();
                    OUTLINED_FUNCTION_75_2();
                    v1478 = 686;
                    goto LABEL_397;
                  }

                  sub_261F797BC(&v1639, &v1641);
                  v421 = BYTE8(v1645);
                  v422 = OUTLINED_FUNCTION_101_0();
                  __swift_project_boxed_opaque_existential_0Tm(v422, v423);
                  v424 = OUTLINED_FUNCTION_6_12();
                  v425(v424);
                  OUTLINED_FUNCTION_247();
                  v335 = v1643;
                  __swift_project_boxed_opaque_existential_0Tm(&v1641, *(&v1642 + 1));
                  OUTLINED_FUNCTION_53_2();
                  v426 = OUTLINED_FUNCTION_126();
                  v427(v426);
                  v428 = *(&v1638[0] + 1);
                  v429 = OUTLINED_FUNCTION_42_3();
                  sub_261FA3600(v429, v430, v431, v428);
                  OUTLINED_FUNCTION_298();

                  v432 = v1611;
                  if ((v421 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_33_2();
                    OUTLINED_FUNCTION_75_2();
                    for (i = 687; ; i = v1478)
                    {
LABEL_398:
                      OUTLINED_FUNCTION_253();
                      OUTLINED_FUNCTION_252();
                      sub_26203A91C();
                      __break(1u);
LABEL_399:
                      sub_261F66E60(&v1641, &qword_27FEFA288, &qword_262044098);
                      *&aBlock = OUTLINED_FUNCTION_292();
                      *(&aBlock + 1) = v1479;
                      OUTLINED_FUNCTION_33_2();
                      MEMORY[0x266722710](v1480 - 10, v1481 | 0x8000000000000000);
                      sub_261F798CC(v335);
                      OUTLINED_FUNCTION_11_0();
                      sub_26203ABDC();
                      OUTLINED_FUNCTION_76_0();
                      v1482 = OUTLINED_FUNCTION_11_0();
                      v1483(v1482);
                      OUTLINED_FUNCTION_170_0();
                      OUTLINED_FUNCTION_51_2();
                      v1478 = 718;
LABEL_397:
                      ;
                    }
                  }

                  if (!v1611)
                  {
                    v1298 = sub_26203A4AC();
                    if (qword_28108B618 != -1)
                    {
                      OUTLINED_FUNCTION_0_27();
                      swift_once();
                    }

                    v1299 = qword_28108B620;
                    OUTLINED_FUNCTION_45_2();
                    v1300 = swift_allocObject();
                    OUTLINED_FUNCTION_86_2(v1300);
                    OUTLINED_FUNCTION_45_2();
                    v1301 = swift_allocObject();
                    OUTLINED_FUNCTION_121_0(v1301);
                    OUTLINED_FUNCTION_46();
                    v1302 = swift_allocObject();
                    v1303 = v1634;
                    *(v1302 + 16) = sub_261FFF800;
                    *(v1302 + 24) = v1303;
                    OUTLINED_FUNCTION_46();
                    v1304 = swift_allocObject();
                    *(v1304 + 16) = sub_261FFF818;
                    *(v1304 + 24) = v1302;
                    v1305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA380, &qword_2620447D8);
                    v1306 = OUTLINED_FUNCTION_167(v1305);
                    *(v1306 + 16) = xmmword_26203F720;
                    *(v1306 + 32) = sub_261FFF848;
                    *(v1306 + 40) = v1300;
                    *(v1306 + 48) = sub_261FFF848;
                    *(v1306 + 56) = &unk_28108B000;
                    *(v1306 + 64) = sub_261FFF7F0;
                    *(v1306 + 72) = v1304;
                    swift_setDeallocating();
                    OUTLINED_FUNCTION_299();

                    sub_261FB9814();
                    if (OUTLINED_FUNCTION_296())
                    {
                      OUTLINED_FUNCTION_42_1();
                      swift_slowAlloc();
                      v1633 = v1299;
                      OUTLINED_FUNCTION_30();
                      v1307 = swift_slowAlloc();
                      LODWORD(v1632) = v1298;
                      v1308 = v1307;
                      *&v1639 = v1307;
                      OUTLINED_FUNCTION_66_2();
                      OUTLINED_FUNCTION_179_0();
                      v1309 = sub_261F7C884();
                      sub_261F67FE4(v1309, v1310, &v1639);
                      OUTLINED_FUNCTION_65();

                      OUTLINED_FUNCTION_178_0();

                      OUTLINED_FUNCTION_135_0(&dword_261F5B000, v1311, v1312, "%{public}s: Client sent handshake request, waiting for server response");
                      __swift_destroy_boxed_opaque_existential_0Tm(v1308);
                      v1313 = OUTLINED_FUNCTION_32_4();
                      MEMORY[0x266724180](v1313);
                      OUTLINED_FUNCTION_26();
                      MEMORY[0x266724180]();
                    }

                    else
                    {
                      OUTLINED_FUNCTION_187();
                    }

                    v1385 = v1615;
                    swift_storeEnumTagMultiPayload();
                    sub_261FF2200(v1385);
                    OUTLINED_FUNCTION_63();
                    v1386 = swift_allocObject();
                    OUTLINED_FUNCTION_136_0(v1386);
                    swift_weakInit();
                    sub_261F79740(&v1641, &v1639);
                    v1387 = OUTLINED_FUNCTION_167(&unk_287490F90);
                    *(OUTLINED_FUNCTION_28_6(v1387) + 32) = v1385;
                    sub_261F797BC(&v1639, v1387 + 40);

                    sub_261FF6E8C();

                    __swift_destroy_boxed_opaque_existential_0Tm(&v1641);
                    goto LABEL_334;
                  }

                  goto LABEL_163;
                }

                OUTLINED_FUNCTION_278();
                v654 = v1549;
                OUTLINED_FUNCTION_239();
                (v416)();
                LODWORD(v1608) = sub_261FF5EE8(2, v654, v1623, v1621);
                v656 = *(v332 + 1);
                v655 = v332 + 8;
                v657 = v656;
                (v656)(v654, v220);
                v1607 = v656;
                if ((v1608 & 1) == 0)
                {
                  goto LABEL_168;
                }

                *&v1604 = v416;
                sub_261F79740(v1606, &aBlock);
                sub_261F798CC(v1530);
                v658 = v1611;
                v659 = v1611;
                v660 = sub_261FF6158(v220);
                LODWORD(v1605) = v660;
                v661 = OUTLINED_FUNCTION_94();
                v1608 = v655;
                v657(v661);

                if (v1605 == 2 || (v660 & 1) != 0)
                {
                  __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                  v220 = v1627;
                  v657 = v1607;
                  v416 = v1604;
LABEL_168:
                  OUTLINED_FUNCTION_239();
                  (v416)();
                  OUTLINED_FUNCTION_155_0();
                  v665 = sub_261FF5EE8(v662, v663, v664, v1621);
                  v666 = OUTLINED_FUNCTION_94();
                  v657(v666);
                  v303 = v220;
                  if (v665)
                  {
                    sub_261F797BC(v1606, &v1639);
                    sub_261F798CC(v1525);
                    v667 = sub_261FF6158(v220);
                    v668 = OUTLINED_FUNCTION_122();
                    v657(v668);
                    v220 = v1620;
                    if (v667 != 2 && (v667 & 1) != 0)
                    {
                      OUTLINED_FUNCTION_22_6(&v1639);
                      v669 = OUTLINED_FUNCTION_18_5();
                      v670(v669);
                      v671 = sub_261FF2178();
                      OUTLINED_FUNCTION_71_2();
                      sub_261FA1BC8(v671, v672);

                      if (*(&v1642 + 1))
                      {
                        aBlock = v1641;
                        v1645 = v1642;
                        v1646 = v1643;
                        v673 = v1627;
                        v674 = v1625;
                        v675 = v1626;
                        v676 = v1611;
                        if (v1611)
                        {
                          v677 = v1618;
                          sub_261F79740(&v1639, v1618);
                          v678 = v676;

                          *(v677 + 40) = v676;
                          swift_storeEnumTagMultiPayload();
                          sub_261F6D760();

                          v679 = *(v674 + 8);
                          v680 = OUTLINED_FUNCTION_275();
                          v679(v680);
                          sub_261FFEDE8(&aBlock);
                          __swift_destroy_boxed_opaque_existential_0Tm(&v1639);
                          v681 = OUTLINED_FUNCTION_71_2();
                          v679(v681);
                        }

                        else
                        {

                          sub_261FF8A80();
                          sub_261FFEDE8(&aBlock);
                          __swift_destroy_boxed_opaque_existential_0Tm(&v1639);
                          (*(v674 + 8))(v675, v1629);
                        }

                        v1438 = v1633;
                        v1439 = v673;
                      }

                      else
                      {

                        sub_261F66E60(&v1641, &qword_27FEFA340, &qword_262044790);
                        __swift_destroy_boxed_opaque_existential_0Tm(&v1639);
                        v1436 = OUTLINED_FUNCTION_9_12();
                        v1437(v1436);
                        v1438 = OUTLINED_FUNCTION_130_0();
                      }

                      return (v1607)(v1438, v1439);
                    }

                    p_aBlock = &v1639;
                    goto LABEL_156;
                  }

                  v822 = v1606;
                  goto LABEL_217;
                }

                sub_261FF2178();
                v1393 = BYTE8(v1645);
                v1394 = v1646;
                OUTLINED_FUNCTION_202();
                OUTLINED_FUNCTION_149_0();
                v1395 = OUTLINED_FUNCTION_67_2();
                v1396(v1395, v1394);
                OUTLINED_FUNCTION_113_0();
                sub_261F78910(v1397, v1398, v1399);
                OUTLINED_FUNCTION_297();

                if ((v1393 & 1) == 0)
                {

                  __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                  __swift_destroy_boxed_opaque_existential_0Tm(v1606);
                  v1421 = OUTLINED_FUNCTION_9_12();
                  v1422(v1421);
                  goto LABEL_361;
                }

                v220 = v1625;
                v221 = v1626;
                v1400 = v1611;
                if (v1611)
                {
                  v1401 = v1618;
                  sub_261F79740(&aBlock, v1618);
                  v1402 = v1400;

                  *(v1401 + 40) = v1400;
                  swift_storeEnumTagMultiPayload();
                  sub_261F6D760();

                  v1403 = *(v220 + 8);
                  v1404 = OUTLINED_FUNCTION_71_2();
                  v1403(v1404);
                  __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                  __swift_destroy_boxed_opaque_existential_0Tm(v1606);
                  v1405 = OUTLINED_FUNCTION_133_0();
                  v1403(v1405);
LABEL_361:
                  v1460 = OUTLINED_FUNCTION_130_0();
                  return (v1607)(v1460);
                }

LABEL_360:

                OUTLINED_FUNCTION_63();
                v1455 = swift_allocObject();
                OUTLINED_FUNCTION_136_0(v1455);
                swift_weakInit();
                v1456 = OUTLINED_FUNCTION_85_1();
                sub_261F79740(v1456, v1457);
                v1458 = OUTLINED_FUNCTION_167(&unk_287490E28);
                v1459 = OUTLINED_FUNCTION_28_6(v1458);
                OUTLINED_FUNCTION_191(v1459);
                OUTLINED_FUNCTION_196();
                sub_261FF6E8C();

                __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                __swift_destroy_boxed_opaque_existential_0Tm(v1606);
                (*(v220 + 8))(v221, v1629);
                goto LABEL_361;
              }

              v641 = OUTLINED_FUNCTION_118_0();
              sub_261F797BC(v641, v642);
              sub_261F7B38C();
              if (!v1640)
              {
                sub_261F66E60(&v1639, &qword_27FEFA288, &qword_262044098);
                *&v1641 = OUTLINED_FUNCTION_231();
                *(&v1641 + 1) = v1509;
                OUTLINED_FUNCTION_184_0();
                MEMORY[0x266722710](0xD000000000000033);
                OUTLINED_FUNCTION_203();
                sub_261F798CC(v1510);
                OUTLINED_FUNCTION_143_0();
                OUTLINED_FUNCTION_76_0();
                v1511 = OUTLINED_FUNCTION_71_2();
                v1512(v1511);
                OUTLINED_FUNCTION_170_0();
                OUTLINED_FUNCTION_75_2();
                v1478 = 764;
                goto LABEL_397;
              }

              sub_261F797BC(&v1639, &v1641);
              v643 = BYTE8(v1645);
              v644 = OUTLINED_FUNCTION_101_0();
              __swift_project_boxed_opaque_existential_0Tm(v644, v645);
              v646 = OUTLINED_FUNCTION_6_12();
              v647(v646);
              OUTLINED_FUNCTION_247();
              v531 = *(&v1642 + 1);
              __swift_project_boxed_opaque_existential_0Tm(&v1641, *(&v1642 + 1));
              OUTLINED_FUNCTION_53_2();
              v648 = OUTLINED_FUNCTION_126();
              v649(v648);
              v650 = *(&v1638[0] + 1);
              v651 = OUTLINED_FUNCTION_42_3();
              sub_261FA3600(v651, v652, v653, v650);
              OUTLINED_FUNCTION_298();

              v432 = v1611;
              if (v643)
              {
                if (v1611)
                {
LABEL_163:

                  sub_261F9BCE0();
                  OUTLINED_FUNCTION_71_2();
                  sub_26203ACDC();
                  OUTLINED_FUNCTION_59_2();
                  OUTLINED_FUNCTION_171_0();
                  OUTLINED_FUNCTION_267();
                  sub_26203AD4C();
                  OUTLINED_FUNCTION_132_0();
                  sub_261F9D610();
                  OUTLINED_FUNCTION_72_0();
                  swift_allocError();
                  sub_2620399DC();

                  swift_willThrow();

                  OUTLINED_FUNCTION_259();
                  v438 = OUTLINED_FUNCTION_161_0();
                  return v440(v438, v439);
                }

                v1338 = sub_26203A4AC();
                if (qword_28108B618 != -1)
                {
                  OUTLINED_FUNCTION_0_27();
                  swift_once();
                }

                v1339 = qword_28108B620;
                OUTLINED_FUNCTION_45_2();
                v1340 = swift_allocObject();
                OUTLINED_FUNCTION_86_2(v1340);
                OUTLINED_FUNCTION_45_2();
                v1341 = swift_allocObject();
                OUTLINED_FUNCTION_121_0(v1341);
                OUTLINED_FUNCTION_46();
                v1342 = swift_allocObject();
                v1343 = v1634;
                *(v1342 + 16) = sub_261FFF800;
                *(v1342 + 24) = v1343;
                OUTLINED_FUNCTION_46();
                v1344 = swift_allocObject();
                *(v1344 + 16) = sub_261FFF818;
                *(v1344 + 24) = v1342;
                v1345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA380, &qword_2620447D8);
                v1346 = OUTLINED_FUNCTION_167(v1345);
                *(v1346 + 16) = xmmword_26203F720;
                *(v1346 + 32) = sub_261FFF848;
                *(v1346 + 40) = v1340;
                *(v1346 + 48) = sub_261FFF848;
                *(v1346 + 56) = &unk_28108B000;
                *(v1346 + 64) = sub_261FFF7F0;
                *(v1346 + 72) = v1344;
                swift_setDeallocating();
                OUTLINED_FUNCTION_299();

                sub_261FB9814();
                if (OUTLINED_FUNCTION_296())
                {
                  OUTLINED_FUNCTION_42_1();
                  swift_slowAlloc();
                  v1633 = v1339;
                  OUTLINED_FUNCTION_30();
                  v1347 = swift_slowAlloc();
                  LODWORD(v1632) = v1338;
                  v1348 = v1347;
                  *&v1639 = v1347;
                  OUTLINED_FUNCTION_66_2();
                  OUTLINED_FUNCTION_179_0();
                  v1349 = sub_261F7C884();
                  sub_261F67FE4(v1349, v1350, &v1639);
                  OUTLINED_FUNCTION_65();

                  OUTLINED_FUNCTION_178_0();

                  OUTLINED_FUNCTION_135_0(&dword_261F5B000, v1351, v1352, "%{public}s: Server sent handshake response");
                  __swift_destroy_boxed_opaque_existential_0Tm(v1348);
                  v1353 = OUTLINED_FUNCTION_32_4();
                  MEMORY[0x266724180](v1353);
                  OUTLINED_FUNCTION_26();
                  MEMORY[0x266724180]();
                }

                else
                {
                  OUTLINED_FUNCTION_187();
                }

                v335 = v1615;
                v1388 = sub_261FF246C();
                v493 = v1629;
                if (!v1388)
                {
                  goto LABEL_395;
                }

                v1389 = v1388;

                *v335 = 1;
                swift_storeEnumTagMultiPayload();
                sub_261FF2200(v335);
                OUTLINED_FUNCTION_84();
                sub_261FF24AC();
                OUTLINED_FUNCTION_84();
                v1390 = sub_261FF2510();
                v1389(v1390);
                v1391 = OUTLINED_FUNCTION_71_2();
                sub_261F665E4(v1391, v1392);
                OUTLINED_FUNCTION_259();
                v438 = OUTLINED_FUNCTION_17_8();
                goto LABEL_110;
              }

              __break(1u);
              goto LABEL_381;
            case 3u:
              v519 = v1601;
              OUTLINED_FUNCTION_21_6();
              v520();
              v521 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA378, &qword_2620447D0) + 48);
              OUTLINED_FUNCTION_72_2();
              v522 = swift_getEnumCaseMultiPayload();
              if (v522 == 6)
              {
                v682 = OUTLINED_FUNCTION_118_0();
                sub_261F797BC(v682, v683);
                v335 = v1560;
                sub_261FFF604(v521 + v519, v1560);
                OUTLINED_FUNCTION_153_0();
                sub_261F7B38C();
                if (!v1640)
                {
                  sub_261F66E60(&v1639, &qword_27FEFA288, &qword_262044098);
                  *&v1641 = OUTLINED_FUNCTION_231();
                  *(&v1641 + 1) = v1513;
                  OUTLINED_FUNCTION_184_0();
                  v1514 = MEMORY[0x266722710](0xD000000000000033);
                  OUTLINED_FUNCTION_174_0(v1514);
                  OUTLINED_FUNCTION_42_3();
                  sub_26203ABDC();
                  OUTLINED_FUNCTION_76_0();
                  v1515 = OUTLINED_FUNCTION_42_3();
                  v1516(v1515);
                  OUTLINED_FUNCTION_170_0();
                  OUTLINED_FUNCTION_75_2();
                  v1478 = 728;
                  goto LABEL_397;
                }

                sub_261F797BC(&v1639, &v1641);
                v684 = BYTE8(v1645);
                v685 = OUTLINED_FUNCTION_101_0();
                __swift_project_boxed_opaque_existential_0Tm(v685, v686);
                v687 = OUTLINED_FUNCTION_6_12();
                v688(v687);
                OUTLINED_FUNCTION_247();
                v689 = *(&v1642 + 1);
                v531 = v1643;
                __swift_project_boxed_opaque_existential_0Tm(&v1641, *(&v1642 + 1));
                OUTLINED_FUNCTION_53_2();
                v690(v689, v531);
                v691 = *(&v1638[0] + 1);
                v692 = OUTLINED_FUNCTION_42_3();
                sub_261FA3600(v692, v693, v694, v691);
                OUTLINED_FUNCTION_298();

                v303 = v1629;
                if (v684)
                {
                  v537 = v1548;
                  sub_261F674BC(v335, v1548, &qword_27FEFA2D0, &qword_262045930);
                  if (OUTLINED_FUNCTION_301() == 1)
                  {
LABEL_177:
                    v695 = *v537;
                    sub_261F9BCE0();
                    OUTLINED_FUNCTION_122();
                    sub_26203ACDC();
                    OUTLINED_FUNCTION_59_2();
                    sub_26203AD4C();
                    OUTLINED_FUNCTION_132_0();
                    sub_261F9D610();
                    OUTLINED_FUNCTION_72_0();
                    swift_allocError();
                    v696 = v695;
                    OUTLINED_FUNCTION_94();
                    sub_2620399DC();

                    swift_willThrow();

                    sub_261F66E60(v335, &qword_27FEFA2D0, &qword_262045930);
                    OUTLINED_FUNCTION_259();
                    v438 = OUTLINED_FUNCTION_17_8();
                    v439 = v303;
                    return v440(v438, v439);
                  }

                  OUTLINED_FUNCTION_3_19();
                  v820 = v1529;
                  sub_261FFEEEC(v537, v1529);
                  OUTLINED_FUNCTION_101_0();
                  sub_261FF7550();
                  OUTLINED_FUNCTION_1_20();
                  sub_261FFEE7C(v820, v821);
                  v819 = v1560;
LABEL_214:
                  sub_261F66E60(v819, &qword_27FEFA2D0, &qword_262045930);
                  OUTLINED_FUNCTION_259();
                  v438 = OUTLINED_FUNCTION_17_8();
LABEL_300:
                  v439 = v303;
                  return v440(v438, v439);
                }

LABEL_382:
                __break(1u);
                goto LABEL_383;
              }

              if (v522 == 5)
              {
                v523 = OUTLINED_FUNCTION_118_0();
                sub_261F797BC(v523, v524);
                v335 = v1559;
                sub_261FFF604(v521 + v519, v1559);
                OUTLINED_FUNCTION_153_0();
                sub_261F7B38C();
                if (!v1640)
                {
                  sub_261F66E60(&v1639, &qword_27FEFA288, &qword_262044098);
                  *&v1641 = OUTLINED_FUNCTION_292();
                  *(&v1641 + 1) = v1505;
                  OUTLINED_FUNCTION_33_2();
                  OUTLINED_FUNCTION_184_0();
                  v1506 = MEMORY[0x266722710]();
                  OUTLINED_FUNCTION_174_0(v1506);
                  OUTLINED_FUNCTION_42_3();
                  sub_26203ABDC();
                  OUTLINED_FUNCTION_76_0();
                  v1507 = OUTLINED_FUNCTION_42_3();
                  v1508(v1507);
                  OUTLINED_FUNCTION_170_0();
                  OUTLINED_FUNCTION_75_2();
                  v1478 = 703;
                  goto LABEL_397;
                }

                sub_261F797BC(&v1639, &v1641);
                v525 = BYTE8(v1645);
                v526 = OUTLINED_FUNCTION_101_0();
                __swift_project_boxed_opaque_existential_0Tm(v526, v527);
                v528 = OUTLINED_FUNCTION_6_12();
                v529(v528);
                OUTLINED_FUNCTION_247();
                v530 = *(&v1642 + 1);
                v531 = v1643;
                __swift_project_boxed_opaque_existential_0Tm(&v1641, *(&v1642 + 1));
                OUTLINED_FUNCTION_53_2();
                v532(v530, v531);
                v533 = *(&v1638[0] + 1);
                v534 = OUTLINED_FUNCTION_42_3();
                sub_261FA3600(v534, v535, v536, v533);
                OUTLINED_FUNCTION_298();

                v303 = v1629;
                if (v525)
                {
                  v537 = v1547;
                  sub_261F674BC(v335, v1547, &qword_27FEFA2D0, &qword_262045930);
                  if (OUTLINED_FUNCTION_301() == 1)
                  {
                    goto LABEL_177;
                  }

                  OUTLINED_FUNCTION_3_19();
                  v817 = v1528;
                  sub_261FFEEEC(v537, v1528);
                  OUTLINED_FUNCTION_101_0();
                  sub_261FF7550();
                  OUTLINED_FUNCTION_1_20();
                  sub_261FFEE7C(v817, v818);
                  v819 = v1559;
                  goto LABEL_214;
                }

LABEL_381:
                __break(1u);
                goto LABEL_382;
              }

              v1611 = v521;
              v1620 = v220;
              OUTLINED_FUNCTION_278();
              v697 = v1550;
              OUTLINED_FUNCTION_239();
              v519();
              v698 = v1621;
              LODWORD(v1607) = sub_261FF5EE8(2, v697, v1623, v1621);
              v700 = *(v332 + 1);
              v699 = v332 + 8;
              v701 = v697;
              v702 = v700;
              (v700)(v701, v220);
              if ((v1607 & 1) == 0)
              {
                goto LABEL_182;
              }

              v1605 = v519;
              v1606 = v331;
              v703 = v1601;
              sub_261F79740(v1601, &aBlock);
              sub_261F674BC(v1611 + v703, v1551, &qword_27FEFA2D0, &qword_262045930);
              sub_261F798CC(v1531);
              v704 = sub_261FF6158(v220);
              v705 = OUTLINED_FUNCTION_94();
              v1607 = v699;
              (v702)(v705);
              if (v704 == 2 || (v704 & 1) != 0)
              {
                sub_261F66E60(v1551, &qword_27FEFA2D0, &qword_262045930);
                __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                v220 = v1627;
                v698 = v1621;
                v519 = v1605;
LABEL_182:
                v706 = v1546;
                OUTLINED_FUNCTION_239();
                v519();
                v707 = sub_261FF5EE8(2, v706, v1623, v698);
                v708 = OUTLINED_FUNCTION_94();
                (v702)(v708);
                v709 = v702;
                v303 = v220;
                if ((v707 & 1) == 0)
                {
                  v823 = v1601;
                  sub_261F66E60(v1611 + v1601, &qword_27FEFA2D0, &qword_262045930);
                  v822 = v823;
LABEL_217:
                  __swift_destroy_boxed_opaque_existential_0Tm(v822);
                  goto LABEL_220;
                }

                v710 = v1601;
                sub_261F797BC(v1601, &aBlock);
                v711 = v1527;
                sub_261FFF604(v1611 + v710, v1527);
                sub_261F798CC(v1526);
                v712 = sub_261FF6158(v220);
                v713 = OUTLINED_FUNCTION_122();
                v1611 = v709;
                (v709)(v713);
                v220 = v1620;
                if (v712 != 2 && (v712 & 1) != 0)
                {

                  sub_261FF21BC();
                  v714 = BYTE8(v1645);
                  v715 = v1646;
                  OUTLINED_FUNCTION_202();
                  OUTLINED_FUNCTION_164_0();
                  v716 = OUTLINED_FUNCTION_67_2();
                  v717(v716, v715);
                  OUTLINED_FUNCTION_113_0();
                  sub_261F78910(v718, v719, v720);
                  OUTLINED_FUNCTION_297();

                  if ((v714 & 1) == 0)
                  {
                    sub_261F66E60(v711, &qword_27FEFA2D0, &qword_262045930);
                    __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                    v1432 = OUTLINED_FUNCTION_9_12();
                    v1433(v1432);
                    v1434 = OUTLINED_FUNCTION_130_0();
                    return (v1611)(v1434, v1435);
                  }

                  v721 = v1522;
                  sub_261F674BC(v711, v1522, &qword_27FEFA2D0, &qword_262045930);
                  v722 = OUTLINED_FUNCTION_301();
                  v723 = v1629;
                  if (v722 == 1)
                  {
                    v724 = *v721;
                    v725 = v1618;
                    sub_261F79740(&aBlock, v1618);
                    *(v725 + 40) = v724;
                    OUTLINED_FUNCTION_11_0();
                    swift_storeEnumTagMultiPayload();
                    v726 = v724;
                    sub_261F6D760();

                    v711 = v1527;
                    (*(v1625 + 8))(v725, v723);
                    v727 = v1627;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_3_19();
                    v1450 = i;
                    sub_261FFEEEC(v721, i);
                    v1451 = v1622;
                    sub_261FF7550();
                    v727 = v1627;
                    if (v1451)
                    {
                      OUTLINED_FUNCTION_1_20();
                      sub_261FFEE7C(v1450, v1452);
                      sub_261F66E60(v711, &qword_27FEFA2D0, &qword_262045930);
                      OUTLINED_FUNCTION_30_5(&aBlock);
                      v1453 = OUTLINED_FUNCTION_100();
                      v1454(v1453);
                      return (v1611)(v1633, v727);
                    }

                    OUTLINED_FUNCTION_1_20();
                    sub_261FFEE7C(v1450, v1472);
                  }

                  sub_261F66E60(v711, &qword_27FEFA2D0, &qword_262045930);
                  __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                  v1473 = OUTLINED_FUNCTION_100();
                  v1474(v1473);
                  return (v1611)(v1633, v727);
                }

                sub_261F66E60(v711, &qword_27FEFA2D0, &qword_262045930);
                p_aBlock = &aBlock;
LABEL_156:
                __swift_destroy_boxed_opaque_existential_0Tm(p_aBlock);
                goto LABEL_221;
              }

              v172 = v702;

              OUTLINED_FUNCTION_153_0();
              sub_261FF2178();
              v1406 = BYTE8(v1645);
              v1407 = v1646;
              OUTLINED_FUNCTION_202();
              OUTLINED_FUNCTION_164_0();
              v1408 = OUTLINED_FUNCTION_67_2();
              v1409(v1408, v1407);
              OUTLINED_FUNCTION_113_0();
              sub_261F78910(v1410, v1411, v1412);
              OUTLINED_FUNCTION_297();

              if ((v1406 & 1) == 0)
              {
                OUTLINED_FUNCTION_113_0();
                sub_261F66E60(v1423, v1424, v1425);
                __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                OUTLINED_FUNCTION_113_0();
                sub_261F66E60(v1426, v1427, v1428);
                __swift_destroy_boxed_opaque_existential_0Tm(v703);
                v1429 = OUTLINED_FUNCTION_9_12();
                v1430(v1429);
                v1431 = OUTLINED_FUNCTION_130_0();
                return (v172)(v1431);
              }

              v1413 = v1523;
              sub_261F674BC(v1551, v1523, &qword_27FEFA2D0, &qword_262045930);
              v1414 = OUTLINED_FUNCTION_301();
              v1415 = v1626;
              if (v1414 == 1)
              {
                v1416 = *v1413;
                v1417 = v1618;
                sub_261F79740(&aBlock, v1618);
                *(v1417 + 40) = v1416;
                swift_storeEnumTagMultiPayload();
                v1418 = v1416;
                sub_261F6D760();

                v1419 = OUTLINED_FUNCTION_39_1();
                v1420(v1419);
LABEL_364:
                OUTLINED_FUNCTION_113_0();
                sub_261F66E60(v1462, v1463, v1464);
                __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                v1465 = v1601;
                OUTLINED_FUNCTION_113_0();
                sub_261F66E60(v1466, v1467, v1468);
                __swift_destroy_boxed_opaque_existential_0Tm(v1465);
                v1469 = OUTLINED_FUNCTION_35_3();
                v1470(v1469);
                goto LABEL_365;
              }

              OUTLINED_FUNCTION_3_19();
              v295 = v1521;
              sub_261FFEEEC(v1413, v1521);
              OUTLINED_FUNCTION_101_0();
              v1440 = v1622;
              sub_261FF7550();
              if (v1440)
              {
                OUTLINED_FUNCTION_1_20();
                sub_261FFEE7C(v295, v1441);
                OUTLINED_FUNCTION_113_0();
                sub_261F66E60(v1442, v1443, v1444);
                __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                v1445 = v1601;
                OUTLINED_FUNCTION_113_0();
                sub_261F66E60(v1446, v1447, v1448);
                OUTLINED_FUNCTION_30_5(v1445);
                v1449(v1415, v1629);
LABEL_365:
                v1471 = OUTLINED_FUNCTION_130_0();
                return (v172)(v1471);
              }

              goto LABEL_363;
            case 4u:
              v538 = v1584;
              OUTLINED_FUNCTION_21_6();
              v539();
              OUTLINED_FUNCTION_72_2();
              if (swift_getEnumCaseMultiPayload() != 9)
              {
                OUTLINED_FUNCTION_277();
                v638 = OUTLINED_FUNCTION_100();
                v639(v638);
                goto LABEL_221;
              }

              v1620 = v220;
              (v333)(v1578, v538, v303);
              v540 = sub_26203A4AC();
              OUTLINED_FUNCTION_265();
              if (!v300)
              {
                OUTLINED_FUNCTION_0_27();
                swift_once();
              }

              v541 = qword_28108B620;
              OUTLINED_FUNCTION_45_2();
              v542 = swift_allocObject();
              OUTLINED_FUNCTION_86_2(v542);
              OUTLINED_FUNCTION_45_2();
              v543 = swift_allocObject();
              OUTLINED_FUNCTION_121_0(v543);
              OUTLINED_FUNCTION_46();
              v544 = swift_allocObject();
              v545 = v1634;
              *(v544 + 16) = sub_261FFF800;
              *(v544 + 24) = v545;
              OUTLINED_FUNCTION_46();
              v546 = swift_allocObject();
              *(v546 + 16) = sub_261FFF818;
              *(v546 + 24) = v544;
              v547 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA380, &qword_2620447D8);
              v548 = OUTLINED_FUNCTION_167(v547);
              *(v548 + 16) = xmmword_26203F720;
              *(v548 + 32) = sub_261FFF848;
              *(v548 + 40) = v542;
              *(v548 + 48) = sub_261FFF848;
              *(v548 + 56) = v331;
              *(v548 + 64) = sub_261FFF7F0;
              *(v548 + 72) = v546;
              swift_setDeallocating();
              OUTLINED_FUNCTION_299();

              sub_261FB9814();
              if (OUTLINED_FUNCTION_296())
              {
                OUTLINED_FUNCTION_42_1();
                swift_slowAlloc();
                v1633 = v541;
                OUTLINED_FUNCTION_30();
                v549 = swift_slowAlloc();
                LODWORD(v1632) = v540;
                v550 = v549;
                *&aBlock = v549;
                OUTLINED_FUNCTION_66_2();
                OUTLINED_FUNCTION_179_0();
                sub_261F7C884();
                OUTLINED_FUNCTION_74_2();
                sub_261F67FE4(v551, v552, v553);
                OUTLINED_FUNCTION_65();

                OUTLINED_FUNCTION_178_0();

                OUTLINED_FUNCTION_135_0(&dword_261F5B000, v554, v555, "%{public}s: Creating virtual interface");
                __swift_destroy_boxed_opaque_existential_0Tm(v550);
                v556 = OUTLINED_FUNCTION_32_4();
                MEMORY[0x266724180](v556);
                OUTLINED_FUNCTION_26();
                MEMORY[0x266724180]();
              }

              else
              {
                OUTLINED_FUNCTION_187();
              }

              v335 = v545;
              v357 = v1611;
              v745 = v1572;
              sub_261FF23A0();
              v746 = OUTLINED_FUNCTION_211();
              v220 = v1598;
              EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v746, v747, v1598);
              sub_261F66E60(v745, &qword_27FEFA2A0, &qword_2620440B0);
              if (EnumTagSinglePayload == 1)
              {
                __break(1u);
                goto LABEL_377;
              }

              v748 = v1558;
              sub_261FF19A8();
              v356 = __swift_getEnumTagSinglePayload(v748, 1, v357);
              sub_261F66E60(v748, &qword_27FEFA270, &qword_262041910);
              if (v356 != 1)
              {
                sub_261F7B38C();
                if (!*(&v1642 + 1))
                {
                  sub_261F66E60(&v1641, &qword_27FEFA288, &qword_262044098);
                  *&aBlock = OUTLINED_FUNCTION_231();
                  *(&aBlock + 1) = v1493;
                  OUTLINED_FUNCTION_65_1();
                  OUTLINED_FUNCTION_203();
                  sub_261F798CC(v1494);
                  OUTLINED_FUNCTION_143_0();
                  OUTLINED_FUNCTION_76_0();
                  v1495 = OUTLINED_FUNCTION_71_2();
                  v1496(v1495);
                  OUTLINED_FUNCTION_170_0();
                  OUTLINED_FUNCTION_51_2();
                  v1478 = 787;
                  goto LABEL_397;
                }

                OUTLINED_FUNCTION_237();
                sub_261F6E294();
                sub_261FF23A0();
                v749 = OUTLINED_FUNCTION_255();
                OUTLINED_FUNCTION_150_0(v749, v750, v220);
                if (v300)
                {
                  goto LABEL_389;
                }

                v751 = v1621;
                v752 = OUTLINED_FUNCTION_71_2();
                v753(v752);
                OUTLINED_FUNCTION_236();
                v754 = OUTLINED_FUNCTION_82_1();
                v755 = v1623;
                v756(v754);
                LOBYTE(v1641) = 0;
                v757 = v1556;
                v758 = OUTLINED_FUNCTION_177_0();
                v759 = v1622;
                sub_2620028E4(v758, v760, v761, v762, v763, v755, v751);
                if (v759)
                {

                  static RemotePairingError.tunnelError.getter();
                  OUTLINED_FUNCTION_132_0();
                  sub_261F9BCE0();
                  OUTLINED_FUNCTION_171_0();
                  OUTLINED_FUNCTION_267();
                  sub_26203AD4C();
                  v1639 = v1641;
                  sub_261F9D610();
                  OUTLINED_FUNCTION_72_0();
                  swift_allocError();
                  v764 = v759;
                  sub_2620399DC();

                  swift_willThrow();

                  OUTLINED_FUNCTION_76_0();
                  v765(v1578, v1627);
                  __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                  v766 = OUTLINED_FUNCTION_9_12();
                  return v767(v766);
                }

                *&v1641 = sub_26203ABEC();
                *(&v1641 + 1) = v790;
                OUTLINED_FUNCTION_170_0();
                MEMORY[0x266722710](*(v335 + 16), *(v335 + 24));
                MEMORY[0x266722710](10272, 0xE200000000000000);
                v791 = OUTLINED_FUNCTION_133_0();
                v793 = v792(v791);
                MEMORY[0x266722710](v793);

                MEMORY[0x266722710](47, 0xE100000000000000);
                v794 = v1532;
                sub_261FF23A0();
                v795 = OUTLINED_FUNCTION_255();
                OUTLINED_FUNCTION_150_0(v795, v796, v1598);
                if (v300)
                {
                  goto LABEL_393;
                }

                sub_262002A18(v1533);
                OUTLINED_FUNCTION_2_19();
                sub_261FFEE7C(v794, v797);
                v798 = v1611;
                sub_26203A8CC();
                v799 = OUTLINED_FUNCTION_99();
                v800(v799, v798);
                MEMORY[0x266722710](41, 0xE100000000000000);
                sub_261FF1D58();
                v801 = v1592;
                OUTLINED_FUNCTION_248();
                v802 = v1534;
                v803 = OUTLINED_FUNCTION_131();
                v804(v803);
                OUTLINED_FUNCTION_182_0();
                __swift_storeEnumTagSinglePayload(v805, v806, v807, v755);
                sub_261FF1804(v802);
                (*(v801 + 8))(v757, v755);
                v808 = sub_261FF246C();
                v1633 = v809;
                v810 = v1625;
                if (!v808)
                {
LABEL_394:
                  __break(1u);
LABEL_395:
                  __break(1u);
LABEL_396:
                  *&aBlock = OUTLINED_FUNCTION_231();
                  *(&aBlock + 1) = v1475;
                  OUTLINED_FUNCTION_65_1();
                  OUTLINED_FUNCTION_203();
                  sub_261F798CC(v1476);
                  OUTLINED_FUNCTION_143_0();
                  v1477 = OUTLINED_FUNCTION_71_2();
                  (v1610)(v1477);
                  OUTLINED_FUNCTION_170_0();
                  OUTLINED_FUNCTION_51_2();
                  v1478 = 986;
                  goto LABEL_397;
                }

                v811 = v808;

                v812 = v1615;
                (v1628[2].isa)(v1615, v1578, v1627);
                sub_261FF2200(v812);
                OUTLINED_FUNCTION_84();
                sub_261FF24AC();
                OUTLINED_FUNCTION_84();
                v813 = sub_261FF2510();
                v814 = v1633;
                v811(v813);
                sub_261F665E4(v811, v814);
                v815 = OUTLINED_FUNCTION_94();
                v816(v815);
                __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                v440 = *(v810 + 8);
                v438 = v1626;
                v439 = v1629;
                return v440(v438, v439);
              }

              __break(1u);
LABEL_379:
              OUTLINED_FUNCTION_0_27();
              swift_once();
LABEL_76:
              v1611 = qword_28108B620;
              OUTLINED_FUNCTION_46();
              v358 = swift_allocObject();
              v358[2] = v356;
              v358[3] = v357;
              v359 = v358;
              v1614 = v358;
              OUTLINED_FUNCTION_45_2();
              v1630 = swift_allocObject();
              OUTLINED_FUNCTION_86_2(v1630);
              OUTLINED_FUNCTION_45_2();
              v1633 = swift_allocObject();
              LOBYTE(v1633[2].isa) = 8;
              OUTLINED_FUNCTION_46();
              v360 = swift_allocObject();
              *(v360 + 16) = sub_261FFF800;
              *(v360 + 24) = v331;
              v361 = v360;
              v1618 = v360;
              OUTLINED_FUNCTION_46();
              v362 = swift_allocObject();
              *(v362 + 16) = sub_261FFF818;
              *(v362 + 24) = v361;
              v1617 = v362;
              OUTLINED_FUNCTION_45_2();
              v1632 = swift_allocObject();
              LOBYTE(v1632[2].isa) = 32;
              OUTLINED_FUNCTION_45_2();
              v1631 = swift_allocObject();
              *(v1631 + 16) = 8;
              OUTLINED_FUNCTION_46();
              v363 = swift_allocObject();
              v363[2].isa = sub_261FFF528;
              v363[3].isa = v331;
              v364 = v363;
              v1616 = v363;
              OUTLINED_FUNCTION_46();
              v365 = swift_allocObject();
              v1628 = v365;
              v365[2].isa = sub_261FFF818;
              v365[3].isa = v364;
              OUTLINED_FUNCTION_45_2();
              TupleTypeMetadata2 = swift_allocObject();
              LOBYTE(TupleTypeMetadata2[2].isa) = 0;
              OUTLINED_FUNCTION_45_2();
              v1613 = swift_allocObject();
              *(v1613 + 16) = 2;
              OUTLINED_FUNCTION_46();
              v366 = swift_allocObject();
              *(v366 + 16) = sub_261FFF530;
              *(v366 + 24) = v331;
              OUTLINED_FUNCTION_46();
              v367 = swift_allocObject();
              v367[2].isa = sub_261FFF570;
              v367[3].isa = v366;
              v1610 = v367;
              OUTLINED_FUNCTION_45_2();
              v1609 = swift_allocObject();
              *(v1609 + 16) = 0;
              OUTLINED_FUNCTION_45_2();
              v1619 = swift_allocObject();
              v1619[16] = 4;
              OUTLINED_FUNCTION_46();
              v368 = swift_allocObject();
              *(v368 + 16) = sub_261FFF538;
              *(v368 + 24) = v359;
              OUTLINED_FUNCTION_46();
              v369 = swift_allocObject();
              *(v369 + 2) = sub_261FFF5A8;
              *(v369 + 3) = v368;
              OUTLINED_FUNCTION_208();
              swift_retain_n();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA380, &qword_2620447D8);
              v370 = swift_allocObject();
              *(v370 + 16) = xmmword_262044030;
              v371 = v1630;
              *(v370 + 32) = sub_261FFF848;
              *(v370 + 40) = v371;
              v372 = v1633;
              *(v370 + 48) = sub_261FFF848;
              *(v370 + 56) = v372;
              *(v370 + 64) = sub_261FFF7F0;
              *(v370 + 72) = v362;
              v373 = v1632;
              *(v370 + 80) = sub_261FFF848;
              *(v370 + 88) = v373;
              v374 = v1631;
              *(v370 + 96) = sub_261FFF848;
              *(v370 + 104) = v374;
              v375 = v1628;
              *(v370 + 112) = sub_261FFF7F0;
              *(v370 + 120) = v375;
              v376 = TupleTypeMetadata2;
              *(v370 + 128) = sub_261FFF848;
              *(v370 + 136) = v376;
              v377 = v1613;
              *(v370 + 144) = sub_261FFF848;
              *(v370 + 152) = v377;
              *(v370 + 160) = sub_261FFF5A0;
              *(v370 + 168) = v367;
              v378 = v1609;
              *(v370 + 176) = sub_261FFF848;
              *(v370 + 184) = v378;
              v379 = v1619;
              *(v370 + 192) = sub_261FFF848;
              *(v370 + 200) = v379;
              *(v370 + 208) = sub_261FFF5D8;
              *(v370 + 216) = v369;
              OUTLINED_FUNCTION_208();
              swift_retain_n();
              swift_setDeallocating();
              swift_retain_n();

              v1607 = v366;

              v1606 = v368;

              sub_261FB9814();
              if (os_log_type_enabled(v1611, v1612))
              {
                v1605 = v369;
                v1620 = v220;
                OUTLINED_FUNCTION_30();
                v380 = swift_slowAlloc();
                OUTLINED_FUNCTION_56();
                *&v1604 = swift_slowAlloc();
                *&v1641 = v1604;
                OUTLINED_FUNCTION_120_0(1026);

                *(v380 + 3) = 8;

                v381 = sub_261F7C884();
                sub_261F67FE4(v381, v382, &v1641);
                OUTLINED_FUNCTION_154_0();

                *(v380 + 4) = v378;
                v335 = 2;
                OUTLINED_FUNCTION_294();

                *(v380 + 12) = 32;

                *(v380 + 13) = 8;

                v383 = v1536;
                sub_261F7A074(v1536);
                v384 = OUTLINED_FUNCTION_211();
                v385 = v1623;
                OUTLINED_FUNCTION_150_0(v384, v386, v1623);
                if (v300)
                {
LABEL_391:
                  __break(1u);
                  goto LABEL_392;
                }

                v387 = v1621;
                (*(v1621 + 40))(v385, v1621);
                v388 = OUTLINED_FUNCTION_67_2();
                (*(v1592 + 8))(v388, v385);
                v389 = OUTLINED_FUNCTION_131();
                sub_261F67FE4(v389, v390, v391);
                OUTLINED_FUNCTION_67_2();

                *(v380 + 14) = v383;
                OUTLINED_FUNCTION_294();

                *(v380 + 22) = 0;

                *(v380 + 23) = 2;

                v335 = v1535;
                sub_261FF23A0();
                v392 = v1598;
                OUTLINED_FUNCTION_150_0(v335, 1, v1598);
                v393 = v385;
                v394 = v1625;
                if (v300)
                {
LABEL_392:
                  __break(1u);
LABEL_393:
                  __break(1u);
                  goto LABEL_394;
                }

                v395 = *(v335 + *(v392 + 24));
                OUTLINED_FUNCTION_2_19();
                sub_261FFEE7C(v335, v396);
                OUTLINED_FUNCTION_294();
                *(v380 + 24) = v395;

                *(v380 + 26) = 0;

                *(v380 + 27) = 4;

                v397 = (*(v387 + 32))(v393, v387);

                *(v380 + 28) = v397;

                _os_log_impl(&dword_261F5B000, v1611, v1612, "%{public}s: Starting packet transfer on %s, MTU=%hu, maxPendingPackets=%u", v380, 0x20u);
                OUTLINED_FUNCTION_230();
                v398 = OUTLINED_FUNCTION_29_7();
                MEMORY[0x266724180](v398);
                OUTLINED_FUNCTION_26();
                MEMORY[0x266724180]();
              }

              else
              {

                v394 = v1625;
              }

              v782 = v1615;
              v783 = v1553;
              *v1615 = v1608;
              swift_storeEnumTagMultiPayload();
              sub_261FF2200(v782);
              v784 = v1552;
              v785 = v1629;
              swift_storeEnumTagMultiPayload();
              v786 = v1622;
              sub_261F6E52C(v784);
              if (v786)
              {
                v787 = *(v394 + 8);
                v788 = OUTLINED_FUNCTION_42_3();
                v787(v788);
                __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                v789 = OUTLINED_FUNCTION_122();
                return (v787)(v789);
              }

              else
              {
                v824 = *(v394 + 8);
                v824(v784, v785);
                sub_261F79740(&aBlock, v783);
                OUTLINED_FUNCTION_11_0();
                swift_storeEnumTagMultiPayload();
                sub_261F6E52C(v783);
                v825 = OUTLINED_FUNCTION_11_0();
                (v824)(v825);
                __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                v826 = OUTLINED_FUNCTION_122();
                return (v824)(v826);
              }

            case 5u:
              v1620 = v220;
              v433 = v1585;
              OUTLINED_FUNCTION_63_2();
              v434();
              v435 = *v433;
              v436 = *(v433 + 8);
              v437 = *(v433 + 16);
              OUTLINED_FUNCTION_100();
              if (swift_getEnumCaseMultiPayload() != 1)
              {
                v1607 = v437;
                v1608 = v436;
                v1611 = v435;
                v595 = v1628;
                v596 = v1565;
                v597 = OUTLINED_FUNCTION_175_0();
                v598(v597);
                v599 = OUTLINED_FUNCTION_234(0, v596);
                v600 = v595[1].isa;
                v600(v596, v303);
                if (v599)
                {

                  (v1608)(v601);
                  v602 = v1618;
                  v603 = v1629;
                  swift_storeEnumTagMultiPayload();
                  sub_261F6D760();

                  v604 = *(v1625 + 8);
                  v604(v602, v603);
                  v604(v1626, v603);
                  v605 = OUTLINED_FUNCTION_100();
                  return (v600)(v605);
                }

                OUTLINED_FUNCTION_100();
                if (swift_getEnumCaseMultiPayload() == 12)
                {
                  (v1608)();

                  v220 = v1629;
                  (*(v1625 + 8))(v1626, v1629);
LABEL_226:
                  v834 = v1621;
                  LODWORD(v1627) = sub_26203A4AC();
                  if (qword_28108B618 != -1)
                  {
                    OUTLINED_FUNCTION_0_27();
                    swift_once();
                  }

                  v1628 = qword_28108B620;
                  v835 = v1630;
                  (v1630)(v1609, v1632, v220);
                  OUTLINED_FUNCTION_206();
                  v835();
                  v836 = swift_allocObject();
                  v836[2].isa = v1623;
                  v836[3].isa = v834;
                  v837 = v836;
                  v1633 = v836;
                  OUTLINED_FUNCTION_206();
                  v838();
                  OUTLINED_FUNCTION_45_2();
                  v839 = swift_allocObject();
                  *(v839 + 16) = 34;
                  OUTLINED_FUNCTION_45_2();
                  v840 = swift_allocObject();
                  *(v840 + 16) = 8;
                  OUTLINED_FUNCTION_46();
                  v841 = swift_allocObject();
                  v842 = v1634;
                  *(v841 + 16) = sub_261FFF800;
                  *(v841 + 24) = v842;
                  OUTLINED_FUNCTION_46();
                  v843 = swift_allocObject();
                  v843[2].isa = sub_261FFF818;
                  v843[3].isa = v841;
                  v844 = v843;
                  v1632 = v843;
                  OUTLINED_FUNCTION_45_2();
                  v845 = swift_allocObject();
                  *(v845 + 16) = 34;
                  OUTLINED_FUNCTION_45_2();
                  v1619 = swift_allocObject();
                  v1619[16] = 8;
                  OUTLINED_FUNCTION_46();
                  v846 = swift_allocObject();
                  v846[2].isa = sub_261FFF454;
                  v846[3].isa = v837;
                  OUTLINED_FUNCTION_46();
                  v847 = swift_allocObject();
                  *(v847 + 16) = sub_261FFF818;
                  *(v847 + 24) = v846;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA380, &qword_2620447D8);
                  v848 = swift_allocObject();
                  *(v848 + 16) = xmmword_262044040;
                  *(v848 + 32) = sub_261FFF848;
                  *(v848 + 40) = v839;
                  *(v848 + 48) = sub_261FFF848;
                  *(v848 + 56) = v840;
                  *(v848 + 64) = sub_261FFF7F0;
                  *(v848 + 72) = v844;
                  *(v848 + 80) = sub_261FFF848;
                  *(v848 + 88) = v845;
                  v849 = v1619;
                  *(v848 + 96) = sub_261FFF848;
                  *(v848 + 104) = v849;
                  *(v848 + 112) = sub_261FFF7F0;
                  *(v848 + 120) = v847;
                  swift_setDeallocating();
                  OUTLINED_FUNCTION_290();
                  v1626 = v841;

                  TupleTypeMetadata2 = v846;

                  v1621 = v845;

                  v1623 = v847;

                  sub_261FB9814();
                  v850 = v1627;
                  if (os_log_type_enabled(v1628, v1627))
                  {
                    OUTLINED_FUNCTION_57_1();
                    swift_slowAlloc();
                    OUTLINED_FUNCTION_57_2();
                    v1617 = swift_slowAlloc();
                    OUTLINED_FUNCTION_261(v1617);
                    *v839 = v851;
                    *(v839 + 2) = 34;

                    *(v839 + 3) = 8;

                    OUTLINED_FUNCTION_153_0();
                    sub_261F7C884();
                    OUTLINED_FUNCTION_74_2();
                    sub_261F67FE4(v852, v853, v854);
                    OUTLINED_FUNCTION_65();

                    *(v839 + 4) = v839;
                    OUTLINED_FUNCTION_208();

                    *(v839 + 12) = 34;

                    *(v839 + 13) = 8;

                    OUTLINED_FUNCTION_63_2();
                    v855();
                    OUTLINED_FUNCTION_135();
                    sub_26203A20C();
                    OUTLINED_FUNCTION_74_2();
                    sub_261F67FE4(v856, v857, v858);
                    OUTLINED_FUNCTION_65();

                    *(v839 + 14) = v839;

                    OUTLINED_FUNCTION_52_2();
                    v859 = OUTLINED_FUNCTION_275();
                    v860(v859);
                    _os_log_impl(&dword_261F5B000, v1628, v850, "%{public}s: ignoring event %{public}s as the endpoint is already in state failed", v839, 0x16u);
                    OUTLINED_FUNCTION_230();
                    v861 = OUTLINED_FUNCTION_29_7();
                    MEMORY[0x266724180](v861);
                    v862 = OUTLINED_FUNCTION_24_5();
                    return MEMORY[0x266724180](v862);
                  }

                  OUTLINED_FUNCTION_223();

                  OUTLINED_FUNCTION_52_2();
                  v438 = v1614;
                  goto LABEL_336;
                }

                v303 = v1627;
                goto LABEL_220;
              }

              *&aBlock = v435;
              *(&aBlock + 1) = v436;
              *&v1645 = v437;
              sub_261F7AF14();

              OUTLINED_FUNCTION_52_2();
              v438 = OUTLINED_FUNCTION_123();
              return v440(v438, v439);
            case 6u:
              v480 = v1626;
              v481 = v1629;
              OUTLINED_FUNCTION_63_2();
              v482();
              OUTLINED_FUNCTION_72_2();
              if (swift_getEnumCaseMultiPayload() == 1)
              {

                v483 = OUTLINED_FUNCTION_118_0();
                sub_261F797BC(v483, v484);
                v486 = *(&v1645 + 1);
                v485 = v1646;
                __swift_project_boxed_opaque_existential_0Tm(&aBlock, *(&v1645 + 1));
                OUTLINED_FUNCTION_63();
                v487 = swift_allocObject();
                OUTLINED_FUNCTION_262(v487);
                swift_weakInit();
                v488 = OUTLINED_FUNCTION_85_1();
                sub_261F79740(v488, v489);
                v490 = OUTLINED_FUNCTION_167(&unk_287490978);
                *(OUTLINED_FUNCTION_28_6(v490) + 32) = v220;
                sub_261F797BC(&v1641, v490 + 40);
                v491 = *(v485 + 32);

                v491(sub_261F7972C, v490, v486, v485);

                OUTLINED_FUNCTION_30_5(&aBlock);
                v438 = v480;
                v439 = v481;
                return v440(v438, v439);
              }

              v1620 = v220;
              v606 = v1628;
              OUTLINED_FUNCTION_248();
              v607 = v1564;
              OUTLINED_FUNCTION_147();
              v608();
              v609 = OUTLINED_FUNCTION_234(0, v607);
              v610 = v303;
              v611 = v606[1].isa;
              v612 = OUTLINED_FUNCTION_35_3();
              v611(v612);
              if (v609)
              {

                __swift_destroy_boxed_opaque_existential_0Tm(v1604);
                v613 = OUTLINED_FUNCTION_17_8();
                v615 = v481;
LABEL_150:
                v614(v613, v615);
                return (v611)(v1633, v610);
              }

              v744 = v1604;
              goto LABEL_196;
            case 7u:
              v492 = v1626;
              v493 = v1629;
              OUTLINED_FUNCTION_63_2();
              v494();
              OUTLINED_FUNCTION_72_2();
              if (swift_getEnumCaseMultiPayload() == 1)
              {

                v495 = OUTLINED_FUNCTION_118_0();
                sub_261F797BC(v495, v496);
                sub_261F79C64();
                __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);

                OUTLINED_FUNCTION_52_2();
                v438 = v492;
LABEL_110:
                v439 = v493;
                return v440(v438, v439);
              }

              v1620 = v220;

              v616 = v1628;
              OUTLINED_FUNCTION_248();
              v617 = v1566;
              OUTLINED_FUNCTION_147();
              v618();
              v619 = OUTLINED_FUNCTION_234(0, v617);
              v610 = v303;
              v611 = v616[1].isa;
              v620 = OUTLINED_FUNCTION_161_0();
              v611(v620);
              if (v619)
              {

                __swift_destroy_boxed_opaque_existential_0Tm(v1605);
                v613 = OUTLINED_FUNCTION_17_8();
                v615 = v493;
                goto LABEL_150;
              }

              v744 = v1605;
LABEL_196:
              __swift_destroy_boxed_opaque_existential_0Tm(v744);
              v303 = v610;
LABEL_220:
              v220 = v1620;
LABEL_221:
              v1620 = v220;
              OUTLINED_FUNCTION_72_2();
              v827 = swift_getEnumCaseMultiPayload();
              if (v827 == 1)
              {
                v828 = v1626;
                v220 = v1629;
                if (swift_getEnumCaseMultiPayload() != 12)
                {
                  goto LABEL_287;
                }

LABEL_236:
                v867 = *(v828 + 40);
                sub_261F797BC(v828, v1647);
                goto LABEL_237;
              }

              v220 = v1629;
              v828 = v1626;
              v829 = v1618;
              if (v827 != 2)
              {
                if (v827 != 11)
                {
                  if (v827 == 12)
                  {
                    v830 = OUTLINED_FUNCTION_161_0();
                    v831(v830);
                    v832 = OUTLINED_FUNCTION_54_2();
                    v833(v832, v303);
                    goto LABEL_226;
                  }

LABEL_287:
                  OUTLINED_FUNCTION_161_0();
                  v1179 = swift_getEnumCaseMultiPayload();
                  switch(v1179)
                  {
                    case 11:

                      v1180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA370, &qword_2620447C8);
                      v303 = v1616;
                      v324 = v1616[4].isa;
                      v221 = v1617;
                      (v324)(v1600, v828 + *(v1180 + 48), v1617);
                      LODWORD(v1629) = sub_26203A4AC();
                      if (qword_28108B618 == -1)
                      {
                        goto LABEL_289;
                      }

                      goto LABEL_375;
                    case 12:

                      swift_willThrow();
                      __swift_destroy_boxed_opaque_existential_0Tm(v828);
                      goto LABEL_299;
                    case 13:

                      swift_willThrow();
LABEL_299:
                      v438 = OUTLINED_FUNCTION_54_2();
                      goto LABEL_300;
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                      goto LABEL_293;
                    case 18:

                      sub_261FF97CC();
                      v438 = OUTLINED_FUNCTION_54_2();
                      v439 = v303;
                      return v440(v438, v439);
                    default:
                      if (v1179 == 5)
                      {
                        (*(v828 + 8))();

                        v1610 = v1628;
                        TupleTypeMetadata2 = v303;
                      }

LABEL_293:
                      (v1610[1].isa)(v1633, TupleTypeMetadata2);
                      LODWORD(v1612) = sub_26203A49C();
                      if (qword_28108B618 == -1)
                      {
                        goto LABEL_294;
                      }

                      goto LABEL_373;
                  }
                }

                OUTLINED_FUNCTION_161_0();
                if (swift_getEnumCaseMultiPayload() != 12)
                {
                  goto LABEL_287;
                }

                goto LABEL_236;
              }

              OUTLINED_FUNCTION_147();
              v863();
              v864 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA348, &qword_262044798) + 48);
              OUTLINED_FUNCTION_161_0();
              v865 = swift_getEnumCaseMultiPayload();
              if (v865 != 11)
              {
                if (v865 != 12)
                {
                  v1126 = OUTLINED_FUNCTION_216();
                  v1127(v1126);
                  v303 = v1627;
                  goto LABEL_287;
                }

                OUTLINED_FUNCTION_206();
                OUTLINED_FUNCTION_63_2();
                v866();
                v867 = *(v829 + 40);
                sub_261F797BC(v829, v1647);
                v868 = OUTLINED_FUNCTION_216();
                v869(v868);
                v870 = OUTLINED_FUNCTION_161_0();
                v871(v870);
LABEL_237:
                OUTLINED_FUNCTION_277();
                v872 = OUTLINED_FUNCTION_72_2();
                v1628 = v873;
                v1610 = v874;
                (v874)(v872);
                LODWORD(v1611) = sub_26203A4AC();
                if (qword_28108B618 != -1)
                {
                  OUTLINED_FUNCTION_0_27();
                  swift_once();
                }

                v1633 = qword_28108B620;
                OUTLINED_FUNCTION_291();
                v875 = OUTLINED_FUNCTION_85_1();
                sub_261F79740(v875, v876);
                OUTLINED_FUNCTION_14_1();
                swift_allocObject();
                v877 = OUTLINED_FUNCTION_116_0();
                v879 = v878;
                TupleTypeMetadata2 = v878;
                sub_261F797BC(v877, v880);
                OUTLINED_FUNCTION_63();
                v881 = swift_allocObject();
                *(v881 + 16) = v867;
                v1625 = v881;
                OUTLINED_FUNCTION_45_2();
                v882 = swift_allocObject();
                v883 = OUTLINED_FUNCTION_86_2(v882);
                v1605 = v883;
                OUTLINED_FUNCTION_45_2();
                v1626 = swift_allocObject();
                v1626[16] = 8;
                OUTLINED_FUNCTION_46();
                v884 = swift_allocObject();
                v1614 = v867;
                v885 = v1634;
                *(v884 + 16) = sub_261FFF800;
                *(v884 + 24) = v885;
                v886 = v884;
                v1618 = v884;
                OUTLINED_FUNCTION_46();
                v887 = swift_allocObject();
                v1632 = v887;
                v887[2].isa = sub_261FFF818;
                v887[3].isa = v886;
                OUTLINED_FUNCTION_45_2();
                v1631 = swift_allocObject();
                *(v1631 + 16) = 32;
                OUTLINED_FUNCTION_45_2();
                v1630 = swift_allocObject();
                LOBYTE(v1630[2].isa) = 8;
                OUTLINED_FUNCTION_46();
                v888 = swift_allocObject();
                *(v888 + 16) = sub_261FFF038;
                *(v888 + 24) = v879;
                OUTLINED_FUNCTION_46();
                v889 = swift_allocObject();
                *(v889 + 16) = sub_261FFF818;
                *(v889 + 24) = v888;
                OUTLINED_FUNCTION_45_2();
                v1613 = swift_allocObject();
                *(v1613 + 16) = 32;
                OUTLINED_FUNCTION_45_2();
                v890 = swift_allocObject();
                v890[16] = 8;
                v1619 = v890;
                OUTLINED_FUNCTION_46();
                v891 = swift_allocObject();
                *(v891 + 16) = sub_261FFF054;
                *(v891 + 24) = v881;
                OUTLINED_FUNCTION_46();
                v892 = swift_allocObject();
                *(v892 + 16) = sub_261FFF818;
                *(v892 + 24) = v891;
                v1629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA380, &qword_2620447D8);
                v893 = OUTLINED_FUNCTION_289(v1629);
                v1604 = xmmword_262044050;
                *(v893 + 16) = xmmword_262044050;
                *(v893 + 32) = sub_261FFF848;
                *(v893 + 40) = v883;
                v894 = v1626;
                *(v893 + 48) = sub_261FFF848;
                *(v893 + 56) = v894;
                v895 = v1632;
                *(v893 + 64) = sub_261FFF7F0;
                *(v893 + 72) = v895;
                v896 = v1631;
                *(v893 + 80) = sub_261FFF848;
                *(v893 + 88) = v896;
                v897 = v1630;
                *(v893 + 96) = sub_261FFF848;
                *(v893 + 104) = v897;
                *(v893 + 112) = sub_261FFF7F0;
                *(v893 + 120) = v889;
                v898 = v1613;
                *(v893 + 128) = sub_261FFF848;
                *(v893 + 136) = v898;
                *(v893 + 144) = sub_261FFF848;
                *(v893 + 152) = v890;
                *(v893 + 160) = sub_261FFF7F0;
                *(v893 + 168) = v892;
                swift_setDeallocating();

                v899 = OUTLINED_FUNCTION_245();

                v900 = v890;
                v901 = v1605;

                v1607 = v888;

                v1608 = v891;

                v1606 = v889;

                v1609 = v892;

                sub_261FB9814();
                v902 = v1611;
                if (os_log_type_enabled(v1633, v1611))
                {
                  OUTLINED_FUNCTION_30();
                  v903 = swift_slowAlloc();
                  OUTLINED_FUNCTION_101();
                  *&v1638[0] = swift_slowAlloc();
                  *v903 = 770;
                  *(v903 + 2) = 34;

                  *(v903 + 3) = 8;

                  v904 = v1634;
                  v905 = sub_261F7C884();
                  OUTLINED_FUNCTION_218(v905, v906);
                  OUTLINED_FUNCTION_73_2();

                  *(v903 + 4) = v902;

                  *(v903 + 12) = 32;

                  *(v903 + 13) = 8;

                  sub_261F79740(&v1641, &v1639);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
                  v907 = sub_26203A20C();
                  OUTLINED_FUNCTION_218(v907, v908);
                  OUTLINED_FUNCTION_70();

                  *(v903 + 14) = v901;

                  __swift_destroy_boxed_opaque_existential_0Tm(&v1641);
                  *(v903 + 22) = 32;

                  *(v903 + 23) = 8;

                  v890 = v1614;
                  *&v1639 = v1614;
                  v909 = v1614;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
                  v910 = sub_26203A20C();
                  OUTLINED_FUNCTION_218(v910, v911);
                  OUTLINED_FUNCTION_70();

                  *(v903 + 24) = v901;

                  OUTLINED_FUNCTION_141_0();
                  _os_log_impl(v912, v913, v914, v915, v903, 0x20u);
                  swift_arrayDestroy();
                  OUTLINED_FUNCTION_26();
                  MEMORY[0x266724180]();
                  v916 = OUTLINED_FUNCTION_16_3();
                  MEMORY[0x266724180](v916);
                  v335 = v904;
                }

                else
                {

                  v335 = v1634;
                  OUTLINED_FUNCTION_201();

                  __swift_destroy_boxed_opaque_existential_0Tm(&v1641);
                }

                sub_261F798CC(v1612);
                LODWORD(v1606) = sub_261FF6158(v1627);
                v917 = v1606;
                v918 = OUTLINED_FUNCTION_71_2();
                (v1610)(v918);
                if (v917 == 2)
                {
                  goto LABEL_396;
                }

                __swift_project_boxed_opaque_existential_0Tm(v1647, v1648);
                v919 = OUTLINED_FUNCTION_18_5();
                v920(v919);
                OUTLINED_FUNCTION_22_6(v1647);
                v921 = OUTLINED_FUNCTION_18_5();
                v922(v921);
                v923 = aBlock;
                OUTLINED_FUNCTION_242();
                OUTLINED_FUNCTION_36_1();
                swift_beginAccess();
                v924 = OUTLINED_FUNCTION_199();
                v1632 = *(&v923 + 1);
                sub_261FF6864(v924, *(&v923 + 1), v925);
                swift_endAccess();
                v926 = *(&v1645 + 1);
                sub_261F66E60(&aBlock, &qword_27FEFA340, &qword_262044790);
                v1630 = v923;
                if (v926)
                {
                  LODWORD(v1619) = sub_26203A4AC();
                  OUTLINED_FUNCTION_291();
                  v927 = OUTLINED_FUNCTION_85_1();
                  sub_261F79740(v927, v928);
                  OUTLINED_FUNCTION_14_1();
                  swift_allocObject();
                  v929 = OUTLINED_FUNCTION_116_0();
                  v931 = v930;
                  v1626 = v930;
                  sub_261F797BC(v929, v932);
                  OUTLINED_FUNCTION_46();
                  v933 = swift_allocObject();
                  *(v933 + 16) = sub_261FFF17C;
                  *(v933 + 24) = v931;
                  v934 = v933;
                  v1625 = v933;
                  OUTLINED_FUNCTION_45_2();
                  v935 = swift_allocObject();
                  OUTLINED_FUNCTION_86_2(v935);
                  OUTLINED_FUNCTION_45_2();
                  v936 = swift_allocObject();
                  *(v936 + 16) = 8;
                  OUTLINED_FUNCTION_46();
                  v937 = swift_allocObject();
                  v937[2].isa = sub_261FFF800;
                  v937[3].isa = v335;
                  v938 = v937;
                  TupleTypeMetadata2 = v937;
                  OUTLINED_FUNCTION_46();
                  v939 = swift_allocObject();
                  *(v939 + 16) = sub_261FFF818;
                  *(v939 + 24) = v938;
                  OUTLINED_FUNCTION_45_2();
                  v1631 = swift_allocObject();
                  *(v1631 + 16) = 32;
                  OUTLINED_FUNCTION_45_2();
                  v1612 = swift_allocObject();
                  *(v1612 + 16) = 8;
                  OUTLINED_FUNCTION_46();
                  v940 = swift_allocObject();
                  *(v940 + 16) = sub_261FFF81C;
                  *(v940 + 24) = v934;
                  OUTLINED_FUNCTION_46();
                  v941 = swift_allocObject();
                  *(v941 + 16) = sub_261FFF818;
                  *(v941 + 24) = v940;
                  v942 = OUTLINED_FUNCTION_221();
                  *(v942 + 16) = xmmword_262044040;
                  *(v942 + 32) = sub_261FFF848;
                  *(v942 + 40) = v935;
                  *(v942 + 48) = sub_261FFF848;
                  *(v942 + 56) = v936;
                  *(v942 + 64) = sub_261FFF7F0;
                  *(v942 + 72) = v939;
                  v943 = v1631;
                  *(v942 + 80) = sub_261FFF848;
                  *(v942 + 88) = v943;
                  v944 = v1612;
                  *(v942 + 96) = sub_261FFF848;
                  *(v942 + 104) = v944;
                  *(v942 + 112) = sub_261FFF7F0;
                  *(v942 + 120) = v941;
                  swift_setDeallocating();
                  swift_retain_n();

                  v1613 = v940;

                  v1618 = v941;

                  sub_261FB9814();
                  if (OUTLINED_FUNCTION_293(v1619))
                  {
                    OUTLINED_FUNCTION_57_1();
                    v945 = swift_slowAlloc();
                    OUTLINED_FUNCTION_56();
                    v1611 = swift_slowAlloc();
                    *&v1638[0] = v1611;
                    OUTLINED_FUNCTION_166_0(514);
                    *(v945 + 3) = 8;

                    v335 = v1634;
                    v946 = v1634;
                    v947 = sub_261F7C884();
                    OUTLINED_FUNCTION_218(v947, v948);
                    OUTLINED_FUNCTION_73_2();

                    *(v945 + 4) = v936;
                    OUTLINED_FUNCTION_201();

                    *(v945 + 12) = 32;

                    *(v945 + 13) = 8;

                    __swift_project_boxed_opaque_existential_0Tm(&v1641, *(&v1642 + 1));
                    v949 = OUTLINED_FUNCTION_6_12();
                    v950(v949);
                    OUTLINED_FUNCTION_91_0();
                    OUTLINED_FUNCTION_185_0();
                    v951 = OUTLINED_FUNCTION_42_3();
                    sub_261F67FE4(v951, v952, v953);
                    OUTLINED_FUNCTION_67_2();

                    *(v945 + 14) = v946;

                    __swift_destroy_boxed_opaque_existential_0Tm(&v1641);
                    OUTLINED_FUNCTION_141_0();
                    _os_log_impl(v954, v955, v956, v957, v945, 0x16u);
                    OUTLINED_FUNCTION_230();
                    v958 = OUTLINED_FUNCTION_29_7();
                    MEMORY[0x266724180](v958);
                    OUTLINED_FUNCTION_26();
                    MEMORY[0x266724180]();
                  }

                  else
                  {

                    v335 = v1634;
                    OUTLINED_FUNCTION_201();

                    __swift_destroy_boxed_opaque_existential_0Tm(&v1641);
                  }

                  v890 = v1614;
                }

                OUTLINED_FUNCTION_242();
                OUTLINED_FUNCTION_36_1();
                swift_beginAccess();
                v959 = OUTLINED_FUNCTION_199();
                sub_261FF6998(v959, v1632, v960);
                swift_endAccess();
                v961 = *(&v1645 + 1);
                sub_261F66E60(&aBlock, &qword_27FEFA288, &qword_262044098);
                if (v961)
                {
                  LODWORD(TupleTypeMetadata2) = sub_26203A4AC();
                  OUTLINED_FUNCTION_291();
                  v962 = OUTLINED_FUNCTION_85_1();
                  sub_261F79740(v962, v963);
                  OUTLINED_FUNCTION_14_1();
                  swift_allocObject();
                  v964 = OUTLINED_FUNCTION_116_0();
                  v966 = v965;
                  v1631 = v965;
                  sub_261F797BC(v964, v967);
                  OUTLINED_FUNCTION_46();
                  v968 = swift_allocObject();
                  *(v968 + 16) = sub_261FFF7FC;
                  *(v968 + 24) = v966;
                  v969 = v968;
                  v1626 = v968;
                  OUTLINED_FUNCTION_45_2();
                  v970 = swift_allocObject();
                  v971 = OUTLINED_FUNCTION_86_2(v970);
                  OUTLINED_FUNCTION_45_2();
                  v972 = swift_allocObject();
                  *(v972 + 16) = 8;
                  v973 = v972;
                  OUTLINED_FUNCTION_46();
                  v974 = swift_allocObject();
                  *(v974 + 16) = sub_261FFF800;
                  *(v974 + 24) = v335;
                  OUTLINED_FUNCTION_46();
                  v975 = swift_allocObject();
                  *(v975 + 16) = sub_261FFF818;
                  *(v975 + 24) = v974;
                  OUTLINED_FUNCTION_45_2();
                  v1611 = swift_allocObject();
                  LOBYTE(v1611[2].isa) = 32;
                  OUTLINED_FUNCTION_45_2();
                  v1625 = swift_allocObject();
                  *(v1625 + 16) = 8;
                  OUTLINED_FUNCTION_46();
                  v976 = swift_allocObject();
                  *(v976 + 16) = sub_261FFF81C;
                  *(v976 + 24) = v969;
                  OUTLINED_FUNCTION_46();
                  v977 = swift_allocObject();
                  *(v977 + 16) = sub_261FFF818;
                  *(v977 + 24) = v976;
                  v978 = OUTLINED_FUNCTION_221();
                  *(v978 + 16) = xmmword_262044040;
                  *(v978 + 32) = sub_261FFF848;
                  *(v978 + 40) = v971;
                  *(v978 + 48) = sub_261FFF848;
                  *(v978 + 56) = v973;
                  v979 = v973;
                  *(v978 + 64) = sub_261FFF7F0;
                  *(v978 + 72) = v975;
                  v980 = v1611;
                  *(v978 + 80) = sub_261FFF848;
                  *(v978 + 88) = v980;
                  v981 = v1625;
                  *(v978 + 96) = sub_261FFF848;
                  *(v978 + 104) = v981;
                  *(v978 + 112) = sub_261FFF7F0;
                  *(v978 + 120) = v977;
                  swift_setDeallocating();
                  OUTLINED_FUNCTION_290();

                  v1619 = v974;

                  v1618 = v976;

                  v1612 = v975;

                  v1613 = v977;

                  sub_261FB9814();
                  if (OUTLINED_FUNCTION_293(TupleTypeMetadata2))
                  {
                    OUTLINED_FUNCTION_57_1();
                    v982 = swift_slowAlloc();
                    OUTLINED_FUNCTION_56();
                    v1609 = swift_slowAlloc();
                    *&v1638[0] = v1609;
                    OUTLINED_FUNCTION_166_0(514);
                    *(v982 + 3) = 8;

                    v335 = v1634;
                    v983 = v1634;
                    v984 = sub_261F7C884();
                    OUTLINED_FUNCTION_218(v984, v985);
                    OUTLINED_FUNCTION_73_2();

                    *(v982 + 4) = v979;
                    OUTLINED_FUNCTION_201();

                    *(v982 + 12) = 32;

                    *(v982 + 13) = 8;

                    __swift_project_boxed_opaque_existential_0Tm(&v1641, *(&v1642 + 1));
                    v986 = OUTLINED_FUNCTION_6_12();
                    v987(v986);
                    OUTLINED_FUNCTION_91_0();
                    OUTLINED_FUNCTION_185_0();
                    v988 = OUTLINED_FUNCTION_42_3();
                    sub_261F67FE4(v988, v989, v990);
                    OUTLINED_FUNCTION_67_2();

                    *(v982 + 14) = v983;

                    __swift_destroy_boxed_opaque_existential_0Tm(&v1641);
                    OUTLINED_FUNCTION_141_0();
                    _os_log_impl(v991, v992, v993, v994, v982, 0x16u);
                    OUTLINED_FUNCTION_230();
                    v995 = OUTLINED_FUNCTION_29_7();
                    MEMORY[0x266724180](v995);
                    OUTLINED_FUNCTION_26();
                    MEMORY[0x266724180]();
                  }

                  else
                  {

                    v996 = v1634;
                    OUTLINED_FUNCTION_208();

                    __swift_destroy_boxed_opaque_existential_0Tm(&v1641);
                    v335 = v996;
                  }

                  v890 = v1614;
                }

                OUTLINED_FUNCTION_242();
                OUTLINED_FUNCTION_36_1();
                swift_beginAccess();
                v997 = OUTLINED_FUNCTION_199();
                sub_261FF6864(v997, v1632, v998);
                swift_endAccess();
                v999 = *(&v1645 + 1);
                sub_261F66E60(&aBlock, &qword_27FEFA340, &qword_262044790);
                if (v999)
                {
                  LODWORD(v1612) = sub_26203A4AC();
                  OUTLINED_FUNCTION_291();
                  v1000 = OUTLINED_FUNCTION_85_1();
                  sub_261F79740(v1000, v1001);
                  OUTLINED_FUNCTION_14_1();
                  swift_allocObject();
                  v1002 = OUTLINED_FUNCTION_116_0();
                  v1004 = v1003;
                  v1619 = v1003;
                  sub_261F797BC(v1002, v1005);
                  OUTLINED_FUNCTION_46();
                  v1006 = swift_allocObject();
                  *(v1006 + 16) = sub_261FFF7FC;
                  *(v1006 + 24) = v1004;
                  v1007 = v1006;
                  v1626 = v1006;
                  OUTLINED_FUNCTION_45_2();
                  v1008 = swift_allocObject();
                  OUTLINED_FUNCTION_86_2(v1008);
                  OUTLINED_FUNCTION_45_2();
                  v1618 = swift_allocObject();
                  *(v1618 + 16) = 8;
                  OUTLINED_FUNCTION_46();
                  v1009 = swift_allocObject();
                  v1009[2].isa = sub_261FFF800;
                  v1009[3].isa = v335;
                  v1010 = v1009;
                  TupleTypeMetadata2 = v1009;
                  OUTLINED_FUNCTION_46();
                  v1011 = swift_allocObject();
                  *(v1011 + 16) = sub_261FFF818;
                  *(v1011 + 24) = v1010;
                  v1012 = v1011;
                  v1607 = v1011;
                  OUTLINED_FUNCTION_45_2();
                  v1630 = swift_allocObject();
                  LOBYTE(v1630[2].isa) = 32;
                  OUTLINED_FUNCTION_45_2();
                  v1613 = swift_allocObject();
                  *(v1613 + 16) = 8;
                  OUTLINED_FUNCTION_46();
                  v1013 = v335;
                  v1014 = swift_allocObject();
                  *(v1014 + 16) = sub_261FFF15C;
                  *(v1014 + 24) = v1007;
                  OUTLINED_FUNCTION_46();
                  v1015 = swift_allocObject();
                  *(v1015 + 16) = sub_261FFF818;
                  *(v1015 + 24) = v1014;
                  OUTLINED_FUNCTION_45_2();
                  v1631 = swift_allocObject();
                  *(v1631 + 16) = 0;
                  OUTLINED_FUNCTION_45_2();
                  v1625 = swift_allocObject();
                  *(v1625 + 16) = 8;
                  OUTLINED_FUNCTION_46();
                  v1016 = swift_allocObject();
                  v1016[2].isa = sub_261FFF164;
                  v1016[3].isa = v1013;
                  OUTLINED_FUNCTION_46();
                  v1017 = swift_allocObject();
                  *(v1017 + 16) = sub_261FFF16C;
                  *(v1017 + 24) = v1016;
                  v1018 = OUTLINED_FUNCTION_289(v1629);
                  *(v1018 + 16) = v1604;
                  *(v1018 + 32) = sub_261FFF848;
                  *(v1018 + 40) = v1008;
                  v1019 = v1618;
                  *(v1018 + 48) = sub_261FFF848;
                  *(v1018 + 56) = v1019;
                  *(v1018 + 64) = sub_261FFF7F0;
                  *(v1018 + 72) = v1012;
                  v1020 = v1630;
                  *(v1018 + 80) = sub_261FFF848;
                  *(v1018 + 88) = v1020;
                  v1021 = v1613;
                  *(v1018 + 96) = sub_261FFF848;
                  *(v1018 + 104) = v1021;
                  *(v1018 + 112) = sub_261FFF7F0;
                  *(v1018 + 120) = v1015;
                  v1022 = v1631;
                  *(v1018 + 128) = sub_261FFF848;
                  *(v1018 + 136) = v1022;
                  v1023 = v1625;
                  *(v1018 + 144) = sub_261FFF848;
                  *(v1018 + 152) = v1023;
                  *(v1018 + 160) = sub_261FFF174;
                  *(v1018 + 168) = v1017;
                  OUTLINED_FUNCTION_208();
                  swift_retain_n();
                  swift_setDeallocating();
                  swift_retain_n();

                  v1609 = v1014;

                  v1611 = v1016;

                  v1608 = v1015;

                  sub_261FB9814();
                  if (OUTLINED_FUNCTION_293(v1612))
                  {
                    OUTLINED_FUNCTION_30();
                    swift_slowAlloc();
                    OUTLINED_FUNCTION_57_2();
                    v1605 = swift_slowAlloc();
                    *&v1638[0] = v1605;
                    OUTLINED_FUNCTION_244();

                    *(v1008 + 3) = 8;

                    v1024 = v1634;
                    v1025 = v1634;
                    v1026 = sub_261F7C884();
                    v1028 = OUTLINED_FUNCTION_218(v1026, v1027);

                    *(v1008 + 4) = v1028;
                    OUTLINED_FUNCTION_187();

                    *(v1008 + 12) = 32;

                    *(v1008 + 13) = 8;

                    __swift_project_boxed_opaque_existential_0Tm(&v1641, *(&v1642 + 1));
                    OUTLINED_FUNCTION_19_6();
                    v1029 = OUTLINED_FUNCTION_94();
                    v1030(v1029);
                    OUTLINED_FUNCTION_91_0();

                    v1031 = OUTLINED_FUNCTION_94();
                    sub_261F67FE4(v1031, v1032, v1033);
                    OUTLINED_FUNCTION_128_0();

                    *(v1008 + 14) = v1025;

                    __swift_destroy_boxed_opaque_existential_0Tm(&v1641);
                    *(v1008 + 22) = 0;

                    *(v1008 + 23) = 8;

                    v1034 = *(sub_261FF2098() + 16);
                    OUTLINED_FUNCTION_187();

                    *(v1008 + 24) = v1034;

                    OUTLINED_FUNCTION_141_0();
                    OUTLINED_FUNCTION_271();
                    _os_log_impl(v1035, v1036, v1037, v1038, v1039, v1040);
                    OUTLINED_FUNCTION_230();
                    v1041 = OUTLINED_FUNCTION_29_7();
                    MEMORY[0x266724180](v1041);
                    v1042 = OUTLINED_FUNCTION_24_5();
                    MEMORY[0x266724180](v1042);
                    v335 = v1024;
                  }

                  else
                  {

                    v335 = v1634;

                    __swift_destroy_boxed_opaque_existential_0Tm(&v1641);
                  }

                  v890 = v1614;
                }

                v1043 = *(sub_261FF2098() + 16);

                if (!v1043)
                {
                  v1057 = v1577;
                  sub_261F798CC(v1577);
                  v1058 = v1627;
                  if (swift_getEnumCaseMultiPayload() == 2)
                  {
                    v1059 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA348, &qword_262044798);
                    (v1616[1].isa)(v1057 + *(v1059 + 48), v1617);
                    v1060 = sub_26203A4AC();
                    OUTLINED_FUNCTION_45_2();
                    v1061 = swift_allocObject();
                    OUTLINED_FUNCTION_86_2(v1061);
                    OUTLINED_FUNCTION_45_2();
                    v1062 = swift_allocObject();
                    OUTLINED_FUNCTION_139_0(v1062);
                    OUTLINED_FUNCTION_46();
                    v1063 = swift_allocObject();
                    *(v1063 + 16) = sub_261FFF800;
                    *(v1063 + 24) = v335;
                    OUTLINED_FUNCTION_46();
                    v1064 = swift_allocObject();
                    *(v1064 + 16) = sub_261FFF818;
                    *(v1064 + 24) = v1063;
                    v1065 = OUTLINED_FUNCTION_167(v1629);
                    *(v1065 + 16) = xmmword_26203F720;
                    *(v1065 + 32) = sub_261FFF848;
                    *(v1065 + 40) = v1061;
                    *(v1065 + 48) = sub_261FFF848;
                    *(v1065 + 56) = v1062;
                    *(v1065 + 64) = sub_261FFF7F0;
                    *(v1065 + 72) = v1064;
                    swift_setDeallocating();
                    swift_retain_n();

                    sub_261FB9814();
                    v1066 = v1633;
                    if (os_log_type_enabled(v1633, v1060))
                    {
                      OUTLINED_FUNCTION_42_1();
                      v1067 = v1060;
                      v1068 = swift_slowAlloc();
                      OUTLINED_FUNCTION_30();
                      v1069 = swift_slowAlloc();
                      *&aBlock = v1069;
                      OUTLINED_FUNCTION_120_0(258);

                      OUTLINED_FUNCTION_225();
                      sub_261F7C884();
                      OUTLINED_FUNCTION_74_2();
                      sub_261F67FE4(v1070, v1071, v1072);
                      OUTLINED_FUNCTION_73_2();

                      *(v1068 + 4) = v1061;
                      OUTLINED_FUNCTION_223();

                      _os_log_impl(&dword_261F5B000, v1066, v1067, "%{public}s: No more connections in connection pool but cancellation is already pending. Waiting for deferred cancellation", v1068, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0Tm(v1069);
                      v890 = v1614;
                      OUTLINED_FUNCTION_26();
                      MEMORY[0x266724180]();
                      v335 = v1634;
                      OUTLINED_FUNCTION_26();
                      MEMORY[0x266724180]();
                    }

                    else
                    {
                      OUTLINED_FUNCTION_201();
                    }
                  }

                  else
                  {
                    (v1610)(v1057, v1058);
                    sub_261FF1EC8();
                    if (BYTE8(v1641))
                    {
                      v1128 = sub_26203A4AC();
                      OUTLINED_FUNCTION_45_2();
                      v1129 = swift_allocObject();
                      OUTLINED_FUNCTION_86_2(v1129);
                      OUTLINED_FUNCTION_45_2();
                      v1130 = swift_allocObject();
                      OUTLINED_FUNCTION_139_0(v1130);
                      OUTLINED_FUNCTION_46();
                      v1131 = swift_allocObject();
                      *(v1131 + 16) = sub_261FFF800;
                      *(v1131 + 24) = v335;
                      OUTLINED_FUNCTION_46();
                      v1132 = swift_allocObject();
                      *(v1132 + 16) = sub_261FFF818;
                      *(v1132 + 24) = v1131;
                      v1133 = OUTLINED_FUNCTION_167(v1629);
                      *(v1133 + 16) = xmmword_26203F720;
                      *(v1133 + 32) = sub_261FFF848;
                      *(v1133 + 40) = v1129;
                      *(v1133 + 48) = sub_261FFF848;
                      *(v1133 + 56) = v1130;
                      *(v1133 + 64) = sub_261FFF7F0;
                      *(v1133 + 72) = v1132;
                      swift_setDeallocating();
                      swift_retain_n();

                      sub_261FB9814();
                      v1134 = v1633;
                      if (os_log_type_enabled(v1633, v1128))
                      {
                        OUTLINED_FUNCTION_42_1();
                        v1135 = swift_slowAlloc();
                        LODWORD(v1631) = v1128;
                        v1136 = v1135;
                        OUTLINED_FUNCTION_30();
                        v1137 = swift_slowAlloc();
                        *&aBlock = v1137;
                        OUTLINED_FUNCTION_120_0(258);

                        OUTLINED_FUNCTION_225();
                        sub_261F7C884();
                        OUTLINED_FUNCTION_74_2();
                        sub_261F67FE4(v1138, v1139, v1140);
                        OUTLINED_FUNCTION_73_2();

                        *(v1136 + 4) = v1129;

                        _os_log_impl(&dword_261F5B000, v1134, v1631, "%{public}s: No more connections in connection pool. Cannot migrate. Cancelling tunnel", v1136, 0xCu);
                        __swift_destroy_boxed_opaque_existential_0Tm(v1137);
                        OUTLINED_FUNCTION_26();
                        MEMORY[0x266724180]();
                        OUTLINED_FUNCTION_26();
                        MEMORY[0x266724180]();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_201();
                      }

                      swift_willThrow();
                      return __swift_destroy_boxed_opaque_existential_0Tm(v1647);
                    }

                    v1273 = v1641;
                    LODWORD(v1626) = sub_26203A4AC();
                    OUTLINED_FUNCTION_63();
                    v1274 = swift_allocObject();
                    *(v1274 + 16) = v1273;
                    v1275 = v1274;
                    v1631 = v1274;
                    OUTLINED_FUNCTION_45_2();
                    v1628 = swift_allocObject();
                    OUTLINED_FUNCTION_86_2(v1628);
                    OUTLINED_FUNCTION_45_2();
                    v1276 = swift_allocObject();
                    *(v1276 + 16) = 8;
                    OUTLINED_FUNCTION_46();
                    v1277 = swift_allocObject();
                    *(v1277 + 16) = sub_261FFF800;
                    *(v1277 + 24) = v335;
                    v1278 = v1277;
                    v1630 = v1277;
                    OUTLINED_FUNCTION_46();
                    v1279 = swift_allocObject();
                    v1279[2].isa = sub_261FFF818;
                    v1279[3].isa = v1278;
                    OUTLINED_FUNCTION_45_2();
                    v1280 = swift_allocObject();
                    *(v1280 + 16) = 0;
                    OUTLINED_FUNCTION_45_2();
                    v1281 = swift_allocObject();
                    *(v1281 + 16) = 8;
                    OUTLINED_FUNCTION_46();
                    v1282 = swift_allocObject();
                    *(v1282 + 16) = sub_261FFF078;
                    *(v1282 + 24) = v1275;
                    OUTLINED_FUNCTION_46();
                    v1283 = swift_allocObject();
                    *(v1283 + 16) = sub_261FFF080;
                    *(v1283 + 24) = v1282;
                    v1284 = OUTLINED_FUNCTION_221();
                    *(v1284 + 16) = xmmword_262044040;
                    v1285 = v1628;
                    *(v1284 + 32) = sub_261FFF848;
                    *(v1284 + 40) = v1285;
                    *(v1284 + 48) = sub_261FFF848;
                    *(v1284 + 56) = v1276;
                    *(v1284 + 64) = sub_261FFF7F0;
                    *(v1284 + 72) = v1279;
                    *(v1284 + 80) = sub_261FFF848;
                    *(v1284 + 88) = v1280;
                    *(v1284 + 96) = sub_261FFF848;
                    *(v1284 + 104) = v1281;
                    *(v1284 + 112) = sub_261FFF0A8;
                    *(v1284 + 120) = v1283;
                    swift_setDeallocating();
                    swift_retain_n();

                    v1625 = v1282;

                    v1286 = v1628;

                    TupleTypeMetadata2 = v1279;

                    v1619 = v1283;

                    sub_261FB9814();
                    v1287 = v1633;
                    if (os_log_type_enabled(v1633, v1626))
                    {
                      OUTLINED_FUNCTION_57_1();
                      v1288 = swift_slowAlloc();
                      OUTLINED_FUNCTION_30();
                      v1289 = swift_slowAlloc();
                      OUTLINED_FUNCTION_261(v1289);
                      OUTLINED_FUNCTION_120_0(v1290);

                      OUTLINED_FUNCTION_225();
                      sub_261F7C884();
                      OUTLINED_FUNCTION_74_2();
                      sub_261F67FE4(v1291, v1292, v1293);
                      OUTLINED_FUNCTION_154_0();

                      *(v1288 + 4) = v1286;
                      OUTLINED_FUNCTION_223();

                      *(v1288 + 12) = 0;

                      *(v1288 + 13) = 8;

                      *(v1288 + 14) = v1273;

                      _os_log_impl(&dword_261F5B000, v1287, v1626, "%{public}s: No more connections in connection pool. Cannot migrate. Scheduling tunnel cancellation for %f seconds", v1288, 0x16u);
                      __swift_destroy_boxed_opaque_existential_0Tm(v1289);
                      v1294 = OUTLINED_FUNCTION_16_3();
                      MEMORY[0x266724180](v1294);
                      v335 = v1634;
                      OUTLINED_FUNCTION_26();
                      MEMORY[0x266724180]();
                    }

                    else
                    {

                      OUTLINED_FUNCTION_201();
                    }

                    OUTLINED_FUNCTION_205();
                    sub_261FF1FB8();
                    OUTLINED_FUNCTION_242();
                    v1355 = v335 + *(v1354 + 160);
                    *v1355 = 0;
                    *(v1355 + 8) = 1;
                    v1356 = v1555;
                    sub_26203964C();
                    OUTLINED_FUNCTION_63();
                    v1357 = swift_allocObject();
                    OUTLINED_FUNCTION_136_0(v1357);
                    swift_weakInit();
                    v1358 = v1616;
                    v1359 = v1616[2].isa;
                    v1630 = v1616 + 2;
                    v1631 = v1359;
                    v1360 = v1537;
                    v1361 = v1617;
                    (v1359)(v1537, v1356, v1617);
                    v1362 = (LOBYTE(v1358[10].isa) + 48) & ~LOBYTE(v1358[10].isa);
                    v1363 = swift_allocObject();
                    v1364 = OUTLINED_FUNCTION_28_6(v1363);
                    v1365 = v1614;
                    *(v1364 + 32) = v1276;
                    *(v1364 + 40) = v1365;
                    (v1358[4].isa)(v1364 + v1362, v1360, v1361);
                    *&v1646 = sub_261FFF0E0;
                    *(&v1646 + 1) = v1363;
                    *&aBlock = MEMORY[0x277D85DD0];
                    *(&aBlock + 1) = 1107296256;
                    *&v1645 = sub_261F78F64;
                    *(&v1645 + 1) = &block_descriptor_373;
                    _Block_copy(&aBlock);
                    v1366 = OUTLINED_FUNCTION_181_0();

                    sub_262034790();
                    sub_26203A06C();
                    swift_allocObject();
                    sub_26203A04C();

                    sub_261FF25D8();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA348, &qword_262044798);
                    v1367 = v1615;
                    *v1615 = v1606 & 1;
                    v1368 = v1555;
                    OUTLINED_FUNCTION_63_2();
                    v1369();
                    swift_storeEnumTagMultiPayload();
                    sub_261FF2200(v1367);
                    v1370 = sub_261F6E294();
                    v1371 = v1539;
                    sub_26203A02C();
                    v1372 = v1540;
                    sub_26203A09C();
                    v1373 = *(v1541 + 8);
                    v1374 = v1371;
                    v1375 = v1542;
                    v1373(v1374, v1542);
                    sub_26203A55C();

                    v1376 = v1372;
                    v890 = v1614;
                    v1373(v1376, v1375);
                    (v1616[1].isa)(v1368, v1617);
                  }
                }

                sub_261F7B38C();
                v1044 = *(&v1645 + 1);
                if (*(&v1645 + 1))
                {
                  v1045 = OUTLINED_FUNCTION_101_0();
                  __swift_project_boxed_opaque_existential_0Tm(v1045, v1046);
                  OUTLINED_FUNCTION_16();
                  v1048 = v1047;
                  MEMORY[0x28223BE20](v1049);
                  OUTLINED_FUNCTION_74();
                  (*(v1048 + 16))(v1051 - v1050);
                  sub_261F66E60(&aBlock, &qword_27FEFA288, &qword_262044098);
                  OUTLINED_FUNCTION_80_1();
                  v1052 = OUTLINED_FUNCTION_42_3();
                  v1053(v1052);
                  v1054 = OUTLINED_FUNCTION_135();
                  v1055(v1054);
                  v1056 = v1641;
                  v1044 = *(&v1641 + 1);
                }

                else
                {
                  sub_261F66E60(&aBlock, &qword_27FEFA288, &qword_262044098);
                  v1056 = 0;
                }

                __swift_project_boxed_opaque_existential_0Tm(v1647, v1648);
                OUTLINED_FUNCTION_149_0();
                v1073 = OUTLINED_FUNCTION_82_1();
                v1074(v1073);
                v1075 = *(&aBlock + 1);
                if (v1044)
                {
                  if (*(&aBlock + 1))
                  {
                    v1076 = OUTLINED_FUNCTION_71_2();
                    sub_261FA3600(v1076, v1077, v1078, v1075);
                    OUTLINED_FUNCTION_297();

                    if ((v1056 & 1) == 0)
                    {

                      return __swift_destroy_boxed_opaque_existential_0Tm(v1647);
                    }

LABEL_283:
                    sub_261FF74C0(&v1641);
                    if (*(&v1642 + 1))
                    {
                      aBlock = v1641;
                      v1645 = v1642;
                      v1646 = v1643;
                      LODWORD(v1623) = sub_26203A4AC();
                      v1141 = OUTLINED_FUNCTION_85_1();
                      sub_261FA5688(v1141, v1142);
                      sub_261FA5688(&v1641, &v1639);
                      OUTLINED_FUNCTION_269();
                      v1143 = swift_allocObject();
                      v1144 = v1642;
                      *&v1143[2].isa = v1641;
                      *&v1143[4].isa = v1144;
                      *&v1143[6].isa = v1643;
                      v1145 = v1143;
                      v1627 = v1143;
                      sub_261F79740(v1647, v1638);
                      sub_261F79740(v1638, v1637);
                      OUTLINED_FUNCTION_14_1();
                      v1146 = swift_allocObject();
                      v1628 = v1146;
                      sub_261F797BC(v1638, &v1146[2]);
                      OUTLINED_FUNCTION_45_2();
                      v1147 = swift_allocObject();
                      OUTLINED_FUNCTION_86_2(v1147);
                      OUTLINED_FUNCTION_45_2();
                      v1148 = swift_allocObject();
                      *(v1148 + 16) = 8;
                      OUTLINED_FUNCTION_46();
                      v1149 = swift_allocObject();
                      *(v1149 + 16) = sub_261FFF800;
                      *(v1149 + 24) = v335;
                      v1150 = v1149;
                      v1626 = v1149;
                      OUTLINED_FUNCTION_46();
                      v1151 = swift_allocObject();
                      v1631 = v1151;
                      *(v1151 + 16) = sub_261FFF818;
                      *(v1151 + 24) = v1150;
                      OUTLINED_FUNCTION_45_2();
                      v1630 = swift_allocObject();
                      LOBYTE(v1630[2].isa) = 32;
                      OUTLINED_FUNCTION_45_2();
                      v1625 = swift_allocObject();
                      *(v1625 + 16) = 8;
                      OUTLINED_FUNCTION_46();
                      v1152 = swift_allocObject();
                      *(v1152 + 16) = sub_261FFF070;
                      *(v1152 + 24) = v1145;
                      OUTLINED_FUNCTION_46();
                      v1153 = swift_allocObject();
                      *(v1153 + 16) = sub_261FFF818;
                      *(v1153 + 24) = v1152;
                      OUTLINED_FUNCTION_45_2();
                      v1154 = swift_allocObject();
                      *(v1154 + 16) = 32;
                      v1155 = v1154;
                      OUTLINED_FUNCTION_45_2();
                      TupleTypeMetadata2 = swift_allocObject();
                      LOBYTE(TupleTypeMetadata2[2].isa) = 8;
                      OUTLINED_FUNCTION_46();
                      v1156 = swift_allocObject();
                      *(v1156 + 16) = sub_261FFF7E8;
                      *(v1156 + 24) = v1146;
                      OUTLINED_FUNCTION_46();
                      v1157 = swift_allocObject();
                      *(v1157 + 16) = sub_261FFF818;
                      *(v1157 + 24) = v1156;
                      v1158 = OUTLINED_FUNCTION_289(v1629);
                      *(v1158 + 16) = v1604;
                      *(v1158 + 32) = sub_261FFF848;
                      *(v1158 + 40) = v1147;
                      *(v1158 + 48) = sub_261FFF848;
                      *(v1158 + 56) = v1148;
                      v1159 = v1631;
                      *(v1158 + 64) = sub_261FFF7F0;
                      *(v1158 + 72) = v1159;
                      v1160 = v1630;
                      *(v1158 + 80) = sub_261FFF848;
                      *(v1158 + 88) = v1160;
                      v1161 = v1625;
                      *(v1158 + 96) = sub_261FFF848;
                      *(v1158 + 104) = v1161;
                      *(v1158 + 112) = sub_261FFF7F0;
                      *(v1158 + 120) = v1153;
                      *(v1158 + 128) = sub_261FFF848;
                      *(v1158 + 136) = v1155;
                      v1162 = TupleTypeMetadata2;
                      *(v1158 + 144) = sub_261FFF848;
                      *(v1158 + 152) = v1162;
                      *(v1158 + 160) = sub_261FFF7F0;
                      *(v1158 + 168) = v1157;
                      swift_setDeallocating();
                      OUTLINED_FUNCTION_290();

                      v1618 = v1152;

                      v1629 = v1156;

                      v1617 = v1153;

                      v1619 = v1155;

                      v1621 = v1157;

                      sub_261FB9814();
                      if (OUTLINED_FUNCTION_293(v1623))
                      {
                        OUTLINED_FUNCTION_30();
                        v1163 = swift_slowAlloc();
                        OUTLINED_FUNCTION_101();
                        v1616 = swift_slowAlloc();
                        v1636 = v1616;
                        *v1163 = 770;
                        *(v1163 + 2) = 34;

                        *(v1163 + 3) = 8;

                        v1164 = sub_261F7C884();
                        sub_261F67FE4(v1164, v1165, &v1636);
                        OUTLINED_FUNCTION_154_0();

                        *(v1163 + 4) = v1147;
                        OUTLINED_FUNCTION_223();

                        *(v1163 + 12) = 32;

                        *(v1163 + 13) = 8;

                        sub_261F79740(&v1639, v1635);
                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
                        v1166 = sub_26203A20C();
                        v1168 = sub_261F67FE4(v1166, v1167, &v1636);

                        *(v1163 + 14) = v1168;

                        sub_261FFEDE8(&v1639);
                        *(v1163 + 22) = 32;

                        *(v1163 + 23) = 8;

                        sub_261F79740(v1637, v1635);
                        v1169 = sub_26203A20C();
                        sub_261F67FE4(v1169, v1170, &v1636);
                        OUTLINED_FUNCTION_73_2();

                        *(v1163 + 24) = 8;

                        __swift_destroy_boxed_opaque_existential_0Tm(v1637);
                        OUTLINED_FUNCTION_141_0();
                        _os_log_impl(v1171, v1172, v1173, v1174, v1163, 0x20u);
                        OUTLINED_FUNCTION_273();
                        swift_arrayDestroy();
                        v1175 = OUTLINED_FUNCTION_29_7();
                        MEMORY[0x266724180](v1175);
                        v1176 = OUTLINED_FUNCTION_32_4();
                        MEMORY[0x266724180](v1176);
                      }

                      else
                      {

                        OUTLINED_FUNCTION_223();

                        sub_261FFEDE8(&v1639);

                        __swift_destroy_boxed_opaque_existential_0Tm(v1637);
                      }

                      v1267 = OUTLINED_FUNCTION_85_1();
                      sub_261F79740(v1267, v1268);
                      v1269 = v1634;
                      sub_261FF1FB8();
                      v1270 = *(&v1646 + 1);
                      sub_261FFEDE8(&aBlock);
                      OUTLINED_FUNCTION_2_8();
                      v1272 = v1269 + *(v1271 + 160);
                      *v1272 = v1270;
                      *(v1272 + 8) = 0;
                    }

                    else
                    {

                      sub_261F66E60(&v1641, &qword_27FEFA340, &qword_262044790);
                    }

                    return __swift_destroy_boxed_opaque_existential_0Tm(v1647);
                  }
                }

                else
                {
                  if (!*(&aBlock + 1))
                  {

                    goto LABEL_283;
                  }
                }

                return __swift_destroy_boxed_opaque_existential_0Tm(v1647);
              }

              v1079 = v1573;
              OUTLINED_FUNCTION_123();
              OUTLINED_FUNCTION_63_2();
              v1080();
              v1614 = *v1079;
              v1612 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA370, &qword_2620447C8) + 48);
              v1081 = v1616[4].isa;
              v1082 = v1617;
              (v1081)(v1576, v1613 + v864, v1617);
              v1083 = v1079 + v1612;
              v1084 = v1595;
              v1613 = v1081;
              (v1081)(v1595, v1083, v1082);
              OUTLINED_FUNCTION_129_0();
              if ((sub_26203962C() & 1) == 0)
              {

                v1177 = v1616[1].isa;
                (v1177)(v1084, v1617);
                v1178 = OUTLINED_FUNCTION_42_3();
                (v1177)(v1178);
                v303 = v1627;
                goto LABEL_287;
              }

              v531 = v1614;
              LODWORD(v1622) = sub_26203A48C();
              if (qword_28108B618 == -1)
              {
LABEL_274:
                TupleTypeMetadata2 = qword_28108B620;
                v1085 = v1616 + 2;
                v1086 = v1616[2].isa;
                v1087 = v1544;
                v1088 = v1617;
                (v1086)(v1544, v1595, v1617);
                (v1086)(v1574, v1087, v1088);
                v1089 = (LOBYTE(v1085[8].isa) + 16) & ~LOBYTE(v1085[8].isa);
                v1090 = swift_allocObject();
                v1630 = v1090;
                (v1613)(v1090 + v1089, v1087, v1088);
                OUTLINED_FUNCTION_63();
                v1091 = swift_allocObject();
                *(v1091 + 16) = v531;
                v1092 = v1091;
                v1634 = v1091;
                OUTLINED_FUNCTION_45_2();
                v1093 = swift_allocObject();
                *(v1093 + 16) = 32;
                OUTLINED_FUNCTION_45_2();
                v1094 = swift_allocObject();
                *(v1094 + 16) = 8;
                OUTLINED_FUNCTION_46();
                v1095 = swift_allocObject();
                *(v1095 + 16) = sub_261FFEFE4;
                *(v1095 + 24) = v1090;
                OUTLINED_FUNCTION_46();
                v1096 = swift_allocObject();
                *(v1096 + 16) = sub_261FFF818;
                *(v1096 + 24) = v1095;
                v1097 = v1096;
                v1618 = v1096;
                OUTLINED_FUNCTION_45_2();
                v1632 = swift_allocObject();
                LOBYTE(v1632[2].isa) = 32;
                OUTLINED_FUNCTION_45_2();
                v1098 = swift_allocObject();
                v1098[16] = 8;
                v1631 = v1098;
                OUTLINED_FUNCTION_46();
                v1099 = swift_allocObject();
                *(v1099 + 16) = sub_261FFF838;
                *(v1099 + 24) = v1092;
                OUTLINED_FUNCTION_46();
                v1100 = swift_allocObject();
                *(v1100 + 16) = sub_261FFF818;
                *(v1100 + 24) = v1099;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA380, &qword_2620447D8);
                v1101 = swift_allocObject();
                *(v1101 + 16) = xmmword_262044040;
                *(v1101 + 32) = sub_261FFF848;
                *(v1101 + 40) = v1093;
                *(v1101 + 48) = sub_261FFF848;
                *(v1101 + 56) = v1094;
                *(v1101 + 64) = sub_261FFF7F0;
                *(v1101 + 72) = v1097;
                v1102 = v1632;
                *(v1101 + 80) = sub_261FFF848;
                *(v1101 + 88) = v1102;
                *(v1101 + 96) = sub_261FFF848;
                *(v1101 + 104) = v1098;
                *(v1101 + 112) = sub_261FFF7F0;
                *(v1101 + 120) = v1100;
                swift_setDeallocating();
                v1103 = OUTLINED_FUNCTION_245();
                v1104 = v1098;

                v1621 = v1095;
                v1105 = v1618;

                v1623 = v1099;

                v1619 = v1100;

                sub_261FB9814();
                v1106 = v1622;
                if (os_log_type_enabled(TupleTypeMetadata2, v1622))
                {
                  OUTLINED_FUNCTION_57_1();
                  v1107 = swift_slowAlloc();
                  v1108 = v1574;
                  v1109 = v1107;
                  OUTLINED_FUNCTION_56();
                  v1615 = swift_slowAlloc();
                  OUTLINED_FUNCTION_261(v1615);
                  *v1109 = v1110;
                  *(v1109 + 2) = 32;

                  *(v1109 + 3) = 8;

                  OUTLINED_FUNCTION_10_8();
                  sub_261F6E4A4(v1111, v1112, MEMORY[0x277CC9628]);
                  v1113 = v1617;
                  sub_26203ABAC();
                  OUTLINED_FUNCTION_74_2();
                  v1117 = sub_261F67FE4(v1114, v1115, v1116);

                  *(v1109 + 4) = v1117;

                  OUTLINED_FUNCTION_279();
                  (v1094)(v1108, v1113);
                  *(v1109 + 12) = 32;

                  *(v1109 + 13) = 8;

                  v1118 = v1614;
                  *&v1641 = v1614;
                  v1119 = v1614;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
                  sub_26203A20C();
                  OUTLINED_FUNCTION_74_2();
                  sub_261F67FE4(v1120, v1121, v1122);
                  OUTLINED_FUNCTION_73_2();

                  *(v1109 + 14) = v1105;

                  _os_log_impl(&dword_261F5B000, TupleTypeMetadata2, v1106, "Processing deferred cancellation event %s for error: %s", v1109, 0x16u);
                  OUTLINED_FUNCTION_230();
                  v1123 = OUTLINED_FUNCTION_29_7();
                  MEMORY[0x266724180](v1123);
                  v1124 = OUTLINED_FUNCTION_32_4();
                  MEMORY[0x266724180](v1124);
                  v1125 = v1113;
                }

                else
                {

                  OUTLINED_FUNCTION_279();
                  v1125 = v1617;
                  (v1094)(v1574, v1617);
                }

                v1295 = v1576;
                swift_willThrow();
                (v1094)(v1595, v1125);
                (v1094)(v1295, v1125);
                v1296 = OUTLINED_FUNCTION_9_12();
                v1297(v1296);
                v438 = OUTLINED_FUNCTION_54_2();
                v439 = v1627;
                return v440(v438, v439);
              }

LABEL_383:
              OUTLINED_FUNCTION_0_27();
              swift_once();
              goto LABEL_274;
            case 8u:
              v581 = v1586;
              OUTLINED_FUNCTION_21_6();
              v582();
              v583 = v1628;
              v584 = v1590;
              OUTLINED_FUNCTION_147();
              v585();
              v586 = OUTLINED_FUNCTION_234(2, v584);
              v588 = v583[1].isa;
              v335 = &v583[1];
              v587 = v588;
              v589 = OUTLINED_FUNCTION_42_3();
              v588(v589);
              if ((v586 & 1) == 0)
              {
                v593 = v581;
                goto LABEL_158;
              }

              v590 = v581[1];
              aBlock = *v581;
              v1645 = v590;
              v1646 = v581[2];
              sub_261F798CC(v1568);
              v591 = sub_261FF6158(v303);
              v592 = OUTLINED_FUNCTION_100();
              v587(v592);
              if (v591 == 2 || (v591 & 1) != 0)
              {
                v593 = &aBlock;
LABEL_158:
                sub_261FFEDE8(v593);
                goto LABEL_221;
              }

              v1314 = v1524;
              sub_261FF19A8();
              v1315 = v1611;
              OUTLINED_FUNCTION_150_0(v1314, 1, v1611);
              if (v300)
              {
                sub_261F66E60(v1314, &qword_27FEFA270, &qword_262041910);
                *&v1641 = sub_26203ABEC();
                *(&v1641 + 1) = v1517;
                OUTLINED_FUNCTION_33_2();
                OUTLINED_FUNCTION_184_0();
                MEMORY[0x266722710]();
                OUTLINED_FUNCTION_203();
                sub_261F798CC(v1518);
                OUTLINED_FUNCTION_143_0();
                v1519 = OUTLINED_FUNCTION_71_2();
                v587(v1519);
                OUTLINED_FUNCTION_170_0();
                OUTLINED_FUNCTION_75_2();
                v1478 = 852;
                goto LABEL_397;
              }

              (*(v1607 + 32))(v1554, v1314, v1315);
              OUTLINED_FUNCTION_22_6(&aBlock);
              v1316 = OUTLINED_FUNCTION_18_5();
              v1317(v1316);
              v1318 = *&v1638[0];
              v1319 = OUTLINED_FUNCTION_85_1();
              sub_261FA5688(v1319, v1320);
              OUTLINED_FUNCTION_36_1();
              swift_beginAccess();
              OUTLINED_FUNCTION_155_0();
              sub_262029D2C();
              swift_endAccess();
              v1321 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA350, &unk_262041920) + 48);
              v1322 = v1594;
              *v1594 = *(&v1646 + 1);
              (*(v1607 + 16))(&v1322[v1321], v1554, v1315);
              OUTLINED_FUNCTION_182_0();
              __swift_storeEnumTagSinglePayload(v1323, v1324, v1325, v1315);
              swift_storeEnumTagMultiPayload();
              v1326 = v1646;
              v1632 = *(&v1645 + 1);
              __swift_project_boxed_opaque_existential_0Tm(&aBlock, *(&v1645 + 1));
              OUTLINED_FUNCTION_63();
              v1327 = swift_allocObject();
              OUTLINED_FUNCTION_136_0(v1327);
              swift_weakInit();
              v1328 = OUTLINED_FUNCTION_85_1();
              sub_261FA5688(v1328, v1329);
              v1330 = swift_allocObject();
              v1331 = OUTLINED_FUNCTION_28_6(v1330);
              *(v1331 + 32) = v1318;
              v1332 = v1642;
              *(v1331 + 40) = v1641;
              *(v1331 + 56) = v1332;
              *(v1331 + 72) = v1643;
              v1333 = *(v1326 + 24);

              v1333(v1322, sub_261FFF518, v1330, v1632, v1326);

              OUTLINED_FUNCTION_1_20();
              sub_261FFEE7C(v1322, v1334);
              (*(v1607 + 8))(v1554, v1611);
              sub_261FFEDE8(&aBlock);

              v1335 = OUTLINED_FUNCTION_9_12();
              v1336(v1335);
              v1337 = OUTLINED_FUNCTION_130_0();
              result = (v587)(v1337);
              break;
            case 9u:
              v557 = v1589;
              OUTLINED_FUNCTION_21_6();
              v558();
              v1611 = *(v557 + 40);
              v559 = v1628;
              v560 = v1591;
              OUTLINED_FUNCTION_147();
              v561();
              v562 = OUTLINED_FUNCTION_234(2, v560);
              v563 = v559[1].isa;
              v564 = OUTLINED_FUNCTION_11_0();
              v563(v564);
              if ((v562 & 1) == 0)
              {

                p_aBlock = v557;
                goto LABEL_156;
              }

              sub_261F797BC(v557, &aBlock);
              v565 = v1569;
              sub_261F798CC(v1569);
              v566 = sub_261FF6158(v303);
              (v563)(v565, v303);
              if (v566 == 2 || (v566 & 1) == 0)
              {

                __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                v303 = v1627;
                goto LABEL_221;
              }

              OUTLINED_FUNCTION_202();
              OUTLINED_FUNCTION_53_2();
              v567 = OUTLINED_FUNCTION_39_1();
              v568(v567);
              v569 = OUTLINED_FUNCTION_85_1();
              sub_261F79740(v569, v570);
              OUTLINED_FUNCTION_36_1();
              swift_beginAccess();
              OUTLINED_FUNCTION_153();
              sub_262029DF0();
              swift_endAccess();
              if (v1611)
              {
                OUTLINED_FUNCTION_202();
                OUTLINED_FUNCTION_19_6();
                v571 = OUTLINED_FUNCTION_39_1();
                v572(v571);
                OUTLINED_FUNCTION_36_1();
                swift_beginAccess();
                OUTLINED_FUNCTION_42_3();
                sub_262029EAC();
                swift_endAccess();
              }

              OUTLINED_FUNCTION_63();
              v573 = swift_allocObject();
              OUTLINED_FUNCTION_136_0(v573);
              swift_weakInit();
              v574 = OUTLINED_FUNCTION_85_1();
              sub_261F79740(v574, v575);
              v576 = OUTLINED_FUNCTION_167(&unk_287490928);
              v577 = OUTLINED_FUNCTION_28_6(v576);
              OUTLINED_FUNCTION_191(v577);
              OUTLINED_FUNCTION_196();
              sub_261FF6E8C();

              __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
              v578 = OUTLINED_FUNCTION_9_12();
              v579(v578);
              v580 = OUTLINED_FUNCTION_130_0();
              return (v563)(v580);
            case 0xAu:
              v399 = v1588;
              OUTLINED_FUNCTION_63_2();
              v400();
              OUTLINED_FUNCTION_72_2();
              if (swift_getEnumCaseMultiPayload() == 10)
              {

                v401 = v399[1];
                aBlock = *v399;
                v1645 = v401;
                v1646 = v399[2];
                v402 = v1615;
                OUTLINED_FUNCTION_131();
                swift_storeEnumTagMultiPayload();
                sub_261FF2200(v402);
                v403 = v1562;
                sub_261FA5688(&aBlock, v1562);
                OUTLINED_FUNCTION_59_0();
                swift_storeEnumTagMultiPayload();
                sub_261F6E52C(v403);
                v404 = *(v1625 + 8);
                v405 = OUTLINED_FUNCTION_59_0();
                v404(v405);
                sub_261FFEDE8(&aBlock);
                v406 = OUTLINED_FUNCTION_133_0();
                return (v404)(v406);
              }

              v593 = v399;
              goto LABEL_158;
            case 0xCu:
              v441 = v1587;
              v442 = v1626;
              v443 = v1629;
              OUTLINED_FUNCTION_63_2();
              v444();
              OUTLINED_FUNCTION_72_2();
              if (swift_getEnumCaseMultiPayload() != 10)
              {
                sub_261F66E60(v441, &qword_27FEFA388, &qword_2620447E0);
                goto LABEL_221;
              }

              OUTLINED_FUNCTION_30_5(v441);
              v438 = v442;
              v439 = v443;
              return v440(v438, v439);
            case 0xEu:
              OUTLINED_FUNCTION_72_2();
              if (swift_getEnumCaseMultiPayload() != 3)
              {
                goto LABEL_221;
              }

              v408 = sub_26203A4AC();
              OUTLINED_FUNCTION_265();
              if (!v300)
              {
                OUTLINED_FUNCTION_0_27();
                swift_once();
              }

              sub_26203969C(v408, &dword_261F5B000, qword_28108B620, "TunnelEndpoint: Server waiting for handshake request", 52, 2, MEMORY[0x277D84F90]);
              OUTLINED_FUNCTION_153_0();
              sub_261F7B38C();
              v409 = v1629;
              v410 = v1625;
              v335 = v1615;
              if (!*(&v1642 + 1))
              {
                goto LABEL_399;
              }

              OUTLINED_FUNCTION_237();
              OUTLINED_FUNCTION_11_0();
              swift_storeEnumTagMultiPayload();
              sub_261FF2200(v335);
              OUTLINED_FUNCTION_63();
              v411 = swift_allocObject();
              OUTLINED_FUNCTION_136_0(v411);
              swift_weakInit();
              v412 = OUTLINED_FUNCTION_85_1();
              sub_261F79740(v412, v413);
              v414 = OUTLINED_FUNCTION_167(&unk_287490E00);
              v415 = OUTLINED_FUNCTION_28_6(v414);
              OUTLINED_FUNCTION_191(v415);
              OUTLINED_FUNCTION_196();
              sub_261FF6E8C();

              __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);

              return (*(v410 + 8))(v1626, v409);
            case 0xFu:
              OUTLINED_FUNCTION_72_2();
              if (swift_getEnumCaseMultiPayload())
              {
                goto LABEL_221;
              }

              isa_low = LOBYTE(v1633->isa);
              OUTLINED_FUNCTION_153_0();
              sub_261F7B38C();
              if (!*(&v1642 + 1))
              {
                sub_261F66E60(&v1641, &qword_27FEFA288, &qword_262044098);
                *&aBlock = OUTLINED_FUNCTION_231();
                *(&aBlock + 1) = v1497;
                OUTLINED_FUNCTION_65_1();
                OUTLINED_FUNCTION_174_0(v1498);
                OUTLINED_FUNCTION_42_3();
                sub_26203ABDC();
                OUTLINED_FUNCTION_76_0();
                v1499 = OUTLINED_FUNCTION_42_3();
                v1500(v1499);
                OUTLINED_FUNCTION_170_0();
                OUTLINED_FUNCTION_51_2();
                v1478 = 811;
                goto LABEL_397;
              }

              LODWORD(v1608) = isa_low;
              OUTLINED_FUNCTION_237();
              LODWORD(v1612) = sub_26203A4AC();
              OUTLINED_FUNCTION_265();
              v356 = v1623;
              v357 = v1621;
              if (!v300)
              {
                goto LABEL_379;
              }

              goto LABEL_76;
            case 0x10u:
              OUTLINED_FUNCTION_72_2();
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                sub_261F7A074(v1571);
                v497 = OUTLINED_FUNCTION_255();
                v498 = v1623;
                OUTLINED_FUNCTION_150_0(v497, v499, v1623);
                if (!v300)
                {

                  OUTLINED_FUNCTION_63();
                  v500 = swift_allocObject();
                  OUTLINED_FUNCTION_136_0(v500);
                  swift_weakInit();
                  OUTLINED_FUNCTION_107();
                  v501 = swift_allocObject();
                  v502 = v1621;
                  v501[2] = v498;
                  v501[3] = v502;
                  v501[4] = v333;
                  v503 = *(v502 + 72);

                  v503(sub_261F6E03C, v501, v498, v502);

                  v504 = OUTLINED_FUNCTION_175_0();
                  v505(v504);
LABEL_335:
                  v438 = OUTLINED_FUNCTION_17_8();
LABEL_336:
                  v439 = v1629;
                  return v440(v438, v439);
                }

LABEL_385:
                __break(1u);
                goto LABEL_386;
              }

              v621 = v1628;
              v622 = v1563;
              OUTLINED_FUNCTION_147();
              v623();
              v624 = OUTLINED_FUNCTION_234(0, v622);
              v625 = v621[1].isa;
              v626 = OUTLINED_FUNCTION_42_3();
              (v625)(v626);
              if (v624)
              {
                v1632 = v625;
                v335 = v1543;
                sub_261F7A074(v1543);
                v627 = v1623;
                OUTLINED_FUNCTION_150_0(v335, 1, v1623);
                if (!v300)
                {

                  OUTLINED_FUNCTION_63();
                  v628 = swift_allocObject();
                  OUTLINED_FUNCTION_136_0(v628);
                  swift_weakInit();
                  OUTLINED_FUNCTION_107();
                  v629 = swift_allocObject();
                  v630 = v1621;
                  v629[2] = v627;
                  v629[3] = v630;
                  v629[4] = v622;
                  v631 = *(v630 + 72);

                  v631(sub_261FFF824, v629, v627, v630);

                  v632 = OUTLINED_FUNCTION_162_0();
                  v633(v632);
                  v634 = OUTLINED_FUNCTION_9_12();
                  v635(v634);
                  v636 = OUTLINED_FUNCTION_130_0();
                  return (v1632)(v636, v637);
                }

                goto LABEL_390;
              }

              goto LABEL_221;
            case 0x11u:
              OUTLINED_FUNCTION_72_2();
              if (swift_getEnumCaseMultiPayload() != 1)
              {
                goto LABEL_221;
              }

              v506 = v1567;
              OUTLINED_FUNCTION_147();
              v507();
              if (*v506)
              {
                goto LABEL_221;
              }

              v508 = sub_261FF21BC();
              sub_261FF673C(v508);
              v509 = sub_261FF2178();
              v510 = v1622;
              sub_261FF0078(v509);

              OUTLINED_FUNCTION_42_3();
              sub_261FF03B8();

              v511 = sub_261FF2098();
              sub_261FF0078(v511);
              v1614 = v510;

              OUTLINED_FUNCTION_100();
              sub_261FF03B8();
              v513 = v512;

              v514 = *(v513 + 16);
              if (v514)
              {
                v515 = v513 + 32;
                v516 = v1615;
                do
                {
                  sub_261F79740(v515, &aBlock);
                  OUTLINED_FUNCTION_236();
                  v517 = OUTLINED_FUNCTION_82_1();
                  v518(v517);
                  __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
                  v515 += 40;
                  --v514;
                }

                while (v514);
              }

              else
              {

                v516 = v1615;
              }

              v1377 = v1634;
              OUTLINED_FUNCTION_246();
              OUTLINED_FUNCTION_36_1();
              swift_beginAccess();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA390, &qword_2620447E8);
              sub_26203A10C();
              swift_endAccess();
              OUTLINED_FUNCTION_246();
              OUTLINED_FUNCTION_36_1();
              swift_beginAccess();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA398, &unk_2620447F0);
              sub_26203A10C();
              swift_endAccess();
              OUTLINED_FUNCTION_246();
              OUTLINED_FUNCTION_36_1();
              swift_beginAccess();
              sub_26203A10C();
              swift_endAccess();
              OUTLINED_FUNCTION_205();
              sub_261FF1FB8();
              OUTLINED_FUNCTION_246();
              v1379 = v1377 + *(v1378 + 160);
              *v1379 = 0;
              *(v1379 + 8) = 1;
              v1380 = v1627;
              swift_storeEnumTagMultiPayload();
              sub_261FF2200(v516);
              v1381 = OUTLINED_FUNCTION_9_12();
              v1382(v1381);
              v1383 = OUTLINED_FUNCTION_54_2();
              return v1384(v1383, v1380);
            default:
              goto LABEL_221;
          }

          return result;
        default:
          goto LABEL_66;
      }
  }
}