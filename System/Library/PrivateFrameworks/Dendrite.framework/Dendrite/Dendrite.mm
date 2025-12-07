void ProtoCodable.serialize()(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E69C65C0]) init];
  if (v5)
  {
    v6 = v5;
    (*(a2 + 16))(v5, a1, a2);
    if (v2)
    {
    }

    else
    {
      v8 = [v6 immutableData];
      if (v8)
      {
        v9 = v8;
        sub_1B1A7C888();
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_1B1A65484();
    swift_allocError();
    *v7 = 0xD000000000000017;
    v7[1] = 0x80000001B1A82360;
    swift_willThrow();
  }
}

void TypedStream.append(_:)(uint64_t a1)
{
  v2 = *(v1 + qword_1EDB770F0);
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_1B1A5FD20((v2 + v3), &v5);
  os_unfair_lock_unlock((v2 + v4));
  if (v5 == 1)
  {
    sub_1B1A593FC();
  }
}

uint64_t PBDataWriter.writeSubmessage(tag:writeData:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = PBDataWriterPlaceMark();
  result = a2(v4);
  if (!v2)
  {
    return PBDataWriterRecallMark();
  }

  return result;
}

void sub_1B1A4696C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void PBDataWriter.write(_:forTag:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = *MEMORY[0x1E69E9840];
  v17 = sub_1B1A7C938();
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v13 = sub_1B1A46AEC(&v17, 0x10uLL);
  v15 = v14;
  v16 = sub_1B1A7C878();
  [v3 writeData:v16 forTag:a2];

  sub_1B1A4696C(v13, v15);
}

unint64_t sub_1B1A46AEC(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1B1A4F9CC(a1, &a1[a2]);
  }

  sub_1B1A7C728();
  swift_allocObject();
  sub_1B1A7C6C8();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1B1A7C868();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t PBDataWriter.write(submessage:forTag:)(void *a1, uint64_t a2)
{
  v4 = v2;
  PBDataWriterPlaceMark();
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  result = (*(v7 + 16))(v4, v6, v7);
  if (!v3)
  {
    return PBDataWriterRecallMark();
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

BOOL _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0(uint64_t a1)
{
  v1 = sub_1B1A7CA88();
  v3 = v2;
  if (v1 == sub_1B1A7CA88() && v3 == v4)
  {

LABEL_13:
    if (qword_1EDB76A30 != -1)
    {
      swift_once();
    }

    v13 = *(*qword_1EDB77100 + 136);

    LOBYTE(v13) = *v13(v14);

    if ((v13 & 1) == 0)
    {
      if (MKBDeviceUnlockedSinceBoot() != 1)
      {
        return 0;
      }

      v15 = *(*qword_1EDB77100 + 136);

      *v15(v16) = 1;
    }

    return 1;
  }

  v6 = sub_1B1A7CFB8();

  if (v6)
  {
    goto LABEL_13;
  }

  v7 = sub_1B1A7CA88();
  v9 = v8;
  if (v7 != sub_1B1A7CA88() || v9 != v10)
  {
    v12 = sub_1B1A7CFB8();

    if (v12)
    {
      return MKBGetDeviceLockState() == 0;
    }

    return 1;
  }

  return MKBGetDeviceLockState() == 0;
}

uint64_t sub_1B1A46E9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for DataFrameStreamContainer(uint64_t a1)
{
  result = qword_1EDB76A90;
  if (!qword_1EDB76A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B1A46F50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B1A46FB0(uint64_t a1)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v15 = 2;
  result = sub_1B1A47098(a1, &v15);
  if (!v2)
  {
    if (v6)
    {
      return 0;
    }

    v7 = result;
    v8 = atomic_fetch_add((*(v4 + 16) + 16), 1u) + 1;
    result = v8 - 1;
    if (v8)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(v7))
        {
          v9 = 8 * (v8 - 1) + 8;
          v10 = *(v3 + 16);
          v11 = *(v10 + 32);
          v12 = __OFSUB__(v11, v9);
          v13 = v11 - v9;
          if (!v12)
          {
            v14 = *(v10 + 16) + v13;
            *v14 = v7;
            *(v14 + 4) = 1;
            return result;
          }

LABEL_13:
          __break(1u);
          return result;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1B1A47098(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *(v2 + 32);
  v5 = *(*(v2 + 24) + 16);
  v6 = atomic_load((v5 + 8));
  while (1)
  {
    v7 = v6;
    if (v3)
    {
      if (v3 == 1)
      {
        v8 = 4;
      }

      else
      {
        v8 = 8;
      }

      v9 = v6 + v8;
      if (__OFADD__(v6, v8))
      {
        goto LABEL_36;
      }

      v10 = __OFSUB__(v9, 1);
      v11 = v9 - 1;
      if (v10)
      {
        goto LABEL_37;
      }

      v12 = v11 / v8;
      v7 = v12 * v8;
      if ((v12 * v8) >> 64 != (v12 * v8) >> 63)
      {
        goto LABEL_38;
      }
    }

    if (!v6)
    {
      v10 = __OFADD__(v7, 32);
      v7 += 32;
      if (v10)
      {
        goto LABEL_42;
      }
    }

    v13 = v7 + a1;
    if (__OFADD__(v7, a1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (v3)
    {
      if (v3 == 1)
      {
        v14 = 4;
      }

      else
      {
        v14 = 8;
      }

      v15 = v13 + v14;
      if (__OFADD__(v13, v14))
      {
        goto LABEL_39;
      }

      v10 = __OFSUB__(v15, 1);
      v16 = v15 - 1;
      if (v10)
      {
        goto LABEL_40;
      }

      v17 = v16 / v14;
      v13 = v17 * v14;
      if ((v17 * v14) >> 64 != (v17 * v14) >> 63)
      {
        goto LABEL_41;
      }
    }

    if (v13 < v7)
    {
      goto LABEL_34;
    }

    v18 = atomic_load((v5 + 16));
    v19 = 8 * v18 + 8;
    v20 = *(*(v4 + 16) + 32);
    v21 = v20 - v19;
    if (__OFSUB__(v20, v19))
    {
      goto LABEL_35;
    }

    if (v7 >= v21)
    {
      if (qword_1EDB764F0 == -1)
      {
LABEL_27:
        v24 = type metadata accessor for InternalLogger(0);
        __swift_project_value_buffer(v24, qword_1EDB770A8);
        sub_1B1A7CEC8();

        v25 = sub_1B1A7CF98();
        MEMORY[0x1B2736400](v25);

        MEMORY[0x1B2736400](0xD000000000000017, 0x80000001B1A818B0);
        v26 = sub_1B1A7CF98();
        MEMORY[0x1B2736400](v26);

        v27 = 0xD000000000000016;
        v28 = 0x80000001B1A81890;
        goto LABEL_31;
      }

LABEL_43:
      swift_once();
      goto LABEL_27;
    }

    if (v13 > v21)
    {
      break;
    }

    v22 = v6;
    atomic_compare_exchange_strong((v5 + 8), &v22, v13);
    v23 = v22 == v6;
    v6 = v22;
    if (v23)
    {
      return v7;
    }
  }

  if (qword_1EDB764F0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for InternalLogger(0);
  __swift_project_value_buffer(v29, qword_1EDB770A8);
  sub_1B1A7CEC8();
  MEMORY[0x1B2736400](0xD00000000000001CLL, 0x80000001B1A818F0);
  sub_1B1A7CF18();
  MEMORY[0x1B2736400](3943982, 0xE300000000000000);
  sub_1B1A7CF18();
  MEMORY[0x1B2736400](0, 0xE000000000000000);

  MEMORY[0x1B2736400](0xD00000000000002ALL, 0x80000001B1A81910);
  sub_1B1A7CF18();
  MEMORY[0x1B2736400](3943982, 0xE300000000000000);
  sub_1B1A7CF18();
  MEMORY[0x1B2736400](0, 0xE000000000000000);

  v27 = 0;
  v28 = 0xE000000000000000;
LABEL_31:
  sub_1B1A561C0(v27, v28, 0xD000000000000069, 0x80000001B1A80D70, 0xD000000000000019, 0x80000001B1A818D0);

  sub_1B1A6ABE8();
  v7 = swift_allocError();
  *(v30 + 4) = -1;
  *v30 = 0;
  swift_willThrow();
  return v7;
}

unint64_t sub_1B1A47538(uint64_t a1)
{
  sub_1B1A7C808();
  sub_1B1A475BC(&qword_1EDB76848, MEMORY[0x1E6968FC0]);
  v2 = sub_1B1A7CA28();

  return sub_1B1A47FE8(a1, v2);
}

uint64_t sub_1B1A475BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B1A7C808();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t DataFrameStreamSegment.append(data:compressed:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v9 != 2)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = __OFSUB__(v11, v12);
  v10 = v11 - v12;
  if (v13)
  {
    __break(1u);
LABEL_8:
    LODWORD(v10) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v10 = v10;
  }

LABEL_11:
  if (v8 < 0x40)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v10 > v8 - 64)
  {
    sub_1B1A6ABE8();
    swift_allocError();
    *(v14 + 4) = -4;
    *v14 = 0;
    return swift_willThrow();
  }

  if (v9 <= 1)
  {
    if (!v9)
    {
      v16 = BYTE6(a2);
      v17 = BYTE6(a2);
      goto LABEL_32;
    }

    goto LABEL_21;
  }

  if (v9 != 2)
  {
    goto LABEL_29;
  }

  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  v16 = v18 - v19;
  if (__OFSUB__(v18, v19))
  {
    __break(1u);
LABEL_21:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v16 = HIDWORD(a1) - a1;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (HIDWORD(v16))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v9 == 2)
  {
    v21 = *(a1 + 16);
    v20 = *(a1 + 24);
    v13 = __OFSUB__(v20, v21);
    v17 = v20 - v21;
    if (!v13)
    {
      goto LABEL_32;
    }

    __break(1u);
LABEL_29:
    v16 = 0;
    v17 = 0;
    goto LABEL_32;
  }

  LODWORD(v17) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v17 = v17;
LABEL_32:
  if (__OFADD__(v17, 24))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  result = sub_1B1A46FB0(v17 + 24);
  if (v4)
  {
    return result;
  }

  if (v24)
  {
    if (qword_1EDB764F0 == -1)
    {
LABEL_36:
      v25 = type metadata accessor for InternalLogger(0);
      __swift_project_value_buffer(v25, qword_1EDB770A8);
      sub_1B1A7CEC8();

      v26 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v26);

      sub_1B1A561D8(0xD000000000000024, 0x80000001B1A81610, 0xD000000000000069, 0x80000001B1A80D70, 0xD000000000000018, 0x80000001B1A81640);

      return 0;
    }

LABEL_48:
    swift_once();
    goto LABEL_36;
  }

  v27 = result;
  v28 = a3 & 1 | (v16 << 32);
  v29 = v23;
  result = sub_1B1A481F4(v28, 0, 0, v23);
  if (__OFADD__(v29, 24))
  {
    __break(1u);
    goto LABEL_50;
  }

  result = MemoryMappedRegion.write(data:at:)(a1, a2, v29 + 24);
  v30 = 8 * v27 + 8;
  v31 = *(v7 + 16);
  v32 = *(v31 + 32);
  v13 = __OFSUB__(v32, v30);
  v33 = v32 - v30;
  if (v13)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  atomic_exchange((*(v31 + 16) + v33 + 4), 2u);
  v34 = *(*(v6 + 16) + 24);
  result = v34 + v27;
  if (__CFADD__(v34, v27))
  {
LABEL_51:
    __break(1u);
  }

  return result;
}

uint64_t MemoryMappedRegion.write(data:at:)(uint64_t a1, unint64_t a2, int64_t a3)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      goto LABEL_50;
    }

    v5 = v5;
  }

LABEL_11:
  v8 = __OFADD__(a3, v5);
  v9 = a3 + v5;
  if (v8)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (v9 < a3)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v10 = v3[3];
  v11 = v3[4];
  v13 = v10 > a3 || v11 < a3;
  if (v9 < v10 || v11 < v9 || v13)
  {
    if (qword_1EDB764F0 == -1)
    {
LABEL_27:
      v16 = type metadata accessor for InternalLogger(0);
      __swift_project_value_buffer(v16, qword_1EDB770A8);
      sub_1B1A7CEC8();

      sub_1B1A7CF18();
      MEMORY[0x1B2736400](3943982, 0xE300000000000000);
      sub_1B1A7CF18();
      MEMORY[0x1B2736400](0, 0xE000000000000000);

      sub_1B1A561D8(0xD000000000000011, 0x80000001B1A817F0, 0xD00000000000005FLL, 0x80000001B1A81810, 0x6164286574697277, 0xEF293A74613A6174);

      return 0;
    }

LABEL_48:
    swift_once();
    goto LABEL_27;
  }

  v17 = v3[2];
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      return v9;
    }

    v19 = v9;
    v20 = a3;
    v21 = a1;
    v22 = *(a1 + 16);
    v23 = sub_1B1A7C6D8();
    if (!v23)
    {
      goto LABEL_56;
    }

    v24 = v23;
    v25 = sub_1B1A7C708();
    if (__OFSUB__(v22, v25))
    {
      goto LABEL_51;
    }

    v26 = (v22 - v25 + v24);
    a1 = sub_1B1A7C6F8();
    if (!v26)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v27 = *(v21 + 16);
    v9 = *(v21 + 24);
    a3 = v9 - v27;
    if (__OFSUB__(v9, v27))
    {
      goto LABEL_53;
    }

    if ((a3 & 0x8000000000000000) == 0)
    {
LABEL_44:
      memmove((v17 + v20), v26, a3);
      return v19;
    }

    __break(1u);
  }

  else if (!v4)
  {
    __src = a1;
    v35 = a2;
    v36 = BYTE2(a2);
    v37 = BYTE3(a2);
    v38 = BYTE4(a2);
    v39 = BYTE5(a2);
    v18 = v9;
    memcpy((v17 + a3), &__src, BYTE6(a2));
    return v18;
  }

  v28 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v19 = v9;
  v20 = a3;
  v29 = a1;
  v30 = sub_1B1A7C6D8();
  if (!v30)
  {
LABEL_58:
    result = sub_1B1A7C6F8();
    goto LABEL_59;
  }

  v31 = v30;
  v32 = sub_1B1A7C708();
  if (__OFSUB__(v28, v32))
  {
    goto LABEL_52;
  }

  v26 = (v28 - v32 + v31);
  result = sub_1B1A7C6F8();
  if (v26)
  {
    a3 = (HIDWORD(v29) - v29);
    if (!__OFSUB__(HIDWORD(v29), v29))
    {
      if ((a3 & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_55;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    sub_1B1A7C6F8();
    goto LABEL_57;
  }

LABEL_59:
  __break(1u);
  return result;
}

id PBDataWriter.write(_:forTag:)(uint64_t a1, uint64_t a2)
{
  sub_1B1A7C8C8();

  return [v2 writeDouble:a2 forTag:?];
}

uint64_t type metadata accessor for StorageContainer(uint64_t a1)
{
  result = qword_1EDB76AF8;
  if (!qword_1EDB76AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1B1A47DC8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for StorageContainer(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B1A47E6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B1A47EE8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for StorageContainer(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

unint64_t sub_1B1A47F94()
{
  result = qword_1EDB764B0;
  if (!qword_1EDB764B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB764B0);
  }

  return result;
}

unint64_t sub_1B1A47FE8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1B1A7C808();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
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
      sub_1B1A475BC(&qword_1EDB76840, MEMORY[0x1E6968FC8]);
      v16 = sub_1B1A7CA48();
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

uint64_t sub_1B1A48194(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B1A481F4(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  result = a4 + 24;
  if (__OFADD__(a4, 24))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (result < a4)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v4[3];
  v8 = v4[4];
  v10 = v7 > a4 || v8 < a4;
  v12 = result < v7 || v8 < result || v10;
  if (v12)
  {
    if (qword_1EDB764F0 == -1)
    {
LABEL_17:
      v13 = type metadata accessor for InternalLogger(0);
      __swift_project_value_buffer(v13, qword_1EDB770A8);
      sub_1B1A7CEC8();

      sub_1B1A7CF18();
      MEMORY[0x1B2736400](3943982, 0xE300000000000000);
      sub_1B1A7CF18();
      MEMORY[0x1B2736400](0, 0xE000000000000000);

      sub_1B1A561D8(0xD000000000000011, 0x80000001B1A817F0, 0xD00000000000005FLL, 0x80000001B1A81810, 0xD000000000000019, 0x80000001B1A81870);

      return 0;
    }

LABEL_21:
    swift_once();
    goto LABEL_17;
  }

  v14 = v4[2] + a4;
  *v14 = a1 & 1;
  *(v14 + 4) = HIDWORD(a1);
  *(v14 + 8) = a2;
  *(v14 + 16) = a3;
  return result;
}

uint64_t sub_1B1A48408@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1A7CA88();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B1A48444()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B1A48490()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B1A484D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1A55464();
  *a1 = result;
  return result;
}

__n128 sub_1B1A48530(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B1A4853C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1A7C988();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B1A485A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1A7C988();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B1A48618()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1A48650()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B1A48698()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1A486D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B1A48714()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B1A48780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B1A7C808();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B1A4883C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B1A7C808();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B1A488F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageContainer(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B1A48960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageContainer(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B1A489D0()
{

  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B1A48A18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1A7C908();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B1A48A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1A7C908();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B1A48B54(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1A48B74(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B1A48BC4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
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

uint64_t sub_1B1A48C18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
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

uint64_t sub_1B1A48CA4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1A48CC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1B1A48D10(uint64_t a1, int a2)
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

uint64_t sub_1B1A48D30(uint64_t result, int a2, int a3)
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

_DWORD *sub_1B1A48D80@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1B1A48D9C(uint64_t a1, id *a2)
{
  result = sub_1B1A7CA68();
  *a2 = 0;
  return result;
}

uint64_t sub_1B1A48E14(uint64_t a1, id *a2)
{
  v3 = sub_1B1A7CA78();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B1A48E94@<X0>(uint64_t *a2@<X8>)
{
  sub_1B1A7CA88();
  v3 = sub_1B1A7CA58();

  *a2 = v3;
  return result;
}

uint64_t sub_1B1A48EE0(void *a1, uint64_t *a2)
{
  v2 = sub_1B1A7CA88();
  v4 = v3;
  if (v2 == sub_1B1A7CA88() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B1A7CFB8();
  }

  return v7 & 1;
}

uint64_t sub_1B1A48F74(uint64_t a1)
{
  v2 = sub_1B1A49280(&qword_1EB75E398, type metadata accessor for FileProtectionType, &unk_1B1A7DEEC);
  v3 = sub_1B1A49280(&qword_1EB75E3A0, type metadata accessor for FileProtectionType, &unk_1B1A7DE8C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B1A49030(uint64_t a1)
{
  v2 = sub_1B1A49280(&qword_1EDB76498, type metadata accessor for FileAttributeKey, &unk_1B1A7E0C0);
  v3 = sub_1B1A49280(&unk_1EB75E3D0, type metadata accessor for FileAttributeKey, &unk_1B1A7E014);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B1A490EC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1B1A7CA58();

  *a2 = v3;
  return result;
}

uint64_t sub_1B1A49134(uint64_t a1)
{
  v2 = sub_1B1A49280(&qword_1EB75E3A8, type metadata accessor for URLResourceKey, &unk_1B1A7DD34);
  v3 = sub_1B1A49280(&unk_1EB75E3B0, type metadata accessor for URLResourceKey, &unk_1B1A7DCD4);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B1A49280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B1A493E8()
{
  v0 = sub_1B1A7CA88();
  v1 = MEMORY[0x1B2736470](v0);

  return v1;
}

uint64_t sub_1B1A49424(uint64_t a1)
{
  sub_1B1A7CA88();
  sub_1B1A7CB18();
}

uint64_t sub_1B1A49478(uint64_t a1)
{
  sub_1B1A7CA88();
  sub_1B1A7D058();
  sub_1B1A7CB18();
  v1 = sub_1B1A7D098();

  return v1;
}

void sub_1B1A49500(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t WireTypes.description.getter(int a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x544E49524156;
      case 1:
        return 0x34364445584946;
      case 2:
        return 0xD000000000000010;
    }

    return 0x4E574F4E4B4E55;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0x32334445584946;
    }

    if (a1 == 6)
    {
      return 0x544E554F43;
    }

    return 0x4E574F4E4B4E55;
  }

  if (a1 == 3)
  {
    return 0x52475F5452415453;
  }

  else
  {
    return 0x554F52475F444E45;
  }
}

void sub_1B1A497F4(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(unint64_t, uint64_t), uint64_t a7)
{
  v9 = v8;
  v10 = v7;
  v74 = *MEMORY[0x1E69E9840];
  v66 = *a1;
  v12 = *a4;
  if ([v10 hasMoreData])
  {
    v58 = a3;
    v64 = v12;
    v65 = v10;
    do
    {
      v16 = [v10 position];
      v17 = v9;
      v18 = sub_1B1A4AC04();
      if (v9)
      {
        break;
      }

      v20 = v18;
      v21 = v19;
      if (qword_1EDB764F0 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for InternalLogger(0);
      __swift_project_value_buffer(v22, qword_1EDB770A8);
      LODWORD(v70) = v20;
      v72 = sub_1B1A7CF98();
      v73 = v23;
      MEMORY[0x1B2736400](2112032, 0xE300000000000000);
      v24 = WireTypes.description.getter(v21);
      v26 = v25;
      v60 = v24;
      MEMORY[0x1B2736400]();
      v62 = v26;

      MEMORY[0x1B2736400](2113568, 0xE300000000000000);
      v70 = v16;
      v27 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v27);

      sub_1B1A561C0(v72, v73, 0xD000000000000060, 0x80000001B1A80400, 0xD00000000000003DLL, 0x80000001B1A80590);

      if (a6)
      {

        v28 = a6(v20, v21);
        sub_1B1A4C3CC(a6, a7);
        if (v28)
        {
          break;
        }
      }

      if (v12)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1B1A79178(0, *(v64 + 16) + 1, 1, v64);
        }

        v30 = *(v12 + 16);
        v29 = *(v12 + 24);
        v31 = v30 + 1;
        if (v30 >= v29 >> 1)
        {
          v12 = sub_1B1A79178((v29 > 1), v30 + 1, 1, v12);
        }

        *(v12 + 16) = v31;
        v32 = (v12 + 4 * v30 + 32);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E448, &qword_1B1A7E378);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1B1A7E110;
        v32 = (v12 + 32);
        v31 = 1;
      }

      v33 = HIDWORD(v20);
      *v32 = v20;
      v34 = a2;
      swift_retain_n();
      v35 = 0;
      do
      {
        if (v35 >= *(v12 + 16))
        {
          __break(1u);

          return;
        }

        v36 = *(v12 + 4 * v35 + 32);
        swift_beginAccess();
        v37 = *(v34 + 16);
        if (!*(v37 + 16) || (v38 = sub_1B1A71800(v36), (v39 & 1) == 0))
        {

LABEL_26:
          if (!v66)
          {
            goto LABEL_27;
          }

          goto LABEL_3;
        }

        ++v35;
        v40 = *(*(v37 + 56) + 8 * v38);

        v34 = v40;
      }

      while (v31 != v35);
      v41 = *(v40 + 24);

      if ((v41 & 1) == 0)
      {
        goto LABEL_26;
      }

      sub_1B1A5E4BC(&v72, v12);

      if (v66)
      {
LABEL_27:
        if (v21 == 2)
        {
          v63 = HIDWORD(v20);
          v61 = 1;
LABEL_31:
          v42 = *(v12 + 16);
          if (v42)
          {
            v43 = 0;
            v44 = a2;
            while (1)
            {
              if (v43 >= *(v12 + 16))
              {
                __break(1u);
              }

              v45 = *(v12 + 4 * v43 + 32);
              swift_beginAccess();
              v46 = *(v44 + 16);
              if (!*(v46 + 16))
              {
                break;
              }

              v47 = sub_1B1A71800(v45);
              if ((v48 & 1) == 0)
              {
                break;
              }

              ++v43;
              v49 = *(*(v46 + 56) + 8 * v47);

              v44 = v49;
              if (v42 == v43)
              {
                goto LABEL_37;
              }
            }
          }

          else
          {
LABEL_37:

            v72 = 0;
            v73 = 0xE000000000000000;
            sub_1B1A7CEC8();
            v70 = v12;
            v50 = ProtoTagPath.description.getter();
            v52 = v51;

            v72 = v50;
            v73 = v52;
            MEMORY[0x1B2736400](0xD00000000000002DLL, 0x80000001B1A805D0);
            sub_1B1A561C0(v72, v73, 0xD000000000000060, 0x80000001B1A80400, 0xD00000000000003DLL, 0x80000001B1A80590);

            if (v61)
            {
              v72 = 0;
              v73 = 0;
              [v65 mark_];
              v70 = 0;
              PBDataWriterPlaceMark();
              v69 = v66;
              v71 = v12;
              sub_1B1A497F4(&v69, a2, v58, &v71, a5, 0, 0);
              v9 = v17;

              PBDataWriterRecallMark();
              [v65 recall_];
              v10 = v65;
              v12 = v64;
              continue;
            }

            if (v21 == 3)
            {
              LOBYTE(v70) = v66;
              v72 = v12;
              v54 = swift_allocObject();
              *(v54 + 16) = v20;
              sub_1B1A497F4(&v70, a2, v58, &v72, a5, sub_1B1A4C4D4, v54);
            }
          }

          v53 = v58;
          v33 = v63;
        }

        else
        {
          if (v21 == 3)
          {
            v63 = HIDWORD(v20);
            v61 = 0;
            goto LABEL_31;
          }

          v53 = v58;
        }

        v10 = v65;
        sub_1B1A4AD74(v20, v21, v33, v53);
        v9 = 0;
        v12 = v64;
        continue;
      }

LABEL_3:

      v72 = 0x3A676E696E757250;
      v73 = 0xE900000000000020;
      v70 = v12;
      v13 = ProtoTagPath.description.getter();
      v15 = v14;

      MEMORY[0x1B2736400](v13, v15);

      sub_1B1A561C0(v72, v73, 0xD000000000000060, 0x80000001B1A80400, 0xD00000000000003DLL, 0x80000001B1A80590);

      v10 = v65;
      v9 = v17;
      v12 = v64;
      if (([v65 skipValueWithTag:v20 type:BYTE4(v20)] & 1) == 0)
      {
        v72 = 0;
        v73 = 0xE000000000000000;
        sub_1B1A7CEC8();

        v72 = 0x6F6E20646C756F43;
        v73 = 0xEF2070696B732074;
        LODWORD(v70) = v20;
        v55 = sub_1B1A7CF98();
        MEMORY[0x1B2736400](v55);

        MEMORY[0x1B2736400](2112032, 0xE300000000000000);
        MEMORY[0x1B2736400](v60, v62);

        sub_1B1A561D8(v72, v73, 0xD000000000000060, 0x80000001B1A80400, 0xD00000000000003DLL, 0x80000001B1A80590);

        sub_1B1A4C0E4();
        swift_allocError();
        *v56 = 0;
        *(v56 + 4) = 1;
        swift_willThrow();
        return;
      }
    }

    while (([v10 hasMoreData] & 1) != 0);
  }
}

void static PBDataReader.pluck(tagPath:data:)(uint64_t *a1@<X0>, uint64_t x8_0@<X8>)
{
  v5 = *a1;
  v6 = objc_allocWithZone(MEMORY[0x1E69C65B8]);
  v7 = sub_1B1A7C878();
  v8 = [v6 initWithData_];

  if (v8)
  {
    v10 = v5;
    sub_1B1A4A198(&v10, x8_0);
  }

  else
  {
    sub_1B1A4C0E4();
    swift_allocError();
    *v9 = 0;
    *(v9 + 4) = 1;
    swift_willThrow();
  }
}

double sub_1B1A4A198@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E450, &unk_1B1A7E380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1A7E110;
  *(inited + 32) = v4;
  v6 = inited + 32;
  v7 = sub_1B1A6F390(inited);
  swift_setDeallocating();

  sub_1B1A4C468(v6);
  v8 = sub_1B1A4E6F0(v7);
  v11 = 0;
  sub_1B1A4A3D4(&v14, &v12, v8, &v11, 0, 0);

  if (!v2)
  {

    v10 = v13;
    result = *&v12;
    *a2 = v12;
    *(a2 + 16) = v10;
  }

  return result;
}

uint64_t static PBDataReader.pluck(tagTree:data:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_allocWithZone(MEMORY[0x1E69C65B8]);
  v9 = sub_1B1A7C878();
  v10 = [v8 initWithData_];

  if (v10)
  {

    v12 = sub_1B1A4E6F0(v11);
    v16 = 0;
    sub_1B1A4A3D4(&v19, &v17, v12, &v16, 0, 0);

    if (!v5)
    {
      v14 = v18;
      *a1 = v19;
      *a2 = v17;
      *(a2 + 16) = v14;
    }
  }

  else
  {
    sub_1B1A4C0E4();
    swift_allocError();
    *v15 = 0;
    *(v15 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

void sub_1B1A4A3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(unint64_t, uint64_t), uint64_t a6)
{
  v8 = v7;
  v9 = a5;
  v73 = *MEMORY[0x1E69E9840];
  v10 = *a4;
  v65 = *a4;
  v11 = [v6 hasMoreData];
  while (2)
  {
    if (!v11)
    {
      *v60 = 0;
      *v61 = xmmword_1B1A7E120;
      *(v61 + 16) = 1;
      return;
    }

    v12 = [v6 position];
    v13 = sub_1B1A4AC04();
    if (!v8)
    {
      v15 = v13;
      v16 = v14;
      if (qword_1EDB764F0 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for InternalLogger(0);
      __swift_project_value_buffer(v17, qword_1EDB770A8);
      v71 = sub_1B1A7CF98();
      v72 = v18;
      MEMORY[0x1B2736400](2112032, 0xE300000000000000);
      v19 = WireTypes.description.getter(v16);
      v21 = v20;
      v63 = v19;
      MEMORY[0x1B2736400]();

      MEMORY[0x1B2736400](2113568, 0xE300000000000000);
      v70 = v12;
      v22 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v22);

      sub_1B1A561C0(v71, v72, 0xD000000000000060, 0x80000001B1A80400, 0xD000000000000024, 0x80000001B1A80470);

      if (!v9 || (, v23 = v9(v15, v16), sub_1B1A4C3CC(v9, a6), (v23 & 1) == 0))
      {
        v62 = v21;
        if (v10)
        {

          v24 = v10;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_1B1A79178(0, *(v10 + 16) + 1, 1, v10);
          }

          v26 = *(v24 + 16);
          v25 = *(v24 + 24);
          v27 = v26 + 1;
          if (v26 >= v25 >> 1)
          {
            v24 = sub_1B1A79178((v25 > 1), v26 + 1, 1, v24);
          }

          *(v24 + 16) = v27;
          v28 = (v24 + 4 * v26 + 32);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E448, &qword_1B1A7E378);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_1B1A7E110;
          v28 = (v24 + 32);
          v27 = 1;
        }

        v29 = HIDWORD(v15);
        *v28 = v15;
        v30 = a3;
        swift_retain_n();
        v31 = 0;
        do
        {
          if (v31 >= *(v24 + 16))
          {
            __break(1u);
LABEL_46:
            __break(1u);
          }

          v32 = *(v24 + 4 * v31 + 32);
          swift_beginAccess();
          v33 = *(v30 + 16);
          if (!*(v33 + 16) || (v34 = sub_1B1A71800(v32), (v35 & 1) == 0))
          {

            goto LABEL_25;
          }

          ++v31;
          v36 = *(*(v33 + 56) + 8 * v34);

          v30 = v36;
        }

        while (v27 != v31);
        v37 = *(v36 + 24);

        if (v37)
        {

          *v60 = v24;
          sub_1B1A4B6B8(v15, v16, v61);
          return;
        }

LABEL_25:
        v68 = v15;
        v38 = v16;
        v39 = v29;
        v40 = *(v24 + 16);
        if (v40)
        {
          v41 = 0;
          v42 = a3;
          while (1)
          {
            if (v41 >= *(v24 + 16))
            {
              goto LABEL_46;
            }

            v43 = *(v24 + 4 * v41 + 32);
            swift_beginAccess();
            v44 = *(v42 + 16);
            if (!*(v44 + 16))
            {
              break;
            }

            v45 = sub_1B1A71800(v43);
            if ((v46 & 1) == 0)
            {
              break;
            }

            ++v41;
            v47 = *(*(v44 + 56) + 8 * v45);

            v42 = v47;
            if (v40 == v41)
            {
              goto LABEL_34;
            }
          }

          v6 = v67;
          v8 = 0;
          v10 = v65;
          v9 = a5;
          if ([v67 skipValueWithTag:v68 type:v39])
          {
            v11 = [v67 hasMoreData];
            continue;
          }

          sub_1B1A7CEC8();

          v71 = 0x6F6E20646C756F43;
          v72 = 0xEF2070696B732074;
          LODWORD(v70) = v68;
          v59 = sub_1B1A7CF98();
          MEMORY[0x1B2736400](v59);

          MEMORY[0x1B2736400](2112032, 0xE300000000000000);
          MEMORY[0x1B2736400](v63, v62);

          v56 = 0x6F6E20646C756F43;
          v57 = 0xEF2070696B732074;
          goto LABEL_41;
        }

LABEL_34:

        sub_1B1A7CEC8();
        v70 = v24;
        v48 = ProtoTagPath.description.getter();
        v50 = v49;

        v72 = v50;
        MEMORY[0x1B2736400](0xD00000000000002CLL, 0x80000001B1A804A0);
        sub_1B1A561C0(v48, v50, 0xD000000000000060, 0x80000001B1A80400, 0xD000000000000024, 0x80000001B1A80470);

        if (v38 == 3)
        {
          v71 = v24;
          v51 = swift_allocObject();
          *(v51 + 16) = v68;
          sub_1B1A4A3D4(v60, v61, a3, &v71, sub_1B1A4C3B8, v51);
        }

        else
        {
          if (v38 != 2)
          {
            sub_1B1A7CEC8();
            v52 = ProtoTagPath.description.getter();
            v54 = v53;

            v71 = v52;
            v72 = v54;
            MEMORY[0x1B2736400](0xD000000000000028, 0x80000001B1A804D0);
            v70 = __PAIR64__(HIDWORD(v24), v68);
            v55 = sub_1B1A7CF98();
            MEMORY[0x1B2736400](v55);

            v56 = v52;
            v57 = v54;
LABEL_41:
            sub_1B1A561D8(v56, v57, 0xD000000000000060, 0x80000001B1A80400, 0xD000000000000024, 0x80000001B1A80470);
            goto LABEL_42;
          }

          v71 = 0;
          v72 = 0;
          if (([v67 mark_] & 1) == 0)
          {
LABEL_42:

            sub_1B1A4C0E4();
            swift_allocError();
            *v58 = 0;
            *(v58 + 4) = 1;
            swift_willThrow();
            return;
          }

          v70 = v24;
          sub_1B1A4A3D4(v60, v61, a3, &v70, 0, 0);
        }

        return;
      }

      *v60 = 0;
      *v61 = xmmword_1B1A7E120;
      *(v61 + 16) = 1;
    }

    break;
  }
}

unint64_t sub_1B1A4AC04()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v4 = 0;
  [v0 readTag:&v5 type:&v4];
  if (![v0 hasError])
  {
    return v5 | (v4 << 32);
  }

  if (qword_1EDB764F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for InternalLogger(0);
  __swift_project_value_buffer(v1, qword_1EDB770A8);
  sub_1B1A561D8(0x2064616572206270, 0xEE002E726F727265, 0xD000000000000060, 0x80000001B1A80400, 0xD000000000000016, 0x80000001B1A80570);
  sub_1B1A4C0E4();
  swift_allocError();
  *v2 = 0;
  *(v2 + 4) = 1;
  return swift_willThrow();
}

void sub_1B1A4AD74(uint64_t a1, int a2, uint64_t a3, id a4)
{
  v5 = a4;
  if (a2 <= 1)
  {
    if (!a2)
    {
      [a4 writeTag:a1 andType:a3];
      v23 = [v4 readVarInt];
      if ((v23 & 0x8000000000000000) == 0)
      {
        [v5 writeBareVarint_];
        return;
      }

      __break(1u);
      goto LABEL_23;
    }

    if (a2 == 1)
    {
      [a4 writeFixed64:objc_msgSend(v4 forTag:{sel_readFixed64, a3), a1}];
      return;
    }

LABEL_17:
    LODWORD(v5) = a2;
    if (qword_1EDB764F0 == -1)
    {
LABEL_18:
      v24 = type metadata accessor for InternalLogger(0);
      __swift_project_value_buffer(v24, qword_1EDB770A8);
      sub_1B1A7CEC8();

      v25 = WireTypes.description.getter(v5);
      MEMORY[0x1B2736400](v25);

      sub_1B1A561D8(0xD000000000000012, 0x80000001B1A80500, 0xD000000000000060, 0x80000001B1A80400, 0xD000000000000021, 0x80000001B1A80540);

      sub_1B1A4C0E4();
      swift_allocError();
      *v26 = v5;
      *(v26 + 4) = 0;
      swift_willThrow();
      return;
    }

LABEL_23:
    swift_once();
    goto LABEL_18;
  }

  switch(a2)
  {
    case 2:
      v7 = [v4 readBytes_];
      if (v7)
      {
        v8 = v7;
        v9 = sub_1B1A7C888();
        v11 = v10;

        sub_1B1A4C414(v9, v11);
        v12 = sub_1B1A7C878();
        sub_1B1A4696C(v9, v11);
      }

      else
      {
        v12 = 0;
        v9 = 0;
        v11 = 0xF000000000000000;
      }

      [v5 writeData:v12 forTag:a1];

      sub_1B1A4C400(v9, v11);
      break;
    case 3:
      v13 = swift_allocObject();
      *(v13 + 16) = v4;
      *(v13 + 24) = a1;
      *(v13 + 32) = v5;
      v14 = type metadata accessor for BlockShimForPBCodable();
      v15 = objc_allocWithZone(v14);
      *&v15[OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_error] = 0;
      v16 = &v15[OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_block];
      *v16 = sub_1B1A4C4BC;
      v16[1] = v13;
      v27.receiver = v15;
      v27.super_class = v14;
      v17 = v4;
      v18 = v5;

      v19 = objc_msgSendSuper2(&v27, sel_init);
      if (v19)
      {
        v20 = v19;
        PBDataWriterWriteSubgroup();
        v21 = *&v20[OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_error];
        if (v21)
        {
          swift_willThrow();
          v22 = v21;
        }
      }

      else
      {
        __break(1u);
      }

      break;
    case 5:
      [a4 writeFixed32:objc_msgSend(v4 forTag:{sel_readFixed32, a3), a1}];
      return;
    default:
      goto LABEL_17;
  }
}

void sub_1B1A4B134(void *a1, int a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (![a1 hasMoreData])
  {
    return;
  }

  v6 = 0x1E7AF1000;
  v7 = 0x1E7AF1000;
  v8 = &OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_error;
  while (1)
  {
    LODWORD(v35) = 0;
    v37 = 0;
    [a1 *(v6 + 2112)];
    if ([a1 *(v7 + 2120)])
    {
      if (qword_1EDB764F0 != -1)
      {
        goto LABEL_40;
      }

      goto LABEL_31;
    }

    v16 = v35;
    if (v35 == a2)
    {
      break;
    }

    if (v37 > 1u)
    {
      if (v37 != 2)
      {
        if (v37 != 3)
        {
          if (v37 != 5)
          {
            goto LABEL_36;
          }

          goto LABEL_21;
        }

LABEL_24:
        v17 = swift_allocObject();
        *(v17 + 16) = a1;
        *(v17 + 24) = v16;
        *(v17 + 32) = a3;
        v18 = type metadata accessor for BlockShimForPBCodable();
        v19 = objc_allocWithZone(v18);
        *&v19[*v8] = 0;
        v20 = &v19[OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_block];
        *v20 = sub_1B1A4C4BC;
        v20[1] = v17;
        v34.receiver = v19;
        v34.super_class = v18;
        v21 = a1;
        v22 = a3;

        v23 = objc_msgSendSuper2(&v34, sel_init);
        if (!v23)
        {
          __break(1u);
        }

        v24 = v23;
        PBDataWriterWriteSubgroup();
        v25 = *&v24[*v8];
        if (v25)
        {
          swift_willThrow();
          v29 = v25;

          return;
        }

        v6 = 0x1E7AF1000;
LABEL_6:
        v7 = 0x1E7AF1000uLL;
        goto LABEL_7;
      }

LABEL_3:
      v9 = v8;
      v10 = [a1 readBytes_];
      if (v10)
      {
        v11 = v10;
        v12 = sub_1B1A7C888();
        v14 = v13;

        sub_1B1A4C414(v12, v14);
        v15 = sub_1B1A7C878();
        sub_1B1A4696C(v12, v14);
      }

      else
      {
        v15 = 0;
        v12 = 0;
        v14 = 0xF000000000000000;
      }

      [a3 writeData:v15 forTag:v16];

      sub_1B1A4C400(v12, v14);
      v6 = 0x1E7AF1000uLL;
      v8 = v9;
      goto LABEL_6;
    }

    if (v37)
    {
LABEL_23:
      [a3 writeFixed64:objc_msgSend(a1 forTag:{sel_readFixed64), v35}];
      goto LABEL_7;
    }

LABEL_27:
    [a3 writeTag:v35 andType:?];
    v26 = [a1 readVarInt];
    if ((v26 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_40:
      swift_once();
LABEL_31:
      v27 = type metadata accessor for InternalLogger(0);
      __swift_project_value_buffer(v27, qword_1EDB770A8);
      sub_1B1A561D8(0x2064616572206270, 0xEE002E726F727265, 0xD000000000000060, 0x80000001B1A80400, 0xD000000000000016, 0x80000001B1A80570);
      sub_1B1A4C0E4();
      swift_allocError();
      *v28 = 0;
      *(v28 + 4) = 1;
LABEL_32:
      swift_willThrow();
      return;
    }

    [a3 writeBareVarint_];
LABEL_7:
    if (([a1 hasMoreData] & 1) == 0)
    {
      return;
    }
  }

  if (v37 <= 2u)
  {
    if (v37)
    {
      if (v37 == 1)
      {
        goto LABEL_23;
      }

      goto LABEL_3;
    }

    goto LABEL_27;
  }

  if (v37 == 3)
  {
    goto LABEL_24;
  }

  if (v37 == 5)
  {
LABEL_21:
    [a3 writeFixed32:objc_msgSend(a1 forTag:{sel_readFixed32), v35}];
    goto LABEL_7;
  }

  if (v37 != 4)
  {
LABEL_36:
    v30 = v37;
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v31, qword_1EDB770A8);
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v35 = 0xD000000000000012;
    v36 = 0x80000001B1A80500;
    v32 = WireTypes.description.getter(v30);
    MEMORY[0x1B2736400](v32);

    sub_1B1A561D8(v35, v36, 0xD000000000000060, 0x80000001B1A80400, 0xD000000000000021, 0x80000001B1A80540);

    sub_1B1A4C0E4();
    swift_allocError();
    *v33 = v30;
    *(v33 + 4) = 0;
    goto LABEL_32;
  }
}

void sub_1B1A4B6B8(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v54 = *MEMORY[0x1E69E9840];
  if (a2 <= 1)
  {
    if (!a2)
    {
      *a3 = [v4 readVarInt];
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      return;
    }

    if (a2 != 1)
    {
LABEL_16:
      LODWORD(v15) = a2;
      if (qword_1EDB764F0 != -1)
      {
        goto LABEL_59;
      }

      goto LABEL_17;
    }

    v6 = [v4 readFixed64];
    v7 = 0x2000000000000000;
    *a3 = v6;
    goto LABEL_11;
  }

  if (a2 == 2)
  {
    v8 = [v4 readBytes_];
    if (!v8)
    {
      goto LABEL_61;
    }

    v9 = v8;
    v10 = sub_1B1A7C888();
    v12 = v11;

    v7 = v12 | 0x3000000000000000;
    *a3 = v10;
LABEL_11:
    *(a3 + 8) = v7;
    *(a3 + 16) = 0;
    return;
  }

  if (a2 != 3)
  {
    if (a2 == 5)
    {
      *a3 = [v4 readFixed32];
      *(a3 + 8) = 0x1000000000000000;
      *(a3 + 16) = 0;
      return;
    }

    goto LABEL_16;
  }

  v14 = [objc_allocWithZone(MEMORY[0x1E69C65C0]) init];
  if (!v14)
  {
    goto LABEL_62;
  }

  v15 = v14;
  if (![v4 hasMoreData])
  {
LABEL_51:
    v41 = [v15 immutableData];
    if (v41)
    {
      v42 = v41;
      v43 = sub_1B1A7C888();
      v45 = v44;

      *a3 = v43;
      *(a3 + 8) = v45;
    }

    else
    {

      *a3 = xmmword_1B1A7E120;
    }

    *(a3 + 16) = 1;
    return;
  }

  v16 = 0x1E7AF1000;
  v17 = 0x1E7AF1000;
  while (1)
  {
    LODWORD(v52) = 0;
    v51 = 0;
    [v4 *(v16 + 2112)];
    if ([v4 *(v17 + 2120)])
    {
      if (qword_1EDB764F0 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for InternalLogger(0);
      __swift_project_value_buffer(v38, qword_1EDB770A8);
      sub_1B1A561D8(0x2064616572206270, 0xEE002E726F727265, 0xD000000000000060, 0x80000001B1A80400, 0xD000000000000016, 0x80000001B1A80570);
      sub_1B1A4C0E4();
      swift_allocError();
      *v39 = 0;
      *(v39 + 4) = 1;
      goto LABEL_48;
    }

    v27 = v52;
    if (v52 == a1)
    {
      if (v51 > 2u)
      {
        if (v51 != 3)
        {
          if (v51 != 5)
          {
            if (v51 == 4)
            {
              goto LABEL_51;
            }

LABEL_55:
            v46 = v51;
            if (qword_1EDB764F0 != -1)
            {
              swift_once();
            }

            v47 = type metadata accessor for InternalLogger(0);
            __swift_project_value_buffer(v47, qword_1EDB770A8);
            v52 = 0;
            v53 = 0xE000000000000000;
            sub_1B1A7CEC8();

            v52 = 0xD000000000000012;
            v53 = 0x80000001B1A80500;
            v48 = WireTypes.description.getter(v46);
            MEMORY[0x1B2736400](v48);

            sub_1B1A561D8(v52, v53, 0xD000000000000060, 0x80000001B1A80400, 0xD000000000000021, 0x80000001B1A80540);

            sub_1B1A4C0E4();
            swift_allocError();
            *v49 = v46;
            *(v49 + 4) = 0;
LABEL_48:
            swift_willThrow();

            return;
          }

          goto LABEL_36;
        }

LABEL_39:
        v28 = swift_allocObject();
        *(v28 + 16) = v4;
        *(v28 + 24) = v27;
        *(v28 + 32) = v15;
        v29 = type metadata accessor for BlockShimForPBCodable();
        v30 = objc_allocWithZone(v29);
        *&v30[OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_error] = 0;
        v31 = &v30[OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_block];
        *v31 = sub_1B1A4C3DC;
        v31[1] = v28;
        v50.receiver = v30;
        v50.super_class = v29;
        v32 = v4;

        v33 = v15;
        v34 = objc_msgSendSuper2(&v50, sel_init);
        if (!v34)
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          return;
        }

        v35 = v34;
        PBDataWriterWriteSubgroup();
        v36 = *&v35[OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_error];
        if (v36)
        {
          swift_willThrow();
          v40 = v36;

          return;
        }

        goto LABEL_21;
      }

      if (!v51)
      {
        goto LABEL_42;
      }

      if (v51 == 1)
      {
        goto LABEL_38;
      }

      goto LABEL_18;
    }

    if (v51 <= 1u)
    {
      break;
    }

    if (v51 != 2)
    {
      if (v51 != 3)
      {
        if (v51 != 5)
        {
          goto LABEL_55;
        }

LABEL_36:
        [v15 writeFixed32:objc_msgSend(v4 forTag:{sel_readFixed32), v52}];
        goto LABEL_22;
      }

      goto LABEL_39;
    }

LABEL_18:
    v21 = [v4 readBytes_];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1B1A7C888();
      v25 = v24;

      sub_1B1A4C414(v23, v25);
      v26 = sub_1B1A7C878();
      sub_1B1A4696C(v23, v25);
    }

    else
    {
      v26 = 0;
      v23 = 0;
      v25 = 0xF000000000000000;
    }

    [v15 writeData:v26 forTag:v27];

    sub_1B1A4C400(v23, v25);
LABEL_21:
    v16 = 0x1E7AF1000uLL;
    v17 = 0x1E7AF1000uLL;
LABEL_22:
    if (([v4 hasMoreData] & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  if (v51)
  {
LABEL_38:
    [v15 writeFixed64:objc_msgSend(v4 forTag:{sel_readFixed64), v52}];
    goto LABEL_22;
  }

LABEL_42:
  [v15 writeTag:v52 andType:?];
  v37 = [v4 readVarInt];
  if ((v37 & 0x8000000000000000) == 0)
  {
    [v15 writeBareVarint_];
    goto LABEL_22;
  }

  __break(1u);
LABEL_59:
  swift_once();
LABEL_17:
  v18 = type metadata accessor for InternalLogger(0);
  __swift_project_value_buffer(v18, qword_1EDB770A8);
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_1B1A7CEC8();

  v52 = 0xD000000000000012;
  v53 = 0x80000001B1A80500;
  v19 = WireTypes.description.getter(v15);
  MEMORY[0x1B2736400](v19);

  sub_1B1A561D8(v52, v53, 0xD000000000000060, 0x80000001B1A80400, 0xD00000000000001FLL, 0x80000001B1A80520);

  sub_1B1A4C0E4();
  swift_allocError();
  *v20 = v15;
  *(v20 + 4) = 0;
  swift_willThrow();
}

void sub_1B1A4BEC0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  v9 = objc_allocWithZone(MEMORY[0x1E69C65B8]);
  v10 = sub_1B1A7C878();
  v11 = [v9 initWithData_];

  if (!v11)
  {
    sub_1B1A4C0E4();
    swift_allocError();
    *v13 = 0;
    *(v13 + 4) = 1;
    swift_willThrow();
    return;
  }

  v12 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v12)
    {
      a3 = BYTE6(a4);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v12 != 2)
  {
    a3 = 0;
    goto LABEL_13;
  }

  v15 = *(a3 + 16);
  v14 = *(a3 + 24);
  a3 = v14 - v15;
  if (__OFSUB__(v14, v15))
  {
    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      __break(1u);
      goto LABEL_19;
    }

    a3 = HIDWORD(a3) - a3;
  }

LABEL_13:
  v16 = [objc_allocWithZone(MEMORY[0x1E69C65C0]) initWithInitialCapacity_];
  if (!v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v16;
  v24 = MEMORY[0x1E69E7CD0];
  LOBYTE(v22) = v8;
  Set<>.optimized(for:)(&v22, a2);

  v19 = sub_1B1A4E6F0(v18);
  v23 = v8;
  v22 = 0;
  sub_1B1A497F4(&v23, v19, v17, &v22, &v24, 0, 0);
  if (v4)
  {

    return;
  }

  v20 = [v17 immutableData];
  if (v20)
  {
    v21 = v20;

    sub_1B1A7C888();

    return;
  }

LABEL_20:
  __break(1u);
}

unint64_t sub_1B1A4C0E4()
{
  result = qword_1EB75E440;
  if (!qword_1EB75E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E440);
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

uint64_t get_enum_tag_for_layout_string_8Dendrite9WireValueO(uint64_t a1)
{
  v1 = (*(a1 + 8) >> 60) & 3 | (4 * (*(a1 + 16) & 1));
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B1A4C18C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FB && *(a1 + 17))
  {
    return (*a1 + 1019);
  }

  v3 = ((*(a1 + 8) >> 60) & 3 | (4 * *(a1 + 16))) ^ 0x3FF;
  if (v3 >= 0x3FA)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B1A4C1E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FA)
  {
    *(result + 16) = 0;
    *result = a2 - 1019;
    *(result + 8) = 0;
    if (a3 >= 0x3FB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (-a2 & 3) << 60;
      *(result + 16) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_1B1A4C240(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 8) = *(result + 8) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    *(result + 16) = a2 == 4;
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0x1000000000000000;
    *(result + 16) = 1;
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ProtoTagTreeOperationError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProtoTagTreeOperationError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1B1A4C2E8(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1A4C308(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
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

uint64_t sub_1B1A4C3CC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_1B1A4C400(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_1B1A4696C(a1, a2);
  }
}

uint64_t sub_1B1A4C414(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1B1A4C520@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  v9 = type metadata accessor for DataFrameStreamTypedIterator.Element(0, a4, a5, a4);
  v10 = *(*(a4 - 8) + 32);
  v11 = a6 + *(v9 + 40);

  return v10(v11, a3, a4);
}

uint64_t sub_1B1A4C5C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t sub_1B1A4C5E0(__int128 *a1, char a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 64) = 0;
  *(v6 + 88) = 0;
  sub_1B1A4E364(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 92) = a3;
  return v6;
}

uint64_t sub_1B1A4C648(__int128 *a1, char a2, char a3)
{
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 88) = 0;
  *(v3 + 80) = 0;
  sub_1B1A4E364(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 92) = a3;
  return v3;
}

uint64_t sub_1B1A4C694()
{
  v1 = v0;
  v2 = sub_1B1A7C808();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DataFrameStreamContainer(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1A4E37C(v0 + 16, &v37);
  v9 = v40;
  __swift_project_boxed_opaque_existential_1(&v37, v40);
  v10 = (*(*(&v9 + 1) + 16))(v9, *(&v9 + 1));
  if (!v10)
  {
    __swift_destroy_boxed_opaque_existential_1(&v37);
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v24, qword_1EDB770A8);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v42 = 0xD000000000000016;
    v43 = 0x80000001B1A80710;
    sub_1B1A4E37C(v0 + 16, &v37);
    v25 = v40;
    __swift_project_boxed_opaque_existential_1(&v37, v40);
    (*(*(&v25 + 1) + 8))(v25, *(&v25 + 1));
    (*(v3 + 16))(v5, &v8[*(v6 + 20)], v2);
    sub_1B1A4DCF4(v8);
    sub_1B1A4DD9C();
    v26 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v26);

    (*(v3 + 8))(v5, v2);
    __swift_destroy_boxed_opaque_existential_1(&v37);
    sub_1B1A561C0(v42, v43, 0xD00000000000006FLL, 0x80000001B1A80620, 0x6D6765537478656ELL, 0xED00002928746E65);

    return 0;
  }

  v11 = v10;
  __swift_destroy_boxed_opaque_existential_1(&v37);
  v12 = *(v1 + 80);
  v13 = v36;
  if (!v12 || (v14 = v11[2]) == 0)
  {
LABEL_11:
    v20 = v11[2];
    if (*(v1 + 56) == 1)
    {
      if (!v20)
      {
        goto LABEL_27;
      }

      v21 = &v11[2 * v20 + 2];
      v22 = v21 + 1;
      v23 = 1;
    }

    else
    {
      if (!v20)
      {
        goto LABEL_27;
      }

      v23 = 0;
      v21 = v11 + 4;
      v22 = v11 + 5;
    }

LABEL_25:
    v27 = *v21;
    v28 = *v22;

    sub_1B1A4E37C(v1 + 16, &v42);
    v29 = v44;
    v30 = v45;
    __swift_project_boxed_opaque_existential_1(&v42, v44);
    (*(v30 + 24))(&v37, v27, v28, v29, v30);
    if (v13)
    {

      return __swift_destroy_boxed_opaque_existential_1(&v42);
    }

    v31 = v38;
    if (v38)
    {
      v32 = v41;
      v33 = v39;
      v34 = v37;
      v36 = v40;
      __swift_destroy_boxed_opaque_existential_1(&v42);
      *(v1 + 72) = v27;
      *(v1 + 80) = v28;

      type metadata accessor for DataFrameStreamSegment.Iterator();
      result = swift_allocObject();
      *(result + 76) = 0;
      *(result + 80) = 1;
      v35 = v36;
      *(result + 24) = *(*(v36 + 16) + 24);
      *(result + 32) = v34;
      *(result + 40) = v31;
      *(result + 48) = v33;
      *(result + 56) = v35;
      *(result + 72) = v32;
      *(result + 16) = v23;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_1(&v42);
    return 0;
  }

  v15 = 0;
  v16 = 0;
  v17 = *(v1 + 72);
  while (1)
  {
    result = v11[v15 + 4];
    if (result == v17 && v12 == v11[v15 + 5])
    {
      break;
    }

    result = sub_1B1A7CFB8();
    if (result)
    {
      break;
    }

    ++v16;
    v15 += 2;
    if (v14 == v16)
    {
      goto LABEL_11;
    }
  }

  if (*(v1 + 56) != 1)
  {
    if (v16 < v11[2] - 1)
    {
      v23 = 0;
      v21 = &v11[v15 + 6];
      v22 = &v11[v15 + 7];
      goto LABEL_25;
    }

LABEL_27:

    return 0;
  }

  if (!v16)
  {
    goto LABEL_27;
  }

  if (v16 <= v11[2])
  {
    v21 = &v11[v15 + 2];
    v22 = &v11[v15 + 3];
    v23 = 1;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1A4CB90@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v90 = a1;
  v94 = *v2;
  v4 = *(v94 + 80);
  v102 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a2);
  v79 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v76 - v7;
  v87 = sub_1B1A7C808();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B1A7CE18();
  v93 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v76 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v76 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v76 - v17;
  v19 = type metadata accessor for DataFrameStreamContainer(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v2 + 2;
  sub_1B1A4E37C((v2 + 2), &v105);
  v22 = v108;
  v23 = v109;
  __swift_project_boxed_opaque_existential_1(&v105, v108);
  (*(v23 + 8))(v22, v23);
  v82 = v19;
  v24 = &v21[*(v19 + 20)];
  v25 = type metadata accessor for StorageContainer(0);
  LOBYTE(v24) = _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0(*&v24[*(v25 + 20)]);
  v83 = v21;
  sub_1B1A4DCF4(v21);
  __swift_destroy_boxed_opaque_existential_1(&v105);
  if (v24)
  {
    v26 = v102;
    (*(v102 + 56))(v18, 1, 1, v4);
    v27 = v93;
    v28 = *(v93 + 16);
    v91 = v18;
    v99 = v28;
    v100 = v93 + 16;
    v28(v15, v18, v9);
    v29 = *(v26 + 48);
    v101 = v15;
    v97 = v29;
    v98 = v26 + 48;
    v30 = v29(v15, 1, v4);
    v31 = *(v27 + 8);
    v96 = v27 + 8;
    if (v30 == 1)
    {
      v32 = 0;
      v76 = (v27 + 32);
      v33 = 1;
      v93 = v9;
      v34 = v91;
      v89 = v3;
      v95 = v31;
      v88 = v4;
      while (2)
      {
        v77 = v33;
        v78 = v32;
        v35 = v101;
        while (1)
        {
          v31(v35, v9);
          if (v3[8])
          {
            v38 = v3[8];
          }

          else
          {
            v38 = sub_1B1A4C694();
            v9 = v93;
          }

          v3[8] = v38;

          if (!v3[8])
          {
            v64 = type metadata accessor for DataFrameStreamTypedIterator.Element(0, v4, *(v94 + 88), v39);
            (*(*(v64 - 8) + 56))(v90, 1, 1, v64);
            goto LABEL_25;
          }

          sub_1B1A759A8(&v105);
          v40 = v108;
          if (v108 >> 60 != 15)
          {
            break;
          }

          v3[8] = 0;

          v35 = v101;
          v99(v101, v34, v9);
          v36 = v97(v35, 1, v4);
          v37 = v102;
          v31 = v95;
          if (v36 != 1)
          {
            v42 = v78;
            LODWORD(v78) = v77;
            v52 = v90;
            goto LABEL_19;
          }
        }

        v41 = v105;
        v42 = v106;
        v43 = v107;
        v44 = *(v94 + 88);
        v45 = v4;
        v46 = *(v44 + 16);
        sub_1B1A4C414(v107, v108);
        v46(v43, v40, v45, v44);
        v34 = v91;
        v47 = v93;
        v48 = v95;
        v95(v91, v93);
        sub_1B1A4DE0C(v41, v42, v43, v40);

        (*v76)(v34, v92, v47);
        v49 = v41;
        v9 = v47;
        sub_1B1A4DE0C(v49, v42, v43, v40);
        v50 = v101;
        v99(v101, v34, v9);
        v4 = v88;
        v51 = v97(v50, 1, v88);
        v31 = v48;
        v33 = 0;
        LODWORD(v78) = 0;
        v32 = v42;
        v52 = v90;
        v3 = v89;
        v37 = v102;
        if (v51 == 1)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v37 = v26;
      LODWORD(v78) = 1;
      v42 = 0;
      v52 = v90;
      v34 = v91;
    }

LABEL_19:
    v65 = v31;
    v31(v101, v9);
    v66 = v81;
    v99(v81, v34, v9);
    if (v97(v66, 1, v4) == 1)
    {
      v65(v66, v9);
LABEL_23:
      v71 = type metadata accessor for DataFrameStreamTypedIterator.Element(0, v4, *(v94 + 88), v67);
      (*(*(v71 - 8) + 56))(v52, 1, 1, v71);
      sub_1B1A4D96C(v34, v3);
      return (v65)(v34, v9);
    }

    v95 = v65;
    v68 = v66;
    v69 = *(v37 + 32);
    v70 = v80;
    v69(v80, v68, v4);
    if (v78)
    {
      (*(v37 + 8))(v70, v4);
      v65 = v95;
      goto LABEL_23;
    }

    LODWORD(v102) = *(v3 + 22);
    v72 = v79;
    v69(v79, v70, v4);
    v73 = *(v94 + 88);
    *v52 = v102;
    *(v52 + 8) = v42;
    v75 = type metadata accessor for DataFrameStreamTypedIterator.Element(0, v4, v73, v74);
    v69((v52 + *(v75 + 40)), v72, v4);
    (*(*(v75 - 8) + 56))(v52, 0, 1, v75);
LABEL_25:
    sub_1B1A4D96C(v34, v3);
    return (v95)(v34, v9);
  }

  else
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v53, qword_1EDB770A8);
    v105 = 0;
    v106 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v103 = 0xD000000000000018;
    v104 = 0x80000001B1A80600;
    sub_1B1A4E37C(v84, &v105);
    v54 = v108;
    v55 = v109;
    __swift_project_boxed_opaque_existential_1(&v105, v108);
    v56 = v83;
    (*(v55 + 8))(v54, v55);
    v57 = v86;
    v58 = v85;
    v59 = v87;
    (*(v86 + 16))(v85, v56 + *(v82 + 20), v87);
    sub_1B1A4DCF4(v56);
    sub_1B1A4DD9C();
    v60 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v60);

    (*(v57 + 8))(v58, v59);
    __swift_destroy_boxed_opaque_existential_1(&v105);
    sub_1B1A561D8(v103, v104, 0xD00000000000006FLL, 0x80000001B1A80620, 0x29287478656ELL, 0xE600000000000000);

    v62 = type metadata accessor for DataFrameStreamTypedIterator.Element(0, v4, *(v94 + 88), v61);
    return (*(*(v62 - 8) + 56))(v90, 1, 1, v62);
  }
}

uint64_t sub_1B1A4D96C(uint64_t a1, _DWORD *a2)
{
  v4 = *(*a2 + 80);
  v5 = sub_1B1A7CE18();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  (*(v6 + 16))(&v14 - v8, a1, v5, v7);
  LODWORD(a1) = (*(*(v4 - 8) + 48))(v9, 1, v4);
  result = (*(v6 + 8))(v9, v5);
  if (a1 != 1)
  {
    v11 = a2[22];
    v12 = __CFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      a2[22] = v13;
    }
  }

  return result;
}

uint64_t DataFrameStreamTypedIterator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t DataFrameStreamTypedIterator.__deallocating_deinit()
{
  DataFrameStreamTypedIterator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1B1A4DB28@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(**v1 + 264))();

  *a1 = v3;
  return result;
}

uint64_t sub_1B1A4DBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DataFrameStreamTypedIterator(0, *(a1 + 80), *(a1 + 88), a4);
  v7 = sub_1B1A54E2C(v4, v6, a2);

  return v7;
}

void sub_1B1A4DBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DataFrameStreamTypedIterator(0, *(a4 + 80), *(a4 + 88), a4);

  JUMPOUT(0x1B27364B0);
}

uint64_t sub_1B1A4DCF4(uint64_t a1)
{
  v2 = type metadata accessor for DataFrameStreamContainer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

unint64_t sub_1B1A4DD9C()
{
  result = qword_1EDB76838;
  if (!qword_1EDB76838)
  {
    sub_1B1A7C808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB76838);
  }

  return result;
}

void sub_1B1A4DE0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 != 15)
  {
    sub_1B1A4696C(a3, a4);
  }
}

uint64_t sub_1B1A4DF48(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B1A4DFD0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((((a1 + 11) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((((a1 + 11) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_1B1A4E138(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
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

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = (((a1 + 11) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

  v18(v19);
}

uint64_t sub_1B1A4E364(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1B1A4E37C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B1A4E460()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B1A4E4B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {

LABEL_20:
    *(a2 + 24) = 1;
  }

  v4 = (a1 + 32);

  v5 = a2;
  while (1)
  {
    v7 = *v4++;
    v6 = v7;
    swift_beginAccess();
    v8 = *(v5 + 16);
    if (*(v8 + 16) && (v9 = sub_1B1A71800(v6), (v10 & 1) != 0))
    {
      a2 = *(*(v8 + 56) + 8 * v9);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E460, &qword_1B1A7E590);
      a2 = swift_allocObject();
      *(a2 + 16) = MEMORY[0x1E69E7CC8];
      *(a2 + 24) = 0;
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v5 + 16);
    *(v5 + 16) = 0x8000000000000000;
    v13 = sub_1B1A71800(v6);
    v15 = v12[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v12[3] < v18)
    {
      sub_1B1A718DC(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_1B1A71800(v6);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_23;
      }

LABEL_14:
      if (v19)
      {
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v23 = v13;
    sub_1B1A7305C();
    v13 = v23;
    if (v19)
    {
LABEL_3:
      *(v12[7] + 8 * v13) = a2;

      goto LABEL_4;
    }

LABEL_15:
    v12[(v13 >> 6) + 8] |= 1 << v13;
    *(v12[6] + 4 * v13) = v6;
    *(v12[7] + 8 * v13) = a2;
    v21 = v12[2];
    v17 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v17)
    {
      goto LABEL_22;
    }

    v12[2] = v22;
LABEL_4:
    *(v5 + 16) = v12;
    swift_endAccess();

    v5 = a2;
    if (!--v3)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1B1A7CFF8();
  __break(1u);
  return result;
}

uint64_t sub_1B1A4E6F0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E460, &qword_1B1A7E590);
  result = swift_allocObject();
  v3 = result;
  v4 = 0;
  v5 = *(a1 + 56);
  *(result + 16) = MEMORY[0x1E69E7CC8];
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  *(result + 24) = 0;
  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v5) != 0)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v3;
    }

    v8 = *(a1 + 56 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      do
      {
LABEL_9:
        v8 &= v8 - 1;

        sub_1B1A4E4B0(v11, v3);
      }

      while (v8);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1A4E824()
{
  v1 = *v0;
  sub_1B1A7D058();
  MEMORY[0x1B2736930](v1);
  return sub_1B1A7D098();
}

uint64_t sub_1B1A4E898(uint64_t a1)
{
  v2 = *v1;
  sub_1B1A7D058();
  MEMORY[0x1B2736930](v2);
  return sub_1B1A7D098();
}

void *sub_1B1A4E8DC(void *a1, uint64_t a2)
{
  v2[5] = a2;
  v4 = a2 + 24;
  if (__OFADD__(a2, 24))
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v4 < a2)
  {
LABEL_22:
    __break(1u);
    swift_once();
    v12 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v12, qword_1EDB770A8);
    sub_1B1A7CEC8();
    MEMORY[0x1B2736400](0xD000000000000019, 0x80000001B1A808C0);
    v13 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v13);

    MEMORY[0x1B2736400](0xD000000000000014, 0x80000001B1A808E0);
    v14 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v14);

    MEMORY[0x1B2736400](0xD000000000000010, 0x80000001B1A80900);
    sub_1B1A561D8(0, 0xE000000000000000, 0xD000000000000062, 0x80000001B1A807E0, 0xD000000000000021, 0x80000001B1A80920);

    goto LABEL_19;
  }

  v5 = v2;
  v6 = a1[4];
  v7 = a1[3] > a2 || v6 < a2;
  if (v7 || v6 < v4)
  {
    goto LABEL_19;
  }

  v9 = a1[2] + a2;
  v5[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E478, &qword_1B1A7E6A8);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v5[4] = v10;
  v11 = sub_1B1A6BD44(0, 0, 1, *(v9 + 4));
  v15 = v5[5];
  v16 = v15 + 24;
  if (__OFADD__(v15, 24))
  {
    __break(1u);
    goto LABEL_24;
  }

  v17 = v16 + v11;
  if (__OFADD__(v16, v11))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v17 < v16)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_17;
  }

  v18 = a1[3];
  if (v16 >= v18)
  {
    v19 = a1[4];
    if (v16 <= v19 && v17 >= v18 && v19 >= v17)
    {
      v20 = a1[2];

      v5[3] = v20 + v16;
      return v5;
    }
  }

  if (qword_1EDB764F0 != -1)
  {
    goto LABEL_26;
  }

LABEL_17:
  v21 = type metadata accessor for InternalLogger(0);
  __swift_project_value_buffer(v21, qword_1EDB770A8);
  sub_1B1A7CEC8();
  result = MEMORY[0x1B2736400](0xD00000000000001ALL, 0x80000001B1A80950);
  if (!__OFADD__(v5[5], 24))
  {
    v23 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v23);

    MEMORY[0x1B2736400](0xD000000000000016, 0x80000001B1A80970);
    v24 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v24);

    MEMORY[0x1B2736400](0xD000000000000014, 0x80000001B1A808E0);
    v25 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v25);

    MEMORY[0x1B2736400](0xD000000000000010, 0x80000001B1A80900);
    sub_1B1A561D8(0, 0xE000000000000000, 0xD000000000000062, 0x80000001B1A807E0, 0xD000000000000021, 0x80000001B1A80920);

LABEL_19:

    type metadata accessor for DataFrameReader();
    swift_deallocPartialClassInstance();
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1A4ED8C()
{
  v1 = *(*(*(v0 + 32) + 16) + 4);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + 24);
  if (v1 <= 0xE)
  {
    return sub_1B1A4F9CC(v2, &v2[v1]);
  }

  sub_1B1A7C728();
  swift_allocObject();
  sub_1B1A7C6C8();
  if (v1 < 0x7FFFFFFF)
  {
    return v1 << 32;
  }

  sub_1B1A7C868();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v1;
  return result;
}

size_t sub_1B1A4EE44@<X0>(uint64_t a1@<X0>, size_t *a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v6 = atomic_load((v5 + 9));
  v7 = 2048;
  while (1)
  {
    if (atomic_load((v5 + 8)))
    {
      goto LABEL_5;
    }

    v12 = *(*(v4 + 16) + 4);
    if (v12)
    {
      v13 = *(a1 + 24);
      if (v12 <= 0xE)
      {
        memset(__dst, 0, sizeof(__dst));
        v18 = v12;
        memcpy(__dst, v13, v12);
        result = *__dst;
        v2 = v2 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v18 << 16)) << 32);
        v9 = v2;
      }

      else
      {
        sub_1B1A7C728();
        swift_allocObject();
        v14 = sub_1B1A7C6C8();
        if (v12 >= 0x7FFFFFFF)
        {
          sub_1B1A7C868();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v12;
          v9 = v14 | 0x8000000000000000;
        }

        else
        {
          result = v12 << 32;
          v9 = v14 | 0x4000000000000000;
        }
      }
    }

    else
    {
      result = 0;
      v9 = 0xC000000000000000;
    }

    v10 = atomic_load((v5 + 9));
    if (v10 == v6)
    {
      break;
    }

    sub_1B1A4696C(result, v9);
    v6 = v10;
LABEL_5:
    if (!--v7)
    {
      sub_1B1A50208();
      swift_allocError();
      *v15 = 0;
      return swift_willThrow();
    }
  }

  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_1B1A4F008(void (*a1)(uint64_t, unint64_t), uint64_t a2)
{
  v36 = a1;
  v35[1] = a2;
  v41 = sub_1B1A7C808();
  v3 = MEMORY[0x1EEE9AC00](v41);
  v40 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[0] = v2;
  v5 = 0x80000001B1A807B0;
  v6 = *(*(v2 + 32) + 16);
  v43 = "e state, current state was: ";
  v44 = "g to acquire write lock.";
  v39 = (v7 + 8);
  v3.n128_u64[0] = 136315650;
  v38 = v3;
  v8 = 1;
  v42 = v6;
  do
  {
    v10 = 0;
    v9 = v8;
    atomic_compare_exchange_strong((v6 + 8), &v10, 1u);
    v46 = v10 == 0;
    if (!v10)
    {
      break;
    }

    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v11, qword_1EDB770A8);
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v48 = 0xD00000000000002CLL;
    v49 = v5;
    LOBYTE(v50) = v10;
    v12 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v12);

    MEMORY[0x1B2736400](41, 0xE100000000000000);
    v13 = v49;
    v47 = v48;

    v14 = sub_1B1A7C978();
    v15 = sub_1B1A7CD88();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v48 = v45;
      *v16 = v38.n128_u32[0];
      v17 = v40;
      sub_1B1A7C798();
      v18 = v9;
      v19 = v5;
      v20 = sub_1B1A7C7A8();
      v22 = v21;
      (*v39)(v17, v41);
      v23 = v20;
      v5 = v19;
      v9 = v18;
      v24 = sub_1B1A56884(v23, v22, &v48);

      *(v16 + 4) = v24;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1B1A56884(0xD00000000000001BLL, v44 | 0x8000000000000000, &v48);
      *(v16 + 22) = 2080;
      *(v16 + 24) = sub_1B1A56884(v47, v13, &v48);
      _os_log_impl(&dword_1B1A45000, v14, v15, "[%s: %s] %s", v16, 0x20u);
      v25 = v45;
      swift_arrayDestroy();
      MEMORY[0x1B27370E0](v25, -1, -1);
      v26 = v16;
      v6 = v42;
      MEMORY[0x1B27370E0](v26, -1, -1);
    }

    v8 = v9 + 1;
  }

  while ((v9 - 1) < 0x800);
  if (v9 != 1)
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v27, qword_1EDB770A8);
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v48 = 0x206E757053;
    v49 = 0xE500000000000000;
    v50 = v9;
    v28 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v28);

    MEMORY[0x1B2736400](0xD000000000000028, 0x80000001B1A80870);
    sub_1B1A561C0(v48, v49, 0xD000000000000062, v43 | 0x8000000000000000, 0xD00000000000001BLL, v44 | 0x8000000000000000);
  }

  if (v46)
  {
    atomic_store(2u, (v6 + 8));
    atomic_fetch_add((v6 + 9), 1u);
    v29 = sub_1B1A4ED8C();
    v31 = v30;
    v32 = v37;
    v36(v29, v30);
    sub_1B1A4696C(v29, v31);
    if (!v32)
    {
      atomic_fetch_add((v6 + 9), 1u);
    }

    atomic_store(0, (v6 + 8));
  }

  else
  {
    sub_1B1A50208();
    swift_allocError();
    *v33 = 1;
    swift_willThrow();
  }

  return 1;
}

