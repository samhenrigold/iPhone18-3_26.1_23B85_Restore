double static ReferenceClock.timeInterval.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7328, &qword_24AD85A30);
  MEMORY[0x28223BE20](v0);
  v2 = &v11[-v1];
  sub_24AD709EC(v3);
  Current = CFAbsoluteTimeGetCurrent();
  v5 = Current;
  if (qword_2810661C8 != -1)
  {
    swift_once();
  }

  v6 = qword_2810661D0;
  MEMORY[0x28223BE20](Current);
  *&v11[-16] = sub_24AD70CD4;
  *&v11[-8] = 0;
  os_unfair_lock_lock(v6 + 4);
  sub_24AD70CBC(&v12);
  os_unfair_lock_unlock(v6 + 4);
  v7 = v5 - *&v12;
  if (v7 - *(&v12 + 1) > 86400.0)
  {
    MEMORY[0x28223BE20](v7 - *(&v12 + 1));
    *&v11[-16] = sub_24AD82C2C;
    *&v11[-8] = 0;
    os_unfair_lock_lock(v6 + 4);
    sub_24AD82C3C();
    os_unfair_lock_unlock(v6 + 4);
    v8 = sub_24AD846CC();
    (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    sub_24AD81660(0, 0, v2, &unk_24AD85D18, v9);
  }

  return v7;
}

uint64_t sub_24AD7097C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t static ReferenceClock.now.getter()
{
  static ReferenceClock.timeInterval.getter();

  return sub_24AD844BC();
}

BOOL sub_24AD709EC(double a1)
{
  if (qword_2810661C8 != -1)
  {
    swift_once();
  }

  v1 = qword_2810661D0;
  MEMORY[0x28223BE20](a1);
  os_unfair_lock_lock(v1 + 4);
  sub_24AD70BF0(&aBlock);
  os_unfair_lock_unlock(v1 + 4);
  v2 = *&v10;
  if ((aBlock & 1) == 0)
  {
    v3 = [objc_opt_self() defaultCenter];
    v4 = *MEMORY[0x277CBE778];
    v13 = sub_24AD830FC;
    v14 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v10 = 1107296256;
    v11 = sub_24AD827E0;
    v12 = &block_descriptor_0;
    v5 = _Block_copy(&aBlock);

    v6 = [v3 addObserverForName:v4 object:0 queue:0 usingBlock:v5];
    _Block_release(v5);
    swift_unknownObjectRelease();
  }

  if (qword_2810661F8 != -1)
  {
    swift_once();
  }

  v7 = *&qword_281066200;
  if (*&qword_281066200 >= v2)
  {
    sub_24AD81ED0(0);
  }

  return v7 < v2;
}

double sub_24AD70BF0@<D0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))(v5);
  if (!v2)
  {
    result = *&v5[1];
    *a1 = v5[0];
    *(a1 + 8) = result;
  }

  return result;
}

