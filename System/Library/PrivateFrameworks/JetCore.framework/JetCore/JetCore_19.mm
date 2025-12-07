uint64_t sub_1DB4B5604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v12);
  v14 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  *(v15 + 4) = a6;
  *(v15 + 5) = a3;
  (*(v10 + 32))(&v15[v14], v13, a4);
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a3;
  v20[3] = &type metadata for SyncTaskScheduler;
  v20[4] = &protocol witness table for SyncTaskScheduler;
  v17 = *(a6 + 16);
  swift_retain_n();
  v17(sub_1DB4B6914, v15, sub_1DB4B69D0, v16, v20, a5, a6);

  return __swift_destroy_boxed_opaque_existential_0(v20);
}

uint64_t sub_1DB4B57D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v21 - v13;
  v16 = *(v15 + 48);
  (*(*(a4 - 8) + 16))(&v21 - v13, a3, a4, v12);
  (*(*(AssociatedTypeWitness - 8) + 16))(&v14[v16], a1, AssociatedTypeWitness);
  Promise.resolve(_:)(v14, v17, v18, v19);
  return (*(v11 + 8))(v14, TupleTypeMetadata2);
}

char *Promise.deinit()
{
  v1 = *v0;

  v2 = *(*v0 + 96);
  v5 = type metadata accessor for Promise.State(0, *(v1 + 80), v3, v4);
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  return v0;
}

uint64_t Promise.__deallocating_deinit()
{
  Promise.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DB4B5A50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DB306AF4;

  return Promise.then()(a1);
}

void sub_1DB4B5B28(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = a1;
  v4 = *(*a3 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v26 - v6;
  v8 = sub_1DB50B120();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v14 = type metadata accessor for Result(0, v4, v12, v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  (*(v9 + 16))(v11, v27, v8, v15);
  v18 = a2;
  Result.init(from:orElse:)(v11, a2, v4, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v17;
    Promise.reject(_:)(*v17, v19, v20, v21);
  }

  else
  {
    (*(v5 + 32))(v7, v17, v4);
    Promise.resolve(_:)(v7, v23, v24, v25);
    (*(v5 + 8))(v7, v4);
  }
}

void sub_1DB4B5D9C(char a1, id a2)
{
  if ((a1 & 1) != 0 || !a2)
  {
    sub_1DB3FB8C4();
  }

  else
  {
    v3 = a2;
    sub_1DB3DFCB8(a2);
  }
}

void sub_1DB4B5E3C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    sub_1DB3DFCB8(a1);
  }

  else
  {
    sub_1DB3FB8C4();
  }
}

char *static Promise.resolved(toError:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = Promise.__allocating_init(error:)(a1, a2, a3, a4);
  v6 = a1;
  return v5;
}

char *Promise.replace<A>(on:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Promise(0, a4, a3, a4);
  WitnessTable = swift_getWitnessTable();

  return Promise.flatMap<A>(on:_:)(a1, a2, a3, v7, WitnessTable);
}

void sub_1DB4B5F74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(a2 + 32) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(a2 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 24);
    *(a2 + 24) = a1;
    *(a2 + 32) = 1;
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v3 + 4);
    v13 = v4;
    v5 = v4[2];
    if (v5)
    {
      v6 = (v4 + 4);
      do
      {
        sub_1DB47CFA0(v6, v21);
        sub_1DB47CFA0(v21, v18);
        v7 = v18[0];
        if (v20)
        {
          **(*(v18[0] + 64) + 40) = a1;
          swift_unknownObjectRetain();
          swift_continuation_throwingResume();
          sub_1DB47D010(v21);
        }

        else
        {
          v8 = v18[1];

          sub_1DB2FEA0C(&v19, v15);
          v10 = v16;
          v9 = v17;
          __swift_project_boxed_opaque_existential_1(v15, v16);
          v11 = swift_allocObject();
          v11[2] = v7;
          v11[3] = v8;
          v11[4] = a1;
          v12 = *(v9 + 8);
          swift_unknownObjectRetain();

          v12(sub_1DB400EC8, v11, v10, v9);

          sub_1DB47D010(v21);
          __swift_destroy_boxed_opaque_existential_0(v15);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1DB47D078(v13, 0);
  }
}

char *_s7JetCore7PromiseC8resolved7toValueACyxGx_tFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 80);
  v7 = type metadata accessor for Promise.State(0, v6, a3, a4);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  (*(*(v6 - 8) + 16))(&v12 - v9, a1, v6, v8);
  swift_storeEnumTagMultiPayload();
  swift_allocObject();
  return sub_1DB4B45F8(v10);
}

uint64_t sub_1DB4B6380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Promise.State(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1DB4B643C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Promise.Observer(255, *(a1 + 16), a3, a4);
  result = sub_1DB50AA60();
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      result = sub_1DB35C910();
      if (v7 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DB4B64DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 4)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 253;
}

void sub_1DB4B65F4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFD)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 252) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFC)
  {
    v8 = a2 - 253;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1DB4B67AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DB4B6818(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB4B6854(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DB4B68A4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t objectdestroy_13Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t JetPackSandboxExtensionFileStreamSource.asset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;

  return sub_1DB301E24(v4, v5, v6, v7, v8);
}

uint64_t JetPackSandboxExtensionFileStreamSource.cacheKey.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t JetPackSandboxExtensionFileStreamSource.makeStream()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69AB840]);

  v1 = sub_1DB50A620();
  v2 = [v0 initWithPath_];

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    sub_1DB49D8CC();
    v2 = swift_allocError();
    v3 = 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43CD0, &unk_1DB51FDD0);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;

  *(v4 + 16) = v5;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  return v4;
}

uint64_t sub_1DB4B6B88@<X0>(uint64_t a1@<X8>)
{
  sub_1DB509BA0();
  v2 = sub_1DB509CA0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1DB4B6BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[33] = a4;
  v5 = sub_1DB509CA0();
  v4[34] = v5;
  v4[35] = *(v5 - 8);
  v4[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4B6CBC, 0, 0);
}

uint64_t sub_1DB4B6CBC()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  sub_1DB509BA0();
  v5 = sub_1DB509BB0();
  v7 = v6;
  v0[37] = v5;
  v0[38] = v6;
  (*(v2 + 8))(v1, v3);
  v8 = *(v4 + 96);
  v0[39] = v8;
  v9 = *(v4 + 104);
  v0[40] = v9;
  v10 = swift_task_alloc();
  v0[41] = v10;
  *v10 = v0;
  v10[1] = sub_1DB4B6DCC;

  return sub_1DB4880FC(v8, v9, v5, v7);
}

uint64_t sub_1DB4B6DCC()
{
  v2 = *v1;
  *(v2 + 336) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB4B6F10, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DB4B6F10()
{
  if (qword_1ECC42298 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  sub_1DB50BEB0();
  v3 = *(v0 + 40);
  v25 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v26 = sub_1DB301BC0(0, 67, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001DB530A90;
  v5._countAndFlagsBits = 0xD000000000000034;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v6 = MEMORY[0x1E69E6158];
  *(v0 + 160) = MEMORY[0x1E69E6158];
  *(v0 + 136) = v2;
  *(v0 + 144) = v1;
  sub_1DB301CDC(v0 + 136, v0 + 168);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;

  sub_1DB301D4C(v0 + 168, v0 + 56);
  *(v0 + 88) = 0;
  v7 = v26;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1DB301BC0(0, *(v26 + 2) + 1, 1, v26);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 296);
  v11 = *(v0 + 304);
  *(v7 + 2) = v9 + 1;
  v12 = &v7[40 * v9];
  v13 = *(v0 + 56);
  v14 = *(v0 + 72);
  v12[64] = *(v0 + 88);
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  sub_1DB301DBC(v0 + 136);
  v15._countAndFlagsBits = 0x4E656C6966202C20;
  v15._object = 0xED0000203A656D61;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v0 + 224) = v6;
  *(v0 + 200) = v10;
  *(v0 + 208) = v11;
  sub_1DB301CDC(v0 + 200, v0 + 232);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  sub_1DB301D4C(v0 + 232, v0 + 96);
  *(v0 + 128) = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1DB301BC0(0, *(v7 + 2) + 1, 1, v7);
  }

  v17 = *(v7 + 2);
  v16 = *(v7 + 3);
  if (v17 >= v16 >> 1)
  {
    v7 = sub_1DB301BC0((v16 > 1), v17 + 1, 1, v7);
  }

  v18 = *(v0 + 336);
  *(v7 + 2) = v17 + 1;
  v19 = &v7[40 * v17];
  v20 = *(v0 + 96);
  v21 = *(v0 + 112);
  v19[64] = *(v0 + 128);
  *(v19 + 2) = v20;
  *(v19 + 3) = v21;
  sub_1DB301DBC(v0 + 200);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  *(v4 + 32) = v7;
  Logger.error(_:)(v4, v3, v25);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1DB4B7250()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - v3;
  if (qword_1EE30E1A8 != -1)
  {
    v2 = swift_once();
  }

  v5 = *(v0 + 104);
  v15[0] = *(v0 + 96);
  v15[1] = v5;
  v6 = *(qword_1EE312DD8 + 16);
  MEMORY[0x1EEE9AC00](v2);
  *(&v13 - 2) = v15;
  os_unfair_lock_lock(v6 + 6);
  sub_1DB37795C(v14);
  os_unfair_lock_unlock(v6 + 6);

  v7 = sub_1DB50ABA0();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_1DB4B8DA0(v0, v14);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  v9 = v14[5];
  *(v8 + 96) = v14[4];
  *(v8 + 112) = v9;
  *(v8 + 128) = v14[6];
  v10 = v14[1];
  *(v8 + 32) = v14[0];
  *(v8 + 48) = v10;
  v11 = v14[3];
  *(v8 + 64) = v14[2];
  *(v8 + 80) = v11;
  sub_1DB388F14(0, 0, v4, &unk_1DB521638, v8);
}

uint64_t sub_1DB4B742C(uint64_t a1)
{
  if (qword_1EE30E1A8 != -1)
  {
    a1 = swift_once();
  }

  v2 = *(v1 + 104);
  v5[2] = *(v1 + 96);
  v5[3] = v2;
  v3 = *(qword_1EE312DD8 + 16);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v3 + 6);
  sub_1DB4B8D58(v5);
  os_unfair_lock_unlock(v3 + 6);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1DB4B7518(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1DB4B7560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB4B768C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v13 = *v7;
  sub_1DB50BCF0();
  sub_1DB50A740();
  v14 = sub_1DB50BD30();
  v15 = -1 << *(v13 + 32);
  v16 = v14 & ~v15;
  if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (1)
    {
      v18 = (*(v13 + 48) + 16 * v16);
      v19 = *v18 == a2 && v18[1] == a3;
      if (v19 || (sub_1DB50BA30() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v22 = (*(v13 + 48) + 16 * v16);
    v23 = v22[1];
    *a1 = *v22;
    a1[1] = v23;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v7;

    sub_1DB4B8188(a2, a3, v16, isUniquelyReferenced_nonNull_native, a4, a5, a6, a7);
    *v7 = v26;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DB4B77FC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1DB50BCF0();
  sub_1DB50A740();
  v8 = sub_1DB50BD30();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1DB50BA30() & 1) != 0)
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

    sub_1DB4B8320(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DB4B794C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1DB50BCF0();
  if (a2)
  {
    MEMORY[0x1E12871F0](0);
    v6 = a2;
  }

  else
  {
    v6 = 1;
  }

  MEMORY[0x1E12871F0](v6);
  v7 = sub_1DB50BD30();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1DB4B84A0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
    goto LABEL_12;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = *(*(v5 + 48) + 8 * v9);
    if (v11)
    {
      break;
    }

    if (!a2)
    {
      goto LABEL_10;
    }

LABEL_7:
    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (v11 != a2)
  {
    goto LABEL_7;
  }

LABEL_10:
  result = 0;
LABEL_12:
  *a1 = a2;
  return result;
}

uint64_t sub_1DB4B7A68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1DB50B2E0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = (*(v5 + 48) + 16 * (v17 | (v8 << 6)));
      v21 = *v20;
      v22 = v20[1];
      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v21;
      v16[1] = v22;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v30 = 1 << *(v5 + 32);
    if (v30 >= 64)
    {
      bzero((v5 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1DB4B7CC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43140, &unk_1DB521640);
  result = sub_1DB50B2E0();
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
      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
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

uint64_t sub_1DB4B7F20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43150, &unk_1DB521650);
  result = sub_1DB50B2E0();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1DB50BCF0();
      if (v17)
      {
        MEMORY[0x1E12871F0](0);
        v18 = v17;
      }

      else
      {
        v18 = 1;
      }

      MEMORY[0x1E12871F0](v18);
      result = sub_1DB50BD30();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DB4B8188(uint64_t result, uint64_t a2, unint64_t a3, char a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t (*a8)(void))
{
  v11 = result;
  v12 = *(*v8 + 16);
  v13 = *(*v8 + 24);
  if (v13 > v12 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DB4B7A68(v12 + 1, a5, a6);
  }

  else
  {
    if (v13 > v12)
    {
      result = a8();
      goto LABEL_16;
    }

    sub_1DB4B8610(v12 + 1, a5, a6);
  }

  v14 = *v8;
  sub_1DB50BCF0();
  sub_1DB50A740();
  result = sub_1DB50BD30();
  v15 = -1 << *(v14 + 32);
  a3 = result & ~v15;
  if ((*(v14 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v16 = ~v15;
    do
    {
      v17 = (*(v14 + 48) + 16 * a3);
      if (*v17 == v11 && v17[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1DB50BA30();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v16;
    }

    while (((*(v14 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v19 = *v8;
  *(*v8 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = v11;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1DB50BC10();
  __break(1u);
  return result;
}

uint64_t sub_1DB4B8320(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1DB4B7CC0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1DB335AE0();
      goto LABEL_16;
    }

    sub_1DB4B8840(v8 + 1);
  }

  v10 = *v4;
  sub_1DB50BCF0();
  sub_1DB50A740();
  result = sub_1DB50BD30();
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

      result = sub_1DB50BA30();
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
  result = sub_1DB50BC10();
  __break(1u);
  return result;
}

uint64_t sub_1DB4B84A0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_1DB4B7F20(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1DB335C3C();
      a2 = v7;
      goto LABEL_18;
    }

    sub_1DB4B8A78(v5 + 1);
  }

  v8 = *v3;
  sub_1DB50BCF0();
  if (v4)
  {
    MEMORY[0x1E12871F0](0);
    v9 = v4;
  }

  else
  {
    v9 = 1;
  }

  MEMORY[0x1E12871F0](v9);
  result = sub_1DB50BD30();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      if (v12)
      {
        if (v12 == v4)
        {
LABEL_17:
          result = sub_1DB50BC10();
          __break(1u);
          break;
        }
      }

      else if (!v4)
      {
        goto LABEL_17;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_18:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }

  return result;
}

uint64_t sub_1DB4B8610(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1DB50B2E0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v19 = (*(v5 + 48) + 16 * (v16 | (v8 << 6)));
      v20 = *v19;
      v21 = v19[1];
      sub_1DB50BCF0();

      sub_1DB50A740();
      result = sub_1DB50BD30();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v7 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v18 = *(v5 + 56 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_1DB4B8840(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43140, &unk_1DB521640);
  result = sub_1DB50B2E0();
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
      sub_1DB50BCF0();

      sub_1DB50A740();
      result = sub_1DB50BD30();
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

uint64_t sub_1DB4B8A78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43150, &unk_1DB521650);
  result = sub_1DB50B2E0();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_1DB50BCF0();
      if (v16)
      {
        MEMORY[0x1E12871F0](0);
        v17 = v16;
      }

      else
      {
        v17 = 1;
      }

      MEMORY[0x1E12871F0](v17);
      result = sub_1DB50BD30();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DB4B8CB0@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  result = sub_1DB4B77FC(v8, v3, v4);
  v6 = v8[0];
  v7 = v8[1];
  *a2 = result & 1;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  return result;
}

uint64_t sub_1DB4B8D18@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_1DB335EC4(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DB4B8D58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DB335EC4(**(v1 + 16), *(*(v1 + 16) + 8));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DB4B8DD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DB306AF4;

  return sub_1DB4B6BFC(a1, v4, v5, v1 + 32);
}

uint64_t sub_1DB4B8E88()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 13;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB4B8EBC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB4B8F20()
{
  if (*v0)
  {
    return 0x69746375646F7270;
  }

  else
  {
    return 0x6E69676775626564;
  }
}

uint64_t sub_1DB4B8F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69676775626564 && a2 == 0xE900000000000067;
  if (v6 || (sub_1DB50BA30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69746375646F7270 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB50BA30();

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

uint64_t sub_1DB4B9050(uint64_t a1)
{
  v2 = sub_1DB4B9468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4B908C(uint64_t a1)
{
  v2 = sub_1DB4B9468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4B90C8(uint64_t a1)
{
  v2 = sub_1DB4B9510();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4B9104(uint64_t a1)
{
  v2 = sub_1DB4B9510();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4B9140(uint64_t a1)
{
  v2 = sub_1DB4B94BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4B917C(uint64_t a1)
{
  v2 = sub_1DB4B94BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonRequestTypeKind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46C10, &qword_1DB521670);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46C18, &qword_1DB521678);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46C20, &qword_1DB521680);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4B9468();
  sub_1DB50BE40();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1DB4B94BC();
    v14 = v18;
    sub_1DB50B7E0();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1DB4B9510();
    sub_1DB50B7E0();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1DB4B9468()
{
  result = qword_1ECC46C28;
  if (!qword_1ECC46C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46C28);
  }

  return result;
}

unint64_t sub_1DB4B94BC()
{
  result = qword_1ECC46C30;
  if (!qword_1ECC46C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46C30);
  }

  return result;
}

unint64_t sub_1DB4B9510()
{
  result = qword_1ECC46C38;
  if (!qword_1ECC46C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46C38);
  }

  return result;
}

uint64_t DaemonRequestTypeKind.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t DaemonRequestTypeKind.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46C40, &qword_1DB521688);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46C48, &qword_1DB521690);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46C50, &unk_1DB521698);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4B9468();
  v13 = v31;
  sub_1DB50BDF0();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1DB50B7A0();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1DB50B3E0();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
    *v21 = &type metadata for DaemonRequestTypeKind;
    sub_1DB50B6B0();
    sub_1DB50B3C0();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1DB4B94BC();
    sub_1DB50B6A0();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1DB4B9510();
    sub_1DB50B6A0();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

unint64_t sub_1DB4B9A30()
{
  result = qword_1ECC46C58;
  if (!qword_1ECC46C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46C58);
  }

  return result;
}

unint64_t sub_1DB4B9B68()
{
  result = qword_1ECC46C60;
  if (!qword_1ECC46C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46C60);
  }

  return result;
}

unint64_t sub_1DB4B9BC0()
{
  result = qword_1ECC46C68;
  if (!qword_1ECC46C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46C68);
  }

  return result;
}

unint64_t sub_1DB4B9C18()
{
  result = qword_1ECC46C70;
  if (!qword_1ECC46C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46C70);
  }

  return result;
}

unint64_t sub_1DB4B9C70()
{
  result = qword_1ECC46C78;
  if (!qword_1ECC46C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46C78);
  }

  return result;
}

unint64_t sub_1DB4B9CC8()
{
  result = qword_1ECC46C80;
  if (!qword_1ECC46C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46C80);
  }

  return result;
}

unint64_t sub_1DB4B9D20()
{
  result = qword_1ECC46C88;
  if (!qword_1ECC46C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46C88);
  }

  return result;
}

unint64_t sub_1DB4B9D78()
{
  result = qword_1ECC46C90;
  if (!qword_1ECC46C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46C90);
  }

  return result;
}

uint64_t sub_1DB4B9DD8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1DB50A650();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CC8, &qword_1DB521A60);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1EE30C7A0 = result;
  return result;
}

uint64_t sub_1DB4B9EA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44488, qword_1DB514F28);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1EE30C7B0 = result;
  return result;
}

void sub_1DB4B9F00()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1DB50A650();

    v2 = sub_1DB50A6D0();
    v4 = v3;

    if (qword_1ECC422D0 != -1)
    {
      swift_once();
    }

    v5 = sub_1DB33114C(v2, v4, qword_1ECC46CA0);
  }

  else
  {
    v5 = 0;
  }

  byte_1ECC46C98 = v5 & 1;
}

uint64_t sub_1DB4BA020()
{
  v0 = sub_1DB324B6C(&unk_1F56F0748);
  result = swift_arrayDestroy();
  qword_1ECC46CA0 = v0;
  return result;
}

uint64_t sub_1DB4BA0BC()
{
  v0 = sub_1DB324B6C(&unk_1F56F07A8);
  result = swift_arrayDestroy();
  qword_1ECC46CB0 = v0;
  return result;
}

void *sub_1DB4BA134(uint64_t a1, void *a2, uint64_t *a3, _BYTE *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v9 = a3;
    swift_once();
    a3 = v9;
  }

  v6 = *a3;
  if (qword_1EE30C7A8 != -1)
  {
    swift_once();
  }

  result = sub_1DB50BEB0();
  if (v11)
  {
    v8 = sub_1DB33114C(v10, v11, v6);
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8 & 1;
  return result;
}

uint64_t sub_1DB4BA224(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_1DB4BA26C()
{
  v0 = sub_1DB324B6C(&unk_1F56F07E8);
  result = swift_arrayDestroy();
  qword_1ECC46CC0 = v0;
  return result;
}

uint64_t sub_1DB4BA2B8()
{
  v0 = sub_1DB3ADB68(&unk_1F56F0628);
  sub_1DB424254(&unk_1F56F0648);
  if (qword_1EE30C7A8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  if (v4)
  {
    v1 = sub_1DB33114C(v3, v4, v0);
  }

  else
  {
    v1 = 0;
  }

  byte_1EE30C7D0 = v1 & 1;
  return result;
}

uint64_t BaseObjectGraph.injectIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DB306AF4;

  return BaseObjectGraph._injectIfAvailable<A>(_:)(a1, a2, a3);
}

uint64_t BaseObjectGraph.inject<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DB30C7A0;

  return BaseObjectGraph._inject<A>(_:)(a1, a2, a3);
}

void BaseObjectGraph.injectIfAvailable<A>(_:)(uint64_t a1)
{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](60, 0xE100000000000000);
  v1 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v1);

  MEMORY[0x1E1285C70](0xD00000000000006DLL, 0x80000001DB530B00);
  sub_1DB50B580();
  __break(1u);
}

void BaseObjectGraph.inject<A>(_:)(uint64_t a1)
{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](60, 0xE100000000000000);
  v1 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v1);

  MEMORY[0x1E1285C70](0xD000000000000062, 0x80000001DB530B70);
  sub_1DB50B580();
  __break(1u);
}