uint64_t sub_1B1A4F534()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for DataFrameConsistencyError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DataFrameConsistencyError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B1A4F704()
{
  result = qword_1EB75E468;
  if (!qword_1EB75E468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E468);
  }

  return result;
}

void sub_1B1A4F758(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v31[0] = a1;
      LOWORD(v31[1]) = a2;
      BYTE2(v31[1]) = BYTE2(a2);
      BYTE3(v31[1]) = BYTE3(a2);
      BYTE4(v31[1]) = BYTE4(a2);
      BYTE5(v31[1]) = BYTE5(a2);
      v10 = a5 >> 62;
      v11 = *(a3 + 24);
      if ((a5 >> 62) > 1)
      {
        if (v10 != 2)
        {
LABEL_41:
          v13 = 0;
          goto LABEL_42;
        }

        v28 = *(a4 + 16);
        v12 = *(a4 + 24);
        v13 = v12 - v28;
        if (!__OFSUB__(v12, v28))
        {
          goto LABEL_31;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v10)
      {
        LODWORD(v12) = HIDWORD(a4) - a4;
        if (!__OFSUB__(HIDWORD(a4), a4))
        {
          v13 = v12;
LABEL_31:
          if ((v13 & 0x8000000000000000) == 0)
          {
            goto LABEL_42;
          }

          __break(1u);
          goto LABEL_33;
        }

        goto LABEL_48;
      }

LABEL_28:
      v13 = BYTE6(a5);
      goto LABEL_42;
    }

    v22 = a1;
    v23 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v32 = a6;
      v16 = sub_1B1A7C6D8();
      if (!v16)
      {
        goto LABEL_19;
      }

      v24 = sub_1B1A7C708();
      if (!__OFSUB__(v22, v24))
      {
        v16 += v22 - v24;
LABEL_19:
        v25 = sub_1B1A7C6F8();
        if (v25 >= v23)
        {
          v21 = v23;
        }

        else
        {
          v21 = v25;
        }

        goto LABEL_22;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    __break(1u);
    goto LABEL_45;
  }

  if (v9 == 2)
  {
    v32 = a6;
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v16 = sub_1B1A7C6D8();
    if (v16)
    {
      v17 = sub_1B1A7C708();
      if (__OFSUB__(v15, v17))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v16 += v15 - v17;
    }

    v18 = __OFSUB__(v14, v15);
    v19 = v14 - v15;
    if (!v18)
    {
      v20 = sub_1B1A7C6F8();
      if (v20 >= v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v20;
      }

LABEL_22:
      v26 = &v16[v21];
      if (v16)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      sub_1B1A6A6E0(v16, v27, a3, a4, a5);
      goto LABEL_43;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  memset(v31, 0, 14);
  v11 = *(a3 + 24);
  v12 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (v12)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

LABEL_33:
  v13 = 0;
  if (v12 != 2)
  {
    goto LABEL_42;
  }

  v30 = *(a4 + 16);
  v29 = *(a4 + 24);
  v13 = v29 - v30;
  if (!__OFSUB__(v29, v30))
  {
    goto LABEL_39;
  }

  __break(1u);
LABEL_37:
  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    v13 = HIDWORD(a4) - a4;
LABEL_39:
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_41;
    }

LABEL_42:
    memcpy(v11, v31, v13);
LABEL_43:

    sub_1B1A4696C(a4, a5);
    return;
  }

LABEL_50:
  __break(1u);
}

