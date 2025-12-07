void static DarwinNotification.post(name:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DF63295C();
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v3)
  {
    v4 = v3;
    CFNotificationCenterPostNotification(v3, v2, 0, 0, 1u);
  }

  else
  {
    __break(1u);
  }
}

void static DarwinNotification.post(name:)(const __CFString *a1)
{
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v2)
  {
    v3 = v2;
    CFNotificationCenterPostNotification(v2, a1, 0, 0, 1u);
  }

  else
  {
    __break(1u);
  }
}

void static DarwinNotification.setValue(name:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DF63295C();
  _s10FindMyBase18DarwinNotificationV8setValue4name5valueySo18CFNotificationNamea_s6UInt64VtFZ_0(v4, a3);
}

uint64_t ThrottledDarwinPoster.init(name:rateLimit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429C0, &qword_1DF638A40);
  v8 = swift_allocObject();
  sub_1DF6335BC();
  v9 = qword_1ED8E4B38;
  v10 = sub_1DF5C8F38(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429C8, &qword_1DF638A48);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v10;
  *(v8 + v9) = result;
  v12 = (v8 + qword_1ED8E4B40);
  *v12 = a3;
  v12[1] = a4;
  a5[2] = v8;
  return result;
}

void ThrottledDarwinPoster.init(name:rateLimit:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1DF63298C();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429C0, &qword_1DF638A40);
  v11 = swift_allocObject();
  sub_1DF6335BC();
  v12 = qword_1ED8E4B38;
  v13 = sub_1DF5C8F38(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429C8, &qword_1DF638A48);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v11 + v12) = v14;
  *(v14 + 16) = v13;
  v15 = (v11 + qword_1ED8E4B40);
  *v15 = a2;
  v15[1] = a3;

  *a4 = v8;
  a4[1] = v10;
  a4[2] = v11;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ThrottledDarwinPoster.post(bypassRateLimit:)(Swift::Bool bypassRateLimit)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (bypassRateLimit)
  {
    v4 = sub_1DF63295C();
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    if (v5)
    {
      v6 = v5;
      CFNotificationCenterPostNotification(v5, v4, 0, 0, 1u);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v7 = *(v1 + 16);

    sub_1DF5F466C(v2, v3, v7, v2, v3);
  }
}

unint64_t sub_1DF5C83A8(uint64_t a1)
{
  sub_1DF6325AC();
  sub_1DF5A27C8(&qword_1ED8E6150, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v2 = sub_1DF6328BC();

  return sub_1DF5C84D8(a1, v2);
}

unint64_t sub_1DF5C8444(uint64_t a1)
{
  sub_1DF63298C();
  sub_1DF633A6C();
  sub_1DF632ACC();
  v2 = sub_1DF633AAC();

  return sub_1DF5C869C(a1, v2);
}

unint64_t sub_1DF5C84D8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1DF6325AC();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1DF5A27C8(&qword_1ED8E4BF0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v16 = sub_1DF63292C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1DF5C869C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1DF63298C();
      v8 = v7;
      if (v6 == sub_1DF63298C() && v8 == v9)
      {
        break;
      }

      v11 = sub_1DF63394C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1DF5C87A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A68, &qword_1DF638CE0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A70, &qword_1DF638CE8);
    v7 = sub_1DF63373C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1DF59CC98(v9, v5, &qword_1ECE42A68, &qword_1DF638CE0);
      v12 = *v5;
      v11 = v5[1];
      result = sub_1DF59F358(*v5, v11, sub_1DF5A3D44);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429A0, &qword_1DF63E290);
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF5C89AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A58, &qword_1DF638CD0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A60, &qword_1DF638CD8);
    v7 = sub_1DF63373C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1DF59CC98(v9, v5, &qword_1ECE42A58, &qword_1DF638CD0);
      v12 = *v5;
      v11 = v5[1];
      result = sub_1DF59F358(*v5, v11, sub_1DF5A3D44);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42940, &qword_1DF638930);
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for DarwinNotification.Listener(uint64_t a1)
{
  result = qword_1ECE423A8;
  if (!qword_1ECE423A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DF5C8C20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF59D2C4;

  return sub_1DF5C69A4(a1, v4);
}

uint64_t sub_1DF5C8CD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DF59D2C8;

  return sub_1DF5C73CC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1DF5C8DA8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DF59D2C4;

  return sub_1DF5C6A98(a1, a2, v6);
}

uint64_t sub_1DF5C8E70(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DF59D2C8;

  return sub_1DF5C6A98(a1, a2, v6);
}

unint64_t sub_1DF5C8F38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A28, &qword_1DF638C60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A30, &qword_1DF638C68);
    v7 = sub_1DF63373C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1DF59CC98(v9, v5, &qword_1ECE42A28, &qword_1DF638C60);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1DF59F358(*v5, v12, sub_1DF5A3D44);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1DF6335AC();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF5C9138(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A18, &qword_1DF638C50);
    v3 = sub_1DF63373C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1DF59F358(v5, v6, sub_1DF5A3D44);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF5C9260(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A08, &qword_1DF638C38);
    v3 = sub_1DF63373C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DF59CC98(v4, &v11, &qword_1ECE42A10, &unk_1DF638C40);
      v5 = v11;
      result = sub_1DF5C8444(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1DF5A5660(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF5C9388(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429D8, &qword_1DF638C08);
    v3 = sub_1DF63373C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_1DF59F794(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF5C9488(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429E0, &qword_1DF638C10);
    v3 = sub_1DF63373C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DF59CC98(v4, &v11, &qword_1ECE429E8, &qword_1DF638C18);
      v5 = v11;
      result = sub_1DF59F794(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1DF5A5660(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void _s10FindMyBase18DarwinNotificationV8setValue4name5valueySo18CFNotificationNamea_s6UInt64VtFZ_0(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  out_token = 0;
  sub_1DF63298C();
  v3 = sub_1DF632A7C();

  notify_register_check((v3 + 32), &out_token);

  if (out_token == -1)
  {
    if (qword_1ED8E5BE8 != -1)
    {
      swift_once();
    }

    v4 = sub_1DF6326AC();
    __swift_project_value_buffer(v4, qword_1ED8E5BF0);
    v5 = sub_1DF63268C();
    v6 = sub_1DF63316C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DF59A000, v5, v6, "Failed notify_register_check.", v7, 2u);
      MEMORY[0x1E12D9D80](v7, -1, -1);
    }
  }

  else
  {
    notify_set_state(out_token, a2);
    notify_cancel(out_token);
  }
}

uint64_t dispatch thunk of DarwinNotificationHandler.asyncStream(name:)()
{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 208))();
}

void sub_1DF5C97F8(uint64_t a1)
{
  sub_1DF5C98C4();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DF5C98C4()
{
  if (!qword_1ECE42310)
  {
    v0 = sub_1DF632F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE42310);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DF5C9920(uint64_t a1, int a2)
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

uint64_t sub_1DF5C9968(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DF5C99BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DF5C9A04(uint64_t result, int a2, int a3)
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

uint64_t sub_1DF5C9AA8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DF59D2C4;

  return sub_1DF5C75D0(v2, v3, v4);
}

uint64_t sub_1DF5C9B50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DF59D2C4;

  return sub_1DF5C7B2C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t Sequence.asyncMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v6[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  v6[11] = *(AssociatedTypeWitness - 8);
  v6[12] = swift_task_alloc();
  sub_1DF63327C();
  v6[13] = swift_task_alloc();
  v6[14] = *(a3 - 8);
  v6[15] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5C9E50, 0, 0);
}

uint64_t sub_1DF5C9E50()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[8];
  v4 = v0[5];
  v0[2] = sub_1DF6327EC();
  (*(v2 + 16))(v1, v3, v4);
  sub_1DF632C1C();
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v8 = v0[2];

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v11 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v15 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = sub_1DF5CA0BC;
    v13 = v0[12];
    v14 = v0[9];

    return v15(v14, v13);
  }
}

uint64_t sub_1DF5CA0BC()
{
  *(*v1 + 160) = v0;

  if (v0)
  {

    v2 = sub_1DF5CA430;
  }

  else
  {
    v2 = sub_1DF5CA1D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF5CA1D8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_1DF632DEC();
  sub_1DF632DBC();
  (*(v2 + 8))(v1, v3);
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v7 = v0[2];

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    v10 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v14 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = sub_1DF5CA0BC;
    v12 = v0[12];
    v13 = v0[9];

    return v14(v13, v12);
  }
}

uint64_t sub_1DF5CA430()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t Sequence.asyncCompactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v9 = sub_1DF63327C();
  v6[9] = v9;
  v6[10] = *(v9 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = *(a4 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[15] = AssociatedTypeWitness;
  v6[16] = *(AssociatedTypeWitness - 8);
  v6[17] = swift_task_alloc();
  sub_1DF63327C();
  v6[18] = swift_task_alloc();
  v6[19] = *(a3 - 8);
  v6[20] = swift_task_alloc();
  v11 = swift_getAssociatedTypeWitness();
  v6[21] = v11;
  v6[22] = *(v11 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5CA7BC, 0, 0);
}

uint64_t sub_1DF5CA7BC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[8];
  v4 = v0[5];
  v0[2] = sub_1DF6327EC();
  (*(v2 + 16))(v1, v3, v4);
  sub_1DF632C1C();
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
    v8 = v0[2];

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v11 = v0[3];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    v15 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[24] = v12;
    *v12 = v0;
    v12[1] = sub_1DF5CAA44;
    v13 = v0[17];
    v14 = v0[11];

    return v15(v14, v13);
  }
}

uint64_t sub_1DF5CAA44()
{
  *(*v1 + 200) = v0;

  if (v0)
  {

    v2 = sub_1DF5CAE9C;
  }

  else
  {
    v2 = sub_1DF5CAB60;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF5CAB60()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[6];
  v4 = (*(v2 + 48))(v1, 1, v3);
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  if (v4 == 1)
  {
    v8 = v0[9];
    v9 = v0[10];
    (*(v6 + 8))(v0[17], v0[15]);
    (*(v9 + 8))(v1, v8);
  }

  else
  {
    v11 = v0[13];
    v10 = v0[14];
    (*(v2 + 32))(v10, v1, v3);
    (*(v2 + 16))(v11, v10, v3);
    sub_1DF632DEC();
    sub_1DF632DBC();
    (*(v2 + 8))(v10, v3);
    (*(v6 + 8))(v5, v7);
  }

  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[16];
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
    v15 = v0[2];

    v16 = v0[1];

    return v16(v15);
  }

  else
  {
    v18 = v0[3];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    v22 = (v18 + *v18);
    v19 = swift_task_alloc();
    v0[24] = v19;
    *v19 = v0;
    v19[1] = sub_1DF5CAA44;
    v20 = v0[17];
    v21 = v0[11];

    return v22(v21, v20);
  }
}

uint64_t sub_1DF5CAE9C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t Sequence.asyncFirst(where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v6[9] = *(AssociatedTypeWitness - 8);
  v6[10] = swift_task_alloc();
  sub_1DF63327C();
  v6[11] = swift_task_alloc();
  v6[12] = *(a4 - 8);
  v6[13] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5A857C, 0, 0);
}

uint64_t sub_1DF5CB184()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t Sequence.asyncForEach(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v5[8] = *(AssociatedTypeWitness - 8);
  v5[9] = swift_task_alloc();
  sub_1DF63327C();
  v5[10] = swift_task_alloc();
  v5[11] = *(a3 - 8);
  v5[12] = swift_task_alloc();
  v8 = swift_getAssociatedTypeWitness();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5CB438, 0, 0);
}

uint64_t sub_1DF5CB438()
{
  (*(v0[11] + 16))(v0[12], v0[6], v0[4]);
  sub_1DF632C1C();
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[2];
    (*(v0[8] + 32))(v0[9], v0[10], v0[7]);
    v9 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_1DF5CB66C;
    v8 = v0[9];

    return v9(v8);
  }
}

uint64_t sub_1DF5CB66C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1DF5CB990;
  }

  else
  {
    v2 = sub_1DF5CB780;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF5CB780()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[2];
    (*(v0[8] + 32))(v0[9], v0[10], v0[7]);
    v9 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_1DF5CB66C;
    v8 = v0[9];

    return v9(v8);
  }
}

uint64_t sub_1DF5CB990()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t Sequence.asyncFilter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[8] = AssociatedTypeWitness;
  v5[9] = *(AssociatedTypeWitness - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  sub_1DF63327C();
  v5[12] = swift_task_alloc();
  v5[13] = *(a3 - 8);
  v5[14] = swift_task_alloc();
  v8 = swift_getAssociatedTypeWitness();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5CBC58, 0, 0);
}

uint64_t sub_1DF5CBC58()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[7];
  v4 = v0[5];
  v0[2] = sub_1DF6327EC();
  (*(v2 + 16))(v1, v3, v4);
  sub_1DF632C1C();
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[8];
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  if ((*(v6 + 48))(v5, 1, v7) == 1)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    v8 = v0[2];

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v11 = v0[3];
    (*(v0[9] + 32))(v0[11], v0[12], v0[8]);
    v14 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[18] = v12;
    *v12 = v0;
    v12[1] = sub_1DF5CBEC0;
    v13 = v0[11];

    return v14(v13);
  }
}

uint64_t sub_1DF5CBEC0(char a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {

    v5 = sub_1DF5CC264;
  }

  else
  {
    *(v4 + 160) = a1 & 1;
    v5 = sub_1DF5CBFF4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF5CBFF4()
{
  if (*(v0 + 160))
  {
    (*(*(v0 + 72) + 16))(*(v0 + 80), *(v0 + 88), *(v0 + 64));
    sub_1DF632DEC();
    sub_1DF632DBC();
  }

  (*(*(v0 + 72) + 8))(*(v0 + 88), *(v0 + 64));
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    v4 = *(v0 + 16);

    v5 = *(v0 + 8);

    return v5(v4);
  }

  else
  {
    v7 = *(v0 + 24);
    (*(*(v0 + 72) + 32))(*(v0 + 88), *(v0 + 96), *(v0 + 64));
    v10 = (v7 + *v7);
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_1DF5CBEC0;
    v9 = *(v0 + 88);

    return v10(v9);
  }
}

uint64_t sub_1DF5CC264()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v0[9] + 8))(v0[11], v0[8]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t Sequence.asyncFirstIndex(where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v5[8] = *(AssociatedTypeWitness - 8);
  v5[9] = swift_task_alloc();
  sub_1DF63327C();
  v5[10] = swift_task_alloc();
  v5[11] = *(a3 - 8);
  v5[12] = swift_task_alloc();
  v8 = swift_getAssociatedTypeWitness();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5CC52C, 0, 0);
}

uint64_t sub_1DF5CC52C()
{
  (*(*(v0 + 88) + 16))(*(v0 + 96), *(v0 + 48), *(v0 + 32));
  sub_1DF632C1C();
  *(v0 + 128) = 0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  v4 = (*(v3 + 48))(v1, 1, v2);
  *(v0 + 152) = v4;
  if (v4 == 1)
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v5 = *(v0 + 8);

    return v5(0, 1);
  }

  else
  {
    v7 = *(v0 + 16);
    (*(*(v0 + 64) + 32))(*(v0 + 72), *(v0 + 80), *(v0 + 56));
    v10 = (v7 + *v7);
    v8 = swift_task_alloc();
    *(v0 + 136) = v8;
    *v8 = v0;
    v8[1] = sub_1DF5CC770;
    v9 = *(v0 + 72);

    return v10(v9);
  }
}

