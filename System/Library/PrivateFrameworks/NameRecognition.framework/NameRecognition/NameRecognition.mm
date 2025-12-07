void *sub_25AE3E25C()
{
  v1 = v0;
  v0[3] = 0xD00000000000003CLL;
  v0[4] = 0x800000025AEA7BE0;
  v0[5] = 0xD000000000000034;
  v0[6] = 0x800000025AEA7C20;
  v2 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v3 = sub_25AEA2178();
  v4 = [v2 initWithBundleIdentifier_];

  v1[2] = v4;
  v37 = MEMORY[0x277D84F90];
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v5 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v6 = qword_27FA22788;
    v7 = qword_27FA22788;
  }

  else
  {
    v7 = [objc_opt_self() mainBundle];
    v6 = 0;
  }

  v36 = v6;
  sub_25AEA0CC8();

  sub_25AEA2278();
  v8 = sub_25AEA2178();
  v9 = objc_opt_self();
  v10 = [v9 iconWithSystemImageName_];

  v11 = v10;
  v12 = sub_25AEA2178();
  v13 = sub_25AEA2178();

  v14 = objc_opt_self();
  v15 = [v14 actionWithIdentifier:v12 title:v13 options:0 icon:v11];

  v16 = v15;
  MEMORY[0x25F859DF0]();
  if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_25AEA2318();
  }

  sub_25AEA2338();
  if (AXIsInternalInstall())
  {
    v17 = sub_25AEA2178();
    v18 = [v9 iconWithSystemImageName_];

    v19 = v36;
    if (!v5)
    {
      v19 = [objc_opt_self() mainBundle];
    }

    v20 = v36;
    sub_25AEA0CC8();

    sub_25AEA2278();
    v21 = v18;
    v22 = sub_25AEA2178();
    v23 = sub_25AEA2178();

    v24 = [v14 actionWithIdentifier:v22 title:v23 options:0 icon:{v21, 0xE000000000000000}];

    v25 = v24;
    MEMORY[0x25F859DF0]();
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25AEA2318();
    }

    sub_25AEA2338();
  }

  v26 = sub_25AEA2178();
  sub_25AE4167C(0, &qword_27FA1D2A0, 0x277CE1F80);
  v27 = sub_25AEA22E8();

  v28 = sub_25AEA22E8();
  v29 = [objc_opt_self() categoryWithIdentifier:v26 actions:v27 intentIdentifiers:v28 options:0];

  v30 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2A8, &qword_25AEA3E90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25AEA3530;
  *(inited + 32) = v29;
  v32 = v30;
  v33 = v29;
  sub_25AE9EDA0(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_25AE4167C(0, &qword_27FA1D2B0, 0x277CE1F98);
  sub_25AE416C4();
  v34 = sub_25AEA23E8();

  [v32 setNotificationCategories_];

  return v1;
}

void sub_25AE3E874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a4;
  v49 = a5;
  v47 = a3;
  v7 = sub_25AEA0E48();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v50 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() soundWithAlertType_];
  v55 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2C0, &qword_25AEA35C0);
  v10 = swift_allocObject();
  v45 = xmmword_25AEA3540;
  *(v10 + 16) = xmmword_25AEA3540;
  *(v10 + 56) = MEMORY[0x277D837D0];
  v11 = sub_25AE4172C();
  *(v10 + 64) = v11;
  v46 = a1;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  v12 = qword_27FA1D250;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_27FA22788;
  v53 = v9;
  if (qword_27FA22788)
  {
    v14 = qword_27FA22788;
    v15 = qword_27FA22788;
  }

  else
  {
    v15 = [objc_opt_self() mainBundle];
    v14 = 0;
  }

  v16 = v14;
  sub_25AEA0CC8();

  sub_25AEA21B8();

  v17 = sub_25AEA2178();

  [v55 setTitle_];

  v18 = swift_allocObject();
  *(v18 + 16) = v45;
  v19 = MEMORY[0x277D837D0];
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = v11;
  v20 = v46;
  *(v18 + 32) = v46;
  *(v18 + 40) = a2;
  if (v13)
  {

    v21 = v16;
  }

  else
  {
    v22 = objc_opt_self();

    v21 = [v22 mainBundle];
  }

  v23 = v53;
  v24 = v16;
  sub_25AEA0CC8();

  sub_25AEA21B8();

  v25 = sub_25AEA2178();

  v26 = v55;
  [v55 setBody_];

  [v26 setSound_];
  [v26 setInterruptionLevel_];
  v27 = v54;
  v28 = sub_25AEA2178();
  [v26 setCategoryIdentifier_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2D0, &qword_25AEA35C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25AEA3550;
  v61 = 0xD000000000000011;
  v62 = 0x800000025AEA7DB0;
  sub_25AEA2608();
  *(inited + 96) = v19;
  *(inited + 72) = v20;
  *(inited + 80) = a2;
  v61 = 0xD000000000000017;
  v62 = 0x800000025AEA7DD0;

  sub_25AEA2608();
  *(inited + 168) = v19;
  v30 = v48;
  *(inited + 144) = v47;
  *(inited + 152) = v30;

  sub_25AE6FDCC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E170, &unk_25AEA35D0);
  swift_arrayDestroy();
  v31 = sub_25AEA2128();

  [v26 setUserInfo_];

  v32 = AXIsInternalInstall();
  v33 = v49;
  if (v32 && v49)
  {
    *&v59 = 0x7479426F69647561;
    *(&v59 + 1) = 0xEA00000000007365;

    sub_25AEA2608();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2D8, &unk_25AEA7830);
    v60 = v34;
    *&v59 = v33;
    v35 = [v55 userInfo];
    v36 = sub_25AEA2138();

    v58 = v36;
    if (v34)
    {
      sub_25AE417EC(&v59, v57);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v36;
      sub_25AE40948(v57, &v61, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      sub_25AE41938(&v59, &qword_27FA1D2E0, &qword_25AEA35E0);
      sub_25AE3F988(v57, &v61);
      sub_25AE41938(v57, &qword_27FA1D2E0, &qword_25AEA35E0);
    }

    sub_25AE41798(&v61);
    v38 = sub_25AEA2128();

    [v55 setUserInfo_];
  }

  v39 = v50;
  sub_25AEA0E38();
  sub_25AEA0E08();
  (*(v51 + 8))(v39, v52);
  v40 = v55;
  v41 = sub_25AEA2178();

  v42 = [objc_opt_self() requestWithIdentifier:v41 content:v40 trigger:0 destinations:15];

  v43 = *(v27 + 16);
  v65 = sub_25AE3F054;
  v66 = 0;
  v61 = MEMORY[0x277D85DD0];
  v62 = 1107296256;
  v63 = sub_25AE3F18C;
  v64 = &block_descriptor;
  v44 = _Block_copy(&v61);
  [v43 addNotificationRequest:v42 withCompletionHandler:v44];
  _Block_release(v44);
}

void sub_25AE3F054(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    NRLogError(_:additionalMessage:)(a1, 0xD00000000000001BLL, 0x800000025AEA7E10);
    v3 = a1;
  }

  else
  {
    if (qword_27FA1D248 != -1)
    {
      swift_once();
    }

    v4 = sub_25AEA12C8();
    __swift_project_value_buffer(v4, qword_27FA1DF50);
    oslog = sub_25AEA12A8();
    v5 = sub_25AEA24A8();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_25AE3C000, oslog, v5, "Notification successfully delivered", v6, 2u);
      MEMORY[0x25F85AB80](v6, -1, -1);
    }

    v3 = oslog;
  }
}