uint64_t sub_1B1A4F9CC(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
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

void sub_1B1A4FA84(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8, unsigned int a9, unint64_t *a10)
{
  v73 = a5;
  v70 = a8;
  v71 = a7;
  v72 = a6;
  v75 = a3;
  v76 = a4;
  v77 = a2;
  v68 = a10;
  v69 = a9;
  v81 = sub_1B1A7C808();
  v12 = MEMORY[0x1EEE9AC00](v81);
  v80 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 32);
  v86 = 0x80000001B1A807B0;
  v15 = *(v14 + 16);
  v82 = "e state, current state was: ";
  v83 = "aFrameReader.swift";
  v79 = (v16 + 8);
  v12.n128_u64[0] = 136315650;
  v78 = v12;
  v17 = 1;
  do
  {
    v19 = 0;
    v18 = v17;
    atomic_compare_exchange_strong((v15 + 8), &v19, 1u);
    v20 = v19 == 0;
    if (!v19)
    {
      break;
    }

    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v21, qword_1EDB770A8);
    v88 = 0;
    v89 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v88 = 0xD00000000000002CLL;
    v89 = v86;
    LOBYTE(v90) = v19;
    v22 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v22);

    MEMORY[0x1B2736400](41, 0xE100000000000000);
    v23 = v89;
    v87 = v88;

    v24 = sub_1B1A7C978();
    v25 = sub_1B1A7CD88();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v85 = v20;
      v27 = v26;
      v84 = swift_slowAlloc();
      v88 = v84;
      *v27 = v78.n128_u32[0];
      v28 = v80;
      sub_1B1A7C798();
      v29 = v18;
      v30 = sub_1B1A7C7A8();
      v31 = v15;
      v33 = v32;
      (*v79)(v28, v81);
      v34 = v30;
      v18 = v29;
      v35 = sub_1B1A56884(v34, v33, &v88);
      v15 = v31;

      *(v27 + 4) = v35;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_1B1A56884(0xD000000000000015, v83 | 0x8000000000000000, &v88);
      *(v27 + 22) = 2080;
      *(v27 + 24) = sub_1B1A56884(v87, v23, &v88);
      _os_log_impl(&dword_1B1A45000, v24, v25, "[%s: %s] %s", v27, 0x20u);
      v36 = v84;
      swift_arrayDestroy();
      MEMORY[0x1B27370E0](v36, -1, -1);
      v37 = v27;
      v20 = v85;
      MEMORY[0x1B27370E0](v37, -1, -1);
    }

    v17 = v18 + 1;
  }

  while ((v18 - 1) <= 0x7FF);
  if (v18 != 1)
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v38, qword_1EDB770A8);
    v88 = 0;
    v89 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v88 = 0x206E757053;
    v89 = 0xE500000000000000;
    v90 = v18;
    v39 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v39);

    MEMORY[0x1B2736400](0xD000000000000028, 0x80000001B1A80870);
    sub_1B1A561C0(v88, v89, 0xD000000000000062, v82 | 0x8000000000000000, 0xD000000000000015, v83 | 0x8000000000000000);
  }

  if (!v20)
  {
    sub_1B1A50208();
    swift_allocError();
    *v43 = 1;
    swift_willThrow();
    goto LABEL_54;
  }

  atomic_store(2u, (v15 + 8));
  atomic_fetch_add((v15 + 9), 1u);
  v40 = *(v77 + 32);
  v41 = atomic_load((*(v40 + 16) + 4));
  if (v41)
  {
    bzero(*(v77 + 24), v41);
  }

  v42 = v76 >> 62;
  if ((v76 >> 62) > 1)
  {
    if (v42 != 2)
    {
      if (v41)
      {
        LODWORD(v51) = 0;
        v52 = *(v40 + 16);
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    v45 = *(v75 + 16);
    v44 = *(v75 + 24);
    v46 = __OFSUB__(v44, v45);
    v47 = v44 - v45;
    if (v46)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (v47 <= v41)
    {
      goto LABEL_27;
    }

LABEL_23:
    v48 = v74;
    v49 = v72(v11);
    if (!v48)
    {
      if (v50)
      {
        goto LABEL_53;
      }

      v53 = v70;
      v54 = 8 * v69 + 8;
      v55 = *(*(v70 + 32) + 16);
      v56 = *(v55 + 32);
      v46 = __OFSUB__(v56, v54);
      v57 = v56 - v54;
      if (!v46)
      {
        atomic_exchange((*(v55 + 16) + v57 + 4), 5u);
        atomic_fetch_add((*(*(v53 + 24) + 16) + 20), 1u);
        atomic_store(v49, (*(v40 + 16) + 16));
        *v73 = 1;
        v58 = v68;
        *v68 = v49;
        *(v58 + 8) = 0;
        goto LABEL_53;
      }

      goto LABEL_60;
    }

    atomic_store(0, (v15 + 8));
LABEL_54:

    return;
  }

  if (!v42)
  {
    if (BYTE6(v76) <= v41)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (__OFSUB__(HIDWORD(v75), v75))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (HIDWORD(v75) - v75 > v41)
  {
    goto LABEL_23;
  }

LABEL_27:
  if (v42 == 2)
  {
    v60 = *(v75 + 16);
    v59 = *(v75 + 24);
    v46 = __OFSUB__(v59, v60);
    v61 = v59 - v60;
    if (v46)
    {
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v61 == v41)
    {
      goto LABEL_52;
    }

    goto LABEL_42;
  }

  if (v42 != 1)
  {
    if (BYTE6(v76) != v41)
    {
      goto LABEL_42;
    }

LABEL_52:
    v64 = v77;

    v66 = v75;
    v65 = v76;
    sub_1B1A4C414(v75, v76);
    sub_1B1A4F758(v66, v65, v64, v66, v65, v67);
    *v73 = 1;
LABEL_53:
    atomic_fetch_add((v15 + 9), 1u);
    atomic_store(0, (v15 + 8));
    goto LABEL_54;
  }

  if (__OFSUB__(HIDWORD(v75), v75))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (HIDWORD(v75) - v75 == v41)
  {
    goto LABEL_52;
  }

LABEL_42:
  v52 = *(v40 + 16);
  if (v42 != 2)
  {
    if (v42 != 1)
    {
LABEL_50:
      LODWORD(v51) = BYTE6(v76);
      goto LABEL_51;
    }

    LODWORD(v51) = HIDWORD(v75) - v75;
    if (__OFSUB__(HIDWORD(v75), v75))
    {
      goto LABEL_61;
    }

    v51 = v51;
    goto LABEL_47;
  }

  v63 = *(v75 + 16);
  v62 = *(v75 + 24);
  v46 = __OFSUB__(v62, v63);
  v51 = v62 - v63;
  if (!v46)
  {
LABEL_47:
    if ((v51 & 0x8000000000000000) == 0)
    {
      if (HIDWORD(v51))
      {
        __break(1u);
        goto LABEL_50;
      }

LABEL_51:
      atomic_store(v51, (v52 + 4));
      goto LABEL_52;
    }

    __break(1u);
    goto LABEL_56;
  }

LABEL_62:
  __break(1u);
}

unint64_t sub_1B1A50208()
{
  result = qword_1EB75E470;
  if (!qword_1EB75E470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E470);
  }

  return result;
}

uint64_t sub_1B1A5025C(uint64_t a1)
{
  result = sub_1B1A502E8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StorageContainer(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B1A502E8()
{
  result = qword_1EDB76858[0];
  if (!qword_1EDB76858[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDB76858);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataFrameStreamContainer.ConfigurationState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 5))
  {
    return (*a1 + 127);
  }

  v3 = ((*(a1 + 4) >> 7) & 0xFFFFFF81 | (2 * ((*(a1 + 4) >> 1) & 0x3F))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for DataFrameStreamContainer.ConfigurationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 4) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 4) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_1B1A50430()
{
  v55[2] = *MEMORY[0x1E69E9840];
  v2 = sub_1B1A7C768();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B1A7C808();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  v13 = type metadata accessor for DataFrameStreamContainer(0);
  v14 = *(v13 + 24);
  v15 = *(v0 + v14);
  if ((v15 | (*(v0 + v14 + 4) << 32)) < 0)
  {
    v51 = v15 | (*(v0 + v14 + 4) << 32);
    v52 = v12;
    v48 = v14;
    v49 = v9;
    v53 = v1;
    v54 = v15;
    v50 = v7;
    v16 = v0 + *(v13 + 20);
    v17 = type metadata accessor for StorageContainer(0);
    if (_s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0(*(v16 + *(v17 + 20))))
    {
      v47 = v0;
      v55[0] = 0x6769666E6F63;
      v55[1] = 0xE600000000000000;
      (*(v3 + 104))(v5, *MEMORY[0x1E6968F70], v2);
      sub_1B1A47F94();
      sub_1B1A7C7F8();
      (*(v3 + 8))(v5, v2);
      v18 = [objc_opt_self() defaultManager];
      LOBYTE(v55[0]) = 0;
      sub_1B1A7C7E8();
      v19 = sub_1B1A7CA58();

      v20 = [v18 fileExistsAtPath:v19 isDirectory:v55];

      if (v20)
      {
        v21 = v53;
        LODWORD(v22) = v54;
        v23 = v49;
        v24 = v50;
        v25 = v6;
        if ((v55[0] & 1) == 0)
        {
          v26 = v52;
          v27 = sub_1B1A7C828();
          if (v21)
          {
            (*(v50 + 8))(v26, v25);
            return v15;
          }

          v38 = v27;
          v39 = v28;
          sub_1B1A7C678();
          swift_allocObject();
          sub_1B1A7C668();
          sub_1B1A53670();
          sub_1B1A7C658();
          sub_1B1A4696C(v38, v39);

          if ((v51 & 0x100000000) != 0 || LODWORD(v55[0]) == v54)
          {
            v31 = *(v50 + 8);
            v54 = LODWORD(v55[0]);
            goto LABEL_24;
          }

          sub_1B1A7C7D8();
          v41 = _s8Dendrite7StorageV21ensureDirectoryExists12directoryURLSb10Foundation0G0V_tFZ_0();
          v31 = *(v50 + 8);
          v31(v23, v25);
          if (v41)
          {
            sub_1B1A7C6A8();
            swift_allocObject();
            sub_1B1A7C698();
            LODWORD(v55[0]) = v54;
            sub_1B1A5361C();
            v43 = sub_1B1A7C688();
            v45 = v44;

            sub_1B1A7C898();
            sub_1B1A4696C(v43, v45);
LABEL_24:
            v31(v26, v25);
            v40 = v47;
            goto LABEL_25;
          }

LABEL_16:
          sub_1B1A535C8();
          swift_allocError();
          *v34 = 0;
          swift_willThrow();
          v31(v26, v25);
          return v15;
        }
      }

      else
      {
        v21 = v53;
        LODWORD(v22) = v54;
        v23 = v49;
        v24 = v50;
        v25 = v6;
      }

      v26 = v52;
      if ((v51 & 0x100000000) != 0)
      {
        v22 = 0x100000;
      }

      else
      {
        v22 = v22;
      }

      sub_1B1A7C7D8();
      v30 = _s8Dendrite7StorageV21ensureDirectoryExists12directoryURLSb10Foundation0G0V_tFZ_0();
      v31 = *(v24 + 8);
      v31(v23, v25);
      if (v30)
      {
        sub_1B1A7C6A8();
        swift_allocObject();
        sub_1B1A7C698();
        LODWORD(v55[0]) = v22;
        sub_1B1A5361C();
        v32 = sub_1B1A7C688();
        if (v21)
        {

          v31(v26, v25);
          return v15;
        }

        v35 = v32;
        v36 = v33;
        v54 = v22;

        sub_1B1A7C898();
        sub_1B1A4696C(v35, v36);
        v31(v26, v25);
        v40 = v47;
LABEL_25:
        v42 = v40 + v48;
        *(v42 + 4) = 0;
        v15 = v54;
        *v42 = v54;
        return v15;
      }

      goto LABEL_16;
    }

    v15 = v54;
    if ((v51 & 0x100000000) != 0)
    {
      sub_1B1A535C8();
      swift_allocError();
      *v29 = 1;
      swift_willThrow();
    }
  }

  return v15;
}

uint64_t sub_1B1A50B70()
{
  v39 = *MEMORY[0x1E69E9840];
  v0 = sub_1B1A7C808();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B1A51000();
  if (result)
  {
    v5 = *(result + 16);
    if (v5)
    {
      v8 = *(v1 + 16);
      v6 = v1 + 16;
      v7 = v8;
      v9 = (*(v6 + 64) + 32) & ~*(v6 + 64);
      v25 = result;
      v10 = result + v9;
      v11 = (v6 - 8);
      v33 = *(v6 + 56);
      v34 = v6;
      v27 = "Unable to create lock file at: ";
      v28 = 0x80000001B1A80A40;
      v32 = "Deleting bad segment file ";
      v26 = "cleanupBadSegmentFiles()";
      v29 = (v6 - 8);
      v30 = v8;
      v8(v3, result + v9, v0);
      while (1)
      {
        v37 = sub_1B1A7C7A8();
        v38 = v15;
        v35 = 37;
        v36 = 0xE100000000000000;
        sub_1B1A47F94();
        v16 = sub_1B1A7CE38();

        if (v16)
        {
          if (qword_1EDB764F0 != -1)
          {
            swift_once();
          }

          v17 = type metadata accessor for InternalLogger(0);
          v18 = __swift_project_value_buffer(v17, qword_1EDB770A8);
          v37 = 0;
          v38 = 0xE000000000000000;
          sub_1B1A7CEC8();

          v37 = 0xD00000000000001ALL;
          v38 = v28;
          sub_1B1A4DD9C();
          v19 = sub_1B1A7CF98();
          MEMORY[0x1B2736400](v19);

          v20 = v27;
          v31 = v18;
          sub_1B1A561F0(v37, v38, 0xD00000000000006BLL, v27 | 0x8000000000000000, 0xD000000000000018, v32 | 0x8000000000000000);

          v21 = [objc_opt_self() defaultManager];
          v22 = sub_1B1A7C7B8();
          v37 = 0;
          v23 = [v21 removeItemAtURL:v22 error:&v37];

          if (v23)
          {
            v24 = v37;
          }

          else
          {
            v12 = v37;
            v13 = sub_1B1A7C758();

            swift_willThrow();
            v37 = 0;
            v38 = 0xE000000000000000;
            sub_1B1A7CEC8();
            MEMORY[0x1B2736400](0xD000000000000022, v26 | 0x8000000000000000);
            v14 = sub_1B1A7CF98();
            MEMORY[0x1B2736400](v14);

            MEMORY[0x1B2736400](8250, 0xE200000000000000);
            v35 = v13;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E458, &qword_1B1A7E390);
            sub_1B1A7CF18();
            sub_1B1A561D8(v37, v38, 0xD00000000000006BLL, v20 | 0x8000000000000000, 0xD000000000000018, v32 | 0x8000000000000000);
          }

          v11 = v29;
          v7 = v30;
        }

        (*v11)(v3, v0);
        v10 += v33;
        if (!--v5)
        {
          break;
        }

        v7(v3, v10, v0);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1B1A51000()
{
  v0 = sub_1B1A7C808();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - v5;
  type metadata accessor for DataFrameStreamContainer(0);
  v7 = sub_1B1A6F870();
  v9 = v7;
  v29 = v3;
  if (!v7)
  {
    return 0;
  }

  v28 = v7[2];
  v23 = 0;
  if (v28)
  {
    v10 = 0;
    v27 = v1 + 16;
    v24 = (v1 + 8);
    v30 = (v1 + 32);
    v11 = MEMORY[0x1E69E7CC0];
    v25 = v1;
    v26 = v0;
    while (1)
    {
      if (v10 >= v9[2])
      {
        __break(1u);
        goto LABEL_22;
      }

      v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v13 = *(v1 + 72);
      (*(v1 + 16))(v6, v9 + v12 + v13 * v10, v0);
      if (sub_1B1A7C778() == 0x746E656D676573 && v14 == 0xE700000000000000)
      {
        break;
      }

      v16 = sub_1B1A7CFB8();

      v15 = v29;
      if (v16)
      {
        goto LABEL_13;
      }

      (*v24)(v6, v0);
LABEL_7:
      if (v28 == ++v10)
      {
        goto LABEL_19;
      }
    }

    v15 = v29;
LABEL_13:
    v17 = v9;
    v18 = *v30;
    (*v30)(v15, v6, v0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B1A6EE3C(0, *(v11 + 16) + 1, 1);
      v15 = v29;
      v11 = v31;
    }

    v21 = *(v11 + 16);
    v20 = *(v11 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_1B1A6EE3C((v20 > 1), v21 + 1, 1);
      v15 = v29;
      v11 = v31;
    }

    *(v11 + 16) = v21 + 1;
    v22 = v11 + v12 + v21 * v13;
    v0 = v26;
    v18(v22, v15, v26);
    v9 = v17;
    v1 = v25;
    goto LABEL_7;
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_19:

  v31 = v11;

  v10 = v23;
  sub_1B1A51BE0(&v31);
  if (v10)
  {
LABEL_22:

    __break(1u);
  }

  else
  {

    return v31;
  }

  return result;
}

void sub_1B1A51338(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B1A7C768();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DataFrameStreamContainer(0);
  v13[0] = a1;
  v13[1] = a2;

  MEMORY[0x1B2736400](0x746E656D6765732ELL, 0xE800000000000000);
  (*(v8 + 104))(v10, *MEMORY[0x1E6968F70], v7);
  sub_1B1A47F94();
  sub_1B1A7C7F8();
  (*(v8 + 8))(v10, v7);

  static Storage.ensureFileExists(fileURL:)(v13);
  if (v3)
  {
    goto LABEL_2;
  }

  if (LOBYTE(v13[0]) != 2 && (v13[0] & 1) == 0)
  {
    sub_1B1A536C8();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 2;
    swift_willThrow();
LABEL_2:
    v11 = sub_1B1A7C808();
    (*(*(v11 - 8) + 8))(a3, v11);
  }
}

char *sub_1B1A51554()
{
  v27 = sub_1B1A7C808();
  v0 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v2 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v23 - v4;
  v6 = sub_1B1A51000();
  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + 16);
  if (v7)
  {
    v9 = *(v0 + 16);
    v8 = v0 + 16;
    v10 = *(v8 + 64);
    v23[1] = v6;
    v11 = v6 + ((v10 + 32) & ~v10);
    v24 = *(v8 + 56);
    v25 = v9;
    v26 = v8;
    v12 = (v8 - 8);
    v13 = MEMORY[0x1E69E7CC0];
    do
    {
      v14 = v27;
      v25(v5, v11, v27);
      sub_1B1A7C7C8();
      v15 = sub_1B1A7C7A8();
      v17 = v16;
      v18 = *v12;
      (*v12)(v2, v14);
      v18(v5, v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1B1A7927C(0, *(v13 + 2) + 1, 1, v13);
      }

      v20 = *(v13 + 2);
      v19 = *(v13 + 3);
      if (v20 >= v19 >> 1)
      {
        v13 = sub_1B1A7927C((v19 > 1), v20 + 1, 1, v13);
      }

      *(v13 + 2) = v20 + 1;
      v21 = &v13[16 * v20];
      *(v21 + 4) = v15;
      *(v21 + 5) = v17;
      v11 += v24;
      --v7;
    }

    while (v7);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v13;
}

uint64_t sub_1B1A51778()
{
  v2 = v1;
  v3 = sub_1B1A7C768();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B1A7C808();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DataFrameStreamContainer(0);
  v25 = 1801678700;
  v26 = 0xE400000000000000;
  (*(v4 + 104))(v6, *MEMORY[0x1E6968F70], v3);
  sub_1B1A47F94();
  sub_1B1A7C7F8();
  (*(v4 + 8))(v6, v3);
  v11 = *v0;
  sub_1B1A7C7E8();
  v12 = sub_1B1A7CA58();

  v13 = [v11 fileExistsAtPath_];

  if ((v13 & 1) == 0)
  {
    sub_1B1A7C7E8();
    v15 = sub_1B1A7CA58();

    v16 = [v11 createFileAtPath:v15 contents:0 attributes:0];

    if ((v16 & 1) == 0)
    {
      if (qword_1EDB764F0 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for InternalLogger(0);
      __swift_project_value_buffer(v19, qword_1EDB770A8);
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1B1A7CEC8();

      v25 = 0xD00000000000001FLL;
      v26 = 0x80000001B1A80990;
      v20 = sub_1B1A7C7E8();
      MEMORY[0x1B2736400](v20);

      sub_1B1A561D8(v25, v26, 0xD00000000000006BLL, 0x80000001B1A809B0, 0xD000000000000015, 0x80000001B1A80A20);

      v2 = sub_1B1A7C7E8();
      v22 = v21;
      sub_1B1A536C8();
      swift_allocError();
      *v23 = v2;
      *(v23 + 8) = v22;
      *(v23 + 16) = 0;
      swift_willThrow();
      goto LABEL_11;
    }
  }

  if (qword_1EDB767A8 != -1)
  {
    v14 = swift_once();
  }

  v17 = qword_1EDB770E0;
  MEMORY[0x1EEE9AC00](v14);
  *(&v25 - 2) = v10;

  os_unfair_lock_lock((v17 + 24));
  sub_1B1A5371C((v17 + 16), &v25);
  v18 = (v17 + 24);
  if (v1)
  {
    os_unfair_lock_unlock(v18);

LABEL_11:
    (*(v8 + 8))(v10, v7);
    return v2;
  }

  os_unfair_lock_unlock(v18);
  v2 = v25;

  (*(v8 + 8))(v10, v7);
  return v2;
}

void sub_1B1A51BE0(uint64_t *a1)
{
  v2 = *(sub_1B1A7C808() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1B1A535B4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1B1A51C88(v5);
  *a1 = v3;
}

void sub_1B1A51C88(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B1A7CF88();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B1A7C808();
        v6 = sub_1B1A7CC78();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1B1A7C808() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B1A520C0(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1B1A51DB4(0, v2, 1, a1);
  }
}

void sub_1B1A51DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1B1A7C808();
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v34 - v11;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v13 + 16);
    v46 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v42 = (v13 + 32);
    v43 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      (v45)(v47, v21, v8, v14);
      v24(v48, v23, v8);
      v25 = sub_1B1A7C7A8();
      v27 = v26;
      if (v25 == sub_1B1A7C7A8() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        v22(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = &v39[v35];
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_6;
      }

      v29 = sub_1B1A7CFB8();

      v30 = *v18;
      (*v18)(v48, v8);
      v30(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1B1A520C0(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_1B1A7C808();
  MEMORY[0x1EEE9AC00](v9);
  v139 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v150 = &v129 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v155 = &v129 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v154 = &v129 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v147 = &v129 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v146 = &v129 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v134 = &v129 - v22;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v133 = &v129 - v26;
  v27 = a3[1];
  v144 = v24;
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v31 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v156 = v29;
      v123 = *(v29 + 16);
      if (v123 >= 2)
      {
        do
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v29 + 16 * v123);
          a3 = v29;
          v127 = *(v29 + 16 * (v123 - 1) + 32);
          v29 = *(v29 + 16 * (v123 - 1) + 40);
          sub_1B1A52C7C(v124 + *(v5 + 72) * v126, (v124 + *(v5 + 72) * v127), (v124 + *(v5 + 72) * v29), v31);
          if (v6)
          {
            break;
          }

          if (v29 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_1B1A533A4(a3);
          }

          if (v123 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v128 = &a3[2 * v123];
          *v128 = v126;
          v128[1] = v29;
          v156 = a3;
          sub_1B1A53318(v123 - 1);
          v29 = v156;
          v123 = v156[2];
          a3 = v125;
        }

        while (v123 > 1);
      }

LABEL_113:

      return;
    }

LABEL_135:
    v29 = sub_1B1A533A4(v29);
    goto LABEL_105;
  }

  v130 = a4;
  v28 = 0;
  v152 = v24 + 16;
  v153 = (v24 + 8);
  v151 = (v24 + 32);
  v29 = MEMORY[0x1E69E7CC0];
  v136 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v138 = v28;
    if (v28 + 1 < v27)
    {
      v142 = v27;
      v131 = v29;
      v32 = *a3;
      v33 = *(v144 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v144 + 16);
      v35(v133, v34, v9, v25);
      v145 = v33;
      v141 = v35;
      (v35)(v134, v32 + v33 * v30, v9);
      v31 = sub_1B1A7C7A8();
      v37 = v36;
      v38 = sub_1B1A7C7A8();
      v132 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_1B1A7CFB8();
      }

      v40 = *v153;
      (*v153)(v134, v9);
      v140 = v40;
      v40(v133, v9);
      v41 = (v138 + 2);
      v42 = v145 * (v138 + 2);
      v43 = v32 + v42;
      v44 = v145 * v5;
      v45 = v32 + v145 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v41;
        v49 = v141;
        (v141)(v146, v43, v9);
        v49(v147, v45, v9);
        v50 = sub_1B1A7C7A8();
        v52 = v51;
        if (v50 == sub_1B1A7C7A8() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_1B1A7CFB8();
        }

        a3 = v149;

        v31 = v140;
        v140(v147, v9);
        (v31)(v146, v9);
        v47 = v143 ^ v46;
        v41 = (a3 + 1);
        v43 += v145;
        v45 += v145;
        v48 = v148;
        v5 = v148 + 1;
        v44 = v6 + v145;
        v42 = v29 + v145;
      }

      while ((v47 & 1) == 0);
      if (v143)
      {
        v30 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v54 = v138 * v145;
          v55 = v138;
          do
          {
            if (v55 != v48)
            {
              v57 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v149 = *v151;
              v149(v139, (v57 + v54), v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v149((v57 + v6), v139, v9);
              v30 = v138;
              v48 = v5;
            }

            ++v55;
            v6 -= v145;
            v29 -= v145;
            v54 += v145;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
      }

      else
      {
        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
      }
    }

    v58 = a3[1];
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1B1A5349C(0, *(v29 + 16) + 1, 1, v29);
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      v29 = sub_1B1A5349C((v75 > 1), v76 + 1, 1, v29);
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_1B1A52C7C(v118 + *(v144 + 72) * v119, (v118 + *(v144 + 72) * v120), (v118 + *(v144 + 72) * v29), v79);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_1B1A533A4(a3);
        }

        if (v117 >= a3[2])
        {
          goto LABEL_116;
        }

        v121 = &a3[2 * v117];
        v121[4] = v119;
        v121[5] = v29;
        v156 = a3;
        sub_1B1A53318(v31);
        v29 = v156;
        v77 = v156[2];
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v145;
    if (v145 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v130);
  if (__OFADD__(v30, v130))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v131 = v29;
  v132 = v6;
  v60 = *a3;
  v61 = *(v144 + 72);
  v62 = *(v144 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v148 = -v61;
  v149 = v60;
  v64 = v30 - v31;
  v137 = v61;
  v65 = v60 + v31 * v61;
  v140 = v59;
LABEL_43:
  v145 = v31;
  v141 = v65;
  v142 = v64;
  v143 = v63;
  v67 = v63;
  while (1)
  {
    v62(v154, v65, v9);
    (v62)(v155, v67);
    v5 = sub_1B1A7C7A8();
    v69 = v68;
    if (v5 == sub_1B1A7C7A8() && v69 == v70)
    {

      v66 = *v153;
      (*v153)(v155, v9);
      v66(v154, v9);
LABEL_42:
      v31 = v145 + 1;
      v63 = v143 + v137;
      v64 = v142 - 1;
      v65 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v31 = v140;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_1B1A7CFB8();

    v71 = *v153;
    (*v153)(v155, v9);
    v71(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v72 = v150;
    v5 = v151;
    v73 = *v151;
    (*v151)(v150, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v72, v9);
    v67 += v148;
    v65 += v148;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_1B1A52C7C(unint64_t a1, char *a2, char *a3, char *a4)
{
  v70 = sub_1B1A7C808();
  v8 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v58 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v58 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v58 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_70;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v19 = &a2[-a1] / v17;
  v73 = a1;
  v72 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || &a2[v21] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = &a4[v21];
    if (v21 < 1)
    {
      v43 = &a4[v21];
    }

    else
    {
      v62 = a4;
      v63 = (v8 + 16);
      v61 = (v8 + 8);
      v41 = -v17;
      v42 = &a4[v21];
      v43 = v40;
      v64 = v41;
      while (2)
      {
        while (1)
        {
          v59 = v43;
          v44 = &a2[v41];
          v68 = &a2[v41];
          v65 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v73 = a2;
              v71 = v59;
              goto LABEL_68;
            }

            v46 = a3;
            v60 = v43;
            v47 = *v63;
            v69 = (v42 + v41);
            v48 = v70;
            (v47)(v66);
            (v47)(v67, v44, v48);
            v49 = sub_1B1A7C7A8();
            v51 = v50;
            if (v49 == sub_1B1A7C7A8() && v51 == v52)
            {
              v53 = 0;
            }

            else
            {
              v53 = sub_1B1A7CFB8();
            }

            v41 = v64;
            a3 = v64 + v46;
            v54 = *v61;
            v55 = v70;
            (*v61)(v67, v70);
            v54(v66, v55);
            if (v53)
            {
              break;
            }

            v56 = v69;
            v43 = v69;
            if (v46 < v42 || a3 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v44 = v68;
            }

            else
            {
              v44 = v68;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v43;
            v45 = v56 > v62;
            a2 = v65;
            if (!v45)
            {
              goto LABEL_66;
            }
          }

          if (v46 < v65 || a3 >= v65)
          {
            break;
          }

          a2 = v68;
          v57 = v62;
          v43 = v60;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_66;
          }
        }

        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v43 = v60;
        if (v42 > v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v73 = a2;
    v71 = v43;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v67 = &a4[v20];
    v71 = &a4[v20];
    if (v20 >= 1 && a2 < a3)
    {
      v23 = *(v8 + 16);
      v65 = v17;
      v66 = (v8 + 16);
      v63 = (v8 + 8);
      v64 = v23;
      do
      {
        v24 = a3;
        v25 = a2;
        v26 = a2;
        v27 = v70;
        v28 = v64;
        v64(v68, v26, v70);
        v28(v69, a4, v27);
        v29 = sub_1B1A7C7A8();
        v31 = v30;
        if (v29 == sub_1B1A7C7A8() && v31 == v32)
        {

          v33 = *v63;
          v34 = v70;
          (*v63)(v69, v70);
          v33(v68, v34);
        }

        else
        {
          v35 = sub_1B1A7CFB8();

          v36 = *v63;
          v37 = v70;
          (*v63)(v69, v70);
          v36(v68, v37);
          if (v35)
          {
            a2 = &v65[v25];
            a3 = v24;
            if (a1 < v25 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v39 = v65;
            goto LABEL_37;
          }
        }

        v38 = a4;
        v39 = v65;
        a4 = &v65[a4];
        a2 = v25;
        a3 = v24;
        if (a1 < v38 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v38)
        {
          swift_arrayInitWithTakeBackToFront();
          v72 = a4;
          goto LABEL_37;
        }

        v72 = a4;
LABEL_37:
        a1 += v39;
        v73 = a1;
      }

      while (a4 < v67 && a2 < a3);
    }
  }

LABEL_68:
  sub_1B1A533B8(&v73, &v72, &v71);
}

uint64_t sub_1B1A53318(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B1A533A4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1B1A533B8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1B1A7C808();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1B1A5349C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E488, ",Q");
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_1B1A535C8()
{
  result = qword_1EB75E480;
  if (!qword_1EB75E480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E480);
  }

  return result;
}

unint64_t sub_1B1A5361C()
{
  result = qword_1EDB76460;
  if (!qword_1EDB76460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB76460);
  }

  return result;
}

unint64_t sub_1B1A53670()
{
  result = qword_1EDB76530;
  if (!qword_1EDB76530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB76530);
  }

  return result;
}

unint64_t sub_1B1A536C8()
{
  result = qword_1EB75E490;
  if (!qword_1EB75E490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E490);
  }

  return result;
}

uint64_t sub_1B1A53738@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4C0, &qword_1B1A7E770);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4B8, &unk_1B1A7E738);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17[-v11];
  v13 = OBJC_IVAR____TtC8Dendrite12EmptyPromise____lazy_storage___fulfillmentStream;
  swift_beginAccess();
  sub_1B1A47E6C(v1 + v13, v12, &qword_1EB75E4B8, &unk_1B1A7E738);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4A0, "6Q");
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    return (*(v15 + 32))(a1, v12, v14);
  }

  sub_1B1A48194(v12, &qword_1EB75E4B8, &unk_1B1A7E738);
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8650], v3);
  sub_1B1A7CD58();
  (*(v15 + 16))(v9, a1, v14);
  (*(v15 + 56))(v9, 0, 1, v14);
  swift_beginAccess();
  sub_1B1A548D8(v9, v1 + v13, &qword_1EB75E4B8, &unk_1B1A7E738);
  return swift_endAccess();
}