uint64_t sub_1DF5CC770(char a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_1DF5CCAF4;
  }

  else
  {
    *(v4 + 156) = a1 & 1;
    v5 = sub_1DF5CC89C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF5CC89C()
{
  v1 = *(v0 + 156);
  result = (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  v3 = *(v0 + 128);
  if (v1)
  {
    v4 = *(v0 + 152) == 1;
LABEL_6:
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v9 = *(v0 + 8);

    return v9(v3, v4);
  }

  if (__OFADD__(v3, 1))
  {
    __break(1u);
    return result;
  }

  *(v0 + 128) = v3 + 1;
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  v4 = 1;
  v8 = (*(v7 + 48))(v5, 1, v6);
  *(v0 + 152) = v8;
  if (v8 == 1)
  {
    v3 = 0;
    goto LABEL_6;
  }

  v10 = *(v0 + 16);
  (*(*(v0 + 64) + 32))(*(v0 + 72), *(v0 + 80), *(v0 + 56));
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_1DF5CC770;
  v12 = *(v0 + 72);

  return v13(v12);
}

uint64_t sub_1DF5CCAF4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t BinaryEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for BinaryDataEncoderStorage();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DF6385D0;
  v7 = v6 + 16;
  v10[3] = &type metadata for _BinaryEncoder;
  v10[4] = &off_1F5A94368;
  v10[0] = v6;
  v8 = *(a3 + 8);

  v8(v10, a2, a3);
  if (v3)
  {

    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    swift_beginAccess();
    v7 = *(v6 + 16);
    sub_1DF5A3A94(v7, *(v6 + 24));
  }

  return v7;
}

uint64_t sub_1DF5CCD04()
{
  sub_1DF5B33C0(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DF5CCD4C@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  a1[3] = &type metadata for BinaryEncodingContainer;
  a1[4] = &off_1F5A943A0;
  *a1 = v2;
}

uint64_t sub_1DF5CCD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = FixedWidthInteger.bytes.getter(a3, a4);
  swift_beginAccess();
  if (*(v4 + 16))
  {
    sub_1DF63236C();
  }

  swift_endAccess();
}

uint64_t sub_1DF5CCE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a2;
  v8[3] = &type metadata for _BinaryEncoder;
  v8[4] = &off_1F5A94368;
  v6 = *(a4 + 8);

  v6(v8, a3, a4);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1DF5CCE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1DF63299C();
  if (v6 >> 60 == 15)
  {
    sub_1DF5CD0A8();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v8 = v5;
    v9 = v6;
    swift_beginAccess();
    v13[3] = MEMORY[0x1E6969080];
    v13[4] = MEMORY[0x1E6969078];
    v13[0] = v8;
    v13[1] = v9;
    v10 = __swift_project_boxed_opaque_existential_1(v13, MEMORY[0x1E6969080]);
    v11 = *v10;
    v12 = v10[1];
    sub_1DF5A3A94(v8, v9);
    sub_1DF5CD0FC(v11, v12, a4 + 16);
    __swift_destroy_boxed_opaque_existential_1(v13);
    swift_endAccess();
    return sub_1DF5C3890(v8, v9);
  }
}

uint64_t sub_1DF5CCFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1DF6323FC();
  return swift_endAccess();
}

unint64_t sub_1DF5CD0A8()
{
  result = qword_1ECE42A78;
  if (!qword_1ECE42A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42A78);
  }

  return result;
}

uint64_t sub_1DF5CD0FC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_1DF63236C();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1DF5CD234(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1DF5CD234(v4, v5);
  }

  return sub_1DF63236C();
}

uint64_t sub_1DF5CD234(uint64_t a1, uint64_t a2)
{
  result = sub_1DF63211C();
  if (!result || (result = sub_1DF63214C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1DF63213C();
      return sub_1DF63236C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SynchronousCache.__allocating_init()()
{
  v0 = swift_allocObject();
  SynchronousCache.init()();
  return v0;
}

uint64_t *SynchronousCache.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A80, qword_1DF638E00);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = sub_1DF6327DC();
  return v0;
}

uint64_t sub_1DF5CD388@<X0>(void *a1@<X0>, void (*a2)(void, void, void)@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v75 = a5;
  v73 = a3;
  v7 = *(*a1 + 80);
  v77 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v74 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v59 - v10;
  v69 = sub_1DF63327C();
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v12 = &v59 - v11;
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v59 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v68 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  swift_beginAccess();
  sub_1DF63289C();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE436C0, &qword_1DF6393D0);
  v23 = swift_dynamicCast();
  v24 = v13[7];
  if (v23)
  {
    v65 = a2;
    v69 = v7;
    v25 = v77;
    v24(v12, 0, 1, a4);
    v66 = v13[4];
    v67 = v13 + 4;
    v66(v22, v12, a4);
    v26 = v22;
    if (qword_1ED8E5958 != -1)
    {
      swift_once();
    }

    v27 = sub_1DF6326AC();
    __swift_project_value_buffer(v27, qword_1ED8E69A0);
    v28 = v13[2];
    v29 = v68;
    v28(v68, v26, a4);
    v30 = v65;
    v65 = *(v25 + 16);
    v65(v74, v30, v69);
    v31 = v73;
    v73 = v28;
    v28(v72, v31, a4);
    v32 = sub_1DF63268C();
    v33 = sub_1DF63314C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v64 = v26;
      v35 = v34;
      v63 = swift_slowAlloc();
      v76[0] = v63;
      *v35 = 141559043;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2081;
      v73(v70, v29, a4);
      v36 = sub_1DF632A3C();
      v61 = v33;
      v37 = v36;
      v62 = v32;
      v38 = v69;
      v40 = v39;
      v60 = v13[1];
      v60(v29, a4);
      v41 = sub_1DF59EEC8(v37, v40, v76);

      *(v35 + 14) = v41;
      *(v35 + 22) = 2082;
      v42 = v74;
      v65(v71, v74, v38);
      v43 = sub_1DF632A3C();
      v45 = v44;
      (*(v77 + 8))(v42, v38);
      v46 = sub_1DF59EEC8(v43, v45, v76);

      *(v35 + 24) = v46;
      *(v35 + 32) = 2160;
      *(v35 + 34) = 1752392040;
      *(v35 + 42) = 2081;
      v47 = v72;
      v73(v70, v72, a4);
      v48 = sub_1DF632A3C();
      v50 = v49;
      v60(v47, a4);
      v51 = sub_1DF59EEC8(v48, v50, v76);
      v26 = v64;

      *(v35 + 44) = v51;
      v52 = v62;
      _os_log_impl(&dword_1DF59A000, v62, v61, "Some other thread already stored value %{private,mask.hash}s for '%{public}s' -- ignoring computed value: %{private,mask.hash}s", v35, 0x34u);
      v53 = v63;
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v53, -1, -1);
      MEMORY[0x1E12D9D80](v35, -1, -1);
    }

    else
    {

      v58 = v13[1];
      v58(v72, a4);
      (*(v25 + 8))(v74, v69);
      v58(v29, a4);
    }

    return (v66)(v75, v26, a4);
  }

  else
  {
    v24(v12, 1, 1, a4);
    (v67[1])(v12, v69);
    (*(v77 + 16))(v71, a2, v7);
    v76[3] = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v76);
    v55 = v13[2];
    v56 = v73;
    v55(boxed_opaque_existential_1, v73, a4);
    swift_beginAccess();
    sub_1DF63288C();
    sub_1DF6328AC();
    swift_endAccess();
    return (v55)(v75, v56, a4);
  }
}

void SynchronousCache.clear(key:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1DF5CDEAC();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1DF5CDBBC(uint64_t *a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5[-v2], v1);
  memset(&v5[32], 0, 32);
  swift_beginAccess();
  sub_1DF63288C();
  sub_1DF6328AC();
  return swift_endAccess();
}

Swift::Void __swiftcall SynchronousCache.clear()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1DF5CDF1C();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1DF5CDD74(uint64_t *a1)
{
  swift_beginAccess();
  sub_1DF63288C();
  sub_1DF63287C();
  return swift_endAccess();
}

uint64_t SynchronousCache.deinit()
{

  return v0;
}

uint64_t SynchronousCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t URL.isDirectory.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A88, &qword_1DF638E50);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A90, &qword_1DF638E58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF638990;
  v4 = *MEMORY[0x1E695DB78];
  *(inited + 32) = *MEMORY[0x1E695DB78];
  v5 = v4;
  sub_1DF5EC5D4(inited);
  swift_setDeallocating();
  sub_1DF5CE614(inited + 32);
  sub_1DF6322AC();

  v6 = sub_1DF63226C();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v2, 0, 1, v6);
  v8 = sub_1DF63223C();
  (*(v7 + 8))(v2, v6);
  return v8 & 1;
}

uint64_t sub_1DF5CE178(const char *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  value[2] = *MEMORY[0x1E69E9840];
  v6 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v6)
    {
      value[0] = a2;
      LOWORD(value[1]) = a3;
      BYTE2(value[1]) = BYTE2(a3);
      BYTE3(value[1]) = BYTE3(a3);
      BYTE4(value[1]) = BYTE4(a3);
      v7 = BYTE6(a3);
      BYTE5(value[1]) = BYTE5(a3);
      v8 = (sub_1DF632A7C() + 32);
      v9 = value;
      v10 = a1;
LABEL_18:
      v17 = v7;
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (v6 == 2)
  {
    v11 = *(a2 + 16);
    v12 = sub_1DF63211C();
    if (v12)
    {
      v13 = sub_1DF63214C();
      if (__OFSUB__(v11, v13))
      {
        goto LABEL_25;
      }

      v12 += v11 - v13;
    }

    sub_1DF63213C();
    v15 = *(a2 + 16);
    v14 = *(a2 + 24);
    v7 = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_11:
    if (a2 > a2 >> 32)
    {
      __break(1u);
    }

    else
    {
      v12 = sub_1DF63211C();
      if (v12)
      {
        v16 = sub_1DF63214C();
        if (__OFSUB__(a2, v16))
        {
          goto LABEL_26;
        }

        v12 += a2 - v16;
      }

      sub_1DF63213C();
      if (!__OFSUB__(HIDWORD(a2), a2))
      {
        v7 = HIDWORD(a2) - a2;
LABEL_17:
        v8 = (sub_1DF632A7C() + 32);
        v10 = a1;
        v9 = v12;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  memset(value, 0, 14);
  v8 = (sub_1DF632A7C() + 32);
  v9 = value;
  v10 = a1;
  v17 = 0;
LABEL_20:
  v18 = setxattr(v10, v8, v9, v17, 0, 0);

  if (v18 < 0)
  {
    sub_1DF5CE7A4();
    swift_allocError();
    *v20 = v18;
    return swift_willThrow();
  }

  return result;
}

uint64_t URL.extendedAttribute(name:)(uint64_t a1, uint64_t a2)
{
  result = sub_1DF6322DC();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1DF5CE430@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = sub_1DF632A7C();
  v12 = getxattr(a1, (v11 + 32), 0, 0, 0, 0);

  if (v12 < 0)
  {
    sub_1DF5CE7A4();
    swift_allocError();
    *v16 = v12;
    return swift_willThrow();
  }

  else
  {
    v18 = sub_1DF5C2FC8(v12);
    v19 = v13;
    MEMORY[0x1EEE9AC00](v18);
    v17[2] = a1;
    v17[3] = a2;
    v17[4] = a3;
    v17[5] = v12;
    v17[6] = a4;
    sub_1DF5C1DFC(sub_1DF5CE780, v17);
    result = v18;
    v15 = v19;
    if (v5)
    {
      return sub_1DF5B33C0(v18, v19);
    }

    else
    {
      *a5 = v18;
      a5[1] = v15;
    }
  }

  return result;
}

uint64_t sub_1DF5CE56C(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, size_t a6)
{
  v9 = sub_1DF632A7C();
  v10 = getxattr(a3, (v9 + 32), a1, a6, 0, 0);

  if (v10 < 0)
  {
    sub_1DF5CE7A4();
    swift_allocError();
    *v12 = v10;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DF5CE614(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF5CE670(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A88, &qword_1DF638E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s22ExtendedAttributeErrorOwet(uint64_t a1, int a2)
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

uint64_t _s22ExtendedAttributeErrorOwst(uint64_t result, int a2, int a3)
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

unint64_t sub_1DF5CE7A4()
{
  result = qword_1ECE42A98;
  if (!qword_1ECE42A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42A98);
  }

  return result;
}

uint64_t sub_1DF5CE7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1DF59CC98(a3, v25 - v10, &qword_1ECE42C10, &qword_1DF63B260);
  v12 = sub_1DF632E9C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DF59CB50(v11, &qword_1ECE42C10, &qword_1DF63B260);
  }

  else
  {
    sub_1DF632E8C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DF632E1C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DF632A7C() + 32;
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

      sub_1DF59CB50(a3, &qword_1ECE42C10, &qword_1DF63B260);

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

  sub_1DF59CB50(a3, &qword_1ECE42C10, &qword_1DF63B260);
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

uint64_t sub_1DF5CEAF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B30, &qword_1DF639310);
  swift_allocObject();
  result = sub_1DF633C4C();
  qword_1ED8E6A80 = result;
  return result;
}

uint64_t WorkItemQueue.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name);

  return v1;
}

uint64_t static WorkItemQueue.called(on:)(uint64_t a1)
{
  v2 = sub_1DF6325AC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA0, &qword_1DF638F10);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA8, &qword_1DF638F18);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  (*(v3 + 16))(&v24 - v16, a1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_id, v2, v15);
  (*(v3 + 56))(v17, 0, 1, v2);
  if (qword_1ED8E6078 != -1)
  {
    swift_once();
  }

  sub_1DF633C5C();
  v18 = *(v5 + 48);
  sub_1DF59CC98(v17, v7, &qword_1ECE42AA8, &qword_1DF638F18);
  sub_1DF59CC98(v13, &v7[v18], &qword_1ECE42AA8, &qword_1DF638F18);
  v19 = *(v3 + 48);
  if (v19(v7, 1, v2) != 1)
  {
    sub_1DF59CC98(v7, v10, &qword_1ECE42AA8, &qword_1DF638F18);
    if (v19(&v7[v18], 1, v2) != 1)
    {
      v21 = v25;
      (*(v3 + 32))(v25, &v7[v18], v2);
      sub_1DF59CD00(&qword_1ED8E4BF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v20 = sub_1DF63292C();
      v22 = *(v3 + 8);
      v22(v21, v2);
      sub_1DF59CB50(v13, &qword_1ECE42AA8, &qword_1DF638F18);
      sub_1DF59CB50(v17, &qword_1ECE42AA8, &qword_1DF638F18);
      v22(v10, v2);
      sub_1DF59CB50(v7, &qword_1ECE42AA8, &qword_1DF638F18);
      return v20 & 1;
    }

    sub_1DF59CB50(v13, &qword_1ECE42AA8, &qword_1DF638F18);
    sub_1DF59CB50(v17, &qword_1ECE42AA8, &qword_1DF638F18);
    (*(v3 + 8))(v10, v2);
    goto LABEL_8;
  }

  sub_1DF59CB50(v13, &qword_1ECE42AA8, &qword_1DF638F18);
  sub_1DF59CB50(v17, &qword_1ECE42AA8, &qword_1DF638F18);
  if (v19(&v7[v18], 1, v2) != 1)
  {
LABEL_8:
    sub_1DF59CB50(v7, &qword_1ECE42AA0, &qword_1DF638F10);
    v20 = 0;
    return v20 & 1;
  }

  sub_1DF59CB50(v7, &qword_1ECE42AA8, &qword_1DF638F18);
  v20 = 1;
  return v20 & 1;
}

uint64_t WorkItemQueue.__allocating_init(name:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF6325AC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a3, v6, v8);
  v13 = 2;
  type metadata accessor for WorkItemQueue(0);
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  v11 = swift_allocObject();
  WorkItemQueue.init(name:identifier:warningOptions:)(a1, a2, v10, &v13);
  (*(v7 + 8))(a3, v6);
  return v11;
}

uint64_t WorkItemQueue.__allocating_init(name:identifier:warningOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  WorkItemQueue.init(name:identifier:warningOptions:)(a1, a2, a3, a4);
  return v8;
}