void sub_25AE3F18C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_25AE3F1F8(char a1, void *a2)
{
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v4 = sub_25AEA12C8();
  __swift_project_value_buffer(v4, qword_27FA1DF50);
  v5 = a2;
  oslog = sub_25AEA12A8();
  v6 = sub_25AEA24A8();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 136315650;
    if (a2)
    {
      v10 = 546086370;
    }

    else
    {
      v10 = 0;
    }

    if (a2)
    {
      v11 = 0xA400000000000000;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    v12 = sub_25AE65D2C(v10, v11, &v17);

    *(v7 + 4) = v12;
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    *(v7 + 18) = 2112;
    if (a2)
    {
      v13 = a2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      v15 = v14;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *(v7 + 20) = v14;
    *v8 = v15;
    _os_log_impl(&dword_25AE3C000, oslog, v6, "%sRequested authorization to show notification for Name Recognition: %{BOOL}d - Error: %@", v7, 0x1Cu);
    sub_25AE41938(v8, &qword_27FA1D2F0, &unk_25AEA35F0);
    MEMORY[0x25F85AB80](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x25F85AB80](v9, -1, -1);
    MEMORY[0x25F85AB80](v7, -1, -1);
  }
}

uint64_t sub_25AE3F3F8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25AE3F478(uint64_t a1, id *a2)
{
  result = sub_25AEA2188();
  *a2 = 0;
  return result;
}

uint64_t sub_25AE3F4F0(uint64_t a1, id *a2)
{
  v3 = sub_25AEA2198();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25AE3F570@<X0>(uint64_t *a1@<X8>)
{
  sub_25AEA21A8();
  v2 = sub_25AEA2178();

  *a1 = v2;
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

uint64_t sub_25AE3F610@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25AEA21A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25AE3F63C(uint64_t a1)
{
  v2 = sub_25AE41998(&qword_27FA1D350, type metadata accessor for FileAttributeKey, &unk_25AEA3900);
  v3 = sub_25AE41998(&qword_27FA1D358, type metadata accessor for FileAttributeKey, &unk_25AEA36FC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25AE3F6F8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_25AEA2178();

  *a2 = v3;
  return result;
}

uint64_t sub_25AE3F740(uint64_t a1)
{
  v2 = sub_25AE41998(&qword_27FA1D340, type metadata accessor for FileProtectionType, &unk_25AEA3870);
  v3 = sub_25AE41998(&qword_27FA1D348, type metadata accessor for FileProtectionType, &unk_25AEA3810);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25AE3F7FC()
{
  v0 = sub_25AEA21A8();
  v1 = MEMORY[0x25F859D80](v0);

  return v1;
}

uint64_t sub_25AE3F838(uint64_t a1)
{
  sub_25AEA21A8();
  sub_25AEA21F8();
}

uint64_t sub_25AE3F88C(uint64_t a1)
{
  sub_25AEA21A8();
  sub_25AEA28B8();
  sub_25AEA21F8();
  v1 = sub_25AEA28D8();

  return v1;
}

uint64_t sub_25AE3F900(void *a1, uint64_t *a2)
{
  v2 = sub_25AEA21A8();
  v4 = v3;
  if (v2 == sub_25AEA21A8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_25AEA2828();
  }

  return v7 & 1;
}

double sub_25AE3F988@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v5 = sub_25AE6F6C8(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25AE40FF0();
      v9 = v11;
    }

    sub_25AE41798(*(v9 + 48) + 40 * v7);
    sub_25AE417EC((*(v9 + 56) + 32 * v7), a1);
    sub_25AE40484(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_25AE3FA2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2E8, &qword_25AEA35E8);
  result = sub_25AEA2768();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_25AE417EC((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_25AE417FC(v23, &v36);
        sub_25AE418A4(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_25AEA25E8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_25AE417EC(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_25AE3FCE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25AEA0EB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E230, &qword_25AEA58E0);
  v39 = v4;
  result = sub_25AEA2768();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v19 = v6;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v41 = *(v19 + 72);
      v26 = v25 + v41 * v24;
      if (v39)
      {
        (*v40)(v42, v26, v43);
      }

      else
      {
        (*v37)(v42, v26, v43);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_25AE41998(&qword_27FA1D2F8, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
      result = sub_25AEA2148();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v40)(*(v11 + 48) + v41 * v20, v42, v43);
      *(*(v11 + 56) + 8 * v20) = v27;
      ++*(v11 + 16);
      v19 = v38;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25AE400A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25AEA0EB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1E240, &qword_25AEA3600);
  v39 = v4;
  result = sub_25AEA2768();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_25AE41998(&qword_27FA1D2F8, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
      result = sub_25AEA2148();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25AE40484(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25AEA2588() + 1) & ~v5;
    do
    {
      sub_25AE417FC(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_25AEA25E8();
      result = sub_25AE41798(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25AE40628(int64_t a1, uint64_t a2)
{
  v40 = sub_25AEA0EB8();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_25AEA2588();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_25AE41998(&qword_27FA1D2F8, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
      v23 = sub_25AEA2148();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

_OWORD *sub_25AE40948(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_25AE6F6C8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_25AE40FF0();
      goto LABEL_7;
    }

    sub_25AE3FA2C(v13, a3 & 1);
    v19 = sub_25AE6F6C8(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_25AE417FC(a2, v21);
      return sub_25AE40E04(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_25AEA2858();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_25AE417EC(a1, v17);
}

uint64_t sub_25AE40A94(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_25AEA0EB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25AE6F8F0(a1);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
  }

  else
  {
    v18 = v13;
    v19 = v12[3];
    if (v19 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v20 = *v4;
      if (v18)
      {
LABEL_8:
        *(v20[7] + 8 * v14) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v19 >= result && (a2 & 1) == 0)
    {
      result = sub_25AE41194();
      goto LABEL_7;
    }

    sub_25AE3FCE4(result, a2 & 1);
    result = sub_25AE6F8F0(a1);
    if ((v18 & 1) == (v21 & 1))
    {
      v14 = result;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v11, a1, v8);
      return sub_25AE40E80(v14, v11, v20, a3);
    }
  }

  result = sub_25AEA2858();
  __break(1u);
  return result;
}

void sub_25AE40C38(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25AEA0EB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25AE6F8F0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_25AE41408();
      goto LABEL_7;
    }

    sub_25AE400A8(v17, a3 & 1);
    v23 = sub_25AE6F8F0(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_25AE40F38(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_25AEA2858();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

_OWORD *sub_25AE40E04(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_25AE417EC(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_25AE40E80(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_25AEA0EB8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_25AE40F38(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25AEA0EB8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_25AE40FF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2E8, &qword_25AEA35E8);
  v2 = *v0;
  v3 = sub_25AEA2758();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = 40 * v17;
        sub_25AE417FC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_25AE418A4(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_25AE417EC(v22, (*(v4 + 56) + v17));
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25AE41194()
{
  v1 = v0;
  v29 = sub_25AEA0EB8();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E230, &qword_25AEA58E0);
  v3 = *v0;
  v4 = sub_25AEA2758();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; *(*(v23 + 56) + 8 * v17) = v22)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v31;
      v19 = *(v31 + 72) * v17;
      v20 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 48) + v19, v29);
      v22 = *(*(v3 + 56) + 8 * v17);
      v23 = v30;
      result = (*(v18 + 32))(*(v30 + 48) + v19, v20, v21);
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_25AE41408()
{
  v1 = v0;
  v31 = sub_25AEA0EB8();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1E240, &qword_25AEA3600);
  v3 = *v0;
  v4 = sub_25AEA2758();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_25AE4167C(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_25AE416C4()
{
  result = qword_27FA1D2B8;
  if (!qword_27FA1D2B8)
  {
    sub_25AE4167C(255, &qword_27FA1D2B0, 0x277CE1F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D2B8);
  }

  return result;
}

unint64_t sub_25AE4172C()
{
  result = qword_27FA1D2C8;
  if (!qword_27FA1D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D2C8);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_25AE417EC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_25AE418A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25AE41938(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25AE41998(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_25AE41A08(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t NameRecognitionServiceMessageID.init(axNRMessageID:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v3 = result - 16;
  if ((result - 10000) >= 3)
  {
    v3 = 11;
  }

  if (a2)
  {
    v3 = 11;
  }

  *a3 = v3;
  return result;
}

NameRecognition::NameRecognitionServiceMessageID_optional __swiftcall NameRecognitionServiceMessageID.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 1;
  if ((rawValue - 1) >= 0xB)
  {
    v2 = 11;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_25AE41C8C()
{
  result = qword_27FA1D360;
  if (!qword_27FA1D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D360);
  }

  return result;
}

uint64_t sub_25AE41CE0()
{
  v1 = *v0;
  sub_25AEA28B8();
  MEMORY[0x25F85A3E0](v1 + 1);
  return sub_25AEA28D8();
}

uint64_t sub_25AE41D58(uint64_t a1)
{
  v2 = *v1;
  sub_25AEA28B8();
  MEMORY[0x25F85A3E0](v2 + 1);
  return sub_25AEA28D8();
}

uint64_t getEnumTagSinglePayload for NameRecognitionServiceMessageID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NameRecognitionServiceMessageID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25AE41F28(_BYTE *a1, uint64_t a2)
{
  *(v3 + 192) = a2;
  *(v3 + 200) = v2;
  *(v3 + 224) = *a1;
  return MEMORY[0x2822009F8](sub_25AE41F50, 0, 0);
}

uint64_t sub_25AE41F50()
{
  if (*(v0 + 192))
  {
    v1 = sub_25AEA2128();
  }

  else
  {
    v1 = 0;
  }

  *(v0 + 208) = v1;
  v2 = *(v0 + 224);
  v3 = *(v0 + 200);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_25AE420B8;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D368, &qword_25AEA3A58);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_25AE425A4;
  *(v0 + 104) = &block_descriptor_0;
  *(v0 + 112) = v4;
  [v3 sendAsynchronousMessage:v1 withIdentifier:v2 + 1 targetAccessQueue:0 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_25AE420B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_25AE42534;
  }

  else
  {
    v2 = sub_25AE421C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25AE421C8()
{
  v1 = *(v0 + 144);

  *(v0 + 176) = 0x726F727265;
  *(v0 + 184) = 0xE500000000000000;
  sub_25AEA2608();
  if (*(v1 + 16) && (v2 = sub_25AE6F6C8(v0 + 80), (v3 & 1) != 0))
  {
    sub_25AE418A4(*(v1 + 56) + 32 * v2, v0 + 144);
    sub_25AE41798(v0 + 80);
    if (swift_dynamicCast())
    {

      v4 = *(v0 + 176);
      v5 = *(v0 + 184);
      sub_25AEA0B08();
      swift_allocObject();
      sub_25AEA0AF8();
      sub_25AE42700();
      sub_25AEA0AE8();
      v15 = *(v0 + 80);
      v17 = *(v0 + 88);
      v16 = *(v0 + 96);
      sub_25AE426AC();
      v18 = swift_allocError();
      *v19 = v15;
      *(v19 + 8) = v17;
      *(v19 + 16) = v16;

      NRLogError(_:additionalMessage:)(v18, 0, 0);

      swift_allocError();
      *v20 = v15;
      *(v20 + 8) = v17;
      *(v20 + 16) = v16;
      swift_willThrow();

      sub_25AE42754(v4, v5);
LABEL_14:
      v21 = *(v0 + 8);

      return v21();
    }
  }

  else
  {
    sub_25AE41798(v0 + 80);
  }

  *(v0 + 176) = 0x726F727265;
  *(v0 + 184) = 0xE500000000000000;
  sub_25AEA2608();
  if (*(v1 + 16) && (v6 = sub_25AE6F6C8(v0 + 80), (v7 & 1) != 0))
  {
    sub_25AE418A4(*(v1 + 56) + 32 * v6, v0 + 144);
    sub_25AE41798(v0 + 80);
    if (swift_dynamicCast())
    {

      v9 = *(v0 + 176);
      v8 = *(v0 + 184);
      sub_25AE426AC();
      v10 = swift_allocError();
      *v11 = 8;
      *(v11 + 8) = v9;
      *(v11 + 16) = v8;

      NRLogError(_:additionalMessage:)(v10, 0, 0);

      swift_allocError();
      *v12 = 8;
      *(v12 + 8) = v9;
      *(v12 + 16) = v8;
      swift_willThrow();
      goto LABEL_14;
    }
  }

  else
  {
    sub_25AE41798(v0 + 80);
  }

  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_25AE42534()
{
  v1 = *(v0 + 208);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25AE425A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = sub_25AEA2138();

    return MEMORY[0x282200950](v4);
  }
}

unint64_t sub_25AE426AC()
{
  result = qword_27FA1D930;
  if (!qword_27FA1D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D930);
  }

  return result;
}

unint64_t sub_25AE42700()
{
  result = qword_27FA1D370;
  if (!qword_27FA1D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D370);
  }

  return result;
}

uint64_t sub_25AE42754(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_25AE427EC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3A0, &qword_25AEA6370);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_25AEA1178();
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v41 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25AEA0E48();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v34 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v18 = [a1 identifier];
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = v18;
  sub_25AEA0E28();

  (*(v9 + 32))(v17, v15, v8);
  v20 = [a1 audioSourceRawValue];
  if (!v20)
  {
LABEL_7:
    (*(v9 + 8))(v17, v8);
LABEL_8:
    sub_25AE426AC();
    swift_allocError();
    *v31 = 7;
    *(v31 + 8) = 0xD00000000000002DLL;
    *(v31 + 16) = 0x800000025AEA7F40;
    swift_willThrow();

    return;
  }

  v21 = v20;
  v37 = sub_25AEA21A8();
  v23 = v22;

  v24 = [a1 audioData];
  if (!v24)
  {

    goto LABEL_7;
  }

  v38 = v23;
  v36 = v5;
  v25 = v24;
  v26 = sub_25AEA0DE8();
  v28 = v27;

  v29 = v42;
  v30 = sub_25AE6461C(v26, v28);
  if (v29)
  {
    (*(v9 + 8))(v17, v8);
    sub_25AE42754(v26, v28);
  }

  else
  {
    v34 = v30;
    v35 = v26;
    v42 = v28;
    (*(v9 + 16))(v12, v17, v8);
    v32 = v36;
    sub_25AEA1158();
    v33 = v39;
    v37 = *(v39 + 48);
    v38 = v39 + 48;
    if (v37(v32, 1, v6) == 1)
    {
      (*(v33 + 104))(v41, *MEMORY[0x277D79820], v6);
      if (v37(v32, 1, v6) != 1)
      {
        sub_25AE43FA8(v32);
      }
    }

    else
    {
      (*(v33 + 32))(v41, v32, v6);
    }

    sub_25AEA10F8();
    sub_25AE42754(v35, v42);

    (*(v9 + 8))(v17, v8);
  }
}

void sub_25AE42C58(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  MEMORY[0x28223BE20](v80);
  v79 = &v70 - v4;
  v5 = sub_25AEA1108();
  v6 = *(v5 - 8);
  v84 = v5;
  v85 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25AEA0EB8();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25AEA0D18();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v70 - v17;
  v19 = sub_25AEA0E48();
  v82 = *(v19 - 8);
  v83 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v75 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v70 - v22;
  v24 = [a1 identifier];
  if (!v24)
  {
LABEL_31:
    *&v88 = 0;
    *(&v88 + 1) = 0xE000000000000000;
    sub_25AEA2688();
    v90 = v88;
    MEMORY[0x25F859D40](0xD00000000000001DLL, 0x800000025AEA7E60);
    v44 = [a1 identifier];
    if (v44)
    {
      v45 = v79;
      v46 = v44;
      sub_25AEA0E28();

      v47 = 0;
    }

    else
    {
      v47 = 1;
      v45 = v79;
    }

    (*(v82 + 56))(v45, v47, 1, v83);
    v48 = sub_25AEA21D8();
    MEMORY[0x25F859D40](v48);

    MEMORY[0x25F859D40](0xD000000000000026, 0x800000025AEA7E80);
    v49 = [a1 humanReadableName];
    if (v49)
    {
      v50 = v49;
      v51 = sub_25AEA21A8();
      v53 = v52;
    }

    else
    {
      v51 = 0;
      v53 = 0;
    }

    *&v88 = v51;
    *(&v88 + 1) = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D388, &qword_25AEA5220);
    v54 = sub_25AEA21D8();
    MEMORY[0x25F859D40](v54);

    MEMORY[0x25F859D40](0xD000000000000029, 0x800000025AEA7EB0);
    v55 = [a1 collectedEnrollments];
    if (v55)
    {
      v56 = v55;
      v77 = v13;
      v78 = a1;
      v57 = MEMORY[0x277D84F90];
      v91 = MEMORY[0x277D84F90];
      sub_25AEA24F8();
      sub_25AE43F60(&qword_27FA1D390, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
      sub_25AEA2548();
      while (v89)
      {
        sub_25AE417EC(&v88, v86);
        type metadata accessor for CollectedEnrollment();
        if ((swift_dynamicCast() & 1) != 0 && v87)
        {
          MEMORY[0x25F859DF0]();
          if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_25AEA2318();
          }

          sub_25AEA2338();
          v57 = v91;
        }

        sub_25AEA2548();
      }

      (*(v77 + 8))(v16, v12);
      a1 = v78;
    }

    else
    {
      v57 = 0;
    }

    *&v88 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D398, &unk_25AEA3A70);
    v58 = sub_25AEA21D8();
    MEMORY[0x25F859D40](v58);

    MEMORY[0x25F859D40](0xD000000000000025, 0x800000025AEA7EE0);
    v59 = [a1 localeIdentifier];
    if (v59)
    {
      v60 = v59;
      v61 = sub_25AEA21A8();
      v63 = v62;
    }

    else
    {
      v61 = 0;
      v63 = 0;
    }

    *&v88 = v61;
    *(&v88 + 1) = v63;
    v64 = sub_25AEA21D8();
    MEMORY[0x25F859D40](v64);

    v65 = v90;
    *&v88 = 0;
    *(&v88 + 1) = 0xE000000000000000;
    sub_25AEA2688();

    *&v88 = 0xD00000000000002DLL;
    *(&v88 + 1) = 0x800000025AEA7F10;
    MEMORY[0x25F859D40](v65, *(&v65 + 1));

    v66 = v88;
    sub_25AE426AC();
    swift_allocError();
    *v67 = 7;
    *(v67 + 8) = v66;
    swift_willThrow();

    return;
  }

  v73 = v11;
  v25 = v24;
  sub_25AEA0E28();

  v26 = [a1 humanReadableName];
  if (!v26)
  {
    (*(v82 + 8))(v23, v83);
    goto LABEL_31;
  }

  v74 = v23;
  v27 = v26;
  v72 = sub_25AEA21A8();
  v29 = v28;

  v30 = [a1 collectedEnrollments];
  if (!v30)
  {

    (*(v82 + 8))(v74, v83);
    goto LABEL_31;
  }

  v70 = v29;
  v81 = v8;
  v77 = v13;
  v78 = a1;
  v31 = MEMORY[0x277D84F90];
  *&v90 = MEMORY[0x277D84F90];
  v71 = v30;
  sub_25AEA24F8();
  sub_25AE43F60(&qword_27FA1D390, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_25AEA2548();
  while (v89)
  {
    while (1)
    {
      sub_25AE417EC(&v88, v86);
      type metadata accessor for CollectedEnrollment();
      if (swift_dynamicCast())
      {
        if (v91)
        {
          break;
        }
      }

      sub_25AEA2548();
      if (!v89)
      {
        goto LABEL_14;
      }
    }

    MEMORY[0x25F859DF0]();
    if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25AEA2318();
    }

    sub_25AEA2338();
    v31 = v90;
    sub_25AEA2548();
  }

LABEL_14:

  v13 = v77;
  (*(v77 + 8))(v18, v12);
  a1 = v78;
  v32 = [v78 localeIdentifier];
  if (!v32)
  {
    (*(v82 + 8))(v74, v83);

    goto LABEL_31;
  }

  v33 = v32;
  v71 = sub_25AEA21A8();
  v77 = v34;

  if (v31 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25AEA25B8())
  {
    v36 = v81;
    v37 = v74;
    if (!i)
    {
      break;
    }

    *&v88 = MEMORY[0x277D84F90];
    sub_25AE8D6E4(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return;
    }

    v38 = 0;
    v39 = v88;
    v40 = v31 & 0xC000000000000001;
    v79 = (v31 & 0xFFFFFFFFFFFFFF8);
    v80 = v31;
    v31 = v85 + 32;
    while (1)
    {
      v41 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v40)
      {
        v42 = MEMORY[0x25F85A1C0](v38, v80);
      }

      else
      {
        if (v38 >= *(v79 + 2))
        {
          goto LABEL_57;
        }

        v42 = *(v80 + 8 * v38 + 32);
      }

      sub_25AE427EC(v42, v36);
      if (v2)
      {
        (*(v82 + 8))(v74, v83);

        return;
      }

      *&v88 = v39;
      a1 = *(v39 + 16);
      v43 = *(v39 + 24);
      if (a1 >= v43 >> 1)
      {
        sub_25AE8D6E4((v43 > 1), a1 + 1, 1);
        v39 = v88;
      }

      *(v39 + 16) = a1 + 1;
      v36 = v81;
      (*(v85 + 32))(v39 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * a1, v81, v84);
      ++v38;
      if (v41 == i)
      {

        a1 = v78;
        v37 = v74;
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }

LABEL_55:
  v69 = v82;
  v68 = v83;
  (*(v82 + 16))(v75, v37, v83);
  sub_25AEA0E58();
  sub_25AEA10B8();

  (*(v69 + 8))(v37, v68);
}

void *sub_25AE43800(void (*a1)(id *, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = sub_25AEA10C8();
  v6 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25AEA25B8())
  {
    v9 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v9;
    }

    v26 = MEMORY[0x277D84F90];
    result = sub_25AE8D728(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v11 = 0;
    v9 = v26;
    v18 = i;
    v19 = a3 & 0xC000000000000001;
    v17[0] = a3 & 0xFFFFFFFFFFFFFF8;
    v17[1] = v6 + 32;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v19)
      {
        v13 = MEMORY[0x25F85A1C0](v11, a3);
      }

      else
      {
        if (v11 >= *(v17[0] + 16))
        {
          goto LABEL_19;
        }

        v13 = *(a3 + 8 * v11 + 32);
      }

      v14 = v13;
      v25 = v13;
      v21(&v25, &v24);
      if (v4)
      {

        return v9;
      }

      v4 = 0;

      v26 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_25AE8D728((v15 > 1), v16 + 1, 1);
        v9 = v26;
      }

      *(v9 + 16) = v16 + 1;
      (*(v6 + 32))(v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v23, v20);
      ++v11;
      if (v12 == v18)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_25AE43A48@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  v5 = sub_25AEA0EB8();
  v44 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v38 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  sub_25AEA2478();
  v14 = MEMORY[0x25F859F80]();
  v15 = *MEMORY[0x277CE7928];
  swift_beginAccess();
  v16 = *&v14[v15];

  v17 = sub_25AEA2448();
  v43 = v16;
  if (v17)
  {
    sub_25AEA2438();
    v18 = v44;
  }

  else
  {
    if (*(sub_25AEA0E88() + 16))
    {

      v18 = v44;
    }

    else
    {

      sub_25AEA2438();
      sub_25AEA0E68();
      v18 = v44;
      (*(v44 + 8))(v11, v5);
    }

    sub_25AEA0E58();
  }

  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v19 = sub_25AEA12C8();
  __swift_project_value_buffer(v19, qword_27FA1DF50);
  (*(v18 + 16))(v8, v13, v5);
  v20 = v8;
  v21 = sub_25AEA12A8();
  v22 = sub_25AEA24A8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v40 = v2;
    v24 = v23;
    v25 = swift_slowAlloc();
    v41 = a1;
    v39 = v25;
    v45 = v25;
    *v24 = 136315138;
    sub_25AE43F60(&qword_27FA1D378, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
    v26 = sub_25AEA27F8();
    v27 = v13;
    v28 = v5;
    v30 = v29;
    v31 = *(v44 + 8);
    v31(v20, v28);
    v32 = sub_25AE65D2C(v26, v30, &v45);
    v5 = v28;
    v33 = v31;
    v13 = v27;

    *(v24 + 4) = v32;
    _os_log_impl(&dword_25AE3C000, v21, v22, "VANRUserConfiguration's name configs will use locale %s", v24, 0xCu);
    v34 = v39;
    __swift_destroy_boxed_opaque_existential_0(v39);
    a1 = v41;
    MEMORY[0x25F85AB80](v34, -1, -1);
    v35 = v24;
    v3 = v40;
    MEMORY[0x25F85AB80](v35, -1, -1);
  }

  else
  {

    v33 = *(v18 + 8);
    v36 = v33(v20, v5);
  }

  MEMORY[0x28223BE20](v36);
  *(&v38 - 2) = v13;
  sub_25AE43800(sub_25AE43F40, (&v38 - 4), a1);

  if (!v3)
  {
    sub_25AEA10D8();
  }

  return v33(v13, v5);
}

void sub_25AE43EB4(void **a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *a1;
  sub_25AEA0E68();
  v7 = sub_25AEA2178();

  [v6 setLocaleIdentifier_];

  sub_25AE42C58(v6, a3);
  if (v3)
  {
    *a2 = v3;
  }
}

uint64_t sub_25AE43F60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25AE43FA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3A0, &qword_25AEA6370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25AE4401C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25AE44064(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_25AE440D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a4;
  v58 = a5;
  v52 = a3;
  v59 = a1;
  v6 = sub_25AEA1238();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6);
  v49 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3A8, &qword_25AEA3B18);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3B0, &unk_25AEA3B20);
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x28223BE20](v10);
  v54 = v45 - v11;
  v12 = objc_opt_self();
  v13 = [v12 currentDevice];
  [v13 userInterfaceIdiom];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2C0, &qword_25AEA35C0);
  v14 = swift_allocObject();
  v46 = xmmword_25AEA3540;
  *(v14 + 16) = xmmword_25AEA3540;
  swift_getKeyPath();
  swift_getKeyPath();
  v60 = a2;
  sub_25AEA1478(&v61);

  v15 = v61;
  v16 = v62;
  *(v14 + 56) = MEMORY[0x277D837D0];
  v17 = sub_25AE4172C();
  *(v14 + 64) = v17;
  if (v16)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  v19 = 0xE000000000000000;
  if (v16)
  {
    v19 = v16;
  }

  *(v14 + 32) = v18;
  *(v14 + 40) = v19;
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v20 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v21 = qword_27FA22788;
    v22 = qword_27FA22788;
  }

  else
  {
    v22 = [objc_opt_self() mainBundle];
    v21 = 0;
  }

  v23 = v21;
  sub_25AEA0CC8();

  v24 = sub_25AEA21B8();
  v47 = v25;
  v48 = v24;

  v26 = [v12 currentDevice];
  [v26 userInterfaceIdiom];

  v27 = swift_allocObject();
  *(v27 + 16) = v46;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v61);

  v28 = v61;
  v29 = v62;
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = v17;
  if (!v29)
  {
    v28 = 0;
    v29 = 0xE000000000000000;
  }

  *(v27 + 32) = v28;
  *(v27 + 40) = v29;
  v30 = v23;
  if (!v20)
  {
    v30 = [objc_opt_self() mainBundle];
  }

  v31 = v23;
  sub_25AEA0CC8();

  *&v46 = sub_25AEA21B8();
  v45[1] = v32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3B8, &unk_25AEA4000);
  v33 = v50;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_25AEA3550;
  sub_25AEA1228();
  sub_25AEA1208();
  v61 = v34;
  sub_25AE47980(&qword_27FA1D3C0, MEMORY[0x277CE7670], MEMORY[0x277CE7680]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3C8, &qword_25AEA3B80);
  sub_25AE47F60(&qword_27FA1D3D0, &qword_27FA1D3C8, &qword_25AEA3B80, MEMORY[0x277D83970]);
  v35 = v49;
  v36 = v51;
  sub_25AEA2578();
  sub_25AEA1F38();
  v37 = (*(v33 + 8))(v35, v36);
  v51 = v45;
  v38 = MEMORY[0x28223BE20](v37);
  LOBYTE(v35) = v52 & 1;
  v39 = v57;
  MEMORY[0x28223BE20](v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3D8, &qword_25AEA3B88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3E0, &qword_25AEA3B90);
  sub_25AE46E58();
  sub_25AE47F60(&qword_27FA1D400, &qword_27FA1D3E0, &qword_25AEA3B90, &unk_25AEA5628);
  v40 = v54;
  sub_25AEA11F8();
  v64 = v35;
  v65 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  sub_25AEA1E98();
  LODWORD(v53) = v63;
  v41 = swift_allocObject();
  v42 = v60;
  *(v41 + 16) = v59;
  *(v41 + 24) = v42;
  *(v41 + 32) = v35;
  *(v41 + 40) = v39;
  type metadata accessor for ErrorView(0);
  sub_25AE47F60(&qword_27FA1D410, &qword_27FA1D3B0, &unk_25AEA3B20, MEMORY[0x277CE7668]);
  sub_25AE47980(&qword_27FA1D418, type metadata accessor for ErrorView, &protocol conformance descriptor for ErrorView);

  v43 = v56;
  sub_25AEA1CF8();

  return (*(v55 + 8))(v40, v43);
}

double sub_25AE44A30@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_25AEA1988();

  sub_25AE472F4(0, v7);

  *&v6[23] = v7[1];
  *&v6[39] = v7[2];
  *&v6[55] = v7[3];
  v6[71] = v8;
  *&v6[7] = v7[0];
  v4 = sub_25AEA1AE8();
  *(a2 + 33) = *&v6[16];
  *(a2 + 49) = *&v6[32];
  *(a2 + 65) = *&v6[48];
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 81) = *&v6[64];
  *(a2 + 17) = *v6;
  *(a2 + 96) = v4;
  result = 0.0;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 1;
  return result;
}

uint64_t sub_25AE44AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *a5 = 1;
  a5[1] = sub_25AE46FA8;
  a5[2] = v10;
}

double sub_25AE44B94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  *a5 = sub_25AEA1988();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  sub_25AE44CC0(a1, a2, v6, a4, &v16);
  v31 = v22;
  v32 = v23;
  v33 = v24;
  v27 = v18;
  v28 = v19;
  v29 = v20;
  v30 = v21;
  v25 = v16;
  v26 = v17;
  v34[6] = v22;
  v34[7] = v23;
  v34[8] = v24;
  v34[2] = v18;
  v34[3] = v19;
  v34[4] = v20;
  v34[5] = v21;
  v34[0] = v16;
  v34[1] = v17;
  sub_25AE479E0(&v25, &v15, &qword_27FA1D428, &qword_25AEA3BE0);
  sub_25AE41938(v34, &qword_27FA1D428, &qword_25AEA3BE0);
  v10 = v29;
  *(a5 + 104) = v30;
  v11 = v32;
  *(a5 + 120) = v31;
  *(a5 + 136) = v11;
  *(a5 + 152) = v33;
  v12 = v25;
  *(a5 + 40) = v26;
  result = *&v27;
  v14 = v28;
  *(a5 + 56) = v27;
  *(a5 + 72) = v14;
  *(a5 + 88) = v10;
  *(a5 + 24) = v12;
  return result;
}

uint64_t sub_25AE44CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v10 = sub_25AEA1958();
  v35 = v11;
  v36 = v10;
  v13 = v12;
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  KeyPath = swift_getKeyPath();
  v18 = v13 & 1;
  v19 = a4;

  v20 = sub_25AEA1958();
  v33 = v21;
  v34 = v20;
  v23 = v22;
  v32 = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  *(v25 + 32) = a3;
  *(v25 + 40) = v19;
  v26 = swift_getKeyPath();
  LOBYTE(v57) = 0;
  *&v38 = KeyPath;
  BYTE8(v38) = 0;
  *&v39 = v36;
  *(&v39 + 1) = v35;
  LOBYTE(v40) = v18;
  *(&v40 + 1) = v15;
  LOBYTE(v41) = 0;
  *(&v41 + 1) = sub_25AE46FB8;
  v42 = v16;
  *v37 = v16;
  *&v43 = v26;
  BYTE8(v43) = 0;
  *&v44 = v34;
  *(&v44 + 1) = v33;
  LOBYTE(v45) = v23 & 1;
  *(&v45 + 1) = v32;
  LOBYTE(v46) = 1;
  *(&v46 + 1) = sub_25AE4700C;
  v47 = v25;
  *&v37[8] = v43;
  *&v37[72] = v25;
  *&v37[56] = v46;
  *&v37[40] = v45;
  *&v37[24] = v44;
  v27 = v38;
  v28 = v39;
  v29 = v41;
  a5[2] = v40;
  a5[3] = v29;
  *a5 = v27;
  a5[1] = v28;
  a5[7] = *&v37[48];
  a5[8] = *&v37[64];
  a5[5] = *&v37[16];
  a5[6] = *&v37[32];
  a5[4] = *v37;
  v48 = v26;
  v49 = 0;
  v50 = v34;
  v51 = v33;
  v52 = v23 & 1;
  v53 = v32;
  v54 = 1;
  v55 = sub_25AE4700C;
  v56 = v25;

  sub_25AE47030(&v38, &v57);
  sub_25AE47030(&v43, &v57);
  sub_25AE4708C(&v48);
  v57 = KeyPath;
  v58 = 0;
  v59 = v36;
  v60 = v35;
  v61 = v18;
  v62 = v15;
  v63 = 0;
  v64 = sub_25AE46FB8;
  v65 = v16;
  return sub_25AE4708C(&v57);
}

uint64_t sub_25AE44F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v9 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v10 = qword_27FA22788;
    v11 = qword_27FA22788;
  }

  else
  {
    v11 = [objc_opt_self() mainBundle];
    v10 = 0;
  }

  v12 = v10;
  sub_25AEA0CC8();

  v29 = sub_25AEA2278();
  v14 = v13;
  v15 = v12;
  if (!v9)
  {
    v15 = [objc_opt_self() mainBundle];
  }

  v16 = v12;
  sub_25AEA0CC8();

  v17 = sub_25AEA2278();
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3 & 1;
  *(v20 + 40) = a4;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3 & 1;
  *(v21 + 40) = a4;
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D420, &qword_25AEA47E0);
  swift_storeEnumTagMultiPayload();
  v22 = type metadata accessor for ErrorView(0);
  v23 = (a5 + v22[5]);
  *v23 = v29;
  v23[1] = v14;
  v24 = (a5 + v22[6]);
  *v24 = v17;
  v24[1] = v19;
  *(a5 + v22[7]) = 0;
  v25 = (a5 + v22[8]);
  *v25 = sub_25AE46F24;
  v25[1] = v20;
  v26 = (a5 + v22[9]);
  *v26 = sub_25AE46F4C;
  v26[1] = v21;
  v27 = (a5 + v22[10]);
  *v27 = 0;
  v27[1] = 0;
  swift_retain_n();
  return swift_retain_n();
}

uint64_t sub_25AE45228(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_25AEA2388();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_25AEA2368();

  v12 = sub_25AEA2358();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *(v13 + 48) = a3;
  *(v13 + 56) = a4;
  sub_25AE82E98(0, 0, v10, &unk_25AEA3C28, v13);
}

uint64_t sub_25AE45370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 105) = a6;
  *(v7 + 32) = a5;
  *(v7 + 40) = a7;
  *(v7 + 48) = sub_25AEA2368();
  *(v7 + 56) = sub_25AEA2358();
  v9 = sub_25AEA2348();
  *(v7 + 64) = v9;
  *(v7 + 72) = v8;

  return MEMORY[0x2822009F8](sub_25AE45410, v9, v8);
}