uint64_t sub_1B1A53A18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4B0, &qword_1B1A7E730);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E498, "2Q");
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC8Dendrite12EmptyPromise_streamContinuation;
  swift_beginAccess();
  sub_1B1A548D8(v6, a2 + v9, &qword_1EB75E4B0, &qword_1B1A7E730);
  return swift_endAccess();
}

uint64_t EmptyPromise.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC8Dendrite12EmptyPromise_streamContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E498, "2Q");
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC8Dendrite12EmptyPromise____lazy_storage___fulfillmentStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4A0, "6Q");
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  return v0;
}

uint64_t EmptyPromise.init()()
{
  v1 = OBJC_IVAR____TtC8Dendrite12EmptyPromise_streamContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E498, "2Q");
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC8Dendrite12EmptyPromise____lazy_storage___fulfillmentStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4A0, "6Q");
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  return v0;
}

uint64_t sub_1B1A53D0C()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4A0, "6Q");
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4A8, &qword_1B1A7E728);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1A53E40, 0, 0);
}

uint64_t sub_1B1A53E40()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1B1A53738(v1);
  sub_1B1A7CD38();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1B1A53F34;
  v5 = v0[6];

  return MEMORY[0x1EEE6D9C8](v0 + 10, 0, 0, v5);
}

