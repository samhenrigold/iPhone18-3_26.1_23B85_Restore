uint64_t sub_261FB7FB0(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_261FB8B00(a3, a1);
  }

  return result;
}

void sub_261FB8024(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_261FB8090(char a1, uint64_t a2, unint64_t a3, unsigned __int8 a4, void *a5, uint64_t a6)
{
  v40 = 0;
  v41 = 0;
  v37 = a4;
  v38 = a2;
  v39 = a3;
  v11 = a1 & 1;
  v36 = a1 & 1;
  sub_261F6B73C(a2, a3);
  v12 = 0;
  v13 = 0;
  if ([a5 sessionType] == 1)
  {
    v14 = SCDynamicStoreCopyComputerName(0, 0);
    if (v14)
    {
      v15 = v14;
      v12 = sub_26203A1BC();
      v13 = v16;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(&v39 + 1) = v12;
    v40 = v13;
  }

  if (a6)
  {

    v41 = a6;
  }

  v17 = sub_26203A47C();
  if (qword_28108B600 != -1)
  {
    swift_once();
  }

  v18 = qword_28108B610;
  if (os_log_type_enabled(qword_28108B610, v17))
  {
    v29 = v12;
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *__src = v31;
    *v19 = 136446466;
    sub_261F666D8();
    log = v18;
    v22 = a4;
    v23 = sub_261F67FE4(v20, v21, __src);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    LOBYTE(v35[0]) = v11;
    BYTE1(v35[0]) = v22;
    v35[1] = a2;
    v35[2] = a3;
    v35[3] = v29;
    v35[4] = v13;
    v35[5] = a6;
    sub_261F6B73C(a2, a3);

    v24 = sub_26203A20C();
    v26 = sub_261F67FE4(v24, v25, __src);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_261F5B000, log, v17, "%{public}s: Sending pairing data to peer: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266724180](v31, -1, -1);
    MEMORY[0x266724180](v19, -1, -1);
  }

  swift_beginAccess();
  v27 = v38;
  *__src = v36 | (v37 << 8);
  *&__src[8] = v38;
  v32 = v39;
  *&__src[16] = v39;
  *&__src[32] = v40;
  *&__src[40] = v41;
  *&__src[72] = 0;
  sub_261FBA7C0(__src);
  memcpy(__dst, __src, 0x82uLL);
  sub_261F6B73C(v27, v32);

  sub_261FABDA0(__dst, 0, 1);
  memcpy(v35, __dst, 0x82uLL);
  sub_261FBA880(v35);
  sub_261F6BFFC(v38, v39);
}

uint64_t sub_261FB83B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v7 = sub_26203954C();
  v9 = v8;

  v5(a2, v7, v9);
  sub_261F6BFFC(v7, v9);
}

uint64_t sub_261FB8448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = a5[3];
    v15 = a5[4];
    __swift_project_boxed_opaque_existential_0Tm(a5, v14);
    (*(v15 + 8))(a2, a3, a6, a7, v13, v14, v15);
  }

  return result;
}

uint64_t sub_261FB8538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_26203A1BC();
  v7 = v6;

  v4(a2, v5, v7);
}

uint64_t sub_261FB85B4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = a2[3];
    v6 = a2[4];
    __swift_project_boxed_opaque_existential_0Tm(a2, v5);
    (*(v6 + 16))(v4, v5, v6);
  }

  return result;
}

uint64_t sub_261FB8648(unsigned int a1, int a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_261FB0B0C(a1, a2);
  }

  return result;
}

uint64_t sub_261FB86BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void sub_261FB8B00(void *a1, id a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__pairingSession);
  if (v5)
  {
    v6 = v5 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    if (a2)
    {
      v25 = a2;
      sub_26203A4AC();
      if (qword_28108B600 != -1)
      {
        OUTLINED_FUNCTION_0_11();
        swift_once();
      }

      v26 = OUTLINED_FUNCTION_152();
      if (os_log_type_enabled(v26, v27))
      {
        OUTLINED_FUNCTION_30();
        v28 = swift_slowAlloc();
        OUTLINED_FUNCTION_101();
        v89 = swift_slowAlloc();
        *v28 = 136446722;
        sub_261F666D8();
        OUTLINED_FUNCTION_125(v29, v30, v31, v32);
        OUTLINED_FUNCTION_61_1();

        *(v28 + 4) = v3;
        *(v28 + 12) = 2082;
        sub_261FE5020(&v88);
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A88, &unk_2620402E0);
        v41 = OUTLINED_FUNCTION_181(v33, v34, v35, v36, v37, v38, v39, v40, v88);
        OUTLINED_FUNCTION_125(v41, v42, v43, v44);
        OUTLINED_FUNCTION_70();

        *(v28 + 14) = a1;
        *(v28 + 22) = 2082;
        v88 = a2;
        v45 = a2;
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
        v54 = OUTLINED_FUNCTION_181(v46, v47, v48, v49, v50, v51, v52, v53, v88);
        OUTLINED_FUNCTION_125(v54, v55, v56, v57);
        OUTLINED_FUNCTION_70();

        *(v28 + 24) = a1;
        OUTLINED_FUNCTION_75_1();
        _os_log_impl(v58, v59, v60, v61, v62, 0x20u);
        swift_arrayDestroy();
        v63 = OUTLINED_FUNCTION_16_3();
        MEMORY[0x266724180](v63);
        v64 = OUTLINED_FUNCTION_9_2();
        MEMORY[0x266724180](v64);
      }

      v65 = OUTLINED_FUNCTION_72_1();
      sub_261FB8EE8(v65);
    }

    else
    {
      v66 = sub_26203A4AC();
      if (qword_28108B600 != -1)
      {
        OUTLINED_FUNCTION_0_11();
        swift_once();
      }

      v67 = qword_28108B610;
      if (os_log_type_enabled(qword_28108B610, v66))
      {
        OUTLINED_FUNCTION_57_1();
        v68 = swift_slowAlloc();
        OUTLINED_FUNCTION_56();
        v89 = swift_slowAlloc();
        OUTLINED_FUNCTION_137(4.8752e-34);
        v73 = OUTLINED_FUNCTION_125(v69, v70, v71, v72);

        *(v68 + 4) = v73;
        *(v68 + 12) = 2082;
        sub_261FE5020(&v88);
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A88, &unk_2620402E0);
        v82 = OUTLINED_FUNCTION_181(v74, v75, v76, v77, v78, v79, v80, v81, v88);
        v86 = OUTLINED_FUNCTION_125(v82, v83, v84, v85);

        *(v68 + 14) = v86;
        OUTLINED_FUNCTION_183(&dword_261F5B000, v67, v66, "%{public}s: Pairing session of kind %{public}s succeeded");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        v87 = OUTLINED_FUNCTION_8_2();
        MEMORY[0x266724180](v87);
      }

      sub_261FB91F4(a1);
    }
  }

  else
  {
    v7 = sub_26203A47C();
    if (qword_28108B600 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    v8 = qword_28108B610;
    if (os_log_type_enabled(qword_28108B610, v7))
    {
      OUTLINED_FUNCTION_57_1();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_56();
      v89 = swift_slowAlloc();
      OUTLINED_FUNCTION_137(4.8752e-34);
      sub_261F67FE4(v10, v11, &v89);
      OUTLINED_FUNCTION_47_1();

      *(v9 + 4) = v2;
      *(v9 + 12) = 2082;
      v12 = a2;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A80, &qword_262040430);
      v21 = OUTLINED_FUNCTION_181(v13, v14, v15, v16, v17, v18, v19, v20, a2);
      sub_261F67FE4(v21, v22, &v89);
      OUTLINED_FUNCTION_47_1();

      *(v9 + 14) = v2;
      OUTLINED_FUNCTION_183(&dword_261F5B000, v8, v7, "%{public}s: Received completion with error=%{public}s from pairing session but ignoring since that is no longer active session");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
      v23 = OUTLINED_FUNCTION_8_2();
      MEMORY[0x266724180](v23);
    }
  }
}

void sub_261FB8EE8(void *a1)
{
  OUTLINED_FUNCTION_35_1();
  if (v3 < 0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_3_5();
    sub_26203AC0C();
    OUTLINED_FUNCTION_85_0();

    if ((v1 & 1) == 0)
    {
      return;
    }
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v4 = *(v1 + 128);
  v5 = *(v1 + 168);
  if ((v5 - 1) >= 2)
  {
    if (v5 == 4 && v4 == 3 && (*(v1 + 144) | *(v1 + 136) | *(v1 + 152) | *(v1 + 160)) == 0)
    {
      v40 = *(v1 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__peerDeviceOptions);
      if (v40 == 2 || (v40 & 1) == 0)
      {
        __src[0] = 1;
        sub_261F65D98(__src);
      }

      else
      {
        OUTLINED_FUNCTION_55_1();
        LOBYTE(__src[5]) = 4;
        sub_261F68720(__src, v41, v42, v43, v44, v45, v46, v47, v53, v56, v57, __dst[0], __dst[1], __dst[2], __dst[3], SHIDWORD(__dst[3]), __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], 5, __src[1]);
        *&v48 = OUTLINED_FUNCTION_55_1();
        *&__src[5] = v48;
        *&__src[7] = v48;
        __src[0] = v49;
        __src[9] = 0xC000000000000000;
        memset(&__src[10], 0, 17);
        sub_261FBA7C0(__src);
        memcpy(__dst, __src, 0x82uLL);
        OUTLINED_FUNCTION_58_1();
        sub_261FABDA0(v50, v51, v52);
        sub_261FA9C1C();
      }
    }

    else
    {
      OUTLINED_FUNCTION_31_2();
      __src[3] = v36;
      __src[0] = 0xD00000000000002FLL;
      __src[1] = v37;
      LOBYTE(__src[4]) = 1;
      sub_261F65C5C();
      OUTLINED_FUNCTION_72_0();
      swift_allocError();
      OUTLINED_FUNCTION_67_1();
      *v38 = 1;
      LOBYTE(__dst[0]) = 1;
      ControlChannelConnectionError.Message.format(code:)(__dst);
      OUTLINED_FUNCTION_76();
      sub_261F65C08(__src);
      OUTLINED_FUNCTION_7_3();
      v39 = OUTLINED_FUNCTION_72_1();
      sub_261F65D0C(v39);
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_1();
    LOBYTE(__src[5]) = 4;
    OUTLINED_FUNCTION_2_7();
    v6 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_173(v6, v7, v8, v9, v10, v11, v12, v13, v53);
    sub_261F68720(__src, v14, v15, v16, v17, v18, v19, v20, v54, v56, v57, __dst[0], __dst[1], __dst[2], __dst[3], SHIDWORD(__dst[3]), __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], 5, __src[1]);
    if (v4)
    {
      memset(__src, 0, 32);
      LOBYTE(__src[4]) = 2;
      sub_261F65C5C();
      OUTLINED_FUNCTION_72_0();
      v58 = swift_allocError();
      v21 = a1;
      v23 = v22;
      *v22 = 4;
      LOBYTE(__dst[0]) = 4;
      v24 = v21;
      v25 = ControlChannelConnectionError.Message.format(code:)(__dst);
      sub_261F65C08(__src);
      *(v23 + 8) = v25;
      *(v23 + 24) = 0u;
      *(v23 + 40) = 0u;
      *(v23 + 7) = v21;
      __src[0] = v58;
      __src[1] = 0;
      LOBYTE(__src[2]) = 0;
      v4(__src);
      OUTLINED_FUNCTION_1_9();
      v26 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_173(v26, v27, v28, v29, v30, v31, v32, v33, v55);
      sub_261FB9BAC(__src[0], __src[1], __src[2]);
    }
  }
}

void sub_261FB91F4(void *a1)
{
  v2 = [a1 pairedPeer];
  OUTLINED_FUNCTION_88_0(v1 + 120, &v66);
  v3 = *(v1 + 120);
  *(v1 + 120) = v2;

  v4 = sub_261FE5078(1852399981, 0xE400000000000000);
  sub_261F6A480(v4);
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  v9 = *(v1 + 160);
  v10 = *(v1 + 168);
  if (v10 == 2)
  {
    OUTLINED_FUNCTION_46_1();
    v29 = OUTLINED_FUNCTION_72();
    sub_261F7D45C(v29, v30);
    sub_261F68720(&v56, v31, v32, v33, v34, v35, v36, v37, v50, v52, v53, v54, v55, v56, v57, SHIDWORD(v57), v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
    if (!v5)
    {
      return;
    }

    v56 = 0;
    v57 = 0;
    v58 = 0x80;
    v38 = OUTLINED_FUNCTION_72();
    sub_261F7D45C(v38, v39);
    v5(&v56);
    OUTLINED_FUNCTION_12_1();
    sub_261F68B30(v5, v6, v7, v8, v9, 2, sub_261F99050, sub_261F6ADEC, v40);
    v51 = v1;
    v23 = OUTLINED_FUNCTION_24_2();
    v28 = 2;
    goto LABEL_7;
  }

  if (v10 == 1)
  {
    OUTLINED_FUNCTION_46_1();
    v11 = OUTLINED_FUNCTION_72();
    sub_261F7D45C(v11, v12);
    sub_261F68720(&v56, v13, v14, v15, v16, v17, v18, v19, v50, v52, v53, v54, v55, v56, v57, SHIDWORD(v57), v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
    if (!v5)
    {
      return;
    }

    v56 = 0;
    v57 = 0;
    v58 = 0x80;
    v20 = OUTLINED_FUNCTION_72();
    sub_261F7D45C(v20, v21);
    v5(&v56);
    OUTLINED_FUNCTION_12_1();
    sub_261F68B30(v5, v6, v7, v8, v9, 1, sub_261F99050, sub_261F6ADEC, v22);
    v51 = v1;
    v23 = OUTLINED_FUNCTION_24_2();
    v28 = 1;
LABEL_7:
    sub_261F68B30(v23, v24, v25, v26, v27, v28, sub_261F99050, sub_261F6ADEC, v51);
    return;
  }

  OUTLINED_FUNCTION_51_1();
  if (v41 < 0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_3_5();
    sub_26203AC0C();
    OUTLINED_FUNCTION_85_0();

    if ((v1 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_7_2();
  v42 = swift_beginAccess();
  if (*(v1 + 40))
  {
LABEL_13:
    OUTLINED_FUNCTION_46_1();
    sub_261F68720(&v56, v43, v44, v45, v46, v47, v48, v49, v50, v52, v53, v54, v55, v56, v57, SHIDWORD(v57), v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
    sub_261FA9C1C();
    return;
  }

  sub_261FB004C(v42);
}

void sub_261FB9508()
{
  OUTLINED_FUNCTION_35_1();
  if (v3 < 0)
  {
    sub_26203A48C();
    if (qword_28108B600 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    if (OUTLINED_FUNCTION_136())
    {
      OUTLINED_FUNCTION_42_1();
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_30();
      v15 = swift_slowAlloc();
      v30[0] = v15;
      *v14 = 136446210;
      sub_261F666D8();
      sub_261F67FE4(v16, v17, v30);
      OUTLINED_FUNCTION_65();

      *(v14 + 4) = v1;
      OUTLINED_FUNCTION_29_4(&dword_261F5B000, v18, v19, "%{public}s: Ignoring unexpected unpaired message from device");
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      v20 = OUTLINED_FUNCTION_8_2();
      MEMORY[0x266724180](v20);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180](v21);
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_7_2();
    swift_beginAccess();
    if (*(v0 + 168) == 4 && *(v0 + 128) == 4)
    {
      OUTLINED_FUNCTION_22_3(*(v0 + 152), *(v0 + 136));
      if (!v4)
      {
        OUTLINED_FUNCTION_88_0(v0 + 120, v31);
        v5 = *(v0 + 120);
        *(v0 + 120) = 0;

        sub_261F6A480(0);
        OUTLINED_FUNCTION_14_4();
        sub_261F68720(v6, v7, v8, v9, v10, v11, v12, v13, 5, v30[1], v30[2], v30[3], v30[4], v30[5], v31[0], v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, vars0, vars8);
      }
    }
  }

  else
  {
    sub_26203A48C();
    if (qword_28108B600 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    if (OUTLINED_FUNCTION_136())
    {
      OUTLINED_FUNCTION_42_1();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_30();
      v23 = swift_slowAlloc();
      v30[0] = v23;
      *v22 = 136446210;
      sub_261F666D8();
      sub_261F67FE4(v24, v25, v30);
      OUTLINED_FUNCTION_163();

      *(v22 + 4) = v2;
      OUTLINED_FUNCTION_29_4(&dword_261F5B000, v26, v27, "%{public}s: Invalidating control channel in response to unpair message from host as this channel does not support PairSetup");
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      v28 = OUTLINED_FUNCTION_8_2();
      MEMORY[0x266724180](v28);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180](v29);
    }

    v30[0] = 0;
    sub_261F65D98(v30);
  }
}

uint64_t sub_261FB972C()
{
  sub_26203ADDC();
  MEMORY[0x266723290](v0);
  return sub_26203AE0C();
}

void sub_261FB9828()
{
  OUTLINED_FUNCTION_66_1();
  if (v3)
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

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B18, &qword_262040348);
    v9 = OUTLINED_FUNCTION_124();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 8);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v7] <= v11)
    {
      memmove(v11, v12, 8 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v7);
  }
}

void sub_261FB991C()
{
  OUTLINED_FUNCTION_66_1();
  if (v6)
  {
    OUTLINED_FUNCTION_51_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_64_1();
      if (v7)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B08, &qword_262040338);
    v4 = 24;
    v10 = OUTLINED_FUNCTION_103(v9);
    v11 = _swift_stdlib_malloc_size(v10);
    OUTLINED_FUNCTION_40_1(v11);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_133();
  if (v1)
  {
    if (v10 != v0 || v5 + 24 * v2 <= v4)
    {
      v13 = OUTLINED_FUNCTION_39_1();
      memmove(v13, v14, v15);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B10, &qword_262040340);
    OUTLINED_FUNCTION_39_1();
    swift_arrayInitWithCopy();
  }
}

void sub_261FB9A10()
{
  OUTLINED_FUNCTION_66_1();
  if (v6)
  {
    OUTLINED_FUNCTION_51_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_64_1();
      if (v7)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9720, &qword_26203EB70);
    v4 = 48;
    v10 = OUTLINED_FUNCTION_103(v9);
    v11 = _swift_stdlib_malloc_size(v10);
    OUTLINED_FUNCTION_40_1(v11);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_133();
  if (v1)
  {
    if (v10 != v0 || v5 + 48 * v2 <= v4)
    {
      v13 = OUTLINED_FUNCTION_39_1();
      memmove(v13, v14, v15);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9910, &unk_26203EF00);
    OUTLINED_FUNCTION_39_1();
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_261FB9B04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_97(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6_1();
  v5 = OUTLINED_FUNCTION_47();
  v6(v5);
  return v4;
}

id sub_261FB9B50(id result)
{
  if (result != 6)
  {
    return sub_261F68250(result);
  }

  return result;
}

uint64_t sub_261FB9B60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_97(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6_1();
  v5 = OUTLINED_FUNCTION_47();
  v6(v5);
  return v4;
}

void sub_261FB9BAC(id a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0x3Fu)
  {
  }
}

void sub_261FB9C28()
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A70, &qword_2620402C8);
    v7 = OUTLINED_FUNCTION_124();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_134(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_165();
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_261FB9CF4()
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A68, &qword_2620402C0);
    v7 = OUTLINED_FUNCTION_124();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_134(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_165();
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_261FB9DFC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_51_0();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_64_1();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_49_0();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_261FBA350(v15, v12, a5, a6, a7);
  v17 = *(a8(0) - 8);
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    sub_261FBA5AC(a4 + v18, v15, v16 + v18, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_261FB9F34()
{
  OUTLINED_FUNCTION_66_1();
  if (v3)
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

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A48, &qword_2620402B0);
    v9 = OUTLINED_FUNCTION_124();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_66();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_261FBA008()
{
  OUTLINED_FUNCTION_66_1();
  if (v6)
  {
    OUTLINED_FUNCTION_51_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_64_1();
      if (v7)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9A30, &qword_26203E5E8);
    v4 = 40;
    v10 = OUTLINED_FUNCTION_103(v9);
    v11 = _swift_stdlib_malloc_size(v10);
    OUTLINED_FUNCTION_40_1(v11);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_133();
  if (v1)
  {
    if (v10 != v0 || v5 + 40 * v2 <= v4)
    {
      v13 = OUTLINED_FUNCTION_39_1();
      memmove(v13, v14, v15);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
    OUTLINED_FUNCTION_39_1();
    swift_arrayInitWithCopy();
  }
}

void sub_261FBA0FC()
{
  OUTLINED_FUNCTION_66_1();
  if (v6)
  {
    OUTLINED_FUNCTION_51_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_64_1();
      if (v7)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9988, &qword_26203F7C8);
    v9 = OUTLINED_FUNCTION_124();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_66();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_133();
  if (v1)
  {
    if (v9 != v0 || v5 + 16 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_39_1();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
    OUTLINED_FUNCTION_39_1();
    swift_arrayInitWithCopy();
  }
}

void sub_261FBA200()
{
  OUTLINED_FUNCTION_66_1();
  if (v6)
  {
    OUTLINED_FUNCTION_51_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_64_1();
      if (v7)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    v11 = OUTLINED_FUNCTION_124();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_66();
    v11[2] = v2;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_133();
  if (v1)
  {
    if (v11 != v0 || v5 + 16 * v2 <= v4)
    {
      v14 = OUTLINED_FUNCTION_39_1();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9648, &qword_26203E620);
    OUTLINED_FUNCTION_39_1();
    swift_arrayInitWithCopy();
  }
}

void *sub_261FBA2E8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9988, &qword_26203F7C8);
  v4 = OUTLINED_FUNCTION_124();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_66();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_261FBA350(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

const void *sub_261FBA44C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A40, &qword_26203E5F8);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  OUTLINED_FUNCTION_166(v4);
  return v3;
}

const void *sub_261FBA4C4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9A30, &qword_26203E5E8);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  OUTLINED_FUNCTION_166(v4);
  return v3;
}

char *sub_261FBA53C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_4_3(a3, result);
  }

  return result;
}

char *sub_261FBA55C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_4_3(a3, result);
  }

  return result;
}