uint64_t sub_25AE45410(uint64_t a1)
{
  *(v1 + 80) = sub_25AEA2358();
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_25AE454AC;

  return sub_25AE7C6D8();
}

uint64_t sub_25AE454AC()
{
  *(*v1 + 96) = v0;

  v3 = sub_25AEA2348();
  if (v0)
  {
    v4 = sub_25AE456D8;
  }

  else
  {
    v4 = sub_25AE45608;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_25AE45608()
{

  sub_25AE7B0F0(4);
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_25AE45678, v1, v2);
}

uint64_t sub_25AE45678()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25AE456D8()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_25AE4573C, v1, v2);
}

uint64_t sub_25AE4573C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  v3 = *(v0 + 105);

  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 104) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  sub_25AEA1E88();
  NRLogError(_:additionalMessage:)(v1, 0, 0);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25AE45828()
{
  v1 = *v0;
  sub_25AEA28B8();
  MEMORY[0x25F85A3E0](v1);
  return sub_25AEA28D8();
}

uint64_t sub_25AE4589C(uint64_t a1)
{
  v2 = *v1;
  sub_25AEA28B8();
  MEMORY[0x25F85A3E0](v2);
  return sub_25AEA28D8();
}

uint64_t sub_25AE458E0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_25AEA1908();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D440, &qword_25AEA3CD8);
  sub_25AE45BA8(v1, a1 + *(v3 + 44));
  v4 = sub_25AEA1AC8();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D448, &qword_25AEA3CE0) + 36);
  *v5 = v4;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  sub_25AEA1FB8();
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D450, &qword_25AEA3CE8) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D458, &qword_25AEA3CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D460, &qword_25AEA3CF8);
  v7 = MEMORY[0x277CDF3A0];
  sub_25AE47F60(&qword_27FA1D468, &qword_27FA1D458, &qword_25AEA3CF0, MEMORY[0x277CDF3A0]);
  sub_25AE47F60(&qword_27FA1D470, &qword_27FA1D460, &qword_25AEA3CF8, v7);
  sub_25AEA1FC8();
  v8 = sub_25AEA1FE8();
  v10 = v9;
  v11 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D478, &qword_25AEA3D00) + 36));
  *v11 = v8;
  v11[1] = v10;
  v12 = swift_allocObject();
  v13 = *(v1 + 48);
  *(v12 + 48) = *(v1 + 32);
  *(v12 + 64) = v13;
  *(v12 + 80) = *(v1 + 64);
  v14 = *(v1 + 16);
  *(v12 + 16) = *v1;
  *(v12 + 32) = v14;
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D480, &qword_25AEA3D08) + 36));
  *v15 = sub_25AE47648;
  v15[1] = v12;
  v15[2] = 0;
  v15[3] = 0;
  v16 = swift_allocObject();
  v17 = *(v1 + 48);
  *(v16 + 48) = *(v1 + 32);
  *(v16 + 64) = v17;
  *(v16 + 80) = *(v1 + 64);
  v18 = *(v1 + 16);
  *(v16 + 16) = *v1;
  *(v16 + 32) = v18;
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D488, &qword_25AEA3D10) + 36));
  *v19 = 0;
  v19[1] = 0;
  v19[2] = sub_25AE47650;
  v19[3] = v16;
  sub_25AE47658(v1, v21);
  return sub_25AE47658(v1, v21);
}

uint64_t sub_25AE45BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D4B8, &qword_25AEA3D40);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = sub_25AEA1998();
  v25 = v11;
  LOBYTE(v31[0]) = 1;
  sub_25AE45EB4(v28);
  *&v27[7] = v28[0];
  *&v27[23] = v28[1];
  *&v27[39] = v28[2];
  *&v27[55] = v28[3];
  v12 = v31[0];
  v13 = swift_allocObject();
  v14 = *(a1 + 48);
  *(v13 + 48) = *(a1 + 32);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(a1 + 64);
  v15 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v15;
  v26 = a1;
  sub_25AE47658(a1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D4C0, &qword_25AEA3D48);
  sub_25AE47754();
  sub_25AEA1EB8();
  v16 = *(v5 + 16);
  v16(v8, v10, v4);
  v29[0] = v11;
  v29[1] = 0;
  v30[0] = v12;
  *&v30[1] = *v27;
  *&v30[17] = *&v27[16];
  *&v30[33] = *&v27[32];
  *&v30[49] = *&v27[48];
  v17 = *&v27[63];
  *&v30[64] = *&v27[63];
  v18 = *v30;
  *a2 = v11;
  *(a2 + 16) = v18;
  v19 = *&v30[16];
  v20 = *&v30[48];
  *(a2 + 48) = *&v30[32];
  *(a2 + 64) = v20;
  *(a2 + 32) = v19;
  *(a2 + 80) = v17;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D518, &qword_25AEA3D70);
  v16((a2 + *(v21 + 64)), v8, v4);
  sub_25AE479E0(v29, v31, &qword_27FA1D520, &qword_25AEA3D78);
  v22 = *(v5 + 8);
  v22(v10, v4);
  v22(v8, v4);
  v31[0] = v25;
  v31[1] = 0;
  v32 = v12;
  v34 = *&v27[16];
  v35 = *&v27[32];
  *v36 = *&v27[48];
  *&v36[15] = *&v27[63];
  v33 = *v27;
  return sub_25AE41938(v31, &qword_27FA1D520, &qword_25AEA3D78);
}

uint64_t sub_25AE45EB4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_25AEA1948();
  MEMORY[0x28223BE20](v3 - 8);
  sub_25AEA1938();
  sub_25AEA1928();
  sub_25AEA1918();
  sub_25AEA1928();
  sub_25AEA1968();
  v4 = sub_25AEA1BB8();
  v6 = v5;
  v8 = v7;
  sub_25AEA1B08();
  v9 = sub_25AEA1B68();
  v28 = v10;
  v29 = v9;
  v27 = v11;
  v30 = v12;
  sub_25AE479D0(v4, v6, v8 & 1);

  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v13 = qword_27FA22788;
  v14 = sub_25AEA1BB8();
  v16 = v15;
  v18 = v17;
  sub_25AEA1DE8();
  v19 = sub_25AEA1B88();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_25AE479D0(v14, v16, v18 & 1);

  *a2 = v29;
  *(a2 + 8) = v28;
  *(a2 + 16) = v27 & 1;
  *(a2 + 24) = v30;
  *(a2 + 32) = v19;
  *(a2 + 40) = v21;
  *(a2 + 48) = v23 & 1;
  *(a2 + 56) = v25;
  sub_25AE47B08(v29, v28, v27 & 1);

  sub_25AE47B08(v19, v21, v23 & 1);

  sub_25AE479D0(v19, v21, v23 & 1);

  sub_25AE479D0(v29, v28, v27 & 1);
}

void sub_25AE461A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D538, &qword_25AEA3DC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  sub_25AEA1E78();
  v9 = *(a1 + 8);
  if (v20 == 1)
  {
    v10 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager;
    v11 = *(v9 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager);
    if (v11)
    {
      v12 = v11;
      sub_25AE5109C();

      v11 = *(v9 + v10);
    }

    *(v9 + v10) = 0;

    sub_25AE79B04();
  }

  else
  {
    v13 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_ttsTempEnrolment;
    swift_beginAccess();
    sub_25AE479E0(v9 + v13, v4, &qword_27FA1D538, &qword_25AEA3DC0);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_25AE41938(v4, &qword_27FA1D538, &qword_25AEA3DC0);
    }

    else
    {
      sub_25AE47A48(v4, v8);
      sub_25AE7F854();
      v14 = *(v9 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager);
      if (v14)
      {
        v15 = *&v8[*(v5 + 20)];
        v16 = v14;
        v17 = sub_25AEA0E08();
        sub_25AE50A44(v15, v17, v18);
      }

      sub_25AE47AAC(v8);
    }
  }
}

uint64_t sub_25AE463F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[2] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D528, &qword_25AEA3D80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D530, &qword_25AEA3D88);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v24 - v7;
  v25 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  sub_25AEA1E78();
  sub_25AEA1958();
  *&v25 = 0;
  *(&v25 + 1) = 0xE000000000000000;
  v30 = *(a1 + 16);
  sub_25AEA1E78();
  if (v29)
  {
    v9 = 1886352499;
  }

  else
  {
    v9 = 2036427888;
  }

  MEMORY[0x25F859D40](v9, 0xE400000000000000);

  MEMORY[0x25F859D40](0x2E656C637269632ELL, 0xEC0000006C6C6966);
  sub_25AEA1E08();
  sub_25AEA19C8();
  v10 = sub_25AEA19D8();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  v11 = sub_25AEA1E38();

  sub_25AE41938(v8, &qword_27FA1D530, &qword_25AEA3D88);
  v12 = sub_25AEA1D98();
  v13 = sub_25AEA1DA8();
  v14 = sub_25AEA1AF8();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = sub_25AEA1B28();
  sub_25AE41938(v5, &qword_27FA1D528, &qword_25AEA3D80);
  KeyPath = swift_getKeyPath();
  v24[1] = v11;
  *&v25 = v11;
  *(&v25 + 1) = v12;
  v26 = v13;
  v27 = KeyPath;
  v28 = v15;
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v17 = qword_27FA22788;
  v18 = sub_25AEA1BB8();
  v20 = v19;
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D4D8, &qword_25AEA3D50);
  sub_25AE47810();
  sub_25AEA1C98();
  sub_25AE479D0(v18, v20, v22 & 1);
}

uint64_t sub_25AE467E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D498, &unk_25AEA3D20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1D960, &unk_25AEA44A0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - v8;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D4A0, &qword_25AEA3D30);
  sub_25AEA1448();
  swift_endAccess();
  sub_25AE47F60(&unk_27FA1D970, &qword_27FA1D498, &unk_25AEA3D20, MEMORY[0x277CBCEC8]);
  sub_25AE47690();
  sub_25AEA14A8();
  (*(v3 + 8))(v5, v2);
  v10 = swift_allocObject();
  v11 = *(a1 + 48);
  *(v10 + 48) = *(a1 + 32);
  *(v10 + 64) = v11;
  *(v10 + 80) = *(a1 + 64);
  v12 = *(a1 + 16);
  *(v10 + 16) = *a1;
  *(v10 + 32) = v12;
  sub_25AE47658(a1, v16);
  sub_25AE47F60(&qword_27FA1D980, &unk_27FA1D960, &unk_25AEA44A0, MEMORY[0x277CBCBE0]);
  v13 = sub_25AEA14B8();

  (*(v7 + 8))(v9, v6);
  v16[0] = *(a1 + 32);
  v15[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D490, &qword_25AEA3D18);
  return sub_25AEA1E88();
}

uint64_t sub_25AE46AC0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v5 = *(a2 + 16);
  v6 = v5;
  v7 = *(&v5 + 1);
  sub_25AE479E0(&v7, &v4, &qword_27FA1D4B0, &qword_25AEA3D38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  sub_25AEA1E78();
  if ((v2 == 4) != v4)
  {
    v5 = v6;
    LOBYTE(v4) = v2 == 4;
    sub_25AEA1E88();
  }

  return sub_25AE41938(&v6, &qword_27FA1D408, &qword_25AEA3BA0);
}

void *sub_25AE46B94(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D490, &qword_25AEA3D18);
  result = sub_25AEA1E78();
  if (v2)
  {
    sub_25AEA1408();
  }

  return result;
}

uint64_t sub_25AE46BF4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CE0118];
  v3 = sub_25AEA1978();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = [objc_opt_self() secondarySystemFillColor];
  v5 = sub_25AEA1D68();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D458, &qword_25AEA3CF0);
  *(a1 + *(result + 52)) = v5;
  *(a1 + *(result + 56)) = 256;
  return result;
}

uint64_t sub_25AE46CAC@<X0>(char *a1@<X8>)
{
  v2 = *(sub_25AEA1798() + 20);
  v3 = *MEMORY[0x277CE0118];
  v4 = sub_25AEA1978();
  (*(*(v4 - 8) + 104))(&a1[v2], v3, v4);
  __asm { FMOV            V0.2D, #15.0 }

  *a1 = _Q0;
  v10 = [objc_opt_self() secondarySystemFillColor];
  v11 = sub_25AEA1D68();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D460, &qword_25AEA3CF8);
  *&a1[*(result + 52)] = v11;
  *&a1[*(result + 56)] = 256;
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

unint64_t sub_25AE46E58()
{
  result = qword_27FA1D3E8;
  if (!qword_27FA1D3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D3D8, &qword_25AEA3B88);
    sub_25AE47F60(&qword_27FA1D3F0, &qword_27FA1D3F8, &qword_25AEA3B98, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D3E8);
  }

  return result;
}

uint64_t sub_25AE46F4C()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_dismissEnrollmentFlow);

  v1(v2);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25AE470E0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25AE47128(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25AE47200;

  return sub_25AE45370(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_25AE47200()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25AE472F4@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{
  sub_25AEA1E68();
  v4 = v15;
  v5 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D430, &qword_25AEA3C30);
  sub_25AEA1E68();
  v7 = v15;
  v6 = v16;
  type metadata accessor for EnrollmentCoordinator(0);
  sub_25AE47980(&qword_27FA1D438, type metadata accessor for EnrollmentCoordinator, &unk_25AEA61F8);

  v8 = sub_25AEA16D8();
  v10 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v15);

  v12 = v15;
  v13 = v16;
  if (!v16)
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  *a3 = v8;
  *(a3 + 8) = v10;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  *(a3 + 32) = v7;
  *(a3 + 40) = v6;
  *(a3 + 48) = v12;
  *(a3 + 56) = v13;
  *(a3 + 64) = a2 & 1;
  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25AE4748C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_25AE474D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25AE47538()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D3B0, &unk_25AEA3B20);
  type metadata accessor for ErrorView(255);
  sub_25AE47F60(&qword_27FA1D410, &qword_27FA1D3B0, &unk_25AEA3B20, MEMORY[0x277CE7668]);
  sub_25AE47980(&qword_27FA1D418, type metadata accessor for ErrorView, &protocol conformance descriptor for ErrorView);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_25AE47690()
{
  result = qword_27FA1D4A8;
  if (!qword_27FA1D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D4A8);
  }

  return result;
}

uint64_t objectdestroy_37Tm()
{

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

unint64_t sub_25AE47754()
{
  result = qword_27FA1D4C8;
  if (!qword_27FA1D4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D4C0, &qword_25AEA3D48);
    sub_25AE47810();
    sub_25AE47980(&qword_27FA1D510, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D4C8);
  }

  return result;
}

unint64_t sub_25AE47810()
{
  result = qword_27FA1D4D0;
  if (!qword_27FA1D4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D4D8, &qword_25AEA3D50);
    sub_25AE478C8();
    sub_25AE47F60(&qword_27FA1D500, &qword_27FA1D508, &qword_25AEA3D68, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D4D0);
  }

  return result;
}

unint64_t sub_25AE478C8()
{
  result = qword_27FA1D4E0;
  if (!qword_27FA1D4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D4E8, &qword_25AEA3D58);
    sub_25AE47F60(&qword_27FA1D4F0, &qword_27FA1D4F8, &qword_25AEA3D60, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D4E0);
  }

  return result;
}