{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](60, 0xE100000000000000);
  v1 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v1);

  MEMORY[0x1E1285C70](0xD00000000000006FLL, 0x80000001DB530BE0);
  sub_1DB50B580();
  __break(1u);
}

uint64_t sub_1DB4BA72C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v7 = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1DB302744(0, *(v13 + 16) + 1, 1, v13);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB302744((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[16 * v9];
  *(v10 + 4) = a3;
  *(v10 + 5) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D00, &qword_1DB521B60);
  v11 = swift_task_localValuePush();
  a1(v11);
  return swift_task_localValuePop();
}

char *sub_1DB4BA878(void *(*a1)(char **__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v14;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB302744(0, *(v14 + 2) + 1, 1, v14);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB302744((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[16 * v10];
  *(v11 + 4) = a3;
  *(v11 + 5) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D00, &qword_1DB521B60);
  v12 = swift_task_localValuePush();
  a1(&v14, v12);
  if (v4)
  {
    return swift_task_localValuePop();
  }

  swift_task_localValuePop();
  return v14;
}

uint64_t sub_1DB4BAA00@<X0>(_OWORD *a1@<X8>)
{
  v5.i64[1] = &type metadata for JetPackAssetSession.Configuration;
  sub_1DB330884(&v5);
  v3 = *(v1 + 16);

  os_unfair_lock_lock(v3 + 25);
  sub_1DB4BC5A4(&v3[4], v1, &type metadata for JetPackAssetSession.Configuration, a1);
  os_unfair_lock_unlock(v3 + 25);
}

uint64_t sub_1DB4BABE8@<X0>(void *a1@<X8>)
{
  v5.i64[1] = &type metadata for Bag;
  sub_1DB330884(&v5);
  v3 = *(v1 + 16);

  os_unfair_lock_lock(v3 + 9);
  sub_1DB4BDAC4(&v3[4], v1, &type metadata for Bag, a1);
  os_unfair_lock_unlock(v3 + 9);
}

uint64_t sub_1DB4BADA8(uint64_t (*a1)(void), uint64_t (*a2)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v4 = a1(0);
  v8.i64[0] = v2;
  v8.i64[1] = v4;
  sub_1DB330884(&v8);
  v5 = *(v2 + 16);

  os_unfair_lock_lock(v5 + 9);
  v6 = a2(v5 + 4, v2, v2, v4);
  os_unfair_lock_unlock(v5 + 9);

  return v6;
}

uint64_t sub_1DB4BAFB4(uint64_t a1, void (*a2)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v7.i64[1] = a1;
  sub_1DB330884(&v7);
  v5 = *(v2 + 16);

  os_unfair_lock_lock(v5 + 19);
  a2(v5 + 4, v2, v2, a1);
  os_unfair_lock_unlock(v5 + 19);
}

uint64_t sub_1DB4BB150(uint64_t *a1, uint64_t *a2, void (*a3)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8.i64[0] = v3;
  v8.i64[1] = v5;
  sub_1DB330884(&v8);
  v6 = *(v3 + 16);

  os_unfair_lock_lock(v6 + 15);
  a3(v6 + 4, v3, v3, v5);
  os_unfair_lock_unlock(v6 + 15);
}

uint64_t sub_1DB4BB2F0(uint64_t a1, void (*a2)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v7.i64[1] = a1;
  sub_1DB330884(&v7);
  v5 = *(v2 + 16);

  os_unfair_lock_lock(v5 + 9);
  a2(v5 + 4, v2, v2, a1);
  os_unfair_lock_unlock(v5 + 9);
}

uint64_t sub_1DB4BB48C@<X0>(uint64_t a1@<X8>)
{
  v5.i64[1] = &type metadata for IntentDispatchTimeout;
  sub_1DB330884(&v5);
  v3 = *(v1 + 16);

  os_unfair_lock_lock(v3 + 9);
  sub_1DB4C0C2C(&v3[4], v1, &type metadata for IntentDispatchTimeout, a1);
  os_unfair_lock_unlock(v3 + 9);
}

uint64_t sub_1DB4BB620(uint64_t (*a1)(void), void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = a1(0);
  v9.i64[0] = v2;
  v9.i64[1] = v4;
  sub_1DB330884(&v9);
  v5 = *(v2 + 16);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v5 + v7));
  a2(v5 + v6, v2, v2, v4);
  os_unfair_lock_unlock((v5 + v7));
}

uint64_t sub_1DB4BB81C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v62 = a3;
  v63 = a4;
  v8 = sub_1DB50A280();
  v60 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v53 - v17;
  v66 = *a1;
  if (*(a1 + 16))
  {
    *a5 = v66;
  }

  else
  {
    v56 = v5;
    v53 = v8;
    v61 = v16;
    v58 = a5;
    v20 = qword_1EE30EAE8;
    v64 = *(a1 + 8);

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = sub_1DB50A270();
    v22 = __swift_project_value_buffer(v21, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v55 = v22;
    v23 = sub_1DB50A250();
    v24 = sub_1DB50B070();
    if (sub_1DB50B0E0())
    {
      v25 = swift_slowAlloc();
      v65 = v11;
      v26 = v25;
      v27 = v10;
      v28 = swift_slowAlloc();
      v67.tv_sec = v28;
      *v26 = 136315138;
      *(v26 + 4) = sub_1DB3D4EE8(0xD000000000000017, 0x80000001DB52CA10, &v67.tv_sec);
      v29 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v23, v24, v29, "MakeDependency", "object=%s,type=lazy", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      v30 = v28;
      v10 = v27;
      MEMORY[0x1E1288220](v30, -1, -1);
      v31 = v26;
      v11 = v65;
      MEMORY[0x1E1288220](v31, -1, -1);
    }

    (*(v11 + 16))(v14, v18, v10);
    sub_1DB50A2C0();
    swift_allocObject();
    sub_1DB50A2B0();
    v32 = *(v11 + 8);
    v57 = v10;
    v65 = v11 + 8;
    v54 = v32;
    v32(v18, v10);
    static MonotonicTime.now.getter(&v67);
    tv_sec = v67.tv_sec;
    tv_nsec = v67.tv_nsec;
    v35 = v56;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v36 = v67.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v37 = swift_allocObject();
    *(v37 + 24) = 0;
    v38 = (v37 + 24);
    *(v37 + 16) = 0;
    v67.tv_sec = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    sub_1DB4BA72C(v66, v64, v62, v63);
    v63 = v35;
    sub_1DB4CB894(*a1, *(a1 + 8), *(a1 + 16), MEMORY[0x1E69E7CF8]);
    *a1 = v68;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;

    static MonotonicTime.now.getter(&v67);
    v39 = v67.tv_sec;
    v40 = v67.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v41 = v40 / *&qword_1EE30ED50 + v39 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v42 = sub_1DB50A250();
    v43 = v61;
    sub_1DB50A2A0();
    v44 = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {
      LODWORD(v62) = v44;

      v45 = v59;
      sub_1DB50A2D0();

      v46 = v60;
      v47 = v53;
      if ((*(v60 + 88))(v45, v53) == *MEMORY[0x1E69E93E8])
      {
        v48 = 0;
        v49 = "[Error] Interval already ended";
      }

      else
      {
        (*(v46 + 8))(v45, v47);
        v49 = "selfTime=%f";
        v48 = 1;
      }

      v50 = swift_slowAlloc();
      *v50 = 0;
      *(v50 + 1) = v48;
      *(v50 + 2) = 2048;
      os_unfair_lock_lock(v38);
      v51 = *(v37 + 16);
      os_unfair_lock_unlock(v38);
      *(v50 + 4) = v41 - v51;
      v43 = v61;
      v52 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v42, v62, v52, "MakeDependency", v49, v50, 0xCu);
      MEMORY[0x1E1288220](v50, -1, -1);
    }

    v54(v43, v57);
    os_unfair_lock_lock((v36 + 24));
    *(v36 + 16) = v41 + *(v36 + 16);
    os_unfair_lock_unlock((v36 + 24));
    *v58 = v68;
    swift_task_localValuePop();
    sub_1DB4CB894(v66, v64, 0, MEMORY[0x1E69E7CF8]);
  }
}

char *sub_1DB4BBEF4(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v62 = a3;
  v63 = a4;
  v6 = sub_1DB50A280();
  v60 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DB50A230();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - v15;
  v17 = *a1;
  if (*(a1 + 16))
  {

    return v17;
  }

  else
  {
    v54 = v6;
    v61 = v14;
    v67 = v4;
    v19 = qword_1EE30EAE8;
    v64 = *(a1 + 8);

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_1DB50A270();
    v21 = __swift_project_value_buffer(v20, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v56 = v21;
    v22 = sub_1DB50A250();
    v23 = sub_1DB50B070();
    if (sub_1DB50B0E0())
    {
      v24 = swift_slowAlloc();
      v65 = v9;
      v25 = v24;
      v26 = swift_slowAlloc();
      v58 = v17;
      v27 = v8;
      v28 = v26;
      v66.tv_sec = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1DB3D4EE8(0xD000000000000017, 0x80000001DB52F580, &v66.tv_sec);
      v29 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v22, v23, v29, "MakeDependency", "object=%s,type=lazy", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      v30 = v28;
      v8 = v27;
      v17 = v58;
      MEMORY[0x1E1288220](v30, -1, -1);
      v31 = v25;
      v9 = v65;
      MEMORY[0x1E1288220](v31, -1, -1);
    }

    (*(v9 + 16))(v12, v16, v8);
    sub_1DB50A2C0();
    swift_allocObject();
    v32 = sub_1DB50A2B0();
    v57 = v8;
    v58 = v32;
    v33 = *(v9 + 8);
    v65 = v9 + 8;
    v55 = v33;
    v33(v16, v8);
    static MonotonicTime.now.getter(&v66);
    tv_sec = v66.tv_sec;
    tv_nsec = v66.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v36 = v66.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v37 = swift_allocObject();
    *(v37 + 24) = 0;
    v38 = (v37 + 24);
    *(v37 + 16) = 0;
    v66.tv_sec = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v39 = v64;
    v40 = v67;
    v18 = sub_1DB4BA878(v17, v64, v62, v63);
    v67 = v40;
    sub_1DB2FEB54(v17, v39, 0);
    *a1 = v18;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;

    static MonotonicTime.now.getter(&v66);
    v41 = v66.tv_sec;
    v42 = v66.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v43 = v42 / *&qword_1EE30ED50 + v41 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v44 = sub_1DB50A250();
    v45 = v61;
    sub_1DB50A2A0();
    LODWORD(v63) = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {

      v46 = v59;
      sub_1DB50A2D0();

      v47 = v60;
      v48 = v54;
      if ((*(v60 + 88))(v46, v54) == *MEMORY[0x1E69E93E8])
      {
        v49 = 0;
        v62 = "[Error] Interval already ended";
      }

      else
      {
        (*(v47 + 8))(v46, v48);
        v62 = "selfTime=%f";
        v49 = 1;
      }

      v50 = swift_slowAlloc();
      *v50 = 0;
      *(v50 + 1) = v49;
      *(v50 + 2) = 2048;
      os_unfair_lock_lock(v38);
      v51 = *(v37 + 16);
      os_unfair_lock_unlock(v38);
      *(v50 + 4) = v43 - v51;
      v45 = v61;
      v52 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v44, v63, v52, "MakeDependency", v62, v50, 0xCu);
      MEMORY[0x1E1288220](v50, -1, -1);
    }

    v55(v45, v57);
    os_unfair_lock_lock((v36 + 24));
    *(v36 + 16) = v43 + *(v36 + 16);
    os_unfair_lock_unlock((v36 + 24));
    swift_task_localValuePop();

    sub_1DB2FEB54(v17, v64, 0);
  }

  return v18;
}

uint64_t sub_1DB4BC5A4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v67 = a4;
  v66 = a3;
  v63 = sub_1DB50A280();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB50A230();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - v17;
  result = sub_1DB30C4B8(a1, v72, &qword_1ECC46DB8, &qword_1DB521C20);
  if (v73)
  {
    v20 = v72[3];
    a5[2] = v72[2];
    a5[3] = v20;
    a5[4] = v72[4];
    v21 = v72[1];
    *a5 = v72[0];
    a5[1] = v21;
  }

  else
  {
    v64 = v12;
    v74 = v5;
    v68 = *(&v72[0] + 1);
    v58 = *&v72[0];
    if (qword_1EE30EAE8 != -1)
    {
      swift_once();
    }

    v22 = sub_1DB50A270();
    v23 = __swift_project_value_buffer(v22, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v60 = v23;
    v24 = sub_1DB50A250();
    v25 = sub_1DB50B070();
    v26 = sub_1DB50B0E0();
    v65 = v9;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v69 = v10;
      v28 = v27;
      v29 = swift_slowAlloc();
      v71[0].tv_sec = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DB3D4EE8(0x72756769666E6F43, 0xED00006E6F697461, &v71[0].tv_sec);
      v30 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v24, v25, v30, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      v31 = v29;
      v9 = v65;
      MEMORY[0x1E1288220](v31, -1, -1);
      v32 = v28;
      v10 = v69;
      MEMORY[0x1E1288220](v32, -1, -1);
    }

    (*(v10 + 16))(v15, v18, v9);
    sub_1DB50A2C0();
    swift_allocObject();
    sub_1DB50A2B0();
    v33 = *(v10 + 8);
    v69 = v10 + 8;
    v59 = v33;
    v33(v18, v9);
    static MonotonicTime.now.getter(v71);
    tv_sec = v71[0].tv_sec;
    tv_nsec = v71[0].tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v36 = v71[0].tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v37 = swift_allocObject();
    *(v37 + 24) = 0;
    v38 = (v37 + 24);
    *(v37 + 16) = 0;
    v71[0].tv_sec = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v39 = v74;
    sub_1DB4BA72C(v58, v68, v66, v67);
    v74 = v39;
    sub_1DB30623C(a1, &qword_1ECC46DB8, &qword_1DB521C20);
    sub_1DB400AF8(v71, a1);
    *(a1 + 80) = 1;
    static MonotonicTime.now.getter(&v70);
    v40 = v70.tv_sec;
    v41 = v70.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v42 = v41 / *&qword_1EE30ED50 + v40 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v43 = sub_1DB50A250();
    v44 = v64;
    sub_1DB50A2A0();
    v45 = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {
      LODWORD(v67) = v45;

      v46 = v61;
      sub_1DB50A2D0();

      v47 = v62;
      v48 = v63;
      if ((*(v62 + 88))(v46, v63) == *MEMORY[0x1E69E93E8])
      {
        v49 = 0;
        v50 = "[Error] Interval already ended";
      }

      else
      {
        (*(v47 + 8))(v46, v48);
        v50 = "selfTime=%f";
        v49 = 1;
      }

      v51 = swift_slowAlloc();
      *v51 = 0;
      *(v51 + 1) = v49;
      *(v51 + 2) = 2048;
      os_unfair_lock_lock(v38);
      v52 = *(v37 + 16);
      os_unfair_lock_unlock(v38);
      *(v51 + 4) = v42 - v52;
      v53 = v64;
      v54 = sub_1DB50A210();
      v55 = v50;
      v44 = v53;
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v43, v67, v54, "MakeDependency", v55, v51, 0xCu);
      MEMORY[0x1E1288220](v51, -1, -1);
    }

    v59(v44, v65);
    os_unfair_lock_lock((v36 + 24));
    *(v36 + 16) = v42 + *(v36 + 16);
    os_unfair_lock_unlock((v36 + 24));
    v56 = v71[3];
    a5[2] = v71[2];
    a5[3] = v56;
    a5[4] = v71[4];
    v57 = v71[1];
    *a5 = v71[0];
    a5[1] = v57;
    swift_task_localValuePop();
  }

  return result;
}

uint64_t sub_1DB4BCD2C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a3;
  v62 = a4;
  v8 = sub_1DB50A280();
  v60 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  sub_1DB30C4B8(a1, v68, &qword_1ECC46DC8, &qword_1DB521C38);
  if (v69)
  {
    return sub_1DB2FEA0C(v68, a5);
  }

  v59 = a5;
  v70 = v5;
  v64 = *(&v68[0] + 1);
  v55 = *&v68[0];
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v20 = sub_1DB50A270();
  v21 = __swift_project_value_buffer(v20, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v57 = v21;
  v22 = sub_1DB50A250();
  v23 = sub_1DB50B070();
  v24 = sub_1DB50B0E0();
  v54 = v8;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v58 = v11;
    v27 = v10;
    v28 = v26;
    v67[0].tv_sec = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_1DB3D4EE8(0xD000000000000011, 0x80000001DB52F440, &v67[0].tv_sec);
    v29 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v22, v23, v29, "MakeDependency", "object=%s,type=lazy", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v30 = v28;
    v10 = v27;
    v11 = v58;
    MEMORY[0x1E1288220](v30, -1, -1);
    MEMORY[0x1E1288220](v25, -1, -1);
  }

  (*(v11 + 16))(v15, v18, v10);
  sub_1DB50A2C0();
  swift_allocObject();
  sub_1DB50A2B0();
  v31 = *(v11 + 8);
  v58 = v10;
  v56 = v31;
  v31(v18, v10);
  static MonotonicTime.now.getter(v67);
  tv_sec = v67[0].tv_sec;
  tv_nsec = v67[0].tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v34 = v67[0].tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v35 = swift_allocObject();
  *(v35 + 24) = 0;
  v36 = (v35 + 24);
  *(v35 + 16) = 0;
  v67[0].tv_sec = v35;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v37 = v70;
  sub_1DB4BA72C(v55, v64, v61, v62);
  v70 = v37;
  sub_1DB30623C(a1, &qword_1ECC46DC8, &qword_1DB521C38);
  sub_1DB30BE90(v67, a1);
  *(a1 + 40) = 1;
  static MonotonicTime.now.getter(&v66);
  v38 = v66.tv_sec;
  v39 = v66.tv_nsec;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v40 = v39 / *&qword_1EE30ED50 + v38 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

  v41 = sub_1DB50A250();
  v42 = v65;
  sub_1DB50A2A0();
  LODWORD(v62) = sub_1DB50B060();

  v43 = sub_1DB50B0E0();
  v44 = v63;
  if (v43)
  {

    sub_1DB50A2D0();

    v45 = v60;
    v46 = v54;
    if ((*(v60 + 88))(v44, v54) == *MEMORY[0x1E69E93E8])
    {
      v47 = 0;
      v48 = "[Error] Interval already ended";
    }

    else
    {
      (*(v45 + 8))(v44, v46);
      v48 = "selfTime=%f";
      v47 = 1;
    }

    v49 = swift_slowAlloc();
    *v49 = 0;
    *(v49 + 1) = v47;
    *(v49 + 2) = 2048;
    os_unfair_lock_lock(v36);
    v50 = *(v35 + 16);
    os_unfair_lock_unlock(v36);
    *(v49 + 4) = v40 - v50;
    v51 = v65;
    v52 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v41, v62, v52, "MakeDependency", v48, v49, 0xCu);
    v53 = v49;
    v42 = v51;
    MEMORY[0x1E1288220](v53, -1, -1);
  }

  v56(v42, v58);
  os_unfair_lock_lock((v34 + 24));
  *(v34 + 16) = v40 + *(v34 + 16);
  os_unfair_lock_unlock((v34 + 24));
  sub_1DB2FEA0C(&v67[0].tv_sec, v59);
  swift_task_localValuePop();
}

char *sub_1DB4BD41C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v68 = a3;
  v69 = a4;
  v6 = sub_1DB50A280();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v58 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v58 - v16;
  v18 = *a1;
  if (*(a1 + 16))
  {
    return v18;
  }

  v64 = v4;
  v65 = v15;
  v60 = v7;
  v61 = v6;
  v20 = qword_1EE30EAE8;
  v70 = *(a1 + 8);
  v71 = v18;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = sub_1DB50A270();
  v22 = __swift_project_value_buffer(v21, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v63 = v22;
  v23 = sub_1DB50A250();
  v24 = sub_1DB50B070();
  v25 = sub_1DB50B0E0();
  v66 = v10;
  v59 = v9;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v73 = v11;
    v28 = v27;
    v72.tv_sec = v27;
    *v26 = 136315138;
    sub_1DB4679C8();
    v29 = sub_1DB50BEE0();
    v31 = sub_1DB3D4EE8(v29, v30, &v72.tv_sec);

    *(v26 + 4) = v31;
    v32 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v23, v24, v32, "MakeDependency", "object=%s,type=lazy", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v33 = v28;
    v11 = v73;
    v10 = v66;
    MEMORY[0x1E1288220](v33, -1, -1);
    MEMORY[0x1E1288220](v26, -1, -1);
  }

  (*(v11 + 16))(v67, v17, v10);
  sub_1DB50A2C0();
  swift_allocObject();
  sub_1DB50A2B0();
  v34 = *(v11 + 8);
  v73 = v11 + 8;
  v67 = v34;
  (v34)(v17, v10);
  static MonotonicTime.now.getter(&v72);
  tv_sec = v72.tv_sec;
  tv_nsec = v72.tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v36 = v72.tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  v38 = (v37 + 24);
  *(v37 + 16) = 0;
  v72.tv_sec = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v40 = v70;
  v39 = v71;
  v41 = v64;
  v42 = sub_1DB4BA878(v71, v70, v68, v69);
  v69 = v41;
  sub_1DB2FD040(v39, v40, 0);
  *a1 = v42;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v43 = v42;
  static MonotonicTime.now.getter(&v72);
  v44 = v72.tv_sec;
  v45 = v72.tv_nsec;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v46 = v45 / *&qword_1EE30ED50 + v44 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

  v47 = sub_1DB50A250();
  v48 = v65;
  sub_1DB50A2A0();
  v49 = sub_1DB50B060();

  if (sub_1DB50B0E0())
  {
    LODWORD(v64) = v49;
    v68 = v43;

    v50 = v59;
    sub_1DB50A2D0();

    v52 = v60;
    v51 = v61;
    if ((*(v60 + 88))(v50, v61) == *MEMORY[0x1E69E93E8])
    {
      v53 = 0;
      v54 = "[Error] Interval already ended";
    }

    else
    {
      (*(v52 + 8))(v50, v51);
      v54 = "selfTime=%f";
      v53 = 1;
    }

    v55 = swift_slowAlloc();
    *v55 = 0;
    *(v55 + 1) = v53;
    *(v55 + 2) = 2048;
    os_unfair_lock_lock(v38);
    v56 = *(v37 + 16);
    os_unfair_lock_unlock(v38);
    *(v55 + 4) = v46 - v56;
    v48 = v65;
    v57 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v47, v64, v57, "MakeDependency", v54, v55, 0xCu);
    MEMORY[0x1E1288220](v55, -1, -1);
    v43 = v68;
  }

  (v67)(v48, v66);
  os_unfair_lock_lock((v36 + 24));
  *(v36 + 16) = v46 + *(v36 + 16);
  os_unfair_lock_unlock((v36 + 24));
  swift_task_localValuePop();

  sub_1DB2FD040(v71, v70, 0);

  return v43;
}