char *WorkItemQueue.init(name:identifier:warningOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v84 = a3;
  v75 = a2;
  v79 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v82 = &v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AB0, &qword_1DF638F20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v76 = &v65 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AB8, &qword_1DF638F28);
  v73 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v12 = &v65 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AC0, &qword_1DF638F30);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v65 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AC8, &qword_1DF638F38);
  v83 = *(v16 - 8);
  v17 = v83;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v65 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AD0, &qword_1DF638F40);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v65 - v21;
  v69 = *a4;
  v66 = v69;
  v68 = *(a4 + 3);
  v67 = *(a4 + 1);
  v70 = a4[5];
  swift_defaultActor_initialize();
  v71 = *(v17 + 56);
  v71(&v5[OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_stream], 1, 1, v16);
  v23 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_continuation;
  v80 = v14;
  v81 = v13;
  (*(v14 + 56))(v22, 1, 1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AD8, &qword_1DF638F48);
  v24 = swift_allocObject();
  *(v24 + ((*(*v24 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1DF5CFBF8(v22, v24 + *(*v24 + *MEMORY[0x1E69E6B68] + 16));
  *&v5[v23] = v24;
  *&v5[OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_processTask] = 0;
  v5[OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_flushing] = 0;
  v5[OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_terminating] = 0;
  *&v5[OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_currentWorkItem] = 0;
  v25 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_queueDepth;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE0, &qword_1DF638F50);
  v26 = swift_allocObject();
  *(v26 + 32) = 0;
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *&v5[v25] = v26;
  v27 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_id;
  v28 = sub_1DF6325AC();
  v77 = *(v28 - 8);
  v29 = *(v77 + 16);
  v74 = v28;
  v30 = v29(&v5[v27], v84);
  v31 = &v5[OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name];
  v32 = v75;
  *v31 = v79;
  v31[1] = v32;
  v30.i64[0] = 2;
  v33.i64[0] = v66;
  v34 = vdupq_lane_s64(vceqq_s64(v33, v30).i64[0], 0);
  v35 = vbslq_s8(v34, xmmword_1DF638ED0, v67);
  v36 = vbslq_s8(v34, xmmword_1DF638EE0, v68);
  v37 = v66 == 2;
  v38 = v72;
  v39 = &v5[OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions];
  *v39 = (v66 != 2) & v69;
  *(v39 + 24) = v36;
  v40 = v70;
  if (v37)
  {
    v40 = 0x6F05B59D3B1FFFFLL;
  }

  *(v39 + 8) = v35;
  *(v39 + 5) = v40;
  type metadata accessor for WorkItemQueue.WorkItem(0);
  v41 = v73;
  v42 = v78;
  (*(v73 + 104))(v12, *MEMORY[0x1E69E8650], v78);

  sub_1DF632EAC();
  (*(v41 + 8))(v12, v42);
  v43 = *(v83 + 16);
  v44 = v76;
  v78 = v19;
  v43(v76, v19, v16);
  v79 = v16;
  v71(v44, 0, 1, v16);
  v45 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_stream;
  swift_beginAccess();
  sub_1DF59C800(v44, &v5[v45], &qword_1ECE42AB0, &qword_1DF638F20);
  swift_endAccess();
  v46 = *&v5[OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_continuation];
  v47 = v38;
  v85 = v38;
  v48 = *(*v46 + *MEMORY[0x1E69E6B68] + 16);
  v49 = (*(*v46 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v46 + v49));
  sub_1DF5CFD4C(v46 + v48);
  os_unfair_lock_unlock((v46 + v49));

  if (qword_1ED8E5E40 != -1)
  {
    swift_once();
  }

  v50 = sub_1DF6326AC();
  __swift_project_value_buffer(v50, qword_1ED8E6A30);

  v51 = sub_1DF63268C();
  v52 = sub_1DF63315C();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 136446466;
    v88 = 91;
    v89 = 0xE100000000000000;
    v86 = *v5;
    v87[0] = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
    v55 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v55);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](*&v5[OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name], *&v5[OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8]);
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v56 = sub_1DF59EEC8(v88, v89, v87);

    *(v53 + 4) = v56;
    *(v53 + 12) = 2082;

    v57 = WorkItemQueue.description.getter();
    v59 = v58;

    v60 = sub_1DF59EEC8(v57, v59, v87);

    *(v53 + 14) = v60;
    _os_log_impl(&dword_1DF59A000, v51, v52, "%{public}s init %{public}s", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v54, -1, -1);
    MEMORY[0x1E12D9D80](v53, -1, -1);
  }

  v61 = sub_1DF632E9C();
  v62 = v82;
  (*(*(v61 - 8) + 56))(v82, 1, 1, v61);
  v63 = swift_allocObject();
  v63[2] = 0;
  v63[3] = 0;
  v63[4] = v5;

  sub_1DF5D0208(0, 0, v62, &unk_1DF638F60, v63);

  (*(v77 + 8))(v84, v74);
  sub_1DF59CB50(v62, &qword_1ECE42C10, &qword_1DF63B260);
  (*(v83 + 8))(v78, v79);
  (*(v80 + 8))(v47, v81);
  return v5;
}

uint64_t sub_1DF5CFBF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AD0, &qword_1DF638F40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t WorkItemQueue.WarningOptions.init(verbose:queueDepthWarningLevel:queueTimeWarningLevel:runTimeWarningLevel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_1DF5CFC7C(uint64_t a1, uint64_t a2)
{
  sub_1DF59CB50(a1, &qword_1ECE42AD0, &qword_1DF638F40);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AC0, &qword_1DF638F30);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t sub_1DF5CFD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AB0, &qword_1DF638F20);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AC8, &qword_1DF638F38);
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v4[10] = *(v7 + 64);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5CFEBC, a4, 0);
}

uint64_t sub_1DF5CFEBC()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_stream;
  swift_beginAccess();
  sub_1DF59CC98(v4 + v5, v3, &qword_1ECE42AB0, &qword_1DF638F20);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1DF59CB50(v0[7], &qword_1ECE42AB0, &qword_1DF638F20);
  }

  else
  {
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[9];
    v9 = v0[8];
    v10 = v0[5];
    v11 = v0[6];
    v12 = *(v8 + 32);
    v21 = v11;
    v12(v6, v0[7], v9);
    v13 = sub_1DF632E9C();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    v14 = v7;
    (*(v8 + 16))(v7, v6, v9);
    v15 = sub_1DF59CD00(&qword_1ED8E5E20, type metadata accessor for WorkItemQueue, &protocol conformance descriptor for WorkItemQueue);
    v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = v10;
    *(v17 + 3) = v15;
    *(v17 + 4) = v10;
    v12(&v17[v16], v14, v9);
    swift_retain_n();
    v18 = sub_1DF5CE7F8(0, 0, v21, &unk_1DF639330, v17);
    (*(v8 + 8))(v6, v9);
    *(v10 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_processTask) = v18;
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1DF5D0154(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF59D2C4;

  return sub_1DF5CFD68(a1, v4, v5, v6);
}

uint64_t sub_1DF5D0208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1DF59CC98(a3, v25 - v10, &qword_1ECE42C10, &qword_1DF63B260);
  v12 = sub_1DF632E9C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DF59CB50(v11, &qword_1ECE42C10, &qword_1DF63B260);
  }

  else
  {
    sub_1DF632E8C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DF632E1C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DF632A7C() + 32;
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

BOOL static WorkItemQueue.inWorkItemQueueContext.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA8, &qword_1DF638F18);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  if (qword_1ED8E6078 != -1)
  {
    swift_once();
  }

  sub_1DF633C5C();
  v3 = sub_1DF6325AC();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3) != 1;
  sub_1DF59CB50(v2, &qword_1ECE42AA8, &qword_1DF638F18);
  return v4;
}

uint64_t WorkItemQueue.__allocating_init(identifier:enqueueArtificialDelay:)(uint64_t a1)
{
  v2 = sub_1DF6325AC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DF63255C();
  v8 = v7;
  (*(v3 + 16))(v5, a1, v2);
  v11 = 2;
  type metadata accessor for WorkItemQueue(0);
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v9 = swift_allocObject();
  WorkItemQueue.init(name:identifier:warningOptions:)(v6, v8, v5, &v11);
  (*(v3 + 8))(a1, v2);
  return v9;
}

uint64_t sub_1DF5D0720()
{
  v1[9] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AB0, &qword_1DF638F20);
  v1[10] = swift_task_alloc();
  v2 = sub_1DF6325AC();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AD0, &qword_1DF638F40);
  v1[15] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AC0, &qword_1DF638F30);
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5D08C4, v0, 0);
}

uint64_t sub_1DF5D08C4()
{
  v50 = v0;
  v1 = v0[9];
  v0[5] = *v1;
  v48 = 91;
  v49 = 0xE100000000000000;
  v0[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
  v2 = sub_1DF632A3C();
  MEMORY[0x1E12D82E0](v2);

  MEMORY[0x1E12D82E0](32, 0xE100000000000000);
  v3 = v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name;
  v4 = *(v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name);
  v0[20] = v4;
  v5 = *(v3 + 1);
  v0[21] = v5;
  MEMORY[0x1E12D82E0](v4, v5);
  MEMORY[0x1E12D82E0](93, 0xE100000000000000);
  v6 = v49;
  v46 = v48;
  v0[22] = v48;
  v0[23] = v6;
  if (qword_1ED8E5E40 != -1)
  {
    swift_once();
  }

  v7 = sub_1DF6326AC();
  v0[24] = __swift_project_value_buffer(v7, qword_1ED8E6A30);

  v8 = sub_1DF63268C();
  v9 = sub_1DF63318C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v48 = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_1DF59EEC8(v46, v6, &v48);
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_1DF59EEC8(0x6164696C61766E69, 0xEC00000029286574, &v48);
    _os_log_impl(&dword_1DF59A000, v8, v9, "%{public}s %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v11, -1, -1);
    MEMORY[0x1E12D9D80](v10, -1, -1);
  }

  if (sub_1DF5D88A8())
  {

    v12 = sub_1DF63268C();
    v13 = sub_1DF63317C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[9];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136446466;
      v47 = v16;
      v48 = 91;
      v49 = 0xE100000000000000;
      v0[8] = *v14;
      v17 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v17);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](v4, v5);
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v18 = sub_1DF59EEC8(v48, v49, &v47);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1DF59EEC8(0x6164696C61766E69, 0xEC00000029286574, &v47);
      _os_log_impl(&dword_1DF59A000, v12, v13, "%{public}s: %s Will deadlock when called from a WorkItemQueue context!", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v16, -1, -1);
      MEMORY[0x1E12D9D80](v15, -1, -1);
    }

    v19 = *(v0[9] + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_currentWorkItem);
    v0[30] = v19;
    if (v19)
    {

      v20 = swift_task_alloc();
      v0[31] = v20;
      *v20 = v0;
      v21 = sub_1DF5D18FC;
LABEL_19:
      v20[1] = v21;

      return sub_1DF60B24C();
    }

    goto LABEL_12;
  }

  v22 = v0[16];
  v23 = v0[17];
  v24 = v0[15];
  v25 = *(v0[9] + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_continuation);
  v26 = *(*v25 + *MEMORY[0x1E69E6B68] + 16);
  v27 = (*(*v25 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v25 + v27));
  sub_1DF59CC98(v25 + v26, v24, &qword_1ECE42AD0, &qword_1DF638F40);
  os_unfair_lock_unlock((v25 + v27));
  if ((*(v23 + 48))(v24, 1, v22) == 1)
  {
    v28 = v0[15];

    sub_1DF59CB50(v28, &qword_1ECE42AD0, &qword_1DF638F40);
LABEL_12:

    v29 = v0[1];

    return v29();
  }

  (*(v0[17] + 32))(v0[18], v0[15], v0[16]);

  v31 = sub_1DF63268C();
  v32 = sub_1DF63315C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v48 = v34;
    *v33 = 136446210;
    *(v33 + 4) = sub_1DF59EEC8(v46, v6, &v48);
    _os_log_impl(&dword_1DF59A000, v31, v32, "%{public}s Removing continuation", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1E12D9D80](v34, -1, -1);
    MEMORY[0x1E12D9D80](v33, -1, -1);
  }

  v35 = v0[16];
  v36 = v0[17];
  v37 = v0[9];
  os_unfair_lock_lock((v25 + v27));
  sub_1DF59CB50(v25 + v26, &qword_1ECE42AD0, &qword_1DF638F40);
  (*(v36 + 56))(v25 + v26, 1, 1, v35);
  os_unfair_lock_unlock((v25 + v27));
  *(v37 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_flushing) = 1;
  v38 = *(v37 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_currentWorkItem);
  v0[25] = v38;
  if (v38)
  {

    v20 = swift_task_alloc();
    v0[26] = v20;
    *v20 = v0;
    v21 = sub_1DF5D1168;
    goto LABEL_19;
  }

  v39 = v0[18];
  v40 = v0[13];
  v41 = v0[14];
  v42 = v0[11];
  v43 = v0[12];
  sub_1DF63259C();
  (*(v43 + 16))(v40, v41, v42);
  type metadata accessor for WorkItemQueue.WorkItem(0);
  swift_allocObject();
  v44 = sub_1DF60D5E8(3, v40, &unk_1DF63B798, 0, 0, 0);
  v0[27] = v44;
  (*(v43 + 8))(v41, v42);
  sub_1DF5A9F2C(v44, v39);
  v45 = swift_task_alloc();
  v0[28] = v45;
  *v45 = v0;
  v45[1] = sub_1DF5D13EC;

  return sub_1DF60B830();
}

uint64_t sub_1DF5D1168()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1DF5D1294, v1, 0);
}

uint64_t sub_1DF5D1294(uint64_t a1)
{
  v2 = v1[18];
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[11];
  v6 = v1[12];
  sub_1DF63259C();
  (*(v6 + 16))(v3, v4, v5);
  type metadata accessor for WorkItemQueue.WorkItem(0);
  swift_allocObject();
  v7 = sub_1DF60D5E8(3, v3, &unk_1DF63B798, 0, 0, 0);
  v1[27] = v7;
  (*(v6 + 8))(v4, v5);
  sub_1DF5A9F2C(v7, v2);
  v8 = swift_task_alloc();
  v1[28] = v8;
  *v8 = v1;
  v8[1] = sub_1DF5D13EC;

  return sub_1DF60B830();
}

uint64_t sub_1DF5D13EC()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);

    v4 = sub_1DF5D1AA8;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 72);
    v4 = sub_1DF5D1514;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1DF5D1514()
{
  v33 = v0;

  v1 = sub_1DF63268C();
  v2 = sub_1DF63318C();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[20];
    v3 = v0[21];
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31 = 91;
    v32 = 0xE100000000000000;
    v30 = v7;
    *v6 = 136446210;
    v0[7] = *v5;
    v8 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v8);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](v4, v3);
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v9 = sub_1DF59EEC8(v31, v32, &v30);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_1DF59A000, v1, v2, "%{public}s Invalidation completed", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12D9D80](v7, -1, -1);
    MEMORY[0x1E12D9D80](v6, -1, -1);
  }

  v10 = sub_1DF63268C();
  v11 = sub_1DF63315C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[23];
  if (v12)
  {
    v14 = v0[22];
    v15 = v0[17];
    v29 = v0[18];
    v16 = v0[16];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 136446210;
    v19 = sub_1DF59EEC8(v14, v13, &v31);

    *(v17 + 4) = v19;
    _os_log_impl(&dword_1DF59A000, v10, v11, "%{public}s Removing stream", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1E12D9D80](v18, -1, -1);
    MEMORY[0x1E12D9D80](v17, -1, -1);

    (*(v15 + 8))(v29, v16);
  }

  else
  {
    v21 = v0[17];
    v20 = v0[18];
    v22 = v0[16];

    (*(v21 + 8))(v20, v22);
  }

  v23 = v0[9];
  v24 = v0[10];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AC8, &qword_1DF638F38);
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_stream;
  swift_beginAccess();
  sub_1DF59C800(v24, v23 + v26, &qword_1ECE42AB0, &qword_1DF638F20);
  swift_endAccess();

  v27 = v0[1];

  return v27();
}

uint64_t sub_1DF5D18FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DF5D1AA8()
{
  v28 = v0;
  v1 = v0[29];

  v2 = v1;
  v3 = sub_1DF63268C();
  v4 = sub_1DF63317C();

  if (os_log_type_enabled(v3, v4))
  {
    v21 = v0[29];
    v6 = v0[20];
    v5 = v0[21];
    v22 = v0[17];
    v23 = v0[16];
    v24 = v0[18];
    v7 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = 91;
    v27 = 0xE100000000000000;
    v25 = v10;
    *v8 = 136446722;
    v0[6] = *v7;
    v11 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v11);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](v6, v5);
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v12 = sub_1DF59EEC8(v26, v27, &v25);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1DF59EEC8(0x6164696C61766E69, 0xEC00000029286574, &v25);
    *(v8 + 22) = 2112;
    v13 = v21;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v14;
    *v9 = v14;
    _os_log_impl(&dword_1DF59A000, v3, v4, "%{public}s Error in %s: %@", v8, 0x20u);
    sub_1DF59CB50(v9, &qword_1ECE42AF0, &qword_1DF63ABC0);
    MEMORY[0x1E12D9D80](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v10, -1, -1);
    MEMORY[0x1E12D9D80](v8, -1, -1);

    (*(v22 + 8))(v24, v23);
  }

  else
  {
    v15 = v0[29];
    v17 = v0[17];
    v16 = v0[18];
    v18 = v0[16];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[1];

  return v19();
}