uint64_t sub_25AE47980(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25AE479D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25AE479E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25AE47A48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE47AAC(uint64_t a1)
{
  v2 = type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25AE47B08(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t getEnumTagSinglePayload for AudioReviewCell.AudioReviewType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AudioReviewCell.AudioReviewType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25AE47CB8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25AE47D6C()
{
  result = qword_27FA1D550;
  if (!qword_27FA1D550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D450, &qword_25AEA3CE8);
    sub_25AE47E24();
    sub_25AE47F60(&qword_27FA1D580, &qword_27FA1D478, &qword_25AEA3D00, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D550);
  }

  return result;
}

unint64_t sub_25AE47E24()
{
  result = qword_27FA1D558;
  if (!qword_27FA1D558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D560, &qword_25AEA3DD8);
    sub_25AE47EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D558);
  }

  return result;
}

unint64_t sub_25AE47EA8()
{
  result = qword_27FA1D568;
  if (!qword_27FA1D568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D448, &qword_25AEA3CE0);
    sub_25AE47F60(&qword_27FA1D570, &qword_27FA1D578, qword_25AEA3DE0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D568);
  }

  return result;
}

uint64_t sub_25AE47F60(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_25AE47FAC()
{
  result = qword_27FA1D588;
  if (!qword_27FA1D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D588);
  }

  return result;
}

uint64_t sub_25AE4802C()
{
  v0 = sub_25AEA0DB8();
  __swift_allocate_value_buffer(v0, qword_27FA1D590);
  __swift_project_value_buffer(v0, qword_27FA1D590);
  if (qword_27FA1D258 != -1)
  {
    swift_once();
  }

  swift_bridgeObjectRetain_n();
  MEMORY[0x25F859D40](0xD00000000000001DLL, 0x800000025AEA8390);

  sub_25AEA0D58();
}

void sub_25AE4811C()
{
  if ((byte_27FA1D5A8 & 1) == 0)
  {
    byte_27FA1D5A8 = AXDeviceIsUnlocked();
  }

  if (AXDeviceIsUnlocked() && (swift_getKeyPath(), swift_getKeyPath(), sub_25AEA1478(v8), , , (v8[0] & 1) == 0))
  {
    v5 = *(v0 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_persistentContainer);
    v6 = swift_allocObject();
    swift_weakInit();
    v8[4] = sub_25AE49E18;
    v8[5] = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_25AE4991C;
    v8[3] = &block_descriptor_1;
    v7 = _Block_copy(v8);

    [v5 loadPersistentStoresWithCompletionHandler_];
    _Block_release(v7);
  }

  else
  {
    if (qword_27FA1D248 != -1)
    {
      swift_once();
    }

    v1 = sub_25AEA12C8();
    __swift_project_value_buffer(v1, qword_27FA1DF50);
    v2 = sub_25AEA12A8();
    v3 = sub_25AEA24A8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_25AE3C000, v2, v3, "Enrollment Store persistent stores are not ready to be loaded yet", v4, 2u);
      MEMORY[0x25F85AB80](v4, -1, -1);
    }
  }
}

uint64_t sub_25AE48348(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v3);

  return v3;
}

id *sub_25AE483B4()
{
  v65 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1D950, &unk_25AEA4490);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v60 - v5;
  v7 = sub_25AEA0DB8();
  v8 = *(v7 - 8);
  v66 = v7;
  v67 = v8;
  MEMORY[0x28223BE20](v7);
  v61 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v60 - v12;
  v14 = OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService__persistantStoreIsReadyToBeLoaded;
  v69 = 0;
  sub_25AEA1438();
  v63 = v11;
  v64 = v14;
  v15 = *(v11 + 32);
  v16 = &v14[v0];
  v17 = v0;
  v15(v16, v13, v10);
  v18 = OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService__persistentStoreLoadedSuccessfully;
  v68 = 0;
  sub_25AEA1438();
  v62 = v18;
  v15(v17 + v18, v13, v10);
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v19 = qword_27FA22788;
  if (!qword_27FA22788)
  {
    (*(v67 + 56))(v6, 1, 1, v66);
LABEL_9:
    sub_25AE41938(v6, &unk_27FA1D950, &unk_25AEA4490);
    sub_25AE426AC();
    swift_allocError();
    *v26 = 1;
    *(v26 + 8) = 0xD000000000000019;
    *(v26 + 16) = 0x800000025AEA8280;
    swift_willThrow();
LABEL_10:
    v27 = 0;
LABEL_11:
    v28 = *(v63 + 8);
    v28(&v64[v17], v10);
    v28(v17 + v62, v10);
    if (v27)
    {
    }

    swift_deallocPartialClassInstance();
    return v17;
  }

  v60[1] = "onfiguration with identifier ";
  v20 = sub_25AEA2178();
  v21 = sub_25AEA2178();
  v22 = [v19 URLForResource:v20 withExtension:v21];

  v23 = v66;
  if (v22)
  {
    sub_25AEA0D88();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = v67;
  (*(v67 + 56))(v4, v24, 1, v23);
  sub_25AE49BE4(v4, v6, &unk_27FA1D950, &unk_25AEA4490);
  if ((*(v25 + 48))(v6, 1, v23) == 1)
  {
    goto LABEL_9;
  }

  v30 = v61;
  (*(v25 + 32))(v61, v6, v23);
  v31 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v32 = sub_25AEA0D78();
  v33 = [v31 initWithContentsOfURL_];

  if (!v33)
  {
    sub_25AE426AC();
    swift_allocError();
    *v36 = 1;
    *(v36 + 8) = 0xD000000000000019;
    *(v36 + 16) = 0x800000025AEA82A0;
    swift_willThrow();
    (*(v25 + 8))(v30, v23);
    goto LABEL_10;
  }

  *(v17 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_managedObjectModel) = v33;
  v34 = v33;
  v35 = v60[2];
  sub_25AE6A498();
  if (v35)
  {
    (*(v25 + 8))(v61, v23);

    v27 = 1;
    goto LABEL_11;
  }

  v37 = objc_allocWithZone(MEMORY[0x277CBE498]);
  v38 = sub_25AEA2178();
  v39 = [v37 initWithContainerIdentifier_];

  v40 = sub_25AEA2178();
  [v39 setApsConnectionMachServiceName_];

  [v39 setUseDeviceToDeviceEncryption_];
  v41 = [objc_allocWithZone(MEMORY[0x277CBC230]) init];
  [v41 setUseZoneWidePCS_];
  v65 = v41;
  [v39 setContainerOptions_];
  if (qword_27FA1D220 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v23, qword_27FA1D590);
  v42 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
  v43 = sub_25AEA0D78();
  v44 = [v42 initWithURL_];

  [v44 setType_];
  sub_25AE4167C(0, &qword_27FA1D5F8, 0x277CCABB0);
  v45 = sub_25AEA2508();
  [v44 setOption:v45 forKey:*MEMORY[0x277CBE210]];

  v46 = sub_25AEA2508();
  [v44 setOption:v46 forKey:*MEMORY[0x277CBE270]];

  [v44 setCloudKitContainerOptions_];
  v47 = objc_allocWithZone(MEMORY[0x277CBE470]);
  v48 = v34;
  v49 = sub_25AEA2178();
  v50 = [v47 initWithName:v49 managedObjectModel:v48];

  v51 = OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_persistentContainer;
  *(v17 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_persistentContainer) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2A8, &qword_25AEA3E90);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_25AEA3530;
  *(v52 + 32) = v44;
  sub_25AE4167C(0, &qword_27FA1D600, 0x277CBE4E0);
  v64 = v39;
  v53 = v50;
  v54 = v44;
  v55 = sub_25AEA22E8();

  [v53 setPersistentStoreDescriptions_];

  v56 = [*(v17 + v51) viewContext];
  *(v17 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_mainContext) = v56;
  [v56 setAutomaticallyMergesChangesFromParent_];
  [*(v17 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_mainContext) setMergePolicy_];
  v57 = [objc_opt_self() defaultCenter];
  [v57 addObserver:v17 selector:sel_handleRemoteChanges_ name:*MEMORY[0x277CBE260] object:0];

  v58 = CFNotificationCenterGetDarwinNotifyCenter();
  v59 = AXkMobileKeyBagLockStatusNotificationID();
  CFNotificationCenterAddObserver(v58, v17, sub_25AE49A20, v59, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  sub_25AE4811C();
  (*(v67 + 8))(v61, v23);
  return v17;
}

uint64_t sub_25AE48D88()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService__persistantStoreIsReadyToBeLoaded;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService__persistentStoreLoadedSuccessfully, v3);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CoreDataDatabaseService(uint64_t a1)
{
  result = qword_27FA1D5D8;
  if (!qword_27FA1D5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_25AE48F1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v44 = a1;
  v45 = a2;
  v4 = sub_25AEA0E48();
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v14 = sub_25AEA2178();
  v15 = [v13 initWithEntityName_];

  type metadata accessor for NameConfiguration();
  v16 = sub_25AEA24E8();
  if (v2)
  {
  }

  else
  {
    v17 = v50;
    v54 = v12;
    v43 = v6;
    v51 = v4;
    v38 = 0;
    v39 = v15;
    if (v16 >> 62)
    {
      goto LABEL_28;
    }

    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = 0xD000000000000011;
    v19 = v16;
    while (1)
    {
      v20 = v54;
      if (!v18)
      {
        break;
      }

      v21 = 0;
      v49 = v19 & 0xFFFFFFFFFFFFFF8;
      v50 = v19 & 0xC000000000000001;
      v47 = (v17 + 48);
      v48 = (v17 + 56);
      v40 = (v17 + 8);
      v41 = (v17 + 16);
      v46 = v18;
      v42 = v19;
      while (1)
      {
        if (v50)
        {
          v16 = MEMORY[0x25F85A1C0](v21, v19);
        }

        else
        {
          if (v21 >= *(v49 + 16))
          {
            goto LABEL_27;
          }

          v16 = *(v19 + 8 * v21 + 32);
        }

        v3 = v16;
        v22 = v21 + 1;
        v23 = v51;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v24 = [v16 identifier];
        if (v24)
        {
          v25 = v24;
          sub_25AEA0E28();

          v26 = 0;
        }

        else
        {
          v26 = 1;
        }

        (*v48)(v10, v26, 1, v23);
        v17 = v20;
        sub_25AE49BE4(v10, v20, &qword_27FA1D380, &unk_25AEA3E80);
        if ((*v47)(v20, 1, v23))
        {
          sub_25AE41938(v20, &qword_27FA1D380, &unk_25AEA3E80);
        }

        else
        {
          v27 = v43;
          (*v41)(v43, v20, v23);
          sub_25AE41938(v20, &qword_27FA1D380, &unk_25AEA3E80);
          v17 = v27;
          v28 = sub_25AEA0E08();
          v29 = v23;
          v30 = v28;
          v32 = v31;
          (*v40)(v17, v29);
          if (v30 == v44 && v32 == v45)
          {

            goto LABEL_24;
          }

          v33 = sub_25AEA2828();

          v19 = v42;
          if (v33)
          {

LABEL_24:

            return v3;
          }
        }

        ++v21;
        v3 = 0xD000000000000011;
        v20 = v54;
        if (v22 == v46)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      v19 = v16;
      v16 = sub_25AEA25B8();
      v18 = v16;
      v3 = 0xD000000000000011;
    }

LABEL_22:

    v52 = 0;
    v53 = 0xE000000000000000;
    sub_25AEA2688();

    v52 = 0xD00000000000002DLL;
    v53 = 0x800000025AEA8230;
    MEMORY[0x25F859D40](v44, v45);
    v34 = v52;
    v35 = v53;
    sub_25AE426AC();
    swift_allocError();
    *v36 = 1;
    *(v36 + 8) = v34;
    *(v36 + 16) = v35;
    swift_willThrow();
  }

  return v3;
}

id sub_25AE493E4()
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (AXDeviceIsUnlocked())
  {
    v1 = *(v0 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_mainContext);
    result = [v1 hasChanges];
    if (!result)
    {
      return result;
    }

    v5[0] = 0;
    if ([v1 save_])
    {
      return v5[0];
    }

    v4 = v5[0];
    sub_25AEA0D08();
  }

  else
  {
    sub_25AE426AC();
    swift_allocError();
    *v3 = 2;
    *(v3 + 8) = 0xD000000000000010;
    *(v3 + 16) = 0x800000025AEA81F0;
  }

  return swift_willThrow();
}

void sub_25AE49500()
{
  v2 = v0;
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v4 = sub_25AEA2178();
  v5 = [v3 initWithEntityName_];

  v6 = *(v2 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_mainContext);
  type metadata accessor for NameConfiguration();
  v7 = sub_25AEA24E8();
  if (v1)
  {
  }

  else
  {
    v8 = v7;
    if (v7 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25AEA25B8())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x25F85A1C0](v10, v8);
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        [v6 deleteObject_];

        ++v10;
        if (v13 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:

    sub_25AE493E4();
  }
}

void sub_25AE496A0(void *a1, id a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    sub_25AEA2688();
    MEMORY[0x25F859D40](0xD000000000000022, 0x800000025AEA8360);
    v6 = [a1 description];
    v7 = sub_25AEA21A8();
    v9 = v8;

    MEMORY[0x25F859D40](v7, v9);

    MEMORY[0x25F859D40](0x3A726F727245203ALL, 0xE900000000000020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
    sub_25AEA2738();
    sub_25AE426AC();
    v10 = swift_allocError();
    *v11 = 1;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0xE000000000000000;
    NRLogError(_:additionalMessage:)(v10, 0, 0);
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_25AEA1488();
    }

    if (qword_27FA1D248 != -1)
    {
      swift_once();
    }

    v12 = sub_25AEA12C8();
    __swift_project_value_buffer(v12, qword_27FA1DF50);
    v13 = sub_25AEA12A8();
    v14 = sub_25AEA24A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_25AE3C000, v13, v14, "Successuflly loaded persistant store.", v15, 2u);
      MEMORY[0x25F85AB80](v15, -1, -1);
    }
  }
}

void sub_25AE4991C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void sub_25AE499A8(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1488();
  sub_25AE4811C();
}

void sub_25AE49AF0(uint64_t a1)
{
  sub_25AE49B94();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_25AE49B94()
{
  if (!qword_27FA1D5E8)
  {
    v0 = sub_25AEA1498();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA1D5E8);
    }
  }
}

uint64_t sub_25AE49BE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25AE49C4C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t sub_25AE49CC0@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v6);

  *a4 = v6;
  return result;
}

void sub_25AE49D3C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1488();
  sub_25AE4811C();
}

uint64_t sub_25AE49DE0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25AE49E38(uint64_t a1)
{
  result = AXDeviceIsUnlocked();
  if (result && a1 && (byte_27FA1D5A8 & 1) == 0)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_25AEA1478(v4);

    if ((v4[0] & 1) == 0)
    {
      v4[4] = sub_25AE49FAC;
      v4[5] = a1;
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 1107296256;
      v4[2] = sub_25AE93330;
      v4[3] = &block_descriptor_13;
      v3 = _Block_copy(v4);

      AXPerformBlockOnMainThread();
      _Block_release(v3);
      if ((byte_27FA1D5A8 & 1) == 0)
      {
        byte_27FA1D5A8 = AXDeviceIsUnlocked();
      }

      AXDeviceIsUnlocked();
    }
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_25AE4A080()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D6B0, &unk_25AEA40C0);
  sub_25AEA1E78();

  v1 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v1 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v1)
  {
    sub_25AEA1E78();
    v2 = sub_25AEA2208();

    if (*(v0 + 80) >= v2)
    {
      v3 = *(v0 + 8);
      sub_25AEA1E78();
      v4 = *(v3 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_currentEnrolledNames);
      if (v4)
      {

        v5 = sub_25AE4DFE4(v7, v8, v4);

        LOBYTE(v1) = v5 ^ 1;
      }

      else
      {

        LOBYTE(v1) = 1;
      }
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

uint64_t sub_25AE4A1D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_25AEA1238();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3A8, &qword_25AEA3B18);
  MEMORY[0x28223BE20](v7 - 8);
  v41[4] = v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D620, &qword_25AEA3FF0);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v42 = v41 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D628, &qword_25AEA3FF8);
  MEMORY[0x28223BE20](v45);
  v46 = v41 - v11;
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v12 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v13 = qword_27FA22788;
    v14 = qword_27FA22788;
  }

  else
  {
    v14 = [objc_opt_self() mainBundle];
    v13 = 0;
  }

  v15 = v13;
  v16 = sub_25AEA0CC8();
  v18 = v17;

  v48 = v16;
  v49 = v18;
  v41[3] = sub_25AEA2278();
  v41[2] = v19;
  v20 = v15;
  if (!v12)
  {
    v20 = [objc_opt_self() mainBundle];
  }

  v21 = v15;
  v22 = sub_25AEA0CC8();
  v24 = v23;

  v48 = v22;
  v49 = v24;
  v41[1] = sub_25AEA2278();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3B8, &unk_25AEA4000);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_25AEA3F30;
  sub_25AEA1228();
  sub_25AEA1208();
  sub_25AEA1218();
  v48 = v25;
  sub_25AE4F5B8(&qword_27FA1D3C0, MEMORY[0x277CE7670], MEMORY[0x277CE7680]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3C8, &qword_25AEA3B80);
  sub_25AE47F60(&qword_27FA1D3D0, &qword_27FA1D3C8, &qword_25AEA3B80, MEMORY[0x277D83970]);
  sub_25AEA2578();
  sub_25AEA1F38();
  v26 = (*(v4 + 8))(v6, v3);
  MEMORY[0x28223BE20](v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D630, &qword_25AEA4010);
  sub_25AE4DD40();
  v27 = v42;
  v28 = sub_25AEA11F8();
  MEMORY[0x28223BE20](v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D650, &qword_25AEA4020);
  sub_25AE47F60(&qword_27FA1D658, &qword_27FA1D620, &qword_25AEA3FF0, MEMORY[0x277CE7668]);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D660, &unk_25AEA4028);
  v30 = sub_25AE47F60(&qword_27FA1D668, &qword_27FA1D660, &unk_25AEA4028, MEMORY[0x277CDD7A8]);
  v48 = v29;
  v49 = v30;
  swift_getOpaqueTypeConformance2();
  v31 = v46;
  v32 = v44;
  sub_25AEA1D28();
  (*(v43 + 8))(v27, v32);
  v33 = swift_allocObject();
  v34 = *(v2 + 48);
  *(v33 + 48) = *(v2 + 32);
  *(v33 + 64) = v34;
  *(v33 + 80) = *(v2 + 64);
  *(v33 + 96) = *(v2 + 80);
  v35 = *(v2 + 16);
  *(v33 + 16) = *v2;
  *(v33 + 32) = v35;
  v36 = (v31 + *(v45 + 36));
  *v36 = sub_25AE4DE04;
  v36[1] = v33;
  v36[2] = 0;
  v36[3] = 0;
  v50 = *(v2 + 40);
  sub_25AE4DE0C(v2, &v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  sub_25AEA1E98();
  v37 = swift_allocObject();
  v38 = *(v2 + 48);
  *(v37 + 48) = *(v2 + 32);
  *(v37 + 64) = v38;
  *(v37 + 80) = *(v2 + 64);
  *(v37 + 96) = *(v2 + 80);
  v39 = *(v2 + 16);
  *(v37 + 16) = *v2;
  *(v37 + 32) = v39;
  sub_25AE4DE0C(v2, &v48);
  type metadata accessor for ErrorView(0);
  sub_25AE4DE4C();
  sub_25AE4F5B8(&qword_27FA1D418, type metadata accessor for ErrorView, &protocol conformance descriptor for ErrorView);
  sub_25AEA1CF8();

  return sub_25AE41938(v31, &qword_27FA1D628, &qword_25AEA3FF8);
}