uint64_t sub_1DB4BDAC4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v62 = a3;
  v63 = a4;
  v8 = sub_1DB50A280();
  v60 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v53 - v17;
  v66 = *a1;
  if (*(a1 + 16))
  {
    *a5 = v66;
    return swift_unknownObjectRetain();
  }

  else
  {
    v56 = v5;
    v53 = v8;
    v61 = v16;
    v58 = a5;
    v20 = qword_1EE30EAE8;
    v64 = *(a1 + 8);

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = sub_1DB50A270();
    v22 = __swift_project_value_buffer(v21, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v55 = v22;
    v23 = sub_1DB50A250();
    v24 = sub_1DB50B070();
    if (sub_1DB50B0E0())
    {
      v25 = swift_slowAlloc();
      v65 = v11;
      v26 = v25;
      v27 = v10;
      v28 = swift_slowAlloc();
      v67.tv_sec = v28;
      *v26 = 136315138;
      *(v26 + 4) = sub_1DB3D4EE8(6775106, 0xE300000000000000, &v67.tv_sec);
      v29 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v23, v24, v29, "MakeDependency", "object=%s,type=lazy", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      v30 = v28;
      v10 = v27;
      MEMORY[0x1E1288220](v30, -1, -1);
      v31 = v26;
      v11 = v65;
      MEMORY[0x1E1288220](v31, -1, -1);
    }

    (*(v11 + 16))(v14, v18, v10);
    sub_1DB50A2C0();
    swift_allocObject();
    sub_1DB50A2B0();
    v32 = *(v11 + 8);
    v57 = v10;
    v65 = v11 + 8;
    v54 = v32;
    v32(v18, v10);
    static MonotonicTime.now.getter(&v67);
    tv_sec = v67.tv_sec;
    tv_nsec = v67.tv_nsec;
    v35 = v56;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v36 = v67.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v37 = swift_allocObject();
    *(v37 + 24) = 0;
    v38 = (v37 + 24);
    *(v37 + 16) = 0;
    v67.tv_sec = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    sub_1DB4BA72C(v66, v64, v62, v63);
    v63 = v35;
    sub_1DB4CB894(*a1, *(a1 + 8), *(a1 + 16), MEMORY[0x1E69E7D60]);
    *a1 = v68;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    swift_unknownObjectRetain();
    static MonotonicTime.now.getter(&v67);
    v39 = v67.tv_sec;
    v40 = v67.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v41 = v40 / *&qword_1EE30ED50 + v39 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v42 = sub_1DB50A250();
    v43 = v61;
    sub_1DB50A2A0();
    v44 = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {
      LODWORD(v62) = v44;

      v45 = v59;
      sub_1DB50A2D0();

      v46 = v60;
      v47 = v53;
      if ((*(v60 + 88))(v45, v53) == *MEMORY[0x1E69E93E8])
      {
        v48 = 0;
        v49 = "[Error] Interval already ended";
      }

      else
      {
        (*(v46 + 8))(v45, v47);
        v49 = "selfTime=%f";
        v48 = 1;
      }

      v50 = swift_slowAlloc();
      *v50 = 0;
      *(v50 + 1) = v48;
      *(v50 + 2) = 2048;
      os_unfair_lock_lock(v38);
      v51 = *(v37 + 16);
      os_unfair_lock_unlock(v38);
      *(v50 + 4) = v41 - v51;
      v43 = v61;
      v52 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v42, v62, v52, "MakeDependency", v49, v50, 0xCu);
      MEMORY[0x1E1288220](v50, -1, -1);
    }

    v54(v43, v57);
    os_unfair_lock_lock((v36 + 24));
    *(v36 + 16) = v41 + *(v36 + 16);
    os_unfair_lock_unlock((v36 + 24));
    *v58 = v68;
    swift_task_localValuePop();
    sub_1DB4CB894(v66, v64, 0, MEMORY[0x1E69E7D60]);
  }
}

char *sub_1DB4BE190(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v62 = a3;
  v63 = a4;
  v6 = sub_1DB50A280();
  v60 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DB50A230();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - v15;
  v17 = *a1;
  if (*(a1 + 16))
  {

    return v17;
  }

  else
  {
    v54 = v6;
    v61 = v14;
    v67 = v4;
    v19 = qword_1EE30EAE8;
    v64 = *(a1 + 8);

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_1DB50A270();
    v21 = __swift_project_value_buffer(v20, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v56 = v21;
    v22 = sub_1DB50A250();
    v23 = sub_1DB50B070();
    if (sub_1DB50B0E0())
    {
      v24 = swift_slowAlloc();
      v65 = v9;
      v25 = v24;
      v26 = swift_slowAlloc();
      v58 = v17;
      v27 = v8;
      v28 = v26;
      v66.tv_sec = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1DB3D4EE8(0xD000000000000013, 0x80000001DB530CA0, &v66.tv_sec);
      v29 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v22, v23, v29, "MakeDependency", "object=%s,type=lazy", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      v30 = v28;
      v8 = v27;
      v17 = v58;
      MEMORY[0x1E1288220](v30, -1, -1);
      v31 = v25;
      v9 = v65;
      MEMORY[0x1E1288220](v31, -1, -1);
    }

    (*(v9 + 16))(v12, v16, v8);
    sub_1DB50A2C0();
    swift_allocObject();
    v32 = sub_1DB50A2B0();
    v57 = v8;
    v58 = v32;
    v33 = *(v9 + 8);
    v65 = v9 + 8;
    v55 = v33;
    v33(v16, v8);
    static MonotonicTime.now.getter(&v66);
    tv_sec = v66.tv_sec;
    tv_nsec = v66.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v36 = v66.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v37 = swift_allocObject();
    *(v37 + 24) = 0;
    v38 = (v37 + 24);
    *(v37 + 16) = 0;
    v66.tv_sec = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v39 = v64;
    v40 = v67;
    v18 = sub_1DB4BA878(v17, v64, v62, v63);
    v67 = v40;
    sub_1DB2FEB54(v17, v39, 0);
    *a1 = v18;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;

    static MonotonicTime.now.getter(&v66);
    v41 = v66.tv_sec;
    v42 = v66.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v43 = v42 / *&qword_1EE30ED50 + v41 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v44 = sub_1DB50A250();
    v45 = v61;
    sub_1DB50A2A0();
    LODWORD(v63) = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {

      v46 = v59;
      sub_1DB50A2D0();

      v47 = v60;
      v48 = v54;
      if ((*(v60 + 88))(v46, v54) == *MEMORY[0x1E69E93E8])
      {
        v49 = 0;
        v62 = "[Error] Interval already ended";
      }

      else
      {
        (*(v47 + 8))(v46, v48);
        v62 = "selfTime=%f";
        v49 = 1;
      }

      v50 = swift_slowAlloc();
      *v50 = 0;
      *(v50 + 1) = v49;
      *(v50 + 2) = 2048;
      os_unfair_lock_lock(v38);
      v51 = *(v37 + 16);
      os_unfair_lock_unlock(v38);
      *(v50 + 4) = v43 - v51;
      v45 = v61;
      v52 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v44, v63, v52, "MakeDependency", v62, v50, 0xCu);
      MEMORY[0x1E1288220](v50, -1, -1);
    }

    v55(v45, v57);
    os_unfair_lock_lock((v36 + 24));
    *(v36 + 16) = v43 + *(v36 + 16);
    os_unfair_lock_unlock((v36 + 24));
    swift_task_localValuePop();

    sub_1DB2FEB54(v17, v64, 0);
  }

  return v18;
}

uint64_t sub_1DB4BE840@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v67 = a3;
  v68 = a4;
  v8 = sub_1DB50A280();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v70 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for JetPackAsset(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v73 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1DB50A230();
  v76 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v62 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v62 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D88, &qword_1DB521BF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (v62 - v20);
  v69 = a1;
  sub_1DB30C4B8(a1, v62 - v20, &qword_1ECC46D88, &qword_1DB521BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1DB4CB7C4(v21, a5, type metadata accessor for JetPackAsset);
  }

  v66 = a5;
  v23 = v21[1];
  v63 = *v21;
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v24 = sub_1DB50A270();
  v25 = __swift_project_value_buffer(v24, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v62[1] = v25;
  v26 = sub_1DB50A250();
  v27 = sub_1DB50B070();
  v28 = sub_1DB50B0E0();
  v74 = v5;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v75.tv_sec = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1DB3D4EE8(0x416B63615074654ALL, 0xEC00000074657373, &v75.tv_sec);
    v31 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v26, v27, v31, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1E1288220](v30, -1, -1);
    MEMORY[0x1E1288220](v29, -1, -1);
  }

  v32 = v76;
  v33 = v72;
  (*(v76 + 16))(v15, v18, v72);
  sub_1DB50A2C0();
  swift_allocObject();
  sub_1DB50A2B0();
  v34 = *(v32 + 8);
  v76 = v32 + 8;
  v62[0] = v34;
  v34(v18, v33);
  static MonotonicTime.now.getter(&v75);
  tv_sec = v75.tv_sec;
  tv_nsec = v75.tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v37 = v75.tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  v39 = (v38 + 24);
  *(v38 + 16) = 0;
  v75.tv_sec = v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v40 = v73;
  v41 = v74;
  v42 = v63;
  v63 = v23;
  sub_1DB4BA72C(v42, v23, v67, v68);
  v74 = v41;
  v43 = v69;
  sub_1DB30623C(v69, &qword_1ECC46D88, &qword_1DB521BF0);
  sub_1DB4CB82C(v40, v43, type metadata accessor for JetPackAsset);
  swift_storeEnumTagMultiPayload();
  static MonotonicTime.now.getter(&v75);
  v44 = v75.tv_sec;
  v45 = v75.tv_nsec;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v46 = v45 / *&qword_1EE30ED50 + v44 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

  v47 = sub_1DB50A250();
  v48 = v71;
  sub_1DB50A2A0();
  v49 = sub_1DB50B060();

  v50 = sub_1DB50B0E0();
  v51 = v66;
  v52 = v70;
  if (v50)
  {

    sub_1DB50A2D0();

    v54 = v64;
    v53 = v65;
    if ((*(v64 + 88))(v52, v65) == *MEMORY[0x1E69E93E8])
    {
      v55 = 0;
      v56 = "[Error] Interval already ended";
    }

    else
    {
      (*(v54 + 8))(v52, v53);
      v56 = "selfTime=%f";
      v55 = 1;
    }

    v57 = swift_slowAlloc();
    *v57 = 0;
    *(v57 + 1) = v55;
    *(v57 + 2) = 2048;
    os_unfair_lock_lock(v39);
    v58 = *(v38 + 16);
    os_unfair_lock_unlock(v39);
    *(v57 + 4) = v46 - v58;
    v59 = v71;
    v60 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v47, v49, v60, "MakeDependency", v56, v57, 0xCu);
    v61 = v57;
    v48 = v59;
    MEMORY[0x1E1288220](v61, -1, -1);
    v51 = v66;
  }

  (v62[0])(v48, v72);
  os_unfair_lock_lock((v37 + 24));
  *(v37 + 16) = v46 + *(v37 + 16);
  os_unfair_lock_unlock((v37 + 24));
  sub_1DB4CB7C4(v73, v51, type metadata accessor for JetPackAsset);
  swift_task_localValuePop();
}

uint64_t sub_1DB4BEFE8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a4;
  v63 = a3;
  v60 = sub_1DB50A280();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB50A230();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  result = sub_1DB30C4B8(a1, v70, &qword_1ECC46DA8, &qword_1DB521C10);
  if (v72)
  {
    v20 = v70[1];
    *a5 = v70[0];
    *(a5 + 16) = v20;
    *(a5 + 32) = v70[2];
    *(a5 + 48) = v71;
  }

  else
  {
    v61 = v12;
    v73 = v5;
    v65 = *(&v70[0] + 1);
    v55 = *&v70[0];
    if (qword_1EE30EAE8 != -1)
    {
      swift_once();
    }

    v21 = sub_1DB50A270();
    v22 = __swift_project_value_buffer(v21, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v57 = v22;
    v23 = sub_1DB50A250();
    v24 = sub_1DB50B070();
    v25 = sub_1DB50B0E0();
    v62 = v9;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v66 = v10;
      v27 = v26;
      v28 = swift_slowAlloc();
      v68[0].tv_sec = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1DB3D4EE8(0xD000000000000011, 0x80000001DB52F150, &v68[0].tv_sec);
      v29 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v23, v24, v29, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      v30 = v28;
      v9 = v62;
      MEMORY[0x1E1288220](v30, -1, -1);
      v31 = v27;
      v10 = v66;
      MEMORY[0x1E1288220](v31, -1, -1);
    }

    (*(v10 + 16))(v15, v18, v9);
    sub_1DB50A2C0();
    swift_allocObject();
    sub_1DB50A2B0();
    v32 = *(v10 + 8);
    v66 = v10 + 8;
    v56 = v32;
    v32(v18, v9);
    static MonotonicTime.now.getter(v68);
    v33 = v68[0];
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    tv_sec = v68[0].tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v35 = swift_allocObject();
    *(v35 + 24) = 0;
    v36 = (v35 + 24);
    *(v35 + 16) = 0;
    v68[0].tv_sec = v35;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v37 = v73;
    sub_1DB4BA72C(v55, v65, v63, v64);
    v73 = v37;
    sub_1DB30623C(a1, &qword_1ECC46DA8, &qword_1DB521C10);
    sub_1DB3C17BC(v68, a1);
    *(a1 + 56) = 1;
    static MonotonicTime.now.getter(&v67);
    v38 = v67.tv_sec;
    tv_nsec = v67.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v40 = tv_nsec / *&qword_1EE30ED50 + v38 - (v33.tv_nsec / *&qword_1EE30ED50 + v33.tv_sec);

    v41 = sub_1DB50A250();
    v42 = v61;
    sub_1DB50A2A0();
    v43 = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {
      LODWORD(v64) = v43;

      v44 = v58;
      sub_1DB50A2D0();

      v45 = v59;
      v46 = v60;
      if ((*(v59 + 88))(v44, v60) == *MEMORY[0x1E69E93E8])
      {
        v47 = 0;
        v48 = "[Error] Interval already ended";
      }

      else
      {
        (*(v45 + 8))(v44, v46);
        v48 = "selfTime=%f";
        v47 = 1;
      }

      v49 = swift_slowAlloc();
      *v49 = 0;
      *(v49 + 1) = v47;
      *(v49 + 2) = 2048;
      os_unfair_lock_lock(v36);
      v50 = *(v35 + 16);
      os_unfair_lock_unlock(v36);
      *(v49 + 4) = v40 - v50;
      v51 = v61;
      v52 = sub_1DB50A210();
      v53 = v48;
      v42 = v51;
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v41, v64, v52, "MakeDependency", v53, v49, 0xCu);
      MEMORY[0x1E1288220](v49, -1, -1);
    }

    v56(v42, v62);
    os_unfair_lock_lock((tv_sec + 24));
    *(tv_sec + 16) = v40 + *(tv_sec + 16);
    os_unfair_lock_unlock((tv_sec + 24));
    v54 = v68[1];
    *a5 = v68[0];
    *(a5 + 16) = v54;
    *(a5 + 32) = v68[2];
    *(a5 + 48) = v69;
    swift_task_localValuePop();
  }

  return result;
}

uint64_t sub_1DB4BF724@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a4;
  v63 = a3;
  v60 = sub_1DB50A280();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB50A230();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  result = sub_1DB30C4B8(a1, v70, &qword_1ECC46D98, &qword_1DB521C00);
  if (v72)
  {
    v20 = v70[1];
    *a5 = v70[0];
    *(a5 + 16) = v20;
    *(a5 + 32) = v70[2];
    *(a5 + 48) = v71;
  }

  else
  {
    v61 = v12;
    v73 = v5;
    v65 = *(&v70[0] + 1);
    v55 = *&v70[0];
    if (qword_1EE30EAE8 != -1)
    {
      swift_once();
    }

    v21 = sub_1DB50A270();
    v22 = __swift_project_value_buffer(v21, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v57 = v22;
    v23 = sub_1DB50A250();
    v24 = sub_1DB50B070();
    v25 = sub_1DB50B0E0();
    v62 = v9;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v66 = v10;
      v27 = v26;
      v28 = swift_slowAlloc();
      v68[0].tv_sec = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1DB3D4EE8(0xD000000000000015, 0x80000001DB52F130, &v68[0].tv_sec);
      v29 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v23, v24, v29, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      v30 = v28;
      v9 = v62;
      MEMORY[0x1E1288220](v30, -1, -1);
      v31 = v27;
      v10 = v66;
      MEMORY[0x1E1288220](v31, -1, -1);
    }

    (*(v10 + 16))(v15, v18, v9);
    sub_1DB50A2C0();
    swift_allocObject();
    sub_1DB50A2B0();
    v32 = *(v10 + 8);
    v66 = v10 + 8;
    v56 = v32;
    v32(v18, v9);
    static MonotonicTime.now.getter(v68);
    v33 = v68[0];
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    tv_sec = v68[0].tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v35 = swift_allocObject();
    *(v35 + 24) = 0;
    v36 = (v35 + 24);
    *(v35 + 16) = 0;
    v68[0].tv_sec = v35;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v37 = v73;
    sub_1DB4BA72C(v55, v65, v63, v64);
    v73 = v37;
    sub_1DB30623C(a1, &qword_1ECC46D98, &qword_1DB521C00);
    sub_1DB3BEB60(v68, a1);
    *(a1 + 56) = 1;
    static MonotonicTime.now.getter(&v67);
    v38 = v67.tv_sec;
    tv_nsec = v67.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v40 = tv_nsec / *&qword_1EE30ED50 + v38 - (v33.tv_nsec / *&qword_1EE30ED50 + v33.tv_sec);

    v41 = sub_1DB50A250();
    v42 = v61;
    sub_1DB50A2A0();
    v43 = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {
      LODWORD(v64) = v43;

      v44 = v58;
      sub_1DB50A2D0();

      v45 = v59;
      v46 = v60;
      if ((*(v59 + 88))(v44, v60) == *MEMORY[0x1E69E93E8])
      {
        v47 = 0;
        v48 = "[Error] Interval already ended";
      }

      else
      {
        (*(v45 + 8))(v44, v46);
        v48 = "selfTime=%f";
        v47 = 1;
      }

      v49 = swift_slowAlloc();
      *v49 = 0;
      *(v49 + 1) = v47;
      *(v49 + 2) = 2048;
      os_unfair_lock_lock(v36);
      v50 = *(v35 + 16);
      os_unfair_lock_unlock(v36);
      *(v49 + 4) = v40 - v50;
      v51 = v61;
      v52 = sub_1DB50A210();
      v53 = v48;
      v42 = v51;
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v41, v64, v52, "MakeDependency", v53, v49, 0xCu);
      MEMORY[0x1E1288220](v49, -1, -1);
    }

    v56(v42, v62);
    os_unfair_lock_lock((tv_sec + 24));
    *(tv_sec + 16) = v40 + *(tv_sec + 16);
    os_unfair_lock_unlock((tv_sec + 24));
    v54 = v68[1];
    *a5 = v68[0];
    *(a5 + 16) = v54;
    *(a5 + 32) = v68[2];
    *(a5 + 48) = v69;
    swift_task_localValuePop();
  }

  return result;
}

uint64_t sub_1DB4BFE60@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a3;
  v62 = a4;
  v8 = sub_1DB50A280();
  v60 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  sub_1DB30C4B8(a1, v68, &qword_1ECC46D78, &qword_1DB521BE0);
  if (v69)
  {
    return sub_1DB2FEA0C(v68, a5);
  }

  v59 = a5;
  v70 = v5;
  v64 = *(&v68[0] + 1);
  v55 = *&v68[0];
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v20 = sub_1DB50A270();
  v21 = __swift_project_value_buffer(v20, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v57 = v21;
  v22 = sub_1DB50A250();
  v23 = sub_1DB50B070();
  v24 = sub_1DB50B0E0();
  v54 = v8;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v58 = v11;
    v27 = v10;
    v28 = v26;
    v67[0].tv_sec = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_1DB3D4EE8(0xD000000000000010, 0x80000001DB52CB00, &v67[0].tv_sec);
    v29 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v22, v23, v29, "MakeDependency", "object=%s,type=lazy", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v30 = v28;
    v10 = v27;
    v11 = v58;
    MEMORY[0x1E1288220](v30, -1, -1);
    MEMORY[0x1E1288220](v25, -1, -1);
  }

  (*(v11 + 16))(v15, v18, v10);
  sub_1DB50A2C0();
  swift_allocObject();
  sub_1DB50A2B0();
  v31 = *(v11 + 8);
  v58 = v10;
  v56 = v31;
  v31(v18, v10);
  static MonotonicTime.now.getter(v67);
  tv_sec = v67[0].tv_sec;
  tv_nsec = v67[0].tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v34 = v67[0].tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v35 = swift_allocObject();
  *(v35 + 24) = 0;
  v36 = (v35 + 24);
  *(v35 + 16) = 0;
  v67[0].tv_sec = v35;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v37 = v70;
  sub_1DB4BA72C(v55, v64, v61, v62);
  v70 = v37;
  sub_1DB30623C(a1, &qword_1ECC46D78, &qword_1DB521BE0);
  sub_1DB30BE90(v67, a1);
  *(a1 + 40) = 1;
  static MonotonicTime.now.getter(&v66);
  v38 = v66.tv_sec;
  v39 = v66.tv_nsec;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v40 = v39 / *&qword_1EE30ED50 + v38 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

  v41 = sub_1DB50A250();
  v42 = v65;
  sub_1DB50A2A0();
  LODWORD(v62) = sub_1DB50B060();

  v43 = sub_1DB50B0E0();
  v44 = v63;
  if (v43)
  {

    sub_1DB50A2D0();

    v45 = v60;
    v46 = v54;
    if ((*(v60 + 88))(v44, v54) == *MEMORY[0x1E69E93E8])
    {
      v47 = 0;
      v48 = "[Error] Interval already ended";
    }

    else
    {
      (*(v45 + 8))(v44, v46);
      v48 = "selfTime=%f";
      v47 = 1;
    }

    v49 = swift_slowAlloc();
    *v49 = 0;
    *(v49 + 1) = v47;
    *(v49 + 2) = 2048;
    os_unfair_lock_lock(v36);
    v50 = *(v35 + 16);
    os_unfair_lock_unlock(v36);
    *(v49 + 4) = v40 - v50;
    v51 = v65;
    v52 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v41, v62, v52, "MakeDependency", v48, v49, 0xCu);
    v53 = v49;
    v42 = v51;
    MEMORY[0x1E1288220](v53, -1, -1);
  }

  v56(v42, v58);
  os_unfair_lock_lock((v34 + 24));
  *(v34 + 16) = v40 + *(v34 + 16);
  os_unfair_lock_unlock((v34 + 24));
  sub_1DB2FEA0C(&v67[0].tv_sec, v59);
  swift_task_localValuePop();
}