uint64_t sub_1B1A53F34()
{

  return MEMORY[0x1EEE6DFA0](sub_1B1A54030, 0, 0);
}

uint64_t sub_1B1A54030()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B1A540B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4B0, &qword_1B1A7E730);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E498, "2Q");
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4A0, "6Q");
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17[-v13];
  sub_1B1A53738(&v17[-v13]);
  (*(v12 + 8))(v14, v11);
  v15 = OBJC_IVAR____TtC8Dendrite12EmptyPromise_streamContinuation;
  swift_beginAccess();
  sub_1B1A47E6C(v0 + v15, v6, &qword_1EB75E4B0, &qword_1B1A7E730);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1B1A48194(v6, &qword_1EB75E4B0, &qword_1B1A7E730);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_1B1A7CD28();
  (*(v8 + 8))(v10, v7);
  (*(v8 + 56))(v3, 1, 1, v7);
  swift_beginAccess();
  sub_1B1A548D8(v3, v0 + v15, &qword_1EB75E4B0, &qword_1B1A7E730);
  return swift_endAccess();
}

uint64_t EmptyPromise.deinit()
{
  sub_1B1A48194(v0 + OBJC_IVAR____TtC8Dendrite12EmptyPromise_streamContinuation, &qword_1EB75E4B0, &qword_1B1A7E730);
  sub_1B1A48194(v0 + OBJC_IVAR____TtC8Dendrite12EmptyPromise____lazy_storage___fulfillmentStream, &qword_1EB75E4B8, &unk_1B1A7E738);
  return v0;
}

