uint64_t Deque._UnsafeHandle.uncheckedRemoveFirst()(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A9977090();
  v5 = a1[2];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = a1[1];
    if (v7 >= *a1)
    {
      v7 = 0;
    }

    a1[2] = v7;
    if (!__OFSUB__(v8, 1))
    {
      a1[1] = v8 - 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *Deque._UnsafeHandle.uncheckedRemoveLast()(void *result, uint64_t a2, uint64_t a3)
{
  if (__OFSUB__(result[1], 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = sub_1A9977090();
    v4 = v3[1];
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (!v5)
    {
      v3[1] = v6;
      return result;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall Deque._UnsafeHandle.uncheckedRemoveFirst(_:)(Swift::Int a1)
{
  if (a1 >= 1)
  {
    v3 = v2;
    v4 = v1;
    Deque._UnsafeHandle.segments(forOffsets:)(0, a1, v1, &v23);
    v6 = sub_1A99770E0();
    v8 = v7;
    v26 = v24;
    LOBYTE(v27) = v25;
    MEMORY[0x1EEE9AC00](v6);
    v19[2] = v3;
    sub_1A99767C0();
    sub_1A99770A0();
    v9 = sub_1A9977100();
    sub_1A97A4AD0(sub_1A981772C, v19, MEMORY[0x1E69E73E0], v9, v10, &v20);
    v13 = v20;
    if (v21)
    {
      v14 = v20;
    }

    else
    {
      v14 = 0;
    }

    if (v21)
    {
      v15 = v22;
    }

    else
    {
      v15 = 1;
    }

    if (!v22)
    {
      v13 = v14;
    }

    *&v26 = v6;
    *(&v26 + 1) = v8;
    v27 = v13;
    v28 = v21;
    v29 = v15;
    type metadata accessor for _UnsafeMutableWrappedBuffer(0, v3, v11, v12);
    _UnsafeMutableWrappedBuffer.deinitialize()();
    v4[2].position = Deque._UnsafeHandle.slot(_:offsetBy:)(v4[2], a1).position;
    position = v4[1].position;
    v17 = __OFSUB__(position, a1);
    v18 = position - a1;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      v4[1].position = v18;
    }
  }
}

Swift::Void __swiftcall Deque._UnsafeHandle.uncheckedRemoveLast(_:)(Swift::Int a1)
{
  if (a1 >= 1)
  {
    v3 = v1;
    v5 = v1[1];
    v6 = __OFSUB__(v5, a1);
    v7 = (v5 - a1);
    if (v6)
    {
      __break(1u);
    }

    else if (v5 >= v7)
    {
      v8 = v2;
      Deque._UnsafeHandle.segments(forOffsets:)(v7, v5, v3, &v25);
      v9 = sub_1A99770E0();
      v11 = v10;
      v28 = v26;
      LOBYTE(v29) = v27;
      MEMORY[0x1EEE9AC00](v9);
      v21[2] = v8;
      sub_1A99767C0();
      sub_1A99770A0();
      v12 = sub_1A9977100();
      sub_1A97A4AD0(sub_1A981772C, v21, MEMORY[0x1E69E73E0], v12, v13, &v22);
      v16 = v22;
      if (v23)
      {
        v17 = v22;
      }

      else
      {
        v17 = 0;
      }

      if (v23)
      {
        v18 = v24;
      }

      else
      {
        v18 = 1;
      }

      if (!v24)
      {
        v16 = v17;
      }

      *&v28 = v9;
      *(&v28 + 1) = v11;
      v29 = v16;
      v30 = v23;
      v31 = v18;
      type metadata accessor for _UnsafeMutableWrappedBuffer(0, v8, v14, v15);
      _UnsafeMutableWrappedBuffer.deinitialize()();
      v19 = v3[1];
      v6 = __OFSUB__(v19, a1);
      v20 = v19 - a1;
      if (!v6)
      {
        v3[1] = v20;
        return;
      }

LABEL_17:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_17;
  }
}

Swift::Void __swiftcall Deque._UnsafeHandle.uncheckedRemoveAll()()
{
  v2 = v0 + 1;
  if (v0[1] >= 1)
  {
    v3 = v1;
    Deque._UnsafeHandle.segments()(v0, &v18);
    v4 = sub_1A99770E0();
    v6 = v5;
    v21 = v19;
    LOBYTE(v22) = v20;
    MEMORY[0x1EEE9AC00](v4);
    v14[2] = v3;
    sub_1A99767C0();
    sub_1A99770A0();
    v7 = sub_1A9977100();
    sub_1A97A4AD0(sub_1A981772C, v14, MEMORY[0x1E69E73E0], v7, v8, &v15);
    v11 = v15;
    if (v16)
    {
      v12 = v15;
    }

    else
    {
      v12 = 0;
    }

    if (v16)
    {
      v13 = v17;
    }

    else
    {
      v13 = 1;
    }

    if (!v17)
    {
      v11 = v12;
    }

    *&v21 = v4;
    *(&v21 + 1) = v6;
    v22 = v11;
    v23 = v16;
    v24 = v13;
    type metadata accessor for _UnsafeMutableWrappedBuffer(0, v3, v9, v10);
    _UnsafeMutableWrappedBuffer.deinitialize()();
    *v2 = 0;
    v2[1] = 0;
  }
}

Swift::Int Deque._UnsafeHandle.uncheckedRemove(offsets:)(void *a1, uint64_t a2, Sharing::_DequeSlot *a3, uint64_t a4, uint64_t a5)
{
  Deque._UnsafeHandle.segments(forOffsets:)(a1, a2, &a3->position, &v25);
  v10 = sub_1A99770E0();
  v12 = v11;
  v28 = v26;
  LOBYTE(v29) = v27;
  v21[2] = a5;
  sub_1A99767C0();
  sub_1A99770A0();
  v13 = sub_1A9977100();
  sub_1A97A4AD0(sub_1A981772C, v21, MEMORY[0x1E69E73E0], v13, v14, &v22);
  v17 = v22;
  if (v23)
  {
    v18 = v22;
  }

  else
  {
    v18 = 0;
  }

  if (v23)
  {
    v19 = v24;
  }

  else
  {
    v19 = 1;
  }

  if (!v24)
  {
    v17 = v18;
  }

  *&v28 = v10;
  *(&v28 + 1) = v12;
  v29 = v17;
  v30 = v23;
  v31 = v19;
  type metadata accessor for _UnsafeMutableWrappedBuffer(0, a5, v15, v16);
  _UnsafeMutableWrappedBuffer.deinitialize()();
  return Deque._UnsafeHandle.closeGap(offsets:)(a1, a2, a3, a4, a5);
}

Swift::Int Deque._UnsafeHandle.closeGap(offsets:)(Swift::Int result, uint64_t a2, Sharing::_DequeSlot *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v5 < 1)
  {
    return result;
  }

  v7 = result;
  position = a3[1].position;
  v8 = a3[2].position;
  v10 = a3->position;
  if (v8 + result >= a3->position)
  {
    v11 = a3->position;
  }

  else
  {
    v11 = 0;
  }

  if (v8 + a2 < v10)
  {
    v10 = 0;
  }

  v12 = position - a2;
  if (__OFSUB__(position, a2))
  {
    goto LABEL_83;
  }

  v13 = v8 + result - v11;
  v14 = v8 + a2 - v10;
  if (v12 > result)
  {
    result = Deque._UnsafeHandle.slot(_:offsetBy:)(a3[2], v5).position;
    v12 = result;
    if (!v7)
    {
      goto LABEL_68;
    }

    v15 = a3->position;
    if (v14 <= 0)
    {
      v16 = a3->position;
    }

    else
    {
      v16 = v14;
    }

    if (v13 <= 0)
    {
      v17 = a3->position;
    }

    else
    {
      v17 = v13;
    }

    if (v8 >= v17)
    {
      if (v16 < result)
      {
        if (v13 >= 1)
        {
          sub_1A9977080();
          Deque._UnsafeHandle.slot(_:offsetBy:)(0, v13);
          Deque._UnsafeHandle.slot(_:offsetBy:)(v5, v13);
          v15 = a3->position;
        }

        v28.position = v15 - v5;
        sub_1A9977080();
        Deque._UnsafeHandle.slot(_:offsetBy:)(v28, v5);
        result = Deque._UnsafeHandle.slot(_:offsetBy:)(0, v5).position;
        v13 = v7 - v14;
        if (__OFSUB__(v7, v14))
        {
          goto LABEL_86;
        }

        if (v13 < 1)
        {
          goto LABEL_68;
        }

        v14 = a3[2].position;
        goto LABEL_66;
      }

      if (__OFSUB__(0, v13))
      {
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      if (v13 >= 1)
      {
        v14 -= v13;
        sub_1A9977080();
        Deque._UnsafeHandle.slot(_:offsetBy:)(0, v13);
        result = Deque._UnsafeHandle.slot(_:offsetBy:)(v14, v13).position;
      }

      v34 = __OFSUB__(v7, v13);
      v13 = v7 - v13;
      if (v34)
      {
        goto LABEL_90;
      }

      goto LABEL_64;
    }

    if (v16 >= result)
    {
      if (v7 >= 1)
      {
        sub_1A9977080();
        Deque._UnsafeHandle.slot(_:offsetBy:)(v8, v7);
        v32.position = v12;
        v33 = v7;
LABEL_67:
        result = Deque._UnsafeHandle.slot(_:offsetBy:)(v32, v33).position;
        goto LABEL_68;
      }

      goto LABEL_68;
    }

    if (v14 >= 1)
    {
      v18.position = v15 - v5;
      sub_1A9977080();
      Deque._UnsafeHandle.slot(_:offsetBy:)(v18, v14);
      result = Deque._UnsafeHandle.slot(_:offsetBy:)(0, v14).position;
    }

    v13 = v7 - v14;
    if (!__OFSUB__(v7, v14))
    {
LABEL_64:
      if (v13 >= 1)
      {
        v14 = a3[2].position;
LABEL_66:
        sub_1A9977080();
        Deque._UnsafeHandle.slot(_:offsetBy:)(v14, v13);
        v32.position = v12;
        v33 = v13;
        goto LABEL_67;
      }

LABEL_68:
      a3[2].position = v12;
      v35 = a3[1].position;
      v34 = __OFSUB__(v35, v5);
      v36 = v35 - v5;
      if (!v34)
      {
        goto LABEL_80;
      }

      __break(1u);
      goto LABEL_71;
    }

    __break(1u);
  }

  result = Deque._UnsafeHandle.slot(_:offsetBy:)(v8, position).position;
  if (__OFSUB__(position, v5))
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v19 = a3[2].position + position - v5;
  v20 = a3->position;
  if (v19 >= a3->position)
  {
    v21 = a3->position;
  }

  else
  {
    v21 = 0;
  }

  if (v12)
  {
    v22 = v19 - v21;
    if (v19 - v21 <= 0)
    {
      v23 = a3->position;
    }

    else
    {
      v23 = v19 - v21;
    }

    if (result <= 0)
    {
      v24 = a3->position;
    }

    else
    {
      v24 = result;
    }

    if (v14 >= v24)
    {
      v29 = v20 - v14;
      v30 = __OFSUB__(v20, v14);
      if (v23 >= v13)
      {
        if (v30)
        {
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          return result;
        }

        if (v29 >= 1)
        {
          v37 = result;
          sub_1A9977080();
          Deque._UnsafeHandle.slot(_:offsetBy:)(v14, v29);
          v13 = Deque._UnsafeHandle.slot(_:offsetBy:)(v13, v29).position;
          result = v37;
        }

        if (result >= 1)
        {
          v38 = result;
          sub_1A9977080();
          Deque._UnsafeHandle.slot(_:offsetBy:)(0, v38);
          v26.position = v13;
          v27 = v38;
          goto LABEL_78;
        }
      }

      else
      {
        if (v30)
        {
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

        if (v29 >= 1)
        {
          sub_1A9977080();
          Deque._UnsafeHandle.slot(_:offsetBy:)(v14, v29);
          v13 = Deque._UnsafeHandle.slot(_:offsetBy:)(v13, v29).position;
        }

        sub_1A9977080();
        v31.position = Deque._UnsafeHandle.slot(_:offsetBy:)(0, v5).position;
        result = Deque._UnsafeHandle.slot(_:offsetBy:)(v13, v5).position;
        if (v22 >= 1)
        {
          sub_1A9977080();
          Deque._UnsafeHandle.slot(_:offsetBy:)(v31, v22);
          v26.position = 0;
          v27 = v22;
          goto LABEL_78;
        }
      }
    }

    else
    {
      if (v23 >= v13)
      {
LABEL_71:
        if (v12 < 1)
        {
          goto LABEL_79;
        }

        sub_1A9977080();
        Deque._UnsafeHandle.slot(_:offsetBy:)(v14, v12);
        v26.position = v13;
        v27 = v12;
        goto LABEL_78;
      }

      v25 = v20 - v13;
      if (__OFSUB__(v20, v13))
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      if (v25 >= 1)
      {
        sub_1A9977080();
        v14 = Deque._UnsafeHandle.slot(_:offsetBy:)(v14, v25).position;
        result = Deque._UnsafeHandle.slot(_:offsetBy:)(v13, v25).position;
      }

      if (__OFSUB__(v12, v25))
      {
        goto LABEL_92;
      }

      if (v12 - v25 >= 1)
      {
        sub_1A9977080();
        Deque._UnsafeHandle.slot(_:offsetBy:)(v14, v12 - v25);
        v26.position = 0;
        v27 = v12 - v25;
LABEL_78:
        result = Deque._UnsafeHandle.slot(_:offsetBy:)(v26, v27).position;
      }
    }
  }

LABEL_79:
  v39 = a3[1].position;
  v34 = __OFSUB__(v39, v5);
  v36 = v39 - v5;
  if (v34)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

LABEL_80:
  a3[1].position = v36;
  return result;
}

__n128 sub_1A981750C@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = v2[1].n128_u64[0];
  result = *v2;
  *a1 = *v2;
  a1[1].n128_u64[0] = v3;
  return result;
}

uint64_t sub_1A9817574@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_1A9977320();
  v5 = *(v3 + 8);
  *a1 = result;
  a1[1] = v5;
  a1[2] = 0;
  return result;
}

uint64_t sub_1A98175DC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_1A9977320();
  *a1 = result;
  a1[1] = v3;
  a1[2] = 0;
  return result;
}

uint64_t sub_1A9817640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A981767C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1A98176C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t Deque.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v4 = type metadata accessor for Deque(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  return _arrayDescription<A>(for:)(&v7, v4, WitnessTable);
}

uint64_t sub_1A98177CC(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1A9976360();
  v4 = sub_1A982B3C8(&qword_1EB3AC888, MEMORY[0x1E6966BD8], MEMORY[0x1E6966BE0]);
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_1A98178BC;

  return MEMORY[0x1EEE6D8C8](v2 + 2, v3, v4);
}

uint64_t sub_1A98178BC()
{
  v2 = *(*v1 + 32);
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1A9976B80();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1A9817A4C;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1A9976B80();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1A9807718;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t sub_1A9817A4C()
{
  v0[3] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1A9817AF4()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3ABCE0);
  v1 = __swift_project_value_buffer(v0, qword_1EB3ABCE0);
  if (qword_1EB3AC860 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3AC868);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1A9817BBC()
{
  result = [objc_allocWithZone(SFApplicationExtensionsCache) init];
  qword_1EB3AB638 = result;
  return result;
}

id static SFApplicationExtensionsCache.shared()()
{
  if (qword_1EB3AB630 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB3AB638;

  return v1;
}

uint64_t SFApplicationExtensionsCache.CacheError.hashValue.getter()
{
  sub_1A9977980();
  MEMORY[0x1AC58A630](0);
  return sub_1A99779B0();
}

uint64_t sub_1A9817D1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2A70, &qword_1A99983F0);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_1A9998160;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2A78, &qword_1A99983F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9998170;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 40) = 0x80000001A99E4E60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2A80, &qword_1A9998400);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_1A9996D60;
  strcpy((v1 + 32), "extensionItems");
  *(v1 + 47) = -18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2A88, &qword_1A9998408);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A9996D60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A90, &qword_1A9998410);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1A9996D60;
  *(v3 + 32) = 0x656D686361747461;
  *(v3 + 40) = 0xEB0000000073746ELL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B4F60, &qword_1A9998418);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A9996D60;
  v5 = sub_1A97BF200(&unk_1F1D273A8);
  sub_1A97B06FC(&unk_1F1D273C8, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v4 + 32) = v5;
  *(v3 + 48) = v4;
  v6 = sub_1A97BF214(v3);
  swift_setDeallocating();
  sub_1A97B06FC(v3 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  *(v2 + 32) = v6;
  *(v1 + 48) = v2;
  v7 = sub_1A97BF228(v1);
  swift_setDeallocating();
  sub_1A97B06FC(v1 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2AB8, &qword_1A9998438);
  *(inited + 48) = v7;
  v117 = v8;
  *(inited + 72) = v8;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x80000001A99E4E80;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  *(inited + 120) = v116;
  *(inited + 96) = &unk_1F1D26C18;
  v9 = sub_1A97BF23C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B16C8, &unk_1A999CE90);
  swift_arrayDestroy();
  *(v118 + 32) = v9;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1A9998170;
  *(v10 + 32) = 0xD000000000000019;
  *(v10 + 40) = 0x80000001A99E4E60;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1A9996D60;
  strcpy((v11 + 32), "extensionItems");
  *(v11 + 47) = -18;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A9996D60;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1A9996D60;
  *(v13 + 32) = 0x656D686361747461;
  *(v13 + 40) = 0xEB0000000073746ELL;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1A9996D60;
  v15 = sub_1A97BF200(&unk_1F1D273E0);
  sub_1A97B06FC(&unk_1F1D27400, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v14 + 32) = v15;
  *(v13 + 48) = v14;
  v16 = sub_1A97BF214(v13);
  swift_setDeallocating();
  sub_1A97B06FC(v13 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  *(v12 + 32) = v16;
  *(v11 + 48) = v12;
  v17 = sub_1A97BF228(v11);
  swift_setDeallocating();
  sub_1A97B06FC(v11 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  *(v10 + 48) = v17;
  *(v10 + 72) = v117;
  *(v10 + 80) = 0xD000000000000014;
  *(v10 + 120) = v116;
  *(v10 + 88) = 0x80000001A99E4E80;
  *(v10 + 96) = &unk_1F1D26CA8;
  v18 = sub_1A97BF23C(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v118 + 40) = v18;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1A9998170;
  *(v19 + 32) = 0xD000000000000019;
  *(v19 + 40) = 0x80000001A99E4E60;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1A9996D60;
  strcpy((v20 + 32), "extensionItems");
  *(v20 + 47) = -18;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1A9996D60;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1A9996D60;
  *(v22 + 32) = 0x656D686361747461;
  *(v22 + 40) = 0xEB0000000073746ELL;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1A9996D60;
  v24 = sub_1A97BF200(&unk_1F1D27418);
  sub_1A97B06FC(&unk_1F1D27438, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v23 + 32) = v24;
  *(v22 + 48) = v23;
  v25 = sub_1A97BF214(v22);
  swift_setDeallocating();
  sub_1A97B06FC(v22 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  *(v21 + 32) = v25;
  *(v20 + 48) = v21;
  v26 = sub_1A97BF228(v20);
  swift_setDeallocating();
  sub_1A97B06FC(v20 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  *(v19 + 48) = v26;
  *(v19 + 72) = v117;
  *(v19 + 80) = 0xD000000000000014;
  *(v19 + 120) = v116;
  *(v19 + 88) = 0x80000001A99E4E80;
  *(v19 + 96) = &unk_1F1D26D58;
  v27 = sub_1A97BF23C(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v118 + 48) = v27;
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_1A9998170;
  *(v28 + 32) = 0xD000000000000019;
  *(v28 + 40) = 0x80000001A99E4E60;
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1A9996D60;
  strcpy((v29 + 32), "extensionItems");
  *(v29 + 47) = -18;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1A9996D60;
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1A9996D60;
  *(v31 + 32) = 0x656D686361747461;
  *(v31 + 40) = 0xEB0000000073746ELL;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1A9996D60;
  v33 = sub_1A97BF200(&unk_1F1D27450);
  sub_1A97B06FC(&unk_1F1D27470, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v32 + 32) = v33;
  *(v31 + 48) = v32;
  v34 = sub_1A97BF214(v31);
  swift_setDeallocating();
  sub_1A97B06FC(v31 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  *(v30 + 32) = v34;
  *(v29 + 48) = v30;
  v35 = sub_1A97BF228(v29);
  swift_setDeallocating();
  sub_1A97B06FC(v29 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  *(v28 + 48) = v35;
  *(v28 + 72) = v117;
  *(v28 + 80) = 0xD000000000000014;
  *(v28 + 120) = v116;
  *(v28 + 88) = 0x80000001A99E4E80;
  *(v28 + 96) = &unk_1F1D26DF8;
  v36 = sub_1A97BF23C(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v118 + 56) = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1A9998170;
  *(v37 + 32) = 0xD000000000000019;
  *(v37 + 40) = 0x80000001A99E4E60;
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_1A9996D60;
  strcpy((v38 + 32), "extensionItems");
  *(v38 + 47) = -18;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1A9996D60;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1A9996D60;
  *(v40 + 32) = 0x656D686361747461;
  *(v40 + 40) = 0xEB0000000073746ELL;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1A9996D60;
  v42 = sub_1A97BF200(&unk_1F1D27488);
  sub_1A97B06FC(&unk_1F1D274A8, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v41 + 32) = v42;
  *(v40 + 48) = v41;
  v43 = sub_1A97BF214(v40);
  swift_setDeallocating();
  sub_1A97B06FC(v40 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  swift_deallocClassInstance();
  *(v39 + 32) = v43;
  *(v38 + 48) = v39;
  v44 = sub_1A97BF228(v38);
  swift_setDeallocating();
  sub_1A97B06FC(v38 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  *(v37 + 48) = v44;
  *(v37 + 72) = v117;
  *(v37 + 80) = 0xD000000000000014;
  *(v37 + 120) = v116;
  *(v37 + 88) = 0x80000001A99E4E80;
  *(v37 + 96) = &unk_1F1D26E98;
  v45 = sub_1A97BF23C(v37);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v118 + 64) = v45;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1A9998170;
  *(v46 + 32) = 0xD000000000000019;
  *(v46 + 40) = 0x80000001A99E4E60;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1A9996D60;
  strcpy((v47 + 32), "extensionItems");
  *(v47 + 47) = -18;
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1A9996D60;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1A9996D60;
  *(v49 + 32) = 0x656D686361747461;
  *(v49 + 40) = 0xEB0000000073746ELL;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1A9996D60;
  v51 = sub_1A97BF200(&unk_1F1D274C0);
  sub_1A97B06FC(&unk_1F1D274E0, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v50 + 32) = v51;
  *(v49 + 48) = v50;
  v52 = sub_1A97BF214(v49);
  swift_setDeallocating();
  sub_1A97B06FC(v49 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  swift_deallocClassInstance();
  *(v48 + 32) = v52;
  *(v47 + 48) = v48;
  v53 = sub_1A97BF228(v47);
  swift_setDeallocating();
  sub_1A97B06FC(v47 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  swift_deallocClassInstance();
  *(v46 + 48) = v53;
  *(v46 + 72) = v117;
  *(v46 + 80) = 0xD000000000000014;
  *(v46 + 120) = v116;
  *(v46 + 88) = 0x80000001A99E4E80;
  *(v46 + 96) = &unk_1F1D26F18;
  v54 = sub_1A97BF23C(v46);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v118 + 72) = v54;
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1A9998170;
  *(v55 + 32) = 0xD000000000000019;
  *(v55 + 40) = 0x80000001A99E4E60;
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1A9996D60;
  strcpy((v56 + 32), "extensionItems");
  *(v56 + 47) = -18;
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1A9996D60;
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1A9996D60;
  *(v58 + 32) = 0x656D686361747461;
  *(v58 + 40) = 0xEB0000000073746ELL;
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1A9996D60;
  v60 = sub_1A97BF200(&unk_1F1D274F8);
  sub_1A97B06FC(&unk_1F1D27518, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v59 + 32) = v60;
  *(v58 + 48) = v59;
  v61 = sub_1A97BF214(v58);
  swift_setDeallocating();
  sub_1A97B06FC(v58 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  swift_deallocClassInstance();
  *(v57 + 32) = v61;
  *(v56 + 48) = v57;
  v62 = sub_1A97BF228(v56);
  swift_setDeallocating();
  sub_1A97B06FC(v56 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  swift_deallocClassInstance();
  *(v55 + 48) = v62;
  *(v55 + 72) = v117;
  *(v55 + 80) = 0xD000000000000014;
  *(v55 + 120) = v116;
  *(v55 + 88) = 0x80000001A99E4E80;
  *(v55 + 96) = &unk_1F1D26FA8;
  v63 = sub_1A97BF23C(v55);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v118 + 80) = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1A9998170;
  *(v64 + 32) = 0xD000000000000019;
  *(v64 + 40) = 0x80000001A99E4E60;
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1A9996D60;
  strcpy((v65 + 32), "extensionItems");
  *(v65 + 47) = -18;
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1A9996D60;
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1A9996D60;
  *(v67 + 32) = 0x656D686361747461;
  *(v67 + 40) = 0xEB0000000073746ELL;
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1A9996D60;
  v69 = sub_1A97BF200(&unk_1F1D27530);
  sub_1A97B06FC(&unk_1F1D27550, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v68 + 32) = v69;
  *(v67 + 48) = v68;
  v70 = sub_1A97BF214(v67);
  swift_setDeallocating();
  sub_1A97B06FC(v67 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  swift_deallocClassInstance();
  *(v66 + 32) = v70;
  *(v65 + 48) = v66;
  v71 = sub_1A97BF228(v65);
  swift_setDeallocating();
  sub_1A97B06FC(v65 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  swift_deallocClassInstance();
  *(v64 + 48) = v71;
  *(v64 + 72) = v117;
  *(v64 + 80) = 0xD000000000000014;
  *(v64 + 120) = v116;
  *(v64 + 88) = 0x80000001A99E4E80;
  *(v64 + 96) = &unk_1F1D27028;
  v72 = sub_1A97BF23C(v64);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v118 + 88) = v72;
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1A9998170;
  *(v73 + 32) = 0xD000000000000019;
  *(v73 + 40) = 0x80000001A99E4E60;
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1A9996D60;
  strcpy((v74 + 32), "extensionItems");
  *(v74 + 47) = -18;
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1A9996D60;
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1A9996D60;
  *(v76 + 32) = 0x656D686361747461;
  *(v76 + 40) = 0xEB0000000073746ELL;
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1A9996D60;
  v78 = sub_1A97BF200(&unk_1F1D27568);
  sub_1A97B06FC(&unk_1F1D27588, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v77 + 32) = v78;
  *(v76 + 48) = v77;
  v79 = sub_1A97BF214(v76);
  swift_setDeallocating();
  sub_1A97B06FC(v76 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  swift_deallocClassInstance();
  *(v75 + 32) = v79;
  *(v74 + 48) = v75;
  v80 = sub_1A97BF228(v74);
  swift_setDeallocating();
  sub_1A97B06FC(v74 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  swift_deallocClassInstance();
  *(v73 + 48) = v80;
  *(v73 + 72) = v117;
  *(v73 + 80) = 0xD000000000000014;
  *(v73 + 120) = v116;
  *(v73 + 88) = 0x80000001A99E4E80;
  *(v73 + 96) = &unk_1F1D270A8;
  v81 = sub_1A97BF23C(v73);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v118 + 96) = v81;
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1A9998170;
  *(v82 + 32) = 0xD000000000000019;
  *(v82 + 40) = 0x80000001A99E4E60;
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1A9996D60;
  strcpy((v83 + 32), "extensionItems");
  *(v83 + 47) = -18;
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1A9996D60;
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1A9996D60;
  *(v85 + 32) = 0x656D686361747461;
  *(v85 + 40) = 0xEB0000000073746ELL;
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1A9998180;
  v87 = sub_1A97BF200(&unk_1F1D275A0);
  sub_1A97B06FC(&unk_1F1D275C0, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v86 + 32) = v87;
  v88 = sub_1A97BF200(&unk_1F1D275D8);
  sub_1A97B06FC(&unk_1F1D275F8, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v86 + 40) = v88;
  v89 = sub_1A97BF200(&unk_1F1D27610);
  sub_1A97B06FC(&unk_1F1D27630, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v86 + 48) = v89;
  *(v85 + 48) = v86;
  v90 = sub_1A97BF214(v85);
  swift_setDeallocating();
  sub_1A97B06FC(v85 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  swift_deallocClassInstance();
  *(v84 + 32) = v90;
  *(v83 + 48) = v84;
  v91 = sub_1A97BF228(v83);
  swift_setDeallocating();
  sub_1A97B06FC(v83 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  swift_deallocClassInstance();
  *(v82 + 48) = v91;
  *(v82 + 72) = v117;
  *(v82 + 80) = 0xD000000000000014;
  *(v82 + 120) = v116;
  *(v82 + 88) = 0x80000001A99E4E80;
  *(v82 + 96) = &unk_1F1D27198;
  v92 = sub_1A97BF23C(v82);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v118 + 104) = v92;
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_1A9998170;
  *(v93 + 32) = 0xD000000000000019;
  *(v93 + 40) = 0x80000001A99E4E60;
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1A9996D60;
  strcpy((v94 + 32), "extensionItems");
  *(v94 + 47) = -18;
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_1A9996D60;
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_1A9996D60;
  *(v96 + 32) = 0x656D686361747461;
  *(v96 + 40) = 0xEB0000000073746ELL;
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1A9998180;
  v98 = sub_1A97BF200(&unk_1F1D27648);
  sub_1A97B06FC(&unk_1F1D27668, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v97 + 32) = v98;
  v99 = sub_1A97BF200(&unk_1F1D27680);
  sub_1A97B06FC(&unk_1F1D276A0, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v97 + 40) = v99;
  v100 = sub_1A97BF200(&unk_1F1D276B8);
  sub_1A97B06FC(&unk_1F1D276D8, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v97 + 48) = v100;
  *(v96 + 48) = v97;
  v101 = sub_1A97BF214(v96);
  swift_setDeallocating();
  sub_1A97B06FC(v96 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  swift_deallocClassInstance();
  *(v95 + 32) = v101;
  *(v94 + 48) = v95;
  v102 = sub_1A97BF228(v94);
  swift_setDeallocating();
  sub_1A97B06FC(v94 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  swift_deallocClassInstance();
  *(v93 + 48) = v102;
  *(v93 + 72) = v117;
  *(v93 + 80) = 0xD000000000000014;
  *(v93 + 120) = v116;
  *(v93 + 88) = 0x80000001A99E4E80;
  *(v93 + 96) = &unk_1F1D27278;
  v103 = sub_1A97BF23C(v93);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v118 + 112) = v103;
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_1A9998170;
  *(v104 + 32) = 0xD000000000000019;
  *(v104 + 40) = 0x80000001A99E4E60;
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1A9996D60;
  strcpy((v105 + 32), "extensionItems");
  *(v105 + 47) = -18;
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1A9996D60;
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_1A9996D60;
  *(v107 + 32) = 0x656D686361747461;
  *(v107 + 40) = 0xEB0000000073746ELL;
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1A9998180;
  v109 = sub_1A97BF200(&unk_1F1D276F0);
  sub_1A97B06FC(&unk_1F1D27710, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v108 + 32) = v109;
  v110 = sub_1A97BF200(&unk_1F1D27728);
  sub_1A97B06FC(&unk_1F1D27748, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v108 + 40) = v110;
  v111 = sub_1A97BF200(&unk_1F1D27760);
  sub_1A97B06FC(&unk_1F1D27780, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v108 + 48) = v111;
  *(v107 + 48) = v108;
  v112 = sub_1A97BF214(v107);
  swift_setDeallocating();
  sub_1A97B06FC(v107 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  swift_deallocClassInstance();
  *(v106 + 32) = v112;
  *(v105 + 48) = v106;
  v113 = sub_1A97BF228(v105);
  swift_setDeallocating();
  sub_1A97B06FC(v105 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  swift_deallocClassInstance();
  *(v104 + 48) = v113;
  *(v104 + 72) = v117;
  *(v104 + 80) = 0xD000000000000014;
  *(v104 + 120) = v116;
  *(v104 + 88) = 0x80000001A99E4E80;
  *(v104 + 96) = &unk_1F1D27358;
  v114 = sub_1A97BF23C(v104);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  *(v118 + 120) = v114;
  off_1EB3AB650 = v118;
  return result;
}

char *sub_1A98196C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v22 = v19 - v2;
  v21 = sub_1A9976FB0();
  v3 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A9976FA0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1A9976680();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = OBJC_IVAR___SFApplicationExtensionsCache_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1180, &qword_1A99919C8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *&v0[v8] = v9;
  v20 = OBJC_IVAR___SFApplicationExtensionsCache_queue;
  v10 = sub_1A9812DE0(0, &qword_1EB3AC8D0, 0x1E69E9610);
  v19[0] = "v24@?0@<PKPlugIn>8Q16";
  v19[1] = v10;
  sub_1A9976660();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1A982B3C8(&qword_1EB3AC8E0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B26D8, &unk_1A9997EB0);
  sub_1A97AF974(&qword_1EB3AC910, &unk_1EB3B26D8, &unk_1A9997EB0, MEMORY[0x1E69E6328]);
  sub_1A99771F0();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8098], v21);
  *&v0[v20] = sub_1A9976FE0();
  *&v0[OBJC_IVAR___SFApplicationExtensionsCache_discoveryTask] = 0;
  v0[OBJC_IVAR___SFApplicationExtensionsCache_primed] = 0;
  *&v0[OBJC_IVAR___SFApplicationExtensionsCache_cacheMisses] = 0;
  *&v0[OBJC_IVAR___SFApplicationExtensionsCache_cacheHits] = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___SFApplicationExtensionsCache_cachedExtensionIdentitiesByIdentifier] = sub_1A97BF36C(MEMORY[0x1E69E7CC0]);
  *&v0[OBJC_IVAR___SFApplicationExtensionsCache_cachedSupersedingPluginsByIdentifier] = sub_1A97BF558(v11);
  *&v0[OBJC_IVAR___SFApplicationExtensionsCache_cachedResults] = sub_1A97BF65C(v11);
  *&v0[OBJC_IVAR___SFApplicationExtensionsCache_keysBeingDiscovered] = v11;
  v23.receiver = v0;
  v23.super_class = SFApplicationExtensionsCache;
  v12 = objc_msgSendSuper2(&v23, sel_init);
  v13 = sub_1A9976C00();
  v14 = v22;
  (*(*(v13 - 8) + 56))(v22, 1, 1, v13);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v15;
  v17 = v12;
  *&v17[OBJC_IVAR___SFApplicationExtensionsCache_discoveryTask] = sub_1A97B4F40(0, 0, v14, &unk_1A99983C0, v16);

  return v17;
}

uint64_t sub_1A9819B60()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_1A9819C48;

    return sub_1A9819D54();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1A9819C48()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1A9819D54()
{
  v1[25] = v0;
  v2 = sub_1A9976630();
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v3 = sub_1A9976680();
  v1[29] = v3;
  v1[30] = *(v3 - 8);
  v1[31] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1660, &qword_1A9992810);
  v1[32] = v4;
  v1[33] = *(v4 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v5 = sub_1A99763B0();
  v1[36] = v5;
  v1[37] = *(v5 - 8);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v6 = sub_1A9976360();
  v1[41] = v6;
  v1[42] = *(v6 - 8);
  v1[43] = swift_task_alloc();
  v7 = sub_1A9976380();
  v1[44] = v7;
  v1[45] = *(v7 - 8);
  v1[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A981A010, 0, 0);
}

uint64_t sub_1A981A010()
{
  SFPerformDataMigrationIfNeeded();
  if (qword_1EB3ABCD8 != -1)
  {
    swift_once();
  }

  v1 = sub_1A99764A0();
  v0[47] = __swift_project_value_buffer(v1, qword_1EB3ABCE0);
  v2 = sub_1A9976480();
  v3 = sub_1A9976F90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A9662000, v2, v3, "ExtensionsCache: start continuous extensions discovery", v4, 2u);
    MEMORY[0x1AC58D2C0](v4, -1, -1);
  }

  sub_1A99763A0();
  v0[48] = 0;
  sub_1A9976370();
  v5 = OBJC_IVAR___SFApplicationExtensionsCache_queue;
  v0[49] = OBJC_IVAR___SFApplicationExtensionsCache_lock;
  v0[50] = v5;
  v6 = swift_task_alloc();
  v0[51] = v6;
  *v6 = v0;
  v6[1] = sub_1A981A30C;

  return sub_1A98177CC(0, 0);
}

uint64_t sub_1A981A30C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 416) = a1;
  *(v3 + 424) = v1;

  if (!v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A981A420, 0, 0);
  }

  return result;
}

void sub_1A981A420()
{
  v1 = *(v0 + 416);
  if (!v1)
  {
    v30 = *(v0 + 360);
    v29 = *(v0 + 368);
    v31 = *(v0 + 352);
    (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
    (*(v30 + 8))(v29, v31);

    v32 = *(v0 + 8);

    v32();
    return;
  }

  v2 = *(v1 + 16);
  v109 = *(v0 + 416);
  if (v2)
  {
    v3 = 0;
    v113 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_64;
      }

      v4 = *(v0 + 296);
      v5 = *(v4 + 16);
      v4 += 16;
      v6 = (*(v4 + 64) + 32) & ~*(v4 + 64);
      v7 = *(v4 + 56);
      v5(*(v0 + 320), v1 + v6 + v7 * v3, *(v0 + 288));
      v8 = sub_1A9976350();
      if (!v8)
      {
        break;
      }

      v9 = v8;
      v10 = [v8 attributes];
      if (!v10)
      {
        v26 = *(v0 + 320);
        v28 = *(v0 + 288);
        v27 = *(v0 + 296);

        (*(v27 + 8))(v26, v28);
        goto LABEL_19;
      }

      v11 = v10;
      v12 = sub_1A9976700();

      *(v0 + 136) = 0xD000000000000019;
      *(v0 + 144) = 0x80000001A99E4E60;
      sub_1A9977250();
      if (*(v12 + 16) && (v13 = sub_1A97BCF30(v0 + 64), (v14 & 1) != 0))
      {
        sub_1A97AF7EC(*(v12 + 56) + 32 * v13, v0 + 104);

        sub_1A97C108C(v0 + 64);

        if (*(v0 + 128))
        {
          v16 = *(v0 + 312);
          v15 = *(v0 + 320);
          v17 = *(v0 + 288);
          v18 = *(v0 + 296);
          sub_1A97B06FC(v0 + 104, &qword_1EB3B0BA0, &unk_1A99923D0);
          v19 = *(v18 + 32);
          v19(v16, v15, v17);
          v20 = v113;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 152) = v113;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1A97BDC64(0, *(v113 + 16) + 1, 1);
            v20 = *(v0 + 152);
          }

          v23 = *(v20 + 16);
          v22 = *(v20 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_1A97BDC64((v22 > 1), v23 + 1, 1);
            v20 = *(v0 + 152);
          }

          v24 = *(v0 + 312);
          v25 = *(v0 + 288);
          *(v20 + 16) = v23 + 1;
          v113 = v20;
          v19(v20 + v6 + v23 * v7, v24, v25);
          v1 = v109;
          goto LABEL_21;
        }
      }

      else
      {

        sub_1A97C108C(v0 + 64);
        *(v0 + 104) = 0u;
        *(v0 + 120) = 0u;
      }

      (*(*(v0 + 296) + 8))(*(v0 + 320), *(v0 + 288));
LABEL_20:
      sub_1A97B06FC(v0 + 104, &qword_1EB3B0BA0, &unk_1A99923D0);
LABEL_21:
      if (v2 == ++v3)
      {
        goto LABEL_27;
      }
    }

    (*(*(v0 + 296) + 8))(*(v0 + 320), *(v0 + 288));
LABEL_19:
    *(v0 + 120) = 0u;
    *(v0 + 104) = 0u;
    goto LABEL_20;
  }

  v113 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v33 = sub_1A98DA210(v113);
  v102 = v34;

  v35 = *(v33 + 2);
  v36 = MEMORY[0x1E69E7CC0];
  if (v35)
  {
    v37 = *(v0 + 296);
    *(v0 + 160) = MEMORY[0x1E69E7CC0];
    sub_1A97BDC44(0, v35, 0);
    v36 = *(v0 + 160);
    v38 = &v33[(*(v37 + 80) + 32) & ~*(v37 + 80)];
    v39 = *(v37 + 72);
    v40 = *(v37 + 16);
    do
    {
      v41 = *(v0 + 280);
      v40(v41 + *(*(v0 + 256) + 48), v38, *(v0 + 288));
      *v41 = sub_1A9976390();
      v41[1] = v42;
      *(v0 + 160) = v36;
      v44 = *(v36 + 16);
      v43 = *(v36 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1A97BDC44((v43 > 1), v44 + 1, 1);
        v36 = *(v0 + 160);
      }

      v45 = *(v0 + 280);
      v46 = *(v0 + 264);
      *(v36 + 16) = v44 + 1;
      sub_1A97D8380(v45, v36 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v44, &qword_1EB3B1660, &qword_1A9992810);
      v38 += v39;
      --v35;
    }

    while (v35);
  }

  if (!*(v36 + 16))
  {
    v47 = MEMORY[0x1E69E7CC8];
    *(v0 + 168) = MEMORY[0x1E69E7CC8];
LABEL_45:

    v75 = (v0 + 176);

    v76 = sub_1A9976480();
    v77 = sub_1A9976F90();
    v78 = os_log_type_enabled(v76, v77);
    v79 = MEMORY[0x1E69E7CC0];
    if (v78)
    {
      v80 = swift_slowAlloc();
      *v80 = 134217984;
      *(v80 + 4) = *(v47 + 16);

      _os_log_impl(&dword_1A9662000, v76, v77, "ExtensionsCache: received extensions update with %ld extensions", v80, 0xCu);
      MEMORY[0x1AC58D2C0](v80, -1, -1);
    }

    else
    {
    }

    v81 = *(v0 + 424);
    v82 = *(v0 + 392);
    v83 = *(v0 + 200);
    *(v0 + 176) = v79;
    v84 = *(v83 + v82);
    v85 = swift_task_alloc();
    v85[2] = v47;
    v85[3] = v83;
    v85[4] = v75;
    v85[5] = v102;
    v86 = swift_task_alloc();
    *(v86 + 16) = sub_1A982B278;
    *(v86 + 24) = v85;
    os_unfair_lock_lock(v84 + 4);
    sub_1A982B4AC();
    os_unfair_lock_unlock(v84 + 4);
    if (v81)
    {
    }

    else
    {

      v87 = *v75;
      v88 = *(*v75 + 16);
      v89 = MEMORY[0x1E69E7CC0];
      if (v88)
      {
        *(v0 + 184) = MEMORY[0x1E69E7CC0];
        sub_1A97BDC24(0, v88, 0);
        v89 = *(v0 + 184);
        v90 = (v87 + 40);
        do
        {
          v92 = *(v90 - 1);
          v91 = *v90;

          v93 = sub_1A98297C4(v92, v91);

          *(v0 + 184) = v89;
          v95 = *(v89 + 16);
          v94 = *(v89 + 24);
          if (v95 >= v94 >> 1)
          {
            sub_1A97BDC24((v94 > 1), v95 + 1, 1);
            v89 = *(v0 + 184);
          }

          *(v89 + 16) = v95 + 1;
          *(v89 + 8 * v95 + 32) = v93;
          v90 += 2;
          --v88;
        }

        while (v88);
      }

      v96 = *(v0 + 248);
      v110 = *(v0 + 240);
      v112 = *(v0 + 232);
      v105 = *(v0 + 224);
      v97 = *(v0 + 208);
      v108 = *(v0 + 216);
      v98 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v99 = swift_allocObject();
      *(v99 + 16) = v98;
      *(v99 + 24) = v89;
      *(v0 + 48) = sub_1A982B298;
      *(v0 + 56) = v99;
      *(v0 + 16) = MEMORY[0x1E69E9820];
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_1A981D3F8;
      *(v0 + 40) = &block_descriptor_220;
      v100 = _Block_copy((v0 + 16));

      sub_1A9976640();
      *(v0 + 192) = MEMORY[0x1E69E7CC0];
      sub_1A982B3C8(&qword_1EB3AC930, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B28A8, &unk_1A9998190);
      sub_1A97AF974(&qword_1EB3AC920, &qword_1EB3B28A8, &unk_1A9998190, MEMORY[0x1E69E6328]);
      sub_1A99771F0();
      MEMORY[0x1AC589C70](0, v96, v105, v100);
      _Block_release(v100);
      (*(v108 + 8))(v105, v97);
      (*(v110 + 8))(v96, v112);

      v101 = swift_task_alloc();
      *(v0 + 408) = v101;
      *v101 = v0;
      v101[1] = sub_1A981A30C;

      sub_1A98177CC(0, 0);
    }

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B16A0, &qword_1A9992858);
  v47 = sub_1A99774B0();
  v48 = *(v36 + 16);
  *(v0 + 168) = v47;
  v107 = v48;
  if (!v48)
  {
    goto LABEL_45;
  }

  v49 = 0;
  v50 = *(v0 + 264);
  v106 = *(v0 + 272);
  v51 = v36 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
  v103 = *(v50 + 72);
  v104 = *(*(v0 + 256) + 48);
  while (1)
  {
    sub_1A97C13A4(v51, *(v0 + 272), &qword_1EB3B1660, &qword_1A9992810);
    if (__OFADD__(v49, 1))
    {
      break;
    }

    v114 = v49 + 1;
    v55 = *(v0 + 272);
    v56 = *(*(v0 + 296) + 32);
    v57 = *v55;
    v58 = v55[1];
    v56(*(v0 + 304), v106 + v104, *(v0 + 288));
    v59 = sub_1A97BCEB8(v57, v58);
    v61 = v47;
    v62 = *(v47 + 16);
    v63 = (v60 & 1) == 0;
    v64 = __OFADD__(v62, v63);
    v65 = v62 + v63;
    if (v64)
    {
      goto LABEL_65;
    }

    v66 = v60;
    v111 = v49;
    if (*(v61 + 24) < v65)
    {
      sub_1A982663C(v65, 1, MEMORY[0x1E6966C00], &unk_1EB3B16A0, &qword_1A9992858);
      v59 = sub_1A97BCEB8(v57, v58);
      if ((v66 & 1) != (v67 & 1))
      {

        sub_1A9977880();
        return;
      }
    }

    v68 = *(v0 + 168);
    v70 = *(v0 + 296);
    v69 = *(v0 + 304);
    v71 = *(v0 + 288);
    if (v66)
    {
      v52 = v59;
      v53 = *(v0 + 304);
      v54 = *(v0 + 288);

      (*(v70 + 40))(v68[7] + *(v70 + 72) * v52, v53, v54);
      v47 = v68;
    }

    else
    {
      v68[(v59 >> 6) + 8] |= 1 << v59;
      v72 = (v68[6] + 16 * v59);
      *v72 = v57;
      v72[1] = v58;
      v56(v68[7] + *(v70 + 72) * v59, v69, v71);
      v73 = v68[2];
      v64 = __OFADD__(v73, 1);
      v74 = v73 + 1;
      if (v64)
      {
        goto LABEL_66;
      }

      v47 = v68;
      v68[2] = v74;
    }

    v49 = v111 + 1;
    v51 += v103;
    if (v114 == v107)
    {
      goto LABEL_45;
    }
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

uint64_t sub_1A981B00C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A981B108, 0, 0);
}

uint64_t sub_1A981B108()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall SFApplicationExtensionsCache.primeExtensionsResult(with:)(Swift::OpaquePointer with)
{
  v3 = sub_1A9976630();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1A9976680();
  v23 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A9829EB0(with._rawValue);
  v10 = v9;
  aBlock[0] = 0;
  v11 = *(v1 + OBJC_IVAR___SFApplicationExtensionsCache_lock);
  v30 = aBlock;
  v31 = v1;
  v32 = v8;
  v33 = v9;
  v27 = sub_1A982A570;
  v28 = &v29;
  os_unfair_lock_lock(v11 + 4);
  sub_1A982A590();
  os_unfair_lock_unlock(v11 + 4);
  if (aBlock[0])
  {

    if (qword_1EB3ABCD8 != -1)
    {
      swift_once();
    }

    v12 = sub_1A99764A0();
    __swift_project_value_buffer(v12, qword_1EB3ABCE0);

    v13 = sub_1A9976480();
    v14 = sub_1A9976F90();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136315138;
      v17 = sub_1A97AF148(v8, v10, aBlock);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_1A9662000, v13, v14, "ExtensionsCache: found cached result. no priming needed for cache key = [%s]", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x1AC58D2C0](v16, -1, -1);
      MEMORY[0x1AC58D2C0](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    *(v1 + OBJC_IVAR___SFApplicationExtensionsCache_primed) = 1;
    v22[1] = *(v1 + OBJC_IVAR___SFApplicationExtensionsCache_queue);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2]._rawValue = v18;
    v19[3]._rawValue = v8;
    v19[4]._rawValue = v10;
    v19[5]._rawValue = with._rawValue;
    aBlock[4] = sub_1A982A5B8;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A981D3F8;
    aBlock[3] = &block_descriptor_4;
    v20 = _Block_copy(aBlock);

    sub_1A9976640();
    v34 = MEMORY[0x1E69E7CC0];
    sub_1A982B3C8(&qword_1EB3AC930, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B28A8, &unk_1A9998190);
    sub_1A97AF974(&qword_1EB3AC920, &qword_1EB3B28A8, &unk_1A9998190, MEMORY[0x1E69E6328]);
    v21 = v26;
    sub_1A99771F0();
    MEMORY[0x1AC589C70](0, v7, v5, v20);
    _Block_release(v20);
    (*(v25 + 8))(v5, v21);
    (*(v23 + 8))(v7, v24);
  }
}

void sub_1A981B6DC(uint64_t a1, os_unfair_lock_s *a2, unint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v16 = 0;
    v9 = *(Strong + OBJC_IVAR___SFApplicationExtensionsCache_lock);
    v15 = MEMORY[0x1EEE9AC00](Strong);
    MEMORY[0x1EEE9AC00](v15);
    os_unfair_lock_lock(v9 + 4);
    sub_1A982B4AC();
    os_unfair_lock_unlock(v9 + 4);
    sub_1A981B92C(a4, a2, a3, 1, 1, 0, 0);

    if (qword_1EB3ABCD8 != -1)
    {
      swift_once();
    }

    v10 = sub_1A99764A0();
    __swift_project_value_buffer(v10, qword_1EB3ABCE0);

    v11 = sub_1A9976480();
    v12 = sub_1A9976F90();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1A97AF148(a2, a3, &v16);
      _os_log_impl(&dword_1A9662000, v11, v12, "ExtensionsCache: priming done for cache key = [%s]", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x1AC58D2C0](v14, -1, -1);
      MEMORY[0x1AC58D2C0](v13, -1, -1);
    }
  }
}

