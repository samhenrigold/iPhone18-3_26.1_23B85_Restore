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

unint64_t sub_223C3D450()
{
  result = qword_280AEBD98;
  if (!qword_280AEBD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AEBD98);
  }

  return result;
}

BOOL sub_223C3D4D8(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_223C48748();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  sub_223C3D7CC(a2, v9, isUniquelyReferenced_nonNull_native);
  *v3 = v13;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_223C3D5A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9AD8, &qword_223C4ABE8);
  result = sub_223C485A8();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v25 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = result + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_223C2D650(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v25;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_223C48748();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_223C3D7CC(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_223C3D5A8(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_223C3DA10(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = sub_223C48748();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_223C3D8D0();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_223C486B8();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_223C3D8D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9AD8, &qword_223C4ABE8);
  v2 = *v0;
  v3 = sub_223C48598();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_223C3DA10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9AD8, &qword_223C4ABE8);
  result = sub_223C485A8();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_223C48748();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12RTCReporting7SessionC0B5Error33_DEE8464164A2ABB39C97BC4641B8970CLLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_223C3DC20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223C3DC74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_223C3DCD0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
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

void OUTLINED_FUNCTION_36()
{

  JUMPOUT(0x223DF6270);
}

uint64_t OUTLINED_FUNCTION_49()
{

  return sub_223C2C4D4(v0, v1, v2, v3);
}

uint64_t sub_223C3DDB4()
{
  v15 = sub_223C481C8();
  v0 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v2 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_223C484E8();
  v3 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_223C484D8();
  MEMORY[0x28223BE20](v6);
  v7 = sub_223C481E8();
  MEMORY[0x28223BE20](v7 - 8);
  sub_223C3E5F4();
  v13[1] = "com.apple.rtcreporting";
  sub_223C481D8();
  v17 = MEMORY[0x277D84F90];
  sub_223C3E638();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9B40, &qword_223C4AD38);
  sub_223C3E690();
  sub_223C48578();
  (*(v3 + 104))(v5, *MEMORY[0x277D85268], v14);
  v8 = v15;
  (*(v0 + 104))(v2, *MEMORY[0x277D851C8], v15);
  sub_223C48508();
  (*(v0 + 8))(v2, v8);
  v9 = sub_223C484F8();
  v10 = v16;
  *(v16 + 16) = v9;
  *(v10 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9B48, &qword_223C4AD40);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v10 + 32) = v11;
  *(v10 + 40) = 2;
  return v10;
}

uint64_t sub_223C3E0C8()
{
  v0 = SecTaskCreateFromSelf(0);
  if (!v0)
  {
    if (qword_27D0B9868 != -1)
    {
      swift_once();
    }

    if (byte_27D0B9870 != 1)
    {
      return 0;
    }

    if (qword_27D0B9858 != -1)
    {
      swift_once();
    }

    v5 = sub_223C481B8();
    __swift_project_value_buffer(v5, qword_27D0BA830);
    v1 = sub_223C48198();
    v6 = sub_223C484A8();
    if (os_log_type_enabled(v1, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_223C26000, v1, v6, "unable to validate task XPC authorization", v7, 2u);
      MEMORY[0x223DF6270](v7, -1, -1);
    }

    goto LABEL_20;
  }

  v1 = v0;
  v2 = sub_223C48318();
  v3 = SecTaskCopyValueForEntitlement(v1, v2, 0);

  if (!v3)
  {
    if (qword_27D0B9868 != -1)
    {
      swift_once();
    }

    if (byte_27D0B9870 == 1)
    {
      if (qword_27D0B9858 != -1)
      {
        swift_once();
      }

      v8 = sub_223C481B8();
      __swift_project_value_buffer(v8, qword_27D0BA830);
      v9 = sub_223C48198();
      v10 = sub_223C484A8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_223C26000, v9, v10, "XPC authorization entitlement not available", v11, 2u);
        MEMORY[0x223DF6270](v11, -1, -1);
      }
    }

LABEL_20:

    return 0;
  }

  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();

    return v16;
  }

  if (qword_27D0B9868 != -1)
  {
    swift_once();
  }

  if (byte_27D0B9870 == 1)
  {
    if (qword_27D0B9858 != -1)
    {
      swift_once();
    }

    v12 = sub_223C481B8();
    __swift_project_value_buffer(v12, qword_27D0BA830);
    v13 = sub_223C48198();
    v14 = sub_223C484A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_223C26000, v13, v14, "XPC authorization entitlement is invalid", v15, 2u);
      MEMORY[0x223DF6270](v15, -1, -1);
    }
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_223C3E484()
{
  result = os_variant_has_internal_diagnostics();
  byte_27D0B9870 = result;
  return result;
}

uint64_t sub_223C3E4AC()
{
  v0 = sub_223C481B8();
  __swift_allocate_value_buffer(v0, qword_27D0BA830);
  __swift_project_value_buffer(v0, qword_27D0BA830);
  return sub_223C481A8();
}

uint64_t sub_223C3E530()
{

  return v0;
}

uint64_t sub_223C3E560()
{
  sub_223C3E530();

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

uint64_t sub_223C3E5B8()
{
  type metadata accessor for ConnectionManager();
  swift_allocObject();
  result = sub_223C3DDB4();
  qword_280AEC3A0 = result;
  return result;
}

unint64_t sub_223C3E5F4()
{
  result = qword_280AEC1A0;
  if (!qword_280AEC1A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280AEC1A0);
  }

  return result;
}

unint64_t sub_223C3E638()
{
  result = qword_280AEC1A8;
  if (!qword_280AEC1A8)
  {
    sub_223C484D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AEC1A8);
  }

  return result;
}

unint64_t sub_223C3E690()
{
  result = qword_280AEC1B8;
  if (!qword_280AEC1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B9B40, &qword_223C4AD38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AEC1B8);
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

unint64_t sub_223C3E73C(uint64_t a1, uint64_t a2)
{
  sub_223C485C8();

  MEMORY[0x223DF5570](a1, a2);
  return 0xD000000000000016;
}

void sub_223C3E828(uint64_t a1)
{
  if (qword_280AEC178 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_280AEC180;
  v2 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v2);
  os_unfair_lock_lock(v1 + 4);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t _RTCReportingS.messageLoggingBlock.getter()
{
  OUTLINED_FUNCTION_48_0();
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_41_0();
  sub_223C29A24(v0, v1);
  return OUTLINED_FUNCTION_41_0();
}

uint64_t sub_223C3E9F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_223C48328();
  v5 = v4;

  v2(v3, v5);
}

void sub_223C3EB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_223C48318();
  (*(a3 + 16))(a3, v4);
}

uint64_t _RTCReportingS.messageLoggingBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____RTCReportingS_messageLoggingBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_223C28024(v6, v7);
}

uint64_t sub_223C3EBC4@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____RTCReportingS_messageLoggingBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_223C45188;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_223C29A24(v4, v5);
}

uint64_t sub_223C3EC64(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_223C45150;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____RTCReportingS_messageLoggingBlock);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_223C29A24(v3, v4);
  return sub_223C28024(v8, v9);
}

uint64_t _RTCReportingS.messageSentDelegate.getter()
{
  OUTLINED_FUNCTION_48_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t _RTCReportingS.messageSentDelegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_223C3EEC8@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void (*_RTCReportingS.messageSentDelegate.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____RTCReportingS_messageSentDelegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_223C3F004;
}

void sub_223C3F004(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_223C3F084()
{
  v0 = sub_223C481B8();
  __swift_allocate_value_buffer(v0, qword_280AEC1D0);
  __swift_project_value_buffer(v0, qword_280AEC1D0);
  return sub_223C481A8();
}

uint64_t sub_223C3F104()
{
  result = os_variant_has_internal_diagnostics();
  byte_280AEC398 = result;
  return result;
}

uint64_t sub_223C3F12C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9B48, &qword_223C4AD40);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_280AEC180 = result;
  return result;
}