void sub_261FBA5AC(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_6_1(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_160();

    MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_160();

    MEMORY[0x2821FE820](v9);
  }
}

char *sub_261FBA66C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_4_3(a3, result);
  }

  return result;
}

char *sub_261FBA694(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_4_3(a3, result);
  }

  return result;
}

void *sub_261FBA6D8(void *result, unint64_t a2)
{
  switch((a2 >> 60) & 3)
  {
    case 1uLL:
      sub_261F6BFFC(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      goto LABEL_7;
    case 2uLL:
      v2 = a2 & 0xCFFFFFFFFFFFFFFFLL;

      result = sub_261F6BFFC(result, v2);
      break;
    case 3uLL:
      return result;
    default:

LABEL_7:

      break;
  }

  return result;
}

uint64_t objectdestroy_9Tm()
{

  OUTLINED_FUNCTION_107();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

unint64_t sub_261FBA938()
{
  result = qword_27FEF99E0;
  if (!qword_27FEF99E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF99E0);
  }

  return result;
}

unint64_t sub_261FBA990()
{
  result = qword_27FEF99E8;
  if (!qword_27FEF99E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF99E8);
  }

  return result;
}

uint64_t sub_261FBA9E4(uint64_t a1)
{
  result = sub_261FBAA3C(&qword_28108C0D0, type metadata accessor for ControlChannelConnection, &protocol conformance descriptor for ControlChannelConnection);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_261FBAA3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261FBAAF0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261FBAB44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void sub_261FBABD8(uint64_t a1)
{
  sub_261F971AC();
  if (v1 <= 0x3F)
  {
    sub_261FBAC74(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_261FBAC74(uint64_t a1)
{
  if (!qword_27FEF9A10)
  {
    sub_262039A4C();
    v1 = sub_26203A6DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27FEF9A10);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice19StartTunnelResponseV15ProtocolOptionsO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261FBACF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261FBAD48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_261FBAD98(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_261FBAEAC(uint64_t a1)
{
  result = sub_26203A03C();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

_BYTE *sub_261FBBD80(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ControlChannelConnection.Options(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFF && *(a1 + 5))
    {
      v2 = *a1 + 16382;
    }

    else
    {
      v2 = ((*a1 >> 1) & 0x3F00 | *a1 & 0xFE | (*a1 >> 15) & 1) ^ 0x3FFF;
      if (v2 >= 0x3FFE)
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

uint64_t storeEnumTagSinglePayload for ControlChannelConnection.Options(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 4) = 0;
    *result = a2 - 0x3FFF;
    if (a3 >= 0x3FFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = 0;
      *result = -a2 & 0xFE | (-2 * a2) & 0x7E00 | (a2 << 15);
    }
  }

  return result;
}

unsigned int *sub_261FBBF48(unsigned int *result)
{
  v1 = *result;
  v2 = v1 & 0xFFFFFFFFFFFF7FFFLL | (*(result + 4) << 32);
  *result = v1 & 0xFFFF7FFF;
  *(result + 4) = BYTE4(v2);
  return result;
}

uint64_t getEnumTagSinglePayload for ControlChannelConnection.Options.Host(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ControlChannelConnection.Options.Host(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ControlChannelConnection.Options.Device(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[5])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
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

uint64_t storeEnumTagSinglePayload for ControlChannelConnection.Options.Device(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_261FBC1A4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261FBC1FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_261FBC25C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_261FBC29C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ControlChannelConnection.Options.Device.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ControlChannelConnection.Options.Host.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_261FBC478()
{
  result = qword_27FEF9A18;
  if (!qword_27FEF9A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9A18);
  }

  return result;
}

unint64_t sub_261FBC4D0()
{
  result = qword_27FEF9A20;
  if (!qword_27FEF9A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9A20);
  }

  return result;
}

unint64_t sub_261FBC528()
{
  result = qword_28108C128;
  if (!qword_28108C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C128);
  }

  return result;
}

unint64_t sub_261FBC580()
{
  result = qword_28108C130;
  if (!qword_28108C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C130);
  }

  return result;
}

unint64_t sub_261FBC5D8()
{
  result = qword_28108C0F8;
  if (!qword_28108C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C0F8);
  }

  return result;
}

unint64_t sub_261FBC630()
{
  result = qword_28108C100;
  if (!qword_28108C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C100);
  }

  return result;
}

id sub_261FBC684(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

unint64_t sub_261FBC69C()
{
  result = qword_27FEF9AA8;
  if (!qword_27FEF9AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9AA8);
  }

  return result;
}

uint64_t sub_261FBC6F8(uint64_t a1)
{
  if (*(a1 + 121) <= 5u)
  {
    return *(a1 + 121);
  }

  else
  {
    return (*a1 + 6);
  }
}

void sub_261FBC778(uint64_t result, unint64_t a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, unint64_t a10, uint64_t a11, unint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, __int16 a17)
{
  if ((a17 & 0x2000) != 0)
  {
    sub_261FBC7B0(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17 & 0xDFFF);
  }

  else
  {
    sub_261F6BFFC(result, a2);
  }
}

void sub_261FBC7B0(void *result, void *a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, unint64_t a10, uint64_t a11, unint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, unsigned __int16 a17)
{
  switch(a17 >> 14)
  {
    case 1:

      sub_261FBA6D8(result, a2);
      break;
    case 2:

      sub_261FBC98C(a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, (a17 & 0x3FFF) >> 8);
      break;
    case 3:
      return;
    default:

      sub_261FBC878(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
      break;
  }
}

void sub_261FBC878(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12)
{
  switch(a10 >> 62)
  {
    case 1uLL:

      break;
    case 2uLL:

      sub_261F6ADEC(a11, a12);
      break;
    case 3uLL:
      return;
    default:
      sub_261F6BFFC(a2, a3);

      break;
  }
}

void sub_261FBC98C(void *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, char a16, char a17)
{
  switch(a17)
  {
    case 0:

      sub_261F6AABC(a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
      break;
    case 1:

      sub_261F6ADEC(a11, a12);
      break;
    case 2:
      sub_261F6ADEC(a2, a3);

      break;
    case 3:

      sub_261F6BFFC(a1, a2);
      break;
    case 4:

      a1 = a8;
      goto LABEL_15;
    case 5:
LABEL_15:

      break;
    default:
      return;
  }
}

id sub_261FBCCF0(id result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  switch((a2 >> 60) & 3)
  {
    case 1uLL:
      sub_261F6B73C(result, a2 & 0xCFFFFFFFFFFFFFFFLL);

      break;
    case 2uLL:
      v4 = a2 & 0xCFFFFFFFFFFFFFFFLL;

      result = sub_261F6B73C(result, v4);
      break;
    case 3uLL:
      return result;
    default:
      v5 = result;

      result = v5;
      break;
  }

  return result;
}

unint64_t sub_261FBCDBC()
{
  result = qword_28108C248;
  if (!qword_28108C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C248);
  }

  return result;
}

uint64_t objectdestroy_172Tm()
{

  sub_261FBC778(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));

  return MEMORY[0x2821FE8E8](v0, 170, 7);
}

double sub_261FBCF84(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1536;
  return result;
}

double sub_261FBCFC4(uint64_t a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 121) = 6;
  return result;
}

unint64_t sub_261FBD088()
{
  result = qword_28108C0E0;
  if (!qword_28108C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C0E0);
  }

  return result;
}

unint64_t sub_261FBD20C()
{
  result = qword_28108C258;
  if (!qword_28108C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C258);
  }

  return result;
}

uint64_t sub_261FBD260(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartTunnelResponse(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_261FBD2C4(uint64_t a1)
{
  started = type metadata accessor for StartTunnelResponse(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

unint64_t sub_261FBD334()
{
  result = qword_28108CF90;
  if (!qword_28108CF90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28108CF90);
  }

  return result;
}

void sub_261FBD390(uint64_t a1, void *a2, SEL *a3)
{
  v5 = sub_26203A0BC();

  [a2 *a3];
}

uint64_t objectdestroy_219Tm()
{

  OUTLINED_FUNCTION_46();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void sub_261FBD4A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26203A18C();

  [a3 setFixedPIN_];
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_29_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_50_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_54_1(uint64_t a1)
{

  return sub_26203AC0C();
}

double OUTLINED_FUNCTION_55_1()
{
  result = 0.0;
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  return result;
}

void OUTLINED_FUNCTION_74_1(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{

  sub_261FB5DF0(a1, a2, a3, a4, 0, 0xF000000000000000, 0, 0, a9, a10, a11);
}

double OUTLINED_FUNCTION_87_0(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21)
{
  result = *&a20;
  a2[2] = a20;
  a2[3] = a21;
  *a2 = a18;
  a2[1] = a19;
  return result;
}

__n128 OUTLINED_FUNCTION_92()
{
  *(v1 + 32) = *(v0 + 48);
  result = *(v0 + 80);
  v3 = *(v0 + 96);
  *(v1 + 64) = result;
  *(v1 + 80) = v3;
  return result;
}

void *OUTLINED_FUNCTION_104(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va1, a25);
  va_start(__srca, a25);
  __src = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  v39 = va_arg(va1, void);
  v40 = va_arg(va1, void);
  v41 = va_arg(va1, void);
  v42 = va_arg(va1, void);
  v43 = va_arg(va1, void);
  v44 = va_arg(va1, void);

  return memcpy(&a9, __srca, 0x82uLL);
}

uint64_t OUTLINED_FUNCTION_105()
{

  return sub_26203A18C();
}

uint64_t OUTLINED_FUNCTION_110(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26203A0FC();
}

unint64_t OUTLINED_FUNCTION_113(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_261F67FE4(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_114()
{
}

void OUTLINED_FUNCTION_118()
{
  *(v2 + 16) = v0;
  v5 = v2 + 16 * v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = v4;
}

uint64_t OUTLINED_FUNCTION_134(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 32);
  return result;
}

BOOL OUTLINED_FUNCTION_136()
{

  return os_log_type_enabled(v1, v0);
}

void OUTLINED_FUNCTION_137(float a1)
{
  *v1 = a1;

  sub_261F666D8();
}

uint64_t OUTLINED_FUNCTION_140_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26203AD3C();
}

uint64_t OUTLINED_FUNCTION_141(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26203AE3C();
}

uint64_t OUTLINED_FUNCTION_143(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return sub_261FBCBCC(&a65, &a18);
}

void OUTLINED_FUNCTION_145(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t), void (*a8)(uint64_t), void (*a9)(uint64_t, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  sub_261F68B30(a15, a16, v18, v17, v16, 3, a7, a8, a9);
}

id OUTLINED_FUNCTION_146_0()
{

  return [v2 (v1 + 3497)];
}

uint64_t OUTLINED_FUNCTION_166(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

void OUTLINED_FUNCTION_170(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 0x16u);
}

void OUTLINED_FUNCTION_171(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_172()
{

  return sub_26203A0FC();
}

void OUTLINED_FUNCTION_173(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t), void (*a8)(uint64_t), void (*a9)(uint64_t, uint64_t))
{

  sub_261F68B30(a1, a2, v11, v9, v10, v12, a7, a8, a9);
}

uint64_t OUTLINED_FUNCTION_174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_176(uint64_t a1)
{

  return sub_26203A8EC();
}

unint64_t OUTLINED_FUNCTION_177()
{

  return sub_261F67388();
}

_OWORD *OUTLINED_FUNCTION_178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29)
{

  return sub_261F8D184(&a29, &STACK[0x260]);
}

uint64_t OUTLINED_FUNCTION_180()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_182()
{

  JUMPOUT(0x266722710);
}

unint64_t OUTLINED_FUNCTION_184(uint64_t a1, unint64_t a2)
{

  return sub_261F67FE4(a1, a2, (v2 - 248));
}

uint64_t OUTLINED_FUNCTION_185(_OWORD *a1, _OWORD *a2)
{
  sub_261F8D184(a1, a2);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_261FBDBF0()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEF9B20 = result;
  return result;
}

uint64_t generatePairingKeyPair()()
{
  v9[0] = static Data.randomBytes(ofLength:)(0x20uLL);
  v9[1] = v0;
  v8[0] = static Data.randomBytes(ofLength:)(0x20uLL);
  v8[1] = v1;
  sub_261FBF824(v9, v8);
  v2 = v9[0];
  v3 = OUTLINED_FUNCTION_72();
  sub_261F6B73C(v3, v4);
  v5 = OUTLINED_FUNCTION_72();
  sub_261F6BFFC(v5, v6);
  return v2;
}

uint64_t InProcessIRKGenerator.generateIRK(completion:)(void (*a1)(uint64_t))
{
  v7[0] = static Data.randomBytes(ofLength:)(0x10uLL);
  v7[1] = v2;
  sub_261FBFF10(v7);
  v3 = OUTLINED_FUNCTION_72();
  a1(v3);
  v4 = OUTLINED_FUNCTION_72();

  return sub_261F6BFFC(v4, v5);
}

uint64_t InProcessIRKGenerator.generateIRKSync()()
{
  v2[0] = static Data.randomBytes(ofLength:)(0x10uLL);
  v2[1] = v0;
  sub_261FBFF10(v2);
  return v2[0];
}

uint64_t OPACKEncoderCreateData(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  v1 = sub_26203ABFC();
  NSData = OPACKEncoderCreateNSData(v1);
  swift_unknownObjectRelease();
  if (NSData)
  {
    v3 = sub_26203954C();
  }

  else
  {
    sub_26203A1BC();
    v3 = v4;
    v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    OUTLINED_FUNCTION_3_6();
    swift_willThrow();
  }

  return v3;
}

uint64_t OPACKDecode(data:)()
{
  v3 = sub_26203952C();
  v4 = OPACKDecodeNSData(v3);

  if (v4)
  {
    sub_26203A73C();
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_26203A1BC();
    v6 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    OUTLINED_FUNCTION_3_6();
    return swift_willThrow();
  }
}

void RapportIRKGenerator.init(queue:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_261F9B6D0(0, &qword_28108CFB0, 0x277D85C78);
  v3 = sub_262039FEC();
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_74();
  sub_262039FCC();
  v4 = sub_26203A53C();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_74();
  sub_261FC02FC(&qword_28108CFB8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA0A0, &unk_262040360);
  sub_261F7AA80(&qword_28108CFC0, &unk_27FEFA0A0, &unk_262040360);
  sub_26203A75C();
  sub_26203A56C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_74();
  (*(v8 + 104))(v7 - v6, *MEMORY[0x277D85260]);
  v9 = sub_26203A58C();
  if (MEMORY[0x277D44148])
  {
    v10 = v9;
    v11 = objc_allocWithZone(MEMORY[0x277D44148]);
    v12 = v10;
    v13 = [v11 init];
    [v13 setDispatchQueue_];

    *a2 = v13;
    a2[1] = a1;
    a2[2] = v12;
  }

  else
  {
    sub_26203A91C();
    __break(1u);
  }
}

uint64_t RapportIRKGenerator.generateIRK(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_262039FAC();
  OUTLINED_FUNCTION_0();
  v26 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_74();
  v10 = v9 - v8;
  v25 = sub_262039FEC();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74();
  v16 = v15 - v14;
  v17 = *v2;
  v18 = *(v2 + 8);
  v19 = *(v2 + 16);
  v20 = swift_allocObject();
  v20[2] = v17;
  v20[3] = v18;
  v20[4] = v19;
  v20[5] = a1;
  v20[6] = a2;
  aBlock[4] = sub_261FC02EC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261F78F64;
  aBlock[3] = &block_descriptor_2;
  v21 = _Block_copy(aBlock);
  v22 = v17;
  v23 = v18;
  v19;

  sub_262039FCC();
  sub_261FC02FC(&qword_28108B370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
  sub_26203A75C();
  MEMORY[0x266722A20](0, v16, v10, v21);
  _Block_release(v21);
  (*(v26 + 8))(v10, v5);
  (*(v12 + 8))(v16, v25);
}

uint64_t sub_261FBE554(uint64_t a1, uint64_t a2)
{
  v5 = sub_26203A07C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v2;
  v9 = *(v2 + 8);
  v11 = *(v2 + 16);
  *v8 = v11;
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v12 = v11;
  LOBYTE(v11) = sub_26203A0AC();
  result = (*(v6 + 8))(v8, v5);
  if (v11)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    v16 = swift_allocObject();
    v28 = v16;
    *(v16 + 16) = -1;
    v17 = (v16 + 16);
    v18 = swift_allocObject();
    v18[2] = v16;
    v18[3] = v10;
    v18[4] = v9;
    v18[5] = v12;
    v18[6] = a1;
    v18[7] = a2;
    v19 = swift_allocObject();
    v19[2] = v14;
    v19[3] = v15;
    v19[4] = v10;
    v19[5] = v9;
    v29 = sub_261FC0494;
    v19[6] = v12;
    v19[7] = sub_261FC0494;
    v19[8] = v18;
    aBlock[4] = sub_261FC04C8;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26200F09C;
    aBlock[3] = &block_descriptor_20;
    v20 = _Block_copy(aBlock);
    v21 = v10;
    v22 = v9;
    v23 = v12;
    v27 = v21;
    v24 = v22;
    v25 = v23;

    swift_beginAccess();
    notify_register_dispatch("com.apple.rapport.identitiesChanged", v17, v25, v20);
    swift_endAccess();
    _Block_release(v20);
    sub_261FBEB94(v27, v24, v25, v29, v18, v15, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_261FBE884(void *a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a6;
  v26 = a3;
  v13 = sub_262039FAC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_262039FEC();
  v17 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v19 = &v25[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v20 = *(a4 + 16);
  if (v20 != -1)
  {
    notify_cancel(v20);
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a8;
  *(v21 + 24) = a9;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  v22 = v26 & 1;
  *(v21 + 48) = v26 & 1;
  aBlock[4] = sub_261FC07B4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261F78F64;
  aBlock[3] = &block_descriptor_32;
  v23 = _Block_copy(aBlock);

  sub_261FC07E8(a1, a2, v22);
  sub_262039FCC();
  v29 = MEMORY[0x277D84F90];
  sub_261FC02FC(&qword_28108B370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
  sub_26203A75C();
  MEMORY[0x266722A20](0, v19, v16, v23);
  _Block_release(v23);
  (*(v14 + 8))(v16, v13);
  (*(v17 + 8))(v19, v27);
}

void sub_261FBEB94(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a4;
  v13 = sub_26203A07C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v16 = a3;
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v17 = a3;
  v18 = sub_26203A0AC();
  (*(v14 + 8))(v16, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = sub_26203A4AC();
  if (qword_27FEF8608 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_26203969C(v13, &dword_261F5B000, qword_27FEF9B20, "Beginning to fetch IRK from Rapport", 35, 2, MEMORY[0x277D84F90]);
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v20 = v26;
  v19[4] = v17;
  v19[5] = v20;
  v19[6] = a5;
  v19[7] = a6;
  v19[8] = a7;
  aBlock[4] = sub_261FC04DC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261FBF44C;
  aBlock[3] = &block_descriptor_26;
  v21 = _Block_copy(aBlock);
  v22 = a1;
  v23 = a2;
  v24 = v17;

  [v22 getIdentitiesWithFlags:1 completion:v21];
  _Block_release(v21);
}

void sub_261FBEE14(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v59 = a3;
  v16 = sub_26203A07C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v19 = a5;
  (*(v17 + 104))(v19, *MEMORY[0x277D85200], v16);
  v58 = a5;
  LOBYTE(a5) = sub_26203A0AC();
  (*(v17 + 8))(v19, v16);
  if (a5)
  {
    v57 = a4;
    v60 = a6;
    LOBYTE(a4) = sub_26203A4AC();
    if (qword_27FEF8608 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v20 = qword_27FEF9B20;
  if (os_log_type_enabled(qword_27FEF9B20, a4))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v63[0] = v22;
    *v21 = 136315394;
    v62 = a2;
    v23 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A80, &qword_262040430);
    v24 = sub_26203A20C();
    v26 = a7;
    v27 = sub_261F67FE4(v24, v25, v63);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    v62 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B38, &qword_262040438);
    v28 = sub_26203A20C();
    v30 = sub_261F67FE4(v28, v29, v63);

    *(v21 + 14) = v30;
    a7 = v26;
    _os_log_impl(&dword_261F5B000, v20, a4, "Received IRK fetch response from Rapport. Error = %s, identities = %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266724180](v22, -1, -1);
    MEMORY[0x266724180](v21, -1, -1);
  }

  if (a2)
  {
    v31 = a2;
  }

  else
  {
    if (a1 && sub_26200A934(a1))
    {
      sub_26200AA08(0, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x266722C90](0, a1);
      }

      else
      {
        v32 = *(a1 + 32);
      }

      v33 = v32;
      v34 = v60;
      v35 = sub_261FC0744(v32);
      if (v36 >> 60 == 15)
      {
        sub_26203A91C();
        __break(1u);
      }

      else
      {
        v37 = v35;
        v38 = v36;
        v34();
        sub_261F6ADEC(v37, v38);
      }

      return;
    }

    sub_261FC0510();
    v31 = swift_allocError();
    *v39 = 1;
  }

  swift_willThrow();
  swift_beginAccess();
  if (*(a8 + 16) == 1)
  {
    v40 = a2;
    v41 = sub_26203A4AC();
    if (os_log_type_enabled(v20, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v62 = v43;
      *v42 = 136315138;
      v61[1] = v31;
      v44 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
      v45 = sub_26203A20C();
      v47 = sub_261F67FE4(v45, v46, &v62);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_261F5B000, v20, v41, "Second attempt to fetch IRK from Rapport failed. Propagating error to client: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x266724180](v43, -1, -1);
      MEMORY[0x266724180](v42, -1, -1);
    }

    v48 = v31;
    (v60)(v31, 0, 1);
  }

  else
  {
    swift_beginAccess();
    *(a8 + 16) = 1;
    swift_beginAccess();
    v49 = *(a9 + 16);
    v50 = a2;
    if (v49 == 1)
    {
      v51 = sub_26203A4AC();
      if (os_log_type_enabled(v20, v51))
      {
        v52 = swift_slowAlloc();
        v53 = a7;
        v54 = swift_slowAlloc();
        v61[0] = v54;
        *v52 = 136446210;
        *(v52 + 4) = sub_261F67FE4(0xD000000000000023, 0x800000026204F640, v61);
        _os_log_impl(&dword_261F5B000, v20, v51, "Attempting to fetch IRK from Rapport again due to %{public}s notification", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v54);
        v55 = v54;
        a7 = v53;
        MEMORY[0x266724180](v55, -1, -1);
        MEMORY[0x266724180](v52, -1, -1);
      }

      sub_261FBEB94(v59, v57, v58, v60, a7, a8, a9);
    }
  }
}

uint64_t sub_261FBF44C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_261F9B6D0(0, &qword_27FEF9B28, 0x277D441B0);
    v4 = sub_26203A3CC();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_261FBF4F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_26203A4AC();
  if (qword_27FEF8608 != -1)
  {
    swift_once();
  }

  v15 = qword_27FEF9B20;
  if (os_log_type_enabled(qword_27FEF9B20, v14))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_261F67FE4(0xD000000000000023, 0x800000026204F640, v23);
    _os_log_impl(&dword_261F5B000, v15, v14, "Received %{public}s darwin notification", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x266724180](v17, -1, -1);
    MEMORY[0x266724180](v16, -1, -1);
  }

  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    swift_beginAccess();
    if (*(a3 + 16) == 1)
    {
      v18 = sub_26203A4AC();
      if (os_log_type_enabled(v15, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v22 = v20;
        *v19 = 136446210;
        *(v19 + 4) = sub_261F67FE4(0xD000000000000023, 0x800000026204F640, &v22);
        _os_log_impl(&dword_261F5B000, v15, v18, "Attempting to fetch IRK from Rapport again due to %{public}s notification", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v20);
        MEMORY[0x266724180](v20, -1, -1);
        MEMORY[0x266724180](v19, -1, -1);
      }

      sub_261FBEB94(a4, a5, a6, a7, a8, a3, a2);
    }
  }
}

id sub_261FBF774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_26203A18C();

  if (a4)
  {
    v8 = sub_26203A0BC();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

__int128 *sub_261FBF824(uint64_t *a1, uint64_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  v5 = v2;
  switch(v3 >> 62)
  {
    case 1uLL:
      v11 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_261F6BFFC(v4, v3);
      *a1 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      v12 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_11;
      }

      if (v12 < v4)
      {
        goto LABEL_15;
      }

      if (sub_26203937C() && __OFSUB__(v4, sub_2620393AC()))
      {
        goto LABEL_16;
      }

      sub_2620393BC();
      swift_allocObject();
      v13 = sub_26203935C();

      v11 = v13;
LABEL_11:
      if (v12 < v4)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
      }

      v5 = sub_261FC0564(v4, v4 >> 32, v11, a2);

      *a1 = v4;
      a1[1] = v11 | 0x4000000000000000;
      return v5;
    case 2uLL:

      sub_261F6BFFC(v4, v3);
      *&v16 = v4;
      *(&v16 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      sub_26203944C();
      v9 = *(&v16 + 1);
      v10 = sub_261FC0564(*(v16 + 16), *(v16 + 24), *(&v16 + 1), a2);
      *a1 = v16;
      a1[1] = v9 | 0x8000000000000000;
      if (!v2)
      {
        return v10;
      }

      return v5;
    case 3uLL:
      *(&v16 + 7) = 0;
      *&v16 = 0;
      return sub_261FBFB70(a2, &v16, &v16);
    default:
      sub_261F6BFFC(v4, v3);
      *&v16 = v4;
      WORD4(v16) = v3;
      BYTE10(v16) = BYTE2(v3);
      BYTE11(v16) = BYTE3(v3);
      BYTE12(v16) = BYTE4(v3);
      BYTE13(v16) = BYTE5(v3);
      BYTE14(v16) = BYTE6(v3);
      v5 = sub_261FBFB70(a2, &v16, &v16 + BYTE6(v3));
      v8 = DWORD2(v16) | ((WORD6(v16) | (BYTE14(v16) << 16)) << 32);
      *a1 = v16;
      a1[1] = v8;
      return v5;
  }
}

__int128 *sub_261FBFB70(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = a1[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v14 = v4 & 0x3FFFFFFFFFFFFFFFLL;

      sub_261F6BFFC(v5, v4);
      *a1 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      v15 = v5 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_18;
      }

      if (v15 < v5)
      {
        goto LABEL_22;
      }

      if (sub_26203937C() && __OFSUB__(v5, sub_2620393AC()))
      {
        goto LABEL_23;
      }

      sub_2620393BC();
      swift_allocObject();
      v16 = sub_26203935C();

      v14 = v16;
LABEL_18:
      if (v15 < v5)
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
      }

      key_pair = sub_261FC05F8(v5, v5 >> 32, v14, a2);

      *a1 = v5;
      a1[1] = v14 | 0x4000000000000000;
      return key_pair;
    case 2uLL:

      sub_261F6BFFC(v5, v4);
      *&v18 = v5;
      *(&v18 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      key_pair = &v18;
      sub_26203944C();
      v11 = v18;
      v12 = sub_261FC05F8(*(v18 + 16), *(v18 + 24), *(&v18 + 1), a2);
      *a1 = v11;
      a1[1] = *(&v11 + 1) | 0x8000000000000000;
      if (!v3)
      {
        return v12;
      }

      return key_pair;
    case 3uLL:
      *(&v18 + 7) = 0;
      *&v18 = 0;
      result = ccsha512_di();
      if (!result)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return result;
      }

      result = ccrng();
      if (!result)
      {
        goto LABEL_26;
      }

      if (!a2)
      {
        goto LABEL_28;
      }

      return cced25519_make_key_pair();
    default:
      sub_261F6BFFC(v5, v4);
      *&v18 = v5;
      WORD4(v18) = v4;
      BYTE10(v18) = BYTE2(v4);
      BYTE11(v18) = BYTE3(v4);
      BYTE12(v18) = BYTE4(v4);
      BYTE13(v18) = BYTE5(v4);
      BYTE14(v18) = BYTE6(v4);
      result = ccsha512_di();
      if (!result)
      {
        goto LABEL_25;
      }

      result = ccrng();
      if (!result)
      {
        goto LABEL_27;
      }

      if (!a2)
      {
        goto LABEL_29;
      }

      key_pair = cced25519_make_key_pair();
      v10 = DWORD2(v18) | ((WORD6(v18) | (BYTE14(v18) << 16)) << 32);
      *a1 = v18;
      a1[1] = v10;
      return key_pair;
  }
}

uint64_t sub_261FBFF10(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  switch(v1 >> 62)
  {
    case 1uLL:
      v6 = v1 & 0x3FFFFFFFFFFFFFFFLL;

      sub_261F6BFFC(v2, v1);
      *a1 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      v7 = v2 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_10;
      }

      if (v7 < v2)
      {
        goto LABEL_15;
      }

      if (sub_26203937C() && __OFSUB__(v2, sub_2620393AC()))
      {
        goto LABEL_16;
      }

      sub_2620393BC();
      swift_allocObject();
      v8 = sub_26203935C();

      v6 = v8;
LABEL_10:
      if (v7 < v2)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
      }

      sub_261FC0698(v2, v2 >> 32);

      v5 = v6 | 0x4000000000000000;
LABEL_12:
      *a1 = v2;
      a1[1] = v5;
      return result;
    case 2uLL:

      sub_261F6BFFC(v2, v1);
      *a1 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      sub_26203944C();
      result = sub_261FC0698(*(v2 + 16), *(v2 + 24));
      v5 = v1 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
      goto LABEL_12;
    case 3uLL:
      return CryptoHKDF();
    default:
      sub_261F6BFFC(v2, v1);
      LOWORD(v9) = v1;
      BYTE2(v9) = BYTE2(v1);
      HIBYTE(v9) = BYTE3(v1);
      LOBYTE(v10) = BYTE4(v1);
      HIBYTE(v10) = BYTE5(v1);
      result = CryptoHKDF();
      *a1 = v2;
      a1[1] = v9 | ((v10 | (BYTE6(v1) << 16)) << 32);
      return result;
  }
}

uint64_t OPACKEncoderCreateNSData(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x266723590]();

  return v2;
}

uint64_t OPACKDecodeNSData(void *a1)
{
  v1 = a1;
  v2 = OPACKDecodeData();

  return v2;
}

uint64_t sub_261FC02FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for InProcessIRKGenerator(_BYTE *result, int a2, int a3)
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

uint64_t sub_261FC0404(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_261FC0444(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_261FC0510()
{
  result = qword_27FEF9B30;
  if (!qword_27FEF9B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9B30);
  }

  return result;
}

__int128 *sub_261FC0564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = sub_26203937C();
  if (!result)
  {
    goto LABEL_10;
  }

  v8 = result;
  result = sub_2620393AC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v12 = sub_26203939C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  return sub_261FBFB70(a4, v8 + v9, v8 + v9 + v13);
}

uint64_t sub_261FC05F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26203937C();
  if (!result)
  {
    goto LABEL_8;
  }

  result = sub_2620393AC();
  if (__OFSUB__(a1, result))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_26203939C();
  result = ccsha512_di();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = ccrng();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a4)
  {
    return cced25519_make_key_pair();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_261FC0698(uint64_t a1, uint64_t a2)
{
  result = sub_26203937C();
  if (result)
  {
    result = sub_2620393AC();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
    }

    else if (!__OFSUB__(a2, a1))
    {
      sub_26203939C();
      return CryptoHKDF();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_261FC0744(void *a1)
{
  v1 = [a1 deviceIRKData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26203954C();

  return v3;
}

void sub_261FC07A8(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_261F6BFFC(a1, a2);
  }
}

id sub_261FC07E8(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_261F6B73C(a1, a2);
  }
}

uint64_t sub_261FC080C()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_28108B5F0 = result;
  return result;
}

uint64_t static VirtualInterface.maxSupportedPendingPackets.getter()
{
  if (qword_28108B4C0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_7_2();
  v0 = swift_beginAccess();
  OUTLINED_FUNCTION_21_2(v0, v1, v2, v3, v4, v5, v6, v7, v15, v16, v17, v18, v19, v20, v21, v22, v23[0], v23[1], v24);
  v8 = sub_261F83CD4();
  v10 = v9;
  sub_261FC2F14(v23, &qword_27FEF9148, &qword_262040450);
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = 1;
  }

  if (v8 <= 0x400)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1024;
  }

  if (HIDWORD(v8))
  {
    v13 = 32;
  }

  else
  {
    v13 = v12;
  }

  if (v10)
  {
    return 32;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_261FC095C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9148, &qword_262040450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static VirtualInterface.defaultMTU.getter()
{
  if (qword_28108B518 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_7_2();
  v0 = swift_beginAccess();
  OUTLINED_FUNCTION_21_2(v0, v1, v2, v3, v4, v5, v6, v7, v13, v14, v15, v16, v17, v18, v19, v20, v21[0], v21[1], v22);
  v8 = sub_261F83CD4();
  v10 = v9;
  sub_261FC2F14(v21, &qword_27FEF9148, &qword_262040450);
  v11 = v8;
  if (v8 <= 0x500u)
  {
    v11 = 1280;
  }

  if (v10 & 1 | (v8 > 0x3E80))
  {
    return 16000;
  }

  else
  {
    return v11;
  }
}

uint64_t VirtualInterface.__allocating_init(queue:address:netmask:mtu:maxPendingPackets:physicalInterfaceName:)(char *a1, void *a2, void *a3, int a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  VirtualInterface.init(queue:address:netmask:mtu:maxPendingPackets:physicalInterfaceName:)(a1, a2, a3, a4 & 0x1FFFF, a5 | ((HIDWORD(a5) & 1) << 32), a6, a7);
  return v14;
}

uint64_t *VirtualInterface.init(queue:address:netmask:mtu:maxPendingPackets:physicalInterfaceName:)(char *a1, void *a2, void *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v8;
  v10 = v7;
  v175 = a5;
  LODWORD(v176) = a4;
  v182 = a1;
  v187 = a3;
  v13 = *v7;
  v7[20] = 0;
  v7[11] = 0;
  v7[12] = 0;
  v14 = v13;
  if (qword_28108B4A0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v15 = qword_28108B4A8;
  v16 = unk_28108B4B0;
  v17 = byte_28108B4B8;
  if (byte_28108B4B9)
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_261F83BA8(v15, v16, v18 | v17);

  v20 = v182;
  if (v19)
  {
    sub_261FC1624();
    v21 = v10[20];
    v10[20] = v22;
  }

  v181 = v14;
  v23 = sub_261FC1F14(v182);
  if (!v23)
  {

    sub_261F9BCE0();
    v62 = OUTLINED_FUNCTION_1_10();
    OUTLINED_FUNCTION_16_4(v62, v63, v64, v65, v66, v67, v68, v69, v166, v167, v169, v171, v173, v175, v176, v178, v14, v182, v187, v191, v192, v193, v194);
    v70 = sub_261F9D610();
    OUTLINED_FUNCTION_6(v70);
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_12_2();
    sub_26203AD4C();
    swift_willThrow();

    goto LABEL_20;
  }

  v168 = v9;
  v179 = a2;
  v24 = v23;
  result = NEVirtualInterfaceCopyName();
  if (result)
  {
    v26 = result;
    v27 = sub_26203A1BC();
    v29 = v28;

    v195 = 0;

    sub_26203A7CC();

    v193 = 0xD000000000000029;
    v194 = 0x800000026204F720;
    MEMORY[0x266722710](v27, v29);
    sub_26203A21C();

    v30 = os_transaction_create();

    if (!v30)
    {

      sub_261F9BCE0();
      v73 = OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_16_4(v73, v74, v75, v76, v77, v78, v79, v80, v166, v168, v169, v171, v173, v175, v176, v179, v181, v182, v187, v191, v192, v193, v194);
      v81 = sub_261F9D610();
      OUTLINED_FUNCTION_6(v81);
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_12_2();
      sub_26203AD4C();
      swift_willThrow();
      sub_261FC209C(&v195, v27, v29, v24);

      goto LABEL_41;
    }

    v172 = v29;
    v174 = v27;
    v170 = v30;
    if (!a7)
    {
      v82 = sub_26203A4AC();
      v32 = v24;
      v33 = v179;
      if (qword_28108B5E0 != -1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      sub_26203969C(v82, &dword_261F5B000, qword_28108B5F0, "Failed to set delegate interface on virtual interface as physicalInterfaceName is nil", 85, 2, MEMORY[0x277D84F90]);
      goto LABEL_30;
    }

    v31 = sub_26203A4AC();
    v32 = v24;
    v33 = v179;
    if (qword_28108B5E0 != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    v34 = qword_28108B5F0;
    if (os_log_type_enabled(qword_28108B5F0, v31))
    {
      OUTLINED_FUNCTION_42_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_10_2();
      v35 = swift_slowAlloc();
      v193 = v35;
      *(v20 + 4) = OUTLINED_FUNCTION_17_3(4.8751e-34, v35, v36, v37, v38, v39, v40, v41, v42, v166, v168, v170, v172, v174, v175, v176, v179, v181, v182, v187, v191, v192);
      OUTLINED_FUNCTION_30_4(&dword_261F5B000, v34, v31, "Physical interface name is:%{public}s");
      _os_log_impl(v43, v44, v45, v46, v47, v48);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
    }

    v49 = sub_26203A18C();
    v50 = NEVirtualInterfaceSetDelegateInterface();

    if (v50)
    {
      LOBYTE(v51) = sub_26203A4AC();
      if (os_log_type_enabled(v34, v51))
      {
        OUTLINED_FUNCTION_42_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_10_2();
        v52 = swift_slowAlloc();
        v193 = v52;
        v60 = OUTLINED_FUNCTION_17_3(4.8149e-34, v52, v53, v54, v55, v56, v57, v58, v59, v166, v168, v170, v172, v174, v175, v176, v179, v181, v182, v187, v191, v192);

        *(v49 + 4) = v60;
        v61 = "Assigned %s as the delegate interface on virtual interface successfully";
LABEL_28:
        OUTLINED_FUNCTION_30_4(&dword_261F5B000, v34, v51, v61);
        _os_log_impl(v91, v92, v93, v94, v95, v96);
        __swift_destroy_boxed_opaque_existential_0Tm(v52);
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
LABEL_30:
        sub_261F79740(v33, &v193);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B40, &qword_262040458);
        v97 = sub_26203A20C();
        v99 = v98;
        sub_261F79740(v187, &v193);
        v100 = sub_26203A20C();
        v102 = v101;
        v103 = sub_26203A18C();
        v104 = sub_26203A18C();
        v105 = NEVirtualInterfaceAddAddress();

        if (v105)
        {
          a2 = v179;

          if (NEVirtualInterfaceSetRankNever())
          {
            v106 = v187;
            if (NEVirtualInterfaceUpdateAdHocService())
            {
              if ((v176 & 0x10000) != 0)
              {
                static VirtualInterface.defaultMTU.getter();
              }

              if (NEVirtualInterfaceSetMTU())
              {
                if ((v175 & 0x100000000) != 0 || NEVirtualInterfaceSetMaxPendingPackets())
                {
                  v10[2] = v174;
                  v10[3] = v172;
                  sub_261F79740(v179, (v10 + 4));
                  v10[9] = v32;
                  v10[10] = v182;
                  *(v10 + 13) = 0u;
                  *(v10 + 15) = 0u;
                  *(v10 + 17) = 0u;
                  v10[19] = v170;

                  v107 = v182;
                  swift_unknownObjectRetain();
                  sub_261FC221C();
                  swift_unknownObjectRelease();
                  if (v168)
                  {
                    sub_261FC209C(&v195, v174, v172, v32);

                    __swift_destroy_boxed_opaque_existential_0Tm(v187);
                    __swift_destroy_boxed_opaque_existential_0Tm(v179);
                  }

                  else
                  {

                    __swift_destroy_boxed_opaque_existential_0Tm(v187);
                    __swift_destroy_boxed_opaque_existential_0Tm(v179);
                  }

                  return v10;
                }

                sub_261F9BCE0();
                v154 = OUTLINED_FUNCTION_1_10();
                OUTLINED_FUNCTION_16_4(v154, v155, v156, v157, v158, v159, v160, v161, v166, v168, v170, v172, v174, v175, v176, v179, v181, v182, v187, v191, v192, v193, v194);
                v162 = sub_261F9D610();
                OUTLINED_FUNCTION_6(v162);
              }

              else
              {

                sub_261F9BCE0();
                v145 = OUTLINED_FUNCTION_1_10();
                OUTLINED_FUNCTION_16_4(v145, v146, v147, v148, v149, v150, v151, v152, v166, v168, v170, v172, v174, v175, v176, v179, v181, v182, v187, v191, v192, v193, v194);
                v153 = sub_261F9D610();
                OUTLINED_FUNCTION_6(v153);
                OUTLINED_FUNCTION_15_3();
                OUTLINED_FUNCTION_5_4();
              }

              OUTLINED_FUNCTION_12_2();
              sub_26203AD4C();
              swift_willThrow();
              swift_unknownObjectRelease();
              v163 = OUTLINED_FUNCTION_13_2();
              sub_261FC209C(v163, v164, v165, v32);

              __swift_destroy_boxed_opaque_existential_0Tm(v190);
              v72 = a2;
LABEL_42:
              __swift_destroy_boxed_opaque_existential_0Tm(v72);
              sub_261F665E4(v10[11], v10[12]);

              swift_deallocPartialClassInstance();
              return v10;
            }

            sub_261F9BCE0();
            v133 = OUTLINED_FUNCTION_1_10();
            OUTLINED_FUNCTION_16_4(v133, v134, v135, v136, v137, v138, v139, v140, v166, v168, v170, v172, v174, v175, v176, v179, v181, v182, v187, v191, v192, v193, v194);
            v141 = sub_261F9D610();
            OUTLINED_FUNCTION_6(v141);
            OUTLINED_FUNCTION_15_3();
            OUTLINED_FUNCTION_5_4();
            OUTLINED_FUNCTION_12_2();
            sub_26203AD4C();
            swift_willThrow();
            swift_unknownObjectRelease();
            v142 = OUTLINED_FUNCTION_13_2();
            sub_261FC209C(v142, v143, v144, v32);

            v71 = v106;
LABEL_21:
            __swift_destroy_boxed_opaque_existential_0Tm(v71);
            v72 = a2;
            goto LABEL_42;
          }

          sub_261F9BCE0();
          v121 = OUTLINED_FUNCTION_1_10();
          OUTLINED_FUNCTION_16_4(v121, v122, v123, v124, v125, v126, v127, v128, v166, v168, v170, v172, v174, v175, v176, v179, v181, v182, v187, v191, v192, v193, v194);
          v129 = sub_261F9D610();
          OUTLINED_FUNCTION_6(v129);
          OUTLINED_FUNCTION_15_3();
          OUTLINED_FUNCTION_5_4();
          OUTLINED_FUNCTION_12_2();
          sub_26203AD4C();
          swift_willThrow();
          swift_unknownObjectRelease();
          v130 = OUTLINED_FUNCTION_13_2();
          sub_261FC209C(v130, v131, v132, v32);

LABEL_20:
          v71 = v188;
          goto LABEL_21;
        }

        v177 = sub_261F9BCE0();
        OUTLINED_FUNCTION_31_3();
        v108 = sub_26203AD3C();
        OUTLINED_FUNCTION_16_4(v108, v109, v110, v111, v112, v113, v114, v115, v166, v168, v170, v172, v174, v175, v177, v179, v181, v182, v187, v191, v192, v193, v194);
        sub_26203A7CC();
        MEMORY[0x266722710](0xD000000000000017, 0x800000026204F8D0);
        MEMORY[0x266722710](v97, v99);

        MEMORY[0x266722710](0xD000000000000010, 0x800000026204F8F0);
        MEMORY[0x266722710](v100, v102);

        v116 = OUTLINED_FUNCTION_22(0x6F742027u);
        MEMORY[0x266722710](v116, v117 & 0xFFFFFFFFFFFFLL | 0xEF2E000000000000);
        sub_261F9D610();
        OUTLINED_FUNCTION_20_3();
        swift_allocError();
        sub_26203AD4C();
        swift_willThrow();
        swift_unknownObjectRelease();
        v118 = OUTLINED_FUNCTION_13_2();
        sub_261FC209C(v118, v119, v120, v32);

LABEL_41:
        __swift_destroy_boxed_opaque_existential_0Tm(v189);
        v72 = v180;
        goto LABEL_42;
      }
    }

    else
    {
      v51 = sub_26203A49C();
      if (os_log_type_enabled(v34, v51))
      {
        OUTLINED_FUNCTION_42_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_10_2();
        v52 = swift_slowAlloc();
        v193 = v52;
        v90 = OUTLINED_FUNCTION_17_3(4.8149e-34, v52, v83, v84, v85, v86, v87, v88, v89, v166, v168, v170, v172, v174, v175, v176, v179, v181, v182, v187, v191, v192);

        *(v49 + 4) = v90;
        v61 = "Failed to set %s as the delegate interface on virtual interface";
        goto LABEL_28;
      }
    }

    goto LABEL_30;
  }

  __break(1u);
  return result;
}

void sub_261FC1624()
{
  OUTLINED_FUNCTION_96();
  v87 = v1;
  v88 = v0;
  sub_26203A1FC();
  OUTLINED_FUNCTION_0();
  v92 = v3;
  v93 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_74();
  v91 = v5 - v4;
  sub_26203A4CC();
  OUTLINED_FUNCTION_0();
  v89 = v7;
  v90 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_74();
  v94 = (v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA4B0, &unk_262045270);
  v11 = OUTLINED_FUNCTION_40(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v80 - v12;
  v14 = sub_26203942C();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v19);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v80 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v86 = &v80 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v80 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v80 - v29;
  v31 = [objc_opt_self() defaultManager];
  v32 = [v31 URLsForDirectory:13 inDomains:1];

  v33 = sub_26203A3CC();
  sub_261FD45F4(v33);

  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_261FC2F14(v13, &unk_27FEFA4B0, &unk_262045270);
    v34 = sub_26203A48C();
    if (qword_28108B5E0 != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    sub_26203969C(v34, &dword_261F5B000, qword_28108B5F0, "Failed to find caches directory to create packet tracing logger", 63, 2, MEMORY[0x277D84F90]);
    goto LABEL_5;
  }

  v81 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v23;
  v84 = *(v16 + 32);
  v85 = v16;
  v84(v30, v13, v14);
  v99 = 0;
  v100 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B40, &qword_262040458);
  sub_26203A8CC();
  MEMORY[0x266722710](0x2E6C656E6E75742DLL, 0xEB00000000676F6CLL);
  v97 = 58;
  v98 = 0xE100000000000000;
  v95 = 45;
  v96 = 0xE100000000000000;
  sub_261FC2E54();
  v83 = v14;
  OUTLINED_FUNCTION_7_2();
  sub_26203A70C();

  v88 = v30;
  sub_26203940C();
  (*(v89 + 104))(v94, *MEMORY[0x277D85218], v90);
  v99 = sub_26203941C();
  v100 = v35;
  v36 = v91;
  sub_26203A1EC();
  v37 = sub_26203A71C();
  (*(v92 + 8))(v36, v93);

  if (v37)
  {

    sub_261F9B6D0(0, &qword_27FEFA4C0, 0x277D85C70);
    v38 = v86;
    v39 = v85 + 16;
    v40 = v83;
    v93 = *(v85 + 16);
    v93(v86, v28, v83);
    v41 = (*(v39 + 64) + 16) & ~*(v39 + 64);
    v42 = swift_allocObject();
    v84((v42 + v41), v38, v40);
    v43 = v87;
    v44 = sub_26203A4FC();

    v45 = sub_26203A48C();
    v46 = v40;
    if (v44)
    {
      if (qword_28108B5E0 != -1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      v47 = qword_28108B5F0;
      v48 = v82;
      v49 = OUTLINED_FUNCTION_26_4();
      v50(v49);
      if (os_log_type_enabled(v47, v45))
      {
        OUTLINED_FUNCTION_42_1();
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v99 = v52;
        *v51 = 136315138;
        OUTLINED_FUNCTION_11();
        sub_261F7AA38(v53, v54, MEMORY[0x277CC9290]);
        LODWORD(v93) = v45;
        v55 = sub_26203ABAC();
        v57 = v56;
        v94 = v28;
        v58 = *(v85 + 8);
        v58(v48, v46);
        v59 = sub_261F67FE4(v55, v57, &v99);

        *(v51 + 4) = v59;
        _os_log_impl(&dword_261F5B000, v47, v93, "Successfully created packet tracing logger at %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v52);
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        v58(v94, v46);
        v58(v88, v46);
LABEL_5:
        OUTLINED_FUNCTION_31_0();
        return;
      }
    }

    else
    {
      if (qword_28108B5E0 != -1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      v60 = qword_28108B5F0;
      v61 = v81;
      v62 = OUTLINED_FUNCTION_26_4();
      v63(v62);
      if (os_log_type_enabled(v60, v45))
      {
        OUTLINED_FUNCTION_42_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_10_2();
        v94 = swift_slowAlloc();
        v99 = v94;
        *v39 = 136315138;
        OUTLINED_FUNCTION_11();
        sub_261F7AA38(v64, v65, MEMORY[0x277CC9290]);
        v66 = v45;
        v67 = sub_26203ABAC();
        v69 = v68;
        v70 = v40;
        v71 = *(v85 + 8);
        v71(v61, v70);
        v72 = sub_261F67FE4(v67, v69, &v99);

        *(v39 + 4) = v72;
        OUTLINED_FUNCTION_30_4(&dword_261F5B000, v60, v66, "Failed to create packet tracing logger at %s");
        _os_log_impl(v73, v74, v75, v76, v77, v78);
        __swift_destroy_boxed_opaque_existential_0Tm(v94);
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        v71(v28, v70);
        v71(v88, v70);
        goto LABEL_5;
      }
    }

    v79 = OUTLINED_FUNCTION_29_0();
    v45(v79);
    (v45)(v28, v40);
    (v45)(v88, v40);
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_261FC1F14(uint64_t a1)
{
  sub_26203A0FC();
  v1 = MEMORY[0x277D839B0];
  v7 = MEMORY[0x277D839B0];
  LOBYTE(v6) = 1;
  sub_261F8D184(&v6, v5);
  swift_isUniquelyReferenced_nonNull_native();
  sub_261FA4260();
  v7 = v1;
  LOBYTE(v6) = 1;
  sub_261F8D184(&v6, v5);
  swift_isUniquelyReferenced_nonNull_native();
  sub_261FA4260();
  v2 = sub_26203A0BC();

  v3 = NEVirtualInterfaceCreateWithOptions();

  result = 0;
  if (v3)
  {
    type metadata accessor for _ManagedOpaqueCFTypeWrapper();
    swift_allocObject();
    return _ManagedOpaqueCFTypeWrapper.init(retainedValue:)(v3);
  }

  return result;
}

_BYTE *sub_261FC209C(_BYTE *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((*result & 1) == 0)
  {
    v14[9] = v4;
    v15 = v5;
    v8 = sub_26203A48C();
    if (qword_28108B5E0 != -1)
    {
      swift_once();
    }

    v9 = qword_28108B5F0;
    if (os_log_type_enabled(qword_28108B5F0, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14[0] = v11;
      *v10 = 136446210;
      if (a3)
      {
        v12 = a3;
      }

      else
      {
        a2 = 0x6E776F6E6B6E753CLL;
        v12 = 0xE90000000000003ELL;
      }

      v13 = sub_261F67FE4(a2, v12, v14);

      *(v10 + 4) = v13;
      _os_log_impl(&dword_261F5B000, v9, v8, "Cleaning up virtual interface %{public}s due to throwing init", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x266724180](v11, -1, -1);
      MEMORY[0x266724180](v10, -1, -1);
    }

    return NEVirtualInterfaceInvalidate();
  }

  return result;
}

void sub_261FC221C()
{
  NEVirtualInterfaceSetReadAutomatically();
  v0 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_261F6AED8;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261F6AE38;
  aBlock[3] = &block_descriptor_11;
  v1 = _Block_copy(aBlock);

  MultipleIPPacketsHandler = NEVirtualInterfaceSetReadMultipleIPPacketsHandler();
  _Block_release(v1);
  if (!MultipleIPPacketsHandler)
  {
    sub_261F9BCE0();
    sub_26203AD3C();
    sub_261F9D610();
    swift_allocError();
    sub_26203AD4C();
    swift_willThrow();
  }
}

void VirtualInterface.deinit()
{
  OUTLINED_FUNCTION_96();
  v2 = v0;
  v3 = sub_26203A4BC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_74();
  v9 = v8 - v7;
  v10 = sub_26203A4AC();
  if (qword_28108B5E0 != -1)
  {
    OUTLINED_FUNCTION_0_12();
    swift_once();
  }

  v11 = qword_28108B5F0;
  if (os_log_type_enabled(qword_28108B5F0, v10))
  {
    OUTLINED_FUNCTION_42_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_10_2();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v1 = 136446210;
    *(v1 + 4) = sub_261F67FE4(*(v2 + 16), *(v2 + 24), &v21);
    OUTLINED_FUNCTION_30_4(&dword_261F5B000, v11, v10, "Invalidating virtual interface ref for interface %{public}s");
    _os_log_impl(v13, v14, v15, v16, v17, v18);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  NEVirtualInterfaceInvalidate();
  if (*(v2 + 104))
  {
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  if (*(v2 + 120))
  {
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  if (*(v2 + 136))
  {
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  v19 = *(v2 + 160);
  if (v19)
  {
    v21 = MEMORY[0x277D84F90];
    sub_261F7AA38(&qword_27FEF9B48, MEMORY[0x277D85208], MEMORY[0x277D85210]);
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B50, &unk_262040460);
    sub_261F7AA80(&qword_27FEF9B58, &qword_27FEF9B50, &unk_262040460);
    sub_26203A75C();
    sub_26203A50C();

    (*(v5 + 8))(v9, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 32));

  sub_261F665E4(*(v2 + 88), *(v2 + 96));
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_31_0();
}

uint64_t VirtualInterface.__deallocating_deinit()
{
  VirtualInterface.deinit();

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

uint64_t sub_261FC2678(uint64_t a1, NSObject *a2)
{
  v3 = a1;
  v4 = sub_26203942C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - v9;
  v11 = sub_2620392DC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  if (v3)
  {
    v46 = a2;
    v18 = sub_2620396AC();
    if ((v18 & 0x100000000) != 0)
    {
      v19 = 5;
    }

    else
    {
      v19 = v18;
    }

    LODWORD(v47) = v19;
    sub_261F9D4D8(MEMORY[0x277D84F90]);
    sub_261F7AA38(&qword_27FEF9920, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
    sub_2620393DC();
    v20 = sub_26203A48C();
    if (qword_28108B5E0 != -1)
    {
      swift_once();
    }

    v21 = qword_28108B5F0;
    (*(v5 + 16))(v10, v46, v4);
    (*(v12 + 16))(v15, v17, v11);
    v46 = v21;
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v47 = v45;
      *v22 = 136446722;
      sub_261F7AA38(&unk_27FEF9B70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v44 = v20;
      v23 = sub_26203ABAC();
      v43 = v3;
      v25 = v24;
      (*(v5 + 8))(v10, v4);
      v26 = sub_261F67FE4(v23, v25, &v47);

      *(v22 + 4) = v26;
      *(v22 + 12) = 1024;
      *(v22 + 14) = v43;
      *(v22 + 18) = 2080;
      sub_261F7AA38(&unk_27FEF9B80, MEMORY[0x277CC8658], MEMORY[0x277CC8660]);
      v27 = sub_26203ACCC();
      v29 = v28;
      v30 = *(v12 + 8);
      v30(v15, v11);
      v31 = sub_261F67FE4(v27, v29, &v47);

      *(v22 + 20) = v31;
      _os_log_impl(&dword_261F5B000, v46, v44, "%{public}s: IO cleanup error: %d, %s", v22, 0x1Cu);
      v32 = v45;
      swift_arrayDestroy();
      MEMORY[0x266724180](v32, -1, -1);
      MEMORY[0x266724180](v22, -1, -1);
      return (v30)(v17, v11);
    }

    else
    {
      v42 = *(v12 + 8);
      v42(v15, v11);
      (*(v5 + 8))(v10, v4);
      return (v42)(v17, v11);
    }
  }

  else
  {
    v34 = sub_26203A46C();
    if (qword_28108B5E0 != -1)
    {
      swift_once();
    }

    v35 = qword_28108B5F0;
    (*(v5 + 16))(v8, a2, v4);
    if (os_log_type_enabled(v35, v34))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47 = v37;
      *v36 = 136446210;
      sub_261F7AA38(&unk_27FEF9B70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v38 = sub_26203ABAC();
      v40 = v39;
      (*(v5 + 8))(v8, v4);
      v41 = sub_261F67FE4(v38, v40, &v47);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_261F5B000, v35, v34, "%{public}s: IO cleanup complete", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x266724180](v37, -1, -1);
      return MEMORY[0x266724180](v36, -1, -1);
    }

    else
    {
      return (*(v5 + 8))(v8, v4);
    }
  }
}

uint64_t sub_261FC2CEC@<X0>(char *a1@<X0>, void *a2@<X1>, void *a3@<X2>, int a4@<W3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  result = VirtualInterface.__allocating_init(queue:address:netmask:mtu:maxPendingPackets:physicalInterfaceName:)(a1, a2, a3, a4 & 0x1FFFF, a5 | ((HIDWORD(a5) & 1) << 32), a6, a7);
  if (!v8)
  {
    *a8 = result;
  }

  return result;
}

uint64_t sub_261FC2D28(uint64_t (*a1)(uint64_t *, char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v7 = WORD2(a4);
  v6 = a4;
  return a1(&v5, &v5 + BYTE6(a4));
}

id sub_261FC2E24(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61 == 3)
  {
    return (a2 & 0x1FFFFFFFFFFFFFFFLL);
  }

  return result;
}

void sub_261FC2E3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61 == 3)
  {
  }
}

unint64_t sub_261FC2E54()
{
  result = qword_28108B360;
  if (!qword_28108B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B360);
  }

  return result;
}

uint64_t sub_261FC2EA8(uint64_t a1)
{
  v3 = sub_26203942C();
  OUTLINED_FUNCTION_40(v3);
  v5 = (v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return sub_261FC2678(a1, v5);
}

uint64_t sub_261FC2F14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_28_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t LockedValueType.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  LockedValueType.init(value:)(a1);
  return v2;
}

uint64_t LockedValueType<A>.testAndSet()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1);
  OUTLINED_FUNCTION_0_1();
  swift_beginAccess();
  v2 = *(v0 + 24);
  *(v0 + 24) = 1;
  os_unfair_lock_unlock(v1);
  return v2;
}

void LockedValueType.read()(uint64_t a1@<X8>)
{
  v3 = *v1;
  os_unfair_lock_lock(*(v1 + 16));
  OUTLINED_FUNCTION_2_8();
  v5 = *(v4 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v5);
  sub_261F7E934(v1);
}

char *LockedValueType.init(value:)(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_slowAlloc();
  *(v1 + 2) = v4;
  *v4 = 0;
  OUTLINED_FUNCTION_2_8();
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(v5 + 96)], a1);
  return v1;
}

char *LockedValueType.deinit()
{
  v1 = *v0;
  MEMORY[0x266724180](*(v0 + 2), -1, -1);
  OUTLINED_FUNCTION_2_8();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 96)]);
  return v0;
}

uint64_t LockedValueType.__deallocating_deinit()
{
  LockedValueType.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_261FC3288(void *a1)
{
  v3 = _s5StateVMa(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_8();
  v5 = a1[2];
  os_unfair_lock_lock(v5);
  v6 = *(*a1 + 96);
  OUTLINED_FUNCTION_4_5(a1 + v6);
  sub_261FA0B50(a1 + v6, v1);
  *(v1 + *(v4 + 32)) = 1;
  v7 = *(v4 + 36);
  v8 = *(v1 + v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 40;
    do
    {
      v11 = *(v10 - 8);

      v11(v12);

      v10 += 16;
      --v9;
    }

    while (v9);
  }

  *(v1 + v7) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_5_5(a1 + v6);
  sub_261FC3EF0(v1, a1 + v6);
  swift_endAccess();
  os_unfair_lock_unlock(v5);
}

uint64_t sub_261FC33C4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = _s5StateVMa(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_8();
  v23 = a1[2];
  os_unfair_lock_lock(v23);
  v9 = *(*a1 + 96);
  OUTLINED_FUNCTION_4_5(a1 + v9);
  sub_261FA0B50(a1 + v9, v3);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = *(v8 + 36);
  v12 = *(v3 + v11);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = OUTLINED_FUNCTION_1_11();
    sub_261FB9C14(v17, v18, v19, v20);
    v12 = v21;
  }

  v14 = *(v12 + 16);
  v13 = *(v12 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_261FB9C14(v13 > 1, v14 + 1, 1, v12);
    v12 = v22;
  }

  *(v12 + 16) = v14 + 1;
  v15 = v12 + 16 * v14;
  *(v15 + 32) = sub_261FC3F80;
  *(v15 + 40) = v10;
  *(v3 + v11) = v12;
  OUTLINED_FUNCTION_5_5(a1 + v9);
  sub_261FC3EF0(v3, a1 + v9);
  swift_endAccess();
  os_unfair_lock_unlock(v23);
}

uint64_t sub_261FC354C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[2];
  os_unfair_lock_lock(v6);
  OUTLINED_FUNCTION_0_1();
  swift_beginAccess();
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_261FA0B3C(v7);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = OUTLINED_FUNCTION_1_11();
    sub_261FBA1EC(v16, v17, v18, v19);
    v8 = v20;
  }

  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_261FBA1EC(v11 > 1, v12 + 1, 1, v8);
    v8 = v21;
  }

  *(v8 + 16) = v12 + 1;
  v13 = v8 + 16 * v12;
  *(v13 + 32) = sub_261FC3F54;
  *(v13 + 40) = v10;
  v14 = a1[3];
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  sub_261FC3EDC(v14);

  os_unfair_lock_unlock(v6);
}

void sub_261FC3694(void *a1, void *a2, uint64_t a3)
{
  v7 = a1[2];
  os_unfair_lock_lock(v7);
  swift_beginAccess();
  v8 = a1[4];
  v9 = a1[5];
  v11 = a1[3];
  *&v12 = v8;
  *(&v12 + 1) = v9;
  sub_261FA0B3C(v11);

  sub_26200109C(&v11, a2, a3);
  if (v3)
  {
    sub_261FC3EDC(v11);
  }

  else
  {
    v10 = a1[3];
    a1[3] = v11;
    *(a1 + 2) = v12;
    sub_261FC3EDC(v10);
  }

  os_unfair_lock_unlock(v7);
}

void sub_261FC3798(void *a1, void *a2, void *a3)
{
  v7 = a1[2];
  os_unfair_lock_lock(v7);
  swift_beginAccess();
  v8 = a1[4];
  v9 = a1[5];
  v11 = a1[3];
  *&v12 = v8;
  *(&v12 + 1) = v9;
  sub_261FA0B3C(v11);

  sub_262001B38(&v11, a2);
  if (v3)
  {
    sub_261FC3EDC(v11);
  }

  else
  {
    v10 = a1[3];
    a1[3] = v11;
    *(a1 + 2) = v12;
    sub_261FC3EDC(v10);
  }

  os_unfair_lock_unlock(v7);
}

void sub_261FC38A4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  os_unfair_lock_lock(v4);
  OUTLINED_FUNCTION_0_1();
  swift_beginAccess();
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(v5 + 16);
  if (v8)
  {
    sub_261FA0B3C(*(a1 + 24));

    v9 = v5 + 40;
    do
    {
      v10 = *(v9 - 8);
      v12 = a2;

      v10(&v12);

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  else
  {
    sub_261FA0B3C(*(a1 + 24));
  }

  v11 = *(a1 + 24);
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = v7;
  sub_261FC3EDC(v11);

  os_unfair_lock_unlock(v4);
}

void LockedValueType.write<A>(_:)(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v16 = a3;
  v17 = a2;
  v15 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 80);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v6);
  v13 = &v15 - v12;
  os_unfair_lock_lock(v3[2]);
  v14 = *&(*v3)[24]._os_unfair_lock_opaque;
  OUTLINED_FUNCTION_4_5(v3 + v14);
  (*(v11 + 16))(v13, v3 + v14, v10);
  a1(v13);
  if (v4)
  {
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    OUTLINED_FUNCTION_5_5(v3 + v14);
    (*(v11 + 40))(v3 + v14, v13, v10);
    swift_endAccess();
    (*(v15 + 32))(v16, v8, v17);
  }

  os_unfair_lock_unlock(v3[2]);
}

void LockedValueType.put(newValue:)(uint64_t a1)
{
  v3 = *v1;
  os_unfair_lock_lock(*(v1 + 16));
  OUTLINED_FUNCTION_2_8();
  v5 = *(v4 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v1 + v5, a1);
  swift_endAccess();
  sub_261F7E934(v1);
}

uint64_t LockedValueType<A>.subscript.getter@<X0>(uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_2_8();
  v5 = *(v4 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v15[-v8];
  LockedValueType.read()(&v15[-v8]);
  v10 = sub_26203A45C();
  v12 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a3, v12, AssociatedTypeWitness);
  v10(v15, 0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_261FC3DF4(uint64_t a1)
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

void sub_261FC3EDC(id a1)
{
  if (a1 - 1 >= 2)
  {
  }
}

uint64_t sub_261FC3EF0(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_5(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_5(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_261FC3FC4()
{
  sub_261FBD334();
  result = sub_26203A6BC();
  qword_27FEF9C18 = result;
  return result;
}

uint64_t RemoteDevice.createTransport(withTargetQueue:)@<X0>(uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = sub_2620396BC();
  if (v5)
  {
    v6 = v5;
    sub_2620398FC();
    sub_2620398AC();
    v7 = swift_dynamicCastClassUnconditional();
    if (xpc_remote_connection_get_remote_service_version() < 2)
    {
      v25 = sub_26203A48C();
      if (qword_27FEF8618 != -1)
      {
        OUTLINED_FUNCTION_0_13(&qword_27FEF8618);
      }

      sub_26203969C(v25, &dword_261F5B000, qword_27FEF9C18, "Discovered RSD device running RemotePairing OS service but service version it too old to be supported", 101, 2, MEMORY[0x277D84F90]);
      sub_261F9BCE0();
      OUTLINED_FUNCTION_1_12();
      sub_26203AD3C();
      v26 = sub_261F9D610();
      OUTLINED_FUNCTION_6(v26);
      sub_26203AD4C();
      swift_willThrow();
    }

    else
    {
      v8 = type metadata accessor for RemoteXPCControlChannelTransport();
      v9 = swift_allocObject();

      v10 = sub_261FC44F0(v7, v3, v9);
      v11 = sub_26203A4AC();
      if (qword_27FEF8618 != -1)
      {
        OUTLINED_FUNCTION_0_13(&qword_27FEF8618);
      }

      v12 = qword_27FEF9C18;
      if (os_log_type_enabled(qword_27FEF9C18, v11))
      {
        v32 = v8;
        v13 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v31[0] = v28;
        *v13 = 136446466;
        swift_beginAccess();
        v14 = v10;
        v16 = *(v10 + 16);
        v15 = *(v10 + 24);

        v27 = v11;
        v17 = sub_261F67FE4(v16, v15, v31);

        *(v13 + 4) = v17;
        *(v13 + 12) = 2082;
        v18 = _s7Mercury12RemoteDeviceC0b7PairingC0E18endpointIdentifierSSvg_0();
        v20 = sub_261F67FE4(v18, v19, v31);
        v10 = v14;

        *(v13 + 14) = v20;
        _os_log_impl(&dword_261F5B000, v12, v27, "Created control channel transport %{public}s from RSD device %{public}s", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266724180](v28, -1, -1);
        v21 = v13;
        v8 = v32;
        MEMORY[0x266724180](v21, -1, -1);
      }

      a2[3] = v8;
      a2[4] = &protocol witness table for RemoteXPCControlChannelTransport;

      *a2 = v10;
    }
  }

  else
  {
    v23 = sub_26203A48C();
    if (qword_27FEF8618 != -1)
    {
      OUTLINED_FUNCTION_0_13(&qword_27FEF8618);
    }

    sub_26203969C(v23, &dword_261F5B000, qword_27FEF9C18, "RemotePairing control service is not available on remote device", 63, 2, MEMORY[0x277D84F90]);
    sub_261F9BCE0();
    OUTLINED_FUNCTION_1_12();
    sub_26203AD3C();
    v31[0] = v29;
    v31[1] = v30;
    v24 = sub_261F9D610();
    OUTLINED_FUNCTION_6(v24);
    sub_26203AD4C();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_261FC44F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 56) = 33619968;
  v4 = MEMORY[0x277D28158];
  *(a3 + 32) = a1;
  *(a3 + 40) = v4;
  *(a3 + 48) = a2;
  v5 = qword_28108CE50;

  if (v5 != -1)
  {
    swift_once();
  }

  sub_262017880();
  v6 = sub_26203ABAC();
  MEMORY[0x266722710](v6);

  *(a3 + 16) = 0x707865746F6D6572;
  *(a3 + 24) = 0xEA00000000002D63;
  return a3;
}

uint64_t sub_261FC4634()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEF9C20 = result;
  return result;
}

uint64_t WiFiKeepAlive.__allocating_init(reason:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  WiFiKeepAlive.init(reason:)(a1, a2);
  return v4;
}

void *WiFiKeepAlive.init(reason:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v30[2] = *MEMORY[0x277D85DE8];
  v3[2] = 0;
  v3[3] = 0;
  v6 = (v3 + 2);
  v3[4] = a1;
  v3[5] = a2;

  if (_RPIsDarwinOS())
  {

    sub_261F9BCE0();
    sub_26203ACFC();
    sub_261F9D610();
    v7 = swift_allocError();
    sub_26203AD4C();
    swift_willThrow();
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D02B10]) init];
    [v8 activate];
    v9 = *v6;
    *v6 = v8;
    v10 = v8;

    v11 = sub_26203A4AC();
    if (qword_27FEF8620 != -1)
    {
      OUTLINED_FUNCTION_0_14(&qword_27FEF8620);
    }

    v12 = qword_27FEF9C20;
    if (os_log_type_enabled(qword_27FEF9C20, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_261F67FE4(a1, a2, v30);
      _os_log_impl(&dword_261F5B000, v12, v11, "Starting background WiFi activity: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }

    sub_261F9B6D0(0, &qword_27FEF9C28, 0x277D02AD0);
    v16 = sub_261FC4AE8(1, a2, v15);
    v30[0] = 0;
    if ([v10 beginActivity:v16 error:v30])
    {
      v17 = v30[0];

      v18 = v3[3];
      v3[3] = v16;
      goto LABEL_18;
    }

    v19 = v30[0];
    v7 = sub_2620393FC();

    swift_willThrow();
  }

  v20 = sub_26203A48C();
  if (qword_27FEF8620 != -1)
  {
    OUTLINED_FUNCTION_0_14(&qword_27FEF8620);
  }

  v21 = qword_27FEF9C20;
  if (os_log_type_enabled(qword_27FEF9C20, v20))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30[0] = v23;
    *v22 = 136315138;
    v24 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
    v25 = sub_26203A20C();
    v27 = sub_261F67FE4(v25, v26, v30);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_261F5B000, v21, v20, "Unable to start background WiFi activity: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  if (*v6)
  {
    v28 = *v6;
    [v28 invalidate];
  }

  else
  {
  }

  v18 = *v6;
  *v6 = 0;
LABEL_18:

  return v3;
}

id sub_261FC4AE8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a3)
  {
    v5 = sub_26203A18C();
  }

  else
  {
    v5 = 0;
  }

  v6 = [swift_getObjCClassFromMetadata(a4) activityWithType:a1 reason:v5];

  return v6;
}

void sub_261FC4B6C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = v1;
    v3 = sub_26203A4AC();
    if (qword_27FEF8620 != -1)
    {
      OUTLINED_FUNCTION_0_14(&qword_27FEF8620);
    }

    v4 = qword_27FEF9C20;
    if (os_log_type_enabled(qword_27FEF9C20, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13 = v6;
      *v5 = 136315138;
      v7 = *(v0 + 32);
      v8 = *(v0 + 40);

      v9 = sub_261F67FE4(v7, v8, &v13);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_261F5B000, v4, v3, "Stopping background WiFi activity: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v6);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }

    [*(v0 + 16) endActivity_];
    v10 = *(v0 + 24);
    *(v0 + 24) = 0;

    v11 = *(v0 + 16);
    [v11 invalidate];

    v12 = *(v0 + 16);
    *(v0 + 16) = 0;
  }
}

uint64_t WiFiKeepAlive.deinit()
{
  sub_261FC4B6C();

  return v0;
}

uint64_t WiFiKeepAlive.__deallocating_deinit()
{
  WiFiKeepAlive.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

Swift::Void __swiftcall CUPairingSession.configureFailing()()
{
  v8 = sub_261FC5BC8;
  v9 = 0;
  v4 = MEMORY[0x277D85DD0];
  v5 = 1107296256;
  v6 = sub_261FC55B4;
  v7 = &block_descriptor_4;
  v1 = _Block_copy(&v4);
  [v0 setFindPeerHandler_];
  _Block_release(v1);
  v8 = OUTLINED_FUNCTION_30_1;
  v9 = 0;
  v4 = MEMORY[0x277D85DD0];
  v5 = 1107296256;
  v6 = sub_261FC5744;
  v7 = &block_descriptor_3;
  v2 = _Block_copy(&v4);
  [v0 setSavePeerHandler_];
  _Block_release(v2);
  v8 = sub_261FC5BC8;
  v9 = 0;
  v4 = MEMORY[0x277D85DD0];
  v5 = 1107296256;
  v6 = sub_261FC5B5C;
  v7 = &block_descriptor_6;
  v3 = _Block_copy(&v4);
  [v0 setCopyIdentityHandler_];
  _Block_release(v3);
}

uint64_t CUPairingSession.configure(customDataStorageProvider:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_261F79740(a1, v23);
  v7 = swift_allocObject();
  sub_261FBD548(v23, v7 + 16);
  v21 = sub_261FC5BD0;
  v22 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_261FC55B4;
  v20 = &block_descriptor_9;
  v8 = _Block_copy(&aBlock);

  [v3 setFindPeerHandler_];
  _Block_release(v8);
  sub_261F79740(a1, v23);
  v9 = swift_allocObject();
  sub_261FBD548(v23, v9 + 16);
  v21 = sub_261FC5BD8;
  v22 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_261FC5744;
  v20 = &block_descriptor_15;
  v10 = _Block_copy(&aBlock);

  [v3 setSavePeerHandler_];
  _Block_release(v10);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v11);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a2;
  v13[4] = a3;
  v14 = *(v12 + 8);
  v15 = v3;

  v14(sub_261FC5BE0, v13, v11, v12);
}

uint64_t sub_261FC51A0()
{
  sub_261FBD334();
  result = sub_26203A6BC();
  qword_27FEF9C30 = result;
  return result;
}

void PairingDataStorageProvider.updateLastSeenWireProtocolVersionIfNecessary(for:to:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = CUPairedPeer.lastSeenWireProtocolVersion.getter();
  if (!v8 || (v9 = v8, type metadata accessor for ControlChannelConnectionWireProtocolVersion(), v10 = a2, v11 = sub_26203A69C(), v9, v10, (v11 & 1) == 0))
  {
    v12 = sub_26203A4AC();
    if (qword_27FEF8628 != -1)
    {
      swift_once();
    }

    v13 = qword_27FEF9C30;
    if (os_log_type_enabled(qword_27FEF9C30, v12))
    {
      log = v13;
      v29 = v12;
      v30 = a3;
      v31 = a4;
      v14 = a2;
      v15 = a1;
      v28 = v14;
      v16 = v15;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32 = v18;
      *v17 = 136446722;
      CUPairedPeer.udid.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
      v19 = sub_26203A20C();
      v21 = sub_261F67FE4(v19, v20, &v32);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2048;
      v22 = CUPairedPeer.lastSeenWireProtocolVersion.getter();
      if (v22)
      {
        v23 = v22;
        v24 = *&v22[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue];
      }

      else
      {
        v24 = 0;
        v23 = v16;
      }

      *(v17 + 14) = v24;
      *(v17 + 22) = 2048;
      v25 = *&v28[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue];

      *(v17 + 24) = v25;
      _os_log_impl(&dword_261F5B000, log, v29, "Updating last seen wire protocol version for peer with UDID %{public}s: %ld -> %ld", v17, 0x20u);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x266724180](v18, -1, -1);
      MEMORY[0x266724180](v17, -1, -1);
      a3 = v30;
      a4 = v31;
    }

    v26 = a2;
    CUPairedPeer.lastSeenWireProtocolVersion.setter(a2);
    (*(a4 + 24))(a1, a3, a4);
  }
}

uint64_t sub_261FC54A8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v5 = a4[4];
    __swift_project_boxed_opaque_existential_0Tm(a4, a4[3]);
    v6 = *(v5 + 16);
    v7 = a1;
    v8 = v6();

    return v8;
  }

  else
  {
    result = sub_26203A91C();
    __break(1u);
  }

  return result;
}

id sub_261FC55B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  v9 = v7(a2, a3, a4);

  return v9;
}

uint64_t sub_261FC563C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v5 = a4[4];
    __swift_project_boxed_opaque_existential_0Tm(a4, a4[3]);
    v6 = *(v5 + 24);
    v7 = a1;
    v6();

    return 1;
  }

  else
  {
    result = sub_26203A91C();
    __break(1u);
  }

  return result;
}

uint64_t sub_261FC5744(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  LOBYTE(a4) = v7(a2, a3, a4);

  return a4 & 1;
}

uint64_t sub_261FC57BC(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v22 = a5;
  v8 = sub_262039FAC();
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_262039FEC();
  v23 = *(v11 - 8);
  v24 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2 & 1;
  v31 = sub_261FC6080;
  v32 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_261FC5B5C;
  v30 = &block_descriptor_24;
  v15 = _Block_copy(&aBlock);
  sub_261F98F5C(a1);

  [a3 setCopyIdentityHandler_];
  _Block_release(v15);
  v16 = [a3 dispatchQueue];
  v17 = swift_allocObject();
  v18 = v22;
  *(v17 + 16) = v21;
  *(v17 + 24) = v18;
  v31 = sub_261FBD060;
  v32 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_261F78F64;
  v30 = &block_descriptor_30;
  v19 = _Block_copy(&aBlock);

  sub_262039FCC();
  v26 = MEMORY[0x277D84F90];
  sub_261F9B65C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F98F68();
  sub_26203A75C();
  MEMORY[0x266722A20](0, v13, v10, v19);
  _Block_release(v19);

  (*(v25 + 8))(v10, v8);
  (*(v23 + 8))(v13, v24);
}

void *sub_261FC5B08(uint64_t a1, void *a2, void *a3, char a4)
{
  v4 = a3;
  if (a4)
  {
    v4 = 0;
    if (a2)
    {
      *a2 = sub_2620393EC();
    }
  }

  else
  {
    v5 = a3;
  }

  return v4;
}

id sub_261FC5B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

void *CUPairingIdentity.authTag(for:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[2] = *MEMORY[0x277D85DE8];
  if (MEMORY[0x277D441B0])
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D441B0]) init];
    v6 = sub_261FC5F18(v3);
    if (v7 >> 60 == 15)
    {
      v8 = 0;
    }

    else
    {
      v10 = v6;
      v11 = v7;
      v8 = sub_26203952C();
      sub_261F6ADEC(v10, v11);
    }

    [v5 setDeviceIRKData_];

    v12 = sub_26203952C();
    v16[0] = 0;
    v13 = [v5 authTagForData:v12 type:a3 error:v16];

    v14 = v16[0];
    if (v13)
    {
      v9 = sub_26203954C();
    }

    else
    {
      v9 = v14;
      sub_2620393FC();

      swift_willThrow();
    }
  }

  else
  {
    v9 = sub_261F9BCE0();
    sub_26203ACFC();
    sub_261F9D610();
    swift_allocError();
    sub_26203AD4C();
    swift_willThrow();
  }

  return v9;
}

