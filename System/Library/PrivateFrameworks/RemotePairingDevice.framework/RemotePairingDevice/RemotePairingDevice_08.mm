uint64_t sub_262008E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = sub_262039FAC();
  v21 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_262039FEC();
  v19 = *(v8 - 8);
  v20 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2620354D8(&aBlock);
  v11 = v25;
  v22 = aBlock;
  v12 = *(a1 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v22;
  *(v13 + 32) = v11;
  *(v13 + 40) = a1;
  *(v13 + 48) = a2;
  *(v13 + 56) = a3;
  v27 = sub_26200AA2C;
  v28 = v13;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v25 = sub_261F78F64;
  v26 = &block_descriptor_21_0;
  v14 = _Block_copy(&aBlock);
  v15 = v12;

  sub_262039FCC();
  v23 = MEMORY[0x277D84F90];
  sub_261F7AA38(&qword_28108B370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
  v16 = v18;
  sub_26203A75C();
  MEMORY[0x266722A20](0, v10, v7, v14);
  _Block_release(v14);

  (*(v21 + 8))(v7, v16);
  (*(v19 + 8))(v10, v20);
}

uint64_t sub_262009150(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, void *a4, void (*a5)(void *), uint64_t a6)
{
  v10 = *(a1 + 16);
  if (v10)
  {

    sub_26200A458(v10, a1);
    v13 = v12;
    v14 = a4[19];
    if (v14)
    {
      v15 = *(v12 + 16);
      if (v15)
      {
        v16 = (v12 + 32);
        v17 = v14;
        for (i = v15 - 1; ; --i)
        {
          memcpy(__dst, v16, 0x60uLL);
          memcpy(v24, v16, sizeof(v24));
          sub_261F6D6B0(__dst, v23);
          sub_262009298(v24, v17);
          sub_261F6D70C(__dst);
          if (!i)
          {
            break;
          }

          v16 += 96;
        }
      }
    }

    __dst[0] = v13;
    __dst[1] = a2;
    __dst[2] = a3;

    a5(__dst);
  }

  else
  {
    v19 = a4[11];
    v20 = a4[12];
    a4[11] = a5;
    a4[12] = a6;
    sub_261F665E4(v19, v20);

    return a2(v21);
  }
}

uint64_t sub_262009298(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9B60, &unk_262040530);
  v6 = OUTLINED_FUNCTION_40(v5);
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910);
  v8 = OUTLINED_FUNCTION_40(v7);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - v12;
  v14 = sub_262039ACC();
  OUTLINED_FUNCTION_0();
  v16 = MEMORY[0x28223BE20](v15);
  result = MEMORY[0x28223BE20](v16);
  v21 = a1[9];
  if (v21 >> 60 != 15)
  {
    v55 = a2;
    v56 = v20;
    v58 = v19;
    v59 = &v51 - v18;
    v54 = v2;
    v22 = a1[7];
    v57 = a1[6];
    v23 = a1[8];
    v24 = v21;
    sub_262039B3C();
    OUTLINED_FUNCTION_34_5();
    sub_261F7B690(v23, v24);
    v25 = OUTLINED_FUNCTION_39_1();
    sub_261F6B73C(v25, v26);
    OUTLINED_FUNCTION_39_1();
    sub_262039ADC();
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {
      sub_261F7B6A4(v23, v24);
      v27 = v13;
      return sub_261FC2F14(v27, &qword_27FEFA270, &qword_262041910);
    }

    v52 = v23;
    v53 = v24;
    v28 = v58;
    v29 = v59;
    v30 = *(v58 + 32);
    v30(v59, v13, v14);
    OUTLINED_FUNCTION_34_5();
    sub_261F6B73C(v57, v22);
    sub_262039ADC();
    if (__swift_getEnumTagSinglePayload(v11, 1, v14) == 1)
    {
      sub_261F7B6A4(v52, v53);
      (*(v28 + 8))(v29, v14);
      v27 = v11;
      return sub_261FC2F14(v27, &qword_27FEFA270, &qword_262041910);
    }

    v31 = v56;
    v30(v56, v11, v14);
    v33 = v52;
    v32 = v53;
    v34 = v59;
    switch(v53 >> 61)
    {
      case 1uLL:
        v43 = v52 >> 16;
        OUTLINED_FUNCTION_8_3();
        sub_26203A7CC();
        OUTLINED_FUNCTION_18();
        MEMORY[0x266722710](0x203A504455, 0xE500000000000000);
        OUTLINED_FUNCTION_8_11();
        OUTLINED_FUNCTION_35_2();
        LOWORD(v60) = v33;
        OUTLINED_FUNCTION_39_1();
        v44 = sub_26203ABAC();
        MEMORY[0x266722710](v44);
        v31 = v56;
        v34 = v59;

        OUTLINED_FUNCTION_24_3();
        OUTLINED_FUNCTION_9_13();
        OUTLINED_FUNCTION_35_2();
        LOWORD(v60) = v43;
        OUTLINED_FUNCTION_39_1();
        v32 = v53;
        sub_26203ABAC();
        OUTLINED_FUNCTION_26_7();

        goto LABEL_15;
      case 2uLL:
        v41 = v52 >> 8;
        OUTLINED_FUNCTION_8_3();
        sub_26203A7CC();
        OUTLINED_FUNCTION_18();
        MEMORY[0x266722710](0x203A504D4349, 0xE600000000000000);
        OUTLINED_FUNCTION_8_11();
        OUTLINED_FUNCTION_24_3();
        OUTLINED_FUNCTION_9_13();
        MEMORY[0x266722710](0x3D657079745B20, 0xE700000000000000);
        LOBYTE(v60) = v33;
        OUTLINED_FUNCTION_15_9();
        v42 = sub_26203ABAC();
        MEMORY[0x266722710](v42);

        MEMORY[0x266722710](0x3D65646F6320, 0xE600000000000000);
        LOBYTE(v60) = v41;
        v32 = v53;
        OUTLINED_FUNCTION_15_9();
        goto LABEL_11;
      case 3uLL:
        OUTLINED_FUNCTION_8_3();
        sub_26203A7CC();
        OUTLINED_FUNCTION_18();
        MEMORY[0x266722710](0x6165737261706E55, 0xEC00000020656C62);
        LOBYTE(v60) = v33;
        sub_26203ABAC();
        OUTLINED_FUNCTION_26_7();

        MEMORY[0x266722710](8250, 0xE200000000000000);
        OUTLINED_FUNCTION_8_11();
        OUTLINED_FUNCTION_24_3();
        OUTLINED_FUNCTION_9_13();
        MEMORY[0x266722710](0x3D726F7272655B20, 0xE800000000000000);
        v60 = v32 & 0x1FFFFFFFFFFFFFFFLL;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
        sub_26203A8CC();
        goto LABEL_13;
      case 4uLL:
        OUTLINED_FUNCTION_8_3();
        sub_26203A7CC();
        OUTLINED_FUNCTION_18();
        MEMORY[0x266722710](0x206E776F6E6B6E55, 0xE800000000000000);
        LOBYTE(v60) = v33;
        sub_26203ABAC();
        OUTLINED_FUNCTION_26_7();

        MEMORY[0x266722710](8250, 0xE200000000000000);
        OUTLINED_FUNCTION_8_11();
        OUTLINED_FUNCTION_24_3();
        OUTLINED_FUNCTION_9_13();
        goto LABEL_15;
      default:
        v35 = v52 >> 16;
        v36 = HIDWORD(v52);
        v57 = HIDWORD(v53);
        v37 = HIWORD(v53);
        OUTLINED_FUNCTION_8_3();
        sub_26203A7CC();
        OUTLINED_FUNCTION_18();
        MEMORY[0x266722710](0x203A504354, 0xE500000000000000);
        sub_26203A8CC();
        OUTLINED_FUNCTION_35_2();
        LOWORD(v60) = v33;
        v38 = sub_26203ABAC();
        MEMORY[0x266722710](v38);

        OUTLINED_FUNCTION_24_3();
        sub_26203A8CC();
        OUTLINED_FUNCTION_35_2();
        LOWORD(v60) = v35;
        v32 = v53;
        sub_26203ABAC();
        OUTLINED_FUNCTION_26_7();

        MEMORY[0x266722710](0x3D7367616C665B20, 0xE800000000000000);
        v39 = sub_2620033D4(v37);
        MEMORY[0x266722710](v39);

        MEMORY[0x266722710](0x3D71657320, 0xE500000000000000);
        LODWORD(v60) = v36;
        v31 = v56;
        v34 = v59;
        OUTLINED_FUNCTION_15_9();
        v40 = sub_26203ABAC();
        MEMORY[0x266722710](v40);

        MEMORY[0x266722710](0x3D6B636120, 0xE500000000000000);
        LODWORD(v60) = v32;
        OUTLINED_FUNCTION_15_9();
        sub_26203ABAC();
        OUTLINED_FUNCTION_26_7();

        MEMORY[0x266722710](0x3D776F646E697720, 0xE800000000000000);
        LOWORD(v60) = v57;
        v33 = v52;
LABEL_11:
        sub_26203ABAC();
        OUTLINED_FUNCTION_26_7();

LABEL_13:
        MEMORY[0x266722710](93, 0xE100000000000000);
LABEL_15:
        OUTLINED_FUNCTION_18();
        MEMORY[0x266722710](10, 0xE100000000000000);
        sub_261FDBDF0();
        v46 = v45;
        v48 = v47;
        v49 = *(v54 + 80);
        OS_dispatch_io.write(content:completingOn:completion:)(v46, v48, v49, nullsub_1, 0);

        sub_261F6BFFC(v46, v48);
        sub_261F7B6A4(v33, v32);
        v50 = *(v58 + 8);
        v50(v31, v14);
        result = (v50)(v34, v14);
        break;
    }
  }

  return result;
}

uint64_t sub_262009AE4(uint64_t a1, NSObject *a2)
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
    if (qword_27FEF86C8 != -1)
    {
      swift_once();
    }

    v21 = qword_27FEFA490;
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
    if (qword_27FEF86C8 != -1)
    {
      swift_once();
    }

    v35 = qword_27FEFA490;
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

void SkywalkChannelVirtualInterface.getInterfaceStatistics()()
{
  v2 = NEVirtualInterfaceCopyStatistics();
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v4 = v3;
      sub_26203A0CC();
    }

    sub_261F9BCE0();
    OUTLINED_FUNCTION_5_11();
    sub_26203AD3C();
    sub_26203A7CC();
    MEMORY[0x266722710](0xD00000000000003BLL, 0x800000026204F960);
    type metadata accessor for CFDictionary(0);
    v5 = v3;
    v6 = sub_26203A20C();
    MEMORY[0x266722710](v6);

    v7 = OUTLINED_FUNCTION_22(0x726F6620u);
    MEMORY[0x266722710](v7, v8 & 0xFFFFFFFFFFFFLL | 0xEF20000000000000);
    MEMORY[0x266722710](*(v1 + 16), *(v1 + 24));
    sub_261F9D610();
    swift_allocError();
    sub_26203AD4C();
    swift_willThrow();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26200A3A0@<X0>(void *a1@<X0>, char *a2@<X1>, void *a3@<X2>, int a4@<W3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  result = SkywalkChannelVirtualInterface.__allocating_init(queue:address:netmask:mtu:maxPendingPackets:physicalInterfaceName:)(a1, a2, a3, a4 & 0x1FFFF, a5 | ((HIDWORD(a5) & 1) << 32), a6, a7);
  if (!v8)
  {
    *a8 = result;
  }

  return result;
}

void sub_26200A458(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    goto LABEL_37;
  }

  v3 = v2;
  if (a1)
  {
    v6 = sub_26203A3FC();
    *(v6 + 16) = a1;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v47 = a1;
  v7 = *(a2 + 16);
  v46 = v6;
  if (v7)
  {
    v53 = 0;
    v48 = v6 + 32;
    v8 = (a2 + 32);
    v62 = ", dropping %d packets";
    while (1)
    {
      v9 = *v8;
      v10 = *(v8 + 1);
      v54 = *v8;
      switch(v10 >> 62)
      {
        case 1uLL:
          v12 = *v8;
          if (!__OFSUB__(DWORD1(v9), v9))
          {
            v11 = DWORD1(v9) - v9;
            goto LABEL_12;
          }

          __break(1u);
          goto LABEL_35;
        case 2uLL:
          v12 = *v8;
          v14 = *(v9 + 16);
          v13 = *(v9 + 24);
          v11 = v13 - v14;
          if (__OFSUB__(v13, v14))
          {
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            return;
          }

LABEL_12:
          sub_261F6B73C(v12, v10);
          sub_261F6B73C(v12, v10);
          sub_261F6B73C(v12, v10);
          *&v9 = v54;
LABEL_13:
          if (v11 < 40)
          {
LABEL_14:
            sub_261F6BFFC(v9, v10);
            sub_261F9BCE0();
            sub_26203ACEC();
            v55 = v56;
            sub_261F9D610();
            v15 = swift_allocError();
            sub_26203AD4C();
            swift_willThrow();
            v16 = v54;
            v3 = 0;
LABEL_17:
            v18 = v16;
            sub_261F6BFFC(v16, v10);
            v19 = sub_26203A48C();
            if (qword_27FEF86C8 != -1)
            {
              swift_once();
            }

            v20 = qword_27FEFA490;
            if (os_log_type_enabled(qword_27FEFA490, v19))
            {
              v21 = swift_slowAlloc();
              v22 = v7;
              v23 = swift_slowAlloc();
              *v21 = 138543362;
              v24 = v15;
              v25 = _swift_stdlib_bridgeErrorToNSError();
              *(v21 + 4) = v25;
              *v23 = v25;
              _os_log_impl(&dword_261F5B000, v20, v19, "Discarding packet data as it is not a valid IPv6 packet: %{public}@", v21, 0xCu);
              sub_261FC2F14(v23, qword_27FEF9B90, &qword_262040548);
              v26 = v23;
              v7 = v22;
              v3 = 0;
              MEMORY[0x266724180](v26, -1, -1);
              MEMORY[0x266724180](v21, -1, -1);
            }

            sub_261F6BFFC(v18, v10);

            goto LABEL_22;
          }

          v17 = v9;
          sub_261F6B73C(v9, v10);
          IPv6Header.init(_:)();
          if (v3)
          {
            sub_261F6BFFC(v17, v10);
            v15 = v3;
            v3 = 0;
            v16 = v54;
            goto LABEL_17;
          }

          v28 = *(&v56 + 1);
          v27 = v56;
          v29 = v57;
          v30 = v58;
          v31 = v59;
          v33 = v60;
          v32 = v61;
          if (qword_28108CB70 != -1)
          {
            v44 = v60;
            v45 = v61;
            v43 = v59;
            v40 = v58;
            v41 = v56;
            v42 = v57;
            swift_once();
            v30 = v40;
            v32 = v45;
            v31 = v43;
            v33 = v44;
            v29 = v42;
            v28 = *(&v41 + 1);
            v27 = v41;
          }

          v49 = v7;
          v50 = v27;
          v52 = v28;
          v51 = v29;
          if (byte_27FF07DF0)
          {
            *&v56 = v27;
            *(&v56 + 1) = v28;
            v57 = v29;
            v58 = v30;
            v59 = v31;
            v60 = v33;
            v61 = v32;
            v34 = v30;
            v35 = v32;
            v36 = v31;
            sub_261F6B73C(v30, v31);
            sub_261F6B73C(v33, v35);
            sub_2620043E4(&v56, v17, v10, &v55);
            v37 = v55;
          }

          else
          {
            v34 = v30;
            v35 = v32;
            v36 = v31;
            sub_261F6BFFC(v17, v10);
            v37 = xmmword_26203F730;
          }

          v38 = v53;
          v39 = v48 + 96 * v53;
          *v39 = 30;
          *(v39 + 8) = v50;
          *(v39 + 16) = v52;
          *(v39 + 24) = v51;
          *(v39 + 32) = v34;
          *(v39 + 40) = v36;
          *(v39 + 48) = v33;
          *(v39 + 56) = v35;
          *(v39 + 64) = v37;
          *(v39 + 80) = v54;
          sub_261F6BFFC(v17, v10);
          ++v53;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_36;
          }

          v7 = v49;
LABEL_22:
          ++v8;
          if (!--v7)
          {
            goto LABEL_32;
          }

          break;
        case 3uLL:
          goto LABEL_14;
        default:
          v11 = BYTE6(v10);
          goto LABEL_13;
      }
    }
  }

  v53 = 0;
LABEL_32:
  if (v53 > v47)
  {
    goto LABEL_38;
  }

  *(v46 + 16) = v53;
}

uint64_t sub_26200A938(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

unint64_t sub_26200AA08(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26200AA3C(uint64_t a1)
{
  v3 = sub_26203942C();
  OUTLINED_FUNCTION_40(v3);
  v5 = (v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return sub_262009AE4(a1, v5);
}

uint64_t objectdestroy_6Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void OUTLINED_FUNCTION_26_7()
{

  JUMPOUT(0x266722710);
}

unint64_t OUTLINED_FUNCTION_27_7()
{

  return sub_261F67FE4(v1, v0, (v2 - 168));
}

uint64_t sub_26200AB9C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v4 = v6;
      goto LABEL_6;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_6:
      result = sub_26200EED8(a1, v4);
      break;
    default:
      result = sub_2620394EC();
      break;
  }

  return result;
}

uint64_t NWConnection.receive(minLength:maxLength:completion:)()
{
  OUTLINED_FUNCTION_7_11();
  v3 = v2;
  OUTLINED_FUNCTION_107();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v0;

  sub_262039C7C();
}

uint64_t sub_26200AD80()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_28108B3B0 = result;
  return result;
}

id powerLog.getter()
{
  if (qword_28108B3A0 != -1)
  {
    swift_once();
  }

  v1 = qword_28108B3B0;

  return v1;
}

uint64_t sub_26200AE4C()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEFA4C8 = result;
  return result;
}

RemotePairingDevice::TransportProtocolType_optional __swiftcall TransportProtocolType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26203A96C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TransportProtocolType.rawValue.getter()
{
  v1 = 7365492;
  if (*v0 != 1)
  {
    v1 = 7365749;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1667855729;
  }
}

uint64_t sub_26200AF9C@<X0>(uint64_t *a1@<X8>)
{
  result = TransportProtocolType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TunnelConnectionState.hashValue.getter()
{
  v1 = *v0;
  sub_26203ADDC();
  MEMORY[0x266723290](v1);
  return sub_26203AE0C();
}

uint64_t PeerConnectionInfo.description.getter()
{
  v3 = *(v0 + 8);

  MEMORY[0x266722710](91, 0xE100000000000000);
  v1 = sub_26203ABAC();
  MEMORY[0x266722710](v1);

  MEMORY[0x266722710](93, 0xE100000000000000);
  return v3;
}

uint64_t PeerConnectionInfo.init(owningPID:owningProcessName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_26200B1A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4950676E696E776FLL && a2 == 0xE900000000000044;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000262052320 == a2)
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

uint64_t sub_26200B278(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x4950676E696E776FLL;
  }
}