double sub_24AD70C3C@<D0>(uint64_t a1@<X8>)
{
  v1 = byte_281066208;
  byte_281066208 = 1;
  *a1 = v1;
  if (qword_2810661E0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&qword_2810661E8;
  *(a1 + 8) = qword_2810661E8;
  return result;
}

double sub_24AD70CEC@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

double sub_24AD70D30@<D0>(void *a1@<X8>)
{
  *a1 = qword_2810661C0;
  if (qword_2810661E0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&qword_2810661E8;
  a1[1] = qword_2810661E8;
  return result;
}

uint64_t sub_24AD70DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24AD8452C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24AD70E54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24AD8452C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AD70EF8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24AD70F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24AD8448C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24AD70FBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24AD8448C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AD71078()
{
  v11 = sub_24AD8452C();
  v1 = *(v11 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for StateCaptureHint();
  Description = v5[-1].Description;
  v7 = *(Description + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v12 = v2 | v7;
  v9 = (((((((Description[8] + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v3, v11);
  (Description[1])(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v12 | 7);
}

uint64_t sub_24AD71240()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AD7128C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t AnalyticsEvent.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 128);
  v4 = sub_24AD8452C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AD71410@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  return sub_24AD76124(v1 + v3, a1);
}

uint64_t sub_24AD71474(uint64_t a1)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  sub_24AD76490(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24AD714E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  return sub_24AD76124(v1 + v3, a1);
}

uint64_t sub_24AD71544(uint64_t a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  sub_24AD76490(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t AnalyticsEvent.__allocating_init(name:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AnalyticsEvent.init(name:)(a1);
  return v2;
}

char *AnalyticsEvent.init(name:)(uint64_t a1)
{
  v3 = *v1;
  swift_defaultActor_initialize();
  sub_24AD8451C();
  v4 = *(*v1 + 136);
  v5 = sub_24AD8489C();
  v6 = *(*(v5 - 8) + 56);
  v6(&v1[v4], 1, 1, v5);
  v6(&v1[*(*v1 + 144)], 1, 1, v5);
  *&v1[*(*v1 + 152)] = MEMORY[0x277D84F98];
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(*v1 + 120)], a1);
  return v1;
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

uint64_t sub_24AD717CC(uint64_t (*a1)(char *))
{
  v2 = sub_24AD848BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7208, &unk_24AD85060);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  sub_24AD848AC();
  sub_24AD8487C();
  (*(v3 + 8))(v6, v2);
  v10 = sub_24AD8489C();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  return a1(v9);
}

double sub_24AD71940@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_24AD8468C();
  v4 = *(*v1 + 152);
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16) && (, v6 = sub_24AD744D4(v10, v11), v8 = v7, , (v8 & 1) != 0))
  {
    sub_24AD758C0(*(v5 + 56) + 48 * v6, a1);
  }

  else
  {

    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 40) = -1;
  }

  return result;
}

uint64_t sub_24AD71A60(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = *v2;
  v3[29] = *v2;
  v5 = *(v4 + 88);
  v3[30] = v5;
  v3[31] = *(v5 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_getTupleTypeMetadata2();
  v6 = sub_24AD8479C();
  v3[35] = v6;
  v3[36] = *(v6 - 8);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD71C04, v2, 0);
}

uint64_t sub_24AD71C04()
{
  v13 = v0;
  if (qword_2810662A8 != -1)
  {
    swift_once();
  }

  v1 = qword_2810667B8;
  sub_24AD8468C();
  LOBYTE(v1) = sub_24AD725E8(v0[20], v0[21], v1);

  if (v1)
  {
    if (qword_281066278 != -1)
    {
      swift_once();
    }

    v2 = sub_24AD8455C();
    __swift_project_value_buffer(v2, qword_281066788);

    v3 = sub_24AD8453C();
    v4 = sub_24AD846FC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136446210;
      sub_24AD8468C();
      v7 = sub_24AD73F2C(v0[24], v0[25], &v12);

      *(v5 + 4) = v7;
      _os_log_impl(&dword_24AD6F000, v3, v4, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v6);
      MEMORY[0x24C2300D0](v6, -1, -1);
      MEMORY[0x24C2300D0](v5, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    v11 = (v0[26] + *v0[26]);
    v10 = swift_task_alloc();
    v0[39] = v10;
    *v10 = v0;
    v10[1] = sub_24AD71F38;

    return v11();
  }
}

uint64_t sub_24AD71F38(uint64_t a1)
{
  v2 = *(*v1 + 224);
  *(*v1 + 320) = a1;

  return MEMORY[0x2822009F8](sub_24AD72050, v2, 0);
}

void sub_24AD72050()
{
  v1 = 0;
  v2 = *(v0 + 320);
  v3 = *(v0 + 272);
  v4 = *(v0 + 248);
  v5 = *(v2 + 64);
  v50 = v2 + 64;
  v53 = v2;
  v6 = -1;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v5;
  v49 = (63 - v7) >> 6;
  v51 = *(v0 + 248);
  v58 = (v4 + 32);
  v55 = (*(v0 + 288) + 32);
  v56 = (v3 - 8);
  v54 = (v4 + 8);
  v9 = MEMORY[0x277D84F98];
  v52 = *(v0 + 272);
  if ((v6 & v5) == 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v11 = v1;
LABEL_14:
    v14 = *(v0 + 296);
    v15 = *(v0 + 264);
    v57 = *(v0 + 272);
    v16 = *(v0 + 240);
    v17 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v18 = v17 | (v11 << 6);
    (*(v51 + 16))(v15, *(v53 + 48) + *(v51 + 72) * v18, v16);
    sub_24AD7591C(*(v53 + 56) + 48 * v18, v0 + 16);
    v3 = v52;
    v19 = (v14 + *(v52 + 48));
    (*(v51 + 32))(v14, v15, v16);
    v20 = *(v0 + 42);
    v21 = *(v0 + 32);
    *v19 = *(v0 + 16);
    v19[1] = v21;
    *(v19 + 26) = v20;
    v22 = *(v52 - 8);
    (*(v22 + 56))(v14, 0, 1, v57);
    v13 = v11;
LABEL_15:
    v23 = *(v0 + 304);
    v24 = *(v0 + 272);
    (*v55)(v23, *(v0 + 296), *(v0 + 280));
    if ((*(v22 + 48))(v23, 1, v24) == 1)
    {
      break;
    }

    v25 = (*(v0 + 304) + *(v3 + 48));
    (*v58)(*(v0 + 256));
    v26 = *(v25 + 26);
    v27 = v25[1];
    *(v0 + 64) = *v25;
    *(v0 + 80) = v27;
    *(v0 + 90) = v26;
    sub_24AD8468C();
    v29 = *(v0 + 176);
    v28 = *(v0 + 184);
    sub_24AD7591C(v0 + 64, v0 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v9;
    v31 = sub_24AD744D4(v29, v28);
    v33 = *(v9 + 16);
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_35;
    }

    v37 = v32;
    if (*(v9 + 24) >= v36)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = v31;
        sub_24AD755A4();
        v31 = v47;
      }
    }

    else
    {
      sub_24AD74990(v36, isUniquelyReferenced_nonNull_native);
      v31 = sub_24AD744D4(v29, v28);
      if ((v37 & 1) != (v38 & 1))
      {

        sub_24AD8495C();
        return;
      }
    }

    v39 = *(v0 + 256);
    v40 = *(v0 + 240);
    if (v37)
    {
      v10 = v31;

      v9 = v59;
      sub_24AD759CC(v0 + 112, v59[7] + 48 * v10);
      sub_24AD75978(v0 + 64);
      (*v54)(v39, v40);
      v1 = v13;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = v59;
      v59[(v31 >> 6) + 8] |= 1 << v31;
      v41 = (v59[6] + 16 * v31);
      *v41 = v29;
      v41[1] = v28;
      v42 = (v59[7] + 48 * v31);
      v43 = *(v0 + 138);
      v44 = *(v0 + 128);
      *v42 = *(v0 + 112);
      v42[1] = v44;
      *(v42 + 26) = v43;
      sub_24AD75978(v0 + 64);
      (*v54)(v39, v40);
      v45 = v59[2];
      v35 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v35)
      {
        goto LABEL_36;
      }

      v59[2] = v46;
      v1 = v13;
      if (!v8)
      {
LABEL_7:
        if (v49 <= v1 + 1)
        {
          v12 = v1 + 1;
        }

        else
        {
          v12 = v49;
        }

        v13 = v12 - 1;
        while (1)
        {
          v11 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            break;
          }

          if (v11 >= v49)
          {
            v22 = *v56;
            (*(*v56 + 56))(*(v0 + 296), 1, 1, *(v0 + 272));
            v8 = 0;
            goto LABEL_15;
          }

          v8 = *(v50 + 8 * v11);
          ++v1;
          if (v8)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }
    }
  }

  sub_24AD727BC(v9);

  v48 = *(v0 + 8);

  v48();
}

uint64_t sub_24AD725E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_24AD849DC();
  sub_24AD8462C();
  v6 = sub_24AD84A0C();
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
    if (v11 || (sub_24AD8491C() & 1) != 0)
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

uint64_t sub_24AD726E0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 40) == 255)
  {
    sub_24AD761E8(a1, &qword_27EFA7220, &qword_24AD85140);
    sub_24AD74604(a2, a3, &v10);

    return sub_24AD761E8(&v10, &qword_27EFA7220, &qword_24AD85140);
  }

  else
  {
    v6 = a1[1];
    v10 = *a1;
    v11[0] = v6;
    *(v11 + 9) = *(a1 + 25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_24AD750D4(&v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  return result;
}

uint64_t sub_24AD727BC(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v112 = *(*v1 + 152);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v108 = v8;
  v109 = v4;
  while (v7)
  {
LABEL_12:
    v14 = __clz(__rbit64(v7)) | (v9 << 6);
    v15 = *(v3 + 56);
    v16 = (*(v3 + 48) + 16 * v14);
    v17 = v16[1];
    v113 = *v16;
    sub_24AD7591C(v15 + 48 * v14, &v125);
    v110 = v125;
    v111 = v126;
    v18 = v127;
    v19 = v128;

    if (!v17)
    {
    }

    v7 &= v7 - 1;
    v125 = v110;
    v126 = v111;
    v127 = v18;
    v128 = v19;
    v20 = *(*v2 + 152);
    swift_beginAccess();
    v21 = *(v2 + v20);
    if (!*(v21 + 16))
    {
      goto LABEL_24;
    }

    v22 = sub_24AD744D4(v113, v17);
    if ((v23 & 1) == 0)
    {

LABEL_24:
      sub_24AD7591C(&v125, &v120);
      if (v122)
      {
        if (v122 == 1)
        {
          v34 = v120;
          *&v124[8] = MEMORY[0x277D84A28];
          *&v124[16] = sub_24AD76304();
          *&v123 = v34;
          v35 = 2;
        }

        else
        {
          v36 = v120;
          *&v124[8] = MEMORY[0x277D839F8];
          *&v124[16] = sub_24AD76194();
          *&v123 = v36;
          v35 = 3;
        }

        v124[24] = v35;
      }

      else
      {
        v123 = v120;
        *v124 = *v121;
        *&v124[9] = *&v121[9];
      }

      v37 = v112;
      swift_beginAccess();
      sub_24AD758C0(&v123, &v120);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v114[0] = *(v2 + v37);
      v39 = *&v114[0];
      *(v2 + v37) = 0x8000000000000000;
      v40 = sub_24AD744D4(v113, v17);
      v42 = *(v39 + 16);
      v43 = (v41 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
        goto LABEL_81;
      }

      v46 = v41;
      if (*(v39 + 24) >= v45)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_35;
        }

        v91 = v40;
        sub_24AD753F4();
        v40 = v91;
        if (v46)
        {
          goto LABEL_4;
        }

LABEL_36:
        v11 = *&v114[0];
        *(*&v114[0] + 8 * (v40 >> 6) + 64) |= 1 << v40;
        v48 = (v11[6] + 16 * v40);
        *v48 = v113;
        v48[1] = v17;
        v49 = (v11[7] + 48 * v40);
        v50 = *&v121[9];
        v51 = *v121;
        *v49 = v120;
        v49[1] = v51;
        *(v49 + 25) = v50;
        v52 = v11[2];
        v44 = __OFADD__(v52, 1);
        v53 = v52 + 1;
        if (v44)
        {
          goto LABEL_82;
        }

        v11[2] = v53;
      }

      else
      {
        sub_24AD746C0(v45, isUniquelyReferenced_nonNull_native);
        v40 = sub_24AD744D4(v113, v17);
        if ((v46 & 1) != (v47 & 1))
        {
          goto LABEL_88;
        }

LABEL_35:
        if ((v46 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_4:
        v10 = v40;

        v11 = *&v114[0];
        sub_24AD76248(&v120, *(*&v114[0] + 56) + 48 * v10);
      }

      *(v2 + v112) = v11;
      swift_endAccess();
      sub_24AD75978(&v125);
      v12 = &v123;
      goto LABEL_6;
    }

    sub_24AD758C0(*(v21 + 56) + 48 * v22, &v120);

    v123 = v120;
    *v124 = *v121;
    *&v124[9] = *&v121[9];
    sub_24AD7591C(&v125, &v120);
    if (!v122)
    {
      *v119 = v120;
      *&v119[16] = *v121;
      *&v119[25] = *&v121[9];
      goto LABEL_65;
    }

    if (v122 != 1)
    {
      v54 = *&v120;
      sub_24AD758C0(&v123, v114);
      if (v115 != 3)
      {
LABEL_79:

        sub_24AD76358(v114);
        sub_24AD763AC();
        swift_allocError();
        swift_willThrow();

        sub_24AD76358(&v123);
        return sub_24AD75978(&v125);
      }

      sub_24AD70EF8(v114, v116);
      *&v111 = v118;
      __swift_project_boxed_opaque_existential_1(v116, v117);
      *&v110 = v100;
      MEMORY[0x28223BE20](v55);
      (*(v57 + 16))(v100 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
      v58 = v3;
      v59 = sub_24AD76194();
      v60 = MEMORY[0x277D839F8];
      sub_24AD8458C();
      *&v119[24] = v60;
      *&v119[32] = v59;
      v3 = v58;
      *v119 = v54 + *v114;
      v119[40] = 3;
      __swift_destroy_boxed_opaque_existential_0Tm(v116);
      goto LABEL_65;
    }

    v24 = v120;
    sub_24AD758C0(&v123, v114);
    if (v115 != 2)
    {
      goto LABEL_79;
    }

    v104 = v3;
    v106 = v24;
    sub_24AD70EF8(v114, v116);
    v26 = v117;
    v25 = v118;
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v105 = v100;
    MEMORY[0x28223BE20](v27);
    v103 = v28;
    v29 = v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v110 = v30;
    (*(v30 + 16))(v29);
    v31 = sub_24AD847DC();
    *&v111 = v25;
    if ((v31 & 1) != 0 && sub_24AD847CC() > 64)
    {
      v107 = v29;
      *&v114[0] = 0x8000000000000000;
      v32 = v26;
      if (sub_24AD847DC())
      {
        v29 = v107;
        if (sub_24AD847CC() < 64)
        {
          v102 = v26;
          goto LABEL_52;
        }

        v101 = v100;
        MEMORY[0x28223BE20](v33);
        v102 = v100 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_24AD76304();
        sub_24AD847AC();
LABEL_45:
        v66 = sub_24AD845DC();
        (*(v110 + 8))(v102, v26);
        if (v66)
        {
          goto LABEL_87;
        }

        goto LABEL_53;
      }

      v61 = sub_24AD847DC();
      v62 = sub_24AD847CC();
      if (v61)
      {
        if (v62 <= 64)
        {
          v100[1] = *(*(v111 + 24) + 16);
          swift_getAssociatedTypeWitness();
          v102 = v100;
          MEMORY[0x28223BE20](v67);
          swift_getAssociatedConformanceWitness();
          sub_24AD8492C();
          v101 = v100;
          MEMORY[0x28223BE20](v68);
          v70 = v100 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_24AD8490C();
          v71 = sub_24AD845DC();
          (*(v110 + 8))(v70, v32);
          if (v71)
          {
            goto LABEL_87;
          }

LABEL_51:
          v102 = v32;
LABEL_52:
          sub_24AD847BC();
          v29 = v107;
          v26 = v102;
          goto LABEL_53;
        }

        v101 = v100;
        MEMORY[0x28223BE20](v63);
        v102 = v100 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_24AD76304();
        sub_24AD847AC();
        v26 = v32;
        v29 = v107;
        goto LABEL_45;
      }

      if (v62 < 64)
      {
        goto LABEL_51;
      }

      v26 = v32;
      v29 = v107;
    }

LABEL_53:
    if (sub_24AD847CC() > 64 || sub_24AD847CC() == 64 && (sub_24AD847DC() & 1) == 0)
    {
      *&v114[0] = 0x7FFFFFFFFFFFFFFFLL;
      LODWORD(v102) = sub_24AD847DC();
      v107 = v29;
      v72 = sub_24AD847CC();
      if (v102)
      {
        if (v72 >= 65)
        {
          goto LABEL_56;
        }
      }

      else if (v72 >= 64)
      {
LABEL_56:
        v102 = v100;
        MEMORY[0x28223BE20](v73);
        v103 = v100 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_24AD76304();
        sub_24AD847AC();
        v29 = v107;
        v75 = sub_24AD845DC();
        (*(v110 + 8))(v103, v26);
        if (v75)
        {
          goto LABEL_86;
        }

        goto LABEL_63;
      }

      v29 = v107;
      sub_24AD847BC();
    }

LABEL_63:
    v76 = sub_24AD847BC();
    (*(v110 + 8))(v29, v26);
    v44 = __OFADD__(v76, v106);
    v77 = v76 + v106;
    if (v44)
    {
      goto LABEL_85;
    }

    v78 = sub_24AD76304();
    *&v119[8] = v114[0];
    *v119 = v77;
    *&v119[24] = MEMORY[0x277D84A28];
    *&v119[32] = v78;
    v119[40] = 2;
    __swift_destroy_boxed_opaque_existential_0Tm(v116);
    v3 = v104;
LABEL_65:
    v79 = v112;
    swift_beginAccess();
    sub_24AD758C0(v119, &v120);
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v116[0] = *(v2 + v79);
    v81 = v116[0];
    *(v2 + v79) = 0x8000000000000000;
    v82 = sub_24AD744D4(v113, v17);
    v84 = *(v81 + 16);
    v85 = (v83 & 1) == 0;
    v44 = __OFADD__(v84, v85);
    v86 = v84 + v85;
    if (v44)
    {
      goto LABEL_83;
    }

    v87 = v83;
    if (*(v81 + 24) < v86)
    {
      sub_24AD746C0(v86, v80);
      v82 = sub_24AD744D4(v113, v17);
      if ((v87 & 1) != (v88 & 1))
      {
        goto LABEL_88;
      }

LABEL_70:
      if ((v87 & 1) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_71;
    }

    if (v80)
    {
      goto LABEL_70;
    }

    v92 = v82;
    sub_24AD753F4();
    v82 = v92;
    if ((v87 & 1) == 0)
    {
LABEL_75:
      v90 = v116[0];
      *(v116[0] + 8 * (v82 >> 6) + 64) |= 1 << v82;
      v93 = (v90[6] + 16 * v82);
      *v93 = v113;
      v93[1] = v17;
      v94 = (v90[7] + 48 * v82);
      v95 = *&v121[9];
      v96 = *v121;
      *v94 = v120;
      v94[1] = v96;
      *(v94 + 25) = v95;
      v97 = v90[2];
      v44 = __OFADD__(v97, 1);
      v98 = v97 + 1;
      if (v44)
      {
        goto LABEL_84;
      }

      v90[2] = v98;
      goto LABEL_77;
    }

LABEL_71:
    v89 = v82;

    v90 = v116[0];
    sub_24AD76248(&v120, *(v116[0] + 56) + 48 * v89);
LABEL_77:
    *(v2 + v112) = v90;
    swift_endAccess();
    sub_24AD76358(&v123);
    sub_24AD75978(&v125);
    v12 = v119;
LABEL_6:
    sub_24AD76358(v12);
    v8 = v108;
    v4 = v109;
  }

  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v8)
    {
    }

    v7 = *(v4 + 8 * v13);
    ++v9;
    if (v7)
    {
      v9 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  result = sub_24AD8495C();
  __break(1u);
  return result;
}

uint64_t sub_24AD73500(uint64_t a1)
{
  swift_getErrorValue();
  v2 = sub_24AD8497C();
  v4 = v3;
  v5 = MEMORY[0x277D837D0];
  v12 = MEMORY[0x277D837D0];
  v6 = sub_24AD75A60();
  v13 = v6;
  *&v11 = v2;
  *(&v11 + 1) = v4;
  v14 = 1;
  swift_beginAccess();
  sub_24AD726E0(&v11, 0x6D6F44726F727265, 0xEB000000006E6961);
  swift_endAccess();
  swift_getErrorValue();
  v7 = sub_24AD8496C();
  v12 = MEMORY[0x277D83B88];
  v13 = sub_24AD75AB4();
  *&v11 = v7;
  v14 = 2;
  swift_beginAccess();
  sub_24AD726E0(&v11, 0x646F43726F727265, 0xE900000000000065);
  swift_endAccess();
  *&v11 = a1;
  MEMORY[0x24C22FF80](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7210, &qword_24AD85070);
  v8 = sub_24AD8460C();
  v12 = v5;
  v13 = v6;
  *&v11 = v8;
  *(&v11 + 1) = v9;
  v14 = 1;
  swift_beginAccess();
  sub_24AD726E0(&v11, 0xD000000000000010, 0x800000024AD86320);
  return swift_endAccess();
}

uint64_t sub_24AD736D8@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_24AD73834();
  sub_24AD727BC(v4);

  sub_24AD8468C();
  v5 = *(*v1 + 128);
  v6 = type metadata accessor for AnyAnalyticsEvent(0);
  v7 = *(v6 + 20);
  v8 = sub_24AD8452C();
  (*(*(v8 - 8) + 16))(&a1[v7], v2 + v5, v8);
  v9 = *(*v2 + 152);
  swift_beginAccess();
  v10 = *(v2 + v9);
  *a1 = v12;
  *(a1 + 1) = v13;
  *&a1[*(v6 + 24)] = v10;
}

uint64_t sub_24AD73834()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7208, &unk_24AD85060);
  MEMORY[0x28223BE20](v0);
  v42 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v39 - v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v8 = sub_24AD8489C();
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  v15 = sub_24AD8450C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AD844FC();
  v20 = sub_24AD844DC();
  (*(v16 + 8))(v19, v15);
  *&v45 = v20;
  v21 = sub_24AD848FC();
  v23 = v22;
  v24 = sub_24AD75A60();
  *&v45 = v21;
  *(&v45 + 1) = v23;
  v46 = MEMORY[0x277D837D0];
  v47 = v24;
  v48 = 1;
  v25 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = v25;
  sub_24AD75264(&v45, 0x6D695468636F7065, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v27 = v44;
  sub_24AD71410(v7);
  v28 = v43;
  v29 = *(v43 + 48);
  if (v29(v7, 1, v8) != 1)
  {
    v40 = v11;
    v30 = *(v28 + 32);
    v41 = v14;
    v30();
    sub_24AD714E0(v4);
    v31 = v29(v4, 1, v8);
    sub_24AD761E8(v4, &qword_27EFA7208, &unk_24AD85060);
    if (v31 == 1)
    {
      sub_24AD717B4();
    }

    v7 = v42;
    sub_24AD714E0(v42);
    if (v29(v7, 1, v8) != 1)
    {
      v32 = v40;
      (v30)(v40, v7, v8);
      v33 = v41;
      sub_24AD8488C();
      v34 = sub_24AD84A3C() / 1000.0;
      v35 = sub_24AD76194();
      *&v45 = v34;
      v46 = MEMORY[0x277D839F8];
      v47 = v35;
      v48 = 3;
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v44 = v27;
      sub_24AD75264(&v45, 0x6E6F697461727564, 0xE800000000000000, v36);
      v37 = *(v43 + 8);
      v37(v32, v8);
      v37(v33, v8);
      return v44;
    }

    (*(v43 + 8))(v41, v8);
  }

  sub_24AD761E8(v7, &qword_27EFA7208, &unk_24AD85060);
  return v27;
}

uint64_t AnalyticsEvent.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  v1 = *(*v0 + 128);
  v2 = sub_24AD8452C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24AD761E8(v0 + *(*v0 + 136), &qword_27EFA7208, &unk_24AD85060);
  sub_24AD761E8(v0 + *(*v0 + 144), &qword_27EFA7208, &unk_24AD85060);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AnalyticsEvent.__deallocating_deinit()
{
  AnalyticsEvent.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t AnyAnalyticsEvent.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AnyAnalyticsEvent.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnyAnalyticsEvent(0) + 20);
  v4 = sub_24AD8452C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnyAnalyticsEvent.eventData.getter()
{
  type metadata accessor for AnyAnalyticsEvent(0);
}

unint64_t sub_24AD73F2C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24AD73FF8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24AD762A4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_24AD73FF8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24AD74104(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_24AD8486C();
    a6 = v11;
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

void *sub_24AD74104(uint64_t a1, unint64_t a2)
{
  v3 = sub_24AD74150(a1, a2);
  sub_24AD74280(&unk_285E2CA18);
  return v3;
}

void *sub_24AD74150(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24AD7436C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24AD8486C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24AD8465C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24AD7436C(v10, 0);
        result = sub_24AD8484C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24AD74280(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24AD743E0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24AD7436C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7230, &qword_24AD85150);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24AD743E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7230, &qword_24AD85150);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_24AD744D4(uint64_t a1, uint64_t a2)
{
  sub_24AD849DC();
  sub_24AD8462C();
  v4 = sub_24AD84A0C();

  return sub_24AD7454C(a1, a2, v4);
}

unint64_t sub_24AD7454C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24AD8491C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

double sub_24AD74604@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_24AD744D4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24AD753F4();
      v10 = v14;
    }

    v11 = (*(v10 + 56) + 48 * v8);
    v12 = v11[1];
    *a3 = *v11;
    *(a3 + 16) = v12;
    *(a3 + 25) = *(v11 + 25);
    sub_24AD74F04(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = -1;
  }

  return result;
}

uint64_t sub_24AD746C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7228, &qword_24AD85148);
  v38 = v4;
  result = sub_24AD848EC();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + 48 * v23);
      if (v38)
      {
        v28 = *v27;
        v29 = v27[1];
        *(v40 + 9) = *(v27 + 25);
        v39 = v28;
        v40[0] = v29;
      }

      else
      {
        sub_24AD758C0(v27, &v39);
      }

      sub_24AD849DC();
      sub_24AD8462C();
      result = sub_24AD84A0C();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = (*(v7 + 56) + 48 * v15);
      v18 = v39;
      v19 = v40[0];
      *(v17 + 25) = *(v40 + 9);
      *v17 = v18;
      v17[1] = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_24AD74990(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7238, &qword_24AD85158);
  v38 = v4;
  result = sub_24AD848EC();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + 48 * v23);
      if (v38)
      {
        v28 = *v27;
        v29 = v27[1];
        *(v40 + 10) = *(v27 + 26);
        v39 = v28;
        v40[0] = v29;
      }

      else
      {
        sub_24AD7591C(v27, &v39);
      }

      sub_24AD849DC();
      sub_24AD8462C();
      result = sub_24AD84A0C();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = (*(v7 + 56) + 48 * v15);
      v18 = v39;
      v19 = v40[0];
      *(v17 + 26) = *(v40 + 10);
      *v17 = v18;
      v17[1] = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_24AD74C60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7218, &qword_24AD85138);
  v35 = v4;
  result = sub_24AD848EC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_24AD849DC();
      sub_24AD8462C();
      result = sub_24AD84A0C();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24AD74F04(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24AD8481C() + 1) & ~v5;
    do
    {
      sub_24AD849DC();

      sub_24AD8462C();
      v11 = sub_24AD84A0C();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (48 * v3 < (48 * v6) || v17 >= v18 + 3 || v3 != v6)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24AD750D4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24AD744D4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24AD746C0(v16, a4 & 1);
      v11 = sub_24AD744D4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_24AD8495C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_24AD753F4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 48 * v11;

    return sub_24AD76248(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + 48 * v11);
  v26 = *a1;
  v27 = a1[1];
  *(v25 + 25) = *(a1 + 25);
  *v25 = v26;
  v25[1] = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

uint64_t sub_24AD75264(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24AD744D4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24AD74990(v16, a4 & 1);
      v11 = sub_24AD744D4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_24AD8495C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_24AD755A4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 48 * v11;

    return sub_24AD759CC(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + 48 * v11);
  v26 = *a1;
  v27 = a1[1];
  *(v25 + 26) = *(a1 + 26);
  *v25 = v26;
  v25[1] = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

void *sub_24AD753F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7228, &qword_24AD85148);
  v2 = *v0;
  v3 = sub_24AD848DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 48 * v17;
        sub_24AD758C0(*(v2 + 56) + 48 * v17, &v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = (*(v4 + 56) + v22);
        v25 = *&v29[9];
        v26 = *v29;
        *v24 = v28;
        v24[1] = v26;
        *(v24 + 25) = v25;
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

        v1 = v27;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_24AD755A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7238, &qword_24AD85158);
  v2 = *v0;
  v3 = sub_24AD848DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 48 * v17;
        sub_24AD7591C(*(v2 + 56) + 48 * v17, &v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = (*(v4 + 56) + v22);
        v25 = *&v29[10];
        v26 = *v29;
        *v24 = v28;
        v24[1] = v26;
        *(v24 + 26) = v25;
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

        v1 = v27;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_24AD75754()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7218, &qword_24AD85138);
  v2 = *v0;
  v3 = sub_24AD848DC();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_24AD75A60()
{
  result = qword_281066268;
  if (!qword_281066268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281066268);
  }

  return result;
}

unint64_t sub_24AD75AB4()
{
  result = qword_281066258;
  if (!qword_281066258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281066258);
  }

  return result;
}