void *WorkItemQueue.deinit()
{
  v1 = v0;
  if (qword_1ED8E5E40 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF6326AC();
  __swift_project_value_buffer(v2, qword_1ED8E6A30);

  v3 = sub_1DF63268C();
  v4 = sub_1DF63315C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136446466;
    v15 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
    v7 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v7);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](*(v0 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v0 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v8 = sub_1DF59EEC8(91, 0xE100000000000000, &v15);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    v9 = WorkItemQueue.description.getter();
    v11 = sub_1DF59EEC8(v9, v10, &v15);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_1DF59A000, v3, v4, "%{public}s deinit %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v6, -1, -1);
    MEMORY[0x1E12D9D80](v5, -1, -1);
  }

  v12 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_id;
  v13 = sub_1DF6325AC();
  (*(*(v13 - 8) + 8))(v1 + v12, v13);

  sub_1DF59CB50(v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_stream, &qword_1ECE42AB0, &qword_1DF638F20);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t WorkItemQueue.__deallocating_deinit()
{
  WorkItemQueue.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DF5D2100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DF5D2120, 0, 0);
}

uint64_t sub_1DF5D2120()
{
  v1 = *(v0 + 72);
  sub_1DF632E5C();
  sub_1DF59CD00(&qword_1ED8E56F0, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  v2 = swift_allocError();
  *(v0 + 80) = v2;
  sub_1DF6327FC();
  v3 = *(v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name);
  v4 = *(v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8);
  v5 = *(v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions + 40);
  v6 = *(v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions + 8);
  v7 = *(v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions + 24);
  *(v0 + 16) = *(v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions);
  *(v0 + 24) = v6;
  *(v0 + 40) = v7;
  *(v0 + 56) = v5;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_1DF5D227C;

  return sub_1DF6070F4(v2, 1, v3, v4, v0 + 16);
}

uint64_t sub_1DF5D227C()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DF5D238C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF6325AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1DF63259C();
  (*(v5 + 16))(v7, v10, v4);
  type metadata accessor for WorkItemQueue.WorkItem(0);
  swift_allocObject();

  v11 = sub_1DF60D5E8(0, v7, a1, a2, 0, 0);

  (*(v5 + 8))(v10, v4);
  sub_1DF5A9620(v11);
  return v11;
}

uint64_t sub_1DF5D2504(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF5D2528, v2, 0);
}

uint64_t sub_1DF5D2528()
{
  v1 = *(v0 + 32);
  v2 = sub_1DF59CD00(&qword_1ED8E5E20, type metadata accessor for WorkItemQueue, &protocol conformance descriptor for WorkItemQueue);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v1;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1DF5D265C;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, v1, v2, 0xD000000000000019, 0x80000001DF634CE0, sub_1DF5D8BA0, v3, v5);
}

uint64_t sub_1DF5D265C()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1DF5DA2B4;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1DF5DA2B0;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF5D2780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[1] = a4;
  v28 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  v6 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v26[0] = v26 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v26 - v9;
  v11 = sub_1DF6325AC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - v16;
  sub_1DF63259C();
  (*(v12 + 16))(v14, v17, v11);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  type metadata accessor for WorkItemQueue.WorkItem(0);
  swift_allocObject();

  v19 = sub_1DF60D5E8(0, v14, &unk_1DF6392C0, v18, 0, 0);

  (*(v12 + 8))(v17, v11);
  sub_1DF5A9620(v19);
  v20 = sub_1DF632E9C();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  v21 = v26[0];
  v22 = v27;
  (*(v6 + 16))(v26[0], v28, v27);
  v23 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = v19;
  (*(v6 + 32))(&v24[v23], v21, v22);

  sub_1DF5CE7F8(0, 0, v10, &unk_1DF6392D0, v24);
}

uint64_t sub_1DF5D2AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  v6 = swift_task_alloc();
  *(v5 + 32) = v6;
  *v6 = v5;
  v6[1] = sub_1DF5D2B88;

  return sub_1DF60B830();
}

uint64_t sub_1DF5D2B88()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1DF5DA2AC;
  }

  else
  {
    v2 = sub_1DF5DA2A8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF5D2C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF5D2CC4, v4, 0);
}

uint64_t sub_1DF5D2CC4()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AF8, &qword_1DF638FA0);
  v10 = *(v0 + 56);
  inited = swift_initStackObject();
  *(v0 + 88) = inited;
  *(inited + 24) = 0;
  *(inited + 16) = 0;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = inited;
  *(v4 + 32) = v10;
  *(v4 + 48) = v1;
  v5 = sub_1DF59CD00(&qword_1ED8E5E20, type metadata accessor for WorkItemQueue, &protocol conformance descriptor for WorkItemQueue);
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1DF5D2E38;
  v7 = *(v0 + 72);
  v8 = *(v0 + 48);

  return MEMORY[0x1EEE6DE18](v8, &unk_1DF638FB0, v4, sub_1DF5D8C74, inited, v1, v5, v7);
}

uint64_t sub_1DF5D2E38()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_1DF5D2FD0;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1DF5D2F60;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF5D2F60()
{
  swift_setDeallocating();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF5D2FD0()
{
  swift_setDeallocating();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF5D3048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF5D3070, a5, 0);
}

uint64_t sub_1DF5D3070()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = sub_1DF59CD00(&qword_1ED8E5E20, type metadata accessor for WorkItemQueue, &protocol conformance descriptor for WorkItemQueue);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = *(v0 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v6;
  *(v5 + 40) = v3;
  *(v5 + 48) = v1;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_1DF5D31B4;
  v8 = *(v0 + 56);
  v9 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v9, v1, v4, 0xD000000000000019, 0x80000001DF634CE0, sub_1DF5D9C74, v5, v8);
}

uint64_t sub_1DF5D31B4()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[6];

    return MEMORY[0x1EEE6DFA0](sub_1DF5D32F0, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1DF5D32F0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1DF5D3354(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 6);
  sub_1DF5D9C84(&a2[4]);
  os_unfair_lock_unlock(a2 + 6);
}

uint64_t sub_1DF5D33B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a1;
  v33 = a5;
  v29 = a3;
  v30 = a4;
  v31 = sub_1DF6325AC();
  v8 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v13 = sub_1DF632E4C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - v16;

  (*(v14 + 16))(v17, a2, v13);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  (*(v14 + 32))(v19 + v18, v17, v13);
  v20 = (v19 + ((v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v30;
  *v20 = v29;
  v20[1] = v21;

  sub_1DF63259C();
  v22 = v28;
  v23 = v31;
  (*(v8 + 16))(v28, v12, v31);
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_1DF6392B0;
  *(v24 + 24) = v19;
  type metadata accessor for WorkItemQueue.WorkItem(0);
  swift_allocObject();
  v25 = sub_1DF60D5E8(0, v22, &unk_1DF6392B8, v24, 0, 0);

  (*(v8 + 8))(v12, v23);
  *v32 = v25;

  sub_1DF5A9620(v26);
}

uint64_t sub_1DF5D36B8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v6 = swift_task_alloc();
  v4[5] = v6;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = sub_1DF5D37E0;

  return v9(v6);
}

uint64_t sub_1DF5D37E0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1DF5D39A0;
  }

  else
  {
    v2 = sub_1DF5D38F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF5D38F4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  sub_1DF632E4C();
  sub_1DF632E3C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF5D39A0()
{
  v0[2] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  sub_1DF632E4C();
  sub_1DF632E2C();

  v1 = v0[1];

  return v1();
}

void sub_1DF5D3A54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  os_unfair_lock_lock((a1 + 24));
  v5 = *(a1 + 16);

  os_unfair_lock_unlock((a1 + 24));
  if (v5)
  {
    v6 = sub_1DF632E9C();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_1DF5CE7F8(0, 0, v4, &unk_1DF6392A0, v7);
  }
}

uint64_t sub_1DF5D3B74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DF59D2C8;

  return sub_1DF60B24C();
}

uint64_t sub_1DF5D3C04(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF5D3C28, v2, 0);
}

uint64_t sub_1DF5D3C28()
{
  v1 = *(v0 + 32);
  v2 = sub_1DF59CD00(&qword_1ED8E5E20, type metadata accessor for WorkItemQueue, &protocol conformance descriptor for WorkItemQueue);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v1;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1DF5D3D5C;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, v1, v2, 0xD000000000000019, 0x80000001DF634CE0, sub_1DF5D8C7C, v3, v5);
}

uint64_t sub_1DF5D3D5C()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1DF5D3E80;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1DF5DA2B0;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF5D3E80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF5D3EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[0] = a2;
  v24[1] = a4;
  v26 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  v5 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v24 - v9;
  v11 = sub_1DF6325AC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v24 - v16;
  sub_1DF63259C();
  (*(v12 + 16))(v14, v17, v11);
  type metadata accessor for WorkItemQueue.WorkItem(0);
  swift_allocObject();

  v18 = sub_1DF60D5E8(0, v14, v24[0], a3, 0, 0);

  (*(v12 + 8))(v17, v11);
  sub_1DF5A9620(v18);
  v19 = sub_1DF632E9C();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = v25;
  (*(v5 + 16))(v7, v26, v25);
  v21 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = v18;
  (*(v5 + 32))(&v22[v21], v7, v20);

  sub_1DF5CE7F8(0, 0, v10, &unk_1DF639290, v22);
}

uint64_t sub_1DF5D421C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF5D4244, v4, 0);
}

uint64_t sub_1DF5D4244()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = sub_1DF59CD00(&qword_1ED8E5E20, type metadata accessor for WorkItemQueue, &protocol conformance descriptor for WorkItemQueue);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *(v5 + 16) = *(v0 + 32);
  *(v5 + 32) = v1;
  *(v5 + 40) = v3;
  *(v5 + 48) = v2;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1DF5D4388;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, v1, v4, 0xD000000000000025, 0x80000001DF634D00, sub_1DF5D8C88, v5, v7);
}

uint64_t sub_1DF5D4388()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_1DF5D44C4;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1DF5D44AC;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF5D44C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF5D4528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v30[1] = a4;
  v32 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  v8 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30[0] = v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v30 - v11;
  v13 = sub_1DF6325AC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v30 - v18;
  sub_1DF63259C();
  (*(v14 + 16))(v16, v19, v13);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  type metadata accessor for WorkItemQueue.WorkItem(0);
  swift_allocObject();

  v21 = sub_1DF60D5E8(0, v16, &unk_1DF639270, v20, 0, 0);

  (*(v14 + 8))(v19, v13);
  sub_1DF5A9620(v21);
  v22 = sub_1DF632E9C();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = v30[0];
  v24 = v31;
  (*(v8 + 16))(v30[0], v32, v31);
  v25 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  v28 = v33;
  v27 = v34;
  *(v26 + 4) = v21;
  *(v26 + 5) = v28;
  *(v26 + 6) = v27;
  (*(v8 + 32))(&v26[v25], v23, v24);

  sub_1DF5CE7F8(0, 0, v12, &unk_1DF639280, v26);
}

uint64_t sub_1DF5D48A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a7;
  v10 = swift_task_alloc();
  *(v7 + 32) = v10;
  *v10 = v7;
  v10[1] = sub_1DF5D4958;

  return sub_1DF60C79C(a5, a6);
}

uint64_t sub_1DF5D4958()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1DF5D4AE4;
  }

  else
  {
    v2 = sub_1DF5D4A6C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF5D4A6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  sub_1DF632E3C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF5D4AE4()
{
  v0[2] = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  sub_1DF632E2C();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DF5D4B6C()
{
  v1[6] = v0;
  v2 = sub_1DF6325AC();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5D4C38, v0, 0);
}

uint64_t sub_1DF5D4C38()
{
  v33 = v0;
  if (qword_1ED8E5E40 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF6326AC();
  v0[11] = __swift_project_value_buffer(v1, qword_1ED8E6A30);

  v2 = sub_1DF63268C();
  v3 = sub_1DF63318C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136446466;
    v30 = v6;
    v31 = 91;
    v32 = 0xE100000000000000;
    v0[5] = *v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
    v7 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v7);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](*(v4 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v4 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v8 = sub_1DF59EEC8(v31, v32, &v30);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_1DF59EEC8(0x6575516873756C66, 0xEC00000029286575, &v30);
    _os_log_impl(&dword_1DF59A000, v2, v3, "%{public}s %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v6, -1, -1);
    MEMORY[0x1E12D9D80](v5, -1, -1);
  }

  v9 = sub_1DF5D88A8();
  v10 = v0[6];
  if (v9)
  {

    v11 = sub_1DF63268C();
    v12 = sub_1DF63317C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[6];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 136446466;
      v30 = v15;
      v31 = 91;
      v32 = 0xE100000000000000;
      v0[4] = *v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v16 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v16);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*(v13 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v13 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v17 = sub_1DF59EEC8(v31, v32, &v30);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_1DF59EEC8(0x6575516873756C66, 0xEC00000029286575, &v30);
      _os_log_impl(&dword_1DF59A000, v11, v12, "%{public}s: %s Will deadlock when called from a WorkItemQueue context!", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v15, -1, -1);
      MEMORY[0x1E12D9D80](v14, -1, -1);
    }

    v18 = *(v0[6] + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_currentWorkItem);
    v0[17] = v18;
    if (v18)
    {

      v19 = swift_task_alloc();
      v0[18] = v19;
      *v19 = v0;
      v20 = sub_1DF5D5878;
LABEL_12:
      v19[1] = v20;

      return sub_1DF60B24C();
    }

    v23 = v0[1];

    return v23();
  }

  else
  {
    *(v10 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_flushing) = 1;
    v21 = *(v10 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_currentWorkItem);
    v0[12] = v21;
    if (v21)
    {

      v19 = swift_task_alloc();
      v0[13] = v19;
      *v19 = v0;
      v20 = sub_1DF5D52B4;
      goto LABEL_12;
    }

    v25 = v0[9];
    v24 = v0[10];
    v26 = v0[7];
    v27 = v0[8];
    sub_1DF63259C();
    (*(v27 + 16))(v25, v24, v26);
    type metadata accessor for WorkItemQueue.WorkItem(0);
    swift_allocObject();
    v28 = sub_1DF60D5E8(2, v25, &unk_1DF63B798, 0, 0, 0);
    v0[14] = v28;
    (*(v27 + 8))(v24, v26);
    sub_1DF5A9620(v28);
    v29 = swift_task_alloc();
    v0[15] = v29;
    *v29 = v0;
    v29[1] = sub_1DF5D5528;

    return sub_1DF60B830();
  }
}

uint64_t sub_1DF5D52B4()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1DF5D53E0, v1, 0);
}

uint64_t sub_1DF5D53E0(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[7];
  v5 = v1[8];
  sub_1DF63259C();
  (*(v5 + 16))(v3, v2, v4);
  type metadata accessor for WorkItemQueue.WorkItem(0);
  swift_allocObject();
  v6 = sub_1DF60D5E8(2, v3, &unk_1DF63B798, 0, 0, 0);
  v1[14] = v6;
  (*(v5 + 8))(v2, v4);
  sub_1DF5A9620(v6);
  v7 = swift_task_alloc();
  v1[15] = v7;
  *v7 = v1;
  v7[1] = sub_1DF5D5528;

  return sub_1DF60B830();
}