uint64_t sub_26200B2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26200B1A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26200B2E8(uint64_t a1)
{
  v2 = sub_26200C698();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26200B324(uint64_t a1)
{
  v2 = sub_26200C698();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PeerConnectionInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA4D0, &qword_262045290);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v7);
  v9 = v12 - v8;
  v10 = *(v1 + 8);
  v12[0] = *(v1 + 16);
  v12[1] = v10;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_26200C698();
  sub_26203AE5C();
  v14 = 0;
  sub_26203AB4C();
  if (!v2)
  {
    v13 = 1;
    sub_26203AAFC();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t PeerConnectionInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA4E0, &qword_262045298);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_26200C698();
  sub_26203AE3C();
  if (!v2)
  {
    v6 = sub_26203AA3C();
    v8 = sub_26203A9EC();
    v10 = v9;
    v11 = OUTLINED_FUNCTION_122();
    v12(v11);
    *a2 = v6;
    *(a2 + 8) = v8;
    *(a2 + 16) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_26200B6B0()
{
  v0 = sub_26203A1FC();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_74();
  v6 = v5 - v4;
  sub_26203A1EC();
  v7 = sub_26203A1CC();
  v9 = v8;
  result = (*(v2 + 8))(v6, v0);
  if (v9 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_28108C7E0 = v7;
    qword_28108C7E8[0] = v9;
  }

  return result;
}

unint64_t StreamBasedTunnelConnection.send(controlMessage:completion:)(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_26203933C();
  swift_allocObject();
  sub_26203932C();
  type metadata accessor for TunnelMessage(0);
  OUTLINED_FUNCTION_3_20();
  sub_26200EFDC(v9, v10, &protocol conformance descriptor for TunnelMessage);
  sub_26203931C();

  v11 = OUTLINED_FUNCTION_122();
  if (MEMORY[0x266721A20](v11) >= 0x10000)
  {
    sub_26203A7CC();
    MEMORY[0x266722710](0xD000000000000035, 0x8000000262052120);
    v12 = OUTLINED_FUNCTION_122();
    MEMORY[0x266721A20](v12);
    v13 = sub_26203ABAC();
    MEMORY[0x266722710](v13);

    MEMORY[0x266722710](0x736574796220, 0xE600000000000000);
    sub_261F9BCE0();
    sub_26203ACEC();
    v14 = sub_261F9D610();
    v15 = OUTLINED_FUNCTION_6(v14);
    sub_26203AD4C();
    a2(v15);

    v16 = OUTLINED_FUNCTION_122();
    return sub_261F6BFFC(v16, v17);
  }

  if (qword_28108C7D0 != -1)
  {
    swift_once();
  }

  v22 = qword_28108C7E0;
  v23 = qword_28108C7E8[0];
  sub_261F6B73C(qword_28108C7E0, qword_28108C7E8[0]);
  v18 = OUTLINED_FUNCTION_122();
  result = MEMORY[0x266721A20](v18);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result >> 16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_26200BB44(bswap32(result) >> 16);
  result = MEMORY[0x266721A20](v22, v23);
  if (result == 10)
  {
    OUTLINED_FUNCTION_122();
    sub_26203958C();
    (*(a5 + 88))(v22, v23, a2, a3, a4, a5);
    v20 = OUTLINED_FUNCTION_122();
    sub_261F6BFFC(v20, v21);
    v16 = v22;
    v17 = v23;
    return sub_261F6BFFC(v16, v17);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26200BABC(uint64_t a1, unint64_t a2)
{
  v9[3] = MEMORY[0x277CC9318];
  v9[4] = MEMORY[0x277CC9300];
  v9[0] = a1;
  v9[1] = a2;
  v5 = __swift_project_boxed_opaque_existential_0Tm(v9, MEMORY[0x277CC9318]);
  v6 = *v5;
  v7 = v5[1];
  sub_261F6B73C(a1, a2);
  sub_26200AB9C(v6, v7, v2);
  return __swift_destroy_boxed_opaque_existential_0Tm(v9);
}

uint64_t sub_26200BB44(__int16 a1)
{
  v3[5] = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3[3] = MEMORY[0x277D838B0];
  v3[4] = MEMORY[0x277CC9C18];
  v3[0] = &v2;
  v3[1] = v3;
  __swift_project_boxed_opaque_existential_0Tm(v3, MEMORY[0x277D838B0]);
  sub_2620394EC();
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t StreamBasedTunnelConnection.receiveControlMessage(completion:)()
{
  OUTLINED_FUNCTION_7_11();
  v5 = v4;
  OUTLINED_FUNCTION_14_1();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v0;
  v6[4] = v5;
  v6[5] = v3;
  v6[6] = v1;
  v7 = *(v0 + 96);

  swift_unknownObjectRetain();
  v7(10, 10, sub_26200E3F8, v6, v2, v0);
}

uint64_t sub_26200BC9C(uint64_t *a1, unint64_t a2, char a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2D0, &qword_262045930);
  MEMORY[0x28223BE20](v15);
  v17 = (v34 - v16);
  if (a3)
  {
    v18 = a1;
LABEL_35:
    swift_willThrow();
    *v17 = a1;
    swift_storeEnumTagMultiPayload();
    v33 = a1;
    a4(v17);

    return sub_261F66E60(v17, &qword_27FEFA2D0, &qword_262045930);
  }

  if (qword_28108C7D0 != -1)
  {
    swift_once();
  }

  sub_26200F7A8();
  if ((v19 & 1) == 0)
  {
LABEL_34:
    sub_261F9BCE0();
    sub_26203ACEC();
    v34[2] = v34[4];
    v34[3] = v34[5];
    sub_261F9D610();
    a1 = swift_allocError();
    sub_26203AD4C();
    goto LABEL_35;
  }

  result = MEMORY[0x266721A20](qword_28108C7E0, qword_28108C7E8[0]);
  v21 = a2 >> 62;
  v22 = 0;
  v23 = a1;
  switch(a2 >> 62)
  {
    case 1uLL:
      v22 = a1;
      break;
    case 2uLL:
      v22 = a1[2];
      break;
    default:
      break;
  }

  v24 = __OFADD__(v22, result);
  v25 = v22 + result;
  if (v24)
  {
    __break(1u);
    goto LABEL_37;
  }

  v26 = v25 + 2;
  if (__OFADD__(v25, 2))
  {
LABEL_37:
    __break(1u);
    return result;
  }

  switch(v21)
  {
    case 1:
      goto LABEL_16;
    case 2:
      v23 = a1[2];
LABEL_16:
      if (v25 < v23)
      {
        goto LABEL_34;
      }

      if (v21 == 2)
      {
        v27 = a1[3];
      }

      else
      {
        v27 = a1 >> 32;
      }

LABEL_29:
      if (v25 >= v26 || v27 < v26)
      {
        goto LABEL_34;
      }

LABEL_25:
      v29 = sub_261F6BE04(a1, a2, result);
      v30 = swift_allocObject();
      *(v30 + 16) = a4;
      *(v30 + 24) = a5;
      v31 = *(a8 + 96);

      v31(v29, v29, sub_26200EECC, v30, a7, a8);

      break;
    case 3:
      if (v25 < 0)
      {
        goto LABEL_34;
      }

      if (v26 > 0 || __OFSUB__(v25, v26))
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    default:
      if (v25 < 0)
      {
        goto LABEL_34;
      }

      v27 = BYTE6(a2);
      goto LABEL_29;
  }

  return result;
}

void sub_26200C054()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  type metadata accessor for TunnelMessage(0);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_74();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2D0, &qword_262045930);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  if (v3)
  {
    OUTLINED_FUNCTION_28_8();
    v13 = v5;
    v1(v12);
    sub_261F66E60(v12, &qword_27FEFA2D0, &qword_262045930);
  }

  else
  {
    sub_26203930C();
    swift_allocObject();
    sub_2620392FC();
    OUTLINED_FUNCTION_3_20();
    sub_26200EFDC(v14, v15, &protocol conformance descriptor for TunnelMessage);
    sub_2620392EC();
    v16 = OUTLINED_FUNCTION_122();
    sub_261FCF8D4(v16, v17);
    swift_storeEnumTagMultiPayload();
    v1(v12);

    sub_261F66E60(v12, &qword_27FEFA2D0, &qword_262045930);
    sub_26200EE70(v9);
  }

  OUTLINED_FUNCTION_31_0();
}

void sub_26200C248()
{
  OUTLINED_FUNCTION_96();
  v43 = v1;
  v44 = v0;
  v42 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA520, &qword_262045940);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v16 = sub_262039E9C();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_74();
  v22 = (v21 - v20);
  v23 = 0;
  if ((v6 & 1) != 0 && v8)
  {
    v23 = sub_262039BAC();
  }

  sub_26200EF6C(v4, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
  {
    v25 = *(v18 + 32);
    v25(v22, v15, v16);
    sub_26200EFDC(&qword_27FEFA168, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
    swift_allocError();
    v25(v26, v22, v16);
    goto LABEL_11;
  }

  sub_261F66E60(v15, &qword_27FEFA520, &qword_262045940);
  if (v10 >> 60 == 15)
  {
    sub_261F9BCE0();
    sub_26203ACEC();
    v45 = v47;
    v46 = v48;
    v24 = sub_261F9D610();
    OUTLINED_FUNCTION_6(v24);
    sub_26203AD4C();
LABEL_11:
    v31 = 1;
    goto LABEL_12;
  }

  sub_261F6B73C(v12, v10);
  v27 = MEMORY[0x266721A20](v12, v10);
  v28 = v42;
  if (v27 >= v42)
  {
    v31 = 0;
  }

  else
  {
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_26203A7CC();
    if (v23)
    {
      v29 = " requested bytes, and no error";
      v30 = 0xD000000000000020;
    }

    else
    {
      v29 = "mote side with no error";
      v30 = 0xD000000000000022;
    }

    MEMORY[0x266722710](v30, v29 | 0x8000000000000000);
    v35 = OUTLINED_FUNCTION_11_0();
    v45 = MEMORY[0x266721A20](v35);
    OUTLINED_FUNCTION_108();
    v36 = sub_26203ABAC();
    MEMORY[0x266722710](v36);

    MEMORY[0x266722710](543584032, 0xE400000000000000);
    v45 = v28;
    OUTLINED_FUNCTION_108();
    v37 = sub_26203ABAC();
    MEMORY[0x266722710](v37);

    MEMORY[0x266722710](0xD00000000000001ELL, 0x8000000262052470);
    sub_261F9BCE0();
    sub_26203ACEC();
    v45 = v47;
    v46 = v48;
    v38 = sub_261F9D610();
    OUTLINED_FUNCTION_6(v38);
    sub_26203AD4C();
    v39 = OUTLINED_FUNCTION_11_0();
    sub_261F6ADEC(v39, v40);
    v31 = 1;
  }

LABEL_12:
  v32 = OUTLINED_FUNCTION_11_0();
  v44(v32);
  v33 = OUTLINED_FUNCTION_11_0();
  sub_261FC07A8(v33, v34, v31);
  OUTLINED_FUNCTION_31_0();
}

unint64_t sub_26200C698()
{
  result = qword_28108C598[0];
  if (!qword_28108C598[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28108C598);
  }

  return result;
}

uint64_t SocketTunnelConnection.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_26200C708(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_261F81D84(*a1, v2);
  return sub_26200C790(v1, v2);
}

uint64_t sub_26200C74C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_79(v2 + 64, a2);
  v3 = *(v2 + 64);
  sub_261F81D84(v3, *(v2 + 72));
  return v3;
}

uint64_t sub_26200C790(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_43(v2 + 64, a2);
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_261F6ADEC(v5, v6);
}

uint64_t sub_26200C844(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_43(v2 + 80, a2);
  *(v2 + 80) = a1;
  return result;
}

uint64_t sub_26200C8E4(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_43(v2 + 88, a2);
  *(v2 + 88) = a1;
  return result;
}

uint64_t SocketTunnelConnection.__allocating_init(socket:queue:logPrefix:)()
{
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_12_11();
  v0 = swift_allocObject();
  SocketTunnelConnection.init(socket:queue:logPrefix:)();
  return v0;
}

void SocketTunnelConnection.init(socket:queue:logPrefix:)()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_26203A4CC();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74();
  v14 = v13 - v12;
  *(v0 + 64) = xmmword_26203F730;
  *(v0 + 80) = xmmword_262045280;
  v15 = sub_26203A3FC();
  *(v15 + 16) = 8;
  if (("Only host should send handshake" & 0x2F00000000000000) == 0x2000000000000000)
  {
LABEL_15:
    OUTLINED_FUNCTION_8_12();
    OUTLINED_FUNCTION_13_12();
    __break(1u);
  }

  else
  {
    v16 = v15;
    v33 = v8;
    v31 = v5;
    v32 = v7;
    v17 = 0;
    v18 = v15 + 32;
    do
    {
      v19 = sub_26203A24C();
      if (v19 < 0)
      {
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v20 = v19;
      if (!v19)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_10_9();
      if (v20 > v34 * v20)
      {
        v21 = -v20 % v20;
        while (v21 > v34 * v20)
        {
          OUTLINED_FUNCTION_10_9();
        }
      }

      sub_26203A25C();
      v22 = sub_26203A2DC();
      v23 = (v18 + 16 * v17);
      *v23 = v22;
      v23[1] = v24;
      ++v17;
    }

    while (v17 != 8);
    *(v16 + 16) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9AB0, &qword_262040300);
    sub_261F7AA80(&qword_28108B328, &unk_27FEF9AB0, &qword_262040300);
    v1[2] = sub_26203A2EC();
    v1[3] = v25;
    if (v3)
    {
      v26 = v32;
    }

    else
    {
      OUTLINED_FUNCTION_9_14();
      v26 = v32;
      v27 = sub_26203ABAC();
      MEMORY[0x266722710](v27);
    }

    OUTLINED_FUNCTION_19_8("SocketTunnelConnection (");
    MEMORY[0x266722710]();

    MEMORY[0x266722710](41, 0xE100000000000000);

    sub_261F9B6D0(0, &qword_27FEFA4C0, 0x277D85C70);
    (*(v10 + 104))(v14, *MEMORY[0x277D85218], v33);
    v28 = swift_allocObject();
    *(v28 + 16) = v16;
    *(v28 + 24) = v35;
    *(v28 + 32) = v26;
    v29 = v31;

    v30 = sub_26203A4EC();
    v1[4] = v30;
    dispatch_io_set_low_water(v30, 1uLL);
    v1[5] = v29;
    v1[6] = v16;
    v1[7] = v35;
    OUTLINED_FUNCTION_31_0();
  }
}

uint64_t sub_26200CD2C(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v7 = a1;
  v8 = sub_2620392DC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (v7)
  {
    v38 = a2;
    v15 = sub_2620396AC();
    if ((v15 & 0x100000000) != 0)
    {
      v16 = 5;
    }

    else
    {
      v16 = v15;
    }

    LODWORD(v39) = v16;
    sub_261F9D4D8(MEMORY[0x277D84F90]);
    sub_26200EFDC(&qword_27FEF9920, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
    sub_2620393DC();
    v17 = sub_26203A48C();
    if (qword_27FEF86F8 != -1)
    {
      swift_once();
    }

    v18 = qword_27FEFA4C8;
    (*(v9 + 16))(v12, v14, v8);
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v36 = v17;
      v20 = v19;
      v21 = swift_slowAlloc();
      v37 = a4;
      v22 = v21;
      v39 = v21;
      *v20 = 136315650;
      *(v20 + 4) = sub_261F67FE4(v38, a3, &v39);
      *(v20 + 12) = 1024;
      *(v20 + 14) = v7;
      *(v20 + 18) = 2080;
      sub_26200EFDC(&unk_27FEF9B80, MEMORY[0x277CC8658], MEMORY[0x277CC8660]);
      v23 = sub_26203ACCC();
      v25 = v24;
      v26 = *(v9 + 8);
      v26(v12, v8);
      v27 = sub_261F67FE4(v23, v25, &v39);

      *(v20 + 20) = v27;
      _os_log_impl(&dword_261F5B000, v18, v36, "%s: IO cleanup error: %d, %s", v20, 0x1Cu);
      swift_arrayDestroy();
      v28 = v22;
      a4 = v37;
      MEMORY[0x266724180](v28, -1, -1);
      MEMORY[0x266724180](v20, -1, -1);
      v26(v14, v8);
    }

    else
    {
      v33 = *(v9 + 8);
      v33(v12, v8);
      v33(v14, v8);
    }
  }

  else
  {
    v29 = sub_26203A46C();
    if (qword_27FEF86F8 != -1)
    {
      swift_once();
    }

    v30 = qword_27FEFA4C8;
    if (os_log_type_enabled(qword_27FEFA4C8, v29))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_261F67FE4(a2, a3, &v39);
      _os_log_impl(&dword_261F5B000, v30, v29, "%s: IO cleanup done", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x266724180](v32, -1, -1);
      MEMORY[0x266724180](v31, -1, -1);
    }
  }

  return close(a4);
}

uint64_t SocketTunnelConnection.__allocating_init(socket:queue:logPrefix:takeOwnershipOfSocket:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_12_11();
  v5 = swift_allocObject();
  SocketTunnelConnection.init(socket:queue:logPrefix:takeOwnershipOfSocket:)();
  return v5;
}

void SocketTunnelConnection.init(socket:queue:logPrefix:takeOwnershipOfSocket:)()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v35 = sub_26203A4CC();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_74();
  v15 = v14 - v13;
  *(v0 + 64) = xmmword_26203F730;
  *(v0 + 80) = xmmword_262045280;
  v16 = sub_26203A3FC();
  *(v16 + 16) = 8;
  if (("Only host should send handshake" & 0x2F00000000000000) == 0x2000000000000000)
  {
LABEL_15:
    OUTLINED_FUNCTION_8_12();
    OUTLINED_FUNCTION_13_12();
    __break(1u);
  }

  else
  {
    v17 = v16;
    v32 = v3;
    v33 = v7;
    v34 = v9;
    v18 = 0;
    v19 = v16 + 32;
    do
    {
      v20 = sub_26203A24C();
      if (v20 < 0)
      {
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v21 = v20;
      if (!v20)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_10_9();
      if (v21 > v36 * v21)
      {
        v22 = -v21 % v21;
        while (v22 > v36 * v21)
        {
          OUTLINED_FUNCTION_10_9();
        }
      }

      sub_26203A25C();
      v23 = sub_26203A2DC();
      v24 = (v19 + 16 * v18);
      *v24 = v23;
      v24[1] = v25;
      ++v18;
    }

    while (v18 != 8);
    *(v17 + 16) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9AB0, &qword_262040300);
    sub_261F7AA80(&qword_28108B328, &unk_27FEF9AB0, &qword_262040300);
    v1[2] = sub_26203A2EC();
    v1[3] = v26;
    if (v5)
    {
      v27 = v34;
    }

    else
    {
      OUTLINED_FUNCTION_9_14();
      v27 = v34;
      v28 = sub_26203ABAC();
      MEMORY[0x266722710](v28);
    }

    OUTLINED_FUNCTION_19_8("SocketTunnelConnection (");
    MEMORY[0x266722710]();

    MEMORY[0x266722710](41, 0xE100000000000000);

    sub_261F9B6D0(0, &qword_27FEFA4C0, 0x277D85C70);
    (*(v11 + 104))(v15, *MEMORY[0x277D85218], v35);
    OUTLINED_FUNCTION_107();
    v29 = swift_allocObject();
    *(v29 + 16) = v17;
    *(v29 + 24) = v37;
    *(v29 + 32) = v32 & 1;
    *(v29 + 36) = v27;
    v30 = v33;

    v31 = sub_26203A4EC();
    v1[4] = v31;
    dispatch_io_set_low_water(v31, 1uLL);
    v1[5] = v30;
    v1[6] = v17;
    v1[7] = v37;
    OUTLINED_FUNCTION_31_0();
  }
}