uint64_t type metadata accessor for AnyAnalyticsEvent(uint64_t a1)
{
  result = qword_2810662B0;
  if (!qword_2810662B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24AD75B58(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_24AD8452C();
    if (v2 <= 0x3F)
    {
      sub_24AD75FB0(319);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of AnalyticsEvent.append(block:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 264) + **(*v2 + 264));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AD75E64;

  return v8(a1, a2);
}

uint64_t sub_24AD75E64()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_24AD75FB0(uint64_t a1)
{
  if (!qword_281066218)
  {
    sub_24AD8489C();
    v1 = sub_24AD8479C();
    if (!v2)
    {
      atomic_store(v1, &qword_281066218);
    }
  }
}

void sub_24AD76030(uint64_t a1)
{
  sub_24AD8452C();
  if (v1 <= 0x3F)
  {
    sub_24AD760C4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24AD760C4()
{
  if (!qword_281066250)
  {
    v0 = sub_24AD845BC();
    if (!v1)
    {
      atomic_store(v0, &qword_281066250);
    }
  }
}

uint64_t sub_24AD76124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7208, &unk_24AD85060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24AD76194()
{
  result = qword_281066260;
  if (!qword_281066260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281066260);
  }

  return result;
}

uint64_t sub_24AD761E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24AD762A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_24AD76304()
{
  result = qword_27EFA7240;
  if (!qword_27EFA7240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA7240);
  }

  return result;
}

unint64_t sub_24AD763AC()
{
  result = qword_27EFA7248;
  if (!qword_27EFA7248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA7248);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

uint64_t sub_24AD76490(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7208, &unk_24AD85060);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for StateCaptureReason(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StateCaptureReason(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_281066190)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_281066190);
    }
  }
}

uint64_t sub_24AD765A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7250, &qword_24AD851A8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18[-v9];
  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

  v11 = sub_24AD744D4(a2, a3);
  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_24AD762A4(*(a1 + 56) + 32 * v11, v18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_24AD8447C();

  v13 = sub_24AD8448C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    sub_24AD76898(v10);
LABEL_6:
    sub_24AD76844();
    swift_allocError();
    *v15 = a2;
    *(v15 + 8) = a3;
    *(v15 + 16) = 2;
    swift_willThrow();
  }

  return (*(v14 + 32))(a4, v10, v13);
}

uint64_t sub_24AD76770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    v6 = sub_24AD744D4(a2, a3);
    if (v7)
    {
      sub_24AD762A4(*(a1 + 56) + 32 * v6, v11);
      if (swift_dynamicCast())
      {
        return v10;
      }
    }
  }

  sub_24AD76844();
  swift_allocError();
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 16) = 2;
  swift_willThrow();
}

unint64_t sub_24AD76844()
{
  result = qword_27EFA7258;
  if (!qword_27EFA7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA7258);
  }

  return result;
}

uint64_t sub_24AD76898(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7250, &qword_24AD851A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchpartyAccount.icloudIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchpartyAccount.dsid.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SearchpartyAccount.token.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SearchpartyAccount.findmy_key_sharing_url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchpartyAccount(0) + 28);
  v4 = sub_24AD8448C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SearchpartyAccount(uint64_t a1)
{
  result = qword_27EFA7260;
  if (!qword_27EFA7260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchpartyAccount.findmy_owner_device_url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchpartyAccount(0) + 32);
  v4 = sub_24AD8448C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchpartyAccount.findmyservice_gateway_url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchpartyAccount(0) + 36);
  v4 = sub_24AD8448C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchpartyAccount.fmadminws_gateway_url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchpartyAccount(0) + 40);
  v4 = sub_24AD8448C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchpartyAccount.icloud_acsn_gateway_url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchpartyAccount(0) + 44);
  v4 = sub_24AD8448C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchpartyAccount.icloud_fmip_al_service.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchpartyAccount(0) + 48);
  v4 = sub_24AD8448C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchpartyAccount.init(icloudIdentifier:dsid:token:findmy_key_sharing_url:findmy_owner_device_url:findmyservice_gateway_url:fmadminws_gateway_url:icloud_acsn_gateway_url:icloud_fmip_al_service:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  v16 = type metadata accessor for SearchpartyAccount(0);
  v17 = v16[7];
  v18 = sub_24AD8448C();
  v21 = *(*(v18 - 8) + 32);
  (v21)((v18 - 8), &a9[v17], a7, v18);
  v21(&a9[v16[8]], a8, v18);
  v21(&a9[v16[9]], a10, v18);
  v21(&a9[v16[10]], a11, v18);
  v21(&a9[v16[11]], a12, v18);
  v19 = &a9[v16[12]];

  return (v21)(v19, a13, v18);
}

uint64_t sub_24AD76E54(uint64_t a1)
{
  result = sub_24AD8448C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24AD76EE4(id a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_24AD8448C();
  v73 = *(v6 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = &v60 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v60 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v60 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v60 - v22;
  v24 = [a2 aa_personID];
  if (!v24)
  {
    goto LABEL_9;
  }

  v68 = v9;
  v70 = v6;
  v25 = v24;
  v69 = sub_24AD845FC();
  v27 = v26;

  v28 = [a2 username];
  if (!v28)
  {

LABEL_9:
    sub_24AD76844();
    swift_allocError();
    v42 = xmmword_24AD851C0;
LABEL_12:
    *v41 = v42;
    *(v41 + 16) = 3;
    swift_willThrow();
LABEL_13:

    return;
  }

  v71 = v27;
  v29 = v28;
  v67 = sub_24AD845FC();
  v31 = v30;

  v32 = [a1 credentialForAccount_];
  if (!v32)
  {
LABEL_11:

    sub_24AD76844();
    swift_allocError();
    v42 = xmmword_24AD851B0;
    goto LABEL_12;
  }

  v33 = v32;
  v34 = [v32 credentialItemForKey_];
  if (!v34)
  {

    goto LABEL_11;
  }

  v65 = v33;
  v66 = v31;
  v64 = a3;
  v35 = v34;
  v61 = sub_24AD845FC();
  v37 = v36;

  v38 = [a2 dataclassProperties];
  if (!v38)
  {

    v43 = 0x800000024AD86380;
    v76 = 0u;
    v77 = 0u;
LABEL_21:
    sub_24AD777AC(&v76);
    v50 = v65;
LABEL_23:
    sub_24AD76844();
    swift_allocError();
    *v51 = 0xD00000000000001FLL;
    *(v51 + 8) = v43;
    *(v51 + 16) = 1;
    swift_willThrow();

    goto LABEL_13;
  }

  v39 = v38;
  v62 = a1;
  v63 = v37;
  *&v74 = 0xD00000000000001FLL;
  *(&v74 + 1) = 0x800000024AD86380;
  v60 = 0x800000024AD86380;
  v40 = [v38 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v40)
  {
    sub_24AD847EC();
    swift_unknownObjectRelease();
  }

  else
  {
    v74 = 0u;
    v75 = 0u;
  }

  v44 = v64;
  v76 = v74;
  v77 = v75;
  a1 = v62;
  v45 = v71;
  if (!*(&v75 + 1))
  {

    v43 = v60;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7278, &qword_24AD85240);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v50 = v65;
    v43 = v60;
    goto LABEL_23;
  }

  v46 = v74;
  v47 = v66;
  *v44 = v67;
  v44[1] = v47;
  v44[2] = v69;
  v44[3] = v45;
  v48 = v63;
  v44[4] = v61;
  v44[5] = v48;
  v69 = v46;
  v49 = v78;
  sub_24AD765A8(v46, 0xD000000000000016, 0x800000024AD863A0, v23);
  if (v49)
  {
  }

  else
  {
    v52 = v44;
    v53 = type metadata accessor for SearchpartyAccount(0);
    v54 = v52 + v53[7];
    v55 = v23;
    v56 = v70;
    v78 = *(v73 + 32);
    v78(v54, v55, v70);
    sub_24AD765A8(v69, 0xD000000000000017, 0x800000024AD863C0, v20);
    v78(v64 + v53[8], v20, v56);
    v67 = 0;
    sub_24AD765A8(v69, 0xD000000000000019, 0x800000024AD863E0, v17);
    v78(v64 + v53[9], v17, v56);
    v57 = v69;
    sub_24AD765A8(v69, 0xD000000000000015, 0x800000024AD86400, v14);
    v78(v64 + v53[10], v14, v56);
    v58 = v72;
    sub_24AD765A8(v57, 0xD000000000000017, 0x800000024AD86420, v72);
    v78(v64 + v53[11], v58, v56);
    v59 = v68;
    sub_24AD765A8(v57, 0xD000000000000016, 0x800000024AD86440, v68);

    v78(v64 + v53[12], v59, v56);
  }
}

uint64_t sub_24AD777AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7270, &qword_24AD85238);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AD77814()
{
  v0 = sub_24AD8455C();
  __swift_allocate_value_buffer(v0, qword_27EFA7388);
  v1 = __swift_project_value_buffer(v0, qword_27EFA7388);
  if (qword_27EFA71F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EFA7280);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static AppleAccount.fmipAccount.getter(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_24AD7796C;

  return sub_24AD78348();
}

uint64_t sub_24AD7796C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = v2;

  if (v2)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24AD77AA4, 0, 0);
  }
}

uint64_t sub_24AD77AA4()
{
  v10 = v0;
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 48);
    sub_24AD791BC(v9, v1, *(v0 + 32));
    if (v2)
    {
      v3 = *(v0 + 8);
      goto LABEL_7;
    }

    v5 = *(v0 + 16);
    v6 = v9[3];
    v5[2] = v9[2];
    v5[3] = v6;
    v5[4] = v9[4];
    v7 = v9[1];
    *v5 = v9[0];
    v5[1] = v7;
  }

  else
  {
    v4 = *(v0 + 16);

    v4[3] = 0u;
    v4[4] = 0u;
    v4[1] = 0u;
    v4[2] = 0u;
    *v4 = 0u;
  }

  v3 = *(v0 + 8);
LABEL_7:

  return v3();
}

uint64_t static AppleAccount.searchpartyAccount.getter(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_24AD77C08;

  return sub_24AD78348();
}

uint64_t sub_24AD77C08(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = v2;

  if (v2)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24AD77D40, 0, 0);
  }
}

uint64_t sub_24AD77D40()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    v3 = v0[4];
    v4 = v0[2];
    v5 = v1;
    sub_24AD76EE4(v3, v5, v4);
    if (v2)
    {

      v6 = v0[1];
      goto LABEL_7;
    }

    v7 = 0;
  }

  else
  {
    v5 = v0[4];
    v7 = 1;
  }

  v8 = v0[2];
  v9 = type metadata accessor for SearchpartyAccount(0);
  (*(*(v9 - 8) + 56))(v8, v7, 1, v9);

  v6 = v0[1];
LABEL_7:

  return v6();
}