uint64_t sub_1DF5D5528()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_1DF5D59C8;
  }

  else
  {
    v4 = sub_1DF5D5654;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF5D5654()
{
  v13 = v0;

  v1 = sub_1DF63268C();
  v2 = sub_1DF63318C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[6];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136446210;
    v10 = v5;
    v11 = 91;
    v12 = 0xE100000000000000;
    v0[3] = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
    v6 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v6);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](*(v3 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v3 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v7 = sub_1DF59EEC8(v11, v12, &v10);

    *(v4 + 4) = v7;
    _os_log_impl(&dword_1DF59A000, v1, v2, "%{public}s Flush barrier completion", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E12D9D80](v5, -1, -1);
    MEMORY[0x1E12D9D80](v4, -1, -1);
  }

  else
  {
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DF5D5878()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DF5D59C8()
{
  v20 = v0;
  v1 = v0[16];

  v2 = v1;
  v3 = sub_1DF63268C();
  v4 = sub_1DF63317C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v7 = 136446722;
    v17 = v9;
    v18 = 91;
    v19 = 0xE100000000000000;
    v0[2] = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
    v10 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v10);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](*(v6 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v6 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v11 = sub_1DF59EEC8(v18, v19, &v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1DF59EEC8(0x6575516873756C66, 0xEC00000029286575, &v17);
    *(v7 + 22) = 2112;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v13;
    *v8 = v13;
    _os_log_impl(&dword_1DF59A000, v3, v4, "%{public}s Error in %s: %@", v7, 0x20u);
    sub_1DF59CB50(v8, &qword_1ECE42AF0, &qword_1DF63ABC0);
    MEMORY[0x1E12D9D80](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v9, -1, -1);
    MEMORY[0x1E12D9D80](v7, -1, -1);
  }

  else
  {
    v14 = v0[16];
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1DF5D5CB8()
{
  v1[6] = v0;
  v2 = sub_1DF6325AC();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5D5D84, v0, 0);
}

uint64_t sub_1DF5D5D84()
{
  v29 = v0;
  if (qword_1ED8E5E40 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF6326AC();
  v0[11] = __swift_project_value_buffer(v1, qword_1ED8E6A30);

  v2 = sub_1DF63268C();
  v3 = sub_1DF63318C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136446466;
    v26 = v6;
    v27 = 91;
    v28 = 0xE100000000000000;
    v0[5] = *v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
    v7 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v7);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](*(v4 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v4 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v8 = sub_1DF59EEC8(v27, v28, &v26);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_1DF59EEC8(0x706D457469617761, 0xEC00000029287974, &v26);
    _os_log_impl(&dword_1DF59A000, v2, v3, "%{public}s %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v6, -1, -1);
    MEMORY[0x1E12D9D80](v5, -1, -1);
  }

  if (sub_1DF5D88A8())
  {

    v9 = sub_1DF63268C();
    v10 = sub_1DF63317C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[6];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 136446466;
      v26 = v13;
      v27 = 91;
      v28 = 0xE100000000000000;
      v0[4] = *v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v14 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v14);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*(v11 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v11 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v15 = sub_1DF59EEC8(v27, v28, &v26);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_1DF59EEC8(0x706D457469617761, 0xEC00000029287974, &v26);
      _os_log_impl(&dword_1DF59A000, v9, v10, "%{public}s: %s Will deadlock when called from a WorkItemQueue context!", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v13, -1, -1);
      MEMORY[0x1E12D9D80](v12, -1, -1);
    }

    v16 = *(v0[6] + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_currentWorkItem);
    v0[15] = v16;
    if (v16)
    {

      v17 = swift_task_alloc();
      v0[16] = v17;
      *v17 = v0;
      v17[1] = sub_1DF5D66E0;

      return sub_1DF60B24C();
    }

    else
    {

      v25 = v0[1];

      return v25();
    }
  }

  else
  {
    v20 = v0[9];
    v19 = v0[10];
    v21 = v0[7];
    v22 = v0[8];
    sub_1DF63259C();
    (*(v22 + 16))(v20, v19, v21);
    type metadata accessor for WorkItemQueue.WorkItem(0);
    swift_allocObject();
    v23 = sub_1DF60D5E8(1, v20, &unk_1DF63B798, 0, 0, 0);
    v0[12] = v23;
    (*(v22 + 8))(v19, v21);
    sub_1DF5A9620(v23);
    v24 = swift_task_alloc();
    v0[13] = v24;
    *v24 = v0;
    v24[1] = sub_1DF5D6390;

    return sub_1DF60B830();
  }
}

uint64_t sub_1DF5D6390()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_1DF5D6830;
  }

  else
  {
    v4 = sub_1DF5D64BC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF5D64BC()
{
  v13 = v0;

  v1 = sub_1DF63268C();
  v2 = sub_1DF63318C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[6];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136446210;
    v10 = v5;
    v11 = 91;
    v12 = 0xE100000000000000;
    v0[3] = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
    v6 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v6);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](*(v3 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v3 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v7 = sub_1DF59EEC8(v11, v12, &v10);

    *(v4 + 4) = v7;
    _os_log_impl(&dword_1DF59A000, v1, v2, "%{public}s Flush barrier completion", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E12D9D80](v5, -1, -1);
    MEMORY[0x1E12D9D80](v4, -1, -1);
  }

  else
  {
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DF5D66E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DF5D6830()
{
  v20 = v0;
  v1 = v0[14];

  v2 = v1;
  v3 = sub_1DF63268C();
  v4 = sub_1DF63317C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v7 = 136446722;
    v17 = v9;
    v18 = 91;
    v19 = 0xE100000000000000;
    v0[2] = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
    v10 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v10);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](*(v6 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v6 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v11 = sub_1DF59EEC8(v18, v19, &v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1DF59EEC8(0x706D457469617761, 0xEC00000029287974, &v17);
    *(v7 + 22) = 2112;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v13;
    *v8 = v13;
    _os_log_impl(&dword_1DF59A000, v3, v4, "%{public}s Error in %s: %@", v7, 0x20u);
    sub_1DF59CB50(v8, &qword_1ECE42AF0, &qword_1DF63ABC0);
    MEMORY[0x1E12D9D80](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v9, -1, -1);
    MEMORY[0x1E12D9D80](v7, -1, -1);
  }

  else
  {
    v14 = v0[14];
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1DF5D6B2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_id;
  v5 = sub_1DF6325AC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1DF5D6BC8(uint64_t a1)
{
  v1[9] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B28, &qword_1DF639308);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5D6CDC, a1, 0);
}

uint64_t sub_1DF5D6CDC()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancelContinuation;
  swift_beginAccess();
  sub_1DF59CC98(v4 + v5, v1, &qword_1ECE42B28, &qword_1DF639308);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_1DF59CB50(v0[14], &qword_1ECE42B28, &qword_1DF639308);
  }

  else
  {
    v6 = v0[14];
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    (*(v8 + 16))(v7, v6, v9);
    sub_1DF59CB50(v6, &qword_1ECE42B28, &qword_1DF639308);
    sub_1DF632E5C();
    sub_1DF59CD00(&qword_1ED8E56F0, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v10 = swift_allocError();
    sub_1DF6327FC();
    v0[8] = v10;
    sub_1DF632E2C();
    (*(v8 + 8))(v7, v9);
  }

  v11 = v0[13];
  (*(v0[11] + 56))(v11, 1, 1, v0[10]);
  swift_beginAccess();
  sub_1DF59C800(v11, v4 + v5, &qword_1ECE42B28, &qword_1DF639308);
  swift_endAccess();

  v12 = v0[1];

  return v12();
}

void sub_1DF5D6F08()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 24);
    sub_1DF59CB50(v3, &qword_1ECE42AA8, &qword_1DF638F18);

    MEMORY[0x1EEE6DFA0](sub_1DF5D7060, v4, 0);
  }
}

uint64_t sub_1DF5D7060()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF5D70C0()
{
  v1 = *(*v0 + 368);

  return MEMORY[0x1EEE6DFA0](sub_1DF5AE8C4, v1, 0);
}

uint64_t sub_1DF5D71D0()
{
  v1 = *(*v0 + 368);

  return MEMORY[0x1EEE6DFA0](sub_1DF5DA288, v1, 0);
}

uint64_t sub_1DF5D72E0()
{
  v1 = *(*v0 + 368);

  return MEMORY[0x1EEE6DFA0](sub_1DF5D73F0, v1, 0);
}

uint64_t sub_1DF5D73F0()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[53];
  v4 = v0[46];

  *(v4 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_terminating) = 1;
  (*(v2 + 8))(v1, v3);
  (*(v0[51] + 8))(v0[52], v0[50]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DF5D74C8()
{
  v1 = *(*v0 + 592);
  v2 = *(*v0 + 368);

  return MEMORY[0x1EEE6DFA0](sub_1DF5DA288, v2, 0);
}

uint64_t sub_1DF5D75F4(uint64_t a1, uint64_t a2)
{
  sub_1DF59CB50(a1, &qword_1ECE42A20, &qword_1DF638C58);
  v4 = sub_1DF6335AC();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t sub_1DF5D76B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1DF5D7754;

  return sub_1DF5AF094(a3);
}

uint64_t sub_1DF5D7754()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DF5D784C()
{
  v1 = *(*v0 + 96);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DF5D795C()
{
  *(v0 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B18, &qword_1DF63B240);
  sub_1DF632FAC();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_1DF5D7A2C;

  return sub_1DF5B0868();
}

uint64_t sub_1DF5D7A2C()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1DF5D7B3C, v1, 0);
}

uint64_t sub_1DF5D7B3C()
{
  v33 = v0;
  if (qword_1ED8E5E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_1DF6326AC();
  __swift_project_value_buffer(v2, qword_1ED8E6A30);

  v3 = v1;
  v4 = sub_1DF63268C();
  v5 = sub_1DF63315C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 136);
    v7 = *(v0 + 96);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136446722;
    v30 = v9;
    v31 = 91;
    v32 = 0xE100000000000000;
    *(v0 + 64) = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
    v10 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v10);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](*(v7 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v7 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v11 = sub_1DF59EEC8(v31, v32, &v30);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v0 + 72) = v6;
    v12 = v6;
    v13 = sub_1DF632A3C();
    v15 = sub_1DF59EEC8(v13, v14, &v30);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2082;
    sub_1DF6325AC();
    sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v16 = sub_1DF6338DC();
    v18 = sub_1DF59EEC8(v16, v17, &v30);

    *(v8 + 24) = v18;
    _os_log_impl(&dword_1DF59A000, v4, v5, "%{public}s Completing workItem (.failure [%s]): %{public}s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v9, -1, -1);
    MEMORY[0x1E12D9D80](v8, -1, -1);
  }

  v19 = *(v0 + 136);
  v20 = *(v0 + 96);
  v21 = *(v20 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name);
  v22 = *(v20 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8);
  v23 = v20 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions;
  v24 = *(v23 + 40);
  v25 = *(v23 + 8);
  v26 = *(v23 + 24);
  *(v0 + 16) = *v23;
  *(v0 + 24) = v25;
  *(v0 + 40) = v26;
  *(v0 + 56) = v24;
  v27 = v19;
  v28 = swift_task_alloc();
  *(v0 + 160) = v28;
  *v28 = v0;
  v28[1] = sub_1DF5D7F10;

  return sub_1DF6070F4(v19, 1, v21, v22, v0 + 16);
}

uint64_t sub_1DF5D7F10()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1DF5D803C, v2, 0);
}

uint64_t sub_1DF5D803C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF5D80C4()
{
  v27 = v0;
  v1 = *(v0 + 112);
  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B18, &qword_1DF63B240);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = *(v0 + 80);

    sub_1DF59CD00(&qword_1ED8E56F0, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    sub_1DF6327FC();
    swift_willThrow();
    (*(v4 + 8))(v3, v5);
    v6 = *(v0 + 40);
  }

  else
  {

    if (qword_1ED8E5E40 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 112);
    v8 = sub_1DF6326AC();
    __swift_project_value_buffer(v8, qword_1ED8E6A30);

    v9 = v7;
    v10 = sub_1DF63268C();
    v11 = sub_1DF63316C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 112);
      v13 = *(v0 + 72);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v14 = 136446466;
      v24 = v16;
      v25 = 91;
      v26 = 0xE100000000000000;
      *(v0 + 48) = *v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v17 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v17);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*(v13 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v13 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v18 = sub_1DF59EEC8(v25, v26, &v24);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2112;
      v19 = v12;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v20;
      *v15 = v20;
      _os_log_impl(&dword_1DF59A000, v10, v11, "%{public}s Unexpected error: %@", v14, 0x16u);
      sub_1DF59CB50(v15, &qword_1ECE42AF0, &qword_1DF63ABC0);
      MEMORY[0x1E12D9D80](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E12D9D80](v16, -1, -1);
      MEMORY[0x1E12D9D80](v14, -1, -1);
    }

    v21 = *(v0 + 112);
    sub_1DF59CD00(&qword_1ED8E56F0, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    sub_1DF6327FC();
    swift_willThrow();
    v6 = v21;
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t WorkItemQueue.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
  v0 = sub_1DF632A3C();
  MEMORY[0x1E12D82E0](v0);

  MEMORY[0x1E12D82E0](32, 0xE100000000000000);
  sub_1DF5B9E58();
  v1 = sub_1DF632BDC();
  MEMORY[0x1E12D82E0](v1);

  MEMORY[0x1E12D82E0](30768, 0xE200000000000000);

  MEMORY[0x1E12D82E0](8250, 0xE200000000000000);
  sub_1DF6325AC();
  sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v2 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](v2);

  MEMORY[0x1E12D82E0](62, 0xE100000000000000);
  return 60;
}

Swift::Void __swiftcall requireWorkItemQueueContext(functionName:)(Swift::String functionName)
{
  object = functionName._object;
  countAndFlagsBits = functionName._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA8, &qword_1DF638F18);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  if (qword_1ED8E6078 != -1)
  {
    swift_once();
  }

  sub_1DF633C5C();
  v6 = sub_1DF6325AC();
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  sub_1DF59CB50(v5, &qword_1ECE42AA8, &qword_1DF638F18);
  if (v7 == 1)
  {
    if (qword_1ED8E5CD8 != -1)
    {
      swift_once();
    }

    v8 = sub_1DF6326AC();
    __swift_project_value_buffer(v8, qword_1ED8E69F0);

    v9 = sub_1DF63268C();
    v10 = sub_1DF63317C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1DF59EEC8(countAndFlagsBits, object, &v14);
      _os_log_impl(&dword_1DF59A000, v9, v10, "%s is required to be called from a WorkItemQueue context!", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1E12D9D80](v12, -1, -1);
      MEMORY[0x1E12D9D80](v11, -1, -1);
    }
  }
}

uint64_t sub_1DF5D88A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA8, &qword_1DF638F18);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1DF6325AC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8E6078 != -1)
  {
    swift_once();
  }

  sub_1DF633C5C();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1DF59CB50(v2, &qword_1ECE42AA8, &qword_1DF638F18);
LABEL_10:
    v7 = 0;
    return v7 & 1;
  }

  (*(v4 + 32))(v6, v2, v3);
  if (qword_1ED8E6080 != -1)
  {
    swift_once();
  }

  sub_1DF633C5C();
  if (!v10)
  {
    (*(v4 + 8))(v6, v3);
    goto LABEL_10;
  }

  v7 = sub_1DF5AC248(v6, v10);

  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

uint64_t sub_1DF5D8AE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF59D2C4;

  return sub_1DF5D2100(a1, v4, v5, v7, v6);
}

uint64_t sub_1DF5D8BAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF59D2C4;

  return sub_1DF5D3048(a1, v5, v6, v7, v8, v4);
}

uint64_t dispatch thunk of WorkItemQueue.invalidate()()
{
  v4 = (*(*v0 + 312) + **(*v0 + 312));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DF59D2C4;

  return v4();
}

uint64_t dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 344) + **(*v2 + 344));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DF59D2C4;

  return v8(a1, a2);
}

{
  v8 = (*(*v2 + 360) + **(*v2 + 360));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DF59D2C4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 352) + **(*v4 + 352));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1DF59D2C4;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(cancelAfter:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 368) + **(*v4 + 368));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1DF59D2C4;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkItemQueue.flushQueue()()
{
  v4 = (*(*v0 + 376) + **(*v0 + 376));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DF59D2C8;

  return v4();
}

uint64_t dispatch thunk of WorkItemQueue.awaitEmpty()()
{
  v4 = (*(*v0 + 384) + **(*v0 + 384));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DF59D2C4;

  return v4();
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1DF5D95BC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[48])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1DF5D9610(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DF5D96B8(uint64_t a1)
{
  sub_1DF5D9710();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1DF5D9710()
{
  if (!qword_1ECE42348)
  {
    v0 = sub_1DF6325AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE42348);
    }
  }
}

uint64_t _s8ItemTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8ItemTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkItemQueue.QueueDepthState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkItemQueue.QueueDepthState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1DF5D9950()
{
  result = qword_1ECE42B08;
  if (!qword_1ECE42B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42B08);
  }

  return result;
}