void *sub_261FC5DEC(void **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = (a4)(&v7, a1, a2, a3);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

void *sub_261FC5E34(_WORD **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = (a4)(&v7, a1, a2, a3);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

void *sub_261FC5E7C(_DWORD **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = (a4)(&v7, a1, a2, a3);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

void *sub_261FC5EC4(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_261FC5EE8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_261FC5F18(void *a1)
{
  v1 = [a1 altIRK];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26203954C();

  return v3;
}

uint64_t static AuxiliaryMetadataItem.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  switch(*a1 >> 61)
  {
    case 1uLL:
      if (v5 >> 61 != 1)
      {
        goto LABEL_25;
      }

      v6 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      return v6 & 1;
    case 2uLL:
      if (v5 >> 61 != 2 || *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
      {
        goto LABEL_25;
      }

      goto LABEL_27;
    case 3uLL:
      if (v5 >> 61 != 3)
      {
        goto LABEL_25;
      }

      v12 = v4 & 0x1FFFFFFFFFFFFFFFLL;
      v13 = v5 & 0x1FFFFFFFFFFFFFFFLL;
      if (*(v12 + 16) == *(v13 + 16) && *(v12 + 24) == *(v13 + 24))
      {
LABEL_27:
        v6 = 1;
        return v6 & 1;
      }

      else
      {

        return sub_26203AC0C();
      }

    case 4uLL:
      if (v5 >> 61 != 4)
      {
        goto LABEL_25;
      }

      v8 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v9 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      sub_261F6B73C(v9, v10);
      v11 = MEMORY[0x2667219E0](v8, v7, v9, v10);
      sub_261F6BFFC(v9, v10);

      return v11 & 1;
    case 5uLL:
      if (v5 >> 61 != 5)
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_23_3();

      v16 = sub_261FC64B4(v2, v3);
      goto LABEL_23;
    case 6uLL:
      if (v5 >> 61 != 6)
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_23_3();

      v16 = sub_261FC6574(v2, v3);
LABEL_23:
      v11 = v16;

      return v11 & 1;
    default:
      if (v5 >> 61)
      {
LABEL_25:
        v6 = 0;
      }

      else
      {
        v6 = *(v4 + 16) ^ *(v5 + 16) ^ 1;
      }

      return v6 & 1;
  }
}

void sub_261FC62C4()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  v4 = sub_262039B3C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_54();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = *(v3 + 16);
  if (v14 == *(v1 + 16) && v14 && v3 != v1)
  {
    v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = v3 + v15;
    v17 = v1 + v15;
    v19 = *(v6 + 16);
    v18 = v6 + 16;
    v20 = (v18 - 8);
    v26 = *(v18 + 56);
    v27 = v19;
    while (1)
    {
      v21 = v27;
      v27(v13, v16, v4);
      if (!v14)
      {
        break;
      }

      v22 = v18;
      v21(v10, v17, v4);
      sub_261FCB8F4(&qword_27FEF9D78, MEMORY[0x277CD8CF0], MEMORY[0x277CD8D00]);
      v23 = sub_26203A17C();
      v24 = *v20;
      (*v20)(v10, v4);
      v24(v13, v4);
      if (v23)
      {
        v17 += v26;
        v16 += v26;
        v25 = v14-- == 1;
        v18 = v22;
        if (!v25)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_31_0();
  }
}

uint64_t sub_261FC64B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v10 = v5;
        v6 = *v4++;
        v9 = v6;

        v7 = static AuxiliaryMetadataItem.== infix(_:_:)(&v10, &v9);

        --v2;
      }

      while ((v7 & 1) != 0 && v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_261FC6574(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    if (!v14)
    {
      return 1;
    }

    v22 = v16;
    v17 = sub_261FA3868(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {

      return 0;
    }

    v21 = *(*(a2 + 56) + 8 * v17);

    v20 = static AuxiliaryMetadataItem.== infix(_:_:)(&v21, &v22);

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_261FC6700(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E61656C6F6F62 && a2 == 0xE700000000000000;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7630441 && a2 == 0xE300000000000000;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74616F6C66 && a2 == 0xE500000000000000;
      if (v7 || (sub_26203AC0C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
        if (v8 || (sub_26203AC0C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1635017060 && a2 == 0xE400000000000000;
          if (v9 || (sub_26203AC0C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7961727261 && a2 == 0xE500000000000000;
            if (v10 || (sub_26203AC0C() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x616E6F6974636964 && a2 == 0xEA00000000007972)
            {

              return 6;
            }

            else
            {
              v12 = sub_26203AC0C();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_261FC6934(char a1)
{
  result = 0x6E61656C6F6F62;
  switch(a1)
  {
    case 1:
      result = 7630441;
      break;
    case 2:
      result = 0x74616F6C66;
      break;
    case 3:
      result = 0x676E69727473;
      break;
    case 4:
      result = 1635017060;
      break;
    case 5:
      result = 0x7961727261;
      break;
    case 6:
      result = 0x616E6F6974636964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_261FC69E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26203AC0C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_261FC6A5C(uint64_t a1)
{
  v2 = sub_261FC7790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FC6A98(uint64_t a1)
{
  v2 = sub_261FC7790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FC6AD4(uint64_t a1)
{
  v2 = sub_261FC7988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FC6B10(uint64_t a1)
{
  v2 = sub_261FC7988();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FC6B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261FC6700(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261FC6B7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261FC692C();
  *a1 = result;
  return result;
}

uint64_t sub_261FC6BA4(uint64_t a1)
{
  v2 = sub_261FC7694();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FC6BE0(uint64_t a1)
{
  v2 = sub_261FC7694();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FC6C1C(uint64_t a1)
{
  v2 = sub_261FC77E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FC6C58(uint64_t a1)
{
  v2 = sub_261FC77E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FC6C94(uint64_t a1)
{
  v2 = sub_261FC76E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FC6CD0(uint64_t a1)
{
  v2 = sub_261FC76E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FC6D0C(uint64_t a1)
{
  v2 = sub_261FC78E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FC6D48(uint64_t a1)
{
  v2 = sub_261FC78E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FC6D84(uint64_t a1)
{
  v2 = sub_261FC7934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FC6DC0(uint64_t a1)
{
  v2 = sub_261FC7934();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FC6DFC(uint64_t a1)
{
  v2 = sub_261FC788C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FC6E38(uint64_t a1)
{
  v2 = sub_261FC788C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuxiliaryMetadataItem.encode(to:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C38, &qword_2620406A0);
  OUTLINED_FUNCTION_0();
  v93 = v6;
  v94 = v5;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_44();
  v92 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C40, &qword_2620406A8);
  OUTLINED_FUNCTION_0();
  v90 = v10;
  v91 = v9;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_44();
  v89 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C48, &qword_2620406B0);
  OUTLINED_FUNCTION_0();
  v87 = v14;
  v88 = v13;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_44();
  v86 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C50, &qword_2620406B8);
  OUTLINED_FUNCTION_0();
  v84 = v18;
  v85 = v17;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_44();
  v83 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C58, &qword_2620406C0);
  OUTLINED_FUNCTION_0();
  v81 = v22;
  v82 = v21;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v23);
  v25 = &v78 - v24;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C60, &qword_2620406C8);
  OUTLINED_FUNCTION_0();
  v79 = v26;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v27);
  v29 = &v78 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C68, &qword_2620406D0);
  OUTLINED_FUNCTION_0();
  v78 = v31;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v32);
  v34 = &v78 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C70, &qword_2620406D8);
  OUTLINED_FUNCTION_0();
  v96 = v35;
  v97 = v36;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_16_0();
  v38 = *v3;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_261FC7694();
  v95 = v2;
  sub_26203AE5C();
  switch(v38 >> 61)
  {
    case 1uLL:
      LOBYTE(v98[0]) = 1;
      sub_261FC7934();
      v39 = v96;
      OUTLINED_FUNCTION_15_4();
      sub_26203AA9C();
      v57 = v80;
      sub_26203AB5C();
      (*(v79 + 8))(v29, v57);
      goto LABEL_7;
    case 2uLL:
      LOBYTE(v98[0]) = 2;
      sub_261FC78E0();
      v39 = v96;
      OUTLINED_FUNCTION_15_4();
      sub_26203AA9C();
      v52 = v82;
      sub_26203AB1C();
      (*(v81 + 8))(v25, v52);
LABEL_7:
      v42 = OUTLINED_FUNCTION_13_3();
      goto LABEL_8;
    case 3uLL:
      LOBYTE(v98[0]) = 3;
      sub_261FC788C();

      OUTLINED_FUNCTION_9_3(&type metadata for AuxiliaryMetadataItem.StringCodingKeys, v98);
      v53 = v85;
      sub_26203AAFC();

      v54 = OUTLINED_FUNCTION_14_6();
      v55(v54, v53);
      v42 = OUTLINED_FUNCTION_21_3();
      v56 = v34;
      goto LABEL_9;
    case 4uLL:
      v44 = v38 & 0x1FFFFFFFFFFFFFFFLL;
      v45 = *((v38 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v46 = *(v44 + 24);
      LOBYTE(v98[0]) = 4;
      sub_261F6B73C(v45, v46);
      sub_261FC77E4();
      v47 = v86;
      v49 = v95;
      v48 = v96;
      sub_26203AA9C();
      v98[0] = v45;
      v98[1] = v46;
      sub_261FC7838();
      v50 = v88;
      sub_26203AB3C();
      (*(v87 + 8))(v47, v50);
      (*(v97 + 8))(v49, v48);
      return sub_261F6BFFC(v45, v46);
    case 5uLL:
      v58 = *((v38 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v98[0]) = 5;
      sub_261FC7790();

      OUTLINED_FUNCTION_9_3(&type metadata for AuxiliaryMetadataItem.ArrayCodingKeys, v98);
      v98[0] = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C90, &qword_2620406E8);
      OUTLINED_FUNCTION_6_7();
      v61 = sub_261FCA7F8(v59, v60, MEMORY[0x277D83948]);
      v62 = v91;
      OUTLINED_FUNCTION_29_5(v98, v63, v64, v65, v61);
      goto LABEL_12;
    case 6uLL:
      v66 = *((v38 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v98[0]) = 6;
      sub_261FC76E8();

      OUTLINED_FUNCTION_9_3(&type metadata for AuxiliaryMetadataItem.DictionaryCodingKeys, v98);
      v98[0] = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C80, &qword_2620406E0);
      OUTLINED_FUNCTION_6_7();
      v70 = sub_261FCA720(v67, v68, v69, MEMORY[0x277D83508]);
      v62 = v94;
      OUTLINED_FUNCTION_29_5(v98, v71, v72, v73, v70);
LABEL_12:
      v74 = OUTLINED_FUNCTION_14_6();
      v75(v74, v62);
      v76 = OUTLINED_FUNCTION_21_3();
      v77(v76, v34);

      break;
    default:
      LOBYTE(v98[0]) = 0;
      sub_261FC7988();
      v39 = v96;
      sub_26203AA9C();
      sub_26203AB0C();
      v40 = OUTLINED_FUNCTION_13_3();
      v41(v40, v30);
      v42 = OUTLINED_FUNCTION_21_3();
LABEL_8:
      v56 = v39;
LABEL_9:
      result = v43(v42, v56);
      break;
  }

  return result;
}

unint64_t sub_261FC7694()
{
  result = qword_28108D080;
  if (!qword_28108D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D080);
  }

  return result;
}

unint64_t sub_261FC76E8()
{
  result = qword_27FEF9C78;
  if (!qword_27FEF9C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9C78);
  }

  return result;
}

unint64_t sub_261FC773C()
{
  result = qword_28108C4D8;
  if (!qword_28108C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C4D8);
  }

  return result;
}

unint64_t sub_261FC7790()
{
  result = qword_27FEF9C88;
  if (!qword_27FEF9C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9C88);
  }

  return result;
}

unint64_t sub_261FC77E4()
{
  result = qword_27FEF9CA0;
  if (!qword_27FEF9CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9CA0);
  }

  return result;
}

unint64_t sub_261FC7838()
{
  result = qword_28108CF58;
  if (!qword_28108CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CF58);
  }

  return result;
}

unint64_t sub_261FC788C()
{
  result = qword_27FEF9CA8;
  if (!qword_27FEF9CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9CA8);
  }

  return result;
}

unint64_t sub_261FC78E0()
{
  result = qword_27FEF9CB0;
  if (!qword_27FEF9CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9CB0);
  }

  return result;
}

unint64_t sub_261FC7934()
{
  result = qword_27FEF9CB8;
  if (!qword_27FEF9CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9CB8);
  }

  return result;
}

unint64_t sub_261FC7988()
{
  result = qword_28108D018;
  if (!qword_28108D018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D018);
  }

  return result;
}

uint64_t AuxiliaryMetadataItem.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v126 = a2;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9CC0, &qword_2620406F0);
  OUTLINED_FUNCTION_0();
  v123 = v4;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_44();
  v129 = v6;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9CC8, &qword_2620406F8);
  OUTLINED_FUNCTION_0();
  v122 = v7;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_44();
  v128 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9CD0, &qword_262040700);
  OUTLINED_FUNCTION_0();
  v118 = v10;
  v119 = v11;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_44();
  v125 = v13;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9CD8, &qword_262040708);
  OUTLINED_FUNCTION_0();
  v117 = v14;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_44();
  v124 = v16;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9CE0, &qword_262040710);
  OUTLINED_FUNCTION_0();
  v113 = v17;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_44();
  v127 = v19;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9CE8, &qword_262040718);
  OUTLINED_FUNCTION_0();
  v112 = v20;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v21);
  v23 = v105 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9CF0, &qword_262040720);
  OUTLINED_FUNCTION_0();
  v111 = v25;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v26);
  v28 = v105 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9CF8, &unk_262040728);
  OUTLINED_FUNCTION_0();
  v31 = v30;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_16_0();
  v33 = a1[3];
  v130 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v33);
  sub_261FC7694();
  v34 = v131;
  sub_26203AE3C();
  if (v34)
  {
    goto LABEL_10;
  }

  v108 = v28;
  v107 = v24;
  v109 = v23;
  v131 = v31;
  sub_26203AA7C();
  result = sub_261F99084();
  if (v37 == v38 >> 1)
  {
LABEL_9:
    v49 = v131;
    v50 = sub_26203A81C();
    swift_allocError();
    v52 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA260, &qword_26203CDB0);
    *v52 = &type metadata for AuxiliaryMetadataItem;
    sub_26203A98C();
    sub_26203A80C();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D84160], v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v49 + 8))(v2, v29);
LABEL_10:
    v53 = v130;
    return __swift_destroy_boxed_opaque_existential_0Tm(v53);
  }

  v110 = v29;
  v106 = 0;
  if (v37 < (v38 >> 1))
  {
    v39 = *(v36 + v37);
    v40 = sub_261F99070();
    v42 = v41;
    v44 = v43;
    swift_unknownObjectRelease();
    if (v42 == v44 >> 1)
    {
      v105[1] = v40;
      v45 = v106;
      v46 = v126;
      switch(v39)
      {
        case 1:
          v133 = 1;
          sub_261FC7934();
          OUTLINED_FUNCTION_4_6(&type metadata for AuxiliaryMetadataItem.IntCodingKeys, &v133);
          OUTLINED_FUNCTION_63();
          v58 = swift_allocObject();
          OUTLINED_FUNCTION_20_4();
          v89 = sub_26203AA4C();
          OUTLINED_FUNCTION_19_2();
          v90 = OUTLINED_FUNCTION_11_0();
          v91(v90);
          v92 = OUTLINED_FUNCTION_3_9();
          v93(v92);
          *(v58 + 16) = v89;
          v75 = v58 | 0x2000000000000000;
          goto LABEL_19;
        case 2:
          v134 = 2;
          sub_261FC78E0();
          OUTLINED_FUNCTION_4_6(&type metadata for AuxiliaryMetadataItem.FloatCodingKeys, &v134);
          OUTLINED_FUNCTION_63();
          v56 = swift_allocObject();
          OUTLINED_FUNCTION_20_4();
          sub_26203AA0C();
          v77 = v76;
          OUTLINED_FUNCTION_19_2();
          v78 = OUTLINED_FUNCTION_11_0();
          v79(v78);
          v80 = OUTLINED_FUNCTION_3_9();
          v81(v80);
          *(v56 + 16) = v77;
          v75 = v56 | 0x4000000000000000;
          goto LABEL_19;
        case 3:
          v135 = 3;
          sub_261FC788C();
          OUTLINED_FUNCTION_4_6(&type metadata for AuxiliaryMetadataItem.StringCodingKeys, &v135);
          OUTLINED_FUNCTION_46();
          v57 = swift_allocObject();
          OUTLINED_FUNCTION_20_4();
          v82 = sub_26203A9EC();
          v84 = v83;
          OUTLINED_FUNCTION_19_2();
          v85 = OUTLINED_FUNCTION_11_0();
          v86(v85);
          v87 = OUTLINED_FUNCTION_2_9();
          v88(v87);
          *(v57 + 16) = v82;
          *(v57 + 24) = v84;
          v75 = v57 | 0x6000000000000000;
          goto LABEL_19;
        case 4:
          v136 = 4;
          sub_261FC77E4();
          OUTLINED_FUNCTION_4_6(&type metadata for AuxiliaryMetadataItem.DataCodingKeys, &v136);
          OUTLINED_FUNCTION_46();
          v54 = swift_allocObject();
          sub_261FCA870();
          v55 = v118;
          OUTLINED_FUNCTION_15_4();
          sub_26203AA2C();
          swift_unknownObjectRelease();
          v71 = OUTLINED_FUNCTION_13_3();
          v72(v71, v55);
          v73 = OUTLINED_FUNCTION_2_9();
          v74(v73);
          v75 = v54 | 0x8000000000000000;
          goto LABEL_19;
        case 5:
          v137 = 5;
          sub_261FC7790();
          OUTLINED_FUNCTION_4_6(&type metadata for AuxiliaryMetadataItem.ArrayCodingKeys, &v137);
          OUTLINED_FUNCTION_63();
          v59 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C90, &qword_2620406E8);
          OUTLINED_FUNCTION_5_6();
          sub_261FCA7F8(v60, v61, MEMORY[0x277D83978]);
          v62 = v120;
          sub_26203AA2C();
          swift_unknownObjectRelease();
          v97 = OUTLINED_FUNCTION_14_6();
          v98(v97, v62);
          v99 = OUTLINED_FUNCTION_2_9();
          v100(v99);
          v75 = v59 | 0xA000000000000000;
          goto LABEL_19;
        case 6:
          v138[0] = 6;
          sub_261FC76E8();
          OUTLINED_FUNCTION_4_6(&type metadata for AuxiliaryMetadataItem.DictionaryCodingKeys, v138);
          OUTLINED_FUNCTION_63();
          v66 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C80, &qword_2620406E0);
          OUTLINED_FUNCTION_5_6();
          sub_261FCA720(v67, v68, v69, MEMORY[0x277D83528]);
          v70 = v121;
          sub_26203AA2C();
          swift_unknownObjectRelease();
          v101 = OUTLINED_FUNCTION_13_3();
          v102(v101, v70);
          v103 = OUTLINED_FUNCTION_2_9();
          v104(v103);
          v75 = v66 | 0xC000000000000000;
LABEL_19:
          v53 = v130;
          goto LABEL_20;
        default:
          v132 = 0;
          sub_261FC7988();
          v47 = v108;
          v48 = v110;
          sub_26203A97C();
          if (v45)
          {
            (*(v131 + 8))(v2, v48);
            OUTLINED_FUNCTION_19_2();
            goto LABEL_10;
          }

          v75 = swift_allocObject();
          v63 = v107;
          v64 = sub_26203A9FC();
          v65 = (v111 + 8);
          v94 = v64;
          OUTLINED_FUNCTION_19_2();
          (*v65)(v47, v63);
          v95 = OUTLINED_FUNCTION_3_9();
          v96(v95);
          *(v75 + 16) = v94 & 1;
          v53 = v130;
          v46 = v126;
LABEL_20:
          *v46 = v75;
          break;
      }

      return __swift_destroy_boxed_opaque_existential_0Tm(v53);
    }

    v29 = v110;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_261FC86D0()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_28108B638 = result;
  return result;
}