uint64_t sub_1DB4C0550@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v62 = a3;
  v63 = a4;
  v8 = sub_1DB50A280();
  v60 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v53 - v17;
  v66 = *a1;
  if (*(a1 + 16))
  {
    *a5 = v66;
  }

  else
  {
    v56 = v5;
    v53 = v8;
    v61 = v16;
    v58 = a5;
    v20 = qword_1EE30EAE8;
    v64 = *(a1 + 8);

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = sub_1DB50A270();
    v22 = __swift_project_value_buffer(v21, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v55 = v22;
    v23 = sub_1DB50A250();
    v24 = sub_1DB50B070();
    if (sub_1DB50B0E0())
    {
      v25 = swift_slowAlloc();
      v65 = v11;
      v26 = v25;
      v27 = v10;
      v28 = swift_slowAlloc();
      v67.tv_sec = v28;
      *v26 = 136315138;
      *(v26 + 4) = sub_1DB3D4EE8(0x746E6F434E4F534ALL, 0xEB00000000747865, &v67.tv_sec);
      v29 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v23, v24, v29, "MakeDependency", "object=%s,type=lazy", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      v30 = v28;
      v10 = v27;
      MEMORY[0x1E1288220](v30, -1, -1);
      v31 = v26;
      v11 = v65;
      MEMORY[0x1E1288220](v31, -1, -1);
    }

    (*(v11 + 16))(v14, v18, v10);
    sub_1DB50A2C0();
    swift_allocObject();
    sub_1DB50A2B0();
    v32 = *(v11 + 8);
    v57 = v10;
    v65 = v11 + 8;
    v54 = v32;
    v32(v18, v10);
    static MonotonicTime.now.getter(&v67);
    tv_sec = v67.tv_sec;
    tv_nsec = v67.tv_nsec;
    v35 = v56;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v36 = v67.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v37 = swift_allocObject();
    *(v37 + 24) = 0;
    v38 = (v37 + 24);
    *(v37 + 16) = 0;
    v67.tv_sec = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    sub_1DB4BA72C(v66, v64, v62, v63);
    v63 = v35;
    sub_1DB4CB894(*a1, *(a1 + 8), *(a1 + 16), MEMORY[0x1E69E7CF8]);
    *a1 = v68;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;

    static MonotonicTime.now.getter(&v67);
    v39 = v67.tv_sec;
    v40 = v67.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v41 = v40 / *&qword_1EE30ED50 + v39 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v42 = sub_1DB50A250();
    v43 = v61;
    sub_1DB50A2A0();
    v44 = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {
      LODWORD(v62) = v44;

      v45 = v59;
      sub_1DB50A2D0();

      v46 = v60;
      v47 = v53;
      if ((*(v60 + 88))(v45, v53) == *MEMORY[0x1E69E93E8])
      {
        v48 = 0;
        v49 = "[Error] Interval already ended";
      }

      else
      {
        (*(v46 + 8))(v45, v47);
        v49 = "selfTime=%f";
        v48 = 1;
      }

      v50 = swift_slowAlloc();
      *v50 = 0;
      *(v50 + 1) = v48;
      *(v50 + 2) = 2048;
      os_unfair_lock_lock(v38);
      v51 = *(v37 + 16);
      os_unfair_lock_unlock(v38);
      *(v50 + 4) = v41 - v51;
      v43 = v61;
      v52 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v42, v62, v52, "MakeDependency", v49, v50, 0xCu);
      MEMORY[0x1E1288220](v50, -1, -1);
    }

    v54(v43, v57);
    os_unfair_lock_lock((v36 + 24));
    *(v36 + 16) = v41 + *(v36 + 16);
    os_unfair_lock_unlock((v36 + 24));
    *v58 = v68;
    swift_task_localValuePop();
    sub_1DB4CB894(v66, v64, 0, MEMORY[0x1E69E7CF8]);
  }
}

uint64_t sub_1DB4C0C2C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a3;
  v65 = a4;
  v8 = sub_1DB50A280();
  v61 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v56 - v17;
  v20 = *a1;
  result = *(a1 + 8);
  if (*(a1 + 16))
  {
    *a5 = v20;
    *(a5 + 8) = result & 1;
  }

  else
  {
    v56 = v8;
    v62 = v16;
    v66 = v20;
    v67 = result;
    v71 = v5;
    v21 = qword_1EE30EAE8;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = sub_1DB50A270();
    v23 = __swift_project_value_buffer(v22, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v58 = v23;
    v24 = sub_1DB50A250();
    v25 = sub_1DB50B070();
    v26 = sub_1DB50B0E0();
    v59 = a5;
    v63 = v10;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v70.tv_sec = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1DB3D4EE8(0xD000000000000015, 0x80000001DB52CAE0, &v70.tv_sec);
      v29 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v24, v25, v29, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1E1288220](v28, -1, -1);
      v30 = v27;
      v10 = v63;
      MEMORY[0x1E1288220](v30, -1, -1);
    }

    (*(v11 + 16))(v14, v18, v10);
    sub_1DB50A2C0();
    swift_allocObject();
    sub_1DB50A2B0();
    v57 = *(v11 + 8);
    v57(v18, v10);
    static MonotonicTime.now.getter(&v70);
    tv_sec = v70.tv_sec;
    tv_nsec = v70.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v33 = v70.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v34 = swift_allocObject();
    *(v34 + 24) = 0;
    v35 = (v34 + 24);
    *(v34 + 16) = 0;
    v70.tv_sec = v34;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v36 = v71;
    sub_1DB4BA72C(v66, v67, v64, v65);
    v71 = v36;
    sub_1DB2FD030(*a1, *(a1 + 8), *(a1 + 16));
    v37 = v69;
    *a1 = v68;
    *(a1 + 8) = v37;
    *(a1 + 16) = 1;
    static MonotonicTime.now.getter(&v70);
    v38 = v70.tv_sec;
    v39 = v70.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v40 = v39 / *&qword_1EE30ED50 + v38 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v41 = sub_1DB50A250();
    v42 = v62;
    sub_1DB50A2A0();
    v43 = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {
      LODWORD(v65) = v43;

      v44 = v60;
      sub_1DB50A2D0();

      v45 = v61;
      v46 = v56;
      if ((*(v61 + 88))(v44, v56) == *MEMORY[0x1E69E93E8])
      {
        v47 = 0;
        v48 = "[Error] Interval already ended";
      }

      else
      {
        (*(v45 + 8))(v44, v46);
        v48 = "selfTime=%f";
        v47 = 1;
      }

      v49 = swift_slowAlloc();
      *v49 = 0;
      *(v49 + 1) = v47;
      *(v49 + 2) = 2048;
      os_unfair_lock_lock(v35);
      v50 = *(v34 + 16);
      os_unfair_lock_unlock(v35);
      *(v49 + 4) = v40 - v50;
      v51 = v62;
      v52 = sub_1DB50A210();
      v53 = v48;
      v42 = v51;
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v41, v65, v52, "MakeDependency", v53, v49, 0xCu);
      MEMORY[0x1E1288220](v49, -1, -1);
    }

    v57(v42, v63);
    os_unfair_lock_lock((v33 + 24));
    *(v33 + 16) = v40 + *(v33 + 16);
    os_unfair_lock_unlock((v33 + 24));
    v54 = v69;
    v55 = v59;
    *v59 = v68;
    *(v55 + 8) = v54;
    swift_task_localValuePop();
    sub_1DB2FD030(v66, v67, 0);
  }

  return result;
}

uint64_t sub_1DB4C12BC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v67 = a3;
  v68 = a4;
  v8 = sub_1DB50A280();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v70 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PageIntentInstrumentation(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v73 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1DB50A230();
  v76 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v62 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v62 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D20, &qword_1DB521B80);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (v62 - v20);
  v69 = a1;
  sub_1DB30C4B8(a1, v62 - v20, &qword_1ECC46D20, &qword_1DB521B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1DB4CB7C4(v21, a5, type metadata accessor for PageIntentInstrumentation);
  }

  v66 = a5;
  v23 = v21[1];
  v63 = *v21;
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v24 = sub_1DB50A270();
  v25 = __swift_project_value_buffer(v24, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v62[1] = v25;
  v26 = sub_1DB50A250();
  v27 = sub_1DB50B070();
  v28 = sub_1DB50B0E0();
  v74 = v5;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v75.tv_sec = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1DB3D4EE8(0xD000000000000019, 0x80000001DB52CAC0, &v75.tv_sec);
    v31 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v26, v27, v31, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1E1288220](v30, -1, -1);
    MEMORY[0x1E1288220](v29, -1, -1);
  }

  v32 = v76;
  v33 = v72;
  (*(v76 + 16))(v15, v18, v72);
  sub_1DB50A2C0();
  swift_allocObject();
  sub_1DB50A2B0();
  v34 = *(v32 + 8);
  v76 = v32 + 8;
  v62[0] = v34;
  v34(v18, v33);
  static MonotonicTime.now.getter(&v75);
  tv_sec = v75.tv_sec;
  tv_nsec = v75.tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v37 = v75.tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  v39 = (v38 + 24);
  *(v38 + 16) = 0;
  v75.tv_sec = v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v40 = v73;
  v41 = v74;
  v42 = v63;
  v63 = v23;
  sub_1DB4BA72C(v42, v23, v67, v68);
  v74 = v41;
  v43 = v69;
  sub_1DB30623C(v69, &qword_1ECC46D20, &qword_1DB521B80);
  sub_1DB4CB82C(v40, v43, type metadata accessor for PageIntentInstrumentation);
  swift_storeEnumTagMultiPayload();
  static MonotonicTime.now.getter(&v75);
  v44 = v75.tv_sec;
  v45 = v75.tv_nsec;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v46 = v45 / *&qword_1EE30ED50 + v44 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

  v47 = sub_1DB50A250();
  v48 = v71;
  sub_1DB50A2A0();
  v49 = sub_1DB50B060();

  v50 = sub_1DB50B0E0();
  v51 = v66;
  v52 = v70;
  if (v50)
  {

    sub_1DB50A2D0();

    v54 = v64;
    v53 = v65;
    if ((*(v64 + 88))(v52, v65) == *MEMORY[0x1E69E93E8])
    {
      v55 = 0;
      v56 = "[Error] Interval already ended";
    }

    else
    {
      (*(v54 + 8))(v52, v53);
      v56 = "selfTime=%f";
      v55 = 1;
    }

    v57 = swift_slowAlloc();
    *v57 = 0;
    *(v57 + 1) = v55;
    *(v57 + 2) = 2048;
    os_unfair_lock_lock(v39);
    v58 = *(v38 + 16);
    os_unfair_lock_unlock(v39);
    *(v57 + 4) = v46 - v58;
    v59 = v71;
    v60 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v47, v49, v60, "MakeDependency", v56, v57, 0xCu);
    v61 = v57;
    v48 = v59;
    MEMORY[0x1E1288220](v61, -1, -1);
    v51 = v66;
  }

  (v62[0])(v48, v72);
  os_unfair_lock_lock((v37 + 24));
  *(v37 + 16) = v46 + *(v37 + 16);
  os_unfair_lock_unlock((v37 + 24));
  sub_1DB4CB7C4(v73, v51, type metadata accessor for PageIntentInstrumentation);
  swift_task_localValuePop();
}

uint64_t sub_1DB4C1A7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (*(a1 + 16))
  {
    v8 = sub_1DB30EE50(a2);
    if (v9)
    {
      sub_1DB300B14(*(a1 + 56) + 32 * v8, v18);
      sub_1DB30623C(v18, &qword_1ECC426B0, &qword_1DB50EEB0);
      v10 = 1;
      return v10 & 1;
    }
  }

  memset(v18, 0, sizeof(v18));
  sub_1DB30623C(v18, &qword_1ECC426B0, &qword_1DB50EEB0);
  if (qword_1EE30D3A8 != -1)
  {
    swift_once();
  }

  v11 = off_1EE30D3B0;
  v12 = *(off_1EE30D3B0 + 2);

  if (v12)
  {
    v14 = 0;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      result = swift_dynamicCast();
      if (result)
      {
        if (*&v18[0])
        {
          break;
        }
      }

      if (v12 == ++v14)
      {
        goto LABEL_12;
      }
    }

    v12 = v14;
  }

LABEL_12:
  v15 = v11[2];
  if (v12 == v15)
  {

    v10 = 0;
    return v10 & 1;
  }

  if (v12 >= v15)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    result = swift_dynamicCast();
    if (result)
    {
      v16 = *&v18[0];
      if (*&v18[0])
      {
        v17 = *(&v18[0] + 1);

        v10 = sub_1DB37D184(v16, a1, a2, v16, v17);
        return v10 & 1;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4C1C98@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1DB30EE50(&type metadata for AsyncObjectGraphMetrics), (v5 & 1) != 0))
  {
    sub_1DB300B14(*(a1 + 56) + 32 * v4, v13);
    sub_1DB30C200(v13, &v14);
    sub_1DB300B14(&v14, v13);
    if (swift_dynamicCast())
    {
      *a2 = v12;
LABEL_25:
      __swift_destroy_boxed_opaque_existential_0(v13);
      return __swift_destroy_boxed_opaque_existential_0(&v14);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CE8, &qword_1DB521B40);
    if (swift_dynamicCast())
    {
      sub_1DB4BB2F0(&type metadata for AsyncObjectGraphMetrics, sub_1DB4BB81C);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF0, &qword_1DB521B48);
    if (swift_dynamicCast())
    {

      sub_1DB3D5598("JetCore/DependencyDictionary.swift", 34, 2, 231, v12);

      sub_1DB4C3E64(&type metadata for AsyncObjectGraphMetrics, sub_1DB4C436C);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44108, &qword_1DB521B50);
    if (swift_dynamicCast())
    {
      sub_1DB3D5E60("JetCore/DependencyDictionary.swift", 34, 2, 239, v12);
      swift_unknownObjectRelease();
      *a2 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v6 = off_1EE30D3B0;
    v7 = *(off_1EE30D3B0 + 2);
    v8 = off_1EE30D3B0 + 32;

    if (v7)
    {
      v9 = 0;
      while (1)
      {
        v13[0] = *&v8[16 * v9];
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CE0, &qword_1DB521B38);
        if (swift_dynamicCast())
        {
          if (v14)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          goto LABEL_13;
        }
      }

      v7 = v9;
    }

LABEL_13:
    v10 = v6[2];
    if (v7 == v10)
    {

      *a2 = 0;
      return result;
    }

    if (v7 >= v10)
    {
      __break(1u);
    }

    else
    {
      v13[0] = *&v8[16 * v7];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CE0, &qword_1DB521B38);
      if ((swift_dynamicCast() & 1) != 0 && v14)
      {

        return sub_1DB37E0DC(a1, v14, *(&v14 + 1), a2);
      }
    }

    __break(1u);
  }

  sub_1DB50B320();
  MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1(&v14, v15);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CA10);
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

uint64_t sub_1DB4C2138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CD0, &qword_1DB521A78);
  if (*(a1 + 16) && (v5 = sub_1DB30EE50(v4), (v6 & 1) != 0))
  {
    sub_1DB300B14(*(a1 + 56) + 32 * v5, v14);
    sub_1DB30C200(v14, &v16);
    sub_1DB300B14(&v16, v15);
    if (swift_dynamicCast())
    {
      sub_1DB2FEA0C(v14, a2);
LABEL_25:
      __swift_destroy_boxed_opaque_existential_0(v15);
      return __swift_destroy_boxed_opaque_existential_0(&v16);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D68, &qword_1DB521BD0);
    if (swift_dynamicCast())
    {
      sub_1DB4BB150(&qword_1ECC46CD0, &qword_1DB521A78, sub_1DB4BFE60);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D70, &qword_1DB521BD8);
    if (swift_dynamicCast())
    {
      v13 = *&v14[0];

      sub_1DB3D6E80("JetCore/DependencyDictionary.swift", 34, 2, 231, v13);

      sub_1DB4C3CC8(&qword_1ECC46CD0, &qword_1DB521A78, sub_1DB4C8CEC);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44108, &qword_1DB521B50);
    if (swift_dynamicCast())
    {
      sub_1DB3D774C("JetCore/DependencyDictionary.swift", 34, 2, 239, *&v14[0]);
      swift_unknownObjectRelease();
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v7 = off_1EE30D3B0;
    v8 = *(off_1EE30D3B0 + 2);
    v9 = off_1EE30D3B0 + 32;

    if (v8)
    {
      v10 = 0;
      while (1)
      {
        v16 = *&v9[16 * v10];
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D60, &qword_1DB521BC8);
        if (swift_dynamicCast())
        {
          if (*&v14[0])
          {
            break;
          }
        }

        if (v8 == ++v10)
        {
          goto LABEL_13;
        }
      }

      v8 = v10;
    }

LABEL_13:
    v11 = v7[2];
    if (v8 == v11)
    {

      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (v8 >= v11)
    {
      __break(1u);
    }

    else
    {
      v16 = *&v9[16 * v8];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D60, &qword_1DB521BC8);
      if ((swift_dynamicCast() & 1) != 0 && *&v14[0])
      {

        return sub_1DB37E0DC(a1, *&v14[0], *(&v14[0] + 1), a2);
      }
    }

    __break(1u);
  }

  *&v14[0] = 0;
  *(&v14[0] + 1) = 0xE000000000000000;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1(&v16, v17);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52CB00);
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

uint64_t sub_1DB4C2608@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1DB30EE50(&type metadata for JSONContext), (v5 & 1) != 0))
  {
    sub_1DB300B14(*(a1 + 56) + 32 * v4, v13);
    sub_1DB30C200(v13, &v14);
    sub_1DB300B14(&v14, v13);
    if (swift_dynamicCast())
    {
      *a2 = v12;
LABEL_25:
      __swift_destroy_boxed_opaque_existential_0(v13);
      return __swift_destroy_boxed_opaque_existential_0(&v14);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D50, &qword_1DB521BB8);
    if (swift_dynamicCast())
    {
      sub_1DB4BB2F0(&type metadata for JSONContext, sub_1DB4C0550);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D58, &qword_1DB521BC0);
    if (swift_dynamicCast())
    {

      sub_1DB3D7FF0("JetCore/DependencyDictionary.swift", 34, 2, 231, v12);

      sub_1DB4C3E64(&type metadata for JSONContext, sub_1DB4C9410);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44108, &qword_1DB521B50);
    if (swift_dynamicCast())
    {
      sub_1DB3D88C0("JetCore/DependencyDictionary.swift", 34, 2, 239, v12);
      swift_unknownObjectRelease();
      *a2 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v6 = off_1EE30D3B0;
    v7 = *(off_1EE30D3B0 + 2);
    v8 = off_1EE30D3B0 + 32;

    if (v7)
    {
      v9 = 0;
      while (1)
      {
        v13[0] = *&v8[16 * v9];
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D48, &qword_1DB521BB0);
        if (swift_dynamicCast())
        {
          if (v14)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          goto LABEL_13;
        }
      }

      v7 = v9;
    }

LABEL_13:
    v10 = v6[2];
    if (v7 == v10)
    {

      *a2 = 0;
      return result;
    }

    if (v7 >= v10)
    {
      __break(1u);
    }

    else
    {
      v13[0] = *&v8[16 * v7];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D48, &qword_1DB521BB0);
      if ((swift_dynamicCast() & 1) != 0 && v14)
      {

        return sub_1DB37E0DC(a1, v14, *(&v14 + 1), a2);
      }
    }

    __break(1u);
  }

  sub_1DB50B320();
  MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1(&v14, v15);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1E1285C70](0x746E6F434E4F534ALL, 0xEB00000000747865);
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

uint64_t sub_1DB4C2AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1DB30EE50(&type metadata for IntentDispatchTimeout), (v5 & 1) != 0))
  {
    sub_1DB300B14(*(a1 + 56) + 32 * v4, v14);
    sub_1DB30C200(v14, &v15);
    sub_1DB300B14(&v15, v14);
    if (swift_dynamicCast())
    {
      *a2 = v12;
      *(a2 + 8) = v13;
LABEL_21:
      *(a2 + 9) = 0;
LABEL_26:
      __swift_destroy_boxed_opaque_existential_0(v14);
      return __swift_destroy_boxed_opaque_existential_0(&v15);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D38, &qword_1DB521BA0);
    if (swift_dynamicCast())
    {
      sub_1DB4BB48C(a2);

      goto LABEL_21;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D40, &qword_1DB521BA8);
    if (swift_dynamicCast())
    {

      sub_1DB3D9158("JetCore/DependencyDictionary.swift", 34, 2, 231, v12);

      sub_1DB4C3FF4(a2);
      *(a2 + 9) = 0;

      goto LABEL_26;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44108, &qword_1DB521B50);
    if (swift_dynamicCast())
    {
      sub_1DB3D9A20("JetCore/DependencyDictionary.swift", 34, 2, 239, v12);
      swift_unknownObjectRelease();
      *a2 = 0;
      *(a2 + 8) = 256;
      goto LABEL_26;
    }
  }

  else
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v6 = off_1EE30D3B0;
    v7 = *(off_1EE30D3B0 + 2);
    v8 = off_1EE30D3B0 + 32;

    if (v7)
    {
      v9 = 0;
      while (1)
      {
        v14[0] = *&v8[16 * v9];
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D30, &qword_1DB521B98);
        if (swift_dynamicCast())
        {
          if (v15)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          goto LABEL_13;
        }
      }

      v7 = v9;
    }

LABEL_13:
    v10 = v6[2];
    if (v7 == v10)
    {

      *a2 = 0;
      *(a2 + 8) = 256;
      return result;
    }

    if (v7 >= v10)
    {
      __break(1u);
    }

    else
    {
      v14[0] = *&v8[16 * v7];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D30, &qword_1DB521B98);
      if ((swift_dynamicCast() & 1) != 0 && v15)
      {

        return sub_1DB37E0DC(a1, v15, *(&v15 + 1), a2);
      }
    }

    __break(1u);
  }

  sub_1DB50B320();
  MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1(&v15, v16);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1E1285C70](0xD000000000000015, 0x80000001DB52CAE0);
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