double sub_25AE4AA58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_25AEA1988();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D6C8, &qword_25AEA4130);
  sub_25AE4AAF0(a1, (a2 + *(v4 + 44)));
  LOBYTE(a1) = sub_25AEA1AE8();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D630, &qword_25AEA4010) + 36);
  *v5 = a1;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_25AE4AAF0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v94 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D6D0, &qword_25AEA4138);
  v99 = *(v3 - 8);
  v100 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v98 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v101 = &v89 - v6;
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v7 = qword_27FA22788;
  v91 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v8 = qword_27FA22788;
  }

  else
  {
    v7 = [objc_opt_self() mainBundle];
    v8 = 0;
  }

  v90 = v8;
  v9 = sub_25AEA0CC8();
  v11 = v10;

  *&v110 = v9;
  *(&v110 + 1) = v11;
  v12 = sub_25AEA2278();
  v14 = v13;
  v116 = *(a1 + 16);
  v117 = *(a1 + 32);
  v104 = *(a1 + 16);
  *&v105 = *(a1 + 32);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D6B0, &unk_25AEA40C0);
  sub_25AEA1E98();
  v97 = v110;
  v16 = v111;
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v20 = swift_allocObject();
  v21 = *(a1 + 48);
  *(v20 + 48) = *(a1 + 32);
  *(v20 + 64) = v21;
  *(v20 + 80) = *(a1 + 64);
  *(v20 + 96) = *(a1 + 80);
  v22 = *(a1 + 16);
  *(v20 + 16) = *a1;
  *(v20 + 32) = v22;
  *&v104 = v12;
  *(&v104 + 1) = v14;
  v105 = v97;
  v106 = v16;
  LOBYTE(v107) = v17;
  *(&v107 + 1) = v18;
  LOBYTE(v108) = v19;
  *(&v108 + 1) = sub_25AE4E95C;
  v109 = v20;
  v102 = v116;
  v103 = v117;

  sub_25AE4DE0C(a1, &v110);
  sub_25AEA1E78();
  v102 = v110;
  v23 = swift_allocObject();
  v24 = *(a1 + 48);
  *(v23 + 48) = *(a1 + 32);
  *(v23 + 64) = v24;
  *(v23 + 80) = *(a1 + 64);
  *(v23 + 96) = *(a1 + 80);
  v25 = *(a1 + 16);
  *(v23 + 16) = *a1;
  *(v23 + 32) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_25AE4E9EC;
  *(v26 + 24) = v23;
  sub_25AE4DE0C(a1, &v110);
  sub_25AE4EA88();
  sub_25AEA1D38();

  v112 = v106;
  v113 = v107;
  v114 = v108;
  v115 = v109;
  v110 = v104;
  v111 = v105;
  sub_25AE4EADC(&v110);
  v104 = v116;
  *&v105 = v117;
  v93 = v15;
  sub_25AEA1E78();
  v27 = sub_25AEA2208();

  v28 = 0;
  v29 = 0;
  v30 = 0;
  v95 = 0;
  if (*(a1 + 80) < v27)
  {
    sub_25AEA1958();
    v31 = v90;
    v32 = sub_25AEA1BB8();
    v34 = v33;
    v36 = v35;
    sub_25AEA1D88();
    v37 = sub_25AEA1B78();
    *&v97 = v38;
    v40 = v39;

    sub_25AE479D0(v32, v34, v36 & 1);

    sub_25AEA1B38();
    v41 = v40;
    v42 = v97;
    v28 = sub_25AEA1B98();
    v29 = v43;
    LODWORD(v96) = v44;
    v46 = v45;

    sub_25AE479D0(v37, v42, v41 & 1);

    v30 = v96 & 1;
    sub_25AE47B08(v28, v29, v96 & 1);
    v95 = v46;
  }

  v96 = v30;
  v47 = *(a1 + 8);
  v104 = v116;
  *&v105 = v117;
  sub_25AEA1E78();
  v48 = *(&v102 + 1);
  v49 = *(v47 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_currentEnrolledNames);
  v92 = v28;
  *&v97 = v29;
  if (!v49)
  {

    goto LABEL_12;
  }

  v50 = v102;

  LOBYTE(v50) = sub_25AE4DFE4(v50, v48, v49);

  if ((v50 & 1) == 0)
  {
LABEL_12:
    v93 = 0;
    v70 = 0;
    v72 = 0;
    v73 = 0;
    goto LABEL_13;
  }

  sub_25AEA1958();
  v51 = v90;
  v52 = sub_25AEA1BB8();
  v54 = v53;
  v56 = v55;
  sub_25AEA1D88();
  v57 = sub_25AEA1B78();
  v59 = v58;
  v61 = v60;

  sub_25AE479D0(v52, v54, v56 & 1);

  sub_25AEA1B38();
  v62 = v59;
  v63 = sub_25AEA1B98();
  v65 = v64;
  v67 = v66;
  v69 = v68;

  sub_25AE479D0(v57, v62, v61 & 1);

  v93 = v63;
  v70 = v65;
  v71 = v65;
  v72 = v67 & 1;
  sub_25AE47B08(v63, v71, v67 & 1);
  v73 = v69;

LABEL_13:
  v74 = v98;
  v75 = *(v99 + 16);
  v76 = v100;
  v75(v98, v101, v100);
  v77 = v94;
  v75(v94, v74, v76);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D6E0, &qword_25AEA4140);
  v79 = &v77[*(v78 + 48)];
  v80 = v92;
  v81 = v96;
  v82 = v97;
  *v79 = v92;
  v79[1] = v82;
  v83 = v95;
  v79[2] = v81;
  v79[3] = v83;
  v84 = &v77[*(v78 + 64)];
  sub_25AE4EB0C(v80, v82, v81, v83);
  v85 = v93;
  sub_25AE4EB0C(v93, v70, v72, v73);
  sub_25AE4EB50(v80, v82, v81, v83);
  sub_25AE4EB50(v85, v70, v72, v73);
  *v84 = v85;
  v84[1] = v70;
  v84[2] = v72;
  v84[3] = v73;
  v86 = v100;
  v87 = *(v99 + 8);
  v87(v101, v100);
  sub_25AE4EB50(v85, v70, v72, v73);
  sub_25AE4EB50(v80, v97, v96, v83);
  return (v87)(v98, v86);
}

uint64_t sub_25AE4B370(uint64_t a1)
{
  v2 = sub_25AEA1A28();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D660, &unk_25AEA4028);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_25AEA1A08();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D680, &qword_25AEA4078);
  sub_25AE4E590();
  sub_25AEA1618();
  v7 = sub_25AE47F60(&qword_27FA1D668, &qword_27FA1D660, &unk_25AEA4028, MEMORY[0x277CDD7A8]);
  MEMORY[0x25F859550](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_25AE4B528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  v5 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = *(a1 + 80);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  sub_25AE4DE0C(a1, v11);
  sub_25AEA1EB8();
  LOBYTE(a1) = sub_25AE4A080();
  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = (a1 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D680, &qword_25AEA4078);
  v10 = (a2 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = sub_25AE4E714;
  v10[2] = v8;
  return result;
}

uint64_t sub_25AE4B658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16[-v6 - 8];
  v8 = sub_25AEA2388();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_25AEA2368();
  sub_25AE4DE0C(a1, v16);
  v9 = sub_25AEA2358();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  v12 = *(a1 + 48);
  *(v10 + 64) = *(a1 + 32);
  *(v10 + 80) = v12;
  *(v10 + 96) = *(a1 + 64);
  *(v10 + 112) = *(a1 + 80);
  v13 = *(a1 + 16);
  *(v10 + 32) = *a1;
  *(v10 + 48) = v13;
  sub_25AE82E98(0, 0, v7, a3, v10);
}

uint64_t sub_25AE4B79C@<X0>(uint64_t a1@<X8>)
{
  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA22788;
  result = sub_25AEA1BB8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_25AE4B870(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D678, &qword_25AEA4070);
  sub_25AEA1548();
  sub_25AE80F8C();
}

uint64_t sub_25AE4B8D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v4 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v5 = qword_27FA22788;
    v6 = qword_27FA22788;
  }

  else
  {
    v6 = [objc_opt_self() mainBundle];
    v5 = 0;
  }

  v7 = v5;
  v8 = sub_25AEA0CC8();
  v10 = v9;

  v35 = v8;
  v36 = v10;
  v11 = sub_25AEA2278();
  v13 = v12;
  v14 = v7;
  if (!v4)
  {
    v14 = [objc_opt_self() mainBundle];
  }

  v15 = v7;
  v16 = sub_25AEA0CC8();
  v18 = v17;

  v35 = v16;
  v36 = v18;
  v19 = sub_25AEA2278();
  v21 = v20;
  v22 = swift_allocObject();
  v23 = *(a1 + 48);
  *(v22 + 48) = *(a1 + 32);
  *(v22 + 64) = v23;
  *(v22 + 80) = *(a1 + 64);
  *(v22 + 96) = *(a1 + 80);
  v24 = *(a1 + 16);
  *(v22 + 16) = *a1;
  *(v22 + 32) = v24;
  v25 = swift_allocObject();
  v26 = *(a1 + 48);
  *(v25 + 48) = *(a1 + 32);
  *(v25 + 64) = v26;
  *(v25 + 80) = *(a1 + 64);
  *(v25 + 96) = *(a1 + 80);
  v27 = *(a1 + 16);
  *(v25 + 16) = *a1;
  *(v25 + 32) = v27;
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D420, &qword_25AEA47E0);
  swift_storeEnumTagMultiPayload();
  v28 = type metadata accessor for ErrorView(0);
  v29 = (a2 + v28[5]);
  *v29 = v11;
  v29[1] = v13;
  v30 = (a2 + v28[6]);
  *v30 = v19;
  v30[1] = v21;
  *(a2 + v28[7]) = 0;
  v31 = (a2 + v28[8]);
  *v31 = sub_25AE46F24;
  v31[1] = v22;
  v32 = (a2 + v28[9]);
  *v32 = sub_25AE46F4C;
  v32[1] = v25;
  v33 = (a2 + v28[10]);
  *v33 = 0;
  v33[1] = 0;
  sub_25AE4DE0C(a1, &v35);
  return sub_25AE4DE0C(a1, &v35);
}

uint64_t sub_25AE4BBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[36] = a4;
  v5 = sub_25AEA0B88();
  v4[37] = v5;
  v4[38] = *(v5 - 8);
  v4[39] = swift_task_alloc();
  sub_25AEA2368();
  v4[40] = sub_25AEA2358();
  v7 = sub_25AEA2348();
  v4[41] = v7;
  v4[42] = v6;

  return MEMORY[0x2822009F8](sub_25AE4BCCC, v7, v6);
}

uint64_t sub_25AE4BCCC()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  *(v0 + 128) = *(v3 + 16);
  v5 = *(v3 + 32);
  *(v0 + 112) = *(v3 + 16);
  *(v0 + 272) = v5;
  *(v0 + 16) = *(v3 + 16);
  *(v0 + 32) = v5;
  sub_25AE4E7E0(v0 + 112, v0 + 160);
  sub_25AE4E83C(v0 + 272, v0 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D6B0, &unk_25AEA40C0);
  sub_25AEA1E78();
  v6 = *(v0 + 152);
  *(v0 + 176) = *(v0 + 144);
  *(v0 + 184) = v6;
  sub_25AEA0B48();
  sub_25AE4E8AC();
  v7 = sub_25AEA2558();
  v9 = v8;
  (*(v2 + 8))(v1, v4);

  *(v0 + 192) = v7;
  *(v0 + 40) = *(v0 + 128);
  *(v0 + 56) = v5;
  *(v0 + 200) = v9;
  sub_25AEA1E88();
  sub_25AE4E900(v0 + 112);
  sub_25AE41938(v0 + 272, &qword_27FA1D6B8, &qword_25AEA40E0);
  if (sub_25AE4A080())
  {
    *(v0 + 344) = *(*(v0 + 288) + 8);
    *(v0 + 64) = *(v0 + 128);
    *(v0 + 80) = v5;

    sub_25AEA1E78();
    v10 = *(v0 + 208);
    v11 = *(v0 + 216);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 224) = v10;
    *(v0 + 232) = v11;
    sub_25AEA1488();
    *(v0 + 88) = *(v0 + 128);
    *(v0 + 104) = v5;
    sub_25AEA1E78();
    v13 = *(v0 + 240);
    v12 = *(v0 + 248);
    *(v0 + 352) = v12;
    v14 = swift_task_alloc();
    *(v0 + 360) = v14;
    *v14 = v0;
    v14[1] = sub_25AE4BF74;

    return sub_25AE7B6EC(v13, v12);
  }

  else
  {

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_25AE4BF74()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = *(v2 + 328);
    v4 = *(v2 + 336);
    v5 = sub_25AE4C100;
  }

  else
  {

    v3 = *(v2 + 328);
    v4 = *(v2 + 336);
    v5 = sub_25AE4C090;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_25AE4C090()
{

  sub_25AE7AE1C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25AE4C100()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 288);

  *(v0 + 256) = *(v2 + 40);
  *(v0 + 376) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  sub_25AEA1E88();
  NRLogError(_:additionalMessage:)(v1, 0, 0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25AE4C21C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D6F0, &qword_25AEA4208);
  MEMORY[0x28223BE20](v4);
  v6 = &v26[-v5];
  *v6 = sub_25AEA1908();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D6F8, &qword_25AEA4210);
  sub_25AE4C51C(v2, &v6[*(v7 + 44)]);
  v8 = sub_25AEA1AC8();
  v9 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D700, &unk_25AEA4218) + 36)];
  *v9 = v8;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  v9[40] = 1;
  v10 = &v6[*(v4 + 36)];
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_25AEA1978();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  v13 = [objc_opt_self() tertiarySystemFillColor];
  v14 = sub_25AEA1D68();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D458, &qword_25AEA3CF0);
  *&v10[*(v15 + 52)] = v14;
  *&v10[*(v15 + 56)] = 256;
  v16 = sub_25AEA1FE8();
  v18 = v17;
  v19 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D708, &qword_25AEA4228) + 36)];
  *v19 = v16;
  v19[1] = v18;
  v20 = swift_allocObject();
  v21 = *(v2 + 48);
  *(v20 + 48) = *(v2 + 32);
  *(v20 + 64) = v21;
  *(v20 + 80) = *(v2 + 64);
  *(v20 + 96) = *(v2 + 80);
  v22 = *(v2 + 16);
  *(v20 + 16) = *v2;
  *(v20 + 32) = v22;
  sub_25AE4EED8(v2, &v27);
  sub_25AE4EF10();
  sub_25AEA1C58();

  sub_25AE41938(v6, &qword_27FA1D6F0, &qword_25AEA4208);
  LOBYTE(v4) = sub_25AEA1AE8();
  v23 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D738, &qword_25AEA4238) + 36);
  *v23 = v4;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  *(v23 + 40) = 1;
  v27 = *(v2 + 48);
  v28 = *(v2 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D678, &qword_25AEA4070);
  sub_25AEA1538();
  LOBYTE(v4) = v26[15];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D740, &qword_25AEA4240);
  v25 = a1 + *(result + 36);
  *v25 = 0;
  *(v25 + 8) = v4;
  return result;
}