uint64_t AuxiliaryMetadataUpdate.domain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AuxiliaryMetadataUpdate.domain.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AuxiliaryMetadataUpdate.metadata.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_261FC8828(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26203AC0C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_261FC88EC(char a1)
{
  if (a1)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_261FC8928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261FC8828(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261FC8950(uint64_t a1)
{
  v2 = sub_261FCA8C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FC898C(uint64_t a1)
{
  v2 = sub_261FCA8C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuxiliaryMetadataUpdate.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9D08, &qword_262040738);
  OUTLINED_FUNCTION_0();
  v15 = v5;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v14 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_261FCA8C4();
  sub_26203AE5C();
  v18 = 0;
  sub_26203AAFC();
  if (!v2)
  {
    v16 = v14;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C80, &qword_2620406E0);
    OUTLINED_FUNCTION_6_7();
    sub_261FCA720(v9, v10, v11, MEMORY[0x277D83508]);
    sub_26203AB3C();
  }

  return (*(v15 + 8))(v8, v4);
}

uint64_t AuxiliaryMetadataUpdate.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9D10, &qword_262040740);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_261FCA8C4();
  sub_26203AE3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v6 = sub_26203A9EC();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C80, &qword_2620406E0);
  OUTLINED_FUNCTION_5_6();
  sub_261FCA720(v9, v10, v11, MEMORY[0x277D83528]);
  sub_26203AA2C();
  v12 = OUTLINED_FUNCTION_1_2();
  v13(v12);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void (*sub_261FC8E0C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_261FC8E60;
}