unint64_t AppleAccount.Error.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16) <= 1u)
  {
    if (*(v0 + 16))
    {
      sub_24AD8485C();

      v3 = 0xD000000000000012;
    }

    else
    {
      sub_24AD8485C();

      v3 = 0xD000000000000014;
    }

    goto LABEL_7;
  }

  if (*(v0 + 16) == 2)
  {
    sub_24AD8485C();

    v3 = 0xD00000000000001ALL;
LABEL_7:
    v5 = v3;
    MEMORY[0x24C22F760](v2, v1);
    MEMORY[0x24C22F760](41, 0xE100000000000000);
    return v5;
  }

  if (v2 <= 1)
  {
    if (v2 | v1)
    {
      return 0xD000000000000013;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  else if (v2 ^ 2 | v1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_24AD7804C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7210, &qword_24AD85070);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_24AD7811C()
{
  v0 = sub_24AD8455C();
  __swift_allocate_value_buffer(v0, qword_27EFA7280);
  __swift_project_value_buffer(v0, qword_27EFA7280);
  return sub_24AD8454C();
}

uint64_t sub_24AD7819C()
{
  v0 = 0xD000000000000020;
  v1 = 0x800000024AD865D0;
  sub_24AD8441C();
  if (!v4[3])
  {
    sub_24AD777AC(v4);
LABEL_10:
    v0 = 0xD00000000000002ALL;
LABEL_11:
    sub_24AD76844();
    swift_allocError();
    *v3 = v0;
    *(v3 + 8) = v1;
    *(v3 + 16) = 0;
    return swift_willThrow();
  }

  if ((swift_dynamicCast() & 1) == 0 || (v5 & 1) == 0)
  {
    goto LABEL_10;
  }

  v1 = 0x800000024AD86600;
  sub_24AD8441C();
  if ((swift_dynamicCast() & 1) == 0 || (v5 & 1) == 0)
  {
    v0 = 0xD000000000000022;
    goto LABEL_11;
  }

  v1 = 0x800000024AD86630;
  sub_24AD8441C();
  result = swift_dynamicCast();
  if ((result & 1) == 0 || (v5 & 1) == 0)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_24AD78348()
{
  v1 = sub_24AD84A5C();
  v0[19] = v1;
  v0[20] = *(v1 - 8);
  v0[21] = swift_task_alloc();
  v2 = sub_24AD8489C();
  v0[22] = v2;
  v0[23] = *(v2 - 8);
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v3 = sub_24AD848BC();
  v0[27] = v3;
  v0[28] = *(v3 - 8);
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD784E0, 0, 0);
}

uint64_t sub_24AD784E0()
{
  if (MEMORY[0x24C22F4E0]())
  {
    v1 = sub_24AD843CC();
    sub_24AD79110(&qword_27EFA72A0, MEMORY[0x277D08938], MEMORY[0x277D08940]);
    swift_allocError();
    *v2 = 0xD00000000000001ELL;
    v2[1] = 0x800000024AD86580;
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D08930], v1);
    swift_willThrow();
LABEL_4:

    v3 = v0[1];

    return v3();
  }

  sub_24AD7819C();
  sub_24AD848AC();
  if (qword_27EFA71F0 != -1)
  {
    swift_once();
  }

  v5 = sub_24AD8455C();
  v0[31] = __swift_project_value_buffer(v5, qword_27EFA7388);
  v6 = sub_24AD8453C();
  v7 = sub_24AD8473C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24AD6F000, v6, v7, "Retrieving aa_primaryAppleAccount...", v8, 2u);
    MEMORY[0x24C2300D0](v8, -1, -1);
  }

  sub_24AD8487C();
  v9 = [objc_opt_self() defaultStore];
  v0[32] = v9;
  if (!v9)
  {
    v12 = v0[30];
    v13 = v0[27];
    v14 = v0[28];
    v15 = v0[26];
    v16 = v0[22];
    v17 = v0[23];
    sub_24AD76844();
    swift_allocError();
    *v18 = 0;
    *(v18 + 8) = 0;
    *(v18 + 16) = 3;
    swift_willThrow();
    (*(v17 + 8))(v15, v16);
    (*(v14 + 8))(v12, v13);
    goto LABEL_4;
  }

  v10 = v9;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24AD788D0;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7298, qword_24AD853A0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24AD7804C;
  v0[13] = &block_descriptor;
  v0[14] = v11;
  [v10 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24AD788D0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_24AD78E24;
  }

  else
  {
    v2 = sub_24AD789E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD789E0()
{
  v48 = v0;
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = *(v0 + 240);
    v4 = *(v0 + 224);
    v3 = *(v0 + 232);
    v5 = *(v0 + 216);
    (*(*(v0 + 184) + 16))(*(v0 + 200), *(v0 + 208), *(v0 + 176));
    (*(v4 + 16))(v3, v2, v5);
    v6 = sub_24AD8453C();
    v7 = sub_24AD8473C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 232);
    v11 = *(v0 + 216);
    v10 = *(v0 + 224);
    v12 = *(v0 + 200);
    v45 = *(v0 + 240);
    v46 = *(v0 + 208);
    if (v8)
    {
      log = v6;
      v44 = v1;
      v14 = *(v0 + 184);
      v13 = *(v0 + 192);
      v42 = v7;
      v16 = *(v0 + 168);
      v15 = *(v0 + 176);
      v40 = *(v0 + 216);
      v17 = *(v0 + 160);
      v38 = *(v0 + 152);
      buf = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v47 = v41;
      *buf = 136315138;
      sub_24AD8487C();
      sub_24AD84A4C();
      sub_24AD79110(&qword_281066220, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
      v37 = sub_24AD84A2C();
      v19 = v18;
      (*(v17 + 8))(v16, v38);
      v20 = *(v14 + 8);
      v20(v13, v15);
      v21 = *(v10 + 8);
      v11 = v40;
      v21(v9, v40);
      v20(v12, v15);
      v22 = sub_24AD73F2C(v37, v19, &v47);

      *(buf + 4) = v22;
      _os_log_impl(&dword_24AD6F000, log, v42, "aa_primaryAppleAccount fetch duration: %s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x24C2300D0](v41, -1, -1);
      MEMORY[0x24C2300D0](buf, -1, -1);

      v20(v46, v15);
      v1 = v44;
    }

    else
    {
      v32 = *(v0 + 176);
      v33 = *(v0 + 184);

      v21 = *(v10 + 8);
      v21(v9, v11);
      v34 = *(v33 + 8);
      v34(v12, v32);
      v34(v46, v32);
    }

    v21(v45, v11);

    v35 = *(v0 + 8);
    v36 = *(v0 + 256);

    return v35(v36, v1);
  }

  else
  {

    v23 = *(v0 + 240);
    v24 = *(v0 + 216);
    v25 = *(v0 + 224);
    v26 = *(v0 + 208);
    v27 = *(v0 + 176);
    v28 = *(v0 + 184);
    sub_24AD76844();
    swift_allocError();
    *v29 = 0;
    *(v29 + 8) = 0;
    *(v29 + 16) = 3;
    swift_willThrow();
    (*(v28 + 8))(v26, v27);
    (*(v25 + 8))(v23, v24);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_24AD78E24(uint64_t a1)
{
  v2 = v1[32];
  v3 = v1[30];
  v4 = v1[27];
  v5 = v1[28];
  v6 = v1[26];
  v7 = v1[22];
  v8 = v1[23];
  swift_willThrow();

  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v3, v4);

  v9 = v1[1];

  return v9();
}

uint64_t getEnumTagSinglePayload for AppleAccount(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AppleAccount(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12FindMyCommon12AppleAccountO5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24AD79044(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24AD7908C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_24AD790D0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_24AD79110(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24AD791BC(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, void *a3@<X0>)
{
  v7 = [a2 aa_personID];
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  v9 = sub_24AD845FC();
  v11 = v10;

  v12 = [a2 username];
  if (!v12)
  {

LABEL_7:
    sub_24AD76844();
    swift_allocError();
    v21 = xmmword_24AD851C0;
LABEL_8:
    *v20 = v21;
    v22 = 3;
LABEL_22:
    *(v20 + 16) = v22;
    swift_willThrow();

    return;
  }

  v49 = v3;
  v44 = v9;
  v13 = v12;
  v14 = sub_24AD845FC();
  v16 = v15;

  v17 = [a2 dataclassProperties];
  if (!v17)
  {

    v47 = 0u;
    v48 = 0u;
LABEL_19:
    sub_24AD777AC(&v47);
LABEL_21:
    sub_24AD76844();
    swift_allocError();
    *v20 = 0xD000000000000021;
    *(v20 + 8) = 0x800000024AD86660;
    v22 = 1;
    goto LABEL_22;
  }

  v18 = v17;
  v42 = v14;
  v43 = a1;
  *&v45 = 0xD000000000000021;
  *(&v45 + 1) = 0x800000024AD86660;
  v19 = [v17 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v19)
  {
    sub_24AD847EC();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  if (!*(&v46 + 1))
  {

    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7278, &qword_24AD85240);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_21;
  }

  v23 = [a2 aa_fmipAccount];
  v24 = v16;
  if (!v23)
  {
LABEL_26:

    sub_24AD76844();
    swift_allocError();
    v21 = xmmword_24AD851B0;
    goto LABEL_8;
  }

  v25 = v23;
  v26 = [a3 credentialForAccount_];
  if (!v26)
  {
    v27 = v25;
LABEL_25:

    goto LABEL_26;
  }

  v27 = v26;
  v28 = [v26 credentialItemForKey_];
  if (!v28)
  {

    goto LABEL_25;
  }

  v29 = v28;
  v39 = sub_24AD845FC();
  v41 = v30;

  v31 = [a2 aa_authToken];
  if (v31)
  {
    v32 = v31;
    v38 = sub_24AD845FC();
    v40 = v33;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  v34 = sub_24AD76770(v45, 0x6E74736F48707061, 0xEB00000000656D61);
  if (v49)
  {
  }

  else
  {
    v36 = v34;
    v49 = v35;

    *v43 = v42;
    v43[1] = v24;
    v43[2] = v44;
    v43[3] = v11;
    v43[4] = v38;
    v43[5] = v40;
    v43[6] = v39;
    v43[7] = v41;
    v37 = v49;
    v43[8] = v36;
    v43[9] = v37;
  }
}

uint64_t FMIPAccount.icloudIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FMIPAccount.dsid.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FMIPAccount.authToken.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FMIPAccount.appToken.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t FMIPAccount.appHostName.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_24AD7972C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_24AD79774(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_24AD797D8()
{
  v0 = sub_24AD8455C();
  __swift_allocate_value_buffer(v0, qword_2810667A0);
  v1 = __swift_project_value_buffer(v0, qword_2810667A0);
  if (qword_281066278 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281066788);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AD798A0()
{
  result = sub_24AD7A740(MEMORY[0x277D84F90]);
  qword_2810667B8 = result;
  return result;
}

void static AnalyticsPublisher.publish(event:)(uint64_t *a1)
{
  v2 = type metadata accessor for AnyAnalyticsEvent(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v35 - v8);
  if (MEMORY[0x24C22F4E0](v7))
  {
    if (qword_2810662A0 != -1)
    {
      swift_once();
    }

    v10 = sub_24AD8455C();
    __swift_project_value_buffer(v10, qword_2810667A0);
    v35 = sub_24AD8453C();
    v11 = sub_24AD8473C();
    if (os_log_type_enabled(v35, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24AD6F000, v35, v11, "AnalyticsPublisher not submitting analytics during unit tests.", v12, 2u);
      MEMORY[0x24C2300D0](v12, -1, -1);
    }

    v13 = v35;
  }

  else
  {
    if (qword_2810662A8 != -1)
    {
      swift_once();
    }

    if (sub_24AD725E8(*a1, a1[1], qword_2810667B8))
    {
      if (qword_2810662A0 != -1)
      {
        swift_once();
      }

      v14 = sub_24AD8455C();
      __swift_project_value_buffer(v14, qword_2810667A0);
      sub_24AD7B708(a1, v5);
      v15 = sub_24AD8453C();
      v16 = sub_24AD846FC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v36 = v18;
        *v17 = 136446210;
        v19 = *v5;
        v20 = v5[1];

        sub_24AD7B76C(v5);
        v21 = sub_24AD73F2C(v19, v20, &v36);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_24AD6F000, v15, v16, "AnalyticsPublisher not submitting disallowed analytics event %{public}s to CA.", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        MEMORY[0x24C2300D0](v18, -1, -1);
        MEMORY[0x24C2300D0](v17, -1, -1);
      }

      else
      {

        sub_24AD7B76C(v5);
      }
    }

    else
    {
      sub_24AD7A7D8(*(a1 + *(v2 + 24)));
      if (qword_2810662A0 != -1)
      {
        swift_once();
      }

      v22 = sub_24AD8455C();
      __swift_project_value_buffer(v22, qword_2810667A0);
      sub_24AD7B708(a1, v9);

      v23 = sub_24AD8453C();
      v24 = sub_24AD846FC();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v36 = v26;
        *v25 = 136446466;
        v27 = *v9;
        v28 = v9[1];

        sub_24AD7B76C(v9);
        v29 = sub_24AD73F2C(v27, v28, &v36);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2082;
        sub_24AD7B7C8();
        v30 = sub_24AD845AC();
        v32 = sub_24AD73F2C(v30, v31, &v36);

        *(v25 + 14) = v32;
        _os_log_impl(&dword_24AD6F000, v23, v24, "Analytics: %{public}s, %{public}s.", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C2300D0](v26, -1, -1);
        MEMORY[0x24C2300D0](v25, -1, -1);
      }

      else
      {

        sub_24AD7B76C(v9);
      }

      v33 = sub_24AD845EC();
      sub_24AD7B7C8();
      v34 = sub_24AD8459C();

      AnalyticsSendEvent();
    }
  }
}

uint64_t sub_24AD79DFC()
{
  v0 = sub_24AD8455C();
  __swift_allocate_value_buffer(v0, qword_281066788);
  __swift_project_value_buffer(v0, qword_281066788);
  return sub_24AD8454C();
}

uint64_t sub_24AD79E7C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24AD849DC();
  sub_24AD8462C();
  v8 = sub_24AD84A0C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_24AD8491C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_24AD7A22C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24AD79FCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA72B0, &unk_24AD85450);
  result = sub_24AD8483C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_24AD849DC();
      sub_24AD8462C();
      result = sub_24AD84A0C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24AD7A22C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24AD79FCC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24AD7A3AC();
      goto LABEL_16;
    }

    sub_24AD7A508(v8 + 1);
  }

  v10 = *v4;
  sub_24AD849DC();
  sub_24AD8462C();
  result = sub_24AD84A0C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_24AD8491C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_24AD8494C();
  __break(1u);
  return result;
}

void *sub_24AD7A3AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA72B0, &unk_24AD85450);
  v2 = *v0;
  v3 = sub_24AD8482C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_24AD7A508(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA72B0, &unk_24AD85450);
  result = sub_24AD8483C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_24AD849DC();

      sub_24AD8462C();
      result = sub_24AD84A0C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24AD7A740(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C22F810](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24AD79E7C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void *sub_24AD7A7D8(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v116 = a1;

  v6 = 0;
  v7 = MEMORY[0x277D84F98];
  while (v4)
  {
LABEL_12:
    v13 = __clz(__rbit64(v4)) | (v6 << 6);
    v14 = *(v116 + 56);
    v15 = (*(v116 + 48) + 16 * v13);
    v16 = v15[1];
    v119 = *v15;
    sub_24AD758C0(v14 + 48 * v13, &v126);
    v117 = v127;
    v118 = v126;
    v17 = v128;
    v18 = v129;

    if (!v16)
    {
      goto LABEL_97;
    }

    v4 &= v4 - 1;
    v126 = v118;
    v127 = v117;
    v128 = v17;
    v129 = v18;
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        sub_24AD70EF8(&v126, v123);
        sub_24AD7B824(v123, v121);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA72A8, &qword_24AD85448);
        if (swift_dynamicCast())
        {
          v28 = sub_24AD84A1C();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v121[0] = v7;
          v30 = sub_24AD744D4(v119, v16);
          v32 = v7[2];
          v33 = (v31 & 1) == 0;
          v10 = __OFADD__(v32, v33);
          v34 = v32 + v33;
          if (v10)
          {
            goto LABEL_102;
          }

          v35 = v31;
          if (v7[3] < v34)
          {
            sub_24AD74C60(v34, isUniquelyReferenced_nonNull_native);
            v30 = sub_24AD744D4(v119, v16);
            if ((v35 & 1) != (v36 & 1))
            {
              goto LABEL_110;
            }

            goto LABEL_48;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_48:
            if ((v35 & 1) == 0)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v105 = v30;
            sub_24AD75754();
            v30 = v105;
            if ((v35 & 1) == 0)
            {
LABEL_49:
              v7 = v121[0];
              *(v121[0] + 8 * (v30 >> 6) + 64) |= 1 << v30;
              v71 = (v7[6] + 16 * v30);
              *v71 = v119;
              v71[1] = v16;
              *(v7[7] + 8 * v30) = v28;
              v72 = v7[2];
              v10 = __OFADD__(v72, 1);
              v11 = v72 + 1;
              if (v10)
              {
                goto LABEL_107;
              }

              goto LABEL_5;
            }
          }

          goto LABEL_80;
        }

        v58 = v124;
        v59 = v125;
        __swift_project_boxed_opaque_existential_1(v123, v124);
        v114 = v110;
        MEMORY[0x28223BE20](v60);
        v113 = v61;
        v62 = v110 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
        *&v117 = v63;
        (*(v63 + 16))(v62);
        v64 = sub_24AD847DC();
        *&v118 = v59;
        if ((v64 & 1) != 0 && sub_24AD847CC() > 64)
        {
          v115 = v62;
          v121[0] = 0x8000000000000000;
          v65 = v58;
          if (sub_24AD847DC())
          {
            v62 = v115;
            if (sub_24AD847CC() < 64)
            {
              v112 = v58;
              goto LABEL_63;
            }

            v111 = v110;
            MEMORY[0x28223BE20](v66);
            v112 = v110 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_24AD76304();
            sub_24AD847AC();
LABEL_56:
            v78 = sub_24AD845DC();
            (*(v117 + 8))(v112, v58);
            if (v78)
            {
              goto LABEL_109;
            }
          }

          else
          {
            v73 = sub_24AD847DC();
            v74 = sub_24AD847CC();
            if (v73)
            {
              if (v74 > 64)
              {
                v111 = v110;
                MEMORY[0x28223BE20](v75);
                v112 = v110 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
                sub_24AD76304();
                sub_24AD847AC();
                v58 = v65;
                v62 = v115;
                goto LABEL_56;
              }

              v110[1] = *(*(v118 + 24) + 16);
              swift_getAssociatedTypeWitness();
              v112 = v110;
              MEMORY[0x28223BE20](v79);
              swift_getAssociatedConformanceWitness();
              sub_24AD8492C();
              v111 = v110;
              MEMORY[0x28223BE20](v80);
              v82 = v110 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_24AD8490C();
              v83 = sub_24AD845DC();
              (*(v117 + 8))(v82, v65);
              if (v83)
              {
                goto LABEL_109;
              }
            }

            else if (v74 >= 64)
            {
              v58 = v65;
              v62 = v115;
              goto LABEL_64;
            }

            v112 = v65;
LABEL_63:
            sub_24AD847BC();
            v62 = v115;
            v58 = v112;
          }
        }

LABEL_64:
        if (sub_24AD847CC() <= 64 && (sub_24AD847CC() != 64 || (sub_24AD847DC() & 1) != 0))
        {
LABEL_74:
          sub_24AD847BC();
          (*(v117 + 8))(v62, v58);
          v28 = sub_24AD849CC();
          v88 = swift_isUniquelyReferenced_nonNull_native();
          v121[0] = v7;
          v30 = sub_24AD744D4(v119, v16);
          v90 = v7[2];
          v91 = (v89 & 1) == 0;
          v10 = __OFADD__(v90, v91);
          v92 = v90 + v91;
          if (v10)
          {
            goto LABEL_103;
          }

          v93 = v89;
          if (v7[3] >= v92)
          {
            if ((v88 & 1) == 0)
            {
              v106 = v30;
              sub_24AD75754();
              v30 = v106;
              if ((v93 & 1) == 0)
              {
LABEL_94:
                v7 = v121[0];
                *(v121[0] + 8 * (v30 >> 6) + 64) |= 1 << v30;
                v107 = (v7[6] + 16 * v30);
                *v107 = v119;
                v107[1] = v16;
                *(v7[7] + 8 * v30) = v28;
                v108 = v7[2];
                v10 = __OFADD__(v108, 1);
                v11 = v108 + 1;
                if (v10)
                {
                  __break(1u);
LABEL_97:

                  return v7;
                }

                goto LABEL_5;
              }

              goto LABEL_80;
            }
          }

          else
          {
            sub_24AD74C60(v92, v88);
            v30 = sub_24AD744D4(v119, v16);
            if ((v93 & 1) != (v94 & 1))
            {
              goto LABEL_110;
            }
          }

          if ((v93 & 1) == 0)
          {
            goto LABEL_94;
          }

          goto LABEL_80;
        }

        v121[0] = 0x7FFFFFFFFFFFFFFFLL;
        LODWORD(v112) = sub_24AD847DC();
        v115 = v62;
        v84 = sub_24AD847CC();
        if (v112)
        {
          if (v84 >= 65)
          {
            goto LABEL_67;
          }
        }

        else if (v84 >= 64)
        {
LABEL_67:
          v112 = v110;
          MEMORY[0x28223BE20](v85);
          v113 = v110 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_24AD76304();
          sub_24AD847AC();
          v62 = v115;
          v87 = sub_24AD845DC();
          (*(v117 + 8))(v113, v58);
          if (v87)
          {
            goto LABEL_108;
          }

          goto LABEL_74;
        }

        v62 = v115;
        sub_24AD847BC();
        goto LABEL_74;
      }

      sub_24AD70EF8(&v126, v123);
      __swift_project_boxed_opaque_existential_1(v123, v124);
      MEMORY[0x28223BE20](v47);
      (*(v49 + 16))(v110 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_24AD76194();
      sub_24AD8458C();
      v28 = sub_24AD846DC();
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v122 = v7;
      v51 = sub_24AD744D4(v119, v16);
      v53 = v7[2];
      v54 = (v52 & 1) == 0;
      v10 = __OFADD__(v53, v54);
      v55 = v53 + v54;
      if (v10)
      {
        goto LABEL_101;
      }

      v56 = v52;
      if (v7[3] >= v55)
      {
        if ((v50 & 1) == 0)
        {
          v102 = v51;
          sub_24AD75754();
          v51 = v102;
          if ((v56 & 1) == 0)
          {
LABEL_88:
            v7 = v122;
            v122[(v51 >> 6) + 8] |= 1 << v51;
            v103 = (v7[6] + 16 * v51);
            *v103 = v119;
            v103[1] = v16;
            *(v7[7] + 8 * v51) = v28;
            v104 = v7[2];
            v10 = __OFADD__(v104, 1);
            v11 = v104 + 1;
            if (v10)
            {
              goto LABEL_104;
            }

            goto LABEL_5;
          }

          goto LABEL_46;
        }
      }

      else
      {
        sub_24AD74C60(v55, v50);
        v51 = sub_24AD744D4(v119, v16);
        if ((v56 & 1) != (v57 & 1))
        {
          goto LABEL_110;
        }
      }

      if ((v56 & 1) == 0)
      {
        goto LABEL_88;
      }

LABEL_46:
      v70 = v51;

      v7 = v122;
LABEL_81:
      v95 = v7[7];
      v96 = *(v95 + 8 * v70);
      *(v95 + 8 * v70) = v28;

LABEL_6:
      __swift_destroy_boxed_opaque_existential_0Tm(v123);
    }

    else
    {
      if (v18)
      {
        sub_24AD70EF8(&v126, v123);
        __swift_project_boxed_opaque_existential_1(v123, v124);
        MEMORY[0x28223BE20](v37);
        (*(v39 + 16))(v110 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
        sub_24AD8467C();
        v28 = sub_24AD845EC();

        v40 = swift_isUniquelyReferenced_nonNull_native();
        v121[0] = v7;
        v30 = sub_24AD744D4(v119, v16);
        v42 = v7[2];
        v43 = (v41 & 1) == 0;
        v10 = __OFADD__(v42, v43);
        v44 = v42 + v43;
        if (v10)
        {
          goto LABEL_100;
        }

        v45 = v41;
        if (v7[3] >= v44)
        {
          if ((v40 & 1) == 0)
          {
            v101 = v30;
            sub_24AD75754();
            v30 = v101;
            if ((v45 & 1) == 0)
            {
LABEL_4:
              v7 = v121[0];
              *(v121[0] + 8 * (v30 >> 6) + 64) |= 1 << v30;
              v8 = (v7[6] + 16 * v30);
              *v8 = v119;
              v8[1] = v16;
              *(v7[7] + 8 * v30) = v28;
              v9 = v7[2];
              v10 = __OFADD__(v9, 1);
              v11 = v9 + 1;
              if (v10)
              {
                goto LABEL_105;
              }

LABEL_5:
              v7[2] = v11;
              goto LABEL_6;
            }

            goto LABEL_80;
          }
        }

        else
        {
          sub_24AD74C60(v44, v40);
          v30 = sub_24AD744D4(v119, v16);
          if ((v45 & 1) != (v46 & 1))
          {
            goto LABEL_110;
          }
        }

        if ((v45 & 1) == 0)
        {
          goto LABEL_4;
        }

LABEL_80:
        v70 = v30;

        v7 = v121[0];
        goto LABEL_81;
      }

      v120 = v118;
      v19 = sub_24AD8469C();
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v123[0] = v7;
      v21 = sub_24AD744D4(v119, v16);
      v23 = v7[2];
      v24 = (v22 & 1) == 0;
      v10 = __OFADD__(v23, v24);
      v25 = v23 + v24;
      if (v10)
      {
        goto LABEL_99;
      }

      v26 = v22;
      if (v7[3] >= v25)
      {
        if (v20)
        {
          goto LABEL_39;
        }

        v97 = v21;
        sub_24AD75754();
        v21 = v97;
        if ((v26 & 1) == 0)
        {
          goto LABEL_83;
        }

LABEL_40:
        v67 = v21;

        v7 = v123[0];
        v68 = *(v123[0] + 56);
        v69 = *(v68 + 8 * v67);
        *(v68 + 8 * v67) = v19;
      }

      else
      {
        sub_24AD74C60(v25, v20);
        v21 = sub_24AD744D4(v119, v16);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_110;
        }

LABEL_39:
        if (v26)
        {
          goto LABEL_40;
        }

LABEL_83:
        v7 = v123[0];
        *(v123[0] + 8 * (v21 >> 6) + 64) |= 1 << v21;
        v98 = (v7[6] + 16 * v21);
        *v98 = v119;
        v98[1] = v16;
        *(v7[7] + 8 * v21) = v19;
        v99 = v7[2];
        v10 = __OFADD__(v99, 1);
        v100 = v99 + 1;
        if (v10)
        {
          goto LABEL_106;
        }

        v7[2] = v100;
      }
    }
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v5)
    {
      goto LABEL_97;
    }

    v4 = *(v1 + 8 * v12);
    ++v6;
    if (v4)
    {
      v6 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
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
  result = sub_24AD8495C();
  __break(1u);
  return result;
}

uint64_t sub_24AD7B708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyAnalyticsEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AD7B76C(uint64_t a1)
{
  v2 = type metadata accessor for AnyAnalyticsEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24AD7B7C8()
{
  result = qword_281066228;
  if (!qword_281066228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281066228);
  }

  return result;
}

uint64_t sub_24AD7B824(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t StateCaptureHint.version.getter()
{
  return *v0;
}

{
  return *v0;
}

uint64_t StateCaptureHint.requestor.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

{
  v1 = *(v0 + 8);

  return v1;
}

void StateCaptureHint.api.getter(_BYTE *a1@<X8>)
{
  *a1 = *(v1 + 24);
}

{
  *a1 = *(v1 + 24);
}

void StateCaptureHint.reason.getter(_DWORD *a1@<X8>)
{
  *a1 = *(v1 + 28);
}

{
  *a1 = *(v1 + 28);
}

uint64_t StateCaptureHint.description.getter()
{
  v1 = *(v0 + 24);
  sub_24AD8485C();

  v2 = sub_24AD848FC();
  MEMORY[0x24C22F760](v2);

  v3 = 0xE600000000000000;
  MEMORY[0x24C22F760](0x203A69706120, 0xE600000000000000);
  v4 = 0xE600000000000000;
  v5 = 0x746C7561662ELL;
  if (v1 != 1)
  {
    v5 = 0x747365757165722ELL;
    v4 = 0xE800000000000000;
  }

  if (v1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x726F7272652ELL;
  }

  if (v1)
  {
    v3 = v4;
  }

  MEMORY[0x24C22F760](v6, v3);

  MEMORY[0x24C22F760](0x3A6E6F7361657220, 0xE900000000000020);
  v7 = StateCaptureReason.description.getter();
  MEMORY[0x24C22F760](v7);

  MEMORY[0x24C22F760](93, 0xE100000000000000);
  return 0x6E6F69737265765BLL;
}

{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);

  sub_24AD8485C();

  v4 = sub_24AD848FC();
  MEMORY[0x24C22F760](v4);

  v5 = 0xE600000000000000;
  MEMORY[0x24C22F760](0x203A69706120, 0xE600000000000000);
  v6 = 0x746C7561662ELL;
  v7 = 0xE800000000000000;
  if (v3 == 1)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v6 = 0x747365757165722ELL;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x726F7272652ELL;
  }

  if (v3)
  {
    v5 = v7;
  }

  MEMORY[0x24C22F760](v8, v5);

  MEMORY[0x24C22F760](0x3A6E6F7361657220, 0xE900000000000020);
  v9 = StateCaptureReason.description.getter();
  MEMORY[0x24C22F760](v9);

  MEMORY[0x24C22F760](0x736575716572202CLL, 0xED0000203A726F74);
  if (v1)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x296C6C756E28;
  }

  if (!v1)
  {
    v1 = 0xE600000000000000;
  }

  MEMORY[0x24C22F760](v10, v1);

  MEMORY[0x24C22F760](93, 0xE100000000000000);
  return 0x6E6F69737265765BLL;
}