uint64_t sub_26200D574(uint64_t a1, uint64_t a2, unint64_t a3, int a4, int a5)
{
  LODWORD(v6) = a4;
  v41 = a3;
  v8 = a1;
  v9 = sub_2620392DC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  if (v8)
  {
    v16 = sub_2620396AC();
    if ((v16 & 0x100000000) != 0)
    {
      v17 = 5;
    }

    else
    {
      v17 = v16;
    }

    LODWORD(v42) = v17;
    sub_261F9D4D8(MEMORY[0x277D84F90]);
    sub_26200EFDC(&qword_27FEF9920, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
    sub_2620393DC();
    v18 = sub_26203A48C();
    if (qword_27FEF86F8 != -1)
    {
      swift_once();
    }

    v19 = qword_27FEFA4C8;
    (*(v10 + 16))(v13, v15, v9);
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v39 = v6;
      v21 = v20;
      v22 = swift_slowAlloc();
      v40 = a5;
      v38 = v22;
      v42 = v22;
      *v21 = 136315650;
      *(v21 + 4) = sub_261F67FE4(a2, v41, &v42);
      *(v21 + 12) = 1024;
      *(v21 + 14) = v8;
      *(v21 + 18) = 2080;
      sub_26200EFDC(&unk_27FEF9B80, MEMORY[0x277CC8658], MEMORY[0x277CC8660]);
      v23 = v18;
      v24 = sub_26203ACCC();
      v26 = v25;
      v27 = *(v10 + 8);
      v27(v13, v9);
      v28 = sub_261F67FE4(v24, v26, &v42);

      *(v21 + 20) = v28;
      _os_log_impl(&dword_261F5B000, v19, v23, "%s: IO cleanup error: %d, %s", v21, 0x1Cu);
      v29 = v38;
      swift_arrayDestroy();
      a5 = v40;
      MEMORY[0x266724180](v29, -1, -1);
      v30 = v21;
      LOBYTE(v21) = v39;
      MEMORY[0x266724180](v30, -1, -1);
      result = (v27)(v15, v9);
      if ((v21 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v37 = *(v10 + 8);
      v37(v13, v9);
      result = (v37)(v15, v9);
      if ((v6 & 1) == 0)
      {
        return result;
      }
    }

    return close(a5);
  }

  v32 = sub_26203A46C();
  if (qword_27FEF86F8 != -1)
  {
    swift_once();
  }

  v33 = qword_27FEFA4C8;
  result = os_log_type_enabled(qword_27FEFA4C8, v32);
  if (result)
  {
    v34 = v6;
    v6 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v42 = v35;
    *v6 = 136315138;
    *(v6 + 4) = sub_261F67FE4(a2, v41, &v42);
    _os_log_impl(&dword_261F5B000, v33, v32, "%s: IO cleanup done", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x266724180](v35, -1, -1);
    v36 = v6;
    LOBYTE(v6) = v34;
    result = MEMORY[0x266724180](v36, -1, -1);
  }

  if (v6)
  {
    return close(a5);
  }

  return result;
}

void sub_26200DA2C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_26203A48C();
  if (qword_27FEF86F8 != -1)
  {
    OUTLINED_FUNCTION_1_22();
    swift_once();
  }

  if (os_log_type_enabled(qword_27FEFA4C8, v3))
  {
    v4 = OUTLINED_FUNCTION_27();
    v5 = OUTLINED_FUNCTION_31_7();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_261F67FE4(*(v2 + 48), *(v2 + 56), &v12);
    OUTLINED_FUNCTION_30_7(&dword_261F5B000, v6, v7, "%s: receiving a datagram socket connection");
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  v12 = 0;
  v13 = 0xE000000000000000;
  sub_26203A7CC();
  v9 = *(v2 + 48);
  v8 = *(v2 + 56);

  v12 = v9;
  v13 = v8;
  MEMORY[0x266722710](0xD000000000000028, 0x8000000262052200);
  OUTLINED_FUNCTION_29_8("Fatal error", v10, v11, v12, v13, "RemotePairingDevice/TunnelConnection.swift");
  __break(1u);
}

uint64_t sub_26200DB68()
{
  v1 = sub_26203A4BC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_74();
  v7 = v6 - v5;
  v8 = sub_26203A4AC();
  if (qword_27FEF86F8 != -1)
  {
    OUTLINED_FUNCTION_1_22();
    swift_once();
  }

  v9 = qword_27FEFA4C8;
  if (os_log_type_enabled(qword_27FEFA4C8, v8))
  {
    v10 = OUTLINED_FUNCTION_27();
    v11 = OUTLINED_FUNCTION_31_7();
    v15 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_261F67FE4(*(v0 + 48), *(v0 + 56), &v15);
    _os_log_impl(&dword_261F5B000, v9, v8, "%s: closing IO on cancel()", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  v15 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_4_14();
  sub_26200EFDC(v12, v13, MEMORY[0x277D85210]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B50, &unk_262040460);
  sub_261F7AA80(&qword_27FEF9B58, &qword_27FEF9B50, &unk_262040460);
  sub_26203A75C();
  sub_26203A50C();
  return (*(v3 + 8))(v7, v1);
}

void sub_26200DD68(uint64_t a1)
{
  v2 = v1;
  v3 = sub_26203A48C();
  if (qword_27FEF86F8 != -1)
  {
    OUTLINED_FUNCTION_1_22();
    swift_once();
  }

  if (os_log_type_enabled(qword_27FEFA4C8, v3))
  {
    v4 = OUTLINED_FUNCTION_27();
    v5 = OUTLINED_FUNCTION_31_7();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_261F67FE4(*(v2 + 48), *(v2 + 56), &v12);
    OUTLINED_FUNCTION_30_7(&dword_261F5B000, v6, v7, "%s: starting a QUIC based socket connection");
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  v12 = 0;
  v13 = 0xE000000000000000;
  sub_26203A7CC();
  v9 = *(v2 + 48);
  v8 = *(v2 + 56);

  v12 = v9;
  v13 = v8;
  MEMORY[0x266722710](0xD000000000000029, 0x8000000262052230);
  OUTLINED_FUNCTION_29_8("Fatal error", v10, v11, v12, v13, "RemotePairingDevice/TunnelConnection.swift");
  __break(1u);
}

void SocketTunnelConnection.deinit()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v2 = sub_26203A4BC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_74();
  v8 = v7 - v6;
  v9 = sub_26203A4AC();
  if (qword_27FEF86F8 != -1)
  {
    OUTLINED_FUNCTION_1_22();
    swift_once();
  }

  v10 = qword_27FEFA4C8;
  if (os_log_type_enabled(qword_27FEFA4C8, v9))
  {
    v11 = OUTLINED_FUNCTION_27();
    v12 = OUTLINED_FUNCTION_31_7();
    v17 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_261F67FE4(*(v1 + 48), *(v1 + 56), &v17);
    _os_log_impl(&dword_261F5B000, v10, v9, "%s: closing IO on deinit", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  v13 = *(v1 + 32);
  v17 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_4_14();
  sub_26200EFDC(v14, v15, MEMORY[0x277D85210]);
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B50, &unk_262040460);
  sub_261F7AA80(&qword_27FEF9B58, &qword_27FEF9B50, &unk_262040460);
  sub_26203A75C();
  sub_26203A50C();

  (*(v4 + 8))(v8, v2);

  sub_261F6ADEC(*(v1 + 64), *(v1 + 72));
  OUTLINED_FUNCTION_31_0();
}

uint64_t SocketTunnelConnection.__deallocating_deinit()
{
  SocketTunnelConnection.deinit();
  v0 = OUTLINED_FUNCTION_12_11();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_26200E430()
{
  result = qword_27FEFA4F0;
  if (!qword_27FEFA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA4F0);
  }

  return result;
}

unint64_t sub_26200E488()
{
  result = qword_27FEFA4F8;
  if (!qword_27FEFA4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA4F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TransportProtocolType(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26200E5D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF && *(a1 + 40))
    {
      v2 = *a1 + 14;
    }

    else
    {
      v2 = (((*(a1 + 24) >> 58) >> 3) & 1 | (2 * ((*(a1 + 24) >> 58) & 4 | (*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xE)
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

uint64_t sub_26200E634(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 15;
    if (a3 >= 0xF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((-a2 >> 1) & 3) << 60;
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 1) & 7 | (8 * (-a2 & 0xF))) << 58) & 0x3000000000000000;
      *(result + 32) = 0;
    }
  }

  return result;
}

uint64_t sub_26200E6AC(uint64_t result, char a2)
{
  v2 = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
  *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 24) = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for TunnelConnectionIdentifierCategory(_BYTE *result, int a2, int a3)
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

_BYTE *sub_26200EC38(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26200ED18()
{
  result = qword_27FEFA508;
  if (!qword_27FEFA508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA508);
  }

  return result;
}

unint64_t sub_26200ED70()
{
  result = qword_28108C580;
  if (!qword_28108C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C580);
  }

  return result;
}

unint64_t sub_26200EDC8()
{
  result = qword_28108C588;
  if (!qword_28108C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C588);
  }

  return result;
}

unint64_t sub_26200EE1C()
{
  result = qword_28108C240;
  if (!qword_28108C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C240);
  }

  return result;
}

uint64_t sub_26200EE70(uint64_t a1)
{
  v2 = type metadata accessor for TunnelMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26200EED8(uint64_t a1, uint64_t a2)
{
  result = sub_26203937C();
  if (!result || (result = sub_2620393AC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_26203939C();
      return sub_2620394EC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26200EF6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA520, &qword_262045940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26200EFDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_10_9()
{
  *(v0 - 96) = 0;

  JUMPOUT(0x2667241A0);
}

uint64_t OUTLINED_FUNCTION_29_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_26203A91C();
}

void OUTLINED_FUNCTION_30_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_26200F09C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

unint64_t sub_26200F0F0(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  sub_26203933C();
  swift_allocObject();
  sub_26203932C();
  type metadata accessor for TunnelMessage(0);
  sub_2620176E8(&qword_28108CA28, type metadata accessor for TunnelMessage, &protocol conformance descriptor for TunnelMessage);
  v4 = sub_26203931C();
  v6 = v5;

  if (MEMORY[0x266721A20](v4, v6) >= 0x10000)
  {
    sub_26203A7CC();
    MEMORY[0x266722710](0xD000000000000035, 0x8000000262052120);
    MEMORY[0x266721A20](v4, v6);
    v7 = sub_26203ABAC();
    MEMORY[0x266722710](v7);

    MEMORY[0x266722710](0x736574796220, 0xE600000000000000);
    sub_261F9BCE0();
    sub_26203ACEC();
    sub_261F9D610();
    v8 = swift_allocError();
    sub_26203AD4C();
    a2(v8);

    v9 = v4;
    v10 = v6;
    return sub_261F6BFFC(v9, v10);
  }

  if (qword_28108C7D0 != -1)
  {
    swift_once();
  }

  v12 = qword_28108C7E0;
  v13 = qword_28108C7E8[0];
  sub_261F6B73C(qword_28108C7E0, qword_28108C7E8[0]);
  result = MEMORY[0x266721A20](v4, v6);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result >> 16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_26200BB44(bswap32(result) >> 16);
  result = MEMORY[0x266721A20](v12, v13);
  if (result == 10)
  {
    sub_26203958C();
    sub_262010744();
    sub_261F6BFFC(v4, v6);
    v9 = v12;
    v10 = v13;
    return sub_261F6BFFC(v9, v10);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26200F41C(uint64_t *a1, unint64_t a2, char a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2D0, &qword_262045930);
  MEMORY[0x28223BE20](v10);
  v12 = (v27 - v11);
  if (a3)
  {
    v13 = a1;
LABEL_35:
    swift_willThrow();
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v26 = a1;
    a4(v12);

    return sub_261FCB894(v12, &qword_27FEFA2D0, &qword_262045930);
  }

  if (qword_28108C7D0 != -1)
  {
    swift_once();
  }

  sub_26200F7A8();
  if ((v14 & 1) == 0)
  {
LABEL_34:
    sub_261F9BCE0();
    sub_26203ACEC();
    v27[2] = v27[4];
    v27[3] = v27[5];
    sub_261F9D610();
    a1 = swift_allocError();
    sub_26203AD4C();
    goto LABEL_35;
  }

  result = MEMORY[0x266721A20](qword_28108C7E0, qword_28108C7E8[0]);
  v16 = a2 >> 62;
  v17 = 0;
  v18 = a1;
  switch(a2 >> 62)
  {
    case 1uLL:
      v17 = a1;
      break;
    case 2uLL:
      v17 = a1[2];
      break;
    default:
      break;
  }

  v19 = __OFADD__(v17, result);
  v20 = v17 + result;
  if (v19)
  {
    __break(1u);
    goto LABEL_37;
  }

  v21 = v20 + 2;
  if (__OFADD__(v20, 2))
  {
LABEL_37:
    __break(1u);
    return result;
  }

  switch(v16)
  {
    case 1:
      goto LABEL_16;
    case 2:
      v18 = a1[2];
LABEL_16:
      if (v20 < v18)
      {
        goto LABEL_34;
      }

      if (v16 == 2)
      {
        v22 = a1[3];
      }

      else
      {
        v22 = a1 >> 32;
      }

LABEL_29:
      if (v20 >= v21 || v22 < v21)
      {
        goto LABEL_34;
      }

LABEL_25:
      sub_261F6BE04(a1, a2, result);
      v24 = swift_allocObject();
      *(v24 + 16) = a4;
      *(v24 + 24) = a5;

      sub_262010894();

      break;
    case 3:
      if (v20 < 0)
      {
        goto LABEL_34;
      }

      if (v21 > 0 || __OFSUB__(v20, v21))
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    default:
      if (v20 < 0)
      {
        goto LABEL_34;
      }

      v22 = BYTE6(a2);
      goto LABEL_29;
  }

  return result;
}

void sub_26200F7A8()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_26203959C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_54();
  MEMORY[0x28223BE20](v12);
  v14 = &v22[-v13];
  sub_261F6B73C(v7, v5);
  sub_2620395AC();
  sub_261F6B73C(v3, v1);
  sub_2620395AC();
  sub_2620176E8(&qword_28108CF60, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
  while (1)
  {
    sub_26203A6FC();
    if (v22[15])
    {
      v18 = *(v10 + 8);
      v19 = OUTLINED_FUNCTION_1_1();
      v18(v19);
      sub_26203A6FC();
      (v18)(v14, v8);
      goto LABEL_8;
    }

    v15 = v22[14];
    sub_26203A6FC();
    if (v22[11])
    {
      break;
    }

    if (v15 != v22[10])
    {
      v16 = *(v10 + 8);
      v17 = OUTLINED_FUNCTION_1_1();
      v16(v17);
      (v16)(v14, v8);
      goto LABEL_8;
    }
  }

  v20 = *(v10 + 8);
  v21 = OUTLINED_FUNCTION_1_1();
  v20(v21);
  (v20)(v14, v8);
LABEL_8:
  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_26200FA38()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEFA528 = result;
  return result;
}

void sub_26200FAB4()
{
  OUTLINED_FUNCTION_96();
  v2 = v0;
  v3 = sub_262039AFC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_54();
  v77 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v76 = &v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9B60, &unk_262040530);
  OUTLINED_FUNCTION_40(v11);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_140(&v69 - v13);
  v14 = sub_262039B3C();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_54();
  v79 = v18 - v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_140(&v69 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA108, &qword_2620434D8);
  OUTLINED_FUNCTION_40(v22);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v23);
  v24 = OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_0();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_74();
  v30 = v29 - v28;
  sub_262039B8C();
  if (__swift_getEnumTagSinglePayload(v1, 1, v24) == 1)
  {
    sub_261FCB894(v1, &qword_27FEFA108, &qword_2620434D8);
    LOBYTE(v30) = sub_26203A49C();
    if (qword_27FEF8708 != -1)
    {
LABEL_28:
      OUTLINED_FUNCTION_0_30(&qword_27FEF8708);
    }

    if (os_log_type_enabled(qword_27FEFA528, v30))
    {
      v31 = OUTLINED_FUNCTION_40_2();
      v95[0] = OUTLINED_FUNCTION_39_0();
      *v31 = 136446466;
      v32 = sub_261F67FE4(*(v2 + 16), *(v2 + 24), v95);
      OUTLINED_FUNCTION_22_9(v32);
      OUTLINED_FUNCTION_2_23();
      v93 = v33;
      v94 = v34;
      MEMORY[0x266722710]();
      v35 = sub_261F67FE4(v93, v94, v95);

      *(v31 + 14) = v35;
      OUTLINED_FUNCTION_16_13(&dword_261F5B000, v36, v37, "%{public}s/%s: Tunnel connection path is nil");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }
  }

  else
  {
    v83 = v3;
    v70 = v0;
    v71 = v26;
    v38 = *(v26 + 32);
    v72 = v24;
    v38(v30, v1, v24);
    v39 = sub_262039E7C();
    v40 = 0;
    v91 = *(v39 + 16);
    v86 = v16 + 16;
    v85 = *MEMORY[0x277CD8CB8];
    v41 = (v5 + 104);
    v42 = (v5 + 8);
    v81 = *MEMORY[0x277CD8CC0];
    v75 = (v16 + 32);
    v80 = (v16 + 8);
    v78 = MEMORY[0x277D84F90];
    v43 = v74;
    v87 = v39;
    v88 = v30;
    v84 = v16;
    v82 = v14;
LABEL_7:
    v44 = v77;
    while (v91 != v40)
    {
      if (v40 >= *(v39 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v90 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v45 = *(v16 + 72);
      v92 = v40;
      v89 = v45;
      (*(v16 + 16))(v43, v39 + v90 + v45 * v40, v14);
      sub_262039B1C();
      v2 = *v41;
      v46 = v83;
      (*v41)(v44, v85, v83);
      OUTLINED_FUNCTION_10_10();
      sub_2620176E8(&qword_27FEFA530, v47, MEMORY[0x277CD8CD0]);
      v48 = OUTLINED_FUNCTION_30_8();
      v49 = *v42;
      (*v42)(v44, v46);
      v50 = OUTLINED_FUNCTION_204();
      v49(v50);
      if ((v48 & 1) == 0 || (sub_262039B1C(), (v2)(v44, v81, v46), v51 = OUTLINED_FUNCTION_30_8(), (v49)(v44, v46), v52 = OUTLINED_FUNCTION_204(), v49(v52), (v51 & 1) == 0))
      {
        v53 = *v75;
        v14 = v82;
        (*v75)(v79, v43, v82);
        v54 = v78;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v93 = v54;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_261F95AA0(0, *(v54 + 16) + 1, 1);
          v43 = v74;
          v54 = v93;
        }

        v16 = v84;
        v56 = v92;
        v2 = *(v54 + 16);
        v57 = *(v54 + 24);
        if (v2 >= v57 >> 1)
        {
          sub_261F95AA0((v57 > 1), v2 + 1, 1);
          v56 = v92;
          v54 = v93;
          v43 = v74;
        }

        v40 = v56 + 1;
        *(v54 + 16) = v2 + 1;
        v78 = v54;
        v53(v54 + v90 + v2 * v89, v79, v14);
        v39 = v87;
        v30 = v88;
        goto LABEL_7;
      }

      v14 = v82;
      (*v80)(v43, v82);
      v40 = v92 + 1;
      v39 = v87;
      v30 = v88;
      v16 = v84;
    }

    v58 = v73;
    sub_261FD4744(v78);

    if (__swift_getEnumTagSinglePayload(v58, 1, v14) == 1)
    {
      sub_261FCB894(v58, &unk_27FEF9B60, &unk_262040530);
      v59 = 0;
      v60 = 0;
    }

    else
    {
      v59 = sub_262039B0C();
      v60 = v61;
      (*v80)(v58, v14);
    }

    v62 = sub_26203A46C();
    if (qword_27FEF8708 != -1)
    {
      OUTLINED_FUNCTION_0_30(&qword_27FEF8708);
    }

    v63 = qword_27FEFA528;
    if (os_log_type_enabled(qword_27FEFA528, v62))
    {
      v64 = swift_slowAlloc();
      v95[0] = swift_slowAlloc();
      *v64 = 136446722;
      *(v64 + 4) = sub_261F67FE4(v70[2], v70[3], v95);
      *(v64 + 12) = 2080;
      OUTLINED_FUNCTION_2_23();
      v93 = v65;
      v94 = v66;
      MEMORY[0x266722710]();
      sub_261F67FE4(v93, v94, v95);
      OUTLINED_FUNCTION_40_5();
      *(v64 + 14) = v14;
      *(v64 + 22) = 2080;
      v93 = v59;
      v94 = v60;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
      v67 = sub_26203A20C();
      sub_261F67FE4(v67, v68, v95);
      OUTLINED_FUNCTION_40_5();
      *(v64 + 24) = v14;
      _os_log_impl(&dword_261F5B000, v63, v62, "%{public}s/%s: Tunnel connection path interface name: %s", v64, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }

    (*(v71 + 8))(v30, v72);
  }

  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_26201033C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_261F81D84(*a1, v2);
  return sub_2620103BC(v1, v2);
}

uint64_t sub_262010380(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_79(v2 + 56, a2);
  v3 = OUTLINED_FUNCTION_47();
  sub_261F81D84(v3, v4);
  return OUTLINED_FUNCTION_47();
}

uint64_t sub_2620103BC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_43(v2 + 56, a2);
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return sub_261F6ADEC(v5, v6);
}

uint64_t sub_262010470(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_43(v2 + 72, a2);
  *(v2 + 72) = a1;
  return result;
}

uint64_t TCPTunnelConnection.__allocating_init(tunnelIdentifier:stream:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  TCPTunnelConnection.init(tunnelIdentifier:stream:)(a1, a2, a3);
  return v6;
}

uint64_t TCPTunnelConnection.init(tunnelIdentifier:stream:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = xmmword_26203F730;
  *(v3 + 72) = xmmword_262045280;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v5 = sub_26203A3FC();
  *(v5 + 16) = 8;
  if (("Only host should send handshake" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v6 = v5;
    v7 = 0;
    v8 = v5 + 32;
    while (1)
    {
      v9 = sub_26203A24C();
      if (v9 < 0)
      {
        break;
      }

      v10 = v9;
      if (!v9)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_18_7();
      if (v10 > v17 * v10)
      {
        v11 = -v10 % v10;
        while (v11 > v17 * v10)
        {
          OUTLINED_FUNCTION_18_7();
        }
      }

      sub_26203A25C();
      v12 = sub_26203A2DC();
      v13 = (v8 + 16 * v7);
      *v13 = v12;
      v13[1] = v14;
      if (++v7 == 8)
      {
        *(v6 + 16) = 8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9AB0, &qword_262040300);
        sub_261F7AA80(&qword_28108B328, &unk_27FEF9AB0, &qword_262040300);
        *(v3 + 32) = sub_26203A2EC();
        *(v3 + 40) = v15;
        *(v3 + 48) = a3;
        return v3;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  OUTLINED_FUNCTION_17_10();
  result = OUTLINED_FUNCTION_13_12();
  __break(1u);
  return result;
}

void sub_262010744()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  v4 = sub_262039BCC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_74();
  v10 = (v9 - v8);
  OUTLINED_FUNCTION_46();
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = v1;
  *v10 = sub_261FED088;
  v10[1] = v11;
  (*(v6 + 104))(v10, *MEMORY[0x277CD8DB0], v4);
  sub_262039BBC();

  sub_262039B9C();
  sub_262039C1C();

  (*(v6 + 8))(v10, v4);
  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_262010894()
{
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_107();
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = v0;

  sub_262039C7C();
}

uint64_t sub_262010948()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_107();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v1;
  OUTLINED_FUNCTION_63();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_39_3(v7);
  OUTLINED_FUNCTION_63();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_38_3(v8);
  OUTLINED_FUNCTION_106();
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = sub_262016D88;
  v9[5] = v6;
  v5;

  sub_261F7D45C(sub_262016DCC, v9);
  sub_262039BDC();

  OUTLINED_FUNCTION_63();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_39_3(v10);
  OUTLINED_FUNCTION_63();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_38_3(v11);
  OUTLINED_FUNCTION_46();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;

  sub_261F7D45C(sub_262016DD8, v12);
  sub_262039BEC();

  sub_262039C4C();
  OUTLINED_FUNCTION_31_0();
}

void *sub_262010B24(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v103 = a5;
  v104 = a4;
  v105 = a1;
  v5 = sub_262039E9C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v99[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v102 = &v99[-v11];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v99[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v99[-v15];
  v17 = sub_262039C3C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v99[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v22 = result;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v24 = Strong;
  (*(v18 + 16))(v20, v105, v17);
  v25 = (*(v18 + 88))(v20, v17);
  if (v25 == *MEMORY[0x277CD8DE8])
  {
    v105 = v24;
    v26 = v22;
    (*(v18 + 96))(v20, v17);
    (*(v6 + 32))(v16, v20, v5);
    v27 = sub_26203A4AC();
    if (qword_27FEF8708 != -1)
    {
      swift_once();
    }

    v28 = qword_27FEFA528;
    (*(v6 + 16))(v14, v16, v5);
    if (os_log_type_enabled(v28, v27))
    {
      v29 = v6;
      v30 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v106 = v102;
      *v30 = 136446722;
      v101 = v28;
      v31 = v26;
      v32 = v26[2];
      v100 = v27;
      v33 = v31[3];

      v34 = sub_261F67FE4(v32, v33, &v106);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      v35 = v31[4];
      v36 = v31[5];
      v107 = 0x5F6E6F6374;
      v108 = 0xE500000000000000;
      MEMORY[0x266722710](v35, v36);
      v37 = sub_261F67FE4(v107, v108, &v106);

      *(v30 + 14) = v37;
      *(v30 + 22) = 2082;
      sub_2620176E8(&qword_27FEFA168, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      v38 = sub_26203ACCC();
      v40 = v39;
      v41 = *(v29 + 8);
      v41(v14, v5);
      v42 = sub_261F67FE4(v38, v40, &v106);

      *(v30 + 24) = v42;
      _os_log_impl(&dword_261F5B000, v101, v100, "%{public}s/%s: Tunnel connection waiting, error: %{public}s", v30, 0x20u);
      v43 = v102;
      swift_arrayDestroy();
      MEMORY[0x266724180](v43, -1, -1);
      MEMORY[0x266724180](v30, -1, -1);
    }

    else
    {
      v41 = *(v6 + 8);
      v41(v14, v5);
    }

    sub_262039C6C();
    LOBYTE(v107) = 1;
    v104(&v107);

    return (v41)(v16, v5);
  }

  if (v25 != *MEMORY[0x277CD8DE0])
  {
    if (v25 == *MEMORY[0x277CD8DD8])
    {
      v62 = sub_26203A4AC();
      if (qword_27FEF8708 != -1)
      {
        swift_once();
      }

      v63 = qword_27FEFA528;
      if (!os_log_type_enabled(qword_27FEFA528, v62))
      {
        goto LABEL_35;
      }

      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v106 = v65;
      *v64 = 136446466;
      v66 = v22[2];
      v67 = v22[3];

      v68 = sub_261F67FE4(v66, v67, &v106);

      *(v64 + 4) = v68;
      *(v64 + 12) = 2080;
      v69 = v22[4];
      v70 = v22[5];
      v107 = 0x5F6E6F6374;
      v108 = 0xE500000000000000;
      MEMORY[0x266722710](v69, v70);
      v71 = sub_261F67FE4(v107, v108, &v106);

      *(v64 + 14) = v71;
      v72 = "%{public}s/%s: Tunnel connection setup";
    }

    else
    {
      if (v25 != *MEMORY[0x277CD8DF8])
      {
        if (v25 == *MEMORY[0x277CD8DD0])
        {
          v79 = sub_26203A4AC();
          if (qword_27FEF8708 != -1)
          {
            swift_once();
          }

          v80 = qword_27FEFA528;
          if (os_log_type_enabled(qword_27FEFA528, v79))
          {
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            v106 = v82;
            *v81 = 136446466;
            v83 = v22[2];
            v84 = v22[3];

            v85 = sub_261F67FE4(v83, v84, &v106);

            *(v81 + 4) = v85;
            *(v81 + 12) = 2080;
            v86 = v22[4];
            v87 = v22[5];
            v107 = 0x5F6E6F6374;
            v108 = 0xE500000000000000;
            MEMORY[0x266722710](v86, v87);
            v88 = sub_261F67FE4(v107, v108, &v106);

            *(v81 + 14) = v88;
            _os_log_impl(&dword_261F5B000, v80, v79, "%{public}s/%s: Tunnel connection established", v81, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266724180](v82, -1, -1);
            MEMORY[0x266724180](v81, -1, -1);
          }

          LOBYTE(v107) = 0;
          v104(&v107);
        }

        else
        {
          if (v25 != *MEMORY[0x277CD8DF0])
          {
            v107 = 0;
            v108 = 0xE000000000000000;
            sub_26203A7CC();
            MEMORY[0x266722710](0x2064696C61766E49, 0xEF203A6574617473);
            sub_26203A8CC();
            result = sub_26203A91C();
            __break(1u);
            return result;
          }

          v89 = sub_26203A4AC();
          if (qword_27FEF8708 != -1)
          {
            swift_once();
          }

          v90 = qword_27FEFA528;
          if (os_log_type_enabled(qword_27FEFA528, v89))
          {
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v106 = v92;
            *v91 = 136446466;
            v93 = v22[2];
            v94 = v22[3];

            v95 = sub_261F67FE4(v93, v94, &v106);

            *(v91 + 4) = v95;
            *(v91 + 12) = 2080;
            v96 = v22[4];
            v97 = v22[5];
            v107 = 0x5F6E6F6374;
            v108 = 0xE500000000000000;
            MEMORY[0x266722710](v96, v97);
            v98 = sub_261F67FE4(v107, v108, &v106);

            *(v91 + 14) = v98;
            _os_log_impl(&dword_261F5B000, v90, v89, "%{public}s/%s: Tunnel connection cancelled", v91, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266724180](v92, -1, -1);
            MEMORY[0x266724180](v91, -1, -1);
          }

          sub_262039C6C();
          LOBYTE(v107) = 1;
          v104(&v107);
        }

        goto LABEL_35;
      }

      v62 = sub_26203A4AC();
      if (qword_27FEF8708 != -1)
      {
        swift_once();
      }

      v63 = qword_27FEFA528;
      if (!os_log_type_enabled(qword_27FEFA528, v62))
      {
LABEL_35:
      }

      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v106 = v65;
      *v64 = 136446466;
      v73 = v22[2];
      v74 = v22[3];

      v75 = sub_261F67FE4(v73, v74, &v106);

      *(v64 + 4) = v75;
      *(v64 + 12) = 2080;
      v76 = v22[4];
      v77 = v22[5];
      v107 = 0x5F6E6F6374;
      v108 = 0xE500000000000000;
      MEMORY[0x266722710](v76, v77);
      v78 = sub_261F67FE4(v107, v108, &v106);

      *(v64 + 14) = v78;
      v72 = "%{public}s/%s: Tunnel connection preparing";
    }

    _os_log_impl(&dword_261F5B000, v63, v62, v72, v64, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266724180](v65, -1, -1);
    MEMORY[0x266724180](v64, -1, -1);
    goto LABEL_35;
  }

  (*(v18 + 96))(v20, v17);
  v44 = v102;
  (*(v6 + 32))(v102, v20, v5);
  v45 = sub_26203A48C();
  if (qword_27FEF8708 != -1)
  {
    swift_once();
  }

  v46 = qword_27FEFA528;
  (*(v6 + 16))(v9, v44, v5);
  if (os_log_type_enabled(v46, v45))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v101 = v48;
    *v47 = 136446722;
    v105 = v24;
    v106 = v48;
    v100 = v45;
    v49 = v22[2];
    v50 = v22[3];

    v51 = sub_261F67FE4(v49, v50, &v106);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    v52 = v22[4];
    v53 = v22[5];
    v107 = 0x5F6E6F6374;
    v108 = 0xE500000000000000;
    MEMORY[0x266722710](v52, v53);
    v54 = sub_261F67FE4(v107, v108, &v106);

    *(v47 + 14) = v54;
    *(v47 + 22) = 2082;
    sub_2620176E8(&qword_27FEFA168, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
    v55 = sub_26203ACCC();
    v57 = v56;
    v58 = *(v6 + 8);
    v58(v9, v5);
    v59 = sub_261F67FE4(v55, v57, &v106);

    *(v47 + 24) = v59;
    _os_log_impl(&dword_261F5B000, v46, v100, "%{public}s/%s: Tunnel connection failed, error: %{public}s", v47, 0x20u);
    v60 = v101;
    swift_arrayDestroy();
    MEMORY[0x266724180](v60, -1, -1);
    v61 = v47;
    v44 = v102;
    MEMORY[0x266724180](v61, -1, -1);
  }

  else
  {
    v58 = *(v6 + 8);
    v58(v9, v5);
  }

  sub_262039C6C();
  LOBYTE(v107) = 1;
  v104(&v107);

  return (v58)(v44, v5);
}

void *sub_26201195C(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      if ((a1 & 1) == 0)
      {
        v6 = sub_26203A48C();
        if (qword_27FEF8708 != -1)
        {
          swift_once();
        }

        v7 = qword_27FEFA528;
        if (os_log_type_enabled(qword_27FEFA528, v6))
        {
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          v14 = v9;
          *v8 = 136446466;
          v10 = v5[2];
          v11 = v5[3];

          v12 = sub_261F67FE4(v10, v11, &v14);

          *(v8 + 4) = v12;
          *(v8 + 12) = 2080;
          MEMORY[0x266722710](v5[4], v5[5]);
          v13 = sub_261F67FE4(0x5F6E6F6374, 0xE500000000000000, &v14);

          *(v8 + 14) = v13;
          _os_log_impl(&dword_261F5B000, v7, v6, "%{public}s/%s: Cancelling tunnel connection as it is no longer viable", v8, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266724180](v9, -1, -1);
          MEMORY[0x266724180](v8, -1, -1);
        }

        sub_262039C6C();
        sub_262039C6C();
      }
    }
  }

  return result;
}

uint64_t sub_262011B68()
{
  sub_262039A7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_74();
  sub_26203A7CC();
  MEMORY[0x266722710](60, 0xE100000000000000);
  swift_getMetatypeMetadata();
  v1 = sub_26203A20C();
  MEMORY[0x266722710](v1);

  MEMORY[0x266722710](32, 0xE100000000000000);
  OUTLINED_FUNCTION_2_23();
  v7 = v2;
  v8 = v3;
  MEMORY[0x266722710]();
  MEMORY[0x266722710](v7, v8);

  MEMORY[0x266722710](0xD000000000000010, 0x80000002620524C0);
  sub_262039C8C();
  sub_26203A8CC();
  v4 = OUTLINED_FUNCTION_1_1();
  v5(v4);
  MEMORY[0x266722710](32032, 0xE200000000000000);
  return 0;
}

void *TCPTunnelConnection.deinit()
{

  sub_261F6ADEC(*(v0 + 56), *(v0 + 64));
  return v0;
}

uint64_t TCPTunnelConnection.__deallocating_deinit()
{
  TCPTunnelConnection.deinit();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_262011EFC(__int16 a1, __int16 a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if ((a2 & 0xFE) == 2)
  {
    return 0;
  }

  if ((a2 ^ a1))
  {
    return 0;
  }

  else
  {
    return ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
  }
}

uint64_t sub_262011F74()
{
  v1 = v0;
  OUTLINED_FUNCTION_146(v0 + 48, v17);
  if (!*(v0 + 48))
  {
    return 1280;
  }

  v3 = MEMORY[0x2667220A0](v2);
  v4 = nw_protocol_copy_quic_definition();
  v5 = nw_connection_copy_protocol_metadata(v3, v4);
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  if (v5)
  {
    v7 = MEMORY[0x266723970](v5);
    v8 = sub_26203A4AC();
    if (qword_27FEF8708 != -1)
    {
      OUTLINED_FUNCTION_0_30(&qword_27FEF8708);
    }

    v9 = qword_27FEFA528;
    if (os_log_type_enabled(qword_27FEFA528, v8))
    {
      v10 = swift_slowAlloc();
      v16[0] = OUTLINED_FUNCTION_39_0();
      *v10 = 136446722;
      *(v10 + 4) = sub_261F67FE4(*(v1 + 56), *(v1 + 64), v16);
      *(v10 + 12) = 2080;
      OUTLINED_FUNCTION_2_23();
      v14 = v11;
      v15 = v12;
      MEMORY[0x266722710]();
      v13 = sub_261F67FE4(v14, v15, v16);

      *(v10 + 14) = v13;
      *(v10 + 22) = 2048;
      *(v10 + 24) = v7;
      _os_log_impl(&dword_261F5B000, v9, v8, "%{public}s/%s: Tunnel MTU datagaram = %ld", v10, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }

    swift_unknownObjectRelease();
    if (v7)
    {
      return v7;
    }

    else
    {
      return 1280;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_262012154()
{
  OUTLINED_FUNCTION_96();
  v2 = v0;
  v3 = sub_262039AFC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_54();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v74 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9B60, &unk_262040530);
  OUTLINED_FUNCTION_40(v13);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_140(&v74 - v15);
  v16 = sub_262039B3C();
  OUTLINED_FUNCTION_0();
  v97 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_54();
  v85 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_140(&v74 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA108, &qword_2620434D8);
  OUTLINED_FUNCTION_40(v23);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v24);
  v25 = OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_140(v30 - v29);
  OUTLINED_FUNCTION_146((v2 + 6), &v102);
  v31 = v2[6];
  if (v31)
  {
    v78 = v27;

    v81 = v25;
    sub_262039B8C();
    v32 = v81;
    if (__swift_getEnumTagSinglePayload(v1, 1, v81) == 1)
    {
      sub_261FCB894(v1, &qword_27FEFA108, &qword_2620434D8);
      v33 = sub_26203A49C();
      if (qword_27FEF8708 != -1)
      {
        OUTLINED_FUNCTION_0_30(&qword_27FEF8708);
      }

      if (os_log_type_enabled(qword_27FEFA528, v33))
      {
        v34 = OUTLINED_FUNCTION_40_2();
        v101 = OUTLINED_FUNCTION_39_0();
        *v34 = 136446466;
        v35 = sub_261F67FE4(v2[7], v2[8], &v101);
        OUTLINED_FUNCTION_22_9(v35);
        OUTLINED_FUNCTION_2_23();
        v99 = v36;
        v100 = v37;
        MEMORY[0x266722710]();
        v38 = sub_261F67FE4(v99, v100, &v101);

        *(v34 + 14) = v38;
        OUTLINED_FUNCTION_16_13(&dword_261F5B000, v39, v40, "%{public}s/%s: Tunnel connection path is nil");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_1_0();
      }
    }

    else
    {
      v88 = v3;
      v75 = v2;
      v76 = v31;
      (*(v78 + 32))(v83, v1, v32);
      v42 = sub_262039E7C();
      v43 = 0;
      v96 = *(v42 + 16);
      v91 = v97 + 16;
      v90 = *MEMORY[0x277CD8CB8];
      v95 = (v5 + 104);
      v44 = (v5 + 8);
      v87 = *MEMORY[0x277CD8CC0];
      v80 = (v97 + 32);
      v86 = (v97 + 8);
      v84 = MEMORY[0x277D84F90];
      v45 = v82;
      v92 = v42;
      v89 = v16;
      v77 = (v5 + 8);
      while (1)
      {
        v41 = v95;
        if (v96 == v43)
        {
          break;
        }

        if (v43 >= *(v42 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        v94 = (*(v97 + 80) + 32) & ~*(v97 + 80);
        v46 = *(v97 + 72);
        v98 = v43;
        v93 = v46;
        v47 = v12;
        (*(v97 + 16))(v45, v42 + v94 + v46 * v43, v16);
        sub_262039B1C();
        v48 = *v41;
        v49 = v88;
        (*v41)(v9, v90, v88);
        OUTLINED_FUNCTION_10_10();
        sub_2620176E8(&qword_27FEFA530, v50, MEMORY[0x277CD8CD0]);
        v51 = OUTLINED_FUNCTION_29_9();
        v52 = *v44;
        (*v44)(v9, v49);
        v53 = OUTLINED_FUNCTION_204();
        v52(v53);
        if (v51 & 1) != 0 && (sub_262039B1C(), v48(v9, v87, v49), v54 = OUTLINED_FUNCTION_29_9(), (v52)(v9, v49), v55 = OUTLINED_FUNCTION_204(), v52(v55), (v54))
        {
          v16 = v89;
          (*v86)(v45, v89);
          v43 = v98 + 1;
          v12 = v47;
          v42 = v92;
        }

        else
        {
          v16 = v89;
          v56 = *v80;
          (*v80)(v85, v45, v89);
          v57 = v84;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v99 = v57;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_261F95AA0(0, *(v57 + 16) + 1, 1);
            v45 = v82;
            v57 = v99;
          }

          v12 = v47;
          v59 = v98;
          v61 = *(v57 + 16);
          v60 = *(v57 + 24);
          if (v61 >= v60 >> 1)
          {
            sub_261F95AA0((v60 > 1), v61 + 1, 1);
            v59 = v98;
            v57 = v99;
            v45 = v82;
          }

          v43 = v59 + 1;
          *(v57 + 16) = v61 + 1;
          v84 = v57;
          v56(v57 + v94 + v61 * v93, v85, v16);
          v42 = v92;
          v44 = v77;
        }
      }

      v62 = v79;
      sub_261FD4744(v84);

      if (__swift_getEnumTagSinglePayload(v62, 1, v16) == 1)
      {
        sub_261FCB894(v62, &unk_27FEF9B60, &unk_262040530);
        v63 = 0;
        v64 = 0;
      }

      else
      {
        v63 = sub_262039B0C();
        v64 = v65;
        (*v86)(v62, v16);
      }

      v66 = v75;
      v67 = sub_26203A4AC();
      if (qword_27FEF8708 != -1)
      {
        OUTLINED_FUNCTION_0_30(&qword_27FEF8708);
      }

      v68 = qword_27FEFA528;
      if (os_log_type_enabled(qword_27FEFA528, v67))
      {
        v69 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *v69 = 136446722;
        *(v69 + 4) = sub_261F67FE4(v66[7], v66[8], &v101);
        *(v69 + 12) = 2080;
        OUTLINED_FUNCTION_2_23();
        v99 = v70;
        v100 = v71;
        MEMORY[0x266722710]();
        sub_261F67FE4(v99, v100, &v101);
        OUTLINED_FUNCTION_40_5();
        *(v69 + 14) = v9;
        *(v69 + 22) = 2080;
        v99 = v63;
        v100 = v64;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
        v72 = sub_26203A20C();
        sub_261F67FE4(v72, v73, &v101);
        OUTLINED_FUNCTION_40_5();
        *(v69 + 24) = v9;
        _os_log_impl(&dword_261F5B000, v68, v67, "%{public}s/%s: Tunnel connection path interface name: %s", v69, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_1_0();
      }

      (*(v78 + 8))(v83, v81);
    }
  }

  else
  {
    v41 = sub_26203A49C();
    if (qword_27FEF8708 != -1)
    {
LABEL_31:
      OUTLINED_FUNCTION_0_30(&qword_27FEF8708);
    }

    sub_26203969C(v41, &dword_261F5B000, qword_27FEFA528, "Tunnel connection path is nil", 29, 2, MEMORY[0x277D84F90]);
  }

  OUTLINED_FUNCTION_31_0();
}

void sub_262012A6C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2 == 3)
  {
    v6 = (v0 + 88);
    v5 = *(v0 + 88);
    if (v5)
    {
      v7 = *(v0 + 96);
      v11 = 1;

      v5(&v11);
      sub_261F665E4(v5, v7);
      v8 = *(v1 + 88);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(v1 + 96);
    *v6 = 0;
    *(v1 + 96) = 0;

    sub_261F665E4(v8, v9);
  }

  else if (v2 == 2)
  {
    v3 = *(v0 + 88);
    if (v3)
    {
      v4 = *(v0 + 96);
      v10 = 0;

      v3(&v10);
      sub_261F665E4(v3, v4);
    }
  }
}

uint64_t sub_262012BA8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_43(v2 + 24, a2);
  *(v2 + 24) = a1;
}

uint64_t sub_262012CAC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_43(v2 + 40, a2);
  *(v2 + 40) = a1;
}

uint64_t sub_262012D84(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_43(v2 + 48, a2);
  *(v2 + 48) = a1;
}

uint64_t QUICTunnelConnection.__allocating_init(tunnelIdentifier:group:options:)()
{
  OUTLINED_FUNCTION_35_5();
  v4 = swift_allocObject();
  QUICTunnelConnection.init(tunnelIdentifier:group:options:)(v3, v2, v1, v0);
  return v4;
}

uint64_t QUICTunnelConnection.init(tunnelIdentifier:group:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  v8 = sub_26203A3FC();
  *(v8 + 16) = 8;
  if (("Only host should send handshake" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v9 = v8;
    v10 = 0;
    v11 = v8 + 32;
    while (1)
    {
      v12 = sub_26203A24C();
      if (v12 < 0)
      {
        break;
      }

      v13 = v12;
      if (!v12)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_18_7();
      if (v13 > v21 * v13)
      {
        v14 = -v13 % v13;
        while (v14 > v21 * v13)
        {
          OUTLINED_FUNCTION_18_7();
        }
      }

      sub_26203A25C();
      v15 = sub_26203A2DC();
      v16 = (v11 + 16 * v10);
      *v16 = v15;
      v16[1] = v17;
      if (++v10 == 8)
      {
        *(v9 + 16) = 8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9AB0, &qword_262040300);
        sub_261F7AA80(&qword_28108B328, &unk_27FEF9AB0, &qword_262040300);
        *(v4 + 72) = sub_26203A2EC();
        *(v4 + 80) = v18;
        *(v4 + 56) = a1;
        *(v4 + 64) = a2;
        *(v4 + 24) = a3;
        *(v4 + 32) = a4;
        return v4;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  OUTLINED_FUNCTION_17_10();
  result = OUTLINED_FUNCTION_13_12();
  __break(1u);
  return result;
}

void sub_262013060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_146((v3 + 6), v25);
  if (!v3[6])
  {
    LOBYTE(a3) = sub_26203A48C();
    if (qword_27FEF8708 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  v7 = *(a1 + 16);
  if (v7 >> 60)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    OUTLINED_FUNCTION_0_30(&qword_27FEF8708);
LABEL_10:
    if (os_log_type_enabled(qword_27FEFA528, a3))
    {
      v15 = OUTLINED_FUNCTION_40_2();
      __dst[0] = OUTLINED_FUNCTION_39_0();
      *v15 = 136446466;
      v16 = sub_261F67FE4(v3[7], v3[8], __dst);
      OUTLINED_FUNCTION_22_9(v16);
      OUTLINED_FUNCTION_2_23();
      aBlock[0] = v17;
      aBlock[1] = v18;
      MEMORY[0x266722710]();
      v19 = sub_261F67FE4(aBlock[0], aBlock[1], __dst);

      *(v15 + 14) = v19;
      OUTLINED_FUNCTION_16_13(&dword_261F5B000, v20, v21, "%{public}s/%s: Tunnel stream trying to send packets on a nil datagram stream");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }

    return;
  }

  swift_retain_n();
  v8 = swift_slowAlloc();
  v9 = 0;
  v10 = 32;
  while (v7 != v9)
  {
    memcpy(__dst, (a1 + v10), sizeof(__dst));
    memcpy(aBlock, (a1 + v10), sizeof(aBlock));
    sub_261F6D6B0(__dst, &v22);
    v11 = sub_26203952C();
    v12 = NWCreateDispatchDataFromNSData();

    if (!v12)
    {
      __break(1u);
      return;
    }

    *(v8 + 8 * v9) = v12;
    sub_261F6D70C(aBlock);
    v10 += 96;
    ++v9;
  }

  v3 = MEMORY[0x2667220A0]();

  if (HIDWORD(v7))
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_106();
  v13 = swift_allocObject();
  v13[2] = v8;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  aBlock[4] = sub_262016DE0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26200F09C;
  aBlock[3] = &block_descriptor_13;
  v14 = _Block_copy(aBlock);

  nw_connection_write_multiple();

  _Block_release(v14);
  swift_unknownObjectRelease();
}

void sub_26201333C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v6 = a1;
  v7 = sub_2620392DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261F9B6D0(0, &qword_27FEFA538, 0x277D85C60);
  swift_arrayDestroy();
  MEMORY[0x266724180](a2, -1, -1);
  if (v6)
  {
    sub_26203A0FC();
    sub_2620392AC();
    v11 = sub_2620392CC();
    (*(v8 + 8))(v10, v7);
    v12 = v11;
  }

  else
  {
    v11 = 0;
  }

  a4(v11);
}

uint64_t sub_2620134C8(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  result = OUTLINED_FUNCTION_79(v3 + 40, a2);
  if (*(v3 + 40))
  {

    sub_26200F0F0(a1, a2, a3);
  }

  return result;
}

void sub_26201353C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_146((v2 + 6), v24);
  if (v2[6])
  {
    OUTLINED_FUNCTION_63();
    v5 = swift_allocObject();
    *(v5 + 16) = MEMORY[0x277D84F90];

    MEMORY[0x2667220A0](v6);
    OUTLINED_FUNCTION_63();
    v7 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_106();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = a1;
    v8[4] = a2;
    v8[5] = v5;
    v21 = sub_262016DEC;
    v22 = v8;
    v17 = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_262013D30;
    v20 = &block_descriptor_36;
    v9 = _Block_copy(&v17);

    nw_connection_receive_multiple();

    _Block_release(v9);

    swift_unknownObjectRelease();
  }

  else
  {
    v10 = sub_26203A48C();
    if (qword_27FEF8708 != -1)
    {
      OUTLINED_FUNCTION_0_30(&qword_27FEF8708);
    }

    if (os_log_type_enabled(qword_27FEFA528, v10))
    {
      v11 = OUTLINED_FUNCTION_40_2();
      v23 = OUTLINED_FUNCTION_39_0();
      *v11 = 136446466;
      *(v11 + 4) = sub_261F67FE4(v2[7], v2[8], &v23);
      *(v11 + 12) = 2080;
      OUTLINED_FUNCTION_2_23();
      v17 = v12;
      v18 = v13;
      MEMORY[0x266722710]();
      v14 = sub_261F67FE4(v17, v18, &v23);

      *(v11 + 14) = v14;
      OUTLINED_FUNCTION_37_4(&dword_261F5B000, v15, v16, "%{public}s/%s: Tunnel stream trying to receive packets on a nil datagram stream");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }
  }
}

uint64_t sub_2620137A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t), uint64_t a7, uint64_t a8)
{
  v28 = a6;
  v11 = sub_262039E9C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a4)
    {
      swift_unknownObjectRetain_n();
      sub_262039EAC();
      sub_2620176E8(&qword_27FEFA168, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      v16 = swift_allocError();
      (*(v12 + 16))(v17, v14, v11);
      v28(v16, 1);

      swift_unknownObjectRelease();
      return (*(v12 + 8))(v14, v11);
    }

    else
    {
      v18 = NWCreateNSDataFromDispatchData();
      if (v18)
      {
        v19 = v18;
        v20 = sub_26203954C();
        v22 = v21;

        sub_261F6B73C(v20, v22);
        TunnelPacket.init(data:)();
        memcpy(v30, __src, 0x60uLL);
        swift_beginAccess();
        sub_261F6D6B0(v30, &v29);
        sub_262001C74();
        v24 = *(*(a8 + 16) + 16);
        sub_262001D68(v24);
        v25 = *(a8 + 16);
        *(v25 + 16) = v24 + 1;
        memcpy((v25 + 96 * v24 + 32), v30, 0x60uLL);
        *(a8 + 16) = v25;
        swift_endAccess();
        sub_261F6D70C(v30);
        if (a3)
        {
          swift_beginAccess();

          v28(v26, 0);

          sub_261F6BFFC(v20, v22);
        }

        else
        {

          return sub_261F6BFFC(v20, v22);
        }
      }

      else
      {
        sub_261F9BCE0();
        sub_26203ACEC();
        v30[0] = __src[0];
        v30[1] = __src[1];
        sub_261F9D610();
        v23 = swift_allocError();
        sub_26203AD4C();
        v28(v23, 1);
      }
    }
  }

  return result;
}

void sub_262013D30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v10 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9(a2, a3, a4, a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_262013DE0(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_79(v2 + 40, a2);
  v6 = *(v2 + 40);
  if (v6)
  {
    OUTLINED_FUNCTION_107();
    v7 = swift_allocObject();
    v7[2] = a1;
    v7[3] = a2;
    v7[4] = v6;
    swift_retain_n();

    sub_262010894();
  }

  return result;
}

void sub_262013E88()
{
  OUTLINED_FUNCTION_146(v0 + 24, v2);

  sub_262039E3C();

  swift_beginAccess();
  if (*(v0 + 40))
  {

    sub_262039C6C();
  }

  OUTLINED_FUNCTION_43(v0 + 48, v1);
  if (*(v0 + 48))
  {

    sub_262039C6C();
  }

  *(v0 + 40) = 0;

  *(v0 + 48) = 0;

  *(v0 + 16) = 3;
  sub_262012A6C();
}

uint64_t sub_262013F5C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_107();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v9 = *(v4 + 88);
  v10 = *(v4 + 96);
  *(v4 + 88) = sub_262016E08;
  *(v4 + 96) = v8;
  v11 = a1;

  sub_261F665E4(v9, v10);
  OUTLINED_FUNCTION_79(v4 + 24, v12);
  OUTLINED_FUNCTION_63();
  v13 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_63();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_38_3(v14);
  OUTLINED_FUNCTION_107();
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v11;
  v16 = v11;

  sub_261F7D45C(sub_262016E4C, v15);
  sub_262039DFC();

  OUTLINED_FUNCTION_63();
  v17 = swift_allocObject();
  swift_weakInit();

  sub_261F7D45C(sub_262016E58, v17);
  sub_262039E0C();

  sub_262039E2C();
}

void sub_262014150()
{
  OUTLINED_FUNCTION_96();
  v24 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_262039FAC();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_74();
  v15 = v14 - v13;
  v25 = sub_262039FEC();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74();
  v21 = v20 - v19;
  LOBYTE(v8) = *v8;
  v22 = swift_allocObject();
  *(v22 + 16) = v6;
  *(v22 + 24) = v4;
  *(v22 + 32) = v8;
  v26[4] = v2;
  v26[5] = v22;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 1107296256;
  v26[2] = sub_261F78F64;
  v26[3] = v24;
  v23 = _Block_copy(v26);

  sub_262039FCC();
  sub_2620176E8(&qword_28108B370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
  sub_26203A75C();
  MEMORY[0x266722A20](0, v21, v15, v23);
  _Block_release(v23);
  (*(v11 + 8))(v15, v9);
  (*(v17 + 8))(v21, v25);

  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_2620143D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = a4;
  v91 = a1;
  v92 = sub_262039E9C();
  v4 = *(v92 - 8);
  v5 = MEMORY[0x28223BE20](v92);
  v7 = &v87[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v87[-v9];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v87[-v12];
  MEMORY[0x28223BE20](v11);
  v15 = &v87[-v14];
  v16 = sub_262039E1C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v87[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v90 = result;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v22 = Strong;
  (*(v17 + 16))(v19, v91, v16);
  v23 = (*(v17 + 88))(v19, v16);
  if (v23 == *MEMORY[0x277CD8ED8])
  {
    (*(v17 + 96))(v19, v16);
    v24 = v4;
    v25 = v92;
    (*(v4 + 32))(v15, v19, v92);
    v26 = sub_26203A4AC();
    if (qword_27FEF8708 != -1)
    {
      swift_once();
    }

    v27 = qword_27FEFA528;
    (*(v4 + 16))(v13, v15, v25);
    if (os_log_type_enabled(v27, v26))
    {
      v28 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v95 = v89;
      *v28 = 136446722;
      v91 = v22;
      v29 = v90;
      v30 = *(v90 + 56);
      v31 = *(v90 + 64);

      v32 = sub_261F67FE4(v30, v31, &v95);

      *(v28 + 4) = v32;
      v88 = v26;
      *(v28 + 12) = 2080;
      v33 = *(v29 + 72);
      v34 = *(v29 + 80);
      v93 = 0x5F6E6F6374;
      v94 = 0xE500000000000000;
      MEMORY[0x266722710](v33, v34);
      v35 = sub_261F67FE4(v93, v94, &v95);

      *(v28 + 14) = v35;
      *(v28 + 22) = 2080;
      sub_2620176E8(&qword_27FEFA168, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      v36 = sub_26203ACCC();
      v38 = v37;
      v39 = *(v24 + 8);
      v39(v13, v25);
      v40 = sub_261F67FE4(v36, v38, &v95);

      *(v28 + 24) = v40;
      _os_log_impl(&dword_261F5B000, v27, v88, "%{public}s/%s: Group tunnel connection waiting, error: %s", v28, 0x20u);
      v41 = v89;
      swift_arrayDestroy();
      MEMORY[0x266724180](v41, -1, -1);
      MEMORY[0x266724180](v28, -1, -1);

      return (v39)(v15, v25);
    }

    else
    {

      v60 = *(v4 + 8);
      v60(v13, v25);
      return (v60)(v15, v25);
    }
  }

  if (v23 != *MEMORY[0x277CD8ED0])
  {
    if (v23 == *MEMORY[0x277CD8EC8])
    {
      v61 = sub_26203A4AC();
      if (qword_27FEF8708 != -1)
      {
        swift_once();
      }

      v62 = qword_27FEFA528;
      if (os_log_type_enabled(qword_27FEFA528, v61))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v95 = v64;
        *v63 = 136446466;
        v65 = v90;
        v66 = *(v90 + 56);
        v67 = *(v90 + 64);

        v68 = sub_261F67FE4(v66, v67, &v95);

        *(v63 + 4) = v68;
        *(v63 + 12) = 2080;
        v69 = *(v65 + 72);
        v70 = *(v65 + 80);
        v93 = 0x5F6E6F6374;
        v94 = 0xE500000000000000;
        MEMORY[0x266722710](v69, v70);
        v71 = sub_261F67FE4(v93, v94, &v95);

        *(v63 + 14) = v71;
        _os_log_impl(&dword_261F5B000, v62, v61, "%{public}s/%s: Group tunnel connection setup", v63, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266724180](v64, -1, -1);
        MEMORY[0x266724180](v63, -1, -1);
      }
    }

    else if (v23 == *MEMORY[0x277CD8EC0])
    {
      v72 = v90;
      swift_beginAccess();
      v73 = *(v72 + 32);

      v74 = v89;
      sub_262015160(v22, v73, 0, v89);

      v75 = *(v72 + 32);

      sub_262015160(v22, v75, 1, v74);
    }

    else
    {
      if (v23 != *MEMORY[0x277CD8EE0])
      {
        v93 = 0;
        v94 = 0xE000000000000000;
        sub_26203A7CC();
        MEMORY[0x266722710](0x2064696C61766E49, 0xEF203A6574617473);
        sub_26203A8CC();
        result = sub_26203A91C();
        __break(1u);
        return result;
      }

      v76 = sub_26203A4AC();
      if (qword_27FEF8708 != -1)
      {
        swift_once();
      }

      v77 = qword_27FEFA528;
      if (os_log_type_enabled(qword_27FEFA528, v76))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v95 = v79;
        *v78 = 136446466;
        v80 = v90;
        v81 = *(v90 + 56);
        v82 = *(v90 + 64);

        v83 = sub_261F67FE4(v81, v82, &v95);

        *(v78 + 4) = v83;
        *(v78 + 12) = 2080;
        v84 = *(v80 + 72);
        v85 = *(v80 + 80);
        v93 = 0x5F6E6F6374;
        v94 = 0xE500000000000000;
        MEMORY[0x266722710](v84, v85);
        v86 = sub_261F67FE4(v93, v94, &v95);

        *(v78 + 14) = v86;
        _os_log_impl(&dword_261F5B000, v77, v76, "%{public}s/%s: Group tunnel connection cancelled", v78, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266724180](v79, -1, -1);
        MEMORY[0x266724180](v78, -1, -1);
      }

      sub_262013E88();
    }
  }

  (*(v17 + 96))(v19, v16);
  v42 = v19;
  v43 = v92;
  (*(v4 + 32))(v10, v42, v92);
  v44 = sub_26203A48C();
  if (qword_27FEF8708 != -1)
  {
    swift_once();
  }

  v91 = v22;
  v45 = qword_27FEFA528;
  (*(v4 + 16))(v7, v10, v43);
  if (os_log_type_enabled(v45, v44))
  {
    v46 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v95 = v89;
    *v46 = 136446722;
    v47 = v90;
    v88 = v44;
    v48 = *(v90 + 56);
    v49 = *(v90 + 64);

    v50 = sub_261F67FE4(v48, v49, &v95);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2080;
    v51 = *(v47 + 72);
    v52 = *(v47 + 80);
    v93 = 0x5F6E6F6374;
    v94 = 0xE500000000000000;
    MEMORY[0x266722710](v51, v52);
    v53 = sub_261F67FE4(v93, v94, &v95);

    *(v46 + 14) = v53;
    *(v46 + 22) = 2080;
    sub_2620176E8(&qword_27FEFA168, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
    v54 = sub_26203ACCC();
    v56 = v55;
    v57 = *(v4 + 8);
    v57(v7, v92);
    v58 = sub_261F67FE4(v54, v56, &v95);
    v43 = v92;

    *(v46 + 24) = v58;
    _os_log_impl(&dword_261F5B000, v45, v88, "%{public}s/%s: Group tunnel connection failed, error: %s", v46, 0x20u);
    v59 = v89;
    swift_arrayDestroy();
    MEMORY[0x266724180](v59, -1, -1);
    MEMORY[0x266724180](v46, -1, -1);
  }

  else
  {
    v57 = *(v4 + 8);
    v57(v7, v43);
  }

  sub_262013E88();

  return (v57)(v10, v43);
}

void *sub_262014FA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_26203A48C();
    if (qword_27FEF8708 != -1)
    {
      swift_once();
    }

    v5 = qword_27FEFA528;
    if (os_log_type_enabled(qword_27FEFA528, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136446466;
      v8 = v3[7];
      v9 = v3[8];

      v10 = sub_261F67FE4(v8, v9, &v12);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      MEMORY[0x266722710](v3[9], v3[10]);
      v11 = sub_261F67FE4(0x5F6E6F6374, 0xE500000000000000, &v12);

      *(v6 + 14) = v11;
      _os_log_impl(&dword_261F5B000, v5, v4, "%{public}s/%s: Unexpected stream received", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266724180](v7, -1, -1);
      MEMORY[0x266724180](v6, -1, -1);
    }
  }

  return result;
}

void sub_262015160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA110, &unk_2620434E0);
  OUTLINED_FUNCTION_40(v7);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  sub_262039DAC();
  v11 = sub_262039A7C();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = sub_262039E4C();
  sub_261FCB894(v10, &qword_27FEFA110, &unk_2620434E0);
  if (v12)
  {
    sub_262015358(v12, v6 & 1, a4);
  }

  else
  {
    v13 = sub_26203A48C();
    if (qword_27FEF8708 != -1)
    {
      OUTLINED_FUNCTION_0_30(&qword_27FEF8708);
    }

    if (os_log_type_enabled(qword_27FEFA528, v13))
    {
      v14 = OUTLINED_FUNCTION_40_2();
      v23 = OUTLINED_FUNCTION_39_0();
      *v14 = 136446466;
      *(v14 + 4) = sub_261F67FE4(*(v4 + 56), *(v4 + 64), &v23);
      *(v14 + 12) = 2080;
      OUTLINED_FUNCTION_2_23();
      v21 = v15;
      v22 = v16;
      MEMORY[0x266722710]();
      v17 = sub_261F67FE4(v21, v22, &v23);

      *(v14 + 14) = v17;
      OUTLINED_FUNCTION_37_4(&dword_261F5B000, v18, v19, "%{public}s/%s: Can't extract a stream from the group connection");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }

    sub_262013E88();
  }
}

uint64_t sub_262015358(uint64_t a1, char a2, uint64_t a3)
{
  OUTLINED_FUNCTION_63();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_39_3(v5);
  OUTLINED_FUNCTION_107();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a1;

  sub_261F7D45C(sub_262017694, v6);
  sub_262039BDC();

  OUTLINED_FUNCTION_63();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_39_3(v7);
  OUTLINED_FUNCTION_46();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;

  sub_261F7D45C(sub_2620176E0, v8);
  sub_262039BEC();

  return sub_262039C4C();
}

uint64_t sub_2620154A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v115 = a4;
  v114 = a3;
  v5 = sub_262039DBC();
  v112 = *(v5 - 8);
  v113 = v5;
  MEMORY[0x28223BE20](v5);
  v111 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_262039E9C();
  v7 = *(v116 - 8);
  v8 = MEMORY[0x28223BE20](v116);
  v10 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v110 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v110 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v110 - v17;
  v19 = sub_262039C3C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v24 = result;
  (*(v20 + 16))(v22, a1, v19);
  v25 = (*(v20 + 88))(v22, v19);
  if (v25 == *MEMORY[0x277CD8DE8])
  {
    (*(v20 + 96))(v22, v19);
    v26 = v116;
    (*(v7 + 32))(v18, v22, v116);
    v27 = sub_26203A4AC();
    if (qword_27FEF8708 != -1)
    {
      swift_once();
    }

    v28 = qword_27FEFA528;
    (*(v7 + 16))(v16, v18, v26);
    if (os_log_type_enabled(v28, v27))
    {
      v29 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v119 = v113;
      *v29 = 136446978;
      LODWORD(v112) = v27;
      v30 = v24;
      v31 = *(v24 + 56);
      v32 = v30[8];

      v33 = sub_261F67FE4(v31, v32, &v119);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      v34 = v30[9];
      v35 = v30[10];
      v117 = 0x5F6E6F6374;
      v118 = 0xE500000000000000;
      MEMORY[0x266722710](v34, v35);
      v36 = sub_261F67FE4(v117, v118, &v119);

      *(v29 + 14) = v36;
      *(v29 + 22) = 1024;
      *(v29 + 24) = v114 & 1;
      *(v29 + 28) = 2080;
      sub_2620176E8(&qword_27FEFA168, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      v37 = sub_26203ACCC();
      v39 = v38;
      v40 = *(v7 + 8);
      v40(v16, v116);
      v41 = sub_261F67FE4(v37, v39, &v119);

      *(v29 + 30) = v41;
      _os_log_impl(&dword_261F5B000, v28, v112, "%{public}s/%s: Tunnel stream (datagram=%{BOOL}d) connection waiting, error: %s", v29, 0x26u);
      v42 = v113;
      swift_arrayDestroy();
      MEMORY[0x266724180](v42, -1, -1);
      v43 = v29;
      v26 = v116;
      MEMORY[0x266724180](v43, -1, -1);
    }

    else
    {
      v40 = *(v7 + 8);
      v40(v16, v26);
    }

    sub_262039C6C();
    sub_262013E88();

    return (v40)(v18, v26);
  }

  if (v25 != *MEMORY[0x277CD8DE0])
  {
    if (v25 == *MEMORY[0x277CD8DD8] || v25 == *MEMORY[0x277CD8DF8])
    {
      v61 = sub_26203A4AC();
      if (qword_27FEF8708 != -1)
      {
        swift_once();
      }

      v62 = qword_27FEFA528;
      if (os_log_type_enabled(qword_27FEFA528, v61))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v119 = v64;
        *v63 = 136446722;
        v65 = v24;
        v66 = *(v24 + 56);
        v67 = v65[8];

        v68 = sub_261F67FE4(v66, v67, &v119);

        *(v63 + 4) = v68;
        *(v63 + 12) = 2080;
        v69 = v65[9];
        v70 = v65[10];
        v117 = 0x5F6E6F6374;
        v118 = 0xE500000000000000;
        MEMORY[0x266722710](v69, v70);
        v71 = sub_261F67FE4(v117, v118, &v119);

        *(v63 + 14) = v71;
        *(v63 + 22) = 1024;
        *(v63 + 24) = v114 & 1;
        _os_log_impl(&dword_261F5B000, v62, v61, "%{public}s/%s: Tunnel stream (datagram=%{BOOL}d) connection setup", v63, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x266724180](v64, -1, -1);
        MEMORY[0x266724180](v63, -1, -1);
      }
    }

    v72 = v24;
    if (v25 != *MEMORY[0x277CD8DD0])
    {
      if (v25 != *MEMORY[0x277CD8DF0])
      {
        v117 = 0;
        v118 = 0xE000000000000000;
        sub_26203A7CC();
        MEMORY[0x266722710](0x2064696C61766E49, 0xEF203A6574617473);
        sub_26203A8CC();
        result = sub_26203A91C();
        __break(1u);
        return result;
      }

      v96 = sub_26203A4AC();
      if (qword_27FEF8708 != -1)
      {
        swift_once();
      }

      v97 = qword_27FEFA528;
      if (os_log_type_enabled(qword_27FEFA528, v96))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v119 = v99;
        *v98 = 136446722;
        v100 = *(v24 + 56);
        v101 = *(v72 + 64);

        v102 = sub_261F67FE4(v100, v101, &v119);

        *(v98 + 4) = v102;
        *(v98 + 12) = 2080;
        v103 = *(v72 + 72);
        v104 = *(v72 + 80);
        v117 = 0x5F6E6F6374;
        v118 = 0xE500000000000000;
        MEMORY[0x266722710](v103, v104);
        v105 = sub_261F67FE4(v117, v118, &v119);

        *(v98 + 14) = v105;
        *(v98 + 22) = 1024;
        *(v98 + 24) = v114 & 1;
        _os_log_impl(&dword_261F5B000, v97, v96, "%{public}s/%s: Tunnel stream (datagram=%{BOOL}d) connection cancelled", v98, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x266724180](v99, -1, -1);
        MEMORY[0x266724180](v98, -1, -1);
      }

      sub_262039C6C();
      sub_262013E88();
    }

    v73 = sub_26203A4AC();
    v74 = v115;
    if (qword_27FEF8708 != -1)
    {
      swift_once();
    }

    v75 = qword_27FEFA528;
    if (os_log_type_enabled(qword_27FEFA528, v73))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v119 = v77;
      *v76 = 136446722;
      v78 = *(v24 + 56);
      v79 = *(v72 + 64);

      v80 = sub_261F67FE4(v78, v79, &v119);

      *(v76 + 4) = v80;
      *(v76 + 12) = 2080;
      v81 = *(v72 + 72);
      v82 = *(v72 + 80);
      v117 = 0x5F6E6F6374;
      v118 = 0xE500000000000000;
      MEMORY[0x266722710](v81, v82);
      v83 = sub_261F67FE4(v117, v118, &v119);

      *(v76 + 14) = v83;
      *(v76 + 22) = 1024;
      *(v76 + 24) = v114 & 1;
      _os_log_impl(&dword_261F5B000, v75, v73, "%{public}s/%s: Tunnel stream (datagram=%{BOOL}d) connection established", v76, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x266724180](v77, -1, -1);
      MEMORY[0x266724180](v76, -1, -1);
    }

    sub_262039DEC();
    sub_262039D9C();
    v84 = sub_262039C9C();

    v85 = v72;
    if (v84)
    {
      sub_262039DDC();
      if (swift_dynamicCastClass())
      {
        v86 = sub_26203A4AC();
        if (os_log_type_enabled(v75, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v119 = v88;
          *v87 = 136446466;
          v89 = *(v72 + 56);
          v90 = *(v72 + 64);

          v91 = sub_261F67FE4(v89, v90, &v119);

          *(v87 + 4) = v91;
          *(v87 + 12) = 2080;
          v92 = *(v72 + 72);
          v93 = *(v72 + 80);
          v74 = v115;
          v117 = 0x5F6E6F6374;
          v118 = 0xE500000000000000;
          MEMORY[0x266722710](v92, v93);
          v94 = sub_261F67FE4(v117, v118, &v119);

          *(v87 + 14) = v94;
          _os_log_impl(&dword_261F5B000, v75, v86, "%{public}s/%s: Tunnel stream setting keepalive on", v87, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266724180](v88, -1, -1);
          MEMORY[0x266724180](v87, -1, -1);
        }

        (*(v112 + 104))(v111, *MEMORY[0x277CD8E98], v113);
        sub_262039DCC();
        v85 = v72;
      }
    }

    if (v114)
    {
      swift_beginAccess();
      *(v85 + 48) = v74;

      sub_26201667C();
      if ((*(v72 + 16) & 0xFE) != 2)
      {
        if ((*(v72 + 16) & 0x100) != 0)
        {
          v95 = 2;
        }

        else
        {
          v95 = 1;
        }

LABEL_49:
        *(v72 + 16) = v95;
      }
    }

    else
    {
      v106 = *(v85 + 56);
      v107 = *(v72 + 64);
      type metadata accessor for TCPTunnelConnection();
      v108 = swift_allocObject();

      TCPTunnelConnection.init(tunnelIdentifier:stream:)(v106, v107, v74);
      swift_beginAccess();
      *(v72 + 40) = v108;

      v109 = *(v72 + 16);
      if ((v109 & 0xFE) != 2)
      {
        if (v109)
        {
          v95 = 2;
        }

        else
        {
          v95 = 256;
        }

        goto LABEL_49;
      }
    }

    sub_262012A6C();
  }

  (*(v20 + 96))(v22, v19);
  v44 = v116;
  (*(v7 + 32))(v13, v22, v116);
  v45 = sub_26203A48C();
  if (qword_27FEF8708 != -1)
  {
    swift_once();
  }

  v46 = qword_27FEFA528;
  (*(v7 + 16))(v10, v13, v44);
  if (os_log_type_enabled(v46, v45))
  {
    v47 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v119 = v113;
    *v47 = 136446978;
    v48 = v24;
    v49 = *(v24 + 56);
    v50 = v48[8];

    v51 = sub_261F67FE4(v49, v50, &v119);

    *(v47 + 4) = v51;
    LODWORD(v112) = v45;
    *(v47 + 12) = 2080;
    v52 = v48[9];
    v53 = v48[10];
    v117 = 0x5F6E6F6374;
    v118 = 0xE500000000000000;
    MEMORY[0x266722710](v52, v53);
    v54 = sub_261F67FE4(v117, v118, &v119);

    *(v47 + 14) = v54;
    *(v47 + 22) = 1024;
    *(v47 + 24) = v114 & 1;
    *(v47 + 28) = 2080;
    sub_2620176E8(&qword_27FEFA168, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
    v55 = sub_26203ACCC();
    v57 = v56;
    v58 = *(v7 + 8);
    v58(v10, v116);
    v59 = sub_261F67FE4(v55, v57, &v119);
    v44 = v116;

    *(v47 + 30) = v59;
    _os_log_impl(&dword_261F5B000, v46, v112, "%{public}s/%s: Tunnel stream (datagram=%{BOOL}d) connection failed, error: %s", v47, 0x26u);
    v60 = v113;
    swift_arrayDestroy();
    MEMORY[0x266724180](v60, -1, -1);
    MEMORY[0x266724180](v47, -1, -1);
  }

  else
  {
    v58 = *(v7 + 8);
    v58(v10, v44);
  }

  sub_262039C6C();
  sub_262013E88();

  return (v58)(v13, v44);
}

uint64_t sub_2620164A4(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v2 = result;
      v3 = sub_26203A48C();
      if (qword_27FEF8708 != -1)
      {
        swift_once();
      }

      v4 = qword_27FEFA528;
      if (os_log_type_enabled(qword_27FEFA528, v3))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v11 = v6;
        *v5 = 136446466;
        v7 = v2[7];
        v8 = v2[8];

        v9 = sub_261F67FE4(v7, v8, &v11);

        *(v5 + 4) = v9;
        *(v5 + 12) = 2080;
        MEMORY[0x266722710](v2[9], v2[10]);
        v10 = sub_261F67FE4(0x5F6E6F6374, 0xE500000000000000, &v11);

        *(v5 + 14) = v10;
        _os_log_impl(&dword_261F5B000, v4, v3, "%{public}s/%s: Cancelling tunnel connection as it is no longer viable", v5, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266724180](v6, -1, -1);
        MEMORY[0x266724180](v5, -1, -1);
      }

      sub_262039C6C();
      sub_262013E88();
    }
  }

  return result;
}

void sub_26201667C()
{
  OUTLINED_FUNCTION_96();
  v0 = sub_262039BCC();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_74();
  v6 = (v5 - v4);
  v7 = static Data.randomBytes(ofLength:)(0x400uLL);
  v9 = v8;
  OUTLINED_FUNCTION_63();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_38_3(v10);
  *v6 = sub_26201768C;
  v6[1] = v10;
  (*(v2 + 104))(v6, *MEMORY[0x277CD8DB0], v0);
  sub_262039BBC();

  sub_262039B9C();
  sub_262039C1C();

  sub_261F6BFFC(v7, v9);
  v11 = OUTLINED_FUNCTION_1_1();
  v12(v11);

  OUTLINED_FUNCTION_31_0();
}

void *sub_2620167E0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA520, &qword_262045940);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_26203A4AC();
    if (qword_27FEF8708 != -1)
    {
      swift_once();
    }

    v12 = qword_27FEFA528;
    sub_26200EF6C(a1, v8);
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v13 = 136446722;
      v15 = v10[7];
      v16 = v10[8];

      v17 = sub_261F67FE4(v15, v16, &v27);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = v10[9];
      v19 = v10[10];
      v25 = 0x5F6E6F6374;
      v26 = 0xE500000000000000;
      MEMORY[0x266722710](v18, v19);
      v20 = sub_261F67FE4(v25, v26, &v27);

      *(v13 + 14) = v20;
      *(v13 + 22) = 2080;
      sub_26200EF6C(v8, v6);
      v21 = sub_26203A20C();
      v23 = v22;
      sub_261FCB894(v8, &qword_27FEFA520, &qword_262045940);
      v24 = sub_261F67FE4(v21, v23, &v27);

      *(v13 + 24) = v24;
      _os_log_impl(&dword_261F5B000, v12, v11, "%{public}s/%s: Tunnel datagram stream initial send completed with error %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266724180](v14, -1, -1);
      MEMORY[0x266724180](v13, -1, -1);
    }

    else
    {

      return sub_261FCB894(v8, &qword_27FEFA520, &qword_262045940);
    }
  }

  return result;
}

void *QUICTunnelConnection.deinit()
{

  sub_261F665E4(*(v0 + 88), *(v0 + 96));
  return v0;
}

uint64_t QUICTunnelConnection.__deallocating_deinit()
{
  QUICTunnelConnection.deinit();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_262016C84(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_262016CE4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_262016D58@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unsigned __int8 *getEnumTagSinglePayload for QUICTunnelConnection.State(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_17:
    v6 = *result;
    if (*result >= 2u)
    {
      v7 = (v6 & 0xFE) + 2147483646;
      if ((v7 & 0x7FFFFFFE) != 0)
      {
        return ((v7 & 0x7FFFFFFE | v6 & 1u) - 1);
      }
    }

    return 0;
  }

  v2 = a2 + 65283;
  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  switch(v4)
  {
    case 1:
      v5 = result[2];
      if (!result[2])
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 2:
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 3:
      __break(1u);
      return result;
    case 4:
      v5 = *(result + 2);
      if (!v5)
      {
        goto LABEL_17;
      }

LABEL_15:
      result = ((*result | (v5 << 16)) - 65283);
      break;
    default:
      goto LABEL_17;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for QUICTunnelConnection.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65283;
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    switch(v6)
    {
      case 1:
        *(result + 2) = v7;
        break;
      case 2:
        *(result + 2) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 2) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26201763C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_WORD *sub_262017658(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t objectdestroy_20Tm()
{

  OUTLINED_FUNCTION_46();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2620176E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_262017734()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  return v1(&v3);
}

uint64_t OUTLINED_FUNCTION_29_9()
{

  return sub_26203A17C();
}

uint64_t OUTLINED_FUNCTION_30_8()
{

  return sub_26203A17C();
}

uint64_t OUTLINED_FUNCTION_36_5()
{

  return sub_262039E8C();
}

void OUTLINED_FUNCTION_37_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_39_3(uint64_t a1)
{

  return swift_weakInit();
}

uint64_t AtomicCounter.__allocating_init()()
{
  v0 = swift_allocObject();
  AtomicCounter.init()();
  return v0;
}

id sub_262017880()
{
  result = [*(v0 + 24) lock];
  v2 = *(v0 + 16);
  if (v2 == -1)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v2 + 1;
    [*(v0 + 24) unlock];
    return v2;
  }

  return result;
}

uint64_t AtomicCounter.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  return v0;
}

uint64_t AtomicCounter.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2620179D8()
{
  if (*v0)
  {
    v1 = 0x2D656369766544;
  }

  else
  {
    v1 = 0x2D74736F48;
  }

  v4 = v1;
  v2 = sub_26203ABAC();
  MEMORY[0x266722710](v2);

  return v4;
}

void *ControlChannelMessageEnvelope.init(originatedBy:sequenceNumber:message:)@<X0>(void *__src@<X2>, _BYTE *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  *a4 = *a2;
  *(a4 + 8) = a3;
  return memcpy((a4 + 16), __src, 0x82uLL);
}

uint64_t *sub_262017A84@<X0>(uint64_t *__return_ptr a1@<X8>, id a2@<X0>, uint64_t a3@<X1>)
{
  if (*(a3 + OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue) >= 12)
  {
    *&__src[0] = a2;
    sub_262024328(__src);
    memcpy(a1, __src, 0x7AuLL);
    return a2;
  }

  else
  {
    v14 = a2;
    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
    if (swift_dynamicCast())
    {
      __src[0] = v10;
      __src[1] = v11;
      __src[2] = v12;
      __src[3] = v13;
    }

    else
    {
      memset(__src, 0, 32);
      LOBYTE(__src[2]) = 2;
      v9 = 4;
      v7 = a2;
      v8 = ControlChannelConnectionError.Message.format(code:)(&v9);
      sub_261F65C08(__src);
      LOBYTE(__src[0]) = 4;
      *(__src + 8) = v8;
      *(&__src[1] + 8) = 0u;
      *(&__src[2] + 8) = 0u;
      *(&__src[3] + 1) = a2;
    }

    sub_261FBA8D4(__src);
    return memcpy(a1, __src, 0x7AuLL);
  }
}

uint64_t PeerDeviceInfo.init(name:model:udid:ecid:deviceKVSData:deviceKVSIncludesSensitiveInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8 & 1;

  result = sub_261F6ADEC(0, 0xF000000000000000);
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  *(a9 + 96) = a12;
  *a9 = a5;
  *(a9 + 8) = a6;
  return result;
}

char *PairingData.init(kind:data:startNewSession:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *result;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 16) = a3;
  *(a5 + 24) = 0;
  *(a5 + 1) = v5;
  *(a5 + 8) = a2;
  *a5 = a4;
  return result;
}

uint64_t sub_262017CA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E456D6165727473 && a2 == 0xEF64657470797263;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69616C70 && a2 == 0xE500000000000000)
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

uint64_t sub_262017D6C(char a1)
{
  if (a1)
  {
    return 0x6E69616C70;
  }

  else
  {
    return 0x6E456D6165727473;
  }
}

uint64_t sub_262017DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_262017CA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_262017DDC(uint64_t a1)
{
  v2 = sub_262018214();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262017E18(uint64_t a1)
{
  v2 = sub_262018214();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262017E54(uint64_t a1)
{
  v2 = sub_262018268();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262017E90(uint64_t a1)
{
  v2 = sub_262018268();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262017ECC(uint64_t a1)
{
  v2 = sub_2620182BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262017F08(uint64_t a1)
{
  v2 = sub_2620182BC();

  return MEMORY[0x2821FE720](a1, v2);
}

void ControlChannelMessageEnvelope.Message.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v22 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA540, &qword_262045B30);
  OUTLINED_FUNCTION_0();
  v21 = v4;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_195();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA548, &qword_262045B38);
  OUTLINED_FUNCTION_0();
  v19 = v7;
  v20 = v6;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_16_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA550, &qword_262045B40);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_42_0(v3, v3[3]);
  sub_262018214();
  OUTLINED_FUNCTION_78_2();
  sub_26203AE5C();
  memcpy(v24, v22, 0x82uLL);
  LODWORD(v3) = sub_261FBCC28(v24);
  v10 = sub_261F7E4C8(v24);
  v11 = v10;
  if (v3 == 1)
  {
    LOBYTE(v23[0]) = 1;
    sub_262018268();
    OUTLINED_FUNCTION_6_15();
    sub_26203AA9C();
    memcpy(v23, v11, 0x82uLL);
    sub_261FBD20C();
    v12 = v21;
    sub_26203AB3C();
    v13 = OUTLINED_FUNCTION_14_6();
  }

  else
  {
    v16 = *v10;
    v15 = v10[1];
    sub_2620182BC();
    OUTLINED_FUNCTION_6_15();
    sub_26203AA9C();
    v23[0] = v16;
    v23[1] = v15;
    sub_261FC7838();
    v12 = v20;
    sub_26203AB3C();
    v14 = *(v19 + 8);
    v13 = v1;
  }

  v14(v13, v12);
  v17 = OUTLINED_FUNCTION_100();
  v18(v17);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_262018214()
{
  result = qword_28108B798;
  if (!qword_28108B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B798);
  }

  return result;
}

unint64_t sub_262018268()
{
  result = qword_28108B780;
  if (!qword_28108B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B780);
  }

  return result;
}

unint64_t sub_2620182BC()
{
  result = qword_28108B768;
  if (!qword_28108B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B768);
  }

  return result;
}

void ControlChannelMessageEnvelope.Message.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v4 = v3;
  v35 = v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA558, &qword_262045B48);
  OUTLINED_FUNCTION_0();
  v36 = v6;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_195();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA560, &qword_262045B50);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA568, &unk_262045B58);
  OUTLINED_FUNCTION_0();
  v37 = v10;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_42_0(v4, v4[3]);
  sub_262018214();
  OUTLINED_FUNCTION_85_2();
  sub_26203AE3C();
  if (!v0)
  {
    sub_26203AA7C();
    sub_261F99084();
    v13 = v9;
    if (v14 != v12 >> 1)
    {
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_83_2();
      if (v17 == v18)
      {
        __break(1u);
        return;
      }

      v34 = *(v16 + v15);
      sub_261F99070();
      v20 = v19;
      v22 = v21;
      swift_unknownObjectRelease();
      if (v20 == v22 >> 1)
      {
        if (v34)
        {
          LOBYTE(v40[0]) = 1;
          sub_262018268();
          OUTLINED_FUNCTION_64_2();
          sub_26203A97C();
          sub_261FBCDBC();
          OUTLINED_FUNCTION_45_3();
          sub_26203AA2C();
          swift_unknownObjectRelease();
          (*(v36 + 8))(v2, v38);
          (*(v37 + 8))(v1, v9);
          memcpy(v39, v40, 0x82uLL);
          sub_261FBD0DC(v39);
          memcpy(v41, v39, sizeof(v41));
        }

        else
        {
          LOBYTE(v40[0]) = 0;
          sub_2620182BC();
          OUTLINED_FUNCTION_64_2();
          sub_26203A97C();
          sub_261FCA870();
          OUTLINED_FUNCTION_80_2();
          sub_26203AA2C();
          swift_unknownObjectRelease();
          v30 = OUTLINED_FUNCTION_123();
          v31(v30);
          v32 = OUTLINED_FUNCTION_70_2();
          v33(v32);
          v40[0] = v39[0];
          sub_261FBD1FC(v40);
          memcpy(v41, v40, sizeof(v41));
        }

        memcpy(v35, v41, 0x82uLL);
        goto LABEL_10;
      }

      v13 = v9;
    }

    v23 = sub_26203A81C();
    OUTLINED_FUNCTION_91_1(v23, MEMORY[0x277D841A0]);
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA260, &qword_26203CDB0);
    *v25 = &type metadata for ControlChannelMessageEnvelope.Message;
    v26 = sub_26203A98C();
    OUTLINED_FUNCTION_73_0(v26);
    OUTLINED_FUNCTION_71();
    (*(v27 + 104))(v25);
    swift_willThrow();
    swift_unknownObjectRelease();
    v28 = OUTLINED_FUNCTION_14_6();
    v29(v28, v13);
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_2620188BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616E696769726FLL && a2 == 0xEC00000079426465;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65636E6575716573 && a2 == 0xEE007265626D754ELL;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26203AC0C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2620189D8(char a1)
{
  if (!a1)
  {
    return 0x74616E696769726FLL;
  }

  if (a1 == 1)
  {
    return 0x65636E6575716573;
  }

  return 0x6567617373656DLL;
}