void sub_261FC8E60(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    OS_dispatch_queue.assertOnQueueHierarchy()();
  }
}

void *sub_261FC8E98()
{
  sub_26203990C();
  sub_2620398CC();
  v0 = swift_dynamicCastClassUnconditional();
  type metadata accessor for AuxiliaryMetadataProvider();
  v1 = swift_allocObject();
  result = sub_261FC8FDC(v0, v1);
  qword_28108BA60 = result;
  return result;
}

uint64_t sub_261FC8F20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t static AuxiliaryMetadataProvider.shared.getter()
{
  if (qword_28108BA58 != -1)
  {
    swift_once();
  }
}

void *sub_261FC8FDC(uint64_t a1, void *a2)
{
  v15 = a1;
  v14 = sub_26203A56C();
  v3 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26203A53C();
  MEMORY[0x28223BE20](v6);
  v7 = sub_262039FEC();
  MEMORY[0x28223BE20](v7 - 8);
  sub_261F9B6D0(0, &qword_28108CFB0, 0x277D85C78);
  sub_262039FCC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_261FCB8F4(&qword_28108CFB8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA0A0, &unk_262040360);
  sub_261FCB93C();
  sub_26203A75C();
  (*(v3 + 104))(v5, *MEMORY[0x277D85260], v14);
  a2[3] = sub_26203A58C();
  sub_26203983C();
  swift_allocObject();
  a2[4] = sub_26203980C();
  sub_26203981C();
  swift_allocObject();
  a2[5] = sub_26203980C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9D80, &unk_262044800);
  a2[6] = sub_26203A0FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C80, &qword_2620406E0);
  a2[7] = sub_26203A0FC();
  a2[2] = v15;

  sub_26203975C();
  v8 = a2[3];
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = sub_26203A21C();
  aBlock[4] = sub_261FCB9A0;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261FC8F20;
  aBlock[3] = &block_descriptor_98;
  v11 = _Block_copy(aBlock);
  v12 = v8;
  swift_retain_n();
  xpc_set_event_stream_handler((v10 + 32), v12, v11);
  _Block_release(v11);

  return a2;
}