uint64_t sub_25AE4C51C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v151 = a2;
  v113 = sub_25AEA1788();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D748, &qword_25AEA4248);
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v102 = v101 - v4;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D750, &qword_25AEA4250);
  MEMORY[0x28223BE20](v108);
  v106 = v101 - v5;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D758, &qword_25AEA4258);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v107 = v101 - v6;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D760, &qword_25AEA4260);
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v104 = v101 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D768, &qword_25AEA4268);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v150 = v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v147 = v101 - v11;
  v143 = sub_25AEA1728();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v141 = v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D770, &qword_25AEA4270);
  MEMORY[0x28223BE20](v13 - 8);
  v140 = v101 - v14;
  v139 = sub_25AEA1608();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v137 = v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_25AEA19B8();
  v133 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v121 = v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D778, &qword_25AEA4278);
  v118 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v101 - v18;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D780, &qword_25AEA4280);
  v123 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v114 = v101 - v20;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D788, &qword_25AEA4288);
  v125 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v115 = v101 - v21;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D790, &qword_25AEA4290);
  v128 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v116 = v101 - v22;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D798, &qword_25AEA4298);
  v130 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v117 = v101 - v23;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D7A0, &qword_25AEA42A0);
  v136 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v119 = v101 - v24;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D7A8, &qword_25AEA42A8);
  MEMORY[0x28223BE20](v132);
  v126 = v101 - v25;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D7B0, &qword_25AEA42B0);
  v145 = *(v146 - 8);
  v26 = MEMORY[0x28223BE20](v146);
  v144 = v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v120 = v101 - v28;
  v29 = *a1;
  v30 = a1[1];
  v31 = *(a1 + 2);
  v155 = *(a1 + 1);
  v156 = v31;
  v32 = *(a1 + 2);
  v152 = *(a1 + 1);
  v153 = v32;

  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D7B8, &qword_25AEA42B8);
  sub_25AEA1F28();
  *&v152 = v29;
  *(&v152 + 1) = v30;
  v101[1] = sub_25AE4E8AC();
  sub_25AEA2048();
  v152 = *(a1 + 3);
  LOBYTE(v153) = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D678, &qword_25AEA4070);
  sub_25AEA1558();
  v33 = sub_25AE47F60(&qword_27FA1D7C0, &qword_27FA1D778, &qword_25AEA4278, MEMORY[0x277CDF1A8]);
  v34 = v114;
  sub_25AEA1D08();

  (*(v118 + 8))(v19, v17);
  v35 = v121;
  sub_25AEA19A8();
  *&v152 = v17;
  *(&v152 + 1) = v33;
  v36 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = sub_25AE4F5B8(&qword_27FA1D7C8, MEMORY[0x277CDDF20], MEMORY[0x277CDDF18]);
  v39 = v115;
  v40 = v35;
  v41 = v122;
  v42 = v131;
  sub_25AEA1C78();
  (*(v133 + 8))(v40, v42);
  (*(v123 + 8))(v34, v41);
  *&v152 = v41;
  *(&v152 + 1) = v42;
  *&v153 = OpaqueTypeConformance2;
  *(&v153 + 1) = v38;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v116;
  v45 = v124;
  MEMORY[0x25F8597D0](1, v124, v43);
  (*(v125 + 8))(v39, v45);
  v46 = v137;
  sub_25AEA15F8();
  *&v152 = v45;
  *(&v152 + 1) = v43;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v117;
  v49 = v127;
  sub_25AEA1C38();
  (*(v138 + 8))(v46, v139);
  (*(v128 + 8))(v44, v49);
  *&v152 = v49;
  *(&v152 + 1) = v47;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v119;
  v52 = v129;
  sub_25AEA1C48();
  v53 = v52;
  (*(v130 + 8))(v48, v52);
  v54 = v140;
  sub_25AEA1A78();
  v55 = sub_25AEA1A88();
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
  *&v152 = v53;
  *(&v152 + 1) = v50;
  swift_getOpaqueTypeConformance2();
  v56 = v126;
  v57 = v134;
  sub_25AEA1CD8();
  sub_25AE41938(v54, &qword_27FA1D770, &qword_25AEA4270);
  (*(v136 + 8))(v51, v57);
  KeyPath = swift_getKeyPath();
  v59 = v56 + *(v132 + 36);
  *v59 = KeyPath;
  *(v59 + 8) = 0;
  v60 = swift_allocObject();
  v61 = *(a1 + 3);
  *(v60 + 48) = *(a1 + 2);
  *(v60 + 64) = v61;
  *(v60 + 80) = *(a1 + 4);
  *(v60 + 96) = a1[10];
  v62 = *(a1 + 1);
  *(v60 + 16) = *a1;
  *(v60 + 32) = v62;
  sub_25AE4EED8(a1, &v152);
  v63 = v141;
  sub_25AEA1718();
  sub_25AE4F0FC();
  v64 = v120;
  sub_25AEA1D48();

  (*(v142 + 8))(v63, v143);
  sub_25AE41938(v56, &qword_27FA1D7A8, &qword_25AEA42A8);
  v152 = v155;
  v153 = v156;
  MEMORY[0x25F859A10](v154, v135);
  v66 = v154[0];
  v65 = v154[1];

  v67 = HIBYTE(v65) & 0xF;
  if ((v65 & 0x2000000000000000) == 0)
  {
    v67 = v66 & 0xFFFFFFFFFFFFLL;
  }

  if (v67)
  {
    v68 = swift_allocObject();
    v69 = *(a1 + 3);
    *(v68 + 48) = *(a1 + 2);
    *(v68 + 64) = v69;
    *(v68 + 80) = *(a1 + 4);
    *(v68 + 96) = a1[10];
    v70 = *(a1 + 1);
    *(v68 + 16) = *a1;
    *(v68 + 32) = v70;
    sub_25AE4EED8(a1, &v152);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D7E8, &qword_25AEA42F8);
    sub_25AE4F418();
    v71 = v102;
    sub_25AEA1EB8();
    if (qword_27FA1D250 != -1)
    {
      swift_once();
    }

    v72 = qword_27FA22788;
    if (qword_27FA22788)
    {
      v73 = qword_27FA22788;
    }

    else
    {
      v73 = [objc_opt_self() mainBundle];
      v72 = 0;
    }

    v77 = v72;
    v78 = sub_25AEA0CC8();
    v80 = v79;

    *&v152 = v78;
    *(&v152 + 1) = v80;
    *&v152 = sub_25AEA2278();
    *(&v152 + 1) = v81;
    sub_25AE47F60(&qword_27FA1D808, &qword_27FA1D748, &qword_25AEA4248, MEMORY[0x277CDF028]);
    v82 = v106;
    v83 = v105;
    sub_25AEA1CA8();

    (*(v103 + 8))(v71, v83);
    v84 = v111;
    sub_25AEA1778();
    v85 = sub_25AE4F4D0();
    v86 = sub_25AE4F5B8(&qword_27FA1D818, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v87 = v107;
    v88 = v108;
    v89 = v113;
    sub_25AEA1C18();
    (*(v112 + 8))(v84, v89);
    sub_25AE41938(v82, &qword_27FA1D750, &qword_25AEA4250);
    *&v152 = v88;
    *(&v152 + 1) = v89;
    *&v153 = v85;
    *(&v153 + 1) = v86;
    swift_getOpaqueTypeConformance2();
    v90 = v104;
    v91 = v110;
    sub_25AEA1D58();
    (*(v109 + 8))(v87, v91);
    v75 = v148;
    v76 = v147;
    v74 = v149;
    (*(v148 + 32))(v147, v90, v149);
    v36 = 0;
  }

  else
  {
    v74 = v149;
    v75 = v148;
    v76 = v147;
  }

  (*(v75 + 56))(v76, v36, 1, v74);
  v92 = v145;
  v93 = *(v145 + 16);
  v94 = v144;
  v95 = v146;
  v93(v144, v64, v146);
  v96 = v150;
  sub_25AE4F600(v76, v150);
  v97 = v151;
  v93(v151, v94, v95);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D820, &qword_25AEA4308);
  sub_25AE4F600(v96, &v97[*(v98 + 48)]);
  sub_25AE41938(v76, &qword_27FA1D768, &qword_25AEA4268);
  v99 = *(v92 + 8);
  v99(v64, v95);
  sub_25AE41938(v96, &qword_27FA1D768, &qword_25AEA4268);
  return (v99)(v94, v95);
}

uint64_t sub_25AE4D9B0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D7B8, &qword_25AEA42B8);
  sub_25AEA1F08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D678, &qword_25AEA4070);
  return sub_25AEA1548();
}

uint64_t sub_25AE4DA48@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25AEA1E08();
  v3 = sub_25AEA1DE8();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_25AE4DAF8()
{
  v0 = sub_25AEA0B88();
  __swift_allocate_value_buffer(v0, qword_27FA1D608);
  __swift_project_value_buffer(v0, qword_27FA1D608);
  sub_25AEA0B68();
  return sub_25AEA0B58();
}

uint64_t sub_25AE4DB58(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = 0;
    v16 = a2 & 0xFFFFFFFFFFFFFFLL;
    v14 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_25AEA2678();
        v9 = v8;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v15[0] = a1;
          v15[1] = v16;
          v7 = v15 + v5;
        }

        else
        {
          v6 = v14;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v6 = sub_25AEA26E8();
          }

          v7 = (v6 + v5);
        }

        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v12 = (__clz(*v7 ^ 0xFF) - 24);
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v9 = 3;
          }

          else
          {
            v9 = 4;
          }

          goto LABEL_15;
        }

        if (v12 == 1)
        {
LABEL_14:
          v9 = 1;
        }

        else
        {
          v9 = 2;
        }
      }

LABEL_15:
      if (qword_27FA1D228 != -1)
      {
        swift_once();
      }

      v10 = sub_25AEA0B88();
      __swift_project_value_buffer(v10, qword_27FA1D608);
      v11 = sub_25AEA0B78();
      if ((v11 & 1) == 0)
      {
        v5 += v9;
        if (v5 < v2)
        {
          continue;
        }
      }

      return v11 & 1;
    }
  }

  v11 = 0;
  return v11 & 1;
}

unint64_t sub_25AE4DD40()
{
  result = qword_27FA1D638;
  if (!qword_27FA1D638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D630, &qword_25AEA4010);
    sub_25AE47F60(&qword_27FA1D640, &qword_27FA1D648, &qword_25AEA4018, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D638);
  }

  return result;
}

unint64_t sub_25AE4DE4C()
{
  result = qword_27FA1D670;
  if (!qword_27FA1D670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D628, &qword_25AEA3FF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D620, &qword_25AEA3FF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D650, &qword_25AEA4020);
    sub_25AE47F60(&qword_27FA1D658, &qword_27FA1D620, &qword_25AEA3FF0, MEMORY[0x277CE7668]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D660, &unk_25AEA4028);
    sub_25AE47F60(&qword_27FA1D668, &qword_27FA1D660, &unk_25AEA4028, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D670);
  }

  return result;
}

uint64_t sub_25AE4DFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_25AEA28B8();
  sub_25AEA21F8();
  v6 = sub_25AEA28D8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_25AEA2828() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_25AE4E0DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_25AEA0EB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_25AE4F5B8(&qword_27FA1D2F8, MEMORY[0x277CC9788], MEMORY[0x277CC9798]), v7 = sub_25AEA2148(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_25AE4F5B8(&qword_27FA1E220, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
      v15 = sub_25AEA2168();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_25AE4E2F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25AEA18B8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AE4E364@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25AEA17D8();
  *a1 = result;
  return result;
}

uint64_t sub_25AE4E3BC(uint64_t a1, uint64_t a2)
{
  sub_25AE4EB94();

  sub_25AEA2428();
  v2 = sub_25AEA2238();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    do
    {
      if (sub_25AE4DB58(v4, v5))
      {
        MEMORY[0x25F859D30](v4, v5);
      }

      v4 = sub_25AEA2238();
      v5 = v6;
    }

    while (v6);
  }

  sub_25AE4E8AC();
  sub_25AEA2568();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D6B0, &unk_25AEA40C0);
  return sub_25AEA1E88();
}

unint64_t sub_25AE4E590()
{
  result = qword_27FA1D688;
  if (!qword_27FA1D688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D680, &qword_25AEA4078);
    sub_25AE47F60(&qword_27FA1D690, &qword_27FA1D698, &qword_25AEA4080, MEMORY[0x277CDF028]);
    sub_25AE47F60(&qword_27FA1D6A0, &qword_27FA1D6A8, &qword_25AEA4088, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D688);
  }

  return result;
}

uint64_t sub_25AE4E6AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25AEA18B8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AE4E730(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25AE4F874;

  return sub_25AE4BBD8(a1, v4, v5, v1 + 32);
}

uint64_t sub_25AE4E83C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D6B8, &qword_25AEA40E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25AE4E8AC()
{
  result = qword_27FA1D6C0;
  if (!qword_27FA1D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D6C0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_25AE4EA18()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_25AE4EA88()
{
  result = qword_27FA1D6D8;
  if (!qword_27FA1D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D6D8);
  }

  return result;
}

uint64_t sub_25AE4EB0C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_25AE47B08(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_25AE4EB50(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_25AE479D0(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_25AE4EB94()
{
  result = qword_27FA1D6E8;
  if (!qword_27FA1D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D6E8);
  }

  return result;
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_25AE4EC48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25AE47200;

  return sub_25AE4BBD8(a1, v4, v5, v1 + 32);
}

uint64_t sub_25AE4ECF8(uint64_t a1, int a2)
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

uint64_t sub_25AE4ED40(uint64_t result, int a2, int a3)
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

uint64_t sub_25AE4EDA4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D628, &qword_25AEA3FF8);
  type metadata accessor for ErrorView(255);
  sub_25AE4DE4C();
  sub_25AE4F5B8(&qword_27FA1D418, type metadata accessor for ErrorView, &protocol conformance descriptor for ErrorView);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_25AE4EF10()
{
  result = qword_27FA1D710;
  if (!qword_27FA1D710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D6F0, &qword_25AEA4208);
    sub_25AE4EFC8();
    sub_25AE47F60(&qword_27FA1D730, &qword_27FA1D708, &qword_25AEA4228, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D710);
  }

  return result;
}

unint64_t sub_25AE4EFC8()
{
  result = qword_27FA1D718;
  if (!qword_27FA1D718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D700, &unk_25AEA4218);
    sub_25AE47F60(&qword_27FA1D720, &qword_27FA1D728, &qword_25AEA4230, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D718);
  }

  return result;
}

uint64_t sub_25AE4F080@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25AEA1818();
  *a1 = result;
  return result;
}

unint64_t sub_25AE4F0FC()
{
  result = qword_27FA1D7D0;
  if (!qword_27FA1D7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D7A8, &qword_25AEA42A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D7A0, &qword_25AEA42A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D798, &qword_25AEA4298);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D790, &qword_25AEA4290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D788, &qword_25AEA4288);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D780, &qword_25AEA4280);
    sub_25AEA19B8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D778, &qword_25AEA4278);
    sub_25AE47F60(&qword_27FA1D7C0, &qword_27FA1D778, &qword_25AEA4278, MEMORY[0x277CDF1A8]);
    swift_getOpaqueTypeConformance2();
    sub_25AE4F5B8(&qword_27FA1D7C8, MEMORY[0x277CDDF20], MEMORY[0x277CDDF18]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_25AE47F60(&qword_27FA1D7D8, &qword_27FA1D7E0, &qword_25AEA42F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D7D0);
  }

  return result;
}

uint64_t objectdestroy_55Tm()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

unint64_t sub_25AE4F418()
{
  result = qword_27FA1D7F0;
  if (!qword_27FA1D7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D7E8, &qword_25AEA42F8);
    sub_25AE47F60(&qword_27FA1D7F8, &qword_27FA1D800, &qword_25AEA4300, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D7F0);
  }

  return result;
}

unint64_t sub_25AE4F4D0()
{
  result = qword_27FA1D810;
  if (!qword_27FA1D810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D750, &qword_25AEA4250);
    sub_25AE47F60(&qword_27FA1D808, &qword_27FA1D748, &qword_25AEA4248, MEMORY[0x277CDF028]);
    sub_25AE4F5B8(&qword_27FA1D510, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D810);
  }

  return result;
}

uint64_t sub_25AE4F5B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25AE4F600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D768, &qword_25AEA4268);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE4F670@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25AEA17D8();
  *a1 = result;
  return result;
}

unint64_t sub_25AE4F6CC()
{
  result = qword_27FA1D828;
  if (!qword_27FA1D828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D740, &qword_25AEA4240);
    sub_25AE4F784();
    sub_25AE47F60(&qword_27FA1D838, &unk_27FA1D840, &qword_25AEA4340, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D828);
  }

  return result;
}

unint64_t sub_25AE4F784()
{
  result = qword_27FA1D830;
  if (!qword_27FA1D830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D738, &qword_25AEA4238);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D6F0, &qword_25AEA4208);
    sub_25AE4EF10();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D830);
  }

  return result;
}

uint64_t sub_25AE4F87C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v1);

  return v1;
}

BOOL sub_25AE4F8F0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == 3;
  v5 = v3 == 4;
  v7 = v2 == v3 && (v3 - 5) < 0xFFFFFFFE;
  if (v2 == 4)
  {
    v7 = v5;
  }

  if (v2 == 3)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

char *sub_25AE4F92C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D498, &unk_25AEA3D20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1D960, &unk_25AEA44A0);
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D4A0, &qword_25AEA3D30);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v13 = OBJC_IVAR____TtC15NameRecognition12AudioManager__state;
  v33 = 0;
  sub_25AEA1438();
  (*(v10 + 32))(&v1[v13], v12, v9);
  *&v1[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioPlayer] = 0;
  *&v1[OBJC_IVAR____TtC15NameRecognition12AudioManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v14 = [objc_allocWithZone(MEMORY[0x277CB8388]) init];
  v15 = OBJC_IVAR____TtC15NameRecognition12AudioManager_audioEngine;
  *&v1[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioEngine] = v14;
  if (AXDeviceSupportsAudioSessionForIndependentRoute())
  {
    v16 = [objc_allocWithZone(MEMORY[0x277CB83F8]) initSessionForIndependentInputRoute];
    *&v1[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioSession] = v16;
    [*&v1[v15] setAudioSession_];
  }

  else
  {
    *&v1[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioSession] = [objc_opt_self() sharedInstance];
  }

  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v17 = sub_25AEA12C8();
  __swift_project_value_buffer(v17, qword_27FA1DF50);
  v18 = sub_25AEA12A8();
  v19 = sub_25AEA24A8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_25AE3C000, v18, v19, "Created audio session", v20, 2u);
    MEMORY[0x25F85AB80](v20, -1, -1);
  }

  v21 = [*&v1[v15] inputNode];
  *&v1[OBJC_IVAR____TtC15NameRecognition12AudioManager_inputNode] = v21;
  if (MEMORY[0x277D84F90] >> 62 && sub_25AEA25B8())
  {
    v22 = sub_25AE9F06C(MEMORY[0x277D84F90]);
  }

  else
  {
    v22 = MEMORY[0x277D84FA0];
  }

  *&v1[OBJC_IVAR____TtC15NameRecognition12AudioManager_cancellables] = v22;
  v23 = type metadata accessor for AudioManager(0);
  v34.receiver = v1;
  v34.super_class = v23;
  v24 = objc_msgSendSuper2(&v34, sel_init);
  sub_25AE51384();
  v25 = [objc_opt_self() defaultCenter];
  v26 = *MEMORY[0x277CB8068];
  v27 = [objc_opt_self() sharedInstance];
  [v25 addObserver:v24 selector:sel_handleAudioSessionInterruptionWithNotification_ name:v26 object:v27];

  swift_beginAccess();
  sub_25AEA1448();
  swift_endAccess();
  sub_25AE47F60(&unk_27FA1D970, &qword_27FA1D498, &unk_25AEA3D20, MEMORY[0x277CBCEC8]);
  sub_25AE47690();
  sub_25AEA14A8();
  (*(v3 + 8))(v5, v2);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_25AE47F60(&qword_27FA1D980, &unk_27FA1D960, &unk_25AEA44A0, MEMORY[0x277CBCBE0]);
  v28 = v32;
  sub_25AEA14B8();

  (*(v31 + 8))(v8, v28);
  swift_beginAccess();
  sub_25AEA13F8();
  swift_endAccess();

  return v24;
}

void sub_25AE4FF38(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong + OBJC_IVAR____TtC15NameRecognition12AudioManager_delegate;
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    v7 = *(v4 + 8);

    if (v6)
    {
      ObjectType = swift_getObjectType();
      (*(v7 + 16))(v2, ObjectType, v7);
      swift_unknownObjectRelease();
    }
  }
}

id sub_25AE50008()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x277CB8068];
  v3 = [objc_opt_self() sharedInstance];
  [v1 removeObserver:v0 name:v2 object:v3];

  v5.receiver = v0;
  v5.super_class = type metadata accessor for AudioManager(0);
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t type metadata accessor for AudioManager(uint64_t a1)
{
  result = qword_27FA1D888;
  if (!qword_27FA1D888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25AE502C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v4);

  if (v4 == 3)
  {
    if (qword_27FA1D248 != -1)
    {
      swift_once();
    }

    v0 = sub_25AEA12C8();
    __swift_project_value_buffer(v0, qword_27FA1DF50);
    v1 = sub_25AEA12A8();
    v2 = sub_25AEA24A8();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_25AE3C000, v1, v2, "Name Recognition attempted to start listening but it is already actively listening", v3, 2u);
      MEMORY[0x25F85AB80](v3, -1, -1);
    }
  }

  else
  {
    sub_25AE5229C();
  }
}

void sub_25AE504C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v4);

  if (v4 == 3)
  {
    sub_25AE529EC();
  }

  else
  {
    if (qword_27FA1D248 != -1)
    {
      swift_once();
    }

    v0 = sub_25AEA12C8();
    __swift_project_value_buffer(v0, qword_27FA1DF50);
    v1 = sub_25AEA12A8();
    v2 = sub_25AEA24A8();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_25AE3C000, v1, v2, "Name Recognition attempted to stop listening but it is not actively listening", v3, 2u);
      MEMORY[0x25F85AB80](v3, -1, -1);
    }
  }
}

uint64_t sub_25AE506C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v3);

  if (v3 == 3)
  {
    [*&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioEngine] stop];
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v0;
    return sub_25AEA1488();
  }

  return result;
}

void sub_25AE50794()
{
  v18 = *MEMORY[0x277D85DE8];
  if ([*&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioSession] isActive])
  {
    v1 = *&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioEngine];
    v16 = 0;
    v2 = [v1 startAndReturnError_];
    v3 = v16;
    if (v2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v16) = 3;
      v4 = v3;
      v5 = v0;
      sub_25AEA1488();
    }

    else
    {
      v9 = v16;
      v10 = sub_25AEA0D08();

      swift_willThrow();
      v16 = 0;
      v17 = 0xE000000000000000;
      sub_25AEA2688();
      MEMORY[0x25F859D40](0xD00000000000001CLL, 0x800000025AEA8830);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
      sub_25AEA2738();
      v11 = v16;
      v12 = v17;
      sub_25AE426AC();
      v13 = swift_allocError();
      *v14 = 0;
      *(v14 + 8) = v11;
      *(v14 + 16) = v12;
      NRLogError(_:additionalMessage:)(v13, 0, 0);
    }
  }

  else
  {
    if (qword_27FA1D248 != -1)
    {
      swift_once();
    }

    v6 = sub_25AEA12C8();
    __swift_project_value_buffer(v6, qword_27FA1DF50);
    oslog = sub_25AEA12A8();
    v7 = sub_25AEA24A8();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_25AE3C000, oslog, v7, "Session is not active, ignoring resume call", v8, 2u);
      MEMORY[0x25F85AB80](v8, -1, -1);
    }
  }
}