uint64_t StateCaptureHint.init(version:requestor:api:reason:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, int *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a4;
  v7 = *a5;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = v6;
  *(a6 + 28) = v7;
  return result;
}

{
  v6 = *a4;
  v7 = *a5;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = v6;
  *(a6 + 28) = v7;
  return result;
}

uint64_t StateCaptureHintAPI.description.getter()
{
  v1 = 0x746C7561662ELL;
  if (*v0 != 1)
  {
    v1 = 0x747365757165722ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F7272652ELL;
  }
}

{
  v1 = 0x746C7561662ELL;
  if (*v0 != 1)
  {
    v1 = 0x747365757165722ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F7272652ELL;
  }
}

FindMyCommon::StateCaptureHintAPI_optional __swiftcall StateCaptureHintAPI.init(rawValue:)(Swift::UInt32 rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t StateCaptureHintAPI.rawValue.getter()
{
  return *v0 + 1;
}

{
  return *v0 + 1;
}

uint64_t sub_24AD7BAE8()
{
  sub_24AD849DC();
  sub_24AD849FC();
  return sub_24AD84A0C();
}

uint64_t sub_24AD7BB30(uint64_t a1)
{
  sub_24AD849DC();
  sub_24AD849FC();
  return sub_24AD84A0C();
}

uint64_t sub_24AD7BB7C()
{
  v1 = 0x746C7561662ELL;
  if (*v0 != 1)
  {
    v1 = 0x747365757165722ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F7272652ELL;
  }
}

uint64_t StateCaptureReason.rawValue.getter()
{
  return *v0;
}

{
  return *v0;
}

uint64_t StateCaptureReason.init(rawValue:)@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *a2 = result;
  return result;
}

{
  *a2 = result;
  return result;
}

void static StateCaptureReason.general.getter(_DWORD *a1@<X8>)
{
  *a1 = 1;
}

{
  *a1 = 1;
}

void static StateCaptureReason.networking.getter(_DWORD *a1@<X8>)
{
  *a1 = 2;
}

{
  *a1 = 2;
}

void static StateCaptureReason.cellular.getter(_DWORD *a1@<X8>)
{
  *a1 = 4;
}

{
  *a1 = 4;
}

void static StateCaptureReason.authentication.getter(_DWORD *a1@<X8>)
{
  *a1 = 8;
}

{
  *a1 = 8;
}

uint64_t sub_24AD7BC10@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
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

void static StateCaptureReason.all.getter(_DWORD *a1@<X8>)
{
  *a1 = 15;
}

{
  *a1 = 15;
}