uint64_t sub_1DB4C2F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PageIntentInstrumentation(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v8 = sub_1DB30EE50(v4), (v9 & 1) != 0))
  {
    sub_1DB300B14(*(a1 + 56) + 32 * v8, v24);
    sub_1DB30C200(v24, &v25);
    sub_1DB300B14(&v25, v24);
    if (swift_dynamicCast())
    {
      sub_1DB4CB7C4(v7, a2, type metadata accessor for PageIntentInstrumentation);
LABEL_22:
      (*(v5 + 56))(a2, 0, 1, v4);
LABEL_27:
      __swift_destroy_boxed_opaque_existential_0(v24);
      return __swift_destroy_boxed_opaque_existential_0(&v25);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D10, &qword_1DB521B70);
    if (swift_dynamicCast())
    {
      sub_1DB4BB620(type metadata accessor for PageIntentInstrumentation, sub_1DB4C12BC);

      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D18, &qword_1DB521B78);
    if (swift_dynamicCast())
    {
      v18 = v22;

      sub_1DB3DA2B0("JetCore/DependencyDictionary.swift", 34, 2, 231, v18);

      sub_1DB4C4178(type metadata accessor for PageIntentInstrumentation, sub_1DB4CA23C);
      (*(v5 + 56))(a2, 0, 1, v4);

      goto LABEL_27;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44108, &qword_1DB521B50);
    if (swift_dynamicCast())
    {
      sub_1DB3DAB78("JetCore/DependencyDictionary.swift", 34, 2, 239, v22);
      swift_unknownObjectRelease();
      (*(v5 + 56))(a2, 1, 1, v4);
      goto LABEL_27;
    }
  }

  else
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v10 = off_1EE30D3B0;
    v11 = *(off_1EE30D3B0 + 2);
    v12 = off_1EE30D3B0 + 32;

    if (v11)
    {
      v19 = v5;
      v20 = a2;
      v21 = v4;
      v13 = 0;
      while (1)
      {
        v24[0] = *&v12[16 * v13];
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D08, &qword_1DB521B68);
        if (swift_dynamicCast())
        {
          if (v25)
          {
            break;
          }
        }

        if (v11 == ++v13)
        {
          goto LABEL_13;
        }
      }

      v11 = v13;
LABEL_13:
      a2 = v20;
      v4 = v21;
      v5 = v19;
    }

    v14 = v10[2];
    if (v11 == v14)
    {

      return (*(v5 + 56))(a2, 1, 1, v4);
    }

    if (v11 >= v14)
    {
      __break(1u);
    }

    else
    {
      v24[0] = *&v12[16 * v11];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D08, &qword_1DB521B68);
      if (swift_dynamicCast())
      {
        v16 = v25;
        if (v25)
        {
          v17 = *(&v25 + 1);

          return sub_1DB37E0DC(a1, v16, v17, a2);
        }
      }
    }

    __break(1u);
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1(&v25, v26);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52CAC0);
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

void sub_1DB4C3524(timespec *a1@<X8>)
{
  v6.i64[1] = &type metadata for JetPackAssetSession.Configuration;
  sub_1DB330884(&v6);
  if (v2)
  {
    v6.i64[0] = v2;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      sub_1DB330A34();
      sub_1DB50BC80();
    }

    else
    {

      v6.i64[0] = 0;
      v6.i64[1] = 0xE000000000000000;
      MEMORY[0x1E1285C70](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1DB50BA00();
    }

    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    os_unfair_lock_lock(v4 + 25);
    sub_1DB4C5190(&v4[4], v1, COERCE_DOUBLE(&type metadata for JetPackAssetSession.Configuration), a1);
    os_unfair_lock_unlock(v4 + 25);
  }
}

void sub_1DB4C3724(uint64_t (**a1)(uint64_t)@<X8>)
{
  v6.i64[1] = &type metadata for Bag;
  sub_1DB330884(&v6);
  if (v2)
  {
    v6.i64[0] = v2;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      sub_1DB330A34();
      sub_1DB50BC80();
    }

    else
    {

      v6.i64[0] = 0;
      v6.i64[1] = 0xE000000000000000;
      MEMORY[0x1E1285C70](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1DB50BA00();
    }

    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    os_unfair_lock_lock((v4 + 36));
    sub_1DB4C67B4((v4 + 16), v1, COERCE_DOUBLE(&type metadata for Bag), a1);
    os_unfair_lock_unlock((v4 + 36));
  }
}

uint64_t sub_1DB4C38E8(uint64_t (*a1)(void), uint64_t (*a2)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1(0);
  v10.i64[0] = v2;
  v10.i64[1] = v5;
  sub_1DB330884(&v10);
  if (v3)
  {
    v10.i64[0] = v3;
    v9 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      sub_1DB330A34();
      sub_1DB50BC80();
    }

    else
    {

      v10.i64[0] = 0;
      v10.i64[1] = 0xE000000000000000;
      MEMORY[0x1E1285C70](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1DB50BA00();
    }

    result = sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 16);
    os_unfair_lock_lock(v6 + 9);
    v7 = a2(v6 + 4, v2, v2, v5);
    os_unfair_lock_unlock(v6 + 9);
    return v7;
  }

  return result;
}

void sub_1DB4C3B38(uint64_t a1, void (*a2)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v8.i64[1] = a1;
  sub_1DB330884(&v8);
  if (v3)
  {
    v8.i64[0] = v3;
    v7 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      sub_1DB330A34();
      sub_1DB50BC80();
    }

    else
    {

      v8.i64[0] = 0;
      v8.i64[1] = 0xE000000000000000;
      MEMORY[0x1E1285C70](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1DB50BA00();
    }

    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 16);
    os_unfair_lock_lock(v6 + 19);
    a2(v6 + 4, v2, v2, a1);
    os_unfair_lock_unlock(v6 + 19);
  }
}

void sub_1DB4C3CC8(uint64_t *a1, uint64_t *a2, void (*a3)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9.i64[0] = v3;
  v9.i64[1] = v6;
  sub_1DB330884(&v9);
  if (v4)
  {
    v9.i64[0] = v4;
    v8 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      sub_1DB330A34();
      sub_1DB50BC80();
    }

    else
    {

      v9.i64[0] = 0;
      v9.i64[1] = 0xE000000000000000;
      MEMORY[0x1E1285C70](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1DB50BA00();
    }

    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v7 = *(v3 + 16);
    os_unfair_lock_lock(v7 + 15);
    a3(v7 + 4, v3, v3, v6);
    os_unfair_lock_unlock(v7 + 15);
  }
}

void sub_1DB4C3E64(uint64_t a1, void (*a2)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v8.i64[1] = a1;
  sub_1DB330884(&v8);
  if (v3)
  {
    v8.i64[0] = v3;
    v7 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      sub_1DB330A34();
      sub_1DB50BC80();
    }

    else
    {

      v8.i64[0] = 0;
      v8.i64[1] = 0xE000000000000000;
      MEMORY[0x1E1285C70](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1DB50BA00();
    }

    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 16);
    os_unfair_lock_lock(v6 + 9);
    a2(v6 + 4, v2, v2, a1);
    os_unfair_lock_unlock(v6 + 9);
  }
}

void sub_1DB4C3FF4(uint64_t a1@<X8>)
{
  v6.i64[1] = &type metadata for IntentDispatchTimeout;
  sub_1DB330884(&v6);
  if (v2)
  {
    v6.i64[0] = v2;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      sub_1DB330A34();
      sub_1DB50BC80();
    }

    else
    {

      v6.i64[0] = 0;
      v6.i64[1] = 0xE000000000000000;
      MEMORY[0x1E1285C70](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1DB50BA00();
    }

    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    os_unfair_lock_lock(v4 + 9);
    sub_1DB4C9B48(&v4[4], v1, COERCE_DOUBLE(&type metadata for IntentDispatchTimeout), a1);
    os_unfair_lock_unlock(v4 + 9);
  }
}

void sub_1DB4C4178(uint64_t (*a1)(void), void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a1(0);
  v10.i64[0] = v2;
  v10.i64[1] = v5;
  sub_1DB330884(&v10);
  if (v3)
  {
    v10.i64[0] = v3;
    v9 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      sub_1DB330A34();
      sub_1DB50BC80();
    }

    else
    {

      v10.i64[0] = 0;
      v10.i64[1] = 0xE000000000000000;
      MEMORY[0x1E1285C70](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1DB50BA00();
    }

    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 16);
    v7 = *(*v6 + *MEMORY[0x1E69E6B68] + 16);
    v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v6 + v8));
    a2(v6 + v7, v2, v2, v5);
    os_unfair_lock_unlock((v6 + v8));
  }
}

uint64_t sub_1DB4C436C@<X0>(uint64_t (**a1)(uint64_t)@<X0>, const char *a3@<X2>, double a4@<X3>, uint64_t (**a5)(uint64_t)@<X8>)
{
  v69 = a3;
  v70 = a4;
  v8 = sub_1DB50A280();
  v65 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v57 - v17;
  v19 = *a1;
  if (a1[2])
  {
    *a5 = v19;
  }

  else
  {
    v57 = v8;
    v61 = a5;
    v62 = v16;
    v67 = v19;
    v68 = v5;
    v21 = a1[1];
    v22 = qword_1EE30EAE8;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = sub_1DB50A270();
    v24 = __swift_project_value_buffer(v23, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v59 = v24;
    v25 = sub_1DB50A250();
    v26 = sub_1DB50B070();
    if (sub_1DB50B0E0())
    {
      v27 = swift_slowAlloc();
      v66 = v11;
      v28 = v27;
      v29 = swift_slowAlloc();
      v63 = v21;
      v30 = v10;
      v31 = v29;
      v71.tv_sec = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DB3D4EE8(0xD000000000000017, 0x80000001DB52CA10, &v71.tv_sec);
      v32 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v25, v26, v32, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      v33 = v31;
      v10 = v30;
      v21 = v63;
      MEMORY[0x1E1288220](v33, -1, -1);
      v34 = v28;
      v11 = v66;
      MEMORY[0x1E1288220](v34, -1, -1);
    }

    (*(v11 + 16))(v14, v18, v10);
    sub_1DB50A2C0();
    swift_allocObject();
    v63 = sub_1DB50A2B0();
    v35 = *(v11 + 8);
    v60 = v10;
    v66 = v11 + 8;
    v58 = v35;
    v35(v18, v10);
    static MonotonicTime.now.getter(&v71);
    tv_sec = v71.tv_sec;
    tv_nsec = v71.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v38 = v71.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v39 = swift_allocObject();
    *(v39 + 24) = 0;
    v40 = (v39 + 24);
    *(v39 + 16) = 0;
    v71.tv_sec = v39;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v42 = v67;
    v41 = v68;
    sub_1DB4BA72C(v67, v21, v69, *&v70);
    if (v41)
    {
      swift_task_localValuePop();
      sub_1DB4CB894(v42, v21, 0, MEMORY[0x1E69E7CF8]);
    }

    else
    {
      v68 = 0;
      sub_1DB4CB894(*a1, a1[1], *(a1 + 16), MEMORY[0x1E69E7CF8]);
      *a1 = v72;
      a1[1] = 0;
      *(a1 + 16) = 1;

      static MonotonicTime.now.getter(&v71);
      v43 = v71.tv_sec;
      v44 = v71.tv_nsec;
      if (qword_1EE30ED48 != -1)
      {
        v70 = v71.tv_nsec;
        swift_once();
        v44 = v70;
      }

      v45 = v44 / *&qword_1EE30ED50 + v43 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

      v46 = sub_1DB50A250();
      v47 = v62;
      sub_1DB50A2A0();
      LODWORD(v70) = sub_1DB50B060();

      v48 = sub_1DB50B0E0();
      v49 = v60;
      if (v48)
      {

        v50 = v64;
        sub_1DB50A2D0();

        v51 = v65;
        v52 = v57;
        if ((*(v65 + 88))(v50, v57) == *MEMORY[0x1E69E93E8])
        {
          v53 = 0;
          v69 = "[Error] Interval already ended";
        }

        else
        {
          (*(v51 + 8))(v50, v52);
          v69 = "selfTime=%f";
          v53 = 1;
        }

        v54 = swift_slowAlloc();
        *v54 = 0;
        *(v54 + 1) = v53;
        *(v54 + 2) = 2048;
        os_unfair_lock_lock(v40);
        v55 = *(v39 + 16);
        os_unfair_lock_unlock(v40);
        *(v54 + 4) = v45 - v55;
        v47 = v62;
        v56 = sub_1DB50A210();
        _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v46, LOBYTE(v70), v56, "MakeDependency", v69, v54, 0xCu);
        MEMORY[0x1E1288220](v54, -1, -1);
      }

      v58(v47, v49);
      os_unfair_lock_lock((v38 + 24));
      *(v38 + 16) = v45 + *(v38 + 16);
      os_unfair_lock_unlock((v38 + 24));
      *v61 = v72;
      swift_task_localValuePop();
      sub_1DB4CB894(v67, v21, 0, MEMORY[0x1E69E7CF8]);
    }
  }
}

char *sub_1DB4C4A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = *&a4;
  v70 = a3;
  v6 = sub_1DB50A280();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB50A230();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v57 - v16;
  v18 = *a1;
  if (*(a1 + 16))
  {
  }

  v58 = v7;
  v59 = v6;
  v63 = v15;
  v68 = v18;
  v69 = v4;
  v19 = *(a1 + 8);
  v20 = qword_1EE30EAE8;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = sub_1DB50A270();
  v22 = __swift_project_value_buffer(v21, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v62 = v22;
  v23 = sub_1DB50A250();
  v24 = sub_1DB50B070();
  v25 = sub_1DB50B0E0();
  v65 = v9;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v66 = v19;
    v27 = v26;
    v28 = v10;
    v29 = swift_slowAlloc();
    v71.tv_sec = v29;
    *v27 = 136315138;
    *(v27 + 4) = sub_1DB3D4EE8(0xD000000000000017, 0x80000001DB52F580, &v71.tv_sec);
    v30 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v23, v24, v30, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v31 = v29;
    v10 = v28;
    MEMORY[0x1E1288220](v31, -1, -1);
    v32 = v27;
    v9 = v65;
    v19 = v66;
    MEMORY[0x1E1288220](v32, -1, -1);
  }

  (*(v10 + 16))(v13, v17, v9);
  sub_1DB50A2C0();
  swift_allocObject();
  v66 = sub_1DB50A2B0();
  v33 = *(v10 + 8);
  v64 = v10 + 8;
  v61 = v33;
  v33(v17, v9);
  static MonotonicTime.now.getter(&v71);
  tv_sec = v71.tv_sec;
  tv_nsec = v71.tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v35 = v71.tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  v37 = (v36 + 24);
  *(v36 + 16) = 0;
  v71.tv_sec = v36;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v38 = v68;
  v39 = v69;
  v40 = sub_1DB4BA878(v68, v19, v70, *&v72);
  if (v39)
  {
    swift_task_localValuePop();

    sub_1DB2FEB54(v38, v19, 0);
  }

  else
  {
    v17 = v40;
    v69 = 0;
    sub_1DB2FEB54(v38, v19, 0);
    *a1 = v17;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;

    static MonotonicTime.now.getter(&v71);
    v41 = v71.tv_sec;
    v42 = v71.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      v72 = v71.tv_nsec;
      swift_once();
      v42 = v72;
    }

    v43 = v42 / *&qword_1EE30ED50 + v41 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v44 = sub_1DB50A250();
    v45 = v63;
    sub_1DB50A2A0();
    LODWORD(v72) = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {

      v46 = v67;
      sub_1DB50A2D0();

      v48 = v58;
      v47 = v59;
      if ((*(v58 + 88))(v46, v59) == *MEMORY[0x1E69E93E8])
      {
        v49 = 0;
        v50 = "[Error] Interval already ended";
      }

      else
      {
        (*(v48 + 8))(v46, v47);
        v50 = "selfTime=%f";
        v49 = 1;
      }

      v51 = swift_slowAlloc();
      *v51 = 0;
      *(v51 + 1) = v49;
      *(v51 + 2) = 2048;
      os_unfair_lock_lock(v37);
      v52 = *(v36 + 16);
      os_unfair_lock_unlock(v37);
      *(v51 + 4) = v43 - v52;
      v53 = v63;
      v54 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v44, LOBYTE(v72), v54, "MakeDependency", v50, v51, 0xCu);
      v55 = v51;
      v45 = v53;
      MEMORY[0x1E1288220](v55, -1, -1);
    }

    v61(v45, v65);
    os_unfair_lock_lock((v35 + 24));
    *(v35 + 16) = v43 + *(v35 + 16);
    os_unfair_lock_unlock((v35 + 24));
    swift_task_localValuePop();

    sub_1DB2FEB54(v68, v19, 0);
  }

  return v17;
}

uint64_t sub_1DB4C5190@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, double a4@<X3>, timespec *a5@<X8>)
{
  v72 = a4;
  v71 = a3;
  v8 = sub_1DB50A280();
  v67 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v77 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  v68 = a1;
  result = sub_1DB30C4B8(a1, v75, &qword_1ECC46DC0, &unk_1DB521C28);
  if (v76)
  {
    v20 = v75[3];
    a5[2] = v75[2];
    a5[3] = v20;
    a5[4] = v75[4];
    v21 = v75[1];
    *a5 = v75[0];
    a5[1] = v21;
  }

  else
  {
    v60 = v8;
    v64 = v12;
    v70 = v5;
    v22 = *(&v75[0] + 1);
    v65 = *&v75[0];
    if (qword_1EE30EAE8 != -1)
    {
      swift_once();
    }

    v23 = sub_1DB50A270();
    v24 = __swift_project_value_buffer(v23, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v62 = v24;
    v25 = sub_1DB50A250();
    v26 = sub_1DB50B070();
    v27 = sub_1DB50B0E0();
    v63 = a5;
    v28 = v77;
    v69 = v22;
    if (v27)
    {
      v29 = swift_slowAlloc();
      v30 = v10;
      v31 = swift_slowAlloc();
      v74[0].tv_sec = v31;
      *v29 = 136315138;
      *(v29 + 4) = sub_1DB3D4EE8(0x72756769666E6F43, 0xED00006E6F697461, &v74[0].tv_sec);
      v32 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v25, v26, v32, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      v33 = v31;
      v10 = v30;
      v28 = v77;
      MEMORY[0x1E1288220](v33, -1, -1);
      MEMORY[0x1E1288220](v29, -1, -1);
    }

    (*(v28 + 16))(v15, v18, v10);
    sub_1DB50A2C0();
    swift_allocObject();
    sub_1DB50A2B0();
    v34 = *(v28 + 8);
    v77 = v10;
    v61 = v34;
    v34(v18, v10);
    static MonotonicTime.now.getter(v74);
    tv_sec = v74[0].tv_sec;
    tv_nsec = v74[0].tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v37 = v74[0].tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v38 = swift_allocObject();
    *(v38 + 24) = 0;
    v39 = (v38 + 24);
    *(v38 + 16) = 0;
    v74[0].tv_sec = v38;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v40 = v70;
    sub_1DB4BA72C(v65, v69, v71, *&v72);
    if (v40)
    {
      swift_task_localValuePop();
    }

    else
    {
      v70 = 0;
      v41 = v68;
      sub_1DB30623C(v68, &qword_1ECC46DC0, &unk_1DB521C28);
      sub_1DB400AF8(v74, v41);
      *(v41 + 80) = 1;
      static MonotonicTime.now.getter(&v73);
      v42 = v73.tv_sec;
      v43 = v73.tv_nsec;
      if (qword_1EE30ED48 != -1)
      {
        v72 = v73.tv_nsec;
        swift_once();
        v43 = v72;
      }

      v44 = v43 / *&qword_1EE30ED50 + v42 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

      v45 = sub_1DB50A250();
      v46 = v64;
      sub_1DB50A2A0();
      LODWORD(v72) = sub_1DB50B060();

      if (sub_1DB50B0E0())
      {

        v47 = v66;
        sub_1DB50A2D0();

        v48 = v67;
        v49 = v60;
        if ((*(v67 + 88))(v47, v60) == *MEMORY[0x1E69E93E8])
        {
          v50 = 0;
          v51 = "[Error] Interval already ended";
        }

        else
        {
          (*(v48 + 8))(v47, v49);
          v51 = "selfTime=%f";
          v50 = 1;
        }

        v52 = swift_slowAlloc();
        *v52 = 0;
        *(v52 + 1) = v50;
        *(v52 + 2) = 2048;
        os_unfair_lock_lock(v39);
        v53 = *(v38 + 16);
        os_unfair_lock_unlock(v39);
        *(v52 + 4) = v44 - v53;
        v54 = v64;
        v55 = sub_1DB50A210();
        _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v45, LOBYTE(v72), v55, "MakeDependency", v51, v52, 0xCu);
        MEMORY[0x1E1288220](v52, -1, -1);
        v46 = v54;
      }

      v61(v46, v77);
      os_unfair_lock_lock((v37 + 24));
      *(v37 + 16) = v44 + *(v37 + 16);
      os_unfair_lock_unlock((v37 + 24));
      v56 = v74[3];
      v57 = v63;
      v63[2] = v74[2];
      v57[3] = v56;
      v57[4] = v74[4];
      v58 = v74[1];
      *v57 = v74[0];
      v57[1] = v58;
      swift_task_localValuePop();
    }
  }

  return result;
}

uint64_t sub_1DB4C597C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, double a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a3;
  v63 = a4;
  v8 = sub_1DB50A280();
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1DB50A230();
  v10 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  sub_1DB30C4B8(a1, v66, &qword_1ECC46DD0, &qword_1DB521C40);
  if (v67)
  {
    return sub_1DB2FEA0C(v66, a5);
  }

  v51 = v8;
  v54 = v12;
  v61 = v5;
  v20 = *(&v66[0] + 1);
  v56 = *&v66[0];
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v21 = sub_1DB50A270();
  v22 = __swift_project_value_buffer(v21, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v53 = v22;
  v23 = sub_1DB50A250();
  v24 = sub_1DB50B070();
  v25 = sub_1DB50B0E0();
  v55 = a5;
  v60 = v20;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v65[0].tv_sec = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1DB3D4EE8(0xD000000000000011, 0x80000001DB52F440, &v65[0].tv_sec);
    v28 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v23, v24, v28, "MakeDependency", "object=%s,type=lazy", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1E1288220](v27, -1, -1);
    MEMORY[0x1E1288220](v26, -1, -1);
  }

  v29 = v68;
  (*(v10 + 16))(v15, v18, v68);
  sub_1DB50A2C0();
  swift_allocObject();
  v57 = sub_1DB50A2B0();
  v52 = *(v10 + 8);
  v52(v18, v29);
  static MonotonicTime.now.getter(v65);
  tv_sec = v65[0].tv_sec;
  tv_nsec = v65[0].tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v32 = v65[0].tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v33 = swift_allocObject();
  *(v33 + 24) = 0;
  v34 = (v33 + 24);
  *(v33 + 16) = 0;
  v65[0].tv_sec = v33;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v35 = v61;
  sub_1DB4BA72C(v56, v60, v62, *&v63);
  if (v35)
  {
    swift_task_localValuePop();
  }

  else
  {
    v61 = 0;
    sub_1DB30623C(a1, &qword_1ECC46DD0, &qword_1DB521C40);
    sub_1DB30BE90(v65, a1);
    *(a1 + 40) = 1;
    static MonotonicTime.now.getter(&v64);
    v36 = v64.tv_sec;
    v37 = v64.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      v63 = v64.tv_nsec;
      swift_once();
      v37 = v63;
    }

    v38 = v37 / *&qword_1EE30ED50 + v36 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v39 = sub_1DB50A250();
    v40 = v54;
    sub_1DB50A2A0();
    LODWORD(v63) = sub_1DB50B060();

    v41 = sub_1DB50B0E0();
    v42 = v59;
    if (v41)
    {

      sub_1DB50A2D0();

      v43 = v58;
      v44 = v51;
      if ((*(v58 + 88))(v42, v51) == *MEMORY[0x1E69E93E8])
      {
        v45 = 0;
        v46 = "[Error] Interval already ended";
      }

      else
      {
        (*(v43 + 8))(v42, v44);
        v46 = "selfTime=%f";
        v45 = 1;
      }

      v47 = swift_slowAlloc();
      *v47 = 0;
      *(v47 + 1) = v45;
      *(v47 + 2) = 2048;
      os_unfair_lock_lock(v34);
      v48 = *(v33 + 16);
      os_unfair_lock_unlock(v34);
      *(v47 + 4) = v38 - v48;
      v49 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v39, LOBYTE(v63), v49, "MakeDependency", v46, v47, 0xCu);
      MEMORY[0x1E1288220](v47, -1, -1);
    }

    v52(v40, v68);
    os_unfair_lock_lock((v32 + 24));
    *(v32 + 16) = v38 + *(v32 + 16);
    os_unfair_lock_unlock((v32 + 24));
    sub_1DB2FEA0C(&v65[0].tv_sec, v55);
    swift_task_localValuePop();
  }
}