uint64_t sub_261FC9400(uint64_t a1, uint64_t a2)
{
  v2 = sub_2620397BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();
    sub_2620397CC();
    sub_261FC9BDC();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_261FC9514()
{
  OUTLINED_FUNCTION_96();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_26203A07C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v0 + 24);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D851F0], v7);
  v14 = v13;
  v15 = sub_26203A0AC();
  (*(v9 + 8))(v12, v7);
  if (v15)
  {
    v16 = swift_allocObject();
    v16[2] = v0;
    v16[3] = v6;
    v16[4] = v4;
    v16[5] = v2;
    OUTLINED_FUNCTION_46();
    v17 = swift_allocObject();
    *(v17 + 16) = sub_261FCA918;
    *(v17 + 24) = v16;
    v20[4] = sub_261FBD060;
    v20[5] = v17;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 1107296256;
    v20[2] = sub_261FC974C;
    v20[3] = &block_descriptor_5;
    v18 = _Block_copy(v20);

    dispatch_sync(v14, v18);
    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      OUTLINED_FUNCTION_31_0();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_261FC9774()
{
  OUTLINED_FUNCTION_96();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9D70, &unk_262041410);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_0();
  v10 = sub_2620397BC();
  OUTLINED_FUNCTION_0();
  v42 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_54();
  v40 = v13 - v14;
  v16 = MEMORY[0x28223BE20](v15);
  v39 = &v36 - v17;
  MEMORY[0x28223BE20](v16);
  v44 = &v36 - v18;
  v45 = v1;
  v36 = *(v1 + 3);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  LOBYTE(v1) = sub_26203A4AC();
  if (qword_28108B630 != -1)
  {
LABEL_17:
    OUTLINED_FUNCTION_0_15(&qword_28108B630);
  }

  if (os_log_type_enabled(qword_28108B638, v1))
  {
    OUTLINED_FUNCTION_27();
    v19 = OUTLINED_FUNCTION_22_4();
    v48[0] = v19;
    *v0 = 136446210;
    *(v0 + 4) = sub_261F67FE4(v8, v6, v48);
    OUTLINED_FUNCTION_28_3(&dword_261F5B000, v20, v21, "Client registered metadata for domain %{public}s");
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  v37 = v4;
  sub_261FCA138();
  v46 = (v42 + 32);
  v43 = (v42 + 8);
  v41 = v8;
  v38 = v6;
  while (1)
  {
    v22 = sub_261FC8E0C(v48);
    v1 = sub_261FF02CC(v47, v8, v6);
    v0 = *v23;
    if (!*v23)
    {
      break;
    }

    if (*(v0 + 16))
    {
      v24 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v24 = v0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_261FFBD24(v0);
        v0 = v32;
        *v24 = v32;
      }

      v26 = *(v0 + 16);
      if (!v26)
      {
        __break(1u);
        goto LABEL_17;
      }

      v27 = v26 - 1;
      v28 = *(v42 + 32);
      v4 = v40;
      v28(v40, v0 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * (v26 - 1), v10);
      *(v0 + 16) = v27;
      *v24 = v0;
      v29 = v39;
      v28(v39, v4, v10);
      v28(v2, v29, v10);
      v6 = v38;
      v8 = v41;
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    __swift_storeEnumTagSinglePayload(v2, v30, 1, v10);
    (v1)(v47, 0);
    v22(v48, 0);
    if (__swift_getEnumTagSinglePayload(v2, 1, v10) == 1)
    {
      goto LABEL_15;
    }

    v31 = v44;
    (*v46)(v44, v2, v10);
    sub_2620397AC();
    (*v43)(v31, v10);
  }

  (v1)(v47, 0);
  v22(v48, 0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v10);
LABEL_15:
  sub_261FCB894(v2, &qword_27FEF9D70, &unk_262041410);
  v33 = v45;
  swift_beginAccess();
  v34 = v37;

  v35 = swift_isUniquelyReferenced_nonNull_native();
  v47[0] = *(v33 + 7);
  sub_261FA466C(v34, v8, v6, v35);
  *(v33 + 7) = v47[0];
  swift_endAccess();
  OS_dispatch_queue.assertOnQueueHierarchy()();
  OUTLINED_FUNCTION_31_0();
}

void sub_261FC9BDC()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9D70, &unk_262041410);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v2);
  v4 = &v36 - v3;
  v5 = sub_2620397BC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  sub_26203979C();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_261FCB894(v4, &qword_27FEF9D70, &unk_262041410);
    v11 = sub_26203A49C();
    if (qword_28108B630 != -1)
    {
      OUTLINED_FUNCTION_0_15(&qword_28108B630);
    }

    sub_26203969C(v11, &dword_261F5B000, qword_28108B638, "Failed to create reply object for event from publisher. Unable to reply to service with metadata", 96, 2, MEMORY[0x277D84F90]);
  }

  else
  {
    (*(v7 + 32))(v10, v4, v5);
    v12 = sub_2620397DC();
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      swift_beginAccess();
      v16 = *(v0 + 56);

      v17 = sub_261FA5E10(v14, v15, v16);

      if (v17)
      {
        v18 = sub_26203A4AC();
        if (qword_28108B630 != -1)
        {
          OUTLINED_FUNCTION_0_15(&qword_28108B630);
        }

        v19 = qword_28108B638;
        if (os_log_type_enabled(qword_28108B638, v18))
        {
          v20 = OUTLINED_FUNCTION_27();
          v21 = swift_slowAlloc();
          v37 = v14;
          v22 = v21;
          v40[0] = v21;
          *v20 = 136446210;
          *(v20 + 4) = sub_261F67FE4(v37, v15, v40);
          _os_log_impl(&dword_261F5B000, v19, v18, "Received event from publisher for currently registered domain %{public}s. Pushing metadata to service", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v22);
          OUTLINED_FUNCTION_1_0();
          OUTLINED_FUNCTION_1_0();
        }

        sub_261FCA138();

        sub_2620397AC();
      }

      else
      {
        LODWORD(v37) = sub_26203A4AC();
        if (qword_28108B630 != -1)
        {
          OUTLINED_FUNCTION_0_15(&qword_28108B630);
        }

        v24 = qword_28108B638;
        if (os_log_type_enabled(qword_28108B638, v37))
        {
          v25 = OUTLINED_FUNCTION_27();
          v26 = swift_slowAlloc();
          v40[0] = v26;
          *v25 = 136446210;
          *(v25 + 4) = sub_261F67FE4(v14, v15, v40);
          _os_log_impl(&dword_261F5B000, v24, v37, "Received event from publisher for currently unregistered domain %{public}s. Storing event", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v26);
          OUTLINED_FUNCTION_1_0();
          OUTLINED_FUNCTION_1_0();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A78, &unk_2620402D0);
        v27 = v14;
        v28 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_26203E9E0;
        (*(v7 + 16))(v29 + v28, v10, v5);
        swift_beginAccess();
        v30 = *(v1 + 48);

        v31 = v27;
        v32 = sub_261FA5E10(v27, v15, v30);

        if (v32)
        {
          v33 = v32;
        }

        else
        {
          v33 = MEMORY[0x277D84F90];
        }

        v39 = v29;
        sub_261FFA114(v33);
        v34 = v39;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = *(v1 + 48);
        sub_261FA4560(v34, v31, v15, isUniquelyReferenced_nonNull_native);
        *(v1 + 48) = v38;

        swift_endAccess();
        OS_dispatch_queue.assertOnQueueHierarchy()();
      }
    }

    else
    {
      v23 = sub_26203A49C();
      if (qword_28108B630 != -1)
      {
        OUTLINED_FUNCTION_0_15(&qword_28108B630);
      }

      sub_26203969C(v23, &dword_261F5B000, qword_28108B638, "Failed to parse domain for event from publisher. Unable to reply to service with metadata", 89, 2, MEMORY[0x277D84F90]);
    }

    (*(v7 + 8))(v10, v5);
  }

  OUTLINED_FUNCTION_31_0();
}