uint64_t sub_1DF5D99A4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DF59D2C4;

  return sub_1DF5D48A8(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1DF5D9ABC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF59D2C4;

  return sub_1DF5D2AF4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1DF5D9BC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DF59D2C4;

  return sub_1DF5D3B74();
}

uint64_t sub_1DF5D9CA8()
{
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v3 = *(sub_1DF632E4C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1DF59D2C4;

  return sub_1DF5D36B8(v0 + v4, v6, v7, v2);
}

uint64_t sub_1DF5D9DE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF59D2C8;

  return sub_1DF5B8670(a1, v4);
}

uint64_t sub_1DF5D9E90(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF59D2C4;

  return sub_1DF5D2AF4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1DF5D9F94()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DF59D2C4;

  return sub_1DF5D6BC8(v0);
}

uint64_t sub_1DF5DA040@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(result + 8) = v4;
    if (*(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions + 8) >= v3)
    {
      v5 = *result;
    }

    else
    {
      v5 = 1;
      *result = 1;
    }

    *a2 = v5;
    *(a2 + 8) = v4;
  }

  return result;
}

uint64_t objectdestroy_77Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  swift_unknownObjectRelease();

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1DF5DA150@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 8);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(result + 8) = v5;
    if (v5 < *(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions + 8))
    {
      *result = 0;
    }

    *a2 = v5;
  }

  return result;
}

uint64_t sub_1DF5DA188(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF59D2C4;

  return sub_1DF5D76B8(a1, v5, v4);
}

uint64_t objectdestroy_6Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1DF5DA2EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t))
{
  DynamicType = swift_getDynamicType();
  MetatypeMetadata = swift_getMetatypeMetadata();
  return a3(&DynamicType, MetatypeMetadata);
}

uint64_t _ss23CustomStringConvertibleP10FindMyBaseRlzCrlE18addressDescriptionSSvg_0()
{
  sub_1DF5B9E58();
  v0 = sub_1DF632BDC();
  MEMORY[0x1E12D82E0](v0);

  return 30768;
}

uint64_t FixedWidthInteger.bytes.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getDynamicType();
  v26 = a1;
  v6 = sub_1DF63368C();
  v7 = v6;
  if (v6 >= 1)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v11 = __OFADD__(v9, 8);
      v9 += 8;
      if (v11)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      ++v8;
      if (v9 >= v6)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  v10 = 0;
LABEL_9:
  v30 = MEMORY[0x1E69E7CC0];
  sub_1DF5DB198(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    goto LABEL_35;
  }

  v12 = v30;
  if (v10)
  {
    v13 = 0;
    while (v13 < v7)
    {
      if (__OFADD__(v13, 8))
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13 + 8;
      }

      v27 = v13;
      v28 = 0;
      sub_1DF5DA5E0(&v27, v3, v26, a2, &v29);
      v15 = v29;
      v30 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1DF5DB198((v16 > 1), v17 + 1, 1);
        v12 = v30;
      }

      *(v12 + 16) = v17 + 1;
      *(v12 + v17 + 32) = v15;
      v13 = v14;
      if (!--v10)
      {
        goto LABEL_21;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);

    __break(1u);
    return result;
  }

  v14 = 0;
LABEL_21:
  if (v14 < v7)
  {
    v25 = a2;
    do
    {
      v18 = __OFADD__(v14, 8);
      v27 = v14;
      v19 = v3;
      sub_1DF5DA5E0(&v27, v3, v26, v25, &v29);
      v20 = v29;
      v30 = v12;
      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1DF5DB198((v21 > 1), v22 + 1, 1);
        v12 = v30;
      }

      *(v12 + 16) = v22 + 1;
      *(v12 + v22 + 32) = v20;
      v23 = v14 + 8 >= v7 || v18;
      v14 += 8;
      v3 = v19;
    }

    while ((v23 & 1) == 0);
  }

  return v12;
}

uint64_t sub_1DF5DA5E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v31 = a2;
  v30 = a5;
  v7 = *(a4 + 8);
  v8 = *(*(v7 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v32 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v34 = *a1;
  sub_1DF5B9E58();
  sub_1DF63331C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1DF63399C();
  v31 = v8;
  sub_1DF63392C();
  sub_1DF6332FC();
  v19 = *(v32 + 1);
  v19(v12, a3);
  v19(v15, a3);
  if (sub_1DF63337C() & 1) == 0 || (sub_1DF63399C(), sub_1DF63392C(), v20 = sub_1DF63290C(), result = (v19)(v15, a3), (v20))
  {
    if (sub_1DF63336C() <= 7)
    {
      goto LABEL_13;
    }

    v32 = v19;
    v33 = -1;
    v22 = sub_1DF63337C();
    v27 = v7;
    v28 = v18;
    v23 = sub_1DF63336C();
    if (v22)
    {
      if (v23 <= 8)
      {
LABEL_11:
        sub_1DF63399C();
        sub_1DF63392C();
        v18 = v28;
        v25 = sub_1DF6328EC();
        v19 = v32;
        v32(v15, a3);
        if (v25)
        {
          goto LABEL_12;
        }

LABEL_13:
        v26 = sub_1DF63335C();
        result = (v19)(v18, a3);
        *v30 = v26;
        return result;
      }

      sub_1DF5DB28C();
      sub_1DF6332EC();
      v18 = v28;
      v24 = sub_1DF6328FC();
      v19 = v32;
      v32(v15, a3);
    }

    else
    {
      v19 = v32;
      v18 = v28;
      if (v23 < 9)
      {
LABEL_12:
        sub_1DF63335C();
        goto LABEL_13;
      }

      sub_1DF5DB28C();
      sub_1DF6332EC();
      v24 = sub_1DF6328FC();
      v19(v15, a3);
    }

    if ((v24 & 1) == 0)
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t FixedWidthInteger.convert(to:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!*a1)
  {
    return (*(*(a2 - 8) + 16))(a4, v4, a2);
  }

  if (*a1 == 1)
  {
    return MEMORY[0x1EEE6A7F0](a2, a3);
  }

  return MEMORY[0x1EEE6A848](a2, a3);
}

uint64_t FixedWidthInteger.init(data:ofEndianness:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v29 = a2;
  v30 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v14 = *a3;
  if (*a3)
  {
    v28 = a6;
    if (v14 == 1)
    {
      v15 = v29;
      sub_1DF5A3A94(a1, v29);
      v16 = a1;
    }

    else
    {
      sub_1DF5A3A94(a1, v29);
      v16 = sub_1DF5BE950(a1, v29);
      v15 = v18;
    }

    swift_getAssociatedConformanceWitness();
    sub_1DF63399C();
    v19 = sub_1DF63392C();
    v20 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v20 != 2)
      {
        if (!v12)
        {
          goto LABEL_17;
        }

        goto LABEL_19;
      }

      v22 = *(v16 + 16);
      v21 = *(v16 + 24);
      v23 = __OFSUB__(v21, v22);
      v24 = v21 - v22;
      if (!v23)
      {
LABEL_16:
        if (v24 == v12)
        {
LABEL_17:
          MEMORY[0x1EEE9AC00](v19);
          *(&v27 - 2) = v16;
          *(&v27 - 1) = v15;
          sub_1DF5C0858(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), sub_1DF5DB218, (&v27 - 4), a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v25);
          sub_1DF5B33C0(v16, v15);
          sub_1DF5B33C0(a1, v29);
          a6 = v28;
          (*(v11 + 32))(v28, &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
          v17 = 0;
          return (*(v11 + 56))(a6, v17, 1, a4);
        }

LABEL_19:
        (*(v11 + 8))(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
        sub_1DF5B33C0(v16, v15);
        sub_1DF5B33C0(a1, v29);
        v17 = 1;
        a6 = v28;
        return (*(v11 + 56))(a6, v17, 1, a4);
      }

      __break(1u);
    }

    else if (!v20)
    {
      if (BYTE6(v15) != v12)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    LODWORD(v24) = HIDWORD(v16) - v16;
    if (__OFSUB__(HIDWORD(v16), v16))
    {
      __break(1u);
    }

    v24 = v24;
    goto LABEL_16;
  }

  sub_1DF5B33C0(a1, v29);
  v17 = 1;
  return (*(v11 + 56))(a6, v17, 1, a4);
}

uint64_t FixedWidthInteger.init(bits:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v32 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v31 = &v25 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_1DF63399C();
  v30 = a3;
  sub_1DF63392C();
  v26 = a1;
  v14 = *(a1 + 16);
  if (v14)
  {
    v29 = v26 + 32;
    v15 = sub_1DF5DB28C();
    v16 = 0;
    v17 = (v32 + 8);
    v27 = (v32 + 32);
    v28 = v15;
    do
    {
      v18 = *(v29 + v16);
      v32 = v16 + 1;
      v34 = v18;
      sub_1DF63348C();
      v33 = v16;
      sub_1DF5B9E58();
      sub_1DF63332C();
      v19 = *v17;
      (*v17)(v7, a2);
      v20 = v31;
      v21 = v7;
      v22 = v30;
      sub_1DF63330C();
      v19(v10, a2);
      v19(v22, a2);
      v23 = v22;
      v7 = v21;
      (*v27)(v23, v20, a2);
      v16 = v32;
    }

    while (v14 != v32);
  }
}

void *sub_1DF5DB158(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF5EF7BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DF5DB178(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF5EF904(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DF5DB198(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF5EFA10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DF5DB1B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF5EFB04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DF5DB1D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF5EFCDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DF5DB1F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF5EFDE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DF5DB218@<X0>(uint64_t *a3@<X8>)
{
  sub_1DF5C37D4();
  result = sub_1DF6320BC();
  *a3 = result;
  return result;
}

unint64_t sub_1DF5DB28C()
{
  result = qword_1ECE42B50;
  if (!qword_1ECE42B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42B50);
  }

  return result;
}

id PrefixedDefaults.init(prefix:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = [objc_opt_self() standardUserDefaults];
  *a3 = result;
  a3[1] = a1;
  a3[2] = a2;
  return result;
}

Swift::Void __swiftcall PrefixedDefaults.removeValue(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *v1;

  MEMORY[0x1E12D82E0](14906, 0xE200000000000000);
  MEMORY[0x1E12D82E0](countAndFlagsBits, object);
  v5 = sub_1DF63295C();

  [v4 removeObjectForKey_];
}

uint64_t PrefixedDefaults.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  v10 = *(v4 + 16);
  *&v16[0] = *(v4 + 8);
  *(&v16[0] + 1) = v10;

  MEMORY[0x1E12D82E0](14906, 0xE200000000000000);
  MEMORY[0x1E12D82E0](a1, a2);
  v11 = sub_1DF63295C();

  v12 = [v9 objectForKey_];

  if (v12)
  {
    sub_1DF63339C();
    swift_unknownObjectRelease();
    sub_1DF5A27C4(&v15, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE436C0, &qword_1DF6393D0);
  v13 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v13 ^ 1u, 1, a3);
}

uint64_t PrefixedDefaults.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DF5DC7BC(a1, a2, a3, a4);
  v6 = sub_1DF63327C();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*PrefixedDefaults.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  v14 = sub_1DF63327C();
  v13[5] = v14;
  v15 = *(v14 - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  PrefixedDefaults.subscript.getter(a2, a3, a4, v17);
  return sub_1DF5DB6EC;
}

void sub_1DF5DB6EC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[7], v4, v5);

    sub_1DF5DC7BC(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {

    sub_1DF5DC7BC(v4, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

unint64_t PrefixedDefaults.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 16);
  v16[0] = *(v2 + 8);
  v16[1] = v6;

  MEMORY[0x1E12D82E0](14906, 0xE200000000000000);
  MEMORY[0x1E12D82E0](a1, a2);
  v7 = sub_1DF63295C();

  v8 = [v5 stringForKey_];

  if (v8)
  {
    v9 = sub_1DF63298C();
    v11 = v10;

    LODWORD(v16[0]) = 0;
    v12 = sub_1DF5DC230(v9, v11, v16);

    v13 = LODWORD(v16[0]);
    v14 = !v12;
    if (!v12)
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v14 = 1;
  }

  return v13 | ((v14 & 1) << 32);
}

void sub_1DF5DB918(unsigned int *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = *(a1 + 4);

  PrefixedDefaults.subscript.setter(v5 | (v6 << 32), v3, v4);
}

void PrefixedDefaults.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  if ((a1 & 0x100000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1DF63306C();
  }

  MEMORY[0x1E12D82E0](14906, 0xE200000000000000);
  MEMORY[0x1E12D82E0](a2, a3);

  v8 = sub_1DF63295C();

  [v6 setObject:v7 forKey:v8];
  swift_unknownObjectRelease();
}

void (*PrefixedDefaults.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  v5 = PrefixedDefaults.subscript.getter(a2, a3);
  *(a1 + 24) = v5;
  *(a1 + 28) = BYTE4(v5) & 1;
  return sub_1DF5DBACC;
}

void sub_1DF5DBACC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 8);
  v4 = *(a1 + 28);

  PrefixedDefaults.subscript.setter(v2 | (v4 << 32), *a1, v3);
}

unint64_t PrefixedDefaults.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  result = sub_1DF632ADC();
  v51 = result + 2;
  if (__OFADD__(result, 2))
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v5 = [v2 dictionaryRepresentation];
  v6 = sub_1DF63283C();

  v7 = v2;

  v8 = sub_1DF5DC4E8(v6, v7, v1, v3);

  v9 = v8[2];
  if (v9)
  {
    v58 = MEMORY[0x1E69E7CC0];
    sub_1DF5DB158(0, v9, 0);
    v10 = v58;
    v11 = v8 + 8;
    result = sub_1DF6333DC();
    v12 = result;
    v13 = 0;
    v14 = *(v8 + 9);
    v46 = v8 + 9;
    v47 = v9;
    v49 = v8 + 8;
    v50 = v8;
    v48 = v14;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v8 + 32))
    {
      v16 = v12 >> 6;
      if ((v11[v12 >> 6] & (1 << v12)) == 0)
      {
        goto LABEL_26;
      }

      if (v14 != *(v8 + 9))
      {
        goto LABEL_27;
      }

      v52 = v13;
      v17 = (v8[6] + 16 * v12);
      v19 = *v17;
      v18 = v17[1];
      sub_1DF5A0B98(v8[7] + 32 * v12, v55);
      v53[0] = v19;
      v53[1] = v18;
      sub_1DF5A27C4(v55, v54);
      swift_bridgeObjectRetain_n();
      v20 = sub_1DF632ADC();
      v21 = __OFSUB__(v20, v51);
      result = v20 - v51;
      if (v21)
      {
        goto LABEL_28;
      }

      v22 = sub_1DF5DC700(result, v19, v18);
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v29 = MEMORY[0x1E12D8260](v22, v24, v26, v28);
      v31 = v30;

      sub_1DF5A0B98(v54, v57);
      *&v56 = v29;
      *(&v56 + 1) = v31;
      result = sub_1DF5DC984(v53);
      v58 = v10;
      v33 = *(v10 + 16);
      v32 = *(v10 + 24);
      if (v33 >= v32 >> 1)
      {
        result = sub_1DF5DB158((v32 > 1), v33 + 1, 1);
        v10 = v58;
      }

      *(v10 + 16) = v33 + 1;
      v34 = (v10 + 48 * v33);
      v35 = v56;
      v36 = v57[1];
      v34[3] = v57[0];
      v34[4] = v36;
      v34[2] = v35;
      v11 = v49;
      v8 = v50;
      v15 = 1 << *(v50 + 32);
      if (v12 >= v15)
      {
        goto LABEL_29;
      }

      v37 = v49[v16];
      if ((v37 & (1 << v12)) == 0)
      {
        goto LABEL_30;
      }

      v14 = v48;
      if (v48 != *(v50 + 9))
      {
        goto LABEL_31;
      }

      v38 = v37 & (-2 << (v12 & 0x3F));
      if (v38)
      {
        v15 = __clz(__rbit64(v38)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v39 = v16 << 6;
        v40 = v16 + 1;
        v41 = &v46[v16];
        while (v40 < (v15 + 63) >> 6)
        {
          v43 = *v41++;
          v42 = v43;
          v39 += 64;
          ++v40;
          if (v43)
          {
            result = sub_1DF5DC9EC(v12, v48, 0);
            v15 = __clz(__rbit64(v42)) + v39;
            goto LABEL_5;
          }
        }

        result = sub_1DF5DC9EC(v12, v48, 0);
      }

LABEL_5:
      v13 = v52 + 1;
      v12 = v15;
      if (v52 + 1 == v47)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B60, &qword_1DF6393E0);
  v45 = MEMORY[0x1E12D8510](v10, v44);

  return v45;
}

unint64_t *sub_1DF5DBF1C(unint64_t *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = a4;

    v13 = sub_1DF5DC328(v11, a2, a3, v12, a5, a6);
    swift_bridgeObjectRelease_n();

    return v13;
  }

  return result;
}