uint64_t EmptyPromise.__deallocating_deinit()
{
  sub_1B1A48194(v0 + OBJC_IVAR____TtC8Dendrite12EmptyPromise_streamContinuation, &qword_1EB75E4B0, &qword_1B1A7E730);
  sub_1B1A48194(v0 + OBJC_IVAR____TtC8Dendrite12EmptyPromise____lazy_storage___fulfillmentStream, &qword_1EB75E4B8, &unk_1B1A7E738);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EmptyPromise(uint64_t a1)
{
  result = qword_1EDB763B0;
  if (!qword_1EDB763B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B1A544E8(uint64_t a1)
{
  sub_1B1A5487C(319, &qword_1EDB75D40, &qword_1EB75E498, "2Q");
  if (v1 <= 0x3F)
  {
    sub_1B1A5487C(319, &qword_1EDB75D38, &qword_1EB75E4A0, "6Q");
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of EmptyPromise.fulfilled()()
{
  v4 = (*(*v0 + 152) + **(*v0 + 152));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1B1A5471C;

  return v4();
}

uint64_t sub_1B1A5471C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
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

void sub_1B1A5487C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1B1A7CE18();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1B1A548D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B1A54958(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = *v4;
  type metadata accessor for DataFrameStreamTypedIterator(0, *(v7 + 80), *(v7 + 88), a4);
  v11 = v7;
  v12 = &off_1F28B0EE8;
  *&v10 = v6;
  v8 = sub_1B1A4C5E0(&v10, a1, 1);

  return v8;
}

uint64_t sub_1B1A54A28(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = v4;
  v7 = *v4;
  type metadata accessor for DataFrameStreamTypedIterator(0, a1, a2, a4);
  v11 = v7;
  v12 = &off_1F28B0EE8;
  *&v10 = v6;
  v8 = sub_1B1A4C5E0(&v10, a3, 1);

  return v8;
}

uint64_t TypedStream.last<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for DataFrameStreamTypedIterator.Element(0, a1, a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v26 = &v24 - v9;
  v10 = sub_1B1A7CE18();
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v24 - v12;
  v14 = *(a1 - 8);
  v15 = *(v14 + 56);
  v27 = a4;
  v25 = v15;
  (v15)(a4, 1, 1, a1, v11);
  v18 = *TypedStream.reverseIterator<A>()(a1, a2, v16, v17);
  v19 = (*(v18 + 264))();
  sub_1B1A4CB90(v13, v19);

  result = (*(v8 + 48))(v13, 1, v7);
  if (result != 1)
  {
    v21 = sub_1B1A7CE18();
    v22 = v27;
    (*(*(v21 - 8) + 8))(v27, v21);
    v23 = v26;
    (*(v8 + 32))(v26, v13, v7);
    (*(v14 + 32))(v22, &v23[*(v7 + 40)], a1);
    return v25(v22, 0, 1, a1);
  }

  return result;
}

uint64_t sub_1B1A54D88@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v6 = TypedStream.makeIterator()(a2, a3, a4, a5);

  *a1 = v6;
  return result;
}

uint64_t sub_1B1A54DC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B1A54E2C(v2, a1, a2);

  return v3;
}

uint64_t sub_1B1A54E30(int a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v21 = a3;
  v8 = sub_1B1A7C9C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B1A7C9F8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  if (a2)
  {
    a1 = MKBGetDeviceLockState();
  }

  sub_1B1A55288(&v30);
  LODWORD(v30) = a1;
  *(&v31 + 1) = &type metadata for EmbeddedDeviceLockState;
  v32 = &off_1F28B1BA8;
  sub_1B1A552F0(&v30, &aBlock);
  if (v25)
  {
    sub_1B1A4E364(&aBlock, v29);
    sub_1B1A4E37C(v29, v28);
    v16 = swift_allocObject();
    *(v16 + 16) = v20;
    *(v16 + 24) = a5;
    sub_1B1A4E364(v28, v16 + 32);
    v26 = sub_1B1A55360;
    v27 = v16;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v24 = sub_1B1A5516C;
    v25 = &block_descriptor;
    v17 = _Block_copy(&aBlock);

    sub_1B1A7C9D8();
    v22 = MEMORY[0x1E69E7CC0];
    sub_1B1A553A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4D8, &unk_1B1A7E830);
    sub_1B1A55400();
    sub_1B1A7CE48();
    MEMORY[0x1B2736680](0, v15, v11, v17);
    _Block_release(v17);
    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v15, v12);
    __swift_destroy_boxed_opaque_existential_1(v29);
    sub_1B1A55288(&v30);
  }

  else
  {
    sub_1B1A55288(&v30);
    return sub_1B1A55288(&aBlock);
  }
}

uint64_t sub_1B1A5516C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1B1A551B0()
{
  v1 = *(**(v0 + 56) + 136);

  atomic_store(1u, v1(v2));

  swift_beginAccess();
  notify_cancel(*(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_1B1A55288(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4C8, "~P");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1A552F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4C8, "~P");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B1A553A8()
{
  result = qword_1EB75E4D0;
  if (!qword_1EB75E4D0)
  {
    sub_1B1A7C9C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E4D0);
  }

  return result;
}

unint64_t sub_1B1A55400()
{
  result = qword_1EB75E4E0;
  if (!qword_1EB75E4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB75E4D8, &unk_1B1A7E830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E4E0);
  }

  return result;
}

uint64_t sub_1B1A55498(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_1B1A5552C()
{
  sub_1B1A55E90();
}

uint64_t sub_1B1A55554()
{
  v1 = v0;
  result = sub_1B1A4DCEC();
  if (result)
  {
    if (*(result + 80))
    {
      return 0;
    }

    v3 = *(result + 76);
    result = sub_1B1A4DCEC();
    if (!result)
    {
      return result;
    }

    v4 = DataFrameStreamSegment.deleteFrame(index:)(v3);

    if (!v4)
    {
      return 0;
    }

    else
    {
      result = swift_beginAccess();
      v5 = *(v1 + 96);
      v6 = __CFADD__(v5, 1);
      v7 = v5 + 1;
      if (v6)
      {
        __break(1u);
      }

      else
      {
        *(v1 + 96) = v7;
        return 1;
      }
    }
  }

  return result;
}

uint64_t DataFrameStreamPruner.__deallocating_deinit()
{
  DataFrameStreamTypedIterator.deinit();

  return swift_deallocClassInstance();
}

uint64_t TypedStream.pruner<A>(reversed:)(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v25 = *v4;
  v26 = a3;
  v6 = sub_1B1A7C808();
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DataFrameStreamContainer(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A55E98(v4 + v12, v11);
  v13 = &v11[*(v9 + 20)];
  v14 = type metadata accessor for StorageContainer(0);
  LOBYTE(v13) = _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0(*&v13[*(v14 + 20)]);
  sub_1B1A4DCF4(v11);
  if (v13)
  {
    type metadata accessor for DataFrameStreamPruner(0, a2, v26, v15);
    v29 = v25;
    v30 = &off_1F28B0EE8;
    *&v28 = v4;
    *(swift_allocObject() + 96) = 0;
    v16 = sub_1B1A4C648(&v28, v27 & 1, 1);
  }

  else
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v17, qword_1EDB770A8);
    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;
    sub_1B1A7CEC8();

    *&v28 = 0xD000000000000018;
    *(&v28 + 1) = 0x80000001B1A80600;
    sub_1B1A55E98(v4 + v12, v11);
    v18 = *(v9 + 20);
    v19 = v31;
    (*(v31 + 16))(v8, &v11[v18], v6);
    sub_1B1A4DCF4(v11);
    sub_1B1A4DD9C();
    v20 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v20);

    (*(v19 + 8))(v8, v6);
    sub_1B1A561D8(v28, *(&v28 + 1), 0xD000000000000068, 0x80000001B1A80B60, 0xD000000000000011, 0x80000001B1A80BD0);

    sub_1B1A55EFC();
    v21 = swift_allocError();
    *v22 = 1;
    v16 = v21;
    swift_willThrow();
  }

  return v16;
}