void sub_261FCA138()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9D60, &unk_262041400);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v6);
  sub_262039A2C();
  OUTLINED_FUNCTION_0();
  v16[1] = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_54();
  MEMORY[0x28223BE20](v9);
  v16[0] = v16 - v10;
  OS_dispatch_queue.assertOnQueueHierarchy()();
  v17 = v5;
  v18[0] = v5;
  v18[1] = v3;
  v18[2] = v1;
  sub_261FCA974();
  sub_261FCA9C8();
  sub_261F967DC();
  v11 = sub_261F96830();

  sub_26203977C();

  v12 = sub_26203A4AC();
  if (qword_28108B630 != -1)
  {
    OUTLINED_FUNCTION_0_15(&qword_28108B630);
  }

  if (os_log_type_enabled(qword_28108B638, v12))
  {
    OUTLINED_FUNCTION_27();
    v13 = OUTLINED_FUNCTION_22_4();
    v18[0] = v13;
    *v11 = 136446210;
    *(v11 + 4) = sub_261F67FE4(v17, v3, v18);
    OUTLINED_FUNCTION_28_3(&dword_261F5B000, v14, v15, "Successfully pushed auxiliary metadata to service for domain %{public}s");
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  OUTLINED_FUNCTION_31_0();
}

uint64_t AuxiliaryMetadataProvider.deinit()
{

  return v0;
}