uint64_t sub_1DF5DBFE0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B68, &qword_1DF639578);
  result = sub_1DF63373C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_1DF5A0B98(v17 + 32 * v16, v33);
    sub_1DF5A27C4(v33, v32);
    sub_1DF633A6C();

    sub_1DF632ACC();
    result = sub_1DF633AAC();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_1DF5A27C4(v32, *(v9 + 56) + 32 * v24);
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

BOOL sub_1DF5DC230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtof_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1DF63344C();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

unint64_t *sub_1DF5DC328(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[5] = a6;
  v23 = 0;
  v22 = result;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = (*(a3 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_1DF5A0B98(*(a3 + 56) + 32 * v16, v26);
    v24[0] = v19;
    v24[1] = v18;
    sub_1DF5A0B98(v26, &v25);
    swift_bridgeObjectRetain_n();

    MEMORY[0x1E12D82E0](14906, 0xE200000000000000);
    LOBYTE(v19) = sub_1DF632BAC();

    sub_1DF5DC984(v24);
    __swift_destroy_boxed_opaque_existential_1(v26);

    if (v19)
    {
      *(v22 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_1DF5DBFE0(v22, a2, v23, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      return sub_1DF5DBFE0(v22, a2, v23, a3);
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1DF5DC4E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = a2;
  swift_bridgeObjectRetain_n();
  v12 = v11;
  v13 = v12;
  if (v9 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v18 = swift_slowAlloc();
      v19 = v13;

      v16 = sub_1DF5DBF1C(v18, v10, a1, v19, a3, a4);
      MEMORY[0x1E12D9D80](v18, -1, -1);
      swift_bridgeObjectRelease_n();

      return v16;
    }
  }

  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - ((8 * v10 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v14, 8 * v10);
  v15 = v13;

  v16 = sub_1DF5DC328(v14, v10, a1, v15, a3, a4);

  if (v4)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();

  return v16;
}

unint64_t sub_1DF5DC700(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_1DF632AFC();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_1DF632C0C();
}

void sub_1DF5DC7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1DF63327C();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - v11;
  v13 = *v4;
  (*(v14 + 16))(v19 - v11, a1, v10);
  v15 = *(a4 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v12, 1, a4) != 1)
  {
    v16 = sub_1DF63393C();
    (*(v15 + 8))(v12, a4);
  }

  v17 = *(v4 + 16);
  v19[0] = *(v4 + 8);
  v19[1] = v17;

  MEMORY[0x1E12D82E0](14906, 0xE200000000000000);
  MEMORY[0x1E12D82E0](a2, a3);

  v18 = sub_1DF63295C();

  [v13 setObject:v16 forKey:v18];
  swift_unknownObjectRelease();
}

uint64_t sub_1DF5DC984(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B58, &qword_1DF6393D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF5DC9EC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1DF5DC9F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DF5DCA40(uint64_t result, int a2, int a3)
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

_BYTE *sub_1DF5DCA90@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t Dictionary<>.dataRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1DF63206C();
  swift_allocObject();
  sub_1DF63205C();
  sub_1DF63288C();
  swift_getWitnessTable();
  v8 = sub_1DF63204C();

  return v8;
}

uint64_t Dictionary<>.init(dataRepresentation:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_1DF5DF31C(a1, a2, a3, a4, a5, a6, a7);
  sub_1DF5B33C0(a1, a2);
  return v9;
}

uint64_t sub_1DF5DCD70@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t *a4@<X2>, uint64_t a5@<X3>)
{
  v9 = sub_1DF5DF31C(a1, a2, a4[2], a4[3], *(a5 - 8), *(a5 - 16), a4[4]);
  result = sub_1DF5B33C0(a1, a2);
  if (!v5)
  {
    *a3 = v9;
  }

  return result;
}

void *Dictionary<>.stringRepresentation.getter(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v81 = a4;
  v82 = a6;
  v6 = a3;
  v75 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v73 - v12;
  v74 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v91 = v73 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v88 = sub_1DF63327C();
  v20 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v89 = v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v87 = v73 - v23;
  v76 = v13;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v24 = sub_1DF6336CC();
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = v24 | 0x8000000000000000;
  }

  else
  {
    v29 = -1 << *(a1 + 32);
    v26 = ~v29;
    v25 = a1 + 64;
    v30 = -v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v27 = v31 & *(a1 + 64);
    v28 = a1;
  }

  v95 = (v74 + 32);
  v94 = (v75 + 32);
  v86 = TupleTypeMetadata2 - 8;
  v73[0] = v26;
  v90 = (v26 + 64) >> 6;
  v73[2] = v74 + 16;
  v73[1] = v75 + 16;
  v85 = (v20 + 32);
  v78 = (v75 + 8);
  v77 = (v74 + 8);

  v32 = 0;
  v33 = MEMORY[0x1E69E7CC8];
  v83 = v25;
  v84 = v28;
  v79 = v17;
  v80 = v10;
  while (1)
  {
    v98 = v33;
    v93 = v27;
    if ((v28 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_1DF6336DC())
    {
      sub_1DF63391C();
      swift_unknownObjectRelease();
      v41 = v76;
      sub_1DF63391C();
      swift_unknownObjectRelease();
      v36 = v32;
      v97 = v93;
      goto LABEL_21;
    }

    v45 = 1;
    v96 = v32;
    v97 = v93;
LABEL_24:
    v42 = TupleTypeMetadata2;
    v44 = v89;
LABEL_25:
    v46 = *(v42 - 8);
    (*(v46 + 56))(v44, v45, 1, v42);
    v47 = v87;
    (*v85)(v87, v44, v88);
    if ((*(v46 + 48))(v47, 1, v42) == 1)
    {
      sub_1DF5DF418(v84);
      return v98;
    }

    v48 = *(v42 + 48);
    (*v95)(v17, v47, a2);
    (*v94)(v10, &v47[v48], v6);
    v49 = a2;
    v50 = sub_1DF6338DC();
    v52 = v51;
    v53 = v6;
    v54 = sub_1DF6338DC();
    v56 = v55;
    v57 = v98;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = v57;
    v60 = sub_1DF59F184(v50, v52);
    v61 = v57[2];
    v62 = (v59 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      goto LABEL_37;
    }

    v64 = v59;
    if (v57[3] >= v63)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DF5DEA98();
      }
    }

    else
    {
      sub_1DF5DD94C(v63, isUniquelyReferenced_nonNull_native);
      v65 = sub_1DF59F184(v50, v52);
      if ((v64 & 1) != (v66 & 1))
      {
        goto LABEL_39;
      }

      v60 = v65;
    }

    v6 = v53;
    a2 = v49;
    if (v64)
    {

      v33 = v99;
      v34 = (v99[7] + 16 * v60);
      *v34 = v54;
      v34[1] = v56;

      v10 = v80;
      (*v78)(v80, v6);
      v17 = v79;
      (*v77)(v79, v49);
      v32 = v96;
      v27 = v97;
      v25 = v83;
      v28 = v84;
    }

    else
    {
      v33 = v99;
      v99[(v60 >> 6) + 8] |= 1 << v60;
      v67 = (v33[6] + 16 * v60);
      *v67 = v50;
      v67[1] = v52;
      v68 = (v33[7] + 16 * v60);
      *v68 = v54;
      v68[1] = v56;
      v10 = v80;
      (*v78)(v80, v6);
      v17 = v79;
      (*v77)(v79, v49);
      v69 = v33[2];
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      v28 = v84;
      if (v70)
      {
        goto LABEL_38;
      }

      v33[2] = v71;
      v32 = v96;
      v27 = v97;
      v25 = v83;
    }
  }

  v35 = v27;
  v36 = v32;
  if (v27)
  {
LABEL_18:
    v97 = (v35 - 1) & v35;
    v40 = __clz(__rbit64(v35)) | (v36 << 6);
    (*(v74 + 16))(v91, *(v28 + 48) + *(v74 + 72) * v40, a2);
    v41 = v76;
    (*(v75 + 16))(v76, *(v28 + 56) + *(v75 + 72) * v40, v6);
LABEL_21:
    v42 = TupleTypeMetadata2;
    v43 = *(TupleTypeMetadata2 + 48);
    v44 = v89;
    (*v95)();
    (*v94)(&v44[v43], v41, v6);
    v45 = 0;
    v96 = v36;
    goto LABEL_25;
  }

  if (v90 <= v32 + 1)
  {
    v37 = v32 + 1;
  }

  else
  {
    v37 = v90;
  }

  v38 = v37 - 1;
  v39 = v32;
  while (1)
  {
    v36 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v36 >= v90)
    {
      v96 = v38;
      v97 = 0;
      v45 = 1;
      goto LABEL_24;
    }

    v35 = *(v25 + 8 * v36);
    ++v39;
    if (v35)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_1DF6339EC();
  __break(1u);
  return result;
}

uint64_t sub_1DF5DD5CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_1DF6335AC();
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A30, &qword_1DF638C68);
  v42 = v4;
  result = sub_1DF63372C();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_1DF633A6C();
      sub_1DF632ACC();
      result = sub_1DF633AAC();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1DF5DD94C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A18, &qword_1DF638C50);
  v37 = v4;
  result = sub_1DF63372C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1DF633A6C();
      sub_1DF632ACC();
      result = sub_1DF633AAC();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DF5DDC0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A00, &qword_1DF638C30);
  v5 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v40 - v6;
  v7 = sub_1DF6325AC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B78, &qword_1DF6395D8);
  v47 = v4;
  result = sub_1DF63372C();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_1DF5A2A60(&qword_1ED8E6150, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1DF6328BC();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1DF5DE0E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B70, &qword_1DF6395D0);
  v44 = v4;
  result = sub_1DF63372C();
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
      v23 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v26 = v23 | (v8 << 6);
      v27 = (*(v5 + 48) + 16 * v26);
      v28 = *v27;
      v29 = v27[1];
      v30 = (*(v5 + 56) + 112 * v26);
      if (v44)
      {
        v31 = *v30;
        v32 = v30[2];
        v46 = v30[1];
        v47 = v32;
        v45 = v31;
        v33 = v30[3];
        v34 = v30[4];
        v35 = v30[6];
        v50 = v30[5];
        v51 = v35;
        v49 = v34;
        v48 = v33;
      }

      else
      {
        sub_1DF5A7C1C(v30, &v45);
      }

      sub_1DF633A6C();
      sub_1DF632ACC();
      result = sub_1DF633AAC();
      v36 = -1 << *(v7 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v14 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v14 + 8 * v38);
          if (v42 != -1)
          {
            v15 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v37) & ~*(v14 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v28;
      v16[1] = v29;
      v17 = (*(v7 + 56) + 112 * v15);
      v18 = v45;
      v19 = v47;
      v17[1] = v46;
      v17[2] = v19;
      *v17 = v18;
      v20 = v48;
      v21 = v49;
      v22 = v51;
      v17[5] = v50;
      v17[6] = v22;
      v17[3] = v20;
      v17[4] = v21;
      ++*(v7 + 16);
    }

    v24 = v8;
    while (1)
    {
      v8 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v25 = v9[v8];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v12 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v2;
    if (v43 >= 64)
    {
      bzero((v5 + 64), ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_1DF5DE42C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v46 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v38 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v9 = *v4;
  v10 = sub_1DF63371C();
  v11 = v10;
  if (*(v9 + 16))
  {
    v39 = v7;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v45 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = v46 + 32;
    v41 = v46 + 16;
    v42 = v9;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v9 + 56);
        v28 = (*(v9 + 48) + 16 * v25);
        v29 = *v28;
        v30 = v28[1];
        v31 = v46;
        v32 = *(v46 + 72) * v25;
        v33 = v43;
        v34 = v44;
        (*(v46 + 16))(v43, v27 + v32, v44);
        v35 = v45;
        v36 = (*(v45 + 48) + v26);
        *v36 = v29;
        v36[1] = v30;
        v37 = *(v35 + 56) + v32;
        v9 = v42;
        (*(v31 + 32))(v37, v33, v34);

        v20 = v47;
      }

      while (v47);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v39;
        v11 = v45;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v47 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v11;
  }

  return result;
}

void *sub_1DF5DE6A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A50, &qword_1DF638CC8);
  v2 = *v0;
  v3 = sub_1DF63371C();
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

char *sub_1DF5DE818()
{
  v1 = v0;
  v35 = sub_1DF6335AC();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A30, &qword_1DF638C68);
  v3 = *v0;
  v4 = sub_1DF63371C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
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

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
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

void *sub_1DF5DEA98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A18, &qword_1DF638C50);
  v2 = *v0;
  v3 = sub_1DF63371C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

char *sub_1DF5DEC10()
{
  v1 = v0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A00, &qword_1DF638C30);
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - v2;
  v39 = sub_1DF6325AC();
  v43 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B78, &qword_1DF6395D8);
  v4 = *v0;
  v5 = sub_1DF63371C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1DF5DEFBC(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = sub_1DF63371C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_1DF5A0B98(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_1DF5DF15C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B70, &qword_1DF6395D0);
  v2 = *v0;
  v3 = sub_1DF63371C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v30 = v1;
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
        v22 = 112 * v17;
        sub_1DF5A7C1C(*(v2 + 56) + 112 * v17, v31);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = (*(v4 + 56) + v22);
        v26 = v31[1];
        v25 = v31[2];
        *v24 = v31[0];
        v27 = v31[3];
        v28 = v31[4];
        v29 = v31[6];
        v24[5] = v31[5];
        v24[6] = v29;
        v24[3] = v27;
        v24[4] = v28;
        v24[1] = v26;
        v24[2] = v25;
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

        v1 = v30;
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

uint64_t sub_1DF5DF31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1DF63203C();
  swift_allocObject();
  sub_1DF63202C();
  sub_1DF63288C();
  swift_getWitnessTable();
  sub_1DF63201C();

  if (!v7)
  {
    return v9;
  }

  return result;
}

uint64_t os_activity(name:block:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  *(v5 + 88) = a3;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DF5DF4B8, 0, 0);
}

uint64_t sub_1DF5DF4B8(uint64_t a1, int a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 32);
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  v5 = hackyCreateActivity(_:dso:)(v4, a2, *(v2 + 88), &dword_1DF59A000);
  *(v2 + 64) = v5;
  os_activity_scope_enter(v5, (v2 + 16));
  v8 = (v3 + *v3);
  v6 = swift_task_alloc();
  *(v2 + 72) = v6;
  *v6 = v2;
  v6[1] = sub_1DF5DF604;

  return v8();
}

uint64_t sub_1DF5DF604()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1DF5DF7E0;
  }

  else
  {
    v2 = sub_1DF5DF744;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF5DF744()
{
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  v1 = v0->opaque[1];

  return v1();
}

uint64_t sub_1DF5DF7E0()
{
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  v1 = v0->opaque[1];

  return v1();
}

uint64_t sub_1DF5DF87C()
{
  qword_1ED8E5D88 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t sub_1DF5DF8B8()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E6910);
  v1 = __swift_project_value_buffer(v0, qword_1ED8E6910);
  if (qword_1ED8E4A80 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8E6940);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t XPCAlarm.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t XPCAlarm.init(identifier:criteria:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF5DFA20, 0, 0);
}

uint64_t sub_1DF5DFA20()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  *v3 = v0[3];
  v3[1] = v1;
  v4 = type metadata accessor for XPCAlarm(0);
  sub_1DF5E15B4(v2, v3 + *(v4 + 20), type metadata accessor for XPCAlarm.Criteria);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1DF5DFAE8;

  return sub_1DF5DFC58();
}

uint64_t sub_1DF5DFAE8()
{

  return MEMORY[0x1EEE6DFA0](sub_1DF5DFBE4, 0, 0);
}