uint64_t TypedStream<>.prune(minAllowableDate:)(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = sub_1B1A7C908();
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v31 - v7;
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  v11 = type metadata accessor for DataFrameStreamTypedIterator.Element(255, AssociatedTypeWitness, v9, v10);
  v12 = sub_1B1A7CE18();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v31 - v13;
  v15 = v45;
  TypedStream.pruner<A>(reversed:)(0, AssociatedTypeWitness, v9);
  if (!v15)
  {
    v16 = v33;
    v38 = v8;
    v31[0] = v2;
    v31[1] = 0;

    sub_1B1A4CB90(v14, v45);
    v8 = *(v11 - 8);
    v36 = *(v8 + 48);
    v37 = v8 + 48;
    v17 = v36(v14, 1, v11);
    v18 = v32;
    if (v17 != 1)
    {
      v22 = *(v39 + 16);
      v34 = AssociatedTypeWitness;
      v35 = v22;
      v39 += 16;
      v33 = v16 + 1;
      v23 = (v8 + 8);
      do
      {
        v8 = v38;
        v35(v38, &v14[*(v11 + 40)], AssociatedTypeWitness);
        (*v23)(v14, v11);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4F0, &qword_1B1A7E840);
        if (swift_dynamicCast())
        {
          sub_1B1A4E364(v40, v42);
          v25 = v3;
          v26 = v18;
          v27 = v43;
          v28 = v44;
          __swift_project_boxed_opaque_existential_1(v42, v43);
          v29 = *(v28 + 8);
          v30 = v28;
          v18 = v26;
          v3 = v25;
          v29(v27, v30);
          v8 = sub_1B1A7C8E8();
          (*v33)(v5, v25);
          if (v8)
          {
            sub_1B1A55554();
          }

          v24 = __swift_destroy_boxed_opaque_existential_1(v42);
          AssociatedTypeWitness = v34;
        }

        else
        {
          v41 = 0;
          memset(v40, 0, sizeof(v40));
          v24 = sub_1B1A55F68(v40);
        }

        sub_1B1A4CB90(v14, v24);
      }

      while (v36(v14, 1, v11) != 1);
    }

    v19 = v45;

    TypedStream.vacuum()();
    if (!v20)
    {
      swift_beginAccess();
      v8 = *(v19 + 96);
    }
  }

  return v8;
}

uint64_t sub_1B1A55E98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataFrameStreamContainer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B1A55EFC()
{
  result = qword_1EB75E4E8;
  if (!qword_1EB75E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E4E8);
  }

  return result;
}

uint64_t sub_1B1A55F68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4F8, &unk_1B1A7E848);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for InternalLogger(uint64_t a1)
{
  result = qword_1EDB76990;
  if (!qword_1EDB76990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B1A56154(uint64_t a1)
{
  result = sub_1B1A7C988();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B1A56208(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void))
{
  v26 = a3;
  v27 = a5;
  v11 = sub_1B1A7C808();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  v28 = sub_1B1A7C978();
  v15 = a7();

  if (os_log_type_enabled(v28, v15))
  {
    v16 = swift_slowAlloc();
    v25 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 136315650;
    sub_1B1A7C798();
    v19 = sub_1B1A7C7A8();
    v21 = v20;
    (*(v12 + 8))(v14, v11);
    v22 = sub_1B1A56884(v19, v21, &v29);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1B1A56884(v27, a6, &v29);
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_1B1A56884(v25, a2, &v29);
    _os_log_impl(&dword_1B1A45000, v28, v15, "[%s: %s] %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27370E0](v18, -1, -1);
    MEMORY[0x1B27370E0](v17, -1, -1);
  }

  else
  {
    v23 = v28;
  }
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

uint64_t sub_1B1A56570(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_1B1A7C988();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InternalLogger(0);
  __swift_allocate_value_buffer(v12, a2);
  v13 = __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v14 = *a4;
  sub_1B1A7C998();
  return (*(v9 + 32))(v13, v11, v8);
}

unint64_t sub_1B1A566E4()
{
  result = qword_1EDB76470;
  if (!qword_1EDB76470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB76470);
  }

  return result;
}

uint64_t sub_1B1A5674C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1B1A566E4();
  result = sub_1B1A7CE08();
  *a4 = result;
  return result;
}

uint64_t sub_1B1A567B4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1B1A56828(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1B1A56884(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1B1A56884(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B1A56950(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1B1A56DC8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1B1A56950(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1B1A56A5C(a5, a6);
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
    result = sub_1B1A7CF08();
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

void *sub_1B1A56A5C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B1A56AA8(a1, a2);
  sub_1B1A56BD8(&unk_1F28B0628);
  return v3;
}

void *sub_1B1A56AA8(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B1A777A8(v5, 0);
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

  result = sub_1B1A7CF08();
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
        v10 = sub_1B1A7CB48();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B1A777A8(v10, 0);
        result = sub_1B1A7CEA8();
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

uint64_t sub_1B1A56BD8(uint64_t result)
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

  result = sub_1B1A56CC4(result, v11, 1, v3);
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

char *sub_1B1A56CC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E508, "DP");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

_BYTE **sub_1B1A56DB8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1B1A56DC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TypedStream.vacuum()()
{
  v44 = sub_1B1A7C808();
  v1 = *(v44 - 1);
  MEMORY[0x1EEE9AC00](v44);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DataFrameStreamContainer(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1EDB770E8;
  swift_beginAccess();
  v42 = v0;
  sub_1B1A46E9C(v7 + v0, v6, type metadata accessor for DataFrameStreamContainer);
  v8 = &v6[*(v4 + 5)];
  v9 = type metadata accessor for StorageContainer(0);
  v10 = _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0(*&v8[*(v9 + 20)]);
  sub_1B1A46F50(v6, type metadata accessor for DataFrameStreamContainer);
  if (v10)
  {
    if (qword_1EDB764F0 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v11 = type metadata accessor for InternalLogger(0);
      v12 = __swift_project_value_buffer(v11, qword_1EDB770A8);
      v13 = v42;
      sub_1B1A46E9C(v7 + v42, v6, type metadata accessor for DataFrameStreamContainer);
      v14 = &v6[*(v4 + 5)];
      v15 = v44;
      (*(v1 + 16))(v3, v14, v44);
      sub_1B1A46F50(v6, type metadata accessor for DataFrameStreamContainer);
      sub_1B1A4DD9C();
      v16 = sub_1B1A7CF98();
      v18 = v17;
      (*(v1 + 8))(v3, v15);
      v39 = "com.apple.aiml.dendrite";
      v40 = v12;
      sub_1B1A561C0(v16, v18, 0xD00000000000005ELL, 0x80000001B1A80C10, 0x29286D7575636176, 0xE800000000000000);

      v19 = *(v13 + qword_1EDB770F8);
      os_unfair_lock_lock((v19 + 32));
      v20 = v45;
      sub_1B1A603DC((v19 + 16), v46);
      if (v20)
      {
        break;
      }

      v1 = 0;
      os_unfair_lock_unlock((v19 + 32));
      v4 = v46[0];
      if (!v46[0])
      {
        return;
      }

      v6 = MEMORY[0x1E69E7CD0];
      v51 = MEMORY[0x1E69E7CD0];
      v41 = *(v46[0] + 2);
      if (!v41)
      {
LABEL_20:

        sub_1B1A5B560(v6);

        return;
      }

      v3 = 0;
      v33 = 0x80000001B1A80C70;
      v7 = (v46[0] + 40);
      v37 = v19;
      v38 = v46[0];
      while (v3 < *(v4 + 2))
      {
        v6 = *(v7 - 1);
        v22 = *v7;
        MEMORY[0x1EEE9AC00](v21);
        *(&v32 - 4) = v42;
        *(&v32 - 3) = v6;
        *(&v32 - 2) = v22;

        os_unfair_lock_lock((v19 + 32));
        sub_1B1A6040C(v19 + 16, v46);
        os_unfair_lock_unlock((v19 + 32));
        v23 = v46[0];
        v24 = v48;
        v43 = v47;
        v44 = v46[1];
        v45 = v49;
        v25 = v50;
        v26 = *(v48 + 16);
        if (*v26 == 2)
        {
          v46[1] = v44;
          v47 = v43;
          v49 = v45;
          v27 = v3;
          v28 = v50;
          sub_1B1A60B34();
          v25 = v28;
          v3 = v27;
          v26 = *(v24 + 16);
        }

        if (*v26 == 3)
        {
          v46[0] = 0;
          v46[1] = 0xE000000000000000;
          v35 = v23;
          v34 = v25;
          sub_1B1A7CEC8();

          v46[0] = 0xD000000000000017;
          v46[1] = v33;
          MEMORY[0x1B2736400](v6, v22);
          v36 = v24;
          sub_1B1A561C0(v46[0], v46[1], 0xD00000000000005ELL, v39 | 0x8000000000000000, 0x29286D7575636176, 0xE800000000000000);
          v1 = 0;
          v24 = v36;

          sub_1B1A5E640(v46, v6, v22);

          v25 = v34;
          v23 = v35;
        }

        v46[0] = v23;
        v46[1] = v44;
        v47 = v43;
        v48 = v24;
        v49 = v45;
        v50 = v25;
        if (sub_1B1A69684())
        {
        }

        else
        {
          v46[0] = 0;
          v46[1] = 0xE000000000000000;
          sub_1B1A7CEC8();

          strcpy(v46, "segment dead: ");
          HIBYTE(v46[1]) = -18;
          MEMORY[0x1B2736400](v6, v22);
          sub_1B1A561C0(v46[0], v46[1], 0xD00000000000005ELL, v39 | 0x8000000000000000, 0x29286D7575636176, 0xE800000000000000);
          v1 = 0;

          sub_1B1A5E640(v46, v6, v22);
        }

        v19 = v37;
        v4 = v38;
        ++v3;
        v7 += 2;
        if (v41 == v3)
        {
          v6 = v51;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_23:
      swift_once();
    }

    os_unfair_lock_unlock((v19 + 32));
    __break(1u);
  }

  else
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v29, qword_1EDB770A8);
    v46[0] = 0;
    v46[1] = 0xE000000000000000;
    sub_1B1A7CEC8();

    v46[0] = 0xD000000000000018;
    v46[1] = 0x80000001B1A80600;
    sub_1B1A46E9C(v7 + v42, v6, type metadata accessor for DataFrameStreamContainer);
    v30 = v44;
    (*(v1 + 16))(v3, &v6[*(v4 + 5)], v44);
    sub_1B1A46F50(v6, type metadata accessor for DataFrameStreamContainer);
    sub_1B1A4DD9C();
    v31 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v31);

    (*(v1 + 8))(v3, v30);
    sub_1B1A561D8(v46[0], v46[1], 0xD00000000000005ELL, 0x80000001B1A80C10, 0x29286D7575636176, 0xE800000000000000);
  }
}

uint64_t sub_1B1A5761C()
{
  v1 = v0;
  type metadata accessor for OSTransaction();
  swift_allocObject();
  sub_1B1A60480("com.apple.dendrite.pending-writes", 33, 2);
  v3 = v2;

  *v1 = v3;
  return result;
}

uint64_t sub_1B1A57678()
{

  *v0 = 0;
  return result;
}

uint64_t sub_1B1A576C0@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDB770E8;
  swift_beginAccess();
  return sub_1B1A46E9C(v1 + v3, a1, type metadata accessor for DataFrameStreamContainer);
}

uint64_t TypedStream.__allocating_init(containerURL:segmentSize:protection:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StorageContainer(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B1A7C808();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  *&v9[*(v7 + 28)] = a3;
  v12 = TypedStream.__allocating_init(storageContainer:segmentSize:)(v9, a2 | ((HIDWORD(a2) & 1) << 32));
  (*(v11 + 8))(a1, v10);
  return v12;
}

uint64_t TypedStream.__allocating_init(storageContainer:segmentSize:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  TypedStream.init(storageContainer:segmentSize:)(a1, a2 | ((HIDWORD(a2) & 1) << 32));
  return v4;
}

void *TypedStream.init(storageContainer:segmentSize:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for DataFrameStreamContainer(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v37 - v11);
  if ((a2 & 0x100000000) != 0)
  {
    v38 = 0;
  }

  else
  {
    if (a2 > 0x40)
    {
      v38 = 0;
      v13 = 0;
      goto LABEL_15;
    }

    sub_1B1A5FCC4();
    v14 = swift_allocError();
    *v15 = 0;
    swift_willThrow();
    v38 = 0;
    v41 = v14;
    v16 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E458, &qword_1B1A7E390);
    if ((swift_dynamicCast() & 1) != 0 && (v40 & 1) == 0)
    {

      if (qword_1EDB764F0 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for InternalLogger(0);
      __swift_project_value_buffer(v19, qword_1EDB770A8);
      v42[0] = 0;
      v42[1] = 0xE000000000000000;
      sub_1B1A7CEC8();

      strcpy(v42, "segmentSize: ");
      HIWORD(v42[1]) = -4864;
      v39 = a2;
      v20 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v20);

      MEMORY[0x1B2736400](0x616D73206F6F7420, 0xEB000000002E6C6CLL);
      sub_1B1A561D8(v42[0], v42[1], 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000023, 0x80000001B1A80CB0);
    }

    else
    {

      if (qword_1EDB764F0 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for InternalLogger(0);
      v37 = __swift_project_value_buffer(v17, qword_1EDB770A8);
      v42[0] = 0;
      v42[1] = 0xE000000000000000;
      sub_1B1A7CEC8();
      MEMORY[0x1B2736400](0x53746E656D676573, 0xED0000203A657A69);
      LODWORD(v41) = a2;
      v18 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v18);

      MEMORY[0x1B2736400](0xD000000000000010, 0x80000001B1A80C90);
      v41 = v14;
      sub_1B1A7CF18();
      sub_1B1A561D8(v42[0], v42[1], 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000023, 0x80000001B1A80CB0);
    }

    LODWORD(a2) = 0;
  }

  v13 = 0x100000000;
LABEL_15:
  v21 = a1;
  sub_1B1A46E9C(a1, v12 + *(v7 + 20), type metadata accessor for StorageContainer);
  *v12 = [objc_opt_self() defaultManager];
  v22 = v12 + *(v7 + 24);
  v22[4] = (v13 | 0x8000000000uLL) >> 32;
  *v22 = v13 | a2;
  sub_1B1A5F684(v12, v3 + qword_1EDB770E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E510, &unk_1B1A7E8C0);
  v23 = swift_allocObject();
  *(v23 + 32) = 0;
  v24 = MEMORY[0x1E69E7CC8];
  *(v23 + 16) = 0;
  *(v23 + 24) = v24;
  *(v3 + qword_1EDB770F8) = v23;
  v25 = *(v6 + 80);
  v26 = *(v6 + 88);
  v27 = sub_1B1A7CA08();
  v42[0] = 0;
  v42[1] = v27;
  v42[2] = MEMORY[0x1E69E7CC0];
  v29 = type metadata accessor for DataFrameStreamPendingWrites(0, v25, v26, v28);
  v30 = sub_1B1A5FC14(v42, v29);

  *(v3 + qword_1EDB770F0) = v30;
  v31 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A46E9C(v3 + v31, v9, type metadata accessor for DataFrameStreamContainer);
  v32 = &v9[*(v7 + 20)];
  v33 = type metadata accessor for StorageContainer(0);
  if (_s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0(*&v32[*(v33 + 20)]))
  {
    v34 = _s8Dendrite7StorageV21ensureDirectoryExists12directoryURLSb10Foundation0G0V_tFZ_0();
    sub_1B1A46F50(v9, type metadata accessor for DataFrameStreamContainer);
    if (v34)
    {
      sub_1B1A46E9C(v3 + v31, v12, type metadata accessor for DataFrameStreamContainer);
      sub_1B1A50B70();
      sub_1B1A46F50(v12, type metadata accessor for DataFrameStreamContainer);
      v35 = *(v3 + qword_1EDB770F8);
      os_unfair_lock_lock((v35 + 32));
      sub_1B1A5FCA8((v35 + 16));
      os_unfair_lock_unlock((v35 + 32));
    }
  }

  else
  {
    sub_1B1A46F50(v9, type metadata accessor for DataFrameStreamContainer);
  }

  sub_1B1A46F50(v21, type metadata accessor for StorageContainer);
  return v3;
}

uint64_t sub_1B1A57F04(char **a1, uint64_t a2)
{
  v4 = type metadata accessor for DataFrameStreamContainer(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A46E9C(a2 + v7, v6, type metadata accessor for DataFrameStreamContainer);
  v8 = sub_1B1A51554();
  sub_1B1A46F50(v6, type metadata accessor for DataFrameStreamContainer);

  *a1 = v8;
  return result;
}

uint64_t sub_1B1A58010()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B1A580EC;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B1A580EC()
{

  return MEMORY[0x1EEE6DFA0](sub_1B1A581E8, 0, 0);
}

void sub_1B1A581FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + qword_1EDB770F0);
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_1B1A602C0((v2 + v3));
  os_unfair_lock_unlock((v2 + v4));
}

uint64_t sub_1B1A582C8(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E540, &qword_1B1A7EAE8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  if (!*a1)
  {
    return sub_1B1A7CCF8();
  }

  v9 = a1[2];
  (*(v5 + 16))(v8, a2, v4, v6);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1B1A79388(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1B1A79388((v10 > 1), v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v8, v4);
  a1[2] = v9;
  return result;
}

uint64_t sub_1B1A58460()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E538, &qword_1B1A7EAD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_1B1A7CD18();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = *(v1 + 80);
  v7[5] = *(v1 + 88);
  v7[6] = v6;
  sub_1B1A596C0(0, 0, v4, &unk_1B1A7EAE0, v7);

  return sub_1B1A48194(v4, &qword_1EB75E538, &qword_1B1A7EAD0);
}

uint64_t sub_1B1A585D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_1B1A7C808();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = type metadata accessor for DataFrameStreamContainer(0);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1A586DC, 0, 0);
}

uint64_t sub_1B1A586DC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v3 = v0[15];
    v4 = type metadata accessor for InternalLogger(0);
    v0[17] = __swift_project_value_buffer(v4, qword_1EDB770A8);
    sub_1B1A561C0(0xD000000000000020, 0x80000001B1A80F10, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000023, 0x80000001B1A80F40);
    v5 = qword_1EDB770E8;
    v0[18] = qword_1EDB770E8;
    swift_beginAccess();
    sub_1B1A46E9C(v2 + v5, v3, type metadata accessor for DataFrameStreamContainer);
    v0[19] = type metadata accessor for StorageContainer(0);
    v6 = sub_1B1A7CA88();
    v8 = v7;
    if (v6 == sub_1B1A7CA88() && v8 == v9)
    {
    }

    else
    {
      v11 = sub_1B1A7CFB8();

      if ((v11 & 1) == 0)
      {
        sub_1B1A46F50(v0[15], type metadata accessor for DataFrameStreamContainer);

        return MEMORY[0x1EEE6DFA0](sub_1B1A58B0C, 0, 0);
      }
    }

    v13 = swift_task_alloc();
    v0[20] = v13;
    *v13 = v0;
    v13[1] = sub_1B1A589E0;

    return sub_1B1A709A8();
  }

  else
  {

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1B1A589E0()
{
  v1 = *v0;

  sub_1B1A46F50(*(v1 + 120), type metadata accessor for DataFrameStreamContainer);

  return MEMORY[0x1EEE6DFA0](sub_1B1A58B0C, 0, 0);
}

uint64_t sub_1B1A58B0C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[12];
  sub_1B1A561C0(0xD000000000000016, 0x80000001B1A80F70, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000023, 0x80000001B1A80F40);
  sub_1B1A46E9C(v3 + v2, v4, type metadata accessor for DataFrameStreamContainer);
  v6 = _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0(*(v4 + *(v5 + 20) + *(v1 + 20)));
  v7 = v0[14];
  if (v6)
  {
    v8 = _s8Dendrite7StorageV21ensureDirectoryExists12directoryURLSb10Foundation0G0V_tFZ_0();
    sub_1B1A46F50(v7, type metadata accessor for DataFrameStreamContainer);
    if (v8)
    {
      v9 = *(v0[16] + qword_1EDB770F0);
      v10 = *(*v9 + *MEMORY[0x1E69E6B68] + 16);
      v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v9 + v11));
      sub_1B1A602A4((v9 + v10));
      os_unfair_lock_unlock((v9 + v11));

      goto LABEL_6;
    }
  }

  else
  {
    sub_1B1A46F50(v0[14], type metadata accessor for DataFrameStreamContainer);
  }

  v12 = v0[18];
  v13 = v0[16];
  v15 = v0[12];
  v14 = v0[13];
  v17 = v0[10];
  v16 = v0[11];
  v18 = v0[9];
  sub_1B1A7CEC8();

  sub_1B1A46E9C(v13 + v12, v14, type metadata accessor for DataFrameStreamContainer);
  (*(v17 + 16))(v16, v14 + *(v15 + 20), v18);
  sub_1B1A46F50(v14, type metadata accessor for DataFrameStreamContainer);
  sub_1B1A4DD9C();
  v19 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v19);

  (*(v17 + 8))(v16, v18);
  sub_1B1A561D8(0xD00000000000001ELL, 0x80000001B1A80F90, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000023, 0x80000001B1A80F40);