uint64_t AuxiliaryMetadataProvider.__deallocating_deinit()
{
  AuxiliaryMetadataProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_261FCA720(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEF9C80, &qword_2620406E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261FCA7A4()
{
  result = qword_28108C4D0;
  if (!qword_28108C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C4D0);
  }

  return result;
}

uint64_t sub_261FCA7F8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEF9C90, &qword_2620406E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261FCA870()
{
  result = qword_28108CF50;
  if (!qword_28108CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CF50);
  }

  return result;
}

unint64_t sub_261FCA8C4()
{
  result = qword_28108CFF0;
  if (!qword_28108CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CFF0);
  }

  return result;
}

unint64_t sub_261FCA944(uint64_t a1)
{
  *(a1 + 8) = sub_261FCA974();
  result = sub_261FCA9C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_261FCA974()
{
  result = qword_28108C1A0;
  if (!qword_28108C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C1A0);
  }

  return result;
}

unint64_t sub_261FCA9C8()
{
  result = qword_28108C1A8[0];
  if (!qword_28108C1A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28108C1A8);
  }

  return result;
}

uint64_t sub_261FCAA28(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7A && *(a1 + 8))
    {
      v2 = *a1 + 121;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x79)
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

uint64_t sub_261FCAA7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_261FCAB00(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_261FCAB40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AuxiliaryMetadataUpdate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AuxiliaryMetadataItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AuxiliaryMetadataItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_261FCAEA0(_BYTE *result, int a2, int a3)
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

unint64_t sub_261FCAF50()
{
  result = qword_27FEF9D18;
  if (!qword_27FEF9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9D18);
  }

  return result;
}

unint64_t sub_261FCAFA8()
{
  result = qword_27FEF9D20;
  if (!qword_27FEF9D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9D20);
  }

  return result;
}

unint64_t sub_261FCB000()
{
  result = qword_27FEF9D28;
  if (!qword_27FEF9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9D28);
  }

  return result;
}

unint64_t sub_261FCB058()
{
  result = qword_27FEF9D30;
  if (!qword_27FEF9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9D30);
  }

  return result;
}

unint64_t sub_261FCB0B0()
{
  result = qword_27FEF9D38;
  if (!qword_27FEF9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9D38);
  }

  return result;
}

unint64_t sub_261FCB108()
{
  result = qword_27FEF9D40;
  if (!qword_27FEF9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9D40);
  }

  return result;
}

unint64_t sub_261FCB160()
{
  result = qword_27FEF9D48;
  if (!qword_27FEF9D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9D48);
  }

  return result;
}

unint64_t sub_261FCB1B8()
{
  result = qword_27FEF9D50;
  if (!qword_27FEF9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9D50);
  }

  return result;
}

unint64_t sub_261FCB210()
{
  result = qword_27FEF9D58;
  if (!qword_27FEF9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9D58);
  }

  return result;
}

unint64_t sub_261FCB268()
{
  result = qword_28108CFE0;
  if (!qword_28108CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CFE0);
  }

  return result;
}

unint64_t sub_261FCB2C0()
{
  result = qword_28108CFE8;
  if (!qword_28108CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CFE8);
  }

  return result;
}

unint64_t sub_261FCB318()
{
  result = qword_28108D008;
  if (!qword_28108D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D008);
  }

  return result;
}

unint64_t sub_261FCB370()
{
  result = qword_28108D010;
  if (!qword_28108D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D010);
  }

  return result;
}

unint64_t sub_261FCB3C8()
{
  result = qword_28108D060;
  if (!qword_28108D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D060);
  }

  return result;
}

unint64_t sub_261FCB420()
{
  result = qword_28108D068;
  if (!qword_28108D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D068);
  }

  return result;
}

unint64_t sub_261FCB478()
{
  result = qword_28108D030;
  if (!qword_28108D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D030);
  }

  return result;
}

unint64_t sub_261FCB4D0()
{
  result = qword_28108D038;
  if (!qword_28108D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D038);
  }

  return result;
}

unint64_t sub_261FCB528()
{
  result = qword_28108D028;
  if (!qword_28108D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D028);
  }

  return result;
}

unint64_t sub_261FCB580()
{
  result = qword_28108D020;
  if (!qword_28108D020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D020);
  }

  return result;
}

unint64_t sub_261FCB5D8()
{
  result = qword_28108D050;
  if (!qword_28108D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D050);
  }

  return result;
}

unint64_t sub_261FCB630()
{
  result = qword_28108D058;
  if (!qword_28108D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D058);
  }

  return result;
}

unint64_t sub_261FCB688()
{
  result = qword_28108D040;
  if (!qword_28108D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D040);
  }

  return result;
}

unint64_t sub_261FCB6E0()
{
  result = qword_28108D048;
  if (!qword_28108D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D048);
  }

  return result;
}

unint64_t sub_261FCB738()
{
  result = qword_28108CFF8;
  if (!qword_28108CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CFF8);
  }

  return result;
}

unint64_t sub_261FCB790()
{
  result = qword_28108D000;
  if (!qword_28108D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D000);
  }

  return result;
}

unint64_t sub_261FCB7E8()
{
  result = qword_28108D070;
  if (!qword_28108D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D070);
  }

  return result;
}

unint64_t sub_261FCB840()
{
  result = qword_28108D078;
  if (!qword_28108D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D078);
  }

  return result;
}

uint64_t sub_261FCB894(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_261FCB8F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_261FCB93C()
{
  result = qword_28108CFC0;
  if (!qword_28108CFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEFA0A0, &unk_262040360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CFC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_6(uint64_t a1, uint64_t a2)
{

  return sub_26203A97C();
}

uint64_t OUTLINED_FUNCTION_29_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26203AB3C();
}

uint64_t ControlChannelConnectionError.init(_:message:failureReason:recoverySuggestion:underlyingError:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a1;
  *a8 = *a1;
  v18 = v15;
  v16 = ControlChannelConnectionError.Message.format(code:)(&v18);
  result = sub_261F65C08(a2);
  *(a8 + 8) = v16;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6;
  *(a8 + 56) = a7;
  return result;
}

unint64_t ControlChannelConnectionError.Code.defaultMessage.getter()
{
  result = 0x206E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      return result;
    case 5:
      result = 0xD000000000000021;
      break;
    default:
      result = 0x726F70736E617254;
      break;
  }

  return result;
}

RemotePairingDevice::ControlChannelConnectionError::Code_optional __swiftcall ControlChannelConnectionError.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_261FCBBE8@<X0>(uint64_t *a1@<X8>)
{
  result = ControlChannelConnectionError.Code.rawValue.getter();
  *a1 = result;
  return result;
}

void *ControlChannelConnectionError.underlyingError.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t sub_261FCBCCC(uint64_t a1)
{
  v2 = sub_261FCD6E0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_261FCBD08(uint64_t a1)
{
  v2 = sub_261FCD6E0();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t ControlChannelConnectionError.errorUserInfo.getter()
{
  v2 = v0[1];
  v1 = v0[2];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[6];
  v48 = v0[5];
  v6 = v0[7];

  v7 = MEMORY[0x277D837D0];
  sub_26203A0FC();
  v8 = sub_26203A1BC();
  *(&v53 + 1) = v7;
  *&v52 = v2;
  *(&v52 + 1) = v1;
  OUTLINED_FUNCTION_9_4(v8, v9, v10, v11, v12, v13);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_13();
  sub_261FA4260();

  v14 = v50;
  v15 = sub_26203A1BC();
  if (v3)
  {
    *(&v53 + 1) = v7;
    *&v52 = v4;
    *(&v52 + 1) = v3;
    OUTLINED_FUNCTION_9_4(v15, v16, v17, v18, v19, v20);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_13();
    sub_261FA4260();

    v14 = v50;
  }

  else
  {
    v21 = sub_261FA3868(v15, v16);
    if (v22)
    {
      v23 = v21;
      swift_isUniquelyReferenced_nonNull_native();
      *&v51[0] = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9860, &qword_26203F5F0);
      sub_26203A8EC();

      sub_261F8D184((*(v50 + 56) + 32 * v23), &v52);
      sub_26203A90C();
    }

    else
    {
      v52 = 0u;
      v53 = 0u;
    }

    sub_261F693A0(&v52);
  }

  v24 = sub_26203A1BC();
  v30 = v24;
  v31 = v25;
  if (v5)
  {
    *(&v53 + 1) = v7;
    *&v52 = v48;
    *(&v52 + 1) = v5;
    OUTLINED_FUNCTION_9_4(v24, v25, v26, v27, v28, v29);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_13();
    sub_261FA4260();

    v14 = v50;
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
    sub_261F693A0(&v52);
    v32 = sub_261FA3868(v30, v31);
    if (v33)
    {
      v34 = v32;
      swift_isUniquelyReferenced_nonNull_native();
      v50 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9860, &qword_26203F5F0);
      sub_26203A8EC();

      sub_261F8D184((*(v14 + 56) + 32 * v34), v51);
      sub_26203A90C();
    }

    else
    {
      memset(v51, 0, sizeof(v51));
    }

    sub_261F693A0(v51);
  }

  v35 = sub_26203A1BC();
  if (v6)
  {
    swift_getErrorValue();
    *(&v53 + 1) = v49;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v52);
    v38 = (*(*(v49 - 8) + 16))(boxed_opaque_existential_0);
    OUTLINED_FUNCTION_9_4(v38, v39, v40, v41, v42, v43);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_13();
    sub_261FA4260();

    return v50;
  }

  else
  {
    v44 = sub_261FA3868(v35, v36);
    if (v45)
    {
      v46 = v44;
      swift_isUniquelyReferenced_nonNull_native();
      *&v51[0] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9860, &qword_26203F5F0);
      sub_26203A8EC();
      v14 = *&v51[0];

      sub_261F8D184((*(v14 + 56) + 32 * v46), &v52);
      OUTLINED_FUNCTION_47();
      sub_26203A90C();
    }

    else
    {
      v52 = 0u;
      v53 = 0u;
    }

    sub_261F693A0(&v52);
  }

  return v14;
}

uint64_t sub_261FCC1A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v3 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x526572756C696166 && a2 == 0xED00006E6F736165;
      if (v7 || (sub_26203AC0C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x8000000262050190 == a2;
        if (v8 || (sub_26203AC0C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000002620501B0 == a2;
          if (v9 || (sub_26203AC0C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x69796C7265646E75 && a2 == 0xEF726F727245676ELL)
          {

            return 5;
          }

          else
          {
            v11 = sub_26203AC0C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_261FCC3B4(char a1)
{
  result = 1701080931;
  switch(a1)
  {
    case 1:
      result = 0x6567617373656DLL;
      break;
    case 2:
      result = 0x526572756C696166;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x69796C7265646E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_261FCC484(uint64_t a1, uint64_t a2)
{
  v2 = sub_26203A96C();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261FCC4D8(char a1)
{
  if (a1)
  {
    return 0x726F727265736ELL;
  }

  else
  {
    return 0x656C6261646F63;
  }
}

uint64_t sub_261FCC538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261FCC1A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261FCC560@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261FCC3AC();
  *a1 = result;
  return result;
}

uint64_t sub_261FCC588(uint64_t a1)
{
  v2 = sub_261FCD03C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FCC5C4(uint64_t a1)
{
  v2 = sub_261FCD03C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FCC624@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261FCC484(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_261FCC654@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261FCC4D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

char ControlChannelConnectionError.init(from:)@<W0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9D88, &unk_262041420);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_261FCD03C();
  sub_26203AE3C();
  if (!v2)
  {
    OUTLINED_FUNCTION_2_10();
    v6 = sub_26203AA1C();
    ControlChannelConnectionError.Code.init(rawValue:)(v6);
    OUTLINED_FUNCTION_2_10();
    v7 = sub_26203A9EC();
    v10 = v9;
    v24 = v7;
    OUTLINED_FUNCTION_2_10();
    v22 = sub_26203A99C();
    v23 = v11;
    OUTLINED_FUNCTION_2_10();
    v20 = sub_26203A99C();
    v21 = v12;
    LOBYTE(v25) = 4;
    sub_261FCD090();
    OUTLINED_FUNCTION_7_4();
    sub_26203A9CC();
    if (v29 == 2)
    {
      v19 = 0;
    }

    else
    {
      v28 = 5;
      if (v29)
      {
        sub_261FCA870();
        OUTLINED_FUNCTION_7_4();
        sub_26203AA2C();
        sub_261F9B6D0(0, &qword_27FEF9DA0, 0x277CCAAC8);
        sub_261F9B6D0(0, &qword_28108B280, 0x277CCA9B8);
        v17 = sub_26203A52C();
        sub_261F6BFFC(v25, v26);
        v19 = v17;
        v18 = v17;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
        sub_261F67F70(&qword_27FEF9DA8, &qword_27FEF9D88, &unk_262041420, MEMORY[0x277D844D0]);
        sub_261F96884();
        sub_26203AC6C();
        v19 = v25;
        v16 = v25;
      }
    }

    v25 = v24;
    v26 = v10;
    v27 = 0;
    v28 = 0;
    v13 = ControlChannelConnectionError.Message.format(code:)(&v28);

    sub_261F65C08(&v25);
    v14 = OUTLINED_FUNCTION_20_0();
    v15(v14);
    *a2 = 0;
    *(a2 + 8) = v13;
    *(a2 + 24) = v22;
    *(a2 + 32) = v23;
    *(a2 + 40) = v20;
    *(a2 + 48) = v21;
    *(a2 + 56) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void ControlChannelConnectionError.encode(to:)(void *a1)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9DB0, &qword_262041430);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = v1[1];
  v24 = v1[2];
  v25 = v9;
  v10 = v1[3];
  v22 = v1[4];
  v23 = v10;
  v11 = v1[5];
  v20 = v1[6];
  v21 = v11;
  v12 = v1[7];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_261FCD03C();
  v13 = v3;
  sub_26203AE5C();
  LOBYTE(v28[0]) = 0;
  v14 = v26;
  sub_26203AB2C();
  if (v14)
  {
    (*(v5 + 8))(v8, v3);
  }

  else
  {
    v16 = v22;
    v15 = v23;
    v17 = v21;
    v26 = v12;
    LOBYTE(v28[0]) = 1;
    OUTLINED_FUNCTION_6_8(v25, v24, v28);
    if (v16)
    {
      LOBYTE(v28[0]) = 2;
      OUTLINED_FUNCTION_6_8(v15, v16, v28);
    }

    if (v20)
    {
      LOBYTE(v28[0]) = 3;
      OUTLINED_FUNCTION_6_8(v17, v20, v28);
    }

    if (v26)
    {
      v28[0] = v26;
      v27 = 5;
      v18 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
      sub_261F67F70(&qword_27FEF9DB8, &qword_27FEF9DB0, &qword_262041430, MEMORY[0x277D84540]);
      sub_261F96884();
      sub_26203AC7C();
      LOBYTE(v28[0]) = 0;
      v27 = 4;
      sub_261FCD0E4();
      sub_26203AB3C();
      (*(v5 + 8))(v8, v13);
    }

    else
    {
      (*(v5 + 8))(v8, v13);
    }
  }
}

unint64_t sub_261FCD03C()
{
  result = qword_27FEF9D90;
  if (!qword_27FEF9D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9D90);
  }

  return result;
}

unint64_t sub_261FCD090()
{
  result = qword_27FEF9D98;
  if (!qword_27FEF9D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9D98);
  }

  return result;
}

unint64_t sub_261FCD0E4()
{
  result = qword_27FEF9DC0;
  if (!qword_27FEF9DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9DC0);
  }

  return result;
}

unint64_t sub_261FCD13C()
{
  result = qword_27FEF9DC8;
  if (!qword_27FEF9DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9DC8);
  }

  return result;
}

uint64_t sub_261FCD190(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_261FCD1D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261FCD230(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261FCD26C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_261FCD2B8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 32) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ControlChannelConnectionError.UnderlyingErrorType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}