uint64_t sub_223C3F16C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9B48, &qword_223C4AD40);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_280AEC158 = result;
  return result;
}

uint64_t sub_223C3F1C8(char a1)
{
  if (a1)
  {
    v1 = 0xD000000000000011;
  }

  else
  {
    v1 = 0xD000000000000016;
  }

  if (a1)
  {
    v2 = "ier>,N,W,VmessageSentDelegate";
  }

  else
  {
    v2 = "invalid parameter";
  }

  v3 = v2 | 0x8000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C08, &qword_223C4AEF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223C4A900;
  *(inited + 32) = sub_223C48328();
  *(inited + 40) = v5;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = v3;
  return sub_223C48298();
}

uint64_t sub_223C3F294(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223C3F2D8(char a1)
{
  sub_223C48758();
  MEMORY[0x223DF5980](a1 & 1);
  return sub_223C48788();
}

uint64_t sub_223C3F358(uint64_t a1, char a2)
{
  sub_223C48758();
  MEMORY[0x223DF5980](a2 & 1);
  return sub_223C48788();
}

uint64_t sub_223C3F39C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_223C3F294(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_223C3F3C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_223C3F2AC(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_223C3F414(uint64_t a1, uint64_t a2)
{
  v4 = sub_223C45058();
  v5 = sub_223C450AC();

  return MEMORY[0x28211BAD0](a1, a2, v4, v5);
}

uint64_t sub_223C3F474(uint64_t a1)
{
  v2 = sub_223C45004();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_223C3F4B0(uint64_t a1)
{
  v2 = sub_223C45004();
  v3 = sub_223C45058();
  v4 = sub_223C450AC();

  return MEMORY[0x28211F498](a1, v2, v3, v4);
}

uint64_t sub_223C3F50C()
{
  os_unfair_lock_assert_owner((*(v0 + OBJC_IVAR____RTCReportingS_lock) + 16));
  v1 = OBJC_IVAR____RTCReportingS_activeTasks;
  swift_beginAccess();

  v3 = sub_223C44660(v2, sub_223C447D8, sub_223C447D8);

  *(v0 + v1) = v3;
}

void _RTCReportingS.__allocating_init(sessionInfo:userInfo:frameworksToCheck:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = OUTLINED_FUNCTION_54();
  _RTCReportingS.init(sessionInfo:userInfo:frameworksToCheck:)(v5, a2);
}

unint64_t sub_223C3F658()
{
  result = qword_280AEC0C0;
  if (!qword_280AEC0C0)
  {
    sub_223C48188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AEC0C0);
  }

  return result;
}

void sub_223C3F6B0(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4, uint64_t a5, double a6)
{
  if (a1)
  {
    v11 = sub_223C48238();
    if (a4)
    {
LABEL_3:
      v12 = sub_223C48238();
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  v13 = v12;
  (*(a5 + 16))(a5, v11, a2, a3, a6);
}

uint64_t sub_223C3F798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_223C3F7B8, 0, 0);
}

uint64_t sub_223C3F7B8()
{
  OUTLINED_FUNCTION_31();
  (*(v0 + 16))(0);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_223C3F818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A30, &unk_223C4AB88);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_223C4582C(a3, v24 - v10, &unk_27D0B9A30, &unk_223C4AB88);
  v12 = sub_223C48418();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_223C2CF0C(v11, &unk_27D0B9A30, &unk_223C4AB88);
  }

  else
  {
    sub_223C48408();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_223C483C8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_223C48348() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_223C2CF0C(a3, &unk_27D0B9A30, &unk_223C4AB88);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_223C2CF0C(a3, &unk_27D0B9A30, &unk_223C4AB88);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_223C3FAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_223C45A88, 0, 0);
}

uint64_t sub_223C3FB1C()
{
  v20 = v0;

  if (qword_280AEC1C8 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v1 = *(v0 + 368);
  v2 = sub_223C481B8();
  __swift_project_value_buffer(v2, qword_280AEC1D0);
  v3 = v1;
  v4 = sub_223C48198();
  v5 = sub_223C484A8();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_52();
    v6 = OUTLINED_FUNCTION_44_0();
    v19 = v6;
    *v1 = 136315138;
    swift_getErrorValue();
    v7 = sub_223C486F8();
    v9 = sub_223C354E8(v7, v8, &v19);

    *(v1 + 1) = v9;
    OUTLINED_FUNCTION_56(&dword_223C26000, v10, v11, "failed to configure legacy session: %s");
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_10_1();
    MEMORY[0x223DF6270]();
    v12 = OUTLINED_FUNCTION_8_1();
    MEMORY[0x223DF6270](v12);
  }

  v13 = *(v0 + 312);
  v14 = *(v0 + 368);
  if (v13)
  {

    v13(0);

    v15 = OUTLINED_FUNCTION_30_0();
    sub_223C28024(v15, v16);
  }

  else
  {
  }

  OUTLINED_FUNCTION_20_0();

  return v17();
}

uint64_t sub_223C3FCCC()
{
  v18 = v0;

  if (qword_280AEC1C8 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = sub_223C481B8();
  __swift_project_value_buffer(v2, qword_280AEC1D0);
  v3 = v1;
  v4 = sub_223C48198();
  v5 = sub_223C484A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 128);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_52();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_223C486F8();
    v12 = sub_223C354E8(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_223C26000, v4, v5, "error sending deferred-from-unconfigured events: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_10_1();
    MEMORY[0x223DF6270](v13);
    OUTLINED_FUNCTION_10_1();
    MEMORY[0x223DF6270](v14);
  }

  else
  {
  }

  OUTLINED_FUNCTION_20_0();

  return v15();
}

uint64_t sub_223C3FE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A30, &unk_223C4AB88);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_223C4582C(a3, v24 - v10, &unk_27D0B9A30, &unk_223C4AB88);
  v12 = sub_223C48418();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_223C2CF0C(v11, &unk_27D0B9A30, &unk_223C4AB88);
  }

  else
  {
    sub_223C48408();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_223C483C8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_223C48348() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t _RTCReportingS.fetchReportingStates(userInfo:fetchComplete:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *&v3[OBJC_IVAR____RTCReportingS_lock];
  os_unfair_lock_lock(v7 + 4);
  sub_223C2A5BC(v8, &v25);
  os_unfair_lock_unlock(v7 + 4);
  v10 = v25;
  if (!*(v25 + 16))
  {

    v17 = swift_allocObject();
    v17[2] = a2;
    v17[3] = a3;
    v17[4] = v3;
    v18 = OUTLINED_FUNCTION_31_0();
    sub_223C29A24(v18, v19);
    v20 = v3;
    _RTCReportingS.startConfiguration(completionHandler:)(sub_223C44D40, v17);
  }

  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_38_0();
  *(v11 - 32) = v10;
  *(v11 - 24) = v3;
  *(v11 - 16) = ObjectType;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v14 = OUTLINED_FUNCTION_29_1(v13);
  os_unfair_lock_lock(v14);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v7 + 4);

  if (!a2)
  {
    return result;
  }

  if (*&v3[OBJC_IVAR____RTCReportingS_session])
  {
    if (v3[OBJC_IVAR____RTCReportingS_completelyDisabled] != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BE0, &unk_223C4AD80);
      v21 = swift_allocObject();
      v22 = MEMORY[0x277D837D0];
      *(v21 + 16) = xmmword_223C4A900;
      *(v21 + 56) = v22;
      *(v21 + 32) = 120;
      *(v21 + 40) = 0xE100000000000000;

      a2(v21);

      goto LABEL_10;
    }

    v16 = 0;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  a2(v16);
LABEL_10:
  v23 = OUTLINED_FUNCTION_31_0();
  return sub_223C28024(v23, v24);
}