LABEL_6:

  v20 = v0[1];

  return v20();
}

uint64_t sub_1B1A58E8C(void *a1, void *a2)
{
  v4 = *a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E540, &qword_1B1A7EAE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - v7;
  v43 = a2;
  v9 = *(v4 + 80);
  v44 = *(v9 - 8);
  v35 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  if (qword_1EDB764F0 != -1)
  {
    swift_once();
  }

  v36 = v8;
  v13 = type metadata accessor for InternalLogger(0);
  v14 = __swift_project_value_buffer(v13, qword_1EDB770A8);
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1B1A7CEC8();

  v46 = 0x676E696873756C46;
  v47 = 0xE900000000000020;
  v41 = a1;
  v15 = a1[1];
  v37 = a1 + 1;
  v48 = sub_1B1A7CC98();
  v16 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v16);

  MEMORY[0x1B2736400](0xD000000000000012, 0x80000001B1A80FB0);
  v38 = " availability...";
  v39 = "com.apple.aiml.dendrite";
  v40 = v14;
  sub_1B1A561C0(v46, v47, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000023, 0x80000001B1A80F40);

  if (sub_1B1A7CC98())
  {
    v17 = 0;
    v42 = (v44 + 16);
    v18 = (v44 + 8);
    do
    {
      v19 = sub_1B1A7CC88();
      sub_1B1A7CC68();
      v20 = v6;
      if (v19)
      {
        v6 = v5;
        (*(v44 + 16))(v12, v15 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v17, v9);
        v5 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        result = sub_1B1A7CED8();
        if (v35 != 8)
        {
          __break(1u);
          return result;
        }

        v6 = v5;
        v46 = result;
        (*v42)(v12, &v46, v9);
        swift_unknownObjectRelease();
        v5 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      v21 = v45;
      sub_1B1A593FC();
      (*v18)(v12, v9);
      if (v21)
      {
      }

      v45 = 0;
      ++v17;
      v22 = v5 == sub_1B1A7CC98();
      v5 = v6;
      v6 = v20;
    }

    while (!v22);
  }

  sub_1B1A7CCD8();
  sub_1B1A7CCC8();
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1B1A7CEC8();

  v46 = 0x676E696D75736552;
  v47 = 0xE900000000000020;
  v24 = v41[2];
  v48 = *(v24 + 16);
  v25 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v25);

  MEMORY[0x1B2736400](0xD000000000000011, 0x80000001B1A80FD0);
  sub_1B1A561C0(v46, v47, 0xD00000000000005ELL, v39 | 0x8000000000000000, 0xD000000000000023, v38 | 0x8000000000000000);

  v26 = *(v24 + 16);
  if (v26)
  {
    v29 = *(v6 + 16);
    v27 = v6 + 16;
    v28 = v29;
    v30 = v24 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
    v31 = *(v27 + 56);
    v32 = v36;
    do
    {
      v28(v32, v30, v5);
      sub_1B1A7CCF8();
      (*(v27 - 8))(v32, v5);
      v30 += v31;
      --v26;
    }

    while (v26);
  }

  v33 = v41;
  v41[2] = MEMORY[0x1E69E7CC0];

  *v33 = 0;
  return result;
}

void sub_1B1A593FC()
{
  v2 = *v0;
  v3 = *(v0 + qword_1EDB770F8);
  os_unfair_lock_lock((v3 + 32));
  sub_1B1A601C0((v3 + 16), &v16);
  os_unfair_lock_unlock((v3 + 32));
  if (!v1)
  {
    v14 = *(v2 + 88);
    v15 = *(v2 + 80);
    v5 = v16;
    v4 = v17;
    v6 = v18;
    v7 = v19;
    v8 = v20;
    v9 = v21;
    v10 = (*(v14 + 8))(v15, v14);
    v16 = v5;
    v17 = v4;
    v18 = v6;
    v19 = v7;
    v20 = v8;
    v21 = v9;
    v11 = v10;
    v13 = v12;
    DataFrameStreamSegment.append(data:compressed:)(v10, v12, 0);
    sub_1B1A4696C(v11, v13);
  }
}

uint64_t sub_1B1A596C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E538, &qword_1B1A7EAD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1B1A47E6C(a3, v22 - v9, &qword_1EB75E538, &qword_1B1A7EAD0);
  v11 = sub_1B1A7CD18();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1B1A48194(v10, &qword_1EB75E538, &qword_1B1A7EAD0);
  }

  else
  {
    sub_1B1A7CD08();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1B1A7CCE8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1B1A7CAE8() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
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

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

char *sub_1B1A5992C()
{
  v1 = *(v0 + qword_1EDB770F8);
  os_unfair_lock_lock((v1 + 32));
  sub_1B1A603DC((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 32));
  return v3;
}

void sub_1B1A59988(void *a1@<X8>)
{
  v3 = *(v1 + qword_1EDB770F8);
  os_unfair_lock_lock((v3 + 32));
  sub_1B1A601C0((v3 + 16), a1);
  os_unfair_lock_unlock((v3 + 32));
}

void sub_1B1A599E8(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E528, &qword_1B1A7EAC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = *a1;
  if (*a1 && (v13 = *(v10 + 2), v11 = v10 + 16, (v12 = v13) != 0))
  {
    v14 = &v11[16 * v12];
    v15 = *v14;
    v16 = v14[1];
    v17 = type metadata accessor for DataFrameStreamContainer(0);
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);

    sub_1B1A59F5C(v15, v16, a1, v9, a3);
    sub_1B1A48194(v9, &qword_1EB75E528, &qword_1B1A7EAC0);
  }

  else
  {
    v18 = qword_1EDB770E8;
    swift_beginAccess();
    sub_1B1A51778();
    if (!v3)
    {
      sub_1B1A59C30(a2 + v18, a1, a2, &v23);
      if (qword_1EDB767A8 != -1)
      {
        swift_once();
      }

      v19 = qword_1EDB770E0;

      os_unfair_lock_lock(v19 + 6);
      sub_1B1A603F4(&v19[4]);
      os_unfair_lock_unlock(v19 + 6);

      v20 = v26;
      *a3 = v23;
      v21 = v25;
      *(a3 + 8) = v24;
      *(a3 + 24) = v21;
      *(a3 + 40) = v20;
    }

    swift_endAccess();
  }
}

uint64_t sub_1B1A59C30@<X0>(uint64_t a1@<X0>, char **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E528, &qword_1B1A7EAC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v23 - v9;
  *a2 = sub_1B1A51554();

  v11 = *a2;
  if (*a2 && (v14 = *(v11 + 2), v12 = v11 + 16, (v13 = v14) != 0))
  {
    v23[1] = a3;
    v15 = &v12[16 * v13];
    v17 = *v15;
    v16 = v15[1];
    v18 = qword_1EDB764F0;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v19, qword_1EDB770A8);
    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    sub_1B1A7CEC8();

    strcpy(v24, "last segment: ");
    HIBYTE(v24[1]) = -18;
    MEMORY[0x1B2736400](v17, v16);
    sub_1B1A561C0(v24[0], v24[1], 0xD00000000000005ELL, 0x80000001B1A80C10, 0x655374736574616CLL, 0xEF2928746E656D67);

    sub_1B1A46E9C(a1, v10, type metadata accessor for DataFrameStreamContainer);
    v20 = type metadata accessor for DataFrameStreamContainer(0);
    (*(*(v20 - 8) + 56))(v10, 0, 1, v20);
    sub_1B1A59F5C(v17, v16, a2, v10, a4);
    sub_1B1A48194(v10, &qword_1EB75E528, &qword_1B1A7EAC0);
  }

  else
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v22, qword_1EDB770A8);
    sub_1B1A561C0(0xD000000000000010, 0x80000001B1A80EF0, 0xD00000000000005ELL, 0x80000001B1A80C10, 0x655374736574616CLL, 0xEF2928746E656D67);
    return sub_1B1A5A800(a2, a4);
  }
}

double sub_1B1A59F5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v73 = a1;
  v74 = a3;
  v78 = a2;
  v69 = a5;
  v70 = sub_1B1A7C768();
  v6 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1B1A7C808();
  v83 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v67 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v67 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E528, &qword_1B1A7EAC0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v67 - v15;
  v17 = type metadata accessor for DataFrameStreamContainer(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1A47E6C(a4, v16, &qword_1EB75E528, &qword_1B1A7EAC0);
  v21 = *(v18 + 48);
  if (v21(v16, 1, v17) == 1)
  {
    v22 = qword_1EDB770E8;
    v23 = v76;
    swift_beginAccess();
    sub_1B1A46E9C(v23 + v22, v20, type metadata accessor for DataFrameStreamContainer);
    if (v21(v16, 1, v17) != 1)
    {
      sub_1B1A48194(v16, &qword_1EB75E528, &qword_1B1A7EAC0);
    }
  }

  else
  {
    sub_1B1A5F684(v16, v20);
  }

  v79 = v73;
  v80 = v78;

  MEMORY[0x1B2736400](0x746E656D6765732ELL, 0xE800000000000000);
  v24 = v70;
  (*(v6 + 104))(v8, *MEMORY[0x1E6968F70], v70);
  sub_1B1A47F94();
  v76 = v20;
  v25 = v77;
  sub_1B1A7C7F8();
  (*(v6 + 8))(v8, v24);
  v26 = v25;

  v27 = *(v74 + 8);
  v28 = v72;
  if (*(v27 + 16) && (v29 = sub_1B1A47538(v25), (v30 & 1) != 0))
  {
    v31 = *(v27 + 56) + 48 * v29;
    v33 = *v31;
    v32 = *(v31 + 8);
    v34 = *(v31 + 16);
    v35 = *(v31 + 24);
    v36 = *(v31 + 32);
    v37 = *(v31 + 40);
    v38 = *(v83 + 8);

    v38(v26, v71);
    sub_1B1A46F50(v76, type metadata accessor for DataFrameStreamContainer);
    v40 = v69;
    *v69 = v33;
    v40[1] = v32;
    v40[2] = v34;
    v40[3] = v35;
    v40[4] = v36;
    *(v40 + 10) = v37;
  }

  else
  {
    v41 = v83;
    v42 = *(v83 + 16);
    v43 = v75;
    v44 = v71;
    v42(v75, v26, v71);
    v45 = v76;
    v46 = sub_1B1A50430();
    if (v28)
    {
      v47 = *(v41 + 8);
      v47(v43, v44);
      v47(v26, v44);
      sub_1B1A46F50(v45, type metadata accessor for DataFrameStreamContainer);
    }

    else
    {
      v48 = v46;
      if (qword_1EDB764F0 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for InternalLogger(0);
      __swift_project_value_buffer(v49, qword_1EDB770A8);
      v79 = 0;
      v80 = 0xE000000000000000;
      sub_1B1A7CEC8();

      v79 = 0xD000000000000011;
      v80 = 0x80000001B1A80E20;
      sub_1B1A4DD9C();
      v50 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v50);

      sub_1B1A561C0(v79, v80, 0xD000000000000069, 0x80000001B1A80D70, 0xD000000000000024, 0x80000001B1A80E40);

      if (v48 < 0x41)
      {
        sub_1B1A5FCC4();
        swift_allocError();
        *v56 = 0;
        swift_willThrow();
        v57 = *(v83 + 8);

        v57(v75, v44);
        v57(v77, v44);
        sub_1B1A46F50(v76, type metadata accessor for DataFrameStreamContainer);
      }

      else
      {
        v51 = v68;
        v52 = v75;
        v42(v68, v75, v44);
        LOBYTE(v79) = 1;
        type metadata accessor for MemoryMappedRegion();
        swift_allocObject();
        v53 = v78;

        v54 = MemoryMappedRegion.init(filePath:requestedByteSize:minimumByteSize:access:)(v51, v48, 0x440u, &v79);
        v55 = v77;
        v83 = *(v83 + 8);
        v58 = v54;
        (v83)(v52, v44);
        v59 = v53;
        v60 = v58[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E530, &qword_1B1A7EAC8);
        v61 = swift_allocObject();
        *(v61 + 16) = v60;
        type metadata accessor for SegmentOffsetTable();
        v62 = swift_allocObject();
        *(v62 + 16) = v58;
        *&v81 = v73;
        *(&v81 + 1) = v59;
        *v82 = v58;
        *&v82[8] = v61;
        *&v82[16] = v62;
        *&v82[24] = v48;

        sub_1B1A600F4(&v81, &v79);
        v63 = v74;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79 = *(v63 + 8);
        sub_1B1A729AC(&v81, v55, isUniquelyReferenced_nonNull_native);
        *(v63 + 8) = v79;
        (v83)(v55, v44);
        sub_1B1A46F50(v76, type metadata accessor for DataFrameStreamContainer);
        v65 = *v82;
        v66 = v69;
        *v69 = v81;
        *(v66 + 1) = v65;
        result = *&v82[12];
        *(v66 + 28) = *&v82[12];
      }
    }
  }

  return result;
}

uint64_t sub_1B1A5A800@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v45 = a1;
  v46 = a2;
  v3 = sub_1B1A7C808();
  v52 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  if (qword_1EDB764F0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for InternalLogger(0);
  __swift_project_value_buffer(v11, qword_1EDB770A8);
  sub_1B1A561C0(0, 0xE000000000000000, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD00000000000001ELL, 0x80000001B1A80ED0);
  CFAbsoluteTimeGetCurrent();
  v12 = sub_1B1A7CD68();
  v14 = v13;
  sub_1B1A51338(v12, v13, v10);
  if (v2)
  {
  }

  v41 = v12;
  v42 = v14;
  v16 = *(v52 + 16);
  v43 = v3;
  v44 = v7;
  v16(v7, v10);
  v17 = sub_1B1A50430();
  v39 = v16;
  v40 = v10;
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_1B1A7CEC8();

  v48 = 0xD000000000000011;
  v49 = 0x80000001B1A80E20;
  sub_1B1A4DD9C();
  v18 = v43;
  v19 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v19);

  sub_1B1A561C0(v48, v49, 0xD000000000000069, 0x80000001B1A80D70, 0xD000000000000024, 0x80000001B1A80E40);

  v20 = v17;
  v21 = v17 >= 0x41;
  v22 = v42;
  if (!v21)
  {
    sub_1B1A5FCC4();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
    v27 = *(v52 + 8);
    v27(v44, v18);
    v27(v40, v18);
  }

  v23 = v47;
  v24 = v44;
  v39(v47, v44, v18);
  LOBYTE(v48) = 1;
  type metadata accessor for MemoryMappedRegion();
  swift_allocObject();
  v25 = MemoryMappedRegion.init(filePath:requestedByteSize:minimumByteSize:access:)(v23, v20, 0x440u, &v48);
  v28 = *(v52 + 8);
  v29 = v25;
  v30 = v43;
  v28(v24, v43);
  v31 = v29[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E530, &qword_1B1A7EAC8);
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  type metadata accessor for SegmentOffsetTable();
  v33 = swift_allocObject();
  *(v33 + 16) = v29;
  *&v50 = v41;
  *(&v50 + 1) = v22;
  *v51 = v29;
  *&v51[8] = v32;
  *&v51[16] = v33;
  *&v51[24] = v20;

  sub_1B1A600F4(&v50, &v48);
  v34 = v45;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *(v34 + 8);
  v36 = v40;
  sub_1B1A729AC(&v50, v40, isUniquelyReferenced_nonNull_native);
  *(v34 + 8) = v48;
  result = (v28)(v36, v30);
  v37 = *v51;
  v38 = v46;
  *v46 = v50;
  v38[1] = v37;
  *(v38 + 28) = *&v51[12];
  return result;
}