void sub_25AE50A44(void *a1, void *a2, uint64_t a3)
{
  v54 = a2;
  v56 = a1;
  v60 = *MEMORY[0x277D85DE8];
  v5 = sub_25AEA0D38();
  v55 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1D950, &unk_25AEA4490);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v49 - v9;
  v11 = sub_25AEA0DB8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v49 - v17;
  MEMORY[0x28223BE20](v16);
  v57 = &v49 - v19;
  v20 = *&v3[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioSession];
  v58 = 0;
  v21 = [v20 setActive:0 error:&v58];
  v22 = v58;
  if (v21 && (v53 = v12, v23 = objc_opt_self(), v24 = v22, v25 = [v23 sharedInstance], v26 = *MEMORY[0x277CB8030], v27 = *MEMORY[0x277CB80A8], v58 = 0, LODWORD(v23) = objc_msgSend(v25, sel_setCategory_mode_options_error_, v26, v27, 0, &v58), v25, v22 = v58, v23))
  {
    v52 = v11;
    v50 = v3;
    v28 = qword_27FA1D270;
    v29 = v58;
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = qword_27FA1E0F8;
    v31 = qword_27FA1E100;
    v51 = qword_27FA1E0F8;
    v58 = v54;
    v59 = a3;

    MEMORY[0x25F859D40](1986098990, 0xE400000000000000);
    v33 = v58;
    v32 = v59;
    v58 = v30;
    v59 = v31;

    MEMORY[0x25F859D40](v33, v32);

    v35 = v52;
    v34 = v53;
    (*(v53 + 56))(v10, 1, 1, v52);
    (*(v55 + 104))(v7, *MEMORY[0x277CC91D8], v5);

    sub_25AEA0DA8();
    v36 = v57;
    sub_25AE6991C(v56, v18, v57);
    v39 = v18;
    v40 = *(v34 + 8);
    v40(v39, v35);

    (*(v34 + 16))(v15, v36, v35);
    v41 = objc_allocWithZone(MEMORY[0x277CB83D0]);
    v42 = sub_25AE52EB8(v15);
    v43 = v40;
    v44 = OBJC_IVAR____TtC15NameRecognition12AudioManager_audioPlayer;
    v45 = v50;
    v46 = *&v50[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioPlayer];
    *&v50[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioPlayer] = v42;
    v47 = v42;

    if (v47)
    {
      [v47 setDelegate_];
    }

    [*&v45[v44] prepareToPlay];
    [*&v45[v44] play];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v58) = 4;
    v48 = v45;
    sub_25AEA1488();
    v43(v36, v52);
  }

  else
  {
    v37 = v22;
    v38 = sub_25AEA0D08();

    swift_willThrow();
    NRLogError(_:additionalMessage:)(v38, 0, 0);
  }
}

void sub_25AE5109C()
{
  v20 = *MEMORY[0x277D85DE8];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v18);

  if (v18 == 4)
  {
    v1 = *&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioPlayer];
    if (v1)
    {
      v2 = v1;
      if ([v2 isPlaying])
      {
        [v2 pause];
      }
    }

    v3 = *&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioSession];
    v18 = 0;
    v4 = [v3 setActive:0 error:&v18];
    v5 = v18;
    if (v4)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v18) = 1;
      v6 = v5;
      v7 = v0;
      sub_25AEA1488();
      if (qword_27FA1D248 != -1)
      {
        swift_once();
      }

      v8 = sub_25AEA12C8();
      __swift_project_value_buffer(v8, qword_27FA1DF50);
      v9 = sub_25AEA12A8();
      v10 = sub_25AEA24A8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_25AE3C000, v9, v10, "Name Recognition playable audio stopped successfully", v11, 2u);
        MEMORY[0x25F85AB80](v11, -1, -1);
      }
    }

    else
    {
      v12 = v18;
      v13 = sub_25AEA0D08();

      swift_willThrow();
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_25AEA2688();
      MEMORY[0x25F859D40](0xD000000000000018, 0x800000025AEA87D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
      sub_25AEA2738();
      v14 = v18;
      v15 = v19;
      sub_25AE426AC();
      v16 = swift_allocError();
      *v17 = 0;
      *(v17 + 8) = v14;
      *(v17 + 16) = v15;
      NRLogError(_:additionalMessage:)(v16, 0, 0);
    }
  }
}

void sub_25AE51384()
{
  v87 = *MEMORY[0x277D85DE8];
  v1 = 0xD00000000000002ALL;
  v2 = AXDeviceSupportsAudioSessionForIndependentRoute();
  v3 = MEMORY[0x277CB8038];
  if (!v2)
  {
    v3 = MEMORY[0x277CB8028];
  }

  v4 = *v3;
  v5 = *(v0 + OBJC_IVAR____TtC15NameRecognition12AudioManager_audioSession);
  v6 = *MEMORY[0x277CB80A8];
  v85 = 0;
  v7 = 0x27FA1D000uLL;
  if ([v5 setCategory:v4 mode:v6 options:41 error:&v85])
  {
    v8 = qword_27FA1D248;
    v9 = v85;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = sub_25AEA12C8();
    __swift_project_value_buffer(v10, qword_27FA1DF50);
    v11 = sub_25AEA12A8();
    v12 = sub_25AEA24A8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = v5;
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_25AE3C000, v11, v12, "Configuring audio session", v14, 2u);
      v15 = v14;
      v5 = v13;
      MEMORY[0x25F85AB80](v15, -1, -1);
    }
  }

  else
  {
    v16 = v85;
    v17 = v5;
    v18 = sub_25AEA0D08();

    swift_willThrow();
    v85 = 0;
    v86 = 0xE000000000000000;
    sub_25AEA2688();
    MEMORY[0x25F859D40](0xD00000000000003ALL, 0x800000025AEA8630);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
    sub_25AEA2738();
    v19 = v85;
    v20 = v86;
    sub_25AE426AC();
    v21 = swift_allocError();
    *v22 = 0;
    *(v22 + 8) = v19;
    *(v22 + 16) = v20;
    NRLogError(_:additionalMessage:)(v21, 0, 0);

    v23 = v18;
    v5 = v17;
  }

  v24 = [v5 availableInputs];
  if (!v24)
  {
    goto LABEL_59;
  }

  v25 = v24;
  sub_25AE4167C(0, &qword_27FA1D940, 0x277CB8408);
  v26 = sub_25AEA22F8();

  if (v26 >> 62)
  {
    goto LABEL_40;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_41:

    goto LABEL_59;
  }

LABEL_13:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x25F85A1C0](0, v26);
LABEL_16:
    v28 = v27;

    v29 = [v28 dataSources];
    if (!v29)
    {

      goto LABEL_59;
    }

    v26 = v29;
    v83 = v5;
    v84 = v28;
    sub_25AE4167C(0, &qword_27FA1D948, 0x277CB8400);
    v25 = sub_25AEA22F8();

    v85 = MEMORY[0x277D84F90];
    if (!(v25 >> 62))
    {
      v5 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_45;
      }

      goto LABEL_19;
    }

    goto LABEL_44;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v26 + 32);
    goto LABEL_16;
  }

  __break(1u);
LABEL_44:
  v5 = sub_25AEA25B8();
  if (v5)
  {
LABEL_19:
    v7 = 0;
    v1 = v25 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x25F85A1C0](v7, v25);
      }

      else
      {
        if (v7 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v30 = *(v25 + 8 * v7 + 32);
      }

      v31 = v30;
      v32 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        if (!sub_25AEA25B8())
        {
          goto LABEL_41;
        }

        goto LABEL_13;
      }

      v33 = [v30 orientation];
      if (v33)
      {
        v26 = v33;
        v34 = sub_25AEA21A8();
        v36 = v35;
        if (v34 == sub_25AEA21A8() && v36 == v37)
        {

LABEL_34:
          sub_25AEA26F8();
          sub_25AEA2718();
          sub_25AEA2728();
          v26 = &v85;
          sub_25AEA2708();
          goto LABEL_21;
        }

        v39 = sub_25AEA2828();

        if (v39)
        {
          goto LABEL_34;
        }
      }

LABEL_21:
      ++v7;
      if (v32 == v5)
      {
        v40 = v85;
        v7 = 0x27FA1D000;
        v1 = 0xD00000000000002ALL;
        goto LABEL_46;
      }
    }
  }

LABEL_45:
  v40 = MEMORY[0x277D84F90];
LABEL_46:

  if ((v40 & 0x8000000000000000) != 0 || (v40 & 0x4000000000000000) != 0)
  {
    v41 = v84;
    if (!sub_25AEA25B8())
    {
      goto LABEL_57;
    }

LABEL_49:
    if ((v40 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x25F85A1C0](0, v40);
    }

    else
    {
      if (!*(v40 + 16))
      {
        __break(1u);
      }

      v42 = *(v40 + 32);
    }

    v43 = v42;

    v85 = 0;
    v5 = v83;
    v44 = [v83 setPreferredInput:v41 error:&v85];
    v45 = v85;
    if (!v44 || (v85 = 0, v46 = v45, v47 = [v83 setInputDataSource:v43 error:&v85], v45 = v85, !v47))
    {
      v49 = v45;
      v50 = sub_25AEA0D08();

      swift_willThrow();
      v85 = 0;
      v86 = 0xE000000000000000;
      sub_25AEA2688();
      MEMORY[0x25F859D40](0xD00000000000002ALL, 0x800000025AEA87A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
      sub_25AEA2738();
      v51 = v85;
      v52 = v86;
      sub_25AE426AC();
      v53 = swift_allocError();
      *v54 = 0;
      *(v54 + 8) = v51;
      *(v54 + 16) = v52;
      NRLogError(_:additionalMessage:)(v53, 0, 0);

      goto LABEL_58;
    }

    v48 = v85;
  }

  else
  {
    v41 = v84;
    if (*(v40 + 16))
    {
      goto LABEL_49;
    }

LABEL_57:

LABEL_58:
    v5 = v83;
  }

LABEL_59:
  v55 = sub_25AEA2178();
  v56 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v85 = 0;
  v57 = [v5 setMXSessionProperty:v55 value:v56 error:&v85];

  if (v57)
  {
    v58 = v85;
  }

  else
  {
    v59 = v85;
    v60 = sub_25AEA0D08();

    swift_willThrow();
    v85 = 0;
    v86 = 0xE000000000000000;
    sub_25AEA2688();
    MEMORY[0x25F859D40](v1 + 57, 0x800000025AEA86A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
    sub_25AEA2738();
    v61 = v85;
    v62 = v86;
    sub_25AE426AC();
    v63 = swift_allocError();
    *v64 = 0;
    *(v64 + 8) = v61;
    *(v64 + 16) = v62;
    NRLogError(_:additionalMessage:)(v63, 0, 0);
  }

  v85 = 0;
  if ([v5 setAllowHapticsAndSystemSoundsDuringRecording:1 error:&v85])
  {
    v65 = v85;
  }

  else
  {
    v66 = v85;
    v67 = sub_25AEA0D08();

    swift_willThrow();
    v85 = 0;
    v86 = 0xE000000000000000;
    sub_25AEA2688();
    MEMORY[0x25F859D40](v1 + 22, 0x800000025AEA8710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
    sub_25AEA2738();
    v68 = v85;
    v69 = v86;
    sub_25AE426AC();
    v70 = swift_allocError();
    *v71 = 0;
    *(v71 + 8) = v68;
    *(v71 + 16) = v69;
    NRLogError(_:additionalMessage:)(v70, 0, 0);
  }

  v85 = 0;
  if ([v5 setPrefersNoInterruptionsFromSystemAlerts:1 error:&v85])
  {
    v72 = v85;
  }

  else
  {
    v73 = v85;
    v74 = sub_25AEA0D08();

    swift_willThrow();
    v85 = 0;
    v86 = 0xE000000000000000;
    sub_25AEA2688();
    MEMORY[0x25F859D40](v1 + 21, 0x800000025AEA8760);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
    sub_25AEA2738();
    v75 = v85;
    v76 = v86;
    sub_25AE426AC();
    v77 = swift_allocError();
    *v78 = 0;
    *(v78 + 8) = v75;
    *(v78 + 16) = v76;
    NRLogError(_:additionalMessage:)(v77, 0, 0);
  }

  if (*(v7 + 584) != -1)
  {
    swift_once();
  }

  v79 = sub_25AEA12C8();
  __swift_project_value_buffer(v79, qword_27FA1DF50);
  v80 = sub_25AEA12A8();
  v81 = sub_25AEA24A8();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_25AE3C000, v80, v81, "Audio session configured", v82, 2u);
    MEMORY[0x25F85AB80](v82, -1, -1);
  }
}

void sub_25AE51E84()
{
  v0 = sub_25AEA0BA8();
  if (v0)
  {
    v1 = v0;
    v12 = sub_25AEA21A8();
    sub_25AEA2608();
    if (*(v1 + 16) && (v2 = sub_25AE6F6C8(v13), (v3 & 1) != 0))
    {
      sub_25AE418A4(*(v1 + 56) + 32 * v2, v14);
      sub_25AE41798(v13);

      if (swift_dynamicCast())
      {
        if (v12)
        {
          if (v12 == 1)
          {
            if (qword_27FA1D248 != -1)
            {
              swift_once();
            }

            v4 = sub_25AEA12C8();
            __swift_project_value_buffer(v4, qword_27FA1DF50);
            v5 = sub_25AEA12A8();
            v6 = sub_25AEA24A8();
            if (os_log_type_enabled(v5, v6))
            {
              v7 = swift_slowAlloc();
              *v7 = 0;
              _os_log_impl(&dword_25AE3C000, v5, v6, "Name Recognition - Stopped listening due to interruption", v7, 2u);
              MEMORY[0x25F85AB80](v7, -1, -1);
            }

            sub_25AE504C4();
          }
        }

        else
        {
          if (qword_27FA1D248 != -1)
          {
            swift_once();
          }

          v8 = sub_25AEA12C8();
          __swift_project_value_buffer(v8, qword_27FA1DF50);
          v9 = sub_25AEA12A8();
          v10 = sub_25AEA24A8();
          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            *v11 = 0;
            _os_log_impl(&dword_25AE3C000, v9, v10, "Name Recognition - Interruption ended. Started listening again.", v11, 2u);
            MEMORY[0x25F85AB80](v11, -1, -1);
          }

          sub_25AE502C8();
        }
      }
    }

    else
    {

      sub_25AE41798(v13);
    }
  }
}

void sub_25AE521D8(uint64_t a1)
{
  sub_25AE52BD0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_25AE5229C()
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = *&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioSession];
  aBlock = 0;
  if (![v1 setActive:1 error:&aBlock])
  {
    v7 = aBlock;
    sub_25AEA0D08();

    swift_willThrow();
    return;
  }

  v2 = *&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioEngine];
  v3 = aBlock;
  v4 = [v2 attachedNodes];
  sub_25AE4167C(0, &qword_27FA1D920, 0x277CB83B8);
  sub_25AE5357C();
  v5 = sub_25AEA23F8();

  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = sub_25AEA25B8();
  }

  else
  {
    v6 = *(v5 + 16);
  }

  if (v6 >= 1)
  {
    [*&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_inputNode] removeTapOnBus_];
  }

  v8 = OBJC_IVAR____TtC15NameRecognition12AudioManager_inputNode;
  v9 = [*&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_inputNode] inputFormatForBus_];
  [v9 sampleRate];
  if (v10 > 0.0 && [v9 channelCount])
  {
    v34 = v2;
    if (qword_27FA1D248 != -1)
    {
      swift_once();
    }

    v11 = sub_25AEA12C8();
    __swift_project_value_buffer(v11, qword_27FA1DF50);
    v12 = v9;
    v13 = sub_25AEA12A8();
    v14 = sub_25AEA24A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134218240;
      [v12 sampleRate];
      *(v15 + 4) = v16;
      *(v15 + 12) = 1024;
      *(v15 + 14) = [v12 channelCount];

      _os_log_impl(&dword_25AE3C000, v13, v14, "Using audio format with sampleRate=%f, channelCount=%u", v15, 0x12u);
      MEMORY[0x25F85AB80](v15, -1, -1);
    }

    else
    {

      v13 = v12;
    }

    v21 = *&v0[v8];
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v12;
    v39 = sub_25AE53624;
    v40 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_25AE52968;
    v38 = &block_descriptor_35;
    v24 = _Block_copy(&aBlock);
    v9 = v12;
    v25 = v21;

    [v25 installTapOnBus:0 bufferSize:0x2000 format:v9 block:v24];
    _Block_release(v24);

    aBlock = 0;
    v26 = [v34 startAndReturnError_];
    v27 = aBlock;
    if (v26)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock) = 3;
      v28 = v27;
      v29 = v0;
      sub_25AEA1488();
      v30 = sub_25AEA12A8();
      v31 = sub_25AEA24A8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_25AE3C000, v30, v31, "Name Recognition Audio Engine started listening successfully", v32, 2u);
        MEMORY[0x25F85AB80](v32, -1, -1);
      }

      goto LABEL_16;
    }

    v33 = aBlock;
    sub_25AEA0D08();
  }

  else
  {
    aBlock = 0;
    v36 = 0xE000000000000000;
    sub_25AEA2688();
    MEMORY[0x25F859D40](0xD000000000000021, 0x800000025AEA85A0);
    [v9 sampleRate];
    sub_25AEA23C8();
    MEMORY[0x25F859D40](0x656E6E616863202CLL, 0xEF3D746E756F436CLL);
    [v9 channelCount];
    v17 = sub_25AEA27F8();
    MEMORY[0x25F859D40](v17);

    v18 = aBlock;
    v19 = v36;
    sub_25AE426AC();
    swift_allocError();
    *v20 = 0;
    *(v20 + 8) = v18;
    *(v20 + 16) = v19;
  }

  swift_willThrow();
LABEL_16:
}

void sub_25AE5284C(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_25AE649DC();
    v7 = &v5[OBJC_IVAR____TtC15NameRecognition12AudioManager_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 1);
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(v6, [a2 hostTime], ObjectType, v8);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_25AE52968(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

void sub_25AE529EC()
{
  v11[1] = *MEMORY[0x277D85DE8];
  [*&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_inputNode] removeTapOnBus_];
  [*&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioEngine] stop];
  v1 = *&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioSession];
  v11[0] = 0;
  v2 = [v1 setActive:0 error:v11];
  v3 = v11[0];
  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v11[0]) = 1;
    v4 = v3;
    v5 = v0;
    sub_25AEA1488();
    if (qword_27FA1D248 != -1)
    {
      swift_once();
    }

    v6 = sub_25AEA12C8();
    __swift_project_value_buffer(v6, qword_27FA1DF50);
    v7 = sub_25AEA12A8();
    v8 = sub_25AEA24A8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_25AE3C000, v7, v8, "Name Recognition Audio Engine stopped successfully", v9, 2u);
      MEMORY[0x25F85AB80](v9, -1, -1);
    }
  }

  else
  {
    v10 = v11[0];
    sub_25AEA0D08();

    swift_willThrow();
  }
}