uint64_t sub_223C40368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = OBJC_IVAR____RTCReportingS_userInfo;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a2;
  *a3 = v7;
}

void sub_223C403E0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return;
  }

  if (*(a4 + OBJC_IVAR____RTCReportingS_session))
  {
    if (*(a4 + OBJC_IVAR____RTCReportingS_completelyDisabled) != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BE0, &unk_223C4AD80);
      v7 = swift_allocObject();
      v8 = MEMORY[0x277D837D0];
      *(v7 + 16) = xmmword_223C4A900;
      *(v7 + 56) = v8;
      *(v7 + 32) = 120;
      *(v7 + 40) = 0xE100000000000000;

      a2(v7);

      goto LABEL_9;
    }

    v6 = 0;
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  a2(v6);
LABEL_9:

  sub_223C28024(a2, a3);
}

uint64_t sub_223C404E0(uint64_t a1, char *a2)
{
  sub_223C2C00C(a1, &v8);
  if (v9)
  {
    if (swift_dynamicCast())
    {
      v4 = OBJC_IVAR____RTCReportingS_userInfo;
      swift_beginAccess();
      sub_223C2C00C(*&a2[v4], &v8);
      swift_endAccess();
      if (v9)
      {
        if (swift_dynamicCast())
        {
        }
      }

      else
      {

        sub_223C2CF0C(&v8, &qword_27D0B99E8, &qword_223C4A8A0);
      }
    }
  }

  else
  {
    sub_223C2CF0C(&v8, &qword_27D0B99E8, &qword_223C4A8A0);
  }

  sub_223C2C00C(a1, &v8);
  if (v9)
  {
    if (swift_dynamicCast())
    {
      v5 = OBJC_IVAR____RTCReportingS_userInfo;
      swift_beginAccess();
      sub_223C2C00C(*&a2[v5], &v8);
      swift_endAccess();
      if (v9)
      {
        if (swift_dynamicCast())
        {
        }
      }

      else
      {

        sub_223C2CF0C(&v8, &qword_27D0B99E8, &qword_223C4A8A0);
      }
    }
  }

  else
  {
    sub_223C2CF0C(&v8, &qword_27D0B99E8, &qword_223C4A8A0);
  }

  swift_beginAccess();

  sub_223C2D120(v6);
}

uint64_t sub_223C40B20(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C28, &unk_223C4AF80);
    v2 = sub_223C48648();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_223C2C0BC(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_223C2A050(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_223C2A050(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_223C2A050(v31, v32);
    result = sub_223C48588();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_223C2A050(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_223C40DE4()
{
  OUTLINED_FUNCTION_20_1();
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____RTCReportingS_lock;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_32_0(v3);
  OUTLINED_FUNCTION_19_1(v4);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v2 + 4);

  if (!v1)
  {

    OUTLINED_FUNCTION_20_0();

    return v6();
  }

  return result;
}

uint64_t sub_223C40E9C()
{
  v24 = v0;
  if (qword_280AEC1C8 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_223C481B8();
  __swift_project_value_buffer(v2, qword_280AEC1D0);
  v3 = v1;
  v4 = sub_223C48198();
  v5 = sub_223C484A8();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_52();
    v6 = OUTLINED_FUNCTION_44_0();
    v23 = v6;
    *v1 = 136446210;
    swift_getErrorValue();
    v7 = sub_223C486F8();
    v9 = sub_223C354E8(v7, v8, &v23);

    *(v1 + 1) = v9;
    OUTLINED_FUNCTION_56(&dword_223C26000, v10, v11, "failed to send legacy message: %{public}s");
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_10_1();
    MEMORY[0x223DF6270](v12);
    v13 = OUTLINED_FUNCTION_8_1();
    MEMORY[0x223DF6270](v13);
  }

  v14 = *(v0 + 64);
  v15 = *(v14 + OBJC_IVAR____RTCReportingS_lock);
  v16 = swift_task_alloc();
  *(v16 + 16) = v14;
  v17 = swift_task_alloc();
  *(v17 + 16) = sub_223C45670;
  *(v17 + 24) = v16;
  os_unfair_lock_lock(v15 + 4);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v15 + 4);

  v18 = OBJC_IVAR____RTCReportingS_lock;
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_32_0(v19);
  OUTLINED_FUNCTION_19_1(v20);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v18 + 4);

  OUTLINED_FUNCTION_20_0();

  return v21();
}

void sub_223C410CC(char *a1, uint64_t a2)
{
  v3 = OBJC_IVAR____RTCReportingS_activeTasks;
  swift_beginAccess();
  sub_223C442CC();
  swift_endAccess();

  if (qword_280AEC1C8 != -1)
  {
    swift_once();
  }

  v4 = sub_223C481B8();
  __swift_project_value_buffer(v4, qword_280AEC1D0);
  v5 = a1;
  v6 = sub_223C48198();
  v7 = sub_223C48488();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(*&a1[v3] + 16);

    _os_log_impl(&dword_223C26000, v6, v7, "Total active tasks after sendMessage finished:%ld", v8, 0xCu);
    MEMORY[0x223DF6270](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }
}

void _RTCReportingS.flushMessages(completion:)()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____RTCReportingS_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_223C412B8(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A30, &unk_223C4AB88);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = *(a1 + OBJC_IVAR____RTCReportingS_session);
  if (v9)
  {
    if (*(a1 + OBJC_IVAR____RTCReportingS_completelyDisabled))
    {
      if (!a2)
      {
        return;
      }

      sub_223C29A24(a2, a3);
      (a2)(0);

      goto LABEL_11;
    }

    if (a2)
    {

      sub_223C29A24(a2, a3);
      sub_223C483F8();
      v17 = sub_223C48418();
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v17);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v9;
      v18[5] = a2;
      v18[6] = a3;

      sub_223C29A24(a2, a3);
      sub_223C3FE74(0, 0, v8, &unk_223C4AF78, v18);

      sub_223C28024(a2, a3);

      sub_223C2CF0C(v8, &unk_27D0B9A30, &unk_223C4AB88);
    }
  }

  else
  {
    if (qword_280AEC1C8 != -1)
    {
      swift_once();
    }

    v10 = sub_223C481B8();
    __swift_project_value_buffer(v10, qword_280AEC1D0);
    v11 = sub_223C48198();
    v12 = sub_223C484A8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_223C26000, v11, v12, "attempted to flush unconfigured session", v13, 2u);
      MEMORY[0x223DF6270](v13, -1, -1);
    }

    if (a2)
    {
      sub_223C44D4C();
      v14 = swift_allocError();
      *v15 = 1;

      v16 = sub_223C48048();
      a2();

LABEL_11:
      sub_223C28024(a2, a3);
    }
  }
}

uint64_t sub_223C41588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_223C415AC, 0, 0);
}

uint64_t sub_223C415AC()
{
  OUTLINED_FUNCTION_31();

  v0 = OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v0, v1, 0);
}

uint64_t sub_223C41614()
{
  OUTLINED_FUNCTION_31();
  sub_223C3C9A8(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  OUTLINED_FUNCTION_20_0();

  return v1();
}

void static _RTCReportingS.sendOneMessage(sessionInfo:userInfo:category:type:payload:)(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);

  _RTCReportingS.init(sessionInfo:userInfo:frameworksToCheck:)(a1, a2);
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 18) = a4;
    *(v14 + 24) = a5;
    *(v14 + 32) = v13;

    v15 = v13;
    _RTCReportingS.startConfiguration(completionHandler:)(sub_223C44DBC, v14);
  }

  else
  {
    if (qword_280AEC1C8 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v16 = sub_223C481B8();
    __swift_project_value_buffer(v16, qword_280AEC1D0);
    v17 = sub_223C48198();
    sub_223C484A8();
    v18 = OUTLINED_FUNCTION_46_0();
    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_45_0();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_47_0();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      v25 = OUTLINED_FUNCTION_8_1();
      MEMORY[0x223DF6270](v25);
    }
  }
}