uint64_t sub_262018A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2620188BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_262018AA4(uint64_t a1)
{
  v2 = sub_262023494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262018AE0(uint64_t a1)
{
  v2 = sub_262023494();

  return MEMORY[0x2821FE720](a1, v2);
}

void ControlChannelMessageEnvelope.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA570, &qword_262045B68);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_22_0();
  v7 = *v0;
  memcpy(v12, v0 + 16, 0x82uLL);
  v8 = OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_42_0(v8, v9);
  sub_262023494();
  OUTLINED_FUNCTION_85_2();
  OUTLINED_FUNCTION_79_2();
  sub_26203AE5C();
  v11[0] = v7;
  LOBYTE(v10[0]) = 0;
  sub_2620234E8();
  OUTLINED_FUNCTION_69_3();
  sub_26203AB3C();
  if (v1)
  {
    (*(v5 + 8))(v2, v3);
  }

  else
  {
    v11[0] = 1;
    OUTLINED_FUNCTION_69_3();
    sub_26203AB7C();
    memcpy(v11, v12, sizeof(v11));
    OUTLINED_FUNCTION_62_3();
    sub_261FBD14C(v12, v10);
    sub_26202353C();
    OUTLINED_FUNCTION_69_3();
    sub_26203AB3C();
    memcpy(v10, v11, 0x82uLL);
    sub_261FBD1A8(v10);
    (*(v5 + 8))(v2, v3);
  }

  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_38_0();
}