uint64_t StateCaptureReason.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_24AD7C504(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_24AD7C504((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x6C6172656E65672ELL;
  *(v5 + 5) = 0xE800000000000000;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24AD7C504(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_24AD7C504((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x6B726F7774656E2ELL;
    *(v8 + 5) = 0xEB00000000676E69;
  }

LABEL_12:
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24AD7C504(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_24AD7C504((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  *(v11 + 4) = 0x616C756C6C65632ELL;
  *(v11 + 5) = 0xE900000000000072;
  if ((v1 & 8) != 0)
  {
LABEL_20:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24AD7C504(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_24AD7C504((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 0x746E65687475612ELL;
    *(v14 + 5) = 0xEF6E6F6974616369;
  }

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA72B8, &qword_24AD85460);
  sub_24AD7C0FC();
  v15 = sub_24AD845CC();
  v17 = v16;

  MEMORY[0x24C22F760](v15, v17);

  MEMORY[0x24C22F760](93, 0xE100000000000000);
  return 91;
}

{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_24AD7C504(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_24AD7C504((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x6C6172656E65672ELL;
  *(v5 + 5) = 0xE800000000000000;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24AD7C504(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_24AD7C504((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x6B726F7774656E2ELL;
    *(v8 + 5) = 0xEB00000000676E69;
  }

LABEL_12:
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24AD7C504(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_24AD7C504((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  *(v11 + 4) = 0x616C756C6C65632ELL;
  *(v11 + 5) = 0xE900000000000072;
  if ((v1 & 8) != 0)
  {
LABEL_20:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24AD7C504(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_24AD7C504((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 0x746E65687475612ELL;
    *(v14 + 5) = 0xEF6E6F6974616369;
  }

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA72B8, &qword_24AD85460);
  sub_24AD7C0FC();
  v15 = sub_24AD845CC();
  v17 = v16;

  MEMORY[0x24C22F760](v15, v17);

  MEMORY[0x24C22F760](93, 0xE100000000000000);
  return 91;
}

BOOL sub_24AD7BF98(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_24AD7BFC8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_24AD7BFF4@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_24AD7C0CC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

unint64_t sub_24AD7C0FC()
{
  result = qword_281066248;
  if (!qword_281066248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA72B8, &qword_24AD85460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281066248);
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

uint64_t StateCaptureStateData.title.getter()
{
  v1 = *v0;

  return v1;
}

{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t StateCaptureStateData.data.getter()
{
  v1 = *(v0 + 16);
  sub_24AD7C610(v1, *(v0 + 24));
  return v1;
}

{
  v1 = *(v0 + 24);
  sub_24AD7C610(v1, *(v0 + 32));
  return v1;
}

void StateCaptureStateData.init(type:title:data:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
}

unint64_t StateCaptureStateData.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AD8485C();

  MEMORY[0x24C22F760](v1, v2);
  MEMORY[0x24C22F760](0x203A6174616420, 0xE700000000000000);
  v3 = sub_24AD8449C();
  MEMORY[0x24C22F760](v3);

  MEMORY[0x24C22F760](93, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t StateCaptureStateData.init(title:codable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_24AD8446C();
  swift_allocObject();
  sub_24AD8445C();
  v8 = sub_24AD8444C();
  if (v4)
  {
  }

  else
  {
    v10 = v8;
    v11 = v9;

    *a4 = a1;
    a4[1] = a2;
    a4[2] = v10;
    a4[3] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a3);
}

uint64_t StateCaptureDateType.description.getter()
{
  return 0x696C61697265732ELL;
}

{
  v1 = 0x75626F746F72702ELL;
  if (*v0 != 1)
  {
    v1 = 0x6D6F747375632ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696C61697265732ELL;
  }
}

uint64_t sub_24AD7C418()
{
  sub_24AD849DC();
  sub_24AD849FC();
  return sub_24AD84A0C();
}

uint64_t sub_24AD7C484(uint64_t a1)
{
  sub_24AD849DC();
  sub_24AD849FC();
  return sub_24AD84A0C();
}

char *sub_24AD7C504(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA72F0, &qword_24AD859A0);
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

uint64_t sub_24AD7C610(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_24AD7C668()
{
  result = qword_27EFA72C0;
  if (!qword_27EFA72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA72C0);
  }

  return result;
}

unint64_t sub_24AD7C6C0()
{
  result = qword_27EFA72C8;
  if (!qword_27EFA72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA72C8);
  }

  return result;
}

unint64_t sub_24AD7C718()
{
  result = qword_27EFA72D0;
  if (!qword_27EFA72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA72D0);
  }

  return result;
}

unint64_t sub_24AD7C770()
{
  result = qword_27EFA72D8;
  if (!qword_27EFA72D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA72D8);
  }

  return result;
}

unint64_t sub_24AD7C7C8()
{
  result = qword_27EFA72E0;
  if (!qword_27EFA72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA72E0);
  }

  return result;
}

unint64_t sub_24AD7C820()
{
  result = qword_27EFA72E8;
  if (!qword_27EFA72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA72E8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24AD7C880(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24AD7C8DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

ValueMetadata *type metadata accessor for StateCaptureHint()
{
  return &type metadata for StateCaptureHint;
}

{
  return &type metadata for StateCaptureHint;
}

uint64_t getEnumTagSinglePayload for StateCaptureHintAPI(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StateCaptureHintAPI(uint64_t result, unsigned int a2, unsigned int a3)
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

ValueMetadata *type metadata accessor for StateCaptureHintAPI()
{
  return &type metadata for StateCaptureHintAPI;
}

{
  return &type metadata for StateCaptureHintAPI;
}

ValueMetadata *type metadata accessor for StateCaptureReason()
{
  return &type metadata for StateCaptureReason;
}

{
  return &type metadata for StateCaptureReason;
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

uint64_t sub_24AD7CAC8(uint64_t a1, int a2)
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

uint64_t sub_24AD7CB10(uint64_t result, int a2, int a3)
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

ValueMetadata *type metadata accessor for StateCaptureStateData()
{
  return &type metadata for StateCaptureStateData;
}

{
  return &type metadata for StateCaptureStateData;
}

ValueMetadata *type metadata accessor for StateCaptureDateType()
{
  return &type metadata for StateCaptureDateType;
}

{
  return &type metadata for StateCaptureDateType;
}

uint64_t sub_24AD7CB74()
{
  v0 = sub_24AD8455C();
  __swift_allocate_value_buffer(v0, qword_281066410);
  v1 = __swift_project_value_buffer(v0, qword_281066410);
  if (qword_281066280 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281066288);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t StateCapture.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12FindMyCommon12StateCapture_id;
  v4 = sub_24AD8452C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StateCapture.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  return sub_24AD7E824(a1, a2, StateCapture.init(_:));
}

{
  return sub_24AD7E824(a1, a2, StateCapture.init(_:));
}

char *StateCapture.init(_:)(uint64_t a1, uint64_t a2)
{
  return sub_24AD7E898(a1, a2, &unk_285E2D0C0, sub_24AD80CF0);
}

{
  return sub_24AD7E898(a1, a2, &unk_285E2D0E8, sub_24AD80DB0);
}

uint64_t sub_24AD7CCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v79 = a5;
  v80 = a4;
  v77 = a2;
  v78 = a3;
  v81 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7318, &qword_24AD85A20);
  MEMORY[0x28223BE20](v7);
  v65 = &v61 - v8;
  v64 = type metadata accessor for StateCaptureDateType();
  Description = v64[-1].Description;
  MEMORY[0x28223BE20](v9);
  v62 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StateCaptureHint();
  v76 = v11[-1].Description;
  MEMORY[0x28223BE20](v12);
  v74 = v13;
  v85 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_24AD8452C();
  v75 = *(v84 - 8);
  MEMORY[0x28223BE20](v14);
  v73 = v15;
  v83 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7328, &qword_24AD85A30);
  MEMORY[0x28223BE20](v16);
  v18 = &v61 - v17;
  v19 = type metadata accessor for StateCaptureReason();
  v20 = v19[-1].Description;
  MEMORY[0x28223BE20](v21);
  v23 = (&v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for StateCaptureHintAPI();
  v25 = v24[-1].Description;
  MEMORY[0x28223BE20](v26);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AD8440C();
  v72 = dispatch_semaphore_create(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7330, &qword_24AD85A38);
  swift_allocObject();
  v82 = sub_24AD843FC();
  v71 = StateCaptureHint.version.getter();
  v29 = StateCaptureHint.requestor.getter();
  v69 = v30;
  v70 = v29;
  StateCaptureHint.api.getter(v28);
  v31 = StateCaptureHintAPI.rawValue.getter();
  result = v25[1](v28, v24);
  v68 = v31 - 1;
  if ((v31 - 1) > 2)
  {
    __break(1u);
  }

  else
  {
    StateCaptureHint.reason.getter(v23);
    v66 = StateCaptureReason.rawValue.getter();
    v20[1](v23, v19);
    v33 = sub_24AD846CC();
    v34 = *(*(v33 - 8) + 56);
    v67 = v18;
    v34(v18, 1, 1, v33);
    v35 = v75;
    (*(v75 + 16))(v83, v77, v84);
    v36 = v76;
    v76[2](v85, a1, v11);
    v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v38 = (v73 + *(v36 + 80) + v37) & ~*(v36 + 80);
    v39 = (v74 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v40 + 39) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
    v77 = v11;
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = 0;
    (*(v35 + 32))(v43 + v37, v83, v84);
    v36[4]((v43 + v38), v85, v77);
    v44 = (v43 + v39);
    v45 = v80;
    *v44 = v78;
    v44[1] = v45;
    v46 = v43 + v40;
    *v46 = v71;
    v47 = v69;
    *(v46 + 8) = v70;
    *(v46 + 16) = v47;
    *(v46 + 24) = v68;
    *(v46 + 28) = v66;
    *(v43 + v41) = v82;
    v48 = v72;
    *(v43 + v42) = v72;
    *(v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8)) = v79;

    v49 = v48;
    sub_24AD81660(0, 0, v67, &unk_24AD85A48, v43);

    sub_24AD8477C();
    sub_24AD843DC();
    v50 = v87;
    if (!v87)
    {

      v59 = 1;
      v57 = v81;
      goto LABEL_6;
    }

    v51 = v86;
    v52 = v88;
    v53 = v89;

    sub_24AD7C610(v52, v53);
    v54 = v65;
    StateCaptureDateType.init(rawValue:)(1u);
    v55 = Description;
    v56 = v64;
    result = Description[6](v54, 1, v64);
    v57 = v81;
    if (result != 1)
    {
      v58 = v62;
      v55[4](v62, v54, v56);
      StateCaptureStateData.init(type:title:data:)(v58, v51, v50, v52, v53, v57);
      sub_24AD81098(v51, v50, v52, v53);

      v59 = 0;
LABEL_6:
      v60 = type metadata accessor for StateCaptureStateData();
      return (*(v60[-1].Description + 7))(v57, v59, 1, v60);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24AD7D44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *(v8 + 176) = v18;
  *(v8 + 144) = v16;
  *(v8 + 160) = v17;
  *(v8 + 424) = a8;
  *(v8 + 128) = a6;
  *(v8 + 136) = a7;
  *(v8 + 112) = a4;
  *(v8 + 120) = a5;
  v9 = sub_24AD84A5C();
  *(v8 + 184) = v9;
  *(v8 + 192) = *(v9 - 8);
  *(v8 + 200) = swift_task_alloc();
  v10 = type metadata accessor for StateCaptureHint();
  *(v8 + 208) = v10;
  *(v8 + 216) = v10[-1].Description;
  *(v8 + 224) = swift_task_alloc();
  v11 = sub_24AD8452C();
  *(v8 + 232) = v11;
  *(v8 + 240) = *(v11 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  v12 = sub_24AD8489C();
  *(v8 + 280) = v12;
  *(v8 + 288) = *(v12 - 8);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  v13 = sub_24AD848BC();
  *(v8 + 352) = v13;
  *(v8 + 360) = *(v13 - 8);
  *(v8 + 368) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD7D704, 0, 0);
}

uint64_t sub_24AD7D704(uint64_t a1)
{
  v42 = v1;
  sub_24AD848AC();
  sub_24AD8487C();
  if (qword_281066408 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 272);
  v3 = *(v1 + 232);
  v4 = *(v1 + 240);
  v6 = *(v1 + 216);
  v5 = *(v1 + 224);
  v7 = *(v1 + 208);
  v9 = *(v1 + 112);
  v8 = *(v1 + 120);
  v10 = sub_24AD8455C();
  *(v1 + 376) = __swift_project_value_buffer(v10, qword_281066410);
  v11 = *(v4 + 16);
  *(v1 + 384) = v11;
  *(v1 + 392) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v2, v9, v3);
  (*(v6 + 16))(v5, v8, v7);
  v12 = sub_24AD8453C();
  v13 = sub_24AD8473C();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v1 + 272);
  v17 = *(v1 + 232);
  v16 = *(v1 + 240);
  v18 = *(v1 + 216);
  v19 = *(v1 + 224);
  v20 = *(v1 + 208);
  if (v14)
  {
    v38 = v13;
    v21 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41 = v39;
    *v21 = 136446466;
    sub_24AD81138(qword_281066438, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v22 = sub_24AD848FC();
    v36 = v20;
    log = v12;
    v23 = v19;
    v25 = v24;
    v26 = *(v16 + 8);
    v26(v15, v17);
    v27 = sub_24AD73F2C(v22, v25, &v41);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2082;
    sub_24AD81138(&qword_281066270, type metadata accessor for StateCaptureHint, &protocol conformance descriptor for StateCaptureHint);
    v28 = sub_24AD848FC();
    v30 = v29;
    (*(v18 + 8))(v23, v36);
    v31 = sub_24AD73F2C(v28, v30, &v41);

    *(v21 + 14) = v31;
    _os_log_impl(&dword_24AD6F000, log, v38, "Running state capture %{public}s: hint: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C2300D0](v39, -1, -1);
    MEMORY[0x24C2300D0](v21, -1, -1);
  }

  else
  {

    (*(v18 + 8))(v19, v20);
    v26 = *(v16 + 8);
    v26(v15, v17);
  }

  *(v1 + 400) = v26;
  v32 = *(v1 + 160);
  v33 = *(v1 + 128);
  *(v1 + 48) = *(v1 + 424);
  *(v1 + 56) = *(v1 + 144);
  *(v1 + 72) = v32;
  *(v1 + 76) = HIDWORD(v32);
  v40 = (v33 + *v33);
  v34 = swift_task_alloc();
  *(v1 + 408) = v34;
  *v34 = v1;
  v34[1] = sub_24AD7DB20;

  return v40(v1 + 16, v1 + 48);
}

uint64_t sub_24AD7DB20()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_24AD7E18C;
  }

  else
  {
    v2 = sub_24AD7DC34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD7DC34(uint64_t a1)
{
  v66 = v1;
  loga = v1[48];
  v2 = v1[42];
  v59 = v1[43];
  v61 = v1[40];
  v4 = v1[35];
  v3 = v1[36];
  v49 = v1[33];
  v50 = v1[29];
  v52 = v1[41];
  v5 = v1[14];
  v7 = v1[2];
  v6 = v1[3];
  v9 = v1[4];
  v8 = v1[5];
  sub_24AD8487C();
  (loga)(v49, v5, v50);
  v10 = *(v3 + 16);
  v10(v52, v59, v4);
  v10(v61, v2, v4);
  sub_24AD8104C(v7, v6, v9, v8);
  v11 = sub_24AD8453C();
  v12 = sub_24AD8473C();
  v64 = v7;
  v60 = v8;
  v62 = v9;
  sub_24AD81098(v7, v6, v9, v8);
  v13 = os_log_type_enabled(v11, v12);
  v14 = v1[50];
  v63 = v6;
  if (v13)
  {
    v53 = v12;
    log = v11;
    v15 = v1[33];
    v16 = v1[29];
    v17 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v65 = v51;
    *v17 = 136446722;
    sub_24AD81138(qword_281066438, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v18 = sub_24AD848FC();
    v20 = v19;
    v14(v15, v16);
    v21 = sub_24AD73F2C(v18, v20, &v65);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    if (v6)
    {

      v22 = v64;
      v23 = v6;
    }

    else
    {
      v22 = 0;
      v23 = 0xE000000000000000;
    }

    v31 = v1[40];
    v30 = v1[41];
    v33 = v1[35];
    v32 = v1[36];
    v35 = v1[24];
    v34 = v1[25];
    v58 = v1[23];
    v36 = sub_24AD73F2C(v22, v23, &v65);

    *(v17 + 14) = v36;
    *(v17 + 22) = 2080;
    sub_24AD84A4C();
    sub_24AD81138(&qword_281066220, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    v37 = sub_24AD84A2C();
    v39 = v38;
    (*(v35 + 8))(v34, v58);
    v40 = *(v32 + 8);
    v40(v31, v33);
    v57 = v40;
    v40(v30, v33);
    v41 = sub_24AD73F2C(v37, v39, &v65);

    *(v17 + 24) = v41;
    _os_log_impl(&dword_24AD6F000, log, v53, "State capture duration: %{public}s [%s]: %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C2300D0](v51, -1, -1);
    MEMORY[0x24C2300D0](v17, -1, -1);
  }

  else
  {
    v24 = v1[40];
    v25 = v1[41];
    v26 = v1[35];
    v27 = v1[36];
    logb = v1[33];
    v28 = v1[29];

    v29 = *(v27 + 8);
    v29(v24, v26);
    v57 = v29;
    v29(v25, v26);
    v14(logb, v28);
  }

  v1[10] = v64;
  v1[11] = v63;
  v1[12] = v62;
  v1[13] = v60;
  sub_24AD8104C(v64, v63, v62, v60);
  sub_24AD843EC();
  sub_24AD8478C();
  sub_24AD81098(v64, v63, v62, v60);
  v42 = v1[45];
  v43 = v1[46];
  v45 = v1[43];
  v44 = v1[44];
  v46 = v1[35];
  v57(v1[42], v46);
  v57(v45, v46);
  (*(v42 + 8))(v43, v44);

  v47 = v1[1];

  return v47();
}

uint64_t sub_24AD7E18C()
{
  v67 = v0;
  v1 = *(v0 + 416);
  (*(v0 + 384))(*(v0 + 256), *(v0 + 112), *(v0 + 232));
  MEMORY[0x24C22FF80](v1);
  v2 = sub_24AD8453C();
  v3 = sub_24AD8471C();

  if (os_log_type_enabled(v2, v3))
  {
    v61 = *(v0 + 400);
    v64 = *(v0 + 416);
    v4 = *(v0 + 256);
    v5 = *(v0 + 232);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v66 = v8;
    *v6 = 136446466;
    sub_24AD81138(qword_281066438, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v9 = sub_24AD848FC();
    v11 = v10;
    v61(v4, v5);
    v12 = sub_24AD73F2C(v9, v11, &v66);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2112;
    MEMORY[0x24C22FF80](v64);
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_24AD6F000, v2, v3, "Error from StateCapture handler %{public}s: %@", v6, 0x16u);
    sub_24AD761E8(v7, &qword_27EFA7320, &qword_24AD85A28);
    MEMORY[0x24C2300D0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x24C2300D0](v8, -1, -1);
    MEMORY[0x24C2300D0](v6, -1, -1);
  }

  else
  {
    v14 = *(v0 + 400);
    v15 = *(v0 + 256);
    v16 = *(v0 + 232);

    v14(v15, v16);
  }

  v17 = *(v0 + 384);
  v59 = *(v0 + 344);
  v19 = *(v0 + 304);
  v18 = *(v0 + 312);
  v20 = *(v0 + 288);
  v62 = *(v0 + 296);
  v21 = *(v0 + 280);
  v22 = *(v0 + 248);
  v23 = *(v0 + 232);
  v24 = *(v0 + 112);
  sub_24AD8487C();
  v17(v22, v24, v23);
  v25 = *(v20 + 16);
  v25(v19, v59, v21);
  v25(v62, v18, v21);
  v26 = sub_24AD8453C();
  v27 = sub_24AD8473C();
  v28 = os_log_type_enabled(v26, v27);
  v65 = *(v0 + 400);
  v30 = *(v0 + 296);
  v29 = *(v0 + 304);
  v32 = *(v0 + 280);
  v31 = *(v0 + 288);
  v33 = *(v0 + 248);
  v34 = *(v0 + 232);
  if (v28)
  {
    v63 = v27;
    v35 = *(v0 + 200);
    v56 = *(v0 + 192);
    v58 = *(v0 + 184);
    v55 = *(v0 + 296);
    v36 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v66 = v60;
    *v36 = 136446466;
    sub_24AD81138(qword_281066438, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    log = v26;
    v37 = sub_24AD848FC();
    v54 = v29;
    v39 = v38;
    v65(v33, v34);
    v40 = sub_24AD73F2C(v37, v39, &v66);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2080;
    sub_24AD84A4C();
    sub_24AD81138(&qword_281066220, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    v41 = sub_24AD84A2C();
    v43 = v42;
    (*(v56 + 8))(v35, v58);
    v44 = *(v31 + 8);
    v44(v55, v32);
    v44(v54, v32);
    v45 = sub_24AD73F2C(v41, v43, &v66);

    *(v36 + 14) = v45;
    _os_log_impl(&dword_24AD6F000, log, v63, "State capture duration: %{public}s: %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C2300D0](v60, -1, -1);
    MEMORY[0x24C2300D0](v36, -1, -1);
  }

  else
  {

    v44 = *(v31 + 8);
    v44(v30, v32);
    v44(v29, v32);
    v65(v33, v34);
  }

  v46 = *(v0 + 416);
  sub_24AD8478C();

  v47 = *(v0 + 360);
  v48 = *(v0 + 368);
  v50 = *(v0 + 344);
  v49 = *(v0 + 352);
  v51 = *(v0 + 280);
  v44(*(v0 + 312), v51);
  v44(v50, v51);
  (*(v47 + 8))(v48, v49);

  v52 = *(v0 + 8);

  return v52();
}

char *sub_24AD7E898(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v84 = a1;
  v85 = a4;
  v83 = a3;
  v5 = v4;
  v87 = a2;
  v90 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA72F8, &qword_24AD859B0);
  MEMORY[0x28223BE20](v6);
  v82 = &v74 - v7;
  v8 = type metadata accessor for StateCaptureHandle();
  Description = v8[-1].Description;
  v92 = v8;
  MEMORY[0x28223BE20](v9);
  v75 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v86 = &v74 - v12;
  v93 = sub_24AD8452C();
  v89 = *(v93 - 8);
  v80 = *(v89 + 64);
  MEMORY[0x28223BE20](v13);
  v79 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v81 = &v74 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v74 - v18;
  sub_24AD8474C();
  MEMORY[0x28223BE20](v20);
  sub_24AD8457C();
  MEMORY[0x28223BE20](v21);
  v22 = sub_24AD8475C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtC12FindMyCommon12StateCapture_queue;
  sub_24AD80C40();
  (*(v23 + 104))(v26, *MEMORY[0x277D85268], v22);
  sub_24AD8456C();
  v94[0] = MEMORY[0x277D84F90];
  sub_24AD81138(&qword_281066238, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7300, &qword_24AD859B8);
  sub_24AD80C8C();
  sub_24AD8480C();
  v28 = v87;
  v29 = v27;
  *&v4[v27] = sub_24AD8476C();
  sub_24AD8451C();
  v30 = v89;
  v31 = v89 + 16;
  v32 = *(v89 + 16);
  v76 = OBJC_IVAR____TtC12FindMyCommon12StateCapture_id;
  v33 = v93;
  v32(&v4[OBJC_IVAR____TtC12FindMyCommon12StateCapture_id], v19, v93);
  v34 = v81;
  v88 = v19;
  v77 = v31;
  v78 = v32;
  v32(v81, v19, v33);
  v35 = v30;
  v36 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v37 = (v80 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  (*(v35 + 32))(v39 + v36, v34, v33);
  v40 = (v39 + v37);
  *v40 = v84;
  v40[1] = v28;
  v41 = Description;
  *(v39 + v38) = v90;
  v42 = *&v5[v29];
  v43 = v82;

  v44 = v42;
  os_state_add_handler(queue:block:)(v85, v39, v43);

  v45 = v92;
  if ((v41[6])(v43, 1, v92) == 1)
  {
    v46 = *(v35 + 8);
    v47 = v93;
    v46(v88, v93);

    sub_24AD761E8(v43, &qword_27EFA72F8, &qword_24AD859B0);
    v46(&v5[v76], v47);

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v90 = v39;
    v48 = v88;
    v49 = v86;
    (v41[4])(v86, v43, v45);
    v50 = v41[2];
    v50(&v5[OBJC_IVAR____TtC12FindMyCommon12StateCapture_handle], v49, v45);
    if (qword_281066408 != -1)
    {
      swift_once();
    }

    v51 = sub_24AD8455C();
    __swift_project_value_buffer(v51, qword_281066410);
    v52 = v79;
    v78(v79, v48, v93);

    v53 = sub_24AD8453C();
    v54 = sub_24AD8470C();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      LODWORD(v83) = v54;
      v56 = v93;
      v85 = v5;
      v57 = v55;
      v84 = swift_slowAlloc();
      v94[0] = v84;
      *v57 = 136446466;
      sub_24AD81138(qword_281066438, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v58 = sub_24AD848FC();
      v60 = v59;
      v89 = *(v89 + 8);
      (v89)(v52, v56);
      v61 = sub_24AD73F2C(v58, v60, v94);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2080;
      v62 = v75;
      v63 = v92;
      v50(v75, &v85[OBJC_IVAR____TtC12FindMyCommon12StateCapture_handle], v92);
      sub_24AD81138(&qword_27EFA7308, type metadata accessor for StateCaptureHandle, &protocol conformance descriptor for StateCaptureHandle);
      v64 = sub_24AD848FC();
      v66 = v65;
      v67 = Description[1];
      v67(v62, v63);
      v68 = sub_24AD73F2C(v64, v66, v94);

      *(v57 + 14) = v68;
      _os_log_impl(&dword_24AD6F000, v53, v83, "Added handler: %{public}s %s", v57, 0x16u);
      v69 = v84;
      swift_arrayDestroy();
      MEMORY[0x24C2300D0](v69, -1, -1);
      v70 = v57;
      v5 = v85;
      MEMORY[0x24C2300D0](v70, -1, -1);

      v67(v86, v63);
      (v89)(v88, v56);
    }

    else
    {

      v71 = *(v89 + 8);
      v72 = v93;
      v71(v52, v93);
      (Description[1])(v86, v92);
      v71(v88, v72);
    }
  }

  return v5;
}

uint64_t sub_24AD7F214@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, int *)@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v154 = a4;
  v155 = a3;
  v168 = a2;
  v156 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7318, &qword_24AD85A20);
  MEMORY[0x28223BE20](v6);
  v131 = &v127 - v7;
  v129 = type metadata accessor for StateCaptureDateType();
  Description = v129[-1].Description;
  MEMORY[0x28223BE20](v8);
  v128 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_24AD84A5C();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v10);
  v133 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for StateCaptureHint();
  v152 = v153[-1].Description;
  MEMORY[0x28223BE20](v12);
  v151 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_24AD8452C();
  v169 = *(v164 - 8);
  MEMORY[0x28223BE20](v14);
  v141 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v138 = &v127 - v17;
  MEMORY[0x28223BE20](v18);
  v158 = &v127 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v127 - v21;
  v161 = sub_24AD8489C();
  v157 = *(v161 - 8);
  MEMORY[0x28223BE20](v23);
  v139 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v140 = &v127 - v26;
  MEMORY[0x28223BE20](v27);
  v142 = &v127 - v28;
  MEMORY[0x28223BE20](v29);
  v159 = &v127 - v30;
  MEMORY[0x28223BE20](v31);
  v136 = &v127 - v32;
  MEMORY[0x28223BE20](v33);
  v160 = &v127 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v127 - v36;
  v147 = sub_24AD848BC();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v38);
  v40 = &v127 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for StateCaptureReason();
  v42 = v41[-1].Description;
  MEMORY[0x28223BE20](v43);
  v45 = (&v127 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for StateCaptureHintAPI();
  v47 = v46[-1].Description;
  MEMORY[0x28223BE20](v48);
  v50 = &v127 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = StateCaptureHint.version.getter();
  v148 = StateCaptureHint.requestor.getter();
  v150 = v51;
  v166 = a1;
  StateCaptureHint.api.getter(v50);
  v52 = StateCaptureHintAPI.rawValue.getter();
  result = v47[1](v50, v46);
  if ((v52 - 1) > 2)
  {
    __break(1u);
  }

  else
  {
    v145 = v52 - 1;
    StateCaptureHint.reason.getter(v45);
    v144 = StateCaptureReason.rawValue.getter();
    v42[1](v45, v41);
    sub_24AD848AC();
    sub_24AD8487C();
    v165 = v40;
    v54 = v37;
    if (qword_281066408 != -1)
    {
      swift_once();
    }

    v55 = sub_24AD8455C();
    v56 = __swift_project_value_buffer(v55, qword_281066410);
    v57 = v169;
    isa = v169[2].isa;
    v59 = v164;
    v162 = v169 + 2;
    isa(v22, v168, v164);
    v60 = v152;
    v61 = v151;
    v62 = v153;
    (*(v152 + 16))(v151, v166, v153);
    v163 = v56;
    v63 = sub_24AD8453C();
    v132 = sub_24AD8473C();
    v143 = v63;
    v64 = os_log_type_enabled(v63, v132);
    v167 = v54;
    if (v64)
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v137 = isa;
      v67 = v66;
      v175[0] = v66;
      *v65 = 136446466;
      sub_24AD81138(qword_281066438, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v68 = sub_24AD848FC();
      v70 = v69;
      v166 = v57[1].isa;
      v166(v22, v59);
      v71 = sub_24AD73F2C(v68, v70, v175);

      *(v65 + 4) = v71;
      *(v65 + 12) = 2082;
      sub_24AD81138(&qword_281066270, type metadata accessor for StateCaptureHint, &protocol conformance descriptor for StateCaptureHint);
      v72 = sub_24AD848FC();
      v74 = v73;
      (*(v60 + 8))(v61, v62);
      v75 = sub_24AD73F2C(v72, v74, v175);
      v59 = v164;

      *(v65 + 14) = v75;
      v76 = v143;
      _os_log_impl(&dword_24AD6F000, v143, v132, "Running state capture %{public}s: hint: %{public}s)", v65, 0x16u);
      swift_arrayDestroy();
      v77 = v67;
      isa = v137;
      MEMORY[0x24C2300D0](v77, -1, -1);
      MEMORY[0x24C2300D0](v65, -1, -1);
    }

    else
    {

      (*(v60 + 8))(v61, v62);
      v166 = v57[1].isa;
      v166(v22, v59);
    }

    v79 = v158;
    v78 = v159;
    v170 = v149;
    v171 = v148;
    v172 = v150;
    v173 = v145;
    v174 = v144;
    v155(v175, &v170);
    v80 = v160;

    v81 = v175[0];
    v82 = v175[1];
    v83 = v175[3];
    v155 = v175[2];
    sub_24AD8487C();
    isa(v79, v168, v59);
    v84 = v157;
    v85 = *(v157 + 16);
    v86 = v136;
    v87 = v161;
    v85(v136, v167, v161);
    v85(v78, v80, v87);
    v88 = v155;
    sub_24AD8104C(v81, v82, v155, v83);
    v89 = sub_24AD8453C();
    v90 = sub_24AD8473C();
    v168 = v81;
    v163 = v82;
    v91 = v82;
    v92 = v83;
    sub_24AD81098(v81, v91, v88, v83);
    if (os_log_type_enabled(v89, v90))
    {
      v93 = v87;
      LODWORD(v153) = v90;
      v162 = v89;
      v94 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v175[0] = v152;
      *v94 = 136446722;
      sub_24AD81138(qword_281066438, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v95 = v158;
      v96 = v164;
      v97 = sub_24AD848FC();
      v99 = v98;
      v166(v95, v96);
      v100 = sub_24AD73F2C(v97, v99, v175);

      *(v94 + 4) = v100;
      *(v94 + 12) = 2080;
      v101 = v163;
      v154 = v83;
      if (v163)
      {

        v102 = v168;
        v103 = v101;
      }

      else
      {
        v102 = 0;
        v103 = 0xE000000000000000;
      }

      v108 = v84;
      v109 = sub_24AD73F2C(v102, v103, v175);

      *(v94 + 14) = v109;
      *(v94 + 22) = 2080;
      v110 = v133;
      sub_24AD84A4C();
      sub_24AD81138(&qword_281066220, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
      v111 = v136;
      v112 = v159;
      v113 = sub_24AD84A2C();
      v115 = v114;
      (*(v134 + 8))(v110, v135);
      v116 = v112;
      v104 = *(v108 + 8);
      v104(v116, v93);
      v104(v111, v93);
      v117 = sub_24AD73F2C(v113, v115, v175);

      *(v94 + 24) = v117;
      v118 = v162;
      _os_log_impl(&dword_24AD6F000, v162, v153, "State capture duration: %{public}s [%s]: %s", v94, 0x20u);
      v119 = v152;
      swift_arrayDestroy();
      MEMORY[0x24C2300D0](v119, -1, -1);
      MEMORY[0x24C2300D0](v94, -1, -1);

      v104(v160, v93);
      v106 = v167;
      v107 = v168;
      v105 = Description;
      v92 = v154;
      v88 = v155;
    }

    else
    {

      v104 = *(v84 + 8);
      v104(v159, v87);
      v104(v86, v87);
      v166(v158, v164);
      v104(v160, v87);
      v105 = Description;
      v106 = v167;
      v107 = v168;
      v101 = v163;
    }

    v120 = v156;
    v121 = v131;
    if (!v101)
    {
      v104(v106, v161);
      v125 = 1;
      goto LABEL_16;
    }

    v169 = v104;
    sub_24AD8104C(v107, v101, v88, v92);

    sub_24AD7C610(v88, v92);
    StateCaptureDateType.init(rawValue:)(1u);
    v122 = v129;
    result = v105[6](v121, 1, v129);
    if (result != 1)
    {
      v123 = v92;
      v124 = v128;
      v105[4](v128, v121, v122);
      StateCaptureStateData.init(type:title:data:)(v124, v107, v101, v88, v123, v120);
      sub_24AD81098(v107, v101, v88, v123);
      sub_24AD81098(v107, v101, v88, v123);
      (v169)(v167, v161);
      v125 = 0;
LABEL_16:
      (*(v146 + 8))(v165, v147);
      v126 = type metadata accessor for StateCaptureStateData();
      return (*(v126[-1].Description + 7))(v120, v125, 1, v126);
    }
  }

  __break(1u);
  return result;
}

uint64_t StateCapture.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for StateCaptureHandle();
  Description = v2[-1].Description;
  MEMORY[0x28223BE20](v4);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_281066408 != -1)
  {
    swift_once();
  }

  v7 = sub_24AD8455C();
  __swift_project_value_buffer(v7, qword_281066410);

  v8 = sub_24AD8453C();
  v9 = sub_24AD8470C();

  v10 = 0x281066000;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136446466;
    sub_24AD8452C();
    sub_24AD81138(qword_281066438, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = sub_24AD848FC();
    v15 = sub_24AD73F2C(v13, v14, &v25);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    sub_24AD81138(&qword_27EFA7308, type metadata accessor for StateCaptureHandle, &protocol conformance descriptor for StateCaptureHandle);
    v16 = sub_24AD848FC();
    v18 = sub_24AD73F2C(v16, v17, &v25);
    v10 = 0x281066000uLL;

    *(v11 + 14) = v18;
    _os_log_impl(&dword_24AD6F000, v8, v9, "Removing handler: %{public}s %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C2300D0](v12, -1, -1);
    MEMORY[0x24C2300D0](v11, -1, -1);
  }

  v19 = *(v10 + 1064);
  Description[2](v6, v1 + v19, v2);
  os_state_remove_handler(_:)(v6);
  v20 = Description[1];
  v20(v6, v2);
  v21 = OBJC_IVAR____TtC12FindMyCommon12StateCapture_id;
  v22 = sub_24AD8452C();
  (*(*(v22 - 8) + 8))(v1 + v21, v22);

  v20((v1 + v19), v2);
  return v1;
}

uint64_t StateCapture.__deallocating_deinit()
{
  StateCapture.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24AD80B44@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12FindMyCommon12StateCapture_id;
  v5 = sub_24AD8452C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24AD80BC0()
{
  v0 = sub_24AD8455C();
  __swift_allocate_value_buffer(v0, qword_281066288);
  __swift_project_value_buffer(v0, qword_281066288);
  return sub_24AD8454C();
}

unint64_t sub_24AD80C40()
{
  result = qword_281066230;
  if (!qword_281066230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281066230);
  }

  return result;
}

unint64_t sub_24AD80C8C()
{
  result = qword_281066240;
  if (!qword_281066240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA7300, &qword_24AD859B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281066240);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = sub_24AD8452C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_24AD80DC8(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_24AD8452C() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v2 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v2 + v7);

  return a2(a1, v2 + v5, v9, v10, v11);
}

uint64_t type metadata accessor for StateCapture(uint64_t a1)
{
  result = qword_2810663F8;
  if (!qword_2810663F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AD80F34(uint64_t a1)
{
  result = sub_24AD8452C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StateCaptureHandle();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of StateCapture.__allocating_init(_:)()
{
  return (*(v0 + 104))();
}

{
  return (*(v0 + 112))();
}

void sub_24AD8104C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_24AD7C610(a3, a4);
  }
}

void sub_24AD81098(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_24AD810E4(a3, a4);
  }
}

uint64_t sub_24AD810E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24AD81138(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AD81180(uint64_t a1)
{
  v3 = *(sub_24AD8452C() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  Description = type metadata accessor for StateCaptureHint()[-1].Description;
  v7 = (v4 + v5 + *(Description + 80)) & ~*(Description + 80);
  v8 = (Description[8] + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v1 + 24);
  v17 = *(v1 + 16);
  v10 = (v1 + v8);
  v14 = v10[1];
  v15 = *v10;
  v13 = *(v1 + v9);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AD75E64;

  return sub_24AD7D44C(a1, v17, v16, v1 + v4, v1 + v7, v15, v14, v13);
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24AD813B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AD813EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_24AD81438(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 41) = a2;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24AD81484(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AD814C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_24AD8150C(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_24AD81558()
{
  result = qword_27EFA7338;
  if (!qword_27EFA7338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA7338);
  }

  return result;
}

uint64_t sub_24AD815AC()
{
  sub_24AD849DC();
  MEMORY[0x24C22FB10](0);
  return sub_24AD84A0C();
}

uint64_t sub_24AD81618(uint64_t a1)
{
  sub_24AD849DC();
  MEMORY[0x24C22FB10](0);
  return sub_24AD84A0C();
}

uint64_t sub_24AD81660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7328, &qword_24AD85A30);
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  sub_24AD82F1C(a3, v25 - v10);
  v12 = sub_24AD846CC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24AD761E8(v11, &qword_27EFA7328, &qword_24AD85A30);
  }

  else
  {
    sub_24AD846BC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24AD846AC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24AD8461C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_24AD761E8(a3, &qword_27EFA7328, &qword_24AD85A30);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24AD761E8(a3, &qword_27EFA7328, &qword_24AD85A30);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24AD81950()
{
  v0 = sub_24AD8455C();
  __swift_allocate_value_buffer(v0, qword_2810661A8);
  v1 = __swift_project_value_buffer(v0, qword_2810661A8);
  if (qword_281066198 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281066770);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AD81A18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7348, &unk_24AD85D88);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_2810661D0 = result;
  return result;
}

uint64_t sub_24AD81A58()
{
  type metadata accessor for ReferenceClock.IsolationDomain();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27EFA7340 = v0;
  return result;
}

uint64_t sub_24AD81A98()
{
  v0 = sub_24AD8450C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AD844EC();
  sub_24AD844CC();
  v6 = v5;
  result = (*(v1 + 8))(v4, v0);
  qword_281066200 = v6;
  return result;
}

double sub_24AD81B70()
{
  if (qword_2810661F8 != -1)
  {
    swift_once();
  }

  result = *&qword_281066200;
  qword_2810661E8 = qword_281066200;
  return result;
}

double static ReferenceClock.convert(toSystem:)(double a1)
{
  if (!TMIsAutomaticTimeEnabled()())
  {
    sub_24AD709EC(v2);
    if (qword_2810661C8 != -1)
    {
      swift_once();
    }

    v4 = qword_2810661D0;
    MEMORY[0x28223BE20](v3);
    os_unfair_lock_lock(v4 + 4);
    sub_24AD82BC0(&v6);
    os_unfair_lock_unlock(v4 + 4);
    return v6 + a1;
  }

  return a1;
}

double static ReferenceClock.convert(toReference:)(double a1)
{
  if (!TMIsAutomaticTimeEnabled()())
  {
    sub_24AD709EC(v2);
    if (qword_2810661C8 != -1)
    {
      swift_once();
    }

    v4 = qword_2810661D0;
    MEMORY[0x28223BE20](v3);
    os_unfair_lock_lock(v4 + 4);
    sub_24AD8311C(&v6);
    os_unfair_lock_unlock(v4 + 4);
    return a1 - v6;
  }

  return a1;
}

uint64_t sub_24AD81DA4()
{
  if (qword_27EFA7200 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFA7340;

  return MEMORY[0x2822009F8](sub_24AD81E38, v0, 0);
}

uint64_t sub_24AD81E38()
{
  sub_24AD81ED0(1);
  v1 = *(v0 + 8);

  return v1();
}

void static ReferenceClock.calibrate()(double a1)
{
  if (!sub_24AD709EC(a1))
  {

    sub_24AD81ED0(0);
  }
}

void sub_24AD81ED0(char a1)
{
  v2 = sub_24AD8450C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_2810661C8 != -1)
    {
      swift_once();
    }

    v8 = qword_2810661D0;
    MEMORY[0x28223BE20](v5);
    v51 = sub_24AD82EC8;
    v52 = 0;
    os_unfair_lock_lock(v8 + 4);
    sub_24AD82ED8(v56);
    os_unfair_lock_unlock(v8 + 4);
    if (LOBYTE(v56[0]) != 1)
    {
      return;
    }
  }

  sub_24AD8441C();
  if (!v56[3])
  {
    sub_24AD761E8(v56, &qword_27EFA7270, &qword_24AD85238);
LABEL_32:
    if (qword_2810661A0 != -1)
    {
      swift_once();
    }

    v47 = sub_24AD8455C();
    __swift_project_value_buffer(v47, qword_2810661A8);
    v48 = sub_24AD8453C();
    v49 = sub_24AD8472C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_24AD6F000, v48, v49, "Missing com.apple.timed entitlement!", v50, 2u);
      MEMORY[0x24C2300D0](v50, -1, -1);
    }

    sub_24AD848CC();
    __break(1u);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0 || v55 != 1)
  {
    goto LABEL_32;
  }

  if (TMIsAutomaticTimeEnabled()())
  {
    if (qword_2810661C8 != -1)
    {
      swift_once();
    }

    v10 = qword_2810661D0;
    MEMORY[0x28223BE20](v9);
    v51 = sub_24AD82EB0;
    v52 = 0;
    os_unfair_lock_lock(v10 + 4);
    sub_24AD83180();
    os_unfair_lock_unlock(v10 + 4);
    if (qword_2810661A0 != -1)
    {
      swift_once();
    }

    v11 = sub_24AD8455C();
    __swift_project_value_buffer(v11, qword_2810661A8);
    v12 = sub_24AD8453C();
    v13 = sub_24AD8473C();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_29;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v56[0] = v15;
    *v14 = 136446210;
    static ReferenceClock.timeInterval.getter();
    sub_24AD844BC();
    sub_24AD82E58();
    v16 = sub_24AD848FC();
    v18 = v17;
    (*(v3 + 8))(v7, v2);
    v19 = sub_24AD73F2C(v16, v18, v56);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_24AD6F000, v12, v13, "ReferenceClock calibrated: %{public}s delta: 0.0 uncertainty: 0.0", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x24C2300D0](v15, -1, -1);
    v20 = v14;
LABEL_28:
    MEMORY[0x24C2300D0](v20, -1, -1);
LABEL_29:

    return;
  }

  if (qword_2810661A0 != -1)
  {
    swift_once();
  }

  v21 = sub_24AD8455C();
  __swift_project_value_buffer(v21, qword_2810661A8);
  v22 = sub_24AD8453C();
  v23 = sub_24AD8473C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_24AD6F000, v22, v23, "Automatic time is DISABLED", v24, 2u);
    MEMORY[0x24C2300D0](v24, -1, -1);
  }

  *&v25 = COERCE_DOUBLE(sub_24AD82D44());
  if ((v27 & 0x100000000) == 0)
  {
    v28 = v26;
    v54 = v27;
    v29 = *&v25;
    v30 = v26;
    Current = CFAbsoluteTimeGetCurrent();
    v32 = 1.0;
    if (v30 > 1.0)
    {
      v33 = sub_24AD8453C();
      v34 = sub_24AD8471C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 134218240;
        *(v35 + 4) = v28;
        *(v35 + 12) = 1024;
        *(v35 + 14) = v54;
        _os_log_impl(&dword_24AD6F000, v33, v34, "TMGMReferenceTime reports high uncertainty: %f (reliability: %d", v35, 0x12u);
        MEMORY[0x24C2300D0](v35, -1, -1);
      }
    }

    v36 = Current - v29;
    if (qword_2810661C8 != -1)
    {
      swift_once();
    }

    v37 = qword_2810661D0;
    MEMORY[0x28223BE20](v32);
    *(&v53 - 4) = v36;
    *(&v53 - 3) = v28;
    MEMORY[0x28223BE20](v38);
    v51 = sub_24AD82DD4;
    v52 = v39;
    os_unfair_lock_lock(v37 + 4);
    sub_24AD83180();
    os_unfair_lock_unlock(v37 + 4);
    v12 = sub_24AD8453C();
    v40 = sub_24AD8473C();
    if (!os_log_type_enabled(v12, v40))
    {
      goto LABEL_29;
    }

    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v56[0] = v42;
    *v41 = 136446722;
    static ReferenceClock.timeInterval.getter();
    sub_24AD844BC();
    sub_24AD82E58();
    v43 = sub_24AD848FC();
    v45 = v44;
    (*(v3 + 8))(v7, v2);
    v46 = sub_24AD73F2C(v43, v45, v56);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2048;
    *(v41 + 14) = v36;
    *(v41 + 22) = 2048;
    *(v41 + 24) = v28;
    _os_log_impl(&dword_24AD6F000, v12, v40, "ReferenceClock calibrated: %{public}s delta: %f uncertainty: %f", v41, 0x20u);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    MEMORY[0x24C2300D0](v42, -1, -1);
    v20 = v41;
    goto LABEL_28;
  }
}

CFAbsoluteTime static ReferenceClock.calibrationAge.getter(double a1)
{
  sub_24AD709EC(a1);
  if (qword_2810661C8 != -1)
  {
    swift_once();
  }

  v2 = qword_2810661D0;
  MEMORY[0x28223BE20](v1);
  os_unfair_lock_lock(v2 + 4);
  sub_24AD83134(&v5);
  os_unfair_lock_unlock(v2 + 4);
  v3 = v5;
  return CFAbsoluteTimeGetCurrent() - *&v3 - *(&v3 + 1);
}

uint64_t sub_24AD827A4()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AD827E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_24AD8443C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_24AD8442C();

  v8(v7);

  return (*(v4 + 8))(v7, v3);
}

void sub_24AD828D4()
{
  qword_2810661C0 = 0;
  qword_2810661F0 = 0;
  if (qword_2810661E0 != -1)
  {
    swift_once();
  }

  qword_2810661E8 = CFAbsoluteTimeGetCurrent();
  byte_2810661D8 = 0;
}

uint64_t sub_24AD8294C()
{
  v0 = sub_24AD8455C();
  __swift_allocate_value_buffer(v0, qword_281066770);
  __swift_project_value_buffer(v0, qword_281066770);
  return sub_24AD8454C();
}

uint64_t sub_24AD829D0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AD82AC8;

  return v6(a1);
}

uint64_t sub_24AD82AC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_24AD82BD8@<D0>(void *a1@<X8>)
{
  result = *&qword_2810661C0;
  *a1 = qword_2810661C0;
  return result;
}

double sub_24AD82BE8@<D0>(double *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = v5;
    *a1 = v5;
  }

  return result;
}

uint64_t sub_24AD82C64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AD75E64;

  return sub_24AD81D88();
}

uint64_t sub_24AD82DD4()
{
  v1 = v0[3];
  v2 = v0[4];
  qword_2810661C0 = v0[2];
  qword_2810661F0 = v1;
  if (qword_2810661E0 != -1)
  {
    result = swift_once();
  }

  qword_2810661E8 = v2;
  byte_2810661D8 = 0;
  return result;
}

unint64_t sub_24AD82E58()
{
  result = qword_281066210;
  if (!qword_281066210)
  {
    sub_24AD8450C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281066210);
  }

  return result;
}

void *sub_24AD82ED8@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_24AD82F1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7328, &qword_24AD85A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AD82F8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AD83164;

  return sub_24AD829D0(a1, v4);
}

uint64_t sub_24AD83044(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AD75E64;

  return sub_24AD829D0(a1, v4);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

NonModularSPI::StateCaptureHintAPI_optional __swiftcall StateCaptureHintAPI.init(rawValue:)(Swift::UInt32 rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24AD837F0()
{
  v1 = 0x75626F746F72702ELL;
  if (*v0 != 1)
  {
    v1 = 0x6D6F747375632ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696C61697265732ELL;
  }
}

_BYTE *StateCaptureStateData.init(type:title:data:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = *result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t StateCaptureStateData.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_24AD8485C();

  v4 = 0xE700000000000000;
  v5 = 0x6D6F747375632ELL;
  if (v1 == 1)
  {
    v5 = 0x75626F746F72702ELL;
    v4 = 0xE900000000000066;
  }

  if (v1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x696C61697265732ELL;
  }

  if (v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEB0000000064657ALL;
  }

  MEMORY[0x24C22F760](v6, v7);

  MEMORY[0x24C22F760](0x203A656C74697420, 0xE800000000000000);
  MEMORY[0x24C22F760](v2, v3);
  MEMORY[0x24C22F760](0x203A6174616420, 0xE700000000000000);
  v8 = sub_24AD8449C();
  MEMORY[0x24C22F760](v8);

  MEMORY[0x24C22F760](93, 0xE100000000000000);
  return 0x203A657079745BLL;
}

unint64_t StateCaptureHandle.description.getter()
{
  sub_24AD8485C();

  sub_24AD83F24();
  v0 = sub_24AD8466C();
  MEMORY[0x24C22F760](v0);

  MEMORY[0x24C22F760](62, 0xE100000000000000);
  return 0xD000000000000017;
}

void os_state_add_handler(queue:block:)(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v10[4] = sub_24AD83F78;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24AD83ECC;
  v10[3] = &block_descriptor_1;
  v8 = _Block_copy(v10);

  v9 = os_state_add_handler();
  _Block_release(v8);
  *a4 = v9;
  *(a4 + 8) = v9 == 0;
}

_DWORD *sub_24AD83BEC(int *a1, void (*a2)(void *__return_ptr, int *))
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v7 = a1[4];
  v6 = a1[5];
  if (v5)
  {
    v5 = sub_24AD8464C();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0x2010002u >> (8 * v7);
  v18 = v4;
  v19 = v5;
  v20 = v9;
  if (v7 >= 4)
  {
    LOBYTE(v10) = 2;
  }

  v21 = v10;
  v22 = v6;
  a2(v23, &v18);

  v11 = v24;
  if (!v24)
  {
    return 0;
  }

  v12 = v23[0];
  v13 = v23[1];
  v14 = v25;
  v15 = v26;
  v16 = sub_24AD83CDC();
  sub_24AD84300(v12, v13, v11, v14, v15);
  return v16;
}

_DWORD *sub_24AD83CDC()
{
  v1 = *v0;
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(v2) - v2;
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v5 = v5;
  }

LABEL_11:
  if (__OFADD__(v5, 200))
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v9 = calloc(v5 + 200, 1uLL);
  if (v9)
  {
    v10 = v9;
    *v9 = v1 + 1;
    v11 = (v9 + 34);
    if (v4 > 1)
    {
      if (v4 != 2)
      {
        goto LABEL_25;
      }

      v14 = *(v2 + 16);
      v13 = *(v2 + 24);
      v8 = __OFSUB__(v13, v14);
      v12 = v13 - v14;
      if (!v8)
      {
LABEL_22:
        if ((v12 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(v12))
          {
            goto LABEL_26;
          }

          __break(1u);
LABEL_25:
          LODWORD(v12) = 0;
          goto LABEL_26;
        }

        goto LABEL_36;
      }

      __break(1u);
    }

    else if (!v4)
    {
      LODWORD(v12) = BYTE6(v3);
LABEL_26:
      v9[1] = v12;
      v15 = sub_24AD8461C();
      strlcpy(v11, (v15 + 32), 0x40uLL);

      if (v4 > 1)
      {
        if (v4 != 2 || !__OFSUB__(*(v2 + 24), *(v2 + 16)))
        {
          goto LABEL_34;
        }

        __break(1u);
      }

      else if (!v4)
      {
        goto LABEL_34;
      }

      if (!__OFSUB__(HIDWORD(v2), v2))
      {
LABEL_34:
        sub_24AD844AC();
        return v10;
      }

      goto LABEL_39;
    }

    LODWORD(v12) = HIDWORD(v2) - v2;
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v12 = v12;
    goto LABEL_22;
  }

LABEL_40:
  result = sub_24AD848CC();
  __break(1u);
  return result;
}

uint64_t sub_24AD83ECC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

unint64_t sub_24AD83F24()
{
  result = qword_27EFA7350;
  if (!qword_27EFA7350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA7350);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24AD83F9C()
{
  result = qword_27EFA7358;
  if (!qword_27EFA7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA7358);
  }

  return result;
}

unint64_t sub_24AD83FF4()
{
  result = qword_27EFA7360;
  if (!qword_27EFA7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA7360);
  }

  return result;
}

unint64_t sub_24AD8404C()
{
  result = qword_27EFA7368;
  if (!qword_27EFA7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA7368);
  }

  return result;
}

unint64_t sub_24AD840A4()
{
  result = qword_27EFA7370;
  if (!qword_27EFA7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA7370);
  }

  return result;
}

unint64_t sub_24AD840FC()
{
  result = qword_27EFA7378;
  if (!qword_27EFA7378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA7378);
  }

  return result;
}

unint64_t sub_24AD84154()
{
  result = qword_27EFA7380;
  if (!qword_27EFA7380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA7380);
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

uint64_t sub_24AD841FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24AD84244(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateCaptureHandle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StateCaptureHandle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

void sub_24AD84300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3)
  {

    sub_24AD810E4(a4, a5);
  }
}