void sub_223C4192C(uint64_t a1, Swift::UInt16 category, Swift::UInt16 type, Swift::OpaquePointer_optional payload)
{
  if (a1)
  {
    v7 = v6;
    _RTCReportingS.sendMessage(category:type:payload:)(category, type, *(&v6 - 1));
    if (v8)
    {
      if (qword_280AEC1C8 != -1)
      {
        swift_once();
      }

      v9 = sub_223C481B8();
      __swift_project_value_buffer(v9, qword_280AEC1D0);
      v10 = v8;
      v11 = sub_223C48198();
      v12 = sub_223C484A8();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v18 = v14;
        *v13 = 136446210;
        swift_getErrorValue();
        v15 = sub_223C486F8();
        v17 = sub_223C354E8(v15, v16, &v18);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_223C26000, v11, v12, "sendOneMessage failed: %{public}s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x223DF6270](v14, -1, -1);
        MEMORY[0x223DF6270](v13, -1, -1);
      }

      else
      {
      }
    }
  }
}

Swift::Void __swiftcall _RTCReportingS.updateSharedData(dictionary:)(Swift::OpaquePointer dictionary)
{
  if (qword_280AEC1C8 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v1 = sub_223C481B8();
  __swift_project_value_buffer(v1, qword_280AEC1D0);
  oslog = sub_223C48198();
  v2 = sub_223C484B8();
  if (os_log_type_enabled(oslog, v2))
  {
    OUTLINED_FUNCTION_45_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_61(&dword_223C26000, v3, v4, "updateSharedData is deprecated", v5, v6, v7, v8, v9, oslog);
    OUTLINED_FUNCTION_10_1();
    MEMORY[0x223DF6270]();
  }
}

Swift::Void __swiftcall _RTCReportingS.updateSharedData(key:value:)(Swift::String key, NSObject value)
{
  if (qword_280AEC1C8 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v2 = sub_223C481B8();
  __swift_project_value_buffer(v2, qword_280AEC1D0);
  oslog = sub_223C48198();
  v3 = sub_223C484B8();
  if (os_log_type_enabled(oslog, v3))
  {
    OUTLINED_FUNCTION_45_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_61(&dword_223C26000, v4, v5, "updateSharedData is deprecated", v6, v7, v8, v9, v10, oslog);
    OUTLINED_FUNCTION_10_1();
    MEMORY[0x223DF6270]();
  }
}

void sub_223C41F50()
{
  v1 = *(v0 + OBJC_IVAR____RTCReportingS_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_223C41FC0(char *a1)
{
  v1 = OBJC_IVAR____RTCReportingS_deprecatedPeriodic;
  if (!*&a1[OBJC_IVAR____RTCReportingS_deprecatedPeriodic])
  {
    v7[3] = swift_getObjectType();
    v7[0] = a1;
    v3 = objc_allocWithZone(RTCReportingAVCDeprecatedPeriodic);
    v4 = a1;
    v5 = sub_223C43D54(v7);
    v6 = *&a1[v1];
    *&a1[v1] = v5;
  }
}

Swift::Void __swiftcall _RTCReportingS.startLogTimer(interval:reportingMultiplier:category:type:)(Swift::Int32 interval, Swift::Int32 reportingMultiplier, Swift::UInt16 category, Swift::UInt16 type)
{
  v7 = *&reportingMultiplier;
  v8 = *&interval;
  sub_223C41F50();
  v9 = *(v4 + OBJC_IVAR____RTCReportingS_deprecatedPeriodic);
  if (v9)
  {

    [v9 startLogTimerWithInterval:v8 reportingMultiplier:v7 category:category type:type];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall _RTCReportingS.stopLogTimer()()
{
  sub_223C41F50();
  v1 = *(v0 + OBJC_IVAR____RTCReportingS_deprecatedPeriodic);
  if (v1)
  {

    [v1 stopLogTimer];
  }

  else
  {
    __break(1u);
  }
}

void _RTCReportingS.registerPeriodicTask(module:needToUpdate:needToReport:serviceBlock:)(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_223C41F50();
  v11 = *(v5 + OBJC_IVAR____RTCReportingS_deprecatedPeriodic);
  if (v11)
  {
    v14[4] = a4;
    v14[5] = a5;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_223C422C4;
    v14[3] = &block_descriptor_0;
    v12 = _Block_copy(v14);
    v13 = v11;

    [v13 registerPeriodicTaskForModule:a1 needToUpdate:a2 & 1 needToReport:a3 & 1 serviceBlock:v12];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_223C422C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

Swift::Void __swiftcall _RTCReportingS.unregisterPeriodicTask(module:)(Swift::UInt32 module)
{
  v2 = *&module;
  sub_223C41F50();
  v3 = *(v1 + OBJC_IVAR____RTCReportingS_deprecatedPeriodic);
  if (v3)
  {

    [v3 unregisterPeriodTaskForModule_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t _s12RTCReporting01_A1SC10uploadFile3URL17completionHandlerSbSo5NSURLC_ySb_So7NSErrorCSgtcSgtF_0(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  if (a2)
  {

    a2(0, 0);
    v4 = OUTLINED_FUNCTION_30_0();
    sub_223C28024(v4, v5);
  }

  return 0;
}

uint64_t _RTCReportingS.terminateSession(completion:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_223C48218();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  sub_223C48208();
  if (qword_280AEC1C8 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v9 = sub_223C481B8();
  __swift_project_value_buffer(v9, qword_280AEC1D0);
  v10 = v2;
  v11 = sub_223C48198();
  v12 = sub_223C484C8();

  if (os_log_type_enabled(v11, v12))
  {
    v27 = a1;
    v28 = a2;
    v13 = OUTLINED_FUNCTION_52();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v13 = 136315138;
    if (*&v10[OBJC_IVAR____RTCReportingS_generatedSessionID + 8])
    {
      v15 = *&v10[OBJC_IVAR____RTCReportingS_generatedSessionID];
      v16 = *&v10[OBJC_IVAR____RTCReportingS_generatedSessionID + 8];
    }

    else
    {
      v16 = 0xE100000000000000;
      v15 = 63;
    }

    v18 = sub_223C354E8(v15, v16, &v30);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_223C26000, v11, v12, "terminateSession called for: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_10_1();
    MEMORY[0x223DF6270]();
    OUTLINED_FUNCTION_10_1();
    MEMORY[0x223DF6270]();

    a1 = v27;
    a2 = v28;
  }

  else
  {
  }

  v19 = *&v10[OBJC_IVAR____RTCReportingS_lock];
  v20 = MEMORY[0x28223BE20](v17);
  *(&v26 - 6) = v10;
  *(&v26 - 5) = a1;
  *(&v26 - 4) = a2;
  *(&v26 - 3) = v8;
  *(&v26 - 2) = ObjectType;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_1();
  v22 = OUTLINED_FUNCTION_29_1(v21);
  os_unfair_lock_lock(v22);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v19 + 4);
  v23 = OUTLINED_FUNCTION_31_0();
  return v24(v23);
}

void sub_223C428EC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a4;
  v10 = sub_223C48218();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A30, &unk_223C4AB88);
  MEMORY[0x28223BE20](v13 - 8);
  v51 = &v45 - v14;
  if (a1[OBJC_IVAR____RTCReportingS_terminated])
  {
    v15 = a2;
    v16 = a3;
    if (qword_280AEC1C8 != -1)
    {
      swift_once();
    }

    v17 = sub_223C481B8();
    __swift_project_value_buffer(v17, qword_280AEC1D0);
    v18 = a1;
    v19 = sub_223C48198();
    v20 = sub_223C484A8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v50[0] = v22;
      *v21 = 136315138;
      if (*&v18[OBJC_IVAR____RTCReportingS_generatedSessionID + 8])
      {
        v23 = *&v18[OBJC_IVAR____RTCReportingS_generatedSessionID];
        v24 = *&v18[OBJC_IVAR____RTCReportingS_generatedSessionID + 8];
      }

      else
      {
        v24 = 0xE100000000000000;
        v23 = 63;
      }

      v42 = sub_223C354E8(v23, v24, v50);

      *(v21 + 4) = v42;
      _os_log_impl(&dword_223C26000, v19, v20, "attempted to terminate already-ended session %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x223DF6270](v22, -1, -1);
      MEMORY[0x223DF6270](v21, -1, -1);

      if (v15)
      {
        goto LABEL_19;
      }
    }

    else
    {

      if (v15)
      {
LABEL_19:

        v33 = v51;
        sub_223C483F8();
        v43 = sub_223C48418();
        __swift_storeEnumTagSinglePayload(v33, 0, 1, v43);
        v44 = swift_allocObject();
        v44[2] = 0;
        v44[3] = 0;
        v44[4] = v15;
        v44[5] = v16;

        sub_223C3FE74(0, 0, v33, &unk_223C4AF58, v44);

        v40 = v15;
        v41 = v16;
        goto LABEL_20;
      }
    }
  }

  else
  {
    v48 = v5;
    v25 = *&a1[OBJC_IVAR____RTCReportingS_session];
    if (v25)
    {
      a1[OBJC_IVAR____RTCReportingS_terminated] = 1;

      v47 = a5;
      sub_223C359A8(v26);
      sub_223C3F50C();
      swift_beginAccess();

      v46 = sub_223C42F8C(v27);
      v28 = v51;
      sub_223C483F8();
      v29 = sub_223C48418();
      __swift_storeEnumTagSinglePayload(v28, 0, 1, v29);
      (*(v11 + 16))(&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v49, v10);
      v30 = a3;
      v31 = (*(v11 + 80) + 64) & ~*(v11 + 80);
      v32 = swift_allocObject();
      *(v32 + 2) = 0;
      *(v32 + 3) = 0;
      *(v32 + 4) = v46;
      *(v32 + 5) = v25;
      *(v32 + 6) = a2;
      *(v32 + 7) = v30;
      (*(v11 + 32))(&v32[v31], &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      *&v32[(v12 + v31 + 7) & 0xFFFFFFFFFFFFFFF8] = v47;

      v33 = v51;
      sub_223C29A24(a2, v30);
      sub_223C3FE74(0, 0, v33, &unk_223C4AF48, v32);

LABEL_21:
      sub_223C2CF0C(v33, &unk_27D0B9A30, &unk_223C4AB88);
      return;
    }

    if (qword_280AEC1C8 != -1)
    {
      swift_once();
    }

    v34 = sub_223C481B8();
    __swift_project_value_buffer(v34, qword_280AEC1D0);
    v35 = sub_223C48198();
    v36 = sub_223C484A8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_223C26000, v35, v36, "attempted to terminate session that never started", v37, 2u);
      MEMORY[0x223DF6270](v37, -1, -1);
    }

    if (a2)
    {

      v33 = v51;
      sub_223C483F8();
      v38 = sub_223C48418();
      __swift_storeEnumTagSinglePayload(v33, 0, 1, v38);
      v39 = swift_allocObject();
      v39[2] = 0;
      v39[3] = 0;
      v39[4] = a2;
      v39[5] = a3;

      sub_223C3FE74(0, 0, v33, &unk_223C4AF38, v39);

      v40 = a2;
      v41 = a3;
LABEL_20:
      sub_223C28024(v40, v41);
      goto LABEL_21;
    }
  }
}

uint64_t sub_223C42EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_223C45A8C, 0, 0);
}

uint64_t sub_223C42F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_223C42F30, 0, 0);
}

uint64_t sub_223C42F30()
{
  OUTLINED_FUNCTION_31();
  (*(v0 + 16))();
  OUTLINED_FUNCTION_20_0();

  return v1();
}

void *sub_223C42F8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_223C43FA8(*(a1 + 16), 0);
  v4 = sub_223C45414(&v6, v3 + 4, v2, a1);
  sub_223C4556C(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_223C4301C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_223C48218();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223C430E8, 0, 0);
}

uint64_t sub_223C430E8()
{
  OUTLINED_FUNCTION_19();
  if (qword_280AEC1C8 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v1 = sub_223C481B8();
  v0[10] = __swift_project_value_buffer(v1, qword_280AEC1D0);

  v2 = sub_223C48198();
  sub_223C48488();
  v3 = OUTLINED_FUNCTION_46_0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[2];
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_52();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    OUTLINED_FUNCTION_47_0();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    v13 = OUTLINED_FUNCTION_8_1();
    MEMORY[0x223DF6270](v13);
  }

  else
  {
  }

  v14 = v0[2];
  v15 = *(v14 + 16);
  v0[11] = v15;
  if (v15)
  {
    v0[12] = 0;
    v16 = *(v14 + 32);
    v0[13] = v16;

    v17 = swift_task_alloc();
    v0[14] = v17;
    *v17 = v0;
    v18 = OUTLINED_FUNCTION_17_0(v17);
    v19 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200460](v18, v16, v19);
  }

  else
  {
    v20 = swift_task_alloc();
    v21 = OUTLINED_FUNCTION_55(v20);
    *v21 = v22;
    OUTLINED_FUNCTION_16_1(v21);

    return sub_223C35E20();
  }
}

uint64_t sub_223C432B0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_35_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_223C43394()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[12];
  v2 = v0[11];

  if (v1 + 1 == v2)
  {
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_55(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_16_1(v4);

    return sub_223C35E20();
  }

  else
  {
    v7 = v0[12] + 1;
    v0[12] = v7;
    v8 = *(v0[2] + 8 * v7 + 32);
    v0[13] = v8;

    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v10 = OUTLINED_FUNCTION_17_0(v9);
    v11 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200460](v10, v8, v11);
  }
}

uint64_t sub_223C4349C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_35_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

unint64_t sub_223C43580()
{
  OUTLINED_FUNCTION_20_1();
  v1 = v0[4];
  if (v1)
  {
    v3 = v0[8];
    v2 = v0[9];
    v4 = v0[7];

    v1();
    sub_223C48208();
    v5 = sub_223C481F8();
    (*(v3 + 8))(v2, v4);
    result = sub_223C481F8();
    v7 = v5 - result;
    if (v5 < result)
    {
      __break(1u);
      return result;
    }

    v8 = sub_223C48198();
    v9 = sub_223C484C8();
    v10 = OUTLINED_FUNCTION_46_0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_52();
      *v12 = 134217984;
      *(v12 + 4) = v7 / 0xF4240;
      _os_log_impl(&dword_223C26000, v8, v9, "Time taken to finish terminateSession: %llu ms", v12, 0xCu);
      OUTLINED_FUNCTION_10_1();
      MEMORY[0x223DF6270]();
    }

    sub_223C28024(v0[4], v0[5]);
  }

  OUTLINED_FUNCTION_20_0();

  return v13();
}