char *sub_1DB4C60A0(void **a1, uint64_t a2, uint64_t a3, char *a4)
{
  v77 = a4;
  v75 = *&a3;
  v6 = sub_1DB50A280();
  v72 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DB50A230();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v62 - v17;
  v19 = *a1;
  if (*(v16 + 16))
  {
    return v19;
  }

  v63 = v6;
  v74 = v4;
  v67 = v16;
  v21 = *(v16 + 8);
  v22 = qword_1EE30EAE8;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = sub_1DB50A270();
  v24 = __swift_project_value_buffer(v23, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v66 = v24;
  v25 = sub_1DB50A250();
  LODWORD(v71) = sub_1DB50B070();
  v26 = sub_1DB50B0E0();
  v70 = v8;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v69 = v19;
    v76.tv_sec = v68;
    *v27 = 136315138;
    sub_1DB4679C8();
    v28 = sub_1DB50BEE0();
    v30 = v11;
    v31 = v9;
    v32 = v21;
    v33 = sub_1DB3D4EE8(v28, v29, &v76.tv_sec);

    *(v27 + 4) = v33;
    v21 = v32;
    v9 = v31;
    v11 = v30;
    v34 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v25, v71, v34, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
    v35 = v68;
    __swift_destroy_boxed_opaque_existential_0(v68);
    v36 = v35;
    v19 = v69;
    MEMORY[0x1E1288220](v36, -1, -1);
    v37 = v27;
    v8 = v70;
    MEMORY[0x1E1288220](v37, -1, -1);
  }

  (*(v9 + 16))(v14, v18, v8);
  sub_1DB50A2C0();
  swift_allocObject();
  v71 = sub_1DB50A2B0();
  v38 = *(v9 + 8);
  v68 = (v9 + 8);
  v65 = v38;
  v38(v18, v8);
  static MonotonicTime.now.getter(&v76);
  tv_sec = v76.tv_sec;
  tv_nsec = v76.tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v40 = v76.tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  v42 = (v41 + 24);
  *(v41 + 16) = 0;
  v76.tv_sec = v41;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v43 = v74;
  v44 = sub_1DB4BA878(v19, v21, *&v75, v77);
  if (v43)
  {
    swift_task_localValuePop();

    sub_1DB2FD040(v19, v21, 0);
  }

  else
  {
    v45 = v44;
    v74 = 0;
    v69 = v19;
    v46 = v19;
    v47 = v21;
    sub_1DB2FD040(v46, v21, 0);
    v48 = v67;
    *v67 = v45;
    v48[1] = 0;
    *(v48 + 16) = 1;
    v77 = v45;
    static MonotonicTime.now.getter(&v76);
    v49 = v76.tv_sec;
    v50 = v76.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      v75 = v76.tv_nsec;
      swift_once();
      v50 = v75;
    }

    v51 = v50 / *&qword_1EE30ED50 + v49 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v52 = sub_1DB50A250();
    sub_1DB50A2A0();
    LODWORD(v75) = sub_1DB50B060();

    v53 = sub_1DB50B0E0();
    v54 = v73;
    if (v53)
    {
      v67 = v21;

      sub_1DB50A2D0();

      v55 = v72;
      v56 = v63;
      if ((*(v72 + 88))(v54, v63) == *MEMORY[0x1E69E93E8])
      {
        v57 = 0;
        v58 = "[Error] Interval already ended";
      }

      else
      {
        (*(v55 + 8))(v54, v56);
        v58 = "selfTime=%f";
        v57 = 1;
      }

      v59 = swift_slowAlloc();
      *v59 = 0;
      *(v59 + 1) = v57;
      *(v59 + 2) = 2048;
      os_unfair_lock_lock(v42);
      v60 = *(v41 + 16);
      os_unfair_lock_unlock(v42);
      *(v59 + 4) = v51 - v60;
      v61 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v52, LOBYTE(v75), v61, "MakeDependency", v58, v59, 0xCu);
      MEMORY[0x1E1288220](v59, -1, -1);
      v47 = v67;
    }

    v65(v11, v70);
    os_unfair_lock_lock((v40 + 24));
    *(v40 + 16) = v51 + *(v40 + 16);
    os_unfair_lock_unlock((v40 + 24));
    swift_task_localValuePop();

    sub_1DB2FD040(v69, v47, 0);

    return v77;
  }
}

uint64_t sub_1DB4C67B4@<X0>(uint64_t (**a1)(uint64_t)@<X0>, const char *a3@<X2>, double a4@<X3>, uint64_t (**a5)(uint64_t)@<X8>)
{
  v67 = a3;
  v68 = a4;
  v8 = sub_1DB50A280();
  v63 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v55 - v17;
  v19 = *a1;
  if (a1[2])
  {
    *a5 = v19;
    return swift_unknownObjectRetain();
  }

  else
  {
    v55 = v8;
    v59 = a5;
    v60 = v16;
    v65 = v19;
    v66 = v5;
    v21 = a1[1];
    v22 = qword_1EE30EAE8;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = sub_1DB50A270();
    v24 = __swift_project_value_buffer(v23, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v57 = v24;
    v25 = sub_1DB50A250();
    v26 = sub_1DB50B070();
    if (sub_1DB50B0E0())
    {
      v27 = swift_slowAlloc();
      v64 = v11;
      v28 = v27;
      v29 = swift_slowAlloc();
      v61 = v21;
      v30 = v10;
      v31 = v29;
      v69.tv_sec = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DB3D4EE8(6775106, 0xE300000000000000, &v69.tv_sec);
      v32 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v25, v26, v32, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      v33 = v31;
      v10 = v30;
      v21 = v61;
      MEMORY[0x1E1288220](v33, -1, -1);
      v34 = v28;
      v11 = v64;
      MEMORY[0x1E1288220](v34, -1, -1);
    }

    (*(v11 + 16))(v14, v18, v10);
    sub_1DB50A2C0();
    swift_allocObject();
    v61 = sub_1DB50A2B0();
    v35 = *(v11 + 8);
    v58 = v10;
    v64 = v11 + 8;
    v56 = v35;
    v35(v18, v10);
    static MonotonicTime.now.getter(&v69);
    tv_sec = v69.tv_sec;
    tv_nsec = v69.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v38 = v69.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v39 = swift_allocObject();
    *(v39 + 24) = 0;
    v40 = (v39 + 24);
    *(v39 + 16) = 0;
    v69.tv_sec = v39;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v42 = v65;
    v41 = v66;
    sub_1DB4BA72C(v65, v21, v67, *&v68);
    if (v41)
    {
      swift_task_localValuePop();
      sub_1DB4CB894(v42, v21, 0, MEMORY[0x1E69E7D60]);
    }

    else
    {
      v66 = 0;
      sub_1DB4CB894(*a1, a1[1], *(a1 + 16), MEMORY[0x1E69E7D60]);
      *a1 = v70;
      a1[1] = 0;
      *(a1 + 16) = 1;
      swift_unknownObjectRetain();
      static MonotonicTime.now.getter(&v69);
      v43 = v69.tv_sec;
      v44 = v69.tv_nsec;
      if (qword_1EE30ED48 != -1)
      {
        v68 = v69.tv_nsec;
        swift_once();
        v44 = v68;
      }

      v45 = v44 / *&qword_1EE30ED50 + v43 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

      v46 = sub_1DB50A250();
      v47 = v60;
      sub_1DB50A2A0();
      LODWORD(v68) = sub_1DB50B060();

      if (sub_1DB50B0E0())
      {

        v48 = v62;
        sub_1DB50A2D0();

        v49 = v63;
        v50 = v55;
        if ((*(v63 + 88))(v48, v55) == *MEMORY[0x1E69E93E8])
        {
          v51 = 0;
          v67 = "[Error] Interval already ended";
        }

        else
        {
          (*(v49 + 8))(v48, v50);
          v67 = "selfTime=%f";
          v51 = 1;
        }

        v52 = swift_slowAlloc();
        *v52 = 0;
        *(v52 + 1) = v51;
        *(v52 + 2) = 2048;
        os_unfair_lock_lock(v40);
        v53 = *(v39 + 16);
        os_unfair_lock_unlock(v40);
        *(v52 + 4) = v45 - v53;
        v47 = v60;
        v54 = sub_1DB50A210();
        _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v46, LOBYTE(v68), v54, "MakeDependency", v67, v52, 0xCu);
        MEMORY[0x1E1288220](v52, -1, -1);
      }

      v56(v47, v58);
      os_unfair_lock_lock((v38 + 24));
      *(v38 + 16) = v45 + *(v38 + 16);
      os_unfair_lock_unlock((v38 + 24));
      *v59 = v70;
      swift_task_localValuePop();
      sub_1DB4CB894(v65, v21, 0, MEMORY[0x1E69E7D60]);
    }
  }
}

char *sub_1DB4C6EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = *&a4;
  v70 = a3;
  v6 = sub_1DB50A280();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB50A230();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v57 - v16;
  v18 = *a1;
  if (*(a1 + 16))
  {
  }

  v58 = v7;
  v59 = v6;
  v63 = v15;
  v68 = v18;
  v69 = v4;
  v19 = *(a1 + 8);
  v20 = qword_1EE30EAE8;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = sub_1DB50A270();
  v22 = __swift_project_value_buffer(v21, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v62 = v22;
  v23 = sub_1DB50A250();
  v24 = sub_1DB50B070();
  v25 = sub_1DB50B0E0();
  v65 = v9;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v66 = v19;
    v27 = v26;
    v28 = v10;
    v29 = swift_slowAlloc();
    v71.tv_sec = v29;
    *v27 = 136315138;
    *(v27 + 4) = sub_1DB3D4EE8(0xD000000000000013, 0x80000001DB530CA0, &v71.tv_sec);
    v30 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v23, v24, v30, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v31 = v29;
    v10 = v28;
    MEMORY[0x1E1288220](v31, -1, -1);
    v32 = v27;
    v9 = v65;
    v19 = v66;
    MEMORY[0x1E1288220](v32, -1, -1);
  }

  (*(v10 + 16))(v13, v17, v9);
  sub_1DB50A2C0();
  swift_allocObject();
  v66 = sub_1DB50A2B0();
  v33 = *(v10 + 8);
  v64 = v10 + 8;
  v61 = v33;
  v33(v17, v9);
  static MonotonicTime.now.getter(&v71);
  tv_sec = v71.tv_sec;
  tv_nsec = v71.tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v35 = v71.tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  v37 = (v36 + 24);
  *(v36 + 16) = 0;
  v71.tv_sec = v36;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v38 = v68;
  v39 = v69;
  v40 = sub_1DB4BA878(v68, v19, v70, *&v72);
  if (v39)
  {
    swift_task_localValuePop();

    sub_1DB2FEB54(v38, v19, 0);
  }

  else
  {
    v17 = v40;
    v69 = 0;
    sub_1DB2FEB54(v38, v19, 0);
    *a1 = v17;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;

    static MonotonicTime.now.getter(&v71);
    v41 = v71.tv_sec;
    v42 = v71.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      v72 = v71.tv_nsec;
      swift_once();
      v42 = v72;
    }

    v43 = v42 / *&qword_1EE30ED50 + v41 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v44 = sub_1DB50A250();
    v45 = v63;
    sub_1DB50A2A0();
    LODWORD(v72) = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {

      v46 = v67;
      sub_1DB50A2D0();

      v48 = v58;
      v47 = v59;
      if ((*(v58 + 88))(v46, v59) == *MEMORY[0x1E69E93E8])
      {
        v49 = 0;
        v50 = "[Error] Interval already ended";
      }

      else
      {
        (*(v48 + 8))(v46, v47);
        v50 = "selfTime=%f";
        v49 = 1;
      }

      v51 = swift_slowAlloc();
      *v51 = 0;
      *(v51 + 1) = v49;
      *(v51 + 2) = 2048;
      os_unfair_lock_lock(v37);
      v52 = *(v36 + 16);
      os_unfair_lock_unlock(v37);
      *(v51 + 4) = v43 - v52;
      v53 = v63;
      v54 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v44, LOBYTE(v72), v54, "MakeDependency", v50, v51, 0xCu);
      v55 = v51;
      v45 = v53;
      MEMORY[0x1E1288220](v55, -1, -1);
    }

    v61(v45, v65);
    os_unfair_lock_lock((v35 + 24));
    *(v35 + 16) = v43 + *(v35 + 16);
    os_unfair_lock_unlock((v35 + 24));
    swift_task_localValuePop();

    sub_1DB2FEB54(v68, v19, 0);
  }

  return v17;
}

uint64_t sub_1DB4C75D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a3;
  v75 = a4;
  v73 = a2;
  v8 = sub_1DB50A280();
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v66 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for JetPackAsset(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v77 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1DB50A230();
  v78 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v72 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v63 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D90, &qword_1DB521BF8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (v63 - v20);
  v70 = a1;
  sub_1DB30C4B8(a1, v63 - v20, &qword_1ECC46D90, &qword_1DB521BF8);
  v69 = v19;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1DB4CB7C4(v21, a5, type metadata accessor for JetPackAsset);
  }

  v24 = *v21;
  v23 = v21[1];
  v64 = a5;
  v65 = v24;
  v71 = v23;
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v25 = sub_1DB50A270();
  v26 = __swift_project_value_buffer(v25, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v63[1] = v26;
  v27 = sub_1DB50A250();
  v28 = sub_1DB50B070();
  v29 = sub_1DB50B0E0();
  v30 = v78;
  v80 = v5;
  if (v29)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v79.tv_sec = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_1DB3D4EE8(0x416B63615074654ALL, 0xEC00000074657373, &v79.tv_sec);
    v33 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v27, v28, v33, "MakeDependency", "object=%s,type=lazy", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x1E1288220](v32, -1, -1);
    MEMORY[0x1E1288220](v31, -1, -1);
  }

  v34 = v71;
  v35 = v76;
  (*(v30 + 16))(v15, v18, v76);
  sub_1DB50A2C0();
  swift_allocObject();
  v73 = sub_1DB50A2B0();
  v38 = *(v30 + 8);
  v36 = v30 + 8;
  v37 = v38;
  v38(v18, v35);
  static MonotonicTime.now.getter(&v79);
  tv_sec = v79.tv_sec;
  tv_nsec = v79.tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v41 = v79.tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  v43 = (v42 + 24);
  *(v42 + 16) = 0;
  v79.tv_sec = v42;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v44 = v77;
  v45 = v80;
  sub_1DB4BA72C(v65, v34, v74, *&v75);
  v80 = v45;
  if (v45)
  {
    swift_task_localValuePop();
  }

  else
  {
    v78 = v36;
    v46 = v70;
    sub_1DB30623C(v70, &qword_1ECC46D90, &qword_1DB521BF8);
    sub_1DB4CB82C(v44, v46, type metadata accessor for JetPackAsset);
    swift_storeEnumTagMultiPayload();
    static MonotonicTime.now.getter(&v79);
    v47 = v79.tv_sec;
    v48 = v79.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      v75 = v79.tv_nsec;
      swift_once();
      v48 = v75;
    }

    v49 = v48 / *&qword_1EE30ED50 + v47 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v50 = sub_1DB50A250();
    v51 = v72;
    sub_1DB50A2A0();
    v52 = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {

      v53 = v66;
      sub_1DB50A2D0();

      v55 = v67;
      v54 = v68;
      if ((*(v67 + 88))(v53, v68) == *MEMORY[0x1E69E93E8])
      {
        v56 = 0;
        v57 = "[Error] Interval already ended";
      }

      else
      {
        (*(v55 + 8))(v53, v54);
        v57 = "selfTime=%f";
        v56 = 1;
      }

      v58 = swift_slowAlloc();
      *v58 = 0;
      *(v58 + 1) = v56;
      *(v58 + 2) = 2048;
      os_unfair_lock_lock(v43);
      v59 = *(v42 + 16);
      os_unfair_lock_unlock(v43);
      *(v58 + 4) = v49 - v59;
      v60 = v72;
      v61 = sub_1DB50A210();
      v62 = v57;
      v51 = v60;
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v50, v52, v61, "MakeDependency", v62, v58, 0xCu);
      MEMORY[0x1E1288220](v58, -1, -1);
    }

    v37(v51, v76);
    os_unfair_lock_lock((v41 + 24));
    *(v41 + 16) = v49 + *(v41 + 16);
    os_unfair_lock_unlock((v41 + 24));
    sub_1DB4CB7C4(v77, v64, type metadata accessor for JetPackAsset);
    swift_task_localValuePop();
  }
}

uint64_t sub_1DB4C7DAC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, double a4@<X3>, _OWORD *a5@<X8>)
{
  v73 = a3;
  v74 = a4;
  v81 = a5;
  v7 = sub_1DB50A280();
  v69 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB50A230();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  v70 = a1;
  result = sub_1DB30C4B8(a1, v78, &qword_1ECC46DB0, &qword_1DB521C18);
  if (v80)
  {
    v20 = v78[1];
    v21 = v81;
    *v81 = v78[0];
    v21[1] = v20;
    v21[2] = v78[2];
    *(v21 + 6) = v79;
  }

  else
  {
    v61 = v7;
    v66 = v12;
    v72 = v5;
    v22 = *(&v78[0] + 1);
    v67 = *&v78[0];
    if (qword_1EE30EAE8 != -1)
    {
      swift_once();
    }

    v23 = sub_1DB50A270();
    v24 = __swift_project_value_buffer(v23, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v63 = v24;
    v25 = sub_1DB50A250();
    v26 = sub_1DB50B070();
    v27 = sub_1DB50B0E0();
    v71 = v22;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v64 = v10;
      v30 = v9;
      v31 = v29;
      v76[0].tv_sec = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DB3D4EE8(0xD000000000000011, 0x80000001DB52F150, &v76[0].tv_sec);
      v32 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v25, v26, v32, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      v33 = v31;
      v9 = v30;
      v10 = v64;
      MEMORY[0x1E1288220](v33, -1, -1);
      MEMORY[0x1E1288220](v28, -1, -1);
    }

    (*(v10 + 16))(v15, v18, v9);
    sub_1DB50A2C0();
    swift_allocObject();
    sub_1DB50A2B0();
    v35 = *(v10 + 8);
    v34 = v10 + 8;
    v65 = v9;
    v62 = v35;
    v35(v18, v9);
    static MonotonicTime.now.getter(v76);
    v36 = v76[0];
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    tv_sec = v76[0].tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v38 = swift_allocObject();
    *(v38 + 24) = 0;
    v39 = (v38 + 24);
    *(v38 + 16) = 0;
    v76[0].tv_sec = v38;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v40 = v72;
    sub_1DB4BA72C(v67, v71, v73, *&v74);
    if (v40)
    {
      swift_task_localValuePop();
    }

    else
    {
      v72 = 0;
      v41 = v70;
      sub_1DB30623C(v70, &qword_1ECC46DB0, &qword_1DB521C18);
      sub_1DB3C17BC(v76, v41);
      *(v41 + 56) = 1;
      static MonotonicTime.now.getter(&v75);
      v42 = v75.tv_sec;
      tv_nsec = v75.tv_nsec;
      if (qword_1EE30ED48 != -1)
      {
        v74 = v75.tv_nsec;
        swift_once();
        tv_nsec = v74;
      }

      v44 = tv_nsec / *&qword_1EE30ED50 + v42 - (v36.tv_nsec / *&qword_1EE30ED50 + v36.tv_sec);

      v45 = sub_1DB50A250();
      v46 = v66;
      sub_1DB50A2A0();
      LODWORD(v74) = sub_1DB50B060();

      v47 = sub_1DB50B0E0();
      v48 = v65;
      if (v47)
      {
        v64 = v34;

        v49 = v68;
        sub_1DB50A2D0();

        v50 = v69;
        v51 = v61;
        if ((*(v69 + 88))(v49, v61) == *MEMORY[0x1E69E93E8])
        {
          v52 = 0;
          v53 = "[Error] Interval already ended";
        }

        else
        {
          (*(v50 + 8))(v49, v51);
          v53 = "selfTime=%f";
          v52 = 1;
        }

        v54 = swift_slowAlloc();
        *v54 = 0;
        *(v54 + 1) = v52;
        *(v54 + 2) = 2048;
        os_unfair_lock_lock(v39);
        v55 = *(v38 + 16);
        os_unfair_lock_unlock(v39);
        *(v54 + 4) = v44 - v55;
        v56 = v66;
        v57 = sub_1DB50A210();
        _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v45, LOBYTE(v74), v57, "MakeDependency", v53, v54, 0xCu);
        v58 = v54;
        v46 = v56;
        MEMORY[0x1E1288220](v58, -1, -1);
      }

      v62(v46, v48);
      os_unfair_lock_lock((tv_sec + 24));
      *(tv_sec + 16) = v44 + *(tv_sec + 16);
      os_unfair_lock_unlock((tv_sec + 24));
      v59 = v76[1];
      v60 = v81;
      *v81 = v76[0];
      v60[1] = v59;
      v60[2] = v76[2];
      v60[3].tv_sec = v77;
      swift_task_localValuePop();
    }
  }

  return result;
}