void ControlChannelMessageEnvelope.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA578, &qword_262045B70);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_22_10();
  sub_262023494();
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_52_3();
  sub_26203AE3C();
  if (!v0)
  {
    sub_262023590();
    OUTLINED_FUNCTION_6_15();
    sub_26203AA2C();
    v6 = v10[0];
    LOBYTE(v10[0]) = 1;
    v7 = sub_26203AA6C();
    OUTLINED_FUNCTION_62_3();
    sub_2620235E4();
    OUTLINED_FUNCTION_6_15();
    sub_26203AA2C();
    v8 = OUTLINED_FUNCTION_100();
    v9(v8);
    *v4 = v6;
    *(v4 + 8) = v7;
    memcpy((v4 + 16), v10, 0x82uLL);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_262018EA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44676E6972696170 && a2 == 0xEB00000000617461;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x52676E6972696170 && a2 == 0xEF64657463656A65;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000002620526D0 == a2;
      if (v7 || (sub_26203AC0C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1735289200 && a2 == 0xE400000000000000;
        if (v8 || (sub_26203AC0C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x800000026204C630 == a2;
          if (v9 || (sub_26203AC0C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000018 && 0x80000002620526F0 == a2;
            if (v10 || (sub_26203AC0C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x726961706E75 && a2 == 0xE600000000000000;
              if (v11 || (sub_26203AC0C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x8000000262052710 == a2;
                if (v12 || (sub_26203AC0C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000012 && 0x8000000262052730 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_26203AC0C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_262019174(char a1)
{
  result = 0x44676E6972696170;
  switch(a1)
  {
    case 1:
      result = 0x52676E6972696170;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 1735289200;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0x726961706E75;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26201929C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4564657070617277 && a2 == 0xEC000000726F7272)
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

uint64_t sub_262019368(uint64_t a1)
{
  v2 = sub_262023830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2620193A4(uint64_t a1)
{
  v2 = sub_262023830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2620193E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_262018EA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_262019410@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26201916C();
  *a1 = result;
  return result;
}

uint64_t sub_262019438(uint64_t a1)
{
  v2 = sub_262023638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262019474(uint64_t a1)
{
  v2 = sub_262023638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2620194B0(uint64_t a1)
{
  v2 = sub_26202368C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2620194EC(uint64_t a1)
{
  v2 = sub_26202368C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262019528(uint64_t a1)
{
  v2 = sub_2620236E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262019564(uint64_t a1)
{
  v2 = sub_2620236E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2620195A0(uint64_t a1)
{
  v2 = sub_2620238D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2620195DC(uint64_t a1)
{
  v2 = sub_2620238D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262019618(uint64_t a1)
{
  v2 = sub_262023980();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262019654(uint64_t a1)
{
  v2 = sub_262023980();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262019690(uint64_t a1)
{
  v2 = sub_26202392C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2620196CC(uint64_t a1)
{
  v2 = sub_26202392C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26201970C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26201929C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_262019738(uint64_t a1)
{
  v2 = sub_2620237DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262019774(uint64_t a1)
{
  v2 = sub_2620237DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2620197B0(uint64_t a1)
{
  v2 = sub_262023884();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2620197EC(uint64_t a1)
{
  v2 = sub_262023884();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262019828(uint64_t a1)
{
  v2 = sub_262023788();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262019864(uint64_t a1)
{
  v2 = sub_262023788();

  return MEMORY[0x2821FE720](a1, v2);
}

void ControlChannelMessage.Event.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  a19 = v23;
  a20 = v24;
  a10 = v21;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA580, &qword_262045B78);
  OUTLINED_FUNCTION_0_31(v27, &v130);
  v118[4] = v28;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_140(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA588, &qword_262045B80);
  OUTLINED_FUNCTION_0_31(v31, &a12);
  v118[24] = v32;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_140(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA590, &qword_262045B88);
  OUTLINED_FUNCTION_0_31(v35, &v127);
  v118[1] = v36;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_140(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA598, &qword_262045B90);
  OUTLINED_FUNCTION_0_31(v39, &a9);
  v118[21] = v40;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_140(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA5A0, &qword_262045B98);
  OUTLINED_FUNCTION_0_31(v43, v133);
  v118[7] = v44;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_140(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA5A8, &qword_262045BA0);
  OUTLINED_FUNCTION_0_31(v47, v134);
  v118[10] = v48;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_140(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA5B0, &qword_262045BA8);
  OUTLINED_FUNCTION_0_31(v51, v136);
  v118[13] = v52;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_140(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA5B8, &qword_262045BB0);
  OUTLINED_FUNCTION_0_31(v55, v137);
  v118[16] = v56;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_140(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA5C0, &qword_262045BB8);
  OUTLINED_FUNCTION_0_31(v59, &v138);
  v118[18] = v60;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v61);
  v63 = v118 - v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA5C8, &qword_262045BC0);
  OUTLINED_FUNCTION_0();
  v131 = v64;
  v132 = v65;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_195();
  v67 = *v20;
  v68 = v20[1];
  v69 = *(v20 + 2) | (*(v20 + 3) << 32);
  v70 = *(v20 + 1);
  v125 = *(v20 + 2);
  v126 = v70;
  v71 = *(v20 + 4);
  v127 = *(v20 + 3);
  v128 = v71;
  v72 = *(v20 + 6);
  v129 = *(v20 + 5);
  v122 = v72;
  v73 = *(v20 + 8);
  v121 = *(v20 + 7);
  v120 = v73;
  v74 = *(v20 + 9);
  v123 = *(v20 + 10);
  v119 = *(v20 + 11);
  v124 = v20[96];
  OUTLINED_FUNCTION_42_0(v26, v26[3]);
  sub_262023638();
  v130 = v22;
  OUTLINED_FUNCTION_77_1();
  sub_26203AE5C();
  v75 = v67 | (v68 << 8) | (v69 << 16);
  switch(v74 >> 62)
  {
    case 1uLL:
      LOBYTE(v133[0]) = 5;
      sub_2620237DC();
      v92 = v118[20];
      v76 = v131;
      OUTLINED_FUNCTION_45_3();
      sub_26203AA9C();
      v133[0] = v75;
      sub_261F9D7B8();
      v77 = v118[22];
      sub_26203AB3C();
      OUTLINED_FUNCTION_20_6();
      v79 = v92;
      goto LABEL_9;
    case 2uLL:
      v80 = v74 & 0x3FFFFFFFFFFFFFFFLL;
      LOBYTE(v133[0]) = 7;
      sub_2620236E0();
      v76 = v131;
      OUTLINED_FUNCTION_32_5();
      sub_26203AA9C();
      LOBYTE(v133[0]) = v67;
      BYTE1(v133[0]) = v68;
      HIWORD(v133[0]) = WORD2(v69);
      *(v133 + 2) = v69;
      OUTLINED_FUNCTION_97_0();
      v135 = v129;
      v136[0] = v122;
      v136[1] = v121;
      v136[2] = v120;
      v137[0] = v80;
      v137[1] = v123;
      v138 = v119;
      v139 = v124;
      sub_262023734();
      sub_26203AB3C();
      OUTLINED_FUNCTION_20_6();
      v81 = OUTLINED_FUNCTION_11_0();
      v82(v81);
      v83 = OUTLINED_FUNCTION_33_3();
      goto LABEL_10;
    case 3uLL:
      v85 = v124;
      if (v124 || v74 != 0xC000000000000000 || v125 | v126 | v127 | v128 | v129 | v75 | v122 | v121 | v120 | v123 | v119)
      {
        if (v124 || ((OUTLINED_FUNCTION_96_1(), v94) ? (v94 = v75 == 1) : (v94 = 0), !v94 || v93))
        {
          if (v85 || ((OUTLINED_FUNCTION_96_1(), v94) ? (v99 = v75 == 2) : (v99 = 0), !v99 || v98))
          {
            if (v85 || ((OUTLINED_FUNCTION_96_1(), v94) ? (v104 = v75 == 3) : (v104 = 0), !v104 || v103))
            {
              if (v85 || ((OUTLINED_FUNCTION_96_1(), v94) ? (v109 = v75 == 4) : (v109 = 0), !v109 || v108))
              {
                LOBYTE(v133[0]) = 8;
                v113 = sub_26202368C();
                OUTLINED_FUNCTION_10_11(&type metadata for ControlChannelMessage.Event.ConnectionRejectedCodingKeys, v133, v114, v115, v113);
                v89 = OUTLINED_FUNCTION_4_15();
                v91 = &v130;
              }

              else
              {
                LOBYTE(v133[0]) = 6;
                v110 = sub_262023788();
                OUTLINED_FUNCTION_10_11(&type metadata for ControlChannelMessage.Event.UnpairCodingKeys, v133, v111, v112, v110);
                v89 = OUTLINED_FUNCTION_4_15();
                v91 = &v127;
              }
            }

            else
            {
              LOBYTE(v133[0]) = 4;
              v105 = sub_262023830();
              OUTLINED_FUNCTION_10_11(&type metadata for ControlChannelMessage.Event.AwaitingUserConsentCodingKeys, v133, v106, v107, v105);
              v89 = OUTLINED_FUNCTION_4_15();
              v91 = v133;
            }
          }

          else
          {
            LOBYTE(v133[0]) = 3;
            v100 = sub_262023884();
            OUTLINED_FUNCTION_10_11(&type metadata for ControlChannelMessage.Event.PingCodingKeys, v133, v101, v102, v100);
            v89 = OUTLINED_FUNCTION_4_15();
            v91 = v134;
          }
        }

        else
        {
          LOBYTE(v133[0]) = 2;
          v95 = sub_2620238D8();
          OUTLINED_FUNCTION_10_11(&type metadata for ControlChannelMessage.Event.PairVerifyFailedCodingKeys, v133, v96, v97, v95);
          v89 = OUTLINED_FUNCTION_4_15();
          v91 = v136;
        }
      }

      else
      {
        LOBYTE(v133[0]) = 1;
        v86 = sub_26202392C();
        OUTLINED_FUNCTION_10_11(&type metadata for ControlChannelMessage.Event.PairingRejectedCodingKeys, v133, v87, v88, v86);
        v89 = OUTLINED_FUNCTION_4_15();
        v91 = v137;
      }

      v90(v89, *(v91 - 32));
      v116 = OUTLINED_FUNCTION_50_3();
      v117(v116, v75);
      goto LABEL_45;
    default:
      LOBYTE(v133[0]) = 0;
      sub_262023980();
      v76 = v131;
      OUTLINED_FUNCTION_45_3();
      sub_26203AA9C();
      LOBYTE(v133[0]) = v67 & 1;
      BYTE1(v133[0]) = v68;
      OUTLINED_FUNCTION_97_0();
      v135 = v129;
      sub_2620239D4();
      v77 = v118[19];
      sub_26203AB3C();
      OUTLINED_FUNCTION_20_6();
      v79 = v63;
LABEL_9:
      v78(v79, v77);
      v83 = OUTLINED_FUNCTION_13_3();
LABEL_10:
      v84(v83, v76);
LABEL_45:
      OUTLINED_FUNCTION_38_0();
      return;
  }
}

void ControlChannelMessage.Event.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  a19 = v22;
  a20 = v23;
  a10 = v20;
  v25 = v24;
  v113 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA600, &qword_262045BC8);
  OUTLINED_FUNCTION_0_31(v27, &a16);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_44();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA608, &qword_262045BD0);
  OUTLINED_FUNCTION_0_31(v29, &a14);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_44();
  v115 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA610, &qword_262045BD8);
  OUTLINED_FUNCTION_0_31(v32, &a11);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_44();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA618, &qword_262045BE0);
  OUTLINED_FUNCTION_0_31(v34, &v125);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_44();
  v114 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA620, &qword_262045BE8);
  OUTLINED_FUNCTION_0_31(v37, &a10);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_44();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA628, &qword_262045BF0);
  OUTLINED_FUNCTION_0_31(v39, v124);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_44();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA630, &qword_262045BF8);
  OUTLINED_FUNCTION_0_31(v41, &v123);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_140(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA638, &qword_262045C00);
  OUTLINED_FUNCTION_0_31(v44, &v121);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_16_0();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA640, &qword_262045C08);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_37();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA648, &qword_262045C10);
  OUTLINED_FUNCTION_0();
  v50 = v49;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_14();
  v116 = v25;
  OUTLINED_FUNCTION_42_0(v25, v25[3]);
  sub_262023638();
  v52 = a10;
  sub_26203AE3C();
  if (!v52)
  {
    a10 = v50;
    sub_26203AA7C();
    sub_261F99084();
    if (v54 != v53 >> 1)
    {
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_83_2();
      if (v57 == v58)
      {
        __break(1u);
        return;
      }

      v112 = *(v56 + v55);
      sub_261F99070();
      v60 = v59;
      v62 = v61;
      swift_unknownObjectRelease();
      if (v60 == v62 >> 1)
      {
        switch(v112)
        {
          case 1:
            LOBYTE(v117) = 1;
            sub_26202392C();
            OUTLINED_FUNCTION_9_15(&type metadata for ControlChannelMessage.Event.PairingRejectedCodingKeys, &v117);
            swift_unknownObjectRelease();
            v83 = OUTLINED_FUNCTION_4_15();
            v84(v83);
            v85 = OUTLINED_FUNCTION_2_24();
            v86(v85);
            *&v105 = OUTLINED_FUNCTION_19_9();
            goto LABEL_19;
          case 2:
            LOBYTE(v117) = 2;
            sub_2620238D8();
            OUTLINED_FUNCTION_9_15(&type metadata for ControlChannelMessage.Event.PairVerifyFailedCodingKeys, &v117);
            swift_unknownObjectRelease();
            v75 = OUTLINED_FUNCTION_4_15();
            v76(v75);
            v77 = OUTLINED_FUNCTION_2_24();
            v78(v77);
            *&v105 = OUTLINED_FUNCTION_19_9();
            v108 = 1;
            goto LABEL_19;
          case 3:
            LOBYTE(v117) = 3;
            sub_262023884();
            OUTLINED_FUNCTION_9_15(&type metadata for ControlChannelMessage.Event.PingCodingKeys, &v117);
            swift_unknownObjectRelease();
            v79 = OUTLINED_FUNCTION_4_15();
            v80(v79);
            v81 = OUTLINED_FUNCTION_2_24();
            v82(v81);
            *&v105 = OUTLINED_FUNCTION_19_9();
            v108 = 2;
            goto LABEL_19;
          case 4:
            LOBYTE(v117) = 4;
            sub_262023830();
            OUTLINED_FUNCTION_9_15(&type metadata for ControlChannelMessage.Event.AwaitingUserConsentCodingKeys, &v117);
            swift_unknownObjectRelease();
            v71 = OUTLINED_FUNCTION_4_15();
            v72(v71);
            v73 = OUTLINED_FUNCTION_2_24();
            v74(v73);
            *&v105 = OUTLINED_FUNCTION_19_9();
            v108 = 3;
            goto LABEL_19;
          case 5:
            LOBYTE(v117) = 5;
            sub_2620237DC();
            OUTLINED_FUNCTION_13_13(&type metadata for ControlChannelMessage.Event.PairingRejectedWithErrorCodingKeys, &v117);
            sub_261F9D760();
            OUTLINED_FUNCTION_45_3();
            OUTLINED_FUNCTION_64_2();
            sub_26203AA2C();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_20_6();
            v109(v114);
            v110 = OUTLINED_FUNCTION_30_6();
            v111(v110);
            v108 = v117;
            v103 = 0x4000000000000000;
            break;
          case 6:
            LOBYTE(v117) = 6;
            sub_262023788();
            OUTLINED_FUNCTION_9_15(&type metadata for ControlChannelMessage.Event.UnpairCodingKeys, &v117);
            swift_unknownObjectRelease();
            v87 = OUTLINED_FUNCTION_4_15();
            v88(v87);
            v89 = OUTLINED_FUNCTION_2_24();
            v90(v89);
            *&v105 = OUTLINED_FUNCTION_19_9();
            v108 = 4;
            goto LABEL_19;
          case 7:
            LOBYTE(v117) = 7;
            sub_2620236E0();
            OUTLINED_FUNCTION_13_13(&type metadata for ControlChannelMessage.Event.DeviceInfoUpdatedCodingKeys, &v117);
            sub_262023A28();
            OUTLINED_FUNCTION_45_3();
            sub_26203AA2C();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_20_6();
            v95(v115);
            v96 = OUTLINED_FUNCTION_30_6();
            v97(v96);
            v108 = v117;
            v105 = v118;
            v106 = v119;
            v107 = v120;
            v101 = v121;
            v102 = v123;
            v104 = v124[0];
            v103 = v122 & 1 | 0x8000000000000000;
            break;
          case 8:
            LOBYTE(v117) = 8;
            sub_26202368C();
            OUTLINED_FUNCTION_9_15(&type metadata for ControlChannelMessage.Event.ConnectionRejectedCodingKeys, &v117);
            swift_unknownObjectRelease();
            v91 = OUTLINED_FUNCTION_4_15();
            v92(v91);
            v93 = OUTLINED_FUNCTION_2_24();
            v94(v93);
            *&v105 = OUTLINED_FUNCTION_19_9();
            v108 = 5;
LABEL_19:
            v106 = 0uLL;
            v107 = 0uLL;
            v101 = 0uLL;
            v102 = 0uLL;
            break;
          default:
            LOBYTE(v117) = 0;
            sub_262023980();
            OUTLINED_FUNCTION_13_13(&type metadata for ControlChannelMessage.Event.PairingDataCodingKeys, &v117);
            sub_262023A7C();
            OUTLINED_FUNCTION_45_3();
            OUTLINED_FUNCTION_64_2();
            sub_26203AA2C();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_20_6();
            v98(v21, v46);
            v99 = OUTLINED_FUNCTION_2_24();
            v100(v99);
            v103 = 0;
            v104 = v117;
            v105 = v118;
            v106 = v119;
            *&v107 = v120;
            v108 = v117 | (BYTE1(v117) << 8);
            break;
        }

        v70 = v116;
        *v113 = v108;
        *(v113 + 8) = v105;
        *(v113 + 24) = v106;
        *(v113 + 40) = v107;
        *(v113 + 56) = v101;
        *(v113 + 72) = v103;
        *(v113 + 80) = v102;
        *(v113 + 96) = v104;
        goto LABEL_10;
      }
    }

    v63 = sub_26203A81C();
    OUTLINED_FUNCTION_91_1(v63, MEMORY[0x277D841A0]);
    v65 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA260, &qword_26203CDB0);
    *v65 = &type metadata for ControlChannelMessage.Event;
    v66 = sub_26203A98C();
    OUTLINED_FUNCTION_73_0(v66);
    OUTLINED_FUNCTION_71();
    (*(v67 + 104))(v65);
    swift_willThrow();
    swift_unknownObjectRelease();
    v68 = OUTLINED_FUNCTION_50_3();
    v69(v68, v48);
  }

  v70 = v116;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_0Tm(v70);
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_26201AE7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B616873646E6168 && a2 == 0xE900000000000065;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F666E4972656570 && a2 == 0xE800000000000000;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x694C657461657263 && a2 == 0xEE0072656E657473;
      if (v7 || (sub_26203AC0C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x61506C65636E6163 && a2 == 0xEF70757465537269;
        if (v8 || (sub_26203AC0C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x8000000262052750 == a2;
          if (v9 || (sub_26203AC0C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6E5565746F6D6572 && a2 == 0xEC0000006B636F6CLL)
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

unint64_t sub_26201B088(char a1)
{
  result = 0x6B616873646E6168;
  switch(a1)
  {
    case 1:
      result = 0x6F666E4972656570;
      break;
    case 2:
      result = 0x694C657461657263;
      break;
    case 3:
      result = 0x61506C65636E6163;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x6E5565746F6D6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26201B164(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000262052770 == a2;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x8000000262052790 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_26203AC0C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26201B280(char a1)
{
  if (!a1)
  {
    return 7955819;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0xD000000000000013;
}

uint64_t sub_26201B2DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 7955819 && a2 == 0xE300000000000000)
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

uint64_t sub_26201B394(uint64_t a1)
{
  v2 = sub_262023BCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26201B3D0(uint64_t a1)
{
  v2 = sub_262023BCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26201B414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26201AE7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26201B43C(uint64_t a1)
{
  v2 = sub_262023AD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26201B478(uint64_t a1)
{
  v2 = sub_262023AD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26201B4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26201B164(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26201B4E4(uint64_t a1)
{
  v2 = sub_262023C20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26201B520(uint64_t a1)
{
  v2 = sub_262023C20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26201B55C(uint64_t a1)
{
  v2 = sub_262023B78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26201B598(uint64_t a1)
{
  v2 = sub_262023B78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26201B5D4(uint64_t a1)
{
  v2 = sub_262023D70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26201B610(uint64_t a1)
{
  v2 = sub_262023D70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26201B64C(uint64_t a1)
{
  v2 = sub_262023D1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26201B688(uint64_t a1)
{
  v2 = sub_262023D1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26201B6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26201B2DC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26201B6F4(uint64_t a1)
{
  v2 = sub_262023B24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26201B730(uint64_t a1)
{
  v2 = sub_262023B24();

  return MEMORY[0x2821FE720](a1, v2);
}

void ControlChannelMessage.Request.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  a22 = v25;
  a23 = v26;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA658, &qword_262045C18);
  OUTLINED_FUNCTION_0();
  v60 = v29;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_44();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA660, &qword_262045C20);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_140(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA668, &qword_262045C28);
  OUTLINED_FUNCTION_0_31(v33, &a19);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_140(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA670, &qword_262045C30);
  OUTLINED_FUNCTION_0();
  v59 = v36;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA678, &qword_262045C38);
  OUTLINED_FUNCTION_0();
  v57 = v39;
  v58 = v38;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_44();
  v56 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA680, &qword_262045C40);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_195();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA688, &qword_262045C48);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_22_0();
  v45 = v23[1];
  *(&v61 + 1) = v23[2];
  v62 = *v23;
  *&v61 = v23[3];
  OUTLINED_FUNCTION_42_0(v28, v28[3]);
  sub_262023AD0();
  OUTLINED_FUNCTION_85_2();
  sub_26203AE5C();
  switch((v45 >> 60) & 3)
  {
    case 1uLL:
      sub_262023C20();
      OUTLINED_FUNCTION_3_21();
      sub_26203AA9C();
      sub_261FC7838();
      sub_26203AB3C();
      if (!v24)
      {
        OUTLINED_FUNCTION_51_3();
        sub_262023C74();
        OUTLINED_FUNCTION_43_4();
        sub_26203AADC();
        OUTLINED_FUNCTION_62_3();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA6B0, &qword_262045C50);
        sub_262023E6C(&qword_27FEFA6B8, sub_262023CC8, MEMORY[0x277D83948]);
        OUTLINED_FUNCTION_43_4();
        sub_26203AADC();
      }

      v46 = OUTLINED_FUNCTION_14_6();
      v48 = v59;
      goto LABEL_11;
    case 2uLL:
      sub_262023B24();
      OUTLINED_FUNCTION_3_21();
      sub_26203AA9C();
      sub_261FC7838();
      sub_26203AB3C();
      v46 = OUTLINED_FUNCTION_13_3();
      v48 = v60;
      goto LABEL_11;
    case 3uLL:
      if (v45 != 0x3000000000000000 || v61 | *(&v61 + 1) | v62)
      {
        v51 = v45 == 0x3000000000000000 && v62 == 1;
        if (v51 && v61 == 0)
        {
          sub_262023BCC();
          OUTLINED_FUNCTION_3_21();
          sub_26203AA9C();
          OUTLINED_FUNCTION_20_6();
          v46 = v52;
          v48 = v53;
        }

        else
        {
          sub_262023B78();
          OUTLINED_FUNCTION_3_21();
          sub_26203AA9C();
          OUTLINED_FUNCTION_20_6();
          v46 = v54;
          v48 = v55;
        }

LABEL_11:
        v47(v46, v48);
      }

      else
      {
        sub_262023D1C();
        OUTLINED_FUNCTION_3_21();
        sub_26203AA9C();
        (*(v57 + 8))(v56, v58);
      }

      v49 = OUTLINED_FUNCTION_35_3();
      v50(v49);
      OUTLINED_FUNCTION_73_3();
      OUTLINED_FUNCTION_38_0();
      return;
    default:
      sub_262023D70();
      OUTLINED_FUNCTION_3_21();
      sub_26203AA9C();
      sub_262023DC4();
      sub_26203AB3C();
      v46 = OUTLINED_FUNCTION_14_6();
      v48 = v42;
      goto LABEL_11;
  }
}

void ControlChannelMessage.Request.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  a22 = v25;
  a23 = v26;
  v28 = v27;
  v89 = v29;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA6D8, &qword_262045C58);
  OUTLINED_FUNCTION_0();
  v88 = v30;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_44();
  v87 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA6E0, &qword_262045C60);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA6E8, &qword_262045C68);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_44();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA6F0, &qword_262045C70);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_44();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA6F8, &qword_262045C78);
  OUTLINED_FUNCTION_0_31(v36, &a21);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA700, &qword_262045C80);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_127();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA708, &qword_262045C88);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_16_0();
  v90 = v28;
  OUTLINED_FUNCTION_42_0(v28, v28[3]);
  sub_262023AD0();
  sub_26203AE3C();
  if (!v23)
  {
    sub_26203AA7C();
    sub_261F99084();
    if (v41 != v40 >> 1)
    {
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_83_2();
      if (v44 == v45)
      {
        __break(1u);
        return;
      }

      v46 = *(v43 + v42);
      v47 = sub_261F99070();
      v49 = v48;
      v51 = v50;
      swift_unknownObjectRelease();
      v52 = v47;
      if (v49 == v51 >> 1)
      {
        v53 = v23;
        v54 = v89;
        switch(v46)
        {
          case 1:
            sub_262023D1C();
            OUTLINED_FUNCTION_17_11();
            sub_26203A97C();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_20_6();
            v70(v24);
            v71 = OUTLINED_FUNCTION_5_12();
            v72(v71);
            OUTLINED_FUNCTION_74_3();
            break;
          case 2:
            LOBYTE(v91) = 2;
            sub_262023C20();
            OUTLINED_FUNCTION_17_11();
            sub_26203A97C();
            sub_261FCA870();
            OUTLINED_FUNCTION_35_6();
            sub_26203AA2C();
            v53 = v91;
            LOBYTE(v95) = 1;
            sub_262023E18();
            OUTLINED_FUNCTION_35_6();
            sub_26203A9CC();
            v52 = a13;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA6B0, &qword_262045C50);
            sub_262023E6C(&qword_28108B338, sub_262023EE4, MEMORY[0x277D83978]);
            sub_26203A9CC();
            swift_unknownObjectRelease();
            v81 = OUTLINED_FUNCTION_99();
            v82(v81, v86);
            v83 = OUTLINED_FUNCTION_177_0();
            v84(v83);
            v78 = v95;
            v54 = v89;
            v77 = v92 | 0x1000000000000000;
            break;
          case 3:
            sub_262023BCC();
            OUTLINED_FUNCTION_17_11();
            sub_26203A97C();
            swift_unknownObjectRelease();
            v66 = OUTLINED_FUNCTION_33_3();
            v67(v66);
            v68 = OUTLINED_FUNCTION_5_12();
            v69(v68);
            OUTLINED_FUNCTION_74_3();
            v53 = 1;
            break;
          case 4:
            sub_262023B78();
            OUTLINED_FUNCTION_17_11();
            sub_26203A97C();
            swift_unknownObjectRelease();
            v62 = OUTLINED_FUNCTION_14_6();
            v63(v62);
            v64 = OUTLINED_FUNCTION_5_12();
            v65(v64);
            OUTLINED_FUNCTION_74_3();
            v53 = 2;
            break;
          case 5:
            LOBYTE(v91) = 5;
            sub_262023B24();
            OUTLINED_FUNCTION_17_11();
            sub_26203A97C();
            sub_261FCA870();
            OUTLINED_FUNCTION_32_5();
            sub_26203AA2C();
            swift_unknownObjectRelease();
            (*(v88 + 8))(v87, v85);
            v79 = OUTLINED_FUNCTION_177_0();
            v80(v79);
            v52 = 0;
            v78 = 0;
            v53 = v91;
            v77 = v92 | 0x2000000000000000;
            break;
          default:
            LOBYTE(v91) = 0;
            sub_262023D70();
            OUTLINED_FUNCTION_17_11();
            sub_26203A97C();
            sub_262023F38();
            OUTLINED_FUNCTION_3_21();
            sub_26203AA2C();
            swift_unknownObjectRelease();
            v73 = OUTLINED_FUNCTION_35_3();
            v74(v73);
            v75 = OUTLINED_FUNCTION_177_0();
            v76(v75);
            v53 = v91;
            v77 = v92;
            v52 = v93;
            v78 = v94;
            break;
        }

        *v54 = v53;
        v54[1] = v77;
        v54[2] = v52;
        v54[3] = v78;
        __swift_destroy_boxed_opaque_existential_0Tm(v90);
        goto LABEL_10;
      }
    }

    v55 = sub_26203A81C();
    OUTLINED_FUNCTION_91_1(v55, MEMORY[0x277D841A0]);
    v57 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA260, &qword_26203CDB0);
    *v57 = &type metadata for ControlChannelMessage.Request;
    v58 = sub_26203A98C();
    OUTLINED_FUNCTION_73_0(v58);
    OUTLINED_FUNCTION_71();
    (*(v59 + 104))(v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = OUTLINED_FUNCTION_5_12();
    v61(v60);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v90);
LABEL_10:
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_26201C908(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B616873646E6168 && a2 == 0xE900000000000065;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F666E4972656570 && a2 == 0xE800000000000000;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x694C657461657263 && a2 == 0xEE0072656E657473;
      if (v7 || (sub_26203AC0C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x8000000262052750 == a2;
        if (v8 || (sub_26203AC0C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E5565746F6D6572 && a2 == 0xEC0000006B636F6CLL;
          if (v9 || (sub_26203AC0C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
            if (v10 || (sub_26203AC0C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
              if (v11 || (sub_26203AC0C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x747845726F727265 && a2 == 0xED00006465646E65)
              {

                return 7;
              }

              else
              {
                v13 = sub_26203AC0C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_26201CBA0(char a1)
{
  result = 0x6B616873646E6168;
  switch(a1)
  {
    case 1:
      result = 0x6F666E4972656570;
      break;
    case 2:
      result = 0x694C657461657263;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x6E5565746F6D6572;
      break;
    case 5:
      result = 0x726F727265;
      break;
    case 6:
      result = 0x73736563637573;
      break;
    case 7:
      result = 0x747845726F727265;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26201CCA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953656688 && a2 == 0xE400000000000000;
  if (v3 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7550656369766564 && a2 == 0xEF79654B63696C62;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61)
    {

      return 2;
    }

    else
    {
      v8 = sub_26203AC0C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26201CDC4(char a1)
{
  if (!a1)
  {
    return 1953656688;
  }

  if (a1 == 1)
  {
    return 0x7550656369766564;
  }

  return 0x4E65636976726573;
}

uint64_t sub_26201CE28(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x79654B74736F68 && a2 == 0xE700000000000000)
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

uint64_t sub_26201CEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26201C908(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26201CF18(uint64_t a1)
{
  v2 = sub_262023F8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26201CF54(uint64_t a1)
{
  v2 = sub_262023F8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26201CF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26201CCA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26201CFC0(uint64_t a1)
{
  v2 = sub_2620241D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26201CFFC(uint64_t a1)
{
  v2 = sub_2620241D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26201D03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26201CE28(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26201D068(uint64_t a1)
{
  v2 = sub_262024184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26201D0A4(uint64_t a1)
{
  v2 = sub_262024184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26201D0E0(uint64_t a1)
{
  v2 = sub_262024088();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26201D11C(uint64_t a1)
{
  v2 = sub_262024088();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26201D158(uint64_t a1)
{
  v2 = sub_262023FE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26201D194(uint64_t a1)
{
  v2 = sub_262023FE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26201D1D0(uint64_t a1)
{
  v2 = sub_262024280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26201D20C(uint64_t a1)
{
  v2 = sub_262024280();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26201D248(uint64_t a1)
{
  v2 = sub_26202422C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26201D284(uint64_t a1)
{
  v2 = sub_26202422C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26201D2C0(uint64_t a1)
{
  v2 = sub_262024130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26201D2FC(uint64_t a1)
{
  v2 = sub_262024130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26201D338(uint64_t a1)
{
  v2 = sub_262024034();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26201D374(uint64_t a1)
{
  v2 = sub_262024034();

  return MEMORY[0x2821FE720](a1, v2);
}

void ControlChannelMessage.Response.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v56 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA710, &qword_262045C90);
  OUTLINED_FUNCTION_0();
  v54 = v4;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA718, &qword_262045C98);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA720, &qword_262045CA0);
  OUTLINED_FUNCTION_0();
  v53 = v7;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA728, &qword_262045CA8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA730, &qword_262045CB0);
  OUTLINED_FUNCTION_0();
  v51 = v10;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA738, &qword_262045CB8);
  OUTLINED_FUNCTION_0();
  v52 = v12;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_44();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA740, &qword_262045CC0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA748, &qword_262045CC8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_16_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA750, &qword_262045CD0);
  OUTLINED_FUNCTION_0();
  v58 = v17;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_26_8(v3);
  sub_262023F8C();
  OUTLINED_FUNCTION_85_2();
  sub_26203AE5C();
  memcpy(v60, v56, 0x7AuLL);
  switch(sub_261FBC6F8(v60))
  {
    case 1u:
      nullsub_1();
      v44 = v43;
      LOBYTE(v59[0]) = 1;
      sub_26202422C();
      v39 = v58;
      OUTLINED_FUNCTION_35_6();
      sub_26203AA9C();
      memcpy(v59, v44, 0x61uLL);
      sub_262023734();
      sub_26203AB3C();
      v40 = OUTLINED_FUNCTION_33_3();
      goto LABEL_11;
    case 2u:
      nullsub_1();
      v55 = *(v30 + 16);
      v57 = *(v30 + 8);
      sub_2620241D8();
      OUTLINED_FUNCTION_17_11();
      sub_26203AA9C();
      LOBYTE(v59[0]) = 0;
      OUTLINED_FUNCTION_69_3();
      sub_26203AB6C();
      if (!v1)
      {
        *&v59[0] = v57;
        *(&v59[0] + 1) = v55;
        OUTLINED_FUNCTION_51_3();
        sub_261FC7838();
        OUTLINED_FUNCTION_69_3();
        sub_26203AADC();
        LOBYTE(v59[0]) = 2;
        sub_26203AAAC();
      }

      v31 = OUTLINED_FUNCTION_13_3();
      v32(v31, v52);
      v33 = OUTLINED_FUNCTION_5_12();
      goto LABEL_15;
    case 3u:
      nullsub_1();
      v37 = *v36;
      v38 = v36[1];
      sub_262024184();
      v39 = v58;
      OUTLINED_FUNCTION_35_6();
      sub_26203AA9C();
      *&v59[0] = v37;
      *(&v59[0] + 1) = v38;
      sub_261FC7838();
      v14 = v51;
      OUTLINED_FUNCTION_69_3();
      sub_26203AB3C();
      v40 = OUTLINED_FUNCTION_13_3();
LABEL_11:
      v41(v40, v14);
      v33 = OUTLINED_FUNCTION_14_6();
      v34 = v39;
      goto LABEL_15;
    case 4u:
      nullsub_1();
      v25 = v24;
      LOBYTE(v59[0]) = 5;
      sub_262024088();
      OUTLINED_FUNCTION_6_15();
      sub_26203AA9C();
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[3];
      v59[2] = v25[2];
      v59[3] = v28;
      v59[0] = v26;
      v59[1] = v27;
      sub_2620240DC();
      v29 = v53;
      sub_26203AB3C();
      goto LABEL_13;
    case 5u:
      nullsub_1();
      v46 = *v45;
      sub_262023FE0();
      OUTLINED_FUNCTION_6_15();
      sub_26203AA9C();
      *&v59[0] = v46;
      sub_261F9D7B8();
      v29 = v54;
      sub_26203AB3C();
LABEL_13:
      v21 = OUTLINED_FUNCTION_14_6();
      v22 = v29;
      goto LABEL_14;
    case 6u:
      LOBYTE(v59[0]) = 4;
      sub_262024130();
      v42 = v58;
      OUTLINED_FUNCTION_45_3();
      sub_26203AA9C();
      goto LABEL_17;
    case 7u:
      LOBYTE(v59[0]) = 6;
      sub_262024034();
      v42 = v58;
      OUTLINED_FUNCTION_45_3();
      sub_26203AA9C();
LABEL_17:
      v47 = OUTLINED_FUNCTION_13_3();
      v48(v47);
      v49 = OUTLINED_FUNCTION_50_3();
      v50(v49, v42);
      break;
    default:
      nullsub_1();
      v20 = v19;
      LOBYTE(v59[0]) = 0;
      sub_262024280();
      OUTLINED_FUNCTION_6_15();
      sub_26203AA9C();
      memcpy(v59, v20, 0x79uLL);
      sub_2620242D4();
      sub_26203AB3C();
      v21 = OUTLINED_FUNCTION_5_12();
LABEL_14:
      v23(v21, v22);
      v33 = OUTLINED_FUNCTION_100();
LABEL_15:
      v35(v33, v34);
      break;
  }

  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_38_0();
}

void ControlChannelMessage.Response.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v158 = v23;
  v27 = v26;
  v153 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA790, &qword_262045CD8);
  OUTLINED_FUNCTION_0();
  v145 = v30;
  v146 = v29;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_44();
  v155 = v32;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA798, &qword_262045CE0);
  OUTLINED_FUNCTION_0();
  v143 = v33;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_44();
  v150 = v35;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA7A0, &qword_262045CE8);
  OUTLINED_FUNCTION_0();
  v142 = v36;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_44();
  v151 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA7A8, &qword_262045CF0);
  OUTLINED_FUNCTION_0();
  v139 = v40;
  v140 = v39;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_44();
  v147 = v42;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA7B0, &qword_262045CF8);
  OUTLINED_FUNCTION_0();
  v138 = v43;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_44();
  v148 = v45;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA7B8, &qword_262045D00);
  OUTLINED_FUNCTION_0();
  v134 = v46;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_44();
  v149 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA7C0, &qword_262045D08);
  OUTLINED_FUNCTION_0();
  v136 = v50;
  v137 = v49;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v51);
  v53 = &v129 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA7C8, &qword_262045D10);
  OUTLINED_FUNCTION_0();
  v135 = v55;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_16_0();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA7D0, &qword_262045D18);
  OUTLINED_FUNCTION_0();
  v156 = v58;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_195();
  v60 = v27[3];
  v157 = v27;
  OUTLINED_FUNCTION_42_0(v27, v60);
  sub_262023F8C();
  OUTLINED_FUNCTION_77_1();
  v61 = v158;
  sub_26203AE3C();
  if (!v61)
  {
    v130 = v54;
    v131 = v25;
    v132 = v53;
    v133 = v24;
    v158 = v57;
    sub_26203AA7C();
    sub_261F99084();
    if (v63 != v62 >> 1)
    {
      OUTLINED_FUNCTION_36_6();
      v129 = 0;
      OUTLINED_FUNCTION_83_2();
      if (v66 == v67)
      {
        __break(1u);
        return;
      }

      v68 = *(v65 + v64);
      sub_261F99070();
      v70 = v69;
      v72 = v71;
      swift_unknownObjectRelease();
      if (v70 == v72 >> 1)
      {
        v73 = v129;
        v75 = v152;
        v74 = v153;
        switch(v68)
        {
          case 1:
            LOBYTE(v160[0]) = 1;
            sub_26202422C();
            OUTLINED_FUNCTION_24_8();
            sub_26203A97C();
            if (v73)
            {
              goto LABEL_22;
            }

            sub_262023A28();
            OUTLINED_FUNCTION_80_2();
            sub_26203AA2C();
            v99 = (v156 + 8);
            swift_unknownObjectRelease();
            v114 = OUTLINED_FUNCTION_123();
            v115(v114);
            (*v99)(v133, v75);
            memcpy(v160, v159, 0x61uLL);
            sub_261FBCE24(v160);
            goto LABEL_28;
          case 2:
            LOBYTE(v160[0]) = 2;
            sub_2620241D8();
            OUTLINED_FUNCTION_44_2();
            sub_26203A97C();
            if (v73)
            {
              v92 = OUTLINED_FUNCTION_5_12();
              v93(v92);
              goto LABEL_23;
            }

            LOBYTE(v160[0]) = 0;
            v102 = sub_26203AA5C();
            LOBYTE(v160[0]) = 1;
            sub_261FCA870();
            OUTLINED_FUNCTION_28_9();
            sub_26203A9CC();
            v155 = *(&v159[0] + 1);
            v120 = *&v159[0];
            OUTLINED_FUNCTION_62_3();
            v121 = sub_26203A99C();
            v129 = 0;
            v123 = v122;
            v154 = v121;
            swift_unknownObjectRelease();
            v124 = OUTLINED_FUNCTION_34_6();
            v125(v124);
            v126 = OUTLINED_FUNCTION_5_12();
            v127(v126);
            LOWORD(v160[0]) = v102;
            *(&v160[0] + 1) = v120;
            *&v160[1] = v155;
            *(&v160[1] + 1) = v154;
            *&v160[2] = v123;
            sub_261FBCEC0(v160);
            OUTLINED_FUNCTION_87_1();
            v128 = v157;
            goto LABEL_27;
          case 3:
            LOBYTE(v160[0]) = 3;
            sub_262024184();
            OUTLINED_FUNCTION_24_8();
            OUTLINED_FUNCTION_43_4();
            sub_26203A97C();
            sub_261FCA870();
            OUTLINED_FUNCTION_44_2();
            sub_26203AA2C();
            OUTLINED_FUNCTION_57_3();
            swift_unknownObjectRelease();
            v94 = OUTLINED_FUNCTION_75_3();
            v95(v94);
            v96 = OUTLINED_FUNCTION_38_4();
            v97(v96, v75);
            v160[0] = v159[0];
            sub_261FBCFB8(v160);
            goto LABEL_28;
          case 4:
            LOBYTE(v160[0]) = 4;
            sub_262024130();
            v75 = v158;
            OUTLINED_FUNCTION_28_9();
            sub_26203A97C();
            if (v73)
            {
              goto LABEL_22;
            }

            swift_unknownObjectRelease();
            v88 = OUTLINED_FUNCTION_14_6();
            v89(v88);
            v90 = OUTLINED_FUNCTION_34_6();
            v91(v90);
            sub_261FBCFC4(v161);
            goto LABEL_29;
          case 5:
            LOBYTE(v160[0]) = 5;
            sub_262024088();
            OUTLINED_FUNCTION_24_8();
            OUTLINED_FUNCTION_43_4();
            sub_26203A97C();
            sub_262024334();
            OUTLINED_FUNCTION_44_2();
            sub_26203AA2C();
            OUTLINED_FUNCTION_57_3();
            swift_unknownObjectRelease();
            v116 = OUTLINED_FUNCTION_75_3();
            v117(v116);
            v118 = OUTLINED_FUNCTION_38_4();
            v119(v118, v75);
            v160[0] = v159[0];
            v160[1] = v159[1];
            v160[2] = v159[2];
            v160[3] = v159[3];
            sub_261FBA8D4(v160);
            goto LABEL_28;
          case 6:
            LOBYTE(v160[0]) = 6;
            sub_262024034();
            OUTLINED_FUNCTION_24_8();
            sub_26203A97C();
            if (v73)
            {
LABEL_22:
              v100 = OUTLINED_FUNCTION_50_3();
              v101(v100, v75);
              goto LABEL_23;
            }

            swift_unknownObjectRelease();
            v106 = OUTLINED_FUNCTION_123();
            v107(v106);
            v108 = OUTLINED_FUNCTION_34_6();
            v109(v108);
            sub_261FBCF84(v161);
LABEL_29:
            v128 = v157;
            goto LABEL_30;
          case 7:
            LOBYTE(v160[0]) = 7;
            sub_262023FE0();
            v98 = v158;
            OUTLINED_FUNCTION_44_2();
            OUTLINED_FUNCTION_43_4();
            sub_26203A97C();
            sub_261F9D760();
            OUTLINED_FUNCTION_28_9();
            sub_26203AA2C();
            OUTLINED_FUNCTION_57_3();
            swift_unknownObjectRelease();
            v110 = OUTLINED_FUNCTION_56_3();
            v111(v110);
            v112 = OUTLINED_FUNCTION_38_4();
            v113(v112, v98);
            *&v160[0] = *&v159[0];
            sub_262024328(v160);
LABEL_28:
            OUTLINED_FUNCTION_87_1();
            goto LABEL_29;
          default:
            LOBYTE(v160[0]) = 0;
            sub_262024280();
            v76 = v131;
            v77 = v158;
            OUTLINED_FUNCTION_80_2();
            v78 = v133;
            sub_26203A97C();
            if (v73)
            {
              (*(v156 + 8))(v78, v77);
LABEL_23:
              swift_unknownObjectRelease();
              goto LABEL_10;
            }

            sub_262024388();
            v103 = v130;
            OUTLINED_FUNCTION_28_9();
            sub_26203AA2C();
            v104 = (v135 + 8);
            v105 = (v156 + 8);
            swift_unknownObjectRelease();
            (*v104)(v76, v103);
            (*v105)(v78, v158);
            memcpy(v160, v159, 0x79uLL);
            sub_261FBCECC(v160);
            OUTLINED_FUNCTION_87_1();
            v128 = v157;
LABEL_27:
            v74 = v153;
LABEL_30:
            memcpy(v74, v161, 0x7AuLL);
            v87 = v128;
            break;
        }

        goto LABEL_11;
      }
    }

    v79 = sub_26203A81C();
    OUTLINED_FUNCTION_91_1(v79, MEMORY[0x277D841A0]);
    v81 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA260, &qword_26203CDB0);
    *v81 = &type metadata for ControlChannelMessage.Response;
    v82 = v158;
    v83 = sub_26203A98C();
    OUTLINED_FUNCTION_73_0(v83);
    OUTLINED_FUNCTION_71();
    (*(v84 + 104))(v81);
    swift_willThrow();
    swift_unknownObjectRelease();
    v85 = OUTLINED_FUNCTION_50_3();
    v86(v85, v82);
  }

LABEL_10:
  v87 = v157;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_0Tm(v87);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_26201E9D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E657665 && a2 == 0xE500000000000000;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26203AC0C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26201EAE0(char a1)
{
  if (!a1)
  {
    return 0x746E657665;
  }

  if (a1 == 1)
  {
    return 0x74736575716572;
  }

  return 0x65736E6F70736572;
}

uint64_t sub_26201EB34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000002620527B0 == a2;
  if (v3 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
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

uint64_t sub_26201EBFC(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_26201EC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26201E9D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26201EC8C(uint64_t a1)
{
  v2 = sub_2620243DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26201ECC8(uint64_t a1)
{
  v2 = sub_2620243DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26201ED04(uint64_t a1)
{
  v2 = sub_262024580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26201ED40(uint64_t a1)
{
  v2 = sub_262024580();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26201ED7C(uint64_t a1)
{
  v2 = sub_2620244D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26201EDB8(uint64_t a1)
{
  v2 = sub_2620244D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26201EDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26201EB34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26201EE24(uint64_t a1)
{
  v2 = sub_262024430();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26201EE60(uint64_t a1)
{
  v2 = sub_262024430();

  return MEMORY[0x2821FE720](a1, v2);
}

void ControlChannelMessage.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v50 = v23;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA7E8, &qword_262045D20);
  OUTLINED_FUNCTION_0();
  v47 = v28;
  v48 = v27;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_44();
  v46 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA7F0, &qword_262045D28);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_16_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA7F8, &qword_262045D30);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_127();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA800, &qword_262045D38);
  OUTLINED_FUNCTION_0();
  v52 = v33;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42_0(v26, v26[3]);
  sub_2620243DC();
  sub_26203AE5C();
  memcpy(v54, v50, 0x82uLL);
  v35 = sub_261FBCC34(v54);
  v36 = sub_261F6A868(v54);
  if (v35)
  {
    if (v35 == 1)
    {
      LOBYTE(v53[0]) = 1;
      sub_2620244D8();
      v49 = v36[1];
      v51 = *v36;
      v37 = v52;
      OUTLINED_FUNCTION_32_5();
      sub_26203AA9C();
      v53[0] = v51;
      v53[1] = v49;
      sub_26202452C();
      sub_26203AB3C();
      v38 = OUTLINED_FUNCTION_5_12();
    }

    else
    {
      sub_262024430();
      v37 = v52;
      OUTLINED_FUNCTION_32_5();
      sub_26203AA9C();
      LOBYTE(v53[0]) = 0;
      sub_26203AB7C();
      if (!v24)
      {
        memcpy(v53, v36 + 8, 0x7AuLL);
        OUTLINED_FUNCTION_51_3();
        sub_262024484();
        sub_26203AB3C();
      }

      v40 = *(v47 + 8);
      v38 = v46;
      v39 = v48;
    }

    v40(v38, v39);
    v43 = OUTLINED_FUNCTION_33_3();
    v45 = v37;
  }

  else
  {
    LOBYTE(v53[0]) = 0;
    sub_262024580();
    OUTLINED_FUNCTION_32_5();
    sub_26203AA9C();
    memcpy(v53, v36, 0x61uLL);
    sub_2620245D4();
    sub_26203AB3C();
    v41 = OUTLINED_FUNCTION_100();
    v42(v41);
    v43 = OUTLINED_FUNCTION_33_3();
    v45 = v52;
  }

  v44(v43, v45);
  OUTLINED_FUNCTION_73_3();
  OUTLINED_FUNCTION_38_0();
}

void ControlChannelMessage.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v4 = v3;
  v48 = v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA810, &qword_262045D40);
  OUTLINED_FUNCTION_0();
  v47 = v6;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_44();
  v49 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA818, &qword_262045D48);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA820, &qword_262045D50);
  OUTLINED_FUNCTION_0();
  v45 = v11;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_16_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA828, &qword_262045D58);
  OUTLINED_FUNCTION_0();
  v50 = v14;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_195();
  v16 = OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_42_0(v16, v17);
  sub_2620243DC();
  OUTLINED_FUNCTION_77_1();
  sub_26203AE3C();
  if (!v0)
  {
    v52 = v1;
    sub_26203AA7C();
    sub_261F99084();
    if (v19 != v18 >> 1)
    {
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_83_2();
      if (v22 == v23)
      {
        __break(1u);
        return;
      }

      v24 = v13;
      v25 = *(v21 + v20);
      sub_261F99070();
      v27 = v26;
      v29 = v28;
      swift_unknownObjectRelease();
      if (v27 == v29 >> 1)
      {
        if (v25)
        {
          if (v25 != 1)
          {
            sub_262024430();
            OUTLINED_FUNCTION_3_21();
            sub_26203A97C();
            v37 = v4;
            v38 = v48;
            LOBYTE(v53[0]) = 0;
            v46 = sub_26203AA6C();
            OUTLINED_FUNCTION_51_3();
            sub_262024628();
            OUTLINED_FUNCTION_45_3();
            sub_26203AA2C();
            swift_unknownObjectRelease();
            (*(v47 + 8))(v49, v51);
            (*(v50 + 8))(v52, v24);
            memcpy(v53 + 8, v54, 0x7AuLL);
            *&v53[0] = v46;
            sub_261FBCE10(v53);
            OUTLINED_FUNCTION_88_2();
LABEL_15:
            memcpy(v38, v55, 0x82uLL);
            goto LABEL_12;
          }

          LOBYTE(v53[0]) = 1;
          sub_2620244D8();
          OUTLINED_FUNCTION_3_21();
          sub_26203A97C();
          sub_26202467C();
          sub_26203AA2C();
          swift_unknownObjectRelease();
          v39 = OUTLINED_FUNCTION_11_0();
          v40(v39);
          v41 = OUTLINED_FUNCTION_35_3();
          v42(v41);
          v53[0] = v54[0];
          v53[1] = v54[1];
          sub_261FBD320(v53);
          OUTLINED_FUNCTION_88_2();
          v37 = v4;
        }

        else
        {
          LOBYTE(v53[0]) = 0;
          sub_262024580();
          OUTLINED_FUNCTION_80_2();
          sub_26203A97C();
          sub_2620246D0();
          OUTLINED_FUNCTION_32_5();
          sub_26203AA2C();
          v37 = v4;
          swift_unknownObjectRelease();
          (*(v45 + 8))(v2, v10);
          v43 = OUTLINED_FUNCTION_126();
          v44(v43);
          memcpy(v53, v54, 0x61uLL);
          sub_261FBA7C0(v53);
          OUTLINED_FUNCTION_88_2();
        }

        v38 = v48;
        goto LABEL_15;
      }
    }

    v30 = sub_26203A81C();
    OUTLINED_FUNCTION_91_1(v30, MEMORY[0x277D841A0]);
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA260, &qword_26203CDB0);
    *v32 = &type metadata for ControlChannelMessage;
    v33 = sub_26203A98C();
    OUTLINED_FUNCTION_73_0(v33);
    OUTLINED_FUNCTION_71();
    (*(v34 + 104))(v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    v35 = OUTLINED_FUNCTION_126();
    v36(v35);
  }

  v37 = v4;
LABEL_12:
  __swift_destroy_boxed_opaque_existential_0Tm(v37);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_26201FAA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000002620527D0 == a2;
  if (v3 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6974704F74736F68 && a2 == 0xEB00000000736E6FLL;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x800000026204E6A0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_26203AC0C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26201FBC0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0x6974704F74736F68;
  }

  return 0xD000000000000015;
}

uint64_t sub_26201FC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26201FAA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26201FC5C(uint64_t a1)
{
  v2 = sub_262024724();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26201FC98(uint64_t a1)
{
  v2 = sub_262024724();

  return MEMORY[0x2821FE720](a1, v2);
}

void HandshakeRequest.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA838, &qword_262045D60);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_37();
  v9 = *v0;
  OUTLINED_FUNCTION_26_8(v4);
  sub_262024724();
  v10 = v9;
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_52_3();
  sub_26203AE5C();
  type metadata accessor for ControlChannelConnectionWireProtocolVersion();
  OUTLINED_FUNCTION_61_3(&unk_28108B5B8);
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_30_2();
  sub_26203AB3C();

  if (!v1)
  {
    OUTLINED_FUNCTION_51_3();
    sub_262024778();
    OUTLINED_FUNCTION_60_3();
    OUTLINED_FUNCTION_30_2();
    sub_26203AB3C();
    OUTLINED_FUNCTION_62_3();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA848, &qword_262045D68);
    sub_261F67F70(&qword_27FEFA850, &qword_27FEFA848, &qword_262045D68, &protocol conformance descriptor for Identifier<A>);
    OUTLINED_FUNCTION_60_3();
    OUTLINED_FUNCTION_30_2();
    sub_26203AADC();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_38_0();
}

void HandshakeRequest.init(from:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_98_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA858, &qword_262045D70);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_22_10();
  sub_262024724();
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_52_3();
  sub_26203AE3C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
  }

  else
  {
    type metadata accessor for ControlChannelConnectionWireProtocolVersion();
    OUTLINED_FUNCTION_58_2(&qword_28108B5B0);
    OUTLINED_FUNCTION_65_2();
    OUTLINED_FUNCTION_46_2();
    sub_26203AA2C();
    OUTLINED_FUNCTION_51_3();
    sub_262024810();
    OUTLINED_FUNCTION_65_2();
    OUTLINED_FUNCTION_3_21();
    sub_26203AA2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA848, &qword_262045D68);
    OUTLINED_FUNCTION_62_3();
    sub_261F67F70(&unk_28108CB90, &qword_27FEFA848, &qword_262045D68, &protocol conformance descriptor for Identifier<A>);
    OUTLINED_FUNCTION_65_2();
    OUTLINED_FUNCTION_46_2();
    sub_26203A9CC();
    v5 = OUTLINED_FUNCTION_35_3();
    v6(v5);

    *v3 = v8;
    *(v3 + 8) = v8;
    *(v3 + 16) = v8;
    *(v3 + 24) = v9;

    v7 = v8;
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
  }

  OUTLINED_FUNCTION_73_3();
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_26202014C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000002620527D0 == a2;
  if (v3 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000023 && 0x80000002620527F0 == a2;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x704F656369766564 && a2 == 0xED0000736E6F6974;
      if (v7 || (sub_26203AC0C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6976654472656570 && a2 == 0xEE006F666E496563)
      {

        return 3;
      }

      else
      {
        v9 = sub_26203AC0C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_2620202C0(char a1)
{
  result = 0x704F656369766564;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000023;
      break;
    case 2:
      return result;
    case 3:
      result = 0x6976654472656570;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_262020370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26202014C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_262020398@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261F9E178();
  *a1 = result;
  return result;
}

uint64_t sub_2620203C0(uint64_t a1)
{
  v2 = sub_262024864();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2620203FC(uint64_t a1)
{
  v2 = sub_262024864();

  return MEMORY[0x2821FE720](a1, v2);
}

void HandshakeResponse.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA860, &qword_262045D78);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_37();
  v6 = *v0;
  memcpy(v14, v0 + 3, 0x61uLL);
  OUTLINED_FUNCTION_26_8(v3);
  sub_262024864();
  v7 = v6;
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_52_3();
  sub_26203AE5C();
  v13[0] = v7;
  LOBYTE(v12[0]) = 0;
  type metadata accessor for ControlChannelConnectionWireProtocolVersion();
  OUTLINED_FUNCTION_61_3(&unk_28108B5B8);
  OUTLINED_FUNCTION_52_3();
  sub_26203AB3C();

  if (v1)
  {
    v8 = OUTLINED_FUNCTION_99();
    v9(v8, v4);
  }

  else
  {
    OUTLINED_FUNCTION_52_3();
    sub_26203AB3C();
    LOBYTE(v12[0]) = 2;
    sub_2620248B8();
    sub_26203AB3C();
    memcpy(v13, v14, 0x61uLL);
    sub_26202490C(v14, v12);
    sub_262023734();
    sub_26203AADC();
    memcpy(v12, v13, 0x61uLL);
    sub_26202497C(v12);
    v10 = OUTLINED_FUNCTION_70_2();
    v11(v10);
  }

  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_38_0();
}

void HandshakeResponse.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA868, &qword_262045D88);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_42_0(v2, v2[3]);
  sub_262024864();
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_79_2();
  sub_26203AE3C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    LOBYTE(v40) = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    sub_26202497C(&v34);
  }

  else
  {
    v30 = v4;
    type metadata accessor for ControlChannelConnectionWireProtocolVersion();
    OUTLINED_FUNCTION_58_2(&qword_28108B5B0);
    OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_64_2();
    sub_26203AA2C();
    v6 = v34;
    OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_64_2();
    sub_26203AA2C();
    v7 = v34;
    LOBYTE(v33[0]) = 2;
    sub_2620249E4();
    OUTLINED_FUNCTION_35_6();
    sub_26203AA2C();
    v28 = BYTE1(v34);
    v29 = v34;
    v26 = BYTE3(v34);
    v27 = BYTE2(v34);
    v25 = BYTE4(v34);
    v44 = 3;
    sub_262023A28();
    OUTLINED_FUNCTION_35_6();
    OUTLINED_FUNCTION_64_2();
    sub_26203A9CC();
    v8 = OUTLINED_FUNCTION_23_6();
    v9(v8);
    v10 = v45;
    v21 = v45;
    v23 = v46;
    v11 = v48;
    v60 = v47;
    v31 = v50;
    v12 = v51;
    v19 = v51;
    v20 = v48;
    v16 = v52;
    v17 = v49;
    v13 = v54;
    v24 = v53;
    v18 = v54;
    v14 = v56;
    v15 = v55;
    v22 = v57;
    memset(v32, 0, 97);
    sub_26202497C(v32);
    v33[0] = v6;
    v33[1] = v7;
    LOBYTE(v33[2]) = v29;
    BYTE1(v33[2]) = v28;
    BYTE2(v33[2]) = v27;
    BYTE3(v33[2]) = v26;
    BYTE4(v33[2]) = v25;
    *(&v33[2] + 5) = v58;
    HIBYTE(v33[2]) = v59;
    v33[3] = v10;
    v33[4] = v23;
    v33[5] = v60;
    v33[6] = v11;
    v33[7] = v17;
    v33[8] = v31;
    v33[9] = v12;
    v33[10] = v16;
    v33[11] = v24;
    v33[12] = v13;
    v33[13] = v15;
    v33[14] = v14;
    LOBYTE(v33[15]) = v22;
    memcpy(v30, v33, 0x79uLL);
    sub_261FBCED4(v33, &v34);
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    *&v34 = v6;
    *(&v34 + 1) = v7;
    LOBYTE(v35) = v29;
    BYTE1(v35) = v28;
    BYTE2(v35) = v27;
    BYTE3(v35) = v26;
    BYTE4(v35) = v25;
    *(&v35 + 5) = v58;
    BYTE7(v35) = v59;
    *(&v35 + 1) = v21;
    *&v36 = v23;
    *(&v36 + 1) = v60;
    *&v37 = v20;
    *(&v37 + 1) = v17;
    *&v38 = v31;
    *(&v38 + 1) = v19;
    *&v39 = v16;
    *(&v39 + 1) = v24;
    v40 = v18;
    v41 = v15;
    v42 = v14;
    v43 = v22;
    sub_261FBCF30(&v34);
  }

  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_38_0();
}

uint64_t PeerDeviceInfo.identifier.setter()
{
  OUTLINED_FUNCTION_93();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t PeerDeviceInfo.name.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t PeerDeviceInfo.model.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t PeerDeviceInfo.udid.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t PeerDeviceInfo.ecid.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t PeerDeviceInfo.deviceKVSData.getter()
{
  v0 = OUTLINED_FUNCTION_47();
  sub_261F81D84(v0, v1);
  return OUTLINED_FUNCTION_47();
}

uint64_t PeerDeviceInfo.deviceKVSData.setter()
{
  OUTLINED_FUNCTION_93();
  result = sub_261F6ADEC(*(v1 + 80), *(v1 + 88));
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t sub_262020DF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
      if (v7 || (sub_26203AC0C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1684628597 && a2 == 0xE400000000000000;
        if (v8 || (sub_26203AC0C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1684628325 && a2 == 0xE400000000000000;
          if (v9 || (sub_26203AC0C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x564B656369766564 && a2 == 0xED00006174614453;
            if (v10 || (sub_26203AC0C() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD00000000000001ELL && 0x8000000262052820 == a2)
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