void static _RTCReportingS.updateEarlyCacheLimit(newLimit:)(uint64_t a1)
{
  v2 = a1;
  if (qword_280AEC150 != -1)
  {
    OUTLINED_FUNCTION_18_1();
    a1 = swift_once();
  }

  v3 = qword_280AEC158;
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_38_0();
  *(v4 - 32) = v2;
  *(v4 - 24) = v1;
  *(v4 - 16) = v1;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  *(v6 - 16) = sub_223C44DEC;
  *(v6 - 8) = v7;
  os_unfair_lock_lock(v3 + 4);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v3 + 4);
}

void sub_223C43844(uint64_t a1)
{
  qword_27D0B9860 = a1;
  if (qword_280AEC1C8 != -1)
  {
    swift_once();
  }

  v1 = sub_223C481B8();
  __swift_project_value_buffer(v1, qword_280AEC1D0);
  v2 = sub_223C48198();
  v3 = sub_223C48498();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = qword_27D0B9860;
    _os_log_impl(&dword_223C26000, v2, v3, "updating eventCache limit to %ld based on client request", v4, 0xCu);
    MEMORY[0x223DF6270](v4, -1, -1);
  }
}

id static _RTCReportingS._privacyLogs()()
{
  v19[1] = *MEMORY[0x277D85DE8];
  sub_223C480C8();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v4);
  v5 = sub_223C48318();
  v6 = NSHomeDirectoryForUser(v5);

  if (v6)
  {
    sub_223C48328();
  }

  sub_223C48088();

  sub_223C480A8();
  v7 = *(v2 + 8);
  v8 = OUTLINED_FUNCTION_41_0();
  v7(v8);
  v9 = sub_223C480B8();
  if (v0)
  {

LABEL_8:
    v14 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = [objc_opt_self() defaultManager];
  v11 = sub_223C48098();
  v19[0] = 0;
  v12 = [v10 contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:0 options:0 error:v19];

  v13 = v19[0];
  if (!v12)
  {
    v14 = v19[0];
    sub_223C48058();

    swift_willThrow();
    v18 = OUTLINED_FUNCTION_31_0();
    v7(v18);
    return v14;
  }

  v14 = sub_223C483A8();
  v15 = v13;

LABEL_9:
  v16 = OUTLINED_FUNCTION_31_0();
  v7(v16);
  return v14;
}