uint64_t sub_1DB4C854C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, double a4@<X3>, _OWORD *a5@<X8>)
{
  v73 = a3;
  v74 = a4;
  v81 = a5;
  v7 = sub_1DB50A280();
  v69 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB50A230();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  v70 = a1;
  result = sub_1DB30C4B8(a1, v78, &qword_1ECC46DA0, &qword_1DB521C08);
  if (v80)
  {
    v20 = v78[1];
    v21 = v81;
    *v81 = v78[0];
    v21[1] = v20;
    v21[2] = v78[2];
    *(v21 + 6) = v79;
  }

  else
  {
    v61 = v7;
    v66 = v12;
    v72 = v5;
    v22 = *(&v78[0] + 1);
    v67 = *&v78[0];
    if (qword_1EE30EAE8 != -1)
    {
      swift_once();
    }

    v23 = sub_1DB50A270();
    v24 = __swift_project_value_buffer(v23, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v63 = v24;
    v25 = sub_1DB50A250();
    v26 = sub_1DB50B070();
    v27 = sub_1DB50B0E0();
    v71 = v22;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v64 = v10;
      v30 = v9;
      v31 = v29;
      v76[0].tv_sec = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DB3D4EE8(0xD000000000000015, 0x80000001DB52F130, &v76[0].tv_sec);
      v32 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v25, v26, v32, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      v33 = v31;
      v9 = v30;
      v10 = v64;
      MEMORY[0x1E1288220](v33, -1, -1);
      MEMORY[0x1E1288220](v28, -1, -1);
    }

    (*(v10 + 16))(v15, v18, v9);
    sub_1DB50A2C0();
    swift_allocObject();
    sub_1DB50A2B0();
    v35 = *(v10 + 8);
    v34 = v10 + 8;
    v65 = v9;
    v62 = v35;
    v35(v18, v9);
    static MonotonicTime.now.getter(v76);
    v36 = v76[0];
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    tv_sec = v76[0].tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v38 = swift_allocObject();
    *(v38 + 24) = 0;
    v39 = (v38 + 24);
    *(v38 + 16) = 0;
    v76[0].tv_sec = v38;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v40 = v72;
    sub_1DB4BA72C(v67, v71, v73, *&v74);
    if (v40)
    {
      swift_task_localValuePop();
    }

    else
    {
      v72 = 0;
      v41 = v70;
      sub_1DB30623C(v70, &qword_1ECC46DA0, &qword_1DB521C08);
      sub_1DB3BEB60(v76, v41);
      *(v41 + 56) = 1;
      static MonotonicTime.now.getter(&v75);
      v42 = v75.tv_sec;
      tv_nsec = v75.tv_nsec;
      if (qword_1EE30ED48 != -1)
      {
        v74 = v75.tv_nsec;
        swift_once();
        tv_nsec = v74;
      }

      v44 = tv_nsec / *&qword_1EE30ED50 + v42 - (v36.tv_nsec / *&qword_1EE30ED50 + v36.tv_sec);

      v45 = sub_1DB50A250();
      v46 = v66;
      sub_1DB50A2A0();
      LODWORD(v74) = sub_1DB50B060();

      v47 = sub_1DB50B0E0();
      v48 = v65;
      if (v47)
      {
        v64 = v34;

        v49 = v68;
        sub_1DB50A2D0();

        v50 = v69;
        v51 = v61;
        if ((*(v69 + 88))(v49, v61) == *MEMORY[0x1E69E93E8])
        {
          v52 = 0;
          v53 = "[Error] Interval already ended";
        }

        else
        {
          (*(v50 + 8))(v49, v51);
          v53 = "selfTime=%f";
          v52 = 1;
        }

        v54 = swift_slowAlloc();
        *v54 = 0;
        *(v54 + 1) = v52;
        *(v54 + 2) = 2048;
        os_unfair_lock_lock(v39);
        v55 = *(v38 + 16);
        os_unfair_lock_unlock(v39);
        *(v54 + 4) = v44 - v55;
        v56 = v66;
        v57 = sub_1DB50A210();
        _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v45, LOBYTE(v74), v57, "MakeDependency", v53, v54, 0xCu);
        v58 = v54;
        v46 = v56;
        MEMORY[0x1E1288220](v58, -1, -1);
      }

      v62(v46, v48);
      os_unfair_lock_lock((tv_sec + 24));
      *(tv_sec + 16) = v44 + *(tv_sec + 16);
      os_unfair_lock_unlock((tv_sec + 24));
      v59 = v76[1];
      v60 = v81;
      *v81 = v76[0];
      v60[1] = v59;
      v60[2] = v76[2];
      v60[3].tv_sec = v77;
      swift_task_localValuePop();
    }
  }

  return result;
}

uint64_t sub_1DB4C8CEC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, double a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a3;
  v63 = a4;
  v8 = sub_1DB50A280();
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1DB50A230();
  v10 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  sub_1DB30C4B8(a1, v66, &qword_1ECC46D80, &qword_1DB521BE8);
  if (v67)
  {
    return sub_1DB2FEA0C(v66, a5);
  }

  v51 = v8;
  v54 = v12;
  v61 = v5;
  v20 = *(&v66[0] + 1);
  v56 = *&v66[0];
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v21 = sub_1DB50A270();
  v22 = __swift_project_value_buffer(v21, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v53 = v22;
  v23 = sub_1DB50A250();
  v24 = sub_1DB50B070();
  v25 = sub_1DB50B0E0();
  v55 = a5;
  v60 = v20;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v65[0].tv_sec = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1DB3D4EE8(0xD000000000000010, 0x80000001DB52CB00, &v65[0].tv_sec);
    v28 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v23, v24, v28, "MakeDependency", "object=%s,type=lazy", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1E1288220](v27, -1, -1);
    MEMORY[0x1E1288220](v26, -1, -1);
  }

  v29 = v68;
  (*(v10 + 16))(v15, v18, v68);
  sub_1DB50A2C0();
  swift_allocObject();
  v57 = sub_1DB50A2B0();
  v52 = *(v10 + 8);
  v52(v18, v29);
  static MonotonicTime.now.getter(v65);
  tv_sec = v65[0].tv_sec;
  tv_nsec = v65[0].tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v32 = v65[0].tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v33 = swift_allocObject();
  *(v33 + 24) = 0;
  v34 = (v33 + 24);
  *(v33 + 16) = 0;
  v65[0].tv_sec = v33;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v35 = v61;
  sub_1DB4BA72C(v56, v60, v62, *&v63);
  if (v35)
  {
    swift_task_localValuePop();
  }

  else
  {
    v61 = 0;
    sub_1DB30623C(a1, &qword_1ECC46D80, &qword_1DB521BE8);
    sub_1DB30BE90(v65, a1);
    *(a1 + 40) = 1;
    static MonotonicTime.now.getter(&v64);
    v36 = v64.tv_sec;
    v37 = v64.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      v63 = v64.tv_nsec;
      swift_once();
      v37 = v63;
    }

    v38 = v37 / *&qword_1EE30ED50 + v36 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v39 = sub_1DB50A250();
    v40 = v54;
    sub_1DB50A2A0();
    LODWORD(v63) = sub_1DB50B060();

    v41 = sub_1DB50B0E0();
    v42 = v59;
    if (v41)
    {

      sub_1DB50A2D0();

      v43 = v58;
      v44 = v51;
      if ((*(v58 + 88))(v42, v51) == *MEMORY[0x1E69E93E8])
      {
        v45 = 0;
        v46 = "[Error] Interval already ended";
      }

      else
      {
        (*(v43 + 8))(v42, v44);
        v46 = "selfTime=%f";
        v45 = 1;
      }

      v47 = swift_slowAlloc();
      *v47 = 0;
      *(v47 + 1) = v45;
      *(v47 + 2) = 2048;
      os_unfair_lock_lock(v34);
      v48 = *(v33 + 16);
      os_unfair_lock_unlock(v34);
      *(v47 + 4) = v38 - v48;
      v49 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v39, LOBYTE(v63), v49, "MakeDependency", v46, v47, 0xCu);
      MEMORY[0x1E1288220](v47, -1, -1);
    }

    v52(v40, v68);
    os_unfair_lock_lock((v32 + 24));
    *(v32 + 16) = v38 + *(v32 + 16);
    os_unfair_lock_unlock((v32 + 24));
    sub_1DB2FEA0C(&v65[0].tv_sec, v55);
    swift_task_localValuePop();
  }
}

uint64_t sub_1DB4C9410@<X0>(uint64_t (**a1)(uint64_t)@<X0>, const char *a3@<X2>, double a4@<X3>, uint64_t (**a5)(uint64_t)@<X8>)
{
  v67 = a3;
  v68 = a4;
  v8 = sub_1DB50A280();
  v63 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v55 - v17;
  v19 = *a1;
  if (a1[2])
  {
    *a5 = v19;
  }

  else
  {
    v55 = v8;
    v59 = a5;
    v60 = v16;
    v65 = v19;
    v66 = v5;
    v21 = a1[1];
    v22 = qword_1EE30EAE8;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = sub_1DB50A270();
    v24 = __swift_project_value_buffer(v23, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v57 = v24;
    v25 = sub_1DB50A250();
    v26 = sub_1DB50B070();
    if (sub_1DB50B0E0())
    {
      v27 = swift_slowAlloc();
      v64 = v11;
      v28 = v27;
      v29 = swift_slowAlloc();
      v61 = v21;
      v30 = v10;
      v31 = v29;
      v69.tv_sec = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DB3D4EE8(0x746E6F434E4F534ALL, 0xEB00000000747865, &v69.tv_sec);
      v32 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v25, v26, v32, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      v33 = v31;
      v10 = v30;
      v21 = v61;
      MEMORY[0x1E1288220](v33, -1, -1);
      v34 = v28;
      v11 = v64;
      MEMORY[0x1E1288220](v34, -1, -1);
    }

    (*(v11 + 16))(v14, v18, v10);
    sub_1DB50A2C0();
    swift_allocObject();
    v61 = sub_1DB50A2B0();
    v35 = *(v11 + 8);
    v58 = v10;
    v64 = v11 + 8;
    v56 = v35;
    v35(v18, v10);
    static MonotonicTime.now.getter(&v69);
    tv_sec = v69.tv_sec;
    tv_nsec = v69.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v38 = v69.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v39 = swift_allocObject();
    *(v39 + 24) = 0;
    v40 = (v39 + 24);
    *(v39 + 16) = 0;
    v69.tv_sec = v39;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v42 = v65;
    v41 = v66;
    sub_1DB4BA72C(v65, v21, v67, *&v68);
    if (v41)
    {
      swift_task_localValuePop();
      sub_1DB4CB894(v42, v21, 0, MEMORY[0x1E69E7CF8]);
    }

    else
    {
      v66 = 0;
      sub_1DB4CB894(*a1, a1[1], *(a1 + 16), MEMORY[0x1E69E7CF8]);
      *a1 = v70;
      a1[1] = 0;
      *(a1 + 16) = 1;

      static MonotonicTime.now.getter(&v69);
      v43 = v69.tv_sec;
      v44 = v69.tv_nsec;
      if (qword_1EE30ED48 != -1)
      {
        v68 = v69.tv_nsec;
        swift_once();
        v44 = v68;
      }

      v45 = v44 / *&qword_1EE30ED50 + v43 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

      v46 = sub_1DB50A250();
      v47 = v60;
      sub_1DB50A2A0();
      LODWORD(v68) = sub_1DB50B060();

      if (sub_1DB50B0E0())
      {

        v48 = v62;
        sub_1DB50A2D0();

        v49 = v63;
        v50 = v55;
        if ((*(v63 + 88))(v48, v55) == *MEMORY[0x1E69E93E8])
        {
          v51 = 0;
          v67 = "[Error] Interval already ended";
        }

        else
        {
          (*(v49 + 8))(v48, v50);
          v67 = "selfTime=%f";
          v51 = 1;
        }

        v52 = swift_slowAlloc();
        *v52 = 0;
        *(v52 + 1) = v51;
        *(v52 + 2) = 2048;
        os_unfair_lock_lock(v40);
        v53 = *(v39 + 16);
        os_unfair_lock_unlock(v40);
        *(v52 + 4) = v45 - v53;
        v47 = v60;
        v54 = sub_1DB50A210();
        _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v46, LOBYTE(v68), v54, "MakeDependency", v67, v52, 0xCu);
        MEMORY[0x1E1288220](v52, -1, -1);
      }

      v56(v47, v58);
      os_unfair_lock_lock((v38 + 24));
      *(v38 + 16) = v45 + *(v38 + 16);
      os_unfair_lock_unlock((v38 + 24));
      *v59 = v70;
      swift_task_localValuePop();
      sub_1DB4CB894(v65, v21, 0, MEMORY[0x1E69E7CF8]);
    }
  }
}

uint64_t sub_1DB4C9B48@<X0>(uint64_t a1@<X0>, const char *a3@<X2>, double a4@<X3>, uint64_t a5@<X8>)
{
  v76 = a4;
  v72 = a3;
  v8 = sub_1DB50A280();
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v59 - v17;
  v20 = *a1;
  result = *(a1 + 8);
  if (*(a1 + 16))
  {
    *a5 = v20;
    *(a5 + 8) = result & 1;
  }

  else
  {
    v63 = a5;
    v64 = v16;
    v70 = result;
    v71 = v5;
    v21 = qword_1EE30EAE8;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = sub_1DB50A270();
    v23 = __swift_project_value_buffer(v22, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v61 = v23;
    v24 = sub_1DB50A250();
    v25 = sub_1DB50B070();
    if (sub_1DB50B0E0())
    {
      v26 = swift_slowAlloc();
      v69 = v11;
      v27 = v26;
      v28 = swift_slowAlloc();
      v65 = v20;
      v29 = v10;
      v30 = v28;
      v75.tv_sec = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1DB3D4EE8(0xD000000000000015, 0x80000001DB52CAE0, &v75.tv_sec);
      v31 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v24, v25, v31, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      v32 = v30;
      v10 = v29;
      v20 = v65;
      MEMORY[0x1E1288220](v32, -1, -1);
      v33 = v27;
      v11 = v69;
      MEMORY[0x1E1288220](v33, -1, -1);
    }

    (*(v11 + 16))(v14, v18, v10);
    sub_1DB50A2C0();
    swift_allocObject();
    v65 = sub_1DB50A2B0();
    v34 = *(v11 + 8);
    v62 = v10;
    v69 = v11 + 8;
    v60 = v34;
    v34(v18, v10);
    static MonotonicTime.now.getter(&v75);
    tv_sec = v75.tv_sec;
    tv_nsec = v75.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v37 = v75.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v38 = swift_allocObject();
    *(v38 + 24) = 0;
    v39 = (v38 + 24);
    *(v38 + 16) = 0;
    v75.tv_sec = v38;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v41 = v70;
    v40 = v71;
    sub_1DB4BA72C(v20, v70, v72, *&v76);
    if (v40)
    {
      swift_task_localValuePop();
      sub_1DB2FD030(v20, v41, 0);
    }

    else
    {
      v71 = 0;
      sub_1DB2FD030(*a1, *(a1 + 8), *(a1 + 16));
      v42 = v74;
      *a1 = v73;
      *(a1 + 8) = v42;
      *(a1 + 16) = 1;
      static MonotonicTime.now.getter(&v75);
      v43 = v75.tv_sec;
      v44 = v75.tv_nsec;
      if (qword_1EE30ED48 != -1)
      {
        v76 = v75.tv_nsec;
        swift_once();
        v44 = v76;
      }

      v45 = v44 / *&qword_1EE30ED50 + v43 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

      v46 = sub_1DB50A250();
      v47 = v64;
      sub_1DB50A2A0();
      LODWORD(v76) = sub_1DB50B060();

      v48 = sub_1DB50B0E0();
      v49 = v62;
      if (v48)
      {

        v50 = v66;
        sub_1DB50A2D0();

        v52 = v67;
        v51 = v68;
        if ((*(v67 + 88))(v50, v68) == *MEMORY[0x1E69E93E8])
        {
          v53 = 0;
          v72 = "[Error] Interval already ended";
        }

        else
        {
          (*(v52 + 8))(v50, v51);
          v72 = "selfTime=%f";
          v53 = 1;
        }

        v54 = swift_slowAlloc();
        *v54 = 0;
        *(v54 + 1) = v53;
        *(v54 + 2) = 2048;
        os_unfair_lock_lock(v39);
        v55 = *(v38 + 16);
        os_unfair_lock_unlock(v39);
        *(v54 + 4) = v45 - v55;
        v47 = v64;
        v56 = sub_1DB50A210();
        _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v46, LOBYTE(v76), v56, "MakeDependency", v72, v54, 0xCu);
        MEMORY[0x1E1288220](v54, -1, -1);
      }

      v60(v47, v49);
      os_unfair_lock_lock((v37 + 24));
      *(v37 + 16) = v45 + *(v37 + 16);
      os_unfair_lock_unlock((v37 + 24));
      v57 = v74;
      v58 = v63;
      *v63 = v73;
      *(v58 + 8) = v57;
      swift_task_localValuePop();
      sub_1DB2FD030(v20, v70, 0);
    }
  }

  return result;
}

uint64_t sub_1DB4CA23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a3;
  v75 = a4;
  v73 = a2;
  v8 = sub_1DB50A280();
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v66 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PageIntentInstrumentation(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v77 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1DB50A230();
  v78 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v72 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v63 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D28, &unk_1DB521B88);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (v63 - v20);
  v70 = a1;
  sub_1DB30C4B8(a1, v63 - v20, &qword_1ECC46D28, &unk_1DB521B88);
  v69 = v19;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1DB4CB7C4(v21, a5, type metadata accessor for PageIntentInstrumentation);
  }

  v24 = *v21;
  v23 = v21[1];
  v64 = a5;
  v65 = v24;
  v71 = v23;
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v25 = sub_1DB50A270();
  v26 = __swift_project_value_buffer(v25, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v63[1] = v26;
  v27 = sub_1DB50A250();
  v28 = sub_1DB50B070();
  v29 = sub_1DB50B0E0();
  v30 = v78;
  v80 = v5;
  if (v29)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v79.tv_sec = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_1DB3D4EE8(0xD000000000000019, 0x80000001DB52CAC0, &v79.tv_sec);
    v33 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v27, v28, v33, "MakeDependency", "object=%s,type=lazy", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x1E1288220](v32, -1, -1);
    MEMORY[0x1E1288220](v31, -1, -1);
  }

  v34 = v71;
  v35 = v76;
  (*(v30 + 16))(v15, v18, v76);
  sub_1DB50A2C0();
  swift_allocObject();
  v73 = sub_1DB50A2B0();
  v38 = *(v30 + 8);
  v36 = v30 + 8;
  v37 = v38;
  v38(v18, v35);
  static MonotonicTime.now.getter(&v79);
  tv_sec = v79.tv_sec;
  tv_nsec = v79.tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v41 = v79.tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  v43 = (v42 + 24);
  *(v42 + 16) = 0;
  v79.tv_sec = v42;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v44 = v77;
  v45 = v80;
  sub_1DB4BA72C(v65, v34, v74, *&v75);
  v80 = v45;
  if (v45)
  {
    swift_task_localValuePop();
  }

  else
  {
    v78 = v36;
    v46 = v70;
    sub_1DB30623C(v70, &qword_1ECC46D28, &unk_1DB521B88);
    sub_1DB4CB82C(v44, v46, type metadata accessor for PageIntentInstrumentation);
    swift_storeEnumTagMultiPayload();
    static MonotonicTime.now.getter(&v79);
    v47 = v79.tv_sec;
    v48 = v79.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      v75 = v79.tv_nsec;
      swift_once();
      v48 = v75;
    }

    v49 = v48 / *&qword_1EE30ED50 + v47 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v50 = sub_1DB50A250();
    v51 = v72;
    sub_1DB50A2A0();
    v52 = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {

      v53 = v66;
      sub_1DB50A2D0();

      v55 = v67;
      v54 = v68;
      if ((*(v67 + 88))(v53, v68) == *MEMORY[0x1E69E93E8])
      {
        v56 = 0;
        v57 = "[Error] Interval already ended";
      }

      else
      {
        (*(v55 + 8))(v53, v54);
        v57 = "selfTime=%f";
        v56 = 1;
      }

      v58 = swift_slowAlloc();
      *v58 = 0;
      *(v58 + 1) = v56;
      *(v58 + 2) = 2048;
      os_unfair_lock_lock(v43);
      v59 = *(v42 + 16);
      os_unfair_lock_unlock(v43);
      *(v58 + 4) = v49 - v59;
      v60 = v72;
      v61 = sub_1DB50A210();
      v62 = v57;
      v51 = v60;
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v50, v52, v61, "MakeDependency", v62, v58, 0xCu);
      MEMORY[0x1E1288220](v58, -1, -1);
    }

    v37(v51, v76);
    os_unfair_lock_lock((v41 + 24));
    *(v41 + 16) = v49 + *(v41 + 16);
    os_unfair_lock_unlock((v41 + 24));
    sub_1DB4CB7C4(v77, v64, type metadata accessor for PageIntentInstrumentation);
    swift_task_localValuePop();
  }
}

void *IntentDispatchOptions.__allocating_init(name:dependencies:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_allocObject();
  v7 = *a3;
  result[3] = a1;
  result[4] = a2;
  result[2] = v7;
  return result;
}

void *IntentDispatchOptions.init(name:dependencies:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3[3] = a1;
  v3[4] = a2;
  v3[2] = v4;
  return v3;
}

void *IntentDispatchOptions.__allocating_init(dispatcher:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426F0, &unk_1DB51FC00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CD0, &qword_1DB521A78);
  *(inited + 64) = v3;
  v4 = swift_allocObject();
  *(inited + 40) = v4;
  sub_1DB30BE90(a1, v4 + 16);
  *(inited + 32) = v3;
  v5 = sub_1DB30BC94();
  v7 = MEMORY[0x1E12859D0](1, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v5);
  sub_1DB307C9C(inited);
  swift_setDeallocating();
  sub_1DB30BF1C(inited + 32);
  __swift_destroy_boxed_opaque_existential_0(a1);
  result = swift_allocObject();
  result[3] = 0xD000000000000017;
  result[4] = 0x80000001DB530C50;
  result[2] = v7;
  return result;
}

void *IntentDispatchOptions.__allocating_init()()
{
  v0 = sub_1DB30BC94();
  v2 = MEMORY[0x1E12859D0](0, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v0);
  sub_1DB307C9C(MEMORY[0x1E69E7CC0]);
  result = swift_allocObject();
  result[3] = 0xD000000000000017;
  result[4] = 0x80000001DB530C50;
  result[2] = v2;
  return result;
}