uint64_t sub_1DF5DFBE4()
{
  sub_1DF5E161C(*(v0 + 40), type metadata accessor for XPCAlarm.Criteria);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF5DFC58()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for XPCAlarm(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5DFCEC, 0, 0);
}

uint64_t sub_1DF5DFCEC()
{
  v17 = v0;
  _s10FindMyBase8XPCAlarmV10unregister10identifierySS_tFZ_0(**(v0 + 16), *(*(v0 + 16) + 8));
  if (qword_1ED8E4A58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = sub_1DF6326AC();
  __swift_project_value_buffer(v3, qword_1ED8E6910);
  sub_1DF5E15B4(v2, v1, type metadata accessor for XPCAlarm);
  v4 = sub_1DF63268C();
  v5 = sub_1DF63318C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v10 = XPCAlarm.description.getter();
    v12 = v11;
    sub_1DF5E161C(v7, type metadata accessor for XPCAlarm);
    v13 = sub_1DF59EEC8(v10, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DF59A000, v4, v5, "Registering %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E12D9D80](v9, -1, -1);
    MEMORY[0x1E12D9D80](v8, -1, -1);
  }

  else
  {

    sub_1DF5E161C(v7, type metadata accessor for XPCAlarm);
  }

  sub_1DF5E0090();
  sub_1DF632A7C();
  sub_1DF632A7C();
  xpc_set_event();

  swift_unknownObjectRelease();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t XPCAlarm.description.getter()
{
  sub_1DF63347C();

  type metadata accessor for XPCAlarm(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B88, &qword_1DF639600);
  v1 = sub_1DF632A3C();
  MEMORY[0x1E12D82E0](v1);

  MEMORY[0x1E12D82E0](8250, 0xE200000000000000);
  MEMORY[0x1E12D82E0](*v0, v0[1]);
  MEMORY[0x1E12D82E0](0x6972657469726320, 0xEB00000000203A61);
  v2 = XPCAlarm.Criteria.description.getter();
  MEMORY[0x1E12D82E0](v2);

  MEMORY[0x1E12D82E0](62, 0xE100000000000000);
  return 60;
}

void sub_1DF5E0090()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  sub_1DF6324DC();
  v3 = ceil(v2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = 1000000000 * v3;
  if ((v3 * 1000000000) >> 64 != v4 >> 63)
  {
LABEL_13:
    __break(1u);
    return;
  }

  xpc_dictionary_set_date(v1, "Date", v4);
  v5 = *(v0 + *(type metadata accessor for XPCAlarm.Criteria(0) + 20));
  if ((v5 & 2) != 0)
  {
    xpc_dictionary_set_BOOL(v1, "ShouldWake", 0);
  }

  if ((v5 & 4) != 0)
  {
    xpc_dictionary_set_BOOL(v1, "UserVisible", 1);
  }
}

uint64_t XPCAlarm.Criteria.Options.description.getter()
{
  v1 = *v0;
  if ((*v0 & 2) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1DF5C1294(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1DF5C1294((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  strcpy(v5 + 32, ".shouldNotWake");
  v5[47] = -18;
  if ((v1 & 4) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1DF5C1294((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    strcpy(v8 + 32, ".userVisible");
    v8[45] = 0;
    *(v8 + 23) = -5120;
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
  sub_1DF5BC754();
  v9 = sub_1DF6328DC();
  v11 = v10;

  MEMORY[0x1E12D82E0](v9, v11);

  MEMORY[0x1E12D82E0](93, 0xE100000000000000);
  return 91;
}

uint64_t XPCAlarm.Criteria.init(date:options:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_1DF63252C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for XPCAlarm.Criteria(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t XPCAlarm.Criteria.description.getter()
{
  sub_1DF63347C();

  type metadata accessor for XPCAlarm.Criteria(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B90, &qword_1DF639608);
  v0 = sub_1DF632A3C();
  MEMORY[0x1E12D82E0](v0);

  MEMORY[0x1E12D82E0](0x203A6574616420, 0xE700000000000000);
  if (qword_1ECE42358 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECE42360;
  v2 = sub_1DF63248C();
  v3 = [v1 stringFromDate_];

  v4 = sub_1DF63298C();
  v6 = v5;

  MEMORY[0x1E12D82E0](v4, v6);

  MEMORY[0x1E12D82E0](0x203A6C61636F6C20, 0xE800000000000000);
  if (qword_1ED8E4A20 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED8E4A28;
  v8 = sub_1DF63248C();
  v9 = [v7 stringFromDate_];

  v10 = sub_1DF63298C();
  v12 = v11;

  MEMORY[0x1E12D82E0](v10, v12);

  MEMORY[0x1E12D82E0](0x6E6F6974706F203BLL, 0xEB00000000203A73);
  v13 = XPCAlarm.Criteria.Options.description.getter();
  MEMORY[0x1E12D82E0](v13);

  return 60;
}

BOOL static XPCAlarm.Criteria.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1DF6324EC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for XPCAlarm.Criteria(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_1DF5E074C()
{
  if (*v0)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_1DF5E0780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DF63394C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF63394C();

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

uint64_t sub_1DF5E0874(uint64_t a1)
{
  v2 = sub_1DF5E10BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF5E08B0(uint64_t a1)
{
  v2 = sub_1DF5E10BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCAlarm.Criteria.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B98, &qword_1DF639610);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF5E10BC();
  sub_1DF633AFC();
  v12 = 0;
  sub_1DF63252C();
  sub_1DF5E1164(&qword_1ECE42BA8, MEMORY[0x1E6969538]);
  sub_1DF63385C();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for XPCAlarm.Criteria(0) + 20));
    v10[15] = 1;
    sub_1DF5E1110();
    sub_1DF63385C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t XPCAlarm.Criteria.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = sub_1DF63252C();
  v23 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42BB8, &qword_1DF639618);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for XPCAlarm.Criteria(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF5E10BC();
  sub_1DF633ADC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v10;
  v13 = v12;
  v14 = v23;
  v29 = 0;
  sub_1DF5E1164(&qword_1ECE42BC0, MEMORY[0x1E6969558]);
  v15 = v26;
  v16 = v24;
  sub_1DF6337CC();
  v17 = *(v14 + 32);
  v20 = v13;
  v17(v13, v5, v15);
  v28 = 1;
  sub_1DF5E11A8();
  sub_1DF6337CC();
  (*(v25 + 8))(v9, v16);
  v18 = v20;
  *(v20 + *(v21 + 20)) = v27;
  sub_1DF5E15B4(v18, v22, type metadata accessor for XPCAlarm.Criteria);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DF5E161C(v18, type metadata accessor for XPCAlarm.Criteria);
}

uint64_t sub_1DF5E0E98()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E6940);
  __swift_project_value_buffer(v0, qword_1ED8E6940);
  return sub_1DF63269C();
}

uint64_t _s10FindMyBase8XPCAlarmV10unregister10identifierySS_tFZ_0(uint64_t a1, unint64_t a2)
{
  if (qword_1ED8E4A58 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF6326AC();
  __swift_project_value_buffer(v4, qword_1ED8E6910);

  v5 = sub_1DF63268C();
  v6 = sub_1DF63318C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1DF59EEC8(a1, a2, &v10);
    _os_log_impl(&dword_1DF59A000, v5, v6, "Unregistering %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E12D9D80](v8, -1, -1);
    MEMORY[0x1E12D9D80](v7, -1, -1);
  }

  sub_1DF632A7C();
  sub_1DF632A7C();
  xpc_set_event();
}

unint64_t sub_1DF5E10BC()
{
  result = qword_1ECE42BA0;
  if (!qword_1ECE42BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42BA0);
  }

  return result;
}

unint64_t sub_1DF5E1110()
{
  result = qword_1ECE42BB0;
  if (!qword_1ECE42BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42BB0);
  }

  return result;
}

uint64_t sub_1DF5E1164(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DF63252C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF5E11A8()
{
  result = qword_1ECE42BC8;
  if (!qword_1ECE42BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42BC8);
  }

  return result;
}

unint64_t sub_1DF5E1200()
{
  result = qword_1ECE42BD0;
  if (!qword_1ECE42BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42BD0);
  }

  return result;
}

unint64_t sub_1DF5E1258()
{
  result = qword_1ECE42BD8;
  if (!qword_1ECE42BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42BD8);
  }

  return result;
}

unint64_t sub_1DF5E12B0()
{
  result = qword_1ECE42390;
  if (!qword_1ECE42390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42390);
  }

  return result;
}

unint64_t sub_1DF5E1308()
{
  result = qword_1ECE42388;
  if (!qword_1ECE42388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42388);
  }

  return result;
}

uint64_t sub_1DF5E1384(uint64_t a1)
{
  result = type metadata accessor for XPCAlarm.Criteria(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DF5E1428(uint64_t a1)
{
  result = sub_1DF63252C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DF5E14B0()
{
  result = qword_1ECE42BE0;
  if (!qword_1ECE42BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42BE0);
  }

  return result;
}

unint64_t sub_1DF5E1508()
{
  result = qword_1ECE42BE8;
  if (!qword_1ECE42BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42BE8);
  }

  return result;
}

unint64_t sub_1DF5E1560()
{
  result = qword_1ECE42BF0;
  if (!qword_1ECE42BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42BF0);
  }

  return result;
}

uint64_t sub_1DF5E15B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF5E161C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static TimeZone.gmt.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE42BF8, &qword_1DF639A58);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  sub_1DF6325FC();
  v5 = sub_1DF63262C();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF5E1808(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  swift_allocObject();
  result = sub_1DF633C4C();
  *a4 = result;
  return result;
}

uint64_t sub_1DF5E1880(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1DF5E18E0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1DF59D2C8;

  return v7();
}

uint64_t static Transaction.named<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 88) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF5E1A34, 0, 0);
}

uint64_t sub_1DF5E1A34()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v0 + 88);
  swift_allocObject();
  sub_1DF5B2178(v3, v2, v4);
  v6 = v5;
  *(v0 + 64) = v5;
  v10 = (v1 + *v1);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_1DF5E1B70;
  v8 = *(v0 + 16);

  return v10(v8, v6);
}

uint64_t sub_1DF5E1B70()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1DF5BE018;
  }

  else
  {
    v2 = sub_1DF5E1C84;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF5E1C84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static Transaction.named<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 96) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF5E1D18, 0, 0);
}

uint64_t sub_1DF5E1D18()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1DF5E1DF0;
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = *(v0 + 96);

  return static Transaction.named<A>(_:with:)(v7, v5, v6, v8, &unk_1DF639A80, v2);
}

uint64_t sub_1DF5E1DF0()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF5E1F2C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DF5E1F2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF5E1F90(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1DF59D2C8;

  return v7(a1);
}

uint64_t Transaction.deinit()
{
  sub_1DF5B4934();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t Transaction.description.getter()
{
  MEMORY[0x1E12D82E0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1E12D82E0](93, 0xE100000000000000);
  return 0x3A4E58545BLL;
}

uint64_t sub_1DF5E2114()
{
  MEMORY[0x1E12D82E0](*(*v0 + 16), *(*v0 + 24));
  MEMORY[0x1E12D82E0](93, 0xE100000000000000);
  return 0x3A4E58545BLL;
}

uint64_t sub_1DF5E2170()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E6A08);
  __swift_project_value_buffer(v0, qword_1ED8E6A08);
  return sub_1DF63269C();
}

uint64_t sub_1DF5E2218(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DF59D2C8;

  return sub_1DF5E1F90(a1, a2, v6);
}

uint64_t sub_1DF5E22F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF59D2C4;

  return sub_1DF5E18E0(a1, v4, v5, v6);
}

uint64_t dispatch thunk of IsolatedCustomStringConvertible.isolatedDescription.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF5E24CC;

  return v7(a1, a2);
}

uint64_t sub_1DF5E24CC(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t BinaryDecoder.decode<A>(_:from:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for BufferedData();
  v9 = swift_allocObject();
  v9[3] = a3;
  v9[4] = 0;
  v9[2] = a2;
  sub_1DF5A3A94(a2, a3);
  v12[3] = &type metadata for _BinaryDecoder;
  v12[4] = &off_1F5A94D08;
  v12[0] = v9;
  v12[1] = 0;
  v10 = *(a5 + 8);

  v10(v12, a4, a5);
}

uint64_t BinaryDecoder.decode<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a2;
  v8[1] = 0;
  v8[3] = &type metadata for _BinaryDecoder;
  v6 = *(a4 + 8);

  return v6(v8, a3, a4);
}

{

  v7 = sub_1DF5C30E4(a2);
  v9 = v8;

  type metadata accessor for BufferedData();
  v10 = swift_allocObject();
  v10[3] = v9;
  v10[4] = 0;
  v10[2] = v7;
  v13[3] = &type metadata for _BinaryDecoder;
  v13[4] = &off_1F5A94D08;
  v13[0] = v10;
  v13[1] = 0;
  v11 = *(a4 + 8);

  v11(v13, a3, a4);
}

uint64_t sub_1DF5E281C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for BinaryDecodingContainer();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  a1[3] = v4;
  a1[4] = &off_1F5A94CD0;
  *a1 = v5;
}

BOOL sub_1DF5E2888()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v5 = v1 + 24;
  v4 = *(v1 + 24);
  v3 = *(v5 + 8);
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v2 = 0;
      return v3 == v2;
    }

    v9 = v2 + 16;
    v7 = *(v2 + 16);
    v8 = *(v9 + 8);
    v10 = __OFSUB__(v8, v7);
    v2 = v8 - v7;
    if (!v10)
    {
      return v3 == v2;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v2 = BYTE6(v4);
    return v3 == v2;
  }

  v10 = __OFSUB__(HIDWORD(v2), v2);
  LODWORD(v2) = HIDWORD(v2) - v2;
  if (!v10)
  {
    v2 = v2;
    return v3 == v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF5E28EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = sub_1DF63368C();
  v7 = v6 / 8;
  v8 = *(v3 + 16);
  v9 = *(v8 + 32);

  result = sub_1DF5FA238(v6 / 8, v9);
  if (v5)
  {
  }

  v12 = *(v8 + 32);
  v13 = __OFADD__(v12, v7);
  v14 = v12 + v7;
  if (v13)
  {
    __break(1u);
    goto LABEL_18;
  }

  v15 = result;
  v16 = v11;
  *(v8 + 32) = v14;

  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 != 2)
    {
      if (v6 > 7)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }

    v19 = *(v15 + 16);
    v18 = *(v15 + 24);
    v13 = __OFSUB__(v18, v19);
    v20 = v18 - v19;
    if (!v13)
    {
      if (v20 < v7)
      {
        goto LABEL_11;
      }

LABEL_16:
      MEMORY[0x1EEE9AC00](result);
      sub_1DF6323AC();
      return sub_1DF5B33C0(v15, v16);
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v17)
  {
    if (BYTE6(v16) >= v7)
    {
      goto LABEL_16;
    }

LABEL_11:
    sub_1DF5E3264();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    return sub_1DF5B33C0(v15, v16);
  }

  if (!__OFSUB__(HIDWORD(v15), v15))
  {
    if (HIDWORD(v15) - v15 >= v7)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1DF5E2AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_1DF63399C();
  sub_1DF63392C();
  v13 = a1;
  v14 = a2;
  return sub_1DF5C0858(a5, sub_1DF5E32D4, v12, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v10);
}

uint64_t sub_1DF5E2C30(uint64_t a1)
{
  v3 = v2;
  v5 = sub_1DF632A1C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 16);
  v10 = *(v9 + 32);

  result = sub_1DF5FA238(0x7FFFFFFFFFFFFFFFLL, v10);
  if (v3)
  {

    return a1;
  }

  v13 = *(v9 + 32);
  v14 = __OFADD__(v13, 0x7FFFFFFFFFFFFFFFLL);
  v15 = v13 + 0x7FFFFFFFFFFFFFFFLL;
  if (!v14)
  {
    v16 = result;
    v17 = v12;
    *(v9 + 32) = v15;

    (*(v6 + 16))(v8, a1, v5);
    v18 = sub_1DF6329AC();
    if (v19)
    {
      a1 = v18;
    }

    else
    {
      sub_1DF5E3264();
      swift_allocError();
      *v20 = 0;
      swift_willThrow();
    }

    sub_1DF5B33C0(v16, v17);
    return a1;
  }

  __break(1u);
  return result;
}