id _RTCReportingS.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_223C43D54(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = [v1 initWithSession_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

void *sub_223C43DC0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_223C43EAC(v8, v7);
  v10 = *(type metadata accessor for EventValue(0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_223C44024(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_223C43EAC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C58, &qword_223C4AFD8);
  v4 = *(type metadata accessor for EventValue(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_223C43FA8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C18, &qword_223C4AF60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 8);
  return v4;
}

uint64_t sub_223C44024(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for EventValue(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for EventValue(0);

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_223C440F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_223C29FE0();
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v25 = *v2;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
    v9 = OUTLINED_FUNCTION_58(v8);
    OUTLINED_FUNCTION_57(v9, v10, v11, v12, v13, v14, v15, v16, v24, v25);
    v17 = *(v4 + 56);
    v18 = type metadata accessor for EventValue(0);
    OUTLINED_FUNCTION_3_0();
    sub_223C2D02C(v17 + *(v19 + 72) * v7, a1);
    sub_223C48618();
    *v2 = v4;
    v20 = a1;
    v21 = 0;
    v22 = v18;
  }

  else
  {
    v22 = type metadata accessor for EventValue(0);
    v20 = a1;
    v21 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
}

double sub_223C44204@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_223C29FE0();
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BE8, &qword_223C4AD90);
    v9 = OUTLINED_FUNCTION_58(v8);
    OUTLINED_FUNCTION_57(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19);
    sub_223C2A050((*(v4 + 56) + 32 * v7), a1);
    sub_223C48618();
    *v2 = v4;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_223C442CC()
{
  v1 = v0;
  v2 = sub_223C3BA30();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C38, &qword_223C4AFB8);
  sub_223C485F8();
  v5 = *(v9 + 48);
  v6 = sub_223C48188();
  (*(*(v6 - 8) + 8))(v5 + *(*(v6 - 8) + 72) * v4, v6);
  v7 = *(*(v9 + 56) + 8 * v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BC8, &qword_223C4AD78);
  sub_223C3F658();
  sub_223C48618();
  *v1 = v9;
  return v7;
}

uint64_t sub_223C443E8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_223C48188();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = sub_223C3BA30();
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C38, &qword_223C4AFB8);
  if ((sub_223C485F8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_223C3BA30();
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_223C486C8();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    *(v18[7] + 8 * v14) = a1;
  }

  else
  {
    (*(v8 + 16))(v10, a2, v7);
    return sub_223C445A8(v14, v10, a1, v18);
  }
}

uint64_t sub_223C445A8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_223C48188();
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

void *sub_223C44660(_BYTE *a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a1[32];
  v7 = ((1 << v6) + 63) >> 6;
  v8 = 8 * v7;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      v5 = sub_223C44914(v12, v7, v5, a3);
      OUTLINED_FUNCTION_10_1();
      MEMORY[0x223DF6270]();
      return v5;
    }
  }

  MEMORY[0x28223BE20](a1);
  sub_223C2D650(0, v7, v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  v9 = a2(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, v5);
  if (!v3)
  {
    return v9;
  }

  swift_willThrow();
  return v5;
}

unint64_t *sub_223C447D8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v18 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
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
LABEL_11:
    v14 = v11 | (v5 << 6);

    isCancelled = swift_task_isCancelled();

    if ((isCancelled & 1) == 0)
    {
      *(v18 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_223C4499C(v18, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_223C4499C(v18, a2, v4, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_223C44914(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4(v7, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_223C4499C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a1;
  v46 = sub_223C48188();
  v7 = *(v46 - 8);
  v8 = MEMORY[0x28223BE20](v46);
  v45 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v39 = &v33 - v10;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C20, &qword_223C4AF68);
  result = sub_223C48648();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v38;
  }

  v14 = 0;
  v35 = v7 + 16;
  v36 = result;
  v44 = v7 + 32;
  v15 = result + 64;
  v34 = a4;
  v37 = v7;
  v16 = v46;
  while (v13)
  {
    v17 = __clz(__rbit64(v13));
    v40 = (v13 - 1) & v13;
LABEL_16:
    v20 = v17 | (v14 << 6);
    v21 = a4[6];
    v43 = *(v7 + 72);
    v22 = v39;
    (*(v7 + 16))(v39, v21 + v43 * v20, v16);
    v23 = *(a4[7] + 8 * v20);
    v41 = *(v7 + 32);
    v41(v45, v22, v16);
    v12 = v36;
    sub_223C3F658();
    v42 = v23;

    result = sub_223C482C8();
    v24 = -1 << *(v12 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      v7 = v37;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v15 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    v7 = v37;
LABEL_25:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = (v41)(*(v12 + 48) + v27 * v43, v45, v46);
    *(*(v12 + 56) + 8 * v27) = v42;
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v34;
    v13 = v40;
    if (!a3)
    {
      return v12;
    }
  }

  v18 = v14;
  while (1)
  {
    v14 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v19 = v38[v14];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v40 = (v19 - 1) & v19;
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

unint64_t sub_223C44D4C()
{
  result = qword_280AEBDB0;
  if (!qword_280AEBDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AEBDB0);
  }

  return result;
}

void sub_223C44DBC(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_223C4192C(a1, *(v1 + 16), *(v1 + 18), *&v2);
}

uint64_t getEnumTagSinglePayload for _RTCReportingS.Error(unsigned __int8 *a1, unsigned int a2)
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
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for _RTCReportingS.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223C44FB0()
{
  result = qword_27D0B9C00;
  if (!qword_27D0B9C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B9C00);
  }

  return result;
}

unint64_t sub_223C45004()
{
  result = qword_280AEBDA8;
  if (!qword_280AEBDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AEBDA8);
  }

  return result;
}

unint64_t sub_223C45058()
{
  result = qword_280AEBDA0;
  if (!qword_280AEBDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AEBDA0);
  }

  return result;
}

unint64_t sub_223C450AC()
{
  result = qword_280AEBD88;
  if (!qword_280AEBD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AEBD88);
  }

  return result;
}

uint64_t sub_223C45150(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t sub_223C451B8()
{
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_13_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_2(v2);

  return sub_223C42F10(v4, v5, v6, v7, v0);
}

uint64_t sub_223C45250()
{
  v3 = sub_223C48218();
  OUTLINED_FUNCTION_26(v3);
  OUTLINED_FUNCTION_42_0();
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_223C34944;
  OUTLINED_FUNCTION_2_2();

  return sub_223C4301C(v7, v8, v9, v10, v2, v4, v5, v11);
}

uint64_t sub_223C4537C()
{
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_13_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_2(v2);

  return sub_223C42EF0(v4, v5, v6, v7, v0);
}

void *sub_223C45414(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      ++v11;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_223C455D4()
{
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_52_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_2(v3);

  return sub_223C41588(v5, v6, v7, v8, v1, v0);
}

unint64_t sub_223C456A8()
{
  result = qword_27D0B9850;
  if (!qword_27D0B9850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B9850);
  }

  return result;
}

uint64_t sub_223C456FC()
{
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_13_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_2(v2);

  return sub_223C3F798(v4, v5, v6, v7, v0);
}

uint64_t sub_223C45794()
{
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_13_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_2(v2);

  return sub_223C3FAFC(v4, v5, v6, v7, v0);
}

uint64_t sub_223C4582C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_62(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3_0();
  v5 = OUTLINED_FUNCTION_30_0();
  v6(v5);
  return v4;
}

uint64_t objectdestroy_74Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_223C458B8()
{
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_13_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_2(v2);

  return sub_223C3FAFC(v4, v5, v6, v7, v0);
}

uint64_t sub_223C45950()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_51_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_1(v1);

  return v4(v3);
}

uint64_t sub_223C459F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_223C45A30(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
}

uint64_t OUTLINED_FUNCTION_58(uint64_t a1)
{

  return sub_223C485F8();
}

uint64_t OUTLINED_FUNCTION_59(uint64_t a1)
{

  return sub_223C485F8();
}

_OWORD *OUTLINED_FUNCTION_60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_223C29B2C(va, v4);
}

void OUTLINED_FUNCTION_61(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

uint64_t OUTLINED_FUNCTION_62(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

_OWORD *OUTLINED_FUNCTION_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 a14)
{

  return sub_223C2A050(&a14, &a11);
}

BOOL static XPCObject.== infix(_:_:)()
{
  v0 = XPCObject.obj.getter();
  v1 = XPCObject.obj.getter();
  v2 = xpc_equal(v0, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

char *RTCXPCDictionary.keys.getter(void *a1)
{
  count = xpc_dictionary_get_count(a1);
  v3 = MEMORY[0x277D84F90];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || count > *(v3 + 3) >> 1)
  {
    if (*(v3 + 2) <= count)
    {
      v5 = count;
    }

    else
    {
      v5 = *(v3 + 2);
    }

    v3 = sub_223C462A8(isUniquelyReferenced_nonNull_native, v5, 0, v3);
  }

  v13 = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = &v13;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_223C463B0;
  *(v7 + 24) = v6;
  aBlock[4] = sub_223C463B8;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_223C45E88;
  aBlock[3] = &block_descriptor_1;
  v8 = _Block_copy(aBlock);

  xpc_dictionary_apply(a1, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

uint64_t sub_223C45E28(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_223C48378();
  v6 = v5;
  sub_223C46524();
  v7 = *(*a3 + 16);
  sub_223C46570(v7);
  v8 = *a3;
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  return 1;
}

uint64_t sub_223C45E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

void (*RTCXPCDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  v7[3] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v7[4] = v11;
  v12 = *v3;
  OUTLINED_FUNCTION_20();
  v13 = sub_223C48348();
  v14 = xpc_dictionary_get_value(v12, (v13 + 32));

  XPCObject.init(_:)(v14, v11);
  return sub_223C45FD4;
}

void sub_223C45FD4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = **a1;
  if (a2)
  {
    v7 = OUTLINED_FUNCTION_20();
    sub_223C2C474(v7, v8, &unk_27D0B9C60, qword_223C4B100);

    RTCXPCDictionary.subscript.setter(v3, v6, v5);
    sub_223C2CF0C(v4, &unk_27D0B9C60, qword_223C4B100);
  }

  else
  {

    RTCXPCDictionary.subscript.setter(v4, v6, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Bool __swiftcall RTCXPCDictionary.contains(key:)(Swift::String key)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100);
  v4 = OUTLINED_FUNCTION_14(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = sub_223C48348();
  v8 = xpc_dictionary_get_value(v2, (v7 + 32));

  XPCObject.init(_:)(v8, v6);
  v9 = type metadata accessor for XPCObject(0);
  LOBYTE(v8) = __swift_getEnumTagSinglePayload(v6, 1, v9) != 1;
  sub_223C2CF0C(v6, &unk_27D0B9C60, qword_223C4B100);
  return v8;
}

xpc_object_t sub_223C461A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = RTCXPCDictionary.init(dictionaryLiteral:)(a1);
  *a2 = result;
  return result;
}

char *sub_223C461C8(uint64_t a1, uint64_t a2)
{
  result = sub_223C47FE8();
  v5 = result;
  if (result)
  {
    result = sub_223C48008();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_223C47FF8();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if (v5)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return xpc_data_create(v5, v10);
}

uint64_t sub_223C46250(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

char *sub_223C462A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C70, &qword_223C4B1D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_223C463E4(uint64_t a1)
{
  v1 = sub_223C464B8();
  if (v2 <= 0x3F)
  {
    v3 = sub_223C48188();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v1;
}

unint64_t sub_223C464B8()
{
  result = qword_280AEC0E0;
  if (!qword_280AEC0E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280AEC0E0);
  }

  return result;
}

char *sub_223C46524()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_223C462A8(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_223C46570(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_223C462A8((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t XPCError.description.getter(void *a1)
{
  if (xpc_dictionary_get_string(a1, "XPCErrorDescription"))
  {
    return sub_223C48378();
  }

  else
  {
    return OUTLINED_FUNCTION_2_3();
  }
}

uint64_t XPCError.errorDescription.getter(void *a1)
{
  if (xpc_dictionary_get_string(a1, "XPCErrorDescription"))
  {
    return sub_223C48378();
  }

  else
  {
    return OUTLINED_FUNCTION_2_3();
  }
}

unsigned __int8 *XPCIncomingConnection.entitlementValue(forKey:)@<X0>(uint64_t a4@<X8>)
{
  sub_223C48348();
  v5 = xpc_connection_copy_entitlement_value();

  return XPCObject.init(_:)(v5, a4);
}

uint64_t XPCIncomingConnection.makeConnection(targetQ:delegate:)(void *a1, uint64_t a2, uint64_t a3, _xpc_connection_s *a4)
{
  type metadata accessor for XPCConnection();
  v8 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  XPCConnection.init(conn:targetQ:delegate:)(a4, a1, a2, a3);
  return v8;
}

uint64_t XPCConnection.__allocating_init(conn:targetQ:delegate:)(_xpc_connection_s *a1, void *a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_2();
  v8 = swift_allocObject();
  XPCConnection.init(conn:targetQ:delegate:)(a1, a2, a3, a4);
  return v8;
}

uint64_t XPCConnection.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*XPCConnection.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 32);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_223C46A04;
}

void sub_223C46A04(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t XPCConnection.__allocating_init(machService:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  OUTLINED_FUNCTION_3_2();
  v12 = swift_allocObject();
  XPCConnection.init(machService:targetQ:listen:delegate:)(a1, a2, a3, v8, a5, a6);
  return v12;
}

void *XPCConnection.init(machService:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v6[4] = 0;
  swift_unknownObjectWeakInit();
  if (a4)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  v11 = sub_223C48348();
  v12 = a3;

  mach_service = xpc_connection_create_mach_service((v11 + 32), v12, v10);

  OUTLINED_FUNCTION_4_2(v14, v15, v16, v17, v18, v19, v20);
  v6[4] = a6;
  swift_unknownObjectWeakAssign();
  v6[2] = mach_service;
  v6[5] = v12;
  v21 = swift_unknownObjectRetain();
  xpc_connection_set_target_queue(v21, v12);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_5();
  v26 = v22;
  v27 = &block_descriptor_2;
  v23 = _Block_copy(aBlock);

  xpc_connection_set_event_handler(mach_service, v23);
  _Block_release(v23);
  xpc_connection_activate(mach_service);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_223C46C58(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 32);
    v5 = MEMORY[0x223DF6570](a1);
    v6 = MEMORY[0x277D86480];
    ObjectType = swift_getObjectType();
    if (v5 == v6)
    {
      (*(v4 + 8))(a1, ObjectType, v4);
    }

    else
    {
      (*(v4 + 16))(a1, ObjectType, v4);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *XPCConnection.init(conn:targetQ:delegate:)(_xpc_connection_s *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[4] = 0;
  v8 = swift_unknownObjectWeakInit();
  v4[2] = a1;
  OUTLINED_FUNCTION_4_2(v8, v9, v10, v11, v12, v13, v14);
  v4[4] = a4;
  swift_unknownObjectWeakAssign();
  v4[5] = a2;
  swift_unknownObjectRetain();
  v15 = a2;
  xpc_connection_set_target_queue(a1, v15);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_5();
  v20 = v16;
  v21 = &block_descriptor_3;
  v17 = _Block_copy(aBlock);

  xpc_connection_set_event_handler(a1, v17);
  _Block_release(v17);
  xpc_connection_activate(a1);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_223C46E68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t XPCConnection.deinit()
{
  xpc_connection_cancel(*(v0 + 16));
  swift_unknownObjectRelease();
  sub_223C35CC0(v0 + 24);

  return v0;
}

uint64_t XPCConnection.__deallocating_deinit()
{
  XPCConnection.deinit();
  v0 = OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_223C46FD4()
{
  result = qword_280AEBF00;
  if (!qword_280AEBF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AEBF00);
  }

  return result;
}

RTCUtility::XPCMessage::MessageType_optional __swiftcall XPCMessage.MessageType.init(rawValue:)(Swift::Int64 rawValue)
{
  if (rawValue >= 5)
  {
    LOBYTE(rawValue) = 5;
  }

  return rawValue;
}

uint64_t sub_223C47098(unsigned __int8 a1)
{
  sub_223C48758();
  MEMORY[0x223DF5980](a1);
  return sub_223C48788();
}

uint64_t sub_223C47118(uint64_t a1, unsigned __int8 a2)
{
  sub_223C48758();
  MEMORY[0x223DF5980](a2);
  return sub_223C48788();
}

RTCUtility::XPCMessage::MessageType_optional sub_223C4715C@<W0>(Swift::Int64 *a1@<X0>, RTCUtility::XPCMessage::MessageType_optional *a2@<X8>)
{
  result.value = XPCMessage.MessageType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_223C47188@<X0>(uint64_t *a1@<X8>)
{
  result = XPCMessage.MessageType.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

void XPCMessage.init(fromXPC:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100);
  MEMORY[0x28223BE20](v0 - 8);
  swift_getObjectType();
  OS_xpc_object.type()();
}

void *sub_223C47230(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a1 == MEMORY[0x277D86468])
  {
    v16 = xpc_dictionary_get_value(v15, "type");
    XPCObject.init(_:)(v16, v14);
    v17 = type metadata accessor for XPCObject(0);
    if (__swift_getEnumTagSinglePayload(v14, 1, v17) == 1)
    {
      swift_unknownObjectRelease();
      sub_223C30D7C(v14);
      return 0;
    }

    if (swift_getEnumCaseMultiPayload() != 3)
    {
      swift_unknownObjectRelease();
      sub_223C3058C(v14);
      return 0;
    }

    if (XPCMessage.MessageType.init(rawValue:)(*v14).value != RTCUtility_XPCMessage_MessageType_unknownDefault)
    {
      return v15;
    }
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t XPCMessage.description.getter(void *a1, char a2)
{
  v38 = type metadata accessor for XPCObject(0);
  v36[1] = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  isUniquelyReferenced_nonNull_native = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v36 - v7;
  v43 = 0;
  v44 = 0xE000000000000000;
  LOBYTE(v42) = a2;
  sub_223C485E8();
  MEMORY[0x223DF5570](2683, 0xE200000000000000);
  v37 = a1;
  v9 = RTCXPCDictionary.keys.getter(a1);
  v10 = 0;
  v39 = *(v9 + 2);
  v11 = MEMORY[0x277D84F98];
  v40 = v9;
  v12 = v9 + 40;
  while (1)
  {
    if (v39 == v10)
    {

      v32 = sub_223C48268();
      v34 = v33;

      MEMORY[0x223DF5570](v32, v34);

      MEMORY[0x223DF5570](125, 0xE100000000000000);
      return v43;
    }

    if (v10 >= *(v40 + 2))
    {
      break;
    }

    v41 = v10;
    v13 = *(v12 - 1);
    v14 = *v12;
    v15 = v12;
    v16 = sub_223C48348();

    v17 = xpc_dictionary_get_value(v37, (v16 + 32));

    XPCObject.init(_:)(v17, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v38) == 1)
    {
      goto LABEL_18;
    }

    sub_223C307C0(v8, isUniquelyReferenced_nonNull_native);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v11;
    v18 = sub_223C29FE0();
    if (__OFADD__(*(v11 + 16), (v19 & 1) == 0))
    {
      goto LABEL_16;
    }

    v20 = v18;
    v21 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C90, &qword_223C4B440);
    if (sub_223C485F8())
    {
      v22 = sub_223C29FE0();
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_19;
      }

      v20 = v22;
    }

    if (v21)
    {

      v11 = v42;
      v24 = OUTLINED_FUNCTION_0_6();
      sub_223C476A0(v24, v25);
    }

    else
    {
      v11 = v42;
      *(v42 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v26 = (*(v11 + 48) + 16 * v20);
      *v26 = v13;
      v26[1] = v14;
      v27 = OUTLINED_FUNCTION_0_6();
      sub_223C307C0(v27, v28);
      v29 = *(v11 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_17;
      }

      *(v11 + 16) = v31;
    }

    v12 = v15 + 2;
    v10 = v41 + 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_223C486C8();
  __break(1u);
  return result;
}

uint64_t sub_223C476A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_223C47708()
{
  result = qword_27D0B9C98;
  if (!qword_27D0B9C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B9C98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCMessage.MessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for XPCMessage.MessageType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void __createAWDAdaptorInstance_block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = @"/System/Library/PrivateFrameworks/AVConference.framework/Frameworks/GKSPerformance.framework";
  _os_log_error_impl(&dword_223C26000, log, OS_LOG_TYPE_ERROR, "invokeAWDAdaptorForReporter unable to find AWDAdaptor at %@", &v1, 0xCu);
}