uint64_t sub_1DB4CAC40(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CD8, &qword_1DB521A88);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-1] - v5;
  v7 = type metadata accessor for PageIntentInstrumentation(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB30C4B8(a1, v6, &qword_1ECC46CD8, &qword_1DB521A88);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1DB30623C(v6, &qword_1ECC46CD8, &qword_1DB521A88);
    v20 = v1[2];

    DependencyDictionary.remove(dependencyFor:)(v7);
    swift_beginAccess();
    v11 = v1[4];
    v18 = v1[3];
    v19 = v11;

    MEMORY[0x1E1285C70](2108704, 0xE300000000000000);
    v12 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v12);

    return (*(v3 + 96))(v18, v19, &v20);
  }

  else
  {
    sub_1DB4CB7C4(v6, v10, type metadata accessor for PageIntentInstrumentation);
    v17[3] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
    sub_1DB4CB82C(v10, boxed_opaque_existential_0, type metadata accessor for PageIntentInstrumentation);
    v16 = v7;
    v15 = sub_1DB40D33C(&v16);
    sub_1DB4CB768(v10);
    sub_1DB30BF1C(&v16);
    return v15;
  }
}

uint64_t IntentDispatchOptions.dispatcher.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1DB4C2138(*(v1 + 16), a1);
  return swift_task_localValuePop();
}

uint64_t IntentDispatchOptions.withDispatcher(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CD0, &qword_1DB521A78);
  sub_1DB30C4B8(a1, &v10, &qword_1ECC43570, &qword_1DB521A80);
  if (v11)
  {
    sub_1DB2FEA0C(&v10, v13);
    v12 = v4;
    *(&v10 + 1) = swift_allocObject();
    sub_1DB30BE90(v13, *(&v10 + 1) + 16);
    *&v10 = v4;
    v5 = sub_1DB40D33C(&v10);
    __swift_destroy_boxed_opaque_existential_0(v13);
    sub_1DB30BF1C(&v10);
    return v5;
  }

  else
  {
    sub_1DB30623C(&v10, &qword_1ECC43570, &qword_1DB521A80);
    v9 = v1[2];

    DependencyDictionary.remove(dependencyFor:)(v4);
    swift_beginAccess();
    v7 = v1[4];
    *&v10 = v1[3];
    *(&v10 + 1) = v7;

    MEMORY[0x1E1285C70](2108704, 0xE300000000000000);
    v8 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v8);

    return (*(v3 + 96))(v10, *(&v10 + 1), &v9);
  }
}

uint64_t *IntentDispatchOptions.jsonContext.getter@<X0>(uint64_t **a1@<X8>)
{
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v4 = v1;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1DB4C2608(v1[2], &v4);
  swift_task_localValuePop();
  result = v4;
  if (!v4)
  {
    result = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  }

  *a1 = result;
  return result;
}

uint64_t IntentDispatchOptions.withJSONContext(_:)(uint64_t *a1)
{
  v1 = *a1;
  v4[4] = &type metadata for JSONContext;
  v4[0] = &type metadata for JSONContext;
  v4[1] = v1;

  v2 = sub_1DB40D33C(v4);
  sub_1DB30BF1C(v4);
  return v2;
}

uint64_t IntentDispatchOptions.timeout.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v7 = v1;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1DB4C2AA8(*(v1 + 16), &v7);
  result = swift_task_localValuePop();
  v4 = v9;
  v5 = v8;
  v6 = v7;
  if (v9)
  {
    v6 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = (v4 | v5) & 1;
  return result;
}

uint64_t IntentDispatchOptions.withTimeout(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v7 = &type metadata for IntentDispatchTimeout;
  v6 = v2;
  v5[0] = &type metadata for IntentDispatchTimeout;
  v5[1] = v1;
  v3 = sub_1DB40D33C(v5);
  sub_1DB30BF1C(v5);
  return v3;
}

uint64_t IntentDispatchOptions.withTimeoutDefault(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (sub_1DB4C1A7C(*(v1 + 16), &type metadata for IntentDispatchTimeout, &qword_1ECC46D30, &qword_1DB521B98))
  {
  }

  else
  {
    v7 = &type metadata for IntentDispatchTimeout;
    v6 = v3;
    v5[0] = &type metadata for IntentDispatchTimeout;
    v5[1] = v2;
    v1 = sub_1DB40D33C(v5);
    sub_1DB30BF1C(v5);
  }

  return v1;
}

uint64_t IntentDispatchOptions.pageIntentInstrumentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CD8, &qword_1DB521A88);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v10[1] = v2;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1DB4C2F3C(*(v2 + 16), v6);
  swift_task_localValuePop();
  v7 = type metadata accessor for PageIntentInstrumentation(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v6, 1, v7) != 1)
  {
    return sub_1DB4CB7C4(v6, a1, type metadata accessor for PageIntentInstrumentation);
  }

  swift_storeEnumTagMultiPayload();
  result = (v8)(v6, 1, v7);
  if (result != 1)
  {
    return sub_1DB30623C(v6, &qword_1ECC46CD8, &qword_1DB521A88);
  }

  return result;
}

uint64_t IntentDispatchOptions.withPageIntentInstrumentation(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CD8, &qword_1DB521A88);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  sub_1DB4CB82C(a1, &v8 - v3, type metadata accessor for PageIntentInstrumentation);
  v5 = type metadata accessor for PageIntentInstrumentation(0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  sub_1DB4CAC40(v4);
  sub_1DB30623C(v4, &qword_1ECC46CD8, &qword_1DB521A88);
  v6 = sub_1DB40D614(&type metadata for IntentDispatchOptions.BadOrderingCanary);

  return v6;
}

uint64_t IntentDispatchOptions.deinit()
{

  return v0;
}

uint64_t IntentDispatchOptions.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t getEnumTagSinglePayload for IntentDispatchOptions.BadOrderingCanary(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntentDispatchOptions.BadOrderingCanary(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1DB4CB768(uint64_t a1)
{
  v2 = type metadata accessor for PageIntentInstrumentation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB4CB7C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB4CB82C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB4CB894(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    return a4(a1, a2);
  }

  else
  {
  }
}

__n128 _JSONObjectDecoder.init(wrapping:with:at:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = *a1;
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

void *_JSONObjectDecoder.container<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  sub_1DB3171C0(v3, v12);
  v8 = *(v3 + 40);
  v9 = *(v3 + 48);

  result = sub_1DB4CB9AC(v12, v8, v9, v13);
  if (!v5)
  {
    type metadata accessor for _JSONObjectKeyedDecodingContainer(0, a2, a3, v11);
    swift_getWitnessTable();
    return sub_1DB50B7D0();
  }

  return result;
}

uint64_t sub_1DB4CB9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  sub_1DB330D60(a1, v18);
  if (v19)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v18, v19);
    sub_1DB300B14(v10, v17);
    sub_1DB336FD4(0, &qword_1ECC45BF0, 0x1E695DF20);
    if (swift_dynamicCast())
    {

      result = __swift_destroy_boxed_opaque_existential_0(v18);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    sub_1DB30623C(v18, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  result = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, a2);
  if (result != 2 && (result & 1) != 0)
  {

    v12 = sub_1DB50B3E0();
    swift_allocError();
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
    *v14 = sub_1DB50B7C0();
    sub_1DB50B3C0();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E69E6B08], v12);
    swift_willThrow();
    return sub_1DB3151CC(a1);
  }

LABEL_9:
  v15 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v15;
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 40) = a2;
  *(a6 + 48) = a3;
  return result;
}

uint64_t _JSONObjectDecoder.unkeyedContainer()@<X0>(uint64_t *a1@<X8>)
{
  sub_1DB3171C0(v1, v19);
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  a1[3] = &type metadata for _JSONObjectUnkeyedDecodingContainer;
  a1[4] = sub_1DB4CBE14();
  v5 = swift_allocObject();
  *a1 = v5;

  v6 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, v4);
  if (v6 == 2 || (v6 & 1) == 0)
  {
    JSONObject.array.getter(&v15);
    v7 = v17;
    if (!v17)
    {
      v12 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43440, &unk_1DB521C50);
      result = sub_1DB3151CC(v19);
      *(&v13 + 1) = 0;
      *&v13 = sub_1DB3A6F38;
      v14 = &off_1F56FB538;
      goto LABEL_8;
    }
  }

  else
  {
    JSONObject.array.getter(&v15);
    v7 = v17;
    if (!v17)
    {

      sub_1DB30623C(&v15, &qword_1ECC42E28, &qword_1DB50FB20);
      v8 = sub_1DB50B3E0();
      swift_allocError();
      v10 = v9;
      sub_1DB50B3C0();
      (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69E6B00], v8);
      swift_willThrow();
      sub_1DB3151CC(v19);
      return __swift_deallocate_boxed_opaque_existential_0(a1);
    }
  }

  result = sub_1DB3151CC(v19);
  v12 = v15;
  v13 = v16;
  v14 = v18;
LABEL_8:
  *(v5 + 16) = v12;
  *(v5 + 24) = v13;
  *(v5 + 40) = v7;
  *(v5 + 48) = v14;
  *(v5 + 56) = v4;
  *(v5 + 64) = v3;
  *(v5 + 72) = 0;
  return result;
}

unint64_t sub_1DB4CBE14()
{
  result = qword_1ECC46DE0;
  if (!qword_1ECC46DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46DE0);
  }

  return result;
}

uint64_t _JSONObjectDecoder.singleValueContainer()@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for _JSONObjectSingleValueDecodingContainer;
  a1[4] = sub_1DB4CBEE8();
  v3 = swift_allocObject();
  *a1 = v3;
  sub_1DB3171C0(v1, v3 + 16);
  v4 = *(v1 + 48);
  *(v3 + 56) = *(v1 + 40);
  *(v3 + 64) = v4;
}

unint64_t sub_1DB4CBEE8()
{
  result = qword_1ECC46DE8[0];
  if (!qword_1ECC46DE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC46DE8);
  }

  return result;
}

uint64_t sub_1DB4CBF6C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for _JSONObjectSingleValueDecodingContainer;
  a1[4] = sub_1DB4CBEE8();
  v3 = swift_allocObject();
  *a1 = v3;
  sub_1DB3171C0(v1, v3 + 16);
  v4 = *(v1 + 48);
  *(v3 + 56) = *(v1 + 40);
  *(v3 + 64) = v4;
}

uint64_t sub_1DB4CC01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB4CC058(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB4CC0A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB4CC0EC()
{
  sub_1DB330D60(v0, v6);
  if (v7)
  {
    v1 = __swift_project_boxed_opaque_existential_1(v6, v7);
    sub_1DB300B14(v1, v5);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    v2 = swift_dynamicCast();
    if (v2)
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_1DB30623C(v6, &qword_1ECC42E38, &qword_1DB50FB80);
    return 1;
  }

  return v2;
}

uint64_t sub_1DB4CC1A8(uint64_t a1)
{
  v2 = v1;
  sub_1DB330D60(v1, v11);
  if (!v12)
  {
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(v11, v12);
  v3 = sub_1DB4088D8();
  __swift_destroy_boxed_opaque_existential_0(v11);
  if (!v3)
  {
LABEL_7:
    v6 = sub_1DB50B3E0();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
    *v8 = MEMORY[0x1E69E6370];

    sub_1DB50B3C0();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6AF8], v6);
    swift_willThrow();
    return v6 & 1;
  }

  sub_1DB330D60(v2, v11);
  if (!v12)
  {
LABEL_6:
    sub_1DB30623C(v11, &qword_1ECC42E38, &qword_1DB50FB80);
    goto LABEL_7;
  }

  v4 = __swift_project_boxed_opaque_existential_1(v11, v12);
  sub_1DB300B14(v4, v10);
  sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
    goto LABEL_7;
  }

  v5 = v13;
  LOBYTE(v6) = [v13 BOOLValue];

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v6 & 1;
}

double sub_1DB4CC38C(uint64_t a1, uint64_t a2)
{
  v3 = JSONObject.number.getter();
  if (!v3)
  {
    goto LABEL_8;
  }

  if (v3 == *MEMORY[0x1E695E4D0] || v3 == *MEMORY[0x1E695E4C0])
  {

LABEL_8:
    v5 = sub_1DB50B3E0();
    swift_allocError();
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
    *v7 = MEMORY[0x1E69E63B0];

    sub_1DB50B3C0();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x1E69E6AF8], v5);
    swift_willThrow();
    return v2;
  }

  v20[0] = v3;
  v9 = v3;
  swift_getAtKeyPath();

  v2 = *&v20[3];
  v10 = sub_1DB50AD80();
  sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  v11 = v9;
  v12 = sub_1DB50B0C0();

  if ((v12 & 1) == 0)
  {
    v13 = sub_1DB50B3E0();
    swift_allocError();
    v15 = v14;

    sub_1DB50B320();

    strcpy(v20, "Parsed number ");
    HIBYTE(v20[1]) = -18;
    v16 = [v11 description];
    v17 = sub_1DB50A650();
    v19 = v18;

    MEMORY[0x1E1285C70](v17, v19);

    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB530DB0);
    MEMORY[0x1E1285C70](0x656C62756F44, 0xE600000000000000);
    sub_1DB50B3C0();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6B00], v13);
    swift_willThrow();
  }

  return v2;
}

float sub_1DB4CC69C(uint64_t a1, uint64_t a2)
{
  v3 = JSONObject.number.getter();
  if (!v3)
  {
    goto LABEL_8;
  }

  if (v3 == *MEMORY[0x1E695E4D0] || v3 == *MEMORY[0x1E695E4C0])
  {

LABEL_8:
    v5 = sub_1DB50B3E0();
    swift_allocError();
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
    *v7 = MEMORY[0x1E69E6448];

    sub_1DB50B3C0();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x1E69E6AF8], v5);
    swift_willThrow();
    return v2;
  }

  v20[0] = v3;
  v9 = v3;
  swift_getAtKeyPath();

  v2 = v21;
  v10 = sub_1DB50ADC0();
  sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  v11 = v9;
  v12 = sub_1DB50B0C0();

  if ((v12 & 1) == 0)
  {
    v13 = sub_1DB50B3E0();
    swift_allocError();
    v15 = v14;

    sub_1DB50B320();

    strcpy(v20, "Parsed number ");
    HIBYTE(v20[1]) = -18;
    v16 = [v11 description];
    v17 = sub_1DB50A650();
    v19 = v18;

    MEMORY[0x1E1285C70](v17, v19);

    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB530DB0);
    MEMORY[0x1E1285C70](0x74616F6C46, 0xE500000000000000);
    sub_1DB50B3C0();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6B00], v13);
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1DB4CC9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), uint64_t a5, uint64_t a6)
{
  v11 = JSONObject.number.getter();
  if (!v11)
  {
    goto LABEL_8;
  }

  if (v11 == *MEMORY[0x1E695E4D0] || v11 == *MEMORY[0x1E695E4C0])
  {

LABEL_8:
    v13 = sub_1DB50B3E0();
    swift_allocError();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
    *v15 = a3;

    sub_1DB50B3C0();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v13);
    swift_willThrow();
    return a1;
  }

  v17 = v11;
  swift_getAtKeyPath();

  a1 = v27;
  v18 = a4();
  sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  v19 = v17;
  v20 = sub_1DB50B0C0();

  if ((v20 & 1) == 0)
  {
    a1 = sub_1DB50B3E0();
    swift_allocError();
    v26 = v21;

    sub_1DB50B320();

    v22 = [v19 description];
    v23 = sub_1DB50A650();
    v25 = v24;

    MEMORY[0x1E1285C70](v23, v25);

    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB530DB0);
    MEMORY[0x1E1285C70](a5, a6);
    sub_1DB50B3C0();
    (*(*(a1 - 8) + 104))(v26, *MEMORY[0x1E69E6B00], a1);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1DB4CCCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v11 = JSONObject.number.getter();
  if (!v11)
  {
    goto LABEL_8;
  }

  if (v11 == *MEMORY[0x1E695E4D0] || v11 == *MEMORY[0x1E695E4C0])
  {

LABEL_8:
    v13 = sub_1DB50B3E0();
    swift_allocError();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
    *v15 = a3;

    sub_1DB50B3C0();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v13);
    swift_willThrow();
    return a1;
  }

  v17 = v11;
  swift_getAtKeyPath();

  a1 = v27;
  v18 = a4(v27);
  sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  v19 = v17;
  v20 = sub_1DB50B0C0();

  if ((v20 & 1) == 0)
  {
    a1 = sub_1DB50B3E0();
    swift_allocError();
    v26 = v21;

    sub_1DB50B320();

    v22 = [v19 description];
    v23 = sub_1DB50A650();
    v25 = v24;

    MEMORY[0x1E1285C70](v23, v25);

    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB530DB0);
    MEMORY[0x1E1285C70](a5, a6);
    sub_1DB50B3C0();
    (*(*(a1 - 8) + 104))(v26, *MEMORY[0x1E69E6B00], a1);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1DB4CCFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v11 = JSONObject.number.getter();
  if (!v11)
  {
    goto LABEL_8;
  }

  if (v11 == *MEMORY[0x1E695E4D0] || v11 == *MEMORY[0x1E695E4C0])
  {

LABEL_8:
    v13 = sub_1DB50B3E0();
    swift_allocError();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
    *v15 = a3;

    sub_1DB50B3C0();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v13);
    swift_willThrow();
    return a1;
  }

  v17 = v11;
  swift_getAtKeyPath();

  a1 = v27;
  v18 = a4(v27);
  sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  v19 = v17;
  v20 = sub_1DB50B0C0();

  if ((v20 & 1) == 0)
  {
    a1 = sub_1DB50B3E0();
    swift_allocError();
    v26 = v21;

    sub_1DB50B320();

    v22 = [v19 description];
    v23 = sub_1DB50A650();
    v25 = v24;

    MEMORY[0x1E1285C70](v23, v25);

    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB530DB0);
    MEMORY[0x1E1285C70](a5, a6);
    sub_1DB50B3C0();
    (*(*(a1 - 8) + 104))(v26, *MEMORY[0x1E69E6B00], a1);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1DB4CD2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v11 = JSONObject.number.getter();
  if (!v11)
  {
    goto LABEL_8;
  }

  if (v11 == *MEMORY[0x1E695E4D0] || v11 == *MEMORY[0x1E695E4C0])
  {

LABEL_8:
    v13 = sub_1DB50B3E0();
    swift_allocError();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
    *v15 = a3;

    sub_1DB50B3C0();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v13);
    swift_willThrow();
    return a1;
  }

  v17 = v11;
  swift_getAtKeyPath();

  a1 = v27;
  v18 = a4(v27);
  sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  v19 = v17;
  v20 = sub_1DB50B0C0();

  if ((v20 & 1) == 0)
  {
    a1 = sub_1DB50B3E0();
    swift_allocError();
    v26 = v21;

    sub_1DB50B320();

    v22 = [v19 description];
    v23 = sub_1DB50A650();
    v25 = v24;

    MEMORY[0x1E1285C70](v23, v25);

    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB530DB0);
    MEMORY[0x1E1285C70](a5, a6);
    sub_1DB50B3C0();
    (*(*(a1 - 8) + 104))(v26, *MEMORY[0x1E69E6B00], a1);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1DB4CD60C@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v62 = a3;
  v65 = a1;
  v66 = a4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v56 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  MEMORY[0x1EEE9AC00](v58);
  v56[1] = v56 - v9;
  v64 = sub_1DB50B120();
  v67 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v59 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v57 = v56 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v56 - v14;
  v16 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v56 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v56 - v24;
  sub_1DB330D60(v6, &v69);
  if (v71)
  {
    v26 = __swift_project_boxed_opaque_existential_1(&v69, v71);
    sub_1DB300B14(v26, v68);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v69);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0(&v69);
  }

  else
  {
    sub_1DB30623C(&v69, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v27 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, *(v6 + 40));
  if (v27 == 2 || (v27 & 1) == 0)
  {
LABEL_9:
    v63 = v5;
    sub_1DB3171C0(v6, &v69);
    v32 = swift_dynamicCast();
    v33 = *(v16 + 56);
    if (v32)
    {
      v33(v15, 0, 1, a2);
      v34 = *(v16 + 32);
      v34(v25, v15, a2);
      v35 = v66;
      v36 = v25;
      return (v34)(v35, v36, a2);
    }

    v33(v15, 1, 1, a2);
    v38 = *(v67 + 8);
    v67 += 8;
    v38(v15, v64);
    v39 = sub_1DB509CA0();
    v40 = v65;
    if (v39 == v65)
    {
      v43 = v39;
      JSONObject.string.getter();
      if (v44)
      {
        v65 = v38;
        sub_1DB509C60();

        v45 = v57;
        if (!swift_dynamicCast())
        {
          v33(v45, 1, 1, a2);
          v65(v45, v64);
          v50 = sub_1DB50B3E0();
          swift_allocError();
          v52 = v51;

          sub_1DB50B3C0();
          (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6B00], v50);
          return swift_willThrow();
        }

        v33(v45, 0, 1, a2);
        v34 = *(v16 + 32);
        v34(v22, v45, a2);
        v35 = v66;
        v36 = v22;
        return (v34)(v35, v36, a2);
      }

      v47 = sub_1DB50B3E0();
      swift_allocError();
      v49 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
      *v49 = v43;
    }

    else
    {
      v41 = sub_1DB509DD0();
      if (v41 != v40)
      {
        sub_1DB3171C0(v6, &v69);
        v42 = *(v6 + 48);
        v72 = *(v6 + 40);
        v73 = v42;
        v68[3] = &type metadata for _JSONObjectDecoder;
        v68[4] = sub_1DB34A154();
        v68[0] = swift_allocObject();
        sub_1DB34A1A8(&v69, v68[0] + 16);

        sub_1DB50ADB0();
        return sub_1DB34A204(&v69);
      }

      v46 = v41;
      sub_1DB330D60(v6, &v69);
      v58 = v46;
      if (v71)
      {
        __swift_project_boxed_opaque_existential_1(&v69, v71);
        sub_1DB408C04(v60);
        __swift_destroy_boxed_opaque_existential_0(&v69);
      }

      else
      {
        sub_1DB30623C(&v69, &qword_1ECC42E38, &qword_1DB50FB80);
        (*(*(v46 - 8) + 56))(v60, 1, 1, v46);
      }

      v53 = v59;
      if (swift_dynamicCast())
      {
        v33(v53, 0, 1, a2);
        v54 = *(v16 + 32);
        v54(v19, v53, a2);
        return (v54)(v66, v19, a2);
      }

      v33(v53, 1, 1, a2);
      v38(v53, v64);
      v47 = sub_1DB50B3E0();
      swift_allocError();
      v49 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
      *v49 = v58;
    }

    sub_1DB50B3C0();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x1E69E6AF8], v47);
    return swift_willThrow();
  }

  v28 = sub_1DB50B3E0();
  swift_allocError();
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
  *v30 = v65;
  v69 = 0;
  v70 = 0xE000000000000000;

  sub_1DB50B320();

  v69 = 0x6465746365707845;
  v70 = 0xE900000000000020;
  v31 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v31);

  MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB530DF0);
  sub_1DB50B3C0();
  (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6B08], v28);
  return swift_willThrow();
}