os_unfair_lock_s *sub_1A981B92C(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, int a4, int a5, int a6, void *a7)
{
  v8 = v7;
  v193 = a7;
  LODWORD(v217) = a6;
  v191 = a5;
  v192 = a4;
  v211 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v189 = &v188 - v12;
  v13 = sub_1A9976230();
  v215 = *(v13 - 8);
  v216 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v210 = &v188 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v218 = &v188 - v16;
  v195 = sub_1A9976460();
  v194 = *(v195 - 8);
  v17 = MEMORY[0x1EEE9AC00](v195);
  v205 = &v188 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v214 = &v188 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AD0, &qword_1A9998440);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v190 = &v188 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v188 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v188 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v188 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v199 = &v188 - v32;
  v33 = sub_1A9976690();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = (&v188 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *(v8 + OBJC_IVAR___SFApplicationExtensionsCache_queue);
  *v36 = v37;
  (*(v34 + 104))(v36, *MEMORY[0x1E69E8020], v33);
  v38 = v37;
  LOBYTE(v37) = sub_1A99766A0();
  v40 = *(v34 + 8);
  v39 = (v34 + 8);
  v40(v36, v33);
  if ((v37 & 1) == 0)
  {
    goto LABEL_119;
  }

  v212 = v28;
  v41 = OBJC_IVAR___SFApplicationExtensionsCache_keysBeingDiscovered;
  v42 = swift_beginAccess();
  v204 = v8;
  v198 = v41;
  v43 = *(v8 + v41);
  v225[0] = a2;
  v225[1] = a3;
  v201 = a3;
  MEMORY[0x1EEE9AC00](v42);
  v186 = v225;

  v44 = sub_1A9824824(sub_1A982B2A0, &v184, v43);
  v28 = 0;

  v36 = &OBJC_IVAR___SFSystemSession__sfSession;
  v200 = a2;
  if (v44)
  {
    if (qword_1EB3ABCD8 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_123;
  }

  while (1)
  {
    v51 = v204;
    v39 = v198;
    swift_beginAccess();
    v33 = *&v39[v51];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v39[v51] = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_120;
    }

    while (1)
    {
      v54 = *(v33 + 16);
      v53 = *(v33 + 24);
      if (v54 >= v53 >> 1)
      {
        v33 = sub_1A97AE618((v53 > 1), v54 + 1, 1, v33);
      }

      *(v33 + 16) = v54 + 1;
      v55 = v33 + 16 * v54;
      v56 = v201;
      *(v55 + 32) = a2;
      *(v55 + 40) = v56;
      *&v198[v204] = v33;
      swift_endAccess();
      if (*(v36 + 411) != -1)
      {
        swift_once();
      }

      v57 = sub_1A99764A0();
      v58 = __swift_project_value_buffer(v57, qword_1EB3ABCE0);

      v213 = v58;
      v59 = sub_1A9976480();
      v60 = sub_1A9976F90();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v225[0] = v62;
        *v61 = 136315138;
        *(v61 + 4) = sub_1A97AF148(a2, v56, v225);
        _os_log_impl(&dword_1A9662000, v59, v60, "ExtensionsCache: start evaluation for cache key = [%s]", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v62);
        MEMORY[0x1AC58D2C0](v62, -1, -1);
        MEMORY[0x1AC58D2C0](v61, -1, -1);
      }

      v36 = (v194 + 56);
      v39 = *(v194 + 56);
      (v39)(v199, 1, 1, v195);
      v63 = MEMORY[0x1E69E7CC0];
      v64 = v204;
      if (v192)
      {
        v65 = MEMORY[0x1E69E7CC0];
        v66 = share_sheet_log(MEMORY[0x1E69E7CC0]);
        if (v191)
        {
          if (!v66)
          {
            goto LABEL_131;
          }

          swift_unknownObjectRetain();
          sub_1A9976440();
        }

        else
        {
          if (!v66)
          {
            goto LABEL_132;
          }

          v31 = v212;
          sub_1A9976450();
        }

        v68 = v199;
        sub_1A97B06FC(v199, &unk_1EB3B2AD0, &qword_1A9998440);
        v69 = v195;
        (v39)(v31, 0, 1, v195);
        sub_1A97D8380(v31, v68, &unk_1EB3B2AD0, &qword_1A9998440);
        sub_1A97C13A4(v68, v25, &unk_1EB3B2AD0, &qword_1A9998440);
        v70 = v194;
        if ((*(v194 + 48))(v25, 1, v69) == 1)
        {
          sub_1A97B06FC(v25, &unk_1EB3B2AD0, &qword_1A9998440);
          v64 = v204;
          v63 = v65;
        }

        else
        {
          v39 = v214;
          (*(v70 + 32))(v214, v25, v69);
          v71 = sub_1A9977000();
          v72 = share_sheet_log(v71);
          if (!v72)
          {
            goto LABEL_133;
          }

          v73 = v72;
          v186 = v65;
          LOBYTE(v185) = 2;
          v184 = 19;
          sub_1A9976430();

          (*(v70 + 8))(v39, v69);
          v63 = v65;
          v64 = v204;
        }
      }

      v223 = v63;
      v224 = v63;
      a2 = v63;
      v74 = sub_1A97BFB78(v63);
      v217 = v74;
      if (!v193)
      {
        a2 = *(v64 + OBJC_IVAR___SFApplicationExtensionsCache_lock);
        v79 = MEMORY[0x1EEE9AC00](v74);
        MEMORY[0x1EEE9AC00](v79);
        v186 = sub_1A982B2BC;
        v187 = v80;
        os_unfair_lock_lock(a2 + 4);
        v36 = v28;
        sub_1A982B4AC();
        os_unfair_lock_unlock(a2 + 4);
        v33 = v223;
        goto LABEL_39;
      }

      v75 = v193;
      v76 = [v75 installedExtensions];
      v25 = v205;
      if (!v76)
      {
        v36 = v28;

        v33 = MEMORY[0x1E69E7CC0];
        v223 = MEMORY[0x1E69E7CC0];
        goto LABEL_40;
      }

      v77 = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1650, &qword_1A9992800);
      v31 = sub_1A9976AC0();

      v225[0] = a2;
      v39 = *(v31 + 16);
      if (!v39)
      {
        break;
      }

      v78 = 0;
      v25 = (v31 + 32);
      v33 = MEMORY[0x1E69E7CC0];
      while (v78 < *(v31 + 16))
      {
        v220 = *&v25[8 * v78];
        v36 = v28;
        sub_1A981EE8C(&v220, &v219);
        if (v219)
        {
          MEMORY[0x1AC589740]();
          if (*((v225[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v225[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v36 = *((v225[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1A9976AF0();
          }

          sub_1A9976B30();
          v33 = v225[0];
        }

        if (v39 == ++v78)
        {
          goto LABEL_38;
        }
      }

LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      v33 = sub_1A97AE618(0, *(v33 + 16) + 1, 1, v33);
      *&v39[v204] = v33;
    }

    v33 = a2;
LABEL_38:

    v223 = v33;
    v36 = v28;
LABEL_39:
    v25 = v205;
LABEL_40:
    if (v33 >> 62)
    {
      v82 = sub_1A9977480();
    }

    else
    {
      v82 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v212 = v33;
    if (v82)
    {
      v31 = 0;
      v196 = OBJC_IVAR___SFApplicationExtensionsCache_cachedSupersedingPluginsByIdentifier;
      v209 = v33 & 0xC000000000000001;
      v208 = v33 & 0xFFFFFFFFFFFFFF8;
      ++v215;
      v202 = MEMORY[0x1E69E7CC0];
      *&v81 = 136315138;
      v197 = v81;
      *&v81 = 136315394;
      v203 = v81;
      v207 = v82;
      while (1)
      {
        if (v209)
        {
          v84 = MEMORY[0x1AC589F80](v31, v33);
        }

        else
        {
          if (v31 >= *(v208 + 16))
          {
            goto LABEL_115;
          }

          v84 = *(v33 + 8 * v31 + 32);
        }

        v28 = v84;
        if (__OFADD__(v31, 1))
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        v214 = (v31 + 1);
        sub_1A9976220();
        v85 = [v28 _plugIn];
        if (!v85)
        {
          goto LABEL_126;
        }

        sub_1A98DE160(v85, v211);
        if (v36)
        {
          swift_unknownObjectRelease();
          v82 = v28;
          v87 = v36;
          v88 = sub_1A9976480();
          v89 = sub_1A9976F70();
          if (os_log_type_enabled(v88, v89))
          {
            v206 = v28;
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v225[0] = v92;
            *v90 = v203;
            v93 = [v82 identifier];
            if (!v93)
            {
              goto LABEL_127;
            }

            v94 = v93;
            v95 = v36;

            v96 = sub_1A9976820();
            v82 = v97;

            v98 = sub_1A97AF148(v96, v82, v225);

            *(v90 + 4) = v98;
            *(v90 + 12) = 2112;
            v99 = v95;
            v100 = _swift_stdlib_bridgeErrorToNSError();
            *(v90 + 14) = v100;
            *v91 = v100;
            _os_log_impl(&dword_1A9662000, v88, v89, "ExtensionsCache: Evaluation of extension %s failed: %@", v90, 0x16u);
            sub_1A97B06FC(v91, &unk_1EB3B2A50, &unk_1A9999420);
            MEMORY[0x1AC58D2C0](v91, -1, -1);
            __swift_destroy_boxed_opaque_existential_0Tm(v92);
            MEMORY[0x1AC58D2C0](v92, -1, -1);
            MEMORY[0x1AC58D2C0](v90, -1, -1);

            v36 = 0;
            v25 = v205;
            v28 = v206;
          }

          else
          {

            v36 = 0;
          }
        }

        else
        {
          v82 = v86;
          swift_unknownObjectRelease();
          v101 = v28;
          v102 = sub_1A9976480();
          v103 = sub_1A9976F60();
          v104 = os_log_type_enabled(v102, v103);
          if (v82)
          {
            v206 = v28;
            if (v104)
            {
              v105 = swift_slowAlloc();
              v106 = swift_slowAlloc();
              v225[0] = v106;
              *v105 = v197;
              v107 = [v101 identifier];
              v108 = v101;

              if (!v107)
              {
                goto LABEL_129;
              }

              v109 = sub_1A9976820();
              v111 = v110;

              v112 = sub_1A97AF148(v109, v111, v225);

              *(v105 + 4) = v112;
              _os_log_impl(&dword_1A9662000, v102, v103, "ExtensionsCache: Extension %s passed activation rule", v105, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v106);
              MEMORY[0x1AC58D2C0](v106, -1, -1);
              MEMORY[0x1AC58D2C0](v105, -1, -1);

              v25 = v205;
              v101 = v108;
            }

            else
            {
            }

            v121 = [v101 identifier];
            if (!v121)
            {
              goto LABEL_128;
            }

            v122 = v121;
            v123 = sub_1A9976820();
            v125 = v124;

            v126 = v204;
            v127 = v196;
            swift_beginAccess();
            if (*(*(v126 + v127) + 16))
            {
              sub_1A97BCEB8(v123, v125);
              v129 = v128;

              if (v129)
              {
                swift_endAccess();
                swift_unknownObjectRetain();
                if ([v101 _plugIn])
                {
                  v222 = &unk_1F1DA42A0;
                  v130 = swift_dynamicCastObjCProtocolConditional();
                  if (v130)
                  {
                    v131 = v130;
                    v132 = type metadata accessor for SFSupersededPlugin();
                    v133 = objc_allocWithZone(v132);
                    swift_unknownObjectWeakInit();
                    *&v133[OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin] = v131;
                    v25 = v205;
                    swift_unknownObjectWeakAssign();
                    v221.receiver = v133;
                    v221.super_class = v132;
                    swift_unknownObjectRetain();
                    v134 = objc_msgSendSuper2(&v221, sel_init);
                    [v101 _setPlugIn_];
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();

LABEL_76:
                    v82 = v101;
                    MEMORY[0x1AC589740]();
                    v28 = v206;
                    if (*((v224 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v224 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_1A9976AF0();
                    }

                    sub_1A9976B30();
                    v202 = v224;
                    goto LABEL_79;
                  }

                  swift_unknownObjectRelease();
                }

                swift_unknownObjectRelease();
                goto LABEL_76;
              }
            }

            else
            {
            }

            swift_endAccess();
            goto LABEL_76;
          }

          if (v104)
          {
            v113 = v101;
            v114 = v28;
            v82 = swift_slowAlloc();
            v115 = swift_slowAlloc();
            v225[0] = v115;
            *v82 = v197;
            v116 = [v113 identifier];

            if (!v116)
            {
              goto LABEL_130;
            }

            v117 = sub_1A9976820();
            v119 = v118;

            v120 = sub_1A97AF148(v117, v119, v225);

            *(v82 + 4) = v120;
            _os_log_impl(&dword_1A9662000, v102, v103, "ExtensionsCache: Extension %s did not pass activation rule", v82, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v115);
            MEMORY[0x1AC58D2C0](v115, -1, -1);
            MEMORY[0x1AC58D2C0](v82, -1, -1);

            v36 = 0;
            v25 = v205;
            v28 = v114;
          }

          else
          {
          }
        }

LABEL_79:
        a2 = v28;
        v135 = [v28 identifier];
        if (!v135)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          sub_1A9977880();
          __break(1u);
          goto LABEL_136;
        }

        v136 = v135;
        v137 = sub_1A9976820();
        v139 = v138;

        v140 = v210;
        sub_1A9976220();
        sub_1A99760D0();
        v142 = v141;
        v39 = *v215;
        (*v215)(v140, v216);
        v33 = v217;
        v28 = swift_isUniquelyReferenced_nonNull_native();
        v225[0] = v33;
        v143 = sub_1A97BCEB8(v137, v139);
        v145 = *(v33 + 16);
        v146 = (v144 & 1) == 0;
        v147 = __OFADD__(v145, v146);
        v148 = v145 + v146;
        if (v147)
        {
          goto LABEL_116;
        }

        v149 = v144;
        if (*(v33 + 24) < v148)
        {
          sub_1A98269C0(v148, v28);
          v143 = sub_1A97BCEB8(v137, v139);
          if ((v149 & 1) != (v150 & 1))
          {
            goto LABEL_135;
          }

LABEL_85:
          if (v149)
          {
            goto LABEL_44;
          }

          goto LABEL_86;
        }

        if (v28)
        {
          goto LABEL_85;
        }

        v28 = v143;
        sub_1A9828650();
        v143 = v28;
        if (v149)
        {
LABEL_44:
          v83 = v143;

          v217 = v225[0];
          *(*(v225[0] + 56) + 8 * v83) = v142;

          (v39)(v218, v216);
          goto LABEL_45;
        }

LABEL_86:
        v33 = v225[0];
        *(v225[0] + 8 * (v143 >> 6) + 64) |= 1 << v143;
        v151 = (*(v33 + 48) + 16 * v143);
        *v151 = v137;
        v151[1] = v139;
        *(*(v33 + 56) + 8 * v143) = v142;

        (v39)(v218, v216);
        v152 = *(v33 + 16);
        v147 = __OFADD__(v152, 1);
        v153 = v152 + 1;
        if (v147)
        {
          goto LABEL_117;
        }

        v217 = v33;
        *(v33 + 16) = v153;
LABEL_45:
        ++v31;
        v82 = v207;
        v33 = v212;
        if (v214 == v207)
        {
          goto LABEL_92;
        }
      }
    }

    v202 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v154 = v190;
    sub_1A97C13A4(v199, v190, &unk_1EB3B2AD0, &qword_1A9998440);
    v155 = v194;
    v156 = v195;
    if ((*(v194 + 48))(v154, 1, v195) == 1)
    {
      sub_1A97B06FC(v154, &unk_1EB3B2AD0, &qword_1A9998440);
      v31 = v201;
    }

    else
    {
      (*(v155 + 32))(v25, v154, v156);
      v31 = v201;
      if (v192)
      {
        v157 = sub_1A9976FF0();
        v158 = share_sheet_log(v157);
        if (!v158)
        {
          goto LABEL_134;
        }

        v159 = v158;
        v186 = MEMORY[0x1E69E7CC0];
        LOBYTE(v185) = 2;
        v184 = 19;
        sub_1A9976430();

        (*(v194 + 8))(v25, v195);
      }

      else
      {
        (*(v155 + 8))(v25, v156);
      }
    }

    v160 = v217;
    v67 = v202;
    if (*(v217 + 16))
    {
      v161 = sub_1A9976C00();
      v162 = v189;
      (*(*(v161 - 8) + 56))(v189, 1, 1, v161);
      v163 = swift_allocObject();
      v163[2] = 0;
      v163[3] = 0;
      v164 = v200;
      v163[4] = v160;
      v163[5] = v164;
      v163[6] = v31;

      sub_1A97B4F40(0, 0, v162, &unk_1A9998450, v163);
    }

    v165 = sub_1A9976480();
    v166 = sub_1A9976F90();

    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      v225[0] = v168;
      *v167 = 134218242;
      if (v67 >> 62)
      {
        v169 = sub_1A9977480();
      }

      else
      {
        v169 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v167 + 4) = v169;

      *(v167 + 12) = 2080;
      *(v167 + 14) = sub_1A97AF148(v200, v31, v225);
      _os_log_impl(&dword_1A9662000, v165, v166, "ExtensionsCache: %ld new extensions from NSExtension for cache key = [%s]", v167, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v168);
      MEMORY[0x1AC58D2C0](v168, -1, -1);
      MEMORY[0x1AC58D2C0](v167, -1, -1);
    }

    else
    {
    }

    v171 = v204;
    if (v193)
    {
      v172 = v200;
    }

    else
    {
      v173 = *(v204 + OBJC_IVAR___SFApplicationExtensionsCache_lock);
      v174 = MEMORY[0x1EEE9AC00](v170);
      v172 = v200;
      v184 = v171;
      v185 = v200;
      MEMORY[0x1EEE9AC00](v174);
      v186 = sub_1A982B3A0;
      v187 = v175;
      os_unfair_lock_lock(v173 + 4);
      sub_1A982B4AC();
      v171 = v204;
      os_unfair_lock_unlock(v173 + 4);
    }

    v28 = v198;
    swift_beginAccess();

    v176 = sub_1A982ADC0((v171 + v28), v172, v31);
    if (v36)
    {
LABEL_136:
      result = swift_endAccess();
      __break(1u);
      return result;
    }

    v177 = v176;

    v178 = *(*(v171 + v28) + 16);
    if (v178 >= v177)
    {
      break;
    }

    __break(1u);
LABEL_123:
    swift_once();
LABEL_4:
    v45 = sub_1A99764A0();
    __swift_project_value_buffer(v45, qword_1EB3ABCE0);
    v46 = v201;

    v47 = sub_1A9976480();
    v48 = sub_1A9976F90();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v225[0] = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_1A97AF148(v200, v46, v225);
      _os_log_impl(&dword_1A9662000, v47, v48, "ExtensionsCache: evaluation is already running for cache key = [%s]", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      MEMORY[0x1AC58D2C0](v50, -1, -1);
      MEMORY[0x1AC58D2C0](v49, -1, -1);
    }

    a2 = v200;
    if ((v217 & 1) == 0)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  sub_1A982AFF8(v177, v178);
  swift_endAccess();

  v179 = sub_1A9976480();
  v180 = sub_1A9976F90();

  if (os_log_type_enabled(v179, v180))
  {
    v181 = swift_slowAlloc();
    v182 = swift_slowAlloc();
    v225[0] = v182;
    *v181 = 136315138;
    *(v181 + 4) = sub_1A97AF148(v200, v31, v225);
    _os_log_impl(&dword_1A9662000, v179, v180, "ExtensionsCache: registered for cache key = [%s]", v181, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v182);
    MEMORY[0x1AC58D2C0](v182, -1, -1);
    MEMORY[0x1AC58D2C0](v181, -1, -1);
  }

  sub_1A97B06FC(v199, &unk_1EB3B2AD0, &qword_1A9998440);

  return v67;
}

uint64_t sub_1A981D3F8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id SFApplicationExtensionsCache.extensionsResult(with:testingReferenceSnapshot:)(unint64_t a1, void *a2)
{
  v3 = v2;
  v102 = sub_1A99763B0();
  v98 = *(v102 - 1);
  MEMORY[0x1EEE9AC00](v102 - 1);
  v100 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F90, &qword_1A99A44A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v105 = &v88 - v8;
  v9 = sub_1A9829EB0(a1);
  v10 = v9;
  v12 = v11;
  v13 = &qword_1EB3B2000;
  if (a2)
  {
    v101 = 0;
    v104 = 0;
    v115 = 0;
    goto LABEL_3;
  }

  v28 = v9;
  aBlock = 0;
  v18 = *(v2 + OBJC_IVAR___SFApplicationExtensionsCache_lock);
  v29 = MEMORY[0x1EEE9AC00](v9);
  *(&v88 - 4) = &aBlock;
  *(&v88 - 3) = v2;
  *(&v88 - 2) = v28;
  *(&v88 - 1) = v12;
  MEMORY[0x1EEE9AC00](v29);
  *(&v88 - 2) = sub_1A982B44C;
  *(&v88 - 1) = v30;
  os_unfair_lock_lock((v18 + 16));
  sub_1A982B4AC();
  os_unfair_lock_unlock((v18 + 16));
  v31 = aBlock;
  v115 = aBlock;
  if (!aBlock)
  {
    v34 = *(v2 + OBJC_IVAR___SFApplicationExtensionsCache_queue);
    v10 = swift_allocObject();
    v10[2] = &v115;
    v10[3] = v3;
    v10[4] = v28;
    v10[5] = v12;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1A982A5DC;
    *(v36 + 24) = v10;
    v101 = v10;
    v113 = sub_1A982A5E8;
    v114 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v110 = 1107296256;
    v111 = sub_1A981E5CC;
    v112 = &block_descriptor_14;
    v37 = _Block_copy(&aBlock);
    v18 = v114;

    v38 = v3;

    dispatch_sync(v34, v37);
    _Block_release(v37);
    LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

    if ((v37 & 1) == 0)
    {
      v10 = v28;
      v39 = v115;
      v40 = sub_1A982A5DC;
      v13 = &qword_1EB3B2000;
      if (v115)
      {
        v41 = qword_1EB3ABCD8;

        if (v41 != -1)
        {
          swift_once();
        }

        v42 = sub_1A99764A0();
        __swift_project_value_buffer(v42, qword_1EB3ABCE0);

        v43 = sub_1A9976480();
        v44 = sub_1A9976F90();

        if (os_log_type_enabled(v43, v44))
        {
          v18 = v3;
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          aBlock = v46;
          *v45 = 134218242;
          if (v39 >> 62)
          {
            v47 = sub_1A9977480();
          }

          else
          {
            v47 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v45 + 4) = v47;

          *(v45 + 12) = 2080;
          *(v45 + 14) = sub_1A97AF148(v10, v12, &aBlock);
          _os_log_impl(&dword_1A9662000, v43, v44, "ExtensionsCache: no cache found but primed %ld extensions ready for cache key = [%s]", v45, 0x16u);
          __swift_destroy_boxed_opaque_existential_0Tm(v46);
          MEMORY[0x1AC58D2C0](v46, -1, -1);
          MEMORY[0x1AC58D2C0](v45, -1, -1);

          v34 = 0;
          v103 = 0;
          v104 = sub_1A982A5DC;
          v3 = v18;
          v13 = &qword_1EB3B2000;
        }

        else
        {

          swift_bridgeObjectRelease_n();
          v34 = 0;
          v103 = 0;
          v104 = sub_1A982A5DC;
          v13 = &qword_1EB3B2000;
        }

        goto LABEL_27;
      }

LABEL_75:
      v104 = v40;
LABEL_3:
      v14 = *(v3 + OBJC_IVAR___SFApplicationExtensionsCache_queue);
      v15 = swift_allocObject();
      v15[2] = &v115;
      v15[3] = v3;
      v15[4] = a1;
      v15[5] = v10;
      v15[6] = v12;
      v15[7] = a2;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_1A982A610;
      *(v16 + 24) = v15;
      v103 = v15;
      v113 = sub_1A982B46C;
      v114 = v16;
      aBlock = MEMORY[0x1E69E9820];
      v110 = 1107296256;
      v111 = sub_1A981E5CC;
      v112 = &block_descriptor_24;
      v17 = _Block_copy(&aBlock);
      v18 = v114;
      v19 = a2;

      v20 = v3;

      dispatch_sync(v14, v17);
      _Block_release(v17);
      LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

      if (v17)
      {
LABEL_93:
        __break(1u);
      }

      else if (qword_1EB3ABCD8 == -1)
      {
        goto LABEL_5;
      }

      swift_once();
LABEL_5:
      v21 = sub_1A99764A0();
      __swift_project_value_buffer(v21, qword_1EB3ABCE0);

      v22 = sub_1A9976480();
      v23 = sub_1A9976F90();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = v3;
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        aBlock = v26;
        *v25 = 134218242;
        swift_beginAccess();
        if (v115)
        {
          if (v115 >> 62)
          {
            v27 = sub_1A9977480();
          }

          else
          {
            v27 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        else
        {
          v27 = 0;
        }

        *(v25 + 4) = v27;
        *(v25 + 12) = 2080;
        *(v25 + 14) = sub_1A97AF148(v10, v12, &aBlock);
        _os_log_impl(&dword_1A9662000, v22, v23, "ExtensionsCache: no cache found. got %ld new extensions for cache key = [%s]", v25, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        MEMORY[0x1AC58D2C0](v26, -1, -1);
        MEMORY[0x1AC58D2C0](v25, -1, -1);

        v34 = sub_1A982A610;
        v3 = v24;
      }

      else
      {

        v34 = sub_1A982A610;
      }

LABEL_27:
      v48 = (v3 + OBJC_IVAR___SFApplicationExtensionsCache_cacheMisses);
      v49 = *(v3 + OBJC_IVAR___SFApplicationExtensionsCache_cacheMisses);
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      v52 = v101;
      if (!v50)
      {
        goto LABEL_37;
      }

      __break(1u);
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_97;
  }

  v10 = v28;
  v32 = qword_1EB3ABCD8;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = sub_1A99764A0();
  __swift_project_value_buffer(v33, qword_1EB3ABCE0);

  v34 = sub_1A9976480();
  LOBYTE(v28) = sub_1A9976F90();

  if (os_log_type_enabled(v34, v28))
  {
    v18 = v3;
    v3 = swift_slowAlloc();
    a2 = swift_slowAlloc();
    aBlock = a2;
    *v3 = 134218242;
    if (!(v31 >> 62))
    {
      v35 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:

      *(v3 + 4) = v35;

      *(v3 + 12) = 2080;
      *(v3 + 14) = sub_1A97AF148(v10, v12, &aBlock);
      _os_log_impl(&dword_1A9662000, v34, v28, "ExtensionsCache: found %ld cached extensions for cache key = [%s]", v3, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(a2);
      MEMORY[0x1AC58D2C0](a2, -1, -1);
      MEMORY[0x1AC58D2C0](v3, -1, -1);

      v3 = v18;
      goto LABEL_31;
    }

LABEL_97:
    v35 = sub_1A9977480();
    goto LABEL_15;
  }

LABEL_30:

  swift_bridgeObjectRelease_n();
LABEL_31:
  v13 = &qword_1EB3B2000;
  if (*(v3 + OBJC_IVAR___SFApplicationExtensionsCache_primed) != 1)
  {
    goto LABEL_35;
  }

  v48 = (v3 + OBJC_IVAR___SFApplicationExtensionsCache_cacheMisses);
  v53 = *(v3 + OBJC_IVAR___SFApplicationExtensionsCache_cacheMisses);
  v50 = __OFADD__(v53, 1);
  v51 = v53 + 1;
  if (v50)
  {
    __break(1u);
LABEL_35:
    v48 = (v3 + OBJC_IVAR___SFApplicationExtensionsCache_cacheHits);
    v54 = *(v3 + OBJC_IVAR___SFApplicationExtensionsCache_cacheHits);
    v50 = __OFADD__(v54, 1);
    v51 = v54 + 1;
    if (v50)
    {
      __break(1u);
LABEL_99:
      swift_once();
LABEL_83:
      v80 = sub_1A99764A0();
      __swift_project_value_buffer(v80, qword_1EB3ABCE0);

      v81 = sub_1A9976480();
      v82 = sub_1A9976F90();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = v10;
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        aBlock = v85;
        *v84 = 134218242;
        if (v115)
        {
          if (v115 >> 62)
          {
            v86 = sub_1A9977480();
          }

          else
          {
            v86 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        else
        {
          v86 = 0;
        }

        *(v84 + 4) = v86;
        *(v84 + 12) = 2080;
        v87 = sub_1A97AF148(v83, v12, &aBlock);

        *(v84 + 14) = v87;
        _os_log_impl(&dword_1A9662000, v81, v82, "ExtensionsCache: filtered on enablement. Returning %ld extensions for cache key = [%s]", v84, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v85);
        MEMORY[0x1AC58D2C0](v85, -1, -1);
        MEMORY[0x1AC58D2C0](v84, -1, -1);
      }

      else
      {
      }

      v52 = v101;
      goto LABEL_91;
    }
  }

  v103 = 0;
  v104 = 0;
  v52 = 0;
  v34 = 0;
LABEL_37:
  *v48 = v51;
  *(v3 + v13[274]) = 0;
  v106 = sub_1A9976820();
  v107 = v55;
  sub_1A9977250();
  if (!*(a1 + 16) || (v92 = v34, v56 = sub_1A97BCF30(&aBlock), v34 = v92, (v57 & 1) == 0))
  {
    sub_1A97C108C(&aBlock);
    goto LABEL_44;
  }

  sub_1A97AF7EC(*(a1 + 56) + 32 * v56, v108);
  sub_1A97C108C(&aBlock);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_44:

    v18 = v103;
    goto LABEL_45;
  }

  v101 = v52;
  v58 = v106;
  v59 = v107;
  aBlock = 1;
  if (v58 == sub_1A9977730() && v59 == v60)
  {

    goto LABEL_49;
  }

  v63 = sub_1A99777E0();

  if (v63)
  {
LABEL_49:
    swift_beginAccess();
    v18 = v115;
    if (v115)
    {
      v106 = MEMORY[0x1E69E7CC0];
      v64 = v115 & 0xFFFFFFFFFFFFFF8;
      v89 = v12;
      if (v115 >> 62)
      {
        v12 = sub_1A9977480();
      }

      else
      {
        v12 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a2 = v102;
      v99 = OBJC_IVAR___SFApplicationExtensionsCache_cachedExtensionIdentitiesByIdentifier;

      if (v12)
      {
        v96 = v3;
        v88 = v10;
        a1 = 0;
        v97 = v18 & 0xC000000000000001;
        v95 = (v98 + 56);
        v91 = (v98 + 16);
        v94 = (v98 + 48);
        v90 = (v98 + 8);
        v93 = v64;
        while (1)
        {
          if (v97)
          {
            v65 = MEMORY[0x1AC589F80](a1, v18);
            v13 = (a1 + 1);
            if (__OFADD__(a1, 1))
            {
LABEL_74:
              __break(1u);
              goto LABEL_75;
            }
          }

          else
          {
            if (a1 >= *(v64 + 16))
            {
              __break(1u);
              goto LABEL_93;
            }

            v65 = *(v18 + 8 * a1 + 32);
            v13 = (a1 + 1);
            if (__OFADD__(a1, 1))
            {
              goto LABEL_74;
            }
          }

          v10 = v65;
          result = [v65 identifier];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v66 = result;
          v3 = sub_1A9976820();
          v68 = v67;

          v69 = v96;
          v70 = v99;
          swift_beginAccess();
          v71 = *(v69 + v70);
          if (*(v71 + 16))
          {
            v3 = sub_1A97BCEB8(v3, v68);
            v73 = v72;

            if (v73)
            {
              v74 = v105;
              a2 = v102;
              (*(v98 + 16))(v105, *(v71 + 56) + *(v98 + 72) * v3, v102);
              v75 = 0;
              goto LABEL_66;
            }

            v75 = 1;
            a2 = v102;
          }

          else
          {

            v75 = 1;
          }

          v74 = v105;
LABEL_66:
          (*v95)(v74, v75, 1, a2);
          if ((*v94)(v74, 1, a2))
          {
            sub_1A97B06FC(v74, &qword_1EB3B4F90, &qword_1A99A44A0);
            swift_endAccess();
          }

          else
          {
            v77 = v100;
            (*v91)(v100, v74, a2);
            sub_1A97B06FC(v74, &qword_1EB3B4F90, &qword_1A99A44A0);
            swift_endAccess();
            v76 = sub_1A9976350();
            (*v90)(v77, a2);
            if (v76)
            {
              goto LABEL_70;
            }
          }

          v76 = v10;
LABEL_70:
          v78 = [v76 optedIn];

          if (v78)
          {
            sub_1A9977350();
            sub_1A9977380();
            sub_1A9977390();
            sub_1A9977360();
          }

          else
          {
          }

          v64 = v93;
          ++a1;
          if (v13 == v12)
          {
            v79 = v106;
            v10 = v88;
            goto LABEL_81;
          }
        }
      }

      v79 = MEMORY[0x1E69E7CC0];
LABEL_81:

      v12 = v89;
    }

    else
    {
      v79 = 0;
    }

    v18 = v103;
    v115 = v79;

    if (qword_1EB3ABCD8 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_99;
  }

  v52 = v101;
  v18 = v103;
LABEL_91:
  v34 = v92;
LABEL_45:
  swift_beginAccess();
  v61 = v115;
  sub_1A967C46C(v104, v52);
  sub_1A967C46C(v34, v18);
  if (v61)
  {
    return v61;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1A981E514(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR___SFApplicationExtensionsCache_lock);
  os_unfair_lock_lock(v3 + 4);
  sub_1A982B4AC();
  os_unfair_lock_unlock(v3 + 4);
  *a1 = 0;
}

unint64_t SFApplicationExtensionsCache.reportResult()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B28C8, &qword_1A99981A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9998170;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x80000001A99E4740;
  sub_1A9812DE0(0, &qword_1EB3AB620, 0x1E696AD98);
  v3 = OBJC_IVAR___SFApplicationExtensionsCache_cacheMisses;
  *(inited + 48) = sub_1A9977030();
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x80000001A99E4760;
  v4 = OBJC_IVAR___SFApplicationExtensionsCache_cacheHits;
  *(inited + 72) = sub_1A9977030();
  v5 = sub_1A97BFC7C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B28D8, &qword_1A99981A8);
  swift_arrayDestroy();
  *(v1 + v3) = 0;
  *(v1 + v4) = 0;
  return v5;
}

uint64_t sub_1A981E86C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = OBJC_IVAR___SFApplicationExtensionsCache_cachedExtensionIdentitiesByIdentifier;
  swift_beginAccess();
  v9 = *(a2 + v8);

  v10 = sub_1A98CA644(a1, v9);

  if ((v10 & 1) == 0)
  {
    v21 = a3;
    v12 = OBJC_IVAR___SFApplicationExtensionsCache_cachedResults;
    swift_beginAccess();
    v13 = *(a2 + v12);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = sub_1A986BE88(v14, 0);
      v16 = sub_1A986C3D4(&v20, v15 + 4, v14, v13);
      v17 = v20;
      v19 = v16;

      result = sub_1A982B3C0(v17);
      if (v19 != v14)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    *v21 = v15;

    *(a2 + v8) = a1;

    v18 = OBJC_IVAR___SFApplicationExtensionsCache_cachedSupersedingPluginsByIdentifier;
    swift_beginAccess();
    *(a2 + v18) = a4;
  }

  return result;
}

void sub_1A981EA08(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1A981EA64(a2);
  }
}

uint64_t sub_1A981EA64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A9976690();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR___SFApplicationExtensionsCache_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = sub_1A99766A0();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (qword_1EB3ABCD8 == -1)
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
  v10 = sub_1A99764A0();
  __swift_project_value_buffer(v10, qword_1EB3ABCE0);
  v11 = sub_1A9976480();
  v12 = sub_1A9976F90();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    if (qword_1EB3AB648 != -1)
    {
      v23 = v13;
      swift_once();
      v13 = v23;
    }

    *(v13 + 4) = *(off_1EB3AB650 + 2);
    v14 = v12;
    v15 = v13;
    _os_log_impl(&dword_1A9662000, v11, v14, "ExtensionsCache: processing %ld registrations for evaluation precaching", v13, 0xCu);
    MEMORY[0x1AC58D2C0](v15, -1, -1);
  }

  v16 = *(a1 + 16);
  if (v16)
  {

LABEL_12:
    v17 = 32;
    do
    {
      v18 = *(a1 + v17);

      v20 = sub_1A9829EB0(v19);
      sub_1A981B92C(v18, v20, v21, 0, 0, 0, 0);

      v17 += 8;
      --v16;
    }

    while (v16);
  }

  if (qword_1EB3AB648 != -1)
  {
    swift_once();
  }

  a1 = sub_1A981ED5C(off_1EB3AB650);
  v16 = *(a1 + 16);
  if (v16)
  {
    goto LABEL_12;
  }
}

uint64_t sub_1A981ED5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1A97BDC24(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A60, &unk_1A99983E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1650, &qword_1A9992800);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1A97BDC24((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1A981EE8C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  sub_1A9977250();
  if (!*(v3 + 16) || (v4 = sub_1A97BCF30(v46), (v5 & 1) == 0))
  {
    sub_1A97C108C(v46);
    goto LABEL_7;
  }

  sub_1A97AF7EC(*(v3 + 56) + 32 * v4, v47);
  sub_1A97C108C(v46);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v6 = sub_1A99767E0();
  v7 = objc_opt_self();
  v46[0] = 0;
  v8 = [v7 extensionWithIdentifier:v6 error:v46];

  v9 = v46[0];
  if (!v8)
  {
    v10 = v9;
    v11 = sub_1A9975F20();

    swift_willThrow();
    v12 = objc_allocWithZone(MEMORY[0x1E69635D0]);

    log = sub_1A98248D0(0xD000000000000010, 0x80000001A99E4F10, 0);
    v45 = v11;
    v23 = [log effectiveBundleIdentifier];
    v24 = sub_1A9976820();
    v26 = v25;

    if (v24 == 0xD000000000000010 && v26 == 0x80000001A99E4F10)
    {

LABEL_19:
      if (qword_1EB3ABCD8 != -1)
      {
        swift_once();
      }

      v29 = sub_1A99764A0();
      __swift_project_value_buffer(v29, qword_1EB3ABCE0);

      v30 = v45;
      v31 = sub_1A9976480();
      v32 = sub_1A9976F70();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v46[0] = v35;
        *v33 = 136315394;
        v36 = sub_1A97AF148(0xD000000000000010, 0x80000001A99E4F10, v46);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2112;
        v37 = v45;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 14) = v38;
        *v34 = v38;
        _os_log_impl(&dword_1A9662000, v31, v32, "ExtensionsCache: Could not find extension with identifier %s: %@", v33, 0x16u);
        sub_1A97B06FC(v34, &unk_1EB3B2A50, &unk_1A9999420);
        MEMORY[0x1AC58D2C0](v34, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v35);
        MEMORY[0x1AC58D2C0](v35, -1, -1);
        MEMORY[0x1AC58D2C0](v33, -1, -1);

        goto LABEL_7;
      }

      v27 = v45;
LABEL_24:

      goto LABEL_7;
    }

    v28 = sub_1A99777E0();

    if (v28)
    {
      goto LABEL_19;
    }

    v39 = [log effectiveBundleIdentifier];
    if (!v39)
    {
      sub_1A9976820();
      v39 = sub_1A99767E0();
    }

    v46[0] = 0;
    v8 = [v7 extensionWithIdentifier:v39 error:v46];

    v40 = v46[0];
    if (v8)
    {

      goto LABEL_5;
    }

    v41 = v40;
    v42 = sub_1A9975F20();

    swift_willThrow();
    if (qword_1EB3ABCD8 != -1)
    {
      swift_once();
    }

    v13 = sub_1A99764A0();
    __swift_project_value_buffer(v13, qword_1EB3ABCE0);

    v14 = v42;
    v15 = sub_1A9976480();
    v16 = sub_1A9976F70();

    loga = v15;
    if (!os_log_type_enabled(v15, v16))
    {

      v27 = v42;
      goto LABEL_24;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v46[0] = v19;
    *v17 = 136315394;
    v20 = sub_1A97AF148(0xD000000000000010, 0x80000001A99E4F10, v46);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2112;
    v21 = v42;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v22;
    *v18 = v22;
    _os_log_impl(&dword_1A9662000, loga, v16, "ExtensionsCache: Could not find extension with identifier %s: %@", v17, 0x16u);
    sub_1A97B06FC(v18, &unk_1EB3B2A50, &unk_1A9999420);
    MEMORY[0x1AC58D2C0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x1AC58D2C0](v19, -1, -1);
    MEMORY[0x1AC58D2C0](v17, -1, -1);

    goto LABEL_7;
  }

LABEL_5:

LABEL_8:
  *a2 = v8;
}

uint64_t sub_1A981F4F8(uint64_t *a1, uint64_t a2)
{
  v19 = a1;
  v23 = sub_1A99763B0();
  v3 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___SFApplicationExtensionsCache_cachedExtensionIdentitiesByIdentifier;
  swift_beginAccess();
  v7 = *(a2 + v6);
  v20 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0];
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v21 = v3 + 8;
  v22 = v3 + 16;
  v24 = v7;
  result = swift_bridgeObjectRetain_n();
  v14 = 0;
  if (!v11)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v23;
      (*(v3 + 16))(v5, *(v24 + 56) + *(v3 + 72) * (v15 | (v14 << 6)), v23);
      v17 = sub_1A9976350();
      result = (*(v3 + 8))(v5, v16);
      if (v17)
      {
        break;
      }

      if (!v11)
      {
        goto LABEL_6;
      }
    }

    MEMORY[0x1AC589740](result);
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1A9976AF0();
    }

    result = sub_1A9976B30();
    v20 = v25;
  }

  while (v11);
LABEL_6:
  while (1)
  {
    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v18 >= v12)
    {

      *v19 = v20;
    }

    v11 = *(v8 + 8 * v18);
    ++v14;
    if (v11)
    {
      v14 = v18;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A981F758(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR___SFApplicationExtensionsCache_cachedResults;
  swift_beginAccess();
  v9 = *(a2 + v8);
  if (*(v9 + 16) && (v10 = sub_1A97BCEB8(a3, a4), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v12 = 0;
  }

  swift_endAccess();
  *a1 = v12;
}

uint64_t sub_1A981F808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR___SFApplicationExtensionsCache_cachedResults;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a1 + v8);
  *(a1 + v8) = 0x8000000000000000;
  sub_1A97E39B0(a4, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + v8) = v11;
  return swift_endAccess();
}

uint64_t sub_1A981F8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A981F8F4, 0, 0);
}

void sub_1A981F8F4()
{
  v1 = *(v0 + 16);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;

  v6 = 0;
  while (v4)
  {
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(*(v1 + 56) + 8 * (v8 | (v6 << 6)));
    if (v9 > 0.1)
    {
      v10 = objc_allocWithZone(SFShareSheetExtensionEvaluationEvent);

      v11 = [v10 init];
      v12 = sub_1A99767E0();

      [v11 setActivityType_];

      v13 = sub_1A99767E0();
      [v11 setCacheKey_];

      v14 = v9 * 1000.0;
      if (COERCE_UNSIGNED_INT64(v9 * 1000.0) >> 52 > 0x7FE)
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      if (v14 <= -9.22337204e18)
      {
        goto LABEL_19;
      }

      if (v14 >= 9.22337204e18)
      {
        goto LABEL_20;
      }

      [v11 setEvaluationMs_];
      [v11 submitEvent];
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v7 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  v15 = *(v16 + 8);

  v15();
}

id sub_1A981FC30(char *a1, uint64_t a2, SEL *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A40, &qword_1A99983B0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *&a1[OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin];
  v12 = a1;
  v13 = [v11 *a3];
  if (v13)
  {
    v14 = v13;
    sub_1A9975FE0();

    v15 = sub_1A9976020();
    (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  }

  else
  {
    v15 = sub_1A9976020();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  }

  sub_1A97D8380(v8, v10, &unk_1EB3B2A40, &qword_1A99983B0);

  sub_1A9976020();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v10, 1, v15);
  v18 = 0;
  if (v17 != 1)
  {
    v19 = sub_1A9975FC0();
    (*(v16 + 8))(v10, v15);
    v18 = v19;
  }

  return v18;
}

id sub_1A98201C4(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin];
  v5 = a1;
  if ([v4 *a3])
  {
    sub_1A99771B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;

  v6 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
    v7 = __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
    v8 = *(*(&v14 + 1) - 8);
    MEMORY[0x1EEE9AC00](v7);
    v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_1A99777C0();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(&v15);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_1A9820470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);

  v5 = swift_unknownObjectRetain();
  v4(v5, a3);

  return swift_unknownObjectRelease();
}

id sub_1A9820A50(char *a1, uint64_t a2, SEL *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *&a1[OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin];
  v8 = a1;
  v9 = [v7 *a3];
  if (v9)
  {
    v10 = v9;
    sub_1A9976700();

    v11 = sub_1A99766E0();
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

void sub_1A9820B24(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v10 = a1;
  if (a3)
  {
    v5 = sub_1A9976700();
    a1 = v10;
    v6 = *&v10[OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin];
    if (v5)
    {
      v7 = v10;
      swift_unknownObjectRetain();
      v8 = sub_1A99766E0();

      goto LABEL_6;
    }
  }

  else
  {
    v6 = *&a1[OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin];
  }

  v9 = a1;
  swift_unknownObjectRetain();
  v8 = 0;
LABEL_6:
  [v6 *a4];
  swift_unknownObjectRelease();
}

id sub_1A9820E70(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin];
  v5 = a1;
  v6 = [v4 *a3];
  if (v6)
  {
    v7 = v6;
    sub_1A9976820();

    v8 = sub_1A99767E0();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

void sub_1A9821010(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1A98211A0(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98211C0, 0, 0);
}

uint64_t sub_1A98211C0()
{
  v1 = v0[18];
  v2 = *(v0[19] + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  v0[20] = v2;
  swift_unknownObjectRetain();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29A0, &qword_1A99982D0);
    v1 = sub_1A99766E0();
  }

  v0[21] = v1;
  v0[2] = v0;
  v0[3] = sub_1A9821338;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2930, qword_1A9995E18);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A982152C;
  v0[13] = &block_descriptor_107;
  v0[14] = v3;
  [v2 beginUsingWithSubsystemOptions:v1 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A9821338()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1A98214B0;
  }

  else
  {
    v2 = sub_1A9821448;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A9821448()
{
  v1 = *(v0 + 168);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A98214B0(uint64_t a1)
{
  v2 = *(v1 + 168);
  swift_willThrow();
  swift_unknownObjectRelease();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1A982152C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    swift_allocError();
    *v3 = a2;
    v4 = a2;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1A9821760(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29A0, &qword_1A99982D0);
    v6 = sub_1A9976700();
  }

  else
  {
    v6 = 0;
  }

  v3[4] = v6;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1A9821860;

  return sub_1A98211A0(v6);
}

uint64_t sub_1A9821860()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v0)
  {
    if (v3)
    {
      v6 = *(v2 + 24);
      v7 = sub_1A9975F10();

      (v6)[2](v6, v7);
      _Block_release(v6);
    }

    else
    {
    }
  }

  else if (v3)
  {
    v8 = *(v2 + 24);
    v8[2](v8, 0);
    _Block_release(v8);
  }

  v9 = *(v5 + 8);

  return v9();
}

id sub_1A9821A20(void *a1)
{
  v2 = a1;
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  if (a1)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29A0, &qword_1A99982D0);
    v2 = sub_1A99766E0();
  }

  else
  {
    swift_unknownObjectRetain();
  }

  v7[0] = 0;
  v4 = [v3 beginUsingWithSubsystemOptions:v2 error:v7];
  swift_unknownObjectRelease();

  if (v4)
  {
    return v7[0];
  }

  v6 = v7[0];
  sub_1A9975F20();

  return swift_willThrow();
}

id sub_1A9821C08(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = *(v2 + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  if (a2)
  {
    swift_unknownObjectRetain();
    v4 = sub_1A99767E0();
  }

  else
  {
    swift_unknownObjectRetain();
    v4 = 0;
  }

  v8[0] = 0;
  v5 = [v3 useBundle:v4 error:v8];
  swift_unknownObjectRelease();

  if (v5)
  {
    return v8[0];
  }

  v7 = v8[0];
  sub_1A9975F20();

  return swift_willThrow();
}

uint64_t sub_1A9821DC8(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  if (a1)
  {
    v11[4] = a1;
    v11[5] = a2;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1A9821010;
    v11[3] = a3;
    v9 = _Block_copy(v11);
    swift_unknownObjectRetain();
    sub_1A967C510(a1, a2);
  }

  else
  {
    swift_unknownObjectRetain();
    v9 = 0;
  }

  [v6 *a4];
  _Block_release(v9);
  return swift_unknownObjectRelease();
}

id sub_1A9821FC0(SEL *a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(v1 + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  v5[0] = 0;
  if ([v2 *a1])
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_1A9975F20();

  return swift_willThrow();
}

uint64_t sub_1A9822088(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

uint64_t sub_1A982210C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  sub_1A97C13A4(a1, v12, &qword_1EB3B0BA0, &unk_1A99923D0);
  v5 = v13;
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = *(v5 - 8);
    MEMORY[0x1EEE9AC00](v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    swift_unknownObjectRetain();
    v10 = sub_1A99777C0();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    swift_unknownObjectRetain();
    v10 = 0;
  }

  [v4 setHostPrincipal:v10 withProtocol:a2];
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

id sub_1A9822324(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  sub_1A97C13A4(a1, &v13 - v4, &unk_1EB3B29B0, &qword_1A9990640);
  v7 = sub_1A99762C0();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  swift_unknownObjectRetain();
  v10 = 0;
  if (v9 != 1)
  {
    v10 = sub_1A9976270();
    (*(v8 + 8))(v5, v7);
  }

  v11 = [v6 createInstanceWithUUID_];
  swift_unknownObjectRelease();

  return v11;
}

uint64_t sub_1A982262C(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A982264C, 0, 0);
}

uint64_t sub_1A982264C()
{
  v1 = v0[19];
  v2 = *(v0[20] + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  v0[21] = v2;
  swift_unknownObjectRetain();
  if (v1)
  {
    v1 = sub_1A9976AB0();
  }

  v0[22] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1A98227AC;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29A8, &unk_1A99982D8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A98229A8;
  v0[13] = &block_descriptor_100;
  v0[14] = v3;
  [v2 localizedInfoDictionaryForKeys:v1 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A98227AC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1A982292C;
  }

  else
  {
    v2 = sub_1A98228BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A98228BC()
{
  v1 = v0[22];
  v2 = v0[18];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1A982292C(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();
  swift_unknownObjectRelease();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1A98229A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    if (a2)
    {
      v9 = sub_1A9976700();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1A9822C2C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    v6 = sub_1A9976AC0();
  }

  else
  {
    v6 = 0;
  }

  v3[4] = v6;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1A9822D0C;

  return sub_1A982262C(v6);
}

uint64_t sub_1A9822D0C(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  if (v3)
  {
    if (v6)
    {
      v9 = *(v5 + 24);
      v10 = sub_1A9975F10();

      (v9)[2](v9, 0, v10);
      _Block_release(v9);
    }

    else
    {
    }
  }

  else if (v6)
  {
    if (a1)
    {
      v11 = sub_1A99766E0();
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v5 + 24);
    (v12)[2](v12, v11, 0);
    _Block_release(v12);
  }

  else
  {
  }

  v13 = *(v8 + 8);

  return v13();
}

id sub_1A9822F28(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = *(v2 + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  if (a2)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29A0, &qword_1A99982D0);
    v3 = sub_1A99766E0();
  }

  else
  {
    swift_unknownObjectRetain();
  }

  v9[0] = 0;
  v6 = [v5 beginUsingRequest:a1 withSubsystemOptions:v3 error:v9];
  swift_unknownObjectRelease();

  if (v6)
  {
    return v9[0];
  }

  v8 = v9[0];
  sub_1A9975F20();

  return swift_willThrow();
}

uint64_t sub_1A9823134(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A9823158, 0, 0);
}

uint64_t sub_1A9823158()
{
  v1 = v0[19];
  v2 = *(v0[20] + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  v0[21] = v2;
  swift_unknownObjectRetain();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29A0, &qword_1A99982D0);
    v1 = sub_1A99766E0();
  }

  v0[22] = v1;
  v3 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1A98232D8;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2930, qword_1A9995E18);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A982152C;
  v0[13] = &block_descriptor_96;
  v0[14] = v4;
  [v2 beginUsingRequest:v3 withSubsystemOptions:v1 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A98232D8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1A982292C;
  }

  else
  {
    v2 = sub_1A98233E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A98233E8()
{
  v1 = *(v0 + 176);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A98235E4(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29A0, &qword_1A99982D0);
    a2 = sub_1A9976700();
  }

  v4[5] = a2;
  swift_unknownObjectRetain();
  a4;
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_1A98236F0;

  return sub_1A9823134(a1, a2);
}

uint64_t sub_1A98236F0()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *v1;

  swift_unknownObjectRelease();

  if (v0)
  {
    if (v3)
    {
      v6 = *(v2 + 32);
      v7 = sub_1A9975F10();

      (v6)[2](v6, v7);
      _Block_release(v6);
    }

    else
    {
    }
  }

  else if (v3)
  {
    v8 = *(v2 + 32);
    v8[2](v8, 0);
    _Block_release(v8);
  }

  v9 = *(v5 + 8);

  return v9();
}

uint64_t sub_1A9823938(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A9823958, 0, 0);
}

uint64_t sub_1A9823958()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v5 = v0 + 18;
  v4 = v0[18];
  v1[20] = *(v5[1] + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  v1[2] = v2;
  v1[3] = sub_1A9823A90;
  v6 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2930, qword_1A9995E18);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1A982152C;
  v1[13] = &block_descriptor_92;
  v1[14] = v6;
  [swift_unknownObjectRetain() beginUsingRequest:v4 completion:v1 + 10];

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1A9823A90()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1A982B464;
  }

  else
  {
    v2 = sub_1A982B4C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A9823D2C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1A982B468;

  return sub_1A9823938(a1);
}

uint64_t sub_1A9823DF0(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A9823E10, 0, 0);
}

uint64_t sub_1A9823E10()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v5 = v0 + 18;
  v4 = v0[18];
  v1[20] = *(v5[1] + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  v1[2] = v2;
  v1[3] = sub_1A9823F48;
  v6 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2930, qword_1A9995E18);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1A982152C;
  v1[13] = &block_descriptor_88;
  v1[14] = v6;
  [swift_unknownObjectRetain() endUsingRequest:v4 completion:v1 + 10];

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1A9823F48()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1A98240BC;
  }

  else
  {
    v2 = sub_1A9824058;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A9824058()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A98240BC(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1A98242BC(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1A9824380;

  return sub_1A9823DF0(a1);
}

uint64_t sub_1A9824380()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *v1;

  swift_unknownObjectRelease();

  if (v0)
  {
    if (v3)
    {
      v6 = *(v2 + 32);
      v7 = sub_1A9975F10();

      (v6)[2](v6, v7);
      _Block_release(v6);
    }

    else
    {
    }
  }

  else if (v3)
  {
    v8 = *(v2 + 32);
    v8[2](v8, 0);
    _Block_release(v8);
  }

  v9 = *(v5 + 8);

  return v9();
}

id sub_1A9824594(uint64_t a1, SEL *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = *(v2 + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  v7[0] = 0;
  if ([v4 *a2])
  {
    return v7[0];
  }

  v6 = v7[0];
  sub_1A9975F20();

  return swift_willThrow();
}

uint64_t sub_1A982465C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  swift_unknownObjectRetain();
  v8 = a1;
  a5(a3);

  swift_unknownObjectRelease();
  return 1;
}

id sub_1A98247A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFSupersededPlugin();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A9824824(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

id sub_1A98248D0(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1A99767E0();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 requireValid:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1A9975F20();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1A98249D4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1A9824A04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1A9977460();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B2B30, qword_1A9998490);
  v39 = v4;
  result = sub_1A99774A0();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
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
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_1A967C4DC((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_1A97AF7EC(*(v9 + 56) + 32 * v23, v44);
      }

      result = sub_1A9976730();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
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
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_1A967C4DC(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
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

uint64_t sub_1A9824DCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_1A99762C0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v42 = v8;
  result = sub_1A99774A0();
  v15 = result;
  if (*(v13 + 16))
  {
    v46 = v12;
    v47 = v9;
    v38 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v39 = (v10 + 16);
    v40 = v10;
    v43 = (v10 + 32);
    v22 = result + 64;
    v41 = v13;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v45 = *(v10 + 72);
      v29 = v28 + v45 * v27;
      if (v42)
      {
        (*v43)(v46, v29, v47);
        v44 = *(*(v13 + 56) + 16 * v27);
      }

      else
      {
        (*v39)(v46, v29, v47);
        v44 = *(*(v13 + 56) + 16 * v27);
      }

      sub_1A982B3C8(&unk_1EB3ACFB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1A9976730();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v10 = v40;
        v13 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v10 = v40;
      v13 = v41;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v43)(*(v15 + 48) + v45 * v23, v46, v47);
      *(*(v15 + 56) + 16 * v23) = v44;
      ++*(v15 + 16);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v7 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v38;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_1A98251A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1A99762C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1750, &qword_1A9992928);
  v39 = v4;
  result = sub_1A99774A0();
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

      sub_1A982B3C8(&unk_1EB3ACFB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1A9976730();
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

uint64_t sub_1A9825580(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2B18, &qword_1A9998478);
  v35 = v4;
  result = sub_1A99774A0();
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

      sub_1A9977980();
      sub_1A99768D0();
      result = sub_1A99779B0();
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

uint64_t sub_1A9825824(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1A99762C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2B20, &unk_1A9998480);
  v44 = v4;
  result = sub_1A99774A0();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v8;
    v40 = v2;
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
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v48 = *(v43 + 72);
      v27 = v26 + v48 * v25;
      if (v44)
      {
        (*v45)(v49, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v46 = v28[1];
        v47 = v29;
      }

      else
      {
        (*v41)(v49, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v46 = v30[1];
        v47 = v31;
      }

      sub_1A982B3C8(&unk_1EB3ACFB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1A9976730();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v11 + 48) + v48 * v19, v49, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v46;
      *v20 = v47;
      v20[1] = v21;
      ++*(v11 + 16);
      v9 = v42;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1A9825C0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1618, &qword_1A99927C8);
  result = sub_1A99774A0();
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
        sub_1A967C4DC((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1A97C1030(v23, &v36);
        sub_1A97AF7EC(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1A9977230();
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
      result = sub_1A967C4DC(v35, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_1A9825EC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AF0, &qword_1A9992850);
  v34 = v4;
  result = sub_1A99774A0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1A9977980();
      sub_1A99768D0();
      result = sub_1A99779B0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A9826194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_1A99763B0();
  v5 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A99762C0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1680, &unk_1A9992830);
  v47 = v4;
  result = sub_1A99774A0();
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

      sub_1A982B3C8(&unk_1EB3ACFB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1A9976730();
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

uint64_t sub_1A982663C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v50 = a3(0);
  v10 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v42 - v11;
  v12 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v47 = v9;
  result = sub_1A99774A0();
  v14 = result;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v43 = v5;
    v44 = (v10 + 16);
    v45 = v12;
    v46 = v10;
    v48 = (v10 + 32);
    v21 = result + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v46 + 72);
      v33 = v28 + v32 * v27;
      if (v47)
      {
        (*v48)(v49, v33, v50);
      }

      else
      {
        (*v44)(v49, v33, v50);
      }

      sub_1A9977980();
      sub_1A99768D0();
      result = sub_1A99779B0();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      result = (*v48)(*(v14 + 56) + v32 * v22, v49, v50);
      ++*(v14 + 16);
      v12 = v45;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v8 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v8 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
  return result;
}

uint64_t sub_1A98269C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1640, &qword_1A99927F0);
  v33 = v4;
  result = sub_1A99774A0();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_1A9977980();
      sub_1A99768D0();
      result = sub_1A99779B0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A9826C64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1690, &unk_1A9992840);
  v34 = v4;
  result = sub_1A99774A0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {
      }

      sub_1A9977980();
      sub_1A99768D0();
      result = sub_1A99779B0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A9826F0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B16C0, &unk_1A9992890);
  v33 = v4;
  result = sub_1A99774A0();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1A967C4DC(v24, v34);
      }

      else
      {
        sub_1A97AF7EC(v24, v34);
      }

      sub_1A9977980();
      sub_1A99768D0();
      result = sub_1A99779B0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1A967C4DC(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_1A98271C4()
{
  v1 = v0;
  v26 = sub_1A9977460();
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B2B30, qword_1A9998490);
  v3 = *v0;
  v4 = sub_1A9977490();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_1A97AF7EC(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_1A967C4DC(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
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

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

void *sub_1A9827470(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = sub_1A99762C0();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = sub_1A9977490();
  v9 = v8;
  if (*(v7 + 16))
  {
    v31 = v5;
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, (v7 + 64), 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v39 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v22 *= 16;
        v27 = v36;
        v28 = *(v36 + 48);
        v29 = *(v23 + 32);
        v38 = *(*(v7 + 56) + v22);
        v29(v28 + v24, v25, v26);
        *(*(v27 + 56) + v22) = v38;

        v17 = v39;
      }

      while (v39);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v31;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v7 + 64 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v39 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

char *sub_1A98276F0()
{
  v1 = v0;
  v33 = sub_1A99762C0();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1750, &qword_1A9992928);
  v3 = *v0;
  v4 = sub_1A9977490();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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

id sub_1A9827970()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2B18, &qword_1A9998478);
  v2 = *v0;
  v3 = sub_1A9977490();
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

char *sub_1A9827ADC()
{
  v1 = v0;
  v35 = sub_1A99762C0();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2B20, &unk_1A9998480);
  v3 = *v0;
  v4 = sub_1A9977490();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
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
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        v3 = v33;

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

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
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

void *sub_1A9827D68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1618, &qword_1A99927C8);
  v2 = *v0;
  v3 = sub_1A9977490();
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
        sub_1A97C1030(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1A97AF7EC(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1A967C4DC(v22, (*(v4 + 56) + v17));
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

void *sub_1A9827F0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AF0, &qword_1A9992850);
  v2 = *v0;
  v3 = sub_1A9977490();
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

        result = swift_unknownObjectRetain();
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

char *sub_1A982807C()
{
  v1 = v0;
  v35 = sub_1A99762C0();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1670, &qword_1A9992820);
  v3 = *v0;
  v4 = sub_1A9977490();
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

char *sub_1A98282FC()
{
  v1 = v0;
  v41 = sub_1A99763B0();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1A99762C0();
  v43 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1680, &unk_1A9992830);
  v4 = *v0;
  v5 = sub_1A9977490();
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

void *sub_1A9828650()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1640, &qword_1A99927F0);
  v2 = *v0;
  v3 = sub_1A9977490();
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

void *sub_1A98287B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1690, &unk_1A9992840);
  v2 = *v0;
  v3 = sub_1A9977490();
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

void *sub_1A9828928()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B16C0, &unk_1A9992890);
  v2 = *v0;
  v3 = sub_1A9977490();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v22 = 32 * v17;
        sub_1A97AF7EC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1A967C4DC(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
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

uint64_t sub_1A9828ACC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A98296DC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1A9828B38(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1A9828B38(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A9977720();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1A9976B10();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A9828D34(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1A9828C30(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1A9828C30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_1A97F0528();
    v7 = v5 - v4;
    v8 = (v6 + 16 * v4);
LABEL_5:
    v14 = v7;
    v9 = v8;
    while (1)
    {
      result = sub_1A9977180();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v8 += 2;
        v7 = v14 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v10 = *v9;
      v11 = v9[1];
      *v9 = *(v9 - 1);
      *(v9 - 1) = v11;
      *(v9 - 2) = v10;
      v9 -= 2;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A9828D34(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v90 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v87 = v10;
        v13 = 16 * v11;
        v14 = v11;
        v15 = *v7 + 16 * v11 + 40;
        v5 = sub_1A97F0528();
        result = sub_1A9977180();
        v16 = result;
        v89 = v14;
        v17 = v14 + 2;
        while (v8 != v17)
        {
          result = sub_1A9977180();
          ++v17;
          v15 += 16;
          if ((v16 == -1) == (result != -1))
          {
            v8 = v17 - 1;
            break;
          }
        }

        v11 = v89;
        if (v16 == -1)
        {
          if (v8 < v89)
          {
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
            return result;
          }

          if (v89 < v8)
          {
            v18 = 0;
            v19 = 16 * v8;
            v20 = v89;
            do
            {
              if (v20 != v8 + v18 - 1)
              {
                v25 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v21 = (v25 + v13);
                v22 = v25 + v19;
                v23 = *v21;
                v24 = v21[1];
                *v21 = *(v22 - 16);
                *(v22 - 16) = v23;
                *(v22 - 8) = v24;
              }

              ++v20;
              --v18;
              v19 -= 16;
              v13 += 16;
            }

            while (v20 < v8 + v18);
          }
        }

        v7 = a3;
        v10 = v87;
      }

      v26 = v7[1];
      if (v8 < v26)
      {
        if (__OFSUB__(v8, v11))
        {
          goto LABEL_116;
        }

        if (v8 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_117;
          }

          if (v11 + a4 < v26)
          {
            v26 = v11 + a4;
          }

          if (v26 < v11)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v8 != v26)
          {
            v92 = v26;
            v88 = v10;
            v85 = v6;
            v27 = *v7;
            v5 = sub_1A97F0528();
            v28 = (v27 + 16 * v8);
            v29 = v11 - v8;
            do
            {
              v30 = v29;
              v31 = v28;
              do
              {
                result = sub_1A9977180();
                if (result != -1)
                {
                  break;
                }

                if (!v27)
                {
                  goto LABEL_121;
                }

                v32 = *v31;
                v33 = v31[1];
                *v31 = *(v31 - 1);
                *(v31 - 1) = v33;
                *(v31 - 2) = v32;
                v31 -= 2;
              }

              while (!__CFADD__(v30++, 1));
              ++v8;
              v28 += 2;
              --v29;
            }

            while (v8 != v92);
            v6 = v85;
            v7 = a3;
            v8 = v92;
            v10 = v88;
          }
        }
      }

      if (v8 < v11)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A97AEC88(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v36 = *(v10 + 2);
      v35 = *(v10 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        result = sub_1A97AEC88((v35 > 1), v36 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v37;
      v38 = &v10[16 * v36];
      *(v38 + 4) = v11;
      *(v38 + 5) = v8;
      v5 = *v90;
      if (!*v90)
      {
        goto LABEL_125;
      }

      v93 = v8;
      if (v36)
      {
        while (1)
        {
          v39 = v37 - 1;
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v40 = *(v10 + 4);
            v41 = *(v10 + 5);
            v50 = __OFSUB__(v41, v40);
            v42 = v41 - v40;
            v43 = v50;
LABEL_57:
            if (v43)
            {
              goto LABEL_104;
            }

            v56 = &v10[16 * v37];
            v58 = *v56;
            v57 = *(v56 + 1);
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_107;
            }

            v62 = &v10[16 * v39 + 32];
            v64 = *v62;
            v63 = *(v62 + 1);
            v50 = __OFSUB__(v63, v64);
            v65 = v63 - v64;
            if (v50)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v60, v65))
            {
              goto LABEL_111;
            }

            if (v60 + v65 >= v42)
            {
              if (v42 < v65)
              {
                v39 = v37 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v66 = &v10[16 * v37];
          v68 = *v66;
          v67 = *(v66 + 1);
          v50 = __OFSUB__(v67, v68);
          v60 = v67 - v68;
          v61 = v50;
LABEL_71:
          if (v61)
          {
            goto LABEL_106;
          }

          v69 = &v10[16 * v39];
          v71 = *(v69 + 4);
          v70 = *(v69 + 5);
          v50 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v50)
          {
            goto LABEL_109;
          }

          if (v72 < v60)
          {
            goto LABEL_3;
          }

LABEL_78:
          v77 = v39 - 1;
          if (v39 - 1 >= v37)
          {
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
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          if (!*v7)
          {
            goto LABEL_122;
          }

          v78 = *&v10[16 * v77 + 32];
          v79 = *&v10[16 * v39 + 40];
          sub_1A9829398((*v7 + 16 * v78), (*v7 + 16 * *&v10[16 * v39 + 32]), (*v7 + 16 * v79), v5);
          if (v6)
          {
          }

          if (v79 < v78)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1A98296B4(v10);
          }

          if (v77 >= *(v10 + 2))
          {
            goto LABEL_101;
          }

          v80 = &v10[16 * v77];
          *(v80 + 4) = v78;
          *(v80 + 5) = v79;
          result = sub_1A9829628(v39);
          v37 = *(v10 + 2);
          if (v37 <= 1)
          {
            goto LABEL_3;
          }
        }

        v44 = &v10[16 * v37 + 32];
        v45 = *(v44 - 64);
        v46 = *(v44 - 56);
        v50 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        if (v50)
        {
          goto LABEL_102;
        }

        v49 = *(v44 - 48);
        v48 = *(v44 - 40);
        v50 = __OFSUB__(v48, v49);
        v42 = v48 - v49;
        v43 = v50;
        if (v50)
        {
          goto LABEL_103;
        }

        v51 = &v10[16 * v37];
        v53 = *v51;
        v52 = *(v51 + 1);
        v50 = __OFSUB__(v52, v53);
        v54 = v52 - v53;
        if (v50)
        {
          goto LABEL_105;
        }

        v50 = __OFADD__(v42, v54);
        v55 = v42 + v54;
        if (v50)
        {
          goto LABEL_108;
        }

        if (v55 >= v47)
        {
          v73 = &v10[16 * v39 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v50 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v50)
          {
            goto LABEL_112;
          }

          if (v42 < v76)
          {
            v39 = v37 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v8 = v7[1];
      v9 = v93;
      if (v93 >= v8)
      {
        goto LABEL_88;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_88:
  v5 = v10;
  v10 = *v90;
  if (!*v90)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_1A98296B4(v5);
    v5 = result;
  }

  v81 = *(v5 + 16);
  if (v81 >= 2)
  {
    while (*v7)
    {
      v82 = *(v5 + 16 * v81);
      v83 = *(v5 + 16 * (v81 - 1) + 40);
      sub_1A9829398((*v7 + 16 * v82), (*v7 + 16 * *(v5 + 16 * (v81 - 1) + 32)), (*v7 + 16 * v83), v10);
      if (v6)
      {
      }

      if (v83 < v82)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1A98296B4(v5);
      }

      if (v81 - 2 >= *(v5 + 16))
      {
        goto LABEL_114;
      }

      v84 = (v5 + 16 * v81);
      *v84 = v82;
      v84[1] = v83;
      result = sub_1A9829628(v81 - 1);
      v81 = *(v5 + 16);
      if (v81 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_1A9829398(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 4;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v13] <= a4)
    {
      memmove(a4, __dst, 16 * v13);
    }

    v14 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      sub_1A97F0528();
LABEL_27:
      v20 = v6 - 16;
      v5 -= 16;
      v17 = v14;
      do
      {
        v18 = v5 + 16;
        v17 -= 16;
        if (sub_1A9977180() == -1)
        {
          if (v18 != v6)
          {
            *v5 = *v20;
          }

          if (v14 <= v4 || (v6 -= 16, v20 <= v7))
          {
            v6 = v20;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v18 != v14)
        {
          *v5 = *v17;
        }

        v5 -= 16;
        v14 = v17;
      }

      while (v17 > v4);
      v14 = v17;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      sub_1A97F0528();
      while (sub_1A9977180() == -1)
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 16;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 16;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v7 = *v15;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1A9829628(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A98296B4(v3);
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

unint64_t sub_1A98296F0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 144 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 144 * a3;
  v13 = (v7 + 32 + 144 * a2);
  v14 = 144 * v12;
  v15 = v13 + 144 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_1A98297C4(uint64_t a1, unint64_t a2)
{
  v77 = 47;
  v78 = 0xE100000000000000;
  v72[2] = &v77;

  v5 = sub_1A97ADE50(0x7FFFFFFFFFFFFFFFLL, 1, sub_1A97B2400, v72, a1, a2, v4);
  v6 = sub_1A97BFD80(MEMORY[0x1E69E7CC0]);
  v7 = v5;
  if (!*(v5 + 16))
  {
    goto LABEL_19;
  }

  v67 = *(v5 + 16);
  v69 = v5;
  v70 = v6;
  v8 = *(v5 + 32);
  v9 = *(v7 + 40);
  v10 = *(v7 + 48);
  v77 = 124;
  v78 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v77;

  v12 = sub_1A97AE210(0x7FFFFFFFFFFFFFFFLL, 1, sub_1A982B490, v64, v8, v9, v10, v11);
  v66[1] = 0;
  v13 = *(v12 + 2);
  if (v13)
  {
    v77 = MEMORY[0x1E69E7CC0];
    v14 = v12;
    sub_1A97BD628(0, v13, 0);
    result = v14;
    v16 = 0;
    v17 = v77;
    v18 = (v14 + 56);
    *&v71 = v14;
    while (v16 < *(result + 2))
    {
      v19 = v13;
      v20 = *(v18 - 3);
      v21 = *(v18 - 2);
      v23 = *(v18 - 1);
      v22 = *v18;

      v24 = MEMORY[0x1AC589540](v20, v21, v23, v22);
      v26 = v25;

      v77 = v17;
      v28 = *(v17 + 16);
      v27 = *(v17 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1A97BD628((v27 > 1), v28 + 1, 1);
        v17 = v77;
      }

      ++v16;
      *(v17 + 16) = v28 + 1;
      v29 = v17 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v18 += 4;
      v13 = v19;
      result = v71;
      if (v19 == v16)
      {
        v30 = v17;

        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_10:
  *&v75 = 0xD000000000000019;
  *(&v75 + 1) = 0x80000001A99E4E60;
  sub_1A9977250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2A80, &qword_1A9998400);
  inited = swift_initStackObject();
  v71 = xmmword_1A9996D60;
  *(inited + 16) = xmmword_1A9996D60;
  *(inited + 32) = 0x6F69736E65747865;
  v68 = inited + 32;
  *(inited + 40) = 0xEE00736D6574496ELL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2A88, &qword_1A9998408);
  v32 = swift_allocObject();
  *(v32 + 16) = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A90, &qword_1A9998410);
  v33 = swift_initStackObject();
  *(v33 + 16) = v71;
  *(v33 + 32) = 0x656D686361747461;
  *(v33 + 40) = 0xEB0000000073746ELL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B4F60, &qword_1A9998418);
  v34 = swift_allocObject();
  *(v34 + 16) = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AE0, &qword_1A9998460);
  v35 = swift_initStackObject();
  *(v35 + 16) = v71;
  *(v35 + 32) = 0xD000000000000019;
  v36 = v35 + 32;
  *(v35 + 40) = 0x80000001A99E27C0;
  *(v35 + 48) = v30;
  v37 = sub_1A97BF200(v35);
  swift_setDeallocating();
  sub_1A97B06FC(v36, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v34 + 32) = v37;
  *(v33 + 48) = v34;
  v38 = sub_1A97BF214(v33);
  swift_setDeallocating();
  sub_1A97B06FC(v33 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  *(v32 + 32) = v38;
  *(inited + 48) = v32;
  v39 = sub_1A97BF228(inited);
  swift_setDeallocating();
  sub_1A97B06FC(v68, &qword_1EB3B2AB0, &qword_1A9998430);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2AB8, &qword_1A9998438);
  *&v75 = v39;
  sub_1A967C4DC(&v75, v74);
  v40 = v70;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73 = v40;
  sub_1A97E34E4(v74, &v77, isUniquelyReferenced_nonNull_native);
  sub_1A97C108C(&v77);
  v6 = v73;
  result = v69;
  if (*(v69 + 2) != 2)
  {
LABEL_19:

    return v6;
  }

  if (v67 <= 2)
  {
    v42 = &v69[32 * v67];
    v43 = *v42;
    v44 = v42[1];
    v45 = v42[2];

    v77 = 124;
    v78 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v46);
    v65 = &v77;
    v47 = sub_1A97AE210(0x7FFFFFFFFFFFFFFFLL, 1, sub_1A982B490, v64, v43, v44, v45, v66);
    v48 = *(v47 + 2);
    if (v48)
    {
      v70 = v6;
      v77 = MEMORY[0x1E69E7CC0];
      v49 = v47;
      sub_1A97BD628(0, v48, 0);
      result = v49;
      v50 = 0;
      v51 = v77;
      v52 = (v49 + 56);
      *&v71 = result;
      while (v50 < *(result + 2))
      {
        v53 = *(v52 - 3);
        v54 = *(v52 - 2);
        v55 = *(v52 - 1);
        v56 = *v52;

        v57 = MEMORY[0x1AC589540](v53, v54, v55, v56);
        v59 = v58;

        v77 = v51;
        v61 = *(v51 + 16);
        v60 = *(v51 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_1A97BD628((v60 > 1), v61 + 1, 1);
          v51 = v77;
        }

        ++v50;
        *(v51 + 16) = v61 + 1;
        v62 = v51 + 16 * v61;
        *(v62 + 32) = v57;
        *(v62 + 40) = v59;
        v52 += 4;
        result = v71;
        if (v48 == v50)
        {

          v6 = v70;
          goto LABEL_21;
        }
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v51 = MEMORY[0x1E69E7CC0];
LABEL_21:
    *&v75 = 0xD000000000000014;
    *(&v75 + 1) = 0x80000001A99E4E80;
    sub_1A9977250();
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
    *&v75 = v51;
    sub_1A967C4DC(&v75, v74);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v6;
    sub_1A97E34E4(v74, &v77, v63);
    sub_1A97C108C(&v77);
    return v73;
  }

LABEL_25:
  __break(1u);
  return result;
}

char *sub_1A9829EB0(uint64_t a1)
{
  v51 = 0xD000000000000019;
  v52 = 0x80000001A99E4E60;
  sub_1A9977250();
  if (*(a1 + 16) && (v2 = sub_1A97BCF30(v50), (v3 & 1) != 0))
  {
    sub_1A97AF7EC(*(a1 + 56) + 32 * v2, &v51);
    sub_1A97C108C(v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1650, &qword_1A9992800);
    if (swift_dynamicCast())
    {
      v4 = v48;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_1A97C108C(v50);
    v4 = 0;
  }

  v51 = 0xD000000000000014;
  v52 = 0x80000001A99E4E80;
  sub_1A9977250();
  if (*(a1 + 16) && (v5 = sub_1A97BCF30(v50), (v6 & 1) != 0))
  {
    sub_1A97AF7EC(*(a1 + 56) + 32 * v5, &v51);
    sub_1A97C108C(v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
    if (swift_dynamicCast())
    {
      v7 = v48;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    sub_1A97C108C(v50);
    v7 = 0;
  }

  v48 = 0;
  v49 = 0xE000000000000000;
  if (v4)
  {
    strcpy(v47, "extensionItems");
    HIBYTE(v47[1]) = -18;
    sub_1A9977250();
    if (*(v4 + 2) && (v8 = sub_1A97BCF30(v50), (v9 & 1) != 0))
    {
      sub_1A97AF7EC(*(v4 + 7) + 32 * v8, &v51);
      sub_1A97C108C(v50);

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2B00, &unk_1A9998468);
      v11 = MEMORY[0x1E69E7CA0];
      if (swift_dynamicCast())
      {
        v12 = v47[0];
        v13 = *(v47[0] + 16);
        if (v13)
        {
          v14 = 0;
          v15 = v47[0] + 32;
          v16 = MEMORY[0x1E69E7CC0];
          v45 = v47[0] + 32;
          v46 = v7;
          v43 = v47[0];
          v44 = v10;
          v42 = *(v47[0] + 16);
          while (v14 < *(v12 + 16))
          {
            v17 = *(v15 + 8 * v14);
            strcpy(v47, "attachments");
            HIDWORD(v47[1]) = -352321536;

            sub_1A9977250();
            if (*(v17 + 16) && (v18 = sub_1A97BCF30(v50), (v19 & 1) != 0))
            {
              sub_1A97AF7EC(*(v17 + 56) + 32 * v18, &v51);
              sub_1A97C108C(v50);

              if (swift_dynamicCast())
              {
                v20 = v47[0];
                v21 = *(v47[0] + 16);
                if (v21)
                {
                  v22 = 32;
                  do
                  {
                    v23 = *(v20 + v22);
                    v47[0] = 0xD000000000000019;
                    v47[1] = 0x80000001A99E27C0;

                    sub_1A9977250();
                    if (*(v23 + 16) && (v24 = sub_1A97BCF30(v50), (v25 & 1) != 0))
                    {
                      sub_1A97AF7EC(*(v23 + 56) + 32 * v24, &v51);
                      sub_1A97C108C(v50);

                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
                      if (swift_dynamicCast())
                      {
                        v26 = v11;
                        v10 = v47[0];
                        v27 = *(v47[0] + 16);
                        v28 = *(v16 + 2);
                        v29 = v28 + v27;
                        if (__OFADD__(v28, v27))
                        {
                          goto LABEL_57;
                        }

                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        if (!isUniquelyReferenced_nonNull_native || v29 > *(v16 + 3) >> 1)
                        {
                          if (v28 <= v29)
                          {
                            v31 = v28 + v27;
                          }

                          else
                          {
                            v31 = v28;
                          }

                          v16 = sub_1A97AE618(isUniquelyReferenced_nonNull_native, v31, 1, v16);
                        }

                        v11 = v26;
                        if (*(v47[0] + 16))
                        {
                          if ((*(v16 + 3) >> 1) - *(v16 + 2) < v27)
                          {
                            goto LABEL_59;
                          }

                          swift_arrayInitWithCopy();

                          if (v27)
                          {
                            v32 = *(v16 + 2);
                            v33 = __OFADD__(v32, v27);
                            v34 = v32 + v27;
                            v10 = 0x80000001A99E27C0;
                            if (v33)
                            {
                              goto LABEL_60;
                            }

                            *(v16 + 2) = v34;
                          }
                        }

                        else
                        {

                          v10 = 0x80000001A99E27C0;
                          if (v27)
                          {
                            goto LABEL_58;
                          }
                        }
                      }
                    }

                    else
                    {

                      sub_1A97C108C(v50);
                    }

                    v22 += 8;
                    --v21;
                  }

                  while (v21);

                  v15 = v45;
                  v7 = v46;
                  v12 = v43;
                  v10 = v44;
                  v13 = v42;
                }

                else
                {

                  v15 = v45;
                  v7 = v46;
                }
              }
            }

            else
            {

              sub_1A97C108C(v50);
            }

            if (++v14 == v13)
            {

              goto LABEL_51;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);

          __break(1u);
          return result;
        }
      }
    }

    else
    {

      sub_1A97C108C(v50);
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_51:
  v50[0] = v16;

  sub_1A9828ACC(v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  sub_1A97AF974(&qword_1EB3AB6D0, &unk_1EB3B2AC0, &qword_1A9990580, MEMORY[0x1E69E6310]);
  v35 = sub_1A9976760();
  v37 = v36;

  MEMORY[0x1AC5895B0](v35, v37);

  MEMORY[0x1AC5895B0](47, 0xE100000000000000);
  if (v7)
  {
    v50[0] = v7;

    sub_1A9828ACC(v50);

    v38 = sub_1A9976760();
    v40 = v39;

    MEMORY[0x1AC5895B0](v38, v40);
  }

  return v48;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A982A610()
{
  v1 = *(v0 + 16);
  *v1 = sub_1A981B92C(*(v0 + 32), *(v0 + 40), *(v0 + 48), 1, 0, 1, *(v0 + 56));
}

unint64_t sub_1A982A66C()
{
  result = qword_1EB3B28E0;
  if (!qword_1EB3B28E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B28E0);
  }

  return result;
}

uint64_t sub_1A982A734()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A97B2988;

  return sub_1A98242BC(v2, v3, v4);
}

uint64_t sub_1A982A7E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A97B2988;

  return sub_1A98A666C(v2, v3, v4);
}

uint64_t sub_1A982A8A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A97B2988;

  return sub_1A98A6754(a1, v4, v5, v6);
}

uint64_t objectdestroy_113Tm()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1A982A9BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A97B2988;

  return sub_1A9823D2C(v2, v3, v4);
}

uint64_t sub_1A982AA70()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A97B2988;

  return sub_1A98235E4(v2, v3, v5, v4);
}

uint64_t sub_1A982AB30()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A97B2988;

  return sub_1A9822C2C(v2, v3, v4);
}

uint64_t objectdestroy_156Tm()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1A982AC2C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A97B2638;

  return sub_1A9821760(v2, v3, v4);
}

uint64_t objectdestroy_117Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A982AD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (sub_1A99777E0() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_1A982ADC0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  result = sub_1A982AD20(*a1, a2, a3);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = *(v6 + 16);
    if (v10 == v11)
    {
      return v9;
    }

    v12 = 16 * result;
    while (v10 < v11)
    {
      v14 = *(v6 + v12 + 48);
      v15 = *(v6 + v12 + 56);
      if (v14 != a2 || v15 != a3)
      {
        result = sub_1A99777E0();
        if ((result & 1) == 0)
        {
          if (v10 != v9)
          {
            if (v9 >= v11)
            {
              goto LABEL_24;
            }

            v17 = (v6 + 32 + 16 * v9);
            v18 = v17[1];
            v20 = *v17;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1A98296C8(v6);
            }

            v19 = v6 + 16 * v9;
            *(v19 + 32) = v14;
            *(v19 + 40) = v15;

            if (v10 >= *(v6 + 16))
            {
              goto LABEL_25;
            }

            v13 = v6 + v12;
            *(v13 + 48) = v20;
            *(v13 + 56) = v18;

            *a1 = v6;
          }

          ++v9;
        }
      }

      ++v10;
      v11 = *(v6 + 16);
      v12 += 16;
      if (v10 == v11)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A982AF38(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}