void sub_25AE52BD0()
{
  if (!qword_27FA1D898)
  {
    v0 = sub_25AEA1498();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA1D898);
    }
  }
}

uint64_t sub_25AE52C20@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AudioManager(0);
  result = sub_25AEA1428();
  *a2 = result;
  return result;
}

void sub_25AE52C60(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_25AE5109C();
  }
}

uint64_t getEnumTagSinglePayload for AudioEngineState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioEngineState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_25AE52E78(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_25AE52E8C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

id sub_25AE52EB8(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_25AEA0D78();
  v13[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_25AEA0DB8();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_25AEA0D08();

    swift_willThrow();
    v11 = sub_25AEA0DB8();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_25AE53004@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_25AE53084(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_25AEA1488();
}

uint64_t sub_25AE530F4(char a1)
{
  v2 = sub_25AEA20C8();
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25AEA20E8();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25AEA2108();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  if (a1)
  {
    v25 = &v23 - v14;
    sub_25AE4167C(0, &qword_27FA1D900, 0x277D85C78);
    v26 = sub_25AEA24C8();
    sub_25AEA20F8();
    sub_25AEA2118();
    v15 = *(v9 + 8);
    v27 = v9 + 8;
    v28 = v15;
    v15(v12, v8);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_25AE534FC;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25AE93330;
    aBlock[3] = &block_descriptor_2;
    v17 = _Block_copy(aBlock);

    sub_25AEA20D8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_25AE5351C();
    v18 = v29;
    v24 = v8;
    v19 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D910, &qword_25AEA4DA0);
    v20 = v30;
    v23 = v5;
    sub_25AE47F60(&qword_27FA1D918, &qword_27FA1D910, &qword_25AEA4DA0, MEMORY[0x277D83970]);
    sub_25AEA2578();
    v22 = v25;
    v21 = v26;
    MEMORY[0x25F859FD0](v25, v19, v4, v17);
    _Block_release(v17);

    (*(v20 + 8))(v4, v2);
    (*(v18 + 8))(v19, v23);
    return v28(v22, v24);
  }

  return result;
}

uint64_t sub_25AE534C4()
{
  MEMORY[0x25F85AC20](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25AE5351C()
{
  result = qword_27FA1D908;
  if (!qword_27FA1D908)
  {
    sub_25AEA20C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D908);
  }

  return result;
}

unint64_t sub_25AE5357C()
{
  result = qword_27FA1D928;
  if (!qword_27FA1D928)
  {
    sub_25AE4167C(255, &qword_27FA1D920, 0x277CB83B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D928);
  }

  return result;
}

uint64_t sub_25AE535E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for AudioEngineState.IdleReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AudioEngineState.IdleReason(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25AE537B0()
{
  result = qword_27FA1D988;
  if (!qword_27FA1D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D988);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25AE5383C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25AE53884(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25AE53900@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = sub_25AEA1288();
  v22 = *(v3 - 8);
  v23 = v3;
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_25AEA1278();
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v21);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D698, &qword_25AEA4080);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = swift_allocObject();
  v13 = *(v2 + 48);
  *(v12 + 48) = *(v2 + 32);
  *(v12 + 64) = v13;
  *(v12 + 80) = *(v2 + 64);
  v14 = *(v2 + 16);
  *(v12 + 16) = *v2;
  *(v12 + 32) = v14;
  v25 = v2;
  sub_25AE47030(v2, v26);
  sub_25AEA1EB8();
  if (*(v2 + 48))
  {
    sub_25AEA1598();
    v15 = v22;
    v16 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v17 = swift_allocObject();
    (*(v15 + 32))(v17 + v16, v5, v23);
    v18 = sub_25AE540A4;
  }

  else
  {
    sub_25AEA1588();
    v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v17 = swift_allocObject();
    (*(v6 + 32))(v17 + v19, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
    v18 = sub_25AE5433C;
  }

  v26[0] = v18;
  v26[1] = v17;
  sub_25AE540D0();
  sub_25AE54134();
  sub_25AEA1C28();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_25AE53C50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25AEA18E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_27FA1D250;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_27FA22788;
  v10 = sub_25AEA1BB8();
  v12 = v11;
  v14 = v13;
  v26 = *a1;
  v27 = *(a1 + 8);
  if (v27 != 1)
  {

    sub_25AEA2498();
    v15 = sub_25AEA1A98();
    v25 = v4;
    v16 = v15;
    sub_25AEA1298();

    sub_25AEA18D8();
    swift_getAtKeyPath();
    sub_25AE54468(&v26);
    (*(v5 + 8))(v7, v25);
  }

  v17 = sub_25AEA1BA8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_25AE479D0(v10, v12, v14 & 1);

  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v23;
  return result;
}

uint64_t sub_25AE53EF0()
{
  sub_25AE53F44(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_25AE53F44(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_25AE53F80(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA08, &qword_25AEA4610);
  MEMORY[0x28223BE20](v1);
  sub_25AEA1288();
  sub_25AE543F0(&qword_27FA1DA10, MEMORY[0x277CE7708], MEMORY[0x277CE76F8]);
  sub_25AEA15A8();
  swift_getOpaqueTypeConformance2();
  return sub_25AEA1EE8();
}

unint64_t sub_25AE540D0()
{
  result = qword_27FA1D690;
  if (!qword_27FA1D690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D698, &qword_25AEA4080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D690);
  }

  return result;
}

unint64_t sub_25AE54134()
{
  result = qword_27FA1D9F0;
  if (!qword_27FA1D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D9F0);
  }

  return result;
}

uint64_t sub_25AE54188(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D9F8, &qword_25AEA4608);
  MEMORY[0x28223BE20](v1);
  sub_25AEA1278();
  sub_25AE543F0(&qword_27FA1DA00, MEMORY[0x277CE76F0], MEMORY[0x277CE76E0]);
  sub_25AEA15A8();
  swift_getOpaqueTypeConformance2();
  return sub_25AEA1EE8();
}

uint64_t objectdestroy_2Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_25AE54368(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_25AE543F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25AE54438@<X0>(uint64_t *a1@<X8>)
{
  result = (*v1)();
  *a1 = result;
  return result;
}

uint64_t sub_25AE54468(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA18, &qword_25AEA4618);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25AE544DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25AE54524(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25AE54580()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D698, &qword_25AEA4080);
  sub_25AE540D0();
  sub_25AE54134();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_25AE545FC()
{
  result = qword_27FA1DA20;
  if (!qword_27FA1DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DA20);
  }

  return result;
}

uint64_t sub_25AE54678()
{
  type metadata accessor for NRSettings(0);
  swift_allocObject();
  result = sub_25AE55394();
  qword_27FA1DA28 = result;
  return result;
}

uint64_t static NRSettings.shared.getter()
{
  if (qword_27FA1D230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static NRSettings.shared.setter(uint64_t a1)
{
  if (qword_27FA1D230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FA1DA28 = a1;
}

uint64_t (*static NRSettings.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FA1D230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_25AE5483C@<X0>(void *a1@<X8>)
{
  if (qword_27FA1D230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FA1DA28;
}

uint64_t sub_25AE548BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FA1D230;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FA1DA28 = v1;
}

uint64_t sub_25AE54944@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_25AE549EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v1);

  return v1;
}

void sub_25AE54A8C(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  BYTE1(v3) = a1;

  sub_25AEA1488();
  sub_25AEA2478();
  v2 = MEMORY[0x25F859F80]();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v3);

  [v2 setNameRecognitionEnabled_];
}

void (*sub_25AE54B78(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478((a1 + 9));

  *(a1 + 8) = *(a1 + 9);
  return sub_25AE54C0C;
}

void sub_25AE54C0C(unsigned __int8 *a1)
{
  v1 = a1;
  v2 = a1[8];
  swift_getKeyPath();
  swift_getKeyPath();
  v1[9] = v2;
  v1 += 9;

  sub_25AEA1488();
  sub_25AEA2478();
  v3 = MEMORY[0x25F859F80]();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(v1);

  [v3 setNameRecognitionEnabled_];
}

uint64_t sub_25AE54D14(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  return swift_endAccess();
}

uint64_t sub_25AE54D8C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_25AE54F10()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  return swift_endAccess();
}

uint64_t sub_25AE54F84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_25AE550BC(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition10NRSettings__isNameRecognitionEnabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE5522C;
}

void sub_25AE5522C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_25AEA1458();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_25AEA1458();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_25AE55394()
{
  v1 = v0;
  sub_25AEA2478();
  v2 = MEMORY[0x25F859F80]();
  v3 = [v2 isNameRecognitionEnabled];

  swift_beginAccess();
  v8 = v3;
  sub_25AEA1438();
  swift_endAccess();
  v4 = [objc_opt_self() sharedInstance];
  aBlock[4] = sub_25AE559B8;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25AE93330;
  aBlock[3] = &block_descriptor_3;
  v5 = _Block_copy(aBlock);

  [v4 registerUpdateBlock:v5 forRetrieveSelector:sub_25AEA0EE8() withListener:v1];
  _Block_release(v5);

  return v1;
}

void sub_25AE5550C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478((&v8 + 2));

  v1 = BYTE2(v8);
  sub_25AEA2478();
  v2 = MEMORY[0x25F859F80]();
  v3 = [v2 isNameRecognitionEnabled];

  if (v1 != v3)
  {
    v4 = MEMORY[0x25F859F80]();
    v5 = [v4 isNameRecognitionEnabled];

    swift_getKeyPath();
    swift_getKeyPath();
    BYTE1(v8) = v5;

    v6 = sub_25AEA1488();
    v7 = MEMORY[0x25F859F80](v6);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_25AEA1478(&v8);

    [v7 setNameRecognitionEnabled_];
  }
}

uint64_t NRSettings.deinit()
{
  v1 = OBJC_IVAR____TtC15NameRecognition10NRSettings__isNameRecognitionEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NRSettings.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15NameRecognition10NRSettings__isNameRecognitionEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_25AE55794@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NRSettings(0);
  result = sub_25AEA1428();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for NRSettings(uint64_t a1)
{
  result = qword_27FA1DA40;
  if (!qword_27FA1DA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25AE55838(uint64_t a1)
{
  sub_25AE49B94();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25AE559D8()
{
  type metadata accessor for EnrollmentCoordinator(0);
  swift_allocObject();
  return sub_25AE79BC4();
}

uint64_t sub_25AE55A10@<X0>(void *a1@<X8>)
{
  v3 = sub_25AEA18E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D420, &qword_25AEA47E0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for OnboardingCoordinatorView(0);
  sub_25AE57C30(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_25AEA1698();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_25AEA2498();
    v13 = sub_25AEA1A98();
    sub_25AEA1298();

    sub_25AEA18D8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_25AE55C00@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for OnboardingCoordinatorView(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_25AE57B74;
  a2[1] = v6;
}

uint64_t sub_25AE55C80(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for OnboardingCoordinatorView(0) + 24));

  *v6 = sub_25AE57B4C;
  v6[1] = v5;
  return result;
}

uint64_t OnboardingCoordinatorView.completionHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for OnboardingCoordinatorView(0) + 24));

  return v1;
}

uint64_t type metadata accessor for OnboardingCoordinatorView(uint64_t a1)
{
  result = qword_27FA1DB00;
  if (!qword_27FA1DB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OnboardingCoordinatorView.completionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for OnboardingCoordinatorView(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t OnboardingCoordinatorView.init(completionHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_25AE559D8;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = type metadata accessor for OnboardingCoordinatorView(0);
  v7 = *(v6 + 20);
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D420, &qword_25AEA47E0);
  result = swift_storeEnumTagMultiPayload();
  v9 = (a3 + *(v6 + 24));
  *v9 = a1;
  v9[1] = a2;
  return result;
}

uint64_t OnboardingCoordinatorView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v12 = a1;
  v2 = type metadata accessor for OnboardingCoordinatorView(0);
  v13 = *(v2 - 8);
  v3 = *(v13 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for EnrollmentCoordinator(0);
  sub_25AE570B0();
  sub_25AEA15D8();
  swift_getKeyPath();
  sub_25AEA16F8();

  v21 = v23;
  v22 = v24;
  v14 = v1;
  v11[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA50, &qword_25AEA4810);
  v11[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA58, &qword_25AEA4818);
  sub_25AE47F60(&qword_27FA1DA60, &qword_27FA1DA50, &qword_25AEA4810, MEMORY[0x277D83960]);
  sub_25AE47F60(&qword_27FA1DA68, &qword_27FA1DA50, &qword_25AEA4810, MEMORY[0x277D83980]);
  sub_25AE47F60(&qword_27FA1DA70, &qword_27FA1DA50, &qword_25AEA4810, MEMORY[0x277D83990]);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DA78, &qword_25AEA4820);
  v16 = &type metadata for EnrollmentCoordinator.NavigationStage;
  v17 = v15;
  v18 = sub_25AE57118();
  v19 = sub_25AE574EC();
  v20 = v18;
  swift_getOpaqueTypeConformance2();
  v4 = v12;
  sub_25AEA1748();
  sub_25AE57540(v1, v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v6 = swift_allocObject();
  sub_25AE575B0(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  v7 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAE8, &qword_25AEA4840) + 36));
  *v7 = sub_25AE57614;
  v7[1] = v6;
  v7[2] = 0;
  v7[3] = 0;
  sub_25AE57540(v1, v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = swift_allocObject();
  sub_25AE575B0(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAF0, &qword_25AEA4848);
  v10 = (v4 + *(result + 36));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = sub_25AE5762C;
  v10[3] = v8;
  return result;
}

uint64_t sub_25AE56220@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_25AE562A0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1488();
  return sub_25AE79730();
}

uint64_t sub_25AE56320(uint64_t a1)
{
  v2 = type metadata accessor for OnboardingCoordinatorView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25AE564B0(0, v8);
  sub_25AE57540(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_25AE575B0(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA78, &qword_25AEA4820);
  sub_25AE57118();
  sub_25AE574EC();
  sub_25AEA1CC8();

  v10[2] = v8[2];
  v10[3] = v8[3];
  v11[0] = v9[0];
  *(v11 + 11) = *(v9 + 11);
  v10[0] = v8[0];
  v10[1] = v8[1];
  return sub_25AE57E78(v10);
}

double sub_25AE564B0@<D0>(unsigned __int8 a1@<W0>, _OWORD *a2@<X8>)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      type metadata accessor for EnrollmentCoordinator(0);
      sub_25AE570B0();
      sub_25AEA15C8();
      v10 = sub_25AEA16D8();
      v12 = v11;
      *&v32 = 0;
      *(&v32 + 1) = 0xE000000000000000;
      sub_25AEA1E68();
      sub_25AEA1E68();
      *&v18 = v10;
      *(&v18 + 1) = v12;
      v19 = v37;
      *&v20 = v38;
      BYTE8(v20) = v37;
      *&v21 = *(&v37 + 1);
      BYTE8(v21) = sub_25AEA1568() & 1;
      *&v22 = v13;
      BYTE8(v22) = v14 & 1;
      v23 = 30;
      v39 = v20;
      v40 = v21;
      *v41 = v22;
      *&v41[16] = 30;
      v37 = v18;
      v38 = v19;
      v24 = 1;
      v41[24] = 1;
      sub_25AE4DE0C(&v18, &v32);
      sub_25AE572BC();
      sub_25AE57310();
      sub_25AEA19E8();
      v39 = v34;
      v40 = v35;
      *v41 = *v36;
      *&v41[9] = *&v36[9];
      v37 = v32;
      v38 = v33;
      v30 = 0;
      v41[25] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAA0, &qword_25AEA4830);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAC0, &qword_25AEA4838);
      sub_25AE57230();
      sub_25AE57364();
      sub_25AEA19E8();
      v39 = v27;
      v40 = v28;
      *v41 = v29[0];
      *&v41[10] = *(v29 + 10);
      v37 = v25;
      v38 = v26;
      v31 = 0;
      v41[26] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA90, &qword_25AEA4828);
      sub_25AE571A4();
      sub_25AE57498();
      sub_25AEA19E8();
      sub_25AE57EE0(&v18);
      goto LABEL_12;
    }

    type metadata accessor for EnrollmentCoordinator(0);
    sub_25AE570B0();
    sub_25AEA15C8();
    sub_25AEA16D8();
    v30 = 0;
    sub_25AE572BC();
    sub_25AE57310();

    sub_25AEA19E8();
    v31 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAA0, &qword_25AEA4830);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAC0, &qword_25AEA4838);
    sub_25AE57230();
    sub_25AE57364();
    sub_25AEA19E8();
    v39 = v27;
    v40 = v28;
    *v41 = v29[0];
    *&v41[10] = *(v29 + 10);
    v37 = v25;
    v38 = v26;
    LOBYTE(v18) = 0;
    v41[26] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA90, &qword_25AEA4828);
    sub_25AE571A4();
    sub_25AE57498();
    sub_25AEA19E8();
LABEL_9:

LABEL_12:
    v39 = v34;
    v40 = v35;
    *v41 = *v36;
    *&v41[11] = *&v36[11];
    v37 = v32;
    v38 = v33;
    goto LABEL_13;
  }

  if (a1 == 2)
  {
    type metadata accessor for EnrollmentCoordinator(0);
    sub_25AE570B0();
    sub_25AEA15C8();
    v6 = sub_25AEA16D8();
    v8 = v7;
    sub_25AEA1E68();
    *&v32 = v6;
    *(&v32 + 1) = v8;
    *&v33 = v37;
    *(&v33 + 1) = *(&v37 + 1);
    *&v34 = 0;
    BYTE8(v34) = 0;
    sub_25AE573F0();
    sub_25AE57444();

    sub_25AEA19E8();
    v31 = BYTE8(v39);
    v30 = 1;
    v41[25] = 1;
    goto LABEL_8;
  }

  if (a1 == 3)
  {
    type metadata accessor for EnrollmentCoordinator(0);
    sub_25AE570B0();
    sub_25AEA15C8();
    v3 = sub_25AEA16D8();
    v5 = v4;
    sub_25AEA1E68();
    *&v32 = v3;
    *(&v32 + 1) = v5;
    v33 = v37;
    *&v34 = 3;
    BYTE8(v34) = 1;
    sub_25AE573F0();
    sub_25AE57444();

    sub_25AEA19E8();
    v31 = BYTE8(v39);
    v30 = 1;
    v41[25] = 1;
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAA0, &qword_25AEA4830);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAC0, &qword_25AEA4838);
    sub_25AE57230();
    sub_25AE57364();
    sub_25AEA19E8();
    v39 = v27;
    v40 = v28;
    *v41 = v29[0];
    *&v41[10] = *(v29 + 10);
    v37 = v25;
    v38 = v26;
    LOBYTE(v18) = 0;
    v41[26] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA90, &qword_25AEA4828);
    sub_25AE571A4();
    sub_25AE57498();
    sub_25AEA19E8();

    goto LABEL_9;
  }

  type metadata accessor for EnrollmentCoordinator(0);
  sub_25AE570B0();
  sub_25AEA15C8();
  LOBYTE(v25) = 1;
  *&v32 = sub_25AEA16D8();
  *(&v32 + 1) = v9;
  v36[26] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA90, &qword_25AEA4828);
  sub_25AE571A4();
  sub_25AE57498();
  sub_25AEA19E8();
LABEL_13:
  v15 = v40;
  a2[2] = v39;
  a2[3] = v15;
  a2[4] = *v41;
  *(a2 + 75) = *&v41[11];
  result = *&v37;
  v17 = v38;
  *a2 = v37;
  a2[1] = v17